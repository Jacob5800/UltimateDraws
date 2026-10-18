import unittest
from update_discord_changelog import changelog_sections, changelog_payloads


class ChangelogTests(unittest.TestCase):
    def test_each_fight_keeps_ten_newest_and_same_day_order(self):
        text = '## Changelog\n'
        for title in ['TOP', 'FRU', 'UWU']:
            text += f'### {title}\n'
            text += ''.join(f'- {title} change {i} (18-10-2026)\n' for i in range(12))
        sections = changelog_sections(text)
        self.assertEqual([title for title, _ in sections], ['TOP', 'FRU', 'UWU'])
        for title, entries in sections:
            self.assertEqual(len(entries), 10)
            self.assertIn(f'{title} change 0 ', entries[0])
            self.assertIn(f'{title} change 9 ', entries[-1])

    def test_date_order_and_multiline_entries(self):
        sections = changelog_sections('## Changelog\n### FRU\n'
            '- Old (09-10-2026)\n- 2026-10-17: Recent\n'
            '- Newest\n  continued (18-10-2026)\n## Other\n- Excluded\n')
        self.assertEqual(sections[0][1], ['- Newest\n  continued (18-10-2026)',
                                         '- 2026-10-17: Recent', '- Old (09-10-2026)'])

    def test_large_top_never_hides_fru_and_limits_hold(self):
        text = '## Changelog\n### TOP\n'
        text += ''.join(f'- TOP {i} ' + 'x' * 1300 + ' (18-10-2026)\n' for i in range(10))
        text += '### FRU\n- FRU visible (18-10-2026)\n'
        payloads = changelog_payloads(text)
        self.assertTrue(any('FRU visible' in e['description'] for p in payloads for e in p['embeds']))
        for payload in payloads:
            self.assertLessEqual(len(payload['embeds']), 10)
            self.assertLessEqual(sum(len(e['title']) + len(e['description']) for e in payload['embeds']), 6000)
            for embed in payload['embeds']:
                self.assertLessEqual(len(embed['description']), 4096)
        for i in range(10):
            self.assertEqual(sum(e['description'].count(f'- TOP {i} ') for p in payloads for e in p['embeds']), 1)

    def test_one_oversized_entry_is_paginated_not_dropped(self):
        payloads = changelog_payloads('## Changelog\n### FRU\n- ' + 'x' * 9000)
        self.assertEqual(sum(e['description'].count('x') for p in payloads for e in p['embeds']), 9000)

    def test_missing_changelog_rejected(self):
        with self.assertRaises(ValueError):
            changelog_payloads('# Readme\n')


if __name__ == '__main__':
    unittest.main()

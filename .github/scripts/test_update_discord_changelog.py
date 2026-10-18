import unittest
from update_discord_changelog import changelog_sections, changelog_payloads, new_changelog_sections


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

    def test_ucob_only_update_does_not_repeat_other_fights(self):
        before = ('## Changelog\n### FRU\n- Existing FRU (18-10-2026)\n'
                  '### UCOB\n- Existing UCOB (18-10-2026)\n'
                  '### UWU\n- Existing UWU (18-10-2026)\n')
        after = before.replace('### UCOB\n', '### UCOB\n- New tower fix (18-10-2026)\n')
        sections = new_changelog_sections(after, before)
        self.assertEqual(sections, [('UCOB', ['- New tower fix (18-10-2026)'])])
        embeds = [e for p in changelog_payloads(after, before) for e in p['embeds']]
        self.assertEqual(len(embeds), 1)
        self.assertIn('UCOB', embeds[0]['title'])
        self.assertNotIn('Existing', embeds[0]['description'])

    def test_removal_reorder_and_whitespace_do_not_post(self):
        before = '## Changelog\n### UCOB\n- One long entry (18-10-2026)\n- Removed (14-10-2026)\n'
        after = '## Changelog\n### UCOB\n- One long\n  entry (18-10-2026)\n'
        self.assertEqual(changelog_payloads(after, before), [])

    def test_multiple_changed_sections_all_appear(self):
        before = '## Changelog\n### TOP\n- TOP existing (18-10-2026)\n'
        after = before + '### FRU\n- FRU new (18-10-2026)\n### UCOB\n- UCOB new (18-10-2026)\n'
        embeds = [e for p in changelog_payloads(after, before) for e in p['embeds']]
        self.assertEqual(len(embeds), 2)
        self.assertTrue(any('UCOB new' in e['description'] for e in embeds))
        self.assertTrue(any('FRU new' in e['description'] for e in embeds))

    def test_baseline_checks_entries_beyond_preview_cap(self):
        before = '## Changelog\n### UCOB\n' + ''.join(
            f'- Old {i} (18-10-2026)\n' for i in range(12))
        after = '## Changelog\n### UCOB\n- Old 11 (18-10-2026)\n'
        self.assertEqual(changelog_payloads(after, before), [])

    def test_first_changelog_is_all_new(self):
        text = '## Changelog\n### UCOB\n- First (18-10-2026)\n'
        self.assertEqual(new_changelog_sections(text, '# Old README'),
                         [('UCOB', ['- First (18-10-2026)'])])


if __name__ == '__main__':
    unittest.main()

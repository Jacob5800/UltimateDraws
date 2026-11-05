local tbl = 
{
	
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "d6b15415-7721-6ce9-3880-a20fce0e1d45",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Set Toggles",
				uuid = "6d649f27-7e83-5d71-bef9-7b3ccc8f9a07",
				version = 2,
			},
			inheritedObjectUUID = "2294072d-64d7-f529-92a7-e028d0fe6003",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[SAM] Force early bana",
				uuid = "b6b4988c-e989-7061-a40d-1c115078d494",
				version = 2,
			},
			inheritedObjectUUID = "5907e7e4-f3d8-35e5-b69b-233f067f14ae",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "f73a5b18-cac7-3a9d-b761-3d20ecf3eafe",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
				},
				conditions = 
				{
				},
				displayPath = "AutoSim",
				eventType = 16,
				execute = "-- [AA] Autosim - DSW: one shared AutoSim schedule for every AutoSim job (BRD, BLM, SAM, RPR, VPR).\n-- DSW is two pulls. P1 (Adelphel, Grinnaux, Charibert) and P2 onward (Thordan to the Dragon-king)\n-- each start their own combat, countdown and getAutoSimTime() clock, so this runs on every countdown\n-- and loads the schedule of the fight that is starting, picked by which bosses are targetable at the\n-- countdown (see the fight check below).\n-- Clock: seconds since that pull's combat start. Canonical times form a median pull chained from\n-- phase anchors; each reanchor shifts the remaining windows.\n-- Sources (AS-008/AS-009):\n--   User debug logs (map 968, 2026-08-04 to 2026-10-19; 187 P1 pulls, 955 P2 pulls, 8 clears).\n--   \"n\" = pulls behind each median. P6 n=16-43, P7 n=8.\n--   FFLogs (encounter 1076, 19 execution-ranked kills; P2 onward only, FFLogs has no P1) for caster\n--   gaps and meteor AoE counts. It matches the user logs within 1.5s on every fixed interval.\n--   Caster movement spots (2026-10-29): user logs (caster party members, P2 pulls) and the same\n--   19 FFLogs kills (20 casters, player positions).\n-- Entities are matched by model ID (FFLogs gameID).\n--   P1 Adelphel 12601 | Grinnaux 12602 | Charibert 12603 (also the P4 intermission target)\n--   P2 Thordan 12604 | P3 Nidhogg 12605 | P4 Left Eye 12609, Right Eye 12610 | Spear of the Fury 11810\n--   P5 Thordan 12611 | Meteor Circle 13920 (content 4386) | P6 Nidhogg 12612, Hraesvelgr 12613\n--   P7 Dragon-king Thordan 12616\nlocal acr = TensorCore.API.TensorACR\nlocal job = TensorCore.mGetPlayer().job\n-- AS-011: user answer \"very important\" (1.4) for every job except Viper and Black Mage (1.1).\nlocal raidBuffWeight = (job == 41 or job == 25) and 1.1 or 1.4\n-- Fight check (user 2026-10-31: pick the pull by who is targetable at the countdown).\n-- User logs (map 968, 1178 countdowns that led to a pull): Adelphel was targetable at 191 of 192 P1\n-- countdowns and King Thordan at 982 of 986 P2 ones. All 5 misses were countdowns started while the\n-- arena was still respawning after a wipe (bosses briefly untargetable), and all 5 were cancelled.\n-- With nobody targetable, fall back to whether Thordan exists: he is already there before a P2 pull,\n-- and in P1 he only appears after Charibert is pushed.\nlocal function bossState(contentid, model)\n    local exists, targetable = false, false\n    for id, e in pairs(TensorCore.entityList(\"contentid=\" .. contentid)) do\n        if Argus.getEntityModel(id) == model then\n            exists = true\n            if e.targetable then targetable = true end\n        end\n    end\n    return exists, targetable\nend\nlocal _, adelphelUp = bossState(3634, 12601)\nlocal _, grinnauxUp = bossState(3639, 12602)\nlocal thordanExists, thordanUp = bossState(3632, 12604)\nlocal fight\nif adelphelUp or grinnauxUp then\n    fight = \"p1\"\nelseif thordanUp then\n    fight = \"p2\"\nelse\n    fight = thordanExists and \"p2\" or \"p1\"\nend\n-- Caster LB on the P5 Meteor Circles, from the \"AutoSim | DSW settings\" window (caster jobs only).\nlocal settingsPath = GetLuaModsPath() .. [[ffxivminion\\AADSW\\AADSWSettings.lua]]\nif not AADSW_Settings then\n    AADSW_Settings = FileExists(settingsPath) and (FileLoad(settingsPath) or {}) or {}\nend\nlocal casterJob = job == 25 or job == 27 or job == 35 or job == 42\nlocal casterJobs = {[25] = true, [27] = true, [35] = true, [42] = true}\nlocal rangedDotJobs = {[23] = true, [25] = true}  -- Bard, Black Mage\nlocal aoeTypes = {\n    \"SelfCircle5Yd\", \"SelfCircle8Yd\", \"Cone8Yd\", \"Cone12Yd\", \"Line10Yd\", \"Line15Yd\", \"Line25Yd\",\n    \"TargetCircle5YdRange3Yd\", \"TargetCircle5YdRange5Yd\", \"TargetCircle5YdRange20Yd\",\n    \"TargetCircle5YdRange25Yd\", \"TargetCircle8YdRange25Yd\",\n}\n-- Meteor Circles stand in a 14y ring, 10.7y apart. User: \"base it on what can [hit]\". Counts are the\n-- most meteors one cast of each shape hit in the FFLogs kills (e.g. Whorl of Death / Art of War 2,\n-- Grim Reaping / Fan Dance IV / Nastrond / Chain Saw / Gravity II 3, Shadowbringer 2, Shoha 2).\nlocal meteorCount = {\n    SelfCircle5Yd = 2, SelfCircle8Yd = 2, Cone8Yd = 3, Cone12Yd = 3, Line10Yd = 2, Line15Yd = 3,\n    Line25Yd = 3, TargetCircle5YdRange3Yd = 2, TargetCircle5YdRange5Yd = 3,\n    TargetCircle5YdRange20Yd = 3, TargetCircle5YdRange25Yd = 3, TargetCircle8YdRange25Yd = 3,\n}\nlocal function addAoE(list, s, e, counts)\n    for i = 1, #aoeTypes do\n        local n = counts\n        if type(counts) == \"table\" then n = counts[aoeTypes[i]] end\n        if n then list[#list + 1] = {aoeTypes[i], s, e, n, 0} end\n    end\nend\n\n-- ===== P1 pull =====\nlocal AD1 = 37.672          -- Adelphel untargetable; user n=187 (sd < 0.1s)\nlocal AU1 = 53.859          -- Adelphel back; n=175\nlocal AD2 = 66.609          -- n=164\nlocal AU2 = 69.859          -- n=161\n-- Uncertain events (AS-016/AS-017, 2026-11-02): each estimate is the median of the user's pulls that\n-- reached it and went on to the next phase, measured from the sync (reanchor) before it; its +/- is the\n-- sample standard deviation. Fastest and slowest pulls are named.\n-- Each uncertainty span starts this long before the event's earliest logged time (AS-016; rikudou\n-- 2026-11-02: roughly 1-5s before the earliest point the boss can die). Same lead as FRU and TEA.\nlocal uncertaintyLead = 3\n-- First knight pushed: 92 pulls where Charibert appeared ~4s after the second push; a median 105.141s\n-- after the pull (sd 6.108s; fastest 96.016s, 20261007-0016-968-1; slowest 121.422s, 20260831-2204-968-1).\nlocal K1 = 105.141\nlocal k1Uncertainty = 6.108\nlocal k1Earliest = 96.016\n-- Second knight pushed: the same 92 pulls, a median 1.617s after the first (sd 0.796s; fastest 0s,\n-- 20260902-0040-968-1; slowest 3.079s, 20260923-1814-968-2).\nlocal KE = K1 + 1.617\nlocal keUncertainty = 0.796\nlocal CH1 = KE + 4.031      -- Charibert targetable; n=85\nlocal CHE = CH1 + 37.640    -- Charibert untargetable = end of the P1 pull; n=75\n-- CHE is fixed (Pure of Heart): 92 of 93 pulls at CH1 + 37.6-37.7s, so it gets no uncertainty.\nlocal p1 = {\n    {\"FullDowntime\", KE, CH1, 1, 0},\n    {\"CasterDowntime\", KE, CH1, 1, 0},\n    -- AS-015 (user): the knights are HP-balanced, so slot 0 follows the player's target and slot 1\n    -- holds the other knight (\"AutoSim | P1 slots follow target\"). Slot 1 ends at the first push.\n    {\"TargetLifetime\", 0, KE, 1, 0},\n    {\"DotAvailability\", 0, KE - 0.5, 1, 0},\n    {\"TargetLifetime\", 0, K1, 1, 1},\n    -- Adelphel leaves twice while Grinnaux (the player's target then) stays: slot 1 has gaps there.\n    {\"DotAvailability\", 0, AD1, 1, 1},\n    {\"DotAvailability\", AU1, AD2, 1, 1},\n    {\"DotAvailability\", AU2, K1 - 0.5, 1, 1},\n    {\"TargetLifetime\", CH1, CHE, 1, 0},\n    {\"DotAvailability\", CH1, CHE - 0.5, 1, 0},\n    -- Raid buffs: first teammate cast to last cast + 20s; user logs n=161 (opener), n=82 (Charibert).\n    {\"RaidBuff\", 3.094, 25.937, raidBuffWeight, 0},\n    {\"RaidBuff\", CH1 + 12.672, CH1 + 35.625, raidBuffWeight, 0},\n}\n-- User: AoE any time both knights are on the field (every shape counts 2, AS-006).\naddAoE(p1, 0, AD1, 2)\naddAoE(p1, AU1, AD2, 2)\naddAoE(p1, AU2, K1 - 0.5, 2)\n\n-- ===== P2 pull (P2 to P7) =====\nlocal SWD = 32.891          -- Strength of the Holy See: Thordan untargetable; n=955 [FFLogs 32.251]\nlocal SWU = 64.031          -- n=881\nlocal SAD = 101.531         -- Sanctity of the Ward; n=658\nlocal SAU = 152.297         -- n=403\n-- P2 Thordan pushed: 394 pulls, a median 176.952s after the pull (sd 5.454s; fastest 155.664s,\n-- 20260902-0116-968-3; slowest 196.328s, 20260817-1805-968-44).\nlocal P2E = 176.952\nlocal p2Uncertainty = 5.454\nlocal p2Earliest = 155.664\nlocal N3U = P2E + 9.187     -- Nidhogg targetable; n=354\n-- P3 Nidhogg pushed: 181 pulls, a median 108.906s after he appeared (sd 3.176s; fastest 105.828s,\n-- 20260907-0135-968-4; slowest 119.390s, 20260916-1650-968-10).\nlocal P3E = N3U + 108.906\nlocal p3Uncertainty = 3.176\nlocal p3Earliest = N3U + 105.828\nlocal EYU = P3E + 17.344    -- Eyes targetable; n=154\n-- First eye dies (Left Eye in 129 of 130 pulls): 140 pulls that reached the intermission, a median\n-- 58.547s after the eyes appeared (sd 1.265s; fastest 53.296s, 20260910-2247-968-10; slowest 62.657s,\n-- 20261002-2330-968-4).\nlocal E1 = EYU + 58.547\nlocal e1Uncertainty = 1.265\nlocal e1Earliest = EYU + 53.296\n-- Second eye dies: the same 140 pulls, a median 9.844s after the first (sd 3.502s; fastest 0.516s,\n-- 20260830-2208-968-8; slowest 20.719s, 20260914-0047-968-4).\nlocal P4E = E1 + 9.844\nlocal p4Uncertainty = 3.502\nlocal ICH = P4E + 20.156    -- intermission: Ser Charibert targetable; n=116\nlocal SPU = ICH + 37.563    -- Spear of the Fury targetable (Charibert leaves); n=110\n-- Spear of the Fury killed: 127 pulls that reached P5, a median 11.063s after it appeared (sd 1.017s;\n-- fastest 8.437s, 20260927-1845-968-8; slowest 13.547s, 20260914-1704-968-12).\nlocal SPD = SPU + 11.063\nlocal spdUncertainty = 1.017\nlocal spdEarliest = SPU + 8.437\nlocal T5U1 = SPD + 15.235   -- P5 Thordan targetable; n=104\nlocal T5D1 = T5U1 + 32.000  -- n=104\nlocal T5U2 = T5D1 + 23.172  -- n=103\nlocal T5D2 = T5U2 + 38.109  -- n=81 [FFLogs 37.1]\nlocal METU = T5D2 + 32.109  -- Meteor Circles targetable; n=76\n-- Last Meteor Circle killed: 63 pulls, a median 137.687s after P5 Thordan appeared (the sync before it;\n-- sd 1.801s; fastest 132.250s, 20260830-2223-968-9; slowest 141.360s, 20260910-2353-968-4).\nlocal METD = T5U1 + 137.687\nlocal metdUncertainty = 1.801\nlocal metdEarliest = T5U1 + 132.250\nlocal T5U3 = METD + 0.156   -- Thordan back; n=53\n-- P5 Thordan pushed: 59 pulls that reached P6, a median 26.937s after he returned (sd 4.035s; fastest\n-- 18.343s, 20260910-2308-968-11; slowest 38.688s, 20261024-1725-968-12).\nlocal P5E = T5U3 + 26.937\nlocal p5Uncertainty = 4.035\nlocal p5Earliest = T5U3 + 18.343\nlocal P6S = P5E + 10.391    -- Nidhogg and Hraesvelgr targetable; n=50\n-- Each dragon leaves once: it blinks untargetable (D1..U1), comes back targetable at the arena edge\n-- (89/111, 66/134, about 35y from the party), blinks again (D2..U2) and returns to its spot\n-- (78/122, 100). User logs (2026-10-31, 41 pulls): the edge dragon got 17 (Nidhogg) and 26\n-- (Hraesvelgr) party casts against ~1200 on the near one, mostly stray healer DoTs, and under 5% of\n-- casts from D1 to U2 (68 pulls). So for melee each dragon is unhittable from D1 to U2, not only while\n-- untargetable; ranged DoT jobs can still reach it at the edge (user 2026-11-01, see slot 1 below).\nlocal N6D1, N6U1 = P6S + 40.859, P6S + 42.172   -- Nidhogg alone untargetable; n=42\nlocal N6D2, N6U2 = P6S + 51.234, P6S + 54.422   -- n=37 (2026-10-31: medians 51.23 / 54.42, n=41)\nlocal H6D1, H6U1 = P6S + 65.781, P6S + 67.016   -- Hraesvelgr alone untargetable; n=36\nlocal H6D2, H6U2 = P6S + 76.141, P6S + 81.422   -- n=33 (2026-10-31: medians 76.14 / 81.42, n=41)\nlocal BD1, BU1 = P6S + 143.876, P6S + 145.172   -- both untargetable; n=19\nlocal BD2, BU2 = P6S + 151.359, P6S + 158.437   -- n=19\n-- First dragon dies: 17 pulls that reached P7, a median 161.032s after P6 started (sd 5.335s; fastest\n-- 158.734s, 20260907-0154-968-5; slowest 176.749s, 20260910-2308-968-11).\nlocal P6F = P6S + 161.032\nlocal p6fUncertainty = 5.335\nlocal p6fEarliest = P6S + 158.734\n-- Second dragon dies: the same 17 pulls, a median 4.594s after the first (sd 3.424s; fastest 0.750s,\n-- 20260917-1540-968-3; slowest 12.515s, 20260831-2310-968-11) [FFLogs BU2+18].\nlocal P6E = P6F + 4.594\nlocal p6eUncertainty = 3.424\nlocal DKU = P6E + 52.180    -- Dragon-king Thordan targetable; n=16\n-- Kill: the user's 9 clears, a median 212.564s after the Dragon-king appeared (sd 8.181s; fastest\n-- 197.063s, 20260914-1318-968-5; slowest 220.031s, 20260902-0111-968-4) [FFLogs 209.8]. Small sample.\nlocal KILL = DKU + 212.564\nlocal killUncertainty = 8.181\nlocal killEarliest = DKU + 197.063\nlocal p2 = {\n    {\"FullDowntime\", SWD, SWU, 1, 0},\n    {\"FullDowntime\", SAD, SAU, 1, 0},\n    {\"FullDowntime\", P2E, N3U, 1, 0},\n    {\"FullDowntime\", P3E, EYU, 1, 0},\n    {\"FullDowntime\", P4E, ICH, 1, 0},\n    {\"FullDowntime\", SPD, T5U1, 1, 0},\n    {\"FullDowntime\", T5D1, T5U2, 1, 0},\n    {\"FullDowntime\", T5D2, METU, 1, 0},\n    {\"FullDowntime\", P5E, P6S, 1, 0},\n    -- User: only the untargetable parts; the 6s between them stays uptime.\n    {\"FullDowntime\", BD1, BU1, 1, 0},\n    {\"FullDowntime\", BD2, BU2, 1, 0},\n    {\"FullDowntime\", P6E, DKU, 1, 0},\n    -- CasterDowntime mirrors FullDowntime (leaving the ground field), as in the other [AA] profiles.\n    {\"CasterDowntime\", SWD, SWU, 1, 0},\n    {\"CasterDowntime\", SAD, SAU, 1, 0},\n    {\"CasterDowntime\", P2E, N3U, 1, 0},\n    {\"CasterDowntime\", P3E, EYU, 1, 0},\n    {\"CasterDowntime\", P4E, ICH, 1, 0},\n    {\"CasterDowntime\", SPD, T5U1, 1, 0},\n    {\"CasterDowntime\", T5D1, T5U2, 1, 0},\n    {\"CasterDowntime\", T5D2, METU, 1, 0},\n    {\"CasterDowntime\", P5E, P6S, 1, 0},\n    {\"CasterDowntime\", BD1, BU1, 1, 0},\n    {\"CasterDowntime\", BD2, BU2, 1, 0},\n    {\"CasterDowntime\", P6E, DKU, 1, 0},\n    -- Caster movement spots (2026-10-29): a caster is moving (1.5y+ between position samples) with no\n    -- cast bar up, slidecasts excluded. Kept where the user logs show it for 75%+ of casters for 1.5s+,\n    -- FFLogs shows 50%+ in the same span, and it lies outside FullDowntime. Times are the user's\n    -- (AS-008); FFLogs corroborates (AS-009). Caster jobs only: the data comes from casters.\n    -- Comments: peak % user / FFLogs, user pulls reaching that point.\n    {\"CasterDowntime\", 12.0, 13.5, 1, 0, jobs = casterJobs},               -- Ascalon's Mercy Concealed; 76/90, n=1086\n    {\"CasterDowntime\", EYU + 1.5, EYU + 3.0, 1, 0, jobs = casterJobs},     -- eyes appear; 79/67, n=173\n    {\"CasterDowntime\", ICH + 21.5, ICH + 23.0, 1, 0, jobs = casterJobs},   -- Planar Prison; 75/80, n=134\n    {\"CasterDowntime\", ICH + 26.5, ICH + 28.0, 1, 0, jobs = casterJobs},   -- Planar Prison; 87/95, n=134\n    -- Wroth Flames (cast ends P6S+65.35, FFLogs 65.31..65.42): run to the wall for the Akh Morns (hits\n    -- at +10.8/12.4/14.0/15.6 after the cast, user logs), then back. Melee keep 76-86% uptime there\n    -- (user logs, FFLogs), so no MeleeDowntime.\n    {\"CasterDowntime\", P6S + 71.0, P6S + 75.0, 1, 0, jobs = casterJobs},   -- to the wall; 95/95, n=38\n    {\"CasterDowntime\", P6S + 77.5, P6S + 87.0, 1, 0, jobs = casterJobs},   -- Akh Morns and back; 89/95, n=38\n    {\"CasterDowntime\", P6S + 114.5, P6S + 117.0, 1, 0, jobs = casterJobs}, -- 86/75, n=22\n    {\"CasterDowntime\", DKU + 11.5, DKU + 14.5, 1, 0, jobs = casterJobs},   -- Exaflare's Edge 1; 88/100, n=17\n    {\"CasterDowntime\", DKU + 60.0, DKU + 67.5, 1, 0, jobs = casterJobs},   -- 100/100, n=15\n    {\"CasterDowntime\", DKU + 90.5, DKU + 94.0, 1, 0, jobs = casterJobs},   -- Exaflare's Edge 2; 93/80, n=15\n    {\"CasterDowntime\", DKU + 124.5, DKU + 126.0, 1, 0, jobs = casterJobs}, -- 82/55, n=11\n    {\"CasterDowntime\", DKU + 139.5, DKU + 148.5, 1, 0, jobs = casterJobs}, -- 100/95, n=11\n    {\"CasterDowntime\", DKU + 170.5, DKU + 174.0, 1, 0, jobs = casterJobs}, -- Exaflare's Edge 3; 91/70, n=11\n    {\"CasterDowntime\", DKU + 184.0, DKU + 186.0, 1, 0, jobs = casterJobs}, -- after Akh Morn's Edge; 91/65, n=11\n    -- Melee: no gap reached 60% of players outside full downtime (FFLogs 18 kills).\n    -- P2 Thordan (slot 0): one entity, availability straight through his two downtimes (AS-001, AS-013).\n    {\"TargetLifetime\", 0, P2E, 1, 0},\n    {\"DotAvailability\", 0, P2E - 0.5, 1, 0},\n    -- P3 Nidhogg.\n    {\"TargetLifetime\", N3U, P3E, 1, 0},\n    {\"DotAvailability\", N3U, P3E - 0.5, 1, 0},\n    -- P4 Eyes, a fixed 20y apart. User: slot 0 = current target, slot 1 = the other eye\n    -- (\"AutoSim | P4 slots follow target\", AS-015). User: both eyes can be DoTed (single-target,\n    -- one eye at a time), but AoE can't reach both, so only line shapes count 2 (see addAoE below).\n    -- Black Mage's AoE Thunder (group 1) can't reach both, so slot 1 gets single-target Thunder only.\n    -- Slot 1 ends at the first death.\n    {\"TargetLifetime\", EYU, P4E, 1, 0},\n    {\"DotAvailability\", EYU, P4E - 0.5, 1, 0},\n    {\"TargetLifetime\", EYU, E1, 1, 1},\n    {\"DotAvailability\", EYU, E1 - 0.5, 1, 1, singleTargetOnly = true},\n    -- Intermission: Ser Charibert, then Spear of the Fury (user: a standard enemy, the only target).\n    {\"TargetLifetime\", ICH, SPU, 1, 0},\n    {\"DotAvailability\", ICH, SPU - 0.5, 1, 0},\n    {\"TargetLifetime\", SPU, SPD, 1, 0},\n    {\"DotAvailability\", SPU, SPD - 0.5, 1, 0},\n    -- P5 Thordan: one lifetime. The meteor gap stays: meteors, not Thordan, can be hit (AS-013).\n    -- During the meteors slot 0 follows the targeted meteor (user); meteors are DoT-blacklisted.\n    {\"TargetLifetime\", T5U1, P5E, 1, 0},\n    {\"DotAvailability\", T5U1, T5D2 - 0.5, 1, 0},\n    {\"DotAvailability\", T5U3, P5E - 0.5, 1, 0},\n    -- P6 dragons. User (2026-11-02): slot 0 = this player's party group's dragon, slot 1 = the other\n    -- one, both hit the whole time (\"AutoSim | P6 slots by group\", forecast.assignP6). Slot 0 moves to\n    -- the other dragon while the group's dragon is away, so it is always the dragon the player can hit,\n    -- and only slot 1 has gaps when one dragon leaves; the both-down gaps are FullDowntime (AS-013).\n    -- Slot 1 is out from the first blink to the return (N6D1..N6U2, H6D1..H6U2): at the edge the dragon\n    -- is targetable but out of melee reach (see above). Samurai stalled there trying to DoT it (user 2026-10-31).\n    -- User (2026-11-01): Bard and Black Mage reach the edge dragon with spells, so they keep slot 1 while\n    -- it is targetable there (single-target only: no AoE reaches both, so BLM's AoE Thunder stays off).\n    {\"TargetLifetime\", P6S, P6E, 1, 0},\n    {\"DotAvailability\", P6S, P6E - 0.5, 1, 0},\n    {\"TargetLifetime\", P6S, P6F, 1, 1},\n    {\"DotAvailability\", P6S, N6D1, 1, 1},\n    {\"DotAvailability\", N6U1, N6D2, 1, 1, jobs = rangedDotJobs, singleTargetOnly = true},\n    {\"DotAvailability\", N6U2, H6D1, 1, 1},\n    {\"DotAvailability\", H6U1, H6D2, 1, 1, jobs = rangedDotJobs, singleTargetOnly = true},\n    {\"DotAvailability\", H6U2, P6F - 0.5, 1, 1},\n    -- P7 Dragon-king Thordan.\n    {\"TargetLifetime\", DKU, KILL, 1, 0},\n    {\"DotAvailability\", DKU, KILL, 1, 0},\n    -- Raid buffs: first teammate cast to last cast + 20s, user logs (n=403/349/133/113/86/40/19/8/9).\n    -- P3 window clipped to the push. P6 second window: user P6S+126.8, FFLogs P6S+163.5 (user kept).\n    {\"RaidBuff\", 2.734, 27.406, raidBuffWeight, 0},\n    {\"RaidBuff\", SAU + 0.844, SAU + 22.672, raidBuffWeight, 0},\n    {\"RaidBuff\", N3U + 88.578, P3E, raidBuffWeight, 0},\n    {\"RaidBuff\", ICH + 1.922, ICH + 24.140, raidBuffWeight, 0},\n    {\"RaidBuff\", T5U2 + 3.367, T5U2 + 26.524, raidBuffWeight, 0},\n    {\"RaidBuff\", P6S + 4.930, P6S + 26.774, raidBuffWeight, 0},\n    {\"RaidBuff\", P6S + 126.812, P6S + 150.453, raidBuffWeight, 0},\n    {\"RaidBuff\", DKU + 57.602, DKU + 82.500, raidBuffWeight, 0},\n    {\"RaidBuff\", DKU + 181.906, DKU + 205.736, raidBuffWeight, 0},\n    -- Caster LB on the meteors (settings window \"Manual\"): casters stop from METU-0.4 to METU+8.1\n    -- (92% of casters, FFLogs 18 kills). The LB locks the player, so it is a Stun.\n    {\"Stun\", METU - 0.4, METU + 8.1, 1, 0, exactStart = true, meteorLB = true},\n}\n-- P4 Eyes: only lines reach both eyes (FFLogs 19 kills: Geirskogul, Nastrond, Wyrmwind Thrust,\n-- Chain Saw, Apex/Blast Arrow, Resolution, Mog of the Ages). Cones and circles never did, so every\n-- other shape stays at one target.\naddAoE(p2, EYU, E1 - 0.5, {Line15Yd = 2, Line25Yd = 2})\naddAoE(p2, METU, METD, meteorCount)\n-- P6: both dragons only while both are near (the edge dragon is out of every AoE).\naddAoE(p2, P6S, N6D1, 2)\naddAoE(p2, N6U2, H6D1, 2)\naddAoE(p2, H6U2, BD1, 2)\naddAoE(p2, BU1, BD2, 2)\naddAoE(p2, BU2, P6F - 0.5, 2)\n\ndata.dsw_autosim = {\n    version = 1,\n    fight = fight,\n    done = {},\n    meteorLB = casterJob and AADSW_Settings.meteorLB == \"Manual\",\n    schedule = {p1 = p1, p2 = p2},\n    kill_time = {p1 = CHE, p2 = KILL},\n    -- Uncertainty levels {canonical time, +/- seconds} (AS-016 to AS-018, 2026-11-02; replaces the\n    -- user's 2026-10-22 \"+/-10s after HP anchors\"). Only uncertain events get uncertainty; everything\n    -- else is exact, including from the pull. Each span starts uncertaintyLead before the event's\n    -- earliest logged time and ends 1ms after its estimate; each event's reanchor rebuilds from that\n    -- moment, so its span closes, and later spans move with the schedule and keep their amounts.\n    -- An event that can follow the previous one within uncertaintyLead (second knight, second eye,\n    -- second dragon) starts its span when the previous one resolves. Fixed boundaries inside a span\n    -- carry its +/- too; they are listed per span. Resyncs are the \"AutoSim | Reanchor ...\" reactions.\n    uncertainty = {\n        p1 = {\n            {0, 0},\n            {k1Earliest - uncertaintyLead, k1Uncertainty},  -- first knight. Resync: P1 first knight pushed\n            {K1 + 0.001, keUncertainty},                    -- second knight. Resync: P1 knights end\n            {KE + 0.001, 0},                                -- CHE (end of the pull) is fixed\n        },\n        p2 = {\n            {0, 0},\n            -- P2 push. Inside: the SAU raid buff (SAU + 0.844 to + 22.672). Resync: P2 end\n            {p2Earliest - uncertaintyLead, p2Uncertainty},\n            {P2E + 0.001, 0},\n            {p3Earliest - uncertaintyLead, p3Uncertainty},  -- P3 push. Resync: P3 end\n            {P3E + 0.001, 0},\n            {e1Earliest - uncertaintyLead, e1Uncertainty},  -- first eye. Resync: P4 first eye death\n            {E1 + 0.001, p4Uncertainty},                    -- second eye. Resync: P4 end\n            {P4E + 0.001, 0},\n            -- Spear. Inside: nothing fixed. Resync: Intermission Spear killed\n            {spdEarliest - uncertaintyLead, spdUncertainty},\n            {SPD + 0.001, 0},\n            -- Last meteor. Inside: the end of the caster meteor LB Stun (METU + 8.1, Manual setting).\n            -- Resync: P5 Thordan returns (0.156s after the last meteor dies).\n            {metdEarliest - uncertaintyLead, metdUncertainty},\n            {METD + 0.001, 0},\n            {p5Earliest - uncertaintyLead, p5Uncertainty},  -- P5 push. Resync: P5 end\n            {P5E + 0.001, 0},\n            -- First dragon. Inside: the second both-down return (BU2: FullDowntime and CasterDowntime\n            -- ends, AoE start). Resync: P6 first dragon death\n            {p6fEarliest - uncertaintyLead, p6fUncertainty},\n            {P6F + 0.001, p6eUncertainty},                  -- second dragon. Resync: P6 end\n            {P6E + 0.001, 0},\n            -- Kill. Inside: the last raid buff end (DKU + 205.736). The end of the fight.\n            {killEarliest - uncertaintyLead, killUncertainty},\n            {KILL + 0.001, 0},\n        },\n    },\n    -- Two-boss phases whose slots follow the player's target (AS-015).\n    pairs = {\n        p1 = {fight = \"p1\", models = {12601, 12602}, contents = \"3634;3639\", first = \"k1\", stop = \"k_end\"},\n        p4 = {fight = \"p2\", models = {12609, 12610}, contents = \"11317;11318\", start = \"p4_start\", first = \"eye1\", stop = \"p4_end\"},\n        p6 = {fight = \"p2\", models = {12612, 12613}, contents = \"3458;4954\", start = \"p6_start\", first = \"p6_first\", stop = \"p6_end\"},\n    },\n    -- pin: a new single boss takes slot 0 and slot 1 is cleared. pair: start/first/stop of a pair phase.\n    -- after: must be a different entity from that anchor's. minT: earliest canonical time (skips blinks).\n    anchors = {\n        k1 = {fight = \"p1\", t = K1, models = {12601, 12602}, up = false, minT = AU2 + 5, pair = \"p1\", role = \"first\"},\n        k_end = {fight = \"p1\", t = KE, models = {12601, 12602}, up = false, after = \"k1\", pair = \"p1\", role = \"stop\"},\n        p1_chb = {fight = \"p1\", t = CH1, models = {12603}, up = true, pin = true},\n        p2_end = {fight = \"p2\", t = P2E, models = {12604}, up = false, minT = SAU + 5},\n        p3_start = {fight = \"p2\", t = N3U, models = {12605}, up = true, pin = true},\n        p3_end = {fight = \"p2\", t = P3E, models = {12605}, up = false},\n        p4_start = {fight = \"p2\", t = EYU, models = {12609, 12610}, up = true, pair = \"p4\", role = \"start\"},\n        eye1 = {fight = \"p2\", t = E1, models = {12609, 12610}, up = false, after = \"p4_start\", pair = \"p4\", role = \"first\"},\n        p4_end = {fight = \"p2\", t = P4E, models = {12609, 12610}, up = false, after = \"eye1\", pair = \"p4\", role = \"stop\"},\n        int_start = {fight = \"p2\", t = ICH, models = {12603}, up = true, pin = true},\n        spear_up = {fight = \"p2\", t = SPU, models = {11810}, up = true, pin = true},\n        spear_down = {fight = \"p2\", t = SPD, models = {11810}, up = false},\n        p5_start = {fight = \"p2\", t = T5U1, models = {12611}, up = true, pin = true},\n        p5_return = {fight = \"p2\", t = T5U3, models = {12611}, up = true, pin = true, minT = METU - 5},\n        p5_end = {fight = \"p2\", t = P5E, models = {12611}, up = false, minT = T5U3 + 3},\n        p6_start = {fight = \"p2\", t = P6S, models = {12612, 12613}, up = true, pair = \"p6\", role = \"start\"},\n        p6_first = {fight = \"p2\", t = P6F, models = {12612, 12613}, up = false, minT = BU2 - 1, pair = \"p6\", role = \"first\"},\n        p6_end = {fight = \"p2\", t = P6E, models = {12612, 12613}, up = false, after = \"p6_first\", pair = \"p6\", role = \"stop\"},\n        p7_start = {fight = \"p2\", t = DKU, models = {12616}, up = true, pin = true},\n    },\n}\nlocal forecast = data.dsw_autosim\n\nfunction forecast.apply(anchor, actual)\n    local api = TensorCore.API.TensorACR\n    local sched = forecast.schedule[forecast.fight]\n    api.setAutoSimKillTime(actual + forecast.kill_time[forecast.fight] - anchor)\n    api.clearAutoSimPhases(\"FullDowntime\")\n    api.clearAutoSimPhases(\"CasterDowntime\")\n    api.clearAutoSimPhases(\"Stun\")\n    api.clearAutoSimPhases(\"RaidBuff\")\n    for i = 1, #aoeTypes do api.clearAutoSimPhases(aoeTypes[i]) end\n    for slot = 0, 5 do\n        api.clearAutoSimPhases(\"TargetLifetime\", slot)\n        api.clearAutoSimPhases(\"DotAvailability\", slot)\n        if job == 25 then api.clearAutoSimPhases(\"DotAvailability\", slot, 1) end\n    end\n    for i = 1, #sched do\n        local window = sched[i]\n        if window[3] > anchor and (not window.meteorLB or forecast.meteorLB)\n            and (window.jobs == nil or window.jobs[job]) then\n            -- Begin downtime 0.5s early to avoid GCDs resolving after uptime ends.\n            local sourceStart = window[2]\n            if not window.exactStart and (window[1] == \"FullDowntime\" or window[1] == \"CasterDowntime\") then\n                sourceStart = sourceStart - 0.5\n            end\n            local start = actual + math.max(0, sourceStart - anchor)\n            -- A surviving target keeps its original lifetime start, so its DoTs carry over.\n            if window[1] == \"TargetLifetime\" then\n                start = actual + window[2] - anchor\n            end\n            local finish = actual + window[3] - anchor\n            if finish > start then\n                api.addAutoSimPhase(window[1], start, finish, window[4], window[5])\n                -- AoE Thunder has independent availability but shares the primary target lifetime.\n                if job == 25 and window[1] == \"DotAvailability\" and not window.singleTargetOnly then\n                    api.addAutoSimPhase(window[1], start, finish, window[4], window[5], 1)\n                end\n            end\n        end\n    end\n    -- Rebuild uncertainty on the same clock as the reanchored schedule (see forecast.uncertainty).\n    -- The level in effect at the anchor starts now; later changes follow on the same clock.\n    -- Two changes can't share a time, so changes at or before the anchor are skipped.\n    local levels = forecast.uncertainty[forecast.fight]\n    api.clearAutoSimUncertainty()\n    local current = levels[1][2]\n    for i = 2, #levels do\n        if levels[i][1] <= anchor then current = levels[i][2] end\n    end\n    api.addAutoSimUncertainty(actual, current)\n    for i = 2, #levels do\n        if levels[i][1] > anchor then\n            api.addAutoSimUncertainty(actual + levels[i][1] - anchor, levels[i][2])\n        end\n    end\n    forecast.anchor = anchor\n    forecast.actual = actual\nend\n\n-- The other boss of a pair: the other model, alive and targetable (DSW keeps untargetable copies).\nfunction forecast.findOther(id, p)\n    local model = Argus.getEntityModel(id)\n    local want = model == p.models[1] and p.models[2] or p.models[1]\n    for oid, e in pairs(TensorCore.entityList(\"contentid=\" .. p.contents)) do\n        if oid ~= id and e.alive and e.targetable and Argus.getEntityModel(oid) == want then\n            return oid\n        end\n    end\nend\n\n-- AS-015 loop body: slot 0 = the player's target; slot 1 = the other boss while both live.\n-- Any other attackable target takes slot 0 only and leaves slot 1 alone.\nfunction forecast.followPair(name)\n    local p = forecast.pairs[name]\n    if p.fight ~= forecast.fight or (p.start and not forecast.done[p.start]) or forecast.done[p.stop] then return end\n    local tid = TensorCore.mGetPlayer().targetid\n    if tid == nil or tid == 0 then return end\n    local api = TensorCore.API.TensorACR\n    if tid ~= forecast.slot0 then\n        local target = TensorCore.mGetEntity(tid)\n        if target == nil or not target.alive or not target.attackable then return end\n        api.setAutoSimTarget(0, tid)\n        forecast.slot0 = tid\n        forecast.slot1 = nil\n    end\n    -- Keep trying until the other boss is found: it may be mid-blink (untargetable) at the switch,\n    -- which used to leave slot 1 on the boss now in slot 0.\n    if forecast.slot1 == nil and not forecast.done[p.first] then\n        local model = Argus.getEntityModel(tid)\n        if model == p.models[1] or model == p.models[2] then\n            local other = forecast.findOther(tid, p)\n            if other then\n                api.setAutoSimTarget(1, other)\n                forecast.slot1 = other\n            end\n        end\n    end\nend\n\nfunction forecast.match(key, args)\n    local a = forecast.anchors[key]\n    if a == nil or a.fight ~= forecast.fight or forecast.done[key] or args.isTargetable ~= a.up then return false end\n    if a.after then\n        local prev = forecast.done[a.after]\n        if not prev or (a.role ~= \"first\" and prev == args.entityID) then return false end\n    end\n    local model = Argus.getEntityModel(args.entityID)\n    if model ~= a.models[1] and model ~= a.models[2] then return false end\n    if a.minT and forecast.anchor ~= nil then\n        local now = forecast.anchor + TensorCore.API.TensorACR.getAutoSimTime() - forecast.actual\n        if now < a.minT - 3 then return false end\n    end\n    return true\nend\n\nfunction forecast.reanchor(key, entityID)\n    local api = TensorCore.API.TensorACR\n    local actual = api.getAutoSimTime()\n    if actual <= 0 then return end\n    local a = forecast.anchors[key]\n    forecast.done[key] = entityID\n    if a.pin then\n        -- A new single boss: retire the old slots and pin slot 0 to it.\n        api.setAutoSimTarget(0, entityID)\n        api.clearAutoSimTarget(1)\n        forecast.slot0 = entityID\n        forecast.slot1 = nil\n    elseif a.role == \"start\" then\n        api.setAutoSimTarget(0, entityID)\n        forecast.slot0 = entityID\n        local other = forecast.findOther(entityID, forecast.pairs[a.pair])\n        if other then api.setAutoSimTarget(1, other) end\n        forecast.slot1 = other\n        -- P6: seat the dragons by party group right away (forecast.assignP6).\n        if a.pair == \"p6\" then\n            forecast.p6state = nil\n            forecast.assignP6()\n        end\n    elseif a.role == \"first\" then\n        -- One boss of the pair died: the survivor takes slot 0, slot 1 is retired.\n        local other = forecast.findOther(entityID, forecast.pairs[a.pair])\n        if other then\n            api.setAutoSimTarget(0, other)\n            forecast.slot0 = other\n        end\n        api.clearAutoSimTarget(1)\n        forecast.slot1 = nil\n    elseif a.role == \"stop\" then\n        api.clearAutoSimTarget(1)\n        forecast.slot1 = nil\n    end\n    forecast.apply(a.t, actual)\nend\n\n-- P6 slots by party group (user 2026-11-02), from AnyoneCore's party roster: Group 1 (T1 = MT, H1,\n-- M1, R1) opens on Nidhogg, Group 2 (T2 = OT, H2, M2, R2) on Hraesvelgr. Slot 0 = the group's dragon,\n-- slot 1 = the other. Each dragon leaves once, keeping its entity ID: it blinks out, comes back\n-- targetable at the arena edge, blinks out again and returns (user logs: down +40.8, edge +42.1,\n-- down +51.2, home +54.4 for Nidhogg; +65.8 / 67.0 / 76.1 / 81.4 for Hraesvelgr). So a dragon is away\n-- from its 1st to its 3rd targetability change in P6; while the group's dragon is away, slot 0 takes\n-- the other dragon and slot 1 the away one, and both switch back when it returns. The later both-down\n-- blinks are FullDowntime and change nothing. Stops at the first death (\"AutoSim | Reanchor P6 first\n-- dragon death\" puts the survivor in slot 0). A player with no roster seat keeps the AS-015 follow-\n-- target loop. Accepted AS-015 exception (user choice), see the checklist.\nlocal group1 = {T1 = true, H1 = true, M1 = true, R1 = true}\nfunction forecast.assignP6()\n    if forecast.fight ~= \"p2\" or not forecast.done.p6_start or forecast.done.p6_first then return end\n    local roster = AnyoneCore and AnyoneCore.Roster\n    local seat = roster and roster.current() ~= nil and roster.mySlot() or nil\n    if seat == nil then return forecast.followPair(\"p6\") end\n    local st = forecast.p6state\n    if st == nil then\n        st = {id = {}, up = {}, flips = {}}\n        forecast.p6state = st\n    end\n    -- Track the dragon that was targetable at P6 start; DSW also keeps untargetable copies.\n    for oid, e in pairs(TensorCore.entityList(\"contentid=\" .. forecast.pairs.p6.contents)) do\n        local m = Argus.getEntityModel(oid)\n        if m == 12612 or m == 12613 then\n            if st.id[m] == nil then\n                if e.alive and e.targetable then\n                    st.id[m] = oid\n                    st.up[m] = true\n                    st.flips[m] = 0\n                end\n            elseif st.id[m] == oid then\n                local up = e.targetable == true\n                if up ~= st.up[m] then\n                    st.up[m] = up\n                    st.flips[m] = st.flips[m] + 1\n                end\n            end\n        end\n    end\n    local function away(m)\n        local f = st.flips[m] or 0\n        return f >= 1 and f <= 3\n    end\n    local mine = group1[seat] and 12612 or 12613\n    local other = mine == 12612 and 12613 or 12612\n    if away(mine) and not away(other) then mine, other = other, mine end\n    local api = TensorCore.API.TensorACR\n    local id0, id1 = st.id[mine], st.id[other]\n    if id0 and id0 ~= forecast.slot0 then\n        api.setAutoSimTarget(0, id0)\n        forecast.slot0 = id0\n    end\n    if id1 and id1 ~= forecast.slot1 then\n        api.setAutoSimTarget(1, id1)\n        forecast.slot1 = id1\n    end\nend\n\n-- Settings window: re-apply when the meteor LB choice changes before the pull.\nfunction forecast.setMeteorLB(manual)\n    forecast.meteorLB = casterJob and manual\n    if forecast.anchor == nil or forecast.anchor == 0 then forecast.apply(0, 0) end\nend\n\nif fight == \"p2\" then\n    -- User: no DoTs on the Meteor Circles (they still count for AoE). The DoT blacklist exists only\n    -- on ACRs that provide one.\n    local ok, entry = pcall(acr.addBlacklistEntry, 4386, \"DSW P5 Meteor Circle\")\n    if ok and entry then entry.enabled = true end\nend\nforecast.apply(0, 0)\nself.used = true\n",
				executeType = 2,
				name = "AutoSim | DSW baseline",
				timeRange = true,
				timelineIndex = 1,
				timerStartOffset = -60,
				uuid = "bbbd73aa-ece7-6f2e-a6ed-6d5ceb4f6c87",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "-- Pre-pull settings for [AA] Autosim - DSW (caster jobs). Hidden once the pull starts.\n-- Caster LB Meteor: \"Manual\" = you press the caster LB on the P5 Meteor Circles, so AutoSim plans\n-- a Stun window for it; \"Disabled\" = no Stun window.\nlocal settingsFolder = GetLuaModsPath() .. [[ffxivminion\\AADSW\\]]\nlocal settingsPath = settingsFolder .. [[AADSWSettings.lua]]\n\nif not AADSW_Settings then\n    AADSW_Settings = {}\n    if FileExists(settingsPath) then\n        AADSW_Settings = FileLoad(settingsPath) or {}\n    end\nend\n\nlocal settings = AADSW_Settings\n\nif settings.meteorLB ~= \"Disabled\" and settings.meteorLB ~= \"Manual\" then\n    settings.meteorLB = \"Disabled\"\n    if not FolderExists(settingsFolder) then\n        FolderCreate(settingsFolder)\n    end\n    FileSave(settingsPath, settings)\nend\n\nAADSW = AADSW or {}\nAADSW.meteorItems = AADSW.meteorItems or {\"Disabled\", \"Manual\"}\n\nif TensorCore.mGetPlayer().incombat then\n    self.used = true\n    return\nend\n\nlocal flags = GUI.WindowFlags_NoTitleBar + GUI.WindowFlags_NoCollapse + GUI.WindowFlags_AlwaysAutoResize\nGUI:SetNextWindowSize(260, 0, GUI.SetCond_Always)\nlocal visible = GUI:Begin(\"[AA] Autosim - DSW###AADSWSettings\", true, flags)\n\nif visible then\n    GUI:Text(\"[AA] Autosim - DSW\")\n\n    GUI:Text(\"Caster LB Meteor\")\n    if GUI:IsItemHovered() then\n        GUI:SetTooltip(\"P5 Meteor Circles. Manual: you press the caster LB, so AutoSim plans a Stun window. Disabled: no Stun window.\")\n    end\n    GUI:SameLine(150)\n    local lbIndex = settings.meteorLB == \"Manual\" and 2 or 1\n    GUI:PushItemWidth(90)\n    local newIndex, changed = GUI:Combo(\"##AADSWMeteorLB\", lbIndex, AADSW.meteorItems)\n    GUI:PopItemWidth()\n    if changed then\n        settings.meteorLB = newIndex == 2 and \"Manual\" or \"Disabled\"\n        FileSave(settingsPath, settings)\n        local forecast = data.dsw_autosim\n        if forecast ~= nil and forecast.version == 1 then\n            forecast.setMeteorLB(settings.meteorLB == \"Manual\")\n        end\n    end\nend\n\nGUI:End()\nself.used = true\n",
							conditions = 
							{
								
								{
									"ae254f84-b9f0-ef63-8744-794a3945cc42",
									true,
								},
							},
							name = "[DSW] Settings",
							uuid = "291155b4-f942-54eb-bc4d-8cb4574c9320",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								25,
								27,
								35,
								42,
							},
							name = "Is Caster Job",
							uuid = "ae254f84-b9f0-ef63-8744-794a3945cc42",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim",
				eventType = 13,
				name = "AutoSim | DSW settings",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 15,
				timerStartOffset = -30,
				uuid = "20c3e8a1-f1c5-240c-a617-fc042876f8ad",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Slots",
				uuid = "33eab6f8-2d16-bb5b-8331-5fd8a633d07a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
				},
				conditions = 
				{
				},
				displayPath = "AutoSim/Slots",
				execute = "-- AS-015 (user 2026-10-22): Adelphel and Grinnaux are HP-balanced, so slot 0 follows the player's\n-- target and slot 1 holds the other knight until the first knight is pushed.\n-- Other attackable targets take slot 0 only. Body: forecast.followPair in the baseline.\nlocal forecast = data.dsw_autosim\nif forecast == nil or forecast.version ~= 1 then return end\nforecast.followPair(\"p1\")",
				executeType = 2,
				name = "AutoSim | P1 slots follow target",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 140,
				timerStartOffset = -1,
				uuid = "fa03e239-0c86-f938-9860-edff7fd5796e",
				version = 2,
			},
		},
	},
	
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "002b8ec2-d6c2-9496-9442-9c683dbc4fb2",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Hold Jumps",
				uuid = "7b1f7e1c-deb0-6c12-8d97-e52ab521b16d",
				version = 2,
			},
			inheritedObjectUUID = "9678637d-ab47-8452-a185-03b5b3593b33",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "8fe70fa3-44d8-7437-ed90-a741e5baf1d3",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	}, 
	[7] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "00963417-689b-85c3-7e5a-8f2d380ad347",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[8] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "7b1aa064-1cab-dd28-9f1c-c3d6d79538d4",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[10] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "517ae5f3-ca3b-9ccf-7ddb-a4f1ee755fe3",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[11] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "2235b852-921a-8a8e-3d8f-ca58b1d1e502",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[12] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "cf4eaa65-2a2d-6101-b17d-c1bff37fd655",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[13] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "19d2e17c-3bed-4428-66e4-4dfe8a996e2c",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[DNC] Hold for AOE",
				uuid = "f953817c-4496-f8fa-a67b-32ba412b2153",
				version = 2,
			},
			inheritedObjectUUID = "8ad9d1b5-485f-3638-80bc-5330e2b548b1",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[14] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "250d59e7-3557-149b-2fd1-9c9d1826c657",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Jumps off",
				uuid = "8709e9fa-0f69-e78e-8a43-f1ae4ceba88b",
				version = 2,
			},
			inheritedObjectUUID = "72b0ed25-4eb0-de71-a79e-3995d12e9c0c",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[15] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "6ad95e86-703b-9c1a-4156-c874151004b6",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[DNC] Disable Hold AOE",
				uuid = "49843066-b50e-b023-9911-8bca4c3f6521",
				version = 2,
			},
			inheritedObjectUUID = "685b1c36-6114-55da-9e07-eb87b783aff2",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[16] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "156c7a19-e390-d2ed-4d63-c0cbb7d65789",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[17] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "0ae210e0-9cdc-ec84-f00e-534a0a6fe010",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Feint",
				uuid = "b56b996d-1c89-8cdf-8b21-a2cbdab2dc26",
				version = 2,
			},
			inheritedObjectUUID = "722aca0a-5e65-38f9-8212-c25b652fb6ef",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "f2b13e1b-dd9a-e53d-9d3a-e22f40cd1f13",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "4d5a7414-cf28-790e-af6a-1e05bd350a27",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.dsw_autosim.reanchor(\"k1\", eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"24e86e97-953e-1e7b-85cd-01b814403a5c",
									true,
								},
							},
							name = "Apply forecast",
							uuid = "689ed188-7dcf-0913-8582-6125e2d83d63",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local forecast = data.dsw_autosim\nreturn forecast ~= nil and forecast.version == 1 and forecast.match(\"k1\", eventArgs)",
							dequeueIfLuaFalse = true,
							name = "First knight untargetable",
							uuid = "24e86e97-953e-1e7b-85cd-01b814403a5c",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				eventType = 26,
				mechanicTime = 102.2,
				name = "AutoSim | Reanchor P1 first knight pushed",
				timeRange = true,
				timelineIndex = 17,
				timerEndOffset = 40,
				timerStartOffset = -20,
				uuid = "59ff2843-8310-b6ed-ae1e-a6b3351b7075",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.dsw_autosim.reanchor(\"k_end\", eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"820ce65d-b009-dcc4-b2c5-778e305b7ecf",
									true,
								},
							},
							name = "Apply forecast",
							uuid = "f8b722a3-c1d2-ab26-b86d-308d599138e3",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local forecast = data.dsw_autosim\nreturn forecast ~= nil and forecast.version == 1 and forecast.match(\"k_end\", eventArgs)",
							dequeueIfLuaFalse = true,
							name = "Second knight untargetable",
							uuid = "820ce65d-b009-dcc4-b2c5-778e305b7ecf",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				eventType = 26,
				mechanicTime = 102.2,
				name = "AutoSim | Reanchor P1 knights end",
				timeRange = true,
				timelineIndex = 17,
				timerEndOffset = 40,
				timerStartOffset = -20,
				uuid = "682d7100-721f-d4cf-b458-0644fad51e14",
				version = 2,
			},
		},
	},
	[18] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "c429f2cb-6419-db37-9ea6-4819939385bb",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[DNC] Disable Hold AOE",
				uuid = "89344332-8931-1082-b432-2c200a8cbf07",
				version = 2,
			},
			inheritedObjectUUID = "cd1e9a45-d22f-5d60-846c-8bfd9ba62325",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[21] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "8adabc0b-065c-d087-717e-95adbf263cfb",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[23] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "6399e8dd-38ea-95b9-2a5b-1f5bb2ccf74d",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[24] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "ce5f0d3e-5028-c6f2-8766-a2e8224b7fee",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "b5b6080c-797d-c1cf-8f3e-37dab2a261af",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "9fb9e65d-30a2-9958-8404-923c6b43954d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.dsw_autosim.reanchor(\"p1_chb\", eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"be490e58-5254-1949-85ed-70db6297f2fb",
									true,
								},
							},
							name = "Apply forecast",
							uuid = "39af5769-34ac-7517-a784-f7dcb972cf77",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local forecast = data.dsw_autosim\nreturn forecast ~= nil and forecast.version == 1 and forecast.match(\"p1_chb\", eventArgs)",
							dequeueIfLuaFalse = true,
							name = "Charibert targetable",
							uuid = "be490e58-5254-1949-85ed-70db6297f2fb",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				eventType = 26,
				mechanicTime = 200,
				name = "AutoSim | Reanchor P1 Charibert start",
				timeRange = true,
				timelineIndex = 24,
				timerEndOffset = 15,
				timerStartOffset = -10,
				uuid = "a812989b-d0e1-07ed-8aa6-740b9ccd829f",
				version = 2,
			},
		},
	},
	[27] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "ce42b031-f134-5685-2ba4-a88f617678e1",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[29] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "1fbaec33-2d2a-f3df-ff73-a675f75cbc23",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[35] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "26f9ad28-9b15-09ec-fc8b-9c42bd5be518",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[36] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "b54805cf-7c7f-b4a3-d311-61954f8d857f",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Disable DoTs",
				uuid = "abf08d0a-cf76-3f56-a5d7-13ad84beff43",
				version = 2,
			},
			inheritedObjectUUID = "6f02ff7d-1b27-325d-81f4-292c8e96429d",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Disable DoTs before 237.8s",
				uuid = "3a180289-a883-772e-8d4a-cf3f3bf8abe3",
				version = 2,
			},
			inheritedObjectUUID = "7517a51e-8c73-7ac9-86b6-40a4f8265b82",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[38] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "3f0ee6b5-e699-7161-db15-99afc037bc25",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Enable DoTs before 291.5s",
				uuid = "231578d5-7cdf-6ae8-a79e-ea1302ae88a9",
				version = 2,
			},
			inheritedObjectUUID = "0c996365-aa11-a1b5-a60f-c1c50fc7f1b6",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[40] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "f34e839c-0a5c-86b0-10b8-e5128f57afcc",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "force meikyo after kaeshi",
				uuid = "bac68ffc-94d2-b05a-ad51-5f582992eae4",
				version = 2,
			},
			inheritedObjectUUID = "9042258c-5dde-2d95-aeee-11358687207a",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[43] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "64020313-1860-c0f7-5522-1d2584436a03",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Feint",
				uuid = "a521026f-624a-a752-957a-91d39c205916",
				version = 2,
			},
			inheritedObjectUUID = "5bbcbead-2291-886a-8a94-dd8497cf2c1a",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[45] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "23f6feb9-8b2d-6f75-a407-17a73b9e8629",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[46] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "439b07a6-2ed9-a222-5f5f-42a0f9c8bfd6",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Disable DoTs",
				uuid = "6b0ec697-0841-3cae-ab1e-322413a9d5a1",
				version = 2,
			},
			inheritedObjectUUID = "d8171a44-2446-b91b-9c18-6ffa374e559f",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[BRD] Refresh DoTs",
				uuid = "85207f73-f3d4-c5fe-a80a-b8a0cda9db2b",
				version = 2,
			},
			inheritedObjectUUID = "a53f4cc8-ee3d-ac30-b493-a08e3d606f43",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Mirage Dive",
				uuid = "6255cdff-2482-9b88-b353-7d90d113359d",
				version = 2,
			},
			inheritedObjectUUID = "497bb665-cb72-c2ea-99fc-af90173f8636",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[NIN] Armor Crush",
				uuid = "bd8f3bbe-9db8-28a9-a3b6-d058666cde8a",
				version = 2,
			},
			inheritedObjectUUID = "3cb4e569-50f1-2373-a31b-0b5c5175800d",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[RPR] Disable SoD",
				uuid = "24a7cc2f-c8b9-8cdc-9935-b551ba3bc224",
				version = 2,
			},
			inheritedObjectUUID = "eb2cf39a-0e38-d9d6-9af2-fc55c91e9768",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "dot off",
				uuid = "3de9f50b-8b42-fcab-ac4c-2010d385a9c3",
				version = 2,
			},
			inheritedObjectUUID = "505e201d-794f-8fe6-a81f-8cad35429593",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Disable DoTs before 320.6s",
				uuid = "d9484ef9-e464-b3e0-8439-e453bb725a41",
				version = 2,
			},
			inheritedObjectUUID = "f7791a8f-f146-0595-9066-72eb2aea1bbc",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[49] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "7581d93d-6c6e-76c1-af95-bb8bd9068b2d",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[50] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "b65a9a2f-1804-7513-63c9-e635a807fb5f",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[56] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "22fc58cd-d7f9-70b9-73e1-43b7055277bd",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[57] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "52bfae64-6690-c200-05cb-64160ecd0094",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[DNC] Precast Dance",
				uuid = "ef30dba7-e69a-473a-8da3-165366877e78",
				version = 2,
			},
			inheritedObjectUUID = "0d80b984-6c5d-1da0-bc52-505ac536b586",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[NIN] Precast Mudra",
				uuid = "0cc26366-077a-36b9-8ff0-f952b9436a55",
				version = 2,
			},
			inheritedObjectUUID = "6184762a-8312-1a20-96ee-a21cc3cf84f6",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[MCH] Precast Queen",
				uuid = "59918f40-a759-2532-9193-a08eed16fa00",
				version = 2,
			},
			inheritedObjectUUID = "d28e18fe-fc12-7873-8c56-823c8fee9a0a",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Disable SS prio",
				uuid = "bb68c75f-47d7-c11d-b462-24932f6f9882",
				version = 2,
			},
			inheritedObjectUUID = "edab9d8a-9e27-e027-86f3-77319f4464a6",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Enable CD",
				uuid = "f68cff97-388e-d49c-8b24-ef388d538bc5",
				version = 2,
			},
			inheritedObjectUUID = "d55052f2-113d-85c0-bb3d-c6f756c72384",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Precast Meikyo",
				uuid = "c8270f01-adcb-c5a6-a217-f52467b1ef08",
				version = 2,
			},
			inheritedObjectUUID = "9fd21fb5-6244-b20d-81f8-5d8d51e7c461",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[MNK] Form Shift",
				uuid = "e0d902a3-0f5c-11e6-9a13-c6e141ec9e8f",
				version = 2,
			},
			inheritedObjectUUID = "a8ffcaa7-ebb6-d61b-993a-b6f7e88b1f31",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[SAM] Precast TN",
				uuid = "062c24a9-796d-8f67-bc0a-3f68550a3a13",
				version = 2,
			},
			inheritedObjectUUID = "c0f005f2-b01a-3f30-ba6d-0cdf84298586",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[DRG] High Jump",
				uuid = "64ff253d-cf94-d8fd-97fd-199d82b0e74a",
				version = 2,
			},
			inheritedObjectUUID = "485f7681-e35f-d8dc-af15-a24eb0230a3c",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[SAM] Force early bana",
				uuid = "f07b9d92-2df0-d898-bd93-ef247687437d",
				version = 2,
			},
			inheritedObjectUUID = "5eba810a-ce8e-bd52-96c8-b173fe666259",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "dot on",
				uuid = "35a58355-5ca5-a754-bbd1-7a2a17c597b6",
				version = 2,
			},
			inheritedObjectUUID = "f1a8c1c4-130b-a665-bbc7-61401f1d9bc1",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Enable DoTs before 351.9s",
				uuid = "19411c13-9258-beee-be31-8ba788ab357a",
				version = 2,
			},
			inheritedObjectUUID = "6b3c1db4-77f4-c17e-9b4b-cbfff8785c19",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[58] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "d83b4217-2f36-676b-f358-3b6d8139d807",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Mitigation",
				uuid = "42ba28e7-f5c2-39a3-b8ac-575360c5b47f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mitigation",
				name = "Feint",
				uuid = "15bf55e0-aed2-d9da-b001-0fe39902fc46",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"b05715c2-d146-968c-abc0-35e3ebfba223",
									true,
								},
							},
							gVar = "ACR_TensorWeeb4_Hotbar_Feint",
							uuid = "27bddcfe-d22c-0150-b509-8d386fa72ae2",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- NAUR DSR Mit sheet, P2 Thordan: M1 and M2 both Feint Ancient Quaga (user 2026-10-31: keep both).\nreturn AnyoneCore ~= nil and AnyoneCore.Roster ~= nil and AnyoneCore.Roster.mySlot() == \"M1\"",
							dequeueIfLuaFalse = true,
							name = "Roster M1",
							uuid = "b05715c2-d146-968c-abc0-35e3ebfba223",
							version = 3,
						},
					},
				},
				displayPath = "Mitigation/Feint",
				mechanicTime = 358,
				name = "Feint | M1 | P2 Ancient Quaga",
				timeRange = true,
				timelineIndex = 58,
				timerEndOffset = -3,
				timerStartOffset = -7,
				uuid = "3142a467-7652-1b06-9cbc-12088d00a908",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a519bcbb-fdc9-45da-8fbb-0abcdbbc8b81",
									true,
								},
							},
							gVar = "ACR_TensorWeeb4_Hotbar_Feint",
							uuid = "056968a1-1f92-6d43-9ca4-d3bac779b716",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- NAUR DSR Mit sheet, P2 Thordan: M1 and M2 both Feint Ancient Quaga (user 2026-10-31: keep both).\nreturn AnyoneCore ~= nil and AnyoneCore.Roster ~= nil and AnyoneCore.Roster.mySlot() == \"M2\"",
							dequeueIfLuaFalse = true,
							name = "Roster M2",
							uuid = "a519bcbb-fdc9-45da-8fbb-0abcdbbc8b81",
							version = 3,
						},
					},
				},
				displayPath = "Mitigation/Feint",
				mechanicTime = 358,
				name = "Feint | M2 | P2 Ancient Quaga",
				timeRange = true,
				timelineIndex = 58,
				timerEndOffset = -3,
				timerStartOffset = -7,
				uuid = "ed4a315a-fa70-edfd-86bb-4911449440dd",
				version = 2,
			},
		},
	},
	[60] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "cbca8386-0d03-682a-6404-9338760129b6",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[62] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "6bd335e0-f809-2d54-89d8-255e6b610510",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[64] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "8326dd52-7a10-bcde-07d0-95d412c30a02",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[65] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "b26c0af3-09e4-1c1f-a5f3-f6fd4f6684e3",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Disable DoTs",
				uuid = "b36f57bb-edf3-a3b1-9ea5-4f29fca9e84f",
				version = 2,
			},
			inheritedObjectUUID = "89b11261-e66b-9d42-97af-64e012cba1dd",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Disable CD",
				uuid = "b73a3ecc-3db0-d5b7-a77b-e94b5ac407be",
				version = 2,
			},
			inheritedObjectUUID = "1ca7c5bd-684b-b6ab-9d43-d03b7db3a1ce",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Disable 15s",
				uuid = "492d21a7-45f6-9332-95aa-7ed26435f42d",
				version = 2,
			},
			inheritedObjectUUID = "dec20f8e-e9e8-ad3b-a564-20fdf1229d88",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Disable 20s",
				uuid = "3de2bbb7-d942-752a-87be-ab597b5a2973",
				version = 2,
			},
			inheritedObjectUUID = "4461cccf-0c30-31e9-a23f-2599fb945d35",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[SAM] Dont waste midare",
				uuid = "3b6cf964-aafe-cc9b-9d3d-f28c4a50267d",
				version = 2,
			},
			inheritedObjectUUID = "1e9d8b30-350f-557f-8578-83237a32abaf",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[RPR] Disable SoD",
				uuid = "56fac782-a963-9e62-8c39-973b7e541aff",
				version = 2,
			},
			inheritedObjectUUID = "11d833a5-d410-149c-8b23-910102856d4f",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[DRG] Delay life",
				uuid = "c6b8b3c3-9213-af8d-ab69-37ad075005d2",
				version = 2,
			},
			inheritedObjectUUID = "55a38541-e593-2049-9c1e-f6437fd009c8",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "dot off",
				uuid = "4bae46da-8cdb-09dd-8850-c2f373374cf5",
				version = 2,
			},
			inheritedObjectUUID = "5390d99d-c0d1-376a-b4b7-97c65e25e7f4",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Disable DoTs before 388.7s",
				uuid = "26024251-424e-2521-91ea-159a3a6a58a0",
				version = 2,
			},
			inheritedObjectUUID = "70b358de-55bd-8677-8687-22ff16ed63e0",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[66] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "7ac4067c-543d-2ab8-1cca-d0aaeb8a932c",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[68] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "3e9ba4fe-5e30-4432-f03c-e8c0376b84ae",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[70] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "abcde7a9-23d9-530d-2c0b-903b062e3d99",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[72] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "645e4ef7-1c44-27bb-33a0-bb8d15cf1d67",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[73] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "69f82156-9055-18ba-a61f-a0245b9b2206",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[80] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "5364d758-3beb-c784-7f68-57668da02048",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[82] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "7cb95afe-0f4a-771a-b21f-32c075893aae",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[DNC] Precast Dance",
				uuid = "56866ee3-ad41-a15c-a095-470cea64cb5a",
				version = 2,
			},
			inheritedObjectUUID = "1363f875-198a-9350-ae04-44a52c93aaf1",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[NIN] Precast Mudra",
				uuid = "3e6bea54-ebad-f275-8bbc-00596cde0f75",
				version = 2,
			},
			inheritedObjectUUID = "ee889ea0-7545-2188-b37a-27528a6e7595",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[MCH] Precast Reass",
				uuid = "b41bbcf2-7d50-b4dd-8ca5-572cbd7573fb",
				version = 2,
			},
			inheritedObjectUUID = "d35eb8bf-ce35-bd84-a0e8-677b22fd956e",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Optional CD hold",
				uuid = "41f9626c-5823-2655-aea5-60bfbb03866c",
				version = 2,
			},
			inheritedObjectUUID = "a6e50ba7-b1f1-e44d-adc3-825194f8fad6",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Refresh Huton",
				uuid = "1546e852-f681-0a1f-b27e-0d6fee32b39a",
				version = 2,
			},
			inheritedObjectUUID = "5a39e0a5-8562-bb4b-ab28-58912b99ac17",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Force Ikishoten",
				uuid = "b23f2fba-3a58-2a88-a195-cb7030b155e3",
				version = 2,
			},
			inheritedObjectUUID = "409cdfbd-2091-741d-ac22-dd7f0594a974",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Precast Meikyo",
				uuid = "8f843fd6-ad2d-2902-a50d-b27bc9b2095c",
				version = 2,
			},
			inheritedObjectUUID = "5e12153c-de0e-fa8c-a385-5862a1315f27",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[MNK] Form Shift",
				uuid = "dc243246-04c1-cd9f-a6f6-7bbd164253d6",
				version = 2,
			},
			inheritedObjectUUID = "05987fbc-e7fe-2da0-acd6-5230e471c1ef",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Enable CD",
				uuid = "ae9b6411-8aef-8c7a-b76f-8897cfe3742f",
				version = 2,
			},
			inheritedObjectUUID = "c16010e5-57dc-57c1-9bb4-ef5b18dbbc87",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[SAM] Precast TN",
				uuid = "090172bb-12c6-2836-ace9-fe18190366c5",
				version = 2,
			},
			inheritedObjectUUID = "aa57d8a5-4305-4cea-aa3d-b5e7d778b079",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[SAM] Force early bana",
				uuid = "9244d0ab-db5e-cc61-8040-bd00ec486efd",
				version = 2,
			},
			inheritedObjectUUID = "a81e77b6-903e-3a42-9646-46769a0dc8dd",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "dot on",
				uuid = "56d6d41d-915d-51e0-a212-e8dbd27e0970",
				version = 2,
			},
			inheritedObjectUUID = "7f39139f-7847-0f87-8961-3a71423f12dc",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Enable DoTs before 439.2s",
				uuid = "7c6232b6-eb5e-fef2-9e18-d90dcf4e88b0",
				version = 2,
			},
			inheritedObjectUUID = "d641fe0e-9d7a-ce2f-8f8f-1bbc8387943e",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[83] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "a094afc3-ba9a-c871-bfd7-174f0bcf2965",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "73636d3d-10c9-52d5-beb7-5bedf8f37a68",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.dsw_autosim.reanchor(\"p2_end\", eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"686d1f32-436a-7e9f-a517-c782ea3d2420",
									true,
								},
							},
							name = "Apply forecast",
							uuid = "323e5faa-34aa-ee4e-ba34-dc1f43a8d125",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local forecast = data.dsw_autosim\nreturn forecast ~= nil and forecast.version == 1 and forecast.match(\"p2_end\", eventArgs)",
							dequeueIfLuaFalse = true,
							name = "Thordan pushed",
							uuid = "686d1f32-436a-7e9f-a517-c782ea3d2420",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				eventType = 26,
				mechanicTime = 444.3,
				name = "AutoSim | Reanchor P2 end",
				timeRange = true,
				timelineIndex = 83,
				timerEndOffset = 45,
				timerStartOffset = -20,
				uuid = "23b0f70d-a8ce-e1e6-a8b7-5b14c4ebda9a",
				version = 2,
			},
		},
	},
	[84] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "572bd574-dafc-1f28-2fd9-f6b2acb670a4",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Feint",
				uuid = "f7c138aa-c5fd-ad7b-a71f-6a4583d4f392",
				version = 2,
			},
			inheritedObjectUUID = "0eec68a4-3d64-58b0-ae68-9159713b5475",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "SS Prio",
				uuid = "2c9139c8-e286-116b-861d-65aae4ef1761",
				version = 2,
			},
			inheritedObjectUUID = "25243fa0-96ec-575e-8f77-4b8354dc0514",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Enable Fast TA",
				uuid = "a82a1881-fa19-6d98-908f-d255f1705069",
				version = 2,
			},
			inheritedObjectUUID = "2cb22312-ed26-52a2-8277-d3d3d82ce316",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Mitigation",
				uuid = "aac9620e-aa78-fe0b-868e-a2113514a151",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mitigation",
				name = "Feint",
				uuid = "f6f84c07-519f-53ed-80e8-0cb01be8a9ac",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"45e6b2e5-d511-8a42-89f0-4d347750063d",
									true,
								},
								
								{
									"9688ebcf-0fe1-b659-bf19-ac190ef104c8",
									true,
								},
							},
							gVar = "ACR_TensorWeeb4_Hotbar_Feint",
							uuid = "bc7c3a3f-53dd-5abd-a222-4bbc2faaf688",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- NAUR DSR Mit sheet, P2 Thordan: M1 Feints Ultimate End. Window copied from Anyone's Feint here.\nreturn AnyoneCore ~= nil and AnyoneCore.Roster ~= nil and AnyoneCore.Roster.mySlot() == \"M1\"",
							dequeueIfLuaFalse = true,
							name = "Roster M1",
							uuid = "45e6b2e5-d511-8a42-89f0-4d347750063d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1195,
							name = "Target missing Feint",
							uuid = "9688ebcf-0fe1-b659-bf19-ac190ef104c8",
							version = 3,
						},
					},
				},
				displayPath = "Mitigation/Feint",
				mechanicTime = 452.7,
				name = "Feint | M1 | P2 Ultimate End",
				timeRange = true,
				timelineIndex = 84,
				timerEndOffset = -2,
				timerStartOffset = -9.5,
				uuid = "7cccd72d-3da2-d11a-bb1a-4a9131530960",
				version = 2,
			},
		},
	},
	[86] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "05e3604a-3129-658e-40d8-6d5ca6b351ba",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Hold Gauge",
				uuid = "c6ed3ac3-35ee-e9f4-98b4-038abf2d8e1e",
				version = 2,
			},
			inheritedObjectUUID = "f03fabfe-e08f-c563-9237-4cfa7ca0813a",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Hold 2",
				uuid = "5d8d0294-dfd3-89cd-bd7c-4049cceb29be",
				version = 2,
			},
			inheritedObjectUUID = "d697e448-908f-2b11-852b-5d35b86eb659",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[90] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "40302c5b-3c58-99d7-1230-ac09f3096c4b",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[94] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "4179b58f-12a7-3363-4dda-2ad557236d3f",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Disable standard",
				uuid = "d1f0b695-99ad-699c-a0b2-c1aa10d6b0f0",
				version = 2,
			},
			inheritedObjectUUID = "f8dc50cc-12d0-d1e7-a610-ed71e27ec47a",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Disable CD",
				uuid = "48843090-c62e-bcc3-bfc6-e2d657bb4381",
				version = 2,
			},
			inheritedObjectUUID = "ded6a322-6cef-5390-9d87-e289cdaa165c",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[97] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "9d3bafe8-aecb-41ac-0c2c-3982e33575d8",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[DNC] Precast Dance",
				uuid = "bdbd3fb2-e49a-1752-aa68-d20db4411109",
				version = 2,
			},
			inheritedObjectUUID = "ad1496c9-1c65-734a-8a2f-baef76a1de35",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[NIN] Precast Mudra",
				uuid = "f86d1157-94bd-992d-9774-10972fd6e44f",
				version = 2,
			},
			inheritedObjectUUID = "901639da-fe1b-99d4-ab0c-6f160631f903",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[MCH] Precast Queen",
				uuid = "224acfb5-5846-a9d0-a21c-8da2024c55a0",
				version = 2,
			},
			inheritedObjectUUID = "0da75eec-f4f8-03ea-b9c0-d56541990ecb",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Stop Holding Gauge",
				uuid = "9095d60b-98ec-6b25-960d-35cd71901895",
				version = 2,
			},
			inheritedObjectUUID = "006e8b0d-72ae-784b-aa70-d971c4c78cd2",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Stop + Improv",
				uuid = "e6437886-cb1c-0c09-a47b-61b05b239e31",
				version = 2,
			},
			inheritedObjectUUID = "85726014-dbc7-9b04-a6fc-7a1bd9d41950",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Improv finish",
				uuid = "5ba84e12-ec36-f3ee-95ec-1d8869339a3b",
				version = 2,
			},
			inheritedObjectUUID = "cc964fe7-6564-5618-bb1d-4c5ad4e1298e",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Enable Pots",
				uuid = "4dd4041b-933d-7a64-864f-25969c037b89",
				version = 2,
			},
			inheritedObjectUUID = "506114fc-f1ad-74e7-8388-4e3709d36d0a",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[MCH] Reass pot",
				uuid = "54f66231-3dbe-bb3c-b49f-81f9ab778a33",
				version = 2,
			},
			inheritedObjectUUID = "5360257e-d479-907b-bbeb-8c294cc867f1",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Enable CD",
				uuid = "54cbe78c-196c-06d5-a36a-61dbb08da206",
				version = 2,
			},
			inheritedObjectUUID = "6741b301-67e7-4680-9adb-854c916145aa",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[MCH] Flamethrower",
				uuid = "ca5d0b1d-d594-b662-9aa5-48ee73d50795",
				version = 2,
			},
			inheritedObjectUUID = "171a1b8b-81a7-17c6-9eba-19cb81194535",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[MNK] Form Shift",
				uuid = "6bc99238-7d20-3b28-8322-a5cc353e11be",
				version = 2,
			},
			inheritedObjectUUID = "2798c507-f5f5-eb43-b124-eae31e932b94",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Enable DoTs before 602.3s",
				uuid = "e664f765-63d4-9b1a-add4-487255352cfe",
				version = 2,
			},
			inheritedObjectUUID = "944dca3a-88d7-db20-a679-b9be707aa8d5",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "ea0c0ade-8bbb-105e-b6d8-d305d3c101c0",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "e82cb268-7410-b9e9-ab15-5ca3e6e25cfe",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.dsw_autosim.reanchor(\"p3_start\", eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"dd1f2066-607e-91bb-b482-4e1af201e498",
									true,
								},
							},
							name = "Apply forecast",
							uuid = "6b605c8e-f0d1-0b1f-bf9e-f0a1da828999",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local forecast = data.dsw_autosim\nreturn forecast ~= nil and forecast.version == 1 and forecast.match(\"p3_start\", eventArgs)",
							dequeueIfLuaFalse = true,
							name = "Nidhogg targetable",
							uuid = "dd1f2066-607e-91bb-b482-4e1af201e498",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				eventType = 26,
				mechanicTime = 602.3,
				name = "AutoSim | Reanchor P3 start",
				timeRange = true,
				timelineIndex = 97,
				timerEndOffset = 10,
				timerStartOffset = -10,
				uuid = "a6a8889e-da80-9e83-847a-fd18803cebac",
				version = 2,
			},
		},
	},
	[98] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "32908183-1229-f3ef-2b24-5421805a5f73",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[99] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "b8f4e622-faac-332e-48eb-99c8511531d2",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[100] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "68b7eefd-b63a-4731-cc8a-a3c71ef332ad",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[101] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "ca948dd4-1582-dd98-21ca-80e6357da944",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[102] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "98d2c02b-a7b4-7dff-b8e2-b4f9d7cfbc5b",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[106] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "dc6f7c9f-72d2-530b-628d-edc5d919458f",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Hold jumps",
				uuid = "7c475055-ed3b-e842-96f7-d7660e81feef",
				version = 2,
			},
			inheritedObjectUUID = "62d51a21-b3c2-3c7f-82bd-46991cca78e4",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[108] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "c10d7245-d092-ae59-7def-f81face84375",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Disable Jumps if soaking 2",
				uuid = "0c6819fa-f24b-c295-8a18-021dcf9cf9f6",
				version = 2,
			},
			inheritedObjectUUID = "9e6893d5-5612-8836-887f-b6569ea7f291",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[109] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "41ba1b5c-229b-da20-ee1c-98ded544574c",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[110] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "42c6fc9a-7a72-786e-8281-81349d82f04a",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[111] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "07e2751b-9e52-312f-f027-055dfad85dcb",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[DNC] No Holds",
				uuid = "3e2f65eb-b4f5-c4f0-91db-21127bff8f58",
				version = 2,
			},
			inheritedObjectUUID = "1b2e15d7-1168-cb1a-9b8b-f695b3c21458",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Feint",
				uuid = "a5a1bbc1-fc81-c1f9-94c1-01351a2dddc6",
				version = 2,
			},
			inheritedObjectUUID = "2ed6374f-b3c7-11e4-a6f1-cbba203b425c",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Mitigation",
				uuid = "00089181-80da-246c-871e-0f4ac5724cd9",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mitigation",
				name = "Feint",
				uuid = "c458895b-8dec-121f-bcc4-f71e43767f52",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"2e2418af-2411-cbdd-8306-85dbe35e5b2c",
									true,
								},
								
								{
									"984da857-0ca6-f07f-87e5-26393586fc7c",
									true,
								},
							},
							gVar = "ACR_TensorWeeb4_Hotbar_Feint",
							uuid = "150c9c65-d7bc-3cff-bb5d-4b03ad7f4413",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- NAUR DSR Mit sheet, P3 Nidhogg: M2 Feints the second Eye of the Tyrant stack. Window copied from Anyone's Feint here.\nreturn AnyoneCore ~= nil and AnyoneCore.Roster ~= nil and AnyoneCore.Roster.mySlot() == \"M2\"",
							dequeueIfLuaFalse = true,
							name = "Roster M2",
							uuid = "2e2418af-2411-cbdd-8306-85dbe35e5b2c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1195,
							name = "Target missing Feint",
							uuid = "984da857-0ca6-f07f-87e5-26393586fc7c",
							version = 3,
						},
					},
				},
				displayPath = "Mitigation/Feint",
				mechanicTime = 651.9,
				name = "Feint | M2 | P3 Second Stack",
				timeRange = true,
				timelineIndex = 111,
				timerEndOffset = -6,
				timerStartOffset = -10,
				uuid = "b85dc00a-36df-37ec-b5fa-05cfc89f0966",
				version = 2,
			},
		},
	},
	[116] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "0e78a4a8-3ab7-4564-5aec-29beeb046758",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[117] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "fcb8c181-0af3-efcd-4c4a-037f2b5041f1",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Hold pots",
				uuid = "86c75a6e-3d50-1aff-ae33-640d7dfd3d80",
				version = 2,
			},
			inheritedObjectUUID = "c7f33b3e-c07e-a9bf-80be-def1f3b2be25",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Hold until after towers",
				uuid = "f09939e9-f231-915e-9b41-529935b944b7",
				version = 2,
			},
			inheritedObjectUUID = "3c02727e-83c5-6e7a-8a71-a00c9352c268",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Hold trick",
				uuid = "d4f96347-31f9-4860-bf9d-551327da41ec",
				version = 2,
			},
			inheritedObjectUUID = "2ca70fd1-4b53-41a3-bcca-01337b871daf",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[DRG] Delay life",
				uuid = "c496c1e5-ff8b-549e-b0bd-83325b9fa244",
				version = 2,
			},
			inheritedObjectUUID = "f1449391-2b41-de88-bc0e-8c434332ab2f",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[118] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "42045ae2-7e7c-2f76-5f1c-a43c58e42352",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[MCH & SAM] Force pot",
				uuid = "a98f56ef-5826-6661-b8f0-a6f28998174b",
				version = 2,
			},
			inheritedObjectUUID = "0e2f8367-fefc-238e-af7c-da5efe2e6856",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[MCH] Disable Reass Hold for pot",
				uuid = "8d2bc10c-7774-cb0c-8219-a25e092439af",
				version = 2,
			},
			inheritedObjectUUID = "520f48fe-214b-cb67-b5ee-f2077e9c64f5",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[119] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "5a684d43-c032-d917-bcf4-3a25882950f3",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[120] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "7b009e03-704d-bed7-5e32-f6e1f1ea88b3",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Enable Fast TA",
				uuid = "8364f1e6-03f0-80a8-8f4b-52ff586fab36",
				version = 2,
			},
			inheritedObjectUUID = "68e7c7f2-ba60-28c2-b739-47885a12a110",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[DRG] Undelay life",
				uuid = "4e0b6fd8-94d7-762b-846a-4e69004f0c23",
				version = 2,
			},
			inheritedObjectUUID = "653cdd52-bcfe-b925-844c-dd860878e403",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Mitigation",
				uuid = "9530fa1a-9ecc-9fe3-bba6-75b76a38828b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mitigation",
				name = "Feint",
				uuid = "d6f0b5e0-0294-65cc-b9ff-f8e705772773",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"fa3ea7d7-563b-1e8a-bb1e-44ea521cfedc",
									true,
								},
								
								{
									"9c82915a-50ae-0e50-b19b-ff4dc76bce05",
									true,
								},
							},
							gVar = "ACR_TensorWeeb4_Hotbar_Feint",
							uuid = "74a20a9a-2094-e594-9e08-db85717185dc",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- NAUR DSR Mit sheet, P3 Nidhogg: M1 Feints Soul Tether.\nreturn AnyoneCore ~= nil and AnyoneCore.Roster ~= nil and AnyoneCore.Roster.mySlot() == \"M1\"",
							dequeueIfLuaFalse = true,
							name = "Roster M1",
							uuid = "fa3ea7d7-563b-1e8a-bb1e-44ea521cfedc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1195,
							name = "Target missing Feint",
							uuid = "9c82915a-50ae-0e50-b19b-ff4dc76bce05",
							version = 3,
						},
					},
				},
				displayPath = "Mitigation/Feint",
				mechanicTime = 683.9,
				name = "Feint | M1 | P3 Soul Tether",
				timeRange = true,
				timelineIndex = 120,
				timerEndOffset = -3,
				timerStartOffset = -7,
				uuid = "6a6e83f6-4336-bd51-b24d-da305e881a43",
				version = 2,
			},
		},
	},
	[122] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "5db8cff5-0ffd-5009-42e7-b6af0296ba25",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "064b7230-ce3d-65da-805c-6ecfb8ba5f78",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "41f459d9-e3f4-73b9-94dd-4c5c3d5b260a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.dsw_autosim.reanchor(\"p3_end\", eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"c88afc7a-251b-cdad-b8c4-bbfce404901e",
									true,
								},
							},
							name = "Apply forecast",
							uuid = "a21112ee-543f-e28f-8641-b847869062ed",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local forecast = data.dsw_autosim\nreturn forecast ~= nil and forecast.version == 1 and forecast.match(\"p3_end\", eventArgs)",
							dequeueIfLuaFalse = true,
							name = "Nidhogg pushed",
							uuid = "c88afc7a-251b-cdad-b8c4-bbfce404901e",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				eventType = 26,
				mechanicTime = 707.9,
				name = "AutoSim | Reanchor P3 end",
				timeRange = true,
				timelineIndex = 122,
				timerEndOffset = 20,
				timerStartOffset = -15,
				uuid = "7fb24c89-8cbc-e02d-b92a-fee868e23f7f",
				version = 2,
			},
		},
	},
	[123] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "8614e3cc-6296-d890-1f07-fdeea4bf243c",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[NIN] Armor Crush",
				uuid = "a0298286-485b-4571-9c0a-2f8b3ffc9675",
				version = 2,
			},
			inheritedObjectUUID = "7a3f4af6-ca56-9959-83f9-1b962eeafa5d",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Hold Gauge",
				uuid = "8b9cd5ba-f0fb-b80f-996d-854ff45a6056",
				version = 2,
			},
			inheritedObjectUUID = "a84b5c52-2ffc-aed2-9a08-cffd5278fa44",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Disable CD",
				uuid = "fee97654-6370-b7d6-990e-e588d5fc1fbc",
				version = 2,
			},
			inheritedObjectUUID = "aa0d179d-773b-8adf-be0f-653980bd95c4",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[127] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "dce7e730-e2c0-66ac-7541-72fa0cd3dfa0",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[DNC] Precast Dance",
				uuid = "bd5b2c84-a5ac-007a-aa7a-6e7ed3028fcf",
				version = 2,
			},
			inheritedObjectUUID = "c3c3230c-76a5-36ac-af99-504bd2e347af",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[NIN] Precast Mudra",
				uuid = "f7e77637-a2df-fa26-935c-7e28dd16f9d9",
				version = 2,
			},
			inheritedObjectUUID = "37a22c88-cd7a-d96e-9a2d-e7dc6f591d10",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[MCH] Precast Queen",
				uuid = "dcacef13-257a-3d7b-a600-eefaa43f1d1b",
				version = 2,
			},
			inheritedObjectUUID = "fd429cfd-8611-f872-98ff-4edd1aa66cbe",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[DNC] Disable No Holds",
				uuid = "e3d4f4f5-0ee1-c685-a037-8e0721c771da",
				version = 2,
			},
			inheritedObjectUUID = "ad2a0a35-7f9f-872d-9ca7-3d4c7827c37e",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Stop holding",
				uuid = "fb007515-dec1-3f07-80d1-b71e2b906cc0",
				version = 2,
			},
			inheritedObjectUUID = "f019160a-f7cb-6993-819f-40f9095965ca",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Improvised finish",
				uuid = "80ede1d7-044f-aa0a-b766-6fc5af9e7c10",
				version = 2,
			},
			inheritedObjectUUID = "b3cb16ad-d857-d360-9676-389870558aef",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Improv close to alphinaud",
				uuid = "6bf60e03-c171-e151-8fd5-c9f0a7bae8df",
				version = 2,
			},
			inheritedObjectUUID = "77d02a42-ca9e-d2c1-b776-f31e71055300",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Hold Reass for Chainsaw",
				uuid = "ea9f322f-56ac-b568-8a5f-ae678cc797c3",
				version = 2,
			},
			inheritedObjectUUID = "f96d81d2-eaf8-29e9-9124-db25821136a8",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Stop holding reass",
				uuid = "c7e820f2-7104-b823-aec6-f6a870fdc03e",
				version = 2,
			},
			inheritedObjectUUID = "470cc9b7-8dcb-2d4d-b9b2-8275190f7587",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[MNK] Form Shift",
				uuid = "922ea018-d4c7-4a76-b5eb-0d9840827db0",
				version = 2,
			},
			inheritedObjectUUID = "c926686f-8a2f-b090-9bb4-6836357c7f2f",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "855a96af-1f00-ce88-85a5-5f7b4ccc7269",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Slots",
				uuid = "cd6534b7-b50c-d450-bd01-2a6def1a82f6",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
				},
				conditions = 
				{
				},
				displayPath = "AutoSim/Slots",
				execute = "-- AS-015 (user 2026-10-22): slot 0 = current target, slot 1 = the other eye, until the first eye dies.\n-- Other attackable targets take slot 0 only. Body: forecast.followPair in the baseline.\nlocal forecast = data.dsw_autosim\nif forecast == nil or forecast.version ~= 1 then return end\nforecast.followPair(\"p4\")",
				executeType = 2,
				mechanicTime = 757,
				name = "AutoSim | P4 slots follow target",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 127,
				timerEndOffset = 80,
				timerStartOffset = -1,
				uuid = "3cce1a1d-391b-45e3-8f66-5e7132e162ac",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "ad818be9-1a8f-7899-9e04-04e7bded077d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.dsw_autosim.reanchor(\"p4_start\", eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"94e01752-a340-3506-89bc-57bc5c84aa92",
									true,
								},
							},
							name = "Apply forecast",
							uuid = "efaebb8a-7615-ad96-8d16-11ce8f21829c",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local forecast = data.dsw_autosim\nreturn forecast ~= nil and forecast.version == 1 and forecast.match(\"p4_start\", eventArgs)",
							dequeueIfLuaFalse = true,
							name = "Eyes targetable",
							uuid = "94e01752-a340-3506-89bc-57bc5c84aa92",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				eventType = 26,
				mechanicTime = 757,
				name = "AutoSim | Reanchor P4 start",
				timeRange = true,
				timelineIndex = 127,
				timerEndOffset = 10,
				timerStartOffset = -10,
				uuid = "c5669aa1-4a38-398c-ad46-b4c8b2eb6de2",
				version = 2,
			},
		},
	},
	[128] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "88a048db-461f-18ef-1a94-72c95d0a588b",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[129] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "831cc65a-2ea1-582e-4e64-9d50dc38f20a",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[130] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "f2610860-6fe0-ec84-0ebf-1d1e94071d50",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Disable CD",
				uuid = "b32084ad-09de-6719-b814-3d7f9f18fd3c",
				version = 2,
			},
			inheritedObjectUUID = "29a51448-4110-15a3-adff-3155e2f0ee57",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Disable Standard Step",
				uuid = "071ea3fb-0577-897d-b0ac-aadbf415030c",
				version = 2,
			},
			inheritedObjectUUID = "3a21f06f-0b86-d9a0-95a6-88b291671988",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[131] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "fceb7199-b694-d2ed-a4c4-795f6036f2c9",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[SAM] Disable Higanbana",
				uuid = "4e127fea-d1d4-3b1f-9f17-6174ef4bb5a0",
				version = 2,
			},
			inheritedObjectUUID = "2b61e994-ef2b-305a-ac70-fb58c7a6dc56",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[132] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "52585606-433f-9c1a-0142-68f868b434f6",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[NIN] Avoid ninki cap v2",
				uuid = "d0b65ee2-59a2-2b3f-a7c0-090841e9d5b2",
				version = 2,
			},
			inheritedObjectUUID = "8d20c3fe-7b26-3f96-9f8a-e6b5b10e4a3a",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "aaca9f24-8fa2-f489-9922-85d37ea4143d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "f641e1e7-d7ca-f60d-aca3-968a7370ccd0",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.dsw_autosim.reanchor(\"eye1\", eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"231ccdc9-ff09-962e-9844-208b30adaaba",
									true,
								},
							},
							name = "Apply forecast",
							uuid = "2ff46d13-fb63-7767-870b-0a236ce3f5e4",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local forecast = data.dsw_autosim\nreturn forecast ~= nil and forecast.version == 1 and forecast.match(\"eye1\", eventArgs)",
							dequeueIfLuaFalse = true,
							name = "First eye dies",
							uuid = "231ccdc9-ff09-962e-9844-208b30adaaba",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				eventType = 26,
				mechanicTime = 814.9,
				name = "AutoSim | Reanchor P4 first eye death",
				timeRange = true,
				timelineIndex = 132,
				timerEndOffset = 25,
				timerStartOffset = -15,
				uuid = "c5cdd42e-7ee3-efdb-ad26-a1ecdd25bd62",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.dsw_autosim.reanchor(\"p4_end\", eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"4b3b2a11-f73b-0424-8114-aa108b97360c",
									true,
								},
							},
							name = "Apply forecast",
							uuid = "644afb61-b480-9042-b43d-6066dbc308a3",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local forecast = data.dsw_autosim\nreturn forecast ~= nil and forecast.version == 1 and forecast.match(\"p4_end\", eventArgs)",
							dequeueIfLuaFalse = true,
							name = "Second eye dies",
							uuid = "4b3b2a11-f73b-0424-8114-aa108b97360c",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				eventType = 26,
				mechanicTime = 814.9,
				name = "AutoSim | Reanchor P4 end",
				timeRange = true,
				timelineIndex = 132,
				timerEndOffset = 25,
				timerStartOffset = -15,
				uuid = "1e0e171f-a902-8856-8f38-adb4d5016e6e",
				version = 2,
			},
		},
	},
	[133] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "0c8c5167-085b-149b-36a7-4391aa6ade97",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[DNC] Precast Dance",
				uuid = "20c16709-8a3c-cf1b-a93e-015e89bab0ad",
				version = 2,
			},
			inheritedObjectUUID = "de863cd3-6f75-dd40-9d1a-aa089f590cb4",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[NIN] Armor Crush",
				uuid = "62845f3e-c976-4d90-97ba-09cc1064e3eb",
				version = 2,
			},
			inheritedObjectUUID = "6a65e126-ef3f-cdcd-8e49-1f85f2cd9f23",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Mitigation",
				uuid = "9bd0da90-9c37-2bb4-a217-c999195a9adb",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mitigation",
				name = "Feint",
				uuid = "de854eb3-32b0-75d3-b304-d95ffb34797a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"c4dd4c78-69b1-9121-a628-a9f1c76ef87a",
									true,
								},
								
								{
									"021db345-0110-dd02-b4a8-ea65778d58ec",
									true,
								},
							},
							gVar = "ACR_TensorWeeb4_Hotbar_Feint",
							uuid = "0074acdb-bd78-fc83-870d-83a47d85b1cc",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- NAUR DSR Mit sheet, P4 Eyes: M1 Feints Steep in Rage.\nreturn AnyoneCore ~= nil and AnyoneCore.Roster ~= nil and AnyoneCore.Roster.mySlot() == \"M1\"",
							dequeueIfLuaFalse = true,
							name = "Roster M1",
							uuid = "c4dd4c78-69b1-9121-a628-a9f1c76ef87a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1195,
							name = "Target missing Feint",
							uuid = "021db345-0110-dd02-b4a8-ea65778d58ec",
							version = 3,
						},
					},
				},
				displayPath = "Mitigation/Feint",
				mechanicTime = 824.7,
				name = "Feint | M1 | P4 Steep in Rage",
				timeRange = true,
				timelineIndex = 133,
				timerEndOffset = -3,
				timerStartOffset = -7,
				uuid = "a0bdb0e3-2930-090f-9f5c-36cfc815dae1",
				version = 2,
			},
		},
	},
	[135] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "b6cda1e5-fd31-6101-07c1-11eb8085fe95",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[DNC] Precast Dance",
				uuid = "ac85ac1d-67c9-1d69-8677-4c232673ca49",
				version = 2,
			},
			inheritedObjectUUID = "f1968d1f-79c7-5552-96aa-3db84495d1a7",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Enable CD",
				uuid = "69aa881f-3abb-4aaa-8e94-8c1f8384b388",
				version = 2,
			},
			inheritedObjectUUID = "5351e82e-26b0-9fa9-a5a2-9e55c472ab39",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "SS Prio",
				uuid = "3ed9bc51-147f-b153-858c-ee82d4c5a182",
				version = 2,
			},
			inheritedObjectUUID = "09c36882-3e59-6270-8e27-fac9d8253e8b",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[NIN] Disable burn",
				uuid = "1da58bdb-e01a-984d-89f9-933af572b2e8",
				version = 2,
			},
			inheritedObjectUUID = "e3c6e3e1-a99b-1996-998e-229b01851fc1",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[MNK] Form Shift",
				uuid = "102fabef-a8c9-e088-87dd-c4104126c4fc",
				version = 2,
			},
			inheritedObjectUUID = "0a6b4953-a313-e209-9f99-fabcbf2e6277",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Disable ninjutsu",
				uuid = "a01b6327-6e2e-1d0d-9b14-1840a15b32b0",
				version = 2,
			},
			inheritedObjectUUID = "cdcd3219-273b-b778-a346-249274092526",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Re-enable ninjutsu",
				uuid = "bdf54c51-0f2d-c2b9-b961-32a2a02af944",
				version = 2,
			},
			inheritedObjectUUID = "c803269e-6e91-a714-ab20-d3672cdbbfbe",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "83ad32d1-0365-49d2-8241-9ada752600c3",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "ac121fb6-bcd9-5ee5-be94-7981ebcaf99d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.dsw_autosim.reanchor(\"int_start\", eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"e0e4da6c-3795-ede2-98ca-d7d7ab5e346d",
									true,
								},
							},
							name = "Apply forecast",
							uuid = "f164ea73-9d4a-df85-84d4-5fb44b9a68b0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local forecast = data.dsw_autosim\nreturn forecast ~= nil and forecast.version == 1 and forecast.match(\"int_start\", eventArgs)",
							dequeueIfLuaFalse = true,
							name = "Charibert targetable",
							uuid = "e0e4da6c-3795-ede2-98ca-d7d7ab5e346d",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				eventType = 26,
				mechanicTime = 900,
				name = "AutoSim | Reanchor Intermission Charibert",
				timeRange = true,
				timelineIndex = 135,
				timerEndOffset = 10,
				timerStartOffset = -5,
				uuid = "9362308c-b28a-ba7b-b233-1a263d254443",
				version = 2,
			},
		},
	},
	[139] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "dc20ce71-2706-7db5-7df6-5607a3d576e1",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[140] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "0b75f639-5e31-6f75-a6cf-ecebb48ffe69",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[144] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "c3bfb705-32d4-59a9-43d3-545f722fa835",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[146] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "4b80fa93-eb64-c0f7-d5b6-1e91a60a1743",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Hold Gauge",
				uuid = "e608e97c-350c-25ba-94c9-1b3aba12c4c6",
				version = 2,
			},
			inheritedObjectUUID = "37cd67b8-ead2-bf13-ab6e-fcc6c13fbce5",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Stop holding",
				uuid = "4c9b4cbc-1424-913b-ad67-a8e099f78d89",
				version = 2,
			},
			inheritedObjectUUID = "131ef6e9-b55e-a936-9ba0-b3b6f9f13f5c",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Feint",
				uuid = "6ad54bb5-4ea7-59e2-91ce-f71dc7dafb86",
				version = 2,
			},
			inheritedObjectUUID = "52df245b-5482-d531-a57c-0039de6d8522",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "5ab98a3f-bc67-38bb-ac9a-6f661ea8a577",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "ae4e79c7-7222-8500-9c91-3031b629740d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.dsw_autosim.reanchor(\"spear_up\", eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"a0cfaeda-23dc-441e-a624-92f24b80721e",
									true,
								},
							},
							name = "Apply forecast",
							uuid = "42d94aec-4284-f6af-90bf-90a787e8bad3",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local forecast = data.dsw_autosim\nreturn forecast ~= nil and forecast.version == 1 and forecast.match(\"spear_up\", eventArgs)",
							dequeueIfLuaFalse = true,
							name = "Spear targetable",
							uuid = "a0cfaeda-23dc-441e-a624-92f24b80721e",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				eventType = 26,
				mechanicTime = 935.9,
				name = "AutoSim | Reanchor Intermission Spear",
				timeRange = true,
				timelineIndex = 146,
				timerEndOffset = 10,
				timerStartOffset = -5,
				uuid = "bf7027c6-404c-9d6b-9c3a-a450c2d36c5d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Mitigation",
				uuid = "ab533629-bee8-4818-b5b9-d44bd13ffedb",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mitigation",
				name = "Feint",
				uuid = "ba718971-cd49-2ca3-99a5-f468692839e8",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"b7fd44de-0729-d173-be77-b8645fa14e30",
									true,
								},
								
								{
									"1122a1e2-5363-49de-9ec0-aa1c4a372249",
									true,
								},
							},
							gVar = "ACR_TensorWeeb4_Hotbar_Feint",
							uuid = "7408c413-a1bf-b5fe-b543-dbb2dc89c06d",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- NAUR DSR Mit sheet, Rewind: M2 Feints Pure of Heart. Start time copied from Anyone's Feint here.\nreturn AnyoneCore ~= nil and AnyoneCore.Roster ~= nil and AnyoneCore.Roster.mySlot() == \"M2\"",
							dequeueIfLuaFalse = true,
							name = "Roster M2",
							uuid = "b7fd44de-0729-d173-be77-b8645fa14e30",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1195,
							name = "Target missing Feint",
							uuid = "1122a1e2-5363-49de-9ec0-aa1c4a372249",
							version = 3,
						},
					},
				},
				displayPath = "Mitigation/Feint",
				mechanicTime = 935.9,
				name = "Feint | M2 | Rewind Pure of Heart",
				timeRange = true,
				timelineIndex = 146,
				timerEndOffset = -6,
				timerStartOffset = -10,
				uuid = "b7d48671-4ec3-780d-b8eb-e40a9be12ccf",
				version = 2,
			},
		},
	},
	[148] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "91991e91-d03c-5ead-8f9d-fa93485a8b81",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[DNC] Precast Dance",
				uuid = "a8e734a3-de8f-f59b-bef4-390c466cead1",
				version = 2,
			},
			inheritedObjectUUID = "3d6d4377-e3c8-f4f5-b54d-5c3d69a6bf98",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Disable Standard",
				uuid = "96b6a691-8ec9-810f-9115-7880a1450c8c",
				version = 2,
			},
			inheritedObjectUUID = "4d005d5f-5100-4cd9-a96e-af04c73ec5ed",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[NIN] Armor Crush",
				uuid = "9c021b1c-6896-3fed-908e-9014884e6a77",
				version = 2,
			},
			inheritedObjectUUID = "a6c45929-c290-18ab-bd5e-31ffc6e26a8a",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[MCH] Hold HC again (hp)",
				uuid = "d882b6cb-b344-98c5-9f11-b663ab325075",
				version = 2,
			},
			inheritedObjectUUID = "27697ace-1aa9-139d-a02f-3f9a342af2a5",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[MCH] Hold HC again (timer)",
				uuid = "9cd8d8d0-0f6b-bd0f-a9ad-c61ae4f5b082",
				version = 2,
			},
			inheritedObjectUUID = "3a6722af-5fb8-b431-82cb-01553f48ad7d",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "46c6f238-5b08-b9f6-b501-ec3af60d7642",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "02f4c070-7616-13e9-8852-0b0b0a204f3a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.dsw_autosim.reanchor(\"spear_down\", eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"cd4e1cf5-c4dd-5c03-ae1a-242172c2c018",
									true,
								},
							},
							name = "Apply forecast",
							uuid = "94ffb9f6-c33b-42b8-8e84-7622abdbead2",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local forecast = data.dsw_autosim\nreturn forecast ~= nil and forecast.version == 1 and forecast.match(\"spear_down\", eventArgs)",
							dequeueIfLuaFalse = true,
							name = "Spear untargetable",
							uuid = "cd4e1cf5-c4dd-5c03-ae1a-242172c2c018",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				eventType = 26,
				mechanicTime = 951.5,
				name = "AutoSim | Reanchor Intermission Spear killed",
				timeRange = true,
				timelineIndex = 148,
				timerEndOffset = 12,
				timerStartOffset = -12,
				uuid = "71320124-2e9a-b3c4-9aec-222f00c3ed59",
				version = 2,
			},
		},
	},
	[150] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "517718d6-0a2d-4f52-8ab9-f168ba89b146",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[DNC] Precast Dance",
				uuid = "6606ca8d-354d-c61f-a23b-317feae4241a",
				version = 2,
			},
			inheritedObjectUUID = "945f7ae6-e110-8c5c-b06b-dc64dcdb1206",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[NIN] Precast Mudra",
				uuid = "22de6365-efe2-f687-804d-6d3e6d94c902",
				version = 2,
			},
			inheritedObjectUUID = "26f0e7e0-c297-ab7d-bff6-0012e81419c8",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[MCH] Precast Queen",
				uuid = "e38db782-6b82-5f31-a050-6707cb144c80",
				version = 2,
			},
			inheritedObjectUUID = "e87adeaa-3aea-660a-b37f-c9d3efda1d66",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Enable CD",
				uuid = "18efa502-6c12-2b02-af6c-1ce3d777f5ce",
				version = 2,
			},
			inheritedObjectUUID = "901f7658-21e4-e337-8494-107086e34613",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Disable Pots",
				uuid = "87f8bd62-c876-bd5b-afe2-5a04f5979de1",
				version = 2,
			},
			inheritedObjectUUID = "c8f600a5-b15b-3031-bb8f-3b08c9fedcf9",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[MNK] Form Shift",
				uuid = "107b9142-590d-24e0-b09a-577443e133c1",
				version = 2,
			},
			inheritedObjectUUID = "1b26353c-030b-3f32-9eac-b2bee09f8251",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Enable DoTs before 996s",
				uuid = "855b2c77-5c05-cc50-9c33-839eb0564f95",
				version = 2,
			},
			inheritedObjectUUID = "e6d00fed-d30c-6465-803f-c303925c6d8a",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "6f5ef873-2bb0-9072-8f2c-731640761bd6",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "3361dd51-a68d-6e09-90c8-e11bf1f7c574",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.dsw_autosim.reanchor(\"p5_start\", eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"2469b2e8-5563-f35b-8b3c-bd149f436af6",
									true,
								},
							},
							name = "Apply forecast",
							uuid = "0d1e0798-1d05-b091-ba16-2fbe34b46022",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local forecast = data.dsw_autosim\nreturn forecast ~= nil and forecast.version == 1 and forecast.match(\"p5_start\", eventArgs)",
							dequeueIfLuaFalse = true,
							name = "Thordan targetable",
							uuid = "2469b2e8-5563-f35b-8b3c-bd149f436af6",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				eventType = 26,
				mechanicTime = 996,
				name = "AutoSim | Reanchor P5 start",
				timeRange = true,
				timelineIndex = 150,
				timerEndOffset = 10,
				timerStartOffset = -10,
				uuid = "2860180a-4a14-615f-97c5-65c1fd205760",
				version = 2,
			},
		},
	},
	[155] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "dbf1c303-0d04-f0e7-74d1-e42d52dbadb3",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[BRD] Refresh DoTs",
				uuid = "25d320ce-d7e9-1b5c-85b8-ba204da46a3b",
				version = 2,
			},
			inheritedObjectUUID = "76ee1f91-f8d6-5ee1-be38-60a5d9b2bbe7",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[NIN] Armor Crush",
				uuid = "99ca2499-cfa9-4e36-90b3-7f38ea689371",
				version = 2,
			},
			inheritedObjectUUID = "f680b35c-07e3-a3f7-8843-3c47fefd625c",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Disable CD",
				uuid = "1430c2fb-32a9-a5b6-8004-a96dbb172aa2",
				version = 2,
			},
			inheritedObjectUUID = "f4df76a6-d6f0-2e71-a620-0d582f236616",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Disable 15s",
				uuid = "a4148451-caab-4bf6-8bd3-4eb17f2188b5",
				version = 2,
			},
			inheritedObjectUUID = "1911c2d9-204b-ad4a-a704-5576bdaf6f29",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Disable 20s",
				uuid = "4c476e77-bd6f-8709-bf9a-928adc839ea5",
				version = 2,
			},
			inheritedObjectUUID = "77678b84-c78b-dc97-a2d2-e3af30b838a9",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Disable DoTs before 1027.9s",
				uuid = "42ced0c7-105c-5eae-91f4-4c8484610985",
				version = 2,
			},
			inheritedObjectUUID = "d6e99326-95af-dae2-ac75-64202955f786",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[156] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "e70608cc-f2d9-a7e0-282a-eb5a05b0493c",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[157] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "bea9f4f5-fd64-1119-2dae-6ddb6387df25",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[160] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "a73bde7f-b65c-107b-5bdb-c6e594d5ecef",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[171] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "95d55995-3120-9911-eb31-dde30caf3c45",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[172] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "bf4f9442-0938-729e-8755-ec2c7c5d6eb2",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[MCH] Precast Queen",
				uuid = "90f4bf0d-8841-bfbf-8a3e-f22d1d0ea046",
				version = 2,
			},
			inheritedObjectUUID = "7b00b3ef-c9b7-c88f-bac8-8e2495ae425e",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[NIN] Precast Mudra",
				uuid = "888e07f8-31b4-cf87-8842-40ae2f914b64",
				version = 2,
			},
			inheritedObjectUUID = "482c7c7c-669d-8ede-ad7d-67eb24c7712e",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[DNC] Precast Dance",
				uuid = "89f2d9f1-b4cd-3fc3-a070-1da4ce9657d3",
				version = 2,
			},
			inheritedObjectUUID = "53b531d3-9023-11cf-bd75-a48433025508",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[MNK] Form Shift",
				uuid = "3ddcc184-8da6-6ca5-92e8-df5d411ec298",
				version = 2,
			},
			inheritedObjectUUID = "afda9ebc-5b76-451c-b587-fc5871ee5cb5",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Enable DoTs before 1051.2s",
				uuid = "bf342b52-be64-00cb-87fc-42a6dc4bece9",
				version = 2,
			},
			inheritedObjectUUID = "06489f50-6aa8-4f5e-aeb4-b30b0dc32dc5",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[174] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "a9567850-0602-d414-11cc-82b6fea2aac0",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Feint",
				uuid = "d0b9c54b-6bbe-7ff8-a335-512db8025785",
				version = 2,
			},
			inheritedObjectUUID = "92b77efb-e8ec-912f-bb21-988c71e7373c",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Mitigation",
				uuid = "f670aff9-26d9-8ba7-9bef-45b27a2a6926",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mitigation",
				name = "Feint",
				uuid = "6f6e5da2-c759-7c3a-9b9f-aa41c41e61fe",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"f061ab94-bede-3d61-81f8-077c322948c8",
									true,
								},
								
								{
									"7a97b978-10c1-6941-9e02-220a9bad0d2a",
									true,
								},
							},
							gVar = "ACR_TensorWeeb4_Hotbar_Feint",
							uuid = "b8e1570e-d12a-7dc3-9159-354cde7cf4ac",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- NAUR DSR Mit sheet, P5 Dark Thordan: M1 Feints the Wrath of the Heavens Ancient Quaga. Window copied from Anyone's Feint here.\nreturn AnyoneCore ~= nil and AnyoneCore.Roster ~= nil and AnyoneCore.Roster.mySlot() == \"M1\"",
							dequeueIfLuaFalse = true,
							name = "Roster M1",
							uuid = "f061ab94-bede-3d61-81f8-077c322948c8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1195,
							name = "Target missing Feint",
							uuid = "7a97b978-10c1-6941-9e02-220a9bad0d2a",
							version = 3,
						},
					},
				},
				displayPath = "Mitigation/Feint",
				mechanicTime = 1057.2,
				name = "Feint | M1 | P5 Ancient Quaga 1",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = -3,
				timerStartOffset = -7,
				uuid = "d4151c28-5f62-65f9-9f1a-b6e8f631d887",
				version = 2,
			},
		},
	},
	[178] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "3a3ea5e4-3994-c200-0460-f4ba163657d4",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Feint",
				uuid = "ceb33ecd-a041-5944-be58-7eb1a9f68fae",
				version = 2,
			},
			inheritedObjectUUID = "8a58fb48-7aaf-6146-8c39-4e319b284b84",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[180] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "55dc7ce5-d6f0-1249-ad3b-287f1f94d995",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[181] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "a060b3fc-0ac0-3cd0-bbdd-4ebef75fea6c",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Disable CD",
				uuid = "21ef00cb-2c0e-f22d-9bfc-bd7534760626",
				version = 2,
			},
			inheritedObjectUUID = "a857cbfe-bdea-7d5a-9eeb-f0576a2403dc",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Disable 15s",
				uuid = "7e849b87-34c9-a23c-9523-3cce44b78b0e",
				version = 2,
			},
			inheritedObjectUUID = "1a04e198-dec1-493c-ae87-c003cec3ffb7",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Disable 20s",
				uuid = "64ec8794-6ea4-30c5-8d89-5fc3878f8e15",
				version = 2,
			},
			inheritedObjectUUID = "ce9d4587-c563-5966-8630-da776dc726d7",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Force MB",
				uuid = "2bd71d4c-233c-9890-ba2c-b33f9d0cc9b5",
				version = 2,
			},
			inheritedObjectUUID = "dd5fdd69-75c3-4624-a5e8-dd1353ac9605",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[NIN] Armor Crush",
				uuid = "d31dd26f-9783-97dc-a649-d2eb18533ba8",
				version = 2,
			},
			inheritedObjectUUID = "90d5fe1d-3fa7-1ba7-b8f3-e6159dfc3d38",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[MCH] Overdrive",
				uuid = "dae9e215-a2c0-43a5-b9b3-976f5162d029",
				version = 2,
			},
			inheritedObjectUUID = "fa47ee7b-d915-ed5d-a35d-9d3b33f61712",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Disable DoTs before 1088.2s",
				uuid = "0c23bf1d-eebb-842b-950f-0e0b2ab86e3a",
				version = 2,
			},
			inheritedObjectUUID = "1e5e8677-6ec1-a337-b738-c30cc64e5659",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[186] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "ab9b2c67-b074-d9a3-5118-2a5d4979b997",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[187] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "f1673106-20b9-58c2-e372-a63407c30ff6",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[190] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "a88f1902-8c83-c3a6-739f-b46cac73a772",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[193] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "ea3d0a55-6cdf-bab9-550a-5f234d7f3705",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[194] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "0bcd38b6-841d-ebf2-af55-c250b4d97f26",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Precast Dance",
				uuid = "53689edf-e928-ab23-9b6b-3d0ee380f9ee",
				version = 2,
			},
			inheritedObjectUUID = "4af9ca60-4592-cf05-9619-793cc12ab7eb",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Precast flourish",
				uuid = "49d7d01c-dfbf-b0ff-a9d3-ca066b3d0c53",
				version = 2,
			},
			inheritedObjectUUID = "396f92c0-a0c7-a73f-a334-6f31c8b32925",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Hold chainsaw so it isn't 1st gcd",
				uuid = "9ad5abba-117c-885e-9041-4a7462eb44ef",
				version = 2,
			},
			inheritedObjectUUID = "acdfc235-a8d6-a1eb-a9ce-20dd67b2a30d",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Disable Hold",
				uuid = "bbbe9142-6b67-f84c-89bf-32286a781549",
				version = 2,
			},
			inheritedObjectUUID = "11827153-5b06-748d-b95b-1345f30e51bb",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[SAM] Precast Meikyo",
				uuid = "56d92a57-255b-e928-8925-61956e7dfc9a",
				version = 2,
			},
			inheritedObjectUUID = "36f210f8-d2ae-4775-a6f6-ca6643fe95a6",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[NIN] Precast Mudra",
				uuid = "8d0be772-0bde-8740-9a4c-d881ffb488ef",
				version = 2,
			},
			inheritedObjectUUID = "aaaa5136-d7b8-ae0d-a799-729a43ee0d3f",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[NIN] Force Trick 1st gcd",
				uuid = "bb844a0f-cc89-f711-be8e-aefdb3260479",
				version = 2,
			},
			inheritedObjectUUID = "39517bc1-071c-f3f4-a893-666213ded2e5",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Disable Queen",
				uuid = "497e90e1-bf26-a02a-801a-6fcff6ff4a7c",
				version = 2,
			},
			inheritedObjectUUID = "80a2ae05-2a4b-da5d-aa59-265fb8104af0",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[MNK] Form Shift",
				uuid = "1311230f-4045-e3d5-b522-58675c0e880a",
				version = 2,
			},
			inheritedObjectUUID = "af2e1a39-7d6c-7af6-b0e4-76c87059c3d8",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "7c69e7bd-d6ec-d5c9-8f9f-880a0933367f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Slots",
				uuid = "d5adfdd5-5675-2bf7-a53c-cfd33d2738e3",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
				},
				conditions = 
				{
				},
				displayPath = "AutoSim/Slots",
				execute = "-- User: during the Meteor Circles slot 0 is the player's current target, no other slots, no DoTs\n-- (meteors are DoT-blacklisted in the baseline). Thordan's return pins slot 0 back.\nlocal forecast = data.dsw_autosim\nif forecast == nil or forecast.version ~= 1 or forecast.fight ~= \"p2\" or forecast.done.p5_return then return end\nlocal tid = TensorCore.mGetPlayer().targetid\nif tid == nil or tid == 0 or tid == forecast.slot0 then return end\nlocal target = TensorCore.mGetEntity(tid)\nif target == nil or target.contentid ~= 4386 or not target.alive then return end\nlocal acr = TensorCore.API.TensorACR\nacr.setAutoSimTarget(0, tid)\nacr.clearAutoSimTarget(1)\nforecast.slot0 = tid",
				executeType = 2,
				mechanicTime = 1120.2,
				name = "AutoSim | P5 meteor slot 0",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 194,
				timerEndOffset = 25,
				timerStartOffset = -2,
				uuid = "019fdcfe-d957-dade-ad37-ffb92eee4bcc",
				version = 2,
			},
		},
	},
	[196] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "012d1410-3c37-3f9c-8402-d9f623ccc780",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Feint",
				uuid = "5d4d3fac-00b5-ccd9-acf6-28f4dbd08231",
				version = 2,
			},
			inheritedObjectUUID = "376cb400-4c67-e2c6-aff9-f9374967d511",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Enable Queen",
				uuid = "e0d09f2c-9063-c220-91c9-2b223b9d3a19",
				version = 2,
			},
			inheritedObjectUUID = "07dfb046-7646-b918-a02a-e89ee7119627",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Disable songs if in AP",
				uuid = "7474f91d-8115-50dc-8263-1feb2d636f6a",
				version = 2,
			},
			inheritedObjectUUID = "d79bcef4-6408-f172-a5f8-d0681a6f3d85",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "a4f75823-40bc-937b-a160-21d0b67219f1",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "251f835d-c810-d049-9f90-205b85030c6c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.dsw_autosim.reanchor(\"p5_return\", eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"30115d7d-f0fd-1e7f-8e40-84005f25e349",
									true,
								},
							},
							name = "Apply forecast",
							uuid = "ab80fcdb-ca07-19bb-a9c6-4c933b57427f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local forecast = data.dsw_autosim\nreturn forecast ~= nil and forecast.version == 1 and forecast.match(\"p5_return\", eventArgs)",
							dequeueIfLuaFalse = true,
							name = "Thordan back after meteors",
							uuid = "30115d7d-f0fd-1e7f-8e40-84005f25e349",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				eventType = 26,
				mechanicTime = 1142.2,
				name = "AutoSim | Reanchor P5 Thordan returns",
				timeRange = true,
				timelineIndex = 196,
				timerEndOffset = 10,
				timerStartOffset = -15,
				uuid = "cf490f15-05f0-141c-b3dd-f5596f6a1db7",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Mitigation",
				uuid = "a5d3fc4e-f72f-daca-994c-36a0895d5f13",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mitigation",
				name = "Feint",
				uuid = "3dcb2e5c-c27b-dd1e-b393-1957575ed029",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"b310beed-d556-665e-9cf8-5396aa240428",
									true,
								},
								
								{
									"483d81d5-710d-5fab-8070-524cfbca6e79",
									true,
								},
							},
							gVar = "ACR_TensorWeeb4_Hotbar_Feint",
							uuid = "3d7d6ebb-8281-a985-b8c5-85a6595f6063",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- NAUR DSR Mit sheet, P5 Dark Thordan: M2 Feints the Death of the Heavens Ancient Quaga.\nreturn AnyoneCore ~= nil and AnyoneCore.Roster ~= nil and AnyoneCore.Roster.mySlot() == \"M2\"",
							dequeueIfLuaFalse = true,
							name = "Roster M2",
							uuid = "b310beed-d556-665e-9cf8-5396aa240428",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1195,
							name = "Target missing Feint",
							uuid = "483d81d5-710d-5fab-8070-524cfbca6e79",
							version = 3,
						},
					},
				},
				displayPath = "Mitigation/Feint",
				mechanicTime = 1142.2,
				name = "Feint | M2 | P5 Ancient Quaga 2",
				timeRange = true,
				timelineIndex = 196,
				timerEndOffset = -3,
				timerStartOffset = -7,
				uuid = "36697812-7621-9023-8f16-e3c9b135f118",
				version = 2,
			},
		},
	},
	[197] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Mitigation",
				uuid = "00f39e17-00b1-56e1-9704-05a79d5a24dd",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mitigation",
				name = "Feint",
				uuid = "0c6339c2-d230-ecd0-a59d-c6668a222080",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a1b57e4b-7dc5-0f5d-a610-158dcc87d292",
									true,
								},
								
								{
									"9a665720-719a-8011-947f-cd3038b6044d",
									true,
								},
							},
							gVar = "ACR_TensorWeeb4_Hotbar_Feint",
							uuid = "fbbbad09-cdae-9da4-b2b0-8a8747ee8dce",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- NAUR DSR Mit sheet, P5 Dark Thordan: M1 Feints the second Heavenly Heel, late in the castbar.\nreturn AnyoneCore ~= nil and AnyoneCore.Roster ~= nil and AnyoneCore.Roster.mySlot() == \"M1\"",
							dequeueIfLuaFalse = true,
							name = "Roster M1",
							uuid = "a1b57e4b-7dc5-0f5d-a610-158dcc87d292",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1195,
							name = "Target missing Feint",
							uuid = "9a665720-719a-8011-947f-cd3038b6044d",
							version = 3,
						},
					},
				},
				displayPath = "Mitigation/Feint",
				mechanicTime = 1158.4,
				name = "Feint | M1 | P5 Heavenly Heel 2",
				timeRange = true,
				timelineIndex = 197,
				timerEndOffset = -0.5,
				timerStartOffset = -3,
				uuid = "3df34a07-61bb-348f-8c6e-4efd5192a4af",
				version = 2,
			},
		},
	},
	[198] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "10bf7bd2-226e-9db7-9cd1-8f035ef13850",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "33d59f50-1a3a-38d5-a0a1-0da106b8d596",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.dsw_autosim.reanchor(\"p5_end\", eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"dc503529-2347-0f1a-9204-b857cc0c0099",
									true,
								},
							},
							name = "Apply forecast",
							uuid = "24425f9c-06fd-364a-8312-36a56d15f7d8",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local forecast = data.dsw_autosim\nreturn forecast ~= nil and forecast.version == 1 and forecast.match(\"p5_end\", eventArgs)",
							dequeueIfLuaFalse = true,
							name = "Thordan pushed",
							uuid = "dc503529-2347-0f1a-9204-b857cc0c0099",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				eventType = 26,
				mechanicTime = 1161.6,
				name = "AutoSim | Reanchor P5 end",
				timeRange = true,
				timelineIndex = 198,
				timerEndOffset = 50,
				timerStartOffset = -15,
				uuid = "8b2b81fe-ce2e-05c4-b4aa-e7622b91fd17",
				version = 2,
			},
		},
	},
	[200] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "85ee91c2-2d5e-8f76-a5ba-ceb842fc6c32",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Feint",
				uuid = "78b6c8b8-6241-de7f-8da7-d2c493b04f95",
				version = 2,
			},
			inheritedObjectUUID = "6de142fb-8d52-d718-b05a-f7d7b16736aa",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[201] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "15aa12a3-6f15-3917-1427-7051eafb0e53",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Disable CD",
				uuid = "83d84748-6774-117a-b1f1-ccd42c5bc071",
				version = 2,
			},
			inheritedObjectUUID = "ecc2a899-f7e1-d241-bf78-cb103ca06fcb",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[NIN] Armor Crush",
				uuid = "102e0043-0634-66ed-940b-f05a7c450a51",
				version = 2,
			},
			inheritedObjectUUID = "99c1b094-89ea-ee7f-a8bc-82c1b2e2a2c5",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Disable 20s",
				uuid = "6893f9dd-5022-00e1-b251-63bdaaa7f58e",
				version = 2,
			},
			inheritedObjectUUID = "66c56af6-16eb-3db2-a3e6-b46dd9f59820",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Disable 15s",
				uuid = "34139184-5e2a-4ad3-b805-90cc6c61426c",
				version = 2,
			},
			inheritedObjectUUID = "fb619610-f420-11b1-911e-99ac59c05bde",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[203] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "5c745715-24e1-4d49-5b61-c01fd34e39c5",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Enable CD",
				uuid = "15e6fa5a-a61f-befa-8fb8-7f6d5c24d450",
				version = 2,
			},
			inheritedObjectUUID = "e895bb16-1de4-ab47-9108-397b1c28b20d",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[NIN] Precast Mudra",
				uuid = "aa167794-2051-51d3-851f-830afd9a0494",
				version = 2,
			},
			inheritedObjectUUID = "bdde8b68-457d-5945-acf8-a16af77b0f49",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[DNC] Precast Dance",
				uuid = "adb5a805-bf12-e27a-a9a3-fdee6105229d",
				version = 2,
			},
			inheritedObjectUUID = "94bcd353-a545-6dd6-a58d-2eb3dc840333",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[MCH] Precast Queen",
				uuid = "0359904e-8f43-6c19-bc20-da40bb7d806c",
				version = 2,
			},
			inheritedObjectUUID = "8034508b-5794-9ac1-9918-72adb8a2cac7",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[MNK] Form Shift",
				uuid = "4a18678d-185a-c642-8e4f-1520241bec72",
				version = 2,
			},
			inheritedObjectUUID = "8414eed2-b1da-5c6c-af2f-46a820ac8900",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[rDPS] Precast Potion",
				uuid = "7c93c3fb-3d73-eb96-a2d4-90fc25303afa",
				version = 2,
			},
			inheritedObjectUUID = "6430f911-1f3f-41e4-a330-c08d1945816f",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Enable DoTs before 1217.6s",
				uuid = "50c210d4-5612-e370-8c15-0d882c73851e",
				version = 2,
			},
			inheritedObjectUUID = "40a42fc9-7157-f403-b15f-c3d175c571ef",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "d5997d4b-b96c-ac8d-8cf3-7991905c89b7",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Slots",
				uuid = "4e3f3e58-b4c9-b9fb-b073-bfe3e9c75c9c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
				},
				conditions = 
				{
				},
				displayPath = "AutoSim/Slots",
				execute = "-- User (2026-11-02): slot 0 = this player's party group's dragon (Group 1 Nidhogg, Group 2\n-- Hraesvelgr, AnyoneCore roster), slot 1 = the other; slot 0 moves to the other dragon while the\n-- group's dragon is away. Until the first dragon dies. Without a roster seat, slot 0 follows the\n-- player's target (AS-015). Body: forecast.assignP6 in the baseline.\nlocal forecast = data.dsw_autosim\nif forecast == nil or forecast.version ~= 1 then return end\nforecast.assignP6()",
				executeType = 2,
				mechanicTime = 1217.6,
				name = "AutoSim | P6 slots by group",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 203,
				timerEndOffset = 200,
				timerStartOffset = -1,
				uuid = "3ca304f4-f32f-ea05-8a0d-558cadddea37",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "f2ca93e6-6854-6902-a9d5-819015cfeef5",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.dsw_autosim.reanchor(\"p6_start\", eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"6bd701c7-3382-5728-97f5-eddf79867e1c",
									true,
								},
							},
							name = "Apply forecast",
							uuid = "a953204d-b2c2-3b38-92fd-a9b5260066a5",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local forecast = data.dsw_autosim\nreturn forecast ~= nil and forecast.version == 1 and forecast.match(\"p6_start\", eventArgs)",
							dequeueIfLuaFalse = true,
							name = "Dragons targetable",
							uuid = "6bd701c7-3382-5728-97f5-eddf79867e1c",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				eventType = 26,
				mechanicTime = 1217.6,
				name = "AutoSim | Reanchor P6 start",
				timeRange = true,
				timelineIndex = 203,
				timerEndOffset = 10,
				timerStartOffset = -10,
				uuid = "94866dff-710f-bbd4-89db-c22dced6c0d4",
				version = 2,
			},
		},
	},
	[204] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "44a28d76-6eaa-93c2-4986-d154928acce6",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[205] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "86593717-fe66-14a3-e7aa-327d3d4aefc7",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "1ce00eb8-9836-3b83-a569-dbf26994ef47",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
				},
				conditions = 
				{
				},
				displayPath = "AutoSim",
				execute = "-- Pyretic Stun forecast (user 2026-10-29), second Wyrmsbreath only (user: the first has no fire).\n-- Runs timeline 1350.1-1385.1. Nidhogg's fire breath gives some players Boiling (2898) at timeline\n-- 1357.0 (user logs n=23). When Boiling ends it becomes Pyretic (960), and acting while Pyretic is up\n-- deals heavy damage, so the player stops.\n-- Durations are FFLogs (enc 1076, 56 Boiling debuffs from execution samples): Boiling 10.95-11.0s,\n-- Pyretic 2.32-2.51s. The user's logs record Boiling but never Pyretic.\n-- Anyone's \"Stop if fire\" stops all actions at Boiling <= 2.5s left, so the Stun starts there and\n-- ends at Pyretic's longest duration. Times come from the live Boiling timer, not the schedule.\nlocal forecast = data.dsw_autosim\nif forecast == nil or forecast.version ~= 1 or forecast.fight ~= \"p2\" then return end\nlocal api = TensorCore.API.TensorACR\n-- forecast.apply clears every Stun phase on a reanchor; put this one back after it.\nif not forecast.pyreticWrapped then\n    local apply = forecast.apply\n    forecast.apply = function(anchor, actual)\n        apply(anchor, actual)\n        local s = forecast.pyreticStun\n        if s then api.addAutoSimPhase(\"Stun\", s[1], s[2]) end\n    end\n    forecast.pyreticWrapped = true\nend\nlocal boiling = TensorCore.getBuff(TensorCore.mGetPlayer(), 2898)\nif boiling == nil then return end\nlocal now = api.getAutoSimTime()\nlocal expiry = now + boiling.duration\nlocal s = forecast.pyreticStun\n-- Already forecast for this Boiling.\nif s and math.abs(s[3] - expiry) < 1 then return end\nlocal start = math.max(now, expiry - 2.5)\nforecast.pyreticStun = {start, expiry + 2.51, expiry}\napi.addAutoSimPhase(\"Stun\", start, expiry + 2.51)",
				executeType = 2,
				mechanicTime = 1235.1,
				name = "AutoSim | P6 Pyretic stun",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 205,
				timerEndOffset = 150,
				timerStartOffset = 115,
				uuid = "2cdbff6c-1c2f-e935-81ac-b263e518d3a5",
				version = 2,
			},
		},
	},
	[206] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "6ff575d0-1cfb-69ec-5e81-0c2ac541a840",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[207] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "3c254b49-4530-5915-17c5-03ab29a300f9",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[208] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "96d24b7a-2954-d86e-31f3-2440f1cf902a",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Disable Bio",
				uuid = "8dee1af5-0f23-41b8-952b-e8ba7f570d44",
				version = 2,
			},
			inheritedObjectUUID = "c7272790-b1c9-c2bf-871e-b516f369662c",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[209] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "dd73937b-4d34-912f-9654-7cf9ab1387ab",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[211] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "80ad7cbc-d17e-3a20-e1d2-bcbaf816382c",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[212] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "cdd8e133-1626-0f27-7556-f70d5bf229e3",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[213] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "9a1bda92-1e42-e6c6-e7d5-dba41f4eaf02",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[214] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "96b90c59-c741-14a5-c826-666f25532189",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[215] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "e8c23820-6969-7ebc-b0a8-a5ae77ecaa10",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[216] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "2d6a0d27-b694-e333-aaf8-45a185a39057",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[218] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "11b7dddd-651c-a731-c8a3-a5e308a57b0d",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Feint",
				uuid = "f8156ddd-2a66-9ec4-9065-8b7d024414a8",
				version = 2,
			},
			inheritedObjectUUID = "b869d5a9-3b32-2a57-a8bc-483f3b23363d",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Enable Bio",
				uuid = "55c9ecfa-43af-f6b6-9e52-58555721342d",
				version = 2,
			},
			inheritedObjectUUID = "ba49e951-9d28-050e-84fe-1905b07cfc55",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Mitigation",
				uuid = "31713b16-6c67-feb6-a658-5a632308fd4b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mitigation",
				name = "Feint",
				uuid = "9f23ace9-0edb-59bd-ac55-d51a3d44789a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"9b1a3896-dbe4-22f1-b55e-270877334e76",
									true,
								},
								
								{
									"da8fba95-5007-8c3f-bf94-f955e7817733",
									true,
								},
							},
							gVar = "ACR_TensorWeeb4_Hotbar_Feint",
							uuid = "d07b62a7-d865-c535-a321-791b3ea56f2a",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- NAUR DSR Mit sheet, P6: M2 Feints the Wroth Flames sequence (Akh Morn 1293.5-1298.4). Start time copied from Anyone's Feint here.\nreturn AnyoneCore ~= nil and AnyoneCore.Roster ~= nil and AnyoneCore.Roster.mySlot() == \"M2\"",
							dequeueIfLuaFalse = true,
							name = "Roster M2",
							uuid = "9b1a3896-dbe4-22f1-b55e-270877334e76",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1195,
							name = "Target missing Feint",
							uuid = "da8fba95-5007-8c3f-bf94-f955e7817733",
							version = 3,
						},
					},
				},
				displayPath = "Mitigation/Feint",
				mechanicTime = 1298.4,
				name = "Feint | M2 | P6 Wroth Flames",
				timeRange = true,
				timelineIndex = 218,
				timerEndOffset = -6,
				timerStartOffset = -10,
				uuid = "181a9102-d5fb-928f-a7b3-89c8e892888d",
				version = 2,
			},
		},
	},
	[219] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "a41259b4-c465-3d98-8c00-2b027b245fa4",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[220] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "d517a228-ee5f-528c-526f-2092b1a364d8",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[222] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "2b44e88e-f15f-5a62-3900-c2bcdaf7e87e",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[223] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "6365facf-09c3-4cc3-96d8-58a525915c3f",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[226] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "0965fa1a-77ea-5b96-a115-7e206421edca",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[228] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Mitigation",
				uuid = "6b742de3-5d4e-2f58-8f21-e1d17e00dc50",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mitigation",
				name = "Feint",
				uuid = "4e5d393f-f4bc-7b53-9c34-ba94938ecd70",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"7368334a-43c0-9916-995a-63fbc1533ca7",
									true,
								},
								
								{
									"aff7d902-f598-ed97-8f80-f1c00d9da1ae",
									true,
								},
							},
							gVar = "ACR_TensorWeeb4_Hotbar_Feint",
							uuid = "9e19502b-2cba-f074-a6b1-659935f3cfc6",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- NAUR DSR Mit sheet, P6: optional M1 Feint on Hraesvelgr's Hallowed Wings 2 (user 2026-10-31: yes).\nreturn AnyoneCore ~= nil and AnyoneCore.Roster ~= nil and AnyoneCore.Roster.mySlot() == \"M1\"",
							dequeueIfLuaFalse = true,
							name = "Roster M1",
							uuid = "7368334a-43c0-9916-995a-63fbc1533ca7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1195,
							name = "Target missing Feint",
							uuid = "aff7d902-f598-ed97-8f80-f1c00d9da1ae",
							version = 3,
						},
					},
				},
				displayPath = "Mitigation/Feint",
				mechanicTime = 1337,
				name = "Feint | M1 | P6 Hallowed Wings 2",
				timeRange = true,
				timelineIndex = 228,
				timerEndOffset = -3,
				timerStartOffset = -7,
				uuid = "8576ae87-265d-561c-93cb-3c4b3c115b15",
				version = 2,
			},
		},
	},
	[229] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "2f8d31e9-6577-32ed-f14b-f70b12b9e299",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Force Queen",
				uuid = "79fa90cf-02d3-82d3-9dd6-a4c7d94cab12",
				version = 2,
			},
			inheritedObjectUUID = "63d517ef-600a-2e28-89dc-c72fb811c8b1",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[230] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "5f71bdab-8bca-7c1f-a580-21b59e6eb9db",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[232] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "2f56ec7d-4490-2c51-d95a-90c3e592302d",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Disable CD",
				uuid = "203f3756-4caf-b718-8d38-1c62c08bca0d",
				version = 2,
			},
			inheritedObjectUUID = "ce60a460-6d94-6428-893f-e4b687f8448d",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Disable 15s",
				uuid = "4440dca0-6ed7-6f20-80e1-4c67bfaf4d49",
				version = 2,
			},
			inheritedObjectUUID = "e115c696-2892-3fd2-9530-02a92a54490d",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Disable 20s",
				uuid = "1a04b563-f153-32cb-baa1-a2961009748f",
				version = 2,
			},
			inheritedObjectUUID = "43be994b-fbc6-13da-b1a0-6b853115a63e",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[NIN] Avoid ninki cap",
				uuid = "1a3582ba-bdfd-4628-b98c-4c0bfe950ba8",
				version = 2,
			},
			inheritedObjectUUID = "f2a97044-7e5f-8e6d-b1d6-840698a2b60d",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Disable Scattergun",
				uuid = "3fb27c9f-c7a6-d97f-a497-117980352750",
				version = 2,
			},
			inheritedObjectUUID = "41e33cbe-b431-92b0-973b-eddefad0bd41",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[233] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "91338b54-d623-8ab8-c0f6-9e62fc1ca6c4",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Disable Hypercharge",
				uuid = "4a9c212d-f61a-8f91-b56e-4f5f0daf3188",
				version = 2,
			},
			inheritedObjectUUID = "99c4d18d-9de8-be9e-82ca-d23aba47281f",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Disable Queen",
				uuid = "2f65dca0-c21d-bbd3-8fdd-fa223eb647b9",
				version = 2,
			},
			inheritedObjectUUID = "b81ad959-59f5-0f96-bbc5-01a7cda4418c",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[NIN] Armor Crush",
				uuid = "b085ddc4-c33d-74c3-903b-358712d75225",
				version = 2,
			},
			inheritedObjectUUID = "ce8c61df-0197-56e6-8c09-7944404e8f63",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[234] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "a30e7a1f-482d-bfab-e7e0-77e99fb8430f",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[235] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "133b1ade-8ee9-c82a-159f-fff0a85db4ce",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Enable CDs",
				uuid = "0d9fdedd-c2d5-786d-953a-c8946b2b3dc6",
				version = 2,
			},
			inheritedObjectUUID = "d8c964bf-dbc9-00fa-9510-52bf502e3f10",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[NIN] Precast Mudra",
				uuid = "62dbf4fa-c311-bf86-b92b-b44d80dde2f3",
				version = 2,
			},
			inheritedObjectUUID = "402ba1bf-c938-b022-826e-26b6eed24b62",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[DNC] Precast Dance",
				uuid = "4dc8a823-af4a-0690-ad4d-89d21de242ed",
				version = 2,
			},
			inheritedObjectUUID = "9a3cbf9e-a50a-1600-b893-d892d4be1eb0",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[MCH] Precast Reassemble",
				uuid = "cfc24214-49cd-b0ca-84a3-bb20c4f83499",
				version = 2,
			},
			inheritedObjectUUID = "65724180-6d35-70c0-a497-afddf26fc708",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Disable Bio",
				uuid = "f3488d0b-d6f4-0531-9c3f-426ead39d0e7",
				version = 2,
			},
			inheritedObjectUUID = "f0cbc0f4-dc44-f575-912d-76d5feb17c8c",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[NIN] Disable burn",
				uuid = "42625f00-cb97-1863-8a15-d041c88ebef7",
				version = 2,
			},
			inheritedObjectUUID = "b84adfa4-11f5-8547-a61d-634ddebf7f99",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Disable CD",
				uuid = "ae297ea2-59ae-8a86-8384-7bad2ff8ca0a",
				version = 2,
			},
			inheritedObjectUUID = "5eafd0bf-dc41-e257-a066-21fa2c9af02d",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Force MB",
				uuid = "ff948d83-2dbb-8bf7-a57f-d9074899989a",
				version = 2,
			},
			inheritedObjectUUID = "60c14577-bf43-4872-9208-65b149aa0165",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "b25226fd-9b7b-e79e-ad2a-39fdf8a6ba5d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "74c20647-0562-334c-a191-6ea6c3a95b2e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.dsw_autosim.reanchor(\"p6_first\", eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"630ef1a0-b7f5-1807-a9b2-c655f61fe327",
									true,
								},
							},
							name = "Apply forecast",
							uuid = "d7964845-0178-3141-9ac7-bbf5252563b7",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local forecast = data.dsw_autosim\nreturn forecast ~= nil and forecast.version == 1 and forecast.match(\"p6_first\", eventArgs)",
							dequeueIfLuaFalse = true,
							name = "First dragon dies",
							uuid = "630ef1a0-b7f5-1807-a9b2-c655f61fe327",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				eventType = 26,
				mechanicTime = 1375.1,
				name = "AutoSim | Reanchor P6 first dragon death",
				timeRange = true,
				timelineIndex = 235,
				timerEndOffset = 40,
				timerStartOffset = -2,
				uuid = "fb39154a-f73a-22ac-b8ac-148274b0feec",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.dsw_autosim.reanchor(\"p6_end\", eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"bd95c245-cbec-c2c4-8541-d478bf2025e2",
									true,
								},
							},
							name = "Apply forecast",
							uuid = "8a18cc6f-d51b-bb24-b608-fcd817f4f9cf",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local forecast = data.dsw_autosim\nreturn forecast ~= nil and forecast.version == 1 and forecast.match(\"p6_end\", eventArgs)",
							dequeueIfLuaFalse = true,
							name = "Second dragon dies",
							uuid = "bd95c245-cbec-c2c4-8541-d478bf2025e2",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				eventType = 26,
				mechanicTime = 1375.1,
				name = "AutoSim | Reanchor P6 end",
				timeRange = true,
				timelineIndex = 235,
				timerEndOffset = 40,
				timerStartOffset = -2,
				uuid = "ab8ad144-9bea-7905-8c18-246dc8883649",
				version = 2,
			},
		},
	},
	[236] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "5bd42a51-1812-ee7d-b597-7f3754c84841",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[237] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "ed6788b8-79ef-8d54-4781-9f96fb7a3d68",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[239] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "f75aa232-2fa5-04e6-ee5a-9084173373a2",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Improvised finish",
				uuid = "55017f9e-c4ca-613e-b33f-a6f22b811b81",
				version = 2,
			},
			inheritedObjectUUID = "f20ea85a-4743-5b8f-92de-797f3a76f74b",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Improv",
				uuid = "720ec9e8-8687-dfd5-a7cc-2b07fe9bd6d3",
				version = 2,
			},
			inheritedObjectUUID = "2d152a56-ea2c-0b52-b249-aef095cc1ca2",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[242] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "4e58adb8-183e-97a4-668d-d85a5c6b6268",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[243] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "bcc54f51-a5bf-b30d-6c11-5adbb5b96d41",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Enable CD",
				uuid = "ec32eb1a-780a-4ec5-bf0f-21543618493d",
				version = 2,
			},
			inheritedObjectUUID = "a05254dd-c039-0609-8e6e-089c4b27fb93",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[NIN] Huton",
				uuid = "cc099726-0e76-8370-8a3a-3776b5c8dc59",
				version = 2,
			},
			inheritedObjectUUID = "38f2e716-d377-dfae-9ae6-65d7ff2b06b0",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[NIN] Precast Mudra",
				uuid = "a24cb943-bf04-fd51-bc00-0bbc7949fbb3",
				version = 2,
			},
			inheritedObjectUUID = "4ca25e24-82e6-8a0b-9299-5f9849507255",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[DNC] Precast Dance",
				uuid = "685cf21c-baa9-795e-8dab-34b25b801c30",
				version = 2,
			},
			inheritedObjectUUID = "0f034b2a-3b42-0737-a3a9-5b6ceee87510",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[MCH] Precast Queen",
				uuid = "3840a628-e032-cf90-bc6b-54e3d2e863b4",
				version = 2,
			},
			inheritedObjectUUID = "a46b64f1-a699-0a0d-8f80-7aba7e797a58",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[MCH] Flamethrower",
				uuid = "9e43e202-3a4f-65db-9363-11bb56fe50aa",
				version = 2,
			},
			inheritedObjectUUID = "5752256e-579e-f24f-bee6-d9bea05cf84a",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[MNK] Form Shift",
				uuid = "66936358-fe07-780a-9f23-7689c18acf29",
				version = 2,
			},
			inheritedObjectUUID = "dbedcd03-647a-33d7-bfb1-4534195714af",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Enable DoTs before 1542.1s",
				uuid = "5874f39f-c770-6d35-8e7f-5b7b811f5aef",
				version = 2,
			},
			inheritedObjectUUID = "a671cce4-a71d-46c8-917a-39f364cb0cd3",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "08ed2e87-959c-e78d-813a-3041b3ca98f4",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "43698fdf-3cc1-1ea6-8713-f24b6d5519dc",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.dsw_autosim.reanchor(\"p7_start\", eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"535017ff-f8d3-1afa-8684-5abb8da2f779",
									true,
								},
							},
							name = "Apply forecast",
							uuid = "8b040bc6-3461-a765-b998-83d51db55c02",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local forecast = data.dsw_autosim\nreturn forecast ~= nil and forecast.version == 1 and forecast.match(\"p7_start\", eventArgs)",
							dequeueIfLuaFalse = true,
							name = "Dragon-king targetable",
							uuid = "535017ff-f8d3-1afa-8684-5abb8da2f779",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				eventType = 26,
				mechanicTime = 1542.1,
				name = "AutoSim | Reanchor P7 start",
				timeRange = true,
				timelineIndex = 243,
				timerEndOffset = 10,
				timerStartOffset = -10,
				uuid = "5b3f0da7-fa84-6602-8c7f-c4da41922bcf",
				version = 2,
			},
		},
	},
	[244] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "071eeb2a-e111-61ae-c91c-de68f9dc5c5a",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[245] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "c062e2ab-f88f-226f-226a-e941ff5fdedb",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[248] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "a7da27e6-bc68-e702-6985-f5cc674589d6",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Mitigation",
				uuid = "c0882626-fcd7-65e0-b173-3c1e7b4c290e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mitigation",
				name = "Feint",
				uuid = "73c31624-0a74-bbfc-b534-e05bcd096920",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"02f2f3a8-ab65-0633-86de-f5b83bdb2de9",
									true,
								},
								
								{
									"25dc00e6-9987-a31f-b9dd-80645ca81c1c",
									true,
								},
							},
							gVar = "ACR_TensorWeeb4_Hotbar_Feint",
							uuid = "8fb994e8-9531-d699-996a-8e9712e77ee9",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- NAUR DSR Mit sheet, P7: M1 Feints Akh Morn 1, late in the cast so all hits are covered.\nreturn AnyoneCore ~= nil and AnyoneCore.Roster ~= nil and AnyoneCore.Roster.mySlot() == \"M1\"",
							dequeueIfLuaFalse = true,
							name = "Roster M1",
							uuid = "02f2f3a8-ab65-0633-86de-f5b83bdb2de9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1195,
							name = "Target missing Feint",
							uuid = "25dc00e6-9987-a31f-b9dd-80645ca81c1c",
							version = 3,
						},
					},
				},
				displayPath = "Mitigation/Feint",
				mechanicTime = 1573.9,
				name = "Feint | M1 | P7 Akh Morn 1",
				timeRange = true,
				timelineIndex = 248,
				timerEndOffset = -1,
				timerStartOffset = -3,
				uuid = "f5ae53ae-5100-462b-9566-a55f4724e529",
				version = 2,
			},
		},
	},
	[249] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "529a4ac7-f90c-61e3-4129-e1f561abb777",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[251] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "715d6a48-5284-9af4-fcf5-d3767202b4f8",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Hold until after gigaflares",
				uuid = "76f0ff5a-0056-73c6-974e-5781013f6c14",
				version = 2,
			},
			inheritedObjectUUID = "1246a147-41d2-831f-9a0c-b266329199a0",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Shorter hold",
				uuid = "00775c30-b3cc-c326-8b73-838795e54506",
				version = 2,
			},
			inheritedObjectUUID = "7fdc452f-7a96-f998-b119-ddedeeb202a2",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[252] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "70c4456f-5e91-934b-f478-91491584c55f",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Mitigation",
				uuid = "0265ed76-4c47-0ddb-b868-95567054b366",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mitigation",
				name = "Feint",
				uuid = "a04e2b3e-fc42-7ecb-bbb7-d08dfda06da3",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"42ba8b4c-bb6d-ab80-81b7-f4324258e5ef",
									true,
								},
								
								{
									"4f564e27-c573-111c-9e1b-a1933c0a00a6",
									true,
								},
							},
							gVar = "ACR_TensorWeeb4_Hotbar_Feint",
							uuid = "2c09b9c1-97d6-a1c1-a3ac-c8effac41273",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- NAUR DSR Mit sheet, P7: M2 Feints Gigaflare 1, late in the cast so all hits (1600.8-1608.7) are covered.\nreturn AnyoneCore ~= nil and AnyoneCore.Roster ~= nil and AnyoneCore.Roster.mySlot() == \"M2\"",
							dequeueIfLuaFalse = true,
							name = "Roster M2",
							uuid = "42ba8b4c-bb6d-ab80-81b7-f4324258e5ef",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1195,
							name = "Target missing Feint",
							uuid = "4f564e27-c573-111c-9e1b-a1933c0a00a6",
							version = 3,
						},
					},
				},
				displayPath = "Mitigation/Feint",
				mechanicTime = 1600.8,
				name = "Feint | M2 | P7 Gigaflare 1",
				timeRange = true,
				timelineIndex = 252,
				timerEndOffset = -0.5,
				timerStartOffset = -2.5,
				uuid = "db01cc42-a19a-8f73-a0cc-1540b9721707",
				version = 2,
			},
		},
	},
	[253] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "594684ae-013c-25ca-2848-bbd07f7f691e",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[MCH] Disable Reass Hold for pot",
				uuid = "71b4ced1-f93d-80d4-a519-eaa234db199d",
				version = 2,
			},
			inheritedObjectUUID = "6cb0087a-00b1-429f-b68d-f28eb6c22bc4",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[254] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "1df4d60d-8f09-7771-cdfd-58a372cf41bd",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Smart Queen",
				uuid = "52b271a5-19ef-6053-b482-2ddaef3978a4",
				version = 2,
			},
			inheritedObjectUUID = "1798efab-4195-13cc-a845-8070fc8f3274",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[255] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "9073baa4-4ebd-9cd8-3e41-d7c27c49ca94",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[257] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "8a709bba-7812-207e-ec92-adecc80bd06a",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Disable Fast TA",
				uuid = "de51e408-06b3-9754-89f8-75e8bc6e9375",
				version = 2,
			},
			inheritedObjectUUID = "92b69e0c-6700-b47c-8a24-a0c1d928fbb9",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[258] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "3aa27c89-69b6-4ae5-1ccb-d52f21446739",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[260] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "cab9bdf4-e877-2200-1199-caae500d16e4",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[261] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "b934921d-59df-d0b9-2917-8b6f2049c14d",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Feint",
				uuid = "23b0464f-2c6a-f646-a909-2dc21146412a",
				version = 2,
			},
			inheritedObjectUUID = "6478e961-c179-3354-91b0-60a7eb6544e8",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Burn",
				uuid = "80346c90-7296-d385-9fef-9b476046afde",
				version = 2,
			},
			inheritedObjectUUID = "a967bdba-e4c5-1972-9bfe-01199cc73505",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[262] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "797148ca-7983-d9a6-29b0-b048e601befa",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[265] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Mitigation",
				uuid = "644d5400-e903-e681-b6ff-b0766d26da1d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mitigation",
				name = "Feint",
				uuid = "f9dcaecf-7e3f-9d95-b4ae-614f2c8650e8",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"695b3b38-acdc-0785-9ca9-0c11f2b12c99",
									true,
								},
								
								{
									"2ac212ee-6beb-5167-b7d4-2008f946c216",
									true,
								},
							},
							gVar = "ACR_TensorWeeb4_Hotbar_Feint",
							uuid = "4639c0ed-5966-d17d-8e04-4d62d120267b",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- NAUR DSR Mit sheet, P7: M1 Feints Gigaflare 2, late in the cast so all hits (1680.9-1688.9) are covered.\nreturn AnyoneCore ~= nil and AnyoneCore.Roster ~= nil and AnyoneCore.Roster.mySlot() == \"M1\"",
							dequeueIfLuaFalse = true,
							name = "Roster M1",
							uuid = "695b3b38-acdc-0785-9ca9-0c11f2b12c99",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1195,
							name = "Target missing Feint",
							uuid = "2ac212ee-6beb-5167-b7d4-2008f946c216",
							version = 3,
						},
					},
				},
				displayPath = "Mitigation/Feint",
				mechanicTime = 1680.9,
				name = "Feint | M1 | P7 Gigaflare 2",
				timeRange = true,
				timelineIndex = 265,
				timerEndOffset = -0.5,
				timerStartOffset = -2.5,
				uuid = "147a905a-f957-efef-b867-c2b0a8ad1e03",
				version = 2,
			},
		},
	},
	[266] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "f047437e-711e-01f2-48c7-00a48fc849ee",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[267] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "3ae0b73f-99ea-d513-d648-1c0db3a802af",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[268] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "2c6fa4fc-aa9e-1e78-502f-6fb6836edb6c",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[269] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "e1eb6de5-e002-f911-5346-3157aba3ca95",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[270] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "9f872e87-9d74-efa3-bf91-e07148e60337",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[271] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "f1b8fca6-0db9-6ec2-7f46-05d8dad02396",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
	},
	[274] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "121ff813-0e24-1417-7187-d81d6ca914c3",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Mitigation",
				uuid = "5059c855-a640-3ad1-b95b-fcc119900c39",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mitigation",
				name = "Feint",
				uuid = "38a3d6fc-fc2b-ef7c-b238-9c1cab26b221",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"6ceef590-40c6-8a76-a047-26402edc4707",
									true,
								},
								
								{
									"a447a035-8f06-7f41-af92-ebaab52b1b59",
									true,
								},
							},
							gVar = "ACR_TensorWeeb4_Hotbar_Feint",
							uuid = "4f9ce044-32c6-99e6-9e1d-c485ab9c7e76",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- NAUR DSR Mit sheet, P7: M2 Feints Akh Morn 3, late in the cast so all hits are covered.\nreturn AnyoneCore ~= nil and AnyoneCore.Roster ~= nil and AnyoneCore.Roster.mySlot() == \"M2\"",
							dequeueIfLuaFalse = true,
							name = "Roster M2",
							uuid = "6ceef590-40c6-8a76-a047-26402edc4707",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1195,
							name = "Target missing Feint",
							uuid = "a447a035-8f06-7f41-af92-ebaab52b1b59",
							version = 3,
						},
					},
				},
				displayPath = "Mitigation/Feint",
				mechanicTime = 1732.9,
				name = "Feint | M2 | P7 Akh Morn 3",
				timeRange = true,
				timelineIndex = 274,
				timerEndOffset = -1,
				timerStartOffset = -3,
				uuid = "9538bbb5-693b-e981-b8c7-f8ae2449ad01",
				version = 2,
			},
		},
	},
	[275] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "e95324f2-cc6d-6a76-830d-03f454452262",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Hold until after chariot/dynamo",
				uuid = "6503cff9-d9a8-eb0d-9c0c-d42d8ce1fe63",
				version = 2,
			},
			inheritedObjectUUID = "58b99957-b15e-2261-972e-3b24c4fb142f",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[280] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\dsw\\universal",
				uuid = "0f2bb75a-0447-df3e-7691-24f06847e30a",
			},
			inheritanceRoot = "store\\anyone\\dsw\\universal",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Burn",
				uuid = "c2b964ef-b942-e18b-9439-0d109fec712e",
				version = 2,
			},
			inheritedObjectUUID = "ebf98ad8-199a-803a-bc3c-c6508f4ecb28",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	inheritedProfiles = 
	{
		"store\\anyone\\dsw\\universal",
	},
	timelineName = "dsw",
	version = "1.0.5",
}



return tbl
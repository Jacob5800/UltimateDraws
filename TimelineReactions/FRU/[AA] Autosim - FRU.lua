local tbl = 
{
	
	{
		
		{
			data = 
			{
				actions = 
				{
				},
				conditions = 
				{
				},
				eventType = 16,
				execute = "-- AutoSim v3: P4 slot 0 is Ryne, then Gaia from Gaia spawn; Ryne is slot 1 from Gaia spawn for\n-- every job. From Gaia spawn \"AutoSim | P4 slots follow target\" keeps slot 0 on the player's\n-- target and slot 1 on the other boss (AS-015, user 2026-10-22; replaces the one-slot P4 setup).\n-- FRU forecast: source pull 20261014-2124-1238-5.txt, seconds since combat start.\n-- Encounter geometry retains the source-pull clock; one-shot returns reanchor remaining windows.\n-- RaidBuff boundaries average per-pull first/last teammate status applications, aligned by phase.\n-- Samples: 20261016-1558, 20261016-1521, 20261015-1800, 20261014-2124 (P5: two pulls).\n-- Each buff is assumed to last 20s; Bard casts and the isolated old Dancer window are excluded.\n-- P4 opener raid buffs: Gaia +3s, 20s duration, weight 1.2.\n-- Ice Veil damage discount starts 2s after the logged first attack.\nlocal acr = TensorCore.API.TensorACR\n-- Viper values raid buff windows at 1.1; other jobs retain 1.4.\nlocal job = TensorCore.mGetPlayer().job\nlocal reaper = job == 39\nlocal raidBuffWeight = job == 41 and 1.1 or 1.4\n-- End useful post-CT uptime at Morn Afah's damage after the Akh Morns.\n-- Pull 20261016-1558-1238-3.txt: CT return 743.031s, Morn damage 758.187s (ACR clock).\n-- 15.156s is shorter than the assumed 20s raid buffs; preserve source coordinates for reanchors.\nlocal postCTCutoff = 754.093 + 15.156\n-- Median of 16 crystal lifetimes across four pulls; observed death corrects this estimate.\nlocal crystalEnd = 368.015 + 22.0935\n-- P2 Diamond Dust: Shiva untargetable at 196.046 (20261014-2124-1238-5.txt). Start this downtime\n-- 0.5s earlier than the logged untargetable time (user request 2026-10-20); apply() still adds\n-- its usual 0.5s early-start buffer on top.\nlocal diamondDustStart = 196.046 - 0.5\ndata.fru_rpr_forecast = {\n    version = 2,\n    phase = 1,\n    p2_returns = 0,\n    kill_time = 1127.03,\n    schedule = {\n        {\"FullDowntime\", 34.781, 80.015, 1, 0},\n        {\"FullDowntime\", 156.656, 160.968, 1, 0},\n        {\"FullDowntime\", diamondDustStart, 233.109, 1, 0},\n        {\"FullDowntime\", 292.905, 321.905, 1, 0},\n        {\"FullDowntime\", 346.202, 368.015, 1, 0},\n        {\"FullDowntime\", 411.249, 438.796, 1, 0},\n        {\"FullDowntime\", 600.436, 606.015, 1, 0},\n        {\"FullDowntime\", 705.483, 754.093, 1, 0},\n        {\"FullDowntime\", postCTCutoff, 854.296, 1, 0},\n        -- P2-to-intermission: Absolute Zero freeze (status 1150) stuns the party until just\n        -- before the Light crystals become targetable. Source 20261014-2124-1238-5.txt, ACR clock:\n        -- player status 350.077 -> freeze released 365.874 (crystals targetable 368.077).\n        -- Offsets from Absolute Zero (40224) cast: base +3.875 -> +19.672;\n        -- 20261018-0104-1238-4.txt +3.953 -> +19.625; 20261017-0132-1238-3.txt +3.719 -> +19.594.\n        {\"Stun\", 350.077, 365.874, 1, 0},\n        -- Actual P4-to-P5 transition; distinct from the earlier useful-damage cutoff.\n        {\"Stun\", 778.296, 854.296, 1, 0},\n        {\"CasterDowntime\", 34.781, 80.015, 1, 0},\n        {\"CasterDowntime\", 156.656, 160.968, 1, 0},\n        {\"CasterDowntime\", diamondDustStart, 233.109, 1, 0},\n        {\"CasterDowntime\", 292.905, 321.905, 1, 0},\n        {\"CasterDowntime\", 346.202, 368.015, 1, 0},\n        {\"CasterDowntime\", 411.249, 438.796, 1, 0},\n        -- All jobs: P3 Darkest Dance knockback (40183) -> following Dark Water III stack (40271).\n        -- Source 20261014-2124-1238-5.txt, ACR clock: 573.890 -> 577.936.\n        -- Corroborated by 20261018-0104-1238-4.txt (569.968 -> 573.952)\n        -- and 20261017-0132-1238-3.txt (566.235 -> 570.345); phase reanchors shift these bounds.\n        {\"CasterDowntime\", 573.890, 577.936, 1, 0},\n        {\"CasterDowntime\", 600.436, 606.015, 1, 0},\n        {\"CasterDowntime\", 705.483, 754.093, 1, 0},\n        {\"CasterDowntime\", postCTCutoff, 854.296, 1, 0},\n        -- All jobs: P5 Wings cast completion -> first DPS Explosion (second Explosion overall).\n        -- Base clock: 20261014-2124-1238-5.txt Wings completions 910.686 / 1028.202.\n        -- Earliest cast-to-second-Explosion delay among three valid P5 pulls: 3.890s for each.\n        -- 20261016-1558-1238-3.txt: 893.828 -> 897.750 (3.922s), 1011.250 -> 1015.140 (3.890s).\n        -- 20261017-0132-1238-3.txt: 897.939 -> 901.829 (3.890s), 1015.282 -> 1019.173 (3.891s).\n        -- Base pull delays are 3.954s / 3.922s. Retain the earliest aligned delay, not absolute pull time.\n        -- Exact starts honor the requested cast completion; reanchors shift both boundaries.\n        {\"CasterDowntime\", 910.686, 914.576, 1, 0, exactStart = true},\n        {\"CasterDowntime\", 1028.202, 1032.092, 1, 0, exactStart = true},\n        {\"TargetLifetime\", 0, 156.656, 1, 0},\n        {\"TargetLifetime\", 160.968, 346.202, 1, 0},\n        -- Intermission uses slot 0 only, for every job (user 2026-10-22): the player's Light Crystal,\n        -- then whatever they target next (another crystal or the Ice Veil), so the ACR never plans\n        -- around a distant target (\"AutoSim | Intermission slot 0 follows target\").\n        -- Two lifetimes only (user 2026-10-22): target switches don't start new ones. The crystal\n        -- lifetime ends when the slot-0 crystal first dies (\"AutoSim | Correct crystal death\");\n        -- until then the end is a source-pull estimate.\n        {\"TargetLifetime\", 368.015, crystalEnd, 1, 0, tag = \"crystal_lifetime\"},\n        {\"TargetLifetime\", crystalEnd, 411.249, 1, 0, tag = \"ice_lifetime\"},\n        {\"TargetLifetime\", 438.796, 600.436, 1, 0},\n        {\"TargetLifetime\", 854.296, 1127.03, 1, 0},\n        -- Preserve lifetimes through temporary untargetability; split only availability.\n        {\"DotAvailability\", 0, 34.781 - 0.5, 1, 0},\n        {\"DotAvailability\", 80.015, 156.656 - 0.5, 1, 0},\n        {\"DotAvailability\", 160.968, diamondDustStart - 0.5, 1, 0},\n        {\"DotAvailability\", 233.109, 292.905 - 0.5, 1, 0},\n        {\"DotAvailability\", 321.905, 346.202 - 0.5, 1, 0},\n        {\"DotAvailability\", 368.015, crystalEnd - 0.5, 1, 0, tag = \"crystal_availability\"},\n        {\"DotAvailability\", crystalEnd, 411.249 - 0.5, 1, 0, tag = \"ice_availability\"},\n        {\"DotAvailability\", 438.796, 600.436 - 0.5, 1, 0},\n        {\"DotAvailability\", 854.296, 1127.03, 1, 0},\n        -- P4 has one DoT target in slot 0 for every job: Ryne from phase start until Gaia spawns,\n        -- then a fresh lifetime on the same slot, reassigned to Gaia's entity.\n        -- Gaia's lifetime persists across CT; only availability and cleave stop during downtime.\n        {\"TargetLifetime\", 606.015, 631.436, 1, 0},\n        {\"TargetLifetime\", 631.436, 776.358, 1, 0},\n        -- AoE windows keep the two-target cleave; DD availability follows slot 0 only.\n        -- Uptime ends 0.5s early, matching the downtime ghosting buffer.\n        -- Ryne disappears first at 704.374; Gaia remains until 705.483.\n        {\"SelfCircle5Yd\", 631.436, 704.374 - 0.5, 2, 0},\n        {\"SelfCircle5Yd\", 754.093, postCTCutoff - 0.5, 2, 0},\n        {\"DotAvailability\", 606.015, 631.436, 1, 0},\n        {\"DotAvailability\", 631.436, 705.483 - 0.5, 1, 0},\n        {\"DotAvailability\", 754.093, postCTCutoff - 0.5, 1, 0},\n        {\"BossModifier\", 395.155, 411.249, 0.5, 0},\n        -- Discount useful post-CT damage through Morn Afah; later HP-capped damage has no value.\n        {\"BossModifier\", 754.093, postCTCutoff, 0.5, 0},\n        {\"BossModifier\", postCTCutoff, 854.296, 0, 0},\n        {\"RaidBuff\", 5.008, 26.781, raidBuffWeight, 0},\n        {\"RaidBuff\", 125.453, 147.308, raidBuffWeight, 0},\n        {\"RaidBuff\", 249.914, 272.344, raidBuffWeight, 0},\n        {\"RaidBuff\", 370.785, 395.05, raidBuffWeight, 0},\n        {\"RaidBuff\", 504.136, 526.675, raidBuffWeight, 0},\n        {\"RaidBuff\", 634.436, 654.436, 1.2, 0},\n        {\"RaidBuff\", 859.007, 881.312, raidBuffWeight, 0},\n        {\"RaidBuff\", 979.593, 1002.64, raidBuffWeight, 0},\n        {\"RaidBuff\", 1101.171, 1123.023, raidBuffWeight, 0},\n    }\n}\nlocal forecast = data.fru_rpr_forecast\n-- Non-Reaper jobs: late P1 Blastburn (40130) -> Explosion; start at the mechanic itself.\n-- Reaper skips this window: the gap leaves enough time to finish Communio.\n-- 20261017-0132-1238-3.txt: 143.891 -> 145.813, gap 1.922s.\n-- 20261016-1521-1238-3.txt: 143.781 -> 145.734, gap 1.953s.\n-- Align the 1.922s observed gap to base-pull Explosion 145.687\n-- (20261014-2124-1238-5.txt; that pull uses the alternate Burnout pattern).\nif not reaper then\n    forecast.schedule[#forecast.schedule + 1] = {\"CasterDowntime\", 143.765, 145.687, 1, 0, exactStart = true}\nend\n-- Samurai only (user 2026-10-24): the same Blastburn -> Explosion window is melee downtime, with\n-- Tendo Setsugekka / Tendo Kaeshi Setsugekka (6y) and Ogi Namikiri / Kaeshi: Namikiri (8y)\n-- planned from outside melee. Same sources and exact start as the CasterDowntime window above.\nif job == 34 then\n    forecast.schedule[#forecast.schedule + 1] = {\"MeleeDowntime\", 143.765, 145.687, 1, 0, exactStart = true}\n    forecast.schedule[#forecast.schedule + 1] = {\"Range6Yd\", 143.765, 145.687, 1, 0}\n    forecast.schedule[#forecast.schedule + 1] = {\"Range8Yd\", 143.765, 145.687, 1, 0}\nend\n-- Every job except Samurai and Reaper (user 2026-10-23: they can safely get casts off): each\n-- Fulgent Blade (40306) is a movement window from the second exaline detonation (first Path of\n-- Light/Darkness 40308/40309 wave, user-confirmed) to Pandora's Akh Morn (40310) first hit.\n-- Base clock: 20261014-2124-1238-5.txt, Fulgent Blades 865.546 / 978.874 / 1069.671.\n-- 17 pulls 2026-10-04..10-23: detonation +13.11..+13.27s, Akh Morn +26.75..+27.05s after the cast.\n-- Exact starts honor the detonation.\nif job ~= 34 and not reaper then\n    forecast.schedule[#forecast.schedule + 1] = {\"CasterDowntime\", 878.733, 892.390, 1, 0, exactStart = true}\n    forecast.schedule[#forecast.schedule + 1] = {\"CasterDowntime\", 992.108, 1005.733, 1, 0, exactStart = true}\n    forecast.schedule[#forecast.schedule + 1] = {\"CasterDowntime\", 1082.858, 1096.561, 1, 0, exactStart = true}\nend\n-- Additional movement forecasts are BLM-only; extend to other caster jobs as AutoSim supports them.\nif TensorCore.mGetPlayer().job == 25 then\n    -- Movement between the two post-Scythe Kick House of Light volleys.\n    -- Source pull 20261014-2124-1238-5.txt: first volley ends 265.077, second starts 274.921.\n    -- End movement 3s before the second volley; preserve source coordinates for phase reanchoring.\n    forecast.schedule[#forecast.schedule + 1] = {\"CasterDowntime\", 265.077, 271.921, 1, 0}\n    -- P3 after Spirit Taker: timeline Dark Eruption 635.4 -> Dark Water III 642.1.\n    -- Source pull resolves at 561.952 and 568.874; stop movement 2s before Water.\n    forecast.schedule[#forecast.schedule + 1] = {\"CasterDowntime\", 561.952, 566.874, 1, 0}\n    -- P4: timeline Path of Light 749.3 -> Spirit Taker 752.3, source pull cast completions.\n    forecast.schedule[#forecast.schedule + 1] = {\"CasterDowntime\", 650.999, 654.061, 1, 0}\nend\n-- Every job: Ryne becomes DoT slot 1 when Gaia takes slot 0 (new slot, new lifetime), so the\n-- boss the player is not targeting keeps a DoT slot (AS-015, user 2026-10-22; was BLM-only).\n-- Her lifetime persists through Crystallize Time; availability overlaps the two-boss\n-- SelfCircle5Yd windows (AS-003/AS-004).\nforecast.schedule[#forecast.schedule + 1] = {\"TargetLifetime\", 631.436, 778.296, 1, 1}\nforecast.schedule[#forecast.schedule + 1] = {\"DotAvailability\", 631.436, 704.374 - 0.5, 1, 1}\nforecast.schedule[#forecast.schedule + 1] = {\"DotAvailability\", 754.093, postCTCutoff - 0.5, 1, 1}\n-- Incidental two-boss cleave comes from many shapes (e.g. Reaper Gluttony/Communio/Perfectio,\n-- Bard Ladonsbite/Apex Arrow, Samurai cones). P4 is the only multi-target part of the fight.\n-- Mirror the two-boss SelfCircle5Yd windows for BRD, BLM, SAM, RPR and VPR across every other\n-- AoE shape; each ACR ignores shapes it does not use.\nlocal targetAoe = job == 23 or job == 25 or job == 34 or job == 39 or job == 41\nlocal targetAoeTypes = {\n    \"SelfCircle8Yd\", \"Cone8Yd\", \"Cone12Yd\", \"Line10Yd\", \"Line15Yd\", \"Line25Yd\",\n    \"TargetCircle5YdRange3Yd\", \"TargetCircle5YdRange5Yd\", \"TargetCircle5YdRange20Yd\",\n    \"TargetCircle5YdRange25Yd\", \"TargetCircle8YdRange25Yd\",\n}\nif targetAoe then\n    for i = 1, #targetAoeTypes do\n        forecast.schedule[#forecast.schedule + 1] = {targetAoeTypes[i], 631.436, 704.374 - 0.5, 2, 0}\n        forecast.schedule[#forecast.schedule + 1] = {targetAoeTypes[i], 754.093, postCTCutoff - 0.5, 2, 0}\n    end\nend\n-- This helper and template live only for this pull.\nfunction forecast.apply(anchor, actual)\n    local api = TensorCore.API.TensorACR\n    local kill = actual + forecast.kill_time - anchor\n    api.setAutoSimKillTime(kill)\n    api.clearAutoSimPhases(\"FullDowntime\")\n    api.clearAutoSimPhases(\"CasterDowntime\")\n    api.clearAutoSimPhases(\"Stun\")\n    api.clearAutoSimPhases(\"SelfCircle5Yd\")\n    -- Samurai only: other jobs keep their automatic melee downtime and range phases.\n    if job == 34 then\n        api.clearAutoSimPhases(\"MeleeDowntime\")\n        api.clearAutoSimPhases(\"Range6Yd\")\n        api.clearAutoSimPhases(\"Range8Yd\")\n    end\n    -- Listed jobs only: other jobs keep their automatic phases for these AoE shapes.\n    if targetAoe then\n        for i = 1, #targetAoeTypes do api.clearAutoSimPhases(targetAoeTypes[i]) end\n    end\n    api.clearAutoSimPhases(\"BossModifier\")\n    api.clearAutoSimPhases(\"RaidBuff\")\n    for slot = 0, 5 do\n        api.clearAutoSimPhases(\"TargetLifetime\", slot)\n        api.clearAutoSimPhases(\"DotAvailability\", slot)\n        if job == 25 then api.clearAutoSimPhases(\"DotAvailability\", slot, 1) end\n    end\n    for i = 1, #forecast.schedule do\n        local window = forecast.schedule[i]\n        if window[3] > anchor then\n            -- Begin downtime 0.5s early to avoid GCDs resolving after uptime ends.\n            -- Preserve canonical source times for reanchors and leave return times unchanged.\n            local sourceStart = window[2]\n            if not window.exactStart and (window[1] == \"FullDowntime\" or window[1] == \"MeleeDowntime\" or\n               window[1] == \"CasterDowntime\" or window[1] == \"Stun\") then\n                sourceStart = sourceStart - 0.5\n            end\n            local start = actual + math.max(0, sourceStart - anchor)\n            -- Reanchoring a surviving target must preserve its original lifetime start.\n            -- A new lifetime would discard its carried Death's Design/DoT state.\n            if window[1] == \"TargetLifetime\" then\n                start = actual + window[2] - anchor\n            end\n            local finish = actual + window[3] - anchor\n            api.addAutoSimPhase(window[1], start, finish, window[4], window[5])\n            -- AoE Thunder has independent availability but shares the primary target lifetime.\n            if job == 25 and window[1] == \"DotAvailability\" then\n                api.addAutoSimPhase(window[1], start, finish, window[4], window[5], 1)\n            end\n        end\n    end\n    -- Keep normal damage outside the post-CT discount; phases must not overlap.\n    if anchor >= 438.796 then\n        if anchor < 754.093 then\n            api.addAutoSimPhase(\"BossModifier\", actual, actual + 754.093 - anchor, 1)\n        end\n        local p5Start = actual + math.max(0, 854.296 - anchor)\n        api.addAutoSimPhase(\"BossModifier\", p5Start, kill, 1)\n    end\n    -- Rebuild uncertainty on the same clock as the reanchored schedule.\n    -- Uncertainty is encounter-wide: keep every P4 AoE boundary exact, including CT return/end.\n    -- Restore +/-15s immediately after the final post-CT AoE window, before P5.\n    -- A 1ms separation keeps the closing boundary at zero uncertainty.\n    -- Kill-time uncertainty continues through the transition and P5.\n    api.clearAutoSimUncertainty()\n    if anchor < 606.015 then\n        api.addAutoSimUncertainty(0, 15)\n        api.addAutoSimUncertainty(actual + 606.015 - anchor, 0)\n    end\n    api.addAutoSimUncertainty(actual + math.max(0, postCTCutoff + 0.001 - anchor), 15)\n    forecast.anchor = anchor\n    forecast.actual = actual\nend\n-- Crystal kills depend on party damage, not the fixed spawn timeline.\nfunction forecast.correctCrystalDeath(actual)\n    local sourceDeath = forecast.anchor + actual - forecast.actual\n    for i = 1, #forecast.schedule do\n        local window = forecast.schedule[i]\n        if window.tag == \"crystal_lifetime\" then\n            window[3] = sourceDeath\n        elseif window.tag == \"crystal_availability\" then\n            window[3] = sourceDeath - 0.5\n        elseif window.tag == \"ice_availability\" then\n            window[2] = sourceDeath\n        elseif window.tag == \"ice_lifetime\" then\n            window[2] = sourceDeath\n        end\n    end\n    -- This coordinate change preserves every other predicted mechanic timestamp.\n    forecast.apply(sourceDeath, actual)\n    forecast.crystal_dead = true\nend\nlocal darkCrystal = acr.addAOEBlacklistEntry(13556, \"Crystal of Darkness\")\ndarkCrystal.enabled = true\nforecast.apply(0, 0)\nself.used = true",
				executeType = 2,
				mechanicTime = 13.7,
				name = "AutoSim | FRU baseline",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = -13.699999809265,
				timerStartOffset = -73.699996948242,
				uuid = "819f37bc-ecad-a70a-99d9-12f42380241b",
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
									"42daa217-a051-bbe9-8a7e-1a8e264a48b3",
									true,
								},
								
								{
									"e4a36387-db20-5893-a58e-97fe67b8d17a",
									true,
								},
								
								{
									"43748c72-42ed-214e-b2d5-d54978108c0c",
									true,
								},
							},
							gVar = "ACR_TensorReaper4_Hotbar_HellsIngressTarget",
							uuid = "de2697ce-f7b8-bd33-a525-0d87b09f8301",
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
							category = "Self",
							conditionType = 13,
							jobValue = "REAPER",
							name = "Reaper",
							uuid = "42daa217-a051-bbe9-8a7e-1a8e264a48b3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							comparator = 2,
							eventCountdownTime = 1,
							name = "Countdown <= 1s",
							uuid = "e4a36387-db20-5893-a58e-97fe67b8d17a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							eventCountdownTime = 0.05,
							name = "Countdown > 0",
							uuid = "43748c72-42ed-214e-b2d5-d54978108c0c",
							version = 3,
						},
					},
				},
				eventType = 16,
				mechanicTime = 13.7,
				name = "Prepull -1s Ingress <t>",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = -13.7,
				timerStartOffset = -73.7,
				uuid = "efb5462d-0d83-7016-9ba4-f2c332b75e64",
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
									"01636a06-e5aa-6c8e-a1db-ad7b54f11c3e",
									true,
								},
								
								{
									"66ae4f0d-82a5-a350-b7d5-298aab3a3555",
									true,
								},
								
								{
									"60c2881e-d1bb-7afb-93cd-1eecbdbd4cbe",
									true,
								},
							},
							gVar = "ACR_TensorViper4_Hotbar_TrueNorth",
							uuid = "57ff652d-00de-c142-bef1-50a5f6acc43b",
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
							category = "Self",
							conditionType = 9,
							name = "Melee",
							partyTargetType = "Melee DPS",
							uuid = "01636a06-e5aa-6c8e-a1db-ad7b54f11c3e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							comparator = 2,
							eventCountdownTime = 2,
							name = "Countdown <= 2s",
							uuid = "66ae4f0d-82a5-a350-b7d5-298aab3a3555",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							eventCountdownTime = 0.05,
							name = "Countdown > 0",
							uuid = "60c2881e-d1bb-7afb-93cd-1eecbdbd4cbe",
							version = 3,
						},
					},
				},
				eventType = 16,
				mechanicTime = 13.7,
				name = "Prepull -2s True North",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = -13.699999809265,
				timerStartOffset = -73.699996948242,
				uuid = "c26b0a9e-4459-71ca-83f3-096481851e2f",
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
									"5e5d4479-4f96-7063-be20-78a2eb3a10bf",
									true,
								},
								
								{
									"8cfac0d3-36d5-665d-aa17-0937b7bac7c5",
									true,
								},
								
								{
									"12259efc-7643-e3e3-93dc-a3f46d98c322",
									true,
								},
							},
							gVar = "ACR_TensorViper4_Hotbar_Slither",
							uuid = "22e26c2b-019c-b944-8759-759d8dfca08a",
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
							category = "Self",
							conditionType = 13,
							jobValue = "VIPER",
							name = "Viper",
							uuid = "5e5d4479-4f96-7063-be20-78a2eb3a10bf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							comparator = 2,
							eventCountdownTime = 1,
							name = "Countdown <= 1s",
							uuid = "8cfac0d3-36d5-665d-aa17-0937b7bac7c5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							eventCountdownTime = 0.05,
							name = "Countdown > 0",
							uuid = "12259efc-7643-e3e3-93dc-a3f46d98c322",
							version = 3,
						},
					},
				},
				eventType = 16,
				mechanicTime = 13.7,
				name = "Prepull -1s Slither",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = -13.699999809265,
				timerStartOffset = -73.699996948242,
				uuid = "46566d23-669b-ad00-b863-9fadf6f52ab2",
				version = 2,
			},
		},
	}, 
	[21] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "812e6b09-7a65-1ccb-a99f-5d0292255b2b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "85f04a94-7a6d-cd9e-a792-3a286be36af6",
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
							actionLua = "local forecast = data.fru_rpr_forecast\nif not forecast or forecast.version ~= 2 then return end\nlocal acr = TensorCore.API.TensorACR\nlocal actual = acr.getAutoSimTime()\nif actual <= 0 then return end\nforecast.apply(80.015, actual)\nforecast.phase = 1\nself.used = true",
							conditions = 
							{
								
								{
									"c2096141-f0b7-9293-8aba-0c0a5f1e57bc",
									true,
								},
							},
							name = "Apply P1 return forecast",
							uuid = "f2ba588b-4194-0bdb-ba24-5864f38869c6",
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
							conditionLua = "local entity = TensorCore.mGetEntity(eventArgs.detectionTargetID)\nreturn entity ~= nil and entity.targetable == true",
							name = "Targetable",
							uuid = "728c9332-77b6-c4bf-97f1-5d2e2de57ebe",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Filter",
							conditions = 
							{
								
								{
									"728c9332-77b6-c4bf-97f1-5d2e2de57ebe",
									true,
								},
							},
							filterTargetType = "ContentID",
							name = "P1 return present",
							partyTargetContentID = 9707,
							uuid = "c2096141-f0b7-9293-8aba-0c0a5f1e57bc",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				mechanicTime = 80,
				name = "AutoSim | Reanchor P1 return",
				timeRange = true,
				timelineIndex = 21,
				timerEndOffset = 12,
				timerStartOffset = -5,
				uuid = "1252c40d-e725-461d-a67c-7be9df2118dc",
				version = 2,
			},
		},
	},
	[35] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorReaper4_Hotbar_HellsIngressTarget",
							uuid = "2c6d614c-446c-12d9-944d-8ff796e434ff",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorViper4_Hotbar_Slither",
							uuid = "f4c9a2d9-f590-2c28-8ea6-e314bd7e05ae",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 145.6,
				name = "dash in",
				timelineIndex = 35,
				timerOffset = -0.5,
				uuid = "26241946-9687-3fa0-b3ac-a8b74fd49170",
				version = 2,
			},
		},
	},
	[39] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "b9eea840-d801-49a9-82e8-89644fb30906",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "a844f4b7-4dc4-14b4-aa19-2ad70222fee6",
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
							actionLua = "local forecast = data.fru_rpr_forecast\nif not forecast or forecast.version ~= 2 then return end\nlocal acr = TensorCore.API.TensorACR\nlocal actual = acr.getAutoSimTime()\nif actual <= 0 then return end\nforecast.apply(160.968, actual)\nforecast.phase = 2\nself.used = true",
							conditions = 
							{
								
								{
									"39131dfe-2bf1-0244-a1e6-040f87c78a0f",
									true,
								},
							},
							name = "Apply P2 start forecast",
							uuid = "a9437a17-cf4b-4c57-9ff3-f70bce5c4f73",
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
							conditionLua = "local entity = TensorCore.mGetEntity(eventArgs.detectionTargetID)\nreturn entity ~= nil and entity.targetable == true",
							name = "Targetable",
							uuid = "70e14899-1d7e-af4c-960e-360178930936",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Filter",
							conditions = 
							{
								
								{
									"70e14899-1d7e-af4c-960e-360178930936",
									true,
								},
							},
							filterTargetType = "ContentID",
							name = "P2 start present",
							partyTargetContentID = 12809,
							uuid = "39131dfe-2bf1-0244-a1e6-040f87c78a0f",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				mechanicTime = 203.8,
				name = "AutoSim | Reanchor P2 start",
				timeRange = true,
				timelineIndex = 39,
				timerEndOffset = 12,
				timerStartOffset = -5,
				uuid = "4c9a4d2d-676a-bf7d-ad95-ed3e96ae6bc9",
				version = 2,
			},
		},
	},
	[62] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "8c1f2528-2447-1ff1-8413-3b5b275f949a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "992bb9e2-ab29-2ecf-a48f-7c5b91c86603",
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
							actionLua = "local forecast = data.fru_rpr_forecast\nif not forecast or forecast.version ~= 2 then return end\nlocal acr = TensorCore.API.TensorACR\nlocal actual = acr.getAutoSimTime()\nif actual <= 0 then return end\nforecast.apply(233.109, actual)\nforecast.phase = 2\nself.used = true",
							conditions = 
							{
								
								{
									"bb6523bb-84ed-ac0c-b6be-caf2a65fc9f1",
									true,
								},
							},
							name = "Apply P2 Diamond Dust return forecast",
							uuid = "8c5234b9-b4ea-dffe-a321-ab2c3f7b6c2d",
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
							conditionLua = "local entity = TensorCore.mGetEntity(eventArgs.detectionTargetID)\nreturn entity ~= nil and entity.targetable == true",
							name = "Targetable",
							uuid = "25ff72e3-7dab-1c82-a617-317a6bb8db2e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Filter",
							conditions = 
							{
								
								{
									"25ff72e3-7dab-1c82-a617-317a6bb8db2e",
									true,
								},
							},
							filterTargetType = "ContentID",
							name = "P2 Diamond Dust return present",
							partyTargetContentID = 12809,
							uuid = "bb6523bb-84ed-ac0c-b6be-caf2a65fc9f1",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				mechanicTime = 276.1,
				name = "AutoSim | Reanchor P2 Diamond Dust return",
				timeRange = true,
				timelineIndex = 62,
				timerEndOffset = 12,
				timerStartOffset = -5,
				uuid = "08be34f4-f5d9-c3e7-b9da-718e865c9033",
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
							gVar = "ACR_TensorViper4_Hotbar_Slither",
							uuid = "1542f904-2bfc-763a-89e1-c2509d0c4783",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 276.1,
				name = "dash in",
				timeRange = true,
				timelineIndex = 62,
				timerEndOffset = 2,
				timerStartOffset = -1,
				uuid = "8434ef19-3150-fb5c-ba38-fcb25a915cee",
				version = 2,
			},
		},
	},
	[93] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "cf1c5416-a23d-1f2c-978c-88ccd6e850ec",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "3b953877-725a-ff88-88bf-a5e2d61d8736",
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
							actionLua = "local forecast = data.fru_rpr_forecast\nif not forecast or forecast.version ~= 2 then return end\nlocal acr = TensorCore.API.TensorACR\nlocal actual = acr.getAutoSimTime()\nif actual <= 0 then return end\nforecast.apply(321.905, actual)\nforecast.phase = 2\nself.used = true",
							conditions = 
							{
								
								{
									"d2538a73-ab82-0ee1-9738-fd98070266ca",
									true,
								},
							},
							name = "Apply P2 Light Rampant return forecast",
							uuid = "4549c114-6024-d3fa-aa98-ea10f03daed7",
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
							conditionLua = "local entity = TensorCore.mGetEntity(eventArgs.detectionTargetID)\nreturn entity ~= nil and entity.targetable == true",
							name = "Targetable",
							uuid = "fd771a5c-f9d9-f3cf-b5dc-cc07a04f6694",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Filter",
							conditions = 
							{
								
								{
									"fd771a5c-f9d9-f3cf-b5dc-cc07a04f6694",
									true,
								},
							},
							filterTargetType = "ContentID",
							name = "P2 Light Rampant return present",
							partyTargetContentID = 12809,
							uuid = "d2538a73-ab82-0ee1-9738-fd98070266ca",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				mechanicTime = 363.5,
				name = "AutoSim | Reanchor P2 Light Rampant return",
				timeRange = true,
				timelineIndex = 93,
				timerEndOffset = 12,
				timerStartOffset = -5,
				uuid = "2d7017d0-5310-46d3-bc30-72008b12ef81",
				version = 2,
			},
		},
	},
	[102] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "2c0df4cc-b06e-498f-a5ab-453eb68560eb",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "c9aed8e2-1f93-82a9-88ba-604812bcb499",
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
							actionLua = "local forecast = data.fru_rpr_forecast\nif not forecast or forecast.version ~= 2 then return end\nlocal acr = TensorCore.API.TensorACR\nlocal actual = acr.getAutoSimTime()\nif actual <= 0 then return end\nforecast.apply(368.015, actual)\nforecast.phase = 2.5\n-- Pin the assigned Light Crystal; do not let Ice Veil reuse its DD identity.\nforecast.crystal_id = eventArgs.detectionTargetID\nacr.setAutoSimTarget(0, eventArgs.detectionTargetID)\nfor slot = 1, 5 do acr.clearAutoSimTarget(slot) end\nself.used = true",
							conditions = 
							{
								
								{
									"c8b02612-6f3f-e43d-bfa7-2525f9f8f493",
									true,
								},
							},
							name = "Apply Light crystals forecast",
							uuid = "7a0c417d-f3b2-893a-a542-83ab99a7191f",
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
							conditionLua = "local entity = TensorCore.mGetEntity(eventArgs.detectionTargetID)\nreturn entity ~= nil and entity.targetable == true",
							name = "Targetable",
							uuid = "39329c74-4df0-4370-b571-a6022a70452c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Filter",
							conditions = 
							{
								
								{
									"39329c74-4df0-4370-b571-a6022a70452c",
									true,
								},
							},
							filterTargetType = "ContentID",
							name = "Light crystals present",
							partyTargetContentID = 13555,
							uuid = "c8b02612-6f3f-e43d-bfa7-2525f9f8f493",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				mechanicTime = 418.8,
				name = "AutoSim | Reanchor Light crystals",
				timeRange = true,
				timelineIndex = 102,
				timerEndOffset = 12,
				timerStartOffset = -5,
				uuid = "ddbd1966-4224-6131-aaae-bcda72811aa0",
				version = 2,
			},
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
				execute = "-- Intermission, slot 0 only (user 2026-10-22): slot 0 is the player's current Light Crystal until it\n-- dies, then whatever they target next (another Light Crystal or the Ice Veil). Keeps the ACR from\n-- planning around distant targets. Only the slot identity changes: lifetimes stay as scheduled\n-- (user 2026-10-22: keeps the schedule simple; see AS-002). Stops at P3 (\"AutoSim | Reanchor P3\", phase 3).\nlocal forecast = data.fru_rpr_forecast\nif not forecast or forecast.version ~= 2 or forecast.phase < 2.5 or forecast.phase >= 3 then return end\nlocal t = TensorCore.mGetTarget()\nif not t or not t.targetable or not t.alive then return end\nif t.contentid ~= 13555 and t.contentid ~= 9358 then return end\nif t.id == forecast.crystal_id then return end\nlocal acr = TensorCore.API.TensorACR\n-- crystal_id also lets \"AutoSim | Correct crystal death\" end the crystal lifetime when this crystal dies.\nforecast.crystal_id = t.id\nacr.setAutoSimTarget(0, t.id)\nfor slot = 1, 5 do acr.clearAutoSimTarget(slot) end",
				executeType = 2,
				mechanicTime = 418.8,
				name = "AutoSim | Intermission slot 0 follows target",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 102,
				timerEndOffset = 45,
				timerStartOffset = -1,
				uuid = "7f19aceb-ffe6-46a1-b615-e048609bc77e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Targeting",
				uuid = "e3ca9ad3-1190-ac36-9b17-6cb6bc976bc4",
			},
			objectType = "folder",
		},
	},
	[103] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "53c3fa9d-f34b-5779-b088-1c8e4029657b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "23178739-b648-1cd8-bd13-2a77734eaf2c",
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
							actionLua = "local forecast = data.fru_rpr_forecast\nif not forecast or forecast.version ~= 2 then return end\nlocal acr = TensorCore.API.TensorACR\nlocal actual = acr.getAutoSimTime()\nif actual <= 0 then return end\nforecast.apply(371.983, actual)\nforecast.phase = 2.75\n-- Slot 0 only: the Ice Veil takes slot 0 once the player targets it\n-- (\"AutoSim | Intermission slot 0 follows target\").\nself.used = true",
							conditions = 
							{
								
								{
									"38135c68-23fc-169b-8017-17949a3de5be",
									true,
								},
							},
							name = "Apply Ice Veil forecast",
							uuid = "c4401641-8b70-4419-abed-a4bcb07bc7df",
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
							conditionLua = "local entity = TensorCore.mGetEntity(eventArgs.detectionTargetID)\nreturn entity ~= nil and entity.targetable == true",
							name = "Targetable",
							uuid = "e4d0d48c-7701-c975-ab2e-f37d4d557286",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Filter",
							conditions = 
							{
								
								{
									"e4d0d48c-7701-c975-ab2e-f37d4d557286",
									true,
								},
							},
							filterTargetType = "ContentID",
							name = "Ice Veil present",
							partyTargetContentID = 9358,
							uuid = "38135c68-23fc-169b-8017-17949a3de5be",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				mechanicTime = 423.6,
				name = "AutoSim | Reanchor Ice Veil",
				timeRange = true,
				timelineIndex = 103,
				timerEndOffset = 12,
				timerStartOffset = -5,
				uuid = "ca13fc3a-481e-a073-aa4b-d94f0153811b",
				version = 2,
			},
		},
	},
	[120] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local forecast = data.fru_rpr_forecast\nlocal actual = TensorCore.API.TensorACR.getAutoSimTime()\nif actual <= 0 then return end\nforecast.correctCrystalDeath(actual)\nself.used = true",
							conditions = 
							{
								
								{
									"35c206dc-61c6-5bd2-be02-70ec884ad705",
									true,
								},
							},
							name = "Apply observed crystal death",
							uuid = "8e4b73b8-4f7c-5926-a705-217b49ec852a",
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
							conditionLua = "local forecast = data.fru_rpr_forecast\nreturn forecast ~= nil and forecast.version == 2 and forecast.phase >= 2.5 and forecast.phase < 3 and not forecast.crystal_dead and eventArgs.entityContentID == 13555 and eventArgs.entityID == forecast.crystal_id and eventArgs.isTargetable == false",
							dequeueIfLuaFalse = true,
							name = "Assigned crystal lost",
							uuid = "35c206dc-61c6-5bd2-be02-70ec884ad705",
							version = 3,
						},
					},
				},
				eventType = 26,
				mechanicTime = 514,
				name = "AutoSim | Correct crystal death",
				timeRange = true,
				timelineIndex = 120,
				timerEndOffset = -14,
				timerStartOffset = -102,
				uuid = "9b2527b3-e904-4414-bdea-e7f93372a761",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "bf2e724c-7788-021c-a82e-f7d8c74d96fb",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "74a0d71b-5aa6-e7f7-9897-bca66e6643fb",
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
							actionLua = "local forecast = data.fru_rpr_forecast\nif not forecast or forecast.version ~= 2 then return end\nlocal acr = TensorCore.API.TensorACR\nlocal actual = acr.getAutoSimTime()\nif actual <= 0 then return end\nforecast.apply(438.796, actual)\nforecast.phase = 3\n-- Retire intermission targets when the new Gaia entity becomes available.\nacr.setAutoSimTarget(0, eventArgs.detectionTargetID)\nfor slot = 1, 5 do acr.clearAutoSimTarget(slot) end\nself.used = true",
							conditions = 
							{
								
								{
									"0d9f7568-9587-5570-948e-a11bfc6687a6",
									true,
								},
							},
							name = "Apply P3 start forecast",
							uuid = "b9400c2d-927d-f97a-823c-7934da8fcf25",
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
							conditionLua = "local entity = TensorCore.mGetEntity(eventArgs.detectionTargetID)\nreturn entity ~= nil and entity.targetable == true",
							name = "Targetable",
							uuid = "58b0d10b-509e-7a93-bd69-5a45a59a2774",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Filter",
							conditions = 
							{
								
								{
									"58b0d10b-509e-7a93-bd69-5a45a59a2774",
									true,
								},
							},
							filterTargetType = "ContentID",
							name = "P3 start present",
							partyTargetContentID = 9832,
							uuid = "0d9f7568-9587-5570-948e-a11bfc6687a6",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				mechanicTime = 514,
				name = "AutoSim | Reanchor P3 start",
				timeRange = true,
				timelineIndex = 120,
				timerEndOffset = 12,
				timerStartOffset = -5,
				uuid = "4740fa6f-8c88-595a-980f-ef3304fb313e",
				version = 2,
			},
		},
	},
	[141] = 
	{
		
		{
			data = 
			{
				actions = 
				{
				},
				conditions = 
				{
				},
				enabled = false,
				eventType = 26,
				execute = "-- Passive simulator identity mapping only; never changes the player's target.\n-- Limited to P4 by this reaction's timeline range.\nif eventArgs.isTargetable then\n    if eventArgs.entityContentID == 12809 then\n        TensorCore.API.TensorACR.setAutoSimTarget(1, eventArgs.entityID)\n    elseif eventArgs.entityContentID == 9832 then\n        TensorCore.API.TensorACR.setAutoSimTarget(2, eventArgs.entityID)\n    end\nend\nself.used = true",
				executeType = 2,
				mechanicTime = 604.5,
				name = "AutoSim | P4 boss slots",
				timeRange = true,
				timelineIndex = 141,
				timerEndOffset = 180,
				timerStartOffset = -5,
				uuid = "7fba1c6c-db56-f65e-bad8-e9efadf99b98",
				version = 2,
			},
		},
	},
	[151] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorReaper4_Hotbar_HellsIngressTarget",
							uuid = "0e946001-4112-809a-870f-114eba2cccdd",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 647.2,
				name = "ingress",
				timeRange = true,
				timelineIndex = 151,
				timerEndOffset = 1.5,
				timerStartOffset = 0.75,
				uuid = "573d92c4-2d6e-b7d4-a983-c188ac953c1f",
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
									"f5a1514d-a163-844b-a439-c1d42f8d0c5b",
									true,
								},
							},
							gVar = "ACR_TensorViper4_KBCancel",
							uuid = "abdf82ef-c981-59f5-9ca5-bfd79a06d9d0",
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
							conditionType = 13,
							jobValue = "VIPER",
							name = "Viper",
							uuid = "f5a1514d-a163-844b-a439-c1d42f8d0c5b",
							version = 3,
						},
					},
				},
				mechanicTime = 647.2,
				name = "antikb on [VPR]",
				timelineIndex = 151,
				timerOffset = -4,
				uuid = "1af8f122-8936-89ff-8aca-82f390493f0c",
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
									"609b5cb5-1133-f4e7-b2c7-de77838cc109",
									true,
								},
							},
							gVar = "ACR_TensorViper4_KBCancel",
							gVarValue = 2,
							uuid = "ebd730ef-d598-4de3-95e7-30132df06c02",
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
							conditionType = 13,
							jobValue = "VIPER",
							name = "Viper",
							uuid = "609b5cb5-1133-f4e7-b2c7-de77838cc109",
							version = 3,
						},
					},
				},
				mechanicTime = 647.2,
				name = "antikb off [VPR]",
				timelineIndex = 151,
				timerOffset = 2,
				uuid = "34f6e2f9-b8d1-92ca-aa69-832fab12f4c8",
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
									"f7424359-e976-2eaf-a5d4-13e2916f0c9f",
									true,
								},
							},
							gVar = "ACR_TensorWeeb4_KBCancel",
							uuid = "81dc3b3f-b241-685c-a0e8-eb60335b86ac",
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
							conditionType = 13,
							jobValue = "SAMURAI",
							name = "Samurai",
							uuid = "f7424359-e976-2eaf-a5d4-13e2916f0c9f",
							version = 3,
						},
					},
				},
				mechanicTime = 647.2,
				name = "antikb on [SAM]",
				timelineIndex = 151,
				timerOffset = -4,
				uuid = "6bdd48f4-c72a-2239-a72a-45fc509957fe",
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
									"6104c278-2712-7b2b-a625-af86de77b087",
									true,
								},
							},
							gVar = "ACR_TensorWeeb4_KBCancel",
							gVarValue = 2,
							uuid = "6045e5f8-7de9-a5a5-96b6-a83eef663a2c",
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
							conditionType = 13,
							jobValue = "SAMURAI",
							name = "Samurai",
							uuid = "6104c278-2712-7b2b-a625-af86de77b087",
							version = 3,
						},
					},
				},
				mechanicTime = 647.2,
				name = "antikb off [SAM]",
				timelineIndex = 151,
				timerOffset = 2,
				uuid = "7a77527d-41d8-6053-ab81-a89481528060",
				version = 2,
			},
		},
	},
	[156] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "-- GUI gates: selected P4 boss at <=3% HP.\n-- Short rolling holds preserve Soul/Shroud and stored burst attacks.\n-- Slice/Waxing Slice/Infernal Slice and other gauge builders remain unrestricted.\n-- No global reset: each hold expires within 500ms after this gate stops matching.\nif data.fru_rpr_hp_lock_hold_ids == nil then\n    data.fru_rpr_hp_lock_hold_ids = {\n        24382, -- Gibbet\n        24383, -- Gallows\n        24384, -- Guillotine\n        24385, -- Plentiful Harvest\n        24388, -- Harvest Moon\n        24389, -- Blood Stalk\n        24390, -- Unveiled Gibbet\n        24391, -- Unveiled Gallows\n        24392, -- Grim Swathe\n        24393, -- Gluttony\n        24394, -- Enshroud\n        24395, -- Void Reaping\n        24396, -- Cross Reaping\n        24397, -- Grim Reaping\n        24398, -- Communio\n        24399, -- Lemure's Slice\n        24400, -- Lemure's Scythe\n        36969, -- Sacrificium\n        36970, -- Executioner's Gibbet\n        36971, -- Executioner's Gallows\n        36972, -- Executioner's Guillotine\n        36973, -- Perfectio\n    }\nend\nlocal ids = data.fru_rpr_hp_lock_hold_ids\nlocal holdUntil = Now() + 500\nfor i = 1, #ids do\n    TensorCore.API.TensorACR.holdActionUntil(ids[i], holdUntil)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"225f560d-be30-b647-9aeb-46cf54fca041",
									true,
								},
								
								{
									"1ee7f4ef-18e2-1ab7-b1d6-5d5e02c4a478",
									true,
								},
							},
							name = "Hold resource attacks (500ms)",
							uuid = "d3179592-eb01-c709-a419-15355de41043",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							comparator = 2,
							conditionType = 3,
							hpValue = 3,
							name = "HP <= 3%",
							uuid = "225f560d-be30-b647-9aeb-46cf54fca041",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 12809,
							name = "Frost",
							uuid = "1b65a868-dfb5-9468-b9cd-78b61e847c31",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 9832,
							name = "Oracle",
							uuid = "8673f43c-5f69-551d-bbca-9cd1f33dbdf4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Filter",
							conditions = 
							{
								
								{
									"1b65a868-dfb5-9468-b9cd-78b61e847c31",
									true,
								},
								
								{
									"8673f43c-5f69-551d-bbca-9cd1f33dbdf4",
									true,
								},
							},
							matchAnyBuff = true,
							name = "P4 boss",
							partyTargetNumber = 0,
							uuid = "1ee7f4ef-18e2-1ab7-b1d6-5d5e02c4a478",
							version = 3,
						},
					},
				},
				enabled = false,
				mechanicTime = 705.3,
				name = "AutoSim | P4 HP lock resource hold",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 156,
				timerEndOffset = 180,
				timerStartOffset = -5,
				uuid = "dccebf06-bad5-ad08-9373-2a8521a23b25",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "3787b849-a17c-4b90-9b19-4fb26ee459e2",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "e4107fa9-c727-a65e-ac92-0973847dedaf",
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
							actionLua = "local forecast = data.fru_rpr_forecast\nif not forecast or forecast.version ~= 2 then return end\nlocal acr = TensorCore.API.TensorACR\nlocal actual = acr.getAutoSimTime()\nif actual <= 0 then return end\nforecast.apply(606.015, actual)\nforecast.phase = 4\n-- Ryne is the sole primary DoT target until Gaia is targetable.\nacr.setAutoSimTarget(0, eventArgs.detectionTargetID)\n-- BLM only: Gaia start moves Ryne to slot 1 for AoE Thunder coverage.\nforecast.p4_ryne_id = eventArgs.detectionTargetID\nfor slot = 1, 5 do\n    acr.clearAutoSimTarget(slot)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"ef26d38f-4315-2271-9057-6b3d3482d0a9",
									true,
								},
							},
							name = "Apply P4 Frost start forecast",
							uuid = "9bbacf15-8e19-ff4b-8e1e-511c8270b5b3",
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
							conditionLua = "local entity = TensorCore.mGetEntity(eventArgs.detectionTargetID)\nreturn entity ~= nil and entity.targetable == true",
							name = "Targetable",
							uuid = "0e9f6d84-0c00-9185-b15b-81ee63724c9f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Filter",
							conditions = 
							{
								
								{
									"0e9f6d84-0c00-9185-b15b-81ee63724c9f",
									true,
								},
							},
							filterTargetType = "ContentID",
							name = "P4 Frost start present",
							partyTargetContentID = 12809,
							uuid = "ef26d38f-4315-2271-9057-6b3d3482d0a9",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				mechanicTime = 705.3,
				name = "AutoSim | Reanchor P4 Frost start",
				timeRange = true,
				timelineIndex = 156,
				timerEndOffset = 12,
				timerStartOffset = -5,
				uuid = "4db00481-677a-6198-a41a-ce62371f7de6",
				version = 2,
			},
		},
	},
	[162] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "b25dac6f-6055-3ae4-9144-8bfb261942bc",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "d4262b74-73ab-599a-a5cd-ffddad0126f6",
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
							actionLua = "local forecast = data.fru_rpr_forecast\nif not forecast or forecast.version ~= 2 then return end\nlocal acr = TensorCore.API.TensorACR\nlocal actual = acr.getAutoSimTime()\nif actual <= 0 then return end\nforecast.apply(631.436, actual)\nforecast.phase = 4\n-- This action is gated by Gaia's live targetability filter.\n-- Every job: reassign slot 0 from Ryne to Gaia and slot 1 to Ryne, matching the baseline's\n-- new lifetimes at Gaia spawn. \"AutoSim | P4 slots follow target\" then keeps slot 0 on the\n-- player's target and slot 1 on the other boss (AS-015, user 2026-10-22).\nacr.setAutoSimTarget(0, eventArgs.detectionTargetID)\nforecast.p4_gaia_id = eventArgs.detectionTargetID\nforecast.p4_slot0 = eventArgs.detectionTargetID\nif forecast.p4_ryne_id then\n    acr.setAutoSimTarget(1, forecast.p4_ryne_id)\nelse\n    acr.clearAutoSimTarget(1)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"957534fc-5ea5-f692-87c8-51a74952b106",
									true,
								},
							},
							name = "Apply P4 Gaia start forecast",
							uuid = "bf9f6b03-d629-32ab-a17a-7ade2015799c",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Misc",
							conditions = 
							{
								
								{
									"957534fc-5ea5-f692-87c8-51a74952b106",
									true,
								},
							},
							name = "Focus Gaia",
							setTarget = true,
							targetType = "Detection Target",
							uuid = "844213af-2862-e033-a73b-97fd9d52a4e4",
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
							conditionLua = "local entity = TensorCore.mGetEntity(eventArgs.detectionTargetID)\nreturn entity ~= nil and entity.targetable == true",
							name = "Targetable",
							uuid = "556a7011-2548-7c41-8a55-5590eea59fb9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Filter",
							conditions = 
							{
								
								{
									"556a7011-2548-7c41-8a55-5590eea59fb9",
									true,
								},
							},
							filterTargetType = "ContentID",
							name = "P4 Gaia start present",
							partyTargetContentID = 9832,
							uuid = "957534fc-5ea5-f692-87c8-51a74952b106",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				mechanicTime = 729.2,
				name = "AutoSim | Reanchor P4 Gaia start",
				timeRange = true,
				timelineIndex = 162,
				timerEndOffset = 12,
				timerStartOffset = -5,
				uuid = "01d84b29-407d-917b-b9dc-a09bbe9a8a2f",
				version = 2,
			},
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
				execute = "-- AS-015 (user 2026-10-22): P4 needs Ryne and Gaia HP-balanced, so slot 0 follows the player's\n-- current target and slot 1 holds the other boss. Without this the ACR chases whichever boss has\n-- the player's DoT (Death's Design) instead of the player's target.\n-- Runs from Gaia spawn (\"AutoSim | Reanchor P4 Gaia start\" records both boss IDs) until P5 start,\n-- which sets phase 5 and puts the scheduled slots back. Other targets (party members, nothing) are\n-- ignored; P4 has no third enemy.\nlocal forecast = data.fru_rpr_forecast\nif not forecast or forecast.version ~= 2 or forecast.phase ~= 4 then return end\nlocal ryne, gaia = forecast.p4_ryne_id, forecast.p4_gaia_id\nif not ryne or not gaia then return end\nlocal tid = TensorCore.mGetPlayer().targetid\nif tid ~= ryne and tid ~= gaia then return end\nif tid == forecast.p4_slot0 then return end\nlocal acr = TensorCore.API.TensorACR\nacr.setAutoSimTarget(0, tid)\nacr.setAutoSimTarget(1, tid == ryne and gaia or ryne)\nforecast.p4_slot0 = tid",
				executeType = 2,
				mechanicTime = 729.2,
				name = "AutoSim | P4 slots follow target",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 162,
				timerEndOffset = 250,
				timerStartOffset = -2,
				uuid = "4ee59857-13dd-d814-b494-9d4772371b3f",
				version = 2,
			},
		},
	},
	[179] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "b8488a49-4223-4d35-90e6-f5498299b6c0",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Buff holds",
				uuid = "9ea19a2f-71cc-8288-afd8-370fa58bda44",
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
							actionLua = "local forecast = data.fru_rpr_forecast\nif not forecast or forecast.version ~= 2 then return end\nlocal acr = TensorCore.API.TensorACR\nlocal actual = acr.getAutoSimTime()\nif actual <= 0 then return end\n-- Cover the predicted P5 return plus a 30s drift margin; release on observed P5 targetability.\nlocal p5Time = forecast.actual + 854.296 - forecast.anchor\nlocal deadline = Now() + (math.max(0, p5Time - actual) + 30) * 1000\nacr.holdActionUntil(118, deadline) -- Battle Voice\nacr.holdActionUntil(25785, deadline) -- Radiant Finale\nacr.holdActionUntil(101, deadline) -- Raging Strikes (Archer/Bard)\nacr.holdActionUntil(107, deadline) -- Barrage (Archer/Bard)\ndata.fru_brd_postct_buff_hold = true\nself.used = true",
							conditions = 
							{
								
								{
									"adf676e1-0b86-93ed-be95-6390d6562c71",
									true,
								},
							},
							name = "Hold Bard offensive buffs",
							uuid = "ffc203bd-9816-7bb3-9c35-c24489d4b821",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local forecast = data.fru_rpr_forecast\nif not forecast or forecast.version ~= 2 then return end\nlocal acr = TensorCore.API.TensorACR\nlocal actual = acr.getAutoSimTime()\nif actual <= 0 then return end\n-- Cover the predicted P5 return plus a 30s drift margin; release on observed P5 targetability.\nlocal p5Time = forecast.actual + 854.296 - forecast.anchor\nlocal deadline = Now() + (math.max(0, p5Time - actual) + 30) * 1000\nacr.holdActionUntil(24405, deadline) -- Arcane Circle (Reaper raid buff)\ndata.fru_rpr_postct_buff_hold = true\nself.used = true",
							conditions = 
							{
								
								{
									"d0b23c5c-aea1-651d-a2ac-37cfb55e3a51",
									true,
								},
							},
							name = "Hold Reaper Arcane Circle",
							uuid = "94f9d9d5-1e9a-0956-9794-58fcc8ccf7d0",
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
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Bard",
							uuid = "adf676e1-0b86-93ed-be95-6390d6562c71",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "REAPER",
							name = "Reaper",
							uuid = "d0b23c5c-aea1-651d-a2ac-37cfb55e3a51",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Buff holds",
				mechanicTime = 798.9,
				name = "[BRD/RPR] Hold post-CT buffs for P5",
				timeRange = true,
				timelineIndex = 179,
				timerEndOffset = 8,
				uuid = "8736ce0c-ce41-f567-8eb8-3d23bc25eb0e",
				version = 2,
			},
		},
	},
	[201] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "7726c250-91d6-12a8-aba9-13a212bc3fba",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "81ea29ec-0394-4bad-95de-3b0d317d4bd5",
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
							actionLua = "local forecast = data.fru_rpr_forecast\nif not forecast or forecast.version ~= 2 then return end\nlocal acr = TensorCore.API.TensorACR\nlocal actual = acr.getAutoSimTime()\nif actual <= 0 then return end\nforecast.apply(754.093, actual)\nforecast.phase = 4\nself.used = true",
							conditions = 
							{
								
								{
									"4c052ab3-8c31-c580-810d-e8bbf716a90d",
									true,
								},
							},
							name = "Apply P4 Crystallize Time return forecast",
							uuid = "031a94df-177c-0581-81ad-35e74b9fafbd",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Misc",
							conditions = 
							{
								
								{
									"31a0685e-64af-96a0-b840-5e97cb0a4bed",
									true,
								},
							},
							name = "Focus Gaia",
							setTarget = true,
							targetType = "Detection Target",
							uuid = "b63e3867-6c21-7847-85d9-68cf7bae1454",
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
							conditionLua = "local entity = TensorCore.mGetEntity(eventArgs.detectionTargetID)\nreturn entity ~= nil and entity.targetable == true",
							name = "Targetable",
							uuid = "7836b56f-ac03-bd46-95ca-70d6f1af54ba",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Filter",
							conditions = 
							{
								
								{
									"7836b56f-ac03-bd46-95ca-70d6f1af54ba",
									true,
								},
							},
							filterTargetType = "ContentID",
							name = "P4 Crystallize Time return present",
							partyTargetContentID = 12809,
							uuid = "7d0251e5-2300-f5b0-9e0e-49b81d8d4611",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Filter",
							conditions = 
							{
								
								{
									"7836b56f-ac03-bd46-95ca-70d6f1af54ba",
									true,
								},
							},
							filterTargetType = "ContentID",
							name = "Gaia present",
							partyTargetContentID = 9832,
							uuid = "31a0685e-64af-96a0-b840-5e97cb0a4bed",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Filter",
							conditions = 
							{
								
								{
									"7d0251e5-2300-f5b0-9e0e-49b81d8d4611",
									true,
								},
								
								{
									"31a0685e-64af-96a0-b840-5e97cb0a4bed",
									true,
								},
							},
							matchAnyBuff = true,
							name = "Either boss returned",
							partyTargetNumber = 0,
							uuid = "4c052ab3-8c31-c580-810d-e8bbf716a90d",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				mechanicTime = 850.2,
				name = "AutoSim | Reanchor P4 Crystallize Time return",
				timeRange = true,
				timelineIndex = 201,
				timerEndOffset = 12,
				timerStartOffset = -5,
				uuid = "4819d5b9-6211-3f62-b1f5-a8ff48c7c7f1",
				version = 2,
			},
		},
	},
	[207] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "a042c989-3191-1291-91fa-3011a50f2df6",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "16235971-8084-41d1-8612-6a80ec71f1b5",
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
							actionLua = "-- Expire only the four holds owned by the Bard post-CT reaction.\nif data.fru_brd_postct_buff_hold then\n    local acr = TensorCore.API.TensorACR\n    local releaseTime = Now()\n    acr.holdActionUntil(118, releaseTime)\n    acr.holdActionUntil(25785, releaseTime)\n    acr.holdActionUntil(101, releaseTime)\n    acr.holdActionUntil(107, releaseTime)\n    data.fru_brd_postct_buff_hold = nil\nend\n-- Expire the Arcane Circle hold owned by the Reaper post-CT action.\nif data.fru_rpr_postct_buff_hold then\n    TensorCore.API.TensorACR.holdActionUntil(24405, Now())\n    data.fru_rpr_postct_buff_hold = nil\nend\nlocal forecast = data.fru_rpr_forecast\nif not forecast or forecast.version ~= 2 then return end\nlocal acr = TensorCore.API.TensorACR\nlocal actual = acr.getAutoSimTime()\nif actual <= 0 then return end\nforecast.apply(854.296, actual)\nforecast.phase = 5\n-- Retire the P4 assignments when Pandora becomes targetable.\nacr.setAutoSimTarget(0, eventArgs.detectionTargetID)\nfor slot = 1, 5 do\n    acr.clearAutoSimTarget(slot)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"80e0af3c-d210-16e1-9a70-7cbe88e78cf2",
									true,
								},
							},
							name = "Apply P5 start forecast",
							uuid = "7c6abc07-4bca-36cb-a01b-02d973ff93dd",
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
							conditionLua = "local entity = TensorCore.mGetEntity(eventArgs.detectionTargetID)\nreturn entity ~= nil and entity.targetable == true",
							name = "Targetable",
							uuid = "1de89f86-6e5c-d8fc-a9c1-5a43f951ace9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Filter",
							conditions = 
							{
								
								{
									"1de89f86-6e5c-d8fc-a9c1-5a43f951ace9",
									true,
								},
							},
							filterTargetType = "ContentID",
							name = "P5 start present",
							partyTargetContentID = 13561,
							uuid = "80e0af3c-d210-16e1-9a70-7cbe88e78cf2",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				mechanicTime = 972.3,
				name = "AutoSim | Reanchor P5 start",
				timeRange = true,
				timelineIndex = 207,
				timerEndOffset = 12,
				timerStartOffset = -5,
				uuid = "ec9427e4-e3d8-88a6-8e2d-bc29afe530d6",
				version = 2,
			},
		},
	},
	inheritedProfiles = 
	{
	},
	timelineName = "fru",
	version = "1.0.5",
}



return tbl
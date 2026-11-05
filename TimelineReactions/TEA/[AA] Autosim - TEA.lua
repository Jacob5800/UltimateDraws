local tbl = 
{
	[2] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "69ff71b3-6aab-e82f-8b29-a16b3acc335c",
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
				execute = "-- [AA] Autosim - TEA: one shared AutoSim schedule for every AutoSim job (BRD, BLM, SAM, RPR, VPR).\n-- Clock: seconds since combat start (acr.getAutoSimTime()). In TensorReactions debug logs this is the\n-- SECOND timestamp column; the first column is the timeline clock, which jumps on syncs.\n-- Canonical times form a synthetic pull chained from phase anchors; each reanchor shifts the rest.\n-- Sources (AS-008/AS-009):\n--   User debug logs (map 887): clears 20260928-2320-887-8 (BRD) and 20261004-1702-887-5 (SGE),\n--   plus 213 progression pulls for fixed intervals (\"n\" = pulls). Positions come from the clears.\n--   FFLogs: 18 non-speed kills (encounter 1075, execution metric, --spread). Every fixed interval\n--   agrees with the user logs within 0.3s; FFLogs values are in brackets.\n-- Entities are matched by model ID (FFLogs gameID). Same-named helpers use model 9020.\n--   Living Liquid 11335 | Liquid Hand 11336 | Jagd Doll 11338 (content 9214)\n--   Brute Justice 11340 | Cruise Chaser 11342 | Alexander Prime 11347 | Perfect Alexander 11349\nlocal acr = TensorCore.API.TensorACR\nlocal job = TensorCore.mGetPlayer().job\n-- AS-011: user answer \"very important\" (1.4) for every job except Viper and Black Mage (1.1).\nlocal raidBuffWeight = (job == 41 or job == 25) and 1.1 or 1.4\n-- Role decides which P1/P2 target is hit while the bosses are apart (user strat, FFLogs agrees):\n-- melee on Living Liquid / Brute Justice, ranged on Liquid Hand / Cruise Chaser.\nlocal melee = job == 20 or job == 22 or job == 30 or job == 34 or job == 39 or job == 41\n-- Phase anchors (combat clock).\nlocal P1E = 111.360         -- Living Liquid untargetable (HP push); mean of the two clears (112.937, 109.782)\nlocal HE = P1E + 1.047      -- Liquid Hand untargetable; user n=57\nlocal P2S = P1E + 34.219    -- Brute Justice + Cruise Chaser targetable; user n=36 [Limit Cut 29.055 + ~5.2]\nlocal D1 = P2S + 136.750    -- first P2 boss dies (either one); clears 132.204 / 141.313\nlocal D2 = P2S + 140.900    -- second P2 boss dies; clears 140.126 / 141.735\nlocal P3S = D2 + 26.813     -- Alexander Prime targetable; user n=11 [26.701]\nlocal CC3U = P3S + 195.828  -- Cruise Chaser + Alexander Prime return; user n=4 [195.982]\nlocal BJ3U = P3S + 196.781  -- Brute Justice returns; user n=4 [196.913]\nlocal CC3D = P3S + 216.805  -- Cruise Chaser dies; user n=4 [215.560]\nlocal BJ3D = P3S + 228.054  -- Brute Justice dies; user n=2 [227.794]\nlocal P3E = P3S + 265.125   -- Alexander Prime untargetable (HP push); user n=2 [260.121]\nlocal P4S = P3E + 71.250    -- Perfect Alexander targetable; clears 71.281 / 71.234 [71.2]\nlocal KILL = P4S + 317.870  -- clears 317.532 / ~318.21 (kills 966.7 / 968.4) [FFLogs mean kill 970.2]\n-- P1 geometry (user clears, Living Liquid vs Hand distance): stacked within ~2y except two moves.\nlocal HU = 19.672           -- Liquid Hand appears; user n=213 [~19.8]\nlocal SEP1S, SEP1E = 25.3, 32.9   -- apart 13-18y (user logs 24.3-25.4 -> 32.3-33.5)\n-- The second move (apart 44.5-49.0; user logs 42.9-46.5 -> 45.7-50.7) falls inside the doll window.\nlocal DOLLU = 33.453        -- Jagd Dolls targetable; user n=211 [33.449]\nlocal DOLLE = 53.7          -- last doll untargetable; user n=679 dolls [44.9-53.7]; clears 51.532 / 52.953\n-- User (2026-10-20): while the dolls are alive there are no AoE windows and slot 1 (the other boss)\n-- has no DoT availability, so the sim does not plan hits on the bosses from the doll.\n-- User (2026-10-20): from the second Protean set every job focuses Living Liquid (ranged swap off the Hand).\nlocal PM = 106.008          -- second Protean set starts (Living Liquid cast 18466); clears 106.079 / 105.937\n-- P2 geometry (user clears + FFLogs who-hits-what): stacked until +23 and from +117.\nlocal P2SEP, P2JOIN = P2S + 23.0, P2S + 117.0\n\ndata.tea_autosim = {\n    version = 1,\n    melee = melee,\n    first_dead = \"BJ\",      -- which P2 boss dies first; replaced live by the first death\n    done = {},\n    kill_time = KILL,\n    -- HP-dependent anchors: timing is exact until the next one, then +/-10s (as in TOP).\n    hp_anchors = {P1E, D1, D2, CC3D, BJ3D, P3E, KILL},\n    anchors = {\n        p1_end = {t = P1E, model = 11335, up = false},\n        p2_start = {t = P2S, model = 11340, up = true},\n        p3_start = {t = P3S, model = 11347, up = true, after = \"p2_start\"},\n        cc3_death = {t = CC3D, model = 11342, up = false, after = \"p3_start\"},\n        bj3_death = {t = BJ3D, model = 11340, up = false, after = \"p3_start\"},\n        -- Alexander Prime also goes untargetable three times earlier in P3; only the drop after\n        -- Cruise Chaser's death is the HP push.\n        p3_end = {t = P3E, model = 11347, up = false, after = \"cc3_death\"},\n        p4_start = {t = P4S, model = 11349, up = true, after = \"p3_start\"},\n    },\n}\nlocal forecast = data.tea_autosim\nlocal aoeTypes = {\n    \"SelfCircle5Yd\", \"SelfCircle8Yd\", \"Cone8Yd\", \"Cone12Yd\", \"Line10Yd\", \"Line15Yd\", \"Line25Yd\",\n    \"TargetCircle5YdRange3Yd\", \"TargetCircle5YdRange5Yd\", \"TargetCircle5YdRange20Yd\",\n    \"TargetCircle5YdRange25Yd\", \"TargetCircle8YdRange25Yd\",\n}\n-- Builds the schedule for this role and the known P2 death order.\nfunction forecast.build()\n    local bjD = forecast.first_dead == \"BJ\" and D1 or D2\n    local ccD = forecast.first_dead == \"BJ\" and D2 or D1\n    local s = {\n        -- FullDowntime: every window where no enemy can be hit (user logs; FFLogs no-damage gaps agree).\n        {\"FullDowntime\", P1E, P2S, 1, 0},                       -- Limit Cut\n        {\"FullDowntime\", D2, P3S, 1, 0},                        -- Temporal Stasis\n        {\"FullDowntime\", P3S + 29.765, P3S + 89.438, 1, 0},     -- Inception; True Heart takes stray hits only\n        {\"FullDowntime\", P3S + 121.172, P3S + 163.172, 1, 0},   -- Wormhole\n        {\"FullDowntime\", P3S + 194.594, CC3U, 1, 0},\n        {\"FullDowntime\", P3E, P4S, 1, 0},                       -- Perfect Alexander transition\n        {\"FullDowntime\", P4S + 91.850, P4S + 106.165, 1, 0},    -- Fate Calibration alpha; clears 91.70/91.99, 106.03/106.30\n        {\"FullDowntime\", P4S + 179.840, P4S + 206.080, 1, 0},   -- Fate Calibration beta; clears 179.73/179.95, 205.97/206.19\n        -- No consistent melee or caster gap outside full downtime (>=70% of a role, 18 FFLogs kills).\n        -- P1 lifetimes are added by role below.\n        -- P2 slot 0 = this role's boss, slot 1 = the other one (assigned at P2 start).\n        {\"TargetLifetime\", P2S, melee and bjD or ccD, 1, 0},\n        {\"TargetLifetime\", P2S, melee and ccD or bjD, 1, 1},\n        {\"DotAvailability\", P2S, (melee and bjD or ccD) - 0.5, 1, 0},\n        {\"DotAvailability\", P2S, P2SEP, 1, 1},\n        {\"DotAvailability\", P2JOIN, (melee and ccD or bjD) - 0.5, 1, 1},\n        -- P3: Cruise Chaser, then Brute Justice, then Alexander Prime, ~18y apart, one at a time (AS-005).\n        -- Alexander Prime availability runs through the Inception/Wormhole FullDowntime (AS-013) but\n        -- stops while the party is on the adds (they are not hit then, FFLogs).\n        {\"TargetLifetime\", P3S, P3E, 1, 0},\n        {\"DotAvailability\", P3S, P3S + 194.594, 1, 0},\n        {\"DotAvailability\", BJ3D, P3E - 0.5, 1, 0},\n        {\"TargetLifetime\", CC3U, CC3D, 1, 1},\n        {\"DotAvailability\", CC3U, CC3D - 0.5, 1, 1},\n        {\"TargetLifetime\", BJ3U, BJ3D, 1, 2},\n        {\"DotAvailability\", CC3D, BJ3D - 0.5, 1, 2},\n        -- P4 Perfect Alexander; availability straight through Fate Calibration (AS-013).\n        {\"TargetLifetime\", P4S, KILL, 1, 0},\n        {\"DotAvailability\", P4S, KILL, 1, 0},\n        -- Raid buffs: first party application to last application + 20s, mean of the two clears,\n        -- phase-relative. The P2 late window is clipped to the second P2 death.\n        {\"RaidBuff\", 4.040, 27.975, raidBuffWeight, 0},\n        {\"RaidBuff\", P2S + 1.399, P2S + 22.904, raidBuffWeight, 0},\n        {\"RaidBuff\", P2S + 122.219, D2, raidBuffWeight, 0},\n        {\"RaidBuff\", P3S + 90.398, P3S + 115.658, raidBuffWeight, 0},\n        {\"RaidBuff\", P3S + 210.638, P3S + 238.153, raidBuffWeight, 0},\n        {\"RaidBuff\", P4S + 2.900, P4S + 28.595, raidBuffWeight, 0},\n        {\"RaidBuff\", P4S + 122.995, P4S + 150.875, raidBuffWeight, 0},\n        {\"RaidBuff\", P4S + 271.275, P4S + 304.830, raidBuffWeight, 0},\n    }\n    -- P1 slots (user 2026-10-20): slot 0 = this role's target, melee Living Liquid and ranged the\n    -- Liquid Hand once it appears, then Living Liquid for everyone from the second Protean set (PM);\n    -- slot 1 = the other boss. Slot 0 stays available the whole phase (user strat; FFLogs: melee\n    -- 60-95% Living Liquid, ranged 50-85% Hand). Slot 1 is available only while the bosses are\n    -- stacked and no doll is alive.\n    if melee then\n        s[#s + 1] = {\"TargetLifetime\", 0, P1E, 1, 0}\n        s[#s + 1] = {\"TargetLifetime\", HU, HE, 1, 1}\n        s[#s + 1] = {\"DotAvailability\", 0, P1E - 0.5, 1, 0}\n        s[#s + 1] = {\"DotAvailability\", DOLLE, P1E - 0.5, 1, 1}\n    else\n        -- Slot 0: Living Liquid until the Hand appears, the Hand until PM, then Living Liquid again.\n        -- Slot 1 holds the other one. Each slot gets a new lifetime where its enemy changes (AS-002).\n        s[#s + 1] = {\"TargetLifetime\", 0, HU, 1, 0}\n        s[#s + 1] = {\"TargetLifetime\", HU, PM, 1, 0}\n        s[#s + 1] = {\"TargetLifetime\", PM, P1E, 1, 0}\n        s[#s + 1] = {\"TargetLifetime\", HU, PM, 1, 1}\n        s[#s + 1] = {\"TargetLifetime\", PM, HE, 1, 1}\n        s[#s + 1] = {\"DotAvailability\", 0, HU, 1, 0}\n        s[#s + 1] = {\"DotAvailability\", HU, PM, 1, 0}\n        s[#s + 1] = {\"DotAvailability\", PM, P1E - 0.5, 1, 0}\n        s[#s + 1] = {\"DotAvailability\", DOLLE, PM, 1, 1}\n        s[#s + 1] = {\"DotAvailability\", PM, P1E - 0.5, 1, 1}\n    end\n    s[#s + 1] = {\"DotAvailability\", HU, SEP1S, 1, 1}\n    s[#s + 1] = {\"DotAvailability\", SEP1E, DOLLU, 1, 1}\n    -- AoE windows (AS-003/004/006): every shape gets the same count; each ACR ignores shapes it\n    -- does not use. None while the Jagd Dolls are alive (DOLLU-DOLLE, user); dolls are on the DoT\n    -- blacklist, so they need no availability (AS-003 exception).\n    local aoe = {\n        {HU, SEP1S, 2},             -- Living Liquid + Hand at the centre\n        {SEP1E, DOLLU, 2},\n        {DOLLE, P1E - 0.5, 2},\n        {P2S, P2SEP, 2},            -- Brute Justice + Cruise Chaser stacked\n        {P2JOIN, D1 - 0.5, 2},\n    }\n    for i = 1, #aoeTypes do\n        for k = 1, #aoe do\n            s[#s + 1] = {aoeTypes[i], aoe[k][1], aoe[k][2], aoe[k][3], 0}\n        end\n    end\n    forecast.schedule = s\nend\nfunction forecast.apply(anchor, actual)\n    local api = TensorCore.API.TensorACR\n    forecast.build()\n    api.setAutoSimKillTime(actual + forecast.kill_time - anchor)\n    api.clearAutoSimPhases(\"FullDowntime\")\n    api.clearAutoSimPhases(\"CasterDowntime\")\n    api.clearAutoSimPhases(\"RaidBuff\")\n    for i = 1, #aoeTypes do api.clearAutoSimPhases(aoeTypes[i]) end\n    for slot = 0, 5 do\n        api.clearAutoSimPhases(\"TargetLifetime\", slot)\n        api.clearAutoSimPhases(\"DotAvailability\", slot)\n        if job == 25 then api.clearAutoSimPhases(\"DotAvailability\", slot, 1) end\n    end\n    local s = forecast.schedule\n    for i = 1, #s do\n        local w = s[i]\n        if w[3] > anchor then\n            -- Begin downtime 0.5s early to avoid GCDs resolving after uptime ends.\n            local sourceStart = w[2]\n            if w[1] == \"FullDowntime\" then sourceStart = sourceStart - 0.5 end\n            local start = actual + math.max(0, sourceStart - anchor)\n            -- A surviving target keeps its original lifetime start, so its DoTs carry over.\n            if w[1] == \"TargetLifetime\" then start = actual + w[2] - anchor end\n            local finish = actual + w[3] - anchor\n            api.addAutoSimPhase(w[1], start, finish, w[4], w[5])\n            -- CasterDowntime mirrors FullDowntime (leaving the ground field), as in TOP and FRU.\n            if w[1] == \"FullDowntime\" then api.addAutoSimPhase(\"CasterDowntime\", start, finish, 1, 0) end\n            -- AoE Thunder has independent availability but shares the primary target lifetime.\n            if job == 25 and w[1] == \"DotAvailability\" then\n                api.addAutoSimPhase(w[1], start, finish, w[4], w[5], 1)\n            end\n        end\n    end\n    -- Exact (+/-0.5s) until the next HP-dependent anchor, +/-10s from it on.\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(actual, 0.5)\n    for i = 1, #forecast.hp_anchors do\n        local h = forecast.hp_anchors[i]\n        if h > anchor + 0.01 then\n            api.addAutoSimUncertainty(actual + h - anchor, 10)\n            break\n        end\n    end\n    forecast.anchor = anchor\n    forecast.actual = actual\nend\nlocal function findModel(contentIDs, model)\n    for id, _ in pairs(TensorCore.entityList(\"contentid=\" .. contentIDs)) do\n        if Argus.getEntityModel(id) == model then return id end\n    end\nend\n-- Pins P1 slots: slot 0 = Living Liquid for melee (and for everyone once forecast.p1_merged is set at\n-- the second Protean set), otherwise the Liquid Hand; slot 1 = the other one. Called when the Hand\n-- appears, by \"AutoSim | Doll slot 0\" when the player leaves a doll, and by \"AutoSim | P1 merge on\n-- Living Liquid\".\nfunction forecast.assignP1(handID)\n    local api = TensorCore.API.TensorACR\n    forecast.ll = forecast.ll or findModel(\"9211\", 11335)\n    if handID then forecast.hand = handID end\n    local onLL = forecast.melee or forecast.p1_merged\n    local first = onLL and forecast.ll or forecast.hand\n    local second = onLL and forecast.hand or forecast.ll\n    if first then api.setAutoSimTarget(0, first) end\n    if second then api.setAutoSimTarget(1, second) end\nend\n-- Pins P2 slots by role: slot 0 = Brute Justice for melee, Cruise Chaser for ranged.\nfunction forecast.assignP2()\n    local api = TensorCore.API.TensorACR\n    local first = forecast.melee and forecast.bj or forecast.cc\n    local second = forecast.melee and forecast.cc or forecast.bj\n    if first then api.setAutoSimTarget(0, first) end\n    if second then api.setAutoSimTarget(1, second) end\nend\nfunction forecast.match(key, args)\n    local a = forecast.anchors[key]\n    if a == nil or forecast.done[key] or args.isTargetable ~= a.up then return false end\n    if a.after and not forecast.done[a.after] then return false end\n    return Argus.getEntityModel(args.entityID) == a.model\nend\nfunction forecast.reanchor(key, entityID)\n    local api = TensorCore.API.TensorACR\n    local actual = api.getAutoSimTime()\n    if actual <= 0 then return end\n    local a = forecast.anchors[key]\n    forecast.done[key] = true\n    if key == \"p2_start\" then\n        forecast.bj = entityID\n        forecast.cc = findModel(\"9218\", 11342)\n        forecast.assignP2()\n    elseif key == \"p3_start\" then\n        -- The P2 entities return in P3: slot 0 = Alexander Prime, 1 = Cruise Chaser, 2 = Brute Justice.\n        api.setAutoSimTarget(0, entityID)\n        if forecast.cc then api.setAutoSimTarget(1, forecast.cc) end\n        if forecast.bj then api.setAutoSimTarget(2, forecast.bj) end\n    elseif key == \"p4_start\" then\n        api.setAutoSimTarget(0, entityID)\n        api.clearAutoSimTarget(1)\n        api.clearAutoSimTarget(2)\n    end\n    forecast.apply(a.t, actual)\nend\n-- P2 deaths: either boss may die first. The first death fixes the order, then both re-anchor.\nfunction forecast.matchP2Death(args)\n    if args.isTargetable or not forecast.done.p2_start or forecast.done.p3_start then return false end\n    if forecast.done.p2_second then return false end\n    local model = Argus.getEntityModel(args.entityID)\n    if model ~= 11340 and model ~= 11342 then return false end\n    return not (forecast.done.p2_first and forecast.first_model == model)\nend\nfunction forecast.p2Death(entityID)\n    local api = TensorCore.API.TensorACR\n    local actual = api.getAutoSimTime()\n    if actual <= 0 then return end\n    local model = Argus.getEntityModel(entityID)\n    if not forecast.done.p2_first then\n        forecast.done.p2_first = true\n        forecast.first_model = model\n        forecast.first_dead = model == 11340 and \"BJ\" or \"CC\"\n        forecast.apply(D1, actual)\n    else\n        forecast.done.p2_second = true\n        forecast.apply(D2, actual)\n    end\nend\n-- Jagd Dolls: never DoT them (user). Clear last pull's doll AoE blacklist entry.\npcall(acr.deleteAOEBlacklistEntry, 9214)\nlocal ok, dotEntry = pcall(acr.addBlacklistEntry, 9214, \"TEA Jagd Doll\")\nif ok and dotEntry then dotEntry.enabled = true; dotEntry.allowIfTarget=false; dotEntry.allowSmartDoT=false end\n-- Plasma Shield (P2, content 8658, alive 3-4s): never DoT it and leave it out of AoE counts (user 2026-10-20).\nlocal okShieldDot, shieldDot = pcall(acr.addBlacklistEntry, 8658, \"TEA Plasma Shield\")\nif okShieldDot and shieldDot then shieldDot.enabled = true end\nlocal okShieldAoe, shieldAoe = pcall(acr.addAOEBlacklistEntry, 8658, \"TEA Plasma Shield\")\nif okShieldAoe and shieldAoe then shieldAoe.enabled = true end\nforecast.apply(0, 0)\nself.used = true",
				executeType = 2,
				mechanicTime = 11.4,
				name = "AutoSim | TEA baseline",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = -11.4,
				timerStartOffset = -71.4,
				uuid = "709a8f20-4dde-89fd-964a-5b969541983b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Setup and cleanup",
				uuid = "a786344e-f67c-57eb-b121-a04570b9a0b5",
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
				displayPath = "AutoSim/Setup and cleanup",
				execute = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=887 then return end\ngStartCombat=false\nif AnyoneCore.Settings.PrepullHelper and AnyoneCore.Settings.DutyHelper then\n AnyoneCore.Settings.PrepullHelper.enabled=false\n AnyoneCore.Settings.DutyHelper.enabled=false\n self.used=true\nend",
				executeType = 2,
				mechanicTime = 11.4,
				name = "AutoSim | Disable encounter helpers",
				timeRange = true,
				timelineIndex = 2,
				timerStartOffset = -120,
				uuid = "91b0136a-6e77-05a2-a7eb-9928fff44483",
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
				displayPath = "AutoSim/Setup and cleanup",
				eventType = 9,
				execute = "local old=eventArgs.oldData\nlocal s=old and old.teaDollSafety\nif s then s.restore() end\nself.used=true",
				executeType = 2,
				mechanicTime = 11.4,
				name = "AutoSim | Doll safety wipe cleanup",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1400,
				timerStartOffset = -120,
				uuid = "215ce8e3-5fc9-b8f2-bd23-ddf5b349c900",
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
				displayPath = "AutoSim/Setup and cleanup",
				eventType = 11,
				execute = "if eventArgs.oldMapID~=887 then self.used=true;return end\nlocal s=data.teaDollSafety\nif s then s.restore() end\nself.used=true",
				executeType = 2,
				mechanicTime = 11.4,
				name = "AutoSim | Doll safety map cleanup",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1400,
				timerStartOffset = -120,
				uuid = "048bb50b-dbbe-0406-acc5-4b31671ee047",
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
							actionLua = "local s=data.teaPrecast;if s then s.cancelled=true end\nself.used=true",
							conditions = 
							{
								
								{
									"3a4f4cc8-9de8-b2cf-91c5-0091c3975944",
									true,
								},
							},
							name = "Cancel countdown selection",
							uuid = "a0b42b55-e5e1-c443-846a-44f583bf0847",
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
							conditionType = 8,
							localmapid = 887,
							name = "TEA",
							uuid = "3a4f4cc8-9de8-b2cf-91c5-0091c3975944",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Setup and cleanup",
				eventType = 17,
				loop = true,
				mechanicTime = 11.4,
				name = "[TEA] Countdown target cancellation",
				timeRange = true,
				timelineIndex = 2,
				timerStartOffset = -120,
				uuid = "5134a3c4-c99c-f555-a8be-b46970b3fe89",
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
							actionLua = "gStartCombat=false\nAnyoneCore.Settings.PrepullHelper.enabled=false\nAnyoneCore.Settings.DutyHelper.enabled=false\ndata.teaPrecast={deadline=eventArgs.timeQueued+eventArgs.time*1000,cancelled=false}\nTensorCore.timelineLogToFile('[TEA Opener] Start Combat / Prepull / Duty Helper off before boss target request\\n')\nself.used=true",
							conditions = 
							{
								
								{
									"35c327df-b68f-7409-9872-b4ad66da627a",
									true,
								},
								
								{
									"3aae731d-fa21-7c91-b837-749d3cbfda0d",
									false,
								},
							},
							name = "Keep Start Combat off",
							uuid = "b7d8c81f-491b-78d0-860d-0d114c2d6d8d",
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
									"35c327df-b68f-7409-9872-b4ad66da627a",
									true,
								},
								
								{
									"3aae731d-fa21-7c91-b837-749d3cbfda0d",
									false,
								},
								
								{
									"e04e4f13-16ec-71fa-bfed-eedbcede45e3",
									true,
								},
								
								{
									"554b8c4c-40ac-6033-a45b-7bc36805f2d5",
									true,
								},
							},
							name = "Select boss for precast",
							setTarget = true,
							targetType = "Detection Target",
							uuid = "0011c2fe-faae-b1fc-8c47-bf76d61a4c30",
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
							conditionType = 8,
							localmapid = 887,
							name = "TEA",
							uuid = "35c327df-b68f-7409-9872-b4ad66da627a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 7,
							uuid = "3aae731d-fa21-7c91-b837-749d3cbfda0d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.teaPrecast\nreturn s and not s.cancelled and Now()<s.deadline",
							name = "Countdown still active",
							uuid = "e04e4f13-16ec-71fa-bfed-eedbcede45e3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local e=TensorCore.mGetEntity(eventArgs.detectionTargetID)\nlocal p=TensorCore.mGetPlayer()\nreturn e and p and e.contentid==9211 and e.attackable and e.targetable and e.hp.current>0 and TensorCore.getDistance2d(p.pos,e.pos)<=60+e.hitradius",
							name = "Nearby Living Liquid",
							uuid = "48922b3e-2bd4-21dd-85d1-a5cfdd4c73b9",
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
									"48922b3e-2bd4-21dd-85d1-a5cfdd4c73b9",
									true,
								},
							},
							filterTargetType = "Enemy",
							name = "Nearest eligible boss",
							uuid = "554b8c4c-40ac-6033-a45b-7bc36805f2d5",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Setup and cleanup",
				eventType = 16,
				loop = true,
				mechanicTime = 11.4,
				name = "[TEA] Countdown boss targeting",
				timeRange = true,
				timelineIndex = 2,
				timerStartOffset = -120,
				uuid = "f12d2912-23be-8592-a242-3a7b1c11a4af",
				version = 2,
			},
		},
	},
	[3] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "46e8d0d6-5a5a-7872-80b2-58c5366ca6c8",
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
							actionLua = "data.tea_autosim.assignP1(eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"9eea18f7-a10a-3d5c-8c1e-630a765ef963",
									true,
								},
							},
							name = "Pin Living Liquid and Hand slots",
							uuid = "2f0bf463-373e-5fb9-91a0-0f219c1331e6",
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
							conditionLua = "local forecast = data.tea_autosim\nreturn forecast ~= nil and forecast.version == 1 and eventArgs.isTargetable and Argus.getEntityModel(eventArgs.entityID) == 11336",
							dequeueIfLuaFalse = true,
							name = "Liquid Hand appears",
							uuid = "9eea18f7-a10a-3d5c-8c1e-630a765ef963",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim",
				eventType = 26,
				mechanicTime = 19.5,
				name = "AutoSim | P1 Hand slots",
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = 10,
				timerStartOffset = -5,
				uuid = "712dd19b-d442-5cb8-a777-94702d524f37",
				version = 2,
			},
		},
	},
	[4] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "81298406-3c84-60bd-ab9f-367bef4e1876",
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
							actionLua = "-- The AoE blacklist is per content ID, so this covers all four dolls; the baseline removes it\n-- again at the next countdown.\nlocal entry = TensorCore.API.TensorACR.addAOEBlacklistEntry(9214, \"TEA Jagd Doll <=26%\")\nentry.enabled = true\ndata.tea_autosim.doll_aoe_blacklisted = true\nself.used = true",
							conditions = 
							{
								
								{
									"9a6ace5a-c813-3cea-9a72-c027cc3cf668",
									true,
								},
							},
							name = "AoE blacklist Jagd Dolls",
							uuid = "c6046d04-003f-31c0-9450-20c35b8aedae",
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
							conditionLua = "-- User: doll damage must stop at 24.9% HP. AutoSim cannot stop attacks; this keeps cleaves off\n-- the dolls once this player's doll (target, or a doll within 8y) is at 26% or lower.\nlocal forecast = data.tea_autosim\nif forecast == nil or forecast.version ~= 1 or forecast.doll_aoe_blacklisted then return false end\nlocal player = TensorCore.mGetPlayer()\nfor id, doll in pairs(TensorCore.entityList(\"contentid=9214\")) do\n    local hp = doll.hp and doll.hp.percent\n    if hp and hp > 0 and hp <= 26 then\n        if player.targetid == id then return true end\n        local dx, dz = doll.pos.x - player.pos.x, doll.pos.z - player.pos.z\n        if dx * dx + dz * dz <= 64 then return true end\n    end\nend\nreturn false",
							dequeueIfLuaFalse = true,
							name = "Own doll at 26% or lower",
							uuid = "9a6ace5a-c813-3cea-9a72-c027cc3cf668",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim",
				enabled = false,
				mechanicTime = 35.8,
				name = "AutoSim | Legacy doll AoE stop (replaced)",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 4,
				timerEndOffset = 30,
				timerStartOffset = -2,
				uuid = "483d71c7-069f-fc72-97ea-f576ea25d1e9",
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
				execute = "-- TEA P1 only. LPDU: relative W=M1, S=M2, E=R1, N=R2.\n-- Relative north is the open tornado side. Actual personal tether wins once established.\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=887 then return end\nlocal api=TensorCore.API.TensorACR\nlocal now=Now()\nlocal S=data.teaDollSafety\nif not S then\n S={finished=false,qt={},nextTick=0}\n data.teaDollSafety=S\n function S.log(decision,desired,reason,hp)\n  local player=TensorCore.mGetPlayer()\n  local current=player and player.targetid or 0\n  local key=decision..\":\"..tostring(desired)..\":\"..tostring(current)..\":\"..reason\n  if key==S.lastLog and Now()-(S.lastLogAt or 0)<2000 then return end\n  S.lastLog=key;S.lastLogAt=Now()\n  local c=player and player.castinginfo\n  TensorCore.timelineLogToFile(string.format(\"[TEA Doll] role=%s job=%s decision=%s intended=%s current=%s reason=%s hp=%s cast=%s cutoff=24.9 safety=true\\n\",tostring(S.role),tostring(player and player.job),decision,tostring(desired),tostring(current),reason,tostring(hp),tostring(c and c.castingid)))\n end\n function S.restore()\n  for var,old in pairs(S.qt) do\n   -- Do not overwrite a later user change. Only revert values this controller forced off.\n   if _G[var]==false then _G[var]=old end\n  end\n  S.qt={};S.qtCaptured=nil\n end\n function S.restrict()\n  if not S.qtCaptured then\n   for _,toggle in ipairs(api.getQuickToggles() or {}) do\n    local suffix=toggle.var:match(\"_([^_]+)$\")\n    if suffix==\"CD\" or suffix==\"Burn\" or suffix==\"AOE\" or suffix==\"SmartAOE\" then\n     local value=_G[toggle.var]\n     if type(value)==\"boolean\" then S.qt[toggle.var]=value;_G[toggle.var]=false end\n    end\n   end\n   S.qtCaptured=true\n  end\n  -- Verified ActionList IDs; short holds expire naturally, without resetting anyone else's holds.\n  if Now()<(S.nextHold or 0) then return end\n  S.nextHold=Now()+200\n  for _,id in ipairs({16507,16505,7422,162,7487,7489,16486,7496,16481,16487,16496,25784,7404,3558,3562,24398,24393,24380,24382,24383,34626,34631,34633}) do\n   api.holdActionUntil(id,Now()+500)\n  end\n end\n function S.boss()\n  local f=data.tea_autosim\n  local e=f and f.ll and TensorCore.mGetEntity(f.ll)\n  if e and e.contentid==9211 and e.targetable and e.hp.current>0 then return e end\n  for id in pairs(TensorCore.entityList(\"contentid=9211\")) do\n   e=TensorCore.mGetEntity(id)\n   if e and Argus.getEntityModel(id)==11335 and e.targetable and e.hp.current>0 then return e end\n  end\n end\n function S.select(e,reason,hp)\n  local player=TensorCore.mGetPlayer()\n  if not e or not e.targetable or not e.attackable or e.hp.current<=0 then S.log(\"blocked\",e and e.id,\"target unavailable\",hp);return false end\n  if TensorCore.getDistance2d(player.pos,e.pos)>30+e.hitradius then S.log(\"blocked\",e.id,\"out of target range\",hp);return false end\n  local f=data.tea_autosim\n  if f then f.doll_slot=e.contentid==9214 and e.id or nil end\n  api.setAutoSimTarget(0,e.id)\n  api.clearAutoSimTarget(1)\n  if player.targetid==e.id then\n   if S.pending==e.id then S.log(\"confirmed\",e.id,reason,hp);S.pending=nil end\n   return true\n  end\n  if S.pending~=e.id or Now()-(S.requestAt or 0)>=250 then\n   Player:SetTarget(e.id);S.pending=e.id;S.requestAt=Now()\n   S.log(\"requested\",e.id,reason,hp)\n  end\n  return false\n end\n function S.finish(reason,hp)\n  S.finished=true\n  -- Cutoff takes precedence over cast protection. Never resume attacking this doll.\n  local player=TensorCore.mGetPlayer()\n  local c=player.castinginfo\n  local current=TensorCore.mGetTarget()\n  local castOnDoll=current and current.contentid==9214\n  for _,id in ipairs(c and c.castingtargets or {}) do if id==S.doll then castOnDoll=true end end\n  if castOnDoll and c and c.castingid~=0 then ActionList:StopCasting();S.log(\"stop cast\",S.doll,reason,hp) end\n  local boss=S.boss()\n  if boss then\n   if S.select(boss,reason,hp) then S.restore();S.returned=true end\n  else\n   -- No legal return target: selecting self removes the doll as an attack target.\n   if player.targetid==S.doll then Player:SetTarget(player.id);S.log(\"requested\",player.id,\"boss unavailable; remove doll target\",hp) end\n  end\n end\n function S.park(reason)\n  local player=TensorCore.mGetPlayer()\n  local current=TensorCore.mGetTarget()\n  if current and current.contentid==9214 then\n   if player.castinginfo and player.castinginfo.castingid~=0 then ActionList:StopCasting() end\n   local boss=S.boss()\n   if boss then S.select(boss,reason,current.hp.percent) else Player:SetTarget(player.id) end\n  end\n  S.restore()\n end\n function S.assign()\n  local R=AnyoneCore.Roster\n  if not R.current() or not R.isReady() then S.log(\"waiting\",nil,\"roster not ready\");return end\n  S.role=R.mySlot()\n  local side={M1=3,M2=2,R1=1,R2=0}\n  if side[S.role]==nil then S.log(\"inactive\",nil,\"not a DPS slot\");return end\n  local dolls,rages={},{}\n  for id in pairs(TensorCore.entityList(\"contentid=9214\")) do\n   local e=TensorCore.mGetEntity(id)\n   if e and Argus.getEntityModel(id)==11338 and e.targetable and e.hp.current>0 then dolls[#dolls+1]=e end\n  end\n  for id in pairs(TensorCore.entityList(\"contentid=9213\")) do\n   local e=TensorCore.mGetEntity(id)\n   if e and Argus.getEntityModel(id)==11337 then rages[#rages+1]=e end\n  end\n  if #dolls~=4 or #rages~=3 then S.log(\"waiting\",nil,\"need four dolls and three tornadoes\");return end\n  local ax,az=0,0\n  for _,e in ipairs(rages) do ax=ax+e.pos.x/3;az=az+e.pos.z/3 end\n  local south,best\n  for _,e in ipairs(rages) do\n   local d=(e.pos.x-ax)^2+(e.pos.z-az)^2\n   if not best or d<best then south=e;best=d end\n  end\n  local sx,sz=south.pos.x-100,south.pos.z-100\n  local len=math.sqrt(sx*sx+sz*sz);if len<10 then S.log(\"blocked\",nil,\"invalid tornado geometry\");return end\n  local nx,nz=-sx/len,-sz/len\n  -- East is clockwise from relative north in game X/Z coordinates.\n  local ex,ez=-nz,nx\n  local vectors={{nx,nz},{ex,ez},{-nx,-nz},{-ex,-ez}}\n  local chosen,used={},{}\n  for i,v in ipairs(vectors) do\n   local pick,score\n   for _,e in ipairs(dolls) do\n    local dx,dz=e.pos.x-100,e.pos.z-100\n    local dot=(dx*v[1]+dz*v[2])/math.sqrt(dx*dx+dz*dz)\n    if not score or dot>score then pick=e;score=dot end\n   end\n   if not pick or score<0.8 or used[pick.id] then S.log(\"blocked\",nil,\"ambiguous doll geometry\");return end\n   chosen[i]=pick.id;used[pick.id]=true\n  end\n  S.doll=chosen[side[S.role]+1]\n  S.log(\"assigned\",S.doll,\"LPDU relative cardinal\")\n end\nend\n-- Narrow polling: cheap completion/clock checks before entity scans.\nif now<S.nextTick then return end\nS.nextTick=now+50\nif S.returned then\n if api.getAutoSimTime()>65 then\n  local f=data.tea_autosim\n  if f then f.doll_slot=nil;f.assignP1() end\n  self.used=true;return\n end\n local current=TensorCore.mGetTarget()\n if current and current.contentid==9214 then S.finish(\"completed doll reselected\",current.hp.percent) end\n return\nend\nif not p.alive then S.restore();return end\nlocal clock=api.getAutoSimTime()\nif clock<30 or not p.incombat then S.restore();return end\nif clock>65 then if S.doll then S.finish(\"doll window expired\") else S.restore() end;return end\nif not S.doll then S.assign();if not S.doll then S.park(\"assignment not ready\");return end end\nif not S.blacklistReady then\n local dot=api.addBlacklistEntry(9214,\"TEA Jagd Doll\")\n local aoe=api.addAOEBlacklistEntry(9214,\"TEA Jagd Doll\")\n if not dot or not aoe then S.log(\"blocked\",S.doll,\"safety blacklist unavailable\");S.park(\"safety unavailable\");return end\n dot.enabled=true;dot.allowIfTarget=false;dot.allowSmartDoT=false;aoe.enabled=true\n S.blacklistReady=true\nend\nlocal doll=TensorCore.mGetEntity(S.doll)\nif S.finished then S.finish(\"cutoff latched\",doll and doll.hp.percent);return end\nif not doll or not doll.targetable or doll.hp.current<=0 then S.finish(\"doll removed/fed\",doll and doll.hp.percent);return end\nlocal hp=doll.hp.percent\nif hp<=24.9 then S.log(\"cutoff\",S.doll,\"HP <= 24.9\",hp);S.finish(\"HP <= 24.9\",hp);return end\n-- Do not steal a doll held by someone else. A unique actual personal tether is authoritative.\nlocal personal\nfor _,tether in ipairs(Argus.getTethersOnEnt(p.id)) do\n local e=tether.partnerid and TensorCore.mGetEntity(tether.partnerid)\n if e and e.contentid==9214 then\n  if personal and personal~=e.id then S.log(\"blocked\",S.doll,\"multiple personal doll tethers\",hp);S.park(\"ambiguous personal tether\");return end\n  personal=e.id\n end\nend\nif personal and personal~=S.doll then\n S.log(\"assignment corrected\",personal,\"actual personal doll tether\",hp)\n S.doll=personal;return\nend\nfor _,tether in ipairs(Argus.getTethersOnEnt(doll.id)) do\n if tether.partnerid and tether.partnerid~=p.id then S.log(\"blocked\",S.doll,\"doll tether owned by another player\",hp);S.park(\"doll owned by another player\");return end\nend\nlocal c=p.castinginfo\nif c and c.castingid~=0 and p.targetid~=S.doll then S.log(\"waiting\",S.doll,\"preserve current non-doll cast\",hp);return end\nS.restrict()\nif S.select(doll,\"damage assigned doll\",hp) then S.log(\"attacking\",S.doll,\"cutoff armed\",hp) end\n-- Long-running controller deliberately remains incomplete until its mechanic window ends.\n",
				executeType = 2,
				mechanicTime = 35.8,
				name = "AutoSim | LPDU doll targeting and safety",
				timeRange = true,
				timelineIndex = 4,
				timerEndOffset = 40,
				timerStartOffset = -5.8,
				uuid = "7baf1a35-a35c-f748-8ad2-3a27c2499a97",
				version = 2,
			},
		},
	},
	[25] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "5dbf4192-16d0-562d-b73d-e0ce92abd18a",
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
							actionLua = "-- User (2026-10-20): from the second Protean set every job focuses Living Liquid. A doll in slot 0\n-- is left alone; \"AutoSim | Doll slot 0\" restores the merged slots when the player leaves it.\nlocal forecast = data.tea_autosim\nforecast.p1_merged = true\nif forecast.doll_slot == nil then forecast.assignP1() end\nself.used = true",
							conditions = 
							{
								
								{
									"06ef8dc7-d6ba-6fd5-95da-ff4dde8ff0f4",
									true,
								},
							},
							name = "Focus Living Liquid for every job",
							uuid = "af1a1c8a-0351-87b1-8d41-26373c55bd47",
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
							conditionLua = "local forecast = data.tea_autosim\nreturn forecast ~= nil and forecast.version == 1 and not forecast.p1_merged\n    and eventArgs.spellID == 18466 and Argus.getEntityModel(eventArgs.entityID) == 11335",
							dequeueIfLuaFalse = true,
							name = "Second Protean set starts",
							uuid = "06ef8dc7-d6ba-6fd5-95da-ff4dde8ff0f4",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim",
				eventType = 2,
				mechanicTime = 107,
				name = "AutoSim | P1 merge on Living Liquid",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = 4,
				timerStartOffset = -6,
				uuid = "320c4bd4-3cb7-e5d2-8ddb-e377a70bfeff",
				version = 2,
			},
		},
	},
	[26] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "e159a580-b930-5bae-9a56-ea72e177be29",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "ebcb99bb-f018-4791-a8b0-eaf2b2a07245",
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
							actionLua = "data.tea_autosim.reanchor(\"p1_end\", eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"e1bbe448-c799-c44b-b282-2eb9d0f4f7b6",
									true,
								},
							},
							name = "Apply Living Liquid HP push forecast",
							uuid = "3d078812-81b9-d973-ae51-c9435056deb3",
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
							conditionLua = "local forecast = data.tea_autosim\nreturn forecast ~= nil and forecast.version == 1 and forecast.match(\"p1_end\", eventArgs)",
							dequeueIfLuaFalse = true,
							name = "Living Liquid HP push",
							uuid = "e1bbe448-c799-c44b-b282-2eb9d0f4f7b6",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				eventType = 26,
				mechanicTime = 109,
				name = "AutoSim | Reanchor P1 end",
				timeRange = true,
				timelineIndex = 26,
				timerEndOffset = 40,
				timerStartOffset = -15,
				uuid = "96c307e5-4f4e-9b3b-b1f8-58c3e1c2c87a",
				version = 2,
			},
		},
	},
	[58] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "afd35970-f995-5d79-9e35-668797f06e51",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "aa7ce390-5fac-d74f-9856-4041184af710",
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
							actionLua = "data.tea_autosim.reanchor(\"p2_start\", eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"2d234bf9-7ac4-aa92-82f9-6c801bb1d095",
									true,
								},
							},
							name = "Apply P2 start forecast",
							uuid = "635cb1fc-3890-d486-b53c-63d1384f1927",
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
							conditionLua = "local forecast = data.tea_autosim\nreturn forecast ~= nil and forecast.version == 1 and forecast.match(\"p2_start\", eventArgs)",
							dequeueIfLuaFalse = true,
							name = "P2 start",
							uuid = "2d234bf9-7ac4-aa92-82f9-6c801bb1d095",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				eventType = 26,
				mechanicTime = 229.1,
				name = "AutoSim | Reanchor P2 start",
				timeRange = true,
				timelineIndex = 58,
				timerEndOffset = 15,
				timerStartOffset = -10,
				uuid = "f958bcb0-c312-92c2-a507-90aadeb947a3",
				version = 2,
			},
		},
	},
	[73] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "cde6f561-5de8-0b59-8a8e-a6de9f3e6747",
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
							actionLua = "-- User (2026-10-20): R1/R2 (AnyoneCore party roster) force targeting and damage on the Plasma Shield\n-- until it dies. \"AutoSim | P2 Plasma Shield restore\" puts the P2 bosses back. Accepted AS-002\n-- exception: slot 0's lifetime spans the role's P2 boss and the shield.\nlocal forecast = data.tea_autosim\nforecast.shield = eventArgs.entityID\nTensorCore.API.TensorACR.setAutoSimTarget(0, eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"d94d90a3-ab39-3043-afbe-aed79ced4005",
									true,
								},
							},
							name = "Put Plasma Shield in slot 0",
							uuid = "5a0330ad-4585-f309-85ad-f9815cecc7a3",
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
							conditionLua = "local forecast = data.tea_autosim\nif forecast == nil or forecast.version ~= 1 or not eventArgs.isTargetable then return false end\nif Argus.getEntityModel(eventArgs.entityID) ~= 11343 then return false end\nlocal Roster = AnyoneCore and AnyoneCore.Roster\nif Roster == nil or Roster.current() == nil then return false end\nlocal slot = Roster.mySlot()\nreturn slot == \"R1\" or slot == \"R2\"",
							dequeueIfLuaFalse = true,
							name = "Plasma Shield up, I am R1/R2",
							uuid = "d94d90a3-ab39-3043-afbe-aed79ced4005",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim",
				eventType = 26,
				mechanicTime = 314.1,
				name = "AutoSim | P2 Plasma Shield slot 0 (R1/R2)",
				timeRange = true,
				timelineIndex = 73,
				timerEndOffset = 12,
				timerStartOffset = -4,
				uuid = "4e724632-c8dc-9455-a97d-243b0afe982b",
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
							actionLua = "-- The shield died (untargetable): slot 0 goes back to this role's P2 boss.\nlocal forecast = data.tea_autosim\nforecast.shield = nil\nforecast.assignP2()\nself.used = true",
							conditions = 
							{
								
								{
									"fa0457b6-4b53-b7fb-ac46-3ef5668d6ba9",
									true,
								},
							},
							name = "Restore P2 slots",
							uuid = "646f55f8-ef7f-acb9-a8ce-544c3471faf1",
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
							conditionLua = "local forecast = data.tea_autosim\nreturn forecast ~= nil and forecast.version == 1 and not eventArgs.isTargetable\n    and forecast.shield ~= nil and forecast.shield == eventArgs.entityID",
							dequeueIfLuaFalse = true,
							name = "Pinned Plasma Shield gone",
							uuid = "fa0457b6-4b53-b7fb-ac46-3ef5668d6ba9",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim",
				eventType = 26,
				mechanicTime = 314.1,
				name = "AutoSim | P2 Plasma Shield restore",
				timeRange = true,
				timelineIndex = 73,
				timerEndOffset = 12,
				timerStartOffset = -4,
				uuid = "96a6d6fd-38f0-a0b6-8ece-8c684901d1b1",
				version = 2,
			},
		},
	},
	[78] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "777410e2-14c8-bec6-8ab4-296623b76d16",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "619ffcc8-495d-fdda-b77f-49df14b95223",
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
							actionLua = "data.tea_autosim.p2Death(eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"a3ea458a-ade1-1021-a930-6f8200016942",
									true,
								},
							},
							name = "Apply first P2 death forecast",
							uuid = "204b4205-ff39-52ad-819a-b27304f28d02",
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
							conditionLua = "local forecast = data.tea_autosim\nreturn forecast ~= nil and forecast.version == 1 and not forecast.done.p2_first and forecast.matchP2Death(eventArgs)",
							dequeueIfLuaFalse = true,
							name = "First P2 boss death",
							uuid = "a3ea458a-ade1-1021-a930-6f8200016942",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				eventType = 26,
				mechanicTime = 356.5,
				name = "AutoSim | Reanchor P2 first death",
				timeRange = true,
				timelineIndex = 78,
				timerEndOffset = 70,
				timerStartOffset = -35,
				uuid = "3b45bffe-9da2-d468-bfa6-85b4416755d0",
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
							actionLua = "data.tea_autosim.p2Death(eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"6443c6cb-80e6-f5e3-9569-500b0d9b91ab",
									true,
								},
							},
							name = "Apply second P2 death forecast",
							uuid = "db50ca93-69bb-13a7-8bc4-877210738de0",
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
							conditionLua = "local forecast = data.tea_autosim\nreturn forecast ~= nil and forecast.version == 1 and forecast.done.p2_first == true and forecast.matchP2Death(eventArgs)",
							dequeueIfLuaFalse = true,
							name = "Second P2 boss death",
							uuid = "6443c6cb-80e6-f5e3-9569-500b0d9b91ab",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				eventType = 26,
				mechanicTime = 356.5,
				name = "AutoSim | Reanchor P2 second death",
				timeRange = true,
				timelineIndex = 78,
				timerEndOffset = 70,
				timerStartOffset = -35,
				uuid = "1a33405a-d298-0a11-836a-56a838b166c6",
				version = 2,
			},
		},
	},
	[95] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "0511c45e-7ed6-09cc-b168-f00fefa1f04b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "56d27e10-34f6-1430-a95e-0335ca9eb524",
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
							actionLua = "data.tea_autosim.reanchor(\"p3_start\", eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"53dc6672-2820-2a9e-b1b7-08309dba29e6",
									true,
								},
							},
							name = "Apply Alexander Prime start forecast",
							uuid = "2b67e4f0-d7bc-b698-b6f0-3c72a755ae4b",
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
							conditionLua = "local forecast = data.tea_autosim\nreturn forecast ~= nil and forecast.version == 1 and forecast.match(\"p3_start\", eventArgs)",
							dequeueIfLuaFalse = true,
							name = "Alexander Prime start",
							uuid = "53dc6672-2820-2a9e-b1b7-08309dba29e6",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				eventType = 26,
				mechanicTime = 511.4,
				name = "AutoSim | Reanchor P3 start",
				timeRange = true,
				timelineIndex = 95,
				timerEndOffset = 15,
				timerStartOffset = -10,
				uuid = "ea58ea17-0f6c-90bd-9d2d-03528c1f37ff",
				version = 2,
			},
		},
	},
	[147] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "ab620589-d4aa-1f9f-b4c8-ce0baf3a731b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "cda7400c-81d4-5c2b-8a33-c2ba603808e8",
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
							actionLua = "data.tea_autosim.reanchor(\"cc3_death\", eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"6b336a31-d4ef-9e08-96df-8669fa17312d",
									true,
								},
							},
							name = "Apply P3 Cruise Chaser death forecast",
							uuid = "37ea401e-d49a-1591-8f77-1e66113e92fe",
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
							conditionLua = "local forecast = data.tea_autosim\nreturn forecast ~= nil and forecast.version == 1 and forecast.match(\"cc3_death\", eventArgs)",
							dequeueIfLuaFalse = true,
							name = "P3 Cruise Chaser death",
							uuid = "6b336a31-d4ef-9e08-96df-8669fa17312d",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				eventType = 26,
				mechanicTime = 706.8,
				name = "AutoSim | Reanchor P3 Cruise Chaser death",
				timeRange = true,
				timelineIndex = 147,
				timerEndOffset = 50,
				uuid = "b704ffad-5250-4ca8-a524-abf13534c2cb",
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
							actionLua = "data.tea_autosim.reanchor(\"bj3_death\", eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"cd88eed2-746d-42f7-a21f-7ccf02edd582",
									true,
								},
							},
							name = "Apply P3 Brute Justice death forecast",
							uuid = "61ecebac-f6f5-475e-84d7-538c79125231",
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
							conditionLua = "local forecast = data.tea_autosim\nreturn forecast ~= nil and forecast.version == 1 and forecast.match(\"bj3_death\", eventArgs)",
							dequeueIfLuaFalse = true,
							name = "P3 Brute Justice death",
							uuid = "cd88eed2-746d-42f7-a21f-7ccf02edd582",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				eventType = 26,
				mechanicTime = 706.8,
				name = "AutoSim | Reanchor P3 Brute Justice death",
				timeRange = true,
				timelineIndex = 147,
				timerEndOffset = 50,
				uuid = "faa3df58-e4cc-9117-85a2-8bb30f61d752",
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
				name = "AutoSim",
				uuid = "1ebc8b12-fcfc-c190-8030-99ee87d27072",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "8d6ca2b7-bf3e-ab4a-994e-bb167244f999",
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
							actionLua = "data.tea_autosim.reanchor(\"p3_end\", eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"e9b5145f-bc6c-a6da-b950-51a371a31734",
									true,
								},
							},
							name = "Apply Alexander Prime HP push forecast",
							uuid = "1726a910-53e6-f32b-826f-e4234d86f70c",
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
							conditionLua = "local forecast = data.tea_autosim\nreturn forecast ~= nil and forecast.version == 1 and forecast.match(\"p3_end\", eventArgs)",
							dequeueIfLuaFalse = true,
							name = "Alexander Prime HP push",
							uuid = "e9b5145f-bc6c-a6da-b950-51a371a31734",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				eventType = 26,
				mechanicTime = 771.9,
				name = "AutoSim | Reanchor P3 end",
				timeRange = true,
				timelineIndex = 150,
				timerEndOffset = 30,
				timerStartOffset = -35,
				uuid = "b0728f69-1885-cbdc-a118-f9dfa060a9e4",
				version = 2,
			},
		},
	},
	[153] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "518abd7c-26de-dcf5-b2c5-64d40d08e8b9",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "c4619804-ce76-3bdf-b355-fb184035da74",
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
							actionLua = "data.tea_autosim.reanchor(\"p4_start\", eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"12889c42-879b-f7cb-9e01-ab84bfef83b6",
									true,
								},
							},
							name = "Apply Perfect Alexander start forecast",
							uuid = "4fa410fc-ed69-be68-beb8-52b88b8ed2ce",
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
							conditionLua = "local forecast = data.tea_autosim\nreturn forecast ~= nil and forecast.version == 1 and forecast.match(\"p4_start\", eventArgs)",
							dequeueIfLuaFalse = true,
							name = "Perfect Alexander start",
							uuid = "12889c42-879b-f7cb-9e01-ab84bfef83b6",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				eventType = 26,
				mechanicTime = 845.4,
				name = "AutoSim | Reanchor P4 start",
				timeRange = true,
				timelineIndex = 153,
				timerEndOffset = 15,
				timerStartOffset = -10,
				uuid = "02ed7ba5-14e6-c0f6-ad93-4d23c58fba97",
				version = 2,
			},
		},
	},
	inheritedProfiles = 
	{
	},
	timelineName = "tea",
	version = "1.0.2",
}



return tbl
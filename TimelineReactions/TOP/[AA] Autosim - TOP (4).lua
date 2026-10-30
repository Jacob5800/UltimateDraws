local tbl = 
{
	
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "c1ccebf8-d5f7-c595-9c2f-555f0f7e6376",
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
				execute = "-- [AA] Autosim - TOP: one shared AutoSim schedule for every AutoSim job (BRD, BLM, SAM, RPR, VPR).\n-- Clock: seconds since combat start (acr.getAutoSimTime()). Canonical times form a synthetic\n-- median pull chained from phase anchors; each reanchor shifts the remaining windows.\n-- Sources (AS-008/AS-009):\n--   P1 to P5 Omega: user debug logs (map 1122, 20260917-20261013), medians of 2-22 pulls per interval.\n--   Packet Filter timing, P5 final segment, P6 and kill: FFLogs, all 31 ranked Dawntrail kills\n--   (encounter 1077, execution metric; page 1 is the whole leaderboard). Endwalker reports\n--   (encounter 1068) are archived and returned no events. FFLogs matches the user logs within\n--   0.5s on every fixed interval; HP-push intervals differ by up to 1.7s (user values kept).\n-- Entities are matched by model ID (FFLogs gameID), which survives the P2 M/F form swap.\n--   P1 Omega 15708 | P2 boss A 15712 (M form first, F form after Synergy) | P2 boss B 15713\n--   P3/P4 Omega 15717 | P5 Omega-M 15720 | P6 Alpha Omega 15725 | P6 adds 15726/15727.\nlocal acr = TensorCore.API.TensorACR\nlocal job = TensorCore.mGetPlayer().job\n-- AS-011: user answer \"very important\" (1.4) for every job except Viper and Black Mage (1.1).\nlocal raidBuffWeight = (job == 41 or job == 25) and 1.1 or 1.4\n-- Phase anchors (source clock). \"user n\" = debug-log pulls; FFLogs medians in brackets.\nlocal PK1 = 80.563          -- Pantokrator first Condensed Wave Cannon Kyrios stack; user n=22 (80.48-80.67)\nlocal P1E = 119.462         -- Omega untargetable (HP push); user median n=22 [121.346]\nlocal P2S = P1E + 3.360     -- Omega-M/F targetable; user n=22 [3.386]\nlocal CLV = P2S + 4.950     -- Packet Filter lands, cleave ends; FFLogs (debug logs omit it)\nlocal SYD = P2S + 31.820    -- Party Synergy untargetable; user n=22 [31.783]\nlocal SYU = P2S + 60.375    -- Synergy return; user n=18 [60.354]\nlocal PFD = SYU + 20.440    -- Packet Filter removed; FFLogs median of 277 removals\nlocal MD = SYU + 50.180     -- boss B (Omega-M form) dies; user n=16 [49.693]\nlocal FD = MD + 27.500      -- boss A (Omega-F form) dies; user n=16 [26.838]\nlocal P3S = FD + 32.515     -- Omega Reconfigured targetable; user n=15 [32.487]\nlocal P3E = P3S + 148.039   -- P3 HP push; user n=12 [146.386]\nlocal P4S = P3E + 7.203     -- Blue Screen; user n=11 [7.203]\nlocal P4E = P4S + 55.109    -- scripted end, all damage counts (user); user n=11 [55.088]\nlocal DU = P4E + 16.516     -- P5 Delta; user n=11 [16.533]\nlocal DD = DU + 27.953      -- user n=11 [27.908]\nlocal SU = DU + 76.219      -- Sigma; user n=5 [76.162]\nlocal SD = SU + 33.922      -- user n=5 [33.906]\nlocal OU = SU + 94.578      -- Omega; user n=2 [94.473]\nlocal OD = OU + 51.149      -- user n=2 [51.199]\nlocal BU = OU + 83.263      -- final P5 segment; FFLogs only (no user pull reached it)\nlocal BD = BU + 30.809      -- FFLogs\nlocal P6S = BD + 55.934     -- Alpha Omega targetable; FFLogs\nlocal KILL = P6S + 261.570  -- FFLogs median kill (255.9-267.1s after P6 start)\n-- The two P2 boss slots. Slot 0 is the boss this player may hit before Synergy.\n-- pf = \"F\" (Packet Filter F, status 3500): slot 0 = A (15712), slot 1 = B (15713).\n-- pf = \"M\" (Packet Filter M, status 3499): slot 0 = B, slot 1 = A.\n-- FFLogs (31 kills): both filters persist through Synergy; the M/F forms swap at the return, so\n-- Packet Filter M players hit A until the filter drops, then B (Omega-M), then A (user strat).\n-- Packet Filter F players hit B from the return. Bosses are 6y apart only before Firewall.\ndata.top_autosim = {\n    version = 1,\n    pf = \"F\",\n    done = {},\n    kill_time = KILL,\n    -- HP-dependent anchors: timing is exact until the next one, then +/-10s (user choice).\n    hp_anchors = {P1E, MD, FD, P3E, KILL},\n    anchors = {\n        p2_start = {t = P2S, model = 15712, up = true},\n        syn_up = {t = SYU, model = 15712, up = true},\n        m_death = {t = MD, model = 15713, up = false},\n        f_death = {t = FD, model = 15712, up = false},\n        p3_start = {t = P3S, model = 15717, up = true, slot0 = true},\n        p3_end = {t = P3E, model = 15717, up = false},\n        p4_start = {t = P4S, model = 15717, up = true},\n        d_up = {t = DU, model = 15720, up = true, slot0 = true},\n        s_up = {t = SU, model = 15720, up = true},\n        o_up = {t = OU, model = 15720, up = true},\n        b_up = {t = BU, model = 15720, up = true},\n        p6_start = {t = P6S, model = 15725, up = true, slot0 = true},\n    },\n    schedule = {\n        -- FullDowntime: every boss-untargetable window (user logs / FFLogs as above).\n        {\"FullDowntime\", P1E, P2S, 1, 0},\n        {\"FullDowntime\", SYD, SYU, 1, 0},\n        {\"FullDowntime\", FD, P3S, 1, 0},\n        {\"FullDowntime\", P3E, P4S, 1, 0},\n        {\"FullDowntime\", P4E, DU, 1, 0},\n        {\"FullDowntime\", DD, SU, 1, 0},\n        {\"FullDowntime\", SD, OU, 1, 0},\n        {\"FullDowntime\", OD, BU, 1, 0},\n        {\"FullDowntime\", BD, P6S, 1, 0},\n        -- CasterDowntime mirrors FullDowntime (leaving the ground field), as in [AA] Autosim - FRU.\n        -- The P1 window starts at the Pantokrator movement (user, 2026-10-19), which runs straight\n        -- into the P1 push, so it is one window (same-type phases may not overlap).\n        {\"CasterDowntime\", PK1, P2S, 1, 0},\n        {\"CasterDowntime\", SYD, SYU, 1, 0},\n        {\"CasterDowntime\", FD, P3S, 1, 0},\n        {\"CasterDowntime\", P3E, P4S, 1, 0},\n        {\"CasterDowntime\", P4E, DU, 1, 0},\n        {\"CasterDowntime\", DD, SU, 1, 0},\n        {\"CasterDowntime\", SD, OU, 1, 0},\n        {\"CasterDowntime\", OD, BU, 1, 0},\n        {\"CasterDowntime\", BD, P6S, 1, 0},\n        -- Movement windows (user, 2026-10-19): no cast-time actions while moving. AutoSim has no\n        -- separate movement type, so they are CasterDowntime (BLM is assumed to leave Ley Lines).\n        -- P4, user logs n=11 (spread <= 0.3s): each Wave Cannon A cast to its Wave Cannon stack.\n        {\"CasterDowntime\", P4S + 14.375, P4S + 19.938, 1, 0},\n        {\"CasterDowntime\", P4S + 24.641, P4S + 30.079, 1, 0},\n        {\"CasterDowntime\", P4S + 34.891, P4S + 40.328, 1, 0},\n        -- P6, FFLogs only (27 kills, spread <= 0.7s; no user pull reached P6).\n        {\"CasterDowntime\", P6S + 27.500, P6S + 42.257, 1, 0},   -- Cosmo Arrow 1 to Cosmo Dive\n        {\"CasterDowntime\", P6S + 68.659, P6S + 78.687, 1, 0},   -- Wave Cannon puddles 1-6 (set 1)\n        {\"CasterDowntime\", P6S + 83.848, P6S + 89.690, 1, 0},   -- Wave Cannon 2 to Wild Charge (1)\n        {\"CasterDowntime\", P6S + 104.439, P6S + 115.641, 1, 0}, -- Cosmo Arrow 2 to Wave Cannon 1\n        {\"CasterDowntime\", P6S + 117.640, P6S + 123.488, 1, 0}, -- Wave Cannon 2 to Wild Charge (2)\n        {\"CasterDowntime\", P6S + 145.329, P6S + 155.350, 1, 0}, -- Wave Cannon puddles 1-6 (set 2)\n        {\"CasterDowntime\", P6S + 181.648, P6S + 200.908, 1, 0}, -- Cosmo Meteor baits to Flare\n        -- No other consistent melee or caster gap outside full downtime (>=70% of players, 31 FFLogs\n        -- kills), apart from the P6 caster LB3 below.\n        -- P1 Omega (slot 0).\n        {\"TargetLifetime\", 0, P1E, 1, 0},\n        {\"DotAvailability\", 0, P1E - 0.5, 1, 0},\n        -- P2, Packet Filter F: slot 0 = A, slot 1 = B.\n        {\"TargetLifetime\", P2S, FD, 1, 0, pf = \"F\"},\n        {\"DotAvailability\", P2S, SYD - 0.5, 1, 0, pf = \"F\"},\n        {\"DotAvailability\", MD, FD - 0.5, 1, 0, pf = \"F\"},\n        {\"TargetLifetime\", P2S, MD, 1, 1, pf = \"F\"},\n        {\"DotAvailability\", P2S, CLV - 0.5, 1, 1, pf = \"F\"},\n        {\"DotAvailability\", SYU, MD - 0.5, 1, 1, pf = \"F\"},\n        -- P2, Packet Filter M: slot 0 = B, slot 1 = A. B's Synergy gap is not only FullDowntime\n        -- (A is the allowed boss from the return until the filter drops), so it stays split.\n        {\"TargetLifetime\", P2S, MD, 1, 0, pf = \"M\"},\n        {\"DotAvailability\", P2S, SYD - 0.5, 1, 0, pf = \"M\"},\n        {\"DotAvailability\", PFD, MD - 0.5, 1, 0, pf = \"M\"},\n        {\"TargetLifetime\", P2S, FD, 1, 1, pf = \"M\"},\n        {\"DotAvailability\", P2S, CLV - 0.5, 1, 1, pf = \"M\"},\n        {\"DotAvailability\", SYU, PFD, 1, 1, pf = \"M\"},\n        {\"DotAvailability\", MD, FD - 0.5, 1, 1, pf = \"M\"},\n        -- P3 and P4 are one Omega entity: one lifetime, availability straight through the\n        -- 7s FullDowntime between them (AS-001, AS-013).\n        {\"TargetLifetime\", P3S, P4E, 1, 0},\n        {\"DotAvailability\", P3S, P4E - 0.5, 1, 0},\n        -- P5: one Omega-M entity through Delta, Sigma, Omega and the final segment.\n        {\"TargetLifetime\", DU, BD, 1, 0},\n        {\"DotAvailability\", DU, BD - 0.5, 1, 0},\n        -- P6 Alpha Omega. Cosmo Meteor/Comet adds are never DoT targets (blacklisted on spawn).\n        {\"TargetLifetime\", P6S, KILL, 1, 0},\n        {\"DotAvailability\", P6S, KILL, 1, 0},\n        -- Raid buffs: first teammate application to last application + 20s.\n        -- Opener and P1-P5 windows: mean of 6 user pulls (Sigma 5, P5 Omega 2), phase-aligned.\n        -- P6 windows: FFLogs medians (31 kills). Windows ending in downtime are clipped to it.\n        {\"RaidBuff\", 0.214, 24.393, raidBuffWeight, 0},\n        {\"RaidBuff\", P2S + 0.229, P2S + 25.130, raidBuffWeight, 0},\n        {\"RaidBuff\", P3S + 1.359, P3S + 25.638, raidBuffWeight, 0},\n        {\"RaidBuff\", P3S + 121.682, P3S + 144.029, raidBuffWeight, 0},\n        {\"RaidBuff\", SU + 1.182, SU + 25.262, raidBuffWeight, 0},\n        {\"RaidBuff\", OU + 28.461, OD, raidBuffWeight, 0},\n        {\"RaidBuff\", P6S + 4.439, P6S + 27.393, raidBuffWeight, 0},\n        {\"RaidBuff\", P6S + 125.133, P6S + 149.212, raidBuffWeight, 0},\n        {\"RaidBuff\", P6S + 245.948, KILL, raidBuffWeight, 0},\n    },\n}\nlocal forecast = data.top_autosim\n-- P2 opening cleave: both bosses stand 6y apart at the arena centre until Firewall resolves\n-- (user log 20261013-2336-1122-4.txt: x=97 and x=103). The only multi-target window in the fight.\n-- Every AoE shape counts 2 (AS-006); each ACR ignores shapes it does not use. Clearing the\n-- shapes elsewhere keeps P6 adds out of AoE counts (user: they are LB'd, never hit).\nlocal aoeTypes = {\n    \"SelfCircle5Yd\", \"SelfCircle8Yd\", \"Cone8Yd\", \"Cone12Yd\", \"Line10Yd\", \"Line15Yd\", \"Line25Yd\",\n    \"TargetCircle5YdRange3Yd\", \"TargetCircle5YdRange5Yd\", \"TargetCircle5YdRange20Yd\",\n    \"TargetCircle5YdRange25Yd\", \"TargetCircle8YdRange25Yd\",\n}\nfor i = 1, #aoeTypes do\n    forecast.schedule[#forecast.schedule + 1] = {aoeTypes[i], P2S, CLV - 0.5, 2, 0}\nend\n-- P6 Cosmo Meteor adds: the caster LB3 (user). Black Mage is the party caster that presses it,\n-- and the LB locks the user, so it is a Stun for BLM only. FFLogs (15 BLM kills): median last hard\n-- cast lands P6+178.3, next P6+197.8; ~0.6s damage delay and ~2.5s cast give P6+177.9 -> P6+194.4.\nif job == 25 then\n    forecast.schedule[#forecast.schedule + 1] = {\"Stun\", P6S + 177.938, P6S + 194.438, 1, 0, exactStart = true}\nend\nfunction forecast.apply(anchor, actual)\n    local api = TensorCore.API.TensorACR\n    local kill = actual + forecast.kill_time - anchor\n    api.setAutoSimKillTime(kill)\n    api.clearAutoSimPhases(\"FullDowntime\")\n    api.clearAutoSimPhases(\"CasterDowntime\")\n    api.clearAutoSimPhases(\"Stun\")\n    api.clearAutoSimPhases(\"RaidBuff\")\n    for i = 1, #aoeTypes do api.clearAutoSimPhases(aoeTypes[i]) end\n    for slot = 0, 5 do\n        api.clearAutoSimPhases(\"TargetLifetime\", slot)\n        api.clearAutoSimPhases(\"DotAvailability\", slot)\n        if job == 25 then api.clearAutoSimPhases(\"DotAvailability\", slot, 1) end\n    end\n    for i = 1, #forecast.schedule do\n        local window = forecast.schedule[i]\n        if window[3] > anchor and (window.pf == nil or window.pf == forecast.pf) then\n            -- Begin downtime 0.5s early to avoid GCDs resolving after uptime ends.\n            local sourceStart = window[2]\n            if not window.exactStart and (window[1] == \"FullDowntime\" or window[1] == \"CasterDowntime\") then\n                sourceStart = sourceStart - 0.5\n            end\n            local start = actual + math.max(0, sourceStart - anchor)\n            -- A surviving target keeps its original lifetime start, so its DoTs carry over.\n            if window[1] == \"TargetLifetime\" then\n                start = actual + window[2] - anchor\n            end\n            local finish = actual + window[3] - anchor\n            api.addAutoSimPhase(window[1], start, finish, window[4], window[5])\n            -- AoE Thunder has independent availability but shares the primary target lifetime.\n            if job == 25 and window[1] == \"DotAvailability\" then\n                api.addAutoSimPhase(window[1], start, finish, window[4], window[5], 1)\n            end\n        end\n    end\n    -- Exact (+/-0.5s) until the next HP-dependent anchor, +/-10s from it on (user choice).\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(actual, 0.5)\n    for i = 1, #forecast.hp_anchors do\n        local h = forecast.hp_anchors[i]\n        if h > anchor + 0.01 then\n            api.addAutoSimUncertainty(actual + h - anchor, 10)\n            break\n        end\n    end\n    forecast.anchor = anchor\n    forecast.actual = actual\nend\n-- P2 boss entities, found by model; content IDs 7633/7634 follow the form, not the entity.\nfunction forecast.assignP2()\n    local api = TensorCore.API.TensorACR\n    local first = forecast.pf == \"M\" and forecast.bossB or forecast.bossA\n    local second = forecast.pf == \"M\" and forecast.bossA or forecast.bossB\n    if first then api.setAutoSimTarget(0, first) end\n    if second then api.setAutoSimTarget(1, second) end\nend\nfunction forecast.match(key, args)\n    local a = forecast.anchors[key]\n    if a == nil or forecast.done[key] or args.isTargetable ~= a.up then return false end\n    return Argus.getEntityModel(args.entityID) == a.model\nend\nfunction forecast.reanchor(key, entityID)\n    local api = TensorCore.API.TensorACR\n    local actual = api.getAutoSimTime()\n    if actual <= 0 then return end\n    local a = forecast.anchors[key]\n    forecast.done[key] = true\n    if key == \"p2_start\" then\n        -- The event entity is boss A (matched by model); find B among the two P2 bosses.\n        forecast.bossA = entityID\n        for id, _ in pairs(TensorCore.entityList(\"contentid=7633;7634\")) do\n            if Argus.getEntityModel(id) == 15713 then forecast.bossB = id end\n        end\n        forecast.assignP2()\n    elseif a.slot0 then\n        -- A new boss: retire the P2 slots and pin slot 0 to the new entity.\n        api.setAutoSimTarget(0, entityID)\n        api.clearAutoSimTarget(1)\n    end\n    forecast.apply(a.t, actual)\nend\n-- Packet Filter decides which P2 boss this player hits; re-apply on the current clock.\nfunction forecast.setPacketFilter(pf)\n    local api = TensorCore.API.TensorACR\n    local actual = api.getAutoSimTime()\n    forecast.pf = pf\n    forecast.pf_known = true\n    forecast.assignP2()\n    if forecast.anchor ~= nil and actual > 0 then\n        forecast.apply(forecast.anchor + actual - forecast.actual, actual)\n    end\nend\nforecast.apply(0, 0)\nself.used = true\n",
				executeType = 2,
				mechanicTime = 3.4,
				name = "AutoSim | TOP baseline",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = -3.4,
				timerStartOffset = -63.4,
				uuid = "e47f5a90-6d52-a036-8ad3-a23441bb9ee0",
				version = 2,
			},
		},
	}, 
	[31] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "61760149-1fb2-924e-b1f8-05edab74113e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "c1b80dea-ab23-c32b-b8f8-200f86d12908",
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
							actionLua = "data.top_autosim.reanchor(\"p2_start\", eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"da0e4270-5f11-8b90-854a-183c62aa88f4",
									true,
								},
							},
							name = "Apply P2 start forecast",
							uuid = "8ca733e4-150f-aaff-bd89-243f749b83ce",
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
							conditionLua = "local forecast = data.top_autosim\nreturn forecast ~= nil and forecast.version == 1 and forecast.match(\"p2_start\", eventArgs)",
							dequeueIfLuaFalse = true,
							name = "P2 start boss",
							uuid = "da0e4270-5f11-8b90-854a-183c62aa88f4",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				eventType = 26,
				mechanicTime = 202.3,
				name = "AutoSim | Reanchor P2 start",
				timeRange = true,
				timelineIndex = 31,
				timerEndOffset = 15,
				timerStartOffset = -10,
				uuid = "6076b627-b7e1-c6d7-ae58-61204e2fe837",
				version = 2,
			},
		},
	},
	[33] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "c3d892e6-43ee-5c23-8619-aa37460b7fe6",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "7a8c3ba6-18d1-40c0-b3a1-37e8c47e4588",
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
							actionLua = "local packetFilterM = TensorCore.hasBuff(TensorCore.mGetPlayer(), 3499)\ndata.top_autosim.setPacketFilter(packetFilterM and \"M\" or \"F\")\nself.used = true",
							conditions = 
							{
								
								{
									"f5a2924b-18a3-d937-a57a-c2d44cc281a2",
									true,
								},
							},
							name = "Assign P2 slots by Packet Filter",
							uuid = "68b77235-ca4a-1cd8-9400-52d11ceb0b62",
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
							conditionLua = "-- Packet Filter M = 3499, Packet Filter F = 3500 (FFLogs status IDs).\nlocal forecast = data.top_autosim\nif forecast == nil or forecast.version ~= 1 or forecast.pf_known or not forecast.done.p2_start then return false end\nreturn TensorCore.hasAnyBuff(TensorCore.mGetPlayer(), 3499, 3500)",
							name = "Packet Filter applied",
							uuid = "f5a2924b-18a3-d937-a57a-c2d44cc281a2",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				mechanicTime = 206.4,
				name = "AutoSim | P2 Packet Filter slots",
				timeRange = true,
				timelineIndex = 33,
				timerEndOffset = 14,
				timerStartOffset = -2,
				uuid = "32897732-e052-d528-8b2d-2f1102139095",
				version = 2,
			},
		},
	},
	[46] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "4eb0de82-04be-dcb0-97be-3bc6910883eb",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "a274c8e3-95d8-a0bf-b770-5a4ccaa5f4fa",
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
							actionLua = "data.top_autosim.reanchor(\"syn_up\", eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"c011b58c-b3d7-caca-b639-b8ab2c2e6bfb",
									true,
								},
							},
							name = "Apply P2 Synergy return forecast",
							uuid = "8d57fe60-b756-36b1-9d91-9a96c8a17bf5",
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
							conditionLua = "local forecast = data.top_autosim\nreturn forecast ~= nil and forecast.version == 1 and forecast.match(\"syn_up\", eventArgs)",
							dequeueIfLuaFalse = true,
							name = "P2 Synergy return boss",
							uuid = "c011b58c-b3d7-caca-b639-b8ab2c2e6bfb",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				eventType = 26,
				mechanicTime = 262.1,
				name = "AutoSim | Reanchor P2 Synergy return",
				timeRange = true,
				timelineIndex = 46,
				timerEndOffset = 15,
				timerStartOffset = -10,
				uuid = "0caaf2a3-b7b7-ab2f-bbe9-4f8f9985b08f",
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
							actionLua = "data.top_autosim.reanchor(\"m_death\", eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"94367adf-135b-b97b-a831-545670065ef3",
									true,
								},
							},
							name = "Apply Omega-M death forecast",
							uuid = "acaa7f74-81db-f1d9-905c-b551080ecf42",
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
							conditionLua = "local forecast = data.top_autosim\nreturn forecast ~= nil and forecast.version == 1 and forecast.match(\"m_death\", eventArgs)",
							dequeueIfLuaFalse = true,
							name = "Omega-M death boss",
							uuid = "94367adf-135b-b97b-a831-545670065ef3",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				eventType = 26,
				mechanicTime = 262.1,
				name = "AutoSim | Reanchor Omega-M death",
				timeRange = true,
				timelineIndex = 46,
				timerEndOffset = 100,
				timerStartOffset = 20,
				uuid = "a20e29bd-2f82-4abb-a4b9-6d1bfe53f712",
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
							actionLua = "data.top_autosim.reanchor(\"f_death\", eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"086a459e-816e-c6a1-a363-73eaf75bd703",
									true,
								},
							},
							name = "Apply Omega-F death forecast",
							uuid = "c4f5042d-9d96-f9ba-8f51-1c4deac8ad6a",
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
							conditionLua = "local forecast = data.top_autosim\nreturn forecast ~= nil and forecast.version == 1 and forecast.match(\"f_death\", eventArgs)",
							dequeueIfLuaFalse = true,
							name = "Omega-F death boss",
							uuid = "086a459e-816e-c6a1-a363-73eaf75bd703",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				eventType = 26,
				mechanicTime = 262.1,
				name = "AutoSim | Reanchor Omega-F death",
				timeRange = true,
				timelineIndex = 46,
				timerEndOffset = 120,
				timerStartOffset = 30,
				uuid = "9051f816-46e5-1f74-943f-d0021d743633",
				version = 2,
			},
		},
	},
	[74] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "567373a6-5c73-97a1-b47f-8762e60003db",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "446c21f5-5ae8-4f34-9c6a-d74ecc47ea4a",
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
							actionLua = "data.top_autosim.reanchor(\"p3_start\", eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"e4638b20-59a9-0f08-b4a6-f23215bb25b9",
									true,
								},
							},
							name = "Apply P3 start forecast",
							uuid = "4867bec7-4bbc-25ab-b339-4899c962e584",
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
							conditionLua = "local forecast = data.top_autosim\nreturn forecast ~= nil and forecast.version == 1 and forecast.match(\"p3_start\", eventArgs)",
							dequeueIfLuaFalse = true,
							name = "P3 start boss",
							uuid = "e4638b20-59a9-0f08-b4a6-f23215bb25b9",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				eventType = 26,
				mechanicTime = 432.3,
				name = "AutoSim | Reanchor P3 start",
				timeRange = true,
				timelineIndex = 74,
				timerEndOffset = 15,
				timerStartOffset = -10,
				uuid = "e9ed1a5d-33b9-17f1-b174-3958c2c37d07",
				version = 2,
			},
		},
	},
	[97] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "4a1f629e-73f4-8768-be7b-6df2685e852f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "4f3aed8e-c65b-8880-9ff5-aeba5b057a44",
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
							actionLua = "data.top_autosim.reanchor(\"p3_end\", eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"1ed82520-7190-9949-aba6-6df685a3cf26",
									true,
								},
							},
							name = "Apply P3 end forecast",
							uuid = "9cd990ef-5a51-9e81-a195-36e694df12f6",
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
							conditionLua = "local forecast = data.top_autosim\nreturn forecast ~= nil and forecast.version == 1 and forecast.match(\"p3_end\", eventArgs)",
							dequeueIfLuaFalse = true,
							name = "P3 end boss",
							uuid = "1ed82520-7190-9949-aba6-6df685a3cf26",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				eventType = 26,
				mechanicTime = 600,
				name = "AutoSim | Reanchor P3 end",
				timeRange = true,
				timelineIndex = 97,
				timerEndOffset = 6,
				timerStartOffset = -40,
				uuid = "62cb772c-974e-d51d-bb4e-cd885b6fb2eb",
				version = 2,
			},
		},
	},
	[99] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "228c6755-e57d-f2f3-8a1f-990809849818",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "481a4098-0d61-0c90-a60a-c21098aed8c0",
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
							actionLua = "data.top_autosim.reanchor(\"p4_start\", eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"a5cf937a-50dd-1301-8eb0-2e464df69ad4",
									true,
								},
							},
							name = "Apply P4 start forecast",
							uuid = "446aefc5-0190-8a3d-a25c-166a49b3acf4",
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
							conditionLua = "local forecast = data.top_autosim\nreturn forecast ~= nil and forecast.version == 1 and forecast.match(\"p4_start\", eventArgs)",
							dequeueIfLuaFalse = true,
							name = "P4 start boss",
							uuid = "a5cf937a-50dd-1301-8eb0-2e464df69ad4",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				eventType = 26,
				mechanicTime = 607.1,
				name = "AutoSim | Reanchor P4 start",
				timeRange = true,
				timelineIndex = 99,
				timerEndOffset = 15,
				timerStartOffset = -5,
				uuid = "969799fe-68c9-2281-a7ac-4f73c80736dc",
				version = 2,
			},
		},
	},
	[126] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "f33fe290-a7f6-a290-a18f-bc211cc23bd1",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "109858ad-7484-b90e-a82d-271336fc46bd",
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
							actionLua = "data.top_autosim.reanchor(\"d_up\", eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"feff8b60-c402-c6b2-a779-22a629db3733",
									true,
								},
							},
							name = "Apply P5 Delta start forecast",
							uuid = "bc2a492b-c467-2a44-9d4a-dcae6f28d478",
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
							conditionLua = "local forecast = data.top_autosim\nreturn forecast ~= nil and forecast.version == 1 and forecast.match(\"d_up\", eventArgs)",
							dequeueIfLuaFalse = true,
							name = "P5 Delta start boss",
							uuid = "feff8b60-c402-c6b2-a779-22a629db3733",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				eventType = 26,
				mechanicTime = 715.6,
				name = "AutoSim | Reanchor P5 Delta start",
				timeRange = true,
				timelineIndex = 126,
				timerEndOffset = 15,
				timerStartOffset = -10,
				uuid = "009a6d1e-77d1-31a4-b12f-29ec88653a05",
				version = 2,
			},
		},
	},
	[156] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "f65e224e-ef26-3a67-913f-333d523466bf",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "67549c61-c22e-4d9e-895c-7a5000dc0eb6",
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
							actionLua = "data.top_autosim.reanchor(\"s_up\", eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"94f59b4a-a803-0217-a5a3-3248437588a1",
									true,
								},
							},
							name = "Apply P5 Sigma start forecast",
							uuid = "2c999afc-c41b-cddb-9321-ce4af9792bf6",
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
							conditionLua = "local forecast = data.top_autosim\nreturn forecast ~= nil and forecast.version == 1 and forecast.match(\"s_up\", eventArgs)",
							dequeueIfLuaFalse = true,
							name = "P5 Sigma start boss",
							uuid = "94f59b4a-a803-0217-a5a3-3248437588a1",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				eventType = 26,
				mechanicTime = 791.1,
				name = "AutoSim | Reanchor P5 Sigma start",
				timeRange = true,
				timelineIndex = 156,
				timerEndOffset = 15,
				timerStartOffset = -10,
				uuid = "72e2b473-3381-edce-827a-f4eebb74d223",
				version = 2,
			},
		},
	},
	[183] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "c95edb5b-62cf-d5a4-b27f-fe2595522abb",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "51e7d790-5e39-0b1f-b017-c8498d566f0f",
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
							actionLua = "data.top_autosim.reanchor(\"o_up\", eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"393db1fc-bf13-d331-9f4e-a5da087925e4",
									true,
								},
							},
							name = "Apply P5 Omega start forecast",
							uuid = "24f581ad-559f-8821-b443-6aa0cf9d30ea",
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
							conditionLua = "local forecast = data.top_autosim\nreturn forecast ~= nil and forecast.version == 1 and forecast.match(\"o_up\", eventArgs)",
							dequeueIfLuaFalse = true,
							name = "P5 Omega start boss",
							uuid = "393db1fc-bf13-d331-9f4e-a5da087925e4",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				eventType = 26,
				mechanicTime = 885.3,
				name = "AutoSim | Reanchor P5 Omega start",
				timeRange = true,
				timelineIndex = 183,
				timerEndOffset = 15,
				timerStartOffset = -10,
				uuid = "a680a291-135b-7f3b-b040-9780527784be",
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
				name = "AutoSim",
				uuid = "da67f151-55c3-1833-bea8-069bedd36ee1",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "009bfca0-dab2-2862-947f-2138c9e420a8",
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
							actionLua = "data.top_autosim.reanchor(\"b_up\", eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"ba1695bc-e475-5a0a-bb3e-7283bb50c5e1",
									true,
								},
							},
							name = "Apply P5 final segment forecast",
							uuid = "d1051dd9-e0f5-b44c-96f1-0264d7f1508d",
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
							conditionLua = "local forecast = data.top_autosim\nreturn forecast ~= nil and forecast.version == 1 and forecast.match(\"b_up\", eventArgs)",
							dequeueIfLuaFalse = true,
							name = "P5 final segment boss",
							uuid = "ba1695bc-e475-5a0a-bb3e-7283bb50c5e1",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				eventType = 26,
				mechanicTime = 967.7,
				name = "AutoSim | Reanchor P5 final segment",
				timeRange = true,
				timelineIndex = 206,
				timerEndOffset = 15,
				timerStartOffset = -10,
				uuid = "32efc7a4-18eb-643f-bf3a-c394678494f4",
				version = 2,
			},
		},
	},
	[213] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "1fe9453b-b1f8-4532-8906-f79eab2c9595",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Reanchors",
				uuid = "8b895c12-f2b0-a867-b029-c32f7481c0cf",
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
							actionLua = "data.top_autosim.reanchor(\"p6_start\", eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"4eeb718c-c940-63a9-8ae0-df168a3d7240",
									true,
								},
							},
							name = "Apply P6 start forecast",
							uuid = "52521b1b-1817-d8d0-8b6d-22dc49dd51db",
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
							conditionLua = "local forecast = data.top_autosim\nreturn forecast ~= nil and forecast.version == 1 and forecast.match(\"p6_start\", eventArgs)",
							dequeueIfLuaFalse = true,
							name = "P6 start boss",
							uuid = "4eeb718c-c940-63a9-8ae0-df168a3d7240",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Reanchors",
				eventType = 26,
				mechanicTime = 1154.7,
				name = "AutoSim | Reanchor P6 start",
				timeRange = true,
				timelineIndex = 213,
				timerEndOffset = 20,
				timerStartOffset = -15,
				uuid = "63b92aa3-e85a-ccbf-a815-8e2c5f37efb3",
				version = 2,
			},
		},
	},
	[265] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "c2fd230a-7c04-eeb4-9d18-113fdc039d0f",
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
							actionLua = "-- User: the adds are killed by limit breaks, do not count on FFLogs and are never hit.\n-- Keep them out of AoE/cleave counts and DoT tracking. Content IDs are taken at\n-- spawn because no user pull has reached P6.\nlocal acr = TensorCore.API.TensorACR\nlocal contentID = eventArgs.entityContentID\nif contentID == nil or contentID <= 0 then return end\nlocal entry = acr.addAOEBlacklistEntry(contentID, \"TOP P6 Cosmo Meteor/Comet\")\nentry.enabled = true\n-- The DoT blacklist exists only on ACRs that provide one.\nlocal ok, dotEntry = pcall(acr.addBlacklistEntry, contentID, \"TOP P6 Cosmo Meteor/Comet\")\nif ok and dotEntry then dotEntry.enabled = true end\nself.used = true",
							conditions = 
							{
								
								{
									"479b5a88-8e75-e088-8abf-5727373c3aec",
									true,
								},
							},
							name = "Blacklist add from AoE and DoTs",
							uuid = "1b0d3acc-56f5-6ffe-b8bd-57cbc68e32c6",
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
							conditionLua = "-- FFLogs gameIDs (model IDs): cosmo meteor 15726, cosmo comet 15727.\nlocal model = Argus.getEntityModel(eventArgs.entityID)\nreturn model == 15726 or model == 15727",
							dequeueIfLuaFalse = true,
							name = "Cosmo Meteor/Comet",
							uuid = "479b5a88-8e75-e088-8abf-5727373c3aec",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim",
				eventType = 5,
				mechanicTime = 1331.6,
				name = "AutoSim | Blacklist P6 Cosmo adds",
				timeRange = true,
				timelineIndex = 265,
				timerEndOffset = 25,
				timerStartOffset = -45,
				uuid = "66369382-b2ff-5d35-90cf-746b9933906d",
				version = 2,
			},
		},
	},
	inheritedProfiles = 
	{
	},
	timelineName = "top",
	version = "1.0.3",
}



return tbl
local tbl = 
{
	[2] = 
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal player = TensorCore.mGetPlayer()\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif not caster or not caster.pos or not player or not player.pos or ms <= 0 then return end\nlocal roster = AnyoneCore.Roster\nlocal slot = roster and roster.current() and roster.mySlot()\nlocal spots = {\n    R1={\"NW\",\"N\",true}, T1={\"NW\",\"N\"},\n    R2={\"NE\",\"E\",true}, H2={\"NE\",\"E\"},\n    M1={\"SW\",\"W\",true}, H1={\"SW\",\"W\"},\n    M2={\"SE\",\"S\",true}, T2={\"SE\",\"S\"}\n}\nlocal pair = spots[slot]\nlocal text = \"DPS bait intercards first; supports wait cardinals, then swap\"\nif pair then\n    if pair[3] then\n        text = \"Bait \" .. pair[1] .. \" first, then wait \" .. pair[2]\n    else\n        text = \"Wait \" .. pair[2] .. \" first, then bait \" .. pair[1]\n    end\nend\nlocal spell = eventArgs.spellID\nlocal side = ({[37975]=\"Jump left\",[38009]=\"Shade left\",[38959]=\"Jump right\",[38995]=\"Shade right\"})[spell]\nif side then text = side .. \" - \" .. text end\nAnyoneCore.addTimedWorldTextOnEnt(ms,text,player.id,0xFFFFFFFF,true,1.2,2)\nself.used = true",
							conditions = 
							{
								
								{
									"2a9498a9-c66c-b1aa-8d73-c31224c9bb78",
									true,
								},
							},
							uuid = "95f8d672-062f-fd1e-b5ad-32988b60dd7d",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 37948 or eventArgs.spellID == 37975 or eventArgs.spellID == 38009 or eventArgs.spellID == 38959 or eventArgs.spellID == 38995)",
							dequeueIfLuaFalse = true,
							uuid = "2a9498a9-c66c-b1aa-8d73-c31224c9bb78",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 13.3,
				name = "[Hector] Crossing bait order",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "c8522ce5-d16d-e529-8405-2b8d2f0b11a6",
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
							actionLua = "local id = eventArgs.spellID\nif id == 37952 or id == 37980 or id == 38014 then\n    local s = data.r1sQC\n    if s then s.cch = s.cch + 1 end\nelse\n    data.r1sQC = {caster=eventArgs.entityID, spell=id, n=0, cch=0, cres=0, cones={}, deadline=Now() + (eventArgs.channelTimeMax or 5) * 1000 + 10000}\nend\nself.used = true",
							conditions = 
							{
								
								{
									"eb4fbbe4-dbc0-81da-87fa-1120237cd771",
									true,
								},
							},
							uuid = "5fccf160-a96d-78a1-83fc-16c4c2664f14",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal id = eventArgs.spellID\nreturn p ~= nil and p.localmapid == 1226 and (id == 37948 or id == 37975 or id == 38959 or id == 38009 or id == 38995 or id == 37952 or id == 37980 or id == 38014)",
							dequeueIfLuaFalse = true,
							uuid = "eb4fbbe4-dbc0-81da-87fa-1120237cd771",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 13.3,
				name = "[Hector] Crossing pre-draw start",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 12,
				timerStartOffset = -12,
				uuid = "458e461b-1bb5-c6c4-bfc9-a0d3a87a8c4a",
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
							actionLua = "local id = eventArgs.spellID\nlocal s = data.r1sQC\nif id == 37952 or id == 37980 or id == 38014 then\n    if s then\n        s.cres = s.cres + 1\n        if s.cres >= 8 then data.r1sQC = nil end\n    end\nelse\n    local e = TensorCore.mGetEntity(eventArgs.entityID)\n    local p = e and e.pos\n    if p then\n        if not s or s.n >= 8 or Now() > s.deadline then\n            s = {n=0, cch=0, cres=0, cones={}}\n            data.r1sQC = s\n        end\n        s.n = s.n + 1\n        s.cones[s.n] = {x=p.x, y=p.y, z=p.z, h=p.h}\n        s.origin = {x=p.x, y=p.y, z=p.z}\n        s.deadline = Now() + 12000\n    end\nend\nself.used = true",
							conditions = 
							{
								
								{
									"0cf0c487-88ce-30ad-b37a-7006b5b475aa",
									true,
								},
							},
							uuid = "4e42a834-e0ca-6c12-894c-c95ad05454f6",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local id = eventArgs.spellID\nlocal s = data.r1sQC\nif (id == 37951 or id == 37979 or id == 38013) and s then\n    local say = false\n    if s.n <= 4 then\n        -- first bait hit: everyone swaps\n        say = not s.swapCalled\n        s.swapCalled = true\n    elseif not s.swapCalled2 then\n        -- second bait hit: only the group that just baited (tanks and healers)\n        s.swapCalled2 = true\n        local r = AnyoneCore and AnyoneCore.Roster\n        local slot = r and r.current() and r.mySlot()\n        say = slot == \"T1\" or slot == \"T2\" or slot == \"H1\" or slot == \"H2\"\n    end\n    if say and AnyoneCore and AnyoneCore.Shotcall then AnyoneCore.Shotcall(\"Swap\", true, 2) end\nend\nself.used = true",
							conditions = 
							{
								
								{
									"0cf0c487-88ce-30ad-b37a-7006b5b475aa",
									true,
								},
							},
							uuid = "65b10b06-de6a-8527-a44e-e43697c7f1b7",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal id = eventArgs.spellID\nreturn p ~= nil and p.localmapid == 1226 and (id == 37951 or id == 37979 or id == 38013 or id == 37952 or id == 37980 or id == 38014)",
							dequeueIfLuaFalse = true,
							uuid = "0cf0c487-88ce-30ad-b37a-7006b5b475aa",
							version = 3,
						},
					},
				},
				eventType = 2,
				loop = true,
				mechanicTime = 13.3,
				name = "[Hector] Crossing pre-draw hits",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 12,
				timerStartOffset = -12,
				uuid = "216c47bf-af06-9077-b512-32f50644c455",
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
							actionLua = "local s = data.r1sQC\nif not s then return end\nif Now() > s.deadline then data.r1sQC = nil return end\nif s.n < 8 then\n    local o = s.origin\n    if not o and s.caster then\n        local e = TensorCore.mGetEntity(s.caster)\n        if s.spell == 37948 then\n            o = e and e.pos\n        else\n            for _, t in pairs(Argus.getTethersOnEnt(s.caster) or {}) do\n                if t.type == 12 and t.sourceid == s.caster then\n                    local jump = TensorCore.mGetEntity(t.targetid)\n                    if jump and jump.pos then\n                        o = {x=jump.pos.x, y=jump.pos.y, z=jump.pos.z}\n                        s.origin = o\n                    end\n                end\n            end\n            local c = e and e.castinginfo\n            if not o and (s.spell == 38009 or s.spell == 38995) and c and c.channelingid == s.spell then\n                local a = e.pos.h + (s.spell == 38009 and math.pi/2 or -math.pi/2)\n                o = {x=e.pos.x + 10*math.sin(a), y=e.pos.y, z=e.pos.z + 10*math.cos(a)}\n            end\n        end\n    end\n    if o then\n        local list = {}\n        for _, m in pairs(TensorCore.getEntityGroupList(\"Party\") or {}) do\n            local dx, dz = m.pos.x - o.x, m.pos.z - o.z\n            list[#list+1] = {d=dx*dx + dz*dz, h=math.atan2(dx, dz)}\n        end\n        table.sort(list, function(a, b) return a.d < b.d end)\n        local drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1, 0.85, 0, 0.15), 1.5)\n        for i = 1, math.min(4, #list) do\n            drawer:addCone(o.x, o.y, o.z, 100, math.pi/4, list[i].h)\n        end\n    end\nelse\n    local first = (s.cch == 0 and 1) or (s.cres >= 4 and s.cch < 5 and 5)\n    if first then\n        local drawer = TensorCore.getMoogleDrawer()\n        for i = first, first + 3 do\n            local c = s.cones[i]\n            if c then drawer:addCone(c.x, c.y, c.z, 100, math.pi/4, c.h) end\n        end\n    end\nend",
							conditions = 
							{
								
								{
									"993e0596-656d-58ec-8c58-3257dfd60e5b",
									true,
								},
							},
							uuid = "2df76289-1194-8a9a-8635-abd60fd17dd9",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s = data.r1sQC\nif not s or s.n >= 8 or Now() > s.deadline then return end\nlocal r = AnyoneCore and AnyoneCore.Roster\nlocal slot = r and r.current() and r.mySlot()\n-- {waymark pair, is DPS}: 1/A, 2/B, 3/C, 4/D\nlocal m = ({R1={1,true}, T1={1}, R2={2,true}, H2={2}, M2={3,true}, T2={3}, M1={4,true}, H1={4}})[slot]\nif not m then return end\nlocal o = s.origin\nif not o and s.caster then\n    local e = TensorCore.mGetEntity(s.caster)\n    if s.spell == 37948 then\n        o = e and e.pos\n    else\n        local c = e and e.castinginfo\n        if (s.spell == 38009 or s.spell == 38995) and c and c.channelingid == s.spell then\n            local a = e.pos.h + (s.spell == 38009 and math.pi/2 or -math.pi/2)\n            o = {x=e.pos.x + 10*math.sin(a), y=e.pos.y, z=e.pos.z + 10*math.cos(a)}\n        end\n    end\nend\nif not o then return end\nlocal player = TensorCore.mGetPlayer()\n-- DPS bait hit 1, supports bait hit 2\nlocal bait = (s.n == 0) == (m[2] == true)\nlocal headings = bait and {-3*math.pi/4, 3*math.pi/4, math.pi/4, -math.pi/4} or {math.pi, math.pi/2, 0, -math.pi/2}\nlocal radius = bait and 3 or 7\nlocal x, z = o.x + radius*math.sin(headings[m[1]]), o.z + radius*math.cos(headings[m[1]])\nlocal drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0, 1, 0, 0.55), 1.5)\nif bait and s.n == 0 then drawer:addCircle(x, o.y, z, 0.5) end\nlocal dx, dz = x - player.pos.x, z - player.pos.z\nlocal distance = math.sqrt(dx*dx + dz*dz)\nif distance > 0.4 then\n    local tip = math.min(0.8, distance*0.5)\n    drawer:addArrow(player.pos.x, player.pos.y, player.pos.z, math.atan2(dx, dz), distance - tip, 0.2, tip, 0.8)\nend",
							conditions = 
							{
								
								{
									"993e0596-656d-58ec-8c58-3257dfd60e5b",
									true,
								},
							},
							uuid = "5042026a-ba21-89b1-be27-7d7bb71d296b",
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
							conditionLua = "if not data.r1sQC then return false end\nlocal p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226",
							uuid = "993e0596-656d-58ec-8c58-3257dfd60e5b",
							version = 3,
						},
					},
				},
				eventType = 12,
				loop = true,
				mechanicTime = 13.3,
				name = "[Hector] Crossing pre-draw cones",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 12,
				timerStartOffset = -12,
				uuid = "9e049c3a-667e-5444-a8fa-36559a8577d6",
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
							actionLua = "local blacklist = MoogleTelegraphs.Settings.aoeIDUserBlacklist\nlocal wanted = {[37992]=\"One-two Paw\", [37993]=\"One-two Paw\", [38016]=\"Quadruple Swipe\", [37982]=\"Quadruple Swipe\"}\nfor id, label in pairs(wanted) do\n    blacklist[id] = {label=label, source=\"R1S Reactions (EU Ultimate)\"}\nend\nself.used = true",
							conditions = 
							{
								
								{
									"c067957e-5181-a556-922a-b3d8369a0aac",
									true,
								},
							},
							uuid = "5aeca7a6-8c42-9edb-8014-0cdf53ee611b",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nif not p or p.localmapid ~= 1226 then return false end\nif not MoogleTelegraphs or not MoogleTelegraphs.Settings or not MoogleTelegraphs.Settings.aoeIDUserBlacklist then return false end\nlocal wanted = {[37992]=\"One-two Paw\", [37993]=\"One-two Paw\", [38016]=\"Quadruple Swipe\", [37982]=\"Quadruple Swipe\"}\nfor id, label in pairs(wanted) do\n    local e = MoogleTelegraphs.Settings.aoeIDUserBlacklist[id]\n    if type(e) ~= 'table' or e.label ~= label or e.source ~= \"R1S Reactions (EU Ultimate)\" then return true end\nend\nreturn false",
							uuid = "c067957e-5181-a556-922a-b3d8369a0aac",
							version = 3,
						},
					},
				},
				mechanicTime = 13.3,
				name = "[Utility] R1S Moogle Telegraphs blacklist",
				throttleTime = 5000,
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 10,
				timerStartOffset = -14,
				uuid = "dd868b6d-5964-33fb-9a59-b1ab67cc9b21",
				version = 2,
			},
		},
	},
	[5] = 
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif p and ms > 0 then\n    TensorCore.getMoogleDrawer():addTimedCone(ms,p.x,p.y,p.z,100,math.pi/4,p.h)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"e3a8adb1-3da8-2fc8-aad9-ecee1eb41774",
									true,
								},
							},
							uuid = "508ef02f-a3e7-61b9-a513-2743f4999adc",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 37952 or eventArgs.spellID == 37980 or eventArgs.spellID == 38014)",
							dequeueIfLuaFalse = true,
							uuid = "e3a8adb1-3da8-2fc8-aad9-ecee1eb41774",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 20,
				name = "[Hector] Crossing repeat cones",
				timeRange = true,
				timelineIndex = 5,
				timerEndOffset = 4,
				timerStartOffset = -4,
				uuid = "86092253-2034-7241-8061-36903c80e5b2",
				version = 2,
			},
		},
	},
	[7] = 
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
							actionLua = "if AnyoneCore and AnyoneCore.Shotcall then\n    AnyoneCore.Shotcall(\"Tankbuster - swap after first hit\", true, 2)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"a9123c1b-d6a0-cfbe-84bf-e3e94922470b",
									true,
								},
							},
							uuid = "324628f1-5824-609f-bd83-9e5ea516efcd",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and eventArgs.spellID == 38037 and (p.job == 19 or p.job == 21 or p.job == 32 or p.job == 37)",
							dequeueIfLuaFalse = true,
							uuid = "a9123c1b-d6a0-cfbe-84bf-e3e94922470b",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 32.4,
				name = "[Hector] Biscuit Maker",
				timeRange = true,
				timelineIndex = 7,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "db2c190b-b8c3-5312-80c1-31ddafc2c5c2",
				version = 2,
			},
		},
	},
	[11] = 
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
							actionLua = "local ms = (eventArgs.duration or 0) * 1000\nif ms > 0 then\n    TensorCore.getMoogleDrawer():addTimedCone(ms, eventArgs.x, eventArgs.y, eventArgs.z, 100, math.pi, eventArgs.heading)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"44bb76c6-f870-14db-a86d-cd4ded885c9d",
									true,
								},
							},
							uuid = "214093ca-825a-cb00-b3bd-92974f36f501",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal ids = {[37943]=1,[37947]=1,[37970]=1,[37974]=1,[37989]=1,[37993]=1,[38004]=1,[38008]=1}\nreturn p ~= nil and p.localmapid == 1226 and ids[eventArgs.aoeID] == 1",
							dequeueIfLuaFalse = true,
							uuid = "44bb76c6-f870-14db-a86d-cd4ded885c9d",
							version = 3,
						},
					},
				},
				eventType = 18,
				loop = true,
				mechanicTime = 56.4,
				name = "[Hector] First Paw cleave",
				timeRange = true,
				timelineIndex = 11,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "03d1ebca-32a5-2a4a-96ef-d0d67295fdc4",
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
							actionLua = "local ms = (eventArgs.duration or 0) * 1000\nlocal delay = ms > 5000 and 6000 or 800\nif ms > delay then\n    TensorCore.getMoogleDrawer():addTimedCone(ms - delay, eventArgs.x, eventArgs.y, eventArgs.z, 100, math.pi, eventArgs.heading, delay, false, true)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"02e09b48-392a-b474-9391-c1188f192c28",
									true,
								},
							},
							uuid = "6f7314e1-2b12-5797-a4e6-cc9f2939c0ec",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal ids = {[37944]=1,[37946]=1,[37971]=1,[37973]=1,[37990]=1,[37992]=1,[38005]=1,[38007]=1}\nreturn p ~= nil and p.localmapid == 1226 and ids[eventArgs.aoeID] == 1",
							dequeueIfLuaFalse = true,
							uuid = "02e09b48-392a-b474-9391-c1188f192c28",
							version = 3,
						},
					},
				},
				eventType = 18,
				loop = true,
				mechanicTime = 56.4,
				name = "[Hector] Second Paw cleave",
				timeRange = true,
				timelineIndex = 11,
				timerEndOffset = 1,
				timerStartOffset = -10,
				uuid = "d3410f62-4624-262e-8341-ee887fa2d1b0",
				version = 2,
			},
		},
	},
	[18] = 
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
							actionLua = "local ms = (eventArgs.duration or 0) * 1000\nif ms > 0 then\n    TensorCore.getMoogleDrawer():addTimedCone(ms, eventArgs.x, eventArgs.y, eventArgs.z, 100, math.pi, eventArgs.heading)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"c2c558d3-c02e-369b-94e8-bf80973dcd2b",
									true,
								},
							},
							uuid = "9e368b52-35f5-ab61-b5b5-76136276e0f1",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal ids = {[37943]=1,[37947]=1,[37970]=1,[37974]=1,[37989]=1,[37993]=1,[38004]=1,[38008]=1}\nreturn p ~= nil and p.localmapid == 1226 and ids[eventArgs.aoeID] == 1",
							dequeueIfLuaFalse = true,
							uuid = "c2c558d3-c02e-369b-94e8-bf80973dcd2b",
							version = 3,
						},
					},
				},
				eventType = 18,
				loop = true,
				mechanicTime = 81.7,
				name = "[Hector] First Paw cleave",
				timeRange = true,
				timelineIndex = 18,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "f52fd26e-7c8b-7755-8074-601f45f1858d",
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
							actionLua = "local ms = (eventArgs.duration or 0) * 1000\n-- Nine Lives: the second cleave appears 2s later than elsewhere\nlocal delay = ms > 5000 and 8000 or 800\nif ms > delay then\n    TensorCore.getMoogleDrawer():addTimedCone(ms - delay, eventArgs.x, eventArgs.y, eventArgs.z, 100, math.pi, eventArgs.heading, delay, false, true)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"eae99731-4dcd-6a54-a4fb-859ad01d7f46",
									true,
								},
							},
							uuid = "a1e8d584-6c34-1157-9267-d4eea7eb4a20",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal ids = {[37944]=1,[37946]=1,[37971]=1,[37973]=1,[37990]=1,[37992]=1,[38005]=1,[38007]=1}\nreturn p ~= nil and p.localmapid == 1226 and ids[eventArgs.aoeID] == 1",
							dequeueIfLuaFalse = true,
							uuid = "eae99731-4dcd-6a54-a4fb-859ad01d7f46",
							version = 3,
						},
					},
				},
				eventType = 18,
				loop = true,
				mechanicTime = 81.7,
				name = "[Hector] Second Paw cleave",
				timeRange = true,
				timelineIndex = 18,
				timerEndOffset = 1,
				timerStartOffset = -10,
				uuid = "ca19d529-1d5c-7092-9fe0-57c9140481b9",
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
							actionLua = "local id = eventArgs.spellID\nlocal side = math.pi/2 -- +side is the caster's left, -side its right\nif id == 37942 or id == 37945 then\n    data.r1sPawDir = {first = id == 37942 and -side or side, till = Now() + 15000, seen = {}}\nelse\n    -- order of IDs: LRL, LLR, RRL, RLR (jump side, first cleave, second cleave)\n    local k = id >= 37999 and id - 37999 or id - 37965\n    local leap = k < 2 and side or -side\n    local first = (k == 0 or k == 2) and -side or side\n    if id < 37999 then data.r1sPawLeap = {leap = leap, first = first} end\n    data.r1sPaw = {live = {e = eventArgs.entityID, spell = id, leap = leap, first = first}, cones = {}, order = 1, deadline = Now() + (eventArgs.channelTimeMax or 5) * 1000 + 8000}\nend\nself.used = true",
							conditions = 
							{
								
								{
									"add331ea-2fba-1ea8-969c-e9ea36c6de9a",
									true,
								},
							},
							uuid = "b4fde029-76f2-f08c-bae7-8ab66cf87bb7",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal id = eventArgs.spellID\nreturn p ~= nil and p.localmapid == 1226 and (id == 37942 or id == 37945 or (id >= 37965 and id <= 37968) or (id >= 37999 and id <= 38002))",
							dequeueIfLuaFalse = true,
							uuid = "add331ea-2fba-1ea8-969c-e9ea36c6de9a",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 81.7,
				name = "[Hector] Paw pre-draw casts",
				timeRange = true,
				timelineIndex = 18,
				timerEndOffset = 8,
				timerStartOffset = -32,
				uuid = "6408f295-6a01-4b76-94a2-705ceb80a086",
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
							actionLua = "self.used = true\nlocal id = eventArgs.sourceEntityID\nlocal e = TensorCore.mGetEntity(id)\nlocal p = e and e.pos\nif not p then return end\nlocal d, L = data.r1sPawDir, data.r1sPawLeap\nif d and Now() < d.till then\n    -- standing clones replay the two cleaves from where they are\n    if d.seen[id] then return end\n    d.seen[id] = true\n    local s = data.r1sPaw\n    if not s or s.tag ~= d then\n        s = {tag = d, cones = {}, order = 1, deadline = Now() + 27000}\n        data.r1sPaw = s\n    end\n    s.cones[#s.cones+1] = {x=p.x, y=p.y, z=p.z, h=p.h + d.first, order=1}\n    s.cones[#s.cones+1] = {x=p.x, y=p.y, z=p.z, h=p.h - d.first, order=2}\nelseif L then\n    -- leaping version: the first clone tethered is the one; its re-tether starts the replay\n    if not L.clone then\n        L.clone, L.at = id, Now()\n    elseif L.clone == id and Now() - L.at > 10000 then\n        local a = p.h + L.leap\n        local x, z = p.x + 10*math.sin(a), p.z + 10*math.cos(a)\n        data.r1sPaw = {order = 1, deadline = Now() + 22000, cones = {\n            {x=x, y=p.y, z=z, h=p.h + L.first, order=1},\n            {x=x, y=p.y, z=z, h=p.h - L.first, order=2}}}\n        data.r1sPawLeap = nil\n    end\nend",
							conditions = 
							{
								
								{
									"52d14860-29ac-cb38-bd58-79fc81b8c12f",
									true,
								},
							},
							uuid = "4d4d4bca-4419-694a-ba94-622b41b43786",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and eventArgs.newTetherID == 102",
							dequeueIfLuaFalse = true,
							uuid = "52d14860-29ac-cb38-bd58-79fc81b8c12f",
							version = 3,
						},
					},
				},
				eventType = 15,
				loop = true,
				mechanicTime = 81.7,
				name = "[Hector] Paw pre-draw clones",
				timeRange = true,
				timelineIndex = 18,
				timerEndOffset = 8,
				timerStartOffset = -32,
				uuid = "5d066606-799c-8c95-9eff-6e974d9ab30a",
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
							actionLua = "local second = {[37944]=true,[37946]=true,[37971]=true,[37973]=true,[37990]=true,[37992]=true,[38005]=true,[38007]=true}\nlocal s = data.r1sPaw\nif s then\n    if second[eventArgs.spellID] then\n        data.r1sPaw = nil\n    elseif s.order ~= 2 then\n        s.order = 2\n        -- hold the second cleave back for 2s after the first goes off\n        s.showAt = Now() + 2000\n    end\nend\nself.used = true",
							conditions = 
							{
								
								{
									"7dbf6b32-ced8-14ff-ba87-7e0a6bef3c57",
									true,
								},
							},
							uuid = "a1fe3155-c5d7-1d26-9152-505a2218c361",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal ids = {[37943]=1,[37947]=1,[37970]=1,[37974]=1,[37989]=1,[37993]=1,[38004]=1,[38008]=1,[37944]=2,[37946]=2,[37971]=2,[37973]=2,[37990]=2,[37992]=2,[38005]=2,[38007]=2}\nreturn p ~= nil and p.localmapid == 1226 and ids[eventArgs.spellID] ~= nil",
							dequeueIfLuaFalse = true,
							uuid = "7dbf6b32-ced8-14ff-ba87-7e0a6bef3c57",
							version = 3,
						},
					},
				},
				eventType = 2,
				loop = true,
				mechanicTime = 81.7,
				name = "[Hector] Paw pre-draw hits",
				timeRange = true,
				timelineIndex = 18,
				timerEndOffset = 8,
				timerStartOffset = -32,
				uuid = "8e235d40-0426-75c5-ac2b-a5037a1cc5ef",
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
							actionLua = "local s = data.r1sPaw\nif not s then return end\nif Now() > s.deadline then data.r1sPaw = nil return end\nif s.showAt and Now() < s.showAt then return end\nlocal live = s.live\nif live then\n    -- follow the caster's facing until the leap cast ends, then keep the last value\n    local e = TensorCore.mGetEntity(live.e)\n    local c = e and e.castinginfo\n    if c and c.channelingid == live.spell then\n        local p = e.pos\n        local a = p.h + live.leap\n        local x, z = p.x + 10*math.sin(a), p.z + 10*math.cos(a)\n        s.cones = {{x=x, y=p.y, z=z, h=p.h + live.first, order=1}, {x=x, y=p.y, z=z, h=p.h - live.first, order=2}}\n    end\nend\nlocal drawer = TensorCore.getMoogleDrawer()\nfor _, c in ipairs(s.cones) do\n    if c.order == s.order then drawer:addCone(c.x, c.y, c.z, 100, math.pi, c.h) end\nend",
							conditions = 
							{
								
								{
									"ffc36a9a-1c50-5f99-b21a-08af3eed3489",
									true,
								},
							},
							uuid = "b16d3b2a-ca98-6639-9240-86ce2f731fea",
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
							conditionLua = "if not data.r1sPaw then return false end\nlocal p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226",
							uuid = "ffc36a9a-1c50-5f99-b21a-08af3eed3489",
							version = 3,
						},
					},
				},
				eventType = 12,
				loop = true,
				mechanicTime = 81.7,
				name = "[Hector] Paw pre-draw cones",
				timeRange = true,
				timelineIndex = 18,
				timerEndOffset = 8,
				timerStartOffset = -32,
				uuid = "655d59a5-7244-4c65-ae03-9949a445acef",
				version = 2,
			},
		},
	},
	[20] = 
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
							actionLua = "local id = eventArgs.spellID\nlocal roster = AnyoneCore and AnyoneCore.Roster\nlocal slot = roster and roster.current() and roster.mySlot()\nif id == 37983 or id == 38017 then\n    -- Double Swipe: callout only, no floating label\n    local groups = {T1=\"G1\", H1=\"G1\", M1=\"G1\", R1=\"G1\", T2=\"G2\", H2=\"G2\", M2=\"G2\", R2=\"G2\"}\n    local text = \"Light parties\"\n    if groups[slot] then text = text .. \" \" .. groups[slot] end\n    if AnyoneCore and AnyoneCore.Shotcall then AnyoneCore.Shotcall(text, true, 2) end\nelse\n    local caster = TensorCore.mGetEntity(eventArgs.entityID)\n    local p = caster and caster.pos\n    local ms = (eventArgs.channelTimeMax or 0) * 1000\n    if p and ms > 0 then\n        local pair = {R1=\"NW with MT\", T1=\"NW with R1\", R2=\"NE with H2\", H2=\"NE with R2\", M1=\"SW with H1\", H1=\"SW with M1\", M2=\"SE with OT\", T2=\"SE with M2\"}\n        local label = pair[slot] and (\"Pair stack \" .. pair[slot]) or \"Stack with partner\"\n        AnyoneCore.addTimedWorldText(ms, label, {x=p.x,y=p.y+3,z=p.z}, 0xFFFFFFFF, true, 1.2)\n    end\nend\nself.used = true",
							conditions = 
							{
								
								{
									"fece88ae-3e01-5263-8958-8b5592007ad9",
									true,
								},
							},
							uuid = "c4da49ab-df62-2a73-8624-92d1ad4acf6f",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 37981 or eventArgs.spellID == 37983 or eventArgs.spellID == 38015 or eventArgs.spellID == 38017)",
							dequeueIfLuaFalse = true,
							uuid = "fece88ae-3e01-5263-8958-8b5592007ad9",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 86.7,
				name = "[Hector] Swipe stacks",
				timeRange = true,
				timelineIndex = 20,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "6025f71f-89cd-f6f7-9b9a-1ec8d32ed73e",
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
							actionLua = "local ms = (eventArgs.channelTimeMax or 0) * 1000\nif ms <= 0 then return end\nlocal id = eventArgs.targetID\nif id and id > 0 then\n    local radius = (eventArgs.spellID == 37982 or eventArgs.spellID == 38016) and 4 or 5\n    TensorCore.getMoogleDrawer():addTimedCircleOnEnt(ms,id,radius,0,false,true)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"4a0f68f5-208b-705f-8c9d-b19cc17aa73f",
									true,
								},
							},
							uuid = "dc4bbe6d-faae-45b4-a1cd-1526ea158dac",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 37982 or eventArgs.spellID == 37984 or eventArgs.spellID == 38016 or eventArgs.spellID == 38018)",
							dequeueIfLuaFalse = true,
							uuid = "4a0f68f5-208b-705f-8c9d-b19cc17aa73f",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 86.7,
				name = "[Hector] Swipe stack circles",
				timeRange = true,
				timelineIndex = 20,
				timerEndOffset = 6,
				timerStartOffset = -9,
				uuid = "982e9db3-89b5-c301-86a1-f8c3548b83ec",
				version = 2,
			},
		},
	},
	[23] = 
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal player = TensorCore.mGetPlayer()\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif not caster or not caster.pos or not player or not player.pos or ms <= 0 then return end\nlocal roster = AnyoneCore.Roster\nlocal slot = roster and roster.current() and roster.mySlot()\nlocal spots = {\n    R1={\"NW\",\"N\",true}, T1={\"NW\",\"N\"},\n    R2={\"NE\",\"E\",true}, H2={\"NE\",\"E\"},\n    M1={\"SW\",\"W\",true}, H1={\"SW\",\"W\"},\n    M2={\"SE\",\"S\",true}, T2={\"SE\",\"S\"}\n}\nlocal pair = spots[slot]\nlocal text = \"DPS bait intercards first; supports wait cardinals, then swap\"\nif pair then\n    if pair[3] then\n        text = \"Bait \" .. pair[1] .. \" first, then wait \" .. pair[2]\n    else\n        text = \"Wait \" .. pair[2] .. \" first, then bait \" .. pair[1]\n    end\nend\nlocal spell = eventArgs.spellID\nlocal side = ({[37975]=\"Jump left\",[38009]=\"Shade left\",[38959]=\"Jump right\",[38995]=\"Shade right\"})[spell]\nif side then text = side .. \" - \" .. text end\nAnyoneCore.addTimedWorldTextOnEnt(ms,text,player.id,0xFFFFFFFF,true,1.2,2)\nself.used = true",
							conditions = 
							{
								
								{
									"8b665b40-5a33-befa-8a25-e5c6e678421c",
									true,
								},
							},
							uuid = "b97c59b0-7c65-66ac-8f18-387fd55a4f49",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 37948 or eventArgs.spellID == 37975 or eventArgs.spellID == 38009 or eventArgs.spellID == 38959 or eventArgs.spellID == 38995)",
							dequeueIfLuaFalse = true,
							uuid = "8b665b40-5a33-befa-8a25-e5c6e678421c",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 99.7,
				name = "[Hector] Crossing bait order",
				timeRange = true,
				timelineIndex = 23,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "c525d37a-9e3d-65e1-b072-0d7b3886e788",
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
							actionLua = "local id = eventArgs.spellID\nif id == 37952 or id == 37980 or id == 38014 then\n    local s = data.r1sQC\n    if s then s.cch = s.cch + 1 end\nelse\n    data.r1sQC = {caster=eventArgs.entityID, spell=id, n=0, cch=0, cres=0, cones={}, deadline=Now() + (eventArgs.channelTimeMax or 5) * 1000 + 10000}\nend\nself.used = true",
							conditions = 
							{
								
								{
									"6611e305-ab90-cb0c-8887-865ee793053e",
									true,
								},
							},
							uuid = "f6ecebbb-d9eb-7656-8a21-35dd9b056a04",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal id = eventArgs.spellID\nreturn p ~= nil and p.localmapid == 1226 and (id == 37948 or id == 37975 or id == 38959 or id == 38009 or id == 38995 or id == 37952 or id == 37980 or id == 38014)",
							dequeueIfLuaFalse = true,
							uuid = "6611e305-ab90-cb0c-8887-865ee793053e",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 99.7,
				name = "[Hector] Crossing pre-draw start",
				timeRange = true,
				timelineIndex = 23,
				timerEndOffset = 12,
				timerStartOffset = -12,
				uuid = "bd4b0d71-048c-adae-a17a-8e06c48eb259",
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
							actionLua = "local id = eventArgs.spellID\nlocal s = data.r1sQC\nif id == 37952 or id == 37980 or id == 38014 then\n    if s then\n        s.cres = s.cres + 1\n        if s.cres >= 8 then data.r1sQC = nil end\n    end\nelse\n    local e = TensorCore.mGetEntity(eventArgs.entityID)\n    local p = e and e.pos\n    if p then\n        if not s or s.n >= 8 or Now() > s.deadline then\n            s = {n=0, cch=0, cres=0, cones={}}\n            data.r1sQC = s\n        end\n        s.n = s.n + 1\n        s.cones[s.n] = {x=p.x, y=p.y, z=p.z, h=p.h}\n        s.origin = {x=p.x, y=p.y, z=p.z}\n        s.deadline = Now() + 12000\n    end\nend\nself.used = true",
							conditions = 
							{
								
								{
									"5f866d57-498f-b5db-803a-244400f101a0",
									true,
								},
							},
							uuid = "ebfc7a23-1580-c329-ba69-18b4bda9da4c",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local id = eventArgs.spellID\nlocal s = data.r1sQC\nif (id == 37951 or id == 37979 or id == 38013) and s then\n    local say = false\n    if s.n <= 4 then\n        -- first bait hit: everyone swaps\n        say = not s.swapCalled\n        s.swapCalled = true\n    elseif not s.swapCalled2 then\n        -- second bait hit: only the group that just baited (tanks and healers)\n        s.swapCalled2 = true\n        local r = AnyoneCore and AnyoneCore.Roster\n        local slot = r and r.current() and r.mySlot()\n        say = slot == \"T1\" or slot == \"T2\" or slot == \"H1\" or slot == \"H2\"\n    end\n    if say and AnyoneCore and AnyoneCore.Shotcall then AnyoneCore.Shotcall(\"Swap\", true, 2) end\nend\nself.used = true",
							conditions = 
							{
								
								{
									"5f866d57-498f-b5db-803a-244400f101a0",
									true,
								},
							},
							uuid = "01b99fdc-5c72-5faa-aa35-a90f5deff8fd",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal id = eventArgs.spellID\nreturn p ~= nil and p.localmapid == 1226 and (id == 37951 or id == 37979 or id == 38013 or id == 37952 or id == 37980 or id == 38014)",
							dequeueIfLuaFalse = true,
							uuid = "5f866d57-498f-b5db-803a-244400f101a0",
							version = 3,
						},
					},
				},
				eventType = 2,
				loop = true,
				mechanicTime = 99.7,
				name = "[Hector] Crossing pre-draw hits",
				timeRange = true,
				timelineIndex = 23,
				timerEndOffset = 12,
				timerStartOffset = -12,
				uuid = "377169fa-f8cf-cf4d-bfe0-7aba86e179b9",
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
							actionLua = "local s = data.r1sQC\nif not s then return end\nif Now() > s.deadline then data.r1sQC = nil return end\nif s.n < 8 then\n    local o = s.origin\n    if not o and s.caster then\n        local e = TensorCore.mGetEntity(s.caster)\n        if s.spell == 37948 then\n            o = e and e.pos\n        else\n            for _, t in pairs(Argus.getTethersOnEnt(s.caster) or {}) do\n                if t.type == 12 and t.sourceid == s.caster then\n                    local jump = TensorCore.mGetEntity(t.targetid)\n                    if jump and jump.pos then\n                        o = {x=jump.pos.x, y=jump.pos.y, z=jump.pos.z}\n                        s.origin = o\n                    end\n                end\n            end\n            local c = e and e.castinginfo\n            if not o and (s.spell == 38009 or s.spell == 38995) and c and c.channelingid == s.spell then\n                local a = e.pos.h + (s.spell == 38009 and math.pi/2 or -math.pi/2)\n                o = {x=e.pos.x + 10*math.sin(a), y=e.pos.y, z=e.pos.z + 10*math.cos(a)}\n            end\n        end\n    end\n    if o then\n        local list = {}\n        for _, m in pairs(TensorCore.getEntityGroupList(\"Party\") or {}) do\n            local dx, dz = m.pos.x - o.x, m.pos.z - o.z\n            list[#list+1] = {d=dx*dx + dz*dz, h=math.atan2(dx, dz)}\n        end\n        table.sort(list, function(a, b) return a.d < b.d end)\n        local drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1, 0.85, 0, 0.15), 1.5)\n        for i = 1, math.min(4, #list) do\n            drawer:addCone(o.x, o.y, o.z, 100, math.pi/4, list[i].h)\n        end\n    end\nelse\n    local first = (s.cch == 0 and 1) or (s.cres >= 4 and s.cch < 5 and 5)\n    if first then\n        local drawer = TensorCore.getMoogleDrawer()\n        for i = first, first + 3 do\n            local c = s.cones[i]\n            if c then drawer:addCone(c.x, c.y, c.z, 100, math.pi/4, c.h) end\n        end\n    end\nend",
							conditions = 
							{
								
								{
									"65f532d2-e9dd-7e8a-86bd-35f3be1b6ab8",
									true,
								},
							},
							uuid = "f8b68760-12df-edc9-804e-2e2be8ea152e",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s = data.r1sQC\nif not s or s.n >= 8 or Now() > s.deadline then return end\nlocal r = AnyoneCore and AnyoneCore.Roster\nlocal slot = r and r.current() and r.mySlot()\n-- {waymark pair, is DPS}: 1/A, 2/B, 3/C, 4/D\nlocal m = ({R1={1,true}, T1={1}, R2={2,true}, H2={2}, M2={3,true}, T2={3}, M1={4,true}, H1={4}})[slot]\nif not m then return end\nlocal o = s.origin\nif not o and s.caster then\n    local e = TensorCore.mGetEntity(s.caster)\n    if s.spell == 37948 then\n        o = e and e.pos\n    else\n        local c = e and e.castinginfo\n        if (s.spell == 38009 or s.spell == 38995) and c and c.channelingid == s.spell then\n            local a = e.pos.h + (s.spell == 38009 and math.pi/2 or -math.pi/2)\n            o = {x=e.pos.x + 10*math.sin(a), y=e.pos.y, z=e.pos.z + 10*math.cos(a)}\n        end\n    end\nend\nif not o then return end\nlocal player = TensorCore.mGetPlayer()\n-- DPS bait hit 1, supports bait hit 2\nlocal bait = (s.n == 0) == (m[2] == true)\nlocal headings = bait and {-3*math.pi/4, 3*math.pi/4, math.pi/4, -math.pi/4} or {math.pi, math.pi/2, 0, -math.pi/2}\nlocal radius = bait and 3 or 7\nlocal x, z = o.x + radius*math.sin(headings[m[1]]), o.z + radius*math.cos(headings[m[1]])\nlocal drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0, 1, 0, 0.55), 1.5)\nif bait and s.n == 0 then drawer:addCircle(x, o.y, z, 0.5) end\nlocal dx, dz = x - player.pos.x, z - player.pos.z\nlocal distance = math.sqrt(dx*dx + dz*dz)\nif distance > 0.4 then\n    local tip = math.min(0.8, distance*0.5)\n    drawer:addArrow(player.pos.x, player.pos.y, player.pos.z, math.atan2(dx, dz), distance - tip, 0.2, tip, 0.8)\nend",
							conditions = 
							{
								
								{
									"65f532d2-e9dd-7e8a-86bd-35f3be1b6ab8",
									true,
								},
							},
							uuid = "7b3584a9-db81-8bae-b39f-0c147863ca33",
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
							conditionLua = "if not data.r1sQC then return false end\nlocal p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226",
							uuid = "65f532d2-e9dd-7e8a-86bd-35f3be1b6ab8",
							version = 3,
						},
					},
				},
				eventType = 12,
				loop = true,
				mechanicTime = 99.7,
				name = "[Hector] Crossing pre-draw cones",
				timeRange = true,
				timelineIndex = 23,
				timerEndOffset = 12,
				timerStartOffset = -12,
				uuid = "e6b09ad8-e48c-eb94-881d-1fabbbe28ad3",
				version = 2,
			},
		},
	},
	[28] = 
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif p and ms > 0 then\n    TensorCore.getMoogleDrawer():addTimedCone(ms,p.x,p.y,p.z,100,math.pi/4,p.h)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"238ec420-0f6f-5223-9910-497f395fabeb",
									true,
								},
							},
							uuid = "25b3eaf7-04de-a578-9c24-b8cfa32639fc",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 37952 or eventArgs.spellID == 37980 or eventArgs.spellID == 38014)",
							dequeueIfLuaFalse = true,
							uuid = "238ec420-0f6f-5223-9910-497f395fabeb",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 107.4,
				name = "[Hector] Crossing repeat cones",
				timeRange = true,
				timelineIndex = 28,
				timerEndOffset = 4,
				timerStartOffset = -4,
				uuid = "c6f84f46-55b6-3f89-a852-bad0b92c5790",
				version = 2,
			},
		},
	},
	[30] = 
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
							actionLua = "local id = eventArgs.spellID\nlocal roster = AnyoneCore and AnyoneCore.Roster\nlocal slot = roster and roster.current() and roster.mySlot()\nif id == 37983 or id == 38017 then\n    -- Double Swipe: callout only, no floating label\n    local groups = {T1=\"G1\", H1=\"G1\", M1=\"G1\", R1=\"G1\", T2=\"G2\", H2=\"G2\", M2=\"G2\", R2=\"G2\"}\n    local text = \"Light parties\"\n    if groups[slot] then text = text .. \" \" .. groups[slot] end\n    if AnyoneCore and AnyoneCore.Shotcall then AnyoneCore.Shotcall(text, true, 2) end\nelse\n    local caster = TensorCore.mGetEntity(eventArgs.entityID)\n    local p = caster and caster.pos\n    local ms = (eventArgs.channelTimeMax or 0) * 1000\n    if p and ms > 0 then\n        local pair = {R1=\"NW with MT\", T1=\"NW with R1\", R2=\"NE with H2\", H2=\"NE with R2\", M1=\"SW with H1\", H1=\"SW with M1\", M2=\"SE with OT\", T2=\"SE with M2\"}\n        local label = pair[slot] and (\"Pair stack \" .. pair[slot]) or \"Stack with partner\"\n        AnyoneCore.addTimedWorldText(ms, label, {x=p.x,y=p.y+3,z=p.z}, 0xFFFFFFFF, true, 1.2)\n    end\nend\nself.used = true",
							conditions = 
							{
								
								{
									"463d8f9c-931f-e911-b6dd-11365649bc14",
									true,
								},
							},
							uuid = "e834fa50-fbe2-2ce7-8b73-bbafe031d79d",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 37981 or eventArgs.spellID == 37983 or eventArgs.spellID == 38015 or eventArgs.spellID == 38017)",
							dequeueIfLuaFalse = true,
							uuid = "463d8f9c-931f-e911-b6dd-11365649bc14",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 111.1,
				name = "[Hector] Swipe stacks",
				timeRange = true,
				timelineIndex = 30,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "fbb93434-ad5d-bf92-bed4-4f1122e9e48a",
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
							actionLua = "local ms = (eventArgs.channelTimeMax or 0) * 1000\nif ms <= 0 then return end\nlocal id = eventArgs.targetID\nif id and id > 0 then\n    local radius = (eventArgs.spellID == 37982 or eventArgs.spellID == 38016) and 4 or 5\n    TensorCore.getMoogleDrawer():addTimedCircleOnEnt(ms,id,radius,0,false,true)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"19e1dc2f-9913-5baf-bd06-d5849775ab96",
									true,
								},
							},
							uuid = "b57d75ff-8fe7-4a00-aa1a-88b14e9e124d",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 37982 or eventArgs.spellID == 37984 or eventArgs.spellID == 38016 or eventArgs.spellID == 38018)",
							dequeueIfLuaFalse = true,
							uuid = "19e1dc2f-9913-5baf-bd06-d5849775ab96",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 111.1,
				name = "[Hector] Swipe stack circles",
				timeRange = true,
				timelineIndex = 30,
				timerEndOffset = 6,
				timerStartOffset = -9,
				uuid = "d35ba426-136e-2241-b3dc-45f8465e34db",
				version = 2,
			},
		},
	},
	[31] = 
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif p and ms > 0 then\n    AnyoneCore.addTimedWorldText(ms, \"Raidwide - Bloody Scratch\", {x=p.x,y=p.y+3,z=p.z}, 0xFFFFFFFF, true, 1.2)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"c63589d5-5900-506e-afde-3f0cbaa78cf5",
									true,
								},
							},
							uuid = "5e9c7667-e876-c577-be1e-b7c73128b0f0",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 38036)",
							dequeueIfLuaFalse = true,
							uuid = "c63589d5-5900-506e-afde-3f0cbaa78cf5",
							version = 3,
						},
					},
				},
				enabled = false,
				eventType = 3,
				loop = true,
				mechanicTime = 121.8,
				name = "[Hector] Bloody Scratch raidwide",
				timeRange = true,
				timelineIndex = 31,
				timerEndOffset = 1,
				timerStartOffset = -10,
				uuid = "f4203b6c-b76d-178c-82b2-dea8db519f1e",
				version = 2,
			},
		},
	},
	[33] = 
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
							actionLua = "local ms = (eventArgs.channelTimeMax or 0) * 1000\nif ms <= 0 then return end\nlocal caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nif p then\n    local label = eventArgs.spellID == 39276 and \"Tile breaks\" or \"Tile takes damage\"\n    AnyoneCore.addTimedWorldText(ms,label,{x=p.x,y=p.y+1,z=p.z},0xFFFFFFFF,true,1.05)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"08515560-50f8-5b5e-96c3-52d904b3f59b",
									true,
								},
							},
							uuid = "37ad6a1d-cd64-43a7-8a7d-675e3903616f",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 37955 or eventArgs.spellID == 39276)",
							dequeueIfLuaFalse = true,
							uuid = "08515560-50f8-5b5e-96c3-52d904b3f59b",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 135.3,
				name = "[Hector] Mouser tile warnings",
				timeRange = true,
				timelineIndex = 33,
				timerEndOffset = 6,
				timerStartOffset = -9,
				uuid = "7f8afbbf-2fa7-2c68-a1f6-3d4d7d9a86b2",
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif not p or ms <= 0 then return end\n-- the jump lands about 10.4s after this 0.7s marker cast\nlocal now = Now()\nlocal hit = now + ms + 10400\nlocal first = data.r1sTileFirst\nif not first or hit - first > 25000 or hit < first - 1000 then\n    first = hit\n    data.r1sTileFirst = hit\nend\n-- the first three sets show at once, later sets 3.5s before they land\nlocal from = now\nif hit - first > 2500 then from = math.max(now, hit - 3500) end\nlocal color = eventArgs.spellID == 39276 and 0x803333FF or 0x8033AAFF\nTensorCore.getStaticDrawer(color, 2):addTimedCenteredRect(hit - from, p.x, p.y, p.z, 10, 10, 0, from - now, false, true)\nself.used = true",
							conditions = 
							{
								
								{
									"b13f405a-b947-7943-a607-cd0ab2beb249",
									true,
								},
							},
							uuid = "53a0db01-6fba-8dac-86a6-4cd1755f72d4",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif p and ms > 0 then\n    local hit = Now() + ms + 10400\n    local s = data.r1sSafe\n    if not s or hit - s.last > 25000 then\n        s = {tiles = {}, last = hit}\n        data.r1sSafe = s\n    end\n    s.last = math.max(s.last, hit)\n    s.tiles[#s.tiles+1] = {x = p.x, z = p.z, hit = hit, destroys = eventArgs.spellID == 39276}\nend\nself.used = true",
							conditions = 
							{
								
								{
									"b13f405a-b947-7943-a607-cd0ab2beb249",
									true,
								},
							},
							uuid = "52cd487c-8a8e-0dd9-b899-f26b8b8e1c78",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 37955 or eventArgs.spellID == 39276)",
							dequeueIfLuaFalse = true,
							uuid = "b13f405a-b947-7943-a607-cd0ab2beb249",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 135.3,
				name = "[Hector] Mouser tile geometry",
				timeRange = true,
				timelineIndex = 33,
				timerEndOffset = 12,
				timerStartOffset = -12,
				uuid = "4508e69e-35f3-8b90-a87c-3c11f05a3939",
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
							actionLua = "local s = data.r1sSafe\nif not s then return end\nlocal now = Now()\nif now > s.last + 500 then data.r1sSafe = nil return end\nlocal first\nfor _, t in ipairs(s.tiles) do\n    if t.hit > now and (not first or t.hit < first) then first = t.hit end\nend\nlocal channel = Argus2.getNextUnusedChannel(true)\nif channel == nil then return end\nlocal ground = Argus2.RenderFlags.FLAG_WARP_TERRAIN + Argus2.RenderFlags.FLAG_RENDER_UI\nlocal baseFlags = ground + Argus2.RenderFlags.FLAG_OCCLUSION_BASE\nlocal cutFlags = ground + Argus2.RenderFlags.FLAG_OCCLUDE\nlocal base = TensorCore.getCachedFlatDrawer(0x7333CC33, 0x7333CC33, 0x7333CC33, 0x00000000, 0, channel, baseFlags)\nlocal cut = TensorCore.getCachedFlatDrawer(0x00000000, 0x00000000, 0x00000000, 0x00000000, 0, channel, cutFlags)\nbase:addCenteredRect(100, 0.05, 100, 40, 40, 0, false, baseFlags)\nfor _, t in ipairs(s.tiles) do\n    -- holes stay cut out; tiles about to be hit are cut for the next three sets\n    local hole = t.destroys and t.hit <= now\n    local soon = first and t.hit > now - 300 and t.hit <= first + 2500\n    if hole or soon then cut:addCenteredRect(t.x, 0.05, t.z, 10, 10, 0, false, cutFlags) end\nend",
							conditions = 
							{
								
								{
									"7a06de8c-7bb4-2821-aa0a-1be50019dc4a",
									true,
								},
							},
							uuid = "e948fd28-4661-b487-a4b8-2a6048eeab3c",
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
							conditionLua = "if not data.r1sSafe then return false end\nlocal p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226",
							uuid = "7a06de8c-7bb4-2821-aa0a-1be50019dc4a",
							version = 3,
						},
					},
				},
				eventType = 12,
				loop = true,
				mechanicTime = 135.3,
				name = "[Hector] Mouser safe tiles",
				timeRange = true,
				timelineIndex = 33,
				timerEndOffset = 24,
				timerStartOffset = -12,
				uuid = "7e541711-b35b-18cb-bec1-2fb23e6602d8",
				version = 2,
			},
		},
	},
	[36] = 
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif p and ms > 0 then\n    local labels = {[37958]=\"Marked player: knockback onto intact tile\", [37960]=\"Marked player: stand on intact tile\"}\n    AnyoneCore.addTimedWorldText(ms, labels[eventArgs.spellID], {x=p.x,y=p.y+3,z=p.z}, 0xFFFFFFFF, true, 1.2)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"751196b4-8abf-1e92-8725-b153f1d13c5a",
									true,
								},
							},
							uuid = "bb13d4f5-a15c-29be-8780-47fe7dcf537a",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 37958 or eventArgs.spellID == 37960)",
							dequeueIfLuaFalse = true,
							uuid = "751196b4-8abf-1e92-8725-b153f1d13c5a",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 175.9,
				name = "[Hector] Copycat landing",
				timeRange = true,
				timelineIndex = 36,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "1e647e06-63ee-bccb-beff-eda6029a4f08",
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
							actionLua = "data.r1sEE = {target = eventArgs.entityID, deadline = Now() + 11000}\nself.used = true",
							conditions = 
							{
								
								{
									"a97c1c4d-52be-1323-bf50-0bc7aac20ff8",
									true,
								},
							},
							uuid = "3124c7fc-a2aa-1399-ac80-d5cc1e3fac9d",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and eventArgs.markerID == 538",
							dequeueIfLuaFalse = true,
							uuid = "a97c1c4d-52be-1323-bf50-0bc7aac20ff8",
							version = 3,
						},
					},
				},
				eventType = 4,
				loop = true,
				mechanicTime = 175.9,
				name = "[Hector] Eviscerate marked player",
				timeRange = true,
				timelineIndex = 36,
				timerEndOffset = 40,
				timerStartOffset = -8,
				uuid = "c554bcb8-b699-1137-a150-f28fd08490c8",
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
							actionLua = "data.r1sEEKnock = eventArgs.spellID == 37958 and 10 or 0\nself.used = true",
							conditions = 
							{
								
								{
									"698d275e-31f1-24d6-b04f-c7be01786562",
									true,
								},
							},
							uuid = "6a588910-6a14-c97e-aeba-db76ea09e6d5",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 37958 or eventArgs.spellID == 37960)",
							dequeueIfLuaFalse = true,
							uuid = "698d275e-31f1-24d6-b04f-c7be01786562",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 175.9,
				name = "[Hector] Eviscerate casts",
				timeRange = true,
				timelineIndex = 36,
				timerEndOffset = 40,
				timerStartOffset = -8,
				uuid = "444a5e23-fd50-5147-9103-72eb899b3814",
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
							actionLua = "self.used = true\nlocal s = data.r1sEE\nif not s then return end\nif eventArgs.spellID == 37962 then data.r1sEE = nil return end\n-- the target was just hit: freeze the landing tile until its impact\nlocal e = TensorCore.mGetEntity(s.target)\nlocal p = e and e.pos\nif p then\n    local knock = eventArgs.spellID == 37959 and 10 or 0\n    data.r1sEELand = {target = s.target, x = p.x + knock*math.sin(p.h), y = p.y, z = p.z + knock*math.cos(p.h), deadline = Now() + (knock > 0 and 3800 or 1600)}\nend",
							conditions = 
							{
								
								{
									"02cdcf03-95a3-cb20-89e5-6c80993f2657",
									true,
								},
							},
							uuid = "547099ae-f01d-6034-9cae-bbb91210591d",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal id = eventArgs.spellID\nreturn p ~= nil and p.localmapid == 1226 and (id == 37959 or id == 37961 or id == 37962)",
							dequeueIfLuaFalse = true,
							uuid = "02cdcf03-95a3-cb20-89e5-6c80993f2657",
							version = 3,
						},
					},
				},
				eventType = 2,
				loop = true,
				mechanicTime = 175.9,
				name = "[Hector] Eviscerate hits",
				timeRange = true,
				timelineIndex = 36,
				timerEndOffset = 40,
				timerStartOffset = -8,
				uuid = "4c87f4a7-e0be-5b53-9d49-0eb9d5179fdc",
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
							actionLua = "local function tile(v) return v < 90 and 85 or v < 100 and 95 or v < 110 and 105 or 115 end\nlocal s, land = data.r1sEE, data.r1sEELand\nif s and Now() > s.deadline then data.r1sEE = nil s = nil end\nif land and Now() > land.deadline then data.r1sEELand = nil land = nil end\nif s then\n    local e = TensorCore.mGetEntity(s.target)\n    local p = e and e.pos\n    if p and TensorCore.mGetPlayer().id ~= s.target then\n        -- the cross is centred on the marked player's tile, aligned to the arena\n        local drawer = TensorCore.getMoogleDrawer()\n        local x, z = tile(p.x), tile(p.z)\n        drawer:addCenteredRect(x, p.y, z, 120, 10, 0)\n        drawer:addCenteredRect(x, p.y, z, 120, 10, math.pi/2)\n    end\nend\n-- landing tile, only once the jump has hit: green for the baiting player, red for everyone else\nif land then\n    local mine = TensorCore.mGetPlayer().id == land.target\n    local color = GUI:ColorConvertFloat4ToU32(mine and 0 or 1, mine and 1 or 0, 0, 0.35)\n    TensorCore.getStaticDrawer(color, 2):addCenteredRect(tile(land.x), land.y, tile(land.z), 10, 10, 0)\nend",
							conditions = 
							{
								
								{
									"81a8a937-d91f-44d2-b047-6c3f8ee91d40",
									true,
								},
							},
							uuid = "c338c587-a2ed-68de-8b9d-9c2ac7385a31",
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
							conditionLua = "if not data.r1sEE and not data.r1sEELand then return false end\nlocal p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226",
							uuid = "81a8a937-d91f-44d2-b047-6c3f8ee91d40",
							version = 3,
						},
					},
				},
				eventType = 12,
				loop = true,
				mechanicTime = 175.9,
				name = "[Hector] Eviscerate pre-draw",
				timeRange = true,
				timelineIndex = 36,
				timerEndOffset = 40,
				timerStartOffset = -8,
				uuid = "ce2b3f5e-0157-ac1d-9425-be082ea088a4",
				version = 2,
			},
		},
	},
	[40] = 
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif p and ms > 0 then\n    local labels = {[37958]=\"Marked player: knockback onto intact tile\", [37960]=\"Marked player: stand on intact tile\"}\n    AnyoneCore.addTimedWorldText(ms, labels[eventArgs.spellID], {x=p.x,y=p.y+3,z=p.z}, 0xFFFFFFFF, true, 1.2)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"b567aa4f-de98-81f5-93b0-775850eac501",
									true,
								},
							},
							uuid = "7b5f77a5-f836-caa6-8ba8-d7fa9d358751",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 37958 or eventArgs.spellID == 37960)",
							dequeueIfLuaFalse = true,
							uuid = "b567aa4f-de98-81f5-93b0-775850eac501",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 187.1,
				name = "[Hector] Copycat landing",
				timeRange = true,
				timelineIndex = 40,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "6d0d583a-67b2-ef44-8eaa-00d988ddf667",
				version = 2,
			},
		},
	},
	[44] = 
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif p and ms > 0 then\n    local labels = {[37958]=\"Marked player: knockback onto intact tile\", [37960]=\"Marked player: stand on intact tile\"}\n    AnyoneCore.addTimedWorldText(ms, labels[eventArgs.spellID], {x=p.x,y=p.y+3,z=p.z}, 0xFFFFFFFF, true, 1.2)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"efb1ef4e-dcf1-d84f-89fc-c98e9f692863",
									true,
								},
							},
							uuid = "acb59ebe-762d-2b0d-90d6-371bd5022875",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 37958 or eventArgs.spellID == 37960)",
							dequeueIfLuaFalse = true,
							uuid = "efb1ef4e-dcf1-d84f-89fc-c98e9f692863",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 198.3,
				name = "[Hector] Copycat landing",
				timeRange = true,
				timelineIndex = 44,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "8349fc14-5274-839a-a5c3-dedb950b4760",
				version = 2,
			},
		},
	},
	[48] = 
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif p and ms > 0 then\n    local labels = {[37958]=\"Marked player: knockback onto intact tile\", [37960]=\"Marked player: stand on intact tile\"}\n    AnyoneCore.addTimedWorldText(ms, labels[eventArgs.spellID], {x=p.x,y=p.y+3,z=p.z}, 0xFFFFFFFF, true, 1.2)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"aef09e4d-30c3-0916-b108-ad10a4ce5729",
									true,
								},
							},
							uuid = "1d8b5287-858c-1485-bcc6-f1dbfe793fb6",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 37958 or eventArgs.spellID == 37960)",
							dequeueIfLuaFalse = true,
							uuid = "aef09e4d-30c3-0916-b108-ad10a4ce5729",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 209.5,
				name = "[Hector] Copycat landing",
				timeRange = true,
				timelineIndex = 48,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "4b74af6c-0909-466e-bdea-a1342e8e6425",
				version = 2,
			},
		},
	},
	[53] = 
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
							actionLua = "if AnyoneCore and AnyoneCore.Shotcall then\n    AnyoneCore.Shotcall(\"Tankbuster - swap after first hit\", true, 2)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"1bf58c02-fc0d-e340-8b0e-6ea5e5a35da0",
									true,
								},
							},
							uuid = "7e14da3d-62a9-016c-8675-d1689ee3498f",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and eventArgs.spellID == 38037 and (p.job == 19 or p.job == 21 or p.job == 32 or p.job == 37)",
							dequeueIfLuaFalse = true,
							uuid = "1bf58c02-fc0d-e340-8b0e-6ea5e5a35da0",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 223.2,
				name = "[Hector] Biscuit Maker",
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "b29e3750-2453-6ca6-b4e4-5aa06645109e",
				version = 2,
			},
		},
	},
	[55] = 
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
							actionLua = "if AnyoneCore and AnyoneCore.Shotcall then\n    AnyoneCore.Shotcall(\"Knockback then spread\", true, 2)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"d2444a4a-2249-54b9-841f-f5ea734afb9c",
									true,
								},
							},
							uuid = "7459c1f6-b634-9b24-94ad-1f4c220178a4",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 37963)",
							dequeueIfLuaFalse = true,
							uuid = "d2444a4a-2249-54b9-841f-f5ea734afb9c",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 235.2,
				name = "[Hector] Grimalkin Gale",
				timeRange = true,
				timelineIndex = 55,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "e1ea94c1-5b98-9ed9-b8b4-e991ff12b4a6",
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif p and ms > 0 then\n    -- the knockback resolves about 0.35s after the 6.7s cast\n    data.r1sKnock = {x = p.x, z = p.z, deadline = Now() + ms + 400}\nend\nself.used = true",
							conditions = 
							{
								
								{
									"c666d75a-d718-9ffa-8f8b-0fa43545f37b",
									true,
								},
							},
							uuid = "545e6a40-84a3-cd24-8764-1c8f67c16c7c",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and eventArgs.spellID == 37964",
							dequeueIfLuaFalse = true,
							uuid = "c666d75a-d718-9ffa-8f8b-0fa43545f37b",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 235.2,
				name = "[Hector] Shockwave knockback start",
				timeRange = true,
				timelineIndex = 55,
				timerEndOffset = 3,
				timerStartOffset = -9,
				uuid = "293a578a-586d-5356-b98d-b8c9490487e2",
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
							actionLua = "local k = data.r1sKnock\nif not k then return end\nif Now() > k.deadline then data.r1sKnock = nil return end\nlocal p = TensorCore.mGetPlayer().pos\nlocal dx, dz = p.x - k.x, p.z - k.z\nif dx*dx + dz*dz < 0.01 then return end\n-- pushed 21 yalms directly away from the source\nlocal h = math.atan2(dx, dz)\nlocal drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0, 1, 0, 0.6), 2)\ndrawer:addRect(p.x, p.y, p.z, 21, 1, h)\ndrawer:addCircle(p.x + 21*math.sin(h), p.y, p.z + 21*math.cos(h), 1)",
							conditions = 
							{
								
								{
									"656309e3-bf67-2b7d-bcba-a36f0bca58d5",
									true,
								},
							},
							uuid = "8de2292b-edc5-663e-b545-65fb0fec4ccc",
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
							conditionLua = "if not data.r1sKnock then return false end\nlocal p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226",
							uuid = "656309e3-bf67-2b7d-bcba-a36f0bca58d5",
							version = 3,
						},
					},
				},
				eventType = 12,
				loop = true,
				mechanicTime = 235.2,
				name = "[Hector] Shockwave knockback line",
				timeRange = true,
				timelineIndex = 55,
				timerEndOffset = 3,
				timerStartOffset = -9,
				uuid = "e4b7aa8d-123c-1c53-ae5d-f7fcfbd6862c",
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
							actionLua = "if AnyoneCore and AnyoneCore.Shotcall then\n    AnyoneCore.Shotcall(\"Spread\", true, 2)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"1b135b45-5f8d-9a2d-88c0-e0cdfc0c9b4c",
									true,
								},
							},
							uuid = "7f38d69c-8638-4f61-88b6-0601956bae1e",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and eventArgs.spellID == 37964",
							dequeueIfLuaFalse = true,
							uuid = "1b135b45-5f8d-9a2d-88c0-e0cdfc0c9b4c",
							version = 3,
						},
					},
				},
				eventType = 2,
				mechanicTime = 235.2,
				name = "[Hector] Spread after Shockwave",
				timeRange = true,
				timelineIndex = 55,
				timerEndOffset = 3,
				timerStartOffset = -9,
				uuid = "1e35cb8e-9a36-4df8-8648-f358bdd7229d",
				version = 2,
			},
		},
	},
	[57] = 
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
							actionLua = "local ms = (eventArgs.channelTimeMax or 0) * 1000\nif ms <= 0 then return end\nlocal id = eventArgs.targetID\nif id and id > 0 then TensorCore.getMoogleDrawer():addTimedCircleOnEnt(ms,id,5,0,false,true) end\nself.used = true",
							conditions = 
							{
								
								{
									"852ee158-c775-5d23-96b0-17491f539806",
									true,
								},
							},
							uuid = "7d468849-7bfe-88d8-b60b-6d4886fbdf4b",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 39812)",
							dequeueIfLuaFalse = true,
							uuid = "852ee158-c775-5d23-96b0-17491f539806",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 240,
				name = "[Hector] Gale spread circles",
				timeRange = true,
				timelineIndex = 57,
				timerEndOffset = 6,
				timerStartOffset = -9,
				uuid = "93b85fc3-d514-2904-afa8-030dd901ee37",
				version = 2,
			},
		},
	},
	[60] = 
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
							actionLua = "local ms = (eventArgs.duration or 0) * 1000\nif ms > 0 then\n    TensorCore.getMoogleDrawer():addTimedCone(ms, eventArgs.x, eventArgs.y, eventArgs.z, 100, math.pi, eventArgs.heading)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"42dabda0-5b02-c536-abcf-f8285f537992",
									true,
								},
							},
							uuid = "b77da586-b978-cb04-bb62-b5e83a825155",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal ids = {[37943]=1,[37947]=1,[37970]=1,[37974]=1,[37989]=1,[37993]=1,[38004]=1,[38008]=1}\nreturn p ~= nil and p.localmapid == 1226 and ids[eventArgs.aoeID] == 1",
							dequeueIfLuaFalse = true,
							uuid = "42dabda0-5b02-c536-abcf-f8285f537992",
							version = 3,
						},
					},
				},
				eventType = 18,
				loop = true,
				mechanicTime = 262.3,
				name = "[Hector] First Paw cleave",
				timeRange = true,
				timelineIndex = 60,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "69ee5567-6165-390d-b4e9-af78ef6c8ae4",
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
							actionLua = "local ms = (eventArgs.duration or 0) * 1000\nlocal delay = ms > 5000 and 6000 or 800\nif ms > delay then\n    TensorCore.getMoogleDrawer():addTimedCone(ms - delay, eventArgs.x, eventArgs.y, eventArgs.z, 100, math.pi, eventArgs.heading, delay, false, true)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"f0d8fc92-ff63-2f33-809c-86ad7d97cac6",
									true,
								},
							},
							uuid = "d6a6da7f-2e37-1be7-b893-5124c2df542a",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal ids = {[37944]=1,[37946]=1,[37971]=1,[37973]=1,[37990]=1,[37992]=1,[38005]=1,[38007]=1}\nreturn p ~= nil and p.localmapid == 1226 and ids[eventArgs.aoeID] == 1",
							dequeueIfLuaFalse = true,
							uuid = "f0d8fc92-ff63-2f33-809c-86ad7d97cac6",
							version = 3,
						},
					},
				},
				eventType = 18,
				loop = true,
				mechanicTime = 262.3,
				name = "[Hector] Second Paw cleave",
				timeRange = true,
				timelineIndex = 60,
				timerEndOffset = 1,
				timerStartOffset = -10,
				uuid = "fbe4bc09-fc69-e273-a9b7-969e3267b98b",
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif not p or ms <= 0 then return end\nlocal spell = eventArgs.spellID\nlocal left = spell == 37965 or spell == 37966 or spell == 37999 or spell == 38000\nlocal dodgeLeft = spell == 37965 or spell == 37967 or spell == 37999 or spell == 38001\nlocal tell = (left and \"Jump left\" or \"Jump right\") .. (dodgeLeft and \" - dodge left then right\" or \" - dodge right then left\")\nAnyoneCore.addTimedWorldText(ms,tell,{x=p.x,y=p.y+3,z=p.z},0xFFFFFFFF,true,1.2)\nself.used = true",
							conditions = 
							{
								
								{
									"213d2ecf-8133-8059-8358-9f2cab2f343c",
									true,
								},
							},
							uuid = "71c3bb81-d3cb-0f25-907b-e6677c473efb",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 37965 or eventArgs.spellID == 37966 or eventArgs.spellID == 37967 or eventArgs.spellID == 37968 or eventArgs.spellID == 37999 or eventArgs.spellID == 38000 or eventArgs.spellID == 38001 or eventArgs.spellID == 38002)",
							dequeueIfLuaFalse = true,
							uuid = "213d2ecf-8133-8059-8358-9f2cab2f343c",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 262.3,
				name = "[Hector] Leaping Paw setup",
				timeRange = true,
				timelineIndex = 60,
				timerEndOffset = 4,
				timerStartOffset = -12,
				uuid = "933bed33-66c9-bf5e-b988-8863e5e9f6fb",
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
							actionLua = "local id = eventArgs.spellID\nlocal side = math.pi/2 -- +side is the caster's left, -side its right\nif id == 37942 or id == 37945 then\n    data.r1sPawDir = {first = id == 37942 and -side or side, till = Now() + 15000, seen = {}}\nelse\n    -- order of IDs: LRL, LLR, RRL, RLR (jump side, first cleave, second cleave)\n    local k = id >= 37999 and id - 37999 or id - 37965\n    local leap = k < 2 and side or -side\n    local first = (k == 0 or k == 2) and -side or side\n    if id < 37999 then data.r1sPawLeap = {leap = leap, first = first} end\n    data.r1sPaw = {live = {e = eventArgs.entityID, spell = id, leap = leap, first = first}, cones = {}, order = 1, deadline = Now() + (eventArgs.channelTimeMax or 5) * 1000 + 8000}\nend\nself.used = true",
							conditions = 
							{
								
								{
									"10b26326-153f-aa3d-ab25-acea1adb0fba",
									true,
								},
							},
							uuid = "dba67188-878b-8ec9-8049-eeb0bd18a67c",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal id = eventArgs.spellID\nreturn p ~= nil and p.localmapid == 1226 and (id == 37942 or id == 37945 or (id >= 37965 and id <= 37968) or (id >= 37999 and id <= 38002))",
							dequeueIfLuaFalse = true,
							uuid = "10b26326-153f-aa3d-ab25-acea1adb0fba",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 262.3,
				name = "[Hector] Paw pre-draw casts",
				timeRange = true,
				timelineIndex = 60,
				timerEndOffset = 5,
				timerStartOffset = -7,
				uuid = "74ddcd11-11de-d6e6-a1c9-3e5d885ba383",
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
							actionLua = "local second = {[37944]=true,[37946]=true,[37971]=true,[37973]=true,[37990]=true,[37992]=true,[38005]=true,[38007]=true}\nlocal s = data.r1sPaw\nif s then\n    if second[eventArgs.spellID] then data.r1sPaw = nil else s.order = 2 end\nend\nself.used = true",
							conditions = 
							{
								
								{
									"e8b46dbb-38f6-e27a-94b8-f030eeb6fd07",
									true,
								},
							},
							uuid = "1f17faed-5c5f-2030-b4f2-e848ffad5aab",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal ids = {[37943]=1,[37947]=1,[37970]=1,[37974]=1,[37989]=1,[37993]=1,[38004]=1,[38008]=1,[37944]=2,[37946]=2,[37971]=2,[37973]=2,[37990]=2,[37992]=2,[38005]=2,[38007]=2}\nreturn p ~= nil and p.localmapid == 1226 and ids[eventArgs.spellID] ~= nil",
							dequeueIfLuaFalse = true,
							uuid = "e8b46dbb-38f6-e27a-94b8-f030eeb6fd07",
							version = 3,
						},
					},
				},
				eventType = 2,
				loop = true,
				mechanicTime = 262.3,
				name = "[Hector] Paw pre-draw hits",
				timeRange = true,
				timelineIndex = 60,
				timerEndOffset = 5,
				timerStartOffset = -7,
				uuid = "28e55960-53bf-a53f-b1f9-928f0386905e",
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
							actionLua = "local s = data.r1sPaw\nif not s then return end\nif Now() > s.deadline then data.r1sPaw = nil return end\nlocal live = s.live\nif live then\n    -- follow the caster's facing until the leap cast ends, then keep the last value\n    local e = TensorCore.mGetEntity(live.e)\n    local c = e and e.castinginfo\n    if c and c.channelingid == live.spell then\n        local p = e.pos\n        local a = p.h + live.leap\n        local x, z = p.x + 10*math.sin(a), p.z + 10*math.cos(a)\n        s.cones = {{x=x, y=p.y, z=z, h=p.h + live.first, order=1}, {x=x, y=p.y, z=z, h=p.h - live.first, order=2}}\n    end\nend\nlocal drawer = TensorCore.getMoogleDrawer()\nfor _, c in ipairs(s.cones) do\n    if c.order == s.order then drawer:addCone(c.x, c.y, c.z, 100, math.pi, c.h) end\nend",
							conditions = 
							{
								
								{
									"60f3e8f2-005e-d037-b7ed-7afc031a3c83",
									true,
								},
							},
							uuid = "c7909df2-6024-4143-b102-d203b683b0fd",
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
							conditionLua = "if not data.r1sPaw then return false end\nlocal p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226",
							uuid = "60f3e8f2-005e-d037-b7ed-7afc031a3c83",
							version = 3,
						},
					},
				},
				eventType = 12,
				loop = true,
				mechanicTime = 262.3,
				name = "[Hector] Paw pre-draw cones",
				timeRange = true,
				timelineIndex = 60,
				timerEndOffset = 5,
				timerStartOffset = -7,
				uuid = "13dee1e7-f29f-30d6-93d1-0406ff1933e6",
				version = 2,
			},
		},
	},
	[66] = 
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal player = TensorCore.mGetPlayer()\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif not caster or not caster.pos or not player or not player.pos or ms <= 0 then return end\nlocal roster = AnyoneCore.Roster\nlocal slot = roster and roster.current() and roster.mySlot()\nlocal spots = {\n    R1={\"NW\",\"N\",true}, T1={\"NW\",\"N\"},\n    R2={\"NE\",\"E\",true}, H2={\"NE\",\"E\"},\n    M1={\"SW\",\"W\",true}, H1={\"SW\",\"W\"},\n    M2={\"SE\",\"S\",true}, T2={\"SE\",\"S\"}\n}\nlocal pair = spots[slot]\nlocal text = \"DPS bait intercards first; supports wait cardinals, then swap\"\nif pair then\n    if pair[3] then\n        text = \"Bait \" .. pair[1] .. \" first, then wait \" .. pair[2]\n    else\n        text = \"Wait \" .. pair[2] .. \" first, then bait \" .. pair[1]\n    end\nend\nlocal spell = eventArgs.spellID\nlocal side = ({[37975]=\"Jump left\",[38009]=\"Shade left\",[38959]=\"Jump right\",[38995]=\"Shade right\"})[spell]\nif side then text = side .. \" - \" .. text end\nAnyoneCore.addTimedWorldTextOnEnt(ms,text,player.id,0xFFFFFFFF,true,1.2,2)\nself.used = true",
							conditions = 
							{
								
								{
									"7ea840b9-9ba2-4369-9258-a3331a8c0027",
									true,
								},
							},
							uuid = "9212034c-851d-b908-bab6-86a9d0799ebe",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 37948 or eventArgs.spellID == 37975 or eventArgs.spellID == 38009 or eventArgs.spellID == 38959 or eventArgs.spellID == 38995)",
							dequeueIfLuaFalse = true,
							uuid = "7ea840b9-9ba2-4369-9258-a3331a8c0027",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 283.5,
				name = "[Hector] Crossing bait order",
				timeRange = true,
				timelineIndex = 66,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "f7478de0-9db0-d711-b2fd-b4c4ac8c3b2d",
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
							actionLua = "local id = eventArgs.spellID\nif id == 37952 or id == 37980 or id == 38014 then\n    local s = data.r1sQC\n    if s then s.cch = s.cch + 1 end\nelse\n    data.r1sQC = {caster=eventArgs.entityID, spell=id, n=0, cch=0, cres=0, cones={}, deadline=Now() + (eventArgs.channelTimeMax or 5) * 1000 + 10000}\nend\nself.used = true",
							conditions = 
							{
								
								{
									"386da205-bfb6-97de-83d3-c6a024210e89",
									true,
								},
							},
							uuid = "4fb441ff-e36f-6fec-b74a-fa7b31614d16",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal id = eventArgs.spellID\nreturn p ~= nil and p.localmapid == 1226 and (id == 37948 or id == 37975 or id == 38959 or id == 38009 or id == 38995 or id == 37952 or id == 37980 or id == 38014)",
							dequeueIfLuaFalse = true,
							uuid = "386da205-bfb6-97de-83d3-c6a024210e89",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 283.5,
				name = "[Hector] Crossing pre-draw start",
				timeRange = true,
				timelineIndex = 66,
				timerEndOffset = 12,
				timerStartOffset = -12,
				uuid = "8fa550ce-d9fd-25ed-800c-e6829ed8af1f",
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
							actionLua = "local id = eventArgs.spellID\nlocal s = data.r1sQC\nif id == 37952 or id == 37980 or id == 38014 then\n    if s then\n        s.cres = s.cres + 1\n        if s.cres >= 8 then data.r1sQC = nil end\n    end\nelse\n    local e = TensorCore.mGetEntity(eventArgs.entityID)\n    local p = e and e.pos\n    if p then\n        if not s or s.n >= 8 or Now() > s.deadline then\n            s = {n=0, cch=0, cres=0, cones={}}\n            data.r1sQC = s\n        end\n        s.n = s.n + 1\n        s.cones[s.n] = {x=p.x, y=p.y, z=p.z, h=p.h}\n        s.origin = {x=p.x, y=p.y, z=p.z}\n        s.deadline = Now() + 12000\n    end\nend\nself.used = true",
							conditions = 
							{
								
								{
									"821d7893-08d2-5133-b08f-d5dd791348fd",
									true,
								},
							},
							uuid = "694ca760-e18a-68c3-8587-aba62dea5c5a",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local id = eventArgs.spellID\nlocal s = data.r1sQC\nif (id == 37951 or id == 37979 or id == 38013) and s then\n    local say = false\n    if s.n <= 4 then\n        -- first bait hit: everyone swaps\n        say = not s.swapCalled\n        s.swapCalled = true\n    elseif not s.swapCalled2 then\n        -- second bait hit: only the group that just baited (tanks and healers)\n        s.swapCalled2 = true\n        local r = AnyoneCore and AnyoneCore.Roster\n        local slot = r and r.current() and r.mySlot()\n        say = slot == \"T1\" or slot == \"T2\" or slot == \"H1\" or slot == \"H2\"\n    end\n    if say and AnyoneCore and AnyoneCore.Shotcall then AnyoneCore.Shotcall(\"Swap\", true, 2) end\nend\nself.used = true",
							conditions = 
							{
								
								{
									"821d7893-08d2-5133-b08f-d5dd791348fd",
									true,
								},
							},
							uuid = "729b16f8-1b5b-c8e0-b8bb-69647584ea22",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal id = eventArgs.spellID\nreturn p ~= nil and p.localmapid == 1226 and (id == 37951 or id == 37979 or id == 38013 or id == 37952 or id == 37980 or id == 38014)",
							dequeueIfLuaFalse = true,
							uuid = "821d7893-08d2-5133-b08f-d5dd791348fd",
							version = 3,
						},
					},
				},
				eventType = 2,
				loop = true,
				mechanicTime = 283.5,
				name = "[Hector] Crossing pre-draw hits",
				timeRange = true,
				timelineIndex = 66,
				timerEndOffset = 12,
				timerStartOffset = -12,
				uuid = "0f4ee97b-dad2-04fb-b018-e40058bf89d3",
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
							actionLua = "local s = data.r1sQC\nif not s then return end\nif Now() > s.deadline then data.r1sQC = nil return end\nif s.n < 8 then\n    local o = s.origin\n    if not o and s.caster then\n        local e = TensorCore.mGetEntity(s.caster)\n        if s.spell == 37948 then\n            o = e and e.pos\n        else\n            for _, t in pairs(Argus.getTethersOnEnt(s.caster) or {}) do\n                if t.type == 12 and t.sourceid == s.caster then\n                    local jump = TensorCore.mGetEntity(t.targetid)\n                    if jump and jump.pos then\n                        o = {x=jump.pos.x, y=jump.pos.y, z=jump.pos.z}\n                        s.origin = o\n                    end\n                end\n            end\n            local c = e and e.castinginfo\n            if not o and (s.spell == 38009 or s.spell == 38995) and c and c.channelingid == s.spell then\n                local a = e.pos.h + (s.spell == 38009 and math.pi/2 or -math.pi/2)\n                o = {x=e.pos.x + 10*math.sin(a), y=e.pos.y, z=e.pos.z + 10*math.cos(a)}\n            end\n        end\n    end\n    if o then\n        local list = {}\n        for _, m in pairs(TensorCore.getEntityGroupList(\"Party\") or {}) do\n            local dx, dz = m.pos.x - o.x, m.pos.z - o.z\n            list[#list+1] = {d=dx*dx + dz*dz, h=math.atan2(dx, dz)}\n        end\n        table.sort(list, function(a, b) return a.d < b.d end)\n        local drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1, 0.85, 0, 0.15), 1.5)\n        for i = 1, math.min(4, #list) do\n            drawer:addCone(o.x, o.y, o.z, 100, math.pi/4, list[i].h)\n        end\n    end\nelse\n    local first = (s.cch == 0 and 1) or (s.cres >= 4 and s.cch < 5 and 5)\n    if first then\n        local drawer = TensorCore.getMoogleDrawer()\n        for i = first, first + 3 do\n            local c = s.cones[i]\n            if c then drawer:addCone(c.x, c.y, c.z, 100, math.pi/4, c.h) end\n        end\n    end\nend",
							conditions = 
							{
								
								{
									"cba62502-2ba8-1772-a60c-ebac6999f735",
									true,
								},
							},
							uuid = "62dd0aff-60d5-3ad8-928b-48aacd80e278",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s = data.r1sQC\nif not s or s.n >= 8 or Now() > s.deadline then return end\nlocal r = AnyoneCore and AnyoneCore.Roster\nlocal slot = r and r.current() and r.mySlot()\n-- {waymark pair, is DPS}: 1/A, 2/B, 3/C, 4/D\nlocal m = ({R1={1,true}, T1={1}, R2={2,true}, H2={2}, M2={3,true}, T2={3}, M1={4,true}, H1={4}})[slot]\nif not m then return end\nlocal o = s.origin\nif not o and s.caster then\n    local e = TensorCore.mGetEntity(s.caster)\n    if s.spell == 37948 then\n        o = e and e.pos\n    else\n        local c = e and e.castinginfo\n        if (s.spell == 38009 or s.spell == 38995) and c and c.channelingid == s.spell then\n            local a = e.pos.h + (s.spell == 38009 and math.pi/2 or -math.pi/2)\n            o = {x=e.pos.x + 10*math.sin(a), y=e.pos.y, z=e.pos.z + 10*math.cos(a)}\n        end\n    end\nend\nif not o then return end\nlocal player = TensorCore.mGetPlayer()\n-- DPS bait hit 1, supports bait hit 2\nlocal bait = (s.n == 0) == (m[2] == true)\nlocal headings = bait and {-3*math.pi/4, 3*math.pi/4, math.pi/4, -math.pi/4} or {math.pi, math.pi/2, 0, -math.pi/2}\nlocal radius = bait and 3 or 7\nlocal x, z = o.x + radius*math.sin(headings[m[1]]), o.z + radius*math.cos(headings[m[1]])\nlocal drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0, 1, 0, 0.55), 1.5)\nif bait and s.n == 0 then drawer:addCircle(x, o.y, z, 0.5) end\nlocal dx, dz = x - player.pos.x, z - player.pos.z\nlocal distance = math.sqrt(dx*dx + dz*dz)\nif distance > 0.4 then\n    local tip = math.min(0.8, distance*0.5)\n    drawer:addArrow(player.pos.x, player.pos.y, player.pos.z, math.atan2(dx, dz), distance - tip, 0.2, tip, 0.8)\nend",
							conditions = 
							{
								
								{
									"cba62502-2ba8-1772-a60c-ebac6999f735",
									true,
								},
							},
							uuid = "6431816d-9a80-c702-84fd-3ddfd74f0332",
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
							conditionLua = "if not data.r1sQC then return false end\nlocal p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226",
							uuid = "cba62502-2ba8-1772-a60c-ebac6999f735",
							version = 3,
						},
					},
				},
				eventType = 12,
				loop = true,
				mechanicTime = 283.5,
				name = "[Hector] Crossing pre-draw cones",
				timeRange = true,
				timelineIndex = 66,
				timerEndOffset = 12,
				timerStartOffset = -12,
				uuid = "ea54ca26-8a1e-9bda-894d-50aa099ff966",
				version = 2,
			},
		},
	},
	[70] = 
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif p and ms > 0 then\n    TensorCore.getMoogleDrawer():addTimedCone(ms,p.x,p.y,p.z,100,math.pi/4,p.h)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"5fa49059-75ca-bbf6-9cb0-29223aa2c217",
									true,
								},
							},
							uuid = "b38433db-4ec3-1fb9-94ea-59660a01c942",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 37952 or eventArgs.spellID == 37980 or eventArgs.spellID == 38014)",
							dequeueIfLuaFalse = true,
							uuid = "5fa49059-75ca-bbf6-9cb0-29223aa2c217",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 291.1,
				name = "[Hector] Crossing repeat cones",
				timeRange = true,
				timelineIndex = 70,
				timerEndOffset = 4,
				timerStartOffset = -4,
				uuid = "05ee1201-6d6b-e180-acf6-ae20980789e9",
				version = 2,
			},
		},
	},
	[76] = 
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif p and ms > 0 then\n    local labels = {[38019]=\"Light party line stacks\"}\n    local label = labels[eventArgs.spellID]\n    if eventArgs.spellID == 38019 then\n        local roster = AnyoneCore.Roster\n        local slot = roster and roster.current() and roster.mySlot()\n        local sides = {T1=\"west\",H1=\"west\",M1=\"west\",R1=\"west\",T2=\"east\",H2=\"east\",M2=\"east\",R2=\"east\"}\n        label = \"G1 west / G2 east of stack origin (true north)\"\n        if sides[slot] then label = \"Line stack \" .. sides[slot] .. \" of stack origin (true north)\" end\n    end\n    AnyoneCore.addTimedWorldText(ms, label, {x=p.x,y=p.y+3,z=p.z}, 0xFFFFFFFF, true, 1.2)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"1f144a91-4202-80d2-bd6f-87f01ca4b3e3",
									true,
								},
							},
							uuid = "aca5ac25-2f71-ab26-b058-b2970374ab28",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 38019)",
							dequeueIfLuaFalse = true,
							uuid = "1f144a91-4202-80d2-bd6f-87f01ca4b3e3",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 323.6,
				name = "[Hector] Tempestuous Tear",
				timeRange = true,
				timelineIndex = 76,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "4046ef55-dc73-7ca1-9c83-3736949e2aea",
				version = 2,
			},
		},
	},
	[77] = 
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
							actionLua = "local ms = (eventArgs.duration or 0) * 1000\nif ms > 0 then\n    TensorCore.getMoogleDrawer():addTimedCone(ms, eventArgs.x, eventArgs.y, eventArgs.z, 100, math.pi, eventArgs.heading)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"999375a3-334c-4bc5-a6ae-33350f276db2",
									true,
								},
							},
							uuid = "86bb68f0-1d50-fcb7-b710-7fb415ea16a3",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal ids = {[37943]=1,[37947]=1,[37970]=1,[37974]=1,[37989]=1,[37993]=1,[38004]=1,[38008]=1}\nreturn p ~= nil and p.localmapid == 1226 and ids[eventArgs.aoeID] == 1",
							dequeueIfLuaFalse = true,
							uuid = "999375a3-334c-4bc5-a6ae-33350f276db2",
							version = 3,
						},
					},
				},
				eventType = 18,
				loop = true,
				mechanicTime = 324.4,
				name = "[Hector] First Paw cleave",
				timeRange = true,
				timelineIndex = 77,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "820bf62e-d4b5-ce71-bcb9-df5d14c12727",
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
							actionLua = "local ms = (eventArgs.duration or 0) * 1000\nlocal delay = ms > 5000 and 6000 or 800\nif ms > delay then\n    TensorCore.getMoogleDrawer():addTimedCone(ms - delay, eventArgs.x, eventArgs.y, eventArgs.z, 100, math.pi, eventArgs.heading, delay, false, true)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"01562fc2-0640-3f5a-8c9b-58de275285cf",
									true,
								},
							},
							uuid = "c39a2ada-7436-cbee-b3d9-a53856cb4d4d",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal ids = {[37944]=1,[37946]=1,[37971]=1,[37973]=1,[37990]=1,[37992]=1,[38005]=1,[38007]=1}\nreturn p ~= nil and p.localmapid == 1226 and ids[eventArgs.aoeID] == 1",
							dequeueIfLuaFalse = true,
							uuid = "01562fc2-0640-3f5a-8c9b-58de275285cf",
							version = 3,
						},
					},
				},
				eventType = 18,
				loop = true,
				mechanicTime = 324.4,
				name = "[Hector] Second Paw cleave",
				timeRange = true,
				timelineIndex = 77,
				timerEndOffset = 1,
				timerStartOffset = -10,
				uuid = "beff664a-f414-5825-aa5c-cbbbabaef576",
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif not p or ms <= 0 then return end\nlocal spell = eventArgs.spellID\nlocal left = spell == 37965 or spell == 37966 or spell == 37999 or spell == 38000\nlocal dodgeLeft = spell == 37965 or spell == 37967 or spell == 37999 or spell == 38001\nlocal tell = (left and \"Jump left\" or \"Jump right\") .. (dodgeLeft and \" - dodge left then right\" or \" - dodge right then left\")\nAnyoneCore.addTimedWorldText(ms,tell,{x=p.x,y=p.y+3,z=p.z},0xFFFFFFFF,true,1.2)\nself.used = true",
							conditions = 
							{
								
								{
									"6609b478-93e9-f811-8b02-a33b88533b2e",
									true,
								},
							},
							uuid = "bd56d292-3148-281a-a5cb-b484b7b35278",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 37965 or eventArgs.spellID == 37966 or eventArgs.spellID == 37967 or eventArgs.spellID == 37968 or eventArgs.spellID == 37999 or eventArgs.spellID == 38000 or eventArgs.spellID == 38001 or eventArgs.spellID == 38002)",
							dequeueIfLuaFalse = true,
							uuid = "6609b478-93e9-f811-8b02-a33b88533b2e",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 324.4,
				name = "[Hector] Leaping Paw setup",
				timeRange = true,
				timelineIndex = 77,
				timerEndOffset = 4,
				timerStartOffset = -12,
				uuid = "01a9d841-a5ed-a682-b1a8-5c4d23997f3d",
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
							actionLua = "local id = eventArgs.spellID\nlocal side = math.pi/2 -- +side is the caster's left, -side its right\nif id == 37942 or id == 37945 then\n    data.r1sPawDir = {first = id == 37942 and -side or side, till = Now() + 15000, seen = {}}\nelse\n    -- order of IDs: LRL, LLR, RRL, RLR (jump side, first cleave, second cleave)\n    local k = id >= 37999 and id - 37999 or id - 37965\n    local leap = k < 2 and side or -side\n    local first = (k == 0 or k == 2) and -side or side\n    if id < 37999 then data.r1sPawLeap = {leap = leap, first = first} end\n    data.r1sPaw = {live = {e = eventArgs.entityID, spell = id, leap = leap, first = first}, cones = {}, order = 1, deadline = Now() + (eventArgs.channelTimeMax or 5) * 1000 + 8000}\nend\nself.used = true",
							conditions = 
							{
								
								{
									"1a63d107-3ca6-2da4-8ff4-785cc6abf549",
									true,
								},
							},
							uuid = "cbf180df-2ba7-73a7-a0d6-bdf2c9907261",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal id = eventArgs.spellID\nreturn p ~= nil and p.localmapid == 1226 and (id == 37942 or id == 37945 or (id >= 37965 and id <= 37968) or (id >= 37999 and id <= 38002))",
							dequeueIfLuaFalse = true,
							uuid = "1a63d107-3ca6-2da4-8ff4-785cc6abf549",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 324.4,
				name = "[Hector] Paw pre-draw casts",
				timeRange = true,
				timelineIndex = 77,
				timerEndOffset = 6,
				timerStartOffset = -57,
				uuid = "46318923-2566-2038-a264-6115fb3c7771",
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
							actionLua = "self.used = true\nlocal id = eventArgs.sourceEntityID\nlocal e = TensorCore.mGetEntity(id)\nlocal p = e and e.pos\nif not p then return end\nlocal d, L = data.r1sPawDir, data.r1sPawLeap\nif d and Now() < d.till then\n    -- standing clones replay the two cleaves from where they are\n    if d.seen[id] then return end\n    d.seen[id] = true\n    local s = data.r1sPaw\n    if not s or s.tag ~= d then\n        s = {tag = d, cones = {}, order = 1, deadline = Now() + 27000}\n        data.r1sPaw = s\n    end\n    s.cones[#s.cones+1] = {x=p.x, y=p.y, z=p.z, h=p.h + d.first, order=1}\n    s.cones[#s.cones+1] = {x=p.x, y=p.y, z=p.z, h=p.h - d.first, order=2}\nelseif L then\n    -- leaping version: the first clone tethered is the one; its re-tether starts the replay\n    if not L.clone then\n        L.clone, L.at = id, Now()\n    elseif L.clone == id and Now() - L.at > 10000 then\n        local a = p.h + L.leap\n        local x, z = p.x + 10*math.sin(a), p.z + 10*math.cos(a)\n        data.r1sPaw = {order = 1, deadline = Now() + 22000, cones = {\n            {x=x, y=p.y, z=z, h=p.h + L.first, order=1},\n            {x=x, y=p.y, z=z, h=p.h - L.first, order=2}}}\n        data.r1sPawLeap = nil\n    end\nend",
							conditions = 
							{
								
								{
									"83a05a14-3b6c-b361-a48a-cb4115bfd2e1",
									true,
								},
							},
							uuid = "6b931fae-5892-7d6d-b90a-b40d5a111f2f",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and eventArgs.newTetherID == 102",
							dequeueIfLuaFalse = true,
							uuid = "83a05a14-3b6c-b361-a48a-cb4115bfd2e1",
							version = 3,
						},
					},
				},
				eventType = 15,
				loop = true,
				mechanicTime = 324.4,
				name = "[Hector] Paw pre-draw clones",
				timeRange = true,
				timelineIndex = 77,
				timerEndOffset = 6,
				timerStartOffset = -57,
				uuid = "81d60c09-f7f5-59a1-a936-8c1b0bafb3f6",
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
							actionLua = "local second = {[37944]=true,[37946]=true,[37971]=true,[37973]=true,[37990]=true,[37992]=true,[38005]=true,[38007]=true}\nlocal s = data.r1sPaw\nif s then\n    if second[eventArgs.spellID] then data.r1sPaw = nil else s.order = 2 end\nend\nself.used = true",
							conditions = 
							{
								
								{
									"965c5075-9416-92d0-a860-d11afc9e3e21",
									true,
								},
							},
							uuid = "bfe66406-a9a8-0924-9207-ff5eaf8b2c00",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal ids = {[37943]=1,[37947]=1,[37970]=1,[37974]=1,[37989]=1,[37993]=1,[38004]=1,[38008]=1,[37944]=2,[37946]=2,[37971]=2,[37973]=2,[37990]=2,[37992]=2,[38005]=2,[38007]=2}\nreturn p ~= nil and p.localmapid == 1226 and ids[eventArgs.spellID] ~= nil",
							dequeueIfLuaFalse = true,
							uuid = "965c5075-9416-92d0-a860-d11afc9e3e21",
							version = 3,
						},
					},
				},
				eventType = 2,
				loop = true,
				mechanicTime = 324.4,
				name = "[Hector] Paw pre-draw hits",
				timeRange = true,
				timelineIndex = 77,
				timerEndOffset = 6,
				timerStartOffset = -57,
				uuid = "523ac3f2-7bce-0968-8b4d-e5f5d597c857",
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
							actionLua = "local s = data.r1sPaw\nif not s then return end\nif Now() > s.deadline then data.r1sPaw = nil return end\nlocal live = s.live\nif live then\n    -- follow the caster's facing until the leap cast ends, then keep the last value\n    local e = TensorCore.mGetEntity(live.e)\n    local c = e and e.castinginfo\n    if c and c.channelingid == live.spell then\n        local p = e.pos\n        local a = p.h + live.leap\n        local x, z = p.x + 10*math.sin(a), p.z + 10*math.cos(a)\n        s.cones = {{x=x, y=p.y, z=z, h=p.h + live.first, order=1}, {x=x, y=p.y, z=z, h=p.h - live.first, order=2}}\n    end\nend\nlocal drawer = TensorCore.getMoogleDrawer()\nfor _, c in ipairs(s.cones) do\n    if c.order == s.order then drawer:addCone(c.x, c.y, c.z, 100, math.pi, c.h) end\nend",
							conditions = 
							{
								
								{
									"9e937b8c-0c45-b203-9a47-1776ff91c9c8",
									true,
								},
							},
							uuid = "07ab55fe-48a7-4fae-b3b1-e6864fa1a52f",
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
							conditionLua = "if not data.r1sPaw then return false end\nlocal p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226",
							uuid = "9e937b8c-0c45-b203-9a47-1776ff91c9c8",
							version = 3,
						},
					},
				},
				eventType = 12,
				loop = true,
				mechanicTime = 324.4,
				name = "[Hector] Paw pre-draw cones",
				timeRange = true,
				timelineIndex = 77,
				timerEndOffset = 6,
				timerStartOffset = -57,
				uuid = "a573ef31-0674-ec8a-8626-8273a1fb8f9a",
				version = 2,
			},
		},
	},
	[81] = 
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif p and ms > 0 then\n    local labels = {[38021]=\"Marked players spread\"}\n    AnyoneCore.addTimedWorldText(ms, labels[eventArgs.spellID], {x=p.x,y=p.y+3,z=p.z}, 0xFFFFFFFF, true, 1.2)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"af819833-4258-c3c0-a7c6-26ba14802f87",
									true,
								},
							},
							uuid = "67405ebd-0899-8ce6-bfe6-a82183025c95",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 38021)",
							dequeueIfLuaFalse = true,
							uuid = "af819833-4258-c3c0-a7c6-26ba14802f87",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 348.7,
				name = "[Hector] Nailchipper",
				timeRange = true,
				timelineIndex = 81,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "6f08ac9f-55b7-edf5-9529-05db1b0bef1a",
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
							actionLua = "local ms = (eventArgs.channelTimeMax or 0) * 1000\nif ms <= 0 then return end\nlocal id = eventArgs.targetID\nif id and id > 0 then TensorCore.getMoogleDrawer():addTimedCircleOnEnt(ms,id,5,0,false,true) end\nself.used = true",
							conditions = 
							{
								
								{
									"0f85e276-da73-8ff1-9e2b-508db55a6647",
									true,
								},
							},
							uuid = "814263e8-6e16-c819-8a14-0abfa5f05dba",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 38022)",
							dequeueIfLuaFalse = true,
							uuid = "0f85e276-da73-8ff1-9e2b-508db55a6647",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 348.7,
				name = "[Hector] Nailchipper spread circles",
				timeRange = true,
				timelineIndex = 81,
				timerEndOffset = 6,
				timerStartOffset = -9,
				uuid = "ae9731fd-9a38-2cfd-a78f-905a2a940191",
				version = 2,
			},
		},
	},
	[82] = 
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal player = TensorCore.mGetPlayer()\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif not caster or not caster.pos or not player or not player.pos or ms <= 0 then return end\nlocal roster = AnyoneCore.Roster\nlocal slot = roster and roster.current() and roster.mySlot()\nlocal spots = {\n    R1={\"NW\",\"N\",true}, T1={\"NW\",\"N\"},\n    R2={\"NE\",\"E\",true}, H2={\"NE\",\"E\"},\n    M1={\"SW\",\"W\",true}, H1={\"SW\",\"W\"},\n    M2={\"SE\",\"S\",true}, T2={\"SE\",\"S\"}\n}\nlocal pair = spots[slot]\nlocal text = \"DPS bait intercards first; supports wait cardinals, then swap\"\nif pair then\n    if pair[3] then\n        text = \"Bait \" .. pair[1] .. \" first, then wait \" .. pair[2]\n    else\n        text = \"Wait \" .. pair[2] .. \" first, then bait \" .. pair[1]\n    end\nend\nlocal spell = eventArgs.spellID\nlocal side = ({[37975]=\"Jump left\",[38009]=\"Shade left\",[38959]=\"Jump right\",[38995]=\"Shade right\"})[spell]\nif side then text = side .. \" - \" .. text end\nAnyoneCore.addTimedWorldTextOnEnt(ms,text,player.id,0xFFFFFFFF,true,1.2,2)\nself.used = true",
							conditions = 
							{
								
								{
									"078a8d71-8cf1-9eda-ba3e-eec92fc88df5",
									true,
								},
							},
							uuid = "a46a5556-b0f8-bce5-b464-657edf1cbafc",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 37948 or eventArgs.spellID == 37975 or eventArgs.spellID == 38009 or eventArgs.spellID == 38959 or eventArgs.spellID == 38995)",
							dequeueIfLuaFalse = true,
							uuid = "078a8d71-8cf1-9eda-ba3e-eec92fc88df5",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 349.5,
				name = "[Hector] Crossing bait order",
				timeRange = true,
				timelineIndex = 82,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "a5ad3652-7bbe-7f09-8960-4c40dbe2bec0",
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
							actionLua = "local id = eventArgs.spellID\nif id == 37952 or id == 37980 or id == 38014 then\n    local s = data.r1sQC\n    if s then s.cch = s.cch + 1 end\nelse\n    data.r1sQC = {caster=eventArgs.entityID, spell=id, n=0, cch=0, cres=0, cones={}, deadline=Now() + (eventArgs.channelTimeMax or 5) * 1000 + 10000}\nend\nself.used = true",
							conditions = 
							{
								
								{
									"aa04e96e-3cbe-d4ec-9f41-6a214c6e5221",
									true,
								},
							},
							uuid = "d6e31c40-947a-fa12-8a86-0b6aef0f7a9b",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal id = eventArgs.spellID\nreturn p ~= nil and p.localmapid == 1226 and (id == 37948 or id == 37975 or id == 38959 or id == 38009 or id == 38995 or id == 37952 or id == 37980 or id == 38014)",
							dequeueIfLuaFalse = true,
							uuid = "aa04e96e-3cbe-d4ec-9f41-6a214c6e5221",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 349.5,
				name = "[Hector] Crossing pre-draw start",
				timeRange = true,
				timelineIndex = 82,
				timerEndOffset = 12,
				timerStartOffset = -12,
				uuid = "17a6db27-eb32-cecd-861a-87ea0a35ba90",
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
							actionLua = "local id = eventArgs.spellID\nlocal s = data.r1sQC\nif id == 37952 or id == 37980 or id == 38014 then\n    if s then\n        s.cres = s.cres + 1\n        if s.cres >= 8 then data.r1sQC = nil end\n    end\nelse\n    local e = TensorCore.mGetEntity(eventArgs.entityID)\n    local p = e and e.pos\n    if p then\n        if not s or s.n >= 8 or Now() > s.deadline then\n            s = {n=0, cch=0, cres=0, cones={}}\n            data.r1sQC = s\n        end\n        s.n = s.n + 1\n        s.cones[s.n] = {x=p.x, y=p.y, z=p.z, h=p.h}\n        s.origin = {x=p.x, y=p.y, z=p.z}\n        s.deadline = Now() + 12000\n    end\nend\nself.used = true",
							conditions = 
							{
								
								{
									"11121037-cc4b-e9c5-b23a-2350cf79aad2",
									true,
								},
							},
							uuid = "f82900a3-92d0-26cb-bfd1-a5d4f2bccf57",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local id = eventArgs.spellID\nlocal s = data.r1sQC\nif (id == 37951 or id == 37979 or id == 38013) and s then\n    local say = false\n    if s.n <= 4 then\n        -- first bait hit: everyone swaps\n        say = not s.swapCalled\n        s.swapCalled = true\n    elseif not s.swapCalled2 then\n        -- second bait hit: only the group that just baited (tanks and healers)\n        s.swapCalled2 = true\n        local r = AnyoneCore and AnyoneCore.Roster\n        local slot = r and r.current() and r.mySlot()\n        say = slot == \"T1\" or slot == \"T2\" or slot == \"H1\" or slot == \"H2\"\n    end\n    if say and AnyoneCore and AnyoneCore.Shotcall then AnyoneCore.Shotcall(\"Swap\", true, 2) end\nend\nself.used = true",
							conditions = 
							{
								
								{
									"11121037-cc4b-e9c5-b23a-2350cf79aad2",
									true,
								},
							},
							uuid = "41c7549a-c004-89cc-9939-05ff516bc4ac",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal id = eventArgs.spellID\nreturn p ~= nil and p.localmapid == 1226 and (id == 37951 or id == 37979 or id == 38013 or id == 37952 or id == 37980 or id == 38014)",
							dequeueIfLuaFalse = true,
							uuid = "11121037-cc4b-e9c5-b23a-2350cf79aad2",
							version = 3,
						},
					},
				},
				eventType = 2,
				loop = true,
				mechanicTime = 349.5,
				name = "[Hector] Crossing pre-draw hits",
				timeRange = true,
				timelineIndex = 82,
				timerEndOffset = 12,
				timerStartOffset = -12,
				uuid = "e756ce24-2ea4-6e6d-86a4-945d74320420",
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
							actionLua = "local s = data.r1sQC\nif not s then return end\nif Now() > s.deadline then data.r1sQC = nil return end\nif s.n < 8 then\n    local o = s.origin\n    if not o and s.caster then\n        local e = TensorCore.mGetEntity(s.caster)\n        if s.spell == 37948 then\n            o = e and e.pos\n        else\n            for _, t in pairs(Argus.getTethersOnEnt(s.caster) or {}) do\n                if t.type == 12 and t.sourceid == s.caster then\n                    local jump = TensorCore.mGetEntity(t.targetid)\n                    if jump and jump.pos then\n                        o = {x=jump.pos.x, y=jump.pos.y, z=jump.pos.z}\n                        s.origin = o\n                    end\n                end\n            end\n            local c = e and e.castinginfo\n            if not o and (s.spell == 38009 or s.spell == 38995) and c and c.channelingid == s.spell then\n                local a = e.pos.h + (s.spell == 38009 and math.pi/2 or -math.pi/2)\n                o = {x=e.pos.x + 10*math.sin(a), y=e.pos.y, z=e.pos.z + 10*math.cos(a)}\n            end\n        end\n    end\n    if o then\n        local list = {}\n        for _, m in pairs(TensorCore.getEntityGroupList(\"Party\") or {}) do\n            local dx, dz = m.pos.x - o.x, m.pos.z - o.z\n            list[#list+1] = {d=dx*dx + dz*dz, h=math.atan2(dx, dz)}\n        end\n        table.sort(list, function(a, b) return a.d < b.d end)\n        local drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1, 0.85, 0, 0.15), 1.5)\n        for i = 1, math.min(4, #list) do\n            drawer:addCone(o.x, o.y, o.z, 100, math.pi/4, list[i].h)\n        end\n    end\nelse\n    local first = (s.cch == 0 and 1) or (s.cres >= 4 and s.cch < 5 and 5)\n    if first then\n        local drawer = TensorCore.getMoogleDrawer()\n        for i = first, first + 3 do\n            local c = s.cones[i]\n            if c then drawer:addCone(c.x, c.y, c.z, 100, math.pi/4, c.h) end\n        end\n    end\nend",
							conditions = 
							{
								
								{
									"a5012c22-4087-93c9-ba4e-dde1af07aad6",
									true,
								},
							},
							uuid = "7e00c7b1-fba4-d7e3-aa0b-1d3816c32056",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s = data.r1sQC\nif not s or s.n >= 8 or Now() > s.deadline then return end\nlocal r = AnyoneCore and AnyoneCore.Roster\nlocal slot = r and r.current() and r.mySlot()\n-- {waymark pair, is DPS}: 1/A, 2/B, 3/C, 4/D\nlocal m = ({R1={1,true}, T1={1}, R2={2,true}, H2={2}, M2={3,true}, T2={3}, M1={4,true}, H1={4}})[slot]\nif not m then return end\nlocal o = s.origin\nif not o and s.caster then\n    local e = TensorCore.mGetEntity(s.caster)\n    if s.spell == 37948 then\n        o = e and e.pos\n    else\n        local c = e and e.castinginfo\n        if (s.spell == 38009 or s.spell == 38995) and c and c.channelingid == s.spell then\n            local a = e.pos.h + (s.spell == 38009 and math.pi/2 or -math.pi/2)\n            o = {x=e.pos.x + 10*math.sin(a), y=e.pos.y, z=e.pos.z + 10*math.cos(a)}\n        end\n    end\nend\nif not o then return end\nlocal player = TensorCore.mGetPlayer()\n-- DPS bait hit 1, supports bait hit 2\nlocal bait = (s.n == 0) == (m[2] == true)\nlocal headings = bait and {-3*math.pi/4, 3*math.pi/4, math.pi/4, -math.pi/4} or {math.pi, math.pi/2, 0, -math.pi/2}\nlocal radius = bait and 3 or 7\nlocal x, z = o.x + radius*math.sin(headings[m[1]]), o.z + radius*math.cos(headings[m[1]])\nlocal drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0, 1, 0, 0.55), 1.5)\nif bait and s.n == 0 then drawer:addCircle(x, o.y, z, 0.5) end\nlocal dx, dz = x - player.pos.x, z - player.pos.z\nlocal distance = math.sqrt(dx*dx + dz*dz)\nif distance > 0.4 then\n    local tip = math.min(0.8, distance*0.5)\n    drawer:addArrow(player.pos.x, player.pos.y, player.pos.z, math.atan2(dx, dz), distance - tip, 0.2, tip, 0.8)\nend",
							conditions = 
							{
								
								{
									"a5012c22-4087-93c9-ba4e-dde1af07aad6",
									true,
								},
							},
							uuid = "7475c87f-d694-b901-8f99-2223ab56028b",
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
							conditionLua = "if not data.r1sQC then return false end\nlocal p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226",
							uuid = "a5012c22-4087-93c9-ba4e-dde1af07aad6",
							version = 3,
						},
					},
				},
				eventType = 12,
				loop = true,
				mechanicTime = 349.5,
				name = "[Hector] Crossing pre-draw cones",
				timeRange = true,
				timelineIndex = 82,
				timerEndOffset = 12,
				timerStartOffset = -12,
				uuid = "a18da17e-625a-728c-af05-70035676bfd0",
				version = 2,
			},
		},
	},
	[85] = 
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif p and ms > 0 then\n    TensorCore.getMoogleDrawer():addTimedCone(ms,p.x,p.y,p.z,100,math.pi/4,p.h)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"7485f23e-f14f-5280-ae7e-06253de93b91",
									true,
								},
							},
							uuid = "a15d4350-b610-c91f-a90a-2cbe86445fac",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 37952 or eventArgs.spellID == 37980 or eventArgs.spellID == 38014)",
							dequeueIfLuaFalse = true,
							uuid = "7485f23e-f14f-5280-ae7e-06253de93b91",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 355.3,
				name = "[Hector] Crossing repeat cones",
				timeRange = true,
				timelineIndex = 85,
				timerEndOffset = 4,
				timerStartOffset = -4,
				uuid = "cd029a46-b0fb-0952-bbd8-b574c8a0b480",
				version = 2,
			},
		},
	},
	[88] = 
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif p and ms > 0 then\n    AnyoneCore.addTimedWorldText(ms, \"Raidwide - Bloody Scratch\", {x=p.x,y=p.y+3,z=p.z}, 0xFFFFFFFF, true, 1.2)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"e1d9eab8-d4fd-96b8-a601-b5cb899599e5",
									true,
								},
							},
							uuid = "10bc550b-d860-1744-9ebe-aebf03d4c442",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 38036)",
							dequeueIfLuaFalse = true,
							uuid = "e1d9eab8-d4fd-96b8-a601-b5cb899599e5",
							version = 3,
						},
					},
				},
				enabled = false,
				eventType = 3,
				loop = true,
				mechanicTime = 369.7,
				name = "[Hector] Bloody Scratch raidwide",
				timeRange = true,
				timelineIndex = 88,
				timerEndOffset = 1,
				timerStartOffset = -10,
				uuid = "8798d2e2-2c12-44d1-a72a-1d0b83b07dbe",
				version = 2,
			},
		},
	},
	[89] = 
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif p and ms > 0 then\n    local labels = {[38021]=\"Marked players spread\"}\n    AnyoneCore.addTimedWorldText(ms, labels[eventArgs.spellID], {x=p.x,y=p.y+3,z=p.z}, 0xFFFFFFFF, true, 1.2)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"b769edf2-98ab-ced8-9fc8-8d6688de0301",
									true,
								},
							},
							uuid = "21e07d86-1788-f393-afae-527f3aef8c36",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 38021)",
							dequeueIfLuaFalse = true,
							uuid = "b769edf2-98ab-ced8-9fc8-8d6688de0301",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 413,
				name = "[Hector] Nailchipper",
				timeRange = true,
				timelineIndex = 89,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "3e0eaa29-9c8b-2fee-b60c-65c9879b3101",
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
							actionLua = "local ms = (eventArgs.channelTimeMax or 0) * 1000\nif ms <= 0 then return end\nlocal id = eventArgs.targetID\nif id and id > 0 then TensorCore.getMoogleDrawer():addTimedCircleOnEnt(ms,id,5,0,false,true) end\nself.used = true",
							conditions = 
							{
								
								{
									"5b30ca76-5d24-2a8c-91e6-5a39d8f59003",
									true,
								},
							},
							uuid = "5c02f8f1-ffbe-7bc7-a142-404590cea820",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 38022)",
							dequeueIfLuaFalse = true,
							uuid = "5b30ca76-5d24-2a8c-91e6-5a39d8f59003",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 413,
				name = "[Hector] Nailchipper spread circles",
				timeRange = true,
				timelineIndex = 89,
				timerEndOffset = 6,
				timerStartOffset = -9,
				uuid = "766031c9-b49e-49a7-aa74-8b5e40b6dfe0",
				version = 2,
			},
		},
	},
	[90] = 
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal player = TensorCore.mGetPlayer()\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif not caster or not caster.pos or not player or not player.pos or ms <= 0 then return end\nlocal roster = AnyoneCore.Roster\nlocal slot = roster and roster.current() and roster.mySlot()\nlocal spots = {\n    R1={\"NW\",\"N\",true}, T1={\"NW\",\"N\"},\n    R2={\"NE\",\"E\",true}, H2={\"NE\",\"E\"},\n    M1={\"SW\",\"W\",true}, H1={\"SW\",\"W\"},\n    M2={\"SE\",\"S\",true}, T2={\"SE\",\"S\"}\n}\nlocal pair = spots[slot]\nlocal text = \"DPS bait intercards first; supports wait cardinals, then swap\"\nif pair then\n    if pair[3] then\n        text = \"Bait \" .. pair[1] .. \" first, then wait \" .. pair[2]\n    else\n        text = \"Wait \" .. pair[2] .. \" first, then bait \" .. pair[1]\n    end\nend\nlocal spell = eventArgs.spellID\nlocal side = ({[37975]=\"Jump left\",[38009]=\"Shade left\",[38959]=\"Jump right\",[38995]=\"Shade right\"})[spell]\nif side then text = side .. \" - \" .. text end\nAnyoneCore.addTimedWorldTextOnEnt(ms,text,player.id,0xFFFFFFFF,true,1.2,2)\nself.used = true",
							conditions = 
							{
								
								{
									"63aa4827-1252-ad77-8073-e56f5833e6a8",
									true,
								},
							},
							uuid = "3ab9b010-bb80-78f7-b733-4dabc73b8ad0",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 37948 or eventArgs.spellID == 37975 or eventArgs.spellID == 38009 or eventArgs.spellID == 38959 or eventArgs.spellID == 38995)",
							dequeueIfLuaFalse = true,
							uuid = "63aa4827-1252-ad77-8073-e56f5833e6a8",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 413.8,
				name = "[Hector] Crossing bait order",
				timeRange = true,
				timelineIndex = 90,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "0b239c29-0d26-38f4-9b90-8b21d3041f9e",
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
							actionLua = "local id = eventArgs.spellID\nif id == 37952 or id == 37980 or id == 38014 then\n    local s = data.r1sQC\n    if s then s.cch = s.cch + 1 end\nelse\n    data.r1sQC = {caster=eventArgs.entityID, spell=id, n=0, cch=0, cres=0, cones={}, deadline=Now() + (eventArgs.channelTimeMax or 5) * 1000 + 10000}\nend\nself.used = true",
							conditions = 
							{
								
								{
									"caecd0ec-6ad7-1431-8076-f92ab25c32cc",
									true,
								},
							},
							uuid = "f5d98da7-95c9-c237-b592-9fb5b3035ac6",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal id = eventArgs.spellID\nreturn p ~= nil and p.localmapid == 1226 and (id == 37948 or id == 37975 or id == 38959 or id == 38009 or id == 38995 or id == 37952 or id == 37980 or id == 38014)",
							dequeueIfLuaFalse = true,
							uuid = "caecd0ec-6ad7-1431-8076-f92ab25c32cc",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 413.8,
				name = "[Hector] Crossing pre-draw start",
				timeRange = true,
				timelineIndex = 90,
				timerEndOffset = 12,
				timerStartOffset = -12,
				uuid = "91f34655-b139-5677-9b65-0a879089e107",
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
							actionLua = "local id = eventArgs.spellID\nlocal s = data.r1sQC\nif id == 37952 or id == 37980 or id == 38014 then\n    if s then\n        s.cres = s.cres + 1\n        if s.cres >= 8 then data.r1sQC = nil end\n    end\nelse\n    local e = TensorCore.mGetEntity(eventArgs.entityID)\n    local p = e and e.pos\n    if p then\n        if not s or s.n >= 8 or Now() > s.deadline then\n            s = {n=0, cch=0, cres=0, cones={}}\n            data.r1sQC = s\n        end\n        s.n = s.n + 1\n        s.cones[s.n] = {x=p.x, y=p.y, z=p.z, h=p.h}\n        s.origin = {x=p.x, y=p.y, z=p.z}\n        s.deadline = Now() + 12000\n    end\nend\nself.used = true",
							conditions = 
							{
								
								{
									"4cce7f92-a5e7-db73-8220-d7977403ae7a",
									true,
								},
							},
							uuid = "a18e98d0-18c7-8931-aa54-2d9e9c144593",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local id = eventArgs.spellID\nlocal s = data.r1sQC\nif (id == 37951 or id == 37979 or id == 38013) and s then\n    local say = false\n    if s.n <= 4 then\n        -- first bait hit: everyone swaps\n        say = not s.swapCalled\n        s.swapCalled = true\n    elseif not s.swapCalled2 then\n        -- second bait hit: only the group that just baited (tanks and healers)\n        s.swapCalled2 = true\n        local r = AnyoneCore and AnyoneCore.Roster\n        local slot = r and r.current() and r.mySlot()\n        say = slot == \"T1\" or slot == \"T2\" or slot == \"H1\" or slot == \"H2\"\n    end\n    if say and AnyoneCore and AnyoneCore.Shotcall then AnyoneCore.Shotcall(\"Swap\", true, 2) end\nend\nself.used = true",
							conditions = 
							{
								
								{
									"4cce7f92-a5e7-db73-8220-d7977403ae7a",
									true,
								},
							},
							uuid = "e7f0f4ed-ee2e-fb9f-a835-917c78e7c484",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal id = eventArgs.spellID\nreturn p ~= nil and p.localmapid == 1226 and (id == 37951 or id == 37979 or id == 38013 or id == 37952 or id == 37980 or id == 38014)",
							dequeueIfLuaFalse = true,
							uuid = "4cce7f92-a5e7-db73-8220-d7977403ae7a",
							version = 3,
						},
					},
				},
				eventType = 2,
				loop = true,
				mechanicTime = 413.8,
				name = "[Hector] Crossing pre-draw hits",
				timeRange = true,
				timelineIndex = 90,
				timerEndOffset = 12,
				timerStartOffset = -12,
				uuid = "5720e59a-17f6-ab75-9452-e1b53caf8c5d",
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
							actionLua = "local s = data.r1sQC\nif not s then return end\nif Now() > s.deadline then data.r1sQC = nil return end\nif s.n < 8 then\n    local o = s.origin\n    if not o and s.caster then\n        local e = TensorCore.mGetEntity(s.caster)\n        if s.spell == 37948 then\n            o = e and e.pos\n        else\n            for _, t in pairs(Argus.getTethersOnEnt(s.caster) or {}) do\n                if t.type == 12 and t.sourceid == s.caster then\n                    local jump = TensorCore.mGetEntity(t.targetid)\n                    if jump and jump.pos then\n                        o = {x=jump.pos.x, y=jump.pos.y, z=jump.pos.z}\n                        s.origin = o\n                    end\n                end\n            end\n            local c = e and e.castinginfo\n            if not o and (s.spell == 38009 or s.spell == 38995) and c and c.channelingid == s.spell then\n                local a = e.pos.h + (s.spell == 38009 and math.pi/2 or -math.pi/2)\n                o = {x=e.pos.x + 10*math.sin(a), y=e.pos.y, z=e.pos.z + 10*math.cos(a)}\n            end\n        end\n    end\n    if o then\n        local list = {}\n        for _, m in pairs(TensorCore.getEntityGroupList(\"Party\") or {}) do\n            local dx, dz = m.pos.x - o.x, m.pos.z - o.z\n            list[#list+1] = {d=dx*dx + dz*dz, h=math.atan2(dx, dz)}\n        end\n        table.sort(list, function(a, b) return a.d < b.d end)\n        local drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1, 0.85, 0, 0.15), 1.5)\n        for i = 1, math.min(4, #list) do\n            drawer:addCone(o.x, o.y, o.z, 100, math.pi/4, list[i].h)\n        end\n    end\nelse\n    local first = (s.cch == 0 and 1) or (s.cres >= 4 and s.cch < 5 and 5)\n    if first then\n        local drawer = TensorCore.getMoogleDrawer()\n        for i = first, first + 3 do\n            local c = s.cones[i]\n            if c then drawer:addCone(c.x, c.y, c.z, 100, math.pi/4, c.h) end\n        end\n    end\nend",
							conditions = 
							{
								
								{
									"ef9999a1-46b4-c6ad-b5d8-814d744f32df",
									true,
								},
							},
							uuid = "846101a0-5b2a-efcf-bb08-fdc926b38038",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s = data.r1sQC\nif not s or s.n >= 8 or Now() > s.deadline then return end\nlocal r = AnyoneCore and AnyoneCore.Roster\nlocal slot = r and r.current() and r.mySlot()\n-- {waymark pair, is DPS}: 1/A, 2/B, 3/C, 4/D\nlocal m = ({R1={1,true}, T1={1}, R2={2,true}, H2={2}, M2={3,true}, T2={3}, M1={4,true}, H1={4}})[slot]\nif not m then return end\nlocal o = s.origin\nif not o and s.caster then\n    local e = TensorCore.mGetEntity(s.caster)\n    if s.spell == 37948 then\n        o = e and e.pos\n    else\n        local c = e and e.castinginfo\n        if (s.spell == 38009 or s.spell == 38995) and c and c.channelingid == s.spell then\n            local a = e.pos.h + (s.spell == 38009 and math.pi/2 or -math.pi/2)\n            o = {x=e.pos.x + 10*math.sin(a), y=e.pos.y, z=e.pos.z + 10*math.cos(a)}\n        end\n    end\nend\nif not o then return end\nlocal player = TensorCore.mGetPlayer()\n-- DPS bait hit 1, supports bait hit 2\nlocal bait = (s.n == 0) == (m[2] == true)\nlocal headings = bait and {-3*math.pi/4, 3*math.pi/4, math.pi/4, -math.pi/4} or {math.pi, math.pi/2, 0, -math.pi/2}\nlocal radius = bait and 3 or 7\nlocal x, z = o.x + radius*math.sin(headings[m[1]]), o.z + radius*math.cos(headings[m[1]])\nlocal drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0, 1, 0, 0.55), 1.5)\nif bait and s.n == 0 then drawer:addCircle(x, o.y, z, 0.5) end\nlocal dx, dz = x - player.pos.x, z - player.pos.z\nlocal distance = math.sqrt(dx*dx + dz*dz)\nif distance > 0.4 then\n    local tip = math.min(0.8, distance*0.5)\n    drawer:addArrow(player.pos.x, player.pos.y, player.pos.z, math.atan2(dx, dz), distance - tip, 0.2, tip, 0.8)\nend",
							conditions = 
							{
								
								{
									"ef9999a1-46b4-c6ad-b5d8-814d744f32df",
									true,
								},
							},
							uuid = "051030d3-1570-26b0-bc25-0b2ead2c7c63",
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
							conditionLua = "if not data.r1sQC then return false end\nlocal p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226",
							uuid = "ef9999a1-46b4-c6ad-b5d8-814d744f32df",
							version = 3,
						},
					},
				},
				eventType = 12,
				loop = true,
				mechanicTime = 413.8,
				name = "[Hector] Crossing pre-draw cones",
				timeRange = true,
				timelineIndex = 90,
				timerEndOffset = 12,
				timerStartOffset = -12,
				uuid = "2d633baa-d0ba-fd40-b9c0-9f4c7ce556dc",
				version = 2,
			},
		},
	},
	[93] = 
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif p and ms > 0 then\n    TensorCore.getMoogleDrawer():addTimedCone(ms,p.x,p.y,p.z,100,math.pi/4,p.h)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"9f6ba36b-7e06-b537-bc6d-d97a51cd8929",
									true,
								},
							},
							uuid = "51dfbcbb-7b34-ec47-ac28-584d90e37147",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 37952 or eventArgs.spellID == 37980 or eventArgs.spellID == 38014)",
							dequeueIfLuaFalse = true,
							uuid = "9f6ba36b-7e06-b537-bc6d-d97a51cd8929",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 419.7,
				name = "[Hector] Crossing repeat cones",
				timeRange = true,
				timelineIndex = 93,
				timerEndOffset = 4,
				timerStartOffset = -4,
				uuid = "82eee1cb-6213-cb3d-ba7e-99389dd5d096",
				version = 2,
			},
		},
	},
	[98] = 
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif p and ms > 0 then\n    local labels = {[38019]=\"Light party line stacks\"}\n    local label = labels[eventArgs.spellID]\n    if eventArgs.spellID == 38019 then\n        local roster = AnyoneCore.Roster\n        local slot = roster and roster.current() and roster.mySlot()\n        local sides = {T1=\"west\",H1=\"west\",M1=\"west\",R1=\"west\",T2=\"east\",H2=\"east\",M2=\"east\",R2=\"east\"}\n        label = \"G1 west / G2 east of stack origin (true north)\"\n        if sides[slot] then label = \"Line stack \" .. sides[slot] .. \" of stack origin (true north)\" end\n    end\n    AnyoneCore.addTimedWorldText(ms, label, {x=p.x,y=p.y+3,z=p.z}, 0xFFFFFFFF, true, 1.2)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"e3342a4d-222d-295e-aabc-73340af5165b",
									true,
								},
							},
							uuid = "82b600c0-5f8b-7977-9646-5f3729b0a4c1",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 38019)",
							dequeueIfLuaFalse = true,
							uuid = "e3342a4d-222d-295e-aabc-73340af5165b",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 443,
				name = "[Hector] Tempestuous Tear",
				timeRange = true,
				timelineIndex = 98,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "4f708ef9-5b30-2d8d-a370-d331df3123c2",
				version = 2,
			},
		},
	},
	[100] = 
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
							actionLua = "local ms = (eventArgs.duration or 0) * 1000\nif ms > 0 then\n    TensorCore.getMoogleDrawer():addTimedCone(ms, eventArgs.x, eventArgs.y, eventArgs.z, 100, math.pi, eventArgs.heading)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"17ff3021-3798-2731-8bf5-767976b0c45b",
									true,
								},
							},
							uuid = "9e480901-1394-a3f4-bb94-bb4e7d108184",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal ids = {[37943]=1,[37947]=1,[37970]=1,[37974]=1,[37989]=1,[37993]=1,[38004]=1,[38008]=1}\nreturn p ~= nil and p.localmapid == 1226 and ids[eventArgs.aoeID] == 1",
							dequeueIfLuaFalse = true,
							uuid = "17ff3021-3798-2731-8bf5-767976b0c45b",
							version = 3,
						},
					},
				},
				eventType = 18,
				loop = true,
				mechanicTime = 443.9,
				name = "[Hector] First Paw cleave",
				timeRange = true,
				timelineIndex = 100,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "fb7d01b8-91af-bf24-93e8-0843b4b15763",
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
							actionLua = "local ms = (eventArgs.duration or 0) * 1000\nlocal delay = ms > 5000 and 6000 or 800\nif ms > delay then\n    TensorCore.getMoogleDrawer():addTimedCone(ms - delay, eventArgs.x, eventArgs.y, eventArgs.z, 100, math.pi, eventArgs.heading, delay, false, true)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"ad04b252-a995-77a3-a283-27a7e0cab755",
									true,
								},
							},
							uuid = "0d654c0d-2bde-a915-8653-a289e03c926d",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal ids = {[37944]=1,[37946]=1,[37971]=1,[37973]=1,[37990]=1,[37992]=1,[38005]=1,[38007]=1}\nreturn p ~= nil and p.localmapid == 1226 and ids[eventArgs.aoeID] == 1",
							dequeueIfLuaFalse = true,
							uuid = "ad04b252-a995-77a3-a283-27a7e0cab755",
							version = 3,
						},
					},
				},
				eventType = 18,
				loop = true,
				mechanicTime = 443.9,
				name = "[Hector] Second Paw cleave",
				timeRange = true,
				timelineIndex = 100,
				timerEndOffset = 1,
				timerStartOffset = -10,
				uuid = "e4699aa5-c2f1-c2b4-8cd2-0325227266ca",
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif not p or ms <= 0 then return end\nlocal spell = eventArgs.spellID\nlocal left = spell == 37965 or spell == 37966 or spell == 37999 or spell == 38000\nlocal dodgeLeft = spell == 37965 or spell == 37967 or spell == 37999 or spell == 38001\nlocal tell = (left and \"Jump left\" or \"Jump right\") .. (dodgeLeft and \" - dodge left then right\" or \" - dodge right then left\")\nAnyoneCore.addTimedWorldText(ms,tell,{x=p.x,y=p.y+3,z=p.z},0xFFFFFFFF,true,1.2)\nself.used = true",
							conditions = 
							{
								
								{
									"e9992fa8-7f2b-6b4e-8bd6-d8ce465dd552",
									true,
								},
							},
							uuid = "c260c696-4152-f7d6-92c8-d6580ac8ffe2",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 37965 or eventArgs.spellID == 37966 or eventArgs.spellID == 37967 or eventArgs.spellID == 37968 or eventArgs.spellID == 37999 or eventArgs.spellID == 38000 or eventArgs.spellID == 38001 or eventArgs.spellID == 38002)",
							dequeueIfLuaFalse = true,
							uuid = "e9992fa8-7f2b-6b4e-8bd6-d8ce465dd552",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 443.9,
				name = "[Hector] Leaping Paw setup",
				timeRange = true,
				timelineIndex = 100,
				timerEndOffset = 4,
				timerStartOffset = -12,
				uuid = "0d591492-7e7b-fb5a-9bc6-5ebb878d530f",
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
							actionLua = "local id = eventArgs.spellID\nlocal side = math.pi/2 -- +side is the caster's left, -side its right\nif id == 37942 or id == 37945 then\n    data.r1sPawDir = {first = id == 37942 and -side or side, till = Now() + 15000, seen = {}}\nelse\n    -- order of IDs: LRL, LLR, RRL, RLR (jump side, first cleave, second cleave)\n    local k = id >= 37999 and id - 37999 or id - 37965\n    local leap = k < 2 and side or -side\n    local first = (k == 0 or k == 2) and -side or side\n    if id < 37999 then data.r1sPawLeap = {leap = leap, first = first} end\n    data.r1sPaw = {live = {e = eventArgs.entityID, spell = id, leap = leap, first = first}, cones = {}, order = 1, deadline = Now() + (eventArgs.channelTimeMax or 5) * 1000 + 8000}\nend\nself.used = true",
							conditions = 
							{
								
								{
									"c0d33623-710b-43fa-87da-50543e134eae",
									true,
								},
							},
							uuid = "e1d1e444-c783-9793-93cd-374f9e400a42",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal id = eventArgs.spellID\nreturn p ~= nil and p.localmapid == 1226 and (id == 37942 or id == 37945 or (id >= 37965 and id <= 37968) or (id >= 37999 and id <= 38002))",
							dequeueIfLuaFalse = true,
							uuid = "c0d33623-710b-43fa-87da-50543e134eae",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 443.9,
				name = "[Hector] Paw pre-draw casts",
				timeRange = true,
				timelineIndex = 100,
				timerEndOffset = 6,
				timerStartOffset = -60,
				uuid = "6e64ac69-851d-ad5c-a90a-138dbba0496a",
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
							actionLua = "self.used = true\nlocal id = eventArgs.sourceEntityID\nlocal e = TensorCore.mGetEntity(id)\nlocal p = e and e.pos\nif not p then return end\nlocal d, L = data.r1sPawDir, data.r1sPawLeap\nif d and Now() < d.till then\n    -- standing clones replay the two cleaves from where they are\n    if d.seen[id] then return end\n    d.seen[id] = true\n    local s = data.r1sPaw\n    if not s or s.tag ~= d then\n        s = {tag = d, cones = {}, order = 1, deadline = Now() + 27000}\n        data.r1sPaw = s\n    end\n    s.cones[#s.cones+1] = {x=p.x, y=p.y, z=p.z, h=p.h + d.first, order=1}\n    s.cones[#s.cones+1] = {x=p.x, y=p.y, z=p.z, h=p.h - d.first, order=2}\nelseif L then\n    -- leaping version: the first clone tethered is the one; its re-tether starts the replay\n    if not L.clone then\n        L.clone, L.at = id, Now()\n    elseif L.clone == id and Now() - L.at > 10000 then\n        local a = p.h + L.leap\n        local x, z = p.x + 10*math.sin(a), p.z + 10*math.cos(a)\n        data.r1sPaw = {order = 1, deadline = Now() + 22000, cones = {\n            {x=x, y=p.y, z=z, h=p.h + L.first, order=1},\n            {x=x, y=p.y, z=z, h=p.h - L.first, order=2}}}\n        data.r1sPawLeap = nil\n    end\nend",
							conditions = 
							{
								
								{
									"5a8fd67a-d313-2036-ad66-847b9a996cbb",
									true,
								},
							},
							uuid = "c9762efd-e413-1c28-9145-07623378b063",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and eventArgs.newTetherID == 102",
							dequeueIfLuaFalse = true,
							uuid = "5a8fd67a-d313-2036-ad66-847b9a996cbb",
							version = 3,
						},
					},
				},
				eventType = 15,
				loop = true,
				mechanicTime = 443.9,
				name = "[Hector] Paw pre-draw clones",
				timeRange = true,
				timelineIndex = 100,
				timerEndOffset = 6,
				timerStartOffset = -60,
				uuid = "821c4ccc-4d94-880e-9837-aa2fed9fcb80",
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
							actionLua = "local second = {[37944]=true,[37946]=true,[37971]=true,[37973]=true,[37990]=true,[37992]=true,[38005]=true,[38007]=true}\nlocal s = data.r1sPaw\nif s then\n    if second[eventArgs.spellID] then data.r1sPaw = nil else s.order = 2 end\nend\nself.used = true",
							conditions = 
							{
								
								{
									"bee9bd78-e857-093d-b6a2-09a500fba05d",
									true,
								},
							},
							uuid = "f6729c5a-7be2-5ddc-b96e-c758104f0694",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal ids = {[37943]=1,[37947]=1,[37970]=1,[37974]=1,[37989]=1,[37993]=1,[38004]=1,[38008]=1,[37944]=2,[37946]=2,[37971]=2,[37973]=2,[37990]=2,[37992]=2,[38005]=2,[38007]=2}\nreturn p ~= nil and p.localmapid == 1226 and ids[eventArgs.spellID] ~= nil",
							dequeueIfLuaFalse = true,
							uuid = "bee9bd78-e857-093d-b6a2-09a500fba05d",
							version = 3,
						},
					},
				},
				eventType = 2,
				loop = true,
				mechanicTime = 443.9,
				name = "[Hector] Paw pre-draw hits",
				timeRange = true,
				timelineIndex = 100,
				timerEndOffset = 6,
				timerStartOffset = -60,
				uuid = "410e26ce-7000-4217-b2f9-902f65f713ba",
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
							actionLua = "local s = data.r1sPaw\nif not s then return end\nif Now() > s.deadline then data.r1sPaw = nil return end\nlocal live = s.live\nif live then\n    -- follow the caster's facing until the leap cast ends, then keep the last value\n    local e = TensorCore.mGetEntity(live.e)\n    local c = e and e.castinginfo\n    if c and c.channelingid == live.spell then\n        local p = e.pos\n        local a = p.h + live.leap\n        local x, z = p.x + 10*math.sin(a), p.z + 10*math.cos(a)\n        s.cones = {{x=x, y=p.y, z=z, h=p.h + live.first, order=1}, {x=x, y=p.y, z=z, h=p.h - live.first, order=2}}\n    end\nend\nlocal drawer = TensorCore.getMoogleDrawer()\nfor _, c in ipairs(s.cones) do\n    if c.order == s.order then drawer:addCone(c.x, c.y, c.z, 100, math.pi, c.h) end\nend",
							conditions = 
							{
								
								{
									"7449baef-d87c-e084-b486-ef63d6da3645",
									true,
								},
							},
							uuid = "eaa4a3c1-30df-789d-a87d-185c39566f7a",
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
							conditionLua = "if not data.r1sPaw then return false end\nlocal p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226",
							uuid = "7449baef-d87c-e084-b486-ef63d6da3645",
							version = 3,
						},
					},
				},
				eventType = 12,
				loop = true,
				mechanicTime = 443.9,
				name = "[Hector] Paw pre-draw cones",
				timeRange = true,
				timelineIndex = 100,
				timerEndOffset = 6,
				timerStartOffset = -60,
				uuid = "3c7adf90-50b4-3b35-843a-332b97c086ab",
				version = 2,
			},
		},
	},
	[102] = 
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif p and ms > 0 then\n    AnyoneCore.addTimedWorldText(ms, \"Raidwide - Bloody Scratch\", {x=p.x,y=p.y+3,z=p.z}, 0xFFFFFFFF, true, 1.2)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"ab538b14-e583-84ca-af0d-3d4417d11d7e",
									true,
								},
							},
							uuid = "be9774e6-8a60-82ad-b3b6-1ef4c9409693",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 38036)",
							dequeueIfLuaFalse = true,
							uuid = "ab538b14-e583-84ca-af0d-3d4417d11d7e",
							version = 3,
						},
					},
				},
				enabled = false,
				eventType = 3,
				loop = true,
				mechanicTime = 458,
				name = "[Hector] Bloody Scratch raidwide",
				timeRange = true,
				timelineIndex = 102,
				timerEndOffset = 1,
				timerStartOffset = -10,
				uuid = "2775ee54-603f-47c2-8ddd-9a9d632bbc85",
				version = 2,
			},
		},
	},
	[103] = 
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif p and ms > 0 then\n    AnyoneCore.addTimedWorldText(ms, \"Raidwide - Bloody Scratch\", {x=p.x,y=p.y+3,z=p.z}, 0xFFFFFFFF, true, 1.2)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"ebaf845a-8c69-f384-926a-4c4e7a746690",
									true,
								},
							},
							uuid = "d7739f88-b30d-2d0e-a3ba-3a0cf0a9f2b4",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 38036)",
							dequeueIfLuaFalse = true,
							uuid = "ebaf845a-8c69-f384-926a-4c4e7a746690",
							version = 3,
						},
					},
				},
				enabled = false,
				eventType = 3,
				loop = true,
				mechanicTime = 500,
				name = "[Hector] Bloody Scratch raidwide",
				timeRange = true,
				timelineIndex = 103,
				timerEndOffset = 1,
				timerStartOffset = -10,
				uuid = "e8ab3d8e-be3b-cb08-9e4a-af9dd753c50c",
				version = 2,
			},
		},
	},
	[105] = 
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
							actionLua = "local ms = (eventArgs.channelTimeMax or 0) * 1000\nif ms <= 0 then return end\nlocal caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nif p then\n    local label = eventArgs.spellID == 39276 and \"Tile breaks\" or \"Tile takes damage\"\n    AnyoneCore.addTimedWorldText(ms,label,{x=p.x,y=p.y+1,z=p.z},0xFFFFFFFF,true,1.05)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"80e72500-b9c8-f85d-b897-9e1dffc0b8e3",
									true,
								},
							},
							uuid = "b6fcb5cd-79ab-b234-87a6-40761fe26c6e",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 37955 or eventArgs.spellID == 39276)",
							dequeueIfLuaFalse = true,
							uuid = "80e72500-b9c8-f85d-b897-9e1dffc0b8e3",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 514.6,
				name = "[Hector] Mouser tile warnings",
				timeRange = true,
				timelineIndex = 105,
				timerEndOffset = 6,
				timerStartOffset = -9,
				uuid = "fd301324-78d3-1f59-be8e-bad7b594e5a3",
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif not p or ms <= 0 then return end\n-- the jump lands about 10.4s after this 0.7s marker cast\nlocal now = Now()\nlocal hit = now + ms + 10400\nlocal first = data.r1sTileFirst\nif not first or hit - first > 25000 or hit < first - 1000 then\n    first = hit\n    data.r1sTileFirst = hit\nend\n-- the first three sets show at once, later sets 3.5s before they land\nlocal from = now\nif hit - first > 2500 then from = math.max(now, hit - 3500) end\nlocal color = eventArgs.spellID == 39276 and 0x803333FF or 0x8033AAFF\nTensorCore.getStaticDrawer(color, 2):addTimedCenteredRect(hit - from, p.x, p.y, p.z, 10, 10, 0, from - now, false, true)\nself.used = true",
							conditions = 
							{
								
								{
									"e3725c7b-e0b1-af52-826e-51ed784dab24",
									true,
								},
							},
							uuid = "ccd3e416-4e62-fc9f-ba46-5c8d653d9f2c",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif p and ms > 0 then\n    local hit = Now() + ms + 10400\n    local s = data.r1sSafe\n    if not s or hit - s.last > 25000 then\n        s = {tiles = {}, last = hit}\n        data.r1sSafe = s\n    end\n    s.last = math.max(s.last, hit)\n    s.tiles[#s.tiles+1] = {x = p.x, z = p.z, hit = hit, destroys = eventArgs.spellID == 39276}\nend\nself.used = true",
							conditions = 
							{
								
								{
									"e3725c7b-e0b1-af52-826e-51ed784dab24",
									true,
								},
							},
							uuid = "f9ca99c3-137d-cbec-af2c-61c242ace598",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 37955 or eventArgs.spellID == 39276)",
							dequeueIfLuaFalse = true,
							uuid = "e3725c7b-e0b1-af52-826e-51ed784dab24",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 514.6,
				name = "[Hector] Mouser tile geometry",
				timeRange = true,
				timelineIndex = 105,
				timerEndOffset = 12,
				timerStartOffset = -12,
				uuid = "3ebd731f-849a-a4ff-a0fa-855626f68fbe",
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
							actionLua = "local s = data.r1sSafe\nif not s then return end\nlocal now = Now()\nif now > s.last + 500 then data.r1sSafe = nil return end\nlocal first\nfor _, t in ipairs(s.tiles) do\n    if t.hit > now and (not first or t.hit < first) then first = t.hit end\nend\nlocal channel = Argus2.getNextUnusedChannel(true)\nif channel == nil then return end\nlocal ground = Argus2.RenderFlags.FLAG_WARP_TERRAIN + Argus2.RenderFlags.FLAG_RENDER_UI\nlocal baseFlags = ground + Argus2.RenderFlags.FLAG_OCCLUSION_BASE\nlocal cutFlags = ground + Argus2.RenderFlags.FLAG_OCCLUDE\nlocal base = TensorCore.getCachedFlatDrawer(0x7333CC33, 0x7333CC33, 0x7333CC33, 0x00000000, 0, channel, baseFlags)\nlocal cut = TensorCore.getCachedFlatDrawer(0x00000000, 0x00000000, 0x00000000, 0x00000000, 0, channel, cutFlags)\nbase:addCenteredRect(100, 0.05, 100, 40, 40, 0, false, baseFlags)\nfor _, t in ipairs(s.tiles) do\n    -- holes stay cut out; tiles about to be hit are cut for the next three sets\n    local hole = t.destroys and t.hit <= now\n    local soon = first and t.hit > now - 300 and t.hit <= first + 2500\n    if hole or soon then cut:addCenteredRect(t.x, 0.05, t.z, 10, 10, 0, false, cutFlags) end\nend",
							conditions = 
							{
								
								{
									"8e2f0468-c28b-c241-97af-00485b930f3e",
									true,
								},
							},
							uuid = "f300256c-a47e-4301-aaf5-32bcedf4026d",
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
							conditionLua = "if not data.r1sSafe then return false end\nlocal p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226",
							uuid = "8e2f0468-c28b-c241-97af-00485b930f3e",
							version = 3,
						},
					},
				},
				eventType = 12,
				loop = true,
				mechanicTime = 514.6,
				name = "[Hector] Mouser safe tiles",
				timeRange = true,
				timelineIndex = 105,
				timerEndOffset = 24,
				timerStartOffset = -12,
				uuid = "c3579649-9440-6170-9280-024c1f91348e",
				version = 2,
			},
		},
	},
	[110] = 
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif p and ms > 0 then\n    local labels = {[37958]=\"Marked player: knockback onto intact tile\", [37960]=\"Marked player: stand on intact tile\"}\n    AnyoneCore.addTimedWorldText(ms, labels[eventArgs.spellID], {x=p.x,y=p.y+3,z=p.z}, 0xFFFFFFFF, true, 1.2)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"9c78c7a7-733d-efb0-9b4a-0a58cb10e3b5",
									true,
								},
							},
							uuid = "a4aec662-ee32-b603-a3b7-4da83f2f4ecd",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 37958 or eventArgs.spellID == 37960)",
							dequeueIfLuaFalse = true,
							uuid = "9c78c7a7-733d-efb0-9b4a-0a58cb10e3b5",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 555.2,
				name = "[Hector] Copycat landing",
				timeRange = true,
				timelineIndex = 110,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "cc3c00a3-09e8-b5f4-a850-07d8d41843d1",
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
							actionLua = "data.r1sEE = {target = eventArgs.entityID, deadline = Now() + 11000}\nself.used = true",
							conditions = 
							{
								
								{
									"984e34de-365e-a6c5-853f-fc24724510f4",
									true,
								},
							},
							uuid = "8c5caf14-72bd-1eef-8a60-93da990fb41b",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and eventArgs.markerID == 538",
							dequeueIfLuaFalse = true,
							uuid = "984e34de-365e-a6c5-853f-fc24724510f4",
							version = 3,
						},
					},
				},
				eventType = 4,
				loop = true,
				mechanicTime = 555.2,
				name = "[Hector] Eviscerate marked player",
				timeRange = true,
				timelineIndex = 110,
				timerEndOffset = 40,
				timerStartOffset = -8,
				uuid = "cfde3940-da83-4e6e-a976-9c5bd8e92130",
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
							actionLua = "data.r1sEEKnock = eventArgs.spellID == 37958 and 10 or 0\nself.used = true",
							conditions = 
							{
								
								{
									"a15bc0d4-ca31-ad76-9523-4fbbe3230920",
									true,
								},
							},
							uuid = "9a468aaa-eb52-e3d3-9eb1-26c085e6d13d",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 37958 or eventArgs.spellID == 37960)",
							dequeueIfLuaFalse = true,
							uuid = "a15bc0d4-ca31-ad76-9523-4fbbe3230920",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 555.2,
				name = "[Hector] Eviscerate casts",
				timeRange = true,
				timelineIndex = 110,
				timerEndOffset = 40,
				timerStartOffset = -8,
				uuid = "5dda6fff-f0ce-1bd0-b29e-26a3fc804b2b",
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
							actionLua = "self.used = true\nlocal s = data.r1sEE\nif not s then return end\nif eventArgs.spellID == 37962 then data.r1sEE = nil return end\n-- the target was just hit: freeze the landing tile until its impact\nlocal e = TensorCore.mGetEntity(s.target)\nlocal p = e and e.pos\nif p then\n    local knock = eventArgs.spellID == 37959 and 10 or 0\n    data.r1sEELand = {target = s.target, x = p.x + knock*math.sin(p.h), y = p.y, z = p.z + knock*math.cos(p.h), deadline = Now() + (knock > 0 and 3800 or 1600)}\nend",
							conditions = 
							{
								
								{
									"88412495-1efb-deaf-afd9-719912e1746f",
									true,
								},
							},
							uuid = "e955045e-41e8-25fa-81c9-be642b55ef33",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal id = eventArgs.spellID\nreturn p ~= nil and p.localmapid == 1226 and (id == 37959 or id == 37961 or id == 37962)",
							dequeueIfLuaFalse = true,
							uuid = "88412495-1efb-deaf-afd9-719912e1746f",
							version = 3,
						},
					},
				},
				eventType = 2,
				loop = true,
				mechanicTime = 555.2,
				name = "[Hector] Eviscerate hits",
				timeRange = true,
				timelineIndex = 110,
				timerEndOffset = 40,
				timerStartOffset = -8,
				uuid = "afae43d0-59ae-b145-aa3a-c5d5121f4389",
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
							actionLua = "local function tile(v) return v < 90 and 85 or v < 100 and 95 or v < 110 and 105 or 115 end\nlocal s, land = data.r1sEE, data.r1sEELand\nif s and Now() > s.deadline then data.r1sEE = nil s = nil end\nif land and Now() > land.deadline then data.r1sEELand = nil land = nil end\nif s then\n    local e = TensorCore.mGetEntity(s.target)\n    local p = e and e.pos\n    if p and TensorCore.mGetPlayer().id ~= s.target then\n        -- the cross is centred on the marked player's tile, aligned to the arena\n        local drawer = TensorCore.getMoogleDrawer()\n        local x, z = tile(p.x), tile(p.z)\n        drawer:addCenteredRect(x, p.y, z, 120, 10, 0)\n        drawer:addCenteredRect(x, p.y, z, 120, 10, math.pi/2)\n    end\nend\n-- landing tile, only once the jump has hit: green for the baiting player, red for everyone else\nif land then\n    local mine = TensorCore.mGetPlayer().id == land.target\n    local color = GUI:ColorConvertFloat4ToU32(mine and 0 or 1, mine and 1 or 0, 0, 0.35)\n    TensorCore.getStaticDrawer(color, 2):addCenteredRect(tile(land.x), land.y, tile(land.z), 10, 10, 0)\nend",
							conditions = 
							{
								
								{
									"e253c3a2-7388-78bc-8642-8802b4afffe9",
									true,
								},
							},
							uuid = "a02a5531-7f88-5a7e-a8c6-5a1d01868ccb",
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
							conditionLua = "if not data.r1sEE and not data.r1sEELand then return false end\nlocal p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226",
							uuid = "e253c3a2-7388-78bc-8642-8802b4afffe9",
							version = 3,
						},
					},
				},
				eventType = 12,
				loop = true,
				mechanicTime = 555.2,
				name = "[Hector] Eviscerate pre-draw",
				timeRange = true,
				timelineIndex = 110,
				timerEndOffset = 40,
				timerStartOffset = -8,
				uuid = "519b7381-727a-11ca-ab3a-967463e9d2b6",
				version = 2,
			},
		},
	},
	[113] = 
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif p and ms > 0 then\n    local labels = {[38039]=\"Line stack\", [38041]=\"Spread by role\"}\n    AnyoneCore.addTimedWorldText(ms, labels[eventArgs.spellID], {x=p.x,y=p.y+3,z=p.z}, 0xFFFFFFFF, true, 1.2)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"13acf9ad-cb89-0200-87c0-e74c57300f7d",
									true,
								},
							},
							uuid = "a5f215e3-fd27-98f1-8d52-080fd560c88c",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 38039 or eventArgs.spellID == 38041)",
							dequeueIfLuaFalse = true,
							uuid = "13acf9ad-cb89-0200-87c0-e74c57300f7d",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 558.7,
				name = "[Hector] Mouser follow-up",
				timeRange = true,
				timelineIndex = 113,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "646d2da3-7896-9418-9471-327ffa3596a4",
				version = 2,
			},
		},
	},
	[117] = 
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif p and ms > 0 then\n    local labels = {[37958]=\"Marked player: knockback onto intact tile\", [37960]=\"Marked player: stand on intact tile\"}\n    AnyoneCore.addTimedWorldText(ms, labels[eventArgs.spellID], {x=p.x,y=p.y+3,z=p.z}, 0xFFFFFFFF, true, 1.2)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"1005c3f2-340e-a6ad-b1ba-51bf6dca5481",
									true,
								},
							},
							uuid = "68927e0b-cbc0-e44a-9d7d-9b08b5459157",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 37958 or eventArgs.spellID == 37960)",
							dequeueIfLuaFalse = true,
							uuid = "1005c3f2-340e-a6ad-b1ba-51bf6dca5481",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 567.6,
				name = "[Hector] Copycat landing",
				timeRange = true,
				timelineIndex = 117,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "4d7e2962-9237-70fc-aa9d-12672132769e",
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif p and ms > 0 then\n    local labels = {[38039]=\"Line stack\", [38041]=\"Spread by role\"}\n    AnyoneCore.addTimedWorldText(ms, labels[eventArgs.spellID], {x=p.x,y=p.y+3,z=p.z}, 0xFFFFFFFF, true, 1.2)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"b45c341c-9722-b486-b166-0e7b8d690565",
									true,
								},
							},
							uuid = "6d487e9b-59de-1c9e-a7bd-18cb64220cea",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 38039 or eventArgs.spellID == 38041)",
							dequeueIfLuaFalse = true,
							uuid = "b45c341c-9722-b486-b166-0e7b8d690565",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 571.1,
				name = "[Hector] Mouser follow-up",
				timeRange = true,
				timelineIndex = 120,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "2407a955-ead5-db00-9c4a-22b191b59047",
				version = 2,
			},
		},
	},
	[124] = 
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif p and ms > 0 then\n    local labels = {[37958]=\"Marked player: knockback onto intact tile\", [37960]=\"Marked player: stand on intact tile\"}\n    AnyoneCore.addTimedWorldText(ms, labels[eventArgs.spellID], {x=p.x,y=p.y+3,z=p.z}, 0xFFFFFFFF, true, 1.2)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"561c561b-f432-a9fb-9201-f4b3ddcb0ff1",
									true,
								},
							},
							uuid = "d6f24db6-01fd-61e6-96e3-bab99f810ee1",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 37958 or eventArgs.spellID == 37960)",
							dequeueIfLuaFalse = true,
							uuid = "561c561b-f432-a9fb-9201-f4b3ddcb0ff1",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 580.1,
				name = "[Hector] Copycat landing",
				timeRange = true,
				timelineIndex = 124,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "8de1dc76-5f1e-ac40-89d4-a87705e140c0",
				version = 2,
			},
		},
	},
	[127] = 
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif p and ms > 0 then\n    local labels = {[38039]=\"Line stack\", [38041]=\"Spread by role\"}\n    AnyoneCore.addTimedWorldText(ms, labels[eventArgs.spellID], {x=p.x,y=p.y+3,z=p.z}, 0xFFFFFFFF, true, 1.2)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"83f8baf0-72a9-361f-ba4c-968b5447bab2",
									true,
								},
							},
							uuid = "85effd39-5f14-3c7a-85ef-eb5d3cdfe5fd",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 38039 or eventArgs.spellID == 38041)",
							dequeueIfLuaFalse = true,
							uuid = "83f8baf0-72a9-361f-ba4c-968b5447bab2",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 583.5,
				name = "[Hector] Mouser follow-up",
				timeRange = true,
				timelineIndex = 127,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "29d5ee08-3ea3-993a-9c0b-ef92f4b6fe0f",
				version = 2,
			},
		},
	},
	[132] = 
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif p and ms > 0 then\n    local labels = {[37958]=\"Marked player: knockback onto intact tile\", [37960]=\"Marked player: stand on intact tile\"}\n    AnyoneCore.addTimedWorldText(ms, labels[eventArgs.spellID], {x=p.x,y=p.y+3,z=p.z}, 0xFFFFFFFF, true, 1.2)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"8de9af37-6fab-7ef7-a710-889cff9dc753",
									true,
								},
							},
							uuid = "e1db56d1-684e-13c3-812d-f59c8a493b53",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 37958 or eventArgs.spellID == 37960)",
							dequeueIfLuaFalse = true,
							uuid = "8de9af37-6fab-7ef7-a710-889cff9dc753",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 592.2,
				name = "[Hector] Copycat landing",
				timeRange = true,
				timelineIndex = 132,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "50f536a1-c0d3-bf15-beed-6931e4ca9627",
				version = 2,
			},
		},
	},
	[135] = 
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif p and ms > 0 then\n    local labels = {[38039]=\"Line stack\", [38041]=\"Spread by role\"}\n    AnyoneCore.addTimedWorldText(ms, labels[eventArgs.spellID], {x=p.x,y=p.y+3,z=p.z}, 0xFFFFFFFF, true, 1.2)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"a12a3d0a-92c8-2165-a8e3-9f85283b8b86",
									true,
								},
							},
							uuid = "91bde07d-6e9d-2512-b217-d5a7686fe739",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 38039 or eventArgs.spellID == 38041)",
							dequeueIfLuaFalse = true,
							uuid = "a12a3d0a-92c8-2165-a8e3-9f85283b8b86",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 595.7,
				name = "[Hector] Mouser follow-up",
				timeRange = true,
				timelineIndex = 135,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "d357ed77-9e12-a140-b0d7-1f7c03be8d27",
				version = 2,
			},
		},
	},
	[139] = 
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
							actionLua = "if AnyoneCore and AnyoneCore.Shotcall then\n    AnyoneCore.Shotcall(\"Tankbuster - swap after first hit\", true, 2)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"9ae337f9-3aac-beb8-a01f-3c4dff07cf1f",
									true,
								},
							},
							uuid = "7e7ebd45-db91-64e2-ae35-312cc14a8690",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and eventArgs.spellID == 38037 and (p.job == 19 or p.job == 21 or p.job == 32 or p.job == 37)",
							dequeueIfLuaFalse = true,
							uuid = "9ae337f9-3aac-beb8-a01f-3c4dff07cf1f",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 606,
				name = "[Hector] Biscuit Maker",
				timeRange = true,
				timelineIndex = 139,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "4187f4bc-5b51-7099-ba6e-c193787d2f4a",
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
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "if AnyoneCore and AnyoneCore.Shotcall then\n    AnyoneCore.Shotcall(\"Knockback then spread\", true, 2)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"677373a5-2e93-7932-84d6-9706d0ad22ac",
									true,
								},
							},
							uuid = "15c7c4c2-e684-043d-ae86-4fc2e2043954",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 37963)",
							dequeueIfLuaFalse = true,
							uuid = "677373a5-2e93-7932-84d6-9706d0ad22ac",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 619.1,
				name = "[Hector] Grimalkin Gale",
				timeRange = true,
				timelineIndex = 141,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "3ad5de76-c9cf-cbd2-872e-5f984a30d603",
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif p and ms > 0 then\n    -- the knockback resolves about 0.35s after the 6.7s cast\n    data.r1sKnock = {x = p.x, z = p.z, deadline = Now() + ms + 400}\nend\nself.used = true",
							conditions = 
							{
								
								{
									"ccf6e30b-e3a4-0e34-b370-be685c360f30",
									true,
								},
							},
							uuid = "51aeae11-f6fc-d0a8-b120-4c4355534ea5",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and eventArgs.spellID == 37964",
							dequeueIfLuaFalse = true,
							uuid = "ccf6e30b-e3a4-0e34-b370-be685c360f30",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 619.1,
				name = "[Hector] Shockwave knockback start",
				timeRange = true,
				timelineIndex = 141,
				timerEndOffset = 3,
				timerStartOffset = -9,
				uuid = "5c0d1e08-a955-b1ee-907e-3dffead46a24",
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
							actionLua = "local k = data.r1sKnock\nif not k then return end\nif Now() > k.deadline then data.r1sKnock = nil return end\nlocal p = TensorCore.mGetPlayer().pos\nlocal dx, dz = p.x - k.x, p.z - k.z\nif dx*dx + dz*dz < 0.01 then return end\n-- pushed 21 yalms directly away from the source\nlocal h = math.atan2(dx, dz)\nlocal drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0, 1, 0, 0.6), 2)\ndrawer:addRect(p.x, p.y, p.z, 21, 1, h)\ndrawer:addCircle(p.x + 21*math.sin(h), p.y, p.z + 21*math.cos(h), 1)",
							conditions = 
							{
								
								{
									"0634fab1-d5bc-bd7d-a4fc-073fdccf330d",
									true,
								},
							},
							uuid = "1c41f1af-0c39-7fa6-95d7-a10ea11294ac",
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
							conditionLua = "if not data.r1sKnock then return false end\nlocal p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226",
							uuid = "0634fab1-d5bc-bd7d-a4fc-073fdccf330d",
							version = 3,
						},
					},
				},
				eventType = 12,
				loop = true,
				mechanicTime = 619.1,
				name = "[Hector] Shockwave knockback line",
				timeRange = true,
				timelineIndex = 141,
				timerEndOffset = 3,
				timerStartOffset = -9,
				uuid = "2ef1b8d8-8f6a-dfb0-b64d-1631f30f921b",
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
							actionLua = "if AnyoneCore and AnyoneCore.Shotcall then\n    AnyoneCore.Shotcall(\"Spread\", true, 2)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"7ef3af6d-ec55-641c-8053-36bc6716f151",
									true,
								},
							},
							uuid = "22e6591a-16df-d9dd-b406-c69a2f215821",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and eventArgs.spellID == 37964",
							dequeueIfLuaFalse = true,
							uuid = "7ef3af6d-ec55-641c-8053-36bc6716f151",
							version = 3,
						},
					},
				},
				eventType = 2,
				mechanicTime = 619.1,
				name = "[Hector] Spread after Shockwave",
				timeRange = true,
				timelineIndex = 141,
				timerEndOffset = 3,
				timerStartOffset = -9,
				uuid = "5e6fb9f9-ef8e-16bc-8018-528fd1d8e466",
				version = 2,
			},
		},
	},
	[143] = 
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
							actionLua = "local ms = (eventArgs.channelTimeMax or 0) * 1000\nif ms <= 0 then return end\nlocal id = eventArgs.targetID\nif id and id > 0 then TensorCore.getMoogleDrawer():addTimedCircleOnEnt(ms,id,5,0,false,true) end\nself.used = true",
							conditions = 
							{
								
								{
									"b4afa7d4-4349-76c8-9705-eb0e04286d64",
									true,
								},
							},
							uuid = "02462fec-71e2-abcc-82cf-23f1d0af47cd",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 39812)",
							dequeueIfLuaFalse = true,
							uuid = "b4afa7d4-4349-76c8-9705-eb0e04286d64",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 623.9,
				name = "[Hector] Gale spread circles",
				timeRange = true,
				timelineIndex = 143,
				timerEndOffset = 6,
				timerStartOffset = -9,
				uuid = "37a89f58-b20a-8b2a-b500-5a49ef4fd64c",
				version = 2,
			},
		},
	},
	[145] = 
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif p and ms > 0 then\n    local labels = {[39611]=\"Tethers out - near and far stacks\", [39612]=\"Next tethers - near and far stacks\", [39613]=\"Final tethers - near and far stacks\"}\n    AnyoneCore.addTimedWorldText(ms, labels[eventArgs.spellID], {x=p.x,y=p.y+3,z=p.z}, 0xFFFFFFFF, true, 1.2)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"ce3ad29b-b795-dc7d-b68c-8490e3e8a378",
									true,
								},
							},
							uuid = "b77dc53e-89f0-e638-8a4c-16693d76b2d8",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 39611 or eventArgs.spellID == 39612 or eventArgs.spellID == 39613)",
							dequeueIfLuaFalse = true,
							uuid = "ce3ad29b-b795-dc7d-b68c-8490e3e8a378",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 643.3,
				name = "[Hector] Raining Cats",
				timeRange = true,
				timelineIndex = 145,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "17914515-7b3d-758e-80c0-67f8b146538a",
				version = 2,
			},
		},
	},
	[148] = 
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif p and ms > 0 then\n    local labels = {[39611]=\"Tethers out - near and far stacks\", [39612]=\"Next tethers - near and far stacks\", [39613]=\"Final tethers - near and far stacks\"}\n    AnyoneCore.addTimedWorldText(ms, labels[eventArgs.spellID], {x=p.x,y=p.y+3,z=p.z}, 0xFFFFFFFF, true, 1.2)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"60574f9c-744a-0d30-82eb-c02d0f3c3742",
									true,
								},
							},
							uuid = "09de5138-9afb-017f-a2f7-fe427c2e72cb",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 39611 or eventArgs.spellID == 39612 or eventArgs.spellID == 39613)",
							dequeueIfLuaFalse = true,
							uuid = "60574f9c-744a-0d30-82eb-c02d0f3c3742",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 649.3,
				name = "[Hector] Raining Cats",
				timeRange = true,
				timelineIndex = 148,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "bbbc0085-10c2-1ee9-80fe-47d0eb198423",
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
							aType = "Lua",
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif p and ms > 0 then\n    local labels = {[39611]=\"Tethers out - near and far stacks\", [39612]=\"Next tethers - near and far stacks\", [39613]=\"Final tethers - near and far stacks\"}\n    AnyoneCore.addTimedWorldText(ms, labels[eventArgs.spellID], {x=p.x,y=p.y+3,z=p.z}, 0xFFFFFFFF, true, 1.2)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"f564c792-2a23-ca24-bcc7-663161781a3f",
									true,
								},
							},
							uuid = "371ce70a-e55d-5f4d-8fa5-8e5827a26eb0",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 39611 or eventArgs.spellID == 39612 or eventArgs.spellID == 39613)",
							dequeueIfLuaFalse = true,
							uuid = "f564c792-2a23-ca24-bcc7-663161781a3f",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 655.3,
				name = "[Hector] Raining Cats",
				timeRange = true,
				timelineIndex = 151,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "706030cd-9bef-7603-8f1a-869ca0a47418",
				version = 2,
			},
		},
	},
	[154] = 
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif p and ms > 0 then\n    local labels = {[39611]=\"Tethers out - near and far stacks\", [39612]=\"Next tethers - near and far stacks\", [39613]=\"Final tethers - near and far stacks\"}\n    AnyoneCore.addTimedWorldText(ms, labels[eventArgs.spellID], {x=p.x,y=p.y+3,z=p.z}, 0xFFFFFFFF, true, 1.2)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"077f7e11-9f97-1265-ac08-8395bc0636f9",
									true,
								},
							},
							uuid = "054ac4ca-b70a-d665-ab06-b71498a06c73",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 39611 or eventArgs.spellID == 39612 or eventArgs.spellID == 39613)",
							dequeueIfLuaFalse = true,
							uuid = "077f7e11-9f97-1265-ac08-8395bc0636f9",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 661.3,
				name = "[Hector] Raining Cats",
				timeRange = true,
				timelineIndex = 154,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "d5f61828-0de2-6e18-9937-cbbb5ece935d",
				version = 2,
			},
		},
	},
	[158] = 
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif p and ms > 0 then\n    TensorCore.getMoogleDrawer():addTimedCircle(ms,p.x,p.y,p.z,11,0,false,true)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"bd6434ba-ba0c-bd3b-aca0-d3d6f564cbed",
									true,
								},
							},
							uuid = "0c1ef137-f549-b841-9280-701b169c404c",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 39709)",
							dequeueIfLuaFalse = true,
							uuid = "bd6434ba-ba0c-bd3b-aca0-d3d6f564cbed",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 678.5,
				name = "[Hector] Pounce impact preview",
				timeRange = true,
				timelineIndex = 158,
				timerEndOffset = 1,
				timerStartOffset = -17,
				uuid = "f4dbb7e7-1ca9-6658-a39f-eeedcf4e07aa",
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif not p or ms <= 0 then return end\nlocal delay = ({[38027]=11000,[38029]=10000,[38031]=9000,[38033]=8000,[38035]=7000,[39633]=6000})[eventArgs.spellID]\nTensorCore.getMoogleDrawer():addTimedCircle(ms+delay,p.x,p.y,p.z,11,0,false,true)\nself.used = true",
							conditions = 
							{
								
								{
									"7624ef97-f58c-366e-9e75-6631c441bebe",
									true,
								},
							},
							uuid = "ac88bd6a-4ddb-93a8-a679-ae98f483d683",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 38027 or eventArgs.spellID == 38029 or eventArgs.spellID == 38031 or eventArgs.spellID == 38033 or eventArgs.spellID == 38035 or eventArgs.spellID == 39633)",
							dequeueIfLuaFalse = true,
							uuid = "7624ef97-f58c-366e-9e75-6631c441bebe",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 678.5,
				name = "[Hector] Early Pounce impacts",
				timeRange = true,
				timelineIndex = 158,
				timerEndOffset = 4,
				timerStartOffset = -12,
				uuid = "7f8db892-7cc1-0747-bb11-351c6da739d2",
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif not p or not p.h or ms <= 0 then return end\nlocal delay = ({[38026]=11500,[38028]=10500,[38030]=9500,[38032]=8500,[38034]=7500,[39632]=6500})[eventArgs.spellID]\nif not delay then return end\nTensorCore.getStaticDrawer(0x803333FF,2):addTimedRect(ms+delay,p.x,p.y,p.z,20,6,p.h,0,false,true)\nself.used = true",
							conditions = 
							{
								
								{
									"c3d9d4d0-cf19-9616-8098-59439322d515",
									true,
								},
							},
							uuid = "58881ca0-f92f-e7b1-8cd5-1886883bb0f4",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal id = eventArgs.spellID\nreturn p ~= nil and p.localmapid == 1226 and (id == 38026 or id == 38028 or id == 38030 or id == 38032 or id == 38034 or id == 39632)",
							dequeueIfLuaFalse = true,
							uuid = "c3d9d4d0-cf19-9616-8098-59439322d515",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 678.5,
				name = "[Hector] Early Pounce dash lanes",
				timeRange = true,
				timelineIndex = 158,
				timerEndOffset = 4,
				timerStartOffset = -12,
				uuid = "adf1bb1c-ce85-e6c1-8ad2-0f063152cc7b",
				version = 2,
			},
		},
	},
	[160] = 
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif p and ms > 0 then\n    TensorCore.getMoogleDrawer():addTimedCircle(ms,p.x,p.y,p.z,11,0,false,true)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"24d222f6-9c31-cd2d-95d4-e4fcb6160b95",
									true,
								},
							},
							uuid = "a6b5458e-396f-5a7b-a28c-560d611db57d",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 38025)",
							dequeueIfLuaFalse = true,
							uuid = "24d222f6-9c31-cd2d-95d4-e4fcb6160b95",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 691.2,
				name = "[Hector] Pounce impact sequence",
				timeRange = true,
				timelineIndex = 160,
				timerEndOffset = 12,
				timerStartOffset = -17,
				uuid = "ead719e2-e51e-c50e-a3ec-e9eac096d729",
				version = 2,
			},
		},
	},
	[161] = 
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
							actionLua = "local ms = (eventArgs.duration or 0) * 1000\nif ms > 0 then\n    TensorCore.getMoogleDrawer():addTimedCone(ms, eventArgs.x, eventArgs.y, eventArgs.z, 100, math.pi, eventArgs.heading)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"8e79edff-6291-4e60-8ded-f21b2b530b65",
									true,
								},
							},
							uuid = "cc75be51-f7b3-5b84-be2e-da4807df9ae6",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal ids = {[37943]=1,[37947]=1,[37970]=1,[37974]=1,[37989]=1,[37993]=1,[38004]=1,[38008]=1}\nreturn p ~= nil and p.localmapid == 1226 and ids[eventArgs.aoeID] == 1",
							dequeueIfLuaFalse = true,
							uuid = "8e79edff-6291-4e60-8ded-f21b2b530b65",
							version = 3,
						},
					},
				},
				eventType = 18,
				loop = true,
				mechanicTime = 696,
				name = "[Hector] First Paw cleave",
				timeRange = true,
				timelineIndex = 161,
				timerEndOffset = 1,
				timerStartOffset = -9,
				uuid = "64597b31-a826-c6cb-ba70-5c8c023647b0",
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
							actionLua = "local ms = (eventArgs.duration or 0) * 1000\nlocal delay = ms > 5000 and 6000 or 800\nif ms > delay then\n    TensorCore.getMoogleDrawer():addTimedCone(ms - delay, eventArgs.x, eventArgs.y, eventArgs.z, 100, math.pi, eventArgs.heading, delay, false, true)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"129b6adc-ba27-bbda-a0f6-1be7d19e3932",
									true,
								},
							},
							uuid = "3be388c2-3a2f-d102-842c-d2e9810f5161",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal ids = {[37944]=1,[37946]=1,[37971]=1,[37973]=1,[37990]=1,[37992]=1,[38005]=1,[38007]=1}\nreturn p ~= nil and p.localmapid == 1226 and ids[eventArgs.aoeID] == 1",
							dequeueIfLuaFalse = true,
							uuid = "129b6adc-ba27-bbda-a0f6-1be7d19e3932",
							version = 3,
						},
					},
				},
				eventType = 18,
				loop = true,
				mechanicTime = 696,
				name = "[Hector] Second Paw cleave",
				timeRange = true,
				timelineIndex = 161,
				timerEndOffset = 1,
				timerStartOffset = -10,
				uuid = "0d619237-5620-8d1d-9c60-6cbc68e030b3",
				version = 2,
			},
		},
	},
	[165] = 
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
							actionLua = "local caster = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = caster and caster.pos\nlocal ms = (eventArgs.channelTimeMax or 0) * 1000\nif p and ms > 0 then\n    AnyoneCore.addTimedWorldText(ms, \"Enrage - finish Black Cat\", {x=p.x,y=p.y+3,z=p.z}, 0xFFFFFFFF, true, 1.2)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"d585a7b9-d44e-3510-8efd-63b50a979cd2",
									true,
								},
							},
							uuid = "77d43b3c-8d5d-f34f-bb3c-e9c241b1205f",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1226 and (eventArgs.spellID == 39822)",
							dequeueIfLuaFalse = true,
							uuid = "d585a7b9-d44e-3510-8efd-63b50a979cd2",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = true,
				mechanicTime = 713.8,
				name = "[Hector] Mouser enrage",
				timeRange = true,
				timelineIndex = 165,
				timerEndOffset = 1,
				timerStartOffset = -10,
				uuid = "bd35da19-ecc0-2dd7-a817-8a44c92530c8",
				version = 2,
			},
		},
	},
	inheritedProfiles = 
	{
	},
	timelineName = "r1s",
	version = "1.0.3",
}



return tbl
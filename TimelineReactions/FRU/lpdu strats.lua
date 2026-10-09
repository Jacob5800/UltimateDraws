local tbl = 
{
	
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "0c5acf11-036b-0b6d-4ed2-ccb7e16bc6a1",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU_megaminx_indicator",
				uuid = "7681db20-18cf-4a54-efd9-0116278606b0",
			},
			inheritanceRoot = "FRU_megaminx_indicator",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "protean indicator",
				uuid = "b64f1684-8b35-71fa-9f7d-4b7d02dec4de",
				version = 2,
			},
			inheritedObjectUUID = "f45a930e-0988-0934-99bf-6b0ce8133215",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Potion",
				uuid = "750e21a5-4c87-6e78-ae26-90d272574dbb",
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
							aType = "Alert",
							alertDuration = 3000,
							alertPriority = 2,
							alertText = "[LPDU] Use potion",
							name = "[LPDU] Use potion",
							uuid = "e911ddff-8b6e-1085-99e3-58bee12df18d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Potion",
				mechanicTime = 13.7,
				name = "[LPDU] Use potion - P1 opener",
				throttleTime = 3000,
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = -10,
				timerStartOffset = -13,
				uuid = "cfe598ca-2bef-40b3-80d0-8f5b05b94f04",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Draws",
				uuid = "f862c37d-60dd-9da5-969d-8ca0dfa1e465",
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
							actionLua = "local p = TensorCore.mGetPlayer()\nlocal center = {x = 100, y = 0,z = 100}\nlocal green = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0/255, 255/255, 0/255, .25),2)\nlocal index\n--party should be tank1 tank2 healer1 healer2 melee1 melee2 range1 range2\nlocal roster = AnyoneCore and AnyoneCore.Roster\r\nif roster == nil or roster.current() == nil then\r\n    self.used = true\r\n    return\r\nend\r\nlocal mySlot = roster.mySlot()\r\nlocal myRole = (mySlot == \"T1\" and \"MT\") or (mySlot == \"T2\" and \"OT\") or mySlot\r\nif not roster.isReady() then\r\n    self.used = true\r\n    return\r\nend\r\nif p == nil then self.used = true; return end\r\nif myRole == \"MT\" then index = 1\r\nelseif myRole == \"OT\" then index = 2\r\nelseif myRole == \"H1\" then index = 3\r\nelseif myRole == \"H2\" then index = 4\r\nelseif myRole == \"M1\" then index = 5\r\nelseif myRole == \"M2\" then index = 6\r\nelseif myRole == \"R1\" then index = 7\r\nelseif myRole == \"R2\" then index = 8\r\nelse self.used = true; return end\r\nlocal partyIDs = {\r\n    roster.idOf(\"T1\"),\r\n    roster.idOf(\"T2\"),\r\n    roster.idOf(\"H1\"),\r\n    roster.idOf(\"H2\"),\r\n    roster.idOf(\"M1\"),\r\n    roster.idOf(\"M2\"),\r\n    roster.idOf(\"R1\"),\r\n    roster.idOf(\"R2\")\r\n}--1: tank1 = N\n--2: tank2 = E\n--3: healer1 = W\n--4: healer2 = S\n--5: melee1 = SW\n--6: melee2 = SE\n--7: range1 = NW\n--8: range2 = NE\nlocal heading2North = TensorCore.getHeadingToTarget(center,{x = 100, y = 0,z = 70})\nlocal time = eventArgs.channelTimeMax * 1000 + 1000\nif index == 1 then --tank1\n    local heading = heading2North --north\n    local pos1 = TensorCore.getPosInDirection(center,heading,6)\n    local pos2 = TensorCore.getPosInDirection(center,heading + math.pi/8,6)\n    local distance = TensorCore.getDistance2d(pos1,pos2) - 1\n    green:addTimedArrow(time, 100, 0, 100, heading, 6, 1, 1, 1,0,true)\n    green:addTimedArrow(2000, pos1.x, pos1.y, pos1.z, TensorCore.getHeadingToTarget(pos1,pos2), distance, 1, 1, 1,time,true)\n    green:addTimedArrow(2000, pos2.x, pos2.y, pos2.z, TensorCore.getHeadingToTarget(pos2,pos1), distance, 1, 1, 1,time + 2000,true)\n    green:addTimedArrow(2000, pos1.x, pos1.y, pos1.z, TensorCore.getHeadingToTarget(pos1,pos2), distance, 1, 1, 1,time + 4000,true)\nelseif index == 2 then --tank2\n    local heading = heading2North - math.pi/2 --east\n    local pos1 = TensorCore.getPosInDirection(center,heading,6)\n    local pos2 = TensorCore.getPosInDirection(center,heading + math.pi/8,6)\n    local distance = TensorCore.getDistance2d(pos1,pos2) - 1\n    green:addTimedArrow(time, 100, 0, 100, heading, 6, 1, 1, 1,0,true)\n    green:addTimedArrow(2000, pos1.x, pos1.y, pos1.z, TensorCore.getHeadingToTarget(pos1,pos2), distance, 1, 1, 1,time,true)\n    green:addTimedArrow(2000, pos2.x, pos2.y, pos2.z, TensorCore.getHeadingToTarget(pos2,pos1), distance, 1, 1, 1,time + 2000,true)\n    green:addTimedArrow(2000, pos1.x, pos1.y, pos1.z, TensorCore.getHeadingToTarget(pos1,pos2), distance, 1, 1, 1,time + 4000,true)\nelseif index == 3 then --healer1\n    local heading = heading2North + math.pi/2 --west\n    if eventArgs.spellID == 40144 then --stack\n        local pos1 = TensorCore.getPosInDirection(center,heading,6)\n        local pos2 = TensorCore.getPosInDirection(center,heading + math.pi/8,6)\n        local distance = TensorCore.getDistance2d(pos1,pos2) - 1\n        green:addTimedArrow(time, 100, 0, 100, heading, 6, 1, 1, 1,0,true)\n        green:addTimedArrow(2000, pos1.x, pos1.y, pos1.z, TensorCore.getHeadingToTarget(pos1,pos2), distance, 1, 1, 1,time,true)\n        green:addTimedArrow(2000, pos2.x, pos2.y, pos2.z, TensorCore.getHeadingToTarget(pos2,pos1), distance, 1, 1, 1,time + 2000,true)\n        green:addTimedArrow(2000, pos1.x, pos1.y, pos1.z, TensorCore.getHeadingToTarget(pos1,pos2), distance, 1, 1, 1,time + 4000,true)\n    end\n    if eventArgs.spellID == 40148 then --spread\n        local pos1 = TensorCore.getPosInDirection(center,heading,12)\n        local pos2 = TensorCore.getPosInDirection(center,heading + math.pi/8,12)\n        local distance = TensorCore.getDistance2d(pos1,pos2) - 1\n        green:addTimedArrow(time, 100, 0, 100, heading, 6, 1, 1, 1,0,true)\n        green:addTimedArrow(2000, pos1.x, pos1.y, pos1.z, TensorCore.getHeadingToTarget(pos1,pos2), distance, 1, 1, 1,time,true)\n        green:addTimedArrow(2000, pos2.x, pos2.y, pos2.z, TensorCore.getHeadingToTarget(pos2,pos1), distance, 1, 1, 1,time + 2000,true)\n        green:addTimedArrow(2000, pos1.x, pos1.y, pos1.z, TensorCore.getHeadingToTarget(pos1,pos2), distance, 1, 1, 1,time + 4000,true)\n    end\nelseif index == 4 then --healer2\n    local heading = heading2North + math.pi --south\n    if eventArgs.spellID == 40144 then --stack\n        local pos1 = TensorCore.getPosInDirection(center,heading,6)\n        local pos2 = TensorCore.getPosInDirection(center,heading + math.pi/8,6)\n        local distance = TensorCore.getDistance2d(pos1,pos2) - 1\n        green:addTimedArrow(time, 100, 0, 100, heading, 6, 1, 1, 1,0,true)\n        green:addTimedArrow(2000, pos1.x, pos1.y, pos1.z, TensorCore.getHeadingToTarget(pos1,pos2), distance, 1, 1, 1,time,true)\n        green:addTimedArrow(2000, pos2.x, pos2.y, pos2.z, TensorCore.getHeadingToTarget(pos2,pos1), distance, 1, 1, 1,time + 2000,true)\n        green:addTimedArrow(2000, pos1.x, pos1.y, pos1.z, TensorCore.getHeadingToTarget(pos1,pos2), distance, 1, 1, 1,time + 4000,true)\n    end\n    if eventArgs.spellID == 40148 then --spread\n        local pos1 = TensorCore.getPosInDirection(center,heading,12)\n        local pos2 = TensorCore.getPosInDirection(center,heading + math.pi/8,12)\n        local distance = TensorCore.getDistance2d(pos1,pos2) - 1\n        green:addTimedArrow(time, 100, 0, 100, heading, 6, 1, 1, 1,0,true)\n        green:addTimedArrow(2000, pos1.x, pos1.y, pos1.z, TensorCore.getHeadingToTarget(pos1,pos2), distance, 1, 1, 1,time,true)\n        green:addTimedArrow(2000, pos2.x, pos2.y, pos2.z, TensorCore.getHeadingToTarget(pos2,pos1), distance, 1, 1, 1,time + 2000,true)\n        green:addTimedArrow(2000, pos1.x, pos1.y, pos1.z, TensorCore.getHeadingToTarget(pos1,pos2), distance, 1, 1, 1,time + 4000,true)\n    end\nelseif index == 5 then --melee1\n    local heading = heading2North + math.pi/2 + math.pi/4 --southwest\n    local pos1 = TensorCore.getPosInDirection(center,heading,6)\n    local pos2 = TensorCore.getPosInDirection(center,heading - math.pi/8,6)\n    local distance = TensorCore.getDistance2d(pos1,pos2) - 1\n    green:addTimedArrow(time, 100, 0, 100, heading, 6, 1, 1, 1,0,true)\n    green:addTimedArrow(2000, pos1.x, pos1.y, pos1.z, TensorCore.getHeadingToTarget(pos1,pos2), distance, 1, 1, 1,time,true)\n    green:addTimedArrow(2000, pos2.x, pos2.y, pos2.z, TensorCore.getHeadingToTarget(pos2,pos1), distance, 1, 1, 1,time + 2000,true)\n    green:addTimedArrow(2000, pos1.x, pos1.y, pos1.z, TensorCore.getHeadingToTarget(pos1,pos2), distance, 1, 1, 1,time + 4000,true)\nelseif index == 6 then --melee2\n    local heading = heading2North - math.pi/2 - math.pi/4 --southeast\n    local pos1 = TensorCore.getPosInDirection(center,heading,6)\n    local pos2 = TensorCore.getPosInDirection(center,heading - math.pi/8,6)\n    local distance = TensorCore.getDistance2d(pos1,pos2) - 1\n    green:addTimedArrow(time, 100, 0, 100, heading, 6, 1, 1, 1,0,true)\n    green:addTimedArrow(2000, pos1.x, pos1.y, pos1.z, TensorCore.getHeadingToTarget(pos1,pos2), distance, 1, 1, 1,time,true)\n    green:addTimedArrow(2000, pos2.x, pos2.y, pos2.z, TensorCore.getHeadingToTarget(pos2,pos1), distance, 1, 1, 1,time + 2000,true)\n    green:addTimedArrow(2000, pos1.x, pos1.y, pos1.z, TensorCore.getHeadingToTarget(pos1,pos2), distance, 1, 1, 1,time + 4000,true)\nelseif index == 7 then --range1\n    local heading = heading2North + math.pi/4 --northwest\n    if eventArgs.spellID == 40144 then --stack\n        local pos1 = TensorCore.getPosInDirection(center,heading,6)\n        local pos2 = TensorCore.getPosInDirection(center,heading - math.pi/8,6)\n        local distance = TensorCore.getDistance2d(pos1,pos2) - 1\n        green:addTimedArrow(time, 100, 0, 100, heading, 6, 1, 1, 1,0,true)\n        green:addTimedArrow(2000, pos1.x, pos1.y, pos1.z, TensorCore.getHeadingToTarget(pos1,pos2), distance, 1, 1, 1,time,true)\n        green:addTimedArrow(2000, pos2.x, pos2.y, pos2.z, TensorCore.getHeadingToTarget(pos2,pos1), distance, 1, 1, 1,time + 2000,true)\n        green:addTimedArrow(2000, pos1.x, pos1.y, pos1.z, TensorCore.getHeadingToTarget(pos1,pos2), distance, 1, 1, 1,time + 4000,true)\n    end\n    if eventArgs.spellID == 40148 then --spread\n        local pos1 = TensorCore.getPosInDirection(center,heading,12)\n        local pos2 = TensorCore.getPosInDirection(center,heading - math.pi/8,12)\n        local distance = TensorCore.getDistance2d(pos1,pos2) - 1\n        green:addTimedArrow(time, 100, 0, 100, heading, 6, 1, 1, 1,0,true)\n        green:addTimedArrow(2000, pos1.x, pos1.y, pos1.z, TensorCore.getHeadingToTarget(pos1,pos2), distance, 1, 1, 1,time,true)\n        green:addTimedArrow(2000, pos2.x, pos2.y, pos2.z, TensorCore.getHeadingToTarget(pos2,pos1), distance, 1, 1, 1,time + 2000,true)\n        green:addTimedArrow(2000, pos1.x, pos1.y, pos1.z, TensorCore.getHeadingToTarget(pos1,pos2), distance, 1, 1, 1,time + 4000,true)\n    end\nelseif index == 8 then --range2\n    local heading = heading2North - math.pi/4 --northeast\n    if eventArgs.spellID == 40144 then --stack\n        local pos1 = TensorCore.getPosInDirection(center,heading,6)\n        local pos2 = TensorCore.getPosInDirection(center,heading - math.pi/8,6)\n        local distance = TensorCore.getDistance2d(pos1,pos2) - 1\n        green:addTimedArrow(time, 100, 0, 100, heading, 6, 1, 1, 1,0,true)\n        green:addTimedArrow(2000, pos1.x, pos1.y, pos1.z, TensorCore.getHeadingToTarget(pos1,pos2), distance, 1, 1, 1,time,true)\n        green:addTimedArrow(2000, pos2.x, pos2.y, pos2.z, TensorCore.getHeadingToTarget(pos2,pos1), distance, 1, 1, 1,time + 2000,true)\n        green:addTimedArrow(2000, pos1.x, pos1.y, pos1.z, TensorCore.getHeadingToTarget(pos1,pos2), distance, 1, 1, 1,time + 4000,true)\n    end\n    if eventArgs.spellID == 40148 then --spread\n        local pos1 = TensorCore.getPosInDirection(center,heading,12)\n        local pos2 = TensorCore.getPosInDirection(center,heading - math.pi/8,12)\n        local distance = TensorCore.getDistance2d(pos1,pos2) - 1\n        green:addTimedArrow(time, 100, 0, 100, heading, 6, 1, 1, 1,0,true)\n        green:addTimedArrow(2000, pos1.x, pos1.y, pos1.z, TensorCore.getHeadingToTarget(pos1,pos2), distance, 1, 1, 1,time,true)\n        green:addTimedArrow(2000, pos2.x, pos2.y, pos2.z, TensorCore.getHeadingToTarget(pos2,pos1), distance, 1, 1, 1,time + 2000,true)\n        green:addTimedArrow(2000, pos1.x, pos1.y, pos1.z, TensorCore.getHeadingToTarget(pos1,pos2), distance, 1, 1, 1,time + 4000,true)\n    end\nend\nself.used = true",
							conditions = 
							{
								
								{
									"f49ca32f-e7f3-691b-b963-8b5531d28040",
									true,
								},
							},
							uuid = "d104cc8a-79ca-6f61-b2e9-3fab1bd725a8",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							eventArgOptionType = 3,
							eventArgType = 2,
							spellIDList = 
							{
								40144,
								40148,
							},
							uuid = "f49ca32f-e7f3-691b-b963-8b5531d28040",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws",
				eventType = 3,
				mechanicTime = 13.7,
				name = "protean indicator [AnyoneCore]",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 10,
				timerStartOffset = -13,
				uuid = "4316bde5-cc78-3256-b36a-fcd86f475284",
				version = 2,
			},
			inheritedIndex = 30,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU",
				uuid = "acce6c8a-e56f-f3dc-88e5-128065a75dd9",
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
							actionLua = "local moogle = MoogleTelegraphs\nif moogle == nil or moogle.Settings == nil then\n    return\nend\n\nlocal settings = moogle.Settings\nlocal renderOverrides = settings.aoeIDUserSetRender\nif renderOverrides == nil then\n    renderOverrides = {}\n    settings.aoeIDUserSetRender = renderOverrides\nend\n\nlocal function setBurntStrikeDelay(actionID)\n    local override = renderOverrides[actionID]\n    if override == nil then\n        override = {\n            name = \"Burnt Strike\",\n            overlay = false,\n            disableTerrainWarp = false,\n            flat = false,\n            oldDraw = false,\n            disableVFX = false,\n            delay = 2.0,\n            source = \"lpdu strats\"\n        }\n        renderOverrides[actionID] = override\n    else\n        override.delay = 3.2\n        override.source = \"lpdu strats\"\n        if override.name == nil then\n            override.name = \"Burnt Strike\"\n        end\n    end\nend\n\nsetBurntStrikeDelay(40161)\nsetBurntStrikeDelay(40163)\nself.used = true",
							name = "Apply Moogle delay to Burnt Strike",
							uuid = "41d1def2-3612-191c-8cb8-dd9abd99fe70",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU",
				mechanicTime = 13.7,
				name = "[LPDU] Burnt Strike Telegraph Delay",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = -8.6999998092651,
				timerStartOffset = -13.699999809265,
				uuid = "d22fcc60-4bc4-cd6d-90a1-1c12ca678f7b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Mitigation",
				uuid = "24790ed0-e847-40fd-baca-d66120d083e3",
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
							aType = "Alert",
							alertDuration = 3000,
							alertText = "[LPDU] AnyoneCore phys/ranged/melee/caster mitigation overrides active",
							endIfUsed = true,
							name = "[LPDU] mitigation overrides active",
							uuid = "fa258a19-b48f-f082-8406-29e214708ef3",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Mitigation",
				enabled = false,
				mechanicTime = 13.7,
				name = "[LPDU] Disable AnyoneCore DPS mitigation (tanks active)",
				timelineIndex = 1,
				uuid = "4a202c4d-cd1d-d146-9f60-4b86982a5031",
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
							actionID = 7549,
							conditions = 
							{
								
								{
									"79c4f604-476e-02cd-a965-6eeafe5b4ca9",
									true,
								},
								
								{
									"47e6277b-124c-10aa-b9bb-fe3608861fb6",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] M1 Feint Cyclonic Break",
							targetType = "Enemy",
							uuid = "7fb47989-09d1-97c4-adff-fae20a935bdb",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"M1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "M1 roster",
							uuid = "79c4f604-476e-02cd-a965-6eeafe5b4ca9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Cyclonic Break CD",
							uuid = "47e6277b-124c-10aa-b9bb-fe3608861fb6",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 13.7,
				name = "[LPDU] M1 Feint Cyclonic Break",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "aaa80018-fa5a-fa99-8240-6b85a941ca75",
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
							actionID = 7560,
							conditions = 
							{
								
								{
									"0a13dd7c-f389-6ddc-bdad-45fdc96a9e90",
									true,
								},
								
								{
									"133df70c-bb65-f80d-9927-740972831770",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Addle 2 Cyclonic Break",
							targetType = "Enemy",
							uuid = "726cb614-8393-3c35-8578-6509452b354c",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R2 roster",
							uuid = "0a13dd7c-f389-6ddc-bdad-45fdc96a9e90",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Cyclonic Break CD",
							uuid = "133df70c-bb65-f80d-9927-740972831770",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				enabled = false,
				mechanicTime = 13.7,
				name = "[LPDU] R2 Addle 2 Cyclonic Break",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "fb99a3fd-1e94-ecec-af25-248441353ad9",
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
							actionID = 7405,
							conditions = 
							{
								
								{
									"ee22a417-f355-7565-90f5-eb8b36f910a6",
									true,
								},
								
								{
									"75b5ec58-a33c-9926-81f5-377329e1a80e",
									true,
								},
								
								{
									"52cd5f67-4d7e-d319-8a11-74a8d5efdcbd",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Troubadour - Cyclonic Break",
							uuid = "eeffc0e9-c131-5507-aa73-040e18375df4",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							conditions = 
							{
								
								{
									"ee22a417-f355-7565-90f5-eb8b36f910a6",
									true,
								},
								
								{
									"62a7824c-76db-49e1-89ab-8f4efcb1b87d",
									true,
								},
								
								{
									"3e20e363-8176-3871-94d6-a6a653f6846e",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Tactician - Cyclonic Break",
							uuid = "807bf620-be6c-ce30-aea3-814c53d84cf7",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							conditions = 
							{
								
								{
									"ee22a417-f355-7565-90f5-eb8b36f910a6",
									true,
								},
								
								{
									"a917b2d4-54fe-560f-a600-d89a8fd34baf",
									true,
								},
								
								{
									"f1029081-739b-09c7-bd91-58880c927dd5",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Shield Samba - Cyclonic Break",
							uuid = "9a3447d5-61d0-b531-8b3c-adf6a5e5c82c",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R2 roster",
							uuid = "ee22a417-f355-7565-90f5-eb8b36f910a6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Troubadour job",
							uuid = "75b5ec58-a33c-9926-81f5-377329e1a80e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7405,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "52cd5f67-4d7e-d319-8a11-74a8d5efdcbd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Tactician job",
							uuid = "62a7824c-76db-49e1-89ab-8f4efcb1b87d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "3e20e363-8176-3871-94d6-a6a653f6846e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Shield Samba job",
							uuid = "a917b2d4-54fe-560f-a600-d89a8fd34baf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "f1029081-739b-09c7-bd91-58880c927dd5",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 13.7,
				name = "[LPDU] R2 Phys Ranged - Cyclonic Break",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "b95884ae-244a-2c21-b965-9eff603d4cdd",
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
							actionID = 34686,
							conditions = 
							{
								
								{
									"5061447f-692d-0ed3-bfd5-adf29de58993",
									true,
								},
								
								{
									"4ffff430-0238-4f1f-b9c0-3088f978eb42",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Tempera Grassa Cyclonic Break",
							uuid = "34294567-ffef-00d9-9005-953e6e8cc3a6",
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
							jobValue = "PICTOMANCER",
							name = "PICTOMANCER job",
							uuid = "5061447f-692d-0ed3-bfd5-adf29de58993",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 34686,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Cyclonic Break CD",
							uuid = "4ffff430-0238-4f1f-b9c0-3088f978eb42",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 13.7,
				name = "[LPDU] Tempera Grassa Cyclonic Break",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "32857d7d-0c7f-90bc-a680-4d14138ac7f2",
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
							actionID = 25857,
							conditions = 
							{
								
								{
									"1c269be0-a585-afe4-a356-c24ab27b0113",
									true,
								},
								
								{
									"536bb6e6-b203-716d-ac74-ceab08065935",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Magick Barrier Cyclonic Break",
							uuid = "e56d8465-0165-e8bb-a72a-15411cd8d058",
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
							jobValue = "REDMAGE",
							name = "REDMAGE job",
							uuid = "1c269be0-a585-afe4-a356-c24ab27b0113",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25857,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Cyclonic Break CD",
							uuid = "536bb6e6-b203-716d-ac74-ceab08065935",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 13.7,
				name = "[LPDU] Magick Barrier Cyclonic Break",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "7cb5c751-a9ff-883f-a37f-c183048cca73",
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
							actionID = 7408,
							conditions = 
							{
								
								{
									"1c5972e6-f558-4e34-83f9-501b90635e2e",
									true,
								},
								
								{
									"78c4a0a0-d914-202b-a158-934c93e5493d",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Nature's Minne Cyclonic Break",
							uuid = "05633384-f7f0-4da7-b75c-46f80a62c2a9",
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
							name = "BARD job",
							uuid = "1c5972e6-f558-4e34-83f9-501b90635e2e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7408,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Cyclonic Break CD",
							uuid = "78c4a0a0-d914-202b-a158-934c93e5493d",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 13.7,
				name = "[LPDU] Nature's Minne Cyclonic Break",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "8800ee85-ba36-cdf6-9459-1c3604be6ffb",
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
							actionID = 65,
							conditions = 
							{
								
								{
									"28f2a2f3-f3f3-9853-bbab-38f15c422a66",
									true,
								},
								
								{
									"53ee597e-a5ae-9fc9-ad48-5bdc1b11608f",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Mantra Cyclonic Break",
							uuid = "f087e9c3-aca9-cd2b-9cb4-30fd7b10ad4c",
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
							jobValue = "MONK",
							name = "MONK job",
							uuid = "28f2a2f3-f3f3-9853-bbab-38f15c422a66",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 65,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Cyclonic Break CD",
							uuid = "53ee597e-a5ae-9fc9-ad48-5bdc1b11608f",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 13.7,
				name = "[LPDU] Mantra Cyclonic Break",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "772d70bf-6be5-87cb-85fa-a7c413cd73c8",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "AnyoneCore Defaults",
				uuid = "9cc21e4d-1ee6-8ab7-b3ba-c87b3095fc0f",
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
							actionLua = "AnyoneCore.Settings.Reactions.fru.mitigation = false\nself.used = true",
							endIfUsed = true,
							name = "Set FRU mitigation default",
							uuid = "d567af1f-557b-ea24-8812-c22bc528665e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "AnyoneCore Defaults",
				mechanicTime = 13.7,
				name = "Disable AnyoneCore DPS mitigation at start",
				timelineIndex = 1,
				timerOffset = -13.60000038147,
				uuid = "58cad22f-258f-1dab-9003-597df6c827bb",
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
				name = "store\\anyone\\fru\\fru",
				uuid = "3fa81c98-b6de-e4dc-0311-63f6ce4068a8",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Melee] Feint (Primary)",
				uuid = "6aca4984-34d8-dcc6-8838-de1836c70ec9",
				version = 2,
			},
			inheritedObjectUUID = "6f3f9757-975e-8cd9-94e3-f91b2ffbc51e",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[SAM] Tengentsu",
				uuid = "31aa9ebf-c156-2e68-b22f-792731571050",
				version = 2,
			},
			inheritedObjectUUID = "d5218505-5bb7-6dee-8e3d-f9aa142cecf1",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[Caster] Addle (Secondary)",
				uuid = "778d5198-da33-76f1-a460-753db8dac6f0",
				version = 2,
			},
			inheritedObjectUUID = "a2f244a5-fdb0-2175-9988-dc6890b7faa9",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[RPR] Arcane Crest",
				uuid = "8790fdb9-df6f-a84f-af6c-f5954616d50f",
				version = 2,
			},
			inheritedObjectUUID = "b7ea7f1a-fdfe-19df-b965-6a4672012769",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[VPR] Feint (Primary)",
				uuid = "13b599d4-9147-3d51-baf0-061a3d30cb04",
				version = 2,
			},
			inheritedObjectUUID = "7855942e-7bf0-da44-bc35-9dcd8ce0e95a",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[7] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "e55087df-c607-6bb3-532f-6f691a0d336f",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Ranged] rDPS Mit",
				uuid = "43e42795-3d77-db2c-8cfc-2565ae4e2ad9",
				version = 2,
			},
			inheritedObjectUUID = "6631a50f-0762-0ea4-9d43-3513863113e9",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU_megaminx_LPDU",
				uuid = "9fe74006-623a-306a-a5ab-06b56a20e2b5",
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
							actionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif roster == nil or roster.current() == nil or roster.mySlot() ~= \"T2\" then\n    self.used = true\n    return\nend\nlocal player = TensorCore.mGetPlayer()\nif player == nil or player.pos == nil then\n    self.used = true\n    return\nend\nlocal sourcePos = player.pos\nlocal targetPos = { x = 100, y = 0, z = 83 }\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal distance = TensorCore.getDistance2d(sourcePos, targetPos)\nlocal green = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0/255, 255/255, 0/255, .25), 2)\nif distance > 0.5 then\n    green:addTimedArrow(7000, sourcePos.x, sourcePos.y, sourcePos.z, heading, distance, 1, 1, 1, 0, true)\nend\nself.used = true",
							name = "Lua",
							uuid = "8dc9376f-9504-41ab-a480-cb52bd47ffaf",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "FRU_megaminx_LPDU",
				mechanicTime = 24.2,
				name = "Powder Mark Trail OT arrow to A [AnyoneCore]",
				timelineIndex = 7,
				uuid = "7ba02112-cd53-1ad5-988a-f9e158237737",
				version = 2,
			},
		},
	},
	[9] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "168a8f49-c91b-3e15-b424-557fc39b4419",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU_megaminx_indicator",
				uuid = "721845c8-fb9a-e40c-5244-490eba6bfe18",
			},
			inheritanceRoot = "FRU_megaminx_indicator",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "store mech",
				uuid = "3ae3948b-3090-fdc3-a177-df40f8d1afdf",
				version = 2,
			},
			inheritedObjectUUID = "f0c991ef-a66e-d028-8c20-925f77319880",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "clock spot indicator",
				uuid = "7c419567-f4aa-5665-aac8-7f99d66d96ab",
				version = 2,
			},
			inheritedObjectUUID = "f0313e65-1111-44e9-91c8-4d48c76c5e95",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU",
				uuid = "f99a8fbf-71d4-a79d-9183-26d83a659cfb",
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
							actionLua = "data.megaminx_p1utopian_sky = 0\nself.used = true",
							conditions = 
							{
								
								{
									"707b7246-c5e0-811c-a6b5-136fba67517a",
									true,
								},
							},
							uuid = "60c0771e-5ccd-b1be-a983-d04da3916406",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.megaminx_p1utopian_sky = 1\nself.used = true",
							conditions = 
							{
								
								{
									"0ac613ec-7e89-4697-a72f-3aba73739867",
									true,
								},
							},
							uuid = "84ad80a6-9aaa-5a55-96a7-3ca9866d3dfb",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							eventArgType = 2,
							eventSpellID = 40154,
							name = "stack",
							uuid = "707b7246-c5e0-811c-a6b5-136fba67517a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							eventArgType = 2,
							eventSpellID = 40155,
							name = "spread",
							uuid = "0ac613ec-7e89-4697-a72f-3aba73739867",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 3,
				mechanicTime = 34.7,
				name = "store mech [AnyoneCore]",
				timeRange = true,
				timelineIndex = 9,
				timerStartOffset = -10,
				uuid = "b0c76152-9c39-ee47-94fd-404cc81c7256",
				version = 2,
			},
			inheritedIndex = 27,
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
							actionLua = "local green = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0/255, 255/255, 0/255, .25),2)\nlocal index\nlocal p = TensorCore.mGetPlayer()\nlocal center = {x = 100, y = 0,z = 100}\nlocal roster = AnyoneCore and AnyoneCore.Roster\r\nif roster == nil or roster.current() == nil then\r\n    self.used = true\r\n    return\r\nend\r\nlocal mySlot = roster.mySlot()\r\nlocal myRole = (mySlot == \"T1\" and \"MT\") or (mySlot == \"T2\" and \"OT\") or mySlot\r\nif not roster.isReady() then\r\n    self.used = true\r\n    return\r\nend\r\nif p == nil then self.used = true; return end\r\nif myRole == \"MT\" then index = 1\r\nelseif myRole == \"OT\" then index = 2\r\nelseif myRole == \"H1\" then index = 3\r\nelseif myRole == \"H2\" then index = 4\r\nelseif myRole == \"M1\" then index = 5\r\nelseif myRole == \"M2\" then index = 6\r\nelseif myRole == \"R1\" then index = 7\r\nelseif myRole == \"R2\" then index = 8\r\nelse self.used = true; return end\r\nlocal partyIDs = {\r\n    roster.idOf(\"T1\"),\r\n    roster.idOf(\"T2\"),\r\n    roster.idOf(\"H1\"),\r\n    roster.idOf(\"H2\"),\r\n    roster.idOf(\"M1\"),\r\n    roster.idOf(\"M2\"),\r\n    roster.idOf(\"R1\"),\r\n    roster.idOf(\"R2\")\r\n}--1: tank1 = N\n--2: tank2 = E\n--3: healer1 = W\n--4: healer2 = S\n--5: melee1 = SW\n--6: melee2 = SE\n--7: range1 = NW\n--8: range2 = NE\nlocal heading2North = TensorCore.getHeadingToTarget(center,{x = 100, y = 0,z = 70})\nlocal time = 7000\nif index == 1 then --tank1\n    local heading = heading2North --north\n    green:addTimedArrow(time, 100, 0, 100, heading, 17, 1, 1, 1,0,true)\nelseif index == 2 then --tank2\n    local heading = heading2North - math.pi/2 --east\n    green:addTimedArrow(time, 100, 0, 100, heading, 17, 1, 1, 1,0,true)\nelseif index == 3 then --healer1\n    local heading = heading2North + math.pi/2 --west\n    green:addTimedArrow(time, 100, 0, 100, heading, 17, 1, 1, 1,0,true)\nelseif index == 4 then --healer2\n    local heading = heading2North + math.pi --south\n    green:addTimedArrow(time, 100, 0, 100, heading, 17, 1, 1, 1,0,true)\nelseif index == 5 then --melee1\n    local heading = heading2North + math.pi/2 + math.pi/4 --southwest\n    green:addTimedArrow(time, 100, 0, 100, heading, 17, 1, 1, 1,0,true)\nelseif index == 6 then --melee2\n    local heading = heading2North - math.pi/2 - math.pi/4 --southeast\n    green:addTimedArrow(time, 100, 0, 100, heading, 17, 1, 1, 1,0,true)\nelseif index == 7 then --range1\n    local heading = heading2North + math.pi/4 --northwest\n    green:addTimedArrow(time, 100, 0, 100, heading, 17, 1, 1, 1,0,true)\nelseif index == 8 then --range2\n    local heading = heading2North - math.pi/4 --northeast\n    green:addTimedArrow(time, 100, 0, 100, heading, 17, 1, 1, 1,0,true)\nend\nself.used = true",
							uuid = "9f452461-fa77-c275-8fc8-5b018c69b73b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU",
				mechanicTime = 34.7,
				name = "clock spot indicator [AnyoneCore]",
				timelineIndex = 9,
				uuid = "10a008fa-c7d3-95d1-b36b-5178829c0108",
				version = 2,
			},
			inheritedIndex = 28,
		},
	},
	[10] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Mitigation",
				uuid = "725c1c65-68bc-8038-a7ca-6287680f558f",
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
							actionID = 16014,
							conditions = 
							{
								
								{
									"f6610898-f918-d9d4-8228-a0bce5717c90",
									true,
								},
								
								{
									"ed22715d-715a-ee04-93ae-a7951763b52a",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Improvisation Utopian Sky",
							uuid = "e9ee7fcc-e50b-52d8-8c98-6715dee74e51",
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
							jobValue = "DANCER",
							name = "DANCER job",
							uuid = "f6610898-f918-d9d4-8228-a0bce5717c90",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16014,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Utopian Sky CD",
							uuid = "ed22715d-715a-ee04-93ae-a7951763b52a",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 34.9,
				name = "[LPDU] Improvisation Utopian Sky",
				timeRange = true,
				timelineIndex = 10,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "4aad1613-e4f3-9c38-af36-ebd3f7b6e6c6",
				version = 2,
			},
		},
	},
	[11] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "69232694-b0fe-5838-3355-5a766bc383a4",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU_megaminx_indicator",
				uuid = "5b9f5ac1-86ac-ccdd-f280-d96b8d0886d1",
			},
			inheritanceRoot = "FRU_megaminx_indicator",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "safe zone indicator",
				uuid = "08cb72e9-cfa2-56aa-ac24-5cbe9d8955ca",
				version = 2,
			},
			inheritedObjectUUID = "dfbef113-e9dd-8c74-9a61-9dede7a364bd",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU",
				uuid = "c80b3db0-f27a-1f9c-8fbe-0d4d876b0a7f",
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
							actionLua = "local function table_subtract(table1, table2)\n    local result = {}\n    local table2_set = {}\n\n    -- Convert table2 to a set for fast lookups\n    for _, value in ipairs(table2) do\n        table2_set[value] = true\n    end\n\n    -- Add elements from table1 that are not in table2\n    for _, value in ipairs(table1) do\n        if not table2_set[value] then\n            table.insert(result, value)\n        end\n    end\n\n    return result\nend\nlocal green = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0/255, 255/255, 0/255, .25),2)\nlocal p = TensorCore.mGetPlayer()\nlocal center = {x = 100, y = 0,z = 100}\nlocal index\nlocal heading2North = TensorCore.getHeadingToTarget(center,{x = 100, y = 0,z = 70})\n--party should be tank1 tank2 healer1 healer2 melee1 melee2 range1 range2\nlocal roster = AnyoneCore and AnyoneCore.Roster\r\nif roster == nil or roster.current() == nil then\r\n    self.used = true\r\n    return\r\nend\r\nlocal mySlot = roster.mySlot()\r\nlocal myRole = (mySlot == \"T1\" and \"MT\") or (mySlot == \"T2\" and \"OT\") or mySlot\r\nif not roster.isReady() then\r\n    self.used = true\r\n    return\r\nend\r\nif p == nil then self.used = true; return end\r\nif myRole == \"MT\" then index = 1\r\nelseif myRole == \"OT\" then index = 2\r\nelseif myRole == \"H1\" then index = 3\r\nelseif myRole == \"H2\" then index = 4\r\nelseif myRole == \"M1\" then index = 5\r\nelseif myRole == \"M2\" then index = 6\r\nelseif myRole == \"R1\" then index = 7\r\nelseif myRole == \"R2\" then index = 8\r\nelse self.used = true; return end\r\nlocal partyIDs = {\r\n    roster.idOf(\"T1\"),\r\n    roster.idOf(\"T2\"),\r\n    roster.idOf(\"H1\"),\r\n    roster.idOf(\"H2\"),\r\n    roster.idOf(\"M1\"),\r\n    roster.idOf(\"M2\"),\r\n    roster.idOf(\"R1\"),\r\n    roster.idOf(\"R2\")\r\n}if data.megaminx_p1utopian_safe_clones == nil then data.megaminx_p1utopian_safe_clones = {} end\nif data.megaminx_p1utopian_unsafe_clones == nil then data.megaminx_p1utopian_unsafe_clones = {} end\nif eventArgs.newAnimID == 34 then\n    table.insert(data.megaminx_p1utopian_safe_clones,eventArgs.entityID)\nend\nif eventArgs.newAnimID == 210 then\n    table.insert(data.megaminx_p1utopian_unsafe_clones,eventArgs.entityID)\nend\nlocal max_distance = 0\nlocal opposite_positions = nil\nif table.size(data.megaminx_p1utopian_safe_clones) == 8 and table.size(data.megaminx_p1utopian_unsafe_clones) == 3 then\n    local unmarked = table_subtract(data.megaminx_p1utopian_safe_clones,data.megaminx_p1utopian_unsafe_clones)\n    for i = 1, #unmarked do\n        for j = i + 1, #unmarked do\n            local distance = TensorCore.getDistance2d(TensorCore.mGetEntity(unmarked[i]).pos, TensorCore.mGetEntity(unmarked[j]).pos)\n            if distance > max_distance then\n                max_distance = distance\n                opposite_positions = {unmarked[i], unmarked[j]}\n            end\n        end\n    end\nend\nif opposite_positions then\n    \n    local ent1 = TensorCore.mGetEntity(opposite_positions[1])\n    local ent2 = TensorCore.mGetEntity(opposite_positions[2])\n    if (ent1.pos.x < 105 and ent1.pos.x > 95) then --N S\n        if index == 1 then --tank1\n            local heading = heading2North\n            local origin = TensorCore.getPosInDirection(center,heading,19)\n            local pos = TensorCore.getPosInDirection(origin,heading+math.pi,6)\n            local finalHeading = TensorCore.getHeadingToTarget(center,pos)\n            local distance = TensorCore.getDistance2d(center,pos) - 1\n            if data.megaminx_p1utopian_sky == 0 then --stack\n                green:addTimedArrow(10000, 100, 0, 100, heading, 15, 1, 1, 1,0,true)\n            else\n                green:addTimedArrow(10000, 100, 0, 100, finalHeading, distance, 1, 1, 1,0,true)\r\n                local circlePos = pos\r\n                if index == 1 or index == 2 then\r\n                    circlePos = origin\r\n                end\r\n                green:addTimedCircle(10000, circlePos.x, 0, circlePos.z, 1, 0, true)\n            end\n        end\n        if index == 3 then --healer1\n            local heading = heading2North\n            local origin = TensorCore.getPosInDirection(center,heading,19)\n            local pos = TensorCore.getPosInDirection(origin,heading+math.pi,0)\n            local finalHeading = TensorCore.getHeadingToTarget(center,pos)\n            local distance = TensorCore.getDistance2d(center,pos) - 1\n            if data.megaminx_p1utopian_sky == 0 then --stack\n                green:addTimedArrow(10000, 100, 0, 100, heading, 15, 1, 1, 1,0,true)\n            else\n                green:addTimedArrow(10000, 100, 0, 100, finalHeading, distance, 1, 1, 1,0,true)\r\n                local circlePos = pos\r\n                if index == 1 or index == 2 then\r\n                    circlePos = origin\r\n                end\r\n                green:addTimedCircle(10000, circlePos.x, 0, circlePos.z, 1, 0, true)\n            end        end\n        if index == 5 then --melee1\n            local heading = heading2North\n            local origin = TensorCore.getPosInDirection(center,heading,19)\n            local pos = TensorCore.getPosInDirection(origin,heading+math.pi+math.pi/2,6)\n            local finalHeading = TensorCore.getHeadingToTarget(center,pos)\n            local distance = TensorCore.getDistance2d(center,pos) - 1\n            if data.megaminx_p1utopian_sky == 0 then --stack\n                green:addTimedArrow(10000, 100, 0, 100, heading, 15, 1, 1, 1,0,true)\n            else\n                green:addTimedArrow(10000, 100, 0, 100, finalHeading, distance, 1, 1, 1,0,true)\r\n                local circlePos = pos\r\n                if index == 1 or index == 2 then\r\n                    circlePos = origin\r\n                end\r\n                green:addTimedCircle(10000, circlePos.x, 0, circlePos.z, 1, 0, true)\n            end        end\n        if index == 7 then --range1\n            local heading = heading2North\n            local origin = TensorCore.getPosInDirection(center,heading,19)\n            local pos = TensorCore.getPosInDirection(origin,heading+math.pi-math.pi/2,6)\n            local finalHeading = TensorCore.getHeadingToTarget(center,pos)\n            local distance = TensorCore.getDistance2d(center,pos) - 1\n            if data.megaminx_p1utopian_sky == 0 then --stack\n                green:addTimedArrow(10000, 100, 0, 100, heading, 15, 1, 1, 1,0,true)\n            else\n                green:addTimedArrow(10000, 100, 0, 100, finalHeading, distance, 1, 1, 1,0,true)\r\n                local circlePos = pos\r\n                if index == 1 or index == 2 then\r\n                    circlePos = origin\r\n                end\r\n                green:addTimedCircle(10000, circlePos.x, 0, circlePos.z, 1, 0, true)\n            end        end\n        if index == 2 then --tank2\n            local heading = heading2North + math.pi\n            local origin = TensorCore.getPosInDirection(center,heading,19)\n            local pos = TensorCore.getPosInDirection(origin,heading+math.pi,6)\n            local finalHeading = TensorCore.getHeadingToTarget(center,pos)\n            local distance = TensorCore.getDistance2d(center,pos) - 1\n            if data.megaminx_p1utopian_sky == 0 then --stack\n                green:addTimedArrow(10000, 100, 0, 100, heading, 15, 1, 1, 1,0,true)\n            else\n                green:addTimedArrow(10000, 100, 0, 100, finalHeading, distance, 1, 1, 1,0,true)\r\n                local circlePos = pos\r\n                if index == 1 or index == 2 then\r\n                    circlePos = origin\r\n                end\r\n                green:addTimedCircle(10000, circlePos.x, 0, circlePos.z, 1, 0, true)\n            end        end\n        if index == 4 then --healer2\n            local heading = heading2North + math.pi\n            local origin = TensorCore.getPosInDirection(center,heading,19)\n            local pos = TensorCore.getPosInDirection(origin,heading+math.pi,0)\n            local finalHeading = TensorCore.getHeadingToTarget(center,pos)\n            local distance = TensorCore.getDistance2d(center,pos) - 1\n            if data.megaminx_p1utopian_sky == 0 then --stack\n                green:addTimedArrow(10000, 100, 0, 100, heading, 15, 1, 1, 1,0,true)\n            else\n                green:addTimedArrow(10000, 100, 0, 100, finalHeading, distance, 1, 1, 1,0,true)\r\n                local circlePos = pos\r\n                if index == 1 or index == 2 then\r\n                    circlePos = origin\r\n                end\r\n                green:addTimedCircle(10000, circlePos.x, 0, circlePos.z, 1, 0, true)\n            end        end\n        if index == 6 then --melee2\n            local heading = heading2North + math.pi\n            local origin = TensorCore.getPosInDirection(center,heading,19)\n            local pos = TensorCore.getPosInDirection(origin,heading+math.pi+math.pi/2,6)\n            local finalHeading = TensorCore.getHeadingToTarget(center,pos)\n            local distance = TensorCore.getDistance2d(center,pos) - 1\n            if data.megaminx_p1utopian_sky == 0 then --stack\n                green:addTimedArrow(10000, 100, 0, 100, heading, 15, 1, 1, 1,0,true)\n            else\n                green:addTimedArrow(10000, 100, 0, 100, finalHeading, distance, 1, 1, 1,0,true)\r\n                local circlePos = pos\r\n                if index == 1 or index == 2 then\r\n                    circlePos = origin\r\n                end\r\n                green:addTimedCircle(10000, circlePos.x, 0, circlePos.z, 1, 0, true)\n            end        end\n        if index == 8 then --range2\n            local heading = heading2North + math.pi\n            local origin = TensorCore.getPosInDirection(center,heading,19)\n            local pos = TensorCore.getPosInDirection(origin,heading+math.pi-math.pi/2,6)\n            local finalHeading = TensorCore.getHeadingToTarget(center,pos)\n            local distance = TensorCore.getDistance2d(center,pos) - 1\n            if data.megaminx_p1utopian_sky == 0 then --stack\n                green:addTimedArrow(10000, 100, 0, 100, heading, 15, 1, 1, 1,0,true)\n            else\n                green:addTimedArrow(10000, 100, 0, 100, finalHeading, distance, 1, 1, 1,0,true)\r\n                local circlePos = pos\r\n                if index == 1 or index == 2 then\r\n                    circlePos = origin\r\n                end\r\n                green:addTimedCircle(10000, circlePos.x, 0, circlePos.z, 1, 0, true)\n            end        end\n    elseif (ent1.pos.z < 105 and ent1.pos.z > 95) then --E W\n        if index == 1 then --tank1\n            local heading = heading2North + math.pi/2\n            local origin = TensorCore.getPosInDirection(center,heading,19)\n            local pos = TensorCore.getPosInDirection(origin,heading+math.pi,6)\n            local finalHeading = TensorCore.getHeadingToTarget(center,pos)\n            local distance = TensorCore.getDistance2d(center,pos) - 1\n            if data.megaminx_p1utopian_sky == 0 then --stack\n                green:addTimedArrow(10000, 100, 0, 100, heading, 15, 1, 1, 1,0,true)\n            else\n                green:addTimedArrow(10000, 100, 0, 100, finalHeading, distance, 1, 1, 1,0,true)\r\n                local circlePos = pos\r\n                if index == 1 or index == 2 then\r\n                    circlePos = origin\r\n                end\r\n                green:addTimedCircle(10000, circlePos.x, 0, circlePos.z, 1, 0, true)\n            end        end\n        if index == 3 then --healer1\n            local heading = heading2North + math.pi/2\n            local origin = TensorCore.getPosInDirection(center,heading,19)\n            local pos = TensorCore.getPosInDirection(origin,heading+math.pi,0)\n            local finalHeading = TensorCore.getHeadingToTarget(center,pos)\n            local distance = TensorCore.getDistance2d(center,pos) - 1\n            if data.megaminx_p1utopian_sky == 0 then --stack\n                green:addTimedArrow(10000, 100, 0, 100, heading, 15, 1, 1, 1,0,true)\n            else\n                green:addTimedArrow(10000, 100, 0, 100, finalHeading, distance, 1, 1, 1,0,true)\r\n                local circlePos = pos\r\n                if index == 1 or index == 2 then\r\n                    circlePos = origin\r\n                end\r\n                green:addTimedCircle(10000, circlePos.x, 0, circlePos.z, 1, 0, true)\n            end        end\n        if index == 5 then --melee1\n            local heading = heading2North + math.pi/2\n            local origin = TensorCore.getPosInDirection(center,heading,19)\n            local pos = TensorCore.getPosInDirection(origin,heading+math.pi+math.pi/2,6)\n            local finalHeading = TensorCore.getHeadingToTarget(center,pos)\n            local distance = TensorCore.getDistance2d(center,pos) - 1\n            if data.megaminx_p1utopian_sky == 0 then --stack\n                green:addTimedArrow(10000, 100, 0, 100, heading, 15, 1, 1, 1,0,true)\n            else\n                green:addTimedArrow(10000, 100, 0, 100, finalHeading, distance, 1, 1, 1,0,true)\r\n                local circlePos = pos\r\n                if index == 1 or index == 2 then\r\n                    circlePos = origin\r\n                end\r\n                green:addTimedCircle(10000, circlePos.x, 0, circlePos.z, 1, 0, true)\n            end        end\n        if index == 7 then --range1\n            local heading = heading2North + math.pi/2\n            local origin = TensorCore.getPosInDirection(center,heading,19)\n            local pos = TensorCore.getPosInDirection(origin,heading+math.pi-math.pi/2,6)\n            local finalHeading = TensorCore.getHeadingToTarget(center,pos)\n            local distance = TensorCore.getDistance2d(center,pos) - 1\n            if data.megaminx_p1utopian_sky == 0 then --stack\n                green:addTimedArrow(10000, 100, 0, 100, heading, 15, 1, 1, 1,0,true)\n            else\n                green:addTimedArrow(10000, 100, 0, 100, finalHeading, distance, 1, 1, 1,0,true)\r\n                local circlePos = pos\r\n                if index == 1 or index == 2 then\r\n                    circlePos = origin\r\n                end\r\n                green:addTimedCircle(10000, circlePos.x, 0, circlePos.z, 1, 0, true)\n            end        end\n        if index == 2 then --tank2\n            local heading = heading2North - math.pi/2\n            local origin = TensorCore.getPosInDirection(center,heading,19)\n            local pos = TensorCore.getPosInDirection(origin,heading+math.pi,6)\n            local finalHeading = TensorCore.getHeadingToTarget(center,pos)\n            local distance = TensorCore.getDistance2d(center,pos) - 1\n            if data.megaminx_p1utopian_sky == 0 then --stack\n                green:addTimedArrow(10000, 100, 0, 100, heading, 15, 1, 1, 1,0,true)\n            else\n                green:addTimedArrow(10000, 100, 0, 100, finalHeading, distance, 1, 1, 1,0,true)\r\n                local circlePos = pos\r\n                if index == 1 or index == 2 then\r\n                    circlePos = origin\r\n                end\r\n                green:addTimedCircle(10000, circlePos.x, 0, circlePos.z, 1, 0, true)\n            end        end\n        if index == 4 then --healer2\n            local heading = heading2North - math.pi/2\n            local origin = TensorCore.getPosInDirection(center,heading,19)\n            local pos = TensorCore.getPosInDirection(origin,heading+math.pi,0)\n            local finalHeading = TensorCore.getHeadingToTarget(center,pos)\n            local distance = TensorCore.getDistance2d(center,pos) - 1\n            if data.megaminx_p1utopian_sky == 0 then --stack\n                green:addTimedArrow(10000, 100, 0, 100, heading, 15, 1, 1, 1,0,true)\n            else\n                green:addTimedArrow(10000, 100, 0, 100, finalHeading, distance, 1, 1, 1,0,true)\r\n                local circlePos = pos\r\n                if index == 1 or index == 2 then\r\n                    circlePos = origin\r\n                end\r\n                green:addTimedCircle(10000, circlePos.x, 0, circlePos.z, 1, 0, true)\n            end        end\n        if index == 6 then --melee2\n            local heading = heading2North - math.pi/2\n            local origin = TensorCore.getPosInDirection(center,heading,19)\n            local pos = TensorCore.getPosInDirection(origin,heading+math.pi+math.pi/2,6)\n            local finalHeading = TensorCore.getHeadingToTarget(center,pos)\n            local distance = TensorCore.getDistance2d(center,pos) - 1\n            if data.megaminx_p1utopian_sky == 0 then --stack\n                green:addTimedArrow(10000, 100, 0, 100, heading, 15, 1, 1, 1,0,true)\n            else\n                green:addTimedArrow(10000, 100, 0, 100, finalHeading, distance, 1, 1, 1,0,true)\r\n                local circlePos = pos\r\n                if index == 1 or index == 2 then\r\n                    circlePos = origin\r\n                end\r\n                green:addTimedCircle(10000, circlePos.x, 0, circlePos.z, 1, 0, true)\n            end        end\n        if index == 8 then --range2\n            local heading = heading2North - math.pi/2\n            local origin = TensorCore.getPosInDirection(center,heading,19)\n            local pos = TensorCore.getPosInDirection(origin,heading+math.pi-math.pi/2,6)\n            local finalHeading = TensorCore.getHeadingToTarget(center,pos)\n            local distance = TensorCore.getDistance2d(center,pos) - 1\n            if data.megaminx_p1utopian_sky == 0 then --stack\n                green:addTimedArrow(10000, 100, 0, 100, heading, 15, 1, 1, 1,0,true)\n            else\n                green:addTimedArrow(10000, 100, 0, 100, finalHeading, distance, 1, 1, 1,0,true)\r\n                local circlePos = pos\r\n                if index == 1 or index == 2 then\r\n                    circlePos = origin\r\n                end\r\n                green:addTimedCircle(10000, circlePos.x, 0, circlePos.z, 1, 0, true)\n            end        end\n    elseif (ent1.pos.z > 105 and ent1.pos.x > 105 and ent2.pos.x < 95 and ent2.pos.z < 95) or (ent2.pos.z > 105 and ent2.pos.x > 105 and ent1.pos.x < 95 and ent1.pos.z < 95) then --NW SE\n        if index == 1 then --tank1\n            local heading = heading2North + math.pi/4\n            local origin = TensorCore.getPosInDirection(center,heading,19)\n            local pos = TensorCore.getPosInDirection(origin,heading+math.pi,6)\n            local finalHeading = TensorCore.getHeadingToTarget(center,pos)\n            local distance = TensorCore.getDistance2d(center,pos) - 1\n            if data.megaminx_p1utopian_sky == 0 then --stack\n                green:addTimedArrow(10000, 100, 0, 100, heading, 15, 1, 1, 1,0,true)\n            else\n                green:addTimedArrow(10000, 100, 0, 100, finalHeading, distance, 1, 1, 1,0,true)\r\n                local circlePos = pos\r\n                if index == 1 or index == 2 then\r\n                    circlePos = origin\r\n                end\r\n                green:addTimedCircle(10000, circlePos.x, 0, circlePos.z, 1, 0, true)\n            end        end\n        if index == 3 then --healer1\n            local heading = heading2North + math.pi/4\n            local origin = TensorCore.getPosInDirection(center,heading,19)\n            local pos = TensorCore.getPosInDirection(origin,heading+math.pi,0)\n            local finalHeading = TensorCore.getHeadingToTarget(center,pos)\n            local distance = TensorCore.getDistance2d(center,pos) - 1\n            if data.megaminx_p1utopian_sky == 0 then --stack\n                green:addTimedArrow(10000, 100, 0, 100, heading, 15, 1, 1, 1,0,true)\n            else\n                green:addTimedArrow(10000, 100, 0, 100, finalHeading, distance, 1, 1, 1,0,true)\r\n                local circlePos = pos\r\n                if index == 1 or index == 2 then\r\n                    circlePos = origin\r\n                end\r\n                green:addTimedCircle(10000, circlePos.x, 0, circlePos.z, 1, 0, true)\n            end        end\n        if index == 5 then --melee1\n            local heading = heading2North + math.pi/4\n            local origin = TensorCore.getPosInDirection(center,heading,19)\n            local pos = TensorCore.getPosInDirection(origin,heading+math.pi+math.pi/2,6)\n            local finalHeading = TensorCore.getHeadingToTarget(center,pos)\n            local distance = TensorCore.getDistance2d(center,pos) - 1\n            if data.megaminx_p1utopian_sky == 0 then --stack\n                green:addTimedArrow(10000, 100, 0, 100, heading, 15, 1, 1, 1,0,true)\n            else\n                green:addTimedArrow(10000, 100, 0, 100, finalHeading, distance, 1, 1, 1,0,true)\r\n                local circlePos = pos\r\n                if index == 1 or index == 2 then\r\n                    circlePos = origin\r\n                end\r\n                green:addTimedCircle(10000, circlePos.x, 0, circlePos.z, 1, 0, true)\n            end        end\n        if index == 7 then --range1\n            local heading = heading2North + math.pi/4\n            local origin = TensorCore.getPosInDirection(center,heading,19)\n            local pos = TensorCore.getPosInDirection(origin,heading+math.pi-math.pi/2,6)\n            local finalHeading = TensorCore.getHeadingToTarget(center,pos)\n            local distance = TensorCore.getDistance2d(center,pos) - 1\n            if data.megaminx_p1utopian_sky == 0 then --stack\n                green:addTimedArrow(10000, 100, 0, 100, heading, 15, 1, 1, 1,0,true)\n            else\n                green:addTimedArrow(10000, 100, 0, 100, finalHeading, distance, 1, 1, 1,0,true)\r\n                local circlePos = pos\r\n                if index == 1 or index == 2 then\r\n                    circlePos = origin\r\n                end\r\n                green:addTimedCircle(10000, circlePos.x, 0, circlePos.z, 1, 0, true)\n            end        end\n        if index == 2 then --tank2\n            local heading = heading2North - math.pi/2 - math.pi/4\n            local origin = TensorCore.getPosInDirection(center,heading,19)\n            local pos = TensorCore.getPosInDirection(origin,heading+math.pi,6)\n            local finalHeading = TensorCore.getHeadingToTarget(center,pos)\n            local distance = TensorCore.getDistance2d(center,pos) - 1\n            if data.megaminx_p1utopian_sky == 0 then --stack\n                green:addTimedArrow(10000, 100, 0, 100, heading, 15, 1, 1, 1,0,true)\n            else\n                green:addTimedArrow(10000, 100, 0, 100, finalHeading, distance, 1, 1, 1,0,true)\r\n                local circlePos = pos\r\n                if index == 1 or index == 2 then\r\n                    circlePos = origin\r\n                end\r\n                green:addTimedCircle(10000, circlePos.x, 0, circlePos.z, 1, 0, true)\n            end        end\n        if index == 4 then --healer2\n            local heading = heading2North - math.pi/2 - math.pi/4\n            local origin = TensorCore.getPosInDirection(center,heading,19)\n            local pos = TensorCore.getPosInDirection(origin,heading+math.pi,0)\n            local finalHeading = TensorCore.getHeadingToTarget(center,pos)\n            local distance = TensorCore.getDistance2d(center,pos) - 1\n            if data.megaminx_p1utopian_sky == 0 then --stack\n                green:addTimedArrow(10000, 100, 0, 100, heading, 15, 1, 1, 1,0,true)\n            else\n                green:addTimedArrow(10000, 100, 0, 100, finalHeading, distance, 1, 1, 1,0,true)\r\n                local circlePos = pos\r\n                if index == 1 or index == 2 then\r\n                    circlePos = origin\r\n                end\r\n                green:addTimedCircle(10000, circlePos.x, 0, circlePos.z, 1, 0, true)\n            end        end\n        if index == 6 then --melee2\n            local heading = heading2North - math.pi/2 - math.pi/4\n            local origin = TensorCore.getPosInDirection(center,heading,19)\n            local pos = TensorCore.getPosInDirection(origin,heading+math.pi+math.pi/2,6)\n            local finalHeading = TensorCore.getHeadingToTarget(center,pos)\n            local distance = TensorCore.getDistance2d(center,pos) - 1\n            if data.megaminx_p1utopian_sky == 0 then --stack\n                green:addTimedArrow(10000, 100, 0, 100, heading, 15, 1, 1, 1,0,true)\n            else\n                green:addTimedArrow(10000, 100, 0, 100, finalHeading, distance, 1, 1, 1,0,true)\r\n                local circlePos = pos\r\n                if index == 1 or index == 2 then\r\n                    circlePos = origin\r\n                end\r\n                green:addTimedCircle(10000, circlePos.x, 0, circlePos.z, 1, 0, true)\n            end        end\n        if index == 8 then --range2\n            local heading = heading2North - math.pi/2 - math.pi/4\n            local origin = TensorCore.getPosInDirection(center,heading,19)\n            local pos = TensorCore.getPosInDirection(origin,heading+math.pi-math.pi/2,6)\n            local finalHeading = TensorCore.getHeadingToTarget(center,pos)\n            local distance = TensorCore.getDistance2d(center,pos) - 1\n            if data.megaminx_p1utopian_sky == 0 then --stack\n                green:addTimedArrow(10000, 100, 0, 100, heading, 15, 1, 1, 1,0,true)\n            else\n                green:addTimedArrow(10000, 100, 0, 100, finalHeading, distance, 1, 1, 1,0,true)\r\n                local circlePos = pos\r\n                if index == 1 or index == 2 then\r\n                    circlePos = origin\r\n                end\r\n                green:addTimedCircle(10000, circlePos.x, 0, circlePos.z, 1, 0, true)\n            end        end\n    elseif (ent1.pos.z > 105 and ent1.pos.x < 95 and ent2.pos.x > 105 and ent2.pos.z < 95) or (ent2.pos.z > 105 and ent2.pos.x < 95 and ent1.pos.x > 105 and ent1.pos.z < 95) then --NE SW\n        if index == 1 then --tank1\n            local heading = heading2North + math.pi/2 + math.pi/4 \n            local origin = TensorCore.getPosInDirection(center,heading,19)\n            local pos = TensorCore.getPosInDirection(origin,heading+math.pi,6)\n            local finalHeading = TensorCore.getHeadingToTarget(center,pos)\n            local distance = TensorCore.getDistance2d(center,pos) - 1\n            if data.megaminx_p1utopian_sky == 0 then --stack\n                green:addTimedArrow(10000, 100, 0, 100, heading, 15, 1, 1, 1,0,true)\n            else\n                green:addTimedArrow(10000, 100, 0, 100, finalHeading, distance, 1, 1, 1,0,true)\r\n                local circlePos = pos\r\n                if index == 1 or index == 2 then\r\n                    circlePos = origin\r\n                end\r\n                green:addTimedCircle(10000, circlePos.x, 0, circlePos.z, 1, 0, true)\n            end        end\n        if index == 3 then --healer1\n            local heading = heading2North + math.pi/2 + math.pi/4\n            local origin = TensorCore.getPosInDirection(center,heading,19)\n            local pos = TensorCore.getPosInDirection(origin,heading+math.pi,0)\n            local finalHeading = TensorCore.getHeadingToTarget(center,pos)\n            local distance = TensorCore.getDistance2d(center,pos) - 1\n            if data.megaminx_p1utopian_sky == 0 then --stack\n                green:addTimedArrow(10000, 100, 0, 100, heading, 15, 1, 1, 1,0,true)\n            else\n                green:addTimedArrow(10000, 100, 0, 100, finalHeading, distance, 1, 1, 1,0,true)\r\n                local circlePos = pos\r\n                if index == 1 or index == 2 then\r\n                    circlePos = origin\r\n                end\r\n                green:addTimedCircle(10000, circlePos.x, 0, circlePos.z, 1, 0, true)\n            end        end\n        if index == 5 then --melee1\n            local heading = heading2North + math.pi/2 + math.pi/4\n            local origin = TensorCore.getPosInDirection(center,heading,19)\n            local pos = TensorCore.getPosInDirection(origin,heading+math.pi+math.pi/2,6)\n            local finalHeading = TensorCore.getHeadingToTarget(center,pos)\n            local distance = TensorCore.getDistance2d(center,pos) - 1\n            if data.megaminx_p1utopian_sky == 0 then --stack\n                green:addTimedArrow(10000, 100, 0, 100, heading, 15, 1, 1, 1,0,true)\n            else\n                green:addTimedArrow(10000, 100, 0, 100, finalHeading, distance, 1, 1, 1,0,true)\r\n                local circlePos = pos\r\n                if index == 1 or index == 2 then\r\n                    circlePos = origin\r\n                end\r\n                green:addTimedCircle(10000, circlePos.x, 0, circlePos.z, 1, 0, true)\n            end        end\n        if index == 7 then --range1\n            local heading = heading2North + math.pi/2 + math.pi/4\n            local origin = TensorCore.getPosInDirection(center,heading,19)\n            local pos = TensorCore.getPosInDirection(origin,heading+math.pi-math.pi/2,6)\n            local finalHeading = TensorCore.getHeadingToTarget(center,pos)\n            local distance = TensorCore.getDistance2d(center,pos) - 1\n            if data.megaminx_p1utopian_sky == 0 then --stack\n                green:addTimedArrow(10000, 100, 0, 100, heading, 15, 1, 1, 1,0,true)\n            else\n                green:addTimedArrow(10000, 100, 0, 100, finalHeading, distance, 1, 1, 1,0,true)\r\n                local circlePos = pos\r\n                if index == 1 or index == 2 then\r\n                    circlePos = origin\r\n                end\r\n                green:addTimedCircle(10000, circlePos.x, 0, circlePos.z, 1, 0, true)\n            end        end\n        if index == 2 then --tank2\n            local heading = heading2North - math.pi/4\n            local origin = TensorCore.getPosInDirection(center,heading,19)\n            local pos = TensorCore.getPosInDirection(origin,heading+math.pi,6)\n            local finalHeading = TensorCore.getHeadingToTarget(center,pos)\n            local distance = TensorCore.getDistance2d(center,pos) - 1\n            if data.megaminx_p1utopian_sky == 0 then --stack\n                green:addTimedArrow(10000, 100, 0, 100, heading, 15, 1, 1, 1,0,true)\n            else\n                green:addTimedArrow(10000, 100, 0, 100, finalHeading, distance, 1, 1, 1,0,true)\r\n                local circlePos = pos\r\n                if index == 1 or index == 2 then\r\n                    circlePos = origin\r\n                end\r\n                green:addTimedCircle(10000, circlePos.x, 0, circlePos.z, 1, 0, true)\n            end        end\n        if index == 4 then --healer2\n            local heading = heading2North - math.pi/4\n            local origin = TensorCore.getPosInDirection(center,heading,19)\n            local pos = TensorCore.getPosInDirection(origin,heading+math.pi,0)\n            local finalHeading = TensorCore.getHeadingToTarget(center,pos)\n            local distance = TensorCore.getDistance2d(center,pos) - 1\n            if data.megaminx_p1utopian_sky == 0 then --stack\n                green:addTimedArrow(10000, 100, 0, 100, heading, 15, 1, 1, 1,0,true)\n            else\n                green:addTimedArrow(10000, 100, 0, 100, finalHeading, distance, 1, 1, 1,0,true)\r\n                local circlePos = pos\r\n                if index == 1 or index == 2 then\r\n                    circlePos = origin\r\n                end\r\n                green:addTimedCircle(10000, circlePos.x, 0, circlePos.z, 1, 0, true)\n            end        end\n        if index == 6 then --melee2\n            local heading = heading2North - math.pi/4\n            local origin = TensorCore.getPosInDirection(center,heading,19)\n            local pos = TensorCore.getPosInDirection(origin,heading+math.pi+math.pi/2,6)\n            local finalHeading = TensorCore.getHeadingToTarget(center,pos)\n            local distance = TensorCore.getDistance2d(center,pos) - 1\n            if data.megaminx_p1utopian_sky == 0 then --stack\n                green:addTimedArrow(10000, 100, 0, 100, heading, 15, 1, 1, 1,0,true)\n            else\n                green:addTimedArrow(10000, 100, 0, 100, finalHeading, distance, 1, 1, 1,0,true)\r\n                local circlePos = pos\r\n                if index == 1 or index == 2 then\r\n                    circlePos = origin\r\n                end\r\n                green:addTimedCircle(10000, circlePos.x, 0, circlePos.z, 1, 0, true)\n            end        end\n        if index == 8 then --range2\n            local heading = heading2North - math.pi/4\n            local origin = TensorCore.getPosInDirection(center,heading,19)\n            local pos = TensorCore.getPosInDirection(origin,heading+math.pi-math.pi/2,6)\n            local finalHeading = TensorCore.getHeadingToTarget(center,pos)\n            local distance = TensorCore.getDistance2d(center,pos) - 1\n            if data.megaminx_p1utopian_sky == 0 then --stack\n                green:addTimedArrow(10000, 100, 0, 100, heading, 15, 1, 1, 1,0,true)\n            else\n                green:addTimedArrow(10000, 100, 0, 100, finalHeading, distance, 1, 1, 1,0,true)\r\n                local circlePos = pos\r\n                if index == 1 or index == 2 then\r\n                    circlePos = origin\r\n                end\r\n                green:addTimedCircle(10000, circlePos.x, 0, circlePos.z, 1, 0, true)\n            end        \n        end\n    end\nend\nself.used = true",
							conditions = 
							{
								
								{
									"06d9b2fe-3e13-75f2-9009-29f31febbf53",
									true,
								},
							},
							uuid = "58dc7c33-ca34-ed2f-b142-836941d66112",
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
							conditionLua = "return (eventArgs.newAnimID == 34 and eventArgs.oldAnimID == 7747) or (eventArgs.newAnimID == 210 and eventArgs.oldAnimID == 34)",
							uuid = "06d9b2fe-3e13-75f2-9009-29f31febbf53",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 23,
				loop = true,
				mechanicTime = 40.3,
				name = "safe zone indicator [AnyoneCore]",
				timeRange = true,
				timelineIndex = 11,
				timerEndOffset = 5,
				timerStartOffset = -5,
				uuid = "34831afe-ca25-1810-8b7e-cb329920c8ae",
				version = 2,
			},
			inheritedIndex = 25,
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
							actionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif roster == nil or roster.current() == nil or roster.mySlot() ~= \"T2\" then\n    self.used = true\n    return\nend\nlocal player = TensorCore.mGetPlayer()\nif player == nil or player.pos == nil then\n    self.used = true\n    return\nend\nlocal sourcePos = player.pos\nlocal targetPos = { x = 112.41, y = 0, z = 86.11 }\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal distance = TensorCore.getDistance2d(sourcePos, targetPos)\nlocal otBlue = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(40/255, 100/255, 220/255, .25), 2)\nif distance > 0.5 then\n    otBlue:addTimedArrow(5000, sourcePos.x, sourcePos.y, sourcePos.z, heading, distance, 1, 1, 1, 0, true)\nend\nAnyoneCore.addTimedWorldText(5000, \"OT Buster\", targetPos, GUI:ColorConvertFloat4ToU32(1, 1, 1, 1), true, 1.5, 0)\nself.used = true",
							name = "OT arrow to A",
							uuid = "604d1e93-fa64-2d84-9bb6-f8a4de0eb3bc",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU",
				mechanicTime = 40.3,
				name = "[LPDU] OT Buster to A indicator",
				timelineIndex = 11,
				timerOffset = -5.5,
				uuid = "3f066183-f48a-8699-8bac-1ddcdbf3c7e2",
				version = 2,
			},
		},
	},
	[12] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "5aac952b-1aaa-467f-8373-65e9795d533b",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[NIN] Shade Shift",
				uuid = "153c45a0-7815-2f52-aecc-1321f1ea7052",
				version = 2,
			},
			inheritedObjectUUID = "3a878589-ae15-ff93-aa79-6f1ed1380620",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[SAM] Tengentsu",
				uuid = "007b06c3-014b-3938-9041-6c8f4bd4ca04",
				version = 2,
			},
			inheritedObjectUUID = "a5c0e594-9790-f418-9807-a3cf9c146b66",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[RPR] Arcane Crest",
				uuid = "ea347e36-1854-08f8-82c4-23b077c58209",
				version = 2,
			},
			inheritedObjectUUID = "6b9b3e6f-ce00-a8cb-ab77-298a1a4866a7",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[13] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "a2268e7e-931b-68e2-085e-262cc292dece",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU_megaminx_indicator",
				uuid = "d030d823-5e76-d3ff-14a2-ab696898c533",
			},
			inheritanceRoot = "FRU_megaminx_indicator",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "get safe element",
				uuid = "66a1e688-3369-3527-8773-9314f46fc5c3",
				version = 2,
			},
			inheritedObjectUUID = "843629ab-9159-a266-bd7d-1c0a462f6728",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU",
				uuid = "98e13fe5-8e56-ecb7-bbb0-c68d6ef79cb2",
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
							actionLua = "if data.megaminx_p1stackflex == nil then data.megaminx_p1stackflex = 1 end\nself.used = true",
							conditions = 
							{
								
								{
									"a61a5256-0141-a1e7-94e6-a7a1a6072918",
									true,
								},
							},
							uuid = "e2100bff-cd85-c2cc-b653-ffba8a653e41",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "if data.megaminx_p1stackflex == nil then data.megaminx_p1stackflex = 0 end\nself.used = true",
							conditions = 
							{
								
								{
									"bbf4e852-5913-b3d3-a421-7b395c76a85c",
									true,
								},
							},
							uuid = "aaedc5c9-4084-f90d-8d90-bedcebafcadb",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							eventArgType = 2,
							eventSpellID = 40150,
							name = "lightning safe",
							uuid = "a61a5256-0141-a1e7-94e6-a7a1a6072918",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							eventArgType = 2,
							eventSpellID = 40151,
							name = "fire safe",
							uuid = "bbf4e852-5913-b3d3-a421-7b395c76a85c",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 3,
				mechanicTime = 56.2,
				name = "get safe element [AnyoneCore]",
				timeRange = true,
				timelineIndex = 13,
				timerEndOffset = 5,
				timerStartOffset = -5,
				uuid = "adcd6115-2cc5-5a42-88a7-bf33d0858806",
				version = 2,
			},
			inheritedIndex = 10,
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
							actionLua = "local function stop()\n    self.used = true\nend\n\nlocal roster = AnyoneCore and AnyoneCore.Roster\nif roster == nil or roster.current == nil or roster.current() == nil\n    or roster.mySlot == nil or roster.isReady == nil or not roster.isReady() then\n    stop()\n    return\nend\n\nlocal mySlot = roster.mySlot()\nlocal isNorth = mySlot == \"T1\" or mySlot == \"H1\" or mySlot == \"M1\" or mySlot == \"R1\"\nlocal isSouth = mySlot == \"T2\" or mySlot == \"H2\" or mySlot == \"M2\" or mySlot == \"R2\"\nif not isNorth and not isSouth then\n    stop()\n    return\nend\n\nlocal player = TensorCore.mGetPlayer()\nif player == nil or player.pos == nil then\n    stop()\n    return\nend\n\nlocal safePos = { x = 100, y = 0, z = isNorth and 86 or 114 }\nlocal playerPos = { x = player.pos.x, y = player.pos.y or 0, z = player.pos.z }\nlocal distance = TensorCore.getDistance2d(playerPos, safePos)\nif distance <= 0 then\n    stop()\n    return\nend\n\nlocal drawDelay = 2600\nlocal timeout = math.max(1000, (tonumber(eventArgs.channelTimeMax) or 7.7) * 1000 + 220 - drawDelay)\nlocal heading = TensorCore.getHeadingToTarget(playerPos, safePos)\nlocal cyan = GUI:ColorConvertFloat4ToU32(0/255, 225/255, 255/255, .72)\nlocal white = GUI:ColorConvertFloat4ToU32(255/255, 255/255, 255/255, .95)\nlocal drawer = TensorCore.getCachedDrawer(cyan, cyan, cyan, white, 2.5)\ndrawer:addTimedArrow(timeout, playerPos.x, playerPos.y, playerPos.z, heading, distance, 0.5, 0.8, 0.8, drawDelay, true)\n\nstop()",
							conditions = 
							{
								
								{
									"c408956c-49fa-a733-a00b-0646dee892ad",
									true,
								},
							},
							name = "Move to light party safe side [AnyoneCore]",
							uuid = "f6f94979-8c79-0b43-b1ab-5c0da8fc64c2",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 40163,
							name = "West Burnt Strike",
							uuid = "c408956c-49fa-a733-a00b-0646dee892ad",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 3,
				mechanicTime = 56.2,
				name = "Burnt Strike LP safe arrows [AnyoneCore]",
				timeRange = true,
				timelineIndex = 13,
				timerEndOffset = 10,
				timerStartOffset = -2,
				uuid = "ff6878d6-9fbe-f887-96ff-e786d74c97ec",
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
							actionLua = "if data.megaminx_p1stackflex == nil then data.megaminx_p1stackflex = 1 end\nself.used = true",
							conditions = 
							{
								
								{
									"aed91cef-5884-7308-bc52-84f06bdc70da",
									true,
								},
							},
							uuid = "1c2ef3aa-ab48-6287-a6ac-61e8360eb9d6",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "if data.megaminx_p1stackflex == nil then data.megaminx_p1stackflex = 0 end\nself.used = true",
							conditions = 
							{
								
								{
									"7906cd03-812d-2f65-8595-a836fe5ea459",
									true,
								},
							},
							uuid = "2ddc3f6b-845d-1175-b424-1b8472f38a66",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							eventArgType = 2,
							eventSpellID = 40150,
							name = "lightning safe",
							uuid = "aed91cef-5884-7308-bc52-84f06bdc70da",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							eventArgType = 2,
							eventSpellID = 40151,
							name = "fire safe",
							uuid = "7906cd03-812d-2f65-8595-a836fe5ea459",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 3,
				mechanicTime = 56.2,
				name = "FRU Burnt Strike protean dodge [LPDU]",
				timeRange = true,
				timelineIndex = 13,
				timerEndOffset = 5,
				timerStartOffset = -5,
				uuid = "bc46cac8-745f-1f5b-9bc1-44a7062d6773",
				version = 2,
			},
		},
	},
	[15] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU_megaminx_indicator",
				uuid = "bf751a5d-22d7-0d41-ae36-86a7f5f31ead",
			},
			inheritanceRoot = "FRU_megaminx_indicator",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "protean indicator",
				uuid = "d09e05d1-9285-4fbc-96ae-10cc4b701cfb",
				version = 2,
			},
			inheritedObjectUUID = "402398f1-1ba5-5582-b5aa-f373d78517f4",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU",
				uuid = "25851da4-72fb-edec-931d-f22b3bcd4056",
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
							actionLua = "local p = TensorCore.mGetPlayer()\nlocal center = {x = 100, y = 0,z = 100}\nlocal teal = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0/255, 190/255, 220/255, .25),2)\nlocal index\n--party should be tank1 tank2 healer1 healer2 melee1 melee2 range1 range2\nlocal roster = AnyoneCore and AnyoneCore.Roster\nif roster == nil or roster.current() == nil then\n    self.used = true\n    return\nend\nlocal mySlot = roster.mySlot()\nlocal myRole = (mySlot == \"T1\" and \"MT\") or (mySlot == \"T2\" and \"OT\") or mySlot\nif not roster.isReady() then\n    self.used = true\n    return\nend\nif p == nil then self.used = true; return end\nif myRole == \"MT\" then index = 1\nelseif myRole == \"OT\" then index = 2\nelseif myRole == \"H1\" then index = 3\nelseif myRole == \"H2\" then index = 4\nelseif myRole == \"M1\" then index = 5\nelseif myRole == \"M2\" then index = 6\nelseif myRole == \"R1\" then index = 7\nelseif myRole == \"R2\" then index = 8\nelse self.used = true; return end\nlocal partyIDs = {\n    roster.idOf(\"T1\"),\n    roster.idOf(\"T2\"),\n    roster.idOf(\"H1\"),\n    roster.idOf(\"H2\"),\n    roster.idOf(\"M1\"),\n    roster.idOf(\"M2\"),\n    roster.idOf(\"R1\"),\n    roster.idOf(\"R2\")\n}--1: tank1 = N\n--2: tank2 = E\n--3: healer1 = W\n--4: healer2 = S\n--5: melee1 = SW\n--6: melee2 = SE\n--7: range1 = NW\n--8: range2 = NE\nlocal heading2North = TensorCore.getHeadingToTarget(center,{x = 100, y = 0,z = 70})\nlocal time = eventArgs.channelTimeMax * 1000 + 1000\nif index == 1 then --tank1\n    local heading = heading2North --north\n    local pos1 = TensorCore.getPosInDirection(center,heading,6)\n    local pos2 = TensorCore.getPosInDirection(center,heading + math.pi/8,6)\n    local distance = TensorCore.getDistance2d(pos1,pos2) - 1\n    teal:addTimedArrow(time, 100, 0, 100, heading, 6, 1, 1, 1,0,true)\nelseif index == 2 then --tank2\n    local heading = heading2North - math.pi/2 --east\n    local pos1 = TensorCore.getPosInDirection(center,heading,6)\n    local pos2 = TensorCore.getPosInDirection(center,heading + math.pi/8,6)\n    local distance = TensorCore.getDistance2d(pos1,pos2) - 1\n    teal:addTimedArrow(time, 100, 0, 100, heading, 6, 1, 1, 1,0,true)\nelseif index == 3 then --healer1\n    local heading = heading2North + math.pi/2 --west\n    if eventArgs.spellID == 40329 then --stack\n        local pos1 = TensorCore.getPosInDirection(center,heading,6)\n        local pos2 = TensorCore.getPosInDirection(center,heading + math.pi/8,6)\n        local distance = TensorCore.getDistance2d(pos1,pos2) - 1\n        teal:addTimedArrow(time, 100, 0, 100, heading, 6, 1, 1, 1,0,true)\n    end\n    if eventArgs.spellID == 40330 then --spread\n        local pos1 = TensorCore.getPosInDirection(center,heading,12)\n        local pos2 = TensorCore.getPosInDirection(center,heading + math.pi/8,12)\n        local distance = TensorCore.getDistance2d(pos1,pos2) - 1\n        teal:addTimedArrow(time, 100, 0, 100, heading, 6, 1, 1, 1,0,true)\n    end\nelseif index == 4 then --healer2\n    local heading = heading2North + math.pi --south\n    if eventArgs.spellID == 40329 then --stack\n        local pos1 = TensorCore.getPosInDirection(center,heading,6)\n        local pos2 = TensorCore.getPosInDirection(center,heading + math.pi/8,6)\n        local distance = TensorCore.getDistance2d(pos1,pos2) - 1\n        teal:addTimedArrow(time, 100, 0, 100, heading, 6, 1, 1, 1,0,true)\n    end\n    if eventArgs.spellID == 40330 then --spread\n        local pos1 = TensorCore.getPosInDirection(center,heading,12)\n        local pos2 = TensorCore.getPosInDirection(center,heading + math.pi/8,12)\n        local distance = TensorCore.getDistance2d(pos1,pos2) - 1\n        teal:addTimedArrow(time, 100, 0, 100, heading, 6, 1, 1, 1,0,true)\n    end\nelseif index == 5 then --melee1\n    local heading = heading2North + math.pi/2 + math.pi/4 --southwest\n    local pos1 = TensorCore.getPosInDirection(center,heading,6)\n    local pos2 = TensorCore.getPosInDirection(center,heading - math.pi/8,6)\n    local distance = TensorCore.getDistance2d(pos1,pos2) - 1\n    teal:addTimedArrow(time, 100, 0, 100, heading, 6, 1, 1, 1,0,true)\nelseif index == 6 then --melee2\n    local heading = heading2North - math.pi/2 - math.pi/4 --southeast\n    local pos1 = TensorCore.getPosInDirection(center,heading,6)\n    local pos2 = TensorCore.getPosInDirection(center,heading - math.pi/8,6)\n    local distance = TensorCore.getDistance2d(pos1,pos2) - 1\n    teal:addTimedArrow(time, 100, 0, 100, heading, 6, 1, 1, 1,0,true)\nelseif index == 7 then --range1\n    local heading = heading2North + math.pi/4 --northwest\n    if eventArgs.spellID == 40329 then --stack\n        local pos1 = TensorCore.getPosInDirection(center,heading,6)\n        local pos2 = TensorCore.getPosInDirection(center,heading - math.pi/8,6)\n        local distance = TensorCore.getDistance2d(pos1,pos2) - 1\n        teal:addTimedArrow(time, 100, 0, 100, heading, 6, 1, 1, 1,0,true)\n    end\n    if eventArgs.spellID == 40330 then --spread\n        local pos1 = TensorCore.getPosInDirection(center,heading,12)\n        local pos2 = TensorCore.getPosInDirection(center,heading - math.pi/8,12)\n        local distance = TensorCore.getDistance2d(pos1,pos2) - 1\n        teal:addTimedArrow(time, 100, 0, 100, heading, 6, 1, 1, 1,0,true)\n    end\nelseif index == 8 then --range2\n    local heading = heading2North - math.pi/4 --northeast\n    if eventArgs.spellID == 40329 then --stack\n        local pos1 = TensorCore.getPosInDirection(center,heading,6)\n        local pos2 = TensorCore.getPosInDirection(center,heading - math.pi/8,6)\n        local distance = TensorCore.getDistance2d(pos1,pos2) - 1\n        teal:addTimedArrow(time, 100, 0, 100, heading, 6, 1, 1, 1,0,true)\n    end\n    if eventArgs.spellID == 40330 then --spread\n        local pos1 = TensorCore.getPosInDirection(center,heading,12)\n        local pos2 = TensorCore.getPosInDirection(center,heading - math.pi/8,12)\n        local distance = TensorCore.getDistance2d(pos1,pos2) - 1\n        teal:addTimedArrow(time, 100, 0, 100, heading, 6, 1, 1, 1,0,true)\n    end\nend\n-- This occurrence only: identify the local player's LPDU partner for Sinsmite.\n-- Sinsmoke/spread (40330) deliberately has no partner marker.\nif eventArgs.spellID == 40329 then\n    local partners = {\n        T1 = {\"R1\", 1, 0, 0}, R1 = {\"T1\", 1, 0, 0},\n        H1 = {\"M1\", .65, 0, 1}, M1 = {\"H1\", .65, 0, 1},\n        T2 = {\"R2\", 1, 1, 0}, R2 = {\"T2\", 1, 1, 0},\n        H2 = {\"M2\", 0, .4, 1}, M2 = {\"H2\", 0, .4, 1}\n    }\n    local pair = partners[mySlot]\n    local partnerID = pair and roster.idOf(pair[1])\n    if partnerID ~= nil and partnerID ~= 0 then\n        local marker = TensorCore.getStaticDrawer(\n            GUI:ColorConvertFloat4ToU32(pair[2], pair[3], pair[4], .45), 2)\n        marker:addTimedCircleOnEnt(time + 1000, partnerID, 1, 0, true, true)\n    end\nend\nself.used = true",
							conditions = 
							{
								
								{
									"2585fa29-d44a-a8b0-bc20-98db0d477529",
									true,
								},
							},
							name = "Opening role-position arrows",
							uuid = "edcc6235-fe6e-d7c8-96f9-1e85233a9b8b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							eventArgOptionType = 3,
							eventArgType = 2,
							spellIDList = 
							{
								40330,
								40329,
							},
							uuid = "2585fa29-d44a-a8b0-bc20-98db0d477529",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 3,
				mechanicTime = 58.2,
				name = "Protean stack/spread positions [AnyoneCore]",
				timeRange = true,
				timelineIndex = 15,
				timerEndOffset = 10,
				timerStartOffset = -13,
				uuid = "9191b095-a2f2-5f05-9d3e-6b7b2f287882",
				version = 2,
			},
			inheritedIndex = 4,
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
							actionLua = "local function stop()\n    self.used = true\nend\n\nlocal roster = AnyoneCore and AnyoneCore.Roster\nif roster == nil or roster.current == nil or roster.mySlot == nil\n    or roster.isReady == nil or roster.current() == nil or not roster.isReady() then\n    stop()\n    return\nend\n\nlocal mySlot = roster.mySlot()\nlocal center = { x = 100, y = 0, z = 100 }\nlocal north = TensorCore.getHeadingToTarget(center, { x = 100, y = 0, z = 70 })\nlocal initialHeadings = {\n    T1 = north,\n    T2 = north - math.pi / 2,\n    H1 = north + math.pi / 2,\n    H2 = north + math.pi,\n    M1 = north + 3 * math.pi / 4,\n    M2 = north - 3 * math.pi / 4,\n    R1 = north + math.pi / 4,\n    R2 = north - math.pi / 4\n}\nlocal initialHeading = initialHeadings[mySlot]\nif initialHeading == nil then\n    stop()\n    return\nend\n\n-- Match the 13.7 Protean lateral pattern: supports rotate one way, DPS the other.\nlocal isDPS = mySlot == \"M1\" or mySlot == \"M2\" or mySlot == \"R1\" or mySlot == \"R2\"\nlocal sideOffset = isDPS and -math.pi / 8 or math.pi / 8\nlocal pos1 = TensorCore.getPosInDirection(center, initialHeading, 6)\nlocal pos2 = TensorCore.getPosInDirection(center, initialHeading + sideOffset, 6)\nlocal distance = TensorCore.getDistance2d(pos1, pos2) - 1\nlocal green = TensorCore.getStaticDrawer(\n    GUI:ColorConvertFloat4ToU32(0 / 255, 255 / 255, 0 / 255, .25),\n    2\n)\nlocal delay = (tonumber(eventArgs.channelTimeMax) or 6.7) * 1000 + 1000\n\n-- Short alternating arrows show the left/right Protean movement without a center-to-player arrow.\ngreen:addTimedArrow(2000, pos1.x, pos1.y, pos1.z, TensorCore.getHeadingToTarget(pos1, pos2), distance, 1, 1, 1, delay, true)\ngreen:addTimedArrow(2000, pos2.x, pos2.y, pos2.z, TensorCore.getHeadingToTarget(pos2, pos1), distance, 1, 1, 1, delay + 2000, true)\ngreen:addTimedArrow(2000, pos1.x, pos1.y, pos1.z, TensorCore.getHeadingToTarget(pos1, pos2), distance, 1, 1, 1, delay + 4000, true)\n\nstop()",
							conditions = 
							{
								
								{
									"f525e92f-81d4-57bc-a5b5-b51fdf712f0e",
									true,
								},
							},
							name = "Draw delayed small green role arrows",
							uuid = "9e4aa6db-0e11-6a86-b5e3-9fbf06576b9e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							eventArgOptionType = 3,
							eventArgType = 2,
							name = "Cyclonic Break channel",
							spellIDList = 
							{
								40330,
								40329,
							},
							uuid = "f525e92f-81d4-57bc-a5b5-b51fdf712f0e",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 3,
				mechanicTime = 58.2,
				name = "Protean follow-up position arrows [AnyoneCore]",
				timeRange = true,
				timelineIndex = 15,
				timerEndOffset = 10,
				timerStartOffset = -13,
				uuid = "ded5f885-7894-0381-918b-c85251d85fa1",
				version = 2,
			},
		},
	},
	[16] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "c23f77ff-b317-63ab-0b60-c4bdba5aa54f",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[17] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "3ab09a62-fa91-5cfe-d9b1-74f0f37d8bf2",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Draw] Safe Side",
				uuid = "22d420f0-1120-c94b-a71e-b3760e0d50d0",
				version = 2,
			},
			inheritedObjectUUID = "d997328e-b65f-a5cc-9621-14938c54f3a5",
			inheritedOverwrites = 
			{
				displayPath = "store\\anyone\\fru\\fru/anyone\\fru\\modules\\draws",
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU_megaminx_indicator",
				uuid = "973f217f-9768-8aa3-ee00-2f65167dec4f",
			},
			inheritanceRoot = "FRU_megaminx_indicator",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "get safe side",
				uuid = "df39ded0-16d8-64b8-8579-e9224cb41109",
				version = 2,
			},
			inheritedObjectUUID = "a50f1e2d-979a-5e32-a2d5-394200988ad3",
			inheritedOverwrites = 
			{
				displayPath = "FRU_megaminx_indicator",
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU",
				uuid = "226cdb29-a418-4269-9009-f24fd680d929",
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
							actionLua = "local function stop()\n    self.used = true\nend\n\nif data.megaminx_p1flexstack == nil then\n    data.megaminx_p1flexstack = {}\nend\ntable.insert(data.megaminx_p1flexstack, {\n    tetherid = eventArgs.newTargetID,\n    sourceid = eventArgs.sourceEntityID\n})\n\nif #data.megaminx_p1flexstack ~= 2 then\n    stop()\n    return\nend\n\nlocal safeside\nif data.megaminx_p1stackflex == 0 and data.megaminx_p1stackflex_ew == 0 then\n    safeside = 0\nelseif data.megaminx_p1stackflex == 0 and data.megaminx_p1stackflex_ew == 1 then\n    safeside = 1\nelseif data.megaminx_p1stackflex == 1 and data.megaminx_p1stackflex_ew == 1 then\n    safeside = 0\nelseif data.megaminx_p1stackflex == 1 and data.megaminx_p1stackflex_ew == 0 then\n    safeside = 1\nend\nif safeside == nil then\n    stop()\n    return\nend\n\nlocal player = TensorCore.mGetPlayer()\nlocal roster = AnyoneCore and AnyoneCore.Roster\nif player == nil or player.id == nil or roster == nil\n    or roster.current == nil or roster.mySlot == nil\n    or roster.isReady == nil or roster.idOf == nil\n    or roster.current() == nil or not roster.isReady() then\n    stop()\n    return\nend\n\nlocal slots = { \"T1\", \"T2\", \"H1\", \"H2\", \"M1\", \"M2\", \"R1\", \"R2\" }\nlocal idToSlot = {}\nfor _, slot in ipairs(slots) do\n    local id = roster.idOf(slot)\n    if id ~= nil then\n        idToSlot[id] = slot\n    end\nend\n\nlocal preySlots = {}\nlocal preyCounts = { [1] = 0, [2] = 0 }\nfor _, tether in ipairs(data.megaminx_p1flexstack) do\n    local slot = idToSlot[tether.tetherid]\n    if slot == nil then\n        stop()\n        return\n    end\n    local group = (slot == \"T1\" or slot == \"H1\" or slot == \"M1\" or slot == \"R1\") and 1 or 2\n    preyCounts[group] = preyCounts[group] + 1\n    table.insert(preySlots, { slot = slot, group = group })\nend\n\nlocal mySlot = roster.mySlot()\nlocal myGroup\nif mySlot == \"T1\" or mySlot == \"H1\" or mySlot == \"M1\" or mySlot == \"R1\" then\n    myGroup = 1\nelseif mySlot == \"T2\" or mySlot == \"H2\" or mySlot == \"M2\" or mySlot == \"R2\" then\n    myGroup = 2\nelse\n    stop()\n    return\nend\n\n-- LPDU P1: G1 north, G2 south. For two preys in one group,\n-- T > M > R > H selects the prey swapping groups; the tank from\n-- the zero-prey group swaps the other way to keep the light parties even.\nlocal finalGroup = myGroup\nlocal doubledGroup\nif preyCounts[1] == 2 then\n    doubledGroup = 1\nelseif preyCounts[2] == 2 then\n    doubledGroup = 2\nend\nif doubledGroup ~= nil then\n    local priority = {\n        T1 = 1, T2 = 1,\n        M1 = 2, M2 = 2,\n        R1 = 3, R2 = 3,\n        H1 = 4, H2 = 4\n    }\n    local swapPrey\n    local bestPriority = math.huge\n    for _, prey in ipairs(preySlots) do\n        if prey.group == doubledGroup and priority[prey.slot] < bestPriority then\n            swapPrey = prey.slot\n            bestPriority = priority[prey.slot]\n        end\n    end\n    local zeroGroup = 3 - doubledGroup\n    local tankFromZeroGroup = \"T\" .. tostring(zeroGroup)\n    if mySlot == swapPrey then\n        finalGroup = zeroGroup\n    elseif mySlot == tankFromZeroGroup then\n        finalGroup = doubledGroup\n    end\nend\n\nlocal x = safeside == 0 and 95 or 105\nlocal z = finalGroup == 1 and 95 or 105\nlocal target = { x = x, y = 0, z = z }\nlocal center = { x = 100, y = 0, z = 100 }\n-- Match the legacy LPDU stack indicator geometry: the arrow runs from arena center to this player's assigned stack spot.\nlocal heading = TensorCore.getHeadingToTarget(center, target)\nlocal arrowLength = TensorCore.getDistance2d(center, target)\nif arrowLength <= 0.1 then\n    stop()\n    return\nend\n\nlocal green = TensorCore.getStaticDrawer(\n    GUI:ColorConvertFloat4ToU32(0 / 255, 255 / 255, 0 / 255, .45),\n    2\n)\ngreen:addTimedArrow(10000, center.x, center.y, center.z, heading, arrowLength, 2, 1.5, 3, 0, true)\n\nstop()",
							conditions = 
							{
								
								{
									"bd1fd612-4749-9e4b-87a6-39fa9a383b42",
									true,
								},
							},
							uuid = "ba58ad95-39c4-a400-9ef7-14a7b4a8a7cf",
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
							conditionLua = "return eventArgs.newTetherID == 249",
							uuid = "bd1fd612-4749-9e4b-87a6-39fa9a383b42",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 15,
				loop = true,
				mechanicTime = 62.2,
				name = "[LPDU] Protean 4 stack indicator [AnyoneCore]",
				timeRange = true,
				timelineIndex = 17,
				timerEndOffset = 10,
				timerStartOffset = -10,
				uuid = "e881f86b-cc5c-370a-a783-68f060c61b36",
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
				name = "store\\anyone\\fru\\fru",
				uuid = "614a91e9-41a2-bf3d-7cd5-692b2cc412f9",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU_megaminx_indicator",
				uuid = "e15793e8-aa6a-2664-7f00-10d21ba15ef8",
			},
			inheritanceRoot = "FRU_megaminx_indicator",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "stack indicator",
				uuid = "23262831-1276-06ad-a2f9-08285b0d1f17",
				version = 2,
			},
			inheritedObjectUUID = "c714f104-03b6-c5d8-bf86-810275fff01a",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU",
				uuid = "ec1e58c6-e708-bab7-bce6-45710c0fdbea",
			},
			objectType = "folder",
		},
	},
	[19] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "e635522c-0ff3-6f70-c44f-627e3c43f4bc",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU",
				uuid = "5f5ab5e0-8c00-63ae-97b3-33a19369f21b",
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
							actionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif roster == nil or roster.current() == nil or not roster.isReady() then\n    self.used = true\n    return\nend\n\nlocal current = roster.current()\nif type(current.members) ~= \"table\" or type(current.names) ~= \"table\" then\n    self.used = true\n    return\nend\n\nlocal function groupForSlot(slot)\n    if slot == \"T1\" or slot == \"H1\" or slot == \"M1\" or slot == \"R1\" then\n        return \"north\"\n    elseif slot == \"T2\" or slot == \"H2\" or slot == \"M2\" or slot == \"R2\" then\n        return \"south\"\n    end\nend\n\nlocal function slotForEntity(entity)\n    if entity == nil then\n        return nil\n    end\n\n    if entity.contentid ~= nil then\n        local slot = current.members[entity.contentid]\n        if slot ~= nil then\n            return slot\n        end\n    end\n\n    if entity.name == nil then\n        return nil\n    end\n\n    local matchedSlot\n    local matchCount = 0\n    for contentID, name in pairs(current.names) do\n        if name == entity.name then\n            matchCount = matchCount + 1\n            matchedSlot = current.members[contentID]\n        end\n    end\n\n    if matchCount == 1 then\n        return matchedSlot\n    end\n    return nil\nend\n\nlocal function swapPriority(slot)\n    if slot == \"T1\" or slot == \"T2\" then\n        return 1\n    elseif slot == \"M1\" or slot == \"M2\" then\n        return 2\n    elseif slot == \"R1\" or slot == \"R2\" then\n        return 3\n    elseif slot == \"H1\" or slot == \"H2\" then\n        return 4\n    end\nend\n\nlocal playerSlot = roster.mySlot()\nlocal group = groupForSlot(playerSlot)\nlocal player = TensorCore.mGetPlayer()\nif group == nil or player == nil or player.id == nil or player.pos == nil then\n    self.used = true\n    return\nend\n\nlocal preyList = data and data.megaminx_p1flexstack\nlocal preyKnown = type(preyList) == \"table\" and #preyList == 2\nlocal isPrey = false\nlocal preyBySide = { north = nil, south = nil }\nlocal preyCountBySide = { north = 0, south = 0 }\nlocal swapPreyID\nlocal swapPreyOriginalSide\nlocal flexTankSlot\nlocal flexTankTargetSide\n\nif preyKnown then\n    local preyEntries = {}\n    for i = 1, 2 do\n        local tetherID = preyList[i] and preyList[i].tetherid\n        local prey = tetherID and TensorCore.mGetEntity(tetherID)\n        local preySlot = slotForEntity(prey)\n        local preySide = groupForSlot(preySlot)\n        if tetherID == nil or prey == nil or preySlot == nil or preySide == nil then\n            self.used = true\n            return\n        end\n        preyEntries[i] = { id = tetherID, entity = prey, slot = preySlot, side = preySide }\n        if tetherID == player.id then\n            isPrey = true\n        end\n    end\n\n    -- LPDU: LP1 north, LP2 south. If both preys are in one party,\n    -- TMRH picks the tether that swaps; the zero-prey party's tank flexes back.\n    if preyEntries[1].side == preyEntries[2].side then\n        local priority1 = swapPriority(preyEntries[1].slot)\n        local priority2 = swapPriority(preyEntries[2].slot)\n        if priority1 == nil or priority2 == nil then\n            self.used = true\n            return\n        end\n\n        local moveIndex = 1\n        if priority2 < priority1 or (priority2 == priority1 and preyEntries[2].slot < preyEntries[1].slot) then\n            moveIndex = 2\n        end\n\n        swapPreyID = preyEntries[moveIndex].id\n        swapPreyOriginalSide = preyEntries[moveIndex].side\n        local emptySide = swapPreyOriginalSide == \"north\" and \"south\" or \"north\"\n        preyEntries[moveIndex].side = emptySide\n        flexTankSlot = emptySide == \"north\" and \"T1\" or \"T2\"\n        flexTankTargetSide = swapPreyOriginalSide\n    end\n\n    for i = 1, 2 do\n        local side = preyEntries[i].side\n        preyBySide[side] = preyEntries[i].entity\n        preyCountBySide[side] = preyCountBySide[side] + 1\n    end\nend\n\nlocal stackSide = group\nif swapPreyID == player.id then\n    stackSide = swapPreyOriginalSide == \"north\" and \"south\" or \"north\"\nelseif playerSlot == flexTankSlot then\n    stackSide = flexTankTargetSide\nend\n\nlocal targetPos\nif stackSide == \"north\" then\n    targetPos = { x = 100, y = 0, z = 92 }\n    if isPrey then\n        targetPos.z = 90.5\n    end\nelse\n    targetPos = { x = 100, y = 0, z = 108 }\n    if isPrey then\n        targetPos.z = 109.5\n    end\nend\n\nlocal sourcePos = player.pos\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal distance = TensorCore.getDistance2d(sourcePos, targetPos)\nlocal arrow = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0/255, 255/255, 0/255, .25), 2)\nif distance > 0.5 then\n    arrow:addTimedArrow(1600, sourcePos.x, sourcePos.y, sourcePos.z, heading, distance, 1, 1, 1, 0, true)\nend\n\n-- The green arrow follows the prey assigned to this player's final stack.\nlocal stackPrey = preyBySide[stackSide]\nif preyCountBySide[stackSide] == 1 and stackPrey ~= nil and stackPrey.id ~= player.id then\n    arrow:addTimedArrowOnEnt(900, player, 1, 1, 1, 1, stackPrey, 1600, true)\nend\n\n-- Moogle's red stack telegraphs remain unchanged; tint only this player's assigned Sinsmoke stack green.\nif preyCountBySide[stackSide] == 1 and stackPrey ~= nil then\n    local greenStack = TensorCore.getStaticDrawer(\n        GUI:ColorConvertFloat4ToU32(36/255, 220/255, 88/255, .45),\n        2\n    )\n    greenStack:addTimedCircleOnEnt(1800, stackPrey, 6, 0, false, true)\nend\n\nself.used = true",
							name = "North/south prey stack arrow",
							uuid = "51ccc3d0-6711-1861-8fea-53381b6e37bb",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU",
				mechanicTime = 72.5,
				name = "[LPDU] Burnt Strike prey stack arrows [AnyoneCore]",
				timelineIndex = 19,
				timerOffset = 1,
				uuid = "da67dbe0-c641-2473-9abc-84eada70750d",
				version = 2,
			},
		},
	},
	[20] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "4419f0ec-12af-6530-d863-18c2943db77c",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[SAM] Tengentsu",
				uuid = "f2395284-5cf6-130c-ab27-d13bd990b165",
				version = 2,
			},
			inheritedObjectUUID = "b60ef4fe-7c6b-fc16-bf78-e2ecc2d8621f",
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
				name = "store\\anyone\\fru\\fru",
				uuid = "b3f037a9-cae8-b0fd-545c-c8dff146a5b9",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[22] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "dd8c6d36-8a79-9cba-aeb4-5d987c035c46",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Melee] Feint (Secondary)",
				uuid = "ff4d607c-9900-21cb-b24e-4f8579222a9d",
				version = 2,
			},
			inheritedObjectUUID = "7c2d471b-28e6-801d-9d52-cfca8d0e877e",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[MCH] Dismantle",
				uuid = "de96d0a6-78ea-bae3-9a08-641aaaea7b0f",
				version = 2,
			},
			inheritedObjectUUID = "4b70e931-11eb-2edc-a7cc-1a3cd3fb4a57",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[Caster] Addle (Primary)",
				uuid = "64bddf7a-2f0d-5d58-87f9-7b420379a101",
				version = 2,
			},
			inheritedObjectUUID = "95b61d84-67b1-fc9a-8b97-46e02a668754",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[RDM] Barrier",
				uuid = "3dfb8fe1-5dbd-7ffd-b032-599726f6b618",
				version = 2,
			},
			inheritedObjectUUID = "ab802951-8a25-b8e0-86d7-cccf11130956",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[RPR] Arcane Crest",
				uuid = "fbc1a44b-ef09-128c-a0fa-6c0b87f069d7",
				version = 2,
			},
			inheritedObjectUUID = "9df67090-e47b-6d77-8d87-c3431db7a898",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[VPR] Feint (Secondary)",
				uuid = "51595165-2a67-4091-ae0e-0a509f456a6f",
				version = 2,
			},
			inheritedObjectUUID = "4169a7c0-67ed-5409-9096-2bbec9946539",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[DNC] Improv",
				uuid = "8736b32b-6bc6-774e-ad0a-76934076901d",
				version = 2,
			},
			inheritedObjectUUID = "9164e371-ec55-f024-9c8e-8ce2ec687320",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[BRD] Nature's Minne",
				uuid = "f5af2e07-7200-d42a-92d5-40e21557b7b8",
				version = 2,
			},
			inheritedObjectUUID = "3f865067-2227-65d4-9a02-84f6c4aa251f",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU_megaminx_indicator",
				uuid = "57eb262b-8f30-69e7-73f6-b23d59b32a3b",
			},
			inheritanceRoot = "FRU_megaminx_indicator",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "four tether indicator",
				uuid = "af86cb6d-4c28-ea32-8f4d-99e7f656f02d",
				version = 2,
			},
			inheritedObjectUUID = "dc060828-4b32-5cb6-82e2-3df85d14f88d",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU",
				uuid = "661328fb-4f04-0764-8ed3-14ee03f4d860",
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
							actionLua = "local state = data.frup1_lpdu_four_tether\nif state == nil then\n    state = {\n        records = {},\n        positionByOrder = {[1] = 1, [2] = 2, [3] = 3, [4] = 4},\n        partnerByOrder = {[1] = 3, [3] = 1, [2] = 4, [4] = 2}\n    }\n    data.frup1_lpdu_four_tether = state\nend\nstate.records = state.records or {}\nstate.positionByOrder = state.positionByOrder or {[1] = 1, [2] = 2, [3] = 3, [4] = 4}\nstate.partnerByOrder = state.partnerByOrder or {[1] = 3, [3] = 1, [2] = 4, [4] = 2}\n-- Splatoon/LPDU spots: 1 north inner, 2 south inner, 3 north outer, 4 south outer.\n-- Reset each event so a live profile edit also updates existing encounter state.\nstate.tetherPositions = {\n    [1] = {x = 100, y = 0, z = 95},\n    [2] = {x = 100, y = 0, z = 105},\n    [3] = {x = 100, y = 0, z = 93},\n    [4] = {x = 100, y = 0, z = 107}\n}\n\nlocal records = state.records\nlocal positions = state.tetherPositions\nlocal isTetherAdd = (eventArgs.newTetherID == 249 or eventArgs.newTetherID == 287)\n    and eventArgs.newTargetID ~= nil\nlocal isTetherClear = eventArgs.newTetherID == 0\n    and (eventArgs.oldTetherID == 249 or eventArgs.oldTetherID == 287)\n    and eventArgs.oldTargetID ~= nil\nlocal swapFrom = nil\nlocal swapTo = nil\nlocal swapTether = nil\n\nif isTetherAdd then\n    local record = nil\n    for _, existing in ipairs(records) do\n        if existing.id == eventArgs.newTargetID then\n            record = existing\n            break\n        end\n    end\n\n    if record ~= nil then\n        record.tether = eventArgs.newTetherID\n    elseif #records < 4 then\n        table.insert(records, {\n            id = eventArgs.newTargetID,\n            tether = eventArgs.newTetherID,\n            order = #records + 1,\n            resolved = false\n        })\n    end\nend\n\nif isTetherClear then\n    for _, record in ipairs(records) do\n        if record.id == eventArgs.oldTargetID\n            and record.tether == eventArgs.oldTetherID\n            and not record.resolved then\n            record.resolved = true\n            if record.order == 1 and not state.swapped13 then\n                local nextTether = records[3]\n                if nextTether ~= nil and not nextTether.resolved then\n                    swapFrom = positions[state.positionByOrder[3] or 3]\n                    swapTether = nextTether.tether\n                end\n                state.positionByOrder[1], state.positionByOrder[3] =\n                    state.positionByOrder[3], state.positionByOrder[1]\n                if swapFrom ~= nil then\n                    swapTo = positions[state.positionByOrder[3] or 3]\n                end\n                state.swapped13 = true\n            elseif record.order == 2 and not state.swapped24 then\n                local nextTether = records[4]\n                if nextTether ~= nil and not nextTether.resolved then\n                    swapFrom = positions[state.positionByOrder[4] or 4]\n                    swapTether = nextTether.tether\n                end\n                state.positionByOrder[2], state.positionByOrder[4] =\n                    state.positionByOrder[4], state.positionByOrder[2]\n                if swapFrom ~= nil then\n                    swapTo = positions[state.positionByOrder[4] or 4]\n                end\n                state.swapped24 = true\n            end\n            break\n        end\n    end\nend\n\nlocal player = TensorCore.mGetPlayer()\n-- Retire the initial LPDU conga arrow when the tether assignment takes over.\nlocal setupArrow = data.frup1_lpdu_conga_setup\nif type(setupArrow) == \"table\" and setupArrow.arrowUUID ~= nil\n    and ((isTetherAdd and player ~= nil and eventArgs.newTargetID == player.id)\n        or #records >= 4) then\n    Argus.deleteTimedShape(setupArrow.arrowUUID)\n    setupArrow.arrowUUID = nil\nend\nlocal center = {x = 100, y = 0, z = 100}\n-- Red marks fire/stack; blue marks lightning/spread.\nlocal stackRed = TensorCore.getStaticDrawer(\n    GUI:ColorConvertFloat4ToU32(1, .16, .12, .55), 2)\nlocal spreadBlue = TensorCore.getStaticDrawer(\n    GUI:ColorConvertFloat4ToU32(.10, .52, 1, .55), 2)\nlocal green = TensorCore.getStaticDrawer(\n    GUI:ColorConvertFloat4ToU32(0/255, 255/255, 0/255, .25), 2)\nlocal markerRadius = 1.0\n-- Never extend a Fall of Faith marker beyond timeline 118.\nlocal markerTimeout = math.min(15000, math.max(0, math.floor((118 - TensorReactions_CurrentTimer) * 1000)))\n\n-- Show only the current tether bait on each side. The second tether takes\n-- the first tether's spot after its tether clears.\nfor order, record in ipairs(records) do\n    local firstOrder = (order == 1 or order == 3) and 1 or 2\n    local secondOrder = firstOrder == 1 and 3 or 4\n    local firstRecord = records[firstOrder]\n    local activeOrder = nil\n    if firstRecord ~= nil and not firstRecord.resolved then\n        activeOrder = firstOrder\n    elseif firstRecord ~= nil and firstRecord.resolved then\n        local secondRecord = records[secondOrder]\n        if secondRecord ~= nil and not secondRecord.resolved then\n            activeOrder = secondOrder\n        end\n    end\n\n    local isActiveBait = order == activeOrder\n    local position = positions[state.positionByOrder[order] or order]\n    local isStack = record.tether == 249\n    local drawer = isStack and stackRed or spreadBlue\n\n    if isActiveBait and position ~= nil then\n        if record.markerUUID ~= nil then\n            local updated = drawer:updateTimedCircle(\n                record.markerUUID, markerTimeout, position.x, position.y, position.z,\n                markerRadius, 0, true, false)\n            if not updated then\n                Argus.deleteTimedShape(record.markerUUID)\n                record.markerUUID = nil\n            end\n        end\n        if record.markerUUID == nil then\n            record.markerUUID = drawer:addTimedCircle(\n                markerTimeout, position.x, position.y, position.z, markerRadius, 0, true)\n        end\n    elseif record.markerUUID ~= nil then\n        Argus.deleteTimedShape(record.markerUUID)\n        record.markerUUID = nil\n    end\nend\n\nlocal targetPosition = nil\nlocal myRecord = nil\nif player ~= nil then\n    for _, record in ipairs(records) do\n        if record.id == player.id then\n            myRecord = record\n            break\n        end\n    end\nend\n\n-- The tethered player follows their own prey order and swap.\nif myRecord ~= nil and not myRecord.resolved then\n    targetPosition = positions[state.positionByOrder[myRecord.order] or myRecord.order]\nelseif #records >= 4 and player ~= nil then\n    -- LPDU conga priority: H1, H2, MT, OT, M1, M2, R1, R2.\n    -- Among non-tethered players, the first two go north and the next two south.\n    local anyTetherUnresolved = false\n    local tethered = {}\n    for _, record in ipairs(records) do\n        if not record.resolved then anyTetherUnresolved = true end\n        tethered[record.id] = true\n    end\n\n    local roster = AnyoneCore and AnyoneCore.Roster\n    if anyTetherUnresolved and roster ~= nil and roster.current() ~= nil\n        and roster.isReady() then\n        local slotOrder = {\"H1\", \"H2\", \"T1\", \"T2\", \"M1\", \"M2\", \"R1\", \"R2\"}\n        local fillers = {}\n        for _, slot in ipairs(slotOrder) do\n            local id = roster.idOf(slot)\n            if id ~= nil and not tethered[id] then\n                table.insert(fillers, slot)\n            end\n        end\n\n        local mySlot = roster.mySlot()\n        if #fillers == 4 and mySlot ~= nil then\n            for i, slot in ipairs(fillers) do\n                if slot == mySlot then\n                    targetPosition = i <= 2\n                        and {x = 100, y = 0, z = 92}\n                        or {x = 100, y = 0, z = 108}\n                    break\n                end\n            end\n        end\n    end\nend\n\n\n-- Recreate the local guidance arrow after circles so it renders above them.\nif state.localArrowUUID ~= nil then\n    Argus.deleteTimedShape(state.localArrowUUID)\n    state.localArrowUUID = nil\nend\nif targetPosition ~= nil then\n    local heading = TensorCore.getHeadingToTarget(center, targetPosition)\n    local distance = TensorCore.getDistance2d(center, targetPosition) - 1\n    state.localArrowUUID = green:addTimedArrow(\n        5000, center.x, center.y, center.z, heading,\n        distance, 1, 1, 1, 0, true)\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"e34a8a3d-6258-c2fb-beff-fd456f7e9cbb",
									true,
								},
							},
							name = "Four tether N/S positions and element markers",
							uuid = "24a1dde3-8866-45c0-9dd0-9ec3bab8dd2d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 3500,
							alertTTS = true,
							alertText = "Red tether. Stack.",
							conditions = 
							{
								
								{
									"a1d63032-7eca-1ad5-8d74-64cc2b18354e",
									true,
								},
							},
							name = "Red tether stack callout",
							uuid = "54cb05e8-1728-35a6-86f9-36e381101b7e",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 3500,
							alertTTS = true,
							alertText = "Blue tether. Spread.",
							conditions = 
							{
								
								{
									"a29285c5-828e-dd5f-bb73-05bdc62639b3",
									true,
								},
							},
							name = "Blue tether spread callout",
							uuid = "0e6fb359-5867-7018-9c5d-486918455fff",
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
							conditionLua = "return eventArgs.newTetherID == 249 or eventArgs.newTetherID == 287 or (eventArgs.newTetherID == 0 and eventArgs.oldTargetID ~= nil)",
							uuid = "e34a8a3d-6258-c2fb-beff-fd456f7e9cbb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer(); return p ~= nil and eventArgs.newTargetID == p.id and eventArgs.newTetherID == 249",
							name = "Red tether on self",
							uuid = "a1d63032-7eca-1ad5-8d74-64cc2b18354e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer(); return p ~= nil and eventArgs.newTargetID == p.id and eventArgs.newTetherID == 287",
							name = "Blue tether on self",
							uuid = "a29285c5-828e-dd5f-bb73-05bdc62639b3",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 15,
				loop = true,
				mechanicTime = 85.9,
				name = "four tether indicator [AnyoneCore]",
				timeRange = true,
				timelineIndex = 22,
				timerEndOffset = 26.5,
				uuid = "a9bb6087-404d-4e04-8e10-0798c319b69d",
				version = 2,
			},
			inheritedIndex = 23,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Mitigation",
				uuid = "100865c1-4b21-8030-8553-d3e4ce5593f5",
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
							actionID = 7549,
							conditions = 
							{
								
								{
									"95dc0592-fda4-a176-81e9-9f3d0c3d534d",
									true,
								},
								
								{
									"5fb82bf0-f02a-8fb9-bf1f-cc2700e48a4b",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] M2 Feint Burnished Glory 1",
							targetType = "Enemy",
							uuid = "025d1aae-d98b-e7d7-afe7-b92e20c07d69",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"M2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "M2 roster",
							uuid = "95dc0592-fda4-a176-81e9-9f3d0c3d534d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Burnished Glory 1 CD",
							uuid = "5fb82bf0-f02a-8fb9-bf1f-cc2700e48a4b",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 85.9,
				name = "[LPDU] M2 Feint Burnished Glory 1",
				timeRange = true,
				timelineIndex = 22,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "bc7d69a2-af11-36ca-9444-440653c047d3",
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
							actionID = 7560,
							conditions = 
							{
								
								{
									"e2b0417f-954e-63ba-b456-201b771e062d",
									true,
								},
								
								{
									"f0d6caf3-9129-0ad1-ac47-a33cc315cf4b",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Addle Burnished Glory 1",
							targetType = "Enemy",
							uuid = "8850084b-05e2-bd03-b5b0-92cf57683acc",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R1 roster",
							uuid = "e2b0417f-954e-63ba-b456-201b771e062d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Burnished Glory 1 CD",
							uuid = "f0d6caf3-9129-0ad1-ac47-a33cc315cf4b",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 85.9,
				name = "[LPDU] R1 Addle Burnished Glory 1",
				timeRange = true,
				timelineIndex = 22,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "8eb4ca52-b036-92d3-aa66-07f8859a9f10",
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
							actionID = 7405,
							conditions = 
							{
								
								{
									"108fa69c-3855-80ad-abbc-a69b7931385a",
									true,
								},
								
								{
									"06c53322-2010-4148-8489-d3aee20400ae",
									true,
								},
								
								{
									"82c4f0bb-e145-c9ee-9ed2-aae5e82cc7fa",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Troubadour - Burnished Glory 1",
							uuid = "7238c845-8383-575d-a958-e07494baf856",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							conditions = 
							{
								
								{
									"108fa69c-3855-80ad-abbc-a69b7931385a",
									true,
								},
								
								{
									"5eadf236-ed50-0d34-9270-5226cb0829aa",
									true,
								},
								
								{
									"f20677a5-626b-b65f-846e-007611c43dde",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Tactician - Burnished Glory 1",
							uuid = "bdcc8a70-df87-ec68-b61d-01e076336459",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							conditions = 
							{
								
								{
									"108fa69c-3855-80ad-abbc-a69b7931385a",
									true,
								},
								
								{
									"d4da0b08-1bb7-56d5-8848-cbf63434c762",
									true,
								},
								
								{
									"8fc3f39e-8d22-8ab4-9658-9e4d64d2734a",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Shield Samba - Burnished Glory 1",
							uuid = "3128b90c-c735-2403-bb04-88a6af140193",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R1 roster",
							uuid = "108fa69c-3855-80ad-abbc-a69b7931385a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Troubadour job",
							uuid = "06c53322-2010-4148-8489-d3aee20400ae",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7405,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "82c4f0bb-e145-c9ee-9ed2-aae5e82cc7fa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Tactician job",
							uuid = "5eadf236-ed50-0d34-9270-5226cb0829aa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "f20677a5-626b-b65f-846e-007611c43dde",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Shield Samba job",
							uuid = "d4da0b08-1bb7-56d5-8848-cbf63434c762",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "8fc3f39e-8d22-8ab4-9658-9e4d64d2734a",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 85.9,
				name = "[LPDU] R1 Phys Ranged - Burnished Glory 1",
				timeRange = true,
				timelineIndex = 22,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "b43dd413-318a-bc8b-86ed-51e2617f4efd",
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
							actionID = 2887,
							conditions = 
							{
								
								{
									"ff131de7-0407-95ec-8560-58e829ba10dc",
									true,
								},
								
								{
									"9d70172b-5eb6-9077-8437-2c25a44dec24",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Dismantle Burnished Glory 1",
							uuid = "dcafc700-873d-006f-a67a-180e5b934362",
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
							jobValue = "MACHINIST",
							name = "MACHINIST job",
							uuid = "ff131de7-0407-95ec-8560-58e829ba10dc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 2887,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Burnished Glory 1 CD",
							uuid = "9d70172b-5eb6-9077-8437-2c25a44dec24",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 85.9,
				name = "[LPDU] Dismantle Burnished Glory 1",
				timeRange = true,
				timelineIndex = 22,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "73d27b8e-df00-4450-a06d-79ba8b9a0e7c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Draws",
				uuid = "b3754a5d-7471-a57b-b60c-427ed4539e35",
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
							actionLua = "local function finish()\n    self.used = true\nend\n\nlocal roster = AnyoneCore and AnyoneCore.Roster\nif roster == nil or roster.current == nil or roster.mySlot == nil\n    or roster.isReady == nil or roster.current() == nil or not roster.isReady() then\n    finish()\n    return\nend\n\nlocal roleOrder = {\"H1\", \"H2\", \"T1\", \"T2\", \"M1\", \"M2\", \"R1\", \"R2\"}\nlocal mySlot = roster.mySlot()\nlocal slotIndex = nil\nfor index, slot in ipairs(roleOrder) do\n    if slot == mySlot then\n        slotIndex = index\n        break\n    end\nend\nif slotIndex == nil then\n    finish()\n    return\nend\n\nlocal player = TensorCore.mGetPlayer()\nif player == nil or player.pos == nil then\n    finish()\n    return\nend\n\n-- LPDU conga order runs north to south, with a compact line west of center.\nlocal target = {\n    x = 96,\n    y = player.pos.y or 0,\n    z = 91 + (slotIndex - 1) * 2.2\n}\nlocal start = {\n    x = player.pos.x,\n    y = player.pos.y or 0,\n    z = player.pos.z\n}\nlocal distance = TensorCore.getDistance2d(start, target)\nif distance > 0.5 then\n    local drawer = TensorCore.getStaticDrawer(\n        GUI:ColorConvertFloat4ToU32(0/255, 255/255, 0/255, .25), 2)\n    local heading = TensorCore.getHeadingToTarget(start, target)\n    local uuid = drawer:addTimedArrow(\n        18000, start.x, start.y, start.z, heading,\n        distance, 1, 1, 1, 0, true)\n    if uuid ~= nil then\n        data.frup1_lpdu_conga_setup = data.frup1_lpdu_conga_setup or {}\n        data.frup1_lpdu_conga_setup.arrowUUID = uuid\n    end\nend\n\nfinish()",
							name = "[LPDU] Personal Conga Spot Arrow",
							uuid = "07246596-8754-2c53-8245-da50c4d6aec5",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Draws",
				mechanicTime = 85.9,
				name = "[LPDU] Fall of Faith Conga Arrows",
				timeRange = true,
				timelineIndex = 22,
				timerEndOffset = 0.5,
				uuid = "449877d0-b911-6cc5-a6c0-3b84cd6284e3",
				version = 2,
			},
		},
	},
	[23] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "f755c703-3907-dc77-02dd-c145a83251d3",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[24] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "ba4496b0-9c84-bf6c-0f87-a5de3bd88640",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[25] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "727de27d-0c5b-0629-9545-7a0b70387e0d",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[26] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "320ece3a-35f7-3bb6-db33-d9f45c83718a",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[MNK] Mantra",
				uuid = "3cd7e7d9-1a4e-a733-b4ff-d2fa539c64ae",
				version = 2,
			},
			inheritedObjectUUID = "68581fad-0fcf-a86a-b30e-e3d3c076a2c9",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[27] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "e09d0df7-4fc0-9583-7b67-1011ed884387",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[28] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "d6471654-8cb7-b2f8-2edb-61da0bd2dc64",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[29] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "c5609d71-4983-9025-34ab-e1170dca9541",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Melee] Bloodbath",
				uuid = "acfb15bb-e956-37a9-8165-51947a57adeb",
				version = 2,
			},
			inheritedObjectUUID = "acfe7ae2-e877-2e14-ba4b-f8c77926368e",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[VPR] Bloodbath",
				uuid = "b07a4686-ebb5-eea5-b10a-4a879046ac04",
				version = 2,
			},
			inheritedObjectUUID = "6f48ae83-cac9-6195-a956-2bd254b009d6",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[Ranged] rDPS Mit",
				uuid = "83ae8158-53f8-e123-87a6-5114290effb2",
				version = 2,
			},
			inheritedObjectUUID = "13931ffa-0259-0164-901d-ff2cc47d1e5e",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[DNC] Curing Waltz",
				uuid = "4746eeb0-e2f7-06ab-87fc-8cd256ccda16",
				version = 2,
			},
			inheritedObjectUUID = "6a4dce1e-ab14-0ad2-9382-3e7df7964150",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[SAM] Tengentsu",
				uuid = "45f82aa4-39ae-0824-9512-faf8f6548448",
				version = 2,
			},
			inheritedObjectUUID = "a503f320-6162-c335-8651-6a19366af969",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[RPR] Arcane Crest",
				uuid = "afae34e0-35a1-11f2-a1b8-1f5ef751a87f",
				version = 2,
			},
			inheritedObjectUUID = "b5193116-af1f-771e-b4f8-a587a11ca8f1",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Mitigation",
				uuid = "85f55d20-7a2e-e726-86cf-afc1f458d5e9",
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
							actionID = 7549,
							conditions = 
							{
								
								{
									"669655b7-86ce-e4d6-bb3b-194894b08df2",
									true,
								},
								
								{
									"c08a988e-9ecf-9060-8773-165d64ba7798",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] M1 Feint Burnished Glory 2",
							targetType = "Enemy",
							uuid = "7e0579fc-508b-c612-8c36-6db3d636323b",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"M1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "M1 roster",
							uuid = "669655b7-86ce-e4d6-bb3b-194894b08df2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Burnished Glory 2 CD",
							uuid = "c08a988e-9ecf-9060-8773-165d64ba7798",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 121.1,
				name = "[LPDU] M1 Feint Burnished Glory 2",
				timeRange = true,
				timelineIndex = 29,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "980cc098-efb2-6335-bb86-0934464a2776",
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
							actionID = 7560,
							conditions = 
							{
								
								{
									"8847126a-e6dc-3c63-9d15-995c5ee30985",
									true,
								},
								
								{
									"96c67234-3454-da04-a43a-4e9927a46f72",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Addle 2 Burnished Glory 2",
							targetType = "Enemy",
							uuid = "f3b29ace-6887-4b7c-84a6-b9cf439f1690",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R2 roster",
							uuid = "8847126a-e6dc-3c63-9d15-995c5ee30985",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Burnished Glory 2 CD",
							uuid = "96c67234-3454-da04-a43a-4e9927a46f72",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				enabled = false,
				mechanicTime = 121.1,
				name = "[LPDU] R2 Addle 2 Burnished Glory 2",
				timeRange = true,
				timelineIndex = 29,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "687a7ef8-1dbe-9873-b176-feca052ad683",
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
							actionID = 7405,
							conditions = 
							{
								
								{
									"1a62f7e2-22d6-33ba-b681-494e2f576602",
									true,
								},
								
								{
									"1ffa414c-42bd-7780-b7ce-5564ec299a2c",
									true,
								},
								
								{
									"b3a28d81-88a2-8a6b-a6df-2a68abe3cbb3",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Troubadour - Burnished Glory 2",
							uuid = "3324de83-b79e-3361-bee0-fcd90881e724",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							conditions = 
							{
								
								{
									"1a62f7e2-22d6-33ba-b681-494e2f576602",
									true,
								},
								
								{
									"1e5f2b44-0828-637c-ae89-8b61e1bf9541",
									true,
								},
								
								{
									"ebea9bf6-f2dd-b52f-99fd-6b0d171d930c",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Tactician - Burnished Glory 2",
							uuid = "198df45f-946b-b12f-b685-20f53b5c8e1b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							conditions = 
							{
								
								{
									"1a62f7e2-22d6-33ba-b681-494e2f576602",
									true,
								},
								
								{
									"ab45413f-9409-f1ca-a20c-30d7ace080df",
									true,
								},
								
								{
									"caa5c65e-7578-d96a-8bc6-497c046fc545",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Shield Samba - Burnished Glory 2",
							uuid = "f1f38a39-453f-f341-ab19-0d1e5ddc5e47",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R1 roster",
							uuid = "1a62f7e2-22d6-33ba-b681-494e2f576602",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Troubadour job",
							uuid = "1ffa414c-42bd-7780-b7ce-5564ec299a2c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7405,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "b3a28d81-88a2-8a6b-a6df-2a68abe3cbb3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Tactician job",
							uuid = "1e5f2b44-0828-637c-ae89-8b61e1bf9541",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "ebea9bf6-f2dd-b52f-99fd-6b0d171d930c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Shield Samba job",
							uuid = "ab45413f-9409-f1ca-a20c-30d7ace080df",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "caa5c65e-7578-d96a-8bc6-497c046fc545",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 121.1,
				name = "[LPDU] R1 Phys Ranged - Burnished Glory 2",
				timeRange = true,
				timelineIndex = 29,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "fbe999b2-1308-0030-8fce-cbd83daee18e",
				version = 2,
			},
		},
	},
	[30] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "212fd99f-f5d3-67f3-7ce8-43f5f3fef5ef",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Melee] Feint (Primary)",
				uuid = "bb048ea8-841d-28bc-9970-7fb4c7fb1971",
				version = 2,
			},
			inheritedObjectUUID = "ec51d3f1-73a3-14a2-92f9-eab5ec7b98b3",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[VPR] Feint (Primary)",
				uuid = "d078c417-6580-f82f-9558-106731d4aafe",
				version = 2,
			},
			inheritedObjectUUID = "e9fec76b-107c-9050-b197-67e487477cab",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[Caster] Addle (Secondary)",
				uuid = "4612d5ec-cf5f-6c29-955e-be9f1c0ea357",
				version = 2,
			},
			inheritedObjectUUID = "41292260-366e-eb74-8018-e42b26306560",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[32] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "90869c05-0ec9-3559-fd45-1e4fcfa33595",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU_megaminx_indicator",
				uuid = "aa18f1fc-17e7-3358-d8ad-e11e6452678c",
			},
			inheritanceRoot = "FRU_megaminx_indicator",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "towers indicator",
				uuid = "b0c9e7ab-7c00-d83d-ab4b-27c57ef2df24",
				version = 2,
			},
			inheritedObjectUUID = "fb767ce0-3908-91d7-92ce-72c2ad044a09",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU",
				uuid = "108b4752-a062-1610-925a-23b090106dba",
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
							actionLua = "if data.megaminx_p1_3stacktower == nil then data.megaminx_p1_3stacktower = {} end\ntable.insert(data.megaminx_p1_3stacktower,{spell = eventArgs.spellID, id = eventArgs.entityID })\nif table.size(data.megaminx_p1_3stacktower) == 3 then\n    local p = TensorCore.mGetPlayer()\n    local center = {x = 100, y = 0,z = 100}\n    local green = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0/255, 255/255, 0/255, .25),2)\n    local index\n    local roster = AnyoneCore and AnyoneCore.Roster\r\n    if roster == nil or roster.current() == nil then\r\n        self.used = true\r\n        return\r\n    end\r\n    local mySlot = roster.mySlot()\r\n    local myRole = (mySlot == \"T1\" and \"MT\") or (mySlot == \"T2\" and \"OT\") or mySlot\r\n    if not roster.isReady() then\r\n        self.used = true\r\n        return\r\n    end\r\n    if p == nil then self.used = true; return end\r\n    if myRole == \"MT\" then index = 1\r\n    elseif myRole == \"OT\" then index = 2\r\n    elseif myRole == \"H1\" then index = 3\r\n    elseif myRole == \"H2\" then index = 4\r\n    elseif myRole == \"M1\" then index = 5\r\n    elseif myRole == \"M2\" then index = 6\r\n    elseif myRole == \"R1\" then index = 7\r\n    elseif myRole == \"R2\" then index = 8\r\n    else self.used = true; return end\r\n    local partyIDs = {\r\n        roster.idOf(\"T1\"),\r\n        roster.idOf(\"T2\"),\r\n        roster.idOf(\"H1\"),\r\n        roster.idOf(\"H2\"),\r\n        roster.idOf(\"M1\"),\r\n        roster.idOf(\"M2\"),\r\n        roster.idOf(\"R1\"),\r\n        roster.idOf(\"R2\")\r\n    }    if index == 3 then --healer1, go north\n        local ent = TensorCore.mGetEntity(eventArgs.entityID)\n        local pos\n        if ent.pos.x < 100 then\n            pos = {x = 87, y = 0, z = 90} --nw\n        elseif ent.pos.x > 100 then\n            pos = {x = 113, y = 0, z = 90} --ne\n        end\n        local heading = TensorCore.getHeadingToTarget(center,pos)\n        local distance = TensorCore.getDistance2d(center,pos) - 1\n        green:addTimedArrow(10000, 100, 0, 100, heading, distance, 1, 1, 1,0,true)\n    end\n    if index == 4 then --healer2, go sorth\n        local ent = TensorCore.mGetEntity(eventArgs.entityID)\n        local pos\n        if ent.pos.x < 100 then\n            pos = {x = 87, y = 0, z = 110} --nw\n        elseif ent.pos.x > 100 then\n            pos = {x = 113, y = 0, z = 110} --ne\n        end\n        local heading = TensorCore.getHeadingToTarget(center,pos)\n        local distance = TensorCore.getDistance2d(center,pos) - 1\n        green:addTimedArrow(10000, 100, 0, 100, heading, distance, 1, 1, 1,0,true)\n    end\n    if index == 8 then --range2(caster), go mid\n        local ent = TensorCore.mGetEntity(eventArgs.entityID)\n        local pos\n        if ent.pos.x < 100 then\n            pos = {x = 84, y = 0, z = 100} --w\n        elseif ent.pos.x > 100 then\n            pos = {x = 116, y = 0, z = 100} --e\n        end\n        local heading = TensorCore.getHeadingToTarget(center,pos)\n        local distance = TensorCore.getDistance2d(center,pos) - 1\n        green:addTimedArrow(10000, 100, 0, 100, heading, distance, 1, 1, 1,0,true)\n    end\n    local newTable = data.megaminx_p1_3stacktower\n\n    table.sort(newTable, function(a, b)\n        local entA = TensorCore.mGetEntity(a.id)\n        local entB = TensorCore.mGetEntity(b.id)\n        return entA.pos.z < entB.pos.z\n    end)\n\n    local spellToBase = {\n        [40124] = 4, [40127] = 4,\n        [40123] = 3, [40126] = 3,\n        [40122] = 2, [40125] = 2,\n        [40131] = 1, [40135] = 1\n    }\n    local function generateBaseTable(megaminxTable)\n        local baseTable = {}\n        for _, entry in ipairs(megaminxTable) do\n            if spellToBase[entry.spell] then\n                table.insert(baseTable, spellToBase[entry.spell])\n            end\n        end\n        return baseTable\n    end\n    local baseTable = generateBaseTable(newTable)\n    local adjustedTasks = {}\n    for i, task in ipairs(baseTable) do\n        adjustedTasks[i] = math.max(0, task - 1)\n    end\n    d(adjustedTasks)\n    local persons = {5, 7, 6} \n    local allocations = {0, 0, 0} \n\n    local function assignTasks(adjustedTasks, persons)\n        local taskAssignments = {} -- To store {id, task} pairs\n        local personIndex = 1      -- Start with the first person\n    \n        for taskIndex, taskCount in ipairs(adjustedTasks) do\n            local remaining = taskCount\n            \n            while remaining > 0 do\n                -- Assign one unit of the task to the current person\n                local personID = persons[personIndex]\n                table.insert(taskAssignments, {index = personID, task = taskIndex})\n                \n                -- Decrement the remaining count\n                remaining = remaining - 1\n                \n                -- Move to the next person in a round-robin fashion\n                personIndex = (personIndex % #persons) + 1\n            end\n        end\n    \n        return taskAssignments\n    end\n\n    local taskAssignments = assignTasks(adjustedTasks, persons)\n    d(taskAssignments)\n    for i = 1,#taskAssignments do\n        if index == taskAssignments[i].index then\n            if taskAssignments[i].task == 1 then -- north\n                local ent = TensorCore.mGetEntity(eventArgs.entityID)\n                local pos\n                if ent.pos.x < 100 then\n                    pos = {x = 87, y = 0, z = 90} --nw\n                elseif ent.pos.x > 100 then\n                    pos = {x = 113, y = 0, z = 90} --ne\n                end\n                local heading = TensorCore.getHeadingToTarget(center,pos)\n                local distance = TensorCore.getDistance2d(center,pos) - 1\n                green:addTimedArrow(10000, 100, 0, 100, heading, distance, 1, 1, 1,0,true)\n            end\n            if taskAssignments[i].task == 2 then -- mid\n                local ent = TensorCore.mGetEntity(eventArgs.entityID)\n                local pos\n                if ent.pos.x < 100 then\n                    pos = {x = 84, y = 0, z = 100} --w\n                elseif ent.pos.x > 100 then\n                    pos = {x = 116, y = 0, z = 100} --e\n                end\n                local heading = TensorCore.getHeadingToTarget(center,pos)\n                local distance = TensorCore.getDistance2d(center,pos) - 1\n                green:addTimedArrow(10000, 100, 0, 100, heading, distance, 1, 1, 1,0,true)\n            end\n            if taskAssignments[i].task == 3 then -- south\n                local ent = TensorCore.mGetEntity(eventArgs.entityID)\n                local pos\n                if ent.pos.x < 100 then\n                    pos = {x = 87, y = 0, z = 110} --nw\n                elseif ent.pos.x > 100 then\n                    pos = {x = 113, y = 0, z = 110} --ne\n                end\n                local heading = TensorCore.getHeadingToTarget(center,pos)\n                local distance = TensorCore.getDistance2d(center,pos) - 1\n                green:addTimedArrow(10000, 100, 0, 100, heading, distance, 1, 1, 1,0,true)\n            end\n        end\n    end\nend\n\nself.used = true\n",
							conditions = 
							{
								
								{
									"b75e0cb2-d206-3aae-93b9-3a6929f8ff03",
									true,
								},
							},
							uuid = "44f370b7-299c-8a68-8a08-fed0c37a8d13",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							eventArgOptionType = 3,
							eventArgType = 2,
							spellIDList = 
							{
								40124,
								40127,
								40126,
								40123,
								40125,
								40122,
								40131,
								40135,
							},
							uuid = "b75e0cb2-d206-3aae-93b9-3a6929f8ff03",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 3,
				loop = true,
				mechanicTime = 140.9,
				name = "towers indicator [AnyoneCore]",
				timeRange = true,
				timelineIndex = 32,
				timerEndOffset = 10,
				timerStartOffset = -140,
				uuid = "f9d34f83-9580-db6b-80b8-a9442eb670b5",
				version = 2,
			},
			inheritedIndex = 11,
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
							actionLua = "local function stop()\n    self.used = true\nend\n\nlocal roster = AnyoneCore and AnyoneCore.Roster\nif roster == nil or roster.current == nil or roster.current() == nil\n    or roster.mySlot == nil or roster.isReady == nil or not roster.isReady() then\n    stop()\n    return\nend\n\nlocal mySlot = roster.mySlot()\nif mySlot ~= \"T1\" and mySlot ~= \"T2\" then\n    stop()\n    return\nend\n\nlocal player = TensorCore.mGetPlayer()\nif player == nil or player.pos == nil then\n    stop()\n    return\nend\n\nlocal towers = data.megaminx_p1_3stacktower\nif type(towers) ~= \"table\" or #towers < 3 then\n    stop()\n    return\nend\n\nlocal totalX = 0\nlocal count = 0\nfor _, tower in ipairs(towers) do\n    if tower ~= nil and tower.id ~= nil then\n        local entity = TensorCore.mGetEntity(tower.id)\n        if entity ~= nil and entity.pos ~= nil then\n            totalX = totalX + entity.pos.x\n            count = count + 1\n        end\n    end\nend\nif count == 0 then\n    stop()\n    return\nend\n\n-- Tanks solve Powdermark opposite the tower side.\nlocal towersEast = (totalX / count) > 100\nlocal safeX = towersEast and 84 or 116\nlocal safePos = { x = safeX, y = 0, z = 100 }\nlocal outsidePos = { x = 94, y = 0, z = 100 }\nlocal playerPos = { x = player.pos.x, y = player.pos.y or 0, z = player.pos.z }\nlocal center = { x = 100, y = 0, z = 100 }\n\nlocal drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0/255, 255/255, 0/255, .25), 2)\n\n-- Stay outside the first Burnt Strike hit.\nlocal outHeading = TensorCore.getHeadingToTarget(playerPos, outsidePos)\nlocal outDistance = TensorCore.getDistance2d(playerPos, outsidePos) - 1\nif outDistance > 0 then\n    drawer:addTimedArrow(6200, playerPos.x, playerPos.y, playerPos.z, outHeading, outDistance, 1, 1, 1, 0, true)\nend\n\n-- After the first hit, walk inward for the knockback and follow-up hits.\nlocal inHeading = TensorCore.getHeadingToTarget(safePos, center)\nlocal inDistance = TensorCore.getDistance2d(safePos, center) - 1\nif inDistance > 0 then\n    drawer:addTimedArrow(4700, safePos.x, safePos.y, safePos.z, inHeading, inDistance, 1, 1, 1, 6200, true)\nend\n\nstop()",
							name = "Outside then inside [AnyoneCore]",
							uuid = "9c207840-1e20-cb82-9be3-937e1f89604b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU",
				mechanicTime = 140.9,
				name = "[LPDU] Tank burnt strike dodge arrows",
				timelineIndex = 32,
				timerOffset = -5.8,
				uuid = "9d4d0faf-bff0-6093-9799-6f6dd11177f6",
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
				name = "store\\anyone\\fru\\fru",
				uuid = "e51df158-7ecb-871c-3668-04f2a8322b28",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[34] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "25a738cb-73a1-27a7-04a3-5a815cb5f5db",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[SAM] Tengentsu",
				uuid = "bd8d3c03-d1c5-04b8-8688-a04e7458d1c6",
				version = 2,
			},
			inheritedObjectUUID = "20f6de02-450b-700a-a0cf-5003bf05c86d",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[35] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "63248e9e-b450-b5aa-aead-fca42155b4ee",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[37] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "4742d6b4-b80e-7160-057d-57ce134e08c4",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[39] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "5ebada9a-9c19-dfae-a774-d280ea69e5ea",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[40] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "6310ab5a-e517-3e86-a211-ccd4594097aa",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[41] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "68e12a97-65b7-2513-912b-53f1189109a7",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[44] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "4de487d6-bdc3-39ca-0017-9af888d5c066",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Melee] Feint (Secondary)",
				uuid = "ad4a421c-5376-d97c-82bd-db7d8a9394f1",
				version = 2,
			},
			inheritedObjectUUID = "a7c69905-46e8-9f31-ac34-1b00bdc3f83d",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[SAM] Tengentsu",
				uuid = "92b5888d-7f0b-4f24-b365-f1a2993bd129",
				version = 2,
			},
			inheritedObjectUUID = "55aada8a-aac1-6489-ada2-44a32c50f81c",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[VPR] Feint (Secondary)",
				uuid = "c49bad4e-9f99-831b-8271-b7d0ea8cb9fe",
				version = 2,
			},
			inheritedObjectUUID = "376eff99-1f20-4468-b5e8-320b68666f38",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[Caster] Addle (Primary)",
				uuid = "230dd641-7084-4bd5-b361-03fecd71e639",
				version = 2,
			},
			inheritedObjectUUID = "f282ea3d-7b2b-1ebf-b28f-372aec183fcc",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[RPR] Arcane Crest",
				uuid = "79950ec8-8ab3-8f39-b7f6-955971a99cb6",
				version = 2,
			},
			inheritedObjectUUID = "a930ab91-fa98-fda0-8b1d-0d1dc4bf8c29",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Mitigation",
				uuid = "cc2c8f02-ba35-dd22-9c0e-cd74e4f9f0c0",
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
							actionID = 7549,
							conditions = 
							{
								
								{
									"60902c46-934f-9516-987a-bdc992a8be6b",
									true,
								},
								
								{
									"2fc6cabc-7d81-a6d9-af11-6f6750046dee",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] M2 Feint Diamond Dust",
							targetType = "Enemy",
							uuid = "dfa2ba3b-9e5d-0223-8e16-94638004236a",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"M2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "M2 roster",
							uuid = "60902c46-934f-9516-987a-bdc992a8be6b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Diamond Dust CD",
							uuid = "2fc6cabc-7d81-a6d9-af11-6f6750046dee",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 235.3,
				name = "[LPDU] M2 Feint Diamond Dust",
				timeRange = true,
				timelineIndex = 44,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "ce0d6841-de37-8538-a1b3-ea65fea3657b",
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
							actionID = 7560,
							conditions = 
							{
								
								{
									"a303ef31-3ca2-2415-b953-2c4253bb92ce",
									true,
								},
								
								{
									"610d7a10-75ef-c5ac-bc0f-435fd9e59192",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Addle Diamond Dust",
							targetType = "Enemy",
							uuid = "fd96bad6-32ae-eaeb-9d61-8f01be0d0d2a",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R1 roster",
							uuid = "a303ef31-3ca2-2415-b953-2c4253bb92ce",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Diamond Dust CD",
							uuid = "610d7a10-75ef-c5ac-bc0f-435fd9e59192",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 235.3,
				name = "[LPDU] R1 Addle Diamond Dust",
				timeRange = true,
				timelineIndex = 44,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "02d10366-f0da-f368-9b84-3d534de0ddac",
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
							actionID = 7405,
							conditions = 
							{
								
								{
									"1cac7b22-c12a-5b42-8c8b-ab7335ee33a2",
									true,
								},
								
								{
									"0b0c7903-5570-7517-893e-ec693c23ea14",
									true,
								},
								
								{
									"858f9cbd-ca21-dc9d-beb5-1c09a3dd6bef",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Troubadour - Diamond Dust",
							uuid = "ae8a339e-979d-c1fa-b47d-66523dc4874a",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							conditions = 
							{
								
								{
									"1cac7b22-c12a-5b42-8c8b-ab7335ee33a2",
									true,
								},
								
								{
									"b31d7644-3a69-9d59-9e7e-606fe07f1370",
									true,
								},
								
								{
									"1ff1c8f9-15b0-53f0-acd5-f8d11b145be2",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Tactician - Diamond Dust",
							uuid = "c944f185-3834-808c-ad89-d16ab66c71cc",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							conditions = 
							{
								
								{
									"1cac7b22-c12a-5b42-8c8b-ab7335ee33a2",
									true,
								},
								
								{
									"291c4cc5-c53a-6964-9d93-85fe18f1ab0f",
									true,
								},
								
								{
									"86ee9dd8-be80-eeb7-a910-dbe390832cb1",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Shield Samba - Diamond Dust",
							uuid = "bab27c2a-bacb-492f-b43e-a7228f85890e",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R2 roster",
							uuid = "1cac7b22-c12a-5b42-8c8b-ab7335ee33a2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Troubadour job",
							uuid = "0b0c7903-5570-7517-893e-ec693c23ea14",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7405,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "858f9cbd-ca21-dc9d-beb5-1c09a3dd6bef",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Tactician job",
							uuid = "b31d7644-3a69-9d59-9e7e-606fe07f1370",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "1ff1c8f9-15b0-53f0-acd5-f8d11b145be2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Shield Samba job",
							uuid = "291c4cc5-c53a-6964-9d93-85fe18f1ab0f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "86ee9dd8-be80-eeb7-a910-dbe390832cb1",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 235.3,
				name = "[LPDU] R2 Phys Ranged - Diamond Dust",
				timeRange = true,
				timelineIndex = 44,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "35f14784-58c2-3799-9b3d-e0b6f3f3764e",
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
							actionID = 34686,
							conditions = 
							{
								
								{
									"766cb330-ad27-e631-8659-944cd55ffd13",
									true,
								},
								
								{
									"abbb8a09-25b3-06b3-94c8-6d0518252821",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Tempera Grassa Diamond Dust",
							uuid = "f198b670-2ce9-c919-81d0-665fbb08d19f",
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
							jobValue = "PICTOMANCER",
							name = "PICTOMANCER job",
							uuid = "766cb330-ad27-e631-8659-944cd55ffd13",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 34686,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Diamond Dust CD",
							uuid = "abbb8a09-25b3-06b3-94c8-6d0518252821",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 235.3,
				name = "[LPDU] Tempera Grassa Diamond Dust",
				timeRange = true,
				timelineIndex = 44,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "ab901807-8277-685f-b707-4b9de555b609",
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
							actionID = 25857,
							conditions = 
							{
								
								{
									"8d343152-a4df-c87b-9b02-c512b033f687",
									true,
								},
								
								{
									"530e602e-41ab-2016-ba54-ed25d2a53320",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Magick Barrier Diamond Dust",
							uuid = "0590699d-84a4-b603-87f8-ee7ec89e22e5",
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
							jobValue = "REDMAGE",
							name = "REDMAGE job",
							uuid = "8d343152-a4df-c87b-9b02-c512b033f687",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25857,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Diamond Dust CD",
							uuid = "530e602e-41ab-2016-ba54-ed25d2a53320",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 235.3,
				name = "[LPDU] Magick Barrier Diamond Dust",
				timeRange = true,
				timelineIndex = 44,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "d9b87fba-e653-1235-8257-d25c249a0919",
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
							actionID = 7408,
							conditions = 
							{
								
								{
									"cac53905-3e44-86e8-8ccd-32a63224ff0d",
									true,
								},
								
								{
									"0b458eb9-33b8-3333-b557-bd2362baa83e",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Nature's Minne Diamond Dust",
							uuid = "c6d3b42f-2751-b214-b75e-3141a1c2439b",
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
							name = "BARD job",
							uuid = "cac53905-3e44-86e8-8ccd-32a63224ff0d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7408,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Diamond Dust CD",
							uuid = "0b458eb9-33b8-3333-b557-bd2362baa83e",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 235.3,
				name = "[LPDU] Nature's Minne Diamond Dust",
				timeRange = true,
				timelineIndex = 44,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "445abf68-d880-dd87-ad2f-48080fa0b582",
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
							actionID = 65,
							conditions = 
							{
								
								{
									"07db0613-f0c4-8d10-99d7-2374e494e775",
									true,
								},
								
								{
									"5a522b49-70db-d962-8b6d-cd9c00f0fd91",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Mantra Diamond Dust",
							uuid = "85733c1a-9251-2a75-a774-b02b70208677",
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
							jobValue = "MONK",
							name = "MONK job",
							uuid = "07db0613-f0c4-8d10-99d7-2374e494e775",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 65,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Diamond Dust CD",
							uuid = "5a522b49-70db-d962-8b6d-cd9c00f0fd91",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 235.3,
				name = "[LPDU] Mantra Diamond Dust",
				timeRange = true,
				timelineIndex = 44,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "d9d022a2-c277-0e2c-a6e2-2e9a5735d406",
				version = 2,
			},
		},
	},
	[45] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "31c44ba3-bfa0-9fc7-bce3-78259ac349f3",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Draw] Echo DD",
				uuid = "fddc0885-4e93-a9c1-a4d2-5ae2c5ad77f3",
				version = 2,
			},
			inheritedObjectUUID = "e5bf26cb-6d89-052c-9f8f-833c4311c96e",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU_megaminx_indicator",
				uuid = "909bb23a-47e2-0466-e4cf-391c5e27164a",
			},
			inheritanceRoot = "FRU_megaminx_indicator",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "get marked player",
				uuid = "8397dac0-83e0-7d9a-bfb7-8aea954b3d83",
				version = 2,
			},
			inheritedObjectUUID = "1102ae37-b37c-9cda-b74d-ac98ad9d15df",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "get iciles",
				uuid = "843fca5a-3663-ecc8-b481-48bb12952695",
				version = 2,
			},
			inheritedObjectUUID = "862dc634-93cc-4d5d-b3fe-521dd4eb0174",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "get in/out",
				uuid = "6264b26f-d45a-b4f1-80aa-3da9188766b6",
				version = 2,
			},
			inheritedObjectUUID = "940cefba-95d0-66e2-8bf7-f7fe3e58b6e9",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "DD indicator edi",
				uuid = "e636ab20-ed16-e703-a0fe-f96b884544af",
				version = 2,
			},
			inheritedObjectUUID = "922f001e-6d09-c617-807a-ad3b84a49de5",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU_LPDU_P2_DD",
				uuid = "1b8b1bd1-8ff2-75d9-8aa4-3e24a707fac2",
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
							actionLua = "if data.lpdu_p2_DD_marked == nil then data.lpdu_p2_DD_marked = {} end\ntable.insert(data.lpdu_p2_DD_marked,eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"4449beae-b0bb-3e52-b128-d62553de59df",
									true,
								},
							},
							name = "[LPDU] Capture marker target",
							uuid = "e1f72584-55f4-18a6-b640-56c881af6ff7",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							eventArgType = 2,
							eventMarkerID = 345,
							uuid = "4449beae-b0bb-3e52-b128-d62553de59df",
							version = 3,
						},
					},
				},
				displayPath = "FRU_LPDU_P2_DD",
				eventType = 4,
				loop = true,
				mechanicTime = 238.9,
				name = "[LPDU] Capture DD marked players [AnyoneCore]",
				timeRange = true,
				timelineIndex = 45,
				timerEndOffset = 5,
				timerStartOffset = -5,
				uuid = "d06ae3b7-d69b-0395-ad54-5e701e4ea3b5",
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
							actionLua = "if data.lpdu_p2_DD_icicle == nil then data.lpdu_p2_DD_icicle = {} end\ntable.insert(data.lpdu_p2_DD_icicle,eventArgs.entityID)\nself.used = true",
							conditions = 
							{
								
								{
									"5718a59b-fcea-0354-8f39-838fb55b4143",
									true,
								},
								
								{
									"04d88986-264a-f3d3-9ad9-b0b9e6bd7a2b",
									true,
								},
							},
							name = "[LPDU] Capture icicle entity",
							uuid = "3ae5a9a0-0b00-dfde-9448-248adf64180e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							eventArgType = 2,
							eventSpellID = 40198,
							uuid = "5718a59b-fcea-0354-8f39-838fb55b4143",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.lpdu_p2_DD_icicle == nil or table.size(data.lpdu_p2_DD_icicle) < 2",
							name = "[LPDU] Fewer than two icicles captured",
							uuid = "04d88986-264a-f3d3-9ad9-b0b9e6bd7a2b",
							version = 3,
						},
					},
				},
				displayPath = "FRU_LPDU_P2_DD",
				eventType = 3,
				loop = true,
				mechanicTime = 238.9,
				name = "[LPDU] Capture DD icicles [AnyoneCore]",
				timeRange = true,
				timelineIndex = 45,
				timerEndOffset = 5,
				timerStartOffset = -5,
				uuid = "767a90a5-cd6c-7e6f-88fe-87512023b7dc",
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
							actionLua = "if data.lpdu_p2_inout == nil then data.lpdu_p2_inout = 1 end --out\nself.used = true",
							conditions = 
							{
								
								{
									"db09f637-ba4e-5589-9364-d4e4780aa421",
									true,
								},
							},
							name = "[LPDU] Set outside - Axe Kick",
							uuid = "b187e5f5-278f-aaa3-a312-39bca456acc4",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "if data.lpdu_p2_inout == nil then data.lpdu_p2_inout = 0 end --in\nself.used = true",
							conditions = 
							{
								
								{
									"4cd39ed5-ac5f-0637-bb7c-cc97f42b1570",
									true,
								},
							},
							name = "[LPDU] Set inside - Scythe Kick",
							uuid = "501923bd-9b20-8001-b768-d8e0b7976507",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							eventArgType = 2,
							eventSpellID = 40202,
							uuid = "db09f637-ba4e-5589-9364-d4e4780aa421",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							eventArgType = 2,
							eventSpellID = 40203,
							uuid = "4cd39ed5-ac5f-0637-bb7c-cc97f42b1570",
							version = 3,
						},
					},
				},
				displayPath = "FRU_LPDU_P2_DD",
				eventType = 3,
				mechanicTime = 238.9,
				name = "[LPDU] Detect Axe/Scythe safe side [AnyoneCore]",
				timeRange = true,
				timelineIndex = 45,
				timerEndOffset = 5,
				timerStartOffset = -5,
				uuid = "69aeaa3b-8e88-6f1e-83b6-b8043e3e0846",
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
							actionLua = "local p = TensorCore.mGetPlayer()\nlocal center = {x = 100, y = 0, z = 100}\nlocal green = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0/255, 255/255, 0/255, .25), 2)\nlocal index\nlocal heading2North = TensorCore.getHeadingToTarget(center, {x = 100, y = 0, z = 70})\n\n-- Resolve the player's LPDU party slot.\nlocal roster = AnyoneCore and AnyoneCore.Roster\nif roster == nil or roster.current() == nil or not roster.isReady() or p == nil then\n    self.used = true\n    return\nend\nlocal mySlot = roster.mySlot()\nlocal myRole = (mySlot == \"T1\" and \"MT\") or (mySlot == \"T2\" and \"OT\") or mySlot\nif myRole == \"MT\" then index = 1\nelseif myRole == \"OT\" then index = 2\nelseif myRole == \"H1\" then index = 3\nelseif myRole == \"H2\" then index = 4\nelseif myRole == \"M1\" then index = 5\nelseif myRole == \"M2\" then index = 6\nelseif myRole == \"R1\" then index = 7\nelseif myRole == \"R2\" then index = 8\nelse\n    self.used = true\n    return\nend\n\n-- LPDU groups: G1 = T1/H1/M1/R1 (red/purple); G2 = T2/H2/M2/R2 (yellow/blue).\nlocal isMarked = false\nfor i = 1, #data.lpdu_p2_DD_marked do\n    if p.id == data.lpdu_p2_DD_marked[i] then\n        isMarked = true\n        break\n    end\nend\n\nlocal ent1 = TensorCore.mGetEntity(data.lpdu_p2_DD_icicle[1])\nif ent1 == nil or ent1.pos == nil then\n    self.used = true\n    return\nend\nlocal inout = data.lpdu_p2_inout -- 1: out, 0: in\nlocal intercard = math.abs(ent1.pos.x - 100) > 10 and math.abs(ent1.pos.z - 100) > 10\n\nlocal function getHeading(index, baseHeading, intercard)\n    local angleOffsetsCardinal = {0, -math.pi/2, math.pi/2, math.pi, math.pi/2, math.pi, 0, -math.pi/2}\n    local angleOffsetsIntercard = {math.pi/4, -math.pi/4, 3*math.pi/4, -3*math.pi/4, 3*math.pi/4, -3*math.pi/4, math.pi/4, -math.pi/4}\n    local offsets = intercard and angleOffsetsIntercard or angleOffsetsCardinal\n    return baseHeading + (offsets[index] or 0)\nend\n\nlocal heading\nif isMarked then\n    if intercard then\n        -- Marked and intercard: use the role's cardinal lane.\n        heading = getHeading(index, heading2North, false)\n    else\n        -- Marked and cardinal: use the role's intercardinal lane.\n        heading = getHeading(index, heading2North, true)\n    end\nelse\n    if intercard then\n        heading = getHeading(index, heading2North, true)\n    else\n        heading = getHeading(index, heading2North, false)\n    end\nend\n\n-- Keep the first role-selected arrow. The delayed return/opposing arrow is removed.\nlocal targetDistance\nif inout == 0 then\n    targetDistance = isMarked and 3 or 2\nelse\n    targetDistance = isMarked and 19 or 16\nend\nlocal targetPos = TensorCore.getPosInDirection(center, heading, targetDistance)\nlocal arrowLength = TensorCore.getDistance2d(center, targetPos) - 1\nif arrowLength > 0.1 then\n    green:addTimedArrow(5000, center.x, center.y, center.z, heading, arrowLength, 1, 1, 1, 0, true)\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"52ec8cf2-63b6-72c2-8b8d-27e7df70e8be",
									true,
								},
							},
							name = "[LPDU] DD single role arrow",
							uuid = "a7b303bb-8e57-76f0-a437-50c4b11dce00",
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
							conditionLua = "return data.lpdu_p2_DD_marked ~= nil and table.size(data.lpdu_p2_DD_marked) == 4 and data.lpdu_p2_DD_icicle ~= nil and table.size(data.lpdu_p2_DD_icicle) >= 2 and data.lpdu_p2_inout ~= nil",
							name = "[LPDU] DD state ready (backup)",
							uuid = "52ec8cf2-63b6-72c2-8b8d-27e7df70e8be",
							version = 3,
						},
					},
				},
				displayPath = "FRU_LPDU_P2_DD",
				mechanicTime = 238.9,
				name = "[LPDU] Diamond Dust role arrow [AnyoneCore]",
				timeRange = true,
				timelineIndex = 45,
				timerEndOffset = 10,
				timerStartOffset = -10,
				uuid = "9baaddaf-ec8c-75bf-93f3-eb7bb8f0745a",
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
							actionLua = "local p = TensorCore.mGetPlayer()\nlocal spellID = eventArgs and eventArgs.spellID\nlocal inout\nif spellID == 40202 then\n    inout = 1 -- Axe Kick: out\nelseif spellID == 40203 then\n    inout = 0 -- Scythe Kick: in\nelse\n    self.used = true\n    return\nend\n\nlocal roster = AnyoneCore and AnyoneCore.Roster\nif roster == nil or roster.current() == nil or not roster.isReady() or p == nil then\n    self.used = true\n    return\nend\n\nlocal mySlot = roster.mySlot()\nlocal myRole = (mySlot == \"T1\" and \"MT\") or (mySlot == \"T2\" and \"OT\") or mySlot\nlocal index\nif myRole == \"MT\" then index = 1\nelseif myRole == \"OT\" then index = 2\nelseif myRole == \"H1\" then index = 3\nelseif myRole == \"H2\" then index = 4\nelseif myRole == \"M1\" then index = 5\nelseif myRole == \"M2\" then index = 6\nelseif myRole == \"R1\" then index = 7\nelseif myRole == \"R2\" then index = 8\nelse\n    self.used = true\n    return\nend\n\n-- LPDU color pairs: Red=MT/R1, Purple=H1/M1, Yellow=OT/R2, Blue=H2/M2.\n-- G1 is Red+Purple; G2 is Yellow+Blue. Each client draws only its own role's spot.\nlocal icicles = data.lpdu_p2_DD_icicle\nlocal ent1 = TensorCore.mGetEntity(icicles[1])\nlocal ent2 = TensorCore.mGetEntity(icicles[2])\nif ent1 == nil or ent2 == nil or ent1.pos == nil or ent2.pos == nil then\n    self.used = true\n    return\nend\n\nlocal isMarked = false\nlocal marked = data.lpdu_p2_DD_marked\nfor i = 1, #marked do\n    if p.id == marked[i] then\n        isMarked = true\n        break\n    end\nend\n\nlocal intercard = math.abs(ent1.pos.x - 100) > 10 and math.abs(ent1.pos.z - 100) > 10\nlocal goCardinal = (isMarked == intercard)\nlocal inDist = isMarked and 3 or 1.5\nlocal outDist = isMarked and 19 or 16\nlocal finalDist = (inout == 0) and inDist or outDist\n\nlocal cardinalOffsets = {\n    [1] = 0,\n    [2] = -math.pi / 2,\n    [3] = math.pi / 2,\n    [4] = math.pi,\n    [5] = math.pi / 2,\n    [6] = math.pi,\n    [7] = 0,\n    [8] = -math.pi / 2,\n}\nlocal intercardOffsets = {\n    [1] = math.pi / 4,\n    [2] = -math.pi / 2 + math.pi / 4,\n    [3] = math.pi / 2 + math.pi / 4,\n    [4] = math.pi + math.pi / 4,\n    [5] = math.pi / 2 + math.pi / 4,\n    [6] = math.pi + math.pi / 4,\n    [7] = math.pi / 4,\n    [8] = -math.pi / 2 + math.pi / 4,\n}\n\nlocal center = { x = 100, y = 0, z = 100 }\nlocal heading2North = TensorCore.getHeadingToTarget(center, { x = 100, y = 0, z = 70 })\nlocal offsets = goCardinal and cardinalOffsets or intercardOffsets\nlocal heading = heading2North + offsets[index]\nlocal pos = TensorCore.getPosInDirection(center, heading, finalDist)\nlocal arrowLen = TensorCore.getDistance2d(center, pos) - 1\nlocal green = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0, 1, 0, 0.25), 2)\ngreen:addTimedArrow(5000, 100, 0, 100, heading, arrowLen, 1, 1, 1, 0, true)\n\nself.used = true",
							conditions = 
							{
								
								{
									"4ca12a9f-4855-1996-b89a-7ea82d8545e7",
									true,
								},
								
								{
									"27457eb4-d921-5e3d-b5a3-9067382032da",
									true,
								},
							},
							name = "[LPDU] DD personal color arrow",
							uuid = "1ae73bce-3ef7-eeb8-98f4-6ee8a7fe456e",
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
							conditionLua = "return data.lpdu_p2_DD_marked ~= nil and table.size(data.lpdu_p2_DD_marked) == 4 and data.lpdu_p2_DD_icicle ~= nil and table.size(data.lpdu_p2_DD_icicle) >= 2",
							name = "[LPDU] DD state ready",
							uuid = "27457eb4-d921-5e3d-b5a3-9067382032da",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs ~= nil and (eventArgs.spellID == 40202 or eventArgs.spellID == 40203) and eventArgs.entityContentID == 13554",
							dequeueIfLuaFalse = true,
							name = "[LPDU] DD kick event",
							uuid = "4ca12a9f-4855-1996-b89a-7ea82d8545e7",
							version = 3,
						},
					},
				},
				displayPath = "FRU_LPDU_P2_DD",
				enabled = false,
				eventType = 3,
				mechanicTime = 238.9,
				name = "[LPDU] Diamond Dust personal arrows [AnyoneCore]",
				timeRange = true,
				timelineIndex = 45,
				timerEndOffset = 10,
				timerStartOffset = -10,
				uuid = "cc039795-79f7-da0c-b26b-6d6908696b8b",
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
				name = "store\\anyone\\fru\\fru",
				uuid = "d465c38c-bf9a-7780-aede-f9a223bb691c",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[47] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "b9cc19c9-41bf-764d-f50e-d83fb3b91759",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU",
				uuid = "d7754ce1-43f9-31df-b281-ae56224ebe38",
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
							actionLua = "local function stop()\n    self.used = true\nend\n\nlocal player = TensorCore.mGetPlayer()\nif player == nil or player.pos == nil then\n    stop()\n    return\nend\n\nlocal playerPos = {\n    x = player.pos.x,\n    y = player.pos.y or 0,\n    z = player.pos.z\n}\nlocal center = { x = 100, y = 0, z = 100 }\nlocal distance = TensorCore.getDistance2d(playerPos, center) - 1\nif distance <= 0 then\n    stop()\n    return\nend\n\nlocal heading = TensorCore.getHeadingToTarget(playerPos, center)\nlocal drawer = TensorCore.getStaticDrawer(\n    GUI:ColorConvertFloat4ToU32(0 / 255, 255 / 255, 0 / 255, .25),\n    2\n)\ndrawer:addTimedArrow(\n    2500,\n    playerPos.x,\n    playerPos.y,\n    playerPos.z,\n    heading,\n    distance,\n    1,\n    1,\n    1,\n    0,\n    true\n)\n\nstop()",
							name = "[LPDU] Move in to center arrow",
							uuid = "f739c6be-8c83-5c54-801f-c9b41da1cb7e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU",
				mechanicTime = 245.1,
				name = "[LPDU] Move in to center arrow",
				timelineIndex = 47,
				timerOffset = -0.5,
				uuid = "bbe2e59f-ef58-842e-a99b-534932dc44b1",
				version = 2,
			},
		},
	},
	[49] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "8892125f-d46d-713b-7fba-ee298903f2af",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Draw] Arrow to Shiva",
				uuid = "4d063cdd-d2f0-c9d8-ac17-4defc3a370fc",
				version = 2,
			},
			inheritedObjectUUID = "c82ab30b-a6ec-9e9a-861d-9ad8b179060b",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[50] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "5dcf1acd-97e0-9329-e701-0fa7d9f7495d",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[NIN] Shade Shift",
				uuid = "66b4da1d-4330-42cd-8a6d-3dbe04c538ea",
				version = 2,
			},
			inheritedObjectUUID = "7cc2a702-0e53-c0db-8fdd-82f576fadfc3",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[SAM] Tengentsu",
				uuid = "9056d402-f108-0c27-ad7e-ceb1e212be2f",
				version = 2,
			},
			inheritedObjectUUID = "beb66939-df91-1930-9936-1f821f493a3c",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[MNK] Mantra",
				uuid = "18c87570-fd45-0cf7-a27c-97daa7f5f928",
				version = 2,
			},
			inheritedObjectUUID = "41d89acf-e12d-c377-84f4-b9b08180287f",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Mitigation",
				uuid = "9610cf5c-89cd-a6f2-9003-4e696615df6f",
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
							actionID = 7405,
							conditions = 
							{
								
								{
									"86140771-c45f-826a-aec1-91aef50c0fb8",
									true,
								},
								
								{
									"938abd7a-37ed-169e-85b2-58f074b28a51",
									true,
								},
								
								{
									"1251fa46-a6ae-c2f2-99d2-048d9fa3fdfa",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Troubadour - Diamond Dust Knockback",
							uuid = "4cb5158b-21e4-9ddf-8841-b5cfa9e046b0",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							conditions = 
							{
								
								{
									"86140771-c45f-826a-aec1-91aef50c0fb8",
									true,
								},
								
								{
									"8c285a97-7a0a-e640-897c-d34e149bb710",
									true,
								},
								
								{
									"b7a6fe91-c6dd-18db-b441-fa8b46d49931",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Tactician - Diamond Dust Knockback",
							uuid = "c41ca895-2c8d-8df8-a58d-8249c84ad7de",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							conditions = 
							{
								
								{
									"86140771-c45f-826a-aec1-91aef50c0fb8",
									true,
								},
								
								{
									"1e8066c0-b59c-9253-bac9-7f0e750b8412",
									true,
								},
								
								{
									"63d8c76c-7521-00c8-8d58-f7e967db38d3",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Shield Samba - Diamond Dust Knockback",
							uuid = "0e87fd29-97c7-699f-8811-023a577fb7ba",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R1 roster",
							uuid = "86140771-c45f-826a-aec1-91aef50c0fb8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Troubadour job",
							uuid = "938abd7a-37ed-169e-85b2-58f074b28a51",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7405,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "1251fa46-a6ae-c2f2-99d2-048d9fa3fdfa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Tactician job",
							uuid = "8c285a97-7a0a-e640-897c-d34e149bb710",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "b7a6fe91-c6dd-18db-b441-fa8b46d49931",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Shield Samba job",
							uuid = "1e8066c0-b59c-9253-bac9-7f0e750b8412",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "63d8c76c-7521-00c8-8d58-f7e967db38d3",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 251.1,
				name = "[LPDU] R1 Phys Ranged - Diamond Dust Knockback",
				timeRange = true,
				timelineIndex = 50,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "a5c5cf80-9cbc-d7e9-bebb-dba214d626f5",
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
							actionID = 16014,
							conditions = 
							{
								
								{
									"6ea7e83f-7f3d-8ba1-87f3-0ffb452ac511",
									true,
								},
								
								{
									"fb2674e7-e79c-b312-9f25-7e87d31eccb0",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Improvisation Diamond Dust Knockback",
							uuid = "8f4b373e-aa2b-a4e1-a0c2-69341c53102a",
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
							jobValue = "DANCER",
							name = "DANCER job",
							uuid = "6ea7e83f-7f3d-8ba1-87f3-0ffb452ac511",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16014,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Diamond Dust Knockback CD",
							uuid = "fb2674e7-e79c-b312-9f25-7e87d31eccb0",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 251.1,
				name = "[LPDU] Improvisation Diamond Dust Knockback",
				timeRange = true,
				timelineIndex = 50,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "c7f2dc15-9dbe-b3e7-a873-58ab9a0bf369",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU_LPDU_P2_DD",
				uuid = "b6f21105-6f9e-9987-8182-c1c020f6c984",
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
							actionLua = "local player = TensorCore.mGetPlayer()\nlocal roster = AnyoneCore and AnyoneCore.Roster\nif player == nil or player.pos == nil or roster == nil or roster.current() == nil or not roster.isReady() then\n    self.used = true\n    return\nend\n\nlocal slot = roster.mySlot()\n-- LPDU groups: G1 = T1/H1/M1/R1; G2 = T2/H2/M2/R2.\nlocal group1 = slot == \"T1\" or slot == \"MT\" or slot == \"H1\" or slot == \"M1\" or slot == \"R1\"\nlocal group2 = slot == \"T2\" or slot == \"OT\" or slot == \"H2\" or slot == \"M2\" or slot == \"R2\"\nif not group1 and not group2 then\n    self.used = true\n    return\nend\n\n-- The first two Icicle Impacts identify the opposite LPDU landing sides.\nlocal icicles = data.lpdu_p2_DD_icicle\nif icicles == nil or #icicles < 2 then\n    self.used = true\n    return\nend\n\nlocal state = data.lpdu_p2_DD_knockback_tether\nif state == nil then\n    state = {\n        center = { x = 100, y = 0, z = 100 },\n        impactPos = {},\n        playerPos = {},\n        safeCircleUUID = nil,\n        landingCircleUUID = nil,\n        tetherUUID = nil\n    }\n    data.lpdu_p2_DD_knockback_tether = state\nend\nlocal center = state.center\nlocal impactPos = state.impactPos\n\nlocal safeIcicle\nfor i = 1, 2 do\n    local ent = TensorCore.mGetEntity(icicles[i])\n    if ent ~= nil and ent.pos ~= nil then\n        impactPos.x = ent.pos.x\n        impactPos.y = 0\n        impactPos.z = ent.pos.z\n        local dx = impactPos.x - center.x\n        local dz = impactPos.z - center.z\n        -- LPDU priority: G1 takes north/west; G2 takes east/south.\n        local safeForG1 = (math.abs(dx) <= 4 and dz < 0) or dx < -4\n        if safeForG1 == group1 then\n            safeIcicle = ent\n            break\n        end\n    end\nend\n\nif safeIcicle == nil or safeIcicle.pos == nil then\n    self.used = true\n    return\nend\n\nimpactPos.x = safeIcicle.pos.x\nimpactPos.y = 0\nimpactPos.z = safeIcicle.pos.z\nlocal sideHeading = TensorCore.getHeadingToTarget(center, impactPos)\nif sideHeading == nil then\n    self.used = true\n    return\nend\n\nlocal standX, standY, standZ = TensorCore.getPosInDirection(center, sideHeading, 2.5, true)\nif standX == nil or standZ == nil then\n    self.used = true\n    return\nend\n\n-- Bright yellow separates guidance from the blue/red floor.\nlocal safeDrawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1, .9, 0, .55), 3)\nstate.safeDrawer = safeDrawer\nif state.safeCircleUUID ~= nil then\n    if not safeDrawer:updateTimedCircle(state.safeCircleUUID, 3500, standX, 0, standZ, 1, 0, true) then\n        Argus.deleteTimedShape(state.safeCircleUUID)\n        state.safeCircleUUID = nil\n    end\nend\nif state.safeCircleUUID == nil then\n    state.safeCircleUUID = safeDrawer:addTimedCircle(3500, standX, 0, standZ, 1, 0, true)\nend\n\nlocal playerPos = state.playerPos\nplayerPos.x = player.pos.x\nplayerPos.y = player.pos.y or 0\nplayerPos.z = player.pos.z\n\n-- Heavenly Strike knocks outward from its observed arena-center source.\n-- Previous pull positions measured 14.6-16.2 yalms, so the guide uses 15.5.\nlocal knockbackHeading = TensorCore.getHeadingToTarget(center, playerPos)\nif knockbackHeading == nil then\n    self.used = true\n    return\nend\nlocal landingX, landingY, landingZ = TensorCore.getPosInDirection(playerPos, knockbackHeading, 15.5, true)\nif landingX == nil or landingZ == nil then\n    self.used = true\n    return\nend\n\nlocal tetherDrawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1, .9, 0, .98), 3)\nstate.tetherDrawer = tetherDrawer\n\n-- Refresh one player-to-landing tether and endpoint as the player moves.\nif state.tetherUUID ~= nil then\n    if not tetherDrawer:updateTimedLine(\n        state.tetherUUID, 500,\n        playerPos.x, playerPos.y, playerPos.z,\n        landingX, landingY or playerPos.y, landingZ,\n        0.35, 0.9, 0) then\n        Argus.deleteTimedShape(state.tetherUUID)\n        state.tetherUUID = nil\n    end\nend\nif state.tetherUUID == nil then\n    state.tetherUUID = tetherDrawer:addTimedLine(\n        500,\n        playerPos.x, playerPos.y, playerPos.z,\n        landingX, landingY or playerPos.y, landingZ,\n        0.35, 0.9, 0)\nend\n\n-- Keep the landing marker aligned with the refreshed tether endpoint.\nif state.landingCircleUUID ~= nil then\n    if not tetherDrawer:updateTimedCircle(\n        state.landingCircleUUID, 500, landingX, 0, landingZ, 0.9, 0, true) then\n        Argus.deleteTimedShape(state.landingCircleUUID)\n        state.landingCircleUUID = nil\n    end\nend\nif state.landingCircleUUID == nil then\n    state.landingCircleUUID = tetherDrawer:addTimedCircle(500, landingX, 0, landingZ, 0.9, 0, true)\nend\n\n-- Mark this update complete; Loop Reaction refreshes until the impact time.\nself.used = true",
							name = "[LPDU] Personal knockback bait circle",
							uuid = "5a58e4d3-f2b5-5095-945e-1bfb1d650194",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "FRU_LPDU_P2_DD",
				loop = true,
				mechanicTime = 251.1,
				name = "[LPDU] Diamond Dust personal knockback spot [AnyoneCore]",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 50,
				timerStartOffset = -3.1,
				uuid = "a883042d-b6e0-faa6-bd63-3a48ddf2da61",
				version = 2,
			},
		},
	},
	[53] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU_LPDU_P2_DD",
				uuid = "88aa9791-d6a0-68fe-8b91-3316aa7ac05b",
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
							actionLua = "local a = eventArgs\nif a == nil or a.spellID ~= 40208 or type(a.channelTimeMax) ~= \"number\" then self.used = true; return end\nlocal player = TensorCore.mGetPlayer()\nlocal roster = AnyoneCore and AnyoneCore.Roster\nif player == nil or player.pos == nil or roster == nil or not roster.isReady() then self.used = true; return end\nlocal slot = roster.mySlot()\nlocal group2 = slot == \"T2\" or slot == \"OT\" or slot == \"H2\" or slot == \"M2\" or slot == \"R2\"\nif not group2 and not (slot == \"T1\" or slot == \"MT\" or slot == \"H1\" or slot == \"M1\" or slot == \"R1\") then self.used = true; return end\nlocal center = { x = 100, y = 0, z = 100 }\nlocal north = TensorCore.getHeadingToTarget(center, { x = 100, y = 0, z = 90 })\nlocal groupHeading = group2 and (north + math.pi) or north\nlocal clockwise = true\nlocal shiva = TensorCore.mGetEntity(a.entityID)\nlocal shivaHeading = shiva and shiva.pos and tonumber(shiva.pos.h)\nif group2 and shivaHeading ~= nil then\n    local delta = (shivaHeading - groupHeading) % (2 * math.pi)\n    if delta >= math.pi / 8 and delta <= 3 * math.pi / 8 then clockwise = false end\nend\nlocal moveHeading = groupHeading + (clockwise and math.pi / 2 or -math.pi / 2)\nlocal green = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0, 1, 0, .98), 2)\ngreen:addTimedArrowOnEnt(6800, player.id, 3.5, 1, 1.35, 2.4, nil, 0, false, moveHeading, true)\nself.used = true",
							conditions = 
							{
								
								{
									"23341b59-442c-5cde-ade5-934aa98f0756",
									true,
								},
							},
							endIfUsed = true,
							name = "Green clockwise or counterclockwise arrow",
							uuid = "c0bdc216-b8a4-7ac5-9b3a-8b16c452e90d",
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
							conditionLua = "return eventArgs ~= nil and eventArgs.spellID == 40208",
							name = "Sinbound Holy cast",
							uuid = "23341b59-442c-5cde-ade5-934aa98f0756",
							version = 3,
						},
					},
				},
				displayPath = "FRU_LPDU_P2_DD",
				enabled = false,
				eventType = 3,
				mechanicTime = 255.1,
				name = "[LPDU] Diamond Dust puddle direction arrow [AnyoneCore]",
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = 0.5,
				timerStartOffset = -6.5,
				uuid = "7216e268-5c63-2fdd-8636-0bd023581cbc",
				version = 2,
			},
		},
	},
	[57] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "0126e306-15ff-29ba-f22b-6f1ce5381116",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Ranged] rDPS Mit",
				uuid = "533ca645-e97f-9e84-bee6-69e139923d4d",
				version = 2,
			},
			inheritedObjectUUID = "a5b42838-c69a-0b07-8a60-fbef23761e44",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[RDM] Barrier",
				uuid = "08e886b4-6c11-9b87-8824-d71fea8cea2b",
				version = 2,
			},
			inheritedObjectUUID = "6d41d5c8-9dda-ece9-97f3-e5d89ff45931",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[DNC] Curing Waltz",
				uuid = "bf648c02-04c5-5dd9-9f50-4925fd10db47",
				version = 2,
			},
			inheritedObjectUUID = "94d7dc7b-7a0c-3684-b984-f05c33ce372c",
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
				name = "store\\anyone\\fru\\fru",
				uuid = "b11d8d75-a950-f8f1-5773-f8af6fc4f705",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[59] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "44c21a88-ba37-71d4-dc10-9ad2c45c4c58",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[61] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "bf38c6e5-166d-a721-c394-24e3ae783df5",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU",
				uuid = "d6299a57-d3e5-ceef-bf72-71734bc12b86",
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
							actionLua = "local name = eventArgs.aoeName\nlocal heading = tonumber(eventArgs.heading)\nlocal x, y, z = tonumber(eventArgs.x), tonumber(eventArgs.y), tonumber(eventArgs.z)\nlocal radius = tonumber(eventArgs.aoeLength) or 40\nlocal castDuration = tonumber(eventArgs.duration) or 3.2\n\nif (name ~= \"Twin Silence\" and name ~= \"Twin Stillness\")\n    or heading == nil or x == nil or y == nil or z == nil then\n    self.used = true\n    return\nend\n\nif radius < 1 then\n    radius = 40\nend\nif castDuration < 0.25 then\n    castDuration = 3.2\nend\n\n-- Twin Silence is front-safe first; Twin Stillness is back-safe first.\nlocal safeHeading = heading\nif name == \"Twin Stillness\" then\n    safeHeading = heading + math.pi\nend\nlocal timeout = math.floor(castDuration * 1000 + 750)\n\n-- Invisible blocker on default channel 0, for the safe half only.\nlocal state = data.frup2_lpdu_tts_safe_side\nif state == nil then\n    state = {}\n    data.frup2_lpdu_tts_safe_side = state\nend\nlocal safeSide = TensorCore.getStaticDrawer(\n    GUI:ColorConvertFloat4ToU32(0, 0, 0, 0),\n    2,\n    0,\n    Argus2.RenderFlags.FLAG_OCCLUDE\n)\nlocal updated = false\nif state.safeConeUUID ~= nil then\n    updated = safeSide:updateTimedCone(\n        state.safeConeUUID, timeout, x, y, z, radius, math.pi,\n        safeHeading, 0, false, true, Argus2.RenderFlags.FLAG_OCCLUDE\n    )\nend\nif not updated then\n    state.safeConeUUID = safeSide:addTimedCone(\n        timeout, x, y, z, radius, math.pi, safeHeading,\n        0, false, true, Argus2.RenderFlags.FLAG_OCCLUDE\n    )\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"e4490b55-40e8-da7a-887b-7c1561cd33fa",
									true,
								},
							},
							endIfUsed = true,
							name = "Transparent safe-side occluder",
							uuid = "76da5869-cb67-45a2-bfcc-f0cb39127cb7",
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
							conditionLua = "return eventArgs.aoeName == \"Twin Silence\" or eventArgs.aoeName == \"Twin Stillness\"",
							name = "Twin Silence or Stillness AOE",
							uuid = "e4490b55-40e8-da7a-887b-7c1561cd33fa",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 18,
				loop = true,
				mechanicTime = 272.3,
				name = "[LPDU] Twin Silence Stillness Safe Side",
				timeRange = true,
				timelineIndex = 61,
				timerEndOffset = 5,
				timerStartOffset = -10,
				uuid = "0bab49ee-f15c-2fef-b3eb-9a3439929e2a",
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
							actionLua = "local a=eventArgs\nif a == nil or (a.spellID ~= 40193 and a.spellID ~= 40194) then self.used=true;return end\nlocal caster=TensorCore.mGetEntity(a.entityID)\nif caster == nil or caster.pos == nil or type(caster.pos.h) ~= \"number\" then self.used=true;return end\n-- LPDU: Silence front first; Stillness back first. This is the slide\n-- destination, not a knockback prediction or a second-cleave marker.\nlocal heading=caster.pos.h+(a.spellID==40193 and math.pi or 0)\nlocal x,y,z=TensorCore.getPosInDirection(caster.pos,heading,4.5,true)\nif x == nil or z == nil then self.used=true;return end\nif (x-100)^2+(z-100)^2>18.5^2 then self.used=true;return end\nlocal timeout=math.floor(a.channelTimeMax*1000+300)\nlocal green=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.55),2,1)\ngreen:addTimedCircle(timeout,x,(y or 0)+.05,z,1.2,0,true)\nself.used=true",
							conditions = 
							{
								
								{
									"e060dffc-708c-3f7f-8a88-45d575b4f60b",
									true,
								},
							},
							name = "Green safe slide destination",
							uuid = "152d8fa9-2d4e-3a2a-a19b-aa749d9e53ce",
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
							conditionLua = "return eventArgs ~= nil and (eventArgs.spellID == 40193 or eventArgs.spellID == 40194)",
							name = "First Shiva cleave",
							uuid = "e060dffc-708c-3f7f-8a88-45d575b4f60b",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 3,
				mechanicTime = 272.3,
				name = "[LPDU] P2 Diamond Dust - Ice Slide Destination",
				timeRange = true,
				timelineIndex = 61,
				timerEndOffset = -1,
				timerStartOffset = -7,
				uuid = "cd0e73df-a5b4-de3e-b402-7adab85968d0",
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
				name = "store\\anyone\\fru\\fru",
				uuid = "af2b0d62-7c65-d2ee-5e4f-a8cc67f7fef2",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[64] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "dd9d9994-0342-4928-0c69-3b9ae03df6a4",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Melee] Feint (Primary)",
				uuid = "1404c1ee-1bb3-acfc-b932-0c322004de0c",
				version = 2,
			},
			inheritedObjectUUID = "a2a4eac6-c803-d997-b019-c9c3e7c057f1",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[SAM] Tengentsu",
				uuid = "307a5d38-e908-9ff2-9483-0d06ad2394c9",
				version = 2,
			},
			inheritedObjectUUID = "0992ab26-1fb9-05ab-921b-5b5c9f7b024c",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[Caster] Addle (Secondary)",
				uuid = "0ca1f8b0-b2e9-01df-8323-68bfe6cd354d",
				version = 2,
			},
			inheritedObjectUUID = "f60c7036-01b8-7bb6-a2fa-b3724ae05f95",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[RPR] Arcane Crest",
				uuid = "38543620-c276-35d4-acf2-50f12163a8ad",
				version = 2,
			},
			inheritedObjectUUID = "c82002b0-8fd5-f72e-b9c0-1e24dd8dd3ee",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[VPR] Feint (Primary)",
				uuid = "43f285a2-d490-5887-915b-8ede0bb00e35",
				version = 2,
			},
			inheritedObjectUUID = "4eba6aef-701d-b010-bb5f-08be5a6df091",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Mitigation",
				uuid = "69deafa1-d61d-ad6e-bddb-94bd5307e8f1",
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
							actionID = 7549,
							conditions = 
							{
								
								{
									"d4b4286e-68db-aae5-9f0d-b76055c004e5",
									true,
								},
								
								{
									"8c81c549-d355-a413-bec7-9708f7b422a3",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] M1 Feint Hallowed Ray",
							targetType = "Enemy",
							uuid = "d507d0f8-6bb5-c9c7-86b4-e918e1ed759b",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"M1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "M1 roster",
							uuid = "d4b4286e-68db-aae5-9f0d-b76055c004e5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Hallowed Ray CD",
							uuid = "8c81c549-d355-a413-bec7-9708f7b422a3",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 283,
				name = "[LPDU] M1 Feint Hallowed Ray",
				timeRange = true,
				timelineIndex = 64,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "ae91763d-c0fa-1018-953e-39197eecfb17",
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
							actionID = 7560,
							conditions = 
							{
								
								{
									"68f53336-ddd0-63e5-b71c-52d43f0ed201",
									true,
								},
								
								{
									"5a1c0d23-8553-8b6a-a8da-f99bd2348993",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Addle 2 Hallowed Ray",
							targetType = "Enemy",
							uuid = "4749dffb-365c-2639-9c78-b0dca0c6da45",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R2 roster",
							uuid = "68f53336-ddd0-63e5-b71c-52d43f0ed201",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Hallowed Ray CD",
							uuid = "5a1c0d23-8553-8b6a-a8da-f99bd2348993",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				enabled = false,
				mechanicTime = 283,
				name = "[LPDU] R2 Addle 2 Hallowed Ray",
				timeRange = true,
				timelineIndex = 64,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "fab9074a-0103-5894-891c-0de9f6dfb506",
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
							actionID = 7405,
							conditions = 
							{
								
								{
									"8e8e41f1-d1b9-a09f-bd89-8abddf6fdecc",
									true,
								},
								
								{
									"affd88d0-d2fb-a81e-9fe9-817fb6bdc190",
									true,
								},
								
								{
									"43674ae9-bc5e-15fe-bdef-f0d6a10d1acb",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Troubadour - Hallowed Ray",
							uuid = "8eef6572-b9d1-d4af-a236-6a9157cd58f3",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							conditions = 
							{
								
								{
									"8e8e41f1-d1b9-a09f-bd89-8abddf6fdecc",
									true,
								},
								
								{
									"878b8f95-ff84-c8dc-bd69-d6b2c08184f8",
									true,
								},
								
								{
									"875b6c97-1b74-9bfb-bce9-e3dfacfab0ef",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Tactician - Hallowed Ray",
							uuid = "95251cc6-16c3-5953-adc1-e44c63fca807",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							conditions = 
							{
								
								{
									"8e8e41f1-d1b9-a09f-bd89-8abddf6fdecc",
									true,
								},
								
								{
									"6a9e45c8-e15a-2841-b348-83052993c8f2",
									true,
								},
								
								{
									"833e1a39-c3d7-7fea-b21c-9c8b77c472fd",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Shield Samba - Hallowed Ray",
							uuid = "e25c79d0-923d-6578-beb9-77427d417214",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R2 roster",
							uuid = "8e8e41f1-d1b9-a09f-bd89-8abddf6fdecc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Troubadour job",
							uuid = "affd88d0-d2fb-a81e-9fe9-817fb6bdc190",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7405,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "43674ae9-bc5e-15fe-bdef-f0d6a10d1acb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Tactician job",
							uuid = "878b8f95-ff84-c8dc-bd69-d6b2c08184f8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "875b6c97-1b74-9bfb-bce9-e3dfacfab0ef",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Shield Samba job",
							uuid = "6a9e45c8-e15a-2841-b348-83052993c8f2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "833e1a39-c3d7-7fea-b21c-9c8b77c472fd",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 283,
				name = "[LPDU] R2 Phys Ranged - Hallowed Ray",
				timeRange = true,
				timelineIndex = 64,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "7250da12-10f0-0070-964c-f799326eea3e",
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
							actionID = 2887,
							conditions = 
							{
								
								{
									"87828733-363f-cdb0-85c5-0518a8c888ef",
									true,
								},
								
								{
									"28bc949e-e386-9af7-b51d-3de8f176307e",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Dismantle Hallowed Ray",
							uuid = "1f4f71c8-5e82-e5fe-9c0e-a92b28c0fa15",
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
							jobValue = "MACHINIST",
							name = "MACHINIST job",
							uuid = "87828733-363f-cdb0-85c5-0518a8c888ef",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 2887,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Hallowed Ray CD",
							uuid = "28bc949e-e386-9af7-b51d-3de8f176307e",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 283,
				name = "[LPDU] Dismantle Hallowed Ray",
				timeRange = true,
				timelineIndex = 64,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "908346a8-55dc-b22e-8446-8bd154a99027",
				version = 2,
			},
		},
	},
	[65] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "3322c1b1-2ab3-5395-8c2c-03d736335481",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[68] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "2c0313f0-1876-fa5c-10d2-ef9ed904cc80",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Draw] First Mirror Arrows",
				uuid = "21f30694-eacf-3ed5-926a-f003dd68840d",
				version = 2,
			},
			inheritedObjectUUID = "8e3a1839-08dc-8741-9f23-880c179b2d4c",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Draws",
				uuid = "0f71d979-4652-ecae-a063-a60b0020560b",
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
							actionLua = "local a = eventArgs\nif a == nil then return end\nlocal dir = tonumber(a.a1)\nif dir == nil or dir < 1 or dir > 8 then return end\nlocal state = data.lpduFruMirrorDirections\nif state == nil then state = { red = {}, blue = nil }; data.lpduFruMirrorDirections = state end\nif a.a2 == 256 and a.a3 == 512 then\n    for _, existing in ipairs(state.red) do if existing == dir then return end end\n    if #state.red < 2 then table.insert(state.red, dir) end\nelseif a.a2 == 1 and a.a3 == 2 then\n    state.blue = dir\nend",
							name = "[LPDU] Capture mirror directions",
							uuid = "a70c5d9c-ccc5-a556-8333-e612e669ae37",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Draws",
				eventType = 14,
				loop = true,
				mechanicTime = 292.6,
				name = "[LPDU] Mirror Direction Capture",
				timeRange = true,
				timelineIndex = 68,
				timerEndOffset = 5,
				timerStartOffset = -3,
				uuid = "b0a93a44-33a6-b834-827c-1d3630556f4e",
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
							actionLua = "local state = data.lpduFruMirrorDirections\nlocal roster = AnyoneCore and AnyoneCore.Roster\nlocal player = TensorCore.mGetPlayer()\nif state == nil or state.blue == nil or roster == nil or not roster.isReady() or player == nil then return end\nlocal slot = roster.mySlot()\nlocal ranged = slot == \"H1\" or slot == \"H2\" or slot == \"R1\" or slot == \"R2\"\nlocal melee = slot == \"MT\" or slot == \"OT\" or slot == \"T1\" or slot == \"T2\" or slot == \"M1\" or slot == \"M2\"\nif not ranged and not melee then return end\nlocal geometry = data.lpduFruMirrorArrowGeometry\nif geometry == nil then\n    geometry = { center = { x = 100, y = 0, z = 100 } }\n    geometry.north = TensorCore.getHeadingToTarget(geometry.center, { x = 100, y = 0, z = 90 })\n    geometry.drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0, 1, 0, .95), 2)\n    data.lpduFruMirrorArrowGeometry = geometry\nend\nlocal blue = geometry.north - (state.blue - 1) * math.pi / 4\nlocal heading = ranged and blue or (blue + math.pi)\ngeometry.drawer:addTimedArrowOnEnt(1100, player.id, 3.2, .9, 1.25, 2, nil, 0, false, heading, true)\nself.used = true",
							conditions = 
							{
								
								{
									"e47ba930-99a6-5953-8cd6-0e4b1a7c2389",
									true,
								},
							},
							name = "Draw role mirror arrow",
							uuid = "382efa53-2803-c06f-a686-671e99dc191d",
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
							conditionLua = "local state = data.lpduFruMirrorDirections\nlocal roster = AnyoneCore and AnyoneCore.Roster\nreturn state ~= nil and tonumber(state.blue) ~= nil\n    and roster ~= nil and roster.mySlot ~= nil and roster.isReady ~= nil\n    and roster.isReady()",
							name = "Blue mirror captured and roster ready",
							uuid = "e47ba930-99a6-5953-8cd6-0e4b1a7c2389",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws",
				loop = true,
				mechanicTime = 292.6,
				name = "[LPDU] Mirror Role Arrow",
				throttleTime = 1000,
				timeRange = true,
				timelineIndex = 68,
				timerEndOffset = 8,
				timerStartOffset = -3,
				uuid = "74aaaaad-f2b5-49e5-87ac-90cb2c063732",
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
							actionLua = "data.lpduFruMirrorDirections = { red = {}, blue = nil }\ndata.lpduFruRedMirrorDrawn = nil\ndata.lpduFruBlueMirrorDrawn = nil\ndata.lpduFruPartnerSnapshotNeeded = nil\nself.used = true",
							endIfUsed = true,
							name = "Clear previous mirror directions",
							uuid = "86bc1265-d7fc-d889-9012-8883d8094930",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Draws",
				mechanicTime = 292.6,
				name = "[LPDU] Reset mirror direction state",
				timeRange = true,
				timelineIndex = 68,
				timerEndOffset = -3.2,
				timerStartOffset = -5.5,
				uuid = "6f80e129-253a-e7ef-a367-472a7da27047",
				version = 2,
			},
		},
	},
	[71] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "9875776e-4701-06da-62ad-bd7ce9175abe",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Draws",
				uuid = "c792635e-ff3c-9657-94b8-a4d3f07f494c",
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
							actionLua = "local a = eventArgs\nlocal roster = AnyoneCore and AnyoneCore.Roster\nif roster == nil or not roster.isReady() then return end\nlocal slot = roster.mySlot()\nlocal state = data.lpduFruMirrorDirections\nlocal blueDir = state and state.blue\nif slot == nil or blueDir == nil or blueDir < 1 or blueDir > 8 then return end\n\nlocal geometry = data.lpduFruBlueSpreadGeometry\nif geometry == nil then\n    geometry = {\n        center = { x = 100, y = 0, z = 100 },\n        bossOffsets = { T1 = { -1.54, 1.36 }, MT = { -1.54, 1.36 }, T2 = { -2.55, -0.86 }, OT = { -2.55, -0.86 }, M1 = { 0.86, 1.81 }, M2 = { 0.02, -1.32 } },\n        mirrorOffsets = { H1 = { -2.5, 1.5 }, H2 = { -2.5, -1.5 }, R1 = { -0.35, 3.0 }, R2 = { -0.35, -3.0 } }\n    }\n    geometry.north = TensorCore.getHeadingToTarget(geometry.center, { x = 100, y = 0, z = 90 })\n    data.lpduFruBlueSpreadGeometry = geometry\nend\nlocal center = geometry.center\n-- Map-effect directions are N, NE, E, SE, S, SW, W, NW.\n-- TensorCore headings increase counterclockwise, so subtract the map step.\nlocal heading = geometry.north - (blueDir - 1) * math.pi / 4\nlocal unit = TensorCore.getPosInDirection(center, heading, 1)\nlocal radialX, radialZ = unit.x - center.x, unit.z - center.z\n-- Positive tangent is G1's right when facing the blue mirror.\nlocal tangentX, tangentZ = -radialZ, radialX\nlocal base, offset\nif geometry.bossOffsets[slot] ~= nil then\n    local boss = TensorCore.mGetEntity(a.entityID)\n    if boss == nil or boss.pos == nil then return end\n    base = boss.pos\n    offset = geometry.bossOffsets[slot]\nelse\n    base = TensorCore.getPosInDirection(center, heading, 20)\n    offset = geometry.mirrorOffsets[slot]\nend\nif offset == nil then self.used = true; return end\nlocal targetX = base.x + radialX * offset[1] + tangentX * offset[2]\nlocal targetZ = base.z + radialZ * offset[1] + tangentZ * offset[2]\nlocal duration = math.floor(a.channelTimeMax * 1000 + 850)\nlocal green = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0, 1, 0, .92), 2)\ngreen:addTimedCircle3D(duration, targetX, .05, targetZ, 1.05, 0, 0, 0, false, true, Argus2.RenderFlags.FLAG_RENDER_UI)\nlocal player = TensorCore.mGetPlayer()\nif player ~= nil and player.pos ~= nil then\n    local target = { x = targetX, y = 0, z = targetZ }\n    local arrowHeading = TensorCore.getHeadingToTarget(player.pos, target)\n    local distance = TensorCore.getDistance2d(player.pos, target)\n    if distance > .25 then\n        local tip = math.min(1.25, distance)\n        local arrow = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0, 1, 0, .95), 2)\n        arrow:addTimedArrow(duration, player.pos.x, player.pos.y, player.pos.z, arrowHeading, math.max(.15, distance - tip), .9, tip, 1.9, 0, false)\n    end\nend\nself.used = true",
							conditions = 
							{
								
								{
									"70bc37ca-be5b-c326-a26b-b4ee9c377440",
									true,
								},
							},
							name = "[LPDU] Draw blue mirror spot",
							uuid = "ca585a84-f225-4841-a4d5-aa63757fd493",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							conditionLua = "return eventArgs ~= nil and eventArgs.spellID == 40203",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 40203,
							name = "Scythe Kick ID",
							uuid = "70bc37ca-be5b-c326-a26b-b4ee9c377440",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws",
				eventType = 3,
				mechanicTime = 306.6,
				name = "[LPDU] Mirror Blue Spread",
				timeRange = true,
				timelineIndex = 71,
				timerEndOffset = -1,
				timerStartOffset = -10,
				uuid = "afb72b4a-560c-e016-9ff9-f0747d31e86f",
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
							actionLua = "local a = eventArgs\nlocal directions = data.lpduFruMirrorDirections\nlocal blueDir = directions and directions.blue\nif blueDir == nil or blueDir < 1 or blueDir > 8 then return end\nlocal geometry = data.lpduFruMirrorDonutGeometry\nif geometry == nil then\n    geometry = { center = { x = 100, y = 0, z = 100 } }\n    geometry.north = TensorCore.getHeadingToTarget(geometry.center, { x = 100, y = 0, z = 90 })\n    geometry.drawer = TensorCore.getCachedDrawer(\n        GUI:ColorConvertFloat4ToU32(1, .22, .03, .38),\n        GUI:ColorConvertFloat4ToU32(1, .22, .03, .48),\n        GUI:ColorConvertFloat4ToU32(1, .22, .03, .58),\n        GUI:ColorConvertFloat4ToU32(1, .65, .08, 1), 4)\n    data.lpduFruMirrorDonutGeometry = geometry\nend\nlocal heading = geometry.north - (blueDir - 1) * math.pi / 4\nlocal mirror = TensorCore.getPosInDirection(geometry.center, heading, 20)\nlocal duration = math.floor(a.channelTimeMax * 1000 + 250)\n-- FRU Scythe Kick and the blue reflection: 4m safe hole, 20m outer radius.\n-- This overlay is visual only; existing encounter AOE detection remains authoritative.\ngeometry.drawer:addTimedDonutOnEnt(duration, a.entityID, 4, 20, 0, false, true)\ngeometry.drawer:addTimedDonut(duration, mirror.x, 0, mirror.z, 4, 20, 0, false, true)\nself.used = true",
							conditions = 
							{
								
								{
									"e23fcf0c-5e68-0df4-883f-c92fb5153c5f",
									true,
								},
							},
							name = "Boss and blue mirror donut danger",
							uuid = "21e44d3a-328a-78f4-893f-e4d3ff581f56",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 40203,
							name = "Scythe Kick ID",
							uuid = "e23fcf0c-5e68-0df4-883f-c92fb5153c5f",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws",
				eventType = 3,
				mechanicTime = 306.6,
				name = "[LPDU] Mirror Donut Danger",
				timeRange = true,
				timelineIndex = 71,
				timerEndOffset = -1,
				timerStartOffset = -10,
				uuid = "1773583b-c0cc-f7fb-8530-0174fbdb0e25",
				version = 2,
			},
		},
	},
	[72] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "327d4ba1-8c57-7b9d-76a2-57d3c2bb4df1",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Melee] Bloodbath",
				uuid = "0c6a2b93-848e-3c6a-993a-78f0ae28c9ee",
				version = 2,
			},
			inheritedObjectUUID = "bce2c93f-73e0-b47c-b664-6ad47d689a49",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[SAM] Tengentsu",
				uuid = "d83b2c8f-dcc3-791b-8b6a-c1a72df5911a",
				version = 2,
			},
			inheritedObjectUUID = "1dbbb84b-dcb0-52a7-8096-51c627fdf650",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[BRD] Nature's Minne",
				uuid = "9d7b940d-aa57-4381-b287-fe34d0b29fb1",
				version = 2,
			},
			inheritedObjectUUID = "0cbe17f3-eff8-8753-9487-0dd9637b1796",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[VPR] Bloodbath",
				uuid = "9e0dedba-02f9-fa4f-a1d8-9d8b31772e9f",
				version = 2,
			},
			inheritedObjectUUID = "e2edfed3-4f28-50db-ad35-e1c9750e4b05",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[76] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "46c2f815-9dbc-7549-bbf8-4987ee737225",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Draws",
				uuid = "68379d79-03e2-3c42-a03c-e71a6d05fd67",
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
							actionLua = "local a = eventArgs\nif data.lpduFruRedMirrorDrawn then self.used = true; return end\nlocal roster = AnyoneCore and AnyoneCore.Roster\nif roster == nil or not roster.isReady() then return end\nlocal slot = roster.mySlot()\nlocal state = data.lpduFruMirrorDirections\nlocal blueDir = state and state.blue\nlocal redDirs = state and state.red\nif slot == nil or blueDir == nil or redDirs == nil or #redDirs < 2 then return end\n\nlocal geometry = data.lpduFruRedSpreadGeometry\nif geometry == nil then\n    geometry = {\n        center = { x = 100, y = 0, z = 100 },\n        offsets = {\n            T1 = { -0.919, 2.876 }, MT = { -0.919, 2.876 }, T2 = { -0.644, -3.380 }, OT = { -0.644, -3.380 },\n            M1 = { -1.804, 0.130 }, M2 = { -2.414, -2.033 },\n            H1 = { -2.5, 1.5 }, H2 = { -2.5, -1.5 },\n            R1 = { -0.35, 3.0 }, R2 = { -0.35, -3.0 }\n        }\n    }\n    geometry.north = TensorCore.getHeadingToTarget(geometry.center, { x = 100, y = 0, z = 90 })\n    data.lpduFruRedSpreadGeometry = geometry\nend\nlocal center = geometry.center\nlocal blueHeading = geometry.north - (blueDir - 1) * math.pi / 4\nlocal bossHeading = blueHeading + math.pi\nlocal redHeading1 = geometry.north - (redDirs[1] - 1) * math.pi / 4\nlocal redHeading2 = geometry.north - (redDirs[2] - 1) * math.pi / 4\nlocal score1 = math.cos(redHeading1 - bossHeading)\nlocal score2 = math.cos(redHeading2 - bossHeading)\nlocal nearDir\nif score1 > score2 + 0.0001 then\n    nearDir = redDirs[1]\nelseif score2 > score1 + 0.0001 then\n    nearDir = redDirs[2]\nelse\n    -- Clockwise travel decreases TensorCore's heading.\n    local clockwise1 = (bossHeading - redHeading1) % (2 * math.pi)\n    local clockwise2 = (bossHeading - redHeading2) % (2 * math.pi)\n    nearDir = clockwise1 <= clockwise2 and redDirs[1] or redDirs[2]\nend\nlocal farDir = nearDir == redDirs[1] and redDirs[2] or redDirs[1]\nlocal isMeleeTank = slot == \"MT\" or slot == \"OT\" or slot == \"T1\" or slot == \"T2\" or slot == \"M1\" or slot == \"M2\"\nlocal mirrorDir = isMeleeTank and nearDir or farDir\nlocal offset = geometry.offsets[slot]\nif offset == nil then self.used = true; return end\nlocal heading = geometry.north - (mirrorDir - 1) * math.pi / 4\nlocal unit = TensorCore.getPosInDirection(center, heading, 1)\nlocal radialX, radialZ = unit.x - center.x, unit.z - center.z\nlocal tangentX, tangentZ = -radialZ, radialX\nlocal mirror = TensorCore.getPosInDirection(center, heading, 20)\nlocal targetX = mirror.x + radialX * offset[1] + tangentX * offset[2]\nlocal targetZ = mirror.z + radialZ * offset[1] + tangentZ * offset[2]\nlocal duration = math.floor(a.channelTimeMax * 1000 + 850)\nlocal green = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0, 1, 0, .92), 2)\ngreen:addTimedCircle3D(duration, targetX, .05, targetZ, 1.05, 0, 0, 0, false, true, Argus2.RenderFlags.FLAG_RENDER_UI)\nlocal player = TensorCore.mGetPlayer()\nif player ~= nil and player.pos ~= nil then\n    local target = { x = targetX, y = 0, z = targetZ }\n    local arrowHeading = TensorCore.getHeadingToTarget(player.pos, target)\n    local distance = TensorCore.getDistance2d(player.pos, target)\n    if distance > .25 then\n        local tip = math.min(1.25, distance)\n        local arrow = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0, 1, 0, .95), 2)\n        arrow:addTimedArrow(duration, player.pos.x, player.pos.y, player.pos.z, arrowHeading, math.max(.15, distance - tip), .9, tip, 1.9, 0, false)\n    end\nend\ndata.lpduFruRedMirrorDrawn = true\nself.used = true",
							conditions = 
							{
								
								{
									"784ca35d-3c6a-7cac-974e-9ef25faca95b",
									true,
								},
							},
							name = "[LPDU] Draw red mirror spot",
							uuid = "471b48b2-1fdf-c618-af9a-a38b1717f245",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							conditionLua = "return eventArgs ~= nil and eventArgs.spellID == 40205",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 40205,
							name = "Reflected Scythe Kick ID",
							uuid = "784ca35d-3c6a-7cac-974e-9ef25faca95b",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws",
				eventType = 3,
				mechanicTime = 317.1,
				name = "[LPDU] Mirror Red Spread",
				timeRange = true,
				timelineIndex = 76,
				timerStartOffset = -12,
				uuid = "de5d8b8d-47d3-e9b7-b46a-e7e4a02b28da",
				version = 2,
			},
		},
	},
	[77] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "1f51eda8-b856-1f0c-2af3-778a31a794f8",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[SAM] Tengentsu",
				uuid = "db16ccd5-eef2-af0b-a015-12dc371113e5",
				version = 2,
			},
			inheritedObjectUUID = "aa4544e9-400e-68a4-a486-ca545e7970f9",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[RPR] Arcane Crest",
				uuid = "2bace156-d2d1-bd08-9d58-ace65ea448c3",
				version = 2,
			},
			inheritedObjectUUID = "4b5a05c0-769e-1dc8-8c80-9ddf3fd24765",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Mitigation",
				uuid = "9fa87e1f-3d04-4672-a206-05def5501e4e",
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
							actionID = 7549,
							conditions = 
							{
								
								{
									"21df249b-e4f3-6236-9b31-2b329abb3b35",
									true,
								},
								
								{
									"6490aa31-2c33-bf52-a03e-6639c836df43",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] M2 Feint Banish III + Light Rampant",
							targetType = "Enemy",
							uuid = "988530d9-3029-12f1-a199-a8eda0b1a681",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"M2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "M2 roster",
							uuid = "21df249b-e4f3-6236-9b31-2b329abb3b35",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Banish III + Light Rampant CD",
							uuid = "6490aa31-2c33-bf52-a03e-6639c836df43",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 322.5,
				name = "[LPDU] M2 Feint Banish III + Light Rampant",
				timeRange = true,
				timelineIndex = 77,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "af271678-253c-2f55-bfb2-2c28234609fd",
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
							actionID = 7560,
							conditions = 
							{
								
								{
									"742b2513-88a7-6734-be10-0f8920a592a0",
									true,
								},
								
								{
									"f1bd9a61-5ca6-1951-a7e0-45c759dcc483",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Addle Banish III + Light Rampant",
							targetType = "Enemy",
							uuid = "a93c1f46-3eb1-1b21-836d-ed93de672d96",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R1 roster",
							uuid = "742b2513-88a7-6734-be10-0f8920a592a0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Banish III + Light Rampant CD",
							uuid = "f1bd9a61-5ca6-1951-a7e0-45c759dcc483",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 322.5,
				name = "[LPDU] R1 Addle Banish III + Light Rampant",
				timeRange = true,
				timelineIndex = 77,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "458136e5-26f1-fd6d-84f0-da6c70f923bb",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Draws",
				uuid = "9a3ddc04-fb17-6cc4-8bb0-df9b137abf69",
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
							actionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif roster == nil or roster.current() == nil or not roster.isReady() then\n    self.used = true\n    return\nend\nlocal pairs = {\n    T1 = {\"M1\", 1, 0, 0}, M1 = {\"T1\", 1, 0, 0},\n    T2 = {\"M2\", 1, 1, 0}, M2 = {\"T2\", 1, 1, 0},\n    H1 = {\"R1\", .65, 0, 1}, R1 = {\"H1\", .65, 0, 1},\n    H2 = {\"R2\", 0, .4, 1}, R2 = {\"H2\", 0, .4, 1}\n}\nlocal pair = pairs[roster.mySlot()]\nlocal partnerID = pair and roster.idOf(pair[1])\nif partnerID ~= nil and partnerID ~= 0 then\n    local marker = TensorCore.getStaticDrawer(\n        GUI:ColorConvertFloat4ToU32(pair[2], pair[3], pair[4], .45), 2)\n    marker:addTimedCircleOnEnt(eventArgs.channelTimeMax * 1000 + 1000,\n        partnerID, 1, 0, true, true)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"919851d7-1121-8c20-9023-7c6c6990949d",
									true,
								},
							},
							endIfUsed = true,
							name = "Mark assigned Banish partner",
							uuid = "1f27ed21-e62c-3d5a-9f75-1b3a772e541d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 40220,
							name = "Partners only",
							uuid = "919851d7-1121-8c20-9023-7c6c6990949d",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws",
				eventType = 3,
				mechanicTime = 322.5,
				name = "[LPDU] P2 Banish III - Personal Partner",
				timeRange = true,
				timelineIndex = 77,
				timerStartOffset = -8,
				uuid = "ddeab36d-5bef-addc-8ace-0df0bb2a5224",
				version = 2,
			},
		},
	},
	[80] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "9cb21376-28cb-28aa-7bc1-3858158cad86",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[MCH] Dismantle",
				uuid = "6d9a84c2-af55-2668-a14e-8d7d50e54f4b",
				version = 2,
			},
			inheritedObjectUUID = "f2faaedd-6b81-d7a8-a5ea-9b352bdff892",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[SAM] Tengentsu",
				uuid = "79e25e35-140a-8848-b4ef-f1498d28b5a4",
				version = 2,
			},
			inheritedObjectUUID = "dcd218ee-2e08-ce75-b53b-b8da854b305b",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[Caster] Addle (Primary)",
				uuid = "ee448d3e-1bcd-03fb-8d2b-857d6b5dde2d",
				version = 2,
			},
			inheritedObjectUUID = "ff9c72f2-7fe8-fdc7-92d1-7521617cb4d5",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[Melee] Feint (Secondary)",
				uuid = "1d2b6616-cfd2-3afb-979d-f463981e3f8c",
				version = 2,
			},
			inheritedObjectUUID = "f3083c5d-8d59-7c22-83bb-dbb2facd4e91",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[MNK] Mantra",
				uuid = "88299a58-ad60-73c0-bcd8-6a8042f4a717",
				version = 2,
			},
			inheritedObjectUUID = "2e2400b1-7b30-a5b1-840a-76dd7a1dcfad",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[VPR] Feint (Secondary)",
				uuid = "5c0627fc-3321-bc6a-a3e5-990a77c7130b",
				version = 2,
			},
			inheritedObjectUUID = "ec54876b-30d0-645d-b6f8-8cb47881108e",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Mitigation",
				uuid = "f737d30d-29f1-32c1-89bf-455957c7854b",
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
							actionID = 7405,
							conditions = 
							{
								
								{
									"036bc48a-c8b2-1744-938c-9a892e1e1234",
									true,
								},
								
								{
									"4af16a9f-aac2-bfde-9a2a-1d621f298866",
									true,
								},
								
								{
									"6ff3e9be-1c9b-a343-94a5-da4a5d0f65c8",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Troubadour - Light Rampant",
							uuid = "cdc16160-44e1-2a47-a8ac-4555384dfa13",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							conditions = 
							{
								
								{
									"036bc48a-c8b2-1744-938c-9a892e1e1234",
									true,
								},
								
								{
									"47fe9cf8-6a9a-745f-b8a0-30318ad0a14c",
									true,
								},
								
								{
									"a53b18c2-da7e-90e6-812b-0b8bbf6ec5bc",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Tactician - Light Rampant",
							uuid = "48d31e8a-613e-55b4-89d6-391fe73e6ea6",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							conditions = 
							{
								
								{
									"036bc48a-c8b2-1744-938c-9a892e1e1234",
									true,
								},
								
								{
									"57bc96fe-6ee5-7ee0-b7a8-4a5f908a2917",
									true,
								},
								
								{
									"871732c2-1bba-6309-bb63-00671c4ea256",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Shield Samba - Light Rampant",
							uuid = "3beaf656-f5ae-a079-ad64-70fe95a61322",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R1 roster",
							uuid = "036bc48a-c8b2-1744-938c-9a892e1e1234",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Troubadour job",
							uuid = "4af16a9f-aac2-bfde-9a2a-1d621f298866",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7405,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "6ff3e9be-1c9b-a343-94a5-da4a5d0f65c8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Tactician job",
							uuid = "47fe9cf8-6a9a-745f-b8a0-30318ad0a14c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "a53b18c2-da7e-90e6-812b-0b8bbf6ec5bc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Shield Samba job",
							uuid = "57bc96fe-6ee5-7ee0-b7a8-4a5f908a2917",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "871732c2-1bba-6309-bb63-00671c4ea256",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 331.8,
				name = "[LPDU] R1 Phys Ranged - Light Rampant",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "0b302a83-33eb-7cfa-9f6f-3bec0d0ddf2b",
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
							actionID = 34686,
							conditions = 
							{
								
								{
									"e319ea61-d6a7-8d4d-b65e-336eea8fc30e",
									true,
								},
								
								{
									"465f47b7-73b6-ec08-986c-e5b52096877e",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Tempera Grassa Light Rampant",
							uuid = "25babf07-021c-28b4-a98b-f95df433bfc7",
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
							jobValue = "PICTOMANCER",
							name = "PICTOMANCER job",
							uuid = "e319ea61-d6a7-8d4d-b65e-336eea8fc30e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 34686,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Light Rampant CD",
							uuid = "465f47b7-73b6-ec08-986c-e5b52096877e",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 331.8,
				name = "[LPDU] Tempera Grassa Light Rampant",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "b7d567e9-737a-3840-98bf-80dd4a6a50be",
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
							actionID = 25857,
							conditions = 
							{
								
								{
									"4f10960b-5fec-7b64-a73b-429280364a1b",
									true,
								},
								
								{
									"5840dac5-1399-d926-9319-c0bca2a579ce",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Magick Barrier Light Rampant",
							uuid = "f90f563d-d7fc-dd54-8d7c-0ec8fb1f8e1d",
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
							jobValue = "REDMAGE",
							name = "REDMAGE job",
							uuid = "4f10960b-5fec-7b64-a73b-429280364a1b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25857,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Light Rampant CD",
							uuid = "5840dac5-1399-d926-9319-c0bca2a579ce",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 331.8,
				name = "[LPDU] Magick Barrier Light Rampant",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "9dba982a-df7c-2410-908a-5f3cd0f21643",
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
							actionID = 7408,
							conditions = 
							{
								
								{
									"7dc5e008-4800-6dae-9aa5-04825e151c09",
									true,
								},
								
								{
									"b62edd65-0cb1-efa2-bd8e-659184ac2c55",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Nature's Minne Light Rampant",
							uuid = "ab153d61-bae4-aaf0-b5e3-8f13ed7e5cf3",
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
							name = "BARD job",
							uuid = "7dc5e008-4800-6dae-9aa5-04825e151c09",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7408,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Light Rampant CD",
							uuid = "b62edd65-0cb1-efa2-bd8e-659184ac2c55",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 331.8,
				name = "[LPDU] Nature's Minne Light Rampant",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "d6564ec1-8428-766e-8962-64b602d0a717",
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
							actionID = 65,
							conditions = 
							{
								
								{
									"e0751172-43cf-559d-9945-8a6d74fe1f4a",
									true,
								},
								
								{
									"effd9201-da8c-d5a6-997a-9db558cee874",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Mantra Light Rampant",
							uuid = "3e4aa135-b7ee-8ee9-bd95-1fa266165f03",
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
							jobValue = "MONK",
							name = "MONK job",
							uuid = "e0751172-43cf-559d-9945-8a6d74fe1f4a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 65,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Light Rampant CD",
							uuid = "effd9201-da8c-d5a6-997a-9db558cee874",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 331.8,
				name = "[LPDU] Mantra Light Rampant",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "75500f80-0040-02d3-8dc2-f6c535a4f118",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Draws",
				uuid = "87a72ec8-0810-3658-963c-eedcafc6acec",
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
							actionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nlocal player = TensorCore.mGetPlayer()\nif roster == nil or roster.current() == nil or not roster.isReady() or player == nil or player.pos == nil then self.used = true; return end\n-- LPDU double conga: H1 H2 MT OT / R1 R2 M1 M2.\n-- Corners are closer to the opposite row than to their next row neighbour.\nlocal spots = {\n    H1={95.5,98.7}, H2={98.5,97.5}, T1={101.5,97.5}, T2={104.5,98.7},\n    R1={95.5,101.3}, R2={98.5,102.5}, M1={101.5,102.5}, M2={104.5,101.3}\n}\nlocal slot = roster.mySlot()\nif slot == \"MT\" then slot = \"T1\" elseif slot == \"OT\" then slot = \"T2\" end\nlocal target = spots[slot]\nif target == nil then self.used = true; return end\nlocal state = { baits={}, ids={}, hammers={}, assignments={}, guided=false }\nfor role in pairs(spots) do\n    local id = roster.idOf(role)\n    if id == nil or id == 0 then self.used = true; return end\n    state.ids[role] = id\nend\n-- This state belongs only to our editable LPDU reactions.\nstate.guide = function(x, z, duration)\n    local p = TensorCore.mGetPlayer()\n    if p == nil or p.pos == nil then return end\n    if state.arrow ~= nil then Argus.deleteTimedShape(state.arrow); state.arrow=nil end\n    if state.circle ~= nil then Argus.deleteTimedShape(state.circle); state.circle=nil end\n    local point = {x=x,y=p.pos.y or 0,z=z}\n    local heading = TensorCore.getHeadingToTarget(p.pos,point)\n    local distance = TensorCore.getDistance2d(p.pos,point)\n    local green = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.98),2)\n    if heading ~= nil and distance ~= nil and distance > .25 then\n        local tip = math.min(1.25,distance)\n        state.arrow = green:addTimedArrow(duration,p.pos.x,p.pos.y or 0,p.pos.z,heading,math.max(.15,distance-tip),.9,tip,2.2,0,false)\n    end\n    local marker = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2)\n    state.circle = marker:addTimedCircle(duration,x,p.pos.y or 0,z,1,0,false)\nend\ndata.lpdu_fru_lr_personal = state\nstate.guide(target[1],target[2],7500)\nself.used = true\n",
							endIfUsed = true,
							name = "Line up before the cast",
							uuid = "74128a73-1652-d0a2-bd33-b26ac92c8bc7",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Draws",
				mechanicTime = 331.8,
				name = "[LPDU] P2 Light Rampant - Double Conga",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = -5.1,
				timerStartOffset = -7.5,
				uuid = "1f29d389-f98d-7c67-aa92-945a98753a6d",
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
							actionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nlocal state = data.lpdu_fru_lr_personal\nif roster == nil or roster.current() == nil or not roster.isReady() or state == nil or state.assigned then self.used=true; return end\nlocal role\nfor s,id in pairs(state.ids) do if id == eventArgs.entityID then role=s; break end end\nif role == nil then self.used=true; return end\nstate.baits[role] = true\nlocal order = {\"H1\",\"H2\",\"T1\",\"T2\",\"M2\",\"M1\",\"R2\",\"R1\"}\nlocal towerRoles, baitRoles, supportCount = {},{},0\nfor i,s in ipairs(order) do\n    if state.baits[s] then table.insert(baitRoles,s)\n    else table.insert(towerRoles,s); if i <= 4 then supportCount=supportCount+1 end end\nend\nif #baitRoles ~= 2 or #towerRoles ~= 6 then self.used=true; return end\n-- LPDU NorthSwap: NE/NW and N/S trade. With two support baits,\n-- rotate the surviving clockwise order once (SW becomes NW before swaps).\n-- This matches the explicitly LPDU-configured Splatoon algorithm.\nif supportCount == 2 then table.insert(towerRoles,1,table.remove(towerRoles,6)) end\nlocal towers={{113.856,92},{100,116},{86.144,92},{113.856,108},{100,84},{86.144,108}}\nfor i,s in ipairs(towerRoles) do\n    state.assignments[s]={x=towers[i][1],z=towers[i][2],north=towers[i][2]<100,bait=false}\nend\nlocal northRoles={H1=true,H2=true,T1=true,T2=true}\nlocal westToEast={H1=1,H2=2,T1=3,T2=4,R1=1,R2=2,M1=3,M2=4}\nlocal a,b=baitRoles[1],baitRoles[2]\nlocal aNorth\nif northRoles[a] == northRoles[b] then aNorth=westToEast[a]<westToEast[b]\nelse aNorth=northRoles[a] == true end\nstate.assignments[a]={x=100,z=aNorth and 91 or 109,north=aNorth,bait=true}\nstate.assignments[b]={x=100,z=aNorth and 109 or 91,north=not aNorth,bait=true}\nstate.assigned=true\nlocal slot=roster.mySlot()\nif slot == \"MT\" then slot=\"T1\" elseif slot == \"OT\" then slot=\"T2\" end\nlocal assignment=state.assignments[slot]\nif assignment ~= nil then state.guide(assignment.x,assignment.z,assignment.bait and 6500 or 11000) end\nself.used=true\n",
							conditions = 
							{
								
								{
									"ae26268e-42ee-a6f2-a531-a1a90ae6568c",
									true,
								},
							},
							name = "LPDU clockwise tower assignment",
							uuid = "df5cd6ea-5bf1-40a1-b064-5ea523d24088",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventMarkerID = 375,
							name = "Both puddle overheads",
							uuid = "ae26268e-42ee-a6f2-a531-a1a90ae6568c",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws",
				eventType = 4,
				loop = true,
				mechanicTime = 331.8,
				name = "[LPDU] P2 Light Rampant - Personal Tower or Bait",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = 4,
				timerStartOffset = -1,
				uuid = "b041ff68-141f-1517-a358-d71da1eacd3d",
				version = 2,
			},
		},
	},
	[81] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "64106f43-e81b-9aa7-2729-e305962c9413",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Potion",
				uuid = "e754c082-281d-3f97-b49e-49d33934f303",
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
							aType = "Alert",
							alertDuration = 3000,
							alertPriority = 2,
							alertText = "[LPDU] Use potion",
							name = "[LPDU] Use potion",
							uuid = "63d1306b-20bf-e811-95d1-ed8267042e50",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Potion",
				mechanicTime = 335.9,
				name = "[LPDU] Use potion - P2 intermission",
				throttleTime = 3000,
				timeRange = true,
				timelineIndex = 81,
				timerEndOffset = 8,
				timerStartOffset = 3,
				uuid = "1019cfde-8ea4-c563-aea0-63af4f695731",
				version = 2,
			},
		},
	},
	[85] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "e8737c37-6a4d-daf3-404d-ccd1f0160ec7",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[88] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "2dac1b7e-dd2b-25d2-7d69-cb104e186bce",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Ranged] rDPS Mit",
				uuid = "935cd27d-c603-8ba8-b454-68e849be4843",
				version = 2,
			},
			inheritedObjectUUID = "85e7201a-03ff-8fa2-9e50-1fb67e7d24d4",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[SAM] Tengentsu",
				uuid = "4dcc1d26-4641-f8f0-972b-c547808bce4e",
				version = 2,
			},
			inheritedObjectUUID = "fcce6b5a-0ff0-6a0d-9e7a-ccae9c3cf17f",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Draws",
				uuid = "f4de6574-cd64-d5ac-b9f5-0cd7c5f8bc28",
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
							actionLua = "local roster=AnyoneCore and AnyoneCore.Roster\nlocal state=data.lpdu_fru_lr_personal\nif roster == nil or roster.current() == nil or not roster.isReady() or state == nil or not state.assigned or state.guided then self.used=true; return end\nlocal slot=roster.mySlot()\nif slot == \"MT\" then slot=\"T1\" elseif slot == \"OT\" then slot=\"T2\" end\nlocal assignment=state.assignments[slot]\nif assignment == nil then self.used=true; return end\nif eventArgs.spellID == 40218 then\n    -- The log identifies each puddle's baiter as the cast's main target.\n    local id=eventArgs.targetID\n    state.hammers[id]=(state.hammers[id] or 0)+1\n    if not assignment.bait or id ~= state.ids[slot] or state.hammers[id] < 5 then self.used=true; return end\nelseif eventArgs.spellID == 40213 then\n    if assignment.bait then self.used=true; return end\nelse self.used=true; return end\n-- Collapse after your own five puddles, or after the first towers resolve.\n-- These are safe stack staging positions from LPDU raidplan step 4.\nlocal x,z=assignment.north and 104.5 or 89.5,assignment.north and 82.5 or 115.5\nlocal duration=math.max(300,math.floor((348.8-TensorReactions_CurrentTimer)*1000))\nstate.guide(x,z,duration)\nstate.guided=true\nself.used=true\n",
							conditions = 
							{
								
								{
									"9d8a5b2f-e97c-29a5-af6d-8e18a1bacdaf",
									true,
								},
							},
							name = "Collapse after your mechanic resolves",
							uuid = "da87ddd0-0d1c-fe80-8304-6ddbec416796",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 3,
							eventArgType = 2,
							name = "Tower or puddle resolves",
							spellIDList = 
							{
								40213,
								40218,
							},
							uuid = "9d8a5b2f-e97c-29a5-af6d-8e18a1bacdaf",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws",
				eventType = 2,
				loop = true,
				mechanicTime = 348.7,
				name = "[LPDU] P2 Light Rampant - Assigned Stack Side",
				timeRange = true,
				timelineIndex = 88,
				timerEndOffset = 0.2,
				timerStartOffset = -12,
				uuid = "cb4e79f5-3c0f-330d-91d8-06769086f813",
				version = 2,
			},
		},
	},
	[90] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "2bb7e319-a981-da5d-ae03-dbfbc8560229",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[92] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "5aba3fb3-8d46-8ed7-c52f-81410bbb9183",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Ranged] rDPS Mit",
				uuid = "149b97a4-cf62-7689-822a-82f8bd826ed2",
				version = 2,
			},
			inheritedObjectUUID = "65edf55c-5919-e422-b0b4-f942df69db38",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[DPS] Second Wind",
				uuid = "3b87a933-2a2a-381a-aea7-047354fa39ab",
				version = 2,
			},
			inheritedObjectUUID = "cf3a95d3-fa5a-c7a3-88a3-98c515dc2291",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[SAM] Tengentsu",
				uuid = "38f63554-4ea2-29a0-b75e-2ce5ac49258f",
				version = 2,
			},
			inheritedObjectUUID = "0316915f-c988-eb82-b28f-5f8cf3d2cd27",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[VPR] Second Wind",
				uuid = "8b9daa8a-1091-5925-a75c-778196a1e4cc",
				version = 2,
			},
			inheritedObjectUUID = "eaf03659-05c1-39d5-9151-31b3fe642753",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[RPR] Arcane Crest",
				uuid = "21ed5efb-3910-d9ae-baec-693b3f6d7206",
				version = 2,
			},
			inheritedObjectUUID = "3dcfb906-eb8b-8f36-be25-b86b018d4dfc",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Draws",
				uuid = "f3700a07-324b-724a-9fd6-9d3f09fd72ea",
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
							actionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif roster == nil or not roster.isReady() then self.used = true; return end\nlocal slot = roster.mySlot()\nlocal pair = { T1 = \"R1\", MT = \"R1\", R1 = \"T1\", H1 = \"M1\", M1 = \"H1\", T2 = \"R2\", OT = \"R2\", R2 = \"T2\", H2 = \"M2\", M2 = \"H2\" }\nlocal partnerSlot = pair[slot]\nlocal partnerID = partnerSlot and roster.idOf(partnerSlot)\nlocal player = TensorCore.mGetPlayer()\nlocal partner = partnerID and TensorCore.mGetEntity(partnerID)\nif player == nil or player.pos == nil or player.id == nil or partner == nil or partner.pos == nil then self.used = true; return end\nlocal green = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0, 1, 0, .98), 2)\ngreen:addTimedArrowOnEnt(5600, player.id, 3.5, .9, 1.25, 2.2, partnerID, 0, false)\ngreen:addTimedCircleOnEnt(5600, partnerID, 1.15, 0, false, false)\nself.used = true",
							conditions = 
							{
								
								{
									"d9316e17-0259-c045-82bb-4c532734f3a2",
									true,
								},
							},
							endIfUsed = true,
							name = "Follow assigned partner",
							uuid = "02f3f589-af1c-35d0-a662-3fc6817fbaf1",
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
							conditionLua = "return eventArgs ~= nil and eventArgs.spellID == 40220",
							name = "Banish III partner cast",
							uuid = "d9316e17-0259-c045-82bb-4c532734f3a2",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws",
				eventType = 3,
				mechanicTime = 360.8,
				name = "[LPDU] Light Rampant - partner follow",
				timeRange = true,
				timelineIndex = 92,
				timerStartOffset = -8,
				uuid = "2f21591b-2f69-3621-9483-bb1b1aaa1b26",
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
							actionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif roster == nil or not roster.isReady() then self.used = true; return end\nlocal slot = roster.mySlot()\nlocal offsets = {\n    T1 = { 0, -12 }, MT = { 0, -12 },\n    T2 = { 12, 0 }, OT = { 12, 0 },\n    H1 = { -12, 0 }, H2 = { 0, 12 },\n    R1 = { -8.5, -8.5 }, R2 = { 8.5, -8.5 },\n    M1 = { -8.5, 8.5 }, M2 = { 8.5, 8.5 }\n}\nlocal offset = offsets[slot]\nlocal player = TensorCore.mGetPlayer()\nif offset == nil or player == nil or player.pos == nil then self.used = true; return end\nlocal target = { x = 100 + offset[1], y = player.pos.y or 0, z = 100 + offset[2] }\nlocal heading = TensorCore.getHeadingToTarget(player.pos, target)\nlocal distance = TensorCore.getDistance2d(player.pos, target)\nlocal green = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0, 1, 0, .98), 2)\nif heading ~= nil and distance ~= nil and distance > .25 then\n    local tip = math.min(1.25, distance)\n    green:addTimedArrow(5600, player.pos.x, player.pos.y or 0, player.pos.z, heading, math.max(.15, distance - tip), .9, tip, 2.2, 0, false)\nend\ngreen:addTimedCircle(5600, target.x, target.y, target.z, 1, 0, false)\nself.used = true",
							conditions = 
							{
								
								{
									"b36c16e5-7d5a-9d5e-baaf-c461b6d3710e",
									true,
								},
							},
							endIfUsed = true,
							name = "Guide role spread spot",
							uuid = "919d2447-0a9d-fd78-aa58-7081e4b5a401",
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
							conditionLua = "return eventArgs ~= nil and eventArgs.spellID == 40221",
							name = "Banish III spread cast",
							uuid = "b36c16e5-7d5a-9d5e-baaf-c461b6d3710e",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws",
				eventType = 3,
				mechanicTime = 360.8,
				name = "[LPDU] Light Rampant - role spread",
				timeRange = true,
				timelineIndex = 92,
				timerStartOffset = -8,
				uuid = "8275f35a-1a46-56eb-8862-b218e7ede6d4",
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
				name = "store\\anyone\\fru\\fru",
				uuid = "ec10bc26-0d83-c69a-c337-c864f1f237b6",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[95] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "fe4ac420-5f6a-33cc-ee75-13b2ceaa6130",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Draws",
				uuid = "18a0c41c-5b66-f676-9738-dff69adaa8df",
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
							actionLua = "if ArgusDrawsPlus ~= nil and type(ArgusDrawsPlus.setExtraBrightness) == \"function\" then\n    ArgusDrawsPlus.setExtraBrightness(true)\nend\nself.used = true",
							endIfUsed = true,
							name = "Enable extra brightness",
							uuid = "6a224e74-ef91-324b-bf95-ae56fe32fbd0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Draws",
				mechanicTime = 368.8,
				name = "[LPDU] House of Light - Extra Brightness On",
				timeRange = true,
				timelineIndex = 95,
				timerEndOffset = -4.2,
				timerStartOffset = -4.8,
				uuid = "69f3d068-d46d-55b1-a2a2-5df5da624922",
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
							actionLua = "if ArgusDrawsPlus ~= nil and type(ArgusDrawsPlus.setExtraBrightness) == \"function\" then\n    ArgusDrawsPlus.setExtraBrightness(false)\nend\nself.used = true",
							endIfUsed = true,
							name = "Disable extra brightness",
							uuid = "eda3f18d-163e-1f51-a46a-f832200ed7d0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Draws",
				mechanicTime = 368.8,
				name = "[LPDU] House of Light - Extra Brightness Off",
				timeRange = true,
				timelineIndex = 95,
				timerEndOffset = 4,
				timerStartOffset = 3.5,
				uuid = "7b1a7a0a-2245-5084-aa7b-d02e51669a4d",
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
							actionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif roster == nil or roster.current() == nil or not roster.isReady() then self.used = true; return end\nlocal slot = roster.mySlot()\nlocal offsets = {\n    T1 = { 0, -12 }, MT = { 0, -12 },\n    T2 = { 12, 0 }, OT = { 12, 0 },\n    H1 = { -12, 0 }, H2 = { 0, 12 },\n    R1 = { -8.5, -8.5 }, R2 = { 8.5, -8.5 },\n    M1 = { -8.5, 8.5 }, M2 = { 8.5, 8.5 }\n}\nlocal offset = offsets[slot]\nlocal player = TensorCore.mGetPlayer()\nif offset == nil or player == nil or player.pos == nil then self.used = true; return end\nlocal boss = TensorCore.mGetEntity(eventArgs.entityID)\nif boss == nil or boss.pos == nil or type(boss.hitradius) ~= \"number\" then self.used = true; return end\n-- Melee actions have 3y reach beyond the hitbox. Stand another .5y out.\nlocal radius = boss.hitradius + 3.5\nlocal length = math.sqrt(offset[1] * offset[1] + offset[2] * offset[2])\nlocal target = {x=boss.pos.x + offset[1] / length * radius, y=player.pos.y or 0, z=boss.pos.z + offset[2] / length * radius}\nlocal heading = TensorCore.getHeadingToTarget(player.pos, target)\nlocal distance = TensorCore.getDistance2d(player.pos, target)\nlocal duration = math.floor(eventArgs.channelTimeMax * 1000) + 800\nlocal green = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0, 1, 0, .98), 2)\nif heading ~= nil and distance ~= nil and distance > .25 then\n    local tip = math.min(1.25, distance)\n    green:addTimedArrow(duration, player.pos.x, player.pos.y or 0, player.pos.z, heading, math.max(.15, distance - tip), .9, tip, 2.2, 0, false)\nend\ngreen:addTimedCircle(duration, target.x, target.y, target.z, 1, 0, false)\nself.used = true",
							conditions = 
							{
								
								{
									"b40a5af0-cf37-bfbd-ba5b-6af35695ab78",
									true,
								},
							},
							endIfUsed = true,
							name = "Personal LPDU clockspot",
							uuid = "fc9a41d0-b296-ede2-a78e-2dab4293fdd1",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 40189,
							name = "House of Light",
							uuid = "b40a5af0-cf37-bfbd-ba5b-6af35695ab78",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Draws",
				eventType = 3,
				mechanicTime = 368.8,
				name = "[LPDU] P2 House of Light - Personal Clockspot",
				timeRange = true,
				timelineIndex = 95,
				timerStartOffset = -8,
				uuid = "40120bab-36c7-4c04-b67b-52c13011a542",
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
				name = "store\\anyone\\fru\\fru",
				uuid = "a178e544-93e6-dd58-3368-4846eaace0d4",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Melee] Feint (Primary)",
				uuid = "a5a2079d-34e4-c635-974b-1b4cca3cfc61",
				version = 2,
			},
			inheritedObjectUUID = "f5289db2-0be7-d962-9773-71c20389c75a",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[RDM] Barrier",
				uuid = "246af1bd-855f-39cb-9071-2a9c4b31ba00",
				version = 2,
			},
			inheritedObjectUUID = "3ac6cfad-11e9-def6-bb16-9b2c19a8e5ce",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[VPR] Feint (Primary)",
				uuid = "be5e9212-1351-c4ff-8120-5a4773d57f4a",
				version = 2,
			},
			inheritedObjectUUID = "97ee1d05-aa53-7967-9a96-b1c5f4b53b04",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[Caster] Addle (Secondary)",
				uuid = "c0b5cc04-fdc2-9704-88e8-82c59754f209",
				version = 2,
			},
			inheritedObjectUUID = "833cd5c0-0daa-9770-834b-f36b516cc7a1",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[SAM] Tengentsu",
				uuid = "18c22f77-16b2-ca6f-8154-808d95a800cc",
				version = 2,
			},
			inheritedObjectUUID = "f55b9f80-cf92-5d61-8bed-085fbad2bb7f",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[DNC] Curing Waltz",
				uuid = "e69776f8-e152-0cce-a1e7-2d98e87f90f1",
				version = 2,
			},
			inheritedObjectUUID = "b1a23f11-24c4-ceba-86d2-50be8310a2ea",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Mitigation",
				uuid = "c6dd7e4d-a9e9-19e2-ab2c-8251dcc2adbb",
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
							actionID = 7549,
							conditions = 
							{
								
								{
									"114a5a10-2cf6-b35d-bd20-3b370fab1210",
									true,
								},
								
								{
									"983c7f2f-43b9-25c3-bf57-f89e7988ba72",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] M1 Feint Absolute Zero",
							targetType = "Enemy",
							uuid = "6c4f77a1-6f10-3799-b8a8-d57a65a7b65f",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"M1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "M1 roster",
							uuid = "114a5a10-2cf6-b35d-bd20-3b370fab1210",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Absolute Zero CD",
							uuid = "983c7f2f-43b9-25c3-bf57-f89e7988ba72",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 387.8,
				name = "[LPDU] M1 Feint Absolute Zero",
				timeRange = true,
				timelineIndex = 99,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "eb24260b-ae8f-fbd2-a792-2dc0c5e5381d",
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
							actionID = 7560,
							conditions = 
							{
								
								{
									"6508a62c-1d07-a6fe-98c7-84a2a2c61623",
									true,
								},
								
								{
									"1e79a6cc-f8b4-8d18-ab0b-11bb52aa7ab8",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Addle 2 Absolute Zero",
							targetType = "Enemy",
							uuid = "cb953a36-0d50-1e3d-9a2f-d5b7b23842b0",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R2 roster",
							uuid = "6508a62c-1d07-a6fe-98c7-84a2a2c61623",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Absolute Zero CD",
							uuid = "1e79a6cc-f8b4-8d18-ab0b-11bb52aa7ab8",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				enabled = false,
				mechanicTime = 387.8,
				name = "[LPDU] R2 Addle 2 Absolute Zero",
				timeRange = true,
				timelineIndex = 99,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "0f5878de-677b-a1b7-93ec-a97d6e605f24",
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
							actionID = 7405,
							conditions = 
							{
								
								{
									"296934d6-509d-c0a3-ada4-c02791644567",
									true,
								},
								
								{
									"ea5b49d9-2e65-c3bd-ba12-7fa5762906db",
									true,
								},
								
								{
									"712eb661-e401-666a-a641-65a477b6720e",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Troubadour - Absolute Zero",
							uuid = "9c9d3d99-ea94-05c3-98ee-98818d0b4e0c",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							conditions = 
							{
								
								{
									"296934d6-509d-c0a3-ada4-c02791644567",
									true,
								},
								
								{
									"f8caac15-141c-f918-a7f3-1fbd52639139",
									true,
								},
								
								{
									"f17def38-60a5-f35b-89cf-399d7de85382",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Tactician - Absolute Zero",
							uuid = "951401d0-f9f6-beb1-bd67-af8f94490e29",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							conditions = 
							{
								
								{
									"296934d6-509d-c0a3-ada4-c02791644567",
									true,
								},
								
								{
									"a2232700-1d18-1faf-9cd7-77bed8363e1c",
									true,
								},
								
								{
									"2da00559-fe6c-b164-a1ff-1fa34605aded",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Shield Samba - Absolute Zero",
							uuid = "975f0463-a3fa-88bb-a47d-dcb790a6a6d6",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R2 roster",
							uuid = "296934d6-509d-c0a3-ada4-c02791644567",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Troubadour job",
							uuid = "ea5b49d9-2e65-c3bd-ba12-7fa5762906db",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7405,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "712eb661-e401-666a-a641-65a477b6720e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Tactician job",
							uuid = "f8caac15-141c-f918-a7f3-1fbd52639139",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "f17def38-60a5-f35b-89cf-399d7de85382",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Shield Samba job",
							uuid = "a2232700-1d18-1faf-9cd7-77bed8363e1c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "2da00559-fe6c-b164-a1ff-1fa34605aded",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 387.8,
				name = "[LPDU] R2 Phys Ranged - Absolute Zero",
				timeRange = true,
				timelineIndex = 99,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "1d53555e-7c59-8171-85d3-9388872cba53",
				version = 2,
			},
		},
	},
	[100] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "808aa951-0815-fc6d-61fe-1b27e86f19e1",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[102] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "fc875c4b-1c46-9567-268e-a72d83a5429b",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[DNC] Set Improv Spot",
				uuid = "de140189-68d6-6b7a-81f1-21c040f1ae3d",
				version = 2,
			},
			inheritedObjectUUID = "01c108f4-a076-00c3-b831-31ca4ddf364e",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[103] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "3a04b21e-e88c-df6a-a66b-64e0bf3736ae",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[108] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "f7151089-cdc6-2f15-d271-042f31e68c59",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[117] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "7a2d5fd5-5cc8-3be9-700b-e3bf6ca0e725",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[118] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "807788e6-362e-4462-8ae1-b2ec591492b6",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[119] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "92651273-bdbd-21ff-fab7-f9a972ddec83",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[SAM] Tengentsu",
				uuid = "f5484f59-cf1a-72f1-ac11-a30a93b2d667",
				version = 2,
			},
			inheritedObjectUUID = "a6d336f6-937a-f5d2-a08f-8daf92e45e17",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[RPR] Arcane Crest",
				uuid = "aa068148-fb44-4b64-95ab-bdbebc2aba8b",
				version = 2,
			},
			inheritedObjectUUID = "c5e725f9-6861-c81d-a9ac-24692dfb2eab",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Mitigation",
				uuid = "b024a055-a05a-0800-a52e-de7a9c0e3a9f",
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
							actionID = 16014,
							conditions = 
							{
								
								{
									"e7fdf92a-901f-d88e-897a-07b2a7ee564f",
									true,
								},
								
								{
									"59d3f617-159e-f093-b636-1b189295b0da",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Improvisation P3 Transition",
							uuid = "940c59d9-1a97-ca98-a23b-1bb8ae607ae4",
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
							jobValue = "DANCER",
							name = "DANCER job",
							uuid = "e7fdf92a-901f-d88e-897a-07b2a7ee564f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16014,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "P3 Transition CD",
							uuid = "59d3f617-159e-f093-b636-1b189295b0da",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 500,
				name = "[LPDU] Improvisation P3 Transition",
				timeRange = true,
				timelineIndex = 119,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "3f3c2cff-5993-4a8d-928b-20a8ec1ff8be",
				version = 2,
			},
		},
	},
	[120] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "1e409abf-12de-3efb-3ab3-b739ad028d4f",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[121] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "d810bc22-e079-468e-ddaa-c8fce62573f2",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[DNC] Curing Waltz",
				uuid = "fa2366f0-c7a3-0b16-9856-1bdcce9a4544",
				version = 2,
			},
			inheritedObjectUUID = "7913d802-6b3b-2e6b-983c-e7ae81554233",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[123] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "29495d78-2812-2b64-c570-6dc6c04a4008",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Core] Record UR Tethers",
				uuid = "bf94d6b3-2b2c-a8a4-b962-92a2359f2e20",
				version = 2,
			},
			inheritedObjectUUID = "bba06019-3d73-3e0e-916d-5a6d8ae970a6",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[Strat] UR Helper x2 Role Text",
				uuid = "3780e5a1-0336-7884-8370-3f49b9346fed",
				version = 2,
			},
			inheritedObjectUUID = "8bfebf37-63c9-4b22-b1c9-950c68298386",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[Melee] Feint (Primary)",
				uuid = "c335e481-c164-2ac2-842e-755cbc5a8f55",
				version = 2,
			},
			inheritedObjectUUID = "aa624f42-5fdb-0548-9288-df47bfd4bc3c",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[VPR] Feint (Primary)",
				uuid = "0e0830d0-dca2-e71c-b099-ffca528ea8d0",
				version = 2,
			},
			inheritedObjectUUID = "d1a49571-e4c1-15bd-9595-e6cf946820bf",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[Caster] Addle (Primary)",
				uuid = "820bd360-a65e-51d1-b1b3-605605f3337a",
				version = 2,
			},
			inheritedObjectUUID = "fea849de-d8c0-3de9-963c-f455801430bb",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[SAM] Tengentsu",
				uuid = "79d07e7f-9008-118a-9b6f-3d42fbb40e3e",
				version = 2,
			},
			inheritedObjectUUID = "25da3918-b20e-a34d-8972-fa3c9af5d63e",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[RPR] Arcane Crest",
				uuid = "ee702a44-2c3f-4e60-b96a-d0bd3572e7db",
				version = 2,
			},
			inheritedObjectUUID = "f4f5c2c2-5e9f-04b8-9bda-f96dfa74703e",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU_megaminx_indicator",
				uuid = "f1cd0f1d-b764-4291-94c6-57bb516146ad",
			},
			inheritanceRoot = "FRU_megaminx_indicator",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "get tethers",
				uuid = "b305d5b6-a7ec-7c6b-8c4f-232353ae193d",
				version = 2,
			},
			inheritedObjectUUID = "086828bb-51a3-b592-99e6-4f6128608cb9",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "UR indicator",
				uuid = "b66afaff-17ea-ced5-a3f7-759c3af546d3",
				version = 2,
			},
			inheritedObjectUUID = "843724fc-50d9-81b0-a58a-8ac5764aba1c",
			inheritedOverwrites = 
			{
				enabled = false,
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
							actionLua = "-- local index = 1\n\nlocal p = TensorCore.mGetPlayer()\nlocal buffs = {}\nlocal buffList = {\n    [2455] = true,\n    [2462] = true,\n}\n\nfor k, v in pairs(p.buffs) do\n    if buffList[v.id] then\n        buffs[v.id] = v.duration\n    end\nend\n\nlocal green = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0/255, 255/255, 0/255, .25),2)\nlocal white = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(255/255, 255/255, 255/255, .25),2)\nlocal center = {x = 100, y = 0,z = 100}\nlocal fire = 2455\nlocal ice = 2462\nlocal yellow = 2454\nlocal water = 2461\nlocal dark = 2460\nlocal heading2North = data.megaminx_p3_ur_north\nif TensorCore.isTank(p) or TensorCore.isHealer(p) then --support\n    if TensorCore.hasBuff(p,fire,nil,nil,20) then --long fire\n        --center, ne nw bait, center ice, center(rewind), out, center\n\n        local duration = buffs[2455] * 1000\n\n        white:addTimedArrow(40000, 100, 0, 100, heading2North + math.pi/4, 40, .3, .3, .3,0,true)\n        white:addTimedArrow(40000, 100, 0, 100, heading2North - math.pi/4, 40, .3, .3, .3,0,true) --these 2 lines can be refined after using prio system\n\n        green:addTimedCircle(duration  - 20000,center.x,0,center.z,5,0,true) --center\n\n        green:addTimedArrow(5000, 100, 0, 100, heading2North + math.pi/4, 8.5, 1, 1, 1,duration  - 20000,true) --\n        green:addTimedArrow(5000, 100, 0, 100, heading2North - math.pi/4, 8.5, 1, 1, 1,duration  - 20000,true) --bait hourglass\n\n        green:addTimedCircle(5000,center.x,0,center.z,3,duration  - 20000 + 5000,true) --center ice\n\n        green:addTimedArrow(5000, 100, 0, 100, heading2North + math.pi/4, 2, 1, 1, 1,duration  - 20000 + 5000 + 5000,true) --\n        green:addTimedArrow(5000, 100, 0, 100, heading2North - math.pi/4, 2, 1, 1, 1,duration  - 20000 + 5000 + 5000,true) -- rewind\n\n        green:addTimedArrow(5000, 100, 0, 100, heading2North + math.pi/4, 18, 1, 1, 1,duration  - 20000 + 5000 + 5000 + 5000,true) --\n        green:addTimedArrow(5000, 100, 0, 100, heading2North - math.pi/4, 18, 1, 1, 1,duration  - 20000 + 5000 + 5000 + 5000,true) -- out\n\n        green:addTimedCircle(5000,center.x,0,center.z,5,duration  - 20000 + 5000 + 5000 + 5000 + 5000,true) --center\n    elseif TensorCore.hasBuff(p,fire,nil,nil,10) then --medium fire\n        --center, rewind(dark out water in), out(west (灰9east)), center, center, bait(west (灰9east))\n        local duration = buffs[2455] * 1000\n\n        white:addTimedArrow(40000, 100, 0, 100, heading2North + math.pi/2 + math.pi, 40, .3, .3, .3,0,true)\n        --white:addTimedArrow(40000, 100, 0, 100, heading2North - math.pi/2, 40, .3, .3, .3,0,true) \n\n        green:addTimedCircle(duration  - 10000,center.x,0,center.z,5,0,true) --center\n\n        if TensorCore.hasBuff(p,water) then\n            green:addTimedArrow(5000, 100, 0, 100, heading2North + math.pi/2 + math.pi, 2, 1, 1, 1,duration  - 10000,true) --rewind\n        end\n        if TensorCore.hasBuff(p,dark) then\n            green:addTimedArrow(5000, 100, 0, 100, heading2North + math.pi/2 + math.pi, 7.5, 1, 1, 1,duration  - 10000,true) --rewind\n        end--\n\n        green:addTimedArrow(5000, 100, 0, 100, heading2North + math.pi/2 + math.pi, 18, 1, 1, 1,duration  - 10000 + 5000,true) --out\n        \n\n        green:addTimedCircle(5000,center.x,0,center.z,5,duration  - 10000 + 5000 + 5000,true) --center\n\n        green:addTimedCircle(5000,center.x,0,center.z,5,duration  - 10000 + 5000 + 5000 + 5000,true) --center\n\n        green:addTimedArrow(5000, 100, 0, 100, heading2North + math.pi/2 + math.pi, 8.5, 1, 1, 1,duration  - 10000 + 5000 + 5000 + 5000 + 5000,true) --bait hourglass\n    else -- short fire or ice\n        --(ice center, fire out), rewind(dark out water in), center ice, n bait, center, center\n        local duration\n        local isIce = TensorCore.hasBuff(p,ice)\n        local isFire = TensorCore.hasBuff(p,fire)\n        if isIce then\n            duration = buffs[2462] * 1000 - 10000\n            green:addTimedCircle(duration,center.x,0,center.z,5,0,true) --center if ice\n        end\n        if isFire then\n            duration = buffs[2455] * 1000\n            green:addTimedArrow(duration, 100, 0, 100, heading2North , 18, 1, 1, 1,0,true) --out if fire\n        end\n        white:addTimedArrow(40000, 100, 0, 100, heading2North, 40, .3, .3, .3,0,true)\n\n        if TensorCore.hasBuff(p,water) then\n            green:addTimedArrow(5000, 100, 0, 100, heading2North, 2, 1, 1, 1,duration,true) --rewind\n        end\n        if TensorCore.hasBuff(p,dark) then\n            green:addTimedArrow(5000, 100, 0, 100, heading2North, 7.5, 1, 1, 1,duration,true) --rewind\n        end\n\n        green:addTimedCircle(5000,center.x,0,center.z,3,duration + 5000,true) --center ice\n\n        green:addTimedArrow(5000, 100, 0, 100, heading2North, 8.5, 1, 1, 1,duration + 5000 + 5000,true) --bait hourglass\n\n        green:addTimedCircle(5000,center.x,0,center.z,5,duration + 5000 + 5000 + 5000,true) --center\n\n        green:addTimedCircle(5000,center.x,0,center.z,5,duration + 5000 + 5000 + 5000 + 5000,true) --center\n    end\nelse --dps\n    if TensorCore.hasBuff(p,fire,nil,nil,20) or TensorCore.hasBuff(p,ice) then --long fire\n        --center, s bait, center ice, center(rewind), out, center\n        local duration\n        local isIce = TensorCore.hasBuff(p,ice)\n        local isFire = TensorCore.hasBuff(p,fire)\n        if isIce then\n            duration = buffs[2462] * 1000 + 10000\n        end\n        if isFire then\n            duration = buffs[2455] * 1000\n        end\n\n        white:addTimedArrow(40000, 100, 0, 100, heading2North + math.pi, 40, .3, .3, .3,0,true)\n\n        green:addTimedCircle(duration  - 20000,center.x,0,center.z,5,0,true) --center\n\n        green:addTimedArrow(5000, 100, 0, 100, heading2North + math.pi, 8.5, 1, 1, 1,duration  - 20000,true) --bait hourglass\n\n        green:addTimedCircle(5000,center.x,0,center.z,3,duration  - 20000 + 5000,true) --center ice\n\n        green:addTimedArrow(5000, 100, 0, 100, heading2North + math.pi, 2, 1, 1, 1,duration  - 20000 + 5000 + 5000,true) --rewind\n\n        green:addTimedArrow(5000, 100, 0, 100, heading2North + math.pi, 18, 1, 1, 1,duration  - 20000 + 5000 + 5000 + 5000,true) --out\n\n        green:addTimedCircle(5000,center.x,0,center.z,5,duration  - 20000 + 5000 + 5000 + 5000 + 5000,true) --center\n    elseif TensorCore.hasBuff(p,fire,nil,nil,10) then --medium fire\n        --center, rewind(dark out water in), out(east (灰9west)), center, center, bait(east (灰9west))\n        --center, rewind(dark out water in), out(west (灰9east)), center, center, bait(west (灰9east))\n        local duration = buffs[2455] * 1000\n\n        white:addTimedArrow(40000, 100, 0, 100, heading2North - math.pi/2 + math.pi, 40, .3, .3, .3,0,true)\n        --white:addTimedArrow(40000, 100, 0, 100, heading2North - math.pi/2, 40, .3, .3, .3,0,true) \n\n        green:addTimedCircle(duration  - 10000,center.x,0,center.z,5,0,true) --center\n\n        if TensorCore.hasBuff(p,water) then\n            green:addTimedArrow(5000, 100, 0, 100, heading2North - math.pi/2 + math.pi, 2, 1, 1, 1,duration  - 10000,true) --rewind\n        end\n        if TensorCore.hasBuff(p,dark) then\n            green:addTimedArrow(5000, 100, 0, 100, heading2North - math.pi/2 + math.pi, 7.5, 1, 1, 1,duration  - 10000,true) --rewind\n        end--\n\n        green:addTimedArrow(5000, 100, 0, 100, heading2North - math.pi/2 + math.pi, 18, 1, 1, 1,duration  - 10000 + 5000,true) --out\n        \n\n        green:addTimedCircle(5000,center.x,0,center.z,5,duration  - 10000 + 5000 + 5000,true) --center\n\n        green:addTimedCircle(5000,center.x,0,center.z,5,duration  - 10000 + 5000 + 5000 + 5000,true) --center\n\n        green:addTimedArrow(5000, 100, 0, 100, heading2North - math.pi/2 + math.pi, 8.5, 1, 1, 1,duration  - 10000 + 5000 + 5000 + 5000 + 5000,true) --bait hourglass\n    else -- short fire or ice\n        --fire out se sw, rewind(dark out water in), center, sw se bait, center, center\n        --(ice center, fire out), rewind(dark out water in), center ice, n bait, center, center\n        local duration = buffs[2455] * 1000\n        white:addTimedArrow(40000, 100, 0, 100, heading2North + math.pi/2 + math.pi/4, 40, .3, .3, .3,0,true)\n        white:addTimedArrow(40000, 100, 0, 100, heading2North - math.pi/2 - math.pi/4, 40, .3, .3, .3,0,true)\n\n        green:addTimedArrow(duration, 100, 0, 100, heading2North + math.pi/2 + math.pi/4 , 18, 1, 1, 1,0,true) --out if fire\n        green:addTimedArrow(duration, 100, 0, 100, heading2North - math.pi/2 - math.pi/4 , 18, 1, 1, 1,0,true) --out if fire\n\n        if TensorCore.hasBuff(p,water) then\n            green:addTimedArrow(5000, 100, 0, 100, heading2North + math.pi/2 + math.pi/4, 2, 1, 1, 1,duration,true) --rewind\n            green:addTimedArrow(5000, 100, 0, 100, heading2North - math.pi/2 - math.pi/4, 2, 1, 1, 1,duration,true) --rewind\n        end\n        if TensorCore.hasBuff(p,dark) then\n            green:addTimedArrow(5000, 100, 0, 100, heading2North + math.pi/2 + math.pi/4, 7.5, 1, 1, 1,duration,true) --rewind\n            green:addTimedArrow(5000, 100, 0, 100, heading2North - math.pi/2 - math.pi/4, 7.5, 1, 1, 1,duration,true) --rewind\n        end\n\n        green:addTimedCircle(5000,center.x,0,center.z,3,duration + 5000,true) --center ice\n\n        green:addTimedArrow(5000, 100, 0, 100, heading2North + math.pi/2 + math.pi/4, 8.5, 1, 1, 1,duration + 5000 + 5000,true) --bait hourglass\n        green:addTimedArrow(5000, 100, 0, 100, heading2North - math.pi/2 - math.pi/4, 8.5, 1, 1, 1,duration + 5000 + 5000,true) --bait hourglass\n\n        green:addTimedCircle(5000,center.x,0,center.z,5,duration + 5000 + 5000 + 5000,true) --center\n\n        green:addTimedCircle(5000,center.x,0,center.z,5,duration + 5000 + 5000 + 5000 + 5000,true) --center\n    end\nend\nself.used = true",
							conditions = 
							{
								
								{
									"1b7f9aee-52d5-54af-8af5-d0e1472f814c",
									true,
								},
								
								{
									"ea36a1e1-3973-0721-90a8-16a347e0ddb2",
									true,
								},
							},
							uuid = "309a023d-0e72-b091-afe6-39c7a29ff83e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							buffCheckType = 3,
							buffDuration = 15,
							buffID = 2464,
							category = "Party",
							comparator = 2,
							name = "rewind <= 15",
							partyTargetSubType = "Number",
							uuid = "1b7f9aee-52d5-54af-8af5-d0e1472f814c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.megaminx_p3_ur_north ~= nil",
							uuid = "ea36a1e1-3973-0721-90a8-16a347e0ddb2",
							version = 3,
						},
					},
				},
				displayPath = "FRU_megaminx_indicator",
				enabled = false,
				mechanicTime = 532.4,
				name = "gray 9 UR indicator [AnyoneCore test needed]",
				timeRange = true,
				timelineIndex = 123,
				timerEndOffset = 100,
				timerStartOffset = -100,
				uuid = "77ba4a0f-99e2-2d28-a15b-20499e89c230",
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
							actionLua = "-- local index = 1\n\nlocal p = TensorCore.mGetPlayer()\nlocal buffs = {}\nlocal buffList = {\n    [2455] = true,\n    [2462] = true,\n}\n\nfor k, v in pairs(p.buffs) do\n    if buffList[v.id] then\n        buffs[v.id] = v.duration\n    end\nend\n\nlocal green = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0/255, 255/255, 0/255, .25),2)\nlocal white = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(255/255, 255/255, 255/255, .25),2)\nlocal center = {x = 100, y = 0,z = 100}\nlocal fire = 2455\nlocal ice = 2462\nlocal yellow = 2454\nlocal water = 2461\nlocal dark = 2460\nlocal heading2North = data.megaminx_p3_ur_north\nif TensorCore.isTank(p) or TensorCore.isHealer(p) then --support\n    if TensorCore.hasBuff(p,fire,nil,nil,20) then --long fire\n        --center, ne nw bait, center ice, center(rewind), out, center\n\n        local duration = buffs[2455] * 1000\n\n        white:addTimedArrow(40000, 100, 0, 100, heading2North + math.pi/4, 40, .3, .3, .3,0,true)\n        white:addTimedArrow(40000, 100, 0, 100, heading2North - math.pi/4, 40, .3, .3, .3,0,true) --these 2 lines can be refined after using prio system\n\n        green:addTimedCircle(duration  - 20000,center.x,0,center.z,5,0,true) --center\n\n        green:addTimedArrow(5000, 100, 0, 100, heading2North + math.pi/4, 8.5, 1, 1, 1,duration  - 20000,true) --\n        green:addTimedArrow(5000, 100, 0, 100, heading2North - math.pi/4, 8.5, 1, 1, 1,duration  - 20000,true) --bait hourglass\n\n        green:addTimedCircle(5000,center.x,0,center.z,3,duration  - 20000 + 5000,true) --center ice\n\n        green:addTimedArrow(5000, 100, 0, 100, heading2North + math.pi/4, 2, 1, 1, 1,duration  - 20000 + 5000 + 5000,true) --\n        green:addTimedArrow(5000, 100, 0, 100, heading2North - math.pi/4, 2, 1, 1, 1,duration  - 20000 + 5000 + 5000,true) -- rewind\n\n        green:addTimedArrow(5000, 100, 0, 100, heading2North + math.pi/4, 18, 1, 1, 1,duration  - 20000 + 5000 + 5000 + 5000,true) --\n        green:addTimedArrow(5000, 100, 0, 100, heading2North - math.pi/4, 18, 1, 1, 1,duration  - 20000 + 5000 + 5000 + 5000,true) -- out\n\n        green:addTimedCircle(5000,center.x,0,center.z,5,duration  - 20000 + 5000 + 5000 + 5000 + 5000,true) --center\n    elseif TensorCore.hasBuff(p,fire,nil,nil,10) then --medium fire\n        --center, rewind(dark out water in), out(west (灰9east)), center, center, bait(west (灰9east))\n        local duration = buffs[2455] * 1000\n\n        white:addTimedArrow(40000, 100, 0, 100, heading2North + math.pi/2 , 40, .3, .3, .3,0,true)\n        --white:addTimedArrow(40000, 100, 0, 100, heading2North - math.pi/2, 40, .3, .3, .3,0,true) \n\n        green:addTimedCircle(duration  - 10000,center.x,0,center.z,5,0,true) --center\n\n        if TensorCore.hasBuff(p,water) then\n            green:addTimedArrow(5000, 100, 0, 100, heading2North + math.pi/2 , 2, 1, 1, 1,duration  - 10000,true) --rewind\n        end\n        if TensorCore.hasBuff(p,dark) then\n            green:addTimedArrow(5000, 100, 0, 100, heading2North + math.pi/2 , 7.5, 1, 1, 1,duration  - 10000,true) --rewind\n        end--\n\n        green:addTimedArrow(5000, 100, 0, 100, heading2North + math.pi/2 , 18, 1, 1, 1,duration  - 10000 + 5000,true) --out\n        \n\n        green:addTimedCircle(5000,center.x,0,center.z,5,duration  - 10000 + 5000 + 5000,true) --center\n\n        green:addTimedCircle(5000,center.x,0,center.z,5,duration  - 10000 + 5000 + 5000 + 5000,true) --center\n\n        green:addTimedArrow(5000, 100, 0, 100, heading2North + math.pi/2 , 8.5, 1, 1, 1,duration  - 10000 + 5000 + 5000 + 5000 + 5000,true) --bait hourglass\n    else -- short fire or ice\n        --(ice center, fire out), rewind(dark out water in), center ice, n bait, center, center\n        local duration\n        local isIce = TensorCore.hasBuff(p,ice)\n        local isFire = TensorCore.hasBuff(p,fire)\n        if isIce then\n            duration = buffs[2462] * 1000 - 10000\n            green:addTimedCircle(duration,center.x,0,center.z,5,0,true) --center if ice\n        end\n        if isFire then\n            duration = buffs[2455] * 1000\n            green:addTimedArrow(duration, 100, 0, 100, heading2North , 18, 1, 1, 1,0,true) --out if fire\n        end\n        white:addTimedArrow(40000, 100, 0, 100, heading2North, 40, .3, .3, .3,0,true)\n\n        if TensorCore.hasBuff(p,water) then\n            green:addTimedArrow(5000, 100, 0, 100, heading2North, 2, 1, 1, 1,duration,true) --rewind\n        end\n        if TensorCore.hasBuff(p,dark) then\n            green:addTimedArrow(5000, 100, 0, 100, heading2North, 7.5, 1, 1, 1,duration,true) --rewind\n        end\n\n        green:addTimedCircle(5000,center.x,0,center.z,3,duration + 5000,true) --center ice\n\n        green:addTimedArrow(5000, 100, 0, 100, heading2North, 8.5, 1, 1, 1,duration + 5000 + 5000,true) --bait hourglass\n\n        green:addTimedCircle(5000,center.x,0,center.z,5,duration + 5000 + 5000 + 5000,true) --center\n\n        green:addTimedCircle(5000,center.x,0,center.z,5,duration + 5000 + 5000 + 5000 + 5000,true) --center\n    end\nelse --dps\n    if TensorCore.hasBuff(p,fire,nil,nil,20) or TensorCore.hasBuff(p,ice) then --long fire\n        --center, s bait, center ice, center(rewind), out, center\n        local duration\n        local isIce = TensorCore.hasBuff(p,ice)\n        local isFire = TensorCore.hasBuff(p,fire)\n        if isIce then\n            duration = buffs[2462] * 1000 + 10000\n        end\n        if isFire then\n            duration = buffs[2455] * 1000\n        end\n\n        white:addTimedArrow(40000, 100, 0, 100, heading2North + math.pi, 40, .3, .3, .3,0,true)\n\n        green:addTimedCircle(duration  - 20000,center.x,0,center.z,5,0,true) --center\n\n        green:addTimedArrow(5000, 100, 0, 100, heading2North + math.pi, 8.5, 1, 1, 1,duration  - 20000,true) --bait hourglass\n\n        green:addTimedCircle(5000,center.x,0,center.z,3,duration  - 20000 + 5000,true) --center ice\n\n        green:addTimedArrow(5000, 100, 0, 100, heading2North + math.pi, 2, 1, 1, 1,duration  - 20000 + 5000 + 5000,true) --rewind\n\n        green:addTimedArrow(5000, 100, 0, 100, heading2North + math.pi, 18, 1, 1, 1,duration  - 20000 + 5000 + 5000 + 5000,true) --out\n\n        green:addTimedCircle(5000,center.x,0,center.z,5,duration  - 20000 + 5000 + 5000 + 5000 + 5000,true) --center\n    elseif TensorCore.hasBuff(p,fire,nil,nil,10) then --medium fire\n        --center, rewind(dark out water in), out(east (灰9west)), center, center, bait(east (灰9west))\n        --center, rewind(dark out water in), out(west (灰9east)), center, center, bait(west (灰9east))\n        local duration = buffs[2455] * 1000\n\n        white:addTimedArrow(40000, 100, 0, 100, heading2North - math.pi/2 , 40, .3, .3, .3,0,true)\n        --white:addTimedArrow(40000, 100, 0, 100, heading2North - math.pi/2, 40, .3, .3, .3,0,true) \n\n        green:addTimedCircle(duration  - 10000,center.x,0,center.z,5,0,true) --center\n\n        if TensorCore.hasBuff(p,water) then\n            green:addTimedArrow(5000, 100, 0, 100, heading2North - math.pi/2 , 2, 1, 1, 1,duration  - 10000,true) --rewind\n        end\n        if TensorCore.hasBuff(p,dark) then\n            green:addTimedArrow(5000, 100, 0, 100, heading2North - math.pi/2 , 7.5, 1, 1, 1,duration  - 10000,true) --rewind\n        end--\n\n        green:addTimedArrow(5000, 100, 0, 100, heading2North - math.pi/2 , 18, 1, 1, 1,duration  - 10000 + 5000,true) --out\n        \n\n        green:addTimedCircle(5000,center.x,0,center.z,5,duration  - 10000 + 5000 + 5000,true) --center\n\n        green:addTimedCircle(5000,center.x,0,center.z,5,duration  - 10000 + 5000 + 5000 + 5000,true) --center\n\n        green:addTimedArrow(5000, 100, 0, 100, heading2North - math.pi/2 , 8.5, 1, 1, 1,duration  - 10000 + 5000 + 5000 + 5000 + 5000,true) --bait hourglass\n    else -- short fire or ice\n        --fire out se sw, rewind(dark out water in), center, sw se bait, center, center\n        --(ice center, fire out), rewind(dark out water in), center ice, n bait, center, center\n        local duration = buffs[2455] * 1000\n        white:addTimedArrow(40000, 100, 0, 100, heading2North + math.pi/2 + math.pi/4, 40, .3, .3, .3,0,true)\n        white:addTimedArrow(40000, 100, 0, 100, heading2North - math.pi/2 - math.pi/4, 40, .3, .3, .3,0,true)\n\n        green:addTimedArrow(duration, 100, 0, 100, heading2North + math.pi/2 + math.pi/4 , 18, 1, 1, 1,0,true) --out if fire\n        green:addTimedArrow(duration, 100, 0, 100, heading2North - math.pi/2 - math.pi/4 , 18, 1, 1, 1,0,true) --out if fire\n\n        if TensorCore.hasBuff(p,water) then\n            green:addTimedArrow(5000, 100, 0, 100, heading2North + math.pi/2 + math.pi/4, 2, 1, 1, 1,duration,true) --rewind\n            green:addTimedArrow(5000, 100, 0, 100, heading2North - math.pi/2 - math.pi/4, 2, 1, 1, 1,duration,true) --rewind\n        end\n        if TensorCore.hasBuff(p,dark) then\n            green:addTimedArrow(5000, 100, 0, 100, heading2North + math.pi/2 + math.pi/4, 7.5, 1, 1, 1,duration,true) --rewind\n            green:addTimedArrow(5000, 100, 0, 100, heading2North - math.pi/2 - math.pi/4, 7.5, 1, 1, 1,duration,true) --rewind\n        end\n\n        green:addTimedCircle(5000,center.x,0,center.z,3,duration + 5000,true) --center ice\n\n        green:addTimedArrow(5000, 100, 0, 100, heading2North + math.pi/2 + math.pi/4, 8.5, 1, 1, 1,duration + 5000 + 5000,true) --bait hourglass\n        green:addTimedArrow(5000, 100, 0, 100, heading2North - math.pi/2 - math.pi/4, 8.5, 1, 1, 1,duration + 5000 + 5000,true) --bait hourglass\n\n        green:addTimedCircle(5000,center.x,0,center.z,5,duration + 5000 + 5000 + 5000,true) --center\n\n        green:addTimedCircle(5000,center.x,0,center.z,5,duration + 5000 + 5000 + 5000 + 5000,true) --center\n    end\nend\nself.used = true",
							conditions = 
							{
								
								{
									"0de2585c-d47a-655d-b555-2795e1169586",
									true,
								},
								
								{
									"bf046885-b77f-2611-a692-47f1ba9b862b",
									true,
								},
							},
							uuid = "8148c5b8-1758-7e31-9daa-0c84312c1abc",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							buffCheckType = 3,
							buffDuration = 15,
							buffID = 2464,
							category = "Party",
							comparator = 2,
							name = "rewind <= 15",
							partyTargetSubType = "Number",
							uuid = "0de2585c-d47a-655d-b555-2795e1169586",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.megaminx_p3_ur_north ~= nil",
							uuid = "bf046885-b77f-2611-a692-47f1ba9b862b",
							version = 3,
						},
					},
				},
				displayPath = "FRU_megaminx_indicator",
				enabled = false,
				mechanicTime = 532.4,
				name = "UR indicator active [AnyoneCore test needed]",
				timeRange = true,
				timelineIndex = 123,
				timerEndOffset = 100,
				timerStartOffset = -100,
				uuid = "3b54cfe4-8879-2a71-8fcf-ea51a01965e1",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU",
				uuid = "136698d7-510d-0e25-b552-edb1606c7d29",
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
							actionLua = "local index\nlocal p = TensorCore.mGetPlayer()\nlocal roster = AnyoneCore and AnyoneCore.Roster\r\nif roster == nil or roster.current() == nil then\r\n    self.used = true\r\n    return\r\nend\r\nlocal mySlot = roster.mySlot()\r\nlocal myRole = (mySlot == \"T1\" and \"MT\") or (mySlot == \"T2\" and \"OT\") or mySlot\r\nif not roster.isReady() then\r\n    self.used = true\r\n    return\r\nend\r\nif p == nil then self.used = true; return end\r\nif myRole == \"MT\" then index = 1\r\nelseif myRole == \"OT\" then index = 2\r\nelseif myRole == \"H1\" then index = 3\r\nelseif myRole == \"H2\" then index = 4\r\nelseif myRole == \"M1\" then index = 5\r\nelseif myRole == \"M2\" then index = 6\r\nelseif myRole == \"R1\" then index = 7\r\nelseif myRole == \"R2\" then index = 8\r\nelse self.used = true; return end\r\nlocal partyIDs = {\r\n    roster.idOf(\"T1\"),\r\n    roster.idOf(\"T2\"),\r\n    roster.idOf(\"H1\"),\r\n    roster.idOf(\"H2\"),\r\n    roster.idOf(\"M1\"),\r\n    roster.idOf(\"M2\"),\r\n    roster.idOf(\"R1\"),\r\n    roster.idOf(\"R2\")\r\n}local p = TensorCore.mGetEntity(partyIDs[index])\nlocal buffs = {}\r\nlocal fireBuff = TensorCore.getBuff(p, 2455)\r\nlocal iceBuff = TensorCore.getBuff(p, 2462)\r\nif fireBuff then buffs[2455] = fireBuff.duration end\r\nif iceBuff then buffs[2462] = iceBuff.duration end\n\nlocal function checkDebuff(index, startRange, endRange, buffid)\n    local playerEnt  = TensorCore.mGetEntity(partyIDs[index])\n    local playerBuff = TensorCore.getBuff(playerEnt, buffid)\n    --d(playerBuff)\n    local customOrder\n    if startRange == 1 and endRange == 4 then\n        customOrder = {3, 1, 2, 4}\n    else\n        customOrder = {7, 5, 6, 8}\n    end\n    local idxPos = 999 \n    for pos, val in ipairs(customOrder) do\n        if val == index then\n            idxPos = pos\n            break\n        end\n    end\n\n    for i = startRange, endRange do\n        if i == index then\n            continue\n        end\n\n        local ent  = TensorCore.mGetEntity(partyIDs[i])\n        local buff = TensorCore.getBuff(ent, buffid)\n        --d(buff)\n\n        if playerBuff and buff then\n            if math.abs(buff.duration - playerBuff.duration) < 1 then\n                local iPos = 999\n                for pos, val in ipairs(customOrder) do\n                    if val == i then\n                        iPos = pos\n                        break\n                    end\n                end\n                if idxPos < iPos then\n                    return true\n                else\n                    return false\n                end\n            end\n        end\n    end\n\n    return false\nend\n\n\nlocal green = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0/255, 255/255, 0/255, .25),2)\nlocal white = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(255/255, 255/255, 255/255, .25),2)\nlocal center = {x = 100, y = 0,z = 100}\nlocal fire = 2455\nlocal ice = 2462\nlocal yellow = 2454\nlocal water = 2461\nlocal dark = 2460\nlocal heading2North = data.megaminx_p3_ur_north\nif TensorCore.isTank(p) or TensorCore.isHealer(p) then --support\n    if TensorCore.hasBuff(p,fire,nil,nil,20) then --long fire\n        --center, ne nw bait, center ice, center(rewind), out, center\n\n        local result = checkDebuff(index, 1, 4, fire)\n        if (result == true) then\n            AnyoneCore.Shotcall(\"left\", true, 40, false)\n        else\n            AnyoneCore.Shotcall(\"right\", true, 40, false)\n        end\n\n        local sideHeading = heading2North + (result and math.pi/4 or -math.pi/4)\n        local duration = buffs[2455] * 1000\n\n        white:addTimedArrow(40000, 100, 0, 100, sideHeading, 40, .3, .3, .3,0,true)\n\n        green:addTimedCircle(duration  - 20000,center.x,0,center.z,5,0,true) --center\n\n        green:addTimedArrow(5000, 100, 0, 100, sideHeading, 8.5, 1, 1, 1,duration  - 20000,true) --\n\n        green:addTimedCircle(5000,center.x,0,center.z,3,duration  - 20000 + 5000,true) --center ice\n\n        green:addTimedArrow(5000, 100, 0, 100, sideHeading, 2, 1, 1, 1,duration  - 20000 + 5000 + 5000,true) --\n\n        green:addTimedArrow(5000, 100, 0, 100, sideHeading, 18, 1, 1, 1,duration  - 20000 + 5000 + 5000 + 5000,true) --\n\n        green:addTimedCircle(5000,center.x,0,center.z,5,duration  - 20000 + 5000 + 5000 + 5000 + 5000,true) --center\n    elseif TensorCore.hasBuff(p,fire,nil,nil,10) then --medium fire\n        --center, rewind(dark out water in), out(west (9east)), center, center, bait(west (9east))\n        local duration = buffs[2455] * 1000\n\n        white:addTimedArrow(40000, 100, 0, 100, heading2North + math.pi/2, 40, .3, .3, .3,0,true)\n        --white:addTimedArrow(40000, 100, 0, 100, heading2North - math.pi/2, 40, .3, .3, .3,0,true) \n\n        green:addTimedCircle(duration  - 10000,center.x,0,center.z,5,0,true) --center\n\n        if TensorCore.hasBuff(p,water) then\n            green:addTimedArrow(5000, 100, 0, 100, heading2North + math.pi/2, 2, 1, 1, 1,duration  - 10000,true) --rewind\n        end\n        if TensorCore.hasBuff(p,dark) then\n            green:addTimedArrow(5000, 100, 0, 100, heading2North + math.pi/2, 7.5, 1, 1, 1,duration  - 10000,true) --rewind\n        end--\n\n        green:addTimedArrow(5000, 100, 0, 100, heading2North + math.pi/2, 18, 1, 1, 1,duration  - 10000 + 5000,true) --out\n        \n\n        green:addTimedCircle(5000,center.x,0,center.z,5,duration  - 10000 + 5000 + 5000,true) --center\n\n        green:addTimedCircle(5000,center.x,0,center.z,5,duration  - 10000 + 5000 + 5000 + 5000,true) --center\n\n        green:addTimedArrow(5000, 100, 0, 100, heading2North + math.pi/2, 8.5, 1, 1, 1,duration  - 10000 + 5000 + 5000 + 5000 + 5000,true) --bait hourglass\n    else -- short fire or ice\n        --(ice center, fire out), rewind(dark out water in), center ice, n bait, center, center\n        local duration\n        local isIce = TensorCore.hasBuff(p,ice)\n        local isFire = TensorCore.hasBuff(p,fire)\n        if isIce then\n            duration = buffs[2462] * 1000 - 10000\n            green:addTimedCircle(duration,center.x,0,center.z,5,0,true) --center if ice\n        end\n        if isFire then\n            duration = buffs[2455] * 1000\n            green:addTimedArrow(duration, 100, 0, 100, heading2North , 18, 1, 1, 1,0,true) --out if fire\n        end\n        white:addTimedArrow(40000, 100, 0, 100, heading2North, 40, .3, .3, .3,0,true)\n\n        if TensorCore.hasBuff(p,water) then\n            green:addTimedArrow(5000, 100, 0, 100, heading2North, 2, 1, 1, 1,duration,true) --rewind\n        end\n        if TensorCore.hasBuff(p,dark) then\n            green:addTimedArrow(5000, 100, 0, 100, heading2North, 7.5, 1, 1, 1,duration,true) --rewind\n        end\n\n        green:addTimedCircle(5000,center.x,0,center.z,3,duration + 5000,true) --center ice\n\n        green:addTimedArrow(5000, 100, 0, 100, heading2North, 8.5, 1, 1, 1,duration + 5000 + 5000,true) --bait hourglass\n\n        green:addTimedCircle(5000,center.x,0,center.z,5,duration + 5000 + 5000 + 5000,true) --center\n\n        green:addTimedCircle(5000,center.x,0,center.z,5,duration + 5000 + 5000 + 5000 + 5000,true) --center\n    end\nelse --dps\n\n    if TensorCore.hasBuff(p,fire,nil,nil,20) or TensorCore.hasBuff(p,ice) then --long fire\n        --center, s bait, center ice, center(rewind), out, center\n        local duration\n        local isIce = TensorCore.hasBuff(p,ice)\n        local isFire = TensorCore.hasBuff(p,fire)\n        if isIce then\n            duration = buffs[2462] * 1000 + 10000\n        end\n        if isFire then\n            duration = buffs[2455] * 1000\n        end\n\n        white:addTimedArrow(40000, 100, 0, 100, heading2North + math.pi, 40, .3, .3, .3,0,true)\n\n        green:addTimedCircle(duration  - 20000,center.x,0,center.z,5,0,true) --center\n\n        green:addTimedArrow(5000, 100, 0, 100, heading2North + math.pi, 8.5, 1, 1, 1,duration  - 20000,true) --bait hourglass\n\n        green:addTimedCircle(5000,center.x,0,center.z,3,duration  - 20000 + 5000,true) --center ice\n\n        green:addTimedArrow(5000, 100, 0, 100, heading2North + math.pi, 2, 1, 1, 1,duration  - 20000 + 5000 + 5000,true) --rewind\n\n        green:addTimedArrow(5000, 100, 0, 100, heading2North + math.pi, 18, 1, 1, 1,duration  - 20000 + 5000 + 5000 + 5000,true) --out\n\n        green:addTimedCircle(5000,center.x,0,center.z,5,duration  - 20000 + 5000 + 5000 + 5000 + 5000,true) --center\n    elseif TensorCore.hasBuff(p,fire,nil,nil,10) then --medium fire\n        --center, rewind(dark out water in), out(east (9west)), center, center, bait(east (9west))\n        --center, rewind(dark out water in), out(west (9east)), center, center, bait(west (9east))\n        local duration = buffs[2455] * 1000\n\n        white:addTimedArrow(40000, 100, 0, 100, heading2North - math.pi/2, 40, .3, .3, .3,0,true)\n        --white:addTimedArrow(40000, 100, 0, 100, heading2North - math.pi/2, 40, .3, .3, .3,0,true) \n\n        green:addTimedCircle(duration  - 10000,center.x,0,center.z,5,0,true) --center\n\n        if TensorCore.hasBuff(p,water) then\n            green:addTimedArrow(5000, 100, 0, 100, heading2North - math.pi/2, 2, 1, 1, 1,duration  - 10000,true) --rewind\n        end\n        if TensorCore.hasBuff(p,dark) then\n            green:addTimedArrow(5000, 100, 0, 100, heading2North - math.pi/2, 7.5, 1, 1, 1,duration  - 10000,true) --rewind\n        end--\n\n        green:addTimedArrow(5000, 100, 0, 100, heading2North - math.pi/2, 18, 1, 1, 1,duration  - 10000 + 5000,true) --out\n        \n\n        green:addTimedCircle(5000,center.x,0,center.z,5,duration  - 10000 + 5000 + 5000,true) --center\n\n        green:addTimedCircle(5000,center.x,0,center.z,5,duration  - 10000 + 5000 + 5000 + 5000,true) --center\n\n        green:addTimedArrow(5000, 100, 0, 100, heading2North - math.pi/2, 8.5, 1, 1, 1,duration  - 10000 + 5000 + 5000 + 5000 + 5000,true) --bait hourglass\n    else -- short fire or ice\n        --fire out se sw, rewind(dark out water in), center, sw se bait, center, center\n        --(ice center, fire out), rewind(dark out water in), center ice, n bait, center, center\n        local duration = buffs[2455] * 1000\n\n        local result = checkDebuff(index, 5, 8, fire)\n        if (result == true) then\n            AnyoneCore.Shotcall(\"left\", true, 40, false)\n        else\n            AnyoneCore.Shotcall(\"right\", true, 40, false)\n        end\n\n        local sideHeading = heading2North + (result and 3*math.pi/4 or -3*math.pi/4)\n        white:addTimedArrow(40000, 100, 0, 100, sideHeading, 40, .3, .3, .3,0,true)\n\n        green:addTimedArrow(duration, 100, 0, 100, sideHeading , 18, 1, 1, 1,0,true) --out if fire\n\n        if TensorCore.hasBuff(p,water) then\n            green:addTimedArrow(5000, 100, 0, 100, sideHeading, 2, 1, 1, 1,duration,true) --rewind\n        end\n        if TensorCore.hasBuff(p,dark) then\n            green:addTimedArrow(5000, 100, 0, 100, sideHeading, 7.5, 1, 1, 1,duration,true) --rewind\n        end\n\n        green:addTimedCircle(5000,center.x,0,center.z,3,duration + 5000,true) --center ice\n\n        green:addTimedArrow(5000, 100, 0, 100, sideHeading, 8.5, 1, 1, 1,duration + 5000 + 5000,true) --bait hourglass\n\n        green:addTimedCircle(5000,center.x,0,center.z,5,duration + 5000 + 5000 + 5000,true) --center\n\n        green:addTimedCircle(5000,center.x,0,center.z,5,duration + 5000 + 5000 + 5000 + 5000,true) --center\n    end\nend\nself.used = true",
							conditions = 
							{
								
								{
									"c69d61b8-8e7b-b060-88e8-6441f5065e68",
									true,
								},
								
								{
									"d754e407-a016-31f6-9c0b-0e7676ac7c23",
									true,
								},
							},
							uuid = "b2c41306-159a-5995-926b-88b58b638d84",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							buffCheckType = 3,
							buffDuration = 15,
							buffID = 2464,
							category = "Party",
							comparator = 2,
							name = "rewind <= 15",
							partyTargetSubType = "Number",
							uuid = "c69d61b8-8e7b-b060-88e8-6441f5065e68",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.megaminx_p3_ur_north ~= nil",
							uuid = "d754e407-a016-31f6-9c0b-0e7676ac7c23",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				mechanicTime = 532.4,
				name = "UR indicator [LPDU]",
				timeRange = true,
				timelineIndex = 123,
				timerEndOffset = 100,
				timerStartOffset = -100,
				uuid = "f5e3df53-28f6-4c44-a092-4353df71288e",
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
							actionLua = "if data.megaminx_p3_ur_hourglass == nil then data.megaminx_p3_ur_hourglass = {} end\ntable.insert(data.megaminx_p3_ur_hourglass,eventArgs.sourceEntityID)\nif table.size(data.megaminx_p3_ur_hourglass) == 3 then\n    --local green = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0/255, 255/255, 0/255, .25), 2)\n    local center = {x = 100, y = 0, z = 100}\n    local ent1 = TensorCore.mGetEntity(data.megaminx_p3_ur_hourglass[1])\n    local ent2 = TensorCore.mGetEntity(data.megaminx_p3_ur_hourglass[2])\n    local ent3 = TensorCore.mGetEntity(data.megaminx_p3_ur_hourglass[3])\n    local function find_most_distant_ent(ents)\n        local max_total_distance = -math.huge\n        local most_distant_ent = nil\n    \n        for i, ent in ipairs(ents) do\n            local total_distance = 0\n            for j, other_ent in ipairs(ents) do\n                if i ~= j then\n                    total_distance = total_distance + TensorCore.getDistance2d(ent.pos, other_ent.pos)\n                end\n            end\n    \n            if total_distance > max_total_distance then\n                max_total_distance = total_distance\n                most_distant_ent = ent\n            end\n        end\n    \n        return most_distant_ent, max_total_distance\n    end\n\n    local most_distant_ent = find_most_distant_ent({ent1,ent2,ent3})\n    if data.megaminx_p3_ur_north == nil and most_distant_ent ~= nil then data.megaminx_p3_ur_north = TensorCore.getHeadingToTarget(center,most_distant_ent.pos) + math.pi end\n    --green:addTimedArrow(10000, 100, 0, 100, data.megaminx_p3_ur_north, 10, 1, 1, 1, 0, true)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"b9355b53-f238-16ba-8833-48853f31b0af",
									true,
								},
							},
							uuid = "41c33b69-acf8-1950-bcb2-4ac0924a74be",
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
							conditionLua = "return eventArgs.newTetherID == 134",
							uuid = "b9355b53-f238-16ba-8833-48853f31b0af",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 15,
				loop = true,
				mechanicTime = 532.4,
				name = "get tethers [LPDU]",
				timeRange = true,
				timelineIndex = 123,
				timerEndOffset = 100,
				timerStartOffset = -100,
				uuid = "1d6067b3-0bb5-3731-8520-803dbf1ac03d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Mitigation",
				uuid = "10ca4acd-144b-9985-acb1-0d67e17b9873",
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
							actionID = 7549,
							conditions = 
							{
								
								{
									"141573bd-334c-8c86-958c-0b5a95b5c61c",
									true,
								},
								
								{
									"04783591-799e-0ff8-9f4b-ebf71c02ed08",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] M1 Feint Ultimate Relativity",
							targetType = "Enemy",
							uuid = "cac5f661-9a3e-691d-89f3-5015de9a704f",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"M1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "M1 roster",
							uuid = "141573bd-334c-8c86-958c-0b5a95b5c61c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Ultimate Relativity CD",
							uuid = "04783591-799e-0ff8-9f4b-ebf71c02ed08",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 532.4,
				name = "[LPDU] M1 Feint Ultimate Relativity",
				timeRange = true,
				timelineIndex = 123,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "e743f7df-9519-8f8c-8791-1c36ea2c69eb",
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
							actionID = 7560,
							conditions = 
							{
								
								{
									"e56d9dd9-2361-3cbc-9341-70ea4cc98e8d",
									true,
								},
								
								{
									"80e909a2-8b68-594e-8612-fd970ca012ac",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Addle Ultimate Relativity",
							targetType = "Enemy",
							uuid = "bd2c0d0f-75bc-938c-9861-23c8fe5449a4",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R1 roster",
							uuid = "e56d9dd9-2361-3cbc-9341-70ea4cc98e8d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Ultimate Relativity CD",
							uuid = "80e909a2-8b68-594e-8612-fd970ca012ac",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 532.4,
				name = "[LPDU] R1 Addle Ultimate Relativity",
				timeRange = true,
				timelineIndex = 123,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "c7f13216-deb7-92d9-ae34-d7b42b0e8d98",
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
							actionID = 7405,
							conditions = 
							{
								
								{
									"53869256-1e03-96ae-96a3-792b22e49e48",
									true,
								},
								
								{
									"5d021505-5247-561c-81fd-4b7a97ea6597",
									true,
								},
								
								{
									"50f04ab3-7847-4f93-89ae-009bddf15a4d",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Troubadour - Ultimate Relativity",
							uuid = "c9fb759c-9379-5d2d-a644-ec046a7b42cc",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							conditions = 
							{
								
								{
									"53869256-1e03-96ae-96a3-792b22e49e48",
									true,
								},
								
								{
									"98ee644e-483b-a1be-9de4-aec5ca8700f2",
									true,
								},
								
								{
									"00e1412f-db6e-8e96-b6a6-9ee2306b513e",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Tactician - Ultimate Relativity",
							uuid = "a52b8e02-8488-a029-abd0-10507123ce6d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							conditions = 
							{
								
								{
									"53869256-1e03-96ae-96a3-792b22e49e48",
									true,
								},
								
								{
									"e9e3a393-d873-6b8a-bde5-63e3d5f5ec6e",
									true,
								},
								
								{
									"be86aca8-80a0-2e94-9a3f-bdf0c2aef5e8",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Shield Samba - Ultimate Relativity",
							uuid = "55aafd4f-6dbc-ac94-86ef-bceff82fb2cc",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R2 roster",
							uuid = "53869256-1e03-96ae-96a3-792b22e49e48",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Troubadour job",
							uuid = "5d021505-5247-561c-81fd-4b7a97ea6597",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7405,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "50f04ab3-7847-4f93-89ae-009bddf15a4d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Tactician job",
							uuid = "98ee644e-483b-a1be-9de4-aec5ca8700f2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "00e1412f-db6e-8e96-b6a6-9ee2306b513e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Shield Samba job",
							uuid = "e9e3a393-d873-6b8a-bde5-63e3d5f5ec6e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "be86aca8-80a0-2e94-9a3f-bdf0c2aef5e8",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 532.4,
				name = "[LPDU] R2 Phys Ranged - Ultimate Relativity",
				timeRange = true,
				timelineIndex = 123,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "c97a8944-56ae-af4e-a14d-0cea71c1e86b",
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
							actionID = 25857,
							conditions = 
							{
								
								{
									"2432ead1-e4c7-17f0-8ce9-1dd9406b3bae",
									true,
								},
								
								{
									"59e9c3eb-286c-c7d4-a241-55adc2b5a00c",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Magick Barrier Ultimate Relativity",
							uuid = "2a9f9af8-4522-f013-8b6f-1f5bee4f299f",
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
							jobValue = "REDMAGE",
							name = "REDMAGE job",
							uuid = "2432ead1-e4c7-17f0-8ce9-1dd9406b3bae",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25857,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Ultimate Relativity CD",
							uuid = "59e9c3eb-286c-c7d4-a241-55adc2b5a00c",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 532.4,
				name = "[LPDU] Magick Barrier Ultimate Relativity",
				timeRange = true,
				timelineIndex = 123,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "c17df68f-f42c-1473-bd36-c90a58f6e503",
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
							actionID = 2887,
							conditions = 
							{
								
								{
									"ce28a75f-aa38-0098-bd52-bd122fe9bf9c",
									true,
								},
								
								{
									"28c351b9-956b-f16b-9378-43d7fef5440a",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Dismantle Ultimate Relativity",
							uuid = "ecd58a60-9442-962b-842b-57ff0b8e4702",
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
							jobValue = "MACHINIST",
							name = "MACHINIST job",
							uuid = "ce28a75f-aa38-0098-bd52-bd122fe9bf9c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 2887,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Ultimate Relativity CD",
							uuid = "28c351b9-956b-f16b-9378-43d7fef5440a",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 532.4,
				name = "[LPDU] Dismantle Ultimate Relativity",
				timeRange = true,
				timelineIndex = 123,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "87daed9e-99e5-de83-9f60-7db35f9c79f0",
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
							actionID = 7408,
							conditions = 
							{
								
								{
									"bf116ec1-b115-d1b3-88bf-26acb49a95c5",
									true,
								},
								
								{
									"3ac11ed0-5b3c-fe2e-8856-7969a38def8e",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Nature's Minne Ultimate Relativity",
							uuid = "0e33bc27-66ab-6153-9f55-412c5c75c7cc",
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
							name = "BARD job",
							uuid = "bf116ec1-b115-d1b3-88bf-26acb49a95c5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7408,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Ultimate Relativity CD",
							uuid = "3ac11ed0-5b3c-fe2e-8856-7969a38def8e",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 532.4,
				name = "[LPDU] Nature's Minne Ultimate Relativity",
				timeRange = true,
				timelineIndex = 123,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "cfb7016d-9da2-2133-9f61-4334f8439ba4",
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
							actionID = 65,
							conditions = 
							{
								
								{
									"c3053fc3-fecd-f917-aaff-cec436d5fdcf",
									true,
								},
								
								{
									"30f6f123-21e8-c13b-8cd8-e0ecd9201d38",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Mantra Ultimate Relativity",
							uuid = "49a3c731-75e3-91c8-b9c5-788f32a0606a",
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
							jobValue = "MONK",
							name = "MONK job",
							uuid = "c3053fc3-fecd-f917-aaff-cec436d5fdcf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 65,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Ultimate Relativity CD",
							uuid = "30f6f123-21e8-c13b-8cd8-e0ecd9201d38",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 532.4,
				name = "[LPDU] Mantra Ultimate Relativity",
				timeRange = true,
				timelineIndex = 123,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "c7752c26-bd9e-dfa0-b466-34d8cb8fed15",
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
				name = "store\\anyone\\fru\\fru",
				uuid = "ba5d1671-6448-03b5-36f5-5507b460c981",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Strat] UR Helper Increment Step",
				uuid = "54812843-08c3-b4da-9599-c8125e9796bd",
				version = 2,
			},
			inheritedObjectUUID = "ba88369e-a341-558d-821f-10f50a3a1bc4",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[Melee] Bloodbath",
				uuid = "f55334b2-4eda-6f3d-8b66-1a9f9d33ddbd",
				version = 2,
			},
			inheritedObjectUUID = "49865abd-8207-d2bc-9a34-415b62d88830",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[MNK] Mantra",
				uuid = "c07cc506-f69a-0622-824d-c96c0524fe6a",
				version = 2,
			},
			inheritedObjectUUID = "fdc04865-3c0d-341f-94a4-8dd41fb0cc95",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[VPR] Bloodbath",
				uuid = "e3e3a939-4fba-cbc6-b0ac-9e3a88392808",
				version = 2,
			},
			inheritedObjectUUID = "39acb337-cea0-d1c1-8743-bc13d742c36e",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Mitigation",
				uuid = "13ba74d3-cd8a-8ab1-8387-6bbdb4836ecf",
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
							actionID = 7405,
							conditions = 
							{
								
								{
									"0e7e1f8c-ef57-23bb-9723-95a7c0811434",
									true,
								},
								
								{
									"73b8c897-1f56-2149-a742-b8820363061c",
									true,
								},
								
								{
									"d8818e98-6ea1-c7b2-a28b-9b6a1d5864d8",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Troubadour - Dark Fire III",
							uuid = "6734be20-1285-c262-bff5-efffae021367",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							conditions = 
							{
								
								{
									"0e7e1f8c-ef57-23bb-9723-95a7c0811434",
									true,
								},
								
								{
									"2586c158-ceb7-35a9-8707-d7eb98730d10",
									true,
								},
								
								{
									"b4307db0-d05c-4ee8-96df-98710c45c5f4",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Tactician - Dark Fire III",
							uuid = "0f05c15a-4c8f-4296-b7c6-12ee37fe3cba",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							conditions = 
							{
								
								{
									"0e7e1f8c-ef57-23bb-9723-95a7c0811434",
									true,
								},
								
								{
									"54cebcea-b6fc-f17b-ac4d-63f958fc84a2",
									true,
								},
								
								{
									"7badc476-6a9e-1595-a2c6-852ed4863a2e",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Shield Samba - Dark Fire III",
							uuid = "5380b45f-2655-6dc3-bb3a-8edc1e1003de",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R1 roster",
							uuid = "0e7e1f8c-ef57-23bb-9723-95a7c0811434",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Troubadour job",
							uuid = "73b8c897-1f56-2149-a742-b8820363061c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7405,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "d8818e98-6ea1-c7b2-a28b-9b6a1d5864d8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Tactician job",
							uuid = "2586c158-ceb7-35a9-8707-d7eb98730d10",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "b4307db0-d05c-4ee8-96df-98710c45c5f4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Shield Samba job",
							uuid = "54cebcea-b6fc-f17b-ac4d-63f958fc84a2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "7badc476-6a9e-1595-a2c6-852ed4863a2e",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 544.2,
				name = "[LPDU] R1 Phys Ranged - Dark Fire III",
				timeRange = true,
				timelineIndex = 126,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "3d44792d-3204-944d-a8c8-6ea3d7bbc91d",
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
							actionID = 34686,
							conditions = 
							{
								
								{
									"2a3b9119-5474-e5ac-9440-6bd9b197c083",
									true,
								},
								
								{
									"3be70692-84ed-38e1-b775-584fca86315d",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Tempera Grassa Dark Fire III",
							uuid = "b069dfb9-adda-d6c2-ad23-33d17499fa49",
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
							jobValue = "PICTOMANCER",
							name = "PICTOMANCER job",
							uuid = "2a3b9119-5474-e5ac-9440-6bd9b197c083",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 34686,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Dark Fire III CD",
							uuid = "3be70692-84ed-38e1-b775-584fca86315d",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 544.2,
				name = "[LPDU] Tempera Grassa Dark Fire III",
				timeRange = true,
				timelineIndex = 126,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "84b54d4d-f772-d2b3-ab5e-5b6b8187f7af",
				version = 2,
			},
		},
	},
	[127] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "cb438f54-883e-33c8-a5f0-830a5e6b6ba4",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[128] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "d59986f7-c471-a0d3-5737-a6c1573869c7",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[DPS] Second Wind",
				uuid = "1b83b981-dc96-0bc8-8d79-79d78708da8d",
				version = 2,
			},
			inheritedObjectUUID = "ee6b0670-c3a7-6a9e-9574-b7fe62499328",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[VPR] Second Wind",
				uuid = "2ca80f05-c72c-3dbd-9415-feb04cbd58e5",
				version = 2,
			},
			inheritedObjectUUID = "7593fa92-71a9-8d4c-a69c-a6fb1c0647ac",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[RDM] Barrier",
				uuid = "5ec62948-ac4b-3a17-9385-00d010ce0c79",
				version = 2,
			},
			inheritedObjectUUID = "da986272-4134-80aa-a19b-a94be0282a5d",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[BRD] Nature's Minne",
				uuid = "3d2e590c-deb2-4fd3-97f6-8ab773eb90b6",
				version = 2,
			},
			inheritedObjectUUID = "bab86f66-b9a0-c00b-a725-dc2d98419677",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[130] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "ab45e70c-e09b-9b58-2ea5-229691f26edc",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Ranged] rDPS Mit",
				uuid = "f66f047e-3c04-dbd2-a1c7-6f3151e0d93b",
				version = 2,
			},
			inheritedObjectUUID = "2cfdf1fd-0421-53ed-a7a7-41adc6b22a2c",
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
				name = "store\\anyone\\fru\\fru",
				uuid = "90ac3d49-8c04-4605-3e91-306372189919",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[132] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "24c4ab56-380d-af82-d94c-b44c32717226",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Caster] Addle (Secondary)",
				uuid = "dbeda0ea-b3a0-b7f2-9fe0-06c491c57612",
				version = 2,
			},
			inheritedObjectUUID = "b758bcbb-d42b-8ca3-824b-92b1c2e95e24",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[133] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "08a46f23-1cad-839f-48e0-5989a11af5b3",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[134] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "c697f450-42c0-80b4-8766-471a44ab7a20",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[135] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "7f47439d-a528-2fd1-0729-0f57de7e956d",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU",
				uuid = "26cdcd58-e875-7bce-a8de-8a36acb52694",
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
							aType = "Alert",
							alertDuration = 3000,
							alertPriority = 2,
							alertText = "Look away",
							uuid = "324cff15-c98b-dad5-bdf6-4476aea8e24f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU",
				mechanicTime = 574.9,
				name = "[LPDU] P3 Ultimate Relativity - Look Away",
				timeRange = true,
				timelineIndex = 135,
				timerEndOffset = -1.5,
				timerStartOffset = -2.5,
				uuid = "ef62efa7-9ecf-d193-b772-a4e221e175ae",
				version = 2,
			},
		},
	},
	[137] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "3fc14e17-2124-e2cb-2364-5addf2af2e67",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[138] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "e64946f4-e244-2e10-8bcf-fb1ee7d99b44",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[SAM] Tengentsu",
				uuid = "0e9b1505-3618-588a-be3f-ca025b5e51fc",
				version = 2,
			},
			inheritedObjectUUID = "ee38659e-b021-c7f6-b0ea-007ba566bc9e",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[RPR] Arcane Crest",
				uuid = "098e1610-5d58-c0d5-8e80-d8d59f127e51",
				version = 2,
			},
			inheritedObjectUUID = "a9de8d2f-e643-1fa3-b536-75c64b0a9c26",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[DNC] Curing Waltz",
				uuid = "7909e0e6-d3df-2dc6-a4e4-8a3111a42119",
				version = 2,
			},
			inheritedObjectUUID = "de6d5580-ae64-2087-90ee-1b8cf7179556",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Mitigation",
				uuid = "5660c2e9-db72-5fdd-ab2e-c4336b169f59",
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
							actionID = 7549,
							conditions = 
							{
								
								{
									"285afe8b-6e8b-8a87-ba41-f220b7a0d6b5",
									true,
								},
								
								{
									"22516044-c694-6abc-a6c8-45f765709384",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] M2 Feint Shell Crusher + Shockwave Pulsar",
							targetType = "Enemy",
							uuid = "a25d673c-6a8e-850f-b042-54f6fb322210",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"M2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "M2 roster",
							uuid = "285afe8b-6e8b-8a87-ba41-f220b7a0d6b5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Shell Crusher + Shockwave Pulsar CD",
							uuid = "22516044-c694-6abc-a6c8-45f765709384",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 578.6,
				name = "[LPDU] M2 Feint Shell Crusher + Shockwave Pulsar",
				timeRange = true,
				timelineIndex = 138,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "f87be405-bf9a-19f2-b0f8-aa6bec621999",
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
							actionID = 7560,
							conditions = 
							{
								
								{
									"2b1cc2ce-8919-7aa1-baa3-3ae3568c6311",
									true,
								},
								
								{
									"64e7a98f-7841-9c48-9655-3ff3ea8412db",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Addle 2 Shell Crusher + Shockwave Pulsar",
							targetType = "Enemy",
							uuid = "7bcbf9ec-c09b-5b48-9fd0-f86d58c3639b",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R2 roster",
							uuid = "2b1cc2ce-8919-7aa1-baa3-3ae3568c6311",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Shell Crusher + Shockwave Pulsar CD",
							uuid = "64e7a98f-7841-9c48-9655-3ff3ea8412db",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				enabled = false,
				mechanicTime = 578.6,
				name = "[LPDU] R2 Addle 2 Shell Crusher + Shockwave Pulsar",
				timeRange = true,
				timelineIndex = 138,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "148ed14e-09e9-e1cb-93b2-c321be59eeb4",
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
				name = "store\\anyone\\fru\\fru",
				uuid = "867c7d11-f636-985d-4e52-a54b8fe91ba1",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Melee] Feint (Secondary)",
				uuid = "61f670bb-a087-46b2-a870-bd05d85f11ca",
				version = 2,
			},
			inheritedObjectUUID = "3c519dd1-52fe-f052-a288-3167ca3ff959",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[VPR] Feint (Secondary)",
				uuid = "c1998bce-af8b-692d-b579-6d5392beb3c6",
				version = 2,
			},
			inheritedObjectUUID = "7b328777-8e33-59c6-9572-9bd9f8807de0",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[MCH] Dismantle",
				uuid = "0e275280-9a8c-ad27-81c9-ad562497d9c1",
				version = 2,
			},
			inheritedObjectUUID = "4e0d3ee3-5e26-e9b0-970d-71d17b8b2ad1",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[140] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "57f2e8ed-30ad-bcd1-75b0-c1c3bb1e33bd",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[142] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "6c2381e7-acaa-6fcb-fe70-71692ed43237",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[144] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "eb8cec99-1789-d305-fa13-ceb73330d4e9",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Strat] Static Apoc Arrow",
				uuid = "be1e59f1-ddef-94ad-b1d7-b909afa0f4bf",
				version = 2,
			},
			inheritedObjectUUID = "d4755f66-1839-39be-967f-2418fe2b8739",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[Strat] Color Apoc Arrow",
				uuid = "a4217bfb-0e48-db85-865e-95526779536e",
				version = 2,
			},
			inheritedObjectUUID = "157368b2-3791-442b-a480-03f7a5021ba5",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[Strat] Draw Both Apoc Arrows",
				uuid = "5827548d-106b-d448-b08d-251f3a9914a2",
				version = 2,
			},
			inheritedObjectUUID = "a172d363-9c09-2bb7-b83d-23ce828fa61a",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU_megaminx_indicator",
				uuid = "97d71a98-00a0-80fc-2c76-d3163ab70ee8",
			},
			inheritanceRoot = "FRU_megaminx_indicator",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "get apoc pos",
				uuid = "1d944924-f9d1-ac27-92b3-76941736631c",
				version = 2,
			},
			inheritedObjectUUID = "4847aa4b-9461-39af-ab85-eff785f4653e",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "apoc safe indicator",
				uuid = "4bf50736-cdbe-d4a8-a06c-efbd429f9bce",
				version = 2,
			},
			inheritedObjectUUID = "fdec6b95-969d-6985-8f45-c016dc969e07",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "flex solver",
				uuid = "bf4aff67-52c3-d4f3-aed1-bdc70ea4d6e1",
				version = 2,
			},
			inheritedObjectUUID = "45fe4575-5bca-f5dc-b510-904223c446aa",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU",
				uuid = "7723e9d5-087e-a3f3-b4d4-173991b4bc12",
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
							actionLua = "local roster=AnyoneCore and AnyoneCore.Roster\nlocal player=TensorCore.mGetPlayer()\nif roster == nil or roster.current() == nil or not roster.isReady() or player == nil or player.pos == nil then return end\nlocal assignment=data.lpdu_p3_apoc_assignment\nif assignment == nil then return end\nlocal slot=roster.mySlot()\nif slot==\"MT\" then slot=\"T1\" elseif slot==\"OT\" then slot=\"T2\" end\nlocal side=assignment.side[slot]\nif side == nil then return end\n-- Group staging only: this must finish before Spirit Taker / eruption spreads.\nlocal duration=math.floor((623-TensorReactions_CurrentTimer)*1000)\nif duration<=0 then self.used=true;return end\nlocal target={x=side==\"support\" and 92 or 108,y=player.pos.y or 0,z=side==\"support\" and 92 or 108}\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2)\ndrawer:addTimedCircle(duration,target.x,target.y,target.z,1.5,0,true)\nlocal distance=TensorCore.getDistance2d(player.pos,target)\nlocal heading=TensorCore.getHeadingToTarget(player.pos,target)\nif heading ~= nil and distance ~= nil and distance>1 then\n    drawer:addTimedArrow(duration,player.pos.x,target.y,player.pos.z,heading,math.max(.15,distance-1),1,1,1,0,true)\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"4938e21f-4f21-aa8f-a121-ef38571f4846",
									true,
								},
							},
							name = "Initial Assigned Group",
							uuid = "68a68f0b-ac91-15cd-adb0-58f4126f838b",
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
							conditionLua = "return data.lpdu_p3_apoc_assignment ~= nil",
							uuid = "4938e21f-4f21-aa8f-a121-ef38571f4846",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				mechanicTime = 619.6,
				name = "[LPDU] P3 Apocalypse - Initial Assigned Group",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 144,
				timerEndOffset = 2.5,
				timerStartOffset = -6.8,
				uuid = "2c137f4e-8715-2a36-bdfe-6bcde411aa9c",
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
							actionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif roster == nil or roster.current() == nil or not roster.isReady() then return end\nlocal supports={\"T1\",\"T2\",\"H1\",\"H2\"}\nlocal dps={\"M1\",\"M2\",\"R1\",\"R2\"}\nlocal all={\"T1\",\"T2\",\"H1\",\"H2\",\"M1\",\"M2\",\"R1\",\"R2\"}\nlocal waters, category, side, owner={},{},{},{}\nfor i,slot in ipairs(all) do\n    local ent=roster.entOf(slot)\n    if ent == nil then return end\n    local buff=TensorCore.getBuff(ent,2461)\n    category[slot]=0\n    side[slot]=i<=4 and \"support\" or \"dps\"\n    owner[slot]=slot\n    if buff ~= nil then\n        if type(buff.duration) ~= \"number\" then return end\n        table.insert(waters,{slot=slot,duration=buff.duration})\n    end\nend\nif #waters ~= 6 then return end\ntable.sort(waters,function(a,b) return a.duration<b.duration end)\n-- Two short, two medium, two long. Wait for a complete consistent snapshot.\nfor i=1,6,2 do\n    if math.abs(waters[i].duration-waters[i+1].duration)>2 then return end\n    if i<5 and waters[i+2].duration-waters[i+1].duration<4 then return end\nend\nfor i,entry in ipairs(waters) do category[entry.slot]=math.ceil(i/2) end\nlocal swapped={}\n-- Highest adjusting priority in each duplicated timer group swaps with\n-- the other side's highest adjusting player. Repeat until all four timer\n-- categories (including no Water) appear once on each side.\nfor pass=1,4 do\n    local countN,countS={0,0,0,0},{0,0,0,0}\n    for _,slot in ipairs(all) do\n        local counts=side[slot]==\"support\" and countN or countS\n        counts[category[slot]+1]=counts[category[slot]+1]+1\n    end\n    local s,d\n    for _,slot in ipairs(supports) do\n        if side[slot]==\"support\" and countN[category[slot]+1]>1 then s=slot;break end\n    end\n    if s == nil then break end\n    for _,slot in ipairs(dps) do\n        if side[slot]==\"dps\" and countS[category[slot]+1]>1 then d=slot;break end\n    end\n    if d == nil then return end\n    side[s],side[d]=\"dps\",\"support\"\n    owner[s],owner[d]=owner[d],owner[s]\n    swapped[s],swapped[d]=true,true\nend\nlocal counts={support={0,0,0,0},dps={0,0,0,0}}\nfor _,slot in ipairs(all) do\n    local n=category[slot]+1\n    counts[side[slot]][n]=counts[side[slot]][n]+1\nend\nfor _,group in pairs(counts) do for i=1,4 do if group[i] ~= 1 then return end end end\nlocal slot=roster.mySlot()\nif slot==\"MT\" then slot=\"T1\" elseif slot==\"OT\" then slot=\"T2\" end\nif side[slot] == nil then return end\n-- Freeze the initial assignment: never swap back after Water expires.\ndata.lpdu_p3_apoc_assignment={side=side,owner=owner,category=category,swapped=swapped}\ndata.lpdu_p3_apoc_side=side[slot]\nlocal label=side[slot]==\"support\" and \"NW group\" or \"SE group\"\nlocal roleNames={T1=\"MT\",T2=\"OT\"}\nlocal text=swapped[slot] and (label..\": swap with \"..(roleNames[owner[slot]] or owner[slot])..\"; keep their spot\") or (label..\": keep your spot\")\nAnyoneCore.Shotcall(text,true,8,false)\nself.used=true\n",
							conditions = 
							{
								
								{
									"018a1525-106d-d8e1-94bb-954497d3105f",
									true,
								},
							},
							name = "Water Timer Swaps",
							uuid = "32caae9d-255a-cc09-9642-84f66a70b6da",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							buffID = 2461,
							category = "Party",
							partyTargetNumber = 6,
							partyTargetSubType = "Number",
							uuid = "018a1525-106d-d8e1-94bb-954497d3105f",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				mechanicTime = 619.6,
				name = "[LPDU] P3 Apocalypse - Water Timer Swaps",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 144,
				timerEndOffset = 2.5,
				timerStartOffset = -8,
				uuid = "69e9ae29-cd03-194f-81cb-874de08aa504",
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
							actionLua = "if data.megaminx_p3_apoc_safe == nil then data.megaminx_p3_apoc_safe = {} end\nif data.megaminx_p3_apoc_safe_count == nil then data.megaminx_p3_apoc_safe_count = 0 end\ndata.megaminx_p3_apoc_safe_count =  data.megaminx_p3_apoc_safe_count + 1\nif data.megaminx_p3_apoc_safe_count <= 12 then\n    local center = {x = 100, y = 0, z = 100}\n    local pos = TensorCore.mGetEntity(eventArgs.entityID).pos\n    local distance = TensorCore.getDistance2d(center,pos)\n    if distance > 10 then\n        table.insert(data.megaminx_p3_apoc_safe,pos)\n    end\nend\nself.used = true",
							conditions = 
							{
								
								{
									"6d4555cf-ed26-da93-a1f4-e10eed9b23ab",
									true,
								},
							},
							uuid = "d6dfef98-5dbd-94ba-9c49-45ab69dd5a8b",
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
							conditionLua = "return eventArgs.entityContentID == 2011391",
							uuid = "6d4555cf-ed26-da93-a1f4-e10eed9b23ab",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 19,
				loop = true,
				mechanicTime = 619.6,
				name = "get apoc pos [LPDU]",
				timeRange = true,
				timelineIndex = 144,
				timerEndOffset = 100,
				timerStartOffset = -150,
				uuid = "20bf9158-a20d-1108-a4af-67195fc6ee0d",
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
							actionLua = "data.lpdu_apoc_movement={shapes={},centerCount=0};self.used=true",
							conditions = 
							{
								
								{
									"3b22dbbc-c11b-d4d2-bcd9-37b93c3a64c0",
									true,
								},
							},
							name = "Movement Reset",
							uuid = "3c1b1834-2c8d-9eb5-a3a4-af781eeadca3",
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
							conditionLua = "return eventArgs ~= nil and eventArgs.spellID == 40296",
							name = "Movement Reset gate",
							uuid = "3b22dbbc-c11b-d4d2-bcd9-37b93c3a64c0",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 3,
				mechanicTime = 619.6,
				name = "[LPDU] P3 Apocalypse - Movement Reset",
				timeRange = true,
				timelineIndex = 144,
				timerStartOffset = -5,
				uuid = "9b983c2e-9255-757b-9337-889629a3cca6",
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
							actionLua = "local r=AnyoneCore.Roster;local p=TensorCore.mGetPlayer()\nif r.current()==nil or not r.isReady() or p==nil then return end\nlocal slot=r.mySlot();local s=data.lpdu_apoc_movement;local assignment=data.lpdu_p3_apoc_assignment\nif s==nil then return end\nif s.clear==nil then\n function s.clear() for _,id in ipairs(s.shapes) do Argus.deleteTimedShape(id) end;s.shapes={} end\n function s.draw(angle,dist,seconds,text,bx,bz)\n  s.clear();local x=(bx or 100)+math.sin(angle)*dist;local z=(bz or 100)+math.cos(angle)*dist;local t={x=x,y=0,z=z}\n  local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n  local id=d:addTimedCircle(seconds*1000,x,.05,z,1,0,true,true)\n  if id then table.insert(s.shapes,id) end\n  local player=TensorCore.mGetPlayer();local length=TensorCore.getDistance2d(player.pos,t)\n  if length>1 then id=d:addTimedArrow(seconds*1000,player.pos.x,player.pos.y+.05,player.pos.z,TensorCore.getHeadingToTarget(player.pos,t),math.max(.15,length-1),1,1,1,0,true)\n   if id then table.insert(s.shapes,id) end end\n  AnyoneCore.Shotcall(text,true,seconds,false)\n end\n function s.angle(side)\n  local a=s.first-s.rotation\n  a=(a+math.pi)%(2*math.pi)-math.pi\n  local forDPS=a>=-.1 and a<math.pi-.1\n  if forDPS~=(side==\"dps\") then a=a+math.pi end\n  return a\n end\nend\nif s.first~=nil then self.used=true;return end\nlocal e=TensorCore.mGetEntity(eventArgs.entityID);if e==nil then return end\nlocal dx=e.pos.x-100;local dz=e.pos.z-100;if dx*dx+dz*dz<100 then self.used=true;return end\nlocal h=TensorCore.getHeadingToTarget({x=100,y=0,z=100},e.pos)\nlocal delta=(e.pos.h-h+math.pi)%(2*math.pi)-math.pi\nif math.abs(math.abs(delta)-math.pi/2)>.2 then self.used=true;return end\ns.first=h;s.rotation=delta>0 and math.pi/4 or -math.pi/4\nself.used=true",
							conditions = 
							{
								
								{
									"0711888e-35be-95bc-ace4-9d8ee2278f38",
									true,
								},
							},
							name = "Pattern Direction",
							uuid = "abb97c18-1555-92b4-8026-39c521fda161",
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
							conditionLua = "return eventArgs ~= nil and eventArgs.entityContentID == 2011391 and eventArgs.a2 == 4 and eventArgs.a3 == 64",
							name = "Pattern Direction gate",
							uuid = "0711888e-35be-95bc-ace4-9d8ee2278f38",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 19,
				loop = true,
				mechanicTime = 619.6,
				name = "[LPDU] P3 Apocalypse - Pattern Direction",
				timeRange = true,
				timelineIndex = 144,
				timerEndOffset = 11,
				uuid = "b0ff282b-058c-8ede-89ab-64fda4ab3fbc",
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
							actionLua = "local r=AnyoneCore.Roster;local p=TensorCore.mGetPlayer()\nif r.current()==nil or not r.isReady() or p==nil then return end\nlocal slot=r.mySlot();local s=data.lpdu_apoc_movement;local assignment=data.lpdu_p3_apoc_assignment\nif s==nil then return end\nif s.clear==nil then\n function s.clear() for _,id in ipairs(s.shapes) do Argus.deleteTimedShape(id) end;s.shapes={} end\n function s.draw(angle,dist,seconds,text,bx,bz)\n  s.clear();local x=(bx or 100)+math.sin(angle)*dist;local z=(bz or 100)+math.cos(angle)*dist;local t={x=x,y=0,z=z}\n  local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n  local id=d:addTimedCircle(seconds*1000,x,.05,z,1,0,true,true)\n  if id then table.insert(s.shapes,id) end\n  local player=TensorCore.mGetPlayer();local length=TensorCore.getDistance2d(player.pos,t)\n  if length>1 then id=d:addTimedArrow(seconds*1000,player.pos.x,player.pos.y+.05,player.pos.z,TensorCore.getHeadingToTarget(player.pos,t),math.max(.15,length-1),1,1,1,0,true)\n   if id then table.insert(s.shapes,id) end end\n  AnyoneCore.Shotcall(text,true,seconds,false)\n end\n function s.angle(side)\n  local a=s.first-s.rotation\n  a=(a+math.pi)%(2*math.pi)-math.pi\n  local forDPS=a>=-.1 and a<math.pi-.1\n  if forDPS~=(side==\"dps\") then a=a+math.pi end\n  return a\n end\nend\nif s.firstWater then self.used=true;return end\nlocal hit=false;for _,id in ipairs(eventArgs.hitTargets) do if id==p.id then hit=true end end\nif hit then s.firstWater=true;s.clear();AnyoneCore.Shotcall(\"Spread for jump - then take your safe sector\",true,3,false) end\nself.used=true",
							conditions = 
							{
								
								{
									"22b30e8a-4fdd-9068-b0fa-c54d8a4fcfd2",
									true,
								},
							},
							name = "After First Water",
							uuid = "652ffad6-5a45-cb82-9d7a-7cab7bff69e1",
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
							conditionLua = "return eventArgs ~= nil and eventArgs.spellID == 40271",
							name = "After First Water gate",
							uuid = "22b30e8a-4fdd-9068-b0fa-c54d8a4fcfd2",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 2,
				loop = true,
				mechanicTime = 619.6,
				name = "[LPDU] P3 Apocalypse - After First Water",
				timeRange = true,
				timelineIndex = 144,
				timerEndOffset = 5,
				timerStartOffset = 2,
				uuid = "5483bde5-88d6-373e-83fc-6bc1d6baafec",
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
							actionLua = "local r=AnyoneCore.Roster;local p=TensorCore.mGetPlayer()\nif r.current()==nil or not r.isReady() or p==nil then return end\nlocal slot=r.mySlot();local s=data.lpdu_apoc_movement;local assignment=data.lpdu_p3_apoc_assignment\nif s==nil then return end\nif s.clear==nil then\n function s.clear() for _,id in ipairs(s.shapes) do Argus.deleteTimedShape(id) end;s.shapes={} end\n function s.draw(angle,dist,seconds,text,bx,bz)\n  s.clear();local x=(bx or 100)+math.sin(angle)*dist;local z=(bz or 100)+math.cos(angle)*dist;local t={x=x,y=0,z=z}\n  local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n  local id=d:addTimedCircle(seconds*1000,x,.05,z,1,0,true,true)\n  if id then table.insert(s.shapes,id) end\n  local player=TensorCore.mGetPlayer();local length=TensorCore.getDistance2d(player.pos,t)\n  if length>1 then id=d:addTimedArrow(seconds*1000,player.pos.x,player.pos.y+.05,player.pos.z,TensorCore.getHeadingToTarget(player.pos,t),math.max(.15,length-1),1,1,1,0,true)\n   if id then table.insert(s.shapes,id) end end\n  AnyoneCore.Shotcall(text,true,seconds,false)\n end\n function s.angle(side)\n  local a=s.first-s.rotation\n  a=(a+math.pi)%(2*math.pi)-math.pi\n  local forDPS=a>=-.1 and a<math.pi-.1\n  if forDPS~=(side==\"dps\") then a=a+math.pi end\n  return a\n end\nend\nif assignment==nil or s.first==nil then return end\nlocal owner=assignment.owner[slot];local side=assignment.side[slot];if owner==nil or side==nil then return end\ns.mid=s.angle(side);s.owner=owner;s.side=side;s.spreading=true\nif owner==\"H1\" or owner==\"R1\" then s.draw(s.mid-math.pi/12,19,5.2,\"Spread - outer safe sector\")\nelseif owner==\"H2\" or owner==\"R2\" then s.draw(s.mid+math.pi/12,19,5.2,\"Spread - outer safe sector\")\nelse\n local pos=(owner==\"T1\" or owner==\"M1\") and 0 or 1\n s.alt=pos==(s.rotation<0 and 1 or 0)\n s.draw(s.alt and s.mid-s.rotation or s.mid,10,5.2,s.alt and \"Spread - wait for middle blasts, then move in\" or \"Spread - safe sector\")\nend\nself.used=true",
							conditions = 
							{
								
								{
									"31bc7b78-904c-61a1-8d13-2a7f35165706",
									true,
								},
							},
							name = "Personal Safe Sector Spread",
							uuid = "05b1158e-1024-f051-b30b-b4aed4854ed3",
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
							conditionLua = "return eventArgs ~= nil and eventArgs.spellID == 40273",
							name = "Personal Safe Sector Spread gate",
							uuid = "31bc7b78-904c-61a1-8d13-2a7f35165706",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 3,
				mechanicTime = 619.6,
				name = "[LPDU] P3 Apocalypse - Personal Safe Sector Spread",
				timeRange = true,
				timelineIndex = 144,
				timerEndOffset = 14,
				timerStartOffset = 10,
				uuid = "f697f5ab-4b6d-fcff-81ad-0d1e97c4f014",
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
							actionLua = "local r=AnyoneCore.Roster;local p=TensorCore.mGetPlayer()\nif r.current()==nil or not r.isReady() or p==nil then return end\nlocal slot=r.mySlot();local s=data.lpdu_apoc_movement;local assignment=data.lpdu_p3_apoc_assignment\nif s==nil then return end\nif s.clear==nil then\n function s.clear() for _,id in ipairs(s.shapes) do Argus.deleteTimedShape(id) end;s.shapes={} end\n function s.draw(angle,dist,seconds,text,bx,bz)\n  s.clear();local x=(bx or 100)+math.sin(angle)*dist;local z=(bz or 100)+math.cos(angle)*dist;local t={x=x,y=0,z=z}\n  local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n  local id=d:addTimedCircle(seconds*1000,x,.05,z,1,0,true,true)\n  if id then table.insert(s.shapes,id) end\n  local player=TensorCore.mGetPlayer();local length=TensorCore.getDistance2d(player.pos,t)\n  if length>1 then id=d:addTimedArrow(seconds*1000,player.pos.x,player.pos.y+.05,player.pos.z,TensorCore.getHeadingToTarget(player.pos,t),math.max(.15,length-1),1,1,1,0,true)\n   if id then table.insert(s.shapes,id) end end\n  AnyoneCore.Shotcall(text,true,seconds,false)\n end\n function s.angle(side)\n  local a=s.first-s.rotation\n  a=(a+math.pi)%(2*math.pi)-math.pi\n  local forDPS=a>=-.1 and a<math.pi-.1\n  if forDPS~=(side==\"dps\") then a=a+math.pi end\n  return a\n end\nend\nlocal e=TensorCore.mGetEntity(eventArgs.entityID);if e==nil then self.used=true;return end\nlocal dx=e.pos.x-100;local dz=e.pos.z-100\nif dx*dx+dz*dz>=1 then self.used=true;return end\nif s.lastCenter==nil or TensorReactions_CurrentTimer-s.lastCenter>.7 then\n s.lastCenter=TensorReactions_CurrentTimer;s.centerCount=s.centerCount+1\nend\nif s.centerCount>=2 and s.spreading and s.alt and not s.altMoved then\n s.altMoved=true;s.draw(s.mid-s.rotation,4.5,1.5,\"Move in - keep your spread\")\nend\nself.used=true",
							conditions = 
							{
								
								{
									"bbd1053c-2aa3-b252-ae03-412ab2e2ba4c",
									true,
								},
							},
							name = "Melee Inner Spread Transition",
							uuid = "7b097a5d-7075-ec0c-a9ed-f293276af3eb",
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
							conditionLua = "return eventArgs ~= nil and eventArgs.spellID == 40297",
							name = "Melee Inner Spread Transition gate",
							uuid = "bbd1053c-2aa3-b252-ae03-412ab2e2ba4c",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 2,
				loop = true,
				mechanicTime = 619.6,
				name = "[LPDU] P3 Apocalypse - Melee Inner Spread Transition",
				timeRange = true,
				timelineIndex = 144,
				timerEndOffset = 17,
				timerStartOffset = 12,
				uuid = "72d52ad3-0408-a3f7-aa5a-8a07ad0fa996",
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
							actionLua = "local r=AnyoneCore.Roster;local p=TensorCore.mGetPlayer()\nif r.current()==nil or not r.isReady() or p==nil then return end\nlocal slot=r.mySlot();local s=data.lpdu_apoc_movement;local assignment=data.lpdu_p3_apoc_assignment\nif s==nil then return end\nif s.clear==nil then\n function s.clear() for _,id in ipairs(s.shapes) do Argus.deleteTimedShape(id) end;s.shapes={} end\n function s.draw(angle,dist,seconds,text,bx,bz)\n  s.clear();local x=(bx or 100)+math.sin(angle)*dist;local z=(bz or 100)+math.cos(angle)*dist;local t={x=x,y=0,z=z}\n  local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n  local id=d:addTimedCircle(seconds*1000,x,.05,z,1,0,true,true)\n  if id then table.insert(s.shapes,id) end\n  local player=TensorCore.mGetPlayer();local length=TensorCore.getDistance2d(player.pos,t)\n  if length>1 then id=d:addTimedArrow(seconds*1000,player.pos.x,player.pos.y+.05,player.pos.z,TensorCore.getHeadingToTarget(player.pos,t),math.max(.15,length-1),1,1,1,0,true)\n   if id then table.insert(s.shapes,id) end end\n  AnyoneCore.Shotcall(text,true,seconds,false)\n end\n function s.angle(side)\n  local a=s.first-s.rotation\n  a=(a+math.pi)%(2*math.pi)-math.pi\n  local forDPS=a>=-.1 and a<math.pi-.1\n  if forDPS~=(side==\"dps\") then a=a+math.pi end\n  return a\n end\nend\nif s.water2Shown then self.used=true;return end\nif assignment==nil or s.first==nil then return end\ns.water2Shown=true;s.spreading=false;s.side=assignment.side[slot];s.mid=s.angle(s.side)\ns.draw(s.mid,3.5,6,\"Stack second Water - keep your swapped group\")\nself.used=true",
							conditions = 
							{
								
								{
									"4796e734-548f-ac6d-bfd7-26ef1b99d4af",
									true,
								},
							},
							name = "Second Water Regroup",
							uuid = "2dcb1280-9db7-aec1-96ff-abab5cff9904",
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
							conditionLua = "return eventArgs ~= nil and eventArgs.spellID == 40274",
							name = "Second Water Regroup gate",
							uuid = "4796e734-548f-ac6d-bfd7-26ef1b99d4af",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 2,
				loop = true,
				mechanicTime = 619.6,
				name = "[LPDU] P3 Apocalypse - Second Water Regroup",
				timeRange = true,
				timelineIndex = 144,
				timerEndOffset = 18,
				timerStartOffset = 15,
				uuid = "8888eda3-4b44-b02b-982e-2caac8ec6dd5",
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
							actionLua = "local r=AnyoneCore.Roster;local p=TensorCore.mGetPlayer()\nif r.current()==nil or not r.isReady() or p==nil then return end\nlocal slot=r.mySlot();local s=data.lpdu_apoc_movement;local assignment=data.lpdu_p3_apoc_assignment\nif s==nil then return end\nif s.clear==nil then\n function s.clear() for _,id in ipairs(s.shapes) do Argus.deleteTimedShape(id) end;s.shapes={} end\n function s.draw(angle,dist,seconds,text,bx,bz)\n  s.clear();local x=(bx or 100)+math.sin(angle)*dist;local z=(bz or 100)+math.cos(angle)*dist;local t={x=x,y=0,z=z}\n  local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n  local id=d:addTimedCircle(seconds*1000,x,.05,z,1,0,true,true)\n  if id then table.insert(s.shapes,id) end\n  local player=TensorCore.mGetPlayer();local length=TensorCore.getDistance2d(player.pos,t)\n  if length>1 then id=d:addTimedArrow(seconds*1000,player.pos.x,player.pos.y+.05,player.pos.z,TensorCore.getHeadingToTarget(player.pos,t),math.max(.15,length-1),1,1,1,0,true)\n   if id then table.insert(s.shapes,id) end end\n  AnyoneCore.Shotcall(text,true,seconds,false)\n end\n function s.angle(side)\n  local a=s.first-s.rotation\n  a=(a+math.pi)%(2*math.pi)-math.pi\n  local forDPS=a>=-.1 and a<math.pi-.1\n  if forDPS~=(side==\"dps\") then a=a+math.pi end\n  return a\n end\nend\nif s.midTaken then self.used=true;return end\nlocal hit=false;for _,id in ipairs(eventArgs.hitTargets) do if id==p.id then hit=true end end\nif not hit then self.used=true;return end\nif assignment==nil or s.first==nil then return end\ns.midTaken=true;s.side=assignment.side[slot];s.mid=s.angle(s.side);s.final=s.mid-s.rotation\nif slot==\"T2\" then s.draw(s.final,19,2.6,\"Bait farthest now - move out\")\nelse s.draw(s.final,3.5,2.6,\"Stay near middle - clear the tank bait\") end\nself.used=true",
							conditions = 
							{
								
								{
									"7d0d698a-24d3-f04a-993e-ca966c229fe2",
									true,
								},
							},
							name = "After Second Water - OT Bait",
							uuid = "2a201b99-848f-cf97-a54e-913b4d26b460",
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
							conditionLua = "return eventArgs ~= nil and eventArgs.spellID == 40271",
							name = "After Second Water - OT Bait gate",
							uuid = "7d0d698a-24d3-f04a-993e-ca966c229fe2",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 2,
				loop = true,
				mechanicTime = 619.6,
				name = "[LPDU] P3 Apocalypse - After Second Water - OT Bait",
				timeRange = true,
				timelineIndex = 144,
				timerEndOffset = 24,
				timerStartOffset = 21,
				uuid = "37a91307-5ca6-93d2-97e4-6ce8d4cffaa0",
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
							actionLua = "local r=AnyoneCore.Roster;local p=TensorCore.mGetPlayer()\nif r.current()==nil or not r.isReady() or p==nil then return end\nlocal slot=r.mySlot();local s=data.lpdu_apoc_movement;local assignment=data.lpdu_p3_apoc_assignment\nif s==nil then return end\nif s.clear==nil then\n function s.clear() for _,id in ipairs(s.shapes) do Argus.deleteTimedShape(id) end;s.shapes={} end\n function s.draw(angle,dist,seconds,text,bx,bz)\n  s.clear();local x=(bx or 100)+math.sin(angle)*dist;local z=(bz or 100)+math.cos(angle)*dist;local t={x=x,y=0,z=z}\n  local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n  local id=d:addTimedCircle(seconds*1000,x,.05,z,1,0,true,true)\n  if id then table.insert(s.shapes,id) end\n  local player=TensorCore.mGetPlayer();local length=TensorCore.getDistance2d(player.pos,t)\n  if length>1 then id=d:addTimedArrow(seconds*1000,player.pos.x,player.pos.y+.05,player.pos.z,TensorCore.getHeadingToTarget(player.pos,t),math.max(.15,length-1),1,1,1,0,true)\n   if id then table.insert(s.shapes,id) end end\n  AnyoneCore.Shotcall(text,true,seconds,false)\n end\n function s.angle(side)\n  local a=s.first-s.rotation\n  a=(a+math.pi)%(2*math.pi)-math.pi\n  local forDPS=a>=-.1 and a<math.pi-.1\n  if forDPS~=(side==\"dps\") then a=a+math.pi end\n  return a\n end\nend\nif assignment==nil then self.used=true;return end\nlocal b=TensorCore.mGetEntity(eventArgs.entityID);if b==nil then return end\ns.bx=b.pos.x;s.bz=b.pos.z\ns.knockAngle=TensorCore.getHeadingToTarget(b.pos,{x=100,y=0,z=100})+(assignment.side[slot]==\"support\" and -1 or 1)*math.pi/9\ns.draw(s.knockAngle,2,3.3,assignment.side[slot]==\"support\" and \"Knockback - support side left\" or \"Knockback - DPS side right\",s.bx,s.bz)\nself.used=true",
							conditions = 
							{
								
								{
									"001a1834-2347-d0e7-b572-1f00ac10f4e7",
									true,
								},
							},
							name = "Personal Knockback Sides",
							uuid = "d02ddadb-3bd1-e2f5-b1aa-76666e5b01d2",
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
							conditionLua = "return eventArgs ~= nil and eventArgs.spellID == 40182",
							name = "Personal Knockback Sides gate",
							uuid = "001a1834-2347-d0e7-b572-1f00ac10f4e7",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 2,
				mechanicTime = 619.6,
				name = "[LPDU] P3 Apocalypse - Personal Knockback Sides",
				timeRange = true,
				timelineIndex = 144,
				timerEndOffset = 26,
				timerStartOffset = 23,
				uuid = "4e34aa75-e819-24cd-8dd3-cfa57b767c6f",
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
							actionLua = "local r=AnyoneCore.Roster;local p=TensorCore.mGetPlayer()\nif r.current()==nil or not r.isReady() or p==nil then return end\nlocal slot=r.mySlot();local s=data.lpdu_apoc_movement;local assignment=data.lpdu_p3_apoc_assignment\nif s==nil then return end\nif s.clear==nil then\n function s.clear() for _,id in ipairs(s.shapes) do Argus.deleteTimedShape(id) end;s.shapes={} end\n function s.draw(angle,dist,seconds,text,bx,bz)\n  s.clear();local x=(bx or 100)+math.sin(angle)*dist;local z=(bz or 100)+math.cos(angle)*dist;local t={x=x,y=0,z=z}\n  local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n  local id=d:addTimedCircle(seconds*1000,x,.05,z,1,0,true,true)\n  if id then table.insert(s.shapes,id) end\n  local player=TensorCore.mGetPlayer();local length=TensorCore.getDistance2d(player.pos,t)\n  if length>1 then id=d:addTimedArrow(seconds*1000,player.pos.x,player.pos.y+.05,player.pos.z,TensorCore.getHeadingToTarget(player.pos,t),math.max(.15,length-1),1,1,1,0,true)\n   if id then table.insert(s.shapes,id) end end\n  AnyoneCore.Shotcall(text,true,seconds,false)\n end\n function s.angle(side)\n  local a=s.first-s.rotation\n  a=(a+math.pi)%(2*math.pi)-math.pi\n  local forDPS=a>=-.1 and a<math.pi-.1\n  if forDPS~=(side==\"dps\") then a=a+math.pi end\n  return a\n end\nend\nif s.knockAngle==nil then self.used=true;return end\ns.draw(s.knockAngle,10,4.5,\"Regroup for last Water - keep your group\",s.bx,s.bz)\nself.used=true",
							conditions = 
							{
								
								{
									"bf1e7b4c-039a-f478-8318-434086aa6b8b",
									true,
								},
							},
							name = "Last Water Regroup",
							uuid = "dd4c6991-4263-8c81-bbe1-5dfe18974638",
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
							conditionLua = "return eventArgs ~= nil and eventArgs.spellID == 40183",
							name = "Last Water Regroup gate",
							uuid = "bf1e7b4c-039a-f478-8318-434086aa6b8b",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 2,
				mechanicTime = 619.6,
				name = "[LPDU] P3 Apocalypse - Last Water Regroup",
				timeRange = true,
				timelineIndex = 144,
				timerEndOffset = 29,
				timerStartOffset = 26,
				uuid = "25c01367-0656-a7a5-a7bf-9b066f659e23",
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
							actionLua = "local r=AnyoneCore.Roster;local p=TensorCore.mGetPlayer()\nif r.current()==nil or not r.isReady() or p==nil then return end\nlocal slot=r.mySlot();local s=data.lpdu_apoc_movement;local assignment=data.lpdu_p3_apoc_assignment\nif s==nil then return end\nif s.clear==nil then\n function s.clear() for _,id in ipairs(s.shapes) do Argus.deleteTimedShape(id) end;s.shapes={} end\n function s.draw(angle,dist,seconds,text,bx,bz)\n  s.clear();local x=(bx or 100)+math.sin(angle)*dist;local z=(bz or 100)+math.cos(angle)*dist;local t={x=x,y=0,z=z}\n  local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n  local id=d:addTimedCircle(seconds*1000,x,.05,z,1,0,true,true)\n  if id then table.insert(s.shapes,id) end\n  local player=TensorCore.mGetPlayer();local length=TensorCore.getDistance2d(player.pos,t)\n  if length>1 then id=d:addTimedArrow(seconds*1000,player.pos.x,player.pos.y+.05,player.pos.z,TensorCore.getHeadingToTarget(player.pos,t),math.max(.15,length-1),1,1,1,0,true)\n   if id then table.insert(s.shapes,id) end end\n  AnyoneCore.Shotcall(text,true,seconds,false)\n end\n function s.angle(side)\n  local a=s.first-s.rotation\n  a=(a+math.pi)%(2*math.pi)-math.pi\n  local forDPS=a>=-.1 and a<math.pi-.1\n  if forDPS~=(side==\"dps\") then a=a+math.pi end\n  return a\n end\nend\nlocal hit=false;for _,id in ipairs(eventArgs.hitTargets) do if id==p.id then hit=true end end\nif hit then s.clear() end\nself.used=true",
							conditions = 
							{
								
								{
									"92d410e4-dd18-49fa-8f41-d6d0c738c7a9",
									true,
								},
							},
							name = "Last Water Cleanup",
							uuid = "e0572fd9-5c56-bff9-a254-a48340b250d7",
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
							conditionLua = "return eventArgs ~= nil and eventArgs.spellID == 40271",
							name = "Last Water Cleanup gate",
							uuid = "92d410e4-dd18-49fa-8f41-d6d0c738c7a9",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 2,
				loop = true,
				mechanicTime = 619.6,
				name = "[LPDU] P3 Apocalypse - Last Water Cleanup",
				timeRange = true,
				timelineIndex = 144,
				timerEndOffset = 33,
				timerStartOffset = 29,
				uuid = "e7a4730f-ddac-4852-bf17-6f830cf99e8b",
				version = 2,
			},
		},
	},
	[145] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "0b66c25c-6c21-2858-d3eb-f3fab81b952c",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[SAM] Tengentsu",
				uuid = "df8dfec5-10c0-a4c4-8976-8e69b14d6f60",
				version = 2,
			},
			inheritedObjectUUID = "d5c295e8-5391-ed72-ad7f-a325846f6254",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[RPR] Arcane Crest",
				uuid = "50da864a-d640-2079-8f45-9f158e03ff05",
				version = 2,
			},
			inheritedObjectUUID = "744d05e1-04c9-f2db-a7e4-865a10df432a",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[146] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "1a8f4933-a833-109f-865d-d03daa712543",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[148] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "1da31b95-a738-2409-f7d2-74ab1ca496e5",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[MNK] Mantra",
				uuid = "edb235e8-6b6e-b951-bb65-23b83ce618d3",
				version = 2,
			},
			inheritedObjectUUID = "d5ef2c3d-fb5d-5f22-99f7-c9016510a54d",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[149] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "f6321128-37a4-7ecc-3f4c-6dfe2a79ccb8",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[SAM] Tengentsu",
				uuid = "1121704d-60b0-a350-8baa-c951cd040f3e",
				version = 2,
			},
			inheritedObjectUUID = "a1fa4bc9-8bdf-e5c8-af14-85bcbca892fd",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[150] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "8220aafa-e8ce-9dae-f9c0-0ac04f2b598a",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Draw] Tank Bait Directions",
				uuid = "087bc2da-4c9b-94e2-9436-20ee7f2a3da9",
				version = 2,
			},
			inheritedObjectUUID = "519fa060-ecd7-165c-9d40-31d9ada29000",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[151] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "a84885b7-ad3c-a99b-2e20-028de0302b87",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[152] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "02e33770-b672-ca84-1a6a-f60a2e806e40",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[153] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "3492873d-1206-80e1-ab6f-c80762e0660d",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[SAM] Tengentsu",
				uuid = "cc3f6bce-8819-f6c5-9c5c-db67184edc83",
				version = 2,
			},
			inheritedObjectUUID = "99048414-cb23-800d-886e-f69cf9ed9cb5",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[RPR] Arcane Crest",
				uuid = "8b94354e-d45a-492c-b821-7ff426095fd6",
				version = 2,
			},
			inheritedObjectUUID = "6f7db24b-f594-1c19-bdac-6b2bc47bdbea",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[Caster] Addle (Primary) Forced",
				uuid = "b95ce26c-19ce-067c-85ff-baf1c5cdda35",
				version = 2,
			},
			inheritedObjectUUID = "cb6da4e9-6056-d969-80f5-a973e43ff88c",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[RDM] Barrier",
				uuid = "9fa9d079-b6e9-8c3b-933e-0d7b679c21f3",
				version = 2,
			},
			inheritedObjectUUID = "964463af-24c6-a432-82c7-b955b012f7bd",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Mitigation",
				uuid = "49b84f17-dab3-ac43-865d-88f63345c3f3",
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
							actionID = 7549,
							conditions = 
							{
								
								{
									"081bff8c-dcc6-2570-a3a8-11b426569615",
									true,
								},
								
								{
									"231409f0-1e38-59ba-84c4-0f01a6a384e1",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] M1 Feint Shockwave Pulsar + Memory's End",
							targetType = "Enemy",
							uuid = "229ebe0e-7fe8-141d-99e3-2ff4f1152739",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"M1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "M1 roster",
							uuid = "081bff8c-dcc6-2570-a3a8-11b426569615",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Shockwave Pulsar + Memory's End CD",
							uuid = "231409f0-1e38-59ba-84c4-0f01a6a384e1",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 656.4,
				name = "[LPDU] M1 Feint Shockwave Pulsar + Memory's End",
				timeRange = true,
				timelineIndex = 153,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "a2bffc05-8a0c-ee5f-9c74-a23fb034531b",
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
							actionID = 7560,
							conditions = 
							{
								
								{
									"03a2bfba-bb39-1043-82f5-3988cef7b8a2",
									true,
								},
								
								{
									"04b92905-5760-fe3a-b7e5-39c59201ff6e",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Addle Shockwave Pulsar + Memory's End",
							targetType = "Enemy",
							uuid = "c652472c-119c-3f78-bdea-6981cb863591",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R1 roster",
							uuid = "03a2bfba-bb39-1043-82f5-3988cef7b8a2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Shockwave Pulsar + Memory's End CD",
							uuid = "04b92905-5760-fe3a-b7e5-39c59201ff6e",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 656.4,
				name = "[LPDU] R1 Addle Shockwave Pulsar + Memory's End",
				timeRange = true,
				timelineIndex = 153,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "a0b1928f-1929-4ae8-b057-5c853e239784",
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
							actionID = 7405,
							conditions = 
							{
								
								{
									"12de13c2-db0d-dee4-9cb7-fd63b21a718c",
									true,
								},
								
								{
									"14d5c82c-ff2b-29ed-9b5b-d4712ea67dd4",
									true,
								},
								
								{
									"eea082ac-2574-db63-b64c-fd02513e4954",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Troubadour - Shockwave Pulsar + Memory's End",
							uuid = "8a127eff-6813-9e09-a774-9e54703fd0fa",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							conditions = 
							{
								
								{
									"12de13c2-db0d-dee4-9cb7-fd63b21a718c",
									true,
								},
								
								{
									"45f3c393-c9ec-caba-9c65-b4f758679a59",
									true,
								},
								
								{
									"4b9cc1b2-3ca8-d847-9ae1-53d458d78147",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Tactician - Shockwave Pulsar + Memory's End",
							uuid = "e0262891-9eb8-63b6-9ccb-f69f7c2335e7",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							conditions = 
							{
								
								{
									"12de13c2-db0d-dee4-9cb7-fd63b21a718c",
									true,
								},
								
								{
									"f5177825-7a56-1406-83fd-87395357472a",
									true,
								},
								
								{
									"b1cbc2df-7e54-a9aa-b8ab-3c4682f44c86",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Shield Samba - Shockwave Pulsar + Memory's End",
							uuid = "5d72ca39-a49e-52b7-a9a6-1a83e5763599",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R2 roster",
							uuid = "12de13c2-db0d-dee4-9cb7-fd63b21a718c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Troubadour job",
							uuid = "14d5c82c-ff2b-29ed-9b5b-d4712ea67dd4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7405,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "eea082ac-2574-db63-b64c-fd02513e4954",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Tactician job",
							uuid = "45f3c393-c9ec-caba-9c65-b4f758679a59",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "4b9cc1b2-3ca8-d847-9ae1-53d458d78147",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Shield Samba job",
							uuid = "f5177825-7a56-1406-83fd-87395357472a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "b1cbc2df-7e54-a9aa-b8ab-3c4682f44c86",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 656.4,
				name = "[LPDU] R2 Phys Ranged - Shockwave Pulsar + Memory's End",
				timeRange = true,
				timelineIndex = 153,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "ae99f224-9877-50bb-82b6-300a4a438ed4",
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
							actionID = 34686,
							conditions = 
							{
								
								{
									"a2249257-58cd-1cac-ad9b-641c360b161c",
									true,
								},
								
								{
									"04b14490-be81-8328-aa46-24c94dbd3027",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Tempera Grassa Shockwave Pulsar + Memory's End",
							uuid = "3059688b-292d-79be-b125-786e97bfa43f",
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
							jobValue = "PICTOMANCER",
							name = "PICTOMANCER job",
							uuid = "a2249257-58cd-1cac-ad9b-641c360b161c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 34686,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Shockwave Pulsar + Memory's End CD",
							uuid = "04b14490-be81-8328-aa46-24c94dbd3027",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 656.4,
				name = "[LPDU] Tempera Grassa Shockwave Pulsar + Memory's End",
				timeRange = true,
				timelineIndex = 153,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "78678ec7-2317-8840-8474-5478e69fd3cd",
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
							actionID = 7408,
							conditions = 
							{
								
								{
									"0b7af4fe-b8c6-070b-9ccd-82a78f7f04fd",
									true,
								},
								
								{
									"6de2546a-21f7-2054-b15e-9c6559bc8e60",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Nature's Minne Shockwave Pulsar + Memory's End",
							uuid = "775cf1e7-17a6-5dd6-a47f-59fe50fd8bf9",
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
							name = "BARD job",
							uuid = "0b7af4fe-b8c6-070b-9ccd-82a78f7f04fd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7408,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Shockwave Pulsar + Memory's End CD",
							uuid = "6de2546a-21f7-2054-b15e-9c6559bc8e60",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 656.4,
				name = "[LPDU] Nature's Minne Shockwave Pulsar + Memory's End",
				timeRange = true,
				timelineIndex = 153,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "3513bd75-a159-3e22-8dd4-caafe1102712",
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
							actionID = 65,
							conditions = 
							{
								
								{
									"c9361880-95f4-2f10-aafe-631d84bdacc5",
									true,
								},
								
								{
									"5f9ecad3-f4bd-7b4c-9eb1-d8a95f21543f",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Mantra Shockwave Pulsar + Memory's End",
							uuid = "16f187bb-ae9e-8ea7-8b8b-92d0608e12a2",
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
							jobValue = "MONK",
							name = "MONK job",
							uuid = "c9361880-95f4-2f10-aafe-631d84bdacc5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 65,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Shockwave Pulsar + Memory's End CD",
							uuid = "5f9ecad3-f4bd-7b4c-9eb1-d8a95f21543f",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 656.4,
				name = "[LPDU] Mantra Shockwave Pulsar + Memory's End",
				timeRange = true,
				timelineIndex = 153,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "9d7aa56c-0ae2-6ef8-ae14-e9f0d7ac1907",
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
							actionID = 16014,
							conditions = 
							{
								
								{
									"1ccb7706-b2cf-378d-97f7-a9ea28894cb1",
									true,
								},
								
								{
									"abee23b9-3ef7-d5e2-bb00-2cb66eed38dd",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Improvisation Shockwave Pulsar + Memory's End",
							uuid = "09bbad7b-4da3-6d04-9b98-5a1fb816128f",
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
							jobValue = "DANCER",
							name = "DANCER job",
							uuid = "1ccb7706-b2cf-378d-97f7-a9ea28894cb1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16014,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Shockwave Pulsar + Memory's End CD",
							uuid = "abee23b9-3ef7-d5e2-bb00-2cb66eed38dd",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 656.4,
				name = "[LPDU] Improvisation Shockwave Pulsar + Memory's End",
				timeRange = true,
				timelineIndex = 153,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "440c7274-88ff-5645-9d62-9654e56a1292",
				version = 2,
			},
		},
	},
	[154] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "5c871cf6-b565-70d2-5225-3bfc6eab4446",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Ranged] rDPS Mit",
				uuid = "8b533088-0545-a245-a13e-3bef3b9c78cb",
				version = 2,
			},
			inheritedObjectUUID = "8b5fa3cf-c0d0-9901-a36b-f0fcdf5f1e66",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[Caster] Addle (Primary)",
				uuid = "930c7083-8c07-8bc0-ab8f-4312ef819172",
				version = 2,
			},
			inheritedObjectUUID = "0bbf7c7c-4db3-f254-af03-d8d60d88e4a8",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU_megaminx_indicator",
				uuid = "139a9feb-3ecb-5f2f-519b-8db9b521523b",
			},
			inheritanceRoot = "FRU_megaminx_indicator",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "where boss is",
				uuid = "6dc4478b-e3f6-ff15-ba69-2be152d12a96",
				version = 2,
			},
			inheritedObjectUUID = "737c0ca0-c00a-d164-aead-aa89e28a97ce",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU",
				uuid = "83095431-b5a8-43d6-ad1b-f099a99d274b",
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
							actionLua = "local t = TensorCore.mGetTarget()\nif t.pos.z < 100 then\n    SendTextCommand(\"/e Boss will spawn at C\")\nend\nif t.pos.z > 100 then\n    SendTextCommand(\"/e Boss will spawn at A\")\nend\nself.used = true",
							uuid = "1587c6ff-5292-dd8c-9d60-4098ba1c3940",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU",
				mechanicTime = 670.1,
				name = "where boss is [LPDU]",
				timelineIndex = 154,
				timerOffset = -5,
				uuid = "8a255b68-5fa3-4afc-bf3a-499a43f55020",
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
				name = "store\\anyone\\fru\\fru",
				uuid = "318fe8ac-2cf0-c9e8-39ea-e0c686e59f7c",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[157] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "aca52869-2a50-7355-6619-d653e3ee8db9",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[158] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "860b30e2-309a-9c66-29e6-694829b80fb2",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[161] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "3056330e-8833-cfa2-8b89-dc88350ad19e",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[162] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "79e6d0c1-9638-4e25-7842-29cf7b90c8d1",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[166] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "b424f035-6a80-29f1-3744-d7bb626cdf05",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[MCH] Dismantle",
				uuid = "593492c5-1438-e622-be2c-4bd5bc4d38d4",
				version = 2,
			},
			inheritedObjectUUID = "ec5a11a7-d756-9b81-b998-c4beb8ce1f05",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU_megaminx_indicator",
				uuid = "39fdd02c-c214-9b00-6bdb-f72203786cfc",
			},
			inheritanceRoot = "FRU_megaminx_indicator",
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
							actionLua = "local data = Argus.getCurrentTethers()\nlocal result = {}\n\n--local marks = {6, 9, 7, 10} -- 上锁链下禁止\nlocal marks = {9, 6, 10, 7} -- 上禁止下锁链\n\nlocal function JobIDtoName(jobid)\n    if jobid == 24 then\n        return \"白\"\n    elseif jobid == 33 then\n        return \"占\"\n    elseif jobid == 21 then\n        return \"战\"\n    elseif jobid == 37 then\n        return \"槍\"\n    elseif jobid == 32 then\n        return \"暗\"\n    elseif jobid == 19 then\n        return \"騎\"\n    elseif jobid == 34 then\n        return \"侍\"\n    elseif jobid == 20 then\n        return \"僧\"\n    elseif jobid == 39 then\n        return \"鐮\"\n    elseif jobid == 22 then\n        return \"龍\"\n    elseif jobid == 30 then\n        return \"忍\"\n    elseif jobid == 31 then\n        return \"機\"\n    elseif jobid == 23 then\n        return \"詩\"\n    elseif jobid == 38 then\n        return \"舞\"\n    elseif jobid == 25 then\n        return \"黑\"\n    elseif jobid == 35 then\n        return \"赤\"\n    elseif jobid == 27 then\n        return \"召\"\n    elseif jobid == 40 then\n        return \"賢\"\n    elseif jobid == 28 then\n        return \"學\"\n    elseif jobid == 41 then\n        return \"蛇\"\n    elseif jobid == 42 then\n        return \"画\"\n    else\n        return \"未知\"\n    end\nend\n\n-- 找到带有 2461 buff 的连线组水buff的玩家 ID\nlocal function findWaterBuffPlayer(tethers)\n    for id, _ in pairs(tethers) do\n        local player = TensorCore.mGetEntity(id)\n        if TensorCore.hasBuff(player, 2461) then\n            return id\n        end\n    end\n    return -1\nend\n\n-- 从起点 ID 构建整个连线链\nlocal function buildChain(startId, tethers)\n    local visited = {} -- 防止循环\n    local currentId = startId\n\n    while currentId and not visited[currentId] do\n        table.insert(result, currentId)\n        visited[currentId] = true\n        local nextEntry = tethers[currentId]\n        currentId = nextEntry and nextEntry[1] and nextEntry[1].targetid or nil\n    end\nend\n\n-- 执行操作\nlocal function processResult(resultList, markList)\n    for i, id in ipairs(resultList) do\n        local player = TensorCore.mGetEntity(id)\n        if player then\n            d(JobIDtoName(player.job) .. markList[i])\n            ActionList:Get(12, markList[i]):Cast(id)\n        end\n    end\nend\n\n-- 过滤不在连线链中的玩家\nlocal function filterPartyNotInChain(partyList, resultSet)\n    local filtered = {}\n    for _, player in pairs(partyList) do\n        if not resultSet[player.id] then\n            table.insert(filtered, player)\n        end\n    end\n    return filtered\nend\n\n-- 按带 buff 优先排序玩家列表\nlocal function sortPlayersByBuff(players, buffId)\n    local sorted = {}\n    for _, player in pairs(players) do\n        if TensorCore.hasBuff(player, buffId) then\n            table.insert(sorted, 1, player.id) -- 带 buff 的优先\n        else\n            table.insert(sorted, player.id)\n        end\n    end\n    return sorted\nend\n\nlocal firstKey = findWaterBuffPlayer(data)\nif firstKey ~= -1 then\n    buildChain(firstKey, data)\nend\n\nprocessResult(result, marks)\n\nlocal party = TensorCore.getEntityGroupList(\"ContentID\", {contentid = 0})\ntable.insert(party, TensorCore.mGetPlayer())\n\nlocal resultSet = {}\nfor _, id in ipairs(result) do\n    resultSet[id] = true\nend\n\nlocal filteredParty = filterPartyNotInChain(party, resultSet)\nlocal finalList = sortPlayersByBuff(filteredParty, 2461)\n\nlocal disconnectedMark = 4\nfor _, id in ipairs(finalList) do\n    local player = TensorCore.mGetEntity(id)\n    if player then\n        d(JobIDtoName(player.job) .. disconnectedMark)\n        ActionList:Get(12, disconnectedMark):Cast(id)\n        disconnectedMark = disconnectedMark - 1\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"0b1df365-d4ff-203c-99da-c0ac4b5ca524",
									true,
								},
								
								{
									"b426b7e5-9f8e-728d-be48-16d3f87f9b6c",
									true,
								},
							},
							uuid = "a68a5adf-3b5a-3828-a731-84c18ff7d27f",
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
							conditionLua = "local count = 0\nfor _, ts in pairs(Argus.getCurrentTethers()) do count = count + #ts end\n\nreturn count >= 4",
							uuid = "0b1df365-d4ff-203c-99da-c0ac4b5ca524",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local party = TensorCore.getEntityGroupList(\"ContentID\", {contentid = 0})\ntable.insert(party, TensorCore.mGetPlayer())\n\nlocal count = 0\n\n\nfor _, player in pairs(party) do\n    if TensorCore.hasBuff(player, 2461) then\n        count = count + 1\n    end\nend\n\n\nreturn count >= 2",
							uuid = "b426b7e5-9f8e-728d-be48-16d3f87f9b6c",
							version = 3,
						},
					},
				},
				displayPath = "FRU_megaminx_indicator",
				enabled = false,
				mechanicTime = 738.2,
				name = "[AN] p4_1 [AnyoneCore]",
				timeRange = true,
				timelineIndex = 166,
				timerEndOffset = 10,
				timerStartOffset = -5,
				uuid = "fa5889e6-d071-e919-afec-e4d624a1f2b5",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Potion",
				uuid = "a2929c4d-dd29-3f13-b007-4f9444dd29ab",
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
							aType = "Alert",
							alertDuration = 3000,
							alertPriority = 2,
							alertText = "[LPDU] Use potion",
							name = "[LPDU] Use potion",
							uuid = "8d00b292-7df5-c8fb-96f8-92fa7f0e0ab8",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Potion",
				mechanicTime = 738.2,
				name = "[LPDU] Use potion - P4 Darklit",
				throttleTime = 3000,
				timeRange = true,
				timelineIndex = 166,
				timerEndOffset = 9,
				timerStartOffset = 4,
				uuid = "66e53936-b3f2-5665-8535-adef4a2594cd",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Mitigation",
				uuid = "d99270de-1002-e0e8-bae7-2bd7dcdf4558",
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
							actionID = 7549,
							conditions = 
							{
								
								{
									"1ae99ff9-600d-b100-acd4-91a71a9849d0",
									true,
								},
								
								{
									"76a5c3ed-b339-54e1-8ea8-418b9f641c7e",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] M2 Feint Darklit Dragonsong (Ryne)",
							targetType = "Enemy",
							uuid = "93eaab1e-e0ed-7421-bb64-8999802e5d00",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"M2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "M2 roster",
							uuid = "1ae99ff9-600d-b100-acd4-91a71a9849d0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Darklit Dragonsong (Ryne) CD",
							uuid = "76a5c3ed-b339-54e1-8ea8-418b9f641c7e",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 738.2,
				name = "[LPDU] M2 Feint Darklit Dragonsong (Ryne)",
				timeRange = true,
				timelineIndex = 166,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "1882823b-fc40-8b04-a4be-3d76bc2b2bf7",
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
							actionID = 7560,
							conditions = 
							{
								
								{
									"14380b86-004a-1ca7-bbd9-92bb647c5d21",
									true,
								},
								
								{
									"b3ecaf40-34ba-f611-b463-ef40773bf150",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Addle 2 Darklit Dragonsong",
							targetType = "Enemy",
							uuid = "7ffb5bab-b8ad-9797-b52b-3ab5240306d6",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R2 roster",
							uuid = "14380b86-004a-1ca7-bbd9-92bb647c5d21",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Darklit Dragonsong CD",
							uuid = "b3ecaf40-34ba-f611-b463-ef40773bf150",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				enabled = false,
				mechanicTime = 738.2,
				name = "[LPDU] R2 Addle 2 Darklit Dragonsong",
				timeRange = true,
				timelineIndex = 166,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "544ec932-7bb0-d3fa-8422-76bb3557c110",
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
							actionID = 7405,
							conditions = 
							{
								
								{
									"f0cdf270-cce2-d722-a883-0b09d638a79f",
									true,
								},
								
								{
									"0ed88095-02ad-1e3e-9b89-fae2c02a4585",
									true,
								},
								
								{
									"98067108-1837-c17b-9175-54a7f93a125e",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Troubadour - Darklit Dragonsong",
							uuid = "03899426-8351-e5dc-be73-1efe284d33e6",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							conditions = 
							{
								
								{
									"f0cdf270-cce2-d722-a883-0b09d638a79f",
									true,
								},
								
								{
									"b2662c3d-41fa-6faa-84de-75ce3ded576b",
									true,
								},
								
								{
									"873e39c2-4ae9-5699-a6cf-d15727f15169",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Tactician - Darklit Dragonsong",
							uuid = "bf23712c-e0db-1bb6-a5d2-24bf0f8cd8c5",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							conditions = 
							{
								
								{
									"f0cdf270-cce2-d722-a883-0b09d638a79f",
									true,
								},
								
								{
									"280d32d1-7867-bbb7-b8c5-1cf60f18dc5a",
									true,
								},
								
								{
									"43c9eba4-260f-8d53-a28e-41d82a120a87",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Shield Samba - Darklit Dragonsong",
							uuid = "8f700275-c46b-487e-a9c7-93da0a218bf4",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R1 roster",
							uuid = "f0cdf270-cce2-d722-a883-0b09d638a79f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Troubadour job",
							uuid = "0ed88095-02ad-1e3e-9b89-fae2c02a4585",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7405,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "98067108-1837-c17b-9175-54a7f93a125e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Tactician job",
							uuid = "b2662c3d-41fa-6faa-84de-75ce3ded576b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "873e39c2-4ae9-5699-a6cf-d15727f15169",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Shield Samba job",
							uuid = "280d32d1-7867-bbb7-b8c5-1cf60f18dc5a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "43c9eba4-260f-8d53-a28e-41d82a120a87",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 738.2,
				name = "[LPDU] R1 Phys Ranged - Darklit Dragonsong",
				timeRange = true,
				timelineIndex = 166,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "26fc79c2-48b4-dd12-a2f5-005cc4c488ab",
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
							actionID = 2887,
							conditions = 
							{
								
								{
									"29faa1ee-3299-8fb6-885b-d0a483c412a9",
									true,
								},
								
								{
									"e50c0b44-4e79-43a3-af4d-5775c82b2f94",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Dismantle Darklit Dragonsong",
							uuid = "5b7ef7f5-6871-4e6e-a950-6408e468974e",
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
							jobValue = "MACHINIST",
							name = "MACHINIST job",
							uuid = "29faa1ee-3299-8fb6-885b-d0a483c412a9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 2887,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Darklit Dragonsong CD",
							uuid = "e50c0b44-4e79-43a3-af4d-5775c82b2f94",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 738.2,
				name = "[LPDU] Dismantle Darklit Dragonsong",
				timeRange = true,
				timelineIndex = 166,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "c28b8ea9-b3c7-3eae-a96d-83b00ccc4485",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU",
				uuid = "eae62f75-914e-c014-87f0-bf3d28a00982",
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
							actionLua = "local r=AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif r.current()==nil or not r.isReady() or p==nil then return end\nlocal slot=r.mySlot()\nlocal function clear()\n if data.lpdu_darklit_shapes then for _,id in ipairs(data.lpdu_darklit_shapes) do Argus.deleteTimedShape(id) end end\n data.lpdu_darklit_shapes={}\nend\nlocal function draw(x,z,seconds)\n clear()\n local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n local t={x=x,y=p.pos.y,z=z};local ms=math.floor(seconds*1000)\n local id=d:addTimedCircle(ms,x,p.pos.y+.05,z,1.2,0,true,true)\n if id then table.insert(data.lpdu_darklit_shapes,id) end\n local distance=TensorCore.getDistance2d(p.pos,t)\n if distance>1 then\n  id=d:addTimedArrow(ms,p.pos.x,p.pos.y+.05,p.pos.z,TensorCore.getHeadingToTarget(p.pos,t),math.max(.15,distance-1),1,1,1,0,true)\n  if id then table.insert(data.lpdu_darklit_shapes,id) end\n end\nend\ndata.lpdu_darklit_assignment=nil; data.lpdu_darklit_stage=0;data.lpdu_darklit_safe_x=nil\nlocal spots={H1={98,96},H2={102,96},T1={94,100},T2={94,104},M1={102,108},M2={106,108},R1={106,102},R2={106,106}}\nlocal t=spots[slot];if t then draw(t[1],t[2],5.5) end\nself.used=true",
							conditions = 
							{
								
								{
									"eea225b0-0db4-02bd-86df-bdef37456bb2",
									true,
								},
							},
							name = "Preposition",
							uuid = "74c2e504-f473-8041-9f14-a58a6cfd57dc",
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
							conditionLua = "return eventArgs ~= nil and eventArgs.spellID == 40239",
							name = "Preposition event",
							uuid = "eea225b0-0db4-02bd-86df-bdef37456bb2",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 3,
				mechanicTime = 738.2,
				name = "[LPDU] P4 Mami Darklit - Preposition",
				timeRange = true,
				timelineIndex = 166,
				timerStartOffset = -6,
				uuid = "67c02f86-29ff-6c11-aa13-24c15aaa278c",
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
							actionLua = "local r=AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif r.current()==nil or not r.isReady() or p==nil then return end\nlocal slot=r.mySlot()\nlocal function clear()\n if data.lpdu_darklit_shapes then for _,id in ipairs(data.lpdu_darklit_shapes) do Argus.deleteTimedShape(id) end end\n data.lpdu_darklit_shapes={}\nend\nlocal function draw(x,z,seconds)\n clear()\n local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n local t={x=x,y=p.pos.y,z=z};local ms=math.floor(seconds*1000)\n local id=d:addTimedCircle(ms,x,p.pos.y+.05,z,1.2,0,true,true)\n if id then table.insert(data.lpdu_darklit_shapes,id) end\n local distance=TensorCore.getDistance2d(p.pos,t)\n if distance>1 then\n  id=d:addTimedArrow(ms,p.pos.x,p.pos.y+.05,p.pos.z,TensorCore.getHeadingToTarget(p.pos,t),math.max(.15,distance-1),1,1,1,0,true)\n  if id then table.insert(data.lpdu_darklit_shapes,id) end\n end\nend\nlocal all={\"T1\",\"T2\",\"H1\",\"H2\",\"M1\",\"M2\",\"R1\",\"R2\"}\nlocal byid,ents,water,links={},{},{},{}\nlocal nw=0\nfor _,s in ipairs(all) do\n local e=r.entOf(s);if not e then return end\n byid[e.id]=s;ents[s]=e\n if TensorCore.getBuff(e,2461) then water[s]=true;nw=nw+1 end\n links[s]={}\nend\nif nw~=2 then return end\nfor id,ts in pairs(Argus.getCurrentTethers()) do\n local a=byid[id]\n if a then for _,t in ipairs(ts) do\n  local b=byid[t.targetid]\n  if t.type==110 and b then links[a][b]=true;links[b][a]=true end\n end end\nend\nlocal tether,nt={},0\nfor _,s in ipairs(all) do local n=0;for _ in pairs(links[s]) do n=n+1 end\n if n>0 then if n~=2 then return end;tether[s]=true;nt=nt+1 end\nend\nif nt~=4 then return end\nlocal anchor=tether.H1 and \"H1\" or (tether.H2 and \"H2\" or nil)\nif not anchor then return end\nlocal south,east={},{}\nlocal neighbors,opposite={},nil\nfor _,s in ipairs(all) do\n if tether[s] then\n  south[s]=links[anchor][s]==true\n  if south[s] then table.insert(neighbors,s) elseif s~=anchor then opposite=s end\n end\nend\nif #neighbors~=2 or opposite==nil then return end\n-- Keep the healer north; connected players south; opposite player north.\n-- E/W is free in Mami: preserve the two southern players' visible order.\ntable.sort(neighbors,function(a,b) return ents[a].pos.x<ents[b].pos.x end)\neast[anchor]=false;east[opposite]=true;east[neighbors[1]]=false;east[neighbors[2]]=true\nlocal west,baits={},{}\nfor _,s in ipairs(all) do\n if not tether[s] then\n  if s==\"T1\" or s==\"T2\" or s==\"H1\" or s==\"H2\" then table.insert(west,s) else table.insert(baits,s) end\n end\nend\nif #west~=2 or #baits~=2 then return end\n-- Mami non-tethers: supports west, DPS east; preserve their N/S order.\nfor _,pair in ipairs({west,baits}) do\n table.sort(pair,function(a,b) return ents[a].pos.z<ents[b].pos.z end)\n south[pair[1]]=false;south[pair[2]]=true\nend\nfor _,s in ipairs(west) do east[s]=false end\nfor _,s in ipairs(baits) do east[s]=true end\nlocal wt,wb\nfor _,s in ipairs(all) do if water[s] then if tether[s] then wt=s else wb=s end end end\nif wt==nil or wb==nil then return end\nif south[wt]==south[wb] then\n local pair=east[wb] and baits or west\n south[pair[1]],south[pair[2]]=south[pair[2]],south[pair[1]]\nend\ndata.lpdu_darklit_assignment={south=south,east=east,tether=tether,water=water}\ndata.lpdu_darklit_stage=1\nlocal sn=south[slot];local en=east[slot]\nif tether[slot] then\n draw(en and 102 or 98,sn and 111 or 89,11)\n AnyoneCore.Shotcall(sn and \"South tower\" or \"North tower\",true,6,false)\nelse\n draw(en and 105 or 95,sn and 103 or 97,11)\n AnyoneCore.Shotcall(\"Bait protean \"..(sn and \"south\" or \"north\")..(en and \"east\" or \"west\"),true,6,false)\nend\nself.used=true",
							name = "Personal Tower or Protean",
							uuid = "fc8dd570-75ec-bb78-87d5-215492bdadeb",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU",
				mechanicTime = 738.2,
				name = "[LPDU] P4 Mami Darklit - Personal Tower or Protean",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 166,
				timerEndOffset = 5,
				timerStartOffset = 0.5,
				uuid = "9ddd4aaa-fd38-539d-9e8c-f984962babbe",
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
							actionLua = "local r=AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif r.current()==nil or not r.isReady() or p==nil then return end\nlocal slot=r.mySlot()\nlocal function clear()\n if data.lpdu_darklit_shapes then for _,id in ipairs(data.lpdu_darklit_shapes) do Argus.deleteTimedShape(id) end end\n data.lpdu_darklit_shapes={}\nend\nlocal function draw(x,z,seconds)\n clear()\n local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n local t={x=x,y=p.pos.y,z=z};local ms=math.floor(seconds*1000)\n local id=d:addTimedCircle(ms,x,p.pos.y+.05,z,1.2,0,true,true)\n if id then table.insert(data.lpdu_darklit_shapes,id) end\n local distance=TensorCore.getDistance2d(p.pos,t)\n if distance>1 then\n  id=d:addTimedArrow(ms,p.pos.x,p.pos.y+.05,p.pos.z,TensorCore.getHeadingToTarget(p.pos,t),math.max(.15,distance-1),1,1,1,0,true)\n  if id then table.insert(data.lpdu_darklit_shapes,id) end\n end\nend\nlocal a=data.lpdu_darklit_assignment;if a==nil then return end\nif data.lpdu_darklit_stage~=1 then self.used=true;return end\ndata.lpdu_darklit_stage=2\nlocal sn=a.south[slot];local en=a.east[slot]\nlocal x,z\nif a.tether[slot] then x=(en and 1 or -1)*(sn and 5 or 8);z=sn and 9 or -8\nelse x=(en and 1 or -1)*(sn and 8 or 15);z=sn and 1 or -1 end\ndraw(100+x,100+z,2.6)\nAnyoneCore.Shotcall(\"Spread - stay away from north crystal\",true,3,false)\nself.used=true",
							conditions = 
							{
								
								{
									"26c3a832-89df-a4fa-b907-7babc4df4d65",
									true,
								},
							},
							name = "Spirit Taker Spread",
							uuid = "e3c29bc4-60d9-3bc8-9a66-6dfde2584ed2",
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
							conditionLua = "return eventArgs ~= nil and eventArgs.spellID == 40190",
							name = "Spirit Taker Spread event",
							uuid = "26c3a832-89df-a4fa-b907-7babc4df4d65",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 2,
				loop = true,
				mechanicTime = 738.2,
				name = "[LPDU] P4 Mami Darklit - Spirit Taker Spread",
				timeRange = true,
				timelineIndex = 166,
				timerEndOffset = 16,
				timerStartOffset = 10,
				uuid = "d34f8b42-0e1d-8f4d-8318-1fdd7f4fe9c3",
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
							actionLua = "local r=AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif r.current()==nil or not r.isReady() or p==nil then return end\nlocal slot=r.mySlot()\nlocal function clear()\n if data.lpdu_darklit_shapes then for _,id in ipairs(data.lpdu_darklit_shapes) do Argus.deleteTimedShape(id) end end\n data.lpdu_darklit_shapes={}\nend\nlocal function draw(x,z,seconds)\n clear()\n local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n local t={x=x,y=p.pos.y,z=z};local ms=math.floor(seconds*1000)\n local id=d:addTimedCircle(ms,x,p.pos.y+.05,z,1.2,0,true,true)\n if id then table.insert(data.lpdu_darklit_shapes,id) end\n local distance=TensorCore.getDistance2d(p.pos,t)\n if distance>1 then\n  id=d:addTimedArrow(ms,p.pos.x,p.pos.y+.05,p.pos.z,TensorCore.getHeadingToTarget(p.pos,t),math.max(.15,distance-1),1,1,1,0,true)\n  if id then table.insert(data.lpdu_darklit_shapes,id) end\n end\nend\nlocal a=eventArgs\n-- Omen rectangle center establishes the cleaved half directly.\nlocal cx=a.x+math.sin(a.heading)*40\ndata.lpdu_darklit_safe_x=cx<100 and 1 or -1\nself.used=true",
							conditions = 
							{
								
								{
									"3cae29a0-3e7c-9eed-9915-f2e19d29a8fc",
									true,
								},
							},
							name = "Detect Safe Cleave Half",
							uuid = "6d8d24f6-0cbe-7ac0-ba6a-50e51491f65e",
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
							conditionLua = "return eventArgs ~= nil and (eventArgs.aoeID == 40227 or eventArgs.aoeID == 40228)",
							name = "Detect Safe Cleave Half event",
							uuid = "3cae29a0-3e7c-9eed-9915-f2e19d29a8fc",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 18,
				loop = true,
				mechanicTime = 738.2,
				name = "[LPDU] P4 Mami Darklit - Detect Safe Cleave Half",
				timeRange = true,
				timelineIndex = 166,
				timerEndOffset = 19,
				timerStartOffset = 12,
				uuid = "21e840dc-3501-a53c-b3d9-c7c3f5f150b9",
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
							actionLua = "local r=AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif r.current()==nil or not r.isReady() or p==nil then return end\nlocal slot=r.mySlot()\nlocal function clear()\n if data.lpdu_darklit_shapes then for _,id in ipairs(data.lpdu_darklit_shapes) do Argus.deleteTimedShape(id) end end\n data.lpdu_darklit_shapes={}\nend\nlocal function draw(x,z,seconds)\n clear()\n local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n local t={x=x,y=p.pos.y,z=z};local ms=math.floor(seconds*1000)\n local id=d:addTimedCircle(ms,x,p.pos.y+.05,z,1.2,0,true,true)\n if id then table.insert(data.lpdu_darklit_shapes,id) end\n local distance=TensorCore.getDistance2d(p.pos,t)\n if distance>1 then\n  id=d:addTimedArrow(ms,p.pos.x,p.pos.y+.05,p.pos.z,TensorCore.getHeadingToTarget(p.pos,t),math.max(.15,distance-1),1,1,1,0,true)\n  if id then table.insert(data.lpdu_darklit_shapes,id) end\n end\nend\nlocal a=data.lpdu_darklit_assignment;local safe=data.lpdu_darklit_safe_x\nif a==nil or safe==nil then return end\nif data.lpdu_darklit_stage~=2 then self.used=true;return end\ndata.lpdu_darklit_stage=3\nlocal sn=a.south[slot]\ndraw(100+safe*(sn and 3 or 6),sn and 110 or 94,5)\nAnyoneCore.Shotcall((sn and \"South stack\" or \"North stack\")..(safe==1 and \" - east safe\" or \" - west safe\"),true,5,false)\nself.used=true",
							conditions = 
							{
								
								{
									"4b091294-8b06-44ba-b1e2-05ed733c6101",
									true,
								},
							},
							name = "Water Stack and Cleave",
							uuid = "1d40e3b4-f1a7-4f22-a267-0e4c48b3c6fd",
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
							conditionLua = "return eventArgs ~= nil and eventArgs.spellID == 40289",
							name = "Water Stack and Cleave event",
							uuid = "4b091294-8b06-44ba-b1e2-05ed733c6101",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 2,
				loop = true,
				mechanicTime = 738.2,
				name = "[LPDU] P4 Mami Darklit - Water Stack and Cleave",
				timeRange = true,
				timelineIndex = 166,
				timerEndOffset = 20,
				timerStartOffset = 12,
				uuid = "34ec2c84-cb85-c816-acd5-e87ce26e1b15",
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
							actionLua = "local r=AnyoneCore.Roster\nlocal p=TensorCore.mGetPlayer()\nif r.current()==nil or not r.isReady() or p==nil then return end\nlocal slot=r.mySlot()\nlocal function clear()\n if data.lpdu_darklit_shapes then for _,id in ipairs(data.lpdu_darklit_shapes) do Argus.deleteTimedShape(id) end end\n data.lpdu_darklit_shapes={}\nend\nlocal function draw(x,z,seconds)\n clear()\n local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n local t={x=x,y=p.pos.y,z=z};local ms=math.floor(seconds*1000)\n local id=d:addTimedCircle(ms,x,p.pos.y+.05,z,1.2,0,true,true)\n if id then table.insert(data.lpdu_darklit_shapes,id) end\n local distance=TensorCore.getDistance2d(p.pos,t)\n if distance>1 then\n  id=d:addTimedArrow(ms,p.pos.x,p.pos.y+.05,p.pos.z,TensorCore.getHeadingToTarget(p.pos,t),math.max(.15,distance-1),1,1,1,0,true)\n  if id then table.insert(data.lpdu_darklit_shapes,id) end\n end\nend\nclear()\nif slot==\"T1\" or slot==\"T2\" then AnyoneCore.Shotcall(\"Tank bait far, then closest - swap or invuln\",true,6,false) end\nself.used=true",
							conditions = 
							{
								
								{
									"f7e9ccbd-4143-afcd-b504-62b790fd2d98",
									true,
								},
							},
							name = "Water Cleanup and Tank Baits",
							uuid = "aa0d4376-ff03-3717-ba88-ddd0cc115679",
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
							conditionLua = "return eventArgs ~= nil and eventArgs.spellID == 40271",
							name = "Water Cleanup and Tank Baits event",
							uuid = "f7e9ccbd-4143-afcd-b504-62b790fd2d98",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 2,
				mechanicTime = 738.2,
				name = "[LPDU] P4 Mami Darklit - Water Cleanup and Tank Baits",
				timeRange = true,
				timelineIndex = 166,
				timerEndOffset = 23,
				timerStartOffset = 18,
				uuid = "fb77cc94-2b10-1bb0-90cf-af2c1b740346",
				version = 2,
			},
		},
	},
	[167] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "d81b2048-7b66-a2d4-807a-634eb7043458",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Melee] Feint Usurper (Primary)",
				uuid = "778d6154-d6f9-f0ed-bb7f-b9324ace0614",
				version = 2,
			},
			inheritedObjectUUID = "efc38fdf-00f0-96ff-a503-2b7001dd3958",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[Caster] Addle Usurper (Secondary)",
				uuid = "44952b4f-e9d7-5634-a860-dc14f4821552",
				version = 2,
			},
			inheritedObjectUUID = "687e891a-dc9e-adba-8dec-ff1c8adefa05",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[168] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "144e8d53-85bc-9a77-a496-dccde7cc06e3",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[169] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "e81f97c6-d72e-5aba-2271-de00d7dff916",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[170] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU_megaminx_indicator",
				uuid = "42a79d7d-5aa9-37c9-718b-79df7d94d98d",
			},
			inheritanceRoot = "FRU_megaminx_indicator",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "draw cleave",
				uuid = "f552a70b-2d64-7097-bf5a-cac82bcad915",
				version = 2,
			},
			inheritedObjectUUID = "ff98a44f-a9de-e6b8-9c38-049ed2d5888a",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU",
				uuid = "74e9652c-a812-5414-83b7-e0fef541ab31",
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
							actionLua = "local blue = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0/255, 255/255, 255/255, .25),2)\nlocal ent = TensorCore.mGetEntity(eventArgs.entityID)\nblue:addTimedRect(eventArgs.channelTimeMax * 1000,ent.pos.x,0,ent.pos.z,40,40,ent.pos.h + math.pi/2,0,false)\nself.used = true",
							conditions = 
							{
								
								{
									"a88509da-4f72-4e1d-84fe-e9c2a0ec7468",
									true,
								},
							},
							uuid = "f25cbb69-0fc9-18ac-b044-c660bbeb3753",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local blue = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0/255, 255/255, 255/255, .25),2)\nlocal ent = TensorCore.mGetEntity(eventArgs.entityID)\nblue:addTimedRect(eventArgs.channelTimeMax * 1000,ent.pos.x,0,ent.pos.z,40,40,ent.pos.h - math.pi/2,0,false)\nself.used = true",
							conditions = 
							{
								
								{
									"18f04b52-efe8-6baf-8a34-3d9121d06e24",
									true,
								},
							},
							uuid = "34822c54-80b8-9f03-9735-ee195a7925b5",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							eventArgType = 2,
							eventSpellID = 40227,
							name = "left",
							uuid = "a88509da-4f72-4e1d-84fe-e9c2a0ec7468",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							eventArgType = 2,
							eventSpellID = 40228,
							name = "right",
							uuid = "18f04b52-efe8-6baf-8a34-3d9121d06e24",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 3,
				mechanicTime = 757.3,
				name = "draw cleave [LPDU]",
				timeRange = true,
				timelineIndex = 170,
				timerEndOffset = 15,
				timerStartOffset = -15,
				uuid = "55cfc1df-1e31-e414-a88c-6c9b6949495c",
				version = 2,
			},
		},
	},
	[171] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "dbe13285-40cf-50c9-cf59-d45f75337f55",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[172] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "87ea9c02-d4e7-bed6-29b1-691800487cd2",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[173] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "6c8a701f-b8c7-82a3-7dda-ccc57babdaaf",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[175] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "f5051c51-2f6a-571d-1042-858b5ce98ce1",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[MNK] Mantra",
				uuid = "7a7bd5ff-3003-eb97-8eaf-f5378b3ae803",
				version = 2,
			},
			inheritedObjectUUID = "c1687c82-b89a-0b52-b981-9d96d632ae3c",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Mitigation",
				uuid = "10b3f68f-69df-7b37-94ab-0541c7960eff",
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
							actionID = 7405,
							conditions = 
							{
								
								{
									"a3ccd9fa-1219-eeef-8b25-fd7a7ab4d692",
									true,
								},
								
								{
									"b1b141b6-4a0d-5423-bf55-51391b712d18",
									true,
								},
								
								{
									"5665bed4-b40b-295c-964c-8605a85eb77d",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Troubadour - P4 Akh Morn 1",
							uuid = "47b5426b-0149-25f3-92e8-1a826da2bc84",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							conditions = 
							{
								
								{
									"a3ccd9fa-1219-eeef-8b25-fd7a7ab4d692",
									true,
								},
								
								{
									"738cec5b-3c00-ca2d-b132-f4987fbb28cc",
									true,
								},
								
								{
									"6838ff53-0b88-bd34-997b-053e41b9b2b6",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Tactician - P4 Akh Morn 1",
							uuid = "c887dabd-e0ce-a19a-8638-c89ed30c2af7",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							conditions = 
							{
								
								{
									"a3ccd9fa-1219-eeef-8b25-fd7a7ab4d692",
									true,
								},
								
								{
									"63411018-497b-f5dd-ac81-03e8ca930d4c",
									true,
								},
								
								{
									"0e7d9e35-2c91-3ca9-be95-871f2e380a04",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Shield Samba - P4 Akh Morn 1",
							uuid = "9cb66666-36eb-a180-8c3e-8fd7af16a5ba",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R2 roster",
							uuid = "a3ccd9fa-1219-eeef-8b25-fd7a7ab4d692",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Troubadour job",
							uuid = "b1b141b6-4a0d-5423-bf55-51391b712d18",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7405,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "5665bed4-b40b-295c-964c-8605a85eb77d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Tactician job",
							uuid = "738cec5b-3c00-ca2d-b132-f4987fbb28cc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "6838ff53-0b88-bd34-997b-053e41b9b2b6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Shield Samba job",
							uuid = "63411018-497b-f5dd-ac81-03e8ca930d4c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "0e7d9e35-2c91-3ca9-be95-871f2e380a04",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 773.5,
				name = "[LPDU] R2 Phys Ranged - P4 Akh Morn 1",
				timeRange = true,
				timelineIndex = 175,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "3998cdfb-7df2-cef2-9d66-1787457565f3",
				version = 2,
			},
		},
	},
	[176] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "ae7f251e-ea13-e25a-5630-e57433b1a9ae",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Ranged] rDPS Mit",
				uuid = "52aecc72-533b-caba-b1ce-e2b4b5697e0a",
				version = 2,
			},
			inheritedObjectUUID = "6a905f74-78a4-4323-85d1-b1b132135ae2",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[179] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "461384dd-369f-9091-afa8-ec97cfc97dad",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Melee] Feint Oracle (Secondary)",
				uuid = "a3265b77-9fa6-4fd7-b810-550479799cfa",
				version = 2,
			},
			inheritedObjectUUID = "5eac93c6-04ab-7ecb-bc2f-5c5a07bcd0d4",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[BRD] Nature's Minne",
				uuid = "569da7d7-7f1c-9b11-9708-003aec148e4a",
				version = 2,
			},
			inheritedObjectUUID = "25d324fd-76c1-912d-83cb-352d186ac11e",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[Caster] Addle Oracle (Primary)",
				uuid = "884538ca-9d64-2660-93dc-40db165eb6ef",
				version = 2,
			},
			inheritedObjectUUID = "52a62c54-82f8-6315-9e96-8190c27ff8f5",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Mitigation",
				uuid = "d524ebff-c173-776d-93e7-5da7c520ef48",
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
							actionID = 7549,
							conditions = 
							{
								
								{
									"409ac48b-5456-bf9d-9e29-bd895bbe16cd",
									true,
								},
								
								{
									"8486a4eb-c397-b34f-a520-c0ec173b5299",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] M1 Feint Crystallize Time (Gaia)",
							targetType = "Enemy",
							uuid = "f14a533a-d82b-d62a-995b-10cef9e38be6",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"M1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "M1 roster",
							uuid = "409ac48b-5456-bf9d-9e29-bd895bbe16cd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Crystallize Time (Gaia) CD",
							uuid = "8486a4eb-c397-b34f-a520-c0ec173b5299",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 798.9,
				name = "[LPDU] M1 Feint Crystallize Time (Gaia)",
				timeRange = true,
				timelineIndex = 179,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "8284d7b6-5f52-0638-9ed1-f97e98cd200a",
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
							actionID = 7560,
							conditions = 
							{
								
								{
									"d17f7e59-366a-f328-ac55-c1c777d6fb6a",
									true,
								},
								
								{
									"2c8a84cb-d93b-d8d7-88a7-b66c5fce6a94",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Addle Crystallize Time",
							targetType = "Enemy",
							uuid = "5d8a945e-c568-9e6f-91ea-767db3b2f86b",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R1 roster",
							uuid = "d17f7e59-366a-f328-ac55-c1c777d6fb6a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Crystallize Time CD",
							uuid = "2c8a84cb-d93b-d8d7-88a7-b66c5fce6a94",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 798.9,
				name = "[LPDU] R1 Addle Crystallize Time",
				timeRange = true,
				timelineIndex = 179,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "cfad9848-5c04-36b7-aa47-1061dddc49b0",
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
							actionID = 7405,
							conditions = 
							{
								
								{
									"11183f10-44f4-a755-89ab-830a99800384",
									true,
								},
								
								{
									"a8f13e6c-83a6-0f07-9a8c-3c11bbbee69f",
									true,
								},
								
								{
									"f199e956-1492-5fd6-9a6a-736a53bac041",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Troubadour - Crystallize Time Rewind",
							uuid = "36e6e848-77cb-d451-8e20-006a0ad83ca6",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							conditions = 
							{
								
								{
									"11183f10-44f4-a755-89ab-830a99800384",
									true,
								},
								
								{
									"c2dd48c9-4939-96fa-9126-5791208a3671",
									true,
								},
								
								{
									"3df4d77f-190d-b746-a03e-a58d072d1f12",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Tactician - Crystallize Time Rewind",
							uuid = "7f656450-38df-b89a-8abf-ab3bbddd6a30",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							conditions = 
							{
								
								{
									"11183f10-44f4-a755-89ab-830a99800384",
									true,
								},
								
								{
									"4cff1815-78bb-cc36-86aa-b281a4693f94",
									true,
								},
								
								{
									"9f591371-8f93-1d0e-b26b-aae81f083be2",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Shield Samba - Crystallize Time Rewind",
							uuid = "fefcdd64-39eb-76fc-903d-91238e19479b",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R1 roster",
							uuid = "11183f10-44f4-a755-89ab-830a99800384",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Troubadour job",
							uuid = "a8f13e6c-83a6-0f07-9a8c-3c11bbbee69f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7405,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "f199e956-1492-5fd6-9a6a-736a53bac041",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Tactician job",
							uuid = "c2dd48c9-4939-96fa-9126-5791208a3671",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "3df4d77f-190d-b746-a03e-a58d072d1f12",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Shield Samba job",
							uuid = "4cff1815-78bb-cc36-86aa-b281a4693f94",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "9f591371-8f93-1d0e-b26b-aae81f083be2",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 798.9,
				name = "[LPDU] R1 Phys Ranged - Crystallize Time Rewind",
				timeRange = true,
				timelineIndex = 179,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "66676f38-fbec-c6f4-a9b7-e65d5bf752ce",
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
							actionID = 34686,
							conditions = 
							{
								
								{
									"f8e96878-e9da-eb63-a300-6f0f007894ef",
									true,
								},
								
								{
									"e9f1050c-165e-76c1-9cee-fa25bade8456",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Tempera Grassa Crystallize Time Rewind",
							uuid = "393a9563-ae0e-c079-9d31-bb5c44b251d2",
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
							jobValue = "PICTOMANCER",
							name = "PICTOMANCER job",
							uuid = "f8e96878-e9da-eb63-a300-6f0f007894ef",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 34686,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Crystallize Time Rewind CD",
							uuid = "e9f1050c-165e-76c1-9cee-fa25bade8456",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 798.9,
				name = "[LPDU] Tempera Grassa Crystallize Time Rewind",
				timeRange = true,
				timelineIndex = 179,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "695e3700-b46d-0fbc-846c-8cb8737afb7d",
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
							actionID = 25857,
							conditions = 
							{
								
								{
									"b2a23737-21a2-b69f-9872-6c7f546c6bba",
									true,
								},
								
								{
									"ec1cc0fb-503e-2136-b070-0c7be0767cc1",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Magick Barrier Crystallize Time",
							uuid = "17142b79-9ca1-d39a-8753-d382e8902f7a",
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
							jobValue = "REDMAGE",
							name = "REDMAGE job",
							uuid = "b2a23737-21a2-b69f-9872-6c7f546c6bba",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25857,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Crystallize Time CD",
							uuid = "ec1cc0fb-503e-2136-b070-0c7be0767cc1",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 798.9,
				name = "[LPDU] Magick Barrier Crystallize Time",
				timeRange = true,
				timelineIndex = 179,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "2c106632-334c-ecf9-9d8e-3e52358e17b7",
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
							actionID = 7408,
							conditions = 
							{
								
								{
									"0404f046-0222-4695-ba2f-322fa76883b7",
									true,
								},
								
								{
									"a420bc41-3263-2245-9654-c0b9082395cf",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Nature's Minne Crystallize Time",
							uuid = "dd5fbbf3-207d-e9fd-ae48-f022ab2b420c",
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
							name = "BARD job",
							uuid = "0404f046-0222-4695-ba2f-322fa76883b7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7408,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Crystallize Time CD",
							uuid = "a420bc41-3263-2245-9654-c0b9082395cf",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 798.9,
				name = "[LPDU] Nature's Minne Crystallize Time",
				timeRange = true,
				timelineIndex = 179,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "dd08f551-8fb0-4530-a792-84b7583b477c",
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
							actionID = 65,
							conditions = 
							{
								
								{
									"c0d26d82-ce83-e9ce-9a23-3605d407ce82",
									true,
								},
								
								{
									"37d878cf-d932-5896-90f1-4a0604ea3f12",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Mantra Crystallize Time",
							uuid = "7c1c0792-4f47-44bf-8591-1f06b24cb3dc",
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
							jobValue = "MONK",
							name = "MONK job",
							uuid = "c0d26d82-ce83-e9ce-9a23-3605d407ce82",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 65,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Crystallize Time CD",
							uuid = "37d878cf-d932-5896-90f1-4a0604ea3f12",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 798.9,
				name = "[LPDU] Mantra Crystallize Time",
				timeRange = true,
				timelineIndex = 179,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "8f5fed29-1f3b-4347-9069-9d7443bf6195",
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
							actionID = 16014,
							conditions = 
							{
								
								{
									"559a6c2a-3bdd-5912-ab09-c999e3e9687d",
									true,
								},
								
								{
									"1d73de2c-47e6-e61e-a450-857e77679744",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Improvisation Crystallize Time",
							uuid = "ed028ba1-49a1-c104-b502-471d04ca47e4",
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
							jobValue = "DANCER",
							name = "DANCER job",
							uuid = "559a6c2a-3bdd-5912-ab09-c999e3e9687d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16014,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Crystallize Time CD",
							uuid = "1d73de2c-47e6-e61e-a450-857e77679744",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 798.9,
				name = "[LPDU] Improvisation Crystallize Time",
				timeRange = true,
				timelineIndex = 179,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "7611f1f0-b061-1592-abb6-af45f33a2967",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU",
				uuid = "b60f7855-8fdd-b109-b29e-c5e7a3022a00",
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
							actionLua = "data.lpdu_ct={shapes={},puddles={},hours={},hourCount=0,heads={},lines={}}\nself.used=true",
							conditions = 
							{
								
								{
									"15377762-3da9-a1f9-8be6-460e535629de",
									true,
								},
							},
							name = "Reset",
							uuid = "c8501709-0250-8373-9683-996ddd1b6691",
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
							conditionLua = "return eventArgs ~= nil and eventArgs.spellID == 40240",
							name = "Reset gate",
							uuid = "15377762-3da9-a1f9-8be6-460e535629de",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 3,
				mechanicTime = 798.9,
				name = "[LPDU] P4 Crystallize Time - Reset",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 179,
				timerStartOffset = -12,
				uuid = "f92f06a4-1881-1b1d-ba25-60cb53c44af2",
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
							actionLua = "local r=AnyoneCore.Roster;local p=TensorCore.mGetPlayer()\nif r.current()==nil or not r.isReady() or p==nil then return end\nlocal slot=r.mySlot();local s=data.lpdu_ct\nif s==nil then return end\nif s.clear==nil then\n function s.clear()\n  for _,id in ipairs(s.shapes) do Argus.deleteTimedShape(id) end\n  s.shapes={}\n end\n function s.draw(x,z,seconds,text)\n  s.clear();local t={x=x,y=0,z=z}\n  local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n  local id=d:addTimedCircle(seconds*1000,x,.05,z,1,0,true,true)\n  if id then table.insert(s.shapes,id) end\n  local player=TensorCore.mGetPlayer();local length=TensorCore.getDistance2d(player.pos,t)\n  if length>1 then\n   id=d:addTimedArrow(seconds*1000,player.pos.x,player.pos.y+.05,player.pos.z,TensorCore.getHeadingToTarget(player.pos,t),math.max(.15,length-1),1,1,1,0,true)\n   if id then table.insert(s.shapes,id) end\n  end\n  if text then AnyoneCore.Shotcall(text,true,seconds,false) end\n end\n function s.polar(side,degrees,radius,seconds,text)\n  local angle=side*degrees*math.pi/180\n  s.draw(100+math.sin(angle)*radius,100+math.cos(angle)*radius,seconds,text)\n end\nend\nlocal e=TensorCore.mGetEntity(eventArgs.sourceEntityID)\nif e==nil or e.pos.z>=100 then self.used=true;return end\ns.north=e.pos.x<100 and -1 or 1\nself.used=true",
							conditions = 
							{
								
								{
									"c2a239b8-f347-35d1-99cf-f4e1bd9a21ce",
									true,
								},
							},
							name = "Slow Hourglass Side",
							uuid = "185917a2-30c9-74ca-978b-f4e2caff0fa6",
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
							conditionLua = "return eventArgs ~= nil and eventArgs.sourceEntityContentID == 9823 and eventArgs.newTetherID == 133",
							name = "Slow Hourglass Side gate",
							uuid = "c2a239b8-f347-35d1-99cf-f4e1bd9a21ce",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 15,
				loop = true,
				mechanicTime = 798.9,
				name = "[LPDU] P4 Crystallize Time - Slow Hourglass Side",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 179,
				timerEndOffset = 9,
				timerStartOffset = -1,
				uuid = "73fa7750-2597-ac74-b43a-2885f390fc10",
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
							actionLua = "local r=AnyoneCore.Roster;local p=TensorCore.mGetPlayer()\nif r.current()==nil or not r.isReady() or p==nil then return end\nlocal slot=r.mySlot();local s=data.lpdu_ct\nif s==nil then return end\nif s.clear==nil then\n function s.clear()\n  for _,id in ipairs(s.shapes) do Argus.deleteTimedShape(id) end\n  s.shapes={}\n end\n function s.draw(x,z,seconds,text)\n  s.clear();local t={x=x,y=0,z=z}\n  local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n  local id=d:addTimedCircle(seconds*1000,x,.05,z,1,0,true,true)\n  if id then table.insert(s.shapes,id) end\n  local player=TensorCore.mGetPlayer();local length=TensorCore.getDistance2d(player.pos,t)\n  if length>1 then\n   id=d:addTimedArrow(seconds*1000,player.pos.x,player.pos.y+.05,player.pos.z,TensorCore.getHeadingToTarget(player.pos,t),math.max(.15,length-1),1,1,1,0,true)\n   if id then table.insert(s.shapes,id) end\n  end\n  if text then AnyoneCore.Shotcall(text,true,seconds,false) end\n end\n function s.polar(side,degrees,radius,seconds,text)\n  local angle=side*degrees*math.pi/180\n  s.draw(100+math.sin(angle)*radius,100+math.cos(angle)*radius,seconds,text)\n end\nend\nif s.north==nil then return end\nlocal order={\"H2\",\"H1\",\"T2\",\"T1\",\"M1\",\"M2\",\"R1\",\"R2\"}\nlocal ice={};local air={};local blue={};local assignments={}\nfor _,role in ipairs(order) do\n local e=r.entOf(role);if e==nil then return end\n if TensorCore.hasBuff(e,3263) then\n  if TensorCore.hasBuff(e,2462) then table.insert(ice,role)\n  elseif TensorCore.hasBuff(e,2463) then table.insert(air,role)\n  else return end\n elseif TensorCore.hasBuff(e,3264) then\n  local kind\n  if TensorCore.hasBuff(e,2460) then kind=\"eruption\"\n  elseif TensorCore.hasBuff(e,2454) then kind=\"stack\"\n  elseif TensorCore.hasBuff(e,2461) then kind=\"water\"\n  elseif TensorCore.hasBuff(e,2462) then kind=\"ice\" end\n  if kind==nil then return end\n  table.insert(blue,role);assignments[role]={kind=kind,blue=true}\n else return end\nend\nif #ice~=2 or #air~=2 or #blue~=4 then return end\nfor i,role in ipairs(ice) do assignments[role]={kind=\"short\",side=i==1 and -1 or 1} end\nfor i,role in ipairs(air) do assignments[role]={kind=\"long\",side=i==1 and -1 or 1} end\ns.assignments=assignments;s.mine=assignments[slot]\nlocal a=s.mine\nif a.kind==\"short\" then s.polar(a.side,90,13,8,\"Intercept first head - \"..(a.side<0 and \"west\" or \"east\"))\nelseif a.kind==\"long\" then s.polar(a.side,40,19,8,\"Aero south - \"..(a.side<0 and \"west\" or \"east\"))\nelseif a.kind==\"eruption\" then s.polar(s.north,140,19,8,\"Bait north - stay clear of fragment\")\nelse s.polar(-s.north,40,19,8,\"Stack south for Water\") end\nself.used=true",
							conditions = 
							{
								
								{
									"b8bac760-bb47-25ce-a3c5-6d5fa565ddde",
									true,
								},
							},
							name = "Personal Debuff Positions",
							uuid = "d0374792-8b58-8239-b2bc-35a416e6b0f2",
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
							conditionLua = "return data.lpdu_ct ~= nil and data.lpdu_ct.north ~= nil",
							name = "Personal Debuff Positions gate",
							uuid = "b8bac760-bb47-25ce-a3c5-6d5fa565ddde",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				mechanicTime = 798.9,
				name = "[LPDU] P4 Crystallize Time - Personal Debuff Positions",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 179,
				timerEndOffset = 8,
				timerStartOffset = 3.8,
				uuid = "1f1e8543-55c1-bd73-87c9-f9610906352d",
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
							actionLua = "local r=AnyoneCore.Roster;local p=TensorCore.mGetPlayer()\nif r.current()==nil or not r.isReady() or p==nil then return end\nlocal slot=r.mySlot();local s=data.lpdu_ct\nif s==nil then return end\nif s.clear==nil then\n function s.clear()\n  for _,id in ipairs(s.shapes) do Argus.deleteTimedShape(id) end\n  s.shapes={}\n end\n function s.draw(x,z,seconds,text)\n  s.clear();local t={x=x,y=0,z=z}\n  local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n  local id=d:addTimedCircle(seconds*1000,x,.05,z,1,0,true,true)\n  if id then table.insert(s.shapes,id) end\n  local player=TensorCore.mGetPlayer();local length=TensorCore.getDistance2d(player.pos,t)\n  if length>1 then\n   id=d:addTimedArrow(seconds*1000,player.pos.x,player.pos.y+.05,player.pos.z,TensorCore.getHeadingToTarget(player.pos,t),math.max(.15,length-1),1,1,1,0,true)\n   if id then table.insert(s.shapes,id) end\n  end\n  if text then AnyoneCore.Shotcall(text,true,seconds,false) end\n end\n function s.polar(side,degrees,radius,seconds,text)\n  local angle=side*degrees*math.pi/180\n  s.draw(100+math.sin(angle)*radius,100+math.cos(angle)*radius,seconds,text)\n end\nend\nif s.hours[eventArgs.entityID] then self.used=true;return end\ns.hours[eventArgs.entityID]=true;s.hourCount=s.hourCount+1\nlocal a=s.mine;if a==nil then self.used=true;return end\nif s.hourCount==2 then\n if a.kind==\"long\" then s.polar(a.side,30,19,3,\"Aero bait - between the floor lines\")\n elseif a.blue and a.kind~=\"eruption\" then s.polar(-s.north,30,17,3,\"Stack close to Aero - knockback across\") end\nelseif s.hourCount==4 then\n if a.kind==\"long\" and not s.heads[a.side] then s.polar(a.side,33,13,3.5,\"Intercept second head now\")\n elseif a.kind==\"short\" and a.side~=s.north then s.polar(s.north,140,19,1.5,\"Join north stack\") end\nelseif s.hourCount==6 then\n s.clear();AnyoneCore.Shotcall(a.blue and \"Dodge exalines - cleanse before rewind\" or \"Dodge exalines\",true,4,false)\nend\nself.used=true",
							conditions = 
							{
								
								{
									"013c699b-de60-e4bc-93cc-5682f6771e00",
									true,
								},
							},
							name = "Hourglass Stage Guidance",
							uuid = "0979d3f3-467c-046b-b407-aeea62200210",
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
							conditionLua = "return eventArgs ~= nil and eventArgs.spellID == 40299",
							name = "Hourglass Stage Guidance gate",
							uuid = "013c699b-de60-e4bc-93cc-5682f6771e00",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 2,
				loop = true,
				mechanicTime = 798.9,
				name = "[LPDU] P4 Crystallize Time - Hourglass Stage Guidance",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 179,
				timerEndOffset = 24,
				timerStartOffset = 10,
				uuid = "b524f669-568c-192d-bf7b-7fd33d8cadcc",
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
							actionLua = "local r=AnyoneCore.Roster;local p=TensorCore.mGetPlayer()\nif r.current()==nil or not r.isReady() or p==nil then return end\nlocal slot=r.mySlot();local s=data.lpdu_ct\nif s==nil then return end\nif s.clear==nil then\n function s.clear()\n  for _,id in ipairs(s.shapes) do Argus.deleteTimedShape(id) end\n  s.shapes={}\n end\n function s.draw(x,z,seconds,text)\n  s.clear();local t={x=x,y=0,z=z}\n  local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n  local id=d:addTimedCircle(seconds*1000,x,.05,z,1,0,true,true)\n  if id then table.insert(s.shapes,id) end\n  local player=TensorCore.mGetPlayer();local length=TensorCore.getDistance2d(player.pos,t)\n  if length>1 then\n   id=d:addTimedArrow(seconds*1000,player.pos.x,player.pos.y+.05,player.pos.z,TensorCore.getHeadingToTarget(player.pos,t),math.max(.15,length-1),1,1,1,0,true)\n   if id then table.insert(s.shapes,id) end\n  end\n  if text then AnyoneCore.Shotcall(text,true,seconds,false) end\n end\n function s.polar(side,degrees,radius,seconds,text)\n  local angle=side*degrees*math.pi/180\n  s.draw(100+math.sin(angle)*radius,100+math.cos(angle)*radius,seconds,text)\n end\nend\nif s.knock then self.used=true;return end\ns.knock=true;local a=s.mine;if a==nil then self.used=true;return end\nif a.kind==\"long\" then\n if a.side==s.north and s.hourCount<4 then s.polar(a.side,20,19,2.5,\"Dodge hourglass - then intercept second head\")\n else s.polar(a.side,33,13,4.5,\"Intercept second head\") end\nelseif a.blue then s.polar(s.north,140,19,3,\"Stack north - stay clear of fragment\")\nelseif a.kind==\"short\" and a.side==s.north then s.polar(s.north,140,19,3,\"Join north stack\")\nelse s.polar(a.side,80,19,2.5,\"Dodge second hourglass - then join stack\") end\nself.used=true",
							conditions = 
							{
								
								{
									"5e52c8d9-9ba3-0b5d-9d42-792158b46aaa",
									true,
								},
							},
							name = "Aero Knockback and Regroup",
							uuid = "6c77b7f5-59e6-bf4f-8763-5b033154c2b5",
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
							conditionLua = "return eventArgs ~= nil and eventArgs.spellID == 40280",
							name = "Aero Knockback and Regroup gate",
							uuid = "5e52c8d9-9ba3-0b5d-9d42-792158b46aaa",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 2,
				loop = true,
				mechanicTime = 798.9,
				name = "[LPDU] P4 Crystallize Time - Aero Knockback and Regroup",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 179,
				timerEndOffset = 17,
				timerStartOffset = 13,
				uuid = "3db8912e-6b05-2e7f-bfe7-851f5675f9e7",
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
							actionLua = "local r=AnyoneCore.Roster;local p=TensorCore.mGetPlayer()\nif r.current()==nil or not r.isReady() or p==nil then return end\nlocal slot=r.mySlot();local s=data.lpdu_ct\nif s==nil then return end\nif s.clear==nil then\n function s.clear()\n  for _,id in ipairs(s.shapes) do Argus.deleteTimedShape(id) end\n  s.shapes={}\n end\n function s.draw(x,z,seconds,text)\n  s.clear();local t={x=x,y=0,z=z}\n  local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n  local id=d:addTimedCircle(seconds*1000,x,.05,z,1,0,true,true)\n  if id then table.insert(s.shapes,id) end\n  local player=TensorCore.mGetPlayer();local length=TensorCore.getDistance2d(player.pos,t)\n  if length>1 then\n   id=d:addTimedArrow(seconds*1000,player.pos.x,player.pos.y+.05,player.pos.z,TensorCore.getHeadingToTarget(player.pos,t),math.max(.15,length-1),1,1,1,0,true)\n   if id then table.insert(s.shapes,id) end\n  end\n  if text then AnyoneCore.Shotcall(text,true,seconds,false) end\n end\n function s.polar(side,degrees,radius,seconds,text)\n  local angle=side*degrees*math.pi/180\n  s.draw(100+math.sin(angle)*radius,100+math.cos(angle)*radius,seconds,text)\n end\nend\nlocal a=s.mine;if a==nil then self.used=true;return end\nlocal hit=false;for _,id in ipairs(eventArgs.hitTargets) do if id==p.id then hit=true end end\nif not hit then self.used=true;return end\nif a.kind==\"long\" then\n s.heads[a.side]=true;s.draw(100,118,3,\"Dodge last hourglass - hold south triangle\")\nelseif a.kind==\"short\" then\n if a.side==s.north then s.polar(s.north,140,19,3,\"Join north stack after Ice\")\n elseif s.hourCount>=4 then s.polar(s.north,140,19,2,\"Join north stack\")\n else s.polar(a.side,80,19,2.5,\"Hold outside - dodge second hourglass\") end\nend\nself.used=true",
							conditions = 
							{
								
								{
									"6b18cb75-3330-7d1f-a40f-816cd9ab7fcd",
									true,
								},
							},
							name = "Head Intercept Followup",
							uuid = "6a916a6c-c800-9eae-b1e5-3929699373f4",
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
							conditionLua = "return eventArgs ~= nil and eventArgs.spellID == 40241",
							name = "Head Intercept Followup gate",
							uuid = "6b18cb75-3330-7d1f-a40f-816cd9ab7fcd",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 2,
				loop = true,
				mechanicTime = 798.9,
				name = "[LPDU] P4 Crystallize Time - Head Intercept Followup",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 179,
				timerEndOffset = 21,
				timerStartOffset = 12,
				uuid = "ec441f96-8b36-d884-8d92-80ade377c8b2",
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
							actionLua = "local r=AnyoneCore.Roster;local p=TensorCore.mGetPlayer()\nif r.current()==nil or not r.isReady() or p==nil then return end\nlocal slot=r.mySlot();local s=data.lpdu_ct\nif s==nil then return end\nif s.clear==nil then\n function s.clear()\n  for _,id in ipairs(s.shapes) do Argus.deleteTimedShape(id) end\n  s.shapes={}\n end\n function s.draw(x,z,seconds,text)\n  s.clear();local t={x=x,y=0,z=z}\n  local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n  local id=d:addTimedCircle(seconds*1000,x,.05,z,1,0,true,true)\n  if id then table.insert(s.shapes,id) end\n  local player=TensorCore.mGetPlayer();local length=TensorCore.getDistance2d(player.pos,t)\n  if length>1 then\n   id=d:addTimedArrow(seconds*1000,player.pos.x,player.pos.y+.05,player.pos.z,TensorCore.getHeadingToTarget(player.pos,t),math.max(.15,length-1),1,1,1,0,true)\n   if id then table.insert(s.shapes,id) end\n  end\n  if text then AnyoneCore.Shotcall(text,true,seconds,false) end\n end\n function s.polar(side,degrees,radius,seconds,text)\n  local angle=side*degrees*math.pi/180\n  s.draw(100+math.sin(angle)*radius,100+math.cos(angle)*radius,seconds,text)\n end\nend\nlocal a=s.mine;if a==nil then self.used=true;return end\nif a.kind~=\"long\" then s.draw(100,82,4.3,\"Hold north triangle - dodge exalines\") end\nself.used=true",
							conditions = 
							{
								
								{
									"1605358a-d8dc-6580-911e-bc26fb1bb8ef",
									true,
								},
							},
							name = "After North Stack",
							uuid = "ddf1af0e-fd1f-f3d0-853f-284ca4a6bafe",
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
							conditionLua = "return eventArgs ~= nil and eventArgs.spellID == 40277",
							name = "After North Stack gate",
							uuid = "1605358a-d8dc-6580-911e-bc26fb1bb8ef",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 2,
				mechanicTime = 798.9,
				name = "[LPDU] P4 Crystallize Time - After North Stack",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 179,
				timerEndOffset = 19,
				timerStartOffset = 16,
				uuid = "49ce1a9a-f77e-9ab5-a434-fe46d94b5e1c",
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
							actionLua = "local r=AnyoneCore.Roster;local p=TensorCore.mGetPlayer()\nif r.current()==nil or not r.isReady() or p==nil then return end\nlocal slot=r.mySlot();local s=data.lpdu_ct\nif s==nil then return end\nif s.clear==nil then\n function s.clear()\n  for _,id in ipairs(s.shapes) do Argus.deleteTimedShape(id) end\n  s.shapes={}\n end\n function s.draw(x,z,seconds,text)\n  s.clear();local t={x=x,y=0,z=z}\n  local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n  local id=d:addTimedCircle(seconds*1000,x,.05,z,1,0,true,true)\n  if id then table.insert(s.shapes,id) end\n  local player=TensorCore.mGetPlayer();local length=TensorCore.getDistance2d(player.pos,t)\n  if length>1 then\n   id=d:addTimedArrow(seconds*1000,player.pos.x,player.pos.y+.05,player.pos.z,TensorCore.getHeadingToTarget(player.pos,t),math.max(.15,length-1),1,1,1,0,true)\n   if id then table.insert(s.shapes,id) end\n  end\n  if text then AnyoneCore.Shotcall(text,true,seconds,false) end\n end\n function s.polar(side,degrees,radius,seconds,text)\n  local angle=side*degrees*math.pi/180\n  s.draw(100+math.sin(angle)*radius,100+math.cos(angle)*radius,seconds,text)\n end\nend\nlocal key=eventArgs.z>105 and (eventArgs.x<100 and \"ice\" or \"water\") or (eventArgs.x<100 and \"eruption\" or \"stack\")\ns.puddles[key]={x=eventArgs.x,y=eventArgs.y,z=eventArgs.z,id=eventArgs.entityID}\nlocal a=s.mine\nif a and a.blue and a.kind==key then\n local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n local id=d:addTimedCircle(18000,eventArgs.x,eventArgs.y+.05,eventArgs.z,1,0,true,true)\n s.cleanseShape=id\nend\nself.used=true",
							conditions = 
							{
								
								{
									"6328dd19-4112-57c1-87ff-f52665567805",
									true,
								},
							},
							name = "Assigned Cleanse Circle",
							uuid = "a3b7e644-3470-d77c-bf67-2c264fa089a7",
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
							conditionLua = "return eventArgs ~= nil and eventArgs.entityContentID == 2014529",
							name = "Assigned Cleanse Circle gate",
							uuid = "6328dd19-4112-57c1-87ff-f52665567805",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 29,
				loop = true,
				mechanicTime = 798.9,
				name = "[LPDU] P4 Crystallize Time - Assigned Cleanse Circle",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 179,
				timerEndOffset = 23,
				timerStartOffset = 13,
				uuid = "c6834c51-ae2f-672c-a2ed-0049ade5b119",
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
							actionLua = "local r=AnyoneCore.Roster;local p=TensorCore.mGetPlayer()\nif r.current()==nil or not r.isReady() or p==nil then return end\nlocal slot=r.mySlot();local s=data.lpdu_ct\nif s==nil then return end\nif s.clear==nil then\n function s.clear()\n  for _,id in ipairs(s.shapes) do Argus.deleteTimedShape(id) end\n  s.shapes={}\n end\n function s.draw(x,z,seconds,text)\n  s.clear();local t={x=x,y=0,z=z}\n  local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n  local id=d:addTimedCircle(seconds*1000,x,.05,z,1,0,true,true)\n  if id then table.insert(s.shapes,id) end\n  local player=TensorCore.mGetPlayer();local length=TensorCore.getDistance2d(player.pos,t)\n  if length>1 then\n   id=d:addTimedArrow(seconds*1000,player.pos.x,player.pos.y+.05,player.pos.z,TensorCore.getHeadingToTarget(player.pos,t),math.max(.15,length-1),1,1,1,0,true)\n   if id then table.insert(s.shapes,id) end\n  end\n  if text then AnyoneCore.Shotcall(text,true,seconds,false) end\n end\n function s.polar(side,degrees,radius,seconds,text)\n  local angle=side*degrees*math.pi/180\n  s.draw(100+math.sin(angle)*radius,100+math.cos(angle)*radius,seconds,text)\n end\nend\nlocal a=s.mine;if a==nil or not a.blue then self.used=true;return end\nif TensorCore.hasBuff(p,3264) then return end\nif s.cleanseShape then Argus.deleteTimedShape(s.cleanseShape);s.cleanseShape=nil end\ns.clear();s.cleansed=true\nAnyoneCore.Shotcall(\"Cleanse done - place rewind with your light party\",true,3,false)\nself.used=true",
							conditions = 
							{
								
								{
									"fe65b785-d2e9-beaa-8363-a4e87491fcff",
									true,
								},
							},
							name = "Cleanse Circle Cleanup",
							uuid = "1f9f6e4c-1580-a17d-bb6c-73a0bb7ad110",
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
							conditionLua = "return data.lpdu_ct ~= nil and data.lpdu_ct.mine ~= nil",
							name = "Cleanse Circle Cleanup gate",
							uuid = "fe65b785-d2e9-beaa-8363-a4e87491fcff",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				mechanicTime = 798.9,
				name = "[LPDU] P4 Crystallize Time - Cleanse Circle Cleanup",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 179,
				timerEndOffset = 34,
				timerStartOffset = 19,
				uuid = "a14e2f01-81ad-dbff-93bb-4b8975dc76f4",
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
							actionLua = "local r=AnyoneCore.Roster;local p=TensorCore.mGetPlayer()\nif r.current()==nil or not r.isReady() or p==nil then return end\nlocal slot=r.mySlot();local s=data.lpdu_ct\nif s==nil then return end\nif s.clear==nil then\n function s.clear()\n  for _,id in ipairs(s.shapes) do Argus.deleteTimedShape(id) end\n  s.shapes={}\n end\n function s.draw(x,z,seconds,text)\n  s.clear();local t={x=x,y=0,z=z}\n  local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n  local id=d:addTimedCircle(seconds*1000,x,.05,z,1,0,true,true)\n  if id then table.insert(s.shapes,id) end\n  local player=TensorCore.mGetPlayer();local length=TensorCore.getDistance2d(player.pos,t)\n  if length>1 then\n   id=d:addTimedArrow(seconds*1000,player.pos.x,player.pos.y+.05,player.pos.z,TensorCore.getHeadingToTarget(player.pos,t),math.max(.15,length-1),1,1,1,0,true)\n   if id then table.insert(s.shapes,id) end\n  end\n  if text then AnyoneCore.Shotcall(text,true,seconds,false) end\n end\n function s.polar(side,degrees,radius,seconds,text)\n  local angle=side*degrees*math.pi/180\n  s.draw(100+math.sin(angle)*radius,100+math.cos(angle)*radius,seconds,text)\n end\nend\nlocal a=s.mine;if a==nil then self.used=true;return end\ns.clear()\nif a.blue and TensorCore.hasBuff(p,3264) then\n local text={eruption=\"Cleanse west\",stack=\"Cleanse east\",ice=\"Cleanse southwest\",water=\"Cleanse southeast\"}\n AnyoneCore.Shotcall(text[a.kind]..\" - dodge exalines\",true,4.5,false)\nelse AnyoneCore.Shotcall(\"Place rewind - light party behind tank\",true,4.5,false) end\nself.used=true",
							conditions = 
							{
								
								{
									"8bb59900-76a9-40d6-aa18-ac60f3570170",
									true,
								},
							},
							name = "Cleanse Before Rewind",
							uuid = "d50b78bc-712d-d4a4-ad71-8d6cf3a99080",
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
							conditionLua = "return data.lpdu_ct ~= nil and data.lpdu_ct.mine ~= nil",
							name = "Cleanse Before Rewind gate",
							uuid = "8bb59900-76a9-40d6-aa18-ac60f3570170",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				mechanicTime = 798.9,
				name = "[LPDU] P4 Crystallize Time - Cleanse Before Rewind",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 179,
				timerEndOffset = 26.5,
				timerStartOffset = 25.8,
				uuid = "8b24774e-c511-1237-aeb4-b6c710a1f05f",
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
							actionLua = "local r=AnyoneCore.Roster;local p=TensorCore.mGetPlayer()\nif r.current()==nil or not r.isReady() or p==nil then return end\nlocal slot=r.mySlot();local s=data.lpdu_ct\nif s==nil then return end\nif s.clear==nil then\n function s.clear()\n  for _,id in ipairs(s.shapes) do Argus.deleteTimedShape(id) end\n  s.shapes={}\n end\n function s.draw(x,z,seconds,text)\n  s.clear();local t={x=x,y=0,z=z}\n  local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n  local id=d:addTimedCircle(seconds*1000,x,.05,z,1,0,true,true)\n  if id then table.insert(s.shapes,id) end\n  local player=TensorCore.mGetPlayer();local length=TensorCore.getDistance2d(player.pos,t)\n  if length>1 then\n   id=d:addTimedArrow(seconds*1000,player.pos.x,player.pos.y+.05,player.pos.z,TensorCore.getHeadingToTarget(player.pos,t),math.max(.15,length-1),1,1,1,0,true)\n   if id then table.insert(s.shapes,id) end\n  end\n  if text then AnyoneCore.Shotcall(text,true,seconds,false) end\n end\n function s.polar(side,degrees,radius,seconds,text)\n  local angle=side*degrees*math.pi/180\n  s.draw(100+math.sin(angle)*radius,100+math.cos(angle)*radius,seconds,text)\n end\nend\ns.clear();AnyoneCore.Shotcall(\"Spread - let healers stand still\",true,3,false);self.used=true",
							conditions = 
							{
								
								{
									"9a10a5a6-b713-496f-a4ae-d3eb377c8890",
									true,
								},
							},
							name = "Rewind Spread Reminder",
							uuid = "bd4043b6-b5b4-58f7-9390-c3044c3de64d",
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
							conditionLua = "return eventArgs ~= nil and eventArgs.spellID == 40288",
							name = "Rewind Spread Reminder gate",
							uuid = "9a10a5a6-b713-496f-a4ae-d3eb377c8890",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 3,
				mechanicTime = 798.9,
				name = "[LPDU] P4 Crystallize Time - Rewind Spread Reminder",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 179,
				timerEndOffset = 37,
				timerStartOffset = 32,
				uuid = "2ca00578-cd2d-f279-bb93-c88db9131471",
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
							actionLua = "local r=AnyoneCore.Roster;local p=TensorCore.mGetPlayer()\nif r.current()==nil or not r.isReady() or p==nil then return end\nlocal slot=r.mySlot();local s=data.lpdu_ct\nif s==nil then return end\nif s.clear==nil then\n function s.clear()\n  for _,id in ipairs(s.shapes) do Argus.deleteTimedShape(id) end\n  s.shapes={}\n end\n function s.draw(x,z,seconds,text)\n  s.clear();local t={x=x,y=0,z=z}\n  local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n  local id=d:addTimedCircle(seconds*1000,x,.05,z,1,0,true,true)\n  if id then table.insert(s.shapes,id) end\n  local player=TensorCore.mGetPlayer();local length=TensorCore.getDistance2d(player.pos,t)\n  if length>1 then\n   id=d:addTimedArrow(seconds*1000,player.pos.x,player.pos.y+.05,player.pos.z,TensorCore.getHeadingToTarget(player.pos,t),math.max(.15,length-1),1,1,1,0,true)\n   if id then table.insert(s.shapes,id) end\n  end\n  if text then AnyoneCore.Shotcall(text,true,seconds,false) end\n end\n function s.polar(side,degrees,radius,seconds,text)\n  local angle=side*degrees*math.pi/180\n  s.draw(100+math.sin(angle)*radius,100+math.cos(angle)*radius,seconds,text)\n end\nend\ns.clear();AnyoneCore.Shotcall((slot==\"T1\" or slot==\"T2\") and \"Rewind knockback - tank in front\" or \"Rewind knockback - stay behind your tank\",true,7,false);self.used=true",
							conditions = 
							{
								
								{
									"f54e8bd6-33d6-7e73-809e-19b1bd4d32dc",
									true,
								},
							},
							name = "Rewind Tank Formation",
							uuid = "e8064643-d112-96d8-99fe-0fdc1f0f3bc7",
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
							conditionLua = "return eventArgs ~= nil and eventArgs.spellID == 40229",
							name = "Rewind Tank Formation gate",
							uuid = "f54e8bd6-33d6-7e73-809e-19b1bd4d32dc",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 3,
				mechanicTime = 798.9,
				name = "[LPDU] P4 Crystallize Time - Rewind Tank Formation",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 179,
				timerEndOffset = 38,
				timerStartOffset = 34,
				uuid = "74baed58-9d20-eda9-89c9-570446adcc3f",
				version = 2,
			},
		},
	},
	[180] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "746dfb39-e1c2-a6f5-e486-56bf09264a09",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Strat] CT Helper Starting Dir",
				uuid = "e1f79616-469e-4878-8f2e-d6ca0f6f2b28",
				version = 2,
			},
			inheritedObjectUUID = "16093471-cb29-a975-bf66-439430e72a60",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU_megaminx_indicator",
				uuid = "6cb85338-869f-71ec-3637-f74e02e6d288",
			},
			inheritanceRoot = "FRU_megaminx_indicator",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "crystallize indicator",
				uuid = "cf6553dd-749c-42c2-a2bd-9751431ed47a",
				version = 2,
			},
			inheritedObjectUUID = "87a8fe68-1a30-e46b-b56b-024b46396616",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "check buffs",
				uuid = "d78c90df-dc4c-0248-b989-c63604378ff2",
				version = 2,
			},
			inheritedObjectUUID = "c4913759-c0cb-afc0-8037-c6d0d4488b25",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "get tethers",
				uuid = "ee8df960-ed6b-475c-949d-43b95abca299",
				version = 2,
			},
			inheritedObjectUUID = "74aa1861-c963-9ad6-b7c5-0f10e99f61f0",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "get buff",
				uuid = "3a02bafa-7a15-8120-aded-acbe27b15824",
				version = 2,
			},
			inheritedObjectUUID = "d0bc99aa-e4a3-233a-a410-7fd6492caf60",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "blue indicators",
				uuid = "74268ce3-c8de-6823-9291-c7b63bb0fd7c",
				version = 2,
			},
			inheritedObjectUUID = "d625dc17-8edc-2c89-812b-1322acfad5dd",
			inheritedOverwrites = 
			{
				enabled = false,
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
							actionLua = "if data.megaminx_p4_crystallize_safezone == nil then data.megaminx_p4_crystallize_safezone = {} end\ntable.insert(data.megaminx_p4_crystallize_safezone,TensorCore.mGetEntity(eventArgs.entityID).pos)\nif table.size(data.megaminx_p4_crystallize_safezone) == 2 then\n\tlocal point1 = data.megaminx_p4_crystallize_safezone[1]\n\tlocal point2 = data.megaminx_p4_crystallize_safezone[2]\n\td(point1)\n\td(point2)\n\tlocal center = {x = 100, y = 0, z = 100}\n\tlocal green = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0/255, 255/255, 0/255, 1),2)\n\tlocal green2 = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0/255, 255/255, 0/255, .25),2)\n\tlocal function find_closest_point(point1, point2, points_table)\n\t\tlocal closest_point = nil\n\t\tlocal smallest_distance = math.huge\n\n\t\tfor _, point in ipairs(points_table) do\n\t\t\tlocal avg_distance = (TensorCore.getDistance2d(point, point1) + TensorCore.getDistance2d(point, point2)) / 2\n\n\t\t\tif avg_distance < smallest_distance then\n\t\t\t\tsmallest_distance = avg_distance\n\t\t\t\tclosest_point = point\n\t\t\tend\n\t\tend\n\n\t\treturn closest_point\n\tend\n\tlocal function drawCurve(point, distance, heading1, heading2, increments)\n\t\tlocal angleDifference = heading2 - heading1\n\t\tif angleDifference < 0 then\n\t\t\tangleDifference = angleDifference + (2 * math.pi) \n\t\tend\n\n\n\t\tif angleDifference > math.pi then\n\n\t\t\tlocal temp = heading1\n\t\t\theading1 = heading2\n\t\t\theading2 = temp\n\t\t\tangleDifference = (2 * math.pi) - angleDifference\n\t\tend\n\t\t\n\n\t\tlocal angleIncrement = angleDifference / increments\n\t\t\n\n\t\tlocal previousPoint = TensorCore.getPosInDirection(point, heading1, distance)\n\t\tfor i = 1, increments do\n\n\t\t\tlocal newHeading = heading1 + (angleIncrement * i)\n\t\t\t\n\t\t\tif newHeading > 2 * math.pi then\n\t\t\t\tnewHeading = newHeading - 2 * math.pi\n\t\t\tend\n\t\t\t\n\t\t\tlocal newPoint = TensorCore.getPosInDirection(point, newHeading, distance)\n\t\t\t\n\t\t\tgreen:addTimedLine(20000,previousPoint.x, previousPoint.y, previousPoint.z, newPoint.x, newPoint.y, newPoint.z,4,0)\n\t\t\t\n\t\t\tpreviousPoint = newPoint\n\t\tend\n\tend\n\n\tlocal function getNewHeading(a, b, angle)\n\n\t\tlocal difference = b - a\n\t\td(difference)\n\t\tif difference > math.pi then\n\t\t\tdifference = difference - (2 * math.pi)\n\t\telseif difference < -math.pi then\n\t\t\tdifference = difference + (2 * math.pi)\n\t\tend\n\n\t\tif difference > 0 then\n\t\t\treturn (a + angle) % (2 * math.pi)\n\t\telse\n\t\t\treturn (a - angle) % (2 * math.pi)\n\t\tend\n\tend\n\n\n\tlocal points_table = {\n\t\t{x = 120, y = 0, z = 120},\n\t\t{x = 80, y = 0, z = 120},\n\t\t{x = 80, y = 0, z = 80},\n\t\t{x = 120, y = 0, z = 80},\n\t}\n\n\tlocal closest_point = find_closest_point(point1, point2, points_table)\n\tlocal closest2One = TensorCore.getHeadingToTarget(closest_point,point1)\n\tlocal closest2Mid = getNewHeading(closest2One,TensorCore.getHeadingToTarget(closest_point,center),math.pi/3)\n\tlocal One2Closest = closest2One + math.pi\n\tlocal One2Mid = getNewHeading(One2Closest,TensorCore.getHeadingToTarget(point1,center),math.pi/3)\n\tgreen2:addTimedArrow(20000, 100, 0, 100, TensorCore.getHeadingToTarget(center,closest_point), 10, 1, 1, 1,0,true)\n\tdrawCurve(closest_point, 20, closest2One,closest2Mid , 100)\n\tdrawCurve(point1, 20, One2Closest,One2Mid , 100)\nend\nself.used = true\n",
							conditions = 
							{
								
								{
									"05c50c6d-8d4e-6c10-82a0-a25dee995624",
									true,
								},
							},
							uuid = "fcaced56-5d7e-7abb-af5e-ec2fa6cb683d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							eventArgType = 2,
							eventSpellID = 40251,
							uuid = "05c50c6d-8d4e-6c10-82a0-a25dee995624",
							version = 3,
						},
					},
				},
				displayPath = "FRU_megaminx_indicator",
				eventType = 3,
				loop = true,
				mechanicTime = 802.8,
				name = "crystallize indicator [AnyoneCore]",
				timeRange = true,
				timelineIndex = 180,
				timerEndOffset = 100,
				timerStartOffset = -100,
				uuid = "b07047fb-7396-37fd-a882-f6d265925b8d",
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
							actionLua = "--local index = 1\n--local p = TensorCore.mGetEntity(partyIDs[index])\nlocal p = TensorCore.mGetPlayer()\n\n--local p = TensorCore.mGetPlayer()\nlocal center = {x = 100, y = 0, z = 100}\nlocal green = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0/255, 255/255, 0/255, .25), 2)\nlocal index\nlocal roster = AnyoneCore and AnyoneCore.Roster\r\nif roster == nil or roster.current() == nil then\r\n    self.used = true\r\n    return\r\nend\r\nlocal mySlot = roster.mySlot()\r\nlocal myRole = (mySlot == \"T1\" and \"MT\") or (mySlot == \"T2\" and \"OT\") or mySlot\r\nif not roster.isReady() then\r\n    self.used = true\r\n    return\r\nend\r\nif p == nil then self.used = true; return end\r\nif myRole == \"MT\" then index = 1\r\nelseif myRole == \"OT\" then index = 2\r\nelseif myRole == \"H1\" then index = 3\r\nelseif myRole == \"H2\" then index = 4\r\nelseif myRole == \"M1\" then index = 5\r\nelseif myRole == \"M2\" then index = 6\r\nelseif myRole == \"R1\" then index = 7\r\nelseif myRole == \"R2\" then index = 8\r\nelse self.used = true; return end\r\nlocal partyIDs = {\r\n    roster.idOf(\"T1\"),\r\n    roster.idOf(\"T2\"),\r\n    roster.idOf(\"H1\"),\r\n    roster.idOf(\"H2\"),\r\n    roster.idOf(\"M1\"),\r\n    roster.idOf(\"M2\"),\r\n    roster.idOf(\"R1\"),\r\n    roster.idOf(\"R2\")\r\n}local heading2North = TensorCore.getHeadingToTarget(center, {x = 100, y = 0, z = 70})\n\nlocal formation = data.megaminx_p4_crystallize_hourglass_formation --1 = nw se, 2 = ne sw\nlocal red = 3263\nlocal blue = 3264\nlocal yellow = 2454\nlocal aero = 2463\nlocal ice = 2462\nlocal purple = 2460\nlocal water = 2461\n\nlocal function checkDebuff(index, startRange, endRange,buffid)\n    local playerEnt = TensorCore.mGetEntity(partyIDs[index])\n    local playerBuff = TensorCore.getBuff(playerEnt, buffid)\n    d(playerBuff)\n    if TensorCore.hasBuff(playerEnt, blue) then\n        return false\n    end\n    for i = startRange, endRange do\n        if i == index then\n            continue\n        end\n        \n        local ent = TensorCore.mGetEntity(partyIDs[i])\n        local buff = TensorCore.getBuff(ent, buffid)\n        local hasBlue = TensorCore.getBuff(ent, blue)\n        if hasBlue then\n            continue\n        end\n        d(ent.name)\n        d(buff)\n\n        if playerBuff and buff then\n            if math.abs(buff.duration - playerBuff.duration) < 1 then\n                if index < i then\n                    return true\n                else\n                    return false\n                end\n            end\n        end\n    end\n\n    return false\nend\nif TensorCore.hasBuff(p,red) then\n    if index < 5 then\n        local result = checkDebuff(index, 1, 4, aero)\n        local result2 = checkDebuff(index, 1, 4,ice)  \n        if (result == true) or (result2 == true) then\n            AnyoneCore.Shotcall(\"right\", true, 40, false)\n        else\n            AnyoneCore.Shotcall(\"left\", true, 40, false)\n        end\n    else\n        local result = checkDebuff(index, 5, 8, aero)\n        local result2 = checkDebuff(index, 5, 8,ice) \n        if (result == true) or (result2 == true) then\n            AnyoneCore.Shotcall(\"left\", true, 40, false)\n        else\n            AnyoneCore.Shotcall(\"right\", true, 40, false)\n        end\n    end\nend\n\nif TensorCore.hasBuff(p,red) then\n    if TensorCore.hasBuff(p,aero) then --se sw\n        local prepos1 = TensorCore.getPosInDirection(center, heading2North + math.pi/2 + math.pi/4, 19)\n        local prepos2 = TensorCore.getPosInDirection(center, heading2North - math.pi/2 - math.pi/4, 19)\n        local pos1 = TensorCore.getPosInDirection(center,heading2North + math.pi/2 + math.pi/4 + math.pi/12,18.5)\n        local pos2 = TensorCore.getPosInDirection(center,heading2North - math.pi/2 - math.pi/4 - math.pi/12,18.5)\n        local pos12 = TensorCore.getPosInDirection(center,heading2North + math.pi/2 + math.pi/4 + math.pi/12 + math.pi/18,18.5)\n        local pos22 = TensorCore.getPosInDirection(center,heading2North - math.pi/2 - math.pi/4 - math.pi/12 - math.pi/18,18.5)\n        local pos123 = TensorCore.getPosInDirection(pos12,heading2North,7)\n        local pos223 = TensorCore.getPosInDirection(pos22,heading2North,7)\n        green:addTimedArrow(8000, 100, 0, 100, heading2North + math.pi/2 + math.pi/4, 18, 1, 1, 1,0,true)\n        green:addTimedArrow(8000, 100, 0, 100, heading2North - math.pi/2 - math.pi/4, 18, 1, 1, 1,0,true)\n        green:addTimedArrow(3000, prepos1.x, 0, prepos1.z, TensorCore.getHeadingToTarget(prepos1,pos1), TensorCore.getDistance2d(prepos1,pos1) - 1, 1, 1, 1,8000,true)\n        green:addTimedArrow(3000, prepos2.x, 0, prepos2.z, TensorCore.getHeadingToTarget(prepos2,pos2), TensorCore.getDistance2d(prepos2,pos2) - 1, 1, 1, 1,8000,true)\n        green:addTimedArrow(2000, pos1.x, 0, pos1.z, TensorCore.getHeadingToTarget(pos1,pos12), TensorCore.getDistance2d(pos1,pos12) - 1, 1, 1, 1,8000 + 3000,true)\n        green:addTimedArrow(2000, pos2.x, 0, pos2.z, TensorCore.getHeadingToTarget(pos2,pos22), TensorCore.getDistance2d(pos2,pos22) - 1, 1, 1, 1,8000 + 3000,true)\n        green:addTimedArrow(3000, pos12.x, 0, pos12.z, TensorCore.getHeadingToTarget(pos12,pos123), TensorCore.getDistance2d(pos12,pos123) - 1, 1, 1, 1,8000 + 3000 + 2000,true)\n        green:addTimedArrow(3000, pos22.x, 0, pos22.z, TensorCore.getHeadingToTarget(pos22,pos223), TensorCore.getDistance2d(pos22,pos223) - 1, 1, 1, 1,8000 + 3000 + 2000,true)\n    end\n    if TensorCore.hasBuff(p,ice) then --e w\n        green:addTimedArrow(10000, 100, 0, 100, heading2North + math.pi/2, 12, 1, 1, 1,0,true)\n        green:addTimedArrow(10000, 100, 0, 100, heading2North - math.pi/2, 12, 1, 1, 1,0,true)\n        if formation == 1 then\n            green:addTimedArrow(3000, 87, 0, 100, heading2North,12, 1, 1, 1,10000,true)\n            green:addTimedArrow(3000, 113, 0, 100, TensorCore.getHeadingToTarget(center,{x=113,y=0,z=100}),6, 1, 1, 1,10000,true)\n            green:addTimedArrow(3000, 119, 0, 100, heading2North,18, 1, 1, 1,13000,true)\n        end\n        if formation == 2 then\n            green:addTimedArrow(3000, 113, 0, 100, heading2North,12, 1, 1, 1,10000,true)\n            green:addTimedArrow(3000, 87, 0, 100, TensorCore.getHeadingToTarget(center,{x=87,y=0,z=100}),6, 1, 1, 1,10000,true)\n            green:addTimedArrow(3000, 81, 0, 100, heading2North,18, 1, 1, 1,13000,true)\n        end\n    end\nend\nif TensorCore.hasBuff(p,blue) then\n    if TensorCore.hasBuff(p,purple) then \n        if formation == 1 then\n            green:addTimedArrow(8000, 100, 0, 100, heading2North + math.pi/4, 18, 1, 1, 1,0,true) --nw\n        end\n        if formation == 2 then\n            green:addTimedArrow(8000, 100, 0, 100, heading2North - math.pi/4, 18, 1, 1, 1,0,true) --ne\n        end\n    else \n        if formation == 1 then --se\n            local prepos = TensorCore.getPosInDirection(center,heading2North - math.pi/2 - math.pi/4,19)\n            local pos = TensorCore.getPosInDirection(center,heading2North - math.pi/2 - math.pi/4 - math.pi/12,18)\n            green:addTimedArrow(8000, 100, 0, 100, heading2North - math.pi/2 - math.pi/4, 18, 1, 1, 1,0,true)\n            green:addTimedArrow(3000, prepos.x, 0, prepos.z, TensorCore.getHeadingToTarget(prepos,pos), TensorCore.getDistance2d(prepos,pos) - 1, 1, 1, 1,8000,true)\n            green:addTimedArrow(3000, pos.x, 0, pos.z, TensorCore.getHeadingToTarget(pos,center), 34, 1, 1, 1,8000,true)\n        end\n        if formation == 2 then --sw\n            local prepos = TensorCore.getPosInDirection(center,heading2North + math.pi/2 + math.pi/4,19)\n            local pos = TensorCore.getPosInDirection(center,heading2North + math.pi/2 + math.pi/4 + math.pi/12,18)\n            green:addTimedArrow(8000, 100, 0, 100, heading2North + math.pi/2 + math.pi/4, 18, 1, 1, 1,0,true)\n            green:addTimedArrow(3000, prepos.x, 0, prepos.z, TensorCore.getHeadingToTarget(prepos,pos), TensorCore.getDistance2d(prepos,pos) - 1, 1, 1, 1,8000,true)\n            green:addTimedArrow(3000, pos.x, 0, pos.z, TensorCore.getHeadingToTarget(pos,center), 34, 1, 1, 1,8000,true)\n        end\n    end\nend\nself.used = true",
							conditions = 
							{
								
								{
									"2de20a46-3197-71ab-8304-13d22009aab9",
									true,
								},
								
								{
									"72c2045a-9682-17c9-a2b7-7f2fe04fbca2",
									true,
								},
								
								{
									"8734ad07-0c82-a26c-aae9-bc8ec517f882",
									true,
								},
								
								{
									"17d36d71-ac64-4b1c-b61d-713257266542",
									true,
								},
								
								{
									"2fbd6f78-5ce5-642a-ac66-d44474a3e5ba",
									true,
								},
								
								{
									"3589a96f-7c1a-0e20-b853-d833b4b4ec0c",
									true,
								},
								
								{
									"0ed7aa35-e7c7-b6a2-8948-7c92c43d3278",
									true,
								},
								
								{
									"387dfabb-9291-7808-94b5-8da32c26c8f7",
									true,
								},
							},
							uuid = "b15051bd-e6f0-ff25-9c4a-ccf5163f67d3",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							buffCheckType = 5,
							buffIDList = 
							{
								3264,
							},
							category = "Party",
							dequeueIfLuaFalse = true,
							name = "4 blue",
							partyTargetNumber = 4,
							partyTargetSubType = "Number",
							uuid = "2de20a46-3197-71ab-8304-13d22009aab9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 5,
							buffIDList = 
							{
								3263,
							},
							category = "Party",
							dequeueIfLuaFalse = true,
							name = "4 red",
							partyTargetNumber = 4,
							partyTargetSubType = "Number",
							uuid = "72c2045a-9682-17c9-a2b7-7f2fe04fbca2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 5,
							buffIDList = 
							{
								2463,
							},
							category = "Party",
							dequeueIfLuaFalse = true,
							name = "2 aero",
							partyTargetNumber = 2,
							partyTargetSubType = "Number",
							uuid = "8734ad07-0c82-a26c-aae9-bc8ec517f882",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.megaminx_p4_crystallize_hourglass_formation ~= nil",
							dequeueIfLuaFalse = true,
							uuid = "387dfabb-9291-7808-94b5-8da32c26c8f7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 5,
							buffIDList = 
							{
								2462,
							},
							category = "Party",
							dequeueIfLuaFalse = true,
							name = "3 ice",
							partyTargetNumber = 3,
							partyTargetSubType = "Number",
							uuid = "17d36d71-ac64-4b1c-b61d-713257266542",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 5,
							buffIDList = 
							{
								2461,
							},
							category = "Party",
							dequeueIfLuaFalse = true,
							name = "1 water",
							partyTargetSubType = "Number",
							uuid = "2fbd6f78-5ce5-642a-ac66-d44474a3e5ba",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 5,
							buffIDList = 
							{
								2454,
							},
							category = "Party",
							dequeueIfLuaFalse = true,
							name = "1 yellow",
							partyTargetSubType = "Number",
							uuid = "3589a96f-7c1a-0e20-b853-d833b4b4ec0c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 5,
							buffIDList = 
							{
								2460,
							},
							category = "Party",
							dequeueIfLuaFalse = true,
							name = "1 purple",
							partyTargetSubType = "Number",
							uuid = "0ed7aa35-e7c7-b6a2-8948-7c92c43d3278",
							version = 3,
						},
					},
				},
				displayPath = "FRU_megaminx_indicator",
				enabled = false,
				mechanicTime = 802.8,
				name = "check buffs [AnyoneCore]",
				timeRange = true,
				timelineIndex = 180,
				timerEndOffset = 100,
				timerStartOffset = -100,
				uuid = "29e31b81-c15d-3907-a8e4-20bd767da609",
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
							actionLua = "if data.megaminx_p4_crystallize_hourglass == nil then data.megaminx_p4_crystallize_hourglass = {} end\ntable.insert(data.megaminx_p4_crystallize_hourglass,eventArgs.sourceEntityID)\nif table.size(data.megaminx_p4_crystallize_hourglass) == 2 then\n    local ent1 = TensorCore.mGetEntity(data.megaminx_p4_crystallize_hourglass[1])\n    local ent2 = TensorCore.mGetEntity(data.megaminx_p4_crystallize_hourglass[2])\n    if (ent1.pos.z > 103 and ent1.pos.x > 103 and ent2.pos.x < 97 and ent2.pos.z < 97) or (ent2.pos.z > 103 and ent2.pos.x > 103 and ent1.pos.x < 97 and ent1.pos.z < 97) then --NW SE\n        data.megaminx_p4_crystallize_hourglass_formation = 1\n    end\n    if (ent1.pos.z > 103 and ent1.pos.x < 97 and ent2.pos.x > 103 and ent2.pos.z < 97) or (ent2.pos.z > 103 and ent2.pos.x < 97 and ent1.pos.x > 103 and ent1.pos.z < 97) then --NE SW\n        data.megaminx_p4_crystallize_hourglass_formation = 2\n    end\nend\nself.used = true",
							conditions = 
							{
								
								{
									"85040869-817a-d2ee-b139-b4eff527aa83",
									true,
								},
							},
							uuid = "26411c7f-0138-f66b-8fef-57ccda22b4f8",
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
							conditionLua = "return eventArgs.newTetherID == 133",
							uuid = "85040869-817a-d2ee-b139-b4eff527aa83",
							version = 3,
						},
					},
				},
				displayPath = "FRU_megaminx_indicator",
				eventType = 15,
				loop = true,
				mechanicTime = 802.8,
				name = "get tethers [AnyoneCore]",
				timeRange = true,
				timelineIndex = 180,
				timerEndOffset = 100,
				timerStartOffset = -100,
				uuid = "ce2c7b33-3d16-9c7a-9d89-2d3188072a85",
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
							actionLua = "--local index = 3\n\nlocal p = TensorCore.mGetPlayer()\nlocal yellow = 2454\nlocal ice = 2462\nlocal purple = 2460\nlocal water = 2461\nif TensorCore.hasBuff(p,yellow) then\n    data.megaminx_p4_buff = yellow\nend\nif TensorCore.hasBuff(p,purple) then\n    data.megaminx_p4_buff = purple\nend\nif TensorCore.hasBuff(p,water) then\n    data.megaminx_p4_buff = water\nend\nif TensorCore.hasBuff(p,ice) then\n    data.megaminx_p4_buff = ice\nend\nd(data.megaminx_p4_buff)\nself.used = true",
							conditions = 
							{
								
								{
									"f9073684-4848-a3f4-8512-617eec58afac",
									true,
								},
							},
							uuid = "60ed5338-9df4-f5c3-8cb3-cf8d24d44b76",
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
							conditionLua = "return TensorCore.hasBuff(TensorCore.mGetPlayer(), 3264) and TensorCore.hasAnyBuff(TensorCore.mGetPlayer(), 2454,2462,2460,2461)",
							uuid = "f9073684-4848-a3f4-8512-617eec58afac",
							version = 3,
						},
					},
				},
				displayPath = "FRU_megaminx_indicator",
				mechanicTime = 802.8,
				name = "get buff [AnyoneCore]",
				timeRange = true,
				timelineIndex = 180,
				timerEndOffset = 100,
				timerStartOffset = -100,
				uuid = "8cb5997d-e51b-077b-a5aa-f7ab5bede37c",
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
							actionLua = "--local index = 3\n\nlocal p = TensorCore.mGetPlayer()\nlocal blue = 3264\nlocal yellow = 2454\nlocal ice = 2462\nlocal purple = 2460\nlocal water = 2461\nlocal puddles = TensorCore.entityList(\"contentid=2014529\")\nlocal white = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(255/255, 255/255, 255/255, .25),2)\n    -- for k,v in pairs(puddles) do\n    --     local heading = TensorCore.getHeadingToTarget(p.pos,v.pos)\n    --     local distance = TensorCore.getDistance2d(p.pos,v.pos) - 1\n    --     white:addArrow(p.pos.x,p.pos.y,p.pos.z,heading,distance,1,1,1,true)\n    -- end\nif TensorCore.hasBuff(p,blue) and data.megaminx_p4_buff == purple then\n    -- closest to D\n    --TensorCore.addAlertText(30000, \"get D marker\", 1, 1, true)\n    local WayMarkx,WayMarky,WayMarkz,active = Argus.getWaymarkInfo(4)\n    if active then\n        local closestPuddle = nil\n        local closestDistance = math.huge  -- Set to a very large number initially\n        \n        -- Find the closest puddle to Waymark D\n        for _, puddle in pairs(puddles) do\n            local puddlePos = puddle.pos\n            local distance = TensorCore.getDistance2d({x = WayMarkx, y = WayMarky, z = WayMarkz},puddlePos)\n            \n            if distance < closestDistance then\n                closestDistance = distance\n                closestPuddle = puddle\n            end\n        end\n\n        if closestPuddle then\n            -- Draw an arrow from player to the closest puddle\n            local heading = TensorCore.getHeadingToTarget(p.pos,closestPuddle.pos)\n            local arrowDistance = TensorCore.getDistance2d(p.pos,closestPuddle.pos) - 1\n            white:addArrow(p.pos.x, p.pos.y, p.pos.z, heading, arrowDistance, 1, 1, 1, true)\n        end\n        \n        d('Closest puddle to Waymark D: Distance = ' .. closestDistance)\n    else\n        d('Waymark D is not active.')\n    end\nend\nif TensorCore.hasBuff(p,blue) and data.megaminx_p4_buff == ice then\n    -- closest to 4\n    --TensorCore.addAlertText(30000, \"get 4 marker\", 1, 1, true)\n    local WayMarkx,WayMarky,WayMarkz,active = Argus.getWaymarkInfo(8)\n    if active then\n        local closestPuddle = nil\n        local closestDistance = math.huge  -- Set to a very large number initially\n        \n        -- Find the closest puddle to Waymark D\n        for _, puddle in pairs(puddles) do\n            local puddlePos = puddle.pos\n            local distance = TensorCore.getDistance2d({x = WayMarkx, y = WayMarky, z = WayMarkz},puddlePos)\n            \n            if distance < closestDistance then\n                closestDistance = distance\n                closestPuddle = puddle\n            end\n        end\n\n        if closestPuddle then\n            -- Draw an arrow from player to the closest puddle\n            local heading = TensorCore.getHeadingToTarget(p.pos,closestPuddle.pos)\n            local arrowDistance = TensorCore.getDistance2d(p.pos,closestPuddle.pos) - 1\n            white:addArrow(p.pos.x, p.pos.y, p.pos.z, heading, arrowDistance, 1, 1, 1, true)\n        end\n        \n        d('Closest puddle to Waymark 4: Distance = ' .. closestDistance)\n    else\n        d('Waymark 4 is not active.')\n    end\nend\nif TensorCore.hasBuff(p,blue) and data.megaminx_p4_buff == water then\n    -- closest to 3\n    --TensorCore.addAlertText(30000, \"get 3 marker\", 1, 1, true)\n    local WayMarkx,WayMarky,WayMarkz,active = Argus.getWaymarkInfo(7)\n    if active then\n        local closestPuddle = nil\n        local closestDistance = math.huge  -- Set to a very large number initially\n        \n        -- Find the closest puddle to Waymark D\n        for _, puddle in pairs(puddles) do\n            local puddlePos = puddle.pos\n            local distance = TensorCore.getDistance2d({x = WayMarkx, y = WayMarky, z = WayMarkz},puddlePos)\n            \n            if distance < closestDistance then\n                closestDistance = distance\n                closestPuddle = puddle\n            end\n        end\n\n        if closestPuddle then\n            -- Draw an arrow from player to the closest puddle\n            local heading = TensorCore.getHeadingToTarget(p.pos,closestPuddle.pos)\n            local arrowDistance = TensorCore.getDistance2d(p.pos,closestPuddle.pos) - 1\n            white:addArrow(p.pos.x, p.pos.y, p.pos.z, heading, arrowDistance, 1, 1, 1, true)\n        end\n        \n        d('Closest puddle to Waymark 3: Distance = ' .. closestDistance)\n    else\n        d('Waymark 3 is not active.')\n    end\nend\nif TensorCore.hasBuff(p,blue) and data.megaminx_p4_buff == yellow then\n    -- closest to B\n    --TensorCore.addAlertText(30000, \"get B marker\", 1, 1, true)\n    local WayMarkx,WayMarky,WayMarkz,active = Argus.getWaymarkInfo(2)\n    if active then\n        local closestPuddle = nil\n        local closestDistance = math.huge  -- Set to a very large number initially\n        \n        -- Find the closest puddle to Waymark D\n        for _, puddle in pairs(puddles) do\n            local puddlePos = puddle.pos\n            local distance = TensorCore.getDistance2d({x = WayMarkx, y = WayMarky, z = WayMarkz},puddlePos)\n            \n            if distance < closestDistance then\n                closestDistance = distance\n                closestPuddle = puddle\n            end\n        end\n\n        if closestPuddle then\n            -- Draw an arrow from player to the closest puddle\n            local heading = TensorCore.getHeadingToTarget(p.pos,closestPuddle.pos)\n            local arrowDistance = TensorCore.getDistance2d(p.pos,closestPuddle.pos) - 1\n            white:addArrow(p.pos.x, p.pos.y, p.pos.z, heading, arrowDistance, 1, 1, 1, true)\n        end\n        \n        d('Closest puddle to Waymark B: Distance = ' .. closestDistance)\n    else\n        d('Waymark B is not active.')\n    end\nend\nself.used = true",
							conditions = 
							{
								
								{
									"5ec5ce10-0529-f634-8fef-6c7c90854514",
									true,
								},
							},
							uuid = "62f338cd-df95-43d2-9a3d-e843792fed11",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							buffCheckType = 3,
							buffDuration = 20,
							buffID = 3264,
							category = "Party",
							comparator = 2,
							partyTargetSubType = "Number",
							uuid = "5ec5ce10-0529-f634-8fef-6c7c90854514",
							version = 3,
						},
					},
				},
				displayPath = "FRU_megaminx_indicator",
				enabled = false,
				eventType = 12,
				mechanicTime = 802.8,
				name = "blue indicators [AnyoneCore]",
				timeRange = true,
				timelineIndex = 180,
				timerEndOffset = 100,
				timerStartOffset = -100,
				uuid = "5c6fa137-6bee-9bb3-baf7-c03d61ff1e94",
				version = 2,
			},
		},
	},
	[181] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "17650cfc-7567-3408-9e56-78229992a4cc",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Draw] Queue CT Debuffs",
				uuid = "7bcd8f7c-b7f3-5a89-b4b8-2e0b4921d094",
				version = 2,
			},
			inheritedObjectUUID = "40f4679b-e888-e580-acac-d72a0123de05",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[Draw] Dragon Heading",
				uuid = "bc7c4c71-3fb3-c576-aadc-57284e7ac507",
				version = 2,
			},
			inheritedObjectUUID = "a7551d03-0daf-2240-ac1d-8603c67e73db",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[182] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "2b59a753-621f-814f-ac5a-f6a5fed720e3",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[184] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "f35fd38d-697d-bd81-32b5-76ebe3aa4b5d",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[188] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "90f1eac1-8e74-344d-9bdf-42f7929be2d1",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[192] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "1306f84c-138e-c098-eb0a-67562d6e6b1c",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[194] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "c1208b1a-7462-08de-8cdd-b05062f399aa",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU_megaminx_indicator",
				uuid = "356dafc7-17d1-eb83-ba08-06c50a85a4d7",
			},
			inheritanceRoot = "FRU_megaminx_indicator",
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
							actionLua = "local function findClosestEntitiesByCoordinate(targetValue, entities, coordinate)\n    local entityDifferences = {}\n    \n    for i, ent in ipairs(entities) do\n        local difference = math.abs(ent.pos[coordinate] - targetValue)\n        table.insert(entityDifferences, {entity = ent, difference = difference})\n    end\n    \n    table.sort(entityDifferences, function(a, b)\n        return a.difference < b.difference\n    end)\n    \n    local closestEntities = {}\n    for i = 1, math.min(3, #entityDifferences) do\n        table.insert(closestEntities, entityDifferences[i].entity)\n    end\n    \n    return closestEntities\nend\n\nlocal function tablesHaveCommonElements(table1, table2)\n    local set = {}\n    for _, value in ipairs(table1) do\n        set[value] = true\n    end\n\n    for _, value in ipairs(table2) do\n        if set[value] then\n            return true\n        end\n    end\n\n    return false \nend\n\n-- Example usage\nlocal targetPos = {x = 120, y = 0, z = 120}\nlocal party = {}\nlocal p = TensorCore.mGetPlayer()\nlocal green = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0/255, 255/255, 0/255, .25),2)\nlocal red = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(255/255, 0/255, 0/255, .25),2)\nlocal yellow = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(255/255, 255/255, 0/255, .25),2)\nlocal blue = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0/255, 0/255, 255/255, .25),2)\nfor k,v in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid = 0})) do\n    if TensorCore.isTank(v) then\n        continue\n    end\n    table.insert(party,{id = v.id,name = v.name, pos = v.pos})\nend\nif not TensorCore.isTank(p) then\n    table.insert(party,{id = p.id,name = p.name,pos = p.pos})\nend\nlocal center = {x = 100, y = 0, z = 100}\nlocal heading2North = TensorCore.getHeadingToTarget(center, {x = 100, y = 0, z = 70})\n\nlocal closestXEntities = findClosestEntitiesByCoordinate(targetPos.x, party, \"x\")\n\nlocal closestZEntities = findClosestEntitiesByCoordinate(targetPos.z, party, \"z\")\n\nfor i, entity in ipairs(closestZEntities) do\n    d(entity)\nend\n\nif tablesHaveCommonElements(closestXEntities,closestZEntities) then\n    red:addCenteredRect((closestXEntities[1].pos.x + closestXEntities[3].pos.x)/2, 0,closestXEntities[1].pos.z,50,math.abs(closestXEntities[1].pos.x - closestXEntities[3].pos.x),heading2North,true)\n    red:addCenteredRect(closestZEntities[1].pos.x, 0,(closestZEntities[1].pos.z + closestZEntities[3].pos.z)/2 ,50,math.abs(closestZEntities[1].pos.z - closestZEntities[3].pos.z),heading2North + math.pi/2,true)\nelse\n    green:addCenteredRect((closestXEntities[1].pos.x + closestXEntities[3].pos.x)/2, 0,closestXEntities[1].pos.z,50,math.abs(closestXEntities[1].pos.x - closestXEntities[3].pos.x),heading2North,true)\n    green:addCenteredRect(closestZEntities[1].pos.x, 0,(closestZEntities[1].pos.z + closestZEntities[3].pos.z)/2 ,50,math.abs(closestZEntities[1].pos.z - closestZEntities[3].pos.z),heading2North + math.pi/2,true)\nend\n--yellow:addCircle((closestXEntities[1].pos.x + closestXEntities[3].pos.x)/2,0,(closestXEntities[1].pos.z + closestXEntities[3].pos.z)/2,TensorCore.getDistance2d(closestXEntities[1].pos,closestXEntities[3].pos)/2,true)\n--yellow:addCircle((closestZEntities[1].pos.x + closestZEntities[3].pos.x)/2,0,(closestZEntities[1].pos.z + closestZEntities[3].pos.z)/2,TensorCore.getDistance2d(closestZEntities[1].pos,closestZEntities[3].pos)/2,true)\nlocal intersection = {x = (closestXEntities[1].pos.x + closestXEntities[3].pos.x)/2, y = 0, z = (closestZEntities[1].pos.z + closestZEntities[3].pos.z)/2}\nlocal heading = TensorCore.getHeadingToTarget(center,intersection)\nlocal pos1 = TensorCore.getPosInDirection(intersection,heading + math.pi/2,2)\nlocal pos2 = TensorCore.getPosInDirection(intersection,heading - math.pi/2,2)\nblue:addCircle(pos1.x,0,pos1.z,1,true)\nblue:addCircle(pos2.x,0,pos2.z,1,true)\nself.used = true\n",
							conditions = 
							{
								
								{
									"b238a1fe-a0a4-4811-a683-b71a3f79d83d",
									true,
								},
							},
							uuid = "33aa71b4-3eed-9fb3-80f4-4a76e9375fb5",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							buffCheckType = 3,
							buffDuration = 4,
							buffID = 4208,
							category = "Self",
							comparator = 2,
							dequeueIfLuaFalse = true,
							uuid = "b238a1fe-a0a4-4811-a683-b71a3f79d83d",
							version = 3,
						},
					},
				},
				displayPath = "FRU_megaminx_indicator",
				enabled = false,
				eventType = 12,
				mechanicTime = 835.3,
				name = "asd [AnyoneCore]",
				timeRange = true,
				timelineIndex = 194,
				timerEndOffset = 100,
				timerStartOffset = -150,
				uuid = "96a2ec6a-b06b-1d69-8c72-1afefa7909f9",
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
				name = "store\\anyone\\fru\\fru",
				uuid = "c58a3f1e-93b5-c4da-ac8f-02f44abcc3ae",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[201] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "240f25a3-3818-3a1f-8f83-19e5bc85ac33",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[202] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "c6b09d8c-fc06-51d8-7f75-6062ad5d255c",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[MNK] Mantra",
				uuid = "27372136-91db-3f88-ad16-737fbeefd688",
				version = 2,
			},
			inheritedObjectUUID = "4f8cebcf-bd8d-f509-bbd2-c039e1450a42",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Mitigation",
				uuid = "62651d03-d387-9c5c-86f3-9749743b777d",
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
							actionID = 7549,
							conditions = 
							{
								
								{
									"78fbf1b5-eb01-3e89-a64f-b881312486a8",
									true,
								},
								
								{
									"8558fd20-b151-064b-af36-ccd18744b810",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] M2 Feint Post-CT Akh Morn + Morn Afah",
							targetType = "Enemy",
							uuid = "7a549dfc-1ccf-71f6-b290-a7e72de68087",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"M2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "M2 roster",
							uuid = "78fbf1b5-eb01-3e89-a64f-b881312486a8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Post-CT Akh Morn + Morn Afah CD",
							uuid = "8558fd20-b151-064b-af36-ccd18744b810",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 854.9,
				name = "[LPDU] M2 Feint Post-CT Akh Morn + Morn Afah",
				timeRange = true,
				timelineIndex = 202,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "4d2bcd1b-f939-1445-84de-1832c810a108",
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
							actionID = 7405,
							conditions = 
							{
								
								{
									"c909f913-f980-a009-ba4c-9cf18a2762d7",
									true,
								},
								
								{
									"6fa248b7-365c-8d86-86cf-6aacbc84d5f5",
									true,
								},
								
								{
									"bce5bf16-2d95-5802-b12c-74284b7d5d87",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Troubadour - P4 Akh Morn 2 + Morn Afah",
							uuid = "a4602666-4779-2e52-a643-f3de2f68a319",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							conditions = 
							{
								
								{
									"c909f913-f980-a009-ba4c-9cf18a2762d7",
									true,
								},
								
								{
									"ec8f790c-5e6f-bb32-b7fb-cbaf3ddf47fe",
									true,
								},
								
								{
									"f512297c-19d2-e704-9a34-e26ee37a2cc2",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Tactician - P4 Akh Morn 2 + Morn Afah",
							uuid = "d58fdc27-52c6-39b0-991a-9dd1a720be7b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							conditions = 
							{
								
								{
									"c909f913-f980-a009-ba4c-9cf18a2762d7",
									true,
								},
								
								{
									"ec961459-7d6f-3047-a755-0c9a22486af6",
									true,
								},
								
								{
									"d8913db0-f100-ede1-811b-fdc63b7d8d50",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Shield Samba - P4 Akh Morn 2 + Morn Afah",
							uuid = "3a9c5028-22d6-1205-8ca4-22a0625d4e93",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R2 roster",
							uuid = "c909f913-f980-a009-ba4c-9cf18a2762d7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Troubadour job",
							uuid = "6fa248b7-365c-8d86-86cf-6aacbc84d5f5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7405,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "bce5bf16-2d95-5802-b12c-74284b7d5d87",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Tactician job",
							uuid = "ec8f790c-5e6f-bb32-b7fb-cbaf3ddf47fe",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "f512297c-19d2-e704-9a34-e26ee37a2cc2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Shield Samba job",
							uuid = "ec961459-7d6f-3047-a755-0c9a22486af6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "d8913db0-f100-ede1-811b-fdc63b7d8d50",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 854.9,
				name = "[LPDU] R2 Phys Ranged - P4 Akh Morn 2 + Morn Afah",
				timeRange = true,
				timelineIndex = 202,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "ab369723-8f48-f34d-bd19-c65ff012c61c",
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
							actionID = 2887,
							conditions = 
							{
								
								{
									"7e40a235-4e58-f4dd-888d-03a91b824220",
									true,
								},
								
								{
									"d6800420-74bf-011b-b7f2-dc02d5ed4f3b",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Dismantle Akh Morn on Ryne",
							uuid = "2ce628bb-b87e-b852-9d3d-32002164f8b3",
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
							jobValue = "MACHINIST",
							name = "MACHINIST job",
							uuid = "7e40a235-4e58-f4dd-888d-03a91b824220",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 2887,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Akh Morn on Ryne CD",
							uuid = "d6800420-74bf-011b-b7f2-dc02d5ed4f3b",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 854.9,
				name = "[LPDU] Dismantle Akh Morn on Ryne",
				timeRange = true,
				timelineIndex = 202,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "4f5c6785-652c-903b-a077-282e5dba8390",
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
				name = "store\\anyone\\fru\\fru",
				uuid = "555b855a-7a0c-ef1e-ade7-ec94da602eea",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Melee] Feint Usurper (Primary)",
				uuid = "1df2b213-6e7f-d051-a78a-8e32231d42ba",
				version = 2,
			},
			inheritedObjectUUID = "791cd2db-9b33-7772-bfff-205fb3b6aa48",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[Ranged] rDPS Mit",
				uuid = "627aec6a-916a-9bc7-a82d-6ea9ba16617b",
				version = 2,
			},
			inheritedObjectUUID = "1c893f59-158d-ec3e-b7f5-2eb3ecab401e",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[Caster] Addle (Secondary)",
				uuid = "9858dbfa-a9fa-d879-ac40-0f8da5e3f0fd",
				version = 2,
			},
			inheritedObjectUUID = "927827dc-cdd7-8faf-944e-bd9e214ebb70",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[MCH] Dismantle",
				uuid = "b90b02a9-98b2-1ee7-abf4-bb749e08c441",
				version = 2,
			},
			inheritedObjectUUID = "40e8b95e-bd4d-0f62-9066-4e29d3fb9882",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[RDM] Barrier",
				uuid = "dd1278ae-faf2-fd5a-ba2c-498eac05866d",
				version = 2,
			},
			inheritedObjectUUID = "07af889b-819e-7f84-973c-40cd018e55f1",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[205] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "5b2c0497-3c8f-994b-036d-14b10e19e4e7",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[207] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "9ab1fa1d-c092-e651-9f71-5b2bf9e94bed",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Potion",
				uuid = "e6e73ad1-af38-177a-89d4-95572b3aeb74",
			},
			objectType = "folder",
		},
	},
	[209] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "bbc59d8b-f566-0357-2dfc-b6bd4cac3edb",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU_megaminx_indicator",
				uuid = "d00577b2-9c16-1536-6a43-a9e437fc78c2",
			},
			inheritanceRoot = "FRU_megaminx_indicator",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Draw Exasquares",
				uuid = "d1cdae98-2ba9-7994-b136-ad33dc02631c",
				version = 2,
			},
			inheritedObjectUUID = "d1c706ed-cefa-6de5-a747-ed277324c599",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Draw Exasquares3",
				uuid = "cb2ba2ef-ebb8-b4d6-a140-2e95427d1142",
				version = 2,
			},
			inheritedObjectUUID = "ef816030-96fd-8188-9fa9-cee103c8524e",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU",
				uuid = "f374dd05-d80b-ab5a-8b1c-6e2ded1a03dc",
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
							actionLua = "local drawer = TensorCore.getCachedDrawer(1275068160, 1006895359, 1174667519)\nlocal ent = TensorCore.mGetEntity(eventArgs.entityID)\n--drawer:addTimedRect(8000, ent.pos.x, ent.pos.y, ent.pos.z, 40, 10, ent.pos.h, 0, true)\n\nlocal dumbshit = TensorCore.getPosInDirection(ent.pos,ent.pos.h,2.5)\ndrawer:addTimedCenteredRect(7000,dumbshit.x,0,dumbshit.z,5,40,ent.pos.h,0,true)\n\nfor i=1,8 do\n    local pos = TensorCore.getPosInDirection(dumbshit,ent.pos.h,5*(i))\n    drawer:addTimedCenteredRect(2000,pos.x,0,pos.z,5,40,ent.pos.h,7000+(2000*(i-1)),true)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"70c6e6b7-29cb-6eac-b8f7-a34e2b68daae",
									true,
								},
							},
							uuid = "9f41933c-8e4c-8612-8808-3bf76fd91dcd",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 3,
							eventArgType = 2,
							spellIDList = 
							{
								40118,
								40307,
							},
							uuid = "70c6e6b7-29cb-6eac-b8f7-a34e2b68daae",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 3,
				loop = true,
				mechanicTime = 984.8,
				name = "Draw Exasquares [LPDU]",
				timeRange = true,
				timelineIndex = 209,
				timerEndOffset = 30,
				timerStartOffset = -30,
				uuid = "5f9c77f0-7294-8ae4-86c4-20a05ef977b3",
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
							actionLua = "if data.p5_exa == nil then data.p5_exa = {} end\nlocal ent = TensorCore.mGetEntity(eventArgs.entityID)\ntable.insert(data.p5_exa,{pos = ent.pos})\nif table.size(data.p5_exa) == 8 then\n    local cross = (data.p5_exa[1].pos.x - 100) * (data.p5_exa[5].pos.z-100) - (data.p5_exa[1].pos.z-100) * (data.p5_exa[5].pos.x-100)\n    if cross < 0 then\n        TensorCore.addAlertText(20000,\"right\",1,1,true)\n    else\n        TensorCore.addAlertText(20000,\"left\",1,1,true)\n    end\nend\nself.used = true",
							conditions = 
							{
								
								{
									"61efd7d8-6b94-ae3d-96ee-c5e0eeda5d16",
									true,
								},
							},
							uuid = "feafca53-8758-847e-baa6-31e71e081e82",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 3,
							eventArgType = 2,
							spellIDList = 
							{
								40118,
								40307,
							},
							uuid = "61efd7d8-6b94-ae3d-96ee-c5e0eeda5d16",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 3,
				loop = true,
				mechanicTime = 984.8,
				name = "Draw Exasquares2 [AnyoneCore test needed]",
				timeRange = true,
				timelineIndex = 209,
				timerEndOffset = 30,
				timerStartOffset = -200,
				uuid = "90296038-c452-055f-948c-55b40c5ba004",
				version = 2,
			},
			inheritedIndex = 14,
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
							actionLua = "if data.p5_exa == nil then data.p5_exa = {} end\nif data.p5_exa_filtered_ent == nil then data.p5_exa_filtered_ent = {} end\nlocal ent = TensorCore.mGetEntity(eventArgs.entityID)\ntable.insert(data.p5_exa,{pos = ent.pos})\nif table.size(data.p5_exa) == 8 then\n    local cross = (data.p5_exa[1].pos.x - 100) * (data.p5_exa[5].pos.z-100) - (data.p5_exa[1].pos.z-100) * (data.p5_exa[5].pos.x-100)\n    if cross < 0 then\n        TensorCore.addAlertText(20000,\"right\",1,1,true)\n    else\n        TensorCore.addAlertText(20000,\"left\",1,1,true)\n    end\nend\nlocal function normalizeTo2Pi(r)\n    local TWO_PI = 2 * math.pi\n    r = r % TWO_PI\n    if r < 0 then\n        r = r + TWO_PI\n    end\n    return r\nend\nlocal function lineIntersectionXZ(pos1, pos2)\n    -- Extract coordinates and headings\n    local x1, z1, h1 = pos1.x, pos1.z, pos1.h + math.pi/2\n    local x2, z2, h2 = pos2.x, pos2.z, pos2.h + math.pi/2\n    \n    -- Precompute deltas\n    local dx = x2 - x1\n    local dz = z2 - z1\n    \n    -- Compute the determinant (sin(h1 - h2))\n    local denom = math.sin(h1 - h2)\n    \n    d(h1-h2)\n    -- If denom is 0 (or very close to 0), lines are parallel or coincident\n    if math.abs(denom) < 1e-12 then\n        return nil  -- No unique intersection\n    end\n    \n    -- Solve for parameter t on line 1\n    local t = ((dx) * math.cos(h2) - dz * math.sin(h2)) / denom\n    \n    -- Intersection point using line 1's parametric form\n    local Xi = x1 + t * math.sin(h1)\n    local Zi = z1 + t * math.cos(h1)\n\n    local north = (pos1.h + pos2.h) / 2\n    if (math.abs(north - pos1.h)) < (math.pi /2) then\n        north = north + math.pi\n    end\n    north = north + math.pi\n    \n    return { x = Xi, y = 0, z = Zi , h = north}\nend\n\nlocal heading2center = normalizeTo2Pi(TensorCore.getHeadingToTarget(ent.pos,{x=100,y=0,z=100}))\nif math.abs(heading2center - normalizeTo2Pi(ent.pos.h)) < 1 or  math.abs(heading2center - normalizeTo2Pi(ent.pos.h)) > 6 then\n    table.insert(data.p5_exa_filtered_ent,ent.pos)\nend\nlocal green = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0/255, 255/255, 0/255, .25),2)\n\nif table.size(data.p5_exa_filtered_ent) == 4 then\n    local cross = (data.p5_exa[1].pos.x - 100) * (data.p5_exa[5].pos.z-100) - (data.p5_exa[1].pos.z-100) * (data.p5_exa[5].pos.x-100)\n    local findapos = lineIntersectionXZ(data.p5_exa_filtered_ent[1],data.p5_exa_filtered_ent[2])\n    local newpos = TensorCore.getPosInDirection(findapos,findapos.h,5.412)\n    newpos.h = findapos.h\n    if cross > 0 then --left\n        local furthest = TensorCore.getPosInDirection(newpos,newpos.h - math.pi/2.667 , 7.07)\n        local midpoint = TensorCore.getPosInDirection(newpos,newpos.h - math.pi/2.667 , 7.07 - 5)\n        local nextpoint = TensorCore.getPosInDirection(newpos,newpos.h , 5.412)\n        green:addTimedRect(6000,furthest.x,0,furthest.z,TensorCore.getDistance2d(furthest,midpoint),.1,TensorCore.getHeadingToTarget(furthest,midpoint),0,true)\n        green:addTimedRect(6000,midpoint.x,0,midpoint.z,TensorCore.getDistance2d(midpoint,nextpoint),.1,TensorCore.getHeadingToTarget(midpoint,nextpoint),0,true)\n        green:addTimedRect(6000,nextpoint.x,0,nextpoint.z,TensorCore.getDistance2d(nextpoint,furthest),.1,TensorCore.getHeadingToTarget(nextpoint,furthest),0,true)\n    else\n        local furthest = TensorCore.getPosInDirection(newpos,newpos.h + math.pi/2.667 , 7.07)\n        local midpoint = TensorCore.getPosInDirection(newpos,newpos.h + math.pi/2.667 , 7.07 - 5)\n        local nextpoint = TensorCore.getPosInDirection(newpos,newpos.h , 5.412)\n        green:addTimedRect(6000,furthest.x,0,furthest.z,TensorCore.getDistance2d(furthest,midpoint),.1,TensorCore.getHeadingToTarget(furthest,midpoint),0,true)\n        green:addTimedRect(6000,midpoint.x,0,midpoint.z,TensorCore.getDistance2d(midpoint,nextpoint),.1,TensorCore.getHeadingToTarget(midpoint,nextpoint),0,true)\n        green:addTimedRect(6000,nextpoint.x,0,nextpoint.z,TensorCore.getDistance2d(nextpoint,furthest),.1,TensorCore.getHeadingToTarget(nextpoint,furthest),0,true)\n    end\n\n    findapos = lineIntersectionXZ(data.p5_exa_filtered_ent[3],data.p5_exa_filtered_ent[4])\n    newpos = TensorCore.getPosInDirection(findapos,findapos.h,5.412)\n    newpos.h = findapos.h\n    if cross > 0 then --left\n        local furthest = TensorCore.getPosInDirection(newpos,newpos.h - math.pi/2.667 , 7.07)\n        local midpoint = TensorCore.getPosInDirection(newpos,newpos.h - math.pi/2.667 , 7.07 - 5)\n        local nextpoint = TensorCore.getPosInDirection(newpos,newpos.h , 5.412)\n        green:addTimedRect(4000,furthest.x,0,furthest.z,TensorCore.getDistance2d(furthest,midpoint),.1,TensorCore.getHeadingToTarget(furthest,midpoint),6000,true)\n        green:addTimedRect(4000,midpoint.x,0,midpoint.z,TensorCore.getDistance2d(midpoint,nextpoint),.1,TensorCore.getHeadingToTarget(midpoint,nextpoint),6000,true)\n        green:addTimedRect(4000,nextpoint.x,0,nextpoint.z,TensorCore.getDistance2d(nextpoint,furthest),.1,TensorCore.getHeadingToTarget(nextpoint,furthest),6000,true)\n    else\n        local furthest = TensorCore.getPosInDirection(newpos,newpos.h + math.pi/2.667 , 7.07)\n        local midpoint = TensorCore.getPosInDirection(newpos,newpos.h + math.pi/2.667 , 7.07 - 5)\n        local nextpoint = TensorCore.getPosInDirection(newpos,newpos.h , 5.412)\n        green:addTimedRect(4000,furthest.x,0,furthest.z,TensorCore.getDistance2d(furthest,midpoint),.1,TensorCore.getHeadingToTarget(furthest,midpoint),6000,true)\n        green:addTimedRect(4000,midpoint.x,0,midpoint.z,TensorCore.getDistance2d(midpoint,nextpoint),.1,TensorCore.getHeadingToTarget(midpoint,nextpoint),6000,true)\n        green:addTimedRect(4000,nextpoint.x,0,nextpoint.z,TensorCore.getDistance2d(nextpoint,furthest),.1,TensorCore.getHeadingToTarget(nextpoint,furthest),6000,true)\n    end\nend\nif table.size(data.p5_exa_filtered_ent) == 6 then\n    local cross = (data.p5_exa[1].pos.x - 100) * (data.p5_exa[5].pos.z-100) - (data.p5_exa[1].pos.z-100) * (data.p5_exa[5].pos.x-100)\n    local findapos = lineIntersectionXZ(data.p5_exa_filtered_ent[5],data.p5_exa_filtered_ent[6])\n    local newpos = TensorCore.getPosInDirection(findapos,findapos.h,5.412)\n    newpos.h = findapos.h\n    if cross > 0 then --left\n        local furthest = TensorCore.getPosInDirection(newpos,newpos.h - math.pi/2.667 , 7.07)\n        local midpoint = TensorCore.getPosInDirection(newpos,newpos.h - math.pi/2.667 , 7.07 - 5)\n        local nextpoint = TensorCore.getPosInDirection(newpos,newpos.h , 5.412)\n        green:addTimedRect(6000,furthest.x,0,furthest.z,TensorCore.getDistance2d(furthest,midpoint),.1,TensorCore.getHeadingToTarget(furthest,midpoint),6000,true)\n        green:addTimedRect(6000,midpoint.x,0,midpoint.z,TensorCore.getDistance2d(midpoint,nextpoint),.1,TensorCore.getHeadingToTarget(midpoint,nextpoint),6000,true)\n        green:addTimedRect(6000,nextpoint.x,0,nextpoint.z,TensorCore.getDistance2d(nextpoint,furthest),.1,TensorCore.getHeadingToTarget(nextpoint,furthest),6000,true)\n    else\n        local furthest = TensorCore.getPosInDirection(newpos,newpos.h + math.pi/2.667 , 7.07)\n        local midpoint = TensorCore.getPosInDirection(newpos,newpos.h + math.pi/2.667 , 7.07 - 5)\n        local nextpoint = TensorCore.getPosInDirection(newpos,newpos.h , 5.412)\n        green:addTimedRect(6000,furthest.x,0,furthest.z,TensorCore.getDistance2d(furthest,midpoint),.1,TensorCore.getHeadingToTarget(furthest,midpoint),6000,true)\n        green:addTimedRect(6000,midpoint.x,0,midpoint.z,TensorCore.getDistance2d(midpoint,nextpoint),.1,TensorCore.getHeadingToTarget(midpoint,nextpoint),6000,true)\n        green:addTimedRect(6000,nextpoint.x,0,nextpoint.z,TensorCore.getDistance2d(nextpoint,furthest),.1,TensorCore.getHeadingToTarget(nextpoint,furthest),6000,true)\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"f1254854-7d69-ccb2-96b2-745ccb3a2ba4",
									true,
								},
							},
							uuid = "0a5ae84a-dc0b-be90-96b8-15fa73276236",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 3,
							eventArgType = 2,
							spellIDList = 
							{
								40118,
								40307,
							},
							uuid = "f1254854-7d69-ccb2-96b2-745ccb3a2ba4",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 3,
				loop = true,
				mechanicTime = 984.8,
				name = "Draw Exasquares3 [LPDU]",
				timeRange = true,
				timelineIndex = 209,
				timerEndOffset = 30,
				timerStartOffset = -30,
				uuid = "4677e4c3-db54-344f-b93c-8211b7a108ba",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Mitigation",
				uuid = "12971a58-b4b2-bfee-9a0c-2b32320a4911",
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
							actionID = 7549,
							conditions = 
							{
								
								{
									"134509b2-5fa4-8b1f-b71e-530e4b4a1f1c",
									true,
								},
								
								{
									"8dcbdf6d-844f-cb35-b24f-93bd91dccc83",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] M1 Feint Fulgent Blade",
							targetType = "Enemy",
							uuid = "50747716-d418-22db-a47f-c68d35e0a911",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"M1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "M1 roster",
							uuid = "134509b2-5fa4-8b1f-b71e-530e4b4a1f1c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Fulgent Blade CD",
							uuid = "8dcbdf6d-844f-cb35-b24f-93bd91dccc83",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 984.8,
				name = "[LPDU] M1 Feint Fulgent Blade",
				timeRange = true,
				timelineIndex = 209,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "5c79f2a3-324e-e4b6-9582-0362575427c7",
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
							actionID = 7405,
							conditions = 
							{
								
								{
									"21376937-12ad-913b-9ee0-1a05ea547d99",
									true,
								},
								
								{
									"12bf3be9-6fa0-a4a7-828a-1f4e26573796",
									true,
								},
								
								{
									"feb1c3e4-4642-2aac-ba64-fa24321420f4",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Troubadour - Fulgent Blade 1",
							uuid = "a0a401fb-753d-5703-ac58-930234b5fa53",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							conditions = 
							{
								
								{
									"21376937-12ad-913b-9ee0-1a05ea547d99",
									true,
								},
								
								{
									"878d01cd-56ab-48ab-adf1-7ada691227cc",
									true,
								},
								
								{
									"2c19090a-b73d-cf89-a03b-2dc03fede3b3",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Tactician - Fulgent Blade 1",
							uuid = "a193206b-1489-5c0c-9ab7-90bef3077692",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							conditions = 
							{
								
								{
									"21376937-12ad-913b-9ee0-1a05ea547d99",
									true,
								},
								
								{
									"78a00678-1a6f-7fb3-8942-5754a4fd1c6b",
									true,
								},
								
								{
									"ad47701a-258f-819d-9d2a-98d30254e49d",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Shield Samba - Fulgent Blade 1",
							uuid = "fa8f54b2-5328-9c88-9de6-e4fe303df216",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R1 roster",
							uuid = "21376937-12ad-913b-9ee0-1a05ea547d99",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Troubadour job",
							uuid = "12bf3be9-6fa0-a4a7-828a-1f4e26573796",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7405,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "feb1c3e4-4642-2aac-ba64-fa24321420f4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Tactician job",
							uuid = "878d01cd-56ab-48ab-adf1-7ada691227cc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "2c19090a-b73d-cf89-a03b-2dc03fede3b3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Shield Samba job",
							uuid = "78a00678-1a6f-7fb3-8942-5754a4fd1c6b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "ad47701a-258f-819d-9d2a-98d30254e49d",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 984.8,
				name = "[LPDU] R1 Phys Ranged - Fulgent Blade 1",
				timeRange = true,
				timelineIndex = 209,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "baf13c33-aaa8-7ab7-acd3-03174aea6ac7",
				version = 2,
			},
		},
	},
	[212] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "7411a393-7608-328f-02c7-9ea1aa9ad223",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Melee] Feint (Primary)",
				uuid = "1b7d8fb7-6eda-3967-afb3-ba3dfa555bb4",
				version = 2,
			},
			inheritedObjectUUID = "c8c951b4-ccda-2c6e-a83b-590ecc159d27",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[VPR] Feint (Primary)",
				uuid = "16826331-b740-76a6-b45c-1db919ab9b8a",
				version = 2,
			},
			inheritedObjectUUID = "f96394d5-fb55-b83e-b0e7-492bf19faf31",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[Caster] Addle (Secondary)",
				uuid = "c82601f5-bbd8-a303-aab7-38009bae1e1c",
				version = 2,
			},
			inheritedObjectUUID = "562d6f19-0f40-b7ba-a971-77b082b63006",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[213] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "f371bd06-6eba-2d32-5ab8-1e44c6bb0e56",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[214] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "5019f4cd-4574-9ac1-3b69-0b6f213da69d",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[215] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "cdf4f600-437c-e1e4-d4a6-7192688e5750",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[MNK] Mantra",
				uuid = "8fbc0c0f-16de-8dc7-b04a-61b2196496bf",
				version = 2,
			},
			inheritedObjectUUID = "70ea6763-0360-64c1-b051-a3e356a9e937",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Mitigation",
				uuid = "0b7ff6c3-2e4b-1f6e-83aa-2853ce578eca",
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
							actionID = 7549,
							conditions = 
							{
								
								{
									"5ce58eb5-8b4a-a4c1-9b76-b11f7cca37a7",
									true,
								},
								
								{
									"cca87e2b-de84-6ab0-82a3-166cc3be2346",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] M2 Feint P5 Akh Morn 1",
							targetType = "Enemy",
							uuid = "fdd43f8a-dadb-ece4-a8c5-d609f1b94c05",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"M2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "M2 roster",
							uuid = "5ce58eb5-8b4a-a4c1-9b76-b11f7cca37a7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "P5 Akh Morn 1 CD",
							uuid = "cca87e2b-de84-6ab0-82a3-166cc3be2346",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1011.4,
				name = "[LPDU] M2 Feint P5 Akh Morn 1",
				timeRange = true,
				timelineIndex = 215,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "2d0464e5-ae7c-7cc9-93a2-a1e03bed3e87",
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
							actionID = 7560,
							conditions = 
							{
								
								{
									"9c3222f8-85be-96e9-9b10-3bfc749a1581",
									true,
								},
								
								{
									"698c785c-6a13-8f63-8797-2652c437292a",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Addle P5 Akh Morn 1",
							targetType = "Enemy",
							uuid = "c418db44-1c0c-dcdc-b4f6-6e146ced7df9",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R1 roster",
							uuid = "9c3222f8-85be-96e9-9b10-3bfc749a1581",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "P5 Akh Morn 1 CD",
							uuid = "698c785c-6a13-8f63-8797-2652c437292a",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1011.4,
				name = "[LPDU] R1 Addle P5 Akh Morn 1",
				timeRange = true,
				timelineIndex = 215,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "4eac234c-6c3d-6fe5-820e-7a4a5a1c66ee",
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
							actionID = 7405,
							conditions = 
							{
								
								{
									"f5cdd1fa-d5f7-21e0-bfe5-268ee61e0989",
									true,
								},
								
								{
									"a8227828-c20e-e26b-b482-f584d1409975",
									true,
								},
								
								{
									"b9bdaf53-1b21-3c9f-9221-15e6e893c856",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Troubadour - P5 Akh Morn 1",
							uuid = "9c03c542-5857-a8b8-a302-fe5a9aba7611",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							conditions = 
							{
								
								{
									"f5cdd1fa-d5f7-21e0-bfe5-268ee61e0989",
									true,
								},
								
								{
									"6ae3eb05-1a89-bcb7-b6fc-1180155eb3e6",
									true,
								},
								
								{
									"a0165dc8-fa2d-fbf3-ab70-468aa7fbe830",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Tactician - P5 Akh Morn 1",
							uuid = "bac82c86-9326-f6f8-b1ee-278c2da1b430",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							conditions = 
							{
								
								{
									"f5cdd1fa-d5f7-21e0-bfe5-268ee61e0989",
									true,
								},
								
								{
									"c9b5237b-cdc5-01ce-b2b5-798e6cb47516",
									true,
								},
								
								{
									"b5cdbd25-2bf7-529d-89cd-b34584b86e9c",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Shield Samba - P5 Akh Morn 1",
							uuid = "6bed4247-b7c6-6212-bccd-9cceb7f4974c",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R2 roster",
							uuid = "f5cdd1fa-d5f7-21e0-bfe5-268ee61e0989",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Troubadour job",
							uuid = "a8227828-c20e-e26b-b482-f584d1409975",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7405,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "b9bdaf53-1b21-3c9f-9221-15e6e893c856",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Tactician job",
							uuid = "6ae3eb05-1a89-bcb7-b6fc-1180155eb3e6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "a0165dc8-fa2d-fbf3-ab70-468aa7fbe830",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Shield Samba job",
							uuid = "c9b5237b-cdc5-01ce-b2b5-798e6cb47516",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "b5cdbd25-2bf7-529d-89cd-b34584b86e9c",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1011.4,
				name = "[LPDU] R2 Phys Ranged - P5 Akh Morn 1",
				timeRange = true,
				timelineIndex = 215,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "4120c57c-091c-0759-a85e-30c0e1b53490",
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
							actionID = 34686,
							conditions = 
							{
								
								{
									"bce899f5-5924-67b2-ac63-3833e43f3e53",
									true,
								},
								
								{
									"4482fb2d-cfec-a4ec-8af0-ef4d87797c6f",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Tempera Grassa P5 Akh Morn 1",
							uuid = "6bb45da8-56e0-1237-8443-2da0da90d96a",
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
							jobValue = "PICTOMANCER",
							name = "PICTOMANCER job",
							uuid = "bce899f5-5924-67b2-ac63-3833e43f3e53",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 34686,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "P5 Akh Morn 1 CD",
							uuid = "4482fb2d-cfec-a4ec-8af0-ef4d87797c6f",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1011.4,
				name = "[LPDU] Tempera Grassa P5 Akh Morn 1",
				timeRange = true,
				timelineIndex = 215,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "ec793bf6-81ec-a4d2-ab0c-87960aa9b35d",
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
							actionID = 2887,
							conditions = 
							{
								
								{
									"423295bc-0abb-8ed5-af8f-0b22e7fc44d9",
									true,
								},
								
								{
									"564e3220-0fde-86d7-8fa7-5ebd9904ff1f",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Dismantle P5 Akh Morn 1",
							uuid = "0c790d75-8463-59fe-932d-e300dde6d124",
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
							jobValue = "MACHINIST",
							name = "MACHINIST job",
							uuid = "423295bc-0abb-8ed5-af8f-0b22e7fc44d9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 2887,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "P5 Akh Morn 1 CD",
							uuid = "564e3220-0fde-86d7-8fa7-5ebd9904ff1f",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1011.4,
				name = "[LPDU] Dismantle P5 Akh Morn 1",
				timeRange = true,
				timelineIndex = 215,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "7401ee07-7e29-b2b5-9d08-1dcd09da42c0",
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
							actionID = 16014,
							conditions = 
							{
								
								{
									"07225a96-5967-ca4f-83b1-807338a61751",
									true,
								},
								
								{
									"fb6fe1f5-9d11-32f8-bd5f-f27db90af5ce",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Improvisation P5 Akh Morn 1",
							uuid = "1165a38e-9fb8-6f63-98b9-fdf1cfccf8f5",
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
							jobValue = "DANCER",
							name = "DANCER job",
							uuid = "07225a96-5967-ca4f-83b1-807338a61751",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16014,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "P5 Akh Morn 1 CD",
							uuid = "fb6fe1f5-9d11-32f8-bd5f-f27db90af5ce",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1011.4,
				name = "[LPDU] Improvisation P5 Akh Morn 1",
				timeRange = true,
				timelineIndex = 215,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "3fcd161b-fcd4-e489-9e28-70f4566fe6c6",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU",
				uuid = "3efbe011-69a6-15e9-bc6d-a317f70e327c",
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
							actionLua = "local r=AnyoneCore.Roster\nif r.current()==nil or not r.isReady() then return end\nif data.lpdu_p5_healer_stack_shapes then\n for _,id in ipairs(data.lpdu_p5_healer_stack_shapes) do Argus.deleteTimedShape(id) end\nend\ndata.lpdu_p5_healer_stack_shapes={}\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.35),2,1)\nfor _,slot in ipairs({\"H1\",\"H2\"}) do\n local ent=r.entOf(slot)\n if ent then\n  local id=drawer:addTimedCircleOnEnt(math.floor(eventArgs.channelTimeMax*1000)+500,ent.id,4,0,true,true)\n  if id then table.insert(data.lpdu_p5_healer_stack_shapes,id) end\n end\nend\nself.used=true",
							conditions = 
							{
								
								{
									"ef1bc6c8-d19f-03bc-99a9-97bb8c950ca6",
									true,
								},
							},
							name = "Healer Stack Circles",
							uuid = "a41340f5-5983-bec0-aa34-a6c0c5cbad43",
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
							conditionLua = "return eventArgs ~= nil and eventArgs.spellID == 40310",
							name = "Akh Morn event",
							uuid = "ef1bc6c8-d19f-03bc-99a9-97bb8c950ca6",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 3,
				loop = true,
				mechanicTime = 1011.4,
				name = "[LPDU] P5 Akh Morn - Healer Stack Circles",
				timeRange = true,
				timelineIndex = 215,
				timerEndOffset = 210,
				timerStartOffset = -10,
				uuid = "9718b10f-3a48-3c10-9bc2-8061ecfa5630",
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
							actionLua = "if data.lpdu_p5_healer_stack_shapes then\n for _,id in ipairs(data.lpdu_p5_healer_stack_shapes) do Argus.deleteTimedShape(id) end\n data.lpdu_p5_healer_stack_shapes=nil\nend\nself.used=true",
							conditions = 
							{
								
								{
									"08abdb32-a4c0-0919-b4e0-65520d4e3562",
									true,
								},
							},
							name = "Stack Circle Cleanup",
							uuid = "c2b90302-4fd1-57b4-9400-894148e6c4a4",
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
							conditionLua = "return eventArgs ~= nil and (eventArgs.spellID == 40311 or eventArgs.spellID == 40312)",
							name = "Akh Morn event",
							uuid = "08abdb32-a4c0-0919-b4e0-65520d4e3562",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 2,
				loop = true,
				mechanicTime = 1011.4,
				name = "[LPDU] P5 Akh Morn - Stack Circle Cleanup",
				timeRange = true,
				timelineIndex = 215,
				timerEndOffset = 210,
				timerStartOffset = -10,
				uuid = "bf3cfb62-2953-1a8f-bc28-ce3e8640b867",
				version = 2,
			},
		},
	},
	[216] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "cdfb1e47-2e48-f57b-170d-4b15e1b7b117",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Melee] Feint (Secondary)",
				uuid = "975f6660-fe1c-52f1-ad2e-a1be66d3d917",
				version = 2,
			},
			inheritedObjectUUID = "aa7eaad6-067c-b722-b6b0-5010fb8602d8",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[VPR] Feint (Secondary)",
				uuid = "be8a956b-23d0-39fa-9db3-a996bf1bbe0a",
				version = 2,
			},
			inheritedObjectUUID = "bf853260-8e3a-eeda-8e62-652c1e309387",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[Caster] Addle (Primary)",
				uuid = "5b7890f9-3193-fb80-8eb9-3970e81b8486",
				version = 2,
			},
			inheritedObjectUUID = "67daa4d0-6054-8a3c-9900-b454e1192e33",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[MCH] Dismantle",
				uuid = "00d43455-2163-974f-ba30-57eb2322fb9b",
				version = 2,
			},
			inheritedObjectUUID = "7f08d13e-bb23-fe5c-9688-6cf315b0ccce",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[RDM] Barrier",
				uuid = "e0f43b55-4188-fc8c-b923-cdda765b7502",
				version = 2,
			},
			inheritedObjectUUID = "d0c144ab-5699-c9c8-8346-63803c3c04f0",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[218] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "2b237e01-a7e2-838d-13f9-78b32872e011",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Core] Record First Wing Color",
				uuid = "a8dcd000-82cc-b4f1-a54a-7539e49eab85",
				version = 2,
			},
			inheritedObjectUUID = "8fc46a81-19ca-bd0a-b645-3ea5c354ad86",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[Core] Snapshot Wings MT",
				uuid = "26be8dd0-50d1-3a39-a2d7-8591dc07a47f",
				version = 2,
			},
			inheritedObjectUUID = "1704044b-bb59-29d4-9fba-4e972d899717",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[Core] Record First Tower Pos",
				uuid = "20fcc952-953c-cb35-8428-cc69c78dd92b",
				version = 2,
			},
			inheritedObjectUUID = "27258e88-95a9-7fc2-8819-ae4082d98aea",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[219] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "d52e2024-7382-8bc0-a54f-f526883fa9f4",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[220] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "cfe87394-f292-7c80-335a-fe5a19e57ae4",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[222] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "08ebdb7e-f0bb-3eca-c002-23d0d24c960e",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU_megaminx_indicator",
				uuid = "97cf6d23-a351-ef77-fa06-66457fbfde73",
			},
			inheritanceRoot = "FRU_megaminx_indicator",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "channel tts",
				uuid = "9c1cdda6-60d2-4103-a902-8e7582c35e46",
				version = 2,
			},
			inheritedObjectUUID = "e60552b2-1a38-2017-beef-a2432745e4d5",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "get TB1",
				uuid = "3f3cc3b1-91c5-d1cb-a0ef-88d12e9a050a",
				version = 2,
			},
			inheritedObjectUUID = "582452d5-6a7c-2381-8310-e5c1523ca631",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "draw TB1",
				uuid = "8b3290d2-9a80-8b47-8ef6-bf237df4ea6a",
				version = 2,
			},
			inheritedObjectUUID = "6fc1c075-0616-3471-9c7f-3cc28ae0b50c",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "get tower1",
				uuid = "300acc8f-ff01-cbae-9b4f-1ee7f185ca4f",
				version = 2,
			},
			inheritedObjectUUID = "b2d82938-bf1c-8692-8a22-f9d5bc36f544",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU",
				uuid = "217cc0bd-9987-23cd-91b7-e0927d66b709",
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
							actionLua = "if data.megaminx_p5_tb1_startTime == nil then data.megaminx_p5_tb1_startTime = Now() end\nlocal yellow = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(255/255, 255/255, 0/255, .25),2)\nlocal purple = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(255/255, 0/255, 255/255, .25),2)\nlocal green = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0/255, 255/255, 0/255, .25),2)\nlocal center = {x = 100, y = 0,z = 100}\nlocal p = TensorCore.mGetPlayer()\nlocal roster = AnyoneCore and AnyoneCore.Roster\nif not roster or not roster.isReady() or not p then return end\nif not data.megaminx_p5_tb1 or not data.megaminx_p5_tb1_tower then return end\nlocal towerpos\nif table.size(data.megaminx_p5_tb1_tower) > 0 then\n    if data.megaminx_p5_tb1_tower[1] == 51 then --nw\n        local heading = TensorCore.getHeadingToTarget(center, {x = 100, y = 0, z = 107})  - math.pi / 3 * 2\n        towerpos = TensorCore.getPosInDirection(center,heading,7)\n    end\n    if data.megaminx_p5_tb1_tower[1] == 52 then --ne\n        local heading = TensorCore.getHeadingToTarget(center, {x = 100, y = 0, z = 107})  + math.pi / 3 * 2\n        towerpos = TensorCore.getPosInDirection(center,heading,7)\n    end\n    if data.megaminx_p5_tb1_tower[1] == 53 then --s\n        towerpos = {x = 100, y = 0, z = 107}\n    end\nend\nlocal mt = TensorCore.mGetEntity(data.megaminx_p5_tb1.mt)\nlocal ot = TensorCore.mGetEntity(data.megaminx_p5_tb1.ot)\nif not towerpos or not mt or not ot then return end\ngreen:addCircle(towerpos.x,towerpos.y,towerpos.z,3,true)\nlocal mySlot = roster.mySlot()\nlocal towerHeading = TensorCore.getHeadingToTarget(center, towerpos)\nlocal rolePos\nif mySlot == \"H1\" or mySlot == \"H2\" then\n    rolePos = towerpos\nelseif mySlot == \"M1\" or mySlot == \"R1\" then\n    rolePos = TensorCore.getPosInDirection(center, towerHeading - 2 * math.pi / 3, 7)\nelseif mySlot == \"M2\" or mySlot == \"R2\" then\n    rolePos = TensorCore.getPosInDirection(center, towerHeading + 2 * math.pi / 3, 7)\nend\nif rolePos then\n    green:addCircle(rolePos.x, 0, rolePos.z, 1.5, true)\n    local length = TensorCore.getDistance2d(p.pos, rolePos)\n    if length > 1 then\n        green:addArrow(p.pos.x, 0, p.pos.z, TensorCore.getHeadingToTarget(p.pos, rolePos), length, 1, 1, 1, true)\n    end\nend\nif TimeSince(data.megaminx_p5_tb1_startTime) < 7000 then\n    --draw first part on mt\n    if data.megaminx_p5_tb1.spell == 40313 then --light\n        yellow:addCone(100,0,100,30,math.pi + math.pi/6,TensorCore.getHeadingToTarget(center,mt.pos) - math.pi/6 + 105 * math.pi/180, true)\n        if p.id == ot.id then\n            if towerpos then\n                local heading = TensorCore.getHeadingToTarget(center,towerpos) +  math.pi/3\n                green:addArrow(100,0,100,heading,8,1,1,1,true)\n            end\n        end\n    end\n    if data.megaminx_p5_tb1.spell == 40233 then --dark\n        purple:addCone(100,0,100,30,math.pi + math.pi/6,TensorCore.getHeadingToTarget(center,mt.pos) + math.pi/6 - 105 * math.pi/180, true)\n        if p.id == ot.id then\n            if towerpos then\n                local heading = TensorCore.getHeadingToTarget(center,towerpos) -  math.pi/3\n                green:addArrow(100,0,100,heading,8,1,1,1,true)\n            end\n        end\n    end\nelse\n    --draw second part on ot\n    if data.megaminx_p5_tb1.spell == 40313 then --light\n        purple:addCone(100,0,100,30,math.pi + math.pi/6,TensorCore.getHeadingToTarget(center,ot.pos) + math.pi/6 - 105 * math.pi/180, true)\n        if p.id == ot.id then\n            if towerpos then\n                local heading = TensorCore.getHeadingToTarget(center,towerpos) +  math.pi/3\n                green:addArrow(100,0,100,heading,8,1,1,1,true)\n            end\n        end\n    end\n    if data.megaminx_p5_tb1.spell == 40233 then --dark\n        yellow:addCone(100,0,100,30,math.pi + math.pi/6,TensorCore.getHeadingToTarget(center,ot.pos) - math.pi/6 + 105 * math.pi/180, true)\n        if p.id == ot.id then\n            if towerpos then\n                local heading = TensorCore.getHeadingToTarget(center,towerpos) -  math.pi/3\n                green:addArrow(100,0,100,heading,8,1,1,1,true)\n            end\n        end\n    end\nend\n--table.insert(data.megaminx_p5_tb1,{spell = eventArgs.spellID, mt = mt.id, ot = ot.id})\nself.used = true",
							conditions = 
							{
								
								{
									"b3490554-0797-c054-86f1-222cf781bbe6",
									true,
								},
							},
							uuid = "505a5eb6-99db-64ad-9e8b-8340db7a28a4",
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
							conditionLua = "return table.size(data.megaminx_p5_tb1) > 0",
							dequeueIfLuaFalse = true,
							uuid = "b3490554-0797-c054-86f1-222cf781bbe6",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				enabled = false,
				eventType = 12,
				mechanicTime = 1033.6,
				name = "draw TB1 [LPDU]",
				timeRange = true,
				timelineIndex = 222,
				timerStartOffset = -30,
				uuid = "2c23ea06-cb1c-647c-8c0d-962524b9f4ae",
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
							aType = "Alert",
							alertText = "light first go left",
							conditions = 
							{
								
								{
									"14d6e602-efd8-e317-aafb-205e0865bd34",
									true,
								},
							},
							uuid = "140ca715-03af-724f-90d0-bf77643c4181",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertText = "dark first go right",
							conditions = 
							{
								
								{
									"59438eef-fbf7-ec18-b2cc-5652a3ea61e7",
									true,
								},
							},
							uuid = "1f4d56cc-a227-6d7a-b6b4-1c2d19566ead",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							eventArgType = 2,
							eventSpellID = 40313,
							name = "light first",
							uuid = "14d6e602-efd8-e317-aafb-205e0865bd34",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							eventArgType = 2,
							eventSpellID = 40233,
							name = "dark first",
							uuid = "59438eef-fbf7-ec18-b2cc-5652a3ea61e7",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 3,
				mechanicTime = 1033.6,
				name = "channel tts [LPDU]",
				timeRange = true,
				timelineIndex = 222,
				timerStartOffset = -20,
				uuid = "7b9096a4-1c2d-c2ba-9774-8cdddc771f23",
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
							actionLua = "if data.megaminx_p5_tb1_tower == nil then data.megaminx_p5_tb1_tower = {} end\ntable.insert(data.megaminx_p5_tb1_tower,eventArgs.a1)\nd(eventArgs.a1)\nself.used = true",
							conditions = 
							{
								
								{
									"378120b9-e3c6-0965-986f-be699290d473",
									true,
								},
							},
							uuid = "233fe3b2-6020-4f9c-a7a7-8d2ba3720bc9",
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
							conditionLua = "return eventArgs.a2 == 1 and eventArgs.a3 == 2",
							uuid = "378120b9-e3c6-0965-986f-be699290d473",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 14,
				mechanicTime = 1033.6,
				name = "get tower1 [LPDU]",
				timeRange = true,
				timelineIndex = 222,
				timerStartOffset = -20,
				uuid = "c0c58be4-f5f5-97db-8b61-1a25933c6a51",
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
							actionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif not roster or not roster.current() then return end\nlocal mt = roster.idOf(\"T1\")\nlocal ot = roster.idOf(\"T2\")\nif not mt or not ot then return end\ndata.megaminx_p5_tb1 = {spell = eventArgs.spellID, mt = mt, ot = ot}\nself.used = true",
							conditions = 
							{
								
								{
									"25c03148-e42d-cff4-a7f0-d9bb38335df2",
									true,
								},
							},
							uuid = "21e6abbb-379b-ceac-a051-0251d219f425",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							eventArgOptionType = 3,
							eventArgType = 2,
							spellIDList = 
							{
								40313,
								40233,
							},
							uuid = "25c03148-e42d-cff4-a7f0-d9bb38335df2",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 3,
				mechanicTime = 1033.6,
				name = "get TB1 [LPDU]",
				timeRange = true,
				timelineIndex = 222,
				timerEndOffset = 20,
				timerStartOffset = -20,
				uuid = "afc2f6ef-83eb-6425-8748-99f7ed3153bd",
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
							actionLua = "local old=data.lpdu_paradise\nif old then\n for _,id in ipairs(old.shapes) do Argus.deleteTimedShape(id) end\n if old.coneID then Argus.deleteTimedShape(old.coneID) end\nend\ndata.lpdu_paradise={shapes={},cleaves=0,tethers=0,towers=0}\nself.used=true",
							conditions = 
							{
								
								{
									"cb672b3e-2462-4922-ba3e-bffc8d3485d1",
									true,
								},
							},
							name = "Reset",
							uuid = "a2e0fecc-7d8b-8dc7-9d9d-97d625dd2f43",
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
							conditionLua = "return eventArgs ~= nil and eventArgs.spellID == 40319",
							name = "Reset gate",
							uuid = "cb672b3e-2462-4922-ba3e-bffc8d3485d1",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 3,
				loop = true,
				mechanicTime = 1033.6,
				name = "[LPDU] P5 Paradise Regained - Reset",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 222,
				timerEndOffset = 135,
				timerStartOffset = -20,
				uuid = "1057a667-f396-ca33-8e63-01baf49e66a1",
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
							actionLua = "local r=AnyoneCore.Roster;local p=TensorCore.mGetPlayer()\nif r.current()==nil or not r.isReady() or p==nil then return end\nlocal slot=r.mySlot();local s=data.lpdu_paradise;if s==nil then return end\nif s.clear==nil then\n function s.clear()\n  for _,id in ipairs(s.shapes) do Argus.deleteTimedShape(id) end;s.shapes={}\n end\n function s.draw(angle,dist,seconds,text)\n  s.clear();local x=100+math.sin(angle)*dist;local z=100+math.cos(angle)*dist;local t={x=x,y=0,z=z}\n  local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n  local id=d:addTimedCircle(seconds*1000,x,.05,z,.8,0,true,true)\n  if id then table.insert(s.shapes,id) end\n  local player=TensorCore.mGetPlayer();local length=TensorCore.getDistance2d(player.pos,t)\n  if length>1 then id=d:addTimedArrow(seconds*1000,player.pos.x,player.pos.y+.05,player.pos.z,TensorCore.getHeadingToTarget(player.pos,t),math.max(.15,length-1),1,1,1,0,true)\n   if id then table.insert(s.shapes,id) end end\n  AnyoneCore.Shotcall(text,true,seconds,false)\n end\n function s.tower(left,seconds)\n  s.clear();local angle=s.south+(left and -1 or 1)*2*math.pi/3\n  local x=100+math.sin(angle)*7-math.sin(s.south)*1.8\n  local z=100+math.cos(angle)*7-math.cos(s.south)*1.8;local t={x=x,y=0,z=z}\n  local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n  local id=d:addTimedCircle(seconds*1000,x,.05,z,.8,0,true,true)\n  if id then table.insert(s.shapes,id) end\n  local player=TensorCore.mGetPlayer();local length=TensorCore.getDistance2d(player.pos,t)\n  if length>1 then id=d:addTimedArrow(seconds*1000,player.pos.x,player.pos.y+.05,player.pos.z,TensorCore.getHeadingToTarget(player.pos,t),math.max(.15,length-1),1,1,1,0,true)\n   if id then table.insert(s.shapes,id) end end\n  AnyoneCore.Shotcall(left and \"G1 left tower - north edge\" or \"G2 right tower - north edge\",true,seconds,false)\n end\n function s.cone(tank,dark,seconds)\n  if s.coneID then Argus.deleteTimedShape(s.coneID);s.coneID=nil end\n  local id=r.idOf(tank);if id==nil then return end\n  s.coneID=TensorCore.getMoogleDrawer():addTimedConeOnEnt(seconds*1000,s.boss,19,4*math.pi/3,id,0,false,true,(dark and -1 or 1)*math.pi/3,false)\n end\nend\nif s.south==nil then s.south=eventArgs.a1==51 and -2*math.pi/3 or eventArgs.a1==52 and 2*math.pi/3 or 0 end\nself.used=true",
							conditions = 
							{
								
								{
									"d62b6b9a-c865-5242-811d-f157dc64dae9",
									true,
								},
							},
							name = "First Tower Orientation",
							uuid = "672d9408-8fe9-11f7-8fb0-c5d7356b3ded",
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
							conditionLua = "return eventArgs ~= nil and eventArgs.a1 >= 51 and eventArgs.a1 <= 53 and eventArgs.a2 == 1 and eventArgs.a3 == 2",
							name = "First Tower Orientation gate",
							uuid = "d62b6b9a-c865-5242-811d-f157dc64dae9",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 14,
				loop = true,
				mechanicTime = 1033.6,
				name = "[LPDU] P5 Paradise Regained - First Tower Orientation",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 222,
				timerEndOffset = 135,
				timerStartOffset = -20,
				uuid = "3a6a7f9f-2029-9729-a747-40d5fd6c0df0",
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
							actionLua = "local r=AnyoneCore.Roster;local p=TensorCore.mGetPlayer()\nif r.current()==nil or not r.isReady() or p==nil then return end\nlocal slot=r.mySlot();local s=data.lpdu_paradise;if s==nil then return end\nif s.clear==nil then\n function s.clear()\n  for _,id in ipairs(s.shapes) do Argus.deleteTimedShape(id) end;s.shapes={}\n end\n function s.draw(angle,dist,seconds,text)\n  s.clear();local x=100+math.sin(angle)*dist;local z=100+math.cos(angle)*dist;local t={x=x,y=0,z=z}\n  local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n  local id=d:addTimedCircle(seconds*1000,x,.05,z,.8,0,true,true)\n  if id then table.insert(s.shapes,id) end\n  local player=TensorCore.mGetPlayer();local length=TensorCore.getDistance2d(player.pos,t)\n  if length>1 then id=d:addTimedArrow(seconds*1000,player.pos.x,player.pos.y+.05,player.pos.z,TensorCore.getHeadingToTarget(player.pos,t),math.max(.15,length-1),1,1,1,0,true)\n   if id then table.insert(s.shapes,id) end end\n  AnyoneCore.Shotcall(text,true,seconds,false)\n end\n function s.tower(left,seconds)\n  s.clear();local angle=s.south+(left and -1 or 1)*2*math.pi/3\n  local x=100+math.sin(angle)*7-math.sin(s.south)*1.8\n  local z=100+math.cos(angle)*7-math.cos(s.south)*1.8;local t={x=x,y=0,z=z}\n  local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n  local id=d:addTimedCircle(seconds*1000,x,.05,z,.8,0,true,true)\n  if id then table.insert(s.shapes,id) end\n  local player=TensorCore.mGetPlayer();local length=TensorCore.getDistance2d(player.pos,t)\n  if length>1 then id=d:addTimedArrow(seconds*1000,player.pos.x,player.pos.y+.05,player.pos.z,TensorCore.getHeadingToTarget(player.pos,t),math.max(.15,length-1),1,1,1,0,true)\n   if id then table.insert(s.shapes,id) end end\n  AnyoneCore.Shotcall(left and \"G1 left tower - north edge\" or \"G2 right tower - north edge\",true,seconds,false)\n end\n function s.cone(tank,dark,seconds)\n  if s.coneID then Argus.deleteTimedShape(s.coneID);s.coneID=nil end\n  local id=r.idOf(tank);if id==nil then return end\n  s.coneID=TensorCore.getMoogleDrawer():addTimedConeOnEnt(seconds*1000,s.boss,19,4*math.pi/3,id,0,false,true,(dark and -1 or 1)*math.pi/3,false)\n end\nend\nif s.south==nil then return end\ns.dark=eventArgs.spellID==40233;s.boss=eventArgs.entityID;s.castStart=TensorReactions_CurrentTimer\ns.cone(\"T1\",s.dark,eventArgs.channelTimeMax+.4)\nlocal seconds=eventArgs.channelTimeMax+1.3\nif slot==\"T1\" then s.draw(s.south+(s.dark and -1 or 1)*2*math.pi/3,7,seconds,s.dark and \"Face first cleave left\" or \"Face first cleave right\")\nelseif slot==\"T2\" then s.draw(s.south+(s.dark and 0 or math.pi/4),s.dark and 2 or 10,seconds,s.dark and \"Bait closest - provoke mid-cast\" or \"Bait farthest - provoke mid-cast\")\nelseif slot==\"H1\" or slot==\"H2\" then s.draw(s.south,s.dark and 8.5 or 5,seconds,s.dark and \"First tower - stand farther out\" or \"First tower - stand farther in\")\nelse s.draw(s.south+((slot==\"M1\" or slot==\"R1\") and -.18 or .18),s.dark and 7.5 or 5.5,seconds,\"Wait south - towers after first cleave\") end\nself.used=true",
							conditions = 
							{
								
								{
									"c182edb4-b090-b14a-8ccb-4c46f97c36d0",
									true,
								},
							},
							name = "First Cleave and Healer Tower",
							uuid = "c14ca3f0-4253-fe83-90b4-56d6b7b50b36",
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
							conditionLua = "return eventArgs ~= nil and (eventArgs.spellID == 40233 or eventArgs.spellID == 40313)",
							name = "First Cleave and Healer Tower gate",
							uuid = "c182edb4-b090-b14a-8ccb-4c46f97c36d0",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 3,
				loop = true,
				mechanicTime = 1033.6,
				name = "[LPDU] P5 Paradise Regained - First Cleave and Healer Tower",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 222,
				timerEndOffset = 135,
				timerStartOffset = -20,
				uuid = "fc005c1a-fcce-70ca-846e-6daf445cf544",
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
							actionLua = "local r=AnyoneCore.Roster;local p=TensorCore.mGetPlayer()\nif r.current()==nil or not r.isReady() or p==nil then return end\nlocal slot=r.mySlot();local s=data.lpdu_paradise;if s==nil then return end\nif s.clear==nil then\n function s.clear()\n  for _,id in ipairs(s.shapes) do Argus.deleteTimedShape(id) end;s.shapes={}\n end\n function s.draw(angle,dist,seconds,text)\n  s.clear();local x=100+math.sin(angle)*dist;local z=100+math.cos(angle)*dist;local t={x=x,y=0,z=z}\n  local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n  local id=d:addTimedCircle(seconds*1000,x,.05,z,.8,0,true,true)\n  if id then table.insert(s.shapes,id) end\n  local player=TensorCore.mGetPlayer();local length=TensorCore.getDistance2d(player.pos,t)\n  if length>1 then id=d:addTimedArrow(seconds*1000,player.pos.x,player.pos.y+.05,player.pos.z,TensorCore.getHeadingToTarget(player.pos,t),math.max(.15,length-1),1,1,1,0,true)\n   if id then table.insert(s.shapes,id) end end\n  AnyoneCore.Shotcall(text,true,seconds,false)\n end\n function s.tower(left,seconds)\n  s.clear();local angle=s.south+(left and -1 or 1)*2*math.pi/3\n  local x=100+math.sin(angle)*7-math.sin(s.south)*1.8\n  local z=100+math.cos(angle)*7-math.cos(s.south)*1.8;local t={x=x,y=0,z=z}\n  local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n  local id=d:addTimedCircle(seconds*1000,x,.05,z,.8,0,true,true)\n  if id then table.insert(s.shapes,id) end\n  local player=TensorCore.mGetPlayer();local length=TensorCore.getDistance2d(player.pos,t)\n  if length>1 then id=d:addTimedArrow(seconds*1000,player.pos.x,player.pos.y+.05,player.pos.z,TensorCore.getHeadingToTarget(player.pos,t),math.max(.15,length-1),1,1,1,0,true)\n   if id then table.insert(s.shapes,id) end end\n  AnyoneCore.Shotcall(left and \"G1 left tower - north edge\" or \"G2 right tower - north edge\",true,seconds,false)\n end\n function s.cone(tank,dark,seconds)\n  if s.coneID then Argus.deleteTimedShape(s.coneID);s.coneID=nil end\n  local id=r.idOf(tank);if id==nil then return end\n  s.coneID=TensorCore.getMoogleDrawer():addTimedConeOnEnt(seconds*1000,s.boss,19,4*math.pi/3,id,0,false,true,(dark and -1 or 1)*math.pi/3,false)\n end\nend\ns.cleaves=s.cleaves+1\nif s.coneID then Argus.deleteTimedShape(s.coneID);s.coneID=nil end\nif s.cleaves==1 then s.cone(\"T2\",not s.dark,3.9) elseif slot==\"T1\" or slot==\"T2\" or slot==\"H1\" or slot==\"H2\" then s.clear() end\nself.used=true",
							conditions = 
							{
								
								{
									"8eb71025-a313-1435-8aeb-f9c7119b4681",
									true,
								},
							},
							name = "Cleave Telegraph Lifecycle",
							uuid = "b9eb8e04-b47b-9c23-9513-f67809ef2ca7",
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
							conditionLua = "return eventArgs ~= nil and (eventArgs.spellID == 40314 or eventArgs.spellID == 40315)",
							name = "Cleave Telegraph Lifecycle gate",
							uuid = "8eb71025-a313-1435-8aeb-f9c7119b4681",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 2,
				loop = true,
				mechanicTime = 1033.6,
				name = "[LPDU] P5 Paradise Regained - Cleave Telegraph Lifecycle",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 222,
				timerEndOffset = 135,
				timerStartOffset = -20,
				uuid = "c8a0b09c-d2bb-892d-9859-568585dfc8aa",
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
							actionLua = "local r=AnyoneCore.Roster;local p=TensorCore.mGetPlayer()\nif r.current()==nil or not r.isReady() or p==nil then return end\nlocal slot=r.mySlot();local s=data.lpdu_paradise;if s==nil then return end\nif s.clear==nil then\n function s.clear()\n  for _,id in ipairs(s.shapes) do Argus.deleteTimedShape(id) end;s.shapes={}\n end\n function s.draw(angle,dist,seconds,text)\n  s.clear();local x=100+math.sin(angle)*dist;local z=100+math.cos(angle)*dist;local t={x=x,y=0,z=z}\n  local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n  local id=d:addTimedCircle(seconds*1000,x,.05,z,.8,0,true,true)\n  if id then table.insert(s.shapes,id) end\n  local player=TensorCore.mGetPlayer();local length=TensorCore.getDistance2d(player.pos,t)\n  if length>1 then id=d:addTimedArrow(seconds*1000,player.pos.x,player.pos.y+.05,player.pos.z,TensorCore.getHeadingToTarget(player.pos,t),math.max(.15,length-1),1,1,1,0,true)\n   if id then table.insert(s.shapes,id) end end\n  AnyoneCore.Shotcall(text,true,seconds,false)\n end\n function s.tower(left,seconds)\n  s.clear();local angle=s.south+(left and -1 or 1)*2*math.pi/3\n  local x=100+math.sin(angle)*7-math.sin(s.south)*1.8\n  local z=100+math.cos(angle)*7-math.cos(s.south)*1.8;local t={x=x,y=0,z=z}\n  local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n  local id=d:addTimedCircle(seconds*1000,x,.05,z,.8,0,true,true)\n  if id then table.insert(s.shapes,id) end\n  local player=TensorCore.mGetPlayer();local length=TensorCore.getDistance2d(player.pos,t)\n  if length>1 then id=d:addTimedArrow(seconds*1000,player.pos.x,player.pos.y+.05,player.pos.z,TensorCore.getHeadingToTarget(player.pos,t),math.max(.15,length-1),1,1,1,0,true)\n   if id then table.insert(s.shapes,id) end end\n  AnyoneCore.Shotcall(left and \"G1 left tower - north edge\" or \"G2 right tower - north edge\",true,seconds,false)\n end\n function s.cone(tank,dark,seconds)\n  if s.coneID then Argus.deleteTimedShape(s.coneID);s.coneID=nil end\n  local id=r.idOf(tank);if id==nil then return end\n  s.coneID=TensorCore.getMoogleDrawer():addTimedConeOnEnt(seconds*1000,s.boss,19,4*math.pi/3,id,0,false,true,(dark and -1 or 1)*math.pi/3,false)\n end\nend\ns.tethers=s.tethers+1\nif s.tethers~=1 then self.used=true;return end\nif s.south==nil or s.dark==nil then self.used=true;return end\nif slot==\"T1\" then s.draw(s.south+math.pi,s.dark and 10 or 2,3,s.dark and \"Bait farthest north\" or \"Bait closest north\")\nelseif slot==\"T2\" then s.draw(s.south+(s.dark and -1 or 1)*math.pi/3,7,3,\"Second cleave - same side\")\nelseif slot==\"H1\" or slot==\"H2\" then s.draw(s.south+math.pi,s.dark and 5 or 8.5,3,s.dark and \"Move north - stand farther in\" or \"Move north - stand farther out\")\nelse s.tower(slot==\"M1\" or slot==\"R1\",6.7) end\nself.used=true",
							conditions = 
							{
								
								{
									"fd67f522-0fda-f5c5-8347-659d60cccc23",
									true,
								},
							},
							name = "Second Cleave and DPS Towers",
							uuid = "a2e6ca54-8cd2-0218-9361-be05b0eecd77",
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
							conditionLua = "return eventArgs ~= nil and (eventArgs.spellID == 39879 or eventArgs.spellID == 39880)",
							name = "Second Cleave and DPS Towers gate",
							uuid = "fd67f522-0fda-f5c5-8347-659d60cccc23",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 2,
				loop = true,
				mechanicTime = 1033.6,
				name = "[LPDU] P5 Paradise Regained - Second Cleave and DPS Towers",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 222,
				timerEndOffset = 135,
				timerStartOffset = -20,
				uuid = "3dd37866-65f0-4c6b-bfa5-bcf3ca4f7c1d",
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
							actionLua = "local r=AnyoneCore.Roster;local p=TensorCore.mGetPlayer()\nif r.current()==nil or not r.isReady() or p==nil then return end\nlocal slot=r.mySlot();local s=data.lpdu_paradise;if s==nil then return end\nif s.clear==nil then\n function s.clear()\n  for _,id in ipairs(s.shapes) do Argus.deleteTimedShape(id) end;s.shapes={}\n end\n function s.draw(angle,dist,seconds,text)\n  s.clear();local x=100+math.sin(angle)*dist;local z=100+math.cos(angle)*dist;local t={x=x,y=0,z=z}\n  local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n  local id=d:addTimedCircle(seconds*1000,x,.05,z,.8,0,true,true)\n  if id then table.insert(s.shapes,id) end\n  local player=TensorCore.mGetPlayer();local length=TensorCore.getDistance2d(player.pos,t)\n  if length>1 then id=d:addTimedArrow(seconds*1000,player.pos.x,player.pos.y+.05,player.pos.z,TensorCore.getHeadingToTarget(player.pos,t),math.max(.15,length-1),1,1,1,0,true)\n   if id then table.insert(s.shapes,id) end end\n  AnyoneCore.Shotcall(text,true,seconds,false)\n end\n function s.tower(left,seconds)\n  s.clear();local angle=s.south+(left and -1 or 1)*2*math.pi/3\n  local x=100+math.sin(angle)*7-math.sin(s.south)*1.8\n  local z=100+math.cos(angle)*7-math.cos(s.south)*1.8;local t={x=x,y=0,z=z}\n  local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n  local id=d:addTimedCircle(seconds*1000,x,.05,z,.8,0,true,true)\n  if id then table.insert(s.shapes,id) end\n  local player=TensorCore.mGetPlayer();local length=TensorCore.getDistance2d(player.pos,t)\n  if length>1 then id=d:addTimedArrow(seconds*1000,player.pos.x,player.pos.y+.05,player.pos.z,TensorCore.getHeadingToTarget(player.pos,t),math.max(.15,length-1),1,1,1,0,true)\n   if id then table.insert(s.shapes,id) end end\n  AnyoneCore.Shotcall(left and \"G1 left tower - north edge\" or \"G2 right tower - north edge\",true,seconds,false)\n end\n function s.cone(tank,dark,seconds)\n  if s.coneID then Argus.deleteTimedShape(s.coneID);s.coneID=nil end\n  local id=r.idOf(tank);if id==nil then return end\n  s.coneID=TensorCore.getMoogleDrawer():addTimedConeOnEnt(seconds*1000,s.boss,19,4*math.pi/3,id,0,false,true,(dark and -1 or 1)*math.pi/3,false)\n end\nend\nif s.castStart==nil or TensorReactions_CurrentTimer<s.castStart+3.3 then return end\nif slot==\"T2\" then AnyoneCore.Shotcall(\"Provoke now\",true,3,false) end\nself.used=true\ns.provokeDone=true",
							conditions = 
							{
								
								{
									"8ac475a9-5623-66ad-b891-ca5b0175676e",
									true,
								},
							},
							name = "OT Provoke Reminder",
							uuid = "f2eb0809-0504-27f2-8867-659d85a76c17",
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
							conditionLua = "return data.lpdu_paradise ~= nil and data.lpdu_paradise.castStart ~= nil and not data.lpdu_paradise.provokeDone",
							name = "OT Provoke Reminder gate",
							uuid = "8ac475a9-5623-66ad-b891-ca5b0175676e",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				loop = true,
				mechanicTime = 1033.6,
				name = "[LPDU] P5 Paradise Regained - OT Provoke Reminder",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 222,
				timerEndOffset = 135,
				timerStartOffset = -20,
				uuid = "99f0377d-5d19-962d-ac00-03cf4e6328e9",
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
							actionLua = "local r=AnyoneCore.Roster;local p=TensorCore.mGetPlayer()\nif r.current()==nil or not r.isReady() or p==nil then return end\nlocal slot=r.mySlot();local s=data.lpdu_paradise;if s==nil then return end\nif s.clear==nil then\n function s.clear()\n  for _,id in ipairs(s.shapes) do Argus.deleteTimedShape(id) end;s.shapes={}\n end\n function s.draw(angle,dist,seconds,text)\n  s.clear();local x=100+math.sin(angle)*dist;local z=100+math.cos(angle)*dist;local t={x=x,y=0,z=z}\n  local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n  local id=d:addTimedCircle(seconds*1000,x,.05,z,.8,0,true,true)\n  if id then table.insert(s.shapes,id) end\n  local player=TensorCore.mGetPlayer();local length=TensorCore.getDistance2d(player.pos,t)\n  if length>1 then id=d:addTimedArrow(seconds*1000,player.pos.x,player.pos.y+.05,player.pos.z,TensorCore.getHeadingToTarget(player.pos,t),math.max(.15,length-1),1,1,1,0,true)\n   if id then table.insert(s.shapes,id) end end\n  AnyoneCore.Shotcall(text,true,seconds,false)\n end\n function s.tower(left,seconds)\n  s.clear();local angle=s.south+(left and -1 or 1)*2*math.pi/3\n  local x=100+math.sin(angle)*7-math.sin(s.south)*1.8\n  local z=100+math.cos(angle)*7-math.cos(s.south)*1.8;local t={x=x,y=0,z=z}\n  local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n  local id=d:addTimedCircle(seconds*1000,x,.05,z,.8,0,true,true)\n  if id then table.insert(s.shapes,id) end\n  local player=TensorCore.mGetPlayer();local length=TensorCore.getDistance2d(player.pos,t)\n  if length>1 then id=d:addTimedArrow(seconds*1000,player.pos.x,player.pos.y+.05,player.pos.z,TensorCore.getHeadingToTarget(player.pos,t),math.max(.15,length-1),1,1,1,0,true)\n   if id then table.insert(s.shapes,id) end end\n  AnyoneCore.Shotcall(left and \"G1 left tower - north edge\" or \"G2 right tower - north edge\",true,seconds,false)\n end\n function s.cone(tank,dark,seconds)\n  if s.coneID then Argus.deleteTimedShape(s.coneID);s.coneID=nil end\n  local id=r.idOf(tank);if id==nil then return end\n  s.coneID=TensorCore.getMoogleDrawer():addTimedConeOnEnt(seconds*1000,s.boss,19,4*math.pi/3,id,0,false,true,(dark and -1 or 1)*math.pi/3,false)\n end\nend\ns.towers=s.towers+1\nif slot==\"M1\" or slot==\"R1\" or slot==\"M2\" or slot==\"R2\" then\n local e=TensorCore.mGetEntity(eventArgs.entityID)\n if e and s.south then\n  local a=s.south+((slot==\"M1\" or slot==\"R1\") and -1 or 1)*2*math.pi/3\n  local dx=e.pos.x-(100+math.sin(a)*7);local dz=e.pos.z-(100+math.cos(a)*7)\n  if dx*dx+dz*dz<4 then s.clear() end\n end\nend\nif s.towers>=3 then s.clear();if s.coneID then Argus.deleteTimedShape(s.coneID);s.coneID=nil end end\nself.used=true",
							conditions = 
							{
								
								{
									"78161c77-74c8-7cec-aa1a-06eed91d8f38",
									true,
								},
							},
							name = "Tower Guidance Cleanup",
							uuid = "d97fefa8-b203-d5fa-b858-9933ac0b2d87",
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
							conditionLua = "return eventArgs ~= nil and eventArgs.spellID == 40320",
							name = "Tower Guidance Cleanup gate",
							uuid = "78161c77-74c8-7cec-aa1a-06eed91d8f38",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 2,
				loop = true,
				mechanicTime = 1033.6,
				name = "[LPDU] P5 Paradise Regained - Tower Guidance Cleanup",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 222,
				timerEndOffset = 135,
				timerStartOffset = -20,
				uuid = "6f226cb2-502d-7d96-a9dd-002dbae465e0",
				version = 2,
			},
		},
	},
	[224] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "bf58d6b8-ca4c-17bc-1e2e-dad67a118348",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[225] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "b183a0e5-bacc-35f9-020e-9ea3561b5335",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[226] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Mitigation",
				uuid = "55189d3e-b417-4ef1-a216-7ac483414370",
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
							actionID = 7560,
							conditions = 
							{
								
								{
									"3d7ea8c3-6ae0-84e7-831a-4552c4eb002b",
									true,
								},
								
								{
									"84940aca-1c93-eb89-9655-b5e7bc14f36b",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Addle 2 Polarizing Strikes 1",
							targetType = "Enemy",
							uuid = "112cc8f7-6729-0073-be4d-f3a13af913e2",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R2 roster",
							uuid = "3d7ea8c3-6ae0-84e7-831a-4552c4eb002b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Polarizing Strikes 1 CD",
							uuid = "84940aca-1c93-eb89-9655-b5e7bc14f36b",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				enabled = false,
				mechanicTime = 1051.2,
				name = "[LPDU] R2 Addle 2 Polarizing Strikes 1",
				timeRange = true,
				timelineIndex = 226,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "d0ee7d74-cf85-d905-8f74-8570ae945afd",
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
							actionID = 25857,
							conditions = 
							{
								
								{
									"e85c54ea-f413-594c-81e8-d5aed902b760",
									true,
								},
								
								{
									"22c316d1-71ef-eb6e-857c-e9203fec45fe",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Magick Barrier Polarizing Strikes 1",
							uuid = "cede3d10-6152-4d85-8412-60f678b71ea9",
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
							jobValue = "REDMAGE",
							name = "REDMAGE job",
							uuid = "e85c54ea-f413-594c-81e8-d5aed902b760",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25857,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Polarizing Strikes 1 CD",
							uuid = "22c316d1-71ef-eb6e-857c-e9203fec45fe",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1051.2,
				name = "[LPDU] Magick Barrier Polarizing Strikes 1",
				timeRange = true,
				timelineIndex = 226,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "0a62c5ed-4898-469b-83b0-66a893605429",
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
							actionID = 7408,
							conditions = 
							{
								
								{
									"8f808d11-d137-4e1d-95ca-e9ae726f994e",
									true,
								},
								
								{
									"b3c5cdd3-866f-8101-aa70-51a7a33ee9da",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Nature's Minne Polarizing Strikes 1",
							uuid = "a8285c1d-e870-3655-b492-9974d9d28cbc",
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
							name = "BARD job",
							uuid = "8f808d11-d137-4e1d-95ca-e9ae726f994e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7408,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Polarizing Strikes 1 CD",
							uuid = "b3c5cdd3-866f-8101-aa70-51a7a33ee9da",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1051.2,
				name = "[LPDU] Nature's Minne Polarizing Strikes 1",
				timeRange = true,
				timelineIndex = 226,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "4e24ef28-33d3-4325-903f-177569a64f8d",
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
							actionID = 65,
							conditions = 
							{
								
								{
									"27f7b8bc-3f6d-9977-8bf2-96fad2d8299a",
									true,
								},
								
								{
									"1dc47929-0617-2955-89b7-d30f4c1429df",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Mantra Polarizing Strikes 1",
							uuid = "9afd4644-2989-d514-a606-f57b5923d92f",
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
							jobValue = "MONK",
							name = "MONK job",
							uuid = "27f7b8bc-3f6d-9977-8bf2-96fad2d8299a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 65,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Polarizing Strikes 1 CD",
							uuid = "1dc47929-0617-2955-89b7-d30f4c1429df",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1051.2,
				name = "[LPDU] Mantra Polarizing Strikes 1",
				timeRange = true,
				timelineIndex = 226,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "bdc36f54-28aa-afb5-94a9-9bf154c11dce",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU",
				uuid = "d49f98a1-86fc-eeee-9d1f-1cbeb0b9beaf",
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
							actionLua = "local r=AnyoneCore.Roster;local p=TensorCore.mGetPlayer()\nif r.current()==nil or not r.isReady() or p==nil then return end\nlocal slot=r.mySlot()\nlocal function clear()\n if data.lpdu_polarizing_shapes then for _,id in ipairs(data.lpdu_polarizing_shapes) do Argus.deleteTimedShape(id) end end\n data.lpdu_polarizing_shapes={}\nend\nlocal function draw(b,h,dist,seconds)\n clear();local x,y,z=TensorCore.getPosInDirection(b.pos,h,dist,true);local t={x=x,y=y,z=z}\n local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n local id=d:addTimedCircle(seconds*1000,x,y+.05,z,1,0,true,true)\n if id then table.insert(data.lpdu_polarizing_shapes,id) end\n local length=TensorCore.getDistance2d(p.pos,t)\n if length>1 then id=d:addTimedArrow(seconds*1000,p.pos.x,p.pos.y+.05,p.pos.z,TensorCore.getHeadingToTarget(p.pos,t),math.max(.15,length-1),1,1,1,0,true)\n if id then table.insert(data.lpdu_polarizing_shapes,id) end end\nend\nlocal function assigned(b,order,seconds)\n local roles={T1=1,T2=1,M1=2,M2=2,R1=3,R2=3,H1=4,H2=4}\n local role=roles[slot];if not role then return end\n local left=slot==\"T1\" or slot==\"M1\" or slot==\"R1\" or slot==\"H1\"\n if role<order then left=not left end\n draw(b,b.pos.h+(left and 1 or -1)*math.pi*.75,role==order and 5 or 9,seconds)\n AnyoneCore.Shotcall(role==order and \"Bait in front\" or \"Stack behind bait\",true,seconds,false)\nend\ndata.lpdu_polarizing_done=0;data.lpdu_polarizing_boss=eventArgs.entityID\nlocal b=TensorCore.mGetEntity(eventArgs.entityID);if b==nil then return end\nassigned(b,1,eventArgs.channelTimeMax+1)\nself.used=true",
							conditions = 
							{
								
								{
									"bfeab76b-e4b2-b1b8-a9c8-d8f77fce9f32",
									true,
								},
							},
							name = "Personal First Bait",
							uuid = "b41960c3-efb5-8837-a97a-b729c03fdb9a",
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
							conditionLua = "return eventArgs ~= nil and eventArgs.spellID == 40316",
							name = "Personal First Bait event",
							uuid = "bfeab76b-e4b2-b1b8-a9c8-d8f77fce9f32",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 3,
				loop = true,
				mechanicTime = 1051.2,
				name = "[LPDU] P5 Polarizing Strikes - Personal First Bait",
				timeRange = true,
				timelineIndex = 226,
				timerEndOffset = 120,
				timerStartOffset = -8,
				uuid = "ccec5805-4a3a-9953-90c3-a22d746b0ddd",
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
							actionLua = "local r=AnyoneCore.Roster;local p=TensorCore.mGetPlayer()\nif r.current()==nil or not r.isReady() or p==nil then return end\nlocal slot=r.mySlot()\nlocal function clear()\n if data.lpdu_polarizing_shapes then for _,id in ipairs(data.lpdu_polarizing_shapes) do Argus.deleteTimedShape(id) end end\n data.lpdu_polarizing_shapes={}\nend\nlocal function draw(b,h,dist,seconds)\n clear();local x,y,z=TensorCore.getPosInDirection(b.pos,h,dist,true);local t={x=x,y=y,z=z}\n local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n local id=d:addTimedCircle(seconds*1000,x,y+.05,z,1,0,true,true)\n if id then table.insert(data.lpdu_polarizing_shapes,id) end\n local length=TensorCore.getDistance2d(p.pos,t)\n if length>1 then id=d:addTimedArrow(seconds*1000,p.pos.x,p.pos.y+.05,p.pos.z,TensorCore.getHeadingToTarget(p.pos,t),math.max(.15,length-1),1,1,1,0,true)\n if id then table.insert(data.lpdu_polarizing_shapes,id) end end\nend\nlocal function assigned(b,order,seconds)\n local roles={T1=1,T2=1,M1=2,M2=2,R1=3,R2=3,H1=4,H2=4}\n local role=roles[slot];if not role then return end\n local left=slot==\"T1\" or slot==\"M1\" or slot==\"R1\" or slot==\"H1\"\n if role<order then left=not left end\n draw(b,b.pos.h+(left and 1 or -1)*math.pi*.75,role==order and 5 or 9,seconds)\n AnyoneCore.Shotcall(role==order and \"Bait in front\" or \"Stack behind bait\",true,seconds,false)\nend\nlocal b=TensorCore.mGetEntity(data.lpdu_polarizing_boss);if b==nil then return end\ndata.lpdu_polarizing_done=(data.lpdu_polarizing_done or 0)+1\ndraw(b,b.pos.h+math.pi,9,2.2)\nAnyoneCore.Shotcall(data.lpdu_polarizing_done==4 and \"Move out\" or \"Dodge line - baiters swap sides\",true,2.2,false)\nself.used=true",
							conditions = 
							{
								
								{
									"98c920c6-b52b-7a8c-9a0a-1067dc1a49cc",
									true,
								},
							},
							name = "Line Dodge and Side Swap",
							uuid = "7f9ca07b-7ea2-f3ef-8113-f39f993b688b",
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
							conditionLua = "return eventArgs ~= nil and eventArgs.spellID == 40317",
							name = "Line Dodge and Side Swap event",
							uuid = "98c920c6-b52b-7a8c-9a0a-1067dc1a49cc",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 2,
				loop = true,
				mechanicTime = 1051.2,
				name = "[LPDU] P5 Polarizing Strikes - Line Dodge and Side Swap",
				timeRange = true,
				timelineIndex = 226,
				timerEndOffset = 120,
				timerStartOffset = -8,
				uuid = "4ce8ceee-bc2e-d7ce-8efd-b6a2706f8ec5",
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
							actionLua = "local r=AnyoneCore.Roster;local p=TensorCore.mGetPlayer()\nif r.current()==nil or not r.isReady() or p==nil then return end\nlocal slot=r.mySlot()\nlocal function clear()\n if data.lpdu_polarizing_shapes then for _,id in ipairs(data.lpdu_polarizing_shapes) do Argus.deleteTimedShape(id) end end\n data.lpdu_polarizing_shapes={}\nend\nlocal function draw(b,h,dist,seconds)\n clear();local x,y,z=TensorCore.getPosInDirection(b.pos,h,dist,true);local t={x=x,y=y,z=z}\n local d=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0,1,0,.45),2,1)\n local id=d:addTimedCircle(seconds*1000,x,y+.05,z,1,0,true,true)\n if id then table.insert(data.lpdu_polarizing_shapes,id) end\n local length=TensorCore.getDistance2d(p.pos,t)\n if length>1 then id=d:addTimedArrow(seconds*1000,p.pos.x,p.pos.y+.05,p.pos.z,TensorCore.getHeadingToTarget(p.pos,t),math.max(.15,length-1),1,1,1,0,true)\n if id then table.insert(data.lpdu_polarizing_shapes,id) end end\nend\nlocal function assigned(b,order,seconds)\n local roles={T1=1,T2=1,M1=2,M2=2,R1=3,R2=3,H1=4,H2=4}\n local role=roles[slot];if not role then return end\n local left=slot==\"T1\" or slot==\"M1\" or slot==\"R1\" or slot==\"H1\"\n if role<order then left=not left end\n draw(b,b.pos.h+(left and 1 or -1)*math.pi*.75,role==order and 5 or 9,seconds)\n AnyoneCore.Shotcall(role==order and \"Bait in front\" or \"Stack behind bait\",true,seconds,false)\nend\nlocal done=data.lpdu_polarizing_done\nif done==nil then return end\nif done>=4 then clear();self.used=true;return end\nlocal b=TensorCore.mGetEntity(data.lpdu_polarizing_boss);if b==nil then return end\nassigned(b,done+1,2.8)\nself.used=true",
							conditions = 
							{
								
								{
									"6bb4dabb-ddf7-5fbc-8a96-f85a6239cbf9",
									true,
								},
							},
							name = "Next Role Bait",
							uuid = "976c80bd-5154-ef20-a33a-7265ff40b300",
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
							conditionLua = "return eventArgs ~= nil and eventArgs.spellID == 40119",
							name = "Next Role Bait event",
							uuid = "6bb4dabb-ddf7-5fbc-8a96-f85a6239cbf9",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 2,
				loop = true,
				mechanicTime = 1051.2,
				name = "[LPDU] P5 Polarizing Strikes - Next Role Bait",
				timeRange = true,
				timelineIndex = 226,
				timerEndOffset = 120,
				timerStartOffset = -8,
				uuid = "f586a299-f0fa-da0e-b04a-5b2dbe2df08b",
				version = 2,
			},
		},
	},
	[227] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "2904c4ff-98af-2a13-8a16-6cc94c70cb8f",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[228] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "4cfa9f2c-5baa-7b08-dce2-b542a25055fc",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[229] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "c80fdee9-c805-edf5-58dc-655fff594439",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[230] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "878e3867-0e3e-2783-2e19-6dcd4a3ee8b7",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[231] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "53d4826a-f474-cdb6-abf4-6f0024170dfa",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[232] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "735d9f6d-cad8-9829-abfa-9747d688ea3d",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[233] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "d98a8420-5b02-516c-aa1d-314aa4d99a70",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Ranged] rDPS Mit",
				uuid = "4b24a44e-85ea-46a4-a0d0-f96583583529",
				version = 2,
			},
			inheritedObjectUUID = "3aadbb97-6614-11ad-8e86-07acf8642889",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[BRD] Nature's Minne",
				uuid = "d4f9730a-5ec0-f12a-80e2-59c23c640ad7",
				version = 2,
			},
			inheritedObjectUUID = "83fd8aac-94e9-2cd3-a0d9-77fb30fc00a9",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[236] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "06f7a319-8966-42fd-5211-1c934e9b8b69",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU",
				uuid = "592249a2-0f29-2f3d-9a02-08d57dd6ac01",
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
							aType = "Alert",
							alertDuration = 4000,
							alertPriority = 3,
							alertTTS = true,
							alertText = "Tank LB now",
							conditions = 
							{
								
								{
									"aaab06ad-ee15-0fd6-a10b-a092f24948db",
									true,
								},
							},
							uuid = "4b1998ae-b182-818b-b3b5-27868fa6cc6d",
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
							conditionLua = "local r=AnyoneCore.Roster; if r.current()==nil then return false end; local s=r.mySlot();return s==\"T1\" or s==\"T2\"",
							name = "Tanks only",
							uuid = "aaab06ad-ee15-0fd6-a10b-a092f24948db",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				mechanicTime = 1085.2,
				name = "[LPDU] P5 Pandora's Box - Tank LB Reminder",
				timeRange = true,
				timelineIndex = 236,
				timerEndOffset = -5.4,
				timerStartOffset = -6,
				uuid = "46c7ea4a-8589-dc1a-ae7d-31fa4d1ea838",
				version = 2,
			},
		},
	},
	[237] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "26d178dc-d12c-f730-d171-3606d3864bac",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Melee] Feint (Primary)",
				uuid = "d551e03c-f1d9-c8d7-b187-29a004963e04",
				version = 2,
			},
			inheritedObjectUUID = "bfde68cc-df8f-8063-81d6-6b9aba864fd0",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[VPR] Feint (Primary)",
				uuid = "87384a71-0239-5dd6-984e-298eb7db5245",
				version = 2,
			},
			inheritedObjectUUID = "e44d74a3-3280-520a-b76f-b7aef590dde0",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[Caster] Addle (Secondary)",
				uuid = "288c2dbc-ee53-93d7-83d5-ab6eae6e5ed5",
				version = 2,
			},
			inheritedObjectUUID = "231023f0-79b9-7670-a7fe-423456a3369b",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU_megaminx_indicator",
				uuid = "9d172a99-31e2-dba5-a26c-33fbd4f90ce9",
			},
			inheritanceRoot = "FRU_megaminx_indicator",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Draw Exasquares",
				uuid = "aa3724e4-f283-db62-a1d4-a2806a8b39bd",
				version = 2,
			},
			inheritedObjectUUID = "afb07684-cdb0-e2f9-ab7c-916c59fa1215",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Draw Exasquares3",
				uuid = "acde0298-fdd6-3f04-a533-c8c530c811b0",
				version = 2,
			},
			inheritedObjectUUID = "cb4c2f58-5a95-c7ad-88be-fd77a6e4e5ca",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU",
				uuid = "45606824-62f3-1999-9833-ed44cd4773c1",
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
							actionLua = "local drawer = TensorCore.getCachedDrawer(1275068160, 1006895359, 1174667519)\nlocal ent = TensorCore.mGetEntity(eventArgs.entityID)\n--drawer:addTimedRect(8000, ent.pos.x, ent.pos.y, ent.pos.z, 40, 10, ent.pos.h, 0, true)\n\nlocal dumbshit = TensorCore.getPosInDirection(ent.pos,ent.pos.h,2.5)\ndrawer:addTimedCenteredRect(7000,dumbshit.x,0,dumbshit.z,5,40,ent.pos.h,0,true)\n\nfor i=1,8 do\n    local pos = TensorCore.getPosInDirection(dumbshit,ent.pos.h,5*(i))\n    drawer:addTimedCenteredRect(2000,pos.x,0,pos.z,5,40,ent.pos.h,7000+(2000*(i-1)),true)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"73223fa2-28be-aadd-8eae-9ff744837679",
									true,
								},
							},
							uuid = "3810d340-1142-dda2-a544-473264d5895d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 3,
							eventArgType = 2,
							spellIDList = 
							{
								40118,
								40307,
							},
							uuid = "73223fa2-28be-aadd-8eae-9ff744837679",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 3,
				loop = true,
				mechanicTime = 1097.4,
				name = "Draw Exasquares [LPDU]",
				timeRange = true,
				timelineIndex = 237,
				timerEndOffset = 30,
				timerStartOffset = -30,
				uuid = "3eedfcb3-9eeb-0d74-ac4b-12fe4bd388bd",
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
							actionLua = "if data.p5_exa2 == nil then data.p5_exa2 = {} end\nif data.p5_exa2_filtered_ent == nil then data.p5_exa2_filtered_ent = {} end\nlocal ent = TensorCore.mGetEntity(eventArgs.entityID)\ntable.insert(data.p5_exa2,{pos = ent.pos})\nif table.size(data.p5_exa2) == 8 then\n    local cross = (data.p5_exa2[1].pos.x - 100) * (data.p5_exa2[5].pos.z-100) - (data.p5_exa2[1].pos.z-100) * (data.p5_exa2[5].pos.x-100)\n    if cross < 0 then\n        TensorCore.addAlertText(20000,\"right\",1,1,true)\n    else\n        TensorCore.addAlertText(20000,\"left\",1,1,true)\n    end\nend\nlocal function normalizeTo2Pi(r)\n    local TWO_PI = 2 * math.pi\n    r = r % TWO_PI\n    if r < 0 then\n        r = r + TWO_PI\n    end\n    return r\nend\nlocal function lineIntersectionXZ(pos1, pos2)\n    -- Extract coordinates and headings\n    local x1, z1, h1 = pos1.x, pos1.z, pos1.h + math.pi/2\n    local x2, z2, h2 = pos2.x, pos2.z, pos2.h + math.pi/2\n    \n    -- Precompute deltas\n    local dx = x2 - x1\n    local dz = z2 - z1\n    \n    -- Compute the determinant (sin(h1 - h2))\n    local denom = math.sin(h1 - h2)\n    \n    d(h1-h2)\n    -- If denom is 0 (or very close to 0), lines are parallel or coincident\n    if math.abs(denom) < 1e-12 then\n        return nil  -- No unique intersection\n    end\n    \n    -- Solve for parameter t on line 1\n    local t = ((dx) * math.cos(h2) - dz * math.sin(h2)) / denom\n    \n    -- Intersection point using line 1's parametric form\n    local Xi = x1 + t * math.sin(h1)\n    local Zi = z1 + t * math.cos(h1)\n\n    local north = (pos1.h + pos2.h) / 2\n    if (math.abs(north - pos1.h)) < (math.pi /2) then\n        north = north + math.pi\n    end\n    north = north + math.pi\n    \n    return { x = Xi, y = 0, z = Zi , h = north}\nend\n\nlocal heading2center = normalizeTo2Pi(TensorCore.getHeadingToTarget(ent.pos,{x=100,y=0,z=100}))\nif math.abs(heading2center - normalizeTo2Pi(ent.pos.h)) < 1 or  math.abs(heading2center - normalizeTo2Pi(ent.pos.h)) > 6 then\n    table.insert(data.p5_exa2_filtered_ent,ent.pos)\nend\nlocal green = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0/255, 255/255, 0/255, .25),2)\n\nif table.size(data.p5_exa2_filtered_ent) == 4 then\n    local cross = (data.p5_exa2[1].pos.x - 100) * (data.p5_exa2[5].pos.z-100) - (data.p5_exa2[1].pos.z-100) * (data.p5_exa2[5].pos.x-100)\n    local findapos = lineIntersectionXZ(data.p5_exa2_filtered_ent[1],data.p5_exa2_filtered_ent[2])\n    local newpos = TensorCore.getPosInDirection(findapos,findapos.h,5.412)\n    newpos.h = findapos.h\n    if cross > 0 then --left\n        local furthest = TensorCore.getPosInDirection(newpos,newpos.h - math.pi/2.667 , 7.07)\n        local midpoint = TensorCore.getPosInDirection(newpos,newpos.h - math.pi/2.667 , 7.07 - 5)\n        local nextpoint = TensorCore.getPosInDirection(newpos,newpos.h , 5.412)\n        green:addTimedRect(6000,furthest.x,0,furthest.z,TensorCore.getDistance2d(furthest,midpoint),.1,TensorCore.getHeadingToTarget(furthest,midpoint),0,true)\n        green:addTimedRect(6000,midpoint.x,0,midpoint.z,TensorCore.getDistance2d(midpoint,nextpoint),.1,TensorCore.getHeadingToTarget(midpoint,nextpoint),0,true)\n        green:addTimedRect(6000,nextpoint.x,0,nextpoint.z,TensorCore.getDistance2d(nextpoint,furthest),.1,TensorCore.getHeadingToTarget(nextpoint,furthest),0,true)\n    else\n        local furthest = TensorCore.getPosInDirection(newpos,newpos.h + math.pi/2.667 , 7.07)\n        local midpoint = TensorCore.getPosInDirection(newpos,newpos.h + math.pi/2.667 , 7.07 - 5)\n        local nextpoint = TensorCore.getPosInDirection(newpos,newpos.h , 5.412)\n        green:addTimedRect(6000,furthest.x,0,furthest.z,TensorCore.getDistance2d(furthest,midpoint),.1,TensorCore.getHeadingToTarget(furthest,midpoint),0,true)\n        green:addTimedRect(6000,midpoint.x,0,midpoint.z,TensorCore.getDistance2d(midpoint,nextpoint),.1,TensorCore.getHeadingToTarget(midpoint,nextpoint),0,true)\n        green:addTimedRect(6000,nextpoint.x,0,nextpoint.z,TensorCore.getDistance2d(nextpoint,furthest),.1,TensorCore.getHeadingToTarget(nextpoint,furthest),0,true)\n    end\n\n    findapos = lineIntersectionXZ(data.p5_exa2_filtered_ent[3],data.p5_exa2_filtered_ent[4])\n    newpos = TensorCore.getPosInDirection(findapos,findapos.h,5.412)\n    newpos.h = findapos.h\n    if cross > 0 then --left\n        local furthest = TensorCore.getPosInDirection(newpos,newpos.h - math.pi/2.667 , 7.07)\n        local midpoint = TensorCore.getPosInDirection(newpos,newpos.h - math.pi/2.667 , 7.07 - 5)\n        local nextpoint = TensorCore.getPosInDirection(newpos,newpos.h , 5.412)\n        green:addTimedRect(4000,furthest.x,0,furthest.z,TensorCore.getDistance2d(furthest,midpoint),.1,TensorCore.getHeadingToTarget(furthest,midpoint),6000,true)\n        green:addTimedRect(4000,midpoint.x,0,midpoint.z,TensorCore.getDistance2d(midpoint,nextpoint),.1,TensorCore.getHeadingToTarget(midpoint,nextpoint),6000,true)\n        green:addTimedRect(4000,nextpoint.x,0,nextpoint.z,TensorCore.getDistance2d(nextpoint,furthest),.1,TensorCore.getHeadingToTarget(nextpoint,furthest),6000,true)\n    else\n        local furthest = TensorCore.getPosInDirection(newpos,newpos.h + math.pi/2.667 , 7.07)\n        local midpoint = TensorCore.getPosInDirection(newpos,newpos.h + math.pi/2.667 , 7.07 - 5)\n        local nextpoint = TensorCore.getPosInDirection(newpos,newpos.h , 5.412)\n        green:addTimedRect(4000,furthest.x,0,furthest.z,TensorCore.getDistance2d(furthest,midpoint),.1,TensorCore.getHeadingToTarget(furthest,midpoint),6000,true)\n        green:addTimedRect(4000,midpoint.x,0,midpoint.z,TensorCore.getDistance2d(midpoint,nextpoint),.1,TensorCore.getHeadingToTarget(midpoint,nextpoint),6000,true)\n        green:addTimedRect(4000,nextpoint.x,0,nextpoint.z,TensorCore.getDistance2d(nextpoint,furthest),.1,TensorCore.getHeadingToTarget(nextpoint,furthest),6000,true)\n    end\nend\nif table.size(data.p5_exa2_filtered_ent) == 6 then\n    local cross = (data.p5_exa2[1].pos.x - 100) * (data.p5_exa2[5].pos.z-100) - (data.p5_exa2[1].pos.z-100) * (data.p5_exa2[5].pos.x-100)\n    local findapos = lineIntersectionXZ(data.p5_exa2_filtered_ent[5],data.p5_exa2_filtered_ent[6])\n    local newpos = TensorCore.getPosInDirection(findapos,findapos.h,5.412)\n    newpos.h = findapos.h\n    if cross > 0 then --left\n        local furthest = TensorCore.getPosInDirection(newpos,newpos.h - math.pi/2.667 , 7.07)\n        local midpoint = TensorCore.getPosInDirection(newpos,newpos.h - math.pi/2.667 , 7.07 - 5)\n        local nextpoint = TensorCore.getPosInDirection(newpos,newpos.h , 5.412)\n        green:addTimedRect(6000,furthest.x,0,furthest.z,TensorCore.getDistance2d(furthest,midpoint),.1,TensorCore.getHeadingToTarget(furthest,midpoint),6000,true)\n        green:addTimedRect(6000,midpoint.x,0,midpoint.z,TensorCore.getDistance2d(midpoint,nextpoint),.1,TensorCore.getHeadingToTarget(midpoint,nextpoint),6000,true)\n        green:addTimedRect(6000,nextpoint.x,0,nextpoint.z,TensorCore.getDistance2d(nextpoint,furthest),.1,TensorCore.getHeadingToTarget(nextpoint,furthest),6000,true)\n    else\n        local furthest = TensorCore.getPosInDirection(newpos,newpos.h + math.pi/2.667 , 7.07)\n        local midpoint = TensorCore.getPosInDirection(newpos,newpos.h + math.pi/2.667 , 7.07 - 5)\n        local nextpoint = TensorCore.getPosInDirection(newpos,newpos.h , 5.412)\n        green:addTimedRect(6000,furthest.x,0,furthest.z,TensorCore.getDistance2d(furthest,midpoint),.1,TensorCore.getHeadingToTarget(furthest,midpoint),6000,true)\n        green:addTimedRect(6000,midpoint.x,0,midpoint.z,TensorCore.getDistance2d(midpoint,nextpoint),.1,TensorCore.getHeadingToTarget(midpoint,nextpoint),6000,true)\n        green:addTimedRect(6000,nextpoint.x,0,nextpoint.z,TensorCore.getDistance2d(nextpoint,furthest),.1,TensorCore.getHeadingToTarget(nextpoint,furthest),6000,true)\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"6fbc798f-d74b-249c-bd9f-d758dae2cbb2",
									true,
								},
							},
							uuid = "fa679a9d-7f60-5514-bc75-2928cb79b110",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 3,
							eventArgType = 2,
							spellIDList = 
							{
								40118,
								40307,
							},
							uuid = "6fbc798f-d74b-249c-bd9f-d758dae2cbb2",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 3,
				loop = true,
				mechanicTime = 1097.4,
				name = "Draw Exasquares3 [LPDU]",
				timeRange = true,
				timelineIndex = 237,
				timerEndOffset = 30,
				timerStartOffset = -30,
				uuid = "adcf6cd7-0479-770c-bdec-1428bb94b4ca",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Potion",
				uuid = "8f5ccd81-f89e-e476-90d3-3f51b2d4f8fb",
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
							aType = "Alert",
							alertDuration = 3000,
							alertPriority = 2,
							alertText = "[LPDU] Use potion",
							name = "[LPDU] Use potion",
							uuid = "ddcaef6e-fb63-9960-b21c-c688cd09fc8d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Potion",
				mechanicTime = 1097.4,
				name = "[LPDU] Use potion - P5 second Fulgent",
				throttleTime = 3000,
				timeRange = true,
				timelineIndex = 237,
				timerEndOffset = 6,
				timerStartOffset = 1,
				uuid = "148afa8e-b450-dc0c-8c49-f25aceadc44f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Mitigation",
				uuid = "a72d09cd-f111-5657-9e5e-bbbb8d505fe1",
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
							actionID = 7549,
							conditions = 
							{
								
								{
									"9c584b51-618a-0b54-abe7-017577c5eca7",
									true,
								},
								
								{
									"805e28d8-7d64-4549-af64-2ee2d9b48b2b",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] M1 Feint Fulgent Blade",
							targetType = "Enemy",
							uuid = "65772e9b-29fe-7111-bcba-cfb853198835",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"M1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "M1 roster",
							uuid = "9c584b51-618a-0b54-abe7-017577c5eca7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Fulgent Blade CD",
							uuid = "805e28d8-7d64-4549-af64-2ee2d9b48b2b",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1097.4,
				name = "[LPDU] M1 Feint Fulgent Blade",
				timeRange = true,
				timelineIndex = 237,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "2375d6e6-eae1-bc3d-9133-c4969da9c17f",
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
							actionID = 7405,
							conditions = 
							{
								
								{
									"686dcdf8-336f-48e9-ab93-010d8d0fbe89",
									true,
								},
								
								{
									"878cc029-f938-3723-8424-3933bb29f0db",
									true,
								},
								
								{
									"fa08f0b5-a23b-e6f9-b8bd-a5690b869e7d",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Troubadour - Fulgent Blade 2",
							uuid = "6186c4f7-c6eb-8f47-8c54-88bfdb18e90e",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							conditions = 
							{
								
								{
									"686dcdf8-336f-48e9-ab93-010d8d0fbe89",
									true,
								},
								
								{
									"97ae3a25-2565-39a1-a6ae-a57b1e26bf84",
									true,
								},
								
								{
									"c84a07eb-0438-8c50-af61-0d15211a1316",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Tactician - Fulgent Blade 2",
							uuid = "a5389d31-5a6e-ca16-aec3-867c73e98514",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							conditions = 
							{
								
								{
									"686dcdf8-336f-48e9-ab93-010d8d0fbe89",
									true,
								},
								
								{
									"f66f739f-e54a-fd78-81cd-3e2174e7cd5c",
									true,
								},
								
								{
									"77e9a76b-06d9-acb3-8230-53c3ff7602e8",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Shield Samba - Fulgent Blade 2",
							uuid = "644edf3d-05f0-e8ab-b272-a41e2a0d49cc",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R1 roster",
							uuid = "686dcdf8-336f-48e9-ab93-010d8d0fbe89",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Troubadour job",
							uuid = "878cc029-f938-3723-8424-3933bb29f0db",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7405,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "fa08f0b5-a23b-e6f9-b8bd-a5690b869e7d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Tactician job",
							uuid = "97ae3a25-2565-39a1-a6ae-a57b1e26bf84",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "c84a07eb-0438-8c50-af61-0d15211a1316",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Shield Samba job",
							uuid = "f66f739f-e54a-fd78-81cd-3e2174e7cd5c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "77e9a76b-06d9-acb3-8230-53c3ff7602e8",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1097.4,
				name = "[LPDU] R1 Phys Ranged - Fulgent Blade 2",
				timeRange = true,
				timelineIndex = 237,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "cdf3e1dd-5355-9170-b754-54b04f540301",
				version = 2,
			},
		},
	},
	[240] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "a3555282-f052-7556-1464-43ec1bb33352",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[242] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "4be33e58-76d3-b10c-add6-c036933e8c68",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[243] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "f74be905-5c3a-0749-c7a0-1a03909e35d5",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[MNK] Mantra",
				uuid = "5ec1faf4-4786-56b6-a82b-cb87c128f07c",
				version = 2,
			},
			inheritedObjectUUID = "ba36cad2-7242-bde9-a806-90e7703a065b",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Mitigation",
				uuid = "ecd64bd8-1065-cbdb-9003-f90432d6ec84",
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
							actionID = 7549,
							conditions = 
							{
								
								{
									"ba075dad-8536-1993-80d4-ab69da8eb5ce",
									true,
								},
								
								{
									"2b89ef77-c51e-18bb-b410-ed7a4c34105a",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] M2 Feint P5 Akh Morn 2",
							targetType = "Enemy",
							uuid = "124be802-e74b-890e-b097-588c13c3e66b",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"M2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "M2 roster",
							uuid = "ba075dad-8536-1993-80d4-ab69da8eb5ce",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "P5 Akh Morn 2 CD",
							uuid = "2b89ef77-c51e-18bb-b410-ed7a4c34105a",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1124,
				name = "[LPDU] M2 Feint P5 Akh Morn 2",
				timeRange = true,
				timelineIndex = 243,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "2c669e44-c44e-0bd2-a0ae-23adbb3a9756",
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
							actionID = 7560,
							conditions = 
							{
								
								{
									"8467809b-df77-5823-8aeb-e49af840d655",
									true,
								},
								
								{
									"71219935-e328-4176-a4a8-a6e24487c305",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Addle P5 Akh Morn 2",
							targetType = "Enemy",
							uuid = "f43eb87f-d59d-8c5c-98b3-086620b823e2",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R1 roster",
							uuid = "8467809b-df77-5823-8aeb-e49af840d655",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "P5 Akh Morn 2 CD",
							uuid = "71219935-e328-4176-a4a8-a6e24487c305",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1124,
				name = "[LPDU] R1 Addle P5 Akh Morn 2",
				timeRange = true,
				timelineIndex = 243,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "7574aaf1-1bfd-db71-87d8-ddbdd25a7e18",
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
							actionID = 7405,
							conditions = 
							{
								
								{
									"e39e670a-d6a3-8483-8880-1bc02109e8fb",
									true,
								},
								
								{
									"7d1cbfa8-66c7-b686-b741-4c0107cadfad",
									true,
								},
								
								{
									"1e377e28-6e21-110f-be89-7a4775c4f170",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Troubadour - P5 Akh Morn 2",
							uuid = "bc8411ba-cdfd-9e1c-ba9a-ba1fbf6a957f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							conditions = 
							{
								
								{
									"e39e670a-d6a3-8483-8880-1bc02109e8fb",
									true,
								},
								
								{
									"1274f670-6869-1a9c-8fad-2bcedf5c6398",
									true,
								},
								
								{
									"40bcb82b-4106-9b8a-8295-67000db15405",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Tactician - P5 Akh Morn 2",
							uuid = "f9439fa7-bf12-ef18-bd84-bd8b44e0d6cb",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							conditions = 
							{
								
								{
									"e39e670a-d6a3-8483-8880-1bc02109e8fb",
									true,
								},
								
								{
									"273c544e-d7a1-e728-9080-9fb165af4c62",
									true,
								},
								
								{
									"c3cc58b0-d1dc-c085-9c7a-21ae641940a9",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Shield Samba - P5 Akh Morn 2",
							uuid = "78f082fe-5aed-9d22-a9ee-083b58745f78",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R2 roster",
							uuid = "e39e670a-d6a3-8483-8880-1bc02109e8fb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Troubadour job",
							uuid = "7d1cbfa8-66c7-b686-b741-4c0107cadfad",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7405,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "1e377e28-6e21-110f-be89-7a4775c4f170",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Tactician job",
							uuid = "1274f670-6869-1a9c-8fad-2bcedf5c6398",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "40bcb82b-4106-9b8a-8295-67000db15405",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Shield Samba job",
							uuid = "273c544e-d7a1-e728-9080-9fb165af4c62",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "c3cc58b0-d1dc-c085-9c7a-21ae641940a9",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1124,
				name = "[LPDU] R2 Phys Ranged - P5 Akh Morn 2",
				timeRange = true,
				timelineIndex = 243,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "c93ae085-a3a4-8589-adb6-b7b30059f168",
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
							actionID = 34686,
							conditions = 
							{
								
								{
									"1f059e48-60ad-8952-8ebd-a133a9f2739f",
									true,
								},
								
								{
									"c5ad95c3-edf6-c10a-ab8c-29cb87668675",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Tempera Grassa P5 Akh Morn 2",
							uuid = "43162887-3e4c-053e-92ec-69de60042ce6",
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
							jobValue = "PICTOMANCER",
							name = "PICTOMANCER job",
							uuid = "1f059e48-60ad-8952-8ebd-a133a9f2739f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 34686,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "P5 Akh Morn 2 CD",
							uuid = "c5ad95c3-edf6-c10a-ab8c-29cb87668675",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1124,
				name = "[LPDU] Tempera Grassa P5 Akh Morn 2",
				timeRange = true,
				timelineIndex = 243,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "b7a4a22e-0222-5f3c-a2f7-b23efbb48d67",
				version = 2,
			},
		},
	},
	[245] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "8c6c85cb-0b4f-1817-42c8-357d138a6c1b",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Melee] Feint (Secondary)",
				uuid = "8048d2a4-b1ca-2847-a2d6-cc49875da77f",
				version = 2,
			},
			inheritedObjectUUID = "2277754c-f53d-4bcd-a1eb-83e8c4c107a0",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[VPR] Feint (Secondary)",
				uuid = "39ba3019-728c-5b40-b6d6-15944ef17e79",
				version = 2,
			},
			inheritedObjectUUID = "cb10049e-4fb0-54ae-8d9d-97acfcf8a8fe",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[Caster] Addle (Primary)",
				uuid = "eeb69dac-16a2-6c8d-95e7-f4b28b11ff5e",
				version = 2,
			},
			inheritedObjectUUID = "ca7c5778-0cbb-84d2-9065-06b4310536f7",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[247] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "106fd2d1-4ad5-0d9d-b0e7-60f778544361",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[249] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "4542efd7-6be8-b10b-95aa-f07126a3a827",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[250] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "cf8fa6b5-4651-c2f9-f17a-2c9f7dd79585",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[251] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "f385d6c8-55d1-a4bc-0cda-5882d26eead8",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU_megaminx_indicator",
				uuid = "8d68146d-0a5e-2579-6246-2e1fe1e4387d",
			},
			inheritanceRoot = "FRU_megaminx_indicator",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "draw TB2",
				uuid = "0ea8a62d-cfad-7480-acd5-2bb848fa0c6f",
				version = 2,
			},
			inheritedObjectUUID = "b53056e1-b672-4a17-8d7b-a86cea6bcc03",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "get TB2",
				uuid = "a99b16fe-78be-f3e3-a9ab-1cd388cdb496",
				version = 2,
			},
			inheritedObjectUUID = "b988eac3-0391-68ea-acc2-9daa092637b9",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "get tower2",
				uuid = "6d0c78db-0195-5445-a584-db816e7c93d7",
				version = 2,
			},
			inheritedObjectUUID = "5358d257-c02c-35f1-824b-5bcb43ae4cee",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "channel tts",
				uuid = "63743ff0-9ceb-d5ff-b677-5e626f7cb5d4",
				version = 2,
			},
			inheritedObjectUUID = "6b9cf487-a1f2-6eac-83cc-9ff43db0b1ab",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU",
				uuid = "b32813aa-1a36-3419-81f5-2264f9c3752a",
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
							actionLua = "if data.megaminx_p5_tb2_startTime == nil then data.megaminx_p5_tb2_startTime = Now() end\nlocal yellow = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(255/255, 255/255, 0/255, .25),2)\nlocal purple = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(255/255, 0/255, 255/255, .25),2)\nlocal green = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0/255, 255/255, 0/255, .25),2)\nlocal center = {x = 100, y = 0,z = 100}\nlocal p = TensorCore.mGetPlayer()\nlocal roster = AnyoneCore and AnyoneCore.Roster\nif not roster or not roster.isReady() or not p then return end\nif not data.megaminx_p5_tb2 or not data.megaminx_p5_tb2_tower then return end\nlocal towerpos\nif table.size(data.megaminx_p5_tb2_tower) > 0 then\n    if data.megaminx_p5_tb2_tower[1] == 51 then --nw\n        local heading = TensorCore.getHeadingToTarget(center, {x = 100, y = 0, z = 107})  - math.pi / 3 * 2\n        towerpos = TensorCore.getPosInDirection(center,heading,7)\n    end\n    if data.megaminx_p5_tb2_tower[1] == 52 then --ne\n        local heading = TensorCore.getHeadingToTarget(center, {x = 100, y = 0, z = 107})  + math.pi / 3 * 2\n        towerpos = TensorCore.getPosInDirection(center,heading,7)\n    end\n    if data.megaminx_p5_tb2_tower[1] == 53 then --s\n        towerpos = {x = 100, y = 0, z = 107}\n    end\nend\nlocal mt = TensorCore.mGetEntity(data.megaminx_p5_tb2.mt)\nlocal ot = TensorCore.mGetEntity(data.megaminx_p5_tb2.ot)\nif not towerpos or not mt or not ot then return end\ngreen:addCircle(towerpos.x,towerpos.y,towerpos.z,3,true)\nlocal mySlot = roster.mySlot()\nlocal towerHeading = TensorCore.getHeadingToTarget(center, towerpos)\nlocal rolePos\nif mySlot == \"H1\" or mySlot == \"H2\" then\n    rolePos = towerpos\nelseif mySlot == \"M1\" or mySlot == \"R1\" then\n    rolePos = TensorCore.getPosInDirection(center, towerHeading - 2 * math.pi / 3, 7)\nelseif mySlot == \"M2\" or mySlot == \"R2\" then\n    rolePos = TensorCore.getPosInDirection(center, towerHeading + 2 * math.pi / 3, 7)\nend\nif rolePos then\n    green:addCircle(rolePos.x, 0, rolePos.z, 1.5, true)\n    local length = TensorCore.getDistance2d(p.pos, rolePos)\n    if length > 1 then\n        green:addArrow(p.pos.x, 0, p.pos.z, TensorCore.getHeadingToTarget(p.pos, rolePos), length, 1, 1, 1, true)\n    end\nend\nif TimeSince(data.megaminx_p5_tb2_startTime) < 7000 then\n    --draw first part on mt\n    if data.megaminx_p5_tb2.spell == 40313 then --light\n        yellow:addCone(100,0,100,30,math.pi + math.pi/6,TensorCore.getHeadingToTarget(center,mt.pos) - math.pi/6 + 105 * math.pi/180, true)\n        if p.id == ot.id then\n            if towerpos then\n                local heading = TensorCore.getHeadingToTarget(center,towerpos) + math.pi/3\n                green:addArrow(100,0,100,heading,8,1,1,1,true)\n            end\n        end\n    end\n    if data.megaminx_p5_tb2.spell == 40233 then --dark\n        purple:addCone(100,0,100,30,math.pi + math.pi/6,TensorCore.getHeadingToTarget(center,mt.pos) + math.pi/6 - 105 * math.pi/180, true)\n        if p.id == ot.id then\n            if towerpos then\n                local heading = TensorCore.getHeadingToTarget(center,towerpos) - math.pi/3\n                green:addArrow(100,0,100,heading,8,1,1,1,true)\n            end\n        end\n    end\nelse\n    --draw second part on ot\n    if data.megaminx_p5_tb2.spell == 40313 then --light\n        purple:addCone(100,0,100,30,math.pi + math.pi/6,TensorCore.getHeadingToTarget(center,ot.pos) + math.pi/6 - 105 * math.pi/180, true)\n        if p.id == ot.id then\n            if towerpos then\n                local heading = TensorCore.getHeadingToTarget(center,towerpos) + math.pi/3\n                green:addArrow(100,0,100,heading,8,1,1,1,true)\n            end\n        end\n    end\n    if data.megaminx_p5_tb2.spell == 40233 then --dark\n        yellow:addCone(100,0,100,30,math.pi + math.pi/6,TensorCore.getHeadingToTarget(center,ot.pos) - math.pi/6 + 105 * math.pi/180, true)\n        if p.id == ot.id then\n            if towerpos then\n                local heading = TensorCore.getHeadingToTarget(center,towerpos) - math.pi/3\n                green:addArrow(100,0,100,heading,8,1,1,1,true)\n            end\n        end\n    end\nend\n--table.insert(data.megaminx_p5_tb2,{spell = eventArgs.spellID, mt = mt.id, ot = ot.id})\nself.used = true",
							conditions = 
							{
								
								{
									"e85dba73-0fb8-f841-a749-0ae8181db0e8",
									true,
								},
							},
							uuid = "840fac58-5e59-6b0a-9d2d-43a05ee42aaf",
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
							conditionLua = "return table.size(data.megaminx_p5_tb2) > 0",
							dequeueIfLuaFalse = true,
							uuid = "e85dba73-0fb8-f841-a749-0ae8181db0e8",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				enabled = false,
				eventType = 12,
				mechanicTime = 1150.3,
				name = "draw TB2 [LPDU]",
				timeRange = true,
				timelineIndex = 251,
				timerStartOffset = -30,
				uuid = "56582cd6-d9fd-9168-aeec-9c317472ca5d",
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
							actionLua = "if data.megaminx_p5_tb2_tower == nil then data.megaminx_p5_tb2_tower = {} end\ntable.insert(data.megaminx_p5_tb2_tower,eventArgs.a1)\nd(eventArgs.a1)\nself.used = true",
							conditions = 
							{
								
								{
									"38971c00-0154-3181-afbf-5fb7a03275b1",
									true,
								},
							},
							uuid = "b121df80-7ca9-7053-9d05-2927edf65358",
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
							conditionLua = "return eventArgs.a2 == 1 and eventArgs.a3 == 2",
							uuid = "38971c00-0154-3181-afbf-5fb7a03275b1",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 14,
				mechanicTime = 1150.3,
				name = "get tower2 [LPDU]",
				timeRange = true,
				timelineIndex = 251,
				timerStartOffset = -20,
				uuid = "cdf352de-9e38-0149-8a56-1b26a84afda7",
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
							aType = "Alert",
							alertText = "light first go left",
							conditions = 
							{
								
								{
									"47d03d02-b426-c943-ad1f-13d46eab65b2",
									true,
								},
							},
							uuid = "18e3cddd-f6c0-7202-ad80-b34bd8f3986a",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertText = "dark first go right",
							conditions = 
							{
								
								{
									"827ef2a2-4c88-6ccf-a2c3-3f92e7358c2f",
									true,
								},
							},
							uuid = "35061a75-287e-4007-8e44-e6e1243358c7",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							eventArgType = 2,
							eventSpellID = 40313,
							name = "light first",
							uuid = "47d03d02-b426-c943-ad1f-13d46eab65b2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							eventArgType = 2,
							eventSpellID = 40233,
							name = "dark first",
							uuid = "827ef2a2-4c88-6ccf-a2c3-3f92e7358c2f",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 3,
				mechanicTime = 1150.3,
				name = "channel tts [LPDU]",
				timeRange = true,
				timelineIndex = 251,
				timerStartOffset = -20,
				uuid = "8a06868f-1831-83b1-92ae-9fe1e97a35bb",
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
							actionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif not roster or not roster.current() then return end\nlocal mt = roster.idOf(\"T1\")\nlocal ot = roster.idOf(\"T2\")\nif not mt or not ot then return end\ndata.megaminx_p5_tb2 = {spell = eventArgs.spellID, mt = mt, ot = ot}\nself.used = true",
							conditions = 
							{
								
								{
									"231d2ca3-1391-62e0-9380-6fdb3faa03e2",
									true,
								},
							},
							uuid = "bd7f09d4-64ba-3d23-92bf-7ad14ef6abe2",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							eventArgOptionType = 3,
							eventArgType = 2,
							spellIDList = 
							{
								40313,
								40233,
							},
							uuid = "231d2ca3-1391-62e0-9380-6fdb3faa03e2",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				eventType = 3,
				mechanicTime = 1150.3,
				name = "get TB2 [LPDU]",
				timeRange = true,
				timelineIndex = 251,
				timerEndOffset = 20,
				timerStartOffset = -20,
				uuid = "ac16ff56-2a3a-240c-8888-1d3a7da896da",
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
				name = "LPDU Mitigation",
				uuid = "2ab8582c-0175-dc05-a072-f757a709d3bb",
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
							actionID = 7560,
							conditions = 
							{
								
								{
									"0660854b-ea41-4aaa-a859-bb5f71bfc4a7",
									true,
								},
								
								{
									"c0340cae-ac0e-01ae-acb1-586942616809",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Addle 2 Polarizing Strikes 2",
							targetType = "Enemy",
							uuid = "ef168293-38c9-950f-9271-6e21083154b9",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R2 roster",
							uuid = "0660854b-ea41-4aaa-a859-bb5f71bfc4a7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Polarizing Strikes 2 CD",
							uuid = "c0340cae-ac0e-01ae-acb1-586942616809",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				enabled = false,
				mechanicTime = 1162.6,
				name = "[LPDU] R2 Addle 2 Polarizing Strikes 2",
				timeRange = true,
				timelineIndex = 253,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "c423b140-7ebb-1df5-977a-c7e65714b66f",
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
							actionID = 25857,
							conditions = 
							{
								
								{
									"104bd4b1-7f04-e8f2-bde7-16c6c524ffeb",
									true,
								},
								
								{
									"63dd6a5d-ae01-ab4d-a351-d577a2618f2b",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Magick Barrier Polarizing Strikes 2",
							uuid = "5780fa38-c328-3278-aab2-8470105c6717",
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
							jobValue = "REDMAGE",
							name = "REDMAGE job",
							uuid = "104bd4b1-7f04-e8f2-bde7-16c6c524ffeb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25857,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Polarizing Strikes 2 CD",
							uuid = "63dd6a5d-ae01-ab4d-a351-d577a2618f2b",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1162.6,
				name = "[LPDU] Magick Barrier Polarizing Strikes 2",
				timeRange = true,
				timelineIndex = 253,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "7978c61d-e05c-3420-b214-430a22f799d0",
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
							actionID = 7408,
							conditions = 
							{
								
								{
									"9ed38729-3ff3-2458-bec0-339e2ce50367",
									true,
								},
								
								{
									"c627702f-7516-745f-ab39-91f07c2a586e",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Nature's Minne Polarizing Strikes 2",
							uuid = "800b07ae-c9d2-dbdb-a446-c3fa7814a6ee",
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
							name = "BARD job",
							uuid = "9ed38729-3ff3-2458-bec0-339e2ce50367",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7408,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Polarizing Strikes 2 CD",
							uuid = "c627702f-7516-745f-ab39-91f07c2a586e",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1162.6,
				name = "[LPDU] Nature's Minne Polarizing Strikes 2",
				timeRange = true,
				timelineIndex = 253,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "fc09046f-bf22-8eb6-8267-b5fd066f97de",
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
							actionID = 65,
							conditions = 
							{
								
								{
									"ef578170-cbfa-c40c-907c-bc94e4a201a7",
									true,
								},
								
								{
									"228dd1a8-3f9b-e1dc-bb89-7b2914ca3b0f",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Mantra Polarizing Strikes 2",
							uuid = "ad2a8a4e-8725-cab0-a759-69521e701549",
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
							jobValue = "MONK",
							name = "MONK job",
							uuid = "ef578170-cbfa-c40c-907c-bc94e4a201a7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 65,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Polarizing Strikes 2 CD",
							uuid = "228dd1a8-3f9b-e1dc-bb89-7b2914ca3b0f",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1162.6,
				name = "[LPDU] Mantra Polarizing Strikes 2",
				timeRange = true,
				timelineIndex = 253,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "994054a4-a161-ef13-9426-0494e84592aa",
				version = 2,
			},
		},
	},
	[254] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "95518741-003d-084d-f5f1-8bcb96fb7f51",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[255] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "9359ce64-7e18-0980-336e-e19e3493d034",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[256] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "7e25e1fb-7e1e-31c7-79f4-d8d112f8324b",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[257] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "4bc0e98e-7c40-cbca-178d-29b45075881e",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[258] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "f7bf700d-db46-9181-aec7-f5d7e809e7dd",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[259] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "c35f7840-8551-33a4-2f05-2d9ad4177d90",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[260] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "426f6900-800b-8714-b545-ef8edd08ca50",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Ranged] rDPS Mit",
				uuid = "78e7e834-af25-67c8-af26-744abe05f246",
				version = 2,
			},
			inheritedObjectUUID = "a74e7c2a-296f-6075-af96-beb47b1580dc",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[RDM] Barrier",
				uuid = "d08dba6c-f8c5-e3db-a76d-e224da41ff41",
				version = 2,
			},
			inheritedObjectUUID = "37f7a626-b25e-f16b-bbb1-4022c6518fee",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[BRD] Nature's Minne",
				uuid = "65464bf0-73a1-bd99-b50a-82eca016e5fd",
				version = 2,
			},
			inheritedObjectUUID = "7ac1b9bd-4bb7-2ec0-a86e-9fd6175c0e6d",
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
				name = "store\\anyone\\fru\\fru",
				uuid = "40982b4a-b90e-eefe-fcde-d4645061a4da",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU_megaminx_indicator",
				uuid = "86a3eff7-b47d-6ca3-d9df-9391d378d987",
			},
			inheritanceRoot = "FRU_megaminx_indicator",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Draw Exasquares",
				uuid = "b8ecdca7-d9ca-31cd-991a-de122694c202",
				version = 2,
			},
			inheritedObjectUUID = "73a47124-ba3d-3698-9058-c1844957ef21",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "Draw Exasquares3",
				uuid = "92a3bbe5-3320-b726-9901-4f5f9ad0ecd3",
				version = 2,
			},
			inheritedObjectUUID = "4fb088dc-4fb9-fa75-b1ab-0ff5bb9cdca4",
			inheritedOverwrites = 
			{
				enabled = false,
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
							actionLua = "local drawer = TensorCore.getCachedDrawer(1275068160, 1006895359, 1174667519)\nlocal ent = TensorCore.mGetEntity(eventArgs.entityID)\n--drawer:addTimedRect(8000, ent.pos.x, ent.pos.y, ent.pos.z, 40, 10, ent.pos.h, 0, true)\n\nlocal dumbshit = TensorCore.getPosInDirection(ent.pos,ent.pos.h,2.5)\ndrawer:addTimedCenteredRect(7000,dumbshit.x,0,dumbshit.z,5,40,ent.pos.h,0,true)\n\nfor i=1,8 do\n    local pos = TensorCore.getPosInDirection(dumbshit,ent.pos.h,5*(i))\n    drawer:addTimedCenteredRect(2000,pos.x,0,pos.z,5,40,ent.pos.h,7000+(2000*(i-1)),true)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"4858c90a-884e-4771-ae23-ab9fdc4bf49d",
									true,
								},
							},
							uuid = "238629f5-70d8-836e-9b7c-4ba77c96cc8a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 3,
							eventArgType = 2,
							spellIDList = 
							{
								40118,
								40307,
							},
							uuid = "4858c90a-884e-4771-ae23-ab9fdc4bf49d",
							version = 3,
						},
					},
				},
				displayPath = "FRU_megaminx_indicator",
				eventType = 3,
				loop = true,
				mechanicTime = 1187.6,
				name = "Draw Exasquares [AnyoneCore]",
				timeRange = true,
				timelineIndex = 262,
				timerEndOffset = 30,
				timerStartOffset = -30,
				uuid = "57a8e86a-a049-b7b5-bbb3-53f9f9fcf82b",
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
							actionLua = "if data.p5_exa3 == nil then data.p5_exa3 = {} end\nif data.p5_exa3_filtered_ent == nil then data.p5_exa3_filtered_ent = {} end\nlocal ent = TensorCore.mGetEntity(eventArgs.entityID)\ntable.insert(data.p5_exa3,{pos = ent.pos})\nif table.size(data.p5_exa3) == 8 then\n    local cross = (data.p5_exa3[1].pos.x - 100) * (data.p5_exa3[5].pos.z-100) - (data.p5_exa3[1].pos.z-100) * (data.p5_exa3[5].pos.x-100)\n    if cross < 0 then\n        TensorCore.addAlertText(20000,\"right\",1,1,true)\n    else\n        TensorCore.addAlertText(20000,\"left\",1,1,true)\n    end\nend\nlocal function normalizeTo2Pi(r)\n    local TWO_PI = 2 * math.pi\n    r = r % TWO_PI\n    if r < 0 then\n        r = r + TWO_PI\n    end\n    return r\nend\nlocal function lineIntersectionXZ(pos1, pos2)\n    -- Extract coordinates and headings\n    local x1, z1, h1 = pos1.x, pos1.z, pos1.h + math.pi/2\n    local x2, z2, h2 = pos2.x, pos2.z, pos2.h + math.pi/2\n    \n    -- Precompute deltas\n    local dx = x2 - x1\n    local dz = z2 - z1\n    \n    -- Compute the determinant (sin(h1 - h2))\n    local denom = math.sin(h1 - h2)\n    \n    d(h1-h2)\n    -- If denom is 0 (or very close to 0), lines are parallel or coincident\n    if math.abs(denom) < 1e-12 then\n        return nil  -- No unique intersection\n    end\n    \n    -- Solve for parameter t on line 1\n    local t = ((dx) * math.cos(h2) - dz * math.sin(h2)) / denom\n    \n    -- Intersection point using line 1's parametric form\n    local Xi = x1 + t * math.sin(h1)\n    local Zi = z1 + t * math.cos(h1)\n\n    local north = (pos1.h + pos2.h) / 2\n    if (math.abs(north - pos1.h)) < (math.pi /2) then\n        north = north + math.pi\n    end\n    north = north + math.pi\n    \n    return { x = Xi, y = 0, z = Zi , h = north}\nend\n\nlocal heading2center = normalizeTo2Pi(TensorCore.getHeadingToTarget(ent.pos,{x=100,y=0,z=100}))\nif math.abs(heading2center - normalizeTo2Pi(ent.pos.h)) < 1 or  math.abs(heading2center - normalizeTo2Pi(ent.pos.h)) > 6 then\n    table.insert(data.p5_exa3_filtered_ent,ent.pos)\nend\nlocal green = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0/255, 255/255, 0/255, .25),2)\n\nif table.size(data.p5_exa3_filtered_ent) == 4 then\n    local cross = (data.p5_exa3[1].pos.x - 100) * (data.p5_exa3[5].pos.z-100) - (data.p5_exa3[1].pos.z-100) * (data.p5_exa3[5].pos.x-100)\n    local findapos = lineIntersectionXZ(data.p5_exa3_filtered_ent[1],data.p5_exa3_filtered_ent[2])\n    local newpos = TensorCore.getPosInDirection(findapos,findapos.h,5.412)\n    newpos.h = findapos.h\n    if cross > 0 then --left\n        local furthest = TensorCore.getPosInDirection(newpos,newpos.h - math.pi/2.667 , 7.07)\n        local midpoint = TensorCore.getPosInDirection(newpos,newpos.h - math.pi/2.667 , 7.07 - 5)\n        local nextpoint = TensorCore.getPosInDirection(newpos,newpos.h , 5.412)\n        green:addTimedRect(6000,furthest.x,0,furthest.z,TensorCore.getDistance2d(furthest,midpoint),.1,TensorCore.getHeadingToTarget(furthest,midpoint),0,true)\n        green:addTimedRect(6000,midpoint.x,0,midpoint.z,TensorCore.getDistance2d(midpoint,nextpoint),.1,TensorCore.getHeadingToTarget(midpoint,nextpoint),0,true)\n        green:addTimedRect(6000,nextpoint.x,0,nextpoint.z,TensorCore.getDistance2d(nextpoint,furthest),.1,TensorCore.getHeadingToTarget(nextpoint,furthest),0,true)\n    else\n        local furthest = TensorCore.getPosInDirection(newpos,newpos.h + math.pi/2.667 , 7.07)\n        local midpoint = TensorCore.getPosInDirection(newpos,newpos.h + math.pi/2.667 , 7.07 - 5)\n        local nextpoint = TensorCore.getPosInDirection(newpos,newpos.h , 5.412)\n        green:addTimedRect(6000,furthest.x,0,furthest.z,TensorCore.getDistance2d(furthest,midpoint),.1,TensorCore.getHeadingToTarget(furthest,midpoint),0,true)\n        green:addTimedRect(6000,midpoint.x,0,midpoint.z,TensorCore.getDistance2d(midpoint,nextpoint),.1,TensorCore.getHeadingToTarget(midpoint,nextpoint),0,true)\n        green:addTimedRect(6000,nextpoint.x,0,nextpoint.z,TensorCore.getDistance2d(nextpoint,furthest),.1,TensorCore.getHeadingToTarget(nextpoint,furthest),0,true)\n    end\n\n    findapos = lineIntersectionXZ(data.p5_exa3_filtered_ent[3],data.p5_exa3_filtered_ent[4])\n    newpos = TensorCore.getPosInDirection(findapos,findapos.h,5.412)\n    newpos.h = findapos.h\n    if cross > 0 then --left\n        local furthest = TensorCore.getPosInDirection(newpos,newpos.h - math.pi/2.667 , 7.07)\n        local midpoint = TensorCore.getPosInDirection(newpos,newpos.h - math.pi/2.667 , 7.07 - 5)\n        local nextpoint = TensorCore.getPosInDirection(newpos,newpos.h , 5.412)\n        green:addTimedRect(4000,furthest.x,0,furthest.z,TensorCore.getDistance2d(furthest,midpoint),.1,TensorCore.getHeadingToTarget(furthest,midpoint),6000,true)\n        green:addTimedRect(4000,midpoint.x,0,midpoint.z,TensorCore.getDistance2d(midpoint,nextpoint),.1,TensorCore.getHeadingToTarget(midpoint,nextpoint),6000,true)\n        green:addTimedRect(4000,nextpoint.x,0,nextpoint.z,TensorCore.getDistance2d(nextpoint,furthest),.1,TensorCore.getHeadingToTarget(nextpoint,furthest),6000,true)\n    else\n        local furthest = TensorCore.getPosInDirection(newpos,newpos.h + math.pi/2.667 , 7.07)\n        local midpoint = TensorCore.getPosInDirection(newpos,newpos.h + math.pi/2.667 , 7.07 - 5)\n        local nextpoint = TensorCore.getPosInDirection(newpos,newpos.h , 5.412)\n        green:addTimedRect(4000,furthest.x,0,furthest.z,TensorCore.getDistance2d(furthest,midpoint),.1,TensorCore.getHeadingToTarget(furthest,midpoint),6000,true)\n        green:addTimedRect(4000,midpoint.x,0,midpoint.z,TensorCore.getDistance2d(midpoint,nextpoint),.1,TensorCore.getHeadingToTarget(midpoint,nextpoint),6000,true)\n        green:addTimedRect(4000,nextpoint.x,0,nextpoint.z,TensorCore.getDistance2d(nextpoint,furthest),.1,TensorCore.getHeadingToTarget(nextpoint,furthest),6000,true)\n    end\nend\nif table.size(data.p5_exa3_filtered_ent) == 6 then\n    local cross = (data.p5_exa3[1].pos.x - 100) * (data.p5_exa3[5].pos.z-100) - (data.p5_exa3[1].pos.z-100) * (data.p5_exa3[5].pos.x-100)\n    local findapos = lineIntersectionXZ(data.p5_exa3_filtered_ent[5],data.p5_exa3_filtered_ent[6])\n    local newpos = TensorCore.getPosInDirection(findapos,findapos.h,5.412)\n    newpos.h = findapos.h\n    if cross > 0 then --left\n        local furthest = TensorCore.getPosInDirection(newpos,newpos.h - math.pi/2.667 , 7.07)\n        local midpoint = TensorCore.getPosInDirection(newpos,newpos.h - math.pi/2.667 , 7.07 - 5)\n        local nextpoint = TensorCore.getPosInDirection(newpos,newpos.h , 5.412)\n        green:addTimedRect(6000,furthest.x,0,furthest.z,TensorCore.getDistance2d(furthest,midpoint),.1,TensorCore.getHeadingToTarget(furthest,midpoint),6000,true)\n        green:addTimedRect(6000,midpoint.x,0,midpoint.z,TensorCore.getDistance2d(midpoint,nextpoint),.1,TensorCore.getHeadingToTarget(midpoint,nextpoint),6000,true)\n        green:addTimedRect(6000,nextpoint.x,0,nextpoint.z,TensorCore.getDistance2d(nextpoint,furthest),.1,TensorCore.getHeadingToTarget(nextpoint,furthest),6000,true)\n    else\n        local furthest = TensorCore.getPosInDirection(newpos,newpos.h + math.pi/2.667 , 7.07)\n        local midpoint = TensorCore.getPosInDirection(newpos,newpos.h + math.pi/2.667 , 7.07 - 5)\n        local nextpoint = TensorCore.getPosInDirection(newpos,newpos.h , 5.412)\n        green:addTimedRect(6000,furthest.x,0,furthest.z,TensorCore.getDistance2d(furthest,midpoint),.1,TensorCore.getHeadingToTarget(furthest,midpoint),6000,true)\n        green:addTimedRect(6000,midpoint.x,0,midpoint.z,TensorCore.getDistance2d(midpoint,nextpoint),.1,TensorCore.getHeadingToTarget(midpoint,nextpoint),6000,true)\n        green:addTimedRect(6000,nextpoint.x,0,nextpoint.z,TensorCore.getDistance2d(nextpoint,furthest),.1,TensorCore.getHeadingToTarget(nextpoint,furthest),6000,true)\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"1ad32c45-28e3-8c8e-a575-38d16257dcbb",
									true,
								},
							},
							uuid = "1782e0bb-b726-7f18-bbef-532c0d16c3b5",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 3,
							eventArgType = 2,
							spellIDList = 
							{
								40118,
								40307,
							},
							uuid = "1ad32c45-28e3-8c8e-a575-38d16257dcbb",
							version = 3,
						},
					},
				},
				displayPath = "FRU_megaminx_indicator",
				eventType = 3,
				loop = true,
				mechanicTime = 1187.6,
				name = "Draw Exasquares3 [AnyoneCore]",
				timeRange = true,
				timelineIndex = 262,
				timerEndOffset = 30,
				timerStartOffset = -30,
				uuid = "aa70c4e2-7428-d3c1-a181-039096dcac1e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Mitigation",
				uuid = "319fd38f-d861-ce4d-a605-4df1adbe0f1d",
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
							actionID = 7549,
							conditions = 
							{
								
								{
									"94b9c1a2-9ee7-bc0b-aaa6-878f134ed0e4",
									true,
								},
								
								{
									"aa395e18-88c4-fa37-8767-7416fd7c6573",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] M1 Feint Fulgent Blade",
							targetType = "Enemy",
							uuid = "42615c9f-d50c-7c96-b63d-ca8d8d013a94",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"M1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "M1 roster",
							uuid = "94b9c1a2-9ee7-bc0b-aaa6-878f134ed0e4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Fulgent Blade CD",
							uuid = "aa395e18-88c4-fa37-8767-7416fd7c6573",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1187.6,
				name = "[LPDU] M1 Feint Fulgent Blade",
				timeRange = true,
				timelineIndex = 262,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "02119f43-4334-bb57-9b38-e8b2235d901b",
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
							actionID = 7405,
							conditions = 
							{
								
								{
									"8f3dce5a-45f7-e2de-9717-171d12f6466e",
									true,
								},
								
								{
									"60f5e034-6599-e903-96b7-cfb616846f49",
									true,
								},
								
								{
									"a011a3c7-4ee6-5a8d-b7a8-0c2070a35b71",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Troubadour - Fulgent Blade 3",
							uuid = "02b70be2-e734-224c-b062-3047f1620747",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							conditions = 
							{
								
								{
									"8f3dce5a-45f7-e2de-9717-171d12f6466e",
									true,
								},
								
								{
									"c5b9d0f0-ee9c-b1d8-829a-c5c814d4ca23",
									true,
								},
								
								{
									"dcf0dafd-c82a-c216-ba4c-fb41a0965a2b",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Tactician - Fulgent Blade 3",
							uuid = "6f4f8d57-db15-da0b-b547-b6a2e34aa687",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							conditions = 
							{
								
								{
									"8f3dce5a-45f7-e2de-9717-171d12f6466e",
									true,
								},
								
								{
									"5d1be832-e663-acb1-a5ed-d79e62b99539",
									true,
								},
								
								{
									"a46e2012-80ba-d473-bf17-0ed4a12545be",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Shield Samba - Fulgent Blade 3",
							uuid = "442f74b7-297e-5553-a8f6-ac1579973905",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R1 roster",
							uuid = "8f3dce5a-45f7-e2de-9717-171d12f6466e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Troubadour job",
							uuid = "60f5e034-6599-e903-96b7-cfb616846f49",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7405,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "a011a3c7-4ee6-5a8d-b7a8-0c2070a35b71",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Tactician job",
							uuid = "c5b9d0f0-ee9c-b1d8-829a-c5c814d4ca23",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "dcf0dafd-c82a-c216-ba4c-fb41a0965a2b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Shield Samba job",
							uuid = "5d1be832-e663-acb1-a5ed-d79e62b99539",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "a46e2012-80ba-d473-bf17-0ed4a12545be",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1187.6,
				name = "[LPDU] R1 Phys Ranged - Fulgent Blade 3",
				timeRange = true,
				timelineIndex = 262,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "e91a6ff9-beab-68a9-840c-f459ea4bdf76",
				version = 2,
			},
		},
	},
	[263] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "42759147-7194-f5ab-fed6-8d4156322417",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[264] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "1a29043c-6f7b-ea38-281c-1fb2c1b6bd0c",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[MCH] Dismantle",
				uuid = "c5689d3c-5582-d36c-a928-300e8686efd3",
				version = 2,
			},
			inheritedObjectUUID = "8c7ca3ae-ac68-c372-99a6-41f302e586b1",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[265] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "0aa92279-61a6-b465-2f6a-250fa71d1349",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[266] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "67ec3006-5198-fae2-5d0a-dcc83b358156",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Melee] Feint (Primary)",
				uuid = "c69d2312-bc2f-6c05-9304-1da7e8f6dacd",
				version = 2,
			},
			inheritedObjectUUID = "044921d0-1f04-60e7-928c-86d7ab001c9d",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[VPR] Feint (Primary)",
				uuid = "2e68eb23-507f-d8b8-9364-8ac37f925d8f",
				version = 2,
			},
			inheritedObjectUUID = "bd0fb6d1-d223-076c-8b6a-d835a7918a9d",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[Caster] Addle (Secondary)",
				uuid = "0fe5e84d-0ca5-621c-8a4a-51a2765c83e8",
				version = 2,
			},
			inheritedObjectUUID = "8cf07b65-f2e0-a70a-b3da-bd550083c5c0",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[267] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "e88c1693-d927-d87f-3914-acb51f154523",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	[268] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "ab876788-fd1d-b2ac-6d0f-5446d03aa098",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[MNK] Mantra",
				uuid = "40ab71e8-f807-8ffe-8dad-77660904312a",
				version = 2,
			},
			inheritedObjectUUID = "24db05a7-5471-9730-8fbe-b1290e561df8",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Mitigation",
				uuid = "dc899cfc-a0c0-a713-ba3d-e5872ad96f1f",
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
							actionID = 7549,
							conditions = 
							{
								
								{
									"f49064f6-e599-cd63-aa4c-be2e8d3583d3",
									true,
								},
								
								{
									"d562d5a1-709f-035d-b394-89f434d9c060",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] M2 Feint P5 Akh Morn 3",
							targetType = "Enemy",
							uuid = "3cdc65b7-fbd5-259f-977b-a9d403cf2f97",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"M2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "M2 roster",
							uuid = "f49064f6-e599-cd63-aa4c-be2e8d3583d3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "P5 Akh Morn 3 CD",
							uuid = "d562d5a1-709f-035d-b394-89f434d9c060",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1214.2,
				name = "[LPDU] M2 Feint P5 Akh Morn 3",
				timeRange = true,
				timelineIndex = 268,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "e51fee05-b0a4-68fd-91fa-40aa8c132986",
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
							actionID = 7560,
							conditions = 
							{
								
								{
									"cb93eadc-4b08-1167-a826-59c8aca56204",
									true,
								},
								
								{
									"cfa7929f-823d-71e6-9378-356e97ac55af",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Addle P5 Akh Morn 3",
							targetType = "Enemy",
							uuid = "45d26e94-ea51-b57c-938e-de5ede3b61c5",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R1 roster",
							uuid = "cb93eadc-4b08-1167-a826-59c8aca56204",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "P5 Akh Morn 3 CD",
							uuid = "cfa7929f-823d-71e6-9378-356e97ac55af",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1214.2,
				name = "[LPDU] R1 Addle P5 Akh Morn 3",
				timeRange = true,
				timelineIndex = 268,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "f62c0e7d-8175-11d0-8a26-afb38097e813",
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
							actionID = 7405,
							conditions = 
							{
								
								{
									"27168aee-9261-5c02-86f8-38e5439bd03a",
									true,
								},
								
								{
									"41897841-39de-937d-bf2a-2c4fb273e31f",
									true,
								},
								
								{
									"02508e9a-e707-b187-b87a-a4226b98cc83",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Troubadour - P5 Akh Morn 3",
							uuid = "70849ee1-d8c2-4224-8815-3606dc9ada0d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							conditions = 
							{
								
								{
									"27168aee-9261-5c02-86f8-38e5439bd03a",
									true,
								},
								
								{
									"c4b6a6e4-6186-f33d-a125-8f616f8be7a6",
									true,
								},
								
								{
									"cbc1be20-8f3a-8bae-aed4-adf490d0a213",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Tactician - P5 Akh Morn 3",
							uuid = "3697b9ca-b508-a112-8cfa-d7d1c373745c",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							conditions = 
							{
								
								{
									"27168aee-9261-5c02-86f8-38e5439bd03a",
									true,
								},
								
								{
									"09c1fe78-fc44-b472-a7fc-983ad9ccfac8",
									true,
								},
								
								{
									"e0ae81e8-326b-ecc4-b020-4a8b84468af9",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Shield Samba - P5 Akh Morn 3",
							uuid = "52b1b63e-ee96-bf2d-b322-98a8000badae",
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
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R2 roster",
							uuid = "27168aee-9261-5c02-86f8-38e5439bd03a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Troubadour job",
							uuid = "41897841-39de-937d-bf2a-2c4fb273e31f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7405,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "02508e9a-e707-b187-b87a-a4226b98cc83",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Tactician job",
							uuid = "c4b6a6e4-6186-f33d-a125-8f616f8be7a6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "cbc1be20-8f3a-8bae-aed4-adf490d0a213",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Shield Samba job",
							uuid = "09c1fe78-fc44-b472-a7fc-983ad9ccfac8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "e0ae81e8-326b-ecc4-b020-4a8b84468af9",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1214.2,
				name = "[LPDU] R2 Phys Ranged - P5 Akh Morn 3",
				timeRange = true,
				timelineIndex = 268,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "3569ed8e-de4c-52f7-9e06-3ed87267dc88",
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
							actionID = 34686,
							conditions = 
							{
								
								{
									"48726ffb-fd36-64d4-9647-6d08a6c1bf2c",
									true,
								},
								
								{
									"bd0a0d52-fc4d-0fde-9c0a-d4a390298bb5",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Tempera Grassa P5 Akh Morn 3",
							uuid = "b9f8cf62-0757-0fcc-aafa-8e741d8fac70",
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
							jobValue = "PICTOMANCER",
							name = "PICTOMANCER job",
							uuid = "48726ffb-fd36-64d4-9647-6d08a6c1bf2c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 34686,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "P5 Akh Morn 3 CD",
							uuid = "bd0a0d52-fc4d-0fde-9c0a-d4a390298bb5",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1214.2,
				name = "[LPDU] Tempera Grassa P5 Akh Morn 3",
				timeRange = true,
				timelineIndex = 268,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "66269973-3144-fcdc-9439-f192c6c3be56",
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
							actionID = 2887,
							conditions = 
							{
								
								{
									"b2f29fc8-25c9-4797-9725-b4e0d15e37bc",
									true,
								},
								
								{
									"9e2e63ef-4a94-deef-8ff1-05b8088f0bac",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Dismantle P5 Akh Morn 3",
							uuid = "a5c23e71-7b5d-c24f-8319-d7435d1ae4e2",
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
							jobValue = "MACHINIST",
							name = "MACHINIST job",
							uuid = "b2f29fc8-25c9-4797-9725-b4e0d15e37bc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 2887,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "P5 Akh Morn 3 CD",
							uuid = "9e2e63ef-4a94-deef-8ff1-05b8088f0bac",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1214.2,
				name = "[LPDU] Dismantle P5 Akh Morn 3",
				timeRange = true,
				timelineIndex = 268,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "2ce0051f-8cee-b064-91e8-bb02425699a7",
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
							actionID = 16014,
							conditions = 
							{
								
								{
									"99d63717-3ca1-9d1f-8d3d-607acc2768bf",
									true,
								},
								
								{
									"ac408abd-2b62-bd1d-a82c-2789ccdd17ef",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Improvisation P5 Akh Morn 3",
							uuid = "f6b88077-9d43-7056-98a4-abc2b0c01049",
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
							jobValue = "DANCER",
							name = "DANCER job",
							uuid = "99d63717-3ca1-9d1f-8d3d-607acc2768bf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16014,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "P5 Akh Morn 3 CD",
							uuid = "ac408abd-2b62-bd1d-a82c-2789ccdd17ef",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1214.2,
				name = "[LPDU] Improvisation P5 Akh Morn 3",
				timeRange = true,
				timelineIndex = 268,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "81f8b867-ba1c-f32b-81ec-bf609a060ce5",
				version = 2,
			},
		},
	},
	[270] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "5e1b1403-37b1-4be7-8ef2-a1b16f17c313",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Melee] Feint (Secondary)",
				uuid = "f4dfcd3b-bbb1-2c15-a8d8-ab9efe1156cc",
				version = 2,
			},
			inheritedObjectUUID = "168cea2b-cafa-1cc6-aa3a-019cb0735b4d",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[VPR] Feint (Secondary)",
				uuid = "364d4765-bb16-5518-8455-31a1f6d9ac54",
				version = 2,
			},
			inheritedObjectUUID = "3f93ffb8-3d20-94fe-9afb-404dd38d8280",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				name = "[Caster] Addle (Primary)",
				uuid = "02d8239d-555a-7662-925e-2caee5f03ee3",
				version = 2,
			},
			inheritedObjectUUID = "b0d01b44-951e-60a6-a42c-deaa6967fb3b",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[271] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\fru\\fru",
				uuid = "4451ba36-03f7-95ea-396d-7994ee77dc86",
			},
			inheritanceRoot = "store\\anyone\\fru\\fru",
			objectType = "folder",
		},
	},
	inheritedProfiles = 
	{
		"FRU_megaminx_indicator",
		"store\\anyone\\fru\\fru",
	},
	timelineName = "fru",
	version = "1.0.5",
}



return tbl
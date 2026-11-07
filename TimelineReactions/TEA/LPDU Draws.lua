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
							actionLua = "local livingLiquid = TensorCore.getEntityByGroup(\"ContentID\", { contentid = 9211 })\nif not livingLiquid or not livingLiquid.id or not livingLiquid.targetid then\n    return true\nend\n\nlocal target = TensorCore.mGetEntity(livingLiquid.targetid)\nlocal drawer = TensorCore.getMoogleDrawer()\nif drawer and target then\n    drawer:addTimedConeOnEnt(5000, livingLiquid.id, 12, math.pi / 2, target.id, 0, false, false)\nend\n\nself.used = true",
							endIfUsed = true,
							name = "Draw 8y Fluid Swing cone",
							uuid = "29186c0f-a6f0-75ce-8e82-fc9e1cdebfd5",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 11.4,
				name = "[Draw] Fluid Swing",
				timeRange = true,
				timelineIndex = 2,
				timerStartOffset = -5,
				uuid = "4732a7b8-47fc-efc3-b24f-6e087fc2bb93",
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
							actionLua = "local center = { x = 100, z = 100 } -- arena center (given as 100, 0, 100)\nlocal innerRadius = 20              -- arena radius in yalms; the donut hole\nlocal outerRadius = 2000           -- far enough to swallow any off-arena draw\nlocal timeout = 1200000            -- set-and-forget (20 min); re-fire as needed\nlocal occlusionChannel = 0         -- default channel; matches normal draws\n\nlocal floorY = 0\nlocal normalFlags = Argus2.RenderFlags.FLAG_OCCLUDE\nlocal overlayFlags =\n    Argus2.RenderFlags.FLAG_OCCLUDE |\n    Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n\nlocal normalDrawer = TensorCore.getStaticFlatDrawer(0x00000000, 0, occlusionChannel, normalFlags)\nlocal overlayDrawer = TensorCore.getStaticFlatDrawer(0x00000000, 0, occlusionChannel, overlayFlags)\n\nnormalDrawer:addTimedDonut(\n    timeout,\n    center.x, floorY, center.z,\n    innerRadius, outerRadius,\n    0,      -- delay\n    false,  -- oldDraw\n    false,  -- doNotDetect: FALSE so the off-arena ring feeds safe-jump detection\n            --              and acts as an in-bounds boundary (won't jump the edge)\n    normalFlags\n)\n\noverlayDrawer:addTimedDonut(\n    timeout,\n    center.x, floorY, center.z,\n    innerRadius, outerRadius,\n    0,      -- delay\n    false,  -- oldDraw\n    true,   -- doNotDetect: visual-only duplicate of the normal blocker\n    overlayFlags\n)\n\nself.used = true\n",
							uuid = "ecd9f16e-9e3f-014d-988b-d88412aa0611",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 11.4,
				name = "[Draw] Occlusion Draw",
				timelineIndex = 2,
				timerOffset = -11.39999961853,
				uuid = "daf192db-9308-970d-b48c-6abfcc2cc7ef",
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
							actionLua = "local blacklist = MoogleTelegraphs.Settings.aoeIDUserBlacklist\nif not blacklist then\n  blacklist = {}\n  MoogleTelegraphs.Settings.aoeIDUserBlacklist = blacklist\nend\n\nblacklist[18869] = \"Protean Wave\"\nblacklist[18526] = \"Inception\"\nblacklist[18482] = \"Propeller Wind\"\nblacklist[18492] = \"Gavel\"\nself.used = true",
							endIfUsed = true,
							name = "Blacklist Moogle AOEs",
							uuid = "76aa8f5c-716f-b2e9-8f54-cd915ca3f819",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 11.4,
				name = "[Misc] Blacklist AOEs",
				timelineIndex = 2,
				timerOffset = -11.39999961853,
				uuid = "b062db66-904e-bb23-84f1-062f992be6b4",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Guidance",
				uuid = "72733db4-4253-4bf5-a31e-2ab35d27f8b7",
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
							actionLua = "if not AnyoneCore or not AnyoneCore.Settings or not AnyoneCore.Settings.DutyHelper then return end\nAnyoneCore.Settings.DutyHelper.enabled=false\nself.used=true",
							name = "Disable competing Duty Helper",
							uuid = "338b2d7c-e1b2-2585-bd41-44dddc97b6c1",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Guidance",
				mechanicTime = 11.4,
				name = "[LPDU] TEA - Disable Duty Helper",
				throttleTime = 500,
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = -6.4,
				timerStartOffset = -11.4,
				uuid = "408326a1-85a8-a8b8-8cbe-860cb2a4667e",
				version = 2,
			},
		},
	},
	[3] = 
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
							gVar = "ACR_TensorReaper3_Hotbar_Feint",
							uuid = "f3263176-85e5-ceb4-94ed-fd2c3c1ef172",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 19.5,
				name = "[Mit] Feint",
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = -0.5,
				timerStartOffset = -9.5,
				uuid = "f01987c5-441e-f226-993b-5042fa707ade",
				version = 2,
			},
		},
	},
	[4] = 
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
							actionLua = "if data.liquidRageNewNorth then\n  self.used = true\n  return\nend\n\nlocal center = { x = 100, y = 0, z = 100 }\nlocal rages = TensorCore.entityList(\"contentid=9213\")\nlocal visible = {}\n\nfor _, entity in pairs(rages) do\n  if entity and Argus.isEntityVisible(entity) then\n    visible[#visible + 1] = entity\n  end\nend\n\nif #visible < 3 then\n  return\nend\n\nlocal occupied = {}\nlocal step = math.pi / 4\nlocal spawnParity\n\nfor _, entity in ipairs(visible) do\n  local heading = TensorCore.getHeadingToTarget(center, entity.pos)\n  local slot = math.floor((heading / step) + 0.5) % 8\n  occupied[slot] = true\n\n  local parity = slot % 2\n  if spawnParity == nil then\n    spawnParity = parity\n  elseif spawnParity ~= parity then\n    return\n  end\nend\n\nlocal freeSlot\nfor slot = spawnParity, 7, 2 do\n  if not occupied[slot] then\n    freeSlot = slot\n    break\n  end\nend\n\nif freeSlot then\n  local northHeading = freeSlot * step\n  local textPosition = TensorCore.getPosInDirection(center, northHeading, 18)\n  data.liquidRageNewNorth = textPosition\n  AnyoneCore.addTimedWorldText(72200, \"New North\", textPosition, 0xFFFFFFFF, true, 1.5)\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"30d4531e-1a72-35e7-800d-82574584a024",
									true,
								},
								
								{
									"b1416ed8-d5cf-17d5-937e-ed0b0b9a80c7",
									true,
								},
								
								{
									"7d180ffd-07f2-c93e-960e-ed1451273776",
									true,
								},
							},
							endIfUsed = true,
							name = "Draw New North",
							uuid = "0ec03acd-ddb8-eb34-932b-85469db94caf",
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
							eventArgOptionType = 2,
							eventEntityContentID = 9213,
							name = "Liquid Rage",
							uuid = "30d4531e-1a72-35e7-800d-82574584a024",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							eventArgType = 2,
							eventBoolValue = 2,
							name = "Was Visible: False",
							uuid = "b1416ed8-d5cf-17d5-937e-ed0b0b9a80c7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							eventArgType = 3,
							name = "Is Visible: True",
							uuid = "7d180ffd-07f2-c93e-960e-ed1451273776",
							version = 3,
						},
					},
				},
				eventType = 22,
				mechanicTime = 35.8,
				name = "[Draw] New North",
				timeRange = true,
				timelineIndex = 4,
				timerStartOffset = -16,
				uuid = "7fae842a-2d49-c839-a3ea-4b471796b961",
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
							actionLua = "local rages = TensorCore.entityList(\"contentid=9213\")\nlocal party = TensorCore.getEntityGroupList(\"Party\")\nlocal drawer = TensorCore.getMoogleDrawer()\n\nif rages and party and drawer then\n    for _, rage in pairs(rages) do\n        if rage and rage.id and rage.pos then\n            local closestPlayer = nil\n            local closestDistance = math.huge\n\n            for _, player in pairs(party) do\n                if player and player.id and player.pos then\n                    local distance = TensorCore.getDistance3d(rage.pos, player.pos)\n                    if distance < closestDistance then\n                        closestDistance = distance\n                        closestPlayer = player\n                    end\n                end\n            end\n\n            if closestPlayer then\n                drawer:addCone(\n                    rage.pos.x,\n                    rage.pos.y,\n                    rage.pos.z,\n                    40,\n                    math.pi / 6,\n                    TensorCore.getHeadingToTarget(rage.pos, closestPlayer.pos),\n                    false\n                )\n            end\n        end\n    end\nend\n\nself.used = true",
							endIfUsed = true,
							name = "Draw 40y Protean Wave cones",
							uuid = "c4fc424c-54b0-7326-ae49-0051618c7bc4",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				loop = true,
				mechanicTime = 35.8,
				name = "[Draw] Protean Waves",
				timeRange = true,
				timelineIndex = 4,
				timerEndOffset = -2.0999999046326,
				timerStartOffset = -5,
				uuid = "51e09b47-2e5f-47b6-8bb2-4d667ac22c4b",
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
							actionLua = "local roster = AnyoneCore.Roster\nlocal player = TensorCore.mGetPlayer()\nlocal mySlot = roster and roster.mySlot()\nlocal sourcePos = player and player.pos\nlocal newNorth = data.liquidRageNewNorth\n\ndata.proteanWaveStartPositions = proteanWaveStartPositions or {\n    center = { x = 100, y = 0, z = 100 },\n    positions = {\n        -- Radian is an offset from the inward direction (new north toward center).\n        -- Positive is southwest; negative is southeast.\n        R2 = { radian = -math.pi / 3.1, distance = 19 },\n        R1 = { radian = math.pi / 3.1, distance = 19 },\n        T1 = { radian = -math.pi / 14, distance = 36 }\n    }\n}\n\nlocal state = data.proteanWaveStartPositions\nlocal bait = mySlot and state.positions[mySlot]\n\nif sourcePos and newNorth and bait then\n    local headingToCenter = TensorCore.getHeadingToTarget(newNorth, state.center)\n    local targetHeading = TensorCore.convertHeading(headingToCenter + bait.radian)\n    local targetPos = TensorCore.getPosInDirection(newNorth, targetHeading, bait.distance)\n\n    local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n    local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n    local scale = math.min(1, totalDistance / 15)\n    local baseWidth = math.max(0.5, 1 * scale)\n    local tipWidth = math.max(1.5, 3 * scale)\n    local tipLength = math.max(2, 3 * scale)\n    local baseLength = totalDistance - tipLength\n\n    if baseLength > 1 then\n        local arrowDrawer = TensorCore.getCachedDrawer(\n            0xFF00FFFF,\n            0xFF0088FF,\n            0xFF0000FF,\n            0xFFFFFFFF,\n            2\n        )\n        arrowDrawer:addArrow(\n            sourcePos.x,\n            sourcePos.y,\n            sourcePos.z,\n            heading,\n            baseLength,\n            baseWidth,\n            tipLength,\n            tipWidth,\n            false,\n            Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n        )\n    end\n\n    local blueDrawer = TensorCore.getCachedDrawer(nil, nil, 0xFFFF0000, 0xFFFF0000, 2)\n    blueDrawer:addCircle(targetPos.x, targetPos.y, targetPos.z, 0.4, false)\n\n    Argus.addCircleFilled(\n        targetPos.x,\n        targetPos.y,\n        targetPos.z,\n        0.15,\n        32,\n        0xFF00FF00,\n        nil,\n        0,\n        0,\n        0,\n        0,\n        false\n    )\nend\n\nself.used = true",
							endIfUsed = true,
							name = "Draw arrow and mark role spot",
							uuid = "2684cdeb-84d8-2a91-89e0-ac5f4dc98bc6",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				loop = true,
				mechanicTime = 35.8,
				name = "[Draw] Role Spot Arrow",
				timeRange = true,
				timelineIndex = 4,
				timerEndOffset = -1.7999999523163,
				timerStartOffset = -10,
				uuid = "7d5b2169-0179-345a-8ec6-eb0c57480fba",
				version = 2,
			},
		},
	},
	[9] = 
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
							actionLua = "--AnyoneCore.Shotcall(\"Grab Jagd Doll\", false, 5, false)\nTensorCore.showRaidWarning(\"Grab Jagd Doll\", 0, 3.5)\nTensorCore.sendTTS(\"Grab Jagd Doll\",75)\nself.used = true",
							conditions = 
							{
								
								{
									"0872cfb6-e339-8228-bbdb-2b99d878566c",
									true,
								},
							},
							name = "Grab Jagd Doll",
							uuid = "1ff89d7b-57ad-984f-9418-cfe94c83790f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return TensorCore.isDPS(TensorCore.mGetPlayer())",
							name = "is DPS",
							uuid = "0872cfb6-e339-8228-bbdb-2b99d878566c",
							version = 3,
						},
					},
				},
				mechanicTime = 39.7,
				name = "[Misc] Doll Shotcall",
				timelineIndex = 9,
				timerOffset = -5,
				uuid = "85124321-231a-a05d-8532-ad7fcb7ffab2",
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
							actionLua = "local newNorth = data.liquidRageNewNorth\nlocal center = { x = 100, y = 0, z = 100 }\nlocal dolls = TensorCore.entityList(\"contentid=9214\")\nlocal staticDuration = 5000\nlocal mySlot = AnyoneCore.Roster and AnyoneCore.Roster.mySlot() or nil\nlocal drewAny = false\n\nif newNorth and dolls and mySlot then\n    local northHeading = TensorCore.getHeadingToTarget(center, newNorth)\n    local southEastHeading = northHeading - (3 * math.pi / 4)\n    local targetHeadings = {\n        R1 = northHeading,\n        M2 = southEastHeading,\n        M1 = northHeading + math.pi,\n        R2 = northHeading + (math.pi / 2)\n    }\n    local targetHeading = targetHeadings[mySlot]\n\n    if targetHeading then\n        local targetPoint = TensorCore.getPosInDirection(center, targetHeading, 15)\n        local ourDollID = nil\n        local nearestDistance = math.huge\n\n        for _, doll in pairs(dolls) do\n            if doll and doll.id and doll.pos then\n                local distance = TensorCore.getDistance3d(doll.pos, targetPoint)\n                if distance < nearestDistance then\n                    nearestDistance = distance\n                    ourDollID = doll.id\n                end\n            end\n        end\n\n        local drawer = TensorCore.getMoogleDrawer()\n        if drawer then\n            for _, doll in pairs(dolls) do\n                if doll and doll.id and doll.id ~= ourDollID then\n                    drawer:addTimedCircleOnEnt(staticDuration, doll.id, 9, 0, false, false)\n                    drewAny = true\n                end\n            end\n        end\n    end\nend\n\nif drewAny then\n    self.used = true\nend",
							name = "Draw 9y circles on unassigned dolls",
							uuid = "71ff36ca-76e5-1e06-9155-d68fc70b13d0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 39.7,
				name = "[Draw] Exhaust AOEs",
				timeRange = true,
				timelineIndex = 9,
				timerStartOffset = -5,
				uuid = "9dc4428d-828e-a391-9ad8-72e450264739",
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
							actionLua = "local newNorth = data.liquidRageNewNorth\nlocal center = { x = 100, y = 0, z = 100 }\nlocal dolls = TensorCore.entityList(\"contentid=9214\")\nlocal player = TensorCore.mGetPlayer()\nlocal ourDollPos = nil\nlocal ourDollID = nil\nlocal mySlot = AnyoneCore.Roster and AnyoneCore.Roster.mySlot() or nil\nlocal drewArrow = false\n\nif newNorth and dolls and player and mySlot then\n    local sourcePos = player.pos\n    local northHeading = TensorCore.getHeadingToTarget(center, newNorth)\n    local southEastHeading = northHeading - (3 * math.pi / 4)\n    local targetHeadings = {\n        R1 = northHeading,\n        M2 = southEastHeading,\n        M1 = northHeading + math.pi,\n        R2 = northHeading + (math.pi / 2)\n    }\n    local targetHeading = targetHeadings[mySlot]\n\n    if targetHeading then\n        local targetPoint = TensorCore.getPosInDirection(center, targetHeading, 15)\n        local nearestDistance = math.huge\n\n        for _, doll in pairs(dolls) do\n            if doll and doll.id and doll.pos then\n                local targetDistance = TensorCore.getDistance3d(doll.pos, targetPoint)\n                if targetDistance < nearestDistance then\n                    nearestDistance = targetDistance\n                    ourDollID = doll.id\n                    ourDollPos = doll.pos\n                end\n            end\n        end\n\n        if ourDollPos then\n            local heading = TensorCore.getHeadingToTarget(sourcePos, ourDollPos)\n            local totalDistance = TensorCore.getDistance2d(sourcePos, ourDollPos)\n            local scale = math.min(1, totalDistance / 15)\n            local baseWidth = math.max(0.5, 1 * scale)\n            local tipWidth = math.max(1.5, 3 * scale)\n            local tipLength = math.max(2, 3 * scale)\n            local baseLength = totalDistance - tipLength\n\n            if baseLength > 1 then\n                local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n                if arrowDrawer then\n                    arrowDrawer:addArrow(\n                        sourcePos.x, sourcePos.y, sourcePos.z,\n                        heading,\n                        baseLength, baseWidth, tipLength, tipWidth,\n                        false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n                    )\n                    drewArrow = true\n                end\n            end\n        end\n    end\nend\n\nif drewArrow then\n    self.used = true\nend",
							name = "Draw player-to-assigned-doll arrow",
							uuid = "653ed71b-6c33-3011-ac7b-387295933f45",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				mechanicTime = 39.7,
				name = "[Draw] Doll Arrow",
				timeRange = true,
				timelineIndex = 9,
				timerStartOffset = -5,
				uuid = "6271233a-2266-8f78-b8cd-cba50c6f8ef3",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Guidance",
				uuid = "28cf6746-1a2e-1524-ad97-6a0db5f36f0d",
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
							actionLua = "local p=TensorCore.mGetPlayer();if not p then return end\nlocal s=data.tea_lpdu_doll\nif not s then\n s={};data.tea_lpdu_doll=s\n function s.clear() if s.shape then Argus.deleteTimedShape(s.shape);s.shape=nil end end\n function s.log(reason,hp,intended)\n  local now=Now();local key=reason..\":\"..tostring(intended)\n  if s.logKey~=key or now-(s.logAt or 0)>=1500 then\n   TensorCore.timelineLogToFile(string.format(\"[TEA doll return] decision=%s own=%s hp=%s current=%s intended=%s latched=%s confirmed=%s\\n\",reason,tostring(s.doll),tostring(hp),tostring(TensorCore.mGetPlayer().targetid),tostring(intended),tostring(s.returnReady),tostring(s.confirmed)))\n   s.logKey=key;s.logAt=now\n  end\n end\nend\nif s.done then self.used=true;return end\nif not s.doll then\n local found\n for _,t in pairs(Argus.getTethersOnEnt(p.id)) do\n  local e=t.partnerid and TensorCore.mGetEntity(t.partnerid)\n  if e and e.contentid==9214 then\n   if found and found~=e.id then s.log(\"ambiguous tether\");self.used=true;return end\n   found=e.id\n  end\n end\n if not found then s.log(\"waiting own tether\");self.used=true;return end\n s.doll=found;s.log(\"assigned from personal tether\")\nend\nlocal doll=TensorCore.mGetEntity(s.doll)\nif not doll or not doll.hp or doll.hp.current<=0 then s.clear();s.done=true;s.log(\"own doll departed\");self.used=true;return end\nlocal hp=doll.hp.percent\nif type(hp)~=\"number\" then s.log(\"waiting HP\");return end\nlocal colour=hp>30 and \"green\" or \"red\"\nif s.colour~=colour then\n s.clear()\n local color=colour==\"green\" and 0x8800FF00 or 0x880000FF\n local drawer=TensorCore.getStaticDrawer(color,2,1)\n s.shape=drawer:addTimedCircleOnEnt(math.max(300,(65-TensorReactions_CurrentTimer)*1000),s.doll,1,0,false,true,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n if s.shape then s.colour=colour end\nend\nif hp<29 then s.returnReady=true end\nif s.returnReady and not s.confirmed then\n local boss=s.boss and TensorCore.mGetEntity(s.boss)\n if not boss or not boss.targetable or not boss.hp or boss.hp.current<=0 then\n  boss=nil\n  for _,e in pairs(TensorCore.entityList(\"contentid=9211\")) do\n   if e.id and Argus.getEntityModel(e.id)==11335 and e.targetable and e.attackable and e.hp and e.hp.current>0 then boss=e;s.boss=e.id;break end\n  end\n end\n if not boss then s.log(\"blocked Living Liquid unavailable\",hp);self.used=true;return end\n if p.targetid==boss.id then\n  s.confirmed=true;s.log(s.requestAt and \"confirmed target change\" or \"already on Living Liquid\",hp,boss.id)\n elseif not s.requestAt or Now()-s.requestAt>=300 then\n  Player:SetTarget(boss.id);s.requestAt=Now();s.log(\"target request sent\",hp,boss.id)\n end\nend\nself.used=true",
							name = "[LPDU] Own tethered doll - Colour and return at 29%",
							uuid = "7ad5c6cb-c451-db92-9426-cf807c1a7234",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Guidance",
				loop = true,
				mechanicTime = 39.7,
				name = "[LPDU] Own tethered doll - Colour and return at 29%",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 9,
				timerEndOffset = 25.3,
				timerStartOffset = -9.7,
				uuid = "962f4509-471c-d942-a26c-2cfa3ad4aa9c",
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
							actionLua = "local s=eventArgs.oldData and eventArgs.oldData.tea_lpdu_doll\nif s and s.shape then Argus.deleteTimedShape(s.shape) end\nself.used=true",
							name = "[LPDU] Own doll - Wipe cleanup",
							uuid = "a3a73b4c-eec7-393a-aec0-43f1d72f5ab5",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Guidance",
				eventType = 9,
				loop = true,
				mechanicTime = 39.7,
				name = "[LPDU] Own doll - Wipe cleanup",
				timeRange = true,
				timelineIndex = 9,
				timerEndOffset = 1460.3,
				timerStartOffset = -39.7,
				uuid = "c5b3777d-b636-9899-ab3c-159b7efa9a2f",
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
							actionLua = "--AnyoneCore.Shotcall(\"Feed Doll to Living Liquid\", false, 5, false)\nTensorCore.showRaidWarning(\"Feed Doll to Living Liquid\", 0, 3.5)\nTensorCore.sendTTS(\"Feed Doll to Living Liquid\",75)\nself.used = true",
							conditions = 
							{
								
								{
									"ee14b4c9-9b51-dcd5-8594-fe3ac3643dea",
									true,
								},
								
								{
									"e8d95e61-d7d4-ea78-b32b-951c56630172",
									true,
								},
							},
							endIfUsed = true,
							name = "Feed Doll to Living Liquid",
							uuid = "eeb281f0-b505-32a3-bd1e-224a902b28da",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return TensorCore.isDPS(TensorCore.mGetPlayer())",
							name = "Is DPS",
							uuid = "ee14b4c9-9b51-dcd5-8594-fe3ac3643dea",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local player = TensorCore.mGetPlayer()\nif not player then\n    return false\nend\n\nlocal tethers = Argus.getTethersOnEnt(player.id)\nif not tethers then\n    return false\nend\n\nfor _, tether in pairs(tethers) do\n    local partner = tether.partnerid and TensorCore.mGetEntity(tether.partnerid)\n    if partner and partner.contentid == 9214 and partner.hp and partner.hp.percent <= 24.9 then\n        return true\n    end\nend\n\nreturn false",
							name = "Tethered Jagd Doll <= 24.9% HP",
							uuid = "e8d95e61-d7d4-ea78-b32b-951c56630172",
							version = 3,
						},
					},
				},
				mechanicTime = 42.8,
				name = "[Misc] Feed Doll to Living Liquid",
				timeRange = true,
				timelineIndex = 11,
				timerEndOffset = 10,
				timerStartOffset = -10,
				uuid = "fcee0b9a-7400-c290-b18d-c53fdc9ef25a",
				version = 2,
			},
		},
	},
	[12] = 
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
							actionLua = "local dolls = TensorCore.entityList(\"contentid=9214\")\nlocal party = TensorCore.getEntityGroupList(\"Party\")\nlocal drawer = TensorCore.getMoogleDrawer()\nlocal staticDuration = 5000\nlocal drewAny = false\n\nif dolls and party and drawer then\n    for _, doll in pairs(dolls) do\n        if doll and doll.id then\n            local tethers = Argus.getTethersOnEnt(doll.id)\n            local rangedTarget = nil\n\n            if tethers then\n                for _, tether in pairs(tethers) do\n                    local targetID = tether and tether.targetid\n                    if targetID then\n                        for _, member in pairs(party) do\n                            if member and member.id == targetID and TensorCore.isRanged(member, true) then\n                                rangedTarget = member\n                                break\n                            end\n                        end\n                    end\n\n                    if rangedTarget then\n                        break\n                    end\n                end\n            end\n\n            if rangedTarget then\n                d(string.format(\"[Draw Exhaust AOEs] drawing 9y circle on doll %s tethered to ranged DPS %s\", tostring(doll.id), tostring(rangedTarget.id)))\n                drawer:addTimedCircleOnEnt(staticDuration, doll.id, 9, 0, false, false)\n                drewAny = true\n            end\n        end\n    end\nelse\n    d(\"[Draw Exhaust AOEs] draw skipped: missing dolls, party, or Moogle drawer\")\nend\n\nif drewAny then\n    self.used = true\nend",
							name = "Draw 9y circles on ranged-tethered dolls",
							uuid = "8adc23c4-1fdb-cdb5-9078-59dca8643c11",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 50.3,
				name = "[Draw] Exhaust AOEs",
				timeRange = true,
				timelineIndex = 12,
				timerStartOffset = -5,
				uuid = "7052b735-eb40-4b39-ba2c-3f5fb3ecbab1",
				version = 2,
			},
		},
	},
	[13] = 
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
							actionLua = "local livingLiquid = TensorCore.getEntityByGroup(\"ContentID\", { contentid = 9211 })\nlocal liquidHand = TensorCore.getEntityByGroup(\"ContentID\", { contentid = 9212 })\nlocal drawer = TensorCore.getMoogleDrawer()\n\nif drawer and livingLiquid and livingLiquid.id and livingLiquid.targetid then\n    local target = TensorCore.mGetEntity(livingLiquid.targetid)\n    if target then\n        drawer:addTimedConeOnEnt(5000, livingLiquid.id, 12, math.pi / 2, target.id, 0, false, false)\n    end\nend\n\nif drawer and liquidHand and liquidHand.id and liquidHand.targetid then\n    local target = TensorCore.mGetEntity(liquidHand.targetid)\n    if target then\n        drawer:addTimedConeOnEnt(5000, liquidHand.id, 12, math.pi / 2, target.id, 0, false, false)\n    end\nend\n\nself.used = true",
							endIfUsed = true,
							name = "Draw Fluid Swing and Fluid Strike cones",
							uuid = "abf49dbb-c9b9-0c93-9a57-6c2c7443a2a7",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 56.7,
				name = "[Draw] Fluid Swing/Strike",
				timeRange = true,
				timelineIndex = 13,
				timerStartOffset = -5,
				uuid = "b1bd4000-0fda-ec3f-9d9e-f032e46de76a",
				version = 2,
			},
		},
	},
	[15] = 
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
							actionLua = "local livingLiquids = TensorCore.entityList(\"contentid=9211\")\nlocal party = TensorCore.getEntityGroupList(\"Party\")\nlocal drawer = TensorCore.getMoogleDrawer()\nlocal livingLiquid = nil\n\nif livingLiquids then\n    for _, entity in pairs(livingLiquids) do\n        if entity and entity.id and entity.pos and Argus.isEntityVisible(entity) then\n            livingLiquid = entity\n            break\n        end\n    end\nend\n\nif livingLiquid and party and drawer then\n    for _, player in pairs(party) do\n        if player and player.id and player.pos then\n            local heading = TensorCore.getHeadingToTarget(livingLiquid.pos, player.pos)\n            drawer:addCone(\n                livingLiquid.pos.x,\n                livingLiquid.pos.y,\n                livingLiquid.pos.z,\n                40,\n                math.pi / 6,\n                heading,\n                false\n            )\n        end\n    end\nend\n\nself.used = true",
							endIfUsed = true,
							name = "Draw 40y Protean Wave cones on all players",
							uuid = "81d1bc5a-6a90-4c30-8a92-2e4e965f36d6",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				loop = true,
				mechanicTime = 69.8,
				name = "[Draw] Protean Waves 1",
				timeRange = true,
				timelineIndex = 15,
				timerEndOffset = -2.9000000953674,
				timerStartOffset = -5,
				uuid = "e5390239-6a59-3849-b728-ec56f8af556c",
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
							actionLua = "local roster = AnyoneCore.Roster\nlocal player = TensorCore.mGetPlayer()\nlocal mySlot = roster and roster.mySlot()\nlocal sourcePos = player and player.pos\nlocal newNorth = data.liquidRageNewNorth\nlocal baitDistance\n\nif mySlot == \"T1\" or mySlot == \"T2\" then\n    baitDistance = 22\nelseif mySlot == \"M1\" or mySlot == \"M2\"\n    or mySlot == \"H1\" or mySlot == \"H2\"\n    or mySlot == \"R1\" or mySlot == \"R2\" then\n    baitDistance = 13\nend\n\nif sourcePos and newNorth and baitDistance then\n    data.proteanWave1BaitArrow69 = data.proteanWave1BaitArrow69 or {\n        center = { x = 100, y = 0, z = 100 }\n    }\n\n    local center = data.proteanWave1BaitArrow69.center\n    local headingToCenter = TensorCore.getHeadingToTarget(newNorth, center)\n    local targetPos = TensorCore.getPosInDirection(newNorth, headingToCenter, baitDistance)\n\n    local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n    local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n    local scale = math.min(1, totalDistance / 15)\n    local baseWidth = math.max(0.5, 1 * scale)\n    local tipWidth = math.max(1.5, 3 * scale)\n    local tipLength = math.max(2, 3 * scale)\n    local baseLength = totalDistance - tipLength\n\n    if baseLength > 1 then\n        local arrowDrawer = TensorCore.getCachedDrawer(\n            0xFF00FFFF,\n            0xFF0088FF,\n            0xFF0000FF,\n            0xFFFFFFFF,\n            2\n        )\n        arrowDrawer:addArrow(\n            sourcePos.x,\n            sourcePos.y,\n            sourcePos.z,\n            heading,\n            baseLength,\n            baseWidth,\n            tipLength,\n            tipWidth,\n            false,\n            flags\n        )\n    end\n\n    local blueDrawer = TensorCore.getCachedDrawer(nil, nil, 0xFFFF0000, 0xFFFF0000, 2)\n    blueDrawer:addCircle(targetPos.x, targetPos.y, targetPos.z, 0.4, false, flags)\n\n    Argus.addCircleFilled(\n        targetPos.x,\n        targetPos.y,\n        targetPos.z,\n        0.15,\n        32,\n        0xFF00FF00,\n        nil,\n        0,\n        0,\n        0,\n        0,\n        false,\n        flags\n    )\nend\n\nself.used = true",
							endIfUsed = true,
							name = "Draw Protean Wave 1 bait arrow",
							uuid = "f1711690-cd20-f761-a1eb-c20466e821fa",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				loop = true,
				mechanicTime = 69.8,
				name = "[Draw] Protean Wave 1 Bait Arrow",
				timeRange = true,
				timelineIndex = 15,
				timerEndOffset = -2.9000000953674,
				timerStartOffset = -9,
				uuid = "2f9989b5-bb97-2794-91f7-61f7ec927ec6",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Guidance",
				uuid = "5ef0123f-0503-2813-9da6-e5586f2d3a59",
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
							actionLua = "local s=data.tea_lpdu_protean_moves\nif not s then s={};data.tea_lpdu_protean_moves=s end\nif not s[\"move67\"] then\n s[\"move67\"] = true\n AnyoneCore.Shotcall(\"Move\",true,2,false)\n TensorCore.timelineLogToFile(\"[TEA protean] move67 AOE-created, move cue\\n\")\nend\nself.used=true",
							conditions = 
							{
								
								{
									"c2f0eeda-b192-3769-9193-b559d77cec6d",
									true,
								},
							},
							name = "[LPDU] Proteans dropped - Move 67",
							uuid = "d0cb3275-dfe9-507b-b245-5d458cbec355",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.aoeID==18468 and eventArgs.contentID==9211",
							dequeueIfLuaFalse = true,
							name = "Baited visible cone created",
							uuid = "c2f0eeda-b192-3769-9193-b559d77cec6d",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Guidance",
				eventType = 18,
				loop = true,
				mechanicTime = 69.8,
				name = "[LPDU] Proteans dropped - Move 67",
				timeRange = true,
				timelineIndex = 15,
				timerEndOffset = 1.2,
				timerStartOffset = -5.8,
				uuid = "7b77d9d9-2288-ede0-956e-97ff46caa573",
				version = 2,
			},
		},
	},
	[17] = 
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
							actionLua = "local roster = AnyoneCore.Roster\nlocal player = TensorCore.mGetPlayer()\nlocal mySlot = roster and roster.mySlot()\nlocal sourcePos = player and player.pos\nlocal newNorth = data.liquidRageNewNorth\n\ndata.proteanWave2BaitPositions71 = data.proteanWave2BaitPositions71 or {\n    center = { x = 100, y = 0, z = 100 },\n    positions = {\n        -- Radian is an offset from the inward direction (new north toward center).\n        -- Positive is southwest; negative is southeast.\n        H1 = { radian = -math.pi / 4.25, distance = 12.9 },\n        R2 = { radian = -math.pi / 4.25, distance = 12.9 },\n        H2 = { radian = math.pi / 4.25, distance = 12.9 },\n        R1 = { radian = math.pi / 4.25, distance = 12.9 },\n        M1 = { radian = -math.pi / 15, distance = 18.4 },\n        M2 = { radian = math.pi / 15, distance = 18.4 },\n        T1 = { radian = -math.pi / 21, distance = 21.5 },\n        T2 = { radian = math.pi / 21, distance = 21.5 },\n    }\n}\n\nlocal state = data.proteanWave2BaitPositions71\nlocal bait = mySlot and state.positions[mySlot]\n\nif sourcePos and newNorth and bait then\n    local headingToCenter = TensorCore.getHeadingToTarget(newNorth, state.center)\n    local targetHeading = TensorCore.convertHeading(headingToCenter + bait.radian)\n    local targetPos = TensorCore.getPosInDirection(newNorth, targetHeading, bait.distance)\n\n    local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n    local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n    local scale = math.min(1, totalDistance / 15)\n    local baseWidth = math.max(0.5, 1 * scale)\n    local tipWidth = math.max(1.5, 3 * scale)\n    local tipLength = math.max(2, 3 * scale)\n    local baseLength = totalDistance - tipLength\n\n    if baseLength > 1 then\n        local arrowDrawer = TensorCore.getCachedDrawer(\n            0xFF00FFFF,\n            0xFF0088FF,\n            0xFF0000FF,\n            0xFFFFFFFF,\n            2\n        )\n        arrowDrawer:addArrow(\n            sourcePos.x,\n            sourcePos.y,\n            sourcePos.z,\n            heading,\n            baseLength,\n            baseWidth,\n            tipLength,\n            tipWidth,\n            false,\n            flags\n        )\n    end\n\n    local blueDrawer = TensorCore.getCachedDrawer(nil, nil, 0xFFFF0000, 0xFFFF0000, 2)\n    blueDrawer:addCircle(targetPos.x, targetPos.y, targetPos.z, 0.4, false, flags)\n\n    Argus.addCircleFilled(\n        targetPos.x,\n        targetPos.y,\n        targetPos.z,\n        0.15,\n        32,\n        0xFF00FF00,\n        nil,\n        0,\n        0,\n        0,\n        0,\n        false,\n        flags\n    )\nend\n\nself.used = true",
							endIfUsed = true,
							name = "Draw Protean Wave 2 bait arrow",
							uuid = "0ae15df4-3e1e-b88f-91af-54ac2889de48",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				loop = true,
				mechanicTime = 71.9,
				name = "[Draw] Protean Wave 2 Bait Arrow",
				timeRange = true,
				timelineIndex = 17,
				timerEndOffset = 0.30000001192093,
				timerStartOffset = -5,
				uuid = "9d8cf148-8dfb-40e4-8ca5-20e691ace819",
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
							actionLua = "local livingLiquids = TensorCore.entityList(\"contentid=9211\")\nlocal party = TensorCore.getEntityGroupList(\"Party\")\nlocal drawer = TensorCore.getMoogleDrawer()\nlocal livingLiquid = nil\n\nif livingLiquids then\n    for _, entity in pairs(livingLiquids) do\n        if entity and entity.id and entity.pos and Argus.isEntityVisible(entity) then\n            livingLiquid = entity\n            break\n        end\n    end\nend\n\nif livingLiquid and drawer then\n    drawer:addCone(livingLiquid.pos.x, livingLiquid.pos.y, livingLiquid.pos.z, 40, math.pi / 6, livingLiquid.pos.h, false)\nend\n\nif livingLiquid and party and drawer then\n    local players = {}\n\n    for _, player in pairs(party) do\n        if player and player.id and player.pos then\n            players[#players + 1] = player\n        end\n    end\n\n    table.sort(players, function(a, b)\n        return TensorCore.getDistance3d(livingLiquid.pos, a.pos) < TensorCore.getDistance3d(livingLiquid.pos, b.pos)\n    end)\n\n    local playerCount = math.min(4, #players)\n    for i = 1, playerCount do\n        local player = players[i]\n        local heading = TensorCore.getHeadingToTarget(livingLiquid.pos, player.pos)\n        drawer:addCone(livingLiquid.pos.x, livingLiquid.pos.y, livingLiquid.pos.z, 40, math.pi / 6, heading, false)\n    end\n\n    local furthestStart = math.max(1, #players - 3)\n    for i = furthestStart, #players do\n        local player = players[i]\n        drawer:addCircle(player.pos.x, player.pos.y, player.pos.z, 5, false)\n    end\nend\n\nself.used = true",
							endIfUsed = true,
							name = "Draw 40y Protean Wave cones on 4 closest players",
							uuid = "6c8c5923-8556-115d-ac23-93ec0f4238f9",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				loop = true,
				mechanicTime = 71.9,
				name = "[Draw] Protean Waves 2",
				timeRange = true,
				timelineIndex = 17,
				timerEndOffset = 0.30000001192093,
				timerStartOffset = -1.25,
				uuid = "d42aab18-c202-238f-9dee-497630b63d8c",
				version = 2,
			},
		},
	},
	[19] = 
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
							actionLua = "local livingLiquids = TensorCore.entityList(\"contentid=9211\")\nlocal party = TensorCore.getEntityGroupList(\"Party\")\nlocal drawer = TensorCore.getMoogleDrawer()\nlocal livingLiquid = nil\n\nif livingLiquids then\n    for _, entity in pairs(livingLiquids) do\n        if entity and entity.id and entity.pos and Argus.isEntityVisible(entity) then\n            livingLiquid = entity\n            break\n        end\n    end\nend\n\nif livingLiquid and drawer then\n    drawer:addCone(livingLiquid.pos.x, livingLiquid.pos.y, livingLiquid.pos.z, 40, math.pi / 6, livingLiquid.pos.h, false)\nend\n\nif livingLiquid and party and drawer then\n    local players = {}\n\n    for _, player in pairs(party) do\n        if player and player.id and player.pos then\n            players[#players + 1] = player\n        end\n    end\n\n    table.sort(players, function(a, b)\n        return TensorCore.getDistance3d(livingLiquid.pos, a.pos) < TensorCore.getDistance3d(livingLiquid.pos, b.pos)\n    end)\n\n    local playerCount = math.min(4, #players)\n    for i = 1, playerCount do\n        local player = players[i]\n        local heading = TensorCore.getHeadingToTarget(livingLiquid.pos, player.pos)\n        drawer:addCone(livingLiquid.pos.x, livingLiquid.pos.y, livingLiquid.pos.z, 40, math.pi / 6, heading, false)\n    end\n\nend\n\nself.used = true",
							endIfUsed = true,
							name = "Draw 40y Protean Wave cones on 4 closest players",
							uuid = "a3fa6c67-2c53-d33d-aad0-bfdc9aa5586e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				loop = true,
				mechanicTime = 75,
				name = "[Draw] Protean Waves 3",
				timeRange = true,
				timelineIndex = 19,
				timerEndOffset = 0.30000001192093,
				timerStartOffset = -1.25,
				uuid = "95cc6414-8200-8ff5-9686-6fb304edf075",
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
							actionLua = "local roster = AnyoneCore.Roster\nlocal player = TensorCore.mGetPlayer()\nlocal mySlot = roster and roster.mySlot()\nlocal sourcePos = player and player.pos\nlocal newNorth = data.liquidRageNewNorth\n\ndata.proteanWave3BaitPositions75 = data.proteanWave3BaitPositions75 or {\n    center = { x = 100, y = 0, z = 100 },\n    positions = {\n        -- Radian is an offset from the inward direction (new north toward center).\n        -- Positive is southwest; negative is southeast.\n        H1 = { radian = -math.pi / 17, distance = 15.5 },\n        R2 = { radian = -math.pi / 15, distance = 18.35 },\n        H2 = { radian = math.pi / 17, distance = 15.5 },\n        R1 = { radian = math.pi / 15, distance = 18.35 },\n        M1 = { radian = -math.pi / 16.4, distance = 22.75 },\n        M2 = { radian = math.pi / 16.4, distance = 22.75 },\n        T1 = { radian = -math.pi / 16.4, distance = 22.75 },\n        T2 = { radian = math.pi / 16.4, distance = 22.75 },\n    }\n}\n\nlocal state = data.proteanWave3BaitPositions75\nlocal bait = mySlot and state.positions[mySlot]\n\nif sourcePos and newNorth and bait then\n    local headingToCenter = TensorCore.getHeadingToTarget(newNorth, state.center)\n    local targetHeading = TensorCore.convertHeading(headingToCenter + bait.radian)\n    local targetPos = TensorCore.getPosInDirection(newNorth, targetHeading, bait.distance)\n\n    local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n    local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n    local scale = math.min(1, totalDistance / 15)\n    local baseWidth = math.max(0.5, 1 * scale)\n    local tipWidth = math.max(1.5, 3 * scale)\n    local tipLength = math.max(2, 3 * scale)\n    local baseLength = totalDistance - tipLength\n\n    if baseLength > 1 then\n        local arrowDrawer = TensorCore.getCachedDrawer(\n            0xFF00FFFF,\n            0xFF0088FF,\n            0xFF0000FF,\n            0xFFFFFFFF,\n            2\n        )\n        arrowDrawer:addArrow(\n            sourcePos.x,\n            sourcePos.y,\n            sourcePos.z,\n            heading,\n            baseLength,\n            baseWidth,\n            tipLength,\n            tipWidth,\n            false,\n            flags\n        )\n    end\n\n    local blueDrawer = TensorCore.getCachedDrawer(nil, nil, 0xFFFF0000, 0xFFFF0000, 2)\n    blueDrawer:addCircle(targetPos.x, targetPos.y, targetPos.z, 0.4, false, flags)\n\n    Argus.addCircleFilled(\n        targetPos.x,\n        targetPos.y,\n        targetPos.z,\n        0.15,\n        32,\n        0xFF00FF00,\n        nil,\n        0,\n        0,\n        0,\n        0,\n        false,\n        flags\n    )\nend\n\nself.used = true",
							endIfUsed = true,
							name = "Draw Protean Wave 3 bait arrow",
							uuid = "d1ef528d-81e7-86fb-85b1-04ab88c05a18",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				loop = true,
				mechanicTime = 75,
				name = "[Draw] Protean Wave 3 Bait Arrow",
				timeRange = true,
				timelineIndex = 19,
				timerEndOffset = 0.30000001192093,
				timerStartOffset = -2.7999999523163,
				uuid = "e3a9c50c-e9da-5545-9993-873d8f477adb",
				version = 2,
			},
		},
	},
	[21] = 
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
							actionLua = "local rages = TensorCore.entityList(\"contentid=9213\")\nlocal drawer = TensorCore.getMoogleDrawer()\n\nif rages and drawer then\n    for _, rage in pairs(rages) do\n        if rage and rage.id then\n            local tethers = Argus.getTethersOnEnt(rage.id)\n            if tethers then\n                for _, tether in pairs(tethers) do\n                    if tether and tether.targetid then\n                        local target = TensorCore.mGetEntity(tether.targetid)\n                        if target and target.pos then\n                            drawer:addCircle(target.pos.x, target.pos.y, target.pos.z, 5, false)\n                        end\n                    end\n                end\n            end\n        end\n    end\nend\n\nself.used = true",
							name = "Draw 5y Drainage circles",
							uuid = "34997bce-47cf-2489-93ae-a64afa79688f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				loop = true,
				mechanicTime = 86.6,
				name = "[Draw] Drainage Tankbuster",
				timeRange = true,
				timelineIndex = 21,
				timerStartOffset = -7,
				uuid = "222eb4fa-5df8-9341-bc18-ae9621c28f79",
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
							actionLua = "data.liquidRageNewNorth = nil\nself.used = true",
							endIfUsed = true,
							name = "Clear New North",
							uuid = "906d64cf-4baa-47fe-aa5e-c50fe91492aa",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 91.7,
				name = "[Misc] Clear New North",
				timelineIndex = 23,
				uuid = "2025aa5e-1a55-d011-a07e-3010ef466d6f",
				version = 2,
			},
		},
	},
	[24] = 
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
							actionLua = "if data.liquidRageNewNorth then\n  self.used = true\n  return\nend\n\nlocal center = { x = 100, y = 0, z = 100 }\nlocal rages = TensorCore.entityList(\"contentid=9213\")\nlocal visible = {}\n\nfor _, entity in pairs(rages) do\n  if entity and Argus.isEntityVisible(entity) then\n    visible[#visible + 1] = entity\n  end\nend\n\nif #visible < 3 then\n  return\nend\n\nlocal occupied = {}\nlocal step = math.pi / 4\nlocal spawnParity\n\nfor _, entity in ipairs(visible) do\n  local heading = TensorCore.getHeadingToTarget(center, entity.pos)\n  local slot = math.floor((heading / step) + 0.5) % 8\n  occupied[slot] = true\n\n  local parity = slot % 2\n  if spawnParity == nil then\n    spawnParity = parity\n  elseif spawnParity ~= parity then\n    return\n  end\nend\n\nlocal freeSlot\nfor slot = spawnParity, 7, 2 do\n  if not occupied[slot] then\n    freeSlot = slot\n    break\n  end\nend\n\nif freeSlot then\n  local northHeading = freeSlot * step\n  local textPosition = TensorCore.getPosInDirection(center, northHeading, 18)\n  data.liquidRageNewNorth = textPosition\n  AnyoneCore.addTimedWorldText(25000, \"New North\", textPosition, 0xFFFFFFFF, true, 1.5)\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"73879d8b-258a-cd03-b760-5fa022b2a5f9",
									true,
								},
								
								{
									"a6e1804b-2811-7fb0-8b95-36fc82b48f73",
									true,
								},
								
								{
									"5e8a8433-991d-ca2d-a18e-e4fc9d3f18d2",
									true,
								},
							},
							endIfUsed = true,
							name = "Draw New North",
							uuid = "67dc5db5-b1aa-8f36-93b9-d126934c015f",
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
							eventArgOptionType = 2,
							eventEntityContentID = 9213,
							name = "Liquid Rage",
							uuid = "73879d8b-258a-cd03-b760-5fa022b2a5f9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							eventArgType = 2,
							eventBoolValue = 2,
							name = "Was Visible: False",
							uuid = "a6e1804b-2811-7fb0-8b95-36fc82b48f73",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							eventArgType = 3,
							name = "Is Visible: True",
							uuid = "5e8a8433-991d-ca2d-a18e-e4fc9d3f18d2",
							version = 3,
						},
					},
				},
				eventType = 22,
				mechanicTime = 95.9,
				name = "[Draw] New North",
				timeRange = true,
				timelineIndex = 24,
				timerEndOffset = 5,
				timerStartOffset = -5,
				uuid = "9294c484-5472-3d3a-ae38-dc9bb48cbc99",
				version = 2,
			},
		},
	},
	[25] = 
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
							actionLua = "local livingLiquids = TensorCore.entityList(\"contentid=9211\")\nlocal party = TensorCore.getEntityGroupList(\"Party\")\nlocal drawer = TensorCore.getMoogleDrawer()\nlocal livingLiquid = nil\n\nif livingLiquids then\n    for _, entity in pairs(livingLiquids) do\n        if entity and entity.id and entity.pos and Argus.isEntityVisible(entity) then\n            livingLiquid = entity\n            break\n        end\n    end\nend\n\nif livingLiquid and party and drawer then\n    for _, player in pairs(party) do\n        if player and player.id and player.pos then\n            local heading = TensorCore.getHeadingToTarget(livingLiquid.pos, player.pos)\n            drawer:addCone(\n                livingLiquid.pos.x,\n                livingLiquid.pos.y,\n                livingLiquid.pos.z,\n                40,\n                math.pi / 6,\n                heading,\n                false\n            )\n        end\n    end\nend\n\nself.used = true",
							endIfUsed = true,
							name = "Draw 40y Protean Wave cones on all players",
							uuid = "f20b0890-a160-d41e-9073-a28b5ef87695",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				loop = true,
				mechanicTime = 107,
				name = "[Draw] Protean Waves 1",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = -2.9000000953674,
				timerStartOffset = -5,
				uuid = "3041e844-4ba3-e3fb-a448-97ef40d2ad4f",
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
							actionLua = "local roster = AnyoneCore.Roster\nlocal player = TensorCore.mGetPlayer()\nlocal mySlot = roster and roster.mySlot()\nlocal sourcePos = player and player.pos\nlocal newNorth = data.liquidRageNewNorth\nlocal baitDistance\n\nif mySlot == \"T1\" or mySlot == \"H1\" or mySlot == \"R2\" then\n    baitDistance = 13\nelseif mySlot == \"M1\" or mySlot == \"M2\"\n    or mySlot == \"H2\" or mySlot == \"R1\"\n    or mySlot == \"T2\" then\n    baitDistance = 22\nend\n\nif sourcePos and newNorth and baitDistance then\n    data.proteanWave1BaitArrow107 = data.proteanWave1BaitArrow107 or {\n        center = { x = 100, y = 0, z = 100 }\n    }\n\n    local center = data.proteanWave1BaitArrow107.center\n    local headingToCenter = TensorCore.getHeadingToTarget(newNorth, center)\n    local targetPos = TensorCore.getPosInDirection(newNorth, headingToCenter, baitDistance)\n\n    local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n    local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n    local scale = math.min(1, totalDistance / 15)\n    local baseWidth = math.max(0.5, 1 * scale)\n    local tipWidth = math.max(1.5, 3 * scale)\n    local tipLength = math.max(2, 3 * scale)\n    local baseLength = totalDistance - tipLength\n\n    if baseLength > 1 then\n        local arrowDrawer = TensorCore.getCachedDrawer(\n            0xFF00FFFF,\n            0xFF0088FF,\n            0xFF0000FF,\n            0xFFFFFFFF,\n            2\n        )\n        arrowDrawer:addArrow(\n            sourcePos.x,\n            sourcePos.y,\n            sourcePos.z,\n            heading,\n            baseLength,\n            baseWidth,\n            tipLength,\n            tipWidth,\n            false,\n            flags\n        )\n    end\n\n    local blueDrawer = TensorCore.getCachedDrawer(nil, nil, 0xFFFF0000, 0xFFFF0000, 2)\n    blueDrawer:addCircle(targetPos.x, targetPos.y, targetPos.z, 0.4, false, flags)\n\n    Argus.addCircleFilled(\n        targetPos.x,\n        targetPos.y,\n        targetPos.z,\n        0.15,\n        32,\n        0xFF00FF00,\n        nil,\n        0,\n        0,\n        0,\n        0,\n        false,\n        flags\n    )\nend\n\nself.used = true",
							endIfUsed = true,
							name = "Draw Protean Wave 1 bait arrow",
							uuid = "2522ae7e-3ecc-1252-ba55-a8477ab26aa5",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				loop = true,
				mechanicTime = 107,
				name = "[Draw] Protean Wave 1 Bait Arrow",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = -2.9000000953674,
				timerStartOffset = -9,
				uuid = "124087d4-d3a9-2031-925d-b3cc0eaaaa24",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Guidance",
				uuid = "ccb4f74a-b5c9-ccfb-8436-cf045751890e",
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
							actionLua = "local s=data.tea_lpdu_protean_moves\nif not s then s={};data.tea_lpdu_protean_moves=s end\nif not s[\"move104\"] then\n s[\"move104\"] = true\n AnyoneCore.Shotcall(\"Move\",true,2,false)\n TensorCore.timelineLogToFile(\"[TEA protean] move104 AOE-created, move cue\\n\")\nend\nself.used=true",
							conditions = 
							{
								
								{
									"b79953a9-4466-acee-a25b-35e154345d06",
									true,
								},
							},
							name = "[LPDU] Proteans dropped - Move 104",
							uuid = "37dc9d31-a0a8-bb4c-bd8d-e1dc56f807fe",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.aoeID==18468 and eventArgs.contentID==9211",
							dequeueIfLuaFalse = true,
							name = "Baited visible cone created",
							uuid = "b79953a9-4466-acee-a25b-35e154345d06",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Guidance",
				eventType = 18,
				loop = true,
				mechanicTime = 107,
				name = "[LPDU] Proteans dropped - Move 104",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = 1,
				timerStartOffset = -6,
				uuid = "e4b264bf-2c2f-a261-9687-b81f7d7698d6",
				version = 2,
			},
		},
	},
	[27] = 
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
							actionLua = "local roster = AnyoneCore.Roster\nlocal player = TensorCore.mGetPlayer()\nlocal mySlot = roster and roster.mySlot()\nlocal sourcePos = player and player.pos\nlocal newNorth = data.liquidRageNewNorth\n\ndata.proteanWave2BaitPositions109 = data.proteanWave2BaitPositions109 or {\n    center = { x = 100, y = 0, z = 100 },\n    positions = {\n        -- Radian is an offset from the inward direction (new north toward center).\n        -- Positive is southwest; negative is southeast.\n        H1 = { radian = -math.pi / 4.3, distance = 12 },\n        R2 = { radian = -math.pi / 4.3, distance = 15 },\n        H2 = { radian = -math.pi / 12.5, distance = 30.4 },\n        R1 = { radian = math.pi / 7.5, distance = 28.1 },\n        M1 = { radian = 0, distance = 22 },\n        M2 = { radian = math.pi / 15, distance = 18.4 },\n        T1 = { radian = math.pi / 20, distance = 15.7 },\n        T2 = { radian = -math.pi / 15, distance = 18.4 },\n    }\n}\n\nlocal state = data.proteanWave2BaitPositions109\nlocal bait = mySlot and state.positions[mySlot]\n\nif sourcePos and newNorth and bait then\n    local headingToCenter = TensorCore.getHeadingToTarget(newNorth, state.center)\n    local targetHeading = TensorCore.convertHeading(headingToCenter + bait.radian)\n    local targetPos = TensorCore.getPosInDirection(newNorth, targetHeading, bait.distance)\n\n    local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n    local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n    local scale = math.min(1, totalDistance / 15)\n    local baseWidth = math.max(0.5, 1 * scale)\n    local tipWidth = math.max(1.5, 3 * scale)\n    local tipLength = math.max(2, 3 * scale)\n    local baseLength = totalDistance - tipLength\n\n    if baseLength > 1 then\n        local arrowDrawer = TensorCore.getCachedDrawer(\n            0xFF00FFFF,\n            0xFF0088FF,\n            0xFF0000FF,\n            0xFFFFFFFF,\n            2\n        )\n        arrowDrawer:addArrow(\n            sourcePos.x,\n            sourcePos.y,\n            sourcePos.z,\n            heading,\n            baseLength,\n            baseWidth,\n            tipLength,\n            tipWidth,\n            false,\n            flags\n        )\n    end\n\n    local blueDrawer = TensorCore.getCachedDrawer(nil, nil, 0xFFFF0000, 0xFFFF0000, 2)\n    blueDrawer:addCircle(targetPos.x, targetPos.y, targetPos.z, 0.4, false, flags)\n\n    Argus.addCircleFilled(\n        targetPos.x,\n        targetPos.y,\n        targetPos.z,\n        0.15,\n        32,\n        0xFF00FF00,\n        nil,\n        0,\n        0,\n        0,\n        0,\n        false,\n        flags\n    )\nend\n\nself.used = true",
							endIfUsed = true,
							name = "Draw Protean Wave 2 bait arrow",
							uuid = "7dc7d0c1-e0d7-3091-b4eb-f139bcc8379c",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				loop = true,
				mechanicTime = 109.1,
				name = "[Draw] Protean Wave 2 Bait Arrow",
				timeRange = true,
				timelineIndex = 27,
				timerEndOffset = 0.30000001192093,
				timerStartOffset = -5,
				uuid = "cd798737-bfdd-cca9-b0db-62bfcd8da652",
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
							actionLua = "local livingLiquids = TensorCore.entityList(\"contentid=9211\")\nlocal party = TensorCore.getEntityGroupList(\"Party\")\nlocal drawer = TensorCore.getMoogleDrawer()\nlocal livingLiquid = nil\n\nif livingLiquids then\n    for _, entity in pairs(livingLiquids) do\n        if entity and entity.id and entity.pos and Argus.isEntityVisible(entity) then\n            livingLiquid = entity\n            break\n        end\n    end\nend\n\nif livingLiquid and drawer then\n    drawer:addCone(livingLiquid.pos.x, livingLiquid.pos.y, livingLiquid.pos.z, 40, math.pi / 6, livingLiquid.pos.h, false)\nend\n\nif livingLiquid and party and drawer then\n    local players = {}\n\n    for _, player in pairs(party) do\n        if player and player.id and player.pos then\n            players[#players + 1] = player\n        end\n    end\n\n    table.sort(players, function(a, b)\n        return TensorCore.getDistance3d(livingLiquid.pos, a.pos) < TensorCore.getDistance3d(livingLiquid.pos, b.pos)\n    end)\n\n    local playerCount = math.min(4, #players)\n    for i = 1, playerCount do\n        local player = players[i]\n        local heading = TensorCore.getHeadingToTarget(livingLiquid.pos, player.pos)\n        drawer:addCone(livingLiquid.pos.x, livingLiquid.pos.y, livingLiquid.pos.z, 40, math.pi / 6, heading, false)\n    end\n\n    local furthestStart = math.max(1, #players - 3)\n    for i = furthestStart, #players do\n        local player = players[i]\n        drawer:addCircle(player.pos.x, player.pos.y, player.pos.z, 5, false)\n    end\nend\n\nself.used = true",
							endIfUsed = true,
							name = "Draw 40y Protean Wave cones on 4 closest players",
							uuid = "9c966e16-382e-a7d8-b93f-6743a66b7cfc",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				loop = true,
				mechanicTime = 109.1,
				name = "[Draw] Protean Waves 2",
				timeRange = true,
				timelineIndex = 27,
				timerEndOffset = 0.30000001192093,
				timerStartOffset = -1.25,
				uuid = "aa5d9060-df98-cc26-9428-21a171420603",
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
									"ff90b692-ac97-981b-ad03-880cccd59d82",
									true,
								},
							},
							gVar = "ACR_TensorReaper3_Hotbar_SecondWind",
							uuid = "07d5bc13-88c9-dc9a-8231-47a23139d4d1",
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
							comparator = 2,
							conditionType = 2,
							hpValue = 50,
							name = "Self HP <= 50%",
							uuid = "ff90b692-ac97-981b-ad03-880cccd59d82",
							version = 3,
						},
					},
				},
				mechanicTime = 109.1,
				name = "[RPR] Second Wind",
				timeRange = true,
				timelineIndex = 27,
				timerEndOffset = 10,
				uuid = "ee1397e8-8a34-8325-916c-f119a8935985",
				version = 2,
			},
		},
	},
	[29] = 
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
							actionLua = "local livingLiquids = TensorCore.entityList(\"contentid=9211\")\nlocal party = TensorCore.getEntityGroupList(\"Party\")\nlocal drawer = TensorCore.getMoogleDrawer()\nlocal livingLiquid = nil\n\nif livingLiquids then\n    for _, entity in pairs(livingLiquids) do\n        if entity and entity.id and entity.pos and Argus.isEntityVisible(entity) then\n            livingLiquid = entity\n            break\n        end\n    end\nend\n\nif livingLiquid and drawer then\n    drawer:addCone(livingLiquid.pos.x, livingLiquid.pos.y, livingLiquid.pos.z, 40, math.pi / 6, livingLiquid.pos.h, false)\nend\n\nif livingLiquid and party and drawer then\n    local players = {}\n\n    for _, player in pairs(party) do\n        if player and player.id and player.pos then\n            players[#players + 1] = player\n        end\n    end\n\n    table.sort(players, function(a, b)\n        return TensorCore.getDistance3d(livingLiquid.pos, a.pos) < TensorCore.getDistance3d(livingLiquid.pos, b.pos)\n    end)\n\n    local playerCount = math.min(4, #players)\n    for i = 1, playerCount do\n        local player = players[i]\n        local heading = TensorCore.getHeadingToTarget(livingLiquid.pos, player.pos)\n        drawer:addCone(livingLiquid.pos.x, livingLiquid.pos.y, livingLiquid.pos.z, 40, math.pi / 6, heading, false)\n    end\n\nend\n\nself.used = true",
							endIfUsed = true,
							name = "Draw 40y Protean Wave cones on 4 closest players",
							uuid = "618e0a96-7fc0-8093-b318-9156c3f32570",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				loop = true,
				mechanicTime = 112.1,
				name = "[Draw] Protean Waves 3",
				timeRange = true,
				timelineIndex = 29,
				timerEndOffset = 0.30000001192093,
				timerStartOffset = -1.25,
				uuid = "45e1f0e9-0e30-87a0-9f0f-96c32aba6b72",
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
							actionLua = "local roster = AnyoneCore.Roster\nlocal player = TensorCore.mGetPlayer()\nlocal mySlot = roster and roster.mySlot()\nlocal sourcePos = player and player.pos\nlocal newNorth = data.liquidRageNewNorth\n\ndata.proteanWave3BaitPositions112 = data.proteanWave3BaitPositions12 or {\n    center = { x = 100, y = 0, z = 100 },\n    positions = {\n        -- Radian is an offset from the inward direction (new north toward center).\n        -- Positive is southwest; negative is southeast.\n        H1 = { radian = -math.pi / 20, distance = 15.7 },\n        R2 = { radian = -math.pi / 15, distance = 18.4 },\n        H2 = { radian = 0, distance = 22 },\n        R1 = { radian = math.pi / 15, distance = 18.4 },\n        M1 = { radian = math.pi / 12.5, distance = 33.4 },\n        M2 = { radian = math.pi / 3.1, distance = 19 },\n        T1 = { radian = math.pi / 10, distance = 14.3 },\n        T2 = { radian = -math.pi / 7.5, distance = 28.1 },\n    }\n}\n\nlocal state = data.proteanWave3BaitPositions112\nlocal bait = mySlot and state.positions[mySlot]\n\nif sourcePos and newNorth and bait then\n    local headingToCenter = TensorCore.getHeadingToTarget(newNorth, state.center)\n    local targetHeading = TensorCore.convertHeading(headingToCenter + bait.radian)\n    local targetPos = TensorCore.getPosInDirection(newNorth, targetHeading, bait.distance)\n\n    local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n    local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n    local scale = math.min(1, totalDistance / 15)\n    local baseWidth = math.max(0.5, 1 * scale)\n    local tipWidth = math.max(1.5, 3 * scale)\n    local tipLength = math.max(2, 3 * scale)\n    local baseLength = totalDistance - tipLength\n\n    if baseLength > 1 then\n        local arrowDrawer = TensorCore.getCachedDrawer(\n            0xFF00FFFF,\n            0xFF0088FF,\n            0xFF0000FF,\n            0xFFFFFFFF,\n            2\n        )\n        arrowDrawer:addArrow(\n            sourcePos.x,\n            sourcePos.y,\n            sourcePos.z,\n            heading,\n            baseLength,\n            baseWidth,\n            tipLength,\n            tipWidth,\n            false,\n            flags\n        )\n    end\n\n    local blueDrawer = TensorCore.getCachedDrawer(nil, nil, 0xFFFF0000, 0xFFFF0000, 2)\n    blueDrawer:addCircle(targetPos.x, targetPos.y, targetPos.z, 0.4, false, flags)\n\n    Argus.addCircleFilled(\n        targetPos.x,\n        targetPos.y,\n        targetPos.z,\n        0.15,\n        32,\n        0xFF00FF00,\n        nil,\n        0,\n        0,\n        0,\n        0,\n        false,\n        flags\n    )\nend\n\nself.used = true",
							endIfUsed = true,
							name = "Draw Protean Wave 3 bait arrow",
							uuid = "ff778045-a48a-1196-99a3-57f26e2edf87",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				loop = true,
				mechanicTime = 112.1,
				name = "[Draw] Protean Wave 3 Bait Arrow",
				timeRange = true,
				timelineIndex = 29,
				timerEndOffset = 4,
				timerStartOffset = -2.7999999523163,
				uuid = "7004a254-d7af-97e9-80d2-b3d2fe87c2a3",
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
							actionLua = "local liquidRages = TensorCore.entityList(\"contentid=9213\")\nlocal party = TensorCore.getEntityGroupList(\"Party\")\nlocal drawer = TensorCore.getMoogleDrawer()\n\nif liquidRages and party and drawer then\n    for _, rage in pairs(liquidRages) do\n        if rage and rage.id and rage.pos and Argus.isEntityVisible(rage) then\n            local nearestPlayer = nil\n            local nearestDistance = math.huge\n\n            for _, player in pairs(party) do\n                if player and player.id and player.pos then\n                    local distance = TensorCore.getDistance3d(rage.pos, player.pos)\n                    if distance < nearestDistance then\n                        nearestDistance = distance\n                        nearestPlayer = player\n                    end\n                end\n            end\n\n            if nearestPlayer then\n                local heading = TensorCore.getHeadingToTarget(rage.pos, nearestPlayer.pos)\n                drawer:addCone(\n                    rage.pos.x,\n                    rage.pos.y,\n                    rage.pos.z,\n                    40,\n                    math.pi / 6,\n                    heading,\n                    false\n                )\n            end\n        end\n    end\nend\n\nself.used = true",
							endIfUsed = true,
							name = "Draw nearest Protean Wave for each Liquid Rage",
							uuid = "d0ea856b-7c84-d076-a226-656068a41764",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				loop = true,
				mechanicTime = 115.1,
				name = "[Draw] Protean Waves near 116",
				timeRange = true,
				timelineIndex = 31,
				timerEndOffset = 0.30000001192093,
				timerStartOffset = -1.25,
				uuid = "fcd72e13-2457-e549-9254-937ea84638ce",
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
							gVar = "ACR_TensorReaper3_Hotbar_Feint",
							uuid = "71807dcc-4b8b-2149-b9e7-0626364e7675",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 115.1,
				name = "[Mit] Feint",
				timeRange = true,
				timelineIndex = 31,
				timerEndOffset = -0.5,
				timerStartOffset = -9.5,
				uuid = "e1ea8aa2-1ec2-1c80-a95d-61d985d73f13",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Guidance",
				uuid = "db49ae5d-4aaa-a9ca-b0c8-98d0d56e4748",
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
							actionLua = "local R=AnyoneCore.Roster\nif not R or not R.current() then return end\nlocal slot=R.mySlot()\nif not slot then return end\n-- LPDU second-protean tornado baiters: both melees and off-tank.\nif slot==\"M1\" or slot==\"M2\" or slot==\"T2\" then\n AnyoneCore.Shotcall(\"Bait tornado protean\",true,2,false)\nend\nself.used=true",
							name = "[LPDU] Tornado protean - Assigned bait reminder",
							uuid = "f996786f-3795-02d3-bbc6-9e865abec42b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Guidance",
				mechanicTime = 115.1,
				name = "[LPDU] Tornado protean - Assigned bait reminder",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 31,
				timerEndOffset = 0.2,
				timerStartOffset = -1.1,
				uuid = "661293e5-f15b-53df-8d72-5ce4119206b3",
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
				name = "Limit Cut",
				uuid = "7ac52fc5-5111-5ba5-8d98-0f1a89d069e6",
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
							actionLua = "local state = data.teaLimitCut\nlocal number = state and state.myNumber\nlocal player = TensorCore.mGetPlayer()\nlocal sourcePos = player and player.pos\n\nif number and sourcePos and state.firstExplosion and state.oppositeExplosion then\n    local targetPos\n    if number == 1 or number == 2 or number == 5 or number == 6 then\n        targetPos = state.firstExplosion\n    else\n        targetPos = state.oppositeExplosion\n    end\n\n    local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n    local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n    local scale = math.min(1, totalDistance / 15)\n    local tipLength = math.max(2, 3 * scale)\n    local baseLength = totalDistance - tipLength\n\n    if baseLength > 1 then\n        local drawer = TensorCore.getCachedDrawer(\n            0xFF00FFFF,\n            0xFF0088FF,\n            0xFF0000FF,\n            0xFFFFFFFF,\n            2\n        )\n        drawer:addArrow(\n            sourcePos.x, sourcePos.y, sourcePos.z,\n            heading,\n            baseLength, math.max(0.5, scale),\n            tipLength, math.max(1.5, 3 * scale),\n            false,\n            Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n        )\n    end\n\n    local markerDrawer = TensorCore.getCachedDrawer(\n        nil,\n        nil,\n        0xFFFF0000,\n        0xFFFF0000,\n        2\n    )\n    markerDrawer:addCircle(targetPos.x, targetPos.y, targetPos.z, 0.6, false)\nend\n\nself.used = true",
							endIfUsed = true,
							name = "Draw assigned start arrow",
							uuid = "7c5412be-25f6-54cb-a59d-c4963feb8c91",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Limit Cut",
				eventType = 12,
				loop = true,
				mechanicTime = 200,
				name = "Limit Cut Start Arrow",
				timeRange = true,
				timelineIndex = 39,
				timerEndOffset = 2,
				timerStartOffset = -120,
				uuid = "80879357-6a6a-4611-8bac-c8548ba88429",
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
							actionLua = "local state = data.teaLimitCut\n\nif not state or not state.players then\n    self.used = true\n    return\nend\n\nstate.cleaveIndex = (state.cleaveIndex or 0) + 1\nlocal targetNumber = (state.cleaveIndex * 2) - 1\nlocal targetID = state.players[targetNumber]\nlocal drawer = TensorCore.getMoogleDrawer()\n\nif drawer and targetID then\n    drawer:addTimedConeOnEnt(\n        1400,\n        eventArgs.entityID,\n        25,\n        math.pi / 2,\n        targetID,\n        0,\n        false,\n        false\n    )\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"36c31ee4-c217-e8a4-98a0-74fa3a372270",
									true,
								},
								
								{
									"65fa3894-f55a-9c2e-93a5-2aa3b7555157",
									true,
								},
							},
							endIfUsed = true,
							name = "Draw Alpha Sword cone",
							uuid = "4771baff-8a29-8eda-8330-69ade5c3e1e3",
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
							eventArgOptionType = 2,
							eventEntityContentID = 9218,
							name = "Cruise Chaser",
							uuid = "36c31ee4-c217-e8a4-98a0-74fa3a372270",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 3,
							name = "Became visible",
							uuid = "65fa3894-f55a-9c2e-93a5-2aa3b7555157",
							version = 3,
						},
					},
				},
				displayPath = "Limit Cut",
				eventType = 22,
				loop = true,
				mechanicTime = 200,
				name = "Limit Cut Cleave Cones",
				timeRange = true,
				timelineIndex = 39,
				timerEndOffset = 24.5,
				timerStartOffset = 5,
				uuid = "fd04a07c-b42a-d305-a7b6-f63360e82358",
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
							actionLua = "local markerID = eventArgs.markerID\nlocal entityID = eventArgs.entityID\n\nif markerID < 79 or markerID > 86 then\n    self.used = true\n    return\nend\n\nlocal number = markerID - 78\nlocal state = data.teaLimitCut\n\nif number == 1 or not state then\n    state = {\n        players = {},\n        cleaveIndex = 0,\n        west = { x = 86, y = 0, z = 100 },\n        east = { x = 114, y = 0, z = 100 }\n    }\n    data.teaLimitCut = state\nend\n\nstate.players[number] = entityID\n\nlocal player = TensorCore.mGetPlayer()\nif player and player.id == entityID then\n    state.myNumber = number\nend\n\nself.used = true",
							name = "Record numbered players",
							uuid = "85aff0bb-c2ac-2a20-9c14-bc5b7d5cc963",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "AnyoneCore.Shotcall(\"1\", true, 5, false)\nself.used = true",
							conditions = 
							{
								
								{
									"b3df2d6e-2233-b8fa-af00-2f428f738284",
									true,
								},
								
								{
									"de6d5126-94f7-dd00-b7aa-644272d02388",
									true,
								},
							},
							name = "Shotcall Limit Cut 1",
							uuid = "e082df04-aa73-b5ca-92f5-c9ee4dde3ced",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "AnyoneCore.Shotcall(\"2\", true, 5, false)\nself.used = true",
							conditions = 
							{
								
								{
									"b3df2d6e-2233-b8fa-af00-2f428f738284",
									true,
								},
								
								{
									"0709cd30-336d-f60b-b228-1b9f75411824",
									true,
								},
							},
							name = "Shotcall Limit Cut 2",
							uuid = "c9cacf9f-d12c-66a2-b56b-02572f48c665",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "AnyoneCore.Shotcall(\"3\", true, 5, false)\nself.used = true",
							conditions = 
							{
								
								{
									"b3df2d6e-2233-b8fa-af00-2f428f738284",
									true,
								},
								
								{
									"a14f974a-d607-54eb-9e53-1a9e7afe81da",
									true,
								},
							},
							name = "Shotcall Limit Cut 3",
							uuid = "3de7e327-3750-39a3-90aa-afc98e75337c",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "AnyoneCore.Shotcall(\"4\", true, 5, false)\nself.used = true",
							conditions = 
							{
								
								{
									"b3df2d6e-2233-b8fa-af00-2f428f738284",
									true,
								},
								
								{
									"18fbb99c-1658-8882-8e28-88b0832f5acc",
									true,
								},
							},
							name = "Shotcall Limit Cut 4",
							uuid = "ea51d647-660b-02a4-a9ae-22e8fd1523c3",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "AnyoneCore.Shotcall(\"5\", true, 5, false)\nself.used = true",
							conditions = 
							{
								
								{
									"b3df2d6e-2233-b8fa-af00-2f428f738284",
									true,
								},
								
								{
									"9f0dcddd-814f-38eb-8520-fde075d06c9f",
									true,
								},
							},
							name = "Shotcall Limit Cut 5",
							uuid = "7ea2ad91-2943-ee23-b457-9b722dc7754e",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "AnyoneCore.Shotcall(\"6\", true, 5, false)\nself.used = true",
							conditions = 
							{
								
								{
									"b3df2d6e-2233-b8fa-af00-2f428f738284",
									true,
								},
								
								{
									"25db4aea-ee31-1e68-9b57-0d79c182d5e9",
									true,
								},
							},
							name = "Shotcall Limit Cut 6",
							uuid = "275548a9-8921-9b06-8a1f-9f75bf09ba41",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "AnyoneCore.Shotcall(\"7\", true, 5, false)\nself.used = true",
							conditions = 
							{
								
								{
									"b3df2d6e-2233-b8fa-af00-2f428f738284",
									true,
								},
								
								{
									"982bef18-8d14-b036-aeba-d06aec719741",
									true,
								},
							},
							name = "Shotcall Limit Cut 7",
							uuid = "01a540b2-77f1-971a-9d23-249187fdf99d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "AnyoneCore.Shotcall(\"8\", true, 5, false)\nself.used = true",
							conditions = 
							{
								
								{
									"b3df2d6e-2233-b8fa-af00-2f428f738284",
									true,
								},
								
								{
									"25421fda-b53c-736e-a307-6229e77ff12d",
									true,
								},
							},
							name = "Shotcall Limit Cut 8",
							uuid = "a5947b4a-51c0-6c46-b0e6-42f55c28b945",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Party",
							conditionType = 10,
							dequeueIfLuaFalse = true,
							name = "Marker on Self",
							partyTargetType = "Event Entity",
							uuid = "b3df2d6e-2233-b8fa-af00-2f428f738284",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventMarkerID = 79,
							name = "Marker 1",
							uuid = "de6d5126-94f7-dd00-b7aa-644272d02388",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventMarkerID = 80,
							name = "Marker 2",
							uuid = "0709cd30-336d-f60b-b228-1b9f75411824",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventMarkerID = 81,
							name = "Marker 3",
							uuid = "a14f974a-d607-54eb-9e53-1a9e7afe81da",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventMarkerID = 82,
							name = "Marker 4",
							uuid = "18fbb99c-1658-8882-8e28-88b0832f5acc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventMarkerID = 83,
							name = "Marker 5",
							uuid = "9f0dcddd-814f-38eb-8520-fde075d06c9f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventMarkerID = 84,
							name = "Marker 6",
							uuid = "25db4aea-ee31-1e68-9b57-0d79c182d5e9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventMarkerID = 85,
							name = "Marker 7",
							uuid = "982bef18-8d14-b036-aeba-d06aec719741",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventMarkerID = 86,
							name = "Marker 8",
							uuid = "25421fda-b53c-736e-a307-6229e77ff12d",
							version = 3,
						},
					},
				},
				displayPath = "Limit Cut",
				eventType = 4,
				loop = true,
				mechanicTime = 200,
				name = "Limit Cut Assignment",
				timeRange = true,
				timelineIndex = 39,
				timerEndOffset = 30,
				timerStartOffset = -120,
				uuid = "d9ebf7cb-20ec-b026-9813-2ecdf0972139",
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
							actionLua = "local state = data.teaLimitCut\n\nif not state or not state.players then\n    self.used = true\n    return\nend\n\nstate.dashIndex = (state.dashIndex or 0) + 1\nlocal targetNumber = state.dashIndex * 2\nlocal targetID = state.players[targetNumber]\nlocal drawer = TensorCore.getMoogleDrawer()\n\nif drawer and targetID then\n    drawer:addTimedRectOnEnt(\n        1700,\n        eventArgs.entityID,\n        50,\n        10,\n        targetID,\n        0,\n        true,\n        false,\n        false\n    )\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"488e962e-48d4-ed8b-ade4-63c9d10b3442",
									true,
								},
							},
							endIfUsed = true,
							name = "Draw Super Blassty Charge rectangle",
							uuid = "e7e6ca91-1417-f602-9bad-0e881f22078c",
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
							eventSpellID = 18484,
							name = "Alpha Sword",
							uuid = "488e962e-48d4-ed8b-ade4-63c9d10b3442",
							version = 3,
						},
					},
				},
				displayPath = "Limit Cut",
				eventType = 2,
				loop = true,
				mechanicTime = 200,
				name = "Limit Cut Dash Rectangles",
				timeRange = true,
				timelineIndex = 39,
				timerEndOffset = 24.5,
				timerStartOffset = 5,
				uuid = "ef36a53e-d853-4441-b796-b0b1c02ffe36",
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
							actionLua = "local state = data.teaLimitCut\n\nif not state then\n    self.used = true\n    return\nend\n\nstate.baitPairIndex = (state.baitPairIndex or 0) + 1\nlocal pairIndex = state.baitPairIndex\nlocal oddNumber = (pairIndex * 2) - 1\nlocal evenNumber = pairIndex * 2\nlocal myNumber = state.myNumber\n\nif myNumber ~= oddNumber and myNumber ~= evenNumber then\n    self.used = true\n    return\nend\n\nstate.lpduStop=true\nstate.lpduBaitShapes={}\nAnyoneCore.Shotcall(\"Stop and bait\",true,3,false)\nlocal chaser = TensorCore.mGetEntity(eventArgs.entityID)\nlocal player = TensorCore.mGetPlayer()\nlocal chaserPos = chaser and chaser.pos\nlocal playerPos = player and player.pos\n\nif chaserPos and playerPos then\n    local direction = myNumber == oddNumber and 1 or -1\n    local baitDistance = 3\n    local targetPos = {\n        x = chaserPos.x + (math.sin(chaserPos.h) * baitDistance * direction),\n        y = chaserPos.y,\n        z = chaserPos.z + (math.cos(chaserPos.h) * baitDistance * direction)\n    }\n    local duration = 3400\n    local drawer = TensorCore.getCachedDrawer(\n        0xFF00FF00,\n        0xFF00FF00,\n        0xFF00FF00,\n        0xFF00FF00,\n        2\n    )\n\n    local circleID=drawer:addTimedCircle(\n        duration,\n        targetPos.x, targetPos.y, targetPos.z,\n        0.5,\n        0,\n        false,\n        true\n    )\n\n    if circleID then state.lpduBaitShapes[#state.lpduBaitShapes+1]=circleID end\n    local distance = TensorCore.getDistance2d(playerPos, targetPos)\n    local tipLength = math.min(1.5, distance)\n    local baseLength = distance - tipLength\n\n    if baseLength > 0.25 then\n        local heading = TensorCore.getHeadingToTarget(playerPos, targetPos)\n        local arrowID=drawer:addTimedArrow(\n            duration,\n            playerPos.x, playerPos.y, playerPos.z,\n            heading,\n            baseLength, 0.35,\n            tipLength, 1,\n            0,\n            false,\n            Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n        )\n        if arrowID then state.lpduBaitShapes[#state.lpduBaitShapes+1]=arrowID end\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"4462f4ed-d2ee-c9ae-a0ad-557e553698b0",
									true,
								},
								
								{
									"afdb839b-1fc6-abc9-be04-56c948f0e571",
									true,
								},
							},
							endIfUsed = true,
							name = "Draw local bait arrow",
							uuid = "873beb88-7a2e-0a9b-a09a-9b8d21b7e5fb",
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
							eventArgOptionType = 2,
							eventEntityContentID = 9218,
							name = "Cruise Chaser",
							uuid = "4462f4ed-d2ee-c9ae-a0ad-557e553698b0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 3,
							name = "Became visible",
							uuid = "afdb839b-1fc6-abc9-be04-56c948f0e571",
							version = 3,
						},
					},
				},
				displayPath = "Limit Cut",
				eventType = 22,
				loop = true,
				mechanicTime = 200,
				name = "Limit Cut Bait Guide",
				timeRange = true,
				timelineIndex = 39,
				timerEndOffset = 24.5,
				timerStartOffset = 5,
				uuid = "47bea283-2da3-aabb-b777-cd40f80655a1",
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
							actionLua = "local state = data.teaLimitCut\nlocal x = eventArgs.castPosX\nlocal z = eventArgs.castPosZ\n\nif state and not state.firstExplosion and x and z then\n    local centerX = 100\n    local centerZ = 100\n    local epsilon = 0.1\n    local inWestToNorthEast = z < (centerZ - epsilon)\n        or (math.abs(z - centerZ) <= epsilon and x < centerX)\n\n    if inWestToNorthEast then\n        local y = eventArgs.castPosY or 0\n        state.firstExplosion = { x = x, y = y, z = z }\n        state.oppositeExplosion = {\n            x = (2 * centerX) - x,\n            y = y,\n            z = (2 * centerZ) - z\n        }\n\n        local myNumber = state.myNumber\n        if myNumber then\n            local usesFirstExplosion = myNumber == 1\n                or myNumber == 2\n                or myNumber == 5\n                or myNumber == 6\n            local targetPosition = usesFirstExplosion\n                and state.firstExplosion\n                or state.oppositeExplosion\n            local goNorth = targetPosition.z < centerZ\n            AnyoneCore.Shotcall(\"Take your start arrow, then run clockwise\", true, 5, false)\n        end\n\n        local drawer = TensorCore.getMoogleDrawer()\n        if drawer then\n            local vx = x - centerX\n            local vz = z - centerZ\n            local radius = 10\n            local cadence = 2200\n            local duration = 2500\n\n            for wave = 2, 10 do\n                local delay = (wave - 2) * cadence\n\n                if wave == 5 or wave == 10 then\n                    drawer:addTimedCircle(\n                        duration,\n                        centerX, y, centerZ,\n                        radius,\n                        delay,\n                        false,\n                        false\n                    )\n                else\n                    local rotationStep\n                    if wave < 5 then\n                        rotationStep = wave - 1\n                    else\n                        rotationStep = wave - 6\n                    end\n\n                    local angle = rotationStep * math.pi / 4\n                    local cosAngle = math.cos(angle)\n                    local sinAngle = math.sin(angle)\n                    local rotatedX = (vx * cosAngle) - (vz * sinAngle)\n                    local rotatedZ = (vx * sinAngle) + (vz * cosAngle)\n\n                    drawer:addTimedCircle(\n                        duration,\n                        centerX + rotatedX, y, centerZ + rotatedZ,\n                        radius,\n                        delay,\n                        false,\n                        false\n                    )\n                    drawer:addTimedCircle(\n                        duration,\n                        centerX - rotatedX, y, centerZ - rotatedZ,\n                        radius,\n                        delay,\n                        false,\n                        false\n                    )\n                end\n            end\n        end\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"0d8c57e3-bbcf-e1ee-bd92-8bfc88b44f34",
									true,
								},
							},
							endIfUsed = true,
							name = "Store direction, preview explosions, and shotcall",
							uuid = "5ebc0d66-e3cb-2539-b439-7192b5d91b4c",
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
							eventSpellID = 18480,
							name = "Hawk Blaster",
							uuid = "0d8c57e3-bbcf-e1ee-bd92-8bfc88b44f34",
							version = 3,
						},
					},
				},
				displayPath = "Limit Cut",
				eventType = 2,
				loop = true,
				mechanicTime = 200,
				name = "Limit Cut First Explosion",
				timeRange = true,
				timelineIndex = 39,
				timerEndOffset = 0.5,
				timerStartOffset = -120,
				uuid = "f87e5651-1899-e806-b2dd-95216aca0a87",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Guidance",
				uuid = "9555ba57-b51f-9b05-9fbf-dcace6a6a795",
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
							actionLua = "local s=data.teaLimitCut\nif not s or not s.myNumber or not s.firstExplosion or s.lpduStop then self.used=true;return end\nlocal p=TensorCore.mGetPlayer();if not p or not p.pos then return end\nif s.lpduFinished then\n local center={x=100,y=p.pos.y,z=100};local distance=TensorCore.getDistance2d(p.pos,center)\n if distance>2 then\n  TensorCore.getStaticDrawer(0xFF00FF00,2,1):addArrow(p.pos.x,p.pos.y+.1,p.pos.z,TensorCore.getHeadingToTarget(p.pos,center),math.min(3,distance-1),.25,.7,.65,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n end\n self.used=true;return\nend\nlocal dx,dz=p.pos.x-100,p.pos.z-100\nif dx*dx+dz*dz<64 then self.used=true;return end\nlocal a=TensorCore.getHeadingToTarget({x=100,y=p.pos.y,z=100},p.pos)\nlocal radius=math.sqrt(dx*dx+dz*dz)\nlocal target={x=100+math.sin(a-.2)*radius,y=p.pos.y,z=100+math.cos(a-.2)*radius}\nlocal length=TensorCore.getDistance2d(p.pos,target)\nTensorCore.getStaticDrawer(0xFF00FF00,2,1):addArrow(p.pos.x,p.pos.y+.1,p.pos.z,TensorCore.getHeadingToTarget(p.pos,target),math.max(.1,length-.7),.25,.7,.65,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nself.used=true",
							name = "[LPDU] Limit Cut - Small running direction arrow",
							uuid = "c2032397-38e2-7b57-8c34-d8d43b83a43f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Guidance",
				eventType = 12,
				loop = true,
				mechanicTime = 200,
				name = "[LPDU] Limit Cut - Small running direction arrow",
				timeRange = true,
				timelineIndex = 39,
				timerEndOffset = 24.5,
				timerStartOffset = 2,
				uuid = "3982e1f6-4559-5562-a3eb-5858cf30e8fe",
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
							actionLua = "local s=data.teaLimitCut\nif not s or not s.myNumber then self.used=true;return end\nlocal pair=s.baitPairIndex\nif not pair then self.used=true;return end\nif eventArgs.spellID==18484 then\n if math.ceil(s.myNumber/2)==pair and s.myNumber%2==1 then AnyoneCore.Shotcall(\"Wait for the charge\",true,1.8,false) end\nelse\n if s.lpduLastCharge==pair then self.used=true;return end\n s.lpduLastCharge=pair\n if math.ceil(s.myNumber/2)==pair then\n  s.lpduStop=false\n  if s.lpduBaitShapes then for _,id in ipairs(s.lpduBaitShapes) do Argus.deleteTimedShape(id) end;s.lpduBaitShapes=nil end\n  AnyoneCore.Shotcall(pair==4 and \"Move in\" or \"Continue running clockwise\",true,3,false)\n end\n if pair==4 then\n  s.lpduFinished=true\n  if math.ceil(s.myNumber/2)~=4 then AnyoneCore.Shotcall(\"Move in\",true,3,false) end\n end\nend\nself.used=true",
							conditions = 
							{
								
								{
									"9e19554d-70a1-2284-86b7-d231cb31922e",
									true,
								},
							},
							name = "[LPDU] Limit Cut - Continue after pair charge",
							uuid = "0b879715-7d14-957f-80ed-a1d0bced57c9",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityContentID==9218 and (eventArgs.spellID==18484 or eventArgs.spellID==19279)",
							dequeueIfLuaFalse = true,
							name = "Own LC cleave or charge",
							uuid = "9e19554d-70a1-2284-86b7-d231cb31922e",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Guidance",
				eventType = 2,
				loop = true,
				mechanicTime = 200,
				name = "[LPDU] Limit Cut - Continue after pair charge",
				timeRange = true,
				timelineIndex = 39,
				timerEndOffset = 24.5,
				timerStartOffset = 5,
				uuid = "0b6f93e2-8243-cc2f-9198-2dad6e55abbc",
				version = 2,
			},
		},
	},
	[43] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Limit Cut",
				uuid = "306510d6-2d1b-8cc0-8aab-a3d0ec4e52f2",
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
									"0d03e92c-054d-8497-9b34-34730023ab1b",
									true,
								},
							},
							endIfUsed = true,
							gVar = "ACR_RikuNIN3_Hotbar_ArmsLength",
							name = "Use Arm's Length",
							uuid = "629f09b1-3103-5929-b3a2-555051f6775d",
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
							conditionLua = "local state = data.teaLimitCut\nlocal player = TensorCore.mGetPlayer()\nreturn state and state.players and player and state.players[1] == player.id",
							dequeueIfLuaFalse = true,
							name = "Assigned target 1",
							uuid = "0d03e92c-054d-8497-9b34-34730023ab1b",
							version = 3,
						},
					},
				},
				displayPath = "Limit Cut",
				mechanicTime = 207.4,
				name = "Limit Cut Arm's Length #1 Alpha Sword",
				timeRange = true,
				timelineIndex = 43,
				timerStartOffset = -3,
				uuid = "1d76b49a-87d7-9606-ab2d-b92307c87a00",
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
				name = "Limit Cut",
				uuid = "7d6048ad-1376-0c0e-8a56-8096490a6f5b",
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
									"88dea614-7a55-3cb8-b0e7-5c7292756609",
									true,
								},
							},
							endIfUsed = true,
							gVar = "ACR_RikuNIN3_Hotbar_ArmsLength",
							name = "Use Arm's Length",
							uuid = "4d314568-8a5d-0ef5-a1df-a6f0604d6568",
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
							conditionLua = "local state = data.teaLimitCut\nlocal player = TensorCore.mGetPlayer()\nreturn state and state.players and player and state.players[2] == player.id",
							dequeueIfLuaFalse = true,
							name = "Assigned target 2",
							uuid = "88dea614-7a55-3cb8-b0e7-5c7292756609",
							version = 3,
						},
					},
				},
				displayPath = "Limit Cut",
				mechanicTime = 208.9,
				name = "Limit Cut Arm's Length #2 Super Blassty Charge",
				timeRange = true,
				timelineIndex = 45,
				timerStartOffset = -3,
				uuid = "4032dbd0-47f3-17c9-8d6a-e7ee2a761dff",
				version = 2,
			},
		},
	},
	[47] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Limit Cut",
				uuid = "90164c13-e501-f992-812d-10f5e13e37e9",
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
									"9f408bd7-140b-0062-bb04-621178a6d1be",
									true,
								},
							},
							endIfUsed = true,
							gVar = "ACR_RikuNIN3_Hotbar_ArmsLength",
							name = "Use Arm's Length",
							uuid = "8c388576-334d-fa2a-a473-cf2b99af92f2",
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
							conditionLua = "local state = data.teaLimitCut\nlocal player = TensorCore.mGetPlayer()\nreturn state and state.players and player and state.players[3] == player.id",
							dequeueIfLuaFalse = true,
							name = "Assigned target 3",
							uuid = "9f408bd7-140b-0062-bb04-621178a6d1be",
							version = 3,
						},
					},
				},
				displayPath = "Limit Cut",
				mechanicTime = 212.1,
				name = "Limit Cut Arm's Length #3 Alpha Sword",
				timeRange = true,
				timelineIndex = 47,
				timerStartOffset = -3,
				uuid = "779155a7-3844-1640-bff0-39c91e21e939",
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
				name = "Limit Cut",
				uuid = "576c3816-e69c-3b82-bd71-319fb20385c2",
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
									"296510f1-038e-a5c5-8a07-2bfe0ab215d5",
									true,
								},
							},
							endIfUsed = true,
							gVar = "ACR_RikuNIN3_Hotbar_ArmsLength",
							name = "Use Arm's Length",
							uuid = "b11c2a6e-7bd3-2ba3-8f61-f4ee80688121",
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
							conditionLua = "local state = data.teaLimitCut\nlocal player = TensorCore.mGetPlayer()\nreturn state and state.players and player and state.players[4] == player.id",
							dequeueIfLuaFalse = true,
							name = "Assigned target 4",
							uuid = "296510f1-038e-a5c5-8a07-2bfe0ab215d5",
							version = 3,
						},
					},
				},
				displayPath = "Limit Cut",
				mechanicTime = 213.6,
				name = "Limit Cut Arm's Length #4 Super Blassty Charge",
				timeRange = true,
				timelineIndex = 49,
				timerStartOffset = -3,
				uuid = "13f074a6-d2ea-8184-92f5-d199c41320fb",
				version = 2,
			},
		},
	},
	[51] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Limit Cut",
				uuid = "913cf81f-2b29-a61a-9155-3d87183f51bd",
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
									"d3e7ec0b-4cc6-904d-b35e-0f439d3f052b",
									true,
								},
							},
							endIfUsed = true,
							gVar = "ACR_RikuNIN3_Hotbar_ArmsLength",
							name = "Use Arm's Length",
							uuid = "1faf27a0-e4e2-d86c-b8cf-d3d993bfd36f",
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
							conditionLua = "local state = data.teaLimitCut\nlocal player = TensorCore.mGetPlayer()\nreturn state and state.players and player and state.players[5] == player.id",
							dequeueIfLuaFalse = true,
							name = "Assigned target 5",
							uuid = "d3e7ec0b-4cc6-904d-b35e-0f439d3f052b",
							version = 3,
						},
					},
				},
				displayPath = "Limit Cut",
				mechanicTime = 216.8,
				name = "Limit Cut Arm's Length #5 Alpha Sword",
				timeRange = true,
				timelineIndex = 51,
				timerStartOffset = -3,
				uuid = "b820d407-ad22-0112-800c-179b678b2f1d",
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
				name = "Limit Cut",
				uuid = "07fa8b09-5c78-b2d5-bb57-175d54178c32",
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
									"55b10aee-b513-58f8-98e5-20d32da3450b",
									true,
								},
							},
							endIfUsed = true,
							gVar = "ACR_RikuNIN3_Hotbar_ArmsLength",
							name = "Use Arm's Length",
							uuid = "46b4a7f6-9b98-1348-9137-c794fdb25878",
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
							conditionLua = "local state = data.teaLimitCut\nlocal player = TensorCore.mGetPlayer()\nreturn state and state.players and player and state.players[6] == player.id",
							dequeueIfLuaFalse = true,
							name = "Assigned target 6",
							uuid = "55b10aee-b513-58f8-98e5-20d32da3450b",
							version = 3,
						},
					},
				},
				displayPath = "Limit Cut",
				mechanicTime = 218.3,
				name = "Limit Cut Arm's Length #6 Super Blassty Charge",
				timeRange = true,
				timelineIndex = 53,
				timerStartOffset = -3,
				uuid = "8b378c37-2c77-149e-926e-370454a10060",
				version = 2,
			},
		},
	},
	[55] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Limit Cut",
				uuid = "3928a23e-0770-fd11-81ec-a6b52c9b191e",
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
									"2db5ef12-8fd6-9926-8a4a-e2054e7c4994",
									true,
								},
							},
							endIfUsed = true,
							gVar = "ACR_RikuNIN3_Hotbar_ArmsLength",
							name = "Use Arm's Length",
							uuid = "b5dbac5e-c803-bb5b-b6cc-3d9e93f4cf15",
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
							conditionLua = "local state = data.teaLimitCut\nlocal player = TensorCore.mGetPlayer()\nreturn state and state.players and player and state.players[7] == player.id",
							dequeueIfLuaFalse = true,
							name = "Assigned target 7",
							uuid = "2db5ef12-8fd6-9926-8a4a-e2054e7c4994",
							version = 3,
						},
					},
				},
				displayPath = "Limit Cut",
				mechanicTime = 221.4,
				name = "Limit Cut Arm's Length #7 Alpha Sword",
				timeRange = true,
				timelineIndex = 55,
				timerStartOffset = -3,
				uuid = "bba4921a-42f2-0851-85e6-6244ee1021d7",
				version = 2,
			},
		},
	},
	[56] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Limit Cut",
				uuid = "ba9eed03-da06-ad07-8986-9efde5c49808",
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
									"7aefd1e0-0321-3259-a3bf-0bf495091048",
									true,
								},
							},
							endIfUsed = true,
							gVar = "ACR_RikuNIN3_Hotbar_ArmsLength",
							name = "Use Arm's Length",
							uuid = "218b8ab5-7400-ce8a-8007-70e8bfd52506",
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
							conditionLua = "local state = data.teaLimitCut\nlocal player = TensorCore.mGetPlayer()\nreturn state and state.players and player and state.players[8] == player.id",
							dequeueIfLuaFalse = true,
							name = "Assigned target 8",
							uuid = "7aefd1e0-0321-3259-a3bf-0bf495091048",
							version = 3,
						},
					},
				},
				displayPath = "Limit Cut",
				mechanicTime = 222.9,
				name = "Limit Cut Arm's Length #8 Super Blassty Charge",
				timeRange = true,
				timelineIndex = 56,
				timerStartOffset = -3,
				uuid = "1cc7fb84-c3da-8864-8548-0cddaa6ea8fa",
				version = 2,
			},
		},
	},
	[59] = 
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
				execute = "local roster = AnyoneCore.Roster\nlocal members = roster and roster.members() or {}\n\nlocal slotByJob = {\n  [21] = \"T1\",\n  [32] = \"T2\",\n  [33] = \"H1\",\n  [40] = \"H2\",\n  [34] = \"M1\",\n  [39] = \"M2\",\n  [30] = \"M2\",\n  [38] = \"R1\",\n  [27] = \"R2\"\n}\n\nlocal assignments = {}\nfor _, member in pairs(members) do\n  local targetSlot = member and slotByJob[member.job]\n  if targetSlot and member.guid then\n    assignments[#assignments + 1] = {\n      guid = member.guid,\n      slot = targetSlot\n    }\n  end\nend\n\nfor _, assignment in ipairs(assignments) do\n  roster.assign(assignment.guid, assignment.slot)\nend\n\nd(string.format(\"[TEMP] Set Roster Slot: assigned %d party members by job\", #assignments))\nself.used = true",
				executeType = 2,
				mechanicTime = 238.3,
				name = "[TEMP] Set Roster Slot",
				timelineIndex = 59,
				timerOffset = -5,
				uuid = "a693008a-043e-4796-972c-10d6ca9f2306",
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
				name = "P2 - Brute Justice + Cruise Chaser",
				uuid = "7528f215-8633-69e8-a881-adc14475136c",
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
				displayPath = "P2 - Brute Justice + Cruise Chaser",
				eventType = 12,
				execute = "local roster = AnyoneCore.Roster\nlocal player = TensorCore.mGetPlayer()\nlocal mySlot = roster and roster.mySlot()\nlocal sourcePos = player and player.pos\n\nlocal d = 3.5355\nlocal targetPositions = {\n  T1 = { x = 100, y = 0, z = 95 },\n  T2 = { x = 100, y = 0, z = 105 },\n  H1 = { x = 95, y = 0, z = 100 },\n  H2 = { x = 105, y = 0, z = 100 },\n  M1 = { x = 100 + d, y = 0, z = 100 - d },\n  R2 = { x = 100 + d, y = 0, z = 100 + d },\n  R1 = { x = 100 - d, y = 0, z = 100 + d },\n  M2 = { x = 100 - d, y = 0, z = 100 - d }\n}\nlocal targetPos = mySlot and targetPositions[mySlot]\n\nif sourcePos and targetPos then\n  local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n  local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n  local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n  local scale = math.min(1, totalDistance / 15)\n  local baseWidth = math.max(0.5, 1 * scale)\n  local tipWidth = math.max(1.5, 3 * scale)\n  local tipLength = math.max(2, 3 * scale)\n  local baseLength = totalDistance - tipLength\n\n  if baseLength > 1 then\n    local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n    arrowDrawer:addArrow(\n      sourcePos.x, sourcePos.y, sourcePos.z,\n      heading,\n      baseLength, baseWidth, tipLength, tipWidth,\n      false, flags\n    )\n  end\n\n  local blueDrawer = TensorCore.getCachedDrawer(nil, nil, 0xFFFF0000, 0xFFFF0000, 2)\n  blueDrawer:addCircle(targetPos.x, targetPos.y, targetPos.z, 0.4, false, flags)\n\n  Argus.addCircleFilled(\n    targetPos.x, targetPos.y, targetPos.z,\n    0.15, 32,\n    0xFF00FF00, nil, 0,\n    0, 0, 0,\n    false, flags\n  )\nend\n\nself.used = true",
				executeType = 2,
				loop = true,
				mechanicTime = 241.3,
				name = "P2 - Initial Role Position",
				timeRange = true,
				timelineIndex = 60,
				timerEndOffset = 6.6999998092651,
				timerStartOffset = -4.3000001907349,
				uuid = "27705133-68fb-bf15-8917-fe5ab74cb8cb",
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
				name = "P2 - Brute Justice + Cruise Chaser",
				uuid = "4e523253-6a23-ffe5-8f9b-116eb8f9bc16",
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
							actionLua = "local player = TensorCore.mGetPlayer()\n\nif player and player.id then\n    local drawer = TensorCore.getCachedDrawer(\n        0xFF0000FF,\n        0xFF0000FF,\n        0xFF0000FF,\n        0xFF0000FF,\n        2\n    )\n\n    drawer:addTimedCircleOnEnt(\n        2000,\n        player.id,\n        10,\n        0,\n        false,\n        true\n    )\nend\n\nself.used = true",
							endIfUsed = true,
							name = "Pre-draw Optical Sight circles",
							uuid = "bad05466-a1d5-29a7-8af3-4f1449c79142",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P2 - Brute Justice + Cruise Chaser",
				mechanicTime = 255.4,
				name = "P2 - Optical Sight Circles",
				timelineIndex = 62,
				timerOffset = -1.7000000476837,
				uuid = "9baa41dd-411e-a736-b1af-a4edf1e62a77",
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
							actionLua = "local channel = Argus2.getNextUnusedChannel(true)\nif channel then\n  local drawer = TensorCore.getCachedDrawer(\n    0x4400FF00, 0x8800FF00, 0x6600FF00, 0xDD00FF00, 2,\n    channel,\n    Argus2.RenderFlags.FLAG_OCCLUSION_BASE\n  )\n\n  if drawer then\n    drawer:addTimedDonut(\n      7100,\n      100, 0, 100,\n      15, 20.5,\n      0,\n      false,\n      true,\n      Argus2.RenderFlags.FLAG_OCCLUSION_BASE\n    )\n\n    drawer:addTimedRect(\n      5700,\n      99.9923, 0, 121.477,\n      73, 6, 3.12175,\n      1800,\n      false,\n      true,\n      Argus2.RenderFlags.FLAG_OCCLUDE\n    )\n\n    drawer:addTimedRect(\n      5700,\n      99.9923, 0, 78.4771,\n      73, 6, 0.163515,\n      1800,\n      false,\n      true,\n      Argus2.RenderFlags.FLAG_OCCLUDE\n    )\n  end\nend\n\nself.used = true",
							endIfUsed = true,
							name = "Draw safe outside circle",
							uuid = "db7ea157-87eb-b741-b471-2fa363399fe0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P2 - Brute Justice + Cruise Chaser",
				mechanicTime = 255.4,
				name = "P2 - Optical Sight Safe Outside",
				timelineIndex = 62,
				timerOffset = -7,
				uuid = "e6a34a0b-cceb-c148-8fbe-cb7f85c2af73",
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
							actionLua = "AnyoneCore.Shotcall(\"Bait AOE outside\", true, 3, false)\nself.used = true",
							endIfUsed = true,
							name = "Outside Bait Shotcall",
							uuid = "2f06b0f8-2688-63b6-8260-a2b0b20a34aa",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P2 - Brute Justice + Cruise Chaser",
				mechanicTime = 255.4,
				name = "P2 - Optical Sight Outside Shotcall",
				throttleTime = 3000,
				timelineIndex = 62,
				timerOffset = -7,
				uuid = "eabc4505-ec73-8b38-8308-b0f41b88744e",
				version = 2,
			},
		},
	},
	[63] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P2 - Brute Justice + Cruise Chaser",
				uuid = "ada0c170-92e0-f334-8915-eb6a6ad51b58",
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
							actionLua = "local state = data.teaOpticalSightSafeOutside\nif state and state.occlusionChannel then\n  local drawer = TensorCore.getCachedDrawer(\n    nil, nil, 0xFFFFFFFF, nil, 1,\n    state.occlusionChannel,\n    Argus2.RenderFlags.FLAG_OCCLUDE\n  )\n\n  if drawer then\n    drawer:addTimedRect(\n      math.floor(eventArgs.duration * 1000),\n      eventArgs.x, 0, eventArgs.z,\n      eventArgs.aoeLength, eventArgs.aoeWidth, eventArgs.heading,\n      0,\n      false,\n      true,\n      Argus2.RenderFlags.FLAG_OCCLUDE\n    )\n  end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"f0014b1d-699b-7fca-a44d-8e537ab6cc5c",
									true,
								},
							},
							endIfUsed = true,
							name = "Subtract Chakram lane from outside ring",
							uuid = "452d737c-8028-fa5a-9eae-ee74d8263906",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.aoeID == 18517",
							dequeueIfLuaFalse = true,
							name = "Eye of the Chakram",
							uuid = "f0014b1d-699b-7fca-a44d-8e537ab6cc5c",
							version = 3,
						},
					},
				},
				displayPath = "P2 - Brute Justice + Cruise Chaser",
				enabled = false,
				eventType = 18,
				mechanicTime = 256.2,
				name = "P2 - Optical Sight Chakram Cutouts",
				timeRange = true,
				timelineIndex = 63,
				timerEndOffset = 1.5,
				timerStartOffset = -6.5,
				uuid = "d13cce5a-705a-88cf-94cc-627bdb6412d4",
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
				name = "P2 - Brute Justice + Cruise Chaser",
				uuid = "fd43da3e-f595-eb64-a9b9-015159804086",
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
							actionLua = "local function hasNisi(entity)\n  if not entity then return false end\n  local buffs = TensorCore.getBuffs(entity) or {}\n  for _, buff in pairs(buffs) do\n    local name = buff and buff.name\n    if type(name) == \"string\" and string.find(string.lower(name), \"nisi\", 1, true) then\n      return true\n    end\n  end\n  return false\nend\n\nlocal function resolvePartner()\n  local roster = AnyoneCore.Roster\n  local slot = roster and roster.mySlot()\n  local partners = { T1 = \"M1\", M1 = \"T1\", H1 = \"M2\", M2 = \"H1\", T2 = \"R1\", R1 = \"T2\", H2 = \"R2\", R2 = \"H2\" }\n  local partnerSlot = slot and partners[slot]\n  local members = roster and roster.members()\n  local member = partnerSlot and members and members[partnerSlot]\n  local partnerJob = member and member.job\n  local party = TensorCore.getEntityGroupList(\"Party\", \"Number\")\n  if party and partnerJob then\n    for _, entity in pairs(party) do\n      if entity and entity.job == partnerJob then\n        return entity\n      end\n    end\n  end\n  return nil\nend\n\nlocal player = TensorCore.mGetPlayer()\nlocal partner = resolvePartner()\nif player and partner and hasNisi(player) and hasNisi(partner) then\n  local state = data.teaP2\n  if state and state.photonPartnerArrow then\n    Argus.deleteTimedShape(state.photonPartnerArrow)\n    state.photonPartnerArrow = nil\n  end\nend\nself.used = true",
							conditions = 
							{
								
								{
									"19e95826-5f09-5e7d-a88d-cba18f749020",
									true,
								},
							},
							name = "Remove partner arrow",
							uuid = "8c147b82-fe38-1465-8b62-b237ac837cc9",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Poll for both partners' Nisi",
							uuid = "19e95826-5f09-5e7d-a88d-cba18f749020",
							version = 3,
						},
					},
				},
				displayPath = "P2 - Brute Justice + Cruise Chaser",
				loop = true,
				mechanicTime = 262.5,
				name = "P2 - Remove Photon Partner Arrow",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 65,
				timerEndOffset = 5,
				timerStartOffset = -0.10000000149012,
				uuid = "2944c9af-bcdc-d38c-a997-51ac950506d7",
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
							actionLua = "local function resolvePartner()\n  local roster = AnyoneCore.Roster\n  local slot = roster and roster.mySlot()\n  local partners = {\n    T1 = \"M1\",\n    M1 = \"T1\",\n    H1 = \"M2\",\n    M2 = \"H1\",\n    T2 = \"R1\",\n    R1 = \"T2\",\n    H2 = \"R2\",\n    R2 = \"H2\"\n  }\n  local partnerSlot = slot and partners[slot]\n  local members = roster and roster.members()\n  local member = partnerSlot and members and members[partnerSlot]\n  local partnerJob = member and member.job\n  local party = TensorCore.getEntityGroupList(\"Party\", \"Number\")\n  if party and partnerJob then\n    for _, entity in pairs(party) do\n      if entity and entity.job == partnerJob then\n        return entity\n      end\n    end\n  end\n  return nil\nend\n\nlocal player = TensorCore.mGetPlayer()\nlocal partner = resolvePartner()\nlocal livePartner = partner and partner.id and TensorCore.mGetEntity(partner.id) or partner\nlocal sourcePos = player and player.pos\nlocal targetPos = livePartner and livePartner.pos\n\nif sourcePos and targetPos then\n  local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n  local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n  local arrowDistance = math.max(0, totalDistance - 1)\n  local scale = math.min(1, arrowDistance / 15)\n  local baseWidth = math.max(0.1, 1 * scale)\n  local tipWidth = math.max(0.3, 3 * scale)\n  local tipLength = math.min(3, arrowDistance * 0.3)\n  local baseLength = arrowDistance - tipLength\n  local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n\n  if baseLength > 0.1 then\n    local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n    arrowDrawer:addArrow(\n      sourcePos.x, sourcePos.y, sourcePos.z,\n      heading,\n      baseLength, baseWidth, tipLength, tipWidth,\n      false, flags\n    )\n  end\n\n  local partnerCircle = TensorCore.getCachedDrawer(nil, nil, 0xFFFF0000, 0xFFFF0000, 2)\n  partnerCircle:addCircle(targetPos.x, targetPos.y, targetPos.z, 0.4, false, flags)\n\n  Argus.addCircleFilled(\n    targetPos.x,\n    targetPos.y,\n    targetPos.z,\n    0.15,\n    32,\n    0xFF00FF00,\n    nil,\n    0,\n    0,\n    0,\n    0,\n    false,\n    flags\n  )\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"28592b6c-1600-9acb-8a35-9bfa42332e9e",
									true,
								},
							},
							name = "Draw partner arrow",
							uuid = "3467ce89-ad7a-d86c-a15a-9155d5da0d59",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player = TensorCore.mGetPlayer()\nif player and TensorCore.isDPS(player) then\n  local roster = AnyoneCore.Roster\n  local slot = roster and roster.mySlot()\n  local partners = {\n    M1 = \"T1\",\n    M2 = \"H1\",\n    R1 = \"T2\",\n    R2 = \"H2\"\n  }\n  local partnerSlot = slot and partners[slot]\n  local members = roster and roster.members()\n  local member = partnerSlot and members and members[partnerSlot]\n  local partnerJob = member and member.job\n  local partnerName = partnerJob and TensorCore.getJobNameByID(partnerJob)\n  if partnerName then\n    AnyoneCore.Shotcall(\"Stack on \" .. partnerName, true, 4, true)\n  end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"28592b6c-1600-9acb-8a35-9bfa42332e9e",
									true,
								},
							},
							endIfUsed = true,
							name = "Photon Partner CCW shotcall",
							uuid = "8903b4db-5588-693d-b7ee-15ba73488367",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local function hasNisi(entity)\n  if not entity then return false end\n  local buffs = TensorCore.getBuffs(entity) or {}\n  for _, buff in pairs(buffs) do\n    local name = buff and buff.name\n    if type(name) == \"string\" and string.find(string.lower(name), \"nisi\", 1, true) then\n      return true\n    end\n  end\n  return false\nend\n\nlocal player = TensorCore.mGetPlayer()\nlocal roster = AnyoneCore.Roster\nlocal slot = roster and roster.mySlot()\nlocal partners = { T1 = \"M1\", M1 = \"T1\", H1 = \"M2\", M2 = \"H1\", T2 = \"R1\", R1 = \"T2\", H2 = \"R2\", R2 = \"H2\" }\nlocal partnerSlot = slot and partners[slot]\nlocal members = roster and roster.members()\nlocal member = partnerSlot and members and members[partnerSlot]\nlocal partnerJob = member and member.job\nlocal partner\nlocal party = TensorCore.getEntityGroupList(\"Party\", \"Number\")\nif party and partnerJob then\n  for _, entity in pairs(party) do\n    if entity and entity.job == partnerJob then\n      partner = entity\n      break\n    end\n  end\nend\nif not player or not partner then return false end\nreturn hasNisi(player) ~= hasNisi(partner)",
							name = "Exactly one partner has Nisi",
							uuid = "28592b6c-1600-9acb-8a35-9bfa42332e9e",
							version = 3,
						},
					},
				},
				displayPath = "P2 - Brute Justice + Cruise Chaser",
				eventType = 12,
				loop = true,
				mechanicTime = 262.5,
				name = "P2 - Photon Partner Arrow",
				timeRange = true,
				timelineIndex = 65,
				timerEndOffset = 5,
				timerStartOffset = -0.10000000149012,
				uuid = "d2f33b36-4492-373e-ab4d-46b146f5555d",
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
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 18486,
							name = "Mechanic event",
							uuid = "9b37f249-a5bf-7f92-a320-ca51d4f9f529",
							version = 3,
						},
					},
				},
				displayPath = "P2 - Brute Justice + Cruise Chaser",
				enabled = false,
				eventType = 2,
				execute = "local player = TensorCore.mGetPlayer()\nif not player then self.used = true return end\nif TensorCore.isDPS(player) then\n  local slot = AnyoneCore.Roster and AnyoneCore.Roster.mySlot()\n  local partners = { M1 = \"T1\", M2 = \"H1\", R1 = \"T2\", R2 = \"H2\" }\n  local partner = slot and partners[slot]\n  if partner then\n    AnyoneCore.Shotcall(\"Photon: one HP - move to \" .. partner .. \" partner CCW\", true, 4, true)\n  else\n    AnyoneCore.Shotcall(\"Photon: one HP - move to partner CCW\", true, 4, true)\n  end\nelse\n  AnyoneCore.Shotcall(\"Photon - party to one HP\", true, 4, true)\nend\nself.used = true",
				executeType = 2,
				mechanicTime = 262.5,
				name = "P2 - Photon Partner CCW",
				timeRange = true,
				timelineIndex = 65,
				timerEndOffset = 0.5,
				timerStartOffset = -4,
				uuid = "c8cfbac5-60a8-0145-9958-59c77f60b2d0",
				version = 2,
			},
		},
	},
	[66] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P2 - Brute Justice + Cruise Chaser",
				uuid = "fd4538f7-c887-d365-b703-2544f46292fb",
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
				displayPath = "P2 - Brute Justice + Cruise Chaser",
				execute = "local player = TensorCore.mGetPlayer()\nif player and TensorCore.hasBuff(player, 2143) then AnyoneCore.Shotcall(\"Lightning: move to T1 north and pass\", true, 5, true) end\nself.used = true",
				executeType = 2,
				mechanicTime = 272.7,
				name = "P2 - Pass Lightning to T1",
				timelineIndex = 66,
				timerOffset = -7.6999998092651,
				uuid = "ab5a6583-5372-6478-9e97-090d8d78b424",
				version = 2,
			},
		},
	},
	[67] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P2 - Brute Justice + Cruise Chaser",
				uuid = "ff3a3934-7187-d228-8be6-f749429c78c0",
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
				displayPath = "P2 - Brute Justice + Cruise Chaser",
				execute = "local player = TensorCore.mGetPlayer()\nlocal party = TensorCore.getEntityGroupList(\"Party\") or {}\nlocal water\nfor _, member in pairs(party) do\n  if member and TensorCore.hasBuff(member, 2142) then water = member break end\nend\nif not player or not water then self.used = true return end\n\nlocal _, _, _, _, outlineThickness = TensorCore.getMoogleColors()\nlocal drawer = TensorCore.getCachedDrawer(\n  0x30FF0000, 0x60FF0000, 0xA0FF0000, 0xFFFF0000,\n  outlineThickness, 0, flags\n)\ndrawer:addTimedCircleOnEnt(5000, water.id, 8, 0, false, false, flags)\n\nif water.id == player.id then\n  AnyoneCore.Shotcall(\"Water: place west at 86, 100\", true, 5, true)\n  local destination = { x = 86, y = 0, z = 100 }\n  local heading = TensorCore.getHeadingToTarget(player.pos, destination)\n  local length = math.max(1, TensorCore.getDistance2d(player.pos, destination) - 1)\n  drawer:addTimedArrow(5000, player.pos.x, player.pos.y, player.pos.z, heading, length, 0.35, 1, 0.9, 0, false, flags)\nelseif not TensorCore.hasBuff(player, 2143) and\n       (TensorCore.isHealer(player) or TensorCore.isRanged(player, true)) then\n  AnyoneCore.Shotcall(\"Stack with water\", true, 5, false)\n  drawer:addTimedArrowOnEnt(5000, player.id, 1, 0.35, 1, 0.9, water.id, 0, false, 0, false, flags)\nend\nself.used = true",
				executeType = 2,
				mechanicTime = 277.3,
				name = "P2 - First Water Stack",
				timelineIndex = 67,
				timerOffset = -5,
				uuid = "b63ad4d0-2e58-77ba-9aaf-6e726defde25",
				version = 2,
			},
		},
	},
	[68] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P2 - Brute Justice + Cruise Chaser",
				uuid = "2e873eeb-7755-c34d-8aaa-6b41469f8aec",
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
				displayPath = "P2 - Brute Justice + Cruise Chaser",
				execute = "local slot = AnyoneCore.Roster and AnyoneCore.Roster.mySlot()\nif slot == \"T2\" or slot == \"R1\" then AnyoneCore.Shotcall(\"Bait Earth Missile south beside partner\", true, 5, true) end\nself.used = true",
				executeType = 2,
				mechanicTime = 288.6,
				name = "P2 - Earth Missile Bait",
				timelineIndex = 68,
				timerOffset = -6.9000000953674,
				uuid = "768dcb05-8945-66a0-8eee-70c353995069",
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
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 18510,
							name = "Mechanic event",
							uuid = "f555fa06-4ef7-0563-be26-c83bca507fdd",
							version = 3,
						},
					},
				},
				displayPath = "P2 - Brute Justice + Cruise Chaser",
				eventType = 3,
				execute = "local duration = math.max(1000, math.floor(((eventArgs and eventArgs.channelTimeMax) or 2.7) * 1000 + 0.5))\nlocal caster = eventArgs and eventArgs.entityID and TensorCore.mGetEntity(eventArgs.entityID)\nlocal origin = caster and caster.pos\nlocal party = TensorCore.getEntityGroupList(\"Party\", \"Number\") or {}\nlocal furthest = {}\n\nif origin then\n  for _, entity in pairs(party) do\n    local pos = entity and entity.pos\n    if entity and pos then\n      local distance = TensorCore.getDistance2d(origin, pos)\n      if distance then\n        if not furthest[1] or distance > furthest[1].distance then\n          furthest[2] = furthest[1]\n          furthest[1] = { entity = entity, distance = distance }\n        elseif not furthest[2] or distance > furthest[2].distance then\n          furthest[2] = { entity = entity, distance = distance }\n        end\n      end\n    end\n  end\nend\n\nlocal drawer = TensorCore.getMoogleDrawer()\nif drawer then\n  for index = 1, 2 do\n    local target = furthest[index] and furthest[index].entity\n    if target and target.id then\n      drawer:addTimedCircleOnEnt(duration, target.id, 5, 0, false, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n    end\n  end\nend\n\nself.used = true",
				executeType = 2,
				mechanicTime = 288.6,
				name = "P2 - Earth Missile Circles",
				timeRange = true,
				timelineIndex = 68,
				timerEndOffset = 0.5,
				timerStartOffset = -3.5,
				uuid = "2ae9e769-e3ab-2e78-a0cd-53d04150f7ba",
				version = 2,
			},
		},
	},
	[69] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P2 - Brute Justice + Cruise Chaser",
				uuid = "d8367e60-e4e9-65d4-9e1f-d5e576139ee7",
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
				displayPath = "P2 - Brute Justice + Cruise Chaser",
				execute = "local player = TensorCore.mGetPlayer()\nif player and TensorCore.isTank(player) then AnyoneCore.Shotcall(\"Tank: soak a hidden mine\", true, 4, true) end\nself.used = true",
				executeType = 2,
				mechanicTime = 290.6,
				name = "P2 - Hidden Minefield",
				timelineIndex = 69,
				timerOffset = -2.7000000476837,
				uuid = "b4c37956-8244-49de-9b77-98eda02c7868",
				version = 2,
			},
		},
	},
	[70] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P2 - Brute Justice + Cruise Chaser",
				uuid = "b4d72e27-e556-c0e6-b9fd-3c8d67b5047e",
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
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventMarkerID = 65,
							name = "Mechanic event",
							uuid = "2cdf1425-0be9-6b35-b870-9b8cdc3f461c",
							version = 3,
						},
					},
				},
				displayPath = "P2 - Brute Justice + Cruise Chaser",
				eventType = 4,
				execute = "data.teaP2 = data.teaP2 or {}\n\nif not eventArgs or eventArgs.markerID ~= 65 then\n  self.used = true\n  return\nend\n\nlocal defaultSideBySlot = {\n  M1 = \"west\",\n  M2 = \"west\",\n  R1 = \"east\",\n  R2 = \"east\"\n}\n\nlocal function findEntity(entityID)\n  if not entityID then return nil end\n  local party = TensorCore.getEntityGroupList(\"Party\", \"Number\") or {}\n  for _, entity in pairs(party) do\n    if entity and entity.id == entityID then\n      return entity\n    end\n  end\n  return nil\nend\n\nlocal function drawAndCall(marker, side, localSlot)\n  if not marker then return end\n\n  local drawer = TensorCore.getCachedDrawer(0x4400FF00, 0x8800FF00, 0x6600FF00, 0xDD00FF00, 2)\n  if drawer then\n    drawer:addTimedCircleOnEnt(5000, marker, 5, 0, false, true)\n  end\n\n  local markerSlot = AnyoneCore.Roster.slotOf(marker.guid)\n  if localSlot and markerSlot and localSlot == markerSlot then\n    AnyoneCore.Shotcall(\"put enum \" .. side, true, 5, true)\n  else\n    local jobName = marker.job and TensorCore.getJobNameByID(marker.job)\n    if jobName then\n      AnyoneCore.Shotcall(\"stack with \" .. side .. \" enumeration \" .. jobName, true, 5, true)\n    end\n  end\nend\n\nlocal slot = AnyoneCore.Roster.mySlot()\nlocal marker = findEntity(eventArgs.entityID)\nlocal markerSlot = marker and AnyoneCore.Roster.slotOf(marker.guid)\n\nif not marker or not markerSlot then\n  self.used = true\n  return\nend\n\nlocal state = data.teaP2.enumerationMarkers\nif not state or state.resolved then\n  state = { count = 0 }\n  data.teaP2.enumerationMarkers = state\nend\n\nif not state[marker.id] then\n  state.count = (state.count or 0) + 1\n  state[marker.id] = {\n    entity = marker,\n    slot = markerSlot,\n    defaultSide = defaultSideBySlot[markerSlot]\n  }\nend\n\nif state.count < 2 then\n  self.used = true\n  return\nend\n\nif state.resolved then\n  self.used = true\n  return\nend\n\nlocal sideBySlot = {\n  M1 = \"west\",\n  M2 = \"west\",\n  R1 = \"east\",\n  R2 = \"east\"\n}\n\nlocal westMarkers = 0\nlocal eastMarkers = 0\nfor _, record in pairs(state) do\n  if type(record) == \"table\" and record.slot then\n    if record.defaultSide == \"west\" then\n      westMarkers = westMarkers + 1\n    elseif record.defaultSide == \"east\" then\n      eastMarkers = eastMarkers + 1\n    end\n  end\nend\n\nif westMarkers == 2 or eastMarkers == 2 then\n  sideBySlot.M1 = \"east\"\n  sideBySlot.M2 = \"west\"\n  sideBySlot.R1 = \"west\"\n  sideBySlot.R2 = \"east\"\nend\n\nlocal ownSide\nif slot == \"H1\" then\n  ownSide = \"west\"\nelseif slot == \"H2\" then\n  ownSide = \"east\"\nelseif slot then\n  ownSide = sideBySlot[slot]\nend\n\nlocal selected\nif ownSide then\n  for _, record in pairs(state) do\n    if type(record) == \"table\" and record.entity and sideBySlot[record.slot] == ownSide then\n      selected = record.entity\n      break\n    end\n  end\nend\n\nif selected then\n  drawAndCall(selected, ownSide, slot)\nend\n\nstate.resolved = true\nself.used = true",
				executeType = 2,
				mechanicTime = 292.7,
				name = "P2 - Enumeration",
				timeRange = true,
				timelineIndex = 70,
				timerEndOffset = 0.5,
				timerStartOffset = -6,
				uuid = "865427eb-812d-82dd-875c-c669ca8b16a3",
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
							actionLua = "local function resolvePartner()\n  local roster = AnyoneCore.Roster\n  local slot = roster and roster.mySlot()\n  local partners = {\n    T1 = \"M1\",\n    M1 = \"T1\",\n    H1 = \"M2\",\n    M2 = \"H1\",\n    T2 = \"R1\",\n    R1 = \"T2\",\n    H2 = \"R2\",\n    R2 = \"H2\"\n  }\n  local partnerSlot = slot and partners[slot]\n  local members = roster and roster.members()\n  local member = partnerSlot and members and members[partnerSlot]\n  local partnerJob = member and member.job\n  local party = TensorCore.getEntityGroupList(\"Party\", \"Number\")\n  if party and partnerJob then\n    for _, entity in pairs(party) do\n      if entity and entity.job == partnerJob then\n        return entity\n      end\n    end\n  end\n  return nil\nend\n\nlocal player = TensorCore.mGetPlayer()\nlocal partner = resolvePartner()\nlocal livePartner = partner and partner.id and TensorCore.mGetEntity(partner.id) or partner\nlocal sourcePos = player and player.pos\nlocal targetPos = livePartner and livePartner.pos\n\nif sourcePos and targetPos then\n  local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n  local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n  local scale = math.min(1, totalDistance / 15)\n  local baseWidth = math.max(0.5, 1 * scale)\n  local tipWidth = math.max(1.5, 3 * scale)\n  local tipLength = math.max(2, 3 * scale)\n  local baseLength = totalDistance - tipLength\n\n  if baseLength > 1 then\n    local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n    arrowDrawer:addArrow(\n      sourcePos.x, sourcePos.y, sourcePos.z,\n      heading,\n      baseLength, baseWidth, tipLength, tipWidth,\n      false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\n  end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"52574083-67a3-b14f-a6c7-4f93dae85c1b",
									true,
								},
							},
							name = "Draw partner arrow",
							uuid = "ad233c18-5092-0f3a-91c8-5eadca57c791",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player = TensorCore.mGetPlayer()\nif player and TensorCore.isDPS(player) then\n  local roster = AnyoneCore.Roster\n  local slot = roster and roster.mySlot()\n  local partners = {\n    M1 = \"T1\",\n    M2 = \"H1\",\n    R1 = \"T2\",\n    R2 = \"H2\"\n  }\n  local partnerSlot = slot and partners[slot]\n  local members = roster and roster.members()\n  local member = partnerSlot and members and members[partnerSlot]\n  local partnerJob = member and member.job\n  local partnerName = partnerJob and TensorCore.getJobNameByID(partnerJob)\n  if partnerName then\n    AnyoneCore.Shotcall(\"Stack on \" .. partnerName, true, 4, true)\n  end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"52574083-67a3-b14f-a6c7-4f93dae85c1b",
									true,
								},
							},
							endIfUsed = true,
							name = "Photon Partner CCW shotcall",
							uuid = "8cc3c298-dbef-90bf-b244-e4b6103d8234",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local function hasNisi(entity)\n  if not entity then return false end\n  local buffs = TensorCore.getBuffs(entity) or {}\n  for _, buff in pairs(buffs) do\n    local name = buff and buff.name\n    if type(name) == \"string\" and string.find(string.lower(name), \"nisi\", 1, true) then\n      return true\n    end\n  end\n  return false\nend\n\nlocal player = TensorCore.mGetPlayer()\nlocal roster = AnyoneCore.Roster\nlocal slot = roster and roster.mySlot()\nlocal partners = { T1 = \"M1\", M1 = \"T1\", H1 = \"M2\", M2 = \"H1\", T2 = \"R1\", R1 = \"T2\", H2 = \"R2\", R2 = \"H2\" }\nlocal partnerSlot = slot and partners[slot]\nlocal members = roster and roster.members()\nlocal member = partnerSlot and members and members[partnerSlot]\nlocal partnerJob = member and member.job\nlocal partner\nlocal party = TensorCore.getEntityGroupList(\"Party\", \"Number\")\nif party and partnerJob then\n  for _, entity in pairs(party) do\n    if entity and entity.job == partnerJob then\n      partner = entity\n      break\n    end\n  end\nend\nif not player or not partner then return false end\nreturn hasNisi(player) ~= hasNisi(partner)",
							name = "Exactly one partner has Nisi",
							uuid = "52574083-67a3-b14f-a6c7-4f93dae85c1b",
							version = 3,
						},
					},
				},
				displayPath = "P2 - Brute Justice + Cruise Chaser",
				eventType = 12,
				loop = true,
				mechanicTime = 292.7,
				name = "P2 - Pass Nisi to Initial Partner",
				timeRange = true,
				timelineIndex = 70,
				timerEndOffset = 5,
				timerStartOffset = -0.10000000149012,
				uuid = "27eb7ec0-9197-2d8e-bef4-dec19e0a8efe",
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
							actionLua = "local function hasNisi(entity)\n  if not entity then return false end\n  local buffs = TensorCore.getBuffs(entity) or {}\n  for _, buff in pairs(buffs) do\n    local name = buff and buff.name\n    if type(name) == \"string\" and string.find(string.lower(name), \"nisi\", 1, true) then\n      return true\n    end\n  end\n  return false\nend\n\nlocal function resolvePartner()\n  local roster = AnyoneCore.Roster\n  local slot = roster and roster.mySlot()\n  local partners = { T1 = \"M1\", M1 = \"T1\", H1 = \"M2\", M2 = \"H1\", T2 = \"R1\", R1 = \"T2\", H2 = \"R2\", R2 = \"H2\" }\n  local partnerSlot = slot and partners[slot]\n  local members = roster and roster.members()\n  local member = partnerSlot and members and members[partnerSlot]\n  local partnerJob = member and member.job\n  local party = TensorCore.getEntityGroupList(\"Party\", \"Number\")\n  if party and partnerJob then\n    for _, entity in pairs(party) do\n      if entity and entity.job == partnerJob then\n        return entity\n      end\n    end\n  end\n  return nil\nend\n\nlocal player = TensorCore.mGetPlayer()\nlocal partner = resolvePartner()\nif player and partner and hasNisi(player) and hasNisi(partner) then\n  local state = data.teaP2\n  if state and state.photonPartnerArrow then\n    Argus.deleteTimedShape(state.photonPartnerArrow)\n    state.photonPartnerArrow = nil\n  end\nend\nself.used = true",
							conditions = 
							{
								
								{
									"97806cd6-83ae-46d2-97f0-2c2dae910d2d",
									true,
								},
							},
							name = "Remove partner arrow",
							uuid = "c5474aa4-75b4-7055-af19-f3a87e1b70b3",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local function hasNisi(entity)\n  if not entity then return false end\n  local buffs = TensorCore.getBuffs(entity) or {}\n  for _, buff in pairs(buffs) do\n    local name = buff and buff.name\n    if type(name) == \"string\" and string.find(string.lower(name), \"nisi\", 1, true) then\n      return true\n    end\n  end\n  return false\nend\n\nlocal function resolvePartner()\n  local roster = AnyoneCore.Roster\n  local slot = roster and roster.mySlot()\n  local partners = { T1 = \"M1\", M1 = \"T1\", H1 = \"M2\", M2 = \"H1\", T2 = \"R1\", R1 = \"T2\", H2 = \"R2\", R2 = \"H2\" }\n  local partnerSlot = slot and partners[slot]\n  local members = roster and roster.members()\n  local member = partnerSlot and members and members[partnerSlot]\n  local partnerJob = member and member.job\n  local party = TensorCore.getEntityGroupList(\"Party\", \"Number\")\n  if party and partnerJob then\n    for _, entity in pairs(party) do\n      if entity and entity.job == partnerJob then\n        return entity\n      end\n    end\n  end\n  return nil\nend\n\nlocal player = TensorCore.mGetPlayer()\nlocal partner = resolvePartner()\nreturn player and partner and hasNisi(player) and hasNisi(partner)",
							name = "Both partners have Nisi",
							uuid = "97806cd6-83ae-46d2-97f0-2c2dae910d2d",
							version = 3,
						},
					},
				},
				displayPath = "P2 - Brute Justice + Cruise Chaser",
				loop = true,
				mechanicTime = 292.7,
				name = "P2 - Remove Initial Partner Arrow",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 70,
				timerEndOffset = 5,
				timerStartOffset = -0.10000000149012,
				uuid = "286e0779-e04e-405e-b197-ed605c7918a1",
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
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventMarkerID = 67,
							name = "Mechanic event",
							uuid = "e93a76cd-ebd2-4da4-8983-dbbd22fda426",
							version = 3,
						},
					},
				},
				displayPath = "P2 - Brute Justice + Cruise Chaser",
				eventType = 4,
				execute = "if not eventArgs or eventArgs.markerID ~= 67 then\n  self.used = true\n  return\nend\n\nlocal entityID = eventArgs.entityID\nif entityID then\n  TensorCore.getMoogleDrawer():addTimedCircleOnEnt(\n    5000,\n    entityID,\n    6,\n    0,\n    false,\n    false\n  )\n  local player = TensorCore.mGetPlayer()\n  if player and player.id == entityID then\n    AnyoneCore.Shotcall(\"Ice missile: freeze west water tornado\", true, 5, true)\n  end\nend\n\nself.used = true",
				executeType = 2,
				mechanicTime = 292.7,
				name = "P2 - Ice Earth Missile",
				timeRange = true,
				timelineIndex = 70,
				timerEndOffset = 0.5,
				timerStartOffset = -6,
				uuid = "6296f9b9-9367-cbb0-bf04-729d2980e23d",
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
							actionLua = "local state = data.teaP2\nlocal enumState = state and state.enumerationMarkers\nif not enumState or (enumState.count or 0) < 2 then\n  self.used = true\n  return\nend\n\nlocal player = TensorCore.mGetPlayer()\nlocal slot = AnyoneCore.Roster.mySlot()\nif not player or not slot then\n  self.used = true\n  return\nend\n\nif enumState[player.id] then\n  self.used = true\n  return\nend\n\nlocal sideBySlot = {\n  M1 = \"west\",\n  M2 = \"west\",\n  R1 = \"east\",\n  R2 = \"east\"\n}\n\nlocal westMarkers = 0\nlocal eastMarkers = 0\nfor _, record in pairs(enumState) do\n  if type(record) == \"table\" and record.slot then\n    if record.defaultSide == \"west\" then\n      westMarkers = westMarkers + 1\n    elseif record.defaultSide == \"east\" then\n      eastMarkers = eastMarkers + 1\n    end\n  end\nend\n\nif westMarkers == 2 or eastMarkers == 2 then\n  sideBySlot.M1 = \"east\"\n  sideBySlot.M2 = \"west\"\n  sideBySlot.R1 = \"west\"\n  sideBySlot.R2 = \"east\"\nend\n\nlocal ownSide\nif slot == \"H1\" then\n  ownSide = \"west\"\nelseif slot == \"H2\" then\n  ownSide = \"east\"\nelse\n  ownSide = sideBySlot[slot]\nend\n\nif not ownSide then\n  self.used = true\n  return\nend\n\nlocal target\nfor _, record in pairs(enumState) do\n  if type(record) == \"table\" and record.entity and sideBySlot[record.slot] == ownSide then\n    target = record.entity\n    break\n  end\nend\n\nlocal liveTarget = target and target.id and TensorCore.mGetEntity(target.id) or target\nlocal sourcePos = player.pos\nlocal targetPos = liveTarget and liveTarget.pos\n\nif sourcePos and targetPos then\n  local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n  local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n  local scale = math.min(1, totalDistance / 15)\n  local baseWidth = math.max(0.5, 1 * scale)\n  local tipWidth = math.max(1.5, 3 * scale)\n  local tipLength = math.max(2, 3 * scale)\n  local baseLength = totalDistance - tipLength\n\n  if baseLength > 1 then\n    local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n    arrowDrawer:addArrow(\n      sourcePos.x, sourcePos.y, sourcePos.z,\n      heading,\n      baseLength, baseWidth, tipLength, tipWidth,\n      false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\n  end\nend\n\nself.used = true",
							name = "Draw Enumeration Stack Arrow",
							uuid = "07dba793-818d-d4ed-aa46-3d3c83f75543",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P2 - Brute Justice + Cruise Chaser",
				eventType = 12,
				loop = true,
				mechanicTime = 292.7,
				name = "P2 - Enumeration Stack Arrow",
				timeRange = true,
				timelineIndex = 70,
				timerStartOffset = -6,
				uuid = "6acf476c-3822-68f7-a117-227d04c64403",
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
				name = "P2 - Brute Justice + Cruise Chaser",
				uuid = "6f34513e-7b07-2df8-b8e7-e069b269b0b9",
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
							actionLua = "local function resolvePartner()\n  local roster = AnyoneCore.Roster\n  local slot = roster and roster.mySlot()\n  local partners = { T1 = \"M1\", M1 = \"T1\", H1 = \"M2\", M2 = \"H1\", T2 = \"R1\", R1 = \"T2\", H2 = \"R2\", R2 = \"H2\" }\n  local partnerSlot = slot and partners[slot]\n  local members = roster and roster.members()\n  local member = partnerSlot and members and members[partnerSlot]\n  local partnerJob = member and member.job\n  local party = TensorCore.getEntityGroupList(\"Party\", \"Number\")\n  if party and partnerJob then\n    for _, entity in pairs(party) do if entity and entity.job == partnerJob then return entity end end\n  end\n  return nil\nend\nlocal state = data.teaP2 or {}\ndata.teaP2 = state\nif state.verdictNisiArrowRemoved then return end\nlocal player = TensorCore.mGetPlayer()\nlocal partner = resolvePartner()\nlocal livePartner = partner and partner.id and TensorCore.mGetEntity(partner.id) or partner\nlocal sourcePos = player and player.pos\nlocal targetPos = livePartner and livePartner.pos\nif sourcePos and targetPos then\n  local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n  local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n  local arrowDistance = math.max(0, totalDistance - 1)\n  local scale = math.min(1, arrowDistance / 15)\n  local baseWidth = math.max(0.1, scale)\n  local tipWidth = math.max(0.3, 3 * scale)\n  local tipLength = math.min(3, arrowDistance * 0.3)\n  local baseLength = arrowDistance - tipLength\n  local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n  if baseLength > 0.1 then\n    local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n    arrowDrawer:addArrow(sourcePos.x, sourcePos.y, sourcePos.z, heading,\n      baseLength, baseWidth, tipLength, tipWidth, false, flags)\n  end\n  local partnerCircle = TensorCore.getCachedDrawer(nil, nil, 0xFFFF0000, 0xFFFF0000, 2)\n  partnerCircle:addCircle(targetPos.x, targetPos.y, targetPos.z, 0.4, false, flags)\n  Argus.addCircleFilled(targetPos.x, targetPos.y, targetPos.z, 0.15, 32,\n    0xFF00FF00, nil, 0, 0, 0, 0, false, flags)\nend\nself.used = true",
							name = "Draw arrow to clockwise partner",
							uuid = "09321da7-06e7-4440-a7ec-f0dff6454428",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P2 - Brute Justice + Cruise Chaser",
				eventType = 12,
				loop = true,
				mechanicTime = 306.7,
				name = "P2 - Verdict Nisi Arrow",
				timeRange = true,
				timelineIndex = 71,
				timerEndOffset = 50,
				timerStartOffset = 10,
				uuid = "a18c01f2-0988-dcc6-8f52-5abed8a57580",
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
				displayPath = "P2 - Brute Justice + Cruise Chaser",
				execute = "local player = TensorCore.mGetPlayer()\nlocal party = TensorCore.getEntityGroupList(\"Party\") or {}\nlocal water\nfor _, member in pairs(party) do\n  if member and TensorCore.hasBuff(member, 2142) then water = member break end\nend\nif not player or not water then self.used = true return end\n\nlocal _, _, _, _, outlineThickness = TensorCore.getMoogleColors()\nlocal drawer = TensorCore.getCachedDrawer(\n  0x30FF0000, 0x60FF0000, 0xA0FF0000, 0xFFFF0000,\n  outlineThickness, 0, flags\n)\ndrawer:addTimedCircleOnEnt(5000, water.id, 8, 0, false, false, flags)\n\nif water.id == player.id then\n  AnyoneCore.Shotcall(\"Water: place west at 86, 100\", true, 5, true)\n  local destination = { x = 86, y = 0, z = 100 }\n  local heading = TensorCore.getHeadingToTarget(player.pos, destination)\n  local length = math.max(1, TensorCore.getDistance2d(player.pos, destination) - 1)\n  drawer:addTimedArrow(5000, player.pos.x, player.pos.y, player.pos.z, heading, length, 0.35, 1, 0.9, 0, false, flags)\nelseif not TensorCore.hasBuff(player, 2143) and\n       (TensorCore.isHealer(player) or TensorCore.isRanged(player, true)) then\n  AnyoneCore.Shotcall(\"Stack with water\", true, 5, false)\n  drawer:addTimedArrowOnEnt(5000, player.id, 1, 0.35, 1, 0.9, water.id, 0, false, 0, false, flags)\nend\nself.used = true",
				executeType = 2,
				mechanicTime = 306.7,
				name = "P2 - Second Water Stack",
				timelineIndex = 71,
				timerOffset = -5,
				uuid = "ba6a9b14-0191-ef53-ba71-7e391825e05a",
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
							actionLua = "local function resolvePartner()\n  local roster = AnyoneCore.Roster\n  local slot = roster and roster.mySlot()\n  local partners = { T1 = \"M1\", M1 = \"T1\", H1 = \"M2\", M2 = \"H1\", T2 = \"R1\", R1 = \"T2\", H2 = \"R2\", R2 = \"H2\" }\n  local partnerSlot = slot and partners[slot]\n  local members = roster and roster.members()\n  local member = partnerSlot and members and members[partnerSlot]\n  local partnerJob = member and member.job\n  local party = TensorCore.getEntityGroupList(\"Party\", \"Number\")\n  if party and partnerJob then\n    for _, entity in pairs(party) do if entity and entity.job == partnerJob then return entity end end\n  end\n  return nil\nend\nlocal state = data.teaP2 or {}\ndata.teaP2 = state\nstate.verdictNisiArrowRemoved = nil\nlocal partner = resolvePartner()\nif not partner or not partner.job then return end\nlocal jobName = TensorCore.getJobNameByID(partner.job)\nif not jobName then return end\nAnyoneCore.Shotcall(\"Stack on \" .. jobName, true, 4, true)\nself.used = true",
							conditions = 
							{
								
								{
									"7b808643-2b98-7fc8-ab1a-a079e326f986",
									true,
								},
							},
							endIfUsed = true,
							name = "Shotcall clockwise partner",
							uuid = "d291f676-3ed2-21dd-a131-f2ff73147e92",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							dequeueIfLuaFalse = true,
							name = "Verdict timing active",
							uuid = "7b808643-2b98-7fc8-ab1a-a079e326f986",
							version = 3,
						},
					},
				},
				displayPath = "P2 - Brute Justice + Cruise Chaser",
				mechanicTime = 306.7,
				name = "P2 - Verdict Shotcall",
				throttleTime = 100,
				timelineIndex = 71,
				timerOffset = 10,
				uuid = "e6bf6123-16cf-0004-ae5a-2bf1b4d1d360",
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
							actionLua = "local state = data.teaP2 or {}\ndata.teaP2 = state\nif state.verdictNisiArrow then Argus.deleteTimedShape(state.verdictNisiArrow); state.verdictNisiArrow = nil end\nstate.verdictNisiArrowRemoved = true\nstate.verdictNisiTarget = nil\nstate.verdictNisiDecreeID = nil\nstate.verdictNisiShotcalled = nil\nself.used = true",
							conditions = 
							{
								
								{
									"1c745a86-3473-f3ec-83a9-8c833e4655c3",
									true,
								},
							},
							endIfUsed = true,
							name = "Remove Verdict Nisi arrow",
							uuid = "f2a222c1-d604-eb52-921f-d6b823a9466f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local state = data.teaP2\nif state and state.verdictNisiArrowRemoved then return false end\nlocal player = TensorCore.mGetPlayer()\nlocal function resolvePartner()\n  local roster = AnyoneCore.Roster\n  local slot = roster and roster.mySlot()\n  local partners = { T1 = \"M1\", M1 = \"T1\", H1 = \"M2\", M2 = \"H1\", T2 = \"R1\", R1 = \"T2\", H2 = \"R2\", R2 = \"H2\" }\n  local partnerSlot = slot and partners[slot]\n  local members = roster and roster.members()\n  local member = partnerSlot and members and members[partnerSlot]\n  local partnerJob = member and member.job\n  local party = TensorCore.getEntityGroupList(\"Party\", \"Number\")\n  if party and partnerJob then\n    for _, entity in pairs(party) do if entity and entity.job == partnerJob then return entity end end\n  end\n  return nil\nend\nlocal partner = resolvePartner()\nif not player or not partner then return false end\nlocal decreeIDs = {[2222] = true, [2223] = true, [2137] = true, [2138] = true}\nlocal playerIDs = {}\nfor _, buff in pairs(TensorCore.getBuffs(player) or {}) do\n  if buff and decreeIDs[buff.id] then playerIDs[buff.id] = true end\nend\nfor _, buff in pairs(TensorCore.getBuffs(partner) or {}) do\n  if buff and playerIDs[buff.id] then return true end\nend\nreturn false",
							dequeueIfLuaFalse = true,
							name = "Player and CW partner share Final Decree Nisi ID",
							uuid = "1c745a86-3473-f3ec-83a9-8c833e4655c3",
							version = 3,
						},
					},
				},
				displayPath = "P2 - Brute Justice + Cruise Chaser",
				loop = true,
				mechanicTime = 306.7,
				name = "P2 - Remove Verdict Nisi Arrow",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 71,
				timerEndOffset = 52,
				timerStartOffset = 1.7999999523163,
				uuid = "566d6e81-08c8-4bae-8fac-e14faf37d312",
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
				name = "P2 - Brute Justice + Cruise Chaser",
				uuid = "bd69ed4f-cede-4c3b-8615-f4eda870f4c1",
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
							actionLua = "local bruteJustice = TensorCore.getEntityByGroup(\"ContentID\", { contentid = 9216 }, false)\nlocal origin = bruteJustice and bruteJustice.pos\nlocal party = TensorCore.getEntityGroupList(\"Party\", \"Number\") or {}\nlocal closest\nlocal closestDistance\n\nif origin then\n  for _, entity in pairs(party) do\n    local pos = entity and entity.pos\n    if entity and pos then\n      local distance = TensorCore.getDistance2d(origin, pos)\n      if distance and (not closestDistance or distance < closestDistance) then\n        closest = entity\n        closestDistance = distance\n      end\n    end\n  end\nend\n\nlocal drawer = TensorCore.getMoogleDrawer()\nif drawer and origin and closest and closest.pos then\n  local heading = TensorCore.getHeadingToTarget(origin, closest.pos)\n  drawer:addCone(\n    origin.x,\n    origin.y,\n    origin.z,\n    31,\n    math.pi / 2,\n    heading,\n    false\n  )\nend\n\nself.used = true",
							name = "Draw Flarethrower cone",
							uuid = "b53f78b9-200b-a93e-b251-f154cf05ba04",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P2 - Brute Justice + Cruise Chaser",
				eventType = 12,
				loop = true,
				mechanicTime = 315.5,
				name = "P2 - Limit Cut and Flarethrower",
				timeRange = true,
				timelineIndex = 74,
				timerEndOffset = 0.5,
				timerStartOffset = -3,
				uuid = "c98310d0-85dc-973e-b51b-e466fa2ce1d3",
				version = 2,
			},
		},
	},
	[76] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P2 - Brute Justice + Cruise Chaser",
				uuid = "7bc03265-cb22-a6ef-8ea6-d22eb3128887",
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
				displayPath = "P2 - Brute Justice + Cruise Chaser",
				execute = "local flags=Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nlocal player = TensorCore.mGetPlayer()\nlocal party = TensorCore.getEntityGroupList(\"Party\") or {}\nlocal water\nfor _, member in pairs(party) do\n  if member and TensorCore.hasBuff(member, 2142) then water = member break end\nend\nif not player or not water then self.used = true return end\n\nlocal _, _, _, _, outlineThickness = TensorCore.getMoogleColors()\nlocal drawer = TensorCore.getCachedDrawer(\n  0x30FF0000, 0x60FF0000, 0xA0FF0000, 0xFFFF0000,\n  outlineThickness, 0, flags\n)\ndrawer:addTimedCircleOnEnt(5000, water.id, 8, 0, false, false, flags)\n\nif water.id == player.id then\n  AnyoneCore.Shotcall(\"Water: place west at 86, 100\", true, 5, true)\n  local destination = { x = 86, y = 0, z = 100 }\n  local heading = TensorCore.getHeadingToTarget(player.pos, destination)\n  local length = math.max(1, TensorCore.getDistance2d(player.pos, destination) - 1)\n  drawer:addTimedArrow(5000, player.pos.x, player.pos.y, player.pos.z, heading, length, 0.35, 1, 0.9, 0, false, flags)\nelseif not TensorCore.hasBuff(player, 2143) and not TensorCore.isTank(player) and\n       data.tea_lpdu_water and data.tea_lpdu_water.previous and data.tea_lpdu_water.previous~=player.id then\n  AnyoneCore.Shotcall(\"Stack with water\", true, 5, false)\n  drawer:addTimedArrowOnEnt(5000, player.id, 1, 0.35, 1, 0.9, water.id, 0, false, 0, false, flags)\nend\nself.used = true",
				executeType = 2,
				mechanicTime = 336.2,
				name = "P2 - Third Water Stack",
				timelineIndex = 76,
				timerOffset = -5,
				uuid = "c95211f1-55c5-e811-b361-d74450a6f134",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Guidance",
				uuid = "01780f51-59c5-15a3-a06d-37a32752548e",
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
							actionLua = "local s=data.tea_lpdu_water\nif not s then s={};data.tea_lpdu_water=s end\nif s.current~=eventArgs.entityID then s.previous=s.current;s.current=eventArgs.entityID end\nself.used=true",
							conditions = 
							{
								
								{
									"4be0993a-6a39-ec73-8cc3-3bd79821ab30",
									true,
								},
							},
							name = "[LPDU] BJCC - Track Water bearer handoffs",
							uuid = "b8164a84-50ca-faa4-b3a3-910966336cc2",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.buffID==2142",
							dequeueIfLuaFalse = true,
							name = "Compressed Water applied",
							uuid = "4be0993a-6a39-ec73-8cc3-3bd79821ab30",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Guidance",
				eventType = 8,
				loop = true,
				mechanicTime = 336.2,
				name = "[LPDU] BJCC - Track Water bearer handoffs",
				timeRange = true,
				timelineIndex = 76,
				timerEndOffset = 5,
				timerStartOffset = -105,
				uuid = "fa44d852-ee5e-b6ec-a814-42b8e134c86c",
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
				name = "P2 - Brute Justice + Cruise Chaser",
				uuid = "42060473-27b7-a616-bf21-24c200bc56bf",
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
							actionLua = "local boss = TensorCore.mGetEntity(eventArgs.entityID)\nlocal gelidGaols = TensorCore.entityList(\"contentid=9219\")\nlocal icePillar\n\nif gelidGaols then\n    for _, entity in pairs(gelidGaols) do\n        if entity and entity.pos and Argus.isEntityVisible(entity) then\n            icePillar = entity\n            break\n        end\n    end\nend\n\nif boss and boss.pos and icePillar then\n    local heading = TensorCore.getHeadingToTarget(boss.pos, icePillar.pos)\n    local distance = TensorCore.getDistance2d(boss.pos, icePillar.pos)\n    local safeHalfWidth = 2.5\n    local angle = 2 * math.atan(safeHalfWidth / distance)\n    local timeout = math.floor((eventArgs.channelTimeMax + 0.4) * 1000)\n\n    local safeArea = TensorCore.getMoogleDrawer(0, Argus2.RenderFlags.FLAG_OCCLUSION_BASE)\n    local unsafeCone = TensorCore.getMoogleDrawer(0, Argus2.RenderFlags.FLAG_OCCLUDE)\n\n    safeArea:addTimedCircle(timeout, 100, 0, 100, 20, 0, false, false)\n    unsafeCone:addTimedCone(\n        timeout, boss.pos.x, boss.pos.y, boss.pos.z,\n        50, angle, heading, 0, false, false\n    )\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"a640bb43-0d7a-4862-b818-9da74feb1dc9",
									true,
								},
							},
							endIfUsed = true,
							name = "Red arena with Gelid Gaol shadow cone",
							uuid = "bd5b38ac-ad5a-df99-b948-717034804dcc",
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
							eventSpellID = 18482,
							name = "Propeller Wind 18482",
							uuid = "a640bb43-0d7a-4862-b818-9da74feb1dc9",
							version = 3,
						},
					},
				},
				displayPath = "P2 - Brute Justice + Cruise Chaser",
				eventType = 3,
				mechanicTime = 354.5,
				name = "[Draw] Propeller Wind Safe Area",
				timeRange = true,
				timelineIndex = 77,
				timerEndOffset = 0.40000000596046,
				timerStartOffset = -7,
				uuid = "3b866ff1-383d-2a62-8977-256a19dd09fb",
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
							actionLua = "local player = TensorCore.mGetPlayer()\nif not player then\n  return\nend\n\nlocal finalToPosition = {\n  [2224] = 1,\n  [2139] = 2,\n  [2225] = 3,\n  [2140] = 4\n}\n\nlocal positionIndex\nfor _, buff in pairs(TensorCore.getBuffs(player) or {}) do\n  if buff and finalToPosition[buff.id] then\n    positionIndex = finalToPosition[buff.id]\n    break\n  end\nend\n\nif not positionIndex then\n  return\nend\n\nlocal gaols = TensorCore.entityList(\"contentid=9219\")\nlocal gaol\n\nif gaols then\n  for _, entity in pairs(gaols) do\n    if entity and entity.pos then\n      if Argus.isEntityVisible(entity) then\n        gaol = entity\n        break\n      end\n      gaol = gaol or entity\n    end\n  end\nend\n\nif not gaol then\n  return\nend\n\nlocal center = { x = 100, y = 0, z = 100 }\nlocal headingToCenter = TensorCore.getHeadingToTarget(gaol.pos, center)\nlocal distanceFromGaol = 3.5 + ((positionIndex - 1) * 3.5)\nlocal targetPos = TensorCore.getPosInDirection(gaol.pos, headingToCenter, distanceFromGaol)\nlocal sourcePos = player.pos\n\nif sourcePos and targetPos then\n  local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n  local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n  local scale = math.min(1, totalDistance / 15)\n  local baseWidth = math.max(0.5, 1 * scale)\n  local tipWidth = math.max(1.5, 3 * scale)\n  local tipLength = math.max(2, 3 * scale)\n  local baseLength = totalDistance - tipLength\n\n  if baseLength > 1 then\n    local arrowDrawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n    arrowDrawer:addArrow(\n      sourcePos.x, sourcePos.y, sourcePos.z,\n      heading,\n      baseLength, baseWidth, tipLength, tipWidth,\n      false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\n  end\nend",
							name = "Draw Nisi position arrow",
							uuid = "e8f3e98f-966f-1adf-b0f2-e4e1823d3afd",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P2 - Brute Justice + Cruise Chaser",
				eventType = 12,
				loop = true,
				mechanicTime = 354.5,
				name = "P2 - Gelid Gaol Nisi Position Arrow",
				timeRange = true,
				timelineIndex = 77,
				timerEndOffset = 2.0999999046326,
				timerStartOffset = -13,
				uuid = "ea78fcf2-6ee1-fd85-92fa-5a1df96bc8e9",
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
							actionLua = "local gaols = TensorCore.entityList(\"contentid=9219\")\nlocal gaol\nif gaols then\n  for _, entity in pairs(gaols) do\n    if entity and entity.pos then\n      if Argus.isEntityVisible(entity) then gaol = entity; break end\n      gaol = gaol or entity\n    end\n  end\nend\nif not gaol then self.used = true; return end\nlocal drawDuration = 15000\nlocal center = { x = 100, y = 0, z = 100 }\nlocal headingToCenter = TensorCore.getHeadingToTarget(gaol.pos, center)\nlocal labels = { \"B\", \"P\", \"O\", \"G\" }\nlocal circleColors = {\n  B = { 0x44FF0000, 0x88FF0000, 0x66FF0000, 0xDDFF0000 },\n  P = { 0x44800080, 0x88800080, 0x66800080, 0xDD800080 },\n  O = { 0x4400A5FF, 0x8800A5FF, 0x6600A5FF, 0xDD00A5FF },\n  G = { 0x4400FF00, 0x8800FF00, 0x6600FF00, 0xDD00FF00 }\n}\nfor i, label in ipairs(labels) do\n  local distanceFromGaol = 3.5 + ((i - 1) * 3.5)\n  local position = TensorCore.getPosInDirection(gaol.pos, headingToCenter, distanceFromGaol)\n  AnyoneCore.addTimedWorldText(drawDuration, label, position, 0xFFFFFFFF, true, 1.5)\n  local color = circleColors[label]\n  local drawer = TensorCore.getCachedDrawer(color[1], color[2], color[3], color[4], 2, 1, Argus2.RenderFlags.FLAG_WARP_TERRAIN)\n  if drawer then\n    drawer:addTimedCircle(drawDuration, position.x, position.y, position.z, 1.3, 0, false, true, Argus2.RenderFlags.FLAG_WARP_TERRAIN)\n  end\nend\nself.used = true",
							endIfUsed = true,
							name = "Draw BPOG Nisi lineup",
							uuid = "adced5ba-1af9-c6bb-ab5c-609882b8601d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P2 - Brute Justice + Cruise Chaser",
				mechanicTime = 354.5,
				name = "P2 - Gelid Gaol Nisi Lineup",
				timelineIndex = 77,
				timerOffset = -13,
				uuid = "3c792ea1-3d08-e223-b44c-5976b79c6561",
				version = 2,
			},
		},
	},
	[79] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P2 - Brute Justice + Cruise Chaser",
				uuid = "6adf9d8e-8072-0d62-a731-1c28152088b5",
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
				displayPath = "P2 - Brute Justice + Cruise Chaser",
				execute = "local player = TensorCore.mGetPlayer()\nif player then\n  if TensorCore.isHealer(player) then\n    AnyoneCore.Shotcall(\"Tank Photon - heal both tanks\", true, 4, true)\n  elseif TensorCore.isTank(player) then\n    AnyoneCore.Shotcall(\"Tank Photon - tanks to one HP\", true, 4, true)\n  end\nend\nself.used = true",
				executeType = 2,
				mechanicTime = 366.8,
				name = "P2 - Tank Photon",
				timelineIndex = 79,
				timerOffset = -2.7000000476837,
				uuid = "cb4e79ad-8e38-5171-a3bd-170390c93e53",
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
				name = "P2 - Brute Justice + Cruise Chaser",
				uuid = "9350d413-4765-0cd6-9cab-9b34eb706e3c",
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
							alertScale = 1,
							alertTTS = true,
							alertText = "Double Rocket Punch - tanks share",
							alertVolume = 100,
							name = "Double Rocket Punch - tanks share",
							uuid = "d5904674-8fb8-9c2b-959b-875c5b017898",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P2 - Brute Justice + Cruise Chaser",
				mechanicTime = 374.8,
				name = "P2 - Double Rocket Punch",
				timelineIndex = 80,
				timerOffset = -3,
				uuid = "d2b4e8ca-9055-100e-a510-87abbb546822",
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
				name = "P2 - Brute Justice + Cruise Chaser",
				uuid = "e10b4310-9fce-066e-8877-d2a1b0909aa5",
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
							alertDuration = 3500,
							alertPriority = 2,
							alertScale = 1,
							alertTTS = true,
							alertText = "Super Jump - farthest player bait",
							alertVolume = 100,
							name = "Super Jump - farthest player bait",
							uuid = "8f86d01a-e1d5-2fb7-9ab1-ca2820dc8e00",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P2 - Brute Justice + Cruise Chaser",
				mechanicTime = 382.1,
				name = "P2 - Super Jump",
				timelineIndex = 81,
				timerOffset = -2,
				uuid = "882910e8-e8d9-4ffe-8207-6826525fda96",
				version = 2,
			},
		},
	},
	[82] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P2 - Brute Justice + Cruise Chaser",
				uuid = "2ce8048f-9d07-b1ba-96cd-a18282aff260",
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
							alertDuration = 4500,
							alertPriority = 3,
							alertScale = 1,
							alertTTS = true,
							alertText = "Apocalyptic Ray - outrange the frontal cone",
							alertVolume = 100,
							name = "Apocalyptic Ray - outrange the frontal cone",
							uuid = "1ca34bb9-522c-5542-b308-1897aee9fb32",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P2 - Brute Justice + Cruise Chaser",
				mechanicTime = 384.4,
				name = "P2 - Apocalyptic Ray",
				timelineIndex = 82,
				timerOffset = -2,
				uuid = "86cf6ea6-c669-c388-afd2-eb9c84282202",
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
				name = "P2 - Brute Justice + Cruise Chaser",
				uuid = "1247ba1d-2cc9-392f-9e69-7ea92c0023c4",
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
							alertScale = 1,
							alertTTS = true,
							alertText = "Final Sentence - finish the phase",
							alertVolume = 100,
							name = "Final Sentence - finish the phase",
							uuid = "07ac57c1-6300-fa9e-add9-4814b06ce52e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P2 - Brute Justice + Cruise Chaser",
				mechanicTime = 413.7,
				name = "P2 - Final Sentence",
				timelineIndex = 85,
				timerOffset = -3,
				uuid = "be912325-8257-d534-8c92-7f83469c4ed5",
				version = 2,
			},
		},
	},
	[88] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P3 - Alexander Prime",
				uuid = "b2c93510-0102-441b-9d9f-9d47e60232ef",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "P3 - Alexander Prime",
				name = "Temporal Stasis",
				uuid = "72842b51-58a6-52a9-8e75-675e3f8e9db8",
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
							actionLua = "\n\nlocal function findEntity(contentID, cacheKey)\n    local cachedID = data[cacheKey]\n    if cachedID then\n        local cached = EntityList:Get(cachedID)\n        if cached and cached.contentid == contentID then\n            return cached\n        end\n    end\n\n    local direct = TensorCore.getEntityByGroup(\"ContentID\", { contentid = contentID }, false)\n    if direct and direct.id then\n        data[cacheKey] = direct.id\n        return direct\n    end\n\n    for _, candidate in pairs(EntityList(\"\") or {}) do\n        if candidate and candidate.id and candidate.contentid == contentID then\n            data[cacheKey] = candidate.id\n            return candidate\n        end\n    end\nend\nlocal party = TensorCore.getEntityGroupList(\"Party\") or {}\nlocal player = TensorCore.mGetPlayer()\nlocal cruiseChaser = findEntity(9218, \"teaTemporalCallCC\")\nlocal bruteJustice = findEntity(9216, \"teaTemporalCallBJ\")\n\nif player and player.id and cruiseChaser and cruiseChaser.pos and bruteJustice and bruteJustice.pos then\n    local partyCount, greenCount, blueCount, aggravatedCount, nothingCount = 0, 0, 0, 0, 0\n    local playerMechanic\n\n    for _, member in pairs(party) do\n        if member and member.id then\n            partyCount = partyCount + 1\n            local mechanic = \"nothing\"\n            for _, buff in pairs(TensorCore.getBuffs(member) or {}) do\n                if buff.id == 1123 then\n                    mechanic = \"green\"\n                    break\n                elseif buff.id == 1124 then\n                    mechanic = \"blue\"\n                    break\n                elseif buff.id == 1121 then\n                    mechanic = \"aggravated\"\n                    break\n                end\n            end\n\n            if mechanic == \"green\" then\n                greenCount = greenCount + 1\n            elseif mechanic == \"blue\" then\n                blueCount = blueCount + 1\n            elseif mechanic == \"aggravated\" then\n                aggravatedCount = aggravatedCount + 1\n            else\n                nothingCount = nothingCount + 1\n            end\n\n            if member.id == player.id then\n                playerMechanic = mechanic\n            end\n        end\n    end\n\n    if partyCount == 8 and greenCount == 2 and blueCount == 2 and aggravatedCount == 2 and nothingCount == 2 and playerMechanic then\n        local ccOnWest = cruiseChaser.pos.x < bruteJustice.pos.x\n        local leftRobotName = ccOnWest and \"CRUISE CHASER\" or \"BRUTE JUSTICE\"\n        local rightRobotName = ccOnWest and \"BRUTE JUSTICE\" or \"CRUISE CHASER\"\n        local isDPS = TensorCore.isDPS(player)\n        local message\n\n        if playerMechanic == \"nothing\" then\n            message = \"NOTHING: \" .. leftRobotName .. \" - \" .. (isDPS and \"SOUTH\" or \"NORTH\")\n        elseif playerMechanic == \"green\" then\n            message = \"GREEN: \" .. rightRobotName .. \" - \" .. (isDPS and \"SOUTH\" or \"NORTH\")\n        elseif playerMechanic == \"blue\" then\n            local side = isDPS and \"WEST\" or \"EAST\"\n            local playerOnCCSide = (side == \"WEST\" and ccOnWest) or (side == \"EAST\" and not ccOnWest)\n            message = \"BLUE: \" .. side\n            if playerOnCCSide then\n                message = message .. \" - MOVE IN FOR THIRD CC BAIT\"\n            else\n                message = message .. \" - STAY AT WALL\"\n            end\n        else\n            message = bruteJustice.pos.x < 100 and \"AGGRAVATED: BRUTE JUSTICE WEST WALL\" or \"AGGRAVATED: BRUTE JUSTICE EAST WALL\"\n        end\n\n        AnyoneCore.Shotcall(message, true, 9, false)\n        self.used = true\n    end\nend\n",
							endIfUsed = true,
							name = "Call local assignment",
							uuid = "3e07af7c-0304-2775-a83f-e2e4f162901f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P3 - Alexander Prime/Temporal Stasis",
				enabled = false,
				mechanicTime = 500,
				name = "P3 - Temporal Stasis - Personal Shotcall",
				timeRange = true,
				timelineIndex = 88,
				timerEndOffset = 3.5,
				timerStartOffset = -10,
				uuid = "6d361f0d-3fd1-822b-a9fc-45b7f216e8d9",
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
							actionLua = "local function findEntity(contentID, cacheKey)\n    local cachedID = data[cacheKey]\n    if cachedID then\n        local cached = EntityList:Get(cachedID)\n        if cached and cached.contentid == contentID and Argus.isEntityVisible(cached) then\n            return cached\n        end\n    end\n\n    local direct = TensorCore.getEntityByGroup(\"ContentID\", { contentid = contentID }, false)\n    if direct and direct.id and Argus.isEntityVisible(direct) then\n        data[cacheKey] = direct.id\n        return direct\n    end\n\n    for _, candidate in pairs(EntityList(\"\") or {}) do\n        if candidate and candidate.id and candidate.contentid == contentID and Argus.isEntityVisible(candidate) then\n            data[cacheKey] = candidate.id\n            return candidate\n        end\n    end\nend\n\nlocal party = TensorCore.getEntityGroupList(\"Party\") or {}\nlocal alexanderPrime = findEntity(9220, \"teaTemporalTextAP\")\nlocal cruiseChaser = findEntity(9218, \"teaTemporalTextCC\")\nlocal bruteJustice = findEntity(9216, \"teaTemporalTextBJ\")\n\nif alexanderPrime and alexanderPrime.pos and cruiseChaser and cruiseChaser.pos and bruteJustice and bruteJustice.pos then\n    local assignments = {}\n    local partyCount, greenCount, blueCount, aggravatedCount, nothingCount = 0, 0, 0, 0, 0\n\n    for _, member in pairs(party) do\n        if member and member.id and member.pos then\n            partyCount = partyCount + 1\n            local mechanic = \"nothing\"\n            for _, buff in pairs(TensorCore.getBuffs(member) or {}) do\n                if buff.id == 1123 then\n                    mechanic = \"green\"\n                    break\n                elseif buff.id == 1124 then\n                    mechanic = \"blue\"\n                    break\n                elseif buff.id == 1121 then\n                    mechanic = \"aggravated\"\n                    break\n                end\n            end\n\n            if mechanic == \"green\" then\n                greenCount = greenCount + 1\n            elseif mechanic == \"blue\" then\n                blueCount = blueCount + 1\n            elseif mechanic == \"aggravated\" then\n                aggravatedCount = aggravatedCount + 1\n            else\n                nothingCount = nothingCount + 1\n            end\n            assignments[#assignments + 1] = { member = member, mechanic = mechanic }\n        end\n    end\n\n    if partyCount == 8 and greenCount == 2 and blueCount == 2 and aggravatedCount == 2 and nothingCount == 2 then\n        local ccPos = cruiseChaser.pos\n        local bjPos = bruteJustice.pos\n        local leftRobot = ccPos.x < bjPos.x and cruiseChaser or bruteJustice\n        local rightRobot = ccPos.x < bjPos.x and bruteJustice or cruiseChaser\n        local ccSign = ccPos.x < 100 and -1 or 1\n        local bjSign = bjPos.x < 100 and -1 or 1\n        local westOffset = ccSign == -1 and 15.5 or 18.5\n        local eastOffset = ccSign == 1 and 15.5 or 18.5\n\n        local entries = {\n            nothingSupport = { pos = { x = leftRobot.pos.x, y = 0, z = leftRobot.pos.z - 1.8 } },\n            nothingDPS = { pos = { x = leftRobot.pos.x, y = 0, z = leftRobot.pos.z + 1.8 } },\n            greenSupport = { pos = { x = rightRobot.pos.x, y = 0, z = rightRobot.pos.z - 1.8 } },\n            greenDPS = { pos = { x = rightRobot.pos.x, y = 0, z = rightRobot.pos.z + 1.8 } },\n            blueSupport = { pos = { x = 100 + eastOffset, y = 0, z = 100 } },\n            blueDPS = { pos = { x = 100 - westOffset, y = 0, z = 100 } },\n            aggravated = { pos = { x = 100 + (bjSign * 18.5), y = 0, z = 100 } }\n        }\n\n        local circleSupport\n        for _, assignment in ipairs(assignments) do\n            local member = assignment.member\n            if member and member.pos and not TensorCore.isDPS(member) then\n                for _, buff in pairs(TensorCore.getBuffs(member) or {}) do\n                    if buff.id == 1124 then\n                        circleSupport = member\n                        break\n                    end\n                end\n            end\n            if circleSupport then\n                break\n            end\n        end\n\n        local player = TensorCore.mGetPlayer()\n        local playerID = player and player.id\n        local myTargetPos\n\n        for _, assignment in ipairs(assignments) do\n            local member = assignment.member\n            local key\n            if assignment.mechanic == \"green\" then\n                key = TensorCore.isDPS(member) and \"greenDPS\" or \"greenSupport\"\n            elseif assignment.mechanic == \"blue\" then\n                key = TensorCore.isDPS(member) and \"blueDPS\" or \"blueSupport\"\n            elseif assignment.mechanic == \"aggravated\" then\n                key = \"aggravated\"\n            else\n                key = TensorCore.isDPS(member) and \"nothingDPS\" or \"nothingSupport\"\n            end\n\n            if member.id == playerID then\n                myTargetPos = entries[key].pos\n            end\n        end\n\n        if player and player.pos and myTargetPos then\n            local sourcePos = { x = player.pos.x, y = 0, z = player.pos.z }\n            local flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n            local heading = TensorCore.getHeadingToTarget(sourcePos, myTargetPos)\n            local totalDistance = TensorCore.getDistance2d(sourcePos, myTargetPos)\n            local scale = math.min(1, totalDistance / 15)\n            local baseWidth = math.max(0.5, 1 * scale)\n            local tipWidth = math.max(1.5, 3 * scale)\n            local tipLength = math.max(2, 3 * scale)\n            local baseLength = totalDistance - tipLength\n\n            if baseLength > 1 then\n                local arrowDrawer = TensorCore.getCachedDrawer(\n                    0xFF00FFFF,\n                    0xFF0088FF,\n                    0xFF0000FF,\n                    0xFFFFFFFF,\n                    2\n                )\n                arrowDrawer:addArrow(\n                    sourcePos.x,\n                    sourcePos.y,\n                    sourcePos.z,\n                    heading,\n                    baseLength,\n                    baseWidth,\n                    tipLength,\n                    tipWidth,\n                    false,\n                    flags\n                )\n            end\n\n            if circleSupport and circleSupport.pos then\n                local yellowDrawer = TensorCore.getCachedDrawer(nil, nil, 0xFF00FFFF, 0xFF00FFFF, 2)\n                yellowDrawer:addCircle(\n                    circleSupport.pos.x,\n                    0,\n                    circleSupport.pos.z,\n                    3,\n                    false,\n                    flags\n                )\n            end\n\n            local blueDrawer = TensorCore.getCachedDrawer(nil, nil, 0xFFFF0000, 0xFFFF0000, 2)\n            blueDrawer:addCircle(myTargetPos.x, myTargetPos.y, myTargetPos.z, 0.4, false, flags)\n\n            Argus.addCircleFilled(\n                myTargetPos.x,\n                myTargetPos.y,\n                myTargetPos.z,\n                0.15,\n                32,\n                0xFF00FF00,\n                nil,\n                0,\n                0,\n                0,\n                0,\n                false,\n                flags\n            )\n        end\n        self.used = true\n    end\nend",
							endIfUsed = true,
							name = "Draw timed job positions",
							uuid = "9898321e-7fd1-ad85-a3bd-facc6fd2e7e3",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P3 - Alexander Prime/Temporal Stasis",
				eventType = 12,
				loop = true,
				mechanicTime = 500,
				name = "P3 - Temporal Stasis - Job Positions",
				timeRange = true,
				timelineIndex = 88,
				timerEndOffset = 3.5,
				timerStartOffset = -10,
				uuid = "47868cf0-402b-6793-91d2-df1735c78150",
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
				name = "P3 - Alexander Prime",
				uuid = "548386a2-7578-dcbf-8185-a65b5c351aac",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "P3 - Alexander Prime",
				name = "Temporal Stasis",
				uuid = "fc4d6212-998d-bb09-92c1-52856950bb71",
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
							actionLua = "local function findEntity(contentID, cacheKey)\n    local cachedID = data[cacheKey]\n    if cachedID then\n        local cached = EntityList:Get(cachedID)\n        if cached and cached.contentid == contentID and Argus.isEntityVisible(cached) then\n            return cached\n        end\n    end\n\n    local direct = TensorCore.getEntityByGroup(\"ContentID\", { contentid = contentID }, false)\n    if direct and direct.id and Argus.isEntityVisible(direct) then\n        data[cacheKey] = direct.id\n        return direct\n    end\n\n    for _, candidate in pairs(EntityList(\"\") or {}) do\n        if candidate and candidate.id and candidate.contentid == contentID and Argus.isEntityVisible(candidate) then\n            data[cacheKey] = candidate.id\n            return candidate\n        end\n    end\nend\n\nlocal cruiseChaser = findEntity(9218, \"teaTemporalBaitCC\")\nlocal drawer = TensorCore.getCachedDrawer(\n    0xFFFF0000,\n    0xFFFF0000,\n    0xFFFF0000,\n    0xFFFF0000,\n    2\n)\nif cruiseChaser and cruiseChaser.pos and drawer then\n    local first, second, third\n    local firstDistance, secondDistance, thirdDistance = math.huge, math.huge, math.huge\n    for _, member in pairs(TensorCore.getEntityGroupList(\"Party\") or {}) do\n        if member and member.id and member.pos then\n            local dx = member.pos.x - cruiseChaser.pos.x\n            local dz = member.pos.z - cruiseChaser.pos.z\n            local distance = (dx * dx) + (dz * dz)\n            if distance < firstDistance then\n                third, thirdDistance = second, secondDistance\n                second, secondDistance = first, firstDistance\n                first, firstDistance = member, distance\n            elseif distance < secondDistance then\n                third, thirdDistance = second, secondDistance\n                second, secondDistance = member, distance\n            elseif distance < thirdDistance then\n                third, thirdDistance = member, distance\n            end\n        end\n    end\n    if first and first.pos then\n        drawer:addCone(cruiseChaser.pos.x, cruiseChaser.pos.y, cruiseChaser.pos.z, 25, math.pi / 2, TensorCore.getHeadingToTarget(cruiseChaser.pos, first.pos), false)\n    end\n    if second and second.pos then\n        drawer:addCone(cruiseChaser.pos.x, cruiseChaser.pos.y, cruiseChaser.pos.z, 25, math.pi / 2, TensorCore.getHeadingToTarget(cruiseChaser.pos, second.pos), false)\n    end\n    if third and third.pos then\n        drawer:addCone(cruiseChaser.pos.x, cruiseChaser.pos.y, cruiseChaser.pos.z, 25, math.pi / 2, TensorCore.getHeadingToTarget(cruiseChaser.pos, third.pos), false)\n    end\nend\nself.used = true\n",
							endIfUsed = true,
							name = "Draw three closest Alpha Sword cones",
							uuid = "404cc420-901b-a11b-8f09-f23a2edcc1a8",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P3 - Alexander Prime/Temporal Stasis",
				eventType = 12,
				loop = true,
				mechanicTime = 505.1,
				name = "P3 - Temporal Stasis - Cruise Chaser Baits",
				timeRange = true,
				timelineIndex = 90,
				timerEndOffset = 2.5,
				timerStartOffset = -10,
				uuid = "2e5e16bb-52e0-1ac9-9ae6-348bf8c75ff5",
				version = 2,
			},
		},
	},
	[91] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P3 - Alexander Prime",
				uuid = "04164c4e-1d95-3b2c-b3e6-daf9ddcca637",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "P3 - Alexander Prime",
				name = "Temporal Stasis",
				uuid = "6af8d741-a5b7-159f-9f2c-26c97288b2d4",
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
							actionLua = "local function findEntity(contentID, cacheKey)\n    local cachedID = data[cacheKey]\n    if cachedID then\n        local cached = EntityList:Get(cachedID)\n        if cached and cached.contentid == contentID and Argus.isEntityVisible(cached) then\n            return cached\n        end\n    end\n\n    local direct = TensorCore.getEntityByGroup(\"ContentID\", { contentid = contentID }, false)\n    if direct and direct.id and Argus.isEntityVisible(direct) then\n        data[cacheKey] = direct.id\n        return direct\n    end\n\n    for _, candidate in pairs(EntityList(\"\") or {}) do\n        if candidate and candidate.id and candidate.contentid == contentID and Argus.isEntityVisible(candidate) then\n            data[cacheKey] = candidate.id\n            return candidate\n        end\n    end\nend\n\nlocal bruteJustice = findEntity(9216, \"teaTemporalBaitBJ\")\nlocal drawer = TensorCore.getMoogleDrawer()\nif bruteJustice and bruteJustice.pos and drawer then\n    local first, second\n    local firstDistance, secondDistance = math.huge, math.huge\n    for _, member in pairs(TensorCore.getEntityGroupList(\"Party\") or {}) do\n        if member and member.id and member.pos then\n            local dx = member.pos.x - bruteJustice.pos.x\n            local dz = member.pos.z - bruteJustice.pos.z\n            local distance = (dx * dx) + (dz * dz)\n            if distance < firstDistance then\n                second, secondDistance = first, firstDistance\n                first, firstDistance = member, distance\n            elseif distance < secondDistance then\n                second, secondDistance = member, distance\n            end\n        end\n    end\n    if first and first.pos then\n        drawer:addCone(bruteJustice.pos.x, bruteJustice.pos.y, bruteJustice.pos.z, 31, math.pi / 2, TensorCore.getHeadingToTarget(bruteJustice.pos, first.pos), false)\n    end\n    if second and second.pos then\n        drawer:addCone(bruteJustice.pos.x, bruteJustice.pos.y, bruteJustice.pos.z, 31, math.pi / 2, TensorCore.getHeadingToTarget(bruteJustice.pos, second.pos), false)\n    end\nend\nself.used = true\n",
							endIfUsed = true,
							name = "Draw two closest Flarethrower cones",
							uuid = "96bdf840-c725-d510-becd-8e870eb21db6",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P3 - Alexander Prime/Temporal Stasis",
				eventType = 12,
				loop = true,
				mechanicTime = 505.2,
				name = "P3 - Temporal Stasis - Flarethrower Baits",
				timeRange = true,
				timelineIndex = 91,
				timerEndOffset = 2.5,
				timerStartOffset = -10,
				uuid = "610c1a7e-4d88-2871-9379-029ed61ca162",
				version = 2,
			},
		},
	},
	[97] = 
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
							actionLua = "local alexanders = TensorCore.entityList(\"contentid=9220\")\nlocal mainTanks = TensorCore.getEntityGroupList(\"Main Tank\")\nlocal drawer = TensorCore.getMoogleDrawer()\n\nlocal alexander = nil\nif alexanders then\n    for _, entity in pairs(alexanders) do\n        if entity and entity.id and Argus.isEntityVisible(entity) then\n            alexander = entity\n            break\n        end\n    end\nend\n\nlocal mainTank = nil\nif mainTanks then\n    for _, entity in pairs(mainTanks) do\n        if entity and entity.id then\n            mainTank = entity\n            break\n        end\n    end\nend\n\nif alexander and mainTank and drawer then\n    drawer:addTimedConeOnEnt(2100, alexander.id, 17, math.pi / 2, mainTank.id, 0, false, false)\nend\n\nself.used = true",
							endIfUsed = true,
							name = "Pre-draw Divine Spear 1 cone",
							uuid = "25a6e2fe-2fcd-3749-b16f-2c6269df4d15",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 524.6,
				name = "P3 - Divine Spear 1",
				timeRange = true,
				timelineIndex = 97,
				timerStartOffset = -2.0999999046326,
				uuid = "6c449695-2d4e-b5ff-b2d9-db9f159e00f9",
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
							actionLua = "local alexanders = TensorCore.entityList(\"contentid=9220\")\nlocal mainTanks = TensorCore.getEntityGroupList(\"Main Tank\")\nlocal drawer = TensorCore.getMoogleDrawer()\n\nlocal alexander = nil\nif alexanders then\n    for _, entity in pairs(alexanders) do\n        if entity and entity.id and Argus.isEntityVisible(entity) then\n            alexander = entity\n            break\n        end\n    end\nend\n\nlocal mainTank = nil\nif mainTanks then\n    for _, entity in pairs(mainTanks) do\n        if entity and entity.id then\n            mainTank = entity\n            break\n        end\n    end\nend\n\nif alexander and mainTank and drawer then\n    drawer:addTimedConeOnEnt(2100, alexander.id, 17, math.pi / 2, mainTank.id, 0, false, false)\nend\n\nself.used = true",
							endIfUsed = true,
							name = "Pre-draw Divine Spear 2 cone",
							uuid = "6ca593e0-6e63-5f64-b47f-d6e79ff980bf",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 526.7,
				name = "P3 - Divine Spear 2",
				timeRange = true,
				timelineIndex = 98,
				timerStartOffset = -2.0999999046326,
				uuid = "28ad9794-d78d-21f7-a1a3-3ec463e16764",
				version = 2,
			},
		},
	},
	[99] = 
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
							actionLua = "local alexanders = TensorCore.entityList(\"contentid=9220\")\nlocal mainTanks = TensorCore.getEntityGroupList(\"Main Tank\")\nlocal drawer = TensorCore.getMoogleDrawer()\n\nlocal alexander = nil\nif alexanders then\n    for _, entity in pairs(alexanders) do\n        if entity and entity.id and Argus.isEntityVisible(entity) then\n            alexander = entity\n            break\n        end\n    end\nend\n\nlocal mainTank = nil\nif mainTanks then\n    for _, entity in pairs(mainTanks) do\n        if entity and entity.id then\n            mainTank = entity\n            break\n        end\n    end\nend\n\nif alexander and mainTank and drawer then\n    drawer:addTimedConeOnEnt(2100, alexander.id, 17, math.pi / 2, mainTank.id, 0, false, false)\nend\n\nself.used = true",
							endIfUsed = true,
							name = "Pre-draw Divine Spear 3 cone",
							uuid = "3daa9a25-908e-e64e-af75-aced44e6afb9",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 528.8,
				name = "P3 - Divine Spear 3",
				timeRange = true,
				timelineIndex = 99,
				timerStartOffset = -2.0999999046326,
				uuid = "2672b1f9-1145-ae5b-95f7-ef9467327d16",
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
							actionLua = "local alex = TensorCore.mGetEntity(eventArgs.entityID)\nif alex == nil then\n    return\nend\n\ndata.inception = data.inception or {}\nlocal state = data.inception\n\nstate.anchor = state.anchor or {}\nstate.anchor.id = alex.id\nstate.anchor.x = alex.pos.x\nstate.anchor.y = alex.pos.y\nstate.anchor.z = alex.pos.z\nstate.anchor.side = alex.pos.z < 100 and \"North\" or \"South\"\n\nlocal centerX = 100\nlocal centerZ = 100\nlocal radius = 18.25\nlocal diagonal = radius * 0.70710678118655\nlocal forwardZ = state.anchor.side == \"North\" and -1 or 1\nlocal rightX = -forwardZ\nlocal y = alex.pos.y\n\nstate.dots = state.dots or {}\nlocal dots = state.dots\ndots.N = dots.N or {}\ndots.NE = dots.NE or {}\ndots.E = dots.E or {}\ndots.SE = dots.SE or {}\ndots.S = dots.S or {}\ndots.SW = dots.SW or {}\ndots.W = dots.W or {}\ndots.NW = dots.NW or {}\n\ndots.N.x, dots.N.y, dots.N.z = centerX, y, centerZ + forwardZ * radius\ndots.NE.x, dots.NE.y, dots.NE.z = centerX + rightX * diagonal, y, centerZ + forwardZ * diagonal\ndots.E.x, dots.E.y, dots.E.z = centerX + rightX * radius, y, centerZ\ndots.SE.x, dots.SE.y, dots.SE.z = centerX + rightX * diagonal, y, centerZ - forwardZ * diagonal\ndots.S.x, dots.S.y, dots.S.z = centerX, y, centerZ - forwardZ * radius\ndots.SW.x, dots.SW.y, dots.SW.z = centerX - rightX * diagonal, y, centerZ - forwardZ * diagonal\ndots.W.x, dots.W.y, dots.W.z = centerX - rightX * radius, y, centerZ\ndots.NW.x, dots.NW.y, dots.NW.z = centerX - rightX * diagonal, y, centerZ + forwardZ * diagonal\n\nlocal localPlayer = TensorCore.mGetPlayer()\nlocal localID = localPlayer and localPlayer.id\nlocal localPair = localID and (state.tetherPairs or {})[localID]\nlocal route = nil\nif localPair and localPair.sphereID and state.tetherGuide and state.tetherGuide.sphereRoutes then\n    route = state.tetherGuide.sphereRoutes[localPair.sphereID]\nend\n\nif route and dots[route] then\n    local drawer = TensorCore.getStaticDrawer(0xFF00FF00)\n    drawer:addTimedCircle(15000, dots[route].x, dots[route].y, dots[route].z, 0.5, 0, false, true)\nend\nself.used = true",
							conditions = 
							{
								
								{
									"72c1b989-80a5-eed8-8728-36e242da04d0",
									true,
								},
								
								{
									"f704c8e3-857e-f563-89ae-8df0112bf246",
									true,
								},
							},
							name = "Save Anchor and Draw Local Dot",
							uuid = "42d3f542-2a4c-14a0-b737-1877cbd88cf7",
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
							eventArgOptionType = 2,
							eventEntityContentID = 9220,
							name = "Alexander Prime",
							uuid = "72c1b989-80a5-eed8-8728-36e242da04d0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 3,
							name = "Became Visible",
							uuid = "f704c8e3-857e-f563-89ae-8df0112bf246",
							version = 3,
						},
					},
				},
				eventType = 22,
				mechanicTime = 537.9,
				name = "Inception Anchor Debug Dots",
				timeRange = true,
				timelineIndex = 100,
				timerEndOffset = 12,
				uuid = "acfe9a45-8c75-ccbe-b0fd-bb542385d0a6",
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
							actionLua = "local state = data.inception\nif state == nil or state.anchor == nil or state.dots == nil then\n    return\nend\n\nstate.tetherGuide = state.tetherGuide or {}\nlocal guide = state.tetherGuide\n\nif guide.anchorX ~= state.anchor.x or guide.anchorY ~= state.anchor.y or guide.anchorZ ~= state.anchor.z or guide.anchorSide ~= state.anchor.side then\n    guide.anchorX = state.anchor.x\n    guide.anchorY = state.anchor.y\n    guide.anchorZ = state.anchor.z\n    guide.anchorSide = state.anchor.side\n    guide.sphereSides = {}\n    guide.sphereRoutes = {}\n    guide.routesReady = false\n    state.tetherPairs = {}\nend\n\nguide.sphereSides = guide.sphereSides or {}\nguide.sphereRoutes = guide.sphereRoutes or {}\nguide.routesReady = guide.routesReady or false\n\nlocal forwardZ = state.anchor.side == \"North\" and -1 or 1\nlocal spheres = TensorCore.entityList(\"contentid=9221\") or {}\nlocal sideSpheres = { West = {}, East = {} }\nlocal sphereByID = {}\nlocal sphereCount = 0\n\nfor _, sphere in pairs(spheres) do\n    if sphere and sphere.id and sphere.pos then\n        sphereByID[sphere.id] = sphere\n        sphereCount = sphereCount + 1\n\n        local side\n        if sphere.pos.x < 100 then\n            side = \"West\"\n        elseif sphere.pos.x > 100 then\n            side = \"East\"\n        end\n\n        if side then\n            local score = (sphere.pos.z - 100) * forwardZ\n            guide.sphereSides[sphere.id] = side\n            sideSpheres[side][#sideSpheres[side] + 1] = {\n                id = sphere.id,\n                score = score\n            }\n        end\n    end\nend\n\nif guide.routesReady == false and sphereCount >= 4 then\n    for side, entries in pairs(sideSpheres) do\n        local northernScore\n        for _, entry in pairs(entries) do\n            if northernScore == nil or entry.score > northernScore then\n                northernScore = entry.score\n            end\n        end\n\n        for _, entry in pairs(entries) do\n            if entry.score == northernScore then\n                guide.sphereRoutes[entry.id] = side == \"West\" and \"E\" or \"W\"\n            else\n                guide.sphereRoutes[entry.id] = side == \"West\" and \"NE\" or \"NW\"\n            end\n        end\n    end\n    guide.routesReady = true\nend\n\nlocal tetherPairs = state.tetherPairs or {}\nlocal party = TensorCore.getEntityGroupList(\"Party\") or {}\nlocal partyByID = {}\nfor _, member in pairs(party) do\n    if member and member.id then\n        partyByID[member.id] = member\n    end\nend\n\nlocal pairCount = 0\nfor _, pair in pairs(tetherPairs) do\n    if pair and pair.player and pair.sphere then\n        pairCount = pairCount + 1\n    end\nend\n\nif pairCount < 4 then\n    local currentTethers = Argus.getCurrentTethers() or {}\n    for sphereID, tethers in pairs(currentTethers) do\n        local sphere = sphereByID[sphereID]\n        if sphere and tethers then\n            for _, tether in pairs(tethers) do\n                if tether and tether.targetid then\n                    local player = partyByID[tether.targetid]\n                    if player then\n                        tetherPairs[player.id] = {\n                            player = player,\n                            sphere = sphere,\n                            playerID = player.id,\n                            sphereID = sphere.id\n                        }\n                    end\n                end\n            end\n        end\n    end\nend\nstate.tetherPairs = tetherPairs\n\nlocal drawer = TensorCore.getCachedDrawer(\n    0xFF00FFFF,\n    0xFF0088FF,\n    0xFF0000FF,\n    0xFFFFFFFF,\n    2\n)\nlocal flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n\nlocal function drawArrow(player, dot)\n    if player == nil or player.pos == nil or dot == nil then\n        return\n    end\n\n    local distance = TensorCore.getDistance2d(player.pos, dot)\n    local tipLength = math.max(2, 3 * math.min(1, distance / 15))\n    local baseLength = distance - tipLength\n    if baseLength > 1 then\n        drawer:addArrow(\n            player.pos.x,\n            player.pos.y,\n            player.pos.z,\n            TensorCore.getHeadingToTarget(player.pos, dot),\n            baseLength,\n            math.max(0.5, math.min(1, distance / 15)),\n            tipLength,\n            math.max(1.5, 3 * math.min(1, distance / 15)),\n            false,\n            flags\n        )\n    end\nend\n\nlocal localPlayer = TensorCore.mGetPlayer()\nlocal localPair = localPlayer and tetherPairs[localPlayer.id]\nif localPair and localPair.playerID and localPair.sphereID then\n    local livePlayer = partyByID[localPair.playerID]\n    local liveSphere = sphereByID[localPair.sphereID]\n\n    if livePlayer then\n        localPair.player = livePlayer\n    end\n    if liveSphere then\n        localPair.sphere = liveSphere\n    end\n\n    if localPair.player and localPair.sphere then\n        local route = guide.sphereRoutes[localPair.sphereID]\n        if route and Argus.isEntityVisible(localPair.sphere) then\n            drawArrow(localPair.player, state.dots[route])\n        end\n    end\nend\nself.used = true",
							name = "Draw Local Plasmasphere Tether Arrow",
							uuid = "663bae59-97e0-3634-8ea5-3ca0d86e2e92",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				loop = true,
				mechanicTime = 537.9,
				name = "Inception Northern Sphere Tether Arrows",
				timeRange = true,
				timelineIndex = 100,
				timerEndOffset = 40,
				timerStartOffset = 3,
				uuid = "584fee37-3eae-1179-81e7-062dddeb6b02",
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
							actionLua = "local state = data.inception\nif state == nil then\n    return\nend\n\nstate.tetherPairs = state.tetherPairs or {}\n\nlocal function rememberPair(playerID, sphereID)\n    if playerID == nil or sphereID == nil then\n        return\n    end\n\n    local player = TensorCore.mGetEntity(playerID)\n    local sphere = TensorCore.mGetEntity(sphereID)\n    if player ~= nil and sphere ~= nil then\n        state.tetherPairs[playerID] = {\n            player = player,\n            sphere = sphere,\n            playerID = playerID,\n            sphereID = sphereID\n        }\n    end\nend\n\nlocal sourceID = eventArgs.sourceEntityID\nlocal sourceContentID = eventArgs.sourceEntityContentID\nlocal newTargetID = eventArgs.newTargetID\nlocal newTargetContentID = eventArgs.newTargetContentID\nlocal oldTargetID = eventArgs.oldTargetID\nlocal oldTargetContentID = eventArgs.oldTargetContentID\n\nif sourceContentID == 9221 then\n    if newTargetID ~= nil and newTargetContentID == 0 then\n        rememberPair(newTargetID, sourceID)\n    elseif oldTargetID ~= nil and oldTargetContentID == 0 then\n        rememberPair(oldTargetID, sourceID)\n    end\nelseif sourceContentID == 0 then\n    if newTargetID ~= nil and newTargetContentID == 9221 then\n        rememberPair(sourceID, newTargetID)\n    elseif oldTargetID ~= nil and oldTargetContentID == 9221 then\n        rememberPair(sourceID, oldTargetID)\n    end\nend\n\nself.used = true",
							name = "Store Player Plasmasphere Pair",
							uuid = "2725e8ed-c2df-65f2-af0e-d0948655db78",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 15,
				mechanicTime = 537.9,
				name = "Inception Store Plasmasphere Tether Pairs",
				timeRange = true,
				timelineIndex = 100,
				timerEndOffset = 40,
				uuid = "e274d502-cc13-10e0-b116-aeef54f7836e",
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
							actionLua = "-- Edit these marker angles and distances at the top.\nlocal dot12Radians = math.pi * 0.20\nlocal dot34Radians = math.pi * 0.10\n\nlocal dot12Distance = 8.5\nlocal dot34Distance = 18.5\nlocal dotRadius = 0.5\n\nlocal state = data.inception\nif state == nil or state.anchor == nil then\n    return\nend\n\nlocal guide = state.puddleDebug or {}\nstate.puddleDebug = guide\n\nif guide.anchorX ~= state.anchor.x or guide.anchorY ~= state.anchor.y or guide.anchorZ ~= state.anchor.z or guide.anchorSide ~= state.anchor.side then\n    guide.anchorX = state.anchor.x\n    guide.anchorY = state.anchor.y\n    guide.anchorZ = state.anchor.z\n    guide.anchorSide = state.anchor.side\n    guide.ready = false\n    guide.untetheredPlayers = {}\n    state.tetherPairs = {}\nend\n\nlocal party = TensorCore.getEntityGroupList(\"Party\") or {}\nlocal partyByID = {}\nfor _, member in pairs(party) do\n    if member and member.id then\n        partyByID[member.id] = member\n    end\nend\n\nlocal tethered = {}\nlocal tetheredCount = 0\nlocal tetherPairs = state.tetherPairs or {}\nfor playerID, pair in pairs(tetherPairs) do\n    if pair and pair.playerID and not tethered[playerID] then\n        tethered[playerID] = true\n        tetheredCount = tetheredCount + 1\n    end\nend\n\nif tetheredCount < 4 then\n    local spheres = TensorCore.entityList(\"contentid=9221\") or {}\n    local sphereByID = {}\n    for _, sphere in pairs(spheres) do\n        if sphere and sphere.id then\n            sphereByID[sphere.id] = sphere\n        end\n    end\n\n    local currentTethers = Argus.getCurrentTethers() or {}\n    for sphereID, tethers in pairs(currentTethers) do\n        if sphereByID[sphereID] and tethers then\n            for _, tether in pairs(tethers) do\n                if tether and tether.targetid and partyByID[tether.targetid] and not tethered[tether.targetid] then\n                    tethered[tether.targetid] = true\n                    tetheredCount = tetheredCount + 1\n                end\n            end\n        end\n    end\nend\n\nif tetheredCount < 4 then\n    return\nend\n\nlocal untethered = {}\nfor _, member in pairs(party) do\n    if member and member.id and not tethered[member.id] then\n        untethered[#untethered + 1] = member.id\n    end\nend\n\nif #untethered < 4 then\n    return\nend\n\nguide.ready = true\nguide.untetheredPlayers = untethered\n\nlocal centerX = 100\nlocal centerZ = 100\nlocal centerY = state.anchor.y or 0\n\nlocal forwardZ = state.anchor.side == \"North\" and -1 or 1\nlocal southZ = -forwardZ\nlocal eastX = -forwardZ\n\nlocal function relativeDot(radians, distance)\n    return {\n        x = centerX + eastX * math.sin(radians) * distance,\n        y = centerY,\n        z = centerZ + southZ * math.cos(radians) * distance\n    }\nend\n\nlocal dots = {\n    relativeDot(-dot12Radians, dot12Distance),\n    relativeDot(dot12Radians, dot12Distance),\n    relativeDot(-dot34Radians, dot34Distance),\n    relativeDot(dot34Radians, dot34Distance)\n}\nguide.dots = dots\n\nlocal localPlayer = TensorCore.mGetPlayer()\nlocal localID = localPlayer and localPlayer.id\nlocal assignedDotIndex = nil\nlocal solver = state.puddleArrowSolver\nif localID and solver and solver.byPlayer then\n    assignedDotIndex = solver.byPlayer[localID]\nend\n\nlocal greenDrawer = TensorCore.getCachedDrawer(\n    0xFF00FF00,\n    0xFF00FF00,\n    0xFF00FF00,\n    0xFFFFFFFF,\n    2\n)\nlocal greyDrawer = TensorCore.getCachedDrawer(\n    0xFF808080,\n    0xFF808080,\n    0xFF808080,\n    0xFFFFFFFF,\n    2\n)\nlocal flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n\nfor dotIndex, dot in pairs(dots) do\n    local drawer = dotIndex == assignedDotIndex and greenDrawer or greyDrawer\n    drawer:addCircle(dot.x, dot.y, dot.z, dotRadius, false, flags)\nend\nself.used = true",
							name = "Draw Untethered Puddle Assignment Dots",
							uuid = "d599e63b-55e8-c429-8fea-020cffed42d5",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				loop = true,
				mechanicTime = 537.9,
				name = "Inception Untethered Puddle Debug Dots",
				timeRange = true,
				timelineIndex = 100,
				timerEndOffset = 20.299999237061,
				timerStartOffset = 3,
				uuid = "fa5a80da-a01d-0be8-8bf1-fbb8d8b9f4de",
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
							actionLua = "-- Edit these assignment settings at the top.\nlocal insideRadius = 3.0\nlocal holdSeconds = 0.25\n\nlocal state = data.inception\nif state == nil or state.anchor == nil or state.puddleDebug == nil then\n    return\nend\n\nlocal guide = state.puddleDebug\nif guide.ready ~= true or guide.dots == nil or guide.untetheredPlayers == nil then\n    return\nend\n\nlocal dots = guide.dots\nlocal solver = state.puddleArrowSolver or {}\nstate.puddleArrowSolver = solver\n\nif solver.anchorX ~= state.anchor.x or solver.anchorY ~= state.anchor.y or solver.anchorZ ~= state.anchor.z or solver.anchorSide ~= state.anchor.side then\n    solver.anchorX = state.anchor.x\n    solver.anchorY = state.anchor.y\n    solver.anchorZ = state.anchor.z\n    solver.anchorSide = state.anchor.side\n    solver.byPlayer = {}\n    solver.lockedByDot = {}\n    solver.insideSince = {}\nend\n\nsolver.byPlayer = solver.byPlayer or {}\nsolver.lockedByDot = solver.lockedByDot or {}\nsolver.insideSince = solver.insideSince or {}\n\nlocal party = TensorCore.getEntityGroupList(\"Party\") or {}\nlocal partyByID = {}\nfor _, member in pairs(party) do\n    if member and member.id then\n        partyByID[member.id] = member\n    end\nend\n\nlocal players = {}\nlocal active = {}\nfor _, playerID in pairs(guide.untetheredPlayers) do\n    if playerID and partyByID[playerID] then\n        active[playerID] = true\n        players[#players + 1] = playerID\n    end\nend\n\nif #players < 4 then\n    return\nend\n\nlocal rosterChanged = false\nfor playerID in pairs(solver.byPlayer) do\n    if not active[playerID] then\n        rosterChanged = true\n        break\n    end\nend\nif not rosterChanged then\n    for _, playerID in pairs(solver.lockedByDot) do\n        if not active[playerID] then\n            rosterChanged = true\n            break\n        end\n    end\nend\n\nif rosterChanged then\n    solver.byPlayer = {}\n    solver.lockedByDot = {}\n    solver.insideSince = {}\nend\n\nlocal byPlayer = solver.byPlayer\nlocal lockedByDot = solver.lockedByDot\nlocal insideSince = solver.insideSince\n\nlocal lockedByPlayer = {}\nfor dotIndex = 1, 4 do\n    local playerID = lockedByDot[dotIndex]\n    if playerID and active[playerID] then\n        lockedByPlayer[playerID] = dotIndex\n    else\n        lockedByDot[dotIndex] = nil\n    end\nend\n\nfor playerID, dotIndex in pairs(byPlayer) do\n    if not active[playerID]\n        or dots[dotIndex] == nil\n        or (lockedByPlayer[playerID] and lockedByPlayer[playerID] ~= dotIndex)\n        or (lockedByDot[dotIndex] and lockedByDot[dotIndex] ~= playerID) then\n        byPlayer[playerID] = nil\n    end\nend\n\nfor dotIndex = 1, 4 do\n    local playerID = lockedByDot[dotIndex]\n    if playerID then\n        for otherID, otherDotIndex in pairs(byPlayer) do\n            if otherID ~= playerID and otherDotIndex == dotIndex then\n                byPlayer[otherID] = nil\n            end\n        end\n        byPlayer[playerID] = dotIndex\n    end\nend\n\nlocal byDot = {}\nfor dotIndex = 1, 4 do\n    local playerID = lockedByDot[dotIndex]\n    if playerID then\n        byDot[dotIndex] = playerID\n    end\nend\nfor playerID, dotIndex in pairs(byPlayer) do\n    if byDot[dotIndex] == nil then\n        byDot[dotIndex] = playerID\n    elseif byDot[dotIndex] ~= playerID and lockedByDot[dotIndex] ~= playerID then\n        byPlayer[playerID] = nil\n    end\nend\n\nlocal now = os.clock()\nfor _, playerID in pairs(players) do\n    local player = partyByID[playerID]\n    local since = insideSince[playerID] or {}\n    insideSince[playerID] = since\n\n    if player.pos then\n        for dotIndex = 1, 4 do\n            local dot = dots[dotIndex]\n            if dot and TensorCore.getDistance2d(player.pos, dot) <= insideRadius then\n                if since[dotIndex] == nil then\n                    since[dotIndex] = now\n                end\n            else\n                since[dotIndex] = nil\n            end\n        end\n    else\n        for dotIndex = 1, 4 do\n            since[dotIndex] = nil\n        end\n    end\nend\n\n-- A lock is valid only while its player remains inside that dot.\n-- Leaving releases the dot and lets the solver assign both sides again.\nfor dotIndex = 1, 4 do\n    local playerID = lockedByDot[dotIndex]\n    local player = playerID and partyByID[playerID]\n    local dot = dots[dotIndex]\n\n    if playerID and (player == nil or player.pos == nil or dot == nil or TensorCore.getDistance2d(player.pos, dot) > insideRadius) then\n        lockedByDot[dotIndex] = nil\n        lockedByPlayer[playerID] = nil\n        if byPlayer[playerID] == dotIndex then\n            byPlayer[playerID] = nil\n        end\n        byDot[dotIndex] = nil\n    end\nend\n\nfor dotIndex = 1, 4 do\n    if lockedByDot[dotIndex] == nil then\n        local candidateID = nil\n        local candidateSince = nil\n\n        for _, playerID in pairs(players) do\n            if lockedByPlayer[playerID] == nil then\n                local since = insideSince[playerID] and insideSince[playerID][dotIndex]\n                if since and now - since >= holdSeconds then\n                    if candidateSince == nil or since < candidateSince then\n                        candidateID = playerID\n                        candidateSince = since\n                    end\n                end\n            end\n        end\n\n        if candidateID then\n            local oldDotIndex = byPlayer[candidateID]\n            if oldDotIndex and oldDotIndex ~= dotIndex then\n                byDot[oldDotIndex] = nil\n            end\n\n            local previousID = byDot[dotIndex]\n            if previousID and previousID ~= candidateID then\n                byPlayer[previousID] = nil\n            end\n\n            byPlayer[candidateID] = dotIndex\n            byDot[dotIndex] = candidateID\n            lockedByDot[dotIndex] = candidateID\n            lockedByPlayer[candidateID] = dotIndex\n        end\n    end\nend\n\nfor _, playerID in pairs(players) do\n    if byPlayer[playerID] == nil then\n        local bestDotIndex = nil\n        local bestDistance = nil\n        local player = partyByID[playerID]\n\n        if player and player.pos then\n            for dotIndex = 1, 4 do\n                if byDot[dotIndex] == nil and dots[dotIndex] then\n                    local distance = TensorCore.getDistance2d(player.pos, dots[dotIndex])\n                    if bestDistance == nil or distance < bestDistance then\n                        bestDistance = distance\n                        bestDotIndex = dotIndex\n                    end\n                end\n            end\n        end\n\n        if bestDotIndex then\n            byPlayer[playerID] = bestDotIndex\n            byDot[bestDotIndex] = playerID\n        end\n    end\nend\n\nlocal drawer = TensorCore.getCachedDrawer(\n    0xFF00FFFF,\n    0xFF0088FF,\n    0xFF0000FF,\n    0xFFFFFFFF,\n    2\n)\nlocal flags = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n\nlocal localPlayer = TensorCore.mGetPlayer()\nlocal localID = localPlayer and localPlayer.id\nif localID and active[localID] then\n    local player = partyByID[localID]\n    local dotIndex = byPlayer[localID]\n    local dot = dotIndex and dots[dotIndex]\n\n    if player and player.pos and dot then\n        local distance = TensorCore.getDistance2d(player.pos, dot)\n        if distance > 0.75 then\n            -- Scale every dimension from the effective render distance so the\n            -- head and shaft keep the same proportions at any range.\n            local renderDistance = math.max(distance, 0.75)\n            local tipLength = math.min(1.5, math.max(0.25, renderDistance * 0.35))\n            local baseLength = math.max(0.25, renderDistance - tipLength)\n            local widthScale = math.min(1, math.max(0.2, renderDistance / 10))\n            local baseWidth = math.max(0.2, 0.75 * widthScale)\n            local tipWidth = math.max(0.45, 1.8 * widthScale)\n\n            drawer:addArrow(\n                player.pos.x,\n                player.pos.y,\n                player.pos.z,\n                TensorCore.getHeadingToTarget(player.pos, dot),\n                baseLength,\n                baseWidth,\n                tipLength,\n                tipWidth,\n                false,\n                flags\n            )\n        end\n    end\nend\nself.used = true",
							name = "Draw Local Untethered Assignment Arrow",
							uuid = "5c7e298d-8941-0f6f-b041-74bc46136142",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				loop = true,
				mechanicTime = 537.9,
				name = "Inception Untethered Puddle Assignment Arrows",
				timeRange = true,
				timelineIndex = 100,
				timerEndOffset = 20.299999237061,
				timerStartOffset = 3,
				uuid = "c0817dbb-10ae-95ff-ae78-0cbdf8f92656",
				version = 2,
			},
		},
	},
	[104] = 
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
							actionLua = "local entities = TensorCore.entityList(\"contentid=9216\")\nlocal bj\nlocal bestMaxHP = -1\n\nfor _, candidate in pairs(entities or {}) do\n    if candidate and candidate.id and candidate.pos then\n        local maxHP = candidate.hp and candidate.hp.max or 0\n        if bj == nil or maxHP > bestMaxHP then\n            bj = candidate\n            bestMaxHP = maxHP\n        end\n    end\nend\n\nif bj == nil or bj.pos == nil then\n    return\nend\n\nlocal closest\nlocal closestDistance = math.huge\nfor _, member in pairs(TensorCore.getEntityGroupList(\"Party\") or {}) do\n    if member and member.id and member.pos then\n        local dx = member.pos.x - bj.pos.x\n        local dz = member.pos.z - bj.pos.z\n        local distance = (dx * dx) + (dz * dz)\n        if closest == nil or distance < closestDistance then\n            closest = member\n            closestDistance = distance\n        end\n    end\nend\n\nlocal coneDrawer = TensorCore.getMoogleDrawer()\nif coneDrawer and closest and closest.pos then\n    coneDrawer:addCone(\n        bj.pos.x,\n        bj.pos.y,\n        bj.pos.z,\n        31,\n        math.pi / 2,\n        TensorCore.getHeadingToTarget(bj.pos, closest.pos),\n        false\n    )\nend",
							name = "Flarethrower bait",
							uuid = "e4cc0559-d8d3-93c9-8e50-38306b8d6ac8",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				loop = true,
				mechanicTime = 569.5,
				name = "[Draw] Flarethrower",
				timeRange = true,
				timelineIndex = 104,
				timerEndOffset = 0.30000001192093,
				timerStartOffset = -3,
				uuid = "c9899f0d-a2fa-3afa-9507-c95c64b4fa32",
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
							actionLua = "local roster = AnyoneCore.Roster\nlocal mySlot = roster and roster.mySlot()\nlocal currentTime = TensorReactions_CurrentTimer\n\nlocal calls = {\n    T1 = { message = \"Bait 2nd Flarethrower\", startTime = 565.5, endTime = 572.5 },\n    T2 = { message = \"Bait 1st Flarethrower\", startTime = 565.5, endTime = 570.7 },\n    other = { message = \"Bait 3rd Flarethrower\", startTime = 565.5, endTime = 574.6 }\n}\n\nlocal bait = mySlot and (calls[mySlot] or calls.other)\nif not bait or currentTime < bait.startTime or currentTime >= bait.endTime then\n    return\nend\n\nlocal timer = math.max(0, bait.endTime - currentTime)\nAnyoneCore.Shotcall(bait.message, true, timer, true)\nself.used = true",
							endIfUsed = true,
							name = "Shotcall Flarethrower role bait",
							uuid = "c7c979c7-d19e-d192-bc6e-06d5fbbdef96",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 569.5,
				name = "[Call] Flarethrower Role Baits",
				timeRange = true,
				timelineIndex = 104,
				timerEndOffset = 5.0999999046326,
				timerStartOffset = -4,
				uuid = "864fc2b3-e79d-4f10-bafa-eb72032d35cb",
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
							actionLua = "local player = TensorCore.mGetPlayer()\nlocal roster = AnyoneCore.Roster\n--local mySlot = roster and roster.mySlot()\nlocal mySlot = \"H1\"\nlocal sourcePos = player and player.pos\n\nlocal positions = {\n    -- Relative to BJ's heading toward the arena center: +pi/2 = west, 0 = south, -pi/2 = east.\n    T1 = { radian = 0, distance = 6, startTime = 569, endTime = 572.5 },\n    T2 = { radian = -math.pi / 3.5, distance = 8, startTime = 561.5, endTime = 570.7 },\n    H1 = { radian = math.pi / 3.5, distance = 8, startTime = 571.1, endTime = 574.6 },\n    H2 = { radian = math.pi / 3.5, distance = 8, startTime = 564.5, endTime = 573.8 },\n    M1 = { radian = math.pi / 3.5, distance = 8, startTime = 564.5, endTime = 573.8 },\n    M2 = { radian = math.pi / 3.5, distance = 8, startTime = 564.5, endTime = 573.8 },\n    R1 = { radian = math.pi / 3.5, distance = 8, startTime = 564.5, endTime = 573.8 },\n    R2 = { radian = math.pi / 3.5, distance = 8, startTime = 564.5, endTime = 573.8 },\n}\n\ndata.tea_flarethrower1_role_baits = data.tea_flarethrower1_role_baits or {}\nlocal state = data.tea_flarethrower1_role_baits\nlocal bait = mySlot and positions[mySlot]\nif not sourcePos or not bait then\n    return\nend\n\nif TensorReactions_CurrentTimer < bait.startTime or TensorReactions_CurrentTimer >= bait.endTime then\n    return\nend\n\nlocal bj\nif state.bjID then\n    local cached = TensorCore.mGetEntity(state.bjID)\n    if cached and cached.contentid == 9216 and cached.pos and Argus.isEntityVisible(cached) then\n        bj = cached\n    else\n        state.bjID = nil\n    end\nend\n\nif not bj then\n    for _, candidate in pairs(TensorCore.entityList(\"contentid=9216\") or {}) do\n        if candidate and candidate.id and candidate.pos and Argus.isEntityVisible(candidate) then\n            bj = candidate\n            state.bjID = candidate.id\n            break\n        end\n    end\nend\n\nif not bj or not bj.pos then\n    return\nend\n\nlocal arenaCenter = { x = 100, y = 0, z = 100 }\nlocal baseHeading = TensorCore.getHeadingToTarget(bj.pos, arenaCenter)\nlocal targetHeading = TensorCore.convertHeading(baseHeading + bait.radian)\nlocal targetPos = TensorCore.getPosInDirection(bj.pos, targetHeading, bait.distance)\nif not targetPos then\n    return\nend\n\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth = math.max(0.5, 1 * scale)\nlocal tipWidth = math.max(1.5, 3 * scale)\nlocal tipLength = math.max(2, 3 * scale)\nlocal baseLength = totalDistance - tipLength\n\nif baseLength > 1 then\n    local arrowDrawer = TensorCore.getCachedDrawer(\n        0xFF00FFFF,\n        0xFF0088FF,\n        0xFF0000FF,\n        0xFFFFFFFF,\n        2\n    )\n    arrowDrawer:addArrow(\n        sourcePos.x,\n        sourcePos.y,\n        sourcePos.z,\n        heading,\n        baseLength,\n        baseWidth,\n        tipLength,\n        tipWidth,\n        false,\n        Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nlocal blueDrawer = TensorCore.getCachedDrawer(nil, nil, 0xFFFF0000, 0xFFFF0000, 2)\nblueDrawer:addCircle(targetPos.x, targetPos.y, targetPos.z, 0.4, false)\n\nArgus.addCircleFilled(\n    targetPos.x,\n    targetPos.y,\n    targetPos.z,\n    0.15,\n    32,\n    0xFF00FF00,\n    nil,\n    0,\n    0,\n    0,\n    0,\n    false\n)\n\nself.used = true",
							endIfUsed = true,
							name = "Draw Flarethrower 1 role bait",
							uuid = "687b2dac-2d61-592b-88f7-34ba7a397844",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				loop = true,
				mechanicTime = 569.5,
				name = "[Draw] Flarethrower 1 Role Baits",
				timeRange = true,
				timelineIndex = 104,
				timerEndOffset = 5,
				timerStartOffset = -8,
				uuid = "331c4337-d1eb-81a1-9ff7-c6afe4303bd0",
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
							actionLua = "local entities = TensorCore.entityList(\"contentid=9216\")\nlocal bj\nlocal bestMaxHP = -1\n\nfor _, candidate in pairs(entities or {}) do\n    if candidate and candidate.id and candidate.pos then\n        local maxHP = candidate.hp and candidate.hp.max or 0\n        if bj == nil or maxHP > bestMaxHP then\n            bj = candidate\n            bestMaxHP = maxHP\n        end\n    end\nend\n\nif bj == nil or bj.pos == nil then\n    return\nend\n\nlocal closest\nlocal closestDistance = math.huge\nfor _, member in pairs(TensorCore.getEntityGroupList(\"Party\") or {}) do\n    if member and member.id and member.pos then\n        local dx = member.pos.x - bj.pos.x\n        local dz = member.pos.z - bj.pos.z\n        local distance = (dx * dx) + (dz * dz)\n        if closest == nil or distance < closestDistance then\n            closest = member\n            closestDistance = distance\n        end\n    end\nend\n\nlocal coneDrawer = TensorCore.getMoogleDrawer()\nif coneDrawer and closest and closest.pos then\n    coneDrawer:addCone(\n        bj.pos.x,\n        bj.pos.y,\n        bj.pos.z,\n        31,\n        math.pi / 2,\n        TensorCore.getHeadingToTarget(bj.pos, closest.pos),\n        false\n    )\nend",
							name = "Flarethrower bait",
							uuid = "b414cc2a-3b61-4a8e-a09f-5aa4bf1ac802",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				loop = true,
				mechanicTime = 571.7,
				name = "[Draw] Flarethrower",
				timeRange = true,
				timelineIndex = 105,
				timerEndOffset = 0.30000001192093,
				timerStartOffset = -1,
				uuid = "df1aa3ef-543c-fa4b-b7d9-b53c985cc45a",
				version = 2,
			},
		},
	},
	[106] = 
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
							actionLua = "local entities = TensorCore.entityList(\"contentid=9216\")\nlocal bj\nlocal bestMaxHP = -1\n\nfor _, candidate in pairs(entities or {}) do\n    if candidate and candidate.id and candidate.pos then\n        local maxHP = candidate.hp and candidate.hp.max or 0\n        if bj == nil or maxHP > bestMaxHP then\n            bj = candidate\n            bestMaxHP = maxHP\n        end\n    end\nend\n\nif bj == nil or bj.pos == nil then\n    return\nend\n\nlocal closest\nlocal closestDistance = math.huge\nfor _, member in pairs(TensorCore.getEntityGroupList(\"Party\") or {}) do\n    if member and member.id and member.pos then\n        local dx = member.pos.x - bj.pos.x\n        local dz = member.pos.z - bj.pos.z\n        local distance = (dx * dx) + (dz * dz)\n        if closest == nil or distance < closestDistance then\n            closest = member\n            closestDistance = distance\n        end\n    end\nend\n\nlocal coneDrawer = TensorCore.getMoogleDrawer()\nif coneDrawer and closest and closest.pos then\n    coneDrawer:addCone(\n        bj.pos.x,\n        bj.pos.y,\n        bj.pos.z,\n        31,\n        math.pi / 2,\n        TensorCore.getHeadingToTarget(bj.pos, closest.pos),\n        false\n    )\nend",
							name = "Flarethrower bait",
							uuid = "b12f5877-ab66-67d8-bcdf-8c9bd5bccaf8",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				loop = true,
				mechanicTime = 573.8,
				name = "[Draw] Flarethrower",
				timeRange = true,
				timelineIndex = 106,
				timerEndOffset = 0.30000001192093,
				timerStartOffset = -1,
				uuid = "62a6c86a-1745-d416-87df-3463a2f46362",
				version = 2,
			},
		},
	},
	[108] = 
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
							actionLua = "local hearts = TensorCore.getEntityGroupList(\n    \"ContentID\",\n    { contentid = 9223, noAliveCheck = true }\n)\nlocal heart\n\nif hearts then\n    for _, candidate in pairs(hearts) do\n        if candidate and candidate.pos and candidate.pos.h then\n            heart = candidate\n            break\n        end\n    end\nend\n\nif not heart or not heart.pos then\n    return\nend\n\ndata.trueHeartRestrainingOrderDpsID = nil\nfor _, member in pairs(TensorCore.getEntityGroupList(\"Party\") or {}) do\n    if member and member.id and TensorCore.isDPS(member) and TensorCore.hasBuff(member, 1124) then\n        data.trueHeartRestrainingOrderDpsID = member.id\n        break\n    end\nend\n\nlocal center = { x = 100, y = 0, z = 100 }\nlocal drawer = TensorCore.getMoogleDrawer()\n\nif not drawer then\n    return\nend\n\nlocal timeout = 6100\n\n-- Predict where the heart's heading ray intersects the 21-yalm circle.\nlocal moveHeading = heart.pos.h\nlocal dirX = math.sin(moveHeading)\nlocal dirZ = math.cos(moveHeading)\nlocal radius = 21\nlocal offsetX = heart.pos.x - center.x\nlocal offsetZ = heart.pos.z - center.z\nlocal b = offsetX * dirX + offsetZ * dirZ\nlocal c = offsetX * offsetX + offsetZ * offsetZ - radius * radius\nlocal discriminant = b * b - c\n\nif discriminant >= 0 then\n    local distanceToCircle = -b + math.sqrt(discriminant)\n\n    if distanceToCircle > 0 then\n        local predicted = {\n            x = heart.pos.x + dirX * distanceToCircle,\n            y = heart.pos.y,\n            z = heart.pos.z + dirZ * distanceToCircle\n        }\n        data.trueHeartNewNorth = predicted\n\n        local predictedHeading = TensorCore.getHeadingToTarget(predicted, center)\n\n        drawer:addTimedCross(\n            timeout,\n            predicted.x,\n            predicted.y,\n            predicted.z,\n            100,\n            16,\n            predictedHeading,\n            0,\n            false,\n            false\n        )\n    end\nend\n\nself.used = true",
							endIfUsed = true,
							name = "Draw predicted True Heart cross",
							uuid = "84c00ae0-2e7a-c11f-a16c-a9bfdafbfc44",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 589.1,
				name = "[Draw] Sacrament",
				timeRange = true,
				timelineIndex = 108,
				timerStartOffset = -6.0999999046326,
				uuid = "fddef5d7-89bd-9a16-b69f-e8964f29682a",
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
							actionLua = "local roster = AnyoneCore.Roster\nlocal player = TensorCore.mGetPlayer()\nlocal mySlot = roster and roster.mySlot()\nlocal sourcePos = player and player.pos\nlocal newNorth = data.trueHeartNewNorth\n\ndata.trueHeartSentencePositions = data.trueHeartSentencePositions or {\n    center = { x = 100, y = 0, z = 100 },\n    positions = {\n        -- Relative to trueHeartNewNorth's inward heading: +pi/2 is east, -pi/2 is west.\n        east = { radian = math.pi / 4.275, distance = 27.1 },\n        west = { radian = -math.pi / 4.275, distance = 27.1 }\n    }\n}\n\nlocal state = data.trueHeartSentencePositions\nlocal position\n\nif mySlot == \"T1\" or mySlot == \"T2\" or (player and TensorCore.hasBuff(player, 1122)) then\n    position = state.positions.east\nelse\n    position = state.positions.west\nend\n\nif sourcePos and newNorth and position then\n    local headingToCenter = TensorCore.getHeadingToTarget(newNorth, state.center)\n    local targetHeading = TensorCore.convertHeading(headingToCenter + position.radian)\n    local targetPos = TensorCore.getPosInDirection(newNorth, targetHeading, position.distance)\n\n    if targetPos then\n        local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n        local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n        local scale = math.min(1, totalDistance / 15)\n        local baseWidth = math.max(0.5, 1 * scale)\n        local tipWidth = math.max(1.5, 3 * scale)\n        local tipLength = math.max(2, 3 * scale)\n        local baseLength = totalDistance - tipLength\n\n        if baseLength > 1 then\n            local arrowDrawer = TensorCore.getCachedDrawer(\n                0xFF00FFFF,\n                0xFF0088FF,\n                0xFF0000FF,\n                0xFFFFFFFF,\n                2\n            )\n            arrowDrawer:addArrow(\n                sourcePos.x,\n                sourcePos.y,\n                sourcePos.z,\n                heading,\n                baseLength,\n                baseWidth,\n                tipLength,\n                tipWidth,\n                false,\n                Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n            )\n        end\n\n        local blueDrawer = TensorCore.getCachedDrawer(nil, nil, 0xFFFF0000, 0xFFFF0000, 2)\n        blueDrawer:addCircle(\n            targetPos.x,\n            targetPos.y,\n            targetPos.z,\n            0.4,\n            false,\n            Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n        )\n\n        Argus.addCircleFilled(\n            targetPos.x,\n            targetPos.y,\n            targetPos.z,\n            0.15,\n            32,\n            0xFF00FF00,\n            nil,\n            0,\n            0,\n            0,\n            0,\n            false,\n            Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n        )\n    end\nend\n\nself.used = true",
							endIfUsed = true,
							name = "Draw True Heart Sentence position",
							uuid = "3e779cff-7e43-90c5-be5e-e33e521c1b2d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				loop = true,
				mechanicTime = 589.1,
				name = "[Draw] Sacrament Arrows",
				timeRange = true,
				timelineIndex = 108,
				timerEndOffset = -0.20000000298023,
				timerStartOffset = -6.0999999046326,
				uuid = "d042f3a5-9caa-ee28-9a02-323f2277eedf",
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
							actionLua = "local roster = AnyoneCore.Roster\nlocal player = TensorCore.mGetPlayer()\nlocal mySlot = roster and roster.mySlot\nlocal sourcePos = player and player.pos\nlocal restrainingOrderDpsID = data.trueHeartRestrainingOrderDpsID\n\ndata.trueHeartSwordPositions = data.trueHeartSwordPositions or {\n    center = { x = 100, y = 0, z = 100 },\n    positions = {\n        -- Absolute arena positions, relative to the arena center.\n        H1 = { radian = math.pi, distance = 3 }, -- True north.\n        H2 = { radian = 0, distance = 3 }, -- True south.\n        restrainingOrderDps = { radian = -math.pi / 2, distance = 3 }, -- True west.\n        T2 = { radian = math.pi / 2, distance = 18.25 } -- True east.\n    }\n}\n\nlocal state = data.trueHeartSwordPositions\nlocal position\n\nif mySlot == \"H1\" then\n    position = state.positions.H1\nelseif mySlot == \"H2\" then\n    position = state.positions.H2\nelseif mySlot == \"T2\" then\n    position = state.positions.T2\nelseif player and player.id == restrainingOrderDpsID then\n    position = state.positions.restrainingOrderDps\nend\n\nlocal function drawPosition(targetPos)\n    local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n    local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n    local scale = math.min(1, totalDistance / 15)\n    local baseWidth = math.max(0.5, 1 * scale)\n    local tipWidth = math.max(1.5, 3 * scale)\n    local tipLength = math.max(2, 3 * scale)\n    local baseLength = totalDistance - tipLength\n\n    if baseLength > 1 then\n        local arrowDrawer = TensorCore.getCachedDrawer(\n            0xFF00FFFF,\n            0xFF0088FF,\n            0xFF0000FF,\n            0xFFFFFFFF,\n            2\n        )\n        arrowDrawer:addArrow(\n            sourcePos.x,\n            sourcePos.y,\n            sourcePos.z,\n            heading,\n            baseLength,\n            baseWidth,\n            tipLength,\n            tipWidth,\n            false,\n            Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n        )\n    end\n\n    local blueDrawer = TensorCore.getCachedDrawer(nil, nil, 0xFFFF0000, 0xFFFF0000, 2)\n    blueDrawer:addCircle(\n        targetPos.x,\n        targetPos.y,\n        targetPos.z,\n        0.4,\n        false,\n        Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\n\n    Argus.addCircleFilled(\n        targetPos.x,\n        targetPos.y,\n        targetPos.z,\n        0.15,\n        32,\n        0xFF00FF00,\n        nil,\n        0,\n        0,\n        0,\n        0,\n        false,\n        Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nlocal targetPos\n\nif sourcePos and position then\n    targetPos = TensorCore.getPosInDirection(\n        state.center,\n        position.radian,\n        position.distance\n    )\nelseif sourcePos and not position then\n    local markerX, markerY, markerZ, markerActive = Argus.getWaymarkInfo(5)\n    if markerActive and markerX and markerY and markerZ then\n        targetPos = {\n            x = markerX,\n            y = markerY,\n            z = markerZ\n        }\n    end\nend\n\nif sourcePos and targetPos then\n    drawPosition(targetPos)\nend\n\nself.used = true",
							endIfUsed = true,
							name = "Draw True Heart Alpha Sword and Super Jump position",
							uuid = "4cea7230-0ef1-732e-b85a-c3d292e016a7",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				loop = true,
				mechanicTime = 589.1,
				name = "[Draw] Alpha Sword + Super Jump Arrows",
				timeRange = true,
				timelineIndex = 108,
				timerEndOffset = 10.60000038147,
				timerStartOffset = -0.20000000298023,
				uuid = "e9266f07-c11e-d4a4-8b39-e392714753a5",
				version = 2,
			},
		},
	},
	[110] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P3 - Alexander Prime",
				uuid = "d344b66c-80b9-07c2-ae2a-1c58805c0475",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "P3 - Alexander Prime",
				name = "Temporal Stasis",
				uuid = "f07f53ec-9307-8cda-8feb-e1f3797a11c0",
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
							actionLua = "local function findEntity(contentID, cacheKey)\n    local cachedID = data[cacheKey]\n    if cachedID then\n        local cached = EntityList:Get(cachedID)\n        if cached and cached.contentid == contentID and Argus.isEntityVisible(cached) then\n            return cached\n        end\n    end\n\n    local direct = TensorCore.getEntityByGroup(\"ContentID\", { contentid = contentID }, false)\n    if direct and direct.id and Argus.isEntityVisible(direct) then\n        data[cacheKey] = direct.id\n        return direct\n    end\n\n    for _, candidate in pairs(EntityList(\"\") or {}) do\n        if candidate and candidate.id and candidate.contentid == contentID and Argus.isEntityVisible(candidate) then\n            data[cacheKey] = candidate.id\n            return candidate\n        end\n    end\nend\n\nlocal cruiseChaser = findEntity(9218, \"teaTemporalBaitCC\")\nlocal drawer = TensorCore.getCachedDrawer(\n    0xFFFF0000,\n    0xFFFF0000,\n    0xFFFF0000,\n    0xFFFF0000,\n    2\n)\nif cruiseChaser and cruiseChaser.pos and drawer then\n    local first, second, third\n    local firstDistance, secondDistance, thirdDistance = math.huge, math.huge, math.huge\n    for _, member in pairs(TensorCore.getEntityGroupList(\"Party\") or {}) do\n        if member and member.id and member.pos then\n            local dx = member.pos.x - cruiseChaser.pos.x\n            local dz = member.pos.z - cruiseChaser.pos.z\n            local distance = (dx * dx) + (dz * dz)\n            if distance < firstDistance then\n                third, thirdDistance = second, secondDistance\n                second, secondDistance = first, firstDistance\n                first, firstDistance = member, distance\n            elseif distance < secondDistance then\n                third, thirdDistance = second, secondDistance\n                second, secondDistance = member, distance\n            elseif distance < thirdDistance then\n                third, thirdDistance = member, distance\n            end\n        end\n    end\n    if first and first.pos then\n        drawer:addCone(cruiseChaser.pos.x, cruiseChaser.pos.y, cruiseChaser.pos.z, 25, math.pi / 2, TensorCore.getHeadingToTarget(cruiseChaser.pos, first.pos), false)\n    end\n    if second and second.pos then\n        drawer:addCone(cruiseChaser.pos.x, cruiseChaser.pos.y, cruiseChaser.pos.z, 25, math.pi / 2, TensorCore.getHeadingToTarget(cruiseChaser.pos, second.pos), false)\n    end\n    if third and third.pos then\n        drawer:addCone(cruiseChaser.pos.x, cruiseChaser.pos.y, cruiseChaser.pos.z, 25, math.pi / 2, TensorCore.getHeadingToTarget(cruiseChaser.pos, third.pos), false)\n    end\nend\nself.used = true\n",
							endIfUsed = true,
							name = "Draw three closest Alpha Sword cones",
							uuid = "34d3c0a2-2331-440d-b0f0-bdb81ee46817",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P3 - Alexander Prime/Temporal Stasis",
				eventType = 12,
				loop = true,
				mechanicTime = 595.3,
				name = "P3 - Temporal Stasis - Cruise Chaser Baits",
				timeRange = true,
				timelineIndex = 110,
				timerEndOffset = 3,
				timerStartOffset = -2,
				uuid = "6e667f0a-655b-5238-9405-d00337bf8a54",
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
							actionLua = "local bruteJustice\nlocal bruteJusticeList = TensorCore.entityList(\"contentid=9216\")\n\nif bruteJusticeList then\n    for _, entity in pairs(bruteJusticeList) do\n        if entity and entity.id and entity.pos then\n            if not bruteJustice or Argus.isEntityVisible(entity) then\n                bruteJustice = entity\n            end\n\n            if Argus.isEntityVisible(entity) then\n                break\n            end\n        end\n    end\nend\n\nlocal furthestPlayer\n\nif bruteJustice and bruteJustice.pos then\n    local furthestDistanceSquared = -1\n    local party = TensorCore.getEntityGroupList(\"Party\")\n\n    if party then\n        for _, member in pairs(party) do\n            if member and member.pos then\n                local dx = member.pos.x - bruteJustice.pos.x\n                local dz = member.pos.z - bruteJustice.pos.z\n                local distanceSquared = dx * dx + dz * dz\n\n                if distanceSquared > furthestDistanceSquared then\n                    furthestDistanceSquared = distanceSquared\n                    furthestPlayer = member\n                end\n            end\n        end\n    end\nend\n\nif furthestPlayer and furthestPlayer.id then\n    local redDrawer = TensorCore.getCachedDrawer(\n        nil,\n        nil,\n        0xFF0000FF,\n        0xFF0000FF,\n        2\n    )\n    redDrawer:addCircle(\n        furthestPlayer.pos.x,\n        furthestPlayer.pos.y,\n        furthestPlayer.pos.z,\n        10,\n        false\n    )\n    self.used = true\nend",
							endIfUsed = true,
							name = "Draw Super Jump Furthest Player",
							uuid = "4474d360-b9c6-542d-939f-d76a87c4d2ca",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				loop = true,
				mechanicTime = 598.3,
				name = "[Draw] Super Jump Furthest Player",
				timeRange = true,
				timelineIndex = 113,
				timerStartOffset = -5,
				uuid = "bcd86399-f24e-3beb-ae74-b77d6fa78c4f",
				version = 2,
			},
		},
	},
	[116] = 
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
							actionLua = "local alexanders = TensorCore.entityList(\"contentid=9220\")\nlocal mainTanks = TensorCore.getEntityGroupList(\"Main Tank\")\nlocal drawer = TensorCore.getMoogleDrawer()\n\nlocal alexander = nil\nif alexanders then\n    for _, entity in pairs(alexanders) do\n        if entity and entity.id and Argus.isEntityVisible(entity) then\n            alexander = entity\n            break\n        end\n    end\nend\n\nlocal mainTank = nil\nif mainTanks then\n    for _, entity in pairs(mainTanks) do\n        if entity and entity.id then\n            mainTank = entity\n            break\n        end\n    end\nend\n\nif alexander and mainTank and drawer then\n    drawer:addTimedConeOnEnt(2100, alexander.id, 17, math.pi / 2, mainTank.id, 0, false, false)\nend\n\nself.used = true",
							endIfUsed = true,
							name = "Pre-draw Divine Spear 1 cone",
							uuid = "31ef87ec-7595-0c7f-afba-4694feb2950d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 616,
				name = "P3 - Divine Spear 1",
				timeRange = true,
				timelineIndex = 116,
				timerStartOffset = -2.0999999046326,
				uuid = "d75315e6-404d-aece-bf19-13d88228f405",
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
							actionLua = "local alexanders = TensorCore.entityList(\"contentid=9220\")\nlocal mainTanks = TensorCore.getEntityGroupList(\"Main Tank\")\nlocal drawer = TensorCore.getMoogleDrawer()\n\nlocal alexander = nil\nif alexanders then\n    for _, entity in pairs(alexanders) do\n        if entity and entity.id and Argus.isEntityVisible(entity) then\n            alexander = entity\n            break\n        end\n    end\nend\n\nlocal mainTank = nil\nif mainTanks then\n    for _, entity in pairs(mainTanks) do\n        if entity and entity.id then\n            mainTank = entity\n            break\n        end\n    end\nend\n\nif alexander and mainTank and drawer then\n    drawer:addTimedConeOnEnt(2100, alexander.id, 17, math.pi / 2, mainTank.id, 0, false, false)\nend\n\nself.used = true",
							endIfUsed = true,
							name = "Pre-draw Divine Spear 2 cone",
							uuid = "016e6424-cc20-943a-98d5-a350e7ecf878",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 618.1,
				name = "P3 - Divine Spear 2",
				timeRange = true,
				timelineIndex = 117,
				timerStartOffset = -2.0999999046326,
				uuid = "b25922af-8b74-3b45-9d4f-dadf45d29a5f",
				version = 2,
			},
		},
	},
	[118] = 
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
							actionLua = "local alexanders = TensorCore.entityList(\"contentid=9220\")\nlocal mainTanks = TensorCore.getEntityGroupList(\"Main Tank\")\nlocal drawer = TensorCore.getMoogleDrawer()\n\nlocal alexander = nil\nif alexanders then\n    for _, entity in pairs(alexanders) do\n        if entity and entity.id and Argus.isEntityVisible(entity) then\n            alexander = entity\n            break\n        end\n    end\nend\n\nlocal mainTank = nil\nif mainTanks then\n    for _, entity in pairs(mainTanks) do\n        if entity and entity.id then\n            mainTank = entity\n            break\n        end\n    end\nend\n\nif alexander and mainTank and drawer then\n    drawer:addTimedConeOnEnt(2100, alexander.id, 17, math.pi / 2, mainTank.id, 0, false, false)\nend\n\nself.used = true",
							endIfUsed = true,
							name = "Pre-draw Divine Spear 3 cone",
							uuid = "ce5c46c6-2816-1c88-8924-c040fee1e35b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 620.2,
				name = "P3 - Divine Spear 3",
				timeRange = true,
				timelineIndex = 118,
				timerStartOffset = -2.0999999046326,
				uuid = "32347c9c-ce3d-4362-8f42-d5991d3626d8",
				version = 2,
			},
		},
	},
	[119] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Wormhole Formation",
				uuid = "bd6580c9-ffc5-c596-af55-aa702b6a087c",
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
							actionLua = "local state = data.teaWormhole\n\nif state == nil then\n    self.used = true\n    return\nend\n\nlocal contentID = eventArgs.entityContentID\n\nif contentID == 2007519 and eventArgs.a2 == 4 and eventArgs.a3 == 8 then\n    state.wormholeCircleExploded = true\n    if state.phase == 1 then\n        state.phase = 2\n    end\nelseif contentID == 2007520 and eventArgs.a2 == 4 and eventArgs.a3 == 8 then\n    state.wormholeCircleExploded = true\n    if state.phase == 2 then\n        state.phase = 3\n    end\nelseif contentID == 2007521 and eventArgs.a2 == 4 and eventArgs.a3 == 8 then\n    state.active = false\nelseif eventArgs.a2 == 1 and eventArgs.a3 == 2 then\n    state.wormholeEntityIDs = state.wormholeEntityIDs or {}\n    state.wormholeEntityIDs[contentID] = state.wormholeEntityIDs[contentID] or {}\n    state.wormholeEntityIDs[contentID][eventArgs.entityID] = true\n\n    if contentID == 2007519 then\n        state.wormholeCircleExploded = false\n        local wormhole = TensorCore.mGetEntity(eventArgs.entityID)\n        local pos = wormhole and wormhole.pos\n\n        if pos then\n            state.inverted =\n                (pos.x > 100 and pos.z < 100) or\n                (pos.x < 100 and pos.z > 100)\n        end\n    elseif contentID == 2007520 then\n        state.wormholeCircleExploded = false\n        if state.phase ~= 2 then\n            state.phase = 2\n        end\n    elseif contentID == 2007521 then\n        state.wormholeCircleExploded = false\n        if state.phase ~= 3 then\n            state.phase = 3\n        end\n    end\nend\n\nself.used = true\n",
							conditions = 
							{
								
								{
									"eb44428c-c528-016c-b74d-52694ac704fc",
									true,
								},
							},
							name = "Advance LPDU position",
							uuid = "f45fa966-a139-dbe5-96a8-43e3713fbc36",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local contentID = eventArgs.entityContentID\nlocal isWormhole = contentID == 2007519 or contentID == 2007520 or contentID == 2007521\nlocal isActivation = eventArgs.a2 == 1 and eventArgs.a3 == 2\nlocal isFinalClose = (contentID == 2007519 or contentID == 2007520 or contentID == 2007521) and eventArgs.a2 == 4 and eventArgs.a3 == 8\nreturn isWormhole and (isActivation or isFinalClose)",
							dequeueIfLuaFalse = true,
							name = "Wormhole activation",
							uuid = "eb44428c-c528-016c-b74d-52694ac704fc",
							version = 3,
						},
					},
				},
				displayPath = "Wormhole Formation",
				eventType = 19,
				loop = true,
				mechanicTime = 629.3,
				name = "[Wormhole] Track Wormholes",
				timeRange = true,
				timelineIndex = 119,
				timerEndOffset = 36,
				timerStartOffset = 14,
				uuid = "7a8da92d-2950-58c5-8c72-239f77c9d497",
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
							actionLua = "data.teaWormhole = data.teaWormhole or {}\nlocal state = data.teaWormhole\nif state.positions == nil then\n    state.positions = {\n        [1] = {{ x = 86.5, y = 0, z = 86 }, { x = 86.5, y = 0, z = 86 }, { x = 81, y = 0, z = 99 }, { x = 90, y = 0, z = 97 }},\n        [2] = {{ x = 113.5, y = 0, z = 86 }, { x = 113.5, y = 0, z = 86 }, { x = 119, y = 0, z = 99 }, { x = 110, y = 0, z = 103 }},\n        [3] = {{ x = 87.150, y = 0, z = 112.8 }, { x = 81, y = 0, z = 101 }, { x = 81, y = 0, z = 101 }},\n        [4] = {{ x = 113, y = 0, z = 113 }, { x = 113, y = 0, z = 113 }, { x = 119, y = 0, z = 101 }, { x = 119, y = 0, z = 101 }},\n        [5] = {{ x = 84.45, y = 0, z = 89.65 }, { x = 82, y = 0, z = 96 }, { x = 86.5, y = 0, z = 86 }},\n        [6] = {{ x = 115.55, y = 0, z = 89.65 }, { x = 118, y = 0, z = 104 }, { x = 113.5, y = 0, z = 86 }},\n        [7] = {{ x = 83, y = 0, z = 93 }, { x = 81.5, y = 0, z = 100 }, { x = 85, y = 0, z = 93 }, { x = 86.5, y = 0, z = 114 }},\n        [8] = {{ x = 117, y = 0, z = 93 }, { x = 118.5, y = 0, z = 100 }, { x = 115, y = 0, z = 107 }, { x = 113.5, y = 0, z = 114 }}\n    }\n    state.targetPos = { x = 0, y = 0, z = 0 }\nend\n\nif state.positions[3] and state.positions[3][4] ~= nil then\n    local oldPlayer3Positions = state.positions[3]\n    state.positions[3] = {\n        oldPlayer3Positions[1],\n        oldPlayer3Positions[3],\n        oldPlayer3Positions[4]\n    }\nend\n\nif state.positions[5] then\n    state.positions[5][4] = nil\nend\n\nif state.positions[6] then\n    state.positions[6][4] = nil\nend\n\nlocal actualNumber = eventArgs.markerID - 78\nstate.actualNumber = actualNumber\nstate.myNumber = actualNumber\nstate.phase = 0\nstate.active = true\nstate.inverted = false\nstate.visibleSequence = 0\nstate.firstAlphaResolvedAt = nil\nstate.firstChargeResolvedAt = nil\nstate.apocalypticRayStarted = false\nstate.wormholeEntityIDs = {}\nstate.assignmentSequence = (state.assignmentSequence or 0) + 1\n\nif state.shotcallNumber ~= state.myNumber then\n    AnyoneCore.Shotcall(\"Wormhole \" .. tostring(state.myNumber), true, 5, false)\n    state.shotcallNumber = state.myNumber\nend\n\nself.used = true\n",
							conditions = 
							{
								
								{
									"27404c13-dd28-f525-a9cf-bd2150e41527",
									true,
								},
								
								{
									"6a3f6bd5-4445-7d00-90ff-59d448a6961b",
									true,
								},
							},
							name = "Record LPDU assignment",
							uuid = "ece0412c-88b5-c0e6-9037-30100c985e37",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Party",
							conditionType = 10,
							dequeueIfLuaFalse = true,
							name = "Marker on Self",
							partyTargetType = "Event Entity",
							uuid = "27404c13-dd28-f525-a9cf-bd2150e41527",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.markerID >= 79 and eventArgs.markerID <= 86",
							dequeueIfLuaFalse = true,
							name = "Wormhole marker 1-8",
							uuid = "6a3f6bd5-4445-7d00-90ff-59d448a6961b",
							version = 3,
						},
					},
				},
				displayPath = "Wormhole Formation",
				eventType = 4,
				loop = true,
				mechanicTime = 629.3,
				name = "[Wormhole] Assignment",
				timeRange = true,
				timelineIndex = 119,
				timerEndOffset = 16,
				timerStartOffset = 8,
				uuid = "d3ea92d2-7093-4ccf-9f32-1e3da6dd5ca4",
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
							actionLua = "local state = data.teaWormhole\nlocal number = state.myNumber\nlocal phase = state.phase\nlocal positionIndex = number\nlocal positionPhase = phase\n\nlocal sourceEntity = TensorCore.mGetPlayer()\n\nlocal sourcePos = sourceEntity and sourceEntity.pos\n\nif phase == 1 and (number == 1 or number == 2) then\n    local bruteJustice = nil\n    local bruteJustices = TensorCore.entityList(\"contentid=9216\")\n\n    if bruteJustices then\n        for _, entity in pairs(bruteJustices) do\n            if entity and entity.id and entity.pos and Argus.isEntityVisible(entity.id) then\n                bruteJustice = entity\n                break\n            end\n        end\n    end\n\n    local bjAcross = true\n\n    if sourcePos and bruteJustice and bruteJustice.pos then\n        local sourceX = sourcePos.x - 100\n        local sourceZ = sourcePos.z - 100\n        local bruteJusticeX = bruteJustice.pos.x - 100\n        local bruteJusticeZ = bruteJustice.pos.z - 100\n        bjAcross = (sourceX * bruteJusticeX + sourceZ * bruteJusticeZ) < 0\n    end\n\n    local ownAttackResolvedAt = number == 1\n        and state.firstAlphaResolvedAt\n        or state.firstChargeResolvedAt\n    local ownAttackResolved = ownAttackResolvedAt ~= nil\n        and Now() >= ownAttackResolvedAt\n\n    if number == 1 then\n        if state.wormholeCircleExploded == true then\n            positionPhase = 2\n        else\n            positionPhase = 1\n        end\n    elseif (not bjAcross and ownAttackResolved) or state.apocalypticRayStarted == true then\n        positionPhase = 2\n    end\nend\n\nlocal player3AlphaResolvedAt = state.alphaResolvedAt\n    and state.alphaResolvedAt[3]\n\nif number == 3\n    and (player3AlphaResolvedAt == nil or Now() < player3AlphaResolvedAt) then\n    positionPhase = 0\nend\n\nlocal shouldInvert = state.inverted == true and (\n    (phase == 1 and (number == 5 or number == 6)) or\n    (phase == 2 and (number == 7 or number == 8)) or\n    (phase == 3 and (number == 1 or number == 2))\n)\n\nif shouldInvert then\n    if number % 2 == 0 then\n        positionIndex = number - 1\n    else\n        positionIndex = number + 1\n    end\nend\n\nlocal targetPos = state.targetPos\nlocal targetRadius = 0.75\nlocal isWormholeTarget = false\nlocal hasTarget = true\n\nlocal wormholeContentID = nil\n\nif (number == 5 or number == 6) and phase == 1 then\n    wormholeContentID = 2007519\nelseif (number == 7 or number == 8) and phase == 2 then\n    wormholeContentID = 2007520\nelseif (number == 1 or number == 2) and phase == 3 then\n    wormholeContentID = 2007521\nend\n\nif wormholeContentID ~= nil and sourcePos then\n    local nearestWormhole = nil\n    local nearestDistance2 = nil\n    local nearestOutsideDistance2 = nil\n    local wormholeIDs = state.wormholeEntityIDs\n        and state.wormholeEntityIDs[wormholeContentID]\n\n    if wormholeIDs then\n        for entityID, _ in pairs(wormholeIDs) do\n            local entity = TensorCore.mGetEntity(entityID)\n\n            if entity and entity.pos then\n                local dx = entity.pos.x - sourcePos.x\n                local dz = entity.pos.z - sourcePos.z\n                local distance2 = dx * dx + dz * dz\n                local centerDX = entity.pos.x - 100\n                local centerDZ = entity.pos.z - 100\n                local outsideDistance2 = centerDX * centerDX + centerDZ * centerDZ\n\n                if nearestWormhole == nil\n                    or distance2 < nearestDistance2\n                    or (distance2 == nearestDistance2 and outsideDistance2 > nearestOutsideDistance2) then\n                    nearestWormhole = entity\n                    nearestDistance2 = distance2\n                    nearestOutsideDistance2 = outsideDistance2\n                end\n            end\n        end\n    end\n\n    if nearestWormhole == nil then\n        local wormholes = TensorCore.entityList(\n            \"contentid=\" .. tostring(wormholeContentID)\n        )\n\n        if wormholes then\n            for _, entity in pairs(wormholes) do\n                if entity and entity.pos then\n                    local dx = entity.pos.x - sourcePos.x\n                    local dz = entity.pos.z - sourcePos.z\n                    local distance2 = dx * dx + dz * dz\n                    local outsideDistance2 =\n                        (entity.pos.x - 100) * (entity.pos.x - 100) +\n                        (entity.pos.z - 100) * (entity.pos.z - 100)\n\n                    if nearestWormhole == nil\n                        or distance2 < nearestDistance2\n                        or (distance2 == nearestDistance2 and outsideDistance2 > nearestOutsideDistance2) then\n                        nearestWormhole = entity\n                        nearestDistance2 = distance2\n                        nearestOutsideDistance2 = outsideDistance2\n                    end\n                end\n            end\n        end\n    end\n\n    if nearestWormhole then\n        targetPos.x = nearestWormhole.pos.x\n        targetPos.y = nearestWormhole.pos.y\n        targetPos.z = nearestWormhole.pos.z\n        targetRadius = wormholeContentID == 2007521 and 3 or (wormholeContentID == 2007520 and 6 or 8)\n        isWormholeTarget = true\n    else\n        hasTarget = false\n    end\nelse\n    local positionList = state.positions[positionIndex]\n    local position = positionList and positionList[positionPhase + 1]\n\n    if position then\n        targetPos.x = shouldInvert and (200 - position.x) or position.x\n        targetPos.y = position.y\n        targetPos.z = shouldInvert and (200 - position.z) or position.z\n    else\n        hasTarget = false\n    end\nend\n\nif sourcePos and hasTarget then\n    local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n    local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n    local scale = math.min(1, totalDistance / 15)\n    local baseWidth = math.max(0.5, scale)\n    local tipWidth = math.max(1.5, 3 * scale)\n    local tipLength = math.max(2, 3 * scale)\n    local baseLength = totalDistance - tipLength\n    local arrowSuppressed = false\n\n    if isWormholeTarget then\n        local dx = sourcePos.x - targetPos.x\n        local dz = sourcePos.z - targetPos.z\n        arrowSuppressed = (dx * dx + dz * dz) <= (targetRadius * targetRadius)\n    end\n\n    if baseLength > 1 and not arrowSuppressed then\n        local arrowChannel = Argus2.getNextUnusedChannel(true)\n        local arrowDrawer = TensorCore.getCachedDrawer(\n            0xFF00FFFF,\n            0xFF0088FF,\n            0xFF0000FF,\n            0xFFFFFFFF,\n            2,\n            arrowChannel,\n            Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n        )\n\n        arrowDrawer:addArrow(\n            sourcePos.x,\n            sourcePos.y,\n            sourcePos.z,\n            heading,\n            baseLength,\n            baseWidth,\n            tipLength,\n            tipWidth,\n            false,\n            Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n        )\n    end\n\n    if isWormholeTarget then\n        if state.wormholeCircleExploded ~= true then\n        local occlusionChannel = 0\n        local safeCircleY = 0\n        local safeCircleFlags =\n            Argus2.RenderFlags.FLAG_OCCLUSION_BASE |\n            Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n\n        local safeDrawer = TensorCore.getCachedDrawer(\n            nil,\n            nil,\n            0xFF00FF00,\n            0xFFFFFFFF,\n            2,\n            occlusionChannel,\n            safeCircleFlags\n        )\n\n        safeDrawer:addCircle(\n            targetPos.x,\n            safeCircleY,\n            targetPos.z,\n            targetRadius,\n            false,\n            safeCircleFlags\n        )\n\n        end\n    else\n        local positionCircleChannel = Argus2.getNextUnusedChannel(true)\n        local spotDrawer = TensorCore.getCachedDrawer(\n            nil,\n            nil,\n            0xFF00FF00,\n            0xFFFFFFFF,\n            2,\n            positionCircleChannel,\n            Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n        )\n\n        spotDrawer:addCircle(\n            targetPos.x,\n            targetPos.y,\n            targetPos.z,\n            targetRadius,\n            false,\n            Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n        )\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"261adcde-bc51-2896-b459-15ced5f97435",
									true,
								},
							},
							name = "Draw LPDU Wormhole arrow",
							uuid = "182778a7-93c3-b6df-ba2a-aaa97105ff22",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local state = data.teaWormhole\nreturn state ~= nil\n    and state.active == true\n    and state.myNumber ~= nil\n    and state.positions ~= nil\n    and state.phase ~= nil\n    and state.phase >= 0\n    and state.phase <= 3",
							name = "Wormhole position ready",
							uuid = "261adcde-bc51-2896-b459-15ced5f97435",
							version = 3,
						},
					},
				},
				displayPath = "Wormhole Formation",
				eventType = 12,
				loop = true,
				mechanicTime = 629.3,
				name = "[Wormhole] LPDU Position Arrow",
				timeRange = true,
				timelineIndex = 119,
				timerEndOffset = 36,
				timerStartOffset = 8,
				uuid = "787749b9-0fab-f8ae-a394-dfce5080bf65",
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
							actionLua = "local state = data.teaWormhole\n\nif state and state.active and state.phase ~= 1 then\n    state.phase = 1\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"6d252364-4b90-21ea-bef0-fa2ebb3f3d7b",
									true,
								},
							},
							name = "Advance after chakrams",
							uuid = "cc5b9064-3fa8-99cf-ab9f-4a2498d10064",
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
							eventSpellID = 18517,
							name = "Eye of the Chakram",
							uuid = "6d252364-4b90-21ea-bef0-fa2ebb3f3d7b",
							version = 3,
						},
					},
				},
				displayPath = "Wormhole Formation",
				eventType = 2,
				loop = true,
				mechanicTime = 629.3,
				name = "[Wormhole] Chakram Handoff",
				timeRange = true,
				timelineIndex = 119,
				timerEndOffset = 22,
				timerStartOffset = 19,
				uuid = "de9e0ee3-fc31-e64c-b1d9-da16816b0a16",
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
							actionLua = "local markerID = eventArgs.markerID\n\nif markerID < 79 or markerID > 86 then\n    self.used = true\n    return\nend\n\ndata.teaWormhole = data.teaWormhole or {}\nlocal state = data.teaWormhole\nstate.players = state.players or {}\nstate.players[markerID - 78] = eventArgs.entityID\nstate.active = true\n\nself.used = true",
							name = "Record Wormhole marker assignment",
							uuid = "941fa93c-6da2-721e-805f-5437ba6d2f9a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Wormhole Formation",
				eventType = 4,
				loop = true,
				mechanicTime = 629.3,
				name = "[Wormhole] Record all limit cut assignments",
				timeRange = true,
				timelineIndex = 119,
				timerEndOffset = 16,
				timerStartOffset = 8,
				uuid = "fab16fc9-d66e-1277-98c9-29d1dab7f53f",
				version = 2,
			},
		},
	},
	[125] = 
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
							actionLua = "local bruteJustice = nil\nlocal bruteJustices = TensorCore.entityList(\"contentid=9216\")\n\nif bruteJustices then\n    for _, entity in pairs(bruteJustices) do\n        if entity and entity.id and entity.pos and Argus.isEntityVisible(entity.id) then\n            bruteJustice = entity\n            break\n        end\n    end\nend\n\nlocal party = TensorCore.getEntityGroupList(\"Party\")\nlocal furthestPlayer = nil\nlocal furthestDistance = -math.huge\n\nif bruteJustice and party then\n    for _, player in pairs(party) do\n        if player and player.id and player.pos then\n            local distance = TensorCore.getDistance3d(bruteJustice.pos, player.pos)\n            if distance > furthestDistance then\n                furthestDistance = distance\n                furthestPlayer = player\n            end\n        end\n    end\nend\n\nlocal drawer = TensorCore.getMoogleDrawer()\n\nif furthestPlayer and drawer then\n    drawer:addCircle(\n        furthestPlayer.pos.x,\n        furthestPlayer.pos.y,\n        furthestPlayer.pos.z,\n        10,\n        false\n    )\nend\n\nself.used = true",
							endIfUsed = true,
							name = "Draw 10y Super Jump bait circle",
							uuid = "0d77aef5-1939-8c64-b370-d1dde9fdb408",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				loop = true,
				mechanicTime = 650.9,
				name = "[Draw] Super Jump bait circle",
				timeRange = true,
				timelineIndex = 125,
				timerStartOffset = -3,
				uuid = "7ba83540-af81-9703-98f9-a9eb879e2cb2",
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
				name = "Wormhole Formation",
				uuid = "492331e6-82f4-5a35-9032-d38a19c4cdc9",
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
							actionLua = "local state = data.teaWormhole\nif not state or not state.players then\n  self.used = true\n  return\nend\n\nstate.visibleSequence = (state.visibleSequence or 0) + 1\nif state.visibleSequence == 1 then\n  local firstPairStart = Now()\n  state.firstAlphaResolvedAt = firstPairStart + 1200\n  state.firstChargeResolvedAt = firstPairStart + 2700\n  state.alphaResolvedAt = {}\nend\n\nlocal alphaNumber = state.visibleSequence * 2 - 1\nstate.alphaResolvedAt = state.alphaResolvedAt or {}\nstate.alphaResolvedAt[alphaNumber] = Now() + 1200\nlocal chargeNumber = alphaNumber + 1\nlocal assignmentPlayers = state.players\nlocal player = TensorCore.mGetPlayer()\n\nlocal alphaTargetID = assignmentPlayers[alphaNumber]\nlocal chargeTargetID = assignmentPlayers[chargeNumber]\nlocal drawer = TensorCore.getMoogleDrawer()\nlocal occlusionFlags =\n  Argus2.RenderFlags.FLAG_OCCLUDE |\n  Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nlocal occlusionDrawer = TensorCore.getMoogleDrawer(0, occlusionFlags)\n\n\nif drawer and player and alphaTargetID == player.id then\n  drawer:addTimedConeOnEnt(1200, eventArgs.entityID, 25, math.pi / 2, alphaTargetID, 0, false, false)\n\n  if occlusionDrawer and alphaTargetID then\n    occlusionDrawer:addTimedConeOnEnt(\n      1200,\n      eventArgs.entityID,\n      25,\n      math.pi / 2,\n      alphaTargetID,\n      0,\n      false,\n      false,\n      0,\n      false,\n      occlusionFlags\n    )\n  end\nend\n\nif drawer and player and chargeTargetID == player.id then\n  drawer:addTimedRectOnEnt(2700, eventArgs.entityID, 50, 10, chargeTargetID, 0, true, false, false)\n\n  if occlusionDrawer and chargeTargetID then\n    occlusionDrawer:addTimedRectOnEnt(\n      2700,\n      eventArgs.entityID,\n      50,\n      10,\n      chargeTargetID,\n      0,\n      true,\n      false,\n      false,\n      0,\n      false,\n      occlusionFlags\n    )\n  end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"1f9e3096-93e8-24a7-bfa8-31fb79e8e327",
									true,
								},
								
								{
									"d0dc5f44-abbe-fe04-b19a-30c2ae211787",
									true,
								},
							},
							endIfUsed = true,
							name = "Draw Alpha Sword then Super Blassty Charge",
							uuid = "12b28cb8-4b62-920a-bb7c-9b8404322664",
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
							eventArgOptionType = 2,
							eventEntityContentID = 9218,
							name = "Cruise Chaser",
							uuid = "1f9e3096-93e8-24a7-bfa8-31fb79e8e327",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							eventArgType = 3,
							name = "Became visible",
							uuid = "d0dc5f44-abbe-fe04-b19a-30c2ae211787",
							version = 3,
						},
					},
				},
				displayPath = "Wormhole Formation",
				eventType = 22,
				loop = true,
				mechanicTime = 650.9,
				name = "[Wormhole] Alpha Sword + Super Blassty Charge",
				timeRange = true,
				timelineIndex = 126,
				timerEndOffset = 14,
				timerStartOffset = -2,
				uuid = "0691acfb-b843-c5d0-acd3-d3ec3a65d348",
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
							actionLua = "local player = TensorCore.mGetPlayer()\nlocal acr = TensorCore.API.TensorACR\n\nif player and player.pos and acr then\n  local arenaCenter = {\n    x = 100,\n    y = player.pos.y,\n    z = 100\n  }\n  local heading = TensorCore.getHeadingToTarget(arenaCenter, player.pos)\n  acr.setLockFaceHeading(heading)\n  acr.toggleLockFace(true)\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"86e19d2e-0d3b-72f4-82c2-ee6022f32760",
									true,
								},
							},
							endIfUsed = true,
							name = "Lock Face Radially Outward",
							uuid = "156fecfc-98aa-2e6a-83fb-6840d6a0eb45",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local state = data.teaWormhole\nlocal player = TensorCore.mGetPlayer()\nreturn state and state.players and player and state.players[1] == player.id",
							dequeueIfLuaFalse = true,
							name = "Assigned target 1",
							uuid = "86e19d2e-0d3b-72f4-82c2-ee6022f32760",
							version = 3,
						},
					},
				},
				displayPath = "Wormhole Formation",
				mechanicTime = 650.9,
				name = "[Wormhole] Lock Face #1 Alpha Sword",
				timeRange = true,
				timelineIndex = 126,
				timerStartOffset = -0.80000001192093,
				uuid = "fc5e423f-4923-58b8-8d46-90fe85d00c1b",
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
									"6807f12f-3812-e18a-8703-243a23791070",
									true,
								},
							},
							endIfUsed = true,
							gVar = "ACR_RikuNIN3_Hotbar_ArmsLength",
							name = "Use Arm's Length",
							uuid = "9125eddc-e5a9-65c5-9ef1-13316a1740d1",
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
							conditionLua = "local state = data.teaWormhole\nlocal player = TensorCore.mGetPlayer()\nreturn state and state.players and player and state.players[1] == player.id",
							dequeueIfLuaFalse = true,
							name = "Assigned target 1",
							uuid = "6807f12f-3812-e18a-8703-243a23791070",
							version = 3,
						},
					},
				},
				displayPath = "Wormhole Formation",
				mechanicTime = 650.9,
				name = "[Wormhole] Arm's Length #1 Alpha Sword",
				timeRange = true,
				timelineIndex = 126,
				timerStartOffset = -3,
				uuid = "03eb6b4b-816b-3aeb-a29d-9f79a883e0cb",
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
							actionLua = "local acr = TensorCore.API.TensorACR\nif acr then\n  acr.toggleLockFace(false)\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"9644ecb6-ec92-3ff7-8d96-4938aedbb632",
									true,
								},
								
								{
									"3e8c533c-4519-35e4-abfb-3184f164bcb7",
									true,
								},
							},
							endIfUsed = true,
							name = "Unlock Face",
							uuid = "99a4b53c-45e3-a7f6-82b0-d9ae3edf3342",
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
							eventArgOptionType = 2,
							eventEntityContentID = 9218,
							name = "Cruise Chaser",
							uuid = "9644ecb6-ec92-3ff7-8d96-4938aedbb632",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							eventArgType = 2,
							eventSpellID = 18484,
							name = "Alpha Sword",
							uuid = "3e8c533c-4519-35e4-abfb-3184f164bcb7",
							version = 3,
						},
					},
				},
				displayPath = "Wormhole Formation",
				eventType = 2,
				loop = true,
				mechanicTime = 650.9,
				name = "[Wormhole] Unlock Face on Alpha Sword",
				timeRange = true,
				timelineIndex = 126,
				timerEndOffset = 14,
				timerStartOffset = -2,
				uuid = "3b88f3d2-2fae-a843-a3f7-df9d554b5c64",
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
				name = "Wormhole Formation",
				uuid = "da3bd37c-7872-40e8-88d8-b531cc4be31f",
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
									"7f3f64b5-e812-ddca-9d97-9fe2035cb1b4",
									true,
								},
							},
							endIfUsed = true,
							gVar = "ACR_RikuNIN3_Hotbar_ArmsLength",
							name = "Use Arm's Length",
							uuid = "f2c6a691-4084-509b-b2a0-33a0b9c8b647",
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
							conditionLua = "local state = data.teaWormhole\nlocal player = TensorCore.mGetPlayer()\nreturn state and state.players and player and state.players[2] == player.id",
							dequeueIfLuaFalse = true,
							name = "Assigned target 2",
							uuid = "7f3f64b5-e812-ddca-9d97-9fe2035cb1b4",
							version = 3,
						},
					},
				},
				displayPath = "Wormhole Formation",
				mechanicTime = 652.4,
				name = "[Wormhole] Arm's Length #2 Super Blassty Charge",
				timeRange = true,
				timelineIndex = 127,
				timerStartOffset = -3,
				uuid = "ca4c69ca-896a-db7b-a3ea-c89da19ad5d4",
				version = 2,
			},
		},
	},
	[128] = 
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
							actionLua = "local bruteJustice = nil\nlocal bruteJustices = TensorCore.entityList(\"contentid=9216\")\n\nif bruteJustices then\n    for _, entity in pairs(bruteJustices) do\n        if entity and entity.id and entity.pos and Argus.isEntityVisible(entity.id) then\n            bruteJustice = entity\n            break\n        end\n    end\nend\n\nlocal party = TensorCore.getEntityGroupList(\"Party\")\nlocal furthestPlayer = nil\nlocal furthestDistance = -math.huge\n\nif bruteJustice and party then\n    for _, player in pairs(party) do\n        if player and player.id and player.pos then\n            local distance = TensorCore.getDistance3d(bruteJustice.pos, player.pos)\n            if distance > furthestDistance then\n                furthestDistance = distance\n                furthestPlayer = player\n            end\n        end\n    end\nend\n\nlocal drawer = TensorCore.getMoogleDrawer()\nlocal occlusionFlags =\n    Argus2.RenderFlags.FLAG_OCCLUDE |\n    Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nlocal occlusionDrawer = TensorCore.getMoogleDrawer(0, occlusionFlags)\n\n\nif bruteJustice and furthestPlayer and drawer then\n    local heading = TensorCore.getHeadingToTarget(bruteJustice.pos, furthestPlayer.pos)\n    drawer:addCone(\n        bruteJustice.pos.x,\n        bruteJustice.pos.y,\n        bruteJustice.pos.z,\n        25,\n        math.pi / 2,\n        heading,\n        false\n    )\n\n    if occlusionDrawer then\n        occlusionDrawer:addCone(\n            bruteJustice.pos.x,\n            bruteJustice.pos.y,\n            bruteJustice.pos.z,\n            25,\n            math.pi / 2,\n            heading,\n            false,\n            occlusionFlags\n        )\n    end\nend\n\nself.used = true",
							endIfUsed = true,
							name = "Draw 25y Apocalyptic Ray bait cone",
							uuid = "9362bf2e-f26f-17cb-ac54-60c023e178f5",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				loop = true,
				mechanicTime = 653.3,
				name = "[Draw] Apocalyptic Ray bait preview",
				timeRange = true,
				timelineIndex = 128,
				timerStartOffset = -1.6000000238419,
				uuid = "7bdfc857-2b00-df64-b579-21e3fb330391",
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
							actionLua = "local state = data.teaWormhole\nif state then\n    state.apocalypticRayStarted = true\nend\n\nlocal bruteJustice = nil\nlocal bruteJustices = TensorCore.entityList(\"contentid=9216\")\n\nif bruteJustices then\n    for _, entity in pairs(bruteJustices) do\n        if entity and entity.id and entity.pos and Argus.isEntityVisible(entity.id) then\n            bruteJustice = entity\n            break\n        end\n    end\nend\n\nlocal party = TensorCore.getEntityGroupList(\"Party\")\nlocal furthestPlayer = nil\nlocal furthestDistance = -math.huge\n\nif bruteJustice and party then\n    for _, player in pairs(party) do\n        if player and player.id and player.pos then\n            local distance = TensorCore.getDistance3d(bruteJustice.pos, player.pos)\n            if distance > furthestDistance then\n                furthestDistance = distance\n                furthestPlayer = player\n            end\n        end\n    end\nend\n\nlocal drawer = TensorCore.getMoogleDrawer()\nlocal occlusionFlags =\n    Argus2.RenderFlags.FLAG_OCCLUDE |\n    Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nlocal occlusionDrawer = TensorCore.getMoogleDrawer(0, occlusionFlags)\n\n\nif bruteJustice and drawer then\n    local heading = bruteJustice.pos.h\n\n    if furthestPlayer then\n        heading = TensorCore.getHeadingToTarget(bruteJustice.pos, furthestPlayer.pos)\n    end\n\n    drawer:addTimedCone(\n        5000,\n        bruteJustice.pos.x,\n        bruteJustice.pos.y,\n        bruteJustice.pos.z,\n        25,\n        math.pi / 2,\n        heading,\n        0,\n        false,\n        false\n    )\n\n    if occlusionDrawer then\n        occlusionDrawer:addTimedCone(\n            5000,\n            bruteJustice.pos.x,\n            bruteJustice.pos.y,\n            bruteJustice.pos.z,\n            25,\n            math.pi / 2,\n            heading,\n            0,\n            false,\n            false,\n            occlusionFlags\n        )\n    end\nend\n\nself.used = true",
							endIfUsed = true,
							name = "Draw one 25y Apocalyptic Ray cone for all 5 hits",
							uuid = "ca58f588-a6f1-e45d-a743-7d5cdf3f85b7",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 653.3,
				name = "[Draw] Apocalyptic Ray x5",
				timeRange = true,
				timelineIndex = 128,
				timerEndOffset = 5,
				uuid = "3dfc9519-8f3a-1eaf-8381-7497c1e8561d",
				version = 2,
			},
		},
	},
	[129] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Wormhole Formation",
				uuid = "d07cc787-23f8-ab02-89ee-21b960004698",
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
							actionLua = "local player = TensorCore.mGetPlayer()\nlocal acr = TensorCore.API.TensorACR\n\nif player and player.pos and acr then\n  local arenaCenter = {\n    x = 100,\n    y = player.pos.y,\n    z = 100\n  }\n  local heading = TensorCore.getHeadingToTarget(arenaCenter, player.pos)\n  acr.setLockFaceHeading(heading)\n  acr.toggleLockFace(true)\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"c65045d1-4318-e41a-bc6e-7eff9daf88a8",
									true,
								},
							},
							endIfUsed = true,
							name = "Lock Face Radially Outward",
							uuid = "03d56529-bb37-7dc0-ac16-e40e23091821",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local state = data.teaWormhole\nlocal player = TensorCore.mGetPlayer()\nreturn state and state.players and player and state.players[3] == player.id",
							dequeueIfLuaFalse = true,
							name = "Assigned target 3",
							uuid = "c65045d1-4318-e41a-bc6e-7eff9daf88a8",
							version = 3,
						},
					},
				},
				displayPath = "Wormhole Formation",
				mechanicTime = 655.2,
				name = "[Wormhole] Lock Face #3 Alpha Sword",
				timeRange = true,
				timelineIndex = 129,
				timerStartOffset = -0.8,
				uuid = "79edb6d9-4bf4-af55-baba-3084e1150826",
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
									"5c62fd1a-93e7-8fcb-93f1-5ba3f28dcb65",
									true,
								},
							},
							endIfUsed = true,
							gVar = "ACR_RikuNIN3_Hotbar_ArmsLength",
							name = "Use Arm's Length",
							uuid = "d219d017-910a-70ea-9d26-1bbd48cec7d9",
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
							conditionLua = "local state = data.teaWormhole\nlocal player = TensorCore.mGetPlayer()\nreturn state and state.players and player and state.players[3] == player.id",
							dequeueIfLuaFalse = true,
							name = "Assigned target 3",
							uuid = "5c62fd1a-93e7-8fcb-93f1-5ba3f28dcb65",
							version = 3,
						},
					},
				},
				displayPath = "Wormhole Formation",
				mechanicTime = 655.2,
				name = "[Wormhole] Arm's Length #3 Alpha Sword",
				timeRange = true,
				timelineIndex = 129,
				timerStartOffset = -3,
				uuid = "e7102749-33db-76f3-a1e1-f9947130e39c",
				version = 2,
			},
		},
	},
	[131] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Wormhole Formation",
				uuid = "255af66c-030d-b090-8407-571e79e34060",
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
									"b69666e5-67b3-f709-b0f4-f4ebd9a13ae4",
									true,
								},
							},
							endIfUsed = true,
							gVar = "ACR_RikuNIN3_Hotbar_ArmsLength",
							name = "Use Arm's Length",
							uuid = "2ca86c4b-6619-4d54-a180-a5bb3965fc57",
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
							conditionLua = "local state = data.teaWormhole\nlocal player = TensorCore.mGetPlayer()\nreturn state and state.players and player and state.players[4] == player.id",
							dequeueIfLuaFalse = true,
							name = "Assigned target 4",
							uuid = "b69666e5-67b3-f709-b0f4-f4ebd9a13ae4",
							version = 3,
						},
					},
				},
				displayPath = "Wormhole Formation",
				mechanicTime = 656.7,
				name = "[Wormhole] Arm's Length #4 Super Blassty Charge",
				timeRange = true,
				timelineIndex = 131,
				timerStartOffset = -3,
				uuid = "6687ba49-92f9-b8a4-b1a6-b557b0013f5e",
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
				name = "Wormhole Formation",
				uuid = "561d1f2a-f497-f633-8e25-72ff4d038f3b",
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
							actionLua = "local player = TensorCore.mGetPlayer()\nlocal acr = TensorCore.API.TensorACR\n\nif player and player.pos and acr then\n  local arenaCenter = {\n    x = 100,\n    y = player.pos.y,\n    z = 100\n  }\n  local heading = TensorCore.getHeadingToTarget(arenaCenter, player.pos)\n  acr.setLockFaceHeading(heading)\n  acr.toggleLockFace(true)\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"03dcb702-758d-4657-a945-91b5ea17c8e5",
									true,
								},
							},
							endIfUsed = true,
							name = "Lock Face Radially Outward",
							uuid = "a4a54d1c-a6c6-61c3-bf55-26f1fb18ff8e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local state = data.teaWormhole\nlocal player = TensorCore.mGetPlayer()\nreturn state and state.players and player and state.players[5] == player.id",
							dequeueIfLuaFalse = true,
							name = "Assigned target 5",
							uuid = "03dcb702-758d-4657-a945-91b5ea17c8e5",
							version = 3,
						},
					},
				},
				displayPath = "Wormhole Formation",
				mechanicTime = 659.5,
				name = "[Wormhole] Lock Face #5 Alpha Sword",
				timeRange = true,
				timelineIndex = 133,
				timerStartOffset = -0.8,
				uuid = "85a27279-c740-9d0e-8569-9b0b7efda035",
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
									"ca452cf6-5bb6-af73-b2a7-c039221d04cc",
									true,
								},
							},
							endIfUsed = true,
							gVar = "ACR_RikuNIN3_Hotbar_ArmsLength",
							name = "Use Arm's Length",
							uuid = "e3469150-274e-2db7-82d7-ab43d326693e",
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
							conditionLua = "local state = data.teaWormhole\nlocal player = TensorCore.mGetPlayer()\nreturn state and state.players and player and state.players[5] == player.id",
							dequeueIfLuaFalse = true,
							name = "Assigned target 5",
							uuid = "ca452cf6-5bb6-af73-b2a7-c039221d04cc",
							version = 3,
						},
					},
				},
				displayPath = "Wormhole Formation",
				mechanicTime = 659.5,
				name = "[Wormhole] Arm's Length #5 Alpha Sword",
				timeRange = true,
				timelineIndex = 133,
				timerStartOffset = -3,
				uuid = "493de317-5e55-d4be-b0cc-3271ce57d4ba",
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
				name = "Wormhole Formation",
				uuid = "2797abdc-2bc9-e2aa-8048-6f8ab766284f",
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
									"9b8f8cda-429d-0d9f-a89d-7f19b58a037c",
									true,
								},
							},
							endIfUsed = true,
							gVar = "ACR_RikuNIN3_Hotbar_ArmsLength",
							name = "Use Arm's Length",
							uuid = "639f2df1-3bc1-8795-b0d7-55369e087f65",
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
							conditionLua = "local state = data.teaWormhole\nlocal player = TensorCore.mGetPlayer()\nreturn state and state.players and player and state.players[6] == player.id",
							dequeueIfLuaFalse = true,
							name = "Assigned target 6",
							uuid = "9b8f8cda-429d-0d9f-a89d-7f19b58a037c",
							version = 3,
						},
					},
				},
				displayPath = "Wormhole Formation",
				mechanicTime = 660.8,
				name = "[Wormhole] Arm's Length #6 Super Blassty Charge",
				timeRange = true,
				timelineIndex = 135,
				timerStartOffset = -3,
				uuid = "9a8a45fa-5d83-63b6-806d-17dad122e900",
				version = 2,
			},
		},
	},
	[136] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Wormhole Formation",
				uuid = "75cc05ab-c97d-8be3-bee3-6438edade0eb",
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
							actionLua = "local player = TensorCore.mGetPlayer()\nlocal acr = TensorCore.API.TensorACR\n\nif player and player.pos and acr then\n  local arenaCenter = {\n    x = 100,\n    y = player.pos.y,\n    z = 100\n  }\n  local heading = TensorCore.getHeadingToTarget(arenaCenter, player.pos)\n  acr.setLockFaceHeading(heading)\n  acr.toggleLockFace(true)\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"c622209c-1a21-fcd3-b284-0cfd72ec58a4",
									true,
								},
							},
							endIfUsed = true,
							name = "Lock Face Radially Outward",
							uuid = "1aa94534-2ef9-7a66-8106-62d52019f3e9",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local state = data.teaWormhole\nlocal player = TensorCore.mGetPlayer()\nreturn state and state.players and player and state.players[7] == player.id",
							dequeueIfLuaFalse = true,
							name = "Assigned target 7",
							uuid = "c622209c-1a21-fcd3-b284-0cfd72ec58a4",
							version = 3,
						},
					},
				},
				displayPath = "Wormhole Formation",
				mechanicTime = 663.6,
				name = "[Wormhole] Lock Face #7 Alpha Sword",
				timeRange = true,
				timelineIndex = 136,
				timerStartOffset = -0.8,
				uuid = "88c3c4a7-883d-0d74-a1d9-d022d796eddc",
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
									"827b6bfd-86a9-3bef-a152-472d54f0d059",
									true,
								},
							},
							endIfUsed = true,
							gVar = "ACR_RikuNIN3_Hotbar_ArmsLength",
							name = "Use Arm's Length",
							uuid = "6c55fd35-d248-32ae-a047-9ad8a83d0512",
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
							conditionLua = "local state = data.teaWormhole\nlocal player = TensorCore.mGetPlayer()\nreturn state and state.players and player and state.players[7] == player.id",
							dequeueIfLuaFalse = true,
							name = "Assigned target 7",
							uuid = "827b6bfd-86a9-3bef-a152-472d54f0d059",
							version = 3,
						},
					},
				},
				displayPath = "Wormhole Formation",
				mechanicTime = 663.6,
				name = "[Wormhole] Arm's Length #7 Alpha Sword",
				timeRange = true,
				timelineIndex = 136,
				timerStartOffset = -3,
				uuid = "503f73e4-7c31-8884-b352-d795bef35233",
				version = 2,
			},
		},
	},
	[140] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Guidance",
				uuid = "ab1f34b5-bc9b-9f56-aec4-e739659f7c6b",
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
							actionLua = "local p=TensorCore.mGetPlayer()\nif not p then return end\nif eventArgs.entityID==p.id then AnyoneCore.Shotcall(\"Stack: go middle\",true,4,false) end\nself.used=true",
							conditions = 
							{
								
								{
									"45e15b96-81fc-2bfc-83a9-0724d0b7be53",
									true,
								},
							},
							name = "Own stack to middle",
							uuid = "50837d33-1237-f6f2-b633-59b7d33916cf",
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
							eventMarkerID = 93,
							name = "Incinerating Heat stack marker",
							uuid = "45e15b96-81fc-2bfc-83a9-0724d0b7be53",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Guidance",
				eventType = 4,
				mechanicTime = 670,
				name = "[LPDU] Incinerating Heat - Own stack to middle",
				timeRange = true,
				timelineIndex = 140,
				timerEndOffset = 2,
				timerStartOffset = -6,
				uuid = "ff03a7c7-0744-1d1e-be88-9e14ddd928cb",
				version = 2,
			},
		},
	},
	[142] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P3 - Brute Justice + Cruise Chaser",
				uuid = "758e7cf6-53ef-cfbb-9638-f41647cbbffd",
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
							actionLua = "data.teaP3 = data.teaP3 or {}\nlocal state = data.teaP3\n\nif not eventArgs or not eventArgs.entityID then\n  self.used = true\n  return\nend\n\nif state.resolved then\n  state.enumerationIDs = {}\n  state.count = 0\n  state.resolved = false\nelseif not state.enumerationIDs then\n  state.enumerationIDs = {}\n  state.count = 0\nend\n\nif not state.enumerationIDs[eventArgs.entityID] then\n  state.enumerationIDs[eventArgs.entityID] = true\n  state.count = (state.count or 0) + 1\nend\n\nif state.count >= 2 then\n  state.resolved = true\nend\n\nself.used = true",
							name = "Record Enumeration Marker Entity",
							uuid = "2a28c10e-832c-10ce-9981-17aa7f653fe4",
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
							eventMarkerID = 65,
							name = "Enumeration marker",
							uuid = "544b5fbf-a1cb-5dd6-9c26-e42bbb20a798",
							version = 3,
						},
					},
				},
				displayPath = "P3 - Brute Justice + Cruise Chaser",
				eventType = 4,
				loop = true,
				mechanicTime = 674.6,
				name = "[Record] P3 Enumeration Markers",
				timeRange = true,
				timelineIndex = 142,
				timerEndOffset = -4.5,
				timerStartOffset = -5.5,
				uuid = "474b74d8-1911-ce4c-b7f9-c7f35762145f",
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
							actionLua = "local player = TensorCore.mGetPlayer()\nlocal state = data.teaP3\nlocal ids = state and state.enumerationIDs\nif not player or not ids then\n  self.used = true\n  return\nend\n\nlocal first\nlocal second\n\nfor entityID in pairs(ids) do\n  local entity = TensorCore.mGetEntity(entityID)\n  if entity and TensorCore.isDPS(entity) and entity.pos then\n    if not first then\n      first = entity\n    elseif not second then\n      second = entity\n    end\n  end\nend\n\nif not first or not second then\n  self.used = true\n  return\nend\n\nlocal eastTarget = first\nlocal westTarget = first\nif second.pos.x > first.pos.x then\n  eastTarget = second\nelseif second.pos.x < first.pos.x then\n  westTarget = second\nend\n\nlocal greenTarget\nif TensorCore.isDPS(player) then\n  if ids[player.id] then\n    greenTarget = player\n  end\nelseif TensorCore.isTank(player) then\n  greenTarget = eastTarget\nelseif TensorCore.isHealer(player) then\n  greenTarget = westTarget\nelse\n  self.used = true\n  return\nend\n\nif not state.lpduEnumCalled then\n state.lpduEnumCalled=true\n local message\n if TensorCore.isDPS(player) then message=ids[player.id] and \"Enumeration: stay with your group\" or \"Stay out of enumerations\"\n else message=\"Join your green enumeration\" end\n AnyoneCore.Shotcall(message,true,3,false)\nend\n\nlocal greenDrawer = TensorCore.getCachedDrawer(\n  0x4400FF00, 0x8800FF00, 0x6600FF00, 0xDD00FF00, 2\n)\nlocal redDrawer = TensorCore.getCachedDrawer(\n  0x440000FF, 0x880000FF, 0x660000FF, 0xDD0000FF, 2\n)\n\nlocal firstDrawer = greenTarget and first.id == greenTarget.id\n    and greenDrawer or redDrawer\nfirstDrawer:addCircle(\n  first.pos.x,\n  first.pos.y,\n  first.pos.z,\n  5,\n  false,\n  0\n)\n\nlocal secondDrawer = greenTarget and second.id == greenTarget.id\n    and greenDrawer or redDrawer\nsecondDrawer:addCircle(\n  second.pos.x,\n  second.pos.y,\n  second.pos.z,\n  5,\n  false,\n  0\n)\n\nif greenTarget and greenTarget.id ~= player.id\n    and player.pos and greenTarget.pos then\n  local heading = TensorCore.getHeadingToTarget(player.pos, greenTarget.pos)\n  local totalDistance = TensorCore.getDistance2d(player.pos, greenTarget.pos)\n  local tipLength = math.min(3, math.max(1.5, totalDistance * 0.2))\n  local baseLength = totalDistance - tipLength\n\n  if baseLength > 0.5 then\n    local arrowDrawer = TensorCore.getCachedDrawer(\n      0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2\n    )\n    local scale = math.min(1, totalDistance / 15)\n    arrowDrawer:addArrow(\n      player.pos.x,\n      player.pos.y,\n      player.pos.z,\n      heading,\n      baseLength,\n      math.max(0.5, 1 * scale),\n      tipLength,\n      math.max(1.5, 3 * scale),\n      false,\n      Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\n  end\nend\n\nself.used = true",
							name = "Draw Enumeration Circles and Arrow",
							uuid = "28460a18-fc7c-3897-b611-8d5d85e44f94",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P3 - Brute Justice + Cruise Chaser",
				eventType = 12,
				loop = true,
				mechanicTime = 674.6,
				name = "[Draw] P3 Enumeration",
				timeRange = true,
				timelineIndex = 142,
				timerEndOffset = 0.5,
				timerStartOffset = -6,
				uuid = "1389bdf1-6560-9e94-8966-e70c7e9db6c7",
				version = 2,
			},
		},
	},
	[155] = 
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
							actionLua = "local player = TensorCore.mGetPlayer()\nlocal sourcePos = player and player.pos\nlocal buffId\n\nif not buffId and player then\n    if TensorCore.hasBuff(player, 2155) then\n        buffId = 2155\n    elseif TensorCore.hasBuff(player, 2153) then\n        buffId = 2153\n    elseif TensorCore.hasBuff(player, 2154) then\n        buffId = 2154\n    elseif TensorCore.hasBuff(player, 2152) then\n        buffId = 2152\n    end\nend\n\nlocal markerId\nlocal offsetHeading\nlocal offsetDistance = 0\n\nif buffId == 2155 then\n    markerId = 3\nelseif buffId == 2153 then\n    markerId = 1\n    offsetHeading = math.pi\n    offsetDistance = 3\nelseif buffId == 2154 or buffId == 2152 then\n    markerId = 3\n    offsetHeading = math.pi\n    offsetDistance = 4\nend\n\nlocal targetPos\n\nif markerId then\n    local markerX, markerY, markerZ, markerActive = Argus.getWaymarkInfo(markerId)\n\n    if markerActive and markerX and markerY and markerZ then\n        targetPos = {\n            x = markerX,\n            y = markerY,\n            z = markerZ\n        }\n\n        if offsetDistance > 0 then\n            targetPos = TensorCore.getPosInDirection(targetPos, offsetHeading, offsetDistance)\n        end\n    end\nend\n\nif sourcePos and targetPos then\n    local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n    local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n    local scale = math.min(1, totalDistance / 15)\n    local baseWidth = math.max(0.5, 1 * scale)\n    local tipWidth = math.max(1.5, 3 * scale)\n    local tipLength = math.max(2, 3 * scale)\n    local baseLength = totalDistance - tipLength\n\n    if baseLength > 1 then\n        local arrowDrawer = TensorCore.getCachedDrawer(\n            0xFF00FFFF,\n            0xFF0088FF,\n            0xFF0000FF,\n            0xFFFFFFFF,\n            2\n        )\n        arrowDrawer:addArrow(\n            sourcePos.x,\n            sourcePos.y,\n            sourcePos.z,\n            heading,\n            baseLength,\n            baseWidth,\n            tipLength,\n            tipWidth,\n            false,\n            Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n        )\n    end\n\n    local blueDrawer = TensorCore.getCachedDrawer(nil, nil, 0xFFFF0000, 0xFFFF0000, 2)\n    blueDrawer:addCircle(targetPos.x, targetPos.y, targetPos.z, 0.4, false)\n\n    Argus.addCircleFilled(\n        targetPos.x,\n        targetPos.y,\n        targetPos.z,\n        0.15,\n        32,\n        0xFF00FF00,\n        nil,\n        0,\n        0,\n        0,\n        0,\n        false\n    )\nend\n\nself.used = true",
							endIfUsed = true,
							name = "Draw Final Word position",
							uuid = "cb5f7906-858b-6102-9679-0486a67b305d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				loop = true,
				mechanicTime = 909.1,
				name = "[Draw] Final Word Position Arrow",
				timeRange = true,
				timelineIndex = 155,
				timerEndOffset = 12,
				timerStartOffset = -1,
				uuid = "e451b1c4-bec8-725c-a535-41fe77d4c306",
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
				name = "P3 - Alexander Prime",
				uuid = "4e2173af-cab2-be74-b9ea-b2fdae5914a9",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "P3 - Alexander Prime",
				name = "Ordained Motion-Stillness",
				uuid = "1d438a0b-cf5a-86b8-a655-a7eb96a03007",
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
							aType = "Misc",
							name = "Stop Everything",
							stopAllActions = true,
							uuid = "907667ce-7934-1ea1-ac5e-82e6d7647865",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Misc",
							name = "Resume Everything",
							resumeAllActions = true,
							uuid = "24091ed2-634a-7aa5-b87c-4e9b77d09a72",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P3 - Alexander Prime/Ordained Motion-Stillness",
				mechanicTime = 916.1,
				name = "Ordained 916 - Stop and Resume",
				throttleTime = 3000,
				timeRange = true,
				timelineIndex = 156,
				timerEndOffset = 1,
				timerStartOffset = -2,
				uuid = "2097e17b-f083-6eb8-ae85-9cf9eaec9914",
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
							actionLua = "if data.teaOrdainedCurrent == \"stillness\" then\n    AnyoneCore.Shotcall(\"stop everything\", true, 3000, true)\nelseif data.teaOrdainedCurrent == \"motion\" then\n    AnyoneCore.Shotcall(\"keep moving\", true, 3000, true)\nend\nself.used = true",
							name = "Shotcall Ordained Type",
							uuid = "74e444cf-363a-336a-8727-b1247a9dd3d9",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P3 - Alexander Prime/Ordained Motion-Stillness",
				mechanicTime = 916.1,
				name = "Ordained 916 - Shotcall",
				timeRange = true,
				timelineIndex = 156,
				timerEndOffset = -1.7999999523163,
				timerStartOffset = -2,
				uuid = "5ecdcd37-ea72-5876-95bd-198cf156578d",
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
							actionLua = "if eventArgs.spellID == 18559 then\n    data.teaOrdainedCurrent = \"stillness\"\nelseif eventArgs.spellID == 18558 then\n    data.teaOrdainedCurrent = \"motion\"\nend",
							conditions = 
							{
								
								{
									"a8a1a703-38f7-936a-b948-b7e0117e8f35",
									true,
								},
							},
							name = "Store Ordained Type",
							uuid = "a3329e06-245a-4ab5-94f4-a1fd03967bf2",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityContentID == 9042 and (eventArgs.spellID == 18559 or eventArgs.spellID == 18558)",
							name = "BJ Ordained Channel",
							uuid = "a8a1a703-38f7-936a-b948-b7e0117e8f35",
							version = 3,
						},
					},
				},
				displayPath = "P3 - Alexander Prime/Ordained Motion-Stillness",
				eventType = 3,
				mechanicTime = 916.1,
				name = "Ordained - Capture Channel Type",
				timeRange = true,
				timelineIndex = 156,
				timerEndOffset = 8,
				timerStartOffset = -5,
				uuid = "28d568ad-c391-1c99-b7e5-0070473b3947",
				version = 2,
			},
		},
	},
	[157] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P3 - Alexander Prime",
				uuid = "16c9d248-cf34-e0b5-9d75-48ad8a76e61f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "P3 - Alexander Prime",
				name = "Ordained Motion-Stillness",
				uuid = "efb89c05-6833-916a-8263-5d30c7661a1e",
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
							actionLua = "if data.teaOrdainedCurrent == \"motion\" then\n    AnyoneCore.Shotcall(\"keep moving\", true, 3000, true)\nend\nself.used = true",
							name = "Shotcall Keep Moving if 916 Stillness",
							uuid = "1f832c7b-9af6-5626-b615-d92745b7d0c6",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "P3 - Alexander Prime/Ordained Motion-Stillness",
				mechanicTime = 926.3,
				name = "Ordained 926 - Shotcall",
				timeRange = true,
				timelineIndex = 157,
				timerEndOffset = -1.7999999523163,
				timerStartOffset = -2,
				uuid = "1d3bfeff-19ba-386a-84c5-639184f53f21",
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
							aType = "Misc",
							conditions = 
							{
								
								{
									"06af1c8a-d86f-8ab0-91ac-7c504899e190",
									true,
								},
							},
							name = "Stop Everything",
							stopAllActions = true,
							uuid = "f6eed7a4-270f-000f-9ef4-38be08ef4c52",
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
									"06af1c8a-d86f-8ab0-91ac-7c504899e190",
									true,
								},
							},
							name = "Resume Everything",
							resumeAllActions = true,
							uuid = "82fc1bb8-5c98-1e7c-82a8-0626d5bad7ff",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.teaOrdainedCurrent == \"stillness\"",
							name = "916 was Motion",
							uuid = "06af1c8a-d86f-8ab0-91ac-7c504899e190",
							version = 3,
						},
					},
				},
				displayPath = "P3 - Alexander Prime/Ordained Motion-Stillness",
				mechanicTime = 926.3,
				name = "Ordained 926 - Stop and Resume if 916 Motion",
				throttleTime = 3000,
				timeRange = true,
				timelineIndex = 157,
				timerEndOffset = 1,
				timerStartOffset = -2,
				uuid = "27cb4c37-8db6-93d7-8fbf-da9d915a4730",
				version = 2,
			},
		},
	},
	[166] = 
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
							actionLua = "local entity = eventArgs and eventArgs.entityID and TensorCore.mGetEntity(eventArgs.entityID)\nlocal entityPos = entity and entity.pos\n\nif entityPos then\n    data.finalWordSafeArea = data.finalWordSafeArea or {}\n    local state = data.finalWordSafeArea\n\n    local occlusionChannel = 0\n\n    if state.occlusionChannel ~= occlusionChannel then\n        state.occlusionChannel = occlusionChannel\n        state.baseDrawer = nil\n        state.occluder = nil\n    end\n\n    local timeout = 19000\n    local green = 0x6000FF00\n    local baseFlags =\n        Argus2.RenderFlags.FLAG_WARP_TERRAIN +\n        Argus2.RenderFlags.FLAG_OCCLUSION_BASE\n    local occludeFlags =\n        Argus2.RenderFlags.FLAG_WARP_TERRAIN +\n        Argus2.RenderFlags.FLAG_OCCLUDE\n\n    if state.baseDrawer == nil then\n        state.baseDrawer = TensorCore.getStaticDrawer(\n            green,\n            1,\n            occlusionChannel,\n            baseFlags\n        )\n        state.occluder = TensorCore.getStaticDrawer(\n            0xFFFFFFFF,\n            0,\n            occlusionChannel,\n            occludeFlags\n        )\n\n        state.baseDrawer:addTimedCenteredRect(\n            timeout,\n            100,\n            entityPos.y,\n            100,\n            40,\n            40,\n            0,\n            0,\n            false,\n            true\n        )\n    end\n\n    state.occluder:addTimedCross(\n        timeout,\n        entityPos.x,\n        entityPos.y,\n        entityPos.z,\n        100,\n        16,\n        entityPos.h or eventArgs.heading,\n        0,\n        false,\n        true\n    )\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"04643e72-ce47-0547-917e-a4167cf5eff7",
									true,
								},
								
								{
									"c2375a60-1e8c-5a9b-a145-171f3d542235",
									true,
								},
							},
							endIfUsed = true,
							name = "Draw Final Word subtractive cross",
							uuid = "19062d14-3844-a638-8a4f-14ccd548882a",
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
							eventArgOptionType = 2,
							eventEntityContentID = 9042,
							name = "Perfect Alexander",
							uuid = "04643e72-ce47-0547-917e-a4167cf5eff7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 18591,
							name = "Final Word Cross Cast",
							uuid = "c2375a60-1e8c-5a9b-a145-171f3d542235",
							version = 3,
						},
					},
				},
				eventType = 2,
				loop = true,
				mechanicTime = 975.9,
				name = "[Draw] Sacrament x3 Safe Area",
				timeRange = true,
				timelineIndex = 166,
				timerEndOffset = 1.1000000238419,
				timerStartOffset = -1.8999999761581,
				uuid = "60b6942b-6359-cde6-af08-161584cf56e0",
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
				name = "Fate Calibration Alpha",
				uuid = "f615695e-09af-d2f8-8d83-760fbcfa8758",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Fate Calibration Alpha",
				name = "Shotcalls",
				uuid = "6e63ad72-77b3-1393-9f27-0451cdfd4dea",
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
							actionLua = "self.used = true",
							conditions = 
							{
								
								{
									"9373c768-93d8-79a8-b1fc-eaf0cd3e75c6",
									true,
								},
							},
							name = "Keep shotcall armed",
							uuid = "8586d740-8f08-307a-a869-d7cbd19d0d01",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.fateAlpha = data.fateAlpha or {}\nlocal state = data.fateAlpha\n\nif state.assignmentShotcallDone ~= true then\n    state.assignmentShotcallDone = true\n    local duration = math.max(0.1, 988 - TensorReactions_CurrentTimer)\n    AnyoneCore.Shotcall(\"2. Nothing\", true, duration, true)\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"9373c768-93d8-79a8-b1fc-eaf0cd3e75c6",
									true,
								},
								
								{
									"9d5c16bb-3312-9944-8b21-c1b735d5a420",
									true,
								},
							},
							name = "Shotcall - 2. Nothing",
							uuid = "b944b6fa-8bc3-3571-9892-0edbd5634a3e",
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
							eventArgOptionType = 2,
							eventEntityContentID = 9042,
							name = "Perfect Alexander",
							uuid = "9373c768-93d8-79a8-b1fc-eaf0cd3e75c6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s = data.fateAlpha\nreturn s ~= nil and s.assignment == \"Nothing\" and eventArgs.spellID == 18596",
							dequeueIfLuaFalse = true,
							name = "Our Nothing",
							uuid = "9d5c16bb-3312-9944-8b21-c1b735d5a420",
							version = 3,
						},
					},
				},
				displayPath = "Fate Calibration Alpha/Shotcalls",
				eventType = 2,
				loop = true,
				mechanicTime = 982.6,
				name = "[Fate Alpha] Call 2 Nothing",
				timeRange = true,
				timelineIndex = 167,
				timerEndOffset = 20,
				timerStartOffset = -30,
				uuid = "cd3702ad-93c1-fa1b-8795-6834e8976166",
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
							actionLua = "self.used = true",
							conditions = 
							{
								
								{
									"d637f7d2-d9e6-ef29-b5f7-c9db4960943d",
									true,
								},
							},
							name = "Keep shotcall armed",
							uuid = "ef58af08-e614-2c81-af9f-c21e89f49f64",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.fateAlpha = data.fateAlpha or {}\nlocal state = data.fateAlpha\n\nif state.firstShotcallDone ~= true then\n    state.firstShotcallDone = true\n    local duration = math.max(0.1, 988 - TensorReactions_CurrentTimer)\n    AnyoneCore.Shotcall(\"1. Motion\", true, duration, true)\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"d637f7d2-d9e6-ef29-b5f7-c9db4960943d",
									true,
								},
								
								{
									"b6739729-27fb-33aa-8d41-0dd10008b6e2",
									true,
								},
							},
							name = "Shotcall - 1. Motion",
							uuid = "4286ad0b-f673-315a-ac02-4bd69297a377",
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
							eventArgOptionType = 2,
							eventEntityContentID = 9042,
							name = "Perfect Alexander",
							uuid = "d637f7d2-d9e6-ef29-b5f7-c9db4960943d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s = data.fateAlpha\nreturn s ~= nil and s.myProjection ~= nil and eventArgs.spellID == 19213 and eventArgs.targetID == s.myProjection",
							dequeueIfLuaFalse = true,
							name = "Our first Motion",
							uuid = "b6739729-27fb-33aa-8d41-0dd10008b6e2",
							version = 3,
						},
					},
				},
				displayPath = "Fate Calibration Alpha/Shotcalls",
				eventType = 2,
				loop = true,
				mechanicTime = 982.6,
				name = "[Fate Alpha] Call 1 Motion",
				timeRange = true,
				timelineIndex = 167,
				timerEndOffset = 20,
				timerStartOffset = -30,
				uuid = "de97bcd8-7293-2bdc-bc8e-ae9125ca1bbe",
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
							actionLua = "self.used = true",
							conditions = 
							{
								
								{
									"4ab33035-9467-eea6-af6a-07fc26c64a08",
									true,
								},
							},
							name = "Keep shotcall armed",
							uuid = "1c531ae5-7276-de0b-b686-b70649dfa333",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.fateAlpha = data.fateAlpha or {}\nlocal state = data.fateAlpha\n\nif state.thirdShotcallDone ~= true then\n    state.thirdShotcallDone = true\n    local duration = math.max(0.1, 988 - TensorReactions_CurrentTimer)\n    AnyoneCore.Shotcall(\"3. Motion\", true, duration, true)\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"4ab33035-9467-eea6-af6a-07fc26c64a08",
									true,
								},
								
								{
									"63ad1f9d-d7a3-3e7a-9299-41ccfa57f19f",
									true,
								},
							},
							name = "Shotcall - 3. Motion",
							uuid = "6caf2587-a798-f45e-8024-0b507e99ba00",
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
							eventArgOptionType = 2,
							eventEntityContentID = 9042,
							name = "Perfect Alexander",
							uuid = "4ab33035-9467-eea6-af6a-07fc26c64a08",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.spellID == 18585",
							dequeueIfLuaFalse = true,
							name = "Second Motion reveal",
							uuid = "63ad1f9d-d7a3-3e7a-9299-41ccfa57f19f",
							version = 3,
						},
					},
				},
				displayPath = "Fate Calibration Alpha/Shotcalls",
				eventType = 2,
				loop = true,
				mechanicTime = 982.6,
				name = "[Fate Alpha] Call 3 Motion",
				timeRange = true,
				timelineIndex = 167,
				timerEndOffset = 20,
				timerStartOffset = -30,
				uuid = "185ef935-ea08-09d7-be4b-a7707914569c",
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
							actionLua = "self.used = true",
							conditions = 
							{
								
								{
									"8e55b8c0-901e-d0e9-a496-3f8b488b1344",
									true,
								},
							},
							name = "Keep shotcall armed",
							uuid = "c6e2a5d7-4711-7d07-80fd-313839645ea0",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.fateAlpha = data.fateAlpha or {}\nlocal state = data.fateAlpha\n\nif state.firstShotcallDone ~= true then\n    state.firstShotcallDone = true\n    local duration = math.max(0.1, 988 - TensorReactions_CurrentTimer)\n    AnyoneCore.Shotcall(\"1. Stillness\", true, duration, true)\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"8e55b8c0-901e-d0e9-a496-3f8b488b1344",
									true,
								},
								
								{
									"d35c0367-8e65-20a7-832a-346969b30fa0",
									true,
								},
							},
							name = "Shotcall - 1. Stillness",
							uuid = "c3bcd898-b70e-85a4-bc0a-dd591e62ec07",
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
							eventArgOptionType = 2,
							eventEntityContentID = 9042,
							name = "Perfect Alexander",
							uuid = "8e55b8c0-901e-d0e9-a496-3f8b488b1344",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s = data.fateAlpha\nreturn s ~= nil and s.myProjection ~= nil and eventArgs.spellID == 19214 and eventArgs.targetID == s.myProjection",
							dequeueIfLuaFalse = true,
							name = "Our first Stillness",
							uuid = "d35c0367-8e65-20a7-832a-346969b30fa0",
							version = 3,
						},
					},
				},
				displayPath = "Fate Calibration Alpha/Shotcalls",
				eventType = 2,
				loop = true,
				mechanicTime = 982.6,
				name = "[Fate Alpha] Call 1 Stillness",
				timeRange = true,
				timelineIndex = 167,
				timerEndOffset = 20,
				timerStartOffset = -30,
				uuid = "79c062b7-0b95-c034-9b18-61daec6920c9",
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
							actionLua = "self.used = true",
							conditions = 
							{
								
								{
									"8aca5c6f-a5f2-a445-af96-3f5cc259632b",
									true,
								},
							},
							name = "Keep shotcall armed",
							uuid = "d290b1a2-a0ea-f283-9067-721a07098204",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.fateAlpha = data.fateAlpha or {}\nlocal state = data.fateAlpha\n\nif state.thirdShotcallDone ~= true then\n    state.thirdShotcallDone = true\n    local duration = math.max(0.1, 988 - TensorReactions_CurrentTimer)\n    AnyoneCore.Shotcall(\"3. Stillness\", true, duration, true)\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"8aca5c6f-a5f2-a445-af96-3f5cc259632b",
									true,
								},
								
								{
									"04ce874c-7cc5-072a-bbe1-09e79741097f",
									true,
								},
							},
							name = "Shotcall - 3. Stillness",
							uuid = "b89a8ce1-40df-ca4a-bc4b-209bbcf121ad",
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
							eventArgOptionType = 2,
							eventEntityContentID = 9042,
							name = "Perfect Alexander",
							uuid = "8aca5c6f-a5f2-a445-af96-3f5cc259632b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.spellID == 18586",
							dequeueIfLuaFalse = true,
							name = "Second Stillness reveal",
							uuid = "04ce874c-7cc5-072a-bbe1-09e79741097f",
							version = 3,
						},
					},
				},
				displayPath = "Fate Calibration Alpha/Shotcalls",
				eventType = 2,
				loop = true,
				mechanicTime = 982.6,
				name = "[Fate Alpha] Call 3 Stillness",
				timeRange = true,
				timelineIndex = 167,
				timerEndOffset = 20,
				timerStartOffset = -30,
				uuid = "91898d74-2a7a-c141-9b83-d7288422555c",
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
							actionLua = "self.used = true",
							conditions = 
							{
								
								{
									"adf96dc6-3ff4-fab1-bb3c-8668fe092bcb",
									true,
								},
							},
							name = "Keep shotcall armed",
							uuid = "02ce23a7-008c-e710-89b5-bb0b9e61a7f6",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.fateAlpha = data.fateAlpha or {}\nlocal state = data.fateAlpha\n\nif state.assignmentShotcallDone ~= true then\n    state.assignmentShotcallDone = true\n    local duration = math.max(0.1, 988 - TensorReactions_CurrentTimer)\n    AnyoneCore.Shotcall(\"2. Defamation\", true, duration, true)\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"adf96dc6-3ff4-fab1-bb3c-8668fe092bcb",
									true,
								},
								
								{
									"635ee900-445c-2c22-b45b-174fa1bc9621",
									true,
								},
							},
							name = "Shotcall - 2. Defamation",
							uuid = "65cdb168-6b31-0a27-ad1a-f248440eb273",
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
							eventArgOptionType = 2,
							eventEntityContentID = 9042,
							name = "Perfect Alexander",
							uuid = "adf96dc6-3ff4-fab1-bb3c-8668fe092bcb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s = data.fateAlpha\nreturn s ~= nil and s.assignment == \"Defamation\" and eventArgs.spellID == 18596",
							dequeueIfLuaFalse = true,
							name = "Our Defamation",
							uuid = "635ee900-445c-2c22-b45b-174fa1bc9621",
							version = 3,
						},
					},
				},
				displayPath = "Fate Calibration Alpha/Shotcalls",
				eventType = 2,
				loop = true,
				mechanicTime = 982.6,
				name = "[Fate Alpha] Call 2 Defamation",
				timeRange = true,
				timelineIndex = 167,
				timerEndOffset = 20,
				timerStartOffset = -30,
				uuid = "50fb46e7-dcf1-cce7-962b-8aace02b7fd0",
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
							actionLua = "self.used = true",
							conditions = 
							{
								
								{
									"cffaed13-ed8d-c3c7-9ec8-89795a06189e",
									true,
								},
							},
							name = "Keep shotcall armed",
							uuid = "4ae49bdd-9996-7242-99ae-3e11fe644e4d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.fateAlpha = data.fateAlpha or {}\nlocal state = data.fateAlpha\n\nif state.assignmentShotcallDone ~= true then\n    state.assignmentShotcallDone = true\n    local duration = math.max(0.1, 988 - TensorReactions_CurrentTimer)\n    AnyoneCore.Shotcall(\"2. Aggravated Assault\", true, duration, true)\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"cffaed13-ed8d-c3c7-9ec8-89795a06189e",
									true,
								},
								
								{
									"5c4a9d1d-d64b-1cf3-ae20-8bbb133edd90",
									true,
								},
							},
							name = "Shotcall - 2. Aggravated Assault",
							uuid = "9ae3605f-fe19-80b4-b83c-959bf00b68ff",
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
							eventArgOptionType = 2,
							eventEntityContentID = 9042,
							name = "Perfect Alexander",
							uuid = "cffaed13-ed8d-c3c7-9ec8-89795a06189e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s = data.fateAlpha\nreturn s ~= nil and s.assignment == \"Aggravated Assault\" and s.myProjection ~= nil and eventArgs.spellID == 18597 and eventArgs.targetID == s.myProjection",
							dequeueIfLuaFalse = true,
							name = "Our Aggravated Assault",
							uuid = "5c4a9d1d-d64b-1cf3-ae20-8bbb133edd90",
							version = 3,
						},
					},
				},
				displayPath = "Fate Calibration Alpha/Shotcalls",
				eventType = 2,
				loop = true,
				mechanicTime = 982.6,
				name = "[Fate Alpha] Call 2 Aggravated Assault",
				timeRange = true,
				timelineIndex = 167,
				timerEndOffset = 20,
				timerStartOffset = -30,
				uuid = "190a0871-699c-8ff5-a488-85a35c016b68",
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
							actionLua = "self.used = true",
							conditions = 
							{
								
								{
									"6e0cc3d3-f89c-1836-9cdf-4797be4352ee",
									true,
								},
							},
							name = "Keep shotcall armed",
							uuid = "08c67ab7-6dce-5203-abd6-e6045e83fa58",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.fateAlpha = data.fateAlpha or {}\nlocal state = data.fateAlpha\n\nif state.assignmentShotcallDone ~= true then\n    state.assignmentShotcallDone = true\n    local duration = math.max(0.1, 988 - TensorReactions_CurrentTimer)\n    AnyoneCore.Shotcall(\"2. Shared Sentence\", true, duration, true)\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"6e0cc3d3-f89c-1836-9cdf-4797be4352ee",
									true,
								},
								
								{
									"e7c14e07-fc7e-2ca5-8c4f-f63d98580ef0",
									true,
								},
							},
							name = "Shotcall - 2. Shared Sentence",
							uuid = "aa9ec059-56ab-aab8-874d-2788fda0e7f1",
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
							eventArgOptionType = 2,
							eventEntityContentID = 9042,
							name = "Perfect Alexander",
							uuid = "6e0cc3d3-f89c-1836-9cdf-4797be4352ee",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s = data.fateAlpha\nreturn s ~= nil and s.assignment == \"Shared Sentence\" and s.myProjection ~= nil and eventArgs.spellID == 18598 and eventArgs.targetID == s.myProjection",
							dequeueIfLuaFalse = true,
							name = "Our Shared Sentence",
							uuid = "e7c14e07-fc7e-2ca5-8c4f-f63d98580ef0",
							version = 3,
						},
					},
				},
				displayPath = "Fate Calibration Alpha/Shotcalls",
				eventType = 2,
				loop = true,
				mechanicTime = 982.6,
				name = "[Fate Alpha] Call 2 Shared Sentence",
				timeRange = true,
				timelineIndex = 167,
				timerEndOffset = 20,
				timerStartOffset = -30,
				uuid = "6675dc8c-481e-d1ba-afe2-680a1c8109ba",
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
							actionLua = "data.fateAlpha = data.fateAlpha or {}\nlocal state = data.fateAlpha\nlocal spellID = eventArgs.spellID\n\nif spellID == 18555 then\n    data.fateAlpha = {\n        tetherCount = 0,\n        sacramentCount = 0,\n        sacramentCasters = {}\n    }\n    self.used = true\n    return\nend\n\nif (spellID == 18596 or spellID == 18597 or spellID == 18598)\n    and state.myProjection\n    and eventArgs.targetID == state.myProjection then\n    state.myClone = eventArgs.entityID\nend\n\nif spellID == 18591 then\n    state.sacramentCasters = state.sacramentCasters or {}\n\n    if not state.sacramentCasters[eventArgs.entityID] then\n        state.sacramentCasters[eventArgs.entityID] = true\n        state.sacramentCount = (state.sacramentCount or 0) + 1\n    end\n\n    if state.sacramentCount >= 3 and state.safeDX == nil then\n        if state.findSafeClone == nil then\n            function state.findSafeClone(entityID, mechanicState)\n                if mechanicState.sacramentCasters[entityID] then\n                    return true\n                end\n\n                local entity = TensorCore.mGetEntity(entityID)\n                local pos = entity and entity.pos\n\n                if pos then\n                    local dx = pos.x - 100\n                    local dz = pos.z - 100\n                    local radiusSquared = dx * dx + dz * dz\n\n                    if radiusSquared > 500 and radiusSquared < 625 then\n                        local radius = math.sqrt(radiusSquared)\n                        mechanicState.safeDX = dx / radius\n                        mechanicState.safeDZ = dz / radius\n                        return false\n                    end\n                end\n\n                return true\n            end\n        end\n\n        TensorCore.forEachEntity(\"contentid=9042\", state.findSafeClone, state)\n\n        if state.safeDX and state.assignment then\n            local dx = state.safeDX\n            local dz = state.safeDZ\n            local target = state.targetPos or {}\n            state.targetPos = target\n            target.y = 0\n\n            if state.assignment == \"Defamation\" then\n                target.x = 100 + 18 * dx\n                target.z = 100 + 18 * dz\n            elseif state.assignment == \"Aggravated Assault\" then\n                target.x = 100 - 18 * dx - 3 * dz\n                target.z = 100 - 18 * dz + 3 * dx\n            else\n                target.x = 100 - 18 * dx + 3 * dz\n                target.z = 100 - 18 * dz - 3 * dx\n            end\n        end\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"5434bca6-d7ea-a021-847f-b52c7f5f2fa9",
									true,
								},
							},
							name = "Record Fate Alpha event",
							uuid = "6fdabd16-fdb5-b247-8c34-5730969203f2",
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
							eventArgOptionType = 2,
							eventEntityContentID = 9042,
							name = "Perfect Alexander",
							uuid = "5434bca6-d7ea-a021-847f-b52c7f5f2fa9",
							version = 3,
						},
					},
				},
				displayPath = "Fate Calibration Alpha",
				eventType = 2,
				loop = true,
				mechanicTime = 982.6,
				name = "[Fate Alpha] Safe Spot Tracker",
				timeRange = true,
				timelineIndex = 167,
				timerEndOffset = 20,
				timerStartOffset = -30,
				uuid = "53ecaf26-f83a-97dc-91d6-6682b3cff8b7",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Fate Calibration Alpha",
				name = "Ordained",
				uuid = "fb26b576-f6b7-efc6-b689-fc633ff31555",
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
							actionLua = "if eventArgs.spellID == 19214 then\n    data.teaOrdained989Type = \"stillness\"\nelseif eventArgs.spellID == 19213 then\n    data.teaOrdained989Type = \"motion\"\nend\nself.used = true",
							conditions = 
							{
								
								{
									"37b3181b-dae7-4c63-aed2-de39fa3e9327",
									true,
								},
							},
							name = "Store Our 989 Ordained Type",
							uuid = "3aa453fa-18ff-7ef7-8e5b-d9736069ad4d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s = data.fateAlpha\nreturn s ~= nil and s.myProjection ~= nil and (eventArgs.spellID == 19213 or eventArgs.spellID == 19214) and eventArgs.targetID == s.myProjection",
							dequeueIfLuaFalse = true,
							name = "Our first projection gets Ordained",
							uuid = "37b3181b-dae7-4c63-aed2-de39fa3e9327",
							version = 3,
						},
					},
				},
				displayPath = "Fate Calibration Alpha/Ordained",
				eventType = 2,
				mechanicTime = 982.6,
				name = "Fate Alpha - Capture 989 Ordained Type",
				timeRange = true,
				timelineIndex = 167,
				timerEndOffset = 13,
				timerStartOffset = -20,
				uuid = "49eec3fa-6f7b-28e2-a26a-61dac1c92046",
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
							actionLua = "if eventArgs.spellID == 18586 then\n    data.teaOrdained993Type = \"stillness\"\nelseif eventArgs.spellID == 18585 then\n    data.teaOrdained993Type = \"motion\"\nend\nself.used = true",
							conditions = 
							{
								
								{
									"ca4c9c4e-692e-46e2-b012-e429c01eee6d",
									true,
								},
							},
							name = "Store Our 993 Ordained Type",
							uuid = "d523fbb2-4c0c-f762-bf3d-512145e60531",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s = data.fateAlpha\nreturn s ~= nil and s.myProjection ~= nil and (eventArgs.spellID == 18585 or eventArgs.spellID == 18586) and eventArgs.targetID == s.myProjection",
							dequeueIfLuaFalse = true,
							name = "Our second projection gets Ordained",
							uuid = "ca4c9c4e-692e-46e2-b012-e429c01eee6d",
							version = 3,
						},
					},
				},
				displayPath = "Fate Calibration Alpha/Ordained",
				eventType = 2,
				mechanicTime = 982.6,
				name = "Fate Alpha - Capture 993 Ordained Type",
				timeRange = true,
				timelineIndex = 167,
				timerEndOffset = 13,
				timerStartOffset = -20,
				uuid = "5d69d2dc-3751-8d8b-803a-96960d352e30",
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
							actionLua = "local player = TensorCore.mGetPlayer()\ndata.fateAlpha = data.fateAlpha or {}\nlocal state = data.fateAlpha\n\nstate.tetherCount = (state.tetherCount or 0) + 1\n\nif player and eventArgs.sourceEntityID == player.id then\n    state.myProjection = eventArgs.newTargetID\n    state.myTetherOrder = state.tetherCount\nend\n\nif state.tetherCount == 8 and state.myTetherOrder then\n    local order = state.myTetherOrder\n\n    if order <= 3 then\n        state.assignment = \"Nothing\"\n    elseif order <= 6 then\n        state.assignment = \"Aggravated Assault\"\n    elseif order == 7 then\n        state.assignment = \"Defamation\"\n    else\n        state.assignment = \"Shared Sentence\"\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"b1314324-9264-25b5-9a04-6938039c3d3c",
									true,
								},
							},
							name = "Store tether and LPDU assignment",
							uuid = "98af343d-d443-fada-8841-a4c69ab91882",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.newTetherID == 98",
							dequeueIfLuaFalse = true,
							name = "Projection tether",
							uuid = "b1314324-9264-25b5-9a04-6938039c3d3c",
							version = 3,
						},
					},
				},
				displayPath = "Fate Calibration Alpha",
				eventType = 15,
				loop = true,
				mechanicTime = 982.6,
				name = "[Fate Alpha] Track Projection Tethers",
				timeRange = true,
				timelineIndex = 167,
				timerEndOffset = 20,
				timerStartOffset = -30,
				uuid = "013458cc-64be-58cf-ae0d-24265e7ae177",
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
							actionLua = "local state = data.fateAlpha\nlocal player = TensorCore.mGetPlayer()\nlocal sourcePos = player and player.pos\nlocal targetPos = state and state.targetPos\n\nif sourcePos and targetPos then\n    local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n    local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n    local scale = math.min(1, totalDistance / 15)\n    local baseWidth = math.max(0.5, scale)\n    local tipWidth = math.max(1.5, 3 * scale)\n    local tipLength = math.max(2, 3 * scale)\n    local baseLength = totalDistance - tipLength\n\n    if baseLength > 1 then\n        local arrowDrawer = TensorCore.getCachedDrawer(\n            0xFF00FFFF,\n            0xFF0088FF,\n            0xFF0000FF,\n            0xFFFFFFFF,\n            2\n        )\n        arrowDrawer:addArrow(\n            sourcePos.x,\n            sourcePos.y,\n            sourcePos.z,\n            heading,\n            baseLength,\n            baseWidth,\n            tipLength,\n            tipWidth,\n            false,\n            Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n        )\n    end\n\n    local spotDrawer = TensorCore.getCachedDrawer(\n        nil,\n        nil,\n        0xFF00FF00,\n        0xFFFFFFFF,\n        2\n    )\n    spotDrawer:addCircle(\n        targetPos.x,\n        targetPos.y,\n        targetPos.z,\n        1,\n        false,\n        Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"eb501148-df25-548f-b01a-520d688a0b95",
									true,
								},
							},
							name = "Draw LPDU position arrow",
							uuid = "3e3aba67-2b96-ff16-8833-c24cea6958ff",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s = data.fateAlpha\nreturn s ~= nil and s.targetPos ~= nil",
							name = "Position known",
							uuid = "eb501148-df25-548f-b01a-520d688a0b95",
							version = 3,
						},
					},
				},
				displayPath = "Fate Calibration Alpha",
				eventType = 12,
				loop = true,
				mechanicTime = 982.6,
				name = "[Fate Alpha] Position Arrow",
				timeRange = true,
				timelineIndex = 167,
				timerEndOffset = 20,
				timerStartOffset = -30,
				uuid = "2f26948c-00da-4466-b930-7f7a3e13cf2c",
				version = 2,
			},
		},
	},
	[169] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Fate Calibration Alpha",
				uuid = "162dc25a-babb-a6d5-bc9b-a33dd6eafed5",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Fate Calibration Alpha",
				name = "Ordained",
				uuid = "ded65a3c-8f6d-ae14-89fa-e373d834fc6f",
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
							aType = "Misc",
							conditions = 
							{
								
								{
									"616f7299-82ec-b155-b85a-dbf02305b655",
									true,
								},
							},
							name = "Stop Everything for Stillness",
							stopAllActions = true,
							uuid = "071e9504-bf65-46ac-8bdb-bf7bda711f1c",
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
									"616f7299-82ec-b155-b85a-dbf02305b655",
									true,
								},
							},
							name = "Resume Everything after 989 Stillness",
							resumeAllActions = true,
							uuid = "db19362d-118a-aeaa-bcb7-52a522f2ba3e",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "if data.teaOrdained989Type == \"stillness\" then\n    AnyoneCore.Shotcall(\"stop everything\", true, 3000, true)\nelseif data.teaOrdained989Type == \"motion\" then\n    AnyoneCore.Shotcall(\"keep moving\", true, 3000, true)\nend\nself.used = true",
							name = "Shotcall 989 Ordained Type",
							uuid = "90bde5ee-0c0f-70de-b496-8bbc1c1c2b94",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.teaOrdained989Type == \"stillness\"",
							dequeueIfLuaFalse = true,
							name = "Our 989 fate is Stillness",
							uuid = "616f7299-82ec-b155-b85a-dbf02305b655",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.teaOrdained989Type == \"motion\"",
							dequeueIfLuaFalse = true,
							name = "Our 989 fate is Motion",
							uuid = "ba71fc65-2337-b4db-b4f7-546543d2b8ad",
							version = 3,
						},
					},
				},
				displayPath = "Fate Calibration Alpha/Ordained",
				mechanicTime = 989.8,
				name = "Fate Alpha - Ordained 989 Actions",
				throttleTime = 2900,
				timeRange = true,
				timelineIndex = 169,
				timerEndOffset = 1.2000000476837,
				timerStartOffset = -2,
				uuid = "1bda8ec1-0bfa-c3d4-b924-116310d96bb6",
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
							actionLua = "if data.teaOrdained989Type == \"stillness\" then\n    AnyoneCore.Shotcall(\"stop everything\", true, 3000, true)\nelseif data.teaOrdained989Type == \"motion\" then\n    AnyoneCore.Shotcall(\"keep moving\", true, 3000, true)\nend\nself.used = true",
							name = "Shotcall 989 Ordained Type",
							uuid = "29139eda-d06b-0377-9939-f5a9fc885512",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Fate Calibration Alpha/Ordained",
				mechanicTime = 989.8,
				name = "Fate Alpha - Ordained 989 Shotcall",
				timeRange = true,
				timelineIndex = 169,
				timerEndOffset = -1.8,
				timerStartOffset = -2,
				uuid = "6157d078-8d53-5883-a437-67b3e2492c56",
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
				name = "Fate Calibration Alpha",
				uuid = "fcf0f756-ced2-3601-9986-8348a0fc66fa",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Fate Calibration Alpha",
				name = "Ordained",
				uuid = "b8518615-e0bb-3f67-9c40-9de6db7d3ef9",
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
							aType = "Misc",
							conditions = 
							{
								
								{
									"67458d77-0a6c-ab70-b318-9ef502ac366f",
									true,
								},
							},
							name = "Stop Everything for 993 Stillness",
							stopAllActions = true,
							uuid = "df94b18e-ced4-c126-83c5-d79d1846b124",
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
									"67458d77-0a6c-ab70-b318-9ef502ac366f",
									true,
								},
							},
							name = "Resume Everything after 993 Stillness",
							resumeAllActions = true,
							uuid = "b77777ac-c0df-1378-9a73-d6c22dfacb91",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "if data.teaOrdained993Type == \"stillness\" then\n    AnyoneCore.Shotcall(\"stop everything\", true, 3000, true)\nelseif data.teaOrdained993Type == \"motion\" then\n    AnyoneCore.Shotcall(\"keep moving\", true, 3000, true)\nend\nself.used = true",
							name = "Shotcall 993 Ordained Type",
							uuid = "2a4d7874-1b3b-c72d-8541-c81b42e97b0d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.teaOrdained993Type == \"stillness\"",
							dequeueIfLuaFalse = true,
							name = "Our 993 fate is Stillness",
							uuid = "67458d77-0a6c-ab70-b318-9ef502ac366f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.teaOrdained993Type == \"motion\"",
							dequeueIfLuaFalse = true,
							name = "Our 993 fate is Motion",
							uuid = "13e97523-f7f4-7dae-b3e5-1bf9dd8062da",
							version = 3,
						},
					},
				},
				displayPath = "Fate Calibration Alpha/Ordained",
				mechanicTime = 993.8,
				name = "Fate Alpha - Ordained 993 Actions",
				throttleTime = 2900,
				timeRange = true,
				timelineIndex = 171,
				timerEndOffset = 1.2,
				timerStartOffset = -2,
				uuid = "d9abfaf4-0a4a-e08f-b62c-1c4f7da9dbac",
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
							actionLua = "if data.teaOrdained993Type == \"stillness\" then\n    AnyoneCore.Shotcall(\"stop everything\", true, 3000, true)\nelseif data.teaOrdained993Type == \"motion\" then\n    AnyoneCore.Shotcall(\"keep moving\", true, 3000, true)\nend\nself.used = true",
							name = "Shotcall 993 Ordained Type",
							uuid = "d6928352-e93c-e937-a0e7-791febcc1492",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Fate Calibration Alpha/Ordained",
				mechanicTime = 993.8,
				name = "Fate Alpha - Ordained 993 Shotcall",
				timeRange = true,
				timelineIndex = 171,
				timerEndOffset = -1.8,
				timerStartOffset = -2,
				uuid = "6e2d6b48-0193-735b-a56d-b1b627a618f7",
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
				name = "Fate Calibration Beta",
				uuid = "3bc2872e-1f8e-3efa-aa33-752c62d9ccf5",
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
							actionLua = "local state = data.fateBeta\nlocal player = TensorCore.mGetPlayer()\nlocal sourcePos = player and player.pos\nlocal targetPos = state and state.targetPos\n\nif sourcePos and targetPos then\n    local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n    local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n    local scale = math.min(1, totalDistance / 15)\n    local baseWidth = math.max(0.5, scale)\n    local tipWidth = math.max(1.5, 3 * scale)\n    local tipLength = math.max(2, 3 * scale)\n    local baseLength = totalDistance - tipLength\n\n    if baseLength > 1 then\n        local arrowDrawer = TensorCore.getCachedDrawer(\n            0xFF00FFFF,\n            0xFF0088FF,\n            0xFF0000FF,\n            0xFFFFFFFF,\n            2\n        )\n        arrowDrawer:addArrow(\n            sourcePos.x,\n            sourcePos.y,\n            sourcePos.z,\n            heading,\n            baseLength,\n            baseWidth,\n            tipLength,\n            tipWidth,\n            false,\n            Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n        )\n    end\n\n    local spotDrawer = TensorCore.getCachedDrawer(\n        nil,\n        nil,\n        0xFF00FF00,\n        0xFFFFFFFF,\n        2\n    )\n    spotDrawer:addCircle(\n        targetPos.x,\n        targetPos.y,\n        targetPos.z,\n        0.5,\n        false,\n        Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"b7566728-1bb1-19d1-ae2a-499249a74eca",
									true,
								},
							},
							name = "Draw LPDU position arrow",
							uuid = "0ed53cfd-9375-346a-8666-8f3022c01182",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local state = data.fateBeta\nreturn state ~= nil and state.targetPos ~= nil",
							name = "Position known",
							uuid = "b7566728-1bb1-19d1-ae2a-499249a74eca",
							version = 3,
						},
					},
				},
				displayPath = "Fate Calibration Beta",
				eventType = 12,
				loop = true,
				mechanicTime = 1032.3,
				name = "[Fate Beta] Position Arrow",
				timeRange = true,
				timelineIndex = 179,
				timerEndOffset = 43.700000762939,
				timerStartOffset = -5,
				uuid = "72b0810f-d804-30ac-a1f4-3ee16a85813a",
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
							actionLua = "local state = data.fateBeta\nlocal spellID = eventArgs.spellID\n\nif state then\n    if spellID == 18590 then\n        if state.donutPos == nil then\n            local caster = TensorCore.mGetEntity(eventArgs.entityID)\n            if caster and caster.pos then\n                state.donutPos = {\n                    x = caster.pos.x,\n                    y = caster.pos.y,\n                    z = caster.pos.z\n                }\n            end\n        end\n    elseif spellID == 18592 or spellID == 18593 then\n        if spellID == 18592 then\n            state.opticalSight = \"Spread\"\n            state.stackDirection = nil\n        else\n            state.opticalSight = \"Stack\"\n            state.stackDirection = state.color == \"Light\" and \"North\" or \"South\"\n        end\n\n        if state.mechanicShotcallDone ~= true then\n            state.mechanicShotcallDone = true\n            local call\n            if spellID == 18592 then\n                call = \"Spread\"\n            elseif state.color == \"Light\" then\n                call = \"Stack north\"\n            else\n                call = \"Stack south\"\n            end\n\n            local duration = math.max(0.1, 1087 - TensorReactions_CurrentTimer)\n            AnyoneCore.Shotcall(call, true, duration, true)\n        end\n    elseif spellID == 18565 then\n        if state.firstArrowCleared ~= true then\n            state.firstArrowCleared = true\n            state.targetPos = nil\n            state.arrowStage = nil\n        end\n    elseif spellID == 18861 or spellID == 18862 then\n        if state.secondArrowStarted ~= true and state.donutPos then\n            state.secondArrowStarted = true\n            state.targetPos = {\n                x = state.donutPos.x,\n                y = state.donutPos.y,\n                z = state.donutPos.z\n            }\n            state.arrowStage = \"second\"\n\n            local duration = math.max(0.1, 1093.6 - TensorReactions_CurrentTimer)\n            AnyoneCore.Shotcall(\"Under donut\", true, duration, true)\n        end\n    elseif spellID == 18566 then\n        state.targetPos = nil\n        state.arrowStage = nil\n        state.finished = true\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"6b35243f-2083-9702-b574-6883263a2a42",
									true,
								},
							},
							name = "Update Beta phase and callout",
							uuid = "b8e72ede-c37b-bbe7-8f47-107cad05e7af",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local id = eventArgs.spellID\nreturn id == 18590 or id == 18592 or id == 18593 or id == 18565 or id == 18861 or id == 18862 or id == 18566",
							dequeueIfLuaFalse = true,
							name = "Relevant Beta cast",
							uuid = "6b35243f-2083-9702-b574-6883263a2a42",
							version = 3,
						},
					},
				},
				displayPath = "Fate Calibration Beta",
				eventType = 2,
				loop = true,
				mechanicTime = 1032.3,
				name = "[Fate Beta] Track Future Mechanics",
				timeRange = true,
				timelineIndex = 179,
				timerEndOffset = 65,
				timerStartOffset = -5,
				uuid = "56b7ad71-81ec-1bc4-9475-359bcc696c2f",
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
							actionLua = "data.fateBeta = data.fateBeta or {}\nlocal state = data.fateBeta\nlocal player = TensorCore.mGetPlayer()\nlocal now = TensorReactions_CurrentTimer\n\nif state.lastTetherTimer == nil\n    or now < state.lastTetherTimer\n    or now - state.lastTetherTimer > 2\nthen\n    state = {}\n    data.fateBeta = state\nend\n\nstate.lastTetherTimer = now\nstate.tetherCount = (state.tetherCount or 0) + 1\n\nif player and eventArgs.sourceEntityID == player.id then\n    state.myProjection = eventArgs.newTargetID\n    state.myTetherOrder = state.tetherCount\n\n    local reverseIndex = 8 - state.myTetherOrder\n    local assignments = {\n        [0] = { role = \"Dark Beacon\", color = \"Dark\", x = 114, z = 100, call = \"Dark beacon - 2 marker\" },\n        [1] = { role = \"Light Beacon\", color = \"Light\", x = 92, z = 84, call = \"Light beacon - 3 marker\" },\n        [2] = { role = \"Dark Nothing\", color = \"Dark\", x = 111, z = 100, call = \"Dark nothing - west of 2\" },\n        [3] = { role = \"Light Follow\", color = \"Light\", x = 111, z = 98, call = \"Light follow - northwest of 2\" },\n        [4] = { role = \"Dark House Arrest\", color = \"Dark\", x = 111, z = 98, call = \"Dark House Arrest - northwest of 2\" },\n        [5] = { role = \"Light Follow\", color = \"Light\", x = 111, z = 98, call = \"Light follow - northwest of 2\" },\n        [6] = { role = \"Dark Restraining Order\", color = \"Dark\", x = 111, z = 102, call = \"Dark Restraining Order - southwest of 2\" },\n        [7] = { role = \"Light Follow\", color = \"Light\", x = 111, z = 98, call = \"Light follow - northwest of 2\" }\n    }\n\n    local assignment = assignments[reverseIndex]\n    state.assignment = assignment.role\n    state.color = assignment.color\n\n    if assignment.role == \"Light Beacon\" then\n        local x, y, z, isActive = Argus.getWaymarkInfo(7)\n        if isActive then\n            state.targetPos = { x = x, y = y, z = z }\n        else\n            state.targetPos = { x = assignment.x, y = 0, z = assignment.z }\n        end\n    else\n        local x, y, z, isActive = Argus.getWaymarkInfo(6)\n        if isActive then\n            local diagonal = 1.8 / math.sqrt(2)\n            if assignment.role == \"Dark Beacon\" then\n                state.targetPos = { x = x, y = y, z = z }\n            elseif assignment.role == \"Dark Nothing\" then\n                state.targetPos = { x = x - 1.8, y = y, z = z }\n            elseif assignment.role == \"Dark Restraining Order\" then\n                state.targetPos = { x = x - diagonal, y = y, z = z + diagonal }\n            else\n                state.targetPos = { x = x - diagonal, y = y, z = z - diagonal }\n            end\n        else\n            state.targetPos = { x = assignment.x, y = 0, z = assignment.z }\n        end\n    end\n\n    state.arrowStage = \"first\"\n\n    if state.assignmentShotcallDone ~= true then\n        state.assignmentShotcallDone = true\n        local duration = math.max(0.1, 1082.5 - TensorReactions_CurrentTimer)\n        AnyoneCore.Shotcall(assignment.call, true, duration, true)\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"ef0d2ec9-dd2e-9b79-9153-94bc7baee177",
									true,
								},
							},
							name = "Assign LPDU position and callout",
							uuid = "2036a1e0-b864-44e4-ae67-ec12e1eab9bf",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.newTetherID == 98",
							dequeueIfLuaFalse = true,
							name = "Projection tether",
							uuid = "ef0d2ec9-dd2e-9b79-9153-94bc7baee177",
							version = 3,
						},
					},
				},
				displayPath = "Fate Calibration Beta",
				eventType = 15,
				loop = true,
				mechanicTime = 1032.3,
				name = "[Fate Beta] Track Projection Tethers",
				timeRange = true,
				timelineIndex = 179,
				timerEndOffset = 65,
				timerStartOffset = -5,
				uuid = "e76fb6f8-10e1-dfa5-bda2-97371eb4c657",
				version = 2,
			},
		},
	},
	[181] = 
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
							actionLua = "local state = data.fateBetaJJump\nlocal entityIDs = state and state.entityIDs\n\nif entityIDs then\n    local party = TensorCore.getEntityGroupList(\"Party\")\n\n    if party then\n        local drawer = TensorCore.getCachedDrawer(\n            nil,\n            nil,\n            0xFF0000FF,\n            0xFF0000FF,\n            2\n        )\n\n        for i = 1, #entityIDs do\n            local source = TensorCore.mGetEntity(entityIDs[i])\n\n            if source and source.pos then\n                local furthestPlayer\n                local furthestDistanceSquared = -1\n\n                for _, member in pairs(party) do\n                    if member and member.pos then\n                        local dx = member.pos.x - source.pos.x\n                        local dz = member.pos.z - source.pos.z\n                        local distanceSquared = dx * dx + dz * dz\n\n                        if distanceSquared > furthestDistanceSquared then\n                            furthestDistanceSquared = distanceSquared\n                            furthestPlayer = member\n                        end\n                    end\n                end\n\n                if furthestPlayer and furthestPlayer.pos then\n                    drawer:addCircle(\n                        furthestPlayer.pos.x,\n                        furthestPlayer.pos.y,\n                        furthestPlayer.pos.z,\n                        10,\n                        false\n                    )\n                end\n            end\n        end\n    end\nend\n\nself.used = true",
							endIfUsed = true,
							name = "Draw J Jump furthest target circles",
							uuid = "087e7619-c6c0-14fd-a7bb-24b621f4aa6b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				enabled = false,
				eventType = 12,
				loop = true,
				mechanicTime = 1050.5,
				name = "[Fate Beta] Draw J Jump Furthest Targets",
				timeRange = true,
				timelineIndex = 181,
				timerEndOffset = 2,
				timerStartOffset = -3,
				uuid = "cebf64ff-573d-6cba-bf68-ab4bcef67de1",
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
							actionLua = "local state = data.fateBetaJJump\nif state == nil then\n    state = {}\n    data.fateBetaJJump = state\nend\n\nstate.entityIDs = state.entityIDs or {}\nlocal entityID = eventArgs.entityID\n\nif entityID then\n    local known = false\n\n    for i = 1, #state.entityIDs do\n        if state.entityIDs[i] == entityID then\n            known = true\n            break\n        end\n    end\n\n    if not known and #state.entityIDs < 3 then\n        state.entityIDs[#state.entityIDs + 1] = entityID\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"65be29c3-98f6-5056-bf87-ca649072cf9e",
									true,
								},
								
								{
									"d2fa61a9-9bb9-5366-bcbc-fe4c25ec5f08",
									true,
								},
							},
							name = "Save J Jump source entity ID",
							uuid = "1ba99e83-e124-7c4c-8e7c-eb2525d438b1",
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
							eventArgOptionType = 2,
							eventEntityContentID = 9042,
							name = "Perfect Alexander",
							uuid = "65be29c3-98f6-5056-bf87-ca649072cf9e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 18589,
							name = "J Jump",
							uuid = "d2fa61a9-9bb9-5366-bcbc-fe4c25ec5f08",
							version = 3,
						},
					},
				},
				eventType = 2,
				loop = true,
				mechanicTime = 1050.5,
				name = "[Fate Beta] Track J Jump Sources",
				timeRange = true,
				timelineIndex = 181,
				timerEndOffset = 2,
				timerStartOffset = -3,
				uuid = "408b6b94-b848-b2fa-abe7-3b71baa87b9f",
				version = 2,
			},
		},
	},
	[184] = 
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
							actionLua = "local state = data.fateBeta or {}\ndata.fateBeta = state\nstate.radiantSacramentEntityID = eventArgs.entityID\nself.used = true",
							conditions = 
							{
								
								{
									"90b54cf6-86d5-efee-80ea-092a4dcad078",
									true,
								},
								
								{
									"cae9a57a-9cd1-4cd3-9be1-eed3e1446864",
									true,
								},
							},
							name = "Save Radiant Sacrament source entity ID",
							uuid = "932d4000-f77e-f639-8e7c-b97a90232c2e",
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
							eventArgOptionType = 2,
							eventEntityContentID = 9042,
							name = "Perfect Alexander",
							uuid = "90b54cf6-86d5-efee-80ea-092a4dcad078",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 18590,
							name = "Radiant Sacrament donut",
							uuid = "cae9a57a-9cd1-4cd3-9be1-eed3e1446864",
							version = 3,
						},
					},
				},
				eventType = 2,
				loop = true,
				mechanicTime = 1061.5,
				name = "[Fate Beta] Track Radiant Sacrament Source",
				timeRange = true,
				timelineIndex = 184,
				timerEndOffset = 2,
				timerStartOffset = -3,
				uuid = "95ffb8af-cda8-df94-a13a-ffbd1beb7e8f",
				version = 2,
			},
		},
	},
	[188] = 
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
							actionLua = "local state = data.fateBetaJJump\nlocal entityIDs = state and state.entityIDs\n\nif entityIDs then\n    local party = TensorCore.getEntityGroupList(\"Party\")\n\n    if party then\n        local drawer = TensorCore.getCachedDrawer(\n            nil,\n            nil,\n            0xFF0000FF,\n            0xFF0000FF,\n            2\n        )\n\n        for i = 1, #entityIDs do\n            local source = TensorCore.mGetEntity(entityIDs[i])\n\n            if source and source.pos then\n                local furthestPlayer\n                local furthestDistanceSquared = -1\n\n                for _, member in pairs(party) do\n                    if member and member.pos then\n                        local dx = member.pos.x - source.pos.x\n                        local dz = member.pos.z - source.pos.z\n                        local distanceSquared = dx * dx + dz * dz\n\n                        if distanceSquared > furthestDistanceSquared then\n                            furthestDistanceSquared = distanceSquared\n                            furthestPlayer = member\n                        end\n                    end\n                end\n\n                if furthestPlayer and furthestPlayer.pos then\n                    drawer:addCircle(\n                        furthestPlayer.pos.x,\n                        furthestPlayer.pos.y,\n                        furthestPlayer.pos.z,\n                        10,\n                        false\n                    )\n                end\n            end\n        end\n    end\nend\n\nself.used = true",
							endIfUsed = true,
							name = "Draw J Jump furthest target circles",
							uuid = "90ff0160-2333-de72-a04f-2e663aaff75b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				loop = true,
				mechanicTime = 1082.5,
				name = "[Fate Beta] Draw J Jump Furthest Targets",
				timeRange = true,
				timelineIndex = 188,
				timerEndOffset = 0.5,
				timerStartOffset = -3,
				uuid = "68531710-4c25-e5cd-92c1-c2102b111053",
				version = 2,
			},
		},
	},
	[190] = 
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
							actionLua = "local state = data.fateBeta\nlocal timeout = 7000\n\nif state and state.opticalSight == \"Stack\" then\n    local ax, ay, az, aActive = Argus.getWaymarkInfo(1)\n\n    if aActive then\n        local centerX = 100\n        local centerY = 0\n        local centerZ = 100\n        local greenDrawer = TensorCore.getCachedDrawer(\n            0x6000FF00,\n            0x6000FF00,\n            0xFF00FF00,\n            0xFF00FF00,\n            2\n        )\n        local redDrawer = TensorCore.getCachedDrawer(\n            0x600000FF,\n            0x600000FF,\n            0xFF0000FF,\n            0xFF0000FF,\n            2\n        )\n\n        if state.stackDirection == \"North\" then\n            greenDrawer:addTimedCircle(\n                timeout,\n                ax,\n                ay,\n                az,\n                6,\n                0,\n                false,\n                true\n            )\n            redDrawer:addTimedCircle(\n                timeout,\n                centerX,\n                centerY,\n                centerZ,\n                6,\n                0,\n                false,\n                true\n            )\n        else\n            redDrawer:addTimedCircle(\n                timeout,\n                ax,\n                ay,\n                az,\n                6,\n                0,\n                false,\n                true\n            )\n            greenDrawer:addTimedCircle(\n                timeout,\n                centerX,\n                centerY,\n                centerZ,\n                6,\n                0,\n                false,\n                true\n            )\n        end\n    end\nelseif state and state.opticalSight == \"Spread\" then\n    local party = TensorCore.getEntityGroupList(\"Party\")\n\n    if party then\n        local drawer = TensorCore.getCachedDrawer(\n            0x600000FF,\n            0x600000FF,\n            0xFF0000FF,\n            0xFF0000FF,\n            2\n        )\n\n        for _, member in pairs(party) do\n            if member and member.id then\n                drawer:addTimedCircleOnEnt(\n                    timeout,\n                    member.id,\n                    6,\n                    0,\n                    false,\n                    true\n                )\n            end\n        end\n    end\nend\n\nself.used = true",
							endIfUsed = true,
							name = "Draw Optical Sight timed stack or spread",
							uuid = "3b24c791-d617-7d56-870e-adf69fd10020",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1088.6,
				name = "[Fate Beta] Draw Optical Sight",
				timeRange = true,
				timelineIndex = 190,
				timerStartOffset = -5,
				uuid = "b56d2826-0515-5276-b21b-13c2ac9c5e20",
				version = 2,
			},
		},
	},
	[191] = 
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
							actionLua = "local state = data.fateBeta\nlocal entityID = state and state.radiantSacramentEntityID\nlocal source = entityID and TensorCore.mGetEntity(entityID)\n\nif source and source.pos then\n    local timeout = 7000\n    local occlusionChannel = 0\n    local baseFlags =\n        Argus2.RenderFlags.FLAG_WARP_TERRAIN +\n        Argus2.RenderFlags.FLAG_OCCLUSION_BASE\n    local occludeFlags =\n        Argus2.RenderFlags.FLAG_WARP_TERRAIN +\n        Argus2.RenderFlags.FLAG_OCCLUDE\n\n    local baseDrawer = TensorCore.getStaticDrawer(\n        0x6000FF00,\n        1,\n        occlusionChannel,\n        baseFlags\n    )\n    local occluder = TensorCore.getStaticDrawer(\n        0xFFFFFFFF,\n        0,\n        occlusionChannel,\n        occludeFlags\n    )\n\n    baseDrawer:addTimedCenteredRect(\n        timeout,\n        100,\n        source.pos.y,\n        100,\n        40,\n        40,\n        0,\n        0,\n        false,\n        true\n    )\n    occluder:addTimedDonut(\n        timeout,\n        source.pos.x,\n        source.pos.y,\n        source.pos.z,\n        8,\n        60,\n        0,\n        false,\n        true\n    )\nend\n\nself.used = true",
							endIfUsed = true,
							name = "Draw Radiant Sacrament green safe area",
							uuid = "fc6e440f-9ca6-79cf-ae51-dc5a00a7a790",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1093.5,
				name = "[Fate Beta] Draw Radiant Sacrament Safe Area",
				timeRange = true,
				timelineIndex = 191,
				timerEndOffset = 2,
				timerStartOffset = -5,
				uuid = "772780d2-fe33-ddf5-a729-08dee1527919",
				version = 2,
			},
		},
	},
	[199] = 
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
							actionLua = "local timeout = 17000\nlocal occlusionChannel = 0\nlocal baseFlags =\n    Argus2.RenderFlags.FLAG_WARP_TERRAIN +\n    Argus2.RenderFlags.FLAG_OCCLUSION_BASE\n\nlocal baseDrawer = TensorCore.getStaticDrawer(\n    0x6000FF00,\n    1,\n    occlusionChannel,\n    baseFlags\n)\n\nbaseDrawer:addTimedCenteredRect(\n    timeout,\n    100,\n    0,\n    100,\n    40,\n    40,\n    0,\n    0,\n    false,\n    true\n)\n\nself.used = true",
							endIfUsed = true,
							name = "Draw Almighty Judgment green safe base",
							uuid = "7904c877-6504-c249-8a0d-20cf14992872",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1130.8,
				name = "[Draw] Almighty Judgment Safe Base",
				timeRange = true,
				timelineIndex = 199,
				timerEndOffset = 1,
				timerStartOffset = -3,
				uuid = "036643e5-330e-ecf4-9da9-9ff6e5781cec",
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
							actionLua = "data.almighty_judgment = data.almighty_judgment or {}\nlocal state = data.almighty_judgment\nlocal now = Now()\n\nif state.revealStart == nil or (state.lastRevealAt ~= nil and TimeSince(state.lastRevealAt) > 10000) then\n    state.revealStart = now\nend\n\nlocal elapsed = TimeSince(state.revealStart)\nlocal timeout\nlocal delay\n\nif elapsed < 1000 then\n    timeout = 6650\n    delay = 0\nelse\n    timeout = 2100\n    delay = 4550\nend\n\nstate.lastRevealAt = now\n\nlocal source = eventArgs.entityID and TensorCore.mGetEntity(eventArgs.entityID)\n\nif source and source.pos then\n    local occlusionChannel = 0\n    local occludeFlags =\n        Argus2.RenderFlags.FLAG_WARP_TERRAIN +\n        Argus2.RenderFlags.FLAG_OCCLUDE\n\n    local occluder = TensorCore.getStaticDrawer(\n        0xFFFFFFFF,\n        0,\n        occlusionChannel,\n        occludeFlags\n    )\n\n    occluder:addTimedCircle(\n        timeout,\n        source.pos.x,\n        source.pos.y,\n        source.pos.z,\n        6,\n        delay,\n        false,\n        true\n    )\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"14161883-03f8-2327-83d9-68ffb4136877",
									true,
								},
								
								{
									"65ceb04e-1ede-327f-a025-635ba42e5698",
									true,
								},
							},
							name = "Subtract Almighty Judgment sequenced circles",
							uuid = "b2a467cd-aa95-7c7e-8b8c-3b3e6858e411",
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
							eventArgOptionType = 2,
							eventEntityContentID = 9042,
							name = "Perfect Alexander",
							uuid = "14161883-03f8-2327-83d9-68ffb4136877",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 18575,
							name = "Almighty Judgment Reveal",
							uuid = "65ceb04e-1ede-327f-a025-635ba42e5698",
							version = 3,
						},
					},
				},
				eventType = 2,
				loop = true,
				mechanicTime = 1130.8,
				name = "[Draw] Almighty Judgment Safe Zones",
				timeRange = true,
				timelineIndex = 199,
				timerEndOffset = 12,
				timerStartOffset = -1,
				uuid = "72d3cd29-d2e2-65da-9ab6-932d07fdd7ee",
				version = 2,
			},
		},
	},
	[210] = 
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
							actionLua = "local timeout = 17000\nlocal occlusionChannel = 0\nlocal baseFlags =\n    Argus2.RenderFlags.FLAG_WARP_TERRAIN +\n    Argus2.RenderFlags.FLAG_OCCLUSION_BASE\n\nlocal baseDrawer = TensorCore.getStaticDrawer(\n    0x6000FF00,\n    1,\n    occlusionChannel,\n    baseFlags\n)\n\nbaseDrawer:addTimedCenteredRect(\n    timeout,\n    100,\n    0,\n    100,\n    40,\n    40,\n    0,\n    0,\n    false,\n    true\n)\n\nself.used = true",
							endIfUsed = true,
							name = "Draw Almighty Judgment green safe base",
							uuid = "7c6b277a-2419-444e-88cc-342a837404f8",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1176.3,
				name = "[Draw] Almighty Judgment Safe Base",
				timeRange = true,
				timelineIndex = 210,
				timerEndOffset = 1,
				timerStartOffset = -3,
				uuid = "f1afe611-5887-919a-b99d-90fe11dc2c0c",
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
							actionLua = "data.almighty_judgment = data.almighty_judgment or {}\nlocal state = data.almighty_judgment\nlocal now = Now()\n\nif state.revealStart == nil or (state.lastRevealAt ~= nil and TimeSince(state.lastRevealAt) > 10000) then\n    state.revealStart = now\nend\n\nlocal elapsed = TimeSince(state.revealStart)\nlocal timeout\nlocal delay\n\nif elapsed < 1000 then\n    timeout = 6650\n    delay = 0\nelse\n    timeout = 2100\n    delay = 4550\nend\n\nstate.lastRevealAt = now\n\nlocal source = eventArgs.entityID and TensorCore.mGetEntity(eventArgs.entityID)\n\nif source and source.pos then\n    local occlusionChannel = 0\n    local occludeFlags =\n        Argus2.RenderFlags.FLAG_WARP_TERRAIN +\n        Argus2.RenderFlags.FLAG_OCCLUDE\n\n    local occluder = TensorCore.getStaticDrawer(\n        0xFFFFFFFF,\n        0,\n        occlusionChannel,\n        occludeFlags\n    )\n\n    occluder:addTimedCircle(\n        timeout,\n        source.pos.x,\n        source.pos.y,\n        source.pos.z,\n        6,\n        delay,\n        false,\n        true\n    )\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"1400cfdd-2a22-4da0-9d2f-ac57ccdf24d7",
									true,
								},
								
								{
									"29f4fe77-9eec-8240-93c6-0e6b8f5651e9",
									true,
								},
							},
							name = "Subtract Almighty Judgment sequenced circles",
							uuid = "acb3a5e1-3aa0-b4cf-a9ac-2b94850f6ce8",
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
							eventArgOptionType = 2,
							eventEntityContentID = 9042,
							name = "Perfect Alexander",
							uuid = "1400cfdd-2a22-4da0-9d2f-ac57ccdf24d7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 18575,
							name = "Almighty Judgment Reveal",
							uuid = "29f4fe77-9eec-8240-93c6-0e6b8f5651e9",
							version = 3,
						},
					},
				},
				eventType = 2,
				loop = true,
				mechanicTime = 1176.3,
				name = "[Draw] Almighty Judgment Safe Zones",
				timeRange = true,
				timelineIndex = 210,
				timerEndOffset = 12,
				timerStartOffset = -1,
				uuid = "91801a2f-bf90-7e77-9e21-80977c1c7210",
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
local tbl = 
{
	[2] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Garuda",
				uuid = "7c82c781-f4c1-68ef-9934-0c5d314d5e70",
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
							actionLua = "local player = TensorCore.mGetPlayer()\nif not player or not player.pos then\n    return\nend\n\nlocal boss = TensorCore.getEntityByGroup(\"ContentID\", {contentid = 1644})\nif not boss or not boss.pos then\n    return\nend\n\nlocal slot = AnyoneCore.Roster.mySlot()\nlocal isMT = slot == \"T1\"\nlocal isTank = slot == \"T1\" or slot == \"T2\"\n\nif isMT then\n    local sideColor = 0xFFFFB347\n    local sideX = boss.pos.x + 5.0\n    local destination = {\n        x = sideX,\n        y = player.pos.y,\n        z = player.pos.z\n    }\n\n    local distance = TensorCore.getDistance2d(player.pos, destination)\n    if distance > 0.25 then\n        local heading = TensorCore.getHeadingToTarget(player.pos, destination)\n        local tipLength = math.min(2.5, distance * 0.35)\n        local baseLength = math.max(0.1, distance - tipLength)\n        local drawer = TensorCore.getCachedDrawer(\n            sideColor, sideColor, 0xFFFFFFFF, 0xFF000000, 3\n        )\n        drawer:addTimedArrow(\n            9000,\n            player.pos.x, player.pos.y, player.pos.z,\n            heading,\n            baseLength, 1.4, tipLength, 2.8,\n            0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n        )\n    end\n\n    AnyoneCore.addTimedWorldText(\n        9000,\n        \"MT EAST\",\n        {x = destination.x, y = player.pos.y + 1.5, z = destination.z},\n        sideColor,\n        true,\n        1.35\n    )\nend\n\nif isTank then\n    -- C is around z=110 in this pull; keep the tank outside the AOE.\n    local southTarget = {\n        x = boss.pos.x,\n        y = boss.pos.y,\n        z = 111.0\n    }\n    local southHeading = TensorCore.getHeadingToTarget(player.pos, southTarget)\n    local southDistance = TensorCore.getDistance2d(player.pos, southTarget)\n    local southTipLength = math.min(2.8, southDistance * 0.2)\n    local southBaseLength = math.max(0.1, southDistance - southTipLength)\n    local southDrawer = TensorCore.getCachedDrawer(\n        0xFFFFD27D, 0xFFFFA31A, 0xFFFFFFFF, 0xFF000000, 3\n    )\n    southDrawer:addTimedArrow(\n        9000,\n        player.pos.x, player.pos.y, player.pos.z,\n        southHeading,\n        southBaseLength, 1.1, southTipLength, 2.8,\n        0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\n\n    AnyoneCore.addTimedWorldText(\n        9000,\n        \"FACE SOUTH\",\n        {x = southTarget.x, y = southTarget.y + 1.5, z = southTarget.z},\n        0xFFFFD27D,\n        true,\n        1.2\n    )\nend\n\nself.used = true",
							name = "MT East / Tank Face South",
							uuid = "12efbc70-3403-001e-94a1-23a1107459b0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Draws - Garuda",
				enabled = false,
				mechanicTime = 9,
				name = "[Draw] Initial Positioning - replaced",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 4,
				timerStartOffset = 0.20000000298023,
				uuid = "406f636a-7cd5-1cd9-bd17-765d2fd4905b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Garuda",
							uuid = "dca2e470-9b39-af99-aafb-9586b62537cf",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player = TensorCore.mGetPlayer()\nif not player or not player.pos then\n    self.used = true\n    return\nend\n\nlocal slot = AnyoneCore.Roster.mySlot()\n\nlocal function drawArrowTo(targetPos, colorStart, colorEnd, duration)\n    if not targetPos then\n        return\n    end\n\n    local sourcePos = player.pos\n    local distance = TensorCore.getDistance2d(sourcePos, targetPos)\n    if distance <= 0.25 then\n        return\n    end\n\n    local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n    local tipLength = math.min(2.5, distance * 0.35)\n    local baseLength = math.max(0.1, distance - tipLength)\n    local drawer = TensorCore.getCachedDrawer(\n        colorStart, colorEnd, 0xFFFFFFFF, 0xFF000000, 3\n    )\n    drawer:addTimedArrow(\n        duration,\n        sourcePos.x, sourcePos.y, sourcePos.z,\n        heading,\n        baseLength, 1.2, tipLength, 2.8,\n        0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nif slot == \"T1\" then\n    -- A is the north marker around z=90; keep MT just north of it.\n    local northTarget = {\n        x = 100.0,\n        y = player.pos.y,\n        z = 87.5\n    }\n    drawArrowTo(northTarget, 0xFF66DDFF, 0xFF0088FF, 9000)\n    AnyoneCore.addTimedWorldText(\n        9000,\n        \"MT NORTH OF A / BOSS FACES NORTH\",\n        {x = northTarget.x, y = northTarget.y + 1.5, z = northTarget.z},\n        0xFF66DDFF,\n        true,\n        1.15\n    )\nelseif slot == \"T2\" then\n    local targetID = eventArgs and eventArgs.entityID\n    local marked = targetID and TensorCore.mGetEntity(targetID)\n    if marked and marked.pos then\n        local sourcePos = player.pos\n        local targetPos = {\n            x = marked.pos.x,\n            y = marked.pos.y,\n            z = marked.pos.z\n        }\n        local distance = TensorCore.getDistance2d(sourcePos, targetPos)\n        if distance > 0.25 then\n            local tetherDrawer = TensorCore.getCachedDrawer(\n                0xFFFFAA00, 0xFFFF5500, 0xFFAA2200, 0xFFFFFFFF, 2\n            )\n            tetherDrawer:addTimedLine(\n                7000,\n                sourcePos.x, sourcePos.y, sourcePos.z,\n                targetPos.x, targetPos.y, targetPos.z,\n                1.4, 2.6, 0\n            )\n        end\n        AnyoneCore.addTimedWorldText(\n            7000,\n            \"MISTRAL TARGET\",\n            {x = targetPos.x, y = targetPos.y + 1.5, z = targetPos.z},\n            0xFFFFAA00,\n            true,\n            1.1\n        )\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"92ece809-1370-ca60-8a6f-b23d9ace7e19",
									true,
								},
							},
							displayPath = "Draws - Garuda",
							name = "MT North / OT Mistral Tether",
							uuid = "80964076-11d1-1480-a3e6-67056db5a8a5",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.markerID == 16",
							dequeueIfLuaFalse = true,
							name = "Initial Green Mistral Marker",
							uuid = "92ece809-1370-ca60-8a6f-b23d9ace7e19",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Garuda",
				eventType = 4,
				mechanicTime = 9,
				name = "[Draw] Opening - MT North / OT Mistral Intercept",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 0.5,
				timerStartOffset = -9.5,
				uuid = "296c2bc1-2dce-e0d0-a787-e3c61cd3d15e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Garuda",
							uuid = "cea20f93-1a0c-9401-a4f6-fa91b3fb02ab",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local targetID = eventArgs and eventArgs.entityID\nif not targetID then\n    self.used = true\n    return\nend\n\nlocal target = TensorCore.mGetEntity(targetID)\nif not target or not target.pos then\n    self.used = true\n    return\nend\n\nlocal drawer = TensorCore.getCachedDrawer(\n    0x5533FF33,\n    0xDD33FF33,\n    0xFF33FF66,\n    0xFF000000,\n    3\n)\ndrawer:addTimedCircleOnEnt(\n    8000,\n    targetID,\n    0.8,\n    0,\n    false,\n    true,\n    Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n)\nAnyoneCore.addTimedWorldTextOnEnt(\n    8000,\n    \"MISTRAL TARGET\",\n    targetID,\n    0xFF33FF66,\n    true,\n    1.15,\n    1.5\n)\nself.used = true",
							conditions = 
							{
								
								{
									"05385ef1-a032-daeb-b90f-0af2863bdf7c",
									true,
								},
							},
							displayPath = "Draws - Garuda",
							name = "Green Circle and Overhead on Target",
							uuid = "61a907cd-2ec9-530b-89f1-6f136bf9be31",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs ~= nil and eventArgs.markerID == 16",
							dequeueIfLuaFalse = true,
							name = "Initial Mistral Marker 16",
							uuid = "05385ef1-a032-daeb-b90f-0af2863bdf7c",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Garuda",
				eventType = 4,
				mechanicTime = 9,
				name = "[Draw] Opening - Green Mistral Target Marker",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 0.5,
				timerStartOffset = -9.5,
				uuid = "a061f66e-9de7-ebfe-a068-dda5e7b15176",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "TensorDrift_SlidecastForceHold = false\nself.used = true",
							name = "End Slide",
							uuid = "cd9bc5e0-499a-431e-b654-0691e38eae8e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 9,
				mechanicTime = 9,
				name = "[Drift] Eruption Reset on Wipe",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1800,
				timerStartOffset = -9,
				uuid = "2c0c08a5-1af4-8844-a166-159efeb9d8c5",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Cooldown Holds",
				uuid = "62935a2f-3042-1bd1-afdd-8a6712c0158c",
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
							displayPath = "",
							name = "Cooldown Holds",
							uuid = "15b77dfe-6a85-bbd0-bf9b-82947f8bb8e2",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "ACR",
							acrOptionType = "Reset Hold Actions",
							displayPath = "Cooldown Holds",
							name = "Clear held cooldowns",
							uuid = "00793a37-c5eb-a46e-a6f0-4ffcf666353c",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Cooldown Holds",
				eventType = 9,
				mechanicTime = 9,
				name = "[Hold][UWU] Clear cooldown holds on wipe",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1800,
				timerStartOffset = -9,
				uuid = "93ed5110-a751-7b10-8334-1cc101ae5003",
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
				execute = "if AnyoneCore and AnyoneCore.Settings and AnyoneCore.Settings.DutyHelper then\n    AnyoneCore.Settings.DutyHelper.enabled = false\nend\nself.used = true",
				executeType = 2,
				mechanicTime = 9,
				name = "[Start] Disable Duty Helper",
				timelineIndex = 2,
				timerOffset = -9,
				uuid = "e0c65691-bef4-0e2e-ab81-e430e042ca46",
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
				name = "[Raid calls]",
				uuid = "0c47e76a-5939-d46a-b10a-53c7b78521a8",
			},
			objectType = "folder",
		},
	},
	[4] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Garuda",
				uuid = "72aaf4fb-be72-3db4-8943-92aa990e1e93",
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
							actionLua = "local player = TensorCore.mGetPlayer()\n\nif player then\n  local sourcePos = player.pos\n  local targetPos = { x = 96.94, y = 0, z = 105.88 }\n  local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n  local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\n  if totalDistance > 0.2 then\n    local tipLength = math.min(1.25, totalDistance * 0.5)\n    local baseLength = totalDistance - tipLength\n    local drawer = TensorCore.getCachedDrawer(\n      0xFF00FFFF,\n      0xFF0088FF,\n      0xFF0000FF,\n      0xFFFFFFFF,\n      2\n    )\n    drawer:addTimedArrow(\n      3000,\n      sourcePos.x, sourcePos.y, sourcePos.z,\n      heading,\n      baseLength, 0.9, tipLength, 1.8,\n      0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\n  end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"601c266b-117d-867c-8c4f-54b6b02fa23a",
									true,
								},
							},
							name = "C-side Safe Arrow",
							uuid = "d8d9cf55-c683-211e-8211-463c91ebb1f8",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.aoeID == 11073",
							dequeueIfLuaFalse = true,
							name = "Observed Great Whirlwind AOE",
							uuid = "601c266b-117d-867c-8c4f-54b6b02fa23a",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Garuda",
				eventType = 18,
				mechanicTime = 18,
				name = "[Draw] Great Whirlwind - C-side Safe Arrow",
				timeRange = true,
				timelineIndex = 4,
				timerStartOffset = -5,
				uuid = "2da48f8a-e9a4-452c-adb5-b587dfee32ed",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Garuda",
							uuid = "210f70ee-b4b5-cf2b-9bb1-6376ed2a10e6",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player = TensorCore.mGetPlayer()\nif not player or not player.pos then\n    self.used = true\n    return\nend\n\nif AnyoneCore.Roster.mySlot() ~= \"T2\" then\n    self.used = true\n    return\nend\n\nlocal targetID = eventArgs and eventArgs.entityID\nlocal spiny = targetID and TensorCore.mGetEntity(targetID)\nif not spiny or not spiny.pos then\n    self.used = true\n    return\nend\n\nlocal spinyPos = {\n    x = spiny.pos.x,\n    y = spiny.pos.y,\n    z = spiny.pos.z\n}\n\n-- The Spiny Plume spawns at D (about x=90, z=100); bring it to C.\nlocal cTarget = {\n    x = 100.0,\n    y = spiny.pos.y,\n    z = 110.0\n}\n\nlocal sourcePos = player.pos\nlocal grabDistance = TensorCore.getDistance2d(sourcePos, spinyPos)\nif grabDistance > 0.25 then\n    local grabHeading = TensorCore.getHeadingToTarget(sourcePos, spinyPos)\n    local grabTip = math.min(2.0, grabDistance * 0.35)\n    local grabBase = math.max(0.1, grabDistance - grabTip)\n    local grabDrawer = TensorCore.getCachedDrawer(\n        0xFFFFAA00, 0xFFFF5500, 0xFFAA2200, 0xFFFFFFFF, 2\n    )\n    grabDrawer:addTimedArrow(\n        10000,\n        sourcePos.x, sourcePos.y, sourcePos.z,\n        grabHeading,\n        grabBase, 1.25, grabTip, 2.6,\n        0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nlocal bringDistance = TensorCore.getDistance2d(spinyPos, cTarget)\nif bringDistance > 0.25 then\n    local bringHeading = TensorCore.getHeadingToTarget(spinyPos, cTarget)\n    local bringTip = math.min(2.5, bringDistance * 0.35)\n    local bringBase = math.max(0.1, bringDistance - bringTip)\n    local bringDrawer = TensorCore.getCachedDrawer(\n        0xFF66FF99, 0xFF00AA66, 0xFF006644, 0xFFFFFFFF, 2\n    )\n    bringDrawer:addTimedArrow(\n        10000,\n        spinyPos.x, spinyPos.y, spinyPos.z,\n        bringHeading,\n        bringBase, 1.2, bringTip, 2.7,\n        0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nAnyoneCore.addTimedWorldText(\n    10000,\n    \"GRAB SPINY (D)\",\n    {x = spinyPos.x, y = spinyPos.y + 1.5, z = spinyPos.z},\n    0xFFFFAA00,\n    true,\n    1.15\n)\nAnyoneCore.addTimedWorldText(\n    10000,\n    \"BRING SPINY TO C\",\n    {x = cTarget.x, y = cTarget.y + 1.5, z = cTarget.z},\n    0xFF66FF99,\n    true,\n    1.15\n)\n\nself.used = true",
							conditions = 
							{
								
								{
									"14f46a76-b32e-b294-8be9-124db9945f78",
									true,
								},
							},
							displayPath = "Draws - Garuda",
							name = "OT Grab Spiny / Bring to C",
							uuid = "0a6dd443-7971-00f1-a05b-dc9369faa5dc",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityContentID == 2091 and eventArgs.entityName == \"Spiny Plume\"",
							dequeueIfLuaFalse = true,
							name = "Spiny Plume Added",
							uuid = "14f46a76-b32e-b294-8be9-124db9945f78",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Garuda",
				eventType = 5,
				mechanicTime = 18,
				name = "[Draw] Satin Plumes - OT Grab Spiny to C",
				timeRange = true,
				timelineIndex = 4,
				timerEndOffset = 4,
				timerStartOffset = -1,
				uuid = "806bbd81-eb3d-c6fb-9b32-9b718947cb12",
				version = 2,
			},
		},
	},
	[8] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Alert",
							alertPriority = 2,
							alertTTS = true,
							alertText = "Move!",
							uuid = "a985ee6f-3880-d50d-9869-2a7c7ba253a3",
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
							partyTargetType = "Melee DPS",
							uuid = "0788ac77-19c0-2564-a8aa-b6a5fc46c54b",
							version = 3,
						},
					},
				},
				mechanicTime = 34,
				name = "Melee TTS",
				timelineIndex = 8,
				timerOffset = 0.5,
				uuid = "d0ae0670-a75b-b8fe-b2ed-a384ed6acebc",
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
				name = "Draws - Garuda",
				uuid = "75f1ea5d-3de5-57ec-85ed-b622a90a7907",
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
							actionLua = "local player = TensorCore.mGetPlayer()\nlocal aoeCenter = { x = eventArgs.x, y = eventArgs.y, z = eventArgs.z }\nlocal arenaCenter = { x = 100, y = 0, z = 100 }\n\nif player then\n  local dx = arenaCenter.x - aoeCenter.x\n  local dz = arenaCenter.z - aoeCenter.z\n  local centerDistance = math.sqrt(dx * dx + dz * dz)\n\n  if centerDistance > 0.1 then\n    local safeDistance = eventArgs.aoeLength + 0.95\n    local targetPos = {\n      x = aoeCenter.x + (dx / centerDistance) * safeDistance,\n      y = aoeCenter.y,\n      z = aoeCenter.z + (dz / centerDistance) * safeDistance,\n    }\n    local sourcePos = player.pos\n    local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n    local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\n    if totalDistance > 0.2 then\n      local tipLength = math.min(1.25, totalDistance * 0.5)\n      local baseLength = totalDistance - tipLength\n      local drawer = TensorCore.getCachedDrawer(\n        0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2\n      )\n      drawer:addTimedArrow(\n        2500,\n        sourcePos.x, sourcePos.y, sourcePos.z,\n        heading,\n        baseLength, 0.9, tipLength, 1.8,\n        0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n      )\n    end\n  end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"9469bda2-7657-c958-844a-da83eaf0898d",
									true,
								},
							},
							name = "Spiny to Mid Safe Arrow",
							uuid = "e4115839-ae15-72e9-b9bd-b56b2bc8ee02",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.aoeID == 11078 and eventArgs.contentID == 2091",
							dequeueIfLuaFalse = true,
							name = "Initial Spiny Gigastorm",
							uuid = "9469bda2-7657-c958-844a-da83eaf0898d",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Garuda",
				eventType = 18,
				mechanicTime = 37,
				name = "[Draw] Initial Spiny Gigastorm - Mid Arrow",
				timeRange = true,
				timelineIndex = 9,
				timerEndOffset = 4,
				timerStartOffset = -2,
				uuid = "74a9997c-fcb8-4902-bc76-abd631161ffa",
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
				name = "Draws - Garuda",
				uuid = "0ce5ed4b-4464-7e15-93f7-c38fce5e82ed",
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
							actionLua = "_G.UWU_GarudaBarrierPosition = nil\nself.used = true",
							name = "Clear Barrier Position",
							uuid = "d60c92d9-7ec1-bef5-bfd3-5025c3a3c342",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local spiny = TensorCore.getEntityByGroup(\"ContentID\", { contentid = 2091, subgroup = \"Nearest\" })\nif spiny then\n  _G.UWU_GarudaBarrierPosition = {\n    x = spiny.pos.x,\n    y = spiny.pos.y,\n    z = spiny.pos.z,\n  }\nend",
							name = "Track Spiny Position",
							uuid = "def03522-0727-1375-a203-7c143937604a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Draws - Garuda",
				mechanicTime = 42,
				name = "[State] Capture Spiny Barrier Position",
				timeRange = true,
				timelineIndex = 11,
				timerStartOffset = -15,
				uuid = "d7c2e075-97a6-3066-9d8b-5457b05aacf6",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player = TensorCore.mGetPlayer()\nlocal barrierCenter = _G.UWU_GarudaBarrierPosition\n\nif player and barrierCenter then\n  local sourcePos = player.pos\n  local dx = sourcePos.x - barrierCenter.x\n  local dz = sourcePos.z - barrierCenter.z\n  local distanceFromBarrier = math.sqrt(dx * dx + dz * dz)\n  local targetPos = barrierCenter\n\n  if distanceFromBarrier > 3.5 then\n    targetPos = {\n      x = barrierCenter.x + (dx / distanceFromBarrier) * 3.5,\n      y = barrierCenter.y,\n      z = barrierCenter.z + (dz / distanceFromBarrier) * 3.5,\n    }\n  end\n\n  local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n  local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\n  if totalDistance > 0.2 then\n    local tipLength = math.min(1.25, totalDistance * 0.5)\n    local baseLength = totalDistance - tipLength\n    local drawer = TensorCore.getCachedDrawer(\n      0xFF00FFFF,\n      0xFF0088FF,\n      0xFF0000FF,\n      0xFFFFFFFF,\n      2\n    )\n    drawer:addTimedArrow(\n      2500,\n      sourcePos.x, sourcePos.y, sourcePos.z,\n      heading,\n      baseLength, 0.9, tipLength, 1.8,\n      0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\n  end\nend\nself.used = true",
							name = "Barrier Entry Arrow",
							uuid = "c72d3c9d-129b-01da-8da1-62245238f821",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Draws - Garuda",
				mechanicTime = 42,
				name = "[Draw] Mistral Shriek - Barrier Arrow",
				timelineIndex = 11,
				timerOffset = -1.1000000238419,
				uuid = "821d25b3-24ee-3ca7-aca8-bf981b315617",
				version = 2,
			},
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
							alertPriority = 3,
							alertTTS = true,
							alertText = "Move under barrier",
							alertVolume = 81,
							uuid = "dcae8059-54d7-af3f-a3da-cce6291a52ce",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 42,
				name = "MOVE!",
				timelineIndex = 11,
				timerOffset = -1.1000000238419,
				uuid = "76f26f8c-03bd-55de-b389-a67ff56092e7",
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
				name = "Draws - Garuda",
				uuid = "a21e2da3-99ca-0a66-add1-7050a66716ca",
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
							actionLua = "local player = TensorCore.mGetPlayer()\nlocal target = eventArgs.targetAttach and TensorCore.mGetEntity(eventArgs.targetAttach)\nlocal barrier = _G.UWU_GarudaBarrierPosition\n\nif player and target then\n  local sourcePos = player.pos\n  local targetCenter = target.pos\n  local targetPos = targetCenter\n\n  if barrier then\n    local dx = targetCenter.x - barrier.x\n    local dz = targetCenter.z - barrier.z\n    local distanceFromBarrier = math.sqrt(dx * dx + dz * dz)\n    local frictionHitRadius = math.max(0, eventArgs.aoeLength - 0.4)\n    local barrierOuterRadius = 7.0\n\n    if distanceFromBarrier > 0.1 then\n      local targetDistance = math.max(\n        barrierOuterRadius,\n        distanceFromBarrier - frictionHitRadius\n      )\n\n      if math.abs(distanceFromBarrier - targetDistance) <= frictionHitRadius then\n        targetPos = {\n          x = barrier.x + (dx / distanceFromBarrier) * targetDistance,\n          y = targetCenter.y,\n          z = barrier.z + (dz / distanceFromBarrier) * targetDistance,\n        }\n      end\n    end\n  end\n\n  local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n  local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\n  if totalDistance > 0.2 then\n    local tipLength = math.min(1.25, totalDistance * 0.5)\n    local baseLength = totalDistance - tipLength\n    local drawer = TensorCore.getCachedDrawer(\n      0xFF00FFFF,\n      0xFF0088FF,\n      0xFF0000FF,\n      0xFFFFFFFF,\n      2\n    )\n    drawer:addTimedArrow(\n      2800,\n      sourcePos.x, sourcePos.y, sourcePos.z,\n      heading,\n      baseLength, 0.9, tipLength, 1.8,\n      0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\n  end\nend\nself.used = true",
							conditions = 
							{
								
								{
									"051cbd63-97c6-98c3-bdde-dc401acb364c",
									true,
								},
								
								{
									"b9a0ce10-6329-3e3c-aac9-6a95ff874d4b",
									true,
								},
							},
							name = "Friction Barrier-Edge Arrow",
							uuid = "aeb53452-bd39-5751-abca-2079fe56cced",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.aoeID == 11080",
							dequeueIfLuaFalse = true,
							name = "Observed Friction AOE",
							uuid = "051cbd63-97c6-98c3-bdde-dc401acb364c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local role = GetCurrentRole()\nreturn role == \"OT\" or role == \"M1\" or role == \"M2\"",
							dequeueIfLuaFalse = true,
							name = "Roster: OT / M1 / M2",
							uuid = "b9a0ce10-6329-3e3c-aac9-6a95ff874d4b",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Garuda",
				eventType = 18,
				mechanicTime = 51,
				name = "[Draw] Friction 1 - Melee/Tank Arrow",
				timeRange = true,
				timelineIndex = 12,
				timerStartOffset = -3,
				uuid = "b2ac0a56-be0e-0f06-8860-a41653959e84",
				version = 2,
			},
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
							alertPriority = 2,
							alertTTS = true,
							alertText = "Move out of barrier and Get hit by friction",
							conditions = 
							{
								
								{
									"f356668c-bb3c-8866-a374-433db8366df1",
									true,
								},
							},
							uuid = "7869fda0-949e-eac8-bd87-9ab475330567",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local role = AnyoneCore.Roster.mySlot()\nreturn role == \"OT\" or role == \"M1\" or role == \"M2\"",
							conditionType = 9,
							name = "OT, M1, M2",
							partyTargetType = "Melee DPS",
							uuid = "f356668c-bb3c-8866-a374-433db8366df1",
							version = 3,
						},
					},
				},
				mechanicTime = 51,
				name = "Melee TTS",
				timelineIndex = 12,
				timerOffset = -2.7000000476837,
				uuid = "5fd81d2c-7a23-e404-940b-c8c68c02b3d8",
				version = 2,
			},
		},
	},
	[13] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Garuda",
				uuid = "1eda7fb8-b814-4f3e-845c-9ce2f647be93",
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
							actionLua = "local player = TensorCore.mGetPlayer()\nlocal target = eventArgs.targetAttach and TensorCore.mGetEntity(eventArgs.targetAttach)\nlocal barrier = _G.UWU_GarudaBarrierPosition\n\nif player and target then\n  local sourcePos = player.pos\n  local targetCenter = target.pos\n  local targetPos = targetCenter\n\n  if barrier then\n    local dx = targetCenter.x - barrier.x\n    local dz = targetCenter.z - barrier.z\n    local distanceFromBarrier = math.sqrt(dx * dx + dz * dz)\n    local frictionHitRadius = math.max(0, eventArgs.aoeLength - 0.4)\n    local barrierOuterRadius = 7.0\n\n    if distanceFromBarrier > 0.1 then\n      local nearDistance = math.max(\n        barrierOuterRadius,\n        distanceFromBarrier - frictionHitRadius\n      )\n\n      if math.abs(distanceFromBarrier - nearDistance) <= frictionHitRadius then\n        local partyDistance = nearDistance\n          + (distanceFromBarrier - nearDistance) * 0.5\n        targetPos = {\n          x = barrier.x + (dx / distanceFromBarrier) * partyDistance,\n          y = targetCenter.y,\n          z = barrier.z + (dz / distanceFromBarrier) * partyDistance,\n        }\n      end\n    end\n  end\n\n  local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n  local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\n  if totalDistance > 0.2 then\n    local tipLength = math.min(1.25, totalDistance * 0.5)\n    local baseLength = totalDistance - tipLength\n    local drawer = TensorCore.getCachedDrawer(\n      0xFF00FFFF,\n      0xFF0088FF,\n      0xFF0000FF,\n      0xFFFFFFFF,\n      2\n    )\n    drawer:addTimedArrow(\n      2800,\n      sourcePos.x, sourcePos.y, sourcePos.z,\n      heading,\n      baseLength, 0.9, tipLength, 1.8,\n      0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\n  end\nend\nself.used = true",
							conditions = 
							{
								
								{
									"44cea2d4-c76f-4cf2-9a50-3f8c97bd2054",
									true,
								},
							},
							name = "Friction Party Midpoint Arrow",
							uuid = "1ecaad84-823a-7ca0-80e5-9307e8aa98ee",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.aoeID == 11080",
							dequeueIfLuaFalse = true,
							name = "Observed Friction AOE",
							uuid = "44cea2d4-c76f-4cf2-9a50-3f8c97bd2054",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Garuda",
				eventType = 18,
				mechanicTime = 57,
				name = "[Draw] Friction 2 - Party Arrow",
				timeRange = true,
				timelineIndex = 13,
				timerStartOffset = -3,
				uuid = "2713bf60-1a44-8a3e-bbbe-68f947b9af55",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif roster == nil or roster.current() == nil or roster.mySlot() ~= \"M1\" then\n  self.used = true\n  return\nend\n\nlocal player = TensorCore.mGetPlayer()\nlocal barrierPos = _G.UWU_GarudaBarrierPosition\n\nif player and barrierPos then\n  local targetPos = barrierPos\n  local dx = 100 - barrierPos.x\n  local dz = 100 - barrierPos.z\n  local distanceToMiddle = math.sqrt(dx * dx + dz * dz)\n\n  if distanceToMiddle > 0.1 then\n    local bossSideShift = math.min(2, distanceToMiddle)\n    targetPos = {\n      x = barrierPos.x + (dx / distanceToMiddle) * bossSideShift,\n      y = barrierPos.y,\n      z = barrierPos.z + (dz / distanceToMiddle) * bossSideShift,\n    }\n  end\n\n  local sourcePos = player.pos\n  local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n  local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n  local scale = math.min(1, totalDistance / 15)\n  local baseWidth = math.max(0.5, scale)\n  local tipWidth = math.max(1.5, 3 * scale)\n  local tipLength = math.max(2, 3 * scale)\n  local baseLength = totalDistance - tipLength\n  local arrowDuration = 3000\n  local postHitDelay = math.floor(eventArgs.duration * 1000) + 1000\n\n  if baseLength > 0 then\n    local drawer = TensorCore.getCachedDrawer(\n      0xFF00FFFF,\n      0xFF0088FF,\n      0xFF0000FF,\n      0xFFFFFFFF,\n      2\n    )\n    drawer:addTimedArrow(\n      postHitDelay + arrowDuration,\n      sourcePos.x, sourcePos.y, sourcePos.z,\n      heading,\n      baseLength, baseWidth, tipLength, tipWidth,\n      postHitDelay, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\n  end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"34d43cc3-bf08-af02-ab0a-2144cf799d08",
									true,
								},
							},
							name = "M1 Barrier Cleansing Arrow",
							uuid = "a7fcfbfb-989b-1077-8032-21b1a4404eaa",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.aoeID == 11080",
							dequeueIfLuaFalse = true,
							name = "Observed Friction AOE",
							uuid = "34d43cc3-bf08-af02-ab0a-2144cf799d08",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Garuda",
				eventType = 18,
				mechanicTime = 57,
				name = "[Draw] Friction 2 - M1 Barrier Arrow",
				timeRange = true,
				timelineIndex = 13,
				timerStartOffset = -3,
				uuid = "cee8402f-4682-401c-b8a3-e5608847dfd6",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif roster == nil or roster.current() == nil or roster.mySlot() ~= \"M2\" then\n  self.used = true\n  return\nend\n\nlocal player = TensorCore.mGetPlayer()\nlocal barrierPos = _G.UWU_GarudaBarrierPosition\nif not player or not barrierPos then\n  return\nend\n\nlocal targetPos = barrierPos\nlocal dx = 100 - barrierPos.x\nlocal dz = 100 - barrierPos.z\nlocal distanceToMiddle = math.sqrt(dx * dx + dz * dz)\nif distanceToMiddle > 0.1 then\n  local bossSideShift = math.min(2, distanceToMiddle)\n  targetPos = {\n    x = barrierPos.x + (dx / distanceToMiddle) * bossSideShift,\n    y = barrierPos.y,\n    z = barrierPos.z + (dz / distanceToMiddle) * bossSideShift,\n  }\nend\n\nlocal sourcePos = player.pos\nlocal heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\nlocal totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\nlocal scale = math.min(1, totalDistance / 15)\nlocal baseWidth = math.max(0.5, scale)\nlocal tipWidth = math.max(1.5, 3 * scale)\nlocal tipLength = math.max(2, 3 * scale)\nlocal baseLength = totalDistance - tipLength\nif baseLength <= 0 then\n  return\nend\n\nlocal arrowDuration = 3000\nlocal drawer = TensorCore.getCachedDrawer(\n  0xFF00FFFF,\n  0xFF0088FF,\n  0xFF0000FF,\n  0xFFFFFFFF,\n  2\n)\ndrawer:addTimedArrow(\n  arrowDuration,\n  sourcePos.x, sourcePos.y, sourcePos.z,\n  heading,\n  baseLength, baseWidth, tipLength, tipWidth,\n  0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n)\n\nlocal state = data.uwu_friction2_m2_hp_gate\nif state ~= nil then\n  state.arrowDrawn = true\nend\nself.used = true",
							conditions = 
							{
								
								{
									"5b478b52-d61e-7bb4-98d1-ef0b4cc3508d",
									true,
								},
								
								{
									"c8464ab1-5414-a10f-afec-9583645b29c2",
									true,
								},
							},
							name = "M2 Barrier Cleansing Arrow",
							uuid = "8b8cb5d9-c994-80ec-89d9-6b39cba26ad8",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local state = data.uwu_friction2_m2_hp_gate\nreturn state ~= nil and state.aoeSeen == true and state.arrowDrawn ~= true",
							name = "Friction AOE seen; arrow pending",
							uuid = "5b478b52-d61e-7bb4-98d1-ef0b4cc3508d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							conditionType = 2,
							hpValue = 60,
							name = "Party HP >=60% (lowest)",
							partyTargetSubType = "Lowest HP",
							uuid = "c8464ab1-5414-a10f-afec-9583645b29c2",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Garuda",
				mechanicTime = 57,
				name = "[Draw] Friction 2 - M2 Barrier Arrow",
				timeRange = true,
				timelineIndex = 13,
				timerEndOffset = 8,
				uuid = "ebbec822-982e-60fc-b29c-67fb4a4cc5db",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Garuda",
							uuid = "e2c7e715-13d1-8da3-9907-8b4c33f92820",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local Roster = AnyoneCore and AnyoneCore.Roster\nif Roster == nil or Roster.current() == nil or not Roster.isReady() then return end\n\nlocal localSlot = Roster.mySlot()\nif localSlot ~= \"M1\" and localSlot ~= \"M2\" then return end\n\nlocal partySlots = {\"H1\", \"H2\", \"M1\", \"M2\", \"R1\", \"R2\"}\nfor i = 1, #partySlots do\n  local slot = partySlots[i]\n  local entityID = Roster.idOf(slot)\n  local entity = Roster.entOf(slot)\n\n  if entityID and entity and entity.pos and TensorCore.getBuff(entity, 1525, nil, 2) then\n    local pos = entity.pos\n    Argus2.addTimedCircleFilled(\n      150,\n      pos.x, pos.y, pos.z,\n      0.55, 32,\n      0x35FF0000, 0x35FF0000, nil, 0,\n      entityID, 0xFFFF0000, 1.5,\n      0, 0.15, 2,\n      false, true, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\n  end\nend",
							conditions = 
							{
								
								{
									"a0f5841e-12e5-b462-8ecc-35d4523597e8",
									true,
								},
							},
							displayPath = "Draws - Garuda",
							name = "Red Thermal Low circles - 2 stacks",
							uuid = "4ac5b8ba-39c4-ce14-82aa-72c13ffb6927",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local Roster = AnyoneCore and AnyoneCore.Roster\nreturn Roster ~= nil\n  and Roster.current() ~= nil\n  and Roster.isReady()\n  and (Roster.mySlot() == \"M1\" or Roster.mySlot() == \"M2\")",
							dequeueIfLuaFalse = true,
							name = "Roster ready: M1/M2",
							uuid = "a0f5841e-12e5-b462-8ecc-35d4523597e8",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Garuda",
				mechanicTime = 57,
				name = "Thermal Low - Two Stack Circles (M1/M2)",
				timeRange = true,
				timelineIndex = 13,
				timerEndOffset = 8,
				timerStartOffset = -7,
				uuid = "121f565f-1a82-c392-84af-bac17e99a206",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local state = data.uwu_friction2_m2_hp_gate\nif state == nil then\n  state = {}\n  data.uwu_friction2_m2_hp_gate = state\nend\nstate.aoeSeen = true\nself.used = true",
							conditions = 
							{
								
								{
									"37fba76e-489f-9e9b-b3fe-6893d9421b61",
									true,
								},
							},
							name = "Latch AOE for M2 arrow",
							uuid = "3acc2e6d-f466-8964-8380-83f4895285f1",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.aoeID == 11080",
							dequeueIfLuaFalse = true,
							name = "Friction 2 AOE 11080",
							uuid = "37fba76e-489f-9e9b-b3fe-6893d9421b61",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Garuda",
				eventType = 18,
				mechanicTime = 57,
				name = "[State] Friction 2 AOE seen for M2 arrow",
				timeRange = true,
				timelineIndex = 13,
				timerEndOffset = 8,
				timerStartOffset = -3,
				uuid = "7e53417b-46b1-675f-ac96-3a659a730bc4",
				version = 2,
			},
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
							alertPriority = 2,
							alertTTS = true,
							alertText = "Move outside and get hit by Friction",
							conditions = 
							{
								
								{
									"23249288-238b-cd7b-8e52-c0ddbad3a51a",
									true,
								},
							},
							uuid = "4dce1523-144f-d707-a5c6-26b3446a33af",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local Roster = AnyoneCore and AnyoneCore.Roster\nif Roster == nil or Roster.current() == nil then\n  return false\nend\n\nlocal slot = Roster.mySlot()\nreturn slot ~= nil and slot ~= \"M1\" and slot ~= \"M2\" and slot ~= \"T2\"",
							dequeueIfLuaFalse = true,
							name = "Roster: not M1/M2/OT",
							uuid = "23249288-238b-cd7b-8e52-c0ddbad3a51a",
							version = 3,
						},
					},
				},
				mechanicTime = 57,
				name = "Second Friction",
				timelineIndex = 13,
				timerOffset = -2.5,
				uuid = "f00db3a6-4df6-093a-bde3-5383605e73e9",
				version = 2,
			},
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
							alertPriority = 2,
							alertTTS = true,
							alertText = "Cleanse Debuff.",
							conditions = 
							{
								
								{
									"45f19d2b-a640-d33b-8e69-5d4f7961e4ef",
									true,
								},
							},
							uuid = "c3e1ec47-be81-c8fd-bbea-7ae501a8142c",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local Roster = AnyoneCore and AnyoneCore.Roster; if not Roster or not Roster.current() then return false end; return Roster.mySlot() == [=[M1]=]",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "M1 Only",
							partyTargetType = "Melee DPS",
							uuid = "45f19d2b-a640-d33b-8e69-5d4f7961e4ef",
							version = 3,
						},
					},
				},
				mechanicTime = 57,
				name = "Melee TTS",
				timelineIndex = 13,
				timerOffset = 1,
				uuid = "9a326430-8413-a0b4-a5ed-aa0043f625ed",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Monk Opti",
				uuid = "156aa6ec-fde5-2f78-8108-fc447d895332",
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
							alertPriority = 2,
							alertTTS = true,
							alertText = "Stay outside of barrier and get hit by Friction",
							conditions = 
							{
								
								{
									"71eaa0eb-af0f-d515-8cae-6684e739410d",
									true,
								},
							},
							uuid = "45733463-eb59-4291-8cd9-500aaae84b2e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local Roster = AnyoneCore and AnyoneCore.Roster\nif Roster == nil or Roster.current() == nil then\n  return false\nend\n\nlocal slot = Roster.mySlot()\nreturn slot == \"M1\" or slot == \"M2\" or slot == \"T2\"",
							dequeueIfLuaFalse = true,
							name = "Roster: M1/M2/OT",
							uuid = "71eaa0eb-af0f-d515-8cae-6684e739410d",
							version = 3,
						},
					},
				},
				mechanicTime = 57,
				name = "Second Friction - M1/M2/OT",
				timelineIndex = 13,
				timerOffset = -2.5,
				uuid = "4a8a694a-02c3-a9b8-81e1-e753d2cfe4de",
				version = 2,
			},
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
							alertPriority = 2,
							alertTTS = true,
							alertText = "Cleanse debuff inside the barrier",
							conditions = 
							{
								
								{
									"5fd4a872-297a-2cab-8b2d-6471297ef251",
									true,
								},
							},
							uuid = "0799ca24-b5ac-975e-88d8-dd059e3579cb",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local Roster = AnyoneCore and AnyoneCore.Roster; if not Roster or not Roster.current() then return false end; return Roster.mySlot() == [=[M2]=]",
							dequeueIfLuaFalse = true,
							name = "M2 Only",
							uuid = "5fd4a872-297a-2cab-8b2d-6471297ef251",
							version = 3,
						},
					},
				},
				mechanicTime = 57,
				name = "Melee TTS - M2",
				timelineIndex = 13,
				timerOffset = 2,
				uuid = "8d8a113e-94ea-9e5c-a874-a9e8bcd4516f",
				version = 2,
			},
		},
	},
	[14] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Alert",
							alertPriority = 3,
							alertTTS = true,
							alertText = "MOVE",
							alertVolume = 81,
							uuid = "44636adf-d8b8-1ae4-92a8-7e5bc28fe41f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 69,
				name = "MOVE!",
				timelineIndex = 14,
				timerOffset = 0.5,
				uuid = "482b9860-fe7b-97d4-a78c-88771acdf739",
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
				name = "Draws - Garuda",
				uuid = "c237707a-bef2-169c-91b2-9ab0d81e5020",
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
							actionLua = "local player = TensorCore.mGetPlayer()\n\nif player then\n  local targetPos = { x = 99.99, y = 0, z = 103.11 }\n  local sourcePos = player.pos\n  local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n  local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n\n  if totalDistance > 0.2 then\n    local tipLength = math.min(1.25, totalDistance * 0.5)\n    local baseLength = totalDistance - tipLength\n    local drawer = TensorCore.getCachedDrawer(\n      0xFF00FFFF,\n      0xFF0088FF,\n      0xFF0000FF,\n      0xFFFFFFFF,\n      2\n    )\n    drawer:addTimedArrow(\n      5000,\n      sourcePos.x, sourcePos.y, sourcePos.z,\n      heading,\n      baseLength, 0.9, tipLength, 1.8,\n      0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\n  end\nend\n\nself.used = true",
							name = "Stack Middle Arrow",
							uuid = "89237135-d816-7c71-b175-35e69fc6847e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Draws - Garuda",
				mechanicTime = 93,
				name = "[Draw] Garuda Stack - Middle Arrow",
				timelineIndex = 18,
				timerOffset = -12.5,
				uuid = "8466c926-0c10-a9c0-9f0f-6a65768b6791",
				version = 2,
			},
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
							alertPriority = 3,
							alertTTS = true,
							alertText = "MOVE",
							alertVolume = 81,
							conditions = 
							{
								
								{
									"69a98f6c-c55b-8ba0-ab80-6aca5e037de8",
									true,
								},
							},
							uuid = "cbda6130-e490-7f91-8e2d-aa7defa89bd1",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs and eventArgs.aoeID == 11085 and eventArgs.contentID == 1644 and eventArgs.friendly == false",
							dequeueIfLuaFalse = true,
							name = "Feather Rain AOE",
							uuid = "69a98f6c-c55b-8ba0-ab80-6aca5e037de8",
							version = 3,
						},
					},
				},
				eventType = 18,
				mechanicTime = 93,
				name = "MOVE!",
				timeRange = true,
				timelineIndex = 18,
				timerEndOffset = 2,
				timerStartOffset = -5,
				uuid = "cb193897-47a1-eecb-87eb-41788a04c223",
				version = 2,
			},
		},
	},
	[19] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "[Raid calls]",
				uuid = "147e4fbc-7fd3-f817-97b1-bbea3a4e768f",
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
							alertDuration = 8000,
							alertPriority = 2,
							alertTTS = true,
							alertText = "Move to 3 (SE)",
							conditions = 
							{
								
								{
									"bf441fb9-2cd0-0878-99ca-f33d913ecf47",
									true,
								},
							},
							uuid = "8c62e06d-eddc-65d3-8626-db29a9c4ec94",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local slot = AnyoneCore.Roster.mySlot()\nreturn slot ~= \"T1\" and slot ~= \"T2\"",
							dequeueIfLuaFalse = true,
							name = "Non-tank slots (T1/T2)",
							uuid = "bf441fb9-2cd0-0878-99ca-f33d913ecf47",
							version = 3,
						},
					},
				},
				displayPath = "[Raid calls]",
				mechanicTime = 100,
				name = "[Raid Call][Garuda] Double Mistral",
				timelineIndex = 19,
				timerOffset = -1.8999999761581,
				uuid = "17cd5836-d9c6-7195-8de4-93d3203a2db3",
				version = 2,
			},
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
							alertDuration = 8000,
							alertPriority = 2,
							alertTTS = true,
							alertText = "Cover the debuff",
							conditions = 
							{
								
								{
									"83d6dec2-8bcf-8a0f-93bb-68c7d4a9038f",
									true,
								},
							},
							name = "MT/OT Debuff Alert",
							uuid = "2e616c1c-e4d6-1744-bddd-347782ad91a7",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local slot = AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\" or slot == \"T2\"",
							dequeueIfLuaFalse = true,
							name = "Tank slots (T1/T2)",
							uuid = "83d6dec2-8bcf-8a0f-93bb-68c7d4a9038f",
							version = 3,
						},
					},
				},
				displayPath = "[Raid calls]",
				mechanicTime = 100,
				name = "[Raid Call][Garuda] Double Mistral - MT/OT",
				timelineIndex = 19,
				timerOffset = -1,
				uuid = "98e7d24b-6fe9-08df-8163-ca3b81229025",
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
				name = "Draws - Garuda",
				uuid = "78ce14d2-2d3f-6986-86dd-d36a4b326543",
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
							actionLua = "local player = TensorCore.mGetPlayer()\n\nif player then\n    local slot = AnyoneCore.Roster.mySlot()\n\n    -- The two green overheads are the two Mistral targets. Assign them in\n    -- observed order: first target to MT, second target to OT.\n    if slot == \"T1\" or slot == \"T2\" then\n        data.uwu_wicked_wheel_mistral = data.uwu_wicked_wheel_mistral or {}\n        local tankState = data.uwu_wicked_wheel_mistral\n        tankState.targets = tankState.targets or {}\n        tankState.seen = tankState.seen or {}\n        tankState.lineDrawn = tankState.lineDrawn or {}\n\n        local markerTargetID = eventArgs and eventArgs.entityID\n        if markerTargetID and not tankState.seen[markerTargetID] then\n            tankState.seen[markerTargetID] = true\n            tankState.targets[#tankState.targets + 1] = markerTargetID\n        end\n\n        local targetIndex = slot == \"T1\" and 1 or 2\n        local targetID = tankState.targets[targetIndex]\n        if targetID and not tankState.lineDrawn[slot] then\n            local marked = TensorCore.mGetEntity(targetID)\n            if marked and marked.pos then\n                local sourcePos = player.pos\n                local targetPos = marked.pos\n                local distance = TensorCore.getDistance2d(sourcePos, targetPos)\n                if distance > 0.75 then\n                    local drawer\n                    if slot == \"T1\" then\n                        drawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n                    else\n                        drawer = TensorCore.getCachedDrawer(0xFFFFAA00, 0xFFFF6600, 0xFFAA2200, 0xFFFFFFFF, 2)\n                    end\n                    drawer:addTimedLine(7000,\n                        sourcePos.x, sourcePos.y, sourcePos.z,\n                        targetPos.x, targetPos.y, targetPos.z,\n                        1.1, 1.8, 0)\n                end\n            end\n            tankState.lineDrawn[slot] = true\n        end\n    end\n\n    data.uwu_wicked_wheel_role_arrow = data.uwu_wicked_wheel_role_arrow or {}\n    local state = data.uwu_wicked_wheel_role_arrow\n    if state.started then\n        self.used = true\n        return\n    end\n    state.started = true\n\n    local targetPos\n    if slot == \"T1\" then\n        targetPos = {x = 103.593, y = 0, z = 91.112}\n    elseif slot == \"T2\" then\n        targetPos = {x = 100.816, y = 0, z = 110.033}\n    else\n        targetPos = {x = 108.141, y = 0, z = 106.126}\n    end\n\n    local sourcePos = player.pos\n    local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n    local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n    if totalDistance > 0.2 then\n        local tipLength = math.min(1.25, totalDistance * 0.5)\n        local baseLength = totalDistance - tipLength\n        local drawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n        drawer:addTimedArrow(6500, sourcePos.x, sourcePos.y, sourcePos.z,\n            heading, baseLength, 0.9, tipLength, 1.8, 0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"6b7429b5-3ef8-edcb-9376-715034667fd3",
									true,
								},
							},
							name = "Role Safe Arrow + Tank Mistral Soak",
							uuid = "84b4370c-f3a2-fb6e-8896-065f855c2c5d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.markerID == 16",
							dequeueIfLuaFalse = true,
							name = "Observed Green Overhead",
							uuid = "6b7429b5-3ef8-edcb-9376-715034667fd3",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Garuda",
				eventType = 4,
				mechanicTime = 100,
				name = "[Draw] Wicked Wheel - Role Safe Arrow",
				timeRange = true,
				timelineIndex = 21,
				timerStartOffset = -7,
				uuid = "83f759fe-5cbf-1d52-a2af-4f96f6eb6a0b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Movement - Wicked Wheel",
				uuid = "4613bab2-e3a1-3dcb-bd46-5bba5e067d3f",
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
							actionID = 25762,
							conditions = 
							{
								
								{
									"e8f94772-2742-013b-aad2-0091c53a9b10",
									true,
								},
							},
							ignoreWeaveRules = true,
							name = "Thunderclap to nearest healer",
							targetType = "Healer",
							uuid = "9fe48ad5-ddd6-4065-b6d8-2127af5fbb55",
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
								20,
							},
							name = "Job = MNK",
							uuid = "e8f94772-2742-013b-aad2-0091c53a9b10",
							version = 3,
						},
					},
				},
				displayPath = "Movement - Wicked Wheel",
				mechanicTime = 100,
				name = "[Dash] Wicked Wheel - MNK Thunderclap",
				timeRange = true,
				timelineIndex = 21,
				timerEndOffset = -0.35,
				timerStartOffset = -0.45,
				uuid = "d576464b-8041-38b2-8670-fe351917b3ce",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 2262,
							castPosX = 107.58,
							castPosZ = 105.88,
							conditions = 
							{
								
								{
									"d75a4af8-fd42-4a88-ba00-bb5c42b25060",
									true,
								},
							},
							ignoreWeaveRules = true,
							isAreaTarget = true,
							name = "Shukuchi to fixed party spot",
							uuid = "418cdf6d-d3b3-cb93-9ee3-4a9349fba383",
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
								30,
							},
							name = "Job = NIN",
							uuid = "d75a4af8-fd42-4a88-ba00-bb5c42b25060",
							version = 3,
						},
					},
				},
				displayPath = "Movement - Wicked Wheel",
				mechanicTime = 100,
				name = "[Dash] Wicked Wheel - NIN Shukuchi",
				timeRange = true,
				timelineIndex = 21,
				timerEndOffset = -0.35,
				timerStartOffset = -0.45,
				uuid = "6557e19c-1d34-5892-b407-a2829fb0cb60",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 34646,
							conditions = 
							{
								
								{
									"96c0bcc3-7784-712c-9292-5f0e17b8fb82",
									true,
								},
							},
							ignoreWeaveRules = true,
							name = "Slither to nearest healer",
							targetType = "Healer",
							uuid = "947487ee-fc0a-8956-9e74-2c0dc7b4e984",
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
								41,
							},
							name = "Job = VPR",
							uuid = "96c0bcc3-7784-712c-9292-5f0e17b8fb82",
							version = 3,
						},
					},
				},
				displayPath = "Movement - Wicked Wheel",
				mechanicTime = 100,
				name = "[Dash] Wicked Wheel - VPR Slither",
				timeRange = true,
				timelineIndex = 21,
				timerEndOffset = -0.34999999403954,
				timerStartOffset = -0.44999998807907,
				uuid = "38785df2-1fc6-5bc8-b323-c46dd6deb1bb",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 155,
							conditions = 
							{
								
								{
									"c9d9fa43-33db-858c-afc9-2d08f583de62",
									true,
								},
							},
							ignoreWeaveRules = true,
							name = "Aetherial Manipulation to nearest healer",
							targetType = "Healer",
							uuid = "840ba3fb-b155-8f95-9e3a-3c4bf95ffee2",
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
							},
							name = "Job = BLM",
							uuid = "c9d9fa43-33db-858c-afc9-2d08f583de62",
							version = 3,
						},
					},
				},
				displayPath = "Movement - Wicked Wheel",
				mechanicTime = 100,
				name = "[Dash] Wicked Wheel - BLM Aetherial Manipulation",
				timeRange = true,
				timelineIndex = 21,
				timerEndOffset = -0.35,
				timerStartOffset = -0.45,
				uuid = "fdb4de3f-c90f-6c63-a320-dc2588c729d4",
				version = 2,
			},
		},
	},
	[22] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Garuda",
				uuid = "b2e65a07-c442-72ac-bcfb-4d4ee4e69b12",
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
							actionLua = "data.uwu_feather_whirlwind_safe_arrow = data.uwu_feather_whirlwind_safe_arrow or {\n    whirlwinds = {},\n    rains = {},\n    drawn = false\n}\nlocal state = data.uwu_feather_whirlwind_safe_arrow\n\nlocal aoe = {\n    x = eventArgs.x,\n    y = eventArgs.y,\n    z = eventArgs.z,\n    radius = eventArgs.aoeLength + 1.25\n}\n\nif eventArgs.aoeID == 11073 then\n    state.whirlwinds[eventArgs.entityID] = aoe\nelse\n    state.rains[eventArgs.entityID] = aoe\nend\n\nlocal whirlwindCount = 0\nfor _ in pairs(state.whirlwinds) do\n    whirlwindCount = whirlwindCount + 1\nend\n\nlocal rainCount = 0\nfor _ in pairs(state.rains) do\n    rainCount = rainCount + 1\nend\n\nif state.drawn or whirlwindCount < 2 or rainCount < 5 then\n    self.used = true\n    return\nend\nstate.drawn = true\n\nlocal aoes = {}\nfor _, storedAOE in pairs(state.whirlwinds) do\n    table.insert(aoes, storedAOE)\nend\nfor _, storedAOE in pairs(state.rains) do\n    table.insert(aoes, storedAOE)\nend\n\nlocal desired = { x = 100, z = 100 }\nlocal best\nlocal bestScore\n\nlocal function tryCandidate(x, z)\n    for _, hazard in ipairs(aoes) do\n        local dx = x - hazard.x\n        local dz = z - hazard.z\n        if math.sqrt(dx * dx + dz * dz) < hazard.radius - 0.001 then\n            return\n        end\n    end\n\n    local dx = x - desired.x\n    local dz = z - desired.z\n    local score = dx * dx + dz * dz\n    if not best or score < bestScore then\n        best = { x = x, y = 0, z = z }\n        bestScore = score\n    end\nend\n\ntryCandidate(desired.x, desired.z)\n\nfor _, hazard in ipairs(aoes) do\n    for step = 0, 23 do\n        local angle = (step / 24) * math.pi * 2\n        tryCandidate(\n            hazard.x + math.cos(angle) * hazard.radius,\n            hazard.z + math.sin(angle) * hazard.radius\n        )\n    end\nend\n\nfor first = 1, #aoes - 1 do\n    for second = first + 1, #aoes do\n        local a = aoes[first]\n        local b = aoes[second]\n        local dx = b.x - a.x\n        local dz = b.z - a.z\n        local distance = math.sqrt(dx * dx + dz * dz)\n\n        if distance > 0.001 and distance <= a.radius + b.radius\n            and distance >= math.abs(a.radius - b.radius) then\n            local along = (a.radius * a.radius - b.radius * b.radius + distance * distance)\n                / (2 * distance)\n            local heightSquared = a.radius * a.radius - along * along\n            if heightSquared >= 0 then\n                local height = math.sqrt(heightSquared)\n                local baseX = a.x + along * dx / distance\n                local baseZ = a.z + along * dz / distance\n                local offsetX = -dz * height / distance\n                local offsetZ = dx * height / distance\n                tryCandidate(baseX + offsetX, baseZ + offsetZ)\n                tryCandidate(baseX - offsetX, baseZ - offsetZ)\n            end\n        end\n    end\nend\n\nlocal player = TensorCore.mGetPlayer()\nif player and best then\n    local sourcePos = player.pos\n    local heading = TensorCore.getHeadingToTarget(sourcePos, best)\n    local totalDistance = TensorCore.getDistance2d(sourcePos, best)\n\n    if totalDistance > 0.2 then\n        local tipLength = math.min(1.25, totalDistance * 0.5)\n        local baseLength = totalDistance - tipLength\n        local drawer = TensorCore.getCachedDrawer(0xFF00FFFF, 0xFF0088FF, 0xFF0000FF, 0xFFFFFFFF, 2)\n        drawer:addTimedArrow(4000, sourcePos.x, sourcePos.y, sourcePos.z,\n            heading, baseLength, 0.9, tipLength, 1.8, 0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"bfeb244c-4b38-ca41-aeda-820a17c91c17",
									true,
								},
							},
							name = "Boss-side Safe Arrow",
							uuid = "88317f58-3e67-efe8-92cc-2f585da84c55",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.aoeID == 11073 or eventArgs.aoeID == 11085",
							dequeueIfLuaFalse = true,
							name = "Grand or Feather AOE",
							uuid = "bfeb244c-4b38-ca41-aeda-820a17c91c17",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Garuda",
				eventType = 18,
				mechanicTime = 104,
				name = "[Draw] Feather + Whirlwind Safe Arrow",
				timeRange = true,
				timelineIndex = 22,
				timerEndOffset = 2,
				timerStartOffset = -3,
				uuid = "a3501327-195f-143e-973f-dee0cc8e9180",
				version = 2,
			},
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
							alertPriority = 3,
							alertTTS = true,
							alertText = "Dodge Feather rain",
							alertVolume = 81,
							conditions = 
							{
								
								{
									"55a767d4-275f-73d6-9e5b-c7c8da368709",
									true,
								},
							},
							uuid = "3fa2b07a-dff9-e95c-b72b-0fb00a00bdf3",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs and eventArgs.aoeID == 11085 and eventArgs.contentID == 1644 and eventArgs.friendly == false",
							dequeueIfLuaFalse = true,
							name = "Feather Rain AOE",
							uuid = "55a767d4-275f-73d6-9e5b-c7c8da368709",
							version = 3,
						},
					},
				},
				eventType = 18,
				mechanicTime = 104,
				name = "MOVE!",
				timeRange = true,
				timelineIndex = 22,
				timerEndOffset = 2,
				timerOffset = -1.5,
				timerStartOffset = -5,
				uuid = "7f48da43-3f8d-d9f0-a412-de548f2ce168",
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
				name = "Draws - Garuda",
				uuid = "ab4c4ed8-6e0a-a51b-b049-f8b0e2598833",
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
							displayPath = "",
							name = "Draws - Garuda",
							uuid = "c638b37f-bf33-c35a-807f-3aa5109b8399",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player = TensorCore.mGetPlayer()\nif not player or not player.pos then\n    self.used = true\n    return\nend\n\nlocal slot = AnyoneCore.Roster.mySlot()\nlocal targetPos\nlocal label\nlocal colorStart\nlocal colorEnd\n\nif slot == \"T1\" then\n    -- Stand just north of marker 4 while keeping the requested north-facing setup.\n    targetPos = {\n        x = 99.99,\n        y = 0.0,\n        z = 102.0\n    }\n    label = \"MT JUST NORTH OF 4 / FACE GARUDA NORTH\"\n    colorStart = 0xFF66DDFF\n    colorEnd = 0xFF0088FF\nelse\n    -- Use the live position of waymark 4 so the stack arrow lands on the marker.\n    local markX, markY, markZ, markActive = Argus.getWaymarkInfo(8)\n    if markActive and markX and markY and markZ then\n        targetPos = {\n            x = markX,\n            y = markY,\n            z = markZ\n        }\n    else\n        -- Fallback for pulls where waymarks have not been placed yet.\n        targetPos = {\n            x = 99.99,\n            y = 0.0,\n            z = 103.11\n        }\n    end\n    label = \"STACK TIGHT ON 4 (MT EXCLUDED)\"\n    colorStart = 0xFF66FF99\n    colorEnd = 0xFF00AA66\nend\n\nlocal sourcePos = player.pos\nlocal distance = TensorCore.getDistance2d(sourcePos, targetPos)\nif distance > 0.25 then\n    local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n    local tipLength = math.min(2.5, distance * 0.35)\n    local baseLength = math.max(0.1, distance - tipLength)\n    local drawer = TensorCore.getCachedDrawer(\n        colorStart, colorEnd, 0xFFFFFFFF, 0xFF000000, 3\n    )\n    drawer:addTimedArrow(\n        8000,\n        sourcePos.x, sourcePos.y, sourcePos.z,\n        heading,\n        baseLength, 1.25, tipLength, 2.8,\n        0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nAnyoneCore.addTimedWorldText(\n    8000,\n    label,\n    {x = targetPos.x, y = targetPos.y + 1.5, z = targetPos.z},\n    colorStart,\n    true,\n    1.15\n)\n\nself.used = true",
							displayPath = "Draws - Garuda",
							name = "MT North / Party 4 Guidance",
							uuid = "12a158a7-f4d5-9549-927a-c4fb59a9b249",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Draws - Garuda",
				mechanicTime = 105,
				name = "[Draw] Before Second Satin Plumes - MT North / Party 4",
				timeRange = true,
				timelineIndex = 23,
				timerEndOffset = 7,
				timerStartOffset = 4,
				uuid = "ca9d74b9-2689-ba1e-aafe-cd665fcb139f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Cooldown Holds",
				uuid = "a710bf59-9652-50f6-95c5-cb63d840e226",
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
							gVar = "ACR_RikuDNC3_CD",
							gVarValue = 2,
							name = "CD Off",
							uuid = "5a60008a-0bad-8310-b10b-c2e41f1a045b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_RikuDNC3_Flourish",
							gVarValue = 2,
							name = "Flourish Off",
							uuid = "54a697e9-1526-d59a-bac0-6eb1918a56b4",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Cooldown Holds",
				mechanicTime = 105,
				name = "[CD] Disable at 105",
				timelineIndex = 23,
				uuid = "015ac8e1-e188-72b4-923e-58b2da24bca5",
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
				name = "[Raid calls]",
				uuid = "4856cb4e-93a9-714b-9f42-e99e31d54358",
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
							alertDuration = 8000,
							alertPriority = 2,
							alertTTS = true,
							alertText = "Caster take west tether",
							conditions = 
							{
								
								{
									"799dfc4e-c873-f1fd-b00d-f5a73c189eea",
									true,
								},
							},
							uuid = "17ccdb0f-7f7c-158c-b5cb-9f252ac8578c",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Roster.mySlot() == \"R2\"",
							name = "R2 Only",
							uuid = "799dfc4e-c873-f1fd-b00d-f5a73c189eea",
							version = 3,
						},
					},
				},
				displayPath = "[Raid calls]",
				mechanicTime = 124,
				name = "[Raid Call][Garuda] Mesohigh",
				timelineIndex = 26,
				timerOffset = -1,
				uuid = "2bc7ce40-829a-1e5d-8791-50992f76d1e7",
				version = 2,
			},
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
							alertDuration = 8000,
							alertPriority = 2,
							alertTTS = true,
							alertText = "Tank take East Tether",
							conditions = 
							{
								
								{
									"105aa17b-27b9-f298-8c2e-ad12b3d436e1",
									true,
								},
							},
							uuid = "6a861670-424e-bba8-8195-091ad38d9b77",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Roster.mySlot() == \"OT\"",
							name = "OT Only",
							uuid = "105aa17b-27b9-f298-8c2e-ad12b3d436e1",
							version = 3,
						},
					},
				},
				displayPath = "[Raid calls]",
				mechanicTime = 124,
				name = "[Raid Call][Garuda] Mesohigh - OT",
				timelineIndex = 26,
				timerOffset = -1,
				uuid = "4514e727-5740-a6a2-bf4e-4ce6e7137062",
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
							aType = "Alert",
							alertPriority = 3,
							alertTTS = true,
							alertText = "Kill adds & stack middle.",
							alertVolume = 81,
							uuid = "8d25e8ad-1263-0299-a7f1-51f9deed2666",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 124,
				name = "MOVE!",
				timelineIndex = 27,
				timerOffset = -7.5,
				uuid = "ce907935-d722-6345-871f-151417190aec",
				version = 2,
			},
		},
	},
	[28] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Garuda",
				uuid = "8a27b6f8-3c5d-396a-ae76-319a2e952326",
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
							displayPath = "",
							name = "Draws - Garuda",
							uuid = "f47df1c0-0c4d-e7c2-81f5-9a35fabfb34b",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player = TensorCore.mGetPlayer()\nif not player or not player.pos then\n    self.used = true\n    return\nend\n\nlocal target = {x = x, y = y, z = z}\nlocal distance = TensorCore.getDistance2d(player.pos, target)\nif distance > 0.25 then\n    local tipLength = math.min(2.0, distance * 0.4)\n    local drawer = TensorCore.getCachedDrawer(\n        0xFFB8FF88,\n        0xFF55FF55,\n        0xFF2A8A2A,\n        0xFFFFFFFF,\n        3\n    )\n    drawer:addTimedArrow(\n        8000,\n        player.pos.x, player.pos.y, player.pos.z,\n        TensorCore.getHeadingToTarget(player.pos, target),\n        math.max(0.1, distance - tipLength),\n        1.4,\n        tipLength,\n        2.6,\n        0,\n        false,\n        Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\n    drawer:addTimedCircle(\n        8000,\n        target.x, target.y, target.z,\n        1.7,\n        0,\n        false,\n        true\n    )\nend\n\nTensorCore.addAlertText(5000, \"PICK UP LIGHT PUDDLE\", 1.0, 2, false)\nself.used = true",
							conditions = 
							{
								
								{
									"40d0eb71-a56d-4b7f-9e9f-e8788975391b",
									true,
								},
							},
							displayPath = "Draws - Garuda",
							name = "Alert and arrow to light puddle",
							uuid = "01dce23e-3b58-d3ac-a3f6-743b26d1cdcf",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Garuda",
							uuid = "b1b03c55-17cb-f142-a74c-ebd29fc543db",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local role = AnyoneCore.Roster.mySlot()\nreturn (role == \"H1\" or role == \"H2\")\n    and entityContentID == 2009481\n    and keyID == 2009481\n    and type == 7\n    and flags == 5\n    and state == 0",
							dequeueIfLuaFalse = true,
							displayPath = "Draws - Garuda",
							name = "Light puddle for H1/H2",
							uuid = "40d0eb71-a56d-4b7f-9e9f-e8788975391b",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Garuda",
				eventType = 29,
				mechanicTime = 129,
				name = "[Draw] Garuda Light Puddle - Healer Pickup",
				timeRange = true,
				timelineIndex = 28,
				timerEndOffset = 6,
				timerStartOffset = -1,
				uuid = "3f231c85-552f-df20-908c-eb28810836f1",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Ifrit",
				uuid = "14b06d9f-aee1-0298-b1ec-ed3d5bcef470",
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
							actionLua = "data.uwu_ifrit_transition_player_arrow = data.uwu_ifrit_transition_player_arrow or {\n    cyclones = {},\n    plumes = {},\n    drawn = false\n}\nlocal state = data.uwu_ifrit_transition_player_arrow\n\nif eventArgs.aoeID == 11103 then\n    state.cyclones[eventArgs.entityID] = {\n        x = eventArgs.x,\n        z = eventArgs.z,\n        heading = eventArgs.heading,\n        length = eventArgs.aoeLength,\n        width = eventArgs.aoeWidth\n    }\nelse\n    state.plumes[eventArgs.entityID] = {\n        x = eventArgs.x,\n        z = eventArgs.z,\n        radius = eventArgs.aoeLength\n    }\nend\n\nlocal cycloneCount = 0\nfor _ in pairs(state.cyclones) do\n    cycloneCount = cycloneCount + 1\nend\n\nlocal plumeCount = 0\nfor _ in pairs(state.plumes) do\n    plumeCount = plumeCount + 1\nend\n\nif state.drawn or cycloneCount < 1 or plumeCount < 10 then\n    self.used = true\n    return\nend\nstate.drawn = true\n\nlocal candidates = {\n    { x = 83.5, y = 0, z = 100 },\n    { x = 116.5, y = 0, z = 100 },\n    { x = 100, y = 0, z = 83.5 },\n    { x = 100, y = 0, z = 116.5 }\n}\n\nlocal best\nlocal bestClearance\n\nfor _, candidate in ipairs(candidates) do\n    local clearance = math.huge\n\n    for _, plume in pairs(state.plumes) do\n        local dx = candidate.x - plume.x\n        local dz = candidate.z - plume.z\n        local distance = math.sqrt(dx * dx + dz * dz)\n        clearance = math.min(clearance, distance - plume.radius - 1)\n    end\n\n    for _, cyclone in pairs(state.cyclones) do\n        local forwardX = math.sin(cyclone.heading)\n        local forwardZ = math.cos(cyclone.heading)\n        local relativeX = candidate.x - cyclone.x\n        local relativeZ = candidate.z - cyclone.z\n        local along = relativeX * forwardX + relativeZ * forwardZ\n        local across = -relativeX * forwardZ + relativeZ * forwardX\n        local halfWidth = cyclone.width / 2\n        local closestAlong = math.max(0, math.min(cyclone.length, along))\n        local closestAcross = math.max(-halfWidth, math.min(halfWidth, across))\n        local deltaAlong = along - closestAlong\n        local deltaAcross = across - closestAcross\n        local distance = math.sqrt(deltaAlong * deltaAlong + deltaAcross * deltaAcross)\n        clearance = math.min(clearance, distance - 1)\n    end\n\n    if clearance >= 0 and (not best or clearance > bestClearance) then\n        best = candidate\n        bestClearance = clearance\n    end\nend\n\nlocal player = TensorCore.mGetPlayer()\nif player and best then\n    local heading = TensorCore.getHeadingToTarget(player.pos, best)\n    local drawer = TensorCore.getCachedDrawer(0xFFB6FFB6, 0xFF55FF55, 0xFFFFFFFF, 0xFF000000, 4)\n    drawer:addTimedArrow(\n        5000,\n        player.pos.x, player.pos.y, player.pos.z,\n        heading,\n        11, 3,\n        4.5, 6,\n        0, false,\n        Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"3389d81d-362e-fd52-9cb1-6dd9e731890a",
									true,
								},
							},
							name = "Wide Player Safe-Side Arrow",
							uuid = "49f24296-b50e-dfe6-896b-982d99bb23f0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.aoeID == 11103 or eventArgs.aoeID == 11105",
							dequeueIfLuaFalse = true,
							name = "Transition Plume or Cyclone",
							uuid = "3389d81d-362e-fd52-9cb1-6dd9e731890a",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ifrit",
				eventType = 18,
				loop = true,
				mechanicTime = 129,
				name = "[Draw] Ifrit Transition - Player Safe Side Arrow",
				timeRange = true,
				timelineIndex = 28,
				timerEndOffset = 45,
				timerStartOffset = -10,
				uuid = "fd6dd169-23ea-ba63-a252-d37a22ef62bf",
				version = 2,
			},
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
							alertPriority = 3,
							alertTTS = true,
							alertText = "Dodge Feather Rain",
							alertVolume = 81,
							conditions = 
							{
								
								{
									"b3db334e-b65f-49f5-b24c-6d54d73323e0",
									true,
								},
							},
							uuid = "d264fd39-7a80-917b-a2ae-42867ab601bc",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs and eventArgs.aoeID == 11085 and eventArgs.contentID == 1644 and eventArgs.friendly == false",
							dequeueIfLuaFalse = true,
							name = "Feather Rain AOE",
							uuid = "b3db334e-b65f-49f5-b24c-6d54d73323e0",
							version = 3,
						},
					},
				},
				eventType = 18,
				mechanicTime = 129,
				name = "MOVE!",
				timeRange = true,
				timelineIndex = 28,
				timerEndOffset = 2,
				timerOffset = -2.5,
				timerStartOffset = -5,
				uuid = "f4b8ece1-a7a1-ff53-96e8-7d270ffd8fc1",
				version = 2,
			},
		},
	},
	[36] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Ifrit",
				uuid = "82f923dc-cfcd-9dc1-b198-5563abf158ad",
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
							displayPath = "",
							name = "Draws - Ifrit",
							uuid = "e1082ccd-d6d6-2fd4-9b09-5ba35ce7df7b",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 4500,
							alertPriority = 3,
							alertScale = 0.9,
							alertTTS = true,
							alertText = "OT: PROVOKE IFRIT / MOVE TO C",
							conditions = 
							{
								
								{
									"0f1a35e8-1b7c-5970-800a-de16f94545d4",
									true,
								},
							},
							displayPath = "Draws - Ifrit",
							name = "OT Provoke and Move to C",
							uuid = "a9fd9459-1991-edb4-b584-b121495dcc1b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player = TensorCore.mGetPlayer()\nif not player or not player.pos then\n    self.used = true\n    return\nend\n\nlocal markX, markY, markZ, markActive = Argus.getWaymarkInfo(3)\nif not markActive or not markX or not markY or not markZ then\n    self.used = true\n    return\nend\n\nlocal targetPos = {\n    x = markX,\n    y = player.pos.y,\n    z = markZ\n}\nlocal distance = TensorCore.getDistance2d(player.pos, targetPos)\nif distance and distance > 0.25 then\n    local heading = TensorCore.getHeadingToTarget(player.pos, targetPos)\n    local tipLength = math.min(2.5, distance * 0.35)\n    local baseLength = math.max(0.1, distance - tipLength)\n    local drawer = TensorCore.getCachedDrawer(\n        0xFFCC99FF,\n        0xFF8833CC,\n        0xFFFFFFFF,\n        0xFF000000,\n        3\n    )\n    drawer:addTimedArrow(\n        4500,\n        player.pos.x, player.pos.y, player.pos.z,\n        heading,\n        baseLength, 1.25, tipLength, 2.8,\n        0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nAnyoneCore.addTimedWorldText(\n    4500,\n    \"OT: PROVOKE IFRIT / MOVE TO C\",\n    {x = markX, y = markY + 1.5, z = markZ},\n    0xFFCC99FF,\n    true,\n    1.1\n)\n\nself.used = true",
							conditions = 
							{
								
								{
									"0f1a35e8-1b7c-5970-800a-de16f94545d4",
									true,
								},
							},
							displayPath = "Draws - Ifrit",
							name = "Arrow to C Marker",
							uuid = "95313cf7-3d3b-9f7f-96ef-4641ad2bd86f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Ifrit",
							uuid = "fa99252c-cd2a-ca71-aabf-5b93303abb71",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Roster.mySlot() == \"T2\"",
							dequeueIfLuaFalse = true,
							displayPath = "Draws - Ifrit",
							name = "Off Tank (T2)",
							uuid = "0f1a35e8-1b7c-5970-800a-de16f94545d4",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ifrit",
				mechanicTime = 300,
				name = "[Alert] Ifrit Start - OT Provoke and Move to C",
				timeRange = true,
				timelineIndex = 36,
				timerEndOffset = 4,
				timerStartOffset = 1,
				uuid = "1261791d-ec4a-6546-8ab8-d7d54c1205f1",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Cooldown Holds",
				uuid = "09b70b71-5be4-f0db-a898-3b2da66eb512",
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
							gVar = "ACR_RikuDNC3_CD",
							name = "CD On",
							uuid = "396bfa3f-bb6c-3950-80ec-a2034cab07a8",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_RikuDNC3_Flourish",
							name = "Flourish On",
							uuid = "c4e9f1c3-b2bb-7d15-ba51-0a4ca5874680",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Cooldown Holds",
				mechanicTime = 300,
				name = "[CD] Enable at 300",
				timelineIndex = 36,
				uuid = "712f6ecc-347e-0a46-9112-1e32eaf1994f",
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
				name = "Knockback",
				uuid = "80440b9b-babb-9595-84b7-cdee3af10db5",
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
							actionID = 7548,
							endIfUsed = true,
							name = "Arm's Length before Vulcan Burst",
							uuid = "930008cd-f06f-b10d-8775-4892522c38fb",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Knockback",
				mechanicTime = 315,
				name = "[CD] Arm's Length - Vulcan Burst",
				timelineIndex = 39,
				timerOffset = -2,
				uuid = "358c5d0a-ba4f-36ee-a9c5-765eef5b4d0f",
				version = 2,
			},
		},
	},
	[40] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Ifrit",
				uuid = "eb8f94a2-9930-11f9-bc4e-16e77c1e1cf8",
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
							displayPath = "",
							name = "Draws - Ifrit",
							uuid = "04a57abc-c44a-4c51-b650-af6c938bbdfd",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 4000,
							alertPriority = 3,
							alertScale = 0.9,
							alertTTS = true,
							alertText = "OT: INVULN BEFORE INCINERATE",
							conditions = 
							{
								
								{
									"249e8570-f3f1-00fb-97ac-d361f49ae166",
									true,
								},
							},
							displayPath = "Draws - Ifrit",
							name = "OT Invuln Before Incinerate",
							uuid = "a5d8f600-eca7-3705-8996-2375a38446f9",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Ifrit",
							uuid = "0811b95c-2aef-68d4-9261-e79df7f3f63a",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Roster.mySlot() == \"T2\"",
							dequeueIfLuaFalse = true,
							displayPath = "Draws - Ifrit",
							name = "Off Tank (T2)",
							uuid = "249e8570-f3f1-00fb-97ac-d361f49ae166",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ifrit",
				mechanicTime = 318,
				name = "[Alert] Ifrit - OT Invuln Before Incinerate",
				timeRange = true,
				timelineIndex = 40,
				timerEndOffset = -2,
				timerStartOffset = -5,
				uuid = "d828d796-88c5-4603-992f-0bc731936c75",
				version = 2,
			},
		},
	},
	[42] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Ifrit",
				uuid = "d5616de0-055d-964e-9a15-fface97d57a8",
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
							displayPath = "",
							name = "Draws - Ifrit",
							uuid = "61fefd67-3394-6186-9930-4eb8d859de8c",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 4500,
							alertPriority = 3,
							alertScale = 0.9,
							alertTTS = true,
							alertText = "MT: PROVOKE IFRIT, MOVE TO C",
							conditions = 
							{
								
								{
									"2f636932-171e-725f-92fc-59a7223b4e43",
									true,
								},
							},
							displayPath = "Draws - Ifrit",
							name = "MT Provoke and Move to C",
							uuid = "73990ebd-2f6f-90ee-8457-80f60d071fcd",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Ifrit",
							uuid = "6cc312cc-e3da-5fa3-aebd-5b6389c05b97",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Roster.mySlot() == \"T1\"",
							dequeueIfLuaFalse = true,
							displayPath = "Draws - Ifrit",
							name = "Main Tank (T1)",
							uuid = "2f636932-171e-725f-92fc-59a7223b4e43",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ifrit",
				mechanicTime = 325,
				name = "[Alert] Ifrit - MT Provoke and Move to C",
				timeRange = true,
				timelineIndex = 42,
				timerEndOffset = 3,
				uuid = "1c110363-9b68-6178-9d98-421e55f4fa09",
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
				name = "Draws - Ifrit",
				uuid = "e62126ac-9218-ef61-ab99-e88d08ca4b00",
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
							actionLua = "local e = TensorCore.mGetEntity(eventArgs.entityID)\nif not e or not e.pos or not (e.pos.x > 100 and e.pos.z <= 103) then\n    self.used = true\n    return\nend\nAnyoneCore.addTimedWorldTextOnEnt(45000, \"NE\", eventArgs.entityID, 0xFFFFFFFF, true, 2.5, 2.5)\nself.used = true",
							conditions = 
							{
								
								{
									"3beebc8f-db73-8be6-b225-23b059ecc9b7",
									true,
								},
							},
							name = "World Text - NE",
							uuid = "77fc6c9d-9893-2ad1-b647-1c5c59316f60",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityContentID == 1186 and eventArgs.isTargetable == true",
							dequeueIfLuaFalse = true,
							name = "Infernal Nail",
							uuid = "3beebc8f-db73-8be6-b225-23b059ecc9b7",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ifrit",
				enabled = false,
				eventType = 26,
				loop = true,
				mechanicTime = 328,
				name = "[Draw] Infernal Nail NE Text",
				timeRange = true,
				timelineIndex = 43,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "73e6d15f-704e-04ab-891f-e2abd2b06dd6",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local e = TensorCore.mGetEntity(eventArgs.entityID)\nif not e or not e.pos then\n    self.used = true\n    return\nend\n\ndata.uwu_relative_nails = data.uwu_relative_nails or { nails = {}, drawn = false }\nlocal state = data.uwu_relative_nails\nif state.drawn then\n    self.used = true\n    return\nend\n\nif not state.nails[eventArgs.entityID] then\n    state.nails[eventArgs.entityID] = { id = eventArgs.entityID, x = e.pos.x, z = e.pos.z }\nend\n\nlocal count = 0\nfor _ in pairs(state.nails) do\n    count = count + 1\nend\nif count < 4 then\n    self.used = true\n    return\nend\n\nlocal list = {}\nfor _, nail in pairs(state.nails) do\n    list[#list + 1] = nail\nend\n\nlocal northAIndex, northBIndex = 1, 2\nlocal minDistanceSquared = math.huge\nfor i = 1, 3 do\n    for j = i + 1, 4 do\n        local dx = list[i].x - list[j].x\n        local dz = list[i].z - list[j].z\n        local distanceSquared = dx * dx + dz * dz\n        if distanceSquared < minDistanceSquared then\n            minDistanceSquared = distanceSquared\n            northAIndex = i\n            northBIndex = j\n        end\n    end\nend\n\nlocal northA = list[northAIndex]\nlocal northB = list[northBIndex]\nlocal southA\nlocal southB\nfor i = 1, 4 do\n    if i ~= northAIndex and i ~= northBIndex then\n        if not southA then\n            southA = list[i]\n        else\n            southB = list[i]\n        end\n    end\nend\n\nlocal northCenterX = (northA.x + northB.x) * 0.5\nlocal northCenterZ = (northA.z + northB.z) * 0.5\nlocal southCenterX = (southA.x + southB.x) * 0.5\nlocal southCenterZ = (southA.z + southB.z) * 0.5\nlocal northX = northCenterX - southCenterX\nlocal northZ = northCenterZ - southCenterZ\nlocal northLength = math.sqrt(northX * northX + northZ * northZ)\nif northLength < 0.01 then\n    self.used = true\n    return\nend\n\nlocal eastX = -northZ / northLength\nlocal eastZ = northX / northLength\n\nlocal northASide = (northA.x - northCenterX) * eastX + (northA.z - northCenterZ) * eastZ\nlocal northALabel = northASide >= 0 and \"NE\" or \"NW\"\nlocal northANumber = northASide >= 0 and \"3\" or \"4\"\nlocal northBSide = (northB.x - northCenterX) * eastX + (northB.z - northCenterZ) * eastZ\nlocal northBLabel = northBSide >= 0 and \"NE\" or \"NW\"\nlocal northBNumber = northBSide >= 0 and \"3\" or \"4\"\n\nlocal southASide = (southA.x - southCenterX) * eastX + (southA.z - southCenterZ) * eastZ\nlocal southALabel = southASide >= 0 and \"SE\" or \"SW\"\nlocal southANumber = southASide >= 0 and \"1\" or \"2\"\nlocal southBSide = (southB.x - southCenterX) * eastX + (southB.z - southCenterZ) * eastZ\nlocal southBLabel = southBSide >= 0 and \"SE\" or \"SW\"\nlocal southBNumber = southBSide >= 0 and \"1\" or \"2\"\n\nstate.textIDs = state.textIDs or {}\nstate.textIDs[northA.id] = {\n    direction = AnyoneCore.addTimedWorldTextOnEnt(45000, northALabel, northA.id, 0xFFFFFFFF, true, 2.5, 2.5),\n    number = AnyoneCore.addTimedWorldTextOnEnt(45000, northANumber, northA.id, 0xFFFFFFFF, true, 2.5, 5.0)\n}\nstate.textIDs[northB.id] = {\n    direction = AnyoneCore.addTimedWorldTextOnEnt(45000, northBLabel, northB.id, 0xFFFFFFFF, true, 2.5, 2.5),\n    number = AnyoneCore.addTimedWorldTextOnEnt(45000, northBNumber, northB.id, 0xFFFFFFFF, true, 2.5, 5.0)\n}\nstate.textIDs[southA.id] = {\n    direction = AnyoneCore.addTimedWorldTextOnEnt(45000, southALabel, southA.id, 0xFFFFFFFF, true, 2.5, 2.5),\n    number = AnyoneCore.addTimedWorldTextOnEnt(45000, southANumber, southA.id, 0xFFFFFFFF, true, 2.5, 5.0)\n}\nstate.textIDs[southB.id] = {\n    direction = AnyoneCore.addTimedWorldTextOnEnt(45000, southBLabel, southB.id, 0xFFFFFFFF, true, 2.5, 2.5),\n    number = AnyoneCore.addTimedWorldTextOnEnt(45000, southBNumber, southB.id, 0xFFFFFFFF, true, 2.5, 5.0)\n}\n\nstate.drawn = true\nself.used = true",
							conditions = 
							{
								
								{
									"b7f340a5-f23a-258a-a939-6919979debb9",
									true,
								},
							},
							name = "World Text - Relative Labels",
							uuid = "405d2db1-5216-5811-b1b5-fceb270a037c",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityContentID == 1186 and eventArgs.isTargetable == true",
							dequeueIfLuaFalse = true,
							name = "Targetable Nail",
							uuid = "b7f340a5-f23a-258a-a939-6919979debb9",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ifrit",
				eventType = 26,
				loop = true,
				mechanicTime = 328,
				name = "[Draw] Infernal Nail Relative Labels",
				timeRange = true,
				timelineIndex = 43,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "7ae0d341-24aa-8504-a159-dcd64f229b8b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.uwu_ifrit_last_nail = { dead = {}, count = 0 }\nself.used = true",
							conditions = 
							{
								
								{
									"4c6f52b2-d0b9-0e6e-bf58-26d3431f803d",
									true,
								},
							},
							name = "Reset Last Nail",
							uuid = "e84a5e01-fa00-ea7d-b211-02e4c26bc9e5",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityContentID == 1186",
							dequeueIfLuaFalse = true,
							name = "Infernal Nail",
							uuid = "4c6f52b2-d0b9-0e6e-bf58-26d3431f803d",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ifrit",
				eventType = 5,
				loop = true,
				mechanicTime = 328,
				name = "[Core] Reset Last Nail Direction",
				timeRange = true,
				timelineIndex = 43,
				timerEndOffset = 10,
				timerStartOffset = -8,
				uuid = "0b8c74ef-d40f-aae1-89f5-64488b25ced8",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local labels = data.uwu_relative_nails\nlocal nail = labels and labels.nails and labels.nails[eventArgs.entityID]\nif not nail then\n    self.used = true\n    return\nend\n\nlocal state = data.uwu_ifrit_last_nail or { dead = {}, count = 0 }\ndata.uwu_ifrit_last_nail = state\nif not state.dead[eventArgs.entityID] then\n    state.dead[eventArgs.entityID] = true\n    state.count = state.count + 1\n    if state.count == 4 then\n        state.last = { x = nail.x, z = nail.z }\n    end\nend\nself.used = true",
							conditions = 
							{
								
								{
									"996f11de-6b13-9867-9e4c-470afa842eb0",
									true,
								},
							},
							name = "Capture Fourth Nail",
							uuid = "3e5faec9-89ad-2774-8f9f-154bc20f38fb",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityContentID == 1186 and eventArgs.wasTargetable == true and eventArgs.isTargetable == false",
							dequeueIfLuaFalse = true,
							name = "Nail Died",
							uuid = "996f11de-6b13-9867-9e4c-470afa842eb0",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ifrit",
				eventType = 26,
				loop = true,
				mechanicTime = 328,
				name = "[Core] Capture Last Nail Direction",
				timeRange = true,
				timelineIndex = 43,
				timerEndOffset = 40,
				timerStartOffset = -8,
				uuid = "524d7dab-54f9-2688-b67d-db8a388722fc",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local labels = data.uwu_relative_nails\nif not labels or not labels.nails or not labels.textIDs then\n    self.used = true\n    return\nend\n\nlocal list = {}\nfor _, nail in pairs(labels.nails) do\n    list[#list + 1] = nail\nend\nif #list ~= 4 then\n    self.used = true\n    return\nend\n\nlocal northAIndex, northBIndex = 1, 2\nlocal minDistanceSquared = math.huge\nfor i = 1, 3 do\n    for j = i + 1, 4 do\n        local dx = list[i].x - list[j].x\n        local dz = list[i].z - list[j].z\n        local distanceSquared = dx * dx + dz * dz\n        if distanceSquared < minDistanceSquared then\n            minDistanceSquared = distanceSquared\n            northAIndex = i\n            northBIndex = j\n        end\n    end\nend\n\nlocal northA = list[northAIndex]\nlocal northB = list[northBIndex]\nlocal southA\nlocal southB\nfor i = 1, 4 do\n    if i ~= northAIndex and i ~= northBIndex then\n        if not southA then\n            southA = list[i]\n        else\n            southB = list[i]\n        end\n    end\nend\n\nlocal northCenterX = (northA.x + northB.x) * 0.5\nlocal northCenterZ = (northA.z + northB.z) * 0.5\nlocal southCenterX = (southA.x + southB.x) * 0.5\nlocal southCenterZ = (southA.z + southB.z) * 0.5\nlocal northX = northCenterX - southCenterX\nlocal northZ = northCenterZ - southCenterZ\nlocal northLength = math.sqrt(northX * northX + northZ * northZ)\nif northLength < 0.01 then\n    self.used = true\n    return\nend\n\nlocal eastX = -northZ / northLength\nlocal eastZ = northX / northLength\nlocal numbers = {}\n\nlocal northASide = (northA.x - northCenterX) * eastX + (northA.z - northCenterZ) * eastZ\nnumbers[northA.id] = northASide >= 0 and 3 or 4\nlocal northBSide = (northB.x - northCenterX) * eastX + (northB.z - northCenterZ) * eastZ\nnumbers[northB.id] = northBSide >= 0 and 3 or 4\nlocal southASide = (southA.x - southCenterX) * eastX + (southA.z - southCenterZ) * eastZ\nnumbers[southA.id] = southASide >= 0 and 1 or 2\nlocal southBSide = (southB.x - southCenterX) * eastX + (southB.z - southCenterZ) * eastZ\nnumbers[southB.id] = southBSide >= 0 and 1 or 2\n\nlocal role = AnyoneCore.Roster.mySlot()\nlocal meleeOrTank = role == \"T1\" or role == \"T2\" or role == \"M1\" or role == \"M2\" or role == \"MT\" or role == \"OT\"\nlocal living = {}\nlocal lowestLivingNumber = 5\nlocal northAboveForty = false\n\nfor entityID, number in pairs(numbers) do\n    local entity = TensorCore.mGetEntity(entityID)\n    local percent = entity and entity.hp and entity.hp.percent or 0\n    if labels.textIDs[entityID] and entity and entity.hp and entity.hp.current > 0 then\n        living[entityID] = { entity = entity, number = number, percent = percent }\n        if number < lowestLivingNumber then\n            lowestLivingNumber = number\n        end\n        if meleeOrTank and (number == 3 or number == 4) and percent > 45 then\n            northAboveForty = true\n        end\n    end\nend\n\nif lowestLivingNumber == 5 then\n    self.used = true\n    return\nend\n\nlocal greenDrawer = TensorCore.getCachedDrawer(\n    0x6600FF00, 0xBB00FF00, 0xFF00FF00, 0xFF000000, 3\n)\nlocal redDrawer = TensorCore.getCachedDrawer(\n    0x660000FF, 0xBB0000FF, 0xFF0000FF, 0xFF000000, 3\n)\n\nfor _, entry in pairs(living) do\n    local isActive\n    if meleeOrTank and northAboveForty then\n        isActive = (entry.number == 3 or entry.number == 4) and entry.percent > 45\n    else\n        isActive = entry.number == lowestLivingNumber\n    end\n    local drawer = isActive and greenDrawer or redDrawer\n    local radius = isActive and 2.6 or 1.25\n    drawer:addTimedCircleOnEnt(\n        700, entry.entity.id, radius,\n        0, false, true, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nself.used = true",
							name = "Nail Prep and Priority Circles",
							uuid = "6c87a696-e415-cdae-a841-227915a4f1e1",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Draws - Ifrit",
				loop = true,
				mechanicTime = 328,
				name = "[Draw] Infernal Nail Prep & Priority Circles",
				throttleTime = 400,
				timeRange = true,
				timelineIndex = 43,
				timerEndOffset = 41,
				uuid = "6feb6300-5b79-f5ac-ae88-2068513d1208",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local e = TensorCore.mGetEntity(eventArgs.entityID)\nif not e or not e.pos or not (e.pos.x < 100 and e.pos.z < 100) then\n    self.used = true\n    return\nend\nAnyoneCore.addTimedWorldTextOnEnt(45000, \"NW\", eventArgs.entityID, 0xFFFFFFFF, true, 2.5, 2.5)\nself.used = true",
							conditions = 
							{
								
								{
									"c070f871-0b63-5a11-8633-f6508bcd5bf8",
									true,
								},
							},
							name = "World Text - NW",
							uuid = "f1a84a69-5106-5d43-96ca-9688f3f86b15",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityContentID == 1186 and eventArgs.isTargetable == true",
							dequeueIfLuaFalse = true,
							name = "Infernal Nail",
							uuid = "c070f871-0b63-5a11-8633-f6508bcd5bf8",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ifrit",
				enabled = false,
				eventType = 26,
				loop = true,
				mechanicTime = 328,
				name = "[Draw] Infernal Nail NW Text",
				timeRange = true,
				timelineIndex = 43,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "bbe651e7-3d58-40f3-9200-b670e7f2822e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local state = data.uwu_relative_nails\nif not state or not state.textIDs then\n    self.used = true\n    return\nend\n\nlocal textIDs = state.textIDs[eventArgs.entityID]\nif not textIDs then\n    self.used = true\n    return\nend\n\nif textIDs.direction then\n    AnyoneCore.removeTimedWorldText(textIDs.direction)\nend\nif textIDs.number then\n    AnyoneCore.removeTimedWorldText(textIDs.number)\nend\nstate.textIDs[eventArgs.entityID] = nil\n\nstate.deadNailCount = (state.deadNailCount or 0) + 1\nif state.deadNailCount == 4 and not state.relativeNorthTextID then\n    local lastNail = state.nails and state.nails[eventArgs.entityID]\n    if lastNail then\n        state.relativeNorthTextID = AnyoneCore.addTimedWorldText(\n            60000,\n            \"N\",\n            { x = lastNail.x, y = 2.5, z = lastNail.z },\n            0xFFFFFFFF,\n            true,\n            3.0\n        )\n    end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"76bbfa2a-f21b-ea51-844c-22af3110e378",
									true,
								},
							},
							name = "Remove Nail Text",
							uuid = "3b43b960-d3d8-e433-8941-1207f121f2ea",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityContentID == 1186 and eventArgs.wasTargetable == true and eventArgs.isTargetable == false",
							dequeueIfLuaFalse = true,
							name = "Nail Died",
							uuid = "76bbfa2a-f21b-ea51-844c-22af3110e378",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ifrit",
				eventType = 26,
				loop = true,
				mechanicTime = 328,
				name = "[Draw] Infernal Nail Text Cleanup",
				timeRange = true,
				timelineIndex = 43,
				timerEndOffset = 40,
				timerStartOffset = -8,
				uuid = "37f30830-7312-a22e-ac64-87e79232622e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Ifrit",
							uuid = "870ffe55-627b-cd49-8a31-15acf1728166",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertPriority = 3,
							alertScale = 0.9,
							alertTTS = true,
							alertText = "MT: MOVE NORTH BETWEEN SHORT NAILS",
							conditions = 
							{
								
								{
									"e3e1ca31-8788-20c4-9310-202fcf207718",
									true,
								},
							},
							displayPath = "Draws - Ifrit",
							name = "MT Move North Between Nails",
							uuid = "27f6abfc-8e80-d7e8-933a-7be2e0670b90",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player = TensorCore.mGetPlayer()\nlocal labels = data.uwu_relative_nails\nif not player or not player.pos or not labels or not labels.nails then return end\nlocal nails = {}\nfor _, nail in pairs(labels.nails) do if nail and nail.x and nail.z then nails[#nails + 1] = nail end end\nif #nails < 4 then return end\nlocal northA, northB\nlocal closest = math.huge\nfor i = 1, #nails - 1 do\n    for j = i + 1, #nails do\n        local dx = nails[i].x - nails[j].x\n        local dz = nails[i].z - nails[j].z\n        local q = dx * dx + dz * dz\n        if q < closest then closest = q; northA = nails[i]; northB = nails[j] end\n    end\nend\nif not northA or not northB then return end\nlocal destination = {x=(northA.x+northB.x)*0.5,y=player.pos.y,z=(northA.z+northB.z)*0.5}\nlocal distance = TensorCore.getDistance2d(player.pos,destination)\nif distance and distance > 0.2 then\n    local heading = TensorCore.getHeadingToTarget(player.pos,destination)\n    local tipLength = math.min(2.5,distance*0.4)\n    local drawer = TensorCore.getCachedDrawer(0xFFCC99FF,0xFF8833CC,0xFFFFFFFF,0xFF000000,4)\n    drawer:addTimedArrow(7000,player.pos.x,player.pos.y,player.pos.z,heading,math.max(0.1,distance-tipLength),1.4,tipLength,3.0,0,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nend\nAnyoneCore.addTimedWorldText(7000,\"MT: BETWEEN SHORT NAILS\",{x=destination.x,y=destination.y+2.5,z=destination.z},0xFFCC99FF,true,1.8)\nself.used = true",
							conditions = 
							{
								
								{
									"e3e1ca31-8788-20c4-9310-202fcf207718",
									true,
								},
							},
							displayPath = "Draws - Ifrit",
							name = "Arrow Between Short Nails",
							uuid = "0798e2da-41eb-9e69-8497-376a62a15730",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Ifrit",
							uuid = "f0ee295d-44cc-850d-b600-f7f79c55ce69",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Roster.mySlot() == \"T1\"",
							dequeueIfLuaFalse = true,
							displayPath = "Draws - Ifrit",
							name = "Main Tank (T1)",
							uuid = "e3e1ca31-8788-20c4-9310-202fcf207718",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ifrit",
				loop = true,
				mechanicTime = 328,
				name = "[Draw] Ifrit - MT Relative North Between Nails",
				throttleTime = 400,
				timeRange = true,
				timelineIndex = 43,
				timerEndOffset = 12,
				timerStartOffset = 1,
				uuid = "b71ce91f-66bf-f4d6-ba8f-2e899cb582a2",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Ifrit",
							uuid = "8e0e237a-fe1e-4ce5-85b5-6b10530ccdde",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 6000,
							alertPriority = 2,
							alertScale = 0.89999997615814,
							alertTTS = true,
							alertText = "DPS-CLOSE NAIL TO 40%, THEN FOLLOW ORDER",
							conditions = 
							{
								
								{
									"8cd7b876-a24f-4998-acf9-af82951b7e27",
									true,
								},
							},
							displayPath = "Draws - Ifrit",
							name = "Melee DPS Close Nail",
							uuid = "244dd9a1-40f5-5dc0-a2b1-209d825c6ecf",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Ifrit",
							uuid = "0092a3cf-258f-6c75-a9c3-9e54dcf4466b",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local role = AnyoneCore.Roster.mySlot()\nreturn role == \"M1\" or role == \"M2\"",
							dequeueIfLuaFalse = true,
							displayPath = "Draws - Ifrit",
							name = "Melee (M1/M2)",
							uuid = "8cd7b876-a24f-4998-acf9-af82951b7e27",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ifrit",
				mechanicTime = 328,
				name = "[Alert] Ifrit - Melee DPS Close Nail",
				timeRange = true,
				timelineIndex = 43,
				timerEndOffset = 6,
				uuid = "425b653b-3684-14cf-97f0-8a07d7117577",
				version = 2,
			},
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
							alertPriority = 2,
							alertText = "Ranged start SW. Caster start SE  ",
							conditions = 
							{
								
								{
									"beef7864-70b8-090a-b0e6-69b657574994",
									true,
								},
							},
							gVar = "ACR_RikuMNK3_CD",
							uuid = "2012bfac-34b1-d064-a9a7-c73896519fa0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local role = AnyoneCore.Roster.mySlot()\nreturn role == \"R1\" or role == \"R2\"",
							name = "R1/R2 Only",
							uuid = "beef7864-70b8-090a-b0e6-69b657574994",
							version = 3,
						},
					},
				},
				mechanicTime = 328,
				name = "[TTS CALLout] ",
				timelineIndex = 43,
				timerOffset = 3,
				uuid = "3f19af91-6517-294d-a6a0-7cad90b71e4d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "[Raid calls]",
				uuid = "844abfe1-1154-706b-a437-576e5d7cf524",
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
							alertDuration = 8000,
							alertPriority = 2,
							alertTTS = true,
							alertText = "DPS nails low then follow order",
							conditions = 
							{
								
								{
									"6608616e-a34c-28a0-b982-3b5879bf6cdb",
									true,
								},
							},
							uuid = "ff67f309-11bd-9c44-8a0d-467f368abeef",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local Roster = AnyoneCore and AnyoneCore.Roster\nif not Roster or not Roster.current() or not Roster.isReady() then return false end\nlocal slot = Roster.mySlot()\nif not slot then return false end\nreturn slot ~= \"M1\" and slot ~= \"M2\"",
							name = "Roster: Everyone except M1/M2",
							uuid = "6608616e-a34c-28a0-b982-3b5879bf6cdb",
							version = 3,
						},
					},
				},
				displayPath = "[Raid calls]",
				mechanicTime = 328,
				name = "[Raid Call][Ifrit] Reverse Z Nails",
				timelineIndex = 43,
				timerOffset = -1,
				uuid = "ecc05467-4e29-34b6-9449-fa97df47a5b8",
				version = 2,
			},
		},
	},
	[44] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Ifrit",
				uuid = "84df90f4-52e1-b6bf-a803-5c90c0067186",
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
							displayPath = "",
							name = "Draws - Ifrit",
							uuid = "9717c177-8579-7d2f-8a9e-da50b8d41ede",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player = TensorCore.mGetPlayer()\nif not player or not player.id or not player.pos or not eventArgs then\n    self.used = true\n    return\nend\n\nlocal partnerID\nif eventArgs.sourceEntityID == player.id then\n    partnerID = eventArgs.newTargetID\nelseif eventArgs.newTargetID == player.id then\n    partnerID = eventArgs.sourceEntityID\nelse\n    self.used = true\n    return\nend\n\nif not partnerID or partnerID == player.id then\n    self.used = true\n    return\nend\n\nlocal partner = TensorCore.mGetEntity(partnerID)\nif not partner or not partner.pos then\n    self.used = true\n    return\nend\n\nlocal drawer = TensorCore.getCachedDrawer(\n    0x6633CCFF,\n    0xCC33CCFF,\n    0xFFFFCC33,\n    0xFF000000,\n    3\n)\n\ndrawer:addTimedCircleOnEnt(\n    20000, player.id, 1.8,\n    0, false, true, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n)\ndrawer:addTimedCircleOnEnt(\n    20000, partner.id, 2.2,\n    0, false, true, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n)\n\nlocal sourcePos = player.pos\nlocal targetPos = partner.pos\nlocal distance = TensorCore.getDistance2d(sourcePos, targetPos)\nif distance and distance > 0.25 then\n    drawer:addTimedLine(\n        20000,\n        sourcePos.x, sourcePos.y, sourcePos.z,\n        targetPos.x, targetPos.y, targetPos.z,\n        1.0, 2.4, 0\n    )\nend\n\nAnyoneCore.addTimedWorldTextOnEnt(\n    20000,\n    \"FETTER PARTNER\",\n    partner.id,\n    0xFFFFCC33,\n    true,\n    1.2,\n    2.0\n)\n\nself.used = true",
							conditions = 
							{
								
								{
									"d309487d-b33b-a48e-97e0-995ed53f9da3",
									true,
								},
							},
							displayPath = "Draws - Ifrit",
							name = "Tethered Partner Marker",
							uuid = "42fa7e19-9015-d0e7-93c7-1fc51e8e5b0f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Ifrit",
							uuid = "589a28d1-946a-37c5-8d12-97ac6e8eddd1",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.newTetherID == 9 and eventArgs.sourceEntityContentID == 0 and eventArgs.newTargetContentID == 0 and eventArgs.sourceEntityID ~= eventArgs.newTargetID",
							dequeueIfLuaFalse = true,
							displayPath = "Draws - Ifrit",
							name = "Player Infernal Fetter",
							uuid = "d309487d-b33b-a48e-97e0-995ed53f9da3",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ifrit",
				eventType = 15,
				loop = true,
				mechanicTime = 337,
				name = "[Draw] Ifrit Infernal Fetters - Partner Link",
				timeRange = true,
				timelineIndex = 44,
				timerEndOffset = 27,
				timerStartOffset = -2,
				uuid = "e94c583e-afa1-36e0-8795-1c891e2f9d77",
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
				name = "Draws - Ifrit",
				uuid = "714beb86-d8eb-36b1-bf1e-ea959eadef47",
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
							actionLua = "local s=data.uwu_relative_north_nails or {nails={},drawn=false};data.uwu_relative_north_nails=s\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif e then s.nails[eventArgs.entityID]={x=e.pos.x,y=e.pos.y,z=e.pos.z} end\nlocal p={};for _,v in pairs(s.nails) do p[#p+1]=v end\nif s.drawn or #p<4 then self.used=true return end\nlocal a,b,d=nil,nil,math.huge\nfor i=1,3 do for j=i+1,4 do local x=p[i].x-p[j].x;local z=p[i].z-p[j].z;local q=x*x+z*z;if q<d then a,b,d=p[i],p[j],q end end end\nlocal m={x=(a.x+b.x)/2,y=(a.y+b.y)/2,z=(a.z+b.z)/2};local c={x=0,y=0,z=0}\nfor _,v in ipairs(p) do c.x=c.x+v.x;c.y=c.y+v.y;c.z=c.z+v.z end;c.x=c.x/4;c.y=c.y/4;c.z=c.z/4\nlocal x,z=m.x-c.x,m.z-c.z;d=math.sqrt(x*x+z*z)\nif d>0 then m.x=m.x+x/d*2.5;m.z=m.z+z/d*2.5 end;m.y=m.y+2.5\nAnyoneCore.addTimedWorldText(10000,\"N\",m,0xFFFFFFFF,true,2.5)\ns.drawn=true;self.used=true",
							conditions = 
							{
								
								{
									"1ef1d40f-eaf1-57cc-bdc2-42a1157c5318",
									true,
								},
							},
							name = "Relative North - Tapered End",
							uuid = "c92b86bc-0608-0326-9713-977bb7dfb75b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityContentID == 1186",
							dequeueIfLuaFalse = true,
							name = "Infernal Nail",
							uuid = "1ef1d40f-eaf1-57cc-bdc2-42a1157c5318",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ifrit",
				eventType = 5,
				mechanicTime = 339,
				name = "[Draw] Infernal Nail Relative North",
				timeRange = true,
				timelineIndex = 45,
				timerEndOffset = 8,
				uuid = "cec51c16-5d8d-3a9c-89a6-3b27771ac027",
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
				name = "Draws - Ifrit",
				uuid = "f5daecfb-636d-4792-9a22-3aae9dc0b4ea",
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
							displayPath = "",
							name = "Draws - Ifrit",
							uuid = "f8234056-dee6-769a-b6c6-598ee2c26966",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertPriority = 3,
							alertScale = 0.9,
							alertTTS = true,
							alertText = "SEARING WIND: MOVE SOUTH, CLOSE TO WALL",
							conditions = 
							{
								
								{
									"f6933eb4-3cd6-df29-83e2-27355fd08a35",
									true,
								},
								
								{
									"dbbf79f7-a66f-e23c-97e9-3df0afa35310",
									true,
								},
								
								{
									"45c55041-c3c4-dbdd-9c39-7b88068807ac",
									true,
								},
							},
							displayPath = "Draws - Ifrit",
							name = "Searing Wind South Wall",
							uuid = "52237276-b16c-f78f-9108-ec2871547055",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player = TensorCore.mGetPlayer()\nlocal state = data.uwu_ifrit_last_nail\nlocal last = state and state.last\nif not player or not player.pos or not last then return end\nlocal northX = last.x - 100\nlocal northZ = last.z - 100\nlocal length = math.sqrt(northX * northX + northZ * northZ)\nif length < 0.1 then return end\nlocal destination = {x=100-northX/length*18,y=player.pos.y,z=100-northZ/length*18}\nlocal distance = TensorCore.getDistance2d(player.pos,destination)\nif distance and distance > 0.2 then\n    local heading = TensorCore.getHeadingToTarget(player.pos,destination)\n    local tipLength = math.min(2.5,distance*0.4)\n    local drawer = TensorCore.getCachedDrawer(0xFFCC99FF,0xFF8833CC,0xFFFFFFFF,0xFF000000,4)\n    drawer:addTimedArrow(7000,player.pos.x,player.pos.y,player.pos.z,heading,math.max(0.1,distance-tipLength),1.4,tipLength,3.0,0,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nend\nAnyoneCore.addTimedWorldText(7000,\"SEARING: SOUTH WALL\",{x=destination.x,y=destination.y+2.5,z=destination.z},0xFFCC99FF,true,1.8)\nself.used = true",
							conditions = 
							{
								
								{
									"f6933eb4-3cd6-df29-83e2-27355fd08a35",
									true,
								},
								
								{
									"dbbf79f7-a66f-e23c-97e9-3df0afa35310",
									true,
								},
								
								{
									"45c55041-c3c4-dbdd-9c39-7b88068807ac",
									true,
								},
							},
							displayPath = "Draws - Ifrit",
							name = "Arrow to Relative South Wall",
							uuid = "2c4b142e-f76b-60c9-be71-7109b5e2eef1",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Ifrit",
							uuid = "bb03d02e-e753-3a10-be33-7555dd31bcdd",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.buffID == 1578 and eventArgs.ownerContentID == 1185",
							dequeueIfLuaFalse = true,
							displayPath = "Draws - Ifrit",
							name = "Searing Wind",
							uuid = "f6933eb4-3cd6-df29-83e2-27355fd08a35",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local role = AnyoneCore.Roster.mySlot()\nreturn role == \"H1\" or role == \"H2\"",
							dequeueIfLuaFalse = true,
							displayPath = "Draws - Ifrit",
							name = "Healer (H1/H2)",
							uuid = "dbbf79f7-a66f-e23c-97e9-3df0afa35310",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local player = TensorCore.mGetPlayer()\nreturn player and player.id == eventArgs.entityID",
							dequeueIfLuaFalse = true,
							displayPath = "Draws - Ifrit",
							name = "Searing Target",
							uuid = "45c55041-c3c4-dbdd-9c39-7b88068807ac",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ifrit",
				eventType = 8,
				loop = true,
				mechanicTime = 345,
				name = "[Draw] Ifrit - Searing Wind South Wall",
				throttleTime = 500,
				timeRange = true,
				timelineIndex = 46,
				timerEndOffset = 18,
				timerStartOffset = -1,
				uuid = "713e491e-9139-b238-aac4-698405956c3d",
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
				name = "Draws - Ifrit",
				uuid = "949fca65-5ee6-206f-805a-a36c3e3009a9",
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
							actionLua = "local role = GetCurrentRole()\nif role ~= \"R1\" and role ~= \"R2\" then self.used = true; return end\n\nlocal state = data.uwu_relative_nails\nif not state or not state.nails then self.used = true; return end\n\nlocal nails = {}\nfor _, nail in pairs(state.nails) do\n    if nail and nail.id and nail.x and nail.z then\n        nails[#nails + 1] = { id = nail.id, x = nail.x, z = nail.z }\n    end\nend\nif #nails ~= 4 then self.used = true; return end\n\nlocal northAIndex, northBIndex = 1, 2\nlocal minDistanceSquared = math.huge\nfor i = 1, 3 do\n    for j = i + 1, 4 do\n        local dx = nails[i].x - nails[j].x\n        local dz = nails[i].z - nails[j].z\n        local distanceSquared = dx * dx + dz * dz\n        if distanceSquared < minDistanceSquared then\n            minDistanceSquared = distanceSquared\n            northAIndex = i\n            northBIndex = j\n        end\n    end\nend\n\nlocal northA = nails[northAIndex]\nlocal northB = nails[northBIndex]\nlocal southA, southB\nfor i = 1, 4 do\n    if i ~= northAIndex and i ~= northBIndex then\n        if not southA then southA = nails[i] else southB = nails[i] end\n    end\nend\n\nlocal northCenterX = (northA.x + northB.x) * 0.5\nlocal northCenterZ = (northA.z + northB.z) * 0.5\nlocal southCenterX = (southA.x + southB.x) * 0.5\nlocal southCenterZ = (southA.z + southB.z) * 0.5\nlocal northX = northCenterX - southCenterX\nlocal northZ = northCenterZ - southCenterZ\nlocal northLength = math.sqrt(northX * northX + northZ * northZ)\nif northLength < 0.01 then self.used = true; return end\n\nlocal eastX = -northZ / northLength\nlocal eastZ = northX / northLength\nlocal relative = {}\n\nlocal northASide = (northA.x - northCenterX) * eastX + (northA.z - northCenterZ) * eastZ\nlocal northBSide = (northB.x - northCenterX) * eastX + (northB.z - northCenterZ) * eastZ\nlocal southASide = (southA.x - southCenterX) * eastX + (southA.z - southCenterZ) * eastZ\nlocal southBSide = (southB.x - southCenterX) * eastX + (southB.z - southCenterZ) * eastZ\n\nrelative[northASide >= 0 and \"NE\" or \"NW\"] = northA\nrelative[northBSide >= 0 and \"NE\" or \"NW\"] = northB\nrelative[southASide >= 0 and \"SE\" or \"SW\"] = southA\nrelative[southBSide >= 0 and \"SE\" or \"SW\"] = southB\n\nlocal first = role == \"R1\" and relative.SE or relative.SW\nlocal second = role == \"R1\" and relative.NE or relative.NW\nlocal player = TensorCore.mGetPlayer()\nif not first or not second or not player or not player.pos then self.used = true; return end\n\nlocal currentRoute = data.uwu_eruption_bait_route\nif currentRoute and currentRoute.drawIds and Argus and Argus.deleteTimedShape then\n    for _, drawID in ipairs(currentRoute.drawIds) do\n        if drawID then pcall(Argus.deleteTimedShape, drawID) end\n    end\nend\n\nlocal centerX, centerZ = 100, 100\nlocal edgeRadius = 17.0\nlocal middleX = role == \"R1\" and eastX or -eastX\nlocal middleZ = role == \"R1\" and eastZ or -eastZ\n\nlocal function outerEdgePosition(nail, tangentOffset)\n    local dx = nail.x - centerX\n    local dz = nail.z - centerZ\n    local radialLength = math.sqrt(dx * dx + dz * dz)\n    if radialLength < 0.1 then return nil end\n\n    local radialX = dx / radialLength\n    local radialZ = dz / radialLength\n    local projection = middleX * radialX + middleZ * radialZ\n    local tangentX = middleX - projection * radialX\n    local tangentZ = middleZ - projection * radialZ\n    local tangentLength = math.sqrt(tangentX * tangentX + tangentZ * tangentZ)\n    if tangentLength < 0.1 then return nil end\n\n    local radialAtPoint = math.sqrt(edgeRadius * edgeRadius - tangentOffset * tangentOffset)\n    return {\n        x = centerX + radialX * radialAtPoint + tangentX / tangentLength * tangentOffset,\n        y = player.pos.y,\n        z = centerZ + radialZ * radialAtPoint + tangentZ / tangentLength * tangentOffset\n    }\nend\n\nlocal hit1 = outerEdgePosition(first, -2.0)\nlocal hit2 = outerEdgePosition(first, 2.0)\nlocal hit3 = outerEdgePosition(second, 2.0)\nlocal hit4 = outerEdgePosition(second, -2.0)\nif not hit1 or not hit2 or not hit3 or not hit4 then self.used = true; return end\n\nlocal startPosition = { x = player.pos.x, y = player.pos.y, z = player.pos.z }\nlocal middlePosition = {\n    x = centerX + middleX * edgeRadius,\n    y = player.pos.y,\n    z = centerZ + middleZ * edgeRadius\n}\nlocal groupPosition = { x = centerX, y = player.pos.y, z = centerZ }\n\nlocal duration = 12000\nlocal drawer = TensorCore.getCachedDrawer(\n    0xFF66FF99, 0xFF00AA66, 0xFF006644, 0xFFFFFFFF, 2,\n    nil, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n)\nlocal route = {\n    role = role,\n    firstID = first.id,\n    secondID = second.id,\n    step = 1,\n    hit1 = hit1,\n    hit2 = hit2,\n    hit3 = hit3,\n    hit4 = hit4,\n    middle = middlePosition,\n    group = groupPosition,\n    drawIds = {}\n}\ndata.uwu_eruption_bait_route = route\n\nlocal function keepDraw(drawID)\n    if drawID then route.drawIds[#route.drawIds + 1] = drawID end\nend\nlocal function drawMoveArrow(fromPosition, toPosition)\n    local distance = TensorCore.getDistance2d(fromPosition, toPosition)\n    if not distance or distance <= 0.25 then return end\n    local tipLength = math.min(1.5, distance * 0.35)\n    keepDraw(drawer:addTimedArrow(\n        duration, fromPosition.x, fromPosition.y, fromPosition.z,\n        TensorCore.getHeadingToTarget(fromPosition, toPosition),\n        math.max(0.1, distance - tipLength), 1.0, tipLength, 2.3, 0, false,\n        Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    ))\nend\n\nkeepDraw(drawer:addTimedCircle(\n    duration, startPosition.x, startPosition.y, startPosition.z, 0.85, 0, false, true,\n    Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n))\ndrawMoveArrow(startPosition, hit1)\n\nself.used = true",
							conditions = 
							{
								
								{
									"7156ff68-ed31-b21f-b280-fbae4b3aa5b2",
									true,
								},
							},
							name = "Draw - Four eruption positions on outer edge",
							uuid = "049fec56-c008-b98c-b9c2-afa8a900095d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local role = GetCurrentRole()\nreturn role == \"R1\" or role == \"R2\"",
							name = "R1/R2 only",
							uuid = "7156ff68-ed31-b21f-b280-fbae4b3aa5b2",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ifrit",
				mechanicTime = 345,
				name = "[Draw] Eruption Bait Route - R1/R2",
				timelineIndex = 47,
				timerOffset = -4,
				uuid = "8aafec30-970f-8806-b17e-8932d35cc4ee",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local Roster = AnyoneCore and AnyoneCore.Roster\nif not Roster or not Roster.current() or not Roster.isReady() then self.used = true; return end\nlocal role = Roster.mySlot()\nif role ~= \"R1\" and role ~= \"R2\" then self.used = true; return end\nif role ~= \"R1\" and role ~= \"R2\" then self.used = true; return end\n\nlocal route = data.uwu_eruption_bait_route\nif not route or route.role ~= role or not route.step or route.step < 1 or route.step > 4 then\n    self.used = true\n    return\nend\n\nif route.drawIds and Argus and Argus.deleteTimedShape then\n    for _, drawID in ipairs(route.drawIds) do\n        if drawID then pcall(Argus.deleteTimedShape, drawID) end\n    end\nend\nroute.drawIds = {}\n\nlocal duration = 12000\nlocal drawer = TensorCore.getCachedDrawer(\n    0xFF66FF99, 0xFF00AA66, 0xFF006644, 0xFFFFFFFF, 2,\n    nil, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n)\nlocal function keepDraw(drawID)\n    if drawID then route.drawIds[#route.drawIds + 1] = drawID end\nend\nlocal function drawCircle(position)\n    keepDraw(drawer:addTimedCircle(\n        duration, position.x, position.y, position.z, 0.85, 0, false, true,\n        Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    ))\nend\nlocal function drawMoveArrow(fromPosition, toPosition)\n    local distance = TensorCore.getDistance2d(fromPosition, toPosition)\n    if not distance or distance <= 0.25 then return end\n    local tipLength = math.min(1.5, distance * 0.35)\n    keepDraw(drawer:addTimedArrow(\n        duration, fromPosition.x, fromPosition.y, fromPosition.z,\n        TensorCore.getHeadingToTarget(fromPosition, toPosition),\n        math.max(0.1, distance - tipLength), 1.0, tipLength, 2.3, 0, false,\n        Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    ))\nend\n\nlocal completedStep = route.step\nroute.step = completedStep + 1\nif completedStep == 1 then\n    drawCircle(route.hit1)\n    drawMoveArrow(route.hit1, route.hit2)\nelseif completedStep == 2 then\n    drawCircle(route.hit2)\n    keepDraw(drawer:addTimedLine(\n        duration,\n        route.hit2.x, route.hit2.y, route.hit2.z,\n        route.middle.x, route.middle.y, route.middle.z,\n        1.0, 1.0, 0\n    ))\n    drawMoveArrow(route.middle, route.hit3)\nelseif completedStep == 3 then\n    drawCircle(route.hit3)\n    drawMoveArrow(route.hit3, route.hit4)\nelse\n    drawCircle(route.hit4)\n    drawMoveArrow(route.hit4, route.group)\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"97c62ab5-e712-45b6-bf88-a413ec416718",
									true,
								},
							},
							name = "Advance one bait step",
							uuid = "a41e4808-6fb5-cd9e-8a2e-91506f0f044b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if eventArgs.aoeID ~= 11098 then return false end\nlocal route = data.uwu_eruption_bait_route\nlocal startTime = eventArgs.startTime\nif not route or not startTime or route.lastAOEStartTime == startTime then\n    return false\nend\nroute.lastAOEStartTime = startTime\nreturn true",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 11098,
							name = "Eruption AOE created",
							uuid = "97c62ab5-e712-45b6-bf88-a413ec416718",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ifrit",
				eventType = 18,
				loop = true,
				mechanicTime = 345,
				name = "[Draw] Advance Eruption Bait Route - R1/R2",
				throttleTime = 150,
				timeRange = true,
				timelineIndex = 47,
				timerEndOffset = 16,
				timerStartOffset = -4,
				uuid = "4b77dad5-d8fb-b37e-a3cc-c1126a317d7c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Movement - Eruption",
				uuid = "6084409c-bb96-045c-a943-4a3a0b7e9d68",
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
							actionLua = "TensorDrift_SlidecastForceHold = true\nself.used = true",
							conditions = 
							{
								
								{
									"34b8d9e9-e44c-1a43-9ea9-742876b314ad",
									true,
								},
							},
							name = "Force Slidecast",
							uuid = "3c6a1b1f-b80a-2790-91cf-dc022f960e7e",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "TensorDrift_SlidecastForceHold = false\nself.used = true",
							conditions = 
							{
								
								{
									"34b8d9e9-e44c-1a43-9ea9-742876b314ad",
									true,
								},
							},
							name = "End Slide",
							uuid = "184f9458-99dc-92ed-928a-527a66dec954",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local Roster = AnyoneCore.Roster\nif not Roster or not Roster.current() then return false end\nlocal slot = Roster.mySlot()\nreturn slot == \"R1\" or slot == \"R2\"",
							name = "Roster R1/R2",
							uuid = "34b8d9e9-e44c-1a43-9ea9-742876b314ad",
							version = 3,
						},
					},
				},
				displayPath = "Movement - Eruption",
				mechanicTime = 345,
				name = "[Drift] Eruption R1/R2 345",
				throttleTime = 10500,
				timeRange = true,
				timelineIndex = 47,
				timerEndOffset = 7,
				timerStartOffset = -4,
				uuid = "0810e1c1-f532-09a1-bb4c-50b920f56513",
				version = 2,
			},
		},
	},
	[52] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Ifrit",
				uuid = "ae3e8e68-75ee-923f-8c5c-78abbbb8cc02",
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
							actionLua = "local player = TensorCore.mGetPlayer()\nlocal state = data.uwu_ifrit_last_nail\nlocal last = state and state.last\nif player and last then\n    local dx = last.x - 100\n    local dz = last.z - 100\n    local length = math.sqrt(dx * dx + dz * dz)\n    if length > 0.1 then\n        local destination = {\n            x = 100 + dx / length * 18,\n            y = player.pos.y,\n            z = 100 + dz / length * 18\n        }\n        local heading = TensorCore.getHeadingToTarget(player.pos, destination)\n        local distance = TensorCore.getDistance2d(player.pos, destination)\n        if distance > 0.2 then\n            local tipLength = math.min(2.5, distance * 0.4)\n            local drawer = TensorCore.getCachedDrawer(\n                0xFFB6FFB6, 0xFF55FF55, 0xFFFFFFFF, 0xFF000000, 4\n            )\n            drawer:addTimedArrow(\n                6500,\n                player.pos.x, player.pos.y, player.pos.z,\n                heading,\n                distance - tipLength, 1.4, tipLength, 3.0,\n                0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n            )\n        end\n    end\nend\nself.used = true",
							conditions = 
							{
								
								{
									"3881608b-0ac3-aca4-996d-5924a4a1f74c",
									true,
								},
								
								{
									"121ade5e-eeff-3c36-8919-193356d82cb8",
									true,
								},
							},
							name = "Relative North Wall Arrow",
							uuid = "521f0e6e-c8f1-b03c-b669-3bd2e6de848f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityContentID == 1185 and eventArgs.spellID == 11102",
							dequeueIfLuaFalse = true,
							name = "Hellfire",
							uuid = "3881608b-0ac3-aca4-996d-5924a4a1f74c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Roster.mySlot() == \"T1\"",
							dequeueIfLuaFalse = true,
							name = "Anyone Roster: T1 (MT)",
							uuid = "121ade5e-eeff-3c36-8919-193356d82cb8",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ifrit",
				eventType = 2,
				mechanicTime = 369,
				name = "[Draw] Ifrit Post-Nails - MT North Wall",
				timeRange = true,
				timelineIndex = 52,
				timerEndOffset = 5,
				timerStartOffset = -1,
				uuid = "640ad4a6-1e32-5a94-82a0-d1835b8bf890",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.uwu_ifrit_dash2 = data.uwu_ifrit_dash2 or {}\nlocal state = data.uwu_ifrit_dash2\nstate.bossID = eventArgs.entityID\nstate.drawn = false\nself.used = true",
							conditions = 
							{
								
								{
									"4fdc244c-e8b8-34d4-a0aa-f62e41494092",
									true,
								},
							},
							name = "Remember Woken Ifrit",
							uuid = "34fefc5f-a42f-f2c1-837c-54ccc050b767",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityContentID == 1185 and eventArgs.spellID == 11102",
							dequeueIfLuaFalse = true,
							name = "Post-Nails Hellfire",
							uuid = "4fdc244c-e8b8-34d4-a0aa-f62e41494092",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ifrit",
				eventType = 2,
				mechanicTime = 369,
				name = "[Core] Ifrit Dash 2 - Track Woken Ifrit",
				timeRange = true,
				timelineIndex = 52,
				timerEndOffset = 5,
				timerStartOffset = -1,
				uuid = "c009dcf8-2dac-66e0-a0cf-f559aa67f7a1",
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
				name = "Draws - Ifrit",
				uuid = "cdf3976f-293b-88eb-8b18-d2f5ac1f8300",
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
							actionLua = "local player = TensorCore.mGetPlayer()\nlocal ifrit = TensorCore.mGetEntity(eventArgs.ownerID)\nlocal nailState = data.uwu_relative_nails\nif not player or not player.pos or not ifrit or not ifrit.pos or not nailState or not nailState.nails then\n    self.used = true\n    return\nend\n\nlocal role = AnyoneCore.Roster.mySlot()\nlocal firstNumber\nlocal secondNumber\nif role == \"R1\" then\n    firstNumber = 1\n    secondNumber = 3\nelseif role == \"R2\" then\n    firstNumber = 2\n    secondNumber = 4\nelse\n    self.used = true\n    return\nend\n\nlocal party = TensorCore.getEntityGroupList(\"Party\")\nlocal firstID\nlocal secondID\nlocal firstDistance = -1\nlocal secondDistance = -1\nfor _, member in pairs(party or {}) do\n    if member and member.id ~= eventArgs.entityID and member.pos and member.hp and member.hp.current > 0 then\n        local distance = TensorCore.getDistance2d(member.pos, ifrit.pos)\n        if distance > firstDistance then\n            secondID = firstID\n            secondDistance = firstDistance\n            firstID = member.id\n            firstDistance = distance\n        elseif distance > secondDistance then\n            secondID = member.id\n            secondDistance = distance\n        end\n    end\nend\n\nif player.id ~= firstID and player.id ~= secondID then\n    self.used = true\n    return\nend\n\nlocal nails = {}\nfor _, nail in pairs(nailState.nails) do\n    if nail and nail.x and nail.z then\n        nails[#nails + 1] = nail\n    end\nend\nif #nails ~= 4 then\n    self.used = true\n    return\nend\n\nlocal northAIndex = 1\nlocal northBIndex = 2\nlocal minDistanceSquared = math.huge\nfor i = 1, 3 do\n    for j = i + 1, 4 do\n        local dx = nails[i].x - nails[j].x\n        local dz = nails[i].z - nails[j].z\n        local distanceSquared = dx * dx + dz * dz\n        if distanceSquared < minDistanceSquared then\n            minDistanceSquared = distanceSquared\n            northAIndex = i\n            northBIndex = j\n        end\n    end\nend\n\nlocal northA = nails[northAIndex]\nlocal northB = nails[northBIndex]\nlocal southA\nlocal southB\nfor i = 1, 4 do\n    if i ~= northAIndex and i ~= northBIndex then\n        if not southA then\n            southA = nails[i]\n        else\n            southB = nails[i]\n        end\n    end\nend\n\nlocal northCenterX = (northA.x + northB.x) * 0.5\nlocal northCenterZ = (northA.z + northB.z) * 0.5\nlocal southCenterX = (southA.x + southB.x) * 0.5\nlocal southCenterZ = (southA.z + southB.z) * 0.5\nlocal northX = northCenterX - southCenterX\nlocal northZ = northCenterZ - southCenterZ\nlocal northLength = math.sqrt(northX * northX + northZ * northZ)\nif northLength < 0.01 then\n    self.used = true\n    return\nend\n\nlocal eastX = -northZ / northLength\nlocal eastZ = northX / northLength\n\nlocal nailByNumber = {}\nfor i, nail in ipairs(nails) do\n    local isNorthPair = i == northAIndex or i == northBIndex\n    local referenceX = isNorthPair and northCenterX or southCenterX\n    local referenceZ = isNorthPair and northCenterZ or southCenterZ\n    local eastSide = (nail.x - referenceX) * eastX + (nail.z - referenceZ) * eastZ\n    local number\n    if isNorthPair then\n        number = eastSide >= 0 and 3 or 4\n    else\n        number = eastSide >= 0 and 1 or 2\n    end\n    nailByNumber[number] = nail\nend\n\nlocal firstNail = nailByNumber[firstNumber]\nlocal secondNail = nailByNumber[secondNumber]\nif not firstNail or not secondNail then\n    self.used = true\n    return\nend\n\nlocal sideSign = role == \"R1\" and 1 or -1\nlocal hitOffset = 6.0\nlocal sideOffset = 5.7\nlocal arenaCenterX, arenaCenterZ = 100, 100\nlocal outwardOffset = 1.0\nlocal function getHitPosition(nail, northOffset, eastOffset)\n    local x = nail.x + northX / northLength * northOffset + eastX * eastOffset\n    local z = nail.z + northZ / northLength * northOffset + eastZ * eastOffset\n    local dx = x - arenaCenterX\n    local dz = z - arenaCenterZ\n    local radialLength = math.sqrt(dx * dx + dz * dz)\n    if radialLength > 0.01 then\n        x = x + dx / radialLength * outwardOffset\n        z = z + dz / radialLength * outwardOffset\n    end\n\n    return {\n        x = x,\n        y = player.pos.y,\n        z = z\n    }\nend\n\nlocal hitPositions = {\n    getHitPosition(firstNail, -hitOffset, 0),\n    getHitPosition(firstNail, -2.0, sideSign * sideOffset),\n    getHitPosition(secondNail, -2.0, sideSign * sideOffset),\n    getHitPosition(secondNail, 5.0, sideSign * 3.0)\n}\n\nlocal positionDrawer = TensorCore.getCachedDrawer(\n    0x5530E080, 0x5530E080, 0x5530E080, 0xFF30E080, 2.0\n)\nlocal routeDrawer = TensorCore.getCachedDrawer(\n    0xFF70F0FF, 0xFF00B8FF, 0xFFFFFFFF, 0xFF000000, 4\n)\n\nlocal drawDuration = 9000\r\n\r\npositionDrawer:addTimedCircle(\n    drawDuration, hitPositions[1].x, hitPositions[1].y, hitPositions[1].z, 0.8,\n    0, false, true, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n)\n\nlocal function drawMoveArrow(fromPosition, toPosition)\n    local distance = TensorCore.getDistance2d(fromPosition, toPosition)\n    if distance <= 0.2 then\n        return\n    end\n    local tipLength = math.min(2.0, distance * 0.35)\n    routeDrawer:addTimedArrow(\n        drawDuration, fromPosition.x, fromPosition.y, fromPosition.z,\n        TensorCore.getHeadingToTarget(fromPosition, toPosition),\n        math.max(0.1, distance - tipLength), 1.5, tipLength, 3.2,\n        0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\ndrawMoveArrow(hitPositions[1], hitPositions[2])\ndrawMoveArrow(hitPositions[2], hitPositions[3])\ndrawMoveArrow(hitPositions[3], hitPositions[4])\n\nself.used = true",
							conditions = 
							{
								
								{
									"9f4c33c5-ec51-1a79-8e4b-f07a789cbf40",
									true,
								},
							},
							name = "Farthest Eruption Bait Route",
							uuid = "ff322d53-4c8f-1d40-a3e4-d31ecab7141d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.buffID == 1578 and eventArgs.ownerContentID == 1185",
							dequeueIfLuaFalse = true,
							name = "Post-Nails Searing Wind",
							uuid = "9f4c33c5-ec51-1a79-8e4b-f07a789cbf40",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ifrit",
				eventType = 8,
				mechanicTime = 377,
				name = "[Draw] Ifrit Post-Nails - Eruption Bait Route",
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = 5,
				timerStartOffset = -1,
				uuid = "32a379f9-241d-2661-adca-3713516c7683",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player = TensorCore.mGetPlayer()\nlocal state = data.uwu_ifrit_last_nail\nlocal last = state and state.last\nif player and last then\n    local northX = last.x - 100\n    local northZ = last.z - 100\n    local length = math.sqrt(northX * northX + northZ * northZ)\n    if length > 0.1 then\n        local destination = {\n            x = 100 + northZ / length * 18,\n            y = player.pos.y,\n            z = 100 - northX / length * 18\n        }\n        local heading = TensorCore.getHeadingToTarget(player.pos, destination)\n        local distance = TensorCore.getDistance2d(player.pos, destination)\n        if distance > 0.2 then\n            local tipLength = math.min(2.5, distance * 0.4)\n            local drawer = TensorCore.getCachedDrawer(\n                0xFFFFD080, 0xFFFFA000, 0xFFFFFFFF, 0xFF000000, 4\n            )\n            drawer:addTimedArrow(\n                7000,\n                player.pos.x, player.pos.y, player.pos.z,\n                heading,\n                distance - tipLength, 1.4, tipLength, 3.0,\n                0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n            )\n        end\n    end\nend\nself.used = true",
							conditions = 
							{
								
								{
									"4306a399-6af0-7947-be24-fa58b93580cf",
									true,
								},
								
								{
									"8f9798fb-bcba-1569-b98b-c840eb7435c6",
									true,
								},
								
								{
									"cd0197bf-9356-81ad-9c34-32215fd13368",
									true,
								},
							},
							name = "Relative West Arrow",
							uuid = "441ddbeb-89dd-42ef-a944-41814bafddab",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.buffID == 1578 and eventArgs.ownerContentID == 1185",
							dequeueIfLuaFalse = true,
							name = "Searing Wind",
							uuid = "4306a399-6af0-7947-be24-fa58b93580cf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local role = AnyoneCore.Roster.mySlot()\nreturn role == \"H1\" or role == \"H2\"",
							dequeueIfLuaFalse = true,
							name = "Anyone Roster: H1/H2",
							uuid = "8f9798fb-bcba-1569-b98b-c840eb7435c6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local player = TensorCore.mGetPlayer()\nreturn player and player.id == eventArgs.entityID",
							dequeueIfLuaFalse = true,
							name = "Searing Target",
							uuid = "cd0197bf-9356-81ad-9c34-32215fd13368",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ifrit",
				eventType = 8,
				mechanicTime = 377,
				name = "[Draw] Ifrit Post-Nails - Searing Wind West",
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = 5,
				timerStartOffset = -1,
				uuid = "922f2822-dd5a-9f07-893a-c73301c878d6",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Ifrit",
							uuid = "3661add5-2f22-45b2-8467-666203854426",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "if eventArgs and eventArgs.entityID then\n    data.uwu_ifrit_searing_wind_target = eventArgs.entityID\nend\nself.used = true",
							conditions = 
							{
								
								{
									"80d721be-c565-649e-adf4-0a13d76aef0b",
									true,
								},
							},
							displayPath = "Draws - Ifrit",
							name = "Store debuffed party member",
							uuid = "565b79ab-5e9f-9534-867a-4938942ffffb",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Ifrit",
							uuid = "459caf18-44c4-17bb-8a3e-ab1907201876",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs and eventArgs.buffID == 1578 and eventArgs.ownerContentID == 1185",
							dequeueIfLuaFalse = true,
							displayPath = "Draws - Ifrit",
							name = "Searing Wind from Ifrit",
							uuid = "80d721be-c565-649e-adf4-0a13d76aef0b",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ifrit",
				eventType = 8,
				mechanicTime = 377,
				name = "[State][Ifrit] Capture Searing Wind target",
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = 5,
				timerStartOffset = -1,
				uuid = "5e11dbcc-c275-7a8d-8523-0c5c15394a88",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Ifrit",
							uuid = "ee2267b1-29ef-bef7-b0b0-c7701d0f73e4",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local Roster = AnyoneCore and AnyoneCore.Roster\nif not Roster or not Roster.current or not Roster.current() then return end\nif not Roster.isReady or not Roster.isReady() then return end\n\nlocal slot = Roster.mySlot()\nif not slot or slot == \"T1\" or slot == \"R1\" or slot == \"R2\" then\n    self.used = true\n    return\nend\n\nlocal playerID = Roster.idOf(slot)\nlocal searingTarget = data.uwu_ifrit_searing_wind_target\nif not playerID or not searingTarget or playerID == searingTarget then\n    self.used = true\n    return\nend\n\nlocal player = Roster.entOf(slot)\nlocal mt = Roster.entOf(\"T1\")\nif not player or not player.pos or not mt or not mt.pos then return end\n\nlocal distance = TensorCore.getDistance2d(player.pos, mt.pos)\nif distance and distance > 0.2 then\n    local heading = TensorCore.getHeadingToTarget(player.pos, mt.pos)\n    local tipLength = math.min(2.5, distance * 0.4)\n    local drawer = TensorCore.getCachedDrawer(\n        0xFFFFCC33, 0xFFFFA000, 0xFFFFFFFF, 0xFF000000, 4\n    )\n    drawer:addTimedArrow(\n        4000,\n        player.pos.x, player.pos.y, player.pos.z,\n        heading,\n        distance - tipLength, 1.4, tipLength, 3.0,\n        0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nAnyoneCore.addTimedWorldTextOnEnt(\n    4000,\n    \"Follow Tank to safespot\",\n    player.id,\n    0xFFFFCC33,\n    true,\n    1.2,\n    2.0\n)\nself.used = true",
							conditions = 
							{
								
								{
									"da44a798-1b13-9edb-b5ba-d3bf919b0457",
									true,
								},
							},
							displayPath = "Draws - Ifrit",
							name = "Arrow and overhead text to MT",
							uuid = "37ffe85b-b9f3-f918-95ca-42ca14c874fd",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Ifrit",
							uuid = "a3f1958c-33d6-4f8d-a27b-8bdfd34242fa",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local Roster = AnyoneCore and AnyoneCore.Roster\nif not Roster or not Roster.current or not Roster.current() then return false end\nlocal slot = Roster.mySlot()\nif not slot or slot == \"T1\" or slot == \"R1\" or slot == \"R2\" then return false end\nlocal playerID = Roster.idOf(slot)\nlocal searingTarget = data.uwu_ifrit_searing_wind_target\nreturn playerID ~= nil and searingTarget ~= nil and playerID ~= searingTarget",
							dequeueIfLuaFalse = true,
							displayPath = "Draws - Ifrit",
							name = "Party member except MT, ranged, and Searing target",
							uuid = "da44a798-1b13-9edb-b5ba-d3bf919b0457",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ifrit",
				mechanicTime = 377,
				name = "[Draw] Follow MT to Safespot 379 - Group",
				throttleTime = 1000,
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = 3,
				timerStartOffset = 2,
				uuid = "0b77854a-8c37-c575-b2c3-890f38188cde",
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
				name = "Movement - Eruption",
				uuid = "b4101758-6e48-e9b7-b30b-74b5c8440c9f",
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
							actionLua = "TensorDrift_SlidecastForceHold = true\nself.used = true",
							conditions = 
							{
								
								{
									"d9f66ed7-d023-9075-9443-732e1c196aba",
									true,
								},
							},
							name = "Force Slidecast",
							uuid = "f0475f80-c63f-8878-bd22-e85733e6d390",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "TensorDrift_SlidecastForceHold = false\nself.used = true",
							conditions = 
							{
								
								{
									"d9f66ed7-d023-9075-9443-732e1c196aba",
									true,
								},
							},
							name = "End Slide",
							uuid = "96388716-0abb-e5a4-9cb8-4222690933b5",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local Roster = AnyoneCore.Roster\nif not Roster or not Roster.current() then return false end\nlocal slot = Roster.mySlot()\nreturn slot == \"R1\" or slot == \"R2\"",
							name = "Roster R1/R2",
							uuid = "d9f66ed7-d023-9075-9443-732e1c196aba",
							version = 3,
						},
					},
				},
				displayPath = "Movement - Eruption",
				mechanicTime = 383,
				name = "[Drift] Eruption R1/R2 383",
				throttleTime = 10500,
				timeRange = true,
				timelineIndex = 55,
				timerEndOffset = 7,
				timerStartOffset = -4,
				uuid = "56da5322-3bb5-7353-8dc5-25c192780130",
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
				name = "Draws - Ifrit",
				uuid = "a91ae58a-ba9d-e055-a944-7bc596d80f26",
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
							displayPath = "",
							name = "Draws - Ifrit",
							uuid = "e097f0e7-ce96-6446-aaf4-146e0e9661a9",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player = TensorCore.mGetPlayer()\nlocal boss = TensorCore.mGetEntity(eventArgs.entityID)\nif not player or not player.pos or not boss or not boss.pos then\n    self.used = true\n    return\nend\nlocal h = eventArgs.heading or boss.pos.h or 0\nlocal sx = math.cos(h)\nlocal sz = -math.sin(h)\nlocal right = { x = boss.pos.x + sx * 18, y = player.pos.y, z = boss.pos.z + sz * 18 }\nlocal left = { x = boss.pos.x - sx * 18, y = player.pos.y, z = boss.pos.z - sz * 18 }\nlocal dest = right\nif TensorCore.getDistance2d(player.pos, left) < TensorCore.getDistance2d(player.pos, right) then\n    dest = left\nend\nlocal distance = TensorCore.getDistance2d(player.pos, dest)\nif distance > 0.2 then\n    local tip = math.min(2.5, distance * 0.35)\n    local drawer = TensorCore.getCachedDrawer(0xFFFFD080, 0xFFFFA000, 0xFFFFFFFF, 0xFF000000, 4)\n    drawer:addTimedArrow(7000, player.pos.x, player.pos.y, player.pos.z, TensorCore.getHeadingToTarget(player.pos, dest), math.max(0.1, distance - tip), 1.4, tip, 3.0, 0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nend\nAnyoneCore.addTimedWorldText(7000, \"CRIMSON: SAFE SIDE\", { x = dest.x, y = dest.y + 1.2, z = dest.z }, 0xFFFFD080, true, 1.1)\nself.used = true",
							conditions = 
							{
								
								{
									"924b1eed-2cda-72e3-8df4-78b8c46c4c3b",
									true,
								},
							},
							displayPath = "Draws - Ifrit",
							name = "Crimson Safe Side 390",
							uuid = "f4f8c464-d03a-a7a3-be1e-d5a0326e0136",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.spellID==11103 and eventArgs.entityContentID==1185",
							dequeueIfLuaFalse = true,
							name = "Crimson Cyclone Cast",
							uuid = "924b1eed-2cda-72e3-8df4-78b8c46c4c3b",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ifrit",
				eventType = 3,
				mechanicTime = 390,
				name = "[Draw][LPDU][Ifrit] Crimson Cyclone Safe Side 390",
				timeRange = true,
				timelineIndex = 57,
				timerEndOffset = 5,
				timerStartOffset = -1,
				uuid = "118d7beb-dfb5-b32b-9478-06c778502941",
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
				name = "Draws - Ifrit",
				uuid = "7937d595-eb53-0f97-ad6f-8715220a0e8c",
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
							actionLua = "local state = data.uwu_relative_nails\nif state and state.relativeNorthTextID then\n    AnyoneCore.removeTimedWorldText(state.relativeNorthTextID)\n    state.relativeNorthTextID = nil\nend\nself.used = true",
							conditions = 
							{
								
								{
									"0afdac2f-494a-b7f9-9aec-97c9acd61fad",
									true,
								},
							},
							name = "Remove Relative North",
							uuid = "820553be-be66-1b9d-8671-9231563b8128",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityContentID == 1185 and eventArgs.wasTargetable == true and eventArgs.isTargetable == false",
							dequeueIfLuaFalse = true,
							name = "Ifrit Phase End",
							uuid = "0afdac2f-494a-b7f9-9aec-97c9acd61fad",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ifrit",
				eventType = 26,
				mechanicTime = 395,
				name = "[Draw] Infernal Nail Relative North Cleanup",
				timeRange = true,
				timelineIndex = 58,
				timerEndOffset = 10,
				timerStartOffset = -5,
				uuid = "9088761c-2854-1e01-a92b-f2642c14c852",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player = TensorCore.mGetPlayer()\nif not player then\n    self.used = true\n    return\nend\n\nlocal radialX = player.pos.x - 100\nlocal radialZ = player.pos.z - 100\nlocal radialLength = math.sqrt(radialX * radialX + radialZ * radialZ)\nif radialLength < 1 then\n    self.used = true\n    return\nend\n\nlocal point1 = {\n    x = 100 + radialX * 0.8660254 - radialZ * 0.5,\n    y = player.pos.y,\n    z = 100 + radialX * 0.5 + radialZ * 0.8660254\n}\nlocal point2 = {\n    x = 100 + radialX * 0.5 - radialZ * 0.8660254,\n    y = player.pos.y,\n    z = 100 + radialX * 0.8660254 + radialZ * 0.5\n}\nlocal point3 = {\n    x = 100 - radialZ,\n    y = player.pos.y,\n    z = 100 + radialX\n}\n\nlocal drawer = TensorCore.getCachedDrawer(\n    0xFFFFD080, 0xFFFF9800, 0xFFFFFFFF, 0xFF000000, 4\n)\n\nlocal distance1 = TensorCore.getDistance2d(player.pos, point1)\nif distance1 > 0.2 then\n    local tip = math.min(2.3, distance1 * 0.4)\n    drawer:addTimedArrow(\n        3000, player.pos.x, player.pos.y, player.pos.z,\n        TensorCore.getHeadingToTarget(player.pos, point1),\n        math.max(0.1, distance1 - tip), 1.35, tip, 3.0,\n        0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nlocal distance2 = TensorCore.getDistance2d(point1, point2)\nif distance2 > 0.2 then\n    local tip = math.min(2.3, distance2 * 0.4)\n    drawer:addTimedArrow(\n        3000, point1.x, point1.y, point1.z,\n        TensorCore.getHeadingToTarget(point1, point2),\n        math.max(0.1, distance2 - tip), 1.35, tip, 3.0,\n        2500, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nlocal distance3 = TensorCore.getDistance2d(point2, point3)\nif distance3 > 0.2 then\n    local tip = math.min(2.3, distance3 * 0.4)\n    drawer:addTimedArrow(\n        3800, point2.x, point2.y, point2.z,\n        TensorCore.getHeadingToTarget(point2, point3),\n        math.max(0.1, distance3 - tip), 1.35, tip, 3.0,\n        5000, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"365abf6d-0538-ed18-b2b2-12cfbf8596eb",
									true,
								},
								
								{
									"97008323-df0a-f29c-a6fd-ea98dc81cbc4",
									true,
								},
								
								{
									"33b131c0-974c-e126-b871-fd65fe74475a",
									true,
								},
							},
							name = "Clockwise Quarter-Turn Route",
							uuid = "bcfe1083-7ed2-51e2-a99f-6476753e9b23",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.buffID == 1578 and eventArgs.ownerContentID == 1185",
							dequeueIfLuaFalse = true,
							name = "Second Searing Wind",
							uuid = "365abf6d-0538-ed18-b2b2-12cfbf8596eb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local role = AnyoneCore.Roster.mySlot()\nreturn role == \"H1\" or role == \"H2\"",
							dequeueIfLuaFalse = true,
							name = "Anyone Roster: H1/H2",
							uuid = "97008323-df0a-f29c-a6fd-ea98dc81cbc4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local player = TensorCore.mGetPlayer()\nreturn player and player.id == eventArgs.entityID",
							dequeueIfLuaFalse = true,
							name = "Searing Target",
							uuid = "33b131c0-974c-e126-b871-fd65fe74475a",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ifrit",
				eventType = 8,
				mechanicTime = 395,
				name = "[Draw] Ifrit Post-Eruptions - H2 Clockwise Route",
				timeRange = true,
				timelineIndex = 58,
				timerEndOffset = 5,
				timerStartOffset = -1,
				uuid = "07cf2f7e-b6f7-6b7b-ba0a-01371865f786",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.uwu_ifrit_dash2 = data.uwu_ifrit_dash2 or {}\ndata.uwu_ifrit_dash2.secondHealerID = eventArgs.entityID\nself.used = true",
							conditions = 
							{
								
								{
									"1b70b93e-b353-aecf-8619-b7c5aac59986",
									true,
								},
							},
							name = "Remember Second Healer",
							uuid = "57d7f07e-795b-d6ab-9926-08f3382db3a9",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.buffID == 1578 and eventArgs.ownerContentID == 1185",
							dequeueIfLuaFalse = true,
							name = "Second Searing Wind",
							uuid = "1b70b93e-b353-aecf-8619-b7c5aac59986",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ifrit",
				eventType = 8,
				mechanicTime = 395,
				name = "[Core] Ifrit Dash 2 - Track Second Searing",
				timeRange = true,
				timelineIndex = 58,
				timerEndOffset = 5,
				timerStartOffset = -1,
				uuid = "80280ee0-4e6e-a44c-b22d-be6208463815",
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
				name = "Draws - Ifrit",
				uuid = "782743bd-a757-d0a1-b5bc-46edbf837720",
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
							actionLua = "local player = TensorCore.mGetPlayer()\nlocal lastState = data.uwu_ifrit_last_nail\nlocal last = lastState and lastState.last\nif not player or not last then\n    self.used = true\n    return\nend\n\nlocal dashState = data.uwu_ifrit_dash2\nlocal secondSearing = dashState and dashState.secondHealerID == player.id\nlocal destination\nlocal label\nlocal color\n\nif secondSearing then\n    destination = { x = 200 - last.x, y = player.pos.y, z = 200 - last.z }\n    label = \"SEARING: OPPOSITE\"\n    color = 0xFFFFB347\nelse\n    destination = { x = last.x, y = player.pos.y, z = last.z }\n    label = \"PARTY START\"\n    color = 0xFFB6E8FF\nend\n\nlocal distance = TensorCore.getDistance2d(player.pos, destination)\nif distance > 0.2 then\n    local tip = math.min(2.6, distance * 0.38)\n    local drawer = TensorCore.getCachedDrawer(\n        color, color, 0xFFFFFFFF, 0xFF000000, 5\n    )\n    drawer:addTimedArrow(\n        7500, player.pos.x, player.pos.y, player.pos.z,\n        TensorCore.getHeadingToTarget(player.pos, destination),\n        math.max(0.1, distance - tip), 1.5, tip, 3.2,\n        0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nAnyoneCore.addTimedWorldText(\n    7500, label,\n    { x = destination.x, y = destination.y + 0.5, z = destination.z },\n    color, true, 1.3\n)\nself.used = true",
							conditions = 
							{
								
								{
									"34282848-5bb4-6f7c-880d-6694b8f1f481",
									true,
								},
							},
							name = "Last-Dash Start Arrow",
							uuid = "c722132c-32e3-4183-992b-3721cdc55514",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local state = data.uwu_ifrit_last_nail\nreturn state and state.last ~= nil",
							name = "Last Nail Known",
							uuid = "34282848-5bb4-6f7c-880d-6694b8f1f481",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ifrit",
				mechanicTime = 409,
				name = "[Draw] Ifrit Dash 2 - Party and Searing Start",
				throttleTime = 10000,
				timeRange = true,
				timelineIndex = 63,
				timerEndOffset = 4,
				timerStartOffset = -0.5,
				uuid = "1827bf3f-c813-7f48-85fb-c66297724787",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Cooldown Holds",
				uuid = "91182116-9514-bcf7-9871-25fb68d88218",
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
							displayPath = "",
							name = "Cooldown Holds",
							uuid = "d0337232-7cc1-ef4c-8784-01571cadecf2",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "ACR",
							acrOptionType = "Hold Action",
							displayPath = "Cooldown Holds",
							holdActionDuration = 60,
							holdActionID = 7395,
							name = "Hold Riddle of Fire",
							uuid = "c70ffaf8-b1cd-d0fd-8589-c1ba85420e5d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							acrOptionType = "Hold Action",
							displayPath = "Cooldown Holds",
							holdActionDuration = 60,
							holdActionID = 7396,
							name = "Hold Brotherhood",
							uuid = "0c990409-8cb8-9551-9ee1-57eab4e63428",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							acrOptionType = "Hold Action",
							displayPath = "Cooldown Holds",
							holdActionDuration = 60,
							holdActionID = 2258,
							name = "Hold Trick Attack",
							uuid = "20e59887-8c71-46a9-a46b-b07f4d000284",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							acrOptionType = "Hold Action",
							displayPath = "Cooldown Holds",
							holdActionDuration = 60,
							holdActionID = 7403,
							name = "Hold Ten Chi Jin",
							uuid = "dcfa0cb2-2027-5c17-9c0b-ae9ffb414c15",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Cooldown Holds",
				mechanicTime = 409,
				name = "[Hold][UWU] MNK/NIN transition cooldowns",
				timelineIndex = 63,
				uuid = "b3c59438-e363-e406-b71d-b8423a7d8164",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Cooldown Holds",
							uuid = "ddf4cb1a-45f0-1d6f-805e-133acf32612d",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "ACR",
							acrOptionType = "Reset Hold Actions",
							conditions = 
							{
								
								{
									"c6ed5756-4372-bd19-8108-2eb1945dca40",
									true,
								},
							},
							displayPath = "Cooldown Holds",
							name = "Release held cooldowns",
							uuid = "9320edd1-aab5-297d-a178-25ee5a02f4cd",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Cooldown Holds",
							uuid = "4156d1b6-3593-2649-a527-8dfba3444d0c",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							category = "Event",
							displayPath = "Cooldown Holds",
							eventArgType = 3,
							name = "Entity is targetable",
							uuid = "c6ed5756-4372-bd19-8108-2eb1945dca40",
							version = 3,
						},
					},
				},
				displayPath = "Cooldown Holds",
				eventType = 26,
				mechanicTime = 409,
				name = "[Hold][UWU] Release on next targetable phase",
				timeRange = true,
				timelineIndex = 63,
				timerEndOffset = 70,
				timerStartOffset = 30,
				uuid = "fd4fb5d8-373e-f017-b9f4-9010a1871608",
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
				name = "Draws - Ifrit",
				uuid = "89ddb827-40be-9b6a-97c7-2e6f33ad6305",
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
							actionLua = "local state = data.uwu_ifrit_dash2\nif not state or state.drawn then\n    self.used = true\n    return\nend\n\nlocal boss = TensorCore.mGetEntity(eventArgs.entityID)\nlocal player = TensorCore.mGetPlayer()\nif not boss or not player then\n    return\nend\n\nlocal bossDX = boss.pos.x - 100\nlocal bossDZ = boss.pos.z - 100\nlocal playerDX = player.pos.x - 100\nlocal playerDZ = player.pos.z - 100\nlocal playerRadius = math.sqrt(playerDX * playerDX + playerDZ * playerDZ)\nif playerRadius < 5 then\n    return\nend\n\nif not state.octant then\n    function state.octant(dx, dz)\n        local ax = math.abs(dx)\n        local az = math.abs(dz)\n        if ax > az * 2.414214 then\n            return dx >= 0 and 0 or 4\n        end\n        if az > ax * 2.414214 then\n            return dz >= 0 and 2 or 6\n        end\n        if dx >= 0 then\n            return dz >= 0 and 1 or 7\n        end\n        return dz >= 0 and 3 or 5\n    end\n\n    function state.pointFor(index, radius, y)\n        local diagonal = radius * 0.7071068\n        if index == 0 then return { x = 100 + radius, y = y, z = 100 } end\n        if index == 1 then return { x = 100 + diagonal, y = y, z = 100 + diagonal } end\n        if index == 2 then return { x = 100, y = y, z = 100 + radius } end\n        if index == 3 then return { x = 100 - diagonal, y = y, z = 100 + diagonal } end\n        if index == 4 then return { x = 100 - radius, y = y, z = 100 } end\n        if index == 5 then return { x = 100 - diagonal, y = y, z = 100 - diagonal } end\n        if index == 6 then return { x = 100, y = y, z = 100 - radius } end\n        return { x = 100 + diagonal, y = y, z = 100 - diagonal }\n    end\nend\n\nlocal blueIndex = state.octant(bossDX, bossDZ)\nlocal playerIndex = state.octant(playerDX, playerDZ)\nlocal nextIndex = playerIndex - 1\nif nextIndex < 0 then nextIndex = nextIndex + 8 end\n\nlocal targetIndex = nextIndex\nif (targetIndex % 2) ~= (blueIndex % 2) then\n    targetIndex = targetIndex - 1\n    if targetIndex < 0 then targetIndex = targetIndex + 8 end\nend\n\nlocal firstPoint = state.pointFor(nextIndex, playerRadius, player.pos.y)\nlocal targetPoint = state.pointFor(targetIndex, playerRadius, player.pos.y)\nlocal drawer = TensorCore.getCachedDrawer(\n    0xFFCBFFB8, 0xFF5DF27B, 0xFFFFFFFF, 0xFF000000, 5\n)\n\nlocal firstDistance = TensorCore.getDistance2d(player.pos, firstPoint)\nif firstDistance > 0.2 then\n    local tip = math.min(2.8, firstDistance * 0.38)\n    drawer:addTimedArrow(\n        11000, player.pos.x, player.pos.y, player.pos.z,\n        TensorCore.getHeadingToTarget(player.pos, firstPoint),\n        math.max(0.1, firstDistance - tip), 1.55, tip, 3.25,\n        0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nlocal finalDistance = TensorCore.getDistance2d(firstPoint, targetPoint)\nif finalDistance > 0.2 then\n    local tip = math.min(2.8, finalDistance * 0.38)\n    drawer:addTimedArrow(\n        11000, firstPoint.x, firstPoint.y, firstPoint.z,\n        TensorCore.getHeadingToTarget(firstPoint, targetPoint),\n        math.max(0.1, finalDistance - tip), 1.55, tip, 3.25,\n        0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nstate.drawn = true\nself.used = true",
							conditions = 
							{
								
								{
									"a378b693-f4d0-eea6-8a42-5993a559d74a",
									true,
								},
							},
							name = "Blue Clone CCW Path",
							uuid = "253e2d53-42bb-0343-8190-67e670c01829",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local state = data.uwu_ifrit_dash2\nreturn state ~= nil\n    and eventArgs.entityContentID == 1185\n    and eventArgs.spellID == 11103\n    and eventArgs.entityID ~= state.bossID",
							dequeueIfLuaFalse = true,
							name = "Crimson Cyclone",
							uuid = "a378b693-f4d0-eea6-8a42-5993a559d74a",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ifrit",
				eventType = 3,
				mechanicTime = 416,
				name = "[Draw] Ifrit Dash 2 - Blue Clone CCW Safe Path",
				timeRange = true,
				timelineIndex = 65,
				timerEndOffset = 6,
				timerStartOffset = -1,
				uuid = "531f391a-7ec2-b820-af7c-31355ac29301",
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
				name = "Movement - Eruption",
				uuid = "10b0e189-d799-bc52-a1e0-2ce6a76c275e",
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
							actionLua = "TensorDrift_SlidecastForceHold = true\nself.used = true",
							conditions = 
							{
								
								{
									"c57b6cf1-74ca-24a5-a6c3-06eb6e33226c",
									true,
								},
							},
							name = "Force Slidecast",
							uuid = "c1529bf6-7158-f6a1-bf6e-ce0e1a34b64e",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "TensorDrift_SlidecastForceHold = false\nself.used = true",
							conditions = 
							{
								
								{
									"c57b6cf1-74ca-24a5-a6c3-06eb6e33226c",
									true,
								},
							},
							name = "End Slide",
							uuid = "0d94459e-bb09-d904-a4be-c56aed9ea146",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local Roster = AnyoneCore.Roster\nif not Roster or not Roster.current() then return false end\nlocal slot = Roster.mySlot()\nreturn slot == \"R1\" or slot == \"R2\"",
							name = "Roster R1/R2",
							uuid = "c57b6cf1-74ca-24a5-a6c3-06eb6e33226c",
							version = 3,
						},
					},
				},
				displayPath = "Movement - Eruption",
				mechanicTime = 444,
				name = "[Drift] Eruption R1/R2 444",
				throttleTime = 10500,
				timeRange = true,
				timelineIndex = 72,
				timerEndOffset = 7,
				timerStartOffset = -4,
				uuid = "587d9df0-6a4f-71c4-a00c-73a1e20942ea",
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
				name = "Draws - Titan LPDU",
				uuid = "c0bd4aec-4fb3-8217-83b0-a6044b2d8ada",
			},
			objectType = "folder",
		},
	},
	[78] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Alert",
							alertPriority = 3,
							alertTTS = true,
							alertText = "Dodge twice",
							alertVolume = 81,
							uuid = "ebb9c709-68be-a091-95d0-9aa3044dd1bd",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 621,
				name = "MOVE!",
				timelineIndex = 78,
				timerOffset = -2.9000000953674,
				uuid = "5ca6e7a9-d879-7a17-b3cc-7de6f8c29b6e",
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
				name = "Draws - Titan LPDU",
				uuid = "89a41a09-52dd-d1a5-94b4-d1cc102ce17e",
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
							actionLua = "local player = TensorCore.mGetPlayer()\nif not player or not player.pos or not eventArgs or not eventArgs.entityID then self.used = true return end\nlocal titan = TensorCore.mGetEntity(eventArgs.entityID)\nif not titan or not titan.pos then self.used = true return end\nlocal center = { x = 100, y = player.pos.y, z = 100 }\nlocal dx = titan.pos.x - center.x\nlocal dz = titan.pos.z - center.z\nlocal distanceFromCenter = math.sqrt(dx * dx + dz * dz)\nif distanceFromCenter < 0.1 then self.used = true return end\nlocal target = { x = center.x - dx / distanceFromCenter * 16.5, y = center.y, z = center.z - dz / distanceFromCenter * 16.5 }\nlocal distance = TensorCore.getDistance2d(player.pos, target)\nif distance > 0.2 then\n    local tipLength = math.min(2.0, distance * 0.35)\n    local drawer = TensorCore.getCachedDrawer(0xFFFFCC66,0xFFFF8800,0xFFAA4400,0xFFFFFFFF,2)\n    drawer:addTimedArrow(5500,player.pos.x,player.pos.y,player.pos.z,TensorCore.getHeadingToTarget(player.pos,target),math.max(0.1,distance-tipLength),1.0,tipLength,2.4,0,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nend\nlocal drawer = TensorCore.getCachedDrawer(0x55FFAA33,0x55FFAA33,0xFFAA6600,0xFFFFFFFF,2)\ndrawer:addTimedCircle(5500,target.x,target.y,target.z,1.4,0,false,true)\nAnyoneCore.addTimedWorldText(5500,\"GEocrush 2: OPPOSITE EDGE\",{x=target.x,y=target.y+1.5,z=target.z},0xFFFFCC66,true,1.0)\nself.used = true",
							conditions = 
							{
								
								{
									"4fa9f41b-f331-e07a-ac82-5e56e7a8b08f",
									true,
								},
								
								{
									"1ec24ac4-92e8-6c37-bf0d-cdf5259d2e92",
									true,
								},
							},
							name = "Guide",
							uuid = "3524e5b8-2863-ab54-93fa-e740f72b127d",
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
							eventEntityContentID = 1801,
							name = "Titan channel",
							uuid = "4fa9f41b-f331-e07a-ac82-5e56e7a8b08f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							eventArgType = 2,
							eventSpellID = 11110,
							name = "Geocrush cast",
							uuid = "1ec24ac4-92e8-6c37-bf0d-cdf5259d2e92",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Titan LPDU",
				eventType = 3,
				mechanicTime = 631,
				name = "[Draw][LPDU][Titan] Geocrush 2 Opposite Edge",
				timeRange = true,
				timelineIndex = 82,
				timerEndOffset = 3,
				timerStartOffset = -5,
				uuid = "cd7b21e1-6c6d-29b9-b419-e83b2e73b258",
				version = 2,
			},
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
							alertPriority = 3,
							alertTTS = true,
							alertText = "Go opposite of Titan ",
							alertVolume = 81,
							uuid = "1cf5df1d-68f6-aec1-b949-8f2e3f39e09a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 631,
				name = "MOVE!",
				timelineIndex = 82,
				timerOffset = -3.7999999523163,
				uuid = "44fad792-05cc-d9e9-9cd5-e43b5204e24b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "[Raid calls]",
				uuid = "69121152-60a8-0f50-9ed2-371d266e94f1",
			},
			objectType = "folder",
		},
	},
	[84] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Titan LPDU",
				uuid = "671e1e3b-b0b4-57c0-b290-f44b7a4e0ba0",
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
							displayPath = "",
							name = "Draws - Titan LPDU",
							uuid = "6b06bc3c-0ebe-8986-9174-04167b286231",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player = TensorCore.mGetPlayer()\nif not player or not player.pos then\n    self.used = true\n    return\nend\nlocal center = { x = 100, y = player.pos.y, z = 100 }\nlocal dx = player.pos.x - center.x\nlocal dz = player.pos.z - center.z\nlocal radialLength = math.sqrt(dx * dx + dz * dz)\nif radialLength < 0.1 then\n    dx = 0\n    dz = -1\n    radialLength = 1\nend\nlocal knockbackDistance = 12.0\nlocal target = {\n    x = player.pos.x + dx / radialLength * knockbackDistance,\n    y = player.pos.y,\n    z = player.pos.z + dz / radialLength * knockbackDistance\n}\nlocal drawer = TensorCore.getCachedDrawer(\n    0xFFFFE080,\n    0xFFFFA000,\n    0xFFFF6000,\n    0xFF000000,\n    4\n)\ndrawer:addTimedLine(\n    6500,\n    player.pos.x, player.pos.y, player.pos.z,\n    target.x, target.y, target.z,\n    0.3,\n    0.45,\n    0\n)\nAnyoneCore.addTimedWorldText(\n    6500,\n    \"UPHEAVAL: KNOCKBACK\",\n    { x = target.x, y = target.y + 1.2, z = target.z },\n    0xFFFFE080,\n    true,\n    0.9\n)\nself.used = true",
							displayPath = "Draws - Titan LPDU",
							name = "Knockback Line",
							uuid = "8fed7728-1ef2-1479-b126-a5ae87b33953",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Draws - Titan LPDU",
				mechanicTime = 637,
				name = "[Draw][LPDU][Titan] Upheaval Knockback Guide",
				timeRange = true,
				timelineIndex = 84,
				timerEndOffset = 2,
				timerStartOffset = -3,
				uuid = "9521059d-3b6a-244e-abb6-0129f350e8d2",
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
				name = "Draws - Titan LPDU",
				uuid = "d741b3f0-ea6c-5bbf-bb78-c0a6c3ffe3ae",
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
							actionLua = "local player=TensorCore.mGetPlayer()\nif not player or not player.pos then self.used=true return end\nlocal center={x=100,y=player.pos.y,z=100}\nlocal target=TensorCore.mGetTarget()\nlocal dx,dz=0,-1\nif target and target.pos then dx=target.pos.x-center.x dz=target.pos.z-center.z end\nlocal length=math.sqrt(dx*dx+dz*dz)\nif length<0.1 then dx=0 dz=-1 length=1 end\ndx=dx/length dz=dz/length\nlocal markers={{x=center.x+dx*6.0,y=center.y,z=center.z+dz*6.0},{x=center.x,y=center.y,z=center.z},{x=center.x-dx*7.0,y=center.y,z=center.z-dz*7.0}}\nlocal drawer=TensorCore.getCachedDrawer(0xFF66DDFF,0xFF0088FF,0xFF0044AA,0xFFFFFFFF,2)\nfor i,p in ipairs(markers) do\n drawer:addTimedCircle(12000,p.x,p.y,p.z,1.0,0,false,true)\n AnyoneCore.addTimedWorldText(12000,tostring(i),{x=p.x,y=p.y+1.5,z=p.z},0xFF66DDFF,true,1.2)\nend\nself.used=true",
							name = "Guide",
							uuid = "17d01ec4-d323-feec-9f0a-cc10c2e090a7",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Draws - Titan LPDU",
				enabled = false,
				mechanicTime = 639,
				name = "[Draw][LPDU][Titan] Gaol 1 Floor Markers",
				timeRange = true,
				timelineIndex = 85,
				timerEndOffset = 10,
				timerStartOffset = -2,
				uuid = "dcfa8746-420a-0db8-9daf-e5c4f14b6aed",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "[Raid calls]",
				uuid = "6dc82761-4bb9-76b0-ba6f-17451cf773c3",
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
							alertDuration = 8000,
							alertPriority = 2,
							alertTTS = true,
							alertText = "1 closest Titan, 3 furthest",
							uuid = "cf5933a6-60c7-6c7d-96a3-4c9784a16321",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "[Raid calls]",
				enabled = false,
				mechanicTime = 639,
				name = "[Raid Call][Titan] Gaols 1",
				timelineIndex = 85,
				timerOffset = -1,
				uuid = "4772929e-21de-1a4c-b18d-faca2de54c30",
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
				name = "[Raid calls]",
				uuid = "f299b56d-872a-2aa9-a9e5-601e3b379caa",
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
							alertPriority = 3,
							alertScale = 0.85,
							alertTTS = true,
							alertText = "Dodge Landslide, then move into position",
							conditions = 
							{
								
								{
									"79cc86fc-c692-d8cf-80e4-59e87313b453",
									true,
								},
								
								{
									"d5159105-0928-ba0c-b381-a3e050b0cfeb",
									true,
								},
							},
							uuid = "967af0df-5b77-b361-bc13-71ab4361e514",
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
							eventSpellID = 11119,
							name = "Main Landslide",
							uuid = "79cc86fc-c692-d8cf-80e4-59e87313b453",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							channelCheckSpellID = 11119,
							conditionType = 5,
							name = "Landslide still casting",
							partyTargetType = "Event Entity",
							uuid = "d5159105-0928-ba0c-b381-a3e050b0cfeb",
							version = 3,
						},
					},
				},
				displayPath = "[Raid calls]",
				eventType = 3,
				mechanicTime = 642,
				name = "[Raid Call][Titan] Landslide - Dodge then Reposition",
				timeRange = true,
				timelineIndex = 86,
				timerEndOffset = 2.5,
				timerStartOffset = -2.5,
				uuid = "7c96465c-7de5-de8c-907f-4a266ed42e5d",
				version = 2,
			},
		},
	},
	[89] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Titan LPDU",
				uuid = "4353a724-d5c5-8500-9e0d-c8644ff0112b",
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
							displayPath = "",
							name = "Draws - Titan LPDU",
							uuid = "ab492049-0915-3b14-8507-9a70290e8ace",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local Roster = AnyoneCore and AnyoneCore.Roster\nif not Roster or not Roster.current or not Roster.current() then return end\nif not Roster.isReady or not Roster.isReady() then return end\n\nlocal slot = Roster.mySlot()\nif not slot or slot == \"T1\" then\n    self.used = true\n    return\nend\n\nlocal playerID = Roster.idOf(slot)\nif not playerID then return end\nlocal player = Roster.entOf(slot)\nlocal mt = Roster.entOf(\"T1\")\nif not player or not player.pos or not mt or not mt.pos then return end\n\nlocal distance = TensorCore.getDistance2d(player.pos, mt.pos)\nif distance and distance > 0.2 then\n    local heading = TensorCore.getHeadingToTarget(player.pos, mt.pos)\n    local tipLength = math.min(2.5, distance * 0.4)\n    local drawer = TensorCore.getCachedDrawer(\n        0xFFFFCC33, 0xFFFFA000, 0xFFFFFFFF, 0xFF000000, 4\n    )\n    drawer:addTimedArrow(\n        5000,\n        player.pos.x, player.pos.y, player.pos.z,\n        heading,\n        distance - tipLength, 1.4, tipLength, 3.0,\n        0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\nself.used = true",
							conditions = 
							{
								
								{
									"b5e63e61-2325-7cba-b4a8-24213b4c1fe4",
									true,
								},
							},
							displayPath = "Draws - Titan LPDU",
							name = "Snapshot arrow toward MT for 5 seconds",
							uuid = "6b1f268f-49b8-5434-86d5-eb41055b0cac",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Titan LPDU",
							uuid = "c1942206-1d82-0059-b5ef-1a3542c798bd",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local Roster = AnyoneCore and AnyoneCore.Roster\nif not Roster or not Roster.current or not Roster.current() then return false end\nlocal slot = Roster.mySlot()\nreturn slot ~= nil and slot ~= \"T1\"",
							dequeueIfLuaFalse = true,
							displayPath = "Draws - Titan LPDU",
							name = "Everyone except MT",
							uuid = "b5e63e61-2325-7cba-b4a8-24213b4c1fe4",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Titan LPDU",
				mechanicTime = 651,
				name = "[Draw][LPDU][Titan] Snapshot Arrow to MT 653",
				throttleTime = 1000,
				timeRange = true,
				timelineIndex = 89,
				timerEndOffset = 3,
				timerStartOffset = 2,
				uuid = "e7638d70-3e19-7dc1-a5ca-6b89da59cce8",
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
				name = "Draws - Titan LPDU",
				uuid = "999472bf-aef5-68b3-9e0a-bfa6f8888243",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "[Raid calls]",
				uuid = "daee94f3-f2a7-dbd2-b64d-5cc0f70041c1",
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
							alertTTS = true,
							alertText = "Dodge 2x + landslides",
							uuid = "dd364a2e-4391-2895-ab8f-1f1d9ef7af30",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 666,
				name = "[Raid Call][UWU] Dodge 2x + Landslides 664",
				timelineIndex = 90,
				timerOffset = -2,
				uuid = "b95ec6d9-9d3a-4ce1-895a-7651729fcbb9",
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
				name = "Draws - Titan LPDU",
				uuid = "69729b48-59af-0ad2-9ca7-f57b42aa090d",
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
							actionLua = "local player=TensorCore.mGetPlayer()\nif not player or not player.pos then self.used=true return end\nlocal center={x=100,y=player.pos.y,z=100}\nlocal target=TensorCore.mGetTarget()\nlocal dx,dz=0,-1\nif target and target.pos then dx=target.pos.x-center.x dz=target.pos.z-center.z end\nlocal length=math.sqrt(dx*dx+dz*dz)\nif length<0.1 then dx=0 dz=-1 length=1 end\ndx=dx/length dz=dz/length\nlocal markers={{x=center.x+dx*6.0,y=center.y,z=center.z+dz*6.0},{x=center.x,y=center.y,z=center.z},{x=center.x-dx*7.0,y=center.y,z=center.z-dz*7.0}}\nlocal drawer=TensorCore.getCachedDrawer(0xFF66DDFF,0xFF0088FF,0xFF0044AA,0xFFFFFFFF,2)\nfor i,p in ipairs(markers) do\n drawer:addTimedCircle(12000,p.x,p.y,p.z,1.0,0,false,true)\n AnyoneCore.addTimedWorldText(12000,tostring(i),{x=p.x,y=p.y+1.5,z=p.z},0xFF66DDFF,true,1.2)\nend\nself.used=true",
							name = "Guide",
							uuid = "9c4abc92-49a7-36c4-bb59-544368b542b2",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Draws - Titan LPDU",
				enabled = false,
				mechanicTime = 684,
				name = "[Draw][LPDU][Titan] Gaol 2 Floor Markers",
				timeRange = true,
				timelineIndex = 95,
				timerEndOffset = 10,
				timerStartOffset = -2,
				uuid = "3a62c2d9-6a87-d926-a359-7010f9f1da11",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Titan LPDU",
							uuid = "2d440832-219c-ce15-ac34-7897ad686bc7",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local Roster = AnyoneCore and AnyoneCore.Roster\nif not Roster or not Roster.current or not Roster.current() then return end\nif not Roster.isReady or not Roster.isReady() then return end\nif not eventArgs or not eventArgs.entityID then return end\n\nlocal gaol = TensorCore.mGetEntity(eventArgs.entityID)\nif not gaol or not gaol.pos then return end\n\nlocal slots = data.uwu_titan_gaol_slots\nif not slots then\n    slots = {\"T1\", \"T2\", \"H1\", \"H2\", \"M1\", \"M2\", \"R1\", \"R2\"}\n    data.uwu_titan_gaol_slots = slots\nend\n\nlocal nearest\nlocal nearestDistance = 1.5\nfor i = 1, #slots do\n    local member = Roster.entOf(slots[i])\n    if member and member.pos then\n        local distance = TensorCore.getDistance2d(gaol.pos, member.pos)\n        if distance and distance < nearestDistance then\n            nearestDistance = distance\n            nearest = member\n        end\n    end\nend\n\nif not nearest then return end\n\nlocal drawer = TensorCore.getCachedDrawer(\n    0xFF35FF55, 0xFF00CC33, 0xFFFFFFFF, 0xFF000000, 4\n)\ndrawer:addTimedCircleOnEnt(\n    4000,\n    nearest.id,\n    1.35,\n    0,\n    false,\n    true,\n    Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n)\nself.used = true",
							conditions = 
							{
								
								{
									"a4ac7572-d2ef-2957-bf56-a222bd2c0ebb",
									true,
								},
							},
							displayPath = "Draws - Titan LPDU",
							name = "Green circle on nearest Gaol target",
							uuid = "88091fcb-189e-b191-a7fc-dee99fdc1253",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Titan LPDU",
							uuid = "0ead2252-da54-ed01-a22e-7a83c010c52c",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs and eventArgs.entityContentID == 1804",
							displayPath = "Draws - Titan LPDU",
							name = "Granite Gaol entity",
							uuid = "a4ac7572-d2ef-2957-bf56-a222bd2c0ebb",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Titan LPDU",
				eventType = 5,
				loop = true,
				mechanicTime = 684,
				name = "[Draw][LPDU][Titan] Early Granite Gaol Target Marker",
				timeRange = true,
				timelineIndex = 95,
				timerEndOffset = 8,
				timerStartOffset = 1,
				uuid = "5455ca3e-11bd-cd62-8886-36ec3ef65b46",
				version = 2,
			},
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
							alertPriority = 3,
							alertTTS = true,
							alertText = "Opposite of purple",
							alertVolume = 81,
							uuid = "2b718efa-38a4-585d-a464-9e9b0cb10ef9",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 684,
				name = "MOVE!",
				timelineIndex = 95,
				timerOffset = -3.5,
				uuid = "4ec54fac-927f-b3c8-b26c-f147e58e68c6",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "[Raid calls]",
				uuid = "196ac706-e2f9-626f-a1e2-e67e8f386a80",
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
							alertDuration = 8000,
							alertPriority = 2,
							alertTTS = true,
							alertText = "Break rock once formed",
							uuid = "5a088776-6156-abaf-867e-d4a8528d9e59",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "[Raid calls]",
				mechanicTime = 684,
				name = "[Raid Call][Titan] Gaols 2",
				timelineIndex = 95,
				timerOffset = -1,
				uuid = "d494470c-4b37-5705-9b04-124ccb78a25f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Targeting - Titan",
				uuid = "accc93a7-b89a-07f2-a129-bfeb4f1171b6",
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
									"93e40f5b-071f-4197-b829-1455210e1f8f",
									true,
								},
								
								{
									"61502a12-6156-b646-ac41-59e7e764a3db",
									true,
								},
								
								{
									"06f6ec2f-1c9e-68c5-a97b-c4450f49e50f",
									true,
								},
							},
							name = "Target newly targetable gaol",
							setTarget = true,
							targetType = "Event Entity",
							uuid = "017978a7-09b9-830c-958a-902f3621c899",
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
							eventEntityContentID = 1804,
							name = "Granite Gaol 1804",
							uuid = "93e40f5b-071f-4197-b829-1455210e1f8f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 3,
							name = "Became targetable",
							uuid = "61502a12-6156-b646-ac41-59e7e764a3db",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local Roster = AnyoneCore.Roster\nif not Roster or not Roster.current() then return false end\nlocal slot = Roster.mySlot()\nif not slot then return false end\nreturn slot == \"H1\" or slot == \"H2\" or slot == \"M1\" or slot == \"M2\" or slot == \"R1\" or slot == \"R2\"",
							conditionType = 9,
							name = "Roster: DPS/healers",
							partyTargetType = "Tank",
							uuid = "06f6ec2f-1c9e-68c5-a97b-c4450f49e50f",
							version = 3,
						},
					},
				},
				displayPath = "Targeting - Titan",
				eventType = 26,
				mechanicTime = 684,
				name = "[Target][Titan] Granite Gaol - Non-Tanks",
				timeRange = true,
				timelineIndex = 95,
				timerEndOffset = 13,
				timerStartOffset = 3,
				uuid = "f3a58d6e-49a7-0bae-ab1f-4017bc7aa453",
				version = 2,
			},
		},
	},
	[96] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "[Raid calls]",
				uuid = "0bcf385d-cc45-3ef2-98af-34eadd0469a1",
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
							alertText = "Dodge Landslide",
							uuid = "f7d833fc-fcdb-359b-9dbb-71c19250ac73",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "[Raid calls]",
				mechanicTime = 699,
				name = "[Raid Call][Titan] Dodge Landslide 2s early",
				timelineIndex = 96,
				timerOffset = -2,
				uuid = "8ea152dd-978b-b1d4-9b71-396236ad9eea",
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
				name = "Draws - Titan LPDU",
				uuid = "db0b1aea-7d58-f185-b445-52cb914581db",
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
							actionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nlocal slot = roster and roster.mySlot()\nif slot == \"T1\" or slot == \"T2\" then\n    self.used = true\n    return\nend\n\nlocal player = TensorCore.mGetPlayer()\nif not player or not player.pos then\n    self.used = true\n    return\nend\n\nlocal center = { x = 100, y = player.pos.y, z = 100 }\nlocal distance = TensorCore.getDistance2d(player.pos, center)\nif distance > 0.2 then\n    local tipLength = math.min(1.8, distance * 0.35)\n    local drawer = TensorCore.getCachedDrawer(\n        0xFF66FFCC,\n        0xFF00AA88,\n        0xFF006655,\n        0xFFFFFFFF,\n        2\n    )\n    drawer:addTimedArrow(\n        12000,\n        player.pos.x, player.pos.y, player.pos.z,\n        TensorCore.getHeadingToTarget(player.pos, center),\n        math.max(0.1, distance - tipLength),\n        1.0,\n        tipLength,\n        2.3,\n        0,\n        false,\n        Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nlocal drawer = TensorCore.getCachedDrawer(\n    0x5533CCAA,\n    0x5533CCAA,\n    0xAA00AA88,\n    0xFFFFFFFF,\n    2\n)\ndrawer:addTimedCircle(12000, center.x, center.y, center.z, 4.5, 0, false, true)\nAnyoneCore.addTimedWorldText(\n    12000,\n    \"SIX TUMULTS: STACK CENTER\",\n    { x = center.x, y = center.y + 1.5, z = center.z },\n    0xFF66FFCC,\n    true,\n    1.0\n)\n\nself.used = true",
							name = "Guide",
							uuid = "940138df-388e-8ebc-81a8-16536d13c064",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Draws - Titan LPDU",
				mechanicTime = 704,
				name = "[Draw][LPDU][Titan] Six Tumults Stack",
				timeRange = true,
				timelineIndex = 98,
				timerEndOffset = 8,
				timerStartOffset = -3.5,
				uuid = "6af9e6ec-42ea-47bd-850c-0bd4e9006ace",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "[Raid calls]",
				uuid = "fd21e0e5-76d1-c257-b06f-2b8834ea804a",
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
							alertDuration = 8000,
							alertPriority = 2,
							alertTTS = true,
							alertText = "Take Tankbuster alone",
							conditions = 
							{
								
								{
									"9de440ae-f6b9-9643-a390-83e59aafc59f",
									true,
								},
							},
							uuid = "e7f71382-0468-7e71-aea1-91ea2df3b844",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local role = AnyoneCore.Roster.mySlot()\nreturn role == \"MT\" or role == \"OT\"",
							name = "Tanks Only",
							uuid = "9de440ae-f6b9-9643-a390-83e59aafc59f",
							version = 3,
						},
					},
				},
				displayPath = "[Raid calls]",
				mechanicTime = 704,
				name = "[Raid Call][Titan] Six Tumults",
				timelineIndex = 98,
				timerOffset = -1,
				uuid = "f526509c-ce0f-c60f-aa87-1a319a794337",
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
				name = "Draws - Titan LPDU",
				uuid = "9d666afd-e8c8-5a15-9737-082e145c59c7",
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
							actionLua = "local player = TensorCore.mGetPlayer()\nif not player or not player.pos then self.used=true return end\n\nlocal center={x=100,y=player.pos.y,z=100}\nlocal targetEntity=TensorCore.mGetTarget()\nlocal heading=targetEntity and targetEntity.pos and targetEntity.pos.h\nif not heading then heading=math.pi end\n\nlocal slot=AnyoneCore.Roster.mySlot()\nlocal isRanged=(slot==\"H1\" or slot==\"H2\" or slot==\"R1\" or slot==\"R2\")\nlocal roleAngle=heading\nlocal stepSign=1\nif isRanged then\n    roleAngle=heading+math.pi\n    stepSign=-1\nend\n\nlocal radius=12.5\nlocal p0={x=center.x+math.sin(roleAngle)*radius,y=center.y,z=center.z+math.cos(roleAngle)*radius}\nlocal p1Angle=roleAngle+stepSign*math.pi/4\nlocal p1={x=center.x+math.sin(p1Angle)*radius,y=center.y,z=center.z+math.cos(p1Angle)*radius}\nlocal p2={x=center.x+math.sin(roleAngle)*radius,y=center.y,z=center.z+math.cos(roleAngle)*radius}\nlocal p3Angle=roleAngle-stepSign*math.pi/4\nlocal p3={x=center.x+math.sin(p3Angle)*radius,y=center.y,z=center.z+math.cos(p3Angle)*radius}\n\nlocal guide=TensorCore.getCachedDrawer(0xFF99FF99,0xFF33CC66,0xFF168844,0xFFFFFFFF,2)\nlocal firstTimeout=1800\nlocal segmentTimeout=2000\n\nlocal distance=TensorCore.getDistance2d(player.pos,p0)\nif distance>0.2 then\n    local tip=math.min(1.2,distance*0.3)\n    guide:addTimedArrow(\n        firstTimeout,\n        player.pos.x,player.pos.y,player.pos.z,\n        TensorCore.getHeadingToTarget(player.pos,p0),\n        math.max(0.1,distance-tip),\n        0.75,tip,1.7,0,false,\n        Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nlocal route1=TensorCore.getDistance2d(p0,p1)\nlocal route2=TensorCore.getDistance2d(p1,p2)\n\nguide:addTimedArrow(\n    segmentTimeout,\n    p0.x,p0.y,p0.z,\n    TensorCore.getHeadingToTarget(p0,p1),\n    math.max(0.1,route1-0.8),\n    0.8,1.0,1.9,3800,false,\n    Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n)\nguide:addTimedArrow(\n    segmentTimeout,\n    p1.x,p1.y,p1.z,\n    TensorCore.getHeadingToTarget(p1,p2),\n    math.max(0.1,route2-0.8),\n    0.8,1.0,1.9,5800,false,\n    Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n)\n\nAnyoneCore.addTimedWorldText(\n    firstTimeout,\n    isRanged and \"BOMB BOULDER: RANGED/HEALER BACK\" or \"BOMB BOULDER: TANK/MELEE FRONT\",\n    {x=p0.x,y=p0.y+1.5,z=p0.z},\n    0xFF99FF99,true,0.9\n)\nself.used=true",
							name = "Guide",
							uuid = "eb61ff72-81f6-6917-bf66-7be072ff92d3",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Draws - Titan LPDU",
				mechanicTime = 722,
				name = "[Draw][LPDU][Titan] Mario Kart 2",
				timeRange = true,
				timelineIndex = 102,
				timerEndOffset = 8,
				timerStartOffset = -5,
				uuid = "f9fab7e4-908e-c846-aa91-c590a9f89caf",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "[Raid calls]",
				uuid = "57cee788-863b-1700-91a8-951657ca4199",
			},
			objectType = "folder",
		},
	},
	[107] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Titan LPDU",
				uuid = "63203d8c-0ac3-257d-a88f-db4ef4058f93",
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
							actionLua = "local player=TensorCore.mGetPlayer()\nif not player or not player.pos then self.used=true return end\nlocal center={x=100,y=player.pos.y,z=100}\nlocal channel=Argus2.getNextUnusedChannel(true)\nArgus2.addTimedCircleFilled(6000,center.x,center.y,center.z,17.5,64,0x5533CC66,0x5533CC66,0xAA22FF66,0,nil,0,0,0,0,0,false,true,Argus2.RenderFlags.FLAG_OCCLUSION_BASE,channel,0,0,0)\nArgus2.addTimedDonutFilled(6000,center.x,center.y,center.z,5.5,25.0,64,0,0,0,0,nil,0,0,0,0,0,false,true,Argus2.RenderFlags.FLAG_OCCLUDE,channel,0,0,0)\nlocal distance=TensorCore.getDistance2d(player.pos,center)\nif distance>0.2 then\n local tip=math.min(2.0,distance*0.35)\n local drawer=TensorCore.getCachedDrawer(0xFF99FF99,0xFF33CC66,0xFF168844,0xFFFFFFFF,2)\n drawer:addTimedArrow(6000,player.pos.x,player.pos.y,player.pos.z,TensorCore.getHeadingToTarget(player.pos,center),math.max(0.1,distance-tip),1.0,tip,2.4,0,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nend\nAnyoneCore.addTimedWorldText(6000,\"STACK CENTER\",{x=center.x,y=center.y+1.5,z=center.z},0xFF99FF99,true,1.0)\nself.used=true",
							name = "Guide",
							uuid = "cba219cc-fadf-0689-b0a4-c2b4bb9c0042",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Draws - Titan LPDU",
				mechanicTime = 735,
				name = "[Draw][LPDU][Titan] Four AOE Safe Center",
				timeRange = true,
				timelineIndex = 107,
				timerEndOffset = 5,
				timerStartOffset = -1,
				uuid = "eb339f3b-25e1-fcb8-b1e7-c10670aaf949",
				version = 2,
			},
		},
	},
	[109] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Titan LPDU",
				uuid = "b82e4854-6d62-cc1c-9254-9224a6fea3fc",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "[Raid calls]",
				uuid = "e5bcbff2-b320-97e7-a133-fadc0951b215",
			},
			objectType = "folder",
		},
	},
	[114] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Movement - Magitek Bits",
				uuid = "cf8c33e2-5537-8e55-851e-d4b2c299c845",
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
							actionID = 25762,
							conditions = 
							{
								
								{
									"71ea367a-d2a3-e159-a1e5-b97a8b024e03",
									true,
								},
							},
							ignoreWeaveRules = true,
							name = "Thunderclap to nearest targetable Magitek Bit",
							targetContentID = 5563,
							targetType = "ContentID",
							uuid = "a9f2c335-b2dc-59af-9d3a-3d443b04d683",
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
								20,
							},
							name = "Job = MNK",
							uuid = "71ea367a-d2a3-e159-a1e5-b97a8b024e03",
							version = 3,
						},
					},
				},
				displayPath = "Movement - Magitek Bits",
				mechanicTime = 800,
				name = "[Dash] Magitek Bit - MNK Thunderclap",
				timeRange = true,
				timelineIndex = 114,
				timerEndOffset = 7,
				timerStartOffset = 2,
				uuid = "db8cdbc3-3c05-812e-8fb3-5278d827999f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 34646,
							conditions = 
							{
								
								{
									"f8a36a2c-7622-de26-b509-a31ff1c7deaa",
									true,
								},
							},
							ignoreWeaveRules = true,
							name = "Slither to nearest targetable Magitek Bit",
							targetContentID = 5563,
							targetType = "ContentID",
							uuid = "a3160751-5993-f085-9276-022d3de8c0ab",
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
								41,
							},
							name = "Job = VPR",
							uuid = "f8a36a2c-7622-de26-b509-a31ff1c7deaa",
							version = 3,
						},
					},
				},
				displayPath = "Movement - Magitek Bits",
				mechanicTime = 800,
				name = "[Dash] Magitek Bit - VPR Slither",
				timeRange = true,
				timelineIndex = 114,
				timerEndOffset = 7,
				timerStartOffset = 2,
				uuid = "741258f4-4603-a8c2-8498-bcf9ed644b7e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 36951,
							conditions = 
							{
								
								{
									"eba6ae16-6349-d20d-8823-1d2e03362cb7",
									true,
								},
							},
							ignoreWeaveRules = true,
							name = "Winged Glide to nearest targetable Magitek Bit",
							targetContentID = 5563,
							targetType = "ContentID",
							uuid = "95e322b7-f1cc-1231-8985-b7992c1e9383",
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
								22,
							},
							name = "Job = DRG",
							uuid = "eba6ae16-6349-d20d-8823-1d2e03362cb7",
							version = 3,
						},
					},
				},
				displayPath = "Movement - Magitek Bits",
				mechanicTime = 800,
				name = "[Dash] Magitek Bit - DRG Winged Glide",
				timeRange = true,
				timelineIndex = 114,
				timerEndOffset = 7,
				timerStartOffset = 2,
				uuid = "6a27ba0c-f8d5-fbbf-9f2c-859d8c14da7f",
				version = 2,
			},
		},
	},
	[115] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Ultima",
				uuid = "0466e0d5-9048-8b78-89b1-107d451107be",
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
							actionLua = "local player=TensorCore.mGetPlayer()\nif not player or not player.pos then self.used=true return end\nlocal duration=6000\nlocal dest={x=100,y=player.pos.y,z=100}\nlocal distance=TensorCore.getDistance2d(player.pos,dest)\nif distance>0.3 then\n local tip=math.min(1.7,distance*0.35)\n local drawer=TensorCore.getCachedDrawer(0xFF33FF66,0xFF00CC44,0xFFFFFFFF,0xFF000000,4)\n drawer:addTimedArrow(duration,player.pos.x,player.pos.y,player.pos.z,TensorCore.getHeadingToTarget(player.pos,dest),math.max(0.1,distance-tip),1.2,tip,2.5,0,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nend\nAnyoneCore.addTimedWorldText(duration,\"MOVE TO MIDDLE\",{x=dest.x,y=dest.y+1.1,z=dest.z},0xFF33FF66,true,1.1)\nself.used=true",
							name = "Move to Middle Arrow",
							uuid = "dc04d8cd-7087-1154-ab20-f48382c4e625",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Draws - Ultima",
				mechanicTime = 815,
				name = "[Draw][LPDU] Post-Blight Move to Middle",
				timeRange = true,
				timelineIndex = 115,
				timerEndOffset = 4.5,
				timerStartOffset = 2.5,
				uuid = "75831493-090b-daf2-a87e-10710e25179f",
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
				name = "Monk Opti",
				uuid = "74b38a97-4a87-820f-8e12-88a26e35cef3",
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
							displayPath = "",
							name = "Monk Opti",
							uuid = "0915b51e-b4fb-be01-b050-4836027343b7",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							actionID = 25762,
							conditions = 
							{
								
								{
									"0c977b68-3151-380a-aae9-9fa72688708f",
									true,
								},
							},
							displayPath = "Monk Opti",
							ignoreWeaveRules = true,
							name = "Thunderclap to targetable Lahabrea",
							targetContentID = 2143,
							targetType = "ContentID",
							uuid = "66d26b66-1e40-4022-8495-448afb849c08",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Monk Opti",
							uuid = "990bc96d-ecbb-6784-be2c-90e6645828b2",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local e = TensorCore.getEntityByGroup(\"ContentID\", {contentid=2143, subgroup=\"Nearest\"})\nreturn e ~= nil and e.targetable == true",
							name = "Lahabrea targetable",
							uuid = "0c977b68-3151-380a-aae9-9fa72688708f",
							version = 3,
						},
					},
				},
				displayPath = "Monk Opti",
				mechanicTime = 840,
				name = "[Dash] Lahabrea Targetable - MNK Thunderclap",
				timeRange = true,
				timelineIndex = 116,
				timerEndOffset = -10,
				timerOffset = -17,
				timerStartOffset = -19,
				uuid = "ea58ca33-d1c6-3b0d-b165-e140afce6751",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Movement - Lahabrea",
				uuid = "7e407e3e-17d8-bc11-935d-db08f0065829",
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
									"0d880dca-e2e9-10ce-a28e-b38548457d93",
									true,
								},
							},
							name = "Target Lahabrea",
							setTarget = true,
							targetContentID = 2143,
							targetType = "ContentID",
							uuid = "df841f09-81dc-df5c-b498-c3abe31a7364",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local e = TensorCore.getEntityByGroup(\"ContentID\", {contentid=2143, subgroup=\"Nearest\"})\nreturn e ~= nil and e.targetable == true",
							name = "Lahabrea targetable",
							uuid = "0d880dca-e2e9-10ce-a28e-b38548457d93",
							version = 3,
						},
					},
				},
				displayPath = "Movement - Lahabrea",
				mechanicTime = 840,
				name = "[Target] Lahabrea on Targetable",
				timeRange = true,
				timelineIndex = 116,
				timerEndOffset = -10,
				timerStartOffset = -19,
				uuid = "c4aa0742-6c6c-2dac-81f9-d8ff3e635e36",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 34646,
							conditions = 
							{
								
								{
									"18e16505-830a-01e2-8601-b112f0adde98",
									true,
								},
								
								{
									"7674cb6b-ab92-1c52-b0f5-dc8219cb13cd",
									true,
								},
							},
							ignoreWeaveRules = true,
							name = "Slither to targetable Lahabrea",
							targetContentID = 2143,
							targetType = "ContentID",
							uuid = "69fdaf1e-7592-e653-a95a-903161dd1de0",
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
								41,
							},
							name = "Job = VPR",
							uuid = "18e16505-830a-01e2-8601-b112f0adde98",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local e = TensorCore.getEntityByGroup(\"ContentID\", {contentid=2143, subgroup=\"Nearest\"})\nreturn e ~= nil and e.targetable == true",
							name = "Lahabrea targetable",
							uuid = "7674cb6b-ab92-1c52-b0f5-dc8219cb13cd",
							version = 3,
						},
					},
				},
				displayPath = "Movement - Lahabrea",
				mechanicTime = 840,
				name = "[Dash] Lahabrea Targetable - VPR Slither",
				timeRange = true,
				timelineIndex = 116,
				timerEndOffset = -10,
				timerStartOffset = -19,
				uuid = "5f4a5d75-d01d-ecdf-ab60-7484de80e374",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 36951,
							conditions = 
							{
								
								{
									"1c09a391-7633-98ef-add2-35c5a8202e1b",
									true,
								},
								
								{
									"986db038-f978-b011-8bd4-c68acce089c8",
									true,
								},
							},
							ignoreWeaveRules = true,
							name = "Winged Glide to targetable Lahabrea",
							targetContentID = 2143,
							targetType = "ContentID",
							uuid = "1b6cc9c4-9382-98e5-8eeb-6ae9d6f04b9d",
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
								22,
							},
							name = "Job = DRG",
							uuid = "1c09a391-7633-98ef-add2-35c5a8202e1b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local e = TensorCore.getEntityByGroup(\"ContentID\", {contentid=2143, subgroup=\"Nearest\"})\nreturn e ~= nil and e.targetable == true",
							name = "Lahabrea targetable",
							uuid = "986db038-f978-b011-8bd4-c68acce089c8",
							version = 3,
						},
					},
				},
				displayPath = "Movement - Lahabrea",
				mechanicTime = 840,
				name = "[Dash] Lahabrea Targetable - DRG Winged Glide",
				timeRange = true,
				timelineIndex = 116,
				timerEndOffset = -10,
				timerStartOffset = -19,
				uuid = "42300c25-9f9c-0c17-9eb5-f1c4a4ccf87d",
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
				name = "Draws - Ultima",
				uuid = "2e719c70-f00d-f7a7-9794-85f16f1e1b8c",
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
							actionLua = "local player=TensorCore.mGetPlayer()\nif not player or not player.pos then self.used=true return end\nlocal duration=6000\nlocal dest={x=100,y=player.pos.y,z=82}\nlocal distance=TensorCore.getDistance2d(player.pos,dest)\nif distance>0.3 then\n local tip=math.min(1.7,distance*0.35)\n local drawer=TensorCore.getCachedDrawer(0xFF33FF66,0xFF00CC44,0xFFFFFFFF,0xFF000000,4)\n drawer:addTimedArrow(duration,player.pos.x,player.pos.y,player.pos.z,TensorCore.getHeadingToTarget(player.pos,dest),math.max(0.1,distance-tip),1.2,tip,2.5,0,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nend\nAnyoneCore.addTimedWorldText(duration,\"MT: NORTH / 1\",{x=dest.x,y=dest.y+1.1,z=dest.z},0xFF33FF66,true,1.1)\nself.used=true",
							conditions = 
							{
								
								{
									"3d92685d-d995-c20d-af2d-398dab76ddb7",
									true,
								},
								
								{
									"79807943-bfa4-7622-bae9-2ea9fc0d94d0",
									true,
								},
							},
							name = "MT North Arrow",
							uuid = "696c6809-751a-173a-a9aa-57ed2effd9dd",
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
							eventSpellID = 11143,
							name = "Spell 11143",
							uuid = "3d92685d-d995-c20d-af2d-398dab76ddb7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local Roster = AnyoneCore.Roster\nif not Roster or not Roster.current() or not Roster.isReady() then return false end\nlocal slot = Roster.mySlot()\nif not slot then return false end\nreturn slot == \"T1\"",
							conditionType = 9,
							name = "Roster: T1",
							partyTargetType = "Main Tank",
							uuid = "79807943-bfa4-7622-bae9-2ea9fc0d94d0",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ultima",
				eventType = 3,
				mechanicTime = 1004,
				name = "[Draw][LPDU][MT] Tank Purge - North",
				timeRange = true,
				timelineIndex = 119,
				timerEndOffset = -1,
				timerStartOffset = -4.5,
				uuid = "064ac5b1-9aea-6d15-a113-6a7634cd8f1c",
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
				name = "LPDU Guidance",
				uuid = "e8b12922-da6c-30b5-b175-6585ccf6e41f",
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
							alertDuration = 6000,
							alertPriority = 3,
							alertScale = 0.85,
							alertTTS = true,
							alertText = "Provoke, then move away from the party",
							conditions = 
							{
								
								{
									"8463af01-bf8c-5a7a-934d-568111f8465e",
									true,
								},
								
								{
									"87c15053-7724-d2cd-8ead-547687108107",
									true,
								},
								
								{
									"e63044bb-8413-e70e-bbb4-1abb4d611f7e",
									true,
								},
							},
							uuid = "c7055fee-125d-9416-9e52-e05838bd768d",
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
							eventSpellID = 11129,
							name = "Spell 11129",
							uuid = "8463af01-bf8c-5a7a-934d-568111f8465e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local Roster = AnyoneCore.Roster\nif not Roster or not Roster.current() then return false end\nlocal slot = Roster.mySlot()\nif not slot then return false end\nreturn slot == \"T2\"",
							conditionType = 9,
							name = "Roster: T2",
							partyTargetType = "Off Tank",
							uuid = "87c15053-7724-d2cd-8ead-547687108107",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local Roster = AnyoneCore.Roster\nif not Roster or not Roster.current() then return false end\nlocal mtID = Roster.idOf(\"T1\")\nreturn mtID ~= nil and eventArgs.targetID == mtID",
							conditionType = 10,
							dequeueIfLuaFalse = true,
							inGroupTargetType = "Main Tank",
							name = "Roster: Viscous targets T1",
							partyTargetType = "Event Target",
							uuid = "e63044bb-8413-e70e-bbb4-1abb4d611f7e",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Guidance",
				eventType = 2,
				mechanicTime = 1006,
				name = "[LPDU][OT] First Viscous - Provoke and Separate",
				throttleTime = 5000,
				timeRange = true,
				timelineIndex = 120,
				timerEndOffset = 2,
				timerStartOffset = -2,
				uuid = "47d5fef0-dc38-d2e5-9bd2-a010207f9869",
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
				name = "Draws - Garuda",
				uuid = "06218b18-4bf4-d9d8-b160-4fb4c2cd393b",
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
							displayPath = "",
							name = "Draws - Garuda",
							uuid = "94caf00f-2361-9dd5-bf38-76610df86d4c",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player = TensorCore.mGetPlayer()\nif not player or not player.pos then\n    self.used = true\n    return\nend\n\nlocal center = { x = 100, y = player.pos.y, z = 100 }\nlocal candidates = {\n    { x = 93.5,  y = center.y, z = 82.2  },\n    { x = 106.5, y = center.y, z = 82.2  },\n    { x = 117.8, y = center.y, z = 93.5  },\n    { x = 117.8, y = center.y, z = 106.5 },\n    { x = 106.5, y = center.y, z = 117.8 },\n    { x = 93.5,  y = center.y, z = 117.8 },\n    { x = 82.2,  y = center.y, z = 106.5 },\n    { x = 82.2,  y = center.y, z = 93.5  }\n}\n\nlocal hazards = {}\nlocal seen = {}\nlocal enemies = TensorCore.getEntityGroupList(\"Enemy\")\nfor _, entity in pairs(enemies or {}) do\n    local content = entity and (entity.contentid or entity.contentID)\n    if entity and entity.pos and (content == 1644 or content == 1185 or content == 1801 or content == 2137) then\n        seen[content] = true\n        local radius = 5.5\n        if content == 1644 then\n            radius = 7.0\n        elseif content == 1185 then\n            radius = 7.5\n        elseif content == 2137 then\n            radius = 6.5\n        end\n        hazards[#hazards + 1] = { x = entity.pos.x, z = entity.pos.z, radius = radius }\n    end\nend\n\nif not seen[1644] or not seen[1185] or not seen[1801] or not seen[2137] then\n    self.used = true\n    return\nend\n\nlocal best\nlocal bestClearance = -math.huge\nfor _, candidate in ipairs(candidates) do\n    local clearance = math.huge\n    for _, hazard in ipairs(hazards) do\n        local dx = candidate.x - hazard.x\n        local dz = candidate.z - hazard.z\n        clearance = math.min(clearance, math.sqrt(dx * dx + dz * dz) - hazard.radius)\n    end\n    if clearance > bestClearance then\n        best = candidate\n        bestClearance = clearance\n    end\nend\n\nif not best then\n    self.used = true\n    return\nend\n\nlocal channel = Argus2.getNextUnusedChannel(true)\nArgus2.addTimedCircleFilled(\n    10000,\n    best.x, best.y, best.z,\n    3.3, 64,\n    0x5533CC66, 0x5533CC66, 0xAA22FF66, 0,\n    nil, 0, 0, 0, 0, 0,\n    false, true, Argus2.RenderFlags.FLAG_OCCLUSION_BASE,\n    channel, 0, 0, 0\n)\n\nlocal distance = TensorCore.getDistance2d(player.pos, best)\nif distance > 0.2 then\n    local tip = math.min(1.8, distance * 0.35)\n    local drawer = TensorCore.getCachedDrawer(\n        0xFFB6FFB6, 0xFF55FF55, 0xFFFFFFFF, 0xFF000000, 5\n    )\n    drawer:addTimedArrow(\n        10000,\n        player.pos.x, player.pos.y, player.pos.z,\n        TensorCore.getHeadingToTarget(player.pos, best),\n        math.max(0.1, distance - tip),\n        1.5, tip, 3.2, 0, false,\n        Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nAnyoneCore.addTimedWorldText(\n    10000,\n    \"PREDATION: SAFE RUNE\",\n    { x = best.x, y = best.y + 1.2, z = best.z },\n    0xFFB6FFB6, true, 1.25\n)\nself.used = true",
							displayPath = "Draws - Garuda",
							name = "Guide",
							uuid = "163f8d28-6c36-3c00-b703-942e9d637d52",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Draws - Garuda",
				mechanicTime = 1023,
				name = "[Draw] Ultimate Predation - Safe Rune",
				timeRange = true,
				timelineIndex = 123,
				timerEndOffset = 20,
				timerStartOffset = 7,
				uuid = "76680eda-e0c2-a582-b172-0adaa0be5daf",
				version = 2,
			},
		},
	},
	[125] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Ifrit",
				uuid = "c9b80151-2e2d-7ff5-8166-bb8fce98a838",
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
							actionLua = "local center = { x = 100, y = 0, z = 100 }\nlocal ifrit = TensorCore.getWokenEnt(1185)\nif not ifrit or not ifrit.pos then return end\n\nlocal safeHeading = TensorCore.getHeadingToTarget(center, ifrit.pos)\nlocal arrowDrawer = TensorCore.getCachedDrawer(0xAA00FF00, nil, 0xAA00FF00, 0xFFFFFFFF, 2)\narrowDrawer:addTimedArrow(5000, center.x, center.y, center.z,\n    safeHeading, 19, 0.5, nil, nil, nil, true)\nself.used = true",
							name = "Calculate safe spot and draw arrow",
							uuid = "247e11b0-02cf-0f61-921a-9738c4a949c2",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Draws - Ifrit",
				mechanicTime = 1038,
				name = "[Draw][LPDU][Ifrit] Crimson Cyclone Safe Spot 1038",
				timeRange = true,
				timelineIndex = 125,
				timerEndOffset = 2,
				timerStartOffset = -2.7999999523163,
				uuid = "5506deed-8a61-1692-b3ad-53cff37e55b9",
				version = 2,
			},
		},
	},
	[130] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Ifrit",
				uuid = "784cfe90-2fc4-6cec-bbf5-409e06ed540a",
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
							alertPriority = 2,
							alertTTS = true,
							alertText = " Wait for Feather rain",
							uuid = "88058d5c-aa30-28fa-abe3-32fb67e877ad",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1040,
				name = "[Raid Call][UWU] Wait for Feather Rain 1041.5",
				timelineIndex = 130,
				timerOffset = 1.5,
				uuid = "dd60ba94-9588-1ecb-ac80-2485505e45ca",
				version = 2,
			},
		},
	},
	[132] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Garuda",
				uuid = "e4aa805e-c073-8bce-aaa0-c6fd4d651462",
			},
			objectType = "folder",
		},
	},
	[133] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Ultima",
				uuid = "8880907c-ecc6-efbd-bef1-e3e4e55c5020",
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
							actionLua = "local role = GetCurrentRole()\nlocal player = TensorCore.mGetPlayer()\nif not player or not player.pos then self.used = true; return end\nlocal function point(x, z)\n    return { x = x, y = player.pos.y, z = z }\nend\nlocal stack = point(100.0, 90.5)\nlocal flag = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nlocal duration = (role == \"R1\" or role == \"R2\") and 10000 or 20000\nlocal drawer = TensorCore.getCachedDrawer(0xFF66FF99, 0xFF00AA66, 0xFF006644, 0xFFFFFFFF, 2, nil, flag)\nlocal route\nlocal function keepDraw(drawID)\n    if route and drawID then route.drawIds[#route.drawIds + 1] = drawID end\nend\nlocal function drawTarget(target)\n    local from = { x = player.pos.x, y = player.pos.y, z = player.pos.z }\n    local distance = TensorCore.getDistance2d(from, target)\n    if distance and distance > 0.25 then\n        local tipLength = math.min(1.5, distance * 0.35)\n        keepDraw(drawer:addTimedArrow(duration, from.x, from.y, from.z,\n            TensorCore.getHeadingToTarget(from, target),\n            math.max(0.1, distance - tipLength), 1.0, tipLength, 2.3, 0, false, flag))\n    end\n    keepDraw(drawer:addTimedCircle(duration, target.x, target.y, target.z, 0.9, 0, false, true, flag))\nend\nif role == \"R1\" or role == \"R2\" then\n    route = {\n        role = role, step = 1, drawIds = {}, stack = stack,\n        waypoints = role == \"R1\" and {\n            point(102.8, 116.319), point(108.873, 112.2),\n            point(112.047, 104.112), point(114.885, 93.614)\n        } or {\n            point(99.382, 115.679), point(94.4075, 113.298),\n            point(87.663, 105.455), point(88.0292, 93.4309)\n        }\n    }\n    data.uwu_ultima_eruption_route = route\n    drawTarget(route.waypoints[1])\nelse\n    drawTarget(stack)\nend\nself.used = true",
							name = "Draw - south baits and north stack",
							uuid = "b9824083-ecf4-61de-a220-85b7600a4819",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Draws - Ultima",
				mechanicTime = 1048,
				name = "[Draw] Ultima Eruption Bait Starts - R1/R2/Party",
				timelineIndex = 133,
				uuid = "db8451b9-a423-3f17-ab0c-86f9058e8b00",
				version = 2,
			},
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
							alertDuration = 6000,
							alertPriority = 2,
							alertText = "Move south for eruption baits",
							conditions = 
							{
								
								{
									"01c57ae9-4829-752d-a53f-5b2fdd6c8447",
									true,
								},
							},
							name = "Move south for eruption baits",
							uuid = "e170aa51-80af-6179-96c1-a7a3ac1af9bb",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local role = GetCurrentRole()\nreturn role == \"R1\" or role == \"R2\"",
							name = "R1/R2 only",
							uuid = "01c57ae9-4829-752d-a53f-5b2fdd6c8447",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ultima",
				mechanicTime = 1048,
				name = "[Alert] Move south for eruption baits - R1/R2",
				timelineIndex = 133,
				uuid = "c965968e-1c88-7af6-9967-5ddf29a60830",
				version = 2,
			},
		},
	},
	[134] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Ultima",
				uuid = "1870e566-b6ad-bb97-988b-e4da5b2a6e84",
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
							actionLua = "local route = data.uwu_ultima_eruption_route\nif not route or route.step >= 5 then self.used = true; return end\nif route.drawIds and Argus and Argus.deleteTimedShape then\n    for _, drawID in ipairs(route.drawIds) do\n        if drawID then pcall(Argus.deleteTimedShape, drawID) end\n    end\nend\nlocal player = TensorCore.mGetPlayer()\nif not player or not player.pos then self.used = true; return end\nlocal nextIndex = route.step + 1\nlocal target = nextIndex <= #route.waypoints and route.waypoints[nextIndex] or route.stack\nif not target then self.used = true; return end\nroute.step = nextIndex\nroute.drawIds = {}\nlocal duration = nextIndex == 5 and 15000 or 5000\nlocal from = { x = player.pos.x, y = player.pos.y, z = player.pos.z }\nlocal flag = Argus2.RenderFlags.FLAG_RENDER_OVERLAY\nlocal drawer = TensorCore.getCachedDrawer(0xFF66FF99, 0xFF00AA66, 0xFF006644, 0xFFFFFFFF, 2, nil, flag)\nlocal function keepDraw(drawID)\n    if drawID then route.drawIds[#route.drawIds + 1] = drawID end\nend\nlocal distance = TensorCore.getDistance2d(from, target)\nif distance and distance > 0.25 then\n    local tipLength = math.min(1.5, distance * 0.35)\n    keepDraw(drawer:addTimedArrow(duration, from.x, from.y, from.z, TensorCore.getHeadingToTarget(from, target),\n        math.max(0.1, distance - tipLength), 1.0, tipLength, 2.3, 0, false, flag))\nend\nkeepDraw(drawer:addTimedCircle(duration, target.x, target.y, target.z, 0.9, 0, false, true, flag))\nself.used = true",
							conditions = 
							{
								
								{
									"adcd1ffa-2f51-08b5-8f21-c2596be99dcc",
									true,
								},
							},
							name = "Advance to next eruption position",
							uuid = "780c04b3-7f1a-6573-a7d4-d7fb5bfd2204",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local route = data.uwu_ultima_eruption_route\nif not route or route.step >= 5 or not eventArgs or eventArgs.aoeID ~= 11098 then return false end\nlocal startTime = eventArgs.startTime\nif not startTime or route.lastAOEStartTime == startTime then return false end\nroute.lastAOEStartTime = startTime\nreturn true",
							name = "Eruption AOE created",
							uuid = "adcd1ffa-2f51-08b5-8f21-c2596be99dcc",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ultima",
				eventType = 18,
				loop = true,
				mechanicTime = 1059,
				name = "[Draw] Advance Ultima Eruption Baits - R1/R2",
				throttleTime = 150,
				timeRange = true,
				timelineIndex = 134,
				timerEndOffset = 5,
				timerStartOffset = -4,
				uuid = "84ee0ba5-9bd4-f0b5-b0af-c17e174ab336",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Movement - Eruption",
				uuid = "2d8f774c-5e81-ec40-b41f-adaa0e6b8921",
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
							actionLua = "TensorDrift_SlidecastForceHold = true\nself.used = true",
							conditions = 
							{
								
								{
									"1fda6efa-5609-e0af-9cf5-77454892b561",
									true,
								},
							},
							name = "Force Slidecast",
							uuid = "66662801-fe94-aefa-9862-428ee788937d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "TensorDrift_SlidecastForceHold = false\nself.used = true",
							conditions = 
							{
								
								{
									"1fda6efa-5609-e0af-9cf5-77454892b561",
									true,
								},
							},
							name = "End Slide",
							uuid = "6d54013e-7b10-27fa-9c5b-e739f5eb665a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local Roster = AnyoneCore.Roster\nif not Roster or not Roster.current() then return false end\nlocal slot = Roster.mySlot()\nreturn slot == \"R1\" or slot == \"R2\"",
							name = "Roster R1/R2",
							uuid = "1fda6efa-5609-e0af-9cf5-77454892b561",
							version = 3,
						},
					},
				},
				displayPath = "Movement - Eruption",
				mechanicTime = 1059,
				name = "[Drift] Eruption R1/R2 1059",
				throttleTime = 10500,
				timeRange = true,
				timelineIndex = 134,
				timerEndOffset = 7,
				timerStartOffset = -4,
				uuid = "952a58bc-f5af-9d5a-bce0-7521167b7950",
				version = 2,
			},
		},
	},
	[138] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Titan LPDU",
				uuid = "cf51225e-3553-4f5f-baa5-25eaea2e2d02",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Ultima",
				uuid = "31a25731-29c8-7b58-8b2c-86bd9365c337",
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
							displayPath = "",
							name = "Draws - Ultima",
							uuid = "a51b0737-5492-2e23-ad0c-c94cbc7ce12e",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player = TensorCore.mGetPlayer()\nif not player or not player.id or not player.pos or not eventArgs then\n    self.used = true\n    return\nend\n\nlocal partnerID\nif eventArgs.sourceEntityID == player.id then\n    partnerID = eventArgs.newTargetID\nelseif eventArgs.newTargetID == player.id then\n    partnerID = eventArgs.sourceEntityID\nelse\n    self.used = true\n    return\nend\n\nif not partnerID or partnerID == player.id then\n    self.used = true\n    return\nend\n\nlocal partner = TensorCore.mGetEntity(partnerID)\nif not partner or not partner.pos then\n    self.used = true\n    return\nend\n\nlocal drawer = TensorCore.getCachedDrawer(\n    0x6633CCFF,\n    0xCC33CCFF,\n    0xFFFFCC33,\n    0xFF000000,\n    3\n)\n\ndrawer:addTimedCircleOnEnt(\n    20000, player.id, 1.5,\n    0, false, true, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n)\ndrawer:addTimedCircleOnEnt(\n    20000, partner.id, 1.9,\n    0, false, true, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n)\n\nlocal sourcePos = player.pos\nlocal targetPos = partner.pos\nlocal distance = TensorCore.getDistance2d(sourcePos, targetPos)\nif distance and distance > 0.25 then\n    drawer:addTimedLine(\n        20000,\n        sourcePos.x, sourcePos.y, sourcePos.z,\n        targetPos.x, targetPos.y, targetPos.z,\n        1.0, 2.4, 0\n    )\nend\n\nAnyoneCore.addTimedWorldTextOnEnt(\n    20000,\n    \"FETTER PARTNER\",\n    partner.id,\n    0xFFFFCC33,\n    true,\n    1.2,\n    2.0\n)\n\nself.used = true",
							conditions = 
							{
								
								{
									"28261216-16d0-6701-bdb7-31c78dd00a85",
									true,
								},
							},
							displayPath = "Draws - Ultima",
							name = "Tethered Partner Marker",
							uuid = "a7ed8ef4-ec58-f7ea-a70b-532c554d202e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Ultima",
							uuid = "abaa7e04-2933-0eed-9f22-43622ec2a9ca",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.newTetherID == 9 and eventArgs.sourceEntityContentID == 0 and eventArgs.newTargetContentID == 0 and eventArgs.sourceEntityID ~= eventArgs.newTargetID",
							dequeueIfLuaFalse = true,
							displayPath = "Draws - Ultima",
							name = "Player Infernal Fetter",
							uuid = "28261216-16d0-6701-bdb7-31c78dd00a85",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ultima",
				eventType = 15,
				loop = true,
				mechanicTime = 1073,
				name = "[Draw][LPDU][Ultima] Infernal Fetters Partner Link",
				timeRange = true,
				timelineIndex = 138,
				timerEndOffset = 15,
				timerStartOffset = -10,
				uuid = "4db68ad3-d719-852d-8b9d-f00307551efc",
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
				name = "[Raid calls]",
				uuid = "fb66c9c8-b9e7-bd3e-a6b3-f522a33470b9",
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
							displayPath = "",
							name = "[Raid calls]",
							uuid = "80f944b7-a771-0bbe-8026-148b697bc7d4",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 2500,
							alertPriority = 3,
							alertTTS = true,
							alertText = "Stack together, tanks stay out",
							displayPath = "[Raid calls]",
							name = "[Raid Call][Ultima] Party Stack 1077",
							uuid = "1f2cb66d-5822-e407-9c44-0567ab13329b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "[Raid calls]",
				mechanicTime = 1079,
				name = "[Raid Call][Ultima] Party Stack 1077",
				timeRange = true,
				timelineIndex = 140,
				timerEndOffset = -1,
				timerStartOffset = -2,
				uuid = "97a6001e-0631-1534-9c5b-8d501746cca8",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Ultima",
				uuid = "e9467830-9e91-10c4-854b-3969e03a946d",
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
							displayPath = "",
							name = "Draws - Ultima",
							uuid = "0e81e168-f083-7173-ab51-3f8dab807a89",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local Roster = AnyoneCore and AnyoneCore.Roster; if not Roster or not Roster.current() or Roster.mySlot() == [=[T1]=] then self.used = true; return end; local alive, ultima = TensorCore.isEntityAlive(2137); if not alive or not ultima or not ultima.id then self.used = true; return end; local drawer = TensorCore.getCachedDrawer(0xCC33CCFF, 0xCC33CCFF, 0xFFFFCC33, 0xFF000000, 3); drawer:addTimedArrowOnEnt(4000, ultima.id, 6, 1.5, 3, 2.5, nil, 0, false, math.pi / 2, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY); self.used = true",
							conditions = 
							{
								
								{
									"a153712d-3951-ba75-adc9-6d4401d192f1",
									true,
								},
							},
							displayPath = "Draws - Ultima",
							name = "Right side of Ultima",
							uuid = "99024a78-6f28-848f-8519-812e87a78ab6",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Ultima",
							uuid = "6b61c63f-360e-0624-83fa-57188db271ba",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local Roster = AnyoneCore and AnyoneCore.Roster; if not Roster or not Roster.current() then return false end; local slot = Roster.mySlot(); return slot ~= nil and slot ~= [=[T1]=]",
							dequeueIfLuaFalse = true,
							displayPath = "Draws - Ultima",
							name = "Non-MT",
							uuid = "a153712d-3951-ba75-adc9-6d4401d192f1",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ultima",
				mechanicTime = 1079,
				name = "[Draw][LPDU][Ultima] Right Side Arrow 1080 - Non-MT",
				timeRange = true,
				timelineIndex = 140,
				timerEndOffset = 1.5,
				timerStartOffset = 1,
				uuid = "ab3cb06c-f6e0-bc55-a377-10933c27e43b",
				version = 2,
			},
		},
	},
	[141] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Guidance",
				uuid = "8f02c12a-e128-ec49-95d1-2bfbd17e6590",
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
							alertDuration = 6000,
							alertPriority = 3,
							alertScale = 0.85,
							alertTTS = true,
							alertText = "MT invulnerability ready: Provoke now",
							conditions = 
							{
								
								{
									"d2bf7770-72e8-b4a5-81eb-33ebf2c05f52",
									true,
								},
								
								{
									"40e867f6-42f8-b42d-adb6-b3e2f6c4d0cf",
									true,
								},
								
								{
									"a6b4e289-c3e9-e483-a3bf-9d29d4e2778f",
									true,
								},
								
								{
									"c22527c4-e48e-1ce0-b3f0-2d78d679ff35",
									true,
								},
								
								{
									"848dcc2c-5134-e9c4-b141-379a5a6aae1f",
									true,
								},
							},
							endIfUsed = true,
							uuid = "50fbcdee-5715-7cd3-a2a9-7d1f03ee6139",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player=TensorCore.mGetPlayer()\nif not player or not player.pos then self.used=true return end\nlocal duration=6000\nlocal Roster=AnyoneCore.Roster\nif not Roster or not Roster.isReady() then self.used=true return end\nlocal mt=Roster.entOf(\"T1\")\nif not mt or not mt.pos then self.used=true return end\nlocal dest={x=mt.pos.x,y=mt.pos.y,z=mt.pos.z}\nlocal distance=TensorCore.getDistance2d(player.pos,dest)\nif distance>0.3 then\n local tip=math.min(1.7,distance*0.35)\n local drawer=TensorCore.getCachedDrawer(0xFF33FF66,0xFF00CC44,0xFFFFFFFF,0xFF000000,4)\n drawer:addTimedArrow(duration,player.pos.x,player.pos.y,player.pos.z,TensorCore.getHeadingToTarget(player.pos,dest),math.max(0.1,distance-tip),1.2,tip,2.5,0,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nend\nAnyoneCore.addTimedWorldText(duration,\"SWAP POSITIONS WITH MT\",{x=dest.x,y=dest.y+1.1,z=dest.z},0xFF33FF66,true,1.1)\nself.used=true",
							conditions = 
							{
								
								{
									"d2bf7770-72e8-b4a5-81eb-33ebf2c05f52",
									true,
								},
								
								{
									"40e867f6-42f8-b42d-adb6-b3e2f6c4d0cf",
									true,
								},
								
								{
									"a6b4e289-c3e9-e483-a3bf-9d29d4e2778f",
									true,
								},
								
								{
									"c22527c4-e48e-1ce0-b3f0-2d78d679ff35",
									true,
								},
								
								{
									"848dcc2c-5134-e9c4-b141-379a5a6aae1f",
									false,
								},
							},
							endIfUsed = true,
							name = "Swap Positions - Arrow to MT",
							uuid = "5231bc07-7e56-935d-8dbb-b439eb708532",
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
							eventSpellID = 11129,
							name = "Spell 11129",
							uuid = "d2bf7770-72e8-b4a5-81eb-33ebf2c05f52",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local Roster = AnyoneCore.Roster\nif not Roster or not Roster.current() then return false end\nlocal slot = Roster.mySlot()\nif not slot then return false end\nreturn slot == \"T2\"",
							conditionType = 9,
							name = "Roster: T2",
							partyTargetType = "Off Tank",
							uuid = "40e867f6-42f8-b42d-adb6-b3e2f6c4d0cf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local Roster = AnyoneCore.Roster\nif not Roster or not Roster.current() then return false end\nlocal mtID = Roster.idOf(\"T1\")\nreturn mtID ~= nil and eventArgs.targetID == mtID",
							conditionType = 10,
							dequeueIfLuaFalse = true,
							inGroupTargetType = "Main Tank",
							name = "Roster: Viscous targets T1",
							partyTargetType = "Event Target",
							uuid = "a6b4e289-c3e9-e483-a3bf-9d29d4e2778f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							conditionType = 7,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							name = "MT PALADIN",
							partyTargetType = "Event Target",
							uuid = "c22527c4-e48e-1ce0-b3f0-2d78d679ff35",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 30,
							category = "Party",
							comparator = 2,
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "MT invulnerability ready",
							partyTargetType = "Event Target",
							uuid = "848dcc2c-5134-e9c4-b141-379a5a6aae1f",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Guidance",
				eventType = 2,
				mechanicTime = 1082,
				name = "[LPDU][OT] Later Viscous - MT PALADIN",
				timeRange = true,
				timelineIndex = 141,
				timerEndOffset = 2,
				timerStartOffset = -2,
				uuid = "1dcccf27-21ad-9923-a380-5246be75dac0",
				version = 2,
			},
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
							alertDuration = 6000,
							alertPriority = 3,
							alertScale = 0.85,
							alertTTS = true,
							alertText = "MT invulnerability ready: Provoke now",
							conditions = 
							{
								
								{
									"55d1caa4-33f6-07e9-a2fc-1d53fd74984e",
									true,
								},
								
								{
									"47b0aa5c-d1d1-8166-a511-24d33bb3d2a7",
									true,
								},
								
								{
									"67f20d16-21e8-fd3b-86d5-bd26093233a4",
									true,
								},
								
								{
									"ec03cb28-ccda-3714-8c7d-c930b3705896",
									true,
								},
								
								{
									"76ef1eb4-3a01-479a-8a93-0ed45377295f",
									true,
								},
							},
							endIfUsed = true,
							uuid = "ea5180df-8f22-dd9f-bedb-9377a06abdb7",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player=TensorCore.mGetPlayer()\nif not player or not player.pos then self.used=true return end\nlocal duration=6000\nlocal Roster=AnyoneCore.Roster\nif not Roster or not Roster.isReady() then self.used=true return end\nlocal mt=Roster.entOf(\"T1\")\nif not mt or not mt.pos then self.used=true return end\nlocal dest={x=mt.pos.x,y=mt.pos.y,z=mt.pos.z}\nlocal distance=TensorCore.getDistance2d(player.pos,dest)\nif distance>0.3 then\n local tip=math.min(1.7,distance*0.35)\n local drawer=TensorCore.getCachedDrawer(0xFF33FF66,0xFF00CC44,0xFFFFFFFF,0xFF000000,4)\n drawer:addTimedArrow(duration,player.pos.x,player.pos.y,player.pos.z,TensorCore.getHeadingToTarget(player.pos,dest),math.max(0.1,distance-tip),1.2,tip,2.5,0,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nend\nAnyoneCore.addTimedWorldText(duration,\"SWAP POSITIONS WITH MT\",{x=dest.x,y=dest.y+1.1,z=dest.z},0xFF33FF66,true,1.1)\nself.used=true",
							conditions = 
							{
								
								{
									"55d1caa4-33f6-07e9-a2fc-1d53fd74984e",
									true,
								},
								
								{
									"47b0aa5c-d1d1-8166-a511-24d33bb3d2a7",
									true,
								},
								
								{
									"67f20d16-21e8-fd3b-86d5-bd26093233a4",
									true,
								},
								
								{
									"ec03cb28-ccda-3714-8c7d-c930b3705896",
									true,
								},
								
								{
									"76ef1eb4-3a01-479a-8a93-0ed45377295f",
									false,
								},
							},
							endIfUsed = true,
							name = "Swap Positions - Arrow to MT",
							uuid = "ffb6069e-8c4a-c6c4-b26f-f98f021925ec",
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
							eventSpellID = 11129,
							name = "Spell 11129",
							uuid = "55d1caa4-33f6-07e9-a2fc-1d53fd74984e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local Roster = AnyoneCore.Roster\nif not Roster or not Roster.current() then return false end\nlocal slot = Roster.mySlot()\nif not slot then return false end\nreturn slot == \"T2\"",
							conditionType = 9,
							name = "Roster: T2",
							partyTargetType = "Off Tank",
							uuid = "47b0aa5c-d1d1-8166-a511-24d33bb3d2a7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local Roster = AnyoneCore.Roster\nif not Roster or not Roster.current() then return false end\nlocal mtID = Roster.idOf(\"T1\")\nreturn mtID ~= nil and eventArgs.targetID == mtID",
							conditionType = 10,
							dequeueIfLuaFalse = true,
							inGroupTargetType = "Main Tank",
							name = "Roster: Viscous targets T1",
							partyTargetType = "Event Target",
							uuid = "67f20d16-21e8-fd3b-86d5-bd26093233a4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							conditionType = 7,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							name = "MT WARRIOR",
							partyTargetType = "Event Target",
							uuid = "ec03cb28-ccda-3714-8c7d-c930b3705896",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 43,
							category = "Party",
							comparator = 2,
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "MT invulnerability ready",
							partyTargetType = "Event Target",
							uuid = "76ef1eb4-3a01-479a-8a93-0ed45377295f",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Guidance",
				eventType = 2,
				mechanicTime = 1082,
				name = "[LPDU][OT] Later Viscous - MT WARRIOR",
				timeRange = true,
				timelineIndex = 141,
				timerEndOffset = 2,
				timerStartOffset = -2,
				uuid = "0e0e603b-8556-6414-9702-642d44778c91",
				version = 2,
			},
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
							alertDuration = 6000,
							alertPriority = 3,
							alertScale = 0.85,
							alertTTS = true,
							alertText = "MT invulnerability ready: Provoke now",
							conditions = 
							{
								
								{
									"7f13415f-6ced-12a0-8e24-80a5859638f7",
									true,
								},
								
								{
									"cb762f6b-eded-1726-88a8-a31a3dfa7c72",
									true,
								},
								
								{
									"4b5cbf53-8600-2efe-b52e-2edba8fdfb70",
									true,
								},
								
								{
									"892f3527-f08d-7971-a428-7c6f5a91714b",
									true,
								},
								
								{
									"6cd39966-6994-e2a6-9d38-55880461b1cd",
									true,
								},
							},
							endIfUsed = true,
							uuid = "7fa1abdd-5a69-9ebb-82b5-2bf285e54537",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player=TensorCore.mGetPlayer()\nif not player or not player.pos then self.used=true return end\nlocal duration=6000\nlocal Roster=AnyoneCore.Roster\nif not Roster or not Roster.isReady() then self.used=true return end\nlocal mt=Roster.entOf(\"T1\")\nif not mt or not mt.pos then self.used=true return end\nlocal dest={x=mt.pos.x,y=mt.pos.y,z=mt.pos.z}\nlocal distance=TensorCore.getDistance2d(player.pos,dest)\nif distance>0.3 then\n local tip=math.min(1.7,distance*0.35)\n local drawer=TensorCore.getCachedDrawer(0xFF33FF66,0xFF00CC44,0xFFFFFFFF,0xFF000000,4)\n drawer:addTimedArrow(duration,player.pos.x,player.pos.y,player.pos.z,TensorCore.getHeadingToTarget(player.pos,dest),math.max(0.1,distance-tip),1.2,tip,2.5,0,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nend\nAnyoneCore.addTimedWorldText(duration,\"SWAP POSITIONS WITH MT\",{x=dest.x,y=dest.y+1.1,z=dest.z},0xFF33FF66,true,1.1)\nself.used=true",
							conditions = 
							{
								
								{
									"7f13415f-6ced-12a0-8e24-80a5859638f7",
									true,
								},
								
								{
									"cb762f6b-eded-1726-88a8-a31a3dfa7c72",
									true,
								},
								
								{
									"4b5cbf53-8600-2efe-b52e-2edba8fdfb70",
									true,
								},
								
								{
									"892f3527-f08d-7971-a428-7c6f5a91714b",
									true,
								},
								
								{
									"6cd39966-6994-e2a6-9d38-55880461b1cd",
									false,
								},
							},
							endIfUsed = true,
							name = "Swap Positions - Arrow to MT",
							uuid = "6a8134c2-4ccb-2446-93b4-cb901e57f587",
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
							eventSpellID = 11129,
							name = "Spell 11129",
							uuid = "7f13415f-6ced-12a0-8e24-80a5859638f7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local Roster = AnyoneCore.Roster\nif not Roster or not Roster.current() then return false end\nlocal slot = Roster.mySlot()\nif not slot then return false end\nreturn slot == \"T2\"",
							conditionType = 9,
							name = "Roster: T2",
							partyTargetType = "Off Tank",
							uuid = "cb762f6b-eded-1726-88a8-a31a3dfa7c72",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local Roster = AnyoneCore.Roster\nif not Roster or not Roster.current() then return false end\nlocal mtID = Roster.idOf(\"T1\")\nreturn mtID ~= nil and eventArgs.targetID == mtID",
							conditionType = 10,
							dequeueIfLuaFalse = true,
							inGroupTargetType = "Main Tank",
							name = "Roster: Viscous targets T1",
							partyTargetType = "Event Target",
							uuid = "4b5cbf53-8600-2efe-b52e-2edba8fdfb70",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							conditionType = 7,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							name = "MT DARKKNIGHT",
							partyTargetType = "Event Target",
							uuid = "892f3527-f08d-7971-a428-7c6f5a91714b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 3638,
							category = "Party",
							comparator = 2,
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "MT invulnerability ready",
							partyTargetType = "Event Target",
							uuid = "6cd39966-6994-e2a6-9d38-55880461b1cd",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Guidance",
				eventType = 2,
				mechanicTime = 1082,
				name = "[LPDU][OT] Later Viscous - MT DARKKNIGHT",
				timeRange = true,
				timelineIndex = 141,
				timerEndOffset = 2,
				timerStartOffset = -2,
				uuid = "7e7dc0eb-83a2-cf44-9a4c-e869fcd2aac7",
				version = 2,
			},
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
							alertDuration = 6000,
							alertPriority = 3,
							alertScale = 0.85,
							alertTTS = true,
							alertText = "MT invulnerability ready: Provoke now",
							conditions = 
							{
								
								{
									"1dfe63c7-9c4b-2bad-8787-322eb288c40d",
									true,
								},
								
								{
									"e8ab81fa-4d83-01bb-adad-954d77d6877b",
									true,
								},
								
								{
									"2fcc2c2d-7484-5eb8-903b-9b331ae763b9",
									true,
								},
								
								{
									"680d60bb-15e4-29a3-b692-0dc68612cf41",
									true,
								},
								
								{
									"e2368c3c-d9e8-3c9c-b328-127e3d104969",
									true,
								},
							},
							endIfUsed = true,
							uuid = "e297f08d-24f1-ac83-8c9f-c0e3159f102f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player=TensorCore.mGetPlayer()\nif not player or not player.pos then self.used=true return end\nlocal duration=6000\nlocal Roster=AnyoneCore.Roster\nif not Roster or not Roster.isReady() then self.used=true return end\nlocal mt=Roster.entOf(\"T1\")\nif not mt or not mt.pos then self.used=true return end\nlocal dest={x=mt.pos.x,y=mt.pos.y,z=mt.pos.z}\nlocal distance=TensorCore.getDistance2d(player.pos,dest)\nif distance>0.3 then\n local tip=math.min(1.7,distance*0.35)\n local drawer=TensorCore.getCachedDrawer(0xFF33FF66,0xFF00CC44,0xFFFFFFFF,0xFF000000,4)\n drawer:addTimedArrow(duration,player.pos.x,player.pos.y,player.pos.z,TensorCore.getHeadingToTarget(player.pos,dest),math.max(0.1,distance-tip),1.2,tip,2.5,0,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nend\nAnyoneCore.addTimedWorldText(duration,\"SWAP POSITIONS WITH MT\",{x=dest.x,y=dest.y+1.1,z=dest.z},0xFF33FF66,true,1.1)\nself.used=true",
							conditions = 
							{
								
								{
									"1dfe63c7-9c4b-2bad-8787-322eb288c40d",
									true,
								},
								
								{
									"e8ab81fa-4d83-01bb-adad-954d77d6877b",
									true,
								},
								
								{
									"2fcc2c2d-7484-5eb8-903b-9b331ae763b9",
									true,
								},
								
								{
									"680d60bb-15e4-29a3-b692-0dc68612cf41",
									true,
								},
								
								{
									"e2368c3c-d9e8-3c9c-b328-127e3d104969",
									false,
								},
							},
							endIfUsed = true,
							name = "Swap Positions - Arrow to MT",
							uuid = "49a02a3f-9f95-7423-8dbe-25162bad0588",
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
							eventSpellID = 11129,
							name = "Spell 11129",
							uuid = "1dfe63c7-9c4b-2bad-8787-322eb288c40d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local Roster = AnyoneCore.Roster\nif not Roster or not Roster.current() then return false end\nlocal slot = Roster.mySlot()\nif not slot then return false end\nreturn slot == \"T2\"",
							conditionType = 9,
							name = "Roster: T2",
							partyTargetType = "Off Tank",
							uuid = "e8ab81fa-4d83-01bb-adad-954d77d6877b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local Roster = AnyoneCore.Roster\nif not Roster or not Roster.current() then return false end\nlocal mtID = Roster.idOf(\"T1\")\nreturn mtID ~= nil and eventArgs.targetID == mtID",
							conditionType = 10,
							dequeueIfLuaFalse = true,
							inGroupTargetType = "Main Tank",
							name = "Roster: Viscous targets T1",
							partyTargetType = "Event Target",
							uuid = "2fcc2c2d-7484-5eb8-903b-9b331ae763b9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							conditionType = 7,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							name = "MT GUNBREAKER",
							partyTargetType = "Event Target",
							uuid = "680d60bb-15e4-29a3-b692-0dc68612cf41",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16152,
							category = "Party",
							comparator = 2,
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "MT invulnerability ready",
							partyTargetType = "Event Target",
							uuid = "e2368c3c-d9e8-3c9c-b328-127e3d104969",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Guidance",
				eventType = 2,
				mechanicTime = 1082,
				name = "[LPDU][OT] Later Viscous - MT GUNBREAKER",
				timeRange = true,
				timelineIndex = 141,
				timerEndOffset = 2,
				timerStartOffset = -2,
				uuid = "fda8e372-542e-5232-afb4-f8c917c90143",
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
				name = "[Raid calls]",
				uuid = "120f70ac-80ab-9e63-935d-f7515fdd8a30",
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
							displayPath = "",
							name = "[Raid calls]",
							uuid = "66b3c69c-8314-1568-b55b-d0c291105948",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 2500,
							alertPriority = 3,
							alertScale = 0.9,
							alertTTS = true,
							alertText = "STACK UNTIL FEATHER RAIN, THEN MOVE",
							displayPath = "[Raid calls]",
							name = "Stack until Feather Rain, then move",
							uuid = "c98c8cd4-daf6-c890-bea0-8691df59cbf2",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "[Raid calls]",
				mechanicTime = 1086,
				name = "[Raid Call][Ultima] Stack until Feather Rain then Move 1086",
				timeRange = true,
				timelineIndex = 142,
				timerEndOffset = 0.5,
				uuid = "0456bf3f-3bdf-f072-ad98-3c7490122bf3",
				version = 2,
			},
		},
	},
	[144] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Garuda",
				uuid = "ed3f9b49-d5d7-3927-b154-108720887911",
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
							displayPath = "",
							name = "Draws - Garuda",
							uuid = "e7d13c7c-b727-a793-a5f6-cd04383f54ea",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 2500,
							alertPriority = 3,
							alertScale = 0.9,
							alertTTS = true,
							alertText = "MOVE FOR FEATHER RAIN",
							conditions = 
							{
								
								{
									"e4ab4c95-78e2-dff3-bc4d-b46d0f4b1d35",
									true,
								},
							},
							displayPath = "Draws - Garuda",
							name = "[Alert] Feather Rain - Move 1091",
							uuid = "80f72f78-0ca9-104a-a527-5f9967ce0bda",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Garuda",
							uuid = "cff09bb5-4d69-9e8a-a505-4ada23873a63",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs and eventArgs.aoeID == 11085 and eventArgs.contentID == 1644 and eventArgs.friendly == false",
							dequeueIfLuaFalse = true,
							displayPath = "Draws - Garuda",
							name = "Feather Rain AOE",
							uuid = "e4ab4c95-78e2-dff3-bc4d-b46d0f4b1d35",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Garuda",
				eventType = 18,
				mechanicTime = 1091,
				name = "[Alert] Feather Rain - Move 1091",
				throttleTime = 1000,
				timeRange = true,
				timelineIndex = 144,
				timerEndOffset = 2,
				timerStartOffset = -2,
				uuid = "2a665ab7-7387-7322-870d-c74df5bf6c28",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Guidance",
				uuid = "ab340688-5144-19ab-99a0-430dfa53737d",
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
							displayPath = "",
							name = "LPDU Guidance",
							uuid = "938d57e4-14e2-5cb5-a8ff-874af7b3da93",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local Roster = AnyoneCore and AnyoneCore.Roster\nif Roster == nil or Roster.current() == nil or not Roster.isReady() then return end\n\nlocal localSlot = Roster.mySlot()\nif localSlot == nil or localSlot == \"T2\" then return end\n\nlocal otID = Roster.idOf(\"T2\")\nlocal ot = Roster.entOf(\"T2\")\nif not otID or not ot or not ot.pos then return end\n\nlocal pos = ot.pos\nArgus2.addTimedCircleFilled(\n    8000,\n    pos.x, pos.y, pos.z,\n    0.55, 32,\n    0x35FF0000, 0x35FF0000, nil, 0,\n    otID, 0xFFFF0000, 1.5,\n    0, 0.15, 2,\n    false, true, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n)\nself.used = true",
							displayPath = "LPDU Guidance",
							name = "Draw OT circle",
							uuid = "083f1190-4ed3-bb82-a32f-d778916adc1d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "LPDU Guidance",
				mechanicTime = 1091,
				name = "[Draw][LPDU] OT Circle 1090-1098",
				throttleTime = 8000,
				timeRange = true,
				timelineIndex = 144,
				timerEndOffset = 7,
				timerStartOffset = -1,
				uuid = "0c196adb-7f69-971c-9d67-7a3a5c584678",
				version = 2,
			},
		},
	},
	[146] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "[Raid calls]",
				uuid = "e254a7aa-b227-4293-9684-bbb98c0ee121",
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
							displayPath = "",
							name = "[Raid calls]",
							uuid = "49182d09-25e0-9573-8da9-048bba6091b9",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 2500,
							alertPriority = 3,
							alertTTS = true,
							alertText = "Move away from OT",
							conditions = 
							{
								
								{
									"6c179ad4-06f5-a030-9f66-c2a73ffb5bc3",
									true,
								},
							},
							displayPath = "[Raid calls]",
							name = "[Raid Call][Ultima] Homing Lasers - Move Away from OT",
							uuid = "955caf81-2ad0-7036-973f-536b07a9253f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "[Raid calls]",
							uuid = "a5a622dc-16f1-1c83-b248-8effb7472f21",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local Roster = AnyoneCore.Roster\nif not Roster or not Roster.current() then return false end\nlocal slot = Roster.mySlot()\nif not slot then return false end\nreturn slot ~= \"T2\"",
							conditionType = 9,
							displayPath = "[Raid calls]",
							name = "Roster: except T2",
							partyTargetType = "Off Tank",
							uuid = "6c179ad4-06f5-a030-9f66-c2a73ffb5bc3",
							version = 3,
						},
					},
				},
				displayPath = "[Raid calls]",
				mechanicTime = 1093,
				name = "[Raid Call][Ultima] Homing Lasers - Move Away from OT",
				timeRange = true,
				timelineIndex = 146,
				timerStartOffset = -1,
				uuid = "2aac705d-86e6-7565-a463-75d55a577b5a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Guidance",
				uuid = "8e6fbb9d-b24a-e92e-be0b-c01b62329366",
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
							alertPriority = 3,
							alertScale = 0.85,
							alertTTS = true,
							alertText = "Homing Lasers: stay away from the party",
							conditions = 
							{
								
								{
									"db92d3c4-b71d-d131-be4a-67c82c7bbf6a",
									true,
								},
							},
							uuid = "35568883-3951-0294-9fb8-967392f8af77",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local Roster = AnyoneCore.Roster\nif not Roster or not Roster.current() then return false end\nlocal slot = Roster.mySlot()\nif not slot then return false end\nreturn slot == \"T2\"",
							conditionType = 9,
							name = "Roster: T2",
							partyTargetType = "Off Tank",
							uuid = "db92d3c4-b71d-d131-be4a-67c82c7bbf6a",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Guidance",
				mechanicTime = 1093,
				name = "[LPDU][OT] Homing Lasers - Stay Away",
				throttleTime = 5000,
				timeRange = true,
				timelineIndex = 146,
				timerEndOffset = -3.5,
				timerStartOffset = -4.5,
				uuid = "ea42f50d-0f90-c859-b10d-a7ef9c58eb26",
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
				name = "Draws - Garuda",
				uuid = "bd494a44-c9fb-8b54-ad0f-b62c2e030aaf",
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
							displayPath = "",
							name = "Draws - Garuda",
							uuid = "5bb34c78-4f57-2058-81c2-dab79f023996",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 2500,
							alertPriority = 3,
							alertScale = 0.9,
							alertTTS = true,
							alertText = "MOVE FOR FEATHER RAIN",
							conditions = 
							{
								
								{
									"3b870e48-d472-1303-95c7-21e22361edee",
									true,
								},
							},
							displayPath = "Draws - Garuda",
							name = "[Alert] Feather Rain - Move 1095",
							uuid = "60dffc0d-8b52-0810-9756-c59cea2099cc",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Garuda",
							uuid = "9d738aa9-03d3-8e64-bb8c-e74a82c8a465",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs and eventArgs.aoeID == 11085 and eventArgs.contentID == 1644 and eventArgs.friendly == false",
							dequeueIfLuaFalse = true,
							displayPath = "Draws - Garuda",
							name = "Feather Rain AOE",
							uuid = "3b870e48-d472-1303-95c7-21e22361edee",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Garuda",
				eventType = 18,
				mechanicTime = 1095,
				name = "[Alert] Feather Rain - Move 1095",
				throttleTime = 1000,
				timeRange = true,
				timelineIndex = 147,
				timerEndOffset = 2,
				timerStartOffset = -2,
				uuid = "d30b85b5-e340-3d1e-bd80-5d691f000785",
				version = 2,
			},
		},
	},
	[149] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Ultima",
				uuid = "3f64f8f1-1b5f-b1d7-af27-56e43c867957",
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
							displayPath = "",
							name = "[Raid calls]",
							uuid = "12ae379b-1f48-41a7-918f-6839ff2fdef4",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 2500,
							alertPriority = 3,
							alertTTS = true,
							alertText = "Stack southwest of Ultima",
							conditions = 
							{
								
								{
									"ff3df666-fade-605f-8c93-17f371f3e0b2",
									true,
								},
							},
							displayPath = "[Raid calls]",
							name = "[Raid Call][Ultima] Stack SW after Teleport",
							uuid = "4ae0bf0b-4b28-ae0c-9cb9-0e5d44a8c8d7",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Ultima",
							uuid = "193965c9-50a5-9584-a38a-b56baa3e68a9",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local entityID = eventArgs and eventArgs.entityID\nlocal boss = entityID and TensorCore.mGetEntity(entityID)\nif not boss or not boss.pos then\n    self.used = true\n    return\nend\n\nlocal pos = boss.pos\nlocal stackX = pos.x - 4.5\nlocal stackZ = pos.z + 4.5\n\nArgus2.addTimedCircleFilled(\n    8000, stackX, pos.y, stackZ, 2.5, 48,\n    0x6600FF00, 0x6600FF00, nil, 0, nil,\n    0xCC00FF00, 1.5, 0, 0, 0, false, true,\n    Argus2.RenderFlags.FLAG_WARP_TERRAIN, nil, 0, 0\n)\n\nself.used = true",
							conditions = 
							{
								
								{
									"ff3df666-fade-605f-8c93-17f371f3e0b2",
									true,
								},
							},
							displayPath = "Draws - Ultima",
							name = "Dynamic SW stack marker",
							uuid = "ede7fab1-ff94-03b9-b39c-27bb3a50d3bc",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Ultima",
							uuid = "f2834b69-1ca8-e4fc-a4b7-75e102913b86",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs and eventArgs.entityContentID == 2137 and eventArgs.wasVisible == false and eventArgs.isVisible == true",
							dequeueIfLuaFalse = true,
							displayPath = "Draws - Ultima",
							name = "Ultima reappears",
							uuid = "ff3df666-fade-605f-8c93-17f371f3e0b2",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ultima",
				enabled = false,
				eventType = 22,
				mechanicTime = 1105,
				name = "[Draw][LPDU][Ultima] Stack SW after Teleport",
				timeRange = true,
				timelineIndex = 149,
				timerEndOffset = 3,
				timerStartOffset = 1,
				uuid = "7ae528c8-a38d-0c99-9e3a-9926bb5ccd6c",
				version = 2,
			},
		},
	},
	[151] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Titan LPDU",
				uuid = "aec02ddb-19c3-3dfe-9606-4c37d97ec6cf",
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
							displayPath = "",
							name = "Draws - Titan LPDU",
							uuid = "d4156fdb-7aeb-0eec-b2bf-472d0c08c230",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 2500,
							alertPriority = 3,
							alertScale = 0.89999997615814,
							alertTTS = true,
							alertText = "DODGE WEIGHT OF THE LAND",
							conditions = 
							{
								
								{
									"bad1e9a1-cbd0-bb9b-bfe7-1ce8d7bb6de0",
									true,
								},
							},
							displayPath = "Draws - Titan LPDU",
							name = "[Alert] Weight of the Land - Dodge 1112",
							uuid = "2751a225-40dc-7375-953b-90d054133b42",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							displayPath = "Draws - Titan LPDU",
							name = "[Draw] Titan Weight of the Land - Right",
							uuid = "80a33fde-d2d2-8f02-97ce-8cc25ef672d0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Titan LPDU",
							uuid = "3537d4d3-d96b-23d1-bbf7-4000eaf70de8",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs and eventArgs.aoeID == 11109 and eventArgs.contentID == 1801 and eventArgs.friendly == false",
							dequeueIfLuaFalse = true,
							displayPath = "Draws - Titan LPDU",
							name = "Weight of the Land AOE",
							uuid = "bad1e9a1-cbd0-bb9b-bfe7-1ce8d7bb6de0",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Titan LPDU",
				eventType = 18,
				mechanicTime = 1112,
				name = "[Alert] Weight of the Land - Dodge 1112",
				throttleTime = 1000,
				timeRange = true,
				timelineIndex = 151,
				timerEndOffset = -2.5,
				timerStartOffset = -3.5,
				uuid = "5f98b4d6-4076-3124-bb9c-355a3d9c15b7",
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
				name = "Draws - Titan LPDU",
				uuid = "16629fe3-88d0-36a3-9cec-849ee5fe609f",
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
							displayPath = "",
							name = "Draws - Titan LPDU",
							uuid = "b11068e4-cdcf-e94d-bd64-c6b849ddcfd4",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 2500,
							alertPriority = 3,
							alertScale = 0.9,
							alertTTS = true,
							alertText = "DODGE WEIGHT OF THE LAND",
							conditions = 
							{
								
								{
									"002ab395-e34e-467f-854e-cb0754dc00c2",
									true,
								},
							},
							displayPath = "Draws - Titan LPDU",
							name = "[Alert] Weight of the Land - Dodge 1115",
							uuid = "4fef1313-4a70-7681-b617-2bc17b3d85b5",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Titan LPDU",
							uuid = "0df0df5e-9733-1a7a-9143-d02e7aefd47a",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs and eventArgs.aoeID == 11109 and eventArgs.contentID == 1801 and eventArgs.friendly == false",
							dequeueIfLuaFalse = true,
							displayPath = "Draws - Titan LPDU",
							name = "Weight of the Land AOE",
							uuid = "002ab395-e34e-467f-854e-cb0754dc00c2",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Titan LPDU",
				eventType = 18,
				mechanicTime = 1115,
				name = "[Alert] Weight of the Land - Dodge 1115",
				throttleTime = 1000,
				timeRange = true,
				timelineIndex = 153,
				timerEndOffset = -2.5,
				timerStartOffset = -3.5,
				uuid = "9b89ba5b-0778-55a8-91d1-7c3ff9ffbe53",
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
				name = "Draws - Titan LPDU",
				uuid = "1eb43b72-e27b-2b7b-9b2c-308e57068cfe",
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
							displayPath = "",
							name = "Draws - Titan LPDU",
							uuid = "de673b09-86ca-4578-bb89-73d760f09210",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 2500,
							alertPriority = 3,
							alertScale = 0.9,
							alertTTS = true,
							alertText = "DODGE WEIGHT OF THE LAND",
							conditions = 
							{
								
								{
									"a468b844-de64-f918-9bcb-1dd8c29b0721",
									true,
								},
							},
							displayPath = "Draws - Titan LPDU",
							name = "[Alert] Weight of the Land - Dodge 1118",
							uuid = "e96ce3e6-4eff-f144-b8bf-993904be3e41",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Titan LPDU",
							uuid = "fbde08c0-21d2-210d-a185-390468aa7d27",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs and eventArgs.aoeID == 11109 and eventArgs.contentID == 1801 and eventArgs.friendly == false",
							dequeueIfLuaFalse = true,
							displayPath = "Draws - Titan LPDU",
							name = "Weight of the Land AOE",
							uuid = "a468b844-de64-f918-9bcb-1dd8c29b0721",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Titan LPDU",
				eventType = 18,
				mechanicTime = 1118,
				name = "[Alert] Weight of the Land - Dodge 1118",
				throttleTime = 1000,
				timeRange = true,
				timelineIndex = 157,
				timerEndOffset = -2.5,
				timerStartOffset = -3.5,
				uuid = "eedcc1de-c0df-2e1a-a509-3e36ab1ebb39",
				version = 2,
			},
		},
	},
	[159] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Garuda",
				uuid = "9914dacb-09af-356f-92e0-f9cff76b2b62",
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
							displayPath = "",
							name = "Draws - Garuda",
							uuid = "b9a10670-9378-67e9-83ae-7b1275e51990",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 2500,
							alertPriority = 3,
							alertScale = 0.9,
							alertTTS = true,
							alertText = "MOVE FOR FEATHER RAIN",
							conditions = 
							{
								
								{
									"b6e2ab00-69ed-f90f-8e18-c7fc1805d114",
									true,
								},
							},
							displayPath = "Draws - Garuda",
							name = "[Alert] Feather Rain - Move 1122",
							uuid = "1423fe9a-763b-967b-a251-edce2f63149d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Garuda",
							uuid = "dc9439cc-3dad-6e12-a9d7-1b1b59fff1f5",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs and eventArgs.aoeID == 11085 and eventArgs.contentID == 1644 and eventArgs.friendly == false",
							dequeueIfLuaFalse = true,
							displayPath = "Draws - Garuda",
							name = "Feather Rain AOE",
							uuid = "b6e2ab00-69ed-f90f-8e18-c7fc1805d114",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Garuda",
				eventType = 18,
				mechanicTime = 1122,
				name = "[Alert] Feather Rain - Move 1122",
				throttleTime = 1000,
				timeRange = true,
				timelineIndex = 159,
				timerEndOffset = 2,
				timerStartOffset = -2,
				uuid = "61bf5409-6d3e-2a0a-b1b9-5b30a2afa081",
				version = 2,
			},
		},
	},
	[161] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Ifrit",
				uuid = "5bb56c1f-6c64-f7e6-94d0-0685e18c287f",
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
							displayPath = "",
							name = "Draws - Ifrit",
							uuid = "cab00888-c050-9d0c-84b4-44d89f870870",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player=TensorCore.mGetPlayer()\nif not player or not player.pos then self.used=true return end\nlocal dest={x=100,y=player.pos.y,z=80}\nlocal distance=TensorCore.getDistance2d(player.pos,dest)\nif distance>0.2 then\n local tip=math.min(2.5,distance*0.4)\n local drawer=TensorCore.getCachedDrawer(0xFFFFD080,0xFFFFA000,0xFFFFFFFF,0xFF000000,4)\n drawer:addTimedArrow(7000,player.pos.x,player.pos.y,player.pos.z,TensorCore.getHeadingToTarget(player.pos,dest),math.max(0.1,distance-tip),1.4,tip,3.0,0,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nend\nAnyoneCore.addTimedWorldText(7000,\"SEARING: SOUTH WALL\",{x=dest.x,y=dest.y+1.2,z=dest.z},0xFFFFD080,true,1.15)\nself.used=true",
							conditions = 
							{
								
								{
									"aa387e83-2ce7-daca-b0e1-a8c6b45cbab4",
									true,
								},
							},
							displayPath = "Draws - Ifrit",
							name = "South Wall Arrow",
							uuid = "93381c1c-c9df-ea41-a936-42bf043b6d7d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 2500,
							alertPriority = 3,
							alertScale = 0.9,
							alertTTS = true,
							alertText = "SEARING WIND: SOUTH WALL",
							conditions = 
							{
								
								{
									"aa387e83-2ce7-daca-b0e1-a8c6b45cbab4",
									true,
								},
							},
							name = "sw161al",
							uuid = "624c37de-914e-8ea5-a12f-1a11f37bc3a1",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local player=TensorCore.mGetPlayer() return eventArgs.buffID==1578 and eventArgs.ownerContentID==1185 and player and player.id==eventArgs.entityID",
							dequeueIfLuaFalse = true,
							name = "Late Searing Wind Target",
							uuid = "aa387e83-2ce7-daca-b0e1-a8c6b45cbab4",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ifrit",
				eventType = 8,
				mechanicTime = 1124,
				name = "[Draw][LPDU][Ifrit] Late Searing Wind 1124",
				timeRange = true,
				timelineIndex = 161,
				timerEndOffset = 5,
				timerStartOffset = -1,
				uuid = "8a8af8ab-a5fd-85ec-9623-e73e66466502",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Ultima",
				uuid = "2921fa55-ad61-0fe1-86fc-c008547010d8",
			},
			objectType = "folder",
		},
	},
	[162] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Ifrit",
				uuid = "c8eaa061-e6d5-1b59-ad66-27bea5b2ec07",
			},
			objectType = "folder",
		},
	},
	[164] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Ifrit",
				uuid = "c8d41f01-ee1f-e38b-b045-a3f5fd2b906b",
			},
			objectType = "folder",
		},
	},
	[166] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Ifrit",
				uuid = "a4d743d7-636b-f3e5-b15b-227393047a7a",
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
							displayPath = "",
							name = "Draws - Ifrit",
							uuid = "d47c002d-3bc7-b120-b3be-c25db66bd3bf",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player=TensorCore.mGetPlayer()\nif not player or not player.pos then self.used=true return end\nlocal dest={x=100,y=player.pos.y,z=80}\nlocal distance=TensorCore.getDistance2d(player.pos,dest)\nif distance>0.2 then\n local tip=math.min(2.5,distance*0.4)\n local drawer=TensorCore.getCachedDrawer(0xFFFFD080,0xFFFFA000,0xFFFFFFFF,0xFF000000,4)\n drawer:addTimedArrow(7000,player.pos.x,player.pos.y,player.pos.z,TensorCore.getHeadingToTarget(player.pos,dest),math.max(0.1,distance-tip),1.4,tip,3.0,0,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nend\nAnyoneCore.addTimedWorldText(7000,\"SEARING: SOUTH WALL\",{x=dest.x,y=dest.y+1.2,z=dest.z},0xFFFFD080,true,1.15)\nself.used=true",
							conditions = 
							{
								
								{
									"5235dae1-2fb3-a91c-bb46-5dc6e9d3e8c1",
									true,
								},
							},
							displayPath = "Draws - Ifrit",
							name = "South Wall Arrow",
							uuid = "493b2f83-3ca7-8c4b-b996-de3484b09f52",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 2500,
							alertPriority = 3,
							alertScale = 0.9,
							alertTTS = true,
							alertText = "SEARING WIND: SOUTH WALL",
							conditions = 
							{
								
								{
									"5235dae1-2fb3-a91c-bb46-5dc6e9d3e8c1",
									true,
								},
							},
							name = "sw166al",
							uuid = "f94559a7-de23-b8bf-a5ea-c1a9233e329f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local player=TensorCore.mGetPlayer() return eventArgs.buffID==1578 and eventArgs.ownerContentID==1185 and player and player.id==eventArgs.entityID",
							dequeueIfLuaFalse = true,
							name = "Late Searing Wind Target",
							uuid = "5235dae1-2fb3-a91c-bb46-5dc6e9d3e8c1",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ifrit",
				eventType = 8,
				mechanicTime = 1130,
				name = "[Draw][LPDU][Ifrit] Late Searing Wind 1130",
				timeRange = true,
				timelineIndex = 166,
				timerEndOffset = 5,
				timerStartOffset = -1,
				uuid = "2c3c8038-0534-11c6-9b56-4815fcbfa130",
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
				name = "Draws - Ifrit",
				uuid = "66cead85-dcde-81ca-957f-9a87c73f2a2d",
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
							displayPath = "",
							name = "Draws - Ifrit",
							uuid = "ea7f11c4-f2a5-511d-9243-86b4f08252c4",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 2500,
							alertPriority = 3,
							alertScale = 0.9,
							alertTTS = true,
							alertText = "SEARING WIND: SOUTH WALL",
							conditions = 
							{
								
								{
									"21ab9d50-7d84-0ab2-9943-30fca79d9088",
									true,
								},
							},
							name = "sw171al",
							uuid = "69d29a65-df3c-a930-8cf1-587639dec4b8",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player=TensorCore.mGetPlayer()\nif not player or not player.pos or not eventArgs or type(eventArgs.buffDuration)~=\"number\" then self.used=true return end\nlocal edge={x=100,y=player.pos.y,z=114}\nlocal distance=TensorCore.getDistance2d(player.pos,edge)\nif distance>0.2 then\n local tip=math.min(2.0,distance*0.35)\n local duration=math.max(500,math.floor(eventArgs.buffDuration*1000)+250)\n local drawer=TensorCore.getCachedDrawer(0xFF38FF54,0xFF28D940,0xFFFFFFFF,0xFF000000,3)\n drawer:addTimedArrow(duration,player.pos.x,player.pos.y,player.pos.z,TensorCore.getHeadingToTarget(player.pos,edge),math.max(0.1,distance-tip),1.2,tip,2.6,0,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nend\nself.used=true",
							conditions = 
							{
								
								{
									"21ab9d50-7d84-0ab2-9943-30fca79d9088",
									true,
								},
							},
							name = "Searing Wind - Hold South Edge",
							uuid = "91c4c7ef-5c30-671d-9087-c4ed11fbbbf2",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local player=TensorCore.mGetPlayer() return eventArgs.buffID==1578 and eventArgs.ownerContentID==1185 and player and player.id==eventArgs.entityID",
							dequeueIfLuaFalse = true,
							name = "Late Searing Wind Target",
							uuid = "21ab9d50-7d84-0ab2-9943-30fca79d9088",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ifrit",
				eventType = 8,
				mechanicTime = 1137,
				name = "[Draw][LPDU][Ifrit] Late Searing Wind 1137",
				timeRange = true,
				timelineIndex = 171,
				timerEndOffset = 5,
				timerStartOffset = -1,
				uuid = "21399574-ec91-94e9-a1bc-b04307087212",
				version = 2,
			},
		},
	},
	[173] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Garuda",
				uuid = "e3080a67-a0a1-df5b-bcbc-4d56c9adea71",
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
							displayPath = "",
							name = "Draws - Garuda",
							uuid = "859949b9-04c6-19da-9c3d-5a2439528133",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 2500,
							alertPriority = 3,
							alertScale = 0.9,
							alertTTS = true,
							alertText = "MOVE FOR FEATHER RAIN",
							conditions = 
							{
								
								{
									"cd2c4f64-65a8-4bd2-8db3-8be615049d6e",
									true,
								},
							},
							displayPath = "Draws - Garuda",
							name = "[Alert] Feather Rain - Move 1141",
							uuid = "0c968a88-0091-0c10-98be-198853681098",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Garuda",
							uuid = "3d8b50f6-3fab-3283-9522-dfbf44036a66",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs and eventArgs.aoeID == 11085 and eventArgs.contentID == 1644 and eventArgs.friendly == false",
							dequeueIfLuaFalse = true,
							name = "Feather Rain AOE",
							uuid = "cd2c4f64-65a8-4bd2-8db3-8be615049d6e",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Garuda",
				eventType = 18,
				mechanicTime = 1141,
				name = "[Alert] Feather Rain - Move 1141",
				throttleTime = 1000,
				timeRange = true,
				timelineIndex = 173,
				timerEndOffset = 2,
				timerStartOffset = -3,
				uuid = "8a261bc1-1401-9b35-abd5-d80e9d1bfd1e",
				version = 2,
			},
		},
	},
	[175] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Ifrit",
				uuid = "3188baf6-c360-3262-9ed6-03c4b65c942a",
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
							displayPath = "",
							name = "Draws - Ifrit",
							uuid = "825a8412-4797-8e5d-b460-8c737782a5bb",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player=TensorCore.mGetPlayer()\nif not player or not player.pos then self.used=true return end\nlocal dest={x=100,y=player.pos.y,z=80}\nlocal distance=TensorCore.getDistance2d(player.pos,dest)\nif distance>0.2 then\n local tip=math.min(2.5,distance*0.4)\n local drawer=TensorCore.getCachedDrawer(0xFFFFD080,0xFFFFA000,0xFFFFFFFF,0xFF000000,4)\n drawer:addTimedArrow(7000,player.pos.x,player.pos.y,player.pos.z,TensorCore.getHeadingToTarget(player.pos,dest),math.max(0.1,distance-tip),1.4,tip,3.0,0,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nend\nAnyoneCore.addTimedWorldText(7000,\"SEARING: SOUTH WALL\",{x=dest.x,y=dest.y+1.2,z=dest.z},0xFFFFD080,true,1.15)\nself.used=true",
							conditions = 
							{
								
								{
									"5f57b02b-46de-9632-8807-2f49f82181e6",
									true,
								},
							},
							displayPath = "Draws - Ifrit",
							name = "South Wall Arrow",
							uuid = "ca80a556-0f07-9568-8be7-d397515e56fe",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 2500,
							alertPriority = 3,
							alertScale = 0.9,
							alertTTS = true,
							alertText = "SEARING WIND: SOUTH WALL",
							conditions = 
							{
								
								{
									"5f57b02b-46de-9632-8807-2f49f82181e6",
									true,
								},
							},
							name = "sw175al",
							uuid = "78049cd5-7a82-7d35-a82b-555cb1f31d62",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local player=TensorCore.mGetPlayer() return eventArgs.buffID==1578 and eventArgs.ownerContentID==1185 and player and player.id==eventArgs.entityID",
							dequeueIfLuaFalse = true,
							name = "Late Searing Wind Target",
							uuid = "5f57b02b-46de-9632-8807-2f49f82181e6",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ifrit",
				eventType = 8,
				mechanicTime = 1144,
				name = "[Draw][LPDU][Ifrit] Late Searing Wind 1144",
				timeRange = true,
				timelineIndex = 175,
				timerEndOffset = 5,
				timerStartOffset = -1,
				uuid = "0f6cf4f2-a6a9-4e4f-9288-2a226deb3901",
				version = 2,
			},
		},
	},
	[177] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Ifrit",
				uuid = "dff598cb-1453-4c48-9eb0-260761835a50",
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
							displayPath = "",
							name = "Draws - Ifrit",
							uuid = "b25c9393-c9cf-555a-8a4c-c24bcd12dcd3",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player=TensorCore.mGetPlayer()\nif not player or not player.pos then self.used=true return end\nlocal dest={x=100,y=player.pos.y,z=80}\nlocal distance=TensorCore.getDistance2d(player.pos,dest)\nif distance>0.2 then\n local tip=math.min(2.5,distance*0.4)\n local drawer=TensorCore.getCachedDrawer(0xFFFFD080,0xFFFFA000,0xFFFFFFFF,0xFF000000,4)\n drawer:addTimedArrow(7000,player.pos.x,player.pos.y,player.pos.z,TensorCore.getHeadingToTarget(player.pos,dest),math.max(0.1,distance-tip),1.4,tip,3.0,0,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nend\nAnyoneCore.addTimedWorldText(7000,\"SEARING: SOUTH WALL\",{x=dest.x,y=dest.y+1.2,z=dest.z},0xFFFFD080,true,1.15)\nself.used=true",
							conditions = 
							{
								
								{
									"99645b55-c5cf-1109-a2f0-05a3dfd7dd1d",
									true,
								},
							},
							displayPath = "Draws - Ifrit",
							name = "South Wall Arrow",
							uuid = "738f1f0c-b718-a2c7-8034-cc0833406c49",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 2500,
							alertPriority = 3,
							alertScale = 0.9,
							alertTTS = true,
							alertText = "SEARING WIND: SOUTH WALL",
							conditions = 
							{
								
								{
									"99645b55-c5cf-1109-a2f0-05a3dfd7dd1d",
									true,
								},
							},
							name = "sw177al",
							uuid = "8c0e3de8-9b9c-bd9a-a117-cdfe4eae9db8",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local player=TensorCore.mGetPlayer() return eventArgs.buffID==1578 and eventArgs.ownerContentID==1185 and player and player.id==eventArgs.entityID",
							dequeueIfLuaFalse = true,
							name = "Late Searing Wind Target",
							uuid = "99645b55-c5cf-1109-a2f0-05a3dfd7dd1d",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ifrit",
				eventType = 8,
				mechanicTime = 1150,
				name = "[Draw][LPDU][Ifrit] Late Searing Wind 1150",
				timeRange = true,
				timelineIndex = 177,
				timerEndOffset = 5,
				timerStartOffset = -1,
				uuid = "d1105d8f-f502-b7b2-ba2b-cbf670836fdf",
				version = 2,
			},
		},
	},
	[188] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Ultima",
				uuid = "dedfd89d-2315-0b70-b490-b61bf57fa4de",
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
							displayPath = "",
							name = "Draws - Ultima",
							uuid = "3cb0de1c-47c7-9e13-bd0f-f2ac94976a16",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player=TensorCore.mGetPlayer()\nif not player or not player.pos then self.used=true return end\nif not AnyoneCore.Roster.current() then self.used=true return end\nlocal slot=AnyoneCore.Roster.mySlot()\nlocal points={T1={95,108},T2={98,110},M1={83,100},M2={82,96},R1={83,91},R2={91,83},H1={96,82},H2={100,83}}\nlocal p=points[slot]\nif not p then self.used=true return end\nlocal dest={x=p[1],y=player.pos.y,z=p[2]}\nlocal distance=TensorCore.getDistance2d(player.pos,dest)\nif distance>0.2 then\n local tip=math.min(2.0,distance*0.35)\n local drawer=TensorCore.getCachedDrawer(0xFFB6E0FF,0xFF55AAFF,0xFFFFFFFF,0xFF000000,4)\n drawer:addTimedArrow(6000,player.pos.x,player.pos.y,player.pos.z,TensorCore.getHeadingToTarget(player.pos,dest),math.max(0.1,distance-tip),1.4,tip,3.0,0,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nend\nlocal label=(slot==\"T1\" or slot==\"T2\") and \"TANK: FRONT OF TITAN\" or \"SPREAD IN FRONT OF GARUDA\"\nAnyoneCore.addTimedWorldText(6000,label,{x=dest.x,y=dest.y+1.2,z=dest.z},0xFFB6E0FF,true,1.1)\nself.used=true",
							conditions = 
							{
								
								{
									"6f521ab5-8a33-173d-93a0-9880d8cd03de",
									true,
								},
							},
							displayPath = "Draws - Ultima",
							name = "Guide to Starting Positions",
							uuid = "793a0096-ad8e-c0ab-8246-e8df5b37e8e6",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityContentID==2137 and eventArgs.spellID==11597",
							dequeueIfLuaFalse = true,
							name = "Suppression Channel",
							uuid = "6f521ab5-8a33-173d-93a0-9880d8cd03de",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ultima",
				eventType = 3,
				mechanicTime = 1195,
				name = "[Draw][LPDU][Ultima] Suppression Opening Positions",
				timeRange = true,
				timelineIndex = 188,
				timerEndOffset = -565,
				timerStartOffset = -570,
				uuid = "d7c5a6a9-2aeb-2d55-a3f3-6c833ab256ad",
				version = 2,
			},
		},
	},
	[189] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Ultima",
				uuid = "2a0bf502-ee77-8a59-9b60-23b6817e13e1",
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
							displayPath = "",
							name = "Draws - Ultima",
							uuid = "67b9ab47-1c68-b552-a624-6f398221af8d",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "if data.uwu_sup_edge_drawn then self.used=true return end\ndata.uwu_sup_edge_drawn=true\nlocal player=TensorCore.mGetPlayer()\nif not player or not player.pos then self.used=true return end\nlocal dx=player.pos.x-100\nlocal dz=player.pos.z-100\nlocal r=math.sqrt(dx*dx+dz*dz)\nif r<0.1 then dx=0;dz=-1;r=1 end\nlocal dest={x=100+dx/r*17,y=player.pos.y,z=100+dz/r*17}\nlocal distance=TensorCore.getDistance2d(player.pos,dest)\nif distance>0.2 then\n local tip=math.min(2.0,distance*0.35)\n local drawer=TensorCore.getCachedDrawer(0xFFB6E0FF,0xFF55AAFF,0xFFFFFFFF,0xFF000000,4)\n drawer:addTimedArrow(3000,player.pos.x,player.pos.y,player.pos.z,TensorCore.getHeadingToTarget(player.pos,dest),math.max(0.1,distance-tip),1.4,tip,3.0,0,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nend\nAnyoneCore.addTimedWorldText(3000,\"MOVE TO EDGE\",{x=dest.x,y=dest.y+1.2,z=dest.z},0xFFB6E0FF,true,1.1)\nself.used=true",
							conditions = 
							{
								
								{
									"4ed0554f-7d9b-99f3-86d0-bb91ab9ba704",
									true,
								},
							},
							displayPath = "Draws - Ultima",
							name = "Arrow to Arena Edge",
							uuid = "9b2d8160-5822-ed40-963a-625e1b80e8bc",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local slot=AnyoneCore.Roster.mySlot(); return slot~=\"T1\" and slot~=\"T2\"",
							dequeueIfLuaFalse = true,
							name = "Exclude Tanks",
							uuid = "4ed0554f-7d9b-99f3-86d0-bb91ab9ba704",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ultima",
				mechanicTime = 1200,
				name = "[Draw][LPDU][Ultima] Suppression Move to Edge",
				timeRange = true,
				timelineIndex = 189,
				timerEndOffset = 4,
				uuid = "50baa3ca-77d8-5053-887d-3aeb5339fdc1",
				version = 2,
			},
		},
	},
	[190] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Ifrit",
				uuid = "de76f1a4-3ea2-1e45-b1ca-a4dab79d1a96",
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
							displayPath = "",
							name = "Draws - Ifrit",
							uuid = "e6a927e7-41f2-8f38-9e4c-4ee3dd540164",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player=TensorCore.mGetPlayer()\nif not player or not player.pos then self.used=true return end\nlocal center={x=100,y=player.pos.y,z=100}\nlocal target=TensorCore.mGetTarget()\nlocal dx,dz\nif target and target.pos then dx=target.pos.x-center.x dz=target.pos.z-center.z else dx=player.pos.x-center.x dz=player.pos.z-center.z end\nlocal length=math.sqrt(dx*dx+dz*dz)\nif length<0.1 then dx=0 dz=-1 length=1 end\nlocal destination={x=center.x-dx/length*17.5,y=center.y,z=center.z-dz/length*17.5}\nlocal distance=TensorCore.getDistance2d(player.pos,destination)\nif distance>0.2 then\n local tip=math.min(2.8,distance*0.38)\n local drawer=TensorCore.getCachedDrawer(0xFFB6FFB6,0xFF55FF55,0xFFFFFFFF,0xFF000000,5)\n drawer:addTimedArrow(7000,player.pos.x,player.pos.y,player.pos.z,TensorCore.getHeadingToTarget(player.pos,destination),math.max(0.1,distance-tip),1.5,tip,3.2,0,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nend\nAnyoneCore.addTimedWorldText(7000,\"SAFE SIDE\",{x=destination.x,y=destination.y+1.2,z=destination.z},0xFFB6FFB6,true,1.2)\nself.used=true",
							displayPath = "Draws - Ifrit",
							name = "Guide",
							uuid = "58fc1355-9f28-5586-aa69-746ebca9a503",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Draws - Ifrit",
				enabled = false,
				mechanicTime = 1206,
				name = "[Draw] Post-Predation - Safe Side Arrow",
				timeRange = true,
				timelineIndex = 190,
				timerEndOffset = 3,
				timerStartOffset = -5,
				uuid = "11822bea-810b-5593-ae66-14797e370be1",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Titan LPDU",
				uuid = "554764fd-05c6-7e60-8cee-35b70a193785",
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
							displayPath = "",
							name = "Draws - Titan LPDU",
							uuid = "d6e45b43-e334-77ce-bbe7-55bda98e49d5",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 4000,
							alertPriority = 3,
							alertScale = 0.9,
							alertTTS = true,
							alertText = "DPS THE GRANITE GAOL",
							conditions = 
							{
								
								{
									"672b6aa6-7860-e530-a2f5-e7c71f35ba66",
									true,
								},
							},
							displayPath = "Draws - Titan LPDU",
							name = "DPS Granite Gaol",
							uuid = "6435297f-c4b8-3b4b-a3f4-d67c77b7678a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityContentID==1804 and eventArgs.isTargetable==true",
							dequeueIfLuaFalse = true,
							name = "Granite Gaol becomes targetable",
							uuid = "672b6aa6-7860-e530-a2f5-e7c71f35ba66",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Titan LPDU",
				eventType = 26,
				mechanicTime = 1206,
				name = "[Alert][LPDU][Titan] DPS Granite Gaol on Targetable",
				timeRange = true,
				timelineIndex = 190,
				timerEndOffset = 14,
				timerStartOffset = -6,
				uuid = "bfc241c2-2287-0c28-aa29-cd130813abe0",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Ultima",
				uuid = "fd599669-aee1-59fc-af83-659f6185ef31",
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
							displayPath = "",
							name = "Draws - Ultima",
							uuid = "cbe28329-d388-c363-a24f-87a1157787b6",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player=TensorCore.mGetPlayer()\nif not player or not player.pos then self.used=true return end\nlocal dest={x=95,y=player.pos.y,z=111}\nlocal distance=TensorCore.getDistance2d(player.pos,dest)\nif distance>0.2 then\n local tip=math.min(2.0,distance*0.35)\n local drawer=TensorCore.getCachedDrawer(0xFFB6E0FF,0xFF55AAFF,0xFFFFFFFF,0xFF000000,4)\n drawer:addTimedArrow(3500,player.pos.x,player.pos.y,player.pos.z,TensorCore.getHeadingToTarget(player.pos,dest),math.max(0.1,distance-tip),1.4,tip,3.0,0,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nend\nAnyoneCore.addTimedWorldText(3500,\"MISTRAL: MOVE BEHIND TANKS\",{x=dest.x,y=dest.y+1.2,z=dest.z},0xFFB6E0FF,true,1.1)\nself.used=true",
							conditions = 
							{
								
								{
									"9ddd5a29-d08c-7e33-8131-e5eba0656224",
									true,
								},
							},
							displayPath = "Draws - Ultima",
							name = "Move Behind Tanks",
							uuid = "e45a19e6-94df-7321-a22b-330ba6700c3f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local player=TensorCore.mGetPlayer(); return player~=nil and eventArgs.markerID==16 and eventArgs.entityID==player.id",
							dequeueIfLuaFalse = true,
							name = "Marked Mistral Target",
							uuid = "9ddd5a29-d08c-7e33-8131-e5eba0656224",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ultima",
				eventType = 4,
				mechanicTime = 1206,
				name = "[Draw][LPDU][Ultima] Suppression Mistral Marker",
				timeRange = true,
				timelineIndex = 190,
				timerEndOffset = 7,
				timerStartOffset = -6,
				uuid = "3cb81888-ca79-b686-9da1-17dda5a531b1",
				version = 2,
			},
		},
	},
	[191] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Ifrit",
				uuid = "3fa712f9-66a3-9293-b98a-c3d9eb75abcf",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Ultima",
				uuid = "402018fd-7490-e568-8470-0e22c4708281",
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
							displayPath = "",
							name = "Draws - Ultima",
							uuid = "8bcfd0d0-7977-8ddf-b4ed-55e82e407fec",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player=TensorCore.mGetPlayer()\nif not player or not player.pos then self.used=true return end\nlocal stamp=eventArgs.startTime\nif stamp~=nil and data.uwu_suppression_eruption_last_start_time==stamp then self.used=true return end\nif stamp~=nil then data.uwu_suppression_eruption_last_start_time=stamp end\ndata.uwu_suppression_eruption_step=(data.uwu_suppression_eruption_step or 0)+1\nlocal step=data.uwu_suppression_eruption_step\nlocal x,z,label\nif step==1 then\n x=(eventArgs.x+100)*0.5;z=(eventArgs.z+100)*0.5;label=\"ERUPTION 1: MOVE HALFWAY IN\"\nelseif step==2 then\n x=100;z=100;label=\"ERUPTION 2: MOVE TO CENTER\"\nelseif step==3 then\n x=107.3;z=107.3;label=\"ERUPTION 3: MOVE TO SE\"\nelse\n self.used=true\n return\nend\nlocal dest={x=x,y=player.pos.y,z=z}\nlocal distance=TensorCore.getDistance2d(player.pos,dest)\nif distance>0.2 then\n local tip=math.min(2.0,distance*0.35)\n local drawer=TensorCore.getCachedDrawer(0xFFFFC870,0xFFFF9A45,0xFFFFFFFF,0xFF000000,4)\n drawer:addTimedArrow(1800,player.pos.x,player.pos.y,player.pos.z,TensorCore.getHeadingToTarget(player.pos,dest),math.max(0.1,distance-tip),1.4,tip,3.0,0,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nend\nAnyoneCore.addTimedWorldText(1800,label,{x=dest.x,y=dest.y+1.2,z=dest.z},0xFFFFC870,true,1.1)\nself.used=true",
							conditions = 
							{
								
								{
									"01a48d6f-636c-9be8-b9d5-1ef965670eaf",
									true,
								},
							},
							displayPath = "Draws - Ultima",
							name = "Next Eruption Position",
							uuid = "59a1eb95-3e51-6537-9515-abe56bdb19fb",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local player=TensorCore.mGetPlayer()\nif not player or not player.pos then return false end\nif eventArgs.aoeID~=11098 or eventArgs.contentID~=1185 or eventArgs.aoeName~=\"Eruption\" then return false end\nreturn TensorCore.getDistance2d(player.pos,{x=eventArgs.x,y=eventArgs.y,z=eventArgs.z})<=0.5",
							dequeueIfLuaFalse = true,
							name = "Local Eruption Target",
							uuid = "01a48d6f-636c-9be8-b9d5-1ef965670eaf",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ultima",
				eventType = 18,
				mechanicTime = 1207,
				name = "[Draw][LPDU][Ultima] Suppression Eruption Route",
				timeRange = true,
				timelineIndex = 191,
				timerEndOffset = 6,
				timerStartOffset = -5,
				uuid = "77ebc709-8e05-c098-9794-42699c9c0b75",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Movement - Eruption",
				uuid = "e13168dc-0f6b-6f8f-b7ca-50ed7a34094d",
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
							actionLua = "TensorDrift_SlidecastForceHold = true\nself.used = true",
							conditions = 
							{
								
								{
									"88aa2fe3-ea6c-7cfb-af65-da6833388781",
									true,
								},
							},
							name = "Force Slidecast",
							uuid = "7bbde9a4-8d82-c935-a331-8b70f4ffcae2",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "TensorDrift_SlidecastForceHold = false\nself.used = true",
							conditions = 
							{
								
								{
									"88aa2fe3-ea6c-7cfb-af65-da6833388781",
									true,
								},
							},
							name = "End Slide",
							uuid = "01e1a7fe-16d9-2ef0-bf1e-3dfac63be1a8",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local Roster = AnyoneCore.Roster\nif not Roster or not Roster.current() then return false end\nlocal slot = Roster.mySlot()\nreturn slot == \"R1\" or slot == \"R2\"",
							name = "Roster R1/R2",
							uuid = "88aa2fe3-ea6c-7cfb-af65-da6833388781",
							version = 3,
						},
					},
				},
				displayPath = "Movement - Eruption",
				mechanicTime = 1207,
				name = "[Drift] Eruption R1/R2 1207",
				throttleTime = 10500,
				timeRange = true,
				timelineIndex = 191,
				timerEndOffset = 7,
				timerStartOffset = -4,
				uuid = "b1bb1dc0-49fe-8daf-8a41-ea7048b5089b",
				version = 2,
			},
		},
	},
	[192] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Garuda",
				uuid = "80788079-2d5a-4a5e-af1e-f10b6a162b1e",
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
							displayPath = "",
							name = "Draws - Garuda",
							uuid = "9299d0d4-d148-d058-96cf-014dac432b1a",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player=TensorCore.mGetPlayer()\nif not player or not player.pos then self.used=true return end\nlocal hit=false\nfor _,id in pairs(eventArgs.hitTargets or {}) do\n if id==player.id then hit=true break end\nend\nif not hit then self.used=true return end\nlocal dest={x=100,y=player.pos.y,z=114}\nlocal distance=TensorCore.getDistance2d(player.pos,dest)\nif distance>0.2 then\n local tip=math.min(2.5,distance*0.35)\n local drawer=TensorCore.getCachedDrawer(0xFFB6E0FF,0xFF55AAFF,0xFFFFFFFF,0xFF000000,4)\n drawer:addTimedArrow(6000,player.pos.x,player.pos.y,player.pos.z,TensorCore.getHeadingToTarget(player.pos,dest),math.max(0.1,distance-tip),1.4,tip,3.0,0,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nend\nAnyoneCore.addTimedWorldText(6000,\"MISTRAL: BEHIND TANKS\",{x=dest.x,y=dest.y+1.2,z=dest.z},0xFFB6E0FF,true,1.1)\nself.used=true",
							conditions = 
							{
								
								{
									"475e1b23-d512-8066-9f60-9601bf7b919b",
									true,
								},
							},
							displayPath = "Draws - Garuda",
							name = "Mistral Role Guide",
							uuid = "0c71ed8e-6930-bf1d-a08d-22281c26bb71",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return (eventArgs.spellID==11074 or eventArgs.spellID==11083) and (eventArgs.entityContentID==1644 or eventArgs.entityContentID==1645 or eventArgs.entityContentID==1646)",
							dequeueIfLuaFalse = true,
							name = "Mistral Song Cast",
							uuid = "475e1b23-d512-8066-9f60-9601bf7b919b",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Garuda",
				eventType = 2,
				mechanicTime = 1210,
				name = "[Draw][LPDU][Garuda] Mistral Song 1210",
				timeRange = true,
				timelineIndex = 192,
				timerEndOffset = 5,
				timerStartOffset = -1,
				uuid = "f9368301-3ca4-ce8e-a6c2-60106ed2083f",
				version = 2,
			},
		},
	},
	[193] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Garuda",
				uuid = "28a385fd-3c90-d6f2-9be8-78e2f068d7e5",
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
							displayPath = "",
							name = "Draws - Garuda",
							uuid = "30d1f0a5-abf6-f0c1-bf69-d4cddd13b827",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player=TensorCore.mGetPlayer()\nif not player or not player.pos then self.used=true return end\nlocal hit=false\nfor _,id in pairs(eventArgs.hitTargets or {}) do\n if id==player.id then hit=true break end\nend\nif not hit then self.used=true return end\nlocal dest={x=100,y=player.pos.y,z=114}\nlocal distance=TensorCore.getDistance2d(player.pos,dest)\nif distance>0.2 then\n local tip=math.min(2.5,distance*0.35)\n local drawer=TensorCore.getCachedDrawer(0xFFB6E0FF,0xFF55AAFF,0xFFFFFFFF,0xFF000000,4)\n drawer:addTimedArrow(6000,player.pos.x,player.pos.y,player.pos.z,TensorCore.getHeadingToTarget(player.pos,dest),math.max(0.1,distance-tip),1.4,tip,3.0,0,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nend\nAnyoneCore.addTimedWorldText(6000,\"MISTRAL: BEHIND TANKS\",{x=dest.x,y=dest.y+1.2,z=dest.z},0xFFB6E0FF,true,1.1)\nself.used=true",
							conditions = 
							{
								
								{
									"c76708b0-b9fe-edd9-a35f-222944a5aeb8",
									true,
								},
							},
							displayPath = "Draws - Garuda",
							name = "Mistral Role Guide",
							uuid = "b3c7bf1d-8e0a-71f2-98e1-65ee44c54944",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return (eventArgs.spellID==11074 or eventArgs.spellID==11083) and (eventArgs.entityContentID==1644 or eventArgs.entityContentID==1645 or eventArgs.entityContentID==1646)",
							dequeueIfLuaFalse = true,
							name = "Mistral Song Cast",
							uuid = "c76708b0-b9fe-edd9-a35f-222944a5aeb8",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Garuda",
				eventType = 2,
				mechanicTime = 1212,
				name = "[Draw][LPDU][Garuda] Mistral Song 1212",
				timeRange = true,
				timelineIndex = 193,
				timerEndOffset = 5,
				timerStartOffset = -1,
				uuid = "4aa8fdd2-7302-2d45-89b5-899a63b270c0",
				version = 2,
			},
		},
	},
	[194] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Garuda",
				uuid = "d17f6e6f-1bf0-8ad5-8e21-d311d53d6eb2",
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
							displayPath = "",
							name = "Draws - Garuda",
							uuid = "d9873ec5-5a71-e2f8-90ad-965ec7c985a1",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 2500,
							alertPriority = 3,
							alertScale = 0.89999997615814,
							alertTTS = true,
							alertText = "MOVE",
							conditions = 
							{
								
								{
									"f08dd1d3-c4f8-adda-a645-30c6651f7f70",
									true,
								},
							},
							displayPath = "Draws - Garuda",
							name = "[Alert] Feather Rain - Move 1215",
							uuid = "19da62ea-75da-738a-a4a2-6c30cf0a88d0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Garuda",
							uuid = "297d3efb-2ffd-d720-ba08-38e7377b74b5",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs and eventArgs.aoeID == 11085 and eventArgs.contentID == 1644 and eventArgs.friendly == false",
							dequeueIfLuaFalse = true,
							name = "Feather Rain AOE",
							uuid = "f08dd1d3-c4f8-adda-a645-30c6651f7f70",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Garuda",
				eventType = 18,
				mechanicTime = 1215,
				name = "[Alert] Feather Rain - Move 1215",
				throttleTime = 1000,
				timeRange = true,
				timelineIndex = 194,
				timerEndOffset = -0.5,
				timerStartOffset = -3,
				uuid = "a6c44fc1-f001-3d5f-bac1-21e85d44e3cf",
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
				name = "Draws - Garuda",
				uuid = "14145b3f-1f53-4d76-b8a4-596f4e35a661",
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
							displayPath = "",
							name = "Draws - Garuda",
							uuid = "e3c197bb-27e0-b7c5-8115-2f1c12436f1c",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 2500,
							alertPriority = 3,
							alertScale = 0.89999997615814,
							alertTTS = true,
							alertText = "MOVE",
							conditions = 
							{
								
								{
									"2211817c-b145-4de0-b942-5b7bbf6a7a94",
									true,
								},
							},
							displayPath = "Draws - Garuda",
							name = "[Alert] Feather Rain - Move 1216",
							uuid = "68dd5292-a487-5bf0-9cda-b27182e1a6e5",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Garuda",
							uuid = "d77d024d-8b28-c58d-bc64-ae7eef52ad03",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs and eventArgs.aoeID == 11085 and eventArgs.contentID == 1644 and eventArgs.friendly == false",
							dequeueIfLuaFalse = true,
							name = "Feather Rain AOE",
							uuid = "2211817c-b145-4de0-b942-5b7bbf6a7a94",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Garuda",
				eventType = 18,
				mechanicTime = 1216,
				name = "[Alert] Feather Rain - Move 1216",
				throttleTime = 1000,
				timeRange = true,
				timelineIndex = 196,
				timerEndOffset = 2,
				timerStartOffset = -3,
				uuid = "c8e88d7a-34a0-70aa-b5fd-ea29ce85ae1f",
				version = 2,
			},
		},
	},
	[199] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Guidance",
				uuid = "f098f6f2-304c-2b22-b48b-4892fa74ad5d",
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
							alertScale = 0.85,
							alertTTS = true,
							alertText = "Dodge both Landslides",
							conditions = 
							{
								
								{
									"a31dc2b5-55c7-be4f-b136-92a89e7b6e35",
									true,
								},
							},
							uuid = "05241bc4-8276-0d2f-aaac-ca376e835de2",
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
							eventSpellID = 11121,
							name = "Spell 11121",
							uuid = "a31dc2b5-55c7-be4f-b136-92a89e7b6e35",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Guidance",
				eventType = 3,
				mechanicTime = 1223,
				name = "[LPDU] Landslides - Dodge Both",
				throttleTime = 4000,
				timeRange = true,
				timelineIndex = 199,
				timerEndOffset = 0.5,
				timerStartOffset = -1,
				uuid = "ce63d5a9-f830-e85b-b478-f795b981a695",
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
				name = "LPDU Guidance",
				uuid = "d449e5a3-4361-7777-a26d-55a5b964333e",
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
							alertScale = 0.85,
							alertTTS = true,
							alertText = "Stack now for Flaming Crush",
							conditions = 
							{
								
								{
									"fa9e1b22-105a-338f-ae72-73dbe839fb6c",
									true,
								},
								
								{
									"65f7d2b1-9b43-25f3-a9b9-7d8f425f67ce",
									true,
								},
							},
							uuid = "3daf66ef-4de9-1ea5-99ae-44466e40ff20",
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
							eventSpellID = 11298,
							name = "Spell 11298",
							uuid = "fa9e1b22-105a-338f-ae72-73dbe839fb6c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local Roster = AnyoneCore.Roster\nif not Roster or not Roster.current() then return false end\nlocal slot = Roster.mySlot()\nif not slot then return false end\nreturn slot ~= \"T2\"",
							conditionType = 9,
							name = "Roster: except T2",
							partyTargetType = "Off Tank",
							uuid = "65f7d2b1-9b43-25f3-a9b9-7d8f425f67ce",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Guidance",
				eventType = 2,
				mechanicTime = 1225,
				name = "[LPDU] After Landslides - Stack",
				throttleTime = 4000,
				timeRange = true,
				timelineIndex = 201,
				timerEndOffset = 1.5,
				timerStartOffset = -1.5,
				uuid = "49526bdb-e3bb-1fc8-884b-8e53d0a378c3",
				version = 2,
			},
		},
	},
	[203] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "[Raid calls]",
				uuid = "8549af16-527a-72aa-a563-682a8039ed63",
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
							displayPath = "",
							name = "[Raid calls]",
							uuid = "c840bd79-0a04-4764-a44e-cd62456670d8",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 3500,
							alertPriority = 2,
							alertScale = 0.85000002384186,
							alertTTS = true,
							alertText = "Wait for Feather Rain, then move",
							displayPath = "[Raid calls]",
							name = "Wait for Feather Rain then move",
							uuid = "2c717b78-dced-8656-8f29-0f714d170ec7",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "[Raid calls]",
				mechanicTime = 1227,
				name = "[Raid Call][UWU] Wait for Feather Rain then Move 1227",
				timelineIndex = 203,
				uuid = "0444dc24-ca71-d804-aa25-d7884ee2e1d0",
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
				name = "Draws - Garuda",
				uuid = "148d2bac-870a-80c2-b046-7be807243acb",
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
							displayPath = "",
							name = "Draws - Garuda",
							uuid = "12e6d78a-73cc-2bb6-9b60-19d126e61969",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 2500,
							alertPriority = 3,
							alertScale = 0.9,
							alertTTS = true,
							alertText = "MOVE FOR FEATHER RAIN",
							conditions = 
							{
								
								{
									"798a0977-02bd-9d0d-95ab-b01d7415ee4f",
									true,
								},
							},
							displayPath = "Draws - Garuda",
							name = "Feather Rain Move",
							uuid = "4d68f5fe-35f8-618b-9a7a-5b4250216c46",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Garuda",
							uuid = "30603478-875a-cedf-bb2e-8cee352bb2a9",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs and eventArgs.aoeID == 11085 and eventArgs.contentID == 1644 and eventArgs.friendly == false",
							dequeueIfLuaFalse = true,
							name = "Feather Rain AOE",
							uuid = "798a0977-02bd-9d0d-95ab-b01d7415ee4f",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Garuda",
				eventType = 18,
				mechanicTime = 1232,
				name = "[Alert] Feather Rain - Move 1232",
				throttleTime = 1000,
				timeRange = true,
				timelineIndex = 204,
				timerEndOffset = 2,
				timerStartOffset = -3,
				uuid = "8b6f637e-4b16-650d-bdef-cb0500535b05",
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
				name = "Draws - Ultima",
				uuid = "77ff624a-c520-0611-8b86-0893661a8d17",
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
							actionLua = "local player=TensorCore.mGetPlayer()\nif not player or not player.pos then self.used=true return end\nlocal duration=4500\nlocal dest={x=104,y=player.pos.y,z=104}\nlocal distance=TensorCore.getDistance2d(player.pos,dest)\nif distance>0.3 then\n local tip=math.min(1.7,distance*0.35)\n local drawer=TensorCore.getCachedDrawer(0xFF33FF66,0xFF00CC44,0xFFFFFFFF,0xFF000000,4)\n drawer:addTimedArrow(duration,player.pos.x,player.pos.y,player.pos.z,TensorCore.getHeadingToTarget(player.pos,dest),math.max(0.1,distance-tip),1.2,tip,2.5,0,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nend\nAnyoneCore.addTimedWorldText(duration,\"ULTIMA: SOUTHEAST\",{x=dest.x,y=dest.y+1.1,z=dest.z},0xFF33FF66,true,1.1)\nself.used=true",
							conditions = 
							{
								
								{
									"a3bd3a4a-cb29-f6aa-9327-de5baef8422a",
									true,
								},
							},
							name = "Ultima DPS/Healers Southeast Arrow",
							uuid = "c66ef83d-05d4-73d7-8553-a912b797eb8d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local Roster = AnyoneCore.Roster\nif not Roster or not Roster.current() or not Roster.isReady() then return false end\nlocal slot = Roster.mySlot()\nif not slot then return false end\nreturn slot == \"H1\" or slot == \"H2\" or slot == \"M1\" or slot == \"M2\" or slot == \"R1\" or slot == \"R2\"",
							conditionType = 9,
							name = "Roster: DPS/healers",
							partyTargetType = "Tank",
							uuid = "a3bd3a4a-cb29-f6aa-9327-de5baef8422a",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ultima",
				mechanicTime = 1243,
				name = "[Draw][LPDU] Ultima - DPS/Healers Southeast",
				timeRange = true,
				timelineIndex = 206,
				timerEndOffset = -2,
				timerStartOffset = -3,
				uuid = "d8909561-90fc-80f4-b9b0-45fcef7b2a98",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player=TensorCore.mGetPlayer()\nif not player or not player.pos then self.used=true return end\nlocal duration=4500\nlocal dest={x=96,y=player.pos.y,z=104}\nlocal distance=TensorCore.getDistance2d(player.pos,dest)\nif distance>0.3 then\n local tip=math.min(1.7,distance*0.35)\n local drawer=TensorCore.getCachedDrawer(0xFF33FF66,0xFF00CC44,0xFFFFFFFF,0xFF000000,4)\n drawer:addTimedArrow(duration,player.pos.x,player.pos.y,player.pos.z,TensorCore.getHeadingToTarget(player.pos,dest),math.max(0.1,distance-tip),1.2,tip,2.5,0,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nend\nAnyoneCore.addTimedWorldText(duration,\"ULTIMA: SOUTHWEST\",{x=dest.x,y=dest.y+1.1,z=dest.z},0xFF33FF66,true,1.1)\nself.used=true",
							conditions = 
							{
								
								{
									"5a8943b8-de15-1a6e-a5ec-ae2fd1b4210e",
									true,
								},
							},
							name = "Ultima Tanks Southwest Arrow",
							uuid = "afe3bc55-44db-dfce-8966-cd3b56fb615d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local Roster = AnyoneCore.Roster\nif not Roster or not Roster.current() or not Roster.isReady() then return false end\nlocal slot = Roster.mySlot()\nif not slot then return false end\nreturn slot == \"T1\" or slot == \"T2\"",
							conditionType = 9,
							name = "Roster: tanks",
							partyTargetType = "Tank",
							uuid = "5a8943b8-de15-1a6e-a5ec-ae2fd1b4210e",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ultima",
				mechanicTime = 1243,
				name = "[Draw][LPDU] Ultima - Tanks Southwest",
				timeRange = true,
				timelineIndex = 206,
				timerEndOffset = -2,
				timerStartOffset = -3,
				uuid = "2a6481bd-bb4f-75a9-8219-a7a31c53b604",
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
				name = "Draws - Ultima",
				uuid = "45fc0272-6f51-df20-8ba2-4123b52c7a48",
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
							displayPath = "",
							name = "Draws - Ultima",
							uuid = "7cb78d49-be39-a2e5-ad25-e081b8a103d5",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							actionID = 7548,
							atomicPriority = true,
							displayPath = "Draws - Ultima",
							ignoreWeaveRules = true,
							name = "Arm's Length",
							uuid = "a49e3fc8-81a3-ff1c-8d8c-3ddb4766e872",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7559,
							atomicPriority = true,
							displayPath = "Draws - Ultima",
							ignoreWeaveRules = true,
							name = "Surecast",
							uuid = "919c15f0-f852-4af9-b32a-92cf2aff6ed3",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Draws - Ultima",
				mechanicTime = 1253,
				name = "[Knockback Utility]",
				timeRange = true,
				timelineIndex = 207,
				timerEndOffset = 2,
				timerStartOffset = -2,
				uuid = "dd445d82-c1c3-b264-995f-5ef82742bdd3",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Ultima",
							uuid = "75da29fa-a405-dda1-8169-995155c124f1",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local state = data.uwu_aether_guidance\nif not state then\n    state = { southDone = false, phase = nil, runPhase = nil }\n    data.uwu_aether_guidance = state\nend\n\nif state.phase and state.runPhase ~= state.phase then\n    local party = TensorCore.getEntityGroupList(\"Party\", { noAliveCheck = true }) or {}\n    local count = 0\n    local allReady = true\n    for _, member in pairs(party) do\n        count = count + 1\n        local percent = member and member.hp and member.hp.percent\n        if type(percent) ~= \"number\" or percent < 80 then\n            allReady = false\n        end\n    end\n\n    if count == 8 and allReady then\n        TensorCore.addAlertText(4000, \"RUN INTO ORB\", 1.1, 2, false)\n        state.runPhase = state.phase\n        if state.phase == \"north\" then self.used = true end\n    end\nend",
							displayPath = "Draws - Ultima",
							name = "South Soak Assignment",
							uuid = "3edff3de-a032-9482-b16e-1d6eb2312139",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Draws - Ultima",
				loop = true,
				mechanicTime = 1253,
				name = "[Draw][LPDU][Ultima] Aetheroplasm South Soak",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 207,
				timerEndOffset = 20,
				timerStartOffset = 1,
				uuid = "ea730cc3-994c-fe3e-82d8-c09ca5377103",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Ultima",
							uuid = "f22111c9-d7e4-4e1d-a7bd-8910d86ae103",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local state = data.uwu_aether_guidance\nif not state or state.northArrowDone then\n    self.used = true\n    return\nend\n\nlocal Roster = AnyoneCore and AnyoneCore.Roster\nif not Roster or not Roster.current() or not Roster.isReady() then return end\n\nlocal slot = Roster.mySlot()\nlocal isTank = slot == \"T1\" or slot == \"T2\"\nlocal knownSlot = isTank or slot == \"H1\" or slot == \"H2\" or slot == \"M1\" or slot == \"M2\" or slot == \"R1\" or slot == \"R2\"\nif not knownSlot then\n    self.used = true\n    return\nend\n\nlocal player = Roster.entOf(slot)\nif not player or not player.pos then return end\n\nlocal side = state.orbs and state.orbs.north\nlocal candidates = side and side[isTank and \"left\" or \"right\"]\nif not candidates then return end\n\nlocal target\nfor i = 1, #candidates do\n    local orb = TensorCore.mGetEntity(candidates[i])\n    if orb and orb.pos then\n        target = orb\n        break\n    end\nend\nif not target then return end\n\nlocal distance = TensorCore.getDistance2d(player.pos, target.pos)\nif not distance then return end\nif distance > 0.2 then\n    local tip = math.min(2.0, distance * 0.35)\n    local drawer = TensorCore.getCachedDrawer(0xFFB6E0FF, 0xFF55AAFF, 0xFFFFFFFF, 0xFF000000, 4)\n    drawer:addTimedArrow(5000, player.pos.x, player.pos.y, player.pos.z, TensorCore.getHeadingToTarget(player.pos, target.pos), math.max(0.1, distance - tip), 1.4, tip, 3.0, 0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nend\n\nstate.northArrowDone = true\nstate.phase = \"north\"\nstate.runPhase = nil\ndata.uwu_suppression_aether_north_done = true\nTensorCore.addAlertText(10000, \"GO NEAR ORB\", 1.1, 2, false)\nself.used = true",
							conditions = 
							{
								
								{
									"fd84096f-ed8a-14d3-a876-cc9bf8e76d1c",
									true,
								},
							},
							displayPath = "Draws - Ultima",
							name = "North Soak Assignment",
							uuid = "37c28863-be25-6541-b9ee-226803e4ee40",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not eventArgs or eventArgs.entityContentID ~= 2324 or eventArgs.newAnimID ~= 3 then return false end\nlocal orb = TensorCore.mGetEntity(eventArgs.entityID)\nreturn orb ~= nil and orb.pos ~= nil and orb.pos.z > 100",
							dequeueIfLuaFalse = true,
							name = "South Orb Detonated",
							uuid = "fd84096f-ed8a-14d3-a876-cc9bf8e76d1c",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ultima",
				eventType = 23,
				loop = true,
				mechanicTime = 1253,
				name = "[Draw][LPDU][Ultima] Aetheroplasm North Soak",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 207,
				timerEndOffset = 8,
				timerStartOffset = 1,
				uuid = "2f3c07a2-b585-0422-b1c1-8c2ece283c50",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.uwu_post_orb_north = { seen = {}, count = 0, done = false }\ndata.uwu_aether_guidance = { southDone = false, phase = nil, runPhase = nil }\ndata.uwu_suppression_aether_south_done = false\ndata.uwu_suppression_aether_north_done = false\nself.used = true",
							conditions = 
							{
								
								{
									"2be96e2c-aff2-7550-91c7-1dac3651a864",
									true,
								},
								
								{
									"f69ec9ea-f618-a280-af62-f83a35a0184f",
									true,
								},
							},
							name = "[State] Aetheric Boom - Reset Orb Soaks",
							uuid = "36b82fe3-a491-74e5-bc71-25a1e73a03a3",
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
							eventSpellID = 11144,
							name = "Cast ID 11144",
							uuid = "2be96e2c-aff2-7550-91c7-1dac3651a864",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 2137,
							name = "Source 2137",
							uuid = "f69ec9ea-f618-a280-af62-f83a35a0184f",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ultima",
				eventType = 2,
				mechanicTime = 1253,
				name = "[State] Aetheric Boom - Reset Orb Soaks",
				timeRange = true,
				timelineIndex = 207,
				timerEndOffset = 20,
				timerStartOffset = -2,
				uuid = "ec23feb8-d2e3-9250-8d03-620190826953",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local state = data.uwu_post_orb_north\nif not state or state.done or state.seen[eventArgs.entityID] then self.used = true return end\nstate.seen[eventArgs.entityID] = true\nstate.count = state.count + 1\nif state.count < 4 then self.used = true return end\nstate.done = true\nlocal player = TensorCore.mGetPlayer()\nif not player or not player.pos then self.used = true return end\nlocal duration = 6000\nlocal dest = {x=100,y=player.pos.y,z=82}\nlocal distance = TensorCore.getDistance2d(player.pos,dest)\nif distance > 0.3 then\n local tip = math.min(1.7,distance*0.35)\n local drawer = TensorCore.getCachedDrawer(0xFF33FF66,0xFF00CC44,0xFFFFFFFF,0xFF000000,4)\n drawer:addTimedArrow(duration,player.pos.x,player.pos.y,player.pos.z,TensorCore.getHeadingToTarget(player.pos,dest),math.max(0.1,distance-tip),1.2,tip,2.5,0,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nend\nAnyoneCore.addTimedWorldText(duration,\"NORTH / 1\",{x=dest.x,y=dest.y+1.1,z=dest.z},0xFF33FF66,true,1.1)\nself.used = true",
							conditions = 
							{
								
								{
									"ae8d4f7f-412b-9db0-8b6a-8a209e6f11b8",
									true,
								},
								
								{
									"a9f143c8-afda-aa78-b58e-6645b3c0e2ed",
									true,
								},
							},
							name = "[Draw] After Four Orb Soaks - North / 1",
							uuid = "5ea7ea55-544e-695f-843a-75bbe09d24e8",
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
							eventSpellID = 11145,
							name = "Cast ID 11145",
							uuid = "ae8d4f7f-412b-9db0-8b6a-8a209e6f11b8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 2324,
							name = "Source 2324",
							uuid = "a9f143c8-afda-aa78-b58e-6645b3c0e2ed",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ultima",
				eventType = 2,
				loop = true,
				mechanicTime = 1253,
				name = "[Draw] After Four Orb Soaks - North / 1",
				timeRange = true,
				timelineIndex = 207,
				timerEndOffset = 20,
				timerStartOffset = -2,
				uuid = "dbd21720-3c58-886c-a8b1-84628313a71d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Ultima",
							uuid = "9e8d00af-de66-c0e3-a9cf-96c083bfca8a",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local orb = TensorCore.mGetEntity(eventArgs.entityID)\nif not orb or not orb.pos then return end\n\nlocal state = data.uwu_aether_guidance\nif not state then\n    state = { southDone = false, phase = nil, runPhase = nil }\n    data.uwu_aether_guidance = state\nend\nif not state.orbs then\n    state.orbs = {\n        north = { left = {}, right = {} },\n        south = { left = {}, right = {} },\n        seen = {}\n    }\nend\n\nlocal orbID = eventArgs.entityID\nif not state.orbs.seen[orbID] then\n    state.orbs.seen[orbID] = true\n    local vertical = orb.pos.z > 100 and \"south\" or \"north\"\n    local horizontal = orb.pos.x < 100 and \"left\" or \"right\"\n    local bucket = state.orbs[vertical][horizontal]\n    bucket[#bucket + 1] = orbID\nend\n\nlocal Roster = AnyoneCore and AnyoneCore.Roster\nif not Roster or not Roster.current() or not Roster.isReady() then return end\n\nlocal slot = Roster.mySlot()\nlocal isTank = slot == \"T1\" or slot == \"T2\"\nlocal knownSlot = isTank or slot == \"H1\" or slot == \"H2\" or slot == \"M1\" or slot == \"M2\" or slot == \"R1\" or slot == \"R2\"\nif not knownSlot then\n    self.used = true\n    return\nend\n\nif orb.pos.z > 100 and (orb.pos.x < 100) == isTank and not state.southArrowDone then\n    local player = Roster.entOf(slot)\n    if not player or not player.pos then return end\n\n    local distance = TensorCore.getDistance2d(player.pos, orb.pos)\n    if not distance then return end\n    if distance > 0.2 then\n        local tip = math.min(2.0, distance * 0.35)\n        local drawer = TensorCore.getCachedDrawer(0xFFB6E0FF, 0xFF55AAFF, 0xFFFFFFFF, 0xFF000000, 4)\n        drawer:addTimedArrow(3000, player.pos.x, player.pos.y, player.pos.z, TensorCore.getHeadingToTarget(player.pos, orb.pos), math.max(0.1, distance - tip), 1.4, tip, 3.0, 0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n    end\n\n    state.southDone = true\n    state.southArrowDone = true\n    state.phase = \"south\"\n    state.runPhase = nil\n    data.uwu_suppression_aether_south_done = true\n    TensorCore.addAlertText(10000, \"GO NEAR ORB\", 1.1, 2, false)\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"6b7ceb5c-546b-8ac6-9e37-91ba5b1d5b73",
									true,
								},
							},
							displayPath = "Draws - Ultima",
							name = "South Live Orb Assignment",
							uuid = "04a9872b-dcb4-d991-9036-d2b68df7f216",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs ~= nil and eventArgs.entityContentID == 2324 and eventArgs.isVisible == true",
							dequeueIfLuaFalse = true,
							name = "Aetheroplasm Orb Added",
							uuid = "6b7ceb5c-546b-8ac6-9e37-91ba5b1d5b73",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ultima",
				eventType = 22,
				loop = true,
				mechanicTime = 1253,
				name = "[Draw][LPDU][Ultima] Aetheroplasm South Live Orb Arrow",
				timeRange = true,
				timelineIndex = 207,
				timerEndOffset = 4,
				timerStartOffset = 2,
				uuid = "7ec69532-6b5a-5d24-9964-74a77d2290cf",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Ultima",
							uuid = "8f2e84d1-45be-74a6-a58a-82046ee97f45",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "if data.uwu_suppression_aether_north_done then\n    self.used = true\n    return\nend\n\nlocal Roster = AnyoneCore and AnyoneCore.Roster\nif not Roster or not Roster.current() or not Roster.isReady() then return end\n\nlocal slot = Roster.mySlot()\nlocal isTank = slot == \"T1\" or slot == \"T2\"\nlocal knownSlot = isTank or slot == \"H1\" or slot == \"H2\" or slot == \"M1\" or slot == \"M2\" or slot == \"R1\" or slot == \"R2\"\nif not knownSlot then return end\n\nlocal player = Roster.entOf(slot)\nif not player or not player.pos then return end\n\nlocal orbs = TensorCore.getEntityGroupList(\"ContentID\", { contentid = 2324, subgroup = \"Number\", noAliveCheck = true }) or {}\nlocal target\nfor _, orb in pairs(orbs) do\n    if orb and orb.pos and (orb.pos.x < 100) == isTank and orb.pos.z < 100 then\n        target = orb\n        break\n    end\nend\nif not target then return end\n\nlocal distance = TensorCore.getDistance2d(player.pos, target.pos)\nif distance > 0.2 then\n    local tip = math.min(2.0, distance * 0.35)\n    local drawer = TensorCore.getCachedDrawer(0xFFB6E0FF, 0xFF55AAFF, 0xFFFFFFFF, 0xFF000000, 4)\n    drawer:addTimedArrow(5000, player.pos.x, player.pos.y, player.pos.z, TensorCore.getHeadingToTarget(player.pos, target.pos), math.max(0.1, distance - tip), 1.4, tip, 3.0, 0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nend\n\nlocal state = data.uwu_aether_guidance\nif not state then\n    state = { southDone = false, phase = nil, runPhase = nil }\n    data.uwu_aether_guidance = state\nend\nstate.phase = \"north\"\nstate.runPhase = nil\ndata.uwu_suppression_aether_north_done = true\nTensorCore.addAlertText(10000, \"GO NEAR ORB\", 1.1, 2, false)\nself.used = true",
							conditions = 
							{
								
								{
									"393c56e2-9a9c-88e8-ace6-563e21467c43",
									true,
								},
							},
							displayPath = "Draws - Ultima",
							name = "North Live Orb Assignment",
							uuid = "0bea956a-cd1b-3ce6-86bc-6e2af2f0a337",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not eventArgs or eventArgs.entityContentID ~= 2324 or eventArgs.spellID ~= 11145 then return false end\nif data.uwu_suppression_aether_north_done then return false end\nlocal orb = TensorCore.mGetEntity(eventArgs.entityID)\nreturn orb ~= nil and orb.pos ~= nil and orb.pos.z > 100",
							name = "South Orb Aetheroplasm Cast",
							uuid = "393c56e2-9a9c-88e8-ace6-563e21467c43",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ultima",
				enabled = false,
				eventType = 2,
				loop = true,
				mechanicTime = 1253,
				name = "[Draw][LPDU][Ultima] Aetheroplasm North Live Orb Arrow",
				timeRange = true,
				timelineIndex = 207,
				timerEndOffset = 8,
				timerStartOffset = 3,
				uuid = "1b67dcfc-cbc1-6831-b29c-09360ceb91c8",
				version = 2,
			},
		},
	},
	[211] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Garuda",
				uuid = "634a1373-5c8f-30d3-ac1f-292a63c8519f",
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
							displayPath = "",
							name = "Draws - Garuda",
							uuid = "ebe89120-15e2-5d2c-9bb5-876ca6a0113f",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player=TensorCore.mGetPlayer()\nlocal boss=TensorCore.mGetEntity(eventArgs.entityID)\nif not player or not player.pos or not boss or not boss.pos then self.used=true return end\nlocal dx=player.pos.x-boss.pos.x\nlocal dz=player.pos.z-boss.pos.z\nlocal length=math.sqrt(dx*dx+dz*dz)\nif length<0.1 then dx=0 dz=1 length=1 end\nlocal radius=9.5\nlocal duration=math.floor(((eventArgs.channelTimeMax or 2.7)*1000)+500)\nlocal dest={x=boss.pos.x+dx/length*radius,y=player.pos.y,z=boss.pos.z+dz/length*radius}\nlocal distance=TensorCore.getDistance2d(player.pos,dest)\nif distance>0.2 then\n local tip=math.min(2.0,distance*0.35)\n local drawer=TensorCore.getCachedDrawer(0xFF33FF66,0xFF00CC44,0xFFFFFFFF,0xFF000000,4)\n drawer:addTimedArrow(duration,player.pos.x,player.pos.y,player.pos.z,TensorCore.getHeadingToTarget(player.pos,dest),math.max(0.1,distance-tip),1.4,tip,3.0,0,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nend\nAnyoneCore.addTimedWorldText(duration,\"PREPOSITION: INNER RING EDGE\",{x=dest.x,y=dest.y+1.2,z=dest.z},0xFF33FF66,true,1.1)\nself.used=true",
							conditions = 
							{
								
								{
									"26431ccb-3ecc-7821-9958-7627bb554270",
									true,
								},
							},
							displayPath = "Draws - Garuda",
							name = "Preposition at Inner Ring",
							uuid = "edaa5567-0f2c-d771-be30-05db46404a07",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.spellID==11086 and eventArgs.entityContentID==1644",
							dequeueIfLuaFalse = true,
							name = "Wicked Wheel Cast",
							uuid = "26431ccb-3ecc-7821-9958-7627bb554270",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Garuda",
				eventType = 3,
				mechanicTime = 1307,
				name = "[Draw][LPDU][Garuda] Wicked Wheel Preposition",
				timeRange = true,
				timelineIndex = 211,
				timerEndOffset = 5,
				timerStartOffset = -4,
				uuid = "0a8c3ec3-0ae1-4d7c-8896-04fb9ea55d47",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Garuda",
							uuid = "e69c58a1-918a-b4af-a26b-4e332d8e5243",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player=TensorCore.mGetPlayer()\nif not player or not player.pos then self.used=true return end\nlocal duration=3500\nlocal dest={x=100,y=player.pos.y,z=100}\nlocal distance=TensorCore.getDistance2d(player.pos,dest)\nif distance>0.2 then\n local tip=math.min(2.0,distance*0.35)\n local drawer=TensorCore.getCachedDrawer(0xFFB6E0FF,0xFF55AAFF,0xFFFFFFFF,0xFF000000,4)\n drawer:addTimedArrow(duration,player.pos.x,player.pos.y,player.pos.z,TensorCore.getHeadingToTarget(player.pos,dest),math.max(0.1,distance-tip),1.4,tip,3.0,0,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nend\nAnyoneCore.addTimedWorldText(duration,\"WICKED WHEEL: CENTER\",{x=dest.x,y=dest.y+1.2,z=dest.z},0xFFB6E0FF,true,1.1)\nself.used=true",
							conditions = 
							{
								
								{
									"cd3addfc-a27c-b032-b712-e6ca263f3403",
									true,
								},
							},
							displayPath = "Draws - Garuda",
							name = "Arrow to Center",
							uuid = "c2ee5c15-50e5-e42c-9451-b42a5c8dab4e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.spellID==11086 and eventArgs.entityContentID==1644",
							dequeueIfLuaFalse = true,
							name = "Wicked Wheel Resolve",
							uuid = "cd3addfc-a27c-b032-b712-e6ca263f3403",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Garuda",
				eventType = 2,
				mechanicTime = 1307,
				name = "[Draw][LPDU][Garuda] Wicked Wheel Return to Center",
				timeRange = true,
				timelineIndex = 211,
				timerEndOffset = 2,
				timerStartOffset = -0.5,
				uuid = "169a7ebc-b1ae-cb8e-a8f7-56c6d45c9575",
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
				name = "Draws - Ultima",
				uuid = "3e2106da-a245-b3b7-8cb4-d2d61ed52d21",
			},
			objectType = "folder",
		},
	},
	[213] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Ultima",
				uuid = "f2d11996-0e00-2260-b63c-2503f6988b18",
			},
			objectType = "folder",
		},
	},
	[214] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Ultima",
				uuid = "c3ca5332-22e2-3142-99ca-c0aa4dc0d126",
			},
			objectType = "folder",
		},
	},
	[216] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Garuda",
				uuid = "43958ee1-6523-8ee7-a5d7-f4c68c982b68",
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
							displayPath = "",
							name = "Draws - Garuda",
							uuid = "0a1b3292-aaea-0f3e-a1bf-d6abcc241fc9",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 2500,
							alertPriority = 3,
							alertScale = 0.89999997615814,
							alertTTS = true,
							alertText = "MOVE FOR FEATHER RAIN",
							conditions = 
							{
								
								{
									"9e963fe3-622e-3f1f-9bec-ee5ccb1ced8f",
									true,
								},
							},
							displayPath = "Draws - Garuda",
							name = "Feather Rain Move",
							uuid = "4e70df8a-1710-cdd3-b0be-5244a1fe5bd7",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Draws - Garuda",
							uuid = "7118022b-3e89-f96e-92a5-1ae682bdab11",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs and eventArgs.aoeID == 11085 and eventArgs.contentID == 1644 and eventArgs.friendly == false",
							dequeueIfLuaFalse = true,
							name = "Feather Rain AOE",
							uuid = "9e963fe3-622e-3f1f-9bec-ee5ccb1ced8f",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Garuda",
				eventType = 18,
				mechanicTime = 1322,
				name = "[Alert] Feather Rain - Move 1322",
				throttleTime = 1000,
				timeRange = true,
				timelineIndex = 216,
				timerEndOffset = 2,
				timerStartOffset = -3,
				uuid = "314bc72d-7951-fe06-88ef-989656d9da93",
				version = 2,
			},
		},
	},
	[218] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Ifrit",
				uuid = "588eccf0-a34c-d6db-b04e-5d0f048300d2",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Movement - Eruption",
				uuid = "892589e9-b272-fd8d-90dc-d4a3b2f241b2",
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
							actionLua = "TensorDrift_SlidecastForceHold = true\nself.used = true",
							conditions = 
							{
								
								{
									"d50adb6c-2845-213a-bda9-093cac010d41",
									true,
								},
							},
							name = "Force Slidecast",
							uuid = "f2cebd0e-24ed-19cc-8716-a23648c286b9",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "TensorDrift_SlidecastForceHold = false\nself.used = true",
							conditions = 
							{
								
								{
									"d50adb6c-2845-213a-bda9-093cac010d41",
									true,
								},
							},
							name = "End Slide",
							uuid = "c10ef772-5acc-897f-84fc-72879ba8ffa9",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local Roster = AnyoneCore.Roster\nif not Roster or not Roster.current() then return false end\nlocal slot = Roster.mySlot()\nreturn slot == \"R1\" or slot == \"R2\"",
							name = "Roster R1/R2",
							uuid = "d50adb6c-2845-213a-bda9-093cac010d41",
							version = 3,
						},
					},
				},
				displayPath = "Movement - Eruption",
				mechanicTime = 1408,
				name = "[Drift] Eruption R1/R2 1408",
				throttleTime = 10500,
				timeRange = true,
				timelineIndex = 218,
				timerEndOffset = 7,
				timerStartOffset = -4,
				uuid = "17641cee-c463-fa9f-b60f-42cedde5b26e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "[Raid calls]",
				uuid = "28899742-07f1-5032-855a-fea505a2129f",
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
							alertText = "Bait eruptions then move",
							uuid = "ea15e3a5-556b-c9d3-a895-9d8ca071e664",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "[Raid calls]",
				mechanicTime = 1408,
				name = "[Raid Call][UWU] Bait Eruptions then Move 1406",
				timelineIndex = 218,
				timerOffset = -4,
				uuid = "0db4b121-7170-aa03-8c5b-b0e2362051bc",
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
				name = "Draws - Ifrit",
				uuid = "528ec0c2-a2ad-d3f8-802c-c736ec932f48",
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
							displayPath = "",
							name = "Draws - Ifrit",
							uuid = "f67ee4eb-df84-e542-85e0-c370d2c62511",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player=TensorCore.mGetPlayer()\nlocal boss=TensorCore.mGetEntity(eventArgs.entityID)\nif not player or not player.pos or not boss or not boss.pos then self.used=true return end\nlocal h=eventArgs.heading or boss.pos.h or 0\nlocal sx=math.cos(h)\nlocal sz=-math.sin(h)\nlocal right={x=boss.pos.x+sx*18,y=player.pos.y,z=boss.pos.z+sz*18}\nlocal left={x=boss.pos.x-sx*18,y=player.pos.y,z=boss.pos.z-sz*18}\nlocal dest=right\nif TensorCore.getDistance2d(player.pos,left)<TensorCore.getDistance2d(player.pos,right) then dest=left end\nlocal distance=TensorCore.getDistance2d(player.pos,dest)\nif distance>0.2 then\n local tip=math.min(2.5,distance*0.35)\n local drawer=TensorCore.getCachedDrawer(0xFFFFD080,0xFFFFA000,0xFFFFFFFF,0xFF000000,4)\n drawer:addTimedArrow(7000,player.pos.x,player.pos.y,player.pos.z,TensorCore.getHeadingToTarget(player.pos,dest),math.max(0.1,distance-tip),1.4,tip,3.0,0,false,Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\nend\nAnyoneCore.addTimedWorldText(7000,\"CRIMSON: SAFE SIDE\",{x=dest.x,y=dest.y+1.2,z=dest.z},0xFFFFD080,true,1.1)\nself.used=true",
							conditions = 
							{
								
								{
									"00d8311c-c4b4-6f87-90e3-b2192f11475b",
									true,
								},
							},
							displayPath = "Draws - Ifrit",
							name = "Crimson Safe Side",
							uuid = "0ed833c0-c802-cb93-ac21-d7811dce7569",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.spellID==11103 and eventArgs.entityContentID==1185",
							dequeueIfLuaFalse = true,
							name = "Crimson Cyclone Cast",
							uuid = "00d8311c-c4b4-6f87-90e3-b2192f11475b",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Ifrit",
				eventType = 3,
				mechanicTime = 1408,
				name = "[Draw][LPDU][Ifrit] Crimson Cyclone Safe Side",
				timeRange = true,
				timelineIndex = 219,
				timerEndOffset = 5,
				timerStartOffset = -1,
				uuid = "d6ff1be8-34a2-a743-96f2-74b76e1433b9",
				version = 2,
			},
		},
	},
	[220] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Ultima",
				uuid = "bfb26bf5-f924-325b-9d3b-8e91c0569ea0",
			},
			objectType = "folder",
		},
	},
	[221] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Ultima",
				uuid = "a16cf4a1-88a5-96cd-8917-2a908c33b7c3",
			},
			objectType = "folder",
		},
	},
	[224] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Titan LPDU",
				uuid = "d5159590-258f-8e4a-af32-ba7163119b23",
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
							displayPath = "",
							name = "Draws - Titan LPDU",
							uuid = "85176514-929d-1b17-acf5-267b8a5107cd",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 2500,
							alertPriority = 3,
							alertScale = 0.9,
							alertTTS = true,
							alertText = "DODGE WEIGHT OF THE LAND",
							conditions = 
							{
								
								{
									"29a7aab0-f0d1-cf67-b1b9-1e6927326b81",
									true,
								},
							},
							displayPath = "Draws - Titan LPDU",
							name = "[Alert] Weight of the Land - Dodge 1505",
							uuid = "8e20cfcd-b083-127b-bdcc-41777603d3ac",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs and eventArgs.aoeID == 11109 and eventArgs.contentID == 1801 and eventArgs.friendly == false",
							dequeueIfLuaFalse = true,
							name = "Weight of the Land AOE",
							uuid = "29a7aab0-f0d1-cf67-b1b9-1e6927326b81",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Titan LPDU",
				eventType = 18,
				mechanicTime = 1505,
				name = "[Alert] Weight of the Land - Dodge 1505",
				timeRange = true,
				timelineIndex = 224,
				timerEndOffset = -2.5,
				timerStartOffset = -3.2000000476837,
				uuid = "dad11a84-d526-74a8-a17f-29e15d7ece43",
				version = 2,
			},
		},
	},
	[225] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Titan LPDU",
				uuid = "fb2b1a52-c627-2052-91af-9ec5cd4510cd",
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
							displayPath = "",
							name = "Draws - Titan LPDU",
							uuid = "d3939649-e41c-f707-bc76-1538d86cc30c",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 2500,
							alertPriority = 3,
							alertScale = 0.9,
							alertTTS = true,
							alertText = "DODGE WEIGHT OF THE LAND",
							conditions = 
							{
								
								{
									"71501620-6a79-9255-a42a-56bd67b25560",
									true,
								},
							},
							displayPath = "Draws - Titan LPDU",
							name = "[Alert] Weight of the Land - Dodge 1508",
							uuid = "39f250e5-2538-ad44-a0dc-675af027814d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs and eventArgs.aoeID == 11109 and eventArgs.contentID == 1801 and eventArgs.friendly == false",
							dequeueIfLuaFalse = true,
							name = "Weight of the Land AOE",
							uuid = "71501620-6a79-9255-a42a-56bd67b25560",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Titan LPDU",
				eventType = 18,
				mechanicTime = 1508,
				name = "[Alert] Weight of the Land - Dodge 1508",
				timeRange = true,
				timelineIndex = 225,
				timerEndOffset = -2.5,
				timerStartOffset = -3.2,
				uuid = "c175fc00-c7c9-cde4-bbc3-1ae624b03e76",
				version = 2,
			},
		},
	},
	[226] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Ultima",
				uuid = "fb91044c-fa98-6678-b4eb-804ab457be0d",
			},
			objectType = "folder",
		},
	},
	[227] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Titan LPDU",
				uuid = "cce35ce0-e6a3-8cd5-a9e1-8ab31285ab0a",
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
							displayPath = "",
							name = "Draws - Titan LPDU",
							uuid = "a67ee7ea-8e0c-b6b8-9c15-46f7ca30a006",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 2500,
							alertPriority = 3,
							alertScale = 0.9,
							alertTTS = true,
							alertText = "DODGE WEIGHT OF THE LAND",
							conditions = 
							{
								
								{
									"37897aa4-0385-033a-8b83-cf58b7adf953",
									true,
								},
							},
							displayPath = "Draws - Titan LPDU",
							name = "[Alert] Weight of the Land - Dodge 1511",
							uuid = "9e1e8a32-f421-8497-8d1f-6784cb5ff987",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs and eventArgs.aoeID == 11109 and eventArgs.contentID == 1801 and eventArgs.friendly == false",
							dequeueIfLuaFalse = true,
							name = "Weight of the Land AOE",
							uuid = "37897aa4-0385-033a-8b83-cf58b7adf953",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Titan LPDU",
				eventType = 18,
				mechanicTime = 1511,
				name = "[Alert] Weight of the Land - Dodge 1511",
				timeRange = true,
				timelineIndex = 227,
				timerEndOffset = -2.5,
				timerStartOffset = -3.2,
				uuid = "dd4e44ac-9e56-e7d4-a6a1-e41d0d189efc",
				version = 2,
			},
		},
	},
	inheritedProfiles = 
	{
	},
	timelineName = "uwu",
	version = "1.0.2",
}



return tbl
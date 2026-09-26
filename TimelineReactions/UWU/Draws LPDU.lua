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
							actionLua = "if GetCurrentRole() ~= \"M1\" then\n  self.used = true\n  return\nend\n\nlocal player = TensorCore.mGetPlayer()\nlocal barrierPos = _G.UWU_GarudaBarrierPosition\n\nif player and barrierPos then\n  local targetPos = barrierPos\n  local dx = 100 - barrierPos.x\n  local dz = 100 - barrierPos.z\n  local distanceToMiddle = math.sqrt(dx * dx + dz * dz)\n\n  if distanceToMiddle > 0.1 then\n    local bossSideShift = math.min(2, distanceToMiddle)\n    targetPos = {\n      x = barrierPos.x + (dx / distanceToMiddle) * bossSideShift,\n      y = barrierPos.y,\n      z = barrierPos.z + (dz / distanceToMiddle) * bossSideShift,\n    }\n  end\n\n  local sourcePos = player.pos\n  local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n  local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n  local scale = math.min(1, totalDistance / 15)\n  local baseWidth = math.max(0.5, scale)\n  local tipWidth = math.max(1.5, 3 * scale)\n  local tipLength = math.max(2, 3 * scale)\n  local baseLength = totalDistance - tipLength\n  local arrowDuration = 3000\n  local postHitDelay = math.floor(eventArgs.duration * 1000) + 1000\n\n  if baseLength > 0 then\n    local drawer = TensorCore.getCachedDrawer(\n      0xFF00FFFF,\n      0xFF0088FF,\n      0xFF0000FF,\n      0xFFFFFFFF,\n      2\n    )\n    drawer:addTimedArrow(\n      postHitDelay + arrowDuration,\n      sourcePos.x, sourcePos.y, sourcePos.z,\n      heading,\n      baseLength, baseWidth, tipLength, tipWidth,\n      postHitDelay, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\n  end\nend\n\nself.used = true",
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
							actionLua = "if GetCurrentRole() ~= \"M2\" then\n  self.used = true\n  return\nend\n\nlocal player = TensorCore.mGetPlayer()\nlocal barrierPos = _G.UWU_GarudaBarrierPosition\n\nif player and barrierPos then\n  local targetPos = barrierPos\n  local dx = 100 - barrierPos.x\n  local dz = 100 - barrierPos.z\n  local distanceToMiddle = math.sqrt(dx * dx + dz * dz)\n\n  if distanceToMiddle > 0.1 then\n    local bossSideShift = math.min(2, distanceToMiddle)\n    targetPos = {\n      x = barrierPos.x + (dx / distanceToMiddle) * bossSideShift,\n      y = barrierPos.y,\n      z = barrierPos.z + (dz / distanceToMiddle) * bossSideShift,\n    }\n  end\n\n  local sourcePos = player.pos\n  local heading = TensorCore.getHeadingToTarget(sourcePos, targetPos)\n  local totalDistance = TensorCore.getDistance2d(sourcePos, targetPos)\n  local scale = math.min(1, totalDistance / 15)\n  local baseWidth = math.max(0.5, scale)\n  local tipWidth = math.max(1.5, 3 * scale)\n  local tipLength = math.max(2, 3 * scale)\n  local baseLength = totalDistance - tipLength\n  local arrowDuration = 3000\n  local postHitDelay = math.floor(eventArgs.duration * 1000) + 3000\n\n  if baseLength > 0 then\n    local drawer = TensorCore.getCachedDrawer(\n      0xFF00FFFF,\n      0xFF0088FF,\n      0xFF0000FF,\n      0xFFFFFFFF,\n      2\n    )\n    drawer:addTimedArrow(\n      postHitDelay + arrowDuration,\n      sourcePos.x, sourcePos.y, sourcePos.z,\n      heading,\n      baseLength, baseWidth, tipLength, tipWidth,\n      postHitDelay, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\n  end\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"5b478b52-d61e-7bb4-98d1-ef0b4cc3508d",
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
							conditionLua = "return eventArgs.aoeID == 11080",
							dequeueIfLuaFalse = true,
							name = "Observed Friction AOE",
							uuid = "5b478b52-d61e-7bb4-98d1-ef0b4cc3508d",
							version = 3,
						},
					},
				},
				displayPath = "Draws - Garuda",
				eventType = 18,
				mechanicTime = 57,
				name = "[Draw] Friction 2 - M2 Barrier Arrow",
				timeRange = true,
				timelineIndex = 13,
				timerStartOffset = -3,
				uuid = "ebbec822-982e-60fc-b29c-67fb4a4cc5db",
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
				timerEndOffset = 10,
				uuid = "fd6dd169-23ea-ba63-a252-d37a22ef62bf",
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
							actionLua = "local labels = data.uwu_relative_nails\nif not labels or not labels.nails or not labels.textIDs then\n    self.used = true\n    return\nend\n\nlocal list = {}\nfor _, nail in pairs(labels.nails) do\n    list[#list + 1] = nail\nend\nif #list ~= 4 then\n    self.used = true\n    return\nend\n\nlocal northAIndex, northBIndex = 1, 2\nlocal minDistanceSquared = math.huge\nfor i = 1, 3 do\n    for j = i + 1, 4 do\n        local dx = list[i].x - list[j].x\n        local dz = list[i].z - list[j].z\n        local distanceSquared = dx * dx + dz * dz\n        if distanceSquared < minDistanceSquared then\n            minDistanceSquared = distanceSquared\n            northAIndex = i\n            northBIndex = j\n        end\n    end\nend\n\nlocal northA = list[northAIndex]\nlocal northB = list[northBIndex]\nlocal southA\nlocal southB\nfor i = 1, 4 do\n    if i ~= northAIndex and i ~= northBIndex then\n        if not southA then\n            southA = list[i]\n        else\n            southB = list[i]\n        end\n    end\nend\n\nlocal northCenterX = (northA.x + northB.x) * 0.5\nlocal northCenterZ = (northA.z + northB.z) * 0.5\nlocal southCenterX = (southA.x + southB.x) * 0.5\nlocal southCenterZ = (southA.z + southB.z) * 0.5\nlocal northX = northCenterX - southCenterX\nlocal northZ = northCenterZ - southCenterZ\nlocal northLength = math.sqrt(northX * northX + northZ * northZ)\nif northLength < 0.01 then\n    self.used = true\n    return\nend\n\nlocal eastX = -northZ / northLength\nlocal eastZ = northX / northLength\nlocal numbers = {}\n\nlocal northASide = (northA.x - northCenterX) * eastX + (northA.z - northCenterZ) * eastZ\nnumbers[northA.id] = northASide >= 0 and 3 or 4\nlocal northBSide = (northB.x - northCenterX) * eastX + (northB.z - northCenterZ) * eastZ\nnumbers[northB.id] = northBSide >= 0 and 3 or 4\nlocal southASide = (southA.x - southCenterX) * eastX + (southA.z - southCenterZ) * eastZ\nnumbers[southA.id] = southASide >= 0 and 1 or 2\nlocal southBSide = (southB.x - southCenterX) * eastX + (southB.z - southCenterZ) * eastZ\nnumbers[southB.id] = southBSide >= 0 and 1 or 2\n\nlocal living = {}\nlocal lowestLivingNumber = 5\nfor entityID, number in pairs(numbers) do\n    local entity = TensorCore.mGetEntity(entityID)\n    if labels.textIDs[entityID] and entity and entity.hp and entity.hp.current > 0 then\n        living[entityID] = { entity = entity, number = number }\n        if number < lowestLivingNumber then\n            lowestLivingNumber = number\n        end\n    end\nend\n\nif lowestLivingNumber == 5 then\n    self.used = true\n    return\nend\n\nlocal greenDrawer = TensorCore.getCachedDrawer(\n    0x6600FF00, 0xBB00FF00, 0xFF00FF00, 0xFF000000, 3\n)\nlocal redDrawer = TensorCore.getCachedDrawer(\n    0x660000FF, 0xBB0000FF, 0xFF0000FF, 0xFF000000, 3\n)\n\nfor _, entry in pairs(living) do\n    local isActive = entry.number == lowestLivingNumber\n    local drawer = isActive and greenDrawer or redDrawer\n    local radius = isActive and 2.6 or 1.25\n    drawer:addTimedCircleOnEnt(\n        700, entry.entity.id, radius,\n        0, false, true, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nself.used = true",
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
							alertScale = 0.9,
							alertTTS = true,
							alertText = "MELEE: BURN DPS-CLOSE NAIL TO 40%, THEN FOLLOW ORDER",
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
							gVar = "ACR_RikuMNK3_CD",
							uuid = "2012bfac-34b1-d064-a9a7-c73896519fa0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 328,
				name = "[TTS CALLout] ",
				timelineIndex = 43,
				timerOffset = 3,
				uuid = "3f19af91-6517-294d-a6a0-7cad90b71e4d",
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
							actionLua = "local player = TensorCore.mGetPlayer()\nlocal ifrit = TensorCore.mGetEntity(eventArgs.ownerID)\nlocal state = data.uwu_ifrit_last_nail\nlocal last = state and state.last\nif not player or not ifrit or not last then\n    self.used = true\n    return\nend\n\nlocal party = TensorCore.getEntityGroupList(\"Party\")\nlocal firstID\nlocal secondID\nlocal firstDistance = -1\nlocal secondDistance = -1\n\nfor _, member in pairs(party or {}) do\n    if member and member.id ~= eventArgs.entityID and member.hp and member.hp.current > 0 then\n        local distance = TensorCore.getDistance2d(member.pos, ifrit.pos)\n        if distance > firstDistance then\n            secondID = firstID\n            secondDistance = firstDistance\n            firstID = member.id\n            firstDistance = distance\n        elseif distance > secondDistance then\n            secondID = member.id\n            secondDistance = distance\n        end\n    end\nend\n\nif player.id ~= firstID and player.id ~= secondID then\n    self.used = true\n    return\nend\n\nlocal northX = last.x - 100\nlocal northZ = last.z - 100\nlocal northLength = math.sqrt(northX * northX + northZ * northZ)\nif northLength < 0.1 then\n    self.used = true\n    return\nend\n\nnorthX = northX / northLength\nnorthZ = northZ / northLength\nlocal eastX = -northZ\nlocal eastZ = northX\n\nlocal southeast = {\n    x = 100 + eastX * 13.5 - northX * 13.5,\n    y = player.pos.y,\n    z = 100 + eastZ * 13.5 - northZ * 13.5\n}\nlocal northAlongEastWall = {\n    x = 100 + eastX * 16 + northX * 9.5,\n    y = player.pos.y,\n    z = 100 + eastZ * 16 + northZ * 9.5\n}\n\nlocal toStartDistance = TensorCore.getDistance2d(player.pos, southeast)\nlocal routeDistance = TensorCore.getDistance2d(southeast, northAlongEastWall)\nlocal startDrawer = TensorCore.getCachedDrawer(\n    0xFFFFE070, 0xFFFFB000, 0xFFFFFFFF, 0xFF000000, 4\n)\nlocal routeDrawer = TensorCore.getCachedDrawer(\n    0xFF70F0FF, 0xFF00B8FF, 0xFFFFFFFF, 0xFF000000, 4\n)\n\nif toStartDistance > 0.2 then\n    local tipLength = math.min(2.5, toStartDistance * 0.4)\n    startDrawer:addTimedArrow(\n        3200, player.pos.x, player.pos.y, player.pos.z,\n        TensorCore.getHeadingToTarget(player.pos, southeast),\n        math.max(0.1, toStartDistance - tipLength), 1.4, tipLength, 3.0,\n        0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nif routeDistance > 0.2 then\n    local tipLength = math.min(2.5, routeDistance * 0.35)\n    routeDrawer:addTimedArrow(\n        6500, southeast.x, southeast.y, southeast.z,\n        TensorCore.getHeadingToTarget(southeast, northAlongEastWall),\n        math.max(0.1, routeDistance - tipLength), 1.5, tipLength, 3.2,\n        2000, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nself.used = true",
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
							actionLua = "local state = data.uwu_ifrit_dash2\nif not state or state.drawn or not state.bossID then\n    self.used = true\n    return\nend\n\nlocal boss = TensorCore.mGetEntity(state.bossID)\nlocal player = TensorCore.mGetPlayer()\nif not boss or not player then\n    return\nend\n\nlocal bossDX = boss.pos.x - 100\nlocal bossDZ = boss.pos.z - 100\nlocal playerDX = player.pos.x - 100\nlocal playerDZ = player.pos.z - 100\nlocal playerRadius = math.sqrt(playerDX * playerDX + playerDZ * playerDZ)\nif playerRadius < 5 then\n    return\nend\n\nif not state.octant then\n    function state.octant(dx, dz)\n        local ax = math.abs(dx)\n        local az = math.abs(dz)\n        if ax > az * 2.414214 then\n            return dx >= 0 and 0 or 4\n        end\n        if az > ax * 2.414214 then\n            return dz >= 0 and 2 or 6\n        end\n        if dx >= 0 then\n            return dz >= 0 and 1 or 7\n        end\n        return dz >= 0 and 3 or 5\n    end\n\n    function state.pointFor(index, radius, y)\n        local diagonal = radius * 0.7071068\n        if index == 0 then return { x = 100 + radius, y = y, z = 100 } end\n        if index == 1 then return { x = 100 + diagonal, y = y, z = 100 + diagonal } end\n        if index == 2 then return { x = 100, y = y, z = 100 + radius } end\n        if index == 3 then return { x = 100 - diagonal, y = y, z = 100 + diagonal } end\n        if index == 4 then return { x = 100 - radius, y = y, z = 100 } end\n        if index == 5 then return { x = 100 - diagonal, y = y, z = 100 - diagonal } end\n        if index == 6 then return { x = 100, y = y, z = 100 - radius } end\n        return { x = 100 + diagonal, y = y, z = 100 - diagonal }\n    end\nend\n\nlocal blueIndex = state.octant(bossDX, bossDZ)\nlocal playerIndex = state.octant(playerDX, playerDZ)\nlocal nextIndex = playerIndex - 1\nif nextIndex < 0 then nextIndex = nextIndex + 8 end\n\nlocal targetIndex = nextIndex\nif (targetIndex % 2) ~= (blueIndex % 2) then\n    targetIndex = targetIndex - 1\n    if targetIndex < 0 then targetIndex = targetIndex + 8 end\nend\n\nlocal firstPoint = state.pointFor(nextIndex, playerRadius, player.pos.y)\nlocal targetPoint = state.pointFor(targetIndex, playerRadius, player.pos.y)\nlocal drawer = TensorCore.getCachedDrawer(\n    0xFFCBFFB8, 0xFF5DF27B, 0xFFFFFFFF, 0xFF000000, 5\n)\n\nlocal firstDistance = TensorCore.getDistance2d(player.pos, firstPoint)\nif firstDistance > 0.2 then\n    local tip = math.min(2.8, firstDistance * 0.38)\n    drawer:addTimedArrow(\n        11000, player.pos.x, player.pos.y, player.pos.z,\n        TensorCore.getHeadingToTarget(player.pos, firstPoint),\n        math.max(0.1, firstDistance - tip), 1.55, tip, 3.25,\n        0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nlocal finalDistance = TensorCore.getDistance2d(firstPoint, targetPoint)\nif finalDistance > 0.2 then\n    local tip = math.min(2.8, finalDistance * 0.38)\n    drawer:addTimedArrow(\n        11000, firstPoint.x, firstPoint.y, firstPoint.z,\n        TensorCore.getHeadingToTarget(firstPoint, targetPoint),\n        math.max(0.1, finalDistance - tip), 1.55, tip, 3.25,\n        0, false, Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nlocal endLabel = (blueIndex % 2 == 0) and \"END: CARDINAL\" or \"END: INTERCARDINAL\"\nAnyoneCore.addTimedWorldText(\n    11000, \"BLUE: \" .. endLabel:sub(6),\n    { x = boss.pos.x, y = boss.pos.y + 5, z = boss.pos.z },\n    0xFF00E5FF, true, 1.45\n)\nAnyoneCore.addTimedWorldText(\n    11000, endLabel,\n    { x = targetPoint.x, y = targetPoint.y + 0.5, z = targetPoint.z },\n    0xFF76FF76, true, 1.35\n)\n\nstate.drawn = true\nself.used = true",
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
							conditionLua = "return eventArgs.entityContentID == 1185 and eventArgs.spellID == 11103",
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
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player = TensorCore.mGetPlayer()\nif not player or not player.pos then\n    self.used = true\n    return\nend\n\nlocal center = { x = 100, y = player.pos.y, z = 100 }\nlocal dx = player.pos.x - center.x\nlocal dz = player.pos.z - center.z\nlocal distanceFromCenter = math.sqrt(dx * dx + dz * dz)\nif distanceFromCenter < 0.1 then\n    dx = 0\n    dz = -1\n    distanceFromCenter = 1\nend\n\nlocal target = {\n    x = center.x + dx / distanceFromCenter * 17.5,\n    y = center.y,\n    z = center.z + dz / distanceFromCenter * 17.5,\n}\nlocal distance = TensorCore.getDistance2d(player.pos, target)\nif distance > 0.2 then\n    local tipLength = math.min(2.0, distance * 0.35)\n    local drawer = TensorCore.getCachedDrawer(\n        0xFF66DDFF,\n        0xFF0088FF,\n        0xFF0044AA,\n        0xFFFFFFFF,\n        2\n    )\n    drawer:addTimedArrow(\n        8500,\n        player.pos.x, player.pos.y, player.pos.z,\n        TensorCore.getHeadingToTarget(player.pos, target),\n        math.max(0.1, distance - tipLength),\n        1.0,\n        tipLength,\n        2.4,\n        0,\n        false,\n        Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nlocal drawer = TensorCore.getCachedDrawer(\n    0x5533CCFF,\n    0x5533CCFF,\n    0xAA0088FF,\n    0xFFFFFFFF,\n    2\n)\ndrawer:addTimedCircle(8500, target.x, target.y, target.z, 1.4, 0, false, true)\nAnyoneCore.addTimedWorldText(\n    8500,\n    \"GEocrush: HUG EDGE\",\n    { x = target.x, y = target.y + 1.5, z = target.z },\n    0xFF66DDFF,\n    true,\n    1.0\n)\n\nself.used = true",
							name = "Guide",
							uuid = "23026860-6b7f-c477-8798-c4b2618e8d49",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Draws - Titan LPDU",
				mechanicTime = 600,
				name = "[Draw][LPDU][Titan] Geocrush Edge",
				timeRange = true,
				timelineIndex = 74,
				timerEndOffset = 3,
				timerStartOffset = -5,
				uuid = "4c232eeb-4cda-0789-962a-a789fe2d57ae",
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
							actionLua = "local player = TensorCore.mGetPlayer()\nif not player or not player.pos then\n    self.used = true\n    return\nend\n\nlocal center = { x = 100, y = player.pos.y, z = 100 }\nlocal targetEntity = TensorCore.mGetTarget()\nlocal dx\nlocal dz\nif targetEntity and targetEntity.pos then\n    dx = targetEntity.pos.x - center.x\n    dz = targetEntity.pos.z - center.z\nelse\n    dx = player.pos.x - center.x\n    dz = player.pos.z - center.z\nend\nlocal distanceFromCenter = math.sqrt(dx * dx + dz * dz)\nif distanceFromCenter < 0.1 then\n    dx = 0\n    dz = -1\n    distanceFromCenter = 1\nend\n\nlocal target = {\n    x = center.x - dx / distanceFromCenter * 17.5,\n    y = center.y,\n    z = center.z - dz / distanceFromCenter * 17.5,\n}\nlocal distance = TensorCore.getDistance2d(player.pos, target)\nif distance > 0.2 then\n    local tipLength = math.min(2.0, distance * 0.35)\n    local drawer = TensorCore.getCachedDrawer(\n        0xFFFFCC66,\n        0xFFFF8800,\n        0xFFAA4400,\n        0xFFFFFFFF,\n        2\n    )\n    drawer:addTimedArrow(\n        8500,\n        player.pos.x, player.pos.y, player.pos.z,\n        TensorCore.getHeadingToTarget(player.pos, target),\n        math.max(0.1, distance - tipLength),\n        1.0,\n        tipLength,\n        2.4,\n        0,\n        false,\n        Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nlocal drawer = TensorCore.getCachedDrawer(\n    0x55FFAA33,\n    0x55FFAA33,\n    0xFFAA6600,\n    0xFFFFFFFF,\n    2\n)\ndrawer:addTimedCircle(8500, target.x, target.y, target.z, 1.4, 0, false, true)\nAnyoneCore.addTimedWorldText(\n    8500,\n    \"GEocrush 2: OPPOSITE EDGE\",\n    { x = target.x, y = target.y + 1.5, z = target.z },\n    0xFFFFCC66,\n    true,\n    1.0\n)\n\nself.used = true",
							name = "Guide",
							uuid = "3524e5b8-2863-ab54-93fa-e740f72b127d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Draws - Titan LPDU",
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
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player = TensorCore.mGetPlayer()\nif not player or not player.pos then\n    self.used = true\n    return\nend\n\nlocal center = { x = 100, y = player.pos.y, z = 100 }\nlocal dx = player.pos.x - center.x\nlocal dz = player.pos.z - center.z\nlocal radius = math.sqrt(dx * dx + dz * dz)\nif radius < 6 then\n    dx = 0\n    dz = -1\n    radius = 12.5\nelse\n    radius = math.max(10, math.min(15, radius))\nend\n\nlocal angle = math.atan2(dx, dz)\nlocal nextAngle = angle - math.pi / 4\nlocal target = {\n    x = center.x + math.sin(nextAngle) * radius,\n    y = center.y,\n    z = center.z + math.cos(nextAngle) * radius,\n}\nlocal distance = TensorCore.getDistance2d(player.pos, target)\nif distance > 0.2 then\n    local tipLength = math.min(1.8, distance * 0.35)\n    local drawer = TensorCore.getCachedDrawer(\n        0xFF99FF99,\n        0xFF33CC66,\n        0xFF168844,\n        0xFFFFFFFF,\n        2\n    )\n    drawer:addTimedArrow(\n        11000,\n        player.pos.x, player.pos.y, player.pos.z,\n        TensorCore.getHeadingToTarget(player.pos, target),\n        math.max(0.1, distance - tipLength),\n        1.0,\n        tipLength,\n        2.3,\n        0,\n        false,\n        Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nlocal drawer = TensorCore.getCachedDrawer(\n    0x5533CC66,\n    0x5533CC66,\n    0xAA33CC66,\n    0xFFFFFFFF,\n    2\n)\ndrawer:addTimedCircle(11000, target.x, target.y, target.z, 1.25, 0, false, true)\nAnyoneCore.addTimedWorldText(\n    11000,\n    \"MARIO KART: ROTATE CLOCKWISE\",\n    { x = target.x, y = target.y + 1.5, z = target.z },\n    0xFF99FF99,\n    true,\n    1.0\n)\n\nself.used = true",
							name = "Guide",
							uuid = "19e735dc-2619-7340-b703-c8151484f899",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Draws - Titan LPDU",
				mechanicTime = 666,
				name = "[Draw][LPDU][Titan] Mario Kart 1",
				timeRange = true,
				timelineIndex = 90,
				timerEndOffset = 6,
				timerStartOffset = -5,
				uuid = "c21d73db-0dab-5df7-865d-0d64c554430a",
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
				timerStartOffset = -5,
				uuid = "6af9e6ec-42ea-47bd-850c-0bd4e9006ace",
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
							actionLua = "local player = TensorCore.mGetPlayer()\nif not player or not player.pos then\n    self.used = true\n    return\nend\n\nlocal center = { x = 100, y = player.pos.y, z = 100 }\nlocal dx = player.pos.x - center.x\nlocal dz = player.pos.z - center.z\nlocal radius = math.sqrt(dx * dx + dz * dz)\nif radius < 6 then\n    dx = 0\n    dz = -1\n    radius = 12.5\nelse\n    radius = math.max(10, math.min(15, radius))\nend\n\nlocal angle = math.atan2(dx, dz)\nlocal nextAngle = angle - math.pi / 4\nlocal target = {\n    x = center.x + math.sin(nextAngle) * radius,\n    y = center.y,\n    z = center.z + math.cos(nextAngle) * radius,\n}\nlocal distance = TensorCore.getDistance2d(player.pos, target)\nif distance > 0.2 then\n    local tipLength = math.min(1.8, distance * 0.35)\n    local drawer = TensorCore.getCachedDrawer(\n        0xFF99FF99,\n        0xFF33CC66,\n        0xFF168844,\n        0xFFFFFFFF,\n        2\n    )\n    drawer:addTimedArrow(\n        11000,\n        player.pos.x, player.pos.y, player.pos.z,\n        TensorCore.getHeadingToTarget(player.pos, target),\n        math.max(0.1, distance - tipLength),\n        1.0,\n        tipLength,\n        2.3,\n        0,\n        false,\n        Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nlocal drawer = TensorCore.getCachedDrawer(\n    0x5533CC66,\n    0x5533CC66,\n    0xAA33CC66,\n    0xFFFFFFFF,\n    2\n)\ndrawer:addTimedCircle(11000, target.x, target.y, target.z, 1.25, 0, false, true)\nAnyoneCore.addTimedWorldText(\n    11000,\n    \"MARIO KART: ROTATE CLOCKWISE\",\n    { x = target.x, y = target.y + 1.5, z = target.z },\n    0xFF99FF99,\n    true,\n    1.0\n)\n\nself.used = true",
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
				timerEndOffset = 6,
				timerStartOffset = -5,
				uuid = "f9fab7e4-908e-c846-aa91-c590a9f89caf",
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
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player = TensorCore.mGetPlayer()\nif not player or not player.pos then\n    self.used = true\n    return\nend\n\nlocal center = { x = 100, y = player.pos.y, z = 100 }\nlocal dx = player.pos.x - center.x\nlocal dz = player.pos.z - center.z\nlocal radius = math.sqrt(dx * dx + dz * dz)\nif radius < 6 then\n    dx = 0\n    dz = -1\n    radius = 12.5\nelse\n    radius = math.max(10, math.min(15, radius))\nend\n\nlocal angle = math.atan2(dx, dz)\nlocal nextAngle = angle - math.pi / 4\nlocal target = {\n    x = center.x + math.sin(nextAngle) * radius,\n    y = center.y,\n    z = center.z + math.cos(nextAngle) * radius,\n}\nlocal distance = TensorCore.getDistance2d(player.pos, target)\nif distance > 0.2 then\n    local tipLength = math.min(1.8, distance * 0.35)\n    local drawer = TensorCore.getCachedDrawer(\n        0xFF99FF99,\n        0xFF33CC66,\n        0xFF168844,\n        0xFFFFFFFF,\n        2\n    )\n    drawer:addTimedArrow(\n        11000,\n        player.pos.x, player.pos.y, player.pos.z,\n        TensorCore.getHeadingToTarget(player.pos, target),\n        math.max(0.1, distance - tipLength),\n        1.0,\n        tipLength,\n        2.3,\n        0,\n        false,\n        Argus2.RenderFlags.FLAG_RENDER_OVERLAY\n    )\nend\n\nlocal drawer = TensorCore.getCachedDrawer(\n    0x5533CC66,\n    0x5533CC66,\n    0xAA33CC66,\n    0xFFFFFFFF,\n    2\n)\ndrawer:addTimedCircle(11000, target.x, target.y, target.z, 1.25, 0, false, true)\nAnyoneCore.addTimedWorldText(\n    11000,\n    \"MARIO KART: ROTATE CLOCKWISE\",\n    { x = target.x, y = target.y + 1.5, z = target.z },\n    0xFF99FF99,\n    true,\n    1.0\n)\n\nself.used = true",
							name = "Guide",
							uuid = "3cba2c66-1641-4142-af6d-15fd97a588fe",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Draws - Titan LPDU",
				mechanicTime = 744,
				name = "[Draw][LPDU][Titan] Final Mario Kart",
				timeRange = true,
				timelineIndex = 109,
				timerEndOffset = 8,
				timerStartOffset = -5,
				uuid = "49ca82f7-da0e-3871-8b89-f0be1c9de80f",
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
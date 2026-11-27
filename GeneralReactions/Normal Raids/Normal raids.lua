local tbl = 
{
	
	{
		data = 
		{
			displayPath = "",
			name = "Alexander - The Fist of the Son",
			uuid = "51642bc7-7656-d132-970d-30dd93540ef0",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Alexander - The Fist of the Son",
			name = "Ratfinx Twinkledinks",
			uuid = "6ca2d568-f131-60d9-9a03-62951ef0b222",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Alexander - The Fist of the Son/Ratfinx Twinkledinks",
			name = "Draws",
			uuid = "f0d9a6f5-fd8d-a73e-b091-e2c2dab78146",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal e = eventArgs\nlocal shapes = {[5534]=\"circle\"}\nlocal ms = math.floor(e.startTime + e.duration * 1000 - Now())\nif ms > 0 then\n    local drawer = TensorCore.getStaticDrawer(0x803333FF, 2)\n    if shapes[e.aoeID] == \"circle\" then\n        drawer:addTimedCircle(ms, e.x, e.y, e.z, e.aoeLength, 0, false, true)\n    else\n        drawer:addTimedRect(ms, e.x, e.y, e.z, e.aoeLength, e.aoeWidth, e.heading, 0, false, true)\n    end\n    AnyoneCore.addWorldTextCountdown(ms, {x=e.x,y=e.y+1,z=e.z}, 0xFFFFFFFF, true, 1.1)\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"0f51d153-77ff-06e3-a4ca-f8f3c916bf1c",
								true,
							},
						},
						name = "A5N hazard draws",
						uuid = "6d72712b-f3a5-66e3-b20e-8ff1474c51d5",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 520 and (eventArgs.aoeID == 5534)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "0f51d153-77ff-06e3-a4ca-f8f3c916bf1c",
						version = 3,
					},
				},
			},
			displayPath = "Alexander - The Fist of the Son/Ratfinx Twinkledinks/Draws",
			eventType = 18,
			name = "A5N hazard draws",
			uuid = "82b55ba8-7534-c5aa-ab78-e1745634ee75",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Alexander - The Fist of the Son/Ratfinx Twinkledinks",
			name = "AutoSim",
			uuid = "33f23201-07eb-ec47-8c64-d1f6d90f0201",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local settings = AnyoneCore and AnyoneCore.Settings\nif settings then\n    if settings.DutyHelper then settings.DutyHelper.enabled = false end\n    if settings.PrepullHelper then settings.PrepullHelper.enabled = false end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"ebd9b89c-94a4-eb67-8f22-8c2d9e396dc3",
								true,
							},
						},
						name = "A5N helper setup",
						uuid = "3c508b34-3f80-11a2-b24c-5b18f1c38abc",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 520 and (true)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "ebd9b89c-94a4-eb67-8f22-8c2d9e396dc3",
						version = 3,
					},
				},
			},
			displayPath = "Alexander - The Fist of the Son/Ratfinx Twinkledinks/AutoSim",
			eventType = 11,
			name = "A5N helper setup",
			uuid = "7a0d5603-b2a5-57dd-94ea-8061b0c925cd",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 520 then self.used = true; return end\ndata.normalRaidsInitialTargets = data.normalRaidsInitialTargets or {}\nlocal states = data.normalRaidsInitialTargets\nlocal state = states[\"520_4687\"] or {}\nstates[\"520_4687\"] = state\nlocal current = TensorCore.mGetTarget()\nlocal label = \"[Normal raids targeting] Ratfinx Twinkledinks\"\nif state.pending then\n    if current and current.id == state.pending then\n        d(label .. \" confirmed target=\" .. tostring(current.id))\n        state.pending = nil\n    elseif Now() - state.requestedAt >= 1500 then\n        d(label .. \" request not confirmed; intended=\" .. tostring(state.pending) ..\n            \" current=\" .. tostring(current and current.id))\n        state.pending = nil\n    end\n    self.used = true\n    return\nend\nif player.incombat or state.done then self.used = true; return end\nlocal boss, nearest = nil, 35 * 35\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=4687}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx = candidate.pos.x - player.pos.x\n        local dy = candidate.pos.y - player.pos.y\n        local dz = candidate.pos.z - player.pos.z\n        local distance = dx*dx + dy*dy + dz*dz\n        if distance <= nearest then\n            boss, nearest = candidate, distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label .. \" waiting for an attackable boss within 35 yalms; current=\" ..\n            tostring(current and current.id))\n        state.waitLogged = true\n    end\n    self.used = true\n    return\nend\nstate.done = true\nif current and current.alive and current.targetable and current.attackable then\n    d(label .. \" kept existing target; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current.id))\nelse\n    state.pending = boss.id\n    state.requestedAt = Now()\n    d(label .. \" target request; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"0f087177-1361-3da9-a6ac-ba901244014c",
								true,
							},
						},
						name = "Select nearby boss once",
						uuid = "b2f676a0-156c-7d5f-a467-6fcaf5c41e25",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 520 then return false end\nlocal states = data.normalRaidsInitialTargets\nlocal state = states and states[\"520_4687\"]\nreturn (state ~= nil and state.pending ~= nil) or (not player.incombat and (not state or not state.done))",
						dequeueIfLuaFalse = true,
						name = "Duty and initial target",
						uuid = "0f087177-1361-3da9-a6ac-ba901244014c",
						version = 3,
					},
				},
			},
			displayPath = "Alexander - The Fist of the Son/Ratfinx Twinkledinks/AutoSim",
			name = "A5N select boss at encounter start",
			throttleTime = 500,
			uuid = "93ba1075-9f2f-a1b2-a752-5db79fba861f",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal api = TensorCore.API.TensorACR\nlocal ok, elapsed = pcall(api.getAutoSimTime)\nif ok and type(elapsed) == \"number\" and elapsed >= 0 and elapsed <= 60 and not data.normalRaidForecastSet then\n    api.setAutoSimKillTime(153)\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0, 15)\n    data.normalRaidForecastSet = true\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"8e98d4c3-8c10-2b79-a3b7-af680e4a8595",
								true,
							},
						},
						name = "A5N AutoSim baseline",
						uuid = "6b2d7d7e-2f00-068f-9d36-fac05ac9c4b8",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 520 and (eventArgs.spellID == 5534 and not data.normalRaidForecastSet)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "8e98d4c3-8c10-2b79-a3b7-af680e4a8595",
						version = 3,
					},
				},
			},
			displayPath = "Alexander - The Fist of the Son/Ratfinx Twinkledinks/AutoSim",
			eventType = 3,
			name = "A5N AutoSim baseline",
			uuid = "facf99bc-8f86-4ba6-9edf-8c1be6732378",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Alexander - The Fist of the Son",
			name = "Hummelfaust",
			uuid = "e23f5f3d-7c09-3766-98f5-17b1d3a1790c",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Alexander - The Fist of the Son/Hummelfaust",
			name = "AutoSim",
			uuid = "2b71084f-b250-5a68-99be-3fe9204ee3aa",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 520 then self.used = true; return end\ndata.normalRaidsInitialTargets = data.normalRaidsInitialTargets or {}\nlocal states = data.normalRaidsInitialTargets\nlocal state = states[\"520_4709\"] or {}\nstates[\"520_4709\"] = state\nlocal current = TensorCore.mGetTarget()\nlocal label = \"[Normal raids targeting] Hummelfaust\"\nif state.pending then\n    if current and current.id == state.pending then\n        d(label .. \" confirmed target=\" .. tostring(current.id))\n        state.pending = nil\n    elseif Now() - state.requestedAt >= 1500 then\n        d(label .. \" request not confirmed; intended=\" .. tostring(state.pending) ..\n            \" current=\" .. tostring(current and current.id))\n        state.pending = nil\n    end\n    self.used = true\n    return\nend\nif player.incombat or state.done then self.used = true; return end\nlocal boss, nearest = nil, 35 * 35\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=4709}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx = candidate.pos.x - player.pos.x\n        local dy = candidate.pos.y - player.pos.y\n        local dz = candidate.pos.z - player.pos.z\n        local distance = dx*dx + dy*dy + dz*dz\n        if distance <= nearest then\n            boss, nearest = candidate, distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label .. \" waiting for an attackable boss within 35 yalms; current=\" ..\n            tostring(current and current.id))\n        state.waitLogged = true\n    end\n    self.used = true\n    return\nend\nstate.done = true\nif current and current.alive and current.targetable and current.attackable then\n    d(label .. \" kept existing target; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current.id))\nelse\n    state.pending = boss.id\n    state.requestedAt = Now()\n    d(label .. \" target request; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"9ad7d7a2-b9ff-da41-b702-38bb29143e6a",
								true,
							},
						},
						name = "Select nearby boss once",
						uuid = "2c9e1779-d399-fc1a-b6e5-4dbb071e2296",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 520 then return false end\nlocal states = data.normalRaidsInitialTargets\nlocal state = states and states[\"520_4709\"]\nreturn (state ~= nil and state.pending ~= nil) or (not player.incombat and (not state or not state.done))",
						dequeueIfLuaFalse = true,
						name = "Duty and initial target",
						uuid = "9ad7d7a2-b9ff-da41-b702-38bb29143e6a",
						version = 3,
					},
				},
			},
			displayPath = "Alexander - The Fist of the Son/Hummelfaust/AutoSim",
			name = "A5N select Hummelfaust at encounter start",
			throttleTime = 500,
			uuid = "ebbd3ab8-40a8-bed6-98eb-d353ddb83cd7",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Deltascape V1.0",
			uuid = "cfa14311-2701-9eed-8265-2353e86f49fa",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Deltascape V1.0",
			name = "Alte Roite",
			uuid = "d9808854-6486-0713-95e2-286aa3bc987f",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Deltascape V1.0/Alte Roite",
			name = "Draws",
			uuid = "280f7641-13d6-03b3-868f-adb7ab214a0a",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal e = eventArgs\nlocal shapes = {[9173]=\"circle\",[9186]=\"rect\"}\nlocal ms = math.floor(e.startTime + e.duration * 1000 - Now())\nif ms > 0 then\n    local drawer = TensorCore.getStaticDrawer(0x803333FF, 2)\n    if shapes[e.aoeID] == \"circle\" then\n        drawer:addTimedCircle(ms, e.x, e.y, e.z, e.aoeLength, 0, false, true)\n    else\n        drawer:addTimedRect(ms, e.x, e.y, e.z, e.aoeLength, e.aoeWidth, e.heading, 0, false, true)\n    end\n    AnyoneCore.addWorldTextCountdown(ms, {x=e.x,y=e.y+1,z=e.z}, 0xFFFFFFFF, true, 1.1)\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"3c1253dc-b52e-8c32-8f17-40911da4ee28",
								true,
							},
						},
						name = "O1N hazard draws",
						uuid = "4e4c5f04-46ee-44b9-babd-940502dfd3f0",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 691 and (eventArgs.aoeID == 9173 or eventArgs.aoeID == 9186)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "3c1253dc-b52e-8c32-8f17-40911da4ee28",
						version = 3,
					},
				},
			},
			displayPath = "Deltascape V1.0/Alte Roite/Draws",
			eventType = 18,
			name = "O1N hazard draws",
			uuid = "9ff7baa2-9099-530d-9956-9733ccf32d16",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Deltascape V1.0/Alte Roite",
			name = "AutoSim",
			uuid = "3887b338-b3bd-0d77-ad00-19ee666c0315",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local settings = AnyoneCore and AnyoneCore.Settings\nif settings then\n    if settings.DutyHelper then settings.DutyHelper.enabled = false end\n    if settings.PrepullHelper then settings.PrepullHelper.enabled = false end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"39ed941c-e4b5-b037-b477-d730a89461ed",
								true,
							},
						},
						name = "O1N helper setup",
						uuid = "25418a31-9b96-e571-a7ae-214a9de47810",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 691 and (true)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "39ed941c-e4b5-b037-b477-d730a89461ed",
						version = 3,
					},
				},
			},
			displayPath = "Deltascape V1.0/Alte Roite/AutoSim",
			eventType = 11,
			name = "O1N helper setup",
			uuid = "b0d1e928-9b4f-be6b-a336-bb4992e0edc6",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 691 then self.used = true; return end\ndata.normalRaidsInitialTargets = data.normalRaidsInitialTargets or {}\nlocal states = data.normalRaidsInitialTargets\nlocal state = states[\"691_5629\"] or {}\nstates[\"691_5629\"] = state\nlocal current = TensorCore.mGetTarget()\nlocal label = \"[Normal raids targeting] Alte Roite\"\nif state.pending then\n    if current and current.id == state.pending then\n        d(label .. \" confirmed target=\" .. tostring(current.id))\n        state.pending = nil\n    elseif Now() - state.requestedAt >= 1500 then\n        d(label .. \" request not confirmed; intended=\" .. tostring(state.pending) ..\n            \" current=\" .. tostring(current and current.id))\n        state.pending = nil\n    end\n    self.used = true\n    return\nend\nif player.incombat or state.done then self.used = true; return end\nlocal boss, nearest = nil, 35 * 35\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=5629}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx = candidate.pos.x - player.pos.x\n        local dy = candidate.pos.y - player.pos.y\n        local dz = candidate.pos.z - player.pos.z\n        local distance = dx*dx + dy*dy + dz*dz\n        if distance <= nearest then\n            boss, nearest = candidate, distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label .. \" waiting for an attackable boss within 35 yalms; current=\" ..\n            tostring(current and current.id))\n        state.waitLogged = true\n    end\n    self.used = true\n    return\nend\nstate.done = true\nif current and current.alive and current.targetable and current.attackable then\n    d(label .. \" kept existing target; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current.id))\nelse\n    state.pending = boss.id\n    state.requestedAt = Now()\n    d(label .. \" target request; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"423ef382-da62-7466-81fd-37ddb0bd5f49",
								true,
							},
						},
						name = "Select nearby boss once",
						uuid = "3196686b-d0a0-50d4-b50c-0332f6f2f51e",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 691 then return false end\nlocal states = data.normalRaidsInitialTargets\nlocal state = states and states[\"691_5629\"]\nreturn (state ~= nil and state.pending ~= nil) or (not player.incombat and (not state or not state.done))",
						dequeueIfLuaFalse = true,
						name = "Duty and initial target",
						uuid = "423ef382-da62-7466-81fd-37ddb0bd5f49",
						version = 3,
					},
				},
			},
			displayPath = "Deltascape V1.0/Alte Roite/AutoSim",
			name = "O1N select boss at encounter start",
			throttleTime = 500,
			uuid = "79834792-e177-9ff6-835e-8f709d4bbbee",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal api = TensorCore.API.TensorACR\nlocal ok, elapsed = pcall(api.getAutoSimTime)\nif ok and type(elapsed) == \"number\" and elapsed >= 0 and elapsed <= 60 and not data.normalRaidForecastSet then\n    api.setAutoSimKillTime(231)\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0, 15)\n    data.normalRaidForecastSet = true\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"8e081443-fa87-278a-8f2a-4779d6e9b8d8",
								true,
							},
						},
						name = "O1N AutoSim baseline",
						uuid = "12282c28-ea13-44f1-b64e-d790a9059b45",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 691 and (eventArgs.spellID == 9180 and not data.normalRaidForecastSet)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "8e081443-fa87-278a-8f2a-4779d6e9b8d8",
						version = 3,
					},
				},
			},
			displayPath = "Deltascape V1.0/Alte Roite/AutoSim",
			eventType = 3,
			name = "O1N AutoSim baseline",
			uuid = "b7fc0e6b-e0aa-db31-987f-49abc7ab1333",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Deltascape V2.0",
			uuid = "fa565562-b4cb-0217-ad4d-9636d4912f7d",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Deltascape V2.0",
			name = "Catastrophe",
			uuid = "37cf31bb-c322-e94c-8eff-a11f6a1ce52f",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Deltascape V2.0/Catastrophe",
			name = "Draws",
			uuid = "3f0b85e3-2257-94c0-8671-a55af4ae7bb5",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal e = eventArgs\nlocal shapes = {[9616]=\"circle\"}\nlocal ms = math.floor(e.startTime + e.duration * 1000 - Now())\nif ms > 0 then\n    local drawer = TensorCore.getStaticDrawer(0x803333FF, 2)\n    if shapes[e.aoeID] == \"circle\" then\n        drawer:addTimedCircle(ms, e.x, e.y, e.z, e.aoeLength, 0, false, true)\n    else\n        drawer:addTimedRect(ms, e.x, e.y, e.z, e.aoeLength, e.aoeWidth, e.heading, 0, false, true)\n    end\n    AnyoneCore.addWorldTextCountdown(ms, {x=e.x,y=e.y+1,z=e.z}, 0xFFFFFFFF, true, 1.1)\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"00f3fe6e-d35e-fec4-8700-7ab50090f976",
								true,
							},
						},
						name = "O2N hazard draws",
						uuid = "8bb791fd-3751-eb5d-a772-d711b3591407",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 692 and (eventArgs.aoeID == 9616)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "00f3fe6e-d35e-fec4-8700-7ab50090f976",
						version = 3,
					},
				},
			},
			displayPath = "Deltascape V2.0/Catastrophe/Draws",
			eventType = 18,
			name = "O2N hazard draws",
			uuid = "62def814-718b-b612-ace7-99a50eeb8339",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Deltascape V2.0/Catastrophe",
			name = "AutoSim",
			uuid = "e64102be-a060-6840-9e93-f9a7a156ad52",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local settings = AnyoneCore and AnyoneCore.Settings\nif settings then\n    if settings.DutyHelper then settings.DutyHelper.enabled = false end\n    if settings.PrepullHelper then settings.PrepullHelper.enabled = false end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"bc137dad-2160-6244-b6b1-fb53d2b6fa90",
								true,
							},
						},
						name = "O2N helper setup",
						uuid = "4749947a-3170-df41-a735-f49bda38d657",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 692 and (true)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "bc137dad-2160-6244-b6b1-fb53d2b6fa90",
						version = 3,
					},
				},
			},
			displayPath = "Deltascape V2.0/Catastrophe/AutoSim",
			eventType = 11,
			name = "O2N helper setup",
			uuid = "cd53ad38-20c9-5ea8-882d-378880a67d59",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 692 then self.used = true; return end\ndata.normalRaidsInitialTargets = data.normalRaidsInitialTargets or {}\nlocal states = data.normalRaidsInitialTargets\nlocal state = states[\"692_5631\"] or {}\nstates[\"692_5631\"] = state\nlocal current = TensorCore.mGetTarget()\nlocal label = \"[Normal raids targeting] Catastrophe\"\nif state.pending then\n    if current and current.id == state.pending then\n        d(label .. \" confirmed target=\" .. tostring(current.id))\n        state.pending = nil\n    elseif Now() - state.requestedAt >= 1500 then\n        d(label .. \" request not confirmed; intended=\" .. tostring(state.pending) ..\n            \" current=\" .. tostring(current and current.id))\n        state.pending = nil\n    end\n    self.used = true\n    return\nend\nif player.incombat or state.done then self.used = true; return end\nlocal boss, nearest = nil, 35 * 35\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=5631}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx = candidate.pos.x - player.pos.x\n        local dy = candidate.pos.y - player.pos.y\n        local dz = candidate.pos.z - player.pos.z\n        local distance = dx*dx + dy*dy + dz*dz\n        if distance <= nearest then\n            boss, nearest = candidate, distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label .. \" waiting for an attackable boss within 35 yalms; current=\" ..\n            tostring(current and current.id))\n        state.waitLogged = true\n    end\n    self.used = true\n    return\nend\nstate.done = true\nif current and current.alive and current.targetable and current.attackable then\n    d(label .. \" kept existing target; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current.id))\nelse\n    state.pending = boss.id\n    state.requestedAt = Now()\n    d(label .. \" target request; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"f2965cd0-68e5-0649-8093-14c360337f70",
								true,
							},
						},
						name = "Select nearby boss once",
						uuid = "dc2c4f7e-d9d5-c47a-a04c-3a566dde63b5",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 692 then return false end\nlocal states = data.normalRaidsInitialTargets\nlocal state = states and states[\"692_5631\"]\nreturn (state ~= nil and state.pending ~= nil) or (not player.incombat and (not state or not state.done))",
						dequeueIfLuaFalse = true,
						name = "Duty and initial target",
						uuid = "f2965cd0-68e5-0649-8093-14c360337f70",
						version = 3,
					},
				},
			},
			displayPath = "Deltascape V2.0/Catastrophe/AutoSim",
			name = "O2N select boss at encounter start",
			throttleTime = 500,
			uuid = "ed1ccb04-6930-3ebc-8c59-f913fd76f25b",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal api = TensorCore.API.TensorACR\nlocal ok, elapsed = pcall(api.getAutoSimTime)\nif ok and type(elapsed) == \"number\" and elapsed >= 0 and elapsed <= 60 and not data.normalRaidForecastSet then\n    api.setAutoSimKillTime(281)\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0, 15)\n    data.normalRaidForecastSet = true\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"7f1497d0-2236-2fd7-8812-806ec8705b49",
								true,
							},
						},
						name = "O2N AutoSim baseline",
						uuid = "799f441f-d228-b98b-bcd4-b040db6e5489",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 692 and (eventArgs.spellID == 9490 and not data.normalRaidForecastSet)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "7f1497d0-2236-2fd7-8812-806ec8705b49",
						version = 3,
					},
				},
			},
			displayPath = "Deltascape V2.0/Catastrophe/AutoSim",
			eventType = 3,
			name = "O2N AutoSim baseline",
			uuid = "19bc44a0-d845-a063-83a5-190b052effd6",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Eden's Verse: Refulgence",
			uuid = "095e0cc3-54bc-2924-bfe7-66525a48f9a8",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Eden's Verse: Refulgence",
			name = "Shiva",
			uuid = "9b8b3b05-3087-0afb-9b28-92edc63183f3",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Eden's Verse: Refulgence/Shiva",
			name = "Draws",
			uuid = "200e5204-ab9c-e13c-a592-7de163f3c204",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal e = eventArgs\nlocal shapes = {[19977]=\"circle\",[19978]=\"circle\"}\nlocal ms = math.floor(e.startTime + e.duration * 1000 - Now())\nif ms > 0 then\n    local drawer = TensorCore.getStaticDrawer(0x803333FF, 2)\n    if shapes[e.aoeID] == \"circle\" then\n        drawer:addTimedCircle(ms, e.x, e.y, e.z, e.aoeLength, 0, false, true)\n    else\n        drawer:addTimedRect(ms, e.x, e.y, e.z, e.aoeLength, e.aoeWidth, e.heading, 0, false, true)\n    end\n    AnyoneCore.addWorldTextCountdown(ms, {x=e.x,y=e.y+1,z=e.z}, 0xFFFFFFFF, true, 1.1)\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"3d97e404-b26a-e4e2-829c-ce51dc81a684",
								true,
							},
						},
						name = "E8N hazard draws",
						uuid = "784518a3-826b-dd04-997c-8c59bb0d9edc",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 905 and (eventArgs.aoeID == 19977 or eventArgs.aoeID == 19978)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "3d97e404-b26a-e4e2-829c-ce51dc81a684",
						version = 3,
					},
				},
			},
			displayPath = "Eden's Verse: Refulgence/Shiva/Draws",
			eventType = 18,
			name = "E8N hazard draws",
			uuid = "790de76b-5d88-d9c0-862c-88e9a8aa27ba",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Eden's Verse: Refulgence/Shiva",
			name = "AutoSim",
			uuid = "fd6dc84d-d828-7a94-9f59-acfad73f29a2",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local helper = AnyoneCore and AnyoneCore.Settings and AnyoneCore.Settings.DutyHelper\nif helper then helper.enabled = false end\nself.used = true",
						conditions = 
						{
							
							{
								"7303327d-9ea4-4350-96af-a3d489918a51",
								true,
							},
						},
						name = "E8N disable Duty Helper",
						uuid = "f509d93d-b418-1f5d-8a9d-943b9ff76c95",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 905 and (true)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "7303327d-9ea4-4350-96af-a3d489918a51",
						version = 3,
					},
				},
			},
			displayPath = "Eden's Verse: Refulgence/Shiva/AutoSim",
			eventType = 11,
			name = "E8N disable Duty Helper",
			uuid = "1822dca3-aa32-723a-8549-94c742f0d9e0",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 905 then self.used = true; return end\ndata.normalRaidsInitialTargets = data.normalRaidsInitialTargets or {}\nlocal states = data.normalRaidsInitialTargets\nlocal state = states[\"905_9353\"] or {}\nstates[\"905_9353\"] = state\nlocal current = TensorCore.mGetTarget()\nlocal label = \"[Normal raids targeting] Shiva\"\nif state.pending then\n    if current and current.id == state.pending then\n        d(label .. \" confirmed target=\" .. tostring(current.id))\n        state.pending = nil\n    elseif Now() - state.requestedAt >= 1500 then\n        d(label .. \" request not confirmed; intended=\" .. tostring(state.pending) ..\n            \" current=\" .. tostring(current and current.id))\n        state.pending = nil\n    end\n    self.used = true\n    return\nend\nif player.incombat or state.done then self.used = true; return end\nlocal boss, nearest = nil, 35 * 35\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=9353}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx = candidate.pos.x - player.pos.x\n        local dy = candidate.pos.y - player.pos.y\n        local dz = candidate.pos.z - player.pos.z\n        local distance = dx*dx + dy*dy + dz*dz\n        if distance <= nearest then\n            boss, nearest = candidate, distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label .. \" waiting for an attackable boss within 35 yalms; current=\" ..\n            tostring(current and current.id))\n        state.waitLogged = true\n    end\n    self.used = true\n    return\nend\nstate.done = true\nif current and current.alive and current.targetable and current.attackable then\n    d(label .. \" kept existing target; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current.id))\nelse\n    state.pending = boss.id\n    state.requestedAt = Now()\n    d(label .. \" target request; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"7aea50e7-1c5f-e90f-8275-a9109f70c98e",
								true,
							},
						},
						name = "Select nearby boss once",
						uuid = "d8125c05-11a5-ada2-8f71-8bc088fc1170",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 905 then return false end\nlocal states = data.normalRaidsInitialTargets\nlocal state = states and states[\"905_9353\"]\nreturn (state ~= nil and state.pending ~= nil) or (not player.incombat and (not state or not state.done))",
						dequeueIfLuaFalse = true,
						name = "Duty and initial target",
						uuid = "7aea50e7-1c5f-e90f-8275-a9109f70c98e",
						version = 3,
					},
				},
			},
			displayPath = "Eden's Verse: Refulgence/Shiva/AutoSim",
			name = "E8N select boss at encounter start",
			throttleTime = 500,
			uuid = "ae6f047f-c797-4b57-b5e2-e0a285804339",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal api = TensorCore.API.TensorACR\nlocal ok, elapsed = pcall(api.getAutoSimTime)\nif ok and type(elapsed) == \"number\" and elapsed >= 0 and elapsed <= 60 and not data.normalRaidForecastSet then\n    api.setAutoSimKillTime(416)\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0, 25)\n    api.clearAutoSimPhases(\"FullDowntime\")\n    local downtime = {{182.2,210.8},{219.4,224.8},{234.5,238.9},{246.8,252.9},{266.3,288.1},{326.5,399.2}}\n    for _, window in ipairs(downtime) do\n        api.addAutoSimPhase(\"FullDowntime\", window[1], window[2], 1)\n    end\n    data.normalRaidForecastSet = true\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"561082c1-ddde-09d3-a9ff-0d7555c25c58",
								true,
							},
						},
						name = "E8N AutoSim baseline",
						uuid = "9bcd5692-a381-6f99-85e7-361d9f32ede6",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 905 and (eventArgs.spellID == 19927 and not data.normalRaidForecastSet)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "561082c1-ddde-09d3-a9ff-0d7555c25c58",
						version = 3,
					},
				},
			},
			displayPath = "Eden's Verse: Refulgence/Shiva/AutoSim",
			eventType = 3,
			name = "E8N AutoSim baseline",
			uuid = "ad3b9b77-c845-7230-9550-9cb7163fe126",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "AAC Heavyweight M4",
			uuid = "eed13023-e750-e5fb-8d0e-0007fe4a0910",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "AAC Heavyweight M4",
			name = "Lindwurm",
			uuid = "e33906da-7d58-e1c7-bee9-df1611c1f82e",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "AAC Heavyweight M4/Lindwurm",
			name = "Draws",
			uuid = "94e08ddd-d0c0-0c7a-9769-ee37a349dbfe",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal e = eventArgs\nlocal shapes = {[46191]=\"circle\",[46202]=\"circle\",[46203]=\"circle\"}\nlocal ms = math.floor(e.startTime + e.duration * 1000 - Now())\nif ms > 0 then\n    local drawer = TensorCore.getStaticDrawer(0x803333FF, 2)\n    if shapes[e.aoeID] == \"circle\" then\n        drawer:addTimedCircle(ms, e.x, e.y, e.z, e.aoeLength, 0, false, true)\n    else\n        drawer:addTimedRect(ms, e.x, e.y, e.z, e.aoeLength, e.aoeWidth, e.heading, 0, false, true)\n    end\n    AnyoneCore.addWorldTextCountdown(ms, {x=e.x,y=e.y+1,z=e.z}, 0xFFFFFFFF, true, 1.1)\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"09dac0ae-8918-2360-8379-bfe3266a541c",
								true,
							},
						},
						name = "M12N hazard draws",
						uuid = "33e6a9de-5c30-6522-960b-8d2592dd80f9",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1326 and (eventArgs.aoeID == 46191 or eventArgs.aoeID == 46202 or eventArgs.aoeID == 46203)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "09dac0ae-8918-2360-8379-bfe3266a541c",
						version = 3,
					},
				},
			},
			displayPath = "AAC Heavyweight M4/Lindwurm/Draws",
			eventType = 18,
			name = "M12N hazard draws",
			uuid = "56bcdaa8-065b-fa0b-993b-4bbcb725e848",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "AAC Heavyweight M4/Lindwurm",
			name = "AutoSim",
			uuid = "42d6c937-585a-a925-bcf5-59e4ad8e31a1",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local helper = AnyoneCore and AnyoneCore.Settings and AnyoneCore.Settings.DutyHelper\nif helper then helper.enabled = false end\nself.used = true",
						conditions = 
						{
							
							{
								"45fb16da-bb2c-9910-a31c-17c2fe2cbcc2",
								true,
							},
						},
						name = "M12N disable Duty Helper",
						uuid = "72839fde-e44e-8453-b9f7-cdba001805b0",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1326 and (true)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "45fb16da-bb2c-9910-a31c-17c2fe2cbcc2",
						version = 3,
					},
				},
			},
			displayPath = "AAC Heavyweight M4/Lindwurm/AutoSim",
			eventType = 11,
			name = "M12N disable Duty Helper",
			uuid = "ec0511c6-1d70-6a9b-b4f1-42f371be6f53",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 1326 then self.used = true; return end\ndata.normalRaidsInitialTargets = data.normalRaidsInitialTargets or {}\nlocal states = data.normalRaidsInitialTargets\nlocal state = states[\"1326_14378\"] or {}\nstates[\"1326_14378\"] = state\nlocal current = TensorCore.mGetTarget()\nlocal label = \"[Normal raids targeting] Lindwurm\"\nif state.pending then\n    if current and current.id == state.pending then\n        d(label .. \" confirmed target=\" .. tostring(current.id))\n        state.pending = nil\n    elseif Now() - state.requestedAt >= 1500 then\n        d(label .. \" request not confirmed; intended=\" .. tostring(state.pending) ..\n            \" current=\" .. tostring(current and current.id))\n        state.pending = nil\n    end\n    self.used = true\n    return\nend\nif player.incombat or state.done then self.used = true; return end\nlocal boss, nearest = nil, 35 * 35\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=14378}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx = candidate.pos.x - player.pos.x\n        local dy = candidate.pos.y - player.pos.y\n        local dz = candidate.pos.z - player.pos.z\n        local distance = dx*dx + dy*dy + dz*dz\n        if distance <= nearest then\n            boss, nearest = candidate, distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label .. \" waiting for an attackable boss within 35 yalms; current=\" ..\n            tostring(current and current.id))\n        state.waitLogged = true\n    end\n    self.used = true\n    return\nend\nstate.done = true\nif current and current.alive and current.targetable and current.attackable then\n    d(label .. \" kept existing target; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current.id))\nelse\n    state.pending = boss.id\n    state.requestedAt = Now()\n    d(label .. \" target request; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"9ee8bcd8-560b-6a23-892a-14335d925c9b",
								true,
							},
						},
						name = "Select nearby boss once",
						uuid = "60c0fde4-082d-bd9c-af9c-1e7d6a5866f0",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 1326 then return false end\nlocal states = data.normalRaidsInitialTargets\nlocal state = states and states[\"1326_14378\"]\nreturn (state ~= nil and state.pending ~= nil) or (not player.incombat and (not state or not state.done))",
						dequeueIfLuaFalse = true,
						name = "Duty and initial target",
						uuid = "9ee8bcd8-560b-6a23-892a-14335d925c9b",
						version = 3,
					},
				},
			},
			displayPath = "AAC Heavyweight M4/Lindwurm/AutoSim",
			name = "M12N select boss at encounter start",
			throttleTime = 500,
			uuid = "d5ff200a-698b-92ea-adfd-4ebbb221f5f0",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal api = TensorCore.API.TensorACR\nlocal ok, elapsed = pcall(api.getAutoSimTime)\nif ok and type(elapsed) == \"number\" and elapsed >= 0 and elapsed <= 60 and not data.normalRaidForecastSet then\n    api.setAutoSimKillTime(453)\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0, 29)\n    api.clearAutoSimPhases(\"FullDowntime\")\n    local downtime = {{332.2,354.4}}\n    for _, window in ipairs(downtime) do\n        api.addAutoSimPhase(\"FullDowntime\", window[1], window[2], 1)\n    end\n    data.normalRaidForecastSet = true\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"4dae7ad3-1713-57f5-9056-afbc2c3ad205",
								true,
							},
						},
						name = "M12N AutoSim baseline",
						uuid = "af93a09a-203d-0c86-a3f5-98ade6c3bcac",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1326 and (eventArgs.spellID == 46228 and not data.normalRaidForecastSet)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "4dae7ad3-1713-57f5-9056-afbc2c3ad205",
						version = 3,
					},
				},
			},
			displayPath = "AAC Heavyweight M4/Lindwurm/AutoSim",
			eventType = 3,
			name = "M12N AutoSim baseline",
			uuid = "0461a116-88ac-b390-bc19-5e48398f8da4",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local p = TensorCore.mGetPlayer()\nif not p.incombat then\n    data.m12nBurstHold = nil\n    self.used = true\n    return\nend\n\nlocal state = data.m12nBurstHold\nif not state then\n    state = {}\n    data.m12nBurstHold = state\nend\nlocal boss = state.boss and TensorCore.mGetEntity(state.boss)\nif not state.boss then\n    for _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=14378}) or {}) do\n        if candidate.targetable and candidate.attackable and candidate.alive then\n            state.boss = candidate.id\n            boss = candidate\n            break\n        end\n    end\nend\nif state.boss and (not boss or not boss.targetable) then\n    state.sawDowntime = true\nelseif boss and boss.targetable and boss.attackable and boss.hp then\n    if state.sawDowntime and boss.hp.percent > 10 then\n        state.phaseTwo = true\n        if state.holding then d(\"[M12N] Phase two targetable. Releasing burst hold.\") end\n        self.used = true\n        return\n    end\n    if boss.hp.percent < 10 then\n        if not state.holding then d(\"[M12N] Lindwurm below 10%. Holding burst for phase two.\") end\n        state.holding = true\n    end\nend\n-- Short holds expire automatically on phase return, wipe, or duty exit.\nif state.holding then\n    local holdUntil = Now() + 700\n    local api = TensorCore.API.TensorACR\n    if p.job == 39 then\n        api.holdActionUntil(24405, holdUntil)\n    elseif p.job == 25 then\n        api.holdActionUntil(3573, holdUntil)\n        api.holdActionUntil(158, holdUntil)\n        api.holdActionUntil(7421, holdUntil)\n        api.holdActionUntil(25797, holdUntil)\n    end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"714e0779-bab9-f889-aea4-35d88b095e44",
								true,
							},
						},
						name = "Hold long burst cooldowns",
						uuid = "5e9e9de2-68e5-bf3b-ae70-248fa6d5163c",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nlocal state = data.m12nBurstHold\nreturn p ~= nil and p.localmapid == 1326 and\n    ((p.incombat and (p.job == 39 or p.job == 25)) or state ~= nil) and\n    (not state or not state.phaseTwo or not p.incombat)",
						dequeueIfLuaFalse = true,
						name = "Duty, job and first phase",
						uuid = "714e0779-bab9-f889-aea4-35d88b095e44",
						version = 3,
					},
				},
			},
			displayPath = "AAC Heavyweight M4/Lindwurm/AutoSim",
			name = "M12N - save burst for phase two",
			throttleTime = 250,
			timeout = 1,
			uuid = "d02ebc1f-83c4-11b9-80e4-e8b5585076a0",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "AAC Heavyweight M4/Lindwurm",
			name = "Mitigations",
			uuid = "42565250-8c51-0502-af1e-79c386f364e0",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.m12nGrotesquerieAt = Now()\nself.used = true",
						conditions = 
						{
							
							{
								"876a31a5-ef07-5e85-bb7b-d33295e2f066",
								true,
							},
						},
						name = "Record Grotesquerie cast",
						uuid = "6669fdbe-bac1-f036-b881-48736920ef4c",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nlocal e = eventArgs\nreturn p ~= nil and p.localmapid == 1326 and e ~= nil and e.entityContentID == 14378 and e.spellID == 46209",
						dequeueIfLuaFalse = true,
						name = "Duty and knockback sequence",
						uuid = "876a31a5-ef07-5e85-bb7b-d33295e2f066",
						version = 3,
					},
				},
			},
			displayPath = "AAC Heavyweight M4/Lindwurm/Mitigations",
			eventType = 3,
			name = "M12N Grotesquerie - track knockback sequence",
			timeout = 2,
			uuid = "6ebf4a5a-f4e3-0ed3-8847-83f5cd2dec53",
			version = 2,
		},
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
								"87375ba9-559f-31dd-967e-532cd1bace26",
								true,
							},
						},
						gVar = "ACR_TensorNuke4_Hotbar_Surecast",
						uuid = "c35930a2-8a4f-be50-ad48-028f4ba20fbc",
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
						conditionLua = "local p = TensorCore.mGetPlayer()\nlocal e = eventArgs\nreturn p ~= nil and p.localmapid == 1326 and e ~= nil and e.entityContentID == 14378 and e.spellID == 46185 and type(data.m12nGrotesquerieAt) == \"number\" and Now() - data.m12nGrotesquerieAt < 12000",
						dequeueIfLuaFalse = true,
						name = "Duty and knockback sequence",
						uuid = "87375ba9-559f-31dd-967e-532cd1bace26",
						version = 3,
					},
				},
			},
			displayPath = "AAC Heavyweight M4/Lindwurm/Mitigations",
			eventType = 3,
			name = "M12N Shockwave - Surecast",
			timeout = 2,
			uuid = "30bac75c-48ce-f12e-b46b-0c7087efd6d7",
			version = 2,
		},
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
								"d5290af2-d3cb-b7b7-b59c-9811cb70a6a5",
								true,
							},
						},
						gVar = "ACR_TensorViper4_Hotbar_ArmsLength",
						uuid = "c0b25427-65c6-489b-bfef-26db9f9f5ba3",
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
						conditionLua = "local p = TensorCore.mGetPlayer()\nlocal e = eventArgs\nreturn p ~= nil and p.localmapid == 1326 and not (TensorCore.isCaster(p) or TensorCore.isHealer(p)) and e ~= nil and e.entityContentID == 14378 and e.spellID == 46185 and type(data.m12nGrotesquerieAt) == \"number\" and Now() - data.m12nGrotesquerieAt < 12000",
						dequeueIfLuaFalse = true,
						name = "Duty and knockback sequence",
						uuid = "d5290af2-d3cb-b7b7-b59c-9811cb70a6a5",
						version = 3,
					},
				},
			},
			displayPath = "AAC Heavyweight M4/Lindwurm/Mitigations",
			eventType = 3,
			name = "M12N Shockwave - Arm's Length",
			timeout = 2,
			uuid = "1626e028-b9e0-6bde-ad27-f28b16864e2b",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "AAC Light-heavyweight M1",
			uuid = "0866f7a7-567d-d9ba-8b9e-e45ae459c156",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "AAC Light-heavyweight M1",
			name = "Black Cat",
			uuid = "caa44684-b056-2629-a2d4-02890789541d",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "AAC Light-heavyweight M1/Black Cat",
			name = "Draws",
			uuid = "a7128b5d-cf77-a946-9970-4b250f21e38e",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal labels = {[37651]=\"Watch the floor tiles\", [37655]=\"Stay clear of the landing tile\", [37696]=\"Raidwide\", [37706]=\"Tankbuster\"}\nlocal actor = TensorCore.mGetEntity(eventArgs.entityID)\nlocal pos = actor and actor.pos\nlocal ms = math.floor(eventArgs.channelTimeMax * 1000)\nif pos and ms > 0 then\n    AnyoneCore.addTimedWorldText(ms, labels[eventArgs.spellID], {x=pos.x,y=pos.y+3,z=pos.z}, 0xFFFFFFFF, true, 1.15)\n    AnyoneCore.addWorldTextCountdown(ms, {x=pos.x,y=pos.y+2,z=pos.z}, 0xFFFFFFFF, true, 1.2)\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"b5f11bce-d7ae-d6e6-9b2b-9debc19e2591",
								true,
							},
						},
						name = "M1N mechanic countdowns",
						uuid = "d51ce7ae-ec27-b5f1-b55a-6e8cd910e5a3",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1225 and (eventArgs.spellID == 37651 or eventArgs.spellID == 37655 or eventArgs.spellID == 37696 or eventArgs.spellID == 37706)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "b5f11bce-d7ae-d6e6-9b2b-9debc19e2591",
						version = 3,
					},
				},
			},
			displayPath = "AAC Light-heavyweight M1/Black Cat/Draws",
			eventType = 3,
			name = "M1N mechanic countdowns",
			uuid = "333d1486-4ecc-a666-9e57-315b47e68550",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "AAC Light-heavyweight M1/Black Cat",
			name = "AutoSim",
			uuid = "779f5a12-9139-006f-bbd1-0bcabeca47b2",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local helper = AnyoneCore and AnyoneCore.Settings and AnyoneCore.Settings.DutyHelper\nif helper then helper.enabled = false end\nself.used = true",
						conditions = 
						{
							
							{
								"a0690372-0f48-e0dc-9f04-be45bb856aec",
								true,
							},
						},
						name = "M1N disable Duty Helper",
						uuid = "ef9b9985-de96-ac61-8d50-72eaad1a4df2",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1225 and (true)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "a0690372-0f48-e0dc-9f04-be45bb856aec",
						version = 3,
					},
				},
			},
			displayPath = "AAC Light-heavyweight M1/Black Cat/AutoSim",
			eventType = 11,
			name = "M1N disable Duty Helper",
			uuid = "e5ac72ab-2eca-52ea-a5fd-09d80f323e24",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 1225 then self.used = true; return end\ndata.normalRaidsInitialTargets = data.normalRaidsInitialTargets or {}\nlocal states = data.normalRaidsInitialTargets\nlocal state = states[\"1225_12686\"] or {}\nstates[\"1225_12686\"] = state\nlocal current = TensorCore.mGetTarget()\nlocal label = \"[Normal raids targeting] Black Cat\"\nif state.pending then\n    if current and current.id == state.pending then\n        d(label .. \" confirmed target=\" .. tostring(current.id))\n        state.pending = nil\n    elseif Now() - state.requestedAt >= 1500 then\n        d(label .. \" request not confirmed; intended=\" .. tostring(state.pending) ..\n            \" current=\" .. tostring(current and current.id))\n        state.pending = nil\n    end\n    self.used = true\n    return\nend\nif player.incombat or state.done then self.used = true; return end\nlocal boss, nearest = nil, 35 * 35\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=12686}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx = candidate.pos.x - player.pos.x\n        local dy = candidate.pos.y - player.pos.y\n        local dz = candidate.pos.z - player.pos.z\n        local distance = dx*dx + dy*dy + dz*dz\n        if distance <= nearest then\n            boss, nearest = candidate, distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label .. \" waiting for an attackable boss within 35 yalms; current=\" ..\n            tostring(current and current.id))\n        state.waitLogged = true\n    end\n    self.used = true\n    return\nend\nstate.done = true\nif current and current.alive and current.targetable and current.attackable then\n    d(label .. \" kept existing target; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current.id))\nelse\n    state.pending = boss.id\n    state.requestedAt = Now()\n    d(label .. \" target request; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"58f4da96-9ec2-d314-8c08-33897ed2b818",
								true,
							},
						},
						name = "Select nearby boss once",
						uuid = "8e514bfd-3702-431c-b7a3-c26e69ffb3b5",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 1225 then return false end\nlocal states = data.normalRaidsInitialTargets\nlocal state = states and states[\"1225_12686\"]\nreturn (state ~= nil and state.pending ~= nil) or (not player.incombat and (not state or not state.done))",
						dequeueIfLuaFalse = true,
						name = "Duty and initial target",
						uuid = "58f4da96-9ec2-d314-8c08-33897ed2b818",
						version = 3,
					},
				},
			},
			displayPath = "AAC Light-heavyweight M1/Black Cat/AutoSim",
			name = "M1N select boss at encounter start",
			throttleTime = 500,
			uuid = "d77ef117-5d1c-fe96-afeb-0d114af8f14e",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal api = TensorCore.API.TensorACR\nlocal ok, elapsed = pcall(api.getAutoSimTime)\nif ok and type(elapsed) == \"number\" and elapsed >= 0 and elapsed <= 60 and not data.normalRaidForecastSet then\n    api.setAutoSimKillTime(225)\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0, 15)\n    api.clearAutoSimPhases(\"FullDowntime\")\n    local downtime = {}\n    for _, window in ipairs(downtime) do\n        api.addAutoSimPhase(\"FullDowntime\", window[1], window[2], 1)\n    end\n    data.normalRaidForecastSet = true\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"d93a364d-b87b-7bd7-a692-047ee65276ae",
								true,
							},
						},
						name = "M1N AutoSim baseline",
						uuid = "0c466d5d-54d4-4e80-a912-47cc5ff2e38e",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1225 and (eventArgs.spellID == 37696 and not data.normalRaidForecastSet)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "d93a364d-b87b-7bd7-a692-047ee65276ae",
						version = 3,
					},
				},
			},
			displayPath = "AAC Light-heavyweight M1/Black Cat/AutoSim",
			eventType = 3,
			name = "M1N AutoSim baseline",
			uuid = "0e6a239d-2c2f-c66b-9d82-8f4b484fb63d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "AAC Light-heavyweight M2",
			uuid = "9a86fe60-5cb7-ac16-a7c3-9552e880e772",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "AAC Light-heavyweight M2",
			name = "Honey B. Lovely",
			uuid = "a9c808c0-7648-2443-936b-c7e1df5258ec",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "AAC Light-heavyweight M2/Honey B. Lovely",
			name = "Draws",
			uuid = "56bbeb52-b8cd-d053-b3f4-400ea50a2eac",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal e = eventArgs\nlocal shapes = {[39737]=\"rect\",[39739]=\"rect\",[37230]=\"circle\"}\nlocal ms = math.floor(e.startTime + e.duration * 1000 - Now())\nif ms > 0 then\n    local drawer = TensorCore.getStaticDrawer(0x803333FF, 2)\n    if shapes[e.aoeID] == \"circle\" then\n        drawer:addTimedCircle(ms, e.x, e.y, e.z, e.aoeLength, 0, false, true)\n    else\n        drawer:addTimedRect(ms, e.x, e.y, e.z, e.aoeLength, e.aoeWidth, e.heading, 0, false, true)\n    end\n    AnyoneCore.addWorldTextCountdown(ms, {x=e.x,y=e.y+1,z=e.z}, 0xFFFFFFFF, true, 1.1)\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"8084f9c1-70f1-ebdd-8caf-61eb3da0216b",
								true,
							},
						},
						name = "M2N hazard draws",
						uuid = "ae4d3e0a-8b9a-d0ac-85e0-33b3ad10742a",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1227 and (eventArgs.aoeID == 39737 or eventArgs.aoeID == 39739 or eventArgs.aoeID == 37230)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "8084f9c1-70f1-ebdd-8caf-61eb3da0216b",
						version = 3,
					},
				},
			},
			displayPath = "AAC Light-heavyweight M2/Honey B. Lovely/Draws",
			eventType = 18,
			name = "M2N hazard draws",
			uuid = "9b37625f-5be6-6757-beed-bcdb9d0addde",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "AAC Light-heavyweight M2/Honey B. Lovely",
			name = "AutoSim",
			uuid = "5120e378-5e5e-4960-b04f-16e2f720d316",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local settings = AnyoneCore and AnyoneCore.Settings\nif settings then\n    if settings.DutyHelper then settings.DutyHelper.enabled = false end\n    if settings.PrepullHelper then settings.PrepullHelper.enabled = false end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"39513d6e-7c3b-98d8-b04a-506fa2a0c1e2",
								true,
							},
						},
						name = "M2N helper setup",
						uuid = "f4d30ca1-a25d-a5c3-85a6-6d52baf6a056",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1227 and (true)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "39513d6e-7c3b-98d8-b04a-506fa2a0c1e2",
						version = 3,
					},
				},
			},
			displayPath = "AAC Light-heavyweight M2/Honey B. Lovely/AutoSim",
			eventType = 11,
			name = "M2N helper setup",
			uuid = "0d417eb1-afde-7628-ac82-4a1379d0a7cb",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 1227 then self.used = true; return end\ndata.normalRaidsInitialTargets = data.normalRaidsInitialTargets or {}\nlocal states = data.normalRaidsInitialTargets\nlocal state = states[\"1227_12685\"] or {}\nstates[\"1227_12685\"] = state\nlocal current = TensorCore.mGetTarget()\nlocal label = \"[Normal raids targeting] Honey B. Lovely\"\nif state.pending then\n    if current and current.id == state.pending then\n        d(label .. \" confirmed target=\" .. tostring(current.id))\n        state.pending = nil\n    elseif Now() - state.requestedAt >= 1500 then\n        d(label .. \" request not confirmed; intended=\" .. tostring(state.pending) ..\n            \" current=\" .. tostring(current and current.id))\n        state.pending = nil\n    end\n    self.used = true\n    return\nend\nif player.incombat or state.done then self.used = true; return end\nlocal boss, nearest = nil, 35 * 35\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=12685}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx = candidate.pos.x - player.pos.x\n        local dy = candidate.pos.y - player.pos.y\n        local dz = candidate.pos.z - player.pos.z\n        local distance = dx*dx + dy*dy + dz*dz\n        if distance <= nearest then\n            boss, nearest = candidate, distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label .. \" waiting for an attackable boss within 35 yalms; current=\" ..\n            tostring(current and current.id))\n        state.waitLogged = true\n    end\n    self.used = true\n    return\nend\nstate.done = true\nif current and current.alive and current.targetable and current.attackable then\n    d(label .. \" kept existing target; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current.id))\nelse\n    state.pending = boss.id\n    state.requestedAt = Now()\n    d(label .. \" target request; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"b6cb5f4f-b95a-9b89-9415-c8fe063d6354",
								true,
							},
						},
						name = "Select nearby boss once",
						uuid = "f3de899f-572d-b546-99bc-3d36ca91334f",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 1227 then return false end\nlocal states = data.normalRaidsInitialTargets\nlocal state = states and states[\"1227_12685\"]\nreturn (state ~= nil and state.pending ~= nil) or (not player.incombat and (not state or not state.done))",
						dequeueIfLuaFalse = true,
						name = "Duty and initial target",
						uuid = "b6cb5f4f-b95a-9b89-9415-c8fe063d6354",
						version = 3,
					},
				},
			},
			displayPath = "AAC Light-heavyweight M2/Honey B. Lovely/AutoSim",
			name = "M2N select boss at encounter start",
			throttleTime = 500,
			uuid = "0f987ce7-183d-f331-a5a6-8c27efc1c0ee",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal api = TensorCore.API.TensorACR\nlocal ok, elapsed = pcall(api.getAutoSimTime)\nif ok and type(elapsed) == \"number\" and elapsed >= 0 and elapsed <= 60 and not data.normalRaidForecastSet then\n    api.setAutoSimKillTime(245)\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0, 32)\n    api.clearAutoSimPhases(\"FullDowntime\")\n    local downtime = {}\n    for _, window in ipairs(downtime) do\n        api.addAutoSimPhase(\"FullDowntime\", window[1], window[2], 1)\n    end\n    data.normalRaidForecastSet = true\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"99f1e45d-dd31-1c39-a30f-584eeb85cd52",
								true,
							},
						},
						name = "M2N AutoSim baseline",
						uuid = "0b10c7bd-7781-e943-aebb-b2840530b41d",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1227 and (eventArgs.spellID == 37220 and not data.normalRaidForecastSet)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "99f1e45d-dd31-1c39-a30f-584eeb85cd52",
						version = 3,
					},
				},
			},
			displayPath = "AAC Light-heavyweight M2/Honey B. Lovely/AutoSim",
			eventType = 3,
			name = "M2N AutoSim baseline",
			uuid = "d0dbbad9-2431-6e2c-a5bd-28bca81cadba",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "AAC Light-heavyweight M3",
			uuid = "8da230ec-fc78-b914-b9d0-1e02a94ef2af",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "AAC Light-heavyweight M3",
			name = "Brute Bomber",
			uuid = "4ff29d06-297d-c056-95c1-0088fb229179",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "AAC Light-heavyweight M3/Brute Bomber",
			name = "Draws",
			uuid = "67b56a94-42db-d55c-82fe-904a5efb1e3e",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal e = eventArgs\nlocal shapes = {[39638]=\"rect\",[39639]=\"rect\",[37816]=\"circle\",[37817]=\"circle\",[39653]=\"rect\",[39655]=\"rect\"}\nlocal ms = math.floor(e.startTime + e.duration * 1000 - Now())\nif ms > 0 then\n    local drawer = TensorCore.getStaticDrawer(0x803333FF, 2)\n    if shapes[e.aoeID] == \"circle\" then\n        drawer:addTimedCircle(ms, e.x, e.y, e.z, e.aoeLength, 0, false, true)\n    else\n        drawer:addTimedRect(ms, e.x, e.y, e.z, e.aoeLength, e.aoeWidth, e.heading, 0, false, true)\n    end\n    AnyoneCore.addWorldTextCountdown(ms, {x=e.x,y=e.y+1,z=e.z}, 0xFFFFFFFF, true, 1.1)\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"3b3b06d4-9315-a888-b5a1-12f442315692",
								true,
							},
						},
						name = "M3N hazard draws",
						uuid = "818eafd1-d038-d762-90f8-6b99bdc7a467",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1229 and (eventArgs.aoeID == 39638 or eventArgs.aoeID == 39639 or eventArgs.aoeID == 37816 or eventArgs.aoeID == 37817 or eventArgs.aoeID == 39653 or eventArgs.aoeID == 39655)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "3b3b06d4-9315-a888-b5a1-12f442315692",
						version = 3,
					},
				},
			},
			displayPath = "AAC Light-heavyweight M3/Brute Bomber/Draws",
			eventType = 18,
			name = "M3N hazard draws",
			uuid = "22649749-e4cd-22d9-92d7-bb88e6ae5e51",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "AAC Light-heavyweight M3/Brute Bomber",
			name = "AutoSim",
			uuid = "b6cff6f6-cc12-86e5-8374-480caffcac43",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local settings = AnyoneCore and AnyoneCore.Settings\nif settings then\n    if settings.DutyHelper then settings.DutyHelper.enabled = false end\n    if settings.PrepullHelper then settings.PrepullHelper.enabled = false end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"c35a1f3d-4fb4-db7d-9cc7-b4707b4f5e7e",
								true,
							},
						},
						name = "M3N helper setup",
						uuid = "7e1b1034-b22e-54be-92f8-f58b89e1ce99",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1229 and (true)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "c35a1f3d-4fb4-db7d-9cc7-b4707b4f5e7e",
						version = 3,
					},
				},
			},
			displayPath = "AAC Light-heavyweight M3/Brute Bomber/AutoSim",
			eventType = 11,
			name = "M3N helper setup",
			uuid = "36bbbaec-68c7-4b00-9beb-18aab723229a",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 1229 then self.used = true; return end\ndata.normalRaidsInitialTargets = data.normalRaidsInitialTargets or {}\nlocal states = data.normalRaidsInitialTargets\nlocal state = states[\"1229_13356\"] or {}\nstates[\"1229_13356\"] = state\nlocal current = TensorCore.mGetTarget()\nlocal label = \"[Normal raids targeting] Brute Bomber\"\nif state.pending then\n    if current and current.id == state.pending then\n        d(label .. \" confirmed target=\" .. tostring(current.id))\n        state.pending = nil\n    elseif Now() - state.requestedAt >= 1500 then\n        d(label .. \" request not confirmed; intended=\" .. tostring(state.pending) ..\n            \" current=\" .. tostring(current and current.id))\n        state.pending = nil\n    end\n    self.used = true\n    return\nend\nif player.incombat or state.done then self.used = true; return end\nlocal boss, nearest = nil, 35 * 35\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=13356}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx = candidate.pos.x - player.pos.x\n        local dy = candidate.pos.y - player.pos.y\n        local dz = candidate.pos.z - player.pos.z\n        local distance = dx*dx + dy*dy + dz*dz\n        if distance <= nearest then\n            boss, nearest = candidate, distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label .. \" waiting for an attackable boss within 35 yalms; current=\" ..\n            tostring(current and current.id))\n        state.waitLogged = true\n    end\n    self.used = true\n    return\nend\nstate.done = true\nif current and current.alive and current.targetable and current.attackable then\n    d(label .. \" kept existing target; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current.id))\nelse\n    state.pending = boss.id\n    state.requestedAt = Now()\n    d(label .. \" target request; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"7d7058ff-c34e-e0a9-95ac-f59550818ab0",
								true,
							},
						},
						name = "Select nearby boss once",
						uuid = "41018478-c443-c2fa-8344-cc45c17c739c",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 1229 then return false end\nlocal states = data.normalRaidsInitialTargets\nlocal state = states and states[\"1229_13356\"]\nreturn (state ~= nil and state.pending ~= nil) or (not player.incombat and (not state or not state.done))",
						dequeueIfLuaFalse = true,
						name = "Duty and initial target",
						uuid = "7d7058ff-c34e-e0a9-95ac-f59550818ab0",
						version = 3,
					},
				},
			},
			displayPath = "AAC Light-heavyweight M3/Brute Bomber/AutoSim",
			name = "M3N select boss at encounter start",
			throttleTime = 500,
			uuid = "0cceead6-7e1d-5a18-9a00-a477f0700278",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal api = TensorCore.API.TensorACR\nlocal ok, elapsed = pcall(api.getAutoSimTime)\nif ok and type(elapsed) == \"number\" and elapsed >= 0 and elapsed <= 60 and not data.normalRaidForecastSet then\n    api.setAutoSimKillTime(217)\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0, 10)\n    api.clearAutoSimPhases(\"FullDowntime\")\n    local downtime = {}\n    for _, window in ipairs(downtime) do\n        api.addAutoSimPhase(\"FullDowntime\", window[1], window[2], 1)\n    end\n    data.normalRaidForecastSet = true\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"d197c69d-db91-8d64-9cd5-9ce49892f274",
								true,
							},
						},
						name = "M3N AutoSim baseline",
						uuid = "6e902eeb-32ba-f010-b681-263b03ee763d",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1229 and (eventArgs.spellID == 37846 and not data.normalRaidForecastSet)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "d197c69d-db91-8d64-9cd5-9ce49892f274",
						version = 3,
					},
				},
			},
			displayPath = "AAC Light-heavyweight M3/Brute Bomber/AutoSim",
			eventType = 3,
			name = "M3N AutoSim baseline",
			uuid = "8ec11585-02a9-effc-8733-d8a34377e050",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "AAC Light-heavyweight M4",
			uuid = "28a88079-a0a1-4e67-bfe4-2221531439aa",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "AAC Light-heavyweight M4",
			name = "Wicked Thunder",
			uuid = "4628f2c6-4a10-4b0d-a5ee-9cd23bd313d2",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "AAC Light-heavyweight M4/Wicked Thunder",
			name = "Draws",
			uuid = "4b5ddad1-42fb-ea79-a8a1-e6dd58547122",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal e = eventArgs\nlocal shapes = {[36150]=\"rect\",[37574]=\"circle\"}\nlocal ms = math.floor(e.startTime + e.duration * 1000 - Now())\nif ms > 0 then\n    local drawer = TensorCore.getStaticDrawer(0x803333FF, 2)\n    if shapes[e.aoeID] == \"circle\" then\n        drawer:addTimedCircle(ms, e.x, e.y, e.z, e.aoeLength, 0, false, true)\n    else\n        drawer:addTimedRect(ms, e.x, e.y, e.z, e.aoeLength, e.aoeWidth, e.heading, 0, false, true)\n    end\n    AnyoneCore.addWorldTextCountdown(ms, {x=e.x,y=e.y+1,z=e.z}, 0xFFFFFFFF, true, 1.1)\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"10d1aeb4-a6f5-84c5-81f7-97c61d795409",
								true,
							},
						},
						name = "M4N hazard draws",
						uuid = "d33f646a-4212-7e80-9498-4bbf97238175",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1231 and (eventArgs.aoeID == 36150 or eventArgs.aoeID == 37574)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "10d1aeb4-a6f5-84c5-81f7-97c61d795409",
						version = 3,
					},
				},
			},
			displayPath = "AAC Light-heavyweight M4/Wicked Thunder/Draws",
			eventType = 18,
			name = "M4N hazard draws",
			uuid = "73081ee2-adce-3264-ae26-4d5137b7ecd0",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "AAC Light-heavyweight M4/Wicked Thunder",
			name = "AutoSim",
			uuid = "9500ad32-897f-4e64-a78a-3f131b2fe9b9",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local settings = AnyoneCore and AnyoneCore.Settings\nif settings then\n    if settings.DutyHelper then settings.DutyHelper.enabled = false end\n    if settings.PrepullHelper then settings.PrepullHelper.enabled = false end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"09c5241a-3939-263b-a116-647e7605f3e4",
								true,
							},
						},
						name = "M4N helper setup",
						uuid = "afc3b9af-f759-03d8-ba6e-6523af92a542",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1231 and (true)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "09c5241a-3939-263b-a116-647e7605f3e4",
						version = 3,
					},
				},
			},
			displayPath = "AAC Light-heavyweight M4/Wicked Thunder/AutoSim",
			eventType = 11,
			name = "M4N helper setup",
			uuid = "1a5965db-f090-8992-a5ab-05f66d6d477c",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 1231 then self.used = true; return end\ndata.normalRaidsInitialTargets = data.normalRaidsInitialTargets or {}\nlocal states = data.normalRaidsInitialTargets\nlocal state = states[\"1231_13057\"] or {}\nstates[\"1231_13057\"] = state\nlocal current = TensorCore.mGetTarget()\nlocal label = \"[Normal raids targeting] Wicked Thunder\"\nif state.pending then\n    if current and current.id == state.pending then\n        d(label .. \" confirmed target=\" .. tostring(current.id))\n        state.pending = nil\n    elseif Now() - state.requestedAt >= 1500 then\n        d(label .. \" request not confirmed; intended=\" .. tostring(state.pending) ..\n            \" current=\" .. tostring(current and current.id))\n        state.pending = nil\n    end\n    self.used = true\n    return\nend\nif player.incombat or state.done then self.used = true; return end\nlocal boss, nearest = nil, 35 * 35\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=13057}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx = candidate.pos.x - player.pos.x\n        local dy = candidate.pos.y - player.pos.y\n        local dz = candidate.pos.z - player.pos.z\n        local distance = dx*dx + dy*dy + dz*dz\n        if distance <= nearest then\n            boss, nearest = candidate, distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label .. \" waiting for an attackable boss within 35 yalms; current=\" ..\n            tostring(current and current.id))\n        state.waitLogged = true\n    end\n    self.used = true\n    return\nend\nstate.done = true\nif current and current.alive and current.targetable and current.attackable then\n    d(label .. \" kept existing target; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current.id))\nelse\n    state.pending = boss.id\n    state.requestedAt = Now()\n    d(label .. \" target request; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"8381e75e-6bee-71f4-ba98-d7fe8f9514b8",
								true,
							},
						},
						name = "Select nearby boss once",
						uuid = "88fc249e-5770-1e24-a1f8-700fa597e8a5",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 1231 then return false end\nlocal states = data.normalRaidsInitialTargets\nlocal state = states and states[\"1231_13057\"]\nreturn (state ~= nil and state.pending ~= nil) or (not player.incombat and (not state or not state.done))",
						dequeueIfLuaFalse = true,
						name = "Duty and initial target",
						uuid = "8381e75e-6bee-71f4-ba98-d7fe8f9514b8",
						version = 3,
					},
				},
			},
			displayPath = "AAC Light-heavyweight M4/Wicked Thunder/AutoSim",
			name = "M4N select boss at encounter start",
			throttleTime = 500,
			uuid = "899ece07-f294-73f2-9cb6-90a6382be9fd",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal api = TensorCore.API.TensorACR\nlocal ok, elapsed = pcall(api.getAutoSimTime)\nif ok and type(elapsed) == \"number\" and elapsed >= 0 and elapsed <= 60 and not data.normalRaidForecastSet then\n    api.setAutoSimKillTime(246)\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0, 12)\n    api.clearAutoSimPhases(\"FullDowntime\")\n    local downtime = {}\n    for _, window in ipairs(downtime) do\n        api.addAutoSimPhase(\"FullDowntime\", window[1], window[2], 1)\n    end\n    data.normalRaidForecastSet = true\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"eff66c21-0050-b93a-ae31-48532d3d2c30",
								true,
							},
						},
						name = "M4N AutoSim baseline",
						uuid = "8b0b712a-19e7-ec33-a2f4-17d59d5ee88c",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1231 and (eventArgs.spellID == 37575 and not data.normalRaidForecastSet)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "eff66c21-0050-b93a-ae31-48532d3d2c30",
						version = 3,
					},
				},
			},
			displayPath = "AAC Light-heavyweight M4/Wicked Thunder/AutoSim",
			eventType = 3,
			name = "M4N AutoSim baseline",
			uuid = "eb0d91c5-5996-df63-a5ab-17529fd4d13a",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "AAC Cruiserweight M2",
			uuid = "f6b5c993-81e5-b9d0-8355-7ba17a20285b",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "AAC Cruiserweight M2",
			name = "Sugar Riot",
			uuid = "70cf553e-b2d6-ffa6-95e5-ee82224b4511",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "AAC Cruiserweight M2/Sugar Riot",
			name = "Draws",
			uuid = "a682730d-7c3a-9780-a3a9-64d8f17b3cfd",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal e = eventArgs\nlocal shapes = {[42581]=\"circle\",[42583]=\"circle\",[42585]=\"rect\"}\nlocal ms = math.floor(e.startTime + e.duration * 1000 - Now())\nif ms > 0 then\n    local drawer = TensorCore.getStaticDrawer(0x803333FF, 2)\n    if shapes[e.aoeID] == \"circle\" then\n        drawer:addTimedCircle(ms, e.x, e.y, e.z, e.aoeLength, 0, false, true)\n    else\n        drawer:addTimedRect(ms, e.x, e.y, e.z, e.aoeLength, e.aoeWidth, e.heading, 0, false, true)\n    end\n    AnyoneCore.addWorldTextCountdown(ms, {x=e.x,y=e.y+1,z=e.z}, 0xFFFFFFFF, true, 1.1)\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"fb61f943-8469-52e8-93e6-c47031e66b9c",
								true,
							},
						},
						name = "M6N hazard draws",
						uuid = "bbbaf530-63d9-d861-a0c3-a46b1f09cf49",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1258 and (eventArgs.aoeID == 42581 or eventArgs.aoeID == 42583 or eventArgs.aoeID == 42585)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "fb61f943-8469-52e8-93e6-c47031e66b9c",
						version = 3,
					},
				},
			},
			displayPath = "AAC Cruiserweight M2/Sugar Riot/Draws",
			eventType = 18,
			name = "M6N hazard draws",
			uuid = "8265debd-0ef5-a290-bd82-67dd239212c5",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "AAC Cruiserweight M2/Sugar Riot",
			name = "AutoSim",
			uuid = "18fac517-5f57-e9a1-b560-ef743ae3c411",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local settings = AnyoneCore and AnyoneCore.Settings\nif settings then\n    if settings.DutyHelper then settings.DutyHelper.enabled = false end\n    if settings.PrepullHelper then settings.PrepullHelper.enabled = false end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"19e55fa0-1fd5-d051-ba1f-dde967da4977",
								true,
							},
						},
						name = "M6N helper setup",
						uuid = "4a23f256-a619-aa85-98c6-76d3061ea50c",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1258 and (true)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "19e55fa0-1fd5-d051-ba1f-dde967da4977",
						version = 3,
					},
				},
			},
			displayPath = "AAC Cruiserweight M2/Sugar Riot/AutoSim",
			eventType = 11,
			name = "M6N helper setup",
			uuid = "514080bc-d642-4de3-a6ef-dbcfc0d1badc",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 1258 then self.used = true; return end\ndata.normalRaidsInitialTargets = data.normalRaidsInitialTargets or {}\nlocal states = data.normalRaidsInitialTargets\nlocal state = states[\"1258_13822\"] or {}\nstates[\"1258_13822\"] = state\nlocal current = TensorCore.mGetTarget()\nlocal label = \"[Normal raids targeting] Sugar Riot\"\nif state.pending then\n    if current and current.id == state.pending then\n        d(label .. \" confirmed target=\" .. tostring(current.id))\n        state.pending = nil\n    elseif Now() - state.requestedAt >= 1500 then\n        d(label .. \" request not confirmed; intended=\" .. tostring(state.pending) ..\n            \" current=\" .. tostring(current and current.id))\n        state.pending = nil\n    end\n    self.used = true\n    return\nend\nif player.incombat or state.done then self.used = true; return end\nlocal boss, nearest = nil, 35 * 35\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=13822}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx = candidate.pos.x - player.pos.x\n        local dy = candidate.pos.y - player.pos.y\n        local dz = candidate.pos.z - player.pos.z\n        local distance = dx*dx + dy*dy + dz*dz\n        if distance <= nearest then\n            boss, nearest = candidate, distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label .. \" waiting for an attackable boss within 35 yalms; current=\" ..\n            tostring(current and current.id))\n        state.waitLogged = true\n    end\n    self.used = true\n    return\nend\nstate.done = true\nif current and current.alive and current.targetable and current.attackable then\n    d(label .. \" kept existing target; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current.id))\nelse\n    state.pending = boss.id\n    state.requestedAt = Now()\n    d(label .. \" target request; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"64804af1-fd90-ee04-a25c-72acec7b2a39",
								true,
							},
						},
						name = "Select nearby boss once",
						uuid = "a7156cfb-c5af-c53a-8b1c-2399c4da1cca",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 1258 then return false end\nlocal states = data.normalRaidsInitialTargets\nlocal state = states and states[\"1258_13822\"]\nreturn (state ~= nil and state.pending ~= nil) or (not player.incombat and (not state or not state.done))",
						dequeueIfLuaFalse = true,
						name = "Duty and initial target",
						uuid = "64804af1-fd90-ee04-a25c-72acec7b2a39",
						version = 3,
					},
				},
			},
			displayPath = "AAC Cruiserweight M2/Sugar Riot/AutoSim",
			name = "M6N select boss at encounter start",
			throttleTime = 500,
			uuid = "4cc158b4-244b-cab3-9ad2-71db1a6fe969",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal api = TensorCore.API.TensorACR\nlocal ok, elapsed = pcall(api.getAutoSimTime)\nif ok and type(elapsed) == \"number\" and elapsed >= 0 and elapsed <= 60 and not data.normalRaidForecastSet then\n    api.setAutoSimKillTime(324)\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0, 12)\n    api.clearAutoSimPhases(\"FullDowntime\")\n    local downtime = {}\n    for _, window in ipairs(downtime) do\n        api.addAutoSimPhase(\"FullDowntime\", window[1], window[2], 1)\n    end\n    data.normalRaidForecastSet = true\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"f54e3c3d-c28a-6dfe-bdff-c2cfb20e1819",
								true,
							},
						},
						name = "M6N AutoSim baseline",
						uuid = "7745d2be-4c8e-cd81-ba25-88198ab88005",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1258 and (eventArgs.spellID == 42607 and not data.normalRaidForecastSet)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "f54e3c3d-c28a-6dfe-bdff-c2cfb20e1819",
						version = 3,
					},
				},
			},
			displayPath = "AAC Cruiserweight M2/Sugar Riot/AutoSim",
			eventType = 3,
			name = "M6N AutoSim baseline",
			uuid = "59955718-a538-bb14-92bf-18b8419928e8",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "AAC Cruiserweight M3",
			uuid = "f830d6a5-d719-de07-ac60-5233a37bc710",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "AAC Cruiserweight M3",
			name = "Brute Abombinator",
			uuid = "5afc0b16-99d6-1d9f-a934-5ca4cf6c1dee",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "AAC Cruiserweight M3/Brute Abombinator",
			name = "Draws",
			uuid = "5bfd0e35-b8c9-43be-80ba-31f48ec458f2",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal e = eventArgs\nlocal shapes = {[42282]=\"circle\",[42283]=\"circle\",[42285]=\"circle\",[43339]=\"rect\",[42309]=\"circle\",[42324]=\"rect\"}\nlocal ms = math.floor(e.startTime + e.duration * 1000 - Now())\nif ms > 0 then\n    local drawer = TensorCore.getStaticDrawer(0x803333FF, 2)\n    if shapes[e.aoeID] == \"circle\" then\n        drawer:addTimedCircle(ms, e.x, e.y, e.z, e.aoeLength, 0, false, true)\n    else\n        drawer:addTimedRect(ms, e.x, e.y, e.z, e.aoeLength, e.aoeWidth, e.heading, 0, false, true)\n    end\n    AnyoneCore.addWorldTextCountdown(ms, {x=e.x,y=e.y+1,z=e.z}, 0xFFFFFFFF, true, 1.1)\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"c7c8fe14-921b-eb84-abc9-b8b8a8a71aa0",
								true,
							},
						},
						name = "M7N hazard draws",
						uuid = "4aa5efee-4eb8-d62e-99d1-8d481f2af4be",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1260 and (eventArgs.aoeID == 42282 or eventArgs.aoeID == 42283 or eventArgs.aoeID == 42285 or eventArgs.aoeID == 43339 or eventArgs.aoeID == 42309 or eventArgs.aoeID == 42324)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "c7c8fe14-921b-eb84-abc9-b8b8a8a71aa0",
						version = 3,
					},
				},
			},
			displayPath = "AAC Cruiserweight M3/Brute Abombinator/Draws",
			eventType = 18,
			name = "M7N hazard draws",
			uuid = "1eb441f3-6493-0754-87ac-cf7c0ce2e802",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "AAC Cruiserweight M3/Brute Abombinator",
			name = "AutoSim",
			uuid = "8619d27d-52e6-7695-946c-5b97f559a742",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local settings = AnyoneCore and AnyoneCore.Settings\nif settings then\n    if settings.DutyHelper then settings.DutyHelper.enabled = false end\n    if settings.PrepullHelper then settings.PrepullHelper.enabled = false end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"dc7b355d-b14c-34de-827c-974540adb86c",
								true,
							},
						},
						name = "M7N helper setup",
						uuid = "00306631-7ee3-8852-8ebc-fa6bb2ca1d3f",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1260 and (true)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "dc7b355d-b14c-34de-827c-974540adb86c",
						version = 3,
					},
				},
			},
			displayPath = "AAC Cruiserweight M3/Brute Abombinator/AutoSim",
			eventType = 11,
			name = "M7N helper setup",
			uuid = "22b49193-8aa6-0e5f-86f9-5d910574ff12",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 1260 then self.used = true; return end\ndata.normalRaidsInitialTargets = data.normalRaidsInitialTargets or {}\nlocal states = data.normalRaidsInitialTargets\nlocal state = states[\"1260_13756\"] or {}\nstates[\"1260_13756\"] = state\nlocal current = TensorCore.mGetTarget()\nlocal label = \"[Normal raids targeting] Brute Abombinator\"\nif state.pending then\n    if current and current.id == state.pending then\n        d(label .. \" confirmed target=\" .. tostring(current.id))\n        state.pending = nil\n    elseif Now() - state.requestedAt >= 1500 then\n        d(label .. \" request not confirmed; intended=\" .. tostring(state.pending) ..\n            \" current=\" .. tostring(current and current.id))\n        state.pending = nil\n    end\n    self.used = true\n    return\nend\nif player.incombat or state.done then self.used = true; return end\nlocal boss, nearest = nil, 35 * 35\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=13756}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx = candidate.pos.x - player.pos.x\n        local dy = candidate.pos.y - player.pos.y\n        local dz = candidate.pos.z - player.pos.z\n        local distance = dx*dx + dy*dy + dz*dz\n        if distance <= nearest then\n            boss, nearest = candidate, distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label .. \" waiting for an attackable boss within 35 yalms; current=\" ..\n            tostring(current and current.id))\n        state.waitLogged = true\n    end\n    self.used = true\n    return\nend\nstate.done = true\nif current and current.alive and current.targetable and current.attackable then\n    d(label .. \" kept existing target; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current.id))\nelse\n    state.pending = boss.id\n    state.requestedAt = Now()\n    d(label .. \" target request; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"ff1c9bfd-f07e-72aa-87f3-fb5e66898c20",
								true,
							},
						},
						name = "Select nearby boss once",
						uuid = "bcee9b7b-f86d-9f4c-b6fe-2ee52986f3af",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 1260 then return false end\nlocal states = data.normalRaidsInitialTargets\nlocal state = states and states[\"1260_13756\"]\nreturn (state ~= nil and state.pending ~= nil) or (not player.incombat and (not state or not state.done))",
						dequeueIfLuaFalse = true,
						name = "Duty and initial target",
						uuid = "ff1c9bfd-f07e-72aa-87f3-fb5e66898c20",
						version = 3,
					},
				},
			},
			displayPath = "AAC Cruiserweight M3/Brute Abombinator/AutoSim",
			name = "M7N select boss at encounter start",
			throttleTime = 500,
			uuid = "587d8afe-f1e6-1800-ad87-1f76fe0448d9",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal api = TensorCore.API.TensorACR\nlocal ok, elapsed = pcall(api.getAutoSimTime)\nif ok and type(elapsed) == \"number\" and elapsed >= 0 and elapsed <= 60 and not data.normalRaidForecastSet then\n    api.setAutoSimKillTime(355)\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0, 25)\n    api.clearAutoSimPhases(\"FullDowntime\")\n    local downtime = {{125.1,140.5},{249.2,264.6}}\n    for _, window in ipairs(downtime) do\n        api.addAutoSimPhase(\"FullDowntime\", window[1], window[2], 1)\n    end\n    -- The boss stays untargetable after landing. Only the forced flight and\n    -- landing portions lock the player's actions.\n    api.clearAutoSimPhases(\"Stun\")\n    local transitionLocks = {\n        {126.1, 130.8}, -- Neo Bombarian Special\n        {250.3, 259.4}, -- Powerslam\n    }\n    for _, window in ipairs(transitionLocks) do\n        api.addAutoSimPhase(\"Stun\", window[1], window[2], 1)\n    end\n    data.normalRaidForecastSet = true\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"00a648dd-7176-7869-b7b6-75475698ca4a",
								true,
							},
						},
						name = "M7N AutoSim baseline",
						uuid = "6d1fd9c6-fe56-1af1-92cc-4c22173bd3c6",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1260 and (eventArgs.spellID == 42264 and not data.normalRaidForecastSet)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "00a648dd-7176-7869-b7b6-75475698ca4a",
						version = 3,
					},
				},
			},
			displayPath = "AAC Cruiserweight M3/Brute Abombinator/AutoSim",
			eventType = 3,
			name = "M7N AutoSim baseline",
			uuid = "fe4e9256-07f1-1fe4-99b3-0c21222a5d2e",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "AAC Cruiserweight M4",
			uuid = "5a4d744c-6e52-ee19-86ad-584b0a6fa611",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "AAC Cruiserweight M4",
			name = "Howling Blade",
			uuid = "721b0851-3407-7fcd-a41e-df66fbb3f5de",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "AAC Cruiserweight M4/Howling Blade",
			name = "Draws",
			uuid = "cdb09d2c-279a-6b49-8b80-a6823faa8347",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal e = eventArgs\nlocal shapes = {[43393]=\"rect\",[41893]=\"rect\",[41895]=\"rect\",[41844]=\"rect\"}\nlocal ms = math.floor(e.startTime + e.duration * 1000 - Now())\nif ms > 0 then\n    local drawer = TensorCore.getStaticDrawer(0x803333FF, 2)\n    if shapes[e.aoeID] == \"circle\" then\n        drawer:addTimedCircle(ms, e.x, e.y, e.z, e.aoeLength, 0, false, true)\n    else\n        drawer:addTimedRect(ms, e.x, e.y, e.z, e.aoeLength, e.aoeWidth, e.heading, 0, false, true)\n    end\n    AnyoneCore.addWorldTextCountdown(ms, {x=e.x,y=e.y+1,z=e.z}, 0xFFFFFFFF, true, 1.1)\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"5741234d-31a6-decd-ac78-12fabfd120a3",
								true,
							},
						},
						name = "M8N hazard draws",
						uuid = "8d81d840-5de1-1507-aaaf-fde643723517",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1262 and (eventArgs.aoeID == 43393 or eventArgs.aoeID == 41893 or eventArgs.aoeID == 41895 or eventArgs.aoeID == 41844)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "5741234d-31a6-decd-ac78-12fabfd120a3",
						version = 3,
					},
				},
			},
			displayPath = "AAC Cruiserweight M4/Howling Blade/Draws",
			eventType = 18,
			name = "M8N hazard draws",
			uuid = "8844e335-4dd3-c192-b48a-213296802083",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "AAC Cruiserweight M4/Howling Blade",
			name = "AutoSim",
			uuid = "9238e03d-a59a-7a22-81e2-18deb459fdde",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local settings = AnyoneCore and AnyoneCore.Settings\nif settings then\n    if settings.DutyHelper then settings.DutyHelper.enabled = false end\n    if settings.PrepullHelper then settings.PrepullHelper.enabled = false end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"bb3b4d40-c42e-4649-ba2f-099ce7336b5c",
								true,
							},
						},
						name = "M8N helper setup",
						uuid = "9fc5a4eb-dd92-be94-9fc0-88868fd35022",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1262 and (true)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "bb3b4d40-c42e-4649-ba2f-099ce7336b5c",
						version = 3,
					},
				},
			},
			displayPath = "AAC Cruiserweight M4/Howling Blade/AutoSim",
			eventType = 11,
			name = "M8N helper setup",
			uuid = "3a46770f-3db7-bbab-a76a-2bd03b84d7ad",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 1262 then self.used = true; return end\ndata.normalRaidsInitialTargets = data.normalRaidsInitialTargets or {}\nlocal states = data.normalRaidsInitialTargets\nlocal state = states[\"1262_13843\"] or {}\nstates[\"1262_13843\"] = state\nlocal current = TensorCore.mGetTarget()\nlocal label = \"[Normal raids targeting] Howling Blade\"\nif state.pending then\n    if current and current.id == state.pending then\n        d(label .. \" confirmed target=\" .. tostring(current.id))\n        state.pending = nil\n    elseif Now() - state.requestedAt >= 1500 then\n        d(label .. \" request not confirmed; intended=\" .. tostring(state.pending) ..\n            \" current=\" .. tostring(current and current.id))\n        state.pending = nil\n    end\n    self.used = true\n    return\nend\nif player.incombat or state.done then self.used = true; return end\nlocal boss, nearest = nil, 35 * 35\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=13843}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx = candidate.pos.x - player.pos.x\n        local dy = candidate.pos.y - player.pos.y\n        local dz = candidate.pos.z - player.pos.z\n        local distance = dx*dx + dy*dy + dz*dz\n        if distance <= nearest then\n            boss, nearest = candidate, distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label .. \" waiting for an attackable boss within 35 yalms; current=\" ..\n            tostring(current and current.id))\n        state.waitLogged = true\n    end\n    self.used = true\n    return\nend\nstate.done = true\nif current and current.alive and current.targetable and current.attackable then\n    d(label .. \" kept existing target; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current.id))\nelse\n    state.pending = boss.id\n    state.requestedAt = Now()\n    d(label .. \" target request; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"67a26f44-58e7-1890-bd89-2767416b9e75",
								true,
							},
						},
						name = "Select nearby boss once",
						uuid = "23396b4f-505b-bd0f-98ab-b9f94f3f8d53",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 1262 then return false end\nlocal states = data.normalRaidsInitialTargets\nlocal state = states and states[\"1262_13843\"]\nreturn (state ~= nil and state.pending ~= nil) or (not player.incombat and (not state or not state.done))",
						dequeueIfLuaFalse = true,
						name = "Duty and initial target",
						uuid = "67a26f44-58e7-1890-bd89-2767416b9e75",
						version = 3,
					},
				},
			},
			displayPath = "AAC Cruiserweight M4/Howling Blade/AutoSim",
			name = "M8N select boss at encounter start",
			throttleTime = 500,
			uuid = "0390bd8e-c700-ed08-9ddc-1d08861a53b2",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal api = TensorCore.API.TensorACR\nlocal ok, elapsed = pcall(api.getAutoSimTime)\nif ok and type(elapsed) == \"number\" and elapsed >= 0 and elapsed <= 60 and not data.normalRaidForecastSet then\n    api.setAutoSimKillTime(348)\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0, 13)\n    api.clearAutoSimPhases(\"FullDowntime\")\n    local downtime = {{108.5,115.8},{190,213.5},{329.8,336.7}}\n    for _, window in ipairs(downtime) do\n        api.addAutoSimPhase(\"FullDowntime\", window[1], window[2], 1)\n    end\n    data.normalRaidForecastSet = true\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"6bdfa5fa-8d33-1eaf-a36c-596cc800eaaa",
								true,
							},
						},
						name = "M8N AutoSim baseline",
						uuid = "4179a759-ae8e-bb24-b22f-195c42f56c38",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1262 and (eventArgs.spellID == 41870 and not data.normalRaidForecastSet)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "6bdfa5fa-8d33-1eaf-a36c-596cc800eaaa",
						version = 3,
					},
				},
			},
			displayPath = "AAC Cruiserweight M4/Howling Blade/AutoSim",
			eventType = 3,
			name = "M8N AutoSim baseline",
			uuid = "83cef189-1ddc-5aee-bf17-a5dc221f67da",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "AAC Heavyweight M1",
			uuid = "65d1ac9b-12dd-8841-a1b4-af10ec710969",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "AAC Heavyweight M1",
			name = "Vamp Fatale",
			uuid = "38eb593a-39a1-f3ee-a47e-fe4e3dd67a88",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "AAC Heavyweight M1/Vamp Fatale",
			name = "Draws",
			uuid = "b1789ce4-a5e6-b943-898c-8631557a020c",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal e = eventArgs\nlocal shapes = {[45899]=\"circle\",[45901]=\"circle\",[45877]=\"rect\",[45878]=\"rect\",[45879]=\"rect\",[45880]=\"rect\"}\nlocal ms = math.floor(e.startTime + e.duration * 1000 - Now())\nif ms > 0 then\n    local drawer = TensorCore.getStaticDrawer(0x803333FF, 2)\n    if shapes[e.aoeID] == \"circle\" then\n        drawer:addTimedCircle(ms, e.x, e.y, e.z, e.aoeLength, 0, false, true)\n    else\n        drawer:addTimedRect(ms, e.x, e.y, e.z, e.aoeLength, e.aoeWidth, e.heading, 0, false, true)\n    end\n    AnyoneCore.addWorldTextCountdown(ms, {x=e.x,y=e.y+1,z=e.z}, 0xFFFFFFFF, true, 1.1)\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"35222737-b68c-aedc-a494-617443696b66",
								true,
							},
						},
						name = "M9N hazard draws",
						uuid = "e526b426-9ce0-5dee-8009-a39e42d98828",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1320 and (eventArgs.aoeID == 45899 or eventArgs.aoeID == 45901 or eventArgs.aoeID == 45877 or eventArgs.aoeID == 45878 or eventArgs.aoeID == 45879 or eventArgs.aoeID == 45880)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "35222737-b68c-aedc-a494-617443696b66",
						version = 3,
					},
				},
			},
			displayPath = "AAC Heavyweight M1/Vamp Fatale/Draws",
			eventType = 18,
			name = "M9N hazard draws",
			uuid = "37d33128-3ff6-f166-9c29-0cbc0d4f03e6",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "AAC Heavyweight M1/Vamp Fatale",
			name = "AutoSim",
			uuid = "3a1a5787-8f4f-8580-a6c6-6406e81419eb",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local settings = AnyoneCore and AnyoneCore.Settings\nif settings then\n    if settings.DutyHelper then settings.DutyHelper.enabled = false end\n    if settings.PrepullHelper then settings.PrepullHelper.enabled = false end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"31a21662-ad2d-9f06-be41-4c60637f38d1",
								true,
							},
						},
						name = "M9N helper setup",
						uuid = "787a53f5-b07e-2d78-8d30-669275e1a3dd",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1320 and (true)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "31a21662-ad2d-9f06-be41-4c60637f38d1",
						version = 3,
					},
				},
			},
			displayPath = "AAC Heavyweight M1/Vamp Fatale/AutoSim",
			eventType = 11,
			name = "M9N helper setup",
			uuid = "e89dcf48-a39c-196a-ba27-cc80b9e72d19",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 1320 then self.used = true; return end\ndata.normalRaidsInitialTargets = data.normalRaidsInitialTargets or {}\nlocal states = data.normalRaidsInitialTargets\nlocal state = states[\"1320_14300\"] or {}\nstates[\"1320_14300\"] = state\nlocal current = TensorCore.mGetTarget()\nlocal label = \"[Normal raids targeting] Vamp Fatale\"\nif state.pending then\n    if current and current.id == state.pending then\n        d(label .. \" confirmed target=\" .. tostring(current.id))\n        state.pending = nil\n    elseif Now() - state.requestedAt >= 1500 then\n        d(label .. \" request not confirmed; intended=\" .. tostring(state.pending) ..\n            \" current=\" .. tostring(current and current.id))\n        state.pending = nil\n    end\n    self.used = true\n    return\nend\nif player.incombat or state.done then self.used = true; return end\nlocal boss, nearest = nil, 35 * 35\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=14300}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx = candidate.pos.x - player.pos.x\n        local dy = candidate.pos.y - player.pos.y\n        local dz = candidate.pos.z - player.pos.z\n        local distance = dx*dx + dy*dy + dz*dz\n        if distance <= nearest then\n            boss, nearest = candidate, distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label .. \" waiting for an attackable boss within 35 yalms; current=\" ..\n            tostring(current and current.id))\n        state.waitLogged = true\n    end\n    self.used = true\n    return\nend\nstate.done = true\nif current and current.alive and current.targetable and current.attackable then\n    d(label .. \" kept existing target; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current.id))\nelse\n    state.pending = boss.id\n    state.requestedAt = Now()\n    d(label .. \" target request; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"d98ba5cf-e25f-8b27-9a3c-52c577a8183a",
								true,
							},
						},
						name = "Select nearby boss once",
						uuid = "8ad72d95-2562-5116-958c-e916993bea02",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 1320 then return false end\nlocal states = data.normalRaidsInitialTargets\nlocal state = states and states[\"1320_14300\"]\nreturn (state ~= nil and state.pending ~= nil) or (not player.incombat and (not state or not state.done))",
						dequeueIfLuaFalse = true,
						name = "Duty and initial target",
						uuid = "d98ba5cf-e25f-8b27-9a3c-52c577a8183a",
						version = 3,
					},
				},
			},
			displayPath = "AAC Heavyweight M1/Vamp Fatale/AutoSim",
			name = "M9N select boss at encounter start",
			throttleTime = 500,
			uuid = "4f4426fc-ac22-9702-b466-6929dcb96437",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal api = TensorCore.API.TensorACR\nlocal ok, elapsed = pcall(api.getAutoSimTime)\nif ok and type(elapsed) == \"number\" and elapsed >= 0 and elapsed <= 60 and not data.normalRaidForecastSet then\n    api.setAutoSimKillTime(384)\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0, 12)\n    api.clearAutoSimPhases(\"FullDowntime\")\n    local downtime = {}\n    for _, window in ipairs(downtime) do\n        api.addAutoSimPhase(\"FullDowntime\", window[1], window[2], 1)\n    end\n    data.normalRaidForecastSet = true\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"6d7da67a-8a4b-e15a-870a-aa29394f0620",
								true,
							},
						},
						name = "M9N AutoSim baseline",
						uuid = "450e20cf-d91c-0884-8693-d7ef3cbb9a3b",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1320 and (eventArgs.spellID == 45921 and not data.normalRaidForecastSet)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "6d7da67a-8a4b-e15a-870a-aa29394f0620",
						version = 3,
					},
				},
			},
			displayPath = "AAC Heavyweight M1/Vamp Fatale/AutoSim",
			eventType = 3,
			name = "M9N AutoSim baseline",
			uuid = "05799e76-671c-9256-82ff-3d647c51b418",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local p = TensorCore.mGetPlayer()\nif not p then self.used = true; return end\nlocal eligible = p.localmapid == 1320 and p.job == 23\nlocal s = NormalRaidsM9NDotState\nif s and not eligible then\n    -- left the duty or changed job: put the previous entry settings back\n    if s.entry then\n        s.entry.enabled = s.existed and s.enabled or false\n        s.entry.allowIfTarget = s.allowIfTarget\n        s.entry.allowSmartDoT = s.allowSmartDoT\n    end\n    NormalRaidsM9NDotState = nil\n    d(\"[M9N DoTs] Restored prior Flail blacklist settings\")\nelseif eligible and not s then\n    -- recorded before the attempt so an unsupported ACR is not retried every update\n    NormalRaidsM9NDotState = {}\n    local api = TensorCore.API.TensorACR\n    local supported, found = pcall(api.getBlacklistEntry, 14302)\n    if supported then\n        local ok, e = pcall(api.addBlacklistEntry, 14302, \"Fatal Flail\")\n        if ok and e then\n            NormalRaidsM9NDotState = {entry=e, existed=found==true, enabled=e.enabled, allowIfTarget=e.allowIfTarget, allowSmartDoT=e.allowSmartDoT}\n            e.enabled = true\n            e.allowIfTarget = false\n            e.allowSmartDoT = false\n            d(\"[M9N DoTs] Fatal Flail blacklisted for BRD including current target and Smart DoT\")\n        end\n    end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"b28227d2-cc26-44a4-8013-31d8fe443061",
								true,
							},
						},
						uuid = "41a026fd-7bac-48f7-af62-effbf9992624",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nif not p then return false end\nlocal eligible = p.localmapid == 1320 and p.job == 23\nif NormalRaidsM9NDotState then return not eligible end\nreturn eligible",
						uuid = "b28227d2-cc26-44a4-8013-31d8fe443061",
						version = 3,
					},
				},
			},
			displayPath = "AAC Heavyweight M1/Vamp Fatale/AutoSim",
			execute = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=1320 or p.job~=23 or NormalRaidsM9NDotState then return end\nlocal api=TensorCore.API.TensorACR\nlocal existed=api.getBlacklistEntry(14302)==true\nlocal e=api.addBlacklistEntry(14302,\"Fatal Flail\")\nNormalRaidsM9NDotState={entry=e,existed=existed,enabled=e.enabled,allowIfTarget=e.allowIfTarget,allowSmartDoT=e.allowSmartDoT}\ne.enabled=true; e.allowIfTarget=false; e.allowSmartDoT=false\nd(\"[M9N DoTs] Fatal Flail blacklisted for BRD including current target and Smart DoT\")\nself.used=true",
			name = "M9N BRD - blacklist Fatal Flail DoTs",
			throttleTime = 1000,
			uuid = "a9b9e0b0-2095-45d9-887c-4b8730d113a8",
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
			displayPath = "AAC Heavyweight M1/Vamp Fatale/AutoSim",
			eventType = 11,
			execute = "local s=NormalRaidsM9NDotState\nif not s then return end\nlocal p=TensorCore.mGetPlayer()\nif p and p.localmapid==1320 then return end\nif s.entry then\n    s.entry.enabled=s.existed and s.enabled or false\n    s.entry.allowIfTarget=s.allowIfTarget; s.entry.allowSmartDoT=s.allowSmartDoT\n    d(\"[M9N DoTs] Restored prior Flail blacklist settings\")\nend\nNormalRaidsM9NDotState=nil\nself.used=true",
			executeType = 2,
			name = "M9N BRD - restore Flail blacklist on leaving",
			uuid = "79f5ee25-51f8-b679-9530-01e051a8f5bd",
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
			displayPath = "AAC Heavyweight M1/Vamp Fatale/AutoSim",
			eventType = 26,
			execute = "local cid=eventArgs.entityContentID\nif cid~=14301 and cid~=14300 then return end\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=1320 then return end\nif cid==14301 and not eventArgs.isTargetable then data.m9nCoffinReturnPending=true; return end\nif not eventArgs.isTargetable or (cid==14300 and not data.m9nCoffinReturnPending) then return end\nlocal intended=TensorCore.mGetEntity(eventArgs.entityID)\nlocal current=TensorCore.mGetTarget()\nlocal prefix=\"[M9N targeting] \"\nif not intended or not intended.alive or not intended.targetable or not intended.attackable then\n d(prefix..\"blocked: unavailable; intended=\"..tostring(eventArgs.entityID)..\" current=\"..tostring(current and current.id)..\" contentID=\"..tostring(cid)); return\nend\nif cid==14301 then data.m9nCoffinReturnPending=true end\nif current and current.id==intended.id then\n d(prefix..\"already selected=\"..tostring(intended.id))\nelse\n d(prefix..\"request intended=\"..tostring(intended.id)..\" current=\"..tostring(current and current.id)..\" contentID=\"..tostring(cid)..\" inCombat=\"..tostring(p.incombat))\n Player:SetTarget(intended.id)\n local after=TensorCore.mGetTarget()\n d(prefix..\"after request intended=\"..tostring(intended.id)..\" current=\"..tostring(after and after.id)..\" confirmed=\"..tostring(after~=nil and after.id==intended.id))\nend\nif cid==14300 then data.m9nCoffinReturnPending=nil end\nself.used=true",
			executeType = 2,
			name = "M9N target Coffinmaker and returning boss",
			uuid = "38cff9bd-a613-fcf2-b94b-2944c35c945e",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "AAC Heavyweight M2",
			uuid = "75a45647-4e98-fc0d-bf49-ee9bd1bc9016",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "AAC Heavyweight M2",
			name = "Red Hot & Deep Blue",
			uuid = "d7ff911a-522a-6d4d-be05-a9e087bdf87a",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "AAC Heavyweight M2/Red Hot & Deep Blue",
			name = "Draws",
			uuid = "76f54ab6-cf8e-c525-bd49-c14904605b82",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal e = eventArgs\nlocal shapes = {[46483]=\"rect\",[46507]=\"circle\"}\nlocal ms = math.floor(e.startTime + e.duration * 1000 - Now())\nif ms > 0 then\n    local drawer = TensorCore.getStaticDrawer(0x803333FF, 2)\n    if shapes[e.aoeID] == \"circle\" then\n        drawer:addTimedCircle(ms, e.x, e.y, e.z, e.aoeLength, 0, false, true)\n    else\n        drawer:addTimedRect(ms, e.x, e.y, e.z, e.aoeLength, e.aoeWidth, e.heading, 0, false, true)\n    end\n    AnyoneCore.addWorldTextCountdown(ms, {x=e.x,y=e.y+1,z=e.z}, 0xFFFFFFFF, true, 1.1)\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"19cad8b9-3718-6693-ae36-a53acb795f1f",
								true,
							},
						},
						name = "M10N hazard draws",
						uuid = "a5539779-6691-f0e8-b47c-63379b860b02",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1322 and (eventArgs.aoeID == 46483 or eventArgs.aoeID == 46507)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "19cad8b9-3718-6693-ae36-a53acb795f1f",
						version = 3,
					},
				},
			},
			displayPath = "AAC Heavyweight M2/Red Hot & Deep Blue/Draws",
			eventType = 18,
			name = "M10N hazard draws",
			uuid = "38e4e636-1137-2f93-9c4f-7f64c58f1bc0",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "AAC Heavyweight M2/Red Hot & Deep Blue",
			name = "AutoSim",
			uuid = "19d111d1-85b9-437b-b20a-74f743ff74b3",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local settings = AnyoneCore and AnyoneCore.Settings\nif settings then\n    if settings.DutyHelper then settings.DutyHelper.enabled = false end\n    if settings.PrepullHelper then settings.PrepullHelper.enabled = false end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"bbf87082-7a7b-7f1f-87fb-8671c59f5162",
								true,
							},
						},
						name = "M10N helper setup",
						uuid = "6e98cff0-da4e-4f62-ab50-3402e23d61d7",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1322 and (true)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "bbf87082-7a7b-7f1f-87fb-8671c59f5162",
						version = 3,
					},
				},
			},
			displayPath = "AAC Heavyweight M2/Red Hot & Deep Blue/AutoSim",
			eventType = 11,
			name = "M10N helper setup",
			uuid = "45a061f3-b731-2f59-a7c3-574e8f967470",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 1322 then self.used = true; return end\ndata.normalRaidsInitialTargets = data.normalRaidsInitialTargets or {}\nlocal states = data.normalRaidsInitialTargets\nlocal state = states[\"1322_14369\"] or {}\nstates[\"1322_14369\"] = state\nlocal current = TensorCore.mGetTarget()\nlocal label = \"[Normal raids targeting] Deep Blue\"\nif state.pending then\n    if current and current.id == state.pending then\n        d(label .. \" confirmed target=\" .. tostring(current.id))\n        state.pending = nil\n    elseif Now() - state.requestedAt >= 1500 then\n        d(label .. \" request not confirmed; intended=\" .. tostring(state.pending) ..\n            \" current=\" .. tostring(current and current.id))\n        state.pending = nil\n    end\n    self.used = true\n    return\nend\nif player.incombat or state.done then self.used = true; return end\nlocal boss, nearest = nil, 35 * 35\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=14369}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx = candidate.pos.x - player.pos.x\n        local dy = candidate.pos.y - player.pos.y\n        local dz = candidate.pos.z - player.pos.z\n        local distance = dx*dx + dy*dy + dz*dz\n        if distance <= nearest then\n            boss, nearest = candidate, distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label .. \" waiting for an attackable boss within 35 yalms; current=\" ..\n            tostring(current and current.id))\n        state.waitLogged = true\n    end\n    self.used = true\n    return\nend\nstate.done = true\nif current and current.alive and current.targetable and current.attackable then\n    d(label .. \" kept existing target; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current.id))\nelse\n    state.pending = boss.id\n    state.requestedAt = Now()\n    d(label .. \" target request; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"940a961a-abd6-8b55-88a3-bfca295efaf5",
								true,
							},
						},
						name = "Select nearby boss once",
						uuid = "6cba8f55-d375-e244-8ee0-be0428326f0f",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 1322 then return false end\nlocal states = data.normalRaidsInitialTargets\nlocal state = states and states[\"1322_14369\"]\nreturn (state ~= nil and state.pending ~= nil) or (not player.incombat and (not state or not state.done))",
						dequeueIfLuaFalse = true,
						name = "Duty and initial target",
						uuid = "940a961a-abd6-8b55-88a3-bfca295efaf5",
						version = 3,
					},
				},
			},
			displayPath = "AAC Heavyweight M2/Red Hot & Deep Blue/AutoSim",
			name = "M10N select boss at encounter start",
			throttleTime = 500,
			uuid = "f29df667-d527-e047-8a42-0a3cc4013b5d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal api = TensorCore.API.TensorACR\nlocal ok, elapsed = pcall(api.getAutoSimTime)\nif ok and type(elapsed) == \"number\" and elapsed >= 0 and elapsed <= 60 and not data.normalRaidForecastSet then\n    api.setAutoSimKillTime(397)\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0, 26)\n    api.clearAutoSimPhases(\"FullDowntime\")\n    local downtime = {{95.5,106.6},{157.3,172.9},{197.7,208.8}}\n    for _, window in ipairs(downtime) do\n        api.addAutoSimPhase(\"FullDowntime\", window[1], window[2], 1)\n    end\n    data.normalRaidForecastSet = true\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"a6400033-dc0a-6b5d-b967-01fe6d8f57dc",
								true,
							},
						},
						name = "M10N AutoSim baseline",
						uuid = "69dc5bc6-155f-8c9f-a6b2-0eadfee710c7",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1322 and (eventArgs.spellID == 46480 and not data.normalRaidForecastSet)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "a6400033-dc0a-6b5d-b967-01fe6d8f57dc",
						version = 3,
					},
				},
			},
			displayPath = "AAC Heavyweight M2/Red Hot & Deep Blue/AutoSim",
			eventType = 3,
			name = "M10N AutoSim baseline",
			uuid = "04096360-c1f1-5c26-931c-f1e69291a36f",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "AAC Heavyweight M3",
			uuid = "b38da771-d8f0-9520-913c-1528cf6c85ce",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "AAC Heavyweight M3",
			name = "The Tyrant",
			uuid = "f962e8d8-6a8a-c388-9030-f5be6c5a5e59",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "AAC Heavyweight M3/The Tyrant",
			name = "Draws",
			uuid = "b0de460d-ba5f-92eb-bde8-774c4c4deb20",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal e = eventArgs\nlocal shapes = {[46011]=\"circle\",[46026]=\"circle\",[46058]=\"circle\",[46059]=\"rect\",[46064]=\"rect\"}\nlocal ms = math.floor(e.startTime + e.duration * 1000 - Now())\nif ms > 0 then\n    local drawer = TensorCore.getStaticDrawer(0x803333FF, 2)\n    if shapes[e.aoeID] == \"circle\" then\n        drawer:addTimedCircle(ms, e.x, e.y, e.z, e.aoeLength, 0, false, true)\n    else\n        drawer:addTimedRect(ms, e.x, e.y, e.z, e.aoeLength, e.aoeWidth, e.heading, 0, false, true)\n    end\n    AnyoneCore.addWorldTextCountdown(ms, {x=e.x,y=e.y+1,z=e.z}, 0xFFFFFFFF, true, 1.1)\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"2f1e0c12-6348-d332-95ac-a66dcfa5a08e",
								true,
							},
						},
						name = "M11N hazard draws",
						uuid = "83598d33-1bf7-4929-bbf9-0661e0639df3",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1324 and (eventArgs.aoeID == 46011 or eventArgs.aoeID == 46026 or eventArgs.aoeID == 46058 or eventArgs.aoeID == 46059 or eventArgs.aoeID == 46064)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "2f1e0c12-6348-d332-95ac-a66dcfa5a08e",
						version = 3,
					},
				},
			},
			displayPath = "AAC Heavyweight M3/The Tyrant/Draws",
			eventType = 18,
			name = "M11N hazard draws",
			uuid = "8f3598a2-5a74-c70d-a39e-fc7934981968",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "AAC Heavyweight M3/The Tyrant",
			name = "AutoSim",
			uuid = "c367b56e-94a1-8e9e-aef3-7091fcf2b9a9",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local settings = AnyoneCore and AnyoneCore.Settings\nif settings then\n    if settings.DutyHelper then settings.DutyHelper.enabled = false end\n    if settings.PrepullHelper then settings.PrepullHelper.enabled = false end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"d5bbcabc-ccf2-6215-83ae-e1498b508e19",
								true,
							},
						},
						name = "M11N helper setup",
						uuid = "10513d09-e184-fc9e-a4c9-034fbdf88366",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1324 and (true)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "d5bbcabc-ccf2-6215-83ae-e1498b508e19",
						version = 3,
					},
				},
			},
			displayPath = "AAC Heavyweight M3/The Tyrant/AutoSim",
			eventType = 11,
			name = "M11N helper setup",
			uuid = "299c14e3-b25d-a19b-93d7-ae6c640ab733",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 1324 then self.used = true; return end\ndata.normalRaidsInitialTargets = data.normalRaidsInitialTargets or {}\nlocal states = data.normalRaidsInitialTargets\nlocal state = states[\"1324_14305\"] or {}\nstates[\"1324_14305\"] = state\nlocal current = TensorCore.mGetTarget()\nlocal label = \"[Normal raids targeting] The Tyrant\"\nif state.pending then\n    if current and current.id == state.pending then\n        d(label .. \" confirmed target=\" .. tostring(current.id))\n        state.pending = nil\n    elseif Now() - state.requestedAt >= 1500 then\n        d(label .. \" request not confirmed; intended=\" .. tostring(state.pending) ..\n            \" current=\" .. tostring(current and current.id))\n        state.pending = nil\n    end\n    self.used = true\n    return\nend\nif player.incombat or state.done then self.used = true; return end\nlocal boss, nearest = nil, 35 * 35\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=14305}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx = candidate.pos.x - player.pos.x\n        local dy = candidate.pos.y - player.pos.y\n        local dz = candidate.pos.z - player.pos.z\n        local distance = dx*dx + dy*dy + dz*dz\n        if distance <= nearest then\n            boss, nearest = candidate, distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label .. \" waiting for an attackable boss within 35 yalms; current=\" ..\n            tostring(current and current.id))\n        state.waitLogged = true\n    end\n    self.used = true\n    return\nend\nstate.done = true\nif current and current.alive and current.targetable and current.attackable then\n    d(label .. \" kept existing target; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current.id))\nelse\n    state.pending = boss.id\n    state.requestedAt = Now()\n    d(label .. \" target request; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"e26e8fa6-46e0-f32e-82f7-d9a6805f2c9f",
								true,
							},
						},
						name = "Select nearby boss once",
						uuid = "3d111e3f-7ffc-f4c3-8ea4-20c7a6c31b80",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 1324 then return false end\nlocal states = data.normalRaidsInitialTargets\nlocal state = states and states[\"1324_14305\"]\nreturn (state ~= nil and state.pending ~= nil) or (not player.incombat and (not state or not state.done))",
						dequeueIfLuaFalse = true,
						name = "Duty and initial target",
						uuid = "e26e8fa6-46e0-f32e-82f7-d9a6805f2c9f",
						version = 3,
					},
				},
			},
			displayPath = "AAC Heavyweight M3/The Tyrant/AutoSim",
			name = "M11N select boss at encounter start",
			throttleTime = 500,
			uuid = "0f59696c-6908-9d4d-bddf-a0a7327cb535",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal api = TensorCore.API.TensorACR\nlocal ok, elapsed = pcall(api.getAutoSimTime)\nif ok and type(elapsed) == \"number\" and elapsed >= 0 and elapsed <= 60 and not data.normalRaidForecastSet then\n    api.setAutoSimKillTime(462)\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0, 30)\n    api.clearAutoSimPhases(\"FullDowntime\")\n    local downtime = {}\n    for _, window in ipairs(downtime) do\n        api.addAutoSimPhase(\"FullDowntime\", window[1], window[2], 1)\n    end\n    data.normalRaidForecastSet = true\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"1dccd789-d123-90d3-b452-ef0ba78d5b0d",
								true,
							},
						},
						name = "M11N AutoSim baseline",
						uuid = "511d4cb4-e6a4-693f-9f4f-6981f0895ffb",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1324 and (eventArgs.spellID == 46006 and not data.normalRaidForecastSet)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "1dccd789-d123-90d3-b452-ef0ba78d5b0d",
						version = 3,
					},
				},
			},
			displayPath = "AAC Heavyweight M3/The Tyrant/AutoSim",
			eventType = 3,
			name = "M11N AutoSim baseline",
			uuid = "ee766799-1b41-0793-8b90-dec275ccf39c",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "AAC Cruiserweight M1",
			uuid = "6469e0f9-25fa-ede9-8701-8d4ed56a1d51",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "AAC Cruiserweight M1",
			name = "Dancing Green",
			uuid = "f678fe73-53df-8472-8cc0-eea9341e024f",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "AAC Cruiserweight M1/Dancing Green",
			name = "Draws",
			uuid = "f81e96eb-fddb-4953-8c6f-0c5cdd62081d",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal e = TensorCore.mGetEntity(eventArgs.entityID)\nlocal p = e and e.pos\nlocal ms = math.floor(eventArgs.channelTimeMax * 1000)\nif p and ms > 0 then\n    AnyoneCore.addWorldTextCountdown(ms, {x=p.x,y=p.y+2,z=p.z}, 0xFFFFFFFF, true, 1.2)\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"78dd4213-ee33-0361-bb99-4c5992dc98c9",
								true,
							},
						},
						name = "M5N Twist countdown",
						uuid = "33edc814-c214-1752-a7eb-fe441a83c706",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1256 and (eventArgs.spellID == 42701 or eventArgs.spellID == 42706)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "78dd4213-ee33-0361-bb99-4c5992dc98c9",
						version = 3,
					},
				},
			},
			displayPath = "AAC Cruiserweight M1/Dancing Green/Draws",
			eventType = 3,
			name = "M5N Twist countdown",
			uuid = "01247a18-12b3-533a-b575-45cab3ec4395",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "AAC Cruiserweight M1/Dancing Green",
			name = "AutoSim",
			uuid = "e199d761-070f-d3c2-b7d5-3302afe67e53",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local settings = AnyoneCore and AnyoneCore.Settings\nif settings then\n    if settings.DutyHelper then settings.DutyHelper.enabled = false end\n    if settings.PrepullHelper then settings.PrepullHelper.enabled = false end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"e59172c3-4cee-f7fd-be05-5a6e4ddc9355",
								true,
							},
						},
						name = "M5N helper setup",
						uuid = "63ac26fd-b98d-5b27-869b-feb596973775",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1256 and (true)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "e59172c3-4cee-f7fd-be05-5a6e4ddc9355",
						version = 3,
					},
				},
			},
			displayPath = "AAC Cruiserweight M1/Dancing Green/AutoSim",
			eventType = 11,
			name = "M5N helper setup",
			uuid = "00f1f154-4507-fbae-aa6c-fe93fd91fa67",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 1256 then self.used = true; return end\ndata.normalRaidsInitialTargets = data.normalRaidsInitialTargets or {}\nlocal states = data.normalRaidsInitialTargets\nlocal state = states[\"1256_13778\"] or {}\nstates[\"1256_13778\"] = state\nlocal current = TensorCore.mGetTarget()\nlocal label = \"[Normal raids targeting] Dancing Green\"\nif state.pending then\n    if current and current.id == state.pending then\n        d(label .. \" confirmed target=\" .. tostring(current.id))\n        state.pending = nil\n    elseif Now() - state.requestedAt >= 1500 then\n        d(label .. \" request not confirmed; intended=\" .. tostring(state.pending) ..\n            \" current=\" .. tostring(current and current.id))\n        state.pending = nil\n    end\n    self.used = true\n    return\nend\nif player.incombat or state.done then self.used = true; return end\nlocal boss, nearest = nil, 35 * 35\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=13778}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx = candidate.pos.x - player.pos.x\n        local dy = candidate.pos.y - player.pos.y\n        local dz = candidate.pos.z - player.pos.z\n        local distance = dx*dx + dy*dy + dz*dz\n        if distance <= nearest then\n            boss, nearest = candidate, distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label .. \" waiting for an attackable boss within 35 yalms; current=\" ..\n            tostring(current and current.id))\n        state.waitLogged = true\n    end\n    self.used = true\n    return\nend\nstate.done = true\nif current and current.alive and current.targetable and current.attackable then\n    d(label .. \" kept existing target; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current.id))\nelse\n    state.pending = boss.id\n    state.requestedAt = Now()\n    d(label .. \" target request; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"df70ae46-0ac7-3ebf-aaab-58b8499a4131",
								true,
							},
						},
						name = "Select nearby boss once",
						uuid = "ceda27ed-c4ad-467f-af17-46d551d41089",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 1256 then return false end\nlocal states = data.normalRaidsInitialTargets\nlocal state = states and states[\"1256_13778\"]\nreturn (state ~= nil and state.pending ~= nil) or (not player.incombat and (not state or not state.done))",
						dequeueIfLuaFalse = true,
						name = "Duty and initial target",
						uuid = "df70ae46-0ac7-3ebf-aaab-58b8499a4131",
						version = 3,
					},
				},
			},
			displayPath = "AAC Cruiserweight M1/Dancing Green/AutoSim",
			name = "M5N select boss at encounter start",
			throttleTime = 500,
			uuid = "2c31db8f-a81f-5ec6-bb22-9f70d67763a5",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal api = TensorCore.API.TensorACR\nlocal ok, elapsed = pcall(api.getAutoSimTime)\nif ok and type(elapsed) == \"number\" and elapsed >= 0 and elapsed <= 60 and not data.normalRaidForecastSet then\n    api.setAutoSimKillTime(330)\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0, 12)\n    api.clearAutoSimPhases(\"FullDowntime\")\n    local downtime = {}\n    for _, window in ipairs(downtime) do\n        api.addAutoSimPhase(\"FullDowntime\", window[1], window[2], 1)\n    end\n    data.normalRaidForecastSet = true\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"4bec75cf-e704-53c1-9efa-5751e5c528e9",
								true,
							},
						},
						name = "M5N AutoSim baseline",
						uuid = "1f85f8ae-4cdb-b417-8a0d-77075d7ae835",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1256 and (eventArgs.spellID == 42701 and not data.normalRaidForecastSet)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "4bec75cf-e704-53c1-9efa-5751e5c528e9",
						version = 3,
					},
				},
			},
			displayPath = "AAC Cruiserweight M1/Dancing Green/AutoSim",
			eventType = 3,
			name = "M5N AutoSim baseline",
			uuid = "fbeafa5b-b887-f23d-b731-db311f0a0519",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Sigmascape V3.0",
			uuid = "1882a41c-fd98-f4ba-afd9-baea9705b464",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Sigmascape V3.0",
			name = "Guardian",
			uuid = "5054cd24-c072-2339-bc3f-f0a1784bd0a2",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Sigmascape V3.0/Guardian",
			name = "AutoSim",
			uuid = "06dedf0a-0018-e068-b895-3840b9902620",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "gStartCombat = false\nlocal settings = AnyoneCore and AnyoneCore.Settings\nif settings then\n    if settings.DutyHelper then settings.DutyHelper.enabled = false end\n    if settings.PrepullHelper then settings.PrepullHelper.enabled = false end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"f8262d0a-f647-dd4b-8ede-6220160f2c2f",
								true,
							},
						},
						name = "O7N helper setup",
						uuid = "0f7b09e7-41db-7acd-b516-ff94ba2a823d",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 750 and (true)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "f8262d0a-f647-dd4b-8ede-6220160f2c2f",
						version = 3,
					},
				},
			},
			displayPath = "Sigmascape V3.0/Guardian/AutoSim",
			eventType = 11,
			name = "O7N helper setup",
			uuid = "355c898a-3cdb-7320-8730-dbc56398e53d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 750 then self.used = true; return end\ndata.normalRaidsInitialTargets = data.normalRaidsInitialTargets or {}\nlocal states = data.normalRaidsInitialTargets\nlocal state = states[\"750_7107\"] or {}\nstates[\"750_7107\"] = state\nlocal current = TensorCore.mGetTarget()\nlocal label = \"[Normal raids targeting] Guardian\"\nif state.pending then\n    if current and current.id == state.pending then\n        d(label .. \" confirmed target=\" .. tostring(current.id))\n        state.pending = nil\n    elseif Now() - state.requestedAt >= 1500 then\n        d(label .. \" request not confirmed; intended=\" .. tostring(state.pending) ..\n            \" current=\" .. tostring(current and current.id))\n        state.pending = nil\n    end\n    self.used = true\n    return\nend\nif player.incombat or state.done then self.used = true; return end\nlocal boss, nearest = nil, 35 * 35\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=7107}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx = candidate.pos.x - player.pos.x\n        local dy = candidate.pos.y - player.pos.y\n        local dz = candidate.pos.z - player.pos.z\n        local distance = dx*dx + dy*dy + dz*dz\n        if distance <= nearest then\n            boss, nearest = candidate, distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label .. \" waiting for an attackable boss within 35 yalms; current=\" ..\n            tostring(current and current.id))\n        state.waitLogged = true\n    end\n    self.used = true\n    return\nend\nstate.done = true\nif current and current.alive and current.targetable and current.attackable then\n    d(label .. \" kept existing target; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current.id))\nelse\n    state.pending = boss.id\n    state.requestedAt = Now()\n    d(label .. \" target request; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current and current.id))\n    gStartCombat = false\n    Player:SetTarget(boss.id)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"7a1d1851-fec8-2888-8ee8-d7f7f6372fa5",
								true,
							},
						},
						name = "O7N select boss at encounter start",
						uuid = "9d29dc6a-28ec-b923-9612-e9e463e7a68a",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 750 then return false end\nlocal states = data.normalRaidsInitialTargets\nlocal state = states and states[\"750_7107\"]\nreturn (state ~= nil and state.pending ~= nil) or (not player.incombat and (not state or not state.done))",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "7a1d1851-fec8-2888-8ee8-d7f7f6372fa5",
						version = 3,
					},
				},
			},
			displayPath = "Sigmascape V3.0/Guardian/AutoSim",
			name = "O7N select boss at encounter start",
			throttleTime = 500,
			uuid = "f50e7822-0a35-2769-8dda-4a09683e984c",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local api = TensorCore.API.TensorACR\nlocal ok, elapsed = pcall(api.getAutoSimTime)\nif ok and type(elapsed) == \"number\" and elapsed >= 0 and elapsed <= 60 and not data.o7nForecastSet then\n    api.setAutoSimKillTime(332)\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0, 20)\n    data.o7nForecastSet = true\nend\nself.used = true",
						conditions = 
						{
							
							{
								"66242d97-b339-4feb-9e74-b17fb2695404",
								true,
							},
						},
						name = "O7N AutoSim baseline",
						uuid = "59d5306a-a504-156a-a50d-db74dcb252ac",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 750 and (eventArgs.entityContentID == 7107 and eventArgs.spellID == 10091 and not data.o7nForecastSet)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "66242d97-b339-4feb-9e74-b17fb2695404",
						version = 3,
					},
				},
			},
			displayPath = "Sigmascape V3.0/Guardian/AutoSim",
			eventType = 3,
			name = "O7N AutoSim baseline",
			uuid = "873f1558-52e7-d4d1-90b4-ff8feca843cc",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Sigmascape V3.0/Guardian",
			name = "Draws",
			uuid = "e1384832-9e71-0a51-8be1-e7672a4a390a",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local e = eventArgs\nlocal ms = math.floor(e.channelTimeMax * 1000)\nif ms > 0 then\n    local drawer = TensorCore.getStaticDrawer(0x803333FF, 2)\n    if e.spellID == 10091 then\n        drawer:addTimedRectOnEnt(ms, e.entityID, 40, 6, nil, 0, false, false, true)\n    elseif e.spellID == 10087 then\n        drawer:addTimedRectOnEnt(ms, e.entityID, 60, 10, nil, 0, false, false, true)\n    elseif e.spellID == 10080 then\n        drawer:addTimedRectOnEnt(ms, e.entityID, 50, 10, nil, 0, false, false, true)\n    elseif e.spellID == 10081 then\n        drawer:addTimedCircleOnEnt(ms, e.entityID, 10, 0, false, true)\n    elseif e.spellID == 10688 then\n        drawer:addTimedCircleOnEnt(ms, e.entityID, 15, 0, false, true)\n    else\n        drawer:addTimedCircleOnEnt(ms, e.entityID, 8, 0, false, true)\n    end\n    AnyoneCore.addWorldTextCountdownOnEnt(ms, e.entityID, 0xFFFFFFFF, true, 1.1, 1, 0, \"\")\nend\nself.used = true",
						conditions = 
						{
							
							{
								"3d80f026-fd7b-4b6e-bae7-065674de146b",
								true,
							},
						},
						name = "O7N cast hazard draws",
						uuid = "3f9ba3c7-2bd7-434b-a1aa-0c3fe4a4fa51",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 750 and (eventArgs.spellID == 10091 or eventArgs.spellID == 10087 or eventArgs.spellID == 10080 or eventArgs.spellID == 10081 or eventArgs.spellID == 10688 or eventArgs.spellID == 10079)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "3d80f026-fd7b-4b6e-bae7-065674de146b",
						version = 3,
					},
				},
			},
			displayPath = "Sigmascape V3.0/Guardian/Draws",
			eventType = 3,
			name = "O7N cast hazard draws",
			uuid = "667b72b3-f3d1-e595-a9ac-21c2896a3960",
			version = 2,
		},
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
						alertDuration = 2200,
						alertPriority = 2,
						alertTTS = true,
						alertText = "Knockback - immunity or stay near centre",
						conditions = 
						{
							
							{
								"f3b28959-79a1-1efc-b1c0-8576ad18a16f",
								true,
							},
						},
						uuid = "68fc3b94-6168-dab2-92d3-e63bf7a4c16e",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 750 and (eventArgs.entityContentID == 7107 and eventArgs.spellID == 10086)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "f3b28959-79a1-1efc-b1c0-8576ad18a16f",
						version = 3,
					},
				},
			},
			displayPath = "Sigmascape V3.0/Guardian/Draws",
			eventType = 3,
			name = "O7N Shockwave warning",
			uuid = "d6e04f3e-d075-a076-a185-5fe14e41d61c",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Sigmascape V3.0/Guardian",
			name = "Mitigations",
			uuid = "af111e5e-3a35-8105-9819-288b9d477383",
		},
		objectType = "folder",
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
								"562934a3-8de0-3cf4-970e-387d7c2f14f8",
								true,
							},
						},
						gVar = "ACR_TensorNuke4_Hotbar_Surecast",
						uuid = "7f5a0fb8-afbd-32d4-a70d-0cc95eae6928",
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
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 750 and (eventArgs.entityContentID == 7107 and eventArgs.spellID == 10086 and (p.job == 6 or p.job == 7 or p.job == 24 or p.job == 25 or p.job == 26 or p.job == 27 or p.job == 28 or p.job == 33 or p.job == 35 or p.job == 40 or p.job == 42))",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "562934a3-8de0-3cf4-970e-387d7c2f14f8",
						version = 3,
					},
				},
			},
			displayPath = "Sigmascape V3.0/Guardian/Mitigations",
			eventType = 3,
			name = "O7N Shockwave - Surecast (casters and healers)",
			timeout = 1.5,
			uuid = "bca5cc2b-2409-c8b2-94d4-4d22dd77ccaf",
			version = 2,
		},
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
								"9c8e0b8d-76de-078a-9cee-31d5a0f66b97",
								true,
							},
						},
						gVar = "ACR_TensorRequiem4_Hotbar_ArmsLength",
						uuid = "43353c84-4ca0-8de1-854d-34dfb2228b3d",
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
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 750 and eventArgs.entityContentID == 7107\n    and eventArgs.spellID == 10086\n    and (p.job == 1 or p.job == 2 or p.job == 3 or p.job == 4 or p.job == 5\n        or p.job == 19 or p.job == 20 or p.job == 21 or p.job == 22 or p.job == 23\n        or p.job == 29 or p.job == 30 or p.job == 31 or p.job == 32 or p.job == 34\n        or p.job == 37 or p.job == 38 or p.job == 39 or p.job == 41)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "9c8e0b8d-76de-078a-9cee-31d5a0f66b97",
						version = 3,
					},
				},
			},
			displayPath = "Sigmascape V3.0/Guardian/Mitigations",
			eventType = 3,
			name = "O7N Shockwave - Arm's Length (physical jobs)",
			timeout = 1.5,
			uuid = "68d6cb39-5c71-b644-a6c5-3a8e0034ca97",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Abyssos: The Sixth Circle",
			uuid = "2df51afc-7a53-3bc0-939d-5cc4a47b5bc9",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Abyssos: The Sixth Circle",
			name = "Hegemone",
			uuid = "2988449c-5dc9-01c2-b329-670da5e58a19",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Abyssos: The Sixth Circle/Hegemone",
			name = "AutoSim",
			uuid = "f41c9062-3a3c-833e-8911-10eda68dcaa9",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 1083 then self.used = true; return end\ndata.normalRaidsInitialTargets = data.normalRaidsInitialTargets or {}\nlocal states = data.normalRaidsInitialTargets\nlocal state = states[\"1083_11381\"] or {}\nstates[\"1083_11381\"] = state\nlocal current = TensorCore.mGetTarget()\nlocal label = \"[Normal raids targeting] Hegemone\"\nif state.pending then\n    if current and current.id == state.pending then\n        d(label .. \" confirmed target=\" .. tostring(current.id))\n        state.pending = nil\n    elseif Now() - state.requestedAt >= 1500 then\n        d(label .. \" request not confirmed; intended=\" .. tostring(state.pending) ..\n            \" current=\" .. tostring(current and current.id))\n        state.pending = nil\n    end\n    self.used = true\n    return\nend\nif player.incombat or state.done then self.used = true; return end\nlocal boss, nearest = nil, 35 * 35\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=11381}) or {}) do\n    if Argus.getEntityModel(candidate) == 14901 and candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx = candidate.pos.x - player.pos.x\n        local dy = candidate.pos.y - player.pos.y\n        local dz = candidate.pos.z - player.pos.z\n        local distance = dx*dx + dy*dy + dz*dz\n        if distance <= nearest then\n            boss, nearest = candidate, distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label .. \" waiting for an attackable boss within 35 yalms; current=\" ..\n            tostring(current and current.id))\n        state.waitLogged = true\n    end\n    self.used = true\n    return\nend\nstate.done = true\nif current and current.alive and current.targetable and current.attackable then\n    d(label .. \" kept existing target; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current.id))\nelse\n    state.pending = boss.id\n    state.requestedAt = Now()\n    d(label .. \" target request; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"5e81d60c-dcd0-d353-8b5c-5793316cac51",
								true,
							},
						},
						name = "select Hegemone at encounter start",
						uuid = "d75a2a54-3151-868f-bfee-0ad40d399bfa",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 1083 then return false end\nlocal states = data.normalRaidsInitialTargets\nlocal state = states and states[\"1083_11381\"]\nreturn (state ~= nil and state.pending ~= nil) or (not player.incombat and (not state or not state.done))",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "5e81d60c-dcd0-d353-8b5c-5793316cac51",
						version = 3,
					},
				},
			},
			displayPath = "Abyssos: The Sixth Circle/Hegemone/AutoSim",
			name = "P6N select Hegemone at encounter start",
			throttleTime = 500,
			uuid = "84b8cac5-b3ab-ad61-893b-fcc119a0dac7",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal api = TensorCore.API.TensorACR\nlocal ok, elapsed = pcall(api.getAutoSimTime)\nif ok and type(elapsed) == \"number\" and elapsed >= 0 and elapsed <= 60 and not data.normalRaidForecastSet then\n    api.setAutoSimKillTime(257)\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0, 30)\n    api.clearAutoSimPhases(\"FullDowntime\")\n    data.normalRaidForecastSet = true\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"b1915422-9612-7caf-8c85-a9274af5c329",
								true,
							},
						},
						name = "AutoSim baseline",
						uuid = "be92d72b-451c-139c-a799-04f2c01f7746",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1083 and eventArgs.entityContentID == 11381 and eventArgs.spellID == 30803 and not data.normalRaidForecastSet",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "b1915422-9612-7caf-8c85-a9274af5c329",
						version = 3,
					},
				},
			},
			displayPath = "Abyssos: The Sixth Circle/Hegemone/AutoSim",
			eventType = 3,
			name = "P6N AutoSim baseline",
			uuid = "83a31bba-bcac-8cd9-aa84-a565a294d40b",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local settings = AnyoneCore and AnyoneCore.Settings\nif settings then\n    if settings.DutyHelper then settings.DutyHelper.enabled = false end\n    if settings.PrepullHelper then settings.PrepullHelper.enabled = false end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"b2e7f7b0-175f-e6e5-813a-367558abfe3f",
								true,
							},
						},
						name = "helper setup",
						uuid = "8a62b645-18bd-28bc-ac36-35d40920dd59",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1083",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "b2e7f7b0-175f-e6e5-813a-367558abfe3f",
						version = 3,
					},
				},
			},
			displayPath = "Abyssos: The Sixth Circle/Hegemone/AutoSim",
			eventType = 11,
			name = "P6N helper setup",
			uuid = "09b47fba-d676-be4e-bffb-e9602561b3c3",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Abyssos: The Sixth Circle/Hegemone",
			name = "Draws",
			uuid = "ee14e343-4472-0fcb-a200-e293d9b5665c",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local e = eventArgs\nlocal remaining = math.floor(e.startTime + e.duration * 1000 - Now())\nif remaining > 0 then\n    local offset = e.aoeID == 31213 and 3 or 8\n    local pos = {x=e.x + math.sin(e.heading)*offset, y=e.y+1, z=e.z + math.cos(e.heading)*offset}\n    AnyoneCore.addWorldTextCountdown(remaining, pos, 0xFFFFFFFF, true, 1.1)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"2bc4f494-14e5-73c9-a737-a377f1bce2c3",
								true,
							},
						},
						name = "hazard countdowns",
						uuid = "cf90da52-9a0c-587d-890a-b808a418cf5f",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1083 and ((eventArgs.contentID == 11381 and\n (eventArgs.aoeID == 30809 or eventArgs.aoeID == 30810 or eventArgs.aoeID == 31252 or eventArgs.aoeID == 31253))\n or (eventArgs.contentID == 11462 and eventArgs.aoeID == 31213))",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "2bc4f494-14e5-73c9-a737-a377f1bce2c3",
						version = 3,
					},
				},
			},
			displayPath = "Abyssos: The Sixth Circle/Hegemone/Draws",
			eventType = 18,
			name = "P6N hazard countdowns",
			uuid = "4381deab-51ed-5136-b6b4-ed6c6e98f77b",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.p6nTransmissionUntil = Now() + 35000\nself.used = true",
						conditions = 
						{
							
							{
								"efb3b2fe-7f2d-551c-a957-64cbda241dea",
								true,
							},
						},
						name = "track Transmission",
						uuid = "856c51cf-9581-f65c-95c5-5575d44c2fcf",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1083 and eventArgs.entityContentID == 11381 and eventArgs.spellID == 30799",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "efb3b2fe-7f2d-551c-a957-64cbda241dea",
						version = 3,
					},
				},
			},
			displayPath = "Abyssos: The Sixth Circle/Hegemone/Draws",
			eventType = 3,
			name = "P6N track Transmission",
			uuid = "30999fd6-96af-eb96-9a41-ef070dc38ddc",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nlocal buff\nif player and player.localmapid == 1083 and player.alive and player.incombat then\n    buff = TensorCore.getBuff(player, 3314) or TensorCore.getBuff(player, 3322)\nend\nlocal heading\nif buff and buff.duration > 0 and buff.duration <= 3 then\n    local pos = player.pos\n    if (pos.x-100)^2 + (pos.z-100)^2 > 0.25 then\n        local toward = TensorCore.getHeadingToTarget(pos, {x=100,y=pos.y,z=100})\n        heading = math.atan2(-math.sin(toward), -math.cos(toward))\n        local drawer = TensorCore.getStaticDrawer(0xB033FF33, 2)\n        local ms = math.min(250, math.max(1, math.floor(buff.duration * 1000)))\n        local arrow = data.p6nGlossomorphArrow\n        if not arrow or not drawer:updateTimedArrow(arrow, ms, pos.x, pos.y+.05, pos.z, heading, 2.5, .35, .8, .85, 0, false) then\n            data.p6nGlossomorphArrow = drawer:addTimedArrow(ms, pos.x, pos.y+.05, pos.z, heading, 2.5, .35, .8, .85, 0, false)\n        end\n    end\nend\nif not heading and data.p6nGlossomorphArrow then\n    Argus.deleteTimedShape(data.p6nGlossomorphArrow)\n    data.p6nGlossomorphArrow = nil\nend\nif not heading or buff.duration > 1.05 then\n    if _G.NormalRaidsP6NGlossomorphLock then\n    local api = TensorCore.API.TensorACR\n    api.toggleLockFace(false)\n    api.setHardLockFace(false)\n    _G.NormalRaidsP6NGlossomorphLock = nil\nend\nelse\n    local api = TensorCore.API.TensorACR\n    api.setLockFaceHeading(heading)\n    if not _G.NormalRaidsP6NGlossomorphLock then\n        api.setHardLockFace(true)\n        api.toggleLockFace(true)\n        _G.NormalRaidsP6NGlossomorphLock = true\n    end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"76362bec-b11c-95d5-ad1f-c928eb7e2d2d",
								true,
							},
						},
						name = "face outward for Glossomorph",
						uuid = "f1f478fa-18fc-e6a8-bd70-970f3df67c5c",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return _G.NormalRaidsP6NGlossomorphLock ~= nil or\n    (data.p6nTransmissionUntil ~= nil and Now() < data.p6nTransmissionUntil)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "76362bec-b11c-95d5-ad1f-c928eb7e2d2d",
						version = 3,
					},
				},
			},
			displayPath = "Abyssos: The Sixth Circle/Hegemone/Draws",
			name = "P6N face outward for Glossomorph",
			throttleTime = 100,
			uuid = "ada0ca0a-dfa0-97c4-9803-3de1258ea7ce",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if _G.NormalRaidsP6NGlossomorphLock then\n    local api = TensorCore.API.TensorACR\n    api.toggleLockFace(false)\n    api.setHardLockFace(false)\n    _G.NormalRaidsP6NGlossomorphLock = nil\nend\nself.used = true",
						conditions = 
						{
							
							{
								"77fb72fc-bed4-08ec-bf4f-0d02501d2f74",
								true,
							},
						},
						name = "release Glossomorph lock on Death",
						uuid = "8aaec5d8-9b16-c7df-9186-222ee1233069",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return _G.NormalRaidsP6NGlossomorphLock ~= nil",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "77fb72fc-bed4-08ec-bf4f-0d02501d2f74",
						version = 3,
					},
				},
			},
			displayPath = "Abyssos: The Sixth Circle/Hegemone/Draws",
			eventType = 10,
			name = "P6N release Glossomorph lock on Death",
			uuid = "b5bd611a-6a0a-fb41-85d3-83ff030f14ea",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if _G.NormalRaidsP6NGlossomorphLock then\n    local api = TensorCore.API.TensorACR\n    api.toggleLockFace(false)\n    api.setHardLockFace(false)\n    _G.NormalRaidsP6NGlossomorphLock = nil\nend\nself.used = true",
						conditions = 
						{
							
							{
								"a3156b3e-fea7-b81a-8554-11fa560109bc",
								true,
							},
						},
						name = "release Glossomorph lock on Wipe",
						uuid = "31fb7c46-d2cf-8a15-bb5f-0474de3b14c8",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return _G.NormalRaidsP6NGlossomorphLock ~= nil",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "a3156b3e-fea7-b81a-8554-11fa560109bc",
						version = 3,
					},
				},
			},
			displayPath = "Abyssos: The Sixth Circle/Hegemone/Draws",
			eventType = 9,
			name = "P6N release Glossomorph lock on Wipe",
			uuid = "12d4fb90-afdd-a4a0-b99f-b5b84592393d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if _G.NormalRaidsP6NGlossomorphLock then\n    local api = TensorCore.API.TensorACR\n    api.toggleLockFace(false)\n    api.setHardLockFace(false)\n    _G.NormalRaidsP6NGlossomorphLock = nil\nend\nself.used = true",
						conditions = 
						{
							
							{
								"5957aebd-e09e-4143-bd58-123e01246f81",
								true,
							},
						},
						name = "release Glossomorph lock on MapChange",
						uuid = "0e75dadf-db64-3906-8042-8a9cec0b4da0",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return _G.NormalRaidsP6NGlossomorphLock ~= nil",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "5957aebd-e09e-4143-bd58-123e01246f81",
						version = 3,
					},
				},
			},
			displayPath = "Abyssos: The Sixth Circle/Hegemone/Draws",
			eventType = 11,
			name = "P6N release Glossomorph lock on MapChange",
			uuid = "98ff122b-3efe-4270-a0b1-7ddfb8c625c2",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.p6nTiles = {marks={}, swaps={}, sigma=eventArgs.spellID == 30806, expires=Now()+19000}\nself.used = true",
						conditions = 
						{
							
							{
								"a8b0d6d1-f431-fdce-a2d0-9a778cdeddad",
								true,
							},
						},
						name = "Track Polyominoid wave",
						uuid = "e5685e08-f66d-41af-bdad-308a1b602de3",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1083 and p.incombat == true and eventArgs.entityContentID == 11381 and (eventArgs.spellID == 30803 or eventArgs.spellID == 30806)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "a8b0d6d1-f431-fdce-a2d0-9a778cdeddad",
						version = 3,
					},
				},
			},
			displayPath = "Abyssos: The Sixth Circle/Hegemone/Draws",
			eventType = 3,
			name = "P6N Track Polyominoid wave",
			uuid = "b7ccd8cd-5aae-efc0-bceb-d0560973962c",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if eventArgs.a1 == 0 then\n    data.p6nTiles = nil\nelse\n    data.p6nTiles.marks[eventArgs.a1] = eventArgs.a2\nend\nself.used = true",
						conditions = 
						{
							
							{
								"15613996-dbf6-f627-97db-6264320d9867",
								true,
							},
						},
						name = "Read Polyominoid tiles",
						uuid = "c479cbef-eee9-e58b-9863-9ff747adfe01",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1083 and p.incombat == true and data.p6nTiles ~= nil and\n ((eventArgs.a1 >= 1 and eventArgs.a1 <= 4 and ((eventArgs.a2 == 1 and eventArgs.a3 == 2)\n or (eventArgs.a2 == 32 and eventArgs.a3 == 64)))\n or (eventArgs.a1 == 0 and eventArgs.a2 == 4 and eventArgs.a3 == 8))",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "15613996-dbf6-f627-97db-6264320d9867",
						version = 3,
					},
				},
			},
			displayPath = "Abyssos: The Sixth Circle/Hegemone/Draws",
			eventType = 14,
			name = "P6N Read Polyominoid tiles",
			uuid = "9ae993cb-97ac-a398-866f-e4e7c63136d5",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local a = TensorCore.mGetEntity(eventArgs.sourceEntityID)\nlocal b = TensorCore.mGetEntity(eventArgs.newTargetID)\nlocal function quadrant(e)\n    if not e or math.abs(math.abs(e.pos.x-100)-10) > .25 or math.abs(math.abs(e.pos.z-100)-10) > .25 then return end\n    return 1 + (e.pos.x > 100 and 1 or 0) + (e.pos.z > 100 and 2 or 0)\nend\nlocal i,j = quadrant(a),quadrant(b)\nif i and j and i ~= j then\n    local swaps = data.p6nTiles.swaps\n    swaps[i],swaps[j] = j,i\nend\nself.used = true",
						conditions = 
						{
							
							{
								"38cd80ca-b731-5141-ab5b-bcf840d635bb",
								true,
							},
						},
						name = "Read Sigma swap tethers",
						uuid = "538a1d78-b603-6beb-bd89-68fa5b05f915",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1083 and p.incombat == true and data.p6nTiles ~= nil and data.p6nTiles.sigma\n and eventArgs.newTetherID == 207 and eventArgs.sourceEntityContentID == 108 and eventArgs.newTargetContentID == 108",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "38cd80ca-b731-5141-ab5b-bcf840d635bb",
						version = 3,
					},
				},
			},
			displayPath = "Abyssos: The Sixth Circle/Hegemone/Draws",
			eventType = 15,
			name = "P6N Read Sigma swap tethers",
			uuid = "ef5e6795-f743-82d0-a530-9eacca0571f6",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local e = eventArgs\ndata.p6nChoros = {x=e.x,z=e.z,h=e.heading,expires=e.startTime+e.duration*1000+250}\nself.used = true",
						conditions = 
						{
							
							{
								"9f1de05b-e300-bac0-9eea-860c777fa136",
								true,
							},
						},
						name = "Read Choros cleave axis",
						uuid = "e25fa5f3-185f-cb6f-a9a7-4348488aff39",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1083 and p.incombat == true and eventArgs.contentID == 11381 and (eventArgs.aoeID == 30809 or eventArgs.aoeID == 30810)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "9f1de05b-e300-bac0-9eea-860c777fa136",
						version = 3,
					},
				},
			},
			displayPath = "Abyssos: The Sixth Circle/Hegemone/Draws",
			eventType = 18,
			name = "P6N Read Choros cleave axis",
			uuid = "792ad332-aff3-e361-b3ad-36b52ec643b3",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local now = Now()\nlocal p = TensorCore.mGetPlayer()\nlocal tiles = data.p6nTiles\nlocal cleave = data.p6nChoros\nif tiles and tiles.expires <= now then tiles = nil; data.p6nTiles = nil end\nif cleave and cleave.expires <= now then cleave = nil; data.p6nChoros = nil end\n\nlocal x,z,best\nlocal function consider(cx,cz)\n    if cleave then\n        local dx,dz = cx-cleave.x,cz-cleave.z\n        local dot = dx*math.sin(cleave.h) + dz*math.cos(cleave.h)\n        if dot*dot >= .36*(dx*dx+dz*dz) then return end\n    end\n    local distance = (p.pos.x-cx)^2 + (p.pos.z-cz)^2\n    if not best or distance < best then x,z,best = cx,cz,distance end\nend\nif p and p.localmapid == 1083 and p.alive and p.incombat then\n    if tiles then\n        local ready = true\n        for i=1,4 do\n            if not tiles.marks[i] or (tiles.sigma and not tiles.swaps[i]) then ready = false; break end\n        end\n        if ready then\n            for i=1,4 do\n                local mark = tiles.marks[tiles.swaps[i] or i]\n                local west = i == 1 or i == 3\n                local qx,qz = west and 90 or 110, i <= 2 and 90 or 110\n                -- The normal-mode patterns cover two diagonally opposite tiles per quadrant.\n                local offset = mark == 1 and 5 or -5\n                consider(qx-5,qz+offset)\n                consider(qx+5,qz-offset)\n            end\n        end\n    elseif cleave then\n        local dx,dz = 7*math.cos(cleave.h),-7*math.sin(cleave.h)\n        consider(cleave.x+dx,cleave.z+dz)\n        consider(cleave.x-dx,cleave.z-dz)\n    end\nend\n\nlocal draw = data.p6nSafeDraw\nif not x then\n    if draw then\n        if draw.circle then Argus.deleteTimedShape(draw.circle) end\n        if draw.arrow then Argus.deleteTimedShape(draw.arrow) end\n        data.p6nSafeDraw = nil\n    end\nelse\n    draw = draw or {}\n    data.p6nSafeDraw = draw\n    local drawer = TensorCore.getStaticDrawer(0xB033FF33, 2)\n    local y = p.pos.y + .05\n    if not draw.circle or not drawer:updateTimedCircle(draw.circle,350,x,y,z,1.35,0,false,true) then\n        draw.circle = drawer:addTimedCircle(350,x,y,z,1.35,0,false,true)\n    end\n    if best > 2.25 then\n        local h = TensorCore.getHeadingToTarget(p.pos,{x=x,y=y,z=z})\n        local length = math.max(.1,math.sqrt(best)-.8)\n        if not draw.arrow or not drawer:updateTimedArrow(draw.arrow,350,p.pos.x,y,p.pos.z,h,length,.4,.8,1,0,false) then\n            draw.arrow = drawer:addTimedArrow(350,p.pos.x,y,p.pos.z,h,length,.4,.8,1,0,false)\n        end\n    elseif draw.arrow then\n        Argus.deleteTimedShape(draw.arrow)\n        draw.arrow = nil\n    end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"28d8e80b-98c5-7000-923e-4e5d6b728cca",
								true,
							},
						},
						name = "Guide to a safe tile or side",
						uuid = "bf8a1106-3bbd-4338-a5d2-269f2e27d486",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local now = Now()\nreturn data.p6nSafeDraw ~= nil or (data.p6nTiles ~= nil and data.p6nTiles.expires > now)\n    or (data.p6nChoros ~= nil and data.p6nChoros.expires > now)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "28d8e80b-98c5-7000-923e-4e5d6b728cca",
						version = 3,
					},
				},
			},
			displayPath = "Abyssos: The Sixth Circle/Hegemone/Draws",
			name = "P6N Guide to a safe tile or side",
			throttleTime = 150,
			uuid = "62a5a238-fdbd-d06d-acfc-edc76ad9005b",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Alexander - The Burden of the Father",
			uuid = "d5e657b4-bb23-2f14-a31d-01d9cbe8b27a",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Alexander - The Burden of the Father",
			name = "The Manipulator",
			uuid = "37d2ae97-6871-4a01-9bb7-188bba0f8154",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Alexander - The Burden of the Father/The Manipulator",
			name = "AutoSim",
			uuid = "70924857-165e-bb84-b442-f0b08d71eb54",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local settings = AnyoneCore and AnyoneCore.Settings\nif settings then\n    if settings.DutyHelper then settings.DutyHelper.enabled = false end\n    if settings.PrepullHelper then settings.PrepullHelper.enabled = false end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"2183b5e3-d676-349e-84da-d842bd4f516c",
								true,
							},
						},
						name = "A4N helper setup",
						uuid = "eec09534-dc23-fb0b-af2a-09e4a78f5add",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn p~=nil and p.localmapid==445 and (true)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "2183b5e3-d676-349e-84da-d842bd4f516c",
						version = 3,
					},
				},
			},
			displayPath = "Alexander - The Burden of the Father/The Manipulator/AutoSim",
			eventType = 11,
			name = "A4N helper setup",
			uuid = "fbb5f1cc-2ea3-91f9-ba5e-d52cfae46229",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "gStartCombat=false\nlocal s=AnyoneCore and AnyoneCore.Settings\nif s then\n if s.DutyHelper then s.DutyHelper.enabled=false end\n if s.PrepullHelper then s.PrepullHelper.enabled=false end\nend\nself.used=true",
						conditions = 
						{
							
							{
								"252212e4-458c-4063-9978-51a2d8d7a704",
								true,
							},
						},
						name = "Disable Start Combat before targeting",
						uuid = "d2cdb5f2-ff13-f717-b7d1-fac257137590",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 445 then self.used = true; return end\ndata.normalRaidsInitialTargets = data.normalRaidsInitialTargets or {}\nlocal states = data.normalRaidsInitialTargets\nlocal state = states[\"445_4346\"] or {}\nstates[\"445_4346\"] = state\nlocal current = TensorCore.mGetTarget()\nlocal label = \"[Normal raids targeting] Right Foreleg\"\nif state.pending then\n    if current and current.id == state.pending then\n        d(label .. \" confirmed target=\" .. tostring(current.id))\n        state.pending = nil\n    elseif Now() - state.requestedAt >= 1500 then\n        d(label .. \" request not confirmed; intended=\" .. tostring(state.pending) ..\n            \" current=\" .. tostring(current and current.id))\n        state.pending = nil\n    end\n    self.used = true\n    return\nend\nif player.incombat or state.done then self.used = true; return end\nlocal boss, nearest = nil, 35 * 35\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=4346}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx = candidate.pos.x - player.pos.x\n        local dy = candidate.pos.y - player.pos.y\n        local dz = candidate.pos.z - player.pos.z\n        local distance = dx*dx + dy*dy + dz*dz\n        if distance <= nearest then\n            boss, nearest = candidate, distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label .. \" waiting for an attackable boss within 35 yalms; current=\" ..\n            tostring(current and current.id))\n        state.waitLogged = true\n    end\n    self.used = true\n    return\nend\nstate.done = true\nif current and current.alive and current.targetable and current.attackable then\n    d(label .. \" kept existing target; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current.id))\nelse\n    state.pending = boss.id\n    state.requestedAt = Now()\n    d(label .. \" target request; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"252212e4-458c-4063-9978-51a2d8d7a704",
								true,
							},
						},
						name = "Initial foreleg target and diagnostics",
						uuid = "3d484f14-591d-fbe4-adde-afc330f1122e",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 445 then return false end\nlocal states = data.normalRaidsInitialTargets\nlocal state = states and states[\"445_4346\"]\nreturn (state ~= nil and state.pending ~= nil) or (not player.incombat and (not state or not state.done))",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "252212e4-458c-4063-9978-51a2d8d7a704",
						version = 3,
					},
				},
			},
			displayPath = "Alexander - The Burden of the Father/The Manipulator/AutoSim",
			name = "A4N select foreleg at encounter start",
			throttleTime = 500,
			uuid = "68327c2c-eb10-7d55-8dd3-18035c158871",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local api=TensorCore.API.TensorACR\nlocal ok,elapsed=pcall(api.getAutoSimTime)\nif not ok or type(elapsed)~=\"number\" or elapsed<=0 then self.used=true;return end\nlocal s={gaps={{55.766,63.907},{120.251,128.391}},departures=0,moves={}}\nfunction s.publish()\n api.clearAutoSimPhases(\"FullDowntime\")\n for _,w in ipairs(s.gaps) do if w[2]>w[1] then api.addAutoSimPhase(\"FullDowntime\",w[1],w[2]) end end\nend\napi.setAutoSimKillTime(175)\napi.clearAutoSimUncertainty()\napi.addAutoSimUncertainty(0,20)\ns.publish()\ndata.normalRaidsA4N=s\nd(\"[A4N AutoSim] forecast loaded: 175s kill, 20s timing uncertainty; one local clear\")\nself.used=true",
						conditions = 
						{
							
							{
								"7deb4281-16d4-0bd8-af9b-1d202f163c48",
								true,
							},
						},
						name = "A4N AutoSim forecast",
						uuid = "4ab1d8f6-c4f9-c487-a38d-28c5ee89a6fc",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=445 or not p.incombat or data.normalRaidsA4N~=nil then return false end\nlocal ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t>0",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "7deb4281-16d4-0bd8-af9b-1d202f163c48",
						version = 3,
					},
				},
			},
			displayPath = "Alexander - The Burden of the Father/The Manipulator/AutoSim",
			name = "A4N AutoSim forecast",
			throttleTime = 500,
			uuid = "aaea2269-eaea-bc3c-b1ae-d821322f1d12",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s=data.normalRaidsA4N\nlocal e=eventArgs\nlocal entity=TensorCore.mGetEntity(e.entityID)\nif not entity then self.used=true;return end\nlocal model=Argus.getEntityModel(entity)\nif e.entityContentID==3772 and model~=3902 then self.used=true;return end\nlocal api=TensorCore.API.TensorACR\nlocal ok,now=pcall(api.getAutoSimTime)\nif not ok or type(now)~=\"number\" or now<=0 then self.used=true;return end\nif e.entityContentID==3772 and not e.isTargetable then\n if s.departures>=2 or s.active then self.used=true;return end\n s.departures=s.departures+1\n s.active=s.departures\n s.gaps[s.active]={now,now+8.14}\nelseif e.isTargetable and s.active then\n s.gaps[s.active][2]=now\n s.active=nil\n if s.departures==1 then s.gaps[2]={now+56.34,now+64.48}\n else api.setAutoSimKillTime(now+46.4) end\nelseif e.entityContentID==3772 and e.isTargetable and s.departures<2 then\n local k=s.departures+1\n s.gaps[k]={now+20.09,now+28.23}\nelse self.used=true;return end\ns.publish()\nd(\"[A4N AutoSim] targetability resync at \"..string.format(\"%.2f\",now)..\" phase=\"..s.departures)\nself.used=true",
						conditions = 
						{
							
							{
								"1f8e9514-86f9-e5a1-94d9-9bb573ce9f6c",
								true,
							},
						},
						name = "A4N resync phase transitions",
						uuid = "f952bb88-a039-95fb-bfbc-b6873143b9bb",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn p~=nil and p.localmapid==445 and (data.normalRaidsA4N~=nil and (eventArgs.entityContentID==3772 or eventArgs.entityContentID==4346 or eventArgs.entityContentID==4347))",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "1f8e9514-86f9-e5a1-94d9-9bb573ce9f6c",
						version = 3,
					},
				},
			},
			displayPath = "Alexander - The Burden of the Father/The Manipulator/AutoSim",
			eventType = 26,
			name = "A4N resync phase transitions",
			uuid = "93ce0335-0d5c-b33b-a42b-41fa620aba4f",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s=data.normalRaidsA4N\nlocal player=TensorCore.mGetPlayer()\nlocal e=eventArgs\nlocal dx,dz=player.pos.x-e.x,player.pos.z-e.z\nif dx*dx+dz*dz>(e.aoeLength+.5)^2 then self.used=true;return end\nlocal api=TensorCore.API.TensorACR\nlocal ok,now=pcall(api.getAutoSimTime)\nlocal remaining=(e.startTime+e.duration*1000-Now())/1000\nif not ok or type(now)~=\"number\" or now<=0 or remaining<=.5 then self.used=true;return end\nlocal window={now+.15,now+math.min(1.3,remaining-.25)}\nlocal last=s.moves[#s.moves]\nif last and window[1]<=last[2] then last[2]=math.max(last[2],window[2]) else s.moves[#s.moves+1]=window end\napi.clearAutoSimPhases(\"CasterDowntime\")\nfor _,w in ipairs(s.moves) do api.addAutoSimPhase(\"CasterDowntime\",w[1],w[2]) end\nself.used=true",
						conditions = 
						{
							
							{
								"25e6b696-106e-b439-8ae7-134c8e4da9bd",
								true,
							},
						},
						name = "A4N forecast personal Seed dodge",
						uuid = "54f6e91d-3163-222d-8e90-ab7b50b144a8",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn p~=nil and p.localmapid==445 and (data.normalRaidsA4N~=nil and eventArgs.aoeID==5072 and eventArgs.contentID==3772)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "25e6b696-106e-b439-8ae7-134c8e4da9bd",
						version = 3,
					},
				},
			},
			displayPath = "Alexander - The Burden of the Father/The Manipulator/AutoSim",
			eventType = 18,
			name = "A4N forecast personal Seed dodge",
			uuid = "c127a678-1b98-60b5-82e6-e066f03a622e",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Alexander - The Burden of the Father/The Manipulator",
			name = "Draws",
			uuid = "6b0e28ba-3683-4334-b555-da95092f5dc9",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local e=eventArgs\nlocal ms=math.ceil(e.startTime+e.duration*1000-Now())\nif ms>0 then\n TensorCore.getStaticDrawer(0x803333FF,2):addTimedCircle(ms,e.x,e.y,e.z,e.aoeLength,0,false,true)\n AnyoneCore.addWorldTextCountdown(ms,{x=e.x,y=e.y+1,z=e.z},0xFFFFFFFF,true,1.1)\nend\nself.used=true",
						conditions = 
						{
							
							{
								"720905cc-5405-1084-908b-b390ba954d7e",
								true,
							},
						},
						name = "A4N Seed of the Sky circles and countdowns",
						uuid = "3038fde0-a59d-cdec-939b-41fcb37ac005",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn p~=nil and p.localmapid==445 and (eventArgs.aoeID==5072 and eventArgs.contentID==3772)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "720905cc-5405-1084-908b-b390ba954d7e",
						version = 3,
					},
				},
			},
			displayPath = "Alexander - The Burden of the Father/The Manipulator/Draws",
			eventType = 18,
			name = "A4N Seed of the Sky circles and countdowns",
			uuid = "328e6f96-5c6f-562c-abe6-9c0ad4695a06",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Alphascape V4.0",
			uuid = "0a4ea72b-a92d-d60a-97c1-be3a43c5667a",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Alphascape V4.0",
			name = "Omega-M and Omega-F",
			uuid = "86e9d00d-7f3a-4a3c-9859-67bf74516c39",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Alphascape V4.0/Omega-M and Omega-F",
			name = "AutoSim",
			uuid = "dcf42e2d-f0d9-b70d-8a42-a5d38a9fb679",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local settings = AnyoneCore and AnyoneCore.Settings\nif settings then\n if settings.DutyHelper then settings.DutyHelper.enabled = false end\n if settings.PrepullHelper then settings.PrepullHelper.enabled = false end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"4726f703-ad26-e46d-b7ce-38d71afc3e81",
								true,
							},
						},
						name = "helper setup",
						uuid = "3ebffe34-01f4-75a6-8f56-467985291566",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 801",
						name = "Alphascape V4.0 and mechanic",
						uuid = "4726f703-ad26-e46d-b7ce-38d71afc3e81",
						version = 3,
					},
				},
			},
			displayPath = "Alphascape V4.0/Omega-M and Omega-F/AutoSim",
			eventType = 11,
			name = "O12N helper setup",
			uuid = "60c80a25-19a4-4a02-84d4-673cac117307",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nlocal current = TensorCore.mGetTarget()\nlocal state = data.normalRaidsO12N or {}\ndata.normalRaidsO12N = state\nlocal male, female = 9339, 9340\nlocal filterMale = TensorCore.hasBuff(player, 1660)\nlocal filterFemale = TensorCore.hasBuff(player, 1661)\nlocal required = filterMale and female or filterFemale and male or nil\nlocal function usable(entity)\n return entity and entity.alive and entity.targetable and entity.attackable\nend\n-- Content IDs change as Omega swaps forms; the model identifies each body.\nlocal function findBoss(model, maxDistance)\n for _, contentID in ipairs({7633, 7634, 7635}) do\n  for _, entity in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=contentID}) or {}) do\n   local actualModel = usable(entity) and Argus.getEntityModel(entity)\n   if (actualModel == 9339 or actualModel == 9340) and (not model or actualModel == model)\n    and (not maxDistance or (entity.pos and TensorCore.getDistance2d(player.pos, entity.pos) <= maxDistance)) then\n    return entity\n   end\n  end\n end\nend\nlocal function log(reason, desired)\n local message = string.format(\"[O12N Target] %s current=%s desired=%s assignedModel=%s filterM=%s filterF=%s\",\n  reason, tostring(current and current.id), tostring(desired), tostring(required),\n  tostring(filterMale), tostring(filterFemale))\n if state.lastMessage ~= message then\n  state.lastMessage = message\n  TensorCore.timelineLogToFile(message .. \"\\n\")\n end\nend\n-- Forecast only observed periods when neither permitted Omega can be hit.\nif player.incombat and not (filterMale and filterFemale) then\n local api = TensorCore.API.TensorACR\n local elapsed = api.getAutoSimTime()\n if type(elapsed) == \"number\" and elapsed > 0 then\n  if not state.forecastSet then\n   api.setAutoSimKillTime(math.max(348.375, elapsed + 5))\n   state.forecastSet = true\n  elseif elapsed >= (state.killAt or 348.375) - 2 then\n   state.killAt = elapsed + 10\n   api.setAutoSimKillTime(state.killAt)\n  end\n  local available = findBoss(required) ~= nil\n  if available and state.downtime then\n   api.clearAutoSimPhases(\"FullDowntime\")\n   state.downtime = nil\n  elseif not available and (not state.downtime or elapsed >= state.downtime - 0.5) then\n   api.clearAutoSimPhases(\"FullDowntime\")\n   state.downtime = elapsed + 1.5\n   api.addAutoSimPhase(\"FullDowntime\", elapsed, state.downtime, 1)\n  end\n end\nend\nif state.pending and current and current.id == state.pending then\n log(\"confirmed target\", state.pending)\n state.pending = nil\nend\nif filterMale and filterFemale then self.used = true; return end\nlocal wantsInitial = not player.incombat and not state.initial\nif not required and not wantsInitial then self.used = true; return end\nif usable(current) and Argus.getEntityModel(current) == (required or male) then\n state.initial = true\nelse\n local boss = findBoss(required or male, 35)\n if not boss then\n  log(\"waiting for eligible boss in range\", nil)\n elseif player.castinginfo and (player.castinginfo.castingid > 0 or player.castinginfo.channelingid > 0) then\n  log(\"waiting for cast to finish\", boss.id)\n elseif not state.requestedAt or Now() - state.requestedAt >= 1500 then\n  log(\"target request\", boss.id)\n  state.pending = boss.id\n  state.requestedAt = Now()\n  Player:SetTarget(boss.id)\n end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"889bee70-5658-c594-b2fb-adbc83cde644",
								true,
							},
						},
						name = "target Omega using Packet Filter",
						uuid = "d7f6fdaa-4d20-fb40-9587-e515243425d4",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 801",
						name = "Alphascape V4.0 and mechanic",
						uuid = "889bee70-5658-c594-b2fb-adbc83cde644",
						version = 3,
					},
				},
			},
			displayPath = "Alphascape V4.0/Omega-M and Omega-F/AutoSim",
			name = "O12N target Omega using Packet Filter",
			throttleTime = 300,
			uuid = "8bd9f318-338b-aa83-9bc8-44e7a11db419",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Alphascape V4.0/Omega-M and Omega-F",
			name = "Draws",
			uuid = "20ab6417-96df-0c51-ad91-734d42b4443f",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local e = eventArgs\nlocal remaining = math.floor(e.startTime + e.duration * 1000 - Now())\nif remaining <= 0 then return end\nlocal drawer = TensorCore.getStaticDrawer(0x803333FF, 2)\nif e.aoeID == 13065 or e.aoeID == 13055 then\n drawer:addTimedCircle(remaining, e.x, e.y, e.z, e.aoeLength, 0, false, true)\nelse\n drawer:addTimedRect(remaining, e.x, e.y, e.z, e.aoeLength, e.aoeWidth, e.heading, 0, false, true)\nend\nAnyoneCore.addWorldTextCountdown(remaining, {x=e.x,y=e.y+1,z=e.z}, 0xFFFFFFFF, true, 1.1)\nself.used = true",
						conditions = 
						{
							
							{
								"8c96e220-5ffc-aede-904b-a11fde8dc1c6",
								true,
							},
						},
						name = "cast hazard draws",
						uuid = "f8feb126-dbf0-60f8-8df6-9a21fda47d44",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 801 and (eventArgs.aoeID == 13065 or eventArgs.aoeID == 13055 or eventArgs.aoeID == 13088 or eventArgs.aoeID == 13091)",
						name = "Alphascape V4.0 and mechanic",
						uuid = "8c96e220-5ffc-aede-904b-a11fde8dc1c6",
						version = 3,
					},
				},
			},
			displayPath = "Alphascape V4.0/Omega-M and Omega-F/Draws",
			eventType = 18,
			name = "O12N cast hazard draws",
			uuid = "ceee5e1d-77c0-9a17-ac0e-a7b38f564fae",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Eden's Gate Resurrection",
			uuid = "d9e2a7dc-0ffc-2a25-8b78-e3364af124a6",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Eden's Gate Resurrection",
			name = "AutoSim",
			uuid = "101fd57c-1ed6-7196-9c86-2d4154171f01",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not data.e1nHelpers then\n gStartCombat=false\n local s=AnyoneCore and AnyoneCore.Settings\n if s then\n  if s.DutyHelper then s.DutyHelper.enabled=false end\n  if s.PrepullHelper then s.PrepullHelper.enabled=false end\n end\n data.e1nHelpers=true\nend\nlocal p=TensorCore.mGetPlayer()\nlocal current=TensorCore.mGetTarget()\nif current and current.alive and current.targetable and current.attackable then\n data.e1nInitialTarget=true\nelse\n for _,boss in pairs(TensorCore.getEntityGroupList(\"ContentID\",{contentid=8345}) or {}) do\n  if boss.alive and boss.targetable and boss.attackable and boss.pos and\n     TensorCore.getDistance2d(p.pos,boss.pos)<=35 then\n   gStartCombat=false\n   Player:SetTarget(boss.id)\n   break\n  end\n end\nend\nself.used=true",
						conditions = 
						{
							
							{
								"9b5b71be-84e3-a556-af2a-852a789dc1ce",
								true,
							},
						},
						name = "E1N helpers and initial Eden Prime target",
						uuid = "337c86d3-2e6e-e7a2-9aa1-53a55ea5817a",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=849 then return false end\nreturn not p.incombat and p.alive and not data.e1nInitialTarget",
						name = "Resurrection and mechanic",
						uuid = "9b5b71be-84e3-a556-af2a-852a789dc1ce",
						version = 3,
					},
				},
			},
			displayPath = "Eden's Gate Resurrection/AutoSim",
			name = "E1N helpers and initial Eden Prime target",
			throttleTime = 1000,
			uuid = "66eaa799-36a6-3b96-ae2a-cd6563a737fa",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local api=TensorCore.API.TensorACR\nlocal elapsed=api.getAutoSimTime()\nif type(elapsed)~=\"number\" or elapsed<=0 or elapsed>20 then self.used=true;return end\nlocal offset=elapsed-6.157\nlocal function publish(firstDown,addsUp,addsDown,stasis,breath,returnAt)\n api.setAutoSimKillTime(returnAt+74.687)\n api.clearAutoSimPhases(\"FullDowntime\")\n api.clearAutoSimPhases(\"Stun\")\n -- Observed events can arrive out of the forecast order; only publish windows that end after they start.\n if addsUp>firstDown then api.addAutoSimPhase(\"FullDowntime\",firstDown,addsUp,1) end\n if returnAt>addsDown then api.addAutoSimPhase(\"FullDowntime\",addsDown,returnAt,1) end\n if breath>stasis then api.addAutoSimPhase(\"Stun\",stasis,breath,1) end\nend\napi.clearAutoSimUncertainty()\napi.addAutoSimUncertainty(0,25)\ndata.e1nForecast={publish=publish,down=167.25+offset,adds=183.09+offset,last=211.959+offset,stasis=217.147+offset,breath=343.546+offset,resume=353.788+offset}\nlocal s=data.e1nForecast\npublish(s.down,s.adds,s.last,s.stasis,s.breath,s.resume)\nself.used=true",
						conditions = 
						{
							
							{
								"1ea448e9-d7a9-4103-a170-85a93df2aed5",
								true,
							},
						},
						name = "E1N AutoSim forecast",
						uuid = "79d3cee0-0f09-eb5a-8786-7963fddcf9d8",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=849 then return false end\nreturn not data.e1nForecast and eventArgs.entityContentID==8345 and eventArgs.spellID==15777",
						name = "Resurrection and mechanic",
						uuid = "1ea448e9-d7a9-4103-a170-85a93df2aed5",
						version = 3,
					},
				},
			},
			displayPath = "Eden's Gate Resurrection/AutoSim",
			eventType = 3,
			name = "E1N AutoSim forecast",
			uuid = "a81ca38b-e0b2-05e7-a445-86cf31f41736",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s=data.e1nForecast\nif not s then self.used=true;return end\nlocal elapsed=TensorCore.API.TensorACR.getAutoSimTime()\nif type(elapsed)~=\"number\" or elapsed<=s.adds then self.used=true;return end\nif eventArgs.spellID==15930 then\n s.stasisSeen=true\n s.stasis=elapsed\n s.last=elapsed-5.188\n s.breath=elapsed+126.399\nelse\n s.breathSeen=true\n s.breath=elapsed\nend\ns.resume=s.breath+10.242\ns.publish(s.down,s.adds,s.last,s.stasis,s.breath,s.resume)\nself.used=true",
						conditions = 
						{
							
							{
								"5b16c36d-6810-8da6-9e08-c7eb8ad5eb13",
								true,
							},
						},
						name = "E1N AutoSim sync to Stasis and Eternal Breath",
						uuid = "d32ebaf0-87be-9b3c-bcf4-b2fe7ba3c662",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=849 then return false end\nlocal s=data.e1nForecast\nlocal e=eventArgs\nreturn s~=nil and ((e.entityContentID==8341 and e.spellID==15930 and not s.stasisSeen) or\n (e.entityContentID==8345 and e.spellID==15781 and not s.breathSeen))",
						name = "Resurrection and mechanic",
						uuid = "5b16c36d-6810-8da6-9e08-c7eb8ad5eb13",
						version = 3,
					},
				},
			},
			displayPath = "Eden's Gate Resurrection/AutoSim",
			eventType = 2,
			name = "E1N AutoSim sync to Stasis and Eternal Breath",
			uuid = "b15d3f66-13fd-ac4e-8000-e4805a72e9d9",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s=data.e1nForecast\nif not s then self.used=true;return end\nlocal elapsed=TensorCore.API.TensorACR.getAutoSimTime()\nif type(elapsed)~=\"number\" or elapsed<=s.stasis then self.used=true;return end\ns.returnSeen=true\ns.publish(s.down,s.adds,s.last,s.stasis,math.min(s.breath,elapsed),elapsed)\nself.used=true",
						conditions = 
						{
							
							{
								"e104835e-3659-b347-8557-039268de09d4",
								true,
							},
						},
						name = "E1N AutoSim sync to boss return",
						uuid = "a7dacd6d-f2fe-e84f-b9e4-63d18df5ee7c",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=849 then return false end\nlocal s=data.e1nForecast\nreturn s~=nil and not s.returnSeen and s.stasisSeen and eventArgs.entityContentID==8345 and eventArgs.isTargetable",
						name = "Resurrection and mechanic",
						uuid = "e104835e-3659-b347-8557-039268de09d4",
						version = 3,
					},
				},
			},
			displayPath = "Eden's Gate Resurrection/AutoSim",
			eventType = 26,
			name = "E1N AutoSim sync to boss return",
			uuid = "5ae5850d-4f49-28ee-8b9f-22c9918a7c33",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Eden's Gate Resurrection",
			name = "Draws",
			uuid = "d9be3488-20fd-72fc-8a6d-32ce20694e49",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local e=eventArgs\nlocal deadline=e.startTime+e.duration*1000\nlocal ms=math.floor(deadline-Now())\nif ms<=0 then self.used=true;return end\nlocal dx,dz=e.x-100,e.z-100\nlocal distance=math.sqrt(dx*dx+dz*dz)\nif distance<12 then self.used=true;return end\nlocal x,z=e.x+5*dx/distance,e.z+5*dz/distance\n-- The safe spot must remain inside the square and behind the actual cast plane.\nif math.abs(x-100)>18.5 or math.abs(z-100)>18.5 or\n   ((x-e.x)*math.sin(e.heading)+(z-e.z)*math.cos(e.heading))>=-2 then\n self.used=true;return\nend\nlocal safe={x=x,y=.05,z=z}\nTensorCore.getStaticDrawer(0xB033FF33,2):addTimedCircle(ms,x,safe.y,z,1.2,0,false,true)\ndata.e1nPureLight={pos=safe,deadline=deadline}\nself.used=true",
						conditions = 
						{
							
							{
								"ea85c93e-e638-cfa4-8c7f-02d60c41092b",
								true,
							},
						},
						name = "E1N Pure Light safe spot",
						uuid = "88da02b0-0c67-6cf4-b186-144fa4d1ee1b",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=849 then return false end\nreturn eventArgs.aoeID==15779 and eventArgs.contentID==8345",
						name = "Resurrection and mechanic",
						uuid = "ea85c93e-e638-cfa4-8c7f-02d60c41092b",
						version = 3,
					},
				},
			},
			displayPath = "Eden's Gate Resurrection/Draws",
			eventType = 18,
			name = "E1N Pure Light safe spot",
			uuid = "0fcd31cc-b004-069f-94c3-5f1334bed900",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local draw=data.e1nPureLight\nlocal p=TensorCore.mGetPlayer()\nif not draw or not p or not p.alive then self.used=true;return end\nlocal pos=draw.pos\nlocal ms=math.min(400,math.floor(draw.deadline-Now()))\nlocal distance=TensorCore.getDistance2d(p.pos,pos)\nif ms<=0 or distance<=1.2 then\n if draw.arrow then Argus.deleteTimedShape(draw.arrow);draw.arrow=nil end\n if ms<=0 then data.e1nPureLight=nil end\nelse\n local drawer=TensorCore.getStaticDrawer(0xB033FF33,2)\n local heading=TensorCore.getHeadingToTarget(p.pos,pos)\n local length=math.max(.1,distance-.9)\n if not draw.arrow or not drawer:updateTimedArrow(draw.arrow,ms,p.pos.x,pos.y,p.pos.z,heading,length,.4,.8,1,0,false) then\n  draw.arrow=drawer:addTimedArrow(ms,p.pos.x,pos.y,p.pos.z,heading,length,.4,.8,1,0,false)\n end\nend\nself.used=true",
						conditions = 
						{
							
							{
								"257bd8a8-d32a-ae3e-b2b0-da30cdd8c7ac",
								true,
							},
						},
						name = "E1N Pure Light personal arrow",
						uuid = "a55f0ba5-e2ee-b245-9e57-929a15b91900",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=849 then return false end\nlocal draw=data.e1nPureLight\nreturn p.alive and draw~=nil and (draw.arrow~=nil or draw.deadline>Now())",
						name = "Resurrection and mechanic",
						uuid = "257bd8a8-d32a-ae3e-b2b0-da30cdd8c7ac",
						version = 3,
					},
				},
			},
			displayPath = "Eden's Gate Resurrection/Draws",
			name = "E1N Pure Light personal arrow",
			throttleTime = 100,
			uuid = "01c0fc0e-12a5-5a00-8c96-1c49c0ae08d8",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local e=eventArgs\nlocal ms=math.floor(e.startTime+e.duration*1000-Now())\nif ms<=0 then self.used=true;return end\nlocal drawer=TensorCore.getStaticDrawer(0x803333FF,2)\nlocal id=e.aoeID\nif id==15767 then\n drawer:addTimedDonut(ms,e.x,e.y,e.z,5,60,0)\nelseif id==15774 or id==17645 then\n drawer:addTimedRect(ms,e.x,e.y,e.z,e.aoeLength,e.aoeWidth,e.heading,0,false,true)\nelseif id==17643 then\n if e.targetAttach and e.targetAttach > 0 then\n  drawer:addTimedCircleOnEnt(ms,e.targetAttach,5,0,false,true)\n end\nelse\n drawer:addTimedCircle(ms,e.x,e.y,e.z,e.aoeLength,0,false,true)\nend\nself.used=true",
						conditions = 
						{
							
							{
								"ccb66a22-5780-b1df-afcc-b4f858e5d938",
								true,
							},
						},
						name = "E1N Eden Prime hazard draws",
						uuid = "08f815c4-2039-8cb5-95b5-0ec535983ebb",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=849 then return false end\nlocal id=eventArgs.aoeID\nreturn id==15767 or id==15774 or id==15776 or id==17643 or id==17644 or id==17645",
						name = "Resurrection and mechanic",
						uuid = "ccb66a22-5780-b1df-afcc-b4f858e5d938",
						version = 3,
					},
				},
			},
			displayPath = "Eden's Gate Resurrection/Draws",
			eventType = 18,
			name = "E1N Eden Prime hazard draws",
			uuid = "2a7b615a-815e-64cb-b4ee-0c725c50938f",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Eden's Verse Furor",
			uuid = "9a4faed4-7a32-97bf-b83b-7bd999337740",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Eden's Verse Furor",
			name = "AutoSim",
			uuid = "54a51421-edfc-2d0a-b627-63d4e344afa8",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=903 then return end\nif not data.e6nSetup then\n    local config=AnyoneCore and AnyoneCore.Settings\n    if config then\n        if config.DutyHelper then config.DutyHelper.enabled=false end\n        if config.PrepullHelper then config.PrepullHelper.enabled=false end\n    end\n    gStartCombat=false\n    data.e6nSetup=true\nend\nif not p.incombat and not data.e6nTargeted and not ActionList:IsCasting() then\n    local current=TensorCore.mGetTarget()\n    if current and current.alive and current.targetable and current.attackable then\n        data.e6nTargeted=true\n    else\n        for _,boss in pairs(TensorCore.getEntityGroupList(\"ContentID\",{contentid=9287}) or {}) do\n            if boss.alive and boss.targetable and boss.attackable then\n                gStartCombat=false\n                TensorCore.timelineLogToFile(\"[E6N] Garuda target request=\"..boss.id)\n                Player:SetTarget(boss.id)\n                data.e6nTargeted=true\n                break\n            end\n        end\n    end\nend\nself.used=true",
						conditions = 
						{
							
							{
								"19230771-60f0-ab23-a87e-24cf7bf905da",
								true,
							},
						},
						name = "[E6N] Initial target and helper setup",
						uuid = "afd89943-787d-7fe1-b5cd-01e76969507d",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=903 then return false end\nreturn data.e6nSetup~=true or (not p.incombat and data.e6nTargeted~=true)",
						name = "[E6N] Initial target and helper setup gate",
						uuid = "19230771-60f0-ab23-a87e-24cf7bf905da",
						version = 3,
					},
				},
			},
			displayPath = "Eden's Verse Furor/AutoSim",
			name = "[E6N] Initial target and helper setup",
			throttleTime = 750,
			uuid = "efd6d015-2d68-3074-9248-4c26b1612fe5",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local api=TensorCore.API.TensorACR\nlocal t=api.getAutoSimTime()\nif type(t)~=\"number\" or t<0 or t>20 then return end\napi.clearAutoSimUncertainty()\napi.clearAutoSimPhases(\"FullDowntime\")\napi.setAutoSimKillTime(423)\napi.addAutoSimUncertainty(0,35)\nfor _,gap in ipairs({{111.515,115.015},{196.765,201.109},{251.266,272.516},{325.844,330.063}}) do\n    local start,finish=math.max(t,gap[1]),gap[2]\n    if finish>start then api.addAutoSimPhase(\"FullDowntime\",start,finish,1) end\nend\ndata.e6nForecast=true\nself.used=true",
						conditions = 
						{
							
							{
								"85becdbf-76a4-0d84-8248-edf7991b1320",
								true,
							},
						},
						name = "[E6N] AutoSim forecast",
						uuid = "a80a8a97-8de3-1582-9b8d-382fcd15b823",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=903 then return false end\nreturn p.incombat==true and data.e6nForecast~=true",
						name = "[E6N] AutoSim forecast gate",
						uuid = "85becdbf-76a4-0d84-8248-edf7991b1320",
						version = 3,
					},
				},
			},
			displayPath = "Eden's Verse Furor/AutoSim",
			name = "[E6N] AutoSim forecast",
			throttleTime = 500,
			uuid = "3b47d98c-2513-c6d7-a129-dcd023fdabb6",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Eden's Verse Furor",
			name = "Draws",
			uuid = "aa733b75-52df-cca1-96f1-544e1b1752c1",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local e=eventArgs\nlocal remaining=math.floor(e.startTime+e.duration*1000-Now())\nif remaining<=0 then self.used=true;return end\nlocal id=e.aoeID\nlocal color=id==19417 and 0x8055FF55 or 0x803333FF\nlocal drawer=TensorCore.getStaticDrawer(color,2)\nif id==19438 then\n    data.e6nConflag={x=e.x,y=e.y,z=e.z,heading=e.heading,finish=e.startTime+e.duration*1000}\nelseif id==19413 then\n    drawer:addTimedCenteredRect(remaining,e.x,e.y,e.z,84,8,e.heading,0,false,true)\nelseif id==19436 then\n    drawer:addTimedRect(remaining,e.x,e.y,e.z,e.aoeLength,e.aoeWidth,e.heading,0,false,true)\nelseif id==19417 or id==19437 then\n    if e.targetAttach and e.targetAttach>0 then\n        drawer:addTimedCircleOnEnt(remaining,e.targetAttach,4,0,false,true)\n    end\nelse\n    drawer:addTimedCircle(remaining,e.x,e.y,e.z,e.aoeLength,0,false,true)\nend\nself.used=true",
						conditions = 
						{
							
							{
								"19571965-14ae-bcf0-ba85-ecc688ed4515",
								true,
							},
						},
						name = "[E6N] Packet telegraphs and final-five Conflag Strike",
						uuid = "e8b38c0f-13b1-217a-849e-390738adf107",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=903 then return false end\nlocal id=eventArgs.aoeID\nreturn id==19413 or id==19417 or id==19418 or id==19419 or id==19420 or id==19424 or id==19426\n    or id==19430 or id==19436 or id==19437 or id==19438 or id==19440 or id==19442 or id==19444",
						name = "[E6N] Packet telegraphs and final-five Conflag Strike gate",
						uuid = "19571965-14ae-bcf0-ba85-ecc688ed4515",
						version = 3,
					},
				},
			},
			displayPath = "Eden's Verse Furor/Draws",
			eventType = 18,
			name = "[E6N] Packet telegraphs and final-five Conflag Strike",
			uuid = "b335b09d-1749-6cb2-8cc3-d32c6caa8bb7",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local e=eventArgs\nlocal caster=TensorCore.mGetEntity(e.entityID)\nif not caster or not caster.pos then return end\nlocal ms=math.floor(e.channelTimeMax*1000)\nif ms<=0 then return end\nlocal pos=caster.pos\nlocal rotated=e.spellID==19423 or e.spellID==19428\nlocal first=pos.h+(rotated and math.pi/4 or -math.pi/4)\nlocal drawer=TensorCore.getStaticDrawer(0x803333FF,2)\ndrawer:addTimedCone(ms,pos.x,pos.y,pos.z,40,math.pi/2,first,0,false,true)\ndrawer:addTimedCone(ms,pos.x,pos.y,pos.z,40,math.pi/2,first+math.pi,0,false,true)\nself.used=true",
						conditions = 
						{
							
							{
								"2251b245-0944-91b1-a3be-c8d52efa0df4",
								true,
							},
						},
						name = "[E6N] Ferostorm paired cones",
						uuid = "7218560c-8028-197c-b6b4-5d809235433e",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=903 then return false end\nlocal id=eventArgs.spellID\nreturn id==19422 or id==19423 or id==19427 or id==19428",
						name = "[E6N] Ferostorm paired cones gate",
						uuid = "2251b245-0944-91b1-a3be-c8d52efa0df4",
						version = 3,
					},
				},
			},
			displayPath = "Eden's Verse Furor/Draws",
			eventType = 3,
			name = "[E6N] Ferostorm paired cones",
			uuid = "f0f9dd4b-48f2-9f6e-b9a8-23198a82a97f",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local cast=data.e6nConflag\nif not cast then return end\nlocal remaining=cast.finish-Now()\nif remaining<=0 or remaining>5000 then return end\nlocal drawer=TensorCore.getStaticDrawer(0x803333FF,2)\ndrawer:addCone(cast.x,cast.y,cast.z,40,math.rad(270),cast.heading,false)\nself.used=true",
						conditions = 
						{
							
							{
								"3090bc0a-7e45-486b-8dcf-bff5689346fc",
								true,
							},
						},
						name = "[E6N] Conflag Strike final-five draw",
						uuid = "5aaf661b-2520-09a5-9d33-d12eb733e38c",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=903 then return false end\nlocal cast=data.e6nConflag\nif not cast or not p.incombat then return false end\nlocal remaining=cast.finish-Now()\nreturn remaining>0 and remaining<=5000",
						name = "[E6N] Conflag Strike final-five draw gate",
						uuid = "3090bc0a-7e45-486b-8dcf-bff5689346fc",
						version = 3,
					},
				},
			},
			displayPath = "Eden's Verse Furor/Draws",
			eventType = 12,
			name = "[E6N] Conflag Strike final-five draw",
			uuid = "46075197-7475-75cc-b75a-1676fc65123e",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.e6nConflag=nil\nself.used=true",
						conditions = 
						{
							
							{
								"ad81796c-8ecf-5e11-9c47-3b27616064c1",
								true,
							},
						},
						name = "[E6N] Conflag Strike resolution cleanup",
						uuid = "358e788c-e9a4-3515-9e44-c5fce53e12d3",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=903 then return false end\nreturn eventArgs.spellID==19438 and data.e6nConflag~=nil",
						name = "[E6N] Conflag Strike resolution cleanup gate",
						uuid = "ad81796c-8ecf-5e11-9c47-3b27616064c1",
						version = 3,
					},
				},
			},
			displayPath = "Eden's Verse Furor/Draws",
			eventType = 2,
			name = "[E6N] Conflag Strike resolution cleanup",
			uuid = "b3b6d493-507b-d13d-a743-7d307f128011",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local e=eventArgs\nlocal remaining=math.floor(e.startTime+e.duration*1000-Now())\nif remaining<=0 then self.used=true;return end\nlocal drawer=TensorCore.getStaticDrawer(0x803333FF,2)\nif e.aoeID==19432 then\n    -- Touchdown: 15 m radius is unverified (packet reports 40 as an area target)\n    drawer:addTimedCircle(remaining,e.x,e.y,e.z,15,0,false,true)\n    self.used=true\n    return\nend\ndrawer:addTimedRect(remaining,e.x,e.y,e.z,e.aoeLength,e.aoeWidth,e.heading,0,false,true)\n-- Nexus orbs are pulled 5 m toward the centre line, then explode about 3.1 s after the pull resolves.\nif data.e6nNexusStart~=e.startTime then\n    data.e6nNexusStart=e.startTime\n    local list=TensorCore.getEntityGroupList(\"ContentID\",{contentid=9290})\n    if list then\n        local alongX=math.abs(math.sin(e.heading))>0.5\n        for _,n in pairs(list) do\n            if n and n.pos then\n                local x,z=n.pos.x,n.pos.z\n                if alongX then\n                    local d=100-x\n                    x=x+((math.abs(d)<5) and d or (d>0 and 5 or -5))\n                else\n                    local d=100-z\n                    z=z+((math.abs(d)<5) and d or (d>0 and 5 or -5))\n                end\n                drawer:addTimedCircle(remaining+3100,x,n.pos.y,z,8,0,false,true)\n            end\n        end\n    end\nend\nself.used=true",
						conditions = 
						{
							
							{
								"53991be3-f013-0690-816c-16692f0c3179",
								true,
							},
						},
						name = "[E6N] Pull, Nexus Explosion and Touchdown",
						uuid = "75380eb8-de54-4fbb-b1ea-0d604a03cda8",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=903 then return false end\nlocal id=eventArgs.aoeID\nreturn id==20025 or id==19432",
						name = "[E6N] Pull, Nexus Explosion and Touchdown gate",
						uuid = "53991be3-f013-0690-816c-16692f0c3179",
						version = 3,
					},
				},
			},
			displayPath = "Eden's Verse Furor/Draws",
			eventType = 18,
			name = "[E6N] Pull, Nexus Explosion and Touchdown",
			uuid = "0ca1402c-487d-d661-9f1b-4e9f31337a8b",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local e=eventArgs\nlocal ifrit=TensorCore.mGetEntity(e.entityID)\nif not ifrit or not ifrit.pos then return end\nlocal ms=math.floor(e.channelTimeMax*1000)+1500\nlocal list=TensorCore.getEntityGroupList(\"ContentID\",{contentid=9291})\nif not list then return end\nlocal drawer=TensorCore.getStaticDrawer(0x803333FF,2)\nlocal best,bd\nfor _,o in pairs(list) do\n    if o and o.pos then\n        local d=(o.pos.x-ifrit.pos.x)^2+(o.pos.z-ifrit.pos.z)^2\n        if not bd or d<bd then bd=d;best=o end\n    end\nend\nfor _,o in pairs(list) do\n    if o and o.pos then\n        if o==best then\n            -- nearest orb is kicked to the arena centre\n            drawer:addTimedCircle(ms,100,o.pos.y,100,10,0,false,true)\n        else\n            drawer:addTimedCircle(ms,o.pos.x,o.pos.y,o.pos.z,10,0,false,true)\n        end\n    end\nend\nself.used=true",
						conditions = 
						{
							
							{
								"876e647a-9a95-1afb-b69f-55a25ce96df5",
								true,
							},
						},
						name = "[E6N] Hot Foot orb prediction",
						uuid = "2945226e-0574-81d5-94a8-385a509d005d",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=903 then return false end\nreturn eventArgs.spellID==19439",
						name = "[E6N] Hot Foot orb prediction gate",
						uuid = "876e647a-9a95-1afb-b69f-55a25ce96df5",
						version = 3,
					},
				},
			},
			displayPath = "Eden's Verse Furor/Draws",
			eventType = 3,
			name = "[E6N] Hot Foot orb prediction",
			uuid = "9c9708f3-aa87-aff7-acb1-901f5af7e739",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Eden's Verse Furor",
			name = "Mitigations",
			uuid = "6cb2f740-baaa-ea69-9ab3-e19bcceab509",
		},
		objectType = "folder",
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
								"dacb9476-4dbb-2f10-8563-f531c5846f89",
								true,
							},
						},
						gVar = "ACR_TensorWeeb4_Hotbar_ArmsLength",
						name = "[E6N] Downburst Arm’s Length",
						uuid = "cda86a69-0f97-90e4-ab92-662e0fed3bce",
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
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=903 then return false end\nreturn eventArgs.spellID==19488 and (eventArgs.entityContentID==9287 or eventArgs.entityContentID==9289)",
						name = "[E6N] Downburst Arm’s Length gate",
						uuid = "dacb9476-4dbb-2f10-8563-f531c5846f89",
						version = 3,
					},
				},
			},
			displayPath = "Eden's Verse Furor/Mitigations",
			eventType = 3,
			name = "[E6N] Downburst Arm’s Length",
			throttleTime = 10000,
			uuid = "56008aef-b045-8da4-9c0b-8003497ce13c",
			version = 2,
		},
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
								"bdf89132-6048-fd81-8b81-d1c5f98b6650",
								true,
							},
							
							{
								"c00bc511-1f82-c8e5-b9f6-9e299a5ed42c",
								true,
							},
						},
						gVar = "ACR_TensorNuke4_Hotbar_Surecast",
						uuid = "85410844-ffd7-d023-9893-7ab9427b7e9f",
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
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=903 then return false end\nreturn eventArgs.spellID==19488 and (eventArgs.entityContentID==9287 or eventArgs.entityContentID==9289)",
						name = "[E6N] Downburst Arm’s Length gate",
						uuid = "bdf89132-6048-fd81-8b81-d1c5f98b6650",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn not not (p and (TensorCore.isCaster(p) or TensorCore.isHealer(p)))",
						dequeueIfLuaFalse = true,
						name = "Caster or healer",
						uuid = "c00bc511-1f82-c8e5-b9f6-9e299a5ed42c",
						version = 3,
					},
				},
			},
			displayPath = "Eden's Verse Furor/Mitigations",
			eventType = 3,
			name = "[E6N] Downburst Surecast",
			throttleTime = 10000,
			uuid = "0bf2f58b-dd93-f3f8-a67c-6a190ee698ca",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Eden's Promise: Umbra",
			uuid = "8862fadf-cc8a-fb55-9a87-eeb25c0ea349",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Eden's Promise: Umbra",
			name = "AutoSim",
			uuid = "727be70f-2fb7-2ab1-88c1-169f73fd8ad8",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "gStartCombat = false\nlocal settings = AnyoneCore and AnyoneCore.Settings\nif settings and settings.DutyHelper then settings.DutyHelper.enabled = false end\nif settings and settings.PrepullHelper then settings.PrepullHelper.enabled = false end\nself.used = true",
						conditions = 
						{
							
							{
								"004c38a1-21bb-9da0-b565-18507cbbc8ff",
								true,
							},
						},
						endIfUsed = true,
						name = "Configure Eden's Promise: Umbra",
						uuid = "040aea5e-655e-8fd7-bffd-ccf0e2729392",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn not not (p and p.localmapid == 942 and (true))",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "004c38a1-21bb-9da0-b565-18507cbbc8ff",
						version = 3,
					},
				},
			},
			displayPath = "Eden's Promise: Umbra/AutoSim",
			eventType = 11,
			name = "Configure Eden's Promise: Umbra",
			uuid = "c168c071-b357-2b1c-b639-ddc74b783d70",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local p = TensorCore.mGetPlayer()\nif not p or p.incombat or p.localmapid ~= 942 then self.used = true; return end\nfor _, boss in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=9764}) or {}) do\n    if boss.targetable and boss.attackable and boss.pos and TensorCore.getDistance2d(p.pos,boss.pos) <= 30 then\n        data.localBossTarget942 = true\n        gStartCombat = false\n        if p.targetid ~= boss.id then\n            local accepted = Player:SetTarget(boss.id)\n            TensorCore.timelineLogToFile(string.format(\"[Duty opener] map=942 intended=%s current=%s request=%s\\n\", boss.id, p.targetid, tostring(accepted)))\n        end\n        break\n    end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"9b6cb3de-2896-644f-9b7f-09fd429e0328",
								true,
							},
						},
						endIfUsed = true,
						name = "Target Eden's Promise: Umbra boss",
						uuid = "8e3a0cf9-bfa2-5efb-ab4d-380a4533da36",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn not not (p and p.localmapid == 942 and (not p.incombat and not data.localBossTarget942))",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "9b6cb3de-2896-644f-9b7f-09fd429e0328",
						version = 3,
					},
				},
			},
			displayPath = "Eden's Promise: Umbra/AutoSim",
			name = "Target Eden's Promise: Umbra boss",
			throttleTime = 500,
			uuid = "e88053d7-f61d-0af9-b25c-f977cc611d27",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local A = TensorCore.API.TensorACR\nlocal t = A.getAutoSimTime()\nif type(t) ~= \"number\" or t < 0 or t > 8 then self.used = true; return end\ndata.localForecast942 = true\nA.clearAutoSimUncertainty()\nA.clearAutoSimPhases(\"FullDowntime\")\nA.setAutoSimKillTime(422)\nA.addAutoSimUncertainty(0, 60)\n\nself.used = true",
						conditions = 
						{
							
							{
								"2eaeb364-628e-e297-8348-ffe8c14558bb",
								true,
							},
						},
						endIfUsed = true,
						name = "Forecast Eden's Promise: Umbra",
						uuid = "e980d38c-1580-c095-8a77-fe135d156c0a",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn not not (p and p.localmapid == 942 and (p.incombat and not data.localForecast942))",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "2eaeb364-628e-e297-8348-ffe8c14558bb",
						version = 3,
					},
				},
			},
			displayPath = "Eden's Promise: Umbra/AutoSim",
			name = "Forecast Eden's Promise: Umbra",
			throttleTime = 250,
			uuid = "a06cc653-8aba-2569-a11c-72e1887edaf8",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Eden's Promise: Umbra",
			name = "Draws",
			uuid = "29765c46-c4e5-4064-a918-cfd8ae65d23e",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local e = eventArgs\nlocal shapes = {[21991]={\"circle\",4,0},[21980]={\"circle\",13,0},[21027]={\"cone\",60,90},[21028]={\"cone\",60,90},[23295]={\"cone\",45,65},[21985]={\"cone\",45,65},[21990]={\"cone\",22,90},[21995]={\"rect\",60,4},[21979]={\"rect\",60,4},[21029]={\"rect\",8,4},[23303]={\"rect\",8,4}}\nlocal shape = shapes[e.aoeID]\nlocal ms = math.floor(e.startTime + e.duration * 1000 - Now())\nif ms > 0 then\n    local drawer = TensorCore.getStaticDrawer(0x803333FF, 2)\n    if shape[1] == \"circle\" then\n        drawer:addTimedCircle(ms,e.x,e.y,e.z,shape[2],0,false,true)\n    elseif shape[1] == \"cone\" then\n        drawer:addTimedCone(ms,e.x,e.y,e.z,shape[2],math.rad(shape[3]),e.heading,0,false,true)\n    elseif shape[1] == \"donut\" then\n        drawer:addTimedDonut(ms,e.x,e.y,e.z,shape[2],shape[3],0,false,true)\n    else\n        drawer:addTimedRect(ms,e.x,e.y,e.z,shape[2],shape[3],e.heading,0,false,true)\n    end\n    AnyoneCore.addWorldTextCountdown(ms,{x=e.x,y=e.y+1,z=e.z},0xFFFFFFFF,true,1.1)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"ff3f44ce-2bac-daa4-a906-7c1302397cae",
								true,
							},
						},
						endIfUsed = true,
						name = "Eden's Promise: Umbra hazard draws",
						uuid = "dafe9e95-2e75-45b7-b812-5ff9e954298f",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn not not (p and p.localmapid == 942 and (eventArgs.aoeID == 21991 or eventArgs.aoeID == 21980 or eventArgs.aoeID == 21027 or eventArgs.aoeID == 21028 or eventArgs.aoeID == 23295 or eventArgs.aoeID == 21985 or eventArgs.aoeID == 21990 or eventArgs.aoeID == 21995 or eventArgs.aoeID == 21979 or eventArgs.aoeID == 21029 or eventArgs.aoeID == 23303))",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "ff3f44ce-2bac-daa4-a906-7c1302397cae",
						version = 3,
					},
				},
			},
			displayPath = "Eden's Promise: Umbra/Draws",
			eventType = 18,
			name = "Eden's Promise: Umbra hazard draws",
			timeout = 1,
			uuid = "6bd71bbc-c81b-f36c-8bdf-f855945312d1",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local cues = {[21997]=\"Raidwide\",[20422]=\"Spread across the tiles\",[20386]=\"Woods phase\",[21982]=\"Knockback\",[20821]=\"Raidwide\",[21992]=\"Soak towers\",[21294]=\"Kill the clouds\",[21296]=\"Watch the clones\",[21986]=\"Watch the wall\"}\nAnyoneCore.Shotcall(cues[eventArgs.spellID],true,3,false)\nself.used = true",
						conditions = 
						{
							
							{
								"8e0a01ea-79b8-8472-943a-468729535efb",
								true,
							},
						},
						endIfUsed = true,
						name = "Eden's Promise: Umbra mechanic cues",
						uuid = "d79903ae-bb0b-25d8-a3b9-5dbd2434cf97",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn not not (p and p.localmapid == 942 and (eventArgs.spellID == 21997 or eventArgs.spellID == 20422 or eventArgs.spellID == 20386 or eventArgs.spellID == 21982 or eventArgs.spellID == 20821 or eventArgs.spellID == 21992 or eventArgs.spellID == 21294 or eventArgs.spellID == 21296 or eventArgs.spellID == 21986))",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "8e0a01ea-79b8-8472-943a-468729535efb",
						version = 3,
					},
				},
			},
			displayPath = "Eden's Promise: Umbra/Draws",
			eventType = 3,
			name = "Eden's Promise: Umbra mechanic cues",
			timeout = 1,
			uuid = "314909df-9add-5f25-bde6-748863246930",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Eden's Promise: Umbra",
			name = "Mitigations",
			uuid = "4052cc26-fff2-d03f-a837-82f3b9921bb2",
		},
		objectType = "folder",
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
								"fa5a7a29-5fe7-df6d-a15d-7d3acbf4e289",
								true,
							},
						},
						gVar = "ACR_TensorViper4_Hotbar_ArmsLength",
						uuid = "3d88e3de-4325-e40d-bc45-267ee55219f0",
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
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn not not (p and p.localmapid == 942 and eventArgs.spellID == 21982 and eventArgs.entityContentID == 9764 and not (TensorCore.isCaster(p) or TensorCore.isHealer(p)))",
						dequeueIfLuaFalse = true,
						name = "Duty, mechanic and role",
						uuid = "fa5a7a29-5fe7-df6d-a15d-7d3acbf4e289",
						version = 3,
					},
				},
			},
			displayPath = "Eden's Promise: Umbra/Mitigations",
			eventType = 3,
			name = "Waste Away - Arms Length",
			timeout = 1.5,
			uuid = "2258bdaf-173b-cc24-9ff7-34957cf943f5",
			version = 2,
		},
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
								"3a764865-fccc-c043-bde6-95e3243d8dd8",
								true,
							},
						},
						gVar = "ACR_TensorNuke4_Hotbar_Surecast",
						uuid = "6a20d1ac-c31e-78e8-b3c7-46fb92194a77",
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
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn not not (p and p.localmapid == 942 and eventArgs.spellID == 21982 and eventArgs.entityContentID == 9764 and (TensorCore.isCaster(p) or TensorCore.isHealer(p)))",
						dequeueIfLuaFalse = true,
						name = "Duty, mechanic and role",
						uuid = "3a764865-fccc-c043-bde6-95e3243d8dd8",
						version = 3,
					},
				},
			},
			displayPath = "Eden's Promise: Umbra/Mitigations",
			eventType = 3,
			name = "Waste Away - Surecast",
			timeout = 1.5,
			uuid = "d81fbc64-274d-a3a2-8858-cb3dd00bb728",
			version = 2,
		},
	}, 
	inheritedProfiles = 
	{
	},
}



return tbl
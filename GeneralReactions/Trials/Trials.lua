local tbl = 
{
	
	{
		data = 
		{
			displayPath = "",
			name = "A Relic Reborn: The Chimera",
			uuid = "e3e66af7-70e4-5f76-b2ba-f5e69b101bea",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "A Relic Reborn: The Chimera",
			name = "Chimera",
			uuid = "9a539814-005f-3ae0-8655-b65d0fc50f8d",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "A Relic Reborn: The Chimera/Chimera",
			name = "Draws",
			uuid = "a5f5400e-75ec-c376-b027-62e138da63ec",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal e = eventArgs\nlocal shapes = {[1106]=\"circle\"}\nlocal ms = math.floor(e.startTime + e.duration * 1000 - Now())\nif ms > 0 then\n    local drawer = TensorCore.getStaticDrawer(0x803333FF, 2)\n    if shapes[e.aoeID] == \"circle\" then\n        drawer:addTimedCircle(ms, e.x, e.y, e.z, e.aoeLength, 0, false, true)\n    else\n        drawer:addTimedRect(ms, e.x, e.y, e.z, e.aoeLength, e.aoeWidth, e.heading, 0, false, true)\n    end\n    AnyoneCore.addWorldTextCountdown(ms, {x=e.x,y=e.y+1,z=e.z}, 0xFFFFFFFF, true, 1.1)\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"6e152650-3c16-de28-9264-c0c340413fd3",
								true,
							},
						},
						name = "Chimera hazard draws",
						uuid = "4e226710-433d-13a0-b8f7-d4e02b1043f0",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 368 and (eventArgs.aoeID == 1106)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "6e152650-3c16-de28-9264-c0c340413fd3",
						version = 3,
					},
				},
			},
			displayPath = "A Relic Reborn: The Chimera/Chimera/Draws",
			eventType = 18,
			name = "Chimera hazard draws",
			uuid = "1bdd8830-082d-c3f6-b1bf-9821f2adca26",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "A Relic Reborn: The Chimera/Chimera",
			name = "AutoSim",
			uuid = "9d26afc5-aefa-2fe4-bc77-e8705836493d",
		},
		objectType = "folder",
	},
	
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
								"58bb4a8e-0dd4-8238-8823-1bf8bc5af75c",
								true,
							},
						},
						name = "Chimera helper setup",
						uuid = "250a5c3c-0f8d-fe39-99d8-156cf6dec2a3",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 368 and (true)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "58bb4a8e-0dd4-8238-8823-1bf8bc5af75c",
						version = 3,
					},
				},
			},
			displayPath = "A Relic Reborn: The Chimera/Chimera/AutoSim",
			eventType = 11,
			name = "Chimera helper setup",
			uuid = "9ef52d8a-ea9c-0487-9d0a-794c44dcbeae",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 368 then self.used = true; return end\ndata.trialsInitialTargets = data.trialsInitialTargets or {}\nlocal states = data.trialsInitialTargets\nlocal state = states[\"368_2162\"] or {}\nstates[\"368_2162\"] = state\nlocal current = TensorCore.mGetTarget()\nlocal label = \"[Trials targeting] Chimera\"\nif state.pending then\n    if current and current.id == state.pending then\n        d(label .. \" confirmed target=\" .. tostring(current.id))\n        state.pending = nil\n    elseif Now() - state.requestedAt >= 1500 then\n        d(label .. \" request not confirmed; intended=\" .. tostring(state.pending) ..\n            \" current=\" .. tostring(current and current.id))\n        state.pending = nil\n    end\n    self.used = true\n    return\nend\nif player.incombat or state.done then self.used = true; return end\nlocal boss, nearest = nil, 35 * 35\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=2162}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx = candidate.pos.x - player.pos.x\n        local dy = candidate.pos.y - player.pos.y\n        local dz = candidate.pos.z - player.pos.z\n        local distance = dx*dx + dy*dy + dz*dz\n        if distance <= nearest then\n            boss, nearest = candidate, distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label .. \" waiting for an attackable boss within 35 yalms; current=\" ..\n            tostring(current and current.id))\n        state.waitLogged = true\n    end\n    self.used = true\n    return\nend\nstate.done = true\nif current and current.alive and current.targetable and current.attackable then\n    d(label .. \" kept existing target; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current.id))\nelse\n    state.pending = boss.id\n    state.requestedAt = Now()\n    d(label .. \" target request; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"81412929-657a-86a0-ace7-1edf7707a284",
								true,
							},
						},
						name = "Select nearby boss once",
						uuid = "2d5b950c-68d2-d234-a379-634fa0bf2a46",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 368 then return false end\nlocal states = data.trialsInitialTargets\nlocal state = states and states[\"368_2162\"]\nreturn (state ~= nil and state.pending ~= nil) or (not player.incombat and (not state or not state.done))",
						dequeueIfLuaFalse = true,
						name = "Duty and initial target",
						uuid = "81412929-657a-86a0-ace7-1edf7707a284",
						version = 3,
					},
				},
			},
			displayPath = "A Relic Reborn: The Chimera/Chimera/AutoSim",
			name = "Chimera select boss at encounter start",
			throttleTime = 500,
			uuid = "7cc940e0-3221-b60c-be66-e2db607e7972",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal api = TensorCore.API.TensorACR\nlocal ok, elapsed = pcall(api.getAutoSimTime)\nif ok and type(elapsed) == \"number\" and elapsed >= 0 and elapsed <= 60 and not data.normalRaidForecastSet then\n    api.setAutoSimKillTime(57)\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0, 15)\n    api.clearAutoSimPhases(\"FullDowntime\")\n    local downtime = {}\n    for _, window in ipairs(downtime) do\n        api.addAutoSimPhase(\"FullDowntime\", window[1], window[2], 1)\n    end\n    data.normalRaidForecastSet = true\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"62834ff0-0a38-f116-a19b-b35652c7c0fc",
								true,
							},
						},
						name = "Chimera AutoSim baseline",
						uuid = "e1f8253f-bb6d-1b7a-8690-b0183b3beb29",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 368 and (eventArgs.spellID == 1282 and not data.normalRaidForecastSet)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "62834ff0-0a38-f116-a19b-b35652c7c0fc",
						version = 3,
					},
				},
			},
			displayPath = "A Relic Reborn: The Chimera/Chimera/AutoSim",
			eventType = 3,
			name = "Chimera AutoSim baseline",
			uuid = "e9c8f8da-7ebc-8bab-9769-0fd1a9b5177d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "A Relic Reborn: The Hydra",
			uuid = "ff2c0c01-a002-6c6b-a214-846cf3153d69",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "A Relic Reborn: The Hydra",
			name = "Hydra",
			uuid = "0aa98e77-9dc4-c596-9ba5-16fb052eee46",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "A Relic Reborn: The Hydra/Hydra",
			name = "Draws",
			uuid = "997878dc-d80b-4aa2-8369-897857b1b331",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal e = eventArgs\nlocal shapes = {[685]=\"circle\",[687]=\"circle\"}\nlocal ms = math.floor(e.startTime + e.duration * 1000 - Now())\nif ms > 0 then\n    local drawer = TensorCore.getStaticDrawer(0x803333FF, 2)\n    if shapes[e.aoeID] == \"circle\" then\n        drawer:addTimedCircle(ms, e.x, e.y, e.z, e.aoeLength, 0, false, true)\n    else\n        drawer:addTimedRect(ms, e.x, e.y, e.z, e.aoeLength, e.aoeWidth, e.heading, 0, false, true)\n    end\n    AnyoneCore.addWorldTextCountdown(ms, {x=e.x,y=e.y+1,z=e.z}, 0xFFFFFFFF, true, 1.1)\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"0b2a1c8d-a557-bdc5-b2a6-d3f5fde5ce7b",
								true,
							},
						},
						name = "Hydra hazard draws",
						uuid = "bfd1f744-2044-6f73-bf6b-00ff30dee555",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 369 and eventArgs.contentID == 2161 and (eventArgs.aoeID == 685 or eventArgs.aoeID == 687)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "0b2a1c8d-a557-bdc5-b2a6-d3f5fde5ce7b",
						version = 3,
					},
				},
			},
			displayPath = "A Relic Reborn: The Hydra/Hydra/Draws",
			eventType = 18,
			name = "Hydra hazard draws",
			uuid = "7d3b2502-3916-889e-b94b-f51b16c9f49c",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.hydraFear = { id = eventArgs.entityID, finish = Now() + eventArgs.channelTimeMax * 1000 }\nself.used = true",
						conditions = 
						{
							
							{
								"b557d1fd-b523-d122-bf18-84cac0ba0b65",
								true,
							},
						},
						name = "Hydra Fear Itself - track cast",
						uuid = "a494387a-8d64-af9d-ad6a-bd0cc7d5326b",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 369 and eventArgs.entityContentID == 2161 and eventArgs.spellID == 1280",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "b557d1fd-b523-d122-bf18-84cac0ba0b65",
						version = 3,
					},
				},
			},
			displayPath = "A Relic Reborn: The Hydra/Hydra/Draws",
			eventType = 3,
			name = "Hydra Fear Itself - track cast",
			timeout = 2,
			uuid = "0250d95e-e6a4-e50e-8923-7667e4d4d4b5",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local fear = data.hydraFear\nlocal p = TensorCore.mGetPlayer()\nlocal boss = TensorCore.mGetEntity(fear.id)\nif boss and boss.alive and boss.pos then\n    local ms = math.min(260, fear.finish - Now())\n    local drawer = TensorCore.getStaticDrawer(0xA033FF33, 2)\n    drawer:addTimedCircle(ms, boss.pos.x, boss.pos.y, boss.pos.z, 1.5, 0, false, true)\n    local distance = TensorCore.getDistance2d(p.pos, boss.pos)\n    if distance > 1.5 then\n        local tip = math.min(1.3, distance * 0.4)\n        local heading = TensorCore.getHeadingToTarget(p.pos, boss.pos)\n        drawer:addTimedArrow(ms, p.pos.x, p.pos.y, p.pos.z, heading, distance - tip, 0.5, tip, 1.1, 0, false)\n    end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"01d73c41-2388-db59-bb16-b8a4e7cef41e",
								true,
							},
						},
						name = "Hydra Fear Itself - move under boss",
						uuid = "77f10aa9-c21d-a262-b662-e3f3a45cd043",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nlocal fear = data.hydraFear\nreturn p ~= nil and p.localmapid == 369 and p.alive and p.incombat and fear ~= nil and Now() < fear.finish",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "01d73c41-2388-db59-bb16-b8a4e7cef41e",
						version = 3,
					},
				},
			},
			displayPath = "A Relic Reborn: The Hydra/Hydra/Draws",
			name = "Hydra Fear Itself - move under boss",
			throttleTime = 250,
			timeout = 2,
			uuid = "d6f740c5-43ea-5606-839e-e5862856bdd7",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "A Relic Reborn: The Hydra/Hydra",
			name = "AutoSim",
			uuid = "356a9117-3995-9491-b8b3-6ac06b7865fa",
		},
		objectType = "folder",
	},
	
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
								"377c8fc7-f298-aafd-8adc-953bba990a93",
								true,
							},
						},
						name = "Hydra helper setup",
						uuid = "5d44ee12-68ce-8d4f-8d29-8d1df27502ff",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 369 and (true)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "377c8fc7-f298-aafd-8adc-953bba990a93",
						version = 3,
					},
				},
			},
			displayPath = "A Relic Reborn: The Hydra/Hydra/AutoSim",
			eventType = 11,
			name = "Hydra helper setup",
			uuid = "d385c8b0-dc88-af88-ab5b-5326bd6e9787",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 369 then self.used = true; return end\ndata.trialsInitialTargets = data.trialsInitialTargets or {}\nlocal states = data.trialsInitialTargets\nlocal state = states[\"369_2161\"] or {}\nstates[\"369_2161\"] = state\nlocal current = TensorCore.mGetTarget()\nlocal label = \"[Trials targeting] Hydra\"\nif state.pending then\n    if current and current.id == state.pending then\n        d(label .. \" confirmed target=\" .. tostring(current.id))\n        state.pending = nil\n    elseif Now() - state.requestedAt >= 1500 then\n        d(label .. \" request not confirmed; intended=\" .. tostring(state.pending) ..\n            \" current=\" .. tostring(current and current.id))\n        state.pending = nil\n    end\n    self.used = true\n    return\nend\nif player.incombat or state.done then self.used = true; return end\nlocal boss, nearest = nil, 35 * 35\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=2161}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx = candidate.pos.x - player.pos.x\n        local dy = candidate.pos.y - player.pos.y\n        local dz = candidate.pos.z - player.pos.z\n        local distance = dx*dx + dy*dy + dz*dz\n        if distance <= nearest then\n            boss, nearest = candidate, distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label .. \" waiting for an attackable boss within 35 yalms; current=\" ..\n            tostring(current and current.id))\n        state.waitLogged = true\n    end\n    self.used = true\n    return\nend\nstate.done = true\nif current and current.alive and current.targetable and current.attackable then\n    d(label .. \" kept existing target; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current.id))\nelse\n    state.pending = boss.id\n    state.requestedAt = Now()\n    d(label .. \" target request; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"2cd4b4c9-e99d-3253-8ebb-dc1aa09cafe4",
								true,
							},
						},
						name = "Select nearby boss once",
						uuid = "bf80c2ec-6767-f005-9751-df777d8d72cd",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 369 then return false end\nlocal states = data.trialsInitialTargets\nlocal state = states and states[\"369_2161\"]\nreturn (state ~= nil and state.pending ~= nil) or (not player.incombat and (not state or not state.done))",
						dequeueIfLuaFalse = true,
						name = "Duty and initial target",
						uuid = "2cd4b4c9-e99d-3253-8ebb-dc1aa09cafe4",
						version = 3,
					},
				},
			},
			displayPath = "A Relic Reborn: The Hydra/Hydra/AutoSim",
			name = "Hydra select boss at encounter start",
			throttleTime = 500,
			uuid = "956bffbc-d6bb-c9e7-abe5-b7fd77763d81",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal api = TensorCore.API.TensorACR\nlocal ok, elapsed = pcall(api.getAutoSimTime)\nif ok and type(elapsed) == \"number\" and elapsed >= 0 and elapsed <= 60 and not data.normalRaidForecastSet then\n    api.setAutoSimKillTime(104)\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0, 20)\n    api.clearAutoSimPhases(\"FullDowntime\")\n    api.clearAutoSimPhases(\"CasterDowntime\")\n    api.addAutoSimPhase(\"CasterDowntime\", 43.2, 46.2, 1)\n    local downtime = {}\n    for _, window in ipairs(downtime) do\n        api.addAutoSimPhase(\"FullDowntime\", window[1], window[2], 1)\n    end\n    data.normalRaidForecastSet = true\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"cb2ffcec-9975-2cf4-91c9-6c1783f7be76",
								true,
							},
						},
						name = "Hydra AutoSim baseline",
						uuid = "2c78aabf-345a-78a6-a3c9-3539aaf10a7f",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 369 and (eventArgs.spellID == 1279 and not data.normalRaidForecastSet)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "cb2ffcec-9975-2cf4-91c9-6c1783f7be76",
						version = 3,
					},
				},
			},
			displayPath = "A Relic Reborn: The Hydra/Hydra/AutoSim",
			eventType = 3,
			name = "Hydra AutoSim baseline",
			uuid = "808c1a1f-04bd-5b7f-a226-730103ec13e9",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- The player's previous toggles are kept in a global and in a small file, so a Lua reload mid-fight cannot lose them.\nlocal p = TensorCore.mGetPlayer()\nlocal folder = GetLuaModsPath() .. [[TensorReactions\\Settings\\]]\nlocal path = folder .. \"Trials-HydraBLM.lua\"\nlocal function savedCapture()\n    if not FileExists(path) then return nil end\n    local saved = FileLoad(path)\n    if type(saved) == \"table\" and saved.pending == true then return saved end\n    return nil\nend\nif p and p.localmapid == 369 and p.job == 25 then\n    if not JacobHydraBLMToggles then\n        -- After a reload mid-fight the ACR toggles are already off, so prefer the saved capture.\n        local prior = savedCapture()\n        if prior then\n            JacobHydraBLMToggles = { ley = prior.ley, triple = prior.triple }\n        else\n            JacobHydraBLMToggles = { ley = ACR_TensorNuke4_LeyLines, triple = ACR_TensorNuke4_Triplecast }\n            if not FolderExists(folder) then FolderCreate(folder) end\n            FileSave(path, { pending = true, ley = JacobHydraBLMToggles.ley, triple = JacobHydraBLMToggles.triple })\n        end\n    end\n    ACR_TensorNuke4_LeyLines = false\n    ACR_TensorNuke4_Triplecast = false\nelse\n    local prior = JacobHydraBLMToggles or savedCapture()\n    JacobHydraBLMToggles = nil\n    JacobHydraBLMChecked = true\n    if prior then\n        if ACR_TensorNuke4_LeyLines == false and type(prior.ley) == \"boolean\" then ACR_TensorNuke4_LeyLines = prior.ley end\n        if ACR_TensorNuke4_Triplecast == false and type(prior.triple) == \"boolean\" then ACR_TensorNuke4_Triplecast = prior.triple end\n        FileSave(path, { pending = false })\n    end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"12e9d324-5b6b-334e-b4ba-b3b8a67ff91e",
								true,
							},
						},
						name = "Hydra BLM synced ability guard",
						uuid = "90bb9846-2651-2f78-bcc0-56a00a785cb3",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nlocal active = p ~= nil and p.localmapid == 369 and p.job == 25\nif active then\n    return JacobHydraBLMToggles == nil and type(ACR_TensorNuke4_LeyLines) == \"boolean\" and type(ACR_TensorNuke4_Triplecast) == \"boolean\"\nend\n-- Outside the fight: restore owned toggles, and once per Lua session recover a capture lost to a reload.\nreturn JacobHydraBLMToggles ~= nil or not JacobHydraBLMChecked",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "12e9d324-5b6b-334e-b4ba-b3b8a67ff91e",
						version = 3,
					},
				},
			},
			displayPath = "A Relic Reborn: The Hydra/Hydra/AutoSim",
			name = "Hydra BLM synced ability guard",
			throttleTime = 750,
			timeout = 2,
			uuid = "0137e3b8-3b39-342b-a9fb-c84e1d9e55c8",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Containment Bay Z1T9",
			uuid = "63a4fd6c-5e80-98e8-a11f-e0788c26b5c7",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Containment Bay Z1T9",
			name = "Zurvan",
			uuid = "ee8e2004-c7b6-8843-92b8-518408210cd4",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Containment Bay Z1T9/Zurvan",
			name = "Draws",
			uuid = "6170c10b-2ae0-a262-a555-cb332fa10a0b",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal e = eventArgs\nlocal shapes = {[7741]=\"rect\",[7732]=\"circle\",[7725]=\"circle\"}\nlocal ms = math.floor(e.startTime + e.duration * 1000 - Now())\nif ms > 0 then\n    local drawer = TensorCore.getStaticDrawer(0x803333FF, 2)\n    if shapes[e.aoeID] == \"circle\" then\n        drawer:addTimedCircle(ms, e.x, e.y, e.z, e.aoeLength, 0, false, true)\n    else\n        drawer:addTimedRect(ms, e.x, e.y, e.z, e.aoeLength, e.aoeWidth, e.heading, 0, false, true)\n    end\n    AnyoneCore.addWorldTextCountdown(ms, {x=e.x,y=e.y+1,z=e.z}, 0xFFFFFFFF, true, 1.1)\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"26847791-e9ea-f911-838e-e1a5bb3c9a27",
								true,
							},
						},
						name = "Zurvan hazard draws",
						uuid = "ddfe17bb-c8e7-1ed2-ba5d-2cf1f9032515",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 637 and (eventArgs.aoeID == 7741 or eventArgs.aoeID == 7732 or eventArgs.aoeID == 7725)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "26847791-e9ea-f911-838e-e1a5bb3c9a27",
						version = 3,
					},
				},
			},
			displayPath = "Containment Bay Z1T9/Zurvan/Draws",
			eventType = 18,
			name = "Zurvan hazard draws",
			uuid = "c405db47-c450-c3ea-9689-8f24f7e6f8d9",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Containment Bay Z1T9/Zurvan",
			name = "AutoSim",
			uuid = "badb770e-3cae-f305-a1df-6e90b9300052",
		},
		objectType = "folder",
	},
	
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
								"799f4eeb-311f-7dd7-ac06-7dd1ec23bd4d",
								true,
							},
						},
						name = "Zurvan helper setup",
						uuid = "7f2b6a16-8c66-b2f7-8647-5f3e8cb25a85",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 637 and (true)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "799f4eeb-311f-7dd7-ac06-7dd1ec23bd4d",
						version = 3,
					},
				},
			},
			displayPath = "Containment Bay Z1T9/Zurvan/AutoSim",
			eventType = 11,
			name = "Zurvan helper setup",
			uuid = "fbf15a96-13ad-aaf2-94d4-721a5c1e05c4",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 637 then self.used = true; return end\ndata.trialsInitialTargets = data.trialsInitialTargets or {}\nlocal states = data.trialsInitialTargets\nlocal state = states[\"637_5567\"] or {}\nstates[\"637_5567\"] = state\nlocal current = TensorCore.mGetTarget()\nlocal label = \"[Trials targeting] Zurvan\"\nif state.pending then\n    if current and current.id == state.pending then\n        d(label .. \" confirmed target=\" .. tostring(current.id))\n        state.pending = nil\n    elseif Now() - state.requestedAt >= 1500 then\n        d(label .. \" request not confirmed; intended=\" .. tostring(state.pending) ..\n            \" current=\" .. tostring(current and current.id))\n        state.pending = nil\n    end\n    self.used = true\n    return\nend\nif player.incombat or state.done then self.used = true; return end\nlocal boss, nearest = nil, 35 * 35\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=5567}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx = candidate.pos.x - player.pos.x\n        local dy = candidate.pos.y - player.pos.y\n        local dz = candidate.pos.z - player.pos.z\n        local distance = dx*dx + dy*dy + dz*dz\n        if distance <= nearest then\n            boss, nearest = candidate, distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label .. \" waiting for an attackable boss within 35 yalms; current=\" ..\n            tostring(current and current.id))\n        state.waitLogged = true\n    end\n    self.used = true\n    return\nend\nstate.done = true\nif current and current.alive and current.targetable and current.attackable then\n    d(label .. \" kept existing target; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current.id))\nelse\n    state.pending = boss.id\n    state.requestedAt = Now()\n    d(label .. \" target request; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"91c11600-33b3-6549-aa01-0743c75a40f2",
								true,
							},
						},
						name = "Select nearby boss once",
						uuid = "44eaf51a-fa14-155a-8d15-a81e224920fe",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 637 then return false end\nlocal states = data.trialsInitialTargets\nlocal state = states and states[\"637_5567\"]\nreturn (state ~= nil and state.pending ~= nil) or (not player.incombat and (not state or not state.done))",
						dequeueIfLuaFalse = true,
						name = "Duty and initial target",
						uuid = "91c11600-33b3-6549-aa01-0743c75a40f2",
						version = 3,
					},
				},
			},
			displayPath = "Containment Bay Z1T9/Zurvan/AutoSim",
			name = "Zurvan select boss at encounter start",
			throttleTime = 500,
			uuid = "c9f47e72-dc3b-fd49-88d3-31a099c3e47e",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal api = TensorCore.API.TensorACR\nlocal ok, elapsed = pcall(api.getAutoSimTime)\nif ok and type(elapsed) == \"number\" and elapsed >= 0 and elapsed <= 60 and not data.normalRaidForecastSet then\n    api.setAutoSimKillTime(308)\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0, 20)\n    api.clearAutoSimPhases(\"FullDowntime\")\n    local downtime = {{48.2,57.2},{76.8,93.1},{117.9,134.1},{154.9,175.3},{221.2,249.3}}\n    for _, window in ipairs(downtime) do\n        api.addAutoSimPhase(\"FullDowntime\", window[1], window[2], 1)\n    end\n    data.normalRaidForecastSet = true\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"df3ce1a9-55a7-5af4-acb3-3be6082ce439",
								true,
							},
						},
						name = "Zurvan AutoSim baseline",
						uuid = "622695a4-0456-3b18-9b9a-0f8839414737",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 637 and (eventArgs.spellID == 7710 and not data.normalRaidForecastSet)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "df3ce1a9-55a7-5af4-acb3-3be6082ce439",
						version = 3,
					},
				},
			},
			displayPath = "Containment Bay Z1T9/Zurvan/AutoSim",
			eventType = 3,
			name = "Zurvan AutoSim baseline",
			uuid = "1fa28e4a-339d-6c57-af0a-67a7d5b72dcd",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "The Pool of Tribute",
			uuid = "b79f7a4c-6e07-ed94-837a-12832c4d9689",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Pool of Tribute",
			name = "Susano",
			uuid = "ec9e92ac-7a7c-2e90-a47c-666738674745",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Pool of Tribute/Susano",
			name = "Draws",
			uuid = "0e3f9725-d4d1-4d41-aa96-b61e96208216",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal e = eventArgs\nlocal shapes = {[9631]=\"rect\",[8227]=\"rect\"}\nlocal ms = math.floor(e.startTime + e.duration * 1000 - Now())\nif ms > 0 then\n    local drawer = TensorCore.getStaticDrawer(0x803333FF, 2)\n    if shapes[e.aoeID] == \"circle\" then\n        drawer:addTimedCircle(ms, e.x, e.y, e.z, e.aoeLength, 0, false, true)\n    else\n        drawer:addTimedRect(ms, e.x, e.y, e.z, e.aoeLength, e.aoeWidth, e.heading, 0, false, true)\n    end\n    AnyoneCore.addWorldTextCountdown(ms, {x=e.x,y=e.y+1,z=e.z}, 0xFFFFFFFF, true, 1.1)\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"9253793a-27e6-2ee2-b141-81ab718a8a1d",
								true,
							},
						},
						name = "Susano hazard draws",
						uuid = "4f9bcbcb-7ea1-1913-b974-6b5f646f6468",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 674 and (eventArgs.aoeID == 9631 or eventArgs.aoeID == 8227)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "9253793a-27e6-2ee2-b141-81ab718a8a1d",
						version = 3,
					},
				},
			},
			displayPath = "The Pool of Tribute/Susano/Draws",
			eventType = 18,
			name = "Susano hazard draws",
			uuid = "70a6d460-15ad-f349-af19-f849bde2d611",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Pool of Tribute/Susano",
			name = "AutoSim",
			uuid = "38bc0803-8449-54b5-9b10-539eb136ea4d",
		},
		objectType = "folder",
	},
	
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
								"ba4b5ff9-3146-6086-a40f-2e37a5062c73",
								true,
							},
						},
						name = "Susano helper setup",
						uuid = "ee5c6591-dde3-8896-b74c-fc6d3ae508f5",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 674 and (true)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "ba4b5ff9-3146-6086-a40f-2e37a5062c73",
						version = 3,
					},
				},
			},
			displayPath = "The Pool of Tribute/Susano/AutoSim",
			eventType = 11,
			name = "Susano helper setup",
			uuid = "0a8fa907-d40e-3b99-879f-03c88b7dfbff",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 674 then self.used = true; return end\ndata.trialsInitialTargets = data.trialsInitialTargets or {}\nlocal states = data.trialsInitialTargets\nlocal state = states[\"674_6221\"] or {}\nstates[\"674_6221\"] = state\nlocal current = TensorCore.mGetTarget()\nlocal label = \"[Trials targeting] Susano\"\nif state.pending then\n    if current and current.id == state.pending then\n        d(label .. \" confirmed target=\" .. tostring(current.id))\n        state.pending = nil\n    elseif Now() - state.requestedAt >= 1500 then\n        d(label .. \" request not confirmed; intended=\" .. tostring(state.pending) ..\n            \" current=\" .. tostring(current and current.id))\n        state.pending = nil\n    end\n    self.used = true\n    return\nend\nif player.incombat or state.done then self.used = true; return end\nlocal boss, nearest = nil, 35 * 35\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=6221}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx = candidate.pos.x - player.pos.x\n        local dy = candidate.pos.y - player.pos.y\n        local dz = candidate.pos.z - player.pos.z\n        local distance = dx*dx + dy*dy + dz*dz\n        if distance <= nearest then\n            boss, nearest = candidate, distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label .. \" waiting for an attackable boss within 35 yalms; current=\" ..\n            tostring(current and current.id))\n        state.waitLogged = true\n    end\n    self.used = true\n    return\nend\nstate.done = true\nif current and current.alive and current.targetable and current.attackable then\n    d(label .. \" kept existing target; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current.id))\nelse\n    state.pending = boss.id\n    state.requestedAt = Now()\n    d(label .. \" target request; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"c5aa5aa3-cb81-c18b-b3dc-6e718cb459e6",
								true,
							},
						},
						name = "Select nearby boss once",
						uuid = "e4ebc62f-5a15-1a4e-ac7a-f15be3d12489",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 674 then return false end\nlocal states = data.trialsInitialTargets\nlocal state = states and states[\"674_6221\"]\nreturn (state ~= nil and state.pending ~= nil) or (not player.incombat and (not state or not state.done))",
						dequeueIfLuaFalse = true,
						name = "Duty and initial target",
						uuid = "c5aa5aa3-cb81-c18b-b3dc-6e718cb459e6",
						version = 3,
					},
				},
			},
			displayPath = "The Pool of Tribute/Susano/AutoSim",
			name = "Susano select boss at encounter start",
			throttleTime = 500,
			uuid = "eb52863c-fb10-1854-9677-0806dcb67597",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal api = TensorCore.API.TensorACR\nlocal ok, elapsed = pcall(api.getAutoSimTime)\nif ok and type(elapsed) == \"number\" and elapsed >= 0 and elapsed <= 60 and not data.normalRaidForecastSet then\n    api.setAutoSimKillTime(331)\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0, 20)\n    api.clearAutoSimPhases(\"FullDowntime\")\n    local downtime = {{150.5,175.6},{185.0,197.2},{207.4,223.8}}\n    for _, window in ipairs(downtime) do\n        api.addAutoSimPhase(\"FullDowntime\", window[1], window[2], 1)\n    end\n    data.normalRaidForecastSet = true\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"fa7429d0-6fc4-5834-ac8f-8dd6195845ee",
								true,
							},
						},
						name = "Susano AutoSim baseline",
						uuid = "470b0c1d-0719-ddcc-951b-fae1397a2237",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 674 and (eventArgs.spellID == 8221 and not data.normalRaidForecastSet)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "fa7429d0-6fc4-5834-ac8f-8dd6195845ee",
						version = 3,
					},
				},
			},
			displayPath = "The Pool of Tribute/Susano/AutoSim",
			eventType = 3,
			name = "Susano AutoSim baseline",
			uuid = "cb2d6081-e117-78aa-96f1-3286dc9bb3af",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "The Jade Stoa",
			uuid = "4d7e9ec0-31cf-3597-a363-5cf9a5b28d4e",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Jade Stoa",
			name = "Byakko",
			uuid = "bc85bb2b-8801-256e-a6fc-ab8e9cdac428",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Jade Stoa/Byakko",
			name = "Draws",
			uuid = "599dfe26-59be-2ffe-a6f9-a8d8cffa5713",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal e = eventArgs\nlocal shapes = {[10793]=\"circle\",[10796]=\"rect\"}\nlocal ms = math.floor(e.startTime + e.duration * 1000 - Now())\nif ms > 0 then\n    local drawer = TensorCore.getStaticDrawer(0x803333FF, 2)\n    if shapes[e.aoeID] == \"circle\" then\n        drawer:addTimedCircle(ms, e.x, e.y, e.z, e.aoeLength, 0, false, true)\n    else\n        drawer:addTimedRect(ms, e.x, e.y, e.z, e.aoeLength, e.aoeWidth, e.heading, 0, false, true)\n    end\n    AnyoneCore.addWorldTextCountdown(ms, {x=e.x,y=e.y+1,z=e.z}, 0xFFFFFFFF, true, 1.1)\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"9dc9d066-eeeb-5ae4-b218-9ea3f97794cf",
								true,
							},
						},
						name = "Byakko hazard draws",
						uuid = "e9b337bf-881e-b8be-8112-449516e9ab74",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 746 and (eventArgs.aoeID == 10793 or eventArgs.aoeID == 10796)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "9dc9d066-eeeb-5ae4-b218-9ea3f97794cf",
						version = 3,
					},
				},
			},
			displayPath = "The Jade Stoa/Byakko/Draws",
			eventType = 18,
			name = "Byakko hazard draws",
			uuid = "2c6cb9f9-ed17-6459-a509-0d7bba78e50a",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Jade Stoa/Byakko",
			name = "AutoSim",
			uuid = "21919cb3-f040-e2d5-a201-28a7065322e7",
		},
		objectType = "folder",
	},
	
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
								"9f4753c9-29ad-5c08-ae06-1238ee9dc4cc",
								true,
							},
						},
						name = "Byakko helper setup",
						uuid = "48f72f97-22c2-fadb-89bd-67c0a4c574aa",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 746 and (true)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "9f4753c9-29ad-5c08-ae06-1238ee9dc4cc",
						version = 3,
					},
				},
			},
			displayPath = "The Jade Stoa/Byakko/AutoSim",
			eventType = 11,
			name = "Byakko helper setup",
			uuid = "c19a0938-7ac3-f2a3-ba47-57d61e764d39",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 746 then self.used = true; return end\ndata.trialsInitialTargets = data.trialsInitialTargets or {}\nlocal states = data.trialsInitialTargets\nlocal state = states[\"746_7092\"] or {}\nstates[\"746_7092\"] = state\nlocal current = TensorCore.mGetTarget()\nlocal label = \"[Trials targeting] Byakko\"\nif state.pending then\n    if current and current.id == state.pending then\n        d(label .. \" confirmed target=\" .. tostring(current.id))\n        state.pending = nil\n    elseif Now() - state.requestedAt >= 1500 then\n        d(label .. \" request not confirmed; intended=\" .. tostring(state.pending) ..\n            \" current=\" .. tostring(current and current.id))\n        state.pending = nil\n    end\n    self.used = true\n    return\nend\nif player.incombat or state.done then self.used = true; return end\nlocal boss, nearest = nil, 35 * 35\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=7092}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx = candidate.pos.x - player.pos.x\n        local dy = candidate.pos.y - player.pos.y\n        local dz = candidate.pos.z - player.pos.z\n        local distance = dx*dx + dy*dy + dz*dz\n        if distance <= nearest then\n            boss, nearest = candidate, distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label .. \" waiting for an attackable boss within 35 yalms; current=\" ..\n            tostring(current and current.id))\n        state.waitLogged = true\n    end\n    self.used = true\n    return\nend\nstate.done = true\nif current and current.alive and current.targetable and current.attackable then\n    d(label .. \" kept existing target; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current.id))\nelse\n    state.pending = boss.id\n    state.requestedAt = Now()\n    d(label .. \" target request; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"36381d6b-d4df-6787-baaa-b31ba74efc4e",
								true,
							},
						},
						name = "Select nearby boss once",
						uuid = "b78fe773-d89a-303a-b88c-54d8b67f3fcc",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 746 then return false end\nlocal states = data.trialsInitialTargets\nlocal state = states and states[\"746_7092\"]\nreturn (state ~= nil and state.pending ~= nil) or (not player.incombat and (not state or not state.done))",
						dequeueIfLuaFalse = true,
						name = "Duty and initial target",
						uuid = "36381d6b-d4df-6787-baaa-b31ba74efc4e",
						version = 3,
					},
				},
			},
			displayPath = "The Jade Stoa/Byakko/AutoSim",
			name = "Byakko select boss at encounter start",
			throttleTime = 500,
			uuid = "730d320f-c70c-4905-84ea-6343ccb8e232",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal api = TensorCore.API.TensorACR\nlocal ok, elapsed = pcall(api.getAutoSimTime)\nif ok and type(elapsed) == \"number\" and elapsed >= 0 and elapsed <= 60 and not data.normalRaidForecastSet then\n    api.setAutoSimKillTime(382)\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0, 25)\n    api.clearAutoSimPhases(\"FullDowntime\")\n    local downtime = {{124.7,132.5},{167.5,273.5}}\n    for _, window in ipairs(downtime) do\n        api.addAutoSimPhase(\"FullDowntime\", window[1], window[2], 1)\n    end\n    data.normalRaidForecastSet = true\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"17286af9-84e5-0c6d-9a6f-57d45ab089d3",
								true,
							},
						},
						name = "Byakko AutoSim baseline",
						uuid = "f0d7f956-4fcc-1de9-ada8-996737c56e6c",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 746 and (eventArgs.spellID == 10799 and not data.normalRaidForecastSet)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "17286af9-84e5-0c6d-9a6f-57d45ab089d3",
						version = 3,
					},
				},
			},
			displayPath = "The Jade Stoa/Byakko/AutoSim",
			eventType = 3,
			name = "Byakko AutoSim baseline",
			uuid = "ac06e946-d2ae-fccd-ac41-3bbb9c5378b3",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "The Final Day",
			uuid = "6422a08e-cba7-cfe1-aa25-19b796540f81",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Final Day",
			name = "Endsinger",
			uuid = "4d1a8430-62cc-3ca0-a27a-252fe0e816f5",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Final Day/Endsinger",
			name = "Draws",
			uuid = "25193f44-754b-3ae5-96bf-f10c82d03a07",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal e = eventArgs\nlocal shapes = {[26158]=\"circle\",[26171]=\"circle\",[26174]=\"rect\",[26179]=\"rect\",[26180]=\"rect\",[26188]=\"circle\",[26182]=\"circle\",[26619]=\"rect\"}\nlocal ms = math.floor(e.startTime + e.duration * 1000 - Now())\nif ms > 0 then\n    local drawer = TensorCore.getStaticDrawer(0x803333FF, 2)\n    if shapes[e.aoeID] == \"circle\" then\n        drawer:addTimedCircle(ms, e.x, e.y, e.z, e.aoeLength, 0, false, true)\n    else\n        drawer:addTimedRect(ms, e.x, e.y, e.z, e.aoeLength, e.aoeWidth, e.heading, 0, false, true)\n    end\n    AnyoneCore.addWorldTextCountdown(ms, {x=e.x,y=e.y+1,z=e.z}, 0xFFFFFFFF, true, 1.1)\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"0162789a-331f-dfbe-946c-9e520128ea45",
								true,
							},
						},
						name = "Endsinger hazard draws",
						uuid = "efc27816-b88c-5ded-86a4-c1d7c03364b1",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 997 and (eventArgs.aoeID == 26158 or eventArgs.aoeID == 26171 or eventArgs.aoeID == 26174 or eventArgs.aoeID == 26179 or eventArgs.aoeID == 26180 or eventArgs.aoeID == 26188 or eventArgs.aoeID == 26182 or eventArgs.aoeID == 26619)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "0162789a-331f-dfbe-946c-9e520128ea45",
						version = 3,
					},
				},
			},
			displayPath = "The Final Day/Endsinger/Draws",
			eventType = 18,
			name = "Endsinger hazard draws",
			uuid = "86de063d-e9d4-1446-9837-87c06914fc34",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Final Day/Endsinger",
			name = "AutoSim",
			uuid = "829673de-7ca0-9338-a5aa-9ab9511734df",
		},
		objectType = "folder",
	},
	
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
								"28f59896-9db8-98c9-8e29-4f05f65e4d3a",
								true,
							},
						},
						name = "Endsinger helper setup",
						uuid = "46889ed7-62e3-e8b1-8d61-9ed7d4c7e91a",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 997 and (true)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "28f59896-9db8-98c9-8e29-4f05f65e4d3a",
						version = 3,
					},
				},
			},
			displayPath = "The Final Day/Endsinger/AutoSim",
			eventType = 11,
			name = "Endsinger helper setup",
			uuid = "cd7e60dc-6e5f-7e42-8bcf-e2dcab100703",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 997 then self.used = true; return end\ndata.trialsInitialTargets = data.trialsInitialTargets or {}\nlocal states = data.trialsInitialTargets\nlocal state = states[\"997_10448\"] or {}\nstates[\"997_10448\"] = state\nlocal current = TensorCore.mGetTarget()\nlocal label = \"[Trials targeting] Endsinger\"\nif state.pending then\n    if current and current.id == state.pending then\n        d(label .. \" confirmed target=\" .. tostring(current.id))\n        state.pending = nil\n    elseif Now() - state.requestedAt >= 1500 then\n        d(label .. \" request not confirmed; intended=\" .. tostring(state.pending) ..\n            \" current=\" .. tostring(current and current.id))\n        state.pending = nil\n    end\n    self.used = true\n    return\nend\nif player.incombat or state.done then self.used = true; return end\nlocal boss, nearest = nil, 35 * 35\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=10448}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx = candidate.pos.x - player.pos.x\n        local dy = candidate.pos.y - player.pos.y\n        local dz = candidate.pos.z - player.pos.z\n        local distance = dx*dx + dy*dy + dz*dz\n        if distance <= nearest then\n            boss, nearest = candidate, distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label .. \" waiting for an attackable boss within 35 yalms; current=\" ..\n            tostring(current and current.id))\n        state.waitLogged = true\n    end\n    self.used = true\n    return\nend\nstate.done = true\nif current and current.alive and current.targetable and current.attackable then\n    d(label .. \" kept existing target; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current.id))\nelse\n    state.pending = boss.id\n    state.requestedAt = Now()\n    d(label .. \" target request; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"9a4e87c8-261c-e329-bfdf-3da929918956",
								true,
							},
						},
						name = "Select nearby boss once",
						uuid = "aa20fddc-84ce-f543-900f-810c5c4abb22",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 997 then return false end\nlocal states = data.trialsInitialTargets\nlocal state = states and states[\"997_10448\"]\nreturn (state ~= nil and state.pending ~= nil) or (not player.incombat and (not state or not state.done))",
						dequeueIfLuaFalse = true,
						name = "Duty and initial target",
						uuid = "9a4e87c8-261c-e329-bfdf-3da929918956",
						version = 3,
					},
				},
			},
			displayPath = "The Final Day/Endsinger/AutoSim",
			name = "Endsinger select boss at encounter start",
			throttleTime = 500,
			uuid = "856172b3-4e54-d381-9152-b6d690b66824",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal api = TensorCore.API.TensorACR\nlocal ok, elapsed = pcall(api.getAutoSimTime)\nif ok and type(elapsed) == \"number\" and elapsed >= 0 and elapsed <= 60 and not data.normalRaidForecastSet then\n    api.setAutoSimKillTime(632)\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0, 45)\n    api.clearAutoSimPhases(\"FullDowntime\")\n    local downtime = {{264.5,281.9},{356.4,370.6},{415.4,438.3},{489.5,527.4}}\n    for _, window in ipairs(downtime) do\n        api.addAutoSimPhase(\"FullDowntime\", window[1], window[2], 1)\n    end\n    data.normalRaidForecastSet = true\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"a00a9c69-08a9-77db-889d-86d62af46014",
								true,
							},
						},
						name = "Endsinger AutoSim baseline",
						uuid = "c2e6471c-1de3-ce41-9a64-ad69b29cfea6",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 997 and (eventArgs.spellID == 26156 and not data.normalRaidForecastSet)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "a00a9c69-08a9-77db-889d-86d62af46014",
						version = 3,
					},
				},
			},
			displayPath = "The Final Day/Endsinger/AutoSim",
			eventType = 3,
			name = "Endsinger AutoSim baseline",
			uuid = "920ff00c-988c-3acd-ae13-c9b27ae4fd43",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "The Dark Inside",
			uuid = "cb7f6b19-67ed-caea-acda-8f0ca138bb0d",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Dark Inside",
			name = "Zodiark",
			uuid = "e2834eb4-19a6-76a5-8ec9-9b00f954021b",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Dark Inside/Zodiark",
			name = "Draws",
			uuid = "2e56de55-ea5a-4296-9421-e32e79512c2f",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal e = eventArgs\nlocal shapes = {[26571]=\"rect\"}\nlocal ms = math.floor(e.startTime + e.duration * 1000 - Now())\nif ms > 0 then\n    local drawer = TensorCore.getStaticDrawer(0x803333FF, 2)\n    if shapes[e.aoeID] == \"circle\" then\n        drawer:addTimedCircle(ms, e.x, e.y, e.z, e.aoeLength, 0, false, true)\n    else\n        drawer:addTimedRect(ms, e.x, e.y, e.z, e.aoeLength, e.aoeWidth, e.heading, 0, false, true)\n    end\n    AnyoneCore.addWorldTextCountdown(ms, {x=e.x,y=e.y+1,z=e.z}, 0xFFFFFFFF, true, 1.1)\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"94b3fdc0-883b-fe0e-8056-5f586ad0b151",
								true,
							},
						},
						name = "Zodiark hazard draws",
						uuid = "83f4fab6-7ff4-85bf-9774-6698d4e52ac6",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 992 and (eventArgs.aoeID == 26571)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "94b3fdc0-883b-fe0e-8056-5f586ad0b151",
						version = 3,
					},
				},
			},
			displayPath = "The Dark Inside/Zodiark/Draws",
			eventType = 18,
			name = "Zodiark hazard draws",
			uuid = "ae862980-b026-c895-9e94-b93a7cfd7f44",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Dark Inside/Zodiark",
			name = "AutoSim",
			uuid = "2156952a-bb0b-fd10-a900-3736aa041923",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local h = AnyoneCore and AnyoneCore.Settings and AnyoneCore.Settings.DutyHelper\nif h then h.enabled = false end\nself.used = true",
						conditions = 
						{
							
							{
								"ed3e327b-8f66-83dc-baa0-99a101d40459",
								true,
							},
						},
						name = "Zodiark disable Duty Helper",
						uuid = "dcf8395d-2a6a-10a4-bf3f-7ee8445d6d02",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 992 and (true)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "ed3e327b-8f66-83dc-baa0-99a101d40459",
						version = 3,
					},
				},
			},
			displayPath = "The Dark Inside/Zodiark/AutoSim",
			eventType = 11,
			name = "Zodiark disable Duty Helper",
			uuid = "14fd4d1e-259b-0bad-87d7-71bad0d49a56",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 992 then self.used = true; return end\ndata.trialsInitialTargets = data.trialsInitialTargets or {}\nlocal states = data.trialsInitialTargets\nlocal state = states[\"992_10456\"] or {}\nstates[\"992_10456\"] = state\nlocal current = TensorCore.mGetTarget()\nlocal label = \"[Trials targeting] Zodiark\"\nif state.pending then\n    if current and current.id == state.pending then\n        d(label .. \" confirmed target=\" .. tostring(current.id))\n        state.pending = nil\n    elseif Now() - state.requestedAt >= 1500 then\n        d(label .. \" request not confirmed; intended=\" .. tostring(state.pending) ..\n            \" current=\" .. tostring(current and current.id))\n        state.pending = nil\n    end\n    self.used = true\n    return\nend\nif player.incombat or state.done then self.used = true; return end\nlocal boss, nearest = nil, 35 * 35\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=10456}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx = candidate.pos.x - player.pos.x\n        local dy = candidate.pos.y - player.pos.y\n        local dz = candidate.pos.z - player.pos.z\n        local distance = dx*dx + dy*dy + dz*dz\n        if distance <= nearest then\n            boss, nearest = candidate, distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label .. \" waiting for an attackable boss within 35 yalms; current=\" ..\n            tostring(current and current.id))\n        state.waitLogged = true\n    end\n    self.used = true\n    return\nend\nstate.done = true\nif current and current.alive and current.targetable and current.attackable then\n    d(label .. \" kept existing target; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current.id))\nelse\n    state.pending = boss.id\n    state.requestedAt = Now()\n    d(label .. \" target request; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"ecc656e9-fe24-2736-814f-10d014e2f8fe",
								true,
							},
						},
						name = "Select nearby boss once",
						uuid = "67bb8a50-b114-5ca6-bc82-c0c03ea934c8",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 992 then return false end\nlocal states = data.trialsInitialTargets\nlocal state = states and states[\"992_10456\"]\nreturn (state ~= nil and state.pending ~= nil) or (not player.incombat and (not state or not state.done))",
						dequeueIfLuaFalse = true,
						name = "Duty and initial target",
						uuid = "ecc656e9-fe24-2736-814f-10d014e2f8fe",
						version = 3,
					},
				},
			},
			displayPath = "The Dark Inside/Zodiark/AutoSim",
			name = "Zodiark select boss at encounter start",
			throttleTime = 500,
			uuid = "58b9440d-8304-8fd6-8f8e-5654d882f929",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Worqor Lar Dor",
			uuid = "b90341bc-753c-ce8e-9cf9-40b149285a4d",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Worqor Lar Dor",
			name = "Valigarmanda",
			uuid = "7478cddc-2845-33ca-ba85-36c03505326e",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Worqor Lar Dor/Valigarmanda",
			name = "Draws",
			uuid = "6bb15256-6dcb-5664-9c08-4ecc996df638",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal e = eventArgs\nlocal shapes = {[36169]=\"rect\",[36168]=\"rect\"}\nlocal ms = math.floor(e.startTime + e.duration * 1000 - Now())\nif ms > 0 then\n    local drawer = TensorCore.getStaticDrawer(0x803333FF, 2)\n    if shapes[e.aoeID] == \"circle\" then\n        drawer:addTimedCircle(ms, e.x, e.y, e.z, e.aoeLength, 0, false, true)\n    else\n        drawer:addTimedRect(ms, e.x, e.y, e.z, e.aoeLength, e.aoeWidth, e.heading, 0, false, true)\n    end\n    AnyoneCore.addWorldTextCountdown(ms, {x=e.x,y=e.y+1,z=e.z}, 0xFFFFFFFF, true, 1.1)\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"fdb5f7a7-bfbe-4c70-b0c2-b25fba9c359a",
								true,
							},
						},
						name = "Valigarmanda hazard draws",
						uuid = "9fb77021-2c82-58f5-9eae-ba57a37a95f7",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1195 and (eventArgs.aoeID == 36169 or eventArgs.aoeID == 36168)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "fdb5f7a7-bfbe-4c70-b0c2-b25fba9c359a",
						version = 3,
					},
				},
			},
			displayPath = "Worqor Lar Dor/Valigarmanda/Draws",
			eventType = 18,
			name = "Valigarmanda hazard draws",
			uuid = "0a3f9eb0-217a-9b27-abd5-5dcd481a2299",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Worqor Lar Dor/Valigarmanda",
			name = "AutoSim",
			uuid = "f390d7c2-a409-f7fe-b0ff-2a433e40f067",
		},
		objectType = "folder",
	},
	
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
								"2537f954-1261-202e-9afa-0dc95afbc723",
								true,
							},
						},
						name = "Valigarmanda helper setup",
						uuid = "949ba0cb-331c-7f8c-b328-2a3f0eca5e66",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1195 and (true)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "2537f954-1261-202e-9afa-0dc95afbc723",
						version = 3,
					},
				},
			},
			displayPath = "Worqor Lar Dor/Valigarmanda/AutoSim",
			eventType = 11,
			name = "Valigarmanda helper setup",
			uuid = "5cf5d7cc-7ee8-aed6-a343-26c12deaf1d2",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 1195 then self.used = true; return end\ndata.trialsInitialTargets = data.trialsInitialTargets or {}\nlocal states = data.trialsInitialTargets\nlocal state = states[\"1195_12854\"] or {}\nstates[\"1195_12854\"] = state\nlocal current = TensorCore.mGetTarget()\nlocal label = \"[Trials targeting] Valigarmanda\"\nif state.pending then\n    if current and current.id == state.pending then\n        d(label .. \" confirmed target=\" .. tostring(current.id))\n        state.pending = nil\n    elseif Now() - state.requestedAt >= 1500 then\n        d(label .. \" request not confirmed; intended=\" .. tostring(state.pending) ..\n            \" current=\" .. tostring(current and current.id))\n        state.pending = nil\n    end\n    self.used = true\n    return\nend\nif player.incombat or state.done then self.used = true; return end\nlocal boss, nearest = nil, 35 * 35\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=12854}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx = candidate.pos.x - player.pos.x\n        local dy = candidate.pos.y - player.pos.y\n        local dz = candidate.pos.z - player.pos.z\n        local distance = dx*dx + dy*dy + dz*dz\n        if distance <= nearest then\n            boss, nearest = candidate, distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label .. \" waiting for an attackable boss within 35 yalms; current=\" ..\n            tostring(current and current.id))\n        state.waitLogged = true\n    end\n    self.used = true\n    return\nend\nstate.done = true\nif current and current.alive and current.targetable and current.attackable then\n    d(label .. \" kept existing target; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current.id))\nelse\n    state.pending = boss.id\n    state.requestedAt = Now()\n    d(label .. \" target request; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"4668cef2-c0ae-f6ee-ac9d-7336f2231a1e",
								true,
							},
						},
						name = "Select nearby boss once",
						uuid = "081f9a98-38c6-0edd-a270-2b0806d6013e",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 1195 then return false end\nlocal states = data.trialsInitialTargets\nlocal state = states and states[\"1195_12854\"]\nreturn (state ~= nil and state.pending ~= nil) or (not player.incombat and (not state or not state.done))",
						dequeueIfLuaFalse = true,
						name = "Duty and initial target",
						uuid = "4668cef2-c0ae-f6ee-ac9d-7336f2231a1e",
						version = 3,
					},
				},
			},
			displayPath = "Worqor Lar Dor/Valigarmanda/AutoSim",
			name = "Valigarmanda select boss at encounter start",
			throttleTime = 500,
			uuid = "95ebf8fe-c124-2fd8-8925-2d4f74e38a45",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal api = TensorCore.API.TensorACR\nlocal ok, elapsed = pcall(api.getAutoSimTime)\nif ok and type(elapsed) == \"number\" and elapsed >= 0 and elapsed <= 60 and not data.normalRaidForecastSet then\n    api.setAutoSimKillTime(406)\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0, 18)\n    api.clearAutoSimPhases(\"FullDowntime\")\n    local downtime = {}\n    for _, window in ipairs(downtime) do\n        api.addAutoSimPhase(\"FullDowntime\", window[1], window[2], 1)\n    end\n    data.normalRaidForecastSet = true\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"a86ae267-686d-5011-bfb9-5651056bd136",
								true,
							},
						},
						name = "Valigarmanda AutoSim baseline",
						uuid = "afc26c36-a6e7-2a6b-a160-e9f39b274529",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1195 and (eventArgs.spellID == 36159 and not data.normalRaidForecastSet)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "a86ae267-686d-5011-bfb9-5651056bd136",
						version = 3,
					},
				},
			},
			displayPath = "Worqor Lar Dor/Valigarmanda/AutoSim",
			eventType = 3,
			name = "Valigarmanda AutoSim baseline",
			uuid = "436f8938-92ec-182e-b1c4-3731b5417115",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "The Interphos",
			uuid = "2956e46c-2d99-5638-ac36-69357f5632ca",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Interphos",
			name = "Queen Eternal",
			uuid = "3d40aad1-0e86-5cd2-b055-dc6f26690eac",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Interphos/Queen Eternal",
			name = "Draws",
			uuid = "1be2e56b-7762-53ab-b128-ffe29e9587c0",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal e = eventArgs\nlocal shapes = {[36632]=\"rect\"}\nlocal ms = math.floor(e.startTime + e.duration * 1000 - Now())\nif ms > 0 then\n    local drawer = TensorCore.getStaticDrawer(0x803333FF, 2)\n    if shapes[e.aoeID] == \"circle\" then\n        drawer:addTimedCircle(ms, e.x, e.y, e.z, e.aoeLength, 0, false, true)\n    else\n        drawer:addTimedRect(ms, e.x, e.y, e.z, e.aoeLength, e.aoeWidth, e.heading, 0, false, true)\n    end\n    AnyoneCore.addWorldTextCountdown(ms, {x=e.x,y=e.y+1,z=e.z}, 0xFFFFFFFF, true, 1.1)\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"de0c5ca1-8195-1c22-8510-de34ce9c2507",
								true,
							},
						},
						name = "Queen Eternal hazard draws",
						uuid = "be5d627f-5e55-479f-942c-7a065d3a262a",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1202 and (eventArgs.aoeID == 36632)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "de0c5ca1-8195-1c22-8510-de34ce9c2507",
						version = 3,
					},
				},
			},
			displayPath = "The Interphos/Queen Eternal/Draws",
			eventType = 18,
			name = "Queen Eternal hazard draws",
			uuid = "ddb07888-a7d3-8508-a737-d6818929fa9c",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Interphos/Queen Eternal",
			name = "AutoSim",
			uuid = "e3af8fd7-a769-9519-a9a9-6de767553893",
		},
		objectType = "folder",
	},
	
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
								"70fda531-3a5e-557f-9288-8091f88e476d",
								true,
							},
						},
						name = "Queen Eternal helper setup",
						uuid = "0902db93-0e55-ceda-b9c0-e8a883461ea3",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1202 and (true)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "70fda531-3a5e-557f-9288-8091f88e476d",
						version = 3,
					},
				},
			},
			displayPath = "The Interphos/Queen Eternal/AutoSim",
			eventType = 11,
			name = "Queen Eternal helper setup",
			uuid = "7e7f66ac-8c84-ba37-b64f-0eadc9ec1fd8",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 1202 then self.used = true; return end\ndata.trialsInitialTargets = data.trialsInitialTargets or {}\nlocal states = data.trialsInitialTargets\nlocal state = states[\"1202_13029\"] or {}\nstates[\"1202_13029\"] = state\nlocal current = TensorCore.mGetTarget()\nlocal label = \"[Trials targeting] Queen Eternal\"\nif state.pending then\n    if current and current.id == state.pending then\n        d(label .. \" confirmed target=\" .. tostring(current.id))\n        state.pending = nil\n    elseif Now() - state.requestedAt >= 1500 then\n        d(label .. \" request not confirmed; intended=\" .. tostring(state.pending) ..\n            \" current=\" .. tostring(current and current.id))\n        state.pending = nil\n    end\n    self.used = true\n    return\nend\nif player.incombat or state.done then self.used = true; return end\nlocal boss, nearest = nil, 35 * 35\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=13029}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx = candidate.pos.x - player.pos.x\n        local dy = candidate.pos.y - player.pos.y\n        local dz = candidate.pos.z - player.pos.z\n        local distance = dx*dx + dy*dy + dz*dz\n        if distance <= nearest then\n            boss, nearest = candidate, distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label .. \" waiting for an attackable boss within 35 yalms; current=\" ..\n            tostring(current and current.id))\n        state.waitLogged = true\n    end\n    self.used = true\n    return\nend\nstate.done = true\nif current and current.alive and current.targetable and current.attackable then\n    d(label .. \" kept existing target; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current.id))\nelse\n    state.pending = boss.id\n    state.requestedAt = Now()\n    d(label .. \" target request; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"ece071af-40eb-f124-9b26-9634f00953c0",
								true,
							},
						},
						name = "Select nearby boss once",
						uuid = "4e2a01b4-8227-2f26-83c6-b1f38216d508",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 1202 then return false end\nlocal states = data.trialsInitialTargets\nlocal state = states and states[\"1202_13029\"]\nreturn (state ~= nil and state.pending ~= nil) or (not player.incombat and (not state or not state.done))",
						dequeueIfLuaFalse = true,
						name = "Duty and initial target",
						uuid = "ece071af-40eb-f124-9b26-9634f00953c0",
						version = 3,
					},
				},
			},
			displayPath = "The Interphos/Queen Eternal/AutoSim",
			name = "Queen Eternal select boss at encounter start",
			throttleTime = 500,
			uuid = "251c63c1-fc37-4e09-ac90-f24811b2cf8a",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal api = TensorCore.API.TensorACR\nlocal ok, elapsed = pcall(api.getAutoSimTime)\nif ok and type(elapsed) == \"number\" and elapsed >= 0 and elapsed <= 60 and not data.normalRaidForecastSet then\n    api.setAutoSimKillTime(643)\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0, 55)\n    api.clearAutoSimPhases(\"FullDowntime\")\n    local downtime = {{479,561}}\n    for _, window in ipairs(downtime) do\n        api.addAutoSimPhase(\"FullDowntime\", window[1], window[2], 1)\n    end\n    data.normalRaidForecastSet = true\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"530306ea-4708-4275-9ef9-92a8baa1becb",
								true,
							},
						},
						name = "Queen Eternal AutoSim baseline",
						uuid = "c7e5b9c8-fef7-d732-abc3-3a6bcab9f9e9",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1202 and (eventArgs.spellID == 36604 and not data.normalRaidForecastSet)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "530306ea-4708-4275-9ef9-92a8baa1becb",
						version = 3,
					},
				},
			},
			displayPath = "The Interphos/Queen Eternal/AutoSim",
			eventType = 3,
			name = "Queen Eternal AutoSim baseline",
			uuid = "7f118283-50bc-9cab-9bc1-eb4acec32098",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Everkeep",
			uuid = "1dbe9b6b-ac95-48bb-a9ba-a6830bad0ef6",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Everkeep",
			name = "Zoraal Ja",
			uuid = "d5753e2e-ff7c-ae9b-995b-f7c9be4d0add",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Everkeep/Zoraal Ja",
			name = "Draws",
			uuid = "fb86c800-b55a-d6c4-9887-67e68ef834d3",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal e = eventArgs\nlocal shapes = {[38184]=\"rect\",[37712]=\"rect\"}\nlocal ms = math.floor(e.startTime + e.duration * 1000 - Now())\nif ms > 0 then\n    local drawer = TensorCore.getStaticDrawer(0x803333FF, 2)\n    if shapes[e.aoeID] == \"circle\" then\n        drawer:addTimedCircle(ms, e.x, e.y, e.z, e.aoeLength, 0, false, true)\n    else\n        drawer:addTimedRect(ms, e.x, e.y, e.z, e.aoeLength, e.aoeWidth, e.heading, 0, false, true)\n    end\n    AnyoneCore.addWorldTextCountdown(ms, {x=e.x,y=e.y+1,z=e.z}, 0xFFFFFFFF, true, 1.1)\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"a6b3887d-224d-ae56-bfb2-c9b73c5c2c66",
								true,
							},
						},
						name = "Zoraal Ja hazard draws",
						uuid = "ea35f8b0-4202-e8d7-82ad-95f9ddd58663",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1200 and (eventArgs.aoeID == 38184 or eventArgs.aoeID == 37712)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "a6b3887d-224d-ae56-bfb2-c9b73c5c2c66",
						version = 3,
					},
				},
			},
			displayPath = "Everkeep/Zoraal Ja/Draws",
			eventType = 18,
			name = "Zoraal Ja hazard draws",
			uuid = "284d683e-3afd-3897-9fdc-5cbe16f93ecf",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Everkeep/Zoraal Ja",
			name = "AutoSim",
			uuid = "fbe616e6-f973-96a0-92cc-8eadadf4350b",
		},
		objectType = "folder",
	},
	
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
								"5d325bb3-3f7c-3f2b-a926-b1631e97439d",
								true,
							},
						},
						name = "Zoraal Ja helper setup",
						uuid = "feca72fd-4cc7-2b1f-919d-cb69703bda1f",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1200 and (true)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "5d325bb3-3f7c-3f2b-a926-b1631e97439d",
						version = 3,
					},
				},
			},
			displayPath = "Everkeep/Zoraal Ja/AutoSim",
			eventType = 11,
			name = "Zoraal Ja helper setup",
			uuid = "fb1b1dc2-ec04-b0a0-9b93-1df6f324d867",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 1200 then self.used = true; return end\ndata.trialsInitialTargets = data.trialsInitialTargets or {}\nlocal states = data.trialsInitialTargets\nlocal state = states[\"1200_12881\"] or {}\nstates[\"1200_12881\"] = state\nlocal current = TensorCore.mGetTarget()\nlocal label = \"[Trials targeting] Zoraal Ja\"\nif state.pending then\n    if current and current.id == state.pending then\n        d(label .. \" confirmed target=\" .. tostring(current.id))\n        state.pending = nil\n    elseif Now() - state.requestedAt >= 1500 then\n        d(label .. \" request not confirmed; intended=\" .. tostring(state.pending) ..\n            \" current=\" .. tostring(current and current.id))\n        state.pending = nil\n    end\n    self.used = true\n    return\nend\nif player.incombat or state.done then self.used = true; return end\nlocal boss, nearest = nil, 35 * 35\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=12881}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx = candidate.pos.x - player.pos.x\n        local dy = candidate.pos.y - player.pos.y\n        local dz = candidate.pos.z - player.pos.z\n        local distance = dx*dx + dy*dy + dz*dz\n        if distance <= nearest then\n            boss, nearest = candidate, distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label .. \" waiting for an attackable boss within 35 yalms; current=\" ..\n            tostring(current and current.id))\n        state.waitLogged = true\n    end\n    self.used = true\n    return\nend\nstate.done = true\nif current and current.alive and current.targetable and current.attackable then\n    d(label .. \" kept existing target; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current.id))\nelse\n    state.pending = boss.id\n    state.requestedAt = Now()\n    d(label .. \" target request; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"57a38242-9e85-d645-b69b-5870920645f3",
								true,
							},
						},
						name = "Select nearby boss once",
						uuid = "dd68b18c-d0ba-fc4d-915a-b9c77c4256c1",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 1200 then return false end\nlocal states = data.trialsInitialTargets\nlocal state = states and states[\"1200_12881\"]\nreturn (state ~= nil and state.pending ~= nil) or (not player.incombat and (not state or not state.done))",
						dequeueIfLuaFalse = true,
						name = "Duty and initial target",
						uuid = "57a38242-9e85-d645-b69b-5870920645f3",
						version = 3,
					},
				},
			},
			displayPath = "Everkeep/Zoraal Ja/AutoSim",
			name = "Zoraal Ja select boss at encounter start",
			throttleTime = 500,
			uuid = "e64ce88f-7e7a-1013-9724-bcc690cabd16",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal api = TensorCore.API.TensorACR\nlocal ok, elapsed = pcall(api.getAutoSimTime)\nif ok and type(elapsed) == \"number\" and elapsed >= 0 and elapsed <= 60 and not data.normalRaidForecastSet then\n    api.setAutoSimKillTime(556)\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0, 20)\n    api.clearAutoSimPhases(\"FullDowntime\")\n    local downtime = {{151,233}}\n    for _, window in ipairs(downtime) do\n        api.addAutoSimPhase(\"FullDowntime\", window[1], window[2], 1)\n    end\n    data.normalRaidForecastSet = true\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"ec456fc9-72e2-38ea-ad30-fba887712021",
								true,
							},
						},
						name = "Zoraal Ja AutoSim baseline",
						uuid = "2c644ad7-49de-4633-ae3d-7240a84969cd",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1200 and (eventArgs.spellID == 37707 and not data.normalRaidForecastSet)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "ec456fc9-72e2-38ea-ad30-fba887712021",
						version = 3,
					},
				},
			},
			displayPath = "Everkeep/Zoraal Ja/AutoSim",
			eventType = 3,
			name = "Zoraal Ja AutoSim baseline",
			uuid = "1d81bcf3-5cf0-da52-bc82-6b69ec2d0626",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Recollection",
			uuid = "1398b5e6-fde5-7f77-bec9-949aa8dedb76",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Recollection",
			name = "Zelenia",
			uuid = "153866b7-5b58-9078-8eb6-ee215ca1b854",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Recollection/Zelenia",
			name = "Draws",
			uuid = "e6a6f087-9a72-30fc-9baa-9dc680e11bec",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal e = eventArgs\nlocal shapes = {[43112]=\"rect\",[43074]=\"rect\"}\nlocal ms = math.floor(e.startTime + e.duration * 1000 - Now())\nif ms > 0 then\n    local drawer = TensorCore.getStaticDrawer(0x803333FF, 2)\n    if shapes[e.aoeID] == \"circle\" then\n        drawer:addTimedCircle(ms, e.x, e.y, e.z, e.aoeLength, 0, false, true)\n    else\n        drawer:addTimedRect(ms, e.x, e.y, e.z, e.aoeLength, e.aoeWidth, e.heading, 0, false, true)\n    end\n    AnyoneCore.addWorldTextCountdown(ms, {x=e.x,y=e.y+1,z=e.z}, 0xFFFFFFFF, true, 1.1)\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"78bcba3d-1b5e-d042-907b-486b802d7282",
								true,
							},
						},
						name = "Zelenia hazard draws",
						uuid = "88912cac-b52e-c3cc-8ac2-c00c9ad41a61",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1270 and (eventArgs.aoeID == 43112 or eventArgs.aoeID == 43074)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "78bcba3d-1b5e-d042-907b-486b802d7282",
						version = 3,
					},
				},
			},
			displayPath = "Recollection/Zelenia/Draws",
			eventType = 18,
			name = "Zelenia hazard draws",
			uuid = "de809ee2-4f2b-b86f-8eab-b40954e9851a",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local function run()\nlocal e=eventArgs\nlocal id=e.aoeID\nlocal cone=id==43126 and 120 or id==43129 and 45 or id==43083 and 60\nlocal radius=(id==43092 or id==43102 or id==43439) and 4\nlocal thunder=id==43084 or id==43085 or id==43446 or id==43447\nif not cone and not radius and not thunder and id~=43113 and id~=43479 then return end\nif e.friendly or e.duration<=0 then return end\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=1270 then return end\nlocal ms=e.startTime+e.duration*1000-Now()\nif ms<=0 then return end\nif thunder then\n data.recollectionThunder=data.recollectionThunder or {}\n data.recollectionThunder[e.entityID]={x=e.x,y=e.y,z=e.z,at=Now()+ms,donut=id==43085 or id==43447}\n return\nend\nlocal red=TensorCore.getStaticDrawer(0x803333FF,2)\nif cone then\n red:addTimedCone(ms,e.x,e.y,e.z,id==43129 and 50 or 24,math.rad(cone),e.heading,0,false,true)\nelseif radius then\n if id==43102 or id==43439 then\n  data.recollectionStrikes=data.recollectionStrikes or {}\n  data.recollectionStrikes[e.entityID]={x=e.x-100,z=e.z-100,finish=Now()+ms}\n end\n red:addTimedCircle(ms,e.x,e.y,e.z,radius,0,false,true)\nelseif id==43113 then\n red:addTimedRect(ms,e.x,e.y,e.z,24,64,e.heading,0,false,true)\nelse\n local green=TensorCore.getStaticDrawer(0x6033FF33,2)\n green:addTimedCircle(ms,e.x,e.y,e.z,6,0,false,true)\nend\nend\nrun()\nself.used=true",
						conditions = 
						{
							
							{
								"514830f5-4a56-480b-8652-d67c3765c316",
								true,
							},
						},
						name = "Zelenia - cast telegraphs and Bloom knockback setup",
						uuid = "4c543cdc-d96e-4cb1-9be5-0ba98194741a",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=1270 then return false end\nreturn true",
						dequeueIfLuaFalse = true,
						name = "Zelenia duty",
						uuid = "514830f5-4a56-480b-8652-d67c3765c316",
						version = 3,
					},
				},
			},
			displayPath = "Recollection/Zelenia/Draws",
			eventType = 18,
			execute = "local e=eventArgs\nlocal id=e.aoeID\nlocal cone=id==43126 and 120 or id==43129 and 45 or id==43083 and 60\nlocal radius=(id==43092 or id==43102 or id==43439) and 4\nlocal thunder=id==43084 or id==43085 or id==43446 or id==43447\nif not cone and not radius and not thunder and id~=43113 and id~=43479 then return end\nif e.friendly or e.duration<=0 then return end\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=1270 then return end\nlocal ms=e.startTime+e.duration*1000-Now()\nif ms<=0 then return end\nif thunder then\n data.recollectionThunder=data.recollectionThunder or {}\n data.recollectionThunder[e.entityID]={x=e.x,y=e.y,z=e.z,at=Now()+ms,donut=id==43085 or id==43447}\n return\nend\nlocal red=TensorCore.getStaticDrawer(0x803333FF,2)\nif cone then\n red:addTimedCone(ms,e.x,e.y,e.z,id==43129 and 50 or 24,math.rad(cone),e.heading,0,false,true)\nelseif radius then\n if id==43102 or id==43439 then\n  data.recollectionStrikes=data.recollectionStrikes or {}\n  data.recollectionStrikes[e.entityID]={x=e.x-100,z=e.z-100,finish=Now()+ms}\n end\n red:addTimedCircle(ms,e.x,e.y,e.z,radius,0,false,true)\nelseif id==43113 then\n red:addTimedRect(ms,e.x,e.y,e.z,24,64,e.heading,0,false,true)\nelse\n local green=TensorCore.getStaticDrawer(0x6033FF33,2)\n green:addTimedCircle(ms,e.x,e.y,e.z,6,0,false,true)\nend",
			name = "Zelenia - cast telegraphs and Bloom knockback setup",
			uuid = "fac68a58-3cfd-67aa-b882-4723fd5f3563",
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
			displayPath = "Recollection/Zelenia/Draws",
			eventType = 12,
			execute = "local q=data.recollectionThunder\nif not q then return end\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=1270 then return end\nif not p.incombat or not p.alive then data.recollectionThunder=nil;return end\nlocal now=Now()\nlocal earliest=math.huge\nfor id,a in pairs(q) do\n if now>=a.at then q[id]=nil else earliest=math.min(earliest,a.at) end\nend\nif earliest==math.huge then data.recollectionThunder=nil;return end\nlocal red=TensorCore.getStaticDrawer(0x803333FF,2)\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_UI\nfor _,a in pairs(q) do\n if a.at<=earliest+1000 then\n  if a.donut then red:addDonut(a.x,a.y,a.z,8,24,false,flags)\n  else red:addCircle(a.x,a.y,a.z,8,false,flags) end\n end\nend",
			executeType = 2,
			name = "Alexandrian Thunder IV - show the active wave",
			uuid = "c2e5ab2e-ab6f-2d70-9e30-6b282a7badc6",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local function run()\nlocal id=eventArgs.markerID\nif id~=581 and id~=590 then return end\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=1270 then return end\nif id==581 and eventArgs.entityID~=p.id then return end\nif id==590 then\n data.recollectionStack={id=eventArgs.entityID,finish=Now()+14000}\n return\nend\nlocal red=TensorCore.getStaticDrawer(0x803333FF,2)\nred:addTimedCircleOnEnt(8000,eventArgs.entityID,4,0,false,true)\nend\nrun()\nself.used=true",
						conditions = 
						{
							
							{
								"4642c59f-97c3-47bc-8969-75e97aedbcf3",
								true,
							},
						},
						name = "Shock spreads and Stock Break stack",
						uuid = "f80c158e-f927-4563-b648-4468c33f5dab",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=1270 then return false end\nreturn eventArgs.markerID==581 or eventArgs.markerID==590",
						dequeueIfLuaFalse = true,
						name = "Zelenia marker",
						uuid = "4642c59f-97c3-47bc-8969-75e97aedbcf3",
						version = 3,
					},
				},
			},
			displayPath = "Recollection/Zelenia/Draws",
			eventType = 4,
			execute = "local id=eventArgs.markerID\nif id~=581 and id~=590 then return end\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=1270 then return end\nif id==581 and eventArgs.entityID~=p.id then return end\nif id==590 then\n data.recollectionStack={id=eventArgs.entityID,finish=Now()+14000}\n return\nend\nlocal red=TensorCore.getStaticDrawer(0x803333FF,2)\nred:addTimedCircleOnEnt(8000,eventArgs.entityID,4,0,false,true)",
			name = "Shock spreads and Stock Break stack",
			uuid = "ed974d73-15ca-dc50-b75f-88a2b912fe81",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local function run()\nlocal e=eventArgs\nlocal tile=e.a1-4\nif tile<0 or tile>5 then return end\nlocal lit=(e.a2==256 and e.a3==64) or (e.a2==64 and e.a3==128)\nlocal clear=e.a2==32 and e.a3==4\nif not lit and not clear then return end\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=1270 then return end\ndata.recollectionTiles=data.recollectionTiles or {}\ndata.recollectionTiles[tile]=lit or nil\nend\nrun()\nself.used=true",
						conditions = 
						{
							
							{
								"42502bd4-0eb7-49f7-9074-0a162c34417f",
								true,
							},
						},
						name = "Rose tiles - track confirmed map effects",
						uuid = "4934f4d2-3699-479a-a3ad-f5ba4028d25f",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=1270 then return false end\nreturn true",
						dequeueIfLuaFalse = true,
						name = "Zelenia duty",
						uuid = "42502bd4-0eb7-49f7-9074-0a162c34417f",
						version = 3,
					},
				},
			},
			displayPath = "Recollection/Zelenia/Draws",
			eventType = 14,
			execute = "local e=eventArgs\nlocal tile=e.a1-4\nif tile<0 or tile>5 then return end\nlocal lit=(e.a2==256 and e.a3==64) or (e.a2==64 and e.a3==128)\nlocal clear=e.a2==32 and e.a3==4\nif not lit and not clear then return end\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=1270 then return end\ndata.recollectionTiles=data.recollectionTiles or {}\ndata.recollectionTiles[tile]=lit or nil",
			name = "Rose tiles - track confirmed map effects",
			uuid = "86d0df68-3659-aece-9975-fb192315dd5b",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local function run()\nif eventArgs.newTetherID~=197 then return end\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=1270 then return end\nlocal drop=TensorCore.mGetEntity(eventArgs.newTargetID)\nif not drop or not drop.pos or not drop.pos.h then return end\nlocal q=drop.pos\nlocal dx=q.x+29*math.sin(q.h)-100\nlocal dz=q.z+29*math.cos(q.h)-100\nif dx*dx+dz*dz<1 then return end\nlocal direction=math.atan2(dx,dz)\nlocal tile=math.floor((180-math.deg(direction))/60+.5)%6\ndata.recollectionTiles=data.recollectionTiles or {}\ndata.recollectionTiles[tile]=true\nend\nrun()\nself.used=true",
						conditions = 
						{
							
							{
								"1b865f9b-4c50-4e5a-b736-b0af27eb94de",
								true,
							},
						},
						name = "Roseblood Drop - track connected tile",
						uuid = "1d044e7d-0e51-47c4-aada-28fba65db838",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=1270 then return false end\nreturn eventArgs.newTetherID==197",
						dequeueIfLuaFalse = true,
						name = "Roseblood tether",
						uuid = "1b865f9b-4c50-4e5a-b736-b0af27eb94de",
						version = 3,
					},
				},
			},
			displayPath = "Recollection/Zelenia/Draws",
			eventType = 15,
			execute = "if eventArgs.newTetherID~=197 then return end\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=1270 then return end\nlocal drop=TensorCore.mGetEntity(eventArgs.newTargetID)\nif not drop or not drop.pos or not drop.pos.h then return end\nlocal q=drop.pos\nlocal dx=q.x+29*math.sin(q.h)-100\nlocal dz=q.z+29*math.cos(q.h)-100\nif dx*dx+dz*dz<1 then return end\nlocal direction=math.atan2(dx,dz)\nlocal tile=math.floor((180-math.deg(direction))/60+.5)%6\ndata.recollectionTiles=data.recollectionTiles or {}\ndata.recollectionTiles[tile]=true",
			name = "Roseblood Drop - track connected tile",
			uuid = "457f51b9-d61a-c490-a3ef-2c415994cf93",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local function run()\nlocal e=eventArgs\nlocal id=e.spellID\nif id~=43057 and id~=43063 and id~=43090 and id~=43102 and id~=43439 then return end\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=1270 then return end\nif id==43090 then data.recollectionStack=nil;return end\nif id==43102 or id==43439 then\n if data.recollectionStrikes then data.recollectionStrikes[e.entityID]=nil end\n return\nend\nlocal actor=TensorCore.mGetEntity(e.entityID)\nif not actor or not actor.pos then return end\nlocal q=actor.pos\nlocal puddles=data.recollectionShock\nif id==43057 then\n if not puddles then puddles={};data.recollectionShock=puddles end\n puddles[e.entityID]={x=q.x,y=q.y,z=q.z,cycles=0,expires=Now()+22000}\nelseif puddles then\n local key=puddles[e.entityID] and e.entityID\n if not key then\n  local best=1\n  for k,a in pairs(puddles) do\n   local d=(q.x-a.x)^2+(q.z-a.z)^2\n   if d<best then key,best=k,d end\n  end\n end\n if key then\n  local a=puddles[key]\n  a.cycles=a.cycles+1\n  if a.cycles>=2 then puddles[key]=nil end\n end\nend\nend\nrun()\nself.used=true",
						conditions = 
						{
							
							{
								"68556221-2a24-4169-af67-84e56b4cf5e9",
								true,
							},
						},
						name = "Shock and Stock Break - track resolution",
						uuid = "59ea920f-0e6e-4e4d-885b-d38fe941f598",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=1270 then return false end\nlocal ids={[43057]=true,[43063]=true,[43090]=true,[43102]=true,[43439]=true}\nreturn ids[eventArgs.spellID]==true",
						dequeueIfLuaFalse = true,
						name = "Shock or Stock cast",
						uuid = "68556221-2a24-4169-af67-84e56b4cf5e9",
						version = 3,
					},
				},
			},
			displayPath = "Recollection/Zelenia/Draws",
			eventType = 2,
			execute = "local e=eventArgs\nlocal id=e.spellID\nif id~=43057 and id~=43063 and id~=43090 and id~=43102 and id~=43439 then return end\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=1270 then return end\nif id==43090 then data.recollectionStack=nil;return end\nif id==43102 or id==43439 then\n if data.recollectionStrikes then data.recollectionStrikes[e.entityID]=nil end\n return\nend\nlocal actor=TensorCore.mGetEntity(e.entityID)\nif not actor or not actor.pos then return end\nlocal q=actor.pos\nlocal puddles=data.recollectionShock\nif id==43057 then\n if not puddles then puddles={};data.recollectionShock=puddles end\n puddles[e.entityID]={x=q.x,y=q.y,z=q.z,cycles=0,expires=Now()+22000}\nelseif puddles then\n local key=puddles[e.entityID] and e.entityID\n if not key then\n  local best=1\n  for k,a in pairs(puddles) do\n   local d=(q.x-a.x)^2+(q.z-a.z)^2\n   if d<best then key,best=k,d end\n  end\n end\n if key then\n  local a=puddles[key]\n  a.cycles=a.cycles+1\n  if a.cycles>=2 then puddles[key]=nil end\n end\nend",
			name = "Shock and Stock Break - track resolution",
			uuid = "c749d704-04ee-c7d4-9789-1a9a574ce780",
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
			displayPath = "Recollection/Zelenia/Draws",
			eventType = 12,
			execute = "local tiles,strikes,puddles,stack=data.recollectionTiles,data.recollectionStrikes,data.recollectionShock,data.recollectionStack\nif not strikes and not puddles and not stack then return end\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=1270 then return end\nif not p.incombat then\n data.recollectionTiles=nil;data.recollectionStrikes=nil;data.recollectionShock=nil;data.recollectionStack=nil\n return\nend\nlocal now=Now()\nlocal flags=Argus2.RenderFlags.FLAG_RENDER_UI\nlocal red=TensorCore.getStaticDrawer(0x803333FF,2)\nif strikes then\n local active={}\n for id,s in pairs(strikes) do\n  if now>s.finish then strikes[id]=nil\n  elseif tiles then\n   local length=math.sqrt(s.x*s.x+s.z*s.z)\n   if length<=20 then\n    local h=math.atan2(s.x,s.z)\n    local reach=math.rad(30)+math.asin(math.min(1,4/math.max(length,4)))\n    for tile=0,5 do\n     local bearing=math.rad(180-60*tile)\n     if tiles[tile] and math.cos(bearing-h)>=math.cos(reach) then\n      active[tile]=true\n      for _,step in ipairs({-1,1}) do\n       for offset=1,5 do\n        local nextTile=(tile+step*offset)%6\n        if not tiles[nextTile] then break end\n        active[nextTile]=true\n       end\n      end\n     end\n    end\n   end\n  end\n end\n for tile in pairs(active) do red:addCone(100,0,100,16,math.rad(60),math.rad(180-60*tile),false,flags) end\n if not next(strikes) then data.recollectionStrikes=nil end\nend\nif puddles then\n for id,a in pairs(puddles) do\n  if now>=a.expires then puddles[id]=nil\n  else red:addCircle(a.x,a.y,a.z,4,false,flags) end\n end\n if not next(puddles) then data.recollectionShock=nil end\nend\nif stack then\n if now>=stack.finish then data.recollectionStack=nil\n else\n  local target=TensorCore.mGetEntity(stack.id)\n  if target and target.pos then\n   local green=TensorCore.getStaticDrawer(0x6033FF33,2)\n   green:addCircle(target.pos.x,target.pos.y,target.pos.z,6,false,flags)\n  end\n end\nend",
			executeType = 2,
			name = "Draw connected rose tiles, Shock puddles and the stack",
			uuid = "fb703f73-ca16-dbd3-b7c7-88e7265b4e44",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Recollection/Zelenia",
			name = "AutoSim",
			uuid = "833c22e6-f76d-faba-8894-fcb273dfb0a7",
		},
		objectType = "folder",
	},
	
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
								"ac4a2fe4-7b79-48d5-ab69-c3d84aaf1347",
								true,
							},
						},
						name = "Zelenia helper setup",
						uuid = "4b5b046b-527a-450a-a8ca-6f600759f002",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1270 and (true)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "ac4a2fe4-7b79-48d5-ab69-c3d84aaf1347",
						version = 3,
					},
				},
			},
			displayPath = "Recollection/Zelenia/AutoSim",
			eventType = 11,
			name = "Zelenia helper setup",
			uuid = "2e492e7f-cbf4-ea9a-a872-af752ebf7ed5",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 1270 then self.used = true; return end\ndata.trialsInitialTargets = data.trialsInitialTargets or {}\nlocal states = data.trialsInitialTargets\nlocal state = states[\"1270_13861\"] or {}\nstates[\"1270_13861\"] = state\nlocal current = TensorCore.mGetTarget()\nlocal label = \"[Trials targeting] Zelenia\"\nif state.pending then\n    if current and current.id == state.pending then\n        d(label .. \" confirmed target=\" .. tostring(current.id))\n        state.pending = nil\n    elseif Now() - state.requestedAt >= 1500 then\n        d(label .. \" request not confirmed; intended=\" .. tostring(state.pending) ..\n            \" current=\" .. tostring(current and current.id))\n        state.pending = nil\n    end\n    self.used = true\n    return\nend\nif player.incombat or state.done then self.used = true; return end\nlocal boss, nearest = nil, 35 * 35\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=13861}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx = candidate.pos.x - player.pos.x\n        local dy = candidate.pos.y - player.pos.y\n        local dz = candidate.pos.z - player.pos.z\n        local distance = dx*dx + dy*dy + dz*dz\n        if distance <= nearest then\n            boss, nearest = candidate, distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label .. \" waiting for an attackable boss within 35 yalms; current=\" ..\n            tostring(current and current.id))\n        state.waitLogged = true\n    end\n    self.used = true\n    return\nend\nstate.done = true\nif current and current.alive and current.targetable and current.attackable then\n    d(label .. \" kept existing target; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current.id))\nelse\n    state.pending = boss.id\n    state.requestedAt = Now()\n    d(label .. \" target request; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"4ea4a3e4-a138-5579-9f7e-9105a1e4350c",
								true,
							},
						},
						name = "Select nearby boss once",
						uuid = "db9ee24f-1ce8-8787-8505-cf0ca7dd5285",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 1270 then return false end\nlocal states = data.trialsInitialTargets\nlocal state = states and states[\"1270_13861\"]\nreturn (state ~= nil and state.pending ~= nil) or (not player.incombat and (not state or not state.done))",
						dequeueIfLuaFalse = true,
						name = "Duty and initial target",
						uuid = "4ea4a3e4-a138-5579-9f7e-9105a1e4350c",
						version = 3,
					},
				},
			},
			displayPath = "Recollection/Zelenia/AutoSim",
			name = "Zelenia select boss at encounter start",
			throttleTime = 500,
			uuid = "dcd18b70-f9be-b5ee-b7bb-27e599435421",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal api = TensorCore.API.TensorACR\nlocal ok, elapsed = pcall(api.getAutoSimTime)\nif ok and type(elapsed) == \"number\" and elapsed >= 0 and elapsed <= 60 and not data.normalRaidForecastSet then\n    api.setAutoSimKillTime(351)\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0, 12)\n    api.clearAutoSimPhases(\"FullDowntime\")\n    local downtime = {{123.5,146.6}}\n    for _, window in ipairs(downtime) do\n        api.addAutoSimPhase(\"FullDowntime\", window[1], window[2], 1)\n    end\n    api.addAutoSimPhase(\"Stun\", 123.0, 146.75, 1)\n    data.normalRaidForecastSet = true\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"9094d1d8-b0da-6c0c-b5dd-58086164cb3e",
								true,
							},
						},
						name = "Zelenia AutoSim baseline",
						uuid = "920bd6f8-33b0-a23f-babf-7ff961048870",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1270 and (eventArgs.spellID == 43480 and not data.normalRaidForecastSet)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "9094d1d8-b0da-6c0c-b5dd-58086164cb3e",
						version = 3,
					},
				},
			},
			displayPath = "Recollection/Zelenia/AutoSim",
			eventType = 3,
			name = "Zelenia AutoSim baseline",
			uuid = "2e4dc63e-c24e-bdde-8a92-6ddf20ca8152",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "The Ageless Necropolis",
			uuid = "93b2afa0-f8bd-a8a0-ae6f-3a09dfd6c9e5",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Ageless Necropolis",
			name = "Necron",
			uuid = "19ac24e9-fc77-5bf8-ad4a-eea6032ef037",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Ageless Necropolis/Necron",
			name = "Draws",
			uuid = "f8be39d7-963f-de8f-bf93-6c4958652ca9",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal e = eventArgs\nlocal shapes = {[44523]=\"rect\",[44611]=\"rect\",[44526]=\"rect\",[44817]=\"rect\"}\nlocal ms = math.floor(e.startTime + e.duration * 1000 - Now())\nif ms > 0 then\n    local drawer = TensorCore.getStaticDrawer(0x803333FF, 2)\n    if shapes[e.aoeID] == \"circle\" then\n        drawer:addTimedCircle(ms, e.x, e.y, e.z, e.aoeLength, 0, false, true)\n    else\n        drawer:addTimedRect(ms, e.x, e.y, e.z, e.aoeLength, e.aoeWidth, e.heading, 0, false, true)\n    end\n    AnyoneCore.addWorldTextCountdown(ms, {x=e.x,y=e.y+1,z=e.z}, 0xFFFFFFFF, true, 1.1)\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"4dda3ab7-32b3-f831-97ff-2aed9f3cba8d",
								true,
							},
						},
						name = "Necron hazard draws",
						uuid = "c6eb9e4d-2f61-c7eb-9d63-f60e58acd533",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1295 and (eventArgs.aoeID == 44523 or eventArgs.aoeID == 44611 or eventArgs.aoeID == 44526 or eventArgs.aoeID == 44817)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "4dda3ab7-32b3-f831-97ff-2aed9f3cba8d",
						version = 3,
					},
				},
			},
			displayPath = "The Ageless Necropolis/Necron/Draws",
			eventType = 18,
			name = "Necron hazard draws",
			uuid = "3a7771e5-6f9a-2b6b-aa75-9b9cf8dd653a",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Ageless Necropolis/Necron",
			name = "AutoSim",
			uuid = "6e7e1352-2762-aaf0-b364-c4381ae20f49",
		},
		objectType = "folder",
	},
	
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
								"4a98cb22-4813-fb0a-a584-04441b074ee8",
								true,
							},
						},
						name = "Necron helper setup",
						uuid = "222f6787-5faa-aa69-b29d-8c102cae146a",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1295 and (true)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "4a98cb22-4813-fb0a-a584-04441b074ee8",
						version = 3,
					},
				},
			},
			displayPath = "The Ageless Necropolis/Necron/AutoSim",
			eventType = 11,
			name = "Necron helper setup",
			uuid = "7f738c52-aed3-6e89-a8b7-0801f3c3b2b4",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 1295 then self.used = true; return end\ndata.trialsInitialTargets = data.trialsInitialTargets or {}\nlocal states = data.trialsInitialTargets\nlocal state = states[\"1295_14093\"] or {}\nstates[\"1295_14093\"] = state\nlocal current = TensorCore.mGetTarget()\nlocal label = \"[Trials targeting] Necron\"\nif state.pending then\n    if current and current.id == state.pending then\n        d(label .. \" confirmed target=\" .. tostring(current.id))\n        state.pending = nil\n    elseif Now() - state.requestedAt >= 1500 then\n        d(label .. \" request not confirmed; intended=\" .. tostring(state.pending) ..\n            \" current=\" .. tostring(current and current.id))\n        state.pending = nil\n    end\n    self.used = true\n    return\nend\nif player.incombat or state.done then self.used = true; return end\nlocal boss, nearest = nil, 35 * 35\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=14093}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx = candidate.pos.x - player.pos.x\n        local dy = candidate.pos.y - player.pos.y\n        local dz = candidate.pos.z - player.pos.z\n        local distance = dx*dx + dy*dy + dz*dz\n        if distance <= nearest then\n            boss, nearest = candidate, distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label .. \" waiting for an attackable boss within 35 yalms; current=\" ..\n            tostring(current and current.id))\n        state.waitLogged = true\n    end\n    self.used = true\n    return\nend\nstate.done = true\nif current and current.alive and current.targetable and current.attackable then\n    d(label .. \" kept existing target; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current.id))\nelse\n    state.pending = boss.id\n    state.requestedAt = Now()\n    d(label .. \" target request; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"0511c8db-19c5-dc1c-8d4f-d9a8dceeefc3",
								true,
							},
						},
						name = "Select nearby boss once",
						uuid = "110112db-9f70-6233-95e7-30e1e53d52b0",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 1295 then return false end\nlocal states = data.trialsInitialTargets\nlocal state = states and states[\"1295_14093\"]\nreturn (state ~= nil and state.pending ~= nil) or (not player.incombat and (not state or not state.done))",
						dequeueIfLuaFalse = true,
						name = "Duty and initial target",
						uuid = "0511c8db-19c5-dc1c-8d4f-d9a8dceeefc3",
						version = 3,
					},
				},
			},
			displayPath = "The Ageless Necropolis/Necron/AutoSim",
			name = "Necron select boss at encounter start",
			throttleTime = 500,
			uuid = "b1782358-d0d6-6b1d-8b8c-bf2598a277fe",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal api = TensorCore.API.TensorACR\nlocal ok, elapsed = pcall(api.getAutoSimTime)\nif ok and type(elapsed) == \"number\" and elapsed >= 0 and elapsed <= 60 and not data.normalRaidForecastSet then\n    api.setAutoSimKillTime(375)\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0, 12)\n    -- Add-wave lengths vary, and Icy Hands remain attackable during parts of\n    -- Necron's absence. Leave target availability to the live ACR.\n    local player = TensorCore.mGetPlayer()\n    if player and player.job == 25 then\n        -- Short reposition on the second Memento Mori in two BLM samples.\n        api.addAutoSimPhase(\"CasterDowntime\", 108, 111, 1)\n    end\n    data.normalRaidForecastSet = true\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"e6af52dd-5e66-93af-9a57-5079181bb2b2",
								true,
							},
						},
						name = "Necron AutoSim baseline",
						uuid = "1d9b2e7c-4905-31e0-9542-2652a3a179a6",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1295 and (eventArgs.spellID == 44521 and not data.normalRaidForecastSet)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "e6af52dd-5e66-93af-9a57-5079181bb2b2",
						version = 3,
					},
				},
			},
			displayPath = "The Ageless Necropolis/Necron/AutoSim",
			eventType = 3,
			name = "Necron AutoSim baseline",
			uuid = "19b79fa8-2ee3-2156-a74b-062685371e8e",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player then self.used = true; return end\n\nlocal contentID = 14094\nlocal label = \"[Trials] Icy Hands\"\nlocal api = TensorCore.API.TensorACR\nlocal eligible = player.localmapid == 1295 and (player.job == 23 or player.job == 25)\nlocal state = TrialsNecronIcyHandsDoT\n\n-- Restore the previous entry on leaving Necron or changing jobs.\n-- Keep this state outside pull data so a wipe does not lose the original values.\nif state and (not eligible or state.job ~= player.job) then\n    local entry = state.entry\n    if entry.enabled and entry.allowIfTarget == false and entry.allowSmartDoT == false then\n        if state.created then\n            entry.enabled = false\n            if player.job == state.job and api.getBlacklistEntry(contentID) then\n                local current = api.addBlacklistEntry(contentID)\n                if current == entry and current.name == label then\n                    api.deleteBlacklistEntry(contentID)\n                end\n            end\n        else\n            entry.enabled = state.enabled\n            entry.allowIfTarget = state.allowIfTarget\n            entry.allowSmartDoT = state.allowSmartDoT\n        end\n    end\n    TrialsNecronIcyHandsDoT = nil\n    state = nil\nend\n\nif eligible and not state then\n    local supported, exists = pcall(api.getBlacklistEntry, contentID)\n    if supported then\n        local ok, entry = pcall(api.addBlacklistEntry, contentID, label)\n        if ok and entry then\n            TrialsNecronIcyHandsDoT = {\n                job = player.job, entry = entry, created = not exists,\n                enabled = entry.enabled, allowIfTarget = entry.allowIfTarget,\n                allowSmartDoT = entry.allowSmartDoT,\n            }\n            entry.enabled = true\n            entry.allowIfTarget = false\n            entry.allowSmartDoT = false\n        end\n    end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"5b71e2b4-6923-5c16-8a77-309f4007c613",
								true,
							},
						},
						name = "Block DoTs on Icy Hands",
						uuid = "f10be5cd-dfbc-7cf9-8542-8a25fe6036bf",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player then return false end\nlocal state = TrialsNecronIcyHandsDoT\nlocal eligible = player.localmapid == 1295 and (player.job == 23 or player.job == 25)\nif state then\n    return not eligible or player.job ~= state.job\nend\nreturn eligible",
						dequeueIfLuaFalse = true,
						name = "Necron BRD or BLM / cleanup",
						uuid = "5b71e2b4-6923-5c16-8a77-309f4007c613",
						version = 3,
					},
				},
			},
			displayPath = "The Ageless Necropolis/Necron/AutoSim",
			name = "Icy Hands DoT blacklist (BRD / BLM)",
			throttleTime = 1000,
			uuid = "437d63f6-d67a-e35d-ab2a-b3341cf519d8",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Hell on Rails",
			uuid = "d44ddfae-4ce2-3d15-a917-c6799ac494ba",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Hell on Rails",
			name = "Doomtrain",
			uuid = "610afcf3-5103-a390-bbc2-6ea99b4fe668",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Hell on Rails/Doomtrain",
			name = "Draws",
			uuid = "7261f1cd-5443-b7f6-9ad4-d4065df3f1a7",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal e = eventArgs\nlocal shapes = {[45659]=\"circle\",[45654]=\"rect\"}\nlocal ms = math.floor(e.startTime + e.duration * 1000 - Now())\nif ms > 0 then\n    local drawer = TensorCore.getStaticDrawer(0x803333FF, 2)\n    if shapes[e.aoeID] == \"circle\" then\n        drawer:addTimedCircle(ms, e.x, e.y, e.z, e.aoeLength, 0, false, true)\n    else\n        drawer:addTimedRect(ms, e.x, e.y, e.z, e.aoeLength, e.aoeWidth, e.heading, 0, false, true)\n    end\n    AnyoneCore.addWorldTextCountdown(ms, {x=e.x,y=e.y+1,z=e.z}, 0xFFFFFFFF, true, 1.1)\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"d6b1ea3e-4ee9-51aa-bd4f-d8080cfd30a7",
								true,
							},
						},
						name = "Doomtrain hazard draws",
						uuid = "e7030f92-d937-ba2b-b389-a50dcd6c390e",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1307 and (eventArgs.aoeID == 45659 or eventArgs.aoeID == 45654)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "d6b1ea3e-4ee9-51aa-bd4f-d8080cfd30a7",
						version = 3,
					},
				},
			},
			displayPath = "Hell on Rails/Doomtrain/Draws",
			eventType = 18,
			name = "Doomtrain hazard draws",
			uuid = "916af141-f75e-571d-a0af-a7f1655b7be3",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Hell on Rails/Doomtrain",
			name = "AutoSim",
			uuid = "72f77d65-a3b5-0301-80df-327c556b8fa1",
		},
		objectType = "folder",
	},
	
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
								"49f7c198-afbc-6941-ade4-7b4eed8a8170",
								true,
							},
						},
						name = "Doomtrain helper setup",
						uuid = "c3c68e81-7318-d189-b8cc-2089ca55afee",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1307 and (true)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "49f7c198-afbc-6941-ade4-7b4eed8a8170",
						version = 3,
					},
				},
			},
			displayPath = "Hell on Rails/Doomtrain/AutoSim",
			eventType = 11,
			name = "Doomtrain helper setup",
			uuid = "33fef2b1-7962-0160-af21-63864401ee0a",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 1307 then self.used = true; return end\ndata.trialsInitialTargets = data.trialsInitialTargets or {}\nlocal states = data.trialsInitialTargets\nlocal state = states[\"1307_14284\"] or {}\nstates[\"1307_14284\"] = state\nlocal current = TensorCore.mGetTarget()\nlocal label = \"[Trials targeting] Doomtrain\"\nif state.pending then\n    if current and current.id == state.pending then\n        d(label .. \" confirmed target=\" .. tostring(current.id))\n        state.pending = nil\n    elseif Now() - state.requestedAt >= 1500 then\n        d(label .. \" request not confirmed; intended=\" .. tostring(state.pending) ..\n            \" current=\" .. tostring(current and current.id))\n        state.pending = nil\n    end\n    self.used = true\n    return\nend\nif player.incombat or state.done then self.used = true; return end\nlocal boss, nearest = nil, 35 * 35\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=14284}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx = candidate.pos.x - player.pos.x\n        local dy = candidate.pos.y - player.pos.y\n        local dz = candidate.pos.z - player.pos.z\n        local distance = dx*dx + dy*dy + dz*dz\n        if distance <= nearest then\n            boss, nearest = candidate, distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label .. \" waiting for an attackable boss within 35 yalms; current=\" ..\n            tostring(current and current.id))\n        state.waitLogged = true\n    end\n    self.used = true\n    return\nend\nstate.done = true\nif current and current.alive and current.targetable and current.attackable then\n    d(label .. \" kept existing target; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current.id))\nelse\n    state.pending = boss.id\n    state.requestedAt = Now()\n    d(label .. \" target request; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"a52204c9-b873-b2ad-abc6-74bd8e1a00f6",
								true,
							},
						},
						name = "Select nearby boss once",
						uuid = "7d84836e-f77a-8f8a-93d1-59df68e9d8df",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 1307 then return false end\nlocal states = data.trialsInitialTargets\nlocal state = states and states[\"1307_14284\"]\nreturn (state ~= nil and state.pending ~= nil) or (not player.incombat and (not state or not state.done))",
						dequeueIfLuaFalse = true,
						name = "Duty and initial target",
						uuid = "a52204c9-b873-b2ad-abc6-74bd8e1a00f6",
						version = 3,
					},
				},
			},
			displayPath = "Hell on Rails/Doomtrain/AutoSim",
			name = "Doomtrain select boss at encounter start",
			throttleTime = 500,
			uuid = "4ada8c4c-bb4b-b04e-a759-3c5e7aec40a0",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal api = TensorCore.API.TensorACR\nlocal ok, elapsed = pcall(api.getAutoSimTime)\nif ok and type(elapsed) == \"number\" and elapsed >= 0 and elapsed <= 60 and not data.normalRaidForecastSet then\n    api.setAutoSimKillTime(448)\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0, 18)\n    api.clearAutoSimPhases(\"FullDowntime\")\n    local downtime = {{46.5,52.3},{115.9,121.7},{174.3,180.1},{193,200},{235.8,258.2}}\n    for _, window in ipairs(downtime) do\n        api.addAutoSimPhase(\"FullDowntime\", window[1], window[2], 1)\n    end\n    data.normalRaidForecastSet = true\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"c58001c5-ee24-69fd-b91c-8634aa70fa2b",
								true,
							},
						},
						name = "Doomtrain AutoSim baseline",
						uuid = "7999f785-2a99-886f-ace4-fe148cf90715",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1307 and (eventArgs.spellID == 45660 and not data.normalRaidForecastSet)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "c58001c5-ee24-69fd-b91c-8634aa70fa2b",
						version = 3,
					},
				},
			},
			displayPath = "Hell on Rails/Doomtrain/AutoSim",
			eventType = 3,
			name = "Doomtrain AutoSim baseline",
			uuid = "ed84b109-2dfb-6103-b855-7452874fd7b4",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "The Unmaking",
			uuid = "eca51a5e-bcbd-94ee-a723-1fcade9409b8",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Unmaking",
			name = "Enuo",
			uuid = "fd8bfa26-e665-2edf-9fd4-c515b973180d",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Unmaking/Enuo",
			name = "Draws",
			uuid = "9786bfb8-75ab-ce55-8ebd-07f7b741df01",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal e = eventArgs\nlocal shapes = {[49933]=\"circle\",[49949]=\"circle\",[49958]=\"rect\",[49934]=\"circle\"}\nlocal ms = math.floor(e.startTime + e.duration * 1000 - Now())\nif ms > 0 then\n    local drawer = TensorCore.getStaticDrawer(0x803333FF, 2)\n    if shapes[e.aoeID] == \"circle\" then\n        drawer:addTimedCircle(ms, e.x, e.y, e.z, e.aoeLength, 0, false, true)\n    else\n        drawer:addTimedRect(ms, e.x, e.y, e.z, e.aoeLength, e.aoeWidth, e.heading, 0, false, true)\n    end\n    AnyoneCore.addWorldTextCountdown(ms, {x=e.x,y=e.y+1,z=e.z}, 0xFFFFFFFF, true, 1.1)\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"5d5147ba-b276-82b1-8534-d2315d398b62",
								true,
							},
						},
						name = "Enuo hazard draws",
						uuid = "a2d818d6-1911-78ae-80c5-0895c1bf622c",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1361 and (eventArgs.aoeID == 49933 or eventArgs.aoeID == 49949 or eventArgs.aoeID == 49958 or eventArgs.aoeID == 49934)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "5d5147ba-b276-82b1-8534-d2315d398b62",
						version = 3,
					},
				},
			},
			displayPath = "The Unmaking/Enuo/Draws",
			eventType = 18,
			name = "Enuo hazard draws",
			uuid = "00e6a073-e1d5-e20d-b237-ce225411fe57",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Unmaking/Enuo",
			name = "AutoSim",
			uuid = "3682a206-a0bc-9d4a-96d5-42c4300b24ca",
		},
		objectType = "folder",
	},
	
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
								"eab12d17-0486-3e20-8b3c-1b0ee2892599",
								true,
							},
						},
						name = "Enuo helper setup",
						uuid = "d623ccc5-a728-b5e8-9237-fe6863cb41de",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1361 and (true)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "eab12d17-0486-3e20-8b3c-1b0ee2892599",
						version = 3,
					},
				},
			},
			displayPath = "The Unmaking/Enuo/AutoSim",
			eventType = 11,
			name = "Enuo helper setup",
			uuid = "714e5b50-cb93-fd84-9a01-7b264f7bfb3d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 1361 then self.used = true; return end\ndata.trialsInitialTargets = data.trialsInitialTargets or {}\nlocal states = data.trialsInitialTargets\nlocal state = states[\"1361_14749\"] or {}\nstates[\"1361_14749\"] = state\nlocal current = TensorCore.mGetTarget()\nlocal label = \"[Trials targeting] Enuo\"\nif state.pending then\n    if current and current.id == state.pending then\n        d(label .. \" confirmed target=\" .. tostring(current.id))\n        state.pending = nil\n    elseif Now() - state.requestedAt >= 1500 then\n        d(label .. \" request not confirmed; intended=\" .. tostring(state.pending) ..\n            \" current=\" .. tostring(current and current.id))\n        state.pending = nil\n    end\n    self.used = true\n    return\nend\nif player.incombat or state.done then self.used = true; return end\nlocal boss, nearest = nil, 35 * 35\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=14749}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx = candidate.pos.x - player.pos.x\n        local dy = candidate.pos.y - player.pos.y\n        local dz = candidate.pos.z - player.pos.z\n        local distance = dx*dx + dy*dy + dz*dz\n        if distance <= nearest then\n            boss, nearest = candidate, distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label .. \" waiting for an attackable boss within 35 yalms; current=\" ..\n            tostring(current and current.id))\n        state.waitLogged = true\n    end\n    self.used = true\n    return\nend\nstate.done = true\nif current and current.alive and current.targetable and current.attackable then\n    d(label .. \" kept existing target; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current.id))\nelse\n    state.pending = boss.id\n    state.requestedAt = Now()\n    d(label .. \" target request; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"d1c29ebc-c214-55c1-befa-eb823357d594",
								true,
							},
						},
						name = "Select nearby boss once",
						uuid = "1342c620-5e2b-9b94-a52b-9a2f524874ac",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 1361 then return false end\nlocal states = data.trialsInitialTargets\nlocal state = states and states[\"1361_14749\"]\nreturn (state ~= nil and state.pending ~= nil) or (not player.incombat and (not state or not state.done))",
						dequeueIfLuaFalse = true,
						name = "Duty and initial target",
						uuid = "d1c29ebc-c214-55c1-befa-eb823357d594",
						version = 3,
					},
				},
			},
			displayPath = "The Unmaking/Enuo/AutoSim",
			name = "Enuo select boss at encounter start",
			throttleTime = 500,
			uuid = "d0d068f6-86b9-da27-9d75-57798cf9ba98",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal api = TensorCore.API.TensorACR\nlocal ok, elapsed = pcall(api.getAutoSimTime)\nif ok and type(elapsed) == \"number\" and elapsed >= 0 and elapsed <= 60 and not data.normalRaidForecastSet then\n    api.setAutoSimKillTime(459)\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0, 51)\n    api.clearAutoSimPhases(\"FullDowntime\")\n    local downtime = {{156.9,179.1},{205.9,300.8}}\n    for _, window in ipairs(downtime) do\n        api.addAutoSimPhase(\"FullDowntime\", window[1], window[2], 1)\n    end\n    data.normalRaidForecastSet = true\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"a9ba9c4a-7edd-9105-a409-af212ae13182",
								true,
							},
						},
						name = "Enuo AutoSim baseline",
						uuid = "61d9b1e6-ab56-df73-978e-c7ee7a93b18e",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 1361 and (eventArgs.spellID == 49971 and not data.normalRaidForecastSet)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "a9ba9c4a-7edd-9105-a409-af212ae13182",
						version = 3,
					},
				},
			},
			displayPath = "The Unmaking/Enuo/AutoSim",
			eventType = 3,
			name = "Enuo AutoSim baseline",
			uuid = "988b2a10-ccf5-370c-8e70-2566ab1c6821",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Containment Bay P1T6",
			uuid = "597edba9-8d95-2f88-8633-eb22d5fdb41b",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Containment Bay P1T6",
			name = "Sophia",
			uuid = "027fa5fd-cacd-4c79-96a6-6258dfd053c0",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Containment Bay P1T6/Sophia",
			name = "Draws",
			uuid = "83799656-7039-a0ac-97f8-ff335ccc7762",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal e = eventArgs\nlocal shapes = {[6515]=\"circle\",[6524]=\"circle\"}\nlocal ms = math.floor(e.startTime + e.duration * 1000 - Now())\nif ms > 0 then\n    local drawer = TensorCore.getStaticDrawer(0x803333FF, 2)\n    if shapes[e.aoeID] == \"circle\" then\n        drawer:addTimedCircle(ms, e.x, e.y, e.z, e.aoeLength, 0, false, true)\n    else\n        drawer:addTimedRect(ms, e.x, e.y, e.z, e.aoeLength, e.aoeWidth, e.heading, 0, false, true)\n    end\n    AnyoneCore.addWorldTextCountdown(ms, {x=e.x,y=e.y+1,z=e.z}, 0xFFFFFFFF, true, 1.1)\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"c088c15d-e131-0562-84ce-2a3cc44fbce4",
								true,
							},
						},
						name = "Sophia hazard draws",
						uuid = "b8379734-8c03-07c1-b2c8-5318a44ef658",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 576 and (eventArgs.aoeID == 6515 or eventArgs.aoeID == 6524)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "c088c15d-e131-0562-84ce-2a3cc44fbce4",
						version = 3,
					},
				},
			},
			displayPath = "Containment Bay P1T6/Sophia/Draws",
			eventType = 18,
			name = "Sophia hazard draws",
			uuid = "65799dba-f769-7687-bb15-4527afd258f4",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Containment Bay P1T6/Sophia",
			name = "AutoSim",
			uuid = "65c82737-955d-e963-936d-da10866ed3de",
		},
		objectType = "folder",
	},
	
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
								"6b9aec6f-117b-0152-9764-953ed3d8f2ea",
								true,
							},
						},
						name = "Sophia helper setup",
						uuid = "62490227-b9c9-d01a-8d54-651049019aae",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 576 and (true)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "6b9aec6f-117b-0152-9764-953ed3d8f2ea",
						version = 3,
					},
				},
			},
			displayPath = "Containment Bay P1T6/Sophia/AutoSim",
			eventType = 11,
			name = "Sophia helper setup",
			uuid = "412c4f5b-f6c1-acc7-a4a8-4b10d37d8d03",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 576 then self.used = true; return end\ndata.trialsInitialTargets = data.trialsInitialTargets or {}\nlocal states = data.trialsInitialTargets\nlocal state = states[\"576_5199\"] or {}\nstates[\"576_5199\"] = state\nlocal current = TensorCore.mGetTarget()\nlocal label = \"[Trials targeting] Sophia\"\nif state.pending then\n    if current and current.id == state.pending then\n        d(label .. \" confirmed target=\" .. tostring(current.id))\n        state.pending = nil\n    elseif Now() - state.requestedAt >= 1500 then\n        d(label .. \" request not confirmed; intended=\" .. tostring(state.pending) ..\n            \" current=\" .. tostring(current and current.id))\n        state.pending = nil\n    end\n    self.used = true\n    return\nend\nif player.incombat or state.done then self.used = true; return end\nlocal boss, nearest = nil, 35 * 35\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=5199}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx = candidate.pos.x - player.pos.x\n        local dy = candidate.pos.y - player.pos.y\n        local dz = candidate.pos.z - player.pos.z\n        local distance = dx*dx + dy*dy + dz*dz\n        if distance <= nearest then\n            boss, nearest = candidate, distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label .. \" waiting for an attackable boss within 35 yalms; current=\" ..\n            tostring(current and current.id))\n        state.waitLogged = true\n    end\n    self.used = true\n    return\nend\nstate.done = true\nif current and current.alive and current.targetable and current.attackable then\n    d(label .. \" kept existing target; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current.id))\nelse\n    state.pending = boss.id\n    state.requestedAt = Now()\n    d(label .. \" target request; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"93e0f240-8680-b958-8386-c331776f621a",
								true,
							},
						},
						name = "Select nearby boss once",
						uuid = "a8496887-b6be-a593-8d23-de120ee9f60a",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 576 then return false end\nlocal states = data.trialsInitialTargets\nlocal state = states and states[\"576_5199\"]\nreturn (state ~= nil and state.pending ~= nil) or (not player.incombat and (not state or not state.done))",
						dequeueIfLuaFalse = true,
						name = "Duty and initial target",
						uuid = "93e0f240-8680-b958-8386-c331776f621a",
						version = 3,
					},
				},
			},
			displayPath = "Containment Bay P1T6/Sophia/AutoSim",
			name = "Sophia select boss at encounter start",
			throttleTime = 500,
			uuid = "8850f091-6711-fa44-aa6a-8ebdd0e2664f",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal api = TensorCore.API.TensorACR\nlocal ok, elapsed = pcall(api.getAutoSimTime)\nif ok and type(elapsed) == \"number\" and elapsed >= 0 and elapsed <= 60 and not data.normalRaidForecastSet then\n    api.setAutoSimKillTime(246)\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0, 20)\n    api.clearAutoSimPhases(\"FullDowntime\")\n    local downtime = {{45.6,56.1},{97.9,123.3},{218,228.5}}\n    for _, window in ipairs(downtime) do\n        api.addAutoSimPhase(\"FullDowntime\", window[1], window[2], 1)\n    end\n    data.normalRaidForecastSet = true\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"823eacfb-441c-2b69-aaa1-3cf9238df26c",
								true,
							},
						},
						name = "Sophia AutoSim baseline",
						uuid = "8f68fa05-4e2a-40d9-ba49-5217b54e38d9",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 576 and (eventArgs.spellID == 6515 and not data.normalRaidForecastSet)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "823eacfb-441c-2b69-aaa1-3cf9238df26c",
						version = 3,
					},
				},
			},
			displayPath = "Containment Bay P1T6/Sophia/AutoSim",
			eventType = 3,
			name = "Sophia AutoSim baseline",
			uuid = "d164dd63-19c3-51f4-a5cd-397862662ba9",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "The Royal Menagerie",
			uuid = "317e746a-09fc-4124-9f83-648faf880f48",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Royal Menagerie",
			name = "Shinryu",
			uuid = "b765b218-1224-e2e2-addb-d7a852d57a81",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Royal Menagerie/Shinryu",
			name = "Draws",
			uuid = "de67f3da-adfc-e4c9-8a84-f6cb67bdbd60",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal e = eventArgs\nlocal shapes = {[8732]=\"circle\"}\nlocal ms = math.floor(e.startTime + e.duration * 1000 - Now())\nif ms > 0 then\n    local drawer = TensorCore.getStaticDrawer(0x803333FF, 2)\n    if shapes[e.aoeID] == \"circle\" then\n        drawer:addTimedCircle(ms, e.x, e.y, e.z, e.aoeLength, 0, false, true)\n    else\n        drawer:addTimedRect(ms, e.x, e.y, e.z, e.aoeLength, e.aoeWidth, e.heading, 0, false, true)\n    end\n    AnyoneCore.addWorldTextCountdown(ms, {x=e.x,y=e.y+1,z=e.z}, 0xFFFFFFFF, true, 1.1)\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"40fb1358-7094-1905-8f82-bbd7757f365f",
								true,
							},
						},
						name = "Shinryu hazard draws",
						uuid = "61f46c32-59cc-0a15-9bb2-d205f8368bad",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 679 and (eventArgs.aoeID == 8732)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "40fb1358-7094-1905-8f82-bbd7757f365f",
						version = 3,
					},
				},
			},
			displayPath = "The Royal Menagerie/Shinryu/Draws",
			eventType = 18,
			name = "Shinryu hazard draws",
			uuid = "e65f26b0-6baf-bbb3-95e8-b830eec08fe6",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Royal Menagerie/Shinryu",
			name = "AutoSim",
			uuid = "6fce570e-d0d1-bf95-823b-922d4a9af900",
		},
		objectType = "folder",
	},
	
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
								"8e19d172-faa4-89ac-ac27-c7e7434afdef",
								true,
							},
						},
						name = "Shinryu helper setup",
						uuid = "70b9760c-4d4e-1d31-bdfc-721edc91f140",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 679 and (true)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "8e19d172-faa4-89ac-ac27-c7e7434afdef",
						version = 3,
					},
				},
			},
			displayPath = "The Royal Menagerie/Shinryu/AutoSim",
			eventType = 11,
			name = "Shinryu helper setup",
			uuid = "922f4c44-0fb8-2b39-bd78-6f98d8c9d676",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 679 then self.used = true; return end\ndata.trialsInitialTargets = data.trialsInitialTargets or {}\nlocal states = data.trialsInitialTargets\nlocal state = states[\"679_5640\"] or {}\nstates[\"679_5640\"] = state\nlocal current = TensorCore.mGetTarget()\nlocal label = \"[Trials targeting] Shinryu\"\nif state.pending then\n    if current and current.id == state.pending then\n        d(label .. \" confirmed target=\" .. tostring(current.id))\n        state.pending = nil\n    elseif Now() - state.requestedAt >= 1500 then\n        d(label .. \" request not confirmed; intended=\" .. tostring(state.pending) ..\n            \" current=\" .. tostring(current and current.id))\n        state.pending = nil\n    end\n    self.used = true\n    return\nend\nif player.incombat or state.done then self.used = true; return end\nlocal boss, nearest = nil, 35 * 35\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=5640}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx = candidate.pos.x - player.pos.x\n        local dy = candidate.pos.y - player.pos.y\n        local dz = candidate.pos.z - player.pos.z\n        local distance = dx*dx + dy*dy + dz*dz\n        if distance <= nearest then\n            boss, nearest = candidate, distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label .. \" waiting for an attackable boss within 35 yalms; current=\" ..\n            tostring(current and current.id))\n        state.waitLogged = true\n    end\n    self.used = true\n    return\nend\nstate.done = true\nif current and current.alive and current.targetable and current.attackable then\n    d(label .. \" kept existing target; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current.id))\nelse\n    state.pending = boss.id\n    state.requestedAt = Now()\n    d(label .. \" target request; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"1f8bf4f1-9834-6314-8885-69a6f73a3568",
								true,
							},
						},
						name = "Select nearby boss once",
						uuid = "2877fc4c-14e1-91f9-9dd1-74b1273687d3",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 679 then return false end\nlocal states = data.trialsInitialTargets\nlocal state = states and states[\"679_5640\"]\nreturn (state ~= nil and state.pending ~= nil) or (not player.incombat and (not state or not state.done))",
						dequeueIfLuaFalse = true,
						name = "Duty and initial target",
						uuid = "1f8bf4f1-9834-6314-8885-69a6f73a3568",
						version = 3,
					},
				},
			},
			displayPath = "The Royal Menagerie/Shinryu/AutoSim",
			name = "Shinryu select boss at encounter start",
			throttleTime = 500,
			uuid = "cbf7c094-012a-90de-b22f-14534c45858b",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal api = TensorCore.API.TensorACR\nlocal ok, elapsed = pcall(api.getAutoSimTime)\nif ok and type(elapsed) == \"number\" and elapsed >= 0 and elapsed <= 60 and not data.normalRaidForecastSet then\n    api.setAutoSimKillTime(337)\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0, 20)\n    api.clearAutoSimPhases(\"FullDowntime\")\n    local downtime = {{89.9,102.7},{112.5,120.2},{134.2,141.4},{149.8,209.8}}\n    for _, window in ipairs(downtime) do\n        api.addAutoSimPhase(\"FullDowntime\", window[1], window[2], 1)\n    end\n    data.normalRaidForecastSet = true\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"3e0be813-e198-9577-8141-0f61b77c3f71",
								true,
							},
						},
						name = "Shinryu AutoSim baseline",
						uuid = "180f4fb2-ede8-182f-b8cc-50c300b7cb94",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 679 and (eventArgs.spellID == 8106 and not data.normalRaidForecastSet)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "3e0be813-e198-9577-8141-0f61b77c3f71",
						version = 3,
					},
				},
			},
			displayPath = "The Royal Menagerie/Shinryu/AutoSim",
			eventType = 3,
			name = "Shinryu AutoSim baseline",
			uuid = "38c21556-3fae-f752-b2c2-428de5aaa01a",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "The Crown of the Immaculate",
			uuid = "7d420cdb-94de-d0f9-8d6e-6f857c6175ac",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Crown of the Immaculate",
			name = "Innocence",
			uuid = "ab14f639-cf25-bbb7-a7ed-9be22a439bef",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Crown of the Immaculate/Innocence",
			name = "Draws",
			uuid = "cc6cc16e-1a8e-a56f-ab83-3b9463bd94bf",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal e = eventArgs\nlocal shapes = {[16029]=\"circle\",[16051]=\"rect\"}\nlocal ms = math.floor(e.startTime + e.duration * 1000 - Now())\nif ms > 0 then\n    local drawer = TensorCore.getStaticDrawer(0x803333FF, 2)\n    if shapes[e.aoeID] == \"circle\" then\n        drawer:addTimedCircle(ms, e.x, e.y, e.z, e.aoeLength, 0, false, true)\n    else\n        drawer:addTimedRect(ms, e.x, e.y, e.z, e.aoeLength, e.aoeWidth, e.heading, 0, false, true)\n    end\n    AnyoneCore.addWorldTextCountdown(ms, {x=e.x,y=e.y+1,z=e.z}, 0xFFFFFFFF, true, 1.1)\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"a890027a-83a6-3d50-8aa7-7c770158b7bd",
								true,
							},
						},
						name = "Innocence hazard draws",
						uuid = "482eec6b-50b8-8d45-b51b-e6dd109b193e",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 846 and (eventArgs.aoeID == 16029 or eventArgs.aoeID == 16051)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "a890027a-83a6-3d50-8aa7-7c770158b7bd",
						version = 3,
					},
				},
			},
			displayPath = "The Crown of the Immaculate/Innocence/Draws",
			eventType = 18,
			name = "Innocence hazard draws",
			uuid = "cb037b99-5954-0868-9e66-a7dc3855613c",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Crown of the Immaculate/Innocence",
			name = "AutoSim",
			uuid = "3d6b9da1-bc61-c3c5-8438-277f7a70aff4",
		},
		objectType = "folder",
	},
	
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
								"de874ed3-5e82-b2f1-b927-253ceeae472b",
								true,
							},
						},
						name = "Innocence helper setup",
						uuid = "b431f4f5-b98d-f8ab-bcc5-6312e5a8ac57",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 846 and (true)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "de874ed3-5e82-b2f1-b927-253ceeae472b",
						version = 3,
					},
				},
			},
			displayPath = "The Crown of the Immaculate/Innocence/AutoSim",
			eventType = 11,
			name = "Innocence helper setup",
			uuid = "82dd50bb-9c3a-29b3-8819-4294a3528fb3",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 846 then self.used = true; return end\ndata.trialsInitialTargets = data.trialsInitialTargets or {}\nlocal states = data.trialsInitialTargets\nlocal state = states[\"846_8353\"] or {}\nstates[\"846_8353\"] = state\nlocal current = TensorCore.mGetTarget()\nlocal label = \"[Trials targeting] Innocence\"\nif state.pending then\n    if current and current.id == state.pending then\n        d(label .. \" confirmed target=\" .. tostring(current.id))\n        state.pending = nil\n    elseif Now() - state.requestedAt >= 1500 then\n        d(label .. \" request not confirmed; intended=\" .. tostring(state.pending) ..\n            \" current=\" .. tostring(current and current.id))\n        state.pending = nil\n    end\n    self.used = true\n    return\nend\nif player.incombat or state.done then self.used = true; return end\nlocal boss, nearest = nil, 35 * 35\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=8353}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx = candidate.pos.x - player.pos.x\n        local dy = candidate.pos.y - player.pos.y\n        local dz = candidate.pos.z - player.pos.z\n        local distance = dx*dx + dy*dy + dz*dz\n        if distance <= nearest then\n            boss, nearest = candidate, distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label .. \" waiting for an attackable boss within 35 yalms; current=\" ..\n            tostring(current and current.id))\n        state.waitLogged = true\n    end\n    self.used = true\n    return\nend\nstate.done = true\nif current and current.alive and current.targetable and current.attackable then\n    d(label .. \" kept existing target; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current.id))\nelse\n    state.pending = boss.id\n    state.requestedAt = Now()\n    d(label .. \" target request; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"a82b9b56-cf75-4e94-8cfd-0118c1e5756d",
								true,
							},
						},
						name = "Select nearby boss once",
						uuid = "fa80735a-917a-583e-a793-dddaf951567c",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 846 then return false end\nlocal states = data.trialsInitialTargets\nlocal state = states and states[\"846_8353\"]\nreturn (state ~= nil and state.pending ~= nil) or (not player.incombat and (not state or not state.done))",
						dequeueIfLuaFalse = true,
						name = "Duty and initial target",
						uuid = "a82b9b56-cf75-4e94-8cfd-0118c1e5756d",
						version = 3,
					},
				},
			},
			displayPath = "The Crown of the Immaculate/Innocence/AutoSim",
			name = "Innocence select boss at encounter start",
			throttleTime = 500,
			uuid = "ab9325ec-7816-e6fd-8eb0-f2883093af6a",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal api = TensorCore.API.TensorACR\nlocal ok, elapsed = pcall(api.getAutoSimTime)\nif ok and type(elapsed) == \"number\" and elapsed >= 0 and elapsed <= 60 and not data.normalRaidForecastSet then\n    api.setAutoSimKillTime(422)\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0, 20)\n    api.clearAutoSimPhases(\"FullDowntime\")\n    local downtime = {{133.4,171},{276.1,278},{318.5,338.8},{403.6,406.8}}\n    for _, window in ipairs(downtime) do\n        api.addAutoSimPhase(\"FullDowntime\", window[1], window[2], 1)\n    end\n    data.normalRaidForecastSet = true\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"c4c0f7c2-bf9d-fb80-9d99-27c1c32a0cbb",
								true,
							},
						},
						name = "Innocence AutoSim baseline",
						uuid = "cc666a0f-ae7b-1eed-820d-a235cf04f411",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 846 and (eventArgs.spellID == 16026 and not data.normalRaidForecastSet)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "c4c0f7c2-bf9d-fb80-9d99-27c1c32a0cbb",
						version = 3,
					},
				},
			},
			displayPath = "The Crown of the Immaculate/Innocence/AutoSim",
			eventType = 3,
			name = "Innocence AutoSim baseline",
			uuid = "24241302-6601-f2a5-bc2e-6ca200941884",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "The Singularity Reactor",
			uuid = "a3ac6486-ede9-ad15-8fa7-7b733338354f",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Singularity Reactor",
			name = "King Thordan",
			uuid = "15f5b109-4462-f5db-a85f-c36b94e20e97",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Singularity Reactor/King Thordan",
			name = "Mechanics",
			uuid = "0065ff79-771a-862e-9fa7-7d2e24628060",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local e = eventArgs\nlocal finish = Now() + e.channelTimeMax * 1000\ndata.trialsThordanGaze = {caster=e.entityID, start=finish-1000, expiry=finish+650}\nTensorCore.addAlertText(e.channelTimeMax*1000, \"Look away from Thordan\", 1.5, 2, true)\nself.used = true",
						conditions = 
						{
							
							{
								"fa293c26-0c25-2cc7-a3b8-3d6076d13161",
								true,
							},
						},
						name = "Dragon’s Gaze - look away alert",
						uuid = "e41ef024-ffcf-39c3-886e-ba00b7903d53",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 437 and eventArgs ~= nil and eventArgs.spellID == 4201 and eventArgs.entityContentID == 3632",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "fa293c26-0c25-2cc7-a3b8-3d6076d13161",
						version = 3,
					},
				},
			},
			displayPath = "The Singularity Reactor/King Thordan/Mechanics",
			eventType = 3,
			name = "Dragon’s Gaze - look away alert",
			timeout = 3,
			uuid = "160c74c4-8744-5294-8e49-c835a56e73b1",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local gaze = data.trialsThordanGaze\nlocal p = TensorCore.mGetPlayer()\nlocal api = TensorCore.API.TensorACR\nif not p or p.localmapid ~= 437 or not p.alive or not p.incombat or Now() >= gaze.expiry then\n    if gaze.locked then\n        api.toggleLockFace(false)\n        api.setHardLockFace(false)\n    end\n    data.trialsThordanGaze = nil\nelse\n    local caster = TensorCore.mGetEntity(gaze.caster)\n    if caster and caster.pos and p.pos then\n        api.setLockFaceHeading(TensorCore.getHeadingToTarget2(\n            caster.pos.x, caster.pos.y, caster.pos.z, p.pos.x, p.pos.y, p.pos.z))\n        if not gaze.locked then\n            api.setHardLockFace(true)\n            api.toggleLockFace(true)\n            gaze.locked = true\n        end\n    end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"f26f7ddf-e9e7-3062-a25e-feddf553bd56",
								true,
							},
						},
						name = "Dragon’s Gaze - temporary Lock Face",
						uuid = "43ffb119-0582-7981-82eb-186d901215c4",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local gaze = data.trialsThordanGaze\nif not gaze or Now() < gaze.start then return false end\nlocal p = TensorCore.mGetPlayer()\nreturn gaze.locked == true or (p ~= nil and p.localmapid == 437)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "f26f7ddf-e9e7-3062-a25e-feddf553bd56",
						version = 3,
					},
				},
			},
			displayPath = "The Singularity Reactor/King Thordan/Mechanics",
			name = "Dragon’s Gaze - temporary Lock Face",
			throttleTime = 100,
			timeout = 3,
			uuid = "e6021400-9897-4206-8a3f-8ca754f066f9",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local gaze = data.trialsThordanGaze\nif gaze.locked then\n    local api = TensorCore.API.TensorACR\n    api.toggleLockFace(false)\n    api.setHardLockFace(false)\nend\ndata.trialsThordanGaze = nil\nself.used = true",
						conditions = 
						{
							
							{
								"f792ee1c-2fb8-27bd-8ff5-6847c3484a5b",
								true,
							},
						},
						name = "Dragon’s Gaze - release Lock Face",
						uuid = "4fdc54b3-a1d3-9d06-8454-fc5c65fe475e",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 437 and eventArgs ~= nil and eventArgs.spellID == 4201 and eventArgs.entityContentID == 3632 and data.trialsThordanGaze ~= nil and eventArgs.entityID == data.trialsThordanGaze.caster",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "f792ee1c-2fb8-27bd-8ff5-6847c3484a5b",
						version = 3,
					},
				},
			},
			displayPath = "The Singularity Reactor/King Thordan/Mechanics",
			eventType = 2,
			name = "Dragon’s Gaze - release Lock Face",
			timeout = 3,
			uuid = "b7ad4b20-b1f1-b9d0-a4fe-e60eff80f98c",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Singularity Reactor/King Thordan",
			name = "Mitigations",
			uuid = "3670ae69-f951-11cc-81b1-e69ed883cb9e",
		},
		objectType = "folder",
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
								"2c450b9e-a8aa-4ba7-a5e8-f69feee5d512",
								true,
							},
						},
						gVar = "ACR_TensorReaper4_Hotbar_ArmsLength",
						uuid = "4d46665b-e543-dd99-a5b7-8e9af311e0d6",
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
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 437 and eventArgs ~= nil and eventArgs.spellID == 4203 and eventArgs.entityContentID == 3645",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "2c450b9e-a8aa-4ba7-a5e8-f69feee5d512",
						version = 3,
					},
				},
			},
			displayPath = "The Singularity Reactor/King Thordan/Mitigations",
			eventType = 2,
			name = "Light of Ascalon - Arm's Length",
			throttleTime = 15000,
			timeout = 2,
			uuid = "1d55450c-24a6-8b78-8a6f-e63a212841f3",
			version = 2,
		},
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
								"a93a096b-4913-5324-ba92-a3c33039dd31",
								true,
							},
							
							{
								"3ff01430-aae5-d741-823b-81530857fb46",
								true,
							},
						},
						gVar = "ACR_TensorNuke4_Hotbar_Surecast",
						uuid = "4a6077a4-1e64-a709-addc-44b3c9bd9f08",
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
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 437 and eventArgs ~= nil and eventArgs.spellID == 4203 and eventArgs.entityContentID == 3645",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "a93a096b-4913-5324-ba92-a3c33039dd31",
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
						uuid = "3ff01430-aae5-d741-823b-81530857fb46",
						version = 3,
					},
				},
			},
			displayPath = "The Singularity Reactor/King Thordan/Mitigations",
			eventType = 2,
			name = "Light of Ascalon - Surecast",
			throttleTime = 15000,
			timeout = 2,
			uuid = "27acfc18-7c99-d0ab-a247-0e9782be78b0",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Singularity Reactor/King Thordan",
			name = "Draws",
			uuid = "ecfdf8d5-8f4a-92ce-ac12-194d9a748fb9",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local e = eventArgs\nlocal ms = math.floor(e.startTime + e.duration * 1000 - Now())\nif ms > 0 then\n    local drawer = TensorCore.getStaticDrawer(0x803333FF, 2)\n    if e.aoeID == 4197 then\n        drawer:addTimedCircle(ms, e.x, e.y, e.z, e.aoeLength, 0, false, true)\n    else\n        drawer:addTimedRect(ms, e.x, e.y, e.z, e.aoeLength, e.aoeWidth, e.heading, 0, false, true)\n    end\n    AnyoneCore.addWorldTextCountdown(ms, {x=e.x,y=e.y+1,z=e.z}, 0xFFFFFFFF, true, 1.1)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"cfea4685-40c8-4cbf-9ce9-5d0623aaa32d",
								true,
							},
						},
						name = "King Thordan - ground and charge telegraphs",
						uuid = "d0e4dc07-0a55-986e-b993-b5cc57dfdbed",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 437 and eventArgs ~= nil and (eventArgs.aoeID == 4197 or eventArgs.aoeID == 4222 or eventArgs.aoeID == 4223)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "cfea4685-40c8-4cbf-9ce9-5d0623aaa32d",
						version = 3,
					},
				},
			},
			displayPath = "The Singularity Reactor/King Thordan/Draws",
			eventType = 18,
			name = "King Thordan - ground and charge telegraphs",
			timeout = 3,
			uuid = "f588eb5e-c99a-bca9-b133-9f196ab846d9",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Singularity Reactor/King Thordan",
			name = "AutoSim",
			uuid = "66709a6f-ca02-ffbe-af83-eb888d64b7dc",
		},
		objectType = "folder",
	},
	
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
								"4a94bc88-e091-9fea-945a-1b8b168b2463",
								true,
							},
						},
						name = "Thordan helper setup",
						uuid = "2e7dfcd5-2950-5783-8fb3-da08c272b21d",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 437 and (true)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "4a94bc88-e091-9fea-945a-1b8b168b2463",
						version = 3,
					},
				},
			},
			displayPath = "The Singularity Reactor/King Thordan/AutoSim",
			eventType = 11,
			name = "Thordan helper setup",
			uuid = "51675976-4d4a-48ff-be55-9beb091c0ba2",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 437 then self.used = true; return end\ndata.trialsInitialTargets = data.trialsInitialTargets or {}\nlocal states = data.trialsInitialTargets\nlocal state = states[\"437_3632\"] or {}\nstates[\"437_3632\"] = state\nlocal current = TensorCore.mGetTarget()\nlocal label = \"[Trials targeting] Thordan\"\nif state.pending then\n    if current and current.id == state.pending then\n        d(label .. \" confirmed target=\" .. tostring(current.id))\n        state.pending = nil\n    elseif Now() - state.requestedAt >= 1500 then\n        d(label .. \" request not confirmed; intended=\" .. tostring(state.pending) ..\n            \" current=\" .. tostring(current and current.id))\n        state.pending = nil\n    end\n    self.used = true\n    return\nend\nif player.incombat or state.done then self.used = true; return end\nlocal boss, nearest = nil, 35 * 35\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=3632}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx = candidate.pos.x - player.pos.x\n        local dy = candidate.pos.y - player.pos.y\n        local dz = candidate.pos.z - player.pos.z\n        local distance = dx*dx + dy*dy + dz*dz\n        if distance <= nearest then\n            boss, nearest = candidate, distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label .. \" waiting for an attackable boss within 35 yalms; current=\" ..\n            tostring(current and current.id))\n        state.waitLogged = true\n    end\n    self.used = true\n    return\nend\nstate.done = true\nif current and current.alive and current.targetable and current.attackable then\n    d(label .. \" kept existing target; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current.id))\nelse\n    state.pending = boss.id\n    state.requestedAt = Now()\n    d(label .. \" target request; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current and current.id))\n    gStartCombat = false\n    Player:SetTarget(boss.id)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"58219641-e0c2-4d11-8818-6481a75dfadf",
								true,
							},
						},
						name = "Thordan select boss at encounter start",
						uuid = "2887e430-8415-669a-8850-3a77bf707b7b",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 437 then return false end\nlocal states = data.trialsInitialTargets\nlocal state = states and states[\"437_3632\"]\nreturn (state ~= nil and state.pending ~= nil) or (not player.incombat and (not state or not state.done))",
						dequeueIfLuaFalse = true,
						name = "Duty and initial target",
						uuid = "58219641-e0c2-4d11-8818-6481a75dfadf",
						version = 3,
					},
				},
			},
			displayPath = "The Singularity Reactor/King Thordan/AutoSim",
			name = "Thordan select boss at encounter start",
			throttleTime = 500,
			uuid = "298368f2-5880-195d-a1d5-83534c85ca57",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal api = TensorCore.API.TensorACR\nlocal ok, elapsed = pcall(api.getAutoSimTime)\nif ok and type(elapsed) == \"number\" and elapsed >= 0 and elapsed <= 60 and not data.trialsThordanForecastSet then\n    api.setAutoSimKillTime(235)\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0, 12)\n    api.clearAutoSimPhases(\"FullDowntime\")\n    local downtime = {{71.5, 102.5}, {120.7, 127.6}, {144.7, 177.8}, {186.0, 224.6}}\n    for _, window in ipairs(downtime) do\n        api.addAutoSimPhase(\"FullDowntime\", window[1], window[2], 1)\n    end\n    data.trialsThordanForecastSet = true\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"7b6ff604-6b90-6544-9cfe-7e4394cf2f32",
								true,
							},
						},
						name = "Thordan AutoSim baseline",
						uuid = "95674856-3c10-69d9-a9f0-f39c064d67af",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 437 and (eventArgs ~= nil and eventArgs.spellID == 4192 and eventArgs.entityContentID == 3632 and not data.trialsThordanForecastSet)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "7b6ff604-6b90-6544-9cfe-7e4394cf2f32",
						version = 3,
					},
				},
			},
			displayPath = "The Singularity Reactor/King Thordan/AutoSim",
			eventType = 3,
			name = "Thordan AutoSim baseline",
			uuid = "decb6df3-675f-f299-afeb-546f21031515",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player then self.used = true; return end\n\nlocal contentID = 4386\nlocal label = \"[Trials] Meteor Circle\"\nlocal api = TensorCore.API.TensorACR\nlocal eligible = player.localmapid == 437 and (player.job == 23 or player.job == 25)\nlocal state = TrialsThordanMeteorDoT\n\n-- Restore the previous entry on leaving The Singularity Reactor or changing jobs.\n-- Keep this state outside pull data so a wipe does not lose the original values.\nif state and (not eligible or state.job ~= player.job) then\n    local entry = state.entry\n    if entry.enabled and entry.allowIfTarget == false and entry.allowSmartDoT == false then\n        if state.created then\n            entry.enabled = false\n            if player.job == state.job and api.getBlacklistEntry(contentID) then\n                local current = api.addBlacklistEntry(contentID)\n                if current == entry and current.name == label then\n                    api.deleteBlacklistEntry(contentID)\n                end\n            end\n        else\n            entry.enabled = state.enabled\n            entry.allowIfTarget = state.allowIfTarget\n            entry.allowSmartDoT = state.allowSmartDoT\n        end\n    end\n    TrialsThordanMeteorDoT = nil\n    state = nil\nend\n\nif eligible and not state then\n    local supported, exists = pcall(api.getBlacklistEntry, contentID)\n    if supported then\n        local ok, entry = pcall(api.addBlacklistEntry, contentID, label)\n        if ok and entry then\n            TrialsThordanMeteorDoT = {\n                job = player.job, entry = entry, created = not exists,\n                enabled = entry.enabled, allowIfTarget = entry.allowIfTarget,\n                allowSmartDoT = entry.allowSmartDoT,\n            }\n            entry.enabled = true\n            entry.allowIfTarget = false\n            entry.allowSmartDoT = false\n        end\n    end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"dedf2802-3f8f-e9d0-b06d-9d5224116bd5",
								true,
							},
						},
						name = "Meteor Circle DoT blacklist (BRD / BLM)",
						uuid = "e885ff49-c425-2009-8084-d47ede6b3997",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player then return false end\nlocal state = TrialsThordanMeteorDoT\nlocal eligible = player.localmapid == 437 and (player.job == 23 or player.job == 25)\nif state then\n    return not eligible or player.job ~= state.job\nend\nreturn eligible",
						dequeueIfLuaFalse = true,
						name = "Duty and job / restore on exit",
						uuid = "dedf2802-3f8f-e9d0-b06d-9d5224116bd5",
						version = 3,
					},
				},
			},
			displayPath = "The Singularity Reactor/King Thordan/AutoSim",
			name = "Meteor Circle DoT blacklist (BRD / BLM)",
			throttleTime = 500,
			uuid = "ef53df14-ddf5-f4ab-b100-60ba11a1d63d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player then self.used = true; return end\n\nlocal contentID = 4387\nlocal label = \"[Trials] Comet Circle\"\nlocal api = TensorCore.API.TensorACR\nlocal eligible = player.localmapid == 437 and (player.job == 23 or player.job == 25)\nlocal state = TrialsThordanCometDoT\n\n-- Restore the previous entry on leaving The Singularity Reactor or changing jobs.\n-- Keep this state outside pull data so a wipe does not lose the original values.\nif state and (not eligible or state.job ~= player.job) then\n    local entry = state.entry\n    if entry.enabled and entry.allowIfTarget == false and entry.allowSmartDoT == false then\n        if state.created then\n            entry.enabled = false\n            if player.job == state.job and api.getBlacklistEntry(contentID) then\n                local current = api.addBlacklistEntry(contentID)\n                if current == entry and current.name == label then\n                    api.deleteBlacklistEntry(contentID)\n                end\n            end\n        else\n            entry.enabled = state.enabled\n            entry.allowIfTarget = state.allowIfTarget\n            entry.allowSmartDoT = state.allowSmartDoT\n        end\n    end\n    TrialsThordanCometDoT = nil\n    state = nil\nend\n\nif eligible and not state then\n    local supported, exists = pcall(api.getBlacklistEntry, contentID)\n    if supported then\n        local ok, entry = pcall(api.addBlacklistEntry, contentID, label)\n        if ok and entry then\n            TrialsThordanCometDoT = {\n                job = player.job, entry = entry, created = not exists,\n                enabled = entry.enabled, allowIfTarget = entry.allowIfTarget,\n                allowSmartDoT = entry.allowSmartDoT,\n            }\n            entry.enabled = true\n            entry.allowIfTarget = false\n            entry.allowSmartDoT = false\n        end\n    end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"e28dcb7a-de06-aeb5-8268-7233ed81b20f",
								true,
							},
						},
						name = "Comet Circle DoT blacklist (BRD / BLM)",
						uuid = "6c6c9a0d-d1cb-58f5-a1cc-1816d2dba9c8",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player then return false end\nlocal state = TrialsThordanCometDoT\nlocal eligible = player.localmapid == 437 and (player.job == 23 or player.job == 25)\nif state then\n    return not eligible or player.job ~= state.job\nend\nreturn eligible",
						dequeueIfLuaFalse = true,
						name = "Duty and job / restore on exit",
						uuid = "e28dcb7a-de06-aeb5-8268-7233ed81b20f",
						version = 3,
					},
				},
			},
			displayPath = "The Singularity Reactor/King Thordan/AutoSim",
			name = "Comet Circle DoT blacklist (BRD / BLM)",
			throttleTime = 500,
			uuid = "85fd58fd-02ea-e05c-9ff0-d5d9137ad9e5",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player then self.used = true; return end\n\nlocal contentID = 3634\nlocal label = \"[Trials] Ser Adelphel\"\nlocal api = TensorCore.API.TensorACR\nlocal eligible = player.localmapid == 437 and (player.job == 23 or player.job == 25)\nlocal state = TrialsThordanSerAdelphelDoT\n\n-- Restore the previous entry on leaving The Singularity Reactor or changing jobs.\n-- Keep this state outside pull data so a wipe does not lose the original values.\nif state and (not eligible or state.job ~= player.job) then\n    local entry = state.entry\n    if entry.enabled and entry.allowIfTarget == false and entry.allowSmartDoT == false then\n        if state.created then\n            entry.enabled = false\n            if player.job == state.job and api.getBlacklistEntry(contentID) then\n                local current = api.addBlacklistEntry(contentID)\n                if current == entry and current.name == label then\n                    api.deleteBlacklistEntry(contentID)\n                end\n            end\n        else\n            entry.enabled = state.enabled\n            entry.allowIfTarget = state.allowIfTarget\n            entry.allowSmartDoT = state.allowSmartDoT\n        end\n    end\n    TrialsThordanSerAdelphelDoT = nil\n    state = nil\nend\n\nif eligible and not state then\n    local supported, exists = pcall(api.getBlacklistEntry, contentID)\n    if supported then\n        local ok, entry = pcall(api.addBlacklistEntry, contentID, label)\n        if ok and entry then\n            TrialsThordanSerAdelphelDoT = {\n                job = player.job, entry = entry, created = not exists,\n                enabled = entry.enabled, allowIfTarget = entry.allowIfTarget,\n                allowSmartDoT = entry.allowSmartDoT,\n            }\n            entry.enabled = true\n            entry.allowIfTarget = false\n            entry.allowSmartDoT = false\n        end\n    end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"b83640c0-b622-26fe-bb54-662e938627f3",
								true,
							},
						},
						name = "Block short-lived knight DoTs",
						uuid = "35a95afa-1c74-c07f-bb21-d83ac1ba0dcd",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player then return false end\nlocal state = TrialsThordanSerAdelphelDoT\nlocal eligible = player.localmapid == 437 and (player.job == 23 or player.job == 25)\nif state then\n    return not eligible or player.job ~= state.job\nend\nreturn eligible",
						dequeueIfLuaFalse = true,
						name = "Duty and job / owned cleanup",
						uuid = "b83640c0-b622-26fe-bb54-662e938627f3",
						version = 3,
					},
				},
			},
			displayPath = "The Singularity Reactor/King Thordan/AutoSim",
			name = "Ser Adelphel DoT blacklist (BRD / BLM)",
			throttleTime = 500,
			timeout = 0.5,
			uuid = "d01a817d-5f25-9d67-9737-75a7a897caa8",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player then self.used = true; return end\n\nlocal contentID = 3635\nlocal label = \"[Trials] Ser Janlenoux\"\nlocal api = TensorCore.API.TensorACR\nlocal eligible = player.localmapid == 437 and (player.job == 23 or player.job == 25)\nlocal state = TrialsThordanSerJanlenouxDoT\n\n-- Restore the previous entry on leaving The Singularity Reactor or changing jobs.\n-- Keep this state outside pull data so a wipe does not lose the original values.\nif state and (not eligible or state.job ~= player.job) then\n    local entry = state.entry\n    if entry.enabled and entry.allowIfTarget == false and entry.allowSmartDoT == false then\n        if state.created then\n            entry.enabled = false\n            if player.job == state.job and api.getBlacklistEntry(contentID) then\n                local current = api.addBlacklistEntry(contentID)\n                if current == entry and current.name == label then\n                    api.deleteBlacklistEntry(contentID)\n                end\n            end\n        else\n            entry.enabled = state.enabled\n            entry.allowIfTarget = state.allowIfTarget\n            entry.allowSmartDoT = state.allowSmartDoT\n        end\n    end\n    TrialsThordanSerJanlenouxDoT = nil\n    state = nil\nend\n\nif eligible and not state then\n    local supported, exists = pcall(api.getBlacklistEntry, contentID)\n    if supported then\n        local ok, entry = pcall(api.addBlacklistEntry, contentID, label)\n        if ok and entry then\n            TrialsThordanSerJanlenouxDoT = {\n                job = player.job, entry = entry, created = not exists,\n                enabled = entry.enabled, allowIfTarget = entry.allowIfTarget,\n                allowSmartDoT = entry.allowSmartDoT,\n            }\n            entry.enabled = true\n            entry.allowIfTarget = false\n            entry.allowSmartDoT = false\n        end\n    end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"0ea07a59-1e6b-4d1a-bb7a-0c87c71055c3",
								true,
							},
						},
						name = "Block short-lived knight DoTs",
						uuid = "b9d3377a-d2e0-1ff7-8d53-6afd3c1b7e3e",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player then return false end\nlocal state = TrialsThordanSerJanlenouxDoT\nlocal eligible = player.localmapid == 437 and (player.job == 23 or player.job == 25)\nif state then\n    return not eligible or player.job ~= state.job\nend\nreturn eligible",
						dequeueIfLuaFalse = true,
						name = "Duty and job / owned cleanup",
						uuid = "0ea07a59-1e6b-4d1a-bb7a-0c87c71055c3",
						version = 3,
					},
				},
			},
			displayPath = "The Singularity Reactor/King Thordan/AutoSim",
			name = "Ser Janlenoux DoT blacklist (BRD / BLM)",
			throttleTime = 500,
			timeout = 0.5,
			uuid = "fce167ce-fd50-948a-bab5-e95bcaf89be8",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player then self.used = true; return end\n\nlocal contentID = 3633\nlocal label = \"[Trials] Ser Zephirin (BRD)\"\nlocal api = TensorCore.API.TensorACR\nlocal eligible = player.localmapid == 437 and player.job == 23\nlocal state = TrialsThordanZephirinDoT\n\n-- Restore the previous entry on leaving The Singularity Reactor or changing jobs.\n-- Keep this state outside pull data so a wipe does not lose the original values.\nif state and (not eligible or state.job ~= player.job) then\n    local entry = state.entry\n    if entry.enabled and entry.allowIfTarget == false and entry.allowSmartDoT == false then\n        if state.created then\n            entry.enabled = false\n            if player.job == state.job and api.getBlacklistEntry(contentID) then\n                local current = api.addBlacklistEntry(contentID)\n                if current == entry and current.name == label then\n                    api.deleteBlacklistEntry(contentID)\n                end\n            end\n        else\n            entry.enabled = state.enabled\n            entry.allowIfTarget = state.allowIfTarget\n            entry.allowSmartDoT = state.allowSmartDoT\n        end\n    end\n    TrialsThordanZephirinDoT = nil\n    state = nil\nend\n\nif eligible and not state then\n    local supported, exists = pcall(api.getBlacklistEntry, contentID)\n    if supported then\n        local ok, entry = pcall(api.addBlacklistEntry, contentID, label)\n        if ok and entry then\n            TrialsThordanZephirinDoT = {\n                job = player.job, entry = entry, created = not exists,\n                enabled = entry.enabled, allowIfTarget = entry.allowIfTarget,\n                allowSmartDoT = entry.allowSmartDoT,\n            }\n            entry.enabled = true\n            entry.allowIfTarget = false\n            entry.allowSmartDoT = false\n        end\n    end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"8f9dfd8e-b02a-f1e0-85ad-cded81ca784c",
								true,
							},
						},
						name = "Save both DoT GCDs on short-lived Zephirin",
						uuid = "628a60d8-02d1-a915-8fa3-6c6308290893",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player then return false end\nlocal state = TrialsThordanZephirinDoT\nlocal eligible = player.localmapid == 437 and player.job == 23\nif state then\n    return not eligible or player.job ~= state.job\nend\nreturn eligible",
						dequeueIfLuaFalse = true,
						name = "BRD in duty / owned cleanup",
						uuid = "8f9dfd8e-b02a-f1e0-85ad-cded81ca784c",
						version = 3,
					},
				},
			},
			displayPath = "The Singularity Reactor/King Thordan/AutoSim",
			name = "Ser Zephirin DoT blacklist (BRD only)",
			throttleTime = 500,
			timeout = 0.5,
			uuid = "31594d24-2d80-7831-82a9-3ca869b449d9",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Cinder Drift",
			uuid = "eeef8111-6e26-a8a8-afc5-46aca82addc9",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Cinder Drift",
			name = "AutoSim",
			uuid = "b1a9e7ae-4ee8-47c4-992b-4e7f516ecf35",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not TrialsCinder then\n local C={draws=true,autoSim=true,movement=true,killP1=180,killP2=170,transition=61.6,blockComets=true,blockImages=false}\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n C.path=folder..[[Trials.CinderDrift.lua]]\n local keys={\"draws\",\"autoSim\",\"movement\",\"killP1\",\"killP2\",\"transition\",\"blockComets\",\"blockImages\"}\n if FileExists(C.path) then\n  local saved=FileLoad(C.path)\n  if type(saved)==\"table\" then for _,key in ipairs(keys) do if type(saved[key])==type(C[key]) then C[key]=saved[key] end end end\n end\n C.killP1=math.max(30,math.min(600,C.killP1));C.killP2=math.max(30,math.min(600,C.killP2));C.transition=math.max(1,math.min(120,C.transition))\n function C.save()\n  if not FolderExists(folder) then FolderCreate(folder) end\n  local values={};for _,key in ipairs(keys) do values[key]=C[key] end\n  FileSave(C.path,values)\n end\n C.save();TrialsCinder=C\nend\nlocal settings=AnyoneCore and AnyoneCore.Settings\nif settings then\n if settings.DutyHelper then settings.DutyHelper.enabled=false end\n if settings.PrepullHelper then settings.PrepullHelper.enabled=false end\nend\ngStartCombat=false\ndata.cinderHelpersReady=true\nself.used=true",
						conditions = 
						{
							
							{
								"ae8644f6-fd11-f010-bec8-a090496c43f6",
								true,
							},
							
							{
								"2c0234ad-9981-acc3-b801-3dc3f3e064c0",
								true,
							},
						},
						name = "Initialize settings and helpers",
						uuid = "7ceffb96-11c0-d9c2-a5ce-daaf7acecd7f",
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
						dequeueIfLuaFalse = true,
						localmapid = 897,
						name = "Cinder Drift (897)",
						uuid = "ae8644f6-fd11-f010-bec8-a090496c43f6",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return not data.cinderHelpersReady or TrialsCinder==nil",
						name = "Relevant Cinder state",
						uuid = "2c0234ad-9981-acc3-b801-3dc3f3e064c0",
						version = 3,
					},
				},
			},
			displayPath = "Cinder Drift/AutoSim",
			name = "[Cinder Drift] Initialize settings and helpers",
			throttleTime = 500,
			timeout = 0.5,
			uuid = "0860785d-1eab-ea50-b742-1fdd6ab39277",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.cinderPhase=eventArgs.spellID==19114 and 2 or 1\nlocal S=data.cinderForecast\nif S and data.cinderPhase==2 and not S.p2 then S.p2=math.max(0,TensorCore.API.TensorACR.getAutoSimTime()-7.25);S.publish() end\nself.used=true",
						conditions = 
						{
							
							{
								"b2e38c39-e548-9a15-898d-3c104987a3b1",
								true,
							},
							
							{
								"49732708-9125-05b9-91f0-459035317cea",
								true,
							},
						},
						name = "Capture phase",
						uuid = "fd88701e-edd1-66d2-88e6-d8dcbd52df4b",
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
						dequeueIfLuaFalse = true,
						localmapid = 897,
						uuid = "b2e38c39-e548-9a15-898d-3c104987a3b1",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.entityContentID==9250 and ((eventArgs.spellID==19143 and data.cinderPhase==nil) or (eventArgs.spellID==19114 and data.cinderPhase~=2))",
						dequeueIfLuaFalse = true,
						name = "Phase opening cast",
						uuid = "49732708-9125-05b9-91f0-459035317cea",
						version = 3,
					},
				},
			},
			displayPath = "Cinder Drift/AutoSim",
			eventType = 3,
			name = "[Cinder Drift] Identify native phase casts",
			timeout = 2,
			uuid = "bf32e8eb-d6df-12b0-bfef-be03b23f557d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local C=TrialsCinder\nlocal api=TensorCore.API.TensorACR\nlocal S={ids={},p1End=nil,p2=nil,guessEnd=C.killP1}\nfunction S.publish()\n for _,id in ipairs(S.ids) do api.removeAutoSimPhase(id) end\n S.ids={}\n local function add(kind,a,b)\n  if b>a then local id=api.addAutoSimPhase(kind,a,b,1);if id then S.ids[#S.ids+1]=id end end\n end\n local ending=S.p1End or S.guessEnd\n local p2=S.p2 or ending+C.transition\n if not S.checkpoint then\n  local f=S.flight or {130.219,137.469}\n  if ending>f[1] then add(\"FullDowntime\",f[1],math.min(f[2],ending)) end\n  add(\"Stun\",ending,p2)\n end\n api.setAutoSimKillTime(p2+C.killP2)\n if C.movement then\n  if not S.checkpoint then\n   for _,w in ipairs({{44.5,47},{50.5,53},{67,70},{97,103},{129,137.5},{169.5,172},{175.5,178.5}}) do\n    if w[1]<ending then add(\"CasterDowntime\",w[1],math.min(w[2],ending)) end\n   end\n  end\n  for _,w in ipairs({{25.5,27.5},{41.5,43.5},{59.5,61.5},{105,108},{116.5,120}}) do add(\"CasterDowntime\",p2+w[1],p2+w[2]) end\n end\nend\nlocal target=TensorCore.mGetTarget()\nlocal now=api.getAutoSimTime()\nS.p1Entity=target and target.id\nif data.cinderPhase==2 then S.checkpoint=true;S.p2=math.max(0,now-7.25) end\nS.publish()\ndata.cinderForecast=S\nTensorCore.timelineLogToFile(\"[Cinder AutoSim] setup clock=\"..tostring(now)..\" checkpoint=\"..tostring(S.checkpoint)..\" sampled P1=179.594 transition=61.609 P2=169.531; movement estimates optional\")\nself.used=true",
						conditions = 
						{
							
							{
								"f62a4453-3735-99fa-904d-5dcce86e3c88",
								true,
							},
							
							{
								"bdaff4ae-8b92-c35b-813d-822a4914b168",
								true,
							},
						},
						name = "Build two-phase forecast",
						uuid = "6f0ebde7-0cf3-1f8c-a892-2f24a2bbb097",
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
						dequeueIfLuaFalse = true,
						localmapid = 897,
						name = "Cinder Drift (897)",
						uuid = "f62a4453-3735-99fa-904d-5dcce86e3c88",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer();return TrialsCinder~=nil and TrialsCinder.autoSim==true and p~=nil and p.incombat==true and data.cinderForecast==nil and data.cinderPhase~=nil",
						name = "Relevant Cinder state",
						uuid = "bdaff4ae-8b92-c35b-813d-822a4914b168",
						version = 3,
					},
				},
			},
			displayPath = "Cinder Drift/AutoSim",
			name = "[Cinder Drift] Build two-phase forecast",
			throttleTime = 500,
			timeout = 0.5,
			uuid = "6b78a48b-0c75-e829-afa5-fecbb6fdb06c",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.cinderP2Entity=eventArgs.entityID\nlocal S=data.cinderForecast\nif S then\n local now=TensorCore.API.TensorACR.getAutoSimTime()\n S.p1End=now;S.publish()\n TensorCore.timelineLogToFile(\"[Cinder AutoSim] cutscene Stun starts=\"..now)\nend\nself.used=true",
						conditions = 
						{
							
							{
								"106405f2-2d54-a0e6-95f6-815ffc36c95e",
								true,
							},
							
							{
								"43c73269-5364-423f-8a12-cc7034d731ce",
								true,
							},
						},
						name = "Resync transition Stun",
						uuid = "50b0ca45-dd10-59e5-b7d4-8f5363d7859c",
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
						dequeueIfLuaFalse = true,
						localmapid = 897,
						name = "Cinder Drift (897)",
						uuid = "106405f2-2d54-a0e6-95f6-815ffc36c95e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.spellID==19996 and eventArgs.entityContentID==9250 and not data.cinderP2Entity",
						dequeueIfLuaFalse = true,
						name = "Relevant Cinder state",
						uuid = "43c73269-5364-423f-8a12-cc7034d731ce",
						version = 3,
					},
				},
			},
			displayPath = "Cinder Drift/AutoSim",
			eventType = 2,
			name = "[Cinder Drift] Resync transition Stun",
			timeout = 2,
			uuid = "725927a3-b6b4-2978-86ae-46d7ddfc0515",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local S=data.cinderForecast\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif S and e and eventArgs.entityID==data.cinderP2Entity and not S.p2 then\n S.p2=TensorCore.API.TensorACR.getAutoSimTime();S.publish()\n TensorCore.timelineLogToFile(\"[Cinder AutoSim] P2 targetable=\"..S.p2)\nend\nself.used=true",
						conditions = 
						{
							
							{
								"07090a9b-c696-6fae-9d7a-fc691f9c79d2",
								true,
							},
							
							{
								"58c113eb-4209-6c87-bfe8-e4c4d80ac82e",
								true,
							},
						},
						name = "Resync phase two start",
						uuid = "97de3228-7ca0-d40b-b938-fdced116e3ad",
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
						dequeueIfLuaFalse = true,
						localmapid = 897,
						name = "Cinder Drift (897)",
						uuid = "07090a9b-c696-6fae-9d7a-fc691f9c79d2",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.entityContentID==9250 and eventArgs.isTargetable==true and data.cinderForecast~=nil and data.cinderForecast.p2==nil",
						dequeueIfLuaFalse = true,
						name = "Relevant Cinder state",
						uuid = "58c113eb-4209-6c87-bfe8-e4c4d80ac82e",
						version = 3,
					},
				},
			},
			displayPath = "Cinder Drift/AutoSim",
			eventType = 26,
			name = "[Cinder Drift] Resync phase two start",
			timeout = 2,
			uuid = "3aedfda4-895d-3e8b-bfd5-3eadf666a5d0",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local S=data.cinderForecast\nlocal t=TensorCore.mGetTarget()\nif t and t.contentid==9250 and t.id==S.p1Entity and t.alive and t.attackable then\n local now=TensorCore.API.TensorACR.getAutoSimTime()\n if now>=S.guessEnd-2 then S.guessEnd=now+4;S.publish() end\nend\nself.used=true",
						conditions = 
						{
							
							{
								"7db58c54-ae9f-6fe5-8095-02c1de51b677",
								true,
							},
							
							{
								"0a178fe2-9c6b-b59b-9d04-e4d3660be728",
								true,
							},
						},
						name = "Extend late phase-one estimate",
						uuid = "d1452f55-ecba-2d82-aa1d-c76888dc46fd",
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
						dequeueIfLuaFalse = true,
						localmapid = 897,
						name = "Cinder Drift (897)",
						uuid = "7db58c54-ae9f-6fe5-8095-02c1de51b677",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local S=data.cinderForecast;return S~=nil and S.p1End==nil and S.p2==nil and TensorCore.API.TensorACR.getAutoSimTime()>=S.guessEnd-2",
						name = "Relevant Cinder state",
						uuid = "0a178fe2-9c6b-b59b-9d04-e4d3660be728",
						version = 3,
					},
				},
			},
			displayPath = "Cinder Drift/AutoSim",
			name = "[Cinder Drift] Extend late phase-one estimate",
			throttleTime = 2000,
			timeout = 0.5,
			uuid = "97abf3ca-f6e3-487e-a5fa-4a798754abf9",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "gStartCombat=false\nlocal found\nTensorCore.forEachEntity(\"contentid=9250,alive,targetable,attackable\",function(id)\n local e=TensorCore.mGetEntity(id)\n if e and e.attackable then found=id;return false end\nend)\nif found then\n local prior=TensorCore.mGetTarget()\n TensorCore.timelineLogToFile(\"[Cinder target] initial request=\"..found..\" current=\"..tostring(prior and prior.id)..\" StartCombat=false; cast-protected\")\n Player:SetTarget(found);data.cinderTargetRequest={id=found,at=Now()}\nend\nself.used=true",
						conditions = 
						{
							
							{
								"c94be8ba-a3f3-f06d-bc0d-6aaeb4497e1d",
								true,
							},
							
							{
								"c2cabeff-6fc8-cc58-89ad-fa0e6caf4980",
								true,
							},
						},
						name = "Select initial boss without pulling",
						uuid = "c875ef15-a82d-9f43-a310-67aaaaef9f72",
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
						dequeueIfLuaFalse = true,
						localmapid = 897,
						name = "Cinder Drift (897)",
						uuid = "c94be8ba-a3f3-f06d-bc0d-6aaeb4497e1d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local t=TensorCore.mGetTarget();return data.cinderHelpersReady==true and data.cinderTargetRequest==nil and not ActionList:IsCasting() and (t==nil or not t.alive or not t.attackable) and not data.cinderTargetConfirmed",
						name = "Relevant Cinder state",
						uuid = "c2cabeff-6fc8-cc58-89ad-fa0e6caf4980",
						version = 3,
					},
				},
			},
			displayPath = "Cinder Drift/AutoSim",
			name = "[Cinder Drift] Select initial boss without pulling",
			throttleTime = 500,
			timeout = 0.5,
			uuid = "659c5ae7-6485-ffa5-b46b-f63ab8c1ff36",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local R=data.cinderTargetRequest\nlocal t=TensorCore.mGetTarget()\nif t and t.id==R.id then\n TensorCore.timelineLogToFile(\"[Cinder target] confirmed=\"..R.id);data.cinderTargetRequest=nil;data.cinderTargetConfirmed=true\nelseif Now()-R.at>1500 then\n TensorCore.timelineLogToFile(\"[Cinder target] unconfirmed request=\"..R.id..\" no automatic retry\");data.cinderTargetRequest=nil;data.cinderTargetConfirmed=true\nend\nself.used=true",
						conditions = 
						{
							
							{
								"a5faaad1-21dd-a1dc-a8b0-d55f0a2c0f17",
								true,
							},
							
							{
								"49cb7b23-494a-9436-af59-3c2880546533",
								true,
							},
						},
						name = "Confirm initial targeting",
						uuid = "6c40c001-08c3-9bab-aff8-ef6bcef61df9",
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
						dequeueIfLuaFalse = true,
						localmapid = 897,
						name = "Cinder Drift (897)",
						uuid = "a5faaad1-21dd-a1dc-a8b0-d55f0a2c0f17",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.cinderTargetRequest~=nil",
						name = "Relevant Cinder state",
						uuid = "49cb7b23-494a-9436-af59-3c2880546533",
						version = 3,
					},
				},
			},
			displayPath = "Cinder Drift/AutoSim",
			name = "[Cinder Drift] Confirm initial targeting",
			throttleTime = 250,
			timeout = 0.5,
			uuid = "1923355e-d9d2-a088-9ebf-5e392c2d745f",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local C=TrialsCinder\nlocal visible=GUI:Begin(\"Cinder Drift - AutoSim\",true)\nif visible then\n local function check(key,label)\n  local value,changed=GUI:Checkbox(label,C[key]);if changed then C[key]=value;C.save() end\n end\n check(\"autoSim\",\"Enable two-phase AutoSim forecast\")\n check(\"draws\",\"Show critical hazard draws and timers\")\n check(\"movement\",\"Forecast conservative caster movement\")\n if GUI:IsItemHovered() then GUI:SetTooltip(\"Short estimates around dodges from this clear and mechanic casts; not a claim that every player must move for the whole window.\") end\n check(\"blockComets\",\"Block DoTs on comets\")\n check(\"blockImages\",\"Also block DoTs on Raven's Images\")\n if GUI:IsItemHovered() then GUI:SetTooltip(\"Images lasted 20-25 seconds in the sampled clear. Off by default because DoTs can be useful; comets lasted about 7-17 seconds.\") end\n local v,changed=GUI:InputFloat(\"P1 duration (seconds)\",C.killP1,5,15,\"%.1f\");if changed then C.killP1=math.max(30,math.min(600,v));C.save() end\n v,changed=GUI:InputFloat(\"P2 duration (seconds)\",C.killP2,5,15,\"%.1f\");if changed then C.killP2=math.max(30,math.min(600,v));C.save() end\n GUI:TextWrapped(\"No countdown required. Transition is Stun; native phase-two targetability corrects it. Estimates apply next pull. One sampled clear: P1 179.6s, transition 61.6s, P2 169.5s.\")\nend\nGUI:End();self.used=true",
						conditions = 
						{
							
							{
								"f56c7148-e685-ead6-acc1-216120f7d638",
								true,
							},
							
							{
								"3346e9a0-db76-b831-8fb6-3feb253b8054",
								true,
							},
						},
						name = "Settings",
						uuid = "092243dd-d51e-3854-9072-7ef43ad1765e",
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
						localmapid = 897,
						name = "Cinder Drift (897)",
						uuid = "f56c7148-e685-ead6-acc1-216120f7d638",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return TrialsCinder~=nil",
						name = "Relevant Cinder state",
						uuid = "3346e9a0-db76-b831-8fb6-3feb253b8054",
						version = 3,
					},
				},
			},
			displayPath = "Cinder Drift/AutoSim",
			eventType = 13,
			name = "[Cinder Drift] Settings",
			timeout = 2,
			uuid = "06582f9e-666d-56db-89ae-381b6484bbbf",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local p=TensorCore.mGetPlayer()\nlocal api=TensorCore.API.TensorACR\nTrialsCinderDots=TrialsCinderDots or {entries={}}\nlocal H=TrialsCinderDots\nlocal eligible=p and p.localmapid==897 and TrialsCinder~=nil\nlocal wanted={}\nif eligible then wanted[731]=TrialsCinder.blockComets;wanted[9254]=TrialsCinder.blockImages end\nfor cid,r in pairs(H.entries) do\n if not eligible or p.job~=r.job or not wanted[cid] then\n  local e=r.entry\n  if e.enabled==true and e.allowIfTarget==false and e.allowSmartDoT==false then\n   if r.created then\n    e.enabled=false\n    if p and p.job==r.job and api.getBlacklistEntry(cid) then local current=api.addBlacklistEntry(cid);if current==e then api.deleteBlacklistEntry(cid) end end\n   else e.enabled=r.enabled;e.allowIfTarget=r.target;e.allowSmartDoT=r.smart end\n  end\n  H.entries[cid]=nil\n end\nend\nif eligible then for cid,on in pairs(wanted) do if on and not H.entries[cid] then\n local prior=api.getBlacklistEntry(cid)\n local e=api.addBlacklistEntry(cid,cid==731 and \"[Trials] Cinder Drift comets\" or \"[Trials] Raven's Image\")\n if e then\n  H.entries[cid]={entry=e,created=not prior,enabled=e.enabled,target=e.allowIfTarget,smart=e.allowSmartDoT,job=p.job}\n  e.enabled=true;e.allowIfTarget=false;e.allowSmartDoT=false\n end\nend end end\nself.used=true",
						conditions = 
						{
							
							{
								"05479214-e8fb-ae64-a1c1-9c87ebe176d5",
								true,
							},
						},
						name = "Owned DoT exclusions and restoration",
						uuid = "76fb9b76-20da-faab-a74e-f49f43a7e863",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nlocal H=TrialsCinderDots\nif H and next(H.entries)~=nil then\n if not p or p.localmapid~=897 then return true end\n for cid,r in pairs(H.entries) do\n  if p.job~=r.job or not TrialsCinder or (cid==731 and not TrialsCinder.blockComets) or (cid==9254 and not TrialsCinder.blockImages) then return true end\n end\nend\nif not p or p.localmapid~=897 or not TrialsCinder then return false end\nreturn (TrialsCinder.blockComets and (not H or not H.entries[731])) or (TrialsCinder.blockImages and (not H or not H.entries[9254]))",
						dequeueIfLuaFalse = true,
						name = "Duty options or owned blacklist cleanup",
						uuid = "05479214-e8fb-ae64-a1c1-9c87ebe176d5",
						version = 3,
					},
				},
			},
			displayPath = "Cinder Drift/AutoSim",
			name = "[Cinder Drift] Owned DoT exclusions and restoration",
			throttleTime = 500,
			timeout = 0.5,
			uuid = "49ede4a5-8f0e-e3dc-b2f9-46dbff3f973c",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local S=data.cinderForecast\nif S then for _,id in ipairs(S.ids) do TensorCore.API.TensorACR.removeAutoSimPhase(id) end end\ndata.cinderForecast=nil;data.cinderHelpersReady=nil;data.cinderTargetRequest=nil;data.cinderTargetConfirmed=nil\nself.used=true\ndata.cinderPhase=nil;data.cinderP2Entity=nil",
						conditions = 
						{
							
							{
								"c6bc89b0-6638-4d91-addb-a152abafc47f",
								true,
							},
						},
						name = "Reset owned forecast on Wipe",
						uuid = "78532a86-fff8-5e74-92a5-8f961b1fe314",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.cinderForecast~=nil or data.cinderHelpersReady==true",
						dequeueIfLuaFalse = true,
						name = "Relevant Cinder state",
						uuid = "c6bc89b0-6638-4d91-addb-a152abafc47f",
						version = 3,
					},
				},
			},
			displayPath = "Cinder Drift/AutoSim",
			eventType = 9,
			name = "[Cinder Drift] Reset owned forecast on Wipe",
			timeout = 2,
			uuid = "60af6d45-c8d3-ae5c-8ff9-6b26bb8aa506",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local S=data.cinderForecast\nif S then for _,id in ipairs(S.ids) do TensorCore.API.TensorACR.removeAutoSimPhase(id) end end\ndata.cinderForecast=nil;data.cinderHelpersReady=nil;data.cinderTargetRequest=nil;data.cinderTargetConfirmed=nil\nself.used=true\ndata.cinderPhase=nil;data.cinderP2Entity=nil",
						conditions = 
						{
							
							{
								"2f8fb530-f069-e1fe-944b-5e54fc61a6db",
								true,
							},
						},
						name = "Reset owned forecast on MapChange",
						uuid = "96f79e47-b602-2d6b-97c0-de69684e8a5e",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.cinderForecast~=nil or data.cinderHelpersReady==true",
						dequeueIfLuaFalse = true,
						name = "Relevant Cinder state",
						uuid = "2f8fb530-f069-e1fe-944b-5e54fc61a6db",
						version = 3,
					},
				},
			},
			displayPath = "Cinder Drift/AutoSim",
			eventType = 11,
			name = "[Cinder Drift] Reset owned forecast on MapChange",
			timeout = 2,
			uuid = "139fd4bf-e641-c967-877c-b86f192097c5",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local S=data.cinderForecast\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nif eventArgs.isTargetable==false then S.flight={now,now+7.25}\nelseif S.flight then S.flight[2]=now end\nS.publish();self.used=true",
						conditions = 
						{
							
							{
								"54e19ef8-186b-3f80-bc54-9eedd86e15a5",
								true,
							},
							
							{
								"5025ab74-73a9-0bb9-aca0-6c18c2142e59",
								true,
							},
						},
						name = "Correct flight boundaries",
						uuid = "b91b3647-f6cc-5b4f-a30b-8d01d4a67c8d",
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
						dequeueIfLuaFalse = true,
						localmapid = 897,
						uuid = "54e19ef8-186b-3f80-bc54-9eedd86e15a5",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local S=data.cinderForecast;return S~=nil and S.p1End==nil and S.p2==nil and eventArgs.entityContentID==9250 and eventArgs.entityID==S.p1Entity and (S.flight~=nil or TensorCore.API.TensorACR.getAutoSimTime()<150)",
						dequeueIfLuaFalse = true,
						name = "Phase-one boss flight",
						uuid = "5025ab74-73a9-0bb9-aca0-6c18c2142e59",
						version = 3,
					},
				},
			},
			displayPath = "Cinder Drift/AutoSim",
			eventType = 26,
			name = "[Cinder Drift] Resync Ravensflight downtime",
			timeout = 2,
			uuid = "f8e8c831-59be-6a35-8774-90e481b2a4b3",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Cinder Drift",
			name = "Draws",
			uuid = "3eb28bc4-f2d8-ba62-8aec-1cbedd2f6a43",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local e=eventArgs\nlocal shapes={[20071]=\"circle\",[19092]=\"circle\",[19093]=\"circle\",[19714]=\"circle\",[19715]=\"circle\",[19141]=\"stack\",[19139]=\"circle\",[19142]=\"rect\",[19132]=\"rect\"}\nlocal kind=shapes[e.aoeID]\nlocal ms=math.floor(e.startTime+e.duration*1000-Now())\nif ms>0 and kind then\n local drawer=TensorCore.getStaticDrawer(kind==\"stack\" and 0x4033FF33 or 0x663333FF,2)\n if kind==\"rect\" then drawer:addTimedRect(ms,e.x,e.y,e.z,e.aoeLength,e.aoeWidth,e.heading,0,false,true)\n else drawer:addTimedCircle(ms,e.x,e.y,e.z,e.aoeLength,0,false,kind~=\"stack\") end\n AnyoneCore.addWorldTextCountdown(ms,{x=e.x,y=e.y+1,z=e.z},0xFFFFFFFF,true,1.1)\nend\nself.used=true",
						conditions = 
						{
							
							{
								"06f73460-2895-24ea-a346-e7b2eaf32309",
								true,
							},
							
							{
								"15fe203d-71f3-9404-95b4-65711532f58d",
								true,
							},
						},
						name = "Native hazard draws and countdowns",
						uuid = "6bad6e18-e4ce-e276-b8b8-62f3b9724d0f",
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
						dequeueIfLuaFalse = true,
						localmapid = 897,
						name = "Cinder Drift (897)",
						uuid = "06f73460-2895-24ea-a346-e7b2eaf32309",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return TrialsCinder~=nil and TrialsCinder.draws==true and (eventArgs.aoeID==20071 or eventArgs.aoeID==19092 or eventArgs.aoeID==19093 or eventArgs.aoeID==19714 or eventArgs.aoeID==19715 or eventArgs.aoeID==19141 or eventArgs.aoeID==19139 or eventArgs.aoeID==19142 or eventArgs.aoeID==19132)",
						dequeueIfLuaFalse = true,
						name = "Relevant Cinder state",
						uuid = "15fe203d-71f3-9404-95b4-65711532f58d",
						version = 3,
					},
				},
			},
			displayPath = "Cinder Drift/Draws",
			eventType = 18,
			name = "[Cinder Drift] Native hazard draws and countdowns",
			timeout = 2,
			uuid = "8406425b-3119-b025-8377-a32abe0c2dd2",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local e=TensorCore.mGetEntity(eventArgs.entityID)\nif e then\n local ms=math.floor((eventArgs.channelTimeMax+11.9)*1000)\n TensorCore.getStaticDrawer(0x663333FF,2):addTimedCircle(ms,e.pos.x,e.pos.y,e.pos.z,8,math.max(0,ms-3000),false,true)\n AnyoneCore.addWorldTextCountdown(ms,{x=e.pos.x,y=e.pos.y+1.5,z=e.pos.z},0xFFFFFFFF,true,1.1)\nend\nself.used=true",
						conditions = 
						{
							
							{
								"178bd763-a170-5806-b082-018a0313df6c",
								true,
							},
							
							{
								"36dfc7b2-6935-0cd1-9479-c1c154161b4f",
								true,
							},
						},
						name = "Comet burst warning",
						uuid = "7c08a778-48bf-5f0f-9726-afaf6bd39c73",
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
						dequeueIfLuaFalse = true,
						localmapid = 897,
						name = "Cinder Drift (897)",
						uuid = "178bd763-a170-5806-b082-018a0313df6c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return TrialsCinder~=nil and TrialsCinder.draws==true and eventArgs.spellID==20011 and eventArgs.entityContentID==731",
						dequeueIfLuaFalse = true,
						name = "Relevant Cinder state",
						uuid = "36dfc7b2-6935-0cd1-9479-c1c154161b4f",
						version = 3,
					},
				},
			},
			displayPath = "Cinder Drift/Draws",
			eventType = 3,
			name = "[Cinder Drift] Comet burst warning",
			timeout = 2,
			uuid = "0f9fc24f-f53a-1d89-b0af-22c141a39574",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "The Limitless Blue (Hard)",
			uuid = "c79e9848-ae74-9696-96ec-f715d0af8f95",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Limitless Blue (Hard)",
			name = "Draws",
			uuid = "24e8ddae-2689-9de3-a32b-ec15aa6b38fd",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local e=eventArgs\nlocal ms=math.floor(e.startTime+e.duration*1000-Now())\nif ms>0 then\n    local drawer=TensorCore.getStaticDrawer(0x803333FF,2)\n    if e.aoeID==4928 then\n        drawer:addTimedRect(ms,e.x,e.y,e.z,30,6,e.heading,0,false,true)\n    else\n        local radius=e.aoeID==4936 and 4 or 5\n        drawer:addTimedCircle(ms,e.x,e.y,e.z,radius,0,false,true)\n    end\nend\nself.used=true",
						conditions = 
						{
							
							{
								"c1dd3f0d-aefc-4775-91f4-575d6cf1441b",
								true,
							},
							
							{
								"05062fe7-0764-fa9d-8abd-3fbeaed28892",
								true,
							},
						},
						name = "Bismarck - cast hazards",
						uuid = "cc418541-0387-d5c4-ab14-59051cb87444",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=436 then return false end\nlocal id=eventArgs.aoeID\nreturn id==4928 or id==4929 or id==4932 or id==4935 or id==4936",
						name = "Limitless Blue and hazards",
						uuid = "05062fe7-0764-fa9d-8abd-3fbeaed28892",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nlocal maps={[436]=true}\nreturn not not (p and maps[p.localmapid])",
						dequeueIfLuaFalse = true,
						name = "Duty map",
						uuid = "c1dd3f0d-aefc-4775-91f4-575d6cf1441b",
						version = 3,
					},
				},
			},
			displayPath = "The Limitless Blue (Hard)/Draws",
			eventType = 18,
			name = "Bismarck - cast hazards",
			uuid = "1d2f38ae-f863-8833-9ac2-e882097a847b",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.bismarckClouds=data.bismarckClouds or {}\ndata.bismarckClouds[eventArgs.entityID]=true\nself.used=true",
						conditions = 
						{
							
							{
								"f7231332-1fbb-40e9-886b-7fb447d8c9a7",
								true,
							},
							
							{
								"50b1760e-6845-02a6-81d5-e471625295cd",
								true,
							},
						},
						name = "Bismarck - track Funnel Clouds",
						uuid = "ef19a4ab-cb25-7222-b92d-4267db97a1f9",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=436 then return false end\nreturn eventArgs.entityContentID==3658",
						name = "Limitless Blue and cloud spawn",
						uuid = "50b1760e-6845-02a6-81d5-e471625295cd",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nlocal maps={[436]=true}\nreturn not not (p and maps[p.localmapid])",
						dequeueIfLuaFalse = true,
						name = "Duty map",
						uuid = "f7231332-1fbb-40e9-886b-7fb447d8c9a7",
						version = 3,
					},
				},
			},
			displayPath = "The Limitless Blue (Hard)/Draws",
			eventType = 5,
			name = "Bismarck - track Funnel Clouds",
			uuid = "68d7266d-97b6-9c41-b3b7-83e5b498e07e",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local clouds=data.bismarckClouds\nif clouds then clouds[eventArgs.entityID]=nil end\nself.used=true",
						conditions = 
						{
							
							{
								"79f0aec6-ee2b-4474-99bf-d4c8ab152695",
								true,
							},
							
							{
								"78603b2b-a2f5-753b-adb3-c5afa8a8ea0c",
								true,
							},
						},
						name = "Bismarck - remove departed Funnel Clouds",
						uuid = "50e040d7-4446-a13a-8a93-977a25371db8",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=436 then return false end\nreturn data.bismarckClouds~=nil and data.bismarckClouds[eventArgs.entityID]==true",
						name = "Limitless Blue and cloud departure",
						uuid = "78603b2b-a2f5-753b-adb3-c5afa8a8ea0c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nlocal maps={[436]=true}\nreturn not not (p and maps[p.localmapid])",
						dequeueIfLuaFalse = true,
						name = "Duty map",
						uuid = "79f0aec6-ee2b-4474-99bf-d4c8ab152695",
						version = 3,
					},
				},
			},
			displayPath = "The Limitless Blue (Hard)/Draws",
			eventType = 6,
			name = "Bismarck - remove departed Funnel Clouds",
			uuid = "3cf5beb4-d303-dd10-8f1a-161294f8a5d1",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local clouds=data.bismarckClouds\nif not clouds then return end\nlocal drawer=TensorCore.getStaticDrawer(0x803333FF,2)\nfor id in pairs(clouds) do\n    local cloud=TensorCore.mGetEntity(id)\n    if cloud and cloud.pos then\n        drawer:addCircle(cloud.pos.x,cloud.pos.y,cloud.pos.z,4.5,false)\n    end\nend\nself.used=true",
						conditions = 
						{
							
							{
								"0b9d1cfc-1173-0122-8ae2-5c956344cc75",
								true,
							},
						},
						name = "Bismarck - moving Funnel Cloud circles",
						uuid = "2affd0ec-df4d-e26d-b358-ceeda6bd19ec",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=436 then return false end\nreturn data.bismarckClouds~=nil and next(data.bismarckClouds)~=nil",
						name = "Limitless Blue and cloud circles",
						uuid = "0b9d1cfc-1173-0122-8ae2-5c956344cc75",
						version = 3,
					},
				},
			},
			displayPath = "The Limitless Blue (Hard)/Draws",
			eventType = 12,
			name = "Bismarck - moving Funnel Cloud circles",
			uuid = "051d4036-7d43-ce1b-9ead-702fbb69ce88",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local e=eventArgs\nif e.isTargetable then\n    data.bismarckBoarding=e.entityID\nelseif data.bismarckBoarding==e.entityID then\n    data.bismarckBoarding=nil\nend\nself.used=true",
						conditions = 
						{
							
							{
								"d2201162-2b87-4ed9-9ad9-72b105722679",
								true,
							},
							
							{
								"b7da2d2f-16fe-6173-a9c1-eeed3181cb49",
								true,
							},
						},
						name = "Bismarck - track boarding windows",
						uuid = "3923433d-853e-38dd-9f5c-001db0df3a4b",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=436 then return false end\nlocal id=eventArgs.entityContentID\nreturn id==3656 or id==3657",
						name = "Limitless Blue and boarding capture",
						uuid = "b7da2d2f-16fe-6173-a9c1-eeed3181cb49",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nlocal maps={[436]=true}\nreturn not not (p and maps[p.localmapid])",
						dequeueIfLuaFalse = true,
						name = "Duty map",
						uuid = "d2201162-2b87-4ed9-9ad9-72b105722679",
						version = 3,
					},
				},
			},
			displayPath = "The Limitless Blue (Hard)/Draws",
			eventType = 26,
			name = "Bismarck - track boarding windows",
			uuid = "e240b796-5eb4-52f6-8d23-72e2093b9a76",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local id=data.bismarckBoarding\nif not id then return end\nlocal shell=TensorCore.mGetEntity(id)\nif shell and shell.targetable then\n    local drawer=TensorCore.getStaticDrawer(0x8040FF40,2)\n    drawer:addCircle(5,0.07,-4.5,2,false)\nend\nself.used=true",
						conditions = 
						{
							
							{
								"39b0daa4-0eed-6e53-a0e9-ef4ab59d2264",
								true,
							},
						},
						name = "Bismarck - boarding destination",
						uuid = "45e4ec83-c7bc-08b1-91bc-c075e7cd4fb2",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=436 then return false end\nreturn data.bismarckBoarding~=nil and not TensorCore.hasBuff(p,719)",
						name = "Limitless Blue and boarding circle",
						uuid = "39b0daa4-0eed-6e53-a0e9-ef4ab59d2264",
						version = 3,
					},
				},
			},
			displayPath = "The Limitless Blue (Hard)/Draws",
			eventType = 12,
			name = "Bismarck - boarding destination",
			uuid = "f48c451a-66ff-6baa-860e-36d59627fbdf",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Limitless Blue (Hard)",
			name = "AutoSim",
			uuid = "c3e1bbf2-30d1-1763-aa37-a2f64e27e934",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local api=TensorCore.API.TensorACR\nlocal t=api.getAutoSimTime()\nif type(t)~=\"number\" or t<0 or t>20 then return end\napi.setAutoSimKillTime(273)\napi.addAutoSimUncertainty(0,40)\n-- One synced pull. Only forecast gaps with no primary attackable target.\nfor _,window in ipairs({{0,13.4},{33.5,60.7},{81.1,87.5},{166.4,188.6},{215.9,254}}) do\n    local start,finish=window[1],window[2]\n    if finish>math.max(t,start) then\n        api.addAutoSimPhase(\"FullDowntime\",math.max(t,start),finish,1)\n    end\nend\ndata.bismarckForecast=true\nself.used=true",
						conditions = 
						{
							
							{
								"a69a50bb-b350-bea2-a083-7590de82383c",
								true,
							},
						},
						name = "Bismarck - AutoSim forecast",
						uuid = "5f820bc3-a7a1-12d0-bc9d-202b77175383",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=436 then return false end\nif p.incombat~=true or data.bismarckForecast==true then return false end\n-- a late join can never load this forecast\nlocal ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn not not (ok and type(t)==\"number\" and t>=0 and t<=20)",
						dequeueIfLuaFalse = true,
						name = "Limitless Blue and forecast",
						uuid = "a69a50bb-b350-bea2-a083-7590de82383c",
						version = 3,
					},
				},
			},
			displayPath = "The Limitless Blue (Hard)/AutoSim",
			name = "Bismarck - AutoSim forecast",
			throttleTime = 500,
			uuid = "cb61a99f-b473-22ea-a1ba-0bdfe3b46372",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local settings=AnyoneCore and AnyoneCore.Settings\nif settings then\n    if settings.DutyHelper then settings.DutyHelper.enabled=false end\n    if settings.PrepullHelper then settings.PrepullHelper.enabled=false end\nend\ngStartCombat=false\ndata.bismarckSetup=true\nself.used=true",
						conditions = 
						{
							
							{
								"85a0042e-dfc4-755a-ada9-1a430aeac946",
								true,
							},
						},
						name = "Bismarck - disable helpers and Start Combat",
						uuid = "a3d01e08-9bb0-8796-8d2e-c385da9b863f",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=436 then return false end\nreturn data.bismarckSetup~=true",
						dequeueIfLuaFalse = true,
						name = "Limitless Blue and setup",
						uuid = "85a0042e-dfc4-755a-ada9-1a430aeac946",
						version = 3,
					},
				},
			},
			displayPath = "The Limitless Blue (Hard)/AutoSim",
			name = "Bismarck - disable helpers and Start Combat",
			throttleTime = 500,
			uuid = "dc33186c-b142-ef62-b922-e082931c1f6a",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.bismarckOpeningSeen=true\ngStartCombat=false\nlocal current=TensorCore.mGetTarget()\nlocal target=TensorCore.mGetEntity(eventArgs.entityID)\nif target and target.alive and target.attackable and target.targetable\n    and not (current and current.alive and current.attackable and current.targetable)\n    and not ActionList:IsCasting() then\n    Player:SetTarget(target.id)\nend\nself.used=true",
						conditions = 
						{
							
							{
								"3d09313e-a893-4ab3-83f6-b4b6de94f18a",
								true,
							},
							
							{
								"376be8f3-0191-c8e0-b2eb-273177b83d24",
								true,
							},
						},
						name = "Bismarck - target first Vundu",
						uuid = "978a0f39-90bb-350c-b470-3bc399fdac29",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=436 then return false end\nreturn eventArgs.entityContentID==3652 and eventArgs.isTargetable==true and data.bismarckOpeningSeen~=true",
						name = "Limitless Blue and opening target",
						uuid = "376be8f3-0191-c8e0-b2eb-273177b83d24",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nlocal maps={[436]=true}\nreturn not not (p and maps[p.localmapid])",
						dequeueIfLuaFalse = true,
						name = "Duty map",
						uuid = "3d09313e-a893-4ab3-83f6-b4b6de94f18a",
						version = 3,
					},
				},
			},
			displayPath = "The Limitless Blue (Hard)/AutoSim",
			eventType = 26,
			name = "Bismarck - target first Vundu",
			uuid = "ec2ef419-7043-69c2-a314-78ac8bfac2ed",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player then self.used = true; return end\n\nlocal contentID = 3650\nlocal label = \"[Trials] Vapor Bubble\"\nlocal api = TensorCore.API.TensorACR\nlocal eligible = player.localmapid == 436 and (player.job == 23 or player.job == 25)\nlocal state = TrialsBismarckVaporBubbleDoT\n\n-- Restore the previous entry on leaving The Limitless Blue or changing jobs.\n-- Keep this state outside pull data so a wipe does not lose the original values.\nif state and (not eligible or state.job ~= player.job) then\n    local entry = state.entry\n    if entry.enabled and entry.allowIfTarget == false and entry.allowSmartDoT == false then\n        if state.created then\n            entry.enabled = false\n            if player.job == state.job and api.getBlacklistEntry(contentID) then\n                local current = api.addBlacklistEntry(contentID)\n                if current == entry and current.name == label then\n                    api.deleteBlacklistEntry(contentID)\n                end\n            end\n        else\n            entry.enabled = state.enabled\n            entry.allowIfTarget = state.allowIfTarget\n            entry.allowSmartDoT = state.allowSmartDoT\n        end\n    end\n    TrialsBismarckVaporBubbleDoT = nil\n    state = nil\nend\n\nif eligible and not state then\n    local supported, exists = pcall(api.getBlacklistEntry, contentID)\n    if supported then\n        local ok, entry = pcall(api.addBlacklistEntry, contentID, label)\n        if ok and entry then\n            TrialsBismarckVaporBubbleDoT = {\n                job = player.job, entry = entry, created = not exists,\n                enabled = entry.enabled, allowIfTarget = entry.allowIfTarget,\n                allowSmartDoT = entry.allowSmartDoT,\n            }\n            entry.enabled = true\n            entry.allowIfTarget = false\n            entry.allowSmartDoT = false\n        end\n    end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"1ccb97c6-ad74-d4a7-99ae-75293265da4c",
								true,
							},
						},
						name = "Bismarck - Vapor Bubble DoT blacklist",
						uuid = "00c7c261-092f-979c-ae14-75e8619f7809",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player then return false end\nlocal state = TrialsBismarckVaporBubbleDoT\nlocal eligible = player.localmapid == 436 and (player.job == 23 or player.job == 25)\nif state then\n    return not eligible or player.job ~= state.job\nend\nreturn eligible",
						dequeueIfLuaFalse = true,
						name = "Vapor Bubble blacklist setup or cleanup",
						uuid = "1ccb97c6-ad74-d4a7-99ae-75293265da4c",
						version = 3,
					},
				},
			},
			displayPath = "The Limitless Blue (Hard)/AutoSim",
			name = "Bismarck - Vapor Bubble DoT blacklist",
			throttleTime = 1000,
			uuid = "11561984-b0c6-1269-9ca9-d7b0eb024cec",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "The Seat of Sacrifice",
			uuid = "c7bc1aac-e00f-4a92-967a-ae5f6521cc5f",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Seat of Sacrifice",
			name = "AutoSim",
			uuid = "9cbfa5f5-7f49-c470-8cfb-9f980d50e18d",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=922 then return end\nif not data.seatSetup then\n    local config=AnyoneCore and AnyoneCore.Settings\n    if config then\n        if config.DutyHelper then config.DutyHelper.enabled=false end\n        if config.PrepullHelper then config.PrepullHelper.enabled=false end\n    end\n    gStartCombat=false\n    data.seatSetup=true\nend\nif not p.incombat and not data.seatTargeted and not ActionList:IsCasting() then\n    local current=TensorCore.mGetTarget()\n    if current and current.alive and current.targetable and current.attackable then\n        data.seatTargeted=true\n    else\n        for _,boss in pairs(TensorCore.getEntityGroupList(\"ContentID\",{contentid=9462}) or {}) do\n            if boss.alive and boss.targetable and boss.attackable then\n                gStartCombat=false\n                TensorCore.timelineLogToFile(\"[Seat] Warrior of Light target request=\"..boss.id)\n                Player:SetTarget(boss.id)\n                data.seatTargeted=true\n                break\n            end\n        end\n    end\nend\nself.used=true",
						conditions = 
						{
							
							{
								"3ed372a2-f54d-ef60-a520-a9ff20699264",
								true,
							},
						},
						name = "[Seat] Initial target and helper setup",
						uuid = "7fb74e5f-67eb-7a0b-9cdb-4e84e3277fde",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=922 then return false end\nreturn data.seatSetup~=true or (not p.incombat and data.seatTargeted~=true)",
						dequeueIfLuaFalse = true,
						name = "[Seat] Initial target and helper setup gate",
						uuid = "3ed372a2-f54d-ef60-a520-a9ff20699264",
						version = 3,
					},
				},
			},
			displayPath = "The Seat of Sacrifice/AutoSim",
			name = "[Seat] Initial target and helper setup",
			throttleTime = 750,
			uuid = "a5e509cc-7b4d-a4c6-8f15-4f1d9ed5ca40",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local api=TensorCore.API.TensorACR\nlocal t=api.getAutoSimTime()\nif type(t)~=\"number\" or t<0 or t>20 then return end\nlocal function publish(leave, cutsceneStart, cutsceneEnd, resume, finish)\n    api.clearAutoSimUncertainty()\n    api.clearAutoSimPhases(\"FullDowntime\")\n    api.clearAutoSimPhases(\"Stun\")\n    api.setAutoSimKillTime(finish)\n    api.addAutoSimUncertainty(0,40)\n    if resume>leave then api.addAutoSimPhase(\"FullDowntime\",leave,resume,1) end\n    if cutsceneEnd>cutsceneStart then api.addAutoSimPhase(\"Stun\",cutsceneStart,cutsceneEnd,1) end\nend\ndata.seatForecast={publish=publish,leave=136.907,cutsceneStart=194.235,cutsceneEnd=230.328,resume=295.688}\npublish(136.907,194.235,230.328,295.688,585)\nself.used=true",
						conditions = 
						{
							
							{
								"42a05778-9af4-9388-9691-80a636233085",
								true,
							},
						},
						name = "[Seat] AutoSim forecast and cutscene stun",
						uuid = "67a3b20f-bfaa-2dc9-b444-97f78125735a",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=922 then return false end\nif p.incombat~=true or data.seatForecast~=nil then return false end\n-- a late join can never load this forecast\nlocal ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn not not (ok and type(t)==\"number\" and t>=0 and t<=20)",
						dequeueIfLuaFalse = true,
						name = "[Seat] AutoSim forecast and cutscene stun gate",
						uuid = "42a05778-9af4-9388-9691-80a636233085",
						version = 3,
					},
				},
			},
			displayPath = "The Seat of Sacrifice/AutoSim",
			name = "[Seat] AutoSim forecast and cutscene stun",
			throttleTime = 500,
			uuid = "1cf92a20-1a1f-448c-83bd-2a7363512e7a",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local f=data.seatForecast\nif not f then return end\nlocal t=TensorCore.API.TensorACR.getAutoSimTime()\nif type(t)~=\"number\" or t<90 or t>210 then return end\nlocal offset=t-145.125\nf.synced=true\nf.leave=f.leave+offset\nf.cutsceneStart=f.cutsceneStart+offset\nf.cutsceneEnd=f.cutsceneEnd+offset\nf.resume=f.resume+offset\nf.publish(f.leave,f.cutsceneStart,f.cutsceneEnd,f.resume,585+offset)\nself.used=true",
						conditions = 
						{
							
							{
								"9cfcb503-4b65-4589-9a7f-80fd52cfdd51",
								true,
							},
							
							{
								"97beb2e4-eb9d-e835-b19b-e48f7394a8f0",
								true,
							},
						},
						name = "[Seat] Sync intermission to Absolute Teleport",
						uuid = "b1f20c53-e384-50a0-930d-f626a133ee0b",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=922 then return false end\nreturn eventArgs.spellID==21298 and eventArgs.entityContentID==9462\n    and data.seatForecast~=nil and not data.seatForecast.synced",
						name = "[Seat] Sync intermission to Absolute Teleport gate",
						uuid = "97beb2e4-eb9d-e835-b19b-e48f7394a8f0",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nlocal maps={[922]=true}\nreturn not not (p and maps[p.localmapid])",
						dequeueIfLuaFalse = true,
						name = "Duty map",
						uuid = "9cfcb503-4b65-4589-9a7f-80fd52cfdd51",
						version = 3,
					},
				},
			},
			displayPath = "The Seat of Sacrifice/AutoSim",
			eventType = 2,
			name = "[Seat] Sync intermission to Absolute Teleport",
			uuid = "058a1f7f-f049-31e5-9405-0a6f7fda866e",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local f=data.seatForecast\nif not f or Argus.getEntityModel(eventArgs.entityID)~=11742 then return end\nlocal t=TensorCore.API.TensorACR.getAutoSimTime()\nif type(t)~=\"number\" or t<=f.cutsceneEnd then return end\nf.returned=true\nf.publish(f.leave,f.cutsceneStart,f.cutsceneEnd,t,t+289)\nself.used=true",
						conditions = 
						{
							
							{
								"1e7c2933-b6ca-4b81-9c1d-9ed543c822a5",
								true,
							},
							
							{
								"98b437a8-84f7-934d-b568-f831a428907c",
								true,
							},
						},
						name = "[Seat] Sync phase two return",
						uuid = "1563554f-6b0a-20a3-b693-b850888037ca",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=922 then return false end\nlocal e=eventArgs\nreturn e.isTargetable==true and e.entityContentID==9462 and data.seatForecast~=nil\n    and data.seatForecast.synced==true and not data.seatForecast.returned",
						name = "[Seat] Sync phase two return gate",
						uuid = "98b437a8-84f7-934d-b568-f831a428907c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nlocal maps={[922]=true}\nreturn not not (p and maps[p.localmapid])",
						dequeueIfLuaFalse = true,
						name = "Duty map",
						uuid = "1e7c2933-b6ca-4b81-9c1d-9ed543c822a5",
						version = 3,
					},
				},
			},
			displayPath = "The Seat of Sacrifice/AutoSim",
			eventType = 26,
			name = "[Seat] Sync phase two return",
			uuid = "829c3bd7-5b30-fa5d-8b79-80f126a46918",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Log 22-11: boss untargetable at 136.907 s (model 11741), 8 s before the Absolute Teleport cast ends. An earlier pull left at 115.5 s.\nlocal f=data.seatForecast\nif not f or Argus.getEntityModel(eventArgs.entityID)~=11741 then return end\nlocal t=TensorCore.API.TensorACR.getAutoSimTime()\nif type(t)~=\"number\" or t<60 or t>210 then return end\nlocal offset=t-136.907\nf.synced=true\nf.leave=f.leave+offset\nf.cutsceneStart=f.cutsceneStart+offset\nf.cutsceneEnd=f.cutsceneEnd+offset\nf.resume=f.resume+offset\nf.publish(f.leave,f.cutsceneStart,f.cutsceneEnd,f.resume,585+offset)\nself.used=true",
						conditions = 
						{
							
							{
								"9ee023f6-48ad-32a3-a92e-257a31580b99",
								true,
							},
						},
						name = "Shift the forecast to the real departure",
						uuid = "f831cfd4-2dc5-4fbc-af4b-9932d016f6eb",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=922 then return false end\nlocal e=eventArgs\nreturn e.isTargetable==false and e.entityContentID==9462 and data.seatForecast~=nil and not data.seatForecast.synced",
						dequeueIfLuaFalse = true,
						name = "Boss became untargetable before the first sync",
						uuid = "9ee023f6-48ad-32a3-a92e-257a31580b99",
						version = 3,
					},
				},
			},
			displayPath = "The Seat of Sacrifice/AutoSim",
			eventType = 26,
			name = "[Seat] Sync intermission to boss leaving",
			uuid = "98dd491d-f4c9-0900-a2cc-2eaca49c2315",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Seat of Sacrifice",
			name = "Motion",
			uuid = "a1ff3ee9-9c2d-3fed-81ef-ac98f7d22fde",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local e=eventArgs\nlocal id=e.spellID\nif id==20242 or id==20243 then\n    data.seatImbued=id==20242 and \"stop\" or \"move\"\nelse\n    local mode\n    if id==20270 then mode=\"stop\"\n    elseif id==20269 then mode=\"move\"\n    else mode=data.seatImbued;data.seatImbued=nil end\n    if mode then\n        data.seatMotion={mode=mode,finish=Now()+(e.channelTimeMax+0.3)*1000}\n        AnyoneCore.Shotcall(mode==\"stop\" and \"Stop. No actions\" or \"Keep moving\",true,3,true)\n    end\nend\nself.used=true",
						conditions = 
						{
							
							{
								"0ab388c4-2973-4725-abb3-3b4d6fe4eb04",
								true,
							},
							
							{
								"cdcd79cb-35d0-6155-8310-7b37a40dc654",
								true,
							},
						},
						name = "[Seat] Prepare stop and move cues",
						uuid = "55050eb6-ea59-38f7-8e6f-3960c9d56ce3",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=922 then return false end\nlocal id=eventArgs.spellID\nreturn eventArgs.entityContentID==9462 and (id==20270 or id==20269 or id==20242 or id==20243 or id==20299 or id==20300)",
						name = "[Seat] Prepare stop and move cues gate",
						uuid = "cdcd79cb-35d0-6155-8310-7b37a40dc654",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nlocal maps={[922]=true}\nreturn not not (p and maps[p.localmapid])",
						dequeueIfLuaFalse = true,
						name = "Duty map",
						uuid = "0ab388c4-2973-4725-abb3-3b4d6fe4eb04",
						version = 3,
					},
				},
			},
			displayPath = "The Seat of Sacrifice/Motion",
			eventType = 3,
			name = "[Seat] Prepare stop and move cues",
			uuid = "3f775e8d-781b-24eb-a05a-5f1c9491077b",
			version = 2,
		},
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
								"45161235-5482-018a-ab43-48c93603d717",
								true,
							},
						},
						name = "[Seat] Absolute Fire: stop movement and actions",
						stopAllActions = true,
						stopCasting = true,
						uuid = "5052b431-c0f1-1207-ac24-ce741cb06f8a",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local m=data.seatMotion\nif not m then return end\nSeatFireHold={releaseAt=m.finish+1400,expires=m.finish+7500}\nlocal p=TensorCore.mGetPlayer()\nif p and p.alive and p:IsMoving() then p:Stop() end\nself.used=true",
						conditions = 
						{
							
							{
								"45161235-5482-018a-ab43-48c93603d717",
								true,
							},
						},
						name = "[Seat] Absolute Fire: stop movement and actions",
						uuid = "7559f754-1da1-f971-98c6-5358166fe3d8",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=922 then return false end\nlocal m=data.seatMotion\nif not m or m.mode~=\"stop\" or not p.alive or not p.incombat or SeatFireHold then return false end\nlocal remaining=m.finish-Now()\nreturn remaining>=-350 and remaining<=1000",
						dequeueIfLuaFalse = true,
						name = "[Seat] Absolute Fire: stop movement and actions gate",
						uuid = "45161235-5482-018a-ab43-48c93603d717",
						version = 3,
					},
				},
			},
			displayPath = "The Seat of Sacrifice/Motion",
			name = "[Seat] Absolute Fire: stop movement and actions",
			throttleTime = 100,
			uuid = "bc2b4a9b-6c74-c4b7-8b80-e91f78b48b00",
			version = 2,
		},
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
								"f91881cc-8fae-b5d7-8089-1dafe7c0c379",
								true,
							},
						},
						name = "[Seat] Absolute Fire: release owned stop",
						resumeAllActions = true,
						uuid = "a91af1ef-6534-2b64-9313-af1b93dc44e5",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "SeatFireHold=nil\nself.used=true",
						conditions = 
						{
							
							{
								"f91881cc-8fae-b5d7-8089-1dafe7c0c379",
								true,
							},
						},
						name = "[Seat] Absolute Fire: release owned stop",
						uuid = "84b807ae-2d0c-aa87-9836-a482cffae067",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local hold=SeatFireHold\nif not hold then return false end\nlocal p=TensorCore.mGetPlayer()\nlocal now=Now()\nreturn not p or p.localmapid~=922 or not p.alive or not p.incombat\n    or now>=hold.expires or (now>=hold.releaseAt and not TensorCore.hasBuff(p,960))",
						dequeueIfLuaFalse = true,
						name = "[Seat] Absolute Fire: release owned stop gate",
						uuid = "f91881cc-8fae-b5d7-8089-1dafe7c0c379",
						version = 3,
					},
				},
			},
			displayPath = "The Seat of Sacrifice/Motion",
			name = "[Seat] Absolute Fire: release owned stop",
			throttleTime = 100,
			uuid = "3860d825-3091-f24c-b398-a14ec0f11df1",
			version = 2,
		},
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
								"8b7bae7e-cca5-98fc-b82c-9bb1a748e4b9",
								true,
							},
						},
						name = "[Seat] Absolute Fire: release on OnDeath",
						resumeAllActions = true,
						uuid = "0ca780a5-95dd-5caa-b854-bed2d75fce3f",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "SeatFireHold=nil\nself.used=true",
						conditions = 
						{
							
							{
								"8b7bae7e-cca5-98fc-b82c-9bb1a748e4b9",
								true,
							},
						},
						name = "[Seat] Absolute Fire: release on OnDeath",
						uuid = "fa5bdb7b-f604-cafd-aa89-8b64de8746f0",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return SeatFireHold~=nil",
						dequeueIfLuaFalse = true,
						name = "[Seat] Absolute Fire: release on OnDeath gate",
						uuid = "8b7bae7e-cca5-98fc-b82c-9bb1a748e4b9",
						version = 3,
					},
				},
			},
			displayPath = "The Seat of Sacrifice/Motion",
			eventType = 10,
			name = "[Seat] Absolute Fire: release on OnDeath",
			uuid = "e62efa5c-e99b-3a07-88bf-93d17cb856a3",
			version = 2,
		},
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
								"9ed528b3-f6a3-a8c3-a0a0-44f17ff4cc7f",
								true,
							},
						},
						name = "[Seat] Absolute Fire: release on OnWipe",
						resumeAllActions = true,
						uuid = "57155f44-8c84-b2ed-aea5-b1f7153c64b0",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "SeatFireHold=nil\nself.used=true",
						conditions = 
						{
							
							{
								"9ed528b3-f6a3-a8c3-a0a0-44f17ff4cc7f",
								true,
							},
						},
						name = "[Seat] Absolute Fire: release on OnWipe",
						uuid = "475d186a-798c-8e6f-a7f5-1fa8971bc8ee",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return SeatFireHold~=nil",
						dequeueIfLuaFalse = true,
						name = "[Seat] Absolute Fire: release on OnWipe gate",
						uuid = "9ed528b3-f6a3-a8c3-a0a0-44f17ff4cc7f",
						version = 3,
					},
				},
			},
			displayPath = "The Seat of Sacrifice/Motion",
			eventType = 9,
			name = "[Seat] Absolute Fire: release on OnWipe",
			uuid = "b981a415-278e-2695-8e48-e7c6a7c34317",
			version = 2,
		},
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
								"a74d9ed7-988f-08c7-ab90-b8d52271d305",
								true,
							},
						},
						name = "[Seat] Absolute Fire: release on OnMapChange",
						resumeAllActions = true,
						uuid = "39476c5a-176c-5243-af2d-e99f0f99cde0",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "SeatFireHold=nil\nself.used=true",
						conditions = 
						{
							
							{
								"a74d9ed7-988f-08c7-ab90-b8d52271d305",
								true,
							},
						},
						name = "[Seat] Absolute Fire: release on OnMapChange",
						uuid = "a0c2c8de-337e-a333-b3ef-01c31e76106f",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return SeatFireHold~=nil",
						dequeueIfLuaFalse = true,
						name = "[Seat] Absolute Fire: release on OnMapChange gate",
						uuid = "a74d9ed7-988f-08c7-ab90-b8d52271d305",
						version = 3,
					},
				},
			},
			displayPath = "The Seat of Sacrifice/Motion",
			eventType = 11,
			name = "[Seat] Absolute Fire: release on OnMapChange",
			uuid = "35aa7aca-851e-3a36-a3be-26f36a8485fc",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local m=data.seatMotion\nlocal p=TensorCore.mGetPlayer()\nif not m or not p or not p.alive then return end\nm.jumped=true\nif not p:IsMoving() then\n    if ActionList:IsCasting() then ActionList:StopCasting() end\n    p:Jump()\nend\nself.used=true",
						conditions = 
						{
							
							{
								"0aaf4207-62c6-b066-a4dd-7f1c2cca8898",
								true,
							},
						},
						name = "[Seat] Absolute Blizzard: one jump near resolution",
						uuid = "495980c1-da3b-d516-a228-c17f68195f3d",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=922 then return false end\nlocal m=data.seatMotion\nif not m or m.mode~=\"move\" or m.jumped or not p.alive or not p.incombat or SeatFireHold then return false end\nlocal remaining=m.finish-Now()\nreturn remaining>0 and remaining<=475",
						dequeueIfLuaFalse = true,
						name = "[Seat] Absolute Blizzard: one jump near resolution gate",
						uuid = "0aaf4207-62c6-b066-a4dd-7f1c2cca8898",
						version = 3,
					},
				},
			},
			displayPath = "The Seat of Sacrifice/Motion",
			name = "[Seat] Absolute Blizzard: one jump near resolution",
			throttleTime = 80,
			uuid = "5344c4ea-54f5-a8d4-b61b-a1406fddd032",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.seatMotion=nil\nself.used=true",
						conditions = 
						{
							
							{
								"092e109b-2f60-413f-89c7-54aea660995b",
								true,
							},
							
							{
								"b61d76bf-f88d-b122-95d1-77b42e28d773",
								true,
							},
						},
						name = "[Seat] Clear resolved Fire or Blizzard cue",
						uuid = "c304a943-150f-d0dc-85d2-ddcc1d457c3b",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=922 then return false end\nlocal id=eventArgs.spellID\nreturn eventArgs.entityContentID==9462 and (id==20238 or id==20239) and data.seatMotion~=nil",
						name = "[Seat] Clear resolved Fire or Blizzard cue gate",
						uuid = "b61d76bf-f88d-b122-95d1-77b42e28d773",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nlocal maps={[922]=true}\nreturn not not (p and maps[p.localmapid])",
						dequeueIfLuaFalse = true,
						name = "Duty map",
						uuid = "092e109b-2f60-413f-89c7-54aea660995b",
						version = 3,
					},
				},
			},
			displayPath = "The Seat of Sacrifice/Motion",
			eventType = 2,
			name = "[Seat] Clear resolved Fire or Blizzard cue",
			uuid = "208bfe9d-14c2-9411-a897-eddfb755e0f2",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Seat of Sacrifice",
			name = "Mitigations",
			uuid = "61837165-4ce2-c1e3-a486-7f948ef9a366",
		},
		objectType = "folder",
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
								"0e0edb50-076b-96fa-8b46-fac659888e30",
								true,
							},
						},
						gVar = "ACR_TensorWeeb4_Hotbar_ArmsLength",
						name = "[Seat] Suiton: San Arm’s Length",
						uuid = "43e5ca1e-f469-12fc-8b87-7d1f374d2b96",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.seatSuiton=nil\nself.used=true",
						conditions = 
						{
							
							{
								"0e0edb50-076b-96fa-8b46-fac659888e30",
								true,
							},
						},
						name = "Clear the scheduled Arm's Length request",
						uuid = "b517beec-4eb1-7bab-af3f-d634d79b915f",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=922 or not p.alive then return false end\nlocal s=data.seatSuiton\nif not s then return false end\nlocal n=Now()\nreturn n>=s.fireAt and n<s.expires",
						dequeueIfLuaFalse = true,
						name = "[Seat] Suiton: San Arm’s Length due",
						uuid = "0e0edb50-076b-96fa-8b46-fac659888e30",
						version = 3,
					},
				},
			},
			displayPath = "The Seat of Sacrifice/Mitigations",
			name = "[Seat] Suiton: San Arm’s Length",
			throttleTime = 100,
			uuid = "6696ce57-dea2-d39e-ba70-d22e0ba6dcfa",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Log 22-11: channel 5.7 s, knockback damage 5.985 s after the channel start. Arm's Length lasts 6 s, so requesting it at channel start would end it at the hit.\nlocal n=Now()\nlocal resolve=n+eventArgs.channelTimeMax*1000+285\ndata.seatSuiton={fireAt=resolve-2300,expires=resolve+400}\nself.used=true",
						conditions = 
						{
							
							{
								"b4adc4e5-6f4d-a043-9dfa-4ec420b9ff60",
								true,
							},
						},
						name = "Schedule Arm's Length 2.3 s before the knockback",
						uuid = "a2d3e3b4-3158-3d24-82c5-e5f88666e2e3",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=922 then return false end\nreturn eventArgs.spellID==20252 and eventArgs.entityContentID==9465",
						dequeueIfLuaFalse = true,
						name = "Suiton: San channel",
						uuid = "b4adc4e5-6f4d-a043-9dfa-4ec420b9ff60",
						version = 3,
					},
				},
			},
			displayPath = "The Seat of Sacrifice/Mitigations",
			eventType = 3,
			name = "[Seat] Suiton: San schedule Arm’s Length",
			uuid = "767bb0e7-980d-d0b3-b32c-536688ea065f",
			version = 2,
		},
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
								"737c69ba-8dc6-a9b7-8c4c-c7a6e8b4b815",
								true,
							},
							
							{
								"d15f93c9-9816-8900-846c-5c1e971ff1b1",
								true,
							},
						},
						gVar = "ACR_TensorNuke4_Hotbar_Surecast",
						uuid = "95f75803-2c52-928f-a67c-4eb2c866fe19",
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
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=922 or not p.alive then return false end\nlocal s=data.seatSuiton\nif not s then return false end\nlocal n=Now()\nreturn n>=s.fireAt and n<s.expires",
						dequeueIfLuaFalse = true,
						name = "[Seat] Suiton: San Arm’s Length due",
						uuid = "737c69ba-8dc6-a9b7-8c4c-c7a6e8b4b815",
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
						uuid = "d15f93c9-9816-8900-846c-5c1e971ff1b1",
						version = 3,
					},
				},
			},
			displayPath = "The Seat of Sacrifice/Mitigations",
			name = "[Seat] Suiton: San Surecast",
			throttleTime = 100,
			uuid = "fa5f1e21-bb8d-949e-a331-654502bb367f",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Seat of Sacrifice",
			name = "Draws",
			uuid = "d4c15bbb-2271-60fb-ae61-60f94aba02bd",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local e=eventArgs\nlocal ms=math.floor(e.startTime+e.duration*1000-Now())\nif ms<=0 then self.used=true;return end\nlocal id=e.aoeID\nlocal drawer=TensorCore.getStaticDrawer(id==20253 and 0x8055FF55 or 0x803333FF,2)\nif id==20241 or id==20300 then\n    drawer:addTimedDonut(ms,e.x,e.y,e.z,5,60,0,false,true)\nelseif id==20259 or id==20260 then\n    drawer:addTimedCone(ms,e.x,e.y,e.z,60,math.rad(id==20259 and 45 or 90),e.heading,0,false,true)\nelseif id==20261 then\n    drawer:addTimedRect(ms,e.x,e.y,e.z,40,20,e.heading,0,false,true)\nelseif id==20251 or id==20253 then\n    if e.targetAttach and e.targetAttach>0 then\n        drawer:addTimedCircleOnEnt(ms,e.targetAttach,id==20251 and 20 or 6,0,false,true)\n    end\nelse\n    drawer:addTimedCircle(ms,e.x,e.y,e.z,e.aoeLength,0,false,true)\nend\nself.used=true",
						conditions = 
						{
							
							{
								"887c3651-fe25-4795-ac19-420ee4d8592c",
								true,
							},
							
							{
								"0e10be5b-6352-afc9-9dd9-a6b206c03a1f",
								true,
							},
						},
						name = "[Seat] Boss and Spectral hazard telegraphs",
						uuid = "132e9395-fd71-eb41-b82e-2660fb8e187e",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=922 then return false end\nlocal id=eventArgs.aoeID\nreturn id==20240 or id==20241 or id==20299 or id==20300 or id==20251 or id==20253\n    or id==20254 or id==20259 or id==20260 or id==20261 or id==20266",
						name = "[Seat] Boss and Spectral hazard telegraphs gate",
						uuid = "0e10be5b-6352-afc9-9dd9-a6b206c03a1f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nlocal maps={[922]=true}\nreturn not not (p and maps[p.localmapid])",
						dequeueIfLuaFalse = true,
						name = "Duty map",
						uuid = "887c3651-fe25-4795-ac19-420ee4d8592c",
						version = 3,
					},
				},
			},
			displayPath = "The Seat of Sacrifice/Draws",
			eventType = 18,
			name = "[Seat] Boss and Spectral hazard telegraphs",
			uuid = "001cd65e-244b-37d7-bd0c-2246e3868056",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local e=eventArgs\nlocal stack=e.markerID==161\nlocal drawer=TensorCore.getStaticDrawer(stack and 0x8055FF55 or 0x803333FF,2)\ndrawer:addTimedCircleOnEnt(5100,e.entityID,stack and 6 or 20,0,false,true)\nself.used=true",
						conditions = 
						{
							
							{
								"827cb46b-14d0-4a9f-b3a8-70ff3cc38d34",
								true,
							},
							
							{
								"bd1bd61c-d5a4-c7cd-8454-bb0585f916d6",
								true,
							},
						},
						name = "[Seat] Absolute Holy stack and Deluge bait",
						uuid = "d8d3f6e1-636f-64f7-966a-dc45f7cbdac3",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=922 then return false end\nreturn eventArgs.markerID==161 or eventArgs.markerID==87",
						name = "[Seat] Absolute Holy stack and Deluge bait gate",
						uuid = "bd1bd61c-d5a4-c7cd-8454-bb0585f916d6",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nlocal maps={[922]=true}\nreturn not not (p and maps[p.localmapid])",
						dequeueIfLuaFalse = true,
						name = "Duty map",
						uuid = "827cb46b-14d0-4a9f-b3a8-70ff3cc38d34",
						version = 3,
					},
				},
			},
			displayPath = "The Seat of Sacrifice/Draws",
			eventType = 4,
			name = "[Seat] Absolute Holy stack and Deluge bait",
			uuid = "005f60bc-94ce-c00e-9e63-6553e7d817b0",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local e=eventArgs\nlocal ms=math.floor(e.channelTimeMax*1000)\nif ms>0 then\n    TensorCore.getStaticDrawer(0x803333FF,2):addTimedCircleOnEnt(ms,e.targetID,5,0,false,true)\nend\nself.used=true",
						conditions = 
						{
							
							{
								"85472ab8-3ba0-43ff-af0d-b4066233d236",
								true,
							},
							
							{
								"9d2191c9-4984-308e-8865-285bc1c376a7",
								true,
							},
						},
						name = "[Seat] The Bitter End tankbuster",
						uuid = "e4dbdf0b-ebc5-cc28-bde8-41a5702d3a3f",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=922 then return false end\nreturn eventArgs.spellID==20264 and eventArgs.entityContentID==9462 and eventArgs.targetID>0",
						name = "[Seat] The Bitter End tankbuster gate",
						uuid = "9d2191c9-4984-308e-8865-285bc1c376a7",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nlocal maps={[922]=true}\nreturn not not (p and maps[p.localmapid])",
						dequeueIfLuaFalse = true,
						name = "Duty map",
						uuid = "85472ab8-3ba0-43ff-af0d-b4066233d236",
						version = 3,
					},
				},
			},
			displayPath = "The Seat of Sacrifice/Draws",
			eventType = 3,
			name = "[Seat] The Bitter End tankbuster",
			uuid = "64a204ec-d5fc-03fb-9053-298fcfd900e7",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "AnyoneCore.Shotcall(\"Tank limit break\",true,4,true)\nself.used=true",
						conditions = 
						{
							
							{
								"5e69b879-baae-4cbd-9759-47bde939c4d5",
								true,
							},
							
							{
								"f0c77a2e-08c2-3cec-b7e8-2dbe2faddd3a",
								true,
							},
						},
						name = "[Seat] Ultimate Crossover tank LB cue",
						uuid = "8d5d51e0-7679-7a7f-b456-6fdb2597d0cc",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=922 then return false end\nreturn eventArgs.spellID==21628 and eventArgs.entityContentID==9462\n    and (p.job==19 or p.job==21 or p.job==32 or p.job==37)",
						name = "[Seat] Ultimate Crossover tank LB cue gate",
						uuid = "f0c77a2e-08c2-3cec-b7e8-2dbe2faddd3a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nlocal maps={[922]=true}\nreturn not not (p and maps[p.localmapid])",
						dequeueIfLuaFalse = true,
						name = "Duty map",
						uuid = "5e69b879-baae-4cbd-9759-47bde939c4d5",
						version = 3,
					},
				},
			},
			displayPath = "The Seat of Sacrifice/Draws",
			eventType = 3,
			name = "[Seat] Ultimate Crossover tank LB cue",
			uuid = "09e3c020-cd9f-ae4d-814b-9496f9c3009e",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Log 22-11: map effect 1/2 appears 10.05 s before the tower hit (Meteor Impact). Indices 0-7 sit on a 10.5 m ring, 8 and 9 beside the centre (BossMod T04WarriorOfLight).\nlocal p=TensorCore.mGetPlayer()\nif not p then return end\nlocal i=eventArgs.a1\nlocal x,z\nif i<=7 then\n    local a=math.rad(45*i)\n    x=100+10.5*math.sin(a)\n    z=100-10.5*math.cos(a)\nelseif i==8 then x,z=104,100\nelse x,z=96,100 end\nlocal y=p.pos.y\nTensorCore.getStaticDrawer(0x8055FF55,2):addTimedCircle(10000,x,y,z,4,0,false,true)\nAnyoneCore.addWorldTextCountdown(10000,{x=x,y=y,z=z},0xFFFFFFFF,true,1.5)\nself.used=true",
						conditions = 
						{
							
							{
								"0fafe383-58b3-e98f-ade8-bd346b10be33",
								true,
							},
						},
						name = "Draw tower with 10 s countdown",
						uuid = "59032d94-d5d2-53a7-a375-7c299a867232",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=922 then return false end\nlocal i=eventArgs.a1\nreturn i>=0 and i<=9 and eventArgs.a2==1 and eventArgs.a3==2",
						dequeueIfLuaFalse = true,
						name = "Tower map effect (indices 0-9, state 1/2)",
						uuid = "0fafe383-58b3-e98f-ade8-bd346b10be33",
						version = 3,
					},
				},
			},
			displayPath = "The Seat of Sacrifice/Draws",
			eventType = 14,
			name = "[Seat] Twincast towers",
			uuid = "78c7df06-2809-10ba-ae3c-98ab22888596",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Log 22-11: Shining Wave sources at (120,100) heading -1.57 for index 21 and (80,100) heading 1.57 for index 23; the hit lands 10.1 s after the 2048/256 event. Cone 50 m, 53 degrees (BossMod).\nlocal p=TensorCore.mGetPlayer()\nif not p then return end\nlocal f=math.rad(-90*(eventArgs.a1-20))\nlocal x=100-20*math.sin(f)\nlocal z=100-20*math.cos(f)\nTensorCore.getStaticDrawer(0x803333FF,2):addTimedCone(10000,x,p.pos.y,z,50,math.rad(53),f,0,false,true)\nself.used=true",
						conditions = 
						{
							
							{
								"d70edafb-2f99-7d9b-bba3-2414aada3c78",
								true,
							},
						},
						name = "Draw Sword of Light cone",
						uuid = "cd17adef-bef4-8736-bd1e-c182723b6c55",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=922 then return false end\nlocal i=eventArgs.a1\nreturn i>=20 and i<=23 and eventArgs.a2==2048 and eventArgs.a3==256",
						dequeueIfLuaFalse = true,
						name = "Sword of Light charge (indices 20-23, state 2048/256)",
						uuid = "d70edafb-2f99-7d9b-bba3-2414aada3c78",
						version = 3,
					},
				},
			},
			displayPath = "The Seat of Sacrifice/Draws",
			eventType = 14,
			name = "[Seat] Sword of Light cones",
			uuid = "5ee973df-fade-66ac-b53c-2dc963fa8bc8",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Log 22-11: marker 234 on three players 6.2 s before Radiant Braver; each cone is 60 m, 90 degrees from the arena centre toward its marked player.\ndata.seatBaits=data.seatBaits or {}\ndata.seatBaits[#data.seatBaits+1]={kind='cone',id=eventArgs.entityID,finish=Now()+6300}\nself.used=true",
						conditions = 
						{
							
							{
								"23dbb5e6-ca31-dfa1-8ad2-6ce855696adf",
								true,
							},
						},
						name = "Track marked player for the cone from the centre",
						uuid = "1d038ae5-a8e4-fc4b-b3a1-ffd88742cf28",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=922 then return false end\nreturn eventArgs.markerID==234",
						dequeueIfLuaFalse = true,
						name = "Radiant Braver marker",
						uuid = "23dbb5e6-ca31-dfa1-8ad2-6ce855696adf",
						version = 3,
					},
				},
			},
			displayPath = "The Seat of Sacrifice/Draws",
			eventType = 4,
			name = "[Seat] Radiant Braver bait cones",
			uuid = "f85f45ba-f971-e2a3-8f0c-a3cab3653f68",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Log 22-11: two helper casts of 20294 mark players 6.3 s before Radiant Desperado; the line is 60 m by 8 m from the arena centre toward each marked player.\ndata.seatBaits=data.seatBaits or {}\ndata.seatBaits[#data.seatBaits+1]={kind='rect',id=eventArgs.targetID,finish=Now()+6400}\nself.used=true",
						conditions = 
						{
							
							{
								"74e0a23c-9a93-3ac5-95d2-c495f9c75b58",
								true,
							},
						},
						name = "Track marked player for the line from the centre",
						uuid = "1da79b8f-ab31-c23c-a50e-92ab5d649026",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=922 then return false end\nreturn eventArgs.spellID==20294 and eventArgs.entityContentID==9462 and eventArgs.targetID>0",
						dequeueIfLuaFalse = true,
						name = "Radiant Desperado marker cast",
						uuid = "74e0a23c-9a93-3ac5-95d2-c495f9c75b58",
						version = 3,
					},
				},
			},
			displayPath = "The Seat of Sacrifice/Draws",
			eventType = 2,
			name = "[Seat] Radiant Desperado bait lines",
			uuid = "5c261a17-bb42-2cb7-8deb-a0b70ac1f1cf",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Log 22-11: tether 17 from a Spectral Egi to a player appears 13 s before the Flare Breath hit; the 60 m, 90 degree cone follows the tethered player.\nlocal e=eventArgs\ndata.seatBaits=data.seatBaits or {}\nif e.newTetherID==17 and e.newTargetID>0 then\n    data.seatBaits[#data.seatBaits+1]={kind='flare',src=e.sourceEntityID,id=e.newTargetID,finish=Now()+13500}\nelse\n    for i=#data.seatBaits,1,-1 do\n        local b=data.seatBaits[i]\n        if b.kind=='flare' and b.src==e.sourceEntityID then table.remove(data.seatBaits,i) end\n    end\nend\nself.used=true",
						conditions = 
						{
							
							{
								"269d6d71-0e0c-2521-92c2-7cedf1f230b3",
								true,
							},
						},
						name = "Track or release the tethered player's cone",
						uuid = "a30f954c-98b1-482a-bef1-deb8ac26caca",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=922 then return false end\nlocal e=eventArgs\nreturn e.sourceEntityContentID==9473 and (e.newTetherID==17 or (e.oldTetherID==17 and e.newTetherID==0))",
						dequeueIfLuaFalse = true,
						name = "Spectral Egi tether 17",
						uuid = "269d6d71-0e0c-2521-92c2-7cedf1f230b3",
						version = 3,
					},
				},
			},
			displayPath = "The Seat of Sacrifice/Draws",
			eventType = 15,
			name = "[Seat] Flare Breath tether cone",
			uuid = "9dbea46d-0345-f714-831d-4d4cbc459bfa",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- BossMod T04WarriorOfLight: after the 8 s cast the puddle repeats 12 times, first 2.1 s later then every 1.07 s, growing from 6 m by 0.95 m per hit up to 16.5 m. Only partly confirmed by the log (one repeat hit 14.4 m from the centre).\nlocal e=eventArgs\nlocal remaining=math.floor(e.startTime+e.duration*1000-Now())\nif remaining<=0 then self.used=true;return end\ndata.seatBaits=data.seatBaits or {}\ndata.seatBaits[#data.seatBaits+1]={kind='brim',x=e.x,y=e.y,z=e.z,t0=Now()+remaining}\nself.used=true",
						conditions = 
						{
							
							{
								"7222a300-d4d2-a39b-9292-74fc2d84064f",
								true,
							},
						},
						name = "Track puddle growth after the first hit",
						uuid = "7910f739-6924-e9ee-a06e-4f04e0b5d4dd",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=922 then return false end\nreturn eventArgs.aoeID==20254",
						dequeueIfLuaFalse = true,
						name = "Brimstone Earth",
						uuid = "7222a300-d4d2-a39b-9292-74fc2d84064f",
						version = 3,
					},
				},
			},
			displayPath = "The Seat of Sacrifice/Draws",
			eventType = 18,
			name = "[Seat] Brimstone Earth growth",
			uuid = "e6aace66-0f77-b6dc-adae-dfcf967e8602",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local b=data.seatBaits\nif not b or #b==0 then return end\nlocal now=Now()\nlocal drawer=TensorCore.getStaticDrawer(0x803333FF,2)\nfor i=#b,1,-1 do\n    local e=b[i]\n    local keep=true\n    if e.kind=='brim' then\n        local j=1\n        local limit=e.t0+2100\n        while now>=limit and j<=12 do j=j+1; limit=limit+1070 end\n        if j>12 then keep=false\n        elseif now>=e.t0 then drawer:addCircle(e.x,e.y,e.z,math.min(6+0.95*j,16.5),false) end\n    elseif now>e.finish then keep=false\n    else\n        local t=TensorCore.mGetEntity(e.id)\n        if t and t.pos and t.alive then\n            if e.kind=='flare' then\n                local s=TensorCore.mGetEntity(e.src)\n                if s and s.pos then\n                    local h=math.atan2(t.pos.x-s.pos.x,t.pos.z-s.pos.z)\n                    drawer:addCone(s.pos.x,s.pos.y,s.pos.z,60,math.rad(90),h,false)\n                end\n            else\n                local h=math.atan2(t.pos.x-100,t.pos.z-100)\n                if e.kind=='cone' then drawer:addCone(100,t.pos.y,100,60,math.rad(90),h,false)\n                else drawer:addRect(100,t.pos.y,100,60,8,h,false) end\n            end\n        end\n    end\n    if not keep then table.remove(b,i) end\nend",
						conditions = 
						{
							
							{
								"41b8c5cd-3594-fd20-9e50-3acddc138c1c",
								true,
							},
						},
						name = "Draw and expire the tracked shapes",
						uuid = "f7e1390d-987b-f43c-b72f-d3d239261069",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=922 then return false end\nlocal b=data.seatBaits\nreturn b~=nil and #b>0",
						name = "Active bait or puddle",
						uuid = "41b8c5cd-3594-fd20-9e50-3acddc138c1c",
						version = 3,
					},
				},
			},
			displayPath = "The Seat of Sacrifice/Draws",
			eventType = 12,
			name = "[Seat] Draw live bait cones, lines and puddle growth",
			uuid = "d48bd360-d471-1497-904d-ba1f35d13234",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "The Bowl of Embers",
			uuid = "422f204f-58d3-d012-b5d7-b0b50901e851",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Bowl of Embers",
			name = "AutoSim",
			uuid = "2455eadb-ccb3-b744-bd9c-489a23fa761d",
		},
		objectType = "folder",
	},
	
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
								"cbc4bf1f-ee8d-9aa4-8629-b2e014602a75",
								true,
							},
						},
						endIfUsed = true,
						name = "Configure The Bowl of Embers",
						uuid = "89a0173a-7984-5548-aa34-e52cc9df479d",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn not not (p and p.localmapid == 1045 and (true))",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "cbc4bf1f-ee8d-9aa4-8629-b2e014602a75",
						version = 3,
					},
				},
			},
			displayPath = "The Bowl of Embers/AutoSim",
			eventType = 11,
			name = "Configure The Bowl of Embers",
			uuid = "5daf8691-25b0-1704-bb29-912f5afb82f0",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local p = TensorCore.mGetPlayer()\nif not p or p.incombat or p.localmapid ~= 1045 then self.used = true; return end\nfor _, boss in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=1185}) or {}) do\n    if boss.targetable and boss.attackable and boss.pos and TensorCore.getDistance2d(p.pos,boss.pos) <= 30 then\n        data.localBossTarget1045 = true\n        gStartCombat = false\n        if p.targetid ~= boss.id then\n            local accepted = Player:SetTarget(boss.id)\n            TensorCore.timelineLogToFile(string.format(\"[Duty opener] map=1045 intended=%s current=%s request=%s\\n\", boss.id, p.targetid, tostring(accepted)))\n        end\n        break\n    end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"c65477bf-91b5-1401-b83b-1b29c0a48bd5",
								true,
							},
						},
						endIfUsed = true,
						name = "Target The Bowl of Embers boss",
						uuid = "f8265184-a72a-6dd3-b65b-92696d317d25",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn not not (p and p.localmapid == 1045 and (not p.incombat and not data.localBossTarget1045))",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "c65477bf-91b5-1401-b83b-1b29c0a48bd5",
						version = 3,
					},
				},
			},
			displayPath = "The Bowl of Embers/AutoSim",
			name = "Target The Bowl of Embers boss",
			throttleTime = 500,
			uuid = "d6383817-b8d1-8e0b-bbb5-1f8f4e39a2b7",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local A = TensorCore.API.TensorACR\nlocal t = A.getAutoSimTime()\nif type(t) ~= \"number\" or t < 0 or t > 8 then self.used = true; return end\ndata.localForecast1045 = true\nA.clearAutoSimUncertainty()\nA.clearAutoSimPhases(\"FullDowntime\")\nA.setAutoSimKillTime(83)\nA.addAutoSimUncertainty(0, 15)\nA.addAutoSimPhase(\"FullDowntime\",65.1,67.1,1)\nself.used = true",
						conditions = 
						{
							
							{
								"a901b126-8cf8-e41f-a50c-37ada76058f6",
								true,
							},
						},
						endIfUsed = true,
						name = "Forecast The Bowl of Embers",
						uuid = "777666a6-a8a2-023e-ae93-c1755ed22f26",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=1045 then return false end\nif p.incombat~=true or data.localForecast1045 then return false end\n-- a late join can never load this forecast\nlocal ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn not not (ok and type(t)==\"number\" and t>=0 and t<=8)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "a901b126-8cf8-e41f-a50c-37ada76058f6",
						version = 3,
					},
				},
			},
			displayPath = "The Bowl of Embers/AutoSim",
			name = "Forecast The Bowl of Embers",
			throttleTime = 250,
			uuid = "4507f422-ae40-631e-9108-9ca4fa3012a3",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Bowl of Embers",
			name = "Draws",
			uuid = "25e887d3-7345-03df-baef-784d5ad90322",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local e = eventArgs\nlocal shapes = {[733]={\"circle\",8,0}}\nlocal shape = shapes[e.aoeID]\nlocal ms = math.floor(e.startTime + e.duration * 1000 - Now())\nif ms > 0 then\n    local drawer = TensorCore.getStaticDrawer(0x803333FF, 2)\n    if shape[1] == \"circle\" then\n        drawer:addTimedCircle(ms,e.x,e.y,e.z,shape[2],0,false,true)\n    elseif shape[1] == \"cone\" then\n        drawer:addTimedCone(ms,e.x,e.y,e.z,shape[2],math.rad(shape[3]),e.heading,0,false,true)\n    elseif shape[1] == \"donut\" then\n        drawer:addTimedDonut(ms,e.x,e.y,e.z,shape[2],shape[3],0,false,true)\n    else\n        drawer:addTimedRect(ms,e.x,e.y,e.z,shape[2],shape[3],e.heading,0,false,true)\n    end\n    AnyoneCore.addWorldTextCountdown(ms,{x=e.x,y=e.y+1,z=e.z},0xFFFFFFFF,true,1.1)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"f9395f6e-3af5-50ea-8b91-773155b41fa8",
								true,
							},
						},
						endIfUsed = true,
						name = "The Bowl of Embers hazard draws",
						uuid = "30c14a0e-519a-e15a-9a1c-e76b176f9c77",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn not not (p and p.localmapid == 1045 and (eventArgs.aoeID == 733))",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "f9395f6e-3af5-50ea-8b91-773155b41fa8",
						version = 3,
					},
				},
			},
			displayPath = "The Bowl of Embers/Draws",
			eventType = 18,
			name = "The Bowl of Embers hazard draws",
			timeout = 1,
			uuid = "b080f39f-29bb-c36e-98fe-fb6fd0952ebd",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local cues = {[458]=\"Hellfire\",[455]=\"Dodge Eruption\"}\nAnyoneCore.Shotcall(cues[eventArgs.spellID],true,3,false)\nself.used = true",
						conditions = 
						{
							
							{
								"e274e473-cbf7-1ac9-b7bd-31e3a83d92fc",
								true,
							},
						},
						endIfUsed = true,
						name = "The Bowl of Embers mechanic cues",
						uuid = "462626c3-c466-546c-b370-05469e5ad3b7",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn not not (p and p.localmapid == 1045 and (eventArgs.spellID == 458 or eventArgs.spellID == 455))",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "e274e473-cbf7-1ac9-b7bd-31e3a83d92fc",
						version = 3,
					},
				},
			},
			displayPath = "The Bowl of Embers/Draws",
			eventType = 3,
			name = "The Bowl of Embers mechanic cues",
			timeout = 1,
			uuid = "0252d23d-25a9-3cc9-8df5-c3da2d336bd9",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "AnyoneCore.Shotcall(\"Attack the nail\",true,4,false)\nself.used = true",
						conditions = 
						{
							
							{
								"577be2cb-953b-df47-9ae0-09df1ba9f177",
								true,
							},
						},
						endIfUsed = true,
						name = "Attack the nail",
						uuid = "031ec346-faf5-9644-ba6c-59f885265588",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn not not (p and p.localmapid == 1045 and p.incombat and eventArgs.entityContentID == 1186 and eventArgs.isTargetable)",
						dequeueIfLuaFalse = true,
						name = "Infernal Nail appeared",
						uuid = "577be2cb-953b-df47-9ae0-09df1ba9f177",
						version = 3,
					},
				},
			},
			displayPath = "The Bowl of Embers/Draws",
			eventType = 26,
			name = "Infernal Nail - Attack the nail",
			timeout = 1,
			uuid = "b70d521a-b099-749f-b7c7-ac8dadd14bcc",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "The Striking Tree (Hard)",
			uuid = "66ee2205-72e3-5669-8a0f-4588d087115a",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Striking Tree (Hard)",
			name = "Draws",
			uuid = "d73e6519-59d7-95f3-a959-ed851505e8e5",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal e = eventArgs\nlocal shapes = {[2278]=\"circle\",[2277]=\"circle\",[2275]=\"circle\",[2282]=\"rect\"}\nlocal ms = math.floor(e.startTime + e.duration * 1000 - Now())\nif ms > 0 then\n    local drawer = TensorCore.getStaticDrawer(0x803333FF, 2)\n    if shapes[e.aoeID] == \"circle\" then\n        drawer:addTimedCircle(ms, e.x, e.y, e.z, e.aoeLength, 0, false, true)\n    else\n        drawer:addTimedRect(ms, e.x, e.y, e.z, e.aoeLength, e.aoeWidth, e.heading, 0, false, true)\n    end\n    AnyoneCore.addWorldTextCountdown(ms, {x=e.x,y=e.y+1,z=e.z}, 0xFFFFFFFF, true, 1.1)\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"6e554ae3-eac3-7c0a-8f9b-74556c2cbeff",
								true,
							},
						},
						name = "Ramuh hazard draws",
						uuid = "b6209ff4-1d7f-a59f-9c0f-d9328d8a019e",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nlocal id = eventArgs.aoeID\nreturn p ~= nil and p.localmapid == 374 and (id == 2278 or id == 2277 or id == 2275 or id == 2282)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "6e554ae3-eac3-7c0a-8f9b-74556c2cbeff",
						version = 3,
					},
				},
			},
			displayPath = "The Striking Tree (Hard)/Draws",
			eventType = 18,
			name = "Ramuh hazard draws",
			uuid = "a7271e87-c9b5-714b-a8e8-6ae3ddabeaf8",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Striking Tree (Hard)",
			name = "AutoSim",
			uuid = "693ce8ed-1467-7877-8163-e58d22d67947",
		},
		objectType = "folder",
	},
	
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
								"bac4f9a4-2afb-1312-80a8-626fee74a1e7",
								true,
							},
						},
						name = "Ramuh helper setup",
						uuid = "4e0ef1ed-2c27-337b-b8d7-a9cc8fda8176",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 374 and (true)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "bac4f9a4-2afb-1312-80a8-626fee74a1e7",
						version = 3,
					},
				},
			},
			displayPath = "The Striking Tree (Hard)/AutoSim",
			eventType = 11,
			name = "Ramuh helper setup",
			uuid = "2ed61d20-b2ba-20af-9c89-af2f569158f5",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 374 then self.used = true; return end\ndata.trialsInitialTargets = data.trialsInitialTargets or {}\nlocal states = data.trialsInitialTargets\nlocal state = states[\"374_2832\"] or {}\nstates[\"374_2832\"] = state\nlocal current = TensorCore.mGetTarget()\nlocal label = \"[Trials targeting] Ramuh\"\nif state.pending then\n    if current and current.id == state.pending then\n        d(label .. \" confirmed target=\" .. tostring(current.id))\n        state.pending = nil\n    elseif Now() - state.requestedAt >= 1500 then\n        d(label .. \" request not confirmed; intended=\" .. tostring(state.pending) ..\n            \" current=\" .. tostring(current and current.id))\n        state.pending = nil\n    end\n    self.used = true\n    return\nend\nif player.incombat or state.done then self.used = true; return end\nlocal boss, nearest = nil, 35 * 35\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=2832}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx = candidate.pos.x - player.pos.x\n        local dy = candidate.pos.y - player.pos.y\n        local dz = candidate.pos.z - player.pos.z\n        local distance = dx*dx + dy*dy + dz*dz\n        if distance <= nearest then\n            boss, nearest = candidate, distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label .. \" waiting for an attackable boss within 35 yalms; current=\" ..\n            tostring(current and current.id))\n        state.waitLogged = true\n    end\n    self.used = true\n    return\nend\nstate.done = true\nif current and current.alive and current.targetable and current.attackable then\n    d(label .. \" kept existing target; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current.id))\nelse\n    state.pending = boss.id\n    state.requestedAt = Now()\n    d(label .. \" target request; intended=\" .. tostring(boss.id) ..\n        \" current=\" .. tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"2f1cb588-0b7c-66f9-8580-670c9695e9a3",
								true,
							},
						},
						name = "Select nearby boss once",
						uuid = "7ad200a1-5688-6c4c-9ebb-e1e84b1eb449",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 374 then return false end\nlocal states = data.trialsInitialTargets\nlocal state = states and states[\"374_2832\"]\nreturn (state ~= nil and state.pending ~= nil) or (not player.incombat and (not state or not state.done))",
						dequeueIfLuaFalse = true,
						name = "Duty and initial target",
						uuid = "2f1cb588-0b7c-66f9-8580-670c9695e9a3",
						version = 3,
					},
				},
			},
			displayPath = "The Striking Tree (Hard)/AutoSim",
			name = "Ramuh select boss at encounter start",
			throttleTime = 500,
			uuid = "60a4b489-d849-a367-a64e-06eedf21b9d9",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal api = TensorCore.API.TensorACR\nlocal ok, elapsed = pcall(api.getAutoSimTime)\nif ok and type(elapsed) == \"number\" and elapsed >= 0 and elapsed <= 60 and not data.normalRaidForecastSet then\n    api.setAutoSimKillTime(191)\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0, 15)\n    api.clearAutoSimPhases(\"FullDowntime\")\n    data.normalRaidForecastSet = true\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"e8e3a09d-4d17-3fca-b730-a327373ae08e",
								true,
							},
						},
						name = "Ramuh AutoSim baseline",
						uuid = "07510363-200e-7602-a895-0d8dd95ab139",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 374 and (eventArgs.spellID == 2276 and not data.normalRaidForecastSet)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "e8e3a09d-4d17-3fca-b730-a327373ae08e",
						version = 3,
					},
				},
			},
			displayPath = "The Striking Tree (Hard)/AutoSim",
			eventType = 3,
			name = "Ramuh AutoSim baseline",
			uuid = "89efc66a-ab2f-8b02-9b5e-71dea670cd72",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player then self.used = true; return end\n\nlocal contentID = 2833\nlocal label = \"[Trials] Grey Arbiter\"\nlocal api = TensorCore.API.TensorACR\nlocal eligible = player.localmapid == 374 and player.job == 23\nlocal state = TrialsStrikingTreeGreyArbiterDoT\n\n-- Restore the previous entry on leaving The Striking Tree (Hard) or changing jobs.\n-- Keep this state outside pull data so a wipe does not lose the original values.\nif state and (not eligible or state.job ~= player.job) then\n    local entry = state.entry\n    if entry.enabled and entry.allowIfTarget == false and entry.allowSmartDoT == false then\n        if state.created then\n            entry.enabled = false\n            if player.job == state.job and api.getBlacklistEntry(contentID) then\n                local current = api.addBlacklistEntry(contentID)\n                if current == entry and current.name == label then\n                    api.deleteBlacklistEntry(contentID)\n                end\n            end\n        else\n            entry.enabled = state.enabled\n            entry.allowIfTarget = state.allowIfTarget\n            entry.allowSmartDoT = state.allowSmartDoT\n        end\n    end\n    TrialsStrikingTreeGreyArbiterDoT = nil\n    state = nil\nend\n\nif eligible and not state then\n    local supported, exists = pcall(api.getBlacklistEntry, contentID)\n    if supported then\n        local ok, entry = pcall(api.addBlacklistEntry, contentID, label)\n        if ok and entry then\n            TrialsStrikingTreeGreyArbiterDoT = {\n                job = player.job, entry = entry, created = not exists,\n                enabled = entry.enabled, allowIfTarget = entry.allowIfTarget,\n                allowSmartDoT = entry.allowSmartDoT,\n            }\n            entry.enabled = true\n            entry.allowIfTarget = false\n            entry.allowSmartDoT = false\n        end\n    end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"e7d7d781-8790-982a-ba76-a23e8a4096d0",
								true,
							},
						},
						name = "Block short-lived add DoTs",
						uuid = "b8989dec-b15e-98b7-90e0-15dae2746527",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player then return false end\nlocal state = TrialsStrikingTreeGreyArbiterDoT\nlocal eligible = player.localmapid == 374 and player.job == 23\nif state then\n    return not eligible or player.job ~= state.job\nend\nreturn eligible",
						dequeueIfLuaFalse = true,
						name = "Duty and job / owned cleanup",
						uuid = "e7d7d781-8790-982a-ba76-a23e8a4096d0",
						version = 3,
					},
				},
			},
			displayPath = "The Striking Tree (Hard)/AutoSim",
			name = "Grey Arbiter DoT blacklist (BRD)",
			throttleTime = 500,
			timeout = 0.5,
			uuid = "87b1ade8-2075-3cab-a9b8-cd307cbba96e",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Hells' Kier",
			uuid = "cebdff0d-3cd0-caca-be0f-2085dc87b61e",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Hells' Kier",
			name = "AutoSim",
			uuid = "521f28f4-319f-0983-a985-c6d7a537ff6b",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "gStartCombat=false\nlocal settings=AnyoneCore and AnyoneCore.Settings\nif settings then\n    if settings.DutyHelper then settings.DutyHelper.enabled=false end\n    if settings.PrepullHelper then settings.PrepullHelper.enabled=false end\nend\ndata.kierSetup=true\nself.used=true",
						conditions = 
						{
							
							{
								"96294072-0df7-758e-90b6-3f6bad1d6f58",
								true,
							},
						},
						name = "Disable Duty, Prepull and Start Combat",
						uuid = "48a39270-acbe-6217-b4c3-ebd7493aee9b",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn not not (p and p.localmapid==810 and not data.kierSetup)",
						dequeueIfLuaFalse = true,
						name = "Helpers not yet disabled",
						uuid = "96294072-0df7-758e-90b6-3f6bad1d6f58",
						version = 3,
					},
				},
			},
			displayPath = "Hells' Kier/AutoSim",
			name = "[Hells' Kier] Disable combat helpers",
			throttleTime = 500,
			uuid = "3bc0b977-7c9a-8e2a-90f4-a4666ff5a565",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 810 then self.used = true; return end\ndata.trialsInitialTargets = data.trialsInitialTargets or {}\nlocal states = data.trialsInitialTargets\nlocal state = states[\"810_7702\"] or {}\nstates[\"810_7702\"] = state\nlocal current = TensorCore.mGetTarget()\nlocal label = \"[Trials targeting] Suzaku\"\nif state.pending then\n    if current and current.id == state.pending then\n        d(label .. \" confirmed target=\" .. tostring(current.id))\n        state.pending = nil\n    elseif Now() - state.requestedAt >= 1500 then\n        d(label .. \" request not confirmed; intended=\" .. tostring(state.pending) .. \" current=\" .. tostring(current and current.id))\n        state.pending = nil\n    end\n    self.used = true\n    return\nend\nif player.incombat or state.done then self.used = true; return end\nlocal boss, nearest = nil, 35 * 35\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=7702}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx = candidate.pos.x - player.pos.x\n        local dy = candidate.pos.y - player.pos.y\n        local dz = candidate.pos.z - player.pos.z\n        local distance = dx*dx + dy*dy + dz*dz\n        if distance <= nearest then boss, nearest = candidate, distance end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label .. \" waiting for an attackable boss within 35 yalms; current=\" .. tostring(current and current.id))\n        state.waitLogged = true\n    end\n    self.used = true\n    return\nend\nstate.done = true\ngStartCombat = false\nif current and current.alive and current.targetable and current.attackable then\n    d(label .. \" kept existing target; intended=\" .. tostring(boss.id) .. \" current=\" .. tostring(current.id))\nelse\n    state.pending = boss.id\n    state.requestedAt = Now()\n    d(label .. \" target request; intended=\" .. tostring(boss.id) .. \" current=\" .. tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"b4ce23cd-4aa6-49cf-803a-2ec559224132",
								true,
							},
						},
						name = "Select Suzaku without pulling",
						uuid = "6cc2147b-465b-85d5-8824-1e09deada662",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player or player.localmapid ~= 810 then return false end\nlocal states = data.trialsInitialTargets\nlocal state = states and states[\"810_7702\"]\nreturn not not ((state ~= nil and state.pending ~= nil) or (not player.incombat and (not state or not state.done)))",
						dequeueIfLuaFalse = true,
						name = "Boss not yet selected",
						uuid = "b4ce23cd-4aa6-49cf-803a-2ec559224132",
						version = 3,
					},
				},
			},
			displayPath = "Hells' Kier/AutoSim",
			name = "Suzaku select boss at encounter start",
			throttleTime = 500,
			uuid = "e9f01668-9ba0-713f-b07b-f4e875b8816f",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- One clear (25-11-2026): kill 452 s, Suzaku untargetable 102.4 to 187.9 s.\nlocal api=TensorCore.API.TensorACR\napi.clearAutoSimUncertainty()\napi.clearAutoSimPhases(\"FullDowntime\")\napi.setAutoSimKillTime(452)\napi.addAutoSimUncertainty(0,40)\napi.addAutoSimPhase(\"FullDowntime\",102.4,187.9,1)\ndata.kierForecast={}\nTensorCore.timelineLogToFile(\"[Hells' Kier AutoSim] forecast loaded: kill 452, downtime 102.4-187.9\\n\")\nself.used=true",
						conditions = 
						{
							
							{
								"a07a4bea-ccb7-1914-bb8b-0f3f732b61d9",
								true,
							},
						},
						name = "Load kill time and intermission",
						uuid = "e616c023-7e28-c379-8f3b-4472ccc3107b",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=810 then return false end\nif p.incombat~=true or data.kierForecast then return false end\n-- a late join can never load this forecast\nlocal ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn not not (ok and type(t)==\"number\" and t>=0 and t<=20)",
						dequeueIfLuaFalse = true,
						name = "Pull start without forecast",
						uuid = "a07a4bea-ccb7-1914-bb8b-0f3f732b61d9",
						version = 3,
					},
				},
			},
			displayPath = "Hells' Kier/AutoSim",
			name = "Suzaku AutoSim forecast",
			throttleTime = 250,
			uuid = "d75c1bc7-435b-5235-a4bd-7f344ccf59f6",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local api=TensorCore.API.TensorACR\nlocal t=api.getAutoSimTime()\nlocal s=data.kierForecast\napi.clearAutoSimPhases(\"FullDowntime\")\nif eventArgs.isTargetable==false then\n    s.left=t\n    api.addAutoSimPhase(\"FullDowntime\",t,t+85.5,1)\n    api.setAutoSimKillTime(452+(t-102.4))\nelse\n    s.back=t\n    api.setAutoSimKillTime(452+(t-187.9))\nend\nTensorCore.timelineLogToFile(\"[Hells' Kier AutoSim] resync t=\"..tostring(t)..\" targetable=\"..tostring(eventArgs.isTargetable)..\"\\n\")\nself.used=true",
						conditions = 
						{
							
							{
								"30d1bb54-b4a7-c256-b094-de798d17185b",
								true,
							},
						},
						name = "Move downtime to the observed time",
						uuid = "e33e4dff-04ef-af04-8d53-4f68f60b0699",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=810 or not data.kierForecast then return false end\nif eventArgs.entityContentID~=7702 then return false end\nlocal t=TensorCore.API.TensorACR.getAutoSimTime()\nif type(t)~=\"number\" then return false end\nlocal s=data.kierForecast\n-- the short disappearance near 95 s is ignored\nif eventArgs.isTargetable==false then return not s.left and t>=98 and t<=150 end\nreturn not not (s.left and not s.back and t>=150)",
						dequeueIfLuaFalse = true,
						name = "Suzaku leaves or returns",
						uuid = "30d1bb54-b4a7-c256-b094-de798d17185b",
						version = 3,
					},
				},
			},
			displayPath = "Hells' Kier/AutoSim",
			eventType = 26,
			name = "Suzaku AutoSim intermission resync",
			uuid = "65475e76-9878-6c9f-b541-74203b859ebf",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player then self.used = true; return end\n\nlocal contentID = 7725\nlocal label = \"[Hells' Kier] Scarlet Lady\"\nlocal api = TensorCore.API.TensorACR\nlocal j = player.job\nlocal eligible = player.localmapid == 810 and (j == 23 or j == 25 or j == 34)\nlocal state = TrialsKierScarletLadyDoT\n\n-- Restore the previous entry on leaving Hells' Kier or changing jobs.\nif state and (not eligible or state.job ~= j) then\n    local entry = state.entry\n    if entry.enabled and entry.allowIfTarget == false and entry.allowSmartDoT == false then\n        if state.created then\n            entry.enabled = false\n            if j == state.job and api.getBlacklistEntry(contentID) then\n                local current = api.addBlacklistEntry(contentID)\n                if current == entry and current.name == label then\n                    api.deleteBlacklistEntry(contentID)\n                end\n            end\n        else\n            entry.enabled = state.enabled\n            entry.allowIfTarget = state.allowIfTarget\n            entry.allowSmartDoT = state.allowSmartDoT\n        end\n    end\n    TrialsKierScarletLadyDoT = nil\n    state = nil\nend\n\nif eligible and not state then\n    local supported, exists = pcall(api.getBlacklistEntry, contentID)\n    if supported then\n        local ok, entry = pcall(api.addBlacklistEntry, contentID, label)\n        if ok and entry then\n            TrialsKierScarletLadyDoT = {\n                job = j, entry = entry, created = not exists,\n                enabled = entry.enabled, allowIfTarget = entry.allowIfTarget,\n                allowSmartDoT = entry.allowSmartDoT,\n            }\n            entry.enabled = true\n            entry.allowIfTarget = false\n            entry.allowSmartDoT = false\n        end\n    end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"6a9edda6-9e0f-a4e0-bc45-37e690921a08",
								true,
							},
						},
						name = "Apply or restore Scarlet Lady blacklist",
						uuid = "c3e7969f-fdbf-a503-8688-432dc390ada6",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player then return false end\nlocal state = TrialsKierScarletLadyDoT\nlocal j = player.job\nlocal eligible = player.localmapid == 810 and (j == 23 or j == 25 or j == 34)\nif state then\n    return not eligible or j ~= state.job\nend\nreturn not not eligible",
						dequeueIfLuaFalse = true,
						name = "Blacklist needs applying or restoring",
						uuid = "6a9edda6-9e0f-a4e0-bc45-37e690921a08",
						version = 3,
					},
				},
			},
			displayPath = "Hells' Kier/AutoSim",
			name = "Scarlet Lady DoT blacklist (BRD/BLM/SAM)",
			throttleTime = 500,
			uuid = "047290ee-e47f-603d-b9f6-fa1828760304",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Hells' Kier",
			name = "Draws",
			uuid = "15533a60-a3aa-c939-8a8a-3a4bc2167a26",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local e=eventArgs\n-- shape, length or radius, cone degrees or rectangle full width\nlocal shapes={[12835]={\"cone\",40,90},[12837]={\"circle\",9},[12851]={\"cone\",41,180},[12854]={\"rect\",41,20},[12856]={\"cone\",21,90},[12859]={\"rect\",55,6}}\nlocal shape=shapes[e.aoeID]\nlocal ms=math.floor(e.startTime+e.duration*1000-Now())\n-- Hotspot resolves about 0.25 s after its short marker\nif e.aoeID==12856 then ms=ms+300 end\nif ms<=0 then self.used=true;return end\nlocal drawer=TensorCore.getStaticDrawer(0x603333FF,2)\nlocal uuid\nif shape[1]==\"circle\" then\n    uuid=drawer:addTimedCircle(ms,e.x,e.y,e.z,shape[2],0,false,true)\nelseif shape[1]==\"cone\" then\n    uuid=drawer:addTimedCone(ms,e.x,e.y,e.z,shape[2],math.rad(shape[3]),e.heading,0,false,true)\nelse\n    uuid=drawer:addTimedRect(ms,e.x,e.y,e.z,shape[2],shape[3],e.heading,0,false,true)\nend\nif e.aoeID==12837 then\n    -- a plume killed early never explodes: remember its circle\n    data.kierPlumes=data.kierPlumes or {}\n    data.kierPlumes[e.entityID]=uuid\nelseif e.aoeID~=12856 then\n    AnyoneCore.addWorldTextCountdown(ms,{x=e.x,y=e.y+1,z=e.z},0xFFFFFFFF,true,1.1)\nend\nself.used=true",
						conditions = 
						{
							
							{
								"8e8be34d-8306-3a45-bf41-7c95600318ec",
								true,
							},
						},
						name = "Draw attack area",
						uuid = "be3b0e64-0c08-7961-a99f-9bef796c41b3",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=810 then return false end\nlocal ids={[12835]=true,[12837]=true,[12851]=true,[12854]=true,[12856]=true,[12859]=true}\nreturn ids[eventArgs.aoeID]==true",
						dequeueIfLuaFalse = true,
						name = "Tracked Suzaku attack",
						uuid = "8e8be34d-8306-3a45-bf41-7c95600318ec",
						version = 3,
					},
				},
			},
			displayPath = "Hells' Kier/Draws",
			eventType = 18,
			name = "Suzaku hazard draws",
			timeout = 1,
			uuid = "27f5fffb-7f1a-04b8-9a87-9e56d4ab4177",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "Argus.deleteTimedShape(data.kierPlumes[eventArgs.entityID])\ndata.kierPlumes[eventArgs.entityID]=nil\nself.used=true",
						conditions = 
						{
							
							{
								"8bd95f54-f917-b9d9-a792-6588a6ec7fc7",
								true,
							},
						},
						name = "Delete plume circle",
						uuid = "504b3a09-c181-a97b-b9e4-a879b2efdfbc",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return not not (data.kierPlumes and eventArgs.isTargetable==false and data.kierPlumes[eventArgs.entityID])",
						dequeueIfLuaFalse = true,
						name = "Drawn plume left",
						uuid = "8bd95f54-f917-b9d9-a792-6588a6ec7fc7",
						version = 3,
					},
				},
			},
			displayPath = "Hells' Kier/Draws",
			eventType = 26,
			name = "Scarlet Plume remove killed circle",
			timeout = 1,
			uuid = "ad6bbf93-22fa-f287-9f33-e9e8b35f3ecc",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local p=TensorCore.mGetPlayer()\nlocal id=eventArgs.spellID\nlocal text\nif id==12848 then\n    text=\"Knockback\"\nelseif eventArgs.targetID==p.id then\n    text=id==12849 and \"Tankbuster on you, then half-room cleave\" or \"Tankbuster on you\"\nelse\n    text=\"Tankbuster\"\nend\nAnyoneCore.Shotcall(text,true,3,false)\nself.used=true",
						conditions = 
						{
							
							{
								"33f152e3-ffd2-889e-b1c4-891f36ae867a",
								true,
							},
						},
						name = "Call knockback or tankbuster",
						uuid = "2f6147a5-ba3e-0e57-9171-4779f0409091",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=810 or eventArgs.entityContentID~=7702 then return false end\nlocal id=eventArgs.spellID\nif id==12848 then return true end\nif id~=12832 and id~=12849 then return false end\nreturn not not (eventArgs.targetID==p.id or TensorCore.isHealer(p))",
						dequeueIfLuaFalse = true,
						name = "Called Suzaku cast",
						uuid = "33f152e3-ffd2-889e-b1c4-891f36ae867a",
						version = 3,
					},
				},
			},
			displayPath = "Hells' Kier/Draws",
			eventType = 3,
			name = "Suzaku mechanic cues",
			timeout = 1,
			uuid = "9a970d21-2fd2-8fcb-913b-fe4e92cc00d6",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Marker to damage: 5.1 s. The 5 yalm radius is an estimate from one clear.\nlocal drawer=TensorCore.getStaticDrawer(0x40FF33CC,2)\ndrawer:addTimedCircleOnEnt(5100,eventArgs.entityID,5,0,false,true)\nlocal p=TensorCore.mGetPlayer()\nif eventArgs.entityID==p.id then AnyoneCore.Shotcall(\"Spread\",true,3,false) end\nself.used=true",
						conditions = 
						{
							
							{
								"ae360c53-c05c-7e84-9aab-2988ac79ce09",
								true,
							},
						},
						name = "Draw spread circle",
						uuid = "77d4bc15-d3b5-7f68-98fe-5e8fd05b36f1",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn not not (p and p.localmapid==810 and eventArgs.markerID==139)",
						dequeueIfLuaFalse = true,
						name = "Rekindle marker",
						uuid = "ae360c53-c05c-7e84-9aab-2988ac79ce09",
						version = 3,
					},
				},
			},
			displayPath = "Hells' Kier/Draws",
			eventType = 4,
			name = "Suzaku Rekindle spread circles",
			timeout = 1,
			uuid = "56f21dc8-535f-b10f-9ba2-195dc7d5e07c",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Towers resolve about 10 s after appearing; marker size is for visibility only.\nlocal drawer=TensorCore.getStaticDrawer(0x6033FF33,2)\ndrawer:addTimedCircle(10000,eventArgs.x,eventArgs.y,eventArgs.z,2,0,false,true)\nAnyoneCore.addWorldTextCountdown(10000,{x=eventArgs.x,y=eventArgs.y+1,z=eventArgs.z},0xFFFFFFFF,true,1.1)\nself.used=true",
						conditions = 
						{
							
							{
								"c3c3f7d8-1517-091a-a8f3-1d6c226221c8",
								true,
							},
						},
						name = "Mark tower",
						uuid = "78263fe0-81af-297a-bb57-bd5609498d4b",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn not not (p and p.localmapid==810 and eventArgs.entityContentID==2009599)",
						dequeueIfLuaFalse = true,
						name = "Tower appeared",
						uuid = "c3c3f7d8-1517-091a-a8f3-1d6c226221c8",
						version = 3,
					},
				},
			},
			displayPath = "Hells' Kier/Draws",
			eventType = 29,
			name = "Suzaku Incandescent Interlude towers",
			timeout = 1,
			uuid = "c591e443-1eca-4649-9ff2-6ef860ce2232",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "AnyoneCore.Shotcall(\"Lady tether on you\",true,3,false)\nself.used=true",
						conditions = 
						{
							
							{
								"476c04ab-4d94-66ca-b037-afc88fb07ab5",
								true,
							},
						},
						name = "Call tether",
						uuid = "00253867-76aa-b42a-974d-1b340e53a510",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn not not (p and p.localmapid==810 and eventArgs.sourceEntityContentID==7725 and eventArgs.newTetherID==17 and eventArgs.newTargetID==p.id)",
						dequeueIfLuaFalse = true,
						name = "Lady tethered to self",
						uuid = "476c04ab-4d94-66ca-b037-afc88fb07ab5",
						version = 3,
					},
				},
			},
			displayPath = "Hells' Kier/Draws",
			eventType = 15,
			name = "Scarlet Lady tether on you",
			timeout = 1,
			uuid = "13c4bcd8-dd98-dc06-9caf-889396c356c6",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e or not e.pos then d(\"[Hells' Kier] arrow object not found\") return end\n-- eight spots, 0 = south, counted towards east\nlocal spot=math.floor((math.atan2(e.pos.x-100,e.pos.z-100)+math.pi/8)/(math.pi/4))%8\ndata.kierArrows=data.kierArrows or {}\nif eventArgs.a2==1 then data.kierArrows[spot]=nil return end\n-- the arrow is a compass direction\nlocal headings={[64]=0,[8]=math.pi,[512]=math.pi/2,[4096]=-math.pi/2}\nlocal q=data.kierArrows[spot] or {}\ndata.kierArrows[spot]=q\nq[#q+1]={h=headings[eventArgs.a2],at=Now()}",
						conditions = 
						{
							
							{
								"1dc26fe1-376e-dfe5-b058-38faf69c05bd",
								true,
							},
						},
						name = "Queue arrow",
						uuid = "e29f5a96-850f-6367-afc0-8684f62c12a7",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nlocal a=eventArgs.a2\nreturn not not (p and p.localmapid==810 and eventArgs.entityContentID==2007457 and (a==1 or a==8 or a==64 or a==512 or a==4096))",
						dequeueIfLuaFalse = true,
						name = "Arrow floor object",
						uuid = "1dc26fe1-376e-dfe5-b058-38faf69c05bd",
						version = 3,
					},
				},
			},
			displayPath = "Hells' Kier/Draws",
			eventType = 19,
			name = "Suzaku arrow record",
			timeout = 1,
			uuid = "5e0d0085-9a68-dcbc-9ca9-efed0c359aa1",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e or not e.pos then return end\nlocal spot=math.floor((math.atan2(e.pos.x-100,e.pos.z-100)+math.pi/8)/(math.pi/4))%8\nlocal now=Now()\n-- keep facing until the buff lands, about 0.8 s after the cast\nfor _,a in ipairs(data.kierArrows[spot] or {}) do\n    if not a.done then a.done=now+1100 break end\nend",
						conditions = 
						{
							
							{
								"63b6201e-7991-8948-8663-bd855d801885",
								true,
							},
						},
						name = "Finish arrow",
						uuid = "1703c15c-3f48-aeb6-954e-02ed3322dc3d",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local id=eventArgs.spellID\nreturn not not (data.kierArrows and eventArgs.entityContentID==7705 and (id==12840 or id==12841))",
						dequeueIfLuaFalse = true,
						name = "Echo reached a spot",
						uuid = "63b6201e-7991-8948-8663-bd855d801885",
						version = 3,
					},
				},
			},
			displayPath = "Hells' Kier/Draws",
			eventType = 2,
			name = "Suzaku arrow hit",
			timeout = 1,
			uuid = "8db1a68a-cd29-2767-8bc7-7a8b64f1777a",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal A=TensorCore.API.TensorACR\nif not A or not A.setLockFaceHeading then return end\nlocal want=data.kierArrowWant\nif want then\n    A.setLockFaceHeading(want)\n    A.setHardLockFace(true)\n    A.toggleLockFace(true)\nelseif TrialsKierArrowLock~=nil then\n    A.toggleLockFace(false)\n    A.setHardLockFace(false)\nend\nTrialsKierArrowLock=want",
						conditions = 
						{
							
							{
								"9a465f2e-6551-9776-a8a4-3b2a5c57cb50",
								true,
							},
						},
						name = "Set or release lockface",
						uuid = "01c7eae6-b799-fdfc-9889-1164dceeb9c1",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not data.kierArrows and TrialsKierArrowLock==nil then return false end\nlocal want\nlocal p=TensorCore.mGetPlayer()\nif data.kierArrows and p and p.alive and p.localmapid==810 then\n    local dx,dz=p.pos.x-100,p.pos.z-100\n    local r=dx*dx+dz*dz\n    if r>16 and r<144 then\n        local spot=math.floor((math.atan2(dx,dz)+math.pi/8)/(math.pi/4))%8\n        local now=Now()\n        for _,a in ipairs(data.kierArrows[spot] or {}) do\n            if now-a.at<15000 and not (a.done and now>=a.done) then want=a.h break end\n        end\n    end\nend\ndata.kierArrowWant=want\nreturn want~=TrialsKierArrowLock",
						dequeueIfLuaFalse = true,
						name = "Lockface change",
						uuid = "9a465f2e-6551-9776-a8a4-3b2a5c57cb50",
						version = 3,
					},
				},
			},
			displayPath = "Hells' Kier/Draws",
			name = "Suzaku arrow auto lockface",
			timeout = 1,
			uuid = "0492547e-4fce-aa85-9767-4c2df4db6ecd",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Hells' Kier",
			name = "Mitigations",
			uuid = "677189e6-d862-2827-819a-2f95efb09951",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Log: 3.7 s channel, cast resolves about 0.33 s later. Immunity lasts 6 s.\ndata.kierRefrain=Now()+eventArgs.channelTimeMax*1000+330\nself.used=true",
						conditions = 
						{
							
							{
								"f919a51d-d944-22ea-b0e9-b7aed2f08eed",
								true,
							},
						},
						name = "Record knockback time",
						uuid = "2154c25b-5404-f5ce-b677-3e22f12c144d",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn not not (p and p.localmapid==810 and eventArgs.spellID==12848 and eventArgs.entityContentID==7702)",
						dequeueIfLuaFalse = true,
						name = "Ruthless Refrain channel",
						uuid = "f919a51d-d944-22ea-b0e9-b7aed2f08eed",
						version = 3,
					},
				},
			},
			displayPath = "Hells' Kier/Mitigations",
			eventType = 3,
			name = "Ruthless Refrain schedule immunity",
			uuid = "0baa6091-e6d2-9d7f-b950-0eef2cb4a442",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local impact=data.kierRefrain\nlocal p=TensorCore.mGetPlayer()\nlocal now=Now()\nif not impact or not p or p.localmapid~=810 or not p.alive or now>impact+450 then\n    if KierImmunityVar then _G[KierImmunityVar]=false;KierImmunityVar=nil end\n    data.kierRefrain=nil\n    self.used=true\n    return\nend\nlocal magic=TensorCore.isCaster(p) or TensorCore.isHealer(p)\nlocal actionID=magic and 7559 or 7548\nlocal action=ActionList:Get(1,actionID)\nif action and not action.isoncd and not TensorCore.hasBuff(p.id,1209) and not TensorCore.hasBuff(p.id,160) then\n    for _,option in ipairs(TensorCore.API.TensorACR.getHotbarToggles() or {}) do\n        if option.id==actionID and option.enabled~=false and type(option.var)=='string' then\n            if _G[option.var]~=true then _G[option.var]=true;KierImmunityVar=option.var end\n            data.kierImmunityAt=impact\n            TensorCore.timelineLogToFile(\"[Hells' Kier] knockback immunity requested action=\"..actionID..\"\\n\")\n            break\n        end\n    end\nend\nself.used=true",
						conditions = 
						{
							
							{
								"2c0fe8e5-add9-b567-8c12-ce0158974708",
								true,
							},
						},
						name = "Request or release immunity hotbar",
						uuid = "e9e6adc4-b1a1-81f4-a12f-f03c28d863a1",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local impact=data.kierRefrain\nif not impact then return KierImmunityVar~=nil end\nlocal now=Now()\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=810 or not p.alive or now>impact+450 then return true end\n-- request between 2.3 and 0.45 s before the knockback, once\nreturn data.kierImmunityAt~=impact and impact-now<=2300 and impact-now>=450",
						dequeueIfLuaFalse = true,
						name = "Request due or owned request to release",
						uuid = "2c0fe8e5-add9-b567-8c12-ce0158974708",
						version = 3,
					},
				},
			},
			displayPath = "Hells' Kier/Mitigations",
			name = "Ruthless Refrain Arm's Length or Surecast",
			throttleTime = 100,
			uuid = "d46c3113-0265-3ced-a69c-b30989ca0812",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Thornmarch (Hard)",
			uuid = "09e902dc-c600-4cea-b849-3cd0166c2d91",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Thornmarch (Hard)",
			name = "AutoSim",
			uuid = "4e2828c6-8b67-cb27-87bd-52a7f15e297b",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "gStartCombat=false\nlocal settings=AnyoneCore and AnyoneCore.Settings\nif settings then\n    if settings.DutyHelper then settings.DutyHelper.enabled=false end\n    if settings.PrepullHelper then settings.PrepullHelper.enabled=false end\nend\ndata.thornSetup=true\nself.used=true",
						conditions = 
						{
							
							{
								"37943254-5217-0ccb-83b5-c1d7f86f29fd",
								true,
							},
						},
						name = "Disable combat helpers",
						uuid = "11285da0-91ed-810f-88fe-95583e11c086",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn not not (p and (p.localmapid==364 or p.localmapid==1067) and not data.thornSetup)",
						dequeueIfLuaFalse = true,
						name = "Duty setup due",
						uuid = "37943254-5217-0ccb-83b5-c1d7f86f29fd",
						version = 3,
					},
				},
			},
			displayPath = "Thornmarch (Hard)/AutoSim",
			name = "[Thornmarch] Disable combat helpers",
			throttleTime = 1000,
			timeout = 1,
			uuid = "592b20ba-caed-8d93-a1e0-cfce2058d978",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- one clear (25-11-2026): fight ended at about 226 s\nlocal api=TensorCore.API.TensorACR\nlocal ok,elapsed=pcall(api.getAutoSimTime)\nif ok and type(elapsed)==\"number\" and elapsed>=0 and elapsed<=60 then\n    api.setAutoSimKillTime(226)\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0,25)\n    data.thornForecast=true\nend\nself.used=true",
						conditions = 
						{
							
							{
								"8ddeebed-395d-9094-b76a-31b7194f8e46",
								true,
							},
						},
						name = "Set kill time",
						uuid = "669812e8-21ac-601a-8758-fe989a63362a",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn not not (p and (p.localmapid==364 or p.localmapid==1067) and eventArgs.spellID==29216 and not data.thornForecast)",
						dequeueIfLuaFalse = true,
						name = "Duty and first cast",
						uuid = "8ddeebed-395d-9094-b76a-31b7194f8e46",
						version = 3,
					},
				},
			},
			displayPath = "Thornmarch (Hard)/AutoSim",
			eventType = 3,
			name = "Thornmarch AutoSim baseline",
			timeout = 1,
			uuid = "a1deeb8d-a08e-1a60-8122-70e2651f2f5a",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Thornmarch (Hard)",
			name = "Draws",
			uuid = "4e90b7f8-e80b-06cc-b987-8a016d04c2a6",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local e=eventArgs\n-- cones use their full angle in degrees, the rest are circles\nlocal cones={[29215]=90,[29213]=120}\nlocal ms=math.floor(e.startTime+e.duration*1000-Now())\nif ms>0 then\n    local drawer=TensorCore.getStaticDrawer(0x603333FF,2)\n    if cones[e.aoeID] then\n        drawer:addTimedCone(ms,e.x,e.y,e.z,e.aoeLength,math.rad(cones[e.aoeID]),e.heading,0,false,true)\n    else\n        drawer:addTimedCircle(ms,e.x,e.y,e.z,e.aoeLength,0,false,true)\n    end\n    AnyoneCore.addWorldTextCountdown(ms,{x=e.x,y=e.y+1,z=e.z},0xFFFFFFFF,true,1.1)\nend\nself.used=true",
						conditions = 
						{
							
							{
								"92821842-4c92-6fc5-b76a-89017119b74d",
								true,
							},
						},
						name = "Draw attack",
						uuid = "8b08308e-6923-0a90-8bca-022810702f75",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or (p.localmapid~=364 and p.localmapid~=1067) then return false end\nlocal ids={[29216]=true,[29207]=true,[29197]=true,[29196]=true,[29215]=true,[29213]=true}\nreturn ids[eventArgs.aoeID]==true",
						dequeueIfLuaFalse = true,
						name = "Tracked moogle attack",
						uuid = "92821842-4c92-6fc5-b76a-89017119b74d",
						version = 3,
					},
				},
			},
			displayPath = "Thornmarch (Hard)/Draws",
			eventType = 18,
			name = "Thornmarch hazard draws",
			timeout = 1,
			uuid = "78c95d74-0c68-9817-b7a0-6b6d88299c93",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- marker to damage: 6.3 s; radius 6 from the attack data\nlocal drawer=TensorCore.getStaticDrawer(0x4033FF33,2)\ndrawer:addTimedCircleOnEnt(6300,eventArgs.entityID,6,0,false,true)\nAnyoneCore.Shotcall(\"Stack\",true,3,false)\nself.used=true",
						conditions = 
						{
							
							{
								"3dc2cc82-f7c0-746a-88e8-b22be3bab9eb",
								true,
							},
						},
						name = "Draw stack",
						uuid = "689049cc-d7d2-9c71-95b3-1b80e2728f0a",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn not not (p and (p.localmapid==364 or p.localmapid==1067) and eventArgs.markerID==93)",
						dequeueIfLuaFalse = true,
						name = "Stack marker",
						uuid = "3dc2cc82-f7c0-746a-88e8-b22be3bab9eb",
						version = 3,
					},
				},
			},
			displayPath = "Thornmarch (Hard)/Draws",
			eventType = 4,
			name = "Thornmarch Mog Stone stack",
			timeout = 1,
			uuid = "0a3c7253-3f6b-8ecb-8ae1-3722849faa0a",
			version = 2,
		},
	}, 
	inheritedProfiles = 
	{
	},
}



return tbl
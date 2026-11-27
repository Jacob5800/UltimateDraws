local tbl = 
{
	
	{
		data = 
		{
			displayPath = "",
			name = "General",
			uuid = "ec0f2112-934b-dfd3-828e-86c2d9f8c6f2",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local settings=AnyoneCore and AnyoneCore.Settings\nif settings and settings.PrepullHelper and settings.PrepullHelper.enabled then\n    settings.PrepullHelper.enabled=false\nend\nself.used=true",
						conditions = 
						{
							
							{
								"30de5e7e-b3e5-f45b-af12-fc4ce9033efc",
								true,
							},
						},
						name = "Disable Prepull Helper",
						uuid = "ebdfff68-6208-852e-9a2c-2a1172c42677",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local map=eventArgs.newMapID\n-- every alliance raid released so far\nlocal released={[174]=true,[372]=true,[151]=true,[508]=true,[556]=true,[627]=true,[734]=true,[776]=true,[826]=true,[882]=true,[917]=true,[966]=true,[1054]=true,[1118]=true,[1178]=true,[1248]=true,[1304]=true,[1368]=true}\nif released[map] then return true end\n-- later raids count once this profile has reactions gated on their map\nif not AllianceRaidProfileMaps then\n    local maps={}\n    local profile=FileLoad(GetLuaModsPath()..[[TensorReactions\\GeneralReactions\\Alliance raid.lua]])\n    for _,r in ipairs(profile or {}) do\n        for _,c in ipairs(r.data and r.data.conditions or {}) do\n            local x=c.data\n            if x.localmapid then maps[x.localmapid]=true end\n            for _,id in ipairs(x.localMapIDList or {}) do maps[id]=true end\n            for id in (x.conditionLua or \"\"):gmatch(\"localmapid%s*[~=]=%s*(%d+)\") do maps[tonumber(id)]=true end\n        end\n    end\n    AllianceRaidProfileMaps=maps\nend\nreturn AllianceRaidProfileMaps[map]==true",
						dequeueIfLuaFalse = true,
						name = "Entered an alliance raid",
						uuid = "30de5e7e-b3e5-f45b-af12-fc4ce9033efc",
						version = 3,
					},
				},
			},
			displayPath = "General",
			eventType = 11,
			execute = "if AnyoneCore and AnyoneCore.Settings and AnyoneCore.Settings.PrepullHelper then\n    if AnyoneCore.Settings.PrepullHelper.enabled then\n        AnyoneCore.Settings.PrepullHelper.enabled = false\n    end\n    self.used = true\nend",
			name = "[AA] Disable Prepull Helper - Zone entry",
			throttleTime = 1000,
			uuid = "ed07374b-c4d7-0cc6-b3b5-0612fc74cb2f",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local settings=AnyoneCore and AnyoneCore.Settings\nif settings and settings.PrepullHelper and settings.PrepullHelper.enabled then\n    settings.PrepullHelper.enabled=false\nend\nself.used=true",
						conditions = 
						{
							
							{
								"0b9a944f-4e11-0fb4-9968-787aa0a6f346",
								true,
							},
						},
						name = "Disable Prepull Helper",
						uuid = "732b4e86-352e-630d-a228-90d1347ea1ad",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p then return false end\nlocal map=p.localmapid\n-- every alliance raid released so far\nlocal released={[174]=true,[372]=true,[151]=true,[508]=true,[556]=true,[627]=true,[734]=true,[776]=true,[826]=true,[882]=true,[917]=true,[966]=true,[1054]=true,[1118]=true,[1178]=true,[1248]=true,[1304]=true,[1368]=true}\nif released[map] then return true end\n-- later raids count once this profile has reactions gated on their map\nif not AllianceRaidProfileMaps then\n    local maps={}\n    local profile=FileLoad(GetLuaModsPath()..[[TensorReactions\\GeneralReactions\\Alliance raid.lua]])\n    for _,r in ipairs(profile or {}) do\n        for _,c in ipairs(r.data and r.data.conditions or {}) do\n            local x=c.data\n            if x.localmapid then maps[x.localmapid]=true end\n            for _,id in ipairs(x.localMapIDList or {}) do maps[id]=true end\n            for id in (x.conditionLua or \"\"):gmatch(\"localmapid%s*[~=]=%s*(%d+)\") do maps[tonumber(id)]=true end\n        end\n    end\n    AllianceRaidProfileMaps=maps\nend\nreturn AllianceRaidProfileMaps[map]==true",
						dequeueIfLuaFalse = true,
						name = "In an alliance raid",
						uuid = "0b9a944f-4e11-0fb4-9968-787aa0a6f346",
						version = 3,
					},
				},
			},
			displayPath = "General",
			eventType = 16,
			execute = "if AnyoneCore and AnyoneCore.Settings and AnyoneCore.Settings.PrepullHelper then\n    if AnyoneCore.Settings.PrepullHelper.enabled then\n        AnyoneCore.Settings.PrepullHelper.enabled = false\n    end\n    self.used = true\nend",
			name = "[AA] Disable Prepull Helper - Countdown",
			uuid = "1e3d22b5-6144-c719-aca0-5754c0218386",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "AutoSim",
			uuid = "547f6f75-3f24-8514-a761-1fe91776e908",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "AutoSim",
			name = "Jeuno: The First Walk",
			uuid = "055f4c24-1073-3cbe-9c8f-a226fbd7a86e",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\n-- Prishe of the Distant Chains: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2057]=all[2057] or {}\nlocal state=all[2057]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(195)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(168,7.2)\n state.phases={{\"CasterDowntime\",29.5,32.5,1},{\"CasterDowntime\",34.5,36.0,1},{\"CasterDowntime\",87.0,88.0,1},{\"CasterDowntime\",90.0,93.0,1},{\"CasterDowntime\",98.5,101.0,1},{\"CasterDowntime\",125.5,127.5,1},{\"CasterDowntime\",132.0,134.0,1},{\"CasterDowntime\",148.0,151.5,1},{\"GroundFieldMovement\",132.0,134.0,2},{\"GroundFieldMovement\",148.0,151.5,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
						conditions = 
						{
							
							{
								"0f7c9bc6-9e24-a31e-91dd-99c12174f48a",
								true,
							},
							
							{
								"418d26d6-329d-02e5-8ce0-64296d5a4c6a",
								true,
							},
							
							{
								"75e4df07-8d12-fc22-8d89-dc0b0b6fb40f",
								true,
							},
						},
						endIfUsed = true,
						name = "Apply boss schedule once",
						uuid = "1c92d800-b3b5-7ec2-83ad-f52453f53d30",
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
						localmapid = 1248,
						name = "Jeuno: The First Walk",
						uuid = "0f7c9bc6-9e24-a31e-91dd-99c12174f48a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then return false end\nlocal ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t<=0 and t>=-120",
						name = "AutoSim countdown ready",
						uuid = "75e4df07-8d12-fc22-8d89-dc0b0b6fb40f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 2,
						contentid = 13351,
						name = "Boss 13351",
						uuid = "418d26d6-329d-02e5-8ce0-64296d5a4c6a",
						version = 3,
					},
				},
			},
			displayPath = "AutoSim/Jeuno: The First Walk",
			eventType = 16,
			name = "[AutoSim] Prishe of the Distant Chains",
			uuid = "3638e1b9-6d56-09f7-9d9d-c861dde0343c",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\n-- Fafnir the Forgotten: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2058]=all[2058] or {}\nlocal state=all[2058]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(183)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(155,11.67)\n state.phases={{\"CasterDowntime\",21.0,22.0,1},{\"CasterDowntime\",32.0,34.5,1},{\"CasterDowntime\",35.5,37.0,1},{\"CasterDowntime\",39.5,43.0,1},{\"CasterDowntime\",56.5,60.0,1},{\"CasterDowntime\",75.5,77.0,1},{\"CasterDowntime\",105.5,107.5,1},{\"CasterDowntime\",109.0,110.0,1},{\"CasterDowntime\",114.0,115.0,1},{\"CasterDowntime\",129.5,132.0,1},{\"CasterDowntime\",138.5,140.0,1},{\"CasterDowntime\",142.0,143.0,1},{\"CasterDowntime\",150.0,152.5,1},{\"CasterDowntime\",156.0,157.0,1},{\"CasterDowntime\",158.5,160.5,1}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
						conditions = 
						{
							
							{
								"46f9aa01-dea8-f2fb-8d79-5dc3f39b5ac9",
								true,
							},
							
							{
								"827410e6-eca0-9e88-839f-f51e0aab7d29",
								true,
							},
							
							{
								"bb1a8209-4fcc-b6fa-8912-6e224fde76f4",
								true,
							},
						},
						endIfUsed = true,
						name = "Apply boss schedule once",
						uuid = "4889c277-860b-6789-a4f5-8cc6a6812be8",
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
						localmapid = 1248,
						name = "Jeuno: The First Walk",
						uuid = "46f9aa01-dea8-f2fb-8d79-5dc3f39b5ac9",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then return false end\nlocal ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t<=0 and t>=-120",
						name = "AutoSim countdown ready",
						uuid = "bb1a8209-4fcc-b6fa-8912-6e224fde76f4",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 2,
						contentid = 13662,
						name = "Boss 13662",
						uuid = "827410e6-eca0-9e88-839f-f51e0aab7d29",
						version = 3,
					},
				},
			},
			displayPath = "AutoSim/Jeuno: The First Walk",
			eventType = 16,
			name = "[AutoSim] Fafnir the Forgotten",
			uuid = "2d203364-5431-5e1f-bfcb-54df5e495eec",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\n-- Ark Angels: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2059]=all[2059] or {}\nlocal state=all[2059]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(273)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(247.846,5.25)\n state.phases={{\"FullDowntime\",117.03,121.78,1},{\"CasterDowntime\",25.0,31.5,1},{\"CasterDowntime\",32.5,42.5,1},{\"CasterDowntime\",64.5,65.5,1},{\"CasterDowntime\",68.5,73.5,1},{\"CasterDowntime\",74.5,77.0,1},{\"CasterDowntime\",105.0,109.0,1},{\"CasterDowntime\",147.0,150.5,1},{\"CasterDowntime\",221.0,222.0,1},{\"CasterDowntime\",240.5,241.5,1},{\"CasterDowntime\",243.5,246.5,1},{\"CasterDowntime\",247.5,248.5,1},{\"CasterDowntime\",251.0,253.0,1},{\"CasterDowntime\",256.5,263.5,1}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
						conditions = 
						{
							
							{
								"e4dd11bc-c598-0852-9479-b10c4286c7c8",
								true,
							},
							
							{
								"ef98d279-92ba-df9c-8fe1-344820c74b08",
								true,
							},
							
							{
								"20c355a8-d694-00c7-85b9-9279c534d644",
								true,
							},
						},
						endIfUsed = true,
						name = "Apply boss schedule once (13641)",
						uuid = "33e501e2-dd2d-ab27-8943-3ebbb3b01531",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\n-- Ark Angels: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2059]=all[2059] or {}\nlocal state=all[2059]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(273)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(247.846,5.25)\n state.phases={{\"FullDowntime\",117.03,121.78,1},{\"CasterDowntime\",25.0,31.5,1},{\"CasterDowntime\",32.5,42.5,1},{\"CasterDowntime\",64.5,65.5,1},{\"CasterDowntime\",68.5,73.5,1},{\"CasterDowntime\",74.5,77.0,1},{\"CasterDowntime\",105.0,109.0,1},{\"CasterDowntime\",147.0,150.5,1},{\"CasterDowntime\",221.0,222.0,1},{\"CasterDowntime\",240.5,241.5,1},{\"CasterDowntime\",243.5,246.5,1},{\"CasterDowntime\",247.5,248.5,1},{\"CasterDowntime\",251.0,253.0,1},{\"CasterDowntime\",256.5,263.5,1}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
						conditions = 
						{
							
							{
								"e4dd11bc-c598-0852-9479-b10c4286c7c8",
								true,
							},
							
							{
								"42413cd1-0cff-93e6-9c44-6f93e4e04d2e",
								true,
							},
							
							{
								"20c355a8-d694-00c7-85b9-9279c534d644",
								true,
							},
						},
						endIfUsed = true,
						name = "Apply boss schedule once (13642)",
						uuid = "e71089b4-db5c-a32d-aa5d-8b805cef55cc",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\n-- Ark Angels: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2059]=all[2059] or {}\nlocal state=all[2059]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(273)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(247.846,5.25)\n state.phases={{\"FullDowntime\",117.03,121.78,1},{\"CasterDowntime\",25.0,31.5,1},{\"CasterDowntime\",32.5,42.5,1},{\"CasterDowntime\",64.5,65.5,1},{\"CasterDowntime\",68.5,73.5,1},{\"CasterDowntime\",74.5,77.0,1},{\"CasterDowntime\",105.0,109.0,1},{\"CasterDowntime\",147.0,150.5,1},{\"CasterDowntime\",221.0,222.0,1},{\"CasterDowntime\",240.5,241.5,1},{\"CasterDowntime\",243.5,246.5,1},{\"CasterDowntime\",247.5,248.5,1},{\"CasterDowntime\",251.0,253.0,1},{\"CasterDowntime\",256.5,263.5,1}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
						conditions = 
						{
							
							{
								"e4dd11bc-c598-0852-9479-b10c4286c7c8",
								true,
							},
							
							{
								"8e299eb8-4dc2-7daa-8270-07d8c26e949f",
								true,
							},
							
							{
								"20c355a8-d694-00c7-85b9-9279c534d644",
								true,
							},
						},
						endIfUsed = true,
						name = "Apply boss schedule once (13643)",
						uuid = "6e30cddb-cb56-2ac1-b6f9-8b8b2934949f",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\n-- Ark Angels: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2059]=all[2059] or {}\nlocal state=all[2059]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(273)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(247.846,5.25)\n state.phases={{\"FullDowntime\",117.03,121.78,1},{\"CasterDowntime\",25.0,31.5,1},{\"CasterDowntime\",32.5,42.5,1},{\"CasterDowntime\",64.5,65.5,1},{\"CasterDowntime\",68.5,73.5,1},{\"CasterDowntime\",74.5,77.0,1},{\"CasterDowntime\",105.0,109.0,1},{\"CasterDowntime\",147.0,150.5,1},{\"CasterDowntime\",221.0,222.0,1},{\"CasterDowntime\",240.5,241.5,1},{\"CasterDowntime\",243.5,246.5,1},{\"CasterDowntime\",247.5,248.5,1},{\"CasterDowntime\",251.0,253.0,1},{\"CasterDowntime\",256.5,263.5,1}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
						conditions = 
						{
							
							{
								"e4dd11bc-c598-0852-9479-b10c4286c7c8",
								true,
							},
							
							{
								"00a9d3be-2bda-363e-9f52-15999a099a52",
								true,
							},
							
							{
								"20c355a8-d694-00c7-85b9-9279c534d644",
								true,
							},
						},
						endIfUsed = true,
						name = "Apply boss schedule once (13644)",
						uuid = "e277b571-42f2-77eb-a4f2-284a7107bb09",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\n-- Ark Angels: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2059]=all[2059] or {}\nlocal state=all[2059]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(273)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(247.846,5.25)\n state.phases={{\"FullDowntime\",117.03,121.78,1},{\"CasterDowntime\",25.0,31.5,1},{\"CasterDowntime\",32.5,42.5,1},{\"CasterDowntime\",64.5,65.5,1},{\"CasterDowntime\",68.5,73.5,1},{\"CasterDowntime\",74.5,77.0,1},{\"CasterDowntime\",105.0,109.0,1},{\"CasterDowntime\",147.0,150.5,1},{\"CasterDowntime\",221.0,222.0,1},{\"CasterDowntime\",240.5,241.5,1},{\"CasterDowntime\",243.5,246.5,1},{\"CasterDowntime\",247.5,248.5,1},{\"CasterDowntime\",251.0,253.0,1},{\"CasterDowntime\",256.5,263.5,1}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
						conditions = 
						{
							
							{
								"e4dd11bc-c598-0852-9479-b10c4286c7c8",
								true,
							},
							
							{
								"80031283-c96a-6981-9090-65f33e7071fe",
								true,
							},
							
							{
								"20c355a8-d694-00c7-85b9-9279c534d644",
								true,
							},
						},
						endIfUsed = true,
						name = "Apply boss schedule once (13645)",
						uuid = "6436165a-4481-fea4-94e9-88128908c57f",
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
						localmapid = 1248,
						name = "Jeuno: The First Walk",
						uuid = "e4dd11bc-c598-0852-9479-b10c4286c7c8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then return false end\nlocal ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t<=0 and t>=-120",
						name = "AutoSim countdown ready",
						uuid = "20c355a8-d694-00c7-85b9-9279c534d644",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 2,
						contentid = 13641,
						name = "Boss 13641",
						uuid = "ef98d279-92ba-df9c-8fe1-344820c74b08",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 2,
						contentid = 13642,
						name = "Boss 13642",
						uuid = "42413cd1-0cff-93e6-9c44-6f93e4e04d2e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 2,
						contentid = 13643,
						name = "Boss 13643",
						uuid = "8e299eb8-4dc2-7daa-8270-07d8c26e949f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 2,
						contentid = 13644,
						name = "Boss 13644",
						uuid = "00a9d3be-2bda-363e-9f52-15999a099a52",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 2,
						contentid = 13645,
						name = "Boss 13645",
						uuid = "80031283-c96a-6981-9090-65f33e7071fe",
						version = 3,
					},
				},
			},
			displayPath = "AutoSim/Jeuno: The First Walk",
			eventType = 16,
			name = "[AutoSim] Ark Angels",
			uuid = "d6f3dedd-bef9-f72d-9f22-b9605651b262",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\n-- Shadow Lord: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2060]=all[2060] or {}\nlocal state=all[2060]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(305)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(280,14.37)\n state.phases={{\"CasterDowntime\",14.5,15.5,1},{\"CasterDowntime\",23.5,26.0,1},{\"CasterDowntime\",35.5,38.5,1},{\"CasterDowntime\",56.5,59.5,1},{\"CasterDowntime\",63.5,64.5,1},{\"CasterDowntime\",77.0,80.5,1},{\"CasterDowntime\",99.5,100.5,1},{\"CasterDowntime\",107.5,108.5,1},{\"CasterDowntime\",137.5,138.5,1},{\"CasterDowntime\",239.5,240.5,1},{\"CasterDowntime\",250.5,253.5,1},{\"GroundFieldMovement\",14.5,15.5,2},{\"GroundFieldMovement\",23.5,26.0,2},{\"GroundFieldMovement\",137.5,138.5,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
						conditions = 
						{
							
							{
								"e95f2d43-076e-b7c2-8136-ecc88e085972",
								true,
							},
							
							{
								"f0f1ae5d-2b11-7eeb-b30c-7ad9c8545383",
								true,
							},
							
							{
								"32df449c-46a9-fc9b-8582-c20f387e804e",
								true,
							},
						},
						endIfUsed = true,
						name = "Apply boss schedule once",
						uuid = "5b19b6d9-9f78-cc14-b3bf-e8e92d7e4f4f",
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
						localmapid = 1248,
						name = "Jeuno: The First Walk",
						uuid = "e95f2d43-076e-b7c2-8136-ecc88e085972",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then return false end\nlocal ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t<=0 and t>=-120",
						name = "AutoSim countdown ready",
						uuid = "32df449c-46a9-fc9b-8582-c20f387e804e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 2,
						contentid = 13653,
						name = "Boss 13653",
						uuid = "f0f1ae5d-2b11-7eeb-b30c-7ad9c8545383",
						version = 3,
					},
				},
			},
			displayPath = "AutoSim/Jeuno: The First Walk",
			eventType = 16,
			name = "[AutoSim] Shadow Lord",
			uuid = "fc25e2f4-8b25-6275-a5dd-c5a8e30218ad",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "AutoSim/Jeuno: The First Walk",
			name = "Automatic boss start",
			uuid = "fa1b74e4-4e4e-975f-9d08-7ac9c5afc8d4",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\n-- Prishe of the Distant Chains: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2057]=all[2057] or {}\nlocal state=all[2057]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(195)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(168,7.2)\n state.phases={{\"CasterDowntime\",29.5,32.5,1},{\"CasterDowntime\",34.5,36.0,1},{\"CasterDowntime\",87.0,88.0,1},{\"CasterDowntime\",90.0,93.0,1},{\"CasterDowntime\",98.5,101.0,1},{\"CasterDowntime\",125.5,127.5,1},{\"CasterDowntime\",132.0,134.0,1},{\"CasterDowntime\",148.0,151.5,1},{\"GroundFieldMovement\",132.0,134.0,2},{\"GroundFieldMovement\",148.0,151.5,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
						conditions = 
						{
							
							{
								"63a24653-678f-527c-a642-19df61c26dbd",
								true,
							},
							
							{
								"db5a3195-bf14-53eb-ba3c-3feb9dceeafe",
								true,
							},
							
							{
								"e09830a4-985a-6e21-9b63-3e506fc13312",
								true,
							},
							
							{
								"a652e523-02f8-c56d-a735-1dc00a0fad03",
								true,
							},
							
							{
								"c00cf479-d105-7c40-b2df-dd3aa6a7f02f",
								true,
							},
							
							{
								"86e48fd4-63bf-71b9-b28e-aeb634bedbfe",
								true,
							},
						},
						endIfUsed = true,
						name = "Apply opening schedule once",
						uuid = "82656c2d-c9a6-83a1-a288-a13b0d0be52a",
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
						localmapid = 1248,
						name = "Jeuno: The First Walk",
						uuid = "63a24653-678f-527c-a642-19df61c26dbd",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In boss combat",
						uuid = "c00cf479-d105-7c40-b2df-dd3aa6a7f02f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local all=data.allianceAutoSimSchedules\nreturn not (all and all[2057] and all[2057].done)",
						dequeueIfLuaFalse = true,
						name = "Schedule not applied this pull",
						uuid = "a652e523-02f8-c56d-a735-1dc00a0fad03",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then return false end\nlocal ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t>=0 and t<=30",
						name = "AutoSim opening ready",
						uuid = "86e48fd4-63bf-71b9-b28e-aeb634bedbfe",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 40935,
						name = "Opening cast 40935",
						uuid = "db5a3195-bf14-53eb-ba3c-3feb9dceeafe",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 13351,
						name = "Boss 13351",
						uuid = "e09830a4-985a-6e21-9b63-3e506fc13312",
						version = 3,
					},
				},
			},
			displayPath = "AutoSim/Jeuno: The First Walk/Automatic boss start",
			eventType = 3,
			name = "[AutoSim start] Prishe of the Distant Chains",
			timeout = 10,
			uuid = "ee508352-c964-c386-b099-982b9c8cc4d5",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\n-- Fafnir the Forgotten: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2058]=all[2058] or {}\nlocal state=all[2058]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(183)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(155,11.67)\n state.phases={{\"CasterDowntime\",21.0,22.0,1},{\"CasterDowntime\",32.0,34.5,1},{\"CasterDowntime\",35.5,37.0,1},{\"CasterDowntime\",39.5,43.0,1},{\"CasterDowntime\",56.5,60.0,1},{\"CasterDowntime\",75.5,77.0,1},{\"CasterDowntime\",105.5,107.5,1},{\"CasterDowntime\",109.0,110.0,1},{\"CasterDowntime\",114.0,115.0,1},{\"CasterDowntime\",129.5,132.0,1},{\"CasterDowntime\",138.5,140.0,1},{\"CasterDowntime\",142.0,143.0,1},{\"CasterDowntime\",150.0,152.5,1},{\"CasterDowntime\",156.0,157.0,1},{\"CasterDowntime\",158.5,160.5,1}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
						conditions = 
						{
							
							{
								"288706e1-daec-87c0-abb8-689350b47e2a",
								true,
							},
							
							{
								"14a364b5-bafc-435f-9556-4533e48f60e8",
								true,
							},
							
							{
								"9d5e8b9b-09a5-088a-b48b-96a47deb5d62",
								true,
							},
							
							{
								"22cc9e62-546a-99bd-a726-4f96ab5d12bd",
								true,
							},
							
							{
								"ef9599d5-ff01-85ba-9eb9-c701b5a3c430",
								true,
							},
							
							{
								"0a02cc78-addd-c0eb-845c-539c3b04d24c",
								true,
							},
						},
						endIfUsed = true,
						name = "Apply opening schedule once",
						uuid = "02bec1a2-442c-d67c-9cd5-45e7c1cab6aa",
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
						localmapid = 1248,
						name = "Jeuno: The First Walk",
						uuid = "288706e1-daec-87c0-abb8-689350b47e2a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In boss combat",
						uuid = "ef9599d5-ff01-85ba-9eb9-c701b5a3c430",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local all=data.allianceAutoSimSchedules\nreturn not (all and all[2058] and all[2058].done)",
						dequeueIfLuaFalse = true,
						name = "Schedule not applied this pull",
						uuid = "22cc9e62-546a-99bd-a726-4f96ab5d12bd",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then return false end\nlocal ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t>=0 and t<=30",
						name = "AutoSim opening ready",
						uuid = "0a02cc78-addd-c0eb-845c-539c3b04d24c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 40854,
						name = "Opening cast 40854",
						uuid = "14a364b5-bafc-435f-9556-4533e48f60e8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 13662,
						name = "Boss 13662",
						uuid = "9d5e8b9b-09a5-088a-b48b-96a47deb5d62",
						version = 3,
					},
				},
			},
			displayPath = "AutoSim/Jeuno: The First Walk/Automatic boss start",
			eventType = 3,
			name = "[AutoSim start] Fafnir the Forgotten",
			timeout = 10,
			uuid = "e31a8a6b-abc0-62fa-9c6f-3e5efd959acc",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\n-- Ark Angels: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2059]=all[2059] or {}\nlocal state=all[2059]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(273)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(247.846,5.25)\n state.phases={{\"FullDowntime\",117.03,121.78,1},{\"CasterDowntime\",25.0,31.5,1},{\"CasterDowntime\",32.5,42.5,1},{\"CasterDowntime\",64.5,65.5,1},{\"CasterDowntime\",68.5,73.5,1},{\"CasterDowntime\",74.5,77.0,1},{\"CasterDowntime\",105.0,109.0,1},{\"CasterDowntime\",147.0,150.5,1},{\"CasterDowntime\",221.0,222.0,1},{\"CasterDowntime\",240.5,241.5,1},{\"CasterDowntime\",243.5,246.5,1},{\"CasterDowntime\",247.5,248.5,1},{\"CasterDowntime\",251.0,253.0,1},{\"CasterDowntime\",256.5,263.5,1}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
						conditions = 
						{
							
							{
								"7d49b772-46e3-dabd-b14b-a2859cd899a9",
								true,
							},
							
							{
								"89589018-6de2-2621-b3fc-acef4050a25c",
								true,
							},
							
							{
								"614cfa3b-da06-826e-89f0-3183a2e2c23a",
								true,
							},
							
							{
								"205a3a67-a9a2-47f6-beeb-f23f983670e3",
								true,
							},
							
							{
								"586c141f-62e9-0332-9883-95d448b4cacc",
								true,
							},
							
							{
								"ed84b0e2-62ce-6795-9b00-b3a884208f10",
								true,
							},
						},
						endIfUsed = true,
						name = "Apply opening schedule once",
						uuid = "1dc85351-b557-d770-b954-ffe24a321572",
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
						localmapid = 1248,
						name = "Jeuno: The First Walk",
						uuid = "7d49b772-46e3-dabd-b14b-a2859cd899a9",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In boss combat",
						uuid = "586c141f-62e9-0332-9883-95d448b4cacc",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local all=data.allianceAutoSimSchedules\nreturn not (all and all[2059] and all[2059].done)",
						dequeueIfLuaFalse = true,
						name = "Schedule not applied this pull",
						uuid = "205a3a67-a9a2-47f6-beeb-f23f983670e3",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then return false end\nlocal ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t>=0 and t<=30",
						name = "AutoSim opening ready",
						uuid = "ed84b0e2-62ce-6795-9b00-b3a884208f10",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 41059,
						name = "Opening cast 41059",
						uuid = "89589018-6de2-2621-b3fc-acef4050a25c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 13641,
						name = "Boss 13641",
						uuid = "614cfa3b-da06-826e-89f0-3183a2e2c23a",
						version = 3,
					},
				},
			},
			displayPath = "AutoSim/Jeuno: The First Walk/Automatic boss start",
			eventType = 3,
			name = "[AutoSim start] Ark Angels",
			timeout = 10,
			uuid = "6df7f981-102a-213e-ae04-173aa574f968",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\n-- Shadow Lord: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2060]=all[2060] or {}\nlocal state=all[2060]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(305)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(280,14.37)\n state.phases={{\"CasterDowntime\",14.5,15.5,1},{\"CasterDowntime\",23.5,26.0,1},{\"CasterDowntime\",35.5,38.5,1},{\"CasterDowntime\",56.5,59.5,1},{\"CasterDowntime\",63.5,64.5,1},{\"CasterDowntime\",77.0,80.5,1},{\"CasterDowntime\",99.5,100.5,1},{\"CasterDowntime\",107.5,108.5,1},{\"CasterDowntime\",137.5,138.5,1},{\"CasterDowntime\",239.5,240.5,1},{\"CasterDowntime\",250.5,253.5,1},{\"GroundFieldMovement\",14.5,15.5,2},{\"GroundFieldMovement\",23.5,26.0,2},{\"GroundFieldMovement\",137.5,138.5,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
						conditions = 
						{
							
							{
								"e823af89-5fb4-00f8-8038-b90da20e5d39",
								true,
							},
							
							{
								"0e92667b-3f27-3eb7-b0d1-a0c22d13f277",
								true,
							},
							
							{
								"9984e375-044e-012e-84e8-aebd44a608b6",
								true,
							},
							
							{
								"73676c34-de91-06a8-911e-3ec1401da762",
								true,
							},
							
							{
								"6beb3c9f-3524-3a5f-9298-2665cefbd478",
								true,
							},
							
							{
								"26636757-93e6-3bfd-bc26-594a0c2ae884",
								true,
							},
						},
						endIfUsed = true,
						name = "Apply opening schedule once",
						uuid = "2cd083d7-41bd-8f7d-8505-0bbe43a47b31",
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
						localmapid = 1248,
						name = "Jeuno: The First Walk",
						uuid = "e823af89-5fb4-00f8-8038-b90da20e5d39",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In boss combat",
						uuid = "6beb3c9f-3524-3a5f-9298-2665cefbd478",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local all=data.allianceAutoSimSchedules\nreturn not (all and all[2060] and all[2060].done)",
						dequeueIfLuaFalse = true,
						name = "Schedule not applied this pull",
						uuid = "73676c34-de91-06a8-911e-3ec1401da762",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then return false end\nlocal ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t>=0 and t<=30",
						name = "AutoSim opening ready",
						uuid = "26636757-93e6-3bfd-bc26-594a0c2ae884",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 3,
						eventArgType = 2,
						eventSpellID = 40766,
						name = "Either opening cast",
						spellIDList = 
						{
							40766,
							40767,
						},
						uuid = "0e92667b-3f27-3eb7-b0d1-a0c22d13f277",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 13653,
						name = "Boss 13653",
						uuid = "9984e375-044e-012e-84e8-aebd44a608b6",
						version = 3,
					},
				},
			},
			displayPath = "AutoSim/Jeuno: The First Walk/Automatic boss start",
			eventType = 3,
			name = "[AutoSim start] Shadow Lord",
			timeout = 10,
			uuid = "7d27561e-5aa6-ff61-971b-f9f84554f25e",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "AutoSim",
			name = "San d'Oria: The Second Walk",
			uuid = "36475c3b-32a4-f557-9055-93d91f6f92f6",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\n-- Faithbound Kirin: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2067]=all[2067] or {}\nlocal state=all[2067]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(190.439)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(160.439,4.33)\n state.phases={{\"CasterDowntime\",30.5,32.5,1},{\"CasterDowntime\",33.5,38.0,1},{\"CasterDowntime\",59.5,63.0,1},{\"CasterDowntime\",92.5,93.5,1},{\"CasterDowntime\",95.5,101.0,1},{\"CasterDowntime\",105.5,112.0,1},{\"CasterDowntime\",114.5,115.5,1},{\"CasterDowntime\",120.0,122.0,1},{\"CasterDowntime\",123.0,124.5,1},{\"CasterDowntime\",129.0,130.0,1},{\"CasterDowntime\",140.5,141.5,1},{\"CasterDowntime\",144.5,146.0,1},{\"CasterDowntime\",156.5,159.5,1},{\"CasterDowntime\",160.5,161.5,1},{\"CasterDowntime\",166.5,168.0,1},{\"GroundFieldMovement\",140.5,141.5,2},{\"GroundFieldMovement\",144.5,146.0,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
						conditions = 
						{
							
							{
								"5bff84a0-2fdb-7fcb-b66f-341e940d7342",
								true,
							},
							
							{
								"58716fcb-01c8-6f6c-937e-a1e398d4bb46",
								true,
							},
							
							{
								"2d0cdd94-20a5-cbd8-a18c-6413c0fa8e92",
								true,
							},
						},
						endIfUsed = true,
						name = "Apply boss schedule once",
						uuid = "f900399a-ac13-da3e-b52c-1bbc2e0a9a88",
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
						localmapid = 1304,
						name = "San d'Oria: The Second Walk",
						uuid = "5bff84a0-2fdb-7fcb-b66f-341e940d7342",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then return false end\nlocal ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t<=0 and t>=-120",
						name = "AutoSim countdown ready",
						uuid = "2d0cdd94-20a5-cbd8-a18c-6413c0fa8e92",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 2,
						contentid = 14053,
						name = "Boss 14053",
						uuid = "58716fcb-01c8-6f6c-937e-a1e398d4bb46",
						version = 3,
					},
				},
			},
			displayPath = "AutoSim/San d'Oria: The Second Walk",
			eventType = 16,
			name = "[AutoSim] Faithbound Kirin",
			uuid = "c334914c-f37a-89c2-8807-c0e4a8529cd0",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\n-- Ultima and Omega: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2068]=all[2068] or {}\nlocal state=all[2068]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(239.23)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(209.23,18.66)\n state.phases={{\"FullDowntime\",119.16,146.62,1},{\"CasterDowntime\",31.5,35.0,1},{\"CasterDowntime\",36.5,38.0,1},{\"CasterDowntime\",42.5,45.5,1},{\"CasterDowntime\",78.0,80.5,1},{\"CasterDowntime\",88.0,89.0,1},{\"CasterDowntime\",106.5,108.0,1},{\"CasterDowntime\",110.0,111.5,1},{\"CasterDowntime\",148.5,152.0,1},{\"CasterDowntime\",160.5,163.5,1},{\"CasterDowntime\",165.5,166.5,1},{\"CasterDowntime\",170.0,172.0,1},{\"CasterDowntime\",183.0,184.0,1},{\"CasterDowntime\",188.5,189.5,1},{\"CasterDowntime\",193.5,195.0,1},{\"CasterDowntime\",197.0,202.5,1},{\"CasterDowntime\",204.5,206.0,1},{\"CasterDowntime\",208.5,212.0,1},{\"GroundFieldMovement\",165.5,166.5,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
						conditions = 
						{
							
							{
								"023a646c-2025-1c11-927d-9e73d4309767",
								true,
							},
							
							{
								"7bf74a7c-72b9-4d57-ab54-6b9cf7c4e977",
								true,
							},
							
							{
								"7ccd4bc8-dd77-953f-93c5-c30c0b1bff0d",
								true,
							},
						},
						endIfUsed = true,
						name = "Apply boss schedule once (14230)",
						uuid = "2d3cde87-ee88-5fce-9c62-65a18f488ab7",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\n-- Ultima and Omega: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2068]=all[2068] or {}\nlocal state=all[2068]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(239.23)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(209.23,18.66)\n state.phases={{\"FullDowntime\",119.16,146.62,1},{\"CasterDowntime\",31.5,35.0,1},{\"CasterDowntime\",36.5,38.0,1},{\"CasterDowntime\",42.5,45.5,1},{\"CasterDowntime\",78.0,80.5,1},{\"CasterDowntime\",88.0,89.0,1},{\"CasterDowntime\",106.5,108.0,1},{\"CasterDowntime\",110.0,111.5,1},{\"CasterDowntime\",148.5,152.0,1},{\"CasterDowntime\",160.5,163.5,1},{\"CasterDowntime\",165.5,166.5,1},{\"CasterDowntime\",170.0,172.0,1},{\"CasterDowntime\",183.0,184.0,1},{\"CasterDowntime\",188.5,189.5,1},{\"CasterDowntime\",193.5,195.0,1},{\"CasterDowntime\",197.0,202.5,1},{\"CasterDowntime\",204.5,206.0,1},{\"CasterDowntime\",208.5,212.0,1},{\"GroundFieldMovement\",165.5,166.5,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
						conditions = 
						{
							
							{
								"023a646c-2025-1c11-927d-9e73d4309767",
								true,
							},
							
							{
								"13c850c0-6b8f-6c64-a064-ed4007d56b43",
								true,
							},
							
							{
								"7ccd4bc8-dd77-953f-93c5-c30c0b1bff0d",
								true,
							},
						},
						endIfUsed = true,
						name = "Apply boss schedule once (14231)",
						uuid = "f7c6a008-7d40-747d-9682-115ca7be14d7",
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
						localmapid = 1304,
						name = "San d'Oria: The Second Walk",
						uuid = "023a646c-2025-1c11-927d-9e73d4309767",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then return false end\nlocal ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t<=0 and t>=-120",
						name = "AutoSim countdown ready",
						uuid = "7ccd4bc8-dd77-953f-93c5-c30c0b1bff0d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 2,
						contentid = 14230,
						name = "Boss 14230",
						uuid = "7bf74a7c-72b9-4d57-ab54-6b9cf7c4e977",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 2,
						contentid = 14231,
						name = "Boss 14231",
						uuid = "13c850c0-6b8f-6c64-a064-ed4007d56b43",
						version = 3,
					},
				},
			},
			displayPath = "AutoSim/San d'Oria: The Second Walk",
			eventType = 16,
			name = "[AutoSim] Ultima and Omega",
			uuid = "0047f0d2-b2a2-8db2-96c2-c5aeb0c6f8d0",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\n-- Kam'lanaut: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2069]=all[2069] or {}\nlocal state=all[2069]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(310)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(280,20)\n state.phases={{\"Stun\",128.5,138.5,1},{\"CasterDowntime\",47.5,48.5,1},{\"CasterDowntime\",60.0,67.5,1},{\"CasterDowntime\",72.5,73.5,1},{\"CasterDowntime\",87.0,88.0,1},{\"CasterDowntime\",94.0,98.0,1},{\"CasterDowntime\",186.5,187.5,1},{\"CasterDowntime\",191.0,193.5,1},{\"CasterDowntime\",199.0,203.0,1},{\"CasterDowntime\",218.0,221.0,1},{\"CasterDowntime\",225.5,226.5,1},{\"CasterDowntime\",239.5,241.0,1}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
						conditions = 
						{
							
							{
								"52367b45-65bf-6a0c-8876-99a22d192942",
								true,
							},
							
							{
								"c10329bc-7e9a-d036-800b-24826e4205ff",
								true,
							},
							
							{
								"18fb2d71-e82e-d02c-8343-6a737dc05dff",
								true,
							},
						},
						endIfUsed = true,
						name = "Apply boss schedule once",
						uuid = "ff8e0852-ce4f-56f3-b874-13fe466d948c",
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
						localmapid = 1304,
						name = "San d'Oria: The Second Walk",
						uuid = "52367b45-65bf-6a0c-8876-99a22d192942",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then return false end\nlocal ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t<=0 and t>=-120",
						name = "AutoSim countdown ready",
						uuid = "18fb2d71-e82e-d02c-8343-6a737dc05dff",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 2,
						contentid = 14043,
						name = "Boss 14043",
						uuid = "c10329bc-7e9a-d036-800b-24826e4205ff",
						version = 3,
					},
				},
			},
			displayPath = "AutoSim/San d'Oria: The Second Walk",
			eventType = 16,
			name = "[AutoSim] Kam'lanaut",
			uuid = "032bb28f-dcba-e50d-8916-f7950e82515d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\n-- Eald'narche: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2070]=all[2070] or {}\nlocal state=all[2070]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(315.561)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(285.561,11.05)\n state.phases={{\"FullDowntime\",154.06,187.25,1},{\"Stun\",152.5,184.5,1},{\"CasterDowntime\",20.0,24.0,1},{\"CasterDowntime\",42.5,45.5,1},{\"CasterDowntime\",46.5,47.5,1},{\"CasterDowntime\",64.5,68.5,1},{\"CasterDowntime\",69.5,76.0,1},{\"CasterDowntime\",87.0,88.0,1},{\"CasterDowntime\",93.5,95.0,1},{\"CasterDowntime\",96.0,97.0,1},{\"CasterDowntime\",109.0,112.0,1},{\"CasterDowntime\",125.5,127.0,1},{\"CasterDowntime\",193.0,194.0,1},{\"CasterDowntime\",197.0,202.0,1},{\"CasterDowntime\",229.0,234.5,1},{\"CasterDowntime\",236.5,238.0,1},{\"CasterDowntime\",239.5,243.5,1},{\"CasterDowntime\",250.5,258.0,1},{\"CasterDowntime\",266.5,269.5,1},{\"CasterDowntime\",285.0,286.0,1},{\"CasterDowntime\",291.0,293.0,1},{\"GroundFieldMovement\",20.0,24.0,2},{\"GroundFieldMovement\",193.0,194.0,2},{\"GroundFieldMovement\",266.5,269.5,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
						conditions = 
						{
							
							{
								"6eba5593-5938-9253-ad05-9834c730d309",
								true,
							},
							
							{
								"3ac6aa83-d527-e4e0-8af9-a25a90314067",
								true,
							},
							
							{
								"5d5efe83-9bc7-6c48-ae75-581344402ab1",
								true,
							},
						},
						endIfUsed = true,
						name = "Apply boss schedule once",
						uuid = "8ae9400b-a19f-a389-9462-915213f969ed",
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
						localmapid = 1304,
						name = "San d'Oria: The Second Walk",
						uuid = "6eba5593-5938-9253-ad05-9834c730d309",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then return false end\nlocal ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t<=0 and t>=-120",
						name = "AutoSim countdown ready",
						uuid = "5d5efe83-9bc7-6c48-ae75-581344402ab1",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 2,
						contentid = 14086,
						name = "Boss 14086",
						uuid = "3ac6aa83-d527-e4e0-8af9-a25a90314067",
						version = 3,
					},
				},
			},
			displayPath = "AutoSim/San d'Oria: The Second Walk",
			eventType = 16,
			name = "[AutoSim] Eald'narche",
			uuid = "500ea4c4-a110-7f44-b62c-2bdd070c9233",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "AutoSim/San d'Oria: The Second Walk",
			name = "Automatic boss start",
			uuid = "7792b3ff-16c6-62ac-8f3d-178bd22f5707",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\n-- Faithbound Kirin: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2067]=all[2067] or {}\nlocal state=all[2067]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(190.439)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(160.439,4.33)\n state.phases={{\"CasterDowntime\",30.5,32.5,1},{\"CasterDowntime\",33.5,38.0,1},{\"CasterDowntime\",59.5,63.0,1},{\"CasterDowntime\",92.5,93.5,1},{\"CasterDowntime\",95.5,101.0,1},{\"CasterDowntime\",105.5,112.0,1},{\"CasterDowntime\",114.5,115.5,1},{\"CasterDowntime\",120.0,122.0,1},{\"CasterDowntime\",123.0,124.5,1},{\"CasterDowntime\",129.0,130.0,1},{\"CasterDowntime\",140.5,141.5,1},{\"CasterDowntime\",144.5,146.0,1},{\"CasterDowntime\",156.5,159.5,1},{\"CasterDowntime\",160.5,161.5,1},{\"CasterDowntime\",166.5,168.0,1},{\"GroundFieldMovement\",140.5,141.5,2},{\"GroundFieldMovement\",144.5,146.0,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
						conditions = 
						{
							
							{
								"489dcdb8-06bb-b78f-818a-7f3eeea70d4c",
								true,
							},
							
							{
								"7c5a55a1-4aea-9c0f-a65d-ef68a3e67e48",
								true,
							},
							
							{
								"62aaffca-6d88-d534-aee4-c74fbe947779",
								true,
							},
							
							{
								"181fad23-4eeb-2d78-a993-13cf3b9eeefd",
								true,
							},
							
							{
								"d7e89f52-6e67-7285-b78b-4e0013550743",
								true,
							},
							
							{
								"211f476e-4e97-4003-96e8-0c62fa453f72",
								true,
							},
						},
						endIfUsed = true,
						name = "Apply opening schedule once",
						uuid = "45b51ca7-617e-a130-b270-ac0eb8904a4d",
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
						localmapid = 1304,
						name = "San d'Oria: The Second Walk",
						uuid = "489dcdb8-06bb-b78f-818a-7f3eeea70d4c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In boss combat",
						uuid = "d7e89f52-6e67-7285-b78b-4e0013550743",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local all=data.allianceAutoSimSchedules\nreturn not (all and all[2067] and all[2067].done)",
						dequeueIfLuaFalse = true,
						name = "Schedule not applied this pull",
						uuid = "181fad23-4eeb-2d78-a993-13cf3b9eeefd",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then return false end\nlocal ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t>=0 and t<=30",
						name = "AutoSim opening ready",
						uuid = "211f476e-4e97-4003-96e8-0c62fa453f72",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 44490,
						name = "Opening cast 44490",
						uuid = "7c5a55a1-4aea-9c0f-a65d-ef68a3e67e48",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 14053,
						name = "Boss 14053",
						uuid = "62aaffca-6d88-d534-aee4-c74fbe947779",
						version = 3,
					},
				},
			},
			displayPath = "AutoSim/San d'Oria: The Second Walk/Automatic boss start",
			eventType = 3,
			name = "[AutoSim start] Faithbound Kirin",
			timeout = 10,
			uuid = "0b6ef757-70ea-8354-b22f-4fe4927bc410",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\n-- Ultima and Omega: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2068]=all[2068] or {}\nlocal state=all[2068]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(239.23)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(209.23,18.66)\n state.phases={{\"FullDowntime\",119.16,146.62,1},{\"CasterDowntime\",31.5,35.0,1},{\"CasterDowntime\",36.5,38.0,1},{\"CasterDowntime\",42.5,45.5,1},{\"CasterDowntime\",78.0,80.5,1},{\"CasterDowntime\",88.0,89.0,1},{\"CasterDowntime\",106.5,108.0,1},{\"CasterDowntime\",110.0,111.5,1},{\"CasterDowntime\",148.5,152.0,1},{\"CasterDowntime\",160.5,163.5,1},{\"CasterDowntime\",165.5,166.5,1},{\"CasterDowntime\",170.0,172.0,1},{\"CasterDowntime\",183.0,184.0,1},{\"CasterDowntime\",188.5,189.5,1},{\"CasterDowntime\",193.5,195.0,1},{\"CasterDowntime\",197.0,202.5,1},{\"CasterDowntime\",204.5,206.0,1},{\"CasterDowntime\",208.5,212.0,1},{\"GroundFieldMovement\",165.5,166.5,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
						conditions = 
						{
							
							{
								"673701fc-89af-2773-9ab4-5179a0bb8a21",
								true,
							},
							
							{
								"35e5242a-1486-56e1-99ec-60925bd96dc5",
								true,
							},
							
							{
								"56498aae-0161-a67a-9d91-3cff13891f9e",
								true,
							},
							
							{
								"3c7d2535-79b6-b077-b46d-2689f3c72c9d",
								true,
							},
							
							{
								"a86ee596-cf25-e130-ad4a-e7f093225828",
								true,
							},
							
							{
								"cbddbb13-5b4d-6204-aab2-087f0d063993",
								true,
							},
						},
						endIfUsed = true,
						name = "Apply opening schedule once",
						uuid = "8d9909d7-d1bc-de8d-b038-bb314c7e967b",
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
						localmapid = 1304,
						name = "San d'Oria: The Second Walk",
						uuid = "673701fc-89af-2773-9ab4-5179a0bb8a21",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In boss combat",
						uuid = "a86ee596-cf25-e130-ad4a-e7f093225828",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local all=data.allianceAutoSimSchedules\nreturn not (all and all[2068] and all[2068].done)",
						dequeueIfLuaFalse = true,
						name = "Schedule not applied this pull",
						uuid = "3c7d2535-79b6-b077-b46d-2689f3c72c9d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then return false end\nlocal ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t>=0 and t<=30",
						name = "AutoSim opening ready",
						uuid = "cbddbb13-5b4d-6204-aab2-087f0d063993",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 44331,
						name = "Opening cast 44331",
						uuid = "35e5242a-1486-56e1-99ec-60925bd96dc5",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 14230,
						name = "Boss 14230",
						uuid = "56498aae-0161-a67a-9d91-3cff13891f9e",
						version = 3,
					},
				},
			},
			displayPath = "AutoSim/San d'Oria: The Second Walk/Automatic boss start",
			eventType = 3,
			name = "[AutoSim start] Ultima and Omega",
			timeout = 10,
			uuid = "c81a7a7e-9a7b-f71c-83c5-9f7d5f8ac60a",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\n-- Kam'lanaut: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2069]=all[2069] or {}\nlocal state=all[2069]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(310)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(280,20)\n state.phases={{\"Stun\",128.5,138.5,1},{\"CasterDowntime\",47.5,48.5,1},{\"CasterDowntime\",60.0,67.5,1},{\"CasterDowntime\",72.5,73.5,1},{\"CasterDowntime\",87.0,88.0,1},{\"CasterDowntime\",94.0,98.0,1},{\"CasterDowntime\",186.5,187.5,1},{\"CasterDowntime\",191.0,193.5,1},{\"CasterDowntime\",199.0,203.0,1},{\"CasterDowntime\",218.0,221.0,1},{\"CasterDowntime\",225.5,226.5,1},{\"CasterDowntime\",239.5,241.0,1}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
						conditions = 
						{
							
							{
								"a4a025a4-d9cd-23c1-a65b-137efc4b2f17",
								true,
							},
							
							{
								"888d3743-7844-e58c-8ea1-69f0f2332a12",
								true,
							},
							
							{
								"789132e7-3fa7-86fe-99e6-c40bfd910d28",
								true,
							},
							
							{
								"0fab59d2-8f54-98f6-879c-8d09df3bc07e",
								true,
							},
							
							{
								"496ef842-5da8-a566-978b-d35b102b0646",
								true,
							},
							
							{
								"00b36fa7-9522-9265-9855-277a1ec723ba",
								true,
							},
						},
						endIfUsed = true,
						name = "Apply opening schedule once",
						uuid = "95c185bc-c58a-9be2-b398-ca822093433e",
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
						localmapid = 1304,
						name = "San d'Oria: The Second Walk",
						uuid = "a4a025a4-d9cd-23c1-a65b-137efc4b2f17",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In boss combat",
						uuid = "496ef842-5da8-a566-978b-d35b102b0646",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local all=data.allianceAutoSimSchedules\nreturn not (all and all[2069] and all[2069].done)",
						dequeueIfLuaFalse = true,
						name = "Schedule not applied this pull",
						uuid = "0fab59d2-8f54-98f6-879c-8d09df3bc07e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then return false end\nlocal ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t>=0 and t<=30",
						name = "AutoSim opening ready",
						uuid = "00b36fa7-9522-9265-9855-277a1ec723ba",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 44221,
						name = "Opening cast 44221",
						uuid = "888d3743-7844-e58c-8ea1-69f0f2332a12",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 14043,
						name = "Boss 14043",
						uuid = "789132e7-3fa7-86fe-99e6-c40bfd910d28",
						version = 3,
					},
				},
			},
			displayPath = "AutoSim/San d'Oria: The Second Walk/Automatic boss start",
			eventType = 3,
			name = "[AutoSim start] Kam'lanaut",
			timeout = 10,
			uuid = "7f868287-2fb9-1e01-bc04-69f900ba8013",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\n-- Eald'narche: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2070]=all[2070] or {}\nlocal state=all[2070]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(315.561)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(285.561,11.05)\n state.phases={{\"FullDowntime\",154.06,187.25,1},{\"Stun\",152.5,184.5,1},{\"CasterDowntime\",20.0,24.0,1},{\"CasterDowntime\",42.5,45.5,1},{\"CasterDowntime\",46.5,47.5,1},{\"CasterDowntime\",64.5,68.5,1},{\"CasterDowntime\",69.5,76.0,1},{\"CasterDowntime\",87.0,88.0,1},{\"CasterDowntime\",93.5,95.0,1},{\"CasterDowntime\",96.0,97.0,1},{\"CasterDowntime\",109.0,112.0,1},{\"CasterDowntime\",125.5,127.0,1},{\"CasterDowntime\",193.0,194.0,1},{\"CasterDowntime\",197.0,202.0,1},{\"CasterDowntime\",229.0,234.5,1},{\"CasterDowntime\",236.5,238.0,1},{\"CasterDowntime\",239.5,243.5,1},{\"CasterDowntime\",250.5,258.0,1},{\"CasterDowntime\",266.5,269.5,1},{\"CasterDowntime\",285.0,286.0,1},{\"CasterDowntime\",291.0,293.0,1},{\"GroundFieldMovement\",20.0,24.0,2},{\"GroundFieldMovement\",193.0,194.0,2},{\"GroundFieldMovement\",266.5,269.5,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
						conditions = 
						{
							
							{
								"5b2f45c3-cf59-de03-8b20-e61377756e97",
								true,
							},
							
							{
								"8d09e5ca-a414-02a9-af70-3fb054793a2d",
								true,
							},
							
							{
								"b7d00e86-5476-bf77-8a1b-e8461466d1de",
								true,
							},
							
							{
								"2177c826-41c8-7f95-8da1-27fe9dd96785",
								true,
							},
							
							{
								"c18ab1fe-b91a-9202-a0d8-08a1d47a3e2c",
								true,
							},
							
							{
								"5cbf3d91-52d2-1f23-9ec7-4ab90424fb73",
								true,
							},
						},
						endIfUsed = true,
						name = "Apply opening schedule once",
						uuid = "82063bd2-c89c-ecaf-aedb-bb5a9f605af6",
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
						localmapid = 1304,
						name = "San d'Oria: The Second Walk",
						uuid = "5b2f45c3-cf59-de03-8b20-e61377756e97",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In boss combat",
						uuid = "c18ab1fe-b91a-9202-a0d8-08a1d47a3e2c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local all=data.allianceAutoSimSchedules\nreturn not (all and all[2070] and all[2070].done)",
						dequeueIfLuaFalse = true,
						name = "Schedule not applied this pull",
						uuid = "2177c826-41c8-7f95-8da1-27fe9dd96785",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then return false end\nlocal ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t>=0 and t<=30",
						name = "AutoSim opening ready",
						uuid = "5cbf3d91-52d2-1f23-9ec7-4ab90424fb73",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 44369,
						name = "Opening cast 44369",
						uuid = "8d09e5ca-a414-02a9-af70-3fb054793a2d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 14086,
						name = "Boss 14086",
						uuid = "b7d00e86-5476-bf77-8a1b-e8461466d1de",
						version = 3,
					},
				},
			},
			displayPath = "AutoSim/San d'Oria: The Second Walk/Automatic boss start",
			eventType = 3,
			name = "[AutoSim start] Eald'narche",
			timeout = 10,
			uuid = "067cba8e-4f95-b895-baee-7725b27cd85c",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "AutoSim/San d'Oria: The Second Walk",
			name = "Live timing",
			uuid = "187f5b9d-1741-3407-b753-e2e2e59b525a",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\n-- Re-anchor the Citadel Siege transition to the real Ultima Tractor Field cast.\n-- Local pull: start 95.157; both bosses unavailable 101.266; first available 127.828.\n-- BossMod: 5s cast, then 24.4s + 3.3s until Ultima returns. Native channel max excludes ~0.3s.\nlocal A=TensorCore.API.TensorACR\nlocal state=data.allianceAutoSimSchedules[2068]\nif state.omegaReanchored then self.used=true;return end\nif not self.anchorSetup then\n local t=A.getAutoSimTime()\n local startTime=t+eventArgs.channelTimeMax+1.4\n local endTime=t+eventArgs.channelTimeMax+28\n local delta=startTime-119.16\n self.newKill=239.23+delta\n self.newPhases={}\n for _,p in ipairs(state.phases) do\n  if p[1]~=\"FullDowntime\" then\n   local a,b=p[2],p[3]\n   if a>=146.62 then\n    self.newPhases[#self.newPhases+1]={p[1],a+delta,b+delta,p[4]}\n   elseif b<=t then\n    self.newPhases[#self.newPhases+1]={p[1],a,b,p[4]}\n   elseif a<t and t-a>=0.25 then\n    self.newPhases[#self.newPhases+1]={p[1],a,t,p[4]}\n   end\n  end\n end\n self.newPhases[#self.newPhases+1]={\"FullDowntime\",startTime,endTime,1}\n A.setAutoSimKillTime(self.newKill)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(self.newKill-30,18.66)\n self.nextPhase=1\n self.anchorSetup=true\nend\nwhile self.nextPhase<=#self.newPhases do\n local p=self.newPhases[self.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n self.nextPhase=self.nextPhase+1\nend\nstate.phases=self.newPhases\nstate.omegaReanchored=true\nself.used=true\n",
						conditions = 
						{
							
							{
								"135a3294-5492-8853-9ca2-58e8b4da0cb2",
								true,
							},
							
							{
								"d8eb33d6-18aa-ee18-8bd8-438bc2e34684",
								true,
							},
							
							{
								"ac0438e7-b2ea-7356-81e0-a714dff66d11",
								true,
							},
							
							{
								"bbaf62ec-0b2f-0ff4-9123-89aa24b465cc",
								true,
							},
							
							{
								"63da9722-916a-2da9-873b-ce8f8a73283a",
								true,
							},
						},
						name = "Adjust transition and remaining phases once",
						uuid = "510fb2b9-35e2-752e-841b-e09ea58a1f22",
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
						localmapid = 1304,
						name = "Second Walk",
						uuid = "135a3294-5492-8853-9ca2-58e8b4da0cb2",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 44306,
						name = "Tractor Field",
						uuid = "d8eb33d6-18aa-ee18-8bd8-438bc2e34684",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 14231,
						name = "Ultima",
						uuid = "ac0438e7-b2ea-7356-81e0-a714dff66d11",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "bbaf62ec-0b2f-0ff4-9123-89aa24b465cc",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local all=data.allianceAutoSimSchedules\nlocal state=all and all[2068]\nreturn state~=nil and state.done and not state.omegaReanchored",
						dequeueIfLuaFalse = true,
						name = "Schedule ready, transition not adjusted",
						uuid = "63da9722-916a-2da9-873b-ce8f8a73283a",
						version = 3,
					},
				},
			},
			displayPath = "AutoSim/San d'Oria: The Second Walk/Live timing",
			eventType = 3,
			name = "[AutoSim sync] Ultima - Tractor Field transition",
			uuid = "c92393bc-98b3-b00c-86c0-06dd5c754ed0",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\nlocal A=TensorCore.API.TensorACR\nlocal state=data.allianceAutoSimSchedules[2070]\nlocal function transition()\n local s=state.ealdTransition\n if not s then\n  s={baseReturn=187.25,future={}}\n  for _,p in ipairs(state.phases) do\n   if p[1]==\"FullDowntime\" then s.full=p end\n   if (p[1]==\"CasterDowntime\" or p[1]==\"GroundFieldMovement\") and p[2]>=187.25 then\n    s.future[#s.future+1]={phase=p,startTime=p[2],endTime=p[3]}\n   end\n  end\n  state.ealdTransition=s\n end\n return s\nend\nlocal function fullWindow(s,startTime,endTime)\n local p=s.full\n p[2],p[3]=startTime,endTime\n p[5]=A.setAutoSimPhase(p[5],startTime,endTime,p[4])\n local delta=endTime-s.baseReturn\n for _,b in ipairs(s.future) do\n  local q=b.phase\n  q[2],q[3]=b.startTime+delta,b.endTime+delta\n  q[5]=A.setAutoSimPhase(q[5],q[2],q[3],q[4])\n end\nend\n-- Phase Shift's native 2.7s channel precedes disappearance by approximately 0.5s.\n-- BossMod forecasts a 30.3s absence. Actual targetability edges refine both bounds.\nlocal s=transition()\ns.bossID=eventArgs.entityID\nlocal startTime=A.getAutoSimTime()+eventArgs.channelTimeMax+0.5\nfullWindow(s,startTime,startTime+30.3)\ns.armed=true\nself.used=true\n",
						conditions = 
						{
							
							{
								"568d7f31-6f53-cfa8-a5a0-388007908d5a",
								true,
							},
							
							{
								"4f3c3ac2-e4a8-109a-95c2-22355ee36a6e",
								true,
							},
							
							{
								"84765f6b-10e5-b2a8-8ab0-68aa49845f17",
								true,
							},
							
							{
								"925c21be-fac8-4426-8c20-fc00f8588e15",
								true,
							},
						},
						name = "Update owned transition phases only",
						uuid = "cb3652a2-1110-f2fa-9bc6-dd3c942de364",
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
						localmapid = 1304,
						name = "Second Walk only",
						uuid = "568d7f31-6f53-cfa8-a5a0-388007908d5a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgType = 2,
						eventSpellID = 44377,
						name = "Phase Shift",
						uuid = "4f3c3ac2-e4a8-109a-95c2-22355ee36a6e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 2,
						eventEntityContentID = 14086,
						name = "Ealdnarche only",
						uuid = "84765f6b-10e5-b2a8-8ab0-68aa49845f17",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then return false end\nlocal all=data.allianceAutoSimSchedules\nlocal s=all and all[2070]\nreturn s~=nil and s.done and TensorCore.API.TensorACR.getAutoSimTime()<240 and (not s.ealdTransition or not s.ealdTransition.armed)",
						dequeueIfLuaFalse = true,
						name = "Schedule ready; transition not started",
						uuid = "925c21be-fac8-4426-8c20-fc00f8588e15",
						version = 3,
					},
				},
			},
			displayPath = "AutoSim/San d'Oria: The Second Walk/Live timing",
			eventType = 3,
			name = "[AutoSim sync] Ealdnarche - Phase Shift forecast",
			timeout = 2,
			uuid = "735ff1ae-ee09-d715-9887-de793b0c0eb6",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\nlocal A=TensorCore.API.TensorACR\nlocal state=data.allianceAutoSimSchedules[2070]\nlocal function transition()\n local s=state.ealdTransition\n if not s then\n  s={baseReturn=187.25,future={}}\n  for _,p in ipairs(state.phases) do\n   if p[1]==\"FullDowntime\" then s.full=p end\n   if (p[1]==\"CasterDowntime\" or p[1]==\"GroundFieldMovement\") and p[2]>=187.25 then\n    s.future[#s.future+1]={phase=p,startTime=p[2],endTime=p[3]}\n   end\n  end\n  state.ealdTransition=s\n end\n return s\nend\nlocal function fullWindow(s,startTime,endTime)\n local p=s.full\n p[2],p[3]=startTime,endTime\n p[5]=A.setAutoSimPhase(p[5],startTime,endTime,p[4])\n local delta=endTime-s.baseReturn\n for _,b in ipairs(s.future) do\n  local q=b.phase\n  q[2],q[3]=b.startTime+delta,b.endTime+delta\n  q[5]=A.setAutoSimPhase(q[5],q[2],q[3],q[4])\n end\nend\nlocal s=transition()\nlocal t=A.getAutoSimTime()\nif eventArgs.isTargetable then\n fullWindow(s,s.full[2],t)\n s.finished=true\nelse\n fullWindow(s,t,t+30.3)\n s.disappeared=true\nend\nself.used=true\n",
						conditions = 
						{
							
							{
								"c21a611b-ac98-1e96-ad42-521c8af1d31b",
								true,
							},
							
							{
								"682a19c8-c03d-a181-aaf4-887dc3fa2f04",
								true,
							},
							
							{
								"3e28394a-6d1e-c523-a39f-dccf932419d1",
								true,
							},
						},
						name = "Update owned transition phases only",
						uuid = "8a447ea0-89dd-6e66-bc89-efebd9ac5554",
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
						localmapid = 1304,
						name = "Second Walk only",
						uuid = "c21a611b-ac98-1e96-ad42-521c8af1d31b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 2,
						eventEntityContentID = 14086,
						name = "Ealdnarche only",
						uuid = "682a19c8-c03d-a181-aaf4-887dc3fa2f04",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then return false end\nlocal all=data.allianceAutoSimSchedules\nlocal s=all and all[2070]\nreturn s~=nil and s.done and TensorCore.API.TensorACR.getAutoSimTime()<240 and s.ealdTransition~=nil and s.ealdTransition.armed and not s.ealdTransition.finished and eventArgs.entityID==s.ealdTransition.bossID and ((not eventArgs.isTargetable and not s.ealdTransition.disappeared) or (eventArgs.isTargetable and s.ealdTransition.disappeared))",
						dequeueIfLuaFalse = true,
						name = "Armed main boss transition only",
						uuid = "3e28394a-6d1e-c523-a39f-dccf932419d1",
						version = 3,
					},
				},
			},
			displayPath = "AutoSim/San d'Oria: The Second Walk/Live timing",
			eventType = 26,
			name = "[AutoSim sync] Ealdnarche - Actual disappearance and return",
			timeout = 2,
			uuid = "601cf5f5-c4d7-7614-8d39-01a5359af865",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\n-- Capture the verified native status immediately; some statuses expose no readable duration.\n-- A 32s fallback is an estimate from two native knockdown loops; recovery refines the end.\nlocal A=TensorCore.API.TensorACR\nlocal state=data.allianceAutoSimSchedules[2070]\nlocal t=A.getAutoSimTime()\nlocal buff=TensorCore.getBuff(eventArgs.entityID,1963)\nlocal duration=(buff and buff.duration and buff.duration>0) and buff.duration or 32\nfor _,p in ipairs(state.phases) do\n if p[1]==\"Stun\" then\n  p[2],p[3]=t,t+duration\n  p[5]=A.setAutoSimPhase(p[5],p[2],p[3],p[4])\n  state.ealdStunObserved=true\n  state.ealdStunStart=t\n  state.ealdStunDurationEstimated=not (buff and buff.duration and buff.duration>0)\n  self.used=true\n  return\n end\nend\nself.used=true\n",
						conditions = 
						{
							
							{
								"9e7053e9-d570-81d6-95f1-8db32f641397",
								true,
							},
							
							{
								"a1ec3c52-e087-73e6-815f-e676357f833d",
								true,
							},
							
							{
								"54c19288-b42c-d925-9524-ec63fca07226",
								true,
							},
							
							{
								"768150ce-d7cf-0988-82fc-270ee2f147ef",
								true,
							},
						},
						name = "Update owned transition phases only",
						uuid = "806fa12b-36d5-a4c3-9b9c-9f6f548f6db3",
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
						localmapid = 1304,
						name = "Second Walk only",
						uuid = "9e7053e9-d570-81d6-95f1-8db32f641397",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgType = 2,
						eventBuffID = 1963,
						name = "Down for the Count",
						uuid = "a1ec3c52-e087-73e6-815f-e676357f833d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 2,
						eventArgType = 3,
						eventOwnerContentID = 14086,
						name = "Ealdnarche source",
						uuid = "54c19288-b42c-d925-9524-ec63fca07226",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then return false end\nlocal all=data.allianceAutoSimSchedules\nlocal s=all and all[2070]\nreturn s~=nil and s.done and TensorCore.API.TensorACR.getAutoSimTime()<240 and not s.ealdStunObserved and eventArgs.entityID==TensorCore.mGetPlayer().id",
						dequeueIfLuaFalse = true,
						name = "Own status; schedule ready",
						uuid = "768150ce-d7cf-0988-82fc-270ee2f147ef",
						version = 3,
					},
				},
			},
			displayPath = "AutoSim/San d'Oria: The Second Walk/Live timing",
			eventType = 8,
			name = "[AutoSim sync] Ealdnarche - Personal stun duration",
			timeout = 2,
			uuid = "92f95772-99e3-84d9-ac8b-467ac22650f0",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\nlocal A=TensorCore.API.TensorACR\nlocal state=data.allianceAutoSimSchedules[2070]\nlocal t=A.getAutoSimTime()\nfor _,p in ipairs(state.phases) do\n if p[1]==\"Stun\" and t>p[2] then\n  p[3]=t\n  p[5]=A.setAutoSimPhase(p[5],p[2],p[3],p[4])\n  state.ealdStunFinished=true\n  break\n end\nend\nself.used=true\n",
						conditions = 
						{
							
							{
								"f3fe585b-b40f-9d15-aa23-227e15c56cc8",
								true,
							},
							
							{
								"c006aa9d-3cdc-3970-9d48-dee9d9d5e2f2",
								true,
							},
							
							{
								"c507e900-2b9e-65d8-95ba-466b00d32520",
								true,
							},
							
							{
								"4c3af619-14f5-fe43-a495-f8052c94da45",
								true,
							},
							
							{
								"c4d22e35-8c9f-95eb-a28a-23198390afbf",
								true,
							},
						},
						name = "End owned stun at recovery",
						uuid = "704052a8-52ff-9af5-ba1e-e4c80ca5d084",
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
						localmapid = 1304,
						name = "Second Walk only",
						uuid = "f3fe585b-b40f-9d15-aa23-227e15c56cc8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgType = 2,
						eventIntValue = 1,
						name = "Body animation slot",
						uuid = "c006aa9d-3cdc-3970-9d48-dee9d9d5e2f2",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgType = 3,
						eventIntValue = 3783,
						name = "Knockdown loop ended",
						uuid = "c507e900-2b9e-65d8-95ba-466b00d32520",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgType = 4,
						name = "Actual recovery",
						uuid = "4c3af619-14f5-fe43-a495-f8052c94da45",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then return false end\nlocal schedules = data.allianceAutoSimSchedules\nlocal state = schedules and schedules[2070]\nif not state or state.done ~= true or state.ealdStunObserved ~= true or state.ealdStunFinished then\n    return false\nend\n\nlocal player = TensorCore.mGetPlayer()\nreturn player ~= nil and eventArgs.entityID == player.id and TensorCore.API.TensorACR.getAutoSimTime() < 240",
						dequeueIfLuaFalse = true,
						name = "Own captured Ealdnarche stun only",
						uuid = "c4d22e35-8c9f-95eb-a28a-23198390afbf",
						version = 3,
					},
				},
			},
			displayPath = "AutoSim/San d'Oria: The Second Walk/Live timing",
			eventType = 23,
			name = "[AutoSim sync] Ealdnarche - Actual personal recovery",
			timeout = 1,
			uuid = "eb838867-a344-d321-a364-4e832ee712a6",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "AutoSim/San d'Oria: The Second Walk",
			name = "Personal positioning",
			uuid = "6c74c819-b2cd-7762-b59b-5364082e21f3",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\nlocal function refresh(h)\n local A=TensorCore.API.TensorACR\n if Now()>=h.deadline or A.getAutoSimTime()>=h.endTime then return false end\n local player=TensorCore.mGetPlayer()\n local safe=false\n if player and player.alive then\n  local dx,dz=player.pos.x-h.x,player.pos.z-h.z\n  local forward=dx*math.sin(h.heading)+dz*math.cos(h.heading)\n  -- Half-room cone: 180 degrees, with a conservative 1y position margin.\n  safe=dx*dx+dz*dz>(h.radius+1)*(h.radius+1) or forward < -1\n end\n if safe and not h.suppressed then\n  A.removeAutoSimPhase(h.phase[5])\n  h.phase[5]=nil\n  h.suppressed=true\n elseif not safe and h.suppressed then\n  h.phase[5]=A.addAutoSimPhase(\"CasterDowntime\",h.startTime,h.endTime,h.phase[4])\n  h.suppressed=h.phase[5]==nil\n end\n return true\nend\nlocal state=data.allianceAutoSimSchedules[2067]\nlocal phase\nfor _,p in ipairs(state.phases) do\n if p[1]==\"CasterDowntime\" and p[2]==105.5 and p[3]==112 then phase=p;break end\nend\nif not phase then self.used=true;return end\nlocal h=data.allianceConditionalCleave\nif not h or h.phase~=phase then\n if phase[5]==nil then self.used=true;return end\n h={phase=phase,startTime=105.5,endTime=112,radius=30,suppressed=false}\n data.allianceConditionalCleave=h\nend\nh.x,h.z,h.heading=eventArgs.x,eventArgs.z,eventArgs.heading\nh.deadline=eventArgs.startTime+eventArgs.duration*1000+500\nh.refresh=refresh\nif not h.refresh(h) then data.allianceConditionalCleave=nil end\nself.used=true\n",
						conditions = 
						{
							
							{
								"de4db9a0-83be-7694-bd34-a3fd66410e3e",
								true,
							},
							
							{
								"3b3834dd-9bb3-c2d6-8a33-f0aea88fa390",
								true,
							},
							
							{
								"0c4773bf-ba53-994b-8c64-5786a5b67e3b",
								true,
							},
						},
						name = "Evaluate personal position against locked cleave",
						uuid = "b114d516-e93e-d3db-b601-912d1e996733",
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
						localmapid = 1304,
						name = "Second Walk only",
						uuid = "de4db9a0-83be-7694-bd34-a3fd66410e3e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.contentID==14053 and (eventArgs.aoeID==45044 or eventArgs.aoeID==45045)",
						dequeueIfLuaFalse = true,
						name = "Exact cleave AOE packet",
						uuid = "3b3834dd-9bb3-c2d6-8a33-f0aea88fa390",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then return false end\nlocal all=data.allianceAutoSimSchedules\nlocal s=all and all[2067]\nif not s or not s.done then return false end\nlocal t=TensorCore.API.TensorACR.getAutoSimTime()\nlocal p=TensorCore.mGetPlayer()\nreturn p~=nil and (p.job==25 or p.job==27 or p.job==35 or p.job==42 or p.job==24 or p.job==28 or p.job==33 or p.job==40) and t>=95 and t<112",
						dequeueIfLuaFalse = true,
						name = "Casting-role schedule and relevant window",
						uuid = "0c4773bf-ba53-994b-8c64-5786a5b67e3b",
						version = 3,
					},
				},
			},
			displayPath = "AutoSim/San d'Oria: The Second Walk/Personal positioning",
			eventType = 18,
			name = "[AutoSim position] Kirin - conditional cleave movement",
			timeout = 1,
			uuid = "244d1f64-a165-18b2-8efe-fc7d2f7ea205",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\nlocal function refresh(h)\n local A=TensorCore.API.TensorACR\n if Now()>=h.deadline or A.getAutoSimTime()>=h.endTime then return false end\n local player=TensorCore.mGetPlayer()\n local safe=false\n if player and player.alive then\n  local dx,dz=player.pos.x-h.x,player.pos.z-h.z\n  local forward=dx*math.sin(h.heading)+dz*math.cos(h.heading)\n  -- Half-room cone: 180 degrees, with a conservative 1y position margin.\n  safe=dx*dx+dz*dz>(h.radius+1)*(h.radius+1) or forward < -1\n end\n if safe and not h.suppressed then\n  A.removeAutoSimPhase(h.phase[5])\n  h.phase[5]=nil\n  h.suppressed=true\n elseif not safe and h.suppressed then\n  h.phase[5]=A.addAutoSimPhase(\"CasterDowntime\",h.startTime,h.endTime,h.phase[4])\n  h.suppressed=h.phase[5]==nil\n end\n return true\nend\nlocal state=data.allianceAutoSimSchedules[2069]\nlocal phase\nfor _,p in ipairs(state.phases) do\n if p[1]==\"CasterDowntime\" and p[2]==94 and p[3]==98 then phase=p;break end\nend\nif not phase then self.used=true;return end\nlocal h=data.allianceConditionalCleave\nif not h or h.phase~=phase then\n if phase[5]==nil then self.used=true;return end\n h={phase=phase,startTime=94,endTime=98,radius=80,suppressed=false}\n data.allianceConditionalCleave=h\nend\nh.x,h.z,h.heading=eventArgs.x,eventArgs.z,eventArgs.heading\nh.deadline=eventArgs.startTime+eventArgs.duration*1000+500\nh.refresh=refresh\nif not h.refresh(h) then data.allianceConditionalCleave=nil end\nself.used=true\n",
						conditions = 
						{
							
							{
								"a5a0a2c9-1d18-2ac3-a028-3569ab033403",
								true,
							},
							
							{
								"7c065199-76cb-e96b-9638-9292c36cedbc",
								true,
							},
							
							{
								"f6f6d065-de75-6756-bcd9-803facbd6698",
								true,
							},
						},
						name = "Evaluate personal position against locked cleave",
						uuid = "384a4213-4fd2-00a2-8ab5-bd35ced24b8f",
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
						localmapid = 1304,
						name = "Second Walk only",
						uuid = "a5a0a2c9-1d18-2ac3-a028-3569ab033403",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.contentID==14043 and (eventArgs.aoeID==44209)",
						dequeueIfLuaFalse = true,
						name = "Exact cleave AOE packet",
						uuid = "7c065199-76cb-e96b-9638-9292c36cedbc",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then return false end\nlocal all=data.allianceAutoSimSchedules\nlocal s=all and all[2069]\nif not s or not s.done then return false end\nlocal t=TensorCore.API.TensorACR.getAutoSimTime()\nlocal p=TensorCore.mGetPlayer()\nreturn p~=nil and (p.job==25 or p.job==27 or p.job==35 or p.job==42 or p.job==24 or p.job==28 or p.job==33 or p.job==40) and t>=85 and t<98",
						dequeueIfLuaFalse = true,
						name = "Casting-role schedule and relevant window",
						uuid = "f6f6d065-de75-6756-bcd9-803facbd6698",
						version = 3,
					},
				},
			},
			displayPath = "AutoSim/San d'Oria: The Second Walk/Personal positioning",
			eventType = 18,
			name = "[AutoSim position] Kamlanaut - conditional cleave movement",
			timeout = 1,
			uuid = "34b7bc73-7336-e8a0-b653-a260c4439115",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local h=data.allianceConditionalCleave\nif not h.refresh(h) then data.allianceConditionalCleave=nil end\nself.used=true\n",
						conditions = 
						{
							
							{
								"16b22c95-b180-68cb-9591-93a5ba82ecfb",
								true,
							},
							
							{
								"09293246-2c11-0598-8604-0d765ee80f0f",
								true,
							},
						},
						name = "Restore movement forecast when position becomes unsafe",
						uuid = "172ba3e7-49af-f123-a70c-5d53107fe560",
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
						localmapid = 1304,
						name = "Second Walk only",
						uuid = "16b22c95-b180-68cb-9591-93a5ba82ecfb",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.allianceConditionalCleave~=nil",
						dequeueIfLuaFalse = true,
						name = "Owned cleave check active",
						uuid = "09293246-2c11-0598-8604-0d765ee80f0f",
						version = 3,
					},
				},
			},
			displayPath = "AutoSim/San d'Oria: The Second Walk/Personal positioning",
			name = "[AutoSim position] Recheck only the active cleave",
			throttleTime = 200,
			timeout = 0.4,
			uuid = "5020fa58-70a3-733e-872d-e810522915c0",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "AutoSim",
			name = "Windurst: The Third Walk",
			uuid = "bc0eb07e-4358-e7ff-b635-751d10d17e49",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\n-- Shantotto the Demon: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2071]=all[2071] or {}\nlocal state=all[2071]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(281.635)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(251.635,7.3)\n state.phases={{\"FullDowntime\",152.34,163.66,1},{\"CasterDowntime\",30.5,33.0,1},{\"CasterDowntime\",46.0,47.0,1},{\"CasterDowntime\",58.5,60.0,1},{\"CasterDowntime\",75.5,78.5,1},{\"CasterDowntime\",84.5,95.0,1},{\"CasterDowntime\",115.5,120.5,1},{\"CasterDowntime\",122.0,123.0,1},{\"CasterDowntime\",124.0,126.5,1},{\"CasterDowntime\",144.5,148.0,1},{\"CasterDowntime\",166.5,169.5,1},{\"CasterDowntime\",189.5,193.0,1},{\"CasterDowntime\",213.5,215.0,1},{\"CasterDowntime\",225.0,226.0,1},{\"CasterDowntime\",230.0,232.5,1},{\"CasterDowntime\",242.5,260.0,1},{\"GroundFieldMovement\",46.0,47.0,2},{\"GroundFieldMovement\",242.5,260.0,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
						conditions = 
						{
							
							{
								"eb148dde-88e3-66d7-ac13-dd2e17baf68b",
								true,
							},
							
							{
								"7ef0d35c-caef-885a-83bd-0976532a686c",
								true,
							},
							
							{
								"15f50cf0-4b30-d8c1-9e46-10ce1a210732",
								true,
							},
						},
						endIfUsed = true,
						name = "Apply boss schedule once",
						uuid = "974cdd58-40ca-b3ad-acc3-e24639d09036",
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
						localmapid = 1368,
						name = "Windurst: The Third Walk",
						uuid = "eb148dde-88e3-66d7-ac13-dd2e17baf68b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then return false end\nlocal ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t<=0 and t>=-120",
						name = "AutoSim countdown ready",
						uuid = "15f50cf0-4b30-d8c1-9e46-10ce1a210732",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 2,
						contentid = 14778,
						name = "Boss 14778",
						uuid = "7ef0d35c-caef-885a-83bd-0976532a686c",
						version = 3,
					},
				},
			},
			displayPath = "AutoSim/Windurst: The Third Walk",
			eventType = 16,
			name = "[AutoSim] Shantotto the Demon",
			uuid = "42f57c10-ea33-b0a7-919e-15c2bb5ce599",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\n-- Alexander Resurrected: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2072]=all[2072] or {}\nlocal state=all[2072]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(281.92)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(251.92,3.93)\n state.phases={{\"CasterDowntime\",27.5,34.0,1},{\"CasterDowntime\",38.0,42.5,1},{\"CasterDowntime\",47.0,50.5,1},{\"CasterDowntime\",52.0,53.5,1},{\"CasterDowntime\",61.5,64.0,1},{\"CasterDowntime\",70.0,72.0,1},{\"CasterDowntime\",92.0,93.5,1},{\"CasterDowntime\",99.0,101.5,1},{\"CasterDowntime\",102.5,104.5,1},{\"CasterDowntime\",106.5,108.0,1},{\"CasterDowntime\",166.5,167.5,1},{\"CasterDowntime\",171.5,175.0,1},{\"CasterDowntime\",177.5,180.0,1},{\"CasterDowntime\",211.5,217.5,1},{\"CasterDowntime\",223.5,229.0,1},{\"CasterDowntime\",239.0,242.5,1},{\"CasterDowntime\",244.0,245.5,1},{\"CasterDowntime\",249.5,250.5,1},{\"CasterDowntime\",252.0,253.0,1},{\"CasterDowntime\",256.0,257.5,1},{\"CasterDowntime\",265.5,269.0,1},{\"CasterDowntime\",271.5,275.0,1},{\"GroundFieldMovement\",70.0,72.0,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
						conditions = 
						{
							
							{
								"0ae9d789-36fc-f1c6-b69c-0b23f8dcc5fc",
								true,
							},
							
							{
								"52264975-8938-48da-b0c4-f1fcea2d04ab",
								true,
							},
							
							{
								"135ac2f5-13b1-67c7-a93d-6ddd26256ee7",
								true,
							},
						},
						endIfUsed = true,
						name = "Apply boss schedule once",
						uuid = "19b363a0-8a38-215c-bcfb-c722d16ad559",
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
						localmapid = 1368,
						name = "Windurst: The Third Walk",
						uuid = "0ae9d789-36fc-f1c6-b69c-0b23f8dcc5fc",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then return false end\nlocal ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t<=0 and t>=-120",
						name = "AutoSim countdown ready",
						uuid = "135ac2f5-13b1-67c7-a93d-6ddd26256ee7",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 2,
						contentid = 14529,
						name = "Boss 14529",
						uuid = "52264975-8938-48da-b0c4-f1fcea2d04ab",
						version = 3,
					},
				},
			},
			displayPath = "AutoSim/Windurst: The Third Walk",
			eventType = 16,
			name = "[AutoSim] Alexander Resurrected",
			uuid = "49a3584d-4a67-4357-88f8-9f002817c214",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\n-- Promathia: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2073]=all[2073] or {}\nlocal state=all[2073]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(360.864)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(330.864,4.39)\n state.phases={{\"FullDowntime\",112.86,126.89,1},{\"FullDowntime\",178.4,185.0,1},{\"Stun\",197.5,205.5,1},{\"CasterDowntime\",24.0,35.0,1},{\"CasterDowntime\",37.5,38.5,1},{\"CasterDowntime\",63.0,64.0,1},{\"CasterDowntime\",65.5,69.0,1},{\"CasterDowntime\",94.0,97.5,1},{\"CasterDowntime\",99.0,109.0,1},{\"CasterDowntime\",127.5,129.0,1},{\"CasterDowntime\",133.5,134.5,1},{\"CasterDowntime\",153.0,154.5,1},{\"CasterDowntime\",159.5,161.5,1},{\"CasterDowntime\",186.0,189.0,1},{\"CasterDowntime\",205.5,207.5,1},{\"CasterDowntime\",210.5,211.5,1},{\"CasterDowntime\",218.0,222.0,1},{\"CasterDowntime\",224.0,225.5,1},{\"CasterDowntime\",249.0,261.0,1},{\"CasterDowntime\",296.0,306.0,1},{\"CasterDowntime\",310.0,313.5,1},{\"CasterDowntime\",339.0,347.5,1},{\"GroundFieldMovement\",218.0,222.0,2},{\"GroundFieldMovement\",224.0,225.5,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
						conditions = 
						{
							
							{
								"5b23097c-f664-923a-b234-671a3143d03f",
								true,
							},
							
							{
								"e299553c-c530-7da2-92dc-61255a926723",
								true,
							},
							
							{
								"0daa039f-af59-fd31-a279-9462f30e1b5f",
								true,
							},
						},
						endIfUsed = true,
						name = "Apply boss schedule once",
						uuid = "76d83aa1-8803-bdf6-ac32-be05e2f8b4b7",
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
						localmapid = 1368,
						name = "Windurst: The Third Walk",
						uuid = "5b23097c-f664-923a-b234-671a3143d03f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then return false end\nlocal ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t<=0 and t>=-120",
						name = "AutoSim countdown ready",
						uuid = "0daa039f-af59-fd31-a279-9462f30e1b5f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 2,
						contentid = 14779,
						name = "Boss 14779",
						uuid = "e299553c-c530-7da2-92dc-61255a926723",
						version = 3,
					},
				},
			},
			displayPath = "AutoSim/Windurst: The Third Walk",
			eventType = 16,
			name = "[AutoSim] Promathia",
			uuid = "43a8df18-d503-abb3-ba09-377d4a315384",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\n-- Hollow King: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2074]=all[2074] or {}\nlocal state=all[2074]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(430.468)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(400.468,31.85)\n state.phases={{\"FullDowntime\",156.84,210.18,1},{\"Stun\",157.0,209.5,1},{\"CasterDowntime\",14.0,15.5,1},{\"CasterDowntime\",70.0,72.5,1},{\"CasterDowntime\",122.0,124.5,1},{\"CasterDowntime\",133.0,135.0,1},{\"CasterDowntime\",145.0,146.0,1},{\"CasterDowntime\",299.5,303.0,1},{\"CasterDowntime\",309.5,310.5,1},{\"CasterDowntime\",314.5,315.5,1},{\"CasterDowntime\",330.0,334.0,1},{\"CasterDowntime\",335.0,339.5,1},{\"CasterDowntime\",345.5,350.0,1},{\"CasterDowntime\",361.5,372.5,1},{\"CasterDowntime\",376.0,378.5,1},{\"CasterDowntime\",384.5,385.5,1},{\"GroundFieldMovement\",145.0,146.0,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
						conditions = 
						{
							
							{
								"0cbd5c9d-e043-704a-b4aa-85ea772785bf",
								true,
							},
							
							{
								"f3fe5b5c-60af-c29e-b7ea-552af1c21860",
								true,
							},
							
							{
								"0ab0c86e-a85a-f51e-adfa-704b7700c834",
								true,
							},
						},
						endIfUsed = true,
						name = "Apply boss schedule once (14729)",
						uuid = "47265818-4647-8b25-a7c4-ef36a52edd62",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\n-- Hollow King: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2074]=all[2074] or {}\nlocal state=all[2074]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(430.468)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(400.468,31.85)\n state.phases={{\"FullDowntime\",156.84,210.18,1},{\"Stun\",157.0,209.5,1},{\"CasterDowntime\",14.0,15.5,1},{\"CasterDowntime\",70.0,72.5,1},{\"CasterDowntime\",122.0,124.5,1},{\"CasterDowntime\",133.0,135.0,1},{\"CasterDowntime\",145.0,146.0,1},{\"CasterDowntime\",299.5,303.0,1},{\"CasterDowntime\",309.5,310.5,1},{\"CasterDowntime\",314.5,315.5,1},{\"CasterDowntime\",330.0,334.0,1},{\"CasterDowntime\",335.0,339.5,1},{\"CasterDowntime\",345.5,350.0,1},{\"CasterDowntime\",361.5,372.5,1},{\"CasterDowntime\",376.0,378.5,1},{\"CasterDowntime\",384.5,385.5,1},{\"GroundFieldMovement\",145.0,146.0,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
						conditions = 
						{
							
							{
								"0cbd5c9d-e043-704a-b4aa-85ea772785bf",
								true,
							},
							
							{
								"984a220d-54db-fb66-8c7c-83c05fe959b7",
								true,
							},
							
							{
								"0ab0c86e-a85a-f51e-adfa-704b7700c834",
								true,
							},
						},
						endIfUsed = true,
						name = "Apply boss schedule once (14730)",
						uuid = "9a60de47-d8f0-a253-b0d0-6efa27e7d00e",
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
						localmapid = 1368,
						name = "Windurst: The Third Walk",
						uuid = "0cbd5c9d-e043-704a-b4aa-85ea772785bf",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then return false end\nlocal ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t<=0 and t>=-120",
						name = "AutoSim countdown ready",
						uuid = "0ab0c86e-a85a-f51e-adfa-704b7700c834",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 2,
						contentid = 14729,
						name = "Boss 14729",
						uuid = "f3fe5b5c-60af-c29e-b7ea-552af1c21860",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 2,
						contentid = 14730,
						name = "Boss 14730",
						uuid = "984a220d-54db-fb66-8c7c-83c05fe959b7",
						version = 3,
					},
				},
			},
			displayPath = "AutoSim/Windurst: The Third Walk",
			eventType = 16,
			name = "[AutoSim] Shinryu Paradox - Hollow King",
			uuid = "cce9de42-ec93-571a-999b-3a6abdefc70c",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "AutoSim/Windurst: The Third Walk",
			name = "Automatic boss start",
			uuid = "ef9305b6-38f6-3c05-9223-cc3fa8a9c858",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\n-- Shantotto the Demon: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2071]=all[2071] or {}\nlocal state=all[2071]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(281.635)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(251.635,7.3)\n state.phases={{\"FullDowntime\",152.34,163.66,1},{\"CasterDowntime\",30.5,33.0,1},{\"CasterDowntime\",46.0,47.0,1},{\"CasterDowntime\",58.5,60.0,1},{\"CasterDowntime\",75.5,78.5,1},{\"CasterDowntime\",84.5,95.0,1},{\"CasterDowntime\",115.5,120.5,1},{\"CasterDowntime\",122.0,123.0,1},{\"CasterDowntime\",124.0,126.5,1},{\"CasterDowntime\",144.5,148.0,1},{\"CasterDowntime\",166.5,169.5,1},{\"CasterDowntime\",189.5,193.0,1},{\"CasterDowntime\",213.5,215.0,1},{\"CasterDowntime\",225.0,226.0,1},{\"CasterDowntime\",230.0,232.5,1},{\"CasterDowntime\",242.5,260.0,1},{\"GroundFieldMovement\",46.0,47.0,2},{\"GroundFieldMovement\",242.5,260.0,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
						conditions = 
						{
							
							{
								"276c8f9e-7252-9725-ba0d-a3178fe45059",
								true,
							},
							
							{
								"a950db13-c260-dac8-84d9-dc18fac663e0",
								true,
							},
							
							{
								"542f7e9f-bb48-e24c-8199-a9711409d365",
								true,
							},
							
							{
								"51b2a66b-7a35-efc3-8b99-ee77282035cd",
								true,
							},
							
							{
								"ea96c511-8563-67d7-9ef6-cdd5730bc51c",
								true,
							},
							
							{
								"c2145597-9019-41d8-9e88-359c32bdb89d",
								true,
							},
						},
						endIfUsed = true,
						name = "Apply opening schedule once",
						uuid = "51435b98-6617-2975-b828-1eea365438b2",
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
						localmapid = 1368,
						name = "Windurst: The Third Walk",
						uuid = "276c8f9e-7252-9725-ba0d-a3178fe45059",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In boss combat",
						uuid = "ea96c511-8563-67d7-9ef6-cdd5730bc51c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local all=data.allianceAutoSimSchedules\nreturn not (all and all[2071] and all[2071].done)",
						dequeueIfLuaFalse = true,
						name = "Schedule not applied this pull",
						uuid = "51b2a66b-7a35-efc3-8b99-ee77282035cd",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then return false end\nlocal ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t>=0 and t<=30",
						name = "AutoSim opening ready",
						uuid = "c2145597-9019-41d8-9e88-359c32bdb89d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 50215,
						name = "Opening cast 50215",
						uuid = "a950db13-c260-dac8-84d9-dc18fac663e0",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 14778,
						name = "Boss 14778",
						uuid = "542f7e9f-bb48-e24c-8199-a9711409d365",
						version = 3,
					},
				},
			},
			displayPath = "AutoSim/Windurst: The Third Walk/Automatic boss start",
			eventType = 3,
			name = "[AutoSim start] Shantotto the Demon",
			timeout = 10,
			uuid = "5393ed28-f367-fcab-8313-7af1f7abf235",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\n-- Alexander Resurrected: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2072]=all[2072] or {}\nlocal state=all[2072]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(281.92)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(251.92,3.93)\n state.phases={{\"CasterDowntime\",27.5,34.0,1},{\"CasterDowntime\",38.0,42.5,1},{\"CasterDowntime\",47.0,50.5,1},{\"CasterDowntime\",52.0,53.5,1},{\"CasterDowntime\",61.5,64.0,1},{\"CasterDowntime\",70.0,72.0,1},{\"CasterDowntime\",92.0,93.5,1},{\"CasterDowntime\",99.0,101.5,1},{\"CasterDowntime\",102.5,104.5,1},{\"CasterDowntime\",106.5,108.0,1},{\"CasterDowntime\",166.5,167.5,1},{\"CasterDowntime\",171.5,175.0,1},{\"CasterDowntime\",177.5,180.0,1},{\"CasterDowntime\",211.5,217.5,1},{\"CasterDowntime\",223.5,229.0,1},{\"CasterDowntime\",239.0,242.5,1},{\"CasterDowntime\",244.0,245.5,1},{\"CasterDowntime\",249.5,250.5,1},{\"CasterDowntime\",252.0,253.0,1},{\"CasterDowntime\",256.0,257.5,1},{\"CasterDowntime\",265.5,269.0,1},{\"CasterDowntime\",271.5,275.0,1},{\"GroundFieldMovement\",70.0,72.0,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
						conditions = 
						{
							
							{
								"44042b1f-82f1-a57a-8504-3c9d4ea542ae",
								true,
							},
							
							{
								"26d7c97c-bb15-8fcc-876e-f0b6590ae9b7",
								true,
							},
							
							{
								"f419c5b0-a7c0-de8b-8e0d-08ee58b06df7",
								true,
							},
							
							{
								"6b5c6a87-a536-8b2e-9010-99c22ba522d8",
								true,
							},
							
							{
								"18b31985-27ea-7831-85cc-52dbf9352ad4",
								true,
							},
							
							{
								"9497c249-5853-e283-9e32-a567f17ae85c",
								true,
							},
						},
						endIfUsed = true,
						name = "Apply opening schedule once",
						uuid = "af67a823-e499-7251-80d0-92682a41aed6",
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
						localmapid = 1368,
						name = "Windurst: The Third Walk",
						uuid = "44042b1f-82f1-a57a-8504-3c9d4ea542ae",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In boss combat",
						uuid = "18b31985-27ea-7831-85cc-52dbf9352ad4",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local all=data.allianceAutoSimSchedules\nreturn not (all and all[2072] and all[2072].done)",
						dequeueIfLuaFalse = true,
						name = "Schedule not applied this pull",
						uuid = "6b5c6a87-a536-8b2e-9010-99c22ba522d8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then return false end\nlocal ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t>=0 and t<=30",
						name = "AutoSim opening ready",
						uuid = "9497c249-5853-e283-9e32-a567f17ae85c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 50161,
						name = "Opening cast 50161",
						uuid = "26d7c97c-bb15-8fcc-876e-f0b6590ae9b7",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 14529,
						name = "Boss 14529",
						uuid = "f419c5b0-a7c0-de8b-8e0d-08ee58b06df7",
						version = 3,
					},
				},
			},
			displayPath = "AutoSim/Windurst: The Third Walk/Automatic boss start",
			eventType = 3,
			name = "[AutoSim start] Alexander Resurrected",
			timeout = 10,
			uuid = "bc295687-70af-d393-ae49-746bb11a4dd2",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\n-- Promathia: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2073]=all[2073] or {}\nlocal state=all[2073]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(360.864)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(330.864,4.39)\n state.phases={{\"FullDowntime\",112.86,126.89,1},{\"FullDowntime\",178.4,185.0,1},{\"Stun\",197.5,205.5,1},{\"CasterDowntime\",24.0,35.0,1},{\"CasterDowntime\",37.5,38.5,1},{\"CasterDowntime\",63.0,64.0,1},{\"CasterDowntime\",65.5,69.0,1},{\"CasterDowntime\",94.0,97.5,1},{\"CasterDowntime\",99.0,109.0,1},{\"CasterDowntime\",127.5,129.0,1},{\"CasterDowntime\",133.5,134.5,1},{\"CasterDowntime\",153.0,154.5,1},{\"CasterDowntime\",159.5,161.5,1},{\"CasterDowntime\",186.0,189.0,1},{\"CasterDowntime\",205.5,207.5,1},{\"CasterDowntime\",210.5,211.5,1},{\"CasterDowntime\",218.0,222.0,1},{\"CasterDowntime\",224.0,225.5,1},{\"CasterDowntime\",249.0,261.0,1},{\"CasterDowntime\",296.0,306.0,1},{\"CasterDowntime\",310.0,313.5,1},{\"CasterDowntime\",339.0,347.5,1},{\"GroundFieldMovement\",218.0,222.0,2},{\"GroundFieldMovement\",224.0,225.5,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
						conditions = 
						{
							
							{
								"768a822b-cec6-c722-952f-a0ac997e9c5c",
								true,
							},
							
							{
								"73b3e32b-1169-ff14-8200-56e9f6b889f9",
								true,
							},
							
							{
								"f18e1dfc-c81f-ab81-98a8-3338be25bf86",
								true,
							},
							
							{
								"180bcf1a-7fa0-70f9-89a5-7025b982eccc",
								true,
							},
							
							{
								"a9cf4b10-64c1-1069-8c0e-50fa715aa72a",
								true,
							},
							
							{
								"daaa0a68-99b9-c8e2-ae06-8cf548c506a3",
								true,
							},
						},
						endIfUsed = true,
						name = "Apply opening schedule once",
						uuid = "4fe67be2-1b7d-bf5d-b83a-23358a76ffc4",
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
						localmapid = 1368,
						name = "Windurst: The Third Walk",
						uuid = "768a822b-cec6-c722-952f-a0ac997e9c5c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In boss combat",
						uuid = "a9cf4b10-64c1-1069-8c0e-50fa715aa72a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local all=data.allianceAutoSimSchedules\nreturn not (all and all[2073] and all[2073].done)",
						dequeueIfLuaFalse = true,
						name = "Schedule not applied this pull",
						uuid = "180bcf1a-7fa0-70f9-89a5-7025b982eccc",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then return false end\nlocal ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t>=0 and t<=30",
						name = "AutoSim opening ready",
						uuid = "daaa0a68-99b9-c8e2-ae06-8cf548c506a3",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 50317,
						name = "Opening cast 50317",
						uuid = "73b3e32b-1169-ff14-8200-56e9f6b889f9",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 14779,
						name = "Boss 14779",
						uuid = "f18e1dfc-c81f-ab81-98a8-3338be25bf86",
						version = 3,
					},
				},
			},
			displayPath = "AutoSim/Windurst: The Third Walk/Automatic boss start",
			eventType = 3,
			name = "[AutoSim start] Promathia",
			timeout = 10,
			uuid = "7eb548d2-0046-02c7-b8ef-b92ec4425faf",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\n-- Hollow King: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2074]=all[2074] or {}\nlocal state=all[2074]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(430.468)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(400.468,31.85)\n state.phases={{\"FullDowntime\",156.84,210.18,1},{\"Stun\",157.0,209.5,1},{\"CasterDowntime\",14.0,15.5,1},{\"CasterDowntime\",70.0,72.5,1},{\"CasterDowntime\",122.0,124.5,1},{\"CasterDowntime\",133.0,135.0,1},{\"CasterDowntime\",145.0,146.0,1},{\"CasterDowntime\",299.5,303.0,1},{\"CasterDowntime\",309.5,310.5,1},{\"CasterDowntime\",314.5,315.5,1},{\"CasterDowntime\",330.0,334.0,1},{\"CasterDowntime\",335.0,339.5,1},{\"CasterDowntime\",345.5,350.0,1},{\"CasterDowntime\",361.5,372.5,1},{\"CasterDowntime\",376.0,378.5,1},{\"CasterDowntime\",384.5,385.5,1},{\"GroundFieldMovement\",145.0,146.0,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
						conditions = 
						{
							
							{
								"01321a1c-edb4-d049-91e5-8a03355cea72",
								true,
							},
							
							{
								"525735ef-68d2-5eb8-8ddc-68c458f97695",
								true,
							},
							
							{
								"50d3b9c5-63f3-abee-8230-5e2bcd5c9cf9",
								true,
							},
							
							{
								"824c7010-1d27-3a89-9a4d-94871cf914d2",
								true,
							},
							
							{
								"85d9ac3e-3a0b-4d75-9494-8dd6313d4edd",
								true,
							},
							
							{
								"50ba0998-97ef-0a67-b92a-770d8e7c10f9",
								true,
							},
						},
						endIfUsed = true,
						name = "Apply opening schedule once",
						uuid = "965b8b85-6c30-3cc8-aee9-4c60a4654b40",
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
						localmapid = 1368,
						name = "Windurst: The Third Walk",
						uuid = "01321a1c-edb4-d049-91e5-8a03355cea72",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In boss combat",
						uuid = "85d9ac3e-3a0b-4d75-9494-8dd6313d4edd",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local all=data.allianceAutoSimSchedules\nreturn not (all and all[2074] and all[2074].done)",
						dequeueIfLuaFalse = true,
						name = "Schedule not applied this pull",
						uuid = "824c7010-1d27-3a89-9a4d-94871cf914d2",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then return false end\nlocal ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t>=0 and t<=30",
						name = "AutoSim opening ready",
						uuid = "50ba0998-97ef-0a67-b92a-770d8e7c10f9",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 3,
						eventArgType = 2,
						eventSpellID = 49105,
						name = "Either opening cast",
						spellIDList = 
						{
							49105,
							49108,
						},
						uuid = "525735ef-68d2-5eb8-8ddc-68c458f97695",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 14729,
						name = "Boss 14729",
						uuid = "50d3b9c5-63f3-abee-8230-5e2bcd5c9cf9",
						version = 3,
					},
				},
			},
			displayPath = "AutoSim/Windurst: The Third Walk/Automatic boss start",
			eventType = 3,
			name = "[AutoSim start] Hollow King",
			timeout = 10,
			uuid = "a6653c59-b3ed-c5fc-9719-3800c5eb5f4e",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Jeuno",
			uuid = "ebb22608-f238-bde4-8535-84da269fe070",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Jeuno",
			name = "Ark Angels",
			uuid = "26cbb370-d7c2-eda1-b925-5c6b267e5341",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Jeuno/Ark Angels",
			name = "Assignment targeting",
			uuid = "87d5979b-ad94-7b1f-87be-eda969ef57a5",
		},
		objectType = "folder",
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
								"64b4e944-0130-2d72-9169-d377d5b6085d",
								true,
							},
							
							{
								"564b0762-27d3-d433-a2bf-232595547cf5",
								true,
							},
							
							{
								"2341cec2-11b1-5e22-be1b-c00b3c2bf556",
								true,
							},
							
							{
								"90bd6bfc-8efd-e7a5-a675-2af1c0dda209",
								true,
							},
						},
						name = "Target Ark Angel MR",
						setTarget = true,
						targetContentID = 13643,
						targetType = "ContentID",
						uuid = "dc08091d-339a-78f8-82a6-48225e5fe495",
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
						localmapid = 1248,
						name = "Jeuno only",
						uuid = "64b4e944-0130-2d72-9169-d377d5b6085d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventBuffID = 4192,
						name = "Epic Hero applied",
						uuid = "564b0762-27d3-d433-a2bf-232595547cf5",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player=TensorCore.mGetPlayer()\nreturn player~=nil and eventArgs.entityID==player.id",
						dequeueIfLuaFalse = true,
						name = "Assignment applied to me",
						uuid = "2341cec2-11b1-5e22-be1b-c00b3c2bf556",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4192,
						category = "Self",
						name = "Epic Hero active",
						uuid = "90bd6bfc-8efd-e7a5-a675-2af1c0dda209",
						version = 3,
					},
				},
			},
			displayPath = "Jeuno/Ark Angels/Assignment targeting",
			eventType = 8,
			name = "[Ark Angels] Epic Hero - Target Ark Angel MR",
			uuid = "f5b8c36b-7753-9db9-a1aa-8cd5079f7fbb",
			version = 2,
		},
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
								"5d28ae18-21fa-571f-af91-0e453325f2a8",
								true,
							},
							
							{
								"bd64fed9-a17a-eaff-8d91-9d37fd3ddd11",
								true,
							},
							
							{
								"4040c9a1-566e-66f5-b4f1-d45ead5eae09",
								true,
							},
							
							{
								"823c4abd-c4f5-6e1d-9c78-606a7b7ffb11",
								true,
							},
						},
						name = "Target Ark Angel GK",
						setTarget = true,
						targetContentID = 13641,
						targetType = "ContentID",
						uuid = "a99d5c76-adc7-adeb-894c-a08c53ecd39c",
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
						localmapid = 1248,
						name = "Jeuno only",
						uuid = "5d28ae18-21fa-571f-af91-0e453325f2a8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventBuffID = 4194,
						name = "Fated Hero applied",
						uuid = "bd64fed9-a17a-eaff-8d91-9d37fd3ddd11",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player=TensorCore.mGetPlayer()\nreturn player~=nil and eventArgs.entityID==player.id",
						dequeueIfLuaFalse = true,
						name = "Assignment applied to me",
						uuid = "4040c9a1-566e-66f5-b4f1-d45ead5eae09",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4194,
						category = "Self",
						name = "Fated Hero active",
						uuid = "823c4abd-c4f5-6e1d-9c78-606a7b7ffb11",
						version = 3,
					},
				},
			},
			displayPath = "Jeuno/Ark Angels/Assignment targeting",
			eventType = 8,
			name = "[Ark Angels] Fated Hero - Target Ark Angel GK",
			uuid = "790c234b-e992-8f1f-8416-344d04725116",
			version = 2,
		},
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
								"668ae57b-4e6a-8f8a-b792-6edae7c6caad",
								true,
							},
							
							{
								"f771b37a-2d8f-2ab1-9440-f5759d848410",
								true,
							},
							
							{
								"b9429d0e-a615-a6b1-a243-4a4fc858ddc6",
								true,
							},
							
							{
								"ecf9bfd6-6ba0-ad81-ae16-8d411fd07751",
								true,
							},
						},
						name = "Target Ark Angel TT",
						setTarget = true,
						targetContentID = 13642,
						targetType = "ContentID",
						uuid = "ccccd5ea-bd60-7a32-b3e0-a744d784d2b5",
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
						localmapid = 1248,
						name = "Jeuno only",
						uuid = "668ae57b-4e6a-8f8a-b792-6edae7c6caad",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventBuffID = 4196,
						name = "Vaunted Hero applied",
						uuid = "f771b37a-2d8f-2ab1-9440-f5759d848410",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player=TensorCore.mGetPlayer()\nreturn player~=nil and eventArgs.entityID==player.id",
						dequeueIfLuaFalse = true,
						name = "Assignment applied to me",
						uuid = "b9429d0e-a615-a6b1-a243-4a4fc858ddc6",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4196,
						category = "Self",
						name = "Vaunted Hero active",
						uuid = "ecf9bfd6-6ba0-ad81-ae16-8d411fd07751",
						version = 3,
					},
				},
			},
			displayPath = "Jeuno/Ark Angels/Assignment targeting",
			eventType = 8,
			name = "[Ark Angels] Vaunted Hero - Target Ark Angel TT",
			uuid = "76dd934c-0adf-5193-9461-f0d91716584f",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Capture the active ACR's actual variables, including pre-existing false values.\nif not jacobArkAoeGuard then\n local saved={vars={}}\n for _,toggle in ipairs(TensorCore.API.TensorACR.getQuickToggles() or {}) do\n  if string.match(toggle.var,\"_AOE$\") or string.match(toggle.var,\"_SmartAOE$\") then\n   if type(_G[toggle.var])==\"boolean\" then saved.vars[toggle.var]=_G[toggle.var] end\n  end\n end\n jacobArkAoeGuard=saved\nend\nlocal saved=jacobArkAoeGuard\nif saved.vars then for var in pairs(saved.vars) do _G[var]=false end end\nself.used=true\n",
						conditions = 
						{
							
							{
								"d9a57ebf-fb4d-99df-881d-c06e7c8589ba",
								true,
							},
							
							{
								"e8e62511-0dee-fe21-bcde-f7f81067d7dc",
								true,
							},
							
							{
								"1dfa0cec-915c-58f7-a6a2-f71d30621697",
								true,
							},
						},
						name = "Capture and suppress active ACR AoE options",
						uuid = "3c31acaa-dc76-b77c-b0ec-33037beb9a9d",
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
						localmapid = 1248,
						name = "Jeuno only",
						uuid = "d9a57ebf-fb4d-99df-881d-c06e7c8589ba",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 5,
						buffIDList = 
						{
							4192,
							4194,
							4196,
						},
						category = "Self",
						matchAnyBuff = true,
						name = "Any personal Hero assignment",
						uuid = "e8e62511-0dee-fe21-bcde-f7f81067d7dc",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn p~=nil and p.alive",
						dequeueIfLuaFalse = true,
						name = "Living player",
						uuid = "1dfa0cec-915c-58f7-a6a2-f71d30621697",
						version = 3,
					},
				},
			},
			displayPath = "Jeuno/Ark Angels/Assignment targeting",
			name = "[Ark Angels] Single target during Hero assignment",
			throttleTime = 500,
			timeout = 0.40000000596046,
			uuid = "8abb5c11-e180-8d7f-8b59-e8ed82bb7e36",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Jeuno/Ark Angels/Assignment targeting",
			name = "Cleanup",
			uuid = "d3f2fe15-8c68-0f72-8862-02072ad1dcb8",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local saved=jacobArkAoeGuard\nif saved then\n if saved.vars then\n  for var,value in pairs(saved.vars) do _G[var]=value end\n else\n  -- Restore an old BLM guard if this update was loaded during an assignment.\n  ACR_TensorNuke4_AOE=saved.aoe\n  ACR_TensorNuke4_SmartAOE=saved.smart\n end\n jacobArkAoeGuard=nil\nend\nself.used=true\n",
						conditions = 
						{
							
							{
								"e3b89d36-a7f6-e700-9a73-718ca6e9588f",
								true,
							},
							
							{
								"80b10a09-bfcf-30c7-b75f-d65ca9e069ab",
								true,
							},
							
							{
								"ff8a9982-86d6-c527-bab2-ebe06e89d5c5",
								true,
							},
						},
						name = "Restore previous settings and release ownership",
						uuid = "2f65f138-fc60-997f-bbdc-5f66001b7058",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return jacobArkAoeGuard~=nil",
						dequeueIfLuaFalse = true,
						name = "Owned settings await restoration",
						uuid = "80b10a09-bfcf-30c7-b75f-d65ca9e069ab",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 6,
						buffIDList = 
						{
							4192,
							4194,
							4196,
						},
						category = "Self",
						name = "All Hero assignments gone",
						uuid = "ff8a9982-86d6-c527-bab2-ebe06e89d5c5",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1248,
						name = "Jeuno only",
						uuid = "e3b89d36-a7f6-e700-9a73-718ca6e9588f",
						version = 3,
					},
				},
			},
			displayPath = "Jeuno/Ark Angels/Assignment targeting/Cleanup",
			name = "[Ark Angels] Restore AoE - assignment ended",
			throttleTime = 500,
			timeout = 0.4,
			uuid = "f92b9ea0-560e-59ca-9d50-0737cbb6034a",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local saved=jacobArkAoeGuard\nif saved then\n if saved.vars then\n  for var,value in pairs(saved.vars) do _G[var]=value end\n else\n  -- Restore an old BLM guard if this update was loaded during an assignment.\n  ACR_TensorNuke4_AOE=saved.aoe\n  ACR_TensorNuke4_SmartAOE=saved.smart\n end\n jacobArkAoeGuard=nil\nend\nself.used=true\n",
						conditions = 
						{
							
							{
								"d0478bbd-8c6f-c505-953d-ed5ae2643235",
								true,
							},
							
							{
								"9ffc726c-d960-5f10-be9f-5c5cf792cb3b",
								true,
							},
						},
						name = "Restore previous settings and release ownership",
						uuid = "283cd709-6988-18c3-b73f-0f717e571faf",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return jacobArkAoeGuard~=nil",
						dequeueIfLuaFalse = true,
						name = "Owned settings await restoration",
						uuid = "9ffc726c-d960-5f10-be9f-5c5cf792cb3b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1248,
						name = "Jeuno only",
						uuid = "d0478bbd-8c6f-c505-953d-ed5ae2643235",
						version = 3,
					},
				},
			},
			displayPath = "Jeuno/Ark Angels/Assignment targeting/Cleanup",
			eventType = 9,
			name = "[Ark Angels] Restore AoE - OnWipe",
			timeout = 0.4,
			uuid = "1dff027b-b946-42e4-a898-73a1314c2dc3",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local saved=jacobArkAoeGuard\nif saved then\n if saved.vars then\n  for var,value in pairs(saved.vars) do _G[var]=value end\n else\n  -- Restore an old BLM guard if this update was loaded during an assignment.\n  ACR_TensorNuke4_AOE=saved.aoe\n  ACR_TensorNuke4_SmartAOE=saved.smart\n end\n jacobArkAoeGuard=nil\nend\nself.used=true\n",
						conditions = 
						{
							
							{
								"b83831f3-f537-cabb-aed1-25d3a6130360",
								true,
							},
							
							{
								"8459546d-4e79-0038-a107-37503cb30110",
								true,
							},
						},
						name = "Restore previous settings and release ownership",
						uuid = "a4c30220-e3e8-9088-b2ac-7a064cf98260",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return jacobArkAoeGuard~=nil",
						dequeueIfLuaFalse = true,
						name = "Owned settings await restoration",
						uuid = "8459546d-4e79-0038-a107-37503cb30110",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1248,
						name = "Jeuno only",
						uuid = "b83831f3-f537-cabb-aed1-25d3a6130360",
						version = 3,
					},
				},
			},
			displayPath = "Jeuno/Ark Angels/Assignment targeting/Cleanup",
			eventType = 10,
			name = "[Ark Angels] Restore AoE - OnDeath",
			timeout = 0.4,
			uuid = "0666b090-6d4b-5aea-a0e3-e9be412e7a4d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local saved=jacobArkAoeGuard\nif saved then\n if saved.vars then\n  for var,value in pairs(saved.vars) do _G[var]=value end\n else\n  -- Restore an old BLM guard if this update was loaded during an assignment.\n  ACR_TensorNuke4_AOE=saved.aoe\n  ACR_TensorNuke4_SmartAOE=saved.smart\n end\n jacobArkAoeGuard=nil\nend\nself.used=true\n",
						conditions = 
						{
							
							{
								"6b507796-2b75-cf8a-8f78-6d473fbc6a41",
								true,
							},
						},
						name = "Restore previous settings and release ownership",
						uuid = "abdae882-bf7f-7891-ac94-14b2d1473f0d",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return jacobArkAoeGuard~=nil",
						dequeueIfLuaFalse = true,
						name = "Owned settings await restoration",
						uuid = "6b507796-2b75-cf8a-8f78-6d473fbc6a41",
						version = 3,
					},
				},
			},
			displayPath = "Jeuno/Ark Angels/Assignment targeting/Cleanup",
			eventType = 11,
			name = "[Ark Angels] Restore AoE - OnMapChange",
			timeout = 0.4,
			uuid = "ccd8f583-5348-c501-9d8a-99def88a31cf",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Jeuno/Ark Angels",
			name = "Knockback",
			uuid = "f5018fe0-d06c-a6d0-9f79-b9e279d80d1c",
		},
		objectType = "folder",
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
								"a8519243-e151-6efc-a6a2-cf8226f5f919",
								true,
							},
							
							{
								"206ed29e-8711-78bf-96ff-c008eaeea165",
								true,
							},
							
							{
								"32578f4f-9488-c1e1-b0b6-3947d3543b82",
								true,
							},
							
							{
								"0d6dbb1b-a663-68ad-ac98-5999b59799aa",
								true,
							},
							
							{
								"ce94c10a-c30a-3250-b4d9-80ed3ff8c236",
								true,
							},
						},
						gVar = "ACR_TensorNuke4_Hotbar_Surecast",
						uuid = "46ccf920-1fd4-f028-96ff-0fd3f5baf3c0",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "ACR",
						conditions = 
						{
							
							{
								"a8519243-e151-6efc-a6a2-cf8226f5f919",
								true,
							},
							
							{
								"206ed29e-8711-78bf-96ff-c008eaeea165",
								true,
							},
							
							{
								"32578f4f-9488-c1e1-b0b6-3947d3543b82",
								true,
							},
							
							{
								"0d6dbb1b-a663-68ad-ac98-5999b59799aa",
								true,
							},
							
							{
								"ea5d50e9-5ba9-4221-870f-d0d7c30fd921",
								true,
							},
						},
						gVar = "ACR_TensorReaper4_Hotbar_ArmsLength",
						name = "Request Arm's Length",
						uuid = "88314414-2a22-b88a-acbc-08e0f253e32b",
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
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1248,
						name = "Jeuno only",
						uuid = "a8519243-e151-6efc-a6a2-cf8226f5f919",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 41069,
						name = "Exact cast",
						uuid = "206ed29e-8711-78bf-96ff-c008eaeea165",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 13643,
						name = "Exact caster",
						uuid = "32578f4f-9488-c1e1-b0b6-3947d3543b82",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not self.deadline then self.deadline=Now()+eventArgs.channelTimeMax*1000 end\nlocal remaining=self.deadline-Now()\nreturn remaining<=3000 and remaining>=1000",
						name = "Spiral Finish: 3 to 1 seconds remaining",
						uuid = "0d6dbb1b-a663-68ad-ac98-5999b59799aa",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 14,
						dequeueIfLuaFalse = true,
						jobIDList = 
						{
							25,
							27,
							35,
							42,
							24,
							28,
							33,
							40,
						},
						name = "Caster or healer",
						uuid = "ce94c10a-c30a-3250-b4d9-80ed3ff8c236",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 14,
						dequeueIfLuaFalse = true,
						jobIDList = 
						{
							19,
							21,
							32,
							37,
							20,
							22,
							30,
							34,
							39,
							41,
							23,
							31,
							38,
						},
						name = "Physical role",
						uuid = "ea5d50e9-5ba9-4221-870f-d0d7c30fd921",
						version = 3,
					},
				},
			},
			displayPath = "Jeuno/Ark Angels/Knockback",
			eventType = 3,
			name = "[Ark Angels] Knockback protection - Spiral Finish",
			timeout = 12,
			uuid = "fefc15b7-8ea1-3308-8baf-c69c06ef08a4",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Jeuno/Ark Angels",
			name = "Draws",
			uuid = "b3257e27-6d3a-414d-8608-b3f6c17bb198",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Pull-scoped helpers. BossMod geometry; native 1248 logs corroborate IDs/timing.\nif data.jacobJeunoDraws == nil then\n    local s = { shapes = {}, holy = {}, exa = {}, holyUntil = 0, upperUntil = 0, assignmentUntil = 0 }\n    data.jacobJeunoDraws = s\n    s.green = TensorCore.getCachedDrawer(0x3000FF00, nil, 0x5000FF00, 0xFF00FF00, 2)\n    s.red = TensorCore.getCachedDrawer(0x300000FF, nil, 0x500000FF, 0xFF0000FF, 2)\n    s.line = TensorCore.getStaticDrawer(0xFF00FF00, 2)\n    s.aoe = TensorCore.getMoogleDrawer()\n    function s.own(uuid, deadline, caster, boss)\n        if uuid then s.shapes[uuid] = {deadline = deadline, caster = caster, boss = boss} end\n        return uuid\n    end\n    function s.remove(uuid)\n        if uuid then Argus.deleteTimedShape(uuid); s.shapes[uuid] = nil end\n    end\n    function s.cleanup()\n        for uuid in pairs(s.shapes) do Argus.deleteTimedShape(uuid) end\n        s.shapes = {}; s.holy = {}; s.exa = {}\n        s.holyUntil = 0; s.upperUntil = 0; s.assignmentUntil = 0; s.exaUntil = 0\n    end\n    function s.timer(ms, x, y, z)\n        AnyoneCore.addWorldTextCountdown(ms, {x=x,y=y+1,z=z}, 0xFFFFFFFF, true, 1.3)\n    end\n    function s.drawCircle(ms, p, radius, caster, boss)\n        return s.own(s.aoe:addTimedCircle(ms,p.x,p.y,p.z,radius),Now()+ms,caster,boss)\n    end\n    function s.safePoint(ms, x, y, z, boss)\n        s.own(s.green:addTimedCircle(ms,x,y,z,1,0,false,true),Now()+ms,nil,boss)\n    end\n    function s.inside(poly,dx,dz)\n            local yes=false\n            local j=#poly\n            for i=1,#poly do\n                local a,b=poly[i],poly[j]\n                if (a[2]>dz)~=(b[2]>dz) and dx<(b[1]-a[1])*(dz-a[2])/(b[2]-a[2])+a[1] then yes=not yes end\n                j=i\n            end\n            return yes\n    end\n    function s.upperUnsafe(x,z)\n        local dx,dz=x-800,z-400\n        if math.abs(dx)>35 or math.abs(dz)>35 then return true end\n        if not s.thornsUntil or Now()>s.thornsUntil then return false end\n        if s.thornsRotated then dx,dz=-dz,dx end\n        return s.inside(s.thornOuter,dx,dz) and not s.inside(s.thornHole,dx,dz)\n    end\n    s.thornOuter={{-35,35},{-35,-5},{-25,-5},{-25,-25},{5,-25},{5,-35},{35,-35},{35,5},{25,5},{25,25},{-5,25},{-5,35}}\n    s.thornHole={{-15,15},{-15,-5},{-5,-5},{-5,-15},{15,-15},{15,5},{5,5},{5,15}}\n    -- Pick a safe one-yalm position circle; party proximity only breaks safe-position ties.\n    function s.fafnirSpot(ms, spell, p)\n        local party=TensorCore.getEntityGroupList(\"Party\")\n        local bestScore,bestX,bestZ=-math.huge,nil,nil\n        for i=0,71 do\n            local a=i*math.pi/36\n            local radius=spell==41116 and 27 or 11\n            local x,z=p.x+radius*math.sin(a),p.z+radius*math.cos(a)\n            local safe=(x+500)^2+(z-600)^2<28.5^2\n            if spell==41114 then safe=safe and math.cos(a-p.h)<-math.cos(math.pi/5) end\n            if safe then\n                local score=-(x+500)*0.1\n                for _,e in pairs(party) do\n                    if e.alive and (e.pos.x-x)^2+(e.pos.z-z)^2<36 then score=score+1 end\n                end\n                if score>bestScore then bestScore,bestX,bestZ=score,x,z end\n            end\n        end\n        if bestX then s.safePoint(ms,bestX,p.y,bestZ,2) end\n    end\nend\n\nlocal id=eventArgs.spellID\nlocal cid=eventArgs.entityContentID\nlocal boss\nif cid==13351 or cid==13352 then boss=1\nelseif cid==13662 then boss=2\nelseif cid==13641 or cid==13642 or cid==13643 or cid==13644 or cid==13645 then boss=3\nelse self.used=true; return end\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e then return end\nlocal p=e.pos\n-- Argus channelTimeMax in native logs is 0.3s shorter than the actual cast.\nlocal ms=math.max(1,(eventArgs.channelTimeMax+0.3)*1000)\nlocal deadline=Now()+ms\nlocal s=data.jacobJeunoDraws\nif boss==1 then\n    if id==40946 then\n        s.exaUntil=Now()+35000\n    elseif id>=40939 and id<=40941 then\n        local r=(id-40938)*9\n        s.drawCircle(ms,p,r,e.id,1)\n        s.knuckle={x=p.x,y=p.y,z=p.z,radius=r,deadline=deadline}\n        AnyoneCore.addTimedWorldText(ms,\"OUT > IN\",{x=p.x,y=p.y+2,z=p.z},0xFFFFFFFF,true,1.7)\n    elseif id>=40942 and id<=40944 then\n        local r=(id-40941)*9\n        -- Donut starts only after the first hit. Keep the first safe region readable.\n        s.own(s.aoe:addTimedDonut(ms,p.x,p.y,p.z,r,60,math.max(0,ms-1500)),deadline,e.id,1)\n    elseif id==40963 then\n        local t=TensorCore.mGetEntity(eventArgs.targetID)\n        if t then\n            local old=s.holy[t.id]\n            if old then s.remove(old.uuid) end\n            s.holy[t.id]={id=t.id,deadline=deadline,color=true,uuid=s.own(s.red:addTimedCircleOnEnt(ms,t.id,6,0,false,true),deadline,e.id,1)}\n            s.holyUntil=math.max(s.holyUntil,deadline)\n        end\n    elseif id>=40950 and id<=40952 then\n        s.remove(s.upperLine); s.remove(s.upperCircle)\n        s.upperDistance=(id-40949)*12\n        s.upperUntil=deadline+1400\n        s.upperCaster=e.id\n        s.upperLine=nil; s.upperCircle=nil; s.upperColor=nil\n    elseif id==40955 then\n        s.timer(ms,p.x,p.y,p.z)\n    end\nelseif boss==2 then\n    if id==41114 then\n        s.own(s.aoe:addTimedCone(ms,p.x,p.y,p.z,80,math.pi*1.5,p.h),deadline,e.id,2)\n        s.timer(ms,p.x,p.y,p.z)\n        s.fafnirSpot(ms,id,p)\n    elseif id==41116 then\n        s.drawCircle(ms,p,24,e.id,2)\n        s.timer(ms,p.x,p.y,p.z)\n        s.fafnirSpot(ms,id,p)\n    elseif id==40814 then\n        -- The six 60-degree sectors form the initial 16..30 donut.\n        -- Moogle already shows the individual lingering sectors; do not overdraw them.\n        ms=ms+1200\n        s.timer(ms,p.x,p.y,p.z)\n        s.fafnirSpot(ms,id,p)\n    elseif id==40846 or id==40848 then\n        local width=id==40846 and 20 or 25\n        s.own(s.aoe:addTimedRect(ms,p.x,p.y,p.z,70,width,p.h),deadline,e.id,2)\n        s.timer(ms,p.x+18*math.sin(p.h),p.y,p.z+18*math.cos(p.h))\n    elseif id==40850 then\n        s.timer(ms,p.x,p.y,p.z)\n    end\nelseif id==41084 then\n    -- Concerted Dissolution: timer at the helper; existing telegraph keeps its styling.\n    s.timer(ms,p.x,p.y,p.z)\nend\nself.used=true\n",
						conditions = 
						{
							
							{
								"ed25a5a0-00a4-1281-b42b-4d1f3a4d860b",
								true,
							},
							
							{
								"1b1e19fe-29f1-b358-894a-483d77da2b22",
								true,
							},
						},
						name = "[Ark Angels draws] Protean countdowns",
						uuid = "263df510-18f3-d069-9290-57d84313d9ec",
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
						localmapid = 1248,
						name = "Jeuno only",
						uuid = "ed25a5a0-00a4-1281-b42b-4d1f3a4d860b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 3,
						eventArgType = 2,
						name = "Matching mechanic cast",
						spellIDList = 
						{
							41084,
						},
						uuid = "1b1e19fe-29f1-b358-894a-483d77da2b22",
						version = 3,
					},
				},
			},
			displayPath = "Jeuno/Ark Angels/Draws",
			eventType = 3,
			name = "[Ark Angels draws] Protean countdowns",
			timeout = 2,
			uuid = "845570f1-2cf8-92bd-8936-4acfce66ea03",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Pull-scoped helpers. BossMod geometry; native 1248 logs corroborate IDs/timing.\nif data.jacobJeunoDraws == nil then\n    local s = { shapes = {}, holy = {}, exa = {}, holyUntil = 0, upperUntil = 0, assignmentUntil = 0 }\n    data.jacobJeunoDraws = s\n    s.green = TensorCore.getCachedDrawer(0x3000FF00, nil, 0x5000FF00, 0xFF00FF00, 2)\n    s.red = TensorCore.getCachedDrawer(0x300000FF, nil, 0x500000FF, 0xFF0000FF, 2)\n    s.line = TensorCore.getStaticDrawer(0xFF00FF00, 2)\n    s.aoe = TensorCore.getMoogleDrawer()\n    function s.own(uuid, deadline, caster, boss)\n        if uuid then s.shapes[uuid] = {deadline = deadline, caster = caster, boss = boss} end\n        return uuid\n    end\n    function s.remove(uuid)\n        if uuid then Argus.deleteTimedShape(uuid); s.shapes[uuid] = nil end\n    end\n    function s.cleanup()\n        for uuid in pairs(s.shapes) do Argus.deleteTimedShape(uuid) end\n        s.shapes = {}; s.holy = {}; s.exa = {}\n        s.holyUntil = 0; s.upperUntil = 0; s.assignmentUntil = 0; s.exaUntil = 0\n    end\n    function s.timer(ms, x, y, z)\n        AnyoneCore.addWorldTextCountdown(ms, {x=x,y=y+1,z=z}, 0xFFFFFFFF, true, 1.3)\n    end\n    function s.drawCircle(ms, p, radius, caster, boss)\n        return s.own(s.aoe:addTimedCircle(ms,p.x,p.y,p.z,radius),Now()+ms,caster,boss)\n    end\n    function s.safePoint(ms, x, y, z, boss)\n        s.own(s.green:addTimedCircle(ms,x,y,z,1,0,false,true),Now()+ms,nil,boss)\n    end\n    function s.inside(poly,dx,dz)\n            local yes=false\n            local j=#poly\n            for i=1,#poly do\n                local a,b=poly[i],poly[j]\n                if (a[2]>dz)~=(b[2]>dz) and dx<(b[1]-a[1])*(dz-a[2])/(b[2]-a[2])+a[1] then yes=not yes end\n                j=i\n            end\n            return yes\n    end\n    function s.upperUnsafe(x,z)\n        local dx,dz=x-800,z-400\n        if math.abs(dx)>35 or math.abs(dz)>35 then return true end\n        if not s.thornsUntil or Now()>s.thornsUntil then return false end\n        if s.thornsRotated then dx,dz=-dz,dx end\n        return s.inside(s.thornOuter,dx,dz) and not s.inside(s.thornHole,dx,dz)\n    end\n    s.thornOuter={{-35,35},{-35,-5},{-25,-5},{-25,-25},{5,-25},{5,-35},{35,-35},{35,5},{25,5},{25,25},{-5,25},{-5,35}}\n    s.thornHole={{-15,15},{-15,-5},{-5,-5},{-5,-15},{15,-15},{15,5},{5,5},{5,15}}\n    -- Pick a safe one-yalm position circle; party proximity only breaks safe-position ties.\n    function s.fafnirSpot(ms, spell, p)\n        local party=TensorCore.getEntityGroupList(\"Party\")\n        local bestScore,bestX,bestZ=-math.huge,nil,nil\n        for i=0,71 do\n            local a=i*math.pi/36\n            local radius=spell==41116 and 27 or 11\n            local x,z=p.x+radius*math.sin(a),p.z+radius*math.cos(a)\n            local safe=(x+500)^2+(z-600)^2<28.5^2\n            if spell==41114 then safe=safe and math.cos(a-p.h)<-math.cos(math.pi/5) end\n            if safe then\n                local score=-(x+500)*0.1\n                for _,e in pairs(party) do\n                    if e.alive and (e.pos.x-x)^2+(e.pos.z-z)^2<36 then score=score+1 end\n                end\n                if score>bestScore then bestScore,bestX,bestZ=score,x,z end\n            end\n        end\n        if bestX then s.safePoint(ms,bestX,p.y,bestZ,2) end\n    end\nend\n\nlocal player=TensorCore.mGetPlayer()\nif not player or eventArgs.entityID~=player.id then self.used=true; return end\nlocal id=eventArgs.buffID\nlocal cid,name,color\nif id==4192 then cid,name,color=13643,\"Red\",0xFF3030FF\nelseif id==4194 then cid,name,color=13641,\"Yellow\",0xFF00FFFF\nelseif id==4196 then cid,name,color=13642,\"Blue\",0xFFFF9040\nelse self.used=true; return end\nlocal s=data.jacobJeunoDraws\nlocal target=TensorCore.getEntityByGroup(\"ContentID\",{contentid=cid,subgroup=\"Nearest\"})\nif not target then return end\ns.remove(s.assignmentCircle)\nlocal ms=eventArgs.buffDuration*1000\nif ms<=0 then ms=600000 end\ns.assignmentUntil=Now()+ms\ns.assignmentBuff=id; s.assignmentName=name; s.assignmentColor=color; s.assignmentTarget=target.id; s.labelAt=0\nlocal drawer=TensorCore.getCachedDrawer(color%0x1000000+0x20000000,nil,color%0x1000000+0x40000000,color,2)\ns.assignmentCircle=s.own(drawer:addTimedCircleOnEnt(ms,target.id,3.5,0,false,true),s.assignmentUntil,nil,3)\nself.used=true\n",
						conditions = 
						{
							
							{
								"80fe5fe5-71c9-f3a2-a195-b83086e10ce8",
								true,
							},
							
							{
								"af77e716-9ac9-637d-b9ef-07be07e3d957",
								true,
							},
							
							{
								"40ff178b-0b7f-c811-aead-013a2b489020",
								true,
							},
						},
						name = "[Ark Angels draws] Red label and focus marker",
						uuid = "5b212d4b-0433-6db5-b7d7-b08dfbae3e43",
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
						localmapid = 1248,
						name = "Jeuno only",
						uuid = "80fe5fe5-71c9-f3a2-a195-b83086e10ce8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventBuffID = 4192,
						name = "Red assignment applied",
						uuid = "af77e716-9ac9-637d-b9ef-07be07e3d957",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer(); return p~=nil and eventArgs.entityID==p.id",
						dequeueIfLuaFalse = true,
						name = "Assignment applied to me",
						uuid = "40ff178b-0b7f-c811-aead-013a2b489020",
						version = 3,
					},
				},
			},
			displayPath = "Jeuno/Ark Angels/Draws",
			eventType = 8,
			name = "[Ark Angels draws] Red label and focus marker",
			uuid = "19de4f9c-ea92-9eb5-b5c0-35a6502ce615",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Pull-scoped helpers. BossMod geometry; native 1248 logs corroborate IDs/timing.\nif data.jacobJeunoDraws == nil then\n    local s = { shapes = {}, holy = {}, exa = {}, holyUntil = 0, upperUntil = 0, assignmentUntil = 0 }\n    data.jacobJeunoDraws = s\n    s.green = TensorCore.getCachedDrawer(0x3000FF00, nil, 0x5000FF00, 0xFF00FF00, 2)\n    s.red = TensorCore.getCachedDrawer(0x300000FF, nil, 0x500000FF, 0xFF0000FF, 2)\n    s.line = TensorCore.getStaticDrawer(0xFF00FF00, 2)\n    s.aoe = TensorCore.getMoogleDrawer()\n    function s.own(uuid, deadline, caster, boss)\n        if uuid then s.shapes[uuid] = {deadline = deadline, caster = caster, boss = boss} end\n        return uuid\n    end\n    function s.remove(uuid)\n        if uuid then Argus.deleteTimedShape(uuid); s.shapes[uuid] = nil end\n    end\n    function s.cleanup()\n        for uuid in pairs(s.shapes) do Argus.deleteTimedShape(uuid) end\n        s.shapes = {}; s.holy = {}; s.exa = {}\n        s.holyUntil = 0; s.upperUntil = 0; s.assignmentUntil = 0; s.exaUntil = 0\n    end\n    function s.timer(ms, x, y, z)\n        AnyoneCore.addWorldTextCountdown(ms, {x=x,y=y+1,z=z}, 0xFFFFFFFF, true, 1.3)\n    end\n    function s.drawCircle(ms, p, radius, caster, boss)\n        return s.own(s.aoe:addTimedCircle(ms,p.x,p.y,p.z,radius),Now()+ms,caster,boss)\n    end\n    function s.safePoint(ms, x, y, z, boss)\n        s.own(s.green:addTimedCircle(ms,x,y,z,1,0,false,true),Now()+ms,nil,boss)\n    end\n    function s.inside(poly,dx,dz)\n            local yes=false\n            local j=#poly\n            for i=1,#poly do\n                local a,b=poly[i],poly[j]\n                if (a[2]>dz)~=(b[2]>dz) and dx<(b[1]-a[1])*(dz-a[2])/(b[2]-a[2])+a[1] then yes=not yes end\n                j=i\n            end\n            return yes\n    end\n    function s.upperUnsafe(x,z)\n        local dx,dz=x-800,z-400\n        if math.abs(dx)>35 or math.abs(dz)>35 then return true end\n        if not s.thornsUntil or Now()>s.thornsUntil then return false end\n        if s.thornsRotated then dx,dz=-dz,dx end\n        return s.inside(s.thornOuter,dx,dz) and not s.inside(s.thornHole,dx,dz)\n    end\n    s.thornOuter={{-35,35},{-35,-5},{-25,-5},{-25,-25},{5,-25},{5,-35},{35,-35},{35,5},{25,5},{25,25},{-5,25},{-5,35}}\n    s.thornHole={{-15,15},{-15,-5},{-5,-5},{-5,-15},{15,-15},{15,5},{5,5},{5,15}}\n    -- Pick a safe one-yalm position circle; party proximity only breaks safe-position ties.\n    function s.fafnirSpot(ms, spell, p)\n        local party=TensorCore.getEntityGroupList(\"Party\")\n        local bestScore,bestX,bestZ=-math.huge,nil,nil\n        for i=0,71 do\n            local a=i*math.pi/36\n            local radius=spell==41116 and 27 or 11\n            local x,z=p.x+radius*math.sin(a),p.z+radius*math.cos(a)\n            local safe=(x+500)^2+(z-600)^2<28.5^2\n            if spell==41114 then safe=safe and math.cos(a-p.h)<-math.cos(math.pi/5) end\n            if safe then\n                local score=-(x+500)*0.1\n                for _,e in pairs(party) do\n                    if e.alive and (e.pos.x-x)^2+(e.pos.z-z)^2<36 then score=score+1 end\n                end\n                if score>bestScore then bestScore,bestX,bestZ=score,x,z end\n            end\n        end\n        if bestX then s.safePoint(ms,bestX,p.y,bestZ,2) end\n    end\nend\n\nlocal player=TensorCore.mGetPlayer()\nif not player or eventArgs.entityID~=player.id then self.used=true; return end\nlocal id=eventArgs.buffID\nlocal cid,name,color\nif id==4192 then cid,name,color=13643,\"Red\",0xFF3030FF\nelseif id==4194 then cid,name,color=13641,\"Yellow\",0xFF00FFFF\nelseif id==4196 then cid,name,color=13642,\"Blue\",0xFFFF9040\nelse self.used=true; return end\nlocal s=data.jacobJeunoDraws\nlocal target=TensorCore.getEntityByGroup(\"ContentID\",{contentid=cid,subgroup=\"Nearest\"})\nif not target then return end\ns.remove(s.assignmentCircle)\nlocal ms=eventArgs.buffDuration*1000\nif ms<=0 then ms=600000 end\ns.assignmentUntil=Now()+ms\ns.assignmentBuff=id; s.assignmentName=name; s.assignmentColor=color; s.assignmentTarget=target.id; s.labelAt=0\nlocal drawer=TensorCore.getCachedDrawer(color%0x1000000+0x20000000,nil,color%0x1000000+0x40000000,color,2)\ns.assignmentCircle=s.own(drawer:addTimedCircleOnEnt(ms,target.id,3.5,0,false,true),s.assignmentUntil,nil,3)\nself.used=true\n",
						conditions = 
						{
							
							{
								"e8dd0f36-b491-b86f-8058-d955f4a951d1",
								true,
							},
							
							{
								"8ebd4a71-b767-0e99-80dd-c34ae7b4be13",
								true,
							},
							
							{
								"142b948e-06e1-91f0-b438-f3e5b6c196dd",
								true,
							},
						},
						name = "[Ark Angels draws] Yellow label and focus marker",
						uuid = "4f91ac1d-7092-8783-a58f-e2fe99e816bf",
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
						localmapid = 1248,
						name = "Jeuno only",
						uuid = "e8dd0f36-b491-b86f-8058-d955f4a951d1",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventBuffID = 4194,
						name = "Yellow assignment applied",
						uuid = "8ebd4a71-b767-0e99-80dd-c34ae7b4be13",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer(); return p~=nil and eventArgs.entityID==p.id",
						dequeueIfLuaFalse = true,
						name = "Assignment applied to me",
						uuid = "142b948e-06e1-91f0-b438-f3e5b6c196dd",
						version = 3,
					},
				},
			},
			displayPath = "Jeuno/Ark Angels/Draws",
			eventType = 8,
			name = "[Ark Angels draws] Yellow label and focus marker",
			uuid = "f678634f-30ed-427a-9c5a-d7ca05fcd75e",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Pull-scoped helpers. BossMod geometry; native 1248 logs corroborate IDs/timing.\nif data.jacobJeunoDraws == nil then\n    local s = { shapes = {}, holy = {}, exa = {}, holyUntil = 0, upperUntil = 0, assignmentUntil = 0 }\n    data.jacobJeunoDraws = s\n    s.green = TensorCore.getCachedDrawer(0x3000FF00, nil, 0x5000FF00, 0xFF00FF00, 2)\n    s.red = TensorCore.getCachedDrawer(0x300000FF, nil, 0x500000FF, 0xFF0000FF, 2)\n    s.line = TensorCore.getStaticDrawer(0xFF00FF00, 2)\n    s.aoe = TensorCore.getMoogleDrawer()\n    function s.own(uuid, deadline, caster, boss)\n        if uuid then s.shapes[uuid] = {deadline = deadline, caster = caster, boss = boss} end\n        return uuid\n    end\n    function s.remove(uuid)\n        if uuid then Argus.deleteTimedShape(uuid); s.shapes[uuid] = nil end\n    end\n    function s.cleanup()\n        for uuid in pairs(s.shapes) do Argus.deleteTimedShape(uuid) end\n        s.shapes = {}; s.holy = {}; s.exa = {}\n        s.holyUntil = 0; s.upperUntil = 0; s.assignmentUntil = 0; s.exaUntil = 0\n    end\n    function s.timer(ms, x, y, z)\n        AnyoneCore.addWorldTextCountdown(ms, {x=x,y=y+1,z=z}, 0xFFFFFFFF, true, 1.3)\n    end\n    function s.drawCircle(ms, p, radius, caster, boss)\n        return s.own(s.aoe:addTimedCircle(ms,p.x,p.y,p.z,radius),Now()+ms,caster,boss)\n    end\n    function s.safePoint(ms, x, y, z, boss)\n        s.own(s.green:addTimedCircle(ms,x,y,z,1,0,false,true),Now()+ms,nil,boss)\n    end\n    function s.inside(poly,dx,dz)\n            local yes=false\n            local j=#poly\n            for i=1,#poly do\n                local a,b=poly[i],poly[j]\n                if (a[2]>dz)~=(b[2]>dz) and dx<(b[1]-a[1])*(dz-a[2])/(b[2]-a[2])+a[1] then yes=not yes end\n                j=i\n            end\n            return yes\n    end\n    function s.upperUnsafe(x,z)\n        local dx,dz=x-800,z-400\n        if math.abs(dx)>35 or math.abs(dz)>35 then return true end\n        if not s.thornsUntil or Now()>s.thornsUntil then return false end\n        if s.thornsRotated then dx,dz=-dz,dx end\n        return s.inside(s.thornOuter,dx,dz) and not s.inside(s.thornHole,dx,dz)\n    end\n    s.thornOuter={{-35,35},{-35,-5},{-25,-5},{-25,-25},{5,-25},{5,-35},{35,-35},{35,5},{25,5},{25,25},{-5,25},{-5,35}}\n    s.thornHole={{-15,15},{-15,-5},{-5,-5},{-5,-15},{15,-15},{15,5},{5,5},{5,15}}\n    -- Pick a safe one-yalm position circle; party proximity only breaks safe-position ties.\n    function s.fafnirSpot(ms, spell, p)\n        local party=TensorCore.getEntityGroupList(\"Party\")\n        local bestScore,bestX,bestZ=-math.huge,nil,nil\n        for i=0,71 do\n            local a=i*math.pi/36\n            local radius=spell==41116 and 27 or 11\n            local x,z=p.x+radius*math.sin(a),p.z+radius*math.cos(a)\n            local safe=(x+500)^2+(z-600)^2<28.5^2\n            if spell==41114 then safe=safe and math.cos(a-p.h)<-math.cos(math.pi/5) end\n            if safe then\n                local score=-(x+500)*0.1\n                for _,e in pairs(party) do\n                    if e.alive and (e.pos.x-x)^2+(e.pos.z-z)^2<36 then score=score+1 end\n                end\n                if score>bestScore then bestScore,bestX,bestZ=score,x,z end\n            end\n        end\n        if bestX then s.safePoint(ms,bestX,p.y,bestZ,2) end\n    end\nend\n\nlocal player=TensorCore.mGetPlayer()\nif not player or eventArgs.entityID~=player.id then self.used=true; return end\nlocal id=eventArgs.buffID\nlocal cid,name,color\nif id==4192 then cid,name,color=13643,\"Red\",0xFF3030FF\nelseif id==4194 then cid,name,color=13641,\"Yellow\",0xFF00FFFF\nelseif id==4196 then cid,name,color=13642,\"Blue\",0xFFFF9040\nelse self.used=true; return end\nlocal s=data.jacobJeunoDraws\nlocal target=TensorCore.getEntityByGroup(\"ContentID\",{contentid=cid,subgroup=\"Nearest\"})\nif not target then return end\ns.remove(s.assignmentCircle)\nlocal ms=eventArgs.buffDuration*1000\nif ms<=0 then ms=600000 end\ns.assignmentUntil=Now()+ms\ns.assignmentBuff=id; s.assignmentName=name; s.assignmentColor=color; s.assignmentTarget=target.id; s.labelAt=0\nlocal drawer=TensorCore.getCachedDrawer(color%0x1000000+0x20000000,nil,color%0x1000000+0x40000000,color,2)\ns.assignmentCircle=s.own(drawer:addTimedCircleOnEnt(ms,target.id,3.5,0,false,true),s.assignmentUntil,nil,3)\nself.used=true\n",
						conditions = 
						{
							
							{
								"0ad56755-552d-07d4-bd10-16ed85c12513",
								true,
							},
							
							{
								"57a179d9-4d4d-4249-99df-08cf22eb3f92",
								true,
							},
							
							{
								"184b73a1-201a-8aba-a910-8684aab82a5b",
								true,
							},
						},
						name = "[Ark Angels draws] Blue label and focus marker",
						uuid = "1ed69c88-944e-2905-9ebd-600789e5be76",
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
						localmapid = 1248,
						name = "Jeuno only",
						uuid = "0ad56755-552d-07d4-bd10-16ed85c12513",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventBuffID = 4196,
						name = "Blue assignment applied",
						uuid = "57a179d9-4d4d-4249-99df-08cf22eb3f92",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer(); return p~=nil and eventArgs.entityID==p.id",
						dequeueIfLuaFalse = true,
						name = "Assignment applied to me",
						uuid = "184b73a1-201a-8aba-a910-8684aab82a5b",
						version = 3,
					},
				},
			},
			displayPath = "Jeuno/Ark Angels/Draws",
			eventType = 8,
			name = "[Ark Angels draws] Blue label and focus marker",
			uuid = "e0cf20d0-3a04-ce03-9f94-c7dda253bde1",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal api = TensorCore.API.TensorACR\n-- only ACRs with a DoT blacklist (for example BLM, BRD, SAM) provide these functions\nif not (api and api.addBlacklistEntry and api.saveDotBlacklist) then return end\nlocal entry = api.addBlacklistEntry(13719, \"Ark Shield\")\nif entry and (not entry.enabled or entry.allowIfTarget or entry.allowSmartDoT) then\n    entry.enabled = true\n    entry.allowIfTarget = false\n    entry.allowSmartDoT = false\n    api.saveDotBlacklist()\nend",
						conditions = 
						{
							
							{
								"12903575-fb43-1f14-8629-479ebd37282a",
								true,
							},
						},
						name = "Block direct and Smart DoT on Ark Shield",
						uuid = "76bef289-910f-3259-bcff-9b8155bdfa5d",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if eventArgs.entityContentID ~= 13719 then return false end\nlocal player = TensorCore.mGetPlayer()\nreturn player ~= nil and player.localmapid == 1248",
						dequeueIfLuaFalse = true,
						name = "Ark Shield spawned in Jeuno",
						uuid = "12903575-fb43-1f14-8629-479ebd37282a",
						version = 3,
					},
				},
			},
			displayPath = "Jeuno/Ark Angels",
			eventType = 5,
			name = "[Jeuno] Ark Shield - DoT blacklist",
			timeout = 2,
			uuid = "34d1460b-88bc-e708-a0fd-ff4d283f602d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Jeuno",
			name = "Safeguards",
			uuid = "074c6781-0bd7-4fb1-bb80-2adaa9cce9b4",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Native event capture; simultaneous sources share one short-lived controller.\ndata.jeunoGazes=data.jeunoGazes or {}\ndata.jeunoGazes[eventArgs.entityID]={spell=eventArgs.spellID,started=Now(),deadline=Now()+eventArgs.channelTimeMax*1000+250}\nself.used=true",
						conditions = 
						{
							
							{
								"a13cf415-a615-64ea-8914-b8d6c61b7e80",
								true,
							},
							
							{
								"1f3613f3-a82b-40c5-89b9-a21a6000d6c7",
								true,
							},
							
							{
								"72fe2e5f-6edd-bf07-9994-66c9f0c299d1",
								true,
							},
						},
						name = "Track gaze deadline once",
						uuid = "f36cbad0-0990-7d4a-a2bd-40c61667b0c9",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Alert",
						alertDuration = 2500,
						alertPriority = 2,
						alertText = "Look away",
						conditions = 
						{
							
							{
								"a13cf415-a615-64ea-8914-b8d6c61b7e80",
								true,
							},
							
							{
								"1f3613f3-a82b-40c5-89b9-a21a6000d6c7",
								true,
							},
							
							{
								"72fe2e5f-6edd-bf07-9994-66c9f0c299d1",
								true,
							},
							
							{
								"334f4ec1-4b18-6865-9c3e-068ae367114b",
								true,
							},
						},
						uuid = "8f8bace7-9d6c-fada-96ec-01fcf246b163",
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
						localmapid = 1248,
						name = "Jeuno only",
						uuid = "a13cf415-a615-64ea-8914-b8d6c61b7e80",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 41667,
						name = "Exact cast",
						uuid = "1f3613f3-a82b-40c5-89b9-a21a6000d6c7",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 13606,
						name = "Exact caster",
						uuid = "72fe2e5f-6edd-bf07-9994-66c9f0c299d1",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local g=data.jeunoGazes and data.jeunoGazes[eventArgs.entityID]\nreturn g~=nil and g.deadline-Now()<=2250 and g.deadline>Now()",
						name = "Call out before gaze resolves",
						uuid = "334f4ec1-4b18-6865-9c3e-068ae367114b",
						version = 3,
					},
				},
			},
			displayPath = "Jeuno/Safeguards",
			eventType = 3,
			name = "[Jeuno gaze] Sprinkler Mysterious Light",
			timeout = 9,
			uuid = "1ad59d1e-73da-aa07-be40-6d50779dfb5d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Native event capture; simultaneous sources share one short-lived controller.\ndata.jeunoGazes=data.jeunoGazes or {}\ndata.jeunoGazes[eventArgs.entityID]={spell=eventArgs.spellID,started=Now(),deadline=Now()+eventArgs.channelTimeMax*1000+250}\nself.used=true",
						conditions = 
						{
							
							{
								"32154d88-08c5-061e-a8b5-148b9ece049a",
								true,
							},
							
							{
								"094e1e03-cdda-be9f-95cb-0550d973c96b",
								true,
							},
							
							{
								"0798fe15-008b-4638-81df-30028dedc066",
								true,
							},
						},
						name = "Track gaze deadline once",
						uuid = "ed7748ef-1565-fe02-81e1-8ca72cce1f40",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Alert",
						alertDuration = 2500,
						alertPriority = 2,
						alertText = "Look away",
						conditions = 
						{
							
							{
								"32154d88-08c5-061e-a8b5-148b9ece049a",
								true,
							},
							
							{
								"094e1e03-cdda-be9f-95cb-0550d973c96b",
								true,
							},
							
							{
								"0798fe15-008b-4638-81df-30028dedc066",
								true,
							},
							
							{
								"05b4123a-7a72-e526-91f1-5ed41629af79",
								true,
							},
						},
						uuid = "7d4a7953-68c2-5238-acf9-56cdca432bf0",
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
						localmapid = 1248,
						name = "Jeuno only",
						uuid = "32154d88-08c5-061e-a8b5-148b9ece049a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 41082,
						name = "Exact cast",
						uuid = "094e1e03-cdda-be9f-95cb-0550d973c96b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 13641,
						name = "Exact caster",
						uuid = "0798fe15-008b-4638-81df-30028dedc066",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local g=data.jeunoGazes and data.jeunoGazes[eventArgs.entityID]\nreturn g~=nil and g.deadline-Now()<=2250 and g.deadline>Now()",
						name = "Call out before gaze resolves",
						uuid = "05b4123a-7a72-e526-91f1-5ed41629af79",
						version = 3,
					},
				},
			},
			displayPath = "Jeuno/Safeguards",
			eventType = 3,
			name = "[Jeuno gaze] Ark Angels Gekko",
			timeout = 9,
			uuid = "744d1b5d-b0b3-f88a-99cc-134b4955b8a6",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local pending=data.jeunoGazes\nlocal A=TensorCore.API.TensorACR\nlocal p=TensorCore.mGetPlayer()\nlocal now=Now()\nlocal angles={}\nlocal remaining=false\nfor id,g in pairs(pending) do\n local e=TensorCore.mGetEntity(id)\n local interrupted=e and now-g.started>500 and now<g.deadline-400 and e.castinginfo.channelingid~=g.spell and e.castinginfo.castingid~=g.spell\n if not p or p.localmapid~=1248 or not p.alive or not e or now>=g.deadline or interrupted then\n  pending[id]=nil\n else\n  remaining=true\n  if g.deadline-now<=1650 then\n   angles[#angles+1]=TensorCore.getHeadingToTarget(p.pos,e.pos)\n  end\n end\nend\nif #angles>0 then\n -- Minimize the worst facing dot product, accounting for overlapping gazes.\n local heading,best=0,math.huge\n for i=0,63 do\n  local h=i*math.pi/32\n  local worst=-math.huge\n  for j=1,#angles do worst=math.max(worst,math.cos(h-angles[j])) end\n  if worst<best then best=worst;heading=h end\n end\n A.setLockFaceHeading(heading)\n A.setHardLockFace(true)\n A.toggleLockFace(true)\n data.jeunoGazeOwnsLock=true\nelseif data.jeunoGazeOwnsLock then\n A.toggleLockFace(false)\n A.setHardLockFace(false)\n data.jeunoGazeOwnsLock=nil\nend\nif not remaining then data.jeunoGazes=nil;self.used=true end",
						conditions = 
						{
							
							{
								"5b1eac14-f45e-e06b-8646-d0a1a6281498",
								true,
							},
						},
						name = "Maintain short gaze lock; release automatically",
						uuid = "63d3c270-7054-7359-8711-b07107b01a28",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.jeunoGazes~=nil",
						dequeueIfLuaFalse = true,
						name = "Only while a captured gaze exists",
						uuid = "5b1eac14-f45e-e06b-8646-d0a1a6281498",
						version = 3,
					},
				},
			},
			displayPath = "Jeuno/Safeguards",
			name = "[Jeuno gaze] Face away during gaze snapshots",
			timeout = 15,
			uuid = "7e2fc9af-bf6b-2c26-aee0-0f9586dfb68d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if true then\n TensorCore.API.TensorACR.toggleLockFace(false)\n TensorCore.API.TensorACR.setHardLockFace(false)\nend\ndata.jeunoGazeOwnsLock=nil\ndata.jeunoGazes=nil\nself.used=true",
						conditions = 
						{
							
							{
								"5bee5e45-b4f7-fa56-8532-68b5a698c970",
								true,
							},
						},
						name = "Release owned gaze state",
						uuid = "4460538b-7e99-e54f-8801-3e8b128b50c8",
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
						localmapid = 1248,
						name = "Jeuno only",
						uuid = "5bee5e45-b4f7-fa56-8532-68b5a698c970",
						version = 3,
					},
				},
			},
			displayPath = "Jeuno/Safeguards",
			eventType = 9,
			name = "[Jeuno gaze] Release on Wipe",
			uuid = "0755bf94-5d7e-9b66-9e3f-bba64b3a215c",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if true then\n TensorCore.API.TensorACR.toggleLockFace(false)\n TensorCore.API.TensorACR.setHardLockFace(false)\nend\ndata.jeunoGazeOwnsLock=nil\ndata.jeunoGazes=nil\nself.used=true",
						conditions = 
						{
							
							{
								"44850bac-04ca-8807-bc14-4084cb3e40e8",
								true,
							},
						},
						name = "Release owned gaze state",
						uuid = "db3d7f64-3d84-4939-876e-a28f5eaa6da2",
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
						localmapid = 1248,
						name = "Jeuno only",
						uuid = "44850bac-04ca-8807-bc14-4084cb3e40e8",
						version = 3,
					},
				},
			},
			displayPath = "Jeuno/Safeguards",
			eventType = 10,
			name = "[Jeuno gaze] Release on Death",
			uuid = "74a20b76-5416-e6c3-99cf-4199abd687da",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if data.jeunoGazeOwnsLock then\n TensorCore.API.TensorACR.toggleLockFace(false)\n TensorCore.API.TensorACR.setHardLockFace(false)\nend\ndata.jeunoGazeOwnsLock=nil\ndata.jeunoGazes=nil\nself.used=true",
						conditions = 
						{
							
							{
								"de15ce63-778c-7704-8941-62e37564ee77",
								true,
							},
						},
						name = "Release owned gaze state",
						uuid = "2053eb58-2173-2a0e-a4fa-c4bf4cc3322c",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.jeunoGazeOwnsLock==true or data.jeunoGazes~=nil",
						dequeueIfLuaFalse = true,
						name = "Owned Jeuno gaze only",
						uuid = "de15ce63-778c-7704-8941-62e37564ee77",
						version = 3,
					},
				},
			},
			displayPath = "Jeuno/Safeguards",
			eventType = 11,
			name = "[Jeuno gaze] Release on MapChange",
			uuid = "14ff6a00-14bc-355a-aa52-35841957de95",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Jeuno",
			name = "Fafnir",
			uuid = "0a538c59-40db-89a2-b833-57635d978c73",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Jeuno/Fafnir",
			name = "Targeting",
			uuid = "165f0808-0e46-abc6-90eb-4da7ba26af6d",
		},
		objectType = "folder",
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
								"85c34d2c-2d44-fd5d-83ee-20d511a2f044",
								true,
							},
							
							{
								"e5574a56-0e48-d33a-9fe2-546d9fb34360",
								true,
							},
							
							{
								"d89df436-cb55-bda6-b2f2-ecf2edba052b",
								true,
							},
							
							{
								"fd7fb244-f173-ca87-b526-fe1e00107eff",
								true,
							},
							
							{
								"17ee831d-efa6-974e-9be2-a98285678306",
								true,
							},
						},
						endIfUsed = true,
						name = "Target healthy Darter",
						setTarget = true,
						targetType = "Detection Target",
						uuid = "3c17d43b-082b-aeba-bb26-30fa9f53d38d",
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
								"85c34d2c-2d44-fd5d-83ee-20d511a2f044",
								true,
							},
							
							{
								"e5574a56-0e48-d33a-9fe2-546d9fb34360",
								true,
							},
							
							{
								"d89df436-cb55-bda6-b2f2-ecf2edba052b",
								true,
							},
							
							{
								"fd7fb244-f173-ca87-b526-fe1e00107eff",
								true,
							},
							
							{
								"3d37a7fa-4f10-9217-9a90-3b8dbf7d2dbe",
								true,
							},
						},
						endIfUsed = true,
						name = "Target Fafnir if adds are dying",
						setTarget = true,
						targetType = "Detection Target",
						uuid = "2080fc20-3f0d-0054-8a47-2276cb7a389f",
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
						localmapid = 1248,
						name = "Jeuno only",
						uuid = "85c34d2c-2d44-fd5d-83ee-20d511a2f044",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 2,
						contentid = 13665,
						name = "Currently targeting Darter",
						uuid = "e5574a56-0e48-d33a-9fe2-546d9fb34360",
						version = 3,
					},
				},
				
				{
					data = 
					{
						comparator = 2,
						conditionType = 3,
						hpValue = 15,
						name = "Retarget below 15% HP - adjustable",
						uuid = "d89df436-cb55-bda6-b2f2-ecf2edba052b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn p and p.castinginfo.castingid<=0 and p.castinginfo.channelingid<=0",
						name = "Finish current cast first",
						uuid = "fd7fb244-f173-ca87-b526-fe1e00107eff",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						conditionType = 2,
						hpValue = 25,
						name = "Replacement add at least 25% HP",
						partyTargetType = "Detection Target",
						uuid = "0ec42092-e7dc-55b1-bc12-91f31dc90714",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 25,
						name = "Replacement within 25 yalms",
						partyTargetType = "Detection Target",
						uuid = "b8d1af4e-8e1c-1f3f-af36-7e98f4d1b240",
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
								"0ec42092-e7dc-55b1-bc12-91f31dc90714",
								true,
							},
							
							{
								"b8d1af4e-8e1c-1f3f-af36-7e98f4d1b240",
								true,
							},
						},
						filterTargetSubtype = "Highest HP",
						filterTargetType = "ContentID",
						name = "Healthiest living Darter",
						partyTargetContentID = 13665,
						uuid = "17ee831d-efa6-974e-9be2-a98285678306",
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
								"b8d1af4e-8e1c-1f3f-af36-7e98f4d1b240",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Fafnir fallback",
						partyTargetContentID = 13662,
						uuid = "3d37a7fa-4f10-9217-9a90-3b8dbf7d2dbe",
						version = 3,
					},
				},
			},
			displayPath = "Jeuno/Fafnir/Targeting",
			name = "[Fafnir] Avoid dying Darter targets",
			uuid = "c38372af-189f-5897-89e6-757ff068a3d0",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Jeuno/Fafnir",
			name = "Draws",
			uuid = "2fa7d7b0-fdc9-c7b8-b902-ee5299e45efc",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Pull-scoped helpers. BossMod geometry; native 1248 logs corroborate IDs/timing.\nif data.jacobJeunoDraws == nil then\n    local s = { shapes = {}, holy = {}, exa = {}, holyUntil = 0, upperUntil = 0, assignmentUntil = 0 }\n    data.jacobJeunoDraws = s\n    s.green = TensorCore.getCachedDrawer(0x3000FF00, nil, 0x5000FF00, 0xFF00FF00, 2)\n    s.red = TensorCore.getCachedDrawer(0x300000FF, nil, 0x500000FF, 0xFF0000FF, 2)\n    s.line = TensorCore.getStaticDrawer(0xFF00FF00, 2)\n    s.aoe = TensorCore.getMoogleDrawer()\n    function s.own(uuid, deadline, caster, boss)\n        if uuid then s.shapes[uuid] = {deadline = deadline, caster = caster, boss = boss} end\n        return uuid\n    end\n    function s.remove(uuid)\n        if uuid then Argus.deleteTimedShape(uuid); s.shapes[uuid] = nil end\n    end\n    function s.cleanup()\n        for uuid in pairs(s.shapes) do Argus.deleteTimedShape(uuid) end\n        s.shapes = {}; s.holy = {}; s.exa = {}\n        s.holyUntil = 0; s.upperUntil = 0; s.assignmentUntil = 0; s.exaUntil = 0\n    end\n    function s.timer(ms, x, y, z)\n        AnyoneCore.addWorldTextCountdown(ms, {x=x,y=y+1,z=z}, 0xFFFFFFFF, true, 1.3)\n    end\n    function s.drawCircle(ms, p, radius, caster, boss)\n        return s.own(s.aoe:addTimedCircle(ms,p.x,p.y,p.z,radius),Now()+ms,caster,boss)\n    end\n    function s.safePoint(ms, x, y, z, boss)\n        s.own(s.green:addTimedCircle(ms,x,y,z,1,0,false,true),Now()+ms,nil,boss)\n    end\n    function s.inside(poly,dx,dz)\n            local yes=false\n            local j=#poly\n            for i=1,#poly do\n                local a,b=poly[i],poly[j]\n                if (a[2]>dz)~=(b[2]>dz) and dx<(b[1]-a[1])*(dz-a[2])/(b[2]-a[2])+a[1] then yes=not yes end\n                j=i\n            end\n            return yes\n    end\n    function s.upperUnsafe(x,z)\n        local dx,dz=x-800,z-400\n        if math.abs(dx)>35 or math.abs(dz)>35 then return true end\n        if not s.thornsUntil or Now()>s.thornsUntil then return false end\n        if s.thornsRotated then dx,dz=-dz,dx end\n        return s.inside(s.thornOuter,dx,dz) and not s.inside(s.thornHole,dx,dz)\n    end\n    s.thornOuter={{-35,35},{-35,-5},{-25,-5},{-25,-25},{5,-25},{5,-35},{35,-35},{35,5},{25,5},{25,25},{-5,25},{-5,35}}\n    s.thornHole={{-15,15},{-15,-5},{-5,-5},{-5,-15},{15,-15},{15,5},{5,5},{5,15}}\n    -- Pick a safe one-yalm position circle; party proximity only breaks safe-position ties.\n    function s.fafnirSpot(ms, spell, p)\n        local party=TensorCore.getEntityGroupList(\"Party\")\n        local bestScore,bestX,bestZ=-math.huge,nil,nil\n        for i=0,71 do\n            local a=i*math.pi/36\n            local radius=spell==41116 and 27 or 11\n            local x,z=p.x+radius*math.sin(a),p.z+radius*math.cos(a)\n            local safe=(x+500)^2+(z-600)^2<28.5^2\n            if spell==41114 then safe=safe and math.cos(a-p.h)<-math.cos(math.pi/5) end\n            if safe then\n                local score=-(x+500)*0.1\n                for _,e in pairs(party) do\n                    if e.alive and (e.pos.x-x)^2+(e.pos.z-z)^2<36 then score=score+1 end\n                end\n                if score>bestScore then bestScore,bestX,bestZ=score,x,z end\n            end\n        end\n        if bestX then s.safePoint(ms,bestX,p.y,bestZ,2) end\n    end\nend\n\nlocal id=eventArgs.spellID\nlocal cid=eventArgs.entityContentID\nlocal boss\nif cid==13351 or cid==13352 then boss=1\nelseif cid==13662 then boss=2\nelseif cid==13641 or cid==13642 or cid==13643 or cid==13644 or cid==13645 then boss=3\nelse self.used=true; return end\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e then return end\nlocal p=e.pos\n-- Argus channelTimeMax in native logs is 0.3s shorter than the actual cast.\nlocal ms=math.max(1,(eventArgs.channelTimeMax+0.3)*1000)\nlocal deadline=Now()+ms\nlocal s=data.jacobJeunoDraws\nif boss==1 then\n    if id==40946 then\n        s.exaUntil=Now()+35000\n    elseif id>=40939 and id<=40941 then\n        local r=(id-40938)*9\n        s.drawCircle(ms,p,r,e.id,1)\n        s.knuckle={x=p.x,y=p.y,z=p.z,radius=r,deadline=deadline}\n        AnyoneCore.addTimedWorldText(ms,\"OUT > IN\",{x=p.x,y=p.y+2,z=p.z},0xFFFFFFFF,true,1.7)\n    elseif id>=40942 and id<=40944 then\n        local r=(id-40941)*9\n        -- Donut starts only after the first hit. Keep the first safe region readable.\n        s.own(s.aoe:addTimedDonut(ms,p.x,p.y,p.z,r,60,math.max(0,ms-1500)),deadline,e.id,1)\n    elseif id==40963 then\n        local t=TensorCore.mGetEntity(eventArgs.targetID)\n        if t then\n            local old=s.holy[t.id]\n            if old then s.remove(old.uuid) end\n            s.holy[t.id]={id=t.id,deadline=deadline,color=true,uuid=s.own(s.red:addTimedCircleOnEnt(ms,t.id,6,0,false,true),deadline,e.id,1)}\n            s.holyUntil=math.max(s.holyUntil,deadline)\n        end\n    elseif id>=40950 and id<=40952 then\n        s.remove(s.upperLine); s.remove(s.upperCircle)\n        s.upperDistance=(id-40949)*12\n        s.upperUntil=deadline+1400\n        s.upperCaster=e.id\n        s.upperLine=nil; s.upperCircle=nil; s.upperColor=nil\n    elseif id==40955 then\n        s.timer(ms,p.x,p.y,p.z)\n    end\nelseif boss==2 then\n    if id==41114 then\n        s.own(s.aoe:addTimedCone(ms,p.x,p.y,p.z,80,math.pi*1.5,p.h),deadline,e.id,2)\n        s.timer(ms,p.x,p.y,p.z)\n        s.fafnirSpot(ms,id,p)\n    elseif id==41116 then\n        s.drawCircle(ms,p,24,e.id,2)\n        s.timer(ms,p.x,p.y,p.z)\n        s.fafnirSpot(ms,id,p)\n    elseif id==40814 then\n        -- The six 60-degree sectors form the initial 16..30 donut.\n        -- Moogle already shows the individual lingering sectors; do not overdraw them.\n        ms=ms+1200\n        s.timer(ms,p.x,p.y,p.z)\n        s.fafnirSpot(ms,id,p)\n    elseif id==40846 or id==40848 then\n        local width=id==40846 and 20 or 25\n        s.own(s.aoe:addTimedRect(ms,p.x,p.y,p.z,70,width,p.h),deadline,e.id,2)\n        s.timer(ms,p.x+18*math.sin(p.h),p.y,p.z+18*math.cos(p.h))\n    elseif id==40850 then\n        s.timer(ms,p.x,p.y,p.z)\n    end\nelseif id==41084 then\n    -- Concerted Dissolution: timer at the helper; existing telegraph keeps its styling.\n    s.timer(ms,p.x,p.y,p.z)\nend\nself.used=true\n",
						conditions = 
						{
							
							{
								"2f03777a-fba1-91f2-893c-3bd3f583f78d",
								true,
							},
							
							{
								"f9095633-802f-fb6f-8d55-ccb9a2ed5164",
								true,
							},
						},
						name = "[Fafnir draws] Cleaves, Offensive Posture and countdowns",
						uuid = "e4ed6d0f-d6c1-6460-9c4c-09b1c632765e",
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
						localmapid = 1248,
						name = "Jeuno only",
						uuid = "2f03777a-fba1-91f2-893c-3bd3f583f78d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 3,
						eventArgType = 2,
						name = "Matching mechanic cast",
						spellIDList = 
						{
							41114,
							41116,
							40814,
							40846,
							40848,
						},
						uuid = "f9095633-802f-fb6f-8d55-ccb9a2ed5164",
						version = 3,
					},
				},
			},
			displayPath = "Jeuno/Fafnir/Draws",
			eventType = 3,
			name = "[Fafnir draws] Cleaves, Offensive Posture and countdowns",
			timeout = 2,
			uuid = "9d47679b-b5a0-1a81-a630-b2ebb6ea288b",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Pull-scoped helpers. BossMod geometry; native 1248 logs corroborate IDs/timing.\nif data.jacobJeunoDraws == nil then\n    local s = { shapes = {}, holy = {}, exa = {}, holyUntil = 0, upperUntil = 0, assignmentUntil = 0 }\n    data.jacobJeunoDraws = s\n    s.green = TensorCore.getCachedDrawer(0x3000FF00, nil, 0x5000FF00, 0xFF00FF00, 2)\n    s.red = TensorCore.getCachedDrawer(0x300000FF, nil, 0x500000FF, 0xFF0000FF, 2)\n    s.line = TensorCore.getStaticDrawer(0xFF00FF00, 2)\n    s.aoe = TensorCore.getMoogleDrawer()\n    function s.own(uuid, deadline, caster, boss)\n        if uuid then s.shapes[uuid] = {deadline = deadline, caster = caster, boss = boss} end\n        return uuid\n    end\n    function s.remove(uuid)\n        if uuid then Argus.deleteTimedShape(uuid); s.shapes[uuid] = nil end\n    end\n    function s.cleanup()\n        for uuid in pairs(s.shapes) do Argus.deleteTimedShape(uuid) end\n        s.shapes = {}; s.holy = {}; s.exa = {}\n        s.holyUntil = 0; s.upperUntil = 0; s.assignmentUntil = 0; s.exaUntil = 0\n    end\n    function s.timer(ms, x, y, z)\n        AnyoneCore.addWorldTextCountdown(ms, {x=x,y=y+1,z=z}, 0xFFFFFFFF, true, 1.3)\n    end\n    function s.drawCircle(ms, p, radius, caster, boss)\n        return s.own(s.aoe:addTimedCircle(ms,p.x,p.y,p.z,radius),Now()+ms,caster,boss)\n    end\n    function s.safePoint(ms, x, y, z, boss)\n        s.own(s.green:addTimedCircle(ms,x,y,z,1,0,false,true),Now()+ms,nil,boss)\n    end\n    function s.inside(poly,dx,dz)\n            local yes=false\n            local j=#poly\n            for i=1,#poly do\n                local a,b=poly[i],poly[j]\n                if (a[2]>dz)~=(b[2]>dz) and dx<(b[1]-a[1])*(dz-a[2])/(b[2]-a[2])+a[1] then yes=not yes end\n                j=i\n            end\n            return yes\n    end\n    function s.upperUnsafe(x,z)\n        local dx,dz=x-800,z-400\n        if math.abs(dx)>35 or math.abs(dz)>35 then return true end\n        if not s.thornsUntil or Now()>s.thornsUntil then return false end\n        if s.thornsRotated then dx,dz=-dz,dx end\n        return s.inside(s.thornOuter,dx,dz) and not s.inside(s.thornHole,dx,dz)\n    end\n    s.thornOuter={{-35,35},{-35,-5},{-25,-5},{-25,-25},{5,-25},{5,-35},{35,-35},{35,5},{25,5},{25,25},{-5,25},{-5,35}}\n    s.thornHole={{-15,15},{-15,-5},{-5,-5},{-5,-15},{15,-15},{15,5},{5,5},{5,15}}\n    -- Pick a safe one-yalm position circle; party proximity only breaks safe-position ties.\n    function s.fafnirSpot(ms, spell, p)\n        local party=TensorCore.getEntityGroupList(\"Party\")\n        local bestScore,bestX,bestZ=-math.huge,nil,nil\n        for i=0,71 do\n            local a=i*math.pi/36\n            local radius=spell==41116 and 27 or 11\n            local x,z=p.x+radius*math.sin(a),p.z+radius*math.cos(a)\n            local safe=(x+500)^2+(z-600)^2<28.5^2\n            if spell==41114 then safe=safe and math.cos(a-p.h)<-math.cos(math.pi/5) end\n            if safe then\n                local score=-(x+500)*0.1\n                for _,e in pairs(party) do\n                    if e.alive and (e.pos.x-x)^2+(e.pos.z-z)^2<36 then score=score+1 end\n                end\n                if score>bestScore then bestScore,bestX,bestZ=score,x,z end\n            end\n        end\n        if bestX then s.safePoint(ms,bestX,p.y,bestZ,2) end\n    end\nend\n\nlocal id=eventArgs.spellID\nlocal cid=eventArgs.entityContentID\nlocal boss\nif cid==13351 or cid==13352 then boss=1\nelseif cid==13662 then boss=2\nelseif cid==13641 or cid==13642 or cid==13643 or cid==13644 or cid==13645 then boss=3\nelse self.used=true; return end\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e then return end\nlocal p=e.pos\n-- Argus channelTimeMax in native logs is 0.3s shorter than the actual cast.\nlocal ms=math.max(1,(eventArgs.channelTimeMax+0.3)*1000)\nlocal deadline=Now()+ms\nlocal s=data.jacobJeunoDraws\nif boss==1 then\n    if id==40946 then\n        s.exaUntil=Now()+35000\n    elseif id>=40939 and id<=40941 then\n        local r=(id-40938)*9\n        s.drawCircle(ms,p,r,e.id,1)\n        s.knuckle={x=p.x,y=p.y,z=p.z,radius=r,deadline=deadline}\n        AnyoneCore.addTimedWorldText(ms,\"OUT > IN\",{x=p.x,y=p.y+2,z=p.z},0xFFFFFFFF,true,1.7)\n    elseif id>=40942 and id<=40944 then\n        local r=(id-40941)*9\n        -- Donut starts only after the first hit. Keep the first safe region readable.\n        s.own(s.aoe:addTimedDonut(ms,p.x,p.y,p.z,r,60,math.max(0,ms-1500)),deadline,e.id,1)\n    elseif id==40963 then\n        local t=TensorCore.mGetEntity(eventArgs.targetID)\n        if t then\n            local old=s.holy[t.id]\n            if old then s.remove(old.uuid) end\n            s.holy[t.id]={id=t.id,deadline=deadline,color=true,uuid=s.own(s.red:addTimedCircleOnEnt(ms,t.id,6,0,false,true),deadline,e.id,1)}\n            s.holyUntil=math.max(s.holyUntil,deadline)\n        end\n    elseif id>=40950 and id<=40952 then\n        s.remove(s.upperLine); s.remove(s.upperCircle)\n        s.upperDistance=(id-40949)*12\n        s.upperUntil=deadline+1400\n        s.upperCaster=e.id\n        s.upperLine=nil; s.upperCircle=nil; s.upperColor=nil\n    elseif id==40955 then\n        s.timer(ms,p.x,p.y,p.z)\n    end\nelseif boss==2 then\n    if id==41114 then\n        s.own(s.aoe:addTimedCone(ms,p.x,p.y,p.z,80,math.pi*1.5,p.h),deadline,e.id,2)\n        s.timer(ms,p.x,p.y,p.z)\n        s.fafnirSpot(ms,id,p)\n    elseif id==41116 then\n        s.drawCircle(ms,p,24,e.id,2)\n        s.timer(ms,p.x,p.y,p.z)\n        s.fafnirSpot(ms,id,p)\n    elseif id==40814 then\n        -- The six 60-degree sectors form the initial 16..30 donut.\n        -- Moogle already shows the individual lingering sectors; do not overdraw them.\n        ms=ms+1200\n        s.timer(ms,p.x,p.y,p.z)\n        s.fafnirSpot(ms,id,p)\n    elseif id==40846 or id==40848 then\n        local width=id==40846 and 20 or 25\n        s.own(s.aoe:addTimedRect(ms,p.x,p.y,p.z,70,width,p.h),deadline,e.id,2)\n        s.timer(ms,p.x+18*math.sin(p.h),p.y,p.z+18*math.cos(p.h))\n    elseif id==40850 then\n        s.timer(ms,p.x,p.y,p.z)\n    end\nelseif id==41084 then\n    -- Concerted Dissolution: timer at the helper; existing telegraph keeps its styling.\n    s.timer(ms,p.x,p.y,p.z)\nend\nself.used=true\n",
						conditions = 
						{
							
							{
								"89f11380-9fd4-66bd-a1ba-7891a403a205",
								true,
							},
							
							{
								"d45fff28-5dcd-cae5-8940-9971d574eb11",
								true,
							},
						},
						name = "[Fafnir draws] Horrid Roar puddle countdowns",
						uuid = "e77bdffd-d52f-8480-939c-72c2e52568a3",
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
						localmapid = 1248,
						name = "Jeuno only",
						uuid = "89f11380-9fd4-66bd-a1ba-7891a403a205",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 3,
						eventArgType = 2,
						name = "Matching mechanic cast",
						spellIDList = 
						{
							40850,
						},
						uuid = "d45fff28-5dcd-cae5-8940-9971d574eb11",
						version = 3,
					},
				},
			},
			displayPath = "Jeuno/Fafnir/Draws",
			eventType = 3,
			name = "[Fafnir draws] Horrid Roar puddle countdowns",
			timeout = 2,
			uuid = "199f6843-131c-750d-83f0-b408635274fb",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Jeuno",
			name = "Prishe",
			uuid = "fc744ebc-bb9a-7f70-a456-0938a1bf274d",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Jeuno/Prishe",
			name = "Draws",
			uuid = "2340f995-a87d-dc15-9ad5-9563722f6563",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Pull-scoped helpers. BossMod geometry; native 1248 logs corroborate IDs/timing.\nif data.jacobJeunoDraws == nil then\n    local s = { shapes = {}, holy = {}, exa = {}, holyUntil = 0, upperUntil = 0, assignmentUntil = 0 }\n    data.jacobJeunoDraws = s\n    s.green = TensorCore.getCachedDrawer(0x3000FF00, nil, 0x5000FF00, 0xFF00FF00, 2)\n    s.red = TensorCore.getCachedDrawer(0x300000FF, nil, 0x500000FF, 0xFF0000FF, 2)\n    s.line = TensorCore.getStaticDrawer(0xFF00FF00, 2)\n    s.aoe = TensorCore.getMoogleDrawer()\n    function s.own(uuid, deadline, caster, boss)\n        if uuid then s.shapes[uuid] = {deadline = deadline, caster = caster, boss = boss} end\n        return uuid\n    end\n    function s.remove(uuid)\n        if uuid then Argus.deleteTimedShape(uuid); s.shapes[uuid] = nil end\n    end\n    function s.cleanup()\n        for uuid in pairs(s.shapes) do Argus.deleteTimedShape(uuid) end\n        s.shapes = {}; s.holy = {}; s.exa = {}\n        s.holyUntil = 0; s.upperUntil = 0; s.assignmentUntil = 0; s.exaUntil = 0\n    end\n    function s.timer(ms, x, y, z)\n        AnyoneCore.addWorldTextCountdown(ms, {x=x,y=y+1,z=z}, 0xFFFFFFFF, true, 1.3)\n    end\n    function s.drawCircle(ms, p, radius, caster, boss)\n        return s.own(s.aoe:addTimedCircle(ms,p.x,p.y,p.z,radius),Now()+ms,caster,boss)\n    end\n    function s.safePoint(ms, x, y, z, boss)\n        s.own(s.green:addTimedCircle(ms,x,y,z,1,0,false,true),Now()+ms,nil,boss)\n    end\n    function s.inside(poly,dx,dz)\n            local yes=false\n            local j=#poly\n            for i=1,#poly do\n                local a,b=poly[i],poly[j]\n                if (a[2]>dz)~=(b[2]>dz) and dx<(b[1]-a[1])*(dz-a[2])/(b[2]-a[2])+a[1] then yes=not yes end\n                j=i\n            end\n            return yes\n    end\n    function s.upperUnsafe(x,z)\n        local dx,dz=x-800,z-400\n        if math.abs(dx)>35 or math.abs(dz)>35 then return true end\n        if not s.thornsUntil or Now()>s.thornsUntil then return false end\n        if s.thornsRotated then dx,dz=-dz,dx end\n        return s.inside(s.thornOuter,dx,dz) and not s.inside(s.thornHole,dx,dz)\n    end\n    s.thornOuter={{-35,35},{-35,-5},{-25,-5},{-25,-25},{5,-25},{5,-35},{35,-35},{35,5},{25,5},{25,25},{-5,25},{-5,35}}\n    s.thornHole={{-15,15},{-15,-5},{-5,-5},{-5,-15},{15,-15},{15,5},{5,5},{5,15}}\n    -- Pick a safe one-yalm position circle; party proximity only breaks safe-position ties.\n    function s.fafnirSpot(ms, spell, p)\n        local party=TensorCore.getEntityGroupList(\"Party\")\n        local bestScore,bestX,bestZ=-math.huge,nil,nil\n        for i=0,71 do\n            local a=i*math.pi/36\n            local radius=spell==41116 and 27 or 11\n            local x,z=p.x+radius*math.sin(a),p.z+radius*math.cos(a)\n            local safe=(x+500)^2+(z-600)^2<28.5^2\n            if spell==41114 then safe=safe and math.cos(a-p.h)<-math.cos(math.pi/5) end\n            if safe then\n                local score=-(x+500)*0.1\n                for _,e in pairs(party) do\n                    if e.alive and (e.pos.x-x)^2+(e.pos.z-z)^2<36 then score=score+1 end\n                end\n                if score>bestScore then bestScore,bestX,bestZ=score,x,z end\n            end\n        end\n        if bestX then s.safePoint(ms,bestX,p.y,bestZ,2) end\n    end\nend\n\nlocal id=eventArgs.spellID\nlocal cid=eventArgs.entityContentID\nlocal boss\nif cid==13351 or cid==13352 then boss=1\nelseif cid==13662 then boss=2\nelseif cid==13641 or cid==13642 or cid==13643 or cid==13644 or cid==13645 then boss=3\nelse self.used=true; return end\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e then return end\nlocal p=e.pos\n-- Argus channelTimeMax in native logs is 0.3s shorter than the actual cast.\nlocal ms=math.max(1,(eventArgs.channelTimeMax+0.3)*1000)\nlocal deadline=Now()+ms\nlocal s=data.jacobJeunoDraws\nif boss==1 then\n    if id==40946 then\n        s.exaUntil=Now()+35000\n    elseif id>=40939 and id<=40941 then\n        local r=(id-40938)*9\n        s.drawCircle(ms,p,r,e.id,1)\n        s.knuckle={x=p.x,y=p.y,z=p.z,radius=r,deadline=deadline}\n        AnyoneCore.addTimedWorldText(ms,\"OUT > IN\",{x=p.x,y=p.y+2,z=p.z},0xFFFFFFFF,true,1.7)\n    elseif id>=40942 and id<=40944 then\n        local r=(id-40941)*9\n        -- Donut starts only after the first hit. Keep the first safe region readable.\n        s.own(s.aoe:addTimedDonut(ms,p.x,p.y,p.z,r,60,math.max(0,ms-1500)),deadline,e.id,1)\n    elseif id==40963 then\n        local t=TensorCore.mGetEntity(eventArgs.targetID)\n        if t then\n            local old=s.holy[t.id]\n            if old then s.remove(old.uuid) end\n            s.holy[t.id]={id=t.id,deadline=deadline,color=true,uuid=s.own(s.red:addTimedCircleOnEnt(ms,t.id,6,0,false,true),deadline,e.id,1)}\n            s.holyUntil=math.max(s.holyUntil,deadline)\n        end\n    elseif id>=40950 and id<=40952 then\n        s.remove(s.upperLine); s.remove(s.upperCircle)\n        s.upperDistance=(id-40949)*12\n        s.upperUntil=deadline+1400\n        s.upperCaster=e.id\n        s.upperLine=nil; s.upperCircle=nil; s.upperColor=nil\n    elseif id==40955 then\n        s.timer(ms,p.x,p.y,p.z)\n    end\nelseif boss==2 then\n    if id==41114 then\n        s.own(s.aoe:addTimedCone(ms,p.x,p.y,p.z,80,math.pi*1.5,p.h),deadline,e.id,2)\n        s.timer(ms,p.x,p.y,p.z)\n        s.fafnirSpot(ms,id,p)\n    elseif id==41116 then\n        s.drawCircle(ms,p,24,e.id,2)\n        s.timer(ms,p.x,p.y,p.z)\n        s.fafnirSpot(ms,id,p)\n    elseif id==40814 then\n        -- The six 60-degree sectors form the initial 16..30 donut.\n        -- Moogle already shows the individual lingering sectors; do not overdraw them.\n        ms=ms+1200\n        s.timer(ms,p.x,p.y,p.z)\n        s.fafnirSpot(ms,id,p)\n    elseif id==40846 or id==40848 then\n        local width=id==40846 and 20 or 25\n        s.own(s.aoe:addTimedRect(ms,p.x,p.y,p.z,70,width,p.h),deadline,e.id,2)\n        s.timer(ms,p.x+18*math.sin(p.h),p.y,p.z+18*math.cos(p.h))\n    elseif id==40850 then\n        s.timer(ms,p.x,p.y,p.z)\n    end\nelseif id==41084 then\n    -- Concerted Dissolution: timer at the helper; existing telegraph keeps its styling.\n    s.timer(ms,p.x,p.y,p.z)\nend\nself.used=true\n",
						conditions = 
						{
							
							{
								"b8088ef7-2268-9177-8015-4ca57da9600e",
								true,
							},
							
							{
								"8ea744b8-cddd-460b-9613-4c7692687945",
								true,
							},
						},
						name = "[Prishe draws] Knuckle Sandwich - OUT > IN",
						uuid = "8008806d-7d55-cdab-a7a7-42b483c2c37f",
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
						localmapid = 1248,
						name = "Jeuno only",
						uuid = "b8088ef7-2268-9177-8015-4ca57da9600e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 3,
						eventArgType = 2,
						name = "Matching mechanic cast",
						spellIDList = 
						{
							40939,
							40940,
							40941,
							40942,
							40943,
							40944,
						},
						uuid = "8ea744b8-cddd-460b-9613-4c7692687945",
						version = 3,
					},
				},
			},
			displayPath = "Jeuno/Prishe/Draws",
			eventType = 3,
			name = "[Prishe draws] Knuckle Sandwich - OUT > IN",
			timeout = 2,
			uuid = "2f438ec7-109a-9f6d-be9b-d128b5178b62",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Pull-scoped helpers. BossMod geometry; native 1248 logs corroborate IDs/timing.\nif data.jacobJeunoDraws == nil then\n    local s = { shapes = {}, holy = {}, exa = {}, holyUntil = 0, upperUntil = 0, assignmentUntil = 0 }\n    data.jacobJeunoDraws = s\n    s.green = TensorCore.getCachedDrawer(0x3000FF00, nil, 0x5000FF00, 0xFF00FF00, 2)\n    s.red = TensorCore.getCachedDrawer(0x300000FF, nil, 0x500000FF, 0xFF0000FF, 2)\n    s.line = TensorCore.getStaticDrawer(0xFF00FF00, 2)\n    s.aoe = TensorCore.getMoogleDrawer()\n    function s.own(uuid, deadline, caster, boss)\n        if uuid then s.shapes[uuid] = {deadline = deadline, caster = caster, boss = boss} end\n        return uuid\n    end\n    function s.remove(uuid)\n        if uuid then Argus.deleteTimedShape(uuid); s.shapes[uuid] = nil end\n    end\n    function s.cleanup()\n        for uuid in pairs(s.shapes) do Argus.deleteTimedShape(uuid) end\n        s.shapes = {}; s.holy = {}; s.exa = {}\n        s.holyUntil = 0; s.upperUntil = 0; s.assignmentUntil = 0; s.exaUntil = 0\n    end\n    function s.timer(ms, x, y, z)\n        AnyoneCore.addWorldTextCountdown(ms, {x=x,y=y+1,z=z}, 0xFFFFFFFF, true, 1.3)\n    end\n    function s.drawCircle(ms, p, radius, caster, boss)\n        return s.own(s.aoe:addTimedCircle(ms,p.x,p.y,p.z,radius),Now()+ms,caster,boss)\n    end\n    function s.safePoint(ms, x, y, z, boss)\n        s.own(s.green:addTimedCircle(ms,x,y,z,1,0,false,true),Now()+ms,nil,boss)\n    end\n    function s.inside(poly,dx,dz)\n            local yes=false\n            local j=#poly\n            for i=1,#poly do\n                local a,b=poly[i],poly[j]\n                if (a[2]>dz)~=(b[2]>dz) and dx<(b[1]-a[1])*(dz-a[2])/(b[2]-a[2])+a[1] then yes=not yes end\n                j=i\n            end\n            return yes\n    end\n    function s.upperUnsafe(x,z)\n        local dx,dz=x-800,z-400\n        if math.abs(dx)>35 or math.abs(dz)>35 then return true end\n        if not s.thornsUntil or Now()>s.thornsUntil then return false end\n        if s.thornsRotated then dx,dz=-dz,dx end\n        return s.inside(s.thornOuter,dx,dz) and not s.inside(s.thornHole,dx,dz)\n    end\n    s.thornOuter={{-35,35},{-35,-5},{-25,-5},{-25,-25},{5,-25},{5,-35},{35,-35},{35,5},{25,5},{25,25},{-5,25},{-5,35}}\n    s.thornHole={{-15,15},{-15,-5},{-5,-5},{-5,-15},{15,-15},{15,5},{5,5},{5,15}}\n    -- Pick a safe one-yalm position circle; party proximity only breaks safe-position ties.\n    function s.fafnirSpot(ms, spell, p)\n        local party=TensorCore.getEntityGroupList(\"Party\")\n        local bestScore,bestX,bestZ=-math.huge,nil,nil\n        for i=0,71 do\n            local a=i*math.pi/36\n            local radius=spell==41116 and 27 or 11\n            local x,z=p.x+radius*math.sin(a),p.z+radius*math.cos(a)\n            local safe=(x+500)^2+(z-600)^2<28.5^2\n            if spell==41114 then safe=safe and math.cos(a-p.h)<-math.cos(math.pi/5) end\n            if safe then\n                local score=-(x+500)*0.1\n                for _,e in pairs(party) do\n                    if e.alive and (e.pos.x-x)^2+(e.pos.z-z)^2<36 then score=score+1 end\n                end\n                if score>bestScore then bestScore,bestX,bestZ=score,x,z end\n            end\n        end\n        if bestX then s.safePoint(ms,bestX,p.y,bestZ,2) end\n    end\nend\n\nlocal id=eventArgs.spellID\nlocal cid=eventArgs.entityContentID\nlocal boss\nif cid==13351 or cid==13352 then boss=1\nelseif cid==13662 then boss=2\nelseif cid==13641 or cid==13642 or cid==13643 or cid==13644 or cid==13645 then boss=3\nelse self.used=true; return end\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e then return end\nlocal p=e.pos\n-- Argus channelTimeMax in native logs is 0.3s shorter than the actual cast.\nlocal ms=math.max(1,(eventArgs.channelTimeMax+0.3)*1000)\nlocal deadline=Now()+ms\nlocal s=data.jacobJeunoDraws\nif boss==1 then\n    if id==40946 then\n        s.exaUntil=Now()+35000\n    elseif id>=40939 and id<=40941 then\n        local r=(id-40938)*9\n        s.drawCircle(ms,p,r,e.id,1)\n        s.knuckle={x=p.x,y=p.y,z=p.z,radius=r,deadline=deadline}\n        AnyoneCore.addTimedWorldText(ms,\"OUT > IN\",{x=p.x,y=p.y+2,z=p.z},0xFFFFFFFF,true,1.7)\n    elseif id>=40942 and id<=40944 then\n        local r=(id-40941)*9\n        -- Donut starts only after the first hit. Keep the first safe region readable.\n        s.own(s.aoe:addTimedDonut(ms,p.x,p.y,p.z,r,60,math.max(0,ms-1500)),deadline,e.id,1)\n    elseif id==40963 then\n        local t=TensorCore.mGetEntity(eventArgs.targetID)\n        if t then\n            local old=s.holy[t.id]\n            if old then s.remove(old.uuid) end\n            s.holy[t.id]={id=t.id,deadline=deadline,color=true,uuid=s.own(s.red:addTimedCircleOnEnt(ms,t.id,6,0,false,true),deadline,e.id,1)}\n            s.holyUntil=math.max(s.holyUntil,deadline)\n        end\n    elseif id>=40950 and id<=40952 then\n        s.remove(s.upperLine); s.remove(s.upperCircle)\n        s.upperDistance=(id-40949)*12\n        s.upperUntil=deadline+1400\n        s.upperCaster=e.id\n        s.upperLine=nil; s.upperCircle=nil; s.upperColor=nil\n    elseif id==40955 then\n        s.timer(ms,p.x,p.y,p.z)\n    end\nelseif boss==2 then\n    if id==41114 then\n        s.own(s.aoe:addTimedCone(ms,p.x,p.y,p.z,80,math.pi*1.5,p.h),deadline,e.id,2)\n        s.timer(ms,p.x,p.y,p.z)\n        s.fafnirSpot(ms,id,p)\n    elseif id==41116 then\n        s.drawCircle(ms,p,24,e.id,2)\n        s.timer(ms,p.x,p.y,p.z)\n        s.fafnirSpot(ms,id,p)\n    elseif id==40814 then\n        -- The six 60-degree sectors form the initial 16..30 donut.\n        -- Moogle already shows the individual lingering sectors; do not overdraw them.\n        ms=ms+1200\n        s.timer(ms,p.x,p.y,p.z)\n        s.fafnirSpot(ms,id,p)\n    elseif id==40846 or id==40848 then\n        local width=id==40846 and 20 or 25\n        s.own(s.aoe:addTimedRect(ms,p.x,p.y,p.z,70,width,p.h),deadline,e.id,2)\n        s.timer(ms,p.x+18*math.sin(p.h),p.y,p.z+18*math.cos(p.h))\n    elseif id==40850 then\n        s.timer(ms,p.x,p.y,p.z)\n    end\nelseif id==41084 then\n    -- Concerted Dissolution: timer at the helper; existing telegraph keeps its styling.\n    s.timer(ms,p.x,p.y,p.z)\nend\nself.used=true\n",
						conditions = 
						{
							
							{
								"9a94c76f-407f-ebee-b237-96ba30331f8a",
								true,
							},
							
							{
								"89a9bf40-fb91-8dfb-adc4-191bcef9c490",
								true,
							},
						},
						name = "[Prishe draws] Holy, Uppercut and orb countdowns",
						uuid = "42b41e7b-18e6-d08c-8006-4d627358f94a",
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
						localmapid = 1248,
						name = "Jeuno only",
						uuid = "9a94c76f-407f-ebee-b237-96ba30331f8a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 3,
						eventArgType = 2,
						name = "Matching mechanic cast",
						spellIDList = 
						{
							40946,
							40950,
							40951,
							40952,
							40955,
							40963,
						},
						uuid = "89a9bf40-fb91-8dfb-adc4-191bcef9c490",
						version = 3,
					},
				},
			},
			displayPath = "Jeuno/Prishe/Draws",
			eventType = 3,
			name = "[Prishe draws] Holy, Uppercut and orb countdowns",
			timeout = 2,
			uuid = "cdd342fd-55b5-b7b0-9264-9c74e6471a48",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s=data.jacobJeunoDraws\nif not s then self.used=true; return end\nlocal i,a,b=eventArgs.a1,eventArgs.a2,eventArgs.a3\nlocal now=Now()\nif i==1 then\n    if (a==1 and b==2) or (a==256 and b==512) then\n        s.thornsRotated=a==256; s.thornsUntil=now+30000\n    elseif (a==4 and b==8) or (a==4 and b==128) then s.thornsUntil=0 end\n    self.used=true; return\nend\nif not s.exaUntil or now>s.exaUntil then self.used=true; return end\nif not ((i>=2 and i<=13) or (i>=50 and i<=53)) then self.used=true; return end\nif a==4 and b==8 then self.used=true; return end\nif a~=1 or b~=2 then self.used=true; return end\nlocal rods=s.rods\nif not rods then\n    rods={[2]={-15,-15,180},[3]={15,0,90},[4]={0,15,180},[5]={-15,-15,0},[6]={15,0,-90},[7]={0,15,0},[8]={0,-15,0},[9]={-15,0,-90},[10]={15,15,0},[11]={0,-15,180},[12]={-15,0,90},[13]={15,15,180},[50]={-15,-15,180},[51]={0,15,0},[52]={15,15,0},[53]={0,-15,180}}\n    s.rods=rods\nend\nlocal r=rods[i]\nfor ray=0,2 do\n    local angle=(r[3]+ray*120)*math.pi/180\n    local dx,dz=math.sin(angle),math.cos(angle)\n    local edge=math.huge\n    if dx>0.0001 then edge=math.min(edge,(35-r[1])/dx) elseif dx< -0.0001 then edge=math.min(edge,(-35-r[1])/dx) end\n    if dz>0.0001 then edge=math.min(edge,(35-r[2])/dz) elseif dz< -0.0001 then edge=math.min(edge,(-35-r[2])/dz) end\n    local count=math.floor((edge-1)/4)+1\n    for step=0,count-1 do\n        local x,z=800+r[1]+step*4*dx,400+r[2]+step*4*dz\n        local ms=9100+step*800\n        local uuid=s.drawCircle(ms,{x=x,y=70,z=z},6,nil,1)\n        s.exa[#s.exa+1]={x=x,z=z,deadline=now+ms,uuid=uuid}\n    end\nend\nself.used=true\n",
						conditions = 
						{
							
							{
								"166446fb-16b5-c4bf-baee-4ea906309f4d",
								true,
							},
							
							{
								"65f5b155-2121-fe46-860c-d169233a9c11",
								true,
							},
						},
						name = "[Prishe draws] All exaflare lines and thorn layout",
						uuid = "535085f2-620f-e19c-9b38-093b35203fa5",
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
						localmapid = 1248,
						name = "Jeuno only",
						uuid = "166446fb-16b5-c4bf-baee-4ea906309f4d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.jacobJeunoDraws\nif not s then return false end\nlocal p=TensorCore.mGetPlayer()\nif not p or math.abs(p.pos.x-800)>80 or math.abs(p.pos.z-400)>80 then return false end\nlocal i=eventArgs.a1\nreturn i==1 or ((i>=2 and i<=13 or i>=50 and i<=53) and s.exaUntil~=nil and Now()<s.exaUntil)",
						dequeueIfLuaFalse = true,
						name = "Prishe arena and relevant map effect",
						uuid = "65f5b155-2121-fe46-860c-d169233a9c11",
						version = 3,
					},
				},
			},
			displayPath = "Jeuno/Prishe/Draws",
			eventType = 14,
			name = "[Prishe draws] All exaflare lines and thorn layout",
			timeout = 2,
			uuid = "d702a3dc-93e8-8410-a46c-50025fce9565",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Jeuno",
			name = "Draws",
			uuid = "43ec5ee3-e19c-1ebe-b8fb-30938343a78f",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s=data.jacobJeunoDraws\nif not s then self.used=true; return end\nlocal id=eventArgs.spellID\nif eventArgs.entityContentID~=13351 and eventArgs.entityContentID~=13352 and eventArgs.entityContentID~=13662 then self.used=true; return end\nif id==40953 then\n    s.upperUntil=0; s.remove(s.upperLine); s.remove(s.upperCircle)\n    s.upperLine=nil; s.upperCircle=nil\nelseif id==40963 then\n    local h=s.holy[eventArgs.targetID]\n    if h then s.remove(h.uuid); s.holy[eventArgs.targetID]=nil end\nelseif id>=40939 and id<=40941 then\n    local k=s.knuckle\n    if k then AnyoneCore.addTimedWorldText(1500,\"IN\",{x=k.x,y=k.y+2,z=k.z},0xFF00FF00,true,1.7) end\nelseif id==40947 then\n    local e=TensorCore.mGetEntity(eventArgs.entityID)\n    if e then\n        for n=#s.exa,1,-1 do\n            local a=s.exa[n]\n            if (a.x-e.pos.x)^2+(a.z-e.pos.z)^2<1 then s.remove(a.uuid); table.remove(s.exa,n) end\n        end\n    end\nend\n-- Native helper action ends also remove its owned telegraphs immediately.\nfor uuid,draw in pairs(s.shapes) do\n    if draw.caster==eventArgs.entityID then s.remove(uuid) end\nend\nself.used=true\n",
						conditions = 
						{
							
							{
								"04ee8f1a-4eb7-cb76-8c00-aeaa57276363",
								true,
							},
							
							{
								"a5f89d00-d5e5-23ab-b7ed-1a194d22dd67",
								true,
							},
						},
						name = "[Jeuno draws] Resolve hit and clear owned telegraphs",
						uuid = "4752648c-15bb-8e90-a505-7e5c48110631",
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
						localmapid = 1248,
						name = "Jeuno only",
						uuid = "04ee8f1a-4eb7-cb76-8c00-aeaa57276363",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 3,
						eventArgType = 2,
						name = "Matching mechanic cast",
						spellIDList = 
						{
							40939,
							40940,
							40941,
							40942,
							40943,
							40944,
							40947,
							40953,
							40955,
							40963,
							41114,
							41116,
							40846,
							40848,
						},
						uuid = "a5f89d00-d5e5-23ab-b7ed-1a194d22dd67",
						version = 3,
					},
				},
			},
			displayPath = "Jeuno/Draws",
			eventType = 2,
			name = "[Jeuno draws] Resolve hit and clear owned telegraphs",
			timeout = 2,
			uuid = "352e89e0-c5a6-4762-9fd7-03bfb791b0d6",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s=data.jacobJeunoDraws\nif not s then self.used=true; return end\nlocal now=Now()\nif s.nextUpdate and now<s.nextUpdate then self.used=true; return end\ns.nextUpdate=now+100\nlocal player=TensorCore.mGetPlayer()\nif not player or player.localmapid~=1248 or not player.alive then\n    s.cleanup(); self.used=true; return\nend\n-- Cheap expiry pass over owned draws only; no entity-list scans while inactive.\nfor uuid,v in pairs(s.shapes) do\n    local p=player.pos\n    local inBoss=(v.boss==1 and math.abs(p.x-800)<80 and math.abs(p.z-400)<80)\n        or (v.boss==2 and math.abs(p.x+500)<80 and math.abs(p.z-600)<80)\n        or (v.boss==3 and math.abs(p.x-865)<80 and math.abs(p.z+820)<80)\n    if not inBoss then s.remove(uuid)\n    elseif now>=v.deadline then s.shapes[uuid]=nil end\nend\nif math.abs(player.pos.x-800)>80 or math.abs(player.pos.z-400)>80 then\n    s.holyUntil=0; s.upperUntil=0; s.exaUntil=0; s.thornsUntil=0\nend\nif math.abs(player.pos.x-865)>80 or math.abs(player.pos.z+820)>80 then s.assignmentUntil=0 end\nif now<s.holyUntil then\n    for id,a in pairs(s.holy) do\n        local e=TensorCore.mGetEntity(id)\n        if not e or not e.alive or now>=a.deadline then s.remove(a.uuid); s.holy[id]=nil\n        else\n            local overlap=false\n            for other,b in pairs(s.holy) do\n                if other~=id and now<b.deadline then\n                    local o=TensorCore.mGetEntity(other)\n                    if o and o.alive and (e.pos.x-o.pos.x)^2+(e.pos.z-o.pos.z)^2<144 then overlap=true; break end\n                end\n            end\n            if a.color~=overlap then\n                local drawer=overlap and s.red or s.green\n                drawer:updateTimedCircleOnEnt(a.uuid,math.max(1,a.deadline-now),id,6,0,false,true)\n                a.color=overlap\n            end\n        end\n    end\nelseif next(s.holy) then\n    for _,a in pairs(s.holy) do s.remove(a.uuid) end\n    s.holy={}\nend\nif now<s.upperUntil then\n    local e=TensorCore.mGetEntity(s.upperCaster)\n    if not e or not e.alive then s.upperUntil=0\n    else\n        local p=player.pos\n        local dx,dz=p.x-800,p.z-400\n        local d=math.sqrt(dx*dx+dz*dz)\n        if d>0.01 then\n            local x,z=p.x+dx/d*s.upperDistance,p.z+dz/d*s.upperDistance\n            local bad=s.upperUnsafe(x,z)\n            local drawer=bad and s.red or s.green\n            local ms=math.max(1,s.upperUntil-now)\n            if not s.upperLine then\n                s.upperLine=s.own(drawer:addTimedLine(ms,p.x,p.y,p.z,x,p.y,z,2,5),s.upperUntil,nil,1)\n                s.upperCircle=s.own(drawer:addTimedCircle(ms,x,p.y,z,0.8,0,false,true),s.upperUntil,nil,1)\n            else\n                drawer:updateTimedLine(s.upperLine,ms,p.x,p.y,p.z,x,p.y,z,2,5,0)\n                drawer:updateTimedCircle(s.upperCircle,ms,x,p.y,z,0.8,0,false,true)\n            end\n        end\n    end\nend\nif now>=s.upperUntil and (s.upperLine or s.upperCircle) then\n    s.remove(s.upperLine); s.remove(s.upperCircle); s.upperLine=nil; s.upperCircle=nil\nend\nif now<s.assignmentUntil then\n    if not TensorCore.hasBuff(player,s.assignmentBuff) then\n        s.assignmentUntil=0; s.remove(s.assignmentCircle)\n    elseif not s.labelAt or now>=s.labelAt then\n        -- Fixed labels, not countdowns. Short leases prevent labels lingering into another boss.\n        AnyoneCore.addTimedWorldTextOnEnt(1050,s.assignmentName,player.id,s.assignmentColor,true,1.5,2.2)\n        local target=TensorCore.mGetEntity(s.assignmentTarget)\n        if target and target.alive then AnyoneCore.addTimedWorldTextOnEnt(1050,\"FOCUS: \"..s.assignmentName,target.id,s.assignmentColor,true,1.6,3) end\n        s.labelAt=now+1000\n    end\nend\nself.used=true\n",
						conditions = 
						{
							
							{
								"e188e1d3-090b-0b04-ac44-9eed13b874e2",
								true,
							},
							
							{
								"5ab03612-0bb0-fb71-92a3-33fdca583305",
								true,
							},
						},
						name = "[Jeuno draws] Update active personal guidance only",
						uuid = "699dc4e9-36b0-0312-8812-cce8ebf3c714",
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
						localmapid = 1248,
						name = "Jeuno only",
						uuid = "e188e1d3-090b-0b04-ac44-9eed13b874e2",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.jacobJeunoDraws\nif not s then return false end\nlocal now=Now()\nreturn next(s.shapes)~=nil or now<s.holyUntil or now<s.upperUntil or now<s.assignmentUntil",
						name = "A mechanic still owns live guidance",
						uuid = "5ab03612-0bb0-fb71-92a3-33fdca583305",
						version = 3,
					},
				},
			},
			displayPath = "Jeuno/Draws",
			name = "[Jeuno draws] Update active personal guidance only",
			timeout = 0.2,
			uuid = "5d1be3de-094d-9c47-bb82-2855fec54991",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Jeuno/Draws",
			name = "Safeguards",
			uuid = "d32ad3e5-ed8b-54fd-a7f2-0e5674ad5352",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s=eventArgs.oldData and eventArgs.oldData.jacobJeunoDraws\nif s then s.cleanup() end\nself.used=true",
						conditions = 
						{
							
							{
								"2885e60a-e745-d131-ba44-9f631b319673",
								true,
							},
						},
						name = "Clear owned Jeuno draws",
						uuid = "a8418da9-be5f-92de-b794-473922db1e98",
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
						localmapid = 1248,
						name = "Jeuno only",
						uuid = "2885e60a-e745-d131-ba44-9f631b319673",
						version = 3,
					},
				},
			},
			displayPath = "Jeuno/Draws/Safeguards",
			eventType = 9,
			execute = "local s=eventArgs.oldData and eventArgs.oldData.jacobJeunoDraws\nif s then s.cleanup() end\nself.used=true",
			name = "[Jeuno draws] Cleanup on wipe",
			timeout = 1,
			uuid = "5a5ab57e-44e6-f7d6-94cf-63938244cc0a",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s=data.jacobJeunoDraws\nif s then s.cleanup() end\nself.used=true",
						conditions = 
						{
							
							{
								"d0eec981-a4c9-2c66-978e-cc7ce53785bc",
								true,
							},
						},
						name = "Clear owned Jeuno draws",
						uuid = "f5092a1e-0822-b14e-acaa-5aaa70028c81",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.jacobJeunoDraws~=nil",
						dequeueIfLuaFalse = true,
						name = "Owned Jeuno draws only",
						uuid = "d0eec981-a4c9-2c66-978e-cc7ce53785bc",
						version = 3,
					},
				},
			},
			displayPath = "Jeuno/Draws/Safeguards",
			eventType = 11,
			execute = "local s=data.jacobJeunoDraws\nif s then s.cleanup() end\nself.used=true",
			name = "[Jeuno draws] Cleanup on mapchange",
			timeout = 1,
			uuid = "498ce75a-9353-27de-9bc0-c603b928c2c5",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s=data.jacobJeunoDraws\nif s then s.cleanup() end\nself.used=true",
						conditions = 
						{
							
							{
								"72706b0a-ce22-bae6-9e8f-4721803b8abd",
								true,
							},
						},
						name = "Clear owned Jeuno draws",
						uuid = "32eed536-7b22-ea80-a2c6-9193d0721f68",
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
						localmapid = 1248,
						name = "Jeuno only",
						uuid = "72706b0a-ce22-bae6-9e8f-4721803b8abd",
						version = 3,
					},
				},
			},
			displayPath = "Jeuno/Draws/Safeguards",
			eventType = 10,
			execute = "local s=data.jacobJeunoDraws\nif s then s.cleanup() end\nself.used=true",
			name = "[Jeuno draws] Cleanup on death",
			timeout = 1,
			uuid = "f3df8d9e-6edd-2432-b0e8-cd45dbb41fe2",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Jeuno",
			name = "AutoSim",
			uuid = "fde2454e-eafe-b95a-96cb-deb7f842b128",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Echoes of Vana’diel",
			uuid = "989af0c8-88e5-5e19-8208-581b3a68d395",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Echoes of Vana’diel",
			name = "AutoSim",
			uuid = "1af373ec-c5e5-2929-8125-970cba412234",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local p = TensorCore.mGetPlayer()\nlocal api = TensorCore.API.TensorACR\nlocal state = _G.JeunoTrashReserve\nlocal function clearTrashWeight(reserve)\n    local phase = reserve.phase\n    reserve.phase = nil\n    -- The combat reset may already have removed this owned phase.\n    if phase then pcall(api.removeAutoSimPhase, phase) end\nend\nlocal function isTrash(map, id)\n    if not id then return false end\n    if map == 1248 then return id >= 13597 and id <= 13609 end\n    if map == 1304 then return (id >= 14063 and id <= 14072) or (id >= 14075 and id <= 14082) end\n    if map == 1368 then return (id >= 14828 and id <= 14836) or id == 14838 or id == 14839 end\n    return false\nend\nlocal map = p and p.localmapid\nlocal inWalk = map == 1248 or map == 1304 or map == 1368\nlocal target = inWalk and TensorCore.mGetTarget()\nlocal trash = target and target.alive and target.attackable and isTrash(map, target.contentid)\nlocal keep = state and p and p.incombat and not (target and target.alive and target.attackable)\nif not inWalk or not p.alive or not (trash or keep) then\n    if state then\n        for var in pairs(state.held) do\n            if _G[var] == false then _G[var] = true end\n        end\n        clearTrashWeight(state)\n        _G.JeunoTrashReserve = nil\n    end\n    self.used = true\n    return\nend\nif not state then\n    state = {held={}}\n    _G.JeunoTrashReserve = state\n    for _, option in pairs(api.getQuickToggles() or {}) do\n        local var = option.var\n        if var and (var:match(\"_CD$\") or var:match(\"_Potion$\") or (p.job == 25 and (var == \"ACR_TensorNuke4_Triplecast\" or var == \"ACR_TensorNuke4_Xenoglossy\"))) and _G[var] == true then\n            state.held[var] = true\n            _G[var] = false\n        end\n    end\nend\n-- Short renewed hold expires on boss handoff without clearing other holds.\nif p.job == 25 and (not state.amplifierRefresh or Now() >= state.amplifierRefresh) then\n    api.holdActionFor(25796, 1)\n    state.amplifierRefresh = Now() + 500\nend\nif p.incombat then\n    local now = api.getAutoSimTime()\n    if type(now) == \"number\" and now > 0 then\n        if state.lastTime and now < state.lastTime then state.phase = nil; state.attempted = nil end\n        state.lastTime = now\n        if not state.attempted then\n            state.attempted = true\n            state.phase = api.addAutoSimPhase(\"BossModifier\", 0, now + 90, 0.7)\n        end\n    end\nelse\n    clearTrashWeight(state)\n    state.attempted = nil\n    state.lastTime = nil\nend\nself.used = true",
						conditions = 
						{
							
							{
								"84a7a254-8cbc-d7ce-90c2-f1bafc4e2ea2",
								true,
							},
						},
						name = "Reserve burst and weight trash at 0.7",
						uuid = "377a4687-87db-9a90-99ea-a0113e86966d",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if _G.JeunoTrashReserve then return true end\nlocal p = TensorCore.mGetPlayer()\nif not p or not p.alive or (p.localmapid ~= 1248 and p.localmapid ~= 1304 and p.localmapid ~= 1368) then return false end\nlocal target = TensorCore.mGetTarget()\nif not target or not target.alive or not target.attackable then return false end\nlocal function isTrash(map, id)\n    if not id then return false end\n    if map == 1248 then return id >= 13597 and id <= 13609 end\n    if map == 1304 then return (id >= 14063 and id <= 14072) or (id >= 14075 and id <= 14082) end\n    if map == 1368 then return (id >= 14828 and id <= 14836) or id == 14838 or id == 14839 end\n    return false\nend\nreturn isTrash(p.localmapid, target.contentid)",
						dequeueIfLuaFalse = true,
						name = "Walk trash or owned hold",
						uuid = "84a7a254-8cbc-d7ce-90c2-f1bafc4e2ea2",
						version = 3,
					},
				},
			},
			displayPath = "Echoes of Vana’diel/AutoSim",
			name = "[Echoes of Vana’diel AutoSim] Hold resources on trash",
			throttleTime = 300,
			uuid = "cdef9cb9-3dfa-2791-a569-f1f17531a4f5",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "San d’Oria",
			uuid = "b12e0a06-0f38-2eec-aaa1-89fcf39f4cd4",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "San d’Oria",
			name = "Knockback safeguards",
			uuid = "929613a8-96e2-5deb-9580-dafac53d0be9",
		},
		objectType = "folder",
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
								"a97a3a86-514a-0938-8f90-682060564fad",
								true,
							},
							
							{
								"1463f344-9872-a66e-9590-d6973dd0c810",
								true,
							},
							
							{
								"d86b05ab-f3c7-9056-9735-4c797d34855b",
								true,
							},
							
							{
								"f3ca42fc-f823-1710-a0e0-b9ba97bcde7c",
								true,
							},
							
							{
								"65fa2495-0a4a-e256-ae2a-f641ec98c8e6",
								true,
							},
						},
						gVar = "ACR_TensorNuke4_Hotbar_Surecast",
						uuid = "45d28459-2cee-b339-91ea-8a036cd9a359",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "ACR",
						conditions = 
						{
							
							{
								"a97a3a86-514a-0938-8f90-682060564fad",
								true,
							},
							
							{
								"1463f344-9872-a66e-9590-d6973dd0c810",
								true,
							},
							
							{
								"d86b05ab-f3c7-9056-9735-4c797d34855b",
								true,
							},
							
							{
								"f3ca42fc-f823-1710-a0e0-b9ba97bcde7c",
								true,
							},
							
							{
								"83e34fb1-b404-bd77-bfdc-c08667f4164c",
								true,
							},
						},
						gVar = "ACR_TensorReaper4_Hotbar_ArmsLength",
						name = "Request Arm's Length",
						uuid = "2baf725e-60c8-3e1c-a1a4-d8cefdc5b19d",
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
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1304,
						name = "Second Walk only",
						uuid = "a97a3a86-514a-0938-8f90-682060564fad",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgType = 2,
						eventSpellID = 45190,
						name = "Exact mechanic",
						uuid = "1463f344-9872-a66e-9590-d6973dd0c810",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 2,
						eventEntityContentID = 14231,
						name = "Exact boss",
						uuid = "d86b05ab-f3c7-9056-9735-4c797d34855b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not self.deadline then self.deadline=Now()+eventArgs.channelTimeMax*1000 end\nlocal remaining=self.deadline-Now()\nif remaining>3000 or remaining<1000 then return false end\nlocal caster=TensorCore.mGetEntity(eventArgs.entityID)\nreturn caster~=nil and caster.castinginfo.channelingid==eventArgs.spellID",
						name = "Request with 3 to 1 seconds remaining",
						uuid = "f3ca42fc-f823-1710-a0e0-b9ba97bcde7c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 14,
						dequeueIfLuaFalse = true,
						jobIDList = 
						{
							25,
							27,
							35,
							42,
							24,
							28,
							33,
							40,
						},
						name = "Caster or healer",
						uuid = "65fa2495-0a4a-e256-ae2a-f641ec98c8e6",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 14,
						dequeueIfLuaFalse = true,
						jobIDList = 
						{
							19,
							21,
							32,
							37,
							20,
							22,
							30,
							34,
							39,
							41,
							23,
							31,
							38,
						},
						name = "Physical role",
						uuid = "83e34fb1-b404-bd77-bfdc-c08667f4164c",
						version = 3,
					},
				},
			},
			displayPath = "San d’Oria/Knockback safeguards",
			eventType = 3,
			name = "[Second Walk] Knockback protection - Ultima - Tractor Beam",
			timeout = 12,
			uuid = "09f1e12c-911a-4d93-b619-b3230c7331aa",
			version = 2,
		},
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
								"fbd0ac91-8ecd-e8b6-aa3e-17fc65c5ac0c",
								true,
							},
							
							{
								"b7e79740-c75e-fdd0-b55f-0ca1f8d2069b",
								true,
							},
							
							{
								"33aaf97e-4f39-3b1c-bc42-2359e42b3143",
								true,
							},
							
							{
								"7399263a-6534-167e-87b0-75b977234cb1",
								true,
							},
							
							{
								"620d06a1-ba8d-9cc4-abab-4b12c3681bfc",
								true,
							},
						},
						gVar = "ACR_TensorNuke4_Hotbar_Surecast",
						uuid = "c62401a1-e6ba-903f-a727-5923e4f6bd43",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "ACR",
						conditions = 
						{
							
							{
								"fbd0ac91-8ecd-e8b6-aa3e-17fc65c5ac0c",
								true,
							},
							
							{
								"b7e79740-c75e-fdd0-b55f-0ca1f8d2069b",
								true,
							},
							
							{
								"33aaf97e-4f39-3b1c-bc42-2359e42b3143",
								true,
							},
							
							{
								"7399263a-6534-167e-87b0-75b977234cb1",
								true,
							},
							
							{
								"0063dc69-ccf9-0005-a459-15e07346601f",
								true,
							},
						},
						gVar = "ACR_TensorReaper4_Hotbar_ArmsLength",
						name = "Request Arm's Length",
						uuid = "8bd555e4-eb36-127c-b060-bb2af13d4cf3",
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
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1304,
						name = "Second Walk only",
						uuid = "fbd0ac91-8ecd-e8b6-aa3e-17fc65c5ac0c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgType = 2,
						eventSpellID = 44222,
						name = "Exact mechanic",
						uuid = "b7e79740-c75e-fdd0-b55f-0ca1f8d2069b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 2,
						eventEntityContentID = 14043,
						name = "Exact boss",
						uuid = "33aaf97e-4f39-3b1c-bc42-2359e42b3143",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not self.deadline then self.deadline=Now()+eventArgs.channelTimeMax*1000 end\nlocal remaining=self.deadline-Now()\nif remaining>3000 or remaining<1000 then return false end\nlocal caster=TensorCore.mGetEntity(eventArgs.entityID)\nreturn caster~=nil and caster.castinginfo.channelingid==eventArgs.spellID",
						name = "Request with 3 to 1 seconds remaining",
						uuid = "7399263a-6534-167e-87b0-75b977234cb1",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 14,
						dequeueIfLuaFalse = true,
						jobIDList = 
						{
							25,
							27,
							35,
							42,
							24,
							28,
							33,
							40,
						},
						name = "Caster or healer",
						uuid = "620d06a1-ba8d-9cc4-abab-4b12c3681bfc",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 14,
						dequeueIfLuaFalse = true,
						jobIDList = 
						{
							19,
							21,
							32,
							37,
							20,
							22,
							30,
							34,
							39,
							41,
							23,
							31,
							38,
						},
						name = "Physical role",
						uuid = "0063dc69-ccf9-0005-a459-15e07346601f",
						version = 3,
					},
				},
			},
			displayPath = "San d’Oria/Knockback safeguards",
			eventType = 3,
			name = "[Second Walk] Knockback protection - Kam'lanaut - Shield Bash",
			timeout = 8,
			uuid = "6368b138-33b1-9e45-9c07-008d3c02ab5c",
			version = 2,
		},
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
								"fdc49a19-d326-510f-9288-ef3bcc3917da",
								true,
							},
							
							{
								"83d49023-48a5-47bf-a67f-4760e8fd6030",
								true,
							},
							
							{
								"d9859f88-8130-6e4f-9784-5eb2c8daf24d",
								true,
							},
							
							{
								"1f354d5b-2f6f-2f15-ae97-72fb894bf747",
								true,
							},
							
							{
								"8d55b888-f94d-1cd8-97a4-beaac26e2ab4",
								true,
							},
						},
						gVar = "ACR_TensorNuke4_Hotbar_Surecast",
						uuid = "ee48ff09-125c-f8fc-9add-51ab05196c6d",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "ACR",
						conditions = 
						{
							
							{
								"fdc49a19-d326-510f-9288-ef3bcc3917da",
								true,
							},
							
							{
								"83d49023-48a5-47bf-a67f-4760e8fd6030",
								true,
							},
							
							{
								"d9859f88-8130-6e4f-9784-5eb2c8daf24d",
								true,
							},
							
							{
								"1f354d5b-2f6f-2f15-ae97-72fb894bf747",
								true,
							},
							
							{
								"53c06159-5fe1-6f60-b930-1726392ce430",
								true,
							},
						},
						gVar = "ACR_TensorReaper4_Hotbar_ArmsLength",
						name = "Request Arm's Length",
						uuid = "bf4aeefe-1341-3ca8-94ea-2aee00a2ecb2",
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
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1304,
						name = "Second Walk only",
						uuid = "fdc49a19-d326-510f-9288-ef3bcc3917da",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgType = 2,
						eventSpellID = 44395,
						name = "Exact mechanic",
						uuid = "83d49023-48a5-47bf-a67f-4760e8fd6030",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 2,
						eventEntityContentID = 14086,
						name = "Exact boss",
						uuid = "d9859f88-8130-6e4f-9784-5eb2c8daf24d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not self.deadline then self.deadline=Now()+eventArgs.channelTimeMax*1000 end\nlocal remaining=self.deadline-Now()\nif remaining>3000 or remaining<1000 then return false end\nlocal caster=TensorCore.mGetEntity(eventArgs.entityID)\nreturn caster~=nil and caster.castinginfo.channelingid==eventArgs.spellID",
						name = "Request with 3 to 1 seconds remaining",
						uuid = "1f354d5b-2f6f-2f15-ae97-72fb894bf747",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 14,
						dequeueIfLuaFalse = true,
						jobIDList = 
						{
							25,
							27,
							35,
							42,
							24,
							28,
							33,
							40,
						},
						name = "Caster or healer",
						uuid = "8d55b888-f94d-1cd8-97a4-beaac26e2ab4",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 14,
						dequeueIfLuaFalse = true,
						jobIDList = 
						{
							19,
							21,
							32,
							37,
							20,
							22,
							30,
							34,
							39,
							41,
							23,
							31,
							38,
						},
						name = "Physical role",
						uuid = "53c06159-5fe1-6f60-b930-1726392ce430",
						version = 3,
					},
				},
			},
			displayPath = "San d’Oria/Knockback safeguards",
			eventType = 3,
			name = "[Second Walk] Knockback protection - Eald'narche - Tornado draw-in",
			timeout = 8,
			uuid = "64d79e9e-0329-ea6c-8afd-7fe8ec4b2021",
			version = 2,
		},
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
								"c093b6d0-cedd-7d89-8089-c20c082fbcbd",
								true,
							},
							
							{
								"7f389b69-a0f5-eb7c-a718-d73e23596b29",
								true,
							},
							
							{
								"a3cc2b79-b386-94df-b58e-1484c3dd566b",
								true,
							},
							
							{
								"3fb19f3f-f3dc-c82f-91e3-74d0488ddd42",
								true,
							},
							
							{
								"55d3a39a-5c18-07b5-b1dd-115d586321c9",
								true,
							},
							
							{
								"282af01f-52c1-ad98-80d5-1a26cbc97374",
								true,
							},
						},
						gVar = "ACR_TensorReaper4_Hotbar_ArmsLength",
						name = "Request Arm's Length",
						uuid = "bf639660-681b-a79c-a503-1e87f9e3f32c",
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
						category = "Event",
						eventArgType = 2,
						eventSpellID = 44219,
						name = "Exact mechanic",
						uuid = "7f389b69-a0f5-eb7c-a718-d73e23596b29",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 2,
						eventEntityContentID = 14043,
						name = "Exact boss",
						uuid = "a3cc2b79-b386-94df-b58e-1484c3dd566b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not self.deadline then self.deadline=Now()+eventArgs.channelTimeMax*1000 end\nlocal remaining=self.deadline-Now()\nif remaining>3000 or remaining<1000 then return false end\nlocal caster=TensorCore.mGetEntity(eventArgs.entityID)\nreturn caster~=nil and caster.castinginfo.channelingid==eventArgs.spellID",
						name = "Request with 3 to 1 seconds remaining",
						uuid = "282af01f-52c1-ad98-80d5-1a26cbc97374",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 14,
						dequeueIfLuaFalse = true,
						jobIDList = 
						{
							19,
							21,
							32,
							37,
						},
						name = "Tanks only",
						uuid = "3fb19f3f-f3dc-c82f-91e3-74d0488ddd42",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1304,
						name = "Second Walk only",
						uuid = "c093b6d0-cedd-7d89-8089-c20c082fbcbd",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local elapsed = TensorReactions_CurrentCombatTimer\nreturn elapsed > 0 and elapsed < 115",
						dequeueIfLuaFalse = true,
						name = "Before arena transition",
						uuid = "55d3a39a-5c18-07b5-b1dd-115d586321c9",
						version = 3,
					},
				},
			},
			displayPath = "San d’Oria/Knockback safeguards",
			eventType = 3,
			name = "[Second Walk] Knockback protection - Kam'lanaut - First Princely Blow",
			timeout = 8,
			uuid = "a451d789-0123-0ebe-9ffb-c0ecb7073c8c",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal player = Player\nlocal spell = eventArgs.spellID\nif spell == 44219 and player.job ~= 19 and player.job ~= 21 and player.job ~= 32 and player.job ~= 37 then return end\n\nlocal toggles = TensorCore.API.TensorACR.getQuickToggles()\nfor _, toggle in ipairs(toggles or {}) do\n    local variable = toggle.var\n    if toggle.enabled and variable:match(\"_KBCancel$\") and _G[variable] == false then\n        local immunity\n        for _, hotbar in ipairs(TensorCore.API.TensorACR.getHotbarToggles() or {}) do\n            if hotbar.id == 7548 or hotbar.id == 7559 then\n                immunity = ActionList:Get(1, hotbar.id)\n                break\n            end\n        end\n        if not immunity or not immunity.isoncd then return end\n        if immunity.cdmax - immunity.cd <= 3 then return end\n        if TensorCore.hasBuff(player.id, immunity.id == 7548 and 1209 or 160) then return end\n\n        AllianceSecondWalkKB = { variable = variable, expires = Now() + 5100 }\n        _G[variable] = true\n        return\n    end\nend\n",
						conditions = 
						{
							
							{
								"820c4fb9-fdbc-86da-8d7c-45a976b0130d",
								true,
							},
							
							{
								"cc5bc2cf-435b-18d1-a796-a3f58d095b59",
								true,
							},
							
							{
								"1b3ae26f-a7b8-ca41-ae2c-4f479127b1ca",
								true,
							},
							
							{
								"6fcba471-9200-3e48-a608-54a590628f0a",
								true,
							},
						},
						name = "KB Cancel fallback - Tractor Beam",
						uuid = "f66c8f0d-67f2-2754-b5bd-5a6043db16a6",
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
						localmapid = 1304,
						name = "Second Walk only",
						uuid = "820c4fb9-fdbc-86da-8d7c-45a976b0130d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgType = 2,
						eventSpellID = 45190,
						name = "Exact mechanic",
						uuid = "cc5bc2cf-435b-18d1-a796-a3f58d095b59",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 2,
						eventEntityContentID = 14231,
						name = "Exact boss",
						uuid = "1b3ae26f-a7b8-ca41-ae2c-4f479127b1ca",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not self.deadline then self.deadline = Now() + eventArgs.channelTimeMax * 1000 end\nlocal remaining = self.deadline - Now()\nif remaining > 3000 or remaining < 1000 then return false end\nlocal caster = TensorCore.mGetEntity(eventArgs.entityID)\nreturn caster ~= nil and caster.castinginfo.channelingid == eventArgs.spellID",
						name = "Three to one seconds before resolution",
						uuid = "6fcba471-9200-3e48-a608-54a590628f0a",
						version = 3,
					},
				},
			},
			displayPath = "San d’Oria/Knockback safeguards",
			eventType = 3,
			name = "KB Cancel fallback - Tractor Beam",
			timeout = 12,
			uuid = "cc4a128f-af2d-dc79-9b44-b5c7e9d82c85",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal player = Player\nlocal spell = eventArgs.spellID\nif spell == 44219 and player.job ~= 19 and player.job ~= 21 and player.job ~= 32 and player.job ~= 37 then return end\n\nlocal toggles = TensorCore.API.TensorACR.getQuickToggles()\nfor _, toggle in ipairs(toggles or {}) do\n    local variable = toggle.var\n    if toggle.enabled and variable:match(\"_KBCancel$\") and _G[variable] == false then\n        local immunity\n        for _, hotbar in ipairs(TensorCore.API.TensorACR.getHotbarToggles() or {}) do\n            if hotbar.id == 7548 or hotbar.id == 7559 then\n                immunity = ActionList:Get(1, hotbar.id)\n                break\n            end\n        end\n        if not immunity or not immunity.isoncd then return end\n        if immunity.cdmax - immunity.cd <= 3 then return end\n        if TensorCore.hasBuff(player.id, immunity.id == 7548 and 1209 or 160) then return end\n\n        AllianceSecondWalkKB = { variable = variable, expires = Now() + 5100 }\n        _G[variable] = true\n        return\n    end\nend\n",
						conditions = 
						{
							
							{
								"dc7b45bd-235c-939b-9045-501e958269f5",
								true,
							},
							
							{
								"07829b01-3c46-b71d-892f-c15144b50f93",
								true,
							},
							
							{
								"42ccc1fd-5490-9825-9217-28589d237162",
								true,
							},
							
							{
								"e9251bdd-2a90-98b3-971c-b1ede65d765d",
								true,
							},
						},
						name = "KB Cancel fallback - Shield Bash",
						uuid = "a81c9668-d181-46ce-903e-2139e792aded",
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
						localmapid = 1304,
						name = "Second Walk only",
						uuid = "dc7b45bd-235c-939b-9045-501e958269f5",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgType = 2,
						eventSpellID = 44222,
						name = "Exact mechanic",
						uuid = "07829b01-3c46-b71d-892f-c15144b50f93",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 2,
						eventEntityContentID = 14043,
						name = "Exact boss",
						uuid = "42ccc1fd-5490-9825-9217-28589d237162",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not self.deadline then self.deadline = Now() + eventArgs.channelTimeMax * 1000 end\nlocal remaining = self.deadline - Now()\nif remaining > 3000 or remaining < 1000 then return false end\nlocal caster = TensorCore.mGetEntity(eventArgs.entityID)\nreturn caster ~= nil and caster.castinginfo.channelingid == eventArgs.spellID",
						name = "Three to one seconds before resolution",
						uuid = "e9251bdd-2a90-98b3-971c-b1ede65d765d",
						version = 3,
					},
				},
			},
			displayPath = "San d’Oria/Knockback safeguards",
			eventType = 3,
			name = "KB Cancel fallback - Shield Bash",
			timeout = 12,
			uuid = "badbdd59-4945-5cec-b019-041b21edc184",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal player = Player\nlocal spell = eventArgs.spellID\nif spell == 44219 and player.job ~= 19 and player.job ~= 21 and player.job ~= 32 and player.job ~= 37 then return end\n\nlocal toggles = TensorCore.API.TensorACR.getQuickToggles()\nfor _, toggle in ipairs(toggles or {}) do\n    local variable = toggle.var\n    if toggle.enabled and variable:match(\"_KBCancel$\") and _G[variable] == false then\n        local immunity\n        for _, hotbar in ipairs(TensorCore.API.TensorACR.getHotbarToggles() or {}) do\n            if hotbar.id == 7548 or hotbar.id == 7559 then\n                immunity = ActionList:Get(1, hotbar.id)\n                break\n            end\n        end\n        if not immunity or not immunity.isoncd then return end\n        if immunity.cdmax - immunity.cd <= 3 then return end\n        if TensorCore.hasBuff(player.id, immunity.id == 7548 and 1209 or 160) then return end\n\n        AllianceSecondWalkKB = { variable = variable, expires = Now() + 5100 }\n        _G[variable] = true\n        return\n    end\nend\n",
						conditions = 
						{
							
							{
								"ced704ef-d4f6-0ffa-b93d-5e0e4beeb126",
								true,
							},
							
							{
								"afd427d5-b081-1fff-998b-7e63bb0cfc39",
								true,
							},
							
							{
								"32c0e496-575b-f366-a9f6-281ee2623cbf",
								true,
							},
							
							{
								"be6432a2-3aa9-a197-882c-610a01297409",
								true,
							},
						},
						name = "KB Cancel fallback - Princely Blow (tanks)",
						uuid = "52cb682d-2e4f-d7af-be93-b9062edcd94a",
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
						localmapid = 1304,
						name = "Second Walk only",
						uuid = "ced704ef-d4f6-0ffa-b93d-5e0e4beeb126",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgType = 2,
						eventSpellID = 44219,
						name = "Exact mechanic",
						uuid = "afd427d5-b081-1fff-998b-7e63bb0cfc39",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 2,
						eventEntityContentID = 14043,
						name = "Exact boss",
						uuid = "32c0e496-575b-f366-a9f6-281ee2623cbf",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not self.deadline then self.deadline = Now() + eventArgs.channelTimeMax * 1000 end\nlocal remaining = self.deadline - Now()\nif remaining > 3000 or remaining < 1000 then return false end\nlocal caster = TensorCore.mGetEntity(eventArgs.entityID)\nreturn caster ~= nil and caster.castinginfo.channelingid == eventArgs.spellID",
						name = "Three to one seconds before resolution",
						uuid = "be6432a2-3aa9-a197-882c-610a01297409",
						version = 3,
					},
				},
			},
			displayPath = "San d’Oria/Knockback safeguards",
			eventType = 3,
			name = "KB Cancel fallback - Princely Blow (tanks)",
			timeout = 12,
			uuid = "8d14a482-4ee7-2c6e-b83d-56b53f487b88",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal player = Player\nlocal spell = eventArgs.spellID\nif spell == 44219 and player.job ~= 19 and player.job ~= 21 and player.job ~= 32 and player.job ~= 37 then return end\n\nlocal toggles = TensorCore.API.TensorACR.getQuickToggles()\nfor _, toggle in ipairs(toggles or {}) do\n    local variable = toggle.var\n    if toggle.enabled and variable:match(\"_KBCancel$\") and _G[variable] == false then\n        local immunity\n        for _, hotbar in ipairs(TensorCore.API.TensorACR.getHotbarToggles() or {}) do\n            if hotbar.id == 7548 or hotbar.id == 7559 then\n                immunity = ActionList:Get(1, hotbar.id)\n                break\n            end\n        end\n        if not immunity or not immunity.isoncd then return end\n        if immunity.cdmax - immunity.cd <= 3 then return end\n        if TensorCore.hasBuff(player.id, immunity.id == 7548 and 1209 or 160) then return end\n\n        AllianceSecondWalkKB = { variable = variable, expires = Now() + 5100 }\n        _G[variable] = true\n        return\n    end\nend\n",
						conditions = 
						{
							
							{
								"f486ab98-06f5-d9ac-a0bc-e255f5e6f5f5",
								true,
							},
							
							{
								"6a970c52-ac2b-4f2e-8d87-a4dd87f1a3c1",
								true,
							},
							
							{
								"73a0cad0-1e25-172f-9acb-27138e20d613",
								true,
							},
							
							{
								"313193bc-bb0c-66da-b2a9-b5e1897415ff",
								true,
							},
						},
						name = "KB Cancel fallback - Tornado draw-in",
						uuid = "2b3471c7-8c99-7beb-ae76-c1757363dfe0",
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
						localmapid = 1304,
						name = "Second Walk only",
						uuid = "f486ab98-06f5-d9ac-a0bc-e255f5e6f5f5",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgType = 2,
						eventSpellID = 44395,
						name = "Exact mechanic",
						uuid = "6a970c52-ac2b-4f2e-8d87-a4dd87f1a3c1",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 2,
						eventEntityContentID = 14086,
						name = "Exact boss",
						uuid = "73a0cad0-1e25-172f-9acb-27138e20d613",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not self.deadline then self.deadline = Now() + eventArgs.channelTimeMax * 1000 end\nlocal remaining = self.deadline - Now()\nif remaining > 3000 or remaining < 1000 then return false end\nlocal caster = TensorCore.mGetEntity(eventArgs.entityID)\nreturn caster ~= nil and caster.castinginfo.channelingid == eventArgs.spellID",
						name = "Three to one seconds before resolution",
						uuid = "313193bc-bb0c-66da-b2a9-b5e1897415ff",
						version = 3,
					},
				},
			},
			displayPath = "San d’Oria/Knockback safeguards",
			eventType = 3,
			name = "KB Cancel fallback - Tornado draw-in",
			timeout = 12,
			uuid = "dca79671-1c76-9be2-ba6b-1c7f7952a41a",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local state = AllianceSecondWalkKB\nif not state then return end\nif Now() < state.expires and Player.localmapid == 1304 and TensorReactions_CurrentCombatTimer > 0 then return end\n_G[state.variable] = false\nAllianceSecondWalkKB = nil",
						conditions = 
						{
							
							{
								"534a0a2f-64d7-6cef-a191-b12ba6829d42",
								true,
							},
						},
						name = "Restore KB Cancel after knockback",
						uuid = "1a63f4a6-fcc0-d3d5-93ac-6ce8a8a77631",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return AllianceSecondWalkKB ~= nil",
						dequeueIfLuaFalse = true,
						name = "Owned KB Cancel window",
						uuid = "534a0a2f-64d7-6cef-a191-b12ba6829d42",
						version = 3,
					},
				},
			},
			displayPath = "San d’Oria/Knockback safeguards",
			name = "Restore KB Cancel after knockback",
			timeout = 1,
			uuid = "b47b284e-e21d-fc41-85b1-57b4c3b91015",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "San d’Oria",
			name = "Eald’narche",
			uuid = "196e47f0-aa63-14d4-8b7a-4e6343913e9b",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "San d’Oria/Eald’narche",
			name = "Alerts",
			uuid = "12832852-36a6-b589-bf7a-3eb2b5b43494",
		},
		objectType = "folder",
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
						alertScale = 1.1499999761581,
						alertTTS = true,
						alertText = "Flood: get away from the middle!",
						conditions = 
						{
							
							{
								"eef36ca4-3b10-9751-a10a-183ae9e08489",
								true,
							},
							
							{
								"4f6333a1-467a-d0a8-85ec-149c9684445f",
								true,
							},
							
							{
								"c039d5bd-e3ab-9b8c-9d77-dfb3841f38d8",
								true,
							},
						},
						uuid = "069011f8-358b-fa60-8cd7-f3181bccf169",
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
						localmapid = 1304,
						name = "Second Walk only",
						uuid = "eef36ca4-3b10-9751-a10a-183ae9e08489",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgType = 2,
						eventSpellID = 44390,
						name = "Exact mechanic",
						uuid = "4f6333a1-467a-d0a8-85ec-149c9684445f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 2,
						eventEntityContentID = 14086,
						name = "Exact boss",
						uuid = "c039d5bd-e3ab-9b8c-9d77-dfb3841f38d8",
						version = 3,
					},
				},
			},
			displayPath = "San d’Oria/Eald’narche/Alerts",
			eventType = 3,
			name = "[Eald’narche] Flood proximity - move away",
			timeout = 1,
			uuid = "b0f38887-78bd-772b-b9cf-58c58d5d7a34",
			version = 2,
		},
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
						alertScale = 1.1499999761581,
						alertTTS = true,
						alertText = "Flood: move into the cleared middle!",
						conditions = 
						{
							
							{
								"0e555a7e-f4c1-478d-90ad-3767a0bed669",
								true,
							},
							
							{
								"9df591f7-8024-c25d-8667-e16983f96f17",
								true,
							},
							
							{
								"d54739d4-c66b-bc5f-a266-b17199f0b274",
								true,
							},
						},
						uuid = "6ec53aa5-b60c-b7f7-bacd-f2ea8c73c38a",
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
						localmapid = 1304,
						name = "Second Walk only",
						uuid = "0e555a7e-f4c1-478d-90ad-3767a0bed669",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgType = 2,
						eventSpellID = 44391,
						name = "Exact mechanic",
						uuid = "9df591f7-8024-c25d-8667-e16983f96f17",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 2,
						eventEntityContentID = 14086,
						name = "Exact boss",
						uuid = "d54739d4-c66b-bc5f-a266-b17199f0b274",
						version = 3,
					},
				},
			},
			displayPath = "San d’Oria/Eald’narche/Alerts",
			eventType = 2,
			name = "[Eald’narche] Flood rings - move in after first hit",
			timeout = 1,
			uuid = "ef08d143-5ea9-e92c-8c11-b7b2c35d7119",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "San d’Oria",
			name = "Ealdnarche",
			uuid = "5717b34f-17f6-7895-9504-5bfed0b8c111",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "San d’Oria/Ealdnarche",
			name = "Draws",
			uuid = "a752e3d2-9b6e-e906-a760-ec21c05e69d6",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal caster = TensorCore.mGetEntity(eventArgs.entityID)\nif not caster then return end\nlocal p = caster.pos\nlocal x, z = math.floor(p.x + 0.5), math.floor(p.z + 0.5)\nlocal heading = p.h\nlocal dx = math.floor(math.sin(heading) * 4 + 0.5)\nlocal dz = math.floor(math.cos(heading) * 4 + 0.5)\nif math.abs(dx) + math.abs(dz) ~= 4 then return end\n\ndata.secondWalkGaea = data.secondWalkGaea or {}\nlocal draws = data.secondWalkGaea\nlocal now = Now()\nfor key, entry in pairs(draws) do\n    if entry.expires <= now then draws[key] = nil end\nend\n\nlocal function preview(px, pz, lifetime, color)\n    local key = (\"%d:%d:%d:%d\"):format(px, pz, dx, dz)\n    local previous = draws[key]\n    if previous then Argus.deleteTimedShape(previous.uuid) end\n    local uuid = Argus2.addTimedRectFilled(lifetime, px, p.y, pz, 4, 24, heading, color, color)\n    if uuid then draws[key] = { uuid = uuid, expires = now + lifetime } end\nend\n\nlocal lifetime = math.floor(eventArgs.channelTimeMax * 1000 + 500)\npreview(x, z, lifetime, 0x660000FF)\nlocal nextX, nextZ = x + dx, z + dz\nif math.abs(nextX - 800) <= 20 and math.abs(nextZ + 800) <= 20 then\n    preview(nextX, nextZ, lifetime + 2100, 0x440080FF)\nend\n",
						conditions = 
						{
							
							{
								"1576d38c-6264-55be-864b-902bf90a5805",
								true,
							},
							
							{
								"3f5633ce-63c6-1cbb-8050-2b947605243d",
								true,
							},
							
							{
								"9de75579-159e-3c60-84c0-dfc7f59b2c21",
								true,
							},
						},
						name = "Gaea Stream - Preview opening lanes",
						uuid = "d22e437f-66b6-5df5-8aa6-b001df044be6",
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
						localmapid = 1304,
						name = "Second Walk only",
						uuid = "1576d38c-6264-55be-864b-902bf90a5805",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgType = 2,
						eventSpellID = 44372,
						name = "Exact mechanic",
						uuid = "3f5633ce-63c6-1cbb-8050-2b947605243d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 2,
						eventEntityContentID = 14086,
						name = "Exact boss",
						uuid = "9de75579-159e-3c60-84c0-dfc7f59b2c21",
						version = 3,
					},
				},
			},
			displayPath = "San d’Oria/Ealdnarche/Draws",
			eventType = 3,
			name = "Gaea Stream - Preview opening lanes",
			timeout = 1,
			uuid = "c8b41e67-6b94-b5d4-a9d6-f412bf51d7a6",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal caster = TensorCore.mGetEntity(eventArgs.entityID)\nif not caster then return end\nlocal p = caster.pos\nlocal x, z = math.floor(p.x + 0.5), math.floor(p.z + 0.5)\nlocal heading = p.h\nlocal dx = math.floor(math.sin(heading) * 4 + 0.5)\nlocal dz = math.floor(math.cos(heading) * 4 + 0.5)\nif math.abs(dx) + math.abs(dz) ~= 4 then return end\n\ndata.secondWalkGaea = data.secondWalkGaea or {}\nlocal draws = data.secondWalkGaea\nlocal now = Now()\nfor key, entry in pairs(draws) do\n    if entry.expires <= now then draws[key] = nil end\nend\n\nlocal function preview(px, pz, lifetime, color)\n    local key = (\"%d:%d:%d:%d\"):format(px, pz, dx, dz)\n    local previous = draws[key]\n    if previous then Argus.deleteTimedShape(previous.uuid) end\n    local uuid = Argus2.addTimedRectFilled(lifetime, px, p.y, pz, 4, 24, heading, color, color)\n    if uuid then draws[key] = { uuid = uuid, expires = now + lifetime } end\nend\n\nlocal lifetime = math.floor(eventArgs.channelTimeMax * 1000 + 500)\npreview(x, z, lifetime, 0x660000FF)\nlocal nextX, nextZ = x + dx, z + dz\nif math.abs(nextX - 800) <= 20 and math.abs(nextZ + 800) <= 20 then\n    preview(nextX, nextZ, lifetime + 2100, 0x440080FF)\nend\n",
						conditions = 
						{
							
							{
								"6467e4c4-075a-6eb6-8ea5-c7471e774b23",
								true,
							},
							
							{
								"516da668-4d41-4c26-a5ca-87a28abf4a86",
								true,
							},
							
							{
								"39f907bb-3328-3f45-8d00-3c2710a2e459",
								true,
							},
						},
						name = "Gaea Stream - Preview advancing lanes",
						uuid = "7510d9d5-faa5-705c-a1fb-7b4aa2b23d08",
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
						localmapid = 1304,
						name = "Second Walk only",
						uuid = "6467e4c4-075a-6eb6-8ea5-c7471e774b23",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgType = 2,
						eventSpellID = 44373,
						name = "Exact mechanic",
						uuid = "516da668-4d41-4c26-a5ca-87a28abf4a86",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 2,
						eventEntityContentID = 14086,
						name = "Exact boss",
						uuid = "39f907bb-3328-3f45-8d00-3c2710a2e459",
						version = 3,
					},
				},
			},
			displayPath = "San d’Oria/Ealdnarche/Draws",
			eventType = 3,
			name = "Gaea Stream - Preview advancing lanes",
			timeout = 1,
			uuid = "9d116faa-8420-b77a-808d-bc85db1d80cf",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal draws = data.secondWalkGaea\nlocal caster = TensorCore.mGetEntity(eventArgs.entityID)\nif not draws or not caster then return end\nlocal p = caster.pos\nlocal dx = math.floor(math.sin(eventArgs.heading) * 4 + 0.5)\nlocal dz = math.floor(math.cos(eventArgs.heading) * 4 + 0.5)\nlocal key = (\"%d:%d:%d:%d\"):format(math.floor(p.x + 0.5), math.floor(p.z + 0.5), dx, dz)\nlocal entry = draws[key]\nif entry then\n    Argus.deleteTimedShape(entry.uuid)\n    draws[key] = nil\nend\n",
						conditions = 
						{
							
							{
								"ba92e785-a936-1a91-95c2-0feea7b4021b",
								true,
							},
							
							{
								"1caa6717-e865-6041-9a54-137ba43bfbf9",
								true,
							},
							
							{
								"876dbc83-32d5-1fe5-8111-a278600a3dbd",
								true,
							},
						},
						name = "Gaea Stream - Clear executed opening lane",
						uuid = "cd0d4367-5f4b-0e6b-a839-a79c40c3653e",
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
						localmapid = 1304,
						name = "Second Walk only",
						uuid = "ba92e785-a936-1a91-95c2-0feea7b4021b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgType = 2,
						eventSpellID = 44372,
						name = "Exact mechanic",
						uuid = "1caa6717-e865-6041-9a54-137ba43bfbf9",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 2,
						eventEntityContentID = 14086,
						name = "Exact boss",
						uuid = "876dbc83-32d5-1fe5-8111-a278600a3dbd",
						version = 3,
					},
				},
			},
			displayPath = "San d’Oria/Ealdnarche/Draws",
			eventType = 2,
			name = "Gaea Stream - Clear executed opening lane",
			timeout = 1,
			uuid = "f7bcaa45-0e6c-aa00-8742-10f1959693ec",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal draws = data.secondWalkGaea\nlocal caster = TensorCore.mGetEntity(eventArgs.entityID)\nif not draws or not caster then return end\nlocal p = caster.pos\nlocal dx = math.floor(math.sin(eventArgs.heading) * 4 + 0.5)\nlocal dz = math.floor(math.cos(eventArgs.heading) * 4 + 0.5)\nlocal key = (\"%d:%d:%d:%d\"):format(math.floor(p.x + 0.5), math.floor(p.z + 0.5), dx, dz)\nlocal entry = draws[key]\nif entry then\n    Argus.deleteTimedShape(entry.uuid)\n    draws[key] = nil\nend\n",
						conditions = 
						{
							
							{
								"1ee9df09-abf4-154c-ba04-2d425c8c256a",
								true,
							},
							
							{
								"57cbcdc3-89f4-7bc1-b5a7-01b634d716f2",
								true,
							},
							
							{
								"a0543e6c-4cd7-bbd7-b000-46341066577c",
								true,
							},
						},
						name = "Gaea Stream - Clear executed advancing lane",
						uuid = "2e4898d3-bcd8-0145-ae80-318d47509e51",
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
						localmapid = 1304,
						name = "Second Walk only",
						uuid = "1ee9df09-abf4-154c-ba04-2d425c8c256a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgType = 2,
						eventSpellID = 44373,
						name = "Exact mechanic",
						uuid = "57cbcdc3-89f4-7bc1-b5a7-01b634d716f2",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 2,
						eventEntityContentID = 14086,
						name = "Exact boss",
						uuid = "a0543e6c-4cd7-bbd7-b000-46341066577c",
						version = 3,
					},
				},
			},
			displayPath = "San d’Oria/Ealdnarche/Draws",
			eventType = 2,
			name = "Gaea Stream - Clear executed advancing lane",
			timeout = 1,
			uuid = "1cc5c7b4-040f-ca8b-9dea-d8c46f3babe2",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Syrcus Tower",
			uuid = "fbf8e6e8-9491-32eb-b29d-d7de1a43870a",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Syrcus Tower",
			name = "Scylla",
			uuid = "af5581a6-8fbe-edfa-8353-1f6d2dc78506",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\n-- Syrcus Tower is level synced to 50. Forecasts use each boss's own combat clock.\nlocal api = TensorCore.API.TensorACR\nlocal ok, elapsed = pcall(api.getAutoSimTime)\ndata.syrcusForecasts = data.syrcusForecasts or {}\nif not data.syrcusForecasts[2809] and ok and type(elapsed) == \"number\" and elapsed >= 0 and elapsed <= 125 then\n    api.setAutoSimKillTime(109)\n    for _, phase in ipairs({\"FullDowntime\", \"Stun\", \"CasterDowntime\", \"GroundFieldMovement\"}) do\n        api.clearAutoSimPhases(phase)\n    end\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0, 10)\n    data.syrcusForecasts[2809] = true\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"15772031-949a-adb7-a04c-d58fa3c2b05b",
								true,
							},
						},
						name = "[Syrcus AutoSim] Scylla",
						uuid = "45dfbfc2-842b-b712-ae0e-478562d6a4b8",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 372 and (eventArgs.entityContentID == 2809 and eventArgs.spellID == 2321)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "15772031-949a-adb7-a04c-d58fa3c2b05b",
						version = 3,
					},
				},
			},
			displayPath = "Syrcus Tower/Scylla",
			eventType = 3,
			name = "[Syrcus AutoSim] Scylla",
			uuid = "f44e28dd-de49-8cf0-a0b6-03b11f7753f7",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Syrcus Tower",
			name = "Glasya Labolas",
			uuid = "50bf6d78-51de-d588-a8e0-8dadf27cf0fc",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\n-- Syrcus Tower is level synced to 50. Forecasts use each boss's own combat clock.\nlocal api = TensorCore.API.TensorACR\nlocal ok, elapsed = pcall(api.getAutoSimTime)\ndata.syrcusForecasts = data.syrcusForecasts or {}\nif not data.syrcusForecasts[2815] and ok and type(elapsed) == \"number\" and elapsed >= 0 and elapsed <= 125 then\n    api.setAutoSimKillTime(73)\n    for _, phase in ipairs({\"FullDowntime\", \"Stun\", \"CasterDowntime\", \"GroundFieldMovement\"}) do\n        api.clearAutoSimPhases(phase)\n    end\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0, 10)\n    data.syrcusForecasts[2815] = true\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"fac05bfe-f951-bdf8-95b3-c1682ecd7278",
								true,
							},
						},
						name = "[Syrcus AutoSim] Glasya Labolas",
						uuid = "4753d55f-0f9c-f8a8-848a-8e04caf98fda",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 372 and (eventArgs.entityContentID == 2815 and eventArgs.spellID == 2348)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "fac05bfe-f951-bdf8-95b3-c1682ecd7278",
						version = 3,
					},
				},
			},
			displayPath = "Syrcus Tower/Glasya Labolas",
			eventType = 3,
			name = "[Syrcus AutoSim] Glasya Labolas",
			uuid = "48303a27-0ed0-9213-957e-ed73269d98e6",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Syrcus Tower",
			name = "Xande",
			uuid = "b93f84cb-61e0-a1d9-9647-f15370f2864a",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\n-- Syrcus Tower is level synced to 50. Forecasts use each boss's own combat clock.\nlocal api = TensorCore.API.TensorACR\nlocal ok, elapsed = pcall(api.getAutoSimTime)\ndata.syrcusForecasts = data.syrcusForecasts or {}\nif not data.syrcusForecasts[2824] and ok and type(elapsed) == \"number\" and elapsed >= 0 and elapsed <= 125 then\n    api.setAutoSimKillTime(179)\n    for _, phase in ipairs({\"FullDowntime\", \"Stun\", \"CasterDowntime\", \"GroundFieldMovement\"}) do\n        api.clearAutoSimPhases(phase)\n    end\n    -- Meteor circles remain attackable while Xande is absent.\n    for _, gap in ipairs({{46,54},{70,77.3},{111.5,119.1},{141.2,148.6}}) do\n        api.addAutoSimPhase(\"FullDowntime\", gap[1], gap[2], 1)\n    end\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0, 10)\n    data.syrcusForecasts[2824] = true\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"900b00da-6c11-ce9e-8bb3-2aa222a5e56b",
								true,
							},
						},
						name = "[Syrcus AutoSim] Xande",
						uuid = "b5f1e63a-6bae-c323-a441-748fc0626ee4",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 372 and (eventArgs.entityContentID == 2824 and eventArgs.spellID == 2356)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "900b00da-6c11-ce9e-8bb3-2aa222a5e56b",
						version = 3,
					},
				},
			},
			displayPath = "Syrcus Tower/Xande",
			eventType = 3,
			name = "[Syrcus AutoSim] Xande",
			uuid = "f1dc5812-4f25-61ef-8e98-6c99b6e1d0d7",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Syrcus Tower",
			name = "Setup",
			uuid = "0d77697f-b8be-421f-a7b6-47e64fded099",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\ngStartCombat = false\nlocal settings = AnyoneCore and AnyoneCore.Settings\nif settings then\n    if settings.DutyHelper then settings.DutyHelper.enabled = false end\n    if settings.PrepullHelper then settings.PrepullHelper.enabled = false end\nend\nlocal player = TensorCore.mGetPlayer()\nlocal closest, distance\nfor _, cid in ipairs({2809,2815,2821,2824}) do\n    for _, boss in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=cid}) or {}) do\n        if player and player.pos and boss.pos and boss.alive and boss.targetable then\n            local d = TensorCore.getDistance2d(player.pos, boss.pos)\n            if d < 80 and (not distance or d < distance) then closest, distance = boss, d end\n        end\n    end\nend\nif closest then Player:SetTarget(closest.id) end\nself.used = true\n",
						conditions = 
						{
							
							{
								"a744230a-45fc-3403-8793-980423c8a1a0",
								true,
							},
						},
						name = "[Syrcus] Countdown boss target",
						uuid = "85118a86-311c-ca5b-a853-0bca1e4d5a86",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 372 and (true)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "a744230a-45fc-3403-8793-980423c8a1a0",
						version = 3,
					},
				},
			},
			displayPath = "Syrcus Tower/Setup",
			eventType = 16,
			name = "[Syrcus] Countdown boss target",
			uuid = "29100b85-e76b-1aab-ab0f-45f533b7a422",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\ngStartCombat = false\nlocal settings = AnyoneCore and AnyoneCore.Settings\nif settings then\n    if settings.DutyHelper then settings.DutyHelper.enabled = false end\n    if settings.PrepullHelper then settings.PrepullHelper.enabled = false end\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"9ee90dd8-9b45-59ba-87c8-c2021171fd31",
								true,
							},
						},
						name = "[Syrcus] Helper setup",
						uuid = "b2ad61a1-fbc7-277e-a6f4-72f986b0ab53",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 372 and (true)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "9ee90dd8-9b45-59ba-87c8-c2021171fd31",
						version = 3,
					},
				},
			},
			displayPath = "Syrcus Tower/Setup",
			eventType = 11,
			name = "[Syrcus] Helper setup",
			uuid = "018ccbff-389a-4aa1-baa7-019ba26a55be",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Syrcus Tower",
			name = "Amon",
			uuid = "7f9a4207-e36c-105e-8ea7-fcec65c3b3b7",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\n-- Syrcus Tower is level synced to 50. Forecasts use each boss's own combat clock.\nlocal api = TensorCore.API.TensorACR\nlocal ok, elapsed = pcall(api.getAutoSimTime)\ndata.syrcusForecasts = data.syrcusForecasts or {}\nif not data.syrcusForecasts[2821] and ok and type(elapsed) == \"number\" and elapsed >= 0 and elapsed <= 125 then\n    api.setAutoSimKillTime(118)\n    for _, phase in ipairs({\"FullDowntime\", \"Stun\", \"CasterDowntime\", \"GroundFieldMovement\"}) do\n        api.clearAutoSimPhases(phase)\n    end\n    api.clearAutoSimUncertainty()\n    api.addAutoSimUncertainty(0, 10)\n    data.syrcusForecasts[2821] = true\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"a66a35fa-a963-6884-8161-a5da8d6881ca",
								true,
							},
						},
						name = "[Syrcus AutoSim] Amon",
						uuid = "b00641fd-82b8-d7dc-8a2a-2c329efc2dfe",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 372 and (eventArgs.entityContentID == 2821 and eventArgs.spellID == 2441)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "a66a35fa-a963-6884-8161-a5da8d6881ca",
						version = 3,
					},
				},
			},
			displayPath = "Syrcus Tower/Amon",
			eventType = 3,
			name = "[Syrcus AutoSim] Amon",
			uuid = "2e5c6026-d3a6-3484-baf0-f2a3da0b67b3",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "\nlocal actor = TensorCore.mGetEntity(eventArgs.entityID)\nlocal ms = math.floor(eventArgs.channelTimeMax * 1000)\nif actor and actor.pos and ms > 0 then\n    AnyoneCore.addTimedWorldText(ms, \"Hide behind frozen players\", {x=actor.pos.x,y=actor.pos.y+3,z=actor.pos.z}, 0xFFFFFFFF, true, 1.2)\n    AnyoneCore.addWorldTextCountdown(ms, {x=actor.pos.x,y=actor.pos.y+2,z=actor.pos.z}, 0xFFFFFFFF, true, 1.2)\nend\nself.used = true\n",
						conditions = 
						{
							
							{
								"cd789b39-8275-c803-b3ed-2db20f65c0f7",
								true,
							},
						},
						name = "[Syrcus] Curtain Call countdown",
						uuid = "d345deee-b06c-45a1-a71a-1e13f3b48713",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nreturn p ~= nil and p.localmapid == 372 and (eventArgs.entityContentID == 2821 and eventArgs.spellID == 2441)",
						dequeueIfLuaFalse = true,
						name = "Duty and mechanic",
						uuid = "cd789b39-8275-c803-b3ed-2db20f65c0f7",
						version = 3,
					},
				},
			},
			displayPath = "Syrcus Tower/Amon",
			eventType = 3,
			name = "[Syrcus] Curtain Call countdown",
			uuid = "5ba7bb66-e98d-5307-849e-1815fb22d22b",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "The World of Darkness",
			uuid = "b2f0feab-3279-917f-80d9-f65212b3786c",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The World of Darkness",
			name = "AutoSim",
			uuid = "162cc00d-9546-7b2e-bd81-3ee65b8d8ad6",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\nlocal api = TensorCore.API.TensorACR\napi.setAutoSimKillTime(160)\napi.clearAutoSimUncertainty()\napi.addAutoSimUncertainty(0, 20)\napi.clearAutoSimPhases(\"FullDowntime\")\napi.clearAutoSimPhases(\"CasterDowntime\")\nfor _, window in ipairs({{15, 17.3}, {30, 34}, {61, 64}, {81, 83.3}, {91, 95}, {119, 122}}) do\n    api.addAutoSimPhase(\"CasterDowntime\", window[1], window[2])\nend\ndata.wodAutoSim = {boss = eventArgs.entityID, content = 3231}\n\nself.used = true",
						conditions = 
						{
							
							{
								"fc817fd9-b2d4-4ccb-b84f-0bfc3c65634b",
								true,
							},
							
							{
								"e0e18917-81c9-44fe-8312-13030ddafb8a",
								true,
							},
							
							{
								"84a4b17f-0e42-df4a-a201-83dc634c6e3a",
								true,
							},
							
							{
								"f1e564aa-9b23-3e73-9734-bb9accb2c814",
								true,
							},
							
							{
								"eca59eb7-06e2-2fb3-a9bf-5f812afc1f28",
								true,
							},
						},
						name = "Load boss forecast once",
						uuid = "25f135ae-3d09-55cc-a1a6-f65fda324908",
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
						localmapid = 151,
						name = "World of Darkness only",
						uuid = "fc817fd9-b2d4-4ccb-b84f-0bfc3c65634b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 3508,
						name = "Exact action",
						uuid = "e0e18917-81c9-44fe-8312-13030ddafb8a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 3231,
						name = "Exact source",
						uuid = "84a4b17f-0e42-df4a-a201-83dc634c6e3a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return not data.wodAutoSim or data.wodAutoSim.boss ~= eventArgs.entityID",
						dequeueIfLuaFalse = true,
						name = "Boss schedule not loaded",
						uuid = "f1e564aa-9b23-3e73-9734-bb9accb2c814",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then return false end\nlocal ok, elapsed = pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(elapsed) == \"number\" and elapsed > 0 and elapsed < 30",
						name = "AutoSim clock ready",
						uuid = "eca59eb7-06e2-2fb3-a9bf-5f812afc1f28",
						version = 3,
					},
				},
			},
			displayPath = "The World of Darkness/AutoSim",
			eventType = 2,
			name = "[World of Darkness] Angra Mainyu AutoSim start",
			uuid = "7e90255f-8b08-7dcb-9b38-fd6a45b2306d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\nlocal api = TensorCore.API.TensorACR\napi.setAutoSimKillTime(160)\napi.clearAutoSimUncertainty()\napi.addAutoSimUncertainty(0, 20)\napi.clearAutoSimPhases(\"FullDowntime\")\napi.clearAutoSimPhases(\"CasterDowntime\")\nfor _, window in ipairs({}) do\n    api.addAutoSimPhase(\"CasterDowntime\", window[1], window[2])\nend\ndata.wodAutoSim = {boss = eventArgs.entityID, content = 3227}\n\nself.used = true",
						conditions = 
						{
							
							{
								"b6210714-44c6-e983-9ea7-c5d91cd0e7bd",
								true,
							},
							
							{
								"6c8269d0-d97d-9122-b255-be26487057a0",
								true,
							},
							
							{
								"29db47dc-b7c8-6271-a1b8-ea908fe4692c",
								true,
							},
							
							{
								"5b5a06ac-2f7b-c202-80ee-1781f208f31a",
								true,
							},
							
							{
								"0e392080-0aea-9982-b19d-25284dce8cb8",
								true,
							},
						},
						name = "Load boss forecast once",
						uuid = "fdfeb934-9560-e424-b699-c47699ff60ed",
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
						localmapid = 151,
						name = "World of Darkness only",
						uuid = "b6210714-44c6-e983-9ea7-c5d91cd0e7bd",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 3355,
						name = "Exact action",
						uuid = "6c8269d0-d97d-9122-b255-be26487057a0",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 3227,
						name = "Exact source",
						uuid = "29db47dc-b7c8-6271-a1b8-ea908fe4692c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return not data.wodAutoSim or data.wodAutoSim.boss ~= eventArgs.entityID",
						dequeueIfLuaFalse = true,
						name = "Boss schedule not loaded",
						uuid = "5b5a06ac-2f7b-c202-80ee-1781f208f31a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then return false end\nlocal ok, elapsed = pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(elapsed) == \"number\" and elapsed > 0 and elapsed < 30",
						name = "AutoSim clock ready",
						uuid = "0e392080-0aea-9982-b19d-25284dce8cb8",
						version = 3,
					},
				},
			},
			displayPath = "The World of Darkness/AutoSim",
			eventType = 2,
			name = "[World of Darkness] Five-headed Dragon AutoSim start",
			uuid = "702bfa01-d454-0447-af90-7c6139ee9b1b",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\nlocal api = TensorCore.API.TensorACR\napi.setAutoSimKillTime(180)\napi.clearAutoSimUncertainty()\napi.addAutoSimUncertainty(0, 20)\napi.clearAutoSimPhases(\"FullDowntime\")\napi.clearAutoSimPhases(\"CasterDowntime\")\nfor _, window in ipairs({}) do\n    api.addAutoSimPhase(\"CasterDowntime\", window[1], window[2])\nend\ndata.wodAutoSim = {boss = eventArgs.entityID, content = 3234}\n\nself.used = true",
						conditions = 
						{
							
							{
								"888bc602-0bff-0907-bf7f-95c771221898",
								true,
							},
							
							{
								"0e12b122-8882-c239-8242-c90dccb2b203",
								true,
							},
							
							{
								"e21c32f7-441b-7e0c-b37d-75aceac1c257",
								true,
							},
							
							{
								"7aef73f8-53fb-696b-b2ec-39a954739667",
								true,
							},
							
							{
								"d65e1770-3cff-fd4a-a95a-bd930ad1098f",
								true,
							},
						},
						name = "Load boss forecast once",
						uuid = "8aa80631-1c48-ef95-b984-d9bde81f5408",
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
						localmapid = 151,
						name = "World of Darkness only",
						uuid = "888bc602-0bff-0907-bf7f-95c771221898",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 3509,
						name = "Exact action",
						uuid = "0e12b122-8882-c239-8242-c90dccb2b203",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 3234,
						name = "Exact source",
						uuid = "e21c32f7-441b-7e0c-b37d-75aceac1c257",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return not data.wodAutoSim or data.wodAutoSim.boss ~= eventArgs.entityID",
						dequeueIfLuaFalse = true,
						name = "Boss schedule not loaded",
						uuid = "7aef73f8-53fb-696b-b2ec-39a954739667",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then return false end\nlocal ok, elapsed = pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(elapsed) == \"number\" and elapsed > 0 and elapsed < 30",
						name = "AutoSim clock ready",
						uuid = "d65e1770-3cff-fd4a-a95a-bd930ad1098f",
						version = 3,
					},
				},
			},
			displayPath = "The World of Darkness/AutoSim",
			eventType = 2,
			name = "[World of Darkness] Cerberus AutoSim start",
			uuid = "95f517a4-61e7-7419-9abb-b0c6c0c76019",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\nlocal api = TensorCore.API.TensorACR\napi.setAutoSimKillTime(163)\napi.clearAutoSimUncertainty()\napi.addAutoSimUncertainty(0, 20)\napi.clearAutoSimPhases(\"FullDowntime\")\napi.clearAutoSimPhases(\"CasterDowntime\")\napi.clearAutoSimPhases(\"MeleeDowntime\")\nfor _, window in ipairs({}) do\n    api.addAutoSimPhase(\"CasterDowntime\", window[1], window[2])\nend\ndata.wodAutoSim = {boss = eventArgs.entityID, content = 3240}\ndata.wodAutoSim.downtime = api.addAutoSimPhase(\"FullDowntime\", 125, 142.2)\n-- After the long disappearance the boss returns away from the melee group: out of melee 2.2 s (first log) and 3.0 s (second log). Two clears.\ndata.wodAutoSim.melee = api.addAutoSimPhase(\"MeleeDowntime\", 142.2, 145.2)\nself.used = true",
						conditions = 
						{
							
							{
								"f6b08656-fb2c-1cbe-a140-8db0f6583115",
								true,
							},
							
							{
								"6b8cf71b-cbe7-c9ff-9c28-919e913a1236",
								true,
							},
							
							{
								"8198092b-bbf5-a281-b671-5e00e5b94a50",
								true,
							},
							
							{
								"cd791ec2-7e03-fb94-9d67-00edac75db2b",
								true,
							},
							
							{
								"ade610e0-33f6-f539-a66c-bbb12e0cf0de",
								true,
							},
						},
						name = "Load boss forecast once",
						uuid = "16f8ca81-8c1f-f437-b027-27c629d04972",
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
						localmapid = 151,
						name = "World of Darkness only",
						uuid = "f6b08656-fb2c-1cbe-a140-8db0f6583115",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 3306,
						name = "Exact action",
						uuid = "6b8cf71b-cbe7-c9ff-9c28-919e913a1236",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 3240,
						name = "Exact source",
						uuid = "8198092b-bbf5-a281-b671-5e00e5b94a50",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return not data.wodAutoSim or data.wodAutoSim.boss ~= eventArgs.entityID",
						dequeueIfLuaFalse = true,
						name = "Boss schedule not loaded",
						uuid = "cd791ec2-7e03-fb94-9d67-00edac75db2b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then return false end\nlocal ok, elapsed = pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(elapsed) == \"number\" and elapsed > 0 and elapsed < 30",
						name = "AutoSim clock ready",
						uuid = "ade610e0-33f6-f539-a66c-bbb12e0cf0de",
						version = 3,
					},
				},
			},
			displayPath = "The World of Darkness/AutoSim",
			eventType = 2,
			name = "[World of Darkness] Cloud of Darkness AutoSim start",
			uuid = "7e5d497f-9d1c-f801-8f02-e5271cf740ae",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\nlocal s = data.wodAutoSim\nlocal api = TensorCore.API.TensorACR\nlocal now = api.getAutoSimTime()\n-- Two disappearances were observed (22-11 log): a short one around 26.6-30.9 s and the long one at 125-142 s / 142-159 s.\nif not eventArgs.isTargetable then\n    if now < 60 then\n        s.short = api.addAutoSimPhase(\"FullDowntime\", now, now + 4.5)\n        s.shortStart = now\n    else\n        s.departed = now\n        api.setAutoSimPhase(s.downtime, now, now + 17.1, 1)\n        if s.melee then api.setAutoSimPhase(s.melee, now + 17.1, now + 20.1, 1) end\n    end\nelse\n    if s.shortStart and not s.shortDone then\n        s.shortDone = true\n        if s.short then api.setAutoSimPhase(s.short, s.shortStart, now, 1) end\n        api.addAutoSimPhase(\"MeleeDowntime\", now, now + 4.8)\n    elseif s.departed then\n        s.returned = true\n        api.setAutoSimPhase(s.downtime, s.departed, now, 1)\n        if s.melee then api.setAutoSimPhase(s.melee, now, now + 3.0, 1) end\n    end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"4a539ab2-db75-f0c9-b16d-c874947d408d",
								true,
							},
							
							{
								"4192c02e-0833-75c5-b881-3cd793e221cf",
								true,
							},
							
							{
								"a3065a79-e6b1-34e6-bc70-b988362840a6",
								true,
							},
						},
						name = "Correct the downtime boundaries",
						uuid = "44c307b7-3af4-5eb9-afcc-88055b54e2db",
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
						localmapid = 151,
						name = "World of Darkness only",
						uuid = "4a539ab2-db75-f0c9-b16d-c874947d408d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 3240,
						name = "Exact source",
						uuid = "4192c02e-0833-75c5-b881-3cd793e221cf",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s = data.wodAutoSim\nreturn s ~= nil and s.boss == eventArgs.entityID and not s.returned",
						dequeueIfLuaFalse = true,
						name = "First disappearance and return only",
						uuid = "a3065a79-e6b1-34e6-bc70-b988362840a6",
						version = 3,
					},
				},
			},
			displayPath = "The World of Darkness/AutoSim",
			eventType = 26,
			name = "[World of Darkness] Cloud of Darkness downtime resync",
			uuid = "1020b6a7-ad13-4ef7-be8d-3e796a40cffa",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local s = data.wodAutoSim\nlocal p = TensorCore.mGetPlayer()\nlocal api = TensorCore.API.TensorACR if not pcall(api.getAutoSimTime) then api=setmetatable({getAutoSimTime=function() return 0 end},{__index=function() return function() end end}) end\nlocal now = api.getAutoSimTime()\nlocal inside = p.pos.y < -490 and p.pos.y > -510\nlocal current = TensorCore.mGetTarget()\nif s.request and current and current.id == s.request then\n    d(\"[Cerberus] Confirmed target \" .. s.request)\n    s.request = nil\nend\nlocal function target(entity, reason)\n    if not entity or (current and current.id == entity.id) then return end\n    if p.castinginfo.castingid > 0 or p.castinginfo.channelingid > 0 then return end\n    if s.request == entity.id and now < s.retryAt then return end\n    d(string.format(\"[Cerberus] %s. Request %d; current %s\", reason, entity.id, tostring(current and current.id)))\n    s.request, s.retryAt = entity.id, now + 2\n    Player:SetTarget(entity.id)\nend\nlocal function endGap()\n    if not s.gap then return end\n    if now > s.gapStart then\n        api.setAutoSimPhase(s.gap, s.gapStart, now, 1)\n    else\n        api.removeAutoSimPhase(s.gap)\n    end\n    s.gap = nil\nend\nif not inside then\n    local boss = TensorCore.mGetEntity(s.boss)\n    endGap()\n    if boss and boss.targetable and boss.attackable then\n        target(boss, \"Returned from belly\")\n    end\n    s.belly = false\n    self.used = true\n    return\nend\ns.belly = true\nlocal wall, nearest\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=3238}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable then\n        local dx, dz = candidate.pos.x - p.pos.x, candidate.pos.z - p.pos.z\n        local distance = dx * dx + dz * dz\n        if current and candidate.id == current.id then\n            wall = candidate\n            break\n        end\n        if not nearest or distance < nearest then\n            wall, nearest = candidate, distance\n        end\n    end\nend\nif wall then\n    endGap()\n    target(wall, \"Attack Stomach Wall inside belly\")\nelse\n    local add\n    for _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=3235}) or {}) do\n        if candidate.alive and candidate.targetable and candidate.attackable then\n            add = candidate\n            break\n        end\n    end\n    if add then\n        endGap()\n        target(add, \"Attack remaining belly add\")\n    elseif not s.gap then\n        s.gapStart = now\n        s.gapEnd = now + 8\n        s.gap = api.addAutoSimPhase(\"FullDowntime\", now, s.gapEnd, 1)\n    elseif now > s.gapEnd - 1 then\n        s.gapEnd = now + 8\n        api.setAutoSimPhase(s.gap, s.gapStart, s.gapEnd, 1)\n    end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"caadb089-e890-0995-962a-55dfadc8019c",
								true,
							},
							
							{
								"c2770eb6-99e6-3967-95f6-b0d2b49befb5",
								true,
							},
						},
						name = "Track local targets and recovery",
						uuid = "ab008a5a-bf9e-c5e7-9631-821695659b39",
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
						localmapid = 151,
						name = "World of Darkness only",
						uuid = "caadb089-e890-0995-962a-55dfadc8019c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p = TensorCore.mGetPlayer()\nlocal s = data.wodAutoSim\nreturn p ~= nil and p.alive and s ~= nil and s.content == 3234\n    and p.pos ~= nil and (s.belly == true or (p.pos.y < -490 and p.pos.y > -510))\n    and p.incombat",
						dequeueIfLuaFalse = true,
						name = "Cerberus belly or owned recovery",
						uuid = "c2770eb6-99e6-3967-95f6-b0d2b49befb5",
						version = 3,
					},
				},
			},
			displayPath = "The World of Darkness/AutoSim",
			name = "[World of Darkness] Cerberus personal belly targeting and downtime",
			throttleTime = 750,
			timeout = 2,
			uuid = "8d1cfb5a-be09-f2d0-85f7-f38f89266551",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "gStartCombat = false\nif AnyoneCore and AnyoneCore.Settings then\n    AnyoneCore.Settings.DutyHelper = false\n    AnyoneCore.Settings.PrepullHelper = false\nend\nself.used = true",
						conditions = 
						{
							
							{
								"af3c1437-ff44-e699-ad39-9725c76418c7",
								true,
							},
						},
						name = "Disable duty and prepull helpers",
						uuid = "e9785a69-946d-7fc2-9895-2f8cf942fa58",
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
						localmapid = 151,
						name = "World of Darkness only",
						uuid = "af3c1437-ff44-e699-ad39-9725c76418c7",
						version = 3,
					},
				},
			},
			displayPath = "The World of Darkness/AutoSim",
			eventType = 11,
			name = "[World of Darkness] Helper setup",
			uuid = "a9ac6471-0f02-64ca-847c-aebd8a694c71",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The World of Darkness",
			name = "Atomos",
			uuid = "124c1c1a-d005-76ab-afda-92c38a6b6c8b",
		},
		objectType = "folder",
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
								"9f3bd1a9-39d9-888b-a5ea-a354fff6dc20",
								true,
							},
							
							{
								"8cb60631-90ad-4a1a-8a71-626a3891cf41",
								true,
							},
							
							{
								"21ca3ef9-fc79-c7da-88f6-d9ed2b7a407a",
								true,
							},
							
							{
								"68500d31-3767-e102-9a5f-8fcb2fc796dd",
								false,
							},
						},
						gVar = "ACR_TensorReaper4_Hotbar_ArmsLength",
						uuid = "b9540b9d-61ff-e0e0-946f-6c0247118bdd",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "ACR",
						conditions = 
						{
							
							{
								"9f3bd1a9-39d9-888b-a5ea-a354fff6dc20",
								true,
							},
							
							{
								"8cb60631-90ad-4a1a-8a71-626a3891cf41",
								true,
							},
							
							{
								"21ca3ef9-fc79-c7da-88f6-d9ed2b7a407a",
								true,
							},
							
							{
								"68500d31-3767-e102-9a5f-8fcb2fc796dd",
								true,
							},
						},
						gVar = "ACR_TensorNuke4_Hotbar_Surecast",
						uuid = "fdbf6b1b-9960-3ca7-bc47-9f5504ff7e9a",
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
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 151,
						name = "World of Darkness only",
						uuid = "9f3bd1a9-39d9-888b-a5ea-a354fff6dc20",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 3416,
						name = "Exact action",
						uuid = "8cb60631-90ad-4a1a-8a71-626a3891cf41",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local cid = eventArgs.entityContentID\nif cid ~= 3380 and cid ~= 3381 and cid ~= 3382 then return false end\nlocal p = TensorCore.mGetPlayer()\nlocal caster = TensorCore.mGetEntity(eventArgs.entityID)\nif not p or not p.alive or not caster or math.abs(p.pos.y - caster.pos.y) > 2 then return false end\nlocal dx, dz = p.pos.x - caster.pos.x, p.pos.z - caster.pos.z\nreturn dx * dx + dz * dz <= 19 * 19",
						dequeueIfLuaFalse = true,
						name = "Same Atomos platform",
						uuid = "21ca3ef9-fc79-c7da-88f6-d9ed2b7a407a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return TensorCore.isCaster(TensorCore.mGetPlayer()) == true",
						name = "Caster or healer",
						uuid = "68500d31-3767-e102-9a5f-8fcb2fc796dd",
						version = 3,
					},
				},
			},
			displayPath = "The World of Darkness/Atomos",
			eventType = 3,
			name = "[World of Darkness] Atomos Shockwave knockback immunity",
			timeout = 3.5,
			uuid = "34fef285-f17e-7e80-b9a8-ed38af92ac92",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The World of Darkness",
			name = "Draws and callouts",
			uuid = "f8b55505-ddb4-c7f6-9ea8-6d27a39b7873",
		},
		objectType = "folder",
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
						alertDuration = 2600,
						alertPriority = 2,
						alertText = "Switch colors if you have a stack",
						conditions = 
						{
							
							{
								"d124a92e-b2a5-b645-bd19-97988a61a5cf",
								true,
							},
							
							{
								"7cf9b6b2-b19e-3eb1-8331-da9dde1db4e0",
								true,
							},
							
							{
								"7adaaccd-53c9-0a16-8513-3a07f9446add",
								true,
							},
							
							{
								"6c632aba-ac19-cb29-b2af-2cf3544ddb9a",
								true,
							},
						},
						uuid = "3ab71168-ba63-4cf0-9537-715614995b7e",
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
						localmapid = 151,
						name = "World of Darkness only",
						uuid = "d124a92e-b2a5-b645-bd19-97988a61a5cf",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 3272,
						name = "Exact action",
						uuid = "7cf9b6b2-b19e-3eb1-8331-da9dde1db4e0",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 3231,
						name = "Exact source",
						uuid = "7adaaccd-53c9-0a16-8513-3a07f9446add",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn p~=nil and not TensorCore.hasBuff(p,636) and not TensorCore.hasBuff(p,637)",
						dequeueIfLuaFalse = true,
						name = "No Sullen/Ireful stack (fallback)",
						uuid = "6c632aba-ac19-cb29-b2af-2cf3544ddb9a",
						version = 3,
					},
				},
			},
			displayPath = "The World of Darkness/Draws and callouts",
			eventType = 3,
			name = "[World of Darkness] Double Vision",
			uuid = "5525e54c-c66e-9a17-b115-25408add568d",
			version = 2,
		},
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
						alertDuration = 2600,
						alertPriority = 2,
						alertText = "Look away",
						conditions = 
						{
							
							{
								"a8d9273c-b03b-6159-ab1e-d5e6ff21d018",
								true,
							},
							
							{
								"cfead275-6140-a618-af63-c7979bc5163d",
								true,
							},
							
							{
								"99ddd141-e60d-fcca-b037-30f843642a9f",
								true,
							},
						},
						uuid = "22c485b6-ecad-ae2e-bd1b-d8dca1d51079",
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
						localmapid = 151,
						name = "World of Darkness only",
						uuid = "a8d9273c-b03b-6159-ab1e-d5e6ff21d018",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 3281,
						name = "Exact action",
						uuid = "cfead275-6140-a618-af63-c7979bc5163d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 3231,
						name = "Exact source",
						uuid = "99ddd141-e60d-fcca-b037-30f843642a9f",
						version = 3,
					},
				},
			},
			displayPath = "The World of Darkness/Draws and callouts",
			eventType = 3,
			name = "[World of Darkness] Mortal Gaze",
			uuid = "a0b5452b-9a70-25ba-a9c6-dad482ae4000",
			version = 2,
		},
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
						alertDuration = 2600,
						alertPriority = 2,
						alertText = "Kill the heads",
						conditions = 
						{
							
							{
								"d76ac605-f1d1-0d4f-823a-0dbdd22963f4",
								true,
							},
							
							{
								"d94be5a2-5089-e998-9b3b-c33a91b1bdfc",
								true,
							},
							
							{
								"7f8ac3e4-517c-cdbd-b40e-66e755d15337",
								true,
							},
							
							{
								"75edf7f1-31a9-7e9b-9a07-b647091e775b",
								true,
							},
						},
						uuid = "18b52999-03f9-1c78-99c2-99eebec91218",
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
						localmapid = 151,
						name = "World of Darkness only",
						uuid = "d76ac605-f1d1-0d4f-823a-0dbdd22963f4",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 3282,
						name = "Exact action",
						uuid = "d94be5a2-5089-e998-9b3b-c33a91b1bdfc",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 3227,
						name = "Exact source",
						uuid = "7f8ac3e4-517c-cdbd-b40e-66e755d15337",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.channelTimeMax > 24",
						dequeueIfLuaFalse = true,
						name = "Original Discordance cast",
						uuid = "75edf7f1-31a9-7e9b-9a07-b647091e775b",
						version = 3,
					},
				},
			},
			displayPath = "The World of Darkness/Draws and callouts",
			eventType = 3,
			name = "[World of Darkness] Discordance heads",
			uuid = "55152a70-ac1a-1ebd-b48e-f7559227b813",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local e = eventArgs\nlocal ms = math.ceil(e.startTime + e.duration * 1000 - Now())\nif ms > 0 then\n    local drawer = TensorCore.getStaticDrawer(0x603333FF, 2)\n    if e.aoeWidth > 0 then\n        drawer:addTimedRect(ms, e.x, e.y, e.z, e.aoeLength, e.aoeWidth, e.heading, 0, false, true)\n    else\n        drawer:addTimedCircle(ms, e.x, e.y, e.z, e.aoeLength, 0, false, true)\n    end\n    AnyoneCore.addWorldTextCountdown(ms, {x=e.x,y=e.y+1,z=e.z}, 0xFFFFFFFF, true, 1.1)\nend\nself.used = true",
						conditions = 
						{
							
							{
								"7cb9d74f-0935-f66a-bc43-a8f6265eb30e",
								true,
							},
							
							{
								"913e77ba-ea9c-c82d-bec5-0cbeaaa7f422",
								true,
							},
						},
						name = "Draw timed AoE",
						uuid = "05a536ce-106f-ae3d-827f-bcec99ffe95b",
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
						localmapid = 151,
						name = "World of Darkness only",
						uuid = "7cb9d74f-0935-f66a-bc43-a8f6265eb30e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local e = eventArgs\nreturn (e.contentID == 3234 and (e.aoeID == 3241 or e.aoeID == 3247))\n    or (e.contentID == 3240 and (e.aoeID == 3298 or e.aoeID == 3297))\n    or (e.contentID == 3227 and e.aoeID == 3288)",
						dequeueIfLuaFalse = true,
						name = "Verified circle or line",
						uuid = "913e77ba-ea9c-c82d-bec5-0cbeaaa7f422",
						version = 3,
					},
				},
			},
			displayPath = "The World of Darkness/Draws and callouts",
			eventType = 18,
			name = "[World of Darkness] Ground circles and line countdowns",
			uuid = "19fc5510-3a5c-5f8b-80fe-4f7744556b1e",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local api=TensorCore.API.TensorACR\nlocal names={[3302]='Dark Cloud',[3303]='Dark Storm',[3241]='Hypercharged Cloud',[3230]='Poison Slime',[3222]='Head of Fire',[3223]='Head of Ice',[3224]='Head of Thunder',[3225]='Head of Poison',[3298]='Forbidden Gate',[3252]='Sacrificed Soldier',[3228]='Prominence',[3235]='Unknown',[3236]='Wolfsbane',[3248]='Thor',[3247]='Queen Scylla'}\nlocal id=eventArgs.entityContentID\nlocal entry=api.addBlacklistEntry(id,names[id])\nif entry and (not entry.enabled or entry.allowIfTarget or entry.allowSmartDoT) then\n    entry.enabled=true\n    entry.allowIfTarget=false\n    entry.allowSmartDoT=false\n    api.saveDotBlacklist()\nend\nself.used=true",
						conditions = 
						{
							
							{
								"7c08618b-ec2e-a017-a6e6-0708900200e1",
								true,
							},
						},
						name = "Block direct and Smart DoT on short-lived add",
						uuid = "922102ab-962d-2521-a11e-3ad4c33d50b0",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local c=eventArgs.entityContentID\nif not (c==3302 or c==3303 or c==3241 or c==3230 or c==3222 or c==3223 or c==3224 or c==3225 or c==3298 or c==3252 or c==3228 or c==3235 or c==3236 or c==3248 or c==3247) then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn p~=nil and p.localmapid==151",
						dequeueIfLuaFalse = true,
						name = "Short-lived World of Darkness add",
						uuid = "7c08618b-ec2e-a017-a6e6-0708900200e1",
						version = 3,
					},
				},
			},
			displayPath = "The World of Darkness/Draws and callouts",
			eventType = 5,
			name = "[World of Darkness] Short-lived adds - DoT blacklist",
			timeout = 2,
			uuid = "fa1cadd4-99f9-c8e5-8582-ede9c3039615",
			version = 2,
		},
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
						alertDuration = 3300,
						alertPriority = 2,
						alertText = "Get behind (red)",
						conditions = 
						{
							
							{
								"82708824-e44f-4e27-a465-a5e0ebfe59b8",
								true,
							},
						},
						uuid = "4ea7d268-2652-bc36-a651-9369ce36533c",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local e=eventArgs\nlocal boss=TensorCore.mGetEntity(e.entityID)\nif not boss or not boss.pos then return end\nlocal pos=boss.pos\nlocal ms=math.floor(e.channelTimeMax*1000)+1100\n-- Sullen: green behind the boss, red in front\nTensorCore.getStaticDrawer(0x8055FF55,2):addTimedCone(ms,pos.x,pos.y,pos.z,25,math.pi,pos.h+math.pi,0,false,true)\nTensorCore.getStaticDrawer(0x803333FF,2):addTimedCone(ms,pos.x,pos.y,pos.z,25,math.pi,pos.h,0,false,true)\nself.used=true",
						conditions = 
						{
							
							{
								"82708824-e44f-4e27-a465-a5e0ebfe59b8",
								true,
							},
						},
						name = "Draw green safe side and red bad side",
						uuid = "2a19d8fc-6454-75b6-b9f0-b745b35f69bd",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn p~=nil and p.localmapid==151 and eventArgs.spellID==3272 and eventArgs.entityContentID==3231 and TensorCore.hasBuff(p,636)",
						dequeueIfLuaFalse = true,
						name = "Double Vision with Sullen stack",
						uuid = "82708824-e44f-4e27-a465-a5e0ebfe59b8",
						version = 3,
					},
				},
			},
			displayPath = "The World of Darkness/Draws and callouts",
			eventType = 3,
			name = "[World of Darkness] Double Vision - Sullen (red)",
			uuid = "d3675249-c290-d84d-a7c7-5ddd8d62dfa5",
			version = 2,
		},
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
						alertDuration = 3300,
						alertPriority = 2,
						alertText = "Get in front (white)",
						conditions = 
						{
							
							{
								"80fa2a1c-50bc-76a4-8862-076f1c2be7ad",
								true,
							},
						},
						uuid = "5ff3691b-28c9-a6d9-8076-e03a0e588d45",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local e=eventArgs\nlocal boss=TensorCore.mGetEntity(e.entityID)\nif not boss or not boss.pos then return end\nlocal pos=boss.pos\nlocal ms=math.floor(e.channelTimeMax*1000)+1100\n-- Ireful: green in front of the boss, red behind\nTensorCore.getStaticDrawer(0x8055FF55,2):addTimedCone(ms,pos.x,pos.y,pos.z,25,math.pi,pos.h,0,false,true)\nTensorCore.getStaticDrawer(0x803333FF,2):addTimedCone(ms,pos.x,pos.y,pos.z,25,math.pi,pos.h+math.pi,0,false,true)\nself.used=true",
						conditions = 
						{
							
							{
								"80fa2a1c-50bc-76a4-8862-076f1c2be7ad",
								true,
							},
						},
						name = "Draw green safe side and red bad side",
						uuid = "cb95aeeb-f88c-c835-aa7c-f3731936cc72",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn p~=nil and p.localmapid==151 and eventArgs.spellID==3272 and eventArgs.entityContentID==3231 and TensorCore.hasBuff(p,637)",
						dequeueIfLuaFalse = true,
						name = "Double Vision with Ireful stack",
						uuid = "80fa2a1c-50bc-76a4-8862-076f1c2be7ad",
						version = 3,
					},
				},
			},
			displayPath = "The World of Darkness/Draws and callouts",
			eventType = 3,
			name = "[World of Darkness] Double Vision - Ireful (white)",
			uuid = "c7fbad1b-ea75-5f0b-b5c2-10701844fb61",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local pending=data.wodGazes\nlocal A=TensorCore.API.TensorACR\nlocal p=TensorCore.mGetPlayer()\nlocal now=Now()\nlocal angles={}\nlocal remaining=false\nfor id,g in pairs(pending) do\n local e=TensorCore.mGetEntity(id)\n local interrupted=e and now-g.started>500 and now<g.deadline-900 and e.castinginfo.channelingid~=g.spell and e.castinginfo.castingid~=g.spell\n if not p or p.localmapid~=151 or not p.alive or not e or now>=g.deadline or interrupted then\n  pending[id]=nil\n else\n  remaining=true\n  if g.deadline-now<=2300 then\n   angles[#angles+1]=TensorCore.getHeadingToTarget(p.pos,e.pos)\n  end\n end\nend\nif #angles>0 then\n local heading,best=0,math.huge\n for i=0,63 do\n  local h=i*math.pi/32\n  local worst=-math.huge\n  for j=1,#angles do worst=math.max(worst,math.cos(h-angles[j])) end\n  if worst<best then best=worst;heading=h end\n end\n A.setLockFaceHeading(heading)\n A.setHardLockFace(true)\n A.toggleLockFace(true)\n data.wodGazeOwnsLock=true\nelseif data.wodGazeOwnsLock then\n A.toggleLockFace(false)\n A.setHardLockFace(false)\n data.wodGazeOwnsLock=nil\nend\nif not remaining then data.wodGazes=nil;self.used=true end",
						conditions = 
						{
							
							{
								"3afbdf6e-4907-355b-83b8-8df63861fcc3",
								true,
							},
						},
						name = "Maintain gaze lock; release after resolve",
						uuid = "0276e92f-796e-5d35-951c-b6262a6d728d",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.wodGazes~=nil",
						dequeueIfLuaFalse = true,
						name = "Only while a captured gaze exists",
						uuid = "3afbdf6e-4907-355b-83b8-8df63861fcc3",
						version = 3,
					},
				},
			},
			displayPath = "The World of Darkness/Draws and callouts",
			name = "[World of Darkness] Mortal Gaze - face away until resolved",
			timeout = 15,
			uuid = "81e307f3-ac8c-9a12-9050-47c805184810",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if data.wodGazeOwnsLock then\n TensorCore.API.TensorACR.toggleLockFace(false)\n TensorCore.API.TensorACR.setHardLockFace(false)\nend\ndata.wodGazeOwnsLock=nil\ndata.wodGazes=nil\nself.used=true",
						conditions = 
						{
							
							{
								"32bbca33-ce6e-ab8c-b90d-5a185a986811",
								true,
							},
						},
						name = "Release owned gaze state",
						uuid = "1b5ebe8d-a48e-5fd1-919e-dc3d169aac88",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.wodGazeOwnsLock==true or data.wodGazes~=nil",
						dequeueIfLuaFalse = true,
						name = "Owned gaze lock only",
						uuid = "32bbca33-ce6e-ab8c-b90d-5a185a986811",
						version = 3,
					},
				},
			},
			displayPath = "The World of Darkness/Draws and callouts",
			eventType = 9,
			name = "[World of Darkness] Mortal Gaze - release on wipe",
			uuid = "09925c22-0443-9b9d-9a60-10530293dab0",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if data.wodGazeOwnsLock then\n TensorCore.API.TensorACR.toggleLockFace(false)\n TensorCore.API.TensorACR.setHardLockFace(false)\nend\ndata.wodGazeOwnsLock=nil\ndata.wodGazes=nil\nself.used=true",
						conditions = 
						{
							
							{
								"cadab3e8-a9d2-b920-91c0-96a6a61f9f5d",
								true,
							},
						},
						name = "Release owned gaze state",
						uuid = "d9482d42-1f09-a57a-8d06-1881f99af28d",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.wodGazeOwnsLock==true or data.wodGazes~=nil",
						dequeueIfLuaFalse = true,
						name = "Owned gaze lock only",
						uuid = "cadab3e8-a9d2-b920-91c0-96a6a61f9f5d",
						version = 3,
					},
				},
			},
			displayPath = "The World of Darkness/Draws and callouts",
			eventType = 10,
			name = "[World of Darkness] Mortal Gaze - release on death",
			uuid = "9a45cbc5-bb6b-f371-a03c-33fc9bccd6eb",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Cast resolves about 270-320 ms after the channel time max (2.7 s -> about 2.97-3.02 s).\ndata.wodGazes=data.wodGazes or {}\nlocal n=Now()\ndata.wodGazes[eventArgs.entityID]={spell=eventArgs.spellID,started=n,deadline=n+eventArgs.channelTimeMax*1000+650}\nself.used=true",
						conditions = 
						{
							
							{
								"2c4aed9f-7eaa-842e-b694-a1ad44a34d9d",
								true,
							},
							
							{
								"b8c9ddf4-f085-084a-b397-0783c4103c8e",
								true,
							},
							
							{
								"a5868353-e375-3dcc-bff0-447ed1b3fbd9",
								true,
							},
						},
						name = "Track gaze resolve (channel + 650 ms)",
						uuid = "b454df22-a9cd-34ca-b833-95f1f6ae0bc8",
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
						localmapid = 151,
						name = "World of Darkness only",
						uuid = "2c4aed9f-7eaa-842e-b694-a1ad44a34d9d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 3281,
						name = "Exact action",
						uuid = "b8c9ddf4-f085-084a-b397-0783c4103c8e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 3231,
						name = "Exact source",
						uuid = "a5868353-e375-3dcc-bff0-447ed1b3fbd9",
						version = 3,
					},
				},
			},
			displayPath = "The World of Darkness/Draws and callouts",
			eventType = 3,
			name = "[World of Darkness] Mortal Gaze - track resolve time (short)",
			timeout = 9,
			uuid = "383ba1f3-502e-0484-bdb5-96c2377162f5",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- Cast resolves about 285 ms after the channel time max (4.2 s -> about 4.485 s).\ndata.wodGazes=data.wodGazes or {}\nlocal n=Now()\ndata.wodGazes[eventArgs.entityID]={spell=eventArgs.spellID,started=n,deadline=n+eventArgs.channelTimeMax*1000+650}\nself.used=true",
						conditions = 
						{
							
							{
								"2bb01290-956f-3d88-a205-49ccd7091578",
								true,
							},
							
							{
								"2e3ae0cc-adb1-593f-a4a4-6d7182aeec14",
								true,
							},
							
							{
								"68243aed-8443-b1d6-bb88-3e25e6d9ee11",
								true,
							},
						},
						name = "Track gaze resolve (channel + 650 ms)",
						uuid = "9bd240f4-0d12-8ab5-9415-7356d9858ff4",
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
						localmapid = 151,
						name = "World of Darkness only",
						uuid = "2bb01290-956f-3d88-a205-49ccd7091578",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 3499,
						name = "Exact action",
						uuid = "2e3ae0cc-adb1-593f-a4a4-6d7182aeec14",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 3231,
						name = "Exact source",
						uuid = "68243aed-8443-b1d6-bb88-3e25e6d9ee11",
						version = 3,
					},
				},
			},
			displayPath = "The World of Darkness/Draws and callouts",
			eventType = 3,
			name = "[World of Darkness] Mortal Gaze - track resolve time (long)",
			timeout = 9,
			uuid = "9292b4c2-1e4c-06b6-a8f5-cc8c9d578611",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "San dâ€™Oria",
			uuid = "a33e412b-a9eb-3678-9b86-31a765b2aa17",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "San dâ€™Oria",
			name = "Knockback safeguards",
			uuid = "ad7616fa-bfd8-b5e8-b317-b7f268d47f97",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "The Puppets' Bunker",
			uuid = "66495c8f-5c2d-fab2-9b1b-7da7aaa1cf40",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Puppets' Bunker",
			name = "813P-operated Aegis Unit",
			uuid = "8fa94167-d930-603c-8fb8-576de8b701de",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Puppets' Bunker/813P-operated Aegis Unit",
			name = "AutoSim",
			uuid = "aae3b63f-e691-9581-8655-9cfefedca63d",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal p=TensorCore.mGetPlayer()\nfor _,b in pairs(TensorCore.getEntityGroupList(\"ContentID\",{contentid=9642}) or {}) do\n if b.alive and b.targetable and b.attackable and b.pos and TensorCore.getDistance2d(p.pos,b.pos)<=35 then\n  gStartCombat=false\n  local s=AnyoneCore and AnyoneCore.Settings\n  if s then\n   if s.DutyHelper then s.DutyHelper.enabled=false end\n   if s.PrepullHelper then s.PrepullHelper.enabled=false end\n  end\n  local t=TensorCore.mGetTarget()\n  if not (t and t.alive and t.attackable and t.targetable) then\n   Player:SetTarget(b.id)\n  else\n   data.a21Target=true\n  end\n  break\n end\nend",
						conditions = 
						{
							
							{
								"61251606-f2a7-4c07-8ceb-17c5880cb260",
								true,
							},
						},
						name = "Aegis Unit initial target and helper setup",
						uuid = "58477899-a9d1-b5c7-8c11-885d596e0d3b",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 then return false end\nif not p.pos or (p.pos.x+230)^2+(p.pos.z-192)^2>34^2 then return false end\nreturn p.alive and not p.incombat and not data.a21Target",
						dequeueIfLuaFalse = true,
						name = "Aegis Unit arena and mechanic",
						uuid = "61251606-f2a7-4c07-8ceb-17c5880cb260",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/813P-operated Aegis Unit/AutoSim",
			name = "Aegis Unit initial target and helper setup",
			throttleTime = 1500,
			uuid = "18f27833-8af8-b8fe-aec2-851e4d13b4db",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal b=TensorCore.mGetEntity(eventArgs.entityID)\nif b and b.alive then data.a21={boss=b.id,lasers={}} end",
						conditions = 
						{
							
							{
								"650195f6-86a9-add4-847e-e71e58022c5e",
								true,
							},
						},
						name = "Aegis Unit AutoSim pull anchor",
						uuid = "294782e0-3ffb-ad17-8a03-091df708aca6",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 then return false end\nif not p.pos or (p.pos.x+230)^2+(p.pos.z-192)^2>34^2 then return false end\nreturn eventArgs.entityContentID==9642 and eventArgs.spellID==20621 and not data.a21",
						dequeueIfLuaFalse = true,
						name = "Aegis Unit arena and mechanic",
						uuid = "650195f6-86a9-add4-847e-e71e58022c5e",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/813P-operated Aegis Unit/AutoSim",
			eventType = 3,
			name = "Aegis Unit AutoSim pull anchor",
			uuid = "ac372620-4de9-ae4e-a442-9c93224c9fd9",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\nself.used=true\nlocal s=data.a21\nif not s or not s.boss then return end\nlocal b=TensorCore.mGetEntity(s.boss)\nif not b or not b.hp or not b.alive or b.hp.percent<=0 then\n s.finished=true\n return\nend\nif not b.targetable then s.sample=nil;return end\nlocal api=TensorCore.API.TensorACR\nlocal now=api.getAutoSimTime()\nif type(now)~=\"number\" or now<=0 then return end\nlocal hp=b.hp.percent\nlocal sample=s.sample\nif not sample then s.sample={time=now,hp=hp};return end\nif now-sample.time<12 then return end\ns.sample={time=now,hp=hp}\nlocal rate=(sample.hp-hp)/(now-sample.time)\nif rate<=.05 then return end\nlocal estimate=now+math.max(3,math.min(600,hp/rate))\nif not s.estimate or math.abs(s.estimate-estimate)>=4 or now>=s.estimate-3 then\n api.setAutoSimKillTime(estimate)\n s.estimate=estimate\nend",
						conditions = 
						{
							
							{
								"875bb126-b556-6305-9247-bd81f950afda",
								true,
							},
						},
						name = "Aegis Unit AutoSim live kill estimate",
						uuid = "cf4d7b6d-239d-1a9a-ac6b-4d6e3599f433",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then return false end\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 then return false end\nif not p.pos or (p.pos.x+230)^2+(p.pos.z-192)^2>34^2 then return false end\nlocal s=data.a21\nreturn p.incombat and s~=nil and not s.finished",
						dequeueIfLuaFalse = true,
						name = "Aegis Unit arena and mechanic",
						uuid = "875bb126-b556-6305-9247-bd81f950afda",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/813P-operated Aegis Unit/AutoSim",
			name = "Aegis Unit AutoSim live kill estimate",
			throttleTime = 1500,
			uuid = "840b12d4-169d-9b30-97a4-094bce3b30fe",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Puppets' Bunker/813P-operated Aegis Unit",
			name = "Draws",
			uuid = "4b26125f-c584-7170-9038-f6a37f1850c8",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nlocal b=TensorCore.mGetEntity(e.entityID)\nif not b or not b.pos or not e.channelTimeMax or e.channelTimeMax<=0 then return end\nlocal ms=math.floor((e.channelTimeMax+.65)*1000)\nlocal drawer=TensorCore.getStaticDrawer(0xD02020FF,2)\nlocal p=b.pos\nlocal player=TensorCore.mGetPlayer()\nlocal dx,dz=player.pos.x-p.x,player.pos.z-p.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal collider=e.spellID==20604 or e.spellID==20605\nlocal unsafe=false\nlocal cones={}\nlocal angles={0,-72,-144,144,72}\nlocal widths={30,45,15,45,30}\nfor i=1,5 do\n local degrees,half=angles[i],widths[i]\n if e.spellID~=20595 then\n  degrees=(i-1)*72+(e.spellID==20605 and -90 or e.spellID==20607 and -18 or e.spellID==20608 and 18 or 0)\n  half=(e.spellID==20607 or e.spellID==20608) and 18 or 15\n end\n local heading=p.h+math.rad(degrees)\n cones[#cones+1]={heading=heading,half=math.rad(half),dDeg=degrees,hDeg=half}\n if not collider then drawer:addTimedCone(ms,p.x,p.y,p.z,30,math.rad(2*half),heading) end\n if distance<=30 and dx*math.sin(heading)+dz*math.cos(heading)>=distance*math.cos(math.rad(half)) then\n  unsafe=true\n end\nend\n-- Mark every safe lane (the gaps between the cones) green, for Beam and Collider Cannons.\ndo\n local iv={}\n for _,c in ipairs(cones) do\n  local s=(c.dDeg-c.hDeg)%360\n  local en=s+2*c.hDeg\n  if en>360 then\n   iv[#iv+1]={s,360}\n   iv[#iv+1]={0,en-360}\n  else\n   iv[#iv+1]={s,en}\n  end\n end\n table.sort(iv,function(a,b) return a[1]<b[1] end)\n local green=TensorCore.getStaticDrawer(0xB033FF33,2)\n local function lane(a,z)\n  green:addTimedCone(ms,p.x,p.y,p.z,30,math.rad(z-a),p.h+math.rad((a+z)/2))\n end\n local cur=0\n for _,v in ipairs(iv) do\n  if v[1]>cur+.5 then lane(cur,v[1]) end\n  if v[2]>cur then cur=v[2] end\n end\n if cur<359.5 then lane(cur,360) end\nend\nlocal function onFloor(x,z)\n local dx,dz=x+230,z-192\n local r2=dx*dx+dz*dz\n if r2<12^2 then return false end\n if r2<=23.5^2 then return true end\n return (dx+15.155)^2+(dz+8.75)^2<=10.65^2 or\n        (dx-15.155)^2+(dz+8.75)^2<=10.65^2 or\n        dx*dx+(dz-17.5)^2<=10.65^2\nend\nlocal best,bestDist\nfor degrees=0,358,2 do\n local angle=math.rad(degrees)\n for radius=13,28 do\n  local x,z=p.x+radius*math.sin(angle),p.z+radius*math.cos(angle)\n  if onFloor(x,z) then\n   local clear=true\n   for _,cone in ipairs(cones) do\n    if math.cos(angle-cone.heading)>=math.cos(cone.half+math.asin(1.45/radius)) then\n     clear=false\n     break\n    end\n   end\n   if clear then\n    local dist=(x-player.pos.x)^2+(z-player.pos.z)^2\n    if not bestDist or dist<bestDist then best,bestDist={x=x,y=player.pos.y+.05,z=z},dist end\n   end\n  end\n end\nend\nif best then\n data.a21CannonGuide={pos=best,deadline=Now()+ms,boss=e.entityID,collider=collider}\nelse\n data.a21CannonGuide=nil\nend\nlocal s=data.a21\nif s and not s.finished and unsafe then\n local api=TensorCore.API.TensorACR if not pcall(api.getAutoSimTime) then api=setmetatable({getAutoSimTime=function() return 0 end},{__index=function() return function() end end}) end\n local now=api.getAutoSimTime()\n if type(now)==\"number\" and now>0 then\n  local hit=now+e.channelTimeMax\n  api.addAutoSimPhase(\"CasterDowntime\",math.max(now,hit-2),hit,1)\n end\nend",
						conditions = 
						{
							
							{
								"39106fb6-c704-65f8-ae50-67b65ca839fd",
								true,
							},
						},
						name = "Aegis Unit cannon cone previews",
						uuid = "587dfd47-9f65-57a6-a3e0-65f7d83ddc68",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 then return false end\nif not p.pos or (p.pos.x+230)^2+(p.pos.z-192)^2>34^2 then return false end\nlocal id=eventArgs.spellID\nreturn eventArgs.entityContentID==9642 and (id==20595 or id==20604 or id==20605 or id==20607 or id==20608)",
						dequeueIfLuaFalse = true,
						name = "Aegis Unit arena and mechanic",
						uuid = "39106fb6-c704-65f8-ae50-67b65ca839fd",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/813P-operated Aegis Unit/Draws",
			eventType = 3,
			name = "Aegis Unit cannon cone previews",
			uuid = "19b8d91d-0138-1085-9cbd-186c5f50363d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nlocal ms=math.floor(e.startTime+e.duration*1000-Now())\nif ms<=0 then return end\nlocal drawer=TensorCore.getStaticDrawer(0x803333FF,2)\nif e.aoeID==20620 then\n drawer:addTimedRect(ms,e.x,e.y,e.z,60,10,e.heading,0,false,true)\nelse\n drawer:addTimedCone(ms,e.x,e.y,e.z,30,math.rad(100),e.heading)\n -- Life's Last Song fires three 100 degree cones 120 degrees apart (every wave): the 20 degree gap after each cone is the safe lane.\n local green=TensorCore.getStaticDrawer(0xB033FF33,2)\n green:addTimedCone(ms,e.x,e.y,e.z,30,math.rad(20),e.heading+math.rad(60))\nend",
						conditions = 
						{
							
							{
								"891dbdb5-4e86-24f4-9e4f-ab1a598fe1f3",
								true,
							},
						},
						name = "Aegis Unit Flight Path and Life’s Last Song",
						uuid = "c694ce75-abd2-7f94-9ec7-d5d609b28fd6",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 then return false end\nif not p.pos or (p.pos.x+230)^2+(p.pos.z-192)^2>34^2 then return false end\nlocal e=eventArgs\nif not e or e.friendly then return false end\nlocal id=e.aoeID\nreturn (id==20620 or id==21427) and true or false",
						dequeueIfLuaFalse = true,
						name = "Aegis Unit arena and mechanic",
						uuid = "891dbdb5-4e86-24f4-9e4f-ab1a598fe1f3",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/813P-operated Aegis Unit/Draws",
			eventType = 18,
			name = "Aegis Unit Flight Path and Life’s Last Song",
			uuid = "c70fad06-7b3d-296c-afcc-94b79be8a63d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nlocal id=e.markerID\nlocal ms=id==198 and 4100 or id==23 and 5100 or 5000\nlocal radius=id==198 and 3 or id==23 and 4 or 6\nlocal color=id==62 and 0xB033FF33 or 0x903333FF\nTensorCore.getStaticDrawer(color,2):addTimedCircleOnEnt(ms,e.entityID,radius,0,false,true)",
						conditions = 
						{
							
							{
								"804f1172-8112-604e-beb2-1f451860fb89",
								true,
							},
						},
						name = "Aegis Unit tankbuster, bait and stack rings",
						uuid = "d77b7527-892f-e4c1-a5ca-6f0341521805",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 then return false end\nif not p.pos or (p.pos.x+230)^2+(p.pos.z-192)^2>34^2 then return false end\nlocal s=data.a21\nlocal id=eventArgs.markerID\nif not (s~=nil and not s.finished and p.incombat and (id==198 or id==23 or id==62)) then return false end\nlocal boss=TensorCore.mGetEntity(s.boss)\nif not boss or not boss.alive or not boss.hp or boss.hp.percent<=0 then return false end\nreturn true",
						dequeueIfLuaFalse = true,
						name = "Aegis Unit arena and mechanic",
						uuid = "804f1172-8112-604e-beb2-1f451860fb89",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/813P-operated Aegis Unit/Draws",
			eventType = 4,
			name = "Aegis Unit tankbuster, bait and stack rings",
			uuid = "581e95aa-8066-396f-94c6-3e419dc91515",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nlocal state=data.a21\nif not state or not state.lasers then return end\nlocal lasers=state.lasers\nlocal now=Now()\nlocal x,z=e.castPosX,e.castPosZ\nfor i=#lasers,1,-1 do\n local laser=lasers[i]\n if now>=laser.expires then\n  table.remove(lasers,i)\n elseif (laser.x-x)^2+(laser.z-z)^2<=.04 then\n  if e.spellID==20626 then\n   laser.hits=laser.hits+1\n   if laser.hits>=8 then\n    if laser.draw then Argus.deleteTimedShape(laser.draw) end\n    table.remove(lasers,i)\n   end\n  end\n  return\n end\nend\nif e.spellID==20625 then\n local p=TensorCore.mGetPlayer()\n local ms=12000\n local drawer=TensorCore.getStaticDrawer(0x803333FF,2)\n local draw=drawer:addTimedCircle(ms,x,e.castPosY or p.pos.y,z,4,0,false,true)\n lasers[#lasers+1]={x=x,z=z,expires=now+ms,draw=draw,hits=0}\nend",
						conditions = 
						{
							
							{
								"693fc401-dfca-36a9-a92e-e827a7bae301",
								true,
							},
						},
						name = "Aegis Unit repeating Surface Laser puddles",
						uuid = "781eeb66-6171-625d-bcb3-e756dcf2af44",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 then return false end\nif not p.pos or (p.pos.x+230)^2+(p.pos.z-192)^2>34^2 then return false end\nlocal s=data.a21\nlocal id=eventArgs.spellID\nif not (s~=nil and not s.finished and eventArgs.entityContentID==9642 and (id==20625 or id==20626) and eventArgs.castPosX~=nil and eventArgs.castPosZ~=nil) then return false end\nlocal boss=TensorCore.mGetEntity(s.boss)\nif not boss or not boss.alive or not boss.hp or boss.hp.percent<=0 then return false end\nreturn true",
						dequeueIfLuaFalse = true,
						name = "Aegis Unit arena and mechanic",
						uuid = "693fc401-dfca-36a9-a92e-e827a7bae301",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/813P-operated Aegis Unit/Draws",
			eventType = 2,
			name = "Aegis Unit repeating Surface Laser puddles",
			uuid = "41b706bf-e53a-2d83-b9e1-0075a830e49b",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Puppets' Bunker",
			name = "Superior Flight Units",
			uuid = "092081e4-5308-eb50-a3aa-20421a3de163",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Puppets' Bunker/Superior Flight Units",
			name = "AutoSim",
			uuid = "2d727c1f-cd6d-93ac-af84-03184826ced2",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal p=TensorCore.mGetPlayer()\nlocal closest,range=nil,35\nfor id=11792,11794 do\n for _,b in pairs(TensorCore.getEntityGroupList(\"ContentID\",{contentid=id}) or {}) do\n  if b.alive and b.targetable and b.attackable and b.pos then\n   local d=TensorCore.getDistance2d(p.pos,b.pos)\n   if d<range then closest,range=b,d end\n  end\n end\nend\nif not closest then return end\ngStartCombat=false\nlocal settings=AnyoneCore and AnyoneCore.Settings\nif settings then\n if settings.DutyHelper then settings.DutyHelper.enabled=false end\n if settings.PrepullHelper then settings.PrepullHelper.enabled=false end\nend\nlocal t=TensorCore.mGetTarget()\nif not (t and t.alive and t.targetable and t.attackable) then Player:SetTarget(closest.id) end\ndata.a23Setup=true",
						conditions = 
						{
							
							{
								"f766f841-1468-c30a-92bb-6226c0207702",
								true,
							},
						},
						name = "Superior Flight Units pre-pull setup",
						uuid = "c082a229-df6f-cb0b-9323-a4b9088711a9",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or (p.pos.x+230)^2+(p.pos.z+172)^2>46^2 then return false end\nreturn p.alive and not p.incombat and not data.a23Setup",
						dequeueIfLuaFalse = true,
						name = "Superior Flight Units arena and mechanic",
						uuid = "f766f841-1468-c30a-92bb-6226c0207702",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/Superior Flight Units/AutoSim",
			name = "Superior Flight Units pre-pull setup",
			throttleTime = 1250,
			uuid = "74fc47f8-917b-6bf1-93df-020def7baffb",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\nself.used=true\nlocal api=TensorCore.API.TensorACR\nlocal now=api.getAutoSimTime()\nif type(now)~=\"number\" or now<=0 or now>20 then return end\nlocal estimate=now+321\napi.setAutoSimKillTime(estimate)\napi.addAutoSimUncertainty(0,40)\ndata.a23={estimate=estimate}",
						conditions = 
						{
							
							{
								"bae8699a-5c27-8ee9-9770-3aa599f97c4e",
								true,
							},
						},
						name = "Superior Flight Units AutoSim forecast",
						uuid = "e0bbb6f5-6d2a-100a-b753-5dfd574d9434",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or (p.pos.x+230)^2+(p.pos.z+172)^2>46^2 then return false end\nlocal e=eventArgs\nreturn p.incombat and not data.a23 and e.entityContentID>=11792 and e.entityContentID<=11794 and\n e.spellID==20390+e.entityContentID-11792",
						dequeueIfLuaFalse = true,
						name = "Superior Flight Units arena and mechanic",
						uuid = "bae8699a-5c27-8ee9-9770-3aa599f97c4e",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/Superior Flight Units/AutoSim",
			eventType = 3,
			name = "Superior Flight Units AutoSim forecast",
			uuid = "e0a3ed14-5042-c85d-8a8c-080832396263",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Puppets' Bunker/Superior Flight Units",
			name = "Draws",
			uuid = "3bc39c64-5095-14de-a326-e72b1e772c6f",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nlocal b=TensorCore.mGetEntity(e.entityID)\nif not b or not b.pos or not e.channelTimeMax or e.channelTimeMax<=0 then return end\nlocal id=e.spellID\nlocal sharp=id==20393 or id==20394 or id>=21777\nlocal right=id==20393 or id==20396 or (id>=21773 and id%2==1)\nlocal p=b.pos\nlocal heading=p.h+(right and -math.pi/2 or math.pi/2)\nlocal x,z=p.x,p.z\nif sharp then\n -- The cast rotation is the unit's final facing, which points at the next unit in the ring.\n local ring={}\n for _,c in ipairs({9364,9617,9618}) do\n  for uid,_ in pairs(TensorCore.entityList(\"contentid=\"..c) or {}) do\n   local un=TensorCore.mGetEntity(uid)\n   local ci=un and un.castinginfo\n   local cid=ci and ci.channelingid\n   if un and un.alive and un.pos and cid and ((cid>=20393 and cid<=20394) or (cid>=21777 and cid<=21780)) then ring[c]=un.pos end\n  end\n end\n local order=right and {[9364]=9618,[9618]=9617,[9617]=9364} or {[9364]=9617,[9617]=9618,[9618]=9364}\n local q=ring[order[e.entityContentID]]\n if q then heading=math.atan2(q.x-p.x,q.z-p.z)+(right and -math.pi/2 or math.pi/2) end\nend\nif sharp and right then\n -- Confirmed right-turn formation, including the final helper poses.\n local sx,sz,facing\n if id==20393 then sx,sz,facing=-250.118,-160.204,math.pi/2\n elseif id==21777 then sx,sz,facing=-230,-195,-math.pi/6\n else sx,sz,facing=-209.865,-160.234,-5*math.pi/6 end\n if (x-sx)^2+(z-sz)^2<=36 then\n  x,z,heading=sx,sz,facing-math.pi/2\n end\nend\nlocal duration=e.channelTimeMax+(sharp and 1.5 or .5)\nlocal ms=math.floor(duration*1000)\nlocal draw=TensorCore.getStaticDrawer(0x503333FF,2)\nif sharp then\n draw:addTimedRect(ms,x,p.y,z,30,200,heading,0,false,true)\nelse\n local now=Now()\n local s=data.a23Swipes\n if not s or now>s.expires then\n  s={queue={},seen={},expires=now}\n  data.a23Swipes=s\n end\n local deadline=now+ms\n if not s.seen[e.entityID] then\n  s.seen[e.entityID]=true\n  s.queue[#s.queue+1]={content=e.entityContentID,hit=right and 20591 or 20592,\n   x=p.x,z=p.z,heading=heading,deadline=deadline}\n  table.sort(s.queue,function(a,b)return a.deadline<b.deadline end)\n  s.expires=math.max(s.expires,deadline+1000)\n end\nend\nlocal player=TensorCore.mGetPlayer()\nlocal dx,dz=player.pos.x-x,player.pos.z-z\nlocal forward=dx*math.sin(heading)+dz*math.cos(heading)\nlocal s=data.a23\nif s and forward>0 and (not sharp or (forward<30 and math.abs(dx*math.cos(heading)-dz*math.sin(heading))<100)) then\n local api=TensorCore.API.TensorACR if not pcall(api.getAutoSimTime) then api=setmetatable({getAutoSimTime=function() return 0 end},{__index=function() return function() end end}) end\n local now=api.getAutoSimTime()\n if type(now)==\"number\" and now>0 then\n  local hit=now+duration\n  if not s.movementAt or math.abs(s.movementAt-hit)>1.5 then\n   s.movementAt=hit\n   api.addAutoSimPhase(\"CasterDowntime\",hit-2,hit,1)\n  end\n end\nend",
						conditions = 
						{
							
							{
								"95582a2e-f265-2278-8807-826a4bae559f",
								true,
							},
						},
						name = "Superior Flight Units Sharp Turn and Sliding Swipe",
						uuid = "7158554c-8453-c44f-b9b8-83bd5f33291e",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or (p.pos.x+230)^2+(p.pos.z+172)^2>46^2 then return false end\nlocal e=eventArgs\nlocal id=e.spellID\nreturn p.incombat and (e.entityContentID==9364 or e.entityContentID==9617 or e.entityContentID==9618) and\n ((id>=20393 and id<=20394) or (id>=20396 and id<=20397) or (id>=21773 and id<=21780))",
						dequeueIfLuaFalse = true,
						name = "Superior Flight Units arena and mechanic",
						uuid = "95582a2e-f265-2278-8807-826a4bae559f",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/Superior Flight Units/Draws",
			eventType = 3,
			name = "Superior Flight Units Sharp Turn and Sliding Swipe",
			uuid = "57356f50-9663-5105-9ad1-c5d10c7d8a4b",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nlocal ms=math.floor(e.startTime+e.duration*1000-Now())\nif ms<=0 then return end\nlocal id=e.aoeID\nlocal radius=({[20399]=27,[20401]=10,[20402]=10,[20403]=15,[20408]=4,[20409]=8,\n [20410]=6,[20411]=6,[20416]=6,[20421]=6})[id]\nlocal draw=TensorCore.getStaticDrawer(0x703333FF,2)\nif id==20417 then\n for i=0,3 do draw:addTimedRect(ms,e.x,e.y,e.z,20,5,e.heading+i*math.pi/2,0,false,true) end\nelseif (id==20421 or id==20411) and e.targetAttach and e.targetAttach>0 then\n draw:addTimedCircleOnEnt(ms,e.targetAttach,radius,0,false,true)\nelse\n draw:addTimedCircle(ms,e.x,e.y,e.z,radius,0,false,true)\nend",
						conditions = 
						{
							
							{
								"d24648ff-0016-4b4c-87ff-9735b78edb64",
								true,
							},
							
							{
								"7af66d6f-67d4-7d7d-847e-5d8dcf7c456d",
								true,
							},
						},
						name = "Superior Flight Units missile and blast draws",
						uuid = "b062df00-627c-b9b7-9af4-70b7e816e655",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or (p.pos.x+230)^2+(p.pos.z+172)^2>46^2 then return false end\nlocal id=eventArgs.aoeID\nreturn p.incombat and (id==20399 or id==20401 or id==20402 or id==20403 or id==20408 or\n id==20409 or id==20410 or id==20411 or id==20416 or id==20417 or id==20421)",
						name = "Superior Flight Units arena and mechanic",
						uuid = "7af66d6f-67d4-7d7d-847e-5d8dcf7c456d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nlocal maps={[917]=true}\nreturn not not (p and maps[p.localmapid])",
						dequeueIfLuaFalse = true,
						name = "Duty map",
						uuid = "d24648ff-0016-4b4c-87ff-9735b78edb64",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/Superior Flight Units/Draws",
			eventType = 18,
			name = "Superior Flight Units missile and blast draws",
			uuid = "e7914219-29ee-33c3-80a5-d95003ef08ce",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nlocal b=TensorCore.mGetEntity(e.entityID)\nlocal t=TensorCore.mGetEntity(e.targetID)\nif not b or not b.pos or not t or not t.pos then return end\nTensorCore.getStaticDrawer(0x6033FF33,2):addTimedRectOnEnt(5400,b.id,80,14,t.id,0,true,false,true)",
						conditions = 
						{
							
							{
								"b3658d0e-2aae-809d-a118-b7aaf747d9e9",
								true,
							},
						},
						name = "Superior Flight Units High-Powered Laser stacks",
						uuid = "17a6b99d-e747-a8b8-bf62-37379660551a",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or (p.pos.x+230)^2+(p.pos.z+172)^2>46^2 then return false end\nlocal e=eventArgs\nreturn p.incombat and e.spellID==20406 and e.targetID>0",
						dequeueIfLuaFalse = true,
						name = "Superior Flight Units arena and mechanic",
						uuid = "b3658d0e-2aae-809d-a118-b7aaf747d9e9",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/Superior Flight Units/Draws",
			eventType = 2,
			name = "Superior Flight Units High-Powered Laser stacks",
			uuid = "c51f32f0-5b3b-7238-8acf-5e6f20538733",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal s=data.a23Swipes\ntable.remove(s.queue,1)\nif #s.queue==0 then data.a23Swipes=nil end",
						conditions = 
						{
							
							{
								"614b7827-7a4c-4523-805e-d0b3183224a5",
								true,
							},
							
							{
								"88aa9fbd-9dcf-4f3b-b466-e06172abe445",
								true,
							},
						},
						name = "Superior Flight Units advance Sliding Swipe guide",
						uuid = "fdd7580c-84ef-f92d-b228-d64125b7765c",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or (p.pos.x+230)^2+(p.pos.z+172)^2>46^2 then return false end\nlocal e=eventArgs\nlocal s=data.a23Swipes\nlocal first=s and s.queue[1]\nreturn first~=nil and e.entityContentID==first.content and e.spellID==first.hit",
						name = "Superior Flight Units arena and mechanic",
						uuid = "88aa9fbd-9dcf-4f3b-b466-e06172abe445",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nlocal maps={[917]=true}\nreturn not not (p and maps[p.localmapid])",
						dequeueIfLuaFalse = true,
						name = "Duty map",
						uuid = "614b7827-7a4c-4523-805e-d0b3183224a5",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/Superior Flight Units/Draws",
			eventType = 2,
			name = "Superior Flight Units advance Sliding Swipe guide",
			uuid = "7fd869b7-b078-9991-9407-4cb0d90b4fce",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal s=data.a23Swipes\nlocal wave=s and s.queue[1]\nif not wave then return end\nlocal player=TensorCore.mGetPlayer()\nif not player or not player.pos then return end\n-- Safe side of the next swipe: everything behind the swipe line (forward <= -0.5), shown as one green area.\n-- The line runs through the casting unit; a 2.5 yalm margin left too much of the safe half uncoloured.\nlocal sin,cos=math.sin(wave.heading),math.cos(wave.heading)\nlocal ox,oz=wave.x-0.5*sin,wave.z-0.5*cos\nlocal drawer=TensorCore.getStaticDrawer(0x6033FF33,2)\nlocal flags=Argus2.RenderFlags.FLAG_WARP_TERRAIN\ndrawer:addRect(ox,player.pos.y+0.05,oz,46,100,wave.heading+math.pi,false,flags)",
						conditions = 
						{
							
							{
								"37244f4a-5f33-bf17-937a-64bb07cc309c",
								true,
							},
						},
						name = "Superior Flight Units Sliding Swipe safe side",
						uuid = "aac6ab41-6313-483b-8283-62ecf7081cdd",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.a23Swipes\nif not s or not s.queue[1] then return false end\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or (p.pos.x+230)^2+(p.pos.z+172)^2>46^2 then return false end\nlocal s=data.a23Swipes\nlocal wave=s and s.queue[1]\nif not wave then return false end\nlocal remaining=wave.deadline-Now()\nreturn p.incombat and p.alive and remaining<=3050 and remaining>=-700",
						name = "Superior Flight Units arena and mechanic",
						uuid = "37244f4a-5f33-bf17-937a-64bb07cc309c",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/Superior Flight Units/Draws",
			eventType = 12,
			name = "Superior Flight Units Sliding Swipe safe side",
			uuid = "99bdbf84-e25d-86bd-ab62-6a5134859ee2",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Puppets' Bunker",
			name = "Heavy Artillery Unit",
			uuid = "0bfc51e2-aaaa-bcf5-ba8e-5a0c02bf7a60",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Puppets' Bunker/Heavy Artillery Unit",
			name = "AutoSim",
			uuid = "48816f23-0e5c-c7d0-bf80-b15d875dd877",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal p=TensorCore.mGetPlayer()\nfor _,b in pairs(TensorCore.getEntityGroupList(\"ContentID\",{contentid=11882}) or {}) do\n if b.alive and b.targetable and b.attackable and b.pos and TensorCore.getDistance2d(p.pos,b.pos)<=35 then\n  gStartCombat=false\n  local s=AnyoneCore and AnyoneCore.Settings\n  if s then\n   if s.DutyHelper then s.DutyHelper.enabled=false end\n   if s.PrepullHelper then s.PrepullHelper.enabled=false end\n  end\n  local t=TensorCore.mGetTarget()\n  if not (t and t.alive and t.attackable and t.targetable) then Player:SetTarget(b.id) end\n  data.a24Setup=true\n  return\n end\nend",
						conditions = 
						{
							
							{
								"dae904f3-869b-a858-b308-2fb3798af9e1",
								true,
							},
						},
						name = "Heavy Artillery Unit pre-pull setup",
						uuid = "0042c819-988d-9512-a6c4-cc65686a6228",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or (p.pos.x-200)^2+(p.pos.z+100)^2>34^2 then return false end\nreturn p.alive and not p.incombat and not data.a24Setup",
						dequeueIfLuaFalse = true,
						name = "Heavy Artillery Unit arena and mechanic",
						uuid = "dae904f3-869b-a858-b308-2fb3798af9e1",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/Heavy Artillery Unit/AutoSim",
			name = "Heavy Artillery Unit pre-pull setup",
			throttleTime = 1250,
			uuid = "f17614d0-28b3-70e1-ae40-5666c15e3443",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\nself.used=true\nlocal api=TensorCore.API.TensorACR\nlocal now=api.getAutoSimTime()\nif type(now)~=\"number\" or now<=0 or now>20 then return end\napi.setAutoSimKillTime(now+335)\napi.addAutoSimUncertainty(0,45)\ndata.a24={boss=eventArgs.entityID,moves={},towers={}}",
						conditions = 
						{
							
							{
								"39334525-9317-8a15-966e-ec48e42ac053",
								true,
							},
						},
						name = "Heavy Artillery Unit AutoSim forecast",
						uuid = "0182273c-8fdd-e9c5-980b-2ad4a57953e5",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or (p.pos.x-200)^2+(p.pos.z+100)^2>34^2 then return false end\nreturn p.incombat and not data.a24 and eventArgs.entityContentID==11882 and eventArgs.spellID==20486",
						dequeueIfLuaFalse = true,
						name = "Heavy Artillery Unit arena and mechanic",
						uuid = "39334525-9317-8a15-966e-ec48e42ac053",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/Heavy Artillery Unit/AutoSim",
			eventType = 3,
			name = "Heavy Artillery Unit AutoSim forecast",
			uuid = "e9cb4d4a-b3f5-7c5a-a89c-c05b0d859a7e",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Puppets' Bunker/Heavy Artillery Unit",
			name = "Draws",
			uuid = "8ece3d50-8f34-bd79-be8b-c428c1d1fc9c",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nlocal ms=math.floor(e.startTime+e.duration*1000-Now())\nif ms<=0 then return end\nlocal id=e.aoeID\nlocal drawer=TensorCore.getStaticDrawer(0x703333FF,2)\nlocal player=TensorCore.mGetPlayer()\nlocal x,z=e.x,e.z\nlocal dx,dz=player.pos.x-x,player.pos.z-z\nlocal r2=dx*dx+dz*dz\nlocal unsafe=false\nif id>=20614 and id<=20617 then\n x,z=200,-100\n dx,dz=player.pos.x-x,player.pos.z-z\n r2=dx*dx+dz*dz\n local low=({[20616]=14,[20617]=21})[id] or 0\n local high=({[20614]=30,[20615]=16,[20616]=23,[20617]=30})[id]\n -- Outer bands start only once the previous band has fired.\n local delay=id==20616 and math.max(0,ms-2100) or id==20617 and math.max(0,ms-2100) or 0\n local linger=id==20614 and 3700 or 2700\n if low==0 then\n  drawer:addTimedCone(ms+linger,x,e.y,z,high,math.pi/3,e.heading,delay,false,true)\n else\n  drawer:addTimedDonutCone(ms+linger,x,e.y,z,low,high,math.pi/3,e.heading,delay,false,true)\n end\n unsafe=r2>=low*low and r2<=high*high and\n  dx*math.sin(e.heading)+dz*math.cos(e.heading)>=math.sqrt(r2)*math.cos(math.pi/6)\nelseif id==20480 then\n drawer:addTimedDonut(ms,x,e.y,z,12,60,0,false,true)\n unsafe=r2>=144\nelseif id==20464 then\n drawer:addTimedRect(ms,x,e.y,z,60,12,e.heading,0,false,true)\n local forward=dx*math.sin(e.heading)+dz*math.cos(e.heading)\n unsafe=forward>=0 and forward<=60 and math.abs(dx*math.cos(e.heading)-dz*math.sin(e.heading))<=6\nelse\n local radius=id==20465 and 18 or id==20479 and 8 or 4\n drawer:addTimedCircle(ms,x,e.y,z,radius,0,false,true)\n unsafe=r2<=radius*radius\nend\nlocal s=data.a24\nif s and unsafe and (id==20479 or id==20480 or id==20464 or id==20465) then\n local api=TensorCore.API.TensorACR if not pcall(api.getAutoSimTime) then api=setmetatable({getAutoSimTime=function() return 0 end},{__index=function() return function() end end}) end\n local now=api.getAutoSimTime()\n if type(now)==\"number\" and now>0 then\n  local hit=now+ms/1000\n  if not s.moves[id] or math.abs(hit-s.moves[id])>1.5 then\n   s.moves[id]=hit\n   api.addAutoSimPhase(\"CasterDowntime\",math.max(now,hit-2),hit,1)\n  end\n end\nend",
						conditions = 
						{
							
							{
								"40238a60-edaa-4297-81c5-38ca80d014d2",
								true,
							},
							
							{
								"c891501e-51d2-81d5-aa87-0ed00dbb5e6c",
								true,
							},
						},
						name = "Heavy Artillery Unit turret and pod hazards",
						uuid = "bc815f40-690e-b786-80c6-c12704817b30",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or (p.pos.x-200)^2+(p.pos.z+100)^2>34^2 then return false end\nlocal id=eventArgs.aoeID\nreturn p.incombat and (id==20614 or id==20615 or id==20616 or id==20617 or id==20476 or\n id==20479 or id==20480 or id==20464 or id==20465)",
						name = "Heavy Artillery Unit arena and mechanic",
						uuid = "c891501e-51d2-81d5-aa87-0ed00dbb5e6c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nlocal maps={[917]=true}\nreturn not not (p and maps[p.localmapid])",
						dequeueIfLuaFalse = true,
						name = "Duty map",
						uuid = "40238a60-edaa-4297-81c5-38ca80d014d2",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/Heavy Artillery Unit/Draws",
			eventType = 18,
			name = "Heavy Artillery Unit turret and pod hazards",
			uuid = "e9fdccd4-8734-01b3-bfe3-91087a3fc967",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nlocal shapes=data.a24Voltage or {}\ndata.a24Voltage=shapes\nlocal old=shapes[e.entityID]\nif old then\n Argus.deleteTimedShape(old)\n shapes[e.entityID]=nil\nend\nif e.spellID==20484 then return end\nlocal caster=TensorCore.mGetEntity(e.entityID)\nlocal target=TensorCore.mGetEntity(e.targetID)\nif not caster or not caster.pos or not target or not target.pos then return end\nshapes[e.entityID]=TensorCore.getStaticDrawer(0x603333FF,2):addTimedConeOnEnt(7200,caster.id,60,math.pi/6,target.id,0,false,true)",
						conditions = 
						{
							
							{
								"f15eef6e-4579-69ba-96c5-35ae291ff769",
								true,
							},
						},
						name = "Heavy Artillery Unit Unconventional Voltage cone",
						uuid = "d2482e9c-a4b0-a860-8f79-d096a0594c62",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or (p.pos.x-200)^2+(p.pos.z+100)^2>34^2 then return false end\nlocal e=eventArgs\nreturn e.entityContentID==9650 and ((p.incombat and e.spellID==20485 and e.targetID>0) or\n (e.spellID==20484 and data.a24Voltage and data.a24Voltage[e.entityID]~=nil))",
						dequeueIfLuaFalse = true,
						name = "Heavy Artillery Unit arena and mechanic",
						uuid = "f15eef6e-4579-69ba-96c5-35ae291ff769",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/Heavy Artillery Unit/Draws",
			eventType = 2,
			name = "Heavy Artillery Unit Unconventional Voltage cone",
			uuid = "bc929584-16ab-a3e0-84e2-b7f336c71fce",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nlocal s=data.a24\nif not s then return end\nlocal towers=s.towers\nlocal old=towers[e.entityID]\nif e.a2==4 or e.a2==0x00040100 then\n if old and old.shape then Argus.deleteTimedShape(old.shape) end\n towers[e.entityID]=nil\n return\nend\nif old and old.expires>Now() then return end\nlocal tower=TensorCore.mGetEntity(e.entityID)\nif not tower or not tower.pos then return end\nlocal p=tower.pos\nlocal ms=20000\nlocal shape=TensorCore.getStaticDrawer(0x48FFFFFF,2):addTimedCircle(ms,p.x,p.y,p.z,3,0,false,true)\ntowers[e.entityID]={shape=shape,expires=Now()+ms}\nAnyoneCore.addWorldTextCountdown(ms,{x=p.x,y=p.y+1,z=p.z},0xFFFFFFFF,true,1.1)",
						conditions = 
						{
							
							{
								"de886831-b029-43fe-8e92-f0ffc40f3060",
								true,
							},
							
							{
								"cfca1d3e-cc83-00ae-83a2-6bd704f01744",
								true,
							},
						},
						name = "Heavy Artillery Unit neutral Chemical Burn tower timers",
						uuid = "5e43b37c-9b8a-1d17-825e-3dd3b1d2e2ee",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or (p.pos.x-200)^2+(p.pos.z+100)^2>34^2 then return false end\nlocal e=eventArgs\nreturn p.incombat and e.entityContentID==0x1EB055 and\n ((e.a2==1 and e.a3==2) or e.a2==0x00010002 or (e.a2==4 and e.a3==256) or e.a2==0x00040100)",
						name = "Heavy Artillery Unit arena and mechanic",
						uuid = "cfca1d3e-cc83-00ae-83a2-6bd704f01744",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nlocal maps={[917]=true}\nreturn not not (p and maps[p.localmapid])",
						dequeueIfLuaFalse = true,
						name = "Duty map",
						uuid = "de886831-b029-43fe-8e92-f0ffc40f3060",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/Heavy Artillery Unit/Draws",
			eventType = 19,
			name = "Heavy Artillery Unit neutral Chemical Burn tower timers",
			uuid = "3da758a0-3cf0-4cb3-9ffb-10ded8d440a8",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal target=TensorCore.mGetEntity(eventArgs.entityID)\nif not target or not target.pos then return end\nlocal boss\nfor _,e in pairs(TensorCore.getEntityGroupList(\"ContentID\",{contentid=9650}) or {}) do\n if e.alive and e.attackable and e.targetable and e.pos then boss=e;break end\nend\nif not boss then return end\nlocal queue=data.a24Tankbusters or {}\ndata.a24Tankbusters=queue\nlocal now=Now()\nwhile queue[1] and queue[1].deadline<now do table.remove(queue,1) end\nfor _,entry in ipairs(queue) do if entry.target==target.id then return end end\nlocal ms=6200\nlocal drawer=TensorCore.getStaticDrawer(0x903333FF,2)\nlocal beam=drawer:addTimedRectOnEnt(ms,boss.id,60,8,target.id,0,true,false,true)\nlocal ring=drawer:addTimedCircleOnEnt(ms,target.id,1.5,0,false,true)\nqueue[#queue+1]={beam=beam,ring=ring,target=target.id,deadline=now+ms}",
						conditions = 
						{
							
							{
								"f4edd8d0-4dbe-4366-9da8-33caf6e61ad0",
								true,
							},
							
							{
								"8c948750-e3d9-3193-a476-14554d0e8b93",
								true,
							},
						},
						name = "Heavy Artillery Unit High-Powered Laser tankbuster",
						uuid = "07e324c2-3a5a-6362-8197-edc6aa234d8c",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or (p.pos.x-200)^2+(p.pos.z+100)^2>34^2 then return false end\nreturn p.incombat  and eventArgs.markerID==230",
						name = "Heavy Artillery Unit arena and mechanic",
						uuid = "8c948750-e3d9-3193-a476-14554d0e8b93",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nlocal maps={[917]=true}\nreturn not not (p and maps[p.localmapid])",
						dequeueIfLuaFalse = true,
						name = "Duty map",
						uuid = "f4edd8d0-4dbe-4366-9da8-33caf6e61ad0",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/Heavy Artillery Unit/Draws",
			eventType = 4,
			name = "Heavy Artillery Unit High-Powered Laser tankbuster",
			uuid = "1125d9d3-aeda-98a8-996d-2e351c2efbdf",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal drawer=TensorCore.getStaticDrawer(0xC03333FF,2)\nlocal player=TensorCore.mGetPlayer()\nfor id,entry in pairs(data.puppetsEnergyOrbs) do\n if not entry.spent then\n  local orb=TensorCore.mGetEntity(id)\n  if orb and orb.pos then\n   local p=orb.pos\n   if TensorCore.getDistance2d(player.pos,p)<=55 then\n    drawer:addCircle(p.x,p.y+.10,p.z,entry.model==11908 and 1.8 or 2,false,0)\n   end\n  end\n end\nend",
						conditions = 
						{
							
							{
								"0badbf09-c20b-ca47-a15f-27a7bd02e05f",
								true,
							},
						},
						name = "Heavy Artillery Unit moving Energy orb rings",
						uuid = "a5f1a2a2-b0ac-cc88-88a4-6125305ef3fc",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local orbs=data.puppetsEnergyOrbs\nif not orbs or not next(orbs) then return false end\nlocal player=TensorCore.mGetPlayer()\nif not player or player.localmapid~=917 or not player.pos then return false end\nlocal p=player.pos\nreturn (p.x-200)^2+(p.z+100)^2<=36^2 or\n (math.abs(p.x-200)<=30 and p.z>=-505 and p.z<=-275)",
						name = "Heavy Artillery Unit arena and mechanic",
						uuid = "0badbf09-c20b-ca47-a15f-27a7bd02e05f",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/Heavy Artillery Unit/Draws",
			eventType = 12,
			name = "Puppets Bunker moving Energy orb ground rings",
			uuid = "4934c340-4584-4146-8fb4-f4ca314225cc",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal entry=data.puppetsEnergyOrbs[eventArgs.entityID]\nif entry then entry.spent=true end",
						conditions = 
						{
							
							{
								"4fae989c-9f5e-25ea-a3a4-f841d16eb0b4",
								true,
							},
						},
						name = "Heavy Artillery Unit Energy Bomb ring cleanup",
						uuid = "757f0f4d-399b-2328-9696-13b835d39148",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nlocal e=eventArgs\nlocal state=data.puppetsEnergyOrbs\nlocal entry=state and state[e.entityID]\nreturn p~=nil and p.localmapid==917 and e.spellID==20474 and e.entityContentID==9664 and entry~=nil and entry.model==11884",
						dequeueIfLuaFalse = true,
						name = "Heavy Artillery Unit arena and mechanic",
						uuid = "4fae989c-9f5e-25ea-a3a4-f841d16eb0b4",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/Heavy Artillery Unit/Draws",
			eventType = 2,
			name = "Heavy Artillery Unit Energy Bomb ring cleanup",
			uuid = "9f5289e3-b25f-a508-b4df-ed8bd65a1e03",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal queue=data.a24Tankbusters\nlocal now=Now()\nwhile queue[1] and queue[1].deadline<now do table.remove(queue,1) end\nlocal hit=table.remove(queue,1)\nif not hit then return end\nif hit.beam then Argus.deleteTimedShape(hit.beam) end\nif hit.ring then Argus.deleteTimedShape(hit.ring) end",
						conditions = 
						{
							
							{
								"1e2fe740-b78b-2f90-b005-3e4e3de8ab61",
								true,
							},
						},
						name = "Heavy Artillery Unit clear resolved tankbuster indicator",
						uuid = "bf8448e1-717a-fd22-be7e-8fc3e846a27d",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or (p.pos.x-200)^2+(p.pos.z+100)^2>34^2 then return false end\nlocal e=eventArgs\nlocal queue=data.a24Tankbusters\nreturn queue~=nil and #queue>0 and e.entityContentID==9650 and e.spellID==20482",
						dequeueIfLuaFalse = true,
						name = "Heavy Artillery Unit arena and mechanic",
						uuid = "1e2fe740-b78b-2f90-b005-3e4e3de8ab61",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/Heavy Artillery Unit/Draws",
			eventType = 2,
			name = "Heavy Artillery Unit clear resolved tankbuster indicator",
			uuid = "f68cf4e3-d202-11c0-8820-07e160c4bc01",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal o=TensorCore.mGetEntity(e.entityID)\nif not o or not o.pos then return end\nlocal lower=(e.a2==16 and e.a3==32)\nlocal ang=math.atan2(o.pos.x-200,o.pos.z+100)\nlocal step=math.pi/3\nang=math.floor(ang/step+0.5)*step\nlocal now=Now()\nlocal H=_G.PB_HAU\nif not H or now-H.t>45000 then H={t=now,act=now+9680,lower={},upper={}} _G.PB_HAU=H end\nlocal list=lower and H.lower or H.upper\nfor _,a in ipairs(list) do if math.abs(a-ang)<0.1 then return end end\nlist[#list+1]=ang",
						conditions = 
						{
							
							{
								"ada966b8-1096-661b-949c-28d8eaae1670",
								true,
							},
						},
						name = "Record laser angles",
						uuid = "4ad020a9-d48d-9671-918e-87033f902bf4",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or (p.pos.x-200)^2+(p.pos.z+100)^2>40^2 then return false end\nlocal e=eventArgs\nif not e or e.entityContentID~=2007457 then return false end\nreturn (e.a2==16 and e.a3==32) or (e.a2==128 and e.a3==256)\n",
						dequeueIfLuaFalse = true,
						name = "Laser Turret lasers set",
						uuid = "ada966b8-1096-661b-949c-28d8eaae1670",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/Heavy Artillery Unit/Draws",
			eventType = 19,
			name = "Heavy Artillery Unit Laser Turret record",
			uuid = "ccfc13b6-1bbb-eebc-920a-5b133b3288d3",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local H=_G.PB_HAU\nif not H then return end\nlocal now=Now()\nlocal el=now-H.act\nif el>12000 then _G.PB_HAU=nil return end\nlocal p=TensorCore.mGetPlayer()\nif not p or not p.pos then return end\nlocal y=p.pos.y\nlocal red=TensorCore.getStaticDrawer(0x703333FF,2)\nlocal third=math.pi/3\nlocal R=34\n-- upper laser waves: inner/outer radius and the window each wave is dangerous (ms after activation).\n-- Ends are the last observed hit (2385 / 5356 / 8374 ms) plus about 0.2 s.\nlocal waves={{6,16,-99999,2600},{14,23,900,5600},{21,30,3900,8600}}\n-- lower lasers: last observed hit 3540 ms\nlocal lowerActive=el<3700\nlocal upperActive=false\nfor _,w in ipairs(waves) do\n if el>=w[3] and el<w[4] then upperActive=true break end\nend\n-- red: lower lasers and every upper wave that is currently dangerous\nif lowerActive then\n for _,a in ipairs(H.lower) do red:addCone(200,y,-100,40,third,a,false) end\nend\nfor _,w in ipairs(waves) do\n if el>=w[3] and el<w[4] then\n  for _,a in ipairs(H.upper) do red:addDonutCone(200,y,-100,w[1],w[2],third,a,false) end\n end\nend\n-- green: subtractive. All six sectors minus everything that is dangerous right now,\n-- so the lower side turns green as soon as its lasers have finished\nif not upperActive then return end\nlocal channel=Argus2.getNextUnusedChannel(true)\nif not channel or channel==0 then return end\nif channel==1 then channel=Argus2.getNextUnusedChannel(true) end\nif not channel or channel<=1 then return end\nlocal flags=Argus2.RenderFlags\nlocal baseFlags=flags.FLAG_WARP_TERRAIN+flags.FLAG_OCCLUSION_BASE\nlocal maskFlags=flags.FLAG_WARP_TERRAIN+flags.FLAG_OCCLUDE\nlocal safe=TensorCore.getStaticDrawer(0x6033FF33,2,channel,baseFlags)\nlocal mask=TensorCore.getStaticDrawer(0xFFFFFFFF,0,channel,maskFlags)\nfor _,a in ipairs(H.upper) do\n safe:addCone(200,y,-100,R,third,a,false,baseFlags)\nend\nfor _,a in ipairs(H.lower) do\n safe:addCone(200,y,-100,R,third,a,false,baseFlags)\nend\nif lowerActive then\n for _,a in ipairs(H.lower) do mask:addCone(200,y,-100,40,third,a,false,maskFlags) end\nend\nfor _,w in ipairs(waves) do\n if el>=w[3] and el<w[4] then\n  for _,a in ipairs(H.upper) do\n   mask:addDonutCone(200,y,-100,w[1]-0.5,w[2]+0.5,third,a,false,maskFlags)\n  end\n end\nend",
						conditions = 
						{
							
							{
								"4d12e9bd-37f3-971b-a069-497dbb793f52",
								true,
							},
						},
						name = "Draw lasers",
						uuid = "d6dd7ada-c99c-3092-b518-b97622b4a1ff",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or (p.pos.x-200)^2+(p.pos.z+100)^2>40^2 then return false end\nreturn _G.PB_HAU~=nil\n",
						dequeueIfLuaFalse = true,
						name = "Laser Turret active",
						uuid = "4d12e9bd-37f3-971b-a069-497dbb793f52",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/Heavy Artillery Unit/Draws",
			eventType = 12,
			name = "Heavy Artillery Unit Laser Turret early red and green",
			uuid = "c0499402-dd17-1fd5-8b12-5e378eae0dcd",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal ms=math.floor(e.startTime+e.duration*1000-Now())\nif ms<=0 then return end\nlocal t=_G.PB_HAUPods\nif not t then t={} _G.PB_HAUPods=t end\nlocal now=Now()\nfor i=#t,1,-1 do if t[i].exp<now then table.remove(t,i) end end\nt[#t+1]={id=e.aoeID,x=e.x,y=e.y,z=e.z,h=e.heading,exp=now+ms}",
						conditions = 
						{
							
							{
								"711d5646-8261-41ee-b3c4-504fddfda33d",
								true,
							},
						},
						name = "Record pod hazard",
						uuid = "73d263da-4b00-2079-a97a-5303d59c7605",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or (p.pos.x-200)^2+(p.pos.z+100)^2>40^2 then return false end\nlocal e=eventArgs\nreturn e~=nil and not e.friendly and (e.aoeID==20464 or e.aoeID==20465)\n",
						dequeueIfLuaFalse = true,
						name = "Pod laser or hammer",
						uuid = "711d5646-8261-41ee-b3c4-504fddfda33d",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/Heavy Artillery Unit/Draws",
			eventType = 18,
			name = "Heavy Artillery Unit pod hazards record",
			uuid = "cb1678e6-664f-3fb1-8c4a-6ac71d7496d6",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local t=_G.PB_HAUPods\nif not t or #t==0 then return end\nlocal now=Now()\nlocal live=false\nfor i=#t,1,-1 do\n if t[i].exp<now then table.remove(t,i) else live=true end\nend\nif not live then return end\nlocal p=TensorCore.mGetPlayer()\nif not p or not p.pos then return end\nlocal flags=Argus2.RenderFlags\nlocal channel=Argus2.getNextUnusedChannel(true)\nif not channel or channel==0 then return end\nlocal baseFlags=flags.FLAG_WARP_TERRAIN+flags.FLAG_OCCLUSION_BASE\nlocal maskFlags=flags.FLAG_WARP_TERRAIN+flags.FLAG_OCCLUDE\nlocal mask=TensorCore.getStaticDrawer(0xFFFFFFFF,0,channel,maskFlags)\nlocal safe=TensorCore.getStaticDrawer(0x5000FF00,1,channel,baseFlags)\nsafe:addCircle(200,p.pos.y,-100,31,false,baseFlags)\nfor _,h in ipairs(t) do\n if h.id==20464 then\n  mask:addRect(h.x,h.y,h.z,60,12,h.h,false,maskFlags)\n else\n  mask:addCircle(h.x,h.y,h.z,18,false,maskFlags)\n end\nend",
						conditions = 
						{
							
							{
								"769e0c7e-6952-37c8-a06c-432436bc55ea",
								true,
							},
						},
						name = "Draw safe area",
						uuid = "048fd00e-6c81-9b85-a389-ea9fb0e65476",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or (p.pos.x-200)^2+(p.pos.z+100)^2>40^2 then return false end\nreturn _G.PB_HAUPods~=nil and #_G.PB_HAUPods>0\n",
						dequeueIfLuaFalse = true,
						name = "Pod hazards active",
						uuid = "769e0c7e-6952-37c8-a06c-432436bc55ea",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/Heavy Artillery Unit/Draws",
			eventType = 12,
			name = "Heavy Artillery Unit pod safe area (green)",
			uuid = "6e7283e5-f4ec-8f4c-b357-1a8826c3f3be",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Puppets' Bunker",
			name = "Trash ",
			uuid = "d1952a6d-2af4-cca8-ab79-eece4bbef8ab",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Puppets' Bunker/Trash ",
			name = " Energy orbs",
			uuid = "dea2bd14-4b3e-a66b-9046-ff7bc9e4984f",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Puppets' Bunker/Trash / Energy orbs",
			name = "Draws",
			uuid = "e374e73d-c8b2-5775-85bf-381b481b126e",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal state=data.puppetsEnergyOrbs or {}\ndata.puppetsEnergyOrbs=state\nlocal player=TensorCore.mGetPlayer()\nlocal active={}\nfor _,orb in pairs(EntityList(\"contentid=9664\") or {}) do\n local p=orb.pos\n if p and math.abs(p.y-player.pos.y)<3 and Argus.isEntityVisible(orb) then\n  local model=Argus.getEntityModel(orb)\n  local bossOrb=model==11884 and (p.x-200)^2+(p.z+100)^2<=47^2\n  local trashOrb=model==11908 and p.z>=-505 and p.z<=-275\n  if bossOrb or trashOrb then\n   local entry=state[orb.id] or {}\n   entry.model=model\n   active[orb.id]=entry\n  end\n end\nend\ndata.puppetsEnergyOrbs=active",
						conditions = 
						{
							
							{
								"bbd2e9ba-aad8-a208-8789-ce766c699a23",
								true,
							},
						},
						name = "Puppets Bunker trash moving Energy orb rings",
						uuid = "e19f1fc2-f7c5-2073-9f20-a640c7078461",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player=TensorCore.mGetPlayer()\nif not player or player.localmapid~=917 or not player.pos then return false end\nlocal p=player.pos\nreturn (p.x-200)^2+(p.z+100)^2<=36^2 or\n (math.abs(p.x-200)<=30 and p.z>=-505 and p.z<=-275)",
						dequeueIfLuaFalse = true,
						name = "Puppets Bunker corridor Energy",
						uuid = "bbd2e9ba-aad8-a208-8789-ce766c699a23",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/Trash / Energy orbs/Draws",
			name = "Puppets Bunker scan visible Energy orbs",
			throttleTime = 150,
			uuid = "5b29b7a3-e20b-6551-9911-3b3572d5c03f",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal entry=data.puppetsEnergyOrbs[eventArgs.entityID]\nif entry then entry.spent=true end",
						conditions = 
						{
							
							{
								"7c31f7a6-9882-56c3-832a-3d9356da93ce",
								true,
							},
						},
						name = "Puppets Bunker trash Energy Bomb cleanup",
						uuid = "3f54ab8e-7365-aa13-8fd6-ad91ffe08258",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nlocal e=eventArgs\nlocal state=data.puppetsEnergyOrbs\nlocal entry=state and state[e.entityID]\nreturn p~=nil and p.localmapid==917 and e.spellID==20658 and e.entityContentID==9664 and entry~=nil and entry.model==11908",
						dequeueIfLuaFalse = true,
						name = "Puppets Bunker corridor Energy",
						uuid = "7c31f7a6-9882-56c3-832a-3d9356da93ce",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/Trash / Energy orbs/Draws",
			eventType = 2,
			name = "Puppets Bunker trash Energy Bomb cleanup",
			uuid = "fdb2cd76-a04e-9ea1-9404-76ba66af674e",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Puppets' Bunker",
			name = "The Compound",
			uuid = "eae03ead-d70a-4f36-b001-eb0cd2c6147f",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Puppets' Bunker/The Compound",
			name = "Draws",
			uuid = "1d7ab1f9-684e-f79b-8e8f-aa2d103f1592",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nlocal deadline=e.startTime+e.duration*1000\nif deadline<=Now() then return end\nlocal s=data.compoundSpin\nif not s or s.expires<=Now() then\n s={casts={},seen={},expires=deadline}\n data.compoundSpin=s\nend\nlocal key=string.format(\"%.2f/%.2f/%.3f/%.0f\",e.x,e.z,e.heading,deadline/100)\nif s.seen[key] then return end\ns.seen[key]=true\ns.casts[#s.casts+1]={x=e.x,z=e.z,sin=math.sin(e.heading),cos=math.cos(e.heading),deadline=deadline}\ns.expires=math.max(s.expires,deadline)\ns.dirty=true",
						conditions = 
						{
							
							{
								"06470e7f-bf51-4a8c-aa3f-f1bd82c46d68",
								true,
							},
							
							{
								"2ffd7a22-2cc7-f97f-96a7-75a7bd471e76",
								true,
							},
						},
						name = "The Compound Incongruous Spin capture",
						uuid = "70c81759-88f2-91a0-a05a-d9ecbaae2c9a",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or math.abs(p.pos.x-200)>31 or math.abs(p.pos.z+700)>31 then return false end\nreturn p.incombat and eventArgs.aoeID==20914",
						name = "The Compound arena and mechanic",
						uuid = "2ffd7a22-2cc7-f97f-96a7-75a7bd471e76",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nlocal maps={[917]=true}\nreturn not not (p and maps[p.localmapid])",
						dequeueIfLuaFalse = true,
						name = "Duty map",
						uuid = "06470e7f-bf51-4a8c-aa3f-f1bd82c46d68",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/The Compound/Draws",
			eventType = 18,
			name = "The Compound Incongruous Spin capture",
			uuid = "59d6661a-dea6-98fd-8b0a-fa4f398ea9e2",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal s=data.compoundSpin\nlocal p=TensorCore.mGetPlayer()\nlocal now=Now()\nlocal nextHit=s.expires\nfor _,c in ipairs(s.casts) do\n if c.deadline>now then nextHit=math.min(nextHit,c.deadline) end\nend\nif s.dirty or s.nextHit~=nextHit then\n s.dirty=false\n s.nextHit=nextHit\n local x,z,best\n -- Require clearance from all remaining sweeps. If no common spot exists,\n -- solve the first wave on its own and recalculate as soon as it resolves.\n for pass=1,2 do\n  for cx=172,228,2 do\n   for cz=-728,-672,2 do\n    local safe=true\n    for _,c in ipairs(s.casts) do\n     if c.deadline>now and (pass==1 or c.deadline<=nextHit+250) then\n      local dx,dz=cx-c.x,cz-c.z\n      local forward=dx*c.sin+dz*c.cos\n      local across=dx*c.cos-dz*c.sin\n      if forward>=-2 and forward<=82 and math.abs(across)<=77 then\n       safe=false\n       break\n      end\n     end\n    end\n    if safe then\n     local distance=(cx-p.pos.x)^2+(cz-p.pos.z)^2\n     if not best or distance<best then x,z,best=cx,cz,distance end\n    end\n   end\n  end\n  if best then s.pass=pass break end\n end\n s.destination=x and {x=x,y=p.pos.y+.05,z=z} or nil\n if not x then s.pass=2 end\nend\n-- Safe area in green: the arena minus every live sweep (only the first wave when no spot clears both).\nlocal flags=Argus2.RenderFlags\nlocal channel=Argus2.getNextUnusedChannel(true)\nif not channel or channel==0 then return end\nlocal baseFlags=flags.FLAG_WARP_TERRAIN+flags.FLAG_OCCLUSION_BASE\nlocal maskFlags=flags.FLAG_WARP_TERRAIN+flags.FLAG_OCCLUDE\nlocal mask=TensorCore.getStaticDrawer(0xFFFFFFFF,0,channel,maskFlags)\nlocal safe=TensorCore.getStaticDrawer(0x5000FF00,1,channel,baseFlags)\nlocal y=p.pos.y\nsafe:addRect(200,y,-728,56,56,0,false,baseFlags)\nfor _,c in ipairs(s.casts) do\n if c.deadline>now and (s.pass~=2 or c.deadline<=nextHit+250) then\n  mask:addRect(c.x-2*c.sin,y,c.z-2*c.cos,84,154,math.atan2(c.sin,c.cos),false,maskFlags)\n end\nend",
						conditions = 
						{
							
							{
								"aa213839-4002-ec06-bd93-43254403487b",
								true,
							},
						},
						name = "The Compound Incongruous Spin safe area",
						uuid = "9a184b31-dd9f-2aab-901e-af1dc8d52660",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or math.abs(p.pos.x-200)>31 or math.abs(p.pos.z+700)>31 then return false end\nlocal s=data.compoundSpin\nreturn p.alive and p.incombat and s~=nil and #s.casts>=4 and s.expires>Now()",
						name = "The Compound arena and mechanic",
						uuid = "aa213839-4002-ec06-bd93-43254403487b",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/The Compound/Draws",
			eventType = 12,
			name = "The Compound Incongruous Spin safe area",
			uuid = "362e5c1b-f63b-a95b-b80f-f0bee5a2cf1a",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal s=data.compoundBlade\nlocal p=TensorCore.mGetPlayer()\nif s.mechanical or s.prime then\n -- Mechanical Dissection / Decapitation: show the whole safe area in green (arena minus every live sweep).\n local now=Now()\n local flags=Argus2.RenderFlags\n local channel=Argus2.getNextUnusedChannel(true)\n if channel and channel~=0 then\n  local baseFlags=flags.FLAG_WARP_TERRAIN+flags.FLAG_OCCLUSION_BASE\n  local maskFlags=flags.FLAG_WARP_TERRAIN+flags.FLAG_OCCLUDE\n  local mask=TensorCore.getStaticDrawer(0xFFFFFFFF,0,channel,maskFlags)\n  local safe=TensorCore.getStaticDrawer(0x5000FF00,1,channel,baseFlags)\n  local y=p.pos.y\n  safe:addRect(200,y,-728,56,56,0,false,baseFlags)\n  for _,c in ipairs(s.casts) do\n   if c.deadline>now then\n    if c.kind==\"rect\" then\n     mask:addRect(c.x,y,c.z,c.length,c.radius*2,math.atan2(c.sin,c.cos),false,maskFlags)\n    elseif c.kind==\"circle\" then\n     mask:addCircle(c.x,y,c.z,c.radius,false,maskFlags)\n    else\n     mask:addDonut(c.x,y,c.z,c.inner,c.radius,false,maskFlags)\n    end\n   end\n  end\n end\n if s.prime and not s.mechanical then\n  -- Prime Blade: dangerous areas red.\n  local redDrawer=TensorCore.getStaticDrawer(0x703333FF,2)\n  local rf=flags.FLAG_WARP_TERRAIN\n  for _,c in ipairs(s.casts) do\n   if c.deadline>now then\n    if c.kind==\"rect\" then\n     redDrawer:addRect(c.x,p.pos.y,c.z,c.length,c.radius*2,math.atan2(c.sin,c.cos),false,rf)\n    elseif c.kind==\"circle\" then\n     redDrawer:addCircle(c.x,p.pos.y,c.z,c.radius,false,rf)\n    else\n     redDrawer:addDonut(c.x,p.pos.y,c.z,c.inner,c.radius,false,rf)\n    end\n   end\n  end\n end\n return\nend\nlocal spot=s.destination\nlocal drawer=TensorCore.getStaticDrawer(0xB033FF33,2)\nlocal flags=Argus2.RenderFlags.FLAG_WARP_TERRAIN\nif not s.prime then drawer:addCircle(spot.x,spot.y,spot.z,1.25,false,flags) end\nlocal distance=TensorCore.getDistance2d(p.pos,spot)\nif distance<=1.15 then\n s.arrived=true\nelseif distance>=1.6 then\n s.arrived=false\nend\nif not s.arrived then\n local heading=TensorCore.getHeadingToTarget(p.pos,spot)\n drawer:addArrow(p.pos.x,spot.y,p.pos.z,heading,math.max(.1,distance-.9),.4,.8,1,false,flags)\nend",
						conditions = 
						{
							
							{
								"cc994298-347f-5787-9759-55a3d74b7634",
								true,
							},
						},
						name = "Compound Dissection, Decapitation and Prime Blade safe area",
						uuid = "6295507a-7ffa-9155-9244-696ed1e96658",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.compoundBlade\nif not s or not (s.mechanical or s.prime) or (not s.destination and not (s.mechanical or s.prime)) or (s.nextHit or 0)<=Now() then return false end\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or math.abs(p.pos.x-200)>31 or math.abs(p.pos.z+700)>31 then return false end\nreturn p.alive and p.incombat",
						name = "The Compound arena and mechanic",
						uuid = "cc994298-347f-5787-9759-55a3d74b7634",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/The Compound/Draws",
			eventType = 12,
			name = "Compound Dissection, Decapitation and Prime Blade safe area",
			uuid = "d105771d-1d0d-672a-b5fa-584a3b27eea2",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nlocal destination=TensorCore.mGetEntity(e.sourceEntityID)\nlocal origin=TensorCore.mGetEntity(e.newTargetID)\nif not destination or not destination.pos or not origin or not origin.pos then return end\nlocal p,q=destination.pos,origin.pos\nif math.abs(p.x-200)>28 or math.abs(p.z+700)>28 or (p.x-q.x)^2+(p.z-q.z)^2<16 then return end\ndata.a25BladeTransfer={x=p.x,z=p.z,fromX=q.x,fromZ=q.z,observed=Now()}",
						conditions = 
						{
							
							{
								"04e5b715-cec5-49d4-bee2-4c9b680a8873",
								true,
							},
							
							{
								"4ae31310-c5f9-eb4f-8b1e-5881ed9a4745",
								true,
							},
						},
						name = "Compound 2P Forced Transfer destination",
						uuid = "5edbb370-ac08-be37-a4a5-576839c93ea9",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or math.abs(p.pos.x-200)>31 or math.abs(p.pos.z+700)>31 then return false end\nlocal e=eventArgs\nreturn p.incombat and e.newTetherID==116 and e.sourceEntityContentID==9644 and e.newTargetContentID==9644",
						name = "The Compound arena and mechanic",
						uuid = "4ae31310-c5f9-eb4f-8b1e-5881ed9a4745",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nlocal maps={[917]=true}\nreturn not not (p and maps[p.localmapid])",
						dequeueIfLuaFalse = true,
						name = "Duty map",
						uuid = "04e5b715-cec5-49d4-bee2-4c9b680a8873",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/The Compound/Draws",
			eventType = 15,
			name = "Compound 2P Forced Transfer destination",
			uuid = "792ab36f-93a2-f2c5-8032-8b6b7a703e5e",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal old=data.compoundFourParts\nif old and old.shape then Argus.deleteTimedShape(old.shape) end\nlocal s={boss=eventArgs.entityID,step=1,targets={},expires=Now()+22000}\ndata.compoundFourParts=s\nfunction s.preview()\n if s.shape then Argus.deleteTimedShape(s.shape);s.shape=nil end\n local target=s.targets[s.step]\n if not target then return end\n local drawer=TensorCore.getStaticDrawer(0x903333FF,2)\n local ms=({8000,3000,5000,3000})[s.step]\n if s.step%2==1 then\n  s.shape=drawer:addTimedCircleOnEnt(ms,target,6,0,false,true)\n else\n  s.shape=drawer:addTimedRectOnEnt(ms,s.boss,85,12,target,0,true,false,true)\n end\nend",
						conditions = 
						{
							
							{
								"3193a868-537a-2fe3-a595-ba9932938ede",
								true,
							},
						},
						name = "Compound 2P Four Parts Resolve opener",
						uuid = "4be180d0-f42b-5d86-b40e-30044e38fa9b",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or math.abs(p.pos.x-200)>31 or math.abs(p.pos.z+700)>31 then return false end\nreturn p.incombat and eventArgs.entityContentID==9644 and eventArgs.spellID==20894",
						dequeueIfLuaFalse = true,
						name = "The Compound arena and mechanic",
						uuid = "3193a868-537a-2fe3-a595-ba9932938ede",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/The Compound/Draws",
			eventType = 3,
			name = "Compound 2P Four Parts Resolve opener",
			uuid = "c45936f2-b3a8-8c49-97cd-c8d5fd53544b",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal s=data.compoundFourParts\nlocal number=eventArgs.markerID-78\nlocal target=eventArgs.entityID\nif target<=0 or s.targets[number]==target then return end\ns.targets[number]=target\nif number==s.step then s.preview() end",
						conditions = 
						{
							
							{
								"04460751-ae2a-4682-9da2-38cb25063a5f",
								true,
							},
							
							{
								"d00a76cd-f416-cd15-af7e-2254a2287bd1",
								true,
							},
						},
						name = "Compound 2P Four Parts Resolve numbered targets",
						uuid = "ddbefcdf-c437-223c-9275-0ed651a68117",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or math.abs(p.pos.x-200)>31 or math.abs(p.pos.z+700)>31 then return false end\nlocal s=data.compoundFourParts\nlocal id=eventArgs.markerID\nreturn s~=nil and s.expires>Now() and p.incombat and id>=79 and id<=82",
						name = "The Compound arena and mechanic",
						uuid = "d00a76cd-f416-cd15-af7e-2254a2287bd1",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nlocal maps={[917]=true}\nreturn not not (p and maps[p.localmapid])",
						dequeueIfLuaFalse = true,
						name = "Duty map",
						uuid = "04460751-ae2a-4682-9da2-38cb25063a5f",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/The Compound/Draws",
			eventType = 4,
			name = "Compound 2P Four Parts Resolve numbered targets",
			uuid = "3e21c90e-a786-7d3c-b8ed-688f96668916",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal s=data.compoundFourParts\ns.step=s.step+1\ns.preview()\nif s.step>4 then data.compoundFourParts=nil end",
						conditions = 
						{
							
							{
								"53115e15-4600-8559-b11e-10d63bf0ae8e",
								true,
							},
						},
						name = "Compound 2P Four Parts Resolve advance after hit",
						uuid = "3051a8de-1963-4020-81e1-e2d72882f946",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or math.abs(p.pos.x-200)>31 or math.abs(p.pos.z+700)>31 then return false end\nlocal s=data.compoundFourParts\nlocal e=eventArgs\nreturn s~=nil and s.expires>Now() and e.entityID==s.boss and e.entityContentID==9644 and\n ((s.step%2==1 and e.spellID==20895) or (s.step%2==0 and e.spellID==20896))",
						dequeueIfLuaFalse = true,
						name = "The Compound arena and mechanic",
						uuid = "53115e15-4600-8559-b11e-10d63bf0ae8e",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/The Compound/Draws",
			eventType = 2,
			name = "Compound 2P Four Parts Resolve advance after hit",
			uuid = "0e595b6f-8369-6dfa-91d3-7ef40692031e",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e.x or not e.y or not e.z or math.abs(e.x-200)>27 or math.abs(e.z+700)>27 then return end\nlocal now=Now()\nlocal s=data.a25Towers\nif not s or now>=s.expires or (now-s.spawnedAt>3000 and not s.spots[1].draw) then\n s={spots={},expires=now+17000,spawnedAt=now}\n data.a25Towers=s\nend\nfor _,tower in ipairs(s.spots) do\n if (tower.x-e.x)^2+(tower.z-e.z)^2<=1 or (tower.ox-e.x)^2+(tower.oz-e.z)^2<=1 then return end\nend\ns.spots[#s.spots+1]={x=e.x,y=e.y,z=e.z,ox=e.x,oz=e.z}",
						conditions = 
						{
							
							{
								"4f6e9bbb-0c33-49cb-84ae-75f92b43b879",
								true,
							},
							
							{
								"d37d3e15-c4f5-43e5-8215-c2fd7427f4c1",
								true,
							},
						},
						name = "Compound 2P Energy Compression tower capture",
						uuid = "259b96f4-fbee-d9a5-a0d3-55a88c65d756",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or math.abs(p.pos.x-200)>31 or math.abs(p.pos.z+700)>31 then return false end\nreturn p.incombat and eventArgs.keyID==2011246",
						name = "The Compound arena and mechanic",
						uuid = "d37d3e15-c4f5-43e5-8215-c2fd7427f4c1",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nlocal maps={[917]=true}\nreturn not not (p and maps[p.localmapid])",
						dequeueIfLuaFalse = true,
						name = "Duty map",
						uuid = "4f6e9bbb-0c33-49cb-84ae-75f92b43b879",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/The Compound/Draws",
			eventType = 29,
			name = "Compound 2P Energy Compression tower capture",
			uuid = "a90016f0-e712-0ff2-8782-f6ff777be1e1",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nlocal pod=TensorCore.mGetEntity(e.entityID)\nif not pod or not pod.pos then return end\nlocal now=Now()\nlocal p=pod.pos\nlocal s=data.a25EarlyPods\nif not s or s.deadline<now then\n s={casters={},deadline=now+e.channelTimeMax*1000+1000}\n data.a25EarlyPods=s\nend\ns.casters[e.entityID]={x=p.x,z=p.z,h=p.h}",
						conditions = 
						{
							
							{
								"70670fcc-8e60-9d10-9d7c-b8d20e9ce96e",
								true,
							},
						},
						name = "Compound 2P capture early R011 laser lines",
						uuid = "ce927299-1f08-5f97-8702-ee0f2af38083",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or math.abs(p.pos.x-200)>31 or math.abs(p.pos.z+700)>31 then return false end\nreturn p.incombat and eventArgs.entityContentID==9648 and eventArgs.spellID==20901",
						dequeueIfLuaFalse = true,
						name = "The Compound arena and mechanic",
						uuid = "70670fcc-8e60-9d10-9d7c-b8d20e9ce96e",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/The Compound/Draws",
			eventType = 3,
			name = "Compound 2P capture early R011 laser lines",
			uuid = "5f5c0563-69c5-94e0-85dc-e864762b7e50",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nlocal source=TensorCore.mGetEntity(e.sourceEntityID)\nlocal target=TensorCore.mGetEntity(e.newTargetID)\nif not source or not source.pos or not target or not target.pos then return end\nlocal dest,origin=source.pos,target.pos\nlocal now=Now()\nlocal towers=data.a25Towers\nif towers and towers.expires>now then\n for _,tower in ipairs(towers.spots) do\n  if (tower.ox-origin.x)^2+(tower.oz-origin.z)^2<=1 then\n   if e.newTetherID==116 then\n    tower.x,tower.y,tower.z=dest.x,dest.y,dest.z\n    towers.drawAt=now+180\n   else\n    TensorCore.getStaticDrawer(0x703333FF,2):addTimedCircle(8500,dest.x,dest.y,dest.z,8,0,false,true)\n   end\n   break\n  end\n end\nend\nlocal pods=data.a25EarlyPods\nif e.newTetherID==116 and pods and now<pods.deadline then\n for _,pod in pairs(pods.casters) do\n  if (pod.x-origin.x)^2+(pod.z-origin.z)^2<=1 then\n   pod.destination={x=dest.x,z=dest.z,h=dest.h}\n   pods.drawAt=now+180\n   break\n  end\n end\nend",
						conditions = 
						{
							
							{
								"dc793a84-20f4-498b-92db-14f57cfb8b8c",
								true,
							},
							
							{
								"0b12cfc2-8608-18c5-b259-d1d1ce5f413d",
								true,
							},
						},
						name = "Compound 2P preview Forced Transfer towers and hazards",
						uuid = "78a1c55e-c628-c509-a22f-b1d788b88860",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or math.abs(p.pos.x-200)>31 or math.abs(p.pos.z+700)>31 then return false end\nlocal e=eventArgs\nreturn p.incombat and e.sourceEntityContentID==9644 and e.newTargetContentID==9644 and\n (e.newTetherID==116 or e.newTetherID==117)",
						name = "The Compound arena and mechanic",
						uuid = "0b12cfc2-8608-18c5-b259-d1d1ce5f413d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nlocal maps={[917]=true}\nreturn not not (p and maps[p.localmapid])",
						dequeueIfLuaFalse = true,
						name = "Duty map",
						uuid = "dc793a84-20f4-498b-92db-14f57cfb8b8c",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/The Compound/Draws",
			eventType = 15,
			name = "Compound 2P preview Forced Transfer towers and hazards",
			uuid = "df4c9fb2-c8b5-8943-9a77-7351b45a49f6",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal now=Now()\nlocal t,b=data.a25Towers,data.a25EarlyPods\nif t and t.drawAt and now>=t.drawAt and now<t.expires then\n t.drawAt=nil\n local drawer=TensorCore.getStaticDrawer(0x8033FF33,2)\n for _,tower in ipairs(t.spots) do\n  if tower.draw then Argus.deleteTimedShape(tower.draw) end\n  tower.draw=drawer:addTimedCircle(math.floor(t.expires-now),tower.x,tower.y,tower.z,5,0,false,true)\n end\nend\nif b and b.drawAt and now>=b.drawAt and now<b.deadline then\n b.drawAt=nil\n local s={casts={},seen={},expires=b.deadline,prime=true,dirty=true}\n for _,caster in pairs(b.casters) do\n  local p=caster.destination or caster\n  s.casts[#s.casts+1]={kind=\"rect\",inner=0,radius=7.5,length=70,x=p.x,z=p.z,\n   sin=math.sin(p.h),cos=math.cos(p.h),deadline=b.deadline}\n end\n if #s.casts>=6 then\n  local old=data.compoundBlade\n  if old and old.primeCircle then Argus.deleteTimedShape(old.primeCircle) end\n  data.compoundBlade=s\n  b.preview=true\n end\nend",
						conditions = 
						{
							
							{
								"0703943f-1b6d-a090-9732-eefff4e1383e",
								true,
							},
						},
						name = "Compound 2P display predicted tower and laser destinations",
						uuid = "5560a19e-86e8-43f6-bbf2-22398cee0238",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or math.abs(p.pos.x-200)>31 or math.abs(p.pos.z+700)>31 then return false end\nlocal now=Now()\nlocal t,b=data.a25Towers,data.a25EarlyPods\nreturn not not (p.incombat and ((t and t.drawAt and now>=t.drawAt and now<t.expires) or\n (b and b.drawAt and now>=b.drawAt and now<b.deadline)))",
						dequeueIfLuaFalse = true,
						name = "The Compound arena and mechanic",
						uuid = "0703943f-1b6d-a090-9732-eefff4e1383e",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/The Compound/Draws",
			name = "Compound 2P display predicted tower and laser destinations",
			throttleTime = 100,
			uuid = "f2e53645-081f-1c83-9fd0-e38d1f836cde",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal s=data.a25Towers\nlocal caster=TensorCore.mGetEntity(eventArgs.entityID)\nif not caster or not caster.pos then return end\nlocal p=caster.pos\nfor i=#s.spots,1,-1 do\n local tower=s.spots[i]\n if (tower.x-p.x)^2+(tower.z-p.z)^2<=1 then\n  if tower.draw then Argus.deleteTimedShape(tower.draw) end\n  table.remove(s.spots,i)\n  break\n end\nend\nif #s.spots==0 then data.a25Towers=nil end",
						conditions = 
						{
							
							{
								"8611dd4b-7187-e740-b1fe-3511e17804d0",
								true,
							},
						},
						name = "Compound 2P clear resolved Energy Compression towers",
						uuid = "e191fda8-9dce-7405-bfc6-1b0bcd8383d6",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or math.abs(p.pos.x-200)>31 or math.abs(p.pos.z+700)>31 then return false end\nlocal s=data.a25Towers\nlocal e=eventArgs\nreturn s and s.expires>Now() and e.entityContentID==9644 and (e.spellID==20903 or e.spellID==20904)",
						dequeueIfLuaFalse = true,
						name = "The Compound arena and mechanic",
						uuid = "8611dd4b-7187-e740-b1fe-3511e17804d0",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/The Compound/Draws",
			eventType = 2,
			name = "Compound 2P clear resolved Energy Compression towers",
			uuid = "ac47e515-a0fc-b6ef-96a0-88dc9ec32c2d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Puppets' Bunker",
			name = "The Compound and 2P",
			uuid = "e5e308e5-982a-d5c6-bb44-0e7af867ce96",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Puppets' Bunker/The Compound and 2P",
			name = "AutoSim",
			uuid = "403b0bae-0fb6-842f-823a-155dcbd90569",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal p=TensorCore.mGetPlayer()\nfor _,b in pairs(TensorCore.getEntityGroupList(\"ContentID\",{contentid=11972}) or {}) do\n if b.alive and b.targetable and b.attackable and b.pos and TensorCore.getDistance2d(p.pos,b.pos)<=35 then\n  gStartCombat=false\n  local settings=AnyoneCore and AnyoneCore.Settings\n  if settings then\n   if settings.DutyHelper then settings.DutyHelper.enabled=false end\n   if settings.PrepullHelper then settings.PrepullHelper.enabled=false end\n  end\n  local t=TensorCore.mGetTarget()\n  if not (t and t.alive and t.attackable and t.targetable) then Player:SetTarget(b.id) end\n  data.a25Setup=true\n  return\n end\nend",
						conditions = 
						{
							
							{
								"23ec1e5c-383a-9a7f-a71f-c47df0680445",
								true,
							},
						},
						name = "Compound pre-pull setup",
						uuid = "a3bd847d-10b9-b246-8da9-6831e638a5e4",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or math.abs(p.pos.x-200)>31 or math.abs(p.pos.z+700)>31 then return false end\nreturn p.alive and not p.incombat and not data.a25Setup",
						dequeueIfLuaFalse = true,
						name = "The Compound and 2P arena and mechanic",
						uuid = "23ec1e5c-383a-9a7f-a71f-c47df0680445",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/The Compound and 2P/AutoSim",
			name = "Compound pre-pull setup",
			throttleTime = 1250,
			uuid = "ed0b93e9-7206-97d8-9fce-6c8c5b277b1a",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\nself.used=true\nlocal api=TensorCore.API.TensorACR\nlocal now=api.getAutoSimTime()\nif type(now)~=\"number\" or now<=0 or now>25 then return end\nlocal offset=now-6.8\napi.setAutoSimKillTime(439+offset)\napi.addAutoSimUncertainty(0,50)\ndata.a25={down=103.7+offset,resume=160+offset}\nlocal s=data.a25\ns.gap=api.addAutoSimPhase(\"FullDowntime\",s.down,s.resume,1)\ns.stun=api.addAutoSimPhase(\"Stun\",s.down,s.resume,1)",
						conditions = 
						{
							
							{
								"19656dc4-d337-5e03-84a4-5b4f35bcb91f",
								true,
							},
						},
						name = "Compound AutoSim opener and transition forecast",
						uuid = "ff811909-35e1-6405-91f1-5b4fd3b4f853",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or math.abs(p.pos.x-200)>31 or math.abs(p.pos.z+700)>31 then return false end\nreturn p.incombat and not data.a25 and eventArgs.entityContentID==11972 and eventArgs.spellID==20920",
						dequeueIfLuaFalse = true,
						name = "The Compound and 2P arena and mechanic",
						uuid = "19656dc4-d337-5e03-84a4-5b4f35bcb91f",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/The Compound and 2P/AutoSim",
			eventType = 3,
			name = "Compound AutoSim opener and transition forecast",
			uuid = "c3973cd6-82c1-a495-94d6-de49a0dc667d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\nself.used=true\nlocal s=data.a25\nlocal api=TensorCore.API.TensorACR\nlocal now=api.getAutoSimTime()\nif type(now)~=\"number\" or now<=s.down+10 then return end\ns.returned=true\nif s.gap then api.removeAutoSimPhase(s.gap) end\nif s.stun then api.removeAutoSimPhase(s.stun) end\napi.setAutoSimKillTime(now+279)",
						conditions = 
						{
							
							{
								"ca35743d-eba6-42e5-8ebe-ef11a10fd453",
								true,
							},
							
							{
								"d472a49d-9708-2917-bd45-cd50541b7d77",
								true,
							},
						},
						name = "Compound AutoSim resync on 2P return",
						uuid = "1ae7a688-057b-3ae9-b432-5cd96c257277",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or math.abs(p.pos.x-200)>31 or math.abs(p.pos.z+700)>31 then return false end\nreturn data.a25~=nil and not data.a25.returned and eventArgs.entityContentID==11974 and eventArgs.isTargetable",
						name = "The Compound and 2P arena and mechanic",
						uuid = "d472a49d-9708-2917-bd45-cd50541b7d77",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nlocal maps={[917]=true}\nreturn not not (p and maps[p.localmapid])",
						dequeueIfLuaFalse = true,
						name = "Duty map",
						uuid = "ca35743d-eba6-42e5-8ebe-ef11a10fd453",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/The Compound and 2P/AutoSim",
			eventType = 26,
			name = "Compound AutoSim resync on 2P return",
			uuid = "e0108909-c66b-2a78-a8c5-cbba736eaa42",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Puppets' Bunker/The Compound and 2P",
			name = "Draws",
			uuid = "a0f70e66-c3d7-1d72-8f6c-2943efe680db",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal id=eventArgs.aoeID\nlocal e=eventArgs\nlocal x,z=e.x,e.z\nif id==20890 then\n local t=data.a25BladeTransfer\n if not t then return end\n x,z=t.x,t.z\n data.a25BladeTransfer=nil\nend\nlocal deadline=e.startTime+e.duration*1000\nif deadline<=Now() then return end\nlocal s=data.compoundBlade\nif not s or s.expires<=Now() then\n s={casts={},seen={},expires=deadline}\n data.compoundBlade=s\nend\nlocal key=string.format(\"%d/%.2f/%.2f/%.3f/%.0f\",id,e.x,e.z,e.heading,deadline/100)\nif s.seen[key] then return end\ns.seen[key]=true\nlocal kind,inner,radius,length=\"rect\",0,5.5,85\nif id==20916 or id==21537 or id==20890 then\n kind,inner,radius=\"donut\",id==20916 and 7.5 or 8,43\nelseif id==21535 then\n kind,radius=\"circle\",20\nelseif id==21536 then\n radius=10\nelseif id==21531 then\n radius,length=7.5,70\nend\ns.casts[#s.casts+1]={kind=kind,inner=inner,radius=radius,length=length,x=x,z=z,sin=math.sin(e.heading),cos=math.cos(e.heading),deadline=deadline}\ns.expires=math.max(s.expires,deadline)\ns.mechanical=(id==20915 or id==20916)\ns.prime=s.prime or id==20890 or (id>=21535 and id<=21537)\nif s.mechanical or s.prime then\n if s.primeCircle then Argus.deleteTimedShape(s.primeCircle);s.primeCircle=nil end\n s.destination=nil\n s.arrived=nil\nend\ns.dirty=true",
						conditions = 
						{
							
							{
								"0d24f1b4-5c26-4704-bf24-a878cc145cd0",
								true,
							},
							
							{
								"727bec3f-004e-99dc-9762-defc74054d12",
								true,
							},
						},
						name = "Compound Blade geometry capture",
						uuid = "4c05864e-bd06-e714-8e0c-c9694b4eeecf",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or math.abs(p.pos.x-200)>31 or math.abs(p.pos.z+700)>31 then return false end\nlocal id=eventArgs.aoeID\nlocal pods=data.a25EarlyPods\nif id==21531 and pods and pods.preview and pods.deadline>Now() then return false end\nif id==20890 then\n local t=data.a25BladeTransfer\n local e=eventArgs\n return p.incombat and t~=nil and math.abs(t.observed-e.startTime)<=2000 and\n  (t.fromX-e.x)^2+(t.fromZ-e.z)^2<=9\nend\nreturn p.incombat and (id==20915 or id==20916 or id==21535 or id==21536 or id==21537 or id==21531)",
						name = "The Compound and 2P arena and mechanic",
						uuid = "727bec3f-004e-99dc-9762-defc74054d12",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nlocal maps={[917]=true}\nreturn not not (p and maps[p.localmapid])",
						dequeueIfLuaFalse = true,
						name = "Duty map",
						uuid = "0d24f1b4-5c26-4704-bf24-a878cc145cd0",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/The Compound and 2P/Draws",
			eventType = 18,
			name = "Compound Blade geometry capture",
			uuid = "f118062c-eb21-71f4-beb8-f8b4a1d846a2",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal s=data.compoundBlade\nlocal p=TensorCore.mGetPlayer()\nlocal now=Now()\nlocal nextHit=s.expires\nfor _,c in ipairs(s.casts) do\n if c.deadline>now then nextHit=math.min(nextHit,c.deadline) end\nend\nif s.dirty or s.nextHit~=nextHit then\n s.dirty=false\n s.nextHit=nextHit\n local x,z,best\n -- Require clearance from all remaining sweeps. If no common spot exists,\n -- solve the first wave on its own and recalculate as soon as it resolves.\n for pass=1,2 do\n  for cx=172,228,2 do\n   for cz=-728,-672,2 do\n    local safe=true\n    for _,c in ipairs(s.casts) do\n     if c.deadline>now and (pass==1 or c.deadline<=nextHit+250) then\n      local dx,dz=cx-c.x,cz-c.z\n      local forward=dx*c.sin+dz*c.cos\n      local across=dx*c.cos-dz*c.sin\n      local r2=dx*dx+dz*dz\n      if (c.kind==\"rect\" and forward>=-2 and forward<=c.length+2 and math.abs(across)<=c.radius+2)\n        or (c.kind==\"circle\" and r2<=(c.radius+2)^2)\n        or (c.kind==\"donut\" and r2>=(c.inner-2)^2 and r2<=(c.radius+2)^2) then\n       safe=false\n       break\n      end\n     end\n    end\n    if safe then\n     local distance=(cx-p.pos.x)^2+(cz-p.pos.z)^2\n     if not best or distance<best then x,z,best=cx,cz,distance end\n    end\n   end\n  end\n  if best then break end\n end\n s.destination=x and {x=x,y=p.pos.y+.05,z=z} or nil\n if s.prime then\n  if s.primeCircle then Argus.deleteTimedShape(s.primeCircle);s.primeCircle=nil end\n  s.arrived=nil\n end\nend\nif s.mechanical or s.prime then return end\nlocal spot=s.destination\nlocal ms=math.min(450,math.floor(nextHit-now))\nif not spot or ms<=0 then\n if s.circle then Argus.deleteTimedShape(s.circle);s.circle=nil end\n if s.arrow then Argus.deleteTimedShape(s.arrow);s.arrow=nil end\n return\nend\nlocal drawer=TensorCore.getStaticDrawer(0xB033FF33,2)\nif not s.circle or not drawer:updateTimedCircle(s.circle,ms,spot.x,spot.y,spot.z,1.25,0,false,true) then\n s.circle=drawer:addTimedCircle(ms,spot.x,spot.y,spot.z,1.25,0,false,true)\nend\nlocal distance=TensorCore.getDistance2d(p.pos,spot)\nif distance>1.25 then\n local h=TensorCore.getHeadingToTarget(p.pos,spot)\n local length=math.max(.1,distance-.9)\n if not s.arrow or not drawer:updateTimedArrow(s.arrow,ms,p.pos.x,spot.y,p.pos.z,h,length,.4,.8,1,0,false) then\n  s.arrow=drawer:addTimedArrow(ms,p.pos.x,spot.y,p.pos.z,h,length,.4,.8,1,0,false)\n end\nelseif s.arrow then\n Argus.deleteTimedShape(s.arrow)\n s.arrow=nil\nend",
						conditions = 
						{
							
							{
								"ae7d2c63-0b48-d26d-aa81-04504e3fc966",
								true,
							},
						},
						name = "Compound Blade green spot and arrow",
						uuid = "44d016d1-4bfa-b16f-b254-67c4f3a78388",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or math.abs(p.pos.x-200)>31 or math.abs(p.pos.z+700)>31 then return false end\nlocal s=data.compoundBlade\nreturn p.alive and p.incombat and s~=nil and #s.casts>0 and s.expires>Now()",
						dequeueIfLuaFalse = true,
						name = "The Compound and 2P arena and mechanic",
						uuid = "ae7d2c63-0b48-d26d-aa81-04504e3fc966",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/The Compound and 2P/Draws",
			name = "Compound Blade green spot and arrow",
			throttleTime = 125,
			uuid = "3baa53e1-aeff-5776-b0dd-5df3b37b8dd3",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nlocal ms=math.floor(e.startTime+e.duration*1000-Now())\nif ms<=0 then return end\nlocal id=e.aoeID\nlocal radius=(id==20906 or id==20939) and 8 or 6\nlocal drawer=TensorCore.getStaticDrawer(id==20891 and 0x8033FF33 or 0x753333FF,2)\nif (id==20918 or id==20909 or id==20910 or id==20891) and e.targetAttach and e.targetAttach>0 then\n drawer:addTimedCircleOnEnt(ms,e.targetAttach,radius,0,false,true)\nelse\n drawer:addTimedCircle(ms,e.x,e.y,e.z,radius,0,false,true)\nend",
						conditions = 
						{
							
							{
								"1c9d7abc-8710-43f1-aee0-e37a23a2c993",
								true,
							},
							
							{
								"fcdba264-8ebe-7160-962e-70d5b400e8e9",
								true,
							},
						},
						name = "Compound Contusion, Spiral and R012 draws",
						uuid = "c6787a0e-0833-e43a-8341-c95410c1ac88",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or math.abs(p.pos.x-200)>31 or math.abs(p.pos.z+700)>31 then return false end\nlocal id=eventArgs.aoeID\nreturn p.incombat and (id==20918 or id==20919 or id==20906 or id==20939 or id==20909 or id==20910 or id==20911 or id==20891)",
						name = "The Compound and 2P arena and mechanic",
						uuid = "fcdba264-8ebe-7160-962e-70d5b400e8e9",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nlocal maps={[917]=true}\nreturn not not (p and maps[p.localmapid])",
						dequeueIfLuaFalse = true,
						name = "Duty map",
						uuid = "1c9d7abc-8710-43f1-aee0-e37a23a2c993",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/The Compound and 2P/Draws",
			eventType = 18,
			name = "Compound Contusion, Spiral and R012 draws",
			uuid = "c72bf100-632c-afae-9c29-2af01327b458",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Puppets' Bunker/The Compound and 2P",
			name = "Mitigation",
			uuid = "34863c5c-7eab-9bd1-9e2e-6f7a4fe70b8a",
		},
		objectType = "folder",
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
								"b4553bd4-69d9-49ca-a9f0-ab2245ac1c23",
								true,
							},
							
							{
								"eabbee07-c5d6-679c-85bf-4817ff45d219",
								true,
							},
						},
						gVar = "ACR_TensorRequiem4_Hotbar_ArmsLength",
						name = "Request Arm's Length",
						uuid = "fdc8badb-140c-479f-a442-fbe6200655ac",
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
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or math.abs(p.pos.x-200)>31 or math.abs(p.pos.z+700)>31 then return false end\nlocal e=eventArgs\nif not p.incombat or not p.alive or e.entityContentID~=9644 or e.spellID~=20891 then return false end\nif not self.deadline then self.deadline=Now()+e.channelTimeMax*1000 end\nlocal remaining=self.deadline-Now()\nif remaining>2300 or remaining<500 then return false end\nlocal b=TensorCore.mGetEntity(e.entityID)\nreturn b~=nil and b.castinginfo~=nil and b.castinginfo.channelingid==e.spellID",
						name = "Three Parts Disdain shortly before first hit",
						uuid = "eabbee07-c5d6-679c-85bf-4817ff45d219",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nlocal maps={[917]=true}\nreturn not not (p and maps[p.localmapid])",
						dequeueIfLuaFalse = true,
						name = "Duty map",
						uuid = "b4553bd4-69d9-49ca-a9f0-ab2245ac1c23",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/The Compound and 2P/Mitigation",
			eventType = 3,
			name = "Compound 2P - Arm's Length for Three Parts Disdain",
			timeout = 8,
			uuid = "55c24b6e-e667-3960-8fdc-36d29e253215",
			version = 2,
		},
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
								"d290ca40-1da4-40c9-90da-b04b284dafd3",
								true,
							},
							
							{
								"a0d4eaf3-a40a-5665-abad-7068f3e2a786",
								true,
							},
							
							{
								"06b8b8b8-f790-7efe-b4a3-7b2fd15ef80f",
								true,
							},
						},
						gVar = "ACR_TensorNuke4_Hotbar_Surecast",
						uuid = "645d4319-5844-37b2-8d31-c4a7a7df917d",
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
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or math.abs(p.pos.x-200)>31 or math.abs(p.pos.z+700)>31 then return false end\nlocal e=eventArgs\nif not p.incombat or not p.alive or e.entityContentID~=9644 or e.spellID~=20891 then return false end\nif not self.deadline then self.deadline=Now()+e.channelTimeMax*1000 end\nlocal remaining=self.deadline-Now()\nif remaining>2300 or remaining<500 then return false end\nlocal b=TensorCore.mGetEntity(e.entityID)\nreturn b~=nil and b.castinginfo~=nil and b.castinginfo.channelingid==e.spellID",
						name = "Three Parts Disdain shortly before first hit",
						uuid = "a0d4eaf3-a40a-5665-abad-7068f3e2a786",
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
						uuid = "06b8b8b8-f790-7efe-b4a3-7b2fd15ef80f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nlocal maps={[917]=true}\nreturn not not (p and maps[p.localmapid])",
						dequeueIfLuaFalse = true,
						name = "Duty map",
						uuid = "d290ca40-1da4-40c9-90da-b04b284dafd3",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/The Compound and 2P/Mitigation",
			eventType = 3,
			name = "Compound 2P - Surecast for Three Parts Disdain",
			timeout = 8,
			uuid = "c043d7eb-15b3-87e1-9786-102755744289",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "The Tower at Paradigm's Breach",
			uuid = "e143fc88-8b12-6e4b-8f87-27884451013d",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Tower at Paradigm's Breach",
			name = "Setup",
			uuid = "3476c1a7-b044-c8fc-bb49-b2b79c24af0f",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "gStartCombat=false\nlocal s=AnyoneCore and AnyoneCore.Settings\nif s then\n if type(s.DutyHelper)=='table' then s.DutyHelper.enabled=false end\n if type(s.PrepullHelper)=='table' then s.PrepullHelper.enabled=false end\nend\nself.used=true",
						conditions = 
						{
							
							{
								"1dd25f85-324e-f8b5-ba70-19d70a88c884",
								true,
							},
						},
						name = "Disable duty and prepull helpers",
						uuid = "669f17f6-55c1-fa35-ba65-e37ae821f075",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn p~=nil and p.localmapid==966\n",
						dequeueIfLuaFalse = true,
						name = "Tower at Paradigm's Breach only",
						uuid = "1dd25f85-324e-f8b5-ba70-19d70a88c884",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Setup",
			eventType = 11,
			name = "[Paradigm's Breach] Helper setup",
			uuid = "11d6ac85-100e-be44-8687-85b26778ba7f",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local S=_G.PB_AllianceSettings\nif not S then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n S={values={},folder=folder,path=folder..'AllianceRaid-ParadigmsBreach.lua'}\n local existed=FileExists(S.path)\n if existed then\n  local ok,t=pcall(FileLoad,S.path)\n  if ok and type(t)=='table' then S.values=t end\n end\n local v=S.values\n local changed=not existed\n if type(v.kbLunge)~='number' or v.kbLunge<0 or v.kbLunge>2 or v.kbLunge~=math.floor(v.kbLunge) then v.kbLunge=0 changed=true end\n if type(v.kbPillar)~='boolean' then v.kbPillar=false changed=true end\n if changed then\n  pcall(function()\n   if not FolderExists(S.folder) then FolderCreate(S.folder) end\n   FileSave(S.path,v)\n  end)\n end\n _G.PB_AllianceSettings=S\nend\nlocal v=S.values\nlocal visible=GUI:Begin(\"[Paradigm's Breach] Settings\",true,GUI.WindowFlags_AlwaysAutoResize)\nif visible then\n local changed=false\n local modes={\"Off\",\"Knave Lunge\",\"Clone Lunge\"}\n local cur=GUI:Combo(\"Lunge knockback immunity\",v.kbLunge+1,modes)\n if cur and cur-1~=v.kbLunge then v.kbLunge=cur-1 changed=true end\n if GUI:IsItemHovered() then\n  GUI:SetTooltip(\"Requests Arm's Length (physical jobs) or Surecast (casters and healers) shortly before the chosen Lunge. Off by default: Lunge normally knocks you into the green landing boxes, so immunity keeps you where you stand. The ability is on a 120 second cooldown, so only one of the two Lunges (about 10 seconds apart) can be covered.\")\n end\n local pillar=GUI:Checkbox(\"Pillar Impact knockback immunity##PBPillar\",v.kbPillar)\n if pillar~=v.kbPillar then v.kbPillar=pillar changed=true end\n if GUI:IsItemHovered() then\n  GUI:SetTooltip(\"Requests Arm's Length or Surecast shortly before the Pillar Impact shockwave. Off by default: the knockback is part of the mechanic, so immunity keeps you beside the pillar.\")\n end\n local coneOld=v.rgConeSafe==true\n local cone=GUI:Checkbox(\"Red Girl cones: green safe area##PBConeSafe\",coneOld)\n if cone~=coneOld then v.rgConeSafe=cone changed=true end\n if GUI:IsItemHovered() then\n  GUI:SetTooltip(\"During the Diffuse Energy cone sequence, colours the arena green except the cones that fire next. The red cones stay. Only the cones are cut out, not other attacks.\")\n end\n local ringOld=v.ringFace~=false\n local ring=GUI:Checkbox(\"Distortion rings: auto lockface##PBRingFace\",ringOld)\n if ring~=ringOld then v.ringFace=ring changed=true end\n if GUI:IsItemHovered() then\n  GUI:SetTooltip(\"Turns you for each black or white ring shortly before it hits: white faces away from the arena centre, black faces the centre. On by default.\")\n end\n if changed then\n  pcall(function()\n   if not FolderExists(S.folder) then FolderCreate(S.folder) end\n   FileSave(S.path,v)\n  end)\n end\nend\nGUI:End()",
						conditions = 
						{
							
							{
								"9a9e228c-2ecf-40c6-9150-547fadaa29bc",
								true,
							},
						},
						name = "Settings window",
						uuid = "59cd9222-db13-f349-a27c-b98548325fad",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn p~=nil and p.localmapid==966\n",
						dequeueIfLuaFalse = true,
						name = "Tower at Paradigm's Breach only",
						uuid = "9a9e228c-2ecf-40c6-9150-547fadaa29bc",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Setup",
			eventType = 13,
			name = "[Paradigm's Breach] Settings",
			uuid = "e5ebf5c0-b40b-6b9b-9e26-49c391b89801",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal hits=e.hitTargets\nif not hits or #hits==0 then return end\nlocal t=_G.PB_OrbDone\nif not t then t={} _G.PB_OrbDone=t end\nlocal now=Now()\nt[e.entityID]=now\nlocal n=0\nfor k,v in pairs(t) do n=n+1 end\nif n>200 then for k,v in pairs(t) do if now-v>60000 then t[k]=nil end end end",
						conditions = 
						{
							
							{
								"c7dd24b7-dd94-0dfb-874a-7abcdbea0079",
								true,
							},
						},
						name = "Record used orb",
						uuid = "ae08f44d-849c-6679-b001-4a6c88218947",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 then return false end\nlocal e=eventArgs\nif not e then return false end\nlocal c=e.entityContentID\nreturn c==9664 or c==9992 or c==9951 or c==9956\n",
						dequeueIfLuaFalse = true,
						name = "Energy orb cast",
						uuid = "c7dd24b7-dd94-0dfb-874a-7abcdbea0079",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Setup",
			eventType = 2,
			name = "[Paradigm's Breach] Orb hit record",
			uuid = "58fa9ded-63eb-8801-af4c-b25c0733c6a4",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal B=MoogleTelegraphs and MoogleTelegraphs.Settings and MoogleTelegraphs.Settings.aoeIDUserBlacklist\nif not B then return end\nlocal wanted={[23552]=\"Deploy Armaments\",[23553]=\"Deploy Armaments\",[23554]=\"Deploy Armaments\",[23555]=\"Deploy Armaments\",[23557]=\"Deploy Armaments\",[23558]=\"Universal Assault\",[23670]=\"Wail\",[23671]=\"Wail\",[24229]=\"Colossal Impact\",[24230]=\"Colossal Impact\",[24231]=\"Colossal Impact\",[24235]=\"Magic Artillery Alpha\",[24239]=\"Light Leap\",[24240]=\"\",[24241]=\"Lunge\",[24245]=\"Roar\",[24611]=\"Diffuse Energy\",[24696]=\"Deploy Armaments\"}\nlocal SOURCE=\"Ultimate Reactions Pack (Alliance Raid)\"\nfor id,label in pairs(wanted) do\n local e=B[id]\n if not e or e.source~=SOURCE then B[id]={label=label,source=SOURCE} end\nend\n",
						conditions = 
						{
							
							{
								"8e39cc49-73f9-98a3-a1cc-a044eeb858c4",
								true,
							},
						},
						name = "Apply Paradigm's Breach blacklist",
						uuid = "9b96cc29-2313-67a6-b0aa-d0cbc216376e",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 then return false end\nlocal B=MoogleTelegraphs and MoogleTelegraphs.Settings and MoogleTelegraphs.Settings.aoeIDUserBlacklist\nif not B then return false end\nfor _,id in ipairs({23552,23553,23554,23555,23557,23558,23670,23671,24229,24230,24231,24235,24239,24240,24241,24245,24611,24696}) do\n local e=B[id]\n if not e or e.source~=\"Ultimate Reactions Pack (Alliance Raid)\" then return true end\nend\nreturn false\n",
						dequeueIfLuaFalse = true,
						name = "Blacklist needs update",
						uuid = "8e39cc49-73f9-98a3-a1cc-a044eeb858c4",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Setup",
			name = "[Paradigm's Breach] Moogle Telegraphs blacklist",
			throttleTime = 5000,
			uuid = "922c82d3-13fc-bea1-82a7-a1d452269d02",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Tower at Paradigm's Breach",
			name = "Knave of Hearts",
			uuid = "c0956e51-d9e3-0bb2-bcc9-040050353d61",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Tower at Paradigm's Breach/Knave of Hearts",
			name = "Draws",
			uuid = "6a4d7388-dc82-3e31-bf55-77ad566f9c38",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal ms=math.floor(e.startTime+e.duration*1000-Now())\nif ms<=0 then return end\nlocal SPEC={[24240]={skip=true},[24241]={skip=true},[24239]={skip=true},[24245]={skip=true},[24235]={skip=true},[24243]={skip=true}}\nlocal s=SPEC[e.aoeID]\nlocal ct=e.aoeCastType\nlocal k\nif s then\n if s.skip then return end\n k=s.k\nelse\n if ct==2 and e.aoeLength>0 and e.aoeLength<=30 and e.aoeType~=27 then k='c'\n elseif ct==12 and e.aoeLength>0 and e.aoeWidth>0 and e.aoeLength<=70 and e.aoeWidth<=40 then k='r'\n elseif ct==13 and e.aoeLength>0 and e.aoeLength<=50 then k='cone'\n end\nend\nif not k then return end\nlocal delay=0\nlocal a=e.aoeID\nif a==24228 or a==24229 or a==24230 then\n for _,hz in ipairs(_G.PB_Hazards or {}) do\n  if hz.id==24231 or hz.id==24776 then\n   local rem=hz.exp-Now()\n   if rem>0 and rem<4000 and rem>delay then delay=math.floor(rem) end\n  end\n end\n if delay>=ms then return end\nend\nif a==24236 then\n local myexp=e.startTime+e.duration*1000\n for _,o in ipairs(Argus.getCurrentAOEs() or {}) do\n  if o.aoeID==24236 then\n   local oe=o.startTime+o.duration*1000\n   if oe<myexp-500 and oe>Now() then\n    local dd=math.floor(oe-Now())\n    if dd>delay then delay=dd end\n   end\n  end\n end\n end\nlocal col=(s and s.col) or 0x703333FF\nlocal d=TensorCore.getStaticDrawer(col,2)\nlocal x,y,z=e.x,e.y,e.z\nif k=='c' then\n d:addTimedCircle(ms,x,y,z,e.aoeLength,0,false,true)\nelseif k=='r' then\n if a==24236 and delay>0 then\n  local gd=TensorCore.getStaticDrawer(0xB033FF33,2)\n  gd:addTimedRect(math.min(delay,ms),x,y,z,e.aoeLength,e.aoeWidth,e.heading,0,false,true)\n end\n if delay<ms then d:addTimedRect(ms-delay,x,y,z,e.aoeLength,e.aoeWidth,e.heading,delay,false,true) end\nelse\n local ang=(s and s.ang) or (e.aoeType==5 and 2*math.pi/3 or math.pi/2)\n d:addTimedCone(ms,x,y,z,e.aoeLength,ang,e.heading,0,false,true)\nend",
						conditions = 
						{
							
							{
								"f7e20887-5335-03af-ba38-1222ebfc1c09",
								true,
							},
						},
						name = "Knave of Hearts hazard draws",
						uuid = "4b976816-a85b-ecb1-a270-401626d21a87",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 or not p.pos then return false end\nlocal e=eventArgs\nif not e or e.friendly then return false end\nlocal c=e.contentID\nif not (c==9955 or c==10058 or c==9956) then return false end\nreturn (p.pos.x-(-800))^2+(p.pos.z-(-735))^2<=2500\n",
						dequeueIfLuaFalse = true,
						name = "Knave of Hearts arena and hazard",
						uuid = "f7e20887-5335-03af-ba38-1222ebfc1c09",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Knave of Hearts/Draws",
			eventType = 18,
			name = "[Paradigm's Breach] Knave of Hearts hazard draws",
			uuid = "3fbef16d-2b49-90bb-8170-276d628a14b4",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nif AnyoneCore and AnyoneCore.Shotcall then AnyoneCore.Shotcall(\"Leap: stay far from the landings\",true,3,false) end",
						conditions = 
						{
							
							{
								"c35b976f-d264-73ae-809f-90797102f6e1",
								true,
							},
						},
						name = "Light Leap callout",
						uuid = "18710fe1-18f3-b159-bf70-bbf6246ec4f3",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 or not p.pos or not p.incombat then return false end\nlocal e=eventArgs\nif not e then return false end\nif not (e.entityContentID==9955) then return false end\nlocal ok=false\nfor _,i in ipairs({24239}) do if e.spellID==i then ok=true end end\nreturn ok and (p.pos.x-(-800))^2+(p.pos.z-(-735))^2<=2500\n",
						dequeueIfLuaFalse = true,
						name = "Knave Light Leap",
						uuid = "c35b976f-d264-73ae-809f-90797102f6e1",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Knave of Hearts/Draws",
			eventType = 3,
			name = "[Paradigm's Breach] Knave Light Leap callout",
			uuid = "0ec90296-707c-5a7f-9c54-63d666d56446",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nif AnyoneCore and AnyoneCore.Shotcall then AnyoneCore.Shotcall(\"Lunge knockback: line up with the green boxes\",true,3,false) end",
						conditions = 
						{
							
							{
								"b088830e-16d4-2c5f-ae39-2196f0bfcbb7",
								true,
							},
						},
						name = "Lunge callout",
						uuid = "c1cf69be-e449-82cb-9853-3a1613b5915f",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 or not p.pos or not p.incombat then return false end\nlocal e=eventArgs\nif not e then return false end\nif not (e.entityContentID==9955 or e.entityContentID==10058) then return false end\nlocal ok=false\nfor _,i in ipairs({24241}) do if e.spellID==i then ok=true end end\nreturn ok and (p.pos.x-(-800))^2+(p.pos.z-(-735))^2<=2500\n",
						dequeueIfLuaFalse = true,
						name = "Knave Lunge",
						uuid = "b088830e-16d4-2c5f-ae39-2196f0bfcbb7",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Knave of Hearts/Draws",
			eventType = 3,
			name = "[Paradigm's Breach] Knave Lunge callout",
			uuid = "04e40e81-c07a-a54c-bf10-bf32f51be41e",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local cfgs={{cid=9664,rad=3.5},{cid=9956,rad=1.5}}\nlocal p=TensorCore.mGetPlayer()\nif not p or not p.pos then return end\nlocal st=data.pbOrb0\nif not st then st={nextScan=0,ids={},seen={}} data.pbOrb0=st end\nlocal now=Now()\nif now>=st.nextScan then\n st.nextScan=now+500\n st.ids={}\n for _,cfg in ipairs(cfgs) do\n  for id,b in pairs(TensorCore.entityList(\"contentid=\"..cfg.cid) or {}) do\n   if b.alive then st.ids[#st.ids+1]={id=id,rad=cfg.rad} end\n  end\n end\nend\nif #st.ids==0 then return end\nlocal d=TensorCore.getStaticDrawer(0x703333FF,2)\nfor _,s in ipairs(st.ids) do\n local o=TensorCore.mGetEntity(s.id)\n if o and o.alive and o.pos and not (_G.PB_OrbDone and _G.PB_OrbDone[s.id]) then\n  local r=st.seen[s.id]\n  if not r then r={x=o.pos.x,z=o.pos.z,first=now,moved=now,ever=false} st.seen[s.id]=r end\n  if (o.pos.x-r.x)^2+(o.pos.z-r.z)^2>0.01 then r.x=o.pos.x r.z=o.pos.z r.moved=now r.ever=true end\n  if (now-r.moved<=700 or (not r.ever and now-r.first<=2500)) and (o.pos.x-p.pos.x)^2+(o.pos.z-p.pos.z)^2<=45*45 then\n   d:addCircle(o.pos.x,o.pos.y+0.1,o.pos.z,s.rad,false)\n  end\n end\nend",
						conditions = 
						{
							
							{
								"daf28094-e2a3-9851-a23c-efbeb7077e34",
								true,
							},
						},
						name = "Energy orb and Spheroid rings",
						uuid = "8df9c86f-4aba-5269-b536-a9ff7ac1b17a",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 or not p.pos or not p.incombat then return false end\nreturn (p.pos.x-(-800))^2+(p.pos.z-(-735))^2<=2500\n",
						dequeueIfLuaFalse = true,
						name = "Knave of Hearts arena in combat",
						uuid = "daf28094-e2a3-9851-a23c-efbeb7077e34",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Knave of Hearts/Draws",
			eventType = 12,
			name = "[Paradigm's Breach] Energy orb Burst rings",
			uuid = "5edaea6e-a038-6e36-9f9a-25fd0aa3ed2b",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local S=_G.PB_Lunge\nif not S then return end\nlocal now=Now()\nif now-S.t>45000 then _G.PB_Lunge=nil return end\nlocal p=TensorCore.mGetPlayer()\nif not p or not p.pos then return end\nlocal e1=S.ids[1] and TensorCore.mGetEntity(S.ids[1])\nlocal e2=S.ids[2] and TensorCore.mGetEntity(S.ids[2])\nlocal function ch(e) local ci=e and e.castinginfo return ci~=nil and ci.channelingid==24241 end\nif ch(e1) then S.seen1=true end\nif ch(e2) then S.seen2=true end\nif S.exec and S.ids[1] and S.exec[S.ids[1]] then S.done1=true end\nif S.exec and S.ids[2] and S.exec[S.ids[2]] then S.done2=true end\nif S.done2 then _G.PB_Lunge=nil return end\nlocal lt=_G.PB_LeapT\nif not (S.seen1 or S.seen2 or (lt and S.t>lt and S.t-lt<40000)) then return end\nlocal live,nxt\nif not S.done1 then live=e1 nxt=e2 else live=e2 end\nif not live or not live.pos then return end\nlocal st={boxes={}}\nfor _,bx in ipairs(_G.PB_Boxes or {}) do\n if not S.done1 then\n  if bx.t<S.t-500 and now-bx.t>=3800 and now-bx.t<45000 then st.boxes[#st.boxes+1]=bx end\n elseif bx.t>=S.t-500 and now-bx.t<45000 then st.boxes[#st.boxes+1]=bx end\nend\nif #st.boxes==0 then return end\nlocal function dirOf(e)\n local vx,vz=-800-e.pos.x,-735-e.pos.z\n local dx,dz\n if math.abs(vx)>math.abs(vz) then dx=vx>0 and 1 or -1 dz=0 else dx=0 dz=vz>0 and 1 or -1 end\n return dx,dz,math.atan2(dx,dz)\nend\nlocal function ctr(b,dx,dz)\n if dz==1 then return b.x,b.z-3 end\n if dz==-1 then return b.x,b.z+11 end\n if dx==1 then return b.x-7,b.z+4 end\n return b.x+7,b.z+4\nend\nlocal function square(b,dx,dz,h,col)\n local d=TensorCore.getStaticDrawer(col,2)\n local cx,cz=ctr(b,dx,dz)\n d:addRect(cx-dx*1.5,b.y+0.1,cz-dz*1.5,3,3,h,false)\nend\nlocal d1x,d1z,h1=dirOf(live)\nlocal function blocked(px,pz,ox,oz,skip)\n for _,b in ipairs(st.boxes) do\n  if b~=skip then\n   local rx,rz=b.x-px,b.z-pz\n   local along=rx*ox+rz*oz\n   local perp=math.abs(rx*(-oz)+rz*ox)\n   if along>1 and perp<=4.5 then return true end\n  end\n end\n return false\nend\nlocal safe={}\nfor _,b in ipairs(st.boxes) do\n local ok=true\n -- second-push check suppressed for now\n if ok then safe[#safe+1]=b end\nend\nlocal function hit(cx,cz)\n local t=_G.PB_Hazards\n if not t then return false end\n for _,hz in ipairs(t) do\n  if hz.exp>now then\n   local px,pz=cx-hz.x,cz-hz.z\n   local fx,fz=math.sin(hz.h),math.cos(hz.h)\n   local along=px*fx+pz*fz\n   local perp=math.abs(px*fz-pz*fx)\n   if along>=-1.5 and along<=hz.len+1.5 and perp<=hz.w/2+1.5 then return true end\n  end\n end\n return false\nend\nlocal keep={}\nlocal dropped=0\nfor _,b in ipairs(safe) do\n if not hit(ctr(b,d1x,d1z)) then keep[#keep+1]=b else dropped=dropped+1 end\nend\nsafe=keep\nfor _,b in ipairs(safe) do square(b,d1x,d1z,h1,0x7033FF33) end\nif nxt and nxt.pos then\n local d2x,d2z,h2=dirOf(nxt)\n for _,bx in ipairs(_G.PB_Boxes or {}) do\n  if bx.t>=S.t-500 and now-bx.t<45000 then if hit(ctr(bx,d2x,d2z)) then dropped=dropped+1 else square(bx,d2x,d2z,h2,0x7000FFFF) end end\n end\nend",
						conditions = 
						{
							
							{
								"246ac6e8-5b24-a201-8eee-449d0ec0b369",
								true,
							},
						},
						name = "Lunge lanes",
						uuid = "d050b88b-7758-b91e-971c-8ab93453d92c",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn p~=nil and p.localmapid==966 and _G.PB_Lunge~=nil\n",
						dequeueIfLuaFalse = true,
						name = "Knave arena in combat",
						uuid = "246ac6e8-5b24-a201-8eee-449d0ec0b369",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Knave of Hearts/Draws",
			eventType = 12,
			name = "[Paradigm's Breach] Knave Lunge squares (1 green, 2 yellow)",
			uuid = "38623683-38d0-3448-b3d1-34e056fe1893",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\n_G.PB_LeapT=Now()\nlocal e=eventArgs\nif not e or e.aoeID~=24239 then return end\nlocal ms=math.floor(e.startTime+e.duration*1000-Now())\nif ms<=0 then return end\nlocal d=TensorCore.getStaticDrawer(0x703333FF,2)\nd:addTimedCircle(ms,e.x,e.y,e.z,e.aoeLength,0,false,true)",
						conditions = 
						{
							
							{
								"52548b16-7bc4-2f6b-8da0-8559f2aa5a87",
								true,
							},
						},
						name = "Danger circles",
						uuid = "6d53a0f7-f891-09d1-b3b0-a2560395518b",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 or not p.pos then return false end\nlocal e=eventArgs\nif not e or e.friendly or e.aoeID~=24239 then return false end\nreturn (p.pos.x-(-800))^2+(p.pos.z-(-735))^2<=2500\n",
						dequeueIfLuaFalse = true,
						name = "Light Leap in Knave arena",
						uuid = "52548b16-7bc4-2f6b-8da0-8559f2aa5a87",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Knave of Hearts/Draws",
			eventType = 18,
			name = "[Paradigm's Breach] Knave Light Leap danger circles",
			uuid = "f52b8c35-cf40-ff75-90bb-c9af3a86c5fb",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal now=Now()\nlocal S=_G.PB_Lunge\nif not S or now-S.t>45000 or #S.ids>=2 then S={t=now,ids={}} _G.PB_Lunge=S end\nfor _,id in ipairs(S.ids) do if id==e.entityID then return end end\nS.ids[#S.ids+1]=e.entityID",
						conditions = 
						{
							
							{
								"90bc19e7-54b7-1aa7-be30-5e23c082d5e8",
								true,
							},
						},
						name = "Record Lunge order",
						uuid = "2a078173-53e5-7f5f-b10f-8b47c45290b4",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 then return false end\nlocal e=eventArgs\nreturn e~=nil and (e.markerID==278 or e.markerID==279) and (e.entityContentID==9955 or e.entityContentID==10058)\n",
						dequeueIfLuaFalse = true,
						name = "Lunge order marker",
						uuid = "90bc19e7-54b7-1aa7-be30-5e23c082d5e8",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Knave of Hearts/Draws",
			eventType = 4,
			name = "[Paradigm's Breach] Knave Lunge order markers",
			uuid = "9f258e62-d372-b3ff-8f26-9aef9ab7a3d4",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal ms=math.floor(e.startTime+e.duration*1000-Now())\nif ms<=0 then return end\nlocal t=_G.PB_Hazards\nif not t then t={} _G.PB_Hazards=t end\nlocal now=Now()\nfor i=#t,1,-1 do if t[i].exp<now then table.remove(t,i) end end\nt[#t+1]={id=e.aoeID,x=e.x,z=e.z,h=e.heading,len=e.aoeLength,w=e.aoeWidth,exp=now+ms}",
						conditions = 
						{
							
							{
								"524b9bd6-e640-7c3b-8092-539dce6af583",
								true,
							},
						},
						name = "Record hazard",
						uuid = "75bb1c0a-9d8b-73e1-a3e0-097fe9602060",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 then return false end\nlocal e=eventArgs\nif not e or e.friendly then return false end\nreturn e.aoeName=='Colossal Impact' and e.aoeCastType==12\n",
						dequeueIfLuaFalse = true,
						name = "Colossal Impact lines",
						uuid = "524b9bd6-e640-7c3b-8092-539dce6af583",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Knave of Hearts/Draws",
			eventType = 18,
			name = "[Paradigm's Breach] Knave Colossal Impact hazard record",
			uuid = "31e73d9f-6d06-33f4-afcb-f7a032ea0304",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal ms=math.floor(e.startTime+e.duration*1000-Now())\nif ms<=0 then return end\nlocal best,bd\nfor id,p in pairs(TensorCore.entityList(\"\") or {}) do\n if p.chartype==4 and p.pos then\n  local dd=(p.pos.x-e.x)^2+(p.pos.z-e.z)^2\n  if not bd or dd<bd then best=id bd=dd end\n end\nend\nif not best or bd>9 then return end\nlocal t=_G.PB_Spread\nif not t then t={} _G.PB_Spread=t end\nlocal now=Now()\nfor i=#t,1,-1 do if t[i].exp<now then table.remove(t,i) end end\nt[#t+1]={id=best,rad=e.aoeLength,exp=now+ms}",
						conditions = 
						{
							
							{
								"d3441427-7459-4d91-9e45-23b8a67b69fd",
								true,
							},
						},
						name = "Attach to player",
						uuid = "923cad65-26b2-fb26-b693-8d64f73c8ab7",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 then return false end\nlocal e=eventArgs\nif not e or e.friendly then return false end\nlocal a=e.aoeID\nreturn (a==24235 or a==24243) and e.aoeCastType==2 and ((p.pos.x-(-800))^2+(p.pos.z-(-735))^2<=2500)\n",
						dequeueIfLuaFalse = true,
						name = "Magic Artillery spread",
						uuid = "d3441427-7459-4d91-9e45-23b8a67b69fd",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Knave of Hearts/Draws",
			eventType = 18,
			name = "[Paradigm's Breach] Knave spread circles record target",
			uuid = "ba0d0497-f71a-9067-b97e-146a54aa146a",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local t=_G.PB_Spread\nif not t or #t==0 then return end\nlocal now=Now()\nlocal d=TensorCore.getStaticDrawer(0x703333FF,2)\nfor i=#t,1,-1 do\n local s=t[i]\n if s.exp<now then table.remove(t,i)\n else\n  local o=TensorCore.mGetEntity(s.id)\n  if o and o.pos then d:addCircle(o.pos.x,o.pos.y+0.1,o.pos.z,s.rad,false) end\n end\nend",
						conditions = 
						{
							
							{
								"69b62cf5-a7e4-ba29-8d1b-72275cf42f8a",
								true,
							},
						},
						name = "Draw following circles",
						uuid = "1c043575-6e60-f51e-83cb-78ed68c09e8d",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn p~=nil and p.localmapid==966 and _G.PB_Spread~=nil and #_G.PB_Spread>0\n",
						dequeueIfLuaFalse = true,
						name = "Spread circles active",
						uuid = "69b62cf5-a7e4-ba29-8d1b-72275cf42f8a",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Knave of Hearts/Draws",
			eventType = 12,
			name = "[Paradigm's Breach] Knave spread circles follow players",
			uuid = "5376d89a-ec05-9c73-b872-421474bc870d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal now=Now()\nlocal t=_G.PB_Boxes\nif not t then t={} _G.PB_Boxes=t end\nfor i=#t,1,-1 do if now-t[i].t>40000 then table.remove(t,i) end end\nt[#t+1]={x=e.x,y=e.y,z=e.z,t=now}",
						conditions = 
						{
							
							{
								"0161ae7a-a9b4-0561-9c5a-ab57876f7b39",
								true,
							},
						},
						name = "Record box",
						uuid = "8ad4a15b-a96b-4721-8451-93bcb9495537",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 then return false end\nlocal e=eventArgs\nreturn e~=nil and not e.friendly and e.aoeID==24240 and e.aoeCastType==12\n",
						dequeueIfLuaFalse = true,
						name = "Lunge box cast",
						uuid = "0161ae7a-a9b4-0561-9c5a-ab57876f7b39",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Knave of Hearts/Draws",
			eventType = 18,
			name = "[Paradigm's Breach] Knave Lunge box positions record",
			uuid = "4fabe27b-b274-681c-b7fc-866a1aa7b52a",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nlocal S=_G.PB_Lunge\nif not e or not S then return end\nS.exec=S.exec or {}\nS.exec[e.entityID]=Now()",
						conditions = 
						{
							
							{
								"b427d47d-e620-db06-850e-e90718203402",
								true,
							},
						},
						name = "Record execution",
						uuid = "b345154f-46c0-49c4-99e6-0e262ea3643d",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 then return false end\nlocal e=eventArgs\nreturn e~=nil and e.spellID==24241 and (e.entityContentID==9955 or e.entityContentID==10058)\n",
						dequeueIfLuaFalse = true,
						name = "Lunge resolves",
						uuid = "b427d47d-e620-db06-850e-e90718203402",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Knave of Hearts/Draws",
			eventType = 2,
			name = "[Paradigm's Breach] Knave Lunge executed record",
			uuid = "1ee1c227-995d-7c0e-90d2-a5cd55438733",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Tower at Paradigm's Breach/Knave of Hearts",
			name = "AutoSim",
			uuid = "9915d251-65fb-de57-b30d-67abeca95c06",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal api=TensorCore.API.TensorACR\nlocal ok,now=pcall(api.getAutoSimTime)\nif not ok or type(now)~=\"number\" or now<0 or now>40 then return end\ndata.pbSim=data.pbSim or {}\nif data.pbSim[\"knave\"] then return end\ndata.pbSim[\"knave\"]=true\nlocal o=now-4.3\napi.setAutoSimKillTime(340.9+o)\nfor _,t in ipairs({\"FullDowntime\",\"Stun\"}) do api.clearAutoSimPhases(t) end\napi.clearAutoSimUncertainty()\napi.addAutoSimUncertainty(0,15)\nlocal s={}\ndata.pbSim.knave=s\ns.d1=api.addAutoSimPhase(\"FullDowntime\",112.9+o,116.9+o,1)\ns.d1Start=112.9+o\ns.d2=api.addAutoSimPhase(\"FullDowntime\",235.6+o,239.6+o,1)\ns.d2Start=235.6+o\n",
						conditions = 
						{
							
							{
								"63cda0eb-b0f8-a75f-8995-03f106d753db",
								true,
							},
						},
						name = "Knave of Hearts forecast",
						uuid = "f7b46330-f06c-0ca9-87cb-cb2d93f51706",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 or not p.pos or not p.incombat then return false end\nlocal e=eventArgs\nif not e then return false end\nif not (e.entityContentID==9955) then return false end\nlocal ok=false\nfor _,i in ipairs({24245}) do if e.spellID==i then ok=true end end\nreturn ok and (p.pos.x-(-800))^2+(p.pos.z-(-735))^2<=2500\n",
						dequeueIfLuaFalse = true,
						name = "Knave of Hearts opening cast",
						uuid = "63cda0eb-b0f8-a75f-8995-03f106d753db",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Knave of Hearts/AutoSim",
			eventType = 3,
			name = "[Paradigm's Breach AutoSim] Knave of Hearts",
			uuid = "9f67e983-86d4-bba5-8335-5802fff10c25",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Tower at Paradigm's Breach/Knave of Hearts",
			name = "Knockback",
			uuid = "60c10162-81ab-0bd0-8495-a4d771675ee4",
		},
		objectType = "folder",
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
								"ae832f50-8e86-d6f7-afb9-e751b5fc08fa",
								true,
							},
							
							{
								"b5a3109b-41dc-494f-8eb2-cf6f0a57ab86",
								true,
							},
							
							{
								"0613156c-a216-bf0f-9ef5-b09aca15aeb3",
								true,
							},
							
							{
								"6f366b10-6c88-6dc5-b5f0-ed95bd54240e",
								true,
							},
						},
						gVar = "ACR_TensorViper4_Hotbar_ArmsLength",
						name = "Request Arm's Length",
						uuid = "0a243f10-6879-ee30-b9c7-56f2d288cd7d",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "ACR",
						conditions = 
						{
							
							{
								"ae832f50-8e86-d6f7-afb9-e751b5fc08fa",
								true,
							},
							
							{
								"b5a3109b-41dc-494f-8eb2-cf6f0a57ab86",
								true,
							},
							
							{
								"0613156c-a216-bf0f-9ef5-b09aca15aeb3",
								true,
							},
							
							{
								"42065be0-ef51-0f10-a187-da518ad9688f",
								true,
							},
						},
						gVar = "ACR_TensorNuke4_Hotbar_Surecast",
						name = "Request Surecast",
						uuid = "4215ef36-5556-723e-a07c-ba9f144a52be",
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
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 966,
						name = "Tower at Paradigm's Breach only",
						uuid = "ae832f50-8e86-d6f7-afb9-e751b5fc08fa",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local S=_G.PB_AllianceSettings\nif not S then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n S={values={},folder=folder,path=folder..'AllianceRaid-ParadigmsBreach.lua'}\n local existed=FileExists(S.path)\n if existed then\n  local ok,t=pcall(FileLoad,S.path)\n  if ok and type(t)=='table' then S.values=t end\n end\n local v=S.values\n local changed=not existed\n if type(v.kbLunge)~='number' or v.kbLunge<0 or v.kbLunge>2 or v.kbLunge~=math.floor(v.kbLunge) then v.kbLunge=0 changed=true end\n if type(v.kbPillar)~='boolean' then v.kbPillar=false changed=true end\n if changed then\n  pcall(function()\n   if not FolderExists(S.folder) then FolderCreate(S.folder) end\n   FileSave(S.path,v)\n  end)\n end\n _G.PB_AllianceSettings=S\nend\nlocal e=eventArgs\nif not e or e.spellID~=24241 then return false end\nlocal m=S.values.kbLunge\nif m==1 then return e.entityContentID==9955 end\nif m==2 then return e.entityContentID==10058 end\nreturn false",
						dequeueIfLuaFalse = true,
						name = "Exact mechanic and setting",
						uuid = "b5a3109b-41dc-494f-8eb2-cf6f0a57ab86",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not self.deadline then self.deadline=Now()+eventArgs.channelTimeMax*1000 end\nlocal remaining=self.deadline-Now()\nif remaining>3000 or remaining<1000 then return false end\nlocal caster=TensorCore.mGetEntity(eventArgs.entityID)\nreturn caster~=nil and caster.castinginfo.channelingid==eventArgs.spellID",
						name = "Request with 3 to 1 seconds remaining",
						uuid = "0613156c-a216-bf0f-9ef5-b09aca15aeb3",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 14,
						dequeueIfLuaFalse = true,
						jobIDList = 
						{
							19,
							21,
							32,
							37,
							20,
							22,
							30,
							34,
							39,
							41,
							23,
							31,
							38,
						},
						name = "Physical role",
						uuid = "6f366b10-6c88-6dc5-b5f0-ed95bd54240e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 14,
						dequeueIfLuaFalse = true,
						jobIDList = 
						{
							25,
							27,
							35,
							42,
							24,
							28,
							33,
							40,
						},
						name = "Caster or healer",
						uuid = "42065be0-ef51-0f10-a187-da518ad9688f",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Knave of Hearts/Knockback",
			eventType = 3,
			name = "[Paradigm's Breach] Knave Lunge knockback immunity (optional)",
			timeout = 8,
			uuid = "1864d847-456b-9cdb-9e26-d6dc08e6245c",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Tower at Paradigm's Breach",
			name = "Hansel and Gretel",
			uuid = "1153e6f2-f062-4797-93e0-3fc4bc9575fd",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Tower at Paradigm's Breach/Hansel and Gretel",
			name = "Draws",
			uuid = "8b11f767-9b85-c2b0-a0bf-4fe6778708f3",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal ms=math.floor(e.startTime+e.duration*1000-Now())\nif ms<=0 then return end\nlocal SPEC={[23651]={k='c',col=0x7033FF33},[23655]={k='r'},[23647]={skip=true},[23645]={skip=true},[23646]={skip=true},[23667]={skip=true}}\nlocal s=SPEC[e.aoeID]\nlocal ct=e.aoeCastType\nlocal k\nif s then\n if s.skip then return end\n k=s.k\nelse\n if ct==2 and e.aoeLength>0 and e.aoeLength<=30 and e.aoeType~=27 then k='c'\n elseif ct==12 and e.aoeLength>0 and e.aoeWidth>0 and e.aoeLength<=70 and e.aoeWidth<=40 then k='r'\n elseif ct==13 and e.aoeLength>0 and e.aoeLength<=50 then k='cone'\n end\nend\nif not k then return end\nlocal col=(s and s.col) or 0x703333FF\nlocal d=TensorCore.getStaticDrawer(col,2)\nlocal x,y,z=e.x,e.y,e.z\nif k=='c' then\n d:addTimedCircle(ms,x,y,z,e.aoeLength,0,false,true)\nelseif k=='r' then\n d:addTimedRect(ms,x,y,z,e.aoeLength,e.aoeWidth,e.heading,0,false,true)\nelse\n local ang=(s and s.ang) or (e.aoeType==5 and 2*math.pi/3 or math.pi/2)\n d:addTimedCone(ms,x,y,z,e.aoeLength,ang,e.heading,0,false,true)\nend",
						conditions = 
						{
							
							{
								"16879d93-ed86-6b09-abde-c45c22ab8b81",
								true,
							},
						},
						name = "Hansel and Gretel hazard draws",
						uuid = "c729e423-5869-06f4-8d8e-49cab3ae7fdd",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 or not p.pos then return false end\nlocal e=eventArgs\nif not e or e.friendly then return false end\nlocal c=e.contentID\nif not (c==9988 or c==9989 or c==9990 or c==9992 or c==9993) then return false end\nreturn (p.pos.x-(-800))^2+(p.pos.z-(-955))^2<=2500\n",
						dequeueIfLuaFalse = true,
						name = "Hansel and Gretel arena and hazard",
						uuid = "16879d93-ed86-6b09-abde-c45c22ab8b81",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Hansel and Gretel/Draws",
			eventType = 18,
			name = "[Paradigm's Breach] Hansel and Gretel hazard draws",
			uuid = "1c1bc035-0e96-d2e9-88f8-47892c8e092e",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local function parry14(b)\n local p=TensorCore.getBuff(b,680)\n return p~=nil and p.stacks==14\nend\nlocal st=data.pbReflect\nif not st then st={nextScan=0,ids={},called={}} data.pbReflect=st end\nlocal now=Now()\nif now>=st.nextScan then\n st.nextScan=now+500\n st.ids={}\n for _,cid in ipairs({9988,9989}) do\n  for id,b in pairs(TensorCore.entityList(\"contentid=\"..cid) or {}) do\n   if b.alive then st.ids[#st.ids+1]=id end\n  end\n end\nend\nif #st.ids==0 then return end\nlocal red=TensorCore.getStaticDrawer(0x703333FF,2)\nlocal green=TensorCore.getStaticDrawer(0x7033FF33,2)\nlocal ang=math.pi/2\nfor _,id in ipairs(st.ids) do\n local b=TensorCore.mGetEntity(id)\n if b and b.pos and b.alive and (TensorCore.hasBuff(b,2538) or parry14(b) or (_G.PB_ShieldPending and _G.PB_ShieldPending[id] and now<_G.PB_ShieldPending[id])) then\n  local h=b.pos.h\n  red:addCone(b.pos.x,b.pos.y,b.pos.z,9,ang,h+math.pi,false)\n  red:addCone(b.pos.x,b.pos.y,b.pos.z,9,ang,h+math.pi/2,false)\n  red:addCone(b.pos.x,b.pos.y,b.pos.z,9,ang,h-math.pi/2,false)\n  green:addCone(b.pos.x,b.pos.y,b.pos.z,9,ang,h,false)\n  if not st.called[id] then\n   st.called[id]=true\n   if AnyoneCore and AnyoneCore.Shotcall then AnyoneCore.Shotcall(\"Shield: hit from the front\",true,3,false) end\n  end\n elseif st.called[id] then\n  st.called[id]=nil\n end\nend",
						conditions = 
						{
							
							{
								"bbebf700-1d0a-e187-82c8-801d45136dff",
								true,
							},
						},
						name = "Draw shielded sides and open front",
						uuid = "55094355-dc85-4f6c-8bfa-a3a31b240c29",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 or not p.pos then return false end\nreturn p.incombat and (p.pos.x-(-800))^2+(p.pos.z-(-955))^2<=2500\n",
						dequeueIfLuaFalse = true,
						name = "Hansel and Gretel arena in combat",
						uuid = "bbebf700-1d0a-e187-82c8-801d45136dff",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Hansel and Gretel/Draws",
			eventType = 12,
			name = "[Paradigm's Breach] Hansel and Gretel Upgraded Shield reflect sides",
			uuid = "9972ab06-451e-e636-aaf1-a5a6331a7674",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local cfgs={{cid=9992,rad=4}}\nlocal p=TensorCore.mGetPlayer()\nif not p or not p.pos then return end\nlocal st=data.pbOrb2\nif not st then st={nextScan=0,ids={},seen={}} data.pbOrb2=st end\nlocal now=Now()\nif now>=st.nextScan then\n st.nextScan=now+500\n st.ids={}\n for _,cfg in ipairs(cfgs) do\n  for id,b in pairs(TensorCore.entityList(\"contentid=\"..cfg.cid) or {}) do\n   if b.alive then st.ids[#st.ids+1]={id=id,rad=cfg.rad} end\n  end\n end\nend\nif #st.ids==0 then return end\nlocal d=TensorCore.getStaticDrawer(0x703333FF,2)\nfor _,s in ipairs(st.ids) do\n local o=TensorCore.mGetEntity(s.id)\n if o and o.alive and o.pos and not (_G.PB_OrbDone and _G.PB_OrbDone[s.id]) then\n  local r=st.seen[s.id]\n  if not r then r={x=o.pos.x,z=o.pos.z,first=now,moved=now,ever=false} st.seen[s.id]=r end\n  if (o.pos.x-r.x)^2+(o.pos.z-r.z)^2>0.01 then r.x=o.pos.x r.z=o.pos.z r.moved=now r.ever=true end\n  if (now-r.moved<=700 or (not r.ever and now-r.first<=2500)) and (o.pos.x-p.pos.x)^2+(o.pos.z-p.pos.z)^2<=45*45 then\n   d:addCircle(o.pos.x,o.pos.y+0.1,o.pos.z,s.rad,false)\n  end\n end\nend",
						conditions = 
						{
							
							{
								"652ed4f9-a67b-957d-bca5-45235437d328",
								true,
							},
						},
						name = "Magical Confluence Impact rings",
						uuid = "8516ba54-7de2-c7c0-a89e-491e950dbf78",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 or not p.pos or not p.incombat then return false end\nreturn (p.pos.x-(-800))^2+(p.pos.z-(-955))^2<=2500\n",
						dequeueIfLuaFalse = true,
						name = "Hansel and Gretel arena in combat",
						uuid = "652ed4f9-a67b-957d-bca5-45235437d328",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Hansel and Gretel/Draws",
			eventType = 12,
			name = "[Paradigm's Breach] Magical Confluence Impact rings",
			uuid = "b387e05f-b7b5-dc64-8861-526209316caf",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal t=_G.PB_ShieldPending\nif not t then t={} _G.PB_ShieldPending=t end\nt[e.entityID]=Now()+5200",
						conditions = 
						{
							
							{
								"605e20f8-6da0-f320-a2e1-2d8306349fb1",
								true,
							},
						},
						name = "Mark shield pending",
						uuid = "1ed40e88-c0ba-40fd-ba53-91c06b8ce625",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 then return false end\nlocal e=eventArgs\nreturn e~=nil and (e.spellID==23657 or e.spellID==23659)\n",
						dequeueIfLuaFalse = true,
						name = "Upgraded Shield cast",
						uuid = "605e20f8-6da0-f320-a2e1-2d8306349fb1",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Hansel and Gretel/Draws",
			eventType = 3,
			name = "[Paradigm's Breach] Hansel and Gretel Upgraded Shield cast record",
			uuid = "f4e7cb8f-af59-5a3d-9fe7-030d8ddab3c5",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal t=_G.PB_BulletDone\nif not t then t={} _G.PB_BulletDone=t end\nlocal now=Now()\nt[e.entityID]=now\nlocal n=0\nfor k,v in pairs(t) do n=n+1 end\nif n>300 then for k,v in pairs(t) do if now-v>60000 then t[k]=nil end end end",
						conditions = 
						{
							
							{
								"0974aba5-36fc-a7ff-a0ad-a05402df3693",
								true,
							},
						},
						name = "Record exploded bullet",
						uuid = "86fe29eb-068e-836f-a23e-e89defa18898",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 then return false end\nlocal e=eventArgs\nreturn e~=nil and e.spellID==23655\n",
						dequeueIfLuaFalse = true,
						name = "Explosion cast",
						uuid = "0974aba5-36fc-a7ff-a0ad-a05402df3693",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Hansel and Gretel/Draws",
			eventType = 2,
			name = "[Paradigm's Breach] Magic Bullet exploded record",
			uuid = "3feec6ed-f1cf-5640-823f-0c23dab78b70",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local p=TensorCore.mGetPlayer()\nif not p or not p.pos then return end\nlocal st=data.pbBullets\nif not st then st={nextScan=0,ids={}} data.pbBullets=st end\nlocal now=Now()\nif now>=st.nextScan then\n st.nextScan=now+300\n st.ids={}\n for id,b in pairs(TensorCore.entityList(\"contentid=9993\") or {}) do\n  if b.alive then st.ids[#st.ids+1]=id end\n end\nend\nif #st.ids==0 then return end\nlocal done=_G.PB_BulletDone\nlocal d=TensorCore.getStaticDrawer(0x703333FF,2)\nfor _,id in ipairs(st.ids) do\n if not (done and done[id]) then\n  local b=TensorCore.mGetEntity(id)\n  if b and b.alive and b.pos then\n   local h=(b.pos.h or 0)+math.pi/2\n   local dx,dz=math.sin(h),math.cos(h)\n   d:addRect(b.pos.x-dx*25,b.pos.y+0.1,b.pos.z-dz*25,50,4,h,false)\n  end\n end\nend",
						conditions = 
						{
							
							{
								"effbb9da-e70f-fba3-990b-03eeddc1f917",
								true,
							},
						},
						name = "Draw bullet bands",
						uuid = "527737fd-a904-ca6a-9a3f-5a177abbfd89",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 or not p.pos or not p.incombat then return false end\nreturn (p.pos.x-(-800))^2+(p.pos.z-(-955))^2<=2500\n",
						dequeueIfLuaFalse = true,
						name = "Hansel and Gretel arena in combat",
						uuid = "effbb9da-e70f-fba3-990b-03eeddc1f917",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Hansel and Gretel/Draws",
			eventType = 12,
			name = "[Paradigm's Breach] Hansel and Gretel Magic Bullet explosion bands (early)",
			uuid = "de7f7d02-5c6f-a17c-b93c-466ed372edee",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal p=TensorCore.mGetPlayer()\nif not p or not p.pos then return end\nlocal now=Now()\nlocal meteor\nlocal cleaves={}\nfor _,a in pairs(Argus.getCurrentDirectionalAOEs() or {}) do\n if (a.aoeID==23647 or a.aoeID==21939) and a.startTime+a.duration*1000>now then\n  if a.aoeID==23647 then meteor=a else cleaves[#cleaves+1]=a end\n end\nend\nif not meteor then return end\n-- Uneven Footing falls off with distance: radius 21 chosen by the user (BossMod estimates 22)\nlocal DANGER,ARENA=21,24.5\nlocal x,y,z=meteor.x,p.pos.y,meteor.z\nTensorCore.getStaticDrawer(0x403333FF,2):addCircle(x,y,z,DANGER,false)\nlocal channel=Argus2.getNextUnusedChannel(true)\nif channel==1 then channel=Argus2.getNextUnusedChannel(true) end\nif not channel or channel<=1 then return end\nlocal flags=Argus2.RenderFlags\nlocal baseFlags=flags.FLAG_WARP_TERRAIN+flags.FLAG_OCCLUSION_BASE\nlocal maskFlags=flags.FLAG_WARP_TERRAIN+flags.FLAG_OCCLUDE\nlocal safe=TensorCore.getStaticDrawer(0x6033FF33,2,channel,baseFlags)\nlocal mask=TensorCore.getStaticDrawer(0xFFFFFFFF,0,channel,maskFlags)\nsafe:addCircle(x,y,z,ARENA,false,baseFlags)\nmask:addCircle(x,y,z,DANGER,false,maskFlags)\nfor _,c in ipairs(cleaves) do\n mask:addRect(c.x,y,c.z,c.aoeLength,c.aoeWidth,c.heading,false,maskFlags)\nend\n-- Magical Confluence orbs (radius 4), same live/moving rule as the orb ring reaction\nlocal st=data.pbOrb2\nif not st then return end\nfor _,s in ipairs(st.ids) do\n local r=st.seen[s.id]\n local o=r and TensorCore.mGetEntity(s.id)\n if o and o.alive and o.pos and not (_G.PB_OrbDone and _G.PB_OrbDone[s.id]) and (now-r.moved<=700 or (not r.ever and now-r.first<=2500)) then\n  mask:addCircle(o.pos.x,y,o.pos.z,s.rad,false,maskFlags)\n end\nend",
						conditions = 
						{
							
							{
								"d49b82ee-7d1f-ca3f-997f-58ab0bc82953",
								true,
							},
						},
						name = "Draw meteor and subtractive safe area",
						uuid = "26c1cefb-acaa-63b9-8893-51a9c963ac58",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 or not p.pos then return false end\nreturn (p.pos.x+800)^2+(p.pos.z+955)^2<=2500\n",
						dequeueIfLuaFalse = true,
						name = "Hansel and Gretel arena",
						uuid = "d49b82ee-7d1f-ca3f-997f-58ab0bc82953",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Hansel and Gretel/Draws",
			eventType = 12,
			name = "[Paradigm's Breach] Hansel and Gretel Uneven Footing meteor and safe area (green)",
			uuid = "d60560eb-f7e9-7274-abd1-1472ac88ca38",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Tower at Paradigm's Breach/Hansel and Gretel",
			name = "AutoSim",
			uuid = "cb16bd79-b070-dee6-9624-c6b917a1a059",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal api=TensorCore.API.TensorACR\nlocal ok,now=pcall(api.getAutoSimTime)\nif not ok or type(now)~=\"number\" or now<=0 then return end\nlocal anyTargetable,any=false,false\nfor _,cid in ipairs({9988,9989}) do\n for _,b in pairs(TensorCore.getEntityGroupList(\"ContentID\",{contentid=cid}) or {}) do\n  if b.alive then any=true if b.targetable then anyTargetable=true end end\n end\nend\nif not any then return end\nlocal st=data.pbHG\nif not st then st={down=false} data.pbHG=st end\nif (not anyTargetable) and not st.down then\n st.down=true\n st.start=now\n st.id=api.addAutoSimPhase(\"FullDowntime\",now,now+14,1)\nelseif anyTargetable and st.down then\n st.down=false\n if st.id and now>st.start then pcall(api.setAutoSimPhase,st.id,st.start,now,1) end\n st.id=nil\nend",
						conditions = 
						{
							
							{
								"b99756b8-ba64-d6f4-bea5-45e4ea279ffb",
								true,
							},
						},
						name = "Add FullDowntime while both bosses are untargetable",
						uuid = "d3ff40e9-f4b4-e82d-8169-81a71bb62ac0",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 or not p.pos then return false end\nreturn p.incombat and (p.pos.x-(-800))^2+(p.pos.z-(-955))^2<=2500\n",
						dequeueIfLuaFalse = true,
						name = "Hansel and Gretel arena in combat",
						uuid = "b99756b8-ba64-d6f4-bea5-45e4ea279ffb",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Hansel and Gretel/AutoSim",
			name = "[Paradigm's Breach AutoSim] Hansel and Gretel untargetable windows",
			throttleTime = 500,
			uuid = "25f4b458-a70c-e0dd-a137-60ce7701cc39",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Tower at Paradigm's Breach",
			name = "2P",
			uuid = "b096c933-7f27-a005-9a4c-3302ad058a97",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Tower at Paradigm's Breach/2P",
			name = "Draws",
			uuid = "ff16ab06-7ee8-c0e3-b413-0b09cfeaf7c7",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal ms=math.floor(e.startTime+e.duration*1000-Now())\nif ms<=0 then return end\nlocal SPEC={[23550]={k='cone',ang=math.pi}}\nlocal s=SPEC[e.aoeID]\nlocal ct=e.aoeCastType\nlocal k\nif s then\n if s.skip then return end\n k=s.k\nelse\n if ct==2 and e.aoeLength>0 and e.aoeLength<=30 and e.aoeType~=27 then k='c'\n elseif ct==12 and e.aoeLength>0 and e.aoeWidth>0 and e.aoeLength<=70 and e.aoeWidth<=40 then k='r'\n elseif ct==13 and e.aoeLength>0 and e.aoeLength<=50 then k='cone'\n end\nend\nif not k then return end\nlocal col=(s and s.col) or 0x703333FF\nlocal d=TensorCore.getStaticDrawer(col,2)\nlocal x,y,z=e.x,e.y,e.z\nif k=='c' then\n d:addTimedCircle(ms,x,y,z,e.aoeLength,0,false,true)\nelseif k=='r' then\n d:addTimedRect(ms,x,y,z,e.aoeLength,e.aoeWidth,e.heading,0,false,true)\nelse\n local ang=(s and s.ang) or (e.aoeType==5 and 2*math.pi/3 or math.pi/2)\n d:addTimedCone(ms,x,y,z,e.aoeLength,ang,e.heading,0,false,true)\nend",
						conditions = 
						{
							
							{
								"61b16212-dce9-29fe-86d3-f63c6184f0b6",
								true,
							},
						},
						name = "2P hazard draws",
						uuid = "6bffd13d-5e29-7040-b93e-e783dea7a193",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 or not p.pos then return false end\nlocal e=eventArgs\nif not e or e.friendly then return false end\nlocal c=e.contentID\nif not (c==9918 or c==9919) then return false end\nreturn (p.pos.x-(752))^2+(p.pos.z-(-745))^2<=2500\n",
						dequeueIfLuaFalse = true,
						name = "2P arena and hazard",
						uuid = "61b16212-dce9-29fe-86d3-f63c6184f0b6",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/2P/Draws",
			eventType = 18,
			name = "[Paradigm's Breach] 2P hazard draws",
			uuid = "4eca2d96-24c3-2103-bbbd-dbfa819fe2f8",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Tower at Paradigm's Breach/2P",
			name = "AutoSim",
			uuid = "7c5a5de0-04e5-69f3-a74e-637501543dda",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal api=TensorCore.API.TensorACR\nlocal ok,now=pcall(api.getAutoSimTime)\nif not ok or type(now)~=\"number\" or now<0 or now>40 then return end\ndata.pbSim=data.pbSim or {}\nif data.pbSim[\"twop\"] then return end\ndata.pbSim[\"twop\"]=true\nlocal o=now-4.6\napi.setAutoSimKillTime(119.0+o)\nfor _,t in ipairs({\"FullDowntime\",\"Stun\"}) do api.clearAutoSimPhases(t) end\napi.clearAutoSimUncertainty()\napi.addAutoSimUncertainty(0,12)\nlocal s={}\ndata.pbSim.twop=s\ns.d1=api.addAutoSimPhase(\"FullDowntime\",70.3+o,84.8+o,1)\ns.d1Start=70.3+o\n",
						conditions = 
						{
							
							{
								"62c8125b-a70c-c30e-b672-bfe76d9465e1",
								true,
							},
						},
						name = "2P forecast",
						uuid = "26910a67-551f-038a-8323-fe0c62fe13f2",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 or not p.pos or not p.incombat then return false end\nlocal e=eventArgs\nif not e then return false end\nif not (e.entityContentID==9918) then return false end\nlocal ok=false\nfor _,i in ipairs({23547}) do if e.spellID==i then ok=true end end\nreturn ok and (p.pos.x-(752))^2+(p.pos.z-(-745))^2<=2500\n",
						dequeueIfLuaFalse = true,
						name = "2P opening cast",
						uuid = "62c8125b-a70c-c30e-b672-bfe76d9465e1",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/2P/AutoSim",
			eventType = 3,
			name = "[Paradigm's Breach AutoSim] 2P",
			uuid = "ad4621a3-f8d5-1f30-8d8b-bed0cdfaf0bd",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Tower at Paradigm's Breach",
			name = "Red Girl",
			uuid = "f7a46c1d-7177-3bcc-8e8d-b6978a493c38",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Tower at Paradigm's Breach/Red Girl",
			name = "Draws",
			uuid = "ded81e75-d1bb-f65f-b85f-a0fc004be0c8",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal ms=math.floor(e.startTime+e.duration*1000-Now())\nif ms<=0 then return end\nlocal SPEC={[24592]={k='c',col=0x70FFFFFF},[24972]={k='c',col=0x70303030},[24585]={skip=true},[24584]={skip=true},[24583]={skip=true},[24582]={skip=true},[24581]={skip=true},[24588]={skip=true},[24589]={skip=true}}\nlocal s=SPEC[e.aoeID]\nlocal ct=e.aoeCastType\nlocal k\nif s then\n if s.skip then return end\n k=s.k\nelse\n if ct==2 and e.aoeLength>0 and e.aoeLength<=30 and e.aoeType~=27 then k='c'\n elseif ct==12 and e.aoeLength>0 and e.aoeWidth>0 and e.aoeLength<=70 and e.aoeWidth<=40 then k='r'\n elseif ct==13 and e.aoeLength>0 and e.aoeLength<=50 then k='cone'\n end\nend\nif not k then return end\nlocal col=(s and s.col) or 0x703333FF\nlocal d=TensorCore.getStaticDrawer(col,2)\nlocal x,y,z=e.x,e.y,e.z\nif k=='c' then\n d:addTimedCircle(ms,x,y,z,e.aoeLength,0,false,true)\nelseif k=='r' then\n d:addTimedRect(ms,x,y,z,e.aoeLength,e.aoeWidth,e.heading,0,false,true)\nelse\n local ang=(s and s.ang) or (e.aoeType==5 and 2*math.pi/3 or math.pi/2)\n d:addTimedCone(ms,x,y,z,e.aoeLength,ang,e.heading,0,false,true)\nend",
						conditions = 
						{
							
							{
								"6f39e8ff-f5d6-8c19-b047-00a8d4f6e004",
								true,
							},
						},
						name = "Red Girl hazard draws",
						uuid = "24b696e9-f4e1-a60f-b5f2-677f4f999687",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 or not p.pos then return false end\nlocal e=eventArgs\nif not e or e.friendly then return false end\nlocal c=e.contentID\nif not (c==9950 or c==9920 or c==9981 or c==9982 or c==9983 or c==9984) then return false end\nreturn (p.pos.x-(845))^2+(p.pos.z-(-850))^2<=2500\n",
						dequeueIfLuaFalse = true,
						name = "Red Girl arena and hazard",
						uuid = "6f39e8ff-f5d6-8c19-b047-00a8d4f6e004",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Red Girl/Draws",
			eventType = 18,
			name = "[Paradigm's Breach] Red Girl hazard draws",
			uuid = "6dc7e869-7797-e064-a651-67c04d98b8e7",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal b=data.rgBarrier\nif not b then b={} data.rgBarrier=b end\nlocal i=e.a1\nif i==28 then\n if e.a2==4 and e.a3==8 then for k in pairs(b) do b[k]=nil end end\n return\nend\nlocal n=i-28\nif e.a2==1 and e.a3==2 then b[n]='B'\nelseif e.a2==64 and e.a3==128 then b[n]='W'\nelse b[n]=nil end\ndata.rgBarrierT=Now()\ndata.rgBarrierPending=nil\n",
						conditions = 
						{
							
							{
								"8f802c38-772e-9f31-a8c8-4c48922ebfeb",
								true,
							},
						},
						name = "Record barrier colour by slot",
						uuid = "2107b9cb-4113-21ee-80f5-d99512d81512",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 then return false end\nlocal e=eventArgs\nif not e then return false end\nlocal i=e.a1\nreturn (i==28 or (i>=29 and i<=56)) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Red Girl barrier effect",
						uuid = "8f802c38-772e-9f31-a8c8-4c48922ebfeb",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Red Girl/Draws",
			eventType = 14,
			name = "[Paradigm's Breach] Red Girl barrier colours",
			uuid = "9c080b52-3ea1-9ce7-a715-6314665a3da8",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal C=TensorCore.mGetEntity(e.entityID)\nif not C or not C.pos then return end\nlocal now=Now()\nlocal LS=data.rgLanes\nif not LS or now-LS.t>2500 then LS={t0=now,t=now,list={},done=false} data.rgLanes=LS end\nLS.t=now\nfor _,l in ipairs(LS.list) do\n if l.id==e.entityID then l.x,l.y,l.z,l.h=C.pos.x,C.pos.y,C.pos.z,C.pos.h or 0 return end\nend\nLS.list[#LS.list+1]={id=e.entityID,white=(e.entityContentID==9981),x=C.pos.x,y=C.pos.y,z=C.pos.z,h=C.pos.h or 0}\n",
						conditions = 
						{
							
							{
								"6e0bad2f-318c-7def-b7b3-bb26f0138c01",
								true,
							},
						},
						name = "Record each spawned lance for the volley pass",
						uuid = "8949aa1a-06a7-5ea0-a0f4-fa9d822ded6a",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local c=eventArgs and eventArgs.entityContentID\nif c~=9981 and c~=9982 then return false end\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 or not p.pos then return false end\nreturn ((p.pos.x-845)^2+(p.pos.z+850)^2<=2500) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "White or Black Lance spawned",
						uuid = "6e0bad2f-318c-7def-b7b3-bb26f0138c01",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Red Girl/Draws",
			eventType = 5,
			name = "[Paradigm's Breach] Red Girl Point lance spawn record",
			uuid = "b8943d88-b392-11f4-8b6c-9a7ae08d0b5e",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal C=TensorCore.mGetEntity(e.entityID)\nif not C or not C.pos then return end\nlocal w=data.rgWipe\nif not w then w={} data.rgWipe=w end\nw[e.spellID==24588 and 'W' or 'B']={x=C.pos.x,z=C.pos.z,fin=Now()+(e.channelTimeMax or 13)*1000}\n_G.RG_WIPE=true\n",
						conditions = 
						{
							
							{
								"80edd73b-0440-8a59-860f-45708f6eb5ee",
								true,
							},
						},
						name = "Record meteor position, colour and end time",
						uuid = "3685220e-c481-9e9f-b8df-9caa6273681d",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=eventArgs and eventArgs.spellID\nif s~=24588 and s~=24589 then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==966) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Wipe White or Black channel",
						uuid = "80edd73b-0440-8a59-860f-45708f6eb5ee",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Red Girl/Draws",
			eventType = 3,
			name = "[Paradigm's Breach] Red Girl Wipe meteor start",
			uuid = "bccbe1b2-7829-5026-9b37-36960b32820c",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nlocal w=data and data.rgWipe\nif not e or not w then _G.RG_WIPE=nil return end\nw[e.spellID==24588 and 'W' or 'B']=nil\nif not w.W and not w.B then _G.RG_WIPE=nil end\n",
						conditions = 
						{
							
							{
								"16abf757-752a-8cab-abad-33869629a69d",
								true,
							},
						},
						name = "Clear the resolved meteor",
						uuid = "8b0c25c9-1d74-65ed-a6f5-9a01e33e00ac",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=eventArgs and eventArgs.spellID\nif s~=24588 and s~=24589 then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==966) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Wipe White or Black resolved",
						uuid = "16abf757-752a-8cab-abad-33869629a69d",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Red Girl/Draws",
			eventType = 2,
			name = "[Paradigm's Breach] Red Girl Wipe meteor resolved",
			uuid = "06696981-c98a-ad72-9a1e-b6916e0b3459",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local w=data and data.rgWipe\nif not w then _G.RG_WIPE=nil return end\nlocal now=Now()\nlocal act={}\nfor k,m in pairs(w) do\n if m.fin and now<m.fin+1500 then act[k]=m else w[k]=nil end\nend\nif not act.W and not act.B then _G.RG_WIPE=nil return end\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 or not p.pos then return end\nif not data.rgSyncT or now-data.rgSyncT>250 then\n data.rgSyncT=now\n local okc,n=pcall(Argus.getNumCurrentMapEffects)\n if okc and n and n>=57 then\n  local out={}\n  for s=1,28 do\n   local r=Argus.getMapEffectResource(28+s)\n   if r then\n    local ok,name,nsub,h=pcall(Argus.getEffectResourceScriptInfo,r,0)\n    if ok and name and h and (nsub or 0)>=2 then\n     local function a(k) local okk,sub=pcall(Argus.getEffectResourceScriptSubresource,h,k) if okk and sub then local _,_,_,x=Argus.getEffectResourceInfo(sub) return x and true or false end return false end\n     if a(0) then out[s]='W' elseif a(1) then out[s]='B' end\n    end\n   end\n  end\n  data.rgSyncBar=out\n end\nend\nlocal bar=data.rgSyncBar or data.rgBarrier or {}\nlocal WL={{845,-873},{845,-867},{845,-861},{845,-855},{845,-847},{845,-841},{845,-835},{845,-829},{823,-851},{829,-851},{835,-851},{841,-851},{849,-851},{855,-851},{861,-851},{867,-851},{838,-860},{844,-860},{850,-860},{854,-858},{854,-852},{854,-846},{852,-842},{846,-842},{840,-842},{836,-844},{836,-850},{836,-856}}\nlocal VERT={}\nfor n=1,8 do VERT[n]=true end\nfor n=20,22 do VERT[n]=true end\nfor n=26,28 do VERT[n]=true end\nlocal cx,cz=845,-851\nlocal function strips(col,m)\n local out={}\n for n=1,28 do\n  if bar[n]==col then\n   local wx,wz=WL[n][1],WL[n][2]\n   local x0,x1,z0,z1\n   if VERT[n] then\n    local dx=(wx-m.x)>0 and 1 or -1\n    local dist=dx>0 and (25-(wx-cx)) or (25+(wx-cx))\n    if dx>0 then x0,x1=wx,wx+dist else x0,x1=wx-dist,wx end\n    z0,z1=wz-3,wz+3\n   else\n    local dz=(wz-m.z)>0 and 1 or -1\n    local dist=dz>0 and (25-(wz-cz)) or (25+(wz-cz))\n    if dz>0 then z0,z1=wz,wz+dist else z0,z1=wz-dist,wz end\n    x0,x1=wx-3,wx+3\n   end\n   out[#out+1]={x0,x1,z0,z1}\n  end\n end\n return out\nend\nlocal d=TensorCore.getStaticDrawer(0x7033FF33,2)\nlocal y=p.pos.y\nlocal function box(x0,x1,z0,z1) d:addRect((x0+x1)/2,y,z0,z1-z0,x1-x0,0,false) end\nif act.W and act.B then\n local sw,sb=strips('W',act.W),strips('B',act.B)\n for _,a in ipairs(sw) do\n  for _,b in ipairs(sb) do\n   local x0,x1=math.max(a[1],b[1]),math.min(a[2],b[2])\n   local z0,z1=math.max(a[3],b[3]),math.min(a[4],b[4])\n   if x1-x0>0.01 and z1-z0>0.01 then box(x0,x1,z0,z1) end\n  end\n end\nelse\n local col=act.W and 'W' or 'B'\n for _,s in ipairs(strips(col,act[col])) do box(s[1],s[2],s[3],s[4]) end\nend\n",
						conditions = 
						{
							
							{
								"3e07ddb7-aaea-6382-a4e7-efd9d5b02af1",
								true,
							},
						},
						name = "Draw safe strips behind same-colour walls",
						uuid = "1581ce08-df20-91f9-8cb0-b0f7e85e7b16",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return _G.RG_WIPE==true\n",
						dequeueIfLuaFalse = true,
						name = "Wipe meteor active",
						uuid = "3e07ddb7-aaea-6382-a4e7-efd9d5b02af1",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Red Girl/Draws",
			eventType = 12,
			name = "[Paradigm's Breach] Red Girl Wipe safe areas (green)",
			uuid = "49406056-2507-fd69-974b-4bfd4bbafe57",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal col=(e.markerID==263) and 'B' or 'W'\nlocal fin=Now()+((e.markerID==264) and 5100 or 10100)+1000\ndata.rgShock={col=col,fin=fin}\n",
						conditions = 
						{
							
							{
								"347f650d-6741-19c4-8fb0-139a83c89be2",
								true,
							},
						},
						name = "Record my Shock colour and expiry",
						uuid = "8ca5147c-d5c0-cc6f-948e-42e580d9425d",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local m=eventArgs and eventArgs.markerID\nif m~=262 and m~=263 and m~=264 then return false end\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 then return false end\nreturn (eventArgs.entityID==p.id) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "My Shock marker",
						uuid = "347f650d-6741-19c4-8fb0-139a83c89be2",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Red Girl/Draws",
			eventType = 4,
			name = "[Paradigm's Breach] Red Girl Shock marker on me",
			uuid = "230a0a3f-96b2-9646-8508-57e261caf2d7",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal s=data and data.rgShock\nif s then\n if s.circle then pcall(Argus.deleteTimedShape,s.circle) end\n if s.arrow then pcall(Argus.deleteTimedShape,s.arrow) end\nend\nif data then data.rgShock=nil end\n",
						conditions = 
						{
							
							{
								"5962b31e-f588-3566-8e61-aec412af1ea9",
								true,
							},
						},
						name = "Clear my Shock guidance and log wall distances",
						uuid = "f75600e1-5d96-b83f-9783-11f619536b59",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local e=eventArgs\nif not e then return false end\nlocal s=e.spellID\nif s~=24591 and s~=24593 then return false end\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 then return false end\nreturn (e.targetID==p.id) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Shock bait hit on me",
						uuid = "5962b31e-f588-3566-8e61-aec412af1ea9",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Red Girl/Draws",
			eventType = 2,
			name = "[Paradigm's Breach] Red Girl Shock hit on me resolved",
			uuid = "b0bffcb5-91ab-a706-ac16-a2cd7ca0014c",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal s=data.rgShock\nif not s then return end\nlocal p=TensorCore.mGetPlayer()\nif not p or not p.pos then return end\nlocal now=Now()\nlocal bar=data.rgBarrier or {}\nlocal want=(s.col=='W') and 'B' or 'W'\nlocal WL={{845,-873},{845,-867},{845,-861},{845,-855},{845,-847},{845,-841},{845,-835},{845,-829},{823,-851},{829,-851},{835,-851},{841,-851},{849,-851},{855,-851},{861,-851},{867,-851},{838,-860},{844,-860},{850,-860},{854,-858},{854,-852},{854,-846},{852,-842},{846,-842},{840,-842},{836,-844},{836,-850},{836,-856}}\nlocal best,bd\nfor n=1,28 do\n if bar[n]==want then\n  local dx,dz=p.pos.x-WL[n][1],p.pos.z-WL[n][2]\n  local d=math.sqrt(dx*dx+dz*dz)\n  if not bd or d<bd then best,bd=n,d end\n end\nend\nlocal ms=math.min(450,math.floor(s.fin-now))\nlocal function hide()\n if s.circle then pcall(Argus.deleteTimedShape,s.circle) s.circle=nil end\n if s.arrow then pcall(Argus.deleteTimedShape,s.arrow) s.arrow=nil end\nend\nif not best or ms<=0 then hide() return end\nlocal wx,wz=WL[best][1],WL[best][2]\nlocal spot={y=p.pos.y+.05}\nif bd<=4.5 then\n spot.x,spot.z=p.pos.x,p.pos.z\nelse\n local k=3.5/bd\n spot.x,spot.z=wx+(p.pos.x-wx)*k,wz+(p.pos.z-wz)*k\nend\nlocal drawer=TensorCore.getStaticDrawer(0xB0FF7A28,2)\nif not s.circle or not drawer:updateTimedCircle(s.circle,ms,spot.x,spot.y,spot.z,1.25,0,false,true) then\n s.circle=drawer:addTimedCircle(ms,spot.x,spot.y,spot.z,1.25,0,false,true)\nend\nlocal distance=TensorCore.getDistance2d(p.pos,spot)\nif distance>1.25 then\n local h=TensorCore.getHeadingToTarget(p.pos,spot)\n local length=math.max(.1,distance-.9)\n if not s.arrow or not drawer:updateTimedArrow(s.arrow,ms,p.pos.x,spot.y,p.pos.z,h,length,.4,.8,1,0,false) then\n  s.arrow=drawer:addTimedArrow(ms,p.pos.x,spot.y,p.pos.z,h,length,.4,.8,1,0,false)\n end\nelseif s.arrow then\n pcall(Argus.deleteTimedShape,s.arrow)\n s.arrow=nil\nend\n",
						conditions = 
						{
							
							{
								"62cac87f-f247-01b1-b389-11fb8041fbee",
								true,
							},
						},
						name = "Blue spot and arrow to nearest opposite-colour wall",
						uuid = "9bdc2675-afa4-ae26-9e3a-84eb394b2106",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.rgShock\nif not s then return false end\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 or not p.pos or not p.alive then return false end\nreturn (s.fin>Now()) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Shock marker active on me",
						uuid = "62cac87f-f247-01b1-b389-11fb8041fbee",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Red Girl/Draws",
			name = "[Paradigm's Breach] Red Girl Shock guide to opposite-colour wall (blue)",
			throttleTime = 125,
			uuid = "880cbf7e-075b-8379-8f48-98d9f37c234e",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal t=data.rgDiffDir\nif not t then t={} data.rgDiffDir=t end\nt[e.entityID]=(e.markerID==167) and -1 or 1\n",
						conditions = 
						{
							
							{
								"19c395f0-2b5d-bc4d-b6fa-1d42308ed9aa",
								true,
							},
						},
						name = "Record clockwise or counter-clockwise per caster",
						uuid = "c1930798-e346-d034-9c97-617424da97a8",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local m=eventArgs and eventArgs.markerID\nif m~=167 and m~=168 then return false end\nif eventArgs.entityContentID~=9920 then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==966) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Diffuse Energy turn marker",
						uuid = "19c395f0-2b5d-bc4d-b6fa-1d42308ed9aa",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Red Girl/Draws",
			eventType = 4,
			name = "[Paradigm's Breach] Red Girl Diffuse Energy rotation direction",
			uuid = "94a7a70c-0fae-8aab-932d-1f75e91df5b1",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal n=data.rgDiffN\nif not n then n={} data.rgDiffN=n end\nn[e.entityID]=0\n-- first cone, for the optional green safe area (4.7s cast, hit about 4.9s after the start)\nlocal C=TensorCore.mGetEntity(e.entityID)\nif not C or not C.pos then return end\nlocal cones=data.rgDiffCones\nif not cones then cones={} data.rgDiffCones=cones end\ncones[e.entityID]={x=C.pos.x,y=C.pos.y,z=C.pos.z,h=C.pos.h,fin=Now()+5100}\n",
						conditions = 
						{
							
							{
								"bda0df02-4cff-ae39-bdf1-f1ea6919af8f",
								true,
							},
						},
						name = "Start hit counter for this caster",
						uuid = "a2a33131-e2b6-95c5-965f-d3c9de4c785b",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not eventArgs or eventArgs.spellID~=24611 or eventArgs.entityContentID~=9920 then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==966) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Diffuse Energy channel",
						uuid = "bda0df02-4cff-ae39-bdf1-f1ea6919af8f",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Red Girl/Draws",
			eventType = 3,
			name = "[Paradigm's Breach] Red Girl Diffuse Energy start (state only, first cone is the generic draw)",
			uuid = "ad8cf1f8-d6a5-e1b4-a5d6-505e1e1015b2",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal n=data.rgDiffN\nif not n then return end\nlocal cnt=(n[e.entityID] or 0)+1\nn[e.entityID]=cnt\nlocal dirs=data.rgDiffDir\nlocal d=dirs and dirs[e.entityID]\nlocal cones=data.rgDiffCones\nif cnt>=6 then\n n[e.entityID]=nil\n if dirs then dirs[e.entityID]=nil end\n if cones then cones[e.entityID]=nil end\n return\nend\n-- without a known direction the green safe area would be wrong, so drop it entirely\nif not d then data.rgDiffCones=nil return end\nlocal C=TensorCore.mGetEntity(e.entityID)\nif not C or not C.pos then data.rgDiffCones=nil return end\nlocal h=e.heading or C.pos.h or 0\nlocal red=TensorCore.getStaticDrawer(0x703333FF,2)\nred:addTimedCone(2800,C.pos.x,C.pos.y,C.pos.z,12,2.0944,h+2.0944*d,0,false,true)\nif cones and cones[e.entityID] then\n cones[e.entityID]={x=C.pos.x,y=C.pos.y,z=C.pos.z,h=h+2.0944*d,fin=Now()+3000}\nend\n",
						conditions = 
						{
							
							{
								"7c20b1a7-b06f-28f4-a5ec-bfa1120c76d3",
								true,
							},
						},
						name = "Advance: next cone red",
						uuid = "cdb058a5-baf7-7a30-a58f-0009e44d68f4",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not eventArgs or eventArgs.entityContentID~=9920 then return false end\nlocal s=eventArgs.spellID\nif s~=24611 and s~=24662 then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==966) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Diffuse Energy hit",
						uuid = "7c20b1a7-b06f-28f4-a5ec-bfa1120c76d3",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Red Girl/Draws",
			eventType = 2,
			name = "[Paradigm's Breach] Red Girl Diffuse Energy next hit (red)",
			uuid = "150ec310-31a9-5aaf-90ca-bd38047163eb",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal LS=data.rgLanes\nif not LS or LS.done then return end\nLS.done=true\nlocal p=TensorCore.mGetPlayer()\nif not p or not p.pos then return end\nlocal now=Now()\nlocal ms=math.floor(LS.t0+7800-now)\nif ms<=300 then return end\nlocal function syncBar()\n local okc,n=pcall(Argus.getNumCurrentMapEffects)\n if not okc or not n or n<57 then return nil end\n local out={}\n for s=1,28 do\n  local r=Argus.getMapEffectResource(28+s)\n  if r then\n   local ok,name,nsub,h=pcall(Argus.getEffectResourceScriptInfo,r,0)\n   if ok and name and h and (nsub or 0)>=2 then\n    local function act(k) local okk,sub=pcall(Argus.getEffectResourceScriptSubresource,h,k) if okk and sub then local _,_,_,a=Argus.getEffectResourceInfo(sub) return a and true or false end return false end\n    if act(0) then out[s]='W' elseif act(1) then out[s]='B' end\n   end\n  end\n end\n return out\nend\nlocal bar=syncBar() or data.rgBarrier or {}\nlocal WL={{845,-873},{845,-867},{845,-861},{845,-855},{845,-847},{845,-841},{845,-835},{845,-829},{823,-851},{829,-851},{835,-851},{841,-851},{849,-851},{855,-851},{861,-851},{867,-851},{838,-860},{844,-860},{850,-860},{854,-858},{854,-852},{854,-846},{852,-842},{846,-842},{840,-842},{836,-844},{836,-850},{836,-856}}\nlocal VERT={}\nfor n=1,8 do VERT[n]=true end\nfor n=20,22 do VERT[n]=true end\nfor n=26,28 do VERT[n]=true end\nlocal act={}\nfor _,l in ipairs(LS.list) do if Argus.isEntityVisible(l.id) then act[#act+1]=l end end\nif #act==0 then act=LS.list end\nlocal lanes={}\nfor _,l in ipairs(act) do\n local sx,cz=math.sin(l.h),math.cos(l.h)\n local short=false\n for n=1,28 do\n  local c=bar[n]\n  if c and ((c=='W')==l.white) then\n   local dx,dz=WL[n][1]-l.x,WL[n][2]-l.z\n   local along=dx*sx+dz*cz\n   local side=dx*cz-dz*sx\n   if along>=0 and along<=30 and math.abs(side)<=3 then short=true break end\n  end\n end\n lanes[#lanes+1]={x=l.x,y=l.y,z=l.z,h=l.h,sx=sx,cz=cz,len=short and 24 or 50}\nend\nlocal red=TensorCore.getStaticDrawer(0x703333FF,2)\nfor _,l in ipairs(lanes) do red:addTimedRect(ms,l.x,l.y,l.z,l.len,6,l.h,0,false,true) end\nlocal function inWall(x,z)\n for n=1,28 do\n  if bar[n] then\n   -- wall segments are 6 long and 2 wide\n   local hx,hz=3,1\n   if VERT[n] then hx,hz=1,3 end\n   if math.abs(x-WL[n][1])<=hx and math.abs(z-WL[n][2])<=hz then return true end\n  end\n end\n return false\nend\nlocal function danger(x,z)\n for _,l in ipairs(lanes) do\n  local dx,dz=x-l.x,z-l.z\n  local along=dx*l.sx+dz*l.cz\n  local side=dx*l.cz-dz*l.sx\n  if along>=0 and along<=l.len and math.abs(side)<=3 then return true end\n end\n return false\nend\nlocal d=TensorCore.getStaticDrawer(0x7033FF33,0)\nlocal y=p.pos.y\nfor iz=0,39 do\n local cz=-870.5+iz\n local a=nil\n for ix=0,40 do\n  local cx=825.5+ix\n  local ok=false\n  if ix<40 then\n   ok=(not (math.abs(cx-845)<=3 and math.abs(cz+851)<=3)) and (not danger(cx,cz)) and (not inWall(cx,cz))\n  end\n  if ok then\n   if not a then a=ix end\n  elseif a then\n   local left,right=825+a,825+ix\n   d:addTimedRect(ms,(left+right)/2,y,cz-0.5,1,right-left,0,0,false,true)\n   a=nil\n  end\n end\nend\n",
						conditions = 
						{
							
							{
								"662569e5-3fe3-da54-a418-3775b1da32e5",
								true,
							},
						},
						name = "Keep visible lances, draw red lanes and green safe cells",
						uuid = "b5bb35d5-93c8-c191-9c9f-6b06b14ff9ea",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local L=data.rgLanes\nif not L or L.done then return false end\nlocal now=Now()\nif now<L.t+400 or now>L.t0+7400 then return false end\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 or not p.pos then return false end\nif now<L.t0+6000 then\n local pend=data.rgBarrierPending\n if pend and now<pend+5200 then return false end\n local bt=data.rgBarrierT\n if bt and now<bt+300 then return false end\nend\nreturn true\n",
						dequeueIfLuaFalse = true,
						name = "Volley recorded and barrier colours settled",
						uuid = "662569e5-3fe3-da54-a418-3775b1da32e5",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Red Girl/Draws",
			name = "[Paradigm's Breach] Red Girl Point lances volley (red lanes, green safe areas)",
			throttleTime = 150,
			uuid = "76832bac-9fdf-eff5-91e9-cc3edcc0e2e7",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal C=TensorCore.mGetEntity(e.entityID)\nif not C or not C.pos then return end\nlocal now=Now()\nlocal LS=data.rgLanes\nif not LS or now-LS.t>2500 then LS={t0=now,t=now,list={},done=false} data.rgLanes=LS end\nLS.t=now\nfor _,l in ipairs(LS.list) do\n if l.id==e.entityID then l.x,l.y,l.z,l.h=C.pos.x,C.pos.y,C.pos.z,C.pos.h or 0 return end\nend\nLS.list[#LS.list+1]={id=e.entityID,white=(e.entityContentID==9981),x=C.pos.x,y=C.pos.y,z=C.pos.z,h=C.pos.h or 0}\n",
						conditions = 
						{
							
							{
								"3256e793-8ef0-c20b-9274-e048be51c313",
								true,
							},
						},
						name = "Record the re-shown lance for the volley pass",
						uuid = "938adbbf-f299-4fd0-9975-a322ba780beb",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local e=eventArgs\nif not e or not e.isVisible then return false end\nlocal c=e.entityContentID\nif c~=9981 and c~=9982 then return false end\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 or not p.pos then return false end\nreturn ((p.pos.x-845)^2+(p.pos.z+850)^2<=2500) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Lance became visible",
						uuid = "3256e793-8ef0-c20b-9274-e048be51c313",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Red Girl/Draws",
			eventType = 22,
			name = "[Paradigm's Breach] Red Girl Point lance shown again record",
			uuid = "eabd42db-989c-8d00-9ab0-02cd7a01a249",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\ndata.rgBarrierPending=Now()\n",
						conditions = 
						{
							
							{
								"76949cdc-5ba5-14d0-b9a5-96b92d0618ca",
								true,
							},
						},
						name = "Mark barrier colours as pending",
						uuid = "3d5953dd-f936-d8f0-adc4-4ea9b4b411ee",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local e=eventArgs\nif not e or e.entityContentID~=9950 then return false end\nif e.spellID~=24580 and e.spellID~=24581 then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==966) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Boss Generate: Barrier cast",
						uuid = "76949cdc-5ba5-14d0-b9a5-96b92d0618ca",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Red Girl/Draws",
			eventType = 3,
			name = "[Paradigm's Breach] Red Girl Generate Barrier in progress",
			uuid = "8b5c311e-96ea-af55-a680-f1c80ccdd36c",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal cones=data.rgDiffCones\nif not cones then return end\nlocal now=Now()\nlocal act={}\nfor id,c in pairs(cones) do\n if now<c.fin then act[#act+1]=c else cones[id]=nil end\nend\nif #act==0 then data.rgDiffCones=nil return end\nlocal channel=Argus2.getNextUnusedChannel(true)\nif channel==1 then channel=Argus2.getNextUnusedChannel(true) end\nif not channel or channel<=1 then return end\nlocal flags=Argus2.RenderFlags\nlocal baseFlags=flags.FLAG_WARP_TERRAIN+flags.FLAG_OCCLUSION_BASE\nlocal maskFlags=flags.FLAG_WARP_TERRAIN+flags.FLAG_OCCLUDE\nlocal safe=TensorCore.getStaticDrawer(0x5000FF00,1,channel,baseFlags)\nlocal mask=TensorCore.getStaticDrawer(0xFFFFFFFF,0,channel,maskFlags)\n-- arena square centred 845,-851, half width 24.5\nsafe:addRect(845,act[1].y,-875.5,49,49,0,false,baseFlags)\nfor _,c in ipairs(act) do\n mask:addCone(c.x,c.y,c.z,12,2.0944,c.h,false,maskFlags)\nend\n",
						conditions = 
						{
							
							{
								"4033ce5f-20ec-55e1-9086-4afc0b8f280b",
								true,
							},
						},
						name = "Draw arena minus next cones",
						uuid = "c082a23d-4b88-1ac8-a417-4f52ae343246",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not data.rgDiffCones then return false end\nlocal S=_G.PB_AllianceSettings\nif not S or not S.values or S.values.rgConeSafe~=true then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==966) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Option on and cones pending",
						uuid = "4033ce5f-20ec-55e1-9086-4afc0b8f280b",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Red Girl/Draws",
			eventType = 12,
			name = "[Paradigm's Breach] Red Girl Diffuse Energy safe area (green, optional)",
			uuid = "d3aad8d4-5005-15a7-be3e-349daac46bc3",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Tower at Paradigm's Breach/Red Girl",
			name = "AutoSim",
			uuid = "0a0dca04-c96e-e0a3-9bf1-cc55f2c3df88",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal api=TensorCore.API.TensorACR\nlocal ok,now=pcall(api.getAutoSimTime)\nif not ok or type(now)~=\"number\" or now<0 or now>150 then return end\ndata.pbSim=data.pbSim or {}\nif data.pbSim[\"redgirl\"] then return end\ndata.pbSim[\"redgirl\"]=true\nlocal o=now-183.5\napi.setAutoSimKillTime(434.7+o)\nfor _,t in ipairs({\"FullDowntime\",\"Stun\"}) do api.clearAutoSimPhases(t) end\napi.clearAutoSimUncertainty()\napi.addAutoSimUncertainty(0,15)\nlocal s={}\ndata.pbSim.redgirl=s\ns.down=api.addAutoSimPhase(\"FullDowntime\",192.7+o,257.4+o,1)\ns.downStart=192.7+o\ns.stun=api.addAutoSimPhase(\"Stun\",205.4+o,257.2+o,1)\ns.stunStart=205.4+o\n",
						conditions = 
						{
							
							{
								"9d758864-7b85-6cde-9709-4110c980f0fe",
								true,
							},
						},
						name = "Red Girl intermission forecast",
						uuid = "f6388b37-5d25-6038-b2ee-a2bb424fec40",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 or not p.pos or not p.incombat then return false end\nlocal e=eventArgs\nif not e then return false end\nif not (e.entityContentID==9950) then return false end\nlocal ok=false\nfor _,i in ipairs({25098}) do if e.spellID==i then ok=true end end\nreturn ok and (p.pos.x-(845))^2+(p.pos.z-(-850))^2<=2500\n",
						dequeueIfLuaFalse = true,
						name = "Red Girl intermission opening cast",
						uuid = "9d758864-7b85-6cde-9709-4110c980f0fe",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Red Girl/AutoSim",
			eventType = 3,
			name = "[Paradigm's Breach AutoSim] Red Girl intermission",
			uuid = "ab0a1a1d-f513-2f8a-a170-03ecb8047527",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal p=TensorCore.mGetPlayer()\nif not p or not p.pos then return end\nlocal s=data.pbSim and data.pbSim.redgirl\nif not s or not s.stun then return end\nlocal api=TensorCore.API.TensorACR\nlocal ok,now=pcall(api.getAutoSimTime)\nif not ok or type(now)~=\"number\" or now<=0 then return end\nlocal inside=(p.pos.x)^2+(p.pos.z-400)^2<=45*45\nlocal st=data.pbHack\nif not st then st={inside=false} data.pbHack=st end\nif inside and not st.inside then\n st.inside=true\n st.enter=now\n pcall(api.setAutoSimPhase,s.stun,now,now+52,1)\n pcall(api.setAutoSimPhase,s.down,math.min(s.downStart or now,now),now+52,1)\nelseif (not inside) and st.inside then\n st.inside=false\n if st.enter and now>st.enter then\n  pcall(api.setAutoSimPhase,s.stun,st.enter,now,1)\n  pcall(api.setAutoSimPhase,s.down,math.min(s.downStart or st.enter,st.enter),now,1)\n end\nend",
						conditions = 
						{
							
							{
								"cde203d4-681a-e87c-8bb5-4aa7221e0a8b",
								true,
							},
						},
						name = "Resync Stun to the real minigame entry and exit",
						uuid = "558a50ec-d9cb-c517-aa77-693963f9462d",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn p~=nil and p.localmapid==966 and p.pos~=nil\n",
						dequeueIfLuaFalse = true,
						name = "In the duty",
						uuid = "cde203d4-681a-e87c-8bb5-4aa7221e0a8b",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Red Girl/AutoSim",
			name = "[Paradigm's Breach AutoSim] Red Girl hacking minigame resync",
			throttleTime = 500,
			uuid = "4fc23e56-3450-4743-9722-52cdf25b27c0",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal api=TensorCore.API.TensorACR\n-- only ACRs with a DoT blacklist (for example BLM, BRD, SAM) provide these functions\nif not (api and api.addBlacklistEntry and api.saveDotBlacklist) then return end\nlocal names={[9985]='Red Sphere',[9987]='Black Wall',[9986]='White Wall',[9983]='Black Pylon',[9984]='White Pylon'}\nlocal id=eventArgs.entityContentID\nlocal entry=api.addBlacklistEntry(id,names[id])\nif entry and (not entry.enabled or entry.allowIfTarget or entry.allowSmartDoT) then\n    entry.enabled=true\n    entry.allowIfTarget=false\n    entry.allowSmartDoT=false\n    api.saveDotBlacklist()\nend",
						conditions = 
						{
							
							{
								"2087bba3-9df8-0fa5-adbe-f1205ded323d",
								true,
							},
						},
						name = "Block direct and Smart DoT on minigame targets",
						uuid = "b7eba0ca-dfcc-1a44-9bd7-6ab1b94ebe1b",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local c=eventArgs.entityContentID\nif not (c==9985 or c==9987 or c==9986 or c==9983 or c==9984) then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn p~=nil and p.localmapid==966\n",
						dequeueIfLuaFalse = true,
						name = "Minigame target spawned",
						uuid = "2087bba3-9df8-0fa5-adbe-f1205ded323d",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Red Girl/AutoSim",
			eventType = 5,
			name = "[Paradigm's Breach] Red Girl minigame targets - DoT blacklist",
			timeout = 2,
			uuid = "dcbd3323-36d8-31ad-ab13-16af8ca92ab6",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Tower at Paradigm's Breach/Red Girl",
			name = "Hacking minigame",
			uuid = "6bba3f79-e273-cb7c-824e-d4f195c6cb4b",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal white=(e.spellID==24973)\nlocal p=TensorCore.mGetPlayer()\nif not p then return end\nlocal haveW=TensorCore.hasBuff(p,2632)\nlocal haveB=TensorCore.hasBuff(p,2633)\nlocal wrong=white and (not haveW) or ((not white) and (not haveB))\nlocal now=Now()\ndata.rgHackWave={col=white and 'W' or 'B',fin=now+8000,t2=now+5000,rem=false,wrong=wrong,last=now}\nif wrong and AnyoneCore and AnyoneCore.Shotcall then AnyoneCore.Shotcall(white and 'Wave: switch to WHITE' or 'Wave: switch to BLACK',true,3,false) end\n",
						conditions = 
						{
							
							{
								"1123a79e-8489-c73d-bad3-cfebca11023f",
								true,
							},
						},
						name = "Record Wave colour and callout if I am the wrong colour",
						uuid = "65dc7436-d2cb-3243-9777-18969e038e33",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local e=eventArgs\nif not e or e.entityContentID~=9985 then return false end\nlocal s=e.spellID\nif s~=24973 and s~=24974 then return false end\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 or not p.pos or not p.alive then return false end\nreturn ((p.pos.x)^2+(p.pos.z-400)^2<=2025) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Wave started in the minigame",
						uuid = "1123a79e-8489-c73d-bad3-cfebca11023f",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Red Girl/Hacking minigame",
			eventType = 3,
			name = "[Paradigm's Breach] Red Girl hacking Wave start (state and first callout)",
			uuid = "fdcb2f35-4711-40ff-8636-86a1ca03b7ff",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nlocal s=data and data.rgHackWave\nif not e or not s then return end\nlocal wrong=(s.col=='W' and e.buffID==2633) or (s.col=='B' and e.buffID==2632)\ns.wrong=wrong\nlocal now=Now()\nif wrong and now-(s.last or 0)>800 then\n s.last=now\n if AnyoneCore and AnyoneCore.Shotcall then AnyoneCore.Shotcall(s.col=='W' and 'Wave: switch to WHITE' or 'Wave: switch to BLACK',true,3,false) end\nend\n",
						conditions = 
						{
							
							{
								"7fa5caa6-3cf0-19d5-96b4-dcd25c97c2e3",
								true,
							},
						},
						name = "Update colour state and re-warn if wrong",
						uuid = "85719d4e-ba6d-10c4-9dd3-545a1818ec3b",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local e=eventArgs\nif not e or (e.buffID~=2632 and e.buffID~=2633) then return false end\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 or e.entityID~=p.id then return false end\nlocal s=data.rgHackWave\nreturn (s~=nil and s.fin>Now()) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "My colour buff changed during a Wave",
						uuid = "7fa5caa6-3cf0-19d5-96b4-dcd25c97c2e3",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Red Girl/Hacking minigame",
			eventType = 8,
			name = "[Paradigm's Breach] Red Girl hacking Wave colour change reminder",
			uuid = "edb0f19b-7cf5-76d8-ade6-5ae44d80f76c",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal s=data.rgHackWave\nif not s or s.rem then return end\ns.rem=true\nif AnyoneCore and AnyoneCore.Shotcall then AnyoneCore.Shotcall(s.col=='W' and 'Wave soon: still not WHITE' or 'Wave soon: still not BLACK',true,3,false) end\n",
						conditions = 
						{
							
							{
								"06e20eb6-fff2-45b2-9abc-09d3c4c3cb36",
								true,
							},
						},
						name = "Last callout, once per Wave",
						uuid = "3705bffc-3acb-e3d6-b538-1f208fb70809",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.rgHackWave\nif not s or s.rem or not s.wrong then return false end\nlocal now=Now()\nreturn (now>=s.t2 and now<s.fin) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Wave about to hit and I am still wrong",
						uuid = "06e20eb6-fff2-45b2-9abc-09d3c4c3cb36",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Red Girl/Hacking minigame",
			name = "[Paradigm's Breach] Red Girl hacking Wave last reminder before the hit",
			throttleTime = 250,
			uuid = "8e182f48-a601-9df1-b74d-2b664f8c3c73",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Tower at Paradigm's Breach/Red Girl",
			name = "Child's Play",
			uuid = "4e01b09d-b3db-084e-81e2-0dcd3ed74c4b",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal now=Now()\nlocal north=(e.spellID==24612)\nlocal me=(data.rgChain==true)\ndata.rgCP={dir=north and 'N' or 'E',t0=now,march=now+9900,fin=now+16000,pyl={},me=me}\nif me and AnyoneCore and AnyoneCore.Shotcall then AnyoneCore.Shotcall(north and \"Child's Play: pushed NORTH, stand on the blue spot\" or \"Child's Play: pushed EAST, stand on the blue spot\",true,3,false) end\n",
						conditions = 
						{
							
							{
								"ba419e57-28e2-ab5b-8605-1bccd6c46703",
								true,
							},
						},
						name = "Record push direction and timing, callout if tethered",
						uuid = "072cd8a2-f84e-28e9-8430-341315d7a6de",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local e=eventArgs\nif not e or e.entityContentID~=9950 then return false end\nif e.spellID~=24612 and e.spellID~=24613 then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==966) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Child's Play channel",
						uuid = "ba419e57-28e2-ab5b-8605-1bccd6c46703",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Red Girl/Child's Play",
			eventType = 3,
			name = "[Paradigm's Breach] Red Girl Child's Play push start",
			uuid = "a46cf908-63f6-9e85-a8ff-dc9d8c0c08cd",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nlocal cp=data and data.rgCP\nif not e or not cp or not cp.pyl then return end\nlocal C=TensorCore.mGetEntity(e.entityID)\nif not C or not C.pos then return end\ncp.pyl[#cp.pyl+1]={x=C.pos.x,z=C.pos.z}\n",
						conditions = 
						{
							
							{
								"535b14b9-47f3-9f31-87e0-7f81c8275f56",
								true,
							},
						},
						name = "Record pylon position",
						uuid = "22fb2697-3621-3c07-88d2-4159cd719cad",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local e=eventArgs\nif not e or e.spellID~=24614 or e.entityContentID~=9983 then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==966) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Pylon Explosion channel",
						uuid = "535b14b9-47f3-9f31-87e0-7f81c8275f56",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Red Girl/Child's Play",
			eventType = 3,
			name = "[Paradigm's Breach] Red Girl Child's Play pylon record",
			uuid = "d7409878-6541-cc78-9eef-62fabb9356a3",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal cp=data.rgCP\nif not cp then return end\nlocal p=TensorCore.mGetPlayer()\nif not p or not p.pos then return end\nlocal now=Now()\nlocal dx=(cp.dir=='N') and 0 or 1\nlocal dz=(cp.dir=='N') and -1 or 0\nlocal pyl=cp.pyl\nlocal DS={24,27,30}\nlocal DM=27\nlocal function landD(sx,sz,D) return sx+D*dx,sz+D*dz end\nlocal function landSafe(lx,lz)\n if lx<828 or lx>862 or lz<-868 or lz>-834 then return false end\n if math.abs(lx-845)<=4.5 and math.abs(lz+851)<=4.5 then return false end\n for i=1,#pyl do local q=pyl[i] if (lx-q.x)^2+(lz-q.z)^2<92.16 then return false end end\n return true\nend\nlocal function startOk(sx,sz)\n if math.abs(sx-845)<=3.5 and math.abs(sz+851)<=3.5 then return false end\n for _,D in ipairs(DS) do\n  local lx,lz=landD(sx,sz,D)\n  if not landSafe(lx,lz) then return false end\n end\n for t=0,30,2 do\n  local x,z=sx+t*dx,sz+t*dz\n  if math.abs(x-845)<=3.5 and math.abs(z+851)<=3.5 then return false end\n end\n return true\nend\nif not cp.spots or cp.nsafe~=#pyl then\n local list={}\n for sx=826,864 do\n  for sz=-870,-832 do\n   if startOk(sx,sz) then\n    local lx,lz=landD(sx,sz,DM)\n    list[#list+1]={sx,sz,lx,lz}\n   end\n  end\n end\n local bx,bz=845,-876\n table.sort(list,function(a,b) return ((a[1]-bx)^2+(a[2]-bz)^2)<((b[1]-bx)^2+(b[2]-bz)^2) end)\n local spots={}\n for _,s in ipairs(list) do\n  local ok=true\n  for _,t in ipairs(spots) do if (s[1]-t[1])^2+(s[2]-t[2])^2<36 then ok=false break end end\n  if ok then spots[#spots+1]=s if #spots>=4 then break end end\n end\n cp.spots=spots\n cp.nsafe=#pyl\nend\nlocal px,pz=p.pos.x,p.pos.z\nlocal y=p.pos.y+.05\nlocal ms=math.min(450,math.floor(cp.fin-now))\nlocal BLUE,DIM,GREEN,RED=0xB0FF7A28,0x60FF7A28,0xB033FF33,0xB03333FF\nlocal function show(key,col,x,z)\n local d=TensorCore.getStaticDrawer(col,2)\n if not cp[key] or not d:updateTimedCircle(cp[key],ms,x,y,z,1.25,0,false,true) then cp[key]=d:addTimedCircle(ms,x,y,z,1.25,0,false,true) end\nend\nlocal function hide(key) if cp[key] then pcall(Argus.deleteTimedShape,cp[key]) cp[key]=nil end end\nif now<cp.march then\n local best,bd\n for _,s in ipairs(cp.spots) do\n  local d=(s[1]-px)^2+(s[2]-pz)^2\n  if not bd or d<bd then best,bd=s,d end\n end\n if not best then for i=1,4 do hide('s'..i) end hide('c2') hide('ar') return end\n for i=1,4 do\n  local s=cp.spots[i]\n  if s then show('s'..i,(s==best) and BLUE or DIM,s[1],s[2]) else hide('s'..i) end\n end\n show('c2',GREEN,best[3],best[4])\n local spot={x=best[1],y=y,z=best[2]}\n local distance=TensorCore.getDistance2d(p.pos,spot)\n if distance>1.25 then\n  local h=TensorCore.getHeadingToTarget(p.pos,spot)\n  local length=math.max(.1,distance-.9)\n  local d=TensorCore.getStaticDrawer(BLUE,2)\n  if not cp.ar or not d:updateTimedArrow(cp.ar,ms,px,y,pz,h,length,.4,.8,1,0,false) then cp.ar=d:addTimedArrow(ms,px,y,pz,h,length,.4,.8,1,0,false) end\n elseif cp.ar then\n  pcall(Argus.deleteTimedShape,cp.ar) cp.ar=nil\n end\nelse\n for i=1,4 do hide('s'..i) end\n hide('ar')\n if not cp.s0 then cp.s0={px,pz} end\n local lx,lz=landD(cp.s0[1],cp.s0[2],DM)\n local safe=true\n for _,D in ipairs(DS) do local ax,az=landD(cp.s0[1],cp.s0[2],D) if not landSafe(ax,az) then safe=false end end\n show('c2',safe and GREEN or RED,lx,lz)\nend\n",
						conditions = 
						{
							
							{
								"3aadb73f-aec8-1f86-afa9-e3801b95d457",
								true,
							},
						},
						name = "Blue pre-push spots, green landing, landing check",
						uuid = "332ec0f1-23c8-0824-b279-a559b1866b62",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local cp=data.rgCP\nif not cp or not cp.me or cp.fin<=Now() or not cp.pyl or #cp.pyl==0 then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==966 and p.alive and p.pos~=nil) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Child's Play push on me with pylons known",
						uuid = "3aadb73f-aec8-1f86-afa9-e3801b95d457",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Red Girl/Child's Play",
			name = "[Paradigm's Breach] Red Girl Child's Play safe landing guide",
			throttleTime = 125,
			uuid = "d6ab44e7-ea71-f49b-944e-1214494edfab",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nif e.newTetherID==149 then\n data.rgChain=true\nelse\n data.rgChain=nil\nend\n",
						conditions = 
						{
							
							{
								"e91a6fa3-b49d-2df2-a42b-d4ecb63697bb",
								true,
							},
						},
						name = "Remember whether the chain is on me",
						uuid = "1ba4fdbe-6d70-ca47-97aa-700d81dae1e2",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local e=eventArgs\nif not e then return false end\nif e.newTetherID~=149 and e.oldTetherID~=149 then return false end\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 then return false end\nreturn (e.sourceEntityID==p.id) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Chain tether (149) added to or removed from me",
						uuid = "e91a6fa3-b49d-2df2-a42b-d4ecb63697bb",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Red Girl/Child's Play",
			eventType = 15,
			name = "[Paradigm's Breach] Red Girl Child's Play chain tether on me",
			uuid = "28289eb9-76d3-c835-a5f3-eb5e580344d9",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Tower at Paradigm's Breach",
			name = "Xun-Zi and Meng-Zi",
			uuid = "6d50360c-f12e-6a9a-bf4d-c1cbf8c5247f",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Tower at Paradigm's Breach/Xun-Zi and Meng-Zi",
			name = "Draws",
			uuid = "12343023-74f2-ddbf-905b-a1ee254dade7",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal ms=math.floor(e.startTime+e.duration*1000-Now())\nif ms<=0 then return end\n-- 23552/23553/23555 are the Deploy Armaments boss casts and deal no damage; only the helper rects (23554/24696/23557) are drawn\nlocal SPEC={[23558]={skip=true},[23552]={skip=true},[23553]={skip=true},[23555]={skip=true}}\nlocal s=SPEC[e.aoeID]\nlocal ct=e.aoeCastType\nlocal k\nif s then\n if s.skip then return end\n k=s.k\nelse\n if ct==2 and e.aoeLength>0 and e.aoeLength<=30 and e.aoeType~=27 then k='c'\n elseif ct==12 and e.aoeLength>0 and e.aoeWidth>0 and e.aoeLength<=70 and e.aoeWidth<=40 then k='r'\n elseif ct==13 and e.aoeLength>0 and e.aoeLength<=50 then k='cone'\n end\nend\nif not k then return end\nlocal col=(s and s.col) or 0x703333FF\nlocal d=TensorCore.getStaticDrawer(col,2)\nlocal x,y,z=e.x,e.y,e.z\nif k=='c' then\n d:addTimedCircle(ms,x,y,z,e.aoeLength,0,false,true)\nelseif k=='r' then\n d:addTimedRect(ms,x,y,z,e.aoeLength,e.aoeWidth,e.heading,0,false,true)\nelse\n local ang=(s and s.ang) or (e.aoeType==5 and 2*math.pi/3 or math.pi/2)\n d:addTimedCone(ms,x,y,z,e.aoeLength,ang,e.heading,0,false,true)\nend",
						conditions = 
						{
							
							{
								"244f3e2f-debe-f712-9668-1b2047e571b4",
								true,
							},
						},
						name = "Xun-Zi and Meng-Zi hazard draws",
						uuid = "8fa2b67e-881b-bbed-9ee2-aa45e0b4486f",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 or not p.pos then return false end\nlocal e=eventArgs\nif not e or e.friendly then return false end\nlocal c=e.contentID\nif not (c==9921 or c==9922 or c==9923 or c==9136) then return false end\nreturn (p.pos.x-(790))^2+(p.pos.z-(790))^2<=2500\n",
						dequeueIfLuaFalse = true,
						name = "Xun-Zi and Meng-Zi arena and hazard",
						uuid = "244f3e2f-debe-f712-9668-1b2047e571b4",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Xun-Zi and Meng-Zi/Draws",
			eventType = 18,
			name = "[Paradigm's Breach] Xun-Zi and Meng-Zi hazard draws",
			uuid = "0004502f-51c5-8a9e-9795-58166e77a236",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local cfgs={{cid=9664,rad=2}}\nlocal p=TensorCore.mGetPlayer()\nif not p or not p.pos then return end\nlocal st=data.pbOrb1\nif not st then st={nextScan=0,ids={},seen={}} data.pbOrb1=st end\nlocal now=Now()\nif now>=st.nextScan then\n st.nextScan=now+500\n st.ids={}\n for _,cfg in ipairs(cfgs) do\n  for id,b in pairs(TensorCore.entityList(\"contentid=\"..cfg.cid) or {}) do\n   if b.alive then st.ids[#st.ids+1]={id=id,rad=cfg.rad} end\n  end\n end\nend\nif #st.ids==0 then return end\nlocal d=TensorCore.getStaticDrawer(0x703333FF,2)\nfor _,s in ipairs(st.ids) do\n local o=TensorCore.mGetEntity(s.id)\n if o and o.alive and o.pos and not (_G.PB_OrbDone and _G.PB_OrbDone[s.id]) then\n  local r=st.seen[s.id]\n  if not r then r={x=o.pos.x,z=o.pos.z,first=now,moved=now,ever=false} st.seen[s.id]=r end\n  if (o.pos.x-r.x)^2+(o.pos.z-r.z)^2>0.01 then r.x=o.pos.x r.z=o.pos.z r.moved=now r.ever=true end\n  if (now-r.moved<=700 or (not r.ever and now-r.first<=2500)) and (o.pos.x-p.pos.x)^2+(o.pos.z-p.pos.z)^2<=45*45 then\n   d:addCircle(o.pos.x,o.pos.y+0.1,o.pos.z,s.rad,false)\n  end\n end\nend",
						conditions = 
						{
							
							{
								"404e77c4-35dd-8522-900e-26df31cab2b6",
								true,
							},
						},
						name = "Energy orb Energy Bomb rings",
						uuid = "0247aa47-df7c-ceb1-b635-d53b1e055ef6",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 or not p.pos or not p.incombat then return false end\nreturn (p.pos.x-(790))^2+(p.pos.z-(790))^2<=2500\n",
						dequeueIfLuaFalse = true,
						name = "Xun-Zi and Meng-Zi arena in combat",
						uuid = "404e77c4-35dd-8522-900e-26df31cab2b6",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Xun-Zi and Meng-Zi/Draws",
			eventType = 12,
			name = "[Paradigm's Breach] Energy orb Energy Bomb rings",
			uuid = "dcdf487c-8835-a42e-8349-cdb34186a452",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Tower at Paradigm's Breach/Xun-Zi and Meng-Zi",
			name = "AutoSim",
			uuid = "11652774-9ba7-7658-8dac-f14455708742",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal api=TensorCore.API.TensorACR\nlocal ok,now=pcall(api.getAutoSimTime)\nif not ok or type(now)~=\"number\" or now<0 or now>40 then return end\ndata.pbSim=data.pbSim or {}\nif data.pbSim[\"xun\"] then return end\ndata.pbSim[\"xun\"]=true\nlocal o=now-6.1\napi.setAutoSimKillTime(124.0+o)\nfor _,t in ipairs({\"FullDowntime\",\"Stun\"}) do api.clearAutoSimPhases(t) end\napi.clearAutoSimUncertainty()\napi.addAutoSimUncertainty(0,10)\nlocal s={}\ndata.pbSim.xun=s\ns.d1=api.addAutoSimPhase(\"FullDowntime\",28.2+o,39.0+o,1)\ns.d1Start=28.2+o\n",
						conditions = 
						{
							
							{
								"b3c34766-3839-0e8d-8d29-495049efd144",
								true,
							},
						},
						name = "Xun-Zi and Meng-Zi forecast",
						uuid = "e13d5b56-fad9-bae3-9dc8-02d1ddca5d08",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 or not p.pos or not p.incombat then return false end\nlocal e=eventArgs\nif not e then return false end\nif not (e.entityContentID==9921) then return false end\nlocal ok=false\nfor _,i in ipairs({23552}) do if e.spellID==i then ok=true end end\nreturn ok and (p.pos.x-(790))^2+(p.pos.z-(790))^2<=2500\n",
						dequeueIfLuaFalse = true,
						name = "Xun-Zi and Meng-Zi opening cast",
						uuid = "b3c34766-3839-0e8d-8d29-495049efd144",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/Xun-Zi and Meng-Zi/AutoSim",
			eventType = 3,
			name = "[Paradigm's Breach AutoSim] Xun-Zi and Meng-Zi",
			uuid = "47ca00b5-c78c-b2cc-a2d0-eb8c05773626",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Tower at Paradigm's Breach",
			name = "False Idol and Her Inflorescence",
			uuid = "0a90efb1-1b08-658c-83ff-8ca03742763c",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Tower at Paradigm's Breach/False Idol and Her Inflorescence",
			name = "Draws",
			uuid = "21e05b32-350b-1c2e-afde-e8f32135346f",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal ms=math.floor(e.startTime+e.duration*1000-Now())\nif ms<=0 then return end\nlocal SPEC={[23533]={k='r'},[23535]={skip=true},[23522]={k='r'}}\nlocal s=SPEC[e.aoeID]\nlocal ct=e.aoeCastType\nlocal k\nif s then\n if s.skip then return end\n k=s.k\nelse\n if ct==2 and e.aoeLength>0 and e.aoeLength<=30 and e.aoeType~=27 then k='c'\n elseif ct==12 and e.aoeLength>0 and e.aoeWidth>0 and e.aoeLength<=70 and e.aoeWidth<=40 then k='r'\n elseif ct==13 and e.aoeLength>0 and e.aoeLength<=50 then k='cone'\n end\nend\nif not k then return end\nlocal col=(s and s.col) or 0x703333FF\n-- FLAG_RENDER_UI: flat at floor height and not hidden by the arena's screen effects\nlocal d=TensorCore.getStaticDrawer(col,2,0,Argus2.RenderFlags.FLAG_RENDER_UI)\nlocal p=TensorCore.mGetPlayer()\nlocal x,y,z=e.x,e.y,e.z\nif p and p.pos then y=p.pos.y+0.05 end\nif k=='c' then\n -- Darker Note (23516) lands on its target at the end of the cast, so the circle follows that player\n if e.aoeID==23516 then\n  local c=TensorCore.mGetEntity(e.entityID)\n  local t=c and c.castinginfo and c.castinginfo.channeltargetid\n  if t and t~=0 and t~=e.entityID then\n   d:addTimedCircleOnEnt(ms,t,e.aoeLength,0,false,true)\n   return\n  end\n end\n d:addTimedCircle(ms,x,y,z,e.aoeLength,0,false,true)\nelseif k=='r' then\n d:addTimedRect(ms,x,y,z,e.aoeLength,e.aoeWidth,e.heading,0,false,true)\nelse\n local ang=(s and s.ang) or (e.aoeType==5 and 2*math.pi/3 or math.pi/2)\n d:addTimedCone(ms,x,y,z,e.aoeLength,ang,e.heading,0,false,true)\nend",
						conditions = 
						{
							
							{
								"c78de1a9-b209-bbb2-b2cc-6a8a1e68fa32",
								true,
							},
						},
						name = "False Idol and Her Inflorescence hazard draws",
						uuid = "6319ce7a-5359-2737-ba62-6aa61bd5d6f0",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 or not p.pos then return false end\nlocal e=eventArgs\nif not e or e.friendly then return false end\nlocal c=e.contentID\nif not (c==9948 or c==9949 or c==9950) then return false end\nreturn (p.pos.x-(-700))^2+(p.pos.z-(-705))^2<=2500\n",
						dequeueIfLuaFalse = true,
						name = "False Idol and Her Inflorescence arena and hazard",
						uuid = "c78de1a9-b209-bbb2-b2cc-6a8a1e68fa32",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/False Idol and Her Inflorescence/Draws",
			eventType = 18,
			name = "[Paradigm's Breach] False Idol and Her Inflorescence hazard draws",
			uuid = "e9279ffa-f8f8-171f-afa1-1b50fff8f226",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nif AnyoneCore and AnyoneCore.Shotcall then AnyoneCore.Shotcall(\"Pillar Impact: knockback away from the pillar\",true,3,false) end",
						conditions = 
						{
							
							{
								"120a0505-e2ca-deb4-96c4-b8b08b370c89",
								true,
							},
						},
						name = "Pillar Impact callout",
						uuid = "15f64be4-f939-5599-8a11-5146147e551a",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 or not p.pos or not p.incombat then return false end\nlocal e=eventArgs\nif not e then return false end\nif not (e.entityContentID==9949) then return false end\nlocal ok=false\nfor _,i in ipairs({23536}) do if e.spellID==i then ok=true end end\nreturn ok and (p.pos.x-(-700))^2+(p.pos.z-(-705))^2<=2500\n",
						dequeueIfLuaFalse = true,
						name = "Pillar Impact",
						uuid = "120a0505-e2ca-deb4-96c4-b8b08b370c89",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/False Idol and Her Inflorescence/Draws",
			eventType = 3,
			name = "[Paradigm's Breach] Her Inflorescence Pillar Impact callout",
			uuid = "7d5b56b8-d718-4c1f-b8f5-cf1ba39888e0",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local cfgs={{cid=9951,rad=4}}\nlocal p=TensorCore.mGetPlayer()\nif not p or not p.pos then return end\nlocal st=data.pbOrb3\nif not st then st={nextScan=0,ids={},seen={}} data.pbOrb3=st end\nlocal now=Now()\nif now>=st.nextScan then\n st.nextScan=now+500\n st.ids={}\n for _,cfg in ipairs(cfgs) do\n  for id,b in pairs(TensorCore.entityList(\"contentid=\"..cfg.cid) or {}) do\n   if b.alive then st.ids[#st.ids+1]={id=id,rad=cfg.rad} end\n  end\n end\nend\nif #st.ids==0 then return end\nlocal d=TensorCore.getStaticDrawer(0x703333FF,2)\nfor _,s in ipairs(st.ids) do\n local o=TensorCore.mGetEntity(s.id)\n if o and o.alive and o.pos and not (_G.PB_OrbDone and _G.PB_OrbDone[s.id]) then\n  local r=st.seen[s.id]\n  if not r then r={x=o.pos.x,z=o.pos.z,first=now,moved=now,ever=false} st.seen[s.id]=r end\n  if (o.pos.x-r.x)^2+(o.pos.z-r.z)^2>0.01 then r.x=o.pos.x r.z=o.pos.z r.moved=now r.ever=true end\n  if (now-r.moved<=700 or (not r.ever and now-r.first<=2500)) and (o.pos.x-p.pos.x)^2+(o.pos.z-p.pos.z)^2<=45*45 then\n   d:addCircle(o.pos.x,o.pos.y+0.1,o.pos.z,s.rad,false)\n  end\n end\nend",
						conditions = 
						{
							
							{
								"cf78453b-1283-6808-b79a-d50f5a0a7024",
								true,
							},
						},
						name = "Energy orb Scattered Magic rings",
						uuid = "e195cfa3-c672-c848-aada-5a8a993e5b59",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 or not p.pos or not p.incombat then return false end\nreturn (p.pos.x-(-700))^2+(p.pos.z-(-705))^2<=2500\n",
						dequeueIfLuaFalse = true,
						name = "False Idol and Her Inflorescence arena in combat",
						uuid = "cf78453b-1283-6808-b79a-d50f5a0a7024",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/False Idol and Her Inflorescence/Draws",
			eventType = 12,
			name = "[Paradigm's Breach] Energy orb Scattered Magic rings",
			uuid = "68327d1a-ba21-7310-8658-74b36fd0430b",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal p=TensorCore.mGetPlayer()\nif not p or not p.pos then return end\nlocal now=Now()\nlocal list=Argus.getCurrentDirectionalAOEs() or {}\nlocal magic={}\nfor _,a in pairs(list) do\n if (a.aoeID==23510 or a.aoeID==23511) and a.startTime+a.duration*1000>now then magic[#magic+1]=a end\nend\nif #magic==0 then return end\nlocal channel=Argus2.getNextUnusedChannel(true)\nif channel==1 then channel=Argus2.getNextUnusedChannel(true) end\nif not channel or channel<=1 then return end\nlocal flags=Argus2.RenderFlags\nlocal baseFlags=flags.FLAG_WARP_TERRAIN+flags.FLAG_OCCLUSION_BASE\nlocal maskFlags=flags.FLAG_WARP_TERRAIN+flags.FLAG_OCCLUDE\nlocal safe=TensorCore.getStaticDrawer(0x5000FF00,1,channel,baseFlags)\nlocal mask=TensorCore.getStaticDrawer(0xFFFFFFFF,0,channel,maskFlags)\nlocal y=p.pos.y\n-- arena square centred -700,-700, half width 24.5\nsafe:addRect(-700,y,-724.5,49,49,0,false,baseFlags)\n-- cut out Made Magic and any other circle or rect hazard active at the same time\nlocal function cut(a)\n if a.startTime+a.duration*1000<=now or (a.x+700)^2+(a.z+700)^2>2500 then return end\n local L,W,ct=a.aoeLength,a.aoeWidth,a.aoeCastType\n if ct==12 and L>0 and L<=70 and W>0 and W<=40 then\n  mask:addRect(a.x,y,a.z,L,W,a.heading,false,maskFlags)\n elseif (ct==2 or ct==5 or ct==7) and L>0 and L<=30 and a.aoeType~=27 then\n  mask:addCircle(a.x,y,a.z,L,false,maskFlags)\n end\nend\nfor _,a in pairs(list) do cut(a) end\nfor _,a in pairs(Argus.getCurrentGroundAOEs() or {}) do cut(a) end\n",
						conditions = 
						{
							
							{
								"27daf1e9-a943-6d35-b1d7-90ebf7dc7812",
								true,
							},
						},
						name = "Draw arena minus Made Magic",
						uuid = "12697d14-4c10-fe4c-85e2-9dac3dbc2f5a",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 or not p.pos then return false end\nreturn (p.pos.x+700)^2+(p.pos.z+700)^2<=2500\n",
						dequeueIfLuaFalse = true,
						name = "False Idol arena",
						uuid = "27daf1e9-a943-6d35-b1d7-90ebf7dc7812",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/False Idol and Her Inflorescence/Draws",
			eventType = 12,
			name = "[Paradigm's Breach] False Idol Made Magic safe area (green)",
			uuid = "2ac2dc89-d3a4-c2c7-8f44-c510c8648961",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal now=Now()\nlocal st=data.fiNotes\n-- orbs are recorded by the OnEntityAdd reaction; entity lists do not include them\nif not st then return end\nlocal hit,nxt,later\nfor id,r in pairs(st.orbs) do\n local d=0\n local done=false\n if r.t0 then\n  -- the explosions walk 6 yalms outward from the first hit about once per 1.05s\n  d=6*math.floor((now-r.t0)/1050)\n  if d>42 then done=true end\n elseif now-r.born>12000 then\n  done=true\n else\n  local o=TensorCore.mGetEntity(id)\n  if o and o.pos and Argus.isEntityVisible(id) then r.x,r.y,r.z=o.pos.x,o.pos.y,o.pos.z end\n end\n if done then\n  st.orbs[id]=nil\n else\n  if not hit then\n   hit=TensorCore.getStaticDrawer(0x903333FF,2)\n   nxt=TensorCore.getStaticDrawer(0x6000A5FF,2)\n   later=TensorCore.getStaticDrawer(0x4000FFFF,2)\n  end\n  local c=r.z\n  if r.ew then c=r.x end\n  local lo,hi=-724.5,-675.5\n  -- exaflare circles: red is the next explosion, orange and yellow the two after it\n  local first=0\n  if r.t0 then first=d/6+1 end\n  local function ring(drawer,k)\n   for _,s in ipairs({1,-1}) do\n    if k>0 or s==1 then\n     local p=c+s*6*k\n     if p>=lo and p<=hi then\n      if r.ew then drawer:addCircle(p,r.y,r.z,6,false)\n      else drawer:addCircle(r.x,r.y,p,6,false) end\n     end\n    end\n   end\n  end\n  ring(later,first+2)\n  ring(nxt,first+1)\n  ring(hit,first)\n end\nend",
						conditions = 
						{
							
							{
								"7019f4a4-c803-658e-b719-22fb71283b99",
								true,
							},
						},
						name = "Draw exaflare circles for recorded note orbs",
						uuid = "b397ff8e-b21d-8b64-9d82-431f273283e3",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 or not p.pos then return false end\nreturn (p.pos.x+700)^2+(p.pos.z+700)^2<=2500\n",
						dequeueIfLuaFalse = true,
						name = "False Idol arena",
						uuid = "7019f4a4-c803-658e-b719-22fb71283b99",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/False Idol and Her Inflorescence/Draws",
			eventType = 12,
			name = "[Paradigm's Breach] False Idol Lighter Note exaflare circles",
			uuid = "1cf0b475-1723-217e-b8d6-cdb60bed68ed",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nlocal st=data.fiNotes\nif not e or not st then return end\nlocal C=TensorCore.mGetEntity(e.entityID)\nif not C or not C.pos then return end\nlocal best,bd\nfor _,r in pairs(st.orbs) do\n if not r.done and not r.t0 then\n  local d=(r.x-C.pos.x)^2+(r.z-C.pos.z)^2\n  if d<64 and (not bd or d<bd) then best,bd=r,d end\n end\nend\nif best then best.x,best.z,best.t0=C.pos.x,C.pos.z,Now() end\n",
						conditions = 
						{
							
							{
								"9d87e7b2-04bb-e9d9-9c42-3aaf8206eeba",
								true,
							},
						},
						name = "Lock the nearest orb lane",
						uuid = "99390189-32d7-b91a-a2dc-a82509415b2c",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not eventArgs or eventArgs.spellID~=23513 then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==966) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Lighter Note first hit",
						uuid = "9d87e7b2-04bb-e9d9-9c42-3aaf8206eeba",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/False Idol and Her Inflorescence/Draws",
			eventType = 2,
			name = "[Paradigm's Breach] False Idol Lighter Note first hit record",
			uuid = "c5e48b2d-c28b-a76f-85ce-88e7f7b3998f",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal o=TensorCore.mGetEntity(e.entityID)\nif not o or not o.pos then return end\nlocal st=data.fiBeams\nif not st then st={} data.fiBeams=st end\n-- the beam fires about 8.1s after the orb is armed\nst[e.entityID]={x=o.pos.x,z=o.pos.z,fin=Now()+8100}\n",
						conditions = 
						{
							
							{
								"5e768339-31aa-5392-abef-9a556fe9bda2",
								true,
							},
						},
						name = "Record beam position and fire time",
						uuid = "019c0971-2e92-494c-bdad-05a02a05abef",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local e=eventArgs\nif not e or e.entityContentID~=2011497 or e.a2~=1 or e.a3~=2 then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==966) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Interference orb armed",
						uuid = "5e768339-31aa-5392-abef-9a556fe9bda2",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/False Idol and Her Inflorescence/Draws",
			eventType = 19,
			name = "[Paradigm's Breach] False Idol Magical Interference orb record",
			uuid = "46444636-d745-b820-8e91-8731a5134528",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal st=data.fiBeams\nif not st then return end\nlocal p=TensorCore.mGetPlayer()\nif not p or not p.pos then return end\nlocal now=Now()\nlocal first\nfor id,b in pairs(st) do\n if now>b.fin+150 then st[id]=nil\n elseif not first or b.fin<first then first=b.fin end\nend\nif not first then data.fiBeams=nil return end\nlocal red=TensorCore.getStaticDrawer(0x803333FF,2)\nlocal later=TensorCore.getStaticDrawer(0x3000A5FF,1)\nfor _,b in pairs(st) do\n local d=(b.fin<=first+500) and red or later\n d:addRect(b.x,p.pos.y,b.z,50,10,0,false)\nend\n",
						conditions = 
						{
							
							{
								"c1a40d9f-5872-9df6-aa3c-22e9ca11ee22",
								true,
							},
						},
						name = "Draw next beams red and later beams orange",
						uuid = "452f8437-779f-a4f3-9631-c8d79398601b",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not data.fiBeams then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==966) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Beams pending",
						uuid = "c1a40d9f-5872-9df6-aa3c-22e9ca11ee22",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/False Idol and Her Inflorescence/Draws",
			eventType = 12,
			name = "[Paradigm's Breach] False Idol Magical Interference beam lanes (red)",
			uuid = "a753c3ff-62d0-3c83-9c0a-1f223fd8a2e6",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal m=Argus.getEntityModel(e.entityID)\nlocal o=TensorCore.mGetEntity(e.entityID)\nif not o or not o.pos then return end\nlocal st=data.fiNotes\nif not st then st={orbs={}} data.fiNotes=st end\n-- model 12686 explodes east-west, model 12687 north-south\nst.orbs[e.entityID]={ew=(m==12686),x=o.pos.x,y=o.pos.y,z=o.pos.z,born=Now()}\n",
						conditions = 
						{
							
							{
								"795f1fa0-3f82-e09a-8ed7-b52dc10aae54",
								true,
							},
						},
						name = "Record the orb and its beam axis",
						uuid = "804d63c9-d737-d9bd-88ec-021fbb90dba7",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local e=eventArgs\nif not e or e.entityContentID~=108 then return false end\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 then return false end\nlocal m=Argus.getEntityModel(e.entityID)\nreturn (m==12686 or m==12687) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Note orb added",
						uuid = "795f1fa0-3f82-e09a-8ed7-b52dc10aae54",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/False Idol and Her Inflorescence/Draws",
			eventType = 5,
			name = "[Paradigm's Breach] False Idol Lighter Note orb record",
			uuid = "f28ed03e-a2c6-ea7d-9d4a-de00b6bc351a",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal o=TensorCore.mGetEntity(e.entityID)\nif not o or not o.pos then return end\n-- Uneven Footing hits 9s after the marker is armed; the strip lies a quarter turn from the marker heading.\n-- The game's own 1.6s cast draw takes over at the end, so this one lasts 7.5s.\nlocal h=o.pos.h-math.pi/2\nlocal sx,sz=math.sin(h),math.cos(h)\n-- FLAG_RENDER_UI: this arena's screen effects hide plain flat draws unless you look down\nlocal d=TensorCore.getStaticDrawer(0x703333FF,0,0,Argus2.RenderFlags.FLAG_RENDER_UI)\nfor i=0,7 do\n local off=-35+10*i\n -- marker height is the arena floor, so a jumping player does not raise the strip\n d:addTimedCenteredRect(7500,o.pos.x+off*sx,o.pos.y+0.05,o.pos.z+off*sz,10,30,h,0,false,true)\nend\n",
						conditions = 
						{
							
							{
								"73f6a280-8727-35d3-91f5-f4d1e50a8254",
								true,
							},
						},
						name = "Draw the upcoming building strip",
						uuid = "840c3689-59cd-95f4-865b-969bb73815e1",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local e=eventArgs\nif not e or e.entityContentID~=2011500 or e.a2~=1 or e.a3~=2 then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==966) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Building armed",
						uuid = "73f6a280-8727-35d3-91f5-f4d1e50a8254",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/False Idol and Her Inflorescence/Draws",
			eventType = 19,
			name = "[Paradigm's Breach] Her Inflorescence upcoming building (red)",
			uuid = "18e5eaea-16b0-618d-9e25-8ca8b2f86cf6",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal st=data.fiSignal\nif not st then st={} data.fiSignal=st end\n-- lanes 8..12 run north to south at z -720..-680; 16/32 is the lane the train takes, 64/128 is clear\nst[e.a1]={danger=(e.a2==16),fin=Now()+12000}\n",
						conditions = 
						{
							
							{
								"08a1212e-832d-e954-8929-6a23156c3c29",
								true,
							},
						},
						name = "Record the lane colour",
						uuid = "7ef4a1ef-0820-506a-89ee-0f51fb0dc1df",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local e=eventArgs\nif not e or e.a1<8 or e.a1>12 then return false end\nif not ((e.a2==16 and e.a3==32) or (e.a2==64 and e.a3==128)) then return false end\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 or not p.pos then return false end\nreturn (p.pos.x+700)^2+(p.pos.z+700)^2<=2500\n",
						dequeueIfLuaFalse = true,
						name = "Signal light set",
						uuid = "08a1212e-832d-e954-8929-6a23156c3c29",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/False Idol and Her Inflorescence/Draws",
			eventType = 14,
			name = "[Paradigm's Breach] Her Inflorescence signal lane record",
			uuid = "18ef3d3c-f5df-46cf-9b02-0f03bc619ca7",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal st=data.fiSignal\nif not st then return end\nlocal now=Now()\nlocal ui=Argus2.RenderFlags.FLAG_RENDER_UI\nlocal red,green\nlocal any=false\nfor i,l in pairs(st) do\n if now>=l.fin then st[i]=nil\n else\n  any=true\n  -- FLAG_RENDER_UI: this arena's screen effects hide plain flat draws unless you look down\n  red=red or TensorCore.getStaticDrawer(0x703333FF,2,0,ui)\n  green=green or TensorCore.getStaticDrawer(0x5000FF00,2,0,ui)\n  local d=l.danger and red or green\n  -- fixed arena floor height (600): following the player's height made the lanes move on jumps\n  d:addRect(-724.5,600.05,-720+10*(i-8),49,10,math.pi/2,false)\n end\nend\nif not any then data.fiSignal=nil end\n",
						conditions = 
						{
							
							{
								"e7d33db0-de3b-de8f-80ab-4a9d8ea32f7c",
								true,
							},
						},
						name = "Draw unsafe lanes red and safe lanes green",
						uuid = "614244bb-1434-9abc-b697-6fcf46041fce",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not data.fiSignal then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==966) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Signal lanes pending",
						uuid = "e7d33db0-de3b-de8f-80ab-4a9d8ea32f7c",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/False Idol and Her Inflorescence/Draws",
			eventType = 12,
			name = "[Paradigm's Breach] Her Inflorescence signal lanes (red and green)",
			uuid = "0737656a-c34d-5b76-b8bd-1b9155bac5fd",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\ndata.fiSignal=nil\n",
						conditions = 
						{
							
							{
								"2d0fe958-af9a-817e-abb0-5ee9a8cca140",
								true,
							},
						},
						name = "Clear signal lanes",
						uuid = "ccf8380b-55ee-a12b-a47d-721632f6741e",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not eventArgs or eventArgs.spellID~=23525 then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==966) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Crash hit",
						uuid = "2d0fe958-af9a-817e-abb0-5ee9a8cca140",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/False Idol and Her Inflorescence/Draws",
			eventType = 2,
			name = "[Paradigm's Breach] Her Inflorescence signal lanes resolved",
			uuid = "e468da1b-10b0-a659-a663-48ae869424ea",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal o=TensorCore.mGetEntity(e.entityID)\nif not o or not o.pos then return end\nlocal h=o.pos.h\nlocal sx,sz=math.sin(h),math.cos(h)\nlocal ids=data.fiPillar\nif not ids then ids={} data.fiPillar=ids end\n-- Towerfall: 14 wide from the pillar along its heading (Splatoon element: 50 long)\n-- FLAG_RENDER_UI: this arena's screen effects hide plain flat draws unless you look down\nlocal d=TensorCore.getStaticDrawer(0x703333FF,0,0,Argus2.RenderFlags.FLAG_RENDER_UI)\nfor i=0,4 do\n local off=5+10*i\n local id=d:addTimedCenteredRect(14000,o.pos.x+off*sx,o.pos.y+0.05,o.pos.z+off*sz,10,14,h,0,false,true)\n if id then ids[#ids+1]=id end\nend\n",
						conditions = 
						{
							
							{
								"9f28cf84-5e52-4a72-a64b-e1d520be8560",
								true,
							},
						},
						name = "Draw where the pillar will fall",
						uuid = "27d45f56-8e4d-4214-a869-4f711be38b48",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local e=eventArgs\nif not e or e.entityContentID~=2011501 or e.a2~=16 or e.a3~=32 then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==966) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Pillar landed",
						uuid = "9f28cf84-5e52-4a72-a64b-e1d520be8560",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/False Idol and Her Inflorescence/Draws",
			eventType = 19,
			name = "[Paradigm's Breach] Her Inflorescence pillar fall line (red)",
			uuid = "a1a520d9-33ab-ea48-92aa-23d5d7129227",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nfor _,id in ipairs(data.fiPillar or {}) do Argus.deleteTimedShape(id) end\ndata.fiPillar=nil\n",
						conditions = 
						{
							
							{
								"ea08722a-6756-59e2-8d45-448f31d7e107",
								true,
							},
						},
						name = "Clear the pillar lines",
						uuid = "e5142e14-38ff-8864-b2b5-fa2f4757cb35",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not eventArgs or eventArgs.spellID~=23540 then return false end\nreturn data.fiPillar~=nil\n",
						dequeueIfLuaFalse = true,
						name = "Towerfall hit",
						uuid = "ea08722a-6756-59e2-8d45-448f31d7e107",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/False Idol and Her Inflorescence/Draws",
			eventType = 2,
			name = "[Paradigm's Breach] Her Inflorescence pillar fall line resolved",
			uuid = "61e64452-3480-b110-99a5-2c736a78249d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Tower at Paradigm's Breach/False Idol and Her Inflorescence",
			name = "AutoSim",
			uuid = "00ec54bb-d368-41e9-acb9-5c168f71fe58",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal api=TensorCore.API.TensorACR\nlocal ok,now=pcall(api.getAutoSimTime)\nif not ok or type(now)~=\"number\" or now<0 or now>40 then return end\ndata.pbSim=data.pbSim or {}\nif data.pbSim[\"idol\"] then return end\ndata.pbSim[\"idol\"]=true\nlocal o=now-5.1\napi.setAutoSimKillTime(198.7+o)\nfor _,t in ipairs({\"FullDowntime\",\"Stun\"}) do api.clearAutoSimPhases(t) end\napi.clearAutoSimUncertainty()\napi.addAutoSimUncertainty(0,10)\nlocal s={}\ndata.pbSim.idol=s\n",
						conditions = 
						{
							
							{
								"44dba8b7-b16a-f36c-8a69-98def87325b6",
								true,
							},
						},
						name = "False Idol forecast",
						uuid = "ba48664d-c38a-5242-af18-18f69108a465",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 or not p.pos or not p.incombat then return false end\nlocal e=eventArgs\nif not e then return false end\nif not (e.entityContentID==9948) then return false end\nlocal ok=false\nfor _,i in ipairs({23517}) do if e.spellID==i then ok=true end end\nreturn ok and (p.pos.x-(-700))^2+(p.pos.z-(-705))^2<=2500\n",
						dequeueIfLuaFalse = true,
						name = "False Idol opening cast",
						uuid = "44dba8b7-b16a-f36c-8a69-98def87325b6",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/False Idol and Her Inflorescence/AutoSim",
			eventType = 3,
			name = "[Paradigm's Breach AutoSim] False Idol",
			uuid = "28b16481-cdb1-676d-8eb9-e4efa5b9be32",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal api=TensorCore.API.TensorACR\nlocal ok,now=pcall(api.getAutoSimTime)\nif not ok or type(now)~=\"number\" or now<0 or now>40 then return end\ndata.pbSim=data.pbSim or {}\nif data.pbSim[\"her\"] then return end\ndata.pbSim[\"her\"]=true\nlocal o=now-240.6\napi.setAutoSimKillTime(660.0+o)\nfor _,t in ipairs({\"FullDowntime\",\"Stun\"}) do api.clearAutoSimPhases(t) end\napi.clearAutoSimUncertainty()\napi.addAutoSimUncertainty(0,40)\nlocal s={}\ndata.pbSim.her=s\n",
						conditions = 
						{
							
							{
								"ebc3ea0e-b146-7191-b166-776e64650729",
								true,
							},
						},
						name = "Her Inflorescence forecast",
						uuid = "c5102e97-cdf9-c801-968d-daa63ce81d3d",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 or not p.pos or not p.incombat then return false end\nlocal e=eventArgs\nif not e then return false end\nif not (e.entityContentID==9949) then return false end\nlocal ok=false\nfor _,i in ipairs({23520}) do if e.spellID==i then ok=true end end\nreturn ok and (p.pos.x-(-700))^2+(p.pos.z-(-705))^2<=2500\n",
						dequeueIfLuaFalse = true,
						name = "Her Inflorescence opening cast",
						uuid = "ebc3ea0e-b146-7191-b166-776e64650729",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/False Idol and Her Inflorescence/AutoSim",
			eventType = 3,
			name = "[Paradigm's Breach AutoSim] Her Inflorescence",
			uuid = "0581bc0e-baeb-f33c-877a-69ed5d5ca902",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Tower at Paradigm's Breach/False Idol and Her Inflorescence",
			name = "Knockback",
			uuid = "640bd5cc-bf0c-df70-bad5-e168f451c006",
		},
		objectType = "folder",
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
								"83699842-f131-62c6-af78-46b948c94aa3",
								true,
							},
							
							{
								"5d6f2197-25b7-83e3-b5c2-df5ffb34de73",
								true,
							},
							
							{
								"52f5f9cb-4148-411b-9122-ca3336947d1e",
								true,
							},
							
							{
								"6e75feca-a2e6-b238-ad1f-c28b33fc3774",
								true,
							},
						},
						gVar = "ACR_TensorViper4_Hotbar_ArmsLength",
						name = "Request Arm's Length",
						uuid = "e756c697-1065-cb86-b363-4c053f7714d9",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "ACR",
						conditions = 
						{
							
							{
								"83699842-f131-62c6-af78-46b948c94aa3",
								true,
							},
							
							{
								"5d6f2197-25b7-83e3-b5c2-df5ffb34de73",
								true,
							},
							
							{
								"52f5f9cb-4148-411b-9122-ca3336947d1e",
								true,
							},
							
							{
								"05296538-34f9-e193-9d0c-fcd8547b33eb",
								true,
							},
						},
						gVar = "ACR_TensorNuke4_Hotbar_Surecast",
						name = "Request Surecast",
						uuid = "9ebed431-1476-63ad-b01d-949ddcf7a324",
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
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 966,
						name = "Tower at Paradigm's Breach only",
						uuid = "83699842-f131-62c6-af78-46b948c94aa3",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local S=_G.PB_AllianceSettings\nif not S then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n S={values={},folder=folder,path=folder..'AllianceRaid-ParadigmsBreach.lua'}\n local existed=FileExists(S.path)\n if existed then\n  local ok,t=pcall(FileLoad,S.path)\n  if ok and type(t)=='table' then S.values=t end\n end\n local v=S.values\n local changed=not existed\n if type(v.kbLunge)~='number' or v.kbLunge<0 or v.kbLunge>2 or v.kbLunge~=math.floor(v.kbLunge) then v.kbLunge=0 changed=true end\n if type(v.kbPillar)~='boolean' then v.kbPillar=false changed=true end\n if changed then\n  pcall(function()\n   if not FolderExists(S.folder) then FolderCreate(S.folder) end\n   FileSave(S.path,v)\n  end)\n end\n _G.PB_AllianceSettings=S\nend\nlocal e=eventArgs\nif not e or e.spellID~=23538 or e.entityContentID~=9949 then return false end\nreturn S.values.kbPillar==true",
						dequeueIfLuaFalse = true,
						name = "Exact mechanic and setting",
						uuid = "5d6f2197-25b7-83e3-b5c2-df5ffb34de73",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not self.deadline then self.deadline=Now()+eventArgs.channelTimeMax*1000 end\nlocal remaining=self.deadline-Now()\nif remaining>3000 or remaining<1000 then return false end\nlocal caster=TensorCore.mGetEntity(eventArgs.entityID)\nreturn caster~=nil and caster.castinginfo.channelingid==eventArgs.spellID",
						name = "Request with 3 to 1 seconds remaining",
						uuid = "52f5f9cb-4148-411b-9122-ca3336947d1e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 14,
						dequeueIfLuaFalse = true,
						jobIDList = 
						{
							19,
							21,
							32,
							37,
							20,
							22,
							30,
							34,
							39,
							41,
							23,
							31,
							38,
						},
						name = "Physical role",
						uuid = "6e75feca-a2e6-b238-ad1f-c28b33fc3774",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 14,
						dequeueIfLuaFalse = true,
						jobIDList = 
						{
							25,
							27,
							35,
							42,
							24,
							28,
							33,
							40,
						},
						name = "Caster or healer",
						uuid = "05296538-34f9-e193-9d0c-fcd8547b33eb",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/False Idol and Her Inflorescence/Knockback",
			eventType = 3,
			name = "[Paradigm's Breach] Her Inflorescence Pillar Impact knockback immunity (optional)",
			timeout = 10,
			uuid = "da845d91-7feb-335a-ba94-d9294b97da63",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal q=data.fiRings\nif not q then q={} data.fiRings=q end\n-- BossMod A36 Dissonance: resolves 8.1s after arming; 2011498 white (face away), 2011499 black (face the centre)\nq[#q+1]={white=e.entityContentID==2011498,deadline=Now()+8100}\n",
						conditions = 
						{
							
							{
								"29780669-223c-f242-bec9-24038596fbc0",
								true,
							},
						},
						name = "Queue ring colour",
						uuid = "55017b7e-b2ac-380c-9703-36589f341a53",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local e=eventArgs\nif not e or (e.entityContentID~=2011498 and e.entityContentID~=2011499) or e.a2~=1 or e.a3~=2 then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==966) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Ring armed",
						uuid = "29780669-223c-f242-bec9-24038596fbc0",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/False Idol and Her Inflorescence",
			eventType = 19,
			name = "[Paradigm's Breach] Distortion rings - record",
			uuid = "eaa4d220-e473-a4fa-adf6-524fa5deb806",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal q=data.fiRings\nif not q then return end\nlocal white=eventArgs.spellID==23531\nfor i,r in ipairs(q) do\n -- only a ring that is about to resolve, so a repeated hit event cannot drop a later one\n if r.white==white and r.deadline-Now()<1500 then table.remove(q,i) break end\nend\nif #q==0 then data.fiRings=nil end\n",
						conditions = 
						{
							
							{
								"8a779b84-f544-c693-998e-0607fbbdf2b4",
								true,
							},
						},
						name = "Drop the resolved ring",
						uuid = "4d154cca-f39f-1618-92e7-bce47f5b1476",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local e=eventArgs\nif not e or (e.spellID~=23531 and e.spellID~=23532) then return false end\nreturn data.fiRings~=nil\n",
						dequeueIfLuaFalse = true,
						name = "Dissonance hit",
						uuid = "8a779b84-f544-c693-998e-0607fbbdf2b4",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/False Idol and Her Inflorescence",
			eventType = 2,
			name = "[Paradigm's Breach] Distortion rings - resolved",
			uuid = "13236c9a-5246-c9e8-99e3-3c090e3dd46b",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal S=_G.PB_AllianceSettings\nif not S then return end\nlocal A=TensorCore.API.TensorACR\nif not A or not A.setLockFaceHeading then return end\nlocal p=TensorCore.mGetPlayer()\nlocal now=Now()\nlocal q=data.fiRings\nif q then\n while q[1] and now>q[1].deadline+700 do table.remove(q,1) end\n if #q==0 then data.fiRings=nil q=nil end\nend\nlocal r=q and q[1]\nif r and S.values.ringFace~=false and p and p.alive and p.localmapid==966 and r.deadline-now<=3000 then\n local dx,dz=-700-p.pos.x,-700-p.pos.z\n -- at the very centre the direction is undefined, so keep the last heading\n if dx*dx+dz*dz>0.25 then\n  local h=TensorCore.getHeadingToTarget(p.pos,{x=-700,y=p.pos.y,z=-700})\n  if r.white then h=(h+math.pi)%(2*math.pi) end\n  A.setLockFaceHeading(h)\n  A.setHardLockFace(true)\n  A.toggleLockFace(true)\n  S.ownsRingLock=true\n end\nelseif S.ownsRingLock then\n A.toggleLockFace(false)\n A.setHardLockFace(false)\n S.ownsRingLock=nil\nend\n",
						conditions = 
						{
							
							{
								"60c635bc-fbb6-d9f0-97d1-5ce53b4e9a98",
								true,
							},
						},
						name = "Face for the next ring; release after",
						uuid = "fce65e0e-7ea1-6091-b98b-e867584f94ff",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local S=_G.PB_AllianceSettings\nreturn (data.fiRings~=nil or (S~=nil and S.ownsRingLock==true)) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Ring pending or lock owned",
						uuid = "60c635bc-fbb6-d9f0-97d1-5ce53b4e9a98",
						version = 3,
					},
				},
			},
			displayPath = "The Tower at Paradigm's Breach/False Idol and Her Inflorescence",
			name = "[Paradigm's Breach] Distortion rings - auto lockface (optional)",
			uuid = "5c16168a-7b6d-499a-b8a9-d391bde2ec65",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "The Orbonne Monastery",
			uuid = "742cf5a0-f6af-c3aa-bad4-be69c09de0cc",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Orbonne Monastery",
			name = "Mustadio",
			uuid = "c3010154-f388-d1d6-a165-a4f97c19e802",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Orbonne Monastery/Mustadio",
			name = "Draws",
			uuid = "0f5b4b61-3c76-ab83-85c0-41c64f808775",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal ms=math.floor(e.startTime+e.duration*1000-Now())\nif ms<=0 then return end\nlocal d=TensorCore.getStaticDrawer(0x703333FF,2)\nlocal a=e.aoeID\nif a==14147 then\n d:addTimedCircle(ms,e.x,e.y,e.z,e.aoeLength,0,false,true)\nelseif a==14142 or a==14143 then\n d:addTimedCone(ms,e.x,e.y,e.z,e.aoeLength,3.6651914,e.heading,0,false,true)\nelse\n d:addTimedRect(ms,e.x,e.y,e.z,e.aoeLength,e.aoeWidth,e.heading,0,false,true)\nend\n",
						conditions = 
						{
							
							{
								"f55b2e74-8781-a7bc-b696-70db1c155842",
								true,
							},
						},
						name = "Draw Mustadio rectangles and circles",
						uuid = "3dab8d61-1480-c612-a879-93f2b84275e6",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=826 or not p.pos then return false end\nlocal e=eventArgs\nif not e or e.friendly then return false end\nlocal a=e.aoeID\nif not (a==14144 or a==14135 or a==14145 or a==14147 or a==14142 or a==14143) then return false end\nreturn ((e.x-p.pos.x)^2+(e.z-p.pos.z)^2<=10000) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Mustadio hazard in this arena",
						uuid = "f55b2e74-8781-a7bc-b696-70db1c155842",
						version = 3,
					},
				},
			},
			displayPath = "The Orbonne Monastery/Mustadio/Draws",
			eventType = 18,
			name = "[Orbonne Monastery] Mustadio hazard draws",
			uuid = "8b4f5eb0-61b2-599c-bc25-4d297d6597ae",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal C=TensorCore.mGetEntity(e.sourceEntityID)\nif not C or not C.pos then return end\nlocal d=TensorCore.getStaticDrawer(0x703333FF,2)\nd:addTimedRect(14300,C.pos.x,C.pos.y,C.pos.z,100,15,C.pos.h or 0,0,false,true)\n",
						conditions = 
						{
							
							{
								"964f33bc-98ed-542a-b320-4fe218758b8f",
								true,
							},
						},
						name = "Draw Compress lane 14.5 s early",
						uuid = "141bda2d-1826-d39c-bb58-53834622b970",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=826 or not p.pos then return false end\nlocal e=eventArgs\nif not e or e.sourceEntityContentID~=7921 or e.newTetherID~=86 then return false end\nreturn ((p.pos.x-600)^2+(p.pos.z-290)^2<=10000) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Iron Construct tether to Mustadio",
						uuid = "964f33bc-98ed-542a-b320-4fe218758b8f",
						version = 3,
					},
				},
			},
			displayPath = "The Orbonne Monastery/Mustadio/Draws",
			eventType = 15,
			name = "[Orbonne Monastery] Mustadio Iron Construct early warning",
			uuid = "59d88cea-6815-99b0-a4ed-3f14ddd2a747",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal T=TensorCore.mGetEntity(e.sourceEntityID)\nif not T or not T.pos then return end\nlocal h=T.pos.h or 0\nlocal d=TensorCore.getStaticDrawer(0x703333FF,2)\n-- 30x30 square centred on the turret: start 15 behind it\nd:addTimedRect(14300,T.pos.x-15*math.sin(h),T.pos.y,T.pos.z-15*math.cos(h),30,30,h,0,false,true)",
						conditions = 
						{
							
							{
								"2b5606a8-359b-7743-9cbf-e0e41bfb1d56",
								true,
							},
						},
						name = "Draw Satellite Beam square 14.3 s early",
						uuid = "c56eff1b-8881-3707-a01c-3795c93470a7",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=826 or not p.pos then return false end\nlocal e=eventArgs\nif not e or e.sourceEntityContentID~=7920 or e.newTetherID~=88 then return false end\nreturn ((p.pos.x-600)^2+(p.pos.z-290)^2<=10000) and true or false",
						dequeueIfLuaFalse = true,
						name = "Early Turret tether to Mustadio",
						uuid = "2b5606a8-359b-7743-9cbf-e0e41bfb1d56",
						version = 3,
					},
				},
			},
			displayPath = "The Orbonne Monastery/Mustadio/Draws",
			eventType = 15,
			name = "[Orbonne Monastery] Mustadio Early Turret early warning",
			uuid = "7112cc1e-9dec-aca6-9ed0-662854c254a9",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Orbonne Monastery/Mustadio",
			name = "AutoSim",
			uuid = "d86ba8db-e541-c9c8-baa4-a4f08b7e3b10",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal api=TensorCore.API.TensorACR\nlocal ok,now=pcall(api.getAutoSimTime)\nif not ok or type(now)~=\"number\" or now<0 or now>40 then return end\ndata.orbSim=data.orbSim or {}\nif data.orbSim.mustadio then return end\ndata.orbSim.mustadio=true\nlocal o=now-7.7\napi.setAutoSimKillTime(281.3+o)\nfor _,t in ipairs({\"FullDowntime\",\"Stun\"}) do api.clearAutoSimPhases(t) end\napi.clearAutoSimUncertainty()\napi.addAutoSimUncertainty(0,15)\napi.addAutoSimPhase(\"FullDowntime\",99.6+o,130.7+o,1)\n",
						conditions = 
						{
							
							{
								"c84c2354-861b-9143-aac0-8d6ec2bc350f",
								true,
							},
						},
						name = "Mustadio forecast",
						uuid = "9ca9e9d5-99f4-0767-98d3-05b0f4e380cb",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=826 or not p.pos or not p.incombat then return false end\nlocal e=eventArgs\nif not e then return false end\nreturn (e.entityContentID==7919 and e.spellID==14139 and (p.pos.x-600)^2+(p.pos.z-290)^2<=3600) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Mustadio opening cast",
						uuid = "c84c2354-861b-9143-aac0-8d6ec2bc350f",
						version = 3,
					},
				},
			},
			displayPath = "The Orbonne Monastery/Mustadio/AutoSim",
			eventType = 3,
			name = "[Orbonne Monastery AutoSim] Mustadio",
			uuid = "40ef2712-b60a-13b6-afce-950d65d32368",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player=TensorCore.mGetPlayer()\nif not player or player.localmapid~=826 or not player.pos then self.used=true; return end\ndata.trialsInitialTargets=data.trialsInitialTargets or {}\nlocal states=data.trialsInitialTargets\nlocal state=states[\"826_7919\"] or {}\nstates[\"826_7919\"]=state\nlocal current=TensorCore.mGetTarget()\nlocal label=\"[Orbonne targeting] Mustadio\"\nif state.pending then\n    if current and current.id==state.pending then\n        d(label..\" confirmed target=\"..tostring(current.id))\n        state.pending=nil\n    elseif Now()-state.requestedAt>=1500 then\n        d(label..\" request not confirmed; intended=\"..tostring(state.pending)..\" current=\"..tostring(current and current.id))\n        state.pending=nil\n    end\n    self.used=true\n    return\nend\nif player.incombat or state.done then self.used=true; return end\nlocal boss,nearest=nil,45*45\nfor _,candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\",{contentid=7919}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx=candidate.pos.x-player.pos.x\n        local dy=candidate.pos.y-player.pos.y\n        local dz=candidate.pos.z-player.pos.z\n        local distance=dx*dx+dy*dy+dz*dz\n        if distance<=nearest then\n            boss,nearest=candidate,distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label..\" waiting for an attackable boss within 45 yalms; current=\"..tostring(current and current.id))\n        state.waitLogged=true\n    end\n    self.used=true\n    return\nend\nstate.done=true\nif current and current.alive and current.targetable and current.attackable then\n    d(label..\" kept existing target; intended=\"..tostring(boss.id)..\" current=\"..tostring(current.id))\nelse\n    state.pending=boss.id\n    state.requestedAt=Now()\n    d(label..\" target request; intended=\"..tostring(boss.id)..\" current=\"..tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used=true",
						conditions = 
						{
							
							{
								"e531f152-b960-ccae-8610-d62250b5c85f",
								true,
							},
						},
						name = "Select Mustadio once",
						uuid = "d9309e1a-0dd1-86d3-a7d2-daf361946c38",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player=TensorCore.mGetPlayer()\nif not player or player.localmapid~=826 or not player.pos then return false end\nif (player.pos.x-600)^2+(player.pos.z-290)^2>6400 then return false end\nlocal states=data.trialsInitialTargets\nlocal state=states and states[\"826_7919\"]\nreturn ((state~=nil and state.pending~=nil) or (not player.incombat and (not state or not state.done))) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Mustadio arena and initial target",
						uuid = "e531f152-b960-ccae-8610-d62250b5c85f",
						version = 3,
					},
				},
			},
			displayPath = "The Orbonne Monastery/Mustadio/AutoSim",
			name = "Mustadio select boss at encounter start",
			throttleTime = 500,
			uuid = "aeb7b195-1418-7bf1-80b0-8aec0cd56082",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Orbonne Monastery",
			name = "Agrias",
			uuid = "4dea3b86-060f-54bf-b580-b3762fa47e9e",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Orbonne Monastery/Agrias",
			name = "Draws",
			uuid = "636f2fc1-2064-224a-b8c4-ba09f4cb3bb7",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal ms=math.floor(e.startTime+e.duration*1000-Now())\nif ms<=0 then return end\nlocal d=TensorCore.getStaticDrawer(0x703333FF,2)\nlocal a=e.aoeID\nif a==14419 then\n d:addTimedRect(ms,e.x,e.y,e.z,e.aoeLength,e.aoeWidth,e.heading,0,false,true)\nelseif a==14438 then\n d:addTimedCone(ms,e.x,e.y,e.z,e.aoeLength,1.5707963,e.heading,0,false,true)\nelseif a==14428 then\n d:addTimedDonut(ms,e.x,e.y,e.z,15,30,0,false,true)\nelse\n d:addTimedCircle(ms,e.x,e.y,e.z,e.aoeLength,0,false,true)\nend\n",
						conditions = 
						{
							
							{
								"96fa59f8-6f4e-a031-9f3e-d265a77ba58e",
								true,
							},
						},
						name = "Draw Agrias circles and lines",
						uuid = "d7d21ea5-49ab-3891-93fd-9869d7ed35ab",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=826 or not p.pos then return false end\nlocal e=eventArgs\nif not e or e.friendly then return false end\nlocal a=e.aoeID\nif not (a==14437 or a==14419 or a==14427 or a==14430 or a==14428 or a==14438) then return false end\nreturn ((e.x-p.pos.x)^2+(e.z-p.pos.z)^2<=10000) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Agrias hazard in this arena",
						uuid = "96fa59f8-6f4e-a031-9f3e-d265a77ba58e",
						version = 3,
					},
				},
			},
			displayPath = "The Orbonne Monastery/Agrias/Draws",
			eventType = 18,
			name = "[Orbonne Monastery] Agrias hazard draws",
			uuid = "2e043670-a183-210a-b085-bc181f9f62d2",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Orbonne Monastery/Agrias",
			name = "AutoSim",
			uuid = "f17f4480-ecad-d0d4-91da-096f443255bb",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal api=TensorCore.API.TensorACR\nlocal ok,now=pcall(api.getAutoSimTime)\nif not ok or type(now)~=\"number\" or now<0 or now>40 then return end\ndata.orbSim=data.orbSim or {}\nif data.orbSim.agrias then return end\ndata.orbSim.agrias=true\nlocal o=now-8.2\napi.setAutoSimKillTime(282.4+o)\nfor _,t in ipairs({\"FullDowntime\",\"Stun\"}) do api.clearAutoSimPhases(t) end\napi.clearAutoSimUncertainty()\napi.addAutoSimUncertainty(0,15)\napi.addAutoSimPhase(\"FullDowntime\",197.4+o,236.3+o,1)\n",
						conditions = 
						{
							
							{
								"7886b7b4-107b-07d6-abfe-d3e3d79a2f13",
								true,
							},
						},
						name = "Agrias forecast",
						uuid = "c05b05e2-f43b-aa3b-b8ce-e6b7ae2b0655",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=826 or not p.pos or not p.incombat then return false end\nlocal e=eventArgs\nif not e then return false end\nreturn (e.entityContentID==7931 and e.spellID==14439 and (p.pos.x-600)^2+(p.pos.z+54)^2<=3600) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Agrias opening cast",
						uuid = "7886b7b4-107b-07d6-abfe-d3e3d79a2f13",
						version = 3,
					},
				},
			},
			displayPath = "The Orbonne Monastery/Agrias/AutoSim",
			eventType = 3,
			name = "[Orbonne Monastery AutoSim] Agrias",
			uuid = "3f7dc29c-bd5d-e9f3-a8f1-4acd789ae07d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player=TensorCore.mGetPlayer()\nif not player or player.localmapid~=826 or not player.pos then self.used=true; return end\ndata.trialsInitialTargets=data.trialsInitialTargets or {}\nlocal states=data.trialsInitialTargets\nlocal state=states[\"826_7931\"] or {}\nstates[\"826_7931\"]=state\nlocal current=TensorCore.mGetTarget()\nlocal label=\"[Orbonne targeting] Agrias\"\nif state.pending then\n    if current and current.id==state.pending then\n        d(label..\" confirmed target=\"..tostring(current.id))\n        state.pending=nil\n    elseif Now()-state.requestedAt>=1500 then\n        d(label..\" request not confirmed; intended=\"..tostring(state.pending)..\" current=\"..tostring(current and current.id))\n        state.pending=nil\n    end\n    self.used=true\n    return\nend\nif player.incombat or state.done then self.used=true; return end\nlocal boss,nearest=nil,45*45\nfor _,candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\",{contentid=7931}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx=candidate.pos.x-player.pos.x\n        local dy=candidate.pos.y-player.pos.y\n        local dz=candidate.pos.z-player.pos.z\n        local distance=dx*dx+dy*dy+dz*dz\n        if distance<=nearest then\n            boss,nearest=candidate,distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label..\" waiting for an attackable boss within 45 yalms; current=\"..tostring(current and current.id))\n        state.waitLogged=true\n    end\n    self.used=true\n    return\nend\nstate.done=true\nif current and current.alive and current.targetable and current.attackable then\n    d(label..\" kept existing target; intended=\"..tostring(boss.id)..\" current=\"..tostring(current.id))\nelse\n    state.pending=boss.id\n    state.requestedAt=Now()\n    d(label..\" target request; intended=\"..tostring(boss.id)..\" current=\"..tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used=true",
						conditions = 
						{
							
							{
								"166b8d8c-ca14-f20c-98a4-b360ddbaa861",
								true,
							},
						},
						name = "Select Agrias once",
						uuid = "1e2f18d0-2db3-0ce4-8a18-e3df89e4a795",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player=TensorCore.mGetPlayer()\nif not player or player.localmapid~=826 or not player.pos then return false end\nif (player.pos.x-600)^2+(player.pos.z+54)^2>6400 then return false end\nlocal states=data.trialsInitialTargets\nlocal state=states and states[\"826_7931\"]\nreturn ((state~=nil and state.pending~=nil) or (not player.incombat and (not state or not state.done))) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Agrias arena and initial target",
						uuid = "166b8d8c-ca14-f20c-98a4-b360ddbaa861",
						version = 3,
					},
				},
			},
			displayPath = "The Orbonne Monastery/Agrias/AutoSim",
			name = "Agrias select boss at encounter start",
			throttleTime = 500,
			uuid = "b6660169-aaae-e38f-9f31-2dcef7b5c77d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Orbonne Monastery",
			name = "The Thunder God",
			uuid = "d9fdaefa-3908-bdf1-bc3e-524b5e412b66",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Orbonne Monastery/The Thunder God",
			name = "Draws",
			uuid = "661dbb38-ef08-9da0-bfef-c90d5e045865",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal ms=math.floor(e.startTime+e.duration*1000-Now())\nif ms<=0 then return end\nlocal d=TensorCore.getStaticDrawer(0x703333FF,2)\nif e.aoeID==14183 then\n d:addTimedDonut(ms,e.x,e.y,e.z,15,30,0,false,true)\nelseif e.aoeID==14182 then\n d:addTimedCircle(ms,e.x,e.y,e.z,15,0,false,true)\nelse\n d:addTimedCircle(ms,e.x,e.y,e.z,e.aoeLength,0,false,true)\nend\n",
						conditions = 
						{
							
							{
								"045aeb71-888c-205c-aa87-8523a81b0517",
								true,
							},
						},
						name = "Draw Thunder God circles and rings",
						uuid = "c4a3134a-58c7-fae5-bc31-28791e38c959",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=826 or not p.pos then return false end\nlocal e=eventArgs\nif not e or e.friendly then return false end\nlocal a=e.aoeID\nif not (a==14166 or a==14182 or a==14183) then return false end\nreturn ((e.x+600)^2+(e.z+600)^2<=10000) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Thunder God hazard in this arena",
						uuid = "045aeb71-888c-205c-aa87-8523a81b0517",
						version = 3,
					},
				},
			},
			displayPath = "The Orbonne Monastery/The Thunder God/Draws",
			eventType = 18,
			name = "[Orbonne Monastery] Thunder God hazard draws",
			uuid = "393586da-069b-500f-940c-f3dec2402ec6",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal C=TensorCore.mGetEntity(e.entityID)\nif not C or not C.pos then return end\nlocal base=math.floor((e.channelTimeMax or 0)*1000)\nif base<=0 then return end\nlocal x,y,z=C.pos.x,C.pos.y,C.pos.z\nlocal d=TensorCore.getStaticDrawer(0x703333FF,2)\nlocal s=e.spellID\nif s==14153 or s==14154 then\n local f=(s==14153) and 1 or -1\n local P={{12.5*f,21.7,1000},{-25*f,0,1700},{12.5*f,-21.7,2200}}\n for _,q in ipairs(P) do\n  d:addTimedCircle(base+q[3],x+q[1],y,z+q[2],15,0,false,true)\n end\nelseif s==14159 then\n d:addTimedCircle(base+300,x,y,z,26,0,false,true)\nelseif s==14160 then\n d:addTimedDonut(base+300,x,y,z,20,35,0,false,true)\nend\n",
						conditions = 
						{
							
							{
								"981c354b-5cce-80dd-9ff8-642fb9ee3675",
								true,
							},
						},
						name = "Draw predicted Holy Sword circles, Northswain circle and Judgment Blade ring",
						uuid = "4c8e66e8-4af1-470a-94dd-ce4bc00d50e9",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=826 or not p.pos then return false end\nlocal e=eventArgs\nif not e or e.entityContentID~=7899 then return false end\nlocal s=e.spellID\nif not (s==14153 or s==14154 or s==14159 or s==14160) then return false end\nreturn ((p.pos.x+600)^2+(p.pos.z+600)^2<=10000) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Holy Sword cast in this arena",
						uuid = "981c354b-5cce-80dd-9ff8-642fb9ee3675",
						version = 3,
					},
				},
			},
			displayPath = "The Orbonne Monastery/The Thunder God/Draws",
			eventType = 3,
			name = "[Orbonne Monastery] Thunder God Holy Sword predicted hazards",
			uuid = "171470ce-9bdd-d805-b14b-4261e8d549a1",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Orbonne Monastery/The Thunder God",
			name = "AutoSim",
			uuid = "6cc4acb4-f1f7-5540-896a-57cf2a3e99c8",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal api=TensorCore.API.TensorACR\nlocal ok,now=pcall(api.getAutoSimTime)\nif not ok or type(now)~=\"number\" or now<0 or now>40 then return end\ndata.orbSim=data.orbSim or {}\nif data.orbSim.thunderGod then return end\ndata.orbSim.thunderGod=true\nlocal o=now-12.1\napi.setAutoSimKillTime(382.5+o)\nfor _,t in ipairs({\"FullDowntime\",\"Stun\"}) do api.clearAutoSimPhases(t) end\napi.clearAutoSimUncertainty()\napi.addAutoSimUncertainty(0,15)\napi.addAutoSimPhase(\"FullDowntime\",138.4+o,219.3+o,1)\n",
						conditions = 
						{
							
							{
								"f64d8279-3006-5338-b70d-d9ed4adb4abe",
								true,
							},
						},
						name = "Thunder God forecast",
						uuid = "cf42a0f6-e9bf-9eff-82a2-f9e703268683",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=826 or not p.pos or not p.incombat then return false end\nlocal e=eventArgs\nif not e then return false end\nreturn (e.entityContentID==7899 and e.spellID==14161 and (p.pos.x+600)^2+(p.pos.z+600)^2<=3600) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Thunder God opening cast",
						uuid = "f64d8279-3006-5338-b70d-d9ed4adb4abe",
						version = 3,
					},
				},
			},
			displayPath = "The Orbonne Monastery/The Thunder God/AutoSim",
			eventType = 3,
			name = "[Orbonne Monastery AutoSim] The Thunder God",
			uuid = "c84dab76-ba23-b08d-93b4-475db692855d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player=TensorCore.mGetPlayer()\nif not player or player.localmapid~=826 or not player.pos then self.used=true; return end\ndata.trialsInitialTargets=data.trialsInitialTargets or {}\nlocal states=data.trialsInitialTargets\nlocal state=states[\"826_7899\"] or {}\nstates[\"826_7899\"]=state\nlocal current=TensorCore.mGetTarget()\nlocal label=\"[Orbonne targeting] The Thunder God\"\nif state.pending then\n    if current and current.id==state.pending then\n        d(label..\" confirmed target=\"..tostring(current.id))\n        state.pending=nil\n    elseif Now()-state.requestedAt>=1500 then\n        d(label..\" request not confirmed; intended=\"..tostring(state.pending)..\" current=\"..tostring(current and current.id))\n        state.pending=nil\n    end\n    self.used=true\n    return\nend\nif player.incombat or state.done then self.used=true; return end\nlocal boss,nearest=nil,60*60\nfor _,candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\",{contentid=7899}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx=candidate.pos.x-player.pos.x\n        local dy=candidate.pos.y-player.pos.y\n        local dz=candidate.pos.z-player.pos.z\n        local distance=dx*dx+dy*dy+dz*dz\n        if distance<=nearest then\n            boss,nearest=candidate,distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label..\" waiting for an attackable boss within 60 yalms; current=\"..tostring(current and current.id))\n        state.waitLogged=true\n    end\n    self.used=true\n    return\nend\nstate.done=true\nif current and current.alive and current.targetable and current.attackable then\n    d(label..\" kept existing target; intended=\"..tostring(boss.id)..\" current=\"..tostring(current.id))\nelse\n    state.pending=boss.id\n    state.requestedAt=Now()\n    d(label..\" target request; intended=\"..tostring(boss.id)..\" current=\"..tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used=true",
						conditions = 
						{
							
							{
								"78284118-94e7-f7a7-8145-570456c5be1d",
								true,
							},
						},
						name = "Select The Thunder God once",
						uuid = "1b8c6e50-1063-db2b-92ee-77edea494eec",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player=TensorCore.mGetPlayer()\nif not player or player.localmapid~=826 or not player.pos then return false end\nif (player.pos.x+600)^2+(player.pos.z+600)^2>6400 then return false end\nlocal states=data.trialsInitialTargets\nlocal state=states and states[\"826_7899\"]\nreturn ((state~=nil and state.pending~=nil) or (not player.incombat and (not state or not state.done))) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Thunder God arena and initial target",
						uuid = "78284118-94e7-f7a7-8145-570456c5be1d",
						version = 3,
					},
				},
			},
			displayPath = "The Orbonne Monastery/The Thunder God/AutoSim",
			name = "The Thunder God select boss at encounter start",
			throttleTime = 500,
			uuid = "3b057be0-a64f-6199-a5cd-a6ce6cdeaf8a",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Orbonne Monastery",
			name = "Dark Crusader",
			uuid = "903ba36b-bd97-bdb2-8a71-14ce10b5f4bb",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Orbonne Monastery/Dark Crusader",
			name = "Draws",
			uuid = "9aed8553-7005-30b0-8f92-59c9d944057a",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal ms=math.floor(e.startTime+e.duration*1000-Now())\nif ms<=0 then return end\nlocal d=TensorCore.getStaticDrawer(0x703333FF,2)\nd:addTimedRect(ms,e.x,e.y,e.z,e.aoeLength,e.aoeWidth,e.heading,0,false,true)\n",
						conditions = 
						{
							
							{
								"cc2ac63d-2077-bd47-948a-ac751d530177",
								true,
							},
						},
						name = "Draw Infernal Wave line",
						uuid = "76aa68bd-c4b4-0779-96b5-7b6d3823fc6c",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=826 or not p.pos then return false end\nlocal e=eventArgs\nif not e or e.friendly or e.aoeID~=14209 then return false end\nreturn ((e.x+625)^2+(e.z+431)^2<=10000) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Infernal Wave in this arena",
						uuid = "cc2ac63d-2077-bd47-948a-ac751d530177",
						version = 3,
					},
				},
			},
			displayPath = "The Orbonne Monastery/Dark Crusader/Draws",
			eventType = 18,
			name = "[Orbonne Monastery] Dark Crusader Infernal Wave",
			uuid = "a758f1c1-4c4d-602b-942f-c775490184a5",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Orbonne Monastery/Dark Crusader",
			name = "AutoSim",
			uuid = "1db56752-1a8c-10af-bbc2-365cae6449ff",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal api=TensorCore.API.TensorACR\nlocal ok,now=pcall(api.getAutoSimTime)\nif not ok or type(now)~=\"number\" or now<0 or now>60 then return end\ndata.orbSim=data.orbSim or {}\nif data.orbSim.darkCrusader then return end\ndata.orbSim.darkCrusader=true\nlocal o=now-26.2\napi.setAutoSimKillTime(103.3+o)\nfor _,t in ipairs({\"FullDowntime\",\"Stun\"}) do api.clearAutoSimPhases(t) end\napi.clearAutoSimUncertainty()\napi.addAutoSimUncertainty(0,10)\n",
						conditions = 
						{
							
							{
								"81ccdbd4-0277-2fc2-99c5-4073a279aef8",
								true,
							},
						},
						name = "Dark Crusader forecast",
						uuid = "3a12485b-b032-9b0a-8527-80c95d9ca00d",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=826 or not p.pos or not p.incombat then return false end\nlocal e=eventArgs\nif not e then return false end\nreturn (e.entityContentID==7950 and e.spellID==14207 and (p.pos.x+625)^2+(p.pos.z+431)^2<=6400) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Dark Crusader opening cast",
						uuid = "81ccdbd4-0277-2fc2-99c5-4073a279aef8",
						version = 3,
					},
				},
			},
			displayPath = "The Orbonne Monastery/Dark Crusader/AutoSim",
			eventType = 3,
			name = "[Orbonne Monastery AutoSim] Dark Crusader",
			uuid = "9a1ed89c-8693-af7f-acdd-14baf54ab69d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player=TensorCore.mGetPlayer()\nif not player or player.localmapid~=826 or not player.pos then self.used=true; return end\ndata.trialsInitialTargets=data.trialsInitialTargets or {}\nlocal states=data.trialsInitialTargets\nlocal state=states[\"826_7950\"] or {}\nstates[\"826_7950\"]=state\nlocal current=TensorCore.mGetTarget()\nlocal label=\"[Orbonne targeting] Dark Crusader\"\nif state.pending then\n    if current and current.id==state.pending then\n        d(label..\" confirmed target=\"..tostring(current.id))\n        state.pending=nil\n    elseif Now()-state.requestedAt>=1500 then\n        d(label..\" request not confirmed; intended=\"..tostring(state.pending)..\" current=\"..tostring(current and current.id))\n        state.pending=nil\n    end\n    self.used=true\n    return\nend\nif player.incombat or state.done then self.used=true; return end\nlocal boss,nearest=nil,45*45\nfor _,candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\",{contentid=7950}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx=candidate.pos.x-player.pos.x\n        local dy=candidate.pos.y-player.pos.y\n        local dz=candidate.pos.z-player.pos.z\n        local distance=dx*dx+dy*dy+dz*dz\n        if distance<=nearest then\n            boss,nearest=candidate,distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label..\" waiting for an attackable boss within 45 yalms; current=\"..tostring(current and current.id))\n        state.waitLogged=true\n    end\n    self.used=true\n    return\nend\nstate.done=true\nif current and current.alive and current.targetable and current.attackable then\n    d(label..\" kept existing target; intended=\"..tostring(boss.id)..\" current=\"..tostring(current.id))\nelse\n    state.pending=boss.id\n    state.requestedAt=Now()\n    d(label..\" target request; intended=\"..tostring(boss.id)..\" current=\"..tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used=true",
						conditions = 
						{
							
							{
								"b71c4400-f4ea-e914-bf30-1a4d097b23d4",
								true,
							},
						},
						name = "Select Dark Crusader once",
						uuid = "e2128e26-b960-1bc2-8045-bdbe18dc453f",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player=TensorCore.mGetPlayer()\nif not player or player.localmapid~=826 or not player.pos then return false end\nif (player.pos.x+625)^2+(player.pos.z+431)^2>6400 then return false end\nlocal states=data.trialsInitialTargets\nlocal state=states and states[\"826_7950\"]\nreturn ((state~=nil and state.pending~=nil) or (not player.incombat and (not state or not state.done))) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Dark Crusader arena and initial target",
						uuid = "b71c4400-f4ea-e914-bf30-1a4d097b23d4",
						version = 3,
					},
				},
			},
			displayPath = "The Orbonne Monastery/Dark Crusader/AutoSim",
			name = "Dark Crusader select boss at encounter start",
			throttleTime = 500,
			uuid = "31c43606-eaf4-f8a1-bd14-bf1d32d3090b",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Orbonne Monastery",
			name = "Ultima, the High Seraph",
			uuid = "1b5c4e39-98c1-2582-98c6-da6be9d77686",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Orbonne Monastery/Ultima, the High Seraph",
			name = "Draws",
			uuid = "dc8746da-4563-459a-84d4-b7cada7f9fd4",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal ms=math.floor(e.startTime+e.duration*1000-Now())\nif ms<=0 then return end\nlocal d=TensorCore.getStaticDrawer(0x703333FF,2)\nlocal a=e.aoeID\nif a==14510 then\n local h=e.heading or 0\n local L=e.aoeLength\n for k=0,1 do\n  local hh=h+k*1.5707963\n  d:addTimedRect(ms,e.x-L*math.sin(hh),e.y,e.z-L*math.cos(hh),L*2,e.aoeWidth,hh,0,false,true)\n end\nelseif a==14487 or a==14504 or a==14505 or a==14555 then\n d:addTimedRect(ms,e.x,e.y,e.z,e.aoeLength,e.aoeWidth,e.heading,0,false,true)\nelse\n d:addTimedCircle(ms,e.x,e.y,e.z,e.aoeLength,0,false,true)\nend\n",
						conditions = 
						{
							
							{
								"d6785f3d-3631-0402-b9c8-d0d24d6ff3d7",
								true,
							},
						},
						name = "Draw Ultima circles, lines and crosses",
						uuid = "2167ce1e-5f3d-b293-be3d-c79abd58ae78",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=826 or not p.pos then return false end\nlocal e=eventArgs\nif not e or e.friendly then return false end\nlocal a=e.aoeID\nlocal ok=(a==14490 or a==14491 or a==14488 or a==14539 or a==14549 or a==15480 or a==14515 or a==14514 or a==14513 or a==14526 or a==14521 or a==14487 or a==14504 or a==14505 or a==14555 or a==14510)\nif not ok then return false end\nreturn ((e.x-600)^2+(e.z+600)^2<=8100) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Ultima hazard in this arena",
						uuid = "d6785f3d-3631-0402-b9c8-d0d24d6ff3d7",
						version = 3,
					},
				},
			},
			displayPath = "The Orbonne Monastery/Ultima, the High Seraph/Draws",
			eventType = 18,
			name = "[Orbonne Monastery] Ultima hazard draws",
			uuid = "5074971d-ebbe-e54e-ab1e-4f598e1b7ed6",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\n-- Edge Dominions are pushed 10 east (14494) or west (14503) by the March, then each fires a 60 long line (Ray of Light).\nlocal shift=(e.spellID==14494) and 10 or -10\nlocal list=TensorCore.getEntityGroupList('ContentID',{contentid=7664})\nif not list then return end\nlocal d=TensorCore.getStaticDrawer(0x703333FF,2)\nfor _,ent in pairs(list) do\n local pos=ent and ent.pos\n if pos and ent.visible ~= false and math.abs(pos.z+600)>=28 and math.abs(pos.x-600)<=40 then\n  d:addTimedRect(3900,pos.x+shift,pos.y,pos.z,60,10,pos.h or 0,0,false,true)\n end\nend",
						conditions = 
						{
							
							{
								"f6852fd5-cc91-b33c-ab6e-1410f4e2159b",
								true,
							},
						},
						name = "Draw Ray of Light lanes after the March shift",
						uuid = "ea86b76e-0cd7-f8a2-bd95-46421e84cb71",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=826 then return false end\nlocal e=eventArgs\nif not e or e.entityContentID~=7909 then return false end\nreturn (e.spellID==14494 or e.spellID==14503) and true or false",
						dequeueIfLuaFalse = true,
						name = "Ultima March cast in Orbonne",
						uuid = "f6852fd5-cc91-b33c-ab6e-1410f4e2159b",
						version = 3,
					},
				},
			},
			displayPath = "The Orbonne Monastery/Ultima, the High Seraph/Draws",
			eventType = 2,
			name = "[Orbonne Monastery] Ultima Ray of Light lanes after March",
			uuid = "ce902f92-c904-7f95-bdcd-6bd132ce939a",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Orbonne Monastery/Ultima, the High Seraph",
			name = "AutoSim",
			uuid = "4b610262-b164-3b03-84a2-2d9dc4e2a8c5",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal api=TensorCore.API.TensorACR\nlocal ok,now=pcall(api.getAutoSimTime)\nif not ok or type(now)~=\"number\" or now<0 or now>40 then return end\ndata.orbSim=data.orbSim or {}\nif data.orbSim.ultima then return end\ndata.orbSim.ultima=true\nlocal o=now-9.5\napi.setAutoSimKillTime(499.1+o)\nfor _,t in ipairs({\"FullDowntime\",\"Stun\"}) do api.clearAutoSimPhases(t) end\napi.clearAutoSimUncertainty()\napi.addAutoSimUncertainty(0,30)\napi.addAutoSimPhase(\"FullDowntime\",190+o,316.2+o,1)\n",
						conditions = 
						{
							
							{
								"31fc2939-1a05-8766-8284-c60b34b8848a",
								true,
							},
						},
						name = "Ultima forecast",
						uuid = "9670c90d-cdbd-858d-a932-8ef716f61975",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=826 or not p.pos or not p.incombat then return false end\nlocal e=eventArgs\nif not e then return false end\nreturn (e.entityContentID==7657 and e.spellID==14490 and (p.pos.x-600)^2+(p.pos.z+600)^2<=6400) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Ultima opening cast",
						uuid = "31fc2939-1a05-8766-8284-c60b34b8848a",
						version = 3,
					},
				},
			},
			displayPath = "The Orbonne Monastery/Ultima, the High Seraph/AutoSim",
			eventType = 3,
			name = "[Orbonne Monastery AutoSim] Ultima, the High Seraph",
			uuid = "39cc6d57-e4d0-b975-bb5f-281f28e18423",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player=TensorCore.mGetPlayer()\nif not player or player.localmapid~=826 or not player.pos then self.used=true; return end\ndata.trialsInitialTargets=data.trialsInitialTargets or {}\nlocal states=data.trialsInitialTargets\nlocal state=states[\"826_7657\"] or {}\nstates[\"826_7657\"]=state\nlocal current=TensorCore.mGetTarget()\nlocal label=\"[Orbonne targeting] Ultima\"\nif state.pending then\n    if current and current.id==state.pending then\n        d(label..\" confirmed target=\"..tostring(current.id))\n        state.pending=nil\n    elseif Now()-state.requestedAt>=1500 then\n        d(label..\" request not confirmed; intended=\"..tostring(state.pending)..\" current=\"..tostring(current and current.id))\n        state.pending=nil\n    end\n    self.used=true\n    return\nend\nif player.incombat or state.done then self.used=true; return end\nlocal boss,nearest=nil,60*60\nfor _,candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\",{contentid=7657}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable and candidate.pos then\n        local dx=candidate.pos.x-player.pos.x\n        local dy=candidate.pos.y-player.pos.y\n        local dz=candidate.pos.z-player.pos.z\n        local distance=dx*dx+dy*dy+dz*dz\n        if distance<=nearest then\n            boss,nearest=candidate,distance\n        end\n    end\nend\nif not boss then\n    if not state.waitLogged then\n        d(label..\" waiting for an attackable boss within 60 yalms; current=\"..tostring(current and current.id))\n        state.waitLogged=true\n    end\n    self.used=true\n    return\nend\nstate.done=true\nif current and current.alive and current.targetable and current.attackable then\n    d(label..\" kept existing target; intended=\"..tostring(boss.id)..\" current=\"..tostring(current.id))\nelse\n    state.pending=boss.id\n    state.requestedAt=Now()\n    d(label..\" target request; intended=\"..tostring(boss.id)..\" current=\"..tostring(current and current.id))\n    Player:SetTarget(boss.id)\nend\nself.used=true",
						conditions = 
						{
							
							{
								"4542bcfd-45df-b4a0-927b-effb9f46073e",
								true,
							},
						},
						name = "Select Ultima once",
						uuid = "394a5e10-c4ba-b316-87ec-2d01b334f8db",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player=TensorCore.mGetPlayer()\nif not player or player.localmapid~=826 or not player.pos then return false end\nif (player.pos.x-600)^2+(player.pos.z+600)^2>6400 then return false end\nlocal states=data.trialsInitialTargets\nlocal state=states and states[\"826_7657\"]\nreturn ((state~=nil and state.pending~=nil) or (not player.incombat and (not state or not state.done))) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Ultima arena and initial target",
						uuid = "4542bcfd-45df-b4a0-927b-effb9f46073e",
						version = 3,
					},
				},
			},
			displayPath = "The Orbonne Monastery/Ultima, the High Seraph/AutoSim",
			name = "Ultima select boss at encounter start",
			throttleTime = 500,
			uuid = "8a6cd8c3-36f5-1430-b4c3-b3bc02bcf6cf",
			version = 2,
		},
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
						alertPriority = 3,
						alertTTS = true,
						alertText = "Acceleration Bomb: stop moving and acting when it expires (9 s)",
						conditions = 
						{
							
							{
								"f7304c7c-634c-83d0-ae8f-2f96be767610",
								true,
							},
						},
						name = "Stop moving when the bomb expires",
						uuid = "f775c2a0-82d8-ee2d-89c5-a776b7e5ec21",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if data then\n    data.orbBombAt = Now()\n    data.orbBombStopped = nil\nend\nself.used = true",
						conditions = 
						{
							
							{
								"f7304c7c-634c-83d0-ae8f-2f96be767610",
								true,
							},
						},
						name = "Record bomb time",
						uuid = "9636d97f-dff0-48e9-83e1-0bc220a59172",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=826 then return false end\nlocal e=eventArgs\nif not e then return false end\nreturn (e.entityID==p.id and e.newActiveAura1==133 and e.oldActiveAura1~=133) and true or false",
						dequeueIfLuaFalse = true,
						name = "Bomb aura 133 on me in Orbonne",
						uuid = "f7304c7c-634c-83d0-ae8f-2f96be767610",
						version = 3,
					},
				},
			},
			displayPath = "The Orbonne Monastery/Ultima, the High Seraph",
			eventType = 25,
			name = "[Orbonne Monastery] Ultima Cataclysm Acceleration Bomb",
			uuid = "b0bef198-01ed-2211-8d8f-8711554e320b",
			version = 2,
		},
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
						alertPriority = 3,
						alertText = "Redemption landed on you",
						conditions = 
						{
							
							{
								"850215f0-596b-4caf-aa6f-f74d57143091",
								true,
							},
							
							{
								"49e645b0-709e-98f5-bb86-5131e9d9af65",
								true,
							},
						},
						name = "Redemption on me",
						uuid = "3f57a6eb-1c03-132f-b779-04761c9d25fa",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Alert",
						alertDuration = 3000,
						alertPriority = 2,
						alertText = "Redemption: heal the tank",
						conditions = 
						{
							
							{
								"850215f0-596b-4caf-aa6f-f74d57143091",
								true,
							},
							
							{
								"b2577372-36dc-9263-ad2c-9fd0a80fd169",
								true,
							},
						},
						name = "Redemption on the tank",
						uuid = "dc6e99fa-8a5f-e7df-9085-23205c69cb1f",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=826 then return false end\nlocal e=eventArgs\nif not e or e.entityContentID~=7909 or e.spellID~=14506 then return false end\nreturn (e.targetID==p.id) and true or false",
						name = "Redemption hit me",
						uuid = "49e645b0-709e-98f5-bb86-5131e9d9af65",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=826 then return false end\nlocal e=eventArgs\nif not e or e.entityContentID~=7909 or e.spellID~=14506 or e.targetID==p.id then return false end\nlocal j=p.job\nreturn (j==24 or j==28 or j==33 or j==40) and true or false",
						name = "Healer, Redemption on another player",
						uuid = "b2577372-36dc-9263-ad2c-9fd0a80fd169",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nlocal maps={[826]=true}\nreturn not not (p and maps[p.localmapid])",
						dequeueIfLuaFalse = true,
						name = "Duty map",
						uuid = "850215f0-596b-4caf-aa6f-f74d57143091",
						version = 3,
					},
				},
			},
			displayPath = "The Orbonne Monastery/Ultima, the High Seraph",
			eventType = 2,
			name = "[Orbonne Monastery] Ultima Redemption tank buster",
			uuid = "677de663-ee0e-d096-b4d7-a2cdaf7351f0",
			version = 2,
		},
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
								"1cd33dfc-0723-0b0f-b5d3-711b6ad757e9",
								true,
							},
						},
						name = "Stop - Hold Still",
						stopAllActions = true,
						stopMoving = true,
						uuid = "2e132fa8-7227-414c-a4d8-369030353f7a",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if data then data.orbBombStopped = true end\nself.used = true",
						conditions = 
						{
							
							{
								"1cd33dfc-0723-0b0f-b5d3-711b6ad757e9",
								true,
							},
						},
						name = "Mark Stopped",
						uuid = "1e2cbe08-7d1a-4e83-9d97-1e178ebadd9b",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not data or not data.orbBombAt or data.orbBombStopped then return false end\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=826 then return false end\nlocal t=Now()-data.orbBombAt\nreturn (t>=7900 and t<10500) and true or false",
						dequeueIfLuaFalse = true,
						name = "Bomb about to expire",
						uuid = "1cd33dfc-0723-0b0f-b5d3-711b6ad757e9",
						version = 3,
					},
				},
			},
			displayPath = "The Orbonne Monastery/Ultima, the High Seraph",
			name = "[Orbonne Monastery] Ultima Acceleration Bomb hold still",
			throttleTime = 100,
			timeout = 1,
			uuid = "5220fe7a-a60f-760f-b7f8-d0b3156e3608",
			version = 2,
		},
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
								"ae5a4c72-3e69-3828-a845-afb404f43905",
								true,
							},
							
							{
								"20fb445c-05f6-39fd-a590-8c2d75644fd5",
								true,
							},
						},
						name = "Resume - Bomb Resolved",
						resumeAllActions = true,
						uuid = "064f9edf-3fa9-7021-a913-b015a9163eb2",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if data then\n    data.orbBombAt = nil\n    data.orbBombStopped = nil\nend\nself.used = true",
						conditions = 
						{
							
							{
								"ae5a4c72-3e69-3828-a845-afb404f43905",
								true,
							},
						},
						name = "Clear bomb state",
						uuid = "5a8e3135-7f76-d2d4-901b-2f4003d0f285",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not data or not data.orbBombAt then return false end\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=826 then return true end\nreturn (Now()-data.orbBombAt>=9400) and true or false",
						dequeueIfLuaFalse = true,
						name = "Bomb resolved or stale",
						uuid = "ae5a4c72-3e69-3828-a845-afb404f43905",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return (data ~= nil and data.orbBombStopped == true) and true or false",
						name = "Bomb stop active",
						uuid = "20fb445c-05f6-39fd-a590-8c2d75644fd5",
						version = 3,
					},
				},
			},
			displayPath = "The Orbonne Monastery/Ultima, the High Seraph",
			name = "[Orbonne Monastery] Ultima Acceleration Bomb resume",
			throttleTime = 200,
			timeout = 1,
			uuid = "40ac6bd3-0844-195c-80c4-0e6b730cd0c6",
			version = 2,
		},
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
								"5d1c6008-24bb-90a4-b06c-338308961527",
								true,
							},
						},
						name = "Release bomb stop on wipe",
						resumeAllActions = true,
						uuid = "58e46c0a-bd56-4e71-94ea-1fe85ab858b5",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return (eventArgs ~= nil and eventArgs.oldData ~= nil and eventArgs.oldData.orbBombStopped == true) and true or false",
						dequeueIfLuaFalse = true,
						name = "Owned bomb stop",
						uuid = "5d1c6008-24bb-90a4-b06c-338308961527",
						version = 3,
					},
				},
			},
			displayPath = "The Orbonne Monastery/Ultima, the High Seraph",
			eventType = 9,
			name = "[Orbonne Monastery] Ultima Acceleration Bomb wipe cleanup",
			timeout = 2,
			uuid = "b3a93f8b-2a2b-7e82-bbd4-52ac58cb7a6f",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player then self.used = true; return end\n\nlocal contentID = 8133\nlocal label = \"[Orbonne] Halidom\"\nlocal api = TensorCore.API.TensorACR\nlocal j = player.job\nlocal eligible = player.localmapid == 826 and (j == 23 or j == 25 or j == 34)\nlocal state = AllianceOrbonneHalidomDoT\n\n-- Restore the previous entry on leaving Orbonne Monastery or changing jobs.\nif state and (not eligible or state.job ~= j) then\n    local entry = state.entry\n    if entry.enabled and entry.allowIfTarget == false and entry.allowSmartDoT == false then\n        if state.created then\n            entry.enabled = false\n            if j == state.job and api.getBlacklistEntry(contentID) then\n                local current = api.addBlacklistEntry(contentID)\n                if current == entry and current.name == label then\n                    api.deleteBlacklistEntry(contentID)\n                end\n            end\n        else\n            entry.enabled = state.enabled\n            entry.allowIfTarget = state.allowIfTarget\n            entry.allowSmartDoT = state.allowSmartDoT\n        end\n    end\n    AllianceOrbonneHalidomDoT = nil\n    state = nil\nend\n\nif eligible and not state then\n    local supported, exists = pcall(api.getBlacklistEntry, contentID)\n    if supported then\n        local ok, entry = pcall(api.addBlacklistEntry, contentID, label)\n        if ok and entry then\n            AllianceOrbonneHalidomDoT = {\n                job = j, entry = entry, created = not exists,\n                enabled = entry.enabled, allowIfTarget = entry.allowIfTarget,\n                allowSmartDoT = entry.allowSmartDoT,\n            }\n            entry.enabled = true\n            entry.allowIfTarget = false\n            entry.allowSmartDoT = false\n        end\n    end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"2f444e1e-67cd-7507-b642-9ed7914f607a",
								true,
							},
						},
						name = "Block short-lived add DoTs",
						uuid = "f0601d92-7313-098e-82d6-a941f84e7d17",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player then return false end\nlocal state = AllianceOrbonneHalidomDoT\nlocal j = player.job\nlocal eligible = player.localmapid == 826 and (j == 23 or j == 25 or j == 34)\nif state then\n    return not eligible or j ~= state.job\nend\nreturn not not eligible",
						dequeueIfLuaFalse = true,
						name = "Duty and job / owned cleanup",
						uuid = "2f444e1e-67cd-7507-b642-9ed7914f607a",
						version = 3,
					},
				},
			},
			displayPath = "The Orbonne Monastery",
			name = "Halidom DoT blacklist (BRD/BLM/SAM)",
			throttleTime = 500,
			timeout = 0.5,
			uuid = "2bd43c5a-d29f-f92b-b061-d3aca684f35c",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "The Copied Factory",
			uuid = "0b9b2515-d039-4f91-b27f-80a1976b730a",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Copied Factory",
			name = "Draws",
			uuid = "67687f08-72b4-3d96-98f5-167a39b855b9",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local e=eventArgs\nlocal id=e.spellID\nlocal ms=math.floor(e.channelTimeMax*1000)\nif ms<=0 then return end\nlocal labels={[18260]=\"Spread\",[18261]=\"Raidwide\",[18437]=\"Raidwide\",[18453]=\"Spread\",[18627]=\"Knockback\",[18638]=\"Tankbuster\",[18639]=\"Raidwide\",[18672]=\"Tankbuster\",[18675]=\"Stack\",[18677]=\"Tankbuster\",[18678]=\"Raidwide\",[18681]=\"Spread\",[18753]=\"Raidwide\"}\nlocal label=labels[id]\nlocal targeted=label==\"Stack\" or label==\"Spread\" or label==\"Tankbuster\"\nlocal actor=TensorCore.mGetEntity(targeted and e.targetID or e.entityID)\nif actor then\n local color=label==\"Stack\" and 0xFF66FF66 or 0xFFFFFFFF\n AnyoneCore.addTimedWorldTextOnEnt(ms,label,actor.id,color,true,1.2,2)\n if label==\"Spread\" or label==\"Stack\" then\n  TensorCore.getStaticDrawer(label==\"Stack\" and 0x5033FF33 or 0x503333FF,2):addTimedCircleOnEnt(ms,actor.id,id==18453 and 8 or 6,0,false,true)\n end\nend\nself.used=true",
						conditions = 
						{
							
							{
								"7325057c-d7a2-9910-b06b-3b89a46aa216",
								true,
							},
						},
						name = "Mark cast recipients",
						uuid = "d239b78d-bf52-39c6-8ca7-900e67f7dfec",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=882 then return false end\nlocal id=eventArgs.spellID\nlocal caster=eventArgs.entityContentID\nreturn (caster==9140 and (id==18753))\n or (caster==9141 and (id==18638 or id==18639 or id==18627))\n or (caster==9143 and (id==18437 or id==18453))\n or (caster==9147 and (id==18260 or id==18261))\n or (caster==9153 and (id==18678 or id==18681 or id==18677 or id==18675))\n or (caster==9155 and (id==18672))",
						dequeueIfLuaFalse = true,
						name = "Copied Factory mechanic cast",
						uuid = "7325057c-d7a2-9910-b06b-3b89a46aa216",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 3,
			name = "Copied Factory - raidwides, tankbusters, spreads, stack and Shockwave",
			uuid = "9de810a3-a557-5f0a-8eaa-6509a18d4dec",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\n-- Energy Bomb orbs: untargetable 'Serial-jointed Service Model' (9142) with model 11365; radius 1.8\nlocal d\nfor id,orb in pairs(EntityList(\"contentid=9142\") or {}) do\n local p=orb.pos\n if p and Argus.getEntityModel(id)==11365 and Argus.isEntityVisible(id) then\n  d=d or TensorCore.getStaticDrawer(0x703333FF,2)\n  d:addCircle(p.x,p.y,p.z,1.8)\n end\nend\n",
						conditions = 
						{
							
							{
								"ad7ef3bb-a764-caa5-8239-d67769215d53",
								true,
							},
						},
						name = "Red circle around each visible orb",
						uuid = "0937ffc4-c3af-f84b-9810-c88f0a616753",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=882 or not p.pos then return false end\nreturn (p.pos.x+500)^2+p.pos.z^2<=60^2 and math.abs(p.pos.y-401)<10\n",
						dequeueIfLuaFalse = true,
						name = "Serial-jointed Command Model arena",
						uuid = "ad7ef3bb-a764-caa5-8239-d67769215d53",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 12,
			name = "[Copied Factory] Serial-jointed Energy Bomb orb circles",
			uuid = "a568d7e7-4bb3-1e68-ad92-aea6385fe92f",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nif not eventArgs then return end\n-- 5s cast, then 5 cone hits about 1.1s apart ending ~11.5s after the cast starts\ndata.cfAssault={id=eventArgs.entityID,hits=0,fin=Now()+13000}\n",
						conditions = 
						{
							
							{
								"1b604462-cbaa-08ed-84af-a5676d87d5c8",
								true,
							},
						},
						name = "Remember the caster",
						uuid = "e78035cb-2ee2-81d6-bd09-df32462aecef",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local e=eventArgs\nif not e or e.spellID~=18613 or e.entityContentID~=9141 then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==882) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Energy Assault cast",
						uuid = "1b604462-cbaa-08ed-84af-a5676d87d5c8",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 3,
			name = "[Copied Factory] Energy Assault record",
			uuid = "1b0292b4-3299-5e52-9494-dbea250aac51",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal s=data.cfAssault\nif not s then return end\nif Now()>=s.fin then data.cfAssault=nil return end\nlocal b=TensorCore.mGetEntity(s.id)\n-- the boss turns at the start of the cast: follow its facing while casting, then keep it\nif b and b.pos and (s.h==nil or (b.castinginfo and b.castinginfo.channelingid==18613)) then\n s.x,s.y,s.z,s.h=b.pos.x,b.pos.y,b.pos.z,b.pos.h\nend\nif not s.h then return end\n-- BossMod A11: range 30, 90 degree cone\nTensorCore.getStaticDrawer(0x703333FF,2):addCone(s.x,s.y,s.z,30,math.pi/2,s.h)\n",
						conditions = 
						{
							
							{
								"3f590443-c901-e82f-9858-9506988f215c",
								true,
							},
						},
						name = "Draw the 90 degree cone",
						uuid = "9b86c9e5-c00e-079d-8fce-15c599295982",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not data.cfAssault then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==882) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Energy Assault pending",
						uuid = "3f590443-c901-e82f-9858-9506988f215c",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 12,
			name = "[Copied Factory] Energy Assault cone (red)",
			uuid = "82a03458-7b64-1ea1-a206-47b46530b350",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal s=data.cfAssault\nif not s then return end\nlocal h=TensorCore.mGetEntity(eventArgs.entityID)\nif h and h.pos then s.x,s.y,s.z,s.h=h.pos.x,h.pos.y,h.pos.z,h.pos.h end\ns.hits=s.hits+1\nif s.hits>=5 then data.cfAssault=nil end\n",
						conditions = 
						{
							
							{
								"c982281c-c32c-6f5d-81c8-4933cea81f15",
								true,
							},
						},
						name = "Use the hit heading; clear after the fifth",
						uuid = "eb9c39f6-2684-08aa-bd85-4f4651e5718f",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not eventArgs or eventArgs.spellID~=18614 then return false end\nreturn data.cfAssault~=nil\n",
						dequeueIfLuaFalse = true,
						name = "Energy Assault hit",
						uuid = "c982281c-c32c-6f5d-81c8-4933cea81f15",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 2,
			name = "[Copied Factory] Energy Assault hits",
			uuid = "6f32925e-f97b-a18a-8fec-825c3dd219e4",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\n-- only the aiming turrets get the lock-on VFX 787; the orb-dropping turrets share their model but never get it\nlocal s=data.cfLaser\nif not s or Now()>=s.fin then s={fin=Now()+8500,fired={},aim={}} data.cfLaser=s end\ns.aim[eventArgs.primaryEntityID]=true\n",
						conditions = 
						{
							
							{
								"b01d14cd-1ed7-90ad-9e72-fa8075d390d4",
								true,
							},
						},
						name = "Remember the aiming turret",
						uuid = "5f4a60cf-1e07-b0ce-8109-afe6f91d7be0",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not eventArgs or eventArgs.vfxID~=787 or eventArgs.primaryEntityContentID~=9142 then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==882) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Turret lock-on effect",
						uuid = "b01d14cd-1ed7-90ad-9e72-fa8075d390d4",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 27,
			name = "[Copied Factory] High-powered Laser lock-on record",
			uuid = "a822eef1-b405-688a-88d8-2c0560c52e43",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal s=data.cfLaser\nif not s or not s.aim then return end\nif Now()>=s.fin then data.cfLaser=nil return end\n-- aiming turrets turn to follow their player, so their live facing is drawn\n-- 4 wide (BossMod A11), 70 long (action range); a turret's line ends when it fires\nlocal d\nfor id,t in pairs(EntityList(\"contentid=9142\") or {}) do\n local p=t.pos\n if p and s.aim[id] and not s.fired[id] then\n  d=d or TensorCore.getStaticDrawer(0x503333FF,2)\n  d:addRect(p.x,p.y,p.z,70,4,p.h)\n end\nend\n",
						conditions = 
						{
							
							{
								"73ac56dc-d6c2-5ee4-874d-8dc3f9fb0c29",
								true,
							},
						},
						name = "Line along each turret's current facing",
						uuid = "ce18ee33-c6b3-5eb8-bc7d-ac3a4f230c6a",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not data.cfLaser then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==882) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Laser window open",
						uuid = "73ac56dc-d6c2-5ee4-874d-8dc3f9fb0c29",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 12,
			name = "[Copied Factory] High-powered Laser turret lines (red)",
			uuid = "c6ba9c94-c0f5-4070-880c-37e0792f3f98",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal s=data.cfLaser\nif s then s.fired[eventArgs.entityID]=true end\n",
						conditions = 
						{
							
							{
								"34db89d2-2a22-19e1-a388-26b66675c374",
								true,
							},
						},
						name = "Remove that turret's line",
						uuid = "83325c90-1a87-166e-87b5-45eb21559762",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not eventArgs or eventArgs.spellID~=18629 then return false end\nreturn data.cfLaser~=nil\n",
						dequeueIfLuaFalse = true,
						name = "Turret fired",
						uuid = "34db89d2-2a22-19e1-a388-26b66675c374",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 2,
			name = "[Copied Factory] High-powered Laser fired",
			uuid = "66481cc2-c9f2-6801-bb76-2385e9e55d98",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif not e or not e.pos then return end\nlocal s=data.cfAir\nif not s then s={starts=0,list={}} data.cfAir=s end\ns.starts=s.starts+1\n-- pattern from BossMod A11 AirToSurfaceEnergy (all 192 hits of log 11-25 15-53 matched)\nlocal OUT={{10,-4.6},{10,-7.8},{9.1,-10},{5.9,-10},{2.7,-10},{-0.5,-10},{-3.7,-10},{-7,-10},{-10,-10},{-10,-6.8},{-10,-3.6},{-10,-0.4},{-10,2.8},{-10,6},{-10,9.2}}\nlocal IN={{2.4,4},{4,2.5},{4,-0.7},{4,-3.9},{1.2,-4},{-2,-4},{-4,-2.9},{-4,0.3},{-4,3.5},{-1.4,4},{1.7,4},{4,3.2},{4,0},{4,-3.2},{1.9,-4}}\nlocal x,z=e.pos.x,e.pos.z\nlocal cx=x>-500 and -488 or -512\nlocal cz=z>0 and 12 or -12\nlocal dx,dz=x-cx,z-cz\nlocal close=math.abs(dx)<=8 and math.abs(dz)<=8\nlocal a=math.deg(math.atan2(dx,dz))\nlocal r\nif a>90 then r={-90,90} elseif a>0 then r={180,0} elseif a>-90 then r={90,-90} else r={0,180} end\nlocal rot=math.rad(close and r[1] or r[2])\nlocal base=close and IN or OUT\n-- first set of eight turrets drops 10 circles each, the second 14 (log 11-25 15-53).\n-- The second set is also recognised by its turret spots, so joining a replay midway does not cut it short\nlocal second=s.starts>8\nfor _,q in ipairs({{-516,8},{-492,-8},{-498,22},{-508,-8},{-484,8},{-502,22},{-522,-22},{-478,-22}}) do\n if math.abs(x-q[1])<1 and math.abs(z-q[2])<1 then second=true break end\nend\nlocal count=second and 14 or 10\nlocal now=Now()\nfor i=1,count do\n local px,pz=base[i][1],base[i][2]\n s.list[#s.list+1]={t=now+12200+1100*(i-1)-100,x=cx+px*math.cos(rot)+pz*math.sin(rot),z=cz+pz*math.cos(rot)-px*math.sin(rot)}\nend\n",
						conditions = 
						{
							
							{
								"28ff16b1-d222-acb3-8d80-cf4684b79748",
								true,
							},
						},
						name = "Queue this turret's circles",
						uuid = "d3042dd6-5af6-4daa-b4cd-d93a3bbf4fe3",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not eventArgs or eventArgs.spellID~=19250 then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==882) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Turret appears",
						uuid = "28ff16b1-d222-acb3-8d80-cf4684b79748",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 2,
			name = "[Copied Factory] Air-to-surface Energy predict",
			uuid = "9babd730-9846-60bb-a5af-1ccd33f08e6d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal s=data.cfAir\nif not s then return end\nlocal now=Now()\nlocal keep,first={},nil\nfor _,c in ipairs(s.list) do\n if now<c.t+150 then\n  keep[#keep+1]=c\n  if not first or c.t<first then first=c.t end\n end\nend\ns.list=keep\nif not first then return end\nlocal second\nfor _,c in ipairs(keep) do if c.t>first+500 and (not second or c.t<second) then second=c.t end end\nlocal red=TensorCore.getStaticDrawer(0x703333FF,2)\nlocal yellow=TensorCore.getStaticDrawer(0x3800DDFF,1)\nfor _,c in ipairs(keep) do\n if second and c.t>=second and c.t<second+500 then yellow:addCircle(c.x,401,c.z,5) end\nend\nfor _,c in ipairs(keep) do\n if c.t<first+500 then red:addCircle(c.x,401,c.z,5) end\nend\n",
						conditions = 
						{
							
							{
								"91aafb5a-629e-e891-ac7b-4e988836e8a8",
								true,
							},
						},
						name = "Draw this wave and the next",
						uuid = "8c9e06a9-624e-a950-a46a-497b411857b1",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not data.cfAir then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==882) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Circles pending",
						uuid = "91aafb5a-629e-e891-ac7b-4e988836e8a8",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 12,
			name = "[Copied Factory] Air-to-surface Energy circles (red now, yellow next)",
			uuid = "afbe119e-c6c4-62e0-8b90-d97eb5d138f3",
			version = 2,
		},
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
								"4e96c298-d063-e406-aafe-a6c26c8ba32c",
								true,
							},
							
							{
								"e9fa7a57-7b12-cc65-8a46-ce885aac40d7",
								true,
							},
							
							{
								"b765be72-6f39-5271-b5d7-eb697b059dcb",
								true,
							},
							
							{
								"0186777d-ac09-d5f8-9aeb-67d7d009eae3",
								true,
							},
						},
						gVar = "ACR_RikuSCH3_Hotbar_Surecast",
						name = "Request Surecast",
						uuid = "8c14a636-cdb7-8dd5-befe-b8d3121d6eab",
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
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 882,
						name = "Copied Factory only",
						uuid = "4e96c298-d063-e406-aafe-a6c26c8ba32c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local e=eventArgs\nreturn (e~=nil and e.spellID==18627 and e.entityContentID==9141) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Serial-jointed Shockwave",
						uuid = "e9fa7a57-7b12-cc65-8a46-ce885aac40d7",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not self.deadline then self.deadline=Now()+eventArgs.channelTimeMax*1000 end\nlocal remaining=self.deadline-Now()\nif remaining>3000 or remaining<1000 then return false end\nlocal caster=TensorCore.mGetEntity(eventArgs.entityID)\nreturn (caster~=nil and caster.castinginfo.channelingid==eventArgs.spellID) and true or false\n",
						name = "Request with 3 to 1 seconds remaining",
						uuid = "b765be72-6f39-5271-b5d7-eb697b059dcb",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 14,
						dequeueIfLuaFalse = true,
						jobIDList = 
						{
							25,
							27,
							35,
							42,
							24,
							28,
							33,
							40,
						},
						name = "Caster or healer",
						uuid = "0186777d-ac09-d5f8-9aeb-67d7d009eae3",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 3,
			name = "[Copied Factory] Serial-jointed Shockwave knockback immunity",
			timeout = 10,
			uuid = "60bdc7e5-f57b-010b-ae4a-2ad18d833d99",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal B=MoogleTelegraphs and MoogleTelegraphs.Settings and MoogleTelegraphs.Settings.aoeIDUserBlacklist\nif not B then return end\nlocal SOURCE=\"Ultimate Reactions Pack (Alliance Raid)\"\nfor _,id in ipairs({18620,18622,18624,18626}) do\n local e=B[id]\n if not e or e.source~=SOURCE then B[id]={label=\"Energy Ring\",source=SOURCE} end\nend\n",
						conditions = 
						{
							
							{
								"d48e32d3-d2a8-87f9-9270-95523f763523",
								true,
							},
						},
						name = "Apply Copied Factory blacklist",
						uuid = "39e19d98-bd80-8427-9347-e68c9762fd87",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=882 then return false end\nlocal B=MoogleTelegraphs and MoogleTelegraphs.Settings and MoogleTelegraphs.Settings.aoeIDUserBlacklist\nif not B then return false end\nfor _,id in ipairs({18620,18622,18624,18626}) do\n local e=B[id]\n if not e or e.source~=\"Ultimate Reactions Pack (Alliance Raid)\" then return true end\nend\nreturn false\n",
						dequeueIfLuaFalse = true,
						name = "Blacklist needs update",
						uuid = "d48e32d3-d2a8-87f9-9270-95523f763523",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			name = "[Copied Factory] Moogle Telegraphs blacklist",
			throttleTime = 5000,
			uuid = "22f19c89-587a-4349-9cb8-f273974f17a0",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal c=TensorCore.mGetEntity(eventArgs.entityID)\nif not c or not c.pos then return end\n-- four rings resolve 2s apart, the first at the end of this cast (about 4.7s)\ndata.cfRing={x=c.pos.x,y=c.pos.y,z=c.pos.z,ring=1,fin=Now()+13000}\n",
						conditions = 
						{
							
							{
								"500caf75-ea82-9576-8d8e-8ec32dd93674",
								true,
							},
						},
						name = "Remember the centre",
						uuid = "d95f98d0-7be2-5981-991e-d1e8bb147390",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local e=eventArgs\nif not e or e.spellID~=18620 then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==882) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "First ring cast",
						uuid = "500caf75-ea82-9576-8d8e-8ec32dd93674",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 3,
			name = "[Copied Factory] Energy Ring record",
			uuid = "ea90838e-2bec-8e84-b19f-051b687e5719",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal s=data.cfRing\nif not s then return end\nif Now()>=s.fin or s.ring>4 then data.cfRing=nil return end\n-- BossMod A11: circle 12, then donuts 12-24, 24-36, 36-48\nlocal function draw(d,i)\n if i==1 then d:addCircle(s.x,s.y,s.z,12) else d:addDonut(s.x,s.y,s.z,12*(i-1),12*i) end\nend\ndraw(TensorCore.getStaticDrawer(0x703333FF,2),s.ring)\nif s.ring<4 then draw(TensorCore.getStaticDrawer(0x3000DDFF,1),s.ring+1) end\n",
						conditions = 
						{
							
							{
								"99f1f54b-d28a-54ba-b4d2-04e595436370",
								true,
							},
						},
						name = "Draw the current and next ring",
						uuid = "7d48e386-11fe-391c-9575-3d0644a75897",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not data.cfRing then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==882) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Rings pending",
						uuid = "99f1f54b-d28a-54ba-b4d2-04e595436370",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 12,
			name = "[Copied Factory] Energy Ring draw (red now, yellow next)",
			uuid = "1981e7aa-2c14-dbfa-9414-e954c6d37913",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal s=data.cfRing\nif not s then return end\nlocal nextRing=({[18620]=2,[18622]=3,[18624]=4,[18626]=5})[eventArgs.spellID]\nif nextRing and nextRing>s.ring then s.ring=nextRing end\n",
						conditions = 
						{
							
							{
								"8449c5f0-eef2-65ed-b8cd-3121a2eeecb0",
								true,
							},
						},
						name = "Move to the next ring",
						uuid = "cf7ad8fd-099f-2ef4-86a9-bce6baeec5da",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local e=eventArgs\nif not e or not data.cfRing then return false end\nreturn (e.spellID==18620 or e.spellID==18622 or e.spellID==18624 or e.spellID==18626) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Ring hit",
						uuid = "8449c5f0-eef2-65ed-b8cd-3121a2eeecb0",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 2,
			name = "[Copied Factory] Energy Ring advance",
			uuid = "dcfe5e1c-2012-c05e-959d-fb0ead799def",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal S=_G.CF_AllianceSettings\nif not S then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n S={values={},folder=folder,path=folder..'AllianceRaid-CopiedFactory.lua'}\n local existed=FileExists(S.path)\n if existed then\n  local ok,t=pcall(FileLoad,S.path)\n  if ok and type(t)=='table' then S.values=t end\n end\n if type(S.values.airSafe)~='boolean' then\n  S.values.airSafe=false\n  pcall(function()\n   if not FolderExists(S.folder) then FolderCreate(S.folder) end\n   FileSave(S.path,S.values)\n  end)\n end\n _G.CF_AllianceSettings=S\nend\nlocal v=S.values\nlocal visible=GUI:Begin(\"[Copied Factory] Settings\",true,GUI.WindowFlags_AlwaysAutoResize)\nif visible then\n local new=GUI:Checkbox(\"Airdrops: green safe area##CFAirSafe\",v.airSafe)\n if GUI:IsItemHovered() then\n  GUI:SetTooltip(\"During Air-to-surface Energy, colours the arena green except the circles landing now and next. The red and yellow circles stay. Off by default.\")\n end\n if new~=v.airSafe then\n  v.airSafe=new\n  pcall(function()\n   if not FolderExists(S.folder) then FolderCreate(S.folder) end\n   FileSave(S.path,v)\n  end)\n end\nend\nGUI:End()",
						conditions = 
						{
							
							{
								"b708e104-3263-2a92-8c79-294c76b6a299",
								true,
							},
						},
						name = "Settings window",
						uuid = "cc07ed25-5dec-74bb-819f-7a58780e9747",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn not not (p and p.localmapid==882)",
						dequeueIfLuaFalse = true,
						name = "In the Copied Factory",
						uuid = "b708e104-3263-2a92-8c79-294c76b6a299",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 13,
			name = "[Copied Factory] Settings",
			timeout = 1,
			uuid = "32f8c24e-143a-a0de-8e46-b5f440f09f72",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal s=data.cfAir\nif not s then return end\nlocal now=Now()\nlocal first,second\nfor _,c in ipairs(s.list) do\n if now<c.t+150 and (not first or c.t<first) then first=c.t end\nend\nif not first then return end\nfor _,c in ipairs(s.list) do\n if c.t>first+500 and (not second or c.t<second) then second=c.t end\nend\nlocal channel=Argus2.getNextUnusedChannel(true)\nif channel==1 then channel=Argus2.getNextUnusedChannel(true) end\nif not channel or channel<=1 then return end\nlocal flags=Argus2.RenderFlags\nlocal baseFlags=flags.FLAG_WARP_TERRAIN+flags.FLAG_OCCLUSION_BASE\nlocal maskFlags=flags.FLAG_WARP_TERRAIN+flags.FLAG_OCCLUDE\nlocal safe=TensorCore.getStaticDrawer(0x5000FF00,1,channel,baseFlags)\nlocal mask=TensorCore.getStaticDrawer(0xFFFFFFFF,0,channel,maskFlags)\n-- arena square centred -500,0, half width 24.5\nsafe:addRect(-500,401,-24.5,49,49,0,false,baseFlags)\n-- the wave landing now and the one after it (1.1 s apart)\nfor _,c in ipairs(s.list) do\n if now<c.t+150 and (c.t<first+500 or (second and c.t>=second and c.t<second+500)) then\n  mask:addCircle(c.x,401,c.z,5,false,maskFlags)\n end\nend\n-- other hazards that are out at the same time\nfor id,orb in pairs(EntityList(\"contentid=9142\") or {}) do\n local o=orb.pos\n if o and Argus.getEntityModel(id)==11365 and Argus.isEntityVisible(id) then\n  mask:addCircle(o.x,401,o.z,1.8,false,maskFlags)\n end\nend\nlocal function cut(a)\n if a.startTime+a.duration*1000<=now or (a.x+500)^2+a.z^2>2500 then return end\n local L,W,ct=a.aoeLength,a.aoeWidth,a.aoeCastType\n if ct==12 and L>0 and L<=70 and W>0 and W<=40 then\n  mask:addRect(a.x,401,a.z,L,W,a.heading,false,maskFlags)\n elseif (ct==2 or ct==5 or ct==7) and L>0 and L<=30 and a.aoeType~=27 then\n  mask:addCircle(a.x,401,a.z,L,false,maskFlags)\n end\nend\nfor _,a in pairs(Argus.getCurrentDirectionalAOEs() or {}) do cut(a) end\nfor _,a in pairs(Argus.getCurrentGroundAOEs() or {}) do cut(a) end",
						conditions = 
						{
							
							{
								"72e24977-7246-9000-8a60-8dd71075870d",
								true,
							},
						},
						name = "Green arena minus airdrops",
						uuid = "f4c35881-8354-349e-80ad-8d786cb0316b",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not data.cfAir then return false end\nlocal S=_G.CF_AllianceSettings\nif not S or S.values.airSafe~=true then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn not not (p and p.localmapid==882)",
						dequeueIfLuaFalse = true,
						name = "Airdrops active and option on",
						uuid = "72e24977-7246-9000-8a60-8dd71075870d",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 12,
			name = "[Copied Factory] Air-to-surface Energy safe area (green, optional)",
			timeout = 1,
			uuid = "d0e88988-f3e4-dc1f-85be-065b4ca9bc20",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\n-- Energy Bomb orbs from the trash flyers: 'Small Flyer' (9136) with model 11385.\n-- They burst on contact (hits logged 1.0 to 1.8 away); radius 1.8\nlocal d\nfor id,orb in pairs(EntityList(\"contentid=9136\") or {}) do\n local p=orb.pos\n if p and not (data.cfOrbDone and data.cfOrbDone[id]) and Argus.getEntityModel(id)==11385 and Argus.isEntityVisible(id) then\n  d=d or TensorCore.getStaticDrawer(0x703333FF,2)\n  d:addCircle(p.x,p.y,p.z,1.8)\n end\nend",
						conditions = 
						{
							
							{
								"13604ca4-c7ba-7951-a6d3-11e17d33fdc9",
								true,
							},
						},
						name = "Red ring on trash orbs",
						uuid = "595db992-4e5c-a179-a258-33eaff1b7ccb",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn not not (p and p.localmapid==882)",
						dequeueIfLuaFalse = true,
						name = "In the Copied Factory",
						uuid = "13604ca4-c7ba-7951-a6d3-11e17d33fdc9",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 12,
			name = "[Copied Factory] Small Flyer Energy Bomb orb circles",
			timeout = 1,
			uuid = "eafa1992-3cac-d7dc-acfc-c42ee8a023e2",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "-- the burst orb stays listed as visible, so stop drawing it\ndata.cfOrbDone=data.cfOrbDone or {}\ndata.cfOrbDone[eventArgs.entityID]=true\nself.used=true",
						conditions = 
						{
							
							{
								"8055eaf6-6d06-30de-b6d3-fc84a8117717",
								true,
							},
						},
						name = "Forget burst orb",
						uuid = "1d5939f5-e6c3-a6b7-aefd-957e4cde6465",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn not not (p and p.localmapid==882 and eventArgs.spellID==18717)",
						dequeueIfLuaFalse = true,
						name = "Orb burst",
						uuid = "8055eaf6-6d06-30de-b6d3-fc84a8117717",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 2,
			name = "[Copied Factory] Small Flyer Energy Bomb burst",
			timeout = 1,
			uuid = "d59ad57d-5f36-53e9-b30c-64da6ec23a68",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nlocal ms=math.floor(e.startTime+e.duration*1000-Now())\nif ms<=0 then return end\nlocal drawer=TensorCore.getStaticDrawer(0x603333FF,2)\nlocal id=e.aoeID\nif id==18885 or id==18447 then\n    -- the attack data has no usable heading when it points south, so read the caster\n    local c=TensorCore.mGetEntity(e.entityID)\n    if not c or not c.pos then return end\n    drawer:addTimedCone(ms,e.x,e.y,e.z,20,math.rad(60),c.pos.h,0,false,true)\nelseif id==18886 or id==18448 then\n    drawer:addTimedCircle(ms,e.x,e.y,e.z,2,0,false,true)\nelseif id==18450 then\n    -- Impact: 15 as BossMod draws it (the attack data says 20)\n    drawer:addTimedCircle(ms,e.x,e.y,e.z,15,0,false,true)\nelse\n    drawer:addTimedDonut(ms,e.x,e.y,e.z,7,19,0,false,true)\nend",
						conditions = 
						{
							
							{
								"1e92dcdb-47ac-9728-a20d-d3f3e63d2ffa",
								true,
							},
						},
						name = "Red cone, circle or donut",
						uuid = "39e83671-dbcb-0915-8885-c9755c7e785f",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=882 then return false end\nlocal id=eventArgs.aoeID\nreturn id==18885 or id==18886 or id==18887 or id==18447 or id==18448 or id==18449 or id==18450",
						dequeueIfLuaFalse = true,
						name = "Combat Test or Impact shape",
						uuid = "1e92dcdb-47ac-9728-a20d-d3f3e63d2ffa",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 18,
			name = "[Copied Factory] Hobbes Variable Combat Test and Impact draws",
			timeout = 1,
			uuid = "5a9bb292-6167-72f0-ab78-6a8e0b84d588",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\n-- pattern from BossMod A12 Towerfall; the lanes hit about 3 s after the rotation\nlocal c=TensorCore.mGetEntity(eventArgs.entityID)\nif not c or not c.pos then return end\nlocal offset=({[18709]=0,[18710]=67.5,[18711]=45,[18712]=22.5})[eventArgs.spellID]\nlocal drawer=TensorCore.getStaticDrawer(0x603333FF,2)\nfor i=0,3 do\n    drawer:addTimedRect(3000,c.pos.x,c.pos.y,c.pos.z,20,8,c.pos.h+math.rad(offset+90*i),0,false,true)\nend",
						conditions = 
						{
							
							{
								"174f9004-7d8c-9786-a65d-c5df8545e42c",
								true,
							},
						},
						name = "Four red lanes",
						uuid = "70825455-cb3f-2288-8348-2d244ebd8cc4",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=882 then return false end\nlocal id=eventArgs.spellID\nreturn id==18709 or id==18710 or id==18711 or id==18712",
						dequeueIfLuaFalse = true,
						name = "Impact rotation",
						uuid = "174f9004-7d8c-9786-a65d-c5df8545e42c",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 2,
			name = "[Copied Factory] Hobbes Towerfall lanes",
			timeout = 1,
			uuid = "95ceac91-bca1-b4ec-891e-ebecf7b18a62",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\ndata.cfFire=data.cfFire or {}\nif eventArgs.a2==4 then\n    data.cfFire[eventArgs.a1]=nil\nelse\n    data.cfFire[eventArgs.a1]={pattern=eventArgs.a2,at=Now()}\nend\nif next(data.cfFire)==nil then data.cfFire=nil end",
						conditions = 
						{
							
							{
								"8fd126cb-8589-80f5-b1ad-bb7413814897",
								true,
							},
						},
						name = "Remember pattern",
						uuid = "289d101b-bd52-212c-9df8-75b6c73a7d85",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=882 or not p.pos or (p.pos.x+805)^2+(p.pos.z+240)^2>70^2 then return false end\nlocal i,s=eventArgs.a1,eventArgs.a2\nreturn (i==7 or i==9 or i==10) and (s==4 or s==16 or s==128 or s==1024 or s==8192)",
						dequeueIfLuaFalse = true,
						name = "Platform pattern",
						uuid = "8fd126cb-8589-80f5-b1ad-bb7413814897",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 14,
			name = "[Copied Factory] Hobbes Fire-resistance Test record",
			timeout = 1,
			uuid = "2e36a40f-1bbf-18aa-a3a8-f5089bc4fcd2",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\n-- shapes from BossMod A12 FireResistanceTest; map effect index = platform\nlocal p=TensorCore.mGetPlayer()\nif not data.cfFire then return end\nlocal platforms={[7]={-831,-225},[9]={-805,-270},[10]={-779,-225}}\nlocal ax,az=-805,-240\nlocal now=Now()\nlocal d\nfor index,f in pairs(data.cfFire) do\n    local c=platforms[index]\n    if now-f.at>25000 then\n        data.cfFire[index]=nil\n    elseif c then\n        d=d or TensorCore.getStaticDrawer(0x503333FF,2)\n        local y=p.pos.y\n        local dx,dz=ax-c[1],az-c[2]\n        local len=math.sqrt(dx*dx+dz*dz)\n        local ux,uz=dx/len,dz/len\n        local toCentre=math.atan2(dx,dz)\n        local away=toCentre+math.pi\n        if f.pattern==8192 or f.pattern==1024 then\n            -- half platform, 22 forward and 2 back, 42 wide\n            local h=toCentre+math.rad(f.pattern==8192 and 85 or -85)\n            d:addRect(c[1]-2*math.sin(h),y,c[2]-2*math.cos(h),24,42,h)\n        elseif f.pattern==16 then\n            d:addCone(ax+ux*15,y,az+uz*15,70,math.rad(30),away)\n        elseif f.pattern==128 then\n            local ex,ez=c[1]+ux*20,c[2]+uz*20\n            d:addCone(ex,y,ez,70,math.rad(60),away+math.rad(55))\n            d:addCone(ex,y,ez,70,math.rad(60),away-math.rad(55))\n        end\n    end\nend\nif next(data.cfFire)==nil then data.cfFire=nil end",
						conditions = 
						{
							
							{
								"6594461f-5153-fbaf-b60b-ae791ae6bdb1",
								true,
							},
						},
						name = "Red flame area",
						uuid = "1f71dfd1-408a-60f5-9600-f1aadef8d055",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not data.cfFire then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn not not (p and p.localmapid==882 and p.pos)",
						dequeueIfLuaFalse = true,
						name = "Pattern known",
						uuid = "6594461f-5153-fbaf-b60b-ae791ae6bdb1",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 12,
			name = "[Copied Factory] Hobbes Fire-resistance Test early draw",
			timeout = 1,
			uuid = "06ec5569-71f2-46c7-9ff9-c1dbce44d4ed",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nlocal expires=e.startTime+e.duration*1000\nif expires<=Now() then return end\nlocal rings=data.cfHobbesRings or {}\ndata.cfHobbesRings=rings\nrings[e.entityID]={x=e.x,y=e.y,z=e.z,id=e.aoeID,expires=expires}",
						conditions = 
						{
							
							{
								"0800920a-8da7-b169-abb2-5d87309474bd",
								true,
							},
						},
						uuid = "5db0caa6-0356-3f3d-926c-c2a890aba21f",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn not not (p and p.localmapid==882 and p.pos and (p.pos.x+805)^2+(p.pos.z+240)^2<4900 and (eventArgs.aoeID==18434 or eventArgs.aoeID==18435 or eventArgs.aoeID==18436))",
						dequeueIfLuaFalse = true,
						uuid = "0800920a-8da7-b169-abb2-5d87309474bd",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 18,
			name = "[Copied Factory] Hobbes Ring Laser capture",
			uuid = "eaecf4d1-267d-9055-a55d-b4a0c48f0d68",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal rings=data.cfHobbesRings\nif not rings then return end\nlocal now=Now()\nlocal first\nfor key,r in pairs(rings) do\n if r.expires<=now then rings[key]=nil\n elseif not first or r.expires<first then first=r.expires end\nend\nif not first then data.cfHobbesRings=nil;return end\nlocal channel=Argus2.getNextUnusedChannel(true)\nif not channel or channel==0 then return end\nlocal f=Argus2.RenderFlags\nlocal common=f.FLAG_WARP_TERRAIN+f.FLAG_RENDER_UI\nlocal base=common+f.FLAG_OCCLUSION_BASE\nlocal cut=common+f.FLAG_OCCLUDE\nlocal safe=TensorCore.getStaticDrawer(0x5000FF00,1,channel,base)\nlocal mask=TensorCore.getStaticDrawer(0xFFFFFFFF,0,channel,cut)\nfor _,r in pairs(rings) do\n if r.expires<first+500 then\n  local inner=15-5*(r.id-18434)\n  safe:addCircle(r.x,r.y,r.z,20,false,base)\n  mask:addDonut(r.x,r.y,r.z,inner,inner+5,false,cut)\n end\nend",
						conditions = 
						{
							
							{
								"f3ee05f2-8e75-76f1-bce1-81ffdf6a1ac8",
								true,
							},
						},
						uuid = "6e397609-7ab3-ca1e-9e60-ccaa8f1ec2f3",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn not not (p and p.localmapid==882 and p.pos and (p.pos.x+805)^2+(p.pos.z+240)^2<4900 and data.cfHobbesRings)",
						dequeueIfLuaFalse = true,
						uuid = "f3ee05f2-8e75-76f1-bce1-81ffdf6a1ac8",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 12,
			name = "[Copied Factory] Hobbes Ring Laser subtractive safe areas",
			uuid = "79df3198-4c0f-a67f-a77f-f76c13d52039",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nlocal p=e and e.pos\nif not p then return end\nlocal cx,cz\nfor _,c in ipairs({{-831,-225},{-805,-270},{-779,-225}}) do\n local d=(p.x-c[1])^2+(p.z-c[2])^2\n if d>180 and d<215 then cx,cz=c[1],c[2];break end\nend\nif not cx then return end\nlocal now=Now()\nif eventArgs.spellID==18887 then\n data.cfHobbesCombat={x=p.x,z=p.z,cx=cx,cz=cz,at=now}\n AnyoneCore.addWorldTextCountdown(1900,{x=cx,y=p.y+2,z=cz},0xFFFFFFFF,true,1)\n return\nend\nlocal s=data.cfHobbesCombat\nif not s or s.cx~=cx or s.cz~=cz or now-s.at>6500 then return end\nif s.fast then data.cfHobbesCombat=nil;return end\nif (p.x-s.x)^2+(p.z-s.z)^2<100 then return end\ns.fast=true\ns.y=p.y\ns.px=3*cx-s.x-p.x\ns.pz=3*cz-s.z-p.z\ns.untilTime=now+2200",
						conditions = 
						{
							
							{
								"e38f81a1-1f3f-757a-9515-1847bc00c734",
								true,
							},
						},
						uuid = "007c2713-d7a6-4564-9757-0dfbb1ad6a12",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn not not (p and p.localmapid==882 and p.pos and (p.pos.x+805)^2+(p.pos.z+240)^2<4900 and (eventArgs.spellID==18887 or eventArgs.spellID==18449))",
						dequeueIfLuaFalse = true,
						uuid = "e38f81a1-1f3f-757a-9515-1847bc00c734",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 2,
			name = "[Copied Factory] Hobbes Variable Combat Test - prediction setup",
			uuid = "07b70179-59b0-dff4-90dc-8527d66cd99d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal s=data.cfHobbesCombat\nif s and (eventArgs.x-s.cx)^2+(eventArgs.z-s.cz)^2<400 then s.untilTime=nil end",
						conditions = 
						{
							
							{
								"0bfc0380-6fc6-2d8d-8817-920686ddd488",
								true,
							},
						},
						uuid = "e59e724e-2268-0bee-8d03-097d61ae286d",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn not not (p and p.localmapid==882 and p.pos and (p.pos.x+805)^2+(p.pos.z+240)^2<4900 and (data.cfHobbesCombat and data.cfHobbesCombat.untilTime and eventArgs.aoeID==18449))",
						dequeueIfLuaFalse = true,
						uuid = "0bfc0380-6fc6-2d8d-8817-920686ddd488",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 18,
			name = "[Copied Factory] Hobbes Variable Combat Test - prediction clear",
			uuid = "b08ad9f7-fcc6-32c3-98aa-7c4fd660e9f2",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal s=data.cfHobbesCombat\nif not s or not s.untilTime then return end\nif Now()>=s.untilTime then s.untilTime=nil;return end\nlocal drawer=TensorCore.getStaticDrawer(0x6040BFFF,2)\ndrawer:addDonut(s.px,s.y,s.pz,7,19,false)\ndrawer:addCircle(s.px,s.y,s.pz,2,false)\nlocal heading=math.atan2(s.px-s.cx,s.pz-s.cz)\ndrawer:addCone(s.cx,s.y,s.cz,20,math.rad(60),heading+2*math.pi/3,false)\ndrawer:addCone(s.cx,s.y,s.cz,20,math.rad(60),heading-2*math.pi/3,false)",
						conditions = 
						{
							
							{
								"a947fcac-984e-847e-9cf0-766e9350becd",
								true,
							},
						},
						uuid = "b83e80ca-43c3-1501-94d3-032110ff9ace",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn not not (p and p.localmapid==882 and p.pos and (p.pos.x+805)^2+(p.pos.z+240)^2<4900 and (data.cfHobbesCombat and data.cfHobbesCombat.untilTime))",
						dequeueIfLuaFalse = true,
						uuid = "a947fcac-984e-847e-9cf0-766e9350becd",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 12,
			name = "[Copied Factory] Hobbes Variable Combat Test - PENDING replay check - final wave prediction",
			uuid = "8957a2c2-7df5-4e13-b4dd-1b7ef9036d6a",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal a,b=eventArgs.a2,eventArgs.a3\nif a==b and (a==32 or a==256 or a==2048 or a==16384) then\n data.cfHobbesCargo={pattern=a,expires=Now()+6150}\nelseif a==4 then data.cfHobbesCargo=nil end",
						conditions = 
						{
							
							{
								"a38d971c-73b6-ee83-8ddb-cde59c5aadb5",
								true,
							},
						},
						uuid = "1aa41fb6-1456-5b07-b7f1-9bf04f341532",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn not not (p and p.localmapid==882 and (eventArgs.a1==5))",
						dequeueIfLuaFalse = true,
						uuid = "a38d971c-73b6-ee83-8ddb-cde59c5aadb5",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 14,
			name = "[Copied Factory] Hobbes Unwilling Cargo - pattern",
			uuid = "7b619c9d-ab14-c121-80b4-6619ca2ea029",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\ndata.cfHobbesCargo=nil",
						conditions = 
						{
							
							{
								"43b57839-e4de-2a03-8b6e-98a3c824cd28",
								true,
							},
						},
						uuid = "77d10490-7a57-dca5-a5d8-06fa5ad86064",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn not not (p and p.localmapid==882 and (eventArgs.spellID==18458))",
						dequeueIfLuaFalse = true,
						uuid = "43b57839-e4de-2a03-8b6e-98a3c824cd28",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 2,
			name = "[Copied Factory] Hobbes Unwilling Cargo - hit",
			uuid = "9e2fc3b4-e625-65a7-a2bc-57d1c637e2bf",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal s=data.cfHobbesCargo\nif not s then return end\nif Now()>=s.expires then data.cfHobbesCargo=nil;return end\nlocal player=TensorCore.mGetPlayer()\nlocal p=player and player.pos\nif not p then return end\nlocal dz=p.z+270\nif (p.x+805)^2+dz^2>400 or math.abs(dz)>=17.5 then return end\nlocal stripe=math.abs(dz)<3.5 or math.abs(dz)>=10.5\nlocal west=s.pattern==32 or (s.pattern==2048 and stripe) or (s.pattern==16384 and not stripe)\nlocal x=p.x+(west and -15 or 15)\nlocal safe=(x+805)^2+dz^2<17.5^2\nlocal drawer=TensorCore.getStaticDrawer(safe and 0xFF33FF33 or 0xFF3333FF,2)\ndrawer:addLine(p.x,p.y+0.15,p.z,x,p.y+0.15,p.z,3)\ndrawer:addCircle(x,p.y+0.15,p.z,0.65,false)",
						conditions = 
						{
							
							{
								"6fcd1876-2489-c549-85b4-40ce2c51b8ac",
								true,
							},
						},
						uuid = "442537dd-9e5a-e98b-bf7f-bbf984838098",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn not not (p and p.localmapid==882 and (data.cfHobbesCargo))",
						dequeueIfLuaFalse = true,
						uuid = "6fcd1876-2489-c549-85b4-40ce2c51b8ac",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 12,
			name = "[Copied Factory] Hobbes Unwilling Cargo - landing line",
			uuid = "b63396ce-cdd3-b394-b4ca-7141406c2796",
			version = 2,
		},
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
								"513283a9-563a-64a4-aac2-cb4d9963255b",
								true,
							},
						},
						gVar = "ACR_RikuSCH3_Hotbar_Surecast",
						uuid = "9adc886d-335b-32a6-a23f-aff23bed67da",
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
						conditionLua = "local cargo=data.cfHobbesCargo\nif not cargo then return false end\nlocal remaining=cargo.expires-Now()\nif remaining>1050 or remaining<550 then return false end\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=882 or not p.incombat or not p.alive or not p.pos then return false end\nlocal job=p.job\nif job~=24 and job~=25 and job~=26 and job~=27 and job~=28 and job~=33 and job~=35 and job~=36 and job~=40 and job~=42 then return false end\nlocal dx,dz=p.pos.x+805,p.pos.z+270\nreturn math.abs(dz)<17.5 and dx*dx+dz*dz<=400",
						dequeueIfLuaFalse = true,
						uuid = "513283a9-563a-64a4-aac2-cb4d9963255b",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			enabled = false,
			name = "[Copied Factory] Hobbes Unwilling Cargo - Optional Surecast",
			throttleTime = 1000,
			uuid = "ad4cfbbe-7b49-3fa4-95f6-5125fa7fed91",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nlocal chases=data.cfGoliathChases or {}\ndata.cfGoliathChases=chases\nif e.newTetherID==17 and e.newTargetID>0 and e.newTargetID<0xE0000000 then\n chases[e.sourceEntityID]={target=e.newTargetID,expires=Now()+9100}\nelse\n chases[e.sourceEntityID]=nil\nend\nif not next(chases) then data.cfGoliathChases=nil end",
						conditions = 
						{
							
							{
								"9068d2a5-0fd6-d983-9307-cf1f744e1ab4",
								true,
							},
						},
						uuid = "4312fcf9-166c-fdb3-af83-2fa1db3bb6a3",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn not not (p and p.localmapid==882 and p.pos and (p.pos.x+780)^2+(p.pos.z-555)^2<1600 and eventArgs.sourceEntityContentID==9139 and (eventArgs.newTetherID==17 or eventArgs.oldTetherID==17))",
						dequeueIfLuaFalse = true,
						uuid = "9068d2a5-0fd6-d983-9307-cf1f744e1ab4",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 15,
			name = "[Copied Factory] Goliath Tank - chase tether capture",
			uuid = "21ab02c9-93fe-1a6b-852e-5c87dd9d562f",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal chases=data.cfGoliathChases\nlocal player=TensorCore.mGetPlayer()\nif not chases or not player then return end\nlocal now=Now()\nlocal hide=false\nfor source,chase in pairs(chases) do\n if now>=chase.expires then chases[source]=nil\n elseif chase.target==player.id then hide=true end\nend\nif not next(chases) then data.cfGoliathChases=nil;return end\nif hide then return end\nlocal drawer=TensorCore.getStaticDrawer(0x603333FF,2)\nlocal drawn={}\nfor _,chase in pairs(chases) do\n if not drawn[chase.target] then\n  drawn[chase.target]=true\n  local target=TensorCore.mGetEntity(chase.target)\n  local p=target and target.pos\n  if p and target.alive then drawer:addCircle(p.x,p.y,p.z,10,false) end\n end\nend",
						conditions = 
						{
							
							{
								"e49293a5-e40a-54e1-8854-dc8b8fea37e8",
								true,
							},
						},
						uuid = "7051f233-dc46-10ca-bfe5-d928d6dee6c1",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not data.cfGoliathChases then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn not not (p and p.localmapid==882 and p.pos and (p.pos.x+780)^2+(p.pos.z-555)^2<1600 and data.cfGoliathChases)",
						dequeueIfLuaFalse = true,
						uuid = "e49293a5-e40a-54e1-8854-dc8b8fea37e8",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 12,
			name = "[Copied Factory] Goliath Tank - chased player AoE rings",
			uuid = "0c058703-8b89-2e7c-ab79-e9de8e772e3f",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nlocal baits=data.cfFlightBombing or {}\ndata.cfFlightBombing=baits\nif e.newTargetContentID==9140 and e.newTetherID==17 then\n baits[e.sourceEntityID]={boss=e.newTargetID,expires=Now()+6000}\nelse\n baits[e.sourceEntityID]=nil\nend\nif not next(baits) then data.cfFlightBombing=nil end",
						conditions = 
						{
							
							{
								"61088ed4-35de-dc9e-bd5a-b2a882c51e79",
								true,
							},
						},
						uuid = "647efb17-cb9b-ca83-ba11-3d4eb77f8851",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn not not (p and p.localmapid==882 and p.pos and (p.pos.x+780)^2+(p.pos.z-555)^2<1600 and ((eventArgs.newTargetContentID==9140 and eventArgs.newTetherID==17) or (eventArgs.oldTargetContentID==9140 and eventArgs.oldTetherID==17)))",
						dequeueIfLuaFalse = true,
						uuid = "61088ed4-35de-dc9e-bd5a-b2a882c51e79",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 15,
			name = "[Copied Factory] Flight Unit - Area Bombing tether capture",
			uuid = "42a788ab-e5a2-1a3a-a69b-92137444b5bc",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal baits=data.cfFlightBombing\nif not baits then return end\nlocal now=Now()\nlocal drawer\nfor id,bait in pairs(baits) do\n if now>=bait.expires then baits[id]=nil\n else\n  local boss=TensorCore.mGetEntity(bait.boss)\n  local target=TensorCore.mGetEntity(id)\n  local from,to=boss and boss.pos,target and target.pos\n  if from and to and target.alive then\n   local dx,dz=to.x-from.x,to.z-from.z\n   if dx*dx+dz*dz>0.01 then\n    drawer=drawer or TensorCore.getStaticDrawer(0x603333FF,2)\n    drawer:addRect(from.x,from.y,from.z,60,8,math.atan2(dx,dz),false)\n   end\n  end\n end\nend\nif not next(baits) then data.cfFlightBombing=nil end",
						conditions = 
						{
							
							{
								"5f5310a7-581b-ed5a-903c-c5dbc21740c2",
								true,
							},
						},
						uuid = "8127094b-520b-3239-8796-56dfd1ad2f1a",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not data.cfFlightBombing then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn not not (p and p.localmapid==882 and p.pos and (p.pos.x+780)^2+(p.pos.z-555)^2<1600 and data.cfFlightBombing)",
						dequeueIfLuaFalse = true,
						uuid = "5f5310a7-581b-ed5a-903c-c5dbc21740c2",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 12,
			name = "[Copied Factory] Flight Unit - Area Bombing bait beams",
			uuid = "bfae6d1e-6a8c-be9c-a8df-fbeba7f5ef6b",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\ndata.cfFlightBombing=nil",
						conditions = 
						{
							
							{
								"bbf7a469-7768-28b9-b154-8e223bcd43e3",
								true,
							},
						},
						uuid = "242292f2-d8ae-ba00-89aa-f11a1e1c0387",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn not not (p and p.localmapid==882 and p.pos and (p.pos.x+780)^2+(p.pos.z-555)^2<1600 and data.cfFlightBombing and eventArgs.spellID==18755)",
						dequeueIfLuaFalse = true,
						uuid = "bbf7a469-7768-28b9-b154-8e223bcd43e3",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 3,
			name = "[Copied Factory] Flight Unit - Area Bombing bait clear",
			uuid = "53140b05-918e-7cde-94e7-777c7861e300",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal caster=TensorCore.mGetEntity(eventArgs.entityID)\nlocal p=caster and caster.pos\nif not p or not p.h then return end\nlocal now=Now()\nlocal tracks=data.cfFlightImpact or {}\ndata.cfFlightImpact=tracks\nlocal track\nfor id,t in pairs(tracks) do\n if now>=t.expires then tracks[id]=nil\n elseif (p.x-t.x)^2+(p.z-t.z)^2<0.7^2 and math.cos(p.h-t.h)>0.995 then\n  track=t\n end\nend\nif not track then\n if (p.x+780)^2+(p.z-555)^2>25 then return end\n track={count=0}\n tracks[eventArgs.entityID]=track\nend\ntrack.count=track.count+1\ntrack.x=p.x+4*math.sin(p.h)\ntrack.z=p.z+4*math.cos(p.h)\ntrack.y=p.y\ntrack.h=p.h\ntrack.expires=now+1400",
						conditions = 
						{
							
							{
								"8b0af3ff-53b3-8db2-b630-90b869d5f629",
								true,
							},
						},
						uuid = "af8d8fec-e5fb-5957-8dd6-d0e4d8a90b8c",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn not not (p and p.localmapid==882 and p.pos and (p.pos.x+780)^2+(p.pos.z-555)^2<1600 and eventArgs.spellID==18755 and eventArgs.entityContentID==9140)",
						dequeueIfLuaFalse = true,
						uuid = "8b0af3ff-53b3-8db2-b630-90b869d5f629",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 3,
			name = "[Copied Factory] Flight Unit - Ballistic Impact trail capture",
			uuid = "61e33ee0-7bee-41fb-a4e4-c963f8a6731d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal tracks=data.cfFlightImpact\nif not tracks then return end\nlocal now=Now()\nlocal drawer\nfor id,t in pairs(tracks) do\n if now>=t.expires then tracks[id]=nil\n elseif t.count<7 then\n  drawer=drawer or TensorCore.getStaticDrawer(0x6040BFFF,2)\n  drawer:addCircle(t.x,t.y,t.z,4,false)\n end\nend\nif not next(tracks) then data.cfFlightImpact=nil end",
						conditions = 
						{
							
							{
								"2085f7ad-50ad-4552-9d45-a907c7c57537",
								true,
							},
						},
						uuid = "ab8fe1b1-7c97-227d-b260-b35cfa09fe84",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not data.cfFlightImpact then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn not not (p and p.localmapid==882 and p.pos and (p.pos.x+780)^2+(p.pos.z-555)^2<1600 and data.cfFlightImpact)",
						dequeueIfLuaFalse = true,
						uuid = "2085f7ad-50ad-4552-9d45-a907c7c57537",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 12,
			name = "[Copied Factory] Flight Unit - Ballistic Impact next circle",
			uuid = "05b69d7b-6a82-94fe-9ace-352aff43b376",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal id=eventArgs.spellID\n-- the boss stands at the north edge of the current platform: (900,640) on the first, (900,755) on the second\nlocal b=TensorCore.mGetEntity(eventArgs.entityID)\nif not b or not b.pos then return end\n-- left/right: one hit about 1.6s after the 6s cast; inside/outside: two hits about 4.7s apart\nlocal two=id==18218 or id==18222\ndata.cfMarx={id=id,stage=1,fin=Now()+(two and 15000 or 10000),x=b.pos.x,y=b.pos.y,z=b.pos.z}\n",
						conditions = 
						{
							
							{
								"e39d7dc5-11e9-00c4-aa00-1db315fbfb12",
								true,
							},
						},
						name = "Remember the pattern",
						uuid = "53f2aecb-1e36-afa9-b171-ba80f3f4b8f8",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local e=eventArgs\nif not e or e.entityContentID~=9147 then return false end\nif not (e.spellID==18214 or e.spellID==18215 or e.spellID==18218 or e.spellID==18222) then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==882) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Marx Smash cast",
						uuid = "e39d7dc5-11e9-00c4-aa00-1db315fbfb12",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 3,
			name = "[Copied Factory] Marx Smash record",
			uuid = "a0b5026f-8525-59d5-a642-743a57ab2ae7",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal s=data.cfMarx\nif not s or not s.z then return end\nif Now()>=s.fin then data.cfMarx=nil return end\n-- BossMod A14 MarxSmash, 60x60 platform south of the boss. Rects are {x, z of the near edge's middle, length, width}\n-- written for the first platform (boss at 900,640) and moved with the boss\nlocal EAST={915,640,60,30}\nlocal WEST={885,640,60,30}\nlocal SHAPES={\n [18214]={{EAST}},\n [18215]={{WEST}},\n [18222]={{{900,665,35,60}},{{885,640,60,20},{915,640,60,20}}},\n [18218]={{{900,640,30,60}},{{900,640,60,30}}},\n}\nlocal parts=SHAPES[s.id]\nlocal set=parts and parts[s.stage]\nif not set then data.cfMarx=nil return end\n-- the second hit is known from the cast, so it is shown at once in yellow\nlocal nextSet=parts[s.stage+1] or {}\nlocal ox,oz=s.x-900,s.z-640\nlocal y=s.y+0.05\nlocal red=TensorCore.getStaticDrawer(0x703333FF,2)\nlocal yellow=TensorCore.getStaticDrawer(0x4000DDFF,2)\nfor _,r in ipairs(nextSet) do yellow:addRect(r[1]+ox,y,r[2]+oz,r[3],r[4],0) end\nfor _,r in ipairs(set) do red:addRect(r[1]+ox,y,r[2]+oz,r[3],r[4],0) end\n-- green: subtractive, whole platform minus the current and next hit, on a channel of its own\nlocal channel=Argus2.getNextUnusedChannel(true)\nif channel==1 then channel=Argus2.getNextUnusedChannel(true) end\nif not channel or channel<=1 then return end\nlocal F=Argus2.RenderFlags\nlocal baseFlags=F.FLAG_WARP_TERRAIN+F.FLAG_OCCLUSION_BASE\nlocal maskFlags=F.FLAG_WARP_TERRAIN+F.FLAG_OCCLUDE\nTensorCore.getStaticDrawer(0x5033FF33,2,channel,baseFlags):addRect(900+ox,y,640+oz,60,60,0,false,baseFlags)\nlocal mask=TensorCore.getStaticDrawer(0xFFFFFFFF,0,channel,maskFlags)\nfor _,list in ipairs({set,nextSet}) do\n for _,r in ipairs(list) do mask:addRect(r[1]+ox,y,r[2]+oz,r[3],r[4],0,false,maskFlags) end\nend\n",
						conditions = 
						{
							
							{
								"1dcb9d69-e8ad-42b8-80f3-8bac8e4b82f5",
								true,
							},
						},
						name = "Red hazard, green rest of the arena",
						uuid = "1a113d3c-c8dd-ee82-bd46-8c0f29aec044",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not data.cfMarx then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==882) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Marx Smash pending",
						uuid = "1dcb9d69-e8ad-42b8-80f3-8bac8e4b82f5",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 12,
			name = "[Copied Factory] Marx Smash unsafe (red) and safe (green)",
			uuid = "c27fc0e2-a6a6-94c4-aa0a-85c74a5b7470",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal s=data.cfMarx\nif not s then return end\nlocal id=eventArgs.spellID\nif id==18219 or id==18223 then s.stage=2\nelse data.cfMarx=nil end\n",
						conditions = 
						{
							
							{
								"36880caf-c521-9a3b-88d6-77746e750800",
								true,
							},
						},
						name = "Advance to the second hit or clear",
						uuid = "5c0b3b95-beed-49e5-91f5-a07d3d6e1577",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local e=eventArgs\nif not e or not data.cfMarx then return false end\nlocal id=e.spellID\nreturn (id==18216 or id==18217 or id==18219 or id==18221 or id==18223 or id==18225 or id==18226) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Marx Smash hit",
						uuid = "36880caf-c521-9a3b-88d6-77746e750800",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 2,
			name = "[Copied Factory] Marx Smash hits",
			uuid = "db03cfdd-0b73-d688-8417-88fccca4c527",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal s=data.cfEng\nif not s then s={bombs={},chains={},fixed={}} data.cfEng=s end\nlocal id=eventArgs.entityID\n-- BossMod A14: marker 23 = Incendiary Bombing (radius 8), 197 = Guided Missile chase (radius 6)\nif eventArgs.markerID==23 then\n s.bombs[id]=Now()+10000\nelse\n s.chains[#s.chains+1]={target=id,hits=0,fin=Now()+12000}\nend\n",
						conditions = 
						{
							
							{
								"6393a150-70db-9a3f-b402-c44b887f84a4",
								true,
							},
						},
						name = "Remember the marked player",
						uuid = "abaddeb0-e9fe-c26d-9b96-57fc29080337",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local e=eventArgs\nif not e or (e.markerID~=23 and e.markerID~=197) then return false end\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=882 or not p.pos then return false end\nreturn (p.pos.y<-690 and p.pos.y>-710 and math.abs(p.pos.x-900)<=45) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Engels marker",
						uuid = "6393a150-70db-9a3f-b402-c44b887f84a4",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 4,
			name = "[Copied Factory] Engels bombing and missile markers",
			uuid = "07cd616e-d391-1579-b485-44557656cbae",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal e=eventArgs\nlocal s=data.cfEng\nif not s then s={bombs={},chains={},fixed={}} data.cfEng=s end\nlocal fin=e.startTime+e.duration*1000\nif e.aoeID==18233 then\n -- the bombs have been placed: stop following, show where they land\n s.bombs={}\n s.fixed[#s.fixed+1]={x=e.x,z=e.z,fin=fin}\n return\nend\n-- first missile: give this spot to the marked player closest to it\nlocal best,bd\nfor _,c in ipairs(s.chains) do\n local t=not c.x and TensorCore.mGetEntity(c.target)\n if t and t.pos then\n  local d=(t.pos.x-e.x)^2+(t.pos.z-e.z)^2\n  if not bd or d<bd then best,bd=c,d end\n end\nend\nif best then best.x,best.z,best.fin=e.x,e.z,fin+2500 end\n",
						conditions = 
						{
							
							{
								"64868597-a5d7-8a99-b3e1-ac46bffe71e8",
								true,
							},
						},
						name = "Lock the spot",
						uuid = "ef4beb23-17b4-d181-be97-39cbbfb9e6a3",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local e=eventArgs\nif not e or (e.aoeID~=18233 and e.aoeID~=18230) then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==882) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Bomb or first missile cast",
						uuid = "64868597-a5d7-8a99-b3e1-ac46bffe71e8",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 18,
			name = "[Copied Factory] Engels bombing and missile drop spots",
			uuid = "8f206c91-45c2-3023-a5d8-bd1bc86d581b",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal s=data.cfEng\nif not s then return end\nlocal x,z=eventArgs.castPosX,eventArgs.castPosZ\nif not x then\n local h=TensorCore.mGetEntity(eventArgs.entityID)\n if not h or not h.pos then return end\n x,z=h.pos.x,h.pos.z\nend\nlocal best,bi,bd\nfor i,c in ipairs(s.chains) do\n if c.x then\n  local d=(c.x-x)^2+(c.z-z)^2\n  if d<=100 and (not bd or d<bd) then best,bi,bd=c,i,d end\n end\nend\nif not best then return end\nbest.x,best.z,best.hits,best.fin=x,z,best.hits+1,Now()+2500\n-- four hits in total (BossMod StandardChasingAOEs: step 6, 1s apart)\nif best.hits>=4 then table.remove(s.chains,bi) end\n",
						conditions = 
						{
							
							{
								"4c88a3e7-6476-c888-9c0f-1c2aaed3ce88",
								true,
							},
						},
						name = "Move the chain to the hit",
						uuid = "eff0a6d9-fbe3-7d3a-b9f7-5d227bfc4544",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local e=eventArgs\nif not e or not data.cfEng then return false end\nreturn (e.spellID==18230 or e.spellID==18231) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Missile hit",
						uuid = "4c88a3e7-6476-c888-9c0f-1c2aaed3ce88",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 2,
			name = "[Copied Factory] Engels missile steps",
			uuid = "14eacc1e-490d-f70d-be2c-37bfdc3ee2aa",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal s=data.cfEng\nif not s then return end\nlocal now=Now()\nlocal y=-699.95\nlocal red=TensorCore.getStaticDrawer(0x703333FF,2)\nlocal soft=TensorCore.getStaticDrawer(0x400080FF,2)\nlocal ahead=TensorCore.getStaticDrawer(0x3000DDFF,2)\nlocal arrow=TensorCore.getStaticDrawer(0xE000FFFF,2)\nlocal any=false\nfor id,fin in pairs(s.bombs) do\n local t=TensorCore.mGetEntity(id)\n if now>=fin or not t or not t.pos then s.bombs[id]=nil\n else any=true soft:addCircle(t.pos.x,y,t.pos.z,8) end\nend\nfor i=#s.fixed,1,-1 do\n local f=s.fixed[i]\n if now>=f.fin then table.remove(s.fixed,i)\n else any=true red:addCircle(f.x,y,f.z,8) end\nend\nfor i=#s.chains,1,-1 do\n local c=s.chains[i]\n local t=TensorCore.mGetEntity(c.target)\n if now>=c.fin or not t or not t.pos then table.remove(s.chains,i)\n else\n  any=true\n  if not c.x then\n   -- not dropped yet: the circle follows the chased player\n   soft:addCircle(t.pos.x,y,t.pos.z,6)\n  else\n   local px,pz=t.pos.x,t.pos.z\n   -- one step of up to 6 yalms from (x,z) toward the player\n   local function step(x,z)\n    local dx,dz=px-x,pz-z\n    local d=math.sqrt(dx*dx+dz*dz)\n    if d<=0.01 then return x,z end\n    local m=math.min(6,d)\n    return x+dx/d*m,z+dz/d*m\n   end\n   local x,z=c.x,c.z\n   if c.hits>0 then x,z=step(x,z) end\n   -- one hit in advance, in faint yellow, while the chain still has another hit left\n   if c.hits<3 then\n    local nx,nz=step(x,z)\n    if (nx-x)^2+(nz-z)^2>0.25 then ahead:addCircle(nx,y,nz,6) end\n   end\n   red:addCircle(x,y,z,6)\n   local ax,az=px-x,pz-z\n   local len=math.min(6,math.sqrt(ax*ax+az*az))\n   if len>1.5 then arrow:addArrow(x,y+0.05,z,math.atan2(ax,az),len-1.5,0.6,1.5,1.8) end\n  end\n end\nend\nif not any then data.cfEng=nil end\n",
						conditions = 
						{
							
							{
								"2f39382a-fd6a-bb1a-935f-648c543751b0",
								true,
							},
						},
						name = "Follow circles, drop spots and chase arrow",
						uuid = "c1191814-6d3b-fa26-9356-f2d2fc699c62",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not data.cfEng then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==882) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Engels circles pending",
						uuid = "2f39382a-fd6a-bb1a-935f-648c543751b0",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 12,
			name = "[Copied Factory] Engels bombing and missile circles",
			uuid = "803b1405-c0ca-d219-8bc1-86411782ef31",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\ndata.cfMeteor={fin=Now()+11000}\n",
						conditions = 
						{
							
							{
								"d08f17ec-a4d6-1c0c-a3c9-04e2bd587d03",
								true,
							},
						},
						name = "Start guiding south",
						uuid = "4e914694-85f9-ca09-ab70-b6324d3fed3f",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local e=eventArgs\nif not e or e.spellID~=18245 or e.entityContentID~=9147 then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==882) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Demolish Structure cast",
						uuid = "d08f17ec-a4d6-1c0c-a3c9-04e2bd587d03",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 3,
			name = "[Copied Factory] Demolish Structure record",
			uuid = "e5aa76bf-20ae-4b1c-9361-9f5139c935bf",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal s=data.cfMeteor\nif not s then return end\nlocal p=TensorCore.mGetPlayer()\nif Now()>=s.fin or not p or not p.pos then data.cfMeteor=nil return end\n-- only on the first platform; players gather at (900,698) during this cast, toward the next platform\nif p.pos.y>-690 or p.pos.z>702 then return end\nlocal tx,tz,y=900,698,-699.9\nlocal green=TensorCore.getStaticDrawer(0x9033FF33,2)\ngreen:addCircle(tx,y,tz,1.5)\nlocal dx,dz=tx-p.pos.x,tz-p.pos.z\nlocal d=math.sqrt(dx*dx+dz*dz)\nif d>2 then\n green:addArrow(p.pos.x,p.pos.y+0.1,p.pos.z,math.atan2(dx,dz),d-1.5,0.5,1.5,1.6)\nend\n",
						conditions = 
						{
							
							{
								"2d1b08f0-0f9d-5681-a7d8-6b8ed6ed6923",
								true,
							},
						},
						name = "Green arrow and spot",
						uuid = "e084010c-b2d3-64aa-a39c-86072187bde3",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not data.cfMeteor then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==882) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Guiding",
						uuid = "2d1b08f0-0f9d-5681-a7d8-6b8ed6ed6923",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 12,
			name = "[Copied Factory] Demolish Structure - arrow to the south edge",
			uuid = "60be7bb8-7583-dfbc-b9cc-686b9cc4ce0a",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal id=data.cfAimID\nif not id then return end\nPlayer:SetTarget(id)\ndata.cfAimID=nil\n-- the boss is picked once; later manual target changes are left alone\nif data.cfAimBoss then data.cfAimBoss=nil data.cfMarxAim=nil end\n",
						conditions = 
						{
							
							{
								"8935c4ef-8ff8-6475-a7ef-33d75b867d8c",
								true,
							},
							
							{
								"31fe6033-f328-6cf3-a3ed-dcfc97c49730",
								true,
							},
						},
						name = "Set the target",
						uuid = "3358f886-27fa-ea21-b867-b08374e56a70",
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
						localmapid = 882,
						name = "Copied Factory only",
						uuid = "8935c4ef-8ff8-6475-a7ef-33d75b867d8c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or not p.alive or not p.pos then return false end\n-- Engels platforms only\nif math.abs(p.pos.x-900)>60 or p.pos.z<600 or p.pos.z>860 then return false end\nlocal cur=Player:GetTarget()\nlocal best,bd,onMarx=nil,nil,false\nfor id,e in pairs(EntityList(\"contentid=9152\") or {}) do\n if e.targetable and e.attackable and e.hp and e.hp.percent>0 then\n  if cur and cur.id==id then onMarx=true end\n  if not bd or e.distance2d<bd then best,bd=id,e.distance2d end\n end\nend\nif best then\n -- remember to go back to the boss afterwards\n data.cfMarxAim=true\n if onMarx then return false end\n data.cfAimID=best\n return true\nend\nif not data.cfMarxAim then return false end\nfor id,e in pairs(EntityList(\"contentid=9147\") or {}) do\n if e.targetable and e.attackable and e.hp and e.hp.percent>0 then\n  data.cfAimID=id\n  data.cfAimBoss=true\n  return true\n end\nend\nreturn false\n",
						dequeueIfLuaFalse = true,
						name = "A target switch is due",
						uuid = "31fe6033-f328-6cf3-a3ed-dcfc97c49730",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			name = "[Copied Factory] Engels - target Marx L/R, then back to the boss",
			throttleTime = 300,
			uuid = "4ffc0e57-6655-c198-b062-d220a1e5ff75",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nif Argus.getEntityModel(eventArgs.entityID)~=11384 then return end\nlocal s=data.cfSaw\nif not s then s={} data.cfSaw=s end\n-- the Marx Impact cast starts about 3s after the crane appears and lasts 5s\nif not s[eventArgs.entityID] then s[eventArgs.entityID]=Now()+10000 end\n",
						conditions = 
						{
							
							{
								"bd22ecf1-c9da-db91-aceb-0de10803ec29",
								true,
							},
						},
						name = "Remember the crane",
						uuid = "9b3b6045-22b4-73f9-b692-9172ad62e927",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local e=eventArgs\nif not e or e.entityContentID~=9157 or e.isVisible~=true then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==882) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Crane becomes visible",
						uuid = "bd22ecf1-c9da-db91-aceb-0de10803ec29",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 22,
			name = "[Copied Factory] Marx Impact crane appears",
			uuid = "deb39ede-0168-c9ff-bfcb-7b4cd8654c90",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal s=data.cfSaw\nif not s then s={} data.cfSaw=s end\n-- also covers a crane whose appearance was not seen\ns[eventArgs.entityID]=Now()+eventArgs.channelTimeMax*1000+800\n",
						conditions = 
						{
							
							{
								"0ffd76e3-c58d-5ac9-ad94-4f637c4315d1",
								true,
							},
						},
						name = "Keep until the hit",
						uuid = "786559f0-5e95-9dde-b403-e027160963fe",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local e=eventArgs\nif not e or e.spellID~=18644 then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==882) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Marx Impact",
						uuid = "0ffd76e3-c58d-5ac9-ad94-4f637c4315d1",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 3,
			name = "[Copied Factory] Marx Impact cast",
			uuid = "f260352a-ec4c-3085-8440-24bafe67273f",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nif data.cfSaw then data.cfSaw[eventArgs.entityID]=nil end\n",
						conditions = 
						{
							
							{
								"c248f3f7-a97b-326e-8d3a-b66782758240",
								true,
							},
						},
						name = "Remove that circle",
						uuid = "5244e1e3-fb88-7a80-8c32-74e5e559b3a6",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not eventArgs or eventArgs.spellID~=18644 then return false end\nreturn data.cfSaw~=nil\n",
						dequeueIfLuaFalse = true,
						name = "Marx Impact hit",
						uuid = "c248f3f7-a97b-326e-8d3a-b66782758240",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 2,
			name = "[Copied Factory] Marx Impact hit",
			uuid = "16be1e9a-9a0a-6a3a-9797-12926dc4e1f1",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal s=data.cfSaw\nif not s then return end\nlocal now=Now()\nlocal red\nlocal any=false\nfor id,fin in pairs(s) do\n local c=TensorCore.mGetEntity(id)\n if now>=fin or not c or not c.pos then s[id]=nil\n else\n  any=true\n  red=red or TensorCore.getStaticDrawer(0x703333FF,2)\n  -- Marx Impact: radius 22 around the crane\n  red:addCircle(c.pos.x,c.pos.y+0.05,c.pos.z,22)\n end\nend\nif not any then data.cfSaw=nil end\n",
						conditions = 
						{
							
							{
								"591ae269-fdfd-2521-b8f0-dc2ecee55b86",
								true,
							},
						},
						name = "Circle around each crane",
						uuid = "7d698d94-d453-bedf-86c2-14f5570752d6",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not data.cfSaw then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==882) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Cranes pending",
						uuid = "591ae269-fdfd-2521-b8f0-dc2ecee55b86",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 12,
			name = "[Copied Factory] Marx Impact circles (red, early)",
			uuid = "c4921240-66c2-d738-b1fe-c93ccbd44cb2",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal b=TensorCore.mGetEntity(eventArgs.entityID)\nif not b or not b.pos then return end\nlocal s=data.cfStrike\nif not s then s={} data.cfStrike=s end\n-- explosions start when the indicator cast ends and run 60 yalms along its heading (south, east, ...)\ns[#s+1]={x=b.pos.x,y=b.pos.y,z=b.pos.z,h=b.pos.h,sx=math.sin(b.pos.h),sz=math.cos(b.pos.h),\n at=Now()+eventArgs.channelTimeMax*1000+300,done=0}\n",
						conditions = 
						{
							
							{
								"0edb7704-498c-2916-9c15-fed114e5fae3",
								true,
							},
						},
						name = "Remember the lane",
						uuid = "5135e100-9051-9a26-a4e8-1256a5a6c00c",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local e=eventArgs\nif not e or e.spellID<18649 or e.spellID>18651 then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==882) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Lane indicator cast",
						uuid = "0edb7704-498c-2916-9c15-fed114e5fae3",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 3,
			name = "[Copied Factory] Airstrike lane record",
			uuid = "3bc43808-7103-df3e-afd1-17bad4fd3892",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal s=data.cfStrike\nif not s then return end\nlocal c=TensorCore.mGetEntity(eventArgs.entityID)\nif not c or not c.pos then return end\n-- the lane this explosion belongs to: same line, earliest start\nlocal best,bi,along\nfor i,l in ipairs(s) do\n if l.sx then\n  local dx,dz=c.pos.x-l.x,c.pos.z-l.z\n  local d=dx*l.sx+dz*l.sz\n  if math.abs(dx*l.sz-dz*l.sx)<3 and d>=-3 and math.abs(c.pos.h-l.h)<0.2 and (not best or l.at<best.at) then best,bi,along=l,i,d end\n end\nend\nif not best then return end\n-- ground behind the next step is safe (steps are 8.67 apart, seven per lane)\nif along+8.67>best.done then best.done=along+8.67 end\nif best.done>=59 then table.remove(s,bi) end\n",
						conditions = 
						{
							
							{
								"ec134e5a-199a-3e6f-a5f8-d853a85fe759",
								true,
							},
						},
						name = "Shorten that lane",
						uuid = "5cd60f01-7f84-383e-9dcc-4057880d8427",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not eventArgs or eventArgs.spellID~=18652 then return false end\nreturn data.cfStrike~=nil\n",
						dequeueIfLuaFalse = true,
						name = "Travelling explosion",
						uuid = "ec134e5a-199a-3e6f-a5f8-d853a85fe759",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 2,
			name = "[Copied Factory] Airstrike explosion steps",
			uuid = "c14a74d1-a424-077a-b0be-0f745cece70d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal s=data.cfStrike\nif not s then return end\nlocal now=Now()\nfor i=#s,1,-1 do\n if not s[i].sx or now>s[i].at+5000 then table.remove(s,i) end\nend\nif #s==0 then data.cfStrike=nil return end\n-- a lane turns red 2.5s before its first explosion; if none is that close, the next one is shown,\n-- so the platform is never fully green while an airstrike is pending\nlocal soonest\nfor _,l in ipairs(s) do if not soonest or l.at<soonest then soonest=l.at end end\nlocal limit=math.max(now+2500,soonest+100)\nlocal live={}\nfor _,l in ipairs(s) do\n if l.at<=limit then\n  local x,z=l.x+l.sx*l.done,l.z+l.sz*l.done\n  -- cut off at the platform edge (x 870-930, z 397-457)\n  local edge=l.sx>0.5 and 930-x or l.sx<-0.5 and x-870 or l.sz>0 and 457-z or z-397\n  local len=math.min(60-l.done,edge)\n  if len>0 then live[#live+1]={x=x,z=z,len=len,h=l.h} end\n end\nend\nif #live==0 then return end\nlocal y=s[1].y+0.05\nlocal red=TensorCore.getStaticDrawer(0x703333FF,2)\nfor _,l in ipairs(live) do red:addRect(l.x,y,l.z,l.len,20,l.h) end\n-- green: subtractive, the 60x60 platform (centre 900,427) minus the red lanes\nlocal channel=Argus2.getNextUnusedChannel(true)\nif channel==1 then channel=Argus2.getNextUnusedChannel(true) end\nif not channel or channel<=1 then return end\nlocal F=Argus2.RenderFlags\nlocal baseFlags=F.FLAG_WARP_TERRAIN+F.FLAG_OCCLUSION_BASE\nlocal maskFlags=F.FLAG_WARP_TERRAIN+F.FLAG_OCCLUDE\nTensorCore.getStaticDrawer(0x5033FF33,2,channel,baseFlags):addRect(900,y,397,60,60,0,false,baseFlags)\nlocal mask=TensorCore.getStaticDrawer(0xFFFFFFFF,0,channel,maskFlags)\nfor _,l in ipairs(live) do mask:addRect(l.x,y,l.z,l.len,20,l.h,false,maskFlags) end\n",
						conditions = 
						{
							
							{
								"b702407a-6a53-c5f8-b75c-623cdcfe8454",
								true,
							},
						},
						name = "Red lanes, subtractive green",
						uuid = "35e151e6-af61-df9e-9eb3-fea6317546a1",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not data.cfStrike then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==882) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Airstrike pending",
						uuid = "b702407a-6a53-c5f8-b75c-623cdcfe8454",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 12,
			name = "[Copied Factory] Airstrike lanes (red) and safe (green)",
			uuid = "9736224e-a4a1-83cd-a29a-87380f50412c",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\n-- the hack targets the tank that will blow up; that tank then casts the line-of-sight blast\nlocal hacked=eventArgs.spellID==18663 and eventArgs.targetID or eventArgs.entityID\nlocal s=data.cfHack\nif not s or Now()>=s.fin then data.cfHack={tank=hacked,fin=Now()+24000} else s.tank=hacked end\n",
						conditions = 
						{
							
							{
								"9abb3ed2-da18-1e34-ae2b-c5bef0fc5a08",
								true,
							},
						},
						name = "Remember the hacked tank",
						uuid = "c4c026c6-7f3f-2473-beee-97f8599ca827",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local e=eventArgs\nif not e or (e.spellID~=18663 and e.spellID~=18664) then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==882) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Hack or tank blast cast",
						uuid = "9abb3ed2-da18-1e34-ae2b-c5bef0fc5a08",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 3,
			name = "[Copied Factory] Hack Goliath Tank record",
			uuid = "aaf6be7e-f38c-abe2-8eaa-f8c3cf01cebd",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\ndata.cfHack=nil\n",
						conditions = 
						{
							
							{
								"9f9a28b3-94c6-6558-a1cb-8f8f5c9a920b",
								true,
							},
						},
						name = "Stop showing the safe spot",
						uuid = "789f2a89-e04c-ba98-abe9-9c401420bbdf",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not eventArgs or eventArgs.spellID~=18664 then return false end\nreturn data.cfHack~=nil\n",
						dequeueIfLuaFalse = true,
						name = "Blast resolved",
						uuid = "9f9a28b3-94c6-6558-a1cb-8f8f5c9a920b",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 2,
			name = "[Copied Factory] Goliath Tank blast hit",
			uuid = "da77272b-22da-e44e-a27b-ae55478de96d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal s=data.cfHack\nif not s then return end\nif Now()>=s.fin then data.cfHack=nil return end\nlocal bad=TensorCore.mGetEntity(s.tank)\nlocal p=TensorCore.mGetPlayer()\nif not bad or not bad.pos or not p or not p.pos then return end\n-- the tank to hide behind is the other one that is not casting (BossMod A15)\nlocal safe\nfor id,t in pairs(EntityList(\"contentid=9156\") or {}) do\n if id~=s.tank and t.pos and Argus.getEntityModel(id)==11383 and Argus.isEntityVisible(id) then safe=t break end\nend\nif not safe then return end\nlocal ox,oz=bad.pos.x,bad.pos.z\nlocal dx,dz=safe.pos.x-ox,safe.pos.z-oz\nlocal d=math.sqrt(dx*dx+dz*dz)\nif d<8 then return end\nlocal h=math.atan2(dx,dz)\nlocal y=safe.pos.y+0.05\nlocal green=TensorCore.getStaticDrawer(0x6033FF33,2)\n-- shadow of a blocker of radius 6, as seen from the exploding tank\ngreen:addDonutCone(ox,y,oz,d+3,d+14,2*math.asin(5/d),h)\nlocal tx,tz=safe.pos.x+dx/d*8,safe.pos.z+dz/d*8\nlocal spot=TensorCore.getStaticDrawer(0xB033FF33,3)\nspot:addCircle(tx,y,tz,1.5)\nlocal px,pz=tx-p.pos.x,tz-p.pos.z\nlocal len=math.sqrt(px*px+pz*pz)\nif len>2.5 then spot:addArrow(p.pos.x,p.pos.y+0.1,p.pos.z,math.atan2(px,pz),len-1.5,0.5,1.5,1.6) end\n",
						conditions = 
						{
							
							{
								"814da6c4-84ed-9dc8-95b8-6e91dda40940",
								true,
							},
						},
						name = "Green shadow, spot and arrow",
						uuid = "17a42f7a-586e-ca88-9fc2-a05abd7a9588",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not data.cfHack then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==882) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Hack pending",
						uuid = "814da6c4-84ed-9dc8-95b8-6e91dda40940",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 12,
			name = "[Copied Factory] Hack Goliath Tank - safe spot behind the other tank (green)",
			uuid = "d9906b36-d67b-1a9f-af77-a138d2b34c5d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal m=TensorCore.mGetEntity(eventArgs.entityID)\nif not m or not m.pos then return end\nlocal now=Now()\nlocal s=data.cfTiles\nif not s then s={waves={},first=now} data.cfTiles=s end\n-- BossMod A15 BallisticFloor: markers within 2s belong to one wave\nlocal w=s.waves[#s.waves]\nif not w or now-w.appear>=2000 then\n w={appear=now,act=now+6100,tiles={}}\n s.waves[#s.waves+1]=w\n local delay=#s.waves==2 and 6100 or #s.waves==3 and 9200\n if delay then\n  for i,v in ipairs(s.waves) do v.act=s.waves[1].appear+delay+2100*(i-1) end\n end\nend\nw.tiles[#w.tiles+1]={x=m.pos.x,y=m.pos.y,z=m.pos.z}\n",
						conditions = 
						{
							
							{
								"b59c0282-592a-ad29-88ae-5f78236dbb98",
								true,
							},
						},
						name = "Add the tile to its wave",
						uuid = "f0a345f6-376e-958f-afa5-09d0c129b67b",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not eventArgs or eventArgs.markerID~=199 then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==882) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Floor square marker",
						uuid = "b59c0282-592a-ad29-88ae-5f78236dbb98",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 4,
			name = "[Copied Factory] Anti-personnel Missile tile record",
			uuid = "3a5c23b1-36cb-e87f-8ca0-b8b9dbef47b0",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal s=data.cfTiles\nlocal c=TensorCore.mGetEntity(eventArgs.entityID)\nif not s or not c or not c.pos then return end\nlocal w=s.waves[1]\nif not w then return end\nfor i=#w.tiles,1,-1 do\n local t=w.tiles[i]\n if (t.x-c.pos.x)^2+(t.z-c.pos.z)^2<=1 then table.remove(w.tiles,i) end\nend\nif #w.tiles==0 then table.remove(s.waves,1) end\n",
						conditions = 
						{
							
							{
								"badf56a8-01bb-0bee-a0b5-cc4990c11c33",
								true,
							},
						},
						name = "Remove the tile that hit",
						uuid = "dc84b574-c851-5138-92c6-ba79ee23cf5b",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not eventArgs or eventArgs.spellID~=18660 then return false end\nreturn data.cfTiles~=nil\n",
						dequeueIfLuaFalse = true,
						name = "Floor impact",
						uuid = "badf56a8-01bb-0bee-a0b5-cc4990c11c33",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 2,
			name = "[Copied Factory] Anti-personnel Missile tile hit",
			uuid = "4f4d0e92-35cb-3797-81b6-8043ac3ebb6f",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal s=data.cfTiles\nif not s then return end\nlocal now=Now()\nwhile s.waves[1] and now>s.waves[1].act+1200 do table.remove(s.waves,1) end\nlocal w=s.waves[1]\nif not w then data.cfTiles=nil return end\nlocal y=w.tiles[1] and w.tiles[1].y+0.05\nif not y then return end\n-- 15x15 squares centred on each marker; only the next wave to hit is shown\nlocal red=TensorCore.getStaticDrawer(0x703333FF,2)\nfor _,t in ipairs(w.tiles) do red:addCenteredRect(t.x,y,t.z,15,15,0) end\n-- green: subtractive, the 60x60 platform (centre 900,427) minus those squares\nlocal channel=Argus2.getNextUnusedChannel(true)\nif channel==1 then channel=Argus2.getNextUnusedChannel(true) end\nif not channel or channel<=1 then return end\nlocal F=Argus2.RenderFlags\nlocal baseFlags=F.FLAG_WARP_TERRAIN+F.FLAG_OCCLUSION_BASE\nlocal maskFlags=F.FLAG_WARP_TERRAIN+F.FLAG_OCCLUDE\nTensorCore.getStaticDrawer(0x5033FF33,2,channel,baseFlags):addRect(900,y,397,60,60,0,false,baseFlags)\nlocal mask=TensorCore.getStaticDrawer(0xFFFFFFFF,0,channel,maskFlags)\nfor _,t in ipairs(w.tiles) do mask:addCenteredRect(t.x,y,t.z,15,15,0,false,maskFlags) end\n",
						conditions = 
						{
							
							{
								"b0c41151-978a-1fa5-aefb-42a820daae92",
								true,
							},
						},
						name = "Current wave red, subtractive green",
						uuid = "181d466b-19eb-e862-9921-08a3679fdcff",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not data.cfTiles then return false end\nlocal p=TensorCore.mGetPlayer()\nreturn (p~=nil and p.localmapid==882) and true or false\n",
						dequeueIfLuaFalse = true,
						name = "Tiles pending",
						uuid = "b0c41151-978a-1fa5-aefb-42a820daae92",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/Draws",
			eventType = 12,
			name = "[Copied Factory] Anti-personnel Missile tiles (red) and safe (green)",
			uuid = "ad4d3ec9-1f7d-ffc0-8a39-9a79dc6151fd",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Copied Factory",
			name = "AutoSim",
			uuid = "40f1e247-388a-0b27-8e5a-04e3a255b655",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then self.used=true return end\nlocal t=TensorCore.mGetTarget()\nif not t or not t.incombat or not t.alive or not t.attackable then return end\nlocal duration=({[9141]=255,[9143]=280,[9147]=410,[9153]=368})[t.contentid]\nif not duration then return end\nlocal api=TensorCore.API.TensorACR\nlocal now=api.getAutoSimTime()\nif type(now)~=\"number\" or now<=0 or now>=duration then return end\napi.setAutoSimKillTime(duration)\ndata.factoryForecastBoss=t.id\nself.used=true",
						conditions = 
						{
							
							{
								"1d570d3f-1614-33be-a19b-b0abeea9d7f2",
								true,
							},
						},
						name = "Set encounter kill estimate",
						uuid = "d30b7f3e-4cc1-fefa-95b0-4501d50a4dc5",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "if not pcall(TensorCore.API.TensorACR.getAutoSimTime) then return false end\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=882 or not p.incombat then return false end\nlocal t=TensorCore.mGetTarget()\nif not t or not t.incombat or not t.alive or not t.attackable or data.factoryForecastBoss==t.id then return false end\nlocal id=t.contentid\nreturn id==9141 or id==9143 or id==9147 or id==9153",
						dequeueIfLuaFalse = true,
						name = "Engaged Factory boss",
						uuid = "1d570d3f-1614-33be-a19b-b0abeea9d7f2",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory/AutoSim",
			name = "Copied Factory - boss encounter AutoSim",
			throttleTime = 500,
			uuid = "043f4baf-128b-6f8e-b87e-6d610132eee8",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player then self.used = true; return end\n\nlocal contentID = 9149\nlocal label = \"[Copied Factory] Engels Small Biped\"\nlocal api = TensorCore.API.TensorACR\nlocal j = player.job\nlocal eligible = player.localmapid == 882 and (j == 23 or j == 25 or j == 34)\nlocal state = AllianceFactoryBipedDoT\n\n-- Restore the previous entry on leaving the Copied Factory or changing jobs.\nif state and (not eligible or state.job ~= j) then\n    local entry = state.entry\n    if entry.enabled and entry.allowIfTarget == false and entry.allowSmartDoT == false then\n        if state.created then\n            entry.enabled = false\n            if j == state.job and api.getBlacklistEntry(contentID) then\n                local current = api.addBlacklistEntry(contentID)\n                if current == entry and current.name == label then\n                    api.deleteBlacklistEntry(contentID)\n                end\n            end\n        else\n            entry.enabled = state.enabled\n            entry.allowIfTarget = state.allowIfTarget\n            entry.allowSmartDoT = state.allowSmartDoT\n        end\n    end\n    AllianceFactoryBipedDoT = nil\n    state = nil\nend\n\nif eligible and not state then\n    local supported, exists = pcall(api.getBlacklistEntry, contentID)\n    if supported then\n        local ok, entry = pcall(api.addBlacklistEntry, contentID, label)\n        if ok and entry then\n            AllianceFactoryBipedDoT = {\n                job = j, entry = entry, created = not exists,\n                enabled = entry.enabled, allowIfTarget = entry.allowIfTarget,\n                allowSmartDoT = entry.allowSmartDoT,\n            }\n            entry.enabled = true\n            entry.allowIfTarget = false\n            entry.allowSmartDoT = false\n        end\n    end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"33f6bf00-03fd-879f-aec7-8eeddb92388e",
								true,
							},
						},
						name = "Manage Engels Small Biped blacklist",
						uuid = "39f6e2b3-cfbb-966a-bc23-07b25f34e660",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player then return false end\nlocal state = AllianceFactoryBipedDoT\nlocal j = player.job\nlocal eligible = player.localmapid == 882 and (j == 23 or j == 25 or j == 34)\nif state then\n    return not eligible or j ~= state.job\nend\nreturn not not eligible",
						dequeueIfLuaFalse = true,
						name = "Factory job or owned cleanup",
						uuid = "33f6bf00-03fd-879f-aec7-8eeddb92388e",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory",
			name = "Engels Small Biped DoT blacklist (BRD/BLM/SAM)",
			throttleTime = 500,
			timeout = 0.5,
			uuid = "1ddd0cce-ec2c-2be1-a605-e1ecf81b79d3",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nif not player then self.used = true; return end\n\nlocal contentID = 9134\nlocal label = \"[Copied Factory] Small Stubby\"\nlocal api = TensorCore.API.TensorACR\nlocal j = player.job\nlocal eligible = player.localmapid == 882 and (j == 23 or j == 34)\nlocal state = AllianceFactoryStubbyDoT\n\n-- Restore the previous entry on leaving the Copied Factory or changing jobs.\nif state and (not eligible or state.job ~= j) then\n    local entry = state.entry\n    if entry.enabled and entry.allowIfTarget == false and entry.allowSmartDoT == false then\n        if state.created then\n            entry.enabled = false\n            if j == state.job and api.getBlacklistEntry(contentID) then\n                local current = api.addBlacklistEntry(contentID)\n                if current == entry and current.name == label then\n                    api.deleteBlacklistEntry(contentID)\n                end\n            end\n        else\n            entry.enabled = state.enabled\n            entry.allowIfTarget = state.allowIfTarget\n            entry.allowSmartDoT = state.allowSmartDoT\n        end\n    end\n    AllianceFactoryStubbyDoT = nil\n    state = nil\nend\n\nif eligible and not state then\n    local supported, exists = pcall(api.getBlacklistEntry, contentID)\n    if supported then\n        local ok, entry = pcall(api.addBlacklistEntry, contentID, label)\n        if ok and entry then\n            AllianceFactoryStubbyDoT = {\n                job = j, entry = entry, created = not exists,\n                enabled = entry.enabled, allowIfTarget = entry.allowIfTarget,\n                allowSmartDoT = entry.allowSmartDoT,\n            }\n            entry.enabled = true\n            entry.allowIfTarget = false\n            entry.allowSmartDoT = false\n        end\n    end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"2ed0a5e7-6cfe-68c7-bc62-72ff72c37b9e",
								true,
							},
						},
						name = "Manage Small Stubby blacklist",
						uuid = "7a13a523-22da-359d-8804-011dd22fc573",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nif not player then return false end\nlocal state = AllianceFactoryStubbyDoT\nlocal j = player.job\nlocal eligible = player.localmapid == 882 and (j == 23 or j == 34)\nif state then\n    return not eligible or j ~= state.job\nend\nreturn not not eligible",
						dequeueIfLuaFalse = true,
						name = "Factory BRD/SAM or owned cleanup",
						uuid = "2ed0a5e7-6cfe-68c7-bc62-72ff72c37b9e",
						version = 3,
					},
				},
			},
			displayPath = "The Copied Factory",
			name = "Small Stubby DoT blacklist (BRD/SAM)",
			throttleTime = 500,
			timeout = 0.5,
			uuid = "72104b5f-7b3d-dbad-8517-82e5e2df3d3a",
			version = 2,
		},
	}, 
	inheritedProfiles = 
	{
	},
}



return tbl
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
			},
			conditions = 
			{
			},
			displayPath = "General",
			eventType = 11,
			execute = "if AnyoneCore and AnyoneCore.Settings and AnyoneCore.Settings.PrepullHelper then\n    if AnyoneCore.Settings.PrepullHelper.enabled then\n        AnyoneCore.Settings.PrepullHelper.enabled = false\n    end\n    self.used = true\nend",
			executeType = 2,
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
			},
			conditions = 
			{
			},
			displayPath = "General",
			eventType = 16,
			execute = "if AnyoneCore and AnyoneCore.Settings and AnyoneCore.Settings.PrepullHelper then\n    if AnyoneCore.Settings.PrepullHelper.enabled then\n        AnyoneCore.Settings.PrepullHelper.enabled = false\n    end\n    self.used = true\nend",
			executeType = 2,
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
						actionLua = "-- Prishe of the Distant Chains: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2057]=all[2057] or {}\nlocal state=all[2057]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(195)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(168,7.2)\n state.phases={{\"CasterDowntime\",29.5,32.5,1},{\"CasterDowntime\",34.5,36.0,1},{\"CasterDowntime\",87.0,88.0,1},{\"CasterDowntime\",90.0,93.0,1},{\"CasterDowntime\",98.5,101.0,1},{\"CasterDowntime\",125.5,127.5,1},{\"CasterDowntime\",132.0,134.0,1},{\"CasterDowntime\",148.0,151.5,1},{\"GroundFieldMovement\",132.0,134.0,2},{\"GroundFieldMovement\",148.0,151.5,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						conditionLua = "local ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t<=0 and t>=-120",
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
						actionLua = "-- Fafnir the Forgotten: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2058]=all[2058] or {}\nlocal state=all[2058]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(183)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(155,11.67)\n state.phases={{\"CasterDowntime\",21.0,22.0,1},{\"CasterDowntime\",32.0,34.5,1},{\"CasterDowntime\",35.5,37.0,1},{\"CasterDowntime\",39.5,43.0,1},{\"CasterDowntime\",56.5,60.0,1},{\"CasterDowntime\",75.5,77.0,1},{\"CasterDowntime\",105.5,107.5,1},{\"CasterDowntime\",109.0,110.0,1},{\"CasterDowntime\",114.0,115.0,1},{\"CasterDowntime\",129.5,132.0,1},{\"CasterDowntime\",138.5,140.0,1},{\"CasterDowntime\",142.0,143.0,1},{\"CasterDowntime\",150.0,152.5,1},{\"CasterDowntime\",156.0,157.0,1},{\"CasterDowntime\",158.5,160.5,1}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						conditionLua = "local ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t<=0 and t>=-120",
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
						actionLua = "-- Ark Angels: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2059]=all[2059] or {}\nlocal state=all[2059]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(273)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(247.846,5.25)\n state.phases={{\"FullDowntime\",117.03,121.78,1},{\"CasterDowntime\",25.0,31.5,1},{\"CasterDowntime\",32.5,42.5,1},{\"CasterDowntime\",64.5,65.5,1},{\"CasterDowntime\",68.5,73.5,1},{\"CasterDowntime\",74.5,77.0,1},{\"CasterDowntime\",105.0,109.0,1},{\"CasterDowntime\",147.0,150.5,1},{\"CasterDowntime\",221.0,222.0,1},{\"CasterDowntime\",240.5,241.5,1},{\"CasterDowntime\",243.5,246.5,1},{\"CasterDowntime\",247.5,248.5,1},{\"CasterDowntime\",251.0,253.0,1},{\"CasterDowntime\",256.5,263.5,1}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						actionLua = "-- Ark Angels: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2059]=all[2059] or {}\nlocal state=all[2059]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(273)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(247.846,5.25)\n state.phases={{\"FullDowntime\",117.03,121.78,1},{\"CasterDowntime\",25.0,31.5,1},{\"CasterDowntime\",32.5,42.5,1},{\"CasterDowntime\",64.5,65.5,1},{\"CasterDowntime\",68.5,73.5,1},{\"CasterDowntime\",74.5,77.0,1},{\"CasterDowntime\",105.0,109.0,1},{\"CasterDowntime\",147.0,150.5,1},{\"CasterDowntime\",221.0,222.0,1},{\"CasterDowntime\",240.5,241.5,1},{\"CasterDowntime\",243.5,246.5,1},{\"CasterDowntime\",247.5,248.5,1},{\"CasterDowntime\",251.0,253.0,1},{\"CasterDowntime\",256.5,263.5,1}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						actionLua = "-- Ark Angels: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2059]=all[2059] or {}\nlocal state=all[2059]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(273)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(247.846,5.25)\n state.phases={{\"FullDowntime\",117.03,121.78,1},{\"CasterDowntime\",25.0,31.5,1},{\"CasterDowntime\",32.5,42.5,1},{\"CasterDowntime\",64.5,65.5,1},{\"CasterDowntime\",68.5,73.5,1},{\"CasterDowntime\",74.5,77.0,1},{\"CasterDowntime\",105.0,109.0,1},{\"CasterDowntime\",147.0,150.5,1},{\"CasterDowntime\",221.0,222.0,1},{\"CasterDowntime\",240.5,241.5,1},{\"CasterDowntime\",243.5,246.5,1},{\"CasterDowntime\",247.5,248.5,1},{\"CasterDowntime\",251.0,253.0,1},{\"CasterDowntime\",256.5,263.5,1}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						actionLua = "-- Ark Angels: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2059]=all[2059] or {}\nlocal state=all[2059]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(273)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(247.846,5.25)\n state.phases={{\"FullDowntime\",117.03,121.78,1},{\"CasterDowntime\",25.0,31.5,1},{\"CasterDowntime\",32.5,42.5,1},{\"CasterDowntime\",64.5,65.5,1},{\"CasterDowntime\",68.5,73.5,1},{\"CasterDowntime\",74.5,77.0,1},{\"CasterDowntime\",105.0,109.0,1},{\"CasterDowntime\",147.0,150.5,1},{\"CasterDowntime\",221.0,222.0,1},{\"CasterDowntime\",240.5,241.5,1},{\"CasterDowntime\",243.5,246.5,1},{\"CasterDowntime\",247.5,248.5,1},{\"CasterDowntime\",251.0,253.0,1},{\"CasterDowntime\",256.5,263.5,1}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						actionLua = "-- Ark Angels: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2059]=all[2059] or {}\nlocal state=all[2059]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(273)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(247.846,5.25)\n state.phases={{\"FullDowntime\",117.03,121.78,1},{\"CasterDowntime\",25.0,31.5,1},{\"CasterDowntime\",32.5,42.5,1},{\"CasterDowntime\",64.5,65.5,1},{\"CasterDowntime\",68.5,73.5,1},{\"CasterDowntime\",74.5,77.0,1},{\"CasterDowntime\",105.0,109.0,1},{\"CasterDowntime\",147.0,150.5,1},{\"CasterDowntime\",221.0,222.0,1},{\"CasterDowntime\",240.5,241.5,1},{\"CasterDowntime\",243.5,246.5,1},{\"CasterDowntime\",247.5,248.5,1},{\"CasterDowntime\",251.0,253.0,1},{\"CasterDowntime\",256.5,263.5,1}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						conditionLua = "local ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t<=0 and t>=-120",
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
						actionLua = "-- Shadow Lord: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2060]=all[2060] or {}\nlocal state=all[2060]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(305)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(280,14.37)\n state.phases={{\"CasterDowntime\",14.5,15.5,1},{\"CasterDowntime\",23.5,26.0,1},{\"CasterDowntime\",35.5,38.5,1},{\"CasterDowntime\",56.5,59.5,1},{\"CasterDowntime\",63.5,64.5,1},{\"CasterDowntime\",77.0,80.5,1},{\"CasterDowntime\",99.5,100.5,1},{\"CasterDowntime\",107.5,108.5,1},{\"CasterDowntime\",137.5,138.5,1},{\"CasterDowntime\",239.5,240.5,1},{\"CasterDowntime\",250.5,253.5,1},{\"GroundFieldMovement\",14.5,15.5,2},{\"GroundFieldMovement\",23.5,26.0,2},{\"GroundFieldMovement\",137.5,138.5,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						conditionLua = "local ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t<=0 and t>=-120",
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
						actionLua = "-- Prishe of the Distant Chains: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2057]=all[2057] or {}\nlocal state=all[2057]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(195)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(168,7.2)\n state.phases={{\"CasterDowntime\",29.5,32.5,1},{\"CasterDowntime\",34.5,36.0,1},{\"CasterDowntime\",87.0,88.0,1},{\"CasterDowntime\",90.0,93.0,1},{\"CasterDowntime\",98.5,101.0,1},{\"CasterDowntime\",125.5,127.5,1},{\"CasterDowntime\",132.0,134.0,1},{\"CasterDowntime\",148.0,151.5,1},{\"GroundFieldMovement\",132.0,134.0,2},{\"GroundFieldMovement\",148.0,151.5,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						conditionLua = "local ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t>=0 and t<=30",
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
						actionLua = "-- Fafnir the Forgotten: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2058]=all[2058] or {}\nlocal state=all[2058]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(183)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(155,11.67)\n state.phases={{\"CasterDowntime\",21.0,22.0,1},{\"CasterDowntime\",32.0,34.5,1},{\"CasterDowntime\",35.5,37.0,1},{\"CasterDowntime\",39.5,43.0,1},{\"CasterDowntime\",56.5,60.0,1},{\"CasterDowntime\",75.5,77.0,1},{\"CasterDowntime\",105.5,107.5,1},{\"CasterDowntime\",109.0,110.0,1},{\"CasterDowntime\",114.0,115.0,1},{\"CasterDowntime\",129.5,132.0,1},{\"CasterDowntime\",138.5,140.0,1},{\"CasterDowntime\",142.0,143.0,1},{\"CasterDowntime\",150.0,152.5,1},{\"CasterDowntime\",156.0,157.0,1},{\"CasterDowntime\",158.5,160.5,1}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						conditionLua = "local ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t>=0 and t<=30",
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
						actionLua = "-- Ark Angels: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2059]=all[2059] or {}\nlocal state=all[2059]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(273)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(247.846,5.25)\n state.phases={{\"FullDowntime\",117.03,121.78,1},{\"CasterDowntime\",25.0,31.5,1},{\"CasterDowntime\",32.5,42.5,1},{\"CasterDowntime\",64.5,65.5,1},{\"CasterDowntime\",68.5,73.5,1},{\"CasterDowntime\",74.5,77.0,1},{\"CasterDowntime\",105.0,109.0,1},{\"CasterDowntime\",147.0,150.5,1},{\"CasterDowntime\",221.0,222.0,1},{\"CasterDowntime\",240.5,241.5,1},{\"CasterDowntime\",243.5,246.5,1},{\"CasterDowntime\",247.5,248.5,1},{\"CasterDowntime\",251.0,253.0,1},{\"CasterDowntime\",256.5,263.5,1}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						conditionLua = "local ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t>=0 and t<=30",
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
						actionLua = "-- Shadow Lord: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2060]=all[2060] or {}\nlocal state=all[2060]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(305)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(280,14.37)\n state.phases={{\"CasterDowntime\",14.5,15.5,1},{\"CasterDowntime\",23.5,26.0,1},{\"CasterDowntime\",35.5,38.5,1},{\"CasterDowntime\",56.5,59.5,1},{\"CasterDowntime\",63.5,64.5,1},{\"CasterDowntime\",77.0,80.5,1},{\"CasterDowntime\",99.5,100.5,1},{\"CasterDowntime\",107.5,108.5,1},{\"CasterDowntime\",137.5,138.5,1},{\"CasterDowntime\",239.5,240.5,1},{\"CasterDowntime\",250.5,253.5,1},{\"GroundFieldMovement\",14.5,15.5,2},{\"GroundFieldMovement\",23.5,26.0,2},{\"GroundFieldMovement\",137.5,138.5,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						conditionLua = "local ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t>=0 and t<=30",
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
						actionLua = "-- Faithbound Kirin: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2067]=all[2067] or {}\nlocal state=all[2067]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(190.439)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(160.439,4.33)\n state.phases={{\"CasterDowntime\",30.5,32.5,1},{\"CasterDowntime\",33.5,38.0,1},{\"CasterDowntime\",59.5,63.0,1},{\"CasterDowntime\",92.5,93.5,1},{\"CasterDowntime\",95.5,101.0,1},{\"CasterDowntime\",105.5,112.0,1},{\"CasterDowntime\",114.5,115.5,1},{\"CasterDowntime\",120.0,122.0,1},{\"CasterDowntime\",123.0,124.5,1},{\"CasterDowntime\",129.0,130.0,1},{\"CasterDowntime\",140.5,141.5,1},{\"CasterDowntime\",144.5,146.0,1},{\"CasterDowntime\",156.5,159.5,1},{\"CasterDowntime\",160.5,161.5,1},{\"CasterDowntime\",166.5,168.0,1},{\"GroundFieldMovement\",140.5,141.5,2},{\"GroundFieldMovement\",144.5,146.0,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						conditionLua = "local ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t<=0 and t>=-120",
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
						actionLua = "-- Ultima and Omega: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2068]=all[2068] or {}\nlocal state=all[2068]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(239.23)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(209.23,18.66)\n state.phases={{\"FullDowntime\",119.16,146.62,1},{\"CasterDowntime\",31.5,35.0,1},{\"CasterDowntime\",36.5,38.0,1},{\"CasterDowntime\",42.5,45.5,1},{\"CasterDowntime\",78.0,80.5,1},{\"CasterDowntime\",88.0,89.0,1},{\"CasterDowntime\",106.5,108.0,1},{\"CasterDowntime\",110.0,111.5,1},{\"CasterDowntime\",148.5,152.0,1},{\"CasterDowntime\",160.5,163.5,1},{\"CasterDowntime\",165.5,166.5,1},{\"CasterDowntime\",170.0,172.0,1},{\"CasterDowntime\",183.0,184.0,1},{\"CasterDowntime\",188.5,189.5,1},{\"CasterDowntime\",193.5,195.0,1},{\"CasterDowntime\",197.0,202.5,1},{\"CasterDowntime\",204.5,206.0,1},{\"CasterDowntime\",208.5,212.0,1},{\"GroundFieldMovement\",165.5,166.5,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						actionLua = "-- Ultima and Omega: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2068]=all[2068] or {}\nlocal state=all[2068]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(239.23)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(209.23,18.66)\n state.phases={{\"FullDowntime\",119.16,146.62,1},{\"CasterDowntime\",31.5,35.0,1},{\"CasterDowntime\",36.5,38.0,1},{\"CasterDowntime\",42.5,45.5,1},{\"CasterDowntime\",78.0,80.5,1},{\"CasterDowntime\",88.0,89.0,1},{\"CasterDowntime\",106.5,108.0,1},{\"CasterDowntime\",110.0,111.5,1},{\"CasterDowntime\",148.5,152.0,1},{\"CasterDowntime\",160.5,163.5,1},{\"CasterDowntime\",165.5,166.5,1},{\"CasterDowntime\",170.0,172.0,1},{\"CasterDowntime\",183.0,184.0,1},{\"CasterDowntime\",188.5,189.5,1},{\"CasterDowntime\",193.5,195.0,1},{\"CasterDowntime\",197.0,202.5,1},{\"CasterDowntime\",204.5,206.0,1},{\"CasterDowntime\",208.5,212.0,1},{\"GroundFieldMovement\",165.5,166.5,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						conditionLua = "local ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t<=0 and t>=-120",
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
						actionLua = "-- Kam'lanaut: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2069]=all[2069] or {}\nlocal state=all[2069]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(310)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(280,20)\n state.phases={{\"Stun\",128.5,138.5,1},{\"CasterDowntime\",47.5,48.5,1},{\"CasterDowntime\",60.0,67.5,1},{\"CasterDowntime\",72.5,73.5,1},{\"CasterDowntime\",87.0,88.0,1},{\"CasterDowntime\",94.0,98.0,1},{\"CasterDowntime\",186.5,187.5,1},{\"CasterDowntime\",191.0,193.5,1},{\"CasterDowntime\",199.0,203.0,1},{\"CasterDowntime\",218.0,221.0,1},{\"CasterDowntime\",225.5,226.5,1},{\"CasterDowntime\",239.5,241.0,1}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						conditionLua = "local ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t<=0 and t>=-120",
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
						actionLua = "-- Eald'narche: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2070]=all[2070] or {}\nlocal state=all[2070]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(315.561)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(285.561,11.05)\n state.phases={{\"FullDowntime\",154.06,187.25,1},{\"Stun\",152.5,184.5,1},{\"CasterDowntime\",20.0,24.0,1},{\"CasterDowntime\",42.5,45.5,1},{\"CasterDowntime\",46.5,47.5,1},{\"CasterDowntime\",64.5,68.5,1},{\"CasterDowntime\",69.5,76.0,1},{\"CasterDowntime\",87.0,88.0,1},{\"CasterDowntime\",93.5,95.0,1},{\"CasterDowntime\",96.0,97.0,1},{\"CasterDowntime\",109.0,112.0,1},{\"CasterDowntime\",125.5,127.0,1},{\"CasterDowntime\",193.0,194.0,1},{\"CasterDowntime\",197.0,202.0,1},{\"CasterDowntime\",229.0,234.5,1},{\"CasterDowntime\",236.5,238.0,1},{\"CasterDowntime\",239.5,243.5,1},{\"CasterDowntime\",250.5,258.0,1},{\"CasterDowntime\",266.5,269.5,1},{\"CasterDowntime\",285.0,286.0,1},{\"CasterDowntime\",291.0,293.0,1},{\"GroundFieldMovement\",20.0,24.0,2},{\"GroundFieldMovement\",193.0,194.0,2},{\"GroundFieldMovement\",266.5,269.5,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						conditionLua = "local ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t<=0 and t>=-120",
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
						actionLua = "-- Faithbound Kirin: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2067]=all[2067] or {}\nlocal state=all[2067]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(190.439)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(160.439,4.33)\n state.phases={{\"CasterDowntime\",30.5,32.5,1},{\"CasterDowntime\",33.5,38.0,1},{\"CasterDowntime\",59.5,63.0,1},{\"CasterDowntime\",92.5,93.5,1},{\"CasterDowntime\",95.5,101.0,1},{\"CasterDowntime\",105.5,112.0,1},{\"CasterDowntime\",114.5,115.5,1},{\"CasterDowntime\",120.0,122.0,1},{\"CasterDowntime\",123.0,124.5,1},{\"CasterDowntime\",129.0,130.0,1},{\"CasterDowntime\",140.5,141.5,1},{\"CasterDowntime\",144.5,146.0,1},{\"CasterDowntime\",156.5,159.5,1},{\"CasterDowntime\",160.5,161.5,1},{\"CasterDowntime\",166.5,168.0,1},{\"GroundFieldMovement\",140.5,141.5,2},{\"GroundFieldMovement\",144.5,146.0,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						conditionLua = "local ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t>=0 and t<=30",
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
						actionLua = "-- Ultima and Omega: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2068]=all[2068] or {}\nlocal state=all[2068]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(239.23)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(209.23,18.66)\n state.phases={{\"FullDowntime\",119.16,146.62,1},{\"CasterDowntime\",31.5,35.0,1},{\"CasterDowntime\",36.5,38.0,1},{\"CasterDowntime\",42.5,45.5,1},{\"CasterDowntime\",78.0,80.5,1},{\"CasterDowntime\",88.0,89.0,1},{\"CasterDowntime\",106.5,108.0,1},{\"CasterDowntime\",110.0,111.5,1},{\"CasterDowntime\",148.5,152.0,1},{\"CasterDowntime\",160.5,163.5,1},{\"CasterDowntime\",165.5,166.5,1},{\"CasterDowntime\",170.0,172.0,1},{\"CasterDowntime\",183.0,184.0,1},{\"CasterDowntime\",188.5,189.5,1},{\"CasterDowntime\",193.5,195.0,1},{\"CasterDowntime\",197.0,202.5,1},{\"CasterDowntime\",204.5,206.0,1},{\"CasterDowntime\",208.5,212.0,1},{\"GroundFieldMovement\",165.5,166.5,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						conditionLua = "local ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t>=0 and t<=30",
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
						actionLua = "-- Kam'lanaut: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2069]=all[2069] or {}\nlocal state=all[2069]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(310)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(280,20)\n state.phases={{\"Stun\",128.5,138.5,1},{\"CasterDowntime\",47.5,48.5,1},{\"CasterDowntime\",60.0,67.5,1},{\"CasterDowntime\",72.5,73.5,1},{\"CasterDowntime\",87.0,88.0,1},{\"CasterDowntime\",94.0,98.0,1},{\"CasterDowntime\",186.5,187.5,1},{\"CasterDowntime\",191.0,193.5,1},{\"CasterDowntime\",199.0,203.0,1},{\"CasterDowntime\",218.0,221.0,1},{\"CasterDowntime\",225.5,226.5,1},{\"CasterDowntime\",239.5,241.0,1}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						conditionLua = "local ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t>=0 and t<=30",
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
						actionLua = "-- Eald'narche: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2070]=all[2070] or {}\nlocal state=all[2070]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(315.561)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(285.561,11.05)\n state.phases={{\"FullDowntime\",154.06,187.25,1},{\"Stun\",152.5,184.5,1},{\"CasterDowntime\",20.0,24.0,1},{\"CasterDowntime\",42.5,45.5,1},{\"CasterDowntime\",46.5,47.5,1},{\"CasterDowntime\",64.5,68.5,1},{\"CasterDowntime\",69.5,76.0,1},{\"CasterDowntime\",87.0,88.0,1},{\"CasterDowntime\",93.5,95.0,1},{\"CasterDowntime\",96.0,97.0,1},{\"CasterDowntime\",109.0,112.0,1},{\"CasterDowntime\",125.5,127.0,1},{\"CasterDowntime\",193.0,194.0,1},{\"CasterDowntime\",197.0,202.0,1},{\"CasterDowntime\",229.0,234.5,1},{\"CasterDowntime\",236.5,238.0,1},{\"CasterDowntime\",239.5,243.5,1},{\"CasterDowntime\",250.5,258.0,1},{\"CasterDowntime\",266.5,269.5,1},{\"CasterDowntime\",285.0,286.0,1},{\"CasterDowntime\",291.0,293.0,1},{\"GroundFieldMovement\",20.0,24.0,2},{\"GroundFieldMovement\",193.0,194.0,2},{\"GroundFieldMovement\",266.5,269.5,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						conditionLua = "local ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t>=0 and t<=30",
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
						actionLua = "-- Re-anchor the Citadel Siege transition to the real Ultima Tractor Field cast.\n-- Local pull: start 95.157; both bosses unavailable 101.266; first available 127.828.\n-- BossMod: 5s cast, then 24.4s + 3.3s until Ultima returns. Native channel max excludes ~0.3s.\nlocal A=TensorCore.API.TensorACR\nlocal state=data.allianceAutoSimSchedules[2068]\nif state.omegaReanchored then self.used=true;return end\nif not self.anchorSetup then\n local t=A.getAutoSimTime()\n local startTime=t+eventArgs.channelTimeMax+1.4\n local endTime=t+eventArgs.channelTimeMax+28\n local delta=startTime-119.16\n self.newKill=239.23+delta\n self.newPhases={}\n for _,p in ipairs(state.phases) do\n  if p[1]~=\"FullDowntime\" then\n   local a,b=p[2],p[3]\n   if a>=146.62 then\n    self.newPhases[#self.newPhases+1]={p[1],a+delta,b+delta,p[4]}\n   elseif b<=t then\n    self.newPhases[#self.newPhases+1]={p[1],a,b,p[4]}\n   elseif a<t and t-a>=0.25 then\n    self.newPhases[#self.newPhases+1]={p[1],a,t,p[4]}\n   end\n  end\n end\n self.newPhases[#self.newPhases+1]={\"FullDowntime\",startTime,endTime,1}\n A.setAutoSimKillTime(self.newKill)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(self.newKill-30,18.66)\n self.nextPhase=1\n self.anchorSetup=true\nend\nwhile self.nextPhase<=#self.newPhases do\n local p=self.newPhases[self.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n self.nextPhase=self.nextPhase+1\nend\nstate.phases=self.newPhases\nstate.omegaReanchored=true\nself.used=true\n",
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
						actionLua = "local A=TensorCore.API.TensorACR\nlocal state=data.allianceAutoSimSchedules[2070]\nlocal function transition()\n local s=state.ealdTransition\n if not s then\n  s={baseReturn=187.25,future={}}\n  for _,p in ipairs(state.phases) do\n   if p[1]==\"FullDowntime\" then s.full=p end\n   if (p[1]==\"CasterDowntime\" or p[1]==\"GroundFieldMovement\") and p[2]>=187.25 then\n    s.future[#s.future+1]={phase=p,startTime=p[2],endTime=p[3]}\n   end\n  end\n  state.ealdTransition=s\n end\n return s\nend\nlocal function fullWindow(s,startTime,endTime)\n local p=s.full\n p[2],p[3]=startTime,endTime\n p[5]=A.setAutoSimPhase(p[5],startTime,endTime,p[4])\n local delta=endTime-s.baseReturn\n for _,b in ipairs(s.future) do\n  local q=b.phase\n  q[2],q[3]=b.startTime+delta,b.endTime+delta\n  q[5]=A.setAutoSimPhase(q[5],q[2],q[3],q[4])\n end\nend\n-- Phase Shift's native 2.7s channel precedes disappearance by approximately 0.5s.\n-- BossMod forecasts a 30.3s absence. Actual targetability edges refine both bounds.\nlocal s=transition()\ns.bossID=eventArgs.entityID\nlocal startTime=A.getAutoSimTime()+eventArgs.channelTimeMax+0.5\nfullWindow(s,startTime,startTime+30.3)\ns.armed=true\nself.used=true\n",
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
						conditionLua = "local all=data.allianceAutoSimSchedules\nlocal s=all and all[2070]\nreturn s~=nil and s.done and TensorCore.API.TensorACR.getAutoSimTime()<240 and (not s.ealdTransition or not s.ealdTransition.armed)",
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
						actionLua = "local A=TensorCore.API.TensorACR\nlocal state=data.allianceAutoSimSchedules[2070]\nlocal function transition()\n local s=state.ealdTransition\n if not s then\n  s={baseReturn=187.25,future={}}\n  for _,p in ipairs(state.phases) do\n   if p[1]==\"FullDowntime\" then s.full=p end\n   if (p[1]==\"CasterDowntime\" or p[1]==\"GroundFieldMovement\") and p[2]>=187.25 then\n    s.future[#s.future+1]={phase=p,startTime=p[2],endTime=p[3]}\n   end\n  end\n  state.ealdTransition=s\n end\n return s\nend\nlocal function fullWindow(s,startTime,endTime)\n local p=s.full\n p[2],p[3]=startTime,endTime\n p[5]=A.setAutoSimPhase(p[5],startTime,endTime,p[4])\n local delta=endTime-s.baseReturn\n for _,b in ipairs(s.future) do\n  local q=b.phase\n  q[2],q[3]=b.startTime+delta,b.endTime+delta\n  q[5]=A.setAutoSimPhase(q[5],q[2],q[3],q[4])\n end\nend\nlocal s=transition()\nlocal t=A.getAutoSimTime()\nif eventArgs.isTargetable then\n fullWindow(s,s.full[2],t)\n s.finished=true\nelse\n fullWindow(s,t,t+30.3)\n s.disappeared=true\nend\nself.used=true\n",
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
						conditionLua = "local all=data.allianceAutoSimSchedules\nlocal s=all and all[2070]\nreturn s~=nil and s.done and TensorCore.API.TensorACR.getAutoSimTime()<240 and s.ealdTransition~=nil and s.ealdTransition.armed and not s.ealdTransition.finished and eventArgs.entityID==s.ealdTransition.bossID and ((not eventArgs.isTargetable and not s.ealdTransition.disappeared) or (eventArgs.isTargetable and s.ealdTransition.disappeared))",
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
						actionLua = "-- Capture the verified native status immediately; some statuses expose no readable duration.\n-- A 32s fallback is an estimate from two native knockdown loops; recovery refines the end.\nlocal A=TensorCore.API.TensorACR\nlocal state=data.allianceAutoSimSchedules[2070]\nlocal t=A.getAutoSimTime()\nlocal buff=TensorCore.getBuff(eventArgs.entityID,1963)\nlocal duration=(buff and buff.duration and buff.duration>0) and buff.duration or 32\nfor _,p in ipairs(state.phases) do\n if p[1]==\"Stun\" then\n  p[2],p[3]=t,t+duration\n  p[5]=A.setAutoSimPhase(p[5],p[2],p[3],p[4])\n  state.ealdStunObserved=true\n  state.ealdStunStart=t\n  state.ealdStunDurationEstimated=not (buff and buff.duration and buff.duration>0)\n  self.used=true\n  return\n end\nend\nself.used=true\n",
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
						conditionLua = "local all=data.allianceAutoSimSchedules\nlocal s=all and all[2070]\nreturn s~=nil and s.done and TensorCore.API.TensorACR.getAutoSimTime()<240 and not s.ealdStunObserved and eventArgs.entityID==TensorCore.mGetPlayer().id",
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
						actionLua = "local A=TensorCore.API.TensorACR\nlocal state=data.allianceAutoSimSchedules[2070]\nlocal t=A.getAutoSimTime()\nfor _,p in ipairs(state.phases) do\n if p[1]==\"Stun\" and t>p[2] then\n  p[3]=t\n  p[5]=A.setAutoSimPhase(p[5],p[2],p[3],p[4])\n  state.ealdStunFinished=true\n  break\n end\nend\nself.used=true\n",
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
						conditionLua = "local schedules = data.allianceAutoSimSchedules\nlocal state = schedules and schedules[2070]\nif not state or state.done ~= true or state.ealdStunObserved ~= true or state.ealdStunFinished then\n    return false\nend\n\nlocal player = TensorCore.mGetPlayer()\nreturn player ~= nil and eventArgs.entityID == player.id and TensorCore.API.TensorACR.getAutoSimTime() < 240",
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
						actionLua = "local function refresh(h)\n local A=TensorCore.API.TensorACR\n if Now()>=h.deadline or A.getAutoSimTime()>=h.endTime then return false end\n local player=TensorCore.mGetPlayer()\n local safe=false\n if player and player.alive then\n  local dx,dz=player.pos.x-h.x,player.pos.z-h.z\n  local forward=dx*math.sin(h.heading)+dz*math.cos(h.heading)\n  -- Half-room cone: 180 degrees, with a conservative 1y position margin.\n  safe=dx*dx+dz*dz>(h.radius+1)*(h.radius+1) or forward < -1\n end\n if safe and not h.suppressed then\n  A.removeAutoSimPhase(h.phase[5])\n  h.phase[5]=nil\n  h.suppressed=true\n elseif not safe and h.suppressed then\n  h.phase[5]=A.addAutoSimPhase(\"CasterDowntime\",h.startTime,h.endTime,h.phase[4])\n  h.suppressed=h.phase[5]==nil\n end\n return true\nend\nlocal state=data.allianceAutoSimSchedules[2067]\nlocal phase\nfor _,p in ipairs(state.phases) do\n if p[1]==\"CasterDowntime\" and p[2]==105.5 and p[3]==112 then phase=p;break end\nend\nif not phase then self.used=true;return end\nlocal h=data.allianceConditionalCleave\nif not h or h.phase~=phase then\n if phase[5]==nil then self.used=true;return end\n h={phase=phase,startTime=105.5,endTime=112,radius=30,suppressed=false}\n data.allianceConditionalCleave=h\nend\nh.x,h.z,h.heading=eventArgs.x,eventArgs.z,eventArgs.heading\nh.deadline=eventArgs.startTime+eventArgs.duration*1000+500\nh.refresh=refresh\nif not h.refresh(h) then data.allianceConditionalCleave=nil end\nself.used=true\n",
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
						conditionLua = "local all=data.allianceAutoSimSchedules\nlocal s=all and all[2067]\nif not s or not s.done then return false end\nlocal t=TensorCore.API.TensorACR.getAutoSimTime()\nlocal p=TensorCore.mGetPlayer()\nreturn p~=nil and (p.job==25 or p.job==27 or p.job==35 or p.job==42 or p.job==24 or p.job==28 or p.job==33 or p.job==40) and t>=95 and t<112",
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
						actionLua = "local function refresh(h)\n local A=TensorCore.API.TensorACR\n if Now()>=h.deadline or A.getAutoSimTime()>=h.endTime then return false end\n local player=TensorCore.mGetPlayer()\n local safe=false\n if player and player.alive then\n  local dx,dz=player.pos.x-h.x,player.pos.z-h.z\n  local forward=dx*math.sin(h.heading)+dz*math.cos(h.heading)\n  -- Half-room cone: 180 degrees, with a conservative 1y position margin.\n  safe=dx*dx+dz*dz>(h.radius+1)*(h.radius+1) or forward < -1\n end\n if safe and not h.suppressed then\n  A.removeAutoSimPhase(h.phase[5])\n  h.phase[5]=nil\n  h.suppressed=true\n elseif not safe and h.suppressed then\n  h.phase[5]=A.addAutoSimPhase(\"CasterDowntime\",h.startTime,h.endTime,h.phase[4])\n  h.suppressed=h.phase[5]==nil\n end\n return true\nend\nlocal state=data.allianceAutoSimSchedules[2069]\nlocal phase\nfor _,p in ipairs(state.phases) do\n if p[1]==\"CasterDowntime\" and p[2]==94 and p[3]==98 then phase=p;break end\nend\nif not phase then self.used=true;return end\nlocal h=data.allianceConditionalCleave\nif not h or h.phase~=phase then\n if phase[5]==nil then self.used=true;return end\n h={phase=phase,startTime=94,endTime=98,radius=80,suppressed=false}\n data.allianceConditionalCleave=h\nend\nh.x,h.z,h.heading=eventArgs.x,eventArgs.z,eventArgs.heading\nh.deadline=eventArgs.startTime+eventArgs.duration*1000+500\nh.refresh=refresh\nif not h.refresh(h) then data.allianceConditionalCleave=nil end\nself.used=true\n",
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
						conditionLua = "local all=data.allianceAutoSimSchedules\nlocal s=all and all[2069]\nif not s or not s.done then return false end\nlocal t=TensorCore.API.TensorACR.getAutoSimTime()\nlocal p=TensorCore.mGetPlayer()\nreturn p~=nil and (p.job==25 or p.job==27 or p.job==35 or p.job==42 or p.job==24 or p.job==28 or p.job==33 or p.job==40) and t>=85 and t<98",
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
						actionLua = "-- Shantotto the Demon: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2071]=all[2071] or {}\nlocal state=all[2071]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(281.635)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(251.635,7.3)\n state.phases={{\"FullDowntime\",152.34,163.66,1},{\"CasterDowntime\",30.5,33.0,1},{\"CasterDowntime\",46.0,47.0,1},{\"CasterDowntime\",58.5,60.0,1},{\"CasterDowntime\",75.5,78.5,1},{\"CasterDowntime\",84.5,95.0,1},{\"CasterDowntime\",115.5,120.5,1},{\"CasterDowntime\",122.0,123.0,1},{\"CasterDowntime\",124.0,126.5,1},{\"CasterDowntime\",144.5,148.0,1},{\"CasterDowntime\",166.5,169.5,1},{\"CasterDowntime\",189.5,193.0,1},{\"CasterDowntime\",213.5,215.0,1},{\"CasterDowntime\",225.0,226.0,1},{\"CasterDowntime\",230.0,232.5,1},{\"CasterDowntime\",242.5,260.0,1},{\"GroundFieldMovement\",46.0,47.0,2},{\"GroundFieldMovement\",242.5,260.0,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						conditionLua = "local ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t<=0 and t>=-120",
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
						actionLua = "-- Alexander Resurrected: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2072]=all[2072] or {}\nlocal state=all[2072]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(281.92)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(251.92,3.93)\n state.phases={{\"CasterDowntime\",27.5,34.0,1},{\"CasterDowntime\",38.0,42.5,1},{\"CasterDowntime\",47.0,50.5,1},{\"CasterDowntime\",52.0,53.5,1},{\"CasterDowntime\",61.5,64.0,1},{\"CasterDowntime\",70.0,72.0,1},{\"CasterDowntime\",92.0,93.5,1},{\"CasterDowntime\",99.0,101.5,1},{\"CasterDowntime\",102.5,104.5,1},{\"CasterDowntime\",106.5,108.0,1},{\"CasterDowntime\",166.5,167.5,1},{\"CasterDowntime\",171.5,175.0,1},{\"CasterDowntime\",177.5,180.0,1},{\"CasterDowntime\",211.5,217.5,1},{\"CasterDowntime\",223.5,229.0,1},{\"CasterDowntime\",239.0,242.5,1},{\"CasterDowntime\",244.0,245.5,1},{\"CasterDowntime\",249.5,250.5,1},{\"CasterDowntime\",252.0,253.0,1},{\"CasterDowntime\",256.0,257.5,1},{\"CasterDowntime\",265.5,269.0,1},{\"CasterDowntime\",271.5,275.0,1},{\"GroundFieldMovement\",70.0,72.0,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						conditionLua = "local ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t<=0 and t>=-120",
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
						actionLua = "-- Promathia: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2073]=all[2073] or {}\nlocal state=all[2073]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(360.864)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(330.864,4.39)\n state.phases={{\"FullDowntime\",112.86,126.89,1},{\"FullDowntime\",178.4,185.0,1},{\"Stun\",197.5,205.5,1},{\"CasterDowntime\",24.0,35.0,1},{\"CasterDowntime\",37.5,38.5,1},{\"CasterDowntime\",63.0,64.0,1},{\"CasterDowntime\",65.5,69.0,1},{\"CasterDowntime\",94.0,97.5,1},{\"CasterDowntime\",99.0,109.0,1},{\"CasterDowntime\",127.5,129.0,1},{\"CasterDowntime\",133.5,134.5,1},{\"CasterDowntime\",153.0,154.5,1},{\"CasterDowntime\",159.5,161.5,1},{\"CasterDowntime\",186.0,189.0,1},{\"CasterDowntime\",205.5,207.5,1},{\"CasterDowntime\",210.5,211.5,1},{\"CasterDowntime\",218.0,222.0,1},{\"CasterDowntime\",224.0,225.5,1},{\"CasterDowntime\",249.0,261.0,1},{\"CasterDowntime\",296.0,306.0,1},{\"CasterDowntime\",310.0,313.5,1},{\"CasterDowntime\",339.0,347.5,1},{\"GroundFieldMovement\",218.0,222.0,2},{\"GroundFieldMovement\",224.0,225.5,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						conditionLua = "local ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t<=0 and t>=-120",
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
						actionLua = "-- Hollow King: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2074]=all[2074] or {}\nlocal state=all[2074]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(430.468)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(400.468,31.85)\n state.phases={{\"FullDowntime\",156.84,210.18,1},{\"Stun\",157.0,209.5,1},{\"CasterDowntime\",14.0,15.5,1},{\"CasterDowntime\",70.0,72.5,1},{\"CasterDowntime\",122.0,124.5,1},{\"CasterDowntime\",133.0,135.0,1},{\"CasterDowntime\",145.0,146.0,1},{\"CasterDowntime\",299.5,303.0,1},{\"CasterDowntime\",309.5,310.5,1},{\"CasterDowntime\",314.5,315.5,1},{\"CasterDowntime\",330.0,334.0,1},{\"CasterDowntime\",335.0,339.5,1},{\"CasterDowntime\",345.5,350.0,1},{\"CasterDowntime\",361.5,372.5,1},{\"CasterDowntime\",376.0,378.5,1},{\"CasterDowntime\",384.5,385.5,1},{\"GroundFieldMovement\",145.0,146.0,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						actionLua = "-- Hollow King: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2074]=all[2074] or {}\nlocal state=all[2074]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(430.468)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(400.468,31.85)\n state.phases={{\"FullDowntime\",156.84,210.18,1},{\"Stun\",157.0,209.5,1},{\"CasterDowntime\",14.0,15.5,1},{\"CasterDowntime\",70.0,72.5,1},{\"CasterDowntime\",122.0,124.5,1},{\"CasterDowntime\",133.0,135.0,1},{\"CasterDowntime\",145.0,146.0,1},{\"CasterDowntime\",299.5,303.0,1},{\"CasterDowntime\",309.5,310.5,1},{\"CasterDowntime\",314.5,315.5,1},{\"CasterDowntime\",330.0,334.0,1},{\"CasterDowntime\",335.0,339.5,1},{\"CasterDowntime\",345.5,350.0,1},{\"CasterDowntime\",361.5,372.5,1},{\"CasterDowntime\",376.0,378.5,1},{\"CasterDowntime\",384.5,385.5,1},{\"GroundFieldMovement\",145.0,146.0,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						conditionLua = "local ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t<=0 and t>=-120",
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
						actionLua = "-- Shantotto the Demon: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2071]=all[2071] or {}\nlocal state=all[2071]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(281.635)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(251.635,7.3)\n state.phases={{\"FullDowntime\",152.34,163.66,1},{\"CasterDowntime\",30.5,33.0,1},{\"CasterDowntime\",46.0,47.0,1},{\"CasterDowntime\",58.5,60.0,1},{\"CasterDowntime\",75.5,78.5,1},{\"CasterDowntime\",84.5,95.0,1},{\"CasterDowntime\",115.5,120.5,1},{\"CasterDowntime\",122.0,123.0,1},{\"CasterDowntime\",124.0,126.5,1},{\"CasterDowntime\",144.5,148.0,1},{\"CasterDowntime\",166.5,169.5,1},{\"CasterDowntime\",189.5,193.0,1},{\"CasterDowntime\",213.5,215.0,1},{\"CasterDowntime\",225.0,226.0,1},{\"CasterDowntime\",230.0,232.5,1},{\"CasterDowntime\",242.5,260.0,1},{\"GroundFieldMovement\",46.0,47.0,2},{\"GroundFieldMovement\",242.5,260.0,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						conditionLua = "local ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t>=0 and t<=30",
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
						actionLua = "-- Alexander Resurrected: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2072]=all[2072] or {}\nlocal state=all[2072]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(281.92)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(251.92,3.93)\n state.phases={{\"CasterDowntime\",27.5,34.0,1},{\"CasterDowntime\",38.0,42.5,1},{\"CasterDowntime\",47.0,50.5,1},{\"CasterDowntime\",52.0,53.5,1},{\"CasterDowntime\",61.5,64.0,1},{\"CasterDowntime\",70.0,72.0,1},{\"CasterDowntime\",92.0,93.5,1},{\"CasterDowntime\",99.0,101.5,1},{\"CasterDowntime\",102.5,104.5,1},{\"CasterDowntime\",106.5,108.0,1},{\"CasterDowntime\",166.5,167.5,1},{\"CasterDowntime\",171.5,175.0,1},{\"CasterDowntime\",177.5,180.0,1},{\"CasterDowntime\",211.5,217.5,1},{\"CasterDowntime\",223.5,229.0,1},{\"CasterDowntime\",239.0,242.5,1},{\"CasterDowntime\",244.0,245.5,1},{\"CasterDowntime\",249.5,250.5,1},{\"CasterDowntime\",252.0,253.0,1},{\"CasterDowntime\",256.0,257.5,1},{\"CasterDowntime\",265.5,269.0,1},{\"CasterDowntime\",271.5,275.0,1},{\"GroundFieldMovement\",70.0,72.0,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						conditionLua = "local ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t>=0 and t<=30",
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
						actionLua = "-- Promathia: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2073]=all[2073] or {}\nlocal state=all[2073]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(360.864)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(330.864,4.39)\n state.phases={{\"FullDowntime\",112.86,126.89,1},{\"FullDowntime\",178.4,185.0,1},{\"Stun\",197.5,205.5,1},{\"CasterDowntime\",24.0,35.0,1},{\"CasterDowntime\",37.5,38.5,1},{\"CasterDowntime\",63.0,64.0,1},{\"CasterDowntime\",65.5,69.0,1},{\"CasterDowntime\",94.0,97.5,1},{\"CasterDowntime\",99.0,109.0,1},{\"CasterDowntime\",127.5,129.0,1},{\"CasterDowntime\",133.5,134.5,1},{\"CasterDowntime\",153.0,154.5,1},{\"CasterDowntime\",159.5,161.5,1},{\"CasterDowntime\",186.0,189.0,1},{\"CasterDowntime\",205.5,207.5,1},{\"CasterDowntime\",210.5,211.5,1},{\"CasterDowntime\",218.0,222.0,1},{\"CasterDowntime\",224.0,225.5,1},{\"CasterDowntime\",249.0,261.0,1},{\"CasterDowntime\",296.0,306.0,1},{\"CasterDowntime\",310.0,313.5,1},{\"CasterDowntime\",339.0,347.5,1},{\"GroundFieldMovement\",218.0,222.0,2},{\"GroundFieldMovement\",224.0,225.5,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						conditionLua = "local ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t>=0 and t<=30",
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
						actionLua = "-- Hollow King: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2074]=all[2074] or {}\nlocal state=all[2074]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(430.468)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(400.468,31.85)\n state.phases={{\"FullDowntime\",156.84,210.18,1},{\"Stun\",157.0,209.5,1},{\"CasterDowntime\",14.0,15.5,1},{\"CasterDowntime\",70.0,72.5,1},{\"CasterDowntime\",122.0,124.5,1},{\"CasterDowntime\",133.0,135.0,1},{\"CasterDowntime\",145.0,146.0,1},{\"CasterDowntime\",299.5,303.0,1},{\"CasterDowntime\",309.5,310.5,1},{\"CasterDowntime\",314.5,315.5,1},{\"CasterDowntime\",330.0,334.0,1},{\"CasterDowntime\",335.0,339.5,1},{\"CasterDowntime\",345.5,350.0,1},{\"CasterDowntime\",361.5,372.5,1},{\"CasterDowntime\",376.0,378.5,1},{\"CasterDowntime\",384.5,385.5,1},{\"GroundFieldMovement\",145.0,146.0,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						conditionLua = "local ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t>=0 and t<=30",
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
						actionLua = "local api = TensorCore.API.TensorACR\nlocal entry = api.addBlacklistEntry(13719, \"Ark Shield\")\nif entry and (not entry.enabled or entry.allowIfTarget or entry.allowSmartDoT) then\n    entry.enabled = true\n    entry.allowIfTarget = false\n    entry.allowSmartDoT = false\n    api.saveDotBlacklist()\nend\nself.used = true",
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
						actionLua = "local api = TensorCore.API.TensorACR\napi.setAutoSimKillTime(160)\napi.clearAutoSimUncertainty()\napi.addAutoSimUncertainty(0, 20)\napi.clearAutoSimPhases(\"FullDowntime\")\napi.clearAutoSimPhases(\"CasterDowntime\")\nfor _, window in ipairs({{15, 17.3}, {30, 34}, {61, 64}, {81, 83.3}, {91, 95}, {119, 122}}) do\n    api.addAutoSimPhase(\"CasterDowntime\", window[1], window[2])\nend\ndata.wodAutoSim = {boss = eventArgs.entityID, content = 3231}\n\nself.used = true",
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
						conditionLua = "local ok, elapsed = pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(elapsed) == \"number\" and elapsed > 0 and elapsed < 30",
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
						actionLua = "local api = TensorCore.API.TensorACR\napi.setAutoSimKillTime(160)\napi.clearAutoSimUncertainty()\napi.addAutoSimUncertainty(0, 20)\napi.clearAutoSimPhases(\"FullDowntime\")\napi.clearAutoSimPhases(\"CasterDowntime\")\nfor _, window in ipairs({}) do\n    api.addAutoSimPhase(\"CasterDowntime\", window[1], window[2])\nend\ndata.wodAutoSim = {boss = eventArgs.entityID, content = 3227}\n\nself.used = true",
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
						conditionLua = "local ok, elapsed = pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(elapsed) == \"number\" and elapsed > 0 and elapsed < 30",
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
						actionLua = "local api = TensorCore.API.TensorACR\napi.setAutoSimKillTime(180)\napi.clearAutoSimUncertainty()\napi.addAutoSimUncertainty(0, 20)\napi.clearAutoSimPhases(\"FullDowntime\")\napi.clearAutoSimPhases(\"CasterDowntime\")\nfor _, window in ipairs({}) do\n    api.addAutoSimPhase(\"CasterDowntime\", window[1], window[2])\nend\ndata.wodAutoSim = {boss = eventArgs.entityID, content = 3234}\n\nself.used = true",
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
						conditionLua = "local ok, elapsed = pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(elapsed) == \"number\" and elapsed > 0 and elapsed < 30",
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
						actionLua = "local api = TensorCore.API.TensorACR\napi.setAutoSimKillTime(163)\napi.clearAutoSimUncertainty()\napi.addAutoSimUncertainty(0, 20)\napi.clearAutoSimPhases(\"FullDowntime\")\napi.clearAutoSimPhases(\"CasterDowntime\")\napi.clearAutoSimPhases(\"MeleeDowntime\")\nfor _, window in ipairs({}) do\n    api.addAutoSimPhase(\"CasterDowntime\", window[1], window[2])\nend\ndata.wodAutoSim = {boss = eventArgs.entityID, content = 3240}\ndata.wodAutoSim.downtime = api.addAutoSimPhase(\"FullDowntime\", 125, 142.2)\n-- After the long disappearance the boss returns away from the melee group: out of melee 2.2 s (first log) and 3.0 s (second log). Two clears.\ndata.wodAutoSim.melee = api.addAutoSimPhase(\"MeleeDowntime\", 142.2, 145.2)\nself.used = true",
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
						conditionLua = "local ok, elapsed = pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(elapsed) == \"number\" and elapsed > 0 and elapsed < 30",
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
						actionLua = "local s = data.wodAutoSim\nlocal api = TensorCore.API.TensorACR\nlocal now = api.getAutoSimTime()\n-- Two disappearances were observed (22-11 log): a short one around 26.6-30.9 s and the long one at 125-142 s / 142-159 s.\nif not eventArgs.isTargetable then\n    if now < 60 then\n        s.short = api.addAutoSimPhase(\"FullDowntime\", now, now + 4.5)\n        s.shortStart = now\n    else\n        s.departed = now\n        api.setAutoSimPhase(s.downtime, now, now + 17.1, 1)\n        if s.melee then api.setAutoSimPhase(s.melee, now + 17.1, now + 20.1, 1) end\n    end\nelse\n    if s.shortStart and not s.shortDone then\n        s.shortDone = true\n        if s.short then api.setAutoSimPhase(s.short, s.shortStart, now, 1) end\n        api.addAutoSimPhase(\"MeleeDowntime\", now, now + 4.8)\n    elseif s.departed then\n        s.returned = true\n        api.setAutoSimPhase(s.downtime, s.departed, now, 1)\n        if s.melee then api.setAutoSimPhase(s.melee, now, now + 3.0, 1) end\n    end\nend\nself.used = true",
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
						actionLua = "local s = data.wodAutoSim\nlocal p = TensorCore.mGetPlayer()\nlocal api = TensorCore.API.TensorACR\nlocal now = api.getAutoSimTime()\nlocal inside = p.pos.y < -490 and p.pos.y > -510\nlocal current = TensorCore.mGetTarget()\nif s.request and current and current.id == s.request then\n    d(\"[Cerberus] Confirmed target \" .. s.request)\n    s.request = nil\nend\nlocal function target(entity, reason)\n    if not entity or (current and current.id == entity.id) then return end\n    if p.castinginfo.castingid > 0 or p.castinginfo.channelingid > 0 then return end\n    if s.request == entity.id and now < s.retryAt then return end\n    d(string.format(\"[Cerberus] %s. Request %d; current %s\", reason, entity.id, tostring(current and current.id)))\n    s.request, s.retryAt = entity.id, now + 2\n    Player:SetTarget(entity.id)\nend\nlocal function endGap()\n    if not s.gap then return end\n    if now > s.gapStart then\n        api.setAutoSimPhase(s.gap, s.gapStart, now, 1)\n    else\n        api.removeAutoSimPhase(s.gap)\n    end\n    s.gap = nil\nend\nif not inside then\n    local boss = TensorCore.mGetEntity(s.boss)\n    endGap()\n    if boss and boss.targetable and boss.attackable then\n        target(boss, \"Returned from belly\")\n    end\n    s.belly = false\n    self.used = true\n    return\nend\ns.belly = true\nlocal wall, nearest\nfor _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=3238}) or {}) do\n    if candidate.alive and candidate.targetable and candidate.attackable then\n        local dx, dz = candidate.pos.x - p.pos.x, candidate.pos.z - p.pos.z\n        local distance = dx * dx + dz * dz\n        if current and candidate.id == current.id then\n            wall = candidate\n            break\n        end\n        if not nearest or distance < nearest then\n            wall, nearest = candidate, distance\n        end\n    end\nend\nif wall then\n    endGap()\n    target(wall, \"Attack Stomach Wall inside belly\")\nelse\n    local add\n    for _, candidate in pairs(TensorCore.getEntityGroupList(\"ContentID\", {contentid=3235}) or {}) do\n        if candidate.alive and candidate.targetable and candidate.attackable then\n            add = candidate\n            break\n        end\n    end\n    if add then\n        endGap()\n        target(add, \"Attack remaining belly add\")\n    elseif not s.gap then\n        s.gapStart = now\n        s.gapEnd = now + 8\n        s.gap = api.addAutoSimPhase(\"FullDowntime\", now, s.gapEnd, 1)\n    elseif now > s.gapEnd - 1 then\n        s.gapEnd = now + 8\n        api.setAutoSimPhase(s.gap, s.gapStart, s.gapEnd, 1)\n    end\nend\nself.used = true",
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
						actionLua = "self.used=true\nlocal s=data.a21\nif not s or not s.boss then return end\nlocal b=TensorCore.mGetEntity(s.boss)\nif not b or not b.hp or not b.alive or b.hp.percent<=0 then\n s.finished=true\n return\nend\nif not b.targetable then s.sample=nil;return end\nlocal api=TensorCore.API.TensorACR\nlocal now=api.getAutoSimTime()\nif type(now)~=\"number\" or now<=0 then return end\nlocal hp=b.hp.percent\nlocal sample=s.sample\nif not sample then s.sample={time=now,hp=hp};return end\nif now-sample.time<12 then return end\ns.sample={time=now,hp=hp}\nlocal rate=(sample.hp-hp)/(now-sample.time)\nif rate<=.05 then return end\nlocal estimate=now+math.max(3,math.min(600,hp/rate))\nif not s.estimate or math.abs(s.estimate-estimate)>=4 or now>=s.estimate-3 then\n api.setAutoSimKillTime(estimate)\n s.estimate=estimate\nend",
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
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 then return false end\nif not p.pos or (p.pos.x+230)^2+(p.pos.z-192)^2>34^2 then return false end\nlocal s=data.a21\nreturn p.incombat and s~=nil and not s.finished",
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
						actionLua = "self.used=true\nlocal e=eventArgs\nlocal b=TensorCore.mGetEntity(e.entityID)\nif not b or not b.pos or not e.channelTimeMax or e.channelTimeMax<=0 then return end\nlocal ms=math.floor((e.channelTimeMax+.65)*1000)\nlocal drawer=TensorCore.getStaticDrawer(0x803333FF,2)\nlocal p=b.pos\nlocal player=TensorCore.mGetPlayer()\nlocal dx,dz=player.pos.x-p.x,player.pos.z-p.z\nlocal distance=math.sqrt(dx*dx+dz*dz)\nlocal collider=e.spellID==20604 or e.spellID==20605\nlocal unsafe=false\nlocal cones={}\nlocal angles={0,-72,-144,144,72}\nlocal widths={30,45,15,45,30}\nfor i=1,5 do\n local degrees,half=angles[i],widths[i]\n if e.spellID~=20595 then\n  degrees=(i-1)*72+(e.spellID==20605 and -90 or e.spellID==20607 and -18 or e.spellID==20608 and 18 or 0)\n  half=(e.spellID==20607 or e.spellID==20608) and 18 or 15\n end\n local heading=p.h+math.rad(degrees)\n cones[#cones+1]={heading=heading,half=math.rad(half)}\n if not collider then drawer:addTimedCone(ms,p.x,p.y,p.z,30,math.rad(2*half),heading) end\n if distance<=30 and dx*math.sin(heading)+dz*math.cos(heading)>=distance*math.cos(math.rad(half)) then\n  unsafe=true\n end\nend\nlocal function onFloor(x,z)\n local dx,dz=x+230,z-192\n local r2=dx*dx+dz*dz\n if r2<12^2 then return false end\n if r2<=23.5^2 then return true end\n return (dx+15.155)^2+(dz+8.75)^2<=10.65^2 or\n        (dx-15.155)^2+(dz+8.75)^2<=10.65^2 or\n        dx*dx+(dz-17.5)^2<=10.65^2\nend\nlocal best,bestDist\nfor degrees=0,358,2 do\n local angle=math.rad(degrees)\n for radius=13,28 do\n  local x,z=p.x+radius*math.sin(angle),p.z+radius*math.cos(angle)\n  if onFloor(x,z) then\n   local clear=true\n   for _,cone in ipairs(cones) do\n    if math.cos(angle-cone.heading)>=math.cos(cone.half+math.asin(1.45/radius)) then\n     clear=false\n     break\n    end\n   end\n   if clear then\n    local dist=(x-player.pos.x)^2+(z-player.pos.z)^2\n    if not bestDist or dist<bestDist then best,bestDist={x=x,y=player.pos.y+.05,z=z},dist end\n   end\n  end\n end\nend\nif best then\n data.a21CannonGuide={pos=best,deadline=Now()+ms,boss=e.entityID,collider=collider}\nelse\n data.a21CannonGuide=nil\nend\nlocal s=data.a21\nif s and not s.finished and unsafe then\n local api=TensorCore.API.TensorACR\n local now=api.getAutoSimTime()\n if type(now)==\"number\" and now>0 then\n  local hit=now+e.channelTimeMax\n  api.addAutoSimPhase(\"CasterDowntime\",math.max(now,hit-2),hit,1)\n end\nend",
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
						actionLua = "self.used=true\nlocal e=eventArgs\nlocal ms=math.floor(e.startTime+e.duration*1000-Now())\nif ms<=0 then return end\nlocal drawer=TensorCore.getStaticDrawer(0x803333FF,2)\nif e.aoeID==20620 then\n drawer:addTimedRect(ms,e.x,e.y,e.z,60,10,e.heading,0,false,true)\nelse\n drawer:addTimedCone(ms,e.x,e.y,e.z,30,math.rad(100),e.heading)\nend",
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
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 then return false end\nif not p.pos or (p.pos.x+230)^2+(p.pos.z-192)^2>34^2 then return false end\nlocal s=data.a21\nlocal id=eventArgs.aoeID\nif not (s~=nil and not s.finished and (id==20620 or id==21427)) then return false end\nlocal boss=TensorCore.mGetEntity(s.boss)\nif not boss or not boss.alive or not boss.hp or boss.hp.percent<=0 then return false end\nreturn true",
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
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal g=data.a21CannonGuide\nlocal p=TensorCore.mGetPlayer()\nlocal boss=TensorCore.mGetEntity(g.boss)\nif not boss or not boss.alive then data.a21CannonGuide=nil;return end\nlocal ms=math.min(450,math.floor(g.deadline-Now()))\nif ms<=0 then return end\nlocal spot=g.pos\nlocal drawer=TensorCore.getStaticDrawer(0xB033FF33,2)\nif not g.circle or not drawer:updateTimedCircle(g.circle,ms,spot.x,spot.y,spot.z,1.2,0,false,true) then\n g.circle=drawer:addTimedCircle(ms,spot.x,spot.y,spot.z,1.2,0,false,true)\nend\nlocal distance=TensorCore.getDistance2d(p.pos,spot)\nif distance>1.2 then\n local h=TensorCore.getHeadingToTarget(p.pos,spot)\n local length=math.max(.1,distance-.9)\n if not g.arrow or not drawer:updateTimedArrow(g.arrow,ms,p.pos.x,spot.y,p.pos.z,h,length,.4,.8,1,0,false) then\n  g.arrow=drawer:addTimedArrow(ms,p.pos.x,spot.y,p.pos.z,h,length,.4,.8,1,0,false)\n end\nelseif g.arrow then\n Argus.deleteTimedShape(g.arrow)\n g.arrow=nil\nend",
						conditions = 
						{
							
							{
								"72fd910c-8656-6b05-a83c-7cb513c5be5d",
								true,
							},
						},
						name = "Aegis Unit closest cannon safe spot and arrow",
						uuid = "59d5f086-dfa9-27ae-b17b-0ed9fa8c5727",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or (p.pos.x+230)^2+(p.pos.z-192)^2>34^2 then return false end\nlocal g=data.a21CannonGuide\nreturn p.incombat and p.alive and g~=nil and not g.collider and g.deadline>Now()",
						name = "813P-operated Aegis Unit arena and mechanic",
						uuid = "72fd910c-8656-6b05-a83c-7cb513c5be5d",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/813P-operated Aegis Unit/Draws",
			name = "Aegis Unit closest cannon safe spot and arrow",
			throttleTime = 125,
			uuid = "5ee64429-f0b6-4593-8b9d-1cb570b8de07",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used=true\nlocal g=data.a21CannonGuide\nlocal player=TensorCore.mGetPlayer()\nlocal spot=g.pos\nlocal drawer=TensorCore.getStaticDrawer(0xB033FF33,2)\nlocal flags=Argus2.RenderFlags.FLAG_WARP_TERRAIN\ndrawer:addCircle(spot.x,spot.y,spot.z,1.2,false,flags)\nif g.arrived then return end\nlocal distance=TensorCore.getDistance2d(player.pos,spot)\nif distance<=1.2 then\n g.arrived=true\n return\nend\nlocal h=TensorCore.getHeadingToTarget(player.pos,spot)\ndrawer:addArrow(player.pos.x,spot.y,player.pos.z,h,math.max(.1,distance-.9),.4,.8,1,false,flags)",
						conditions = 
						{
							
							{
								"125639d7-c772-a76e-92be-4903169fb538",
								true,
							},
						},
						name = "Aegis Unit Collider Cannons closest safe arrow",
						uuid = "23a6188a-4f13-f728-b587-7bff5b9967db",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local g=data.a21CannonGuide\nif not g or not g.collider or g.deadline<=Now() then return false end\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or (p.pos.x+230)^2+(p.pos.z-192)^2>34^2 then return false end\nreturn p.alive and p.incombat",
						name = "813P-operated Aegis Unit arena and mechanic",
						uuid = "125639d7-c772-a76e-92be-4903169fb538",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/813P-operated Aegis Unit/Draws",
			eventType = 12,
			name = "Aegis Unit Collider Cannons closest safe arrow",
			uuid = "e5a96a5a-e04c-7c83-a5b7-ce04f769e704",
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
						actionLua = "self.used=true\nlocal api=TensorCore.API.TensorACR\nlocal now=api.getAutoSimTime()\nif type(now)~=\"number\" or now<=0 or now>20 then return end\nlocal estimate=now+321\napi.setAutoSimKillTime(estimate)\napi.addAutoSimUncertainty(0,40)\ndata.a23={estimate=estimate}",
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
						actionLua = "self.used=true\nlocal e=eventArgs\nlocal b=TensorCore.mGetEntity(e.entityID)\nif not b or not b.pos or not e.channelTimeMax or e.channelTimeMax<=0 then return end\nlocal id=e.spellID\nlocal sharp=id==20393 or id==20394 or id>=21777\nlocal right=id==20393 or id==20396 or (id>=21773 and id%2==1)\nlocal p=b.pos\nlocal heading=p.h+(right and -math.pi/2 or math.pi/2)\nlocal duration=e.channelTimeMax+(sharp and 1.5 or .5)\nlocal ms=math.floor(duration*1000)\nlocal draw=TensorCore.getStaticDrawer(0x503333FF,2)\nif sharp then\n draw:addTimedRect(ms,p.x,p.y,p.z,30,200,heading,0,false,true)\nelse\n local now=Now()\n local s=data.a23Swipes\n if not s or now>s.expires then\n  s={queue={},seen={},expires=now}\n  data.a23Swipes=s\n end\n local deadline=now+ms\n if not s.seen[e.entityID] then\n  s.seen[e.entityID]=true\n  s.queue[#s.queue+1]={content=e.entityContentID,hit=right and 20591 or 20592,\n   x=p.x,z=p.z,heading=heading,deadline=deadline}\n  table.sort(s.queue,function(a,b)return a.deadline<b.deadline end)\n  s.expires=math.max(s.expires,deadline+1000)\n end\nend\nlocal player=TensorCore.mGetPlayer()\nlocal dx,dz=player.pos.x-p.x,player.pos.z-p.z\nlocal forward=dx*math.sin(heading)+dz*math.cos(heading)\nlocal s=data.a23\nif s and forward>0 and (not sharp or forward<30) then\n local api=TensorCore.API.TensorACR\n local now=api.getAutoSimTime()\n if type(now)==\"number\" and now>0 then\n  local hit=now+duration\n  if not s.movementAt or math.abs(s.movementAt-hit)>1.5 then\n   s.movementAt=hit\n   api.addAutoSimPhase(\"CasterDowntime\",hit-2,hit,1)\n  end\n end\nend",
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
						actionLua = "self.used=true\nlocal wave=data.a23Swipes.queue[1]\nlocal player=TensorCore.mGetPlayer()\nlocal p=player.pos\nif not wave.solved then\n wave.solved=true\n local best,bestDistance\n local sin,cos=math.sin(wave.heading),math.cos(wave.heading)\n -- Stay inside the central floor and give the swipe edge room.\n for x=-248,-212 do\n  for z=-190,-154 do\n   if (x+230)^2+(z+172)^2<=18^2 and (x-wave.x)*sin+(z-wave.z)*cos<=-2.5 then\n    local distance=(x-p.x)^2+(z-p.z)^2\n    if not bestDistance or distance<bestDistance then\n     best,bestDistance={x=x,y=p.y+.05,z=z},distance\n    end\n   end\n  end\n end\n wave.spot=best\nend\nlocal spot=wave.spot\nif not spot then return end\nlocal drawer=TensorCore.getStaticDrawer(0xB033FF33,2)\nlocal flags=Argus2.RenderFlags.FLAG_WARP_TERRAIN\ndrawer:addCircle(spot.x,spot.y,spot.z,1.2,false,flags)\nif wave.arrived then return end\nlocal distance=TensorCore.getDistance2d(p,spot)\nif distance<=1.2 then wave.arrived=true;return end\nlocal h=TensorCore.getHeadingToTarget(p,spot)\ndrawer:addArrow(p.x,spot.y,p.z,h,math.max(.1,distance-.9),.4,.8,1,false,flags)",
						conditions = 
						{
							
							{
								"37244f4a-5f33-bf17-937a-64bb07cc309c",
								true,
							},
						},
						name = "Superior Flight Units progressive Sliding Swipe arrow",
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
			name = "Superior Flight Units progressive Sliding Swipe arrow",
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
						actionLua = "self.used=true\nlocal api=TensorCore.API.TensorACR\nlocal now=api.getAutoSimTime()\nif type(now)~=\"number\" or now<=0 or now>20 then return end\napi.setAutoSimKillTime(now+335)\napi.addAutoSimUncertainty(0,45)\ndata.a24={boss=eventArgs.entityID,moves={},towers={}}",
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
						actionLua = "self.used=true\nlocal e=eventArgs\nlocal ms=math.floor(e.startTime+e.duration*1000-Now())\nif ms<=0 then return end\nlocal id=e.aoeID\nlocal drawer=TensorCore.getStaticDrawer(0x703333FF,2)\nlocal player=TensorCore.mGetPlayer()\nlocal x,z=e.x,e.z\nlocal dx,dz=player.pos.x-x,player.pos.z-z\nlocal r2=dx*dx+dz*dz\nlocal unsafe=false\nif id>=20614 and id<=20617 then\n x,z=200,-100\n dx,dz=player.pos.x-x,player.pos.z-z\n r2=dx*dx+dz*dz\n local low=({[20616]=14,[20617]=21})[id] or 0\n local high=({[20614]=30,[20615]=16,[20616]=23,[20617]=30})[id]\n -- Outer bands start only once the previous band has fired.\n local delay=id==20616 and math.max(0,ms-2100) or id==20617 and math.max(0,ms-2100) or 0\n local linger=id==20614 and 3700 or 2700\n if low==0 then\n  drawer:addTimedCone(ms+linger,x,e.y,z,high,math.pi/3,e.heading,delay,false,true)\n else\n  drawer:addTimedDonutCone(ms+linger,x,e.y,z,low,high,math.pi/3,e.heading,delay,false,true)\n end\n unsafe=r2>=low*low and r2<=high*high and\n  dx*math.sin(e.heading)+dz*math.cos(e.heading)>=math.sqrt(r2)*math.cos(math.pi/6)\nelseif id==20480 then\n drawer:addTimedDonut(ms,x,e.y,z,12,60,0,false,true)\n unsafe=r2>=144\nelseif id==20464 then\n drawer:addTimedRect(ms,x,e.y,z,60,12,e.heading,0,false,true)\n local forward=dx*math.sin(e.heading)+dz*math.cos(e.heading)\n unsafe=forward>=0 and forward<=60 and math.abs(dx*math.cos(e.heading)-dz*math.sin(e.heading))<=6\nelse\n local radius=id==20465 and 18 or id==20479 and 8 or 4\n drawer:addTimedCircle(ms,x,e.y,z,radius,0,false,true)\n unsafe=r2<=radius*radius\nend\nlocal s=data.a24\nif s and unsafe and (id==20479 or id==20480 or id==20464 or id==20465) then\n local api=TensorCore.API.TensorACR\n local now=api.getAutoSimTime()\n if type(now)==\"number\" and now>0 then\n  local hit=now+ms/1000\n  if not s.moves[id] or math.abs(hit-s.moves[id])>1.5 then\n   s.moves[id]=hit\n   api.addAutoSimPhase(\"CasterDowntime\",math.max(now,hit-2),hit,1)\n  end\n end\nend",
						conditions = 
						{
							
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
						actionLua = "self.used=true\nlocal s=data.compoundSpin\nlocal p=TensorCore.mGetPlayer()\nlocal now=Now()\nlocal nextHit=s.expires\nfor _,c in ipairs(s.casts) do\n if c.deadline>now then nextHit=math.min(nextHit,c.deadline) end\nend\nif s.dirty or s.nextHit~=nextHit then\n s.dirty=false\n s.nextHit=nextHit\n local x,z,best\n -- Require clearance from all remaining sweeps. If no common spot exists,\n -- solve the first wave on its own and recalculate as soon as it resolves.\n for pass=1,2 do\n  for cx=172,228,2 do\n   for cz=-728,-672,2 do\n    local safe=true\n    for _,c in ipairs(s.casts) do\n     if c.deadline>now and (pass==1 or c.deadline<=nextHit+250) then\n      local dx,dz=cx-c.x,cz-c.z\n      local forward=dx*c.sin+dz*c.cos\n      local across=dx*c.cos-dz*c.sin\n      if forward>=-2 and forward<=82 and math.abs(across)<=77 then\n       safe=false\n       break\n      end\n     end\n    end\n    if safe then\n     local distance=(cx-p.pos.x)^2+(cz-p.pos.z)^2\n     if not best or distance<best then x,z,best=cx,cz,distance end\n    end\n   end\n  end\n  if best then break end\n end\n s.destination=x and {x=x,y=p.pos.y+.05,z=z} or nil\nend\nlocal spot=s.destination\nlocal ms=math.min(450,math.floor(nextHit-now))\nif not spot or ms<=0 then\n if s.circle then Argus.deleteTimedShape(s.circle);s.circle=nil end\n if s.arrow then Argus.deleteTimedShape(s.arrow);s.arrow=nil end\n return\nend\nlocal drawer=TensorCore.getStaticDrawer(0xB033FF33,2)\nif not s.circle or not drawer:updateTimedCircle(s.circle,ms,spot.x,spot.y,spot.z,1.25,0,false,true) then\n s.circle=drawer:addTimedCircle(ms,spot.x,spot.y,spot.z,1.25,0,false,true)\nend\nlocal distance=TensorCore.getDistance2d(p.pos,spot)\nif distance>1.25 then\n local h=TensorCore.getHeadingToTarget(p.pos,spot)\n local length=math.max(.1,distance-.9)\n if not s.arrow or not drawer:updateTimedArrow(s.arrow,ms,p.pos.x,spot.y,p.pos.z,h,length,.4,.8,1,0,false) then\n  s.arrow=drawer:addTimedArrow(ms,p.pos.x,spot.y,p.pos.z,h,length,.4,.8,1,0,false)\n end\nelseif s.arrow then\n Argus.deleteTimedShape(s.arrow)\n s.arrow=nil\nend",
						conditions = 
						{
							
							{
								"aa213839-4002-ec06-bd93-43254403487b",
								true,
							},
						},
						name = "The Compound Incongruous Spin green spot and arrow",
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
			name = "The Compound Incongruous Spin green spot and arrow",
			throttleTime = 125,
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
						actionLua = "self.used=true\nlocal s=data.compoundBlade\nlocal p=TensorCore.mGetPlayer()\nlocal spot=s.destination\nlocal drawer=TensorCore.getStaticDrawer(0xB033FF33,2)\nlocal flags=Argus2.RenderFlags.FLAG_WARP_TERRAIN\nif not s.prime then drawer:addCircle(spot.x,spot.y,spot.z,1.25,false,flags) end\nlocal distance=TensorCore.getDistance2d(p.pos,spot)\nif distance<=1.15 then\n s.arrived=true\nelseif distance>=1.6 then\n s.arrived=false\nend\nif not s.arrived then\n local heading=TensorCore.getHeadingToTarget(p.pos,spot)\n drawer:addArrow(p.pos.x,spot.y,p.pos.z,heading,math.max(.1,distance-.9),.4,.8,1,false,flags)\nend",
						conditions = 
						{
							
							{
								"cc994298-347f-5787-9759-55a3d74b7634",
								true,
							},
						},
						name = "Compound Mechanical Dissection and Decapitation stable arrow",
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
						conditionLua = "local s=data.compoundBlade\nif not s or not (s.mechanical or s.prime) or not s.destination or (s.nextHit or 0)<=Now() then return false end\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or math.abs(p.pos.x-200)>31 or math.abs(p.pos.z+700)>31 then return false end\nreturn p.alive and p.incombat",
						name = "The Compound arena and mechanic",
						uuid = "cc994298-347f-5787-9759-55a3d74b7634",
						version = 3,
					},
				},
			},
			displayPath = "The Puppets' Bunker/The Compound/Draws",
			eventType = 12,
			name = "Compound Mechanical and Prime Blade stable arrows",
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
						actionLua = "self.used=true\nlocal now=Now()\nlocal t,b=data.a25Towers,data.a25EarlyPods\nif t and t.drawAt and now>=t.drawAt and now<t.expires then\n t.drawAt=nil\n local drawer=TensorCore.getStaticDrawer(0x55FFFFFF,2)\n for _,tower in ipairs(t.spots) do\n  if tower.draw then Argus.deleteTimedShape(tower.draw) end\n  tower.draw=drawer:addTimedCircle(math.floor(t.expires-now),tower.x,tower.y,tower.z,5,0,false,true)\n end\nend\nif b and b.drawAt and now>=b.drawAt and now<b.deadline then\n b.drawAt=nil\n local s={casts={},seen={},expires=b.deadline,prime=true,dirty=true}\n for _,caster in pairs(b.casters) do\n  local p=caster.destination or caster\n  s.casts[#s.casts+1]={kind=\"rect\",inner=0,radius=7.5,length=70,x=p.x,z=p.z,\n   sin=math.sin(p.h),cos=math.cos(p.h),deadline=b.deadline}\n end\n if #s.casts>=6 then\n  local old=data.compoundBlade\n  if old and old.primeCircle then Argus.deleteTimedShape(old.primeCircle) end\n  data.compoundBlade=s\n  b.preview=true\n end\nend",
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
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=917 or not p.pos or math.abs(p.pos.x-200)>31 or math.abs(p.pos.z+700)>31 then return false end\nlocal now=Now()\nlocal t,b=data.a25Towers,data.a25EarlyPods\nreturn p.incombat and ((t and t.drawAt and now>=t.drawAt and now<t.expires) or\n (b and b.drawAt and now>=b.drawAt and now<b.deadline))",
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
						actionLua = "self.used=true\nlocal api=TensorCore.API.TensorACR\nlocal now=api.getAutoSimTime()\nif type(now)~=\"number\" or now<=0 or now>25 then return end\nlocal offset=now-6.8\napi.setAutoSimKillTime(439+offset)\napi.addAutoSimUncertainty(0,50)\ndata.a25={down=103.7+offset,resume=160+offset}\nlocal s=data.a25\ns.gap=api.addAutoSimPhase(\"FullDowntime\",s.down,s.resume,1)\ns.stun=api.addAutoSimPhase(\"Stun\",s.down,s.resume,1)",
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
						actionLua = "self.used=true\nlocal s=data.a25\nlocal api=TensorCore.API.TensorACR\nlocal now=api.getAutoSimTime()\nif type(now)~=\"number\" or now<=s.down+10 then return end\ns.returned=true\nif s.gap then api.removeAutoSimPhase(s.gap) end\nif s.stun then api.removeAutoSimPhase(s.stun) end\napi.setAutoSimKillTime(now+279)",
						conditions = 
						{
							
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
						actionLua = "self.used=true\nlocal s=data.compoundBlade\nlocal p=TensorCore.mGetPlayer()\nlocal now=Now()\nlocal nextHit=s.expires\nfor _,c in ipairs(s.casts) do\n if c.deadline>now then nextHit=math.min(nextHit,c.deadline) end\nend\nif s.dirty or s.nextHit~=nextHit then\n s.dirty=false\n s.nextHit=nextHit\n local x,z,best\n -- Require clearance from all remaining sweeps. If no common spot exists,\n -- solve the first wave on its own and recalculate as soon as it resolves.\n for pass=1,2 do\n  for cx=172,228,2 do\n   for cz=-728,-672,2 do\n    local safe=true\n    for _,c in ipairs(s.casts) do\n     if c.deadline>now and (pass==1 or c.deadline<=nextHit+250) then\n      local dx,dz=cx-c.x,cz-c.z\n      local forward=dx*c.sin+dz*c.cos\n      local across=dx*c.cos-dz*c.sin\n      local r2=dx*dx+dz*dz\n      if (c.kind==\"rect\" and forward>=-2 and forward<=c.length+2 and math.abs(across)<=c.radius+2)\n        or (c.kind==\"circle\" and r2<=(c.radius+2)^2)\n        or (c.kind==\"donut\" and r2>=(c.inner-2)^2 and r2<=(c.radius+2)^2) then\n       safe=false\n       break\n      end\n     end\n    end\n    if safe then\n     local distance=(cx-p.pos.x)^2+(cz-p.pos.z)^2\n     if not best or distance<best then x,z,best=cx,cz,distance end\n    end\n   end\n  end\n  if best then break end\n end\n s.destination=x and {x=x,y=p.pos.y+.05,z=z} or nil\n if s.prime then\n  if s.primeCircle then Argus.deleteTimedShape(s.primeCircle);s.primeCircle=nil end\n  s.arrived=nil\n  local spot=s.destination\n  local ms=math.floor(nextHit-now)\n  if spot and ms>0 then\n   local drawer=TensorCore.getStaticDrawer(0xB033FF33,2)\n   s.primeCircle=drawer:addTimedCircle(ms,spot.x,spot.y,spot.z,1.25,0,false,true,Argus2.RenderFlags.FLAG_WARP_TERRAIN)\n  end\n end\nend\nif s.mechanical or s.prime then return end\nlocal spot=s.destination\nlocal ms=math.min(450,math.floor(nextHit-now))\nif not spot or ms<=0 then\n if s.circle then Argus.deleteTimedShape(s.circle);s.circle=nil end\n if s.arrow then Argus.deleteTimedShape(s.arrow);s.arrow=nil end\n return\nend\nlocal drawer=TensorCore.getStaticDrawer(0xB033FF33,2)\nif not s.circle or not drawer:updateTimedCircle(s.circle,ms,spot.x,spot.y,spot.z,1.25,0,false,true) then\n s.circle=drawer:addTimedCircle(ms,spot.x,spot.y,spot.z,1.25,0,false,true)\nend\nlocal distance=TensorCore.getDistance2d(p.pos,spot)\nif distance>1.25 then\n local h=TensorCore.getHeadingToTarget(p.pos,spot)\n local length=math.max(.1,distance-.9)\n if not s.arrow or not drawer:updateTimedArrow(s.arrow,ms,p.pos.x,spot.y,p.pos.z,h,length,.4,.8,1,0,false) then\n  s.arrow=drawer:addTimedArrow(ms,p.pos.x,spot.y,p.pos.z,h,length,.4,.8,1,0,false)\n end\nelseif s.arrow then\n Argus.deleteTimedShape(s.arrow)\n s.arrow=nil\nend",
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
						actionLua = "gStartCombat=false\nif AnyoneCore and AnyoneCore.Settings then\n AnyoneCore.Settings.DutyHelper=false\n AnyoneCore.Settings.PrepullHelper=false\nend\nself.used=true",
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
						actionLua = "local S=_G.PB_AllianceSettings\nif not S then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n S={values={},folder=folder,path=folder..'AllianceRaid-ParadigmsBreach.lua'}\n local existed=FileExists(S.path)\n if existed then\n  local ok,t=pcall(FileLoad,S.path)\n  if ok and type(t)=='table' then S.values=t end\n end\n local v=S.values\n local changed=not existed\n if type(v.kbLunge)~='number' or v.kbLunge<0 or v.kbLunge>2 or v.kbLunge~=math.floor(v.kbLunge) then v.kbLunge=0 changed=true end\n if type(v.kbPillar)~='boolean' then v.kbPillar=false changed=true end\n if changed then\n  pcall(function()\n   if not FolderExists(S.folder) then FolderCreate(S.folder) end\n   FileSave(S.path,v)\n  end)\n end\n _G.PB_AllianceSettings=S\nend\nlocal v=S.values\nlocal visible=GUI:Begin(\"[Paradigm's Breach] Settings\",true,GUI.WindowFlags_AlwaysAutoResize)\nif visible then\n local changed=false\n local modes={\"Off\",\"Knave Lunge\",\"Clone Lunge\"}\n local cur=GUI:Combo(\"Lunge knockback immunity\",v.kbLunge+1,modes)\n if cur and cur-1~=v.kbLunge then v.kbLunge=cur-1 changed=true end\n if GUI:IsItemHovered() then\n  GUI:SetTooltip(\"Requests Arm's Length (physical jobs) or Surecast (casters and healers) shortly before the chosen Lunge. Off by default: Lunge normally knocks you into the green landing boxes, so immunity keeps you where you stand. The ability is on a 120 second cooldown, so only one of the two Lunges (about 10 seconds apart) can be covered.\")\n end\n local pillar=GUI:Checkbox(\"Pillar Impact knockback immunity##PBPillar\",v.kbPillar)\n if pillar~=v.kbPillar then v.kbPillar=pillar changed=true end\n if GUI:IsItemHovered() then\n  GUI:SetTooltip(\"Requests Arm's Length or Surecast shortly before the Pillar Impact shockwave. Off by default: the knockback is part of the mechanic, so immunity keeps you beside the pillar.\")\n end\n if changed then\n  pcall(function()\n   if not FolderExists(S.folder) then FolderCreate(S.folder) end\n   FileSave(S.path,v)\n  end)\n end\nend\nGUI:End()",
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
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal ms=math.floor(e.startTime+e.duration*1000-Now())\nif ms<=0 then return end\nlocal SPEC={[24240]={k='r',col=0x7033FF33},[24241]={skip=true},[24239]={skip=true},[24245]={skip=true}}\nlocal s=SPEC[e.aoeID]\nlocal ct=e.aoeCastType\nlocal k\nif s then\n if s.skip then return end\n k=s.k\nelse\n if ct==2 and e.aoeLength>0 and e.aoeLength<=30 and e.aoeType~=27 then k='c'\n elseif ct==12 and e.aoeLength>0 and e.aoeWidth>0 and e.aoeLength<=70 and e.aoeWidth<=40 then k='r'\n elseif ct==13 and e.aoeLength>0 and e.aoeLength<=50 then k='cone'\n end\nend\nif not k then return end\nlocal col=(s and s.col) or 0x703333FF\nlocal d=TensorCore.getStaticDrawer(col,2)\nlocal x,y,z=e.x,e.y,e.z\nif k=='c' then\n d:addTimedCircle(ms,x,y,z,e.aoeLength,0,false,true)\nelseif k=='r' then\n d:addTimedRect(ms,x,y,z,e.aoeLength,e.aoeWidth,e.heading,0,false,true)\nelse\n local ang=(s and s.ang) or (e.aoeType==5 and 2*math.pi/3 or math.pi/2)\n d:addTimedCone(ms,x,y,z,e.aoeLength,ang,e.heading,0,false,true)\nend",
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
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=966 or not p.pos then return false end\nlocal e=eventArgs\nif not e or e.friendly then return false end\nlocal c=e.contentID\nif not (c==9955 or c==10058) then return false end\nreturn (p.pos.x-(-800))^2+(p.pos.z-(-735))^2<=2500\n",
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
						actionLua = "local st=data.pbReflect\nif not st then st={nextScan=0,ids={},called={}} data.pbReflect=st end\nlocal now=Now()\nif now>=st.nextScan then\n st.nextScan=now+500\n st.ids={}\n for _,cid in ipairs({9988,9989}) do\n  for _,b in pairs(TensorCore.getEntityGroupList(\"ContentID\",{contentid=cid}) or {}) do\n   if b.alive then st.ids[#st.ids+1]=b.id end\n  end\n end\nend\nif #st.ids==0 then return end\nlocal red=TensorCore.getStaticDrawer(0x703333FF,2)\nlocal green=TensorCore.getStaticDrawer(0x7033FF33,2)\nlocal ang=math.pi/2\nfor _,id in ipairs(st.ids) do\n local b=TensorCore.mGetEntity(id)\n if b and b.pos and b.alive and TensorCore.hasBuff(b,2538) then\n  local h=b.pos.h\n  red:addCone(b.pos.x,b.pos.y,b.pos.z,9,ang,h+math.pi,false)\n  red:addCone(b.pos.x,b.pos.y,b.pos.z,9,ang,h+math.pi/2,false)\n  red:addCone(b.pos.x,b.pos.y,b.pos.z,9,ang,h-math.pi/2,false)\n  green:addCone(b.pos.x,b.pos.y,b.pos.z,9,ang,h,false)\n  if not st.called[id] then\n   st.called[id]=true\n   if AnyoneCore and AnyoneCore.Shotcall then AnyoneCore.Shotcall(\"Shield: hit from the front\",true,3,false) end\n  end\n elseif st.called[id] then\n  st.called[id]=nil\n end\nend",
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
						actionLua = "local api=TensorCore.API.TensorACR\nlocal names={[9985]='Red Sphere',[9987]='Black Wall',[9986]='White Wall',[9983]='Black Pylon',[9984]='White Pylon'}\nlocal id=eventArgs.entityContentID\nlocal entry=api.addBlacklistEntry(id,names[id])\nif entry and (not entry.enabled or entry.allowIfTarget or entry.allowSmartDoT) then\n    entry.enabled=true\n    entry.allowIfTarget=false\n    entry.allowSmartDoT=false\n    api.saveDotBlacklist()\nend\nself.used=true",
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
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal ms=math.floor(e.startTime+e.duration*1000-Now())\nif ms<=0 then return end\nlocal SPEC={[23558]={skip=true}}\nlocal s=SPEC[e.aoeID]\nlocal ct=e.aoeCastType\nlocal k\nif s then\n if s.skip then return end\n k=s.k\nelse\n if ct==2 and e.aoeLength>0 and e.aoeLength<=30 and e.aoeType~=27 then k='c'\n elseif ct==12 and e.aoeLength>0 and e.aoeWidth>0 and e.aoeLength<=70 and e.aoeWidth<=40 then k='r'\n elseif ct==13 and e.aoeLength>0 and e.aoeLength<=50 then k='cone'\n end\nend\nif not k then return end\nlocal col=(s and s.col) or 0x703333FF\nlocal d=TensorCore.getStaticDrawer(col,2)\nlocal x,y,z=e.x,e.y,e.z\nif k=='c' then\n d:addTimedCircle(ms,x,y,z,e.aoeLength,0,false,true)\nelseif k=='r' then\n d:addTimedRect(ms,x,y,z,e.aoeLength,e.aoeWidth,e.heading,0,false,true)\nelse\n local ang=(s and s.ang) or (e.aoeType==5 and 2*math.pi/3 or math.pi/2)\n d:addTimedCone(ms,x,y,z,e.aoeLength,ang,e.heading,0,false,true)\nend",
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
						actionLua = "self.used=true\nlocal e=eventArgs\nif not e then return end\nlocal ms=math.floor(e.startTime+e.duration*1000-Now())\nif ms<=0 then return end\nlocal SPEC={[23533]={k='r'},[23535]={skip=true},[23522]={k='r'}}\nlocal s=SPEC[e.aoeID]\nlocal ct=e.aoeCastType\nlocal k\nif s then\n if s.skip then return end\n k=s.k\nelse\n if ct==2 and e.aoeLength>0 and e.aoeLength<=30 and e.aoeType~=27 then k='c'\n elseif ct==12 and e.aoeLength>0 and e.aoeWidth>0 and e.aoeLength<=70 and e.aoeWidth<=40 then k='r'\n elseif ct==13 and e.aoeLength>0 and e.aoeLength<=50 then k='cone'\n end\nend\nif not k then return end\nlocal col=(s and s.col) or 0x703333FF\nlocal d=TensorCore.getStaticDrawer(col,2)\nlocal x,y,z=e.x,e.y,e.z\nif k=='c' then\n d:addTimedCircle(ms,x,y,z,e.aoeLength,0,false,true)\nelseif k=='r' then\n d:addTimedRect(ms,x,y,z,e.aoeLength,e.aoeWidth,e.heading,0,false,true)\nelse\n local ang=(s and s.ang) or (e.aoeType==5 and 2*math.pi/3 or math.pi/2)\n d:addTimedCone(ms,x,y,z,e.aoeLength,ang,e.heading,0,false,true)\nend",
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
	inheritedProfiles = 
	{
	},
}



return tbl
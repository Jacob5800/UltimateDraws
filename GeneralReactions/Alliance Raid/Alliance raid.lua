local tbl = 
{
	
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
						actionLua = "-- Prishe of the Distant Chains: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2057]=all[2057] or {}\nlocal state=all[2057]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(198)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(168,7.2)\n state.phases={{\"CasterDowntime\",29.5,32.5,1},{\"CasterDowntime\",34.5,36.0,1},{\"CasterDowntime\",87.0,88.0,1},{\"CasterDowntime\",90.0,93.0,1},{\"CasterDowntime\",98.5,101.0,1},{\"CasterDowntime\",125.5,127.5,1},{\"CasterDowntime\",132.0,134.0,1},{\"CasterDowntime\",148.0,151.5,1},{\"GroundFieldMovement\",132.0,134.0,2},{\"GroundFieldMovement\",148.0,151.5,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						actionLua = "-- Fafnir the Forgotten: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2058]=all[2058] or {}\nlocal state=all[2058]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(185)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(155,11.67)\n state.phases={{\"CasterDowntime\",21.0,22.0,1},{\"CasterDowntime\",32.0,34.5,1},{\"CasterDowntime\",35.5,37.0,1},{\"CasterDowntime\",39.5,43.0,1},{\"CasterDowntime\",56.5,60.0,1},{\"CasterDowntime\",75.5,77.0,1},{\"CasterDowntime\",105.5,107.5,1},{\"CasterDowntime\",109.0,110.0,1},{\"CasterDowntime\",114.0,115.0,1},{\"CasterDowntime\",129.5,132.0,1},{\"CasterDowntime\",138.5,140.0,1},{\"CasterDowntime\",142.0,143.0,1},{\"CasterDowntime\",150.0,152.5,1},{\"CasterDowntime\",156.0,157.0,1},{\"CasterDowntime\",158.5,160.5,1}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						actionLua = "-- Ark Angels: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2059]=all[2059] or {}\nlocal state=all[2059]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(277.846)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(247.846,5.25)\n state.phases={{\"FullDowntime\",117.03,121.78,1},{\"CasterDowntime\",25.0,31.5,1},{\"CasterDowntime\",32.5,42.5,1},{\"CasterDowntime\",64.5,65.5,1},{\"CasterDowntime\",68.5,73.5,1},{\"CasterDowntime\",74.5,77.0,1},{\"CasterDowntime\",105.0,109.0,1},{\"CasterDowntime\",147.0,150.5,1},{\"CasterDowntime\",221.0,222.0,1},{\"CasterDowntime\",240.5,241.5,1},{\"CasterDowntime\",243.5,246.5,1},{\"CasterDowntime\",247.5,248.5,1},{\"CasterDowntime\",251.0,253.0,1},{\"CasterDowntime\",256.5,263.5,1}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						actionLua = "-- Ark Angels: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2059]=all[2059] or {}\nlocal state=all[2059]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(277.846)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(247.846,5.25)\n state.phases={{\"FullDowntime\",117.03,121.78,1},{\"CasterDowntime\",25.0,31.5,1},{\"CasterDowntime\",32.5,42.5,1},{\"CasterDowntime\",64.5,65.5,1},{\"CasterDowntime\",68.5,73.5,1},{\"CasterDowntime\",74.5,77.0,1},{\"CasterDowntime\",105.0,109.0,1},{\"CasterDowntime\",147.0,150.5,1},{\"CasterDowntime\",221.0,222.0,1},{\"CasterDowntime\",240.5,241.5,1},{\"CasterDowntime\",243.5,246.5,1},{\"CasterDowntime\",247.5,248.5,1},{\"CasterDowntime\",251.0,253.0,1},{\"CasterDowntime\",256.5,263.5,1}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						actionLua = "-- Ark Angels: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2059]=all[2059] or {}\nlocal state=all[2059]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(277.846)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(247.846,5.25)\n state.phases={{\"FullDowntime\",117.03,121.78,1},{\"CasterDowntime\",25.0,31.5,1},{\"CasterDowntime\",32.5,42.5,1},{\"CasterDowntime\",64.5,65.5,1},{\"CasterDowntime\",68.5,73.5,1},{\"CasterDowntime\",74.5,77.0,1},{\"CasterDowntime\",105.0,109.0,1},{\"CasterDowntime\",147.0,150.5,1},{\"CasterDowntime\",221.0,222.0,1},{\"CasterDowntime\",240.5,241.5,1},{\"CasterDowntime\",243.5,246.5,1},{\"CasterDowntime\",247.5,248.5,1},{\"CasterDowntime\",251.0,253.0,1},{\"CasterDowntime\",256.5,263.5,1}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						actionLua = "-- Ark Angels: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2059]=all[2059] or {}\nlocal state=all[2059]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(277.846)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(247.846,5.25)\n state.phases={{\"FullDowntime\",117.03,121.78,1},{\"CasterDowntime\",25.0,31.5,1},{\"CasterDowntime\",32.5,42.5,1},{\"CasterDowntime\",64.5,65.5,1},{\"CasterDowntime\",68.5,73.5,1},{\"CasterDowntime\",74.5,77.0,1},{\"CasterDowntime\",105.0,109.0,1},{\"CasterDowntime\",147.0,150.5,1},{\"CasterDowntime\",221.0,222.0,1},{\"CasterDowntime\",240.5,241.5,1},{\"CasterDowntime\",243.5,246.5,1},{\"CasterDowntime\",247.5,248.5,1},{\"CasterDowntime\",251.0,253.0,1},{\"CasterDowntime\",256.5,263.5,1}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						actionLua = "-- Ark Angels: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2059]=all[2059] or {}\nlocal state=all[2059]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(277.846)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(247.846,5.25)\n state.phases={{\"FullDowntime\",117.03,121.78,1},{\"CasterDowntime\",25.0,31.5,1},{\"CasterDowntime\",32.5,42.5,1},{\"CasterDowntime\",64.5,65.5,1},{\"CasterDowntime\",68.5,73.5,1},{\"CasterDowntime\",74.5,77.0,1},{\"CasterDowntime\",105.0,109.0,1},{\"CasterDowntime\",147.0,150.5,1},{\"CasterDowntime\",221.0,222.0,1},{\"CasterDowntime\",240.5,241.5,1},{\"CasterDowntime\",243.5,246.5,1},{\"CasterDowntime\",247.5,248.5,1},{\"CasterDowntime\",251.0,253.0,1},{\"CasterDowntime\",256.5,263.5,1}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						actionLua = "-- Shadow Lord: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2060]=all[2060] or {}\nlocal state=all[2060]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(310)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(280,14.37)\n state.phases={{\"CasterDowntime\",14.5,15.5,1},{\"CasterDowntime\",23.5,26.0,1},{\"CasterDowntime\",35.5,38.5,1},{\"CasterDowntime\",56.5,59.5,1},{\"CasterDowntime\",63.5,64.5,1},{\"CasterDowntime\",77.0,80.5,1},{\"CasterDowntime\",99.5,100.5,1},{\"CasterDowntime\",107.5,108.5,1},{\"CasterDowntime\",137.5,138.5,1},{\"CasterDowntime\",239.5,240.5,1},{\"CasterDowntime\",250.5,253.5,1},{\"GroundFieldMovement\",14.5,15.5,2},{\"GroundFieldMovement\",23.5,26.0,2},{\"GroundFieldMovement\",137.5,138.5,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						actionLua = "-- Prishe of the Distant Chains: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2057]=all[2057] or {}\nlocal state=all[2057]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(198)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(168,7.2)\n state.phases={{\"CasterDowntime\",29.5,32.5,1},{\"CasterDowntime\",34.5,36.0,1},{\"CasterDowntime\",87.0,88.0,1},{\"CasterDowntime\",90.0,93.0,1},{\"CasterDowntime\",98.5,101.0,1},{\"CasterDowntime\",125.5,127.5,1},{\"CasterDowntime\",132.0,134.0,1},{\"CasterDowntime\",148.0,151.5,1},{\"GroundFieldMovement\",132.0,134.0,2},{\"GroundFieldMovement\",148.0,151.5,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						actionLua = "-- Fafnir the Forgotten: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2058]=all[2058] or {}\nlocal state=all[2058]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(185)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(155,11.67)\n state.phases={{\"CasterDowntime\",21.0,22.0,1},{\"CasterDowntime\",32.0,34.5,1},{\"CasterDowntime\",35.5,37.0,1},{\"CasterDowntime\",39.5,43.0,1},{\"CasterDowntime\",56.5,60.0,1},{\"CasterDowntime\",75.5,77.0,1},{\"CasterDowntime\",105.5,107.5,1},{\"CasterDowntime\",109.0,110.0,1},{\"CasterDowntime\",114.0,115.0,1},{\"CasterDowntime\",129.5,132.0,1},{\"CasterDowntime\",138.5,140.0,1},{\"CasterDowntime\",142.0,143.0,1},{\"CasterDowntime\",150.0,152.5,1},{\"CasterDowntime\",156.0,157.0,1},{\"CasterDowntime\",158.5,160.5,1}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						actionLua = "-- Ark Angels: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2059]=all[2059] or {}\nlocal state=all[2059]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(277.846)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(247.846,5.25)\n state.phases={{\"FullDowntime\",117.03,121.78,1},{\"CasterDowntime\",25.0,31.5,1},{\"CasterDowntime\",32.5,42.5,1},{\"CasterDowntime\",64.5,65.5,1},{\"CasterDowntime\",68.5,73.5,1},{\"CasterDowntime\",74.5,77.0,1},{\"CasterDowntime\",105.0,109.0,1},{\"CasterDowntime\",147.0,150.5,1},{\"CasterDowntime\",221.0,222.0,1},{\"CasterDowntime\",240.5,241.5,1},{\"CasterDowntime\",243.5,246.5,1},{\"CasterDowntime\",247.5,248.5,1},{\"CasterDowntime\",251.0,253.0,1},{\"CasterDowntime\",256.5,263.5,1}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						actionLua = "-- Shadow Lord: countdown setup or verified opening-cast fallback.\n-- All times remain relative to the ACR's original combat start; no opening-cast offset is added.\nlocal A=TensorCore.API.TensorACR\ndata.allianceAutoSimSchedules=data.allianceAutoSimSchedules or {}\nlocal all=data.allianceAutoSimSchedules\nall[2060]=all[2060] or {}\nlocal state=all[2060]\nif state.done then self.used=true;return end\nif not state.setup then\n A.setAutoSimKillTime(310)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.setAutoSimUnexpectedMovementPct(0.05)\n A.addAutoSimUncertainty(0,3)\n A.addAutoSimUncertainty(280,14.37)\n state.phases={{\"CasterDowntime\",14.5,15.5,1},{\"CasterDowntime\",23.5,26.0,1},{\"CasterDowntime\",35.5,38.5,1},{\"CasterDowntime\",56.5,59.5,1},{\"CasterDowntime\",63.5,64.5,1},{\"CasterDowntime\",77.0,80.5,1},{\"CasterDowntime\",99.5,100.5,1},{\"CasterDowntime\",107.5,108.5,1},{\"CasterDowntime\",137.5,138.5,1},{\"CasterDowntime\",239.5,240.5,1},{\"CasterDowntime\",250.5,253.5,1},{\"GroundFieldMovement\",14.5,15.5,2},{\"GroundFieldMovement\",23.5,26.0,2},{\"GroundFieldMovement\",137.5,138.5,2}}\n state.nextPhase=1\n state.setup=true\nend\nwhile state.nextPhase<=#state.phases do\n local p=state.phases[state.nextPhase]\n p[5]=A.addAutoSimPhase(p[1],p[2],p[3],p[4])\n state.nextPhase=state.nextPhase+1\nend\nstate.done=true\nself.used=true\n",
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
						conditionLua = "local all=data.allianceAutoSimSchedules\nlocal s=all and all[2070]\nlocal p=TensorCore.mGetPlayer()\nreturn s~=nil and s.done and s.ealdStunObserved and not s.ealdStunFinished and p~=nil and eventArgs.entityID==p.id and TensorCore.API.TensorACR.getAutoSimTime()<240",
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
						conditionLua = "local all=data.allianceAutoSimSchedules\nlocal s=all and all[2067]\nif not s or not s.done then return false end\nlocal t=TensorCore.API.TensorACR.getAutoSimTime()\nlocal p=TensorCore.mGetPlayer()\nreturn p~=nil and p.job==25 and t>=95 and t<112",
						dequeueIfLuaFalse = true,
						name = "Own BLM schedule and relevant window",
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
						conditionLua = "local all=data.allianceAutoSimSchedules\nlocal s=all and all[2069]\nif not s or not s.done then return false end\nlocal t=TensorCore.API.TensorACR.getAutoSimTime()\nlocal p=TensorCore.mGetPlayer()\nreturn p~=nil and p.job==25 and t>=85 and t<98",
						dequeueIfLuaFalse = true,
						name = "Own BLM schedule and relevant window",
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
						actionLua = "-- Own only these two verified TensorNuke4 options; preserve pre-existing false settings.\nif not jacobArkAoeGuard then\n jacobArkAoeGuard={aoe=ACR_TensorNuke4_AOE,smart=ACR_TensorNuke4_SmartAOE}\nend\nself.used=true\n",
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
						name = "Remember previous AoE settings once",
						uuid = "3c31acaa-dc76-b77c-b0ec-33037beb9a9d",
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
						gVar = "ACR_TensorNuke4_AOE",
						gVarValue = 2,
						uuid = "060f6ce8-a5d6-e0e7-9920-455c68424c40",
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
						gVar = "ACR_TensorNuke4_SmartAOE",
						gVarValue = 2,
						uuid = "5a91861e-0658-5b4a-b7d0-4f9c53533021",
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
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn p~=nil and p.alive and p.job==25 and type(ACR_TensorNuke4_AOE)==\"boolean\" and type(ACR_TensorNuke4_SmartAOE)==\"boolean\"",
						dequeueIfLuaFalse = true,
						name = "Living BLM with loaded toggles",
						uuid = "1dfa0cec-915c-58f7-a6a2-f71d30621697",
						version = 3,
					},
				},
			},
			displayPath = "Jeuno/Ark Angels/Assignment targeting",
			name = "[Ark Angels BLM] Single target during Hero assignment",
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
						actionLua = "local saved=jacobArkAoeGuard\nif saved then\n ACR_TensorNuke4_AOE=saved.aoe\n ACR_TensorNuke4_SmartAOE=saved.smart\n jacobArkAoeGuard=nil\nend\nself.used=true\n",
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
			name = "[Ark Angels BLM] Restore AoE - assignment ended",
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
						actionLua = "local saved=jacobArkAoeGuard\nif saved then\n ACR_TensorNuke4_AOE=saved.aoe\n ACR_TensorNuke4_SmartAOE=saved.smart\n jacobArkAoeGuard=nil\nend\nself.used=true\n",
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
			name = "[Ark Angels BLM] Restore AoE - OnWipe",
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
						actionLua = "local saved=jacobArkAoeGuard\nif saved then\n ACR_TensorNuke4_AOE=saved.aoe\n ACR_TensorNuke4_SmartAOE=saved.smart\n jacobArkAoeGuard=nil\nend\nself.used=true\n",
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
			name = "[Ark Angels BLM] Restore AoE - OnDeath",
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
						actionLua = "local saved=jacobArkAoeGuard\nif saved then\n ACR_TensorNuke4_AOE=saved.aoe\n ACR_TensorNuke4_SmartAOE=saved.smart\n jacobArkAoeGuard=nil\nend\nself.used=true\n",
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
			name = "[Ark Angels BLM] Restore AoE - OnMapChange",
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
						},
						gVar = "ACR_TensorNuke4_Hotbar_Surecast",
						uuid = "46ccf920-1fd4-f028-96ff-0fd3f5baf3c0",
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
			},
			displayPath = "Jeuno/Ark Angels/Knockback",
			eventType = 3,
			name = "[Ark Angels] Surecast - Spiral Finish",
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
								"b923b3cd-9265-cd90-8d30-91960efaba5b",
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
								"b923b3cd-9265-cd90-8d30-91960efaba5b",
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
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "b923b3cd-9265-cd90-8d30-91960efaba5b",
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
			name = "[Fafnir BLM] Avoid dying Darter targets",
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
						},
						gVar = "ACR_TensorNuke4_Hotbar_Surecast",
						uuid = "45d28459-2cee-b339-91ea-8a036cd9a359",
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
			},
			displayPath = "San d’Oria/Knockback safeguards",
			eventType = 3,
			name = "[Second Walk] Surecast - Ultima - Tractor Beam",
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
						},
						gVar = "ACR_TensorNuke4_Hotbar_Surecast",
						uuid = "c62401a1-e6ba-903f-a727-5923e4f6bd43",
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
			},
			displayPath = "San d’Oria/Knockback safeguards",
			eventType = 3,
			name = "[Second Walk] Surecast - Kam'lanaut - Shield Bash",
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
						},
						gVar = "ACR_TensorNuke4_Hotbar_Surecast",
						uuid = "ee48ff09-125c-f8fc-9add-51ab05196c6d",
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
			},
			displayPath = "San d’Oria/Knockback safeguards",
			eventType = 3,
			name = "[Second Walk] Surecast - Eald'narche - Tornado draw-in",
			timeout = 8,
			uuid = "64d79e9e-0329-ea6c-8afd-7fe8ec4b2021",
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
	inheritedProfiles = 
	{
	},
}



return tbl
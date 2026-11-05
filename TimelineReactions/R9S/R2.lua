local tbl = 
{
	
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\savage6\\m9s\\modules\\core",
				uuid = "ee6408b5-b4b0-eff1-a5a3-f5c790fd2fe5",
			},
			inheritanceRoot = "store\\anyone\\savage6\\m9s\\modules\\core",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\savage6\\m9s\\modules\\mitigation",
				uuid = "7b39cbd9-9733-9f55-2756-f29317b0f7e9",
			},
			inheritanceRoot = "store\\anyone\\savage6\\m9s\\modules\\mitigation",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "BLM",
				uuid = "252e6a81-5506-a813-98b3-d54de949842f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "BLM",
				name = "AutoSim",
				uuid = "141812a4-f4ce-4030-8ce4-2193c5c1fea0",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "-- Persist only user preferences; encounter state remains in data.\nlocal preferenceStore=_G.R9SSettingsStore\nif not preferenceStore then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[R9S.lua]]\n local saved={}\n if FileExists(path) then local value=FileLoad(path);if type(value)==\"table\" then saved=value end end\n local specs={{\"R9S_BLM_ForecastConfig\",{earliest=434.522,latest=585.478}},{\"R9S_EU_GuideConfig\",{enabled=true,scratch=true,tether=true}}}\n for _,spec in ipairs(specs) do\n  local key,defaults=spec[1],spec[2]\n  local C=_G[key]\n  if not C then C=type(saved[key])==\"table\" and saved[key] or {} end\n  for name,value in pairs(defaults) do\n   if type(C[name])~=type(value) or (type(value)==\"number\" and (C[name]~=C[name] or C[name]<=-math.huge or C[name]>=math.huge)) then C[name]=value end\n  end\n  _G[key]=C\n end\n preferenceStore={}\n function preferenceStore.save()\n  local values,parts={},{}\n  for _,spec in ipairs(specs) do\n   local key=spec[1];local C=_G[key];local copy={};values[key]=copy\n   local keys={};for name,value in pairs(C) do\n    if type(name)==\"string\" and (type(value)==\"boolean\" or type(value)==\"string\" or (type(value)==\"number\" and value==value and value>-math.huge and value<math.huge)) then keys[#keys+1]=name end\n   end\n   table.sort(keys)\n   for _,name in ipairs(keys) do copy[name]=C[name];parts[#parts+1]=key..\":\"..name..\":\"..tostring(C[name]) end\n  end\n  local signature=table.concat(parts,\";\")\n  if signature==preferenceStore.saved then return end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,values);preferenceStore.saved=signature\n end\n _G.R9SSettingsStore=preferenceStore;preferenceStore.save()\nend\n-- Original five-clear movement forecast plus this player's observed enrage-pull late movement.\n-- Late movement is a personal estimate from one pull, not guaranteed forced movement.\nlocal C=_G.R9S_BLM_ForecastConfig\nif C.earliest==454.184 and C.latest==605.140 then\n C.earliest=434.522;C.latest=585.478\nend\nlocal A=TensorCore.API.TensorACR\nif not self.scheduleSetup then\n local lo,hi=math.min(C.earliest,C.latest),math.max(C.earliest,C.latest)\n local midpoint=(lo+hi)/2\n A.setAutoSimKillTime(midpoint)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.addAutoSimUncertainty(0,3)\n -- AutoSim uncertainty is shared across timing inputs, not kill time alone.\n A.addAutoSimUncertainty(math.max(1,lo-30),math.max(3,(hi-lo)/2))\n A.setAutoSimUnexpectedMovementPct(.05)\n self.phases={{\"CasterDowntime\",30.500,32.500,1},{\"CasterDowntime\",34.500,43.500,1},{\"CasterDowntime\",73.500,74.500,1},{\"CasterDowntime\",77.000,79.000,1},{\"CasterDowntime\",82.500,84.500,1},{\"CasterDowntime\",106.500,113.500,1},{\"CasterDowntime\",123.000,124.000,1},{\"CasterDowntime\",175.000,176.000,1},{\"CasterDowntime\",197.000,202.000,1},{\"CasterDowntime\",217.500,221.500,1},{\"CasterDowntime\",227.500,232.000,1},{\"CasterDowntime\",236.000,246.500,1},{\"CasterDowntime\",247.500,250.000,1},{\"CasterDowntime\",310.500,311.500,1},{\"CasterDowntime\",319.000,320.500,1},{\"CasterDowntime\",325.500,332.000,1},{\"CasterDowntime\",358.500,359.500,1},{\"CasterDowntime\",394.000,396.000,1},{\"CasterDowntime\",411.500,414.000,1},{\"CasterDowntime\",418.500,420.000,1},{\"CasterDowntime\",446.000,448.000,1},{\"CasterDowntime\",463.159,465.778,1},{\"CasterDowntime\",471.112,472.590,1},{\"CasterDowntime\",479.971,481.293,1},{\"CasterDowntime\",483.721,485.981,1},{\"CasterDowntime\",489.346,490.746,1},{\"CasterDowntime\",493.925,496.137,1},{\"CasterDowntime\",508.909,511.606,1},{\"CasterDowntime\",517.128,518.668,1},{\"CasterDowntime\",528.721,530.731,1},{\"CasterDowntime\",536.409,539.075,1},{\"CasterDowntime\",551.159,552.371,1}}\n self.nextPhase=1;self.scheduleSetup=true\n data.r9sBLMForecastRange={lo,hi}\nend\nwhile self.nextPhase<=#self.phases do\n local z=self.phases[self.nextPhase]\n A.addAutoSimPhase(z[1],z[2],z[3],z[4]);self.nextPhase=self.nextPhase+1\nend\ndata.r9sBLMAutoSimReady=true\nself.used=true",
							conditions = 
							{
								
								{
									"ab22b0dd-1162-a4e2-a472-5332d1e43925",
									true,
								},
								
								{
									"513fb21f-97a1-7447-a3fc-b031c317709c",
									true,
								},
								
								{
									"77ea286e-c555-4ad3-8864-23a1c6880187",
									true,
								},
								
								{
									"6a0fa3d8-e78e-8831-9b5b-f95e14c6721c",
									true,
								},
							},
							name = "Apply encounter inputs once",
							uuid = "aa98518b-f55f-4f1f-b7b6-e7d6036a5965",
							version = 2.1,
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
							localmapid = 1321,
							name = "R9S only",
							uuid = "ab22b0dd-1162-a4e2-a472-5332d1e43925",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BLACKMAGE",
							name = "Black Mage",
							uuid = "513fb21f-97a1-7447-a3fc-b031c317709c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 14300,
							name = "Vamp Fatale",
							uuid = "77ea286e-c555-4ad3-8864-23a1c6880187",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if data.r9sBLMAutoSimReady then return false end\nlocal ok,t=pcall(TensorCore.API.TensorACR.getAutoSimTime)\nreturn ok and type(t)==\"number\" and t<=0 and t>=-120",
							name = "AutoSim countdown ready once",
							uuid = "6a0fa3d8-e78e-8831-9b5b-f95e14c6721c",
							version = 3,
						},
					},
				},
				displayPath = "BLM/AutoSim",
				eventType = 16,
				mechanicTime = 10.172,
				name = "[BLM AutoSim] R9S encounter schedule",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = -10,
				timerStartOffset = -70,
				uuid = "f083ac8b-e57b-2edd-a42b-30850d8212fb",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "BLM/AutoSim",
				name = "Add safeguards",
				uuid = "2d2151ba-eb11-4151-bc19-53a4795468e3",
			},
			objectType = "folder",
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
									"6417bf95-97c9-9590-beba-2e71f1185c98",
									true,
								},
							},
							gVar = "ACR_TensorNuke4_AOE",
							name = "AoE on",
							uuid = "26dbd088-a4ce-91ac-baf0-49c2eb9848f8",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "-- Persist only user preferences; encounter state remains in data.\nlocal preferenceStore=_G.R9SSettingsStore\nif not preferenceStore then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[R9S.lua]]\n local saved={}\n if FileExists(path) then local value=FileLoad(path);if type(value)==\"table\" then saved=value end end\n local specs={{\"R9S_BLM_ForecastConfig\",{earliest=434.522,latest=585.478}},{\"R9S_EU_GuideConfig\",{enabled=true,scratch=true,tether=true}}}\n for _,spec in ipairs(specs) do\n  local key,defaults=spec[1],spec[2]\n  local C=_G[key]\n  if not C then C=type(saved[key])==\"table\" and saved[key] or {} end\n  for name,value in pairs(defaults) do\n   if type(C[name])~=type(value) or (type(value)==\"number\" and (C[name]~=C[name] or C[name]<=-math.huge or C[name]>=math.huge)) then C[name]=value end\n  end\n  _G[key]=C\n end\n preferenceStore={}\n function preferenceStore.save()\n  local values,parts={},{}\n  for _,spec in ipairs(specs) do\n   local key=spec[1];local C=_G[key];local copy={};values[key]=copy\n   local keys={};for name,value in pairs(C) do\n    if type(name)==\"string\" and (type(value)==\"boolean\" or type(value)==\"string\" or (type(value)==\"number\" and value==value and value>-math.huge and value<math.huge)) then keys[#keys+1]=name end\n   end\n   table.sort(keys)\n   for _,name in ipairs(keys) do copy[name]=C[name];parts[#parts+1]=key..\":\"..name..\":\"..tostring(C[name]) end\n  end\n  local signature=table.concat(parts,\";\")\n  if signature==preferenceStore.saved then return end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,values);preferenceStore.saved=signature\n end\n _G.R9SSettingsStore=preferenceStore;preferenceStore.save()\nend\n_G.R9S_BLM_AddAOEOwned=nil\nself.used=true",
							conditions = 
							{
								
								{
									"6417bf95-97c9-9590-beba-2e71f1185c98",
									true,
								},
							},
							name = "Release owned block",
							uuid = "ba463df7-ae49-a4d2-a72e-d48169ebc4b8",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- Persist only user preferences; encounter state remains in data.\nlocal preferenceStore=_G.R9SSettingsStore\nif not preferenceStore then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[R9S.lua]]\n local saved={}\n if FileExists(path) then local value=FileLoad(path);if type(value)==\"table\" then saved=value end end\n local specs={{\"R9S_BLM_ForecastConfig\",{earliest=434.522,latest=585.478}},{\"R9S_EU_GuideConfig\",{enabled=true,scratch=true,tether=true}}}\n for _,spec in ipairs(specs) do\n  local key,defaults=spec[1],spec[2]\n  local C=_G[key]\n  if not C then C=type(saved[key])==\"table\" and saved[key] or {} end\n  for name,value in pairs(defaults) do\n   if type(C[name])~=type(value) or (type(value)==\"number\" and (C[name]~=C[name] or C[name]<=-math.huge or C[name]>=math.huge)) then C[name]=value end\n  end\n  _G[key]=C\n end\n preferenceStore={}\n function preferenceStore.save()\n  local values,parts={},{}\n  for _,spec in ipairs(specs) do\n   local key=spec[1];local C=_G[key];local copy={};values[key]=copy\n   local keys={};for name,value in pairs(C) do\n    if type(name)==\"string\" and (type(value)==\"boolean\" or type(value)==\"string\" or (type(value)==\"number\" and value==value and value>-math.huge and value<math.huge)) then keys[#keys+1]=name end\n   end\n   table.sort(keys)\n   for _,name in ipairs(keys) do copy[name]=C[name];parts[#parts+1]=key..\":\"..name..\":\"..tostring(C[name]) end\n  end\n  local signature=table.concat(parts,\";\")\n  if signature==preferenceStore.saved then return end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,values);preferenceStore.saved=signature\n end\n _G.R9SSettingsStore=preferenceStore;preferenceStore.save()\nend\nreturn _G.R9S_BLM_AddAOEOwned==true",
							name = "Owned AoE block",
							uuid = "6417bf95-97c9-9590-beba-2e71f1185c98",
							version = 3,
						},
					},
				},
				displayPath = "BLM/AutoSim/Add safeguards",
				eventType = 9,
				loop = true,
				mechanicTime = 10.172,
				name = "[BLM] Restore AoE - wipe",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 900,
				timerStartOffset = -60,
				uuid = "27d0aab2-04b9-1fd3-86e0-79617ba33f3c",
				version = 2,
			},
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
									"1e7083d5-9900-8715-92b6-b075e0b4a473",
									true,
								},
							},
							gVar = "ACR_TensorNuke4_AOE",
							name = "AoE on",
							uuid = "ce36b761-8347-988c-a4db-edd015c1d9f7",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "-- Persist only user preferences; encounter state remains in data.\nlocal preferenceStore=_G.R9SSettingsStore\nif not preferenceStore then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[R9S.lua]]\n local saved={}\n if FileExists(path) then local value=FileLoad(path);if type(value)==\"table\" then saved=value end end\n local specs={{\"R9S_BLM_ForecastConfig\",{earliest=434.522,latest=585.478}},{\"R9S_EU_GuideConfig\",{enabled=true,scratch=true,tether=true}}}\n for _,spec in ipairs(specs) do\n  local key,defaults=spec[1],spec[2]\n  local C=_G[key]\n  if not C then C=type(saved[key])==\"table\" and saved[key] or {} end\n  for name,value in pairs(defaults) do\n   if type(C[name])~=type(value) or (type(value)==\"number\" and (C[name]~=C[name] or C[name]<=-math.huge or C[name]>=math.huge)) then C[name]=value end\n  end\n  _G[key]=C\n end\n preferenceStore={}\n function preferenceStore.save()\n  local values,parts={},{}\n  for _,spec in ipairs(specs) do\n   local key=spec[1];local C=_G[key];local copy={};values[key]=copy\n   local keys={};for name,value in pairs(C) do\n    if type(name)==\"string\" and (type(value)==\"boolean\" or type(value)==\"string\" or (type(value)==\"number\" and value==value and value>-math.huge and value<math.huge)) then keys[#keys+1]=name end\n   end\n   table.sort(keys)\n   for _,name in ipairs(keys) do copy[name]=C[name];parts[#parts+1]=key..\":\"..name..\":\"..tostring(C[name]) end\n  end\n  local signature=table.concat(parts,\";\")\n  if signature==preferenceStore.saved then return end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,values);preferenceStore.saved=signature\n end\n _G.R9SSettingsStore=preferenceStore;preferenceStore.save()\nend\n_G.R9S_BLM_AddAOEOwned=nil\nself.used=true",
							conditions = 
							{
								
								{
									"1e7083d5-9900-8715-92b6-b075e0b4a473",
									true,
								},
							},
							name = "Release owned block",
							uuid = "5b6f413a-1f12-a9fc-b22f-de6a62e16526",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- Persist only user preferences; encounter state remains in data.\nlocal preferenceStore=_G.R9SSettingsStore\nif not preferenceStore then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[R9S.lua]]\n local saved={}\n if FileExists(path) then local value=FileLoad(path);if type(value)==\"table\" then saved=value end end\n local specs={{\"R9S_BLM_ForecastConfig\",{earliest=434.522,latest=585.478}},{\"R9S_EU_GuideConfig\",{enabled=true,scratch=true,tether=true}}}\n for _,spec in ipairs(specs) do\n  local key,defaults=spec[1],spec[2]\n  local C=_G[key]\n  if not C then C=type(saved[key])==\"table\" and saved[key] or {} end\n  for name,value in pairs(defaults) do\n   if type(C[name])~=type(value) or (type(value)==\"number\" and (C[name]~=C[name] or C[name]<=-math.huge or C[name]>=math.huge)) then C[name]=value end\n  end\n  _G[key]=C\n end\n preferenceStore={}\n function preferenceStore.save()\n  local values,parts={},{}\n  for _,spec in ipairs(specs) do\n   local key=spec[1];local C=_G[key];local copy={};values[key]=copy\n   local keys={};for name,value in pairs(C) do\n    if type(name)==\"string\" and (type(value)==\"boolean\" or type(value)==\"string\" or (type(value)==\"number\" and value==value and value>-math.huge and value<math.huge)) then keys[#keys+1]=name end\n   end\n   table.sort(keys)\n   for _,name in ipairs(keys) do copy[name]=C[name];parts[#parts+1]=key..\":\"..name..\":\"..tostring(C[name]) end\n  end\n  local signature=table.concat(parts,\";\")\n  if signature==preferenceStore.saved then return end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,values);preferenceStore.saved=signature\n end\n _G.R9SSettingsStore=preferenceStore;preferenceStore.save()\nend\nreturn _G.R9S_BLM_AddAOEOwned==true",
							name = "Owned AoE block",
							uuid = "1e7083d5-9900-8715-92b6-b075e0b4a473",
							version = 3,
						},
					},
				},
				displayPath = "BLM/AutoSim/Add safeguards",
				eventType = 11,
				loop = true,
				mechanicTime = 10.172,
				name = "[BLM] Restore AoE - mapchange",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 900,
				timerStartOffset = -60,
				uuid = "ccdd10ca-89f0-a3ac-aa54-86063096a970",
				version = 2,
			},
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
									"5fef666e-6773-5049-9650-4b1dc18cc104",
									true,
								},
							},
							gVar = "ACR_TensorNuke4_AOE",
							name = "AoE on",
							uuid = "351b9a4b-fa68-98b2-aa90-d20303595870",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "-- Persist only user preferences; encounter state remains in data.\nlocal preferenceStore=_G.R9SSettingsStore\nif not preferenceStore then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[R9S.lua]]\n local saved={}\n if FileExists(path) then local value=FileLoad(path);if type(value)==\"table\" then saved=value end end\n local specs={{\"R9S_BLM_ForecastConfig\",{earliest=434.522,latest=585.478}},{\"R9S_EU_GuideConfig\",{enabled=true,scratch=true,tether=true}}}\n for _,spec in ipairs(specs) do\n  local key,defaults=spec[1],spec[2]\n  local C=_G[key]\n  if not C then C=type(saved[key])==\"table\" and saved[key] or {} end\n  for name,value in pairs(defaults) do\n   if type(C[name])~=type(value) or (type(value)==\"number\" and (C[name]~=C[name] or C[name]<=-math.huge or C[name]>=math.huge)) then C[name]=value end\n  end\n  _G[key]=C\n end\n preferenceStore={}\n function preferenceStore.save()\n  local values,parts={},{}\n  for _,spec in ipairs(specs) do\n   local key=spec[1];local C=_G[key];local copy={};values[key]=copy\n   local keys={};for name,value in pairs(C) do\n    if type(name)==\"string\" and (type(value)==\"boolean\" or type(value)==\"string\" or (type(value)==\"number\" and value==value and value>-math.huge and value<math.huge)) then keys[#keys+1]=name end\n   end\n   table.sort(keys)\n   for _,name in ipairs(keys) do copy[name]=C[name];parts[#parts+1]=key..\":\"..name..\":\"..tostring(C[name]) end\n  end\n  local signature=table.concat(parts,\";\")\n  if signature==preferenceStore.saved then return end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,values);preferenceStore.saved=signature\n end\n _G.R9SSettingsStore=preferenceStore;preferenceStore.save()\nend\n_G.R9S_BLM_AddAOEOwned=nil\nself.used=true",
							conditions = 
							{
								
								{
									"5fef666e-6773-5049-9650-4b1dc18cc104",
									true,
								},
							},
							name = "Release owned block",
							uuid = "bdf80fa7-c101-b22d-b224-d657ab0cbb3c",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- Persist only user preferences; encounter state remains in data.\nlocal preferenceStore=_G.R9SSettingsStore\nif not preferenceStore then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[R9S.lua]]\n local saved={}\n if FileExists(path) then local value=FileLoad(path);if type(value)==\"table\" then saved=value end end\n local specs={{\"R9S_BLM_ForecastConfig\",{earliest=434.522,latest=585.478}},{\"R9S_EU_GuideConfig\",{enabled=true,scratch=true,tether=true}}}\n for _,spec in ipairs(specs) do\n  local key,defaults=spec[1],spec[2]\n  local C=_G[key]\n  if not C then C=type(saved[key])==\"table\" and saved[key] or {} end\n  for name,value in pairs(defaults) do\n   if type(C[name])~=type(value) or (type(value)==\"number\" and (C[name]~=C[name] or C[name]<=-math.huge or C[name]>=math.huge)) then C[name]=value end\n  end\n  _G[key]=C\n end\n preferenceStore={}\n function preferenceStore.save()\n  local values,parts={},{}\n  for _,spec in ipairs(specs) do\n   local key=spec[1];local C=_G[key];local copy={};values[key]=copy\n   local keys={};for name,value in pairs(C) do\n    if type(name)==\"string\" and (type(value)==\"boolean\" or type(value)==\"string\" or (type(value)==\"number\" and value==value and value>-math.huge and value<math.huge)) then keys[#keys+1]=name end\n   end\n   table.sort(keys)\n   for _,name in ipairs(keys) do copy[name]=C[name];parts[#parts+1]=key..\":\"..name..\":\"..tostring(C[name]) end\n  end\n  local signature=table.concat(parts,\";\")\n  if signature==preferenceStore.saved then return end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,values);preferenceStore.saved=signature\n end\n _G.R9SSettingsStore=preferenceStore;preferenceStore.save()\nend\nreturn _G.R9S_BLM_AddAOEOwned==true",
							name = "Owned AoE block",
							uuid = "5fef666e-6773-5049-9650-4b1dc18cc104",
							version = 3,
						},
					},
				},
				displayPath = "BLM/AutoSim/Add safeguards",
				eventType = 17,
				loop = true,
				mechanicTime = 10.172,
				name = "[BLM] Restore AoE - cancel",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 900,
				timerStartOffset = -60,
				uuid = "7e28ef57-e1de-0114-b901-43bb21824247",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local A=TensorCore.API.TensorACR\nlocal changed=false\nfor _,item in ipairs({{14302,\"R9S Fatal Flail\"},{14303,\"R9S Deadly Doornail\"}}) do\n local exists=A.getBlacklistEntry(item[1])\n local entry=A.addBlacklistEntry(item[1],item[2])\n if not exists or not entry.enabled then entry.enabled=true;changed=true end\nend\nif changed then A.saveDotBlacklist() end\nself.used=true",
							conditions = 
							{
								
								{
									"024b051f-9ae6-59cd-9f25-dcd01b885fff",
									true,
								},
								
								{
									"d1261886-a01c-3c96-9d38-433c2e78f620",
									true,
								},
							},
							name = "Enable the two add DoT blacklist entries once",
							uuid = "334fd73b-cfc8-ac74-9d40-ec023d3bf5ab",
							version = 2.1,
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
							localmapid = 1321,
							name = "R9S only",
							uuid = "024b051f-9ae6-59cd-9f25-dcd01b885fff",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BLACKMAGE",
							name = "BLM only",
							uuid = "d1261886-a01c-3c96-9d38-433c2e78f620",
							version = 3,
						},
					},
				},
				displayPath = "BLM/AutoSim/Add safeguards",
				eventType = 16,
				mechanicTime = 10.172,
				name = "[BLM] DoT blacklist Flail and Doornail - countdown",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = -5,
				timerStartOffset = -70,
				uuid = "9d3d3cac-86b3-9a7b-a5a1-cd21f585fe12",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local A=TensorCore.API.TensorACR\nlocal exists=A.getAOEBlacklistEntry(14304)\nlocal entry=A.addAOEBlacklistEntry(14304,\"R9S Charnel Cell - personal tower add\")\nif not exists or not entry.enabled then\n entry.enabled=true\n A.saveAOEBlacklist()\nend\nlocal dotExists=A.getBlacklistEntry(14304)\nlocal dot=A.addBlacklistEntry(14304,\"R9S Charnel Cell - short-lived personal add\")\nif not dotExists or not dot.enabled then\n dot.enabled=true\n A.saveDotBlacklist()\nend\nself.used=true",
							conditions = 
							{
								
								{
									"32704517-149a-df93-9ed2-a69cf40b0efb",
									true,
								},
								
								{
									"64eea4e9-3a33-1d71-9325-6badbfc79aeb",
									true,
								},
							},
							name = "Blacklist personal tower adds once",
							uuid = "3f1e4f26-765f-36a2-bbd0-a0c275c91222",
							version = 2.1,
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
							localmapid = 1321,
							name = "R9S only",
							uuid = "32704517-149a-df93-9ed2-a69cf40b0efb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BLACKMAGE",
							name = "BLM only",
							uuid = "64eea4e9-3a33-1d71-9325-6badbfc79aeb",
							version = 3,
						},
					},
				},
				displayPath = "BLM/AutoSim/Add safeguards",
				eventType = 16,
				mechanicTime = 10.172,
				name = "[BLM] AoE/DoT blacklist Charnel Cell - countdown",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = -5,
				timerStartOffset = -70,
				uuid = "d599ed58-3019-0b79-94bc-537b4ed74d54",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "-- Persist only user preferences; encounter state remains in data.\nlocal preferenceStore=_G.R9SSettingsStore\nif not preferenceStore then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[R9S.lua]]\n local saved={}\n if FileExists(path) then local value=FileLoad(path);if type(value)==\"table\" then saved=value end end\n local specs={{\"R9S_BLM_ForecastConfig\",{earliest=434.522,latest=585.478}},{\"R9S_EU_GuideConfig\",{enabled=true,scratch=true,tether=true}}}\n for _,spec in ipairs(specs) do\n  local key,defaults=spec[1],spec[2]\n  local C=_G[key]\n  if not C then C=type(saved[key])==\"table\" and saved[key] or {} end\n  for name,value in pairs(defaults) do\n   if type(C[name])~=type(value) or (type(value)==\"number\" and (C[name]~=C[name] or C[name]<=-math.huge or C[name]>=math.huge)) then C[name]=value end\n  end\n  _G[key]=C\n end\n preferenceStore={}\n function preferenceStore.save()\n  local values,parts={},{}\n  for _,spec in ipairs(specs) do\n   local key=spec[1];local C=_G[key];local copy={};values[key]=copy\n   local keys={};for name,value in pairs(C) do\n    if type(name)==\"string\" and (type(value)==\"boolean\" or type(value)==\"string\" or (type(value)==\"number\" and value==value and value>-math.huge and value<math.huge)) then keys[#keys+1]=name end\n   end\n   table.sort(keys)\n   for _,name in ipairs(keys) do copy[name]=C[name];parts[#parts+1]=key..\":\"..name..\":\"..tostring(C[name]) end\n  end\n  local signature=table.concat(parts,\";\")\n  if signature==preferenceStore.saved then return end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,values);preferenceStore.saved=signature\n end\n _G.R9SSettingsStore=preferenceStore;preferenceStore.save()\nend\n-- Original five-clear movement forecast plus this player's observed enrage-pull late movement.\n-- Late movement is a personal estimate from one pull, not guaranteed forced movement.\nlocal C=_G.R9S_BLM_ForecastConfig\nif C.earliest==454.184 and C.latest==605.140 then\n C.earliest=434.522;C.latest=585.478\nend\nlocal A=TensorCore.API.TensorACR\nif not self.scheduleSetup then\n local lo,hi=math.min(C.earliest,C.latest),math.max(C.earliest,C.latest)\n local midpoint=(lo+hi)/2\n A.setAutoSimKillTime(midpoint)\n A.clearAutoSimPhases(\"FullDowntime\")\n A.clearAutoSimPhases(\"Stun\")\n A.clearAutoSimPhases(\"CasterDowntime\")\n A.clearAutoSimPhases(\"GroundFieldMovement\")\n A.clearAutoSimUncertainty()\n A.addAutoSimUncertainty(0,3)\n -- AutoSim uncertainty is shared across timing inputs, not kill time alone.\n A.addAutoSimUncertainty(math.max(1,lo-30),math.max(3,(hi-lo)/2))\n A.setAutoSimUnexpectedMovementPct(.05)\n self.phases={{\"CasterDowntime\",30.500,32.500,1},{\"CasterDowntime\",34.500,43.500,1},{\"CasterDowntime\",73.500,74.500,1},{\"CasterDowntime\",77.000,79.000,1},{\"CasterDowntime\",82.500,84.500,1},{\"CasterDowntime\",106.500,113.500,1},{\"CasterDowntime\",123.000,124.000,1},{\"CasterDowntime\",175.000,176.000,1},{\"CasterDowntime\",197.000,202.000,1},{\"CasterDowntime\",217.500,221.500,1},{\"CasterDowntime\",227.500,232.000,1},{\"CasterDowntime\",236.000,246.500,1},{\"CasterDowntime\",247.500,250.000,1},{\"CasterDowntime\",310.500,311.500,1},{\"CasterDowntime\",319.000,320.500,1},{\"CasterDowntime\",325.500,332.000,1},{\"CasterDowntime\",358.500,359.500,1},{\"CasterDowntime\",394.000,396.000,1},{\"CasterDowntime\",411.500,414.000,1},{\"CasterDowntime\",418.500,420.000,1},{\"CasterDowntime\",446.000,448.000,1},{\"CasterDowntime\",463.159,465.778,1},{\"CasterDowntime\",471.112,472.590,1},{\"CasterDowntime\",479.971,481.293,1},{\"CasterDowntime\",483.721,485.981,1},{\"CasterDowntime\",489.346,490.746,1},{\"CasterDowntime\",493.925,496.137,1},{\"CasterDowntime\",508.909,511.606,1},{\"CasterDowntime\",517.128,518.668,1},{\"CasterDowntime\",528.721,530.731,1},{\"CasterDowntime\",536.409,539.075,1},{\"CasterDowntime\",551.159,552.371,1}}\n self.nextPhase=1;self.scheduleSetup=true\n data.r9sBLMForecastRange={lo,hi}\nend\nwhile self.nextPhase<=#self.phases do\n local z=self.phases[self.nextPhase]\n A.addAutoSimPhase(z[1],z[2],z[3],z[4]);self.nextPhase=self.nextPhase+1\nend\ndata.r9sBLMAutoSimReady=true\nself.used=true",
							conditions = 
							{
								
								{
									"4d3a276b-cbfa-f13b-83ea-20ff655352c6",
									true,
								},
								
								{
									"1bc69345-fda0-2248-9142-41475011780a",
									true,
								},
								
								{
									"d4715120-db46-0104-a25d-7189e2584eac",
									true,
								},
								
								{
									"644eaf1b-56c1-fec5-bd3c-f9c86165c25b",
									true,
								},
								
								{
									"e34fd635-d43a-57ce-9cc2-56b5c284f568",
									true,
								},
							},
							name = "fallback",
							uuid = "f14dc93b-629e-2c07-81a9-0dff921c13b4",
							version = 2.1,
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
							localmapid = 1321,
							name = "R9S only",
							uuid = "4d3a276b-cbfa-f13b-83ea-20ff655352c6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BLACKMAGE",
							name = "BLM only",
							uuid = "1bc69345-fda0-2248-9142-41475011780a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 14300,
							name = "Vamp Fatale",
							uuid = "d4715120-db46-0104-a25d-7189e2584eac",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 45956,
							name = "Killer Voice",
							uuid = "644eaf1b-56c1-fec5-bd3c-f9c86165c25b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not data.r9sBLMAutoSimReady",
							name = "First-pull setup only",
							uuid = "e34fd635-d43a-57ce-9cc2-56b5c284f568",
							version = 3,
						},
					},
				},
				displayPath = "BLM/AutoSim",
				eventType = 3,
				mechanicTime = 10.172,
				name = "[BLM AutoSim] First Killer Voice setup fallback",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 3,
				timerStartOffset = -10.172,
				uuid = "f7c7798a-8be8-3915-8a56-b764ff0c4dd0",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "-- Persist only user preferences; encounter state remains in data.\nlocal preferenceStore=_G.R9SSettingsStore\nif not preferenceStore then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[R9S.lua]]\n local saved={}\n if FileExists(path) then local value=FileLoad(path);if type(value)==\"table\" then saved=value end end\n local specs={{\"R9S_BLM_ForecastConfig\",{earliest=434.522,latest=585.478}},{\"R9S_EU_GuideConfig\",{enabled=true,scratch=true,tether=true}}}\n for _,spec in ipairs(specs) do\n  local key,defaults=spec[1],spec[2]\n  local C=_G[key]\n  if not C then C=type(saved[key])==\"table\" and saved[key] or {} end\n  for name,value in pairs(defaults) do\n   if type(C[name])~=type(value) or (type(value)==\"number\" and (C[name]~=C[name] or C[name]<=-math.huge or C[name]>=math.huge)) then C[name]=value end\n  end\n  _G[key]=C\n end\n preferenceStore={}\n function preferenceStore.save()\n  local values,parts={},{}\n  for _,spec in ipairs(specs) do\n   local key=spec[1];local C=_G[key];local copy={};values[key]=copy\n   local keys={};for name,value in pairs(C) do\n    if type(name)==\"string\" and (type(value)==\"boolean\" or type(value)==\"string\" or (type(value)==\"number\" and value==value and value>-math.huge and value<math.huge)) then keys[#keys+1]=name end\n   end\n   table.sort(keys)\n   for _,name in ipairs(keys) do copy[name]=C[name];parts[#parts+1]=key..\":\"..name..\":\"..tostring(C[name]) end\n  end\n  local signature=table.concat(parts,\";\")\n  if signature==preferenceStore.saved then return end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,values);preferenceStore.saved=signature\n end\n _G.R9SSettingsStore=preferenceStore;preferenceStore.save()\nend\nlocal C=_G.R9S_BLM_ForecastConfig\nif C.earliest==454.184 and C.latest==605.140 then\n C.earliest=434.522;C.latest=585.478\nend\nlocal visible=GUI:Begin(\"R9S BLM AutoSim\",true)\nif visible then\n GUI:Text(\"Kill-time range (seconds). Save for the next pull.\")\n C.earliest=GUI:SliderFloat(\"Earliest expected kill\",C.earliest,300,605.14,\"%.1f\",1)\n C.latest=GUI:SliderFloat(\"Latest expected kill\",C.latest,C.earliest,660,\"%.1f\",1)\n C.latest=math.max(C.latest,C.earliest)\n GUI:Text(string.format(\"Range %d:%02d - %d:%02d; midpoint %.1fs\",math.floor(C.earliest/60),math.floor(C.earliest%60),math.floor(C.latest/60),math.floor(C.latest%60),(C.earliest+C.latest)/2))\n GUI:Text(\"Default midpoint: 8:30. Range remains adjustable.\")\n GUI:Text(\"Late uncertainty also widens mechanic timing forecasts.\")\n if GUI:IsItemHovered() then GUI:SetTooltip(\"AutoSim has one expected kill time. This uses the midpoint, with half the range as timing uncertainty starting 30 seconds before the earliest kill. A wide range reduces precision for late movement too.\") end\n if GUI:Button(\"Save range for next pull\") then\n  preferenceStore.save();C.status=\"Range saved for next pull.\"\n end\n if C.status then GUI:Text(C.status) end\nend\nGUI:End()\npreferenceStore.save()\n",
							conditions = 
							{
								
								{
									"ba8d5027-dbc7-7ae6-9a23-2b650e411611",
									true,
								},
								
								{
									"2cc317b6-23bb-df5b-b46f-18ebc3f71f73",
									true,
								},
							},
							name = "gui",
							uuid = "8227c4f4-e1e0-fef3-b81d-c47268b39b8a",
							version = 2.1,
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
							localmapid = 1321,
							name = "R9S only",
							uuid = "ba8d5027-dbc7-7ae6-9a23-2b650e411611",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BLACKMAGE",
							name = "BLM only",
							uuid = "2cc317b6-23bb-df5b-b46f-18ebc3f71f73",
							version = 3,
						},
					},
				},
				displayPath = "BLM/AutoSim",
				eventType = 13,
				loop = true,
				mechanicTime = 10.172,
				name = "[BLM AutoSim] R9S kill-time range settings",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 900,
				timerStartOffset = -70,
				uuid = "18aee92b-4b24-3327-8dc7-9ca14c571f4e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "BLM",
				name = "Personal mitigation",
				uuid = "6cb65856-63ce-9895-87d0-c5ebcf8b4bc2",
			},
			objectType = "folder",
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
									"cafae0ec-ead5-c4a8-bd7a-1d883d329e3b",
									true,
								},
								
								{
									"c76932f0-7fe6-1cbe-8d4c-8eedcc5de2d7",
									true,
								},
							},
							gVar = "ACR_TensorNuke4_Hotbar_Manaward",
							uuid = "b1bdd84b-0bd4-b0d9-8749-b7ce7afe47d9",
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
							localmapid = 1321,
							name = "R9S only",
							uuid = "cafae0ec-ead5-c4a8-bd7a-1d883d329e3b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BLACKMAGE",
							name = "Black Mage",
							uuid = "c76932f0-7fe6-1cbe-8d4c-8eedcc5de2d7",
							version = 3,
						},
					},
				},
				displayPath = "BLM/Personal mitigation",
				mechanicTime = 10.172,
				name = "[BLM] Manaward - Killer Voice",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = -1,
				timerStartOffset = -8,
				uuid = "daec8eb0-4eef-ab64-8da6-19b54a7fe90a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "EU personal guidance",
				uuid = "9fb3be7b-f19a-3f2e-82aa-2b40462562aa",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "-- Persist only user preferences; encounter state remains in data.\nlocal preferenceStore=_G.R9SSettingsStore\nif not preferenceStore then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[R9S.lua]]\n local saved={}\n if FileExists(path) then local value=FileLoad(path);if type(value)==\"table\" then saved=value end end\n local specs={{\"R9S_BLM_ForecastConfig\",{earliest=434.522,latest=585.478}},{\"R9S_EU_GuideConfig\",{enabled=true,scratch=true,tether=true}}}\n for _,spec in ipairs(specs) do\n  local key,defaults=spec[1],spec[2]\n  local C=_G[key]\n  if not C then C=type(saved[key])==\"table\" and saved[key] or {} end\n  for name,value in pairs(defaults) do\n   if type(C[name])~=type(value) or (type(value)==\"number\" and (C[name]~=C[name] or C[name]<=-math.huge or C[name]>=math.huge)) then C[name]=value end\n  end\n  _G[key]=C\n end\n preferenceStore={}\n function preferenceStore.save()\n  local values,parts={},{}\n  for _,spec in ipairs(specs) do\n   local key=spec[1];local C=_G[key];local copy={};values[key]=copy\n   local keys={};for name,value in pairs(C) do\n    if type(name)==\"string\" and (type(value)==\"boolean\" or type(value)==\"string\" or (type(value)==\"number\" and value==value and value>-math.huge and value<math.huge)) then keys[#keys+1]=name end\n   end\n   table.sort(keys)\n   for _,name in ipairs(keys) do copy[name]=C[name];parts[#parts+1]=key..\":\"..name..\":\"..tostring(C[name]) end\n  end\n  local signature=table.concat(parts,\";\")\n  if signature==preferenceStore.saved then return end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,values);preferenceStore.saved=signature\n end\n _G.R9SSettingsStore=preferenceStore;preferenceStore.save()\nend\nlocal C=_G.R9S_EU_GuideConfig\nif not C then C={enabled=true};_G.R9S_EU_GuideConfig=C end\nif GUI:Begin(\"R9S EU guidance\",true) then\n C.enabled=GUI:Checkbox(\"Personal guidance\",C.enabled)\n if GUI:IsItemHovered() then GUI:SetTooltip(\"AnyoneCore roles. Arrows and green destination circles for your assignment. Saved independently between sessions.\") end\n if GUI:TreeNode(\"Aetherletting\") then\n  GUI:Text(\"Close to your clock, 22.5 degrees counterclockwise. Drop at edge, return middle.\")\n  GUI:TreePop()\n end\n if GUI:TreeNode(\"Hell in a Cell\") then\n  GUI:Text(\"G1 towers first, G2 second. Clockwise from north: Tank, Healer, Melee, Ranged.\")\n  GUI:Text(\"Spread: tank wide gap; healer clockwise; DPS counterclockwise. Amp: stack wide gap.\")\n  GUI:TreePop()\n end\n if GUI:TreeNode(\"Sanguine Scratch\") then\n  if C.scratch==nil then C.scratch=true end\n  if C.tether==nil then C.tether=true end\n  C.scratch=GUI:Checkbox(\"Cone countdowns\",C.scratch)\n  if GUI:IsItemHovered() then GUI:SetTooltip(\"Red continuous timers on upcoming cone lanes; Moogle keeps drawing the cones. Later volleys forecast 2.4 seconds from each observed hit.\") end\n  C.tether=GUI:Checkbox(\"Warn when tether is too long\",C.tether)\n  if GUI:IsItemHovered() then GUI:SetTooltip(\"Uses the game's long-tether state, not an assumed distance. Follow your own bat while dodging.\") end\n  GUI:TreePop()\n end\n if GUI:TreeNode(\"Undead Deathmatch\") then\n  GUI:Text(\"G1 north/west tower; G2 south/east tower.\")\n  GUI:TreePop()\n end\nend\nGUI:End()\npreferenceStore.save()\n",
							conditions = 
							{
								
								{
									"0349e2a0-d634-a18e-888b-faf3e751b6a6",
									true,
								},
							},
							name = "Options",
							uuid = "8d39520c-35cb-fd40-82b3-55a201d79489",
							version = 2.1,
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
							localmapid = 1321,
							name = "R9S only",
							uuid = "0349e2a0-d634-a18e-888b-faf3e751b6a6",
							version = 3,
						},
					},
				},
				displayPath = "EU personal guidance",
				eventType = 13,
				loop = true,
				mechanicTime = 10.172,
				name = "[EU Guide] Options",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 610,
				timerStartOffset = -30,
				uuid = "a40fa9fb-0086-78a4-9b84-0f8765eb84ab",
				version = 2,
			},
		},
	}, 
	[5] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\savage6\\m9s\\modules\\core",
				uuid = "182bdba1-7d10-4bc5-397e-7dcbccd42111",
			},
			inheritanceRoot = "store\\anyone\\savage6\\m9s\\modules\\core",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\savage6\\m9s\\modules\\draws",
				uuid = "b3929121-fc6d-1a9d-601f-cca7b7bdb971",
			},
			inheritanceRoot = "store\\anyone\\savage6\\m9s\\modules\\draws",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "BLM",
				uuid = "9a058996-0d66-6e49-8de4-e9ba62c87805",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "BLM",
				name = "Movement",
				uuid = "b10a75d2-655d-a420-9038-ae7b2d6742b2",
			},
			objectType = "folder",
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
									"08694c7e-d4bf-1100-8faf-a757a1eb5462",
									true,
								},
								
								{
									"09c1ef7f-e115-82c7-9f8d-8831df5397ba",
									true,
								},
							},
							gVar = "ACR_TensorNuke4_Hotbar_Sprint",
							uuid = "be3a55ce-441e-c8c6-b3b2-325a94712266",
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
							localmapid = 1321,
							name = "R9S only",
							uuid = "08694c7e-d4bf-1100-8faf-a757a1eb5462",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BLACKMAGE",
							name = "Black Mage",
							uuid = "09c1ef7f-e115-82c7-9f8d-8831df5397ba",
							version = 3,
						},
					},
				},
				displayPath = "BLM/Movement",
				mechanicTime = 30.516,
				name = "[BLM] Sprint - opening puddle movement",
				timeRange = true,
				timelineIndex = 5,
				timerEndOffset = 6,
				uuid = "f7ae54de-f399-f265-b221-2ebc66073882",
				version = 2,
			},
		},
	},
	[6] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\savage6\\m9s\\modules\\core",
				uuid = "f30b7184-4ca4-ff78-9114-270a94f0edb4",
			},
			inheritanceRoot = "store\\anyone\\savage6\\m9s\\modules\\core",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\savage6\\m9s\\modules\\draws",
				uuid = "baffb7ca-ebf7-6416-69d1-a7a46873ec9a",
			},
			inheritanceRoot = "store\\anyone\\savage6\\m9s\\modules\\draws",
			objectType = "folder",
		},
	},
	[8] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\savage6\\m9s\\modules\\draws",
				uuid = "c1c6fbcc-2d90-7df0-5613-ecd29966a79c",
			},
			inheritanceRoot = "store\\anyone\\savage6\\m9s\\modules\\draws",
			objectType = "folder",
		},
	},
	[12] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\savage6\\m9s\\modules\\mitigation",
				uuid = "ee51b8bf-8d48-8b63-6475-6a19363d1d8f",
			},
			inheritanceRoot = "store\\anyone\\savage6\\m9s\\modules\\mitigation",
			objectType = "folder",
		},
	},
	[14] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\savage6\\m9s\\modules\\core",
				uuid = "3d952419-41c6-1ae5-6647-2347dd765309",
			},
			inheritanceRoot = "store\\anyone\\savage6\\m9s\\modules\\core",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\savage6\\m9s\\modules\\draws",
				uuid = "a73bd479-762b-653d-3b31-b3db1c887349",
			},
			inheritanceRoot = "store\\anyone\\savage6\\m9s\\modules\\draws",
			objectType = "folder",
		},
	},
	[15] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "BLM",
				uuid = "814f2e8c-fc12-98ad-9534-81972ac605bb",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "BLM",
				name = "AutoSim",
				uuid = "703d8a7d-c136-f660-8b66-19fbfd0689e1",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "BLM/AutoSim",
				name = "Add safeguards",
				uuid = "1477735c-3e96-eb39-b24d-91ac842d62e0",
			},
			objectType = "folder",
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
									"f0fa5300-69ac-2bb1-858b-75cbe7764835",
									true,
								},
								
								{
									"0998f36c-a74a-8e24-91d9-ad10da6873c4",
									true,
								},
								
								{
									"6cf36bec-6a12-0844-9d48-80dd7084a8ee",
									true,
								},
								
								{
									"6212c064-d55a-a0f9-96ab-b69d691cec34",
									true,
								},
							},
							name = "Target Coffinmaker on appearance",
							setTarget = true,
							targetType = "Event Entity",
							uuid = "d9a565da-13e6-9a3f-934c-324989be3a23",
							version = 2.1,
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
							localmapid = 1321,
							name = "R9S only",
							uuid = "f0fa5300-69ac-2bb1-858b-75cbe7764835",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BLACKMAGE",
							name = "BLM only",
							uuid = "0998f36c-a74a-8e24-91d9-ad10da6873c4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 14301,
							name = "Coffinmaker",
							uuid = "6cf36bec-6a12-0844-9d48-80dd7084a8ee",
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
							uuid = "6212c064-d55a-a0f9-96ab-b69d691cec34",
							version = 3,
						},
					},
				},
				displayPath = "BLM/AutoSim/Add safeguards",
				enabled = false,
				eventType = 26,
				mechanicTime = 67.923,
				name = "[BLM] Auto-target Coffinmaker",
				timeRange = true,
				timelineIndex = 15,
				timerEndOffset = 10,
				timerStartOffset = -5,
				uuid = "751ff052-e957-804e-9478-1aa51c1e1ab7",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local G=data.r9sBLMSharedAdds\nif not G then G={ids={},deadlines={}};data.r9sBLMSharedAdds=G end\nlocal id=eventArgs.entityID\nif eventArgs.isTargetable then\n G.ids[id]=eventArgs.entityContentID\nelse\n G.ids[id]=nil;G.deadlines[id]=nil\nend\nself.used=true",
							conditions = 
							{
								
								{
									"dff10f98-1e1b-bb91-827c-8bf863e5a259",
									true,
								},
								
								{
									"d8a0c9f7-f166-75ef-9e3d-c1c1cbe9bfbb",
									true,
								},
								
								{
									"6f49fed4-b078-9cc0-aa66-b312c508fd8d",
									true,
								},
							},
							name = "Track Coffinmaker",
							uuid = "384c42fa-4eb1-147d-872e-27e4bbb8260a",
							version = 2.1,
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
							localmapid = 1321,
							name = "R9S only",
							uuid = "dff10f98-1e1b-bb91-827c-8bf863e5a259",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BLACKMAGE",
							name = "BLM only",
							uuid = "d8a0c9f7-f166-75ef-9e3d-c1c1cbe9bfbb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 14301,
							name = "Track Coffinmaker",
							uuid = "6f49fed4-b078-9cc0-aa66-b312c508fd8d",
							version = 3,
						},
					},
				},
				displayPath = "BLM/AutoSim/Add safeguards",
				eventType = 26,
				loop = true,
				mechanicTime = 67.923,
				name = "[BLM adds] Track Coffinmaker",
				timeRange = true,
				timelineIndex = 15,
				timerEndOffset = 75,
				timerStartOffset = -10,
				uuid = "4311a598-9411-3c13-9330-5d43e851ce6f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "-- Shared-add controller. Native events supply IDs; no entity-list scan runs here.\nlocal G=data.r9sBLMSharedAdds\nif not G then return end\nlocal p=TensorCore.mGetPlayer()\nif not p or not p.alive then return end\nlocal current=TensorCore.mGetTarget()\n-- Personal tower cells are explicitly outside this policy.\nif current and current.contentid==14304 then return end\nlocal A=TensorCore.API.TensorACR\nlocal now=Now()\nlocal spells={152,154,3576,3577,162,16505,36989,25794,25795}\nlocal castBudget=0\nfor _,id in ipairs(spells) do\n local action=ActionList:Get(1,id)\n if action then castBudget=math.max(castBudget,action.casttime) end\nend\n-- Limit target-selection avoidance to a practical long-cast horizon.\ncastBudget=math.max(1.5,math.min(castBudget,3.5))+.4\nlocal candidates={}\nlocal urgent\nfor id,cid in pairs(G.ids) do\n local e=TensorCore.mGetEntity(id)\n if e and e.alive and e.targetable and e.attackable and e.hp.current>0 then\n  local dx,dz=e.pos.x-p.pos.x,e.pos.z-p.pos.z\n  if dx*dx+dz*dz<=(25+e.hitradius)^2 then\n   local t=TensorCore.calcTimeToKill(id)\n   if type(t)~='number' or t<=0 or t==math.huge then t=nil end\n   local dying=e.hp.percent<=35 and t and t<castBudget\n   local item={entity=e,cid=cid,ttk=t,dying=dying,rank=cid==14301 and 0 or cid==14303 and 1 or 2}\n   candidates[#candidates+1]=item\n   local deadline=G.deadlines[id]\n   if cid==14302 and deadline and not dying then\n    local remaining=(deadline-now)/1000\n    -- Slow damage automatically accounts for deaths/Weakness without assuming a roster assignment.\n    local risk=remaining>0 and ((t and t+2.5>=remaining) or (remaining<=6 and e.hp.percent>25))\n    if risk then\n     local margin=remaining-(t or 0)\n     if not urgent or margin<urgent.margin then urgent={item=item,margin=margin} end\n    end\n   end\n  end\n elseif not e or not e.alive or e.hp.current<=0 then G.ids[id]=nil;G.deadlines[id]=nil end\nend\nlocal chosen=urgent and urgent.item\nif not chosen then\n for _,item in ipairs(candidates) do\n  if not item.dying and (not chosen or item.rank<chosen.rank or (item.rank==chosen.rank and current and item.entity.id==current.id)) then chosen=item end\n end\nend\nlocal boss=G.bossID and TensorCore.mGetEntity(G.bossID)\nif not chosen then\n if not boss or not boss.alive or not boss.targetable or not boss.attackable then\n  -- Cached once when returning to the boss; uses the documented ContentID selector.\n  if not G.nextBossLookup or now>=G.nextBossLookup then\n   G.nextBossLookup=now+1000\n   boss=TensorCore.getEntityByGroup('ContentID',{contentid=14300,subgroup='Nearest'})\n   if boss and boss.alive and boss.targetable and boss.attackable then G.bossID=boss.id else boss=nil end\n  else boss=nil end\n end\n if boss then chosen={entity=boss,cid=14300} end\nend\n-- Never interrupt or stop an existing cast. Retarget only once the player is idle.\nif chosen and p.castinginfo.castingid<=0 and p.castinginfo.channelingid<=0 and (not current or current.id~=chosen.entity.id) then\n Player:SetTarget(chosen.entity.id)\n G.lastChoice=chosen.entity.id\n self.used=true\n return\nend\n-- With no healthier target (e.g. the sole Coffinmaker), permit instants but briefly\n-- hold individual actions whose current cast time exceeds the estimated lifetime.\ncurrent=TensorCore.mGetTarget()\nif current and (current.contentid==14301 or current.contentid==14302 or current.contentid==14303) and current.alive and current.hp.percent<=35 then\n local ttl=TensorCore.calcTimeToKill(current.id)\n if type(ttl)=='number' and ttl>0 and ttl<5 then\n  for _,id in ipairs(spells) do\n   local action=ActionList:Get(1,id)\n   if action and action.casttime>=1.25 and action.casttime+.4>ttl then\n    -- Short leases expire automatically after a target change/window end; no persistent holds.\n    A.holdActionUntil(id,now+450)\n   end\n  end\n end\nend\n-- An idle poll/hold refresh does not mark success and requeue execution spam.\n",
							conditions = 
							{
								
								{
									"4cde4d06-f967-f7ec-92fe-62f77b6c28b9",
									true,
								},
								
								{
									"bde1cfeb-3069-23ba-8d60-b53a277b3853",
									true,
								},
								
								{
									"143765e7-565f-78a1-8847-ddd074bd919c",
									true,
								},
							},
							name = "Shared-add priority and dying-cast guard - coffin",
							uuid = "b65e230c-4cb0-0f0f-b1d3-3642c2751f60",
							version = 2.1,
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
							localmapid = 1321,
							name = "R9S only",
							uuid = "4cde4d06-f967-f7ec-92fe-62f77b6c28b9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BLACKMAGE",
							name = "BLM only",
							uuid = "bde1cfeb-3069-23ba-8d60-b53a277b3853",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.r9sBLMSharedAdds~=nil",
							name = "Shared-add state available",
							uuid = "143765e7-565f-78a1-8847-ddd074bd919c",
							version = 3,
						},
					},
				},
				displayPath = "BLM/AutoSim/Add safeguards",
				loop = true,
				mechanicTime = 67.923,
				name = "[BLM adds] Shared-add priority and dying-cast guard - coffin",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 15,
				timerEndOffset = 75,
				timerStartOffset = -8,
				uuid = "113def0d-a042-9fb9-b08a-40497d58ddf6",
				version = 2,
			},
		},
	},
	[27] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "BLM",
				uuid = "f347fb4a-b5d6-be19-b670-a027f720a278",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "BLM",
				name = "Movement",
				uuid = "9c163b83-c9d3-2f1e-8b71-9903c00205d2",
			},
			objectType = "folder",
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
									"51e1a814-7a05-e9e5-950d-6bba9fd68b58",
									true,
								},
								
								{
									"70d45310-1461-73f5-87ba-ccaede56a206",
									true,
								},
							},
							gVar = "ACR_TensorNuke4_Hotbar_Sprint",
							uuid = "6d0b1b33-c72e-c196-81d4-685fc937fa59",
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
							localmapid = 1321,
							name = "R9S only",
							uuid = "51e1a814-7a05-e9e5-950d-6bba9fd68b58",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BLACKMAGE",
							name = "Black Mage",
							uuid = "70d45310-1461-73f5-87ba-ccaede56a206",
							version = 3,
						},
					},
				},
				displayPath = "BLM/Movement",
				mechanicTime = 109.516,
				name = "[BLM] Sprint - Coffinmaker Half Moon",
				timeRange = true,
				timelineIndex = 27,
				timerEndOffset = -1,
				timerStartOffset = -7,
				uuid = "18e7007f-0926-cb0a-8f8a-affea8dfaa12",
				version = 2,
			},
		},
	},
	[32] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\savage6\\m9s\\modules\\draws",
				uuid = "ae4b5bf1-8204-665d-a140-91bbcf29cb81",
			},
			inheritanceRoot = "store\\anyone\\savage6\\m9s\\modules\\draws",
			objectType = "folder",
		},
	},
	[34] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\savage6\\m9s\\modules\\draws",
				uuid = "8bfc2477-48f3-474b-32f4-37cd8249d5c7",
			},
			inheritanceRoot = "store\\anyone\\savage6\\m9s\\modules\\draws",
			objectType = "folder",
		},
	},
	[37] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\savage6\\m9s\\modules\\mitigation",
				uuid = "26e7a3de-c9c6-528a-209b-474c383e2d2e",
			},
			inheritanceRoot = "store\\anyone\\savage6\\m9s\\modules\\mitigation",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "BLM",
				uuid = "eb995858-0b81-7c13-9e0f-c4be15488607",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "BLM",
				name = "Personal mitigation",
				uuid = "7c47b39c-da84-8922-9d4d-c697c3479168",
			},
			objectType = "folder",
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
									"189b0bf1-bbbf-3ad2-87eb-a5caeb89500b",
									true,
								},
								
								{
									"f0c2e699-f2cc-5f17-b763-ec313c14786a",
									true,
								},
							},
							gVar = "ACR_TensorNuke4_Hotbar_Manaward",
							uuid = "47053eb3-6f3c-bec0-ac50-6bab769446ca",
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
							localmapid = 1321,
							name = "R9S only",
							uuid = "189b0bf1-bbbf-3ad2-87eb-a5caeb89500b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BLACKMAGE",
							name = "Black Mage",
							uuid = "f0c2e699-f2cc-5f17-b763-ec313c14786a",
							version = 3,
						},
					},
				},
				displayPath = "BLM/Personal mitigation",
				mechanicTime = 152.876,
				name = "[BLM] Manaward - Crowd Kill",
				timeRange = true,
				timelineIndex = 37,
				timerEndOffset = -1,
				timerStartOffset = -8,
				uuid = "6ab10a00-2927-f111-b952-0e32fc5bec11",
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
				name = "store\\anyone\\savage6\\m9s\\modules\\mitigation",
				uuid = "5e33f1a0-464a-ca14-581a-98f23c25cbb0",
			},
			inheritanceRoot = "store\\anyone\\savage6\\m9s\\modules\\mitigation",
			objectType = "folder",
		},
	},
	[41] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\savage6\\m9s\\modules\\draws",
				uuid = "3d8f0dcb-3c17-ed3f-e89c-22cd50a7951b",
			},
			inheritanceRoot = "store\\anyone\\savage6\\m9s\\modules\\draws",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "EU personal guidance",
				uuid = "d1dec062-f35f-f132-97fd-f74f60d2ee21",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "-- Persist only user preferences; encounter state remains in data.\nlocal preferenceStore=_G.R9SSettingsStore\nif not preferenceStore then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[R9S.lua]]\n local saved={}\n if FileExists(path) then local value=FileLoad(path);if type(value)==\"table\" then saved=value end end\n local specs={{\"R9S_BLM_ForecastConfig\",{earliest=434.522,latest=585.478}},{\"R9S_EU_GuideConfig\",{enabled=true,scratch=true,tether=true}}}\n for _,spec in ipairs(specs) do\n  local key,defaults=spec[1],spec[2]\n  local C=_G[key]\n  if not C then C=type(saved[key])==\"table\" and saved[key] or {} end\n  for name,value in pairs(defaults) do\n   if type(C[name])~=type(value) or (type(value)==\"number\" and (C[name]~=C[name] or C[name]<=-math.huge or C[name]>=math.huge)) then C[name]=value end\n  end\n  _G[key]=C\n end\n preferenceStore={}\n function preferenceStore.save()\n  local values,parts={},{}\n  for _,spec in ipairs(specs) do\n   local key=spec[1];local C=_G[key];local copy={};values[key]=copy\n   local keys={};for name,value in pairs(C) do\n    if type(name)==\"string\" and (type(value)==\"boolean\" or type(value)==\"string\" or (type(value)==\"number\" and value==value and value>-math.huge and value<math.huge)) then keys[#keys+1]=name end\n   end\n   table.sort(keys)\n   for _,name in ipairs(keys) do copy[name]=C[name];parts[#parts+1]=key..\":\"..name..\":\"..tostring(C[name]) end\n  end\n  local signature=table.concat(parts,\";\")\n  if signature==preferenceStore.saved then return end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,values);preferenceStore.saved=signature\n end\n _G.R9SSettingsStore=preferenceStore;preferenceStore.save()\nend\nlocal R=AnyoneCore.Roster\nlocal G=data.r9sEUGuide\nlocal C=_G.R9S_EU_GuideConfig\nif not G then\n G={wave=0};data.r9sEUGuide=G\nend\nlocal now=Now()\nlocal function guide(pos,untilMs,label,tower)\n G.personal={pos=pos,finish=untilMs,label=label}\n if tower and untilMs>now then\n  AnyoneCore.addWorldTextCountdown(untilMs-now,{x=pos.x,y=pos.y+1,z=pos.z},0xFF00FF00,true,1.3)\n end\nend\nlocal function angle(pos)\n return (math.atan2(pos.x-100,100-pos.z)+2*math.pi)%(2*math.pi)\nend\nlocal function point(a,r) return {x=100+math.sin(a)*r,y=0.08,z=100-math.cos(a)*r} end\nlocal spell=eventArgs.spellID\nif spell==45970 then\n if eventArgs.targetID==Player.id then\n  local angles={T1=337.5,R2=22.5,H2=67.5,M2=112.5,T2=157.5,M1=202.5,H1=247.5,R1=292.5}\n  local slot=R.mySlot()\n  if angles[slot] then\n   G.aetherDrop=now+(eventArgs.channelTimeMax+.35)*1000\n   G.aetherFinish=now+24000\n   guide(point(angles[slot]*math.pi/180,19),G.aetherDrop,\"Drop puddle at your edge\",false)\n  end\n end\nelseif spell==45974 or spell==45985 then\n local e=TensorCore.mGetEntity(eventArgs.entityID)\n if e then\n  if not G.towers or now-G.towers.started>1000 then\n   if spell==45974 then G.wave=G.wave+1 end\n   G.towers={started=now,finish=now+(eventArgs.channelTimeMax+.35)*1000,kind=spell,points={},solved=false}\n  end\n  G.towers.points[eventArgs.entityID]={x=e.pos.x,y=e.pos.y+.08,z=e.pos.z}\n end\nelseif spell==45980 or spell==45981 then\n if G.towers and G.towers.solved and G.safeAngles then\n  local slot=R.mySlot()\n  local group=(slot==\"T1\" or slot==\"H1\" or slot==\"M1\" or slot==\"R1\") and 1 or 2\n  if group~=G.wave then\n   local a=G.safeAngles.tank\n   local text=\"Stack in wide gap\"\n   if spell==45980 then\n    if slot==\"H1\" or slot==\"H2\" then a=G.safeAngles.heal;text=\"Healer cleave clockwise\"\n    elseif slot==\"M1\" or slot==\"M2\" or slot==\"R1\" or slot==\"R2\" then a=G.safeAngles.dps;text=\"DPS cleave counterclockwise\"\n    else text=\"Tank cleave in wide gap\" end\n   end\n   guide(point(a,5),now+(eventArgs.channelTimeMax+.8)*1000,text,false)\n  end\n end\nend\nself.used=true",
							conditions = 
							{
								
								{
									"6d901711-864e-b051-b777-6c24019163b6",
									true,
								},
								
								{
									"0fc994a9-fc42-8ff6-afba-e634f8b88ba8",
									true,
								},
								
								{
									"63c67785-011a-4749-afbb-a9deb7d02c82",
									true,
								},
								
								{
									"c1e3c1fe-962b-a807-b3e0-8a0820f22300",
									true,
								},
							},
							name = "Capture assignments",
							uuid = "df28a239-7cc2-53af-aba7-74816868d9df",
							version = 2.1,
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
							localmapid = 1321,
							name = "R9S only",
							uuid = "6d901711-864e-b051-b777-6c24019163b6",
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
							name = "Guided mechanics",
							spellIDList = 
							{
								45970,
								45974,
								45985,
								45980,
								45981,
							},
							uuid = "0fc994a9-fc42-8ff6-afba-e634f8b88ba8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore.Roster\nreturn R.current()~=nil and R.isReady()",
							name = "Roster ready",
							uuid = "63c67785-011a-4749-afbb-a9deb7d02c82",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- Persist only user preferences; encounter state remains in data.\nlocal preferenceStore=_G.R9SSettingsStore\nif not preferenceStore then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[R9S.lua]]\n local saved={}\n if FileExists(path) then local value=FileLoad(path);if type(value)==\"table\" then saved=value end end\n local specs={{\"R9S_BLM_ForecastConfig\",{earliest=434.522,latest=585.478}},{\"R9S_EU_GuideConfig\",{enabled=true,scratch=true,tether=true}}}\n for _,spec in ipairs(specs) do\n  local key,defaults=spec[1],spec[2]\n  local C=_G[key]\n  if not C then C=type(saved[key])==\"table\" and saved[key] or {} end\n  for name,value in pairs(defaults) do\n   if type(C[name])~=type(value) or (type(value)==\"number\" and (C[name]~=C[name] or C[name]<=-math.huge or C[name]>=math.huge)) then C[name]=value end\n  end\n  _G[key]=C\n end\n preferenceStore={}\n function preferenceStore.save()\n  local values,parts={},{}\n  for _,spec in ipairs(specs) do\n   local key=spec[1];local C=_G[key];local copy={};values[key]=copy\n   local keys={};for name,value in pairs(C) do\n    if type(name)==\"string\" and (type(value)==\"boolean\" or type(value)==\"string\" or (type(value)==\"number\" and value==value and value>-math.huge and value<math.huge)) then keys[#keys+1]=name end\n   end\n   table.sort(keys)\n   for _,name in ipairs(keys) do copy[name]=C[name];parts[#parts+1]=key..\":\"..name..\":\"..tostring(C[name]) end\n  end\n  local signature=table.concat(parts,\";\")\n  if signature==preferenceStore.saved then return end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,values);preferenceStore.saved=signature\n end\n _G.R9SSettingsStore=preferenceStore;preferenceStore.save()\nend\nlocal C=_G.R9S_EU_GuideConfig\nreturn C==nil or C.enabled==true",
							name = "Guidance enabled",
							uuid = "c1e3c1fe-962b-a807-b3e0-8a0820f22300",
							version = 3,
						},
					},
				},
				displayPath = "EU personal guidance",
				eventType = 3,
				loop = true,
				mechanicTime = 190.844,
				name = "[EU Guide] Capture assignments",
				timeRange = true,
				timelineIndex = 41,
				timerEndOffset = 280,
				timerStartOffset = -20,
				uuid = "45f2f980-57f4-7ae1-8f0d-0eb8fb0f5c23",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "-- Persist only user preferences; encounter state remains in data.\nlocal preferenceStore=_G.R9SSettingsStore\nif not preferenceStore then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[R9S.lua]]\n local saved={}\n if FileExists(path) then local value=FileLoad(path);if type(value)==\"table\" then saved=value end end\n local specs={{\"R9S_BLM_ForecastConfig\",{earliest=434.522,latest=585.478}},{\"R9S_EU_GuideConfig\",{enabled=true,scratch=true,tether=true}}}\n for _,spec in ipairs(specs) do\n  local key,defaults=spec[1],spec[2]\n  local C=_G[key]\n  if not C then C=type(saved[key])==\"table\" and saved[key] or {} end\n  for name,value in pairs(defaults) do\n   if type(C[name])~=type(value) or (type(value)==\"number\" and (C[name]~=C[name] or C[name]<=-math.huge or C[name]>=math.huge)) then C[name]=value end\n  end\n  _G[key]=C\n end\n preferenceStore={}\n function preferenceStore.save()\n  local values,parts={},{}\n  for _,spec in ipairs(specs) do\n   local key=spec[1];local C=_G[key];local copy={};values[key]=copy\n   local keys={};for name,value in pairs(C) do\n    if type(name)==\"string\" and (type(value)==\"boolean\" or type(value)==\"string\" or (type(value)==\"number\" and value==value and value>-math.huge and value<math.huge)) then keys[#keys+1]=name end\n   end\n   table.sort(keys)\n   for _,name in ipairs(keys) do copy[name]=C[name];parts[#parts+1]=key..\":\"..name..\":\"..tostring(C[name]) end\n  end\n  local signature=table.concat(parts,\";\")\n  if signature==preferenceStore.saved then return end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,values);preferenceStore.saved=signature\n end\n _G.R9SSettingsStore=preferenceStore;preferenceStore.save()\nend\nlocal G=data.r9sEUGuide\nlocal R=AnyoneCore.Roster\nlocal now=Now()\nlocal slot=R.mySlot()\nlocal C=_G.R9S_EU_GuideConfig\nif C and not C.enabled then return end\nif G.aetherDrop and now>=G.aetherDrop then\n G.aetherDrop=nil\n G.personal={pos={x=100,y=.08,z=100},finish=G.aetherFinish,label=\"Return middle - dodge crosses\"}\nend\nlocal T=G.towers\nif T and not T.solved and now<T.finish then\n local list={}\n for _,pos in pairs(T.points) do list[#list+1]=pos end\n local expected=T.kind==45974 and 4 or 2\n if #list==expected then\n  local group=(slot==\"T1\" or slot==\"H1\" or slot==\"M1\" or slot==\"R1\") and 1 or 2\n  local pos\n  if expected==4 then\n   local function angle(p) return (math.atan2(p.x-100,100-p.z)+2*math.pi)%(2*math.pi) end\n   table.sort(list,function(a,b)return angle(a)<angle(b) end)\n   local gaps={};local widest=1\n   for i=1,4 do\n    local a=angle(list[i]);local b=angle(list[i%4+1]);local gap=(b-a+2*math.pi)%(2*math.pi)\n    gaps[i]={size=gap,mid=(a+gap/2)%(2*math.pi)}\n    if gap>gaps[widest].size then widest=i end\n   end\n   G.safeAngles={tank=gaps[widest].mid,heal=gaps[widest%4+1].mid,dps=gaps[(widest+2)%4+1].mid}\n   if group==G.wave then\n    local rank={T1=1,T2=1,H1=2,H2=2,M1=3,M2=3,R1=4,R2=4}\n    pos=list[rank[slot]]\n   else\n    G.personal={pos={x=100,y=.08,z=100},finish=T.finish,label=\"Wait middle - other group takes towers\"}\n   end\n  else\n   table.sort(list,function(a,b)return a.x+a.z<b.x+b.z end)\n   pos=list[group]\n  end\n  if pos then\n   G.personal={pos=pos,finish=T.finish,label=expected==4 and \"Your tower - then kill your add\" or \"Your light-party tower\"}\n   AnyoneCore.addWorldTextCountdown(T.finish-now,{x=pos.x,y=pos.y+1,z=pos.z},0xFF00FF00,true,1.3)\n  end\n  T.solved=true\n end\nend\nlocal P=G.personal\nif P and now<P.finish then\n local p=TensorCore.mGetPlayer()\n if not p or not p.alive then return end\n local d=TensorCore.getStaticDrawer(0xFF00FF00,2)\n d:addTimedCircle(350,P.pos.x,P.pos.y,P.pos.z,1.25,0,false,true)\n local distance=TensorCore.getDistance2d(p.pos,P.pos)\n if distance>1 then d:addTimedArrow(350,p.pos.x,p.pos.y+.08,p.pos.z,TensorCore.getHeadingToTarget(p.pos,P.pos),math.max(.1,distance-1),.5,1,1,0,false) end\n if not P.labelDrawn then\n  AnyoneCore.addTimedWorldText(math.max(1,P.finish-now),P.label,{x=P.pos.x,y=P.pos.y+2,z=P.pos.z},0xFF00FF00,true,1.1)\n  P.labelDrawn=true\n end\nelseif P then G.personal=nil end\n-- Persistent update stays queued; do not report a successful execution each pulse.",
							conditions = 
							{
								
								{
									"97ebca1e-66bd-4d28-b4bb-c1f376369ff1",
									true,
								},
								
								{
									"c3aa6969-1b59-4300-99e0-753bfd22c910",
									true,
								},
								
								{
									"1eb7335c-f8bc-3df6-b83f-93150134fb6e",
									true,
								},
							},
							name = "Personal arrow and circle",
							uuid = "09d5a71d-2cad-18c0-a499-c2e06af8a6b5",
							version = 2.1,
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
							localmapid = 1321,
							name = "R9S only",
							uuid = "97ebca1e-66bd-4d28-b4bb-c1f376369ff1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.r9sEUGuide~=nil",
							name = "Guidance state",
							uuid = "c3aa6969-1b59-4300-99e0-753bfd22c910",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore.Roster\nreturn R.current()~=nil and R.isReady()",
							name = "Roster ready",
							uuid = "1eb7335c-f8bc-3df6-b83f-93150134fb6e",
							version = 3,
						},
					},
				},
				displayPath = "EU personal guidance",
				mechanicTime = 190.844,
				name = "[EU Guide] Personal arrow and circle",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 41,
				timerEndOffset = 280,
				timerStartOffset = -20,
				uuid = "912179b5-3ef8-3f5f-b5b0-5b98e0772c78",
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
				name = "BLM",
				uuid = "92221aab-a267-ba0a-94cd-3bca7e5e403e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "BLM",
				name = "Movement",
				uuid = "98555eaf-1c3c-f522-9654-7c19ee69c866",
			},
			objectType = "folder",
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
									"de95cf71-3e4a-1486-a4bc-cc126893d0a3",
									true,
								},
								
								{
									"d08a8939-9b40-e34d-8684-5636112b89a6",
									true,
								},
							},
							gVar = "ACR_TensorNuke4_Hotbar_Sprint",
							uuid = "7b00ef82-8787-720e-8e1e-6476ed3d8109",
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
							localmapid = 1321,
							name = "R9S only",
							uuid = "de95cf71-3e4a-1486-a4bc-cc126893d0a3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BLACKMAGE",
							name = "Black Mage",
							uuid = "d08a8939-9b40-e34d-8684-5636112b89a6",
							version = 3,
						},
					},
				},
				displayPath = "BLM/Movement",
				mechanicTime = 196.782,
				name = "[BLM] Sprint - Aetherletting movement",
				timeRange = true,
				timelineIndex = 44,
				timerEndOffset = -1,
				timerStartOffset = -7,
				uuid = "336f046c-183d-15a4-98de-c6984502472b",
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
				name = "store\\anyone\\savage6\\m9s\\modules\\core",
				uuid = "db4990e4-85c9-1250-875d-8326a4ee90d4",
			},
			inheritanceRoot = "store\\anyone\\savage6\\m9s\\modules\\core",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\savage6\\m9s\\modules\\draws",
				uuid = "db7ecbaa-fed0-118e-ead8-fa484af6ab3a",
			},
			inheritanceRoot = "store\\anyone\\savage6\\m9s\\modules\\draws",
			objectType = "folder",
		},
	},
	[58] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\savage6\\m9s\\modules\\core",
				uuid = "2876e7a9-b771-4455-a3cc-931fd4fd5ad9",
			},
			inheritanceRoot = "store\\anyone\\savage6\\m9s\\modules\\core",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\savage6\\m9s\\modules\\draws",
				uuid = "8e720669-5144-15cd-2fb6-17b3140a2a39",
			},
			inheritanceRoot = "store\\anyone\\savage6\\m9s\\modules\\draws",
			objectType = "folder",
		},
	},
	[60] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\savage6\\m9s\\modules\\draws",
				uuid = "0f19e560-a50e-3934-cfe4-8aeed1880b70",
			},
			inheritanceRoot = "store\\anyone\\savage6\\m9s\\modules\\draws",
			objectType = "folder",
		},
	},
	[66] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\savage6\\m9s\\modules\\mitigation",
				uuid = "d949c3c4-1716-bee8-70ab-9a52370b57d4",
			},
			inheritanceRoot = "store\\anyone\\savage6\\m9s\\modules\\mitigation",
			objectType = "folder",
		},
	},
	[67] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\savage6\\m9s\\modules\\draws",
				uuid = "3d0259ef-0491-43ab-0a8a-9f099763b53f",
			},
			inheritanceRoot = "store\\anyone\\savage6\\m9s\\modules\\draws",
			objectType = "folder",
		},
	},
	[68] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\savage6\\m9s\\modules\\mitigation",
				uuid = "42984aba-dc43-5316-0e09-bcac90b0724a",
			},
			inheritanceRoot = "store\\anyone\\savage6\\m9s\\modules\\mitigation",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "BLM",
				uuid = "89b28c13-e69c-4e86-bc06-4a5dd9ce7b3d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "BLM",
				name = "Personal mitigation",
				uuid = "be45e79a-1d77-737e-b8f7-7f960cb1bae3",
			},
			objectType = "folder",
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
									"cfb30f1c-e82a-b3a5-9084-2dbac1312c4b",
									true,
								},
								
								{
									"b74f7a82-62a0-e80a-8c89-11eb30aef3f7",
									true,
								},
							},
							gVar = "ACR_TensorNuke4_Hotbar_Manaward",
							uuid = "dc4b39d4-bd6e-a3b3-ad21-a772366f79b3",
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
							localmapid = 1321,
							name = "R9S only",
							uuid = "cfb30f1c-e82a-b3a5-9084-2dbac1312c4b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BLACKMAGE",
							name = "Black Mage",
							uuid = "b74f7a82-62a0-e80a-8c89-11eb30aef3f7",
							version = 3,
						},
					},
				},
				displayPath = "BLM/Personal mitigation",
				mechanicTime = 284.001,
				name = "[BLM] Manaward - Sadistic Screech 2",
				timeRange = true,
				timelineIndex = 68,
				timerEndOffset = -1,
				timerStartOffset = -8,
				uuid = "9bc8383f-78a4-4aab-a646-5c526a88c55c",
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
				name = "BLM",
				uuid = "fe0af27d-1fd7-66e6-85e1-4e15eccdd42b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "BLM",
				name = "AutoSim",
				uuid = "87da93b2-e084-87fd-9760-462ec236bac2",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "BLM/AutoSim",
				name = "Add safeguards",
				uuid = "23e25ba5-41d5-7b39-b18b-ae0d6d7c38f1",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "-- Persist only user preferences; encounter state remains in data.\nlocal preferenceStore=_G.R9SSettingsStore\nif not preferenceStore then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[R9S.lua]]\n local saved={}\n if FileExists(path) then local value=FileLoad(path);if type(value)==\"table\" then saved=value end end\n local specs={{\"R9S_BLM_ForecastConfig\",{earliest=434.522,latest=585.478}},{\"R9S_EU_GuideConfig\",{enabled=true,scratch=true,tether=true}}}\n for _,spec in ipairs(specs) do\n  local key,defaults=spec[1],spec[2]\n  local C=_G[key]\n  if not C then C=type(saved[key])==\"table\" and saved[key] or {} end\n  for name,value in pairs(defaults) do\n   if type(C[name])~=type(value) or (type(value)==\"number\" and (C[name]~=C[name] or C[name]<=-math.huge or C[name]>=math.huge)) then C[name]=value end\n  end\n  _G[key]=C\n end\n preferenceStore={}\n function preferenceStore.save()\n  local values,parts={},{}\n  for _,spec in ipairs(specs) do\n   local key=spec[1];local C=_G[key];local copy={};values[key]=copy\n   local keys={};for name,value in pairs(C) do\n    if type(name)==\"string\" and (type(value)==\"boolean\" or type(value)==\"string\" or (type(value)==\"number\" and value==value and value>-math.huge and value<math.huge)) then keys[#keys+1]=name end\n   end\n   table.sort(keys)\n   for _,name in ipairs(keys) do copy[name]=C[name];parts[#parts+1]=key..\":\"..name..\":\"..tostring(C[name]) end\n  end\n  local signature=table.concat(parts,\";\")\n  if signature==preferenceStore.saved then return end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,values);preferenceStore.saved=signature\n end\n _G.R9SSettingsStore=preferenceStore;preferenceStore.save()\nend\n-- Only capture ownership if AoE was enabled. A manually disabled setting is left alone.\n_G.R9S_BLM_AddAOEOwned=true\nself.used=true",
							conditions = 
							{
								
								{
									"09cd492d-2063-1696-b189-ffb0ce3eea61",
									true,
								},
								
								{
									"d39d78eb-3f18-e54b-a366-7bc44c06f369",
									true,
								},
								
								{
									"d6c90c22-1c92-0433-88fa-ba3d759c4add",
									true,
								},
							},
							name = "Remember previous AoE state",
							uuid = "6010887f-4dc9-d7f3-b202-e427cff4b0cc",
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
									"09cd492d-2063-1696-b189-ffb0ce3eea61",
									true,
								},
								
								{
									"d39d78eb-3f18-e54b-a366-7bc44c06f369",
									true,
								},
								
								{
									"d6c90c22-1c92-0433-88fa-ba3d759c4add",
									true,
								},
							},
							gVar = "ACR_TensorNuke4_AOE",
							gVarValue = 2,
							name = "AoE off",
							uuid = "8d358450-1fea-607d-bef8-decb7ffeb7a2",
							version = 2.1,
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
							localmapid = 1321,
							name = "R9S only",
							uuid = "09cd492d-2063-1696-b189-ffb0ce3eea61",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BLACKMAGE",
							name = "BLM only",
							uuid = "d39d78eb-3f18-e54b-a366-7bc44c06f369",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return _G.ACR_TensorNuke4_AOE==true",
							name = "AoE needs blocking",
							uuid = "d6c90c22-1c92-0433-88fa-ba3d759c4add",
							version = 3,
						},
					},
				},
				displayPath = "BLM/AutoSim/Add safeguards",
				loop = true,
				mechanicTime = 296.36,
				name = "[BLM] Single target - Flail and Doornail",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 70,
				timerEndOffset = 60.64,
				timerStartOffset = -2,
				uuid = "82fbbdc9-7731-9b5d-b9bf-bfe58b1173fb",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local A=TensorCore.API.TensorACR\nlocal changed=false\nfor _,item in ipairs({{14302,\"R9S Fatal Flail\"},{14303,\"R9S Deadly Doornail\"}}) do\n local exists=A.getBlacklistEntry(item[1])\n local entry=A.addBlacklistEntry(item[1],item[2])\n if not exists or not entry.enabled then entry.enabled=true;changed=true end\nend\nif changed then A.saveDotBlacklist() end\nself.used=true",
							conditions = 
							{
								
								{
									"e0b01efd-bee2-364a-a5cf-100a41116539",
									true,
								},
								
								{
									"e68f0088-5803-823c-9efc-8dd1ff72291b",
									true,
								},
							},
							name = "Enable the two add DoT blacklist entries once",
							uuid = "003aa637-7a8c-181d-9a79-b8381066fb9c",
							version = 2.1,
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
							localmapid = 1321,
							name = "R9S only",
							uuid = "e0b01efd-bee2-364a-a5cf-100a41116539",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BLACKMAGE",
							name = "BLM only",
							uuid = "e68f0088-5803-823c-9efc-8dd1ff72291b",
							version = 3,
						},
					},
				},
				displayPath = "BLM/AutoSim/Add safeguards",
				mechanicTime = 296.36,
				name = "[BLM] DoT blacklist Flail and Doornail - adds",
				timeRange = true,
				timelineIndex = 70,
				timerEndOffset = 60.64,
				timerStartOffset = -2,
				uuid = "795fad24-15dc-108f-ad5b-d560630557a0",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local G=data.r9sBLMSharedAdds\nif not G then G={ids={},deadlines={}};data.r9sBLMSharedAdds=G end\nlocal id=eventArgs.entityID\nif eventArgs.isTargetable then\n G.ids[id]=eventArgs.entityContentID\nelse\n G.ids[id]=nil;G.deadlines[id]=nil\nend\nself.used=true",
							conditions = 
							{
								
								{
									"41815b3d-52f4-99ca-a036-d94c9cb245a4",
									true,
								},
								
								{
									"69d846b9-ae69-14d4-997e-6727c996fd77",
									true,
								},
								
								{
									"6813f310-68cd-e674-9005-22872fcd9cf1",
									true,
								},
							},
							name = "Track Fatal Flail waves",
							uuid = "e42283a3-bee7-e9c0-ad0e-13ed9efb2d3c",
							version = 2.1,
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
							localmapid = 1321,
							name = "R9S only",
							uuid = "41815b3d-52f4-99ca-a036-d94c9cb245a4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BLACKMAGE",
							name = "BLM only",
							uuid = "69d846b9-ae69-14d4-997e-6727c996fd77",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 14302,
							name = "Track Fatal Flail waves",
							uuid = "6813f310-68cd-e674-9005-22872fcd9cf1",
							version = 3,
						},
					},
				},
				displayPath = "BLM/AutoSim/Add safeguards",
				eventType = 26,
				loop = true,
				mechanicTime = 296.36,
				name = "[BLM adds] Track Fatal Flail waves",
				timeRange = true,
				timelineIndex = 70,
				timerEndOffset = 70,
				timerStartOffset = -10,
				uuid = "c774a781-0549-34e6-82d1-a4716c84b735",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local G=data.r9sBLMSharedAdds\nif not G then G={ids={},deadlines={}};data.r9sBLMSharedAdds=G end\nlocal id=eventArgs.entityID\nif eventArgs.isTargetable then\n G.ids[id]=eventArgs.entityContentID\nelse\n G.ids[id]=nil;G.deadlines[id]=nil\nend\nself.used=true",
							conditions = 
							{
								
								{
									"8665bcb6-b450-ede8-b839-341c7de166d9",
									true,
								},
								
								{
									"f6a87bb0-630a-5e48-bdcd-1b90ebaca44f",
									true,
								},
								
								{
									"059a9e38-3705-f2e9-83e6-bc1a367df6e0",
									true,
								},
							},
							name = "Track Doornail waves",
							uuid = "3bf70dcc-9935-e6f2-8408-2db82cf8a449",
							version = 2.1,
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
							localmapid = 1321,
							name = "R9S only",
							uuid = "8665bcb6-b450-ede8-b839-341c7de166d9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BLACKMAGE",
							name = "BLM only",
							uuid = "f6a87bb0-630a-5e48-bdcd-1b90ebaca44f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 14303,
							name = "Track Doornail waves",
							uuid = "059a9e38-3705-f2e9-83e6-bc1a367df6e0",
							version = 3,
						},
					},
				},
				displayPath = "BLM/AutoSim/Add safeguards",
				eventType = 26,
				loop = true,
				mechanicTime = 296.36,
				name = "[BLM adds] Track Doornail waves",
				timeRange = true,
				timelineIndex = 70,
				timerEndOffset = 70,
				timerStartOffset = -10,
				uuid = "48b0e9a1-a86d-b993-a75c-ec538df728d5",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local G=data.r9sBLMSharedAdds\nif not G then G={ids={},deadlines={}};data.r9sBLMSharedAdds=G end\nG.deadlines[eventArgs.entityID]=Now()+eventArgs.channelTimeMax*1000\nself.used=true",
							conditions = 
							{
								
								{
									"43c1effe-6a3f-17a7-848d-abe7536524ee",
									true,
								},
								
								{
									"20645f43-3bb9-8ced-82c9-ad549c633fe8",
									true,
								},
								
								{
									"c1a38fc6-69b8-b504-8e23-fe656d2e938c",
									true,
								},
								
								{
									"70444742-30a3-6417-b25b-609e4110cc6d",
									true,
								},
							},
							name = "Track Barbed Burst deadline",
							uuid = "a9b71890-8d3c-ecec-94a4-ce4e6ce55dfe",
							version = 2.1,
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
							localmapid = 1321,
							name = "R9S only",
							uuid = "43c1effe-6a3f-17a7-848d-abe7536524ee",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BLACKMAGE",
							name = "BLM only",
							uuid = "20645f43-3bb9-8ced-82c9-ad549c633fe8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 14302,
							name = "Fatal Flail",
							uuid = "c1a38fc6-69b8-b504-8e23-fe656d2e938c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 45965,
							name = "Barbed Burst",
							uuid = "70444742-30a3-6417-b25b-609e4110cc6d",
							version = 3,
						},
					},
				},
				displayPath = "BLM/AutoSim/Add safeguards",
				eventType = 3,
				loop = true,
				mechanicTime = 296.36,
				name = "[BLM adds] Track Barbed Burst deadline",
				timeRange = true,
				timelineIndex = 70,
				timerEndOffset = 70,
				timerStartOffset = -10,
				uuid = "675772bf-3547-c7c2-88ad-a15348cf4d8b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "-- Shared-add controller. Native events supply IDs; no entity-list scan runs here.\nlocal G=data.r9sBLMSharedAdds\nif not G then return end\nlocal p=TensorCore.mGetPlayer()\nif not p or not p.alive then return end\nlocal current=TensorCore.mGetTarget()\n-- Personal tower cells are explicitly outside this policy.\nif current and current.contentid==14304 then return end\nlocal A=TensorCore.API.TensorACR\nlocal now=Now()\nlocal spells={152,154,3576,3577,162,16505,36989,25794,25795}\nlocal castBudget=0\nfor _,id in ipairs(spells) do\n local action=ActionList:Get(1,id)\n if action then castBudget=math.max(castBudget,action.casttime) end\nend\n-- Limit target-selection avoidance to a practical long-cast horizon.\ncastBudget=math.max(1.5,math.min(castBudget,3.5))+.4\nlocal candidates={}\nlocal urgent\nfor id,cid in pairs(G.ids) do\n local e=TensorCore.mGetEntity(id)\n if e and e.alive and e.targetable and e.attackable and e.hp.current>0 then\n  local dx,dz=e.pos.x-p.pos.x,e.pos.z-p.pos.z\n  if dx*dx+dz*dz<=(25+e.hitradius)^2 then\n   local t=TensorCore.calcTimeToKill(id)\n   if type(t)~='number' or t<=0 or t==math.huge then t=nil end\n   local dying=e.hp.percent<=35 and t and t<castBudget\n   local item={entity=e,cid=cid,ttk=t,dying=dying,rank=cid==14301 and 0 or cid==14303 and 1 or 2}\n   candidates[#candidates+1]=item\n   local deadline=G.deadlines[id]\n   if cid==14302 and deadline and not dying then\n    local remaining=(deadline-now)/1000\n    -- Slow damage automatically accounts for deaths/Weakness without assuming a roster assignment.\n    local risk=remaining>0 and ((t and t+2.5>=remaining) or (remaining<=6 and e.hp.percent>25))\n    if risk then\n     local margin=remaining-(t or 0)\n     if not urgent or margin<urgent.margin then urgent={item=item,margin=margin} end\n    end\n   end\n  end\n elseif not e or not e.alive or e.hp.current<=0 then G.ids[id]=nil;G.deadlines[id]=nil end\nend\nlocal chosen=urgent and urgent.item\nif not chosen then\n for _,item in ipairs(candidates) do\n  if not item.dying and (not chosen or item.rank<chosen.rank or (item.rank==chosen.rank and current and item.entity.id==current.id)) then chosen=item end\n end\nend\nlocal boss=G.bossID and TensorCore.mGetEntity(G.bossID)\nif not chosen then\n if not boss or not boss.alive or not boss.targetable or not boss.attackable then\n  -- Cached once when returning to the boss; uses the documented ContentID selector.\n  if not G.nextBossLookup or now>=G.nextBossLookup then\n   G.nextBossLookup=now+1000\n   boss=TensorCore.getEntityByGroup('ContentID',{contentid=14300,subgroup='Nearest'})\n   if boss and boss.alive and boss.targetable and boss.attackable then G.bossID=boss.id else boss=nil end\n  else boss=nil end\n end\n if boss then chosen={entity=boss,cid=14300} end\nend\n-- Never interrupt or stop an existing cast. Retarget only once the player is idle.\nif chosen and p.castinginfo.castingid<=0 and p.castinginfo.channelingid<=0 and (not current or current.id~=chosen.entity.id) then\n Player:SetTarget(chosen.entity.id)\n G.lastChoice=chosen.entity.id\n self.used=true\n return\nend\n-- With no healthier target (e.g. the sole Coffinmaker), permit instants but briefly\n-- hold individual actions whose current cast time exceeds the estimated lifetime.\ncurrent=TensorCore.mGetTarget()\nif current and (current.contentid==14301 or current.contentid==14302 or current.contentid==14303) and current.alive and current.hp.percent<=35 then\n local ttl=TensorCore.calcTimeToKill(current.id)\n if type(ttl)=='number' and ttl>0 and ttl<5 then\n  for _,id in ipairs(spells) do\n   local action=ActionList:Get(1,id)\n   if action and action.casttime>=1.25 and action.casttime+.4>ttl then\n    -- Short leases expire automatically after a target change/window end; no persistent holds.\n    A.holdActionUntil(id,now+450)\n   end\n  end\n end\nend\n-- An idle poll/hold refresh does not mark success and requeue execution spam.\n",
							conditions = 
							{
								
								{
									"d171aabc-dcfa-2968-b004-33f349318f57",
									true,
								},
								
								{
									"985f06ff-dabb-c551-a5c5-d6665c2f1806",
									true,
								},
								
								{
									"c85ddb38-ae60-492a-a7fd-d9ebd006a12a",
									true,
								},
							},
							name = "Shared-add priority and dying-cast guard - waves",
							uuid = "b3c217d6-0c50-7cbd-9285-a6d93491bf0c",
							version = 2.1,
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
							localmapid = 1321,
							name = "R9S only",
							uuid = "d171aabc-dcfa-2968-b004-33f349318f57",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BLACKMAGE",
							name = "BLM only",
							uuid = "985f06ff-dabb-c551-a5c5-d6665c2f1806",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.r9sBLMSharedAdds~=nil",
							name = "Shared-add state available",
							uuid = "c85ddb38-ae60-492a-a7fd-d9ebd006a12a",
							version = 3,
						},
					},
				},
				displayPath = "BLM/AutoSim/Add safeguards",
				loop = true,
				mechanicTime = 296.36,
				name = "[BLM adds] Shared-add priority and dying-cast guard - waves",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 70,
				timerEndOffset = 70,
				timerStartOffset = -8,
				uuid = "c057a882-9afd-d757-b4cd-801a1c80fc5a",
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
				name = "BLM",
				uuid = "1d5eb2f6-a553-f5cd-993a-4e68ee045a34",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "BLM",
				name = "Movement",
				uuid = "ed23b882-dadf-db03-9df9-6bb472d23077",
			},
			objectType = "folder",
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
									"0485c263-5030-dec1-8e1e-c9d63ec15c61",
									true,
								},
								
								{
									"a760bf87-1f3f-2f48-b272-b519b193af99",
									true,
								},
							},
							gVar = "ACR_TensorNuke4_Hotbar_Sprint",
							uuid = "f0b1f9d8-e72c-b98b-9f6a-fbf78c57af0e",
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
							localmapid = 1321,
							name = "R9S only",
							uuid = "0485c263-5030-dec1-8e1e-c9d63ec15c61",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BLACKMAGE",
							name = "Black Mage",
							uuid = "a760bf87-1f3f-2f48-b272-b519b193af99",
							version = 3,
						},
					},
				},
				displayPath = "BLM/Movement",
				mechanicTime = 323.376,
				name = "[BLM] Sprint - second saws reposition",
				timeRange = true,
				timelineIndex = 79,
				timerEndOffset = -1,
				timerStartOffset = -7,
				uuid = "2fdda3f2-0931-667c-a7be-7a6b0c296d0c",
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
				name = "BLM",
				uuid = "7e9977ad-a9e2-7176-8c88-a5a40768db79",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "BLM",
				name = "AutoSim",
				uuid = "df45ae10-d7be-0909-b362-9e6b6e3d2334",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "BLM/AutoSim",
				name = "Add safeguards",
				uuid = "ba30b17f-6f98-d73e-91d8-0365cb5e45fb",
			},
			objectType = "folder",
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
									"37651a8d-cafb-730b-866f-55fea94d28fc",
									true,
								},
								
								{
									"a59d8938-e5f5-c43c-9a47-450efd734ca0",
									true,
								},
								
								{
									"d7ab42bc-7a88-0325-9ff3-3152132ab2d5",
									true,
								},
							},
							gVar = "ACR_TensorNuke4_AOE",
							name = "AoE on",
							uuid = "32c363c4-146e-444b-8c33-36bd8e31347f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "-- Persist only user preferences; encounter state remains in data.\nlocal preferenceStore=_G.R9SSettingsStore\nif not preferenceStore then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[R9S.lua]]\n local saved={}\n if FileExists(path) then local value=FileLoad(path);if type(value)==\"table\" then saved=value end end\n local specs={{\"R9S_BLM_ForecastConfig\",{earliest=434.522,latest=585.478}},{\"R9S_EU_GuideConfig\",{enabled=true,scratch=true,tether=true}}}\n for _,spec in ipairs(specs) do\n  local key,defaults=spec[1],spec[2]\n  local C=_G[key]\n  if not C then C=type(saved[key])==\"table\" and saved[key] or {} end\n  for name,value in pairs(defaults) do\n   if type(C[name])~=type(value) or (type(value)==\"number\" and (C[name]~=C[name] or C[name]<=-math.huge or C[name]>=math.huge)) then C[name]=value end\n  end\n  _G[key]=C\n end\n preferenceStore={}\n function preferenceStore.save()\n  local values,parts={},{}\n  for _,spec in ipairs(specs) do\n   local key=spec[1];local C=_G[key];local copy={};values[key]=copy\n   local keys={};for name,value in pairs(C) do\n    if type(name)==\"string\" and (type(value)==\"boolean\" or type(value)==\"string\" or (type(value)==\"number\" and value==value and value>-math.huge and value<math.huge)) then keys[#keys+1]=name end\n   end\n   table.sort(keys)\n   for _,name in ipairs(keys) do copy[name]=C[name];parts[#parts+1]=key..\":\"..name..\":\"..tostring(C[name]) end\n  end\n  local signature=table.concat(parts,\";\")\n  if signature==preferenceStore.saved then return end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,values);preferenceStore.saved=signature\n end\n _G.R9SSettingsStore=preferenceStore;preferenceStore.save()\nend\n_G.R9S_BLM_AddAOEOwned=nil\nself.used=true",
							conditions = 
							{
								
								{
									"37651a8d-cafb-730b-866f-55fea94d28fc",
									true,
								},
								
								{
									"a59d8938-e5f5-c43c-9a47-450efd734ca0",
									true,
								},
								
								{
									"d7ab42bc-7a88-0325-9ff3-3152132ab2d5",
									true,
								},
							},
							name = "Release owned block",
							uuid = "ef22b0c0-5111-8498-9199-fb99f0aac990",
							version = 2.1,
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
							localmapid = 1321,
							name = "R9S only",
							uuid = "37651a8d-cafb-730b-866f-55fea94d28fc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BLACKMAGE",
							name = "BLM only",
							uuid = "a59d8938-e5f5-c43c-9a47-450efd734ca0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- Persist only user preferences; encounter state remains in data.\nlocal preferenceStore=_G.R9SSettingsStore\nif not preferenceStore then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[R9S.lua]]\n local saved={}\n if FileExists(path) then local value=FileLoad(path);if type(value)==\"table\" then saved=value end end\n local specs={{\"R9S_BLM_ForecastConfig\",{earliest=434.522,latest=585.478}},{\"R9S_EU_GuideConfig\",{enabled=true,scratch=true,tether=true}}}\n for _,spec in ipairs(specs) do\n  local key,defaults=spec[1],spec[2]\n  local C=_G[key]\n  if not C then C=type(saved[key])==\"table\" and saved[key] or {} end\n  for name,value in pairs(defaults) do\n   if type(C[name])~=type(value) or (type(value)==\"number\" and (C[name]~=C[name] or C[name]<=-math.huge or C[name]>=math.huge)) then C[name]=value end\n  end\n  _G[key]=C\n end\n preferenceStore={}\n function preferenceStore.save()\n  local values,parts={},{}\n  for _,spec in ipairs(specs) do\n   local key=spec[1];local C=_G[key];local copy={};values[key]=copy\n   local keys={};for name,value in pairs(C) do\n    if type(name)==\"string\" and (type(value)==\"boolean\" or type(value)==\"string\" or (type(value)==\"number\" and value==value and value>-math.huge and value<math.huge)) then keys[#keys+1]=name end\n   end\n   table.sort(keys)\n   for _,name in ipairs(keys) do copy[name]=C[name];parts[#parts+1]=key..\":\"..name..\":\"..tostring(C[name]) end\n  end\n  local signature=table.concat(parts,\";\")\n  if signature==preferenceStore.saved then return end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,values);preferenceStore.saved=signature\n end\n _G.R9SSettingsStore=preferenceStore;preferenceStore.save()\nend\nreturn _G.R9S_BLM_AddAOEOwned==true",
							name = "Owned AoE block",
							uuid = "d7ab42bc-7a88-0325-9ff3-3152132ab2d5",
							version = 3,
						},
					},
				},
				displayPath = "BLM/AutoSim/Add safeguards",
				mechanicTime = 355.501,
				name = "[BLM] Restore AoE - restore",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 85,
				timerEndOffset = 5,
				timerStartOffset = 2,
				uuid = "52df023a-65e1-fdbf-81db-b75b30d0e598",
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
				name = "store\\anyone\\savage6\\m9s\\modules\\mitigation",
				uuid = "2b14b744-9aec-bce8-5e51-1b9288d64b54",
			},
			inheritanceRoot = "store\\anyone\\savage6\\m9s\\modules\\mitigation",
			objectType = "folder",
		},
	},
	[90] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\savage6\\m9s\\modules\\mitigation",
				uuid = "a54e56a9-8af6-69fd-9c9e-ea3fb3651af9",
			},
			inheritanceRoot = "store\\anyone\\savage6\\m9s\\modules\\mitigation",
			objectType = "folder",
		},
	},
	[92] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\savage6\\m9s\\modules\\draws",
				uuid = "57d11bb7-5987-1be3-1282-5065502ad207",
			},
			inheritanceRoot = "store\\anyone\\savage6\\m9s\\modules\\draws",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "BLM",
				uuid = "714056c6-7c47-b3b9-a04b-275fba4ec970",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "BLM",
				name = "Movement",
				uuid = "f08ebdb7-f4ad-8f00-8af3-e2202fcbcc80",
			},
			objectType = "folder",
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
									"79ece43c-ee10-4a68-b214-9508b6018a0e",
									true,
								},
								
								{
									"cf11cfae-34f0-a598-8152-2b51f9174ba5",
									true,
								},
							},
							gVar = "ACR_TensorNuke4_Hotbar_Sprint",
							uuid = "acc4a328-010f-733b-b951-47c47d674fb7",
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
							localmapid = 1321,
							name = "R9S only",
							uuid = "79ece43c-ee10-4a68-b214-9508b6018a0e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BLACKMAGE",
							name = "Black Mage",
							uuid = "cf11cfae-34f0-a598-8152-2b51f9174ba5",
							version = 3,
						},
					},
				},
				displayPath = "BLM/Movement",
				mechanicTime = 399.595,
				name = "[BLM] Sprint - Hell in a Cell setup",
				timeRange = true,
				timelineIndex = 92,
				timerEndOffset = -4,
				timerStartOffset = -10,
				uuid = "b389eb27-087d-5428-b265-a82769757f28",
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
				name = "BLM",
				uuid = "6521f715-3ac7-2170-9be8-08688ad21544",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "BLM",
				name = "AutoSim",
				uuid = "3b4af243-1642-a0e1-9624-ccc80e339229",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "BLM/AutoSim",
				name = "Add safeguards",
				uuid = "1d08f5a4-3abd-4b72-a2f4-0fd026fe5f2e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local A=TensorCore.API.TensorACR\nlocal exists=A.getAOEBlacklistEntry(14304)\nlocal entry=A.addAOEBlacklistEntry(14304,\"R9S Charnel Cell - personal tower add\")\nif not exists or not entry.enabled then\n entry.enabled=true\n A.saveAOEBlacklist()\nend\nlocal dotExists=A.getBlacklistEntry(14304)\nlocal dot=A.addBlacklistEntry(14304,\"R9S Charnel Cell - short-lived personal add\")\nif not dotExists or not dot.enabled then\n dot.enabled=true\n A.saveDotBlacklist()\nend\nself.used=true",
							conditions = 
							{
								
								{
									"375b5019-40be-c531-92f7-23ea8976c5f4",
									true,
								},
								
								{
									"077eeee2-c938-1f0c-80d4-9971b2aa04de",
									true,
								},
							},
							name = "Blacklist personal tower adds once",
							uuid = "4f6d6163-d702-be41-af55-5cfc94b65d0d",
							version = 2.1,
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
							localmapid = 1321,
							name = "R9S only",
							uuid = "375b5019-40be-c531-92f7-23ea8976c5f4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BLACKMAGE",
							name = "BLM only",
							uuid = "077eeee2-c938-1f0c-80d4-9971b2aa04de",
							version = 3,
						},
					},
				},
				displayPath = "BLM/AutoSim/Add safeguards",
				mechanicTime = 402.235,
				name = "[BLM] AoE/DoT blacklist Charnel Cell - cells",
				timeRange = true,
				timelineIndex = 95,
				timerEndOffset = 30,
				timerStartOffset = -5,
				uuid = "c51130bf-c599-d225-a318-50f5ba2780bd",
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
				name = "store\\anyone\\savage6\\m9s\\modules\\draws",
				uuid = "053fe245-c960-5d61-8cb3-33d7bb480a95",
			},
			inheritanceRoot = "store\\anyone\\savage6\\m9s\\modules\\draws",
			objectType = "folder",
		},
	},
	[115] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\savage6\\m9s\\modules\\mitigation",
				uuid = "277237a3-42b8-f697-5218-d505d6a5c433",
			},
			inheritanceRoot = "store\\anyone\\savage6\\m9s\\modules\\mitigation",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "BLM",
				uuid = "1667462b-8f06-71e8-afe7-fe4dc7bf6028",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "BLM",
				name = "Personal mitigation",
				uuid = "badd1858-ef81-05de-9a29-08ba1ccc5a51",
			},
			objectType = "folder",
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
									"a2585b61-b366-8649-a045-44b4a6f9c993",
									true,
								},
								
								{
									"8f030c5e-f6d7-33d1-a26d-aabce268f374",
									true,
								},
							},
							gVar = "ACR_TensorNuke4_Hotbar_Manaward",
							uuid = "3d2ff8d4-f839-266d-9390-93db8cc2ff97",
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
							localmapid = 1321,
							name = "R9S only",
							uuid = "a2585b61-b366-8649-a045-44b4a6f9c993",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BLACKMAGE",
							name = "Black Mage",
							uuid = "8f030c5e-f6d7-33d1-a26d-aabce268f374",
							version = 3,
						},
					},
				},
				displayPath = "BLM/Personal mitigation",
				mechanicTime = 437.078,
				name = "[BLM] Manaward - Ultrasonic late stacks",
				timeRange = true,
				timelineIndex = 115,
				timerEndOffset = -1,
				timerStartOffset = -8,
				uuid = "6b2ad8e2-d368-ec32-8636-c253a06554e2",
				version = 2,
			},
		},
	},
	[118] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\savage6\\m9s\\modules\\draws",
				uuid = "24812abe-3658-5c92-9f59-beec7931e74e",
			},
			inheritanceRoot = "store\\anyone\\savage6\\m9s\\modules\\draws",
			objectType = "folder",
		},
	},
	[120] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\savage6\\m9s\\modules\\draws",
				uuid = "be235ad3-8c8f-6b37-e111-15a54e262a23",
			},
			inheritanceRoot = "store\\anyone\\savage6\\m9s\\modules\\draws",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "EU personal guidance",
				uuid = "4ed9f0da-7e16-14d9-94eb-bc7183eec68d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "EU personal guidance",
				name = "Sanguine Scratch",
				uuid = "6b45d969-850d-82d0-ade8-011bd2f26fd1",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local now=Now()\nlocal S=data.r9sScratch\nif not S or now-S.started>2000 then S={started=now,hits=0};data.r9sScratch=S end\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nif e then\n local pos=TensorCore.getPosInDirection(e.pos,e.pos.h,10)\n pos.y=e.pos.y+1\n AnyoneCore.addWorldTextCountdown((eventArgs.channelTimeMax+.3)*1000,pos,0xFF0000FF,true,1.3)\nend\nself.used=true",
							conditions = 
							{
								
								{
									"a0f9c016-ffee-64cc-908a-83647b21da05",
									true,
								},
								
								{
									"dea487d3-7094-5e4d-af9d-379d2d070937",
									true,
								},
								
								{
									"78b21a53-6146-bd87-9cc3-b150aad8e13c",
									true,
								},
							},
							name = "Cone countdowns - first volley",
							uuid = "4bd2484e-dc76-6084-a489-c2033d73c087",
							version = 2.1,
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
							localmapid = 1321,
							name = "R9S only",
							uuid = "a0f9c016-ffee-64cc-908a-83647b21da05",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 45989,
							name = "First Scratch cone",
							uuid = "dea487d3-7094-5e4d-af9d-379d2d070937",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- Persist only user preferences; encounter state remains in data.\nlocal preferenceStore=_G.R9SSettingsStore\nif not preferenceStore then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[R9S.lua]]\n local saved={}\n if FileExists(path) then local value=FileLoad(path);if type(value)==\"table\" then saved=value end end\n local specs={{\"R9S_BLM_ForecastConfig\",{earliest=434.522,latest=585.478}},{\"R9S_EU_GuideConfig\",{enabled=true,scratch=true,tether=true}}}\n for _,spec in ipairs(specs) do\n  local key,defaults=spec[1],spec[2]\n  local C=_G[key]\n  if not C then C=type(saved[key])==\"table\" and saved[key] or {} end\n  for name,value in pairs(defaults) do\n   if type(C[name])~=type(value) or (type(value)==\"number\" and (C[name]~=C[name] or C[name]<=-math.huge or C[name]>=math.huge)) then C[name]=value end\n  end\n  _G[key]=C\n end\n preferenceStore={}\n function preferenceStore.save()\n  local values,parts={},{}\n  for _,spec in ipairs(specs) do\n   local key=spec[1];local C=_G[key];local copy={};values[key]=copy\n   local keys={};for name,value in pairs(C) do\n    if type(name)==\"string\" and (type(value)==\"boolean\" or type(value)==\"string\" or (type(value)==\"number\" and value==value and value>-math.huge and value<math.huge)) then keys[#keys+1]=name end\n   end\n   table.sort(keys)\n   for _,name in ipairs(keys) do copy[name]=C[name];parts[#parts+1]=key..\":\"..name..\":\"..tostring(C[name]) end\n  end\n  local signature=table.concat(parts,\";\")\n  if signature==preferenceStore.saved then return end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,values);preferenceStore.saved=signature\n end\n _G.R9SSettingsStore=preferenceStore;preferenceStore.save()\nend\nlocal C=_G.R9S_EU_GuideConfig\nreturn C==nil or (C.enabled==true and C.scratch~=false)",
							name = "Countdowns enabled",
							uuid = "78b21a53-6146-bd87-9cc3-b150aad8e13c",
							version = 3,
						},
					},
				},
				displayPath = "EU personal guidance/Sanguine Scratch",
				eventType = 3,
				loop = true,
				mechanicTime = 458.891,
				name = "[EU Guide] Cone countdowns - first volley",
				timeRange = true,
				timelineIndex = 120,
				timerEndOffset = 40,
				timerStartOffset = -10,
				uuid = "89b12dda-5c1f-6a93-8bfa-c7bc0b13dab6",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.r9sScratch\nif S then\n S.hits=S.hits+1\n if S.hits<=32 then\n  local e=TensorCore.mGetEntity(eventArgs.entityID)\n  if e then\n   local pos=TensorCore.getPosInDirection(e.pos,e.pos.h+math.pi/8,10)\n   pos.y=e.pos.y+1\n   AnyoneCore.addWorldTextCountdown(2400,pos,0xFF0000FF,true,1.3)\n  end\n end\nend\nself.used=true",
							conditions = 
							{
								
								{
									"7ad98572-e665-2c9d-8fcf-13b712cf92ac",
									true,
								},
								
								{
									"f8c6952f-7491-3e24-8b13-08677c0e2203",
									true,
								},
								
								{
									"a8da261c-4df4-073d-858d-3954266cfa89",
									true,
								},
							},
							name = "Cone countdowns - next volley",
							uuid = "9b8eb829-6787-29a7-9f4c-fadb0d5d489d",
							version = 2.1,
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
							localmapid = 1321,
							name = "R9S only",
							uuid = "7ad98572-e665-2c9d-8fcf-13b712cf92ac",
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
							name = "Scratch cone hit",
							spellIDList = 
							{
								45989,
								45991,
							},
							uuid = "f8c6952f-7491-3e24-8b13-08677c0e2203",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- Persist only user preferences; encounter state remains in data.\nlocal preferenceStore=_G.R9SSettingsStore\nif not preferenceStore then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[R9S.lua]]\n local saved={}\n if FileExists(path) then local value=FileLoad(path);if type(value)==\"table\" then saved=value end end\n local specs={{\"R9S_BLM_ForecastConfig\",{earliest=434.522,latest=585.478}},{\"R9S_EU_GuideConfig\",{enabled=true,scratch=true,tether=true}}}\n for _,spec in ipairs(specs) do\n  local key,defaults=spec[1],spec[2]\n  local C=_G[key]\n  if not C then C=type(saved[key])==\"table\" and saved[key] or {} end\n  for name,value in pairs(defaults) do\n   if type(C[name])~=type(value) or (type(value)==\"number\" and (C[name]~=C[name] or C[name]<=-math.huge or C[name]>=math.huge)) then C[name]=value end\n  end\n  _G[key]=C\n end\n preferenceStore={}\n function preferenceStore.save()\n  local values,parts={},{}\n  for _,spec in ipairs(specs) do\n   local key=spec[1];local C=_G[key];local copy={};values[key]=copy\n   local keys={};for name,value in pairs(C) do\n    if type(name)==\"string\" and (type(value)==\"boolean\" or type(value)==\"string\" or (type(value)==\"number\" and value==value and value>-math.huge and value<math.huge)) then keys[#keys+1]=name end\n   end\n   table.sort(keys)\n   for _,name in ipairs(keys) do copy[name]=C[name];parts[#parts+1]=key..\":\"..name..\":\"..tostring(C[name]) end\n  end\n  local signature=table.concat(parts,\";\")\n  if signature==preferenceStore.saved then return end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,values);preferenceStore.saved=signature\n end\n _G.R9SSettingsStore=preferenceStore;preferenceStore.save()\nend\nlocal C=_G.R9S_EU_GuideConfig\nreturn C==nil or (C.enabled==true and C.scratch~=false)",
							name = "Countdowns enabled",
							uuid = "a8da261c-4df4-073d-858d-3954266cfa89",
							version = 3,
						},
					},
				},
				displayPath = "EU personal guidance/Sanguine Scratch",
				eventType = 2,
				loop = true,
				mechanicTime = 458.891,
				name = "[EU Guide] Cone countdowns - next volley",
				timeRange = true,
				timelineIndex = 120,
				timerEndOffset = 40,
				timerStartOffset = -10,
				uuid = "479b89b4-c39c-cb35-a15f-fd218d39baf9",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "AnyoneCore.addTimedWorldTextOnEnt(2500,\"Too far - follow your bat\",Player.id,0xFF0000FF,true,1.5,3)\nself.used=true",
							conditions = 
							{
								
								{
									"3755595c-3754-001e-a1f9-528eed120bbb",
									true,
								},
								
								{
									"4122eb0b-58a8-8202-91ea-063dd08b8ba6",
									true,
								},
								
								{
									"1018edb3-b6b9-9757-b8ae-7f2a9cbd0b94",
									true,
								},
								
								{
									"1c1b5b30-4999-8670-850f-caa6476d8c0e",
									true,
								},
							},
							name = "Bat tether too far",
							uuid = "72ab7e2a-9aa8-da77-9883-783a63a4a69b",
							version = 2.1,
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
							localmapid = 1321,
							name = "R9S only",
							uuid = "3755595c-3754-001e-a1f9-528eed120bbb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							comparator = 3,
							dequeueIfLuaFalse = true,
							eventArgType = 5,
							eventIntValue = 354,
							name = "Long tether",
							uuid = "4122eb0b-58a8-8202-91ea-063dd08b8ba6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.sourceEntityID==Player.id",
							dequeueIfLuaFalse = true,
							name = "Your tether",
							uuid = "1018edb3-b6b9-9757-b8ae-7f2a9cbd0b94",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- Persist only user preferences; encounter state remains in data.\nlocal preferenceStore=_G.R9SSettingsStore\nif not preferenceStore then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[R9S.lua]]\n local saved={}\n if FileExists(path) then local value=FileLoad(path);if type(value)==\"table\" then saved=value end end\n local specs={{\"R9S_BLM_ForecastConfig\",{earliest=434.522,latest=585.478}},{\"R9S_EU_GuideConfig\",{enabled=true,scratch=true,tether=true}}}\n for _,spec in ipairs(specs) do\n  local key,defaults=spec[1],spec[2]\n  local C=_G[key]\n  if not C then C=type(saved[key])==\"table\" and saved[key] or {} end\n  for name,value in pairs(defaults) do\n   if type(C[name])~=type(value) or (type(value)==\"number\" and (C[name]~=C[name] or C[name]<=-math.huge or C[name]>=math.huge)) then C[name]=value end\n  end\n  _G[key]=C\n end\n preferenceStore={}\n function preferenceStore.save()\n  local values,parts={},{}\n  for _,spec in ipairs(specs) do\n   local key=spec[1];local C=_G[key];local copy={};values[key]=copy\n   local keys={};for name,value in pairs(C) do\n    if type(name)==\"string\" and (type(value)==\"boolean\" or type(value)==\"string\" or (type(value)==\"number\" and value==value and value>-math.huge and value<math.huge)) then keys[#keys+1]=name end\n   end\n   table.sort(keys)\n   for _,name in ipairs(keys) do copy[name]=C[name];parts[#parts+1]=key..\":\"..name..\":\"..tostring(C[name]) end\n  end\n  local signature=table.concat(parts,\";\")\n  if signature==preferenceStore.saved then return end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,values);preferenceStore.saved=signature\n end\n _G.R9SSettingsStore=preferenceStore;preferenceStore.save()\nend\nlocal C=_G.R9S_EU_GuideConfig\nreturn C==nil or (C.enabled==true and C.tether~=false)",
							name = "Tether warning enabled",
							uuid = "1c1b5b30-4999-8670-850f-caa6476d8c0e",
							version = 3,
						},
					},
				},
				displayPath = "EU personal guidance/Sanguine Scratch",
				eventType = 15,
				loop = true,
				mechanicTime = 458.891,
				name = "[EU Guide] Bat tether too far",
				timeRange = true,
				timelineIndex = 120,
				timerEndOffset = 40,
				timerStartOffset = -10,
				uuid = "6d06f725-8242-0cb6-8a72-36b355fe9b43",
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
				name = "store\\anyone\\savage6\\m9s\\modules\\core",
				uuid = "f22450ef-aa06-f373-3fae-bf75481a479f",
			},
			inheritanceRoot = "store\\anyone\\savage6\\m9s\\modules\\core",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\savage6\\m9s\\modules\\draws",
				uuid = "d1287fe3-0086-6b8f-6482-516d56093d33",
			},
			inheritanceRoot = "store\\anyone\\savage6\\m9s\\modules\\draws",
			objectType = "folder",
		},
	},
	[144] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\savage6\\m9s\\modules\\draws",
				uuid = "07965db5-34ee-d649-5cce-5d5ba9b1c7c5",
			},
			inheritanceRoot = "store\\anyone\\savage6\\m9s\\modules\\draws",
			objectType = "folder",
		},
	},
	[148] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\savage6\\m9s\\modules\\mitigation",
				uuid = "e7f8ab25-0b81-4519-bf7b-480fb160cbb5",
			},
			inheritanceRoot = "store\\anyone\\savage6\\m9s\\modules\\mitigation",
			objectType = "folder",
		},
	},
	[149] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\savage6\\m9s\\modules\\core",
				uuid = "21b853b6-bf56-c78a-a6b5-3cf02bab37a6",
			},
			inheritanceRoot = "store\\anyone\\savage6\\m9s\\modules\\core",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\savage6\\m9s\\modules\\draws",
				uuid = "9e8d2cf8-bcb4-5124-3296-c6ae112c1fc8",
			},
			inheritanceRoot = "store\\anyone\\savage6\\m9s\\modules\\draws",
			objectType = "folder",
		},
	},
	[150] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "BLM",
				uuid = "c9fb23db-685a-8ec3-9d03-3b0317c197a7",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "BLM",
				name = "Movement",
				uuid = "fb4a91f8-7fa2-63e4-9c7b-312fbf9a390f",
			},
			objectType = "folder",
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
									"d1fd4bd7-2c6e-68c6-8a6e-352f8c76fa39",
									true,
								},
								
								{
									"160ecafe-0926-b5ae-b97c-f57eb19123ee",
									true,
								},
							},
							gVar = "ACR_TensorNuke4_Hotbar_Sprint",
							uuid = "87165c2c-acf8-0ecd-8e85-0735a73960ae",
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
							localmapid = 1321,
							name = "R9S only",
							uuid = "d1fd4bd7-2c6e-68c6-8a6e-352f8c76fa39",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BLACKMAGE",
							name = "Black Mage",
							uuid = "160ecafe-0926-b5ae-b97c-f57eb19123ee",
							version = 3,
						},
					},
				},
				displayPath = "BLM/Movement",
				mechanicTime = 510.234,
				name = "[BLM] Sprint - late puddle movement",
				timeRange = true,
				timelineIndex = 150,
				timerEndOffset = -1,
				timerStartOffset = -7,
				uuid = "61b8ac63-4f8d-6c8a-9741-390a69534f97",
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
				name = "store\\anyone\\savage6\\m9s\\modules\\draws",
				uuid = "884c7885-338a-4c19-bf70-deaff909ee95",
			},
			inheritanceRoot = "store\\anyone\\savage6\\m9s\\modules\\draws",
			objectType = "folder",
		},
	},
	[168] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\savage6\\m9s\\modules\\mitigation",
				uuid = "bb2cd277-01a8-b54b-5809-915dcbb434c7",
			},
			inheritanceRoot = "store\\anyone\\savage6\\m9s\\modules\\mitigation",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "BLM",
				uuid = "206ffb8e-5c24-8f6b-88d5-9a67f44ae26b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "BLM",
				name = "Personal mitigation",
				uuid = "d0a28f59-8bc8-2d88-bc8c-55b83c742b72",
			},
			objectType = "folder",
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
									"be434d23-f803-6fab-aa24-befe15f89bd3",
									true,
								},
								
								{
									"b6271839-9859-9655-83ab-19989f481ec8",
									true,
								},
							},
							gVar = "ACR_TensorNuke4_Hotbar_Manaward",
							uuid = "2a186a01-2e2a-f90e-b84c-89b2fb504121",
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
							localmapid = 1321,
							name = "R9S only",
							uuid = "be434d23-f803-6fab-aa24-befe15f89bd3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BLACKMAGE",
							name = "Black Mage",
							uuid = "b6271839-9859-9655-83ab-19989f481ec8",
							version = 3,
						},
					},
				},
				displayPath = "BLM/Personal mitigation",
				mechanicTime = 569.218,
				name = "[BLM] Manaward - Insatiable Thirst late",
				timeRange = true,
				timelineIndex = 168,
				timerEndOffset = -1,
				timerStartOffset = -8,
				uuid = "8ddc149f-0f4a-d3d8-b801-646234026fe4",
				version = 2,
			},
		},
	},
	inheritedProfiles = 
	{
		"store\\anyone\\savage6\\m9s\\modules\\core",
		"store\\anyone\\savage6\\m9s\\modules\\draws",
		"store\\anyone\\savage6\\m9s\\modules\\mitigation",
	},
	timelineName = "r9s",
	version = "1.5.0",
}



return tbl
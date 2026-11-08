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
							aType = "ACR",
							conditions = 
							{
								
								{
									"c581a7ef-034f-1fcf-9d7c-79f162e77b63",
									true,
								},
								
								{
									"3b1b531d-0b77-71d2-9056-c9879d90eb94",
									true,
								},
								
								{
									"9c91a700-c3d7-dc9a-a329-3979d4e0b4b5",
									true,
								},
							},
							gVar = "ACR_RikuMNK3_Hotbar_Potion",
							name = "Potion",
							uuid = "720eb66f-f9b0-b910-ba21-229ed7a188b4",
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
							conditionLua = "-- Profile-owned preferences; no dependency on Minion's settings subsystem.\nlocal profileStore=_G.LPDU_UCOB_SettingsStore\nif not profileStore or profileStore.fileApiVersion~=1 then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[UCOB-LPDU.lua]]\n local values=profileStore and profileStore.values or {}\n if not profileStore and FileExists(path) then\n  local saved=FileLoad(path)\n  if type(saved)==\"table\" then values=saved end\n end\n profileStore=profileStore or {values=values}\n profileStore.path=path\n function profileStore.encode()\n  local lines={}\n  local function encode(s)return (s:gsub('[%%\\t\\r\\n]',function(c)return string.format('%%%02X',string.byte(c))end))end\n  local function visit(values,path)\n   local keys={};for key in pairs(values)do if type(key)=='string' and key:match('^[%w_]+$')then keys[#keys+1]=key end end;table.sort(keys)\n   for _,key in ipairs(keys)do\n    local value=values[key];local full=path=='' and key or path..'.'..key;local kind=type(value)\n    if kind=='table' then visit(value,full)\n    elseif kind=='string' then lines[#lines+1]=full..'\\ts\\t'..encode(value)\n    elseif kind=='number' then lines[#lines+1]=full..'\\tn\\t'..tostring(value)\n    elseif kind=='boolean' then lines[#lines+1]=full..'\\tb\\t'..tostring(value)end\n   end\n  end\n  visit(profileStore.values,'');return table.concat(lines,'\\n')..'\\n'\n end\n function profileStore.save()\n  local text=profileStore.encode()\n  if text==profileStore.saved then return true end\n  if text==profileStore.failedContent then return false end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  local ok,why=pcall(FileSave,path,profileStore.values)\n  if not ok then profileStore.error=tostring(why);profileStore.failedContent=text;return false end\n  profileStore.saved=text;profileStore.error=nil;profileStore.failedContent=nil;return true\n end\n profileStore.fileApiVersion=1\n _G.LPDU_UCOB_SettingsStore=profileStore\nend\n\nlocal rootSettings=profileStore or (_G and profileStore)\nlocal ucobSettings=rootSettings and rootSettings.values\nif not ucobSettings then return false end\nreturn ucobSettings.LPDU_UCOB_PotionsEnabled ~= false",
							name = "LPDU potions enabled",
							uuid = "c581a7ef-034f-1fcf-9d7c-79f162e77b63",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 7,
							name = "In combat",
							uuid = "3b1b531d-0b77-71d2-9056-c9879d90eb94",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- Profile-owned preferences; no dependency on Minion's settings subsystem.\nlocal profileStore=_G.LPDU_UCOB_SettingsStore\nif not profileStore or profileStore.fileApiVersion~=1 then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[UCOB-LPDU.lua]]\n local values=profileStore and profileStore.values or {}\n if not profileStore and FileExists(path) then\n  local saved=FileLoad(path)\n  if type(saved)==\"table\" then values=saved end\n end\n profileStore=profileStore or {values=values}\n profileStore.path=path\n function profileStore.encode()\n  local lines={}\n  local function encode(s)return (s:gsub('[%%\\t\\r\\n]',function(c)return string.format('%%%02X',string.byte(c))end))end\n  local function visit(values,path)\n   local keys={};for key in pairs(values)do if type(key)=='string' and key:match('^[%w_]+$')then keys[#keys+1]=key end end;table.sort(keys)\n   for _,key in ipairs(keys)do\n    local value=values[key];local full=path=='' and key or path..'.'..key;local kind=type(value)\n    if kind=='table' then visit(value,full)\n    elseif kind=='string' then lines[#lines+1]=full..'\\ts\\t'..encode(value)\n    elseif kind=='number' then lines[#lines+1]=full..'\\tn\\t'..tostring(value)\n    elseif kind=='boolean' then lines[#lines+1]=full..'\\tb\\t'..tostring(value)end\n   end\n  end\n  visit(profileStore.values,'');return table.concat(lines,'\\n')..'\\n'\n end\n function profileStore.save()\n  local text=profileStore.encode()\n  if text==profileStore.saved then return true end\n  if text==profileStore.failedContent then return false end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  local ok,why=pcall(FileSave,path,profileStore.values)\n  if not ok then profileStore.error=tostring(why);profileStore.failedContent=text;return false end\n  profileStore.saved=text;profileStore.error=nil;profileStore.failedContent=nil;return true\n end\n profileStore.fileApiVersion=1\n _G.LPDU_UCOB_SettingsStore=profileStore\nend\n\nlocal rootSettings=profileStore or (_G and profileStore)\nlocal ucobSettings=rootSettings and rootSettings.values\nif not ucobSettings then return false end\nreturn ucobSettings.LPDU_UCOB_PotionOpener ~= false",
							name = "Opener potion enabled",
							uuid = "9c91a700-c3d7-dc9a-a329-3979d4e0b4b5",
							version = 3,
						},
					},
				},
				mechanicTime = 7,
				name = "[LPDU Potion] Opener",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = -0.69999998807907,
				timerStartOffset = -3.7000000476837,
				uuid = "71a2ed0c-a552-ffda-8d88-24cb90ef1671",
				version = 2,
			},
		},
	},
	[72] = 
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
							conditions = 
							{
								
								{
									"8afecc54-b192-8fda-b233-0ba8bed49ec7",
									true,
								},
								
								{
									"fdcac0e0-963a-048c-8efc-7d8d21ad51f9",
									true,
								},
								
								{
									"fb7c7239-5965-50ce-90d5-fcd1db332029",
									true,
								},
							},
							gVar = "ACR_RikuMNK3_Hotbar_Potion",
							name = "Potion",
							uuid = "a3c35932-130a-b36a-86fd-c13064035c6a",
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
							conditionLua = "-- Profile-owned preferences; no dependency on Minion's settings subsystem.\nlocal profileStore=_G.LPDU_UCOB_SettingsStore\nif not profileStore or profileStore.fileApiVersion~=1 then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[UCOB-LPDU.lua]]\n local values=profileStore and profileStore.values or {}\n if not profileStore and FileExists(path) then\n  local saved=FileLoad(path)\n  if type(saved)==\"table\" then values=saved end\n end\n profileStore=profileStore or {values=values}\n profileStore.path=path\n function profileStore.encode()\n  local lines={}\n  local function encode(s)return (s:gsub('[%%\\t\\r\\n]',function(c)return string.format('%%%02X',string.byte(c))end))end\n  local function visit(values,path)\n   local keys={};for key in pairs(values)do if type(key)=='string' and key:match('^[%w_]+$')then keys[#keys+1]=key end end;table.sort(keys)\n   for _,key in ipairs(keys)do\n    local value=values[key];local full=path=='' and key or path..'.'..key;local kind=type(value)\n    if kind=='table' then visit(value,full)\n    elseif kind=='string' then lines[#lines+1]=full..'\\ts\\t'..encode(value)\n    elseif kind=='number' then lines[#lines+1]=full..'\\tn\\t'..tostring(value)\n    elseif kind=='boolean' then lines[#lines+1]=full..'\\tb\\t'..tostring(value)end\n   end\n  end\n  visit(profileStore.values,'');return table.concat(lines,'\\n')..'\\n'\n end\n function profileStore.save()\n  local text=profileStore.encode()\n  if text==profileStore.saved then return true end\n  if text==profileStore.failedContent then return false end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  local ok,why=pcall(FileSave,path,profileStore.values)\n  if not ok then profileStore.error=tostring(why);profileStore.failedContent=text;return false end\n  profileStore.saved=text;profileStore.error=nil;profileStore.failedContent=nil;return true\n end\n profileStore.fileApiVersion=1\n _G.LPDU_UCOB_SettingsStore=profileStore\nend\n\nlocal rootSettings=profileStore or (_G and profileStore)\nlocal ucobSettings=rootSettings and rootSettings.values\nif not ucobSettings then return false end\nreturn ucobSettings.LPDU_UCOB_PotionsEnabled ~= false",
							name = "LPDU potions enabled",
							uuid = "8afecc54-b192-8fda-b233-0ba8bed49ec7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 7,
							name = "In combat",
							uuid = "fdcac0e0-963a-048c-8efc-7d8d21ad51f9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- Profile-owned preferences; no dependency on Minion's settings subsystem.\nlocal profileStore=_G.LPDU_UCOB_SettingsStore\nif not profileStore or profileStore.fileApiVersion~=1 then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[UCOB-LPDU.lua]]\n local values=profileStore and profileStore.values or {}\n if not profileStore and FileExists(path) then\n  local saved=FileLoad(path)\n  if type(saved)==\"table\" then values=saved end\n end\n profileStore=profileStore or {values=values}\n profileStore.path=path\n function profileStore.encode()\n  local lines={}\n  local function encode(s)return (s:gsub('[%%\\t\\r\\n]',function(c)return string.format('%%%02X',string.byte(c))end))end\n  local function visit(values,path)\n   local keys={};for key in pairs(values)do if type(key)=='string' and key:match('^[%w_]+$')then keys[#keys+1]=key end end;table.sort(keys)\n   for _,key in ipairs(keys)do\n    local value=values[key];local full=path=='' and key or path..'.'..key;local kind=type(value)\n    if kind=='table' then visit(value,full)\n    elseif kind=='string' then lines[#lines+1]=full..'\\ts\\t'..encode(value)\n    elseif kind=='number' then lines[#lines+1]=full..'\\tn\\t'..tostring(value)\n    elseif kind=='boolean' then lines[#lines+1]=full..'\\tb\\t'..tostring(value)end\n   end\n  end\n  visit(profileStore.values,'');return table.concat(lines,'\\n')..'\\n'\n end\n function profileStore.save()\n  local text=profileStore.encode()\n  if text==profileStore.saved then return true end\n  if text==profileStore.failedContent then return false end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  local ok,why=pcall(FileSave,path,profileStore.values)\n  if not ok then profileStore.error=tostring(why);profileStore.failedContent=text;return false end\n  profileStore.saved=text;profileStore.error=nil;profileStore.failedContent=nil;return true\n end\n profileStore.fileApiVersion=1\n _G.LPDU_UCOB_SettingsStore=profileStore\nend\n\nlocal rootSettings=profileStore or (_G and profileStore)\nlocal ucobSettings=rootSettings and rootSettings.values\nif not ucobSettings then return false end\nreturn (ucobSettings.LPDU_UCOB_PotionSecond or \"Late Nael\") == \"Late Nael\"",
							name = "Second potion - Late Nael",
							uuid = "fb7c7239-5965-50ce-90d5-fcd1db332029",
							version = 3,
						},
					},
				},
				mechanicTime = 339.5,
				name = "[LPDU Potion] Late Nael",
				timeRange = true,
				timelineIndex = 72,
				timerEndOffset = 3.8,
				timerStartOffset = 0.8,
				uuid = "d6541d47-abed-0cae-8c1a-049155fc5a5f",
				version = 2,
			},
		},
	},
	[79] = 
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
							conditions = 
							{
								
								{
									"8251d588-9642-c3c6-99e5-179b6ecae95d",
									true,
								},
								
								{
									"17dd9e4d-4768-01f6-b76d-22bf9e726046",
									true,
								},
								
								{
									"626e47d6-d8b5-55c2-8fbe-9a9c7aa59af7",
									true,
								},
							},
							gVar = "ACR_RikuMNK3_Hotbar_Potion",
							name = "Potion",
							uuid = "06892ec2-d880-db17-b74f-25b28171da54",
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
							conditionLua = "-- Profile-owned preferences; no dependency on Minion's settings subsystem.\nlocal profileStore=_G.LPDU_UCOB_SettingsStore\nif not profileStore or profileStore.fileApiVersion~=1 then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[UCOB-LPDU.lua]]\n local values=profileStore and profileStore.values or {}\n if not profileStore and FileExists(path) then\n  local saved=FileLoad(path)\n  if type(saved)==\"table\" then values=saved end\n end\n profileStore=profileStore or {values=values}\n profileStore.path=path\n function profileStore.encode()\n  local lines={}\n  local function encode(s)return (s:gsub('[%%\\t\\r\\n]',function(c)return string.format('%%%02X',string.byte(c))end))end\n  local function visit(values,path)\n   local keys={};for key in pairs(values)do if type(key)=='string' and key:match('^[%w_]+$')then keys[#keys+1]=key end end;table.sort(keys)\n   for _,key in ipairs(keys)do\n    local value=values[key];local full=path=='' and key or path..'.'..key;local kind=type(value)\n    if kind=='table' then visit(value,full)\n    elseif kind=='string' then lines[#lines+1]=full..'\\ts\\t'..encode(value)\n    elseif kind=='number' then lines[#lines+1]=full..'\\tn\\t'..tostring(value)\n    elseif kind=='boolean' then lines[#lines+1]=full..'\\tb\\t'..tostring(value)end\n   end\n  end\n  visit(profileStore.values,'');return table.concat(lines,'\\n')..'\\n'\n end\n function profileStore.save()\n  local text=profileStore.encode()\n  if text==profileStore.saved then return true end\n  if text==profileStore.failedContent then return false end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  local ok,why=pcall(FileSave,path,profileStore.values)\n  if not ok then profileStore.error=tostring(why);profileStore.failedContent=text;return false end\n  profileStore.saved=text;profileStore.error=nil;profileStore.failedContent=nil;return true\n end\n profileStore.fileApiVersion=1\n _G.LPDU_UCOB_SettingsStore=profileStore\nend\n\nlocal rootSettings=profileStore or (_G and profileStore)\nlocal ucobSettings=rootSettings and rootSettings.values\nif not ucobSettings then return false end\nreturn ucobSettings.LPDU_UCOB_PotionsEnabled ~= false",
							name = "LPDU potions enabled",
							uuid = "8251d588-9642-c3c6-99e5-179b6ecae95d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 7,
							name = "In combat",
							uuid = "17dd9e4d-4768-01f6-b76d-22bf9e726046",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- Profile-owned preferences; no dependency on Minion's settings subsystem.\nlocal profileStore=_G.LPDU_UCOB_SettingsStore\nif not profileStore or profileStore.fileApiVersion~=1 then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[UCOB-LPDU.lua]]\n local values=profileStore and profileStore.values or {}\n if not profileStore and FileExists(path) then\n  local saved=FileLoad(path)\n  if type(saved)==\"table\" then values=saved end\n end\n profileStore=profileStore or {values=values}\n profileStore.path=path\n function profileStore.encode()\n  local lines={}\n  local function encode(s)return (s:gsub('[%%\\t\\r\\n]',function(c)return string.format('%%%02X',string.byte(c))end))end\n  local function visit(values,path)\n   local keys={};for key in pairs(values)do if type(key)=='string' and key:match('^[%w_]+$')then keys[#keys+1]=key end end;table.sort(keys)\n   for _,key in ipairs(keys)do\n    local value=values[key];local full=path=='' and key or path..'.'..key;local kind=type(value)\n    if kind=='table' then visit(value,full)\n    elseif kind=='string' then lines[#lines+1]=full..'\\ts\\t'..encode(value)\n    elseif kind=='number' then lines[#lines+1]=full..'\\tn\\t'..tostring(value)\n    elseif kind=='boolean' then lines[#lines+1]=full..'\\tb\\t'..tostring(value)end\n   end\n  end\n  visit(profileStore.values,'');return table.concat(lines,'\\n')..'\\n'\n end\n function profileStore.save()\n  local text=profileStore.encode()\n  if text==profileStore.saved then return true end\n  if text==profileStore.failedContent then return false end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  local ok,why=pcall(FileSave,path,profileStore.values)\n  if not ok then profileStore.error=tostring(why);profileStore.failedContent=text;return false end\n  profileStore.saved=text;profileStore.error=nil;profileStore.failedContent=nil;return true\n end\n profileStore.fileApiVersion=1\n _G.LPDU_UCOB_SettingsStore=profileStore\nend\n\nlocal rootSettings=profileStore or (_G and profileStore)\nlocal ucobSettings=rootSettings and rootSettings.values\nif not ucobSettings then return false end\nreturn (ucobSettings.LPDU_UCOB_PotionSecond or \"Late Nael\") == \"Delayed Nael\"",
							name = "Second potion - Delayed Nael",
							uuid = "626e47d6-d8b5-55c2-8fbe-9a9c7aa59af7",
							version = 3,
						},
					},
				},
				mechanicTime = 372.7,
				name = "[LPDU Potion] Delayed Nael",
				timeRange = true,
				timelineIndex = 79,
				timerEndOffset = -0.8,
				timerStartOffset = -3.8,
				uuid = "bb6777b1-141c-362c-8a2e-e5b611586f77",
				version = 2,
			},
		},
	},
	[87] = 
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
							conditions = 
							{
								
								{
									"cd64b378-ce46-bc11-94a0-b6a793e3a5e7",
									true,
								},
								
								{
									"a5d9efd8-d52d-52e9-a22e-dc8f9c2e5259",
									true,
								},
								
								{
									"fa77eeb6-8f74-f894-8a47-56f8aee71467",
									true,
								},
							},
							gVar = "ACR_RikuMNK3_Hotbar_Potion",
							name = "Potion",
							uuid = "efea301a-8a67-5fa1-bae6-ca5bbaff7217",
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
							conditionLua = "-- Profile-owned preferences; no dependency on Minion's settings subsystem.\nlocal profileStore=_G.LPDU_UCOB_SettingsStore\nif not profileStore or profileStore.fileApiVersion~=1 then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[UCOB-LPDU.lua]]\n local values=profileStore and profileStore.values or {}\n if not profileStore and FileExists(path) then\n  local saved=FileLoad(path)\n  if type(saved)==\"table\" then values=saved end\n end\n profileStore=profileStore or {values=values}\n profileStore.path=path\n function profileStore.encode()\n  local lines={}\n  local function encode(s)return (s:gsub('[%%\\t\\r\\n]',function(c)return string.format('%%%02X',string.byte(c))end))end\n  local function visit(values,path)\n   local keys={};for key in pairs(values)do if type(key)=='string' and key:match('^[%w_]+$')then keys[#keys+1]=key end end;table.sort(keys)\n   for _,key in ipairs(keys)do\n    local value=values[key];local full=path=='' and key or path..'.'..key;local kind=type(value)\n    if kind=='table' then visit(value,full)\n    elseif kind=='string' then lines[#lines+1]=full..'\\ts\\t'..encode(value)\n    elseif kind=='number' then lines[#lines+1]=full..'\\tn\\t'..tostring(value)\n    elseif kind=='boolean' then lines[#lines+1]=full..'\\tb\\t'..tostring(value)end\n   end\n  end\n  visit(profileStore.values,'');return table.concat(lines,'\\n')..'\\n'\n end\n function profileStore.save()\n  local text=profileStore.encode()\n  if text==profileStore.saved then return true end\n  if text==profileStore.failedContent then return false end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  local ok,why=pcall(FileSave,path,profileStore.values)\n  if not ok then profileStore.error=tostring(why);profileStore.failedContent=text;return false end\n  profileStore.saved=text;profileStore.error=nil;profileStore.failedContent=nil;return true\n end\n profileStore.fileApiVersion=1\n _G.LPDU_UCOB_SettingsStore=profileStore\nend\n\nlocal rootSettings=profileStore or (_G and profileStore)\nlocal ucobSettings=rootSettings and rootSettings.values\nif not ucobSettings then return false end\nreturn ucobSettings.LPDU_UCOB_PotionsEnabled ~= false",
							name = "LPDU potions enabled",
							uuid = "cd64b378-ce46-bc11-94a0-b6a793e3a5e7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 7,
							name = "In combat",
							uuid = "a5d9efd8-d52d-52e9-a22e-dc8f9c2e5259",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- Profile-owned preferences; no dependency on Minion's settings subsystem.\nlocal profileStore=_G.LPDU_UCOB_SettingsStore\nif not profileStore or profileStore.fileApiVersion~=1 then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[UCOB-LPDU.lua]]\n local values=profileStore and profileStore.values or {}\n if not profileStore and FileExists(path) then\n  local saved=FileLoad(path)\n  if type(saved)==\"table\" then values=saved end\n end\n profileStore=profileStore or {values=values}\n profileStore.path=path\n function profileStore.encode()\n  local lines={}\n  local function encode(s)return (s:gsub('[%%\\t\\r\\n]',function(c)return string.format('%%%02X',string.byte(c))end))end\n  local function visit(values,path)\n   local keys={};for key in pairs(values)do if type(key)=='string' and key:match('^[%w_]+$')then keys[#keys+1]=key end end;table.sort(keys)\n   for _,key in ipairs(keys)do\n    local value=values[key];local full=path=='' and key or path..'.'..key;local kind=type(value)\n    if kind=='table' then visit(value,full)\n    elseif kind=='string' then lines[#lines+1]=full..'\\ts\\t'..encode(value)\n    elseif kind=='number' then lines[#lines+1]=full..'\\tn\\t'..tostring(value)\n    elseif kind=='boolean' then lines[#lines+1]=full..'\\tb\\t'..tostring(value)end\n   end\n  end\n  visit(profileStore.values,'');return table.concat(lines,'\\n')..'\\n'\n end\n function profileStore.save()\n  local text=profileStore.encode()\n  if text==profileStore.saved then return true end\n  if text==profileStore.failedContent then return false end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  local ok,why=pcall(FileSave,path,profileStore.values)\n  if not ok then profileStore.error=tostring(why);profileStore.failedContent=text;return false end\n  profileStore.saved=text;profileStore.error=nil;profileStore.failedContent=nil;return true\n end\n profileStore.fileApiVersion=1\n _G.LPDU_UCOB_SettingsStore=profileStore\nend\n\nlocal rootSettings=profileStore or (_G and profileStore)\nlocal ucobSettings=rootSettings and rootSettings.values\nif not ucobSettings then return false end\nreturn (ucobSettings.LPDU_UCOB_PotionSecond or \"Late Nael\") == \"Bahamut opener\"",
							name = "Second potion - Bahamut opener",
							uuid = "fa77eeb6-8f74-f894-8a47-56f8aee71467",
							version = 3,
						},
					},
				},
				mechanicTime = 511,
				name = "[LPDU Potion] Bahamut opener",
				timeRange = true,
				timelineIndex = 87,
				timerEndOffset = 4,
				timerStartOffset = 1,
				uuid = "25fbe71d-ac92-192d-9b0e-4437fa8bcb9c",
				version = 2,
			},
		},
	},
	[109] = 
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
							conditions = 
							{
								
								{
									"ef4d830e-40bc-6226-9230-1b681a7a24ed",
									true,
								},
								
								{
									"678eefa7-8a3a-2187-8acc-b90214ebc8ce",
									true,
								},
								
								{
									"a7b84fa6-4283-0e5a-a247-083052e7b10e",
									true,
								},
							},
							gVar = "ACR_RikuMNK3_Hotbar_Potion",
							name = "Potion",
							uuid = "09d42745-0d3c-bb55-b762-36119f01fc3d",
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
							conditionLua = "-- Profile-owned preferences; no dependency on Minion's settings subsystem.\nlocal profileStore=_G.LPDU_UCOB_SettingsStore\nif not profileStore or profileStore.fileApiVersion~=1 then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[UCOB-LPDU.lua]]\n local values=profileStore and profileStore.values or {}\n if not profileStore and FileExists(path) then\n  local saved=FileLoad(path)\n  if type(saved)==\"table\" then values=saved end\n end\n profileStore=profileStore or {values=values}\n profileStore.path=path\n function profileStore.encode()\n  local lines={}\n  local function encode(s)return (s:gsub('[%%\\t\\r\\n]',function(c)return string.format('%%%02X',string.byte(c))end))end\n  local function visit(values,path)\n   local keys={};for key in pairs(values)do if type(key)=='string' and key:match('^[%w_]+$')then keys[#keys+1]=key end end;table.sort(keys)\n   for _,key in ipairs(keys)do\n    local value=values[key];local full=path=='' and key or path..'.'..key;local kind=type(value)\n    if kind=='table' then visit(value,full)\n    elseif kind=='string' then lines[#lines+1]=full..'\\ts\\t'..encode(value)\n    elseif kind=='number' then lines[#lines+1]=full..'\\tn\\t'..tostring(value)\n    elseif kind=='boolean' then lines[#lines+1]=full..'\\tb\\t'..tostring(value)end\n   end\n  end\n  visit(profileStore.values,'');return table.concat(lines,'\\n')..'\\n'\n end\n function profileStore.save()\n  local text=profileStore.encode()\n  if text==profileStore.saved then return true end\n  if text==profileStore.failedContent then return false end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  local ok,why=pcall(FileSave,path,profileStore.values)\n  if not ok then profileStore.error=tostring(why);profileStore.failedContent=text;return false end\n  profileStore.saved=text;profileStore.error=nil;profileStore.failedContent=nil;return true\n end\n profileStore.fileApiVersion=1\n _G.LPDU_UCOB_SettingsStore=profileStore\nend\n\nlocal rootSettings=profileStore or (_G and profileStore)\nlocal ucobSettings=rootSettings and rootSettings.values\nif not ucobSettings then return false end\nreturn ucobSettings.LPDU_UCOB_PotionsEnabled ~= false",
							name = "LPDU potions enabled",
							uuid = "ef4d830e-40bc-6226-9230-1b681a7a24ed",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 7,
							name = "In combat",
							uuid = "678eefa7-8a3a-2187-8acc-b90214ebc8ce",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- Profile-owned preferences; no dependency on Minion's settings subsystem.\nlocal profileStore=_G.LPDU_UCOB_SettingsStore\nif not profileStore or profileStore.fileApiVersion~=1 then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[UCOB-LPDU.lua]]\n local values=profileStore and profileStore.values or {}\n if not profileStore and FileExists(path) then\n  local saved=FileLoad(path)\n  if type(saved)==\"table\" then values=saved end\n end\n profileStore=profileStore or {values=values}\n profileStore.path=path\n function profileStore.encode()\n  local lines={}\n  local function encode(s)return (s:gsub('[%%\\t\\r\\n]',function(c)return string.format('%%%02X',string.byte(c))end))end\n  local function visit(values,path)\n   local keys={};for key in pairs(values)do if type(key)=='string' and key:match('^[%w_]+$')then keys[#keys+1]=key end end;table.sort(keys)\n   for _,key in ipairs(keys)do\n    local value=values[key];local full=path=='' and key or path..'.'..key;local kind=type(value)\n    if kind=='table' then visit(value,full)\n    elseif kind=='string' then lines[#lines+1]=full..'\\ts\\t'..encode(value)\n    elseif kind=='number' then lines[#lines+1]=full..'\\tn\\t'..tostring(value)\n    elseif kind=='boolean' then lines[#lines+1]=full..'\\tb\\t'..tostring(value)end\n   end\n  end\n  visit(profileStore.values,'');return table.concat(lines,'\\n')..'\\n'\n end\n function profileStore.save()\n  local text=profileStore.encode()\n  if text==profileStore.saved then return true end\n  if text==profileStore.failedContent then return false end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  local ok,why=pcall(FileSave,path,profileStore.values)\n  if not ok then profileStore.error=tostring(why);profileStore.failedContent=text;return false end\n  profileStore.saved=text;profileStore.error=nil;profileStore.failedContent=nil;return true\n end\n profileStore.fileApiVersion=1\n _G.LPDU_UCOB_SettingsStore=profileStore\nend\n\nlocal rootSettings=profileStore or (_G and profileStore)\nlocal ucobSettings=rootSettings and rootSettings.values\nif not ucobSettings then return false end\nreturn (ucobSettings.LPDU_UCOB_PotionSecond or \"Late Nael\") == \"After Blackfire\"",
							name = "Second potion - After Blackfire",
							uuid = "a7b84fa6-4283-0e5a-a247-083052e7b10e",
							version = 3,
						},
					},
				},
				mechanicTime = 590,
				name = "[LPDU Potion] After Blackfire",
				timeRange = true,
				timelineIndex = 109,
				timerEndOffset = 4.3,
				timerStartOffset = 1.3,
				uuid = "b5bafe4b-2b18-7e8f-b134-a3975fe22fcc",
				version = 2,
			},
		},
	},
	[168] = 
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
							conditions = 
							{
								
								{
									"71553aa5-570f-d3f2-a805-a53928c8fb19",
									true,
								},
								
								{
									"f91d4374-3d2c-1112-acdb-17d1f94a4838",
									true,
								},
							},
							gVar = "ACR_RikuMNK3_Hotbar_Potion",
							name = "Potion",
							uuid = "37b0d2c5-0916-73d1-ad5c-70aceecac9f9",
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
							conditionLua = "-- Profile-owned preferences; no dependency on Minion's settings subsystem.\nlocal profileStore=_G.LPDU_UCOB_SettingsStore\nif not profileStore or profileStore.fileApiVersion~=1 then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[UCOB-LPDU.lua]]\n local values=profileStore and profileStore.values or {}\n if not profileStore and FileExists(path) then\n  local saved=FileLoad(path)\n  if type(saved)==\"table\" then values=saved end\n end\n profileStore=profileStore or {values=values}\n profileStore.path=path\n function profileStore.encode()\n  local lines={}\n  local function encode(s)return (s:gsub('[%%\\t\\r\\n]',function(c)return string.format('%%%02X',string.byte(c))end))end\n  local function visit(values,path)\n   local keys={};for key in pairs(values)do if type(key)=='string' and key:match('^[%w_]+$')then keys[#keys+1]=key end end;table.sort(keys)\n   for _,key in ipairs(keys)do\n    local value=values[key];local full=path=='' and key or path..'.'..key;local kind=type(value)\n    if kind=='table' then visit(value,full)\n    elseif kind=='string' then lines[#lines+1]=full..'\\ts\\t'..encode(value)\n    elseif kind=='number' then lines[#lines+1]=full..'\\tn\\t'..tostring(value)\n    elseif kind=='boolean' then lines[#lines+1]=full..'\\tb\\t'..tostring(value)end\n   end\n  end\n  visit(profileStore.values,'');return table.concat(lines,'\\n')..'\\n'\n end\n function profileStore.save()\n  local text=profileStore.encode()\n  if text==profileStore.saved then return true end\n  if text==profileStore.failedContent then return false end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  local ok,why=pcall(FileSave,path,profileStore.values)\n  if not ok then profileStore.error=tostring(why);profileStore.failedContent=text;return false end\n  profileStore.saved=text;profileStore.error=nil;profileStore.failedContent=nil;return true\n end\n profileStore.fileApiVersion=1\n _G.LPDU_UCOB_SettingsStore=profileStore\nend\n\nlocal rootSettings=profileStore or (_G and profileStore)\nlocal ucobSettings=rootSettings and rootSettings.values\nif not ucobSettings then return false end\nreturn ucobSettings.LPDU_UCOB_PotionsEnabled ~= false",
							name = "LPDU potions enabled",
							uuid = "71553aa5-570f-d3f2-a805-a53928c8fb19",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 7,
							name = "In combat",
							uuid = "f91d4374-3d2c-1112-acdb-17d1f94a4838",
							version = 3,
						},
					},
				},
				mechanicTime = 844.9,
				name = "[LPDU Potion] Adds opener",
				timeRange = true,
				timelineIndex = 168,
				timerEndOffset = 3.9,
				timerStartOffset = 0.9,
				uuid = "ae9ac5c4-d4df-5f2e-aa49-c04f5321aaa8",
				version = 2,
			},
		},
	},
	[202] = 
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
							conditions = 
							{
								
								{
									"ae232ff5-cb6e-2a5e-ae2f-fe6b3f0983ad",
									true,
								},
								
								{
									"7e95d6d5-0e37-3ef0-9a4f-ad9d9c113c58",
									true,
								},
							},
							gVar = "ACR_RikuMNK3_Hotbar_Potion",
							name = "Potion",
							uuid = "1bf0cfbe-a72f-35dc-9a6b-068a2d05117b",
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
							conditionLua = "-- Profile-owned preferences; no dependency on Minion's settings subsystem.\nlocal profileStore=_G.LPDU_UCOB_SettingsStore\nif not profileStore or profileStore.fileApiVersion~=1 then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[UCOB-LPDU.lua]]\n local values=profileStore and profileStore.values or {}\n if not profileStore and FileExists(path) then\n  local saved=FileLoad(path)\n  if type(saved)==\"table\" then values=saved end\n end\n profileStore=profileStore or {values=values}\n profileStore.path=path\n function profileStore.encode()\n  local lines={}\n  local function encode(s)return (s:gsub('[%%\\t\\r\\n]',function(c)return string.format('%%%02X',string.byte(c))end))end\n  local function visit(values,path)\n   local keys={};for key in pairs(values)do if type(key)=='string' and key:match('^[%w_]+$')then keys[#keys+1]=key end end;table.sort(keys)\n   for _,key in ipairs(keys)do\n    local value=values[key];local full=path=='' and key or path..'.'..key;local kind=type(value)\n    if kind=='table' then visit(value,full)\n    elseif kind=='string' then lines[#lines+1]=full..'\\ts\\t'..encode(value)\n    elseif kind=='number' then lines[#lines+1]=full..'\\tn\\t'..tostring(value)\n    elseif kind=='boolean' then lines[#lines+1]=full..'\\tb\\t'..tostring(value)end\n   end\n  end\n  visit(profileStore.values,'');return table.concat(lines,'\\n')..'\\n'\n end\n function profileStore.save()\n  local text=profileStore.encode()\n  if text==profileStore.saved then return true end\n  if text==profileStore.failedContent then return false end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  local ok,why=pcall(FileSave,path,profileStore.values)\n  if not ok then profileStore.error=tostring(why);profileStore.failedContent=text;return false end\n  profileStore.saved=text;profileStore.error=nil;profileStore.failedContent=nil;return true\n end\n profileStore.fileApiVersion=1\n _G.LPDU_UCOB_SettingsStore=profileStore\nend\n\nlocal rootSettings=profileStore or (_G and profileStore)\nlocal ucobSettings=rootSettings and rootSettings.values\nif not ucobSettings then return false end\nreturn ucobSettings.LPDU_UCOB_PotionsEnabled ~= false",
							name = "LPDU potions enabled",
							uuid = "ae232ff5-cb6e-2a5e-ae2f-fe6b3f0983ad",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 7,
							name = "In combat",
							uuid = "7e95d6d5-0e37-3ef0-9a4f-ad9d9c113c58",
							version = 3,
						},
					},
				},
				mechanicTime = 1369.4,
				name = "[LPDU Potion] Late Golden",
				timeRange = true,
				timelineIndex = 202,
				timerEndOffset = 0.2,
				timerStartOffset = -2.8,
				uuid = "df78ff0d-2ca3-f268-831f-cb0495680617",
				version = 2,
			},
		},
	},
	inheritedProfiles = 
	{
	},
	timelineName = "ucob",
	version = "1.0.3",
}



return tbl
local tbl = 
{
	
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
							endIfUsed = true,
							gVar = "ACR_RikuMNK3_Hotbar_Potion",
							name = "Potion",
							uuid = "d8fa16eb-87c1-d47d-b23e-236e15cf80e2",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 13.7,
				name = "[LPDU] Use potion - P1 opener",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = -10,
				timerStartOffset = -13,
				uuid = "771a4c04-cd7a-a506-8034-566b163d9707",
				version = 2,
			},
		},
	}, 
	[102] = 
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
							alertDuration = 3000,
							alertPriority = 2,
							alertText = "[LPDU] Use potion",
							name = "[LPDU] Use potion",
							uuid = "eed3e5b0-c355-ae03-a28e-e76bcca033eb",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							endIfUsed = true,
							gVar = "ACR_RikuMNK3_Hotbar_Potion",
							name = "Potion",
							uuid = "57f923e6-52ea-395b-8aac-0e9152318a45",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 418.8,
				name = "[LPDU] Use potion - P2 adds",
				timelineIndex = 102,
				uuid = "0a44346d-fe85-2d4c-a2db-04ae12608319",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "-- State-change diagnostics go to the fight log, not the callout/console renderer.\nlocal diag=data.lpduCrystalTargetDiagnostics\nif not diag then diag={};data.lpduCrystalTargetDiagnostics=diag end\nlocal function log(reason,detail,retry)\n local message=reason..' | '..(detail or '')\n if diag.message~=message or (retry and Now()-(diag.at or 0)>=5000) then\n  TensorCore.timelineLogToFile('[LPDU Crystal Target] '..message..'\\n')\n  diag.message=message;diag.at=Now()\n end\nend\nlocal roster=AnyoneCore.Roster\nif not roster or roster.current()==nil or not roster.isReady() then log('waiting','roster not ready');self.used=true;return end\nlocal p=TensorCore.mGetPlayer()\nif not p or not p.pos then log('waiting','player position unavailable');self.used=true;return end\nlocal state=data.lpduCrystalTarget\nif not state then state={};data.lpduCrystalTarget=state end\nif state.done then log('complete','middle crystal no longer alive/targetable');self.used=true;return end\nif not state.position then\n local markBySlot={T1=1,R1=1,H1=4,M1=4,T2=2,R2=2,H2=3,M2=3}\n local mark=markBySlot[roster.mySlot()]\n if not mark then log('waiting','unmapped roster slot='..tostring(roster.mySlot()));self.used=true;return end\n local x,y,z,active=Argus.getWaymarkInfo(mark)\n if not active then x,y,z,active=Argus.getWaymarkInfo(mark+4) end\n if not active then log('waiting','slot='..tostring(roster.mySlot())..' waymarks '..mark..'/'..(mark+4)..' inactive');self.used=true;return end\n state.position={x=x,y=y,z=z}\n log('assignment',string.format('slot=%s mark=%d position=%.2f,%.2f',tostring(roster.mySlot()),mark,x,z))\nend\nlocal outer=TensorCore.getEntityGroupList(\"ContentID\",13555) or {}\nlocal mine,held,nextOuter,best,ownDistance\nlocal candidates={};local eligible=0\nfor _,e in pairs(outer) do\n candidates[#candidates+1]=tostring(e.id)..':'..tostring(e.alive)..':'..tostring(e.targetable)..':'..tostring(e.pos~=nil)\n if e.pos and e.alive and e.targetable then\n  eligible=eligible+1\n  local distance=TensorCore.getDistance2d(e.pos,state.position)\n  if not state.ownSeen and (not ownDistance or distance<ownDistance) then mine=e;ownDistance=distance end\n  if e.id==state.ownID then mine=e end\n  if e.id==state.target then held=e end\n  local d=TensorCore.getDistance2d(p.pos,e.pos)\n  if not best or d<best or (d==best and e.id<nextOuter.id) then nextOuter=e;best=d end\n end\nend\ntable.sort(candidates)\n-- Always own first. After it breaks, hold one other live outer crystal at a time.\nlocal target\nif not state.ownDone then\n if mine then target=mine;state.ownSeen=true;state.ownID=mine.id\n elseif state.ownSeen then state.ownDone=true end\nend\nif state.ownDone then target=held or nextOuter end\nif not target and state.ownDone and not nextOuter then\n local middle=TensorCore.getEntityGroupList(\"ContentID\",9358) or {}\n for _,e in pairs(middle) do if e.alive and e.targetable then target=e;break end end\n if target then state.middleSeen=true\n elseif state.middleSeen then state.done=true end\nend\nif target then\n state.target=target.id\n local phase=not state.ownDone and 'assigned outer' or state.middleSeen and 'middle' or 'remaining outer'\n local detail=string.format('phase=%s selected=%s current=%s own=%s ownDone=%s eligible=%d candidates=[%s]',phase,tostring(target.id),tostring(p.targetid),tostring(state.ownID),tostring(state.ownDone),eligible,table.concat(candidates,','))\n if p.targetid~=target.id then\n  log('request target',detail,true)\n  Player:SetTarget(target.id)\n else log('target acquired',detail) end\nelse\n log('no eligible target',string.format('ownSeen=%s ownDone=%s middleSeen=%s candidates=[%s]',tostring(state.ownSeen),tostring(state.ownDone),tostring(state.middleSeen),table.concat(candidates,',')))\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"ab76c11c-e857-33ab-a375-68d07da192ca",
									true,
								},
							},
							name = "Own crystal then outer crystals then Ice Veil",
							uuid = "8c051740-2a08-92da-b120-e43c6bc6e133",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- Profile-owned preferences; no dependency on Minion's settings subsystem.\nlocal profileStore=_G.LPDU_FRU_SettingsStore\nif not profileStore or profileStore.fileApiVersion~=1 then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[FRU-LPDU.lua]]\n local values=profileStore and profileStore.values or {}\n if not profileStore and FileExists(path) then\n  local saved=FileLoad(path)\n  if type(saved)==\"table\" then values=saved end\n end\n profileStore=profileStore or {values=values}\n profileStore.path=path\n function profileStore.encode()\n  local lines={}\n  local function encode(s)return (s:gsub('[%%\\t\\r\\n]',function(c)return string.format('%%%02X',string.byte(c))end))end\n  local function visit(values,path)\n   local keys={};for key in pairs(values)do if type(key)=='string' and key:match('^[%w_]+$')then keys[#keys+1]=key end end;table.sort(keys)\n   for _,key in ipairs(keys)do\n    local value=values[key];local full=path=='' and key or path..'.'..key;local kind=type(value)\n    if kind=='table' then visit(value,full)\n    elseif kind=='string' then lines[#lines+1]=full..'\\ts\\t'..encode(value)\n    elseif kind=='number' then lines[#lines+1]=full..'\\tn\\t'..tostring(value)\n    elseif kind=='boolean' then lines[#lines+1]=full..'\\tb\\t'..tostring(value)end\n   end\n  end\n  visit(profileStore.values,'');return table.concat(lines,'\\n')..'\\n'\n end\n function profileStore.save()\n  local text=profileStore.encode()\n  if text==profileStore.saved then return true end\n  if text==profileStore.failedContent then return false end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  local ok,why=pcall(FileSave,path,profileStore.values)\n  if not ok then profileStore.error=tostring(why);profileStore.failedContent=text;return false end\n  profileStore.saved=text;profileStore.error=nil;profileStore.failedContent=nil;return true\n end\n profileStore.fileApiVersion=1\n _G.LPDU_FRU_SettingsStore=profileStore\nend\n\nlocal root=profileStore or (_G and profileStore)\nlocal settings=root and root.values\nlocal mode=settings and settings.LPDU_FRU_CrystalTargetMode\nlocal enabled=mode=='Enabled'\nlocal reason=not settings and 'blocked: profile settings unavailable' or 'mode='..tostring(mode)..' enabled='..tostring(enabled)\nif data.lpduCrystalTargetControlDiagnostic~=reason then\n data.lpduCrystalTargetControlDiagnostic=reason\n TensorCore.timelineLogToFile('[LPDU Crystal Target] '..reason..'\\n')\nend\nreturn enabled\n",
							name = "Crystal targeting enabled",
							uuid = "ab76c11c-e857-33ab-a375-68d07da192ca",
							version = 3,
						},
					},
				},
				loop = true,
				mechanicTime = 418.8,
				name = "[LPDU] P2 Intermission - Crystal auto-target",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 102,
				timerEndOffset = 45.200000762939,
				uuid = "7dfa08af-26c2-097d-9df7-92386ce90dc9",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "-- Profile-owned preferences; no dependency on Minion's settings subsystem.\nlocal profileStore=_G.LPDU_FRU_SettingsStore\nif not profileStore or profileStore.fileApiVersion~=1 then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[FRU-LPDU.lua]]\n local values=profileStore and profileStore.values or {}\n if not profileStore and FileExists(path) then\n  local saved=FileLoad(path)\n  if type(saved)==\"table\" then values=saved end\n end\n profileStore=profileStore or {values=values}\n profileStore.path=path\n function profileStore.encode()\n  local lines={}\n  local function encode(s)return (s:gsub('[%%\\t\\r\\n]',function(c)return string.format('%%%02X',string.byte(c))end))end\n  local function visit(values,path)\n   local keys={};for key in pairs(values)do if type(key)=='string' and key:match('^[%w_]+$')then keys[#keys+1]=key end end;table.sort(keys)\n   for _,key in ipairs(keys)do\n    local value=values[key];local full=path=='' and key or path..'.'..key;local kind=type(value)\n    if kind=='table' then visit(value,full)\n    elseif kind=='string' then lines[#lines+1]=full..'\\ts\\t'..encode(value)\n    elseif kind=='number' then lines[#lines+1]=full..'\\tn\\t'..tostring(value)\n    elseif kind=='boolean' then lines[#lines+1]=full..'\\tb\\t'..tostring(value)end\n   end\n  end\n  visit(profileStore.values,'');return table.concat(lines,'\\n')..'\\n'\n end\n function profileStore.save()\n  local text=profileStore.encode()\n  if text==profileStore.saved then return true end\n  if text==profileStore.failedContent then return false end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  local ok,why=pcall(FileSave,path,profileStore.values)\n  if not ok then profileStore.error=tostring(why);profileStore.failedContent=text;return false end\n  profileStore.saved=text;profileStore.error=nil;profileStore.failedContent=nil;return true\n end\n profileStore.fileApiVersion=1\n _G.LPDU_FRU_SettingsStore=profileStore\nend\n\nlocal timer=TensorReactions_CurrentTimer\nlocal settingsRoot=profileStore or (_G and profileStore)\nlocal settings=settingsRoot and settingsRoot.values\nif not settings then return end\nlocal mode=settings.LPDU_FRU_CrystalDamageMode or \"AoE then focus\"\nlocal outer=TensorCore.getEntityGroupList(\"ContentID\",13555) or {}\nlocal side=false\nfor _,e in pairs(outer) do\n if e.alive and e.targetable then side=true;break end\nend\nlocal middle=TensorCore.getEntityGroupList(\"ContentID\",9358) or {}\nlocal big=false\nfor _,e in pairs(middle) do\n if e.alive and e.targetable then big=true;break end\nend\nlocal owned=data.lpduCrystalAOE\nlocal focusActive=side or big or (owned and owned.mode==\"Focus assigned crystal\")\nlocal focus=timer>=418.8 and timer<500 and ((mode==\"Focus assigned crystal\" and focusActive) or (mode==\"AoE then focus\" and timer>=423.6 and side))\nif not focus then\nlocal s=data.lpduCrystalAOE\nif s then\n if timer>=500 and s.mode==\"Focus assigned crystal\" then _G[s.var]=true\n elseif _G[s.var]==false then _G[s.var]=s.previous end\n if s.smartVar then _G[s.smartVar]=s.smartPrevious end\n data.lpduCrystalAOE=nil\nend\n self.used=true return\nend\nif not data.lpduCrystalAOE then\n local toggles=TensorCore.API.TensorACR.getQuickToggles()\n if not toggles then return end\n for _,toggle in ipairs(toggles) do\n  if string.match(toggle.var,\"_AOE$\") and type(_G[toggle.var])==\"boolean\" then\n   data.lpduCrystalAOE={var=toggle.var,previous=_G[toggle.var],mode=mode}\n   break\n  end\n end\nend\nlocal s=data.lpduCrystalAOE\nif s then\n if s.mode==\"Focus assigned crystal\" and not s.smartVar then\n  for _,toggle in ipairs(TensorCore.API.TensorACR.getQuickToggles() or {}) do\n   if string.match(toggle.var,\"_SmartAOE$\") and type(_G[toggle.var])==\"boolean\" then s.smartVar=toggle.var;s.smartPrevious=_G[toggle.var];break end\n  end\n end\n if s.smartVar then _G[s.smartVar]=false end\n if big then s.bigSeen=true end\n _G[s.var]=false\nend\nself.used=true\n",
							name = "[LPDU] P2 Crystals - Side Crystal AoE Control",
							uuid = "561e8d23-23bc-5bdc-8886-cbead9d095a8",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				loop = true,
				mechanicTime = 418.8,
				name = "[LPDU] P2 Crystals - Side Crystal AoE Control",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 102,
				timerEndOffset = 86.2,
				uuid = "1ff9f604-807d-de8c-8d20-85807890e9cb",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.lpduCrystalAOE\nif s then\n if _G[s.var]==false then _G[s.var]=s.previous end\n if s.smartVar then _G[s.smartVar]=s.smartPrevious end\n data.lpduCrystalAOE=nil\nend\nself.used=true",
							name = "[LPDU] Crystals - Restore AoE on Wipe",
							uuid = "64d2999b-6f44-657b-9a7d-5db29fff6ca8",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 9,
				loop = true,
				mechanicTime = 418.8,
				name = "[LPDU] Crystals - Restore AoE on Wipe",
				timeRange = true,
				timelineIndex = 102,
				timerEndOffset = 2000,
				timerStartOffset = -1000,
				uuid = "e43342a7-4fc3-1fe5-9ff3-e9ba4e59b315",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.lpduCrystalAOE\nif s then\n if _G[s.var]==false then _G[s.var]=s.previous end\n if s.smartVar then _G[s.smartVar]=s.smartPrevious end\n data.lpduCrystalAOE=nil\nend\nself.used=true",
							name = "[LPDU] Crystals - Restore AoE on Map Change",
							uuid = "97f5629a-55b2-c332-b32c-2e417a23b693",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 11,
				loop = true,
				mechanicTime = 418.8,
				name = "[LPDU] Crystals - Restore AoE on Map Change",
				timeRange = true,
				timelineIndex = 102,
				timerEndOffset = 2000,
				timerStartOffset = -1000,
				uuid = "11ea1e1c-0de9-308f-aad4-7aebe87f95e5",
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
							aType = "Alert",
							alertDuration = 3000,
							alertPriority = 2,
							alertText = "[LPDU] Use potion",
							name = "[LPDU] Use potion",
							uuid = "92fbdb39-32f0-70bf-b760-b2a5e9c8c213",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							endIfUsed = true,
							gVar = "ACR_RikuMNK3_Hotbar_Potion",
							name = "Potion",
							uuid = "a994b594-8bc8-158e-86f6-f6107e236f07",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 738.2,
				name = "[LPDU] Use potion - P4 Darklit",
				timeRange = true,
				timelineIndex = 166,
				timerEndOffset = 9,
				timerStartOffset = 4,
				uuid = "d872aa24-4a9e-9e4c-9006-61f89b6d2757",
				version = 2,
			},
		},
	},
	[237] = 
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
							alertDuration = 3000,
							alertPriority = 2,
							alertText = "[LPDU] Use potion",
							name = "[LPDU] Use potion",
							uuid = "9c555b9c-18b7-2241-9380-9ee50fbaec76",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							endIfUsed = true,
							gVar = "ACR_RikuMNK3_Hotbar_Potion",
							name = "Potion",
							uuid = "df4effb4-af2d-41a7-b43f-95f6c2164157",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1097.4,
				name = "[LPDU] Use potion - P5 Fulgent Blade",
				timeRange = true,
				timelineIndex = 237,
				timerEndOffset = 2.5999999046326,
				timerStartOffset = -2.4000000953674,
				uuid = "b4787e7b-26dc-9558-bf7d-90ab605b3d1b",
				version = 2,
			},
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
							alertPriority = 2,
							alertText = "[LPDU] Use potion",
							name = "[LPDU] Use potion",
							uuid = "f5a5d713-b0f4-1cb1-b62a-0d419d863531",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1097.4,
				name = "[LPDU] Use potion - P5 second Fulgent",
				throttleTime = 3000,
				timeRange = true,
				timelineIndex = 237,
				timerEndOffset = 6,
				timerStartOffset = 1,
				uuid = "291d736c-1804-a5b4-98aa-d38e10f6df20",
				version = 2,
			},
		},
	},
	inheritedProfiles = 
	{
	},
	timelineName = "fru",
	version = "1.0.5",
}



return tbl
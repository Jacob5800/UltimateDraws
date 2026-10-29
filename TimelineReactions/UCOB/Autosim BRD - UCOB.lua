local tbl = 
{
	[2] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "9aa38788-2b4b-07c4-d108-56ca55850b58",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Set Toggles",
				uuid = "796fcc8e-0967-d540-883f-766e4ff4d6e2",
				version = 2,
			},
			inheritedObjectUUID = "de5b4aca-297d-3d2f-82ff-447c2bdb5305",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "BRD AutoSim",
				uuid = "6ff504af-e4c4-6be8-b2a2-038068322e60",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local A=TensorCore.API.TensorACR\nlocal C=_G.UCOB_BRD_Config\nif not C then C={goldLength=162.14,addsLength=100.222,buffForecast=false,buffGain=0};_G.UCOB_BRD_Config=C end\nlocal S={version=2,planningStage=1,phase=1,seen={},ids={},up={},dynamic={},cfg={},dotStart={},ends={}}\nif C.phoenixPriority==nil then C.phoenixPriority=false end\nif C.reserveGrand==nil then C.reserveGrand=true end\nif C.alignParty==nil then C.alignParty=false end\nif C.burstWait==nil then C.burstWait=30 end\nif C.burstMode==nil then C.burstMode=1 end\nif C.burstTimes==nil then C.burstTimes=\"\"end\nfor k,v in pairs(C)do S.cfg[k]=v end\nS.anchors={\n twinEnd={\"pull\",128.352},nael={\"twinEnd\",21.968},naelEnd={\"nael\",115.307},baha={\"naelEnd\",16.333},\n off1={\"baha\",23.449},on1={\"off1\",11.534},off2={\"on1\",29.533},on2={\"off2\",16.557},\n off3={\"on2\",34.636},on3={\"off3\",16.517},off4={\"on3\",35.834},on4={\"off4\",27.560},\n off5={\"on4\",33.712},on5={\"off5\",19.376},off6={\"on5\",37.626},adds={\"off6\",53.754},\n addsEnd={\"adds\",S.cfg.addsLength},gold={\"addsEnd\",62.323}}\nfunction S.at(k)\n if k==\"pull\"then return 0 end\n if S.seen[k]then return S.seen[k]end\n local a=S.anchors[k];return S.at(a[1])+a[2]\nend\nfunction S.union(xs)\n table.sort(xs,function(a,b)return a[1]<b[1]end)\n local out={}\n for _,v in ipairs(xs)do\n  local last=out[#out]\n  if last and v[1]<=last[2]then last[2]=math.max(last[2],v[2])else out[#out+1]={v[1],v[2]}end\n end\n return out\nend\nfunction S.alive(e)return e and e.alive and e.targetable and e.hp.current>1 end\nfunction S.ent(cid)return S.ids[cid]and TensorCore.mGetEntity(S.ids[cid])end\n\nfunction S.beginGolden(now)\n if S.planningStage==2 then return end\n S.planningStage=2;S.planStart=now\n S.dynamic={};S.ends={};S.dotStart={}\n S.personalMoves={};S.quote=nil\n S.mainID=nil;S.otherID=nil\n S.lbObserved=nil;S.lbStarted=nil;S.lbCompleted=nil;S.lbCancelled=nil\n A.clearAutoSimTarget(0);A.clearAutoSimTarget(1)\nend\n\n\nS.burstActions={118,101,107,3559}\nfunction S.partySchedule()\n local ts={}\n if S.cfg.burstMode==2 then\n  for token in S.cfg.burstTimes:gmatch(\"[^,;]+\")do\n   local n=tonumber(token)\n   if not n or n<0 then return {},\"Use comma-separated seconds since pull.\"end\n   ts[#ts+1]=n\n  end\n  if #ts==0 then return {},\"Enter planned party burst times.\"end\n  table.sort(ts)\n  for i=2,#ts do if ts[i]-ts[i-1]<120 then return {},\"BRD burst windows must be at least 120 seconds apart.\"end end\n else\n  ts=S.planningStage==2 and{S.at(\"gold\")+2,S.at(\"gold\")+122}or{5,S.at(\"nael\")+2,S.at(\"baha\")+2,S.at(\"on3\")+2,S.at(\"adds\")+2}\n  local prev=-120\n  for i,t in ipairs(ts)do ts[i]=math.max(t,prev+120);prev=ts[i]end\n end\n local out={}\n for _,t in ipairs(ts)do\n  if(S.planningStage~=2 or t>=S.planStart)and(S.planningStage==2 or t<=S.at(\"addsEnd\"))then out[#out+1]=t end\n end\n return out,nil\nend\nfunction S.updateBurstHolds(now)\n local reserve=S.cfg.reserveGrand and S.phase==3 and S.octetSeen\n local remaining=nil\n if S.cfg.alignParty and S.cfg.burstWait>0 then\n  for _,t in ipairs(S.partyWindows or{})do\n   local left=t-now\n   if left>0 and left<=S.cfg.burstWait then remaining=left;break end\n  end\n end\n if not reserve and not remaining then return end\n local clock=Now()\n if S.nextHoldRefresh and clock<S.nextHoldRefresh then return end\n -- Short, action-specific leases expire automatically when this controller stops.\n local deadline=clock+750\n if remaining and not reserve then deadline=math.min(deadline,clock+remaining*1000)end\n for _,id in ipairs(S.burstActions)do A.holdActionUntil(id,deadline)end\n S.nextHoldRefresh=clock+250\nend\n\nfunction S.publish()\n local now=A.getAutoSimTime()\n -- Let the first plan finish at adds death. No ordinary player death changes plans.\n if S.planningStage~=2 and S.seen.addsEnd and now>S.seen.addsEnd+.5 then return end\n local live=_G.UCOB_BRD_Config\n if live then S.cfg.goldLength=live.goldLength end\n S.cfg.phoenixPriority=live and live.phoenixPriority==true or false\n if live then S.cfg.reserveGrand=live.reserveGrand~=false;S.cfg.alignParty=live.alignParty==true;S.cfg.burstWait=live.burstWait;S.cfg.burstMode=live.burstMode;S.cfg.burstTimes=live.burstTimes end\n local horizon=S.planningStage==2 and S.at(\"gold\")+S.cfg.goldLength or S.at(\"addsEnd\")\n local kill=math.max(now+.5,horizon)\n S.killAt=kill;A.setAutoSimKillTime(kill)\n local gaps={{S.at(\"twinEnd\"),S.at(\"nael\")},{S.at(\"naelEnd\"),S.at(\"baha\")},{S.at(\"off6\"),S.at(\"adds\")},{S.at(\"addsEnd\"),S.at(\"gold\")}}\n for i=1,5 do\n  local a,b=S.at(\"off\"..i),S.at(\"on\"..i)\n  if S.seen.adds then b=math.min(b,S.seen.adds)end\n  if b>a then gaps[#gaps+1]={a,b}end\n end\n if S.planningStage==2 then gaps={{S.planStart,S.at(\"gold\")}}end\n local valid={};for _,g in ipairs(gaps)do if g[2]>g[1]then valid[#valid+1]=g end end;gaps=valid\n if S.planningStage~=2 and S.naelGap then gaps[#gaps+1]={S.naelGap[1],S.naelGap[2]or now+6}end\n A.clearAutoSimPhases(\"FullDowntime\")\n for _,g in ipairs(S.union(gaps))do if g[2]>g[1]then A.addAutoSimPhase(\"FullDowntime\",g[1],g[2])end end\n local stun={}\n for _,g in pairs(S.dynamic)do if g[1]==\"Stun\"then stun[#stun+1]={g[2],g[3]}end end\n A.clearAutoSimPhases(\"Stun\")\n for _,g in ipairs(S.union(stun))do if g[2]>g[1]then A.addAutoSimPhase(\"Stun\",g[1],g[2])end end\n -- Optional relative Phoenix planning preference. Default is 1x throughout.\n -- Actual active status handling remains with the ACR.\n A.clearAutoSimPhases(\"BossModifier\")\n if S.cfg.phoenixPriority then\n local gold=S.at(\"gold\")\n if gold>0 then A.addAutoSimPhase(\"BossModifier\",0,gold,.5)end\n if S.phase==5 and S.phoenixSeen and not S.phoenixActive then\n  A.addAutoSimPhase(\"BossModifier\",gold,kill,.5)\n end\n end\n S.partyWindows,S.partyError=S.partySchedule()\n A.clearAutoSimPhases(\"RaidBuff\")\n if S.cfg.buffForecast then\n  for _,t in ipairs(S.partyWindows)do\n   -- Applies only to an existing burst at the P4 opening, including custom schedules.\n   local addsOpening=S.planningStage~=2 and t>=S.at(\"adds\") and t<S.at(\"adds\")+20\n   A.addAutoSimPhase(\"RaidBuff\",t,t+20,addsOpening and 1.4 or (1+S.cfg.buffGain/100))\n  end\n end\n -- Slot 0 tracks the selected main boss; slot 1 tracks the other adds boss.\n -- Lifetimes survive temporary untargetability. Golden starts a fresh target-state lifetime.\n local start,finish=0,S.at(\"twinEnd\")\n if S.planningStage==2 then start,finish=S.at(\"gold\"),kill\n elseif S.phase==2 then start,finish=S.at(\"nael\"),S.at(\"naelEnd\")\n elseif S.phase==3 then start,finish=S.at(\"baha\"),S.at(\"adds\")\n elseif S.phase==4 then start,finish=S.at(\"adds\"),S.at(\"addsEnd\")\n elseif S.phase==5 then start,finish=S.at(\"gold\"),kill end\n finish=math.max(finish,now+5)\n for slot=0,1 do\n  A.clearAutoSimPhases(\"DotAvailability\",slot);A.clearAutoSimPhases(\"TargetLifetime\",slot)\n  if slot==0 or(S.phase==4 and S.planningStage~=2)then\n   local id=slot==0 and S.mainID or S.otherID\n   local death=id and S.ends[id]\n   local ending=death or finish\n   if ending>start then\n    A.addAutoSimPhase(\"TargetLifetime\",start,ending,1,slot)\n    local cursor=start\n    for _,g in ipairs(S.union(gaps))do\n     local a,b=math.max(start,g[1]),math.min(ending-.5,g[2])\n     if b>a then if a>cursor then A.addAutoSimPhase(\"DotAvailability\",cursor,a,1,slot)end;cursor=math.max(cursor,b)end\n    end\n    if ending-.5>cursor then A.addAutoSimPhase(\"DotAvailability\",cursor,ending-.5,1,slot)end\n   end\n  end\n end\n A.clearAutoSimUncertainty()\n A.addAutoSimUncertainty(0,S.phase>=3 and 3 or 20)\n if S.planningStage~=2 and not S.seen.addsEnd then A.addAutoSimUncertainty(math.max(1,S.at(\"addsEnd\")-25),20)end\n if S.planningStage==2 then A.addAutoSimUncertainty(math.max(2,S.at(\"gold\")+S.cfg.goldLength-30),15)end\n S.lastPublish=now\nend\nfunction S.sync(k,t)\n if S.seen[k]then return end\n S.seen[k]=t;S.publish()\nend\nfor _,cid in ipairs({1482,2612,3210})do\n for _,e in pairs(TensorCore.getEntityGroupList(\"ContentID\",cid)or{})do\n  if e.alive then S.ids[cid]=e.id;S.up[cid]=e.targetable;break end\n end\nend\nS.publish()\ndata.ucobBRDAutoSim=S\nself.used=true\n",
							conditions = 
							{
								
								{
									"a4c69458-f36b-064e-bd82-58a47c25c4fc",
									true,
								},
								
								{
									"3a42541e-7ae1-18c7-adfd-3925a43fe77b",
									true,
								},
								
								{
									"fce137dc-6687-4d78-8b12-1fedde482af8",
									true,
								},
							},
							name = "Configure forecast",
							uuid = "7c0380d2-7c50-9a1a-b307-187d8f05d08e",
							version = 2.1,
						},
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
							localmapid = 733,
							name = "UCOB",
							uuid = "a4c69458-f36b-064e-bd82-58a47c25c4fc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Bard",
							uuid = "3a42541e-7ae1-18c7-adfd-3925a43fe77b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.ucobBRDAutoSim==nil",
							name = "Not configured",
							uuid = "fce137dc-6687-4d78-8b12-1fedde482af8",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim",
				eventType = 16,
				mechanicTime = 7,
				name = "[BRD UCOB] Configure forecast",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = -6,
				timerStartOffset = -70,
				uuid = "e1d07a77-648d-3705-ae5b-65c6d417b086",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobBRDAutoSim\nif not S then return end\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal spell=eventArgs.spellID\nif spell>=9954 and spell<=9959 and S.phase==3 then\n local i=spell-9953;S.trio=i;S.anchors[\"off\"..i]={\"pull\",now+2};S.publish()\nelseif spell==9961 and S.phase==4 then\n S.teraflareSeen=true;S.teraflareAt=now\n if not S.seen.addsEnd then S.seen.addsEnd=now-17.3 end\n S.anchors.gold={\"pull\",now+45.0};S.publish()\nelseif spell==9970 and S.phase==4 then S.anchors.gold={\"pull\",now+19.9};S.publish()end\nself.used=true",
							conditions = 
							{
								
								{
									"c86e3cb3-ee77-2bf3-a516-9c1391e92d21",
									true,
								},
								
								{
									"d86138b7-e181-159c-99a8-52db1438c363",
									true,
								},
								
								{
									"2861613e-65e4-a4ff-9ddd-ba4efc12a56c",
									true,
								},
								
								{
									"82d6a21a-9e08-2c82-ba3f-1d953f8095e7",
									true,
								},
							},
							name = "Anchor trio and Golden transition casts",
							uuid = "ec01a6b7-1f2e-951b-a12c-35bd30964beb",
							version = 2.1,
						},
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
							localmapid = 733,
							name = "UCOB",
							uuid = "c86e3cb3-ee77-2bf3-a516-9c1391e92d21",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Bard",
							uuid = "d86138b7-e181-159c-99a8-52db1438c363",
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
							name = "Phase casts",
							spellIDList = 
							{
								9954,
								9955,
								9956,
								9957,
								9958,
								9959,
								9961,
								9970,
							},
							uuid = "2861613e-65e4-a4ff-9ddd-ba4efc12a56c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.ucobBRDAutoSim~=nil",
							name = "Configured",
							uuid = "82d6a21a-9e08-2c82-ba3f-1d953f8095e7",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim",
				eventType = 2,
				loop = true,
				mechanicTime = 7,
				name = "[BRD UCOB] Anchor trio and Golden transition casts",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -7,
				uuid = "82fa2f5c-1f35-ab37-b45b-f14f26a441ec",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobBRDAutoSim=nil\nself.used=true",
							conditions = 
							{
								
								{
									"b7a62993-b19d-433a-9ded-86e8ba8cd72a",
									true,
								},
								
								{
									"3de73b19-9b90-7e91-af3d-d216dba56ee0",
									true,
								},
							},
							name = "Reset forecast OnCountdownCancel",
							uuid = "0fc98712-b8ba-e698-862d-b5dbc2bdef08",
							version = 2.1,
						},
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
							localmapid = 733,
							name = "UCOB",
							uuid = "b7a62993-b19d-433a-9ded-86e8ba8cd72a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Bard",
							uuid = "3de73b19-9b90-7e91-af3d-d216dba56ee0",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim",
				eventType = 17,
				loop = true,
				mechanicTime = 7,
				name = "[BRD UCOB] Reset forecast OnCountdownCancel",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -80,
				uuid = "7751f658-a264-b8db-af91-ffef5be9dd5b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobBRDAutoSim=nil\nself.used=true",
							conditions = 
							{
								
								{
									"aa03031b-1029-c691-8bea-268dc96549ec",
									true,
								},
								
								{
									"ee7c27fe-cdfa-a3a6-9e30-2a574444c660",
									true,
								},
							},
							name = "Reset forecast OnMapChange",
							uuid = "0bb835e7-3d1b-f01a-8df1-b939221ef408",
							version = 2.1,
						},
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
							localmapid = 733,
							name = "UCOB",
							uuid = "aa03031b-1029-c691-8bea-268dc96549ec",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Bard",
							uuid = "ee7c27fe-cdfa-a3a6-9e30-2a574444c660",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim",
				eventType = 11,
				loop = true,
				mechanicTime = 7,
				name = "[BRD UCOB] Reset forecast OnMapChange",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -80,
				uuid = "e8ce7fa3-d38c-a477-be37-4a2b2f3b9a28",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobBRDAutoSim\nif not S then return end\nlocal p=TensorCore.mGetPlayer()\nif not p or not p.alive then return end\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nif now<=0 then return end\nS.updateBurstHolds(now)\nlocal twin,nael,baha=S.ent(1482),S.ent(2612),S.ent(3210)\nlocal desired,other\nif S.phase==1 then desired=twin\nelseif S.phase==2 then desired=nael\nelseif S.phase==3 or S.phase==5 then desired=baha\nelseif S.phase==4 then\n if S.alive(twin)and S.alive(nael)then\n  local current=TensorCore.mGetTarget()\n  desired=current and(current.id==twin.id or current.id==nael.id)and current or twin\n  if math.abs(twin.hp.percent-nael.hp.percent)>=3 then desired=twin.hp.percent>nael.hp.percent and twin or nael end\n  other=desired.id==twin.id and nael or twin\n elseif S.alive(twin)then desired=twin elseif S.alive(nael)then desired=nael end\nend\nlocal changed=S.phase==5 and S.killAt~=nil and now>=S.killAt-5\nif S.phase==5 then\n local phoenix=TensorCore.hasBuff(Player.id,1436)\n if S.phoenixActive~=phoenix then S.phoenixSeen=true;S.phoenixActive=phoenix;changed=true end\nend\nif S.alive(desired)then\n local t=TensorCore.mGetTarget()\n if not t or t.id~=desired.id then Player:SetTarget(desired.id);changed=true end\n if S.mainID~=desired.id then\n  S.mainID=desired.id;TensorCore.API.TensorACR.setAutoSimTarget(0,desired.id);changed=true\n end\nend\nif S.otherID~=(other and other.id)then\n S.otherID=other and other.id\n if other then TensorCore.API.TensorACR.setAutoSimTarget(1,other.id)else TensorCore.API.TensorACR.clearAutoSimTarget(1)end\n changed=true\nend\n-- Never freeze HP-driven death at a predicted time while the target is alive.\nlocal key=S.phase==1 and\"twinEnd\"or(S.phase==2 and\"naelEnd\"or(S.phase==4 and\"addsEnd\"))\nif key and not S.seen[key]and S.at(key)<=now+2 then\n local a=S.anchors[key];a[2]=now+10-S.at(a[1]);changed=true\nend\n-- Bard keeps attacking while moving.\nif changed then S.publish();self.used=true end\n",
							conditions = 
							{
								
								{
									"e7d85804-4b33-d8af-8c36-c5965ce41b0d",
									true,
								},
								
								{
									"3d4362b8-d91e-5154-b78f-a00afa6baed5",
									true,
								},
								
								{
									"65e0215b-d64b-cd01-83c1-c2b9878293f8",
									true,
								},
							},
							name = "Target and correct late phase estimates",
							uuid = "072ed5cd-b9c7-cb92-9caa-fc11466a8cc2",
							version = 2.1,
						},
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
							localmapid = 733,
							name = "UCOB",
							uuid = "e7d85804-4b33-d8af-8c36-c5965ce41b0d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Bard",
							uuid = "3d4362b8-d91e-5154-b78f-a00afa6baed5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.ucobBRDAutoSim~=nil",
							name = "Configured",
							uuid = "65e0215b-d64b-cd01-83c1-c2b9878293f8",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim",
				loop = true,
				mechanicTime = 7,
				name = "[BRD UCOB] Target and correct late phase estimates",
				throttleTime = 300,
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -7,
				uuid = "41ed752e-19ac-8940-84f1-9f4f71980f62",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobBRDAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nif not TensorCore.hasBuff(Player.id,783)then S.dynamic.scriptedStun=nil;S.publish();self.used=true\nelseif S.dynamic.scriptedStun[3]<=now+.5 then S.dynamic.scriptedStun[3]=now+1;S.publish()end",
							conditions = 
							{
								
								{
									"38381a92-8c97-1853-8969-5d2dd251220f",
									true,
								},
								
								{
									"c94ed741-9657-499f-b69a-5765b9c9efe5",
									true,
								},
								
								{
									"a43222f7-7bd1-1a4d-94e5-ce1b80cb23f5",
									true,
								},
							},
							name = "Maintain personal scripted stun",
							uuid = "f2ad58e5-dfa0-97d3-a4d6-259668c85942",
							version = 2.1,
						},
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
							localmapid = 733,
							name = "UCOB",
							uuid = "38381a92-8c97-1853-8969-5d2dd251220f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Bard",
							uuid = "c94ed741-9657-499f-b69a-5765b9c9efe5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.ucobBRDAutoSim\nreturn S~=nil and S.dynamic.scriptedStun~=nil",
							name = "Stun active",
							uuid = "a43222f7-7bd1-1a4d-94e5-ce1b80cb23f5",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim",
				loop = true,
				mechanicTime = 7,
				name = "[BRD UCOB] Maintain personal scripted stun",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -7,
				uuid = "fb0c41f7-7ec0-89aa-bc32-1128fcf06d5f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local C=_G.UCOB_BRD_Config\nif not C then C={goldLength=162.14,addsLength=100.222,buffForecast=false,buffGain=0};_G.UCOB_BRD_Config=C end\nif C.phoenixPriority==nil then C.phoenixPriority=false end\nif C.reserveGrand==nil then C.reserveGrand=true end\nif C.alignParty==nil then C.alignParty=false end\nif C.burstWait==nil then C.burstWait=30 end\nif C.burstMode==nil then C.burstMode=1 end\nif C.burstTimes==nil then C.burstTimes=\"\"end\nlocal visible=GUI:Begin('UCOB Bard AutoSim',true)\nif visible then\n GUI:Text('Two plans: through adds, then Phoenix/Golden. Actual cooldown timers carry over.')\n GUI:Text('Built-in targeting. Movement does not stop Bard attacks. Session settings.')\n C.goldLength=GUI:SliderFloat('Expected Golden duration (s)',C.goldLength,100,215,'%.1f',1)\n if GUI:IsItemHovered()then GUI:SetTooltip('Initial estimate162.14s from49 EU clears. Corrected by actual phase starts; adjustable for your group. All schedule times use the real combat clock.')end\n local oldBurst=table.concat({tostring(C.reserveGrand),tostring(C.alignParty),tostring(C.burstWait),tostring(C.burstMode),C.burstTimes},\"|\")\n if GUI:TreeNode('Party burst alignment')then\n  C.alignParty=GUI:Checkbox('Align burst to planned party windows',C.alignParty)\n  if GUI:IsItemHovered()then GUI:SetTooltip('Holds Battle Voice, Raging Strikes, Barrage and Wanderers Minuet only shortly before your planned party windows. It does not force their use or override disabled ACR toggles. Off until you confirm the schedule.')end\n  C.burstWait=GUI:SliderFloat('Maximum early hold (s)',C.burstWait,0,60,'%.1f',1)\n  if GUI:IsItemHovered()then GUI:SetTooltip('Example: 30 seconds permits ready-at-4:00 burst to wait for 4:30. A cooldown ready earlier than this band remains with AutoSim. This is timing alignment, not a party-damage weighting percentage.')end\n  C.burstMode=GUI:Combo('Party burst schedule',C.burstMode,{'Phase landmarks','Custom timestamps'})\n  if C.burstMode==2 then\n   C.burstTimes=GUI:InputText('Party burst seconds since pull',C.burstTimes)\n   if GUI:IsItemHovered()then GUI:SetTooltip('Comma-separated absolute pull times, at least120 seconds apart. Example:5,150,270,390. Times remain on the original pull clock after Phoenix. Include Golden windows or use phase landmarks.')end\n  end\n  local S=data.ucobBRDAutoSim\n  if S then\n   if S.partyError then GUI:Text(S.partyError)\n   else\n    local upcoming={};local now=TensorCore.API.TensorACR.getAutoSimTime()\n    for _,t in ipairs(S.partyWindows or{})do if t>=now then upcoming[#upcoming+1]=string.format('%.1f',t)end end\n    GUI:Text('Upcoming planned windows (s): '..table.concat(upcoming,', '))\n   end\n  end\n  GUI:Text('Future combined buff gain below is separate from timing alignment.')\n  GUI:TreePop()\n end\n if GUI:TreeNode('P3 - Grand Octet')then\n  C.reserveGrand=GUI:Checkbox('Reserve burst until adds appear',C.reserveGrand)\n  if GUI:IsItemHovered()then GUI:SetTooltip('Starts on the Grand Octet cast, not the preceding uptime window. Reserves Battle Voice, Raging Strikes, Barrage and Wanderers Minuet until native adds targetability. Other attacks and Mage/Army songs remain automatic. Leases expire within0.75s when the hold stops.')end\n  GUI:TreePop()\n end\n if oldBurst~=table.concat({tostring(C.reserveGrand),tostring(C.alignParty),tostring(C.burstWait),tostring(C.burstMode),C.burstTimes},\"|\")then\n  local S=data.ucobBRDAutoSim;if S then S.publish()end\n end\n if GUI:TreeNode('P4 - Adds')then\n  GUI:Text('Targets higher-HP boss when separated by at least3 percentage points.')\n  GUI:Text('Tracks DoT availability on both bosses. ACR decides profitable cleave from actual geometry.')\n  C.addsLength=GUI:SliderFloat('Expected adds duration (s)',C.addsLength,60,125,'%.1f',1)\n  if GUI:IsItemHovered()then GUI:SetTooltip('Forecast only; both actual boss departures correct the transition. New pulls use this estimate.')end\n  GUI:TreePop()\n end\n local previousPhoenix=C.phoenixPriority\n C.phoenixPriority=GUI:Checkbox('Phoenix planning priority: 2x',C.phoenixPriority)\n if GUI:IsItemHovered()then GUI:SetTooltip('Off by default: 1x planning weight throughout. On: surviving Phoenix-buffed Golden damage gets twice the relative priority of earlier phases. This is a planning preference, not a claim about FFLogs scoring; it does not change the actual buff. Lost Phoenix removes the extra priority.')end\n if previousPhoenix~=C.phoenixPriority then\n  local S=data.ucobBRDAutoSim\n  if S then S.publish()end\n end\n C.buffForecast=GUI:Checkbox('Forecast future party buffs',C.buffForecast)\n C.buffGain=GUI:SliderFloat('Combined future buff gain (%)',C.buffGain,0,40,'%.2f',1)\n if GUI:IsItemHovered()then GUI:SetTooltip('Optional composition-specific estimate; initially disabled/0%. Active buffs are handled by ACR. No UWU priority weights copied.')end\n GUI:Text('Phoenix phase priority: twice pre-Golden damage value; blessing loss removes the bonus.')\n if GUI:IsItemHovered()then GUI:SetTooltip('Normalized planning weight0.5 beforeGolden and1 during blessedGolden. Real Phoenix damage buff is not authored as another x2. UnblessedGolden returns to0.5.')end\n GUI:Text('Songs and cooldown planning stay with AutoSim; no melee LB forecast.')\nend\nGUI:End()\n",
							conditions = 
							{
								
								{
									"a93f4b2d-13ec-c10c-b885-acd54bb3e171",
									true,
								},
								
								{
									"73f50567-adbd-19e5-b5f6-976c8c0982bd",
									true,
								},
							},
							name = "AutoSim options",
							uuid = "d98bdecf-4824-860f-bc9b-dcaf8606ac78",
							version = 2.1,
						},
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
							localmapid = 733,
							name = "UCOB",
							uuid = "a93f4b2d-13ec-c10c-b885-acd54bb3e171",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Bard",
							uuid = "73f50567-adbd-19e5-b5f6-976c8c0982bd",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim",
				eventType = 13,
				loop = true,
				mechanicTime = 7,
				name = "[BRD UCOB] AutoSim options",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -80,
				uuid = "53cc2418-45e1-f76a-8bac-0791839df17b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobBRDAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal duration=eventArgs.buffDuration\nif type(duration)~=\"number\"or duration<=0 then duration=1 end\nS.dynamic.scriptedStun={\"Stun\",now,now+duration};S.publish();self.used=true",
							conditions = 
							{
								
								{
									"f9f177f3-edd4-a032-9510-9e16012f6b69",
									true,
								},
								
								{
									"cf7251c4-c159-b89e-8c61-3373f8d61d3e",
									true,
								},
								
								{
									"2c6b0902-f233-8b9b-b661-823226609901",
									true,
								},
								
								{
									"923de3b4-5144-98ab-b075-3944057da15d",
									true,
								},
							},
							name = "Personal Down for the Count",
							uuid = "1149d34f-7630-532c-8687-8345eec1850b",
							version = 2.1,
						},
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
							localmapid = 733,
							name = "UCOB",
							uuid = "f9f177f3-edd4-a032-9510-9e16012f6b69",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Bard",
							uuid = "cf7251c4-c159-b89e-8c61-3373f8d61d3e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventBuffID = 783,
							name = "Down for Count",
							uuid = "2c6b0902-f233-8b9b-b661-823226609901",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityID==Player.id and data.ucobBRDAutoSim~=nil",
							dequeueIfLuaFalse = true,
							name = "Personal status",
							uuid = "923de3b4-5144-98ab-b075-3944057da15d",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim",
				eventType = 8,
				loop = true,
				mechanicTime = 7,
				name = "[BRD UCOB] Personal Down for the Count",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -7,
				uuid = "2208873d-bfcc-72bc-94d4-5fa92c7bf9da",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobBRDAutoSim=nil\nself.used=true",
							conditions = 
							{
								
								{
									"34511e72-b81b-e588-9c18-3d84c7233f45",
									true,
								},
								
								{
									"8761d7b4-9280-14f8-93a2-57ce58b5ab08",
									true,
								},
							},
							name = "Reset forecast OnWipe",
							uuid = "0e641858-ac86-938f-8e01-4c35c8791e1d",
							version = 2.1,
						},
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
							localmapid = 733,
							name = "UCOB",
							uuid = "34511e72-b81b-e588-9c18-3d84c7233f45",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Bard",
							uuid = "8761d7b4-9280-14f8-93a2-57ce58b5ab08",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim",
				eventType = 9,
				loop = true,
				mechanicTime = 7,
				name = "[BRD UCOB] Reset forecast OnWipe",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -80,
				uuid = "030c79ca-1d22-6844-8f3a-6be309d69647",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local A=TensorCore.API.TensorACR\nlocal C=_G.UCOB_BRD_Config\nif not C then C={goldLength=162.14,addsLength=100.222,buffForecast=false,buffGain=0};_G.UCOB_BRD_Config=C end\nlocal S={version=2,planningStage=1,phase=1,seen={},ids={},up={},dynamic={},cfg={},dotStart={},ends={}}\nif C.phoenixPriority==nil then C.phoenixPriority=false end\nif C.reserveGrand==nil then C.reserveGrand=true end\nif C.alignParty==nil then C.alignParty=false end\nif C.burstWait==nil then C.burstWait=30 end\nif C.burstMode==nil then C.burstMode=1 end\nif C.burstTimes==nil then C.burstTimes=\"\"end\nfor k,v in pairs(C)do S.cfg[k]=v end\nS.anchors={\n twinEnd={\"pull\",128.352},nael={\"twinEnd\",21.968},naelEnd={\"nael\",115.307},baha={\"naelEnd\",16.333},\n off1={\"baha\",23.449},on1={\"off1\",11.534},off2={\"on1\",29.533},on2={\"off2\",16.557},\n off3={\"on2\",34.636},on3={\"off3\",16.517},off4={\"on3\",35.834},on4={\"off4\",27.560},\n off5={\"on4\",33.712},on5={\"off5\",19.376},off6={\"on5\",37.626},adds={\"off6\",53.754},\n addsEnd={\"adds\",S.cfg.addsLength},gold={\"addsEnd\",62.323}}\nfunction S.at(k)\n if k==\"pull\"then return 0 end\n if S.seen[k]then return S.seen[k]end\n local a=S.anchors[k];return S.at(a[1])+a[2]\nend\nfunction S.union(xs)\n table.sort(xs,function(a,b)return a[1]<b[1]end)\n local out={}\n for _,v in ipairs(xs)do\n  local last=out[#out]\n  if last and v[1]<=last[2]then last[2]=math.max(last[2],v[2])else out[#out+1]={v[1],v[2]}end\n end\n return out\nend\nfunction S.alive(e)return e and e.alive and e.targetable and e.hp.current>1 end\nfunction S.ent(cid)return S.ids[cid]and TensorCore.mGetEntity(S.ids[cid])end\n\nfunction S.beginGolden(now)\n if S.planningStage==2 then return end\n S.planningStage=2;S.planStart=now\n S.dynamic={};S.ends={};S.dotStart={}\n S.personalMoves={};S.quote=nil\n S.mainID=nil;S.otherID=nil\n S.lbObserved=nil;S.lbStarted=nil;S.lbCompleted=nil;S.lbCancelled=nil\n A.clearAutoSimTarget(0);A.clearAutoSimTarget(1)\nend\n\n\nS.burstActions={118,101,107,3559}\nfunction S.partySchedule()\n local ts={}\n if S.cfg.burstMode==2 then\n  for token in S.cfg.burstTimes:gmatch(\"[^,;]+\")do\n   local n=tonumber(token)\n   if not n or n<0 then return {},\"Use comma-separated seconds since pull.\"end\n   ts[#ts+1]=n\n  end\n  if #ts==0 then return {},\"Enter planned party burst times.\"end\n  table.sort(ts)\n  for i=2,#ts do if ts[i]-ts[i-1]<120 then return {},\"BRD burst windows must be at least 120 seconds apart.\"end end\n else\n  ts=S.planningStage==2 and{S.at(\"gold\")+2,S.at(\"gold\")+122}or{5,S.at(\"nael\")+2,S.at(\"baha\")+2,S.at(\"on3\")+2,S.at(\"adds\")+2}\n  local prev=-120\n  for i,t in ipairs(ts)do ts[i]=math.max(t,prev+120);prev=ts[i]end\n end\n local out={}\n for _,t in ipairs(ts)do\n  if(S.planningStage~=2 or t>=S.planStart)and(S.planningStage==2 or t<=S.at(\"addsEnd\"))then out[#out+1]=t end\n end\n return out,nil\nend\nfunction S.updateBurstHolds(now)\n local reserve=S.cfg.reserveGrand and S.phase==3 and S.octetSeen\n local remaining=nil\n if S.cfg.alignParty and S.cfg.burstWait>0 then\n  for _,t in ipairs(S.partyWindows or{})do\n   local left=t-now\n   if left>0 and left<=S.cfg.burstWait then remaining=left;break end\n  end\n end\n if not reserve and not remaining then return end\n local clock=Now()\n if S.nextHoldRefresh and clock<S.nextHoldRefresh then return end\n -- Short, action-specific leases expire automatically when this controller stops.\n local deadline=clock+750\n if remaining and not reserve then deadline=math.min(deadline,clock+remaining*1000)end\n for _,id in ipairs(S.burstActions)do A.holdActionUntil(id,deadline)end\n S.nextHoldRefresh=clock+250\nend\n\nfunction S.publish()\n local now=A.getAutoSimTime()\n -- Let the first plan finish at adds death. No ordinary player death changes plans.\n if S.planningStage~=2 and S.seen.addsEnd and now>S.seen.addsEnd+.5 then return end\n local live=_G.UCOB_BRD_Config\n if live then S.cfg.goldLength=live.goldLength end\n S.cfg.phoenixPriority=live and live.phoenixPriority==true or false\n if live then S.cfg.reserveGrand=live.reserveGrand~=false;S.cfg.alignParty=live.alignParty==true;S.cfg.burstWait=live.burstWait;S.cfg.burstMode=live.burstMode;S.cfg.burstTimes=live.burstTimes end\n local horizon=S.planningStage==2 and S.at(\"gold\")+S.cfg.goldLength or S.at(\"addsEnd\")\n local kill=math.max(now+.5,horizon)\n S.killAt=kill;A.setAutoSimKillTime(kill)\n local gaps={{S.at(\"twinEnd\"),S.at(\"nael\")},{S.at(\"naelEnd\"),S.at(\"baha\")},{S.at(\"off6\"),S.at(\"adds\")},{S.at(\"addsEnd\"),S.at(\"gold\")}}\n for i=1,5 do\n  local a,b=S.at(\"off\"..i),S.at(\"on\"..i)\n  if S.seen.adds then b=math.min(b,S.seen.adds)end\n  if b>a then gaps[#gaps+1]={a,b}end\n end\n if S.planningStage==2 then gaps={{S.planStart,S.at(\"gold\")}}end\n local valid={};for _,g in ipairs(gaps)do if g[2]>g[1]then valid[#valid+1]=g end end;gaps=valid\n if S.planningStage~=2 and S.naelGap then gaps[#gaps+1]={S.naelGap[1],S.naelGap[2]or now+6}end\n A.clearAutoSimPhases(\"FullDowntime\")\n for _,g in ipairs(S.union(gaps))do if g[2]>g[1]then A.addAutoSimPhase(\"FullDowntime\",g[1],g[2])end end\n local stun={}\n for _,g in pairs(S.dynamic)do if g[1]==\"Stun\"then stun[#stun+1]={g[2],g[3]}end end\n A.clearAutoSimPhases(\"Stun\")\n for _,g in ipairs(S.union(stun))do if g[2]>g[1]then A.addAutoSimPhase(\"Stun\",g[1],g[2])end end\n -- Optional relative Phoenix planning preference. Default is 1x throughout.\n -- Actual active status handling remains with the ACR.\n A.clearAutoSimPhases(\"BossModifier\")\n if S.cfg.phoenixPriority then\n local gold=S.at(\"gold\")\n if gold>0 then A.addAutoSimPhase(\"BossModifier\",0,gold,.5)end\n if S.phase==5 and S.phoenixSeen and not S.phoenixActive then\n  A.addAutoSimPhase(\"BossModifier\",gold,kill,.5)\n end\n end\n S.partyWindows,S.partyError=S.partySchedule()\n A.clearAutoSimPhases(\"RaidBuff\")\n if S.cfg.buffForecast then\n  for _,t in ipairs(S.partyWindows)do A.addAutoSimPhase(\"RaidBuff\",t,t+20,1+S.cfg.buffGain/100)end\n end\n -- Slot 0 tracks the selected main boss; slot 1 tracks the other adds boss.\n -- Lifetimes survive temporary untargetability. Golden starts a fresh target-state lifetime.\n local start,finish=0,S.at(\"twinEnd\")\n if S.planningStage==2 then start,finish=S.at(\"gold\"),kill\n elseif S.phase==2 then start,finish=S.at(\"nael\"),S.at(\"naelEnd\")\n elseif S.phase==3 then start,finish=S.at(\"baha\"),S.at(\"adds\")\n elseif S.phase==4 then start,finish=S.at(\"adds\"),S.at(\"addsEnd\")\n elseif S.phase==5 then start,finish=S.at(\"gold\"),kill end\n finish=math.max(finish,now+5)\n for slot=0,1 do\n  A.clearAutoSimPhases(\"DotAvailability\",slot);A.clearAutoSimPhases(\"TargetLifetime\",slot)\n  if slot==0 or(S.phase==4 and S.planningStage~=2)then\n   local id=slot==0 and S.mainID or S.otherID\n   local death=id and S.ends[id]\n   local ending=death or finish\n   if ending>start then\n    A.addAutoSimPhase(\"TargetLifetime\",start,ending,1,slot)\n    local cursor=start\n    for _,g in ipairs(S.union(gaps))do\n     local a,b=math.max(start,g[1]),math.min(ending-.5,g[2])\n     if b>a then if a>cursor then A.addAutoSimPhase(\"DotAvailability\",cursor,a,1,slot)end;cursor=math.max(cursor,b)end\n    end\n    if ending-.5>cursor then A.addAutoSimPhase(\"DotAvailability\",cursor,ending-.5,1,slot)end\n   end\n  end\n end\n A.clearAutoSimUncertainty()\n A.addAutoSimUncertainty(0,S.phase>=3 and 3 or 20)\n if S.planningStage~=2 and not S.seen.addsEnd then A.addAutoSimUncertainty(math.max(1,S.at(\"addsEnd\")-25),20)end\n if S.planningStage==2 then A.addAutoSimUncertainty(math.max(2,S.at(\"gold\")+S.cfg.goldLength-30),15)end\n S.lastPublish=now\nend\nfunction S.sync(k,t)\n if S.seen[k]then return end\n S.seen[k]=t;S.publish()\nend\nfor _,cid in ipairs({1482,2612,3210})do\n for _,e in pairs(TensorCore.getEntityGroupList(\"ContentID\",cid)or{})do\n  if e.alive then S.ids[cid]=e.id;S.up[cid]=e.targetable;break end\n end\nend\nS.publish()\ndata.ucobBRDAutoSim=S\nself.used=true\n",
							conditions = 
							{
								
								{
									"c651f806-146f-9a36-9aa2-843b7c76f8f5",
									true,
								},
								
								{
									"ba0ff330-0d70-84ad-8270-2095f9dce640",
									true,
								},
								
								{
									"87ceae1b-c10a-9d4a-b33b-30c0fd091478",
									true,
								},
								
								{
									"2dce44f5-0ab3-e612-a632-e04ac6b4b6bf",
									true,
								},
							},
							name = "Configure on first Plummet",
							uuid = "58ee1398-ea10-e326-8515-d0e46e8e028f",
							version = 2.1,
						},
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
							localmapid = 733,
							name = "UCOB",
							uuid = "c651f806-146f-9a36-9aa2-843b7c76f8f5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Bard",
							uuid = "ba0ff330-0d70-84ad-8270-2095f9dce640",
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
							name = "Plummet",
							spellIDList = 
							{
								9896,
							},
							uuid = "87ceae1b-c10a-9d4a-b33b-30c0fd091478",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.ucobBRDAutoSim==nil",
							name = "Not configured",
							uuid = "2dce44f5-0ab3-e612-a632-e04ac6b4b6bf",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim",
				eventType = 2,
				mechanicTime = 7,
				name = "[BRD UCOB] Configure on first Plummet",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 15,
				timerStartOffset = -7,
				uuid = "9433d59a-760d-99c0-aa40-4a46fd4c4664",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobBRDAutoSim\nif not S then return end\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nif now<=0 then return end\nlocal cid,id,on=eventArgs.entityContentID,eventArgs.entityID,eventArgs.isTargetable\nif cid~=1482 and cid~=2612 and cid~=3210 then return end\nS.ids[cid]=id;S.up[cid]=on\nlocal e=TensorCore.mGetEntity(id)\nif cid==1482 and S.phase==1 and not on then S.sync(\"twinEnd\",now)\nelseif cid==2612 and on and S.phase<2 then S.phase=2;S.sync(\"nael\",now)\nelseif cid==2612 and S.phase==2 then\n if not on and e and e.hp.current<=1 then S.sync(\"naelEnd\",now)\n elseif not on then S.naelGap={now};S.publish()\n elseif S.naelGap then S.naelGap[2]=now;S.publish()end\nelseif cid==3210 and on and S.phase<3 then\n if not S.seen.naelEnd then S.seen.naelEnd=now-16.333 end\n S.phase=3;S.sync(\"baha\",now)\nelseif cid==3210 and S.phase==3 then\n local i=S.trio\n if not i then\n  local best=math.huge\n  for j=1,6 do local key=(on and \"on\"or\"off\")..j\n   if S.anchors[key]and not S.seen[key]then local d=math.abs(now-S.at(key));if d<best then best=d;i=j end end\n  end\n end\n if i then local key=(on and \"on\"or\"off\")..i\n  if S.anchors[key]then S.sync(key,now)end\n  if on then S.trio=nil end\n end\nelseif (cid==1482 or cid==2612)and on and S.phase==3 and now>S.at(\"baha\")+200 then\n S.phase=4;S.sync(\"adds\",now)\nelseif S.phase==4 then\n if cid==3210 and on then S.beginGolden(now);S.phase=5;S.sync(\"gold\",now)\n elseif not on then\n  if e and e.hp.current<=1 then S.ends[id]=now end\n  if not S.up[1482]and not S.up[2612]then S.sync(\"addsEnd\",now)else S.publish()end\n end\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"d32f9545-017a-fbfe-84c4-c1d541fc8e5a",
									true,
								},
								
								{
									"c53f5233-905f-703f-b2fd-b2f02d89d1fb",
									true,
								},
								
								{
									"3b303cbf-d345-6978-beef-7b9e9c1cd1e4",
									true,
								},
							},
							name = "Observe boss targetability",
							uuid = "cdbf13c2-69f3-2e7a-aa26-f2bb9e5ca4ee",
							version = 2.1,
						},
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
							localmapid = 733,
							name = "UCOB",
							uuid = "d32f9545-017a-fbfe-84c4-c1d541fc8e5a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Bard",
							uuid = "c53f5233-905f-703f-b2fd-b2f02d89d1fb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityContentID==1482 or eventArgs.entityContentID==2612 or eventArgs.entityContentID==3210",
							dequeueIfLuaFalse = true,
							name = "Boss identity",
							uuid = "3b303cbf-d345-6978-beef-7b9e9c1cd1e4",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim",
				eventType = 26,
				loop = true,
				mechanicTime = 7,
				name = "[BRD UCOB] Observe boss targetability",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -7,
				uuid = "edf3ff59-d265-c2e5-a7b9-a6b66b30e953",
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
				name = "Ucobreactions\\LPDU Draws",
				uuid = "4beef2c9-c9bd-1e85-90cd-1d7b2a615b99",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[4] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "b11c903a-4784-274e-2d21-be58f96ba3ca",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[6] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "73d9a41c-14c4-8a10-e4c4-daf62f7fa5ac",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[7] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "bc09eedd-6d08-4a51-3f2c-2307ddf8982d",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[8] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "4bc4e9ce-acdb-cdba-0ad0-67d441c9519e",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[10] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "945435fb-5d8b-5f2f-70d4-5f45d34d904b",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[12] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "b91c63ad-45ab-d101-7990-8713d779287d",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[13] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "0aa3712c-c0c2-ef40-16db-12e29085523c",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[15] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "e84bf376-bebd-f652-a878-fdd0bc76edc6",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[17] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "30a8d6d8-67c2-cbb4-26d3-990e7dc1b3a8",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[18] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "a2e6de63-19d8-17e7-b1b6-031dab3fde73",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[20] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "1abb0146-a9d9-74ba-0983-ca9cbd4706d6",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[22] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "dc05c728-6c96-889c-46c6-b6ba23f45a38",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[24] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "ab3b79da-5f8f-c9a6-304d-ae08108cf6aa",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[26] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "eec965bc-9360-6c08-fc7d-0ba66c847b8c",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[27] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "35bd3bfd-44ab-d749-7235-d677627e4a8d",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[29] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "709d7c1f-0ca1-5453-63a8-0785ec5c352f",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[30] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "e06a55f9-261d-9b6d-7b52-0f47d37cad49",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[31] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "82386db8-bb86-b4ec-c640-743622314208",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[33] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "1b8b1a56-10cc-c30a-7f7c-7d98ee609fa6",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[35] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "cac88f0c-e28f-3b98-adba-050afb675e9c",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[36] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "cc8d6b5b-de64-cd47-c30a-dd6da3e5b0ab",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[38] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "32c0ba81-00ed-0a55-68e4-958ff8d6c751",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Hold",
				uuid = "3c5c9150-c1b2-7dfa-a3b4-0354bfa76c64",
				version = 2,
			},
			inheritedObjectUUID = "1e548005-cf79-fecf-8be6-271033385d61",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[39] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "add7d8c0-6bf7-0e14-1353-b9dea0930710",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[40] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "6d37320c-7cce-a0e8-28f4-cfd69dd6019c",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[44] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "24a710b8-b381-cc7c-7c3a-bfaac49fe508",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[45] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "82d8f8f9-5ac4-56bd-d9f7-20db75eb5049",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[47] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "a95ba467-eddc-948b-ce2c-138d06880d77",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[48] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "f7465834-9267-8c70-a70f-c3fe598827c4",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[49] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "da49eb75-3ce4-e0b1-5809-fe2ff7fa3e85",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[51] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "ef135626-79ed-d0e2-8ddf-0b085a92ab36",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[54] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "a498672b-6e80-ccbf-af45-725d7ebee8bb",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[55] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "395d013a-89e6-570e-6715-279c420c3c0a",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[56] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "444a5fdd-50c4-9111-0f93-79ab575d146d",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[59] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "d4055ace-969c-6d7a-0c40-d010a7a5f0de",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[60] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "33b75b82-8d69-909e-27b3-16e0c110f012",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[61] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "cc5e22b3-b10a-684f-013e-58219a9be783",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[63] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "badbbee5-6451-1621-4df7-aa4f6b9b47b5",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[65] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "81f917df-1363-51e3-1a63-351577b17bef",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[68] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "df9a439a-58c8-66f6-3e12-8c5844282a6a",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[72] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "f8dffb03-e119-ef9f-4326-f17d0de2be13",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[73] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "1f550392-2d7a-57ee-fc33-1b3cab2d49e2",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[77] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "9128e73e-7701-d542-e96f-7ca8bb25d00e",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[79] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "8d99e1cc-4c82-3aa8-13ef-174256429c5c",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[82] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "46129086-df4d-7daa-fae2-99ec1318e816",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Hold",
				uuid = "73105dd9-b290-bad6-8471-7be1b274a89a",
				version = 2,
			},
			inheritedObjectUUID = "5bdc05d9-7c8f-3be8-847e-b6ca05baffa2",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[84] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "e573fbfc-f2b4-e138-68af-173626d843cc",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[85] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "8cb6863d-50e6-c979-1dc0-b247444b1dcd",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[87] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "1fcec40b-7769-74e7-aeca-ded90750a91b",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[88] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "c459bbf0-c554-28b4-0432-c732199ef980",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[89] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "6ed71031-a857-bbf5-b74b-0c233c098c41",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[90] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "0e957493-32d9-f177-9a20-3bbde7116de3",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[91] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "abe00062-bd21-26a6-f2dd-b17c8e0bc0f2",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[92] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "05d94cc5-a23d-3449-2d38-798b51240f15",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[93] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "8080e904-f0f1-c908-e486-6e9a52820fd4",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[94] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "a072fc3f-72a6-37ab-d2f9-862984b8844f",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[96] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "82b6c091-1258-305d-57d6-67d737ff3221",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[97] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "3d7deb50-ca27-e59c-537c-46065e73f0e0",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[98] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "70740eeb-706c-79ff-bfc7-e9e5d87ec57b",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[99] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "c88e9cfa-a213-2b4e-75c3-4f2418b9feca",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[100] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "88fda0c7-7ae9-51c3-60f7-60ad345e5497",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[101] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "d3ec05b6-5777-c052-b27e-6e2cfb39b0c6",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[102] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "1a07cd59-e380-28f5-3c2f-32fb95e775e9",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[103] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "8d280f18-007c-95b4-7c6a-6c4abc8476a8",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[104] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "f818433b-f645-292f-ad60-24191210534b",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[106] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "d0b66eed-de65-9b01-ea8e-3887163beb7d",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[108] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "7690270f-7832-4bdb-b4d4-7c95511c2b9f",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[109] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "20ff4b5e-1a75-eaaa-b632-7d549d7c93ee",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[110] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "172f5c1c-3161-89d8-cdfa-f6faeb2220ac",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[111] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "5f5fa6dd-063d-da19-75e0-68eb999b132d",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[112] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "5472483a-e904-a676-5c61-acdcb50e1eca",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[113] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "bfadae2b-436b-ee87-4c27-4a9d74d2e57b",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[115] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "ef44aac9-b9d5-16ad-249f-5db7e603d699",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[116] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "0a289d26-d548-224a-198e-7248c8caa2f6",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[118] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "d2e18244-1b02-1460-b14c-5a62eed62fd4",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[119] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "71539905-f48d-55a1-1401-ce93ed782f15",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[122] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "873c1893-64b1-1d8f-4aa6-2741f06eeda3",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[123] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "2486a462-0f20-41de-283b-94803d56a8b2",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[124] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "fb5d6491-99a6-d455-a0ba-f803db7332e1",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[125] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "b6248f50-04b0-d814-c730-0092143d56a0",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[126] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "1919a03f-10a8-f123-71ba-583544771a0f",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[127] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "347f2a8e-5d90-ac32-3360-a6f4eee63e5e",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[128] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "bf61949d-0828-c3d9-479f-48279e9d61ed",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[133] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "e4f4a235-02bf-bb51-7439-1fb33f3a8c05",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[134] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "ac3e2e3e-7213-3122-74b2-4370bd0194ce",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[135] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "f10ad66f-a55b-1e53-1f2f-97b18b5ae37f",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[137] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "bde07141-5f74-8f85-29d4-14dfe285b7d1",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[138] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "bd8184ea-f849-93a6-95cc-837c22593b3a",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[139] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "89278e1b-6e02-5e77-3d0f-0dbd8d94a12b",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[141] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "c650c0da-ba50-6b2e-d243-a070e07c4a6a",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[142] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "50d282fd-780d-4db1-8765-71dfe91cc84d",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[143] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "09deacbc-cd8f-f970-bf04-122ecba9ee4c",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[146] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "d07e0d69-bb94-71e5-d1ca-7cb321a10339",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[147] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "f71b0e28-718f-d724-3923-b582a225a7f8",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[148] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "249938f3-53a2-efd7-d379-b52936f00783",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[150] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "355ea860-a71f-7b14-b642-8bde0ae752f0",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[151] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "0ee9e9a1-3c15-7755-0bd3-678fb564a731",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[152] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "3802641e-ffff-4f32-db99-a420f7a7c4ae",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "BRD AutoSim",
				uuid = "8826aa2f-e5d4-2608-8d0b-5c496f1a6066",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobBRDAutoSim\nS.octetSeen=true\nS.updateBurstHolds(TensorCore.API.TensorACR.getAutoSimTime())\nself.used=true",
							conditions = 
							{
								
								{
									"2cfa30e1-03ad-513b-a5f8-f5854a45ee85",
									true,
								},
								
								{
									"3b428868-2875-bad3-845f-da0cebd34285",
									true,
								},
								
								{
									"d36cc56f-d7fe-213d-b4db-79656b7a1b87",
									true,
								},
								
								{
									"2ce199a2-c8b1-f540-8cea-9db0a72db02e",
									true,
								},
							},
							name = "Start optional reservation",
							uuid = "c59df72b-3e48-58ed-a555-f4ae0fef7ca4",
							version = 2.1,
						},
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
							localmapid = 733,
							name = "UCOB",
							uuid = "2cfa30e1-03ad-513b-a5f8-f5854a45ee85",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Bard",
							uuid = "3b428868-2875-bad3-845f-da0cebd34285",
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
							name = "Grand Octet",
							spellIDList = 
							{
								9959,
							},
							uuid = "d36cc56f-d7fe-213d-b4db-79656b7a1b87",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.ucobBRDAutoSim\nreturn S~=nil and S.phase==3",
							dequeueIfLuaFalse = true,
							name = "P3 configured",
							uuid = "2ce199a2-c8b1-f540-8cea-9db0a72db02e",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim",
				eventType = 3,
				loop = true,
				mechanicTime = 789.4,
				name = "[BRD UCOB] Grand Octet burst reservation",
				timeRange = true,
				timelineIndex = 152,
				timerEndOffset = 100,
				timerStartOffset = -15,
				uuid = "37c377eb-c12c-2fde-ba8c-fbc697036a87",
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
				name = "Ucobreactions\\LPDU Draws",
				uuid = "5ba33bcf-b317-9423-a2cf-8061c009245f",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[154] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "296cc754-d6e5-fd20-04b2-f632aee730a4",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[155] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "280ec695-9e1b-d961-b7cb-3b23f8ebcb65",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[159] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "209a6e19-6146-086d-1e40-e1470c1d67a9",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[165] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "74c0b91c-726c-2848-845d-e24e48b37dac",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[166] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "1d3f0b2b-7d7d-13b7-a9e2-0551d264427b",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[168] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "723021d1-6423-5cc5-54f0-eeab31e4af21",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[170] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "36a06156-a324-f0ea-83e0-c428c2182566",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[171] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "22024867-6eca-fa1b-5d43-c369bad46d37",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[172] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "9d4db4b8-8e52-94cc-c295-fe46afc381c8",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[173] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "fb7f9cf9-abc5-6ecd-fbba-a217a9441909",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[174] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "89e6512a-7a93-3916-96a4-62bc6430067a",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[175] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "e7a2b25b-a07c-fe27-dd98-38fd0c15786b",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[179] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "65b58faf-f998-ae03-6dad-5df13c1465bf",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[181] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "918944ce-a024-9bba-0530-3cb49fda6f9e",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[182] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "b70d67d1-ab11-fa5d-7f9c-f8c376c1f521",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[183] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "5ec9a790-62e1-af9c-5c2b-67529d36b3e0",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[184] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "59a8cad3-cb93-bb77-e319-420125d430e3",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[185] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "2660dda2-55da-f0a6-5e30-6040ccce83f2",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[189] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "ac974026-cfa4-8e22-7b21-168c6b3945f6",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Hold",
				uuid = "e1bc656e-bca0-3b10-bec4-f7a10b61c3a2",
				version = 2,
			},
			inheritedObjectUUID = "75257b48-990f-f9b6-941b-37f980da826d",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[190] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "BRD AutoSim",
				uuid = "1755fef8-6561-5d63-933c-d142789f6f1d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "BRD AutoSim",
				name = "P5 Golden",
				uuid = "5aee0345-5cb5-b29d-8d88-5a7a5859f248",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobBRDAutoSim\nS.phoenixSeen=true;S.phoenixActive=true\nif S.phase==4 and(S.teraflareSeen or S.seen.addsEnd)then S.beginGolden(TensorCore.API.TensorACR.getAutoSimTime())end\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"f718a550-f897-8101-ac6d-5b0077e16292",
									true,
								},
								
								{
									"edf7fccb-4bab-4753-8102-6174c54746a2",
									true,
								},
								
								{
									"35394bb5-d72c-f3bf-a42e-b099cc1c80f2",
									true,
								},
								
								{
									"59e15f87-df0f-3042-893d-b910ec91a4ad",
									true,
								},
							},
							name = "Correct Phoenix phase priority",
							uuid = "4e7a17be-bbd4-6c63-8459-a95f3019c5a8",
							version = 2.1,
						},
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
							localmapid = 733,
							name = "UCOB",
							uuid = "f718a550-f897-8101-ac6d-5b0077e16292",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "Bard",
							uuid = "edf7fccb-4bab-4753-8102-6174c54746a2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventBuffID = 1436,
							name = "Phoenix Blessing",
							uuid = "35394bb5-d72c-f3bf-a42e-b099cc1c80f2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityID==Player.id and data.ucobBRDAutoSim~=nil",
							dequeueIfLuaFalse = true,
							name = "Personal blessing",
							uuid = "59e15f87-df0f-3042-893d-b910ec91a4ad",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim/P5 Golden",
				eventType = 8,
				loop = true,
				mechanicTime = 1200,
				name = "[BRD UCOB] Observe personal Phoenix Blessing",
				timeRange = true,
				timelineIndex = 190,
				timerEndOffset = 300,
				timerStartOffset = -30,
				uuid = "af7dfdd2-6192-5069-b9c3-17de837118e1",
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
				name = "Ucobreactions\\LPDU Draws",
				uuid = "2f36fe43-53d6-862f-7181-8ea5ef142413",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[194] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "0dca65c0-5e0d-f2b4-6d56-6bee1dfc9ad0",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[195] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "92b34781-4111-85f5-20f6-039f63357011",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[196] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "f9989b7e-b509-1d52-c82d-bc309c57360e",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[197] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "aa92d5af-d87a-aec3-762a-e87180f1abbf",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[198] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "2abb1c0c-8b6e-ab38-5b94-015a3774025c",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[199] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "20b4eb0d-e9a0-9379-e1ea-2b4b2739a01d",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[200] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "f0120570-7e92-e78c-4e91-f70289cef840",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[201] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "9a8f59b1-748c-b68d-e738-be330eb7da01",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[202] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "dcd2772e-229b-62aa-8bb1-bfa4759d2dfe",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[203] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "a533d6df-8057-c3db-d5b6-5a652697682f",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[204] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "9411e324-3602-c638-d472-53ae30ced4b4",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[205] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "de167de5-9434-ae79-9cd3-b35f13d267f5",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	[206] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Ucobreactions\\LPDU Draws",
				uuid = "56f21a82-cf55-72d6-e7b1-e1f087c9ff52",
			},
			inheritanceRoot = "Ucobreactions\\LPDU Draws",
			objectType = "folder",
		},
	},
	inheritedProfiles = 
	{
		"Ucobreactions\\LPDU Draws",
	},
	timelineName = "ucob",
	version = "1.0.3",
}



return tbl
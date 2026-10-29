local tbl = 
{
	[2] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "RPR AutoSim",
				uuid = "3fac33b1-1861-cc6e-9986-061d34ec15a3",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local A=TensorCore.API.TensorACR\nlocal C=_G.UCOB_RPR_Config\nif not C then C={lbWho=1,lbAt=150,goldLength=162.14,addsLength=100.222,cleave=true,buffForecast=false,buffGain=0};_G.UCOB_RPR_Config=C end\nlocal S={version=1,phase=1,seen={},ids={},up={},dynamic={},cfg={},dotStart={},ends={}}\nfor k,v in pairs(C)do S.cfg[k]=v end\nS.anchors={\n twinEnd={\"pull\",128.352},nael={\"twinEnd\",21.968},naelEnd={\"nael\",115.307},baha={\"naelEnd\",16.333},\n off1={\"baha\",23.449},on1={\"off1\",11.534},off2={\"on1\",29.533},on2={\"off2\",16.557},\n off3={\"on2\",34.636},on3={\"off3\",16.517},off4={\"on3\",35.834},on4={\"off4\",27.560},\n off5={\"on4\",33.712},on5={\"off5\",19.376},off6={\"on5\",37.626},adds={\"off6\",53.754},\n addsEnd={\"adds\",S.cfg.addsLength},gold={\"addsEnd\",62.323}}\nfunction S.at(k)\n if k==\"pull\"then return 0 end\n if S.seen[k]then return S.seen[k]end\n local a=S.anchors[k];return S.at(a[1])+a[2]\nend\nfunction S.union(xs)\n table.sort(xs,function(a,b)return a[1]<b[1]end)\n local out={}\n for _,v in ipairs(xs)do\n  local last=out[#out]\n  if last and v[1]<=last[2]then last[2]=math.max(last[2],v[2])else out[#out+1]={v[1],v[2]}end\n end\n return out\nend\nfunction S.alive(e)return e and e.alive and e.targetable and e.hp.current>1 end\nfunction S.ent(cid)return S.ids[cid]and TensorCore.mGetEntity(S.ids[cid])end\nfunction S.roleMelee()\n local R=AnyoneCore.Roster\n return R and R.current()and(R.mySlot()==\"M1\"or R.mySlot()==\"M2\")\nend\nfunction S.publish()\n local now=A.getAutoSimTime()\n local live=_G.UCOB_RPR_Config\n if live then S.cfg.lbWho=live.lbWho;S.cfg.lbAt=live.lbAt;S.cfg.goldLength=live.goldLength end\n local kill=math.min(1259,math.max(now+10,S.at(\"gold\")+S.cfg.goldLength))\n S.killAt=kill;A.setAutoSimKillTime(kill)\n local gaps={{S.at(\"twinEnd\"),S.at(\"nael\")},{S.at(\"naelEnd\"),S.at(\"baha\")},{S.at(\"off6\"),S.at(\"adds\")},{S.at(\"addsEnd\"),S.at(\"gold\")}}\n for i=1,5 do\n  local a,b=S.at(\"off\"..i),S.at(\"on\"..i)\n  if S.seen.adds then b=math.min(b,S.seen.adds)end\n  if b>a then gaps[#gaps+1]={a,b}end\n end\n local valid={};for _,g in ipairs(gaps)do if g[2]>g[1]then valid[#valid+1]=g end end;gaps=valid\n if S.naelGap then gaps[#gaps+1]={S.naelGap[1],S.naelGap[2]or now+6}end\n A.clearAutoSimPhases(\"FullDowntime\")\n for _,g in ipairs(S.union(gaps))do if g[2]>g[1]then A.addAutoSimPhase(\"FullDowntime\",g[1],g[2])end end\n local stun={}\n if S.cfg.lbWho==1 and S.roleMelee()and not S.lbObserved then\n  local t=S.at(\"gold\")+S.cfg.lbAt;stun[#stun+1]={t,t+8.2}\n end\n for _,g in pairs(S.dynamic)do if g[1]==\"Stun\"then stun[#stun+1]={g[2],g[3]}end end\n A.clearAutoSimPhases(\"Stun\")\n for _,g in ipairs(S.union(stun))do if g[2]>g[1]then A.addAutoSimPhase(\"Stun\",g[1],g[2])end end\n A.clearAutoSimPhases(\"MeleeDowntime\")\n for _,g in pairs(S.dynamic)do if g[1]==\"MeleeDowntime\"and g[3]>g[2]then A.addAutoSimPhase(\"MeleeDowntime\",g[2],g[3])end end\n -- Phoenix1436 is +100% real personal damage. Normalize planning weights\n -- so current actual buffs are not multiplied by another authored x2.\n A.clearAutoSimPhases(\"BossModifier\")\n local gold=S.at(\"gold\")\n if gold>0 then A.addAutoSimPhase(\"BossModifier\",0,gold,.5)end\n if S.phase==5 and S.phoenixSeen and not S.phoenixActive then\n  A.addAutoSimPhase(\"BossModifier\",gold,kill,.5)\n end\n A.clearAutoSimPhases(\"RaidBuff\")\n if S.cfg.buffForecast then\n  local prev=-120\n  for _,t in ipairs({5,S.at(\"nael\")+2,S.at(\"baha\")+2,S.at(\"on3\")+2,S.at(\"adds\")+2,S.at(\"gold\")+2,S.at(\"gold\")+122})do\n   t=math.max(t,prev+120);A.addAutoSimPhase(\"RaidBuff\",t,t+20,1+S.cfg.buffGain/100);prev=t\n  end\n end\n -- Slot 0 tracks the selected main boss; slot 1 tracks the other adds boss.\n -- Lifetimes survive temporary untargetability. Golden starts a fresh target-state lifetime.\n local start,finish=0,S.at(\"twinEnd\")\n if S.phase==2 then start,finish=S.at(\"nael\"),S.at(\"naelEnd\")\n elseif S.phase==3 then start,finish=S.at(\"baha\"),S.at(\"adds\")\n elseif S.phase==4 then start,finish=S.at(\"adds\"),S.at(\"addsEnd\")\n elseif S.phase==5 then start,finish=S.at(\"gold\"),kill end\n finish=math.max(finish,now+5)\n for slot=0,1 do\n  A.clearAutoSimPhases(\"DotAvailability\",slot);A.clearAutoSimPhases(\"TargetLifetime\",slot)\n  if slot==0 or S.phase==4 then\n   local id=slot==0 and S.mainID or S.otherID\n   local death=id and S.ends[id]\n   local ending=death or finish\n   if ending>start then\n    A.addAutoSimPhase(\"TargetLifetime\",start,ending,1,slot)\n    local cursor=start\n    for _,g in ipairs(S.union(gaps))do\n     local a,b=math.max(start,g[1]),math.min(ending-.5,g[2])\n     if b>a then if a>cursor then A.addAutoSimPhase(\"DotAvailability\",cursor,a,1,slot)end;cursor=math.max(cursor,b)end\n    end\n    if ending-.5>cursor then A.addAutoSimPhase(\"DotAvailability\",cursor,ending-.5,1,slot)end\n   end\n  end\n end\n A.clearAutoSimUncertainty()\n A.addAutoSimUncertainty(0,S.phase>=3 and 3 or 20)\n if not S.seen.addsEnd then A.addAutoSimUncertainty(math.max(1,S.at(\"addsEnd\")-25),20)end\n A.addAutoSimUncertainty(math.max(2,S.at(\"gold\")+S.cfg.goldLength-30),15)\n S.lastPublish=now\nend\nfunction S.sync(k,t)\n if S.seen[k]then return end\n S.seen[k]=t;S.publish()\nend\nfor _,cid in ipairs({1482,2612,3210})do\n for _,e in pairs(TensorCore.getEntityGroupList(\"ContentID\",cid)or{})do\n  if e.alive then S.ids[cid]=e.id;S.up[cid]=e.targetable;break end\n end\nend\nS.publish()\ndata.ucobRPRAutoSim=S\nself.used=true\n",
							conditions = 
							{
								
								{
									"e66098d0-3c2a-282b-b6dd-84b172405ff5",
									true,
								},
								
								{
									"5f25367a-f4be-139a-8ce1-df450cf0ee7e",
									true,
								},
								
								{
									"f6e9f26d-eedb-202b-bd2b-28f6e7774fdb",
									true,
								},
							},
							name = "Configure forecast",
							uuid = "6b473f60-792a-6a17-9a27-136199e0bd34",
							version = 2.1,
						},
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
							uuid = "e66098d0-3c2a-282b-b6dd-84b172405ff5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "REAPER",
							name = "Reaper",
							uuid = "5f25367a-f4be-139a-8ce1-df450cf0ee7e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.ucobRPRAutoSim==nil",
							name = "Not configured",
							uuid = "f6e9f26d-eedb-202b-bd2b-28f6e7774fdb",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				eventType = 16,
				mechanicTime = 7,
				name = "[RPR UCOB] Configure forecast",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = -6,
				timerStartOffset = -70,
				uuid = "af48bf59-6faf-58d2-86be-31c02b1c246f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local A=TensorCore.API.TensorACR\nlocal C=_G.UCOB_RPR_Config\nif not C then C={lbWho=1,lbAt=150,goldLength=162.14,addsLength=100.222,cleave=true,buffForecast=false,buffGain=0};_G.UCOB_RPR_Config=C end\nlocal S={version=1,phase=1,seen={},ids={},up={},dynamic={},cfg={},dotStart={},ends={}}\nfor k,v in pairs(C)do S.cfg[k]=v end\nS.anchors={\n twinEnd={\"pull\",128.352},nael={\"twinEnd\",21.968},naelEnd={\"nael\",115.307},baha={\"naelEnd\",16.333},\n off1={\"baha\",23.449},on1={\"off1\",11.534},off2={\"on1\",29.533},on2={\"off2\",16.557},\n off3={\"on2\",34.636},on3={\"off3\",16.517},off4={\"on3\",35.834},on4={\"off4\",27.560},\n off5={\"on4\",33.712},on5={\"off5\",19.376},off6={\"on5\",37.626},adds={\"off6\",53.754},\n addsEnd={\"adds\",S.cfg.addsLength},gold={\"addsEnd\",62.323}}\nfunction S.at(k)\n if k==\"pull\"then return 0 end\n if S.seen[k]then return S.seen[k]end\n local a=S.anchors[k];return S.at(a[1])+a[2]\nend\nfunction S.union(xs)\n table.sort(xs,function(a,b)return a[1]<b[1]end)\n local out={}\n for _,v in ipairs(xs)do\n  local last=out[#out]\n  if last and v[1]<=last[2]then last[2]=math.max(last[2],v[2])else out[#out+1]={v[1],v[2]}end\n end\n return out\nend\nfunction S.alive(e)return e and e.alive and e.targetable and e.hp.current>1 end\nfunction S.ent(cid)return S.ids[cid]and TensorCore.mGetEntity(S.ids[cid])end\nfunction S.roleMelee()\n local R=AnyoneCore.Roster\n return R and R.current()and(R.mySlot()==\"M1\"or R.mySlot()==\"M2\")\nend\nfunction S.publish()\n local now=A.getAutoSimTime()\n local live=_G.UCOB_RPR_Config\n if live then S.cfg.lbWho=live.lbWho;S.cfg.lbAt=live.lbAt;S.cfg.goldLength=live.goldLength end\n local kill=math.min(1259,math.max(now+10,S.at(\"gold\")+S.cfg.goldLength))\n S.killAt=kill;A.setAutoSimKillTime(kill)\n local gaps={{S.at(\"twinEnd\"),S.at(\"nael\")},{S.at(\"naelEnd\"),S.at(\"baha\")},{S.at(\"off6\"),S.at(\"adds\")},{S.at(\"addsEnd\"),S.at(\"gold\")}}\n for i=1,5 do\n  local a,b=S.at(\"off\"..i),S.at(\"on\"..i)\n  if S.seen.adds then b=math.min(b,S.seen.adds)end\n  if b>a then gaps[#gaps+1]={a,b}end\n end\n local valid={};for _,g in ipairs(gaps)do if g[2]>g[1]then valid[#valid+1]=g end end;gaps=valid\n if S.naelGap then gaps[#gaps+1]={S.naelGap[1],S.naelGap[2]or now+6}end\n A.clearAutoSimPhases(\"FullDowntime\")\n for _,g in ipairs(S.union(gaps))do if g[2]>g[1]then A.addAutoSimPhase(\"FullDowntime\",g[1],g[2])end end\n local stun={}\n if S.cfg.lbWho==1 and S.roleMelee()and not S.lbObserved then\n  local t=S.at(\"gold\")+S.cfg.lbAt;stun[#stun+1]={t,t+8.2}\n end\n for _,g in pairs(S.dynamic)do if g[1]==\"Stun\"then stun[#stun+1]={g[2],g[3]}end end\n A.clearAutoSimPhases(\"Stun\")\n for _,g in ipairs(S.union(stun))do if g[2]>g[1]then A.addAutoSimPhase(\"Stun\",g[1],g[2])end end\n A.clearAutoSimPhases(\"MeleeDowntime\")\n for _,g in pairs(S.dynamic)do if g[1]==\"MeleeDowntime\"and g[3]>g[2]then A.addAutoSimPhase(\"MeleeDowntime\",g[2],g[3])end end\n -- Phoenix1436 is +100% real personal damage. Normalize planning weights\n -- so current actual buffs are not multiplied by another authored x2.\n A.clearAutoSimPhases(\"BossModifier\")\n local gold=S.at(\"gold\")\n if gold>0 then A.addAutoSimPhase(\"BossModifier\",0,gold,.5)end\n if S.phase==5 and S.phoenixSeen and not S.phoenixActive then\n  A.addAutoSimPhase(\"BossModifier\",gold,kill,.5)\n end\n A.clearAutoSimPhases(\"RaidBuff\")\n if S.cfg.buffForecast then\n  local prev=-120\n  for _,t in ipairs({5,S.at(\"nael\")+2,S.at(\"baha\")+2,S.at(\"on3\")+2,S.at(\"adds\")+2,S.at(\"gold\")+2,S.at(\"gold\")+122})do\n   t=math.max(t,prev+120);A.addAutoSimPhase(\"RaidBuff\",t,t+20,1+S.cfg.buffGain/100);prev=t\n  end\n end\n -- Slot 0 tracks the selected main boss; slot 1 tracks the other adds boss.\n -- Lifetimes survive temporary untargetability. Golden starts a fresh target-state lifetime.\n local start,finish=0,S.at(\"twinEnd\")\n if S.phase==2 then start,finish=S.at(\"nael\"),S.at(\"naelEnd\")\n elseif S.phase==3 then start,finish=S.at(\"baha\"),S.at(\"adds\")\n elseif S.phase==4 then start,finish=S.at(\"adds\"),S.at(\"addsEnd\")\n elseif S.phase==5 then start,finish=S.at(\"gold\"),kill end\n finish=math.max(finish,now+5)\n for slot=0,1 do\n  A.clearAutoSimPhases(\"DotAvailability\",slot);A.clearAutoSimPhases(\"TargetLifetime\",slot)\n  if slot==0 or S.phase==4 then\n   local id=slot==0 and S.mainID or S.otherID\n   local death=id and S.ends[id]\n   local ending=death or finish\n   if ending>start then\n    A.addAutoSimPhase(\"TargetLifetime\",start,ending,1,slot)\n    local cursor=start\n    for _,g in ipairs(S.union(gaps))do\n     local a,b=math.max(start,g[1]),math.min(ending-.5,g[2])\n     if b>a then if a>cursor then A.addAutoSimPhase(\"DotAvailability\",cursor,a,1,slot)end;cursor=math.max(cursor,b)end\n    end\n    if ending-.5>cursor then A.addAutoSimPhase(\"DotAvailability\",cursor,ending-.5,1,slot)end\n   end\n  end\n end\n A.clearAutoSimUncertainty()\n A.addAutoSimUncertainty(0,S.phase>=3 and 3 or 20)\n if not S.seen.addsEnd then A.addAutoSimUncertainty(math.max(1,S.at(\"addsEnd\")-25),20)end\n A.addAutoSimUncertainty(math.max(2,S.at(\"gold\")+S.cfg.goldLength-30),15)\n S.lastPublish=now\nend\nfunction S.sync(k,t)\n if S.seen[k]then return end\n S.seen[k]=t;S.publish()\nend\nfor _,cid in ipairs({1482,2612,3210})do\n for _,e in pairs(TensorCore.getEntityGroupList(\"ContentID\",cid)or{})do\n  if e.alive then S.ids[cid]=e.id;S.up[cid]=e.targetable;break end\n end\nend\nS.publish()\ndata.ucobRPRAutoSim=S\nself.used=true\n",
							conditions = 
							{
								
								{
									"531499da-f938-d76f-841a-8307e427132a",
									true,
								},
								
								{
									"7d529948-db78-efbc-91ef-9df213d3d337",
									true,
								},
								
								{
									"972414c0-103d-fa1e-afe9-6c8267b940f4",
									true,
								},
								
								{
									"5d0f08da-dfca-866c-8f65-9009bf632c39",
									true,
								},
							},
							name = "Configure on first Plummet",
							uuid = "34318905-645f-6190-9d2e-f6167b799b47",
							version = 2.1,
						},
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
							uuid = "531499da-f938-d76f-841a-8307e427132a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "REAPER",
							name = "Reaper",
							uuid = "7d529948-db78-efbc-91ef-9df213d3d337",
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
							uuid = "972414c0-103d-fa1e-afe9-6c8267b940f4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.ucobRPRAutoSim==nil",
							name = "Not configured",
							uuid = "5d0f08da-dfca-866c-8f65-9009bf632c39",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				eventType = 2,
				mechanicTime = 7,
				name = "[RPR UCOB] Configure on first Plummet",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 15,
				timerStartOffset = -7,
				uuid = "4e584ffc-6a64-35ad-97bc-ac77939b876f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobRPRAutoSim\nif not S then return end\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nif now<=0 then return end\nlocal cid,id,on=eventArgs.entityContentID,eventArgs.entityID,eventArgs.isTargetable\nif cid~=1482 and cid~=2612 and cid~=3210 then return end\nS.ids[cid]=id;S.up[cid]=on\nlocal e=TensorCore.mGetEntity(id)\nif cid==1482 and S.phase==1 and not on then S.sync(\"twinEnd\",now)\nelseif cid==2612 and on and S.phase<2 then S.phase=2;S.sync(\"nael\",now)\nelseif cid==2612 and S.phase==2 then\n if not on and e and e.hp.current<=1 then S.sync(\"naelEnd\",now)\n elseif not on then S.naelGap={now};S.publish()\n elseif S.naelGap then S.naelGap[2]=now;S.publish()end\nelseif cid==3210 and on and S.phase<3 then\n if not S.seen.naelEnd then S.seen.naelEnd=now-16.333 end\n S.phase=3;S.sync(\"baha\",now)\nelseif cid==3210 and S.phase==3 then\n local i=S.trio\n if not i then\n  local best=math.huge\n  for j=1,6 do local key=(on and \"on\"or\"off\")..j\n   if S.anchors[key]and not S.seen[key]then local d=math.abs(now-S.at(key));if d<best then best=d;i=j end end\n  end\n end\n if i then local key=(on and \"on\"or\"off\")..i\n  if S.anchors[key]then S.sync(key,now)end\n  if on then S.trio=nil end\n end\nelseif (cid==1482 or cid==2612)and on and S.phase==3 and now>S.at(\"baha\")+200 then\n S.phase=4;S.sync(\"adds\",now)\nelseif S.phase==4 then\n if cid==3210 and on then S.phase=5;S.sync(\"gold\",now)\n elseif not on then\n  if e and e.hp.current<=1 then S.ends[id]=now end\n  if not S.up[1482]and not S.up[2612]then S.sync(\"addsEnd\",now)else S.publish()end\n end\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"4633873a-1483-2154-a560-a7cde46e115b",
									true,
								},
								
								{
									"caef9027-eb54-6b8e-9c03-e1b976ce47b1",
									true,
								},
								
								{
									"37d3bee5-6519-4915-bab2-b499aa986e94",
									true,
								},
							},
							name = "Observe boss targetability",
							uuid = "77a74232-a9f4-7c76-badf-14f957106839",
							version = 2.1,
						},
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
							uuid = "4633873a-1483-2154-a560-a7cde46e115b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "REAPER",
							name = "Reaper",
							uuid = "caef9027-eb54-6b8e-9c03-e1b976ce47b1",
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
							uuid = "37d3bee5-6519-4915-bab2-b499aa986e94",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				eventType = 26,
				loop = true,
				mechanicTime = 7,
				name = "[RPR UCOB] Observe boss targetability",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -7,
				uuid = "4330bebd-9a27-c186-9780-7ff5633ea28e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobRPRAutoSim\nif not S then return end\nlocal p=TensorCore.mGetPlayer()\nif not p or not p.alive then return end\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nif now<=0 then return end\nlocal twin,nael,baha=S.ent(1482),S.ent(2612),S.ent(3210)\nlocal desired,other\nif S.phase==1 then desired=twin\nelseif S.phase==2 then desired=nael\nelseif S.phase==3 or S.phase==5 then desired=baha\nelseif S.phase==4 then\n if S.alive(twin)and S.alive(nael)then\n  local current=TensorCore.mGetTarget()\n  desired=current and(current.id==twin.id or current.id==nael.id)and current or twin\n  if math.abs(twin.hp.percent-nael.hp.percent)>=3 then desired=twin.hp.percent>nael.hp.percent and twin or nael end\n  other=desired.id==twin.id and nael or twin\n elseif S.alive(twin)then desired=twin elseif S.alive(nael)then desired=nael end\nend\nlocal changed=S.phase==5 and S.killAt~=nil and now>=S.killAt-5 and now<1254\nif S.phase==5 then\n local phoenix=TensorCore.hasBuff(Player.id,1436)\n if S.phoenixActive~=phoenix then S.phoenixSeen=true;S.phoenixActive=phoenix;changed=true end\nend\nif S.alive(desired)then\n local t=TensorCore.mGetTarget()\n if not t or t.id~=desired.id then Player:SetTarget(desired.id);changed=true end\n if S.mainID~=desired.id then\n  S.mainID=desired.id;TensorCore.API.TensorACR.setAutoSimTarget(0,desired.id);changed=true\n end\nend\nif S.otherID~=(other and other.id)then\n S.otherID=other and other.id\n if other then TensorCore.API.TensorACR.setAutoSimTarget(1,other.id)else TensorCore.API.TensorACR.clearAutoSimTarget(1)end\n changed=true\nend\n-- Never freeze HP-driven death at a predicted time while the target is alive.\nlocal key=S.phase==1 and\"twinEnd\"or(S.phase==2 and\"naelEnd\"or(S.phase==4 and\"addsEnd\"))\nif key and not S.seen[key]and S.at(key)<=now+2 then\n local a=S.anchors[key];a[2]=now+10-S.at(a[1]);changed=true\nend\n-- Current forced separation permits Harpe; it does not stop all damage.\nif S.alive(desired)then\n local distance=TensorCore.getDistance2d(p.pos,desired.pos)-desired.hitradius-3\n local old=S.dynamic.range\n if distance>0.5 then\n  local finish=now+distance/6+.25\n  if not old or math.abs(old[3]-finish)>=.5 then S.dynamic.range={\"MeleeDowntime\",old and old[2]or now,finish};changed=true end\n elseif old then S.dynamic.range=nil;changed=true end\nelseif S.dynamic.range then S.dynamic.range=nil;changed=true end\nif changed then S.publish();self.used=true end\n",
							conditions = 
							{
								
								{
									"ac544cce-bef9-326e-bee9-f7c160e8d097",
									true,
								},
								
								{
									"23a0dd04-1386-ed99-a784-7a0e3c3bb5ee",
									true,
								},
								
								{
									"47f98299-bd16-8b9b-b288-af90b1497780",
									true,
								},
							},
							name = "Target and correct late phase estimates",
							uuid = "276a8c16-876a-2284-b453-6366cb93de48",
							version = 2.1,
						},
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
							uuid = "ac544cce-bef9-326e-bee9-f7c160e8d097",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "REAPER",
							name = "Reaper",
							uuid = "23a0dd04-1386-ed99-a784-7a0e3c3bb5ee",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.ucobRPRAutoSim~=nil",
							name = "Configured",
							uuid = "47f98299-bd16-8b9b-b288-af90b1497780",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				loop = true,
				mechanicTime = 7,
				name = "[RPR UCOB] Target and correct late phase estimates",
				throttleTime = 300,
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -7,
				uuid = "5c246669-8af0-68af-bf4f-0cd070433242",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobRPRAutoSim\nif not S then return end\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal spell=eventArgs.spellID\nif spell>=9954 and spell<=9959 and S.phase==3 then\n local i=spell-9953;S.trio=i;S.anchors[\"off\"..i]={\"pull\",now+2};S.publish()\nelseif spell==9961 and S.phase==4 then\n if not S.seen.addsEnd then S.seen.addsEnd=now-17.3 end\n S.anchors.gold={\"pull\",now+45.0};S.publish()\nelseif spell==9970 and S.phase==4 then S.anchors.gold={\"pull\",now+19.9};S.publish()end\nself.used=true",
							conditions = 
							{
								
								{
									"87e1299f-c727-198e-b62c-4c4f3d77e2c1",
									true,
								},
								
								{
									"df82a319-98d8-390c-a4fb-9ede44b3be0f",
									true,
								},
								
								{
									"ce2487d8-7a41-2e66-bb8f-ab65ef812c50",
									true,
								},
								
								{
									"12e4be74-8859-5606-ac59-fa83a0ac2c0a",
									true,
								},
							},
							name = "Anchor trio and Golden transition casts",
							uuid = "94b40505-495a-71cd-abe4-52ae6ac8669a",
							version = 2.1,
						},
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
							uuid = "87e1299f-c727-198e-b62c-4c4f3d77e2c1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "REAPER",
							name = "Reaper",
							uuid = "df82a319-98d8-390c-a4fb-9ede44b3be0f",
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
							uuid = "ce2487d8-7a41-2e66-bb8f-ab65ef812c50",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.ucobRPRAutoSim~=nil",
							name = "Configured",
							uuid = "12e4be74-8859-5606-ac59-fa83a0ac2c0a",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				eventType = 2,
				loop = true,
				mechanicTime = 7,
				name = "[RPR UCOB] Anchor trio and Golden transition casts",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -7,
				uuid = "f7376d92-8ceb-13ad-8853-09fbe9aebab7",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local C=_G.UCOB_RPR_Config\nif not C then C={lbWho=1,lbAt=150,goldLength=162.14,addsLength=100.222,cleave=true,buffForecast=false,buffGain=0};_G.UCOB_RPR_Config=C end\nlocal visible=GUI:Begin('UCOB Reaper AutoSim',true)\nif visible then\n GUI:Text('Built-in targeting. No automatic Ingress/Egress. Session settings.')\n C.goldLength=GUI:SliderFloat('Expected Golden duration (s)',C.goldLength,100,215,'%.1f',1)\n if GUI:IsItemHovered()then GUI:SetTooltip('Initial estimate162.14s from49 EU clears. Corrected by actual phase starts; adjustable for your group. All schedule times use the real combat clock.')end\n if GUI:TreeNode('P4 - Adds')then\n  GUI:Text('Targets higher-HP boss when separated by at least3 percentage points.')\n  GUI:Text('Tracks both Death Design targets. ACR decides profitable cleave from actual geometry.')\n  C.addsLength=GUI:SliderFloat('Expected adds duration (s)',C.addsLength,60,125,'%.1f',1)\n  if GUI:IsItemHovered()then GUI:SetTooltip('Forecast only; both actual boss departures correct the transition. New pulls use this estimate.')end\n  GUI:TreePop()\n end\n if GUI:TreeNode('P5 - Golden Bahamut')then\n  C.lbWho=GUI:Combo('Who LBs',C.lbWho,{'Me','Other melee'})\n  C.lbAt=GUI:SliderFloat('My LB: seconds after Golden appears',C.lbAt,5,200,'%.1f',1)\n  if GUI:IsItemHovered()then GUI:SetTooltip('Initial150s is an adjustable assignment assumption, not a measured optimal LB timing. Me requires rosterM1/M2. Forecast8.2s lock; actual personal LB corrects it and cancellation clears it. Does not force a cast.')end\n  GUI:TreePop()\n end\n C.buffForecast=GUI:Checkbox('Forecast future party buffs',C.buffForecast)\n C.buffGain=GUI:SliderFloat('Combined future buff gain (%)',C.buffGain,0,40,'%.2f',1)\n if GUI:IsItemHovered()then GUI:SetTooltip('Optional composition-specific estimate; initially disabled/0%. Active buffs are handled by ACR. No UWU priority weights copied.')end\n GUI:Text('Phoenix phase priority: twice pre-Golden damage value; blessing loss removes the bonus.')\n if GUI:IsItemHovered()then GUI:SetTooltip('Normalized planning weight0.5 beforeGolden and1 during blessedGolden. Real Phoenix damage buff is not authored as another x2. UnblessedGolden returns to0.5.')end\n GUI:Text('No Enshroud, Arcane Circle or Soulsow requests: unavailable at level70.')\nend\nGUI:End()\n",
							conditions = 
							{
								
								{
									"bbb98727-21b1-208b-8cb6-5df825714261",
									true,
								},
								
								{
									"8cedb8d9-99b2-4b1d-9dc5-0738de0a2721",
									true,
								},
							},
							name = "AutoSim options",
							uuid = "84822a48-6a92-1f81-95a0-95f6811992cf",
							version = 2.1,
						},
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
							uuid = "bbb98727-21b1-208b-8cb6-5df825714261",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "REAPER",
							name = "Reaper",
							uuid = "8cedb8d9-99b2-4b1d-9dc5-0738de0a2721",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				eventType = 13,
				loop = true,
				mechanicTime = 7,
				name = "[RPR UCOB] AutoSim options",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -80,
				uuid = "6fbaf60e-a16f-b3f6-9c34-29f239faf38e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobRPRAutoSim=nil\nself.used=true",
							conditions = 
							{
								
								{
									"d65efec4-3235-2060-bf53-8f7c8a75764f",
									true,
								},
								
								{
									"79e61834-c727-e5d3-9f12-8aae842760bb",
									true,
								},
							},
							name = "Reset forecast OnWipe",
							uuid = "883db0a5-6ef1-9ab6-9f05-e181293487ea",
							version = 2.1,
						},
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
							uuid = "d65efec4-3235-2060-bf53-8f7c8a75764f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "REAPER",
							name = "Reaper",
							uuid = "79e61834-c727-e5d3-9f12-8aae842760bb",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				eventType = 9,
				loop = true,
				mechanicTime = 7,
				name = "[RPR UCOB] Reset forecast OnWipe",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -80,
				uuid = "b1a05467-02f9-c2c8-8b29-99c9555fd569",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobRPRAutoSim=nil\nself.used=true",
							conditions = 
							{
								
								{
									"3b359922-6d23-f0a3-ad0e-e238d7be507a",
									true,
								},
								
								{
									"626c72c6-c58c-eb23-9e97-3a1f4c01eb46",
									true,
								},
							},
							name = "Reset forecast OnMapChange",
							uuid = "6a1e854e-b2e2-6843-9543-42306d0573ea",
							version = 2.1,
						},
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
							uuid = "3b359922-6d23-f0a3-ad0e-e238d7be507a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "REAPER",
							name = "Reaper",
							uuid = "626c72c6-c58c-eb23-9e97-3a1f4c01eb46",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				eventType = 11,
				loop = true,
				mechanicTime = 7,
				name = "[RPR UCOB] Reset forecast OnMapChange",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -80,
				uuid = "d7a0f02c-b801-2b3b-9d98-60f110a6c411",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobRPRAutoSim=nil\nself.used=true",
							conditions = 
							{
								
								{
									"4121e365-2aef-c8ec-9f04-7a6b826430da",
									true,
								},
								
								{
									"4f22dd03-a01d-cbe3-a398-e0e3789fa9d2",
									true,
								},
							},
							name = "Reset forecast OnCountdownCancel",
							uuid = "31d15915-273e-b141-b7da-fa42ed956a1e",
							version = 2.1,
						},
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
							uuid = "4121e365-2aef-c8ec-9f04-7a6b826430da",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "REAPER",
							name = "Reaper",
							uuid = "4f22dd03-a01d-cbe3-a398-e0e3789fa9d2",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				eventType = 17,
				loop = true,
				mechanicTime = 7,
				name = "[RPR UCOB] Reset forecast OnCountdownCancel",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -80,
				uuid = "146f49dd-d8e9-7d1b-8615-671b9bd83cce",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobRPRAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal duration=eventArgs.buffDuration\nif type(duration)~=\"number\"or duration<=0 then duration=1 end\nS.dynamic.scriptedStun={\"Stun\",now,now+duration};S.publish();self.used=true",
							conditions = 
							{
								
								{
									"866f1eb5-2e4d-03f4-80ee-7bf69ee7e21f",
									true,
								},
								
								{
									"94e2b8b7-1085-8cd3-a6bf-aeb89e09e0ce",
									true,
								},
								
								{
									"35498752-3a20-4152-afd1-0e98ddaf6186",
									true,
								},
								
								{
									"13921041-d99b-a102-96fe-f3f990b1e367",
									true,
								},
							},
							name = "Personal Down for the Count",
							uuid = "e658cac5-4980-4a06-ac3f-d6870e8cd8f1",
							version = 2.1,
						},
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
							uuid = "866f1eb5-2e4d-03f4-80ee-7bf69ee7e21f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "REAPER",
							name = "Reaper",
							uuid = "94e2b8b7-1085-8cd3-a6bf-aeb89e09e0ce",
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
							uuid = "35498752-3a20-4152-afd1-0e98ddaf6186",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityID==Player.id and data.ucobRPRAutoSim~=nil",
							dequeueIfLuaFalse = true,
							name = "Personal status",
							uuid = "13921041-d99b-a102-96fe-f3f990b1e367",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				eventType = 8,
				loop = true,
				mechanicTime = 7,
				name = "[RPR UCOB] Personal Down for the Count",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -7,
				uuid = "575a85c6-1fee-db7a-ba02-abaa0cc37d0c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobRPRAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nif not TensorCore.hasBuff(Player.id,783)then S.dynamic.scriptedStun=nil;S.publish();self.used=true\nelseif S.dynamic.scriptedStun[3]<=now+.5 then S.dynamic.scriptedStun[3]=now+1;S.publish()end",
							conditions = 
							{
								
								{
									"24ca13cc-c876-8a1d-823d-2cf24bd7eb48",
									true,
								},
								
								{
									"40cde1e0-1716-a5e7-963f-fda81a17e946",
									true,
								},
								
								{
									"63f885a7-0f17-5cd8-aa49-5c59c9db065d",
									true,
								},
							},
							name = "Maintain personal scripted stun",
							uuid = "3789c13e-2d0f-df30-a614-ee943bf7fc7c",
							version = 2.1,
						},
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
							uuid = "24ca13cc-c876-8a1d-823d-2cf24bd7eb48",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "REAPER",
							name = "Reaper",
							uuid = "40cde1e0-1716-a5e7-963f-fda81a17e946",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.ucobRPRAutoSim\nreturn S~=nil and S.dynamic.scriptedStun~=nil",
							name = "Stun active",
							uuid = "63f885a7-0f17-5cd8-aa49-5c59c9db065d",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				loop = true,
				mechanicTime = 7,
				name = "[RPR UCOB] Maintain personal scripted stun",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -7,
				uuid = "73091086-7bfc-8b7d-a95c-0583b5e3e744",
				version = 2,
			},
		},
	},
	[190] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "RPR AutoSim",
				uuid = "733f892b-c6a8-1b47-9c03-26c49c9e005f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "RPR AutoSim",
				name = "P5 Golden",
				uuid = "a62f5e54-cc09-73ea-af31-d53b7c44c834",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobRPRAutoSim\nS.phoenixSeen=true;S.phoenixActive=true\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"068b3377-24a3-2da6-ba84-e1baba32ab1b",
									true,
								},
								
								{
									"e18e93aa-13f3-6ef2-ae2a-35585bf855c4",
									true,
								},
								
								{
									"8fa1a665-fe12-6ba0-a059-7de1da156a00",
									true,
								},
								
								{
									"a4a0618a-c615-d775-8aea-95d015a0257e",
									true,
								},
							},
							name = "Correct Phoenix phase priority",
							uuid = "1968443b-56cc-d7b3-8359-6f8eb630d86a",
							version = 2.1,
						},
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
							uuid = "068b3377-24a3-2da6-ba84-e1baba32ab1b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "REAPER",
							name = "Reaper",
							uuid = "e18e93aa-13f3-6ef2-ae2a-35585bf855c4",
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
							uuid = "8fa1a665-fe12-6ba0-a059-7de1da156a00",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityID==Player.id and data.ucobRPRAutoSim~=nil",
							dequeueIfLuaFalse = true,
							name = "Personal blessing",
							uuid = "a4a0618a-c615-d775-8aea-95d015a0257e",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim/P5 Golden",
				eventType = 8,
				loop = true,
				mechanicTime = 1200,
				name = "[RPR UCOB] Observe personal Phoenix Blessing",
				timeRange = true,
				timelineIndex = 190,
				timerEndOffset = 300,
				timerStartOffset = -30,
				uuid = "af6927a0-1113-c368-b30a-5de69c2b028a",
				version = 2,
			},
		},
	},
	[194] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "RPR AutoSim",
				uuid = "45571240-ce70-45fd-8fc6-ea398f935663",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobRPRAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nS.lbObserved=true;S.lbStarted=now;S.lbCompleted=nil;S.lbCancelled=nil\nS.dynamic.lb={\"Stun\",now,now+8.2};S.publish();self.used=true",
							conditions = 
							{
								
								{
									"8106eb3b-73b4-6bc1-8591-ce315b7f7df1",
									true,
								},
								
								{
									"27b40d26-6ebb-0904-b4fd-c10a954c2bed",
									true,
								},
								
								{
									"fd535048-85bb-26a3-8a05-105bf5bb10b0",
									true,
								},
								
								{
									"1eb6c51c-edbb-9677-830a-6f9b9dc9a139",
									true,
								},
							},
							name = "Personal melee LB lbstart",
							uuid = "a27ab187-ae99-5ee4-a21b-d43233c39294",
							version = 2.1,
						},
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
							uuid = "8106eb3b-73b4-6bc1-8591-ce315b7f7df1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "REAPER",
							name = "Reaper",
							uuid = "27b40d26-6ebb-0904-b4fd-c10a954c2bed",
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
							name = "The End",
							spellIDList = 
							{
								24858,
							},
							uuid = "fd535048-85bb-26a3-8a05-105bf5bb10b0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityID==Player.id and data.ucobRPRAutoSim~=nil",
							dequeueIfLuaFalse = true,
							name = "Personal LB",
							uuid = "1eb6c51c-edbb-9677-830a-6f9b9dc9a139",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				eventType = 3,
				loop = true,
				mechanicTime = 1251.1,
				name = "[RPR UCOB] Personal melee LB lbstart",
				timeRange = true,
				timelineIndex = 194,
				timerEndOffset = 220,
				timerStartOffset = -12,
				uuid = "7319fc18-c320-14d6-bbd7-d10be9a16665",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobRPRAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nS.lbObserved=true;S.lbCompleted=true\nS.dynamic.lb={\"Stun\",S.lbStarted or now-4.5,now+3.7};S.publish();self.used=true",
							conditions = 
							{
								
								{
									"73d9b2de-da6e-43ca-9528-05f74ae2f91b",
									true,
								},
								
								{
									"5998315a-a18d-c751-b1d2-446df7aaa99e",
									true,
								},
								
								{
									"4db178a5-0eb2-d0b2-9c9f-2807e8461362",
									true,
								},
								
								{
									"27762b8b-6e4f-6aa2-8ab0-ce19f46e0b3a",
									true,
								},
							},
							name = "Personal melee LB lbfinish",
							uuid = "b653ac10-9147-f06e-a043-6fc4658623e5",
							version = 2.1,
						},
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
							uuid = "73d9b2de-da6e-43ca-9528-05f74ae2f91b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "REAPER",
							name = "Reaper",
							uuid = "5998315a-a18d-c751-b1d2-446df7aaa99e",
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
							name = "The End",
							spellIDList = 
							{
								24858,
							},
							uuid = "4db178a5-0eb2-d0b2-9c9f-2807e8461362",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityID==Player.id and data.ucobRPRAutoSim~=nil",
							dequeueIfLuaFalse = true,
							name = "Personal LB",
							uuid = "27762b8b-6e4f-6aa2-8ab0-ce19f46e0b3a",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				eventType = 2,
				loop = true,
				mechanicTime = 1251.1,
				name = "[RPR UCOB] Personal melee LB lbfinish",
				timeRange = true,
				timelineIndex = 194,
				timerEndOffset = 220,
				timerStartOffset = -12,
				uuid = "68d35203-d30e-4a71-b484-e8876f20060f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobRPRAutoSim\nlocal p=TensorCore.mGetPlayer()\nif not p then return end\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal elapsed=now-S.lbStarted;local c=p.castinginfo\nif c.castingid==24858 or c.channelingid==24858 then return end\nif elapsed<.5 or(elapsed>=4.25 and elapsed<5.25 and p.alive)then return end\nif elapsed>=4.25 and p.alive and c.lastcastid==24858 then\n S.lbCompleted=true;S.dynamic.lb={\"Stun\",S.lbStarted,S.lbStarted+8.2}\nelse S.lbCancelled=true;S.dynamic.lb=nil end\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"f0b69393-1c68-6e86-b84c-18527c3effd5",
									true,
								},
								
								{
									"8a4b5cd8-ce08-e23a-bcd4-0258a1193d98",
									true,
								},
								
								{
									"eb83a096-1c85-ec21-856f-4c0654f44280",
									true,
								},
							},
							name = "Clear cancelled personal LB",
							uuid = "ca282ced-cc90-dd19-82c0-a5f4f95c1c2e",
							version = 2.1,
						},
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
							uuid = "f0b69393-1c68-6e86-b84c-18527c3effd5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "REAPER",
							name = "Reaper",
							uuid = "8a4b5cd8-ce08-e23a-bcd4-0258a1193d98",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.ucobRPRAutoSim\nreturn S~=nil and S.lbStarted~=nil and not S.lbCompleted and not S.lbCancelled",
							name = "LB pending",
							uuid = "eb83a096-1c85-ec21-856f-4c0654f44280",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				loop = true,
				mechanicTime = 1251.1,
				name = "[RPR UCOB] Clear cancelled personal LB",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 194,
				timerEndOffset = 220,
				timerStartOffset = -12,
				uuid = "b6ae79ce-0278-4fb2-afcb-76c75e4aff9f",
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
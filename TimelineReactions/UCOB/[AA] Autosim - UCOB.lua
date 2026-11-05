local tbl = 
{
	[2] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "194f2a68-ae28-d521-b7d9-c04539d0df84",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Encounter events",
				uuid = "f9384619-e5b9-4344-8939-1bb5baed8558",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobAutoSim\nif not S then return end\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal spell=eventArgs.spellID\nif spell>=9954 and spell<=9959 and S.phase==3 then\n local i=spell-9953;S.trio=i;S.anchors[\"off\"..i]={\"pull\",now+2};S.publish()\nelseif spell==9961 and S.phase==4 then\n S.teraflareSeen=true;S.teraflareAt=now\n if not S.seen.addsEnd then S.seen.addsEnd=now-17.3 end\n S.anchors.gold={\"pull\",now+45.0};S.publish()\nelseif spell==9970 and S.phase==4 then S.anchors.gold={\"pull\",now+19.9};S.publish()end\nself.used=true",
							conditions = 
							{
								
								{
									"abda427f-b6f0-bea3-861b-98afc2b0b234",
									true,
								},
								
								{
									"a44d290e-e9f0-9cf4-a3af-94c85df5a7eb",
									true,
								},
								
								{
									"36884b82-d0ea-f10d-84a8-ec198d00970b",
									true,
								},
							},
							name = "Anchor trio and Golden transition casts",
							uuid = "2568494a-8aa2-61d1-bb77-ad00c0c9f05d",
							version = 2.1,
						},
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
							uuid = "abda427f-b6f0-bea3-861b-98afc2b0b234",
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
							uuid = "a44d290e-e9f0-9cf4-a3af-94c85df5a7eb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.ucobAutoSim~=nil",
							name = "Configured",
							uuid = "36884b82-d0ea-f10d-84a8-ec198d00970b",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Encounter events",
				eventType = 2,
				loop = true,
				mechanicTime = 7,
				name = "[UCOB] Anchor trio and Golden transition casts",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -7,
				uuid = "7fa14d29-ca08-be65-9fb8-42fbcb208c85",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobAutoSim\nif not S then return end\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nif now<=0 then return end\nlocal cid,id,on=eventArgs.entityContentID,eventArgs.entityID,eventArgs.isTargetable\nif cid~=1482 and cid~=2612 and cid~=3210 then return end\nS.ids[cid]=id;S.up[cid]=on\nlocal e=TensorCore.mGetEntity(id)\nif cid==1482 and S.phase==1 and not on then S.sync(\"twinEnd\",now)\nelseif cid==2612 and on and S.phase<2 then S.phase=2;S.sync(\"nael\",now)\nelseif cid==2612 and S.phase==2 then\n if not on and e and e.hp.current<=1 then S.sync(\"naelEnd\",now)\n elseif not on then S.naelGap={now};S.publish()\n elseif S.naelGap then S.naelGap[2]=now;S.publish()end\nelseif cid==3210 and on and S.phase<3 then\n if not S.seen.naelEnd then S.seen.naelEnd=now-16.333 end\n S.phase=3;S.sync(\"baha\",now)\nelseif cid==3210 and S.phase==3 then\n local i=S.trio\n if not i then\n  local best=math.huge\n  for j=1,6 do local key=(on and \"on\"or\"off\")..j\n   if S.anchors[key]and not S.seen[key]then local d=math.abs(now-S.at(key));if d<best then best=d;i=j end end\n  end\n end\n if i then local key=(on and \"on\"or\"off\")..i\n  if S.anchors[key]then S.sync(key,now)end\n  if on then S.trio=nil end\n end\nelseif (cid==1482 or cid==2612)and on and S.phase==3 and now>S.at(\"baha\")+200 then\n S.phase=4;S.sync(\"adds\",now)\nelseif S.phase==4 then\n if cid==3210 and on then S.beginGolden(now);S.phase=5;S.sync(\"gold\",now)\n elseif not on then\n  if e and e.hp.current<=1 then S.ends[id]=now end\n  if not S.up[1482]and not S.up[2612]then S.sync(\"addsEnd\",now)else S.publish()end\n end\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"ae0c4e55-9d7f-8616-a6d2-538ed2e7e06e",
									true,
								},
								
								{
									"7491888b-2a0d-dbd8-98cf-93accb18be8b",
									true,
								},
							},
							name = "Observe boss targetability",
							uuid = "cafe405d-da84-8023-b970-328c9164eddf",
							version = 2.1,
						},
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
							uuid = "ae0c4e55-9d7f-8616-a6d2-538ed2e7e06e",
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
							uuid = "7491888b-2a0d-dbd8-98cf-93accb18be8b",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Encounter events",
				eventType = 26,
				loop = true,
				mechanicTime = 7,
				name = "[UCOB] Observe boss targetability",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -7,
				uuid = "c2cfa6d3-6463-9049-b46e-f031b05846aa",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nif not TensorCore.hasBuff(Player.id,783)then S.dynamic.scriptedStun=nil;S.publish();self.used=true\nelseif S.dynamic.scriptedStun[3]<=now+.5 then S.dynamic.scriptedStun[3]=now+1;S.publish()end",
							conditions = 
							{
								
								{
									"3c8a1ae0-69fb-a2a7-aa9b-e7efccc76c26",
									true,
								},
								
								{
									"a7ada82d-12b9-9724-92e2-6f510ea3d8d3",
									true,
								},
							},
							name = "Maintain personal scripted stun",
							uuid = "dff58cd7-3411-59ab-a5e6-3ea015a48aca",
							version = 2.1,
						},
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
							uuid = "3c8a1ae0-69fb-a2a7-aa9b-e7efccc76c26",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.ucobAutoSim\nreturn S~=nil and S.dynamic.scriptedStun~=nil",
							name = "Stun active",
							uuid = "a7ada82d-12b9-9724-92e2-6f510ea3d8d3",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Encounter events",
				loop = true,
				mechanicTime = 7,
				name = "[UCOB] Maintain personal scripted stun",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -7,
				uuid = "e268461a-390f-0e06-bf62-0b8bb7580f4d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal duration=eventArgs.buffDuration\nif type(duration)~=\"number\"or duration<=0 then duration=1 end\nS.dynamic.scriptedStun={\"Stun\",now,now+duration};S.publish();self.used=true",
							conditions = 
							{
								
								{
									"fa076a7a-4178-eb6a-a288-59f68e49d4ae",
									true,
								},
								
								{
									"7eca1334-ab91-6bb2-bf73-1dd7a55ed93e",
									true,
								},
								
								{
									"b99f6c9d-c682-dd39-8436-002d8c3b57f1",
									true,
								},
							},
							name = "Personal Down for the Count",
							uuid = "32811d22-e52c-3e50-bbdb-b39ce3b620cc",
							version = 2.1,
						},
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
							uuid = "fa076a7a-4178-eb6a-a288-59f68e49d4ae",
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
							uuid = "7eca1334-ab91-6bb2-bf73-1dd7a55ed93e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityID==Player.id and data.ucobAutoSim~=nil",
							dequeueIfLuaFalse = true,
							name = "Personal status",
							uuid = "b99f6c9d-c682-dd39-8436-002d8c3b57f1",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Encounter events",
				eventType = 8,
				loop = true,
				mechanicTime = 7,
				name = "[UCOB] Personal Down for the Count",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -7,
				uuid = "768968a8-82b6-fe83-8e30-ce36e7c14680",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Setup and cleanup",
				uuid = "3e3dd3a7-a6ff-ae4e-8377-cf1713937387",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobAutoSim=nil\nself.used=true",
							conditions = 
							{
								
								{
									"1e3e0797-5a14-117a-a3c0-d0ff3d08e668",
									true,
								},
							},
							name = "Reset forecast OnWipe",
							uuid = "66766bdf-6153-011f-9123-eed7882609a7",
							version = 2.1,
						},
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
							uuid = "1e3e0797-5a14-117a-a3c0-d0ff3d08e668",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Setup and cleanup",
				eventType = 9,
				loop = true,
				mechanicTime = 7,
				name = "[UCOB] Reset forecast OnWipe",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -80,
				uuid = "41441f12-b732-e34d-b5dd-051974233f81",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobAutoSim=nil\nself.used=true",
							conditions = 
							{
								
								{
									"964af883-f5a3-c0a7-8834-f3d386ba6adf",
									true,
								},
							},
							name = "Reset forecast OnMapChange",
							uuid = "de7104cb-bc7c-6bf6-9049-f11536a20840",
							version = 2.1,
						},
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
							uuid = "964af883-f5a3-c0a7-8834-f3d386ba6adf",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Setup and cleanup",
				eventType = 11,
				loop = true,
				mechanicTime = 7,
				name = "[UCOB] Reset forecast OnMapChange",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -80,
				uuid = "668e3465-27c4-4848-a146-a2160e9f124e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobAutoSim=nil\nself.used=true",
							conditions = 
							{
								
								{
									"e91ab999-f853-1ac0-8bf1-fbdfd956db96",
									true,
								},
							},
							name = "Reset forecast OnCountdownCancel",
							uuid = "b20783f0-1995-6dd7-b828-28526365d384",
							version = 2.1,
						},
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
							uuid = "e91ab999-f853-1ac0-8bf1-fbdfd956db96",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Setup and cleanup",
				eventType = 17,
				loop = true,
				mechanicTime = 7,
				name = "[UCOB] Reset forecast OnCountdownCancel",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -80,
				uuid = "2f8f02d1-af8c-3bf8-91cb-084019ccb1b2",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "-- Shared UCOB encounters; role-specific forecast, using the real combat clock.\nlocal A=TensorCore.API.TensorACR\nlocal C=_G.UCOB_BLM_Config\nif not C then C={goldLength=162.14,addsLength=100.222,buffForecast=false,buffGain=17,twisterLead=1.0,twisterAfter=1.0,exaDuration=8,assignmentMove=2,returnMove=1.5};_G.UCOB_BLM_Config=C end\nif C.quoteMove==nil then C.quoteMove=2 end\n-- Burst weight update: preserve forecast enablement and other options.\nif not C.burstWeight20261029 then C.buffGain=17;C.burstWeight20261029=true end\n-- Per-phase base estimates; copied to this pull before publication.\nif C.twinLength==nil then C.twinLength=132 end\nif C.naelLength==nil then C.naelLength=129 end\nfor key,value in pairs({twisterLead=1,twisterAfter=1,exaDuration=8,assignmentMove=2,returnMove=1.5,quoteMove=2}) do\n if C[key]==nil then C[key]=value end\nend\nlocal S={version=2,planningStage=1,phase=1,seen={},ids={},up={},dynamic={},cfg={},dotStart={},ends={}}\nif C.phoenixPriority==nil then C.phoenixPriority=false end\nfor k,v in pairs(C)do S.cfg[k]=v end\nS.anchors={\n twinEnd={\"pull\",C.twinLength},nael={\"twinEnd\",21.968},naelEnd={\"nael\",C.naelLength},baha={\"naelEnd\",16.333},\n off1={\"baha\",23.449},on1={\"off1\",11.534},off2={\"on1\",29.533},on2={\"off2\",16.557},\n off3={\"on2\",34.636},on3={\"off3\",16.517},off4={\"on3\",35.834},on4={\"off4\",27.560},\n off5={\"on4\",33.712},on5={\"off5\",19.376},off6={\"on5\",37.626},adds={\"off6\",53.754},\n addsEnd={\"adds\",S.cfg.addsLength},gold={\"addsEnd\",62.323}}\n-- Slower-group estimates are copied at pull setup; actual event anchors still win.\nlocal G=_G.UCOB_AutoSimTiming or {}\nlocal old=data.ucobAutoSim\nlocal T=old and old.groupTiming\nif not T then\n T={enabled=G.enabled==true}\n for _,key in ipairs({\"twinExtra\",\"naelExtra\",\"addsExtra\",\"goldExtra\"}) do T[key]=math.max(0,math.min(90,tonumber(G[key]) or 0)) end\nend\nS.groupTiming=T\nif T.enabled then\n S.anchors.twinEnd[2]=S.anchors.twinEnd[2]+T.twinExtra\n S.anchors.naelEnd[2]=S.anchors.naelEnd[2]+T.naelExtra\n S.anchors.addsEnd[2]=S.anchors.addsEnd[2]+T.addsExtra\n S.cfg.goldLength=S.cfg.goldLength+T.goldExtra\nend\nfunction S.at(k)\n if k==\"pull\"then return 0 end\n if S.seen[k]then return S.seen[k]end\n local a=S.anchors[k];return S.at(a[1])+a[2]\nend\nfunction S.union(xs)\n table.sort(xs,function(a,b)return a[1]<b[1]end)\n local out={}\n for _,v in ipairs(xs)do\n  local last=out[#out]\n  if last and v[1]<=last[2]then last[2]=math.max(last[2],v[2])else out[#out+1]={v[1],v[2]}end\n end\n return out\nend\nfunction S.alive(e)return e and e.alive and e.targetable and e.hp.current>1 end\nfunction S.ent(cid)return S.ids[cid]and TensorCore.mGetEntity(S.ids[cid])end\n\nS.movePred={{\"firstTwister\",\"pull\",12.3,\"twister\"},{\"secondTwister\",\"pull\",69.5,\"twister\"},{\"thirdTwister\",\"pull\",121.7,\"twister\"},{\"addsTwister1\",\"adds\",24.34,\"twister\"},{\"addsTwister2\",\"adds\",41.487,\"twister\"},{\"addsTwister3\",\"adds\",87.071,\"twister\"},{\"addsTwister4\",\"adds\",104.096,\"twister\"},{\"exa1\",\"gold\",24.549,\"exa\"},{\"exa2\",\"gold\",73.276,\"exa\"},{\"exa3\",\"gold\",123.05,\"exa\"},{\"exa4\",\"gold\",174.689,\"exa\"}}\nS.moveActual={};S.personalMoves={}\nfunction S.movementWindows()\n local out={}\n for _,p in ipairs(S.movePred)do\n  if S.planningStage~=2 or p[2]==\"gold\"then\n  local center=S.moveActual[p[1]]or S.at(p[2])+p[3]\n  local a,b\n  if p[4]==\"twister\"then a,b=center-S.cfg.twisterLead,center+S.cfg.twisterAfter\n  else a,b=center-.5,center+S.cfg.exaDuration end\n  if p[2]==\"adds\"then b=math.min(b,S.at(\"addsEnd\"))end\n  if p[2]~=\"pull\"or not S.seen.twinEnd or center<S.seen.twinEnd then\n   if b>a then out[#out+1]={a,b}end\n  end\n end\n end\n for _,v in pairs(S.personalMoves)do if v[2]>v[1]then out[#out+1]={v[1],v[2]}end end\n return S.union(out)\nend\nfunction S.correctMovement(kind,finish)\n local best,delta\n for _,p in ipairs(S.movePred)do\n  if p[4]==kind and not S.moveActual[p[1]]and ((p[2]==\"pull\"and S.phase==1)or(p[2]==\"adds\"and S.phase==4)or(p[2]==\"gold\"and S.phase==5))then\n   local d=math.abs(finish-S.at(p[2])-p[3]);if not delta or d<delta then best,delta=p[1],d end\n  end\n end\n if best and delta<8 then S.moveActual[best]=finish\n else S.personalMoves[kind..\"Extra\"]={finish-(kind==\"twister\"and S.cfg.twisterLead or .5),finish+(kind==\"twister\"and S.cfg.twisterAfter or S.cfg.exaDuration)}end\n S.publish()\nend\n\nfunction S.quoteSequence(text)\nlocal t=text:gsub(\"%s+\",\" \")\nlocal seq=nil\nif t:find(\"O hallowed moon, shine you the iron path\",1,true) then seq={9916,9915}\nelseif t:find(\"O hallowed moon, take fire and scorch my foes\",1,true) then seq={9916,9917}\nelseif t:find(\"Take fire, O hallowed moon\",1,true) then seq={9917,9916}\nelseif t:find(\"Blazing path, lead me to iron rule\",1,true) then seq={9917,9915}\nelseif t:find(\"From on high I descend, the hallowed moon to call\",1,true) then seq={9918,9916}\nelseif t:find(\"From on high I descend, the iron path to walk\",1,true) then seq={9918,9915}\nelseif t:find(\"From on high I descend, the iron path to call\",1,true) then seq={9918,9915}\nelseif t:find(\"From on high I descend, the moon and stars to bring\",1,true) then seq={9918,9916,9920}\nelseif t:find(\"From hallowed moon I descend, a rain of stars to bring\",1,true) then seq={9916,9918,9920}\nelseif t:find(\"From hallowed moon I descend, upon burning earth to tread\",1,true) then seq={9916,9918,9917}\nelseif t:find(\"From hallowed moon I bare iron, in my descent to wield\",1,true) then seq={9916,9915,9918}\nelseif t:find(\"Unbending iron, take fire and descend\",1,true) then seq={9915,9917,9918}\nelseif t:find(\"Unbending iron, descend with fiery edge\",1,true) then seq={9915,9918,9917}\nend\n return seq\nend\nfunction S.quoteCategory(id)\n if id==9916 or id==9917 then return \"in\"elseif id==9915 then return \"out\"else return \"spread\"end\nend\nfunction S.planQuote()\n local q=S.quote\n if not q then return end\n for i=1,3 do S.personalMoves[\"quote\"..i]=nil end\n local previous=q.previous\n local p=TensorCore.mGetPlayer();local n=S.ent(2612)\n for i=q.step,#q.seq do\n  local cat=S.quoteCategory(q.seq[i]);local hit=q.nextHit+(i-q.step)*3.1\n  local move=previous~=cat\n  if not previous and p and n then\n   local distance=TensorCore.getDistance2d(p.pos,n.pos)\n   if(cat==\"in\"and distance<=4)or(cat==\"out\"and distance>=10)then move=false end\n  end\n  if move then\n   local duration=S.cfg.quoteMove\n   local a=previous and hit-3.0 or hit-duration-.2\n   S.personalMoves[\"quote\"..i]={a,math.min(a+duration,hit-.1)}\n  end\n  previous=cat\n end\n S.publish()\nend\n\n\nfunction S.beginGolden(now)\n if S.planningStage==2 then return end\n S.planningStage=2;S.planStart=now\n S.dynamic={};S.ends={};S.dotStart={}\n S.personalMoves={};S.quote=nil\n S.mainID=nil;S.otherID=nil\n S.lbObserved=nil;S.lbStarted=nil;S.lbCompleted=nil;S.lbCancelled=nil\n A.clearAutoSimTarget(0);A.clearAutoSimTarget(1)\nend\n\nfunction S.publish()\n local now=A.getAutoSimTime()\n -- Let the first plan finish at adds death. No ordinary player death changes plans.\n if S.planningStage~=2 and S.seen.addsEnd and now>S.seen.addsEnd+.5 then return end\n local live=_G.UCOB_BLM_Config\n \n S.cfg.phoenixPriority=live and live.phoenixPriority==true or false\n local horizon=S.planningStage==2 and S.at(\"gold\")+S.cfg.goldLength or S.at(\"addsEnd\")\n local kill=math.max(now+.5,horizon)\n S.killAt=kill;A.setAutoSimKillTime(kill)\n local gaps={{S.at(\"twinEnd\"),S.at(\"nael\")},{S.at(\"naelEnd\"),S.at(\"baha\")},{S.at(\"off6\"),S.at(\"adds\")},{S.at(\"addsEnd\"),S.at(\"gold\")}}\n for i=1,5 do\n  local a,b=S.at(\"off\"..i),S.at(\"on\"..i)\n  if S.seen.adds then b=math.min(b,S.seen.adds)end\n  if b>a then gaps[#gaps+1]={a,b}end\n end\n if S.planningStage==2 then gaps={{S.planStart,S.at(\"gold\")}}end\n local valid={};for _,g in ipairs(gaps)do if g[2]>g[1]then valid[#valid+1]=g end end;gaps=valid\n if S.planningStage~=2 and S.naelGap then gaps[#gaps+1]={S.naelGap[1],S.naelGap[2]or now+6}end\n A.clearAutoSimPhases(\"FullDowntime\")\n for _,g in ipairs(S.union(gaps))do if g[2]>g[1]then A.addAutoSimPhase(\"FullDowntime\",g[1],g[2])end end\n local stun={}\n for _,g in pairs(S.dynamic)do if g[1]==\"Stun\"then stun[#stun+1]={g[2],g[3]}end end\n A.clearAutoSimPhases(\"Stun\")\n for _,g in ipairs(S.union(stun))do if g[2]>g[1]then A.addAutoSimPhase(\"Stun\",g[1],g[2])end end\n A.clearAutoSimPhases(\"CasterDowntime\")\n for _,g in ipairs(S.movementWindows())do A.addAutoSimPhase(\"CasterDowntime\",g[1],g[2])end\n -- Optional relative Phoenix planning preference. Default is 1x throughout.\n -- Actual active status handling remains with the ACR.\n A.clearAutoSimPhases(\"BossModifier\")\n if S.cfg.phoenixPriority then\n local gold=S.at(\"gold\")\n if gold>0 then A.addAutoSimPhase(\"BossModifier\",0,gold,.5)end\n if S.phase==5 and S.phoenixSeen and not S.phoenixActive then\n  A.addAutoSimPhase(\"BossModifier\",gold,kill,.5)\n end\n end\n A.clearAutoSimPhases(\"RaidBuff\")\n if S.cfg.buffForecast then\n  local prev=-120\n  local buffTimes=S.planningStage==2 and {S.at(\"gold\")+2,S.at(\"gold\")+122}or {5,S.at(\"nael\")+2,S.at(\"baha\")+2,S.at(\"on3\")+2,S.at(\"adds\")+2}\n  for burstIndex,t in ipairs(buffTimes)do\n   t=math.max(t,prev+120)\n   -- P4 adds opening: extra pooling preference; cleave remains independently modeled.\n   local weight=S.planningStage~=2 and burstIndex==5 and 1.4 or (1+S.cfg.buffGain/100)\n   A.addAutoSimPhase(\"RaidBuff\",t,t+20,weight);prev=t\n  end\n end\n -- Slot 0 tracks the selected main boss; slot 1 tracks the other adds boss.\n -- Lifetimes survive temporary untargetability. Golden starts a fresh target-state lifetime.\n local start,finish=0,S.at(\"twinEnd\")\n if S.planningStage==2 then start,finish=S.at(\"gold\"),kill\n elseif S.phase==2 then start,finish=S.at(\"nael\"),S.at(\"naelEnd\")\n elseif S.phase==3 then start,finish=S.at(\"baha\"),S.at(\"adds\")\n elseif S.phase==4 then start,finish=S.at(\"adds\"),S.at(\"addsEnd\")\n elseif S.phase==5 then start,finish=S.at(\"gold\"),kill end\n finish=math.max(finish,now+5)\n for slot=0,1 do\n  A.clearAutoSimPhases(\"DotAvailability\",slot);A.clearAutoSimPhases(\"DotAvailability\",slot,1);A.clearAutoSimPhases(\"TargetLifetime\",slot)\n  if slot==0 or(S.phase==4 and S.planningStage~=2)then\n   local id=slot==0 and S.mainID or S.otherID\n   local death=id and S.ends[id]\n   local ending=death or finish\n   if ending>start then\n    A.addAutoSimPhase(\"TargetLifetime\",start,ending,1,slot)\n    local cursor=start\n    for _,g in ipairs(S.union(gaps))do\n     local a,b=math.max(start,g[1]),math.min(ending-.5,g[2])\n     if b>a then if a>cursor then A.addAutoSimPhase(\"DotAvailability\",cursor,a,1,slot);if slot==0 and Player.job==25 then A.addAutoSimPhase(\"DotAvailability\",cursor,a,1,slot,1)end end;cursor=math.max(cursor,b)end\n    end\n    if ending-.5>cursor then A.addAutoSimPhase(\"DotAvailability\",cursor,ending-.5,1,slot);if slot==0 and Player.job==25 then A.addAutoSimPhase(\"DotAvailability\",cursor,ending-.5,1,slot,1)end end\n   end\n  end\n end\n A.clearAutoSimUncertainty()\n A.addAutoSimUncertainty(0,S.phase>=3 and 3 or 20)\n if S.planningStage~=2 and not S.seen.addsEnd then A.addAutoSimUncertainty(math.max(1,S.at(\"addsEnd\")-25),20)end\n if S.planningStage==2 then A.addAutoSimUncertainty(math.max(2,S.at(\"gold\")+S.cfg.goldLength-30),15)end\n S.lastPublish=now\nend\nfunction S.sync(k,t)\n if S.seen[k]then return end\n S.seen[k]=t;S.publish()\nend\nfor _,cid in ipairs({1482,2612,3210})do\n for _,e in pairs(TensorCore.getEntityGroupList(\"ContentID\",cid)or{})do\n  if e.alive then S.ids[cid]=e.id;S.up[cid]=e.targetable;break end\n end\nend\nS.publish()\nS.planRole=\"caster\";S.planJob=Player.job\ndata.ucobAutoSim=S\nself.used=true\n",
							conditions = 
							{
								
								{
									"7aa1373e-149b-a140-b383-2dce99327794",
									true,
								},
								
								{
									"6be90558-8771-fabe-8181-8a4a661cfc56",
									true,
								},
								
								{
									"2d0294cd-ae60-7fa4-a9fb-df488587baba",
									true,
								},
							},
							name = "Caster/healer forecast",
							uuid = "5f370141-0550-4bcd-9217-95db66ab8ea1",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "-- Shared UCOB encounters; role-specific forecast, using the real combat clock.\nlocal A=TensorCore.API.TensorACR\nlocal C=_G.UCOB_RPR_Config\nif not C then C={lbWho=1,lbAt=150,goldLength=162.14,addsLength=100.222,cleave=true,buffForecast=false,buffGain=17};_G.UCOB_RPR_Config=C end\n-- Burst weight update: preserve forecast enablement and other options.\nif not C.burstWeight20261029 then C.buffGain=17;C.burstWeight20261029=true end\n-- Per-phase base estimates; copied to this pull before publication.\nif C.twinLength==nil then C.twinLength=132 end\nif C.naelLength==nil then C.naelLength=129 end\nlocal S={version=2,planningStage=1,phase=1,seen={},ids={},up={},dynamic={},cfg={},dotStart={},ends={}}\nif C.phoenixPriority==nil then C.phoenixPriority=false end\nfor k,v in pairs(C)do S.cfg[k]=v end\nS.anchors={\n twinEnd={\"pull\",C.twinLength},nael={\"twinEnd\",21.968},naelEnd={\"nael\",C.naelLength},baha={\"naelEnd\",16.333},\n off1={\"baha\",23.449},on1={\"off1\",11.534},off2={\"on1\",29.533},on2={\"off2\",16.557},\n off3={\"on2\",34.636},on3={\"off3\",16.517},off4={\"on3\",35.834},on4={\"off4\",27.560},\n off5={\"on4\",33.712},on5={\"off5\",19.376},off6={\"on5\",37.626},adds={\"off6\",53.754},\n addsEnd={\"adds\",S.cfg.addsLength},gold={\"addsEnd\",62.323}}\n-- Slower-group estimates are copied at pull setup; actual event anchors still win.\nlocal G=_G.UCOB_AutoSimTiming or {}\nlocal old=data.ucobAutoSim\nlocal T=old and old.groupTiming\nif not T then\n T={enabled=G.enabled==true}\n for _,key in ipairs({\"twinExtra\",\"naelExtra\",\"addsExtra\",\"goldExtra\"}) do T[key]=math.max(0,math.min(90,tonumber(G[key]) or 0)) end\nend\nS.groupTiming=T\nif T.enabled then\n S.anchors.twinEnd[2]=S.anchors.twinEnd[2]+T.twinExtra\n S.anchors.naelEnd[2]=S.anchors.naelEnd[2]+T.naelExtra\n S.anchors.addsEnd[2]=S.anchors.addsEnd[2]+T.addsExtra\n S.cfg.goldLength=S.cfg.goldLength+T.goldExtra\nend\nfunction S.at(k)\n if k==\"pull\"then return 0 end\n if S.seen[k]then return S.seen[k]end\n local a=S.anchors[k];return S.at(a[1])+a[2]\nend\nfunction S.union(xs)\n table.sort(xs,function(a,b)return a[1]<b[1]end)\n local out={}\n for _,v in ipairs(xs)do\n  local last=out[#out]\n  if last and v[1]<=last[2]then last[2]=math.max(last[2],v[2])else out[#out+1]={v[1],v[2]}end\n end\n return out\nend\nfunction S.alive(e)return e and e.alive and e.targetable and e.hp.current>1 end\nfunction S.ent(cid)return S.ids[cid]and TensorCore.mGetEntity(S.ids[cid])end\nfunction S.roleMelee()\n local R=AnyoneCore.Roster\n return R and R.current()and(R.mySlot()==\"M1\"or R.mySlot()==\"M2\")\nend\n\nfunction S.beginGolden(now)\n if S.planningStage==2 then return end\n S.planningStage=2;S.planStart=now\n S.dynamic={};S.ends={};S.dotStart={}\n S.personalMoves={};S.quote=nil\n S.mainID=nil;S.otherID=nil\n S.lbObserved=nil;S.lbStarted=nil;S.lbCompleted=nil;S.lbCancelled=nil\n A.clearAutoSimTarget(0);A.clearAutoSimTarget(1)\nend\n\nfunction S.publish()\n local now=A.getAutoSimTime()\n -- Let the first plan finish at adds death. No ordinary player death changes plans.\n if S.planningStage~=2 and S.seen.addsEnd and now>S.seen.addsEnd+.5 then return end\n local live=_G.UCOB_RPR_Config\n if live then S.cfg.lbWho=live.lbWho;S.cfg.lbAt=live.lbAt end\n S.cfg.phoenixPriority=live and live.phoenixPriority==true or false\n local horizon=S.planningStage==2 and S.at(\"gold\")+S.cfg.goldLength or S.at(\"addsEnd\")\n local kill=math.max(now+.5,horizon)\n S.killAt=kill;A.setAutoSimKillTime(kill)\n local gaps={{S.at(\"twinEnd\"),S.at(\"nael\")},{S.at(\"naelEnd\"),S.at(\"baha\")},{S.at(\"off6\"),S.at(\"adds\")},{S.at(\"addsEnd\"),S.at(\"gold\")}}\n for i=1,5 do\n  local a,b=S.at(\"off\"..i),S.at(\"on\"..i)\n  if S.seen.adds then b=math.min(b,S.seen.adds)end\n  if b>a then gaps[#gaps+1]={a,b}end\n end\n if S.planningStage==2 then gaps={{S.planStart,S.at(\"gold\")}}end\n local valid={};for _,g in ipairs(gaps)do if g[2]>g[1]then valid[#valid+1]=g end end;gaps=valid\n if S.planningStage~=2 and S.naelGap then gaps[#gaps+1]={S.naelGap[1],S.naelGap[2]or now+6}end\n A.clearAutoSimPhases(\"FullDowntime\")\n for _,g in ipairs(S.union(gaps))do if g[2]>g[1]then A.addAutoSimPhase(\"FullDowntime\",g[1],g[2])end end\n local stun={}\n if S.cfg.lbWho==1 and S.roleMelee()and not S.lbObserved then\n  local t=S.at(\"gold\")+S.cfg.lbAt;stun[#stun+1]={t,t+8.2}\n end\n for _,g in pairs(S.dynamic)do if g[1]==\"Stun\"then stun[#stun+1]={g[2],g[3]}end end\n A.clearAutoSimPhases(\"Stun\")\n for _,g in ipairs(S.union(stun))do if g[2]>g[1]then A.addAutoSimPhase(\"Stun\",g[1],g[2])end end\n A.clearAutoSimPhases(\"MeleeDowntime\")\n for _,g in pairs(S.dynamic)do if g[1]==\"MeleeDowntime\"and g[3]>g[2]then A.addAutoSimPhase(\"MeleeDowntime\",g[2],g[3])end end\n -- Optional relative Phoenix planning preference. Default is 1x throughout.\n -- Actual active status handling remains with the ACR.\n A.clearAutoSimPhases(\"BossModifier\")\n if S.cfg.phoenixPriority then\n local gold=S.at(\"gold\")\n if gold>0 then A.addAutoSimPhase(\"BossModifier\",0,gold,.5)end\n if S.phase==5 and S.phoenixSeen and not S.phoenixActive then\n  A.addAutoSimPhase(\"BossModifier\",gold,kill,.5)\n end\n end\n A.clearAutoSimPhases(\"RaidBuff\")\n if S.cfg.buffForecast then\n  local prev=-120\n  local buffTimes=S.planningStage==2 and {S.at(\"gold\")+2,S.at(\"gold\")+122}or {5,S.at(\"nael\")+2,S.at(\"baha\")+2,S.at(\"on3\")+2,S.at(\"adds\")+2}\n  for burstIndex,t in ipairs(buffTimes)do\n   t=math.max(t,prev+120)\n   -- P4 adds opening: extra pooling preference; cleave remains independently modeled.\n   local weight=S.planningStage~=2 and burstIndex==5 and 1.4 or (1+S.cfg.buffGain/100)\n   A.addAutoSimPhase(\"RaidBuff\",t,t+20,weight);prev=t\n  end\n end\n -- Slot 0 tracks the selected main boss; slot 1 tracks the other adds boss.\n -- Lifetimes survive temporary untargetability. Golden starts a fresh target-state lifetime.\n local start,finish=0,S.at(\"twinEnd\")\n if S.planningStage==2 then start,finish=S.at(\"gold\"),kill\n elseif S.phase==2 then start,finish=S.at(\"nael\"),S.at(\"naelEnd\")\n elseif S.phase==3 then start,finish=S.at(\"baha\"),S.at(\"adds\")\n elseif S.phase==4 then start,finish=S.at(\"adds\"),S.at(\"addsEnd\")\n elseif S.phase==5 then start,finish=S.at(\"gold\"),kill end\n finish=math.max(finish,now+5)\n for slot=0,1 do\n  A.clearAutoSimPhases(\"DotAvailability\",slot);A.clearAutoSimPhases(\"TargetLifetime\",slot)\n  if slot==0 or(S.phase==4 and S.planningStage~=2)then\n   local id=slot==0 and S.mainID or S.otherID\n   local death=id and S.ends[id]\n   local ending=death or finish\n   if ending>start then\n    A.addAutoSimPhase(\"TargetLifetime\",start,ending,1,slot)\n    local cursor=start\n    for _,g in ipairs(S.union(gaps))do\n     local a,b=math.max(start,g[1]),math.min(ending-.5,g[2])\n     if b>a then if a>cursor then A.addAutoSimPhase(\"DotAvailability\",cursor,a,1,slot)end;cursor=math.max(cursor,b)end\n    end\n    if ending-.5>cursor then A.addAutoSimPhase(\"DotAvailability\",cursor,ending-.5,1,slot)end\n   end\n  end\n end\n A.clearAutoSimUncertainty()\n A.addAutoSimUncertainty(0,S.phase>=3 and 3 or 20)\n if S.planningStage~=2 and not S.seen.addsEnd then A.addAutoSimUncertainty(math.max(1,S.at(\"addsEnd\")-25),20)end\n if S.planningStage==2 then A.addAutoSimUncertainty(math.max(2,S.at(\"gold\")+S.cfg.goldLength-30),15)end\n S.lastPublish=now\nend\nfunction S.sync(k,t)\n if S.seen[k]then return end\n S.seen[k]=t;S.publish()\nend\nfor _,cid in ipairs({1482,2612,3210})do\n for _,e in pairs(TensorCore.getEntityGroupList(\"ContentID\",cid)or{})do\n  if e.alive then S.ids[cid]=e.id;S.up[cid]=e.targetable;break end\n end\nend\nS.publish()\nS.planRole=\"melee\";S.planJob=Player.job\ndata.ucobAutoSim=S\nself.used=true\n",
							conditions = 
							{
								
								{
									"7aa1373e-149b-a140-b383-2dce99327794",
									true,
								},
								
								{
									"6be90558-8771-fabe-8181-8a4a661cfc56",
									true,
								},
								
								{
									"127863d3-3f15-9781-a3c3-48d13e566581",
									true,
								},
							},
							name = "Melee/tank forecast",
							uuid = "00fed4dc-1a70-7d16-8ef9-c994a9e95c66",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "-- Shared UCOB encounters; role-specific forecast, using the real combat clock.\nlocal A=TensorCore.API.TensorACR\nlocal C=_G.UCOB_BRD_Config\nif not C then C={goldLength=162.14,addsLength=100.222,buffForecast=false,buffGain=0};_G.UCOB_BRD_Config=C end\n-- Per-phase base estimates; copied to this pull before publication.\nif C.twinLength==nil then C.twinLength=132 end\nif C.naelLength==nil then C.naelLength=129 end\nlocal S={version=2,planningStage=1,phase=1,seen={},ids={},up={},dynamic={},cfg={},dotStart={},ends={}}\nif C.phoenixPriority==nil then C.phoenixPriority=false end\nif C.reserveGrand==nil then C.reserveGrand=true end\nif C.alignParty==nil then C.alignParty=false end\nif C.burstWait==nil then C.burstWait=30 end\nif C.burstMode==nil then C.burstMode=1 end\nif C.burstTimes==nil then C.burstTimes=\"\"end\nfor k,v in pairs(C)do S.cfg[k]=v end\nS.anchors={\n twinEnd={\"pull\",C.twinLength},nael={\"twinEnd\",21.968},naelEnd={\"nael\",C.naelLength},baha={\"naelEnd\",16.333},\n off1={\"baha\",23.449},on1={\"off1\",11.534},off2={\"on1\",29.533},on2={\"off2\",16.557},\n off3={\"on2\",34.636},on3={\"off3\",16.517},off4={\"on3\",35.834},on4={\"off4\",27.560},\n off5={\"on4\",33.712},on5={\"off5\",19.376},off6={\"on5\",37.626},adds={\"off6\",53.754},\n addsEnd={\"adds\",S.cfg.addsLength},gold={\"addsEnd\",62.323}}\n-- Slower-group estimates are copied at pull setup; actual event anchors still win.\nlocal G=_G.UCOB_AutoSimTiming or {}\nlocal old=data.ucobAutoSim\nlocal T=old and old.groupTiming\nif not T then\n T={enabled=G.enabled==true}\n for _,key in ipairs({\"twinExtra\",\"naelExtra\",\"addsExtra\",\"goldExtra\"}) do T[key]=math.max(0,math.min(90,tonumber(G[key]) or 0)) end\nend\nS.groupTiming=T\nif T.enabled then\n S.anchors.twinEnd[2]=S.anchors.twinEnd[2]+T.twinExtra\n S.anchors.naelEnd[2]=S.anchors.naelEnd[2]+T.naelExtra\n S.anchors.addsEnd[2]=S.anchors.addsEnd[2]+T.addsExtra\n S.cfg.goldLength=S.cfg.goldLength+T.goldExtra\nend\nfunction S.at(k)\n if k==\"pull\"then return 0 end\n if S.seen[k]then return S.seen[k]end\n local a=S.anchors[k];return S.at(a[1])+a[2]\nend\nfunction S.union(xs)\n table.sort(xs,function(a,b)return a[1]<b[1]end)\n local out={}\n for _,v in ipairs(xs)do\n  local last=out[#out]\n  if last and v[1]<=last[2]then last[2]=math.max(last[2],v[2])else out[#out+1]={v[1],v[2]}end\n end\n return out\nend\nfunction S.alive(e)return e and e.alive and e.targetable and e.hp.current>1 end\nfunction S.ent(cid)return S.ids[cid]and TensorCore.mGetEntity(S.ids[cid])end\n\nfunction S.beginGolden(now)\n if S.planningStage==2 then return end\n S.planningStage=2;S.planStart=now\n S.dynamic={};S.ends={};S.dotStart={}\n S.personalMoves={};S.quote=nil\n S.mainID=nil;S.otherID=nil\n S.lbObserved=nil;S.lbStarted=nil;S.lbCompleted=nil;S.lbCancelled=nil\n A.clearAutoSimTarget(0);A.clearAutoSimTarget(1)\nend\n\n\nS.burstActions={118,101,107,3559}\nfunction S.partySchedule()\n local ts={}\n if S.cfg.burstMode==2 then\n  for token in S.cfg.burstTimes:gmatch(\"[^,;]+\")do\n   local n=tonumber(token)\n   if not n or n<0 then return {},\"Use comma-separated seconds since pull.\"end\n   ts[#ts+1]=n\n  end\n  if #ts==0 then return {},\"Enter planned party burst times.\"end\n  table.sort(ts)\n  for i=2,#ts do if ts[i]-ts[i-1]<120 then return {},\"BRD burst windows must be at least 120 seconds apart.\"end end\n else\n  ts=S.planningStage==2 and{S.at(\"gold\")+2,S.at(\"gold\")+122}or{5,S.at(\"nael\")+2,S.at(\"baha\")+2,S.at(\"on3\")+2,S.at(\"adds\")+2}\n  local prev=-120\n  for i,t in ipairs(ts)do ts[i]=math.max(t,prev+120);prev=ts[i]end\n end\n local out={}\n for _,t in ipairs(ts)do\n  if(S.planningStage~=2 or t>=S.planStart)and(S.planningStage==2 or t<=S.at(\"addsEnd\"))then out[#out+1]=t end\n end\n return out,nil\nend\nfunction S.updateBurstHolds(now)\n if Player.job~=23 then return end\n local reserve=S.cfg.reserveGrand and S.phase==3 and S.octetSeen\n local remaining=nil\n if S.cfg.alignParty and S.cfg.burstWait>0 then\n  for _,t in ipairs(S.partyWindows or{})do\n   local left=t-now\n   if left>0 and left<=S.cfg.burstWait then remaining=left;break end\n  end\n end\n if not reserve and not remaining then return end\n local clock=Now()\n if S.nextHoldRefresh and clock<S.nextHoldRefresh then return end\n -- Short, action-specific leases expire automatically when this controller stops.\n local deadline=clock+750\n if remaining and not reserve then deadline=math.min(deadline,clock+remaining*1000)end\n for _,id in ipairs(S.burstActions)do A.holdActionUntil(id,deadline)end\n S.nextHoldRefresh=clock+250\nend\n\nfunction S.publish()\n local now=A.getAutoSimTime()\n -- Let the first plan finish at adds death. No ordinary player death changes plans.\n if S.planningStage~=2 and S.seen.addsEnd and now>S.seen.addsEnd+.5 then return end\n local live=_G.UCOB_BRD_Config\n \n S.cfg.phoenixPriority=live and live.phoenixPriority==true or false\n if live then S.cfg.reserveGrand=live.reserveGrand~=false;S.cfg.alignParty=live.alignParty==true;S.cfg.burstWait=live.burstWait;S.cfg.burstMode=live.burstMode;S.cfg.burstTimes=live.burstTimes end\n local horizon=S.planningStage==2 and S.at(\"gold\")+S.cfg.goldLength or S.at(\"addsEnd\")\n local kill=math.max(now+.5,horizon)\n S.killAt=kill;A.setAutoSimKillTime(kill)\n local gaps={{S.at(\"twinEnd\"),S.at(\"nael\")},{S.at(\"naelEnd\"),S.at(\"baha\")},{S.at(\"off6\"),S.at(\"adds\")},{S.at(\"addsEnd\"),S.at(\"gold\")}}\n for i=1,5 do\n  local a,b=S.at(\"off\"..i),S.at(\"on\"..i)\n  if S.seen.adds then b=math.min(b,S.seen.adds)end\n  if b>a then gaps[#gaps+1]={a,b}end\n end\n if S.planningStage==2 then gaps={{S.planStart,S.at(\"gold\")}}end\n local valid={};for _,g in ipairs(gaps)do if g[2]>g[1]then valid[#valid+1]=g end end;gaps=valid\n if S.planningStage~=2 and S.naelGap then gaps[#gaps+1]={S.naelGap[1],S.naelGap[2]or now+6}end\n A.clearAutoSimPhases(\"FullDowntime\")\n for _,g in ipairs(S.union(gaps))do if g[2]>g[1]then A.addAutoSimPhase(\"FullDowntime\",g[1],g[2])end end\n local stun={}\n for _,g in pairs(S.dynamic)do if g[1]==\"Stun\"then stun[#stun+1]={g[2],g[3]}end end\n A.clearAutoSimPhases(\"Stun\")\n for _,g in ipairs(S.union(stun))do if g[2]>g[1]then A.addAutoSimPhase(\"Stun\",g[1],g[2])end end\n -- Optional relative Phoenix planning preference. Default is 1x throughout.\n -- Actual active status handling remains with the ACR.\n A.clearAutoSimPhases(\"BossModifier\")\n if S.cfg.phoenixPriority then\n local gold=S.at(\"gold\")\n if gold>0 then A.addAutoSimPhase(\"BossModifier\",0,gold,.5)end\n if S.phase==5 and S.phoenixSeen and not S.phoenixActive then\n  A.addAutoSimPhase(\"BossModifier\",gold,kill,.5)\n end\n end\n S.partyWindows,S.partyError=S.partySchedule()\n A.clearAutoSimPhases(\"RaidBuff\")\n if S.cfg.buffForecast then\n  for _,t in ipairs(S.partyWindows)do\n   -- Applies only to an existing burst at the P4 opening, including custom schedules.\n   local addsOpening=S.planningStage~=2 and t>=S.at(\"adds\") and t<S.at(\"adds\")+20\n   A.addAutoSimPhase(\"RaidBuff\",t,t+20,addsOpening and 1.4 or (1+S.cfg.buffGain/100))\n  end\n end\n -- Slot 0 tracks the selected main boss; slot 1 tracks the other adds boss.\n -- Lifetimes survive temporary untargetability. Golden starts a fresh target-state lifetime.\n local start,finish=0,S.at(\"twinEnd\")\n if S.planningStage==2 then start,finish=S.at(\"gold\"),kill\n elseif S.phase==2 then start,finish=S.at(\"nael\"),S.at(\"naelEnd\")\n elseif S.phase==3 then start,finish=S.at(\"baha\"),S.at(\"adds\")\n elseif S.phase==4 then start,finish=S.at(\"adds\"),S.at(\"addsEnd\")\n elseif S.phase==5 then start,finish=S.at(\"gold\"),kill end\n finish=math.max(finish,now+5)\n for slot=0,1 do\n  A.clearAutoSimPhases(\"DotAvailability\",slot);A.clearAutoSimPhases(\"TargetLifetime\",slot)\n  if slot==0 or(S.phase==4 and S.planningStage~=2)then\n   local id=slot==0 and S.mainID or S.otherID\n   local death=id and S.ends[id]\n   local ending=death or finish\n   if ending>start then\n    A.addAutoSimPhase(\"TargetLifetime\",start,ending,1,slot)\n    local cursor=start\n    for _,g in ipairs(S.union(gaps))do\n     local a,b=math.max(start,g[1]),math.min(ending-.5,g[2])\n     if b>a then if a>cursor then A.addAutoSimPhase(\"DotAvailability\",cursor,a,1,slot)end;cursor=math.max(cursor,b)end\n    end\n    if ending-.5>cursor then A.addAutoSimPhase(\"DotAvailability\",cursor,ending-.5,1,slot)end\n   end\n  end\n end\n A.clearAutoSimUncertainty()\n A.addAutoSimUncertainty(0,S.phase>=3 and 3 or 20)\n if S.planningStage~=2 and not S.seen.addsEnd then A.addAutoSimUncertainty(math.max(1,S.at(\"addsEnd\")-25),20)end\n if S.planningStage==2 then A.addAutoSimUncertainty(math.max(2,S.at(\"gold\")+S.cfg.goldLength-30),15)end\n S.lastPublish=now\nend\nfunction S.sync(k,t)\n if S.seen[k]then return end\n S.seen[k]=t;S.publish()\nend\nfor _,cid in ipairs({1482,2612,3210})do\n for _,e in pairs(TensorCore.getEntityGroupList(\"ContentID\",cid)or{})do\n  if e.alive then S.ids[cid]=e.id;S.up[cid]=e.targetable;break end\n end\nend\nS.publish()\nS.planRole=\"ranged\";S.planJob=Player.job\ndata.ucobAutoSim=S\nself.used=true\n",
							conditions = 
							{
								
								{
									"7aa1373e-149b-a140-b383-2dce99327794",
									true,
								},
								
								{
									"6be90558-8771-fabe-8181-8a4a661cfc56",
									true,
								},
								
								{
									"a771d370-f8ed-a7b0-b7a5-70672aed0189",
									false,
								},
							},
							name = "Ranged/support forecast",
							uuid = "f2991f6a-2705-005b-91d3-da96b54b006a",
							version = 2.1,
						},
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
							uuid = "7aa1373e-149b-a140-b383-2dce99327794",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.ucobAutoSim==nil or data.ucobAutoSim.planJob~=Player.job",
							name = "Not configured",
							uuid = "6be90558-8771-fabe-8181-8a4a661cfc56",
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
							name = "Caster/healer forecast",
							uuid = "2d0294cd-ae60-7fa4-a9fb-df488587baba",
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
							},
							name = "Melee/tank forecast",
							uuid = "127863d3-3f15-9781-a3c3-48d13e566581",
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
							},
							name = "Ranged/support forecast",
							uuid = "a771d370-f8ed-a7b0-b7a5-70672aed0189",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Setup and cleanup",
				eventType = 16,
				mechanicTime = 7,
				name = "[UCOB] Configure forecast",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = -6,
				timerStartOffset = -70,
				uuid = "7a843ef9-00f9-087f-b0c7-0953d400f3c2",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "-- Shared UCOB encounters; role-specific forecast, using the real combat clock.\nlocal A=TensorCore.API.TensorACR\nlocal C=_G.UCOB_BLM_Config\nif not C then C={goldLength=162.14,addsLength=100.222,buffForecast=false,buffGain=17,twisterLead=1.0,twisterAfter=1.0,exaDuration=8,assignmentMove=2,returnMove=1.5};_G.UCOB_BLM_Config=C end\nif C.quoteMove==nil then C.quoteMove=2 end\n-- Burst weight update: preserve forecast enablement and other options.\nif not C.burstWeight20261029 then C.buffGain=17;C.burstWeight20261029=true end\n-- Per-phase base estimates; copied to this pull before publication.\nif C.twinLength==nil then C.twinLength=132 end\nif C.naelLength==nil then C.naelLength=129 end\nfor key,value in pairs({twisterLead=1,twisterAfter=1,exaDuration=8,assignmentMove=2,returnMove=1.5,quoteMove=2}) do\n if C[key]==nil then C[key]=value end\nend\nlocal S={version=2,planningStage=1,phase=1,seen={},ids={},up={},dynamic={},cfg={},dotStart={},ends={}}\nif C.phoenixPriority==nil then C.phoenixPriority=false end\nfor k,v in pairs(C)do S.cfg[k]=v end\nS.anchors={\n twinEnd={\"pull\",C.twinLength},nael={\"twinEnd\",21.968},naelEnd={\"nael\",C.naelLength},baha={\"naelEnd\",16.333},\n off1={\"baha\",23.449},on1={\"off1\",11.534},off2={\"on1\",29.533},on2={\"off2\",16.557},\n off3={\"on2\",34.636},on3={\"off3\",16.517},off4={\"on3\",35.834},on4={\"off4\",27.560},\n off5={\"on4\",33.712},on5={\"off5\",19.376},off6={\"on5\",37.626},adds={\"off6\",53.754},\n addsEnd={\"adds\",S.cfg.addsLength},gold={\"addsEnd\",62.323}}\n-- Slower-group estimates are copied at pull setup; actual event anchors still win.\nlocal G=_G.UCOB_AutoSimTiming or {}\nlocal old=data.ucobAutoSim\nlocal T=old and old.groupTiming\nif not T then\n T={enabled=G.enabled==true}\n for _,key in ipairs({\"twinExtra\",\"naelExtra\",\"addsExtra\",\"goldExtra\"}) do T[key]=math.max(0,math.min(90,tonumber(G[key]) or 0)) end\nend\nS.groupTiming=T\nif T.enabled then\n S.anchors.twinEnd[2]=S.anchors.twinEnd[2]+T.twinExtra\n S.anchors.naelEnd[2]=S.anchors.naelEnd[2]+T.naelExtra\n S.anchors.addsEnd[2]=S.anchors.addsEnd[2]+T.addsExtra\n S.cfg.goldLength=S.cfg.goldLength+T.goldExtra\nend\nfunction S.at(k)\n if k==\"pull\"then return 0 end\n if S.seen[k]then return S.seen[k]end\n local a=S.anchors[k];return S.at(a[1])+a[2]\nend\nfunction S.union(xs)\n table.sort(xs,function(a,b)return a[1]<b[1]end)\n local out={}\n for _,v in ipairs(xs)do\n  local last=out[#out]\n  if last and v[1]<=last[2]then last[2]=math.max(last[2],v[2])else out[#out+1]={v[1],v[2]}end\n end\n return out\nend\nfunction S.alive(e)return e and e.alive and e.targetable and e.hp.current>1 end\nfunction S.ent(cid)return S.ids[cid]and TensorCore.mGetEntity(S.ids[cid])end\n\nS.movePred={{\"firstTwister\",\"pull\",12.3,\"twister\"},{\"secondTwister\",\"pull\",69.5,\"twister\"},{\"thirdTwister\",\"pull\",121.7,\"twister\"},{\"addsTwister1\",\"adds\",24.34,\"twister\"},{\"addsTwister2\",\"adds\",41.487,\"twister\"},{\"addsTwister3\",\"adds\",87.071,\"twister\"},{\"addsTwister4\",\"adds\",104.096,\"twister\"},{\"exa1\",\"gold\",24.549,\"exa\"},{\"exa2\",\"gold\",73.276,\"exa\"},{\"exa3\",\"gold\",123.05,\"exa\"},{\"exa4\",\"gold\",174.689,\"exa\"}}\nS.moveActual={};S.personalMoves={}\nfunction S.movementWindows()\n local out={}\n for _,p in ipairs(S.movePred)do\n  if S.planningStage~=2 or p[2]==\"gold\"then\n  local center=S.moveActual[p[1]]or S.at(p[2])+p[3]\n  local a,b\n  if p[4]==\"twister\"then a,b=center-S.cfg.twisterLead,center+S.cfg.twisterAfter\n  else a,b=center-.5,center+S.cfg.exaDuration end\n  if p[2]==\"adds\"then b=math.min(b,S.at(\"addsEnd\"))end\n  if p[2]~=\"pull\"or not S.seen.twinEnd or center<S.seen.twinEnd then\n   if b>a then out[#out+1]={a,b}end\n  end\n end\n end\n for _,v in pairs(S.personalMoves)do if v[2]>v[1]then out[#out+1]={v[1],v[2]}end end\n return S.union(out)\nend\nfunction S.correctMovement(kind,finish)\n local best,delta\n for _,p in ipairs(S.movePred)do\n  if p[4]==kind and not S.moveActual[p[1]]and ((p[2]==\"pull\"and S.phase==1)or(p[2]==\"adds\"and S.phase==4)or(p[2]==\"gold\"and S.phase==5))then\n   local d=math.abs(finish-S.at(p[2])-p[3]);if not delta or d<delta then best,delta=p[1],d end\n  end\n end\n if best and delta<8 then S.moveActual[best]=finish\n else S.personalMoves[kind..\"Extra\"]={finish-(kind==\"twister\"and S.cfg.twisterLead or .5),finish+(kind==\"twister\"and S.cfg.twisterAfter or S.cfg.exaDuration)}end\n S.publish()\nend\n\nfunction S.quoteSequence(text)\nlocal t=text:gsub(\"%s+\",\" \")\nlocal seq=nil\nif t:find(\"O hallowed moon, shine you the iron path\",1,true) then seq={9916,9915}\nelseif t:find(\"O hallowed moon, take fire and scorch my foes\",1,true) then seq={9916,9917}\nelseif t:find(\"Take fire, O hallowed moon\",1,true) then seq={9917,9916}\nelseif t:find(\"Blazing path, lead me to iron rule\",1,true) then seq={9917,9915}\nelseif t:find(\"From on high I descend, the hallowed moon to call\",1,true) then seq={9918,9916}\nelseif t:find(\"From on high I descend, the iron path to walk\",1,true) then seq={9918,9915}\nelseif t:find(\"From on high I descend, the iron path to call\",1,true) then seq={9918,9915}\nelseif t:find(\"From on high I descend, the moon and stars to bring\",1,true) then seq={9918,9916,9920}\nelseif t:find(\"From hallowed moon I descend, a rain of stars to bring\",1,true) then seq={9916,9918,9920}\nelseif t:find(\"From hallowed moon I descend, upon burning earth to tread\",1,true) then seq={9916,9918,9917}\nelseif t:find(\"From hallowed moon I bare iron, in my descent to wield\",1,true) then seq={9916,9915,9918}\nelseif t:find(\"Unbending iron, take fire and descend\",1,true) then seq={9915,9917,9918}\nelseif t:find(\"Unbending iron, descend with fiery edge\",1,true) then seq={9915,9918,9917}\nend\n return seq\nend\nfunction S.quoteCategory(id)\n if id==9916 or id==9917 then return \"in\"elseif id==9915 then return \"out\"else return \"spread\"end\nend\nfunction S.planQuote()\n local q=S.quote\n if not q then return end\n for i=1,3 do S.personalMoves[\"quote\"..i]=nil end\n local previous=q.previous\n local p=TensorCore.mGetPlayer();local n=S.ent(2612)\n for i=q.step,#q.seq do\n  local cat=S.quoteCategory(q.seq[i]);local hit=q.nextHit+(i-q.step)*3.1\n  local move=previous~=cat\n  if not previous and p and n then\n   local distance=TensorCore.getDistance2d(p.pos,n.pos)\n   if(cat==\"in\"and distance<=4)or(cat==\"out\"and distance>=10)then move=false end\n  end\n  if move then\n   local duration=S.cfg.quoteMove\n   local a=previous and hit-3.0 or hit-duration-.2\n   S.personalMoves[\"quote\"..i]={a,math.min(a+duration,hit-.1)}\n  end\n  previous=cat\n end\n S.publish()\nend\n\n\nfunction S.beginGolden(now)\n if S.planningStage==2 then return end\n S.planningStage=2;S.planStart=now\n S.dynamic={};S.ends={};S.dotStart={}\n S.personalMoves={};S.quote=nil\n S.mainID=nil;S.otherID=nil\n S.lbObserved=nil;S.lbStarted=nil;S.lbCompleted=nil;S.lbCancelled=nil\n A.clearAutoSimTarget(0);A.clearAutoSimTarget(1)\nend\n\nfunction S.publish()\n local now=A.getAutoSimTime()\n -- Let the first plan finish at adds death. No ordinary player death changes plans.\n if S.planningStage~=2 and S.seen.addsEnd and now>S.seen.addsEnd+.5 then return end\n local live=_G.UCOB_BLM_Config\n \n S.cfg.phoenixPriority=live and live.phoenixPriority==true or false\n local horizon=S.planningStage==2 and S.at(\"gold\")+S.cfg.goldLength or S.at(\"addsEnd\")\n local kill=math.max(now+.5,horizon)\n S.killAt=kill;A.setAutoSimKillTime(kill)\n local gaps={{S.at(\"twinEnd\"),S.at(\"nael\")},{S.at(\"naelEnd\"),S.at(\"baha\")},{S.at(\"off6\"),S.at(\"adds\")},{S.at(\"addsEnd\"),S.at(\"gold\")}}\n for i=1,5 do\n  local a,b=S.at(\"off\"..i),S.at(\"on\"..i)\n  if S.seen.adds then b=math.min(b,S.seen.adds)end\n  if b>a then gaps[#gaps+1]={a,b}end\n end\n if S.planningStage==2 then gaps={{S.planStart,S.at(\"gold\")}}end\n local valid={};for _,g in ipairs(gaps)do if g[2]>g[1]then valid[#valid+1]=g end end;gaps=valid\n if S.planningStage~=2 and S.naelGap then gaps[#gaps+1]={S.naelGap[1],S.naelGap[2]or now+6}end\n A.clearAutoSimPhases(\"FullDowntime\")\n for _,g in ipairs(S.union(gaps))do if g[2]>g[1]then A.addAutoSimPhase(\"FullDowntime\",g[1],g[2])end end\n local stun={}\n for _,g in pairs(S.dynamic)do if g[1]==\"Stun\"then stun[#stun+1]={g[2],g[3]}end end\n A.clearAutoSimPhases(\"Stun\")\n for _,g in ipairs(S.union(stun))do if g[2]>g[1]then A.addAutoSimPhase(\"Stun\",g[1],g[2])end end\n A.clearAutoSimPhases(\"CasterDowntime\")\n for _,g in ipairs(S.movementWindows())do A.addAutoSimPhase(\"CasterDowntime\",g[1],g[2])end\n -- Optional relative Phoenix planning preference. Default is 1x throughout.\n -- Actual active status handling remains with the ACR.\n A.clearAutoSimPhases(\"BossModifier\")\n if S.cfg.phoenixPriority then\n local gold=S.at(\"gold\")\n if gold>0 then A.addAutoSimPhase(\"BossModifier\",0,gold,.5)end\n if S.phase==5 and S.phoenixSeen and not S.phoenixActive then\n  A.addAutoSimPhase(\"BossModifier\",gold,kill,.5)\n end\n end\n A.clearAutoSimPhases(\"RaidBuff\")\n if S.cfg.buffForecast then\n  local prev=-120\n  local buffTimes=S.planningStage==2 and {S.at(\"gold\")+2,S.at(\"gold\")+122}or {5,S.at(\"nael\")+2,S.at(\"baha\")+2,S.at(\"on3\")+2,S.at(\"adds\")+2}\n  for burstIndex,t in ipairs(buffTimes)do\n   t=math.max(t,prev+120)\n   -- P4 adds opening: extra pooling preference; cleave remains independently modeled.\n   local weight=S.planningStage~=2 and burstIndex==5 and 1.4 or (1+S.cfg.buffGain/100)\n   A.addAutoSimPhase(\"RaidBuff\",t,t+20,weight);prev=t\n  end\n end\n -- Slot 0 tracks the selected main boss; slot 1 tracks the other adds boss.\n -- Lifetimes survive temporary untargetability. Golden starts a fresh target-state lifetime.\n local start,finish=0,S.at(\"twinEnd\")\n if S.planningStage==2 then start,finish=S.at(\"gold\"),kill\n elseif S.phase==2 then start,finish=S.at(\"nael\"),S.at(\"naelEnd\")\n elseif S.phase==3 then start,finish=S.at(\"baha\"),S.at(\"adds\")\n elseif S.phase==4 then start,finish=S.at(\"adds\"),S.at(\"addsEnd\")\n elseif S.phase==5 then start,finish=S.at(\"gold\"),kill end\n finish=math.max(finish,now+5)\n for slot=0,1 do\n  A.clearAutoSimPhases(\"DotAvailability\",slot);A.clearAutoSimPhases(\"DotAvailability\",slot,1);A.clearAutoSimPhases(\"TargetLifetime\",slot)\n  if slot==0 or(S.phase==4 and S.planningStage~=2)then\n   local id=slot==0 and S.mainID or S.otherID\n   local death=id and S.ends[id]\n   local ending=death or finish\n   if ending>start then\n    A.addAutoSimPhase(\"TargetLifetime\",start,ending,1,slot)\n    local cursor=start\n    for _,g in ipairs(S.union(gaps))do\n     local a,b=math.max(start,g[1]),math.min(ending-.5,g[2])\n     if b>a then if a>cursor then A.addAutoSimPhase(\"DotAvailability\",cursor,a,1,slot);if slot==0 and Player.job==25 then A.addAutoSimPhase(\"DotAvailability\",cursor,a,1,slot,1)end end;cursor=math.max(cursor,b)end\n    end\n    if ending-.5>cursor then A.addAutoSimPhase(\"DotAvailability\",cursor,ending-.5,1,slot);if slot==0 and Player.job==25 then A.addAutoSimPhase(\"DotAvailability\",cursor,ending-.5,1,slot,1)end end\n   end\n  end\n end\n A.clearAutoSimUncertainty()\n A.addAutoSimUncertainty(0,S.phase>=3 and 3 or 20)\n if S.planningStage~=2 and not S.seen.addsEnd then A.addAutoSimUncertainty(math.max(1,S.at(\"addsEnd\")-25),20)end\n if S.planningStage==2 then A.addAutoSimUncertainty(math.max(2,S.at(\"gold\")+S.cfg.goldLength-30),15)end\n S.lastPublish=now\nend\nfunction S.sync(k,t)\n if S.seen[k]then return end\n S.seen[k]=t;S.publish()\nend\nfor _,cid in ipairs({1482,2612,3210})do\n for _,e in pairs(TensorCore.getEntityGroupList(\"ContentID\",cid)or{})do\n  if e.alive then S.ids[cid]=e.id;S.up[cid]=e.targetable;break end\n end\nend\nS.publish()\nS.planRole=\"caster\";S.planJob=Player.job\ndata.ucobAutoSim=S\nself.used=true\n",
							conditions = 
							{
								
								{
									"e85739d1-4889-c4f3-b869-ce8b1392d202",
									true,
								},
								
								{
									"b183e910-13d4-f141-9f2b-c94e91a8cf4f",
									true,
								},
								
								{
									"98599717-b13a-772f-a1e0-d7bcc2a4d057",
									true,
								},
								
								{
									"5e46af7d-a3ba-add2-b765-f367db2f1a63",
									true,
								},
							},
							name = "Caster/healer forecast",
							uuid = "62b3f4fb-a238-94ac-9e49-867f32fb2ed7",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "-- Shared UCOB encounters; role-specific forecast, using the real combat clock.\nlocal A=TensorCore.API.TensorACR\nlocal C=_G.UCOB_RPR_Config\nif not C then C={lbWho=1,lbAt=150,goldLength=162.14,addsLength=100.222,cleave=true,buffForecast=false,buffGain=17};_G.UCOB_RPR_Config=C end\n-- Burst weight update: preserve forecast enablement and other options.\nif not C.burstWeight20261029 then C.buffGain=17;C.burstWeight20261029=true end\n-- Per-phase base estimates; copied to this pull before publication.\nif C.twinLength==nil then C.twinLength=132 end\nif C.naelLength==nil then C.naelLength=129 end\nlocal S={version=2,planningStage=1,phase=1,seen={},ids={},up={},dynamic={},cfg={},dotStart={},ends={}}\nif C.phoenixPriority==nil then C.phoenixPriority=false end\nfor k,v in pairs(C)do S.cfg[k]=v end\nS.anchors={\n twinEnd={\"pull\",C.twinLength},nael={\"twinEnd\",21.968},naelEnd={\"nael\",C.naelLength},baha={\"naelEnd\",16.333},\n off1={\"baha\",23.449},on1={\"off1\",11.534},off2={\"on1\",29.533},on2={\"off2\",16.557},\n off3={\"on2\",34.636},on3={\"off3\",16.517},off4={\"on3\",35.834},on4={\"off4\",27.560},\n off5={\"on4\",33.712},on5={\"off5\",19.376},off6={\"on5\",37.626},adds={\"off6\",53.754},\n addsEnd={\"adds\",S.cfg.addsLength},gold={\"addsEnd\",62.323}}\n-- Slower-group estimates are copied at pull setup; actual event anchors still win.\nlocal G=_G.UCOB_AutoSimTiming or {}\nlocal old=data.ucobAutoSim\nlocal T=old and old.groupTiming\nif not T then\n T={enabled=G.enabled==true}\n for _,key in ipairs({\"twinExtra\",\"naelExtra\",\"addsExtra\",\"goldExtra\"}) do T[key]=math.max(0,math.min(90,tonumber(G[key]) or 0)) end\nend\nS.groupTiming=T\nif T.enabled then\n S.anchors.twinEnd[2]=S.anchors.twinEnd[2]+T.twinExtra\n S.anchors.naelEnd[2]=S.anchors.naelEnd[2]+T.naelExtra\n S.anchors.addsEnd[2]=S.anchors.addsEnd[2]+T.addsExtra\n S.cfg.goldLength=S.cfg.goldLength+T.goldExtra\nend\nfunction S.at(k)\n if k==\"pull\"then return 0 end\n if S.seen[k]then return S.seen[k]end\n local a=S.anchors[k];return S.at(a[1])+a[2]\nend\nfunction S.union(xs)\n table.sort(xs,function(a,b)return a[1]<b[1]end)\n local out={}\n for _,v in ipairs(xs)do\n  local last=out[#out]\n  if last and v[1]<=last[2]then last[2]=math.max(last[2],v[2])else out[#out+1]={v[1],v[2]}end\n end\n return out\nend\nfunction S.alive(e)return e and e.alive and e.targetable and e.hp.current>1 end\nfunction S.ent(cid)return S.ids[cid]and TensorCore.mGetEntity(S.ids[cid])end\nfunction S.roleMelee()\n local R=AnyoneCore.Roster\n return R and R.current()and(R.mySlot()==\"M1\"or R.mySlot()==\"M2\")\nend\n\nfunction S.beginGolden(now)\n if S.planningStage==2 then return end\n S.planningStage=2;S.planStart=now\n S.dynamic={};S.ends={};S.dotStart={}\n S.personalMoves={};S.quote=nil\n S.mainID=nil;S.otherID=nil\n S.lbObserved=nil;S.lbStarted=nil;S.lbCompleted=nil;S.lbCancelled=nil\n A.clearAutoSimTarget(0);A.clearAutoSimTarget(1)\nend\n\nfunction S.publish()\n local now=A.getAutoSimTime()\n -- Let the first plan finish at adds death. No ordinary player death changes plans.\n if S.planningStage~=2 and S.seen.addsEnd and now>S.seen.addsEnd+.5 then return end\n local live=_G.UCOB_RPR_Config\n if live then S.cfg.lbWho=live.lbWho;S.cfg.lbAt=live.lbAt end\n S.cfg.phoenixPriority=live and live.phoenixPriority==true or false\n local horizon=S.planningStage==2 and S.at(\"gold\")+S.cfg.goldLength or S.at(\"addsEnd\")\n local kill=math.max(now+.5,horizon)\n S.killAt=kill;A.setAutoSimKillTime(kill)\n local gaps={{S.at(\"twinEnd\"),S.at(\"nael\")},{S.at(\"naelEnd\"),S.at(\"baha\")},{S.at(\"off6\"),S.at(\"adds\")},{S.at(\"addsEnd\"),S.at(\"gold\")}}\n for i=1,5 do\n  local a,b=S.at(\"off\"..i),S.at(\"on\"..i)\n  if S.seen.adds then b=math.min(b,S.seen.adds)end\n  if b>a then gaps[#gaps+1]={a,b}end\n end\n if S.planningStage==2 then gaps={{S.planStart,S.at(\"gold\")}}end\n local valid={};for _,g in ipairs(gaps)do if g[2]>g[1]then valid[#valid+1]=g end end;gaps=valid\n if S.planningStage~=2 and S.naelGap then gaps[#gaps+1]={S.naelGap[1],S.naelGap[2]or now+6}end\n A.clearAutoSimPhases(\"FullDowntime\")\n for _,g in ipairs(S.union(gaps))do if g[2]>g[1]then A.addAutoSimPhase(\"FullDowntime\",g[1],g[2])end end\n local stun={}\n if S.cfg.lbWho==1 and S.roleMelee()and not S.lbObserved then\n  local t=S.at(\"gold\")+S.cfg.lbAt;stun[#stun+1]={t,t+8.2}\n end\n for _,g in pairs(S.dynamic)do if g[1]==\"Stun\"then stun[#stun+1]={g[2],g[3]}end end\n A.clearAutoSimPhases(\"Stun\")\n for _,g in ipairs(S.union(stun))do if g[2]>g[1]then A.addAutoSimPhase(\"Stun\",g[1],g[2])end end\n A.clearAutoSimPhases(\"MeleeDowntime\")\n for _,g in pairs(S.dynamic)do if g[1]==\"MeleeDowntime\"and g[3]>g[2]then A.addAutoSimPhase(\"MeleeDowntime\",g[2],g[3])end end\n -- Optional relative Phoenix planning preference. Default is 1x throughout.\n -- Actual active status handling remains with the ACR.\n A.clearAutoSimPhases(\"BossModifier\")\n if S.cfg.phoenixPriority then\n local gold=S.at(\"gold\")\n if gold>0 then A.addAutoSimPhase(\"BossModifier\",0,gold,.5)end\n if S.phase==5 and S.phoenixSeen and not S.phoenixActive then\n  A.addAutoSimPhase(\"BossModifier\",gold,kill,.5)\n end\n end\n A.clearAutoSimPhases(\"RaidBuff\")\n if S.cfg.buffForecast then\n  local prev=-120\n  local buffTimes=S.planningStage==2 and {S.at(\"gold\")+2,S.at(\"gold\")+122}or {5,S.at(\"nael\")+2,S.at(\"baha\")+2,S.at(\"on3\")+2,S.at(\"adds\")+2}\n  for burstIndex,t in ipairs(buffTimes)do\n   t=math.max(t,prev+120)\n   -- P4 adds opening: extra pooling preference; cleave remains independently modeled.\n   local weight=S.planningStage~=2 and burstIndex==5 and 1.4 or (1+S.cfg.buffGain/100)\n   A.addAutoSimPhase(\"RaidBuff\",t,t+20,weight);prev=t\n  end\n end\n -- Slot 0 tracks the selected main boss; slot 1 tracks the other adds boss.\n -- Lifetimes survive temporary untargetability. Golden starts a fresh target-state lifetime.\n local start,finish=0,S.at(\"twinEnd\")\n if S.planningStage==2 then start,finish=S.at(\"gold\"),kill\n elseif S.phase==2 then start,finish=S.at(\"nael\"),S.at(\"naelEnd\")\n elseif S.phase==3 then start,finish=S.at(\"baha\"),S.at(\"adds\")\n elseif S.phase==4 then start,finish=S.at(\"adds\"),S.at(\"addsEnd\")\n elseif S.phase==5 then start,finish=S.at(\"gold\"),kill end\n finish=math.max(finish,now+5)\n for slot=0,1 do\n  A.clearAutoSimPhases(\"DotAvailability\",slot);A.clearAutoSimPhases(\"TargetLifetime\",slot)\n  if slot==0 or(S.phase==4 and S.planningStage~=2)then\n   local id=slot==0 and S.mainID or S.otherID\n   local death=id and S.ends[id]\n   local ending=death or finish\n   if ending>start then\n    A.addAutoSimPhase(\"TargetLifetime\",start,ending,1,slot)\n    local cursor=start\n    for _,g in ipairs(S.union(gaps))do\n     local a,b=math.max(start,g[1]),math.min(ending-.5,g[2])\n     if b>a then if a>cursor then A.addAutoSimPhase(\"DotAvailability\",cursor,a,1,slot)end;cursor=math.max(cursor,b)end\n    end\n    if ending-.5>cursor then A.addAutoSimPhase(\"DotAvailability\",cursor,ending-.5,1,slot)end\n   end\n  end\n end\n A.clearAutoSimUncertainty()\n A.addAutoSimUncertainty(0,S.phase>=3 and 3 or 20)\n if S.planningStage~=2 and not S.seen.addsEnd then A.addAutoSimUncertainty(math.max(1,S.at(\"addsEnd\")-25),20)end\n if S.planningStage==2 then A.addAutoSimUncertainty(math.max(2,S.at(\"gold\")+S.cfg.goldLength-30),15)end\n S.lastPublish=now\nend\nfunction S.sync(k,t)\n if S.seen[k]then return end\n S.seen[k]=t;S.publish()\nend\nfor _,cid in ipairs({1482,2612,3210})do\n for _,e in pairs(TensorCore.getEntityGroupList(\"ContentID\",cid)or{})do\n  if e.alive then S.ids[cid]=e.id;S.up[cid]=e.targetable;break end\n end\nend\nS.publish()\nS.planRole=\"melee\";S.planJob=Player.job\ndata.ucobAutoSim=S\nself.used=true\n",
							conditions = 
							{
								
								{
									"e85739d1-4889-c4f3-b869-ce8b1392d202",
									true,
								},
								
								{
									"b183e910-13d4-f141-9f2b-c94e91a8cf4f",
									true,
								},
								
								{
									"98599717-b13a-772f-a1e0-d7bcc2a4d057",
									true,
								},
								
								{
									"79069a2a-1b7a-3845-82fa-299da9165b05",
									true,
								},
							},
							name = "Melee/tank forecast",
							uuid = "b7f33216-984c-562d-90f0-2ddfe8c68171",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "-- Shared UCOB encounters; role-specific forecast, using the real combat clock.\nlocal A=TensorCore.API.TensorACR\nlocal C=_G.UCOB_BRD_Config\nif not C then C={goldLength=162.14,addsLength=100.222,buffForecast=false,buffGain=0};_G.UCOB_BRD_Config=C end\n-- Per-phase base estimates; copied to this pull before publication.\nif C.twinLength==nil then C.twinLength=132 end\nif C.naelLength==nil then C.naelLength=129 end\nlocal S={version=2,planningStage=1,phase=1,seen={},ids={},up={},dynamic={},cfg={},dotStart={},ends={}}\nif C.phoenixPriority==nil then C.phoenixPriority=false end\nif C.reserveGrand==nil then C.reserveGrand=true end\nif C.alignParty==nil then C.alignParty=false end\nif C.burstWait==nil then C.burstWait=30 end\nif C.burstMode==nil then C.burstMode=1 end\nif C.burstTimes==nil then C.burstTimes=\"\"end\nfor k,v in pairs(C)do S.cfg[k]=v end\nS.anchors={\n twinEnd={\"pull\",C.twinLength},nael={\"twinEnd\",21.968},naelEnd={\"nael\",C.naelLength},baha={\"naelEnd\",16.333},\n off1={\"baha\",23.449},on1={\"off1\",11.534},off2={\"on1\",29.533},on2={\"off2\",16.557},\n off3={\"on2\",34.636},on3={\"off3\",16.517},off4={\"on3\",35.834},on4={\"off4\",27.560},\n off5={\"on4\",33.712},on5={\"off5\",19.376},off6={\"on5\",37.626},adds={\"off6\",53.754},\n addsEnd={\"adds\",S.cfg.addsLength},gold={\"addsEnd\",62.323}}\n-- Slower-group estimates are copied at pull setup; actual event anchors still win.\nlocal G=_G.UCOB_AutoSimTiming or {}\nlocal old=data.ucobAutoSim\nlocal T=old and old.groupTiming\nif not T then\n T={enabled=G.enabled==true}\n for _,key in ipairs({\"twinExtra\",\"naelExtra\",\"addsExtra\",\"goldExtra\"}) do T[key]=math.max(0,math.min(90,tonumber(G[key]) or 0)) end\nend\nS.groupTiming=T\nif T.enabled then\n S.anchors.twinEnd[2]=S.anchors.twinEnd[2]+T.twinExtra\n S.anchors.naelEnd[2]=S.anchors.naelEnd[2]+T.naelExtra\n S.anchors.addsEnd[2]=S.anchors.addsEnd[2]+T.addsExtra\n S.cfg.goldLength=S.cfg.goldLength+T.goldExtra\nend\nfunction S.at(k)\n if k==\"pull\"then return 0 end\n if S.seen[k]then return S.seen[k]end\n local a=S.anchors[k];return S.at(a[1])+a[2]\nend\nfunction S.union(xs)\n table.sort(xs,function(a,b)return a[1]<b[1]end)\n local out={}\n for _,v in ipairs(xs)do\n  local last=out[#out]\n  if last and v[1]<=last[2]then last[2]=math.max(last[2],v[2])else out[#out+1]={v[1],v[2]}end\n end\n return out\nend\nfunction S.alive(e)return e and e.alive and e.targetable and e.hp.current>1 end\nfunction S.ent(cid)return S.ids[cid]and TensorCore.mGetEntity(S.ids[cid])end\n\nfunction S.beginGolden(now)\n if S.planningStage==2 then return end\n S.planningStage=2;S.planStart=now\n S.dynamic={};S.ends={};S.dotStart={}\n S.personalMoves={};S.quote=nil\n S.mainID=nil;S.otherID=nil\n S.lbObserved=nil;S.lbStarted=nil;S.lbCompleted=nil;S.lbCancelled=nil\n A.clearAutoSimTarget(0);A.clearAutoSimTarget(1)\nend\n\n\nS.burstActions={118,101,107,3559}\nfunction S.partySchedule()\n local ts={}\n if S.cfg.burstMode==2 then\n  for token in S.cfg.burstTimes:gmatch(\"[^,;]+\")do\n   local n=tonumber(token)\n   if not n or n<0 then return {},\"Use comma-separated seconds since pull.\"end\n   ts[#ts+1]=n\n  end\n  if #ts==0 then return {},\"Enter planned party burst times.\"end\n  table.sort(ts)\n  for i=2,#ts do if ts[i]-ts[i-1]<120 then return {},\"BRD burst windows must be at least 120 seconds apart.\"end end\n else\n  ts=S.planningStage==2 and{S.at(\"gold\")+2,S.at(\"gold\")+122}or{5,S.at(\"nael\")+2,S.at(\"baha\")+2,S.at(\"on3\")+2,S.at(\"adds\")+2}\n  local prev=-120\n  for i,t in ipairs(ts)do ts[i]=math.max(t,prev+120);prev=ts[i]end\n end\n local out={}\n for _,t in ipairs(ts)do\n  if(S.planningStage~=2 or t>=S.planStart)and(S.planningStage==2 or t<=S.at(\"addsEnd\"))then out[#out+1]=t end\n end\n return out,nil\nend\nfunction S.updateBurstHolds(now)\n if Player.job~=23 then return end\n local reserve=S.cfg.reserveGrand and S.phase==3 and S.octetSeen\n local remaining=nil\n if S.cfg.alignParty and S.cfg.burstWait>0 then\n  for _,t in ipairs(S.partyWindows or{})do\n   local left=t-now\n   if left>0 and left<=S.cfg.burstWait then remaining=left;break end\n  end\n end\n if not reserve and not remaining then return end\n local clock=Now()\n if S.nextHoldRefresh and clock<S.nextHoldRefresh then return end\n -- Short, action-specific leases expire automatically when this controller stops.\n local deadline=clock+750\n if remaining and not reserve then deadline=math.min(deadline,clock+remaining*1000)end\n for _,id in ipairs(S.burstActions)do A.holdActionUntil(id,deadline)end\n S.nextHoldRefresh=clock+250\nend\n\nfunction S.publish()\n local now=A.getAutoSimTime()\n -- Let the first plan finish at adds death. No ordinary player death changes plans.\n if S.planningStage~=2 and S.seen.addsEnd and now>S.seen.addsEnd+.5 then return end\n local live=_G.UCOB_BRD_Config\n \n S.cfg.phoenixPriority=live and live.phoenixPriority==true or false\n if live then S.cfg.reserveGrand=live.reserveGrand~=false;S.cfg.alignParty=live.alignParty==true;S.cfg.burstWait=live.burstWait;S.cfg.burstMode=live.burstMode;S.cfg.burstTimes=live.burstTimes end\n local horizon=S.planningStage==2 and S.at(\"gold\")+S.cfg.goldLength or S.at(\"addsEnd\")\n local kill=math.max(now+.5,horizon)\n S.killAt=kill;A.setAutoSimKillTime(kill)\n local gaps={{S.at(\"twinEnd\"),S.at(\"nael\")},{S.at(\"naelEnd\"),S.at(\"baha\")},{S.at(\"off6\"),S.at(\"adds\")},{S.at(\"addsEnd\"),S.at(\"gold\")}}\n for i=1,5 do\n  local a,b=S.at(\"off\"..i),S.at(\"on\"..i)\n  if S.seen.adds then b=math.min(b,S.seen.adds)end\n  if b>a then gaps[#gaps+1]={a,b}end\n end\n if S.planningStage==2 then gaps={{S.planStart,S.at(\"gold\")}}end\n local valid={};for _,g in ipairs(gaps)do if g[2]>g[1]then valid[#valid+1]=g end end;gaps=valid\n if S.planningStage~=2 and S.naelGap then gaps[#gaps+1]={S.naelGap[1],S.naelGap[2]or now+6}end\n A.clearAutoSimPhases(\"FullDowntime\")\n for _,g in ipairs(S.union(gaps))do if g[2]>g[1]then A.addAutoSimPhase(\"FullDowntime\",g[1],g[2])end end\n local stun={}\n for _,g in pairs(S.dynamic)do if g[1]==\"Stun\"then stun[#stun+1]={g[2],g[3]}end end\n A.clearAutoSimPhases(\"Stun\")\n for _,g in ipairs(S.union(stun))do if g[2]>g[1]then A.addAutoSimPhase(\"Stun\",g[1],g[2])end end\n -- Optional relative Phoenix planning preference. Default is 1x throughout.\n -- Actual active status handling remains with the ACR.\n A.clearAutoSimPhases(\"BossModifier\")\n if S.cfg.phoenixPriority then\n local gold=S.at(\"gold\")\n if gold>0 then A.addAutoSimPhase(\"BossModifier\",0,gold,.5)end\n if S.phase==5 and S.phoenixSeen and not S.phoenixActive then\n  A.addAutoSimPhase(\"BossModifier\",gold,kill,.5)\n end\n end\n S.partyWindows,S.partyError=S.partySchedule()\n A.clearAutoSimPhases(\"RaidBuff\")\n if S.cfg.buffForecast then\n  for _,t in ipairs(S.partyWindows)do\n   -- Applies only to an existing burst at the P4 opening, including custom schedules.\n   local addsOpening=S.planningStage~=2 and t>=S.at(\"adds\") and t<S.at(\"adds\")+20\n   A.addAutoSimPhase(\"RaidBuff\",t,t+20,addsOpening and 1.4 or (1+S.cfg.buffGain/100))\n  end\n end\n -- Slot 0 tracks the selected main boss; slot 1 tracks the other adds boss.\n -- Lifetimes survive temporary untargetability. Golden starts a fresh target-state lifetime.\n local start,finish=0,S.at(\"twinEnd\")\n if S.planningStage==2 then start,finish=S.at(\"gold\"),kill\n elseif S.phase==2 then start,finish=S.at(\"nael\"),S.at(\"naelEnd\")\n elseif S.phase==3 then start,finish=S.at(\"baha\"),S.at(\"adds\")\n elseif S.phase==4 then start,finish=S.at(\"adds\"),S.at(\"addsEnd\")\n elseif S.phase==5 then start,finish=S.at(\"gold\"),kill end\n finish=math.max(finish,now+5)\n for slot=0,1 do\n  A.clearAutoSimPhases(\"DotAvailability\",slot);A.clearAutoSimPhases(\"TargetLifetime\",slot)\n  if slot==0 or(S.phase==4 and S.planningStage~=2)then\n   local id=slot==0 and S.mainID or S.otherID\n   local death=id and S.ends[id]\n   local ending=death or finish\n   if ending>start then\n    A.addAutoSimPhase(\"TargetLifetime\",start,ending,1,slot)\n    local cursor=start\n    for _,g in ipairs(S.union(gaps))do\n     local a,b=math.max(start,g[1]),math.min(ending-.5,g[2])\n     if b>a then if a>cursor then A.addAutoSimPhase(\"DotAvailability\",cursor,a,1,slot)end;cursor=math.max(cursor,b)end\n    end\n    if ending-.5>cursor then A.addAutoSimPhase(\"DotAvailability\",cursor,ending-.5,1,slot)end\n   end\n  end\n end\n A.clearAutoSimUncertainty()\n A.addAutoSimUncertainty(0,S.phase>=3 and 3 or 20)\n if S.planningStage~=2 and not S.seen.addsEnd then A.addAutoSimUncertainty(math.max(1,S.at(\"addsEnd\")-25),20)end\n if S.planningStage==2 then A.addAutoSimUncertainty(math.max(2,S.at(\"gold\")+S.cfg.goldLength-30),15)end\n S.lastPublish=now\nend\nfunction S.sync(k,t)\n if S.seen[k]then return end\n S.seen[k]=t;S.publish()\nend\nfor _,cid in ipairs({1482,2612,3210})do\n for _,e in pairs(TensorCore.getEntityGroupList(\"ContentID\",cid)or{})do\n  if e.alive then S.ids[cid]=e.id;S.up[cid]=e.targetable;break end\n end\nend\nS.publish()\nS.planRole=\"ranged\";S.planJob=Player.job\ndata.ucobAutoSim=S\nself.used=true\n",
							conditions = 
							{
								
								{
									"e85739d1-4889-c4f3-b869-ce8b1392d202",
									true,
								},
								
								{
									"b183e910-13d4-f141-9f2b-c94e91a8cf4f",
									true,
								},
								
								{
									"98599717-b13a-772f-a1e0-d7bcc2a4d057",
									true,
								},
								
								{
									"ef12ba40-ca5e-7fa9-b16e-c76ac42e401a",
									false,
								},
							},
							name = "Ranged/support forecast",
							uuid = "0fcb550b-e07b-1d27-b426-0ad6613704fa",
							version = 2.1,
						},
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
							uuid = "e85739d1-4889-c4f3-b869-ce8b1392d202",
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
							uuid = "b183e910-13d4-f141-9f2b-c94e91a8cf4f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.ucobAutoSim==nil or data.ucobAutoSim.planJob~=Player.job",
							name = "Not configured",
							uuid = "98599717-b13a-772f-a1e0-d7bcc2a4d057",
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
							name = "Caster/healer forecast",
							uuid = "5e46af7d-a3ba-add2-b765-f367db2f1a63",
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
							},
							name = "Melee/tank forecast",
							uuid = "79069a2a-1b7a-3845-82fa-299da9165b05",
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
							},
							name = "Ranged/support forecast",
							uuid = "ef12ba40-ca5e-7fa9-b16e-c76ac42e401a",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Setup and cleanup",
				eventType = 2,
				mechanicTime = 7,
				name = "[UCOB] Configure on first Plummet",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 15,
				timerStartOffset = -7,
				uuid = "5a237a1a-7ab6-ee8d-963b-434fe923a296",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "gStartCombat=false\ndata.ucobPrecast={deadline=eventArgs.timeQueued+eventArgs.time*1000,cancelled=false}\nself.used=true",
							conditions = 
							{
								
								{
									"aeda65f4-acbc-9121-a4b6-393ca84d2cfb",
									true,
								},
								
								{
									"20c11051-dc86-60c6-aee4-6b03cbd9e1d4",
									false,
								},
							},
							name = "Keep Start Combat off",
							uuid = "2a0908e8-3ff7-c6bd-bf72-7e23b2bb1269",
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
									"aeda65f4-acbc-9121-a4b6-393ca84d2cfb",
									true,
								},
								
								{
									"20c11051-dc86-60c6-aee4-6b03cbd9e1d4",
									false,
								},
								
								{
									"30ddf60d-5391-ba7f-87ab-630bd0bd2bef",
									true,
								},
								
								{
									"26e26373-2b4e-d070-8878-ba2bcd34181c",
									true,
								},
							},
							name = "Select boss for precast",
							setTarget = true,
							targetType = "Detection Target",
							uuid = "9adf6c4f-87b4-da6d-aba2-e235da4286c6",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 8,
							localmapid = 733,
							name = "UCOB",
							uuid = "aeda65f4-acbc-9121-a4b6-393ca84d2cfb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 7,
							uuid = "20c11051-dc86-60c6-aee4-6b03cbd9e1d4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.ucobPrecast\nreturn s and not s.cancelled and Now()<s.deadline",
							name = "Countdown still active",
							uuid = "30ddf60d-5391-ba7f-87ab-630bd0bd2bef",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local e=TensorCore.mGetEntity(eventArgs.detectionTargetID)\nlocal p=TensorCore.mGetPlayer()\nreturn e and p and e.contentid==1482 and e.attackable and e.targetable and e.hp.current>0 and TensorCore.getDistance2d(p.pos,e.pos)<=60+e.hitradius",
							name = "Nearby Twintania",
							uuid = "cd4624b3-dd74-31a1-bf43-76d0aa447a32",
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
									"cd4624b3-dd74-31a1-bf43-76d0aa447a32",
									true,
								},
							},
							filterTargetType = "Enemy",
							name = "Nearest eligible boss",
							uuid = "26e26373-2b4e-d070-8878-ba2bcd34181c",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Setup and cleanup",
				eventType = 16,
				loop = true,
				mechanicTime = 7,
				name = "[UCOB] Countdown boss targeting",
				timeRange = true,
				timelineIndex = 2,
				timerStartOffset = -120,
				uuid = "6a4097c5-046a-a84e-b44b-3fbcd8c554af",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local s=data.ucobPrecast;if s then s.cancelled=true end\nself.used=true",
							conditions = 
							{
								
								{
									"47dd5a35-192d-b93b-9329-0151932653ff",
									true,
								},
							},
							name = "Cancel countdown selection",
							uuid = "44fc9ab4-475c-7dab-a422-5b4489079eaa",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 8,
							localmapid = 733,
							name = "UCOB",
							uuid = "47dd5a35-192d-b93b-9329-0151932653ff",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Setup and cleanup",
				eventType = 17,
				loop = true,
				mechanicTime = 7,
				name = "[UCOB] Countdown target cancellation",
				timeRange = true,
				timelineIndex = 2,
				timerStartOffset = -120,
				uuid = "c6263e26-5f5f-320e-bcc1-609766294b8a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Settings",
				uuid = "34c47e1d-e4ea-2af3-becc-06b3cbfeb6be",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local timing=_G.UCOB_AutoSimTiming\nif not timing then timing={enabled=false};_G.UCOB_AutoSimTiming=timing end\nlocal caster=Player.job==25 or Player.job==27 or Player.job==35 or Player.job==42 or Player.job==24 or Player.job==28 or Player.job==33 or Player.job==40\nlocal melee=Player.job==19 or Player.job==21 or Player.job==32 or Player.job==37 or Player.job==20 or Player.job==22 or Player.job==30 or Player.job==34 or Player.job==39 or Player.job==41\nlocal key=caster and \"UCOB_BLM_Config\" or(melee and \"UCOB_RPR_Config\" or \"UCOB_BRD_Config\")\nlocal C=_G[key]\nif not C then C={goldLength=162.14,addsLength=100.222,buffForecast=false,buffGain=17,lbWho=1,lbAt=150,twisterLead=1,twisterAfter=1,exaDuration=8,quoteMove=2};_G[key]=C end\nlocal visible=GUI:Begin(\"UCOB AutoSim Settings\",true)\nif visible then\n GUI:Text(\"Shared encounter tracking. Role forecasts. Session settings.\")\n GUI:Text(\"Timing changes apply next pull, including the early-pull fallback.\")\n if GUI:TreeNode(\"Phase estimates - next pull\") then\n  C.twinLength=GUI:SliderFloat(\"Expected Twintania duration (s)\",C.twinLength or 132,90,200,\"%.1f\",1)\n  C.naelLength=GUI:SliderFloat(\"Expected Nael duration (s)\",C.naelLength or 129,80,200,\"%.1f\",1)\n  if GUI:IsItemHovered() then GUI:SetTooltip(\"Middle-ground starting estimates: Twintania 132s and Nael 129s. Captured next pull; native phase events correct them.\") end\n  C.addsLength=GUI:SliderFloat(\"Expected adds duration (s)\",C.addsLength,60,160,\"%.1f\",1)\n  C.goldLength=GUI:SliderFloat(\"Expected Golden duration (s)\",C.goldLength,100,215,\"%.1f\",1)\n  timing.enabled=GUI:Checkbox(\"Use slower-group adjustments\",timing.enabled==true)\n  for _,v in ipairs({{\"twinExtra\",\"Twintania extra seconds\"},{\"naelExtra\",\"Nael extra seconds\"},{\"addsExtra\",\"Adds extra seconds\"},{\"goldExtra\",\"Golden extra seconds\"}}) do\n   timing[v[1]]=GUI:SliderFloat(v[2],timing[v[1]] or 0,0,90,\"%.1f\",1)\n   if GUI:IsItemHovered() then GUI:SetTooltip(\"Extra time added to the existing phase estimate. Zero keeps the normal estimate. Does not stretch individual mechanics. Native phase events override estimates.\") end\n  end\n  local S=data.ucobAutoSim;local T=S and S.groupTiming\n  if T then GUI:Text(T.enabled and string.format(\"Active pull extras: Twin %.1f / Nael %.1f / Adds %.1f / Golden %.1f\",T.twinExtra,T.naelExtra,T.addsExtra,T.goldExtra) or \"Active pull: normal estimates\") end\n  GUI:TreePop()\n end\n if caster and GUI:TreeNode(\"Caster movement\") then\n  C.twisterLead=GUI:SliderFloat(\"Twister movement lead (s)\",C.twisterLead or 1,0,3,\"%.1f\",1)\n  C.twisterAfter=GUI:SliderFloat(\"Twister recovery (s)\",C.twisterAfter or 1,0,3,\"%.1f\",1)\n  C.exaDuration=GUI:SliderFloat(\"Exaflare movement duration (s)\",C.exaDuration or 8,0,12,\"%.1f\",1)\n  C.quoteMove=GUI:SliderFloat(\"Quote adjustment movement (s)\",C.quoteMove or 2,0,5,\"%.1f\",1)\n  C.assignmentMove=GUI:SliderFloat(\"Hatch / Earthshaker move (s)\",C.assignmentMove or 2,0,5,\"%.1f\",1)\n  C.returnMove=GUI:SliderFloat(\"Assignment return move (s)\",C.returnMove or 1.5,0,5,\"%.1f\",1)\n  GUI:Text(\"Movement estimates apply next pull. These forecasts do not move your character.\")\n  GUI:TreePop()\n end\n if melee and GUI:TreeNode(\"Melee Limit Break forecast\") then\n  C.lbWho=GUI:Combo(\"Who LBs\",C.lbWho or 1,{\"Me\",\"Other melee\"})\n  C.lbAt=GUI:SliderFloat(\"My LB: seconds after Golden\",C.lbAt or 150,5,200,\"%.1f\",1)\n  GUI:Text(\"Forecast only; does not automatically cast LB. Personal melee LB corrects the lock.\")\n  GUI:TreePop()\n end\n if Player.job==23 and GUI:TreeNode(\"Bard burst options\") then\n  C.reserveGrand=GUI:Checkbox(\"Reserve burst after Grand Octet\",C.reserveGrand~=false)\n  C.alignParty=GUI:Checkbox(\"Align with planned party burst\",C.alignParty==true)\n  C.burstWait=GUI:SliderFloat(\"Maximum burst wait (s)\",C.burstWait or 30,0,60,\"%.1f\",1)\n  GUI:TreePop()\n end\n if GUI:TreeNode(\"Planning preferences\") then\n  C.phoenixPriority=GUI:Checkbox(\"Prefer Phoenix-buffed Golden damage\",C.phoenixPriority==true)\n  if GUI:IsItemHovered() then GUI:SetTooltip(\"Optional artificial planning weight, not an additional real damage buff.\") end\n  C.buffForecast=GUI:Checkbox(\"Forecast future party buffs\",C.buffForecast==true)\n  C.buffGain=GUI:SliderFloat(\"Combined future buff gain (%)\",C.buffGain or 17,0,40,\"%.1f\",1)\n  GUI:Text(\"Role configuration is captured at pull setup; original live options retain their behaviour.\")\n  GUI:TreePop()\n end\nend\nGUI:End()",
							conditions = 
							{
								
								{
									"89932abd-0c1c-0701-bf09-e6b9fa5b77db",
									true,
								},
							},
							name = "AutoSim options",
							uuid = "29b1c794-3aa5-51e0-a7fb-4c39143b3eb1",
							version = 2.1,
						},
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
							uuid = "89932abd-0c1c-0701-bf09-e6b9fa5b77db",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Settings",
				eventType = 13,
				loop = true,
				mechanicTime = 7,
				name = "[UCOB] AutoSim options",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -80,
				uuid = "f9740c61-9197-aedd-80c1-9ea0aa3ded5c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Targeting and corrections",
				uuid = "08506cc0-c4b2-6906-bcb2-aeb3374d7c48",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobAutoSim\nif not S then return end\nlocal p=TensorCore.mGetPlayer()\nif not p or not p.alive then return end\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nif now<=0 then return end\nlocal twin,nael,baha=S.ent(1482),S.ent(2612),S.ent(3210)\nlocal desired,other\nif S.phase==1 then desired=twin\nelseif S.phase==2 then desired=nael\nelseif S.phase==3 or S.phase==5 then desired=baha\nelseif S.phase==4 then\n if S.alive(twin)and S.alive(nael)then\n  local current=TensorCore.mGetTarget()\n  desired=current and(current.id==twin.id or current.id==nael.id)and current or twin\n  if math.abs(twin.hp.percent-nael.hp.percent)>=3 then desired=twin.hp.percent>nael.hp.percent and twin or nael end\n  other=desired.id==twin.id and nael or twin\n elseif S.alive(twin)then desired=twin elseif S.alive(nael)then desired=nael end\nend\nlocal changed=S.phase==5 and S.killAt~=nil and now>=S.killAt-5\nif S.phase==5 then\n local phoenix=TensorCore.hasBuff(Player.id,1436)\n if S.phoenixActive~=phoenix then S.phoenixSeen=true;S.phoenixActive=phoenix;changed=true end\nend\nif S.alive(desired)then\n local t=TensorCore.mGetTarget()\n if not t or t.id~=desired.id then Player:SetTarget(desired.id);changed=true end\n if S.mainID~=desired.id then\n  S.mainID=desired.id;TensorCore.API.TensorACR.setAutoSimTarget(0,desired.id);changed=true\n end\nend\nif S.otherID~=(other and other.id)then\n S.otherID=other and other.id\n if other then TensorCore.API.TensorACR.setAutoSimTarget(1,other.id)else TensorCore.API.TensorACR.clearAutoSimTarget(1)end\n changed=true\nend\n-- Never freeze HP-driven death at a predicted time while the target is alive.\nlocal key=S.phase==1 and\"twinEnd\"or(S.phase==2 and\"naelEnd\"or(S.phase==4 and\"addsEnd\"))\nif key and not S.seen[key]and S.at(key)<=now+2 then\n local a=S.anchors[key];a[2]=now+10-S.at(a[1]);changed=true\nend\nif S.planRole==\"melee\" then\n-- Current forced separation permits Harpe; it does not stop all damage.\nif S.alive(desired)then\n local distance=TensorCore.getDistance2d(p.pos,desired.pos)-desired.hitradius-3\n local old=S.dynamic.range\n if distance>0.5 then\n  local finish=now+distance/6+.25\n  if not old or math.abs(old[3]-finish)>=.5 then S.dynamic.range={\"MeleeDowntime\",old and old[2]or now,finish};changed=true end\n elseif old then S.dynamic.range=nil;changed=true end\nelseif S.dynamic.range then S.dynamic.range=nil;changed=true end\nend\nif S.updateBurstHolds then S.updateBurstHolds(now) end\nif changed then S.publish();self.used=true end\n",
							conditions = 
							{
								
								{
									"f3e72d01-de63-01f3-8253-aecde82069ce",
									true,
								},
								
								{
									"75539220-a23e-5ae0-9fc2-37b9314bc67c",
									true,
								},
							},
							name = "Target and correct late phase estimates",
							uuid = "22cba041-2fc0-f2f9-a8d1-46fec337fef8",
							version = 2.1,
						},
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
							uuid = "f3e72d01-de63-01f3-8253-aecde82069ce",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.ucobAutoSim~=nil",
							name = "Configured",
							uuid = "75539220-a23e-5ae0-9fc2-37b9314bc67c",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Targeting and corrections",
				loop = true,
				mechanicTime = 7,
				name = "[UCOB] Target and correct late phase estimates",
				throttleTime = 300,
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -7,
				uuid = "5000f032-ac7e-ca26-bf76-bb46de1fe055",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Caster movement",
				uuid = "ac85a0ad-d193-53ea-afd4-9f79fd468539",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nS.personalMoves[\"marker118\"]={now,now+S.cfg.assignmentMove}\nS.pending118=true;S.publish();self.used=true",
							conditions = 
							{
								
								{
									"287bb189-bf33-863d-ba36-587c0f14e42e",
									true,
								},
								
								{
									"4bef50bf-ff11-dc37-b1b2-35b2fe6cd7a9",
									true,
								},
								
								{
									"58fd1e31-2f6d-0901-88f0-c21e8fe6a244",
									true,
								},
								
								{
									"e2231583-fd6c-41aa-b018-de29c19a141a",
									true,
								},
								
								{
									"66343b4a-eb81-5952-834e-d0888e63cf9f",
									true,
								},
							},
							name = "Personal Hatch movement",
							uuid = "dfbe6174-60b2-9cb1-9b73-b55430299168",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.ucobAutoSim\nreturn S~=nil and S.planRole==\"caster\"",
							dequeueIfLuaFalse = true,
							name = "Caster plan active",
							uuid = "4bef50bf-ff11-dc37-b1b2-35b2fe6cd7a9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 8,
							dequeueIfLuaFalse = true,
							localmapid = 733,
							name = "UCOB",
							uuid = "287bb189-bf33-863d-ba36-587c0f14e42e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventMarkerID = 118,
							name = "Hatch",
							uuid = "58fd1e31-2f6d-0901-88f0-c21e8fe6a244",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityID==Player.id",
							dequeueIfLuaFalse = true,
							name = "Personal marker",
							uuid = "e2231583-fd6c-41aa-b018-de29c19a141a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.ucobAutoSim~=nil",
							name = "Configured",
							uuid = "66343b4a-eb81-5952-834e-d0888e63cf9f",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Caster movement",
				eventType = 4,
				loop = true,
				mechanicTime = 7,
				name = "[UCOB] Personal Hatch movement",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -7,
				uuid = "53b396a6-36e7-7a1c-8304-d33006afdf27",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobAutoSim\nlocal p=TensorCore.mGetPlayer()\nlocal radius=eventArgs.spellID==9901 and 6 or 5\nlocal dx,dz=p.pos.x-eventArgs.castPosX,p.pos.z-eventArgs.castPosZ\nif dx*dx+dz*dz>(radius+.5)^2 then self.used=true;return end\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal kind=eventArgs.spellID==9901 and\"liquid\"or\"hypernova\"\nlocal old=S.personalMoves[kind]\nS.personalMoves[kind]={old and old[2]>now and old[1]or now,now+1.5};S.publish();self.used=true",
							conditions = 
							{
								
								{
									"4fc44fbd-a0fd-52a4-b11d-a292178d3b92",
									true,
								},
								
								{
									"4b001579-44bb-4dd0-910b-806c0e26135f",
									true,
								},
								
								{
									"67c8f263-de06-f2f7-9c39-53dc7ed0d334",
									true,
								},
								
								{
									"48bf969a-147e-1b55-9ab8-eb32d6108661",
									true,
								},
								
								{
									"98de2d6b-db95-843e-8f59-9097f3d5a3fc",
									true,
								},
							},
							name = "Nearby puddle movement",
							uuid = "fecf51fe-1c3d-d683-b523-0c8595fb125d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.ucobAutoSim\nreturn S~=nil and S.planRole==\"caster\"",
							dequeueIfLuaFalse = true,
							name = "Caster plan active",
							uuid = "4b001579-44bb-4dd0-910b-806c0e26135f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 8,
							dequeueIfLuaFalse = true,
							localmapid = 733,
							name = "UCOB",
							uuid = "4fc44fbd-a0fd-52a4-b11d-a292178d3b92",
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
							name = "Mechanic casts",
							spellIDList = 
							{
								9901,
								9919,
							},
							uuid = "67c8f263-de06-f2f7-9c39-53dc7ed0d334",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.castPosX~=nil and eventArgs.castPosZ~=nil",
							dequeueIfLuaFalse = true,
							name = "Ground position available",
							uuid = "48bf969a-147e-1b55-9ab8-eb32d6108661",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.ucobAutoSim~=nil",
							name = "Configured",
							uuid = "98de2d6b-db95-843e-8f59-9097f3d5a3fc",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Caster movement",
				eventType = 2,
				loop = true,
				mechanicTime = 7,
				name = "[UCOB] Nearby puddle movement",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -7,
				uuid = "7c638020-ca46-9928-85c7-9b6ef92b5188",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nS.personalMoves[\"marker40\"]={now,now+S.cfg.assignmentMove}\nS.pending40=true;S.publish();self.used=true",
							conditions = 
							{
								
								{
									"cee5b308-ca34-c8af-a2b2-f684367c6034",
									true,
								},
								
								{
									"c1ff5de6-5997-ee37-a089-f3a01b201a17",
									true,
								},
								
								{
									"98d8a8d9-1c77-def4-bea8-a3ce8be20afe",
									true,
								},
								
								{
									"fff92185-080a-2949-a59f-bd3df124a85c",
									true,
								},
								
								{
									"bf9b79db-8a99-bf4a-849f-f5e7a084e002",
									true,
								},
							},
							name = "Personal Earthshaker movement",
							uuid = "bcab9996-684e-eaca-be60-46d85eacd737",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.ucobAutoSim\nreturn S~=nil and S.planRole==\"caster\"",
							dequeueIfLuaFalse = true,
							name = "Caster plan active",
							uuid = "c1ff5de6-5997-ee37-a089-f3a01b201a17",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 8,
							dequeueIfLuaFalse = true,
							localmapid = 733,
							name = "UCOB",
							uuid = "cee5b308-ca34-c8af-a2b2-f684367c6034",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventMarkerID = 40,
							name = "Earthshaker",
							uuid = "98d8a8d9-1c77-def4-bea8-a3ce8be20afe",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityID==Player.id",
							dequeueIfLuaFalse = true,
							name = "Personal marker",
							uuid = "fff92185-080a-2949-a59f-bd3df124a85c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.ucobAutoSim~=nil",
							name = "Configured",
							uuid = "bf9b79db-8a99-bf4a-849f-f5e7a084e002",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Caster movement",
				eventType = 4,
				loop = true,
				mechanicTime = 7,
				name = "[UCOB] Personal Earthshaker movement",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -7,
				uuid = "ddd81c05-4deb-8140-a7b3-51b65a5c80d6",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal finish=now+eventArgs.channelTimeMax+.3\nS.correctMovement(eventArgs.spellID==9898 and \"twister\"or\"exa\",finish)\nself.used=true",
							conditions = 
							{
								
								{
									"3563589a-932e-c622-9610-a9997179fd3e",
									true,
								},
								
								{
									"43854262-be5c-dad6-b37a-20130c937b8a",
									true,
								},
								
								{
									"9a9c0e2b-4c08-5b6d-bc9e-39089ba329c9",
									true,
								},
								
								{
									"0815b23e-eb94-e29d-b488-a235468de4fa",
									true,
								},
							},
							name = "Correct Twister and Exaflare movement",
							uuid = "c90ba189-cc82-e8ce-ac85-df4da6572d53",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.ucobAutoSim\nreturn S~=nil and S.planRole==\"caster\"",
							dequeueIfLuaFalse = true,
							name = "Caster plan active",
							uuid = "43854262-be5c-dad6-b37a-20130c937b8a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 8,
							dequeueIfLuaFalse = true,
							localmapid = 733,
							name = "UCOB",
							uuid = "3563589a-932e-c622-9610-a9997179fd3e",
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
							name = "Mechanic casts",
							spellIDList = 
							{
								9898,
								9967,
							},
							uuid = "9a9c0e2b-4c08-5b6d-bc9e-39089ba329c9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.ucobAutoSim~=nil",
							name = "Configured",
							uuid = "0815b23e-eb94-e29d-b488-a235468de4fa",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Caster movement",
				eventType = 3,
				loop = true,
				mechanicTime = 7,
				name = "[UCOB] Correct Twister and Exaflare movement",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -7,
				uuid = "3dcd7822-0dd4-027a-a0db-ad49b87c1c5f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal kind=eventArgs.spellID==9898 and \"twister\"or\"exa\"\nlocal best,delta\nfor key,t in pairs(S.moveActual)do\n if (kind==\"twister\"and key:find(\"Twister\")or kind==\"exa\"and key:find(\"exa\"))then\n  local d=math.abs(now-t);if not delta or d<delta then best,delta=key,d end\n end\nend\nif best and delta<3 then S.moveActual[best]=now;S.publish()else S.correctMovement(kind,now)end\nself.used=true",
							conditions = 
							{
								
								{
									"4ee96222-1882-e0c9-9365-d86323793536",
									true,
								},
								
								{
									"ca80647b-dff8-8634-b66c-332abe0df569",
									true,
								},
								
								{
									"8b002d52-4af7-e41a-a77b-ebd48399f02a",
									true,
								},
								
								{
									"82868ca2-065d-e9e7-bb57-d98d048589dd",
									true,
								},
							},
							name = "Confirm movement cast resolution",
							uuid = "b83b361a-7ea0-9e88-8f1d-9cecacd8351f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.ucobAutoSim\nreturn S~=nil and S.planRole==\"caster\"",
							dequeueIfLuaFalse = true,
							name = "Caster plan active",
							uuid = "ca80647b-dff8-8634-b66c-332abe0df569",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 8,
							dequeueIfLuaFalse = true,
							localmapid = 733,
							name = "UCOB",
							uuid = "4ee96222-1882-e0c9-9365-d86323793536",
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
							name = "Mechanic casts",
							spellIDList = 
							{
								9898,
								9967,
							},
							uuid = "8b002d52-4af7-e41a-a77b-ebd48399f02a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.ucobAutoSim~=nil",
							name = "Configured",
							uuid = "82868ca2-065d-e9e7-bb57-d98d048589dd",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Caster movement",
				eventType = 2,
				loop = true,
				mechanicTime = 7,
				name = "[UCOB] Confirm movement cast resolution",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -7,
				uuid = "47a299e5-bf7c-8c32-85c0-78a6576999b6",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobAutoSim\nlocal marker=eventArgs.spellID==9903 and 118 or 40\nlocal key=\"pending\"..marker\nif not S[key]then self.used=true;return end\nS[key]=nil\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nS.personalMoves[\"return\"..marker]={now,now+S.cfg.returnMove};S.publish();self.used=true",
							conditions = 
							{
								
								{
									"13445c8c-fb53-0818-b979-b353ae9102fe",
									true,
								},
								
								{
									"078d520a-30cd-7299-85d0-c078d5520a8d",
									true,
								},
								
								{
									"57695e8d-879d-f85d-a42c-4a4b1afebbce",
									true,
								},
								
								{
									"8f38b818-8052-f0c2-aa09-37ddf709bdb5",
									true,
								},
								
								{
									"47fc685c-12e3-bb6c-87d7-2fcab759b407",
									true,
								},
							},
							name = "Personal assignment return movement",
							uuid = "df73fcc1-4de2-c9a9-a98d-f0c7f438e149",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.ucobAutoSim\nreturn S~=nil and S.planRole==\"caster\"",
							dequeueIfLuaFalse = true,
							name = "Caster plan active",
							uuid = "078d520a-30cd-7299-85d0-c078d5520a8d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 8,
							dequeueIfLuaFalse = true,
							localmapid = 733,
							name = "UCOB",
							uuid = "13445c8c-fb53-0818-b979-b353ae9102fe",
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
							name = "Mechanic casts",
							spellIDList = 
							{
								9903,
								9946,
							},
							uuid = "57695e8d-879d-f85d-a42c-4a4b1afebbce",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "for _,id in ipairs(eventArgs.hitTargets)do if id==Player.id then return true end end\nreturn false",
							dequeueIfLuaFalse = true,
							name = "Hits player",
							uuid = "8f38b818-8052-f0c2-aa09-37ddf709bdb5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.ucobAutoSim~=nil",
							name = "Configured",
							uuid = "47fc685c-12e3-bb6c-87d7-2fcab759b407",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Caster movement",
				eventType = 2,
				loop = true,
				mechanicTime = 7,
				name = "[UCOB] Personal assignment return movement",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -7,
				uuid = "ac928c5c-b8e6-1b0d-94c4-0e347a8e9a94",
				version = 2,
			},
		},
	},
	[48] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "d77ec2fd-b450-3339-af59-338c2b300b5e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Caster movement",
				uuid = "2e966da6-1054-8d88-be02-8d2112f64fa5",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal text=eventArgs.line.line\nS.quote={text=text,seq=S.quoteSequence(text),step=1,nextHit=now+5.1,expires=now+20}\nS.planQuote();self.used=true",
							conditions = 
							{
								
								{
									"285f506a-9f96-1960-a1f3-34964af2a461",
									true,
								},
								
								{
									"a42a2f9e-0004-3347-9965-ae8ece10ee0a",
									true,
								},
								
								{
									"c58257bc-2e6f-6694-bfc6-a62e65a8e781",
									true,
								},
								
								{
									"0f73dc85-8dfa-c0ec-a0fe-21b6c888aac7",
									true,
								},
							},
							name = "Forecast personal quote movement",
							uuid = "5d6cdc82-2642-f5ee-8878-a19c93cde432",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.ucobAutoSim\nreturn S~=nil and S.planRole==\"caster\"",
							dequeueIfLuaFalse = true,
							name = "Caster plan active",
							uuid = "a42a2f9e-0004-3347-9965-ae8ece10ee0a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 8,
							dequeueIfLuaFalse = true,
							localmapid = 733,
							name = "UCOB",
							uuid = "285f506a-9f96-1960-a1f3-34964af2a461",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.ucobAutoSim\nreturn S~=nil and S.phase==2",
							dequeueIfLuaFalse = true,
							name = "P2 configured",
							uuid = "c58257bc-2e6f-6694-bfc6-a62e65a8e781",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.ucobAutoSim\nlocal text=eventArgs.line.line\nlocal q=S.quote\nreturn S.quoteSequence(text)~=nil and(not q or q.text~=text or TensorCore.API.TensorACR.getAutoSimTime()>=q.expires)",
							dequeueIfLuaFalse = true,
							name = "New recognized quote",
							uuid = "0f73dc85-8dfa-c0ec-a0fe-21b6c888aac7",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Caster movement",
				eventType = 7,
				loop = true,
				mechanicTime = 230.6,
				name = "[UCOB] Forecast personal quote movement",
				timeRange = true,
				timelineIndex = 48,
				timerEndOffset = 220,
				timerStartOffset = -35,
				uuid = "f9ebf26a-6461-10a4-a5af-14729f704d36",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobAutoSim\nlocal q=S.quote\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nq.previous=S.quoteCategory(q.seq[q.step]);q.step=q.step+1;q.nextHit=now+3.1\nS.planQuote();self.used=true",
							conditions = 
							{
								
								{
									"a5b99935-7503-3760-84ab-24cd05481446",
									true,
								},
								
								{
									"0ba9f31b-1d87-06de-824d-bb644c682405",
									true,
								},
								
								{
									"d12a77dd-c482-b914-9992-e4f9f2529596",
									true,
								},
								
								{
									"7cb2d760-8577-78e2-8c9c-370bf0183057",
									true,
								},
								
								{
									"5f48f686-3d1d-f2fc-bb23-fd39b2c5f96a",
									true,
								},
							},
							name = "Correct remaining quote movement",
							uuid = "8c7c9e6e-8ac7-5634-a37a-67d76b01729c",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.ucobAutoSim\nreturn S~=nil and S.planRole==\"caster\"",
							dequeueIfLuaFalse = true,
							name = "Caster plan active",
							uuid = "0ba9f31b-1d87-06de-824d-bb644c682405",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 8,
							dequeueIfLuaFalse = true,
							localmapid = 733,
							name = "UCOB",
							uuid = "a5b99935-7503-3760-84ab-24cd05481446",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.ucobAutoSim\nreturn S~=nil and S.phase==2",
							dequeueIfLuaFalse = true,
							name = "P2 configured",
							uuid = "d12a77dd-c482-b914-9992-e4f9f2529596",
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
							name = "Quote resolution",
							spellIDList = 
							{
								9915,
								9916,
								9917,
								9918,
								9920,
							},
							uuid = "7cb2d760-8577-78e2-8c9c-370bf0183057",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.ucobAutoSim\nlocal q=S.quote\nreturn q~=nil and TensorCore.API.TensorACR.getAutoSimTime()<q.expires and q.seq[q.step]==eventArgs.spellID",
							dequeueIfLuaFalse = true,
							name = "Expected quote step",
							uuid = "5f48f686-3d1d-f2fc-bb23-fd39b2c5f96a",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Caster movement",
				eventType = 2,
				loop = true,
				mechanicTime = 230.6,
				name = "[UCOB] Correct remaining quote movement",
				timeRange = true,
				timelineIndex = 48,
				timerEndOffset = 220,
				timerStartOffset = -35,
				uuid = "2524d1eb-3764-16e7-89ae-04c00a823818",
				version = 2,
			},
		},
	},
	[152] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "244eac08-41ef-398d-b05e-f28a054407aa",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Bard options",
				uuid = "973642fa-213b-4a91-afc0-f5445474ff1d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobAutoSim\nS.octetSeen=true\nS.updateBurstHolds(TensorCore.API.TensorACR.getAutoSimTime())\nself.used=true",
							conditions = 
							{
								
								{
									"32da2904-f2a4-c81b-8ee0-0f4b16ed0d66",
									true,
								},
								
								{
									"e97c9e0a-073b-f426-a333-af31b40510e1",
									true,
								},
								
								{
									"99173390-483a-fab3-8a4e-38448cb8739e",
									true,
								},
								
								{
									"4fdaf691-9459-cb98-b8cc-a17dd494e966",
									true,
								},
							},
							name = "Start optional reservation",
							uuid = "832203f0-ac97-bf0a-beff-d6219e4075f0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								23,
							},
							name = "Bard only",
							uuid = "32da2904-f2a4-c81b-8ee0-0f4b16ed0d66",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 8,
							dequeueIfLuaFalse = true,
							localmapid = 733,
							name = "UCOB",
							uuid = "e97c9e0a-073b-f426-a333-af31b40510e1",
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
							uuid = "99173390-483a-fab3-8a4e-38448cb8739e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.ucobAutoSim\nreturn S~=nil and S.phase==3",
							dequeueIfLuaFalse = true,
							name = "P3 configured",
							uuid = "4fdaf691-9459-cb98-b8cc-a17dd494e966",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Bard options",
				eventType = 3,
				loop = true,
				mechanicTime = 789.4,
				name = "[UCOB] Bard Grand Octet burst reservation",
				timeRange = true,
				timelineIndex = 152,
				timerEndOffset = 100,
				timerStartOffset = -15,
				uuid = "1f3e4208-281e-d8e0-b1c2-af05e9e7962e",
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
				name = "AutoSim",
				uuid = "34e12f94-9507-9dbd-bcc1-c2a87e2c0a4f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Encounter events",
				uuid = "20225b66-2798-d8cf-9723-6fcc75337b9c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobAutoSim\nS.phoenixSeen=true;S.phoenixActive=true\nif S.phase==4 and(S.teraflareSeen or S.seen.addsEnd)then S.beginGolden(TensorCore.API.TensorACR.getAutoSimTime())end\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"20a19e91-e762-73c3-93ad-6e3deb0d3113",
									true,
								},
								
								{
									"b3142406-fe84-c7dc-be77-e85644fc56cf",
									true,
								},
								
								{
									"a8600fae-7430-ee1d-a9a3-4537f24975c9",
									true,
								},
							},
							name = "Correct Phoenix phase priority",
							uuid = "3b316a7b-7469-bb6e-ab4e-35da4b63d308",
							version = 2.1,
						},
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
							uuid = "20a19e91-e762-73c3-93ad-6e3deb0d3113",
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
							uuid = "b3142406-fe84-c7dc-be77-e85644fc56cf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityID==Player.id and data.ucobAutoSim~=nil",
							dequeueIfLuaFalse = true,
							name = "Personal blessing",
							uuid = "a8600fae-7430-ee1d-a9a3-4537f24975c9",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Encounter events",
				eventType = 8,
				loop = true,
				mechanicTime = 1200,
				name = "[UCOB] Observe personal Phoenix Blessing",
				timeRange = true,
				timelineIndex = 190,
				timerEndOffset = 300,
				timerStartOffset = -30,
				uuid = "acd90d6b-807c-96a9-8d69-69de0c8bc18b",
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
				name = "AutoSim",
				uuid = "daa9de5f-c155-ef24-ae51-6bb75fac3433",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Limit Break forecasts",
				uuid = "6011fccf-bf15-2814-9fcf-5186f3e58460",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobAutoSim\nlocal p=TensorCore.mGetPlayer()\nif not p then return end\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal elapsed=now-S.lbStarted;local c=p.castinginfo\nlocal lbs={[202]=true,[4242]=true,[4243]=true,[7861]=true,[24858]=true,[34866]=true}\nif lbs[c.castingid] or lbs[c.channelingid] then return end\nif elapsed<.5 or(elapsed>=4.25 and elapsed<5.25 and p.alive)then return end\nif elapsed>=4.25 and p.alive and lbs[c.lastcastid] then\n S.lbCompleted=true;S.dynamic.lb={\"Stun\",S.lbStarted,S.lbStarted+8.2}\nelse S.lbCancelled=true;S.dynamic.lb=nil end\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"6b959291-a30c-4de1-b46c-ffed7f4dfcf4",
									true,
								},
								
								{
									"5ebb6982-a3f6-e510-9df3-c4a74d3d8556",
									true,
								},
								
								{
									"97b0b535-6304-738c-a260-ffc85d39ba1e",
									true,
								},
							},
							name = "Clear cancelled personal LB",
							uuid = "ada9fabd-2558-a335-9860-6fdaeae88082",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								20,
								22,
								30,
								34,
								39,
								41,
							},
							name = "Melee DPS",
							uuid = "5ebb6982-a3f6-e510-9df3-c4a74d3d8556",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 8,
							dequeueIfLuaFalse = true,
							localmapid = 733,
							name = "UCOB",
							uuid = "6b959291-a30c-4de1-b46c-ffed7f4dfcf4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.ucobAutoSim\nreturn S~=nil and S.lbStarted~=nil and not S.lbCompleted and not S.lbCancelled",
							name = "LB pending",
							uuid = "97b0b535-6304-738c-a260-ffc85d39ba1e",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Limit Break forecasts",
				loop = true,
				mechanicTime = 1251.1,
				name = "[UCOB] Clear cancelled personal LB",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 194,
				timerEndOffset = 220,
				timerStartOffset = -12,
				uuid = "72c7182c-ad03-edb7-a649-675766290f5d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nS.lbObserved=true;S.lbCompleted=true\nS.dynamic.lb={\"Stun\",S.lbStarted or now-4.5,now+3.7};S.publish();self.used=true",
							conditions = 
							{
								
								{
									"d2058d2d-eaaa-9fef-a9e9-cedab3aa1ecd",
									true,
								},
								
								{
									"0b9f5f6e-9657-ad6b-8d30-c0c554503408",
									true,
								},
								
								{
									"87c62a15-dd78-58f9-b575-bafbd3ef1ed3",
									true,
								},
								
								{
									"e1483587-60de-f106-abb0-7255c46b5f46",
									true,
								},
							},
							name = "Personal melee LB lbfinish",
							uuid = "c8eff877-83e9-a3f0-b468-c4940b548348",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								20,
								22,
								30,
								34,
								39,
								41,
							},
							name = "Melee DPS",
							uuid = "0b9f5f6e-9657-ad6b-8d30-c0c554503408",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 8,
							dequeueIfLuaFalse = true,
							localmapid = 733,
							name = "UCOB",
							uuid = "d2058d2d-eaaa-9fef-a9e9-cedab3aa1ecd",
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
							name = "Melee LB3",
							spellIDList = 
							{
								202,
								4242,
								4243,
								7861,
								24858,
								34866,
							},
							uuid = "87c62a15-dd78-58f9-b575-bafbd3ef1ed3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityID==Player.id and data.ucobAutoSim~=nil",
							dequeueIfLuaFalse = true,
							name = "Personal LB",
							uuid = "e1483587-60de-f106-abb0-7255c46b5f46",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Limit Break forecasts",
				eventType = 2,
				loop = true,
				mechanicTime = 1251.1,
				name = "[UCOB] Personal melee LB lbfinish",
				timeRange = true,
				timelineIndex = 194,
				timerEndOffset = 220,
				timerStartOffset = -12,
				uuid = "cb2b175f-c9c3-d8b6-a11e-212602033814",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nS.lbObserved=true;S.lbStarted=now;S.lbCompleted=nil;S.lbCancelled=nil\nS.dynamic.lb={\"Stun\",now,now+8.2};S.publish();self.used=true",
							conditions = 
							{
								
								{
									"7225ac25-7644-cc75-b2f1-33e8dd3bb5d0",
									true,
								},
								
								{
									"0fe6dc99-194a-afb6-9f16-03574d390b3a",
									true,
								},
								
								{
									"dc71793a-2aa7-b6e3-a930-edd435410dfa",
									true,
								},
								
								{
									"208eb4b2-3559-ed2c-a219-b6c0a7e8ad11",
									true,
								},
							},
							name = "Personal melee LB lbstart",
							uuid = "e4aab817-61c3-c037-8816-1bfac64b141c",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								20,
								22,
								30,
								34,
								39,
								41,
							},
							name = "Melee DPS",
							uuid = "0fe6dc99-194a-afb6-9f16-03574d390b3a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 8,
							dequeueIfLuaFalse = true,
							localmapid = 733,
							name = "UCOB",
							uuid = "7225ac25-7644-cc75-b2f1-33e8dd3bb5d0",
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
							name = "Melee LB3",
							spellIDList = 
							{
								202,
								4242,
								4243,
								7861,
								24858,
								34866,
							},
							uuid = "dc71793a-2aa7-b6e3-a930-edd435410dfa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityID==Player.id and data.ucobAutoSim~=nil",
							dequeueIfLuaFalse = true,
							name = "Personal LB",
							uuid = "208eb4b2-3559-ed2c-a219-b6c0a7e8ad11",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Limit Break forecasts",
				eventType = 3,
				loop = true,
				mechanicTime = 1251.1,
				name = "[UCOB] Personal melee LB lbstart",
				timeRange = true,
				timelineIndex = 194,
				timerEndOffset = 220,
				timerStartOffset = -12,
				uuid = "3eb6d7c8-64e1-d797-9633-8bb04126b43e",
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
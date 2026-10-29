local tbl = 
{
	[2] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "20c5ee4e-df0d-bcd2-441d-caf49a95431e",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Set Toggles",
				uuid = "bff399bf-75b9-1e46-b7ad-440eec3573eb",
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
				name = "BLM AutoSim",
				uuid = "841b756b-1e0b-e073-91bb-4d180700f443",
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
							actionLua = "local A=TensorCore.API.TensorACR\nlocal C=_G.UCOB_BLM_Config\nif not C then C={goldLength=162.14,addsLength=100.222,buffForecast=false,buffGain=0,twisterLead=1.0,twisterAfter=1.0,exaDuration=8,assignmentMove=2,returnMove=1.5};_G.UCOB_BLM_Config=C end\nif C.quoteMove==nil then C.quoteMove=2 end\nlocal S={version=1,phase=1,seen={},ids={},up={},dynamic={},cfg={},dotStart={},ends={}}\nfor k,v in pairs(C)do S.cfg[k]=v end\nS.anchors={\n twinEnd={\"pull\",128.352},nael={\"twinEnd\",21.968},naelEnd={\"nael\",115.307},baha={\"naelEnd\",16.333},\n off1={\"baha\",23.449},on1={\"off1\",11.534},off2={\"on1\",29.533},on2={\"off2\",16.557},\n off3={\"on2\",34.636},on3={\"off3\",16.517},off4={\"on3\",35.834},on4={\"off4\",27.560},\n off5={\"on4\",33.712},on5={\"off5\",19.376},off6={\"on5\",37.626},adds={\"off6\",53.754},\n addsEnd={\"adds\",S.cfg.addsLength},gold={\"addsEnd\",62.323}}\nfunction S.at(k)\n if k==\"pull\"then return 0 end\n if S.seen[k]then return S.seen[k]end\n local a=S.anchors[k];return S.at(a[1])+a[2]\nend\nfunction S.union(xs)\n table.sort(xs,function(a,b)return a[1]<b[1]end)\n local out={}\n for _,v in ipairs(xs)do\n  local last=out[#out]\n  if last and v[1]<=last[2]then last[2]=math.max(last[2],v[2])else out[#out+1]={v[1],v[2]}end\n end\n return out\nend\nfunction S.alive(e)return e and e.alive and e.targetable and e.hp.current>1 end\nfunction S.ent(cid)return S.ids[cid]and TensorCore.mGetEntity(S.ids[cid])end\n\nS.movePred={{\"firstTwister\",\"pull\",12.99,\"twister\"},{\"addsTwister1\",\"adds\",24.34,\"twister\"},{\"addsTwister2\",\"adds\",41.487,\"twister\"},{\"addsTwister3\",\"adds\",87.071,\"twister\"},{\"addsTwister4\",\"adds\",104.096,\"twister\"},{\"exa1\",\"gold\",24.549,\"exa\"},{\"exa2\",\"gold\",73.276,\"exa\"},{\"exa3\",\"gold\",123.05,\"exa\"},{\"exa4\",\"gold\",174.689,\"exa\"}}\nS.moveActual={};S.personalMoves={}\nfunction S.movementWindows()\n local out={}\n for _,p in ipairs(S.movePred)do\n  local center=S.moveActual[p[1]]or S.at(p[2])+p[3]\n  local a,b\n  if p[4]==\"twister\"then a,b=center-S.cfg.twisterLead,center+S.cfg.twisterAfter\n  else a,b=center-.5,center+S.cfg.exaDuration end\n  if p[2]==\"adds\"then b=math.min(b,S.at(\"addsEnd\"))end\n  if p[2]~=\"pull\"or not S.seen.twinEnd or center<S.seen.twinEnd then\n   if b>a then out[#out+1]={a,b}end\n  end\n end\n for _,v in pairs(S.personalMoves)do if v[2]>v[1]then out[#out+1]={v[1],v[2]}end end\n return S.union(out)\nend\nfunction S.correctMovement(kind,finish)\n local best,delta\n for _,p in ipairs(S.movePred)do\n  if p[4]==kind and not S.moveActual[p[1]]and ((p[2]==\"pull\"and S.phase==1)or(p[2]==\"adds\"and S.phase==4)or(p[2]==\"gold\"and S.phase==5))then\n   local d=math.abs(finish-S.at(p[2])-p[3]);if not delta or d<delta then best,delta=p[1],d end\n  end\n end\n if best and delta<8 then S.moveActual[best]=finish\n else S.personalMoves[kind..\"Extra\"]={finish-(kind==\"twister\"and S.cfg.twisterLead or .5),finish+(kind==\"twister\"and S.cfg.twisterAfter or S.cfg.exaDuration)}end\n S.publish()\nend\n\nfunction S.quoteSequence(text)\nlocal t=text:gsub(\"%s+\",\" \")\nlocal seq=nil\nif t:find(\"O hallowed moon, shine you the iron path\",1,true) then seq={9916,9915}\nelseif t:find(\"O hallowed moon, take fire and scorch my foes\",1,true) then seq={9916,9917}\nelseif t:find(\"Take fire, O hallowed moon\",1,true) then seq={9917,9916}\nelseif t:find(\"Blazing path, lead me to iron rule\",1,true) then seq={9917,9915}\nelseif t:find(\"From on high I descend, the hallowed moon to call\",1,true) then seq={9918,9916}\nelseif t:find(\"From on high I descend, the iron path to walk\",1,true) then seq={9918,9915}\nelseif t:find(\"From on high I descend, the iron path to call\",1,true) then seq={9918,9915}\nelseif t:find(\"From on high I descend, the moon and stars to bring\",1,true) then seq={9918,9916,9920}\nelseif t:find(\"From hallowed moon I descend, a rain of stars to bring\",1,true) then seq={9916,9918,9920}\nelseif t:find(\"From hallowed moon I descend, upon burning earth to tread\",1,true) then seq={9916,9918,9917}\nelseif t:find(\"From hallowed moon I bare iron, in my descent to wield\",1,true) then seq={9916,9915,9918}\nelseif t:find(\"Unbending iron, take fire and descend\",1,true) then seq={9915,9917,9918}\nelseif t:find(\"Unbending iron, descend with fiery edge\",1,true) then seq={9915,9918,9917}\nend\n return seq\nend\nfunction S.quoteCategory(id)\n if id==9916 or id==9917 then return \"in\"elseif id==9915 then return \"out\"else return \"spread\"end\nend\nfunction S.planQuote()\n local q=S.quote\n if not q then return end\n for i=1,3 do S.personalMoves[\"quote\"..i]=nil end\n local previous=q.previous\n local p=TensorCore.mGetPlayer();local n=S.ent(2612)\n for i=q.step,#q.seq do\n  local cat=S.quoteCategory(q.seq[i]);local hit=q.nextHit+(i-q.step)*3.1\n  local move=previous~=cat\n  if not previous and p and n then\n   local distance=TensorCore.getDistance2d(p.pos,n.pos)\n   if(cat==\"in\"and distance<=4)or(cat==\"out\"and distance>=10)then move=false end\n  end\n  if move then\n   local duration=S.cfg.quoteMove\n   local a=previous and hit-3.0 or hit-duration-.2\n   S.personalMoves[\"quote\"..i]={a,math.min(a+duration,hit-.1)}\n  end\n  previous=cat\n end\n S.publish()\nend\n\nfunction S.publish()\n local now=A.getAutoSimTime()\n local live=_G.UCOB_BLM_Config\n if live then for k,v in pairs(live)do S.cfg[k]=v end end\n local kill=math.min(1259,math.max(now+10,S.at(\"gold\")+S.cfg.goldLength))\n S.killAt=kill;A.setAutoSimKillTime(kill)\n local gaps={{S.at(\"twinEnd\"),S.at(\"nael\")},{S.at(\"naelEnd\"),S.at(\"baha\")},{S.at(\"off6\"),S.at(\"adds\")},{S.at(\"addsEnd\"),S.at(\"gold\")}}\n for i=1,5 do\n  local a,b=S.at(\"off\"..i),S.at(\"on\"..i)\n  if S.seen.adds then b=math.min(b,S.seen.adds)end\n  if b>a then gaps[#gaps+1]={a,b}end\n end\n local valid={};for _,g in ipairs(gaps)do if g[2]>g[1]then valid[#valid+1]=g end end;gaps=valid\n if S.naelGap then gaps[#gaps+1]={S.naelGap[1],S.naelGap[2]or now+6}end\n A.clearAutoSimPhases(\"FullDowntime\")\n for _,g in ipairs(S.union(gaps))do if g[2]>g[1]then A.addAutoSimPhase(\"FullDowntime\",g[1],g[2])end end\n local stun={}\n for _,g in pairs(S.dynamic)do if g[1]==\"Stun\"then stun[#stun+1]={g[2],g[3]}end end\n A.clearAutoSimPhases(\"Stun\")\n for _,g in ipairs(S.union(stun))do if g[2]>g[1]then A.addAutoSimPhase(\"Stun\",g[1],g[2])end end\n A.clearAutoSimPhases(\"CasterDowntime\")\n for _,g in ipairs(S.movementWindows())do A.addAutoSimPhase(\"CasterDowntime\",g[1],g[2])end\n -- Phoenix1436 is +100% real personal damage. Normalize planning weights\n -- so current actual buffs are not multiplied by another authored x2.\n A.clearAutoSimPhases(\"BossModifier\")\n local gold=S.at(\"gold\")\n if gold>0 then A.addAutoSimPhase(\"BossModifier\",0,gold,.5)end\n if S.phase==5 and S.phoenixSeen and not S.phoenixActive then\n  A.addAutoSimPhase(\"BossModifier\",gold,kill,.5)\n end\n A.clearAutoSimPhases(\"RaidBuff\")\n if S.cfg.buffForecast then\n  local prev=-120\n  for _,t in ipairs({5,S.at(\"nael\")+2,S.at(\"baha\")+2,S.at(\"on3\")+2,S.at(\"adds\")+2,S.at(\"gold\")+2,S.at(\"gold\")+122})do\n   t=math.max(t,prev+120);A.addAutoSimPhase(\"RaidBuff\",t,t+20,1+S.cfg.buffGain/100);prev=t\n  end\n end\n -- Slot 0 tracks the selected main boss; slot 1 tracks the other adds boss.\n -- Lifetimes survive temporary untargetability. Golden starts a fresh target-state lifetime.\n local start,finish=0,S.at(\"twinEnd\")\n if S.phase==2 then start,finish=S.at(\"nael\"),S.at(\"naelEnd\")\n elseif S.phase==3 then start,finish=S.at(\"baha\"),S.at(\"adds\")\n elseif S.phase==4 then start,finish=S.at(\"adds\"),S.at(\"addsEnd\")\n elseif S.phase==5 then start,finish=S.at(\"gold\"),kill end\n finish=math.max(finish,now+5)\n for slot=0,1 do\n  A.clearAutoSimPhases(\"DotAvailability\",slot);A.clearAutoSimPhases(\"DotAvailability\",slot,1);A.clearAutoSimPhases(\"TargetLifetime\",slot)\n  if slot==0 or S.phase==4 then\n   local id=slot==0 and S.mainID or S.otherID\n   local death=id and S.ends[id]\n   local ending=death or finish\n   if ending>start then\n    A.addAutoSimPhase(\"TargetLifetime\",start,ending,1,slot)\n    local cursor=start\n    for _,g in ipairs(S.union(gaps))do\n     local a,b=math.max(start,g[1]),math.min(ending-.5,g[2])\n     if b>a then if a>cursor then A.addAutoSimPhase(\"DotAvailability\",cursor,a,1,slot);if slot==0 then A.addAutoSimPhase(\"DotAvailability\",cursor,a,1,slot,1)end end;cursor=math.max(cursor,b)end\n    end\n    if ending-.5>cursor then A.addAutoSimPhase(\"DotAvailability\",cursor,ending-.5,1,slot);if slot==0 then A.addAutoSimPhase(\"DotAvailability\",cursor,ending-.5,1,slot,1)end end\n   end\n  end\n end\n A.clearAutoSimUncertainty()\n A.addAutoSimUncertainty(0,S.phase>=3 and 3 or 20)\n if not S.seen.addsEnd then A.addAutoSimUncertainty(math.max(1,S.at(\"addsEnd\")-25),20)end\n A.addAutoSimUncertainty(math.max(2,S.at(\"gold\")+S.cfg.goldLength-30),15)\n S.lastPublish=now\nend\nfunction S.sync(k,t)\n if S.seen[k]then return end\n S.seen[k]=t;S.publish()\nend\nfor _,cid in ipairs({1482,2612,3210})do\n for _,e in pairs(TensorCore.getEntityGroupList(\"ContentID\",cid)or{})do\n  if e.alive then S.ids[cid]=e.id;S.up[cid]=e.targetable;break end\n end\nend\nS.publish()\ndata.ucobBLMAutoSim=S\nself.used=true\n",
							conditions = 
							{
								
								{
									"d2597155-701b-7fc8-97c0-2637073e1877",
									true,
								},
								
								{
									"6f7f8c17-e89c-9ba5-8601-a7d640da8fc0",
									true,
								},
								
								{
									"b517d089-a62c-137e-a85d-a07a31a1ffcd",
									true,
								},
							},
							name = "Configure forecast",
							uuid = "7c28c513-b62f-c954-8b3f-079e01086c4d",
							version = 2.1,
						},
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
							uuid = "d2597155-701b-7fc8-97c0-2637073e1877",
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
							uuid = "6f7f8c17-e89c-9ba5-8601-a7d640da8fc0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.ucobBLMAutoSim==nil",
							name = "Not configured",
							uuid = "b517d089-a62c-137e-a85d-a07a31a1ffcd",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 16,
				mechanicTime = 7,
				name = "[BLM UCOB] Configure forecast",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = -6,
				timerStartOffset = -70,
				uuid = "11d9829a-b24b-ebe4-b58b-6b199f33709a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobBLMAutoSim\nif not S then return end\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal spell=eventArgs.spellID\nif spell>=9954 and spell<=9959 and S.phase==3 then\n local i=spell-9953;S.trio=i;S.anchors[\"off\"..i]={\"pull\",now+2};S.publish()\nelseif spell==9961 and S.phase==4 then\n if not S.seen.addsEnd then S.seen.addsEnd=now-17.3 end\n S.anchors.gold={\"pull\",now+45.0};S.publish()\nelseif spell==9970 and S.phase==4 then S.anchors.gold={\"pull\",now+19.9};S.publish()end\nself.used=true",
							conditions = 
							{
								
								{
									"94d8e575-660e-d9f2-84ea-b6408483e26f",
									true,
								},
								
								{
									"569ff9cb-125b-b566-ad2e-d077b746c8cf",
									true,
								},
								
								{
									"b12be592-05b7-3416-89dc-ee360b5d3f79",
									true,
								},
								
								{
									"b9863830-45b9-a24f-b88b-94708ae0b471",
									true,
								},
							},
							name = "Anchor trio and Golden transition casts",
							uuid = "98fb25a7-06aa-36b5-a4d0-f1986bf89335",
							version = 2.1,
						},
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
							uuid = "94d8e575-660e-d9f2-84ea-b6408483e26f",
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
							uuid = "569ff9cb-125b-b566-ad2e-d077b746c8cf",
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
							uuid = "b12be592-05b7-3416-89dc-ee360b5d3f79",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.ucobBLMAutoSim~=nil",
							name = "Configured",
							uuid = "b9863830-45b9-a24f-b88b-94708ae0b471",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 2,
				loop = true,
				mechanicTime = 7,
				name = "[BLM UCOB] Anchor trio and Golden transition casts",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -7,
				uuid = "cf9f66f9-da79-930c-b65f-687aa9cf7cdc",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobBLMAutoSim=nil\nself.used=true",
							conditions = 
							{
								
								{
									"01f61684-3d38-3d30-b18e-884c65faec15",
									true,
								},
								
								{
									"3c7aa278-ce6c-d310-a928-e420e0b22d02",
									true,
								},
							},
							name = "Reset forecast OnCountdownCancel",
							uuid = "9a466826-4130-4ec9-8f80-1598e70157ba",
							version = 2.1,
						},
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
							uuid = "01f61684-3d38-3d30-b18e-884c65faec15",
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
							uuid = "3c7aa278-ce6c-d310-a928-e420e0b22d02",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 17,
				loop = true,
				mechanicTime = 7,
				name = "[BLM UCOB] Reset forecast OnCountdownCancel",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -80,
				uuid = "f7bf874f-7518-72c3-b7aa-4c617a74e647",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobBLMAutoSim=nil\nself.used=true",
							conditions = 
							{
								
								{
									"87211a5f-ca1c-1e55-896a-d54616656c0b",
									true,
								},
								
								{
									"12b64f39-371e-85b1-b663-c1a66bf8eda7",
									true,
								},
							},
							name = "Reset forecast OnMapChange",
							uuid = "1ce8107a-7191-c7ea-bcf8-36855909bb74",
							version = 2.1,
						},
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
							uuid = "87211a5f-ca1c-1e55-896a-d54616656c0b",
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
							uuid = "12b64f39-371e-85b1-b663-c1a66bf8eda7",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 11,
				loop = true,
				mechanicTime = 7,
				name = "[BLM UCOB] Reset forecast OnMapChange",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -80,
				uuid = "6c339d51-e002-ab42-8898-ea88bca3351d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobBLMAutoSim\nif not S then return end\nlocal p=TensorCore.mGetPlayer()\nif not p or not p.alive then return end\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nif now<=0 then return end\nlocal twin,nael,baha=S.ent(1482),S.ent(2612),S.ent(3210)\nlocal desired,other\nif S.phase==1 then desired=twin\nelseif S.phase==2 then desired=nael\nelseif S.phase==3 or S.phase==5 then desired=baha\nelseif S.phase==4 then\n if S.alive(twin)and S.alive(nael)then\n  local current=TensorCore.mGetTarget()\n  desired=current and(current.id==twin.id or current.id==nael.id)and current or twin\n  if math.abs(twin.hp.percent-nael.hp.percent)>=3 then desired=twin.hp.percent>nael.hp.percent and twin or nael end\n  other=desired.id==twin.id and nael or twin\n elseif S.alive(twin)then desired=twin elseif S.alive(nael)then desired=nael end\nend\nlocal changed=S.phase==5 and S.killAt~=nil and now>=S.killAt-5 and now<1254\nif S.phase==5 then\n local phoenix=TensorCore.hasBuff(Player.id,1436)\n if S.phoenixActive~=phoenix then S.phoenixSeen=true;S.phoenixActive=phoenix;changed=true end\nend\nif S.alive(desired)then\n local t=TensorCore.mGetTarget()\n if not t or t.id~=desired.id then Player:SetTarget(desired.id);changed=true end\n if S.mainID~=desired.id then\n  S.mainID=desired.id;TensorCore.API.TensorACR.setAutoSimTarget(0,desired.id);changed=true\n end\nend\nif S.otherID~=(other and other.id)then\n S.otherID=other and other.id\n if other then TensorCore.API.TensorACR.setAutoSimTarget(1,other.id)else TensorCore.API.TensorACR.clearAutoSimTarget(1)end\n changed=true\nend\n-- Never freeze HP-driven death at a predicted time while the target is alive.\nlocal key=S.phase==1 and\"twinEnd\"or(S.phase==2 and\"naelEnd\"or(S.phase==4 and\"addsEnd\"))\nif key and not S.seen[key]and S.at(key)<=now+2 then\n local a=S.anchors[key];a[2]=now+10-S.at(a[1]);changed=true\nend\n-- Black Mage keeps attacking while moving.\nif changed then S.publish();self.used=true end\n",
							conditions = 
							{
								
								{
									"da83ba0d-4d5c-abf1-b029-6b282b0ab123",
									true,
								},
								
								{
									"7312733d-c148-913f-8a3c-b25e67a78513",
									true,
								},
								
								{
									"27f47275-d961-ec60-a996-70e231c51b35",
									true,
								},
							},
							name = "Target and correct late phase estimates",
							uuid = "3f7e5e5b-7ed6-5e0b-81e7-3f302a7fa456",
							version = 2.1,
						},
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
							uuid = "da83ba0d-4d5c-abf1-b029-6b282b0ab123",
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
							uuid = "7312733d-c148-913f-8a3c-b25e67a78513",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.ucobBLMAutoSim~=nil",
							name = "Configured",
							uuid = "27f47275-d961-ec60-a996-70e231c51b35",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				loop = true,
				mechanicTime = 7,
				name = "[BLM UCOB] Target and correct late phase estimates",
				throttleTime = 300,
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -7,
				uuid = "ccda2bc5-1d82-eb61-97d5-95842fb82437",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobBLMAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nif not TensorCore.hasBuff(Player.id,783)then S.dynamic.scriptedStun=nil;S.publish();self.used=true\nelseif S.dynamic.scriptedStun[3]<=now+.5 then S.dynamic.scriptedStun[3]=now+1;S.publish()end",
							conditions = 
							{
								
								{
									"a8e9543c-3aca-5767-8a3c-98403b0ad0ec",
									true,
								},
								
								{
									"8ccb1113-6421-da36-ae44-c83d679b60f4",
									true,
								},
								
								{
									"bb736eb5-aa66-3108-a63d-c91f5932c702",
									true,
								},
							},
							name = "Maintain personal scripted stun",
							uuid = "147ce327-310c-894f-bf98-741f34b72a92",
							version = 2.1,
						},
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
							uuid = "a8e9543c-3aca-5767-8a3c-98403b0ad0ec",
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
							uuid = "8ccb1113-6421-da36-ae44-c83d679b60f4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.ucobBLMAutoSim\nreturn S~=nil and S.dynamic.scriptedStun~=nil",
							name = "Stun active",
							uuid = "bb736eb5-aa66-3108-a63d-c91f5932c702",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				loop = true,
				mechanicTime = 7,
				name = "[BLM UCOB] Maintain personal scripted stun",
				throttleTime = 200,
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -7,
				uuid = "879a93b1-3fff-188e-b303-a784390aee78",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local C=_G.UCOB_BLM_Config\nif not C then C={goldLength=162.14,addsLength=100.222,buffForecast=false,buffGain=0,twisterLead=1.0,twisterAfter=1.0,exaDuration=8,assignmentMove=2,returnMove=1.5};_G.UCOB_BLM_Config=C end\nif C.quoteMove==nil then C.quoteMove=2 end\nlocal visible=GUI:Begin('UCOB Black Mage AutoSim',true)\nif visible then\n GUI:Text('Built-in targeting. Normal LPDU; manual AM/Between the Lines. Session settings.')\n C.goldLength=GUI:SliderFloat('Expected Golden duration (s)',C.goldLength,100,215,'%.1f',1)\n if GUI:IsItemHovered()then GUI:SetTooltip('Initial estimate162.14s from49 EU clears. Corrected by actual phase starts; adjustable for your group. All schedule times use the real combat clock.')end\n if GUI:TreeNode('P4 - Adds')then\n  GUI:Text('Targets higher-HP boss when separated by at least3 percentage points.')\n  GUI:Text('Tracks target lifetimes and Thunder availability. ACR decides cleave from actual geometry.')\n  C.addsLength=GUI:SliderFloat('Expected adds duration (s)',C.addsLength,60,125,'%.1f',1)\n  if GUI:IsItemHovered()then GUI:SetTooltip('Forecast only; both actual boss departures correct the transition. New pulls use this estimate.')end\n  GUI:TreePop()\n end\n if GUI:TreeNode('Movement forecasts')then\n  C.twisterLead=GUI:SliderFloat('Twister: seconds before resolution',C.twisterLead,.3,2,'%.1f',1)\n  C.twisterAfter=GUI:SliderFloat('Twister: recovery seconds',C.twisterAfter,.3,2,'%.1f',1)\n  C.exaDuration=GUI:SliderFloat('Exaflare: movement seconds',C.exaDuration,2,10,'%.1f',1)\n  if GUI:IsItemHovered()then GUI:SetTooltip('Conservative eight-second forecast across the six explosions. Cast events correct timing. Adjust for your dodge path; this does not move you.')end\n  C.assignmentMove=GUI:SliderFloat('Personal marker: move out seconds',C.assignmentMove,.5,5,'%.1f',1)\n  C.returnMove=GUI:SliderFloat('Personal hit: return movement seconds',C.returnMove,0,5,'%.1f',1)\n  GUI:Text('Movement predicts leaving Ley Lines. No automatic field return is assumed.')\n  GUI:Text('Unplanned movement retains the ACR allowance.')\n  GUI:TreePop()\n end\n if GUI:TreeNode('P2 - Nael quotes')then\n  C.quoteMove=GUI:SliderFloat('Quote transition movement (s)',C.quoteMove,.5,3,'%.1f',1)\n  if GUI:IsItemHovered()then GUI:SetTooltip('English quote text forecasts In/Out/Spread changes, then actual casts correct remaining steps. Two seconds is a tunable travel estimate, not a forced move. Same-zone steps do not add movement.')end\n  GUI:TreePop()\n end\n C.buffForecast=GUI:Checkbox('Forecast future party buffs',C.buffForecast)\n C.buffGain=GUI:SliderFloat('Combined future buff gain (%)',C.buffGain,0,40,'%.2f',1)\n if GUI:IsItemHovered()then GUI:SetTooltip('Optional composition-specific estimate; initially disabled/0%. Active buffs are handled by ACR. No UWU priority weights copied.')end\n GUI:Text('Phoenix phase priority: twice pre-Golden damage value; blessing loss removes the bonus.')\n if GUI:IsItemHovered()then GUI:SetTooltip('Normalized planning weight0.5 beforeGolden and1 during blessedGolden. Real Phoenix damage buff is not authored as another x2. UnblessedGolden returns to0.5.')end\n GUI:Text('Cooldowns stay with AutoSim. No forced teleports, LB or Ley Lines return.')\nend\nGUI:End()\n",
							conditions = 
							{
								
								{
									"7d915254-662a-7185-a14f-f28f40b0fa72",
									true,
								},
								
								{
									"3ab2706f-20a6-c581-b72f-7d8aa3db338d",
									true,
								},
							},
							name = "AutoSim options",
							uuid = "bd08fc81-d528-0960-8060-498d5483a70d",
							version = 2.1,
						},
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
							uuid = "7d915254-662a-7185-a14f-f28f40b0fa72",
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
							uuid = "3ab2706f-20a6-c581-b72f-7d8aa3db338d",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 13,
				loop = true,
				mechanicTime = 7,
				name = "[BLM UCOB] AutoSim options",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -80,
				uuid = "66d3429d-5501-1a3a-ab3a-857175da188b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobBLMAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal duration=eventArgs.buffDuration\nif type(duration)~=\"number\"or duration<=0 then duration=1 end\nS.dynamic.scriptedStun={\"Stun\",now,now+duration};S.publish();self.used=true",
							conditions = 
							{
								
								{
									"a49ecd91-8158-2781-9bf7-ae93688a2f66",
									true,
								},
								
								{
									"ef2296f2-f616-77da-8d86-59f841bd2a2b",
									true,
								},
								
								{
									"5c3cae1f-7bee-42ec-92bf-ddd2afb030b4",
									true,
								},
								
								{
									"752bbd55-c96d-3f60-b356-b766e07649d5",
									true,
								},
							},
							name = "Personal Down for the Count",
							uuid = "7529a27c-1491-dd80-a724-4fec29c16218",
							version = 2.1,
						},
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
							uuid = "a49ecd91-8158-2781-9bf7-ae93688a2f66",
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
							uuid = "ef2296f2-f616-77da-8d86-59f841bd2a2b",
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
							uuid = "5c3cae1f-7bee-42ec-92bf-ddd2afb030b4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityID==Player.id and data.ucobBLMAutoSim~=nil",
							dequeueIfLuaFalse = true,
							name = "Personal status",
							uuid = "752bbd55-c96d-3f60-b356-b766e07649d5",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 8,
				loop = true,
				mechanicTime = 7,
				name = "[BLM UCOB] Personal Down for the Count",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -7,
				uuid = "93be930f-654f-76ee-b6f0-51e07193b3a8",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.ucobBLMAutoSim=nil\nself.used=true",
							conditions = 
							{
								
								{
									"65947a73-9986-5906-87f9-d25a4eb8f41c",
									true,
								},
								
								{
									"fae8fc5d-cb82-3f1a-bb50-e88f78f33f88",
									true,
								},
							},
							name = "Reset forecast OnWipe",
							uuid = "ac8f1bd3-b9b3-77f9-9814-aa5afceb4a1e",
							version = 2.1,
						},
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
							uuid = "65947a73-9986-5906-87f9-d25a4eb8f41c",
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
							uuid = "fae8fc5d-cb82-3f1a-bb50-e88f78f33f88",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 9,
				loop = true,
				mechanicTime = 7,
				name = "[BLM UCOB] Reset forecast OnWipe",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -80,
				uuid = "f95b969e-66e2-f8a7-af28-c771d355ac1d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local A=TensorCore.API.TensorACR\nlocal C=_G.UCOB_BLM_Config\nif not C then C={goldLength=162.14,addsLength=100.222,buffForecast=false,buffGain=0,twisterLead=1.0,twisterAfter=1.0,exaDuration=8,assignmentMove=2,returnMove=1.5};_G.UCOB_BLM_Config=C end\nif C.quoteMove==nil then C.quoteMove=2 end\nlocal S={version=1,phase=1,seen={},ids={},up={},dynamic={},cfg={},dotStart={},ends={}}\nfor k,v in pairs(C)do S.cfg[k]=v end\nS.anchors={\n twinEnd={\"pull\",128.352},nael={\"twinEnd\",21.968},naelEnd={\"nael\",115.307},baha={\"naelEnd\",16.333},\n off1={\"baha\",23.449},on1={\"off1\",11.534},off2={\"on1\",29.533},on2={\"off2\",16.557},\n off3={\"on2\",34.636},on3={\"off3\",16.517},off4={\"on3\",35.834},on4={\"off4\",27.560},\n off5={\"on4\",33.712},on5={\"off5\",19.376},off6={\"on5\",37.626},adds={\"off6\",53.754},\n addsEnd={\"adds\",S.cfg.addsLength},gold={\"addsEnd\",62.323}}\nfunction S.at(k)\n if k==\"pull\"then return 0 end\n if S.seen[k]then return S.seen[k]end\n local a=S.anchors[k];return S.at(a[1])+a[2]\nend\nfunction S.union(xs)\n table.sort(xs,function(a,b)return a[1]<b[1]end)\n local out={}\n for _,v in ipairs(xs)do\n  local last=out[#out]\n  if last and v[1]<=last[2]then last[2]=math.max(last[2],v[2])else out[#out+1]={v[1],v[2]}end\n end\n return out\nend\nfunction S.alive(e)return e and e.alive and e.targetable and e.hp.current>1 end\nfunction S.ent(cid)return S.ids[cid]and TensorCore.mGetEntity(S.ids[cid])end\n\nS.movePred={{\"firstTwister\",\"pull\",12.99,\"twister\"},{\"addsTwister1\",\"adds\",24.34,\"twister\"},{\"addsTwister2\",\"adds\",41.487,\"twister\"},{\"addsTwister3\",\"adds\",87.071,\"twister\"},{\"addsTwister4\",\"adds\",104.096,\"twister\"},{\"exa1\",\"gold\",24.549,\"exa\"},{\"exa2\",\"gold\",73.276,\"exa\"},{\"exa3\",\"gold\",123.05,\"exa\"},{\"exa4\",\"gold\",174.689,\"exa\"}}\nS.moveActual={};S.personalMoves={}\nfunction S.movementWindows()\n local out={}\n for _,p in ipairs(S.movePred)do\n  local center=S.moveActual[p[1]]or S.at(p[2])+p[3]\n  local a,b\n  if p[4]==\"twister\"then a,b=center-S.cfg.twisterLead,center+S.cfg.twisterAfter\n  else a,b=center-.5,center+S.cfg.exaDuration end\n  if p[2]==\"adds\"then b=math.min(b,S.at(\"addsEnd\"))end\n  if p[2]~=\"pull\"or not S.seen.twinEnd or center<S.seen.twinEnd then\n   if b>a then out[#out+1]={a,b}end\n  end\n end\n for _,v in pairs(S.personalMoves)do if v[2]>v[1]then out[#out+1]={v[1],v[2]}end end\n return S.union(out)\nend\nfunction S.correctMovement(kind,finish)\n local best,delta\n for _,p in ipairs(S.movePred)do\n  if p[4]==kind and not S.moveActual[p[1]]and ((p[2]==\"pull\"and S.phase==1)or(p[2]==\"adds\"and S.phase==4)or(p[2]==\"gold\"and S.phase==5))then\n   local d=math.abs(finish-S.at(p[2])-p[3]);if not delta or d<delta then best,delta=p[1],d end\n  end\n end\n if best and delta<8 then S.moveActual[best]=finish\n else S.personalMoves[kind..\"Extra\"]={finish-(kind==\"twister\"and S.cfg.twisterLead or .5),finish+(kind==\"twister\"and S.cfg.twisterAfter or S.cfg.exaDuration)}end\n S.publish()\nend\n\nfunction S.quoteSequence(text)\nlocal t=text:gsub(\"%s+\",\" \")\nlocal seq=nil\nif t:find(\"O hallowed moon, shine you the iron path\",1,true) then seq={9916,9915}\nelseif t:find(\"O hallowed moon, take fire and scorch my foes\",1,true) then seq={9916,9917}\nelseif t:find(\"Take fire, O hallowed moon\",1,true) then seq={9917,9916}\nelseif t:find(\"Blazing path, lead me to iron rule\",1,true) then seq={9917,9915}\nelseif t:find(\"From on high I descend, the hallowed moon to call\",1,true) then seq={9918,9916}\nelseif t:find(\"From on high I descend, the iron path to walk\",1,true) then seq={9918,9915}\nelseif t:find(\"From on high I descend, the iron path to call\",1,true) then seq={9918,9915}\nelseif t:find(\"From on high I descend, the moon and stars to bring\",1,true) then seq={9918,9916,9920}\nelseif t:find(\"From hallowed moon I descend, a rain of stars to bring\",1,true) then seq={9916,9918,9920}\nelseif t:find(\"From hallowed moon I descend, upon burning earth to tread\",1,true) then seq={9916,9918,9917}\nelseif t:find(\"From hallowed moon I bare iron, in my descent to wield\",1,true) then seq={9916,9915,9918}\nelseif t:find(\"Unbending iron, take fire and descend\",1,true) then seq={9915,9917,9918}\nelseif t:find(\"Unbending iron, descend with fiery edge\",1,true) then seq={9915,9918,9917}\nend\n return seq\nend\nfunction S.quoteCategory(id)\n if id==9916 or id==9917 then return \"in\"elseif id==9915 then return \"out\"else return \"spread\"end\nend\nfunction S.planQuote()\n local q=S.quote\n if not q then return end\n for i=1,3 do S.personalMoves[\"quote\"..i]=nil end\n local previous=q.previous\n local p=TensorCore.mGetPlayer();local n=S.ent(2612)\n for i=q.step,#q.seq do\n  local cat=S.quoteCategory(q.seq[i]);local hit=q.nextHit+(i-q.step)*3.1\n  local move=previous~=cat\n  if not previous and p and n then\n   local distance=TensorCore.getDistance2d(p.pos,n.pos)\n   if(cat==\"in\"and distance<=4)or(cat==\"out\"and distance>=10)then move=false end\n  end\n  if move then\n   local duration=S.cfg.quoteMove\n   local a=previous and hit-3.0 or hit-duration-.2\n   S.personalMoves[\"quote\"..i]={a,math.min(a+duration,hit-.1)}\n  end\n  previous=cat\n end\n S.publish()\nend\n\nfunction S.publish()\n local now=A.getAutoSimTime()\n local live=_G.UCOB_BLM_Config\n if live then for k,v in pairs(live)do S.cfg[k]=v end end\n local kill=math.min(1259,math.max(now+10,S.at(\"gold\")+S.cfg.goldLength))\n S.killAt=kill;A.setAutoSimKillTime(kill)\n local gaps={{S.at(\"twinEnd\"),S.at(\"nael\")},{S.at(\"naelEnd\"),S.at(\"baha\")},{S.at(\"off6\"),S.at(\"adds\")},{S.at(\"addsEnd\"),S.at(\"gold\")}}\n for i=1,5 do\n  local a,b=S.at(\"off\"..i),S.at(\"on\"..i)\n  if S.seen.adds then b=math.min(b,S.seen.adds)end\n  if b>a then gaps[#gaps+1]={a,b}end\n end\n local valid={};for _,g in ipairs(gaps)do if g[2]>g[1]then valid[#valid+1]=g end end;gaps=valid\n if S.naelGap then gaps[#gaps+1]={S.naelGap[1],S.naelGap[2]or now+6}end\n A.clearAutoSimPhases(\"FullDowntime\")\n for _,g in ipairs(S.union(gaps))do if g[2]>g[1]then A.addAutoSimPhase(\"FullDowntime\",g[1],g[2])end end\n local stun={}\n for _,g in pairs(S.dynamic)do if g[1]==\"Stun\"then stun[#stun+1]={g[2],g[3]}end end\n A.clearAutoSimPhases(\"Stun\")\n for _,g in ipairs(S.union(stun))do if g[2]>g[1]then A.addAutoSimPhase(\"Stun\",g[1],g[2])end end\n A.clearAutoSimPhases(\"CasterDowntime\")\n for _,g in ipairs(S.movementWindows())do A.addAutoSimPhase(\"CasterDowntime\",g[1],g[2])end\n -- Phoenix1436 is +100% real personal damage. Normalize planning weights\n -- so current actual buffs are not multiplied by another authored x2.\n A.clearAutoSimPhases(\"BossModifier\")\n local gold=S.at(\"gold\")\n if gold>0 then A.addAutoSimPhase(\"BossModifier\",0,gold,.5)end\n if S.phase==5 and S.phoenixSeen and not S.phoenixActive then\n  A.addAutoSimPhase(\"BossModifier\",gold,kill,.5)\n end\n A.clearAutoSimPhases(\"RaidBuff\")\n if S.cfg.buffForecast then\n  local prev=-120\n  for _,t in ipairs({5,S.at(\"nael\")+2,S.at(\"baha\")+2,S.at(\"on3\")+2,S.at(\"adds\")+2,S.at(\"gold\")+2,S.at(\"gold\")+122})do\n   t=math.max(t,prev+120);A.addAutoSimPhase(\"RaidBuff\",t,t+20,1+S.cfg.buffGain/100);prev=t\n  end\n end\n -- Slot 0 tracks the selected main boss; slot 1 tracks the other adds boss.\n -- Lifetimes survive temporary untargetability. Golden starts a fresh target-state lifetime.\n local start,finish=0,S.at(\"twinEnd\")\n if S.phase==2 then start,finish=S.at(\"nael\"),S.at(\"naelEnd\")\n elseif S.phase==3 then start,finish=S.at(\"baha\"),S.at(\"adds\")\n elseif S.phase==4 then start,finish=S.at(\"adds\"),S.at(\"addsEnd\")\n elseif S.phase==5 then start,finish=S.at(\"gold\"),kill end\n finish=math.max(finish,now+5)\n for slot=0,1 do\n  A.clearAutoSimPhases(\"DotAvailability\",slot);A.clearAutoSimPhases(\"DotAvailability\",slot,1);A.clearAutoSimPhases(\"TargetLifetime\",slot)\n  if slot==0 or S.phase==4 then\n   local id=slot==0 and S.mainID or S.otherID\n   local death=id and S.ends[id]\n   local ending=death or finish\n   if ending>start then\n    A.addAutoSimPhase(\"TargetLifetime\",start,ending,1,slot)\n    local cursor=start\n    for _,g in ipairs(S.union(gaps))do\n     local a,b=math.max(start,g[1]),math.min(ending-.5,g[2])\n     if b>a then if a>cursor then A.addAutoSimPhase(\"DotAvailability\",cursor,a,1,slot);if slot==0 then A.addAutoSimPhase(\"DotAvailability\",cursor,a,1,slot,1)end end;cursor=math.max(cursor,b)end\n    end\n    if ending-.5>cursor then A.addAutoSimPhase(\"DotAvailability\",cursor,ending-.5,1,slot);if slot==0 then A.addAutoSimPhase(\"DotAvailability\",cursor,ending-.5,1,slot,1)end end\n   end\n  end\n end\n A.clearAutoSimUncertainty()\n A.addAutoSimUncertainty(0,S.phase>=3 and 3 or 20)\n if not S.seen.addsEnd then A.addAutoSimUncertainty(math.max(1,S.at(\"addsEnd\")-25),20)end\n A.addAutoSimUncertainty(math.max(2,S.at(\"gold\")+S.cfg.goldLength-30),15)\n S.lastPublish=now\nend\nfunction S.sync(k,t)\n if S.seen[k]then return end\n S.seen[k]=t;S.publish()\nend\nfor _,cid in ipairs({1482,2612,3210})do\n for _,e in pairs(TensorCore.getEntityGroupList(\"ContentID\",cid)or{})do\n  if e.alive then S.ids[cid]=e.id;S.up[cid]=e.targetable;break end\n end\nend\nS.publish()\ndata.ucobBLMAutoSim=S\nself.used=true\n",
							conditions = 
							{
								
								{
									"52eb6dd8-7dd3-caee-8b2d-b8d48869e106",
									true,
								},
								
								{
									"484a7635-1c21-805a-9b81-45e83b9bd81c",
									true,
								},
								
								{
									"6aa41492-6a72-93cb-8be8-38aba2686132",
									true,
								},
								
								{
									"b6ebbb34-9e9a-35ba-a726-833e25e06928",
									true,
								},
							},
							name = "Configure on first Plummet",
							uuid = "2cdd7ac8-ad60-6297-ad89-dde884cb6f3e",
							version = 2.1,
						},
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
							uuid = "52eb6dd8-7dd3-caee-8b2d-b8d48869e106",
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
							uuid = "484a7635-1c21-805a-9b81-45e83b9bd81c",
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
							uuid = "6aa41492-6a72-93cb-8be8-38aba2686132",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.ucobBLMAutoSim==nil",
							name = "Not configured",
							uuid = "b6ebbb34-9e9a-35ba-a726-833e25e06928",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 2,
				mechanicTime = 7,
				name = "[BLM UCOB] Configure on first Plummet",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 15,
				timerStartOffset = -7,
				uuid = "100bb37a-2d85-36d6-8910-de4dd4a95f29",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobBLMAutoSim\nif not S then return end\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nif now<=0 then return end\nlocal cid,id,on=eventArgs.entityContentID,eventArgs.entityID,eventArgs.isTargetable\nif cid~=1482 and cid~=2612 and cid~=3210 then return end\nS.ids[cid]=id;S.up[cid]=on\nlocal e=TensorCore.mGetEntity(id)\nif cid==1482 and S.phase==1 and not on then S.sync(\"twinEnd\",now)\nelseif cid==2612 and on and S.phase<2 then S.phase=2;S.sync(\"nael\",now)\nelseif cid==2612 and S.phase==2 then\n if not on and e and e.hp.current<=1 then S.sync(\"naelEnd\",now)\n elseif not on then S.naelGap={now};S.publish()\n elseif S.naelGap then S.naelGap[2]=now;S.publish()end\nelseif cid==3210 and on and S.phase<3 then\n if not S.seen.naelEnd then S.seen.naelEnd=now-16.333 end\n S.phase=3;S.sync(\"baha\",now)\nelseif cid==3210 and S.phase==3 then\n local i=S.trio\n if not i then\n  local best=math.huge\n  for j=1,6 do local key=(on and \"on\"or\"off\")..j\n   if S.anchors[key]and not S.seen[key]then local d=math.abs(now-S.at(key));if d<best then best=d;i=j end end\n  end\n end\n if i then local key=(on and \"on\"or\"off\")..i\n  if S.anchors[key]then S.sync(key,now)end\n  if on then S.trio=nil end\n end\nelseif (cid==1482 or cid==2612)and on and S.phase==3 and now>S.at(\"baha\")+200 then\n S.phase=4;S.sync(\"adds\",now)\nelseif S.phase==4 then\n if cid==3210 and on then S.phase=5;S.sync(\"gold\",now)\n elseif not on then\n  if e and e.hp.current<=1 then S.ends[id]=now end\n  if not S.up[1482]and not S.up[2612]then S.sync(\"addsEnd\",now)else S.publish()end\n end\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"cb3c719a-564d-41b2-bd61-a88a975b3bdb",
									true,
								},
								
								{
									"ab16d53a-18ee-b7a6-b206-72e94add32f3",
									true,
								},
								
								{
									"e53e46e7-1ce5-1a86-8401-51cab8465d17",
									true,
								},
							},
							name = "Observe boss targetability",
							uuid = "70dd33b3-3ed4-ddfb-a8fc-28504de3d53d",
							version = 2.1,
						},
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
							uuid = "cb3c719a-564d-41b2-bd61-a88a975b3bdb",
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
							uuid = "ab16d53a-18ee-b7a6-b206-72e94add32f3",
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
							uuid = "e53e46e7-1ce5-1a86-8401-51cab8465d17",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 26,
				loop = true,
				mechanicTime = 7,
				name = "[BLM UCOB] Observe boss targetability",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -7,
				uuid = "666fa45e-207c-66f8-9552-3c294ede79c1",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobBLMAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal finish=now+eventArgs.channelTimeMax+.3\nS.correctMovement(eventArgs.spellID==9898 and \"twister\"or\"exa\",finish)\nself.used=true",
							conditions = 
							{
								
								{
									"b5bdba63-6e80-db93-b709-389742e961fd",
									true,
								},
								
								{
									"f0962679-e419-4907-9c9b-8893551b18fd",
									true,
								},
								
								{
									"184321ff-9d2f-bbf9-8b66-903448de05fd",
									true,
								},
								
								{
									"aec131a5-face-ca53-85d7-64ae6406a480",
									true,
								},
							},
							name = "Correct Twister and Exaflare movement",
							uuid = "fbca199a-01e2-8f35-8577-671be9d91169",
							version = 2.1,
						},
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
							uuid = "b5bdba63-6e80-db93-b709-389742e961fd",
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
							uuid = "f0962679-e419-4907-9c9b-8893551b18fd",
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
							uuid = "184321ff-9d2f-bbf9-8b66-903448de05fd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.ucobBLMAutoSim~=nil",
							name = "Configured",
							uuid = "aec131a5-face-ca53-85d7-64ae6406a480",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 3,
				loop = true,
				mechanicTime = 7,
				name = "[BLM UCOB] Correct Twister and Exaflare movement",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -7,
				uuid = "58047cec-a39c-81c6-9473-382bd691bb80",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobBLMAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal kind=eventArgs.spellID==9898 and \"twister\"or\"exa\"\nlocal best,delta\nfor key,t in pairs(S.moveActual)do\n if (kind==\"twister\"and key:find(\"Twister\")or kind==\"exa\"and key:find(\"exa\"))then\n  local d=math.abs(now-t);if not delta or d<delta then best,delta=key,d end\n end\nend\nif best and delta<3 then S.moveActual[best]=now;S.publish()else S.correctMovement(kind,now)end\nself.used=true",
							conditions = 
							{
								
								{
									"46632499-8e1f-9132-8d23-9a1c9a7dd78b",
									true,
								},
								
								{
									"8bdb6157-f618-db9a-8eb2-10660212d73e",
									true,
								},
								
								{
									"41d9c3f5-d4d1-0019-b91a-6f70b38875b6",
									true,
								},
								
								{
									"209af0de-4117-ad98-b489-e33aa950c715",
									true,
								},
							},
							name = "Confirm movement cast resolution",
							uuid = "e53da1fc-323f-d990-b067-69468e1cf286",
							version = 2.1,
						},
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
							uuid = "46632499-8e1f-9132-8d23-9a1c9a7dd78b",
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
							uuid = "8bdb6157-f618-db9a-8eb2-10660212d73e",
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
							uuid = "41d9c3f5-d4d1-0019-b91a-6f70b38875b6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.ucobBLMAutoSim~=nil",
							name = "Configured",
							uuid = "209af0de-4117-ad98-b489-e33aa950c715",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 2,
				loop = true,
				mechanicTime = 7,
				name = "[BLM UCOB] Confirm movement cast resolution",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -7,
				uuid = "fdb00fb3-444e-d1a1-9721-1519214d7f1b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobBLMAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nS.personalMoves[\"marker118\"]={now,now+S.cfg.assignmentMove}\nS.pending118=true;S.publish();self.used=true",
							conditions = 
							{
								
								{
									"cb9fab21-46d3-a9cf-a162-f0bd03b9f637",
									true,
								},
								
								{
									"238a06c7-833b-f773-8dd3-e24309a82107",
									true,
								},
								
								{
									"ad099a19-74f5-6137-b966-bda7b1a54ef0",
									true,
								},
								
								{
									"2018bc5f-2938-0ca3-8d6d-c15bb8a22362",
									true,
								},
								
								{
									"f60f7c5b-ef4a-92aa-89b0-46f3aed6e05e",
									true,
								},
							},
							name = "Personal Hatch movement",
							uuid = "442dbc16-6628-d4ea-a218-d7a9f3a1ed09",
							version = 2.1,
						},
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
							uuid = "cb9fab21-46d3-a9cf-a162-f0bd03b9f637",
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
							uuid = "238a06c7-833b-f773-8dd3-e24309a82107",
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
							uuid = "ad099a19-74f5-6137-b966-bda7b1a54ef0",
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
							uuid = "2018bc5f-2938-0ca3-8d6d-c15bb8a22362",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.ucobBLMAutoSim~=nil",
							name = "Configured",
							uuid = "f60f7c5b-ef4a-92aa-89b0-46f3aed6e05e",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 4,
				loop = true,
				mechanicTime = 7,
				name = "[BLM UCOB] Personal Hatch movement",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -7,
				uuid = "e17f0fd3-8a9c-ed44-90c9-c1b78d8efbd8",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobBLMAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nS.personalMoves[\"marker40\"]={now,now+S.cfg.assignmentMove}\nS.pending40=true;S.publish();self.used=true",
							conditions = 
							{
								
								{
									"725e4ff1-b9c8-dbbc-b302-21a9567a7cc0",
									true,
								},
								
								{
									"5ed0466e-e28d-0e7f-9bdc-bb98cf4398c2",
									true,
								},
								
								{
									"b7093682-b7fc-9b8b-9c73-05234eb46ff8",
									true,
								},
								
								{
									"6cf97afd-386a-99ea-8506-07163bf9d790",
									true,
								},
								
								{
									"9f5a3655-938d-97fe-b325-27f8019cce75",
									true,
								},
							},
							name = "Personal Earthshaker movement",
							uuid = "63772db3-a75b-d4e4-a34d-c543794340d1",
							version = 2.1,
						},
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
							uuid = "725e4ff1-b9c8-dbbc-b302-21a9567a7cc0",
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
							uuid = "5ed0466e-e28d-0e7f-9bdc-bb98cf4398c2",
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
							uuid = "b7093682-b7fc-9b8b-9c73-05234eb46ff8",
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
							uuid = "6cf97afd-386a-99ea-8506-07163bf9d790",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.ucobBLMAutoSim~=nil",
							name = "Configured",
							uuid = "9f5a3655-938d-97fe-b325-27f8019cce75",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 4,
				loop = true,
				mechanicTime = 7,
				name = "[BLM UCOB] Personal Earthshaker movement",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -7,
				uuid = "40bd1f27-a4f0-bd70-b2c7-f0e1c9685893",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobBLMAutoSim\nlocal marker=eventArgs.spellID==9903 and 118 or 40\nlocal key=\"pending\"..marker\nif not S[key]then self.used=true;return end\nS[key]=nil\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nS.personalMoves[\"return\"..marker]={now,now+S.cfg.returnMove};S.publish();self.used=true",
							conditions = 
							{
								
								{
									"f0ed7c51-2303-a858-bb01-a47bb8a0db19",
									true,
								},
								
								{
									"3464ed1e-165b-b2f6-87e8-6a427380e53e",
									true,
								},
								
								{
									"32420e92-4671-fa0e-8934-c329f0e7ffa6",
									true,
								},
								
								{
									"df4efcd7-74fa-0afc-bb97-22325dfb1b14",
									true,
								},
								
								{
									"fcf874c8-765a-476f-a0ef-a7c7e4ff4adc",
									true,
								},
							},
							name = "Personal assignment return movement",
							uuid = "cfc62932-7307-8a8a-ac8c-2ba425b31375",
							version = 2.1,
						},
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
							uuid = "f0ed7c51-2303-a858-bb01-a47bb8a0db19",
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
							uuid = "3464ed1e-165b-b2f6-87e8-6a427380e53e",
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
							uuid = "32420e92-4671-fa0e-8934-c329f0e7ffa6",
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
							uuid = "df4efcd7-74fa-0afc-bb97-22325dfb1b14",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.ucobBLMAutoSim~=nil",
							name = "Configured",
							uuid = "fcf874c8-765a-476f-a0ef-a7c7e4ff4adc",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 2,
				loop = true,
				mechanicTime = 7,
				name = "[BLM UCOB] Personal assignment return movement",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -7,
				uuid = "daa08a97-9dd6-508c-bee6-86eeee3065e9",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobBLMAutoSim\nlocal p=TensorCore.mGetPlayer()\nlocal radius=eventArgs.spellID==9901 and 6 or 5\nlocal dx,dz=p.pos.x-eventArgs.castPosX,p.pos.z-eventArgs.castPosZ\nif dx*dx+dz*dz>(radius+.5)^2 then self.used=true;return end\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal kind=eventArgs.spellID==9901 and\"liquid\"or\"hypernova\"\nlocal old=S.personalMoves[kind]\nS.personalMoves[kind]={old and old[2]>now and old[1]or now,now+1.5};S.publish();self.used=true",
							conditions = 
							{
								
								{
									"4172b9e7-1b42-36db-a722-0aa83ef51ed3",
									true,
								},
								
								{
									"9ef95c00-e4c9-0f6a-b993-18188dbd07e1",
									true,
								},
								
								{
									"b719a9a9-8e14-78f6-a492-275331e46a81",
									true,
								},
								
								{
									"46ccd80f-9870-1b35-9fb0-e918f5ecada0",
									true,
								},
								
								{
									"d36887f6-aa3f-b07c-849c-c39518930019",
									true,
								},
							},
							name = "Nearby puddle movement",
							uuid = "102b6890-fd34-f9a0-8aec-13d6da0775b7",
							version = 2.1,
						},
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
							uuid = "4172b9e7-1b42-36db-a722-0aa83ef51ed3",
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
							uuid = "9ef95c00-e4c9-0f6a-b993-18188dbd07e1",
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
							uuid = "b719a9a9-8e14-78f6-a492-275331e46a81",
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
							uuid = "46ccd80f-9870-1b35-9fb0-e918f5ecada0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.ucobBLMAutoSim~=nil",
							name = "Configured",
							uuid = "d36887f6-aa3f-b07c-849c-c39518930019",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 2,
				loop = true,
				mechanicTime = 7,
				name = "[BLM UCOB] Nearby puddle movement",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -7,
				uuid = "724c9f57-0159-008c-8a4d-d73b8c7f54af",
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
				name = "UCOB\\LPDU Draws",
				uuid = "05903db9-67c2-927d-bb88-b8f7568665c9",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[4] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "83f679fc-b3ad-3c88-0bf0-4b464151db0c",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[6] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "97f715aa-a3b0-2196-f7e3-fe783bd7643a",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[7] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "742572b5-5713-b2e1-f09a-7cfb7e5472c5",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[8] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "49d38338-2a12-a5cc-99fe-49eacd867cc8",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[10] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "12170ce3-65a2-f17f-a661-6c1180231bb3",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[12] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "6c82b959-bb1a-6e35-5a07-073b0b9066a9",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[13] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "8f0964ee-deec-112a-237e-ffb8a258b57e",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[15] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "699c881c-9c81-7d60-b00f-e3c25f0be26c",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[17] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "54ea784a-67ba-e9ce-90f6-ae3446af659a",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[18] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "e6095edb-491d-fe37-df3b-ba39d4803fab",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[20] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "9d049618-4b04-4174-b6b2-efca31a43f68",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[22] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "43d92066-c952-8e02-cb64-ff9c286b7ef6",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[24] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "c4bc6114-feca-74f8-f0d1-dc6e7c9bdbe4",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[26] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "a52e0ca2-12d6-c1c6-815a-b280d6566832",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[27] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "7f04498d-cd00-da51-73df-84633aad26dd",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[29] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "f6233b23-4eed-60bf-ce9c-70cdb6b2c1f3",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[30] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "d41af435-cbdd-5de1-b503-edef9a709c05",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[31] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "f7ec972a-1879-cc96-459c-002c168a5a7a",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[33] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "e3ebfb7c-2876-e788-f1ef-025a50e60d4c",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[35] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "80bb6fce-53d7-67d2-3fe1-4090c4f90f5e",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[36] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "93350d43-cfb0-b1c7-dd71-f169fb8ef993",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[38] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "0429412d-ce03-ce89-9ed4-5aa78e95f9fd",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Hold",
				uuid = "f719db97-ad7b-e593-935e-75fe828eae83",
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
				name = "UCOB\\LPDU Draws",
				uuid = "3659e8c2-12ef-52de-4de6-086405e12452",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[40] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "e2531402-7eec-adf6-4ad7-db20190e0792",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[44] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "2bd747c6-2cd7-9732-984e-133ca6db6e56",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[45] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "e6016051-912e-55dd-ea2e-cd3f39b30da1",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[47] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "1081797b-240b-5d27-0ab4-e2f542ea40cb",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[48] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "b9e5466a-fc68-a4be-9a0b-e178de5c4aba",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "BLM AutoSim",
				uuid = "f4985638-1439-57a0-a8f8-004c364817b5",
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
							actionLua = "local S=data.ucobBLMAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal text=eventArgs.line.line\nS.quote={text=text,seq=S.quoteSequence(text),step=1,nextHit=now+5.1,expires=now+20}\nS.planQuote();self.used=true",
							conditions = 
							{
								
								{
									"1912076a-6c23-b470-8805-687eeba7534d",
									true,
								},
								
								{
									"15e57a1a-387f-aa0b-8c10-3af9c0b59ffc",
									true,
								},
								
								{
									"a64102cc-c54b-9bac-93a7-3211679dd3fd",
									true,
								},
								
								{
									"016fb9ee-eeae-7f70-a8a6-badbac84f841",
									true,
								},
							},
							name = "Forecast personal quote movement",
							uuid = "a27ad64a-e04c-b78c-89e2-bb138a84e9cd",
							version = 2.1,
						},
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
							uuid = "1912076a-6c23-b470-8805-687eeba7534d",
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
							uuid = "15e57a1a-387f-aa0b-8c10-3af9c0b59ffc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.ucobBLMAutoSim\nreturn S~=nil and S.phase==2",
							dequeueIfLuaFalse = true,
							name = "P2 configured",
							uuid = "a64102cc-c54b-9bac-93a7-3211679dd3fd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.ucobBLMAutoSim\nlocal text=eventArgs.line.line\nlocal q=S.quote\nreturn S.quoteSequence(text)~=nil and(not q or q.text~=text or TensorCore.API.TensorACR.getAutoSimTime()>=q.expires)",
							dequeueIfLuaFalse = true,
							name = "New recognized quote",
							uuid = "016fb9ee-eeae-7f70-a8a6-badbac84f841",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 7,
				loop = true,
				mechanicTime = 230.6,
				name = "[BLM UCOB] Forecast personal quote movement",
				timeRange = true,
				timelineIndex = 48,
				timerEndOffset = 220,
				timerStartOffset = -35,
				uuid = "2ab6a813-21a7-b544-a3ec-f5115dda2e14",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.ucobBLMAutoSim\nlocal q=S.quote\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nq.previous=S.quoteCategory(q.seq[q.step]);q.step=q.step+1;q.nextHit=now+3.1\nS.planQuote();self.used=true",
							conditions = 
							{
								
								{
									"cf7fcc5d-c359-e99a-82f8-ed1a3e1488df",
									true,
								},
								
								{
									"08eea732-ff7c-83a1-9496-4b83aa6b6609",
									true,
								},
								
								{
									"a602de03-eb67-b1f5-b66f-8e7ee1698f4b",
									true,
								},
								
								{
									"bd572458-e1e8-5a86-9b76-5a4d9d4c1e35",
									true,
								},
								
								{
									"cafd33ce-32d8-bb7e-9a73-7d3f6fa9124e",
									true,
								},
							},
							name = "Correct remaining quote movement",
							uuid = "5b367d0c-3398-34f4-82a5-cae77cd28022",
							version = 2.1,
						},
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
							uuid = "cf7fcc5d-c359-e99a-82f8-ed1a3e1488df",
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
							uuid = "08eea732-ff7c-83a1-9496-4b83aa6b6609",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.ucobBLMAutoSim\nreturn S~=nil and S.phase==2",
							dequeueIfLuaFalse = true,
							name = "P2 configured",
							uuid = "a602de03-eb67-b1f5-b66f-8e7ee1698f4b",
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
							uuid = "bd572458-e1e8-5a86-9b76-5a4d9d4c1e35",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.ucobBLMAutoSim\nlocal q=S.quote\nreturn q~=nil and TensorCore.API.TensorACR.getAutoSimTime()<q.expires and q.seq[q.step]==eventArgs.spellID",
							dequeueIfLuaFalse = true,
							name = "Expected quote step",
							uuid = "cafd33ce-32d8-bb7e-9a73-7d3f6fa9124e",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 2,
				loop = true,
				mechanicTime = 230.6,
				name = "[BLM UCOB] Correct remaining quote movement",
				timeRange = true,
				timelineIndex = 48,
				timerEndOffset = 220,
				timerStartOffset = -35,
				uuid = "36e0dd30-ba73-bb6e-9067-6159dd0ce0a0",
				version = 2,
			},
		},
	},
	[49] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "8873fc75-62a8-f3e9-92c2-5ffb20d95945",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[51] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "95c9ad84-1f42-e3f8-ef18-d452bbedd0d4",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[54] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "e44aaf0b-e2e7-9e77-671e-ca617687a9db",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[55] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "41776d88-6b7c-b074-b3bb-3916fdb50fd8",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[56] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "e4dde3e1-60f3-c96d-668b-958bd75f1fb1",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[59] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "b7dcd6cc-d00e-dda0-ffc2-0a7afa1ad31c",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[60] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "4924191c-37e8-4e70-c61a-06e63e93736c",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[61] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "4b8c189f-0393-5ed3-c07a-7971e6978b2f",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[63] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "08bca7d5-4f8c-7b49-57e8-729bfe954525",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[65] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "f19e9de3-03a8-0ecf-0145-300d5faaacb3",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[68] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "0af716d4-c68c-9248-3f25-ffae8200b0a4",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[72] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "05bc07f3-0b32-b2d7-da09-9c0123b35843",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[73] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "bda05a10-126e-ffd4-7859-adb646004e60",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[77] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "c35b19ac-5436-3ed8-cdf5-5ef2746a467c",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[79] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "7774c4f6-3be9-f24a-e37c-62d0cfc3cb86",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[82] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "8daf33d8-5c50-b884-5623-770aae483628",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Hold",
				uuid = "0666526e-a223-6b73-9d37-276ecda4c2b6",
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
				name = "UCOB\\LPDU Draws",
				uuid = "3296b362-f801-5d96-2e09-e6c005361df2",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[85] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "8d4c684d-ab64-eee1-3773-43a3c276f29d",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[87] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "44aba7d7-aad1-ba0b-bc36-711994b4d7e7",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[88] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "af81d3ee-4408-2efa-060c-6994c2d1247e",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[89] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "8cfb2859-c7ee-7085-bca0-ac972c08d5a9",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[90] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "3129aaeb-41d7-af17-b3d7-38a9b1c0353b",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[91] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "c19e6368-8b43-6c14-4a9f-877e7b382db8",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[92] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "e4f58141-458b-548d-2869-edb3fe1a9a11",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[93] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "b865a2f6-6bb5-17a2-a28b-84d010b4a986",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[94] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "5d845227-9c2e-971b-c754-8625338dad37",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[96] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "caa74add-04c0-9df1-af56-cc2fd5986a2d",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[97] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "66508c32-0a60-2b66-0752-b46c07c911c2",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[98] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "46ace5f3-a307-f1df-9918-be0164a43643",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[99] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "fe913810-e518-5f5c-3768-cfb686f12c60",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[100] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "29b6f303-1c59-2247-9498-cebda4fd3493",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[101] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "35364920-c971-9804-d1fd-29124f309e30",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[102] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "799ab7f9-2934-adfd-068f-4707297bc609",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[103] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "ac19aa8e-a07f-d852-344a-ccc46e674a5e",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[104] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "d48d3b3f-17f2-998b-f2a2-2f219e68288f",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[106] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "f51350f5-1885-ce61-fbd9-624b43ded705",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[108] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "7d20cdfb-8f98-a18f-d9c8-7ac526c2208b",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[109] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "846a4f78-eb84-c14c-974b-6c3a83eedf08",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[110] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "6190103e-15fa-fe82-feef-6fe081f1c78e",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[111] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "c7d05f69-8d23-caed-dca2-79c34f72d4f9",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[112] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "2a3fae90-97ac-b1f4-ca28-dc4e0b0e6620",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[113] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "725b5c73-0f17-9ff7-aef3-2bb9ff8f1003",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[115] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "e39f26e5-19a9-4ad1-c810-e3ffcaeb6df5",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[116] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "2ffa6e2c-4b72-e578-415a-03aa58849e3c",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[118] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "e4141976-ed8d-30ea-f336-71386e4eb946",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[119] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "10a3f7c1-bc1b-e6f5-29be-78bb2878d1d1",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[122] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "b82b6d1f-3963-f273-0dea-7ec1753a78ef",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[123] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "b5c36d9c-f148-4490-e15a-a07605d28b2c",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[124] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "b8a99ed9-aaa7-bce5-8679-4fa79da87c69",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[125] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "db304a6e-a356-065a-358a-fd6437682d3e",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[126] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "5e3df263-666a-f1ef-f39c-485d48337973",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[127] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "6bb92080-f703-042c-8f45-89b20017cb90",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[128] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "b8fadecd-d7ac-8dc1-6fa1-e373cc2dde5d",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[133] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "90bfda11-3c64-9255-2f76-cb5be32148a1",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[134] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "7b551c34-32c1-b680-5b8b-b0e224c9e644",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[135] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "c632ed37-2546-8863-b641-65cdf70e6087",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[137] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "683daa2d-7fb2-34d9-6da0-a5578517e83d",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[138] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "19966c60-3e9f-0154-d876-d16e8ad55a70",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[139] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "f7497643-3762-b457-b5f0-25d956806ad3",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[141] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "5596cea4-533a-2580-7544-b446512d3934",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[142] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "551c329d-a02a-a3d9-59ee-e5fb3e15c72d",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[143] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "97db5df2-c2b1-4f6e-6138-677870466ec2",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[146] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "a3ef9b01-5cdd-0155-24dd-21f76697f711",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[147] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "423facb6-8892-62ca-ad72-33f479320686",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[148] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "ba2da92f-19b1-495b-5668-cff9b88ffd7f",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[150] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "f154f222-e043-c91e-1512-8e646db37af2",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[151] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "cb2b2f0d-9c34-ebc9-6600-e0a72af44f9d",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[152] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "10e34694-8490-bef0-6ecd-1ab22b6eeba4",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[153] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "c7778997-503b-cf53-d323-d95dfd3234e7",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[154] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "900005e6-8185-ea3a-ca1a-f1e81817c9b6",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[155] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "8a607871-c402-f8c5-39a6-396b79c7b801",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[159] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "0db57395-dcdc-ad21-7c30-73efa8038025",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[165] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "c9a8097a-b463-5a4e-92bb-655036d2710a",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[166] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "a8179c8f-c6dc-f7c3-a407-1929fe7fe95f",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[168] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "3104c961-37d1-2bad-0cb3-1b6760389571",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[170] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "6234123c-d0ac-8098-4653-578ad9dbd94c",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[171] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "b414cc3f-094f-769b-f30e-77157defb98f",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[172] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "060c2bea-7781-0ae6-5011-3d5c9f80267a",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[173] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "d49ae1f5-71e1-7d71-0e00-cfdf23666805",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[174] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "14bdda20-f864-4b94-ee65-022e2eb82f30",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[175] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "093e8403-aef8-8e97-ac66-51998484c593",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[179] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "27969af7-29cb-25a3-b084-328d0ab03a47",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[181] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "ce8f3108-0235-81ec-20e1-94aafff47698",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[182] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "71f5a761-c237-53a5-a798-74ffa1297371",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[183] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "be921616-e9d9-051a-0ce0-f8fca6c900e6",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[184] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "75c8fb47-234c-bb33-8e7a-bcb9de408497",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[185] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "22e17104-9d6e-5250-a9b0-6d4e27ac4194",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[189] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "99d0f030-45a2-bf24-5f4e-e6424fa9bec0",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Hold",
				uuid = "2316765e-da4c-0d08-a036-79134320dbc8",
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
				name = "BLM AutoSim",
				uuid = "9a11db1a-0178-5997-833c-d127ba1be027",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "BLM AutoSim",
				name = "P5 Golden",
				uuid = "6860cebb-fed9-6d64-841a-5927cd445f49",
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
							actionLua = "local S=data.ucobBLMAutoSim\nS.phoenixSeen=true;S.phoenixActive=true\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"5e1c0426-9e25-0e40-b371-976848e5118d",
									true,
								},
								
								{
									"5b46bb6a-0afa-052b-b16a-4784c0682cb1",
									true,
								},
								
								{
									"31795513-fef8-0783-a2ac-2abca9beea7d",
									true,
								},
								
								{
									"080b69d8-57d7-3ee0-adb1-5c180af0e2b7",
									true,
								},
							},
							name = "Correct Phoenix phase priority",
							uuid = "bae3f08d-7a06-337f-b396-eb48e3325b2f",
							version = 2.1,
						},
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
							uuid = "5e1c0426-9e25-0e40-b371-976848e5118d",
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
							uuid = "5b46bb6a-0afa-052b-b16a-4784c0682cb1",
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
							uuid = "31795513-fef8-0783-a2ac-2abca9beea7d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityID==Player.id and data.ucobBLMAutoSim~=nil",
							dequeueIfLuaFalse = true,
							name = "Personal blessing",
							uuid = "080b69d8-57d7-3ee0-adb1-5c180af0e2b7",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim/P5 Golden",
				eventType = 8,
				loop = true,
				mechanicTime = 1200,
				name = "[BLM UCOB] Observe personal Phoenix Blessing",
				timeRange = true,
				timelineIndex = 190,
				timerEndOffset = 300,
				timerStartOffset = -30,
				uuid = "42a21a28-087b-4b24-82ee-23837c1254dd",
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
				name = "UCOB\\LPDU Draws",
				uuid = "9d993cfb-18b3-bcdf-672e-9071473a8f8b",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[194] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "6f6ad782-f917-ef2e-edb1-5e94cfc7ce52",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[195] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "e693a3ed-b719-3e99-a445-a197587ca3fd",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[196] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "f11c8af4-28ec-b440-ce23-0a22f8b98e04",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[197] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "688778f7-3256-1123-a7f9-470d4ba11847",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[198] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "cc92198e-e160-e2a2-15ae-dbc08edfb95e",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[199] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "9a1326f9-bb37-1f8d-1f18-38a349f43509",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[200] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "4ebf7106-137f-7b4a-d0c8-30bcfbaf30d6",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[201] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "3c256191-e7ca-19d5-22a8-eabf8e86d021",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[202] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "b942f538-2831-8b1c-74a0-4a6ac4df25c8",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[203] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "efcafcbb-2a99-8a9f-432f-007597be034b",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[204] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "45d3d942-4d9e-67ee-8351-f8a06de1ca12",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[205] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "13a331ad-2b17-bc59-77d2-a283307d6fbd",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	[206] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws",
				uuid = "26baa3b4-de27-3e00-fa35-5a0ed02f6dc4",
			},
			inheritanceRoot = "UCOB\\LPDU Draws",
			objectType = "folder",
		},
	},
	inheritedProfiles = 
	{
		"UCOB\\LPDU Draws",
	},
	timelineName = "ucob",
	version = "1.0.3",
}



return tbl
local tbl = 
{
	[2] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "BRD AutoSim",
				uuid = "dbe4b3e5-1217-36de-bc79-53a265cb8a22",
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
							actionLua = "-- Spiny Plume: applies regardless of model scale, including the enlarged plume.\nlocal spiny=TensorCore.API.TensorACR.addBlacklistEntry(2091,\"UWU Spiny Plume\")\nif not spiny.enabled or spiny.allowIfTarget or spiny.allowSmartDoT then\n spiny.enabled=true;spiny.allowIfTarget=false;spiny.allowSmartDoT=false\n TensorCore.API.TensorACR.saveDotBlacklist()\nend\nlocal feather=TensorCore.API.TensorACR.addBlacklistEntry(1648,\"UWU Satin Plume\")\nif not feather.enabled or feather.allowIfTarget or feather.allowSmartDoT then\n feather.enabled=true;feather.allowIfTarget=false;feather.allowSmartDoT=false\n TensorCore.API.TensorACR.saveDotBlacklist()\nend\nlocal A=TensorCore.API.TensorACR\nlocal nail=A.addBlacklistEntry(1186,\"UWU Infernal Nail\")\nif not nail.enabled or nail.allowIfTarget or nail.allowSmartDoT then\n nail.enabled=true;nail.allowIfTarget=false;nail.allowSmartDoT=false\n A.saveDotBlacklist()\nend\n-- Generated encounter inputs are inserted by the MCP authoring script.\n-- Five EU BLM clears supplied the original the phase-relative medians. Native events resync them.\nlocal A=TensorCore.API.TensorACR\n_G.UWU_BRD_TemporaryState=_G.UWU_BRD_TemporaryState or {}\nlocal cfg=_G.UWU_BRD_AutoSimConfig\nif not cfg then\n cfg={poolLaha=true,priorityGaols=true,roulette=false,raidBuffs=false,buffGain=16.87}\n _G.UWU_BRD_AutoSimConfig=cfg\nend\nlocal S={[\"anchors\"]={[\"p1end\"]={[\"after\"]=\"pull\",[\"offset\"]=134.629,[\"spread\"]=10},[\"ifrit1\"]={[\"after\"]=\"p1end\",[\"offset\"]=72.217,[\"spread\"]=0.75},[\"p2end\"]={[\"after\"]=\"ifrit1\",[\"offset\"]=38.162,[\"spread\"]=10},[\"ifrit2Back\"]={[\"after\"]=\"p2end\",[\"offset\"]=7.422,[\"spread\"]=0.75},[\"titan1\"]={[\"after\"]=\"ifrit2Back\",[\"offset\"]=22.062,[\"spread\"]=0.75},[\"p3end\"]={[\"after\"]=\"titan1\",[\"offset\"]=97.279,[\"spread\"]=15},[\"titan3Back\"]={[\"after\"]=\"p3end\",[\"offset\"]=12.283,[\"spread\"]=0.75},[\"magitekBit1\"]={[\"after\"]=\"titan3Back\",[\"offset\"]=7.018,[\"spread\"]=0.75},[\"p4end\"]={[\"after\"]=\"magitekBit1\",[\"offset\"]=25.99,[\"spread\"]=0.75},[\"graniteGaol1\"]={[\"after\"]=\"p4end\",[\"offset\"]=233.053,[\"spread\"]=0.75}},[\"kill\"]={[\"after\"]=\"graniteGaol1\",[\"offset\"]=134.648,[\"spread\"]=7.881},[\"phases\"]={{\"FullDowntime\",\"pull\",70.532,\"pull\",74.238,1},{\"FullDowntime\",\"p1end\",0.1,\"p1end\",13.303,1},{\"FullDowntime\",\"ifrit1\",0.1,\"ifrit1\",3.812,1},{\"FullDowntime\",\"p2end\",0.1,\"ifrit2Back\",-0.3,1},{\"FullDowntime\",\"titan1\",0.1,\"titan1\",8.158,1},{\"FullDowntime\",\"titan1\",54.272,\"titan1\",62.508,1},{\"FullDowntime\",\"p3end\",0.1,\"titan3Back\",-0.3,1},{\"FullDowntime\",\"magitekBit1\",0.1,\"magitekBit1\",13.741,1},{\"FullDowntime\",\"p4end\",0.1,\"p4end\",50.191,1},{\"FullDowntime\",\"p4end\",77.992,\"p4end\",98.072,1},{\"FullDowntime\",\"p4end\",156.499,\"p4end\",161.092,1},{\"FullDowntime\",\"p4end\",193.502,\"p4end\",198.14,1},{\"FullDowntime\",\"p4end\",214.525,\"p4end\",229.087,1},{\"FullDowntime\",\"graniteGaol1\",0.1,\"p4end\",255.307,1},{\"FullDowntime\",\"p4end\",353.6,\"p4end\",357.89,1}},[\"windows\"]={{\"CasterDowntime\",\"pull\",35.0,\"pull\",37.5,1},{\"CasterDowntime\",\"pull\",38.5,\"pull\",41.0,1},{\"CasterDowntime\",\"pull\",43.0,\"pull\",44.0,1},{\"CasterDowntime\",\"pull\",91.0,\"pull\",92.5,1},{\"CasterDowntime\",\"pull\",102.5,\"pull\",104.0,1},{\"CasterDowntime\",\"pull\",105.5,\"pull\",106.5,1},{\"CasterDowntime\",\"pull\",127.5,\"pull\",128.5,1},{\"CasterDowntime\",\"p1end\",44.5,\"p1end\",47.0,1},{\"CasterDowntime\",\"p1end\",91.5,\"p1end\",98.0,1},{\"CasterDowntime\",\"titan1\",8.5,\"titan1\",11.0,1},{\"CasterDowntime\",\"titan1\",14.0,\"titan1\",21.5,1},{\"CasterDowntime\",\"titan1\",27.5,\"titan1\",29.0,1},{\"CasterDowntime\",\"titan1\",41.0,\"titan1\",42.5,1},{\"CasterDowntime\",\"titan1\",74.5,\"titan1\",76.0,1},{\"CasterDowntime\",\"p4end\",99.5,\"p4end\",100.5,1},{\"CasterDowntime\",\"p4end\",109.0,\"p4end\",115.0,1},{\"CasterDowntime\",\"p4end\",121.0,\"p4end\",124.0,1},{\"CasterDowntime\",\"p4end\",125.0,\"p4end\",129.0,1},{\"CasterDowntime\",\"p4end\",144.5,\"p4end\",145.5,1},{\"CasterDowntime\",\"p4end\",161.5,\"p4end\",169.0,1},{\"CasterDowntime\",\"p4end\",170.0,\"p4end\",172.5,1},{\"CasterDowntime\",\"p4end\",173.5,\"p4end\",174.5,1},{\"CasterDowntime\",\"p4end\",178.5,\"p4end\",182.0,1},{\"CasterDowntime\",\"p4end\",229.5,\"p4end\",231.0,1},{\"CasterDowntime\",\"p4end\",274.0,\"p4end\",280.0,1},{\"CasterDowntime\",\"p4end\",281.0,\"p4end\",282.5,1}},[\"returns\"]={},[\"buffwindows\"]={{\"pull\",8.069},{\"p1end\",16.081},{\"ifrit2Back\",52.467},{\"p4end\",52.628},{\"p4end\",175.979},{\"p4end\",317.846}},[\"sample_count\"]=5,[\"kill_samples\"]={782.098,751.692,783.165,838.291,794.832},[\"roulette\"]={[\"first\"]=293.478,[\"step\"]=20.123,[\"templates\"]={[\"Garuda\"]={{9.5,10.0}},[\"Ifrit\"]={{7.0,9.5},{11.0,11.5}},[\"Titan\"]={{5.0,13.0}}}},[\"anchorOrder\"]={\"p1end\",\"ifrit1\",\"p2end\",\"ifrit2Back\",\"titan1\",\"p3end\",\"titan3Back\",\"magitekBit1\",\"p4end\",\"graniteGaol1\"},[\"ifritArrival\"]=13.603,[\"lahaDelay\"]=14.041}\n-- Separate Ifrit's second dash from his actual phase death.\nS.anchors.ifritDash={after=\"ifrit1\",offset=47.95,spread=2}\nS.anchors.ifritDashBack={after=\"ifritDash\",offset=15.79,spread=1}\nS.anchors.p2end={after=\"ifritDashBack\",offset=17.31,spread=12}\nS.anchors.ifrit2Back={after=\"p2end\",offset=7.55,spread=.75}\nS.anchorOrder={\"p1end\",\"ifrit1\",\"ifritDash\",\"ifritDashBack\",\"p2end\",\"ifrit2Back\",\"titan1\",\"p3end\",\"titan3Back\",\"magitekBit1\",\"p4end\",\"graniteGaol1\"}\nS.phases[#S.phases+1]={\"FullDowntime\",\"ifritDash\",0.1,\"ifritDashBack\",-0.1,1}\nfor _,phase in ipairs(S.phases) do\n if phase[1]==\"FullDowntime\" and phase[2]==\"ifrit1\" and phase[4]==\"ifrit1\" then phase[5]=4.25 end\nend\n-- First Garuda disappearance: corroborated in three recent native logs.\nS.phases[#S.phases+1]={\"FullDowntime\",\"pull\",33.96,\"pull\",38.25,1}\n-- Tonight's native phase-end samples: 16 Garuda ends and 7 final Ifrit returns.\nS.anchors.p1end.offset=145.61\nS.anchors.p1end.spread=27\nS.anchors.p2end.offset=22.312\nS.anchors.p2end.spread=17\nS.windows={} -- BRD can attack while moving; caster forecasts do not apply.\n-- Three native Monk-pull boss-event samples; shared boss timing, independent of job movement.\nfor _,phase in ipairs(S.phases) do\n if phase[1]==\"FullDowntime\" and phase[2]==\"pull\" and math.abs(phase[3]-70.532)<.001 then\n  phase[3]=68.865;phase[5]=73.150\n elseif phase[1]==\"FullDowntime\" and phase[2]==\"titan1\" and phase[3]==.1 then\n  phase[5]=7.544\n end\nend\nS.cfg={}\nfor k,v in pairs(cfg) do S.cfg[k]=v end\nS.observed={pull=0}\nS.dynamic={}\nS.rouletteWindows={}\nfunction S.time(name)\n if S.observed[name] then return S.observed[name] end\n local a=S.anchors[name]\n return S.time(a.after)+a.offset\nend\nfunction S.union(list)\n table.sort(list,function(a,b)return a[1]<b[1] end)\n local out={}\n for _,w in ipairs(list) do\n  local last=out[#out]\n  if last and w[1]<=last[2] and w[3]==last[3] then last[2]=math.max(last[2],w[2])\n  else out[#out+1]={w[1],w[2],w[3]} end\n end\n return out\nend\nfunction S.rouletteForecast() end\nS.dotStarts={}\nS.dotGaps={}\nS.dotEnds={ [1644]=\"p1end\", [1185]=\"p2end\", [1801]=\"p3end\" }\nfunction S.publishDots()\n local t=TensorCore.mGetTarget()\n local now=A.getAutoSimTime()\n if t and t.alive and t.targetable then\n  S.dotEntityID=t.id;S.dotContentID=t.contentid\n end\n local cid=S.dotContentID\n local endAnchor=S.dotEnds[cid]\n local finish=math.min(1259,math.max(now+5,S.time(S.kill.after)+S.kill.offset))\n local start=0\n if endAnchor then\n  if not S.dotStarts[cid] then\n   local predicted=cid==1644 and 0 or (cid==1185 and S.time(\"p1end\")+S.ifritArrival or S.time(\"ifrit2Back\"))\n   S.dotStarts[cid]=math.max(0,math.min(predicted,now))\n  end\n  start=S.dotStarts[cid]\n  finish=S.observed[endAnchor] or math.max(S.time(endAnchor),now+5)\n end\n A.clearAutoSimPhases(\"DotAvailability\",0)\n A.clearAutoSimPhases(\"TargetLifetime\",0)\n if finish<=start then return end\n A.addAutoSimPhase(\"TargetLifetime\",start,finish,1,0)\n local stop=endAnchor and math.max(start,finish-.5) or finish\n local gaps={}\n if endAnchor then\n  local observed=S.dotGaps[S.dotEntityID] or {}\n  for _,p in ipairs(S.phases) do\n   if p[1]==\"FullDowntime\" then\n    local a,b=S.time(p[2])+p[3],S.time(p[4])+p[5]\n    local replaced=false\n    for _,g in ipairs(observed) do if math.abs(g[1]-a)<10 then replaced=true;break end end\n    if not replaced and b>start and a<stop then gaps[#gaps+1]={math.max(start,a),math.min(stop,b),1} end\n   end\n  end\n  for _,g in ipairs(observed) do\n   local a,b=math.max(start,g[1]),math.min(stop,g[2] or stop)\n   if b>a then gaps[#gaps+1]={a,b,1} end\n  end\n end\n local cursor=start\n for _,g in ipairs(S.union(gaps)) do\n  if g[1]>cursor then A.addAutoSimPhase(\"DotAvailability\",cursor,g[1],1,0) end\n  cursor=math.max(cursor,g[2])\n end\n if stop>cursor then A.addAutoSimPhase(\"DotAvailability\",cursor,stop,1,0) end\n S.dotPublishedEnd=finish;S.dotPublishedTarget=S.dotEntityID\nend\n\nfunction S.publish()\n local now=A.getAutoSimTime()\n local finish=math.max(now+5,S.time(S.kill.after)+S.kill.offset)\n A.setAutoSimKillTime(math.min(finish,1259))\n local grouped={FullDowntime={},CasterDowntime={},Stun={},BossModifier={},RaidBuff={},GroundFieldMovement={}}\n local function add(kind,a,b,value)\n  if b>a then grouped[kind][#grouped[kind]+1]={a,b,value or 1} end\n end\n for _,p in ipairs(S.phases) do\n  -- HP-driven deaths are variable. Do not declare the still-live boss unavailable.\n  local hpDeath=p[1]==\"FullDowntime\" and (p[2]==\"p1end\" or p[2]==\"p2end\")\n  if not hpDeath or S.observed[p[2]]~=nil then\n   add(p[1],S.time(p[2])+p[3],S.time(p[4])+p[5],p[6])\n  end\n end\n for _,p in ipairs(S.windows) do\n  local a,b=S.time(p[2])+p[3],S.time(p[4])+p[5]\n  if p[2]==\"titan1\" and S.observed.p3end then b=math.min(b,S.observed.p3end) end\n  add(p[1],a,b,p[6])\n end\n if S.cfg.poolLaha then\n  add(\"BossModifier\",S.time(\"magitekBit1\")+S.lahaDelay,S.time(\"p4end\"),.01)\n end\n if S.cfg.priorityGaols then\n  add(\"BossModifier\",S.time(\"titan1\")+68.966,S.time(\"titan1\")+73.966,1.10)\n  add(\"BossModifier\",S.time(\"p4end\")+227.75,S.time(\"p4end\")+232.75,1.10)\n end\n if S.cfg.raidBuffs then\n  local prev\n  for _,w in ipairs(S.buffwindows) do\n   local t=S.time(w[1])+w[2]\n   if prev then t=math.max(t,prev+120) end\n   local burstWeight=w[1]==\"p1end\" and 1.4 or (1+S.cfg.buffGain/100)\n   local burstEnd=t+20\n   if w[1]==\"p1end\" then\n    -- Never extend the artificial 1.4 opener into nail softening.\n    burstEnd=math.min(burstEnd,S.time(\"p1end\")+39,S.nailsStartedAt or math.huge)\n   end\n   add(\"RaidBuff\",t,burstEnd,burstWeight)\n   prev=t\n  end\n end\n for _,w in ipairs(S.rouletteWindows) do add(\"CasterDowntime\",w[1],w[2],1) end\n for _,w in pairs(S.dynamic) do add(w[1],w[2],w[3],w[4]) end\n for kind,list in pairs(grouped) do\n  A.clearAutoSimPhases(kind)\n  -- All absolute same-type overlaps are merged before submission.\n  if kind==\"BossModifier\" or kind==\"RaidBuff\" then\n   local cuts,seen={},{}\n   for _,w in ipairs(list) do for i=1,2 do if not seen[w[i]] then cuts[#cuts+1]=w[i];seen[w[i]]=true end end end\n   table.sort(cuts)\n   for i=1,#cuts-1 do\n    local value,active=1,false\n    for _,w in ipairs(list) do if w[1]<=cuts[i] and w[2]>=cuts[i+1] then value=value*w[3];active=true end end\n    if active then A.addAutoSimPhase(kind,cuts[i],cuts[i+1],value) end\n   end\n  else\n   for _,w in ipairs(S.union(list)) do A.addAutoSimPhase(kind,w[1],w[2],w[3]) end\n  end\n end\n S.publishDots()\n A.clearAutoSimUncertainty()\n A.addAutoSimUncertainty(0,2)\n local uncertainty=2\n for _,name in ipairs(S.anchorOrder) do\n  if not S.observed[name] then\n   local anchor=S.anchors[name]\n   uncertainty=math.max(uncertainty,anchor.spread)\n   A.addAutoSimUncertainty(S.time(name)-25,uncertainty)\n  end\n end\n A.addAutoSimUncertainty(math.max(0,finish-30),math.max(uncertainty,S.kill.spread))\nend\nfunction S.resync(name,now)\n if S.observed[name] then return end\n S.observed[name]=now\n S.rouletteForecast()\n S.publish()\n\nend\nS.rouletteForecast()\nS.publish()\ndata.uwuBRDAutoSim=S\nself.used=true",
							conditions = 
							{
								
								{
									"6cb68658-9409-b3b6-81da-ba5fb670e710",
									true,
								},
								
								{
									"eed1a64e-158b-034e-97fd-7e38d8d232e7",
									true,
								},
								
								{
									"23c5788d-6bec-e43e-a285-0e343331cab4",
									true,
								},
								
								{
									"88cc86c6-a258-4c7c-882c-5e8cc1cbcf0e",
									true,
								},
								
								{
									"42f5e16d-e696-4bd9-8ec2-44daf475f723",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "49ea2185-cf5e-881f-bc74-e6a598642b6d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.uwuBRDAutoSim==nil",
							name = "not configured",
							uuid = "42f5e16d-e696-4bd9-8ec2-44daf475f723",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 8,
							dequeueIfLuaFalse = true,
							localmapid = 777,
							name = "UWU only",
							uuid = "6cb68658-9409-b3b6-81da-ba5fb670e710",
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
							name = "BRD only",
							uuid = "eed1a64e-158b-034e-97fd-7e38d8d232e7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 1644,
							name = "Content 1644",
							uuid = "23c5788d-6bec-e43e-a285-0e343331cab4",
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
							name = "Exact mechanic",
							spellIDList = 
							{
								11091,
							},
							uuid = "88cc86c6-a258-4c7c-882c-5e8cc1cbcf0e",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim",
				eventType = 3,
				mechanicTime = 9,
				name = "[BRD UWU] Configure on first Slipstream",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 5,
				timerStartOffset = -9,
				uuid = "19cdb9b0-dc4b-ccbf-a1e8-b38983095745",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local T=_G.UWU_BRD_TemporaryState\nif T and T.gaolPriorityOptions then\n for k,v in pairs(T.gaolPriorityOptions) do _G[k]=v end\n T.gaolPriorityOptions=nil\nend\nlocal T=_G.UWU_BRD_TemporaryState\nif T and T.gaols then\n TensorCore.API.TensorACR.deleteAOEBlacklistEntry(1804)\n TensorCore.API.TensorACR.deleteBlacklistEntry(1804)\n TensorCore.API.TensorACR.saveDotBlacklist()\nend\n_G.UWU_BRD_TemporaryState=nil\ndata.uwuBRDAutoSim=nil\nself.used=true",
							conditions = 
							{
								
								{
									"f9e5e464-c6d1-c9de-a2f3-a943f299cc27",
									true,
								},
								
								{
									"aef90a24-93fe-9feb-9386-6fb730c38269",
									true,
								},
								
								{
									"f4331a3a-7dc1-5a8f-b09b-497d04cf461f",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "3410a420-db51-e3b1-a834-9c706faef00b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return _G.UWU_BRD_TemporaryState~=nil",
							name = "owned state",
							uuid = "f4331a3a-7dc1-5a8f-b09b-497d04cf461f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 8,
							dequeueIfLuaFalse = true,
							localmapid = 777,
							name = "UWU only",
							uuid = "f9e5e464-c6d1-c9de-a2f3-a943f299cc27",
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
							name = "BRD only",
							uuid = "aef90a24-93fe-9feb-9386-6fb730c38269",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim",
				eventType = 17,
				loop = true,
				mechanicTime = 9,
				name = "[BRD UWU] Restore temporary settings CountdownCancel",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -80,
				uuid = "a72f8213-ebb1-5f60-b360-aaafeae2be0f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local T=_G.UWU_BRD_TemporaryState\nif T and T.gaolPriorityOptions then\n for k,v in pairs(T.gaolPriorityOptions) do _G[k]=v end\n T.gaolPriorityOptions=nil\nend\nlocal T=_G.UWU_BRD_TemporaryState\nif T and T.gaols then\n TensorCore.API.TensorACR.deleteAOEBlacklistEntry(1804)\n TensorCore.API.TensorACR.deleteBlacklistEntry(1804)\n TensorCore.API.TensorACR.saveDotBlacklist()\nend\n_G.UWU_BRD_TemporaryState=nil\ndata.uwuBRDAutoSim=nil\nself.used=true",
							conditions = 
							{
								
								{
									"497005dd-46f0-2fc1-bfa8-1590d36db375",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "9470d242-cc04-9199-9f18-e26c806fcda0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return _G.UWU_BRD_TemporaryState~=nil",
							name = "owned state",
							uuid = "497005dd-46f0-2fc1-bfa8-1590d36db375",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim",
				eventType = 11,
				loop = true,
				mechanicTime = 9,
				name = "[BRD UWU] Restore temporary settings MapChange",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -80,
				uuid = "b94c06fe-f32d-631f-b7da-69b40dd10478",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local C=_G.UWU_BRD_AutoSimConfig\nif not C then C={poolLaha=true,priorityGaols=true,raidBuffs=false,buffGain=16.87};_G.UWU_BRD_AutoSimConfig=C end\nlocal visible=GUI:Begin('UWU BRD AutoSim',true)\nif visible then\n GUI:Text('Forecast options apply next pull. Session settings.')\n local function check(label,key,help)\n C[key]=GUI:Checkbox(label,C[key])\n if GUI:IsItemHovered() then GUI:SetTooltip(help) end\n end\n check('Pool damage cooldowns on Lahabrea','poolLaha','Artificial 0.01 planning weight. Continue normal damage; this is not a real vulnerability.')\n check('Prioritize healer / Suppression gaols','priorityGaols','Artificial 1.10 planning weight for the first five seconds.')\n check('Forecast party raid buffs','raidBuffs','Optional estimated party burst. Disabled by default for this BRD adaptation; actual buffs remain automatic.')\n C.buffGain=GUI:SliderFloat('Forecast damage gain (%)',C.buffGain,0,40,'%.2f',1)\n if GUI:IsItemHovered() then GUI:SetTooltip('Adjust for the actual party composition. 16.87 is the old reference estimate, not a universal gain.') end\n GUI:Text('Movement permits BRD attacks. Only actual gaol stun blocks actions.')\n GUI:Text('Nails and utility actions use inherited LPDU controls.')\nend\nGUI:End()",
							conditions = 
							{
								
								{
									"14bec295-e411-be46-9192-9591dfbefd01",
									true,
								},
								
								{
									"40144a56-acc5-596e-99f1-94f902056037",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "4012a3e7-00eb-966c-b959-dbd6eded6b4b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "BRD only",
							uuid = "40144a56-acc5-596e-99f1-94f902056037",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 8,
							dequeueIfLuaFalse = true,
							localmapid = 777,
							name = "UWU only",
							uuid = "14bec295-e411-be46-9192-9591dfbefd01",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim",
				eventType = 13,
				loop = true,
				mechanicTime = 9,
				name = "[BRD UWU] AutoSim options",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -80,
				uuid = "3440a1bb-cc24-8447-a4de-66bfae8fd266",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "-- Spiny Plume: applies regardless of model scale, including the enlarged plume.\nlocal spiny=TensorCore.API.TensorACR.addBlacklistEntry(2091,\"UWU Spiny Plume\")\nif not spiny.enabled or spiny.allowIfTarget or spiny.allowSmartDoT then\n spiny.enabled=true;spiny.allowIfTarget=false;spiny.allowSmartDoT=false\n TensorCore.API.TensorACR.saveDotBlacklist()\nend\nlocal feather=TensorCore.API.TensorACR.addBlacklistEntry(1648,\"UWU Satin Plume\")\nif not feather.enabled or feather.allowIfTarget or feather.allowSmartDoT then\n feather.enabled=true;feather.allowIfTarget=false;feather.allowSmartDoT=false\n TensorCore.API.TensorACR.saveDotBlacklist()\nend\nlocal A=TensorCore.API.TensorACR\nlocal nail=A.addBlacklistEntry(1186,\"UWU Infernal Nail\")\nif not nail.enabled or nail.allowIfTarget or nail.allowSmartDoT then\n nail.enabled=true;nail.allowIfTarget=false;nail.allowSmartDoT=false\n A.saveDotBlacklist()\nend\n-- Generated encounter inputs are inserted by the MCP authoring script.\n-- Five EU BLM clears supplied the original the phase-relative medians. Native events resync them.\nlocal A=TensorCore.API.TensorACR\n_G.UWU_BRD_TemporaryState=_G.UWU_BRD_TemporaryState or {}\nlocal cfg=_G.UWU_BRD_AutoSimConfig\nif not cfg then\n cfg={poolLaha=true,priorityGaols=true,roulette=false,raidBuffs=false,buffGain=16.87}\n _G.UWU_BRD_AutoSimConfig=cfg\nend\nlocal S={[\"anchors\"]={[\"p1end\"]={[\"after\"]=\"pull\",[\"offset\"]=134.629,[\"spread\"]=10},[\"ifrit1\"]={[\"after\"]=\"p1end\",[\"offset\"]=72.217,[\"spread\"]=0.75},[\"p2end\"]={[\"after\"]=\"ifrit1\",[\"offset\"]=38.162,[\"spread\"]=10},[\"ifrit2Back\"]={[\"after\"]=\"p2end\",[\"offset\"]=7.422,[\"spread\"]=0.75},[\"titan1\"]={[\"after\"]=\"ifrit2Back\",[\"offset\"]=22.062,[\"spread\"]=0.75},[\"p3end\"]={[\"after\"]=\"titan1\",[\"offset\"]=97.279,[\"spread\"]=15},[\"titan3Back\"]={[\"after\"]=\"p3end\",[\"offset\"]=12.283,[\"spread\"]=0.75},[\"magitekBit1\"]={[\"after\"]=\"titan3Back\",[\"offset\"]=7.018,[\"spread\"]=0.75},[\"p4end\"]={[\"after\"]=\"magitekBit1\",[\"offset\"]=25.99,[\"spread\"]=0.75},[\"graniteGaol1\"]={[\"after\"]=\"p4end\",[\"offset\"]=233.053,[\"spread\"]=0.75}},[\"kill\"]={[\"after\"]=\"graniteGaol1\",[\"offset\"]=134.648,[\"spread\"]=7.881},[\"phases\"]={{\"FullDowntime\",\"pull\",70.532,\"pull\",74.238,1},{\"FullDowntime\",\"p1end\",0.1,\"p1end\",13.303,1},{\"FullDowntime\",\"ifrit1\",0.1,\"ifrit1\",3.812,1},{\"FullDowntime\",\"p2end\",0.1,\"ifrit2Back\",-0.3,1},{\"FullDowntime\",\"titan1\",0.1,\"titan1\",8.158,1},{\"FullDowntime\",\"titan1\",54.272,\"titan1\",62.508,1},{\"FullDowntime\",\"p3end\",0.1,\"titan3Back\",-0.3,1},{\"FullDowntime\",\"magitekBit1\",0.1,\"magitekBit1\",13.741,1},{\"FullDowntime\",\"p4end\",0.1,\"p4end\",50.191,1},{\"FullDowntime\",\"p4end\",77.992,\"p4end\",98.072,1},{\"FullDowntime\",\"p4end\",156.499,\"p4end\",161.092,1},{\"FullDowntime\",\"p4end\",193.502,\"p4end\",198.14,1},{\"FullDowntime\",\"p4end\",214.525,\"p4end\",229.087,1},{\"FullDowntime\",\"graniteGaol1\",0.1,\"p4end\",255.307,1},{\"FullDowntime\",\"p4end\",353.6,\"p4end\",357.89,1}},[\"windows\"]={{\"CasterDowntime\",\"pull\",35.0,\"pull\",37.5,1},{\"CasterDowntime\",\"pull\",38.5,\"pull\",41.0,1},{\"CasterDowntime\",\"pull\",43.0,\"pull\",44.0,1},{\"CasterDowntime\",\"pull\",91.0,\"pull\",92.5,1},{\"CasterDowntime\",\"pull\",102.5,\"pull\",104.0,1},{\"CasterDowntime\",\"pull\",105.5,\"pull\",106.5,1},{\"CasterDowntime\",\"pull\",127.5,\"pull\",128.5,1},{\"CasterDowntime\",\"p1end\",44.5,\"p1end\",47.0,1},{\"CasterDowntime\",\"p1end\",91.5,\"p1end\",98.0,1},{\"CasterDowntime\",\"titan1\",8.5,\"titan1\",11.0,1},{\"CasterDowntime\",\"titan1\",14.0,\"titan1\",21.5,1},{\"CasterDowntime\",\"titan1\",27.5,\"titan1\",29.0,1},{\"CasterDowntime\",\"titan1\",41.0,\"titan1\",42.5,1},{\"CasterDowntime\",\"titan1\",74.5,\"titan1\",76.0,1},{\"CasterDowntime\",\"p4end\",99.5,\"p4end\",100.5,1},{\"CasterDowntime\",\"p4end\",109.0,\"p4end\",115.0,1},{\"CasterDowntime\",\"p4end\",121.0,\"p4end\",124.0,1},{\"CasterDowntime\",\"p4end\",125.0,\"p4end\",129.0,1},{\"CasterDowntime\",\"p4end\",144.5,\"p4end\",145.5,1},{\"CasterDowntime\",\"p4end\",161.5,\"p4end\",169.0,1},{\"CasterDowntime\",\"p4end\",170.0,\"p4end\",172.5,1},{\"CasterDowntime\",\"p4end\",173.5,\"p4end\",174.5,1},{\"CasterDowntime\",\"p4end\",178.5,\"p4end\",182.0,1},{\"CasterDowntime\",\"p4end\",229.5,\"p4end\",231.0,1},{\"CasterDowntime\",\"p4end\",274.0,\"p4end\",280.0,1},{\"CasterDowntime\",\"p4end\",281.0,\"p4end\",282.5,1}},[\"returns\"]={},[\"buffwindows\"]={{\"pull\",8.069},{\"p1end\",16.081},{\"ifrit2Back\",52.467},{\"p4end\",52.628},{\"p4end\",175.979},{\"p4end\",317.846}},[\"sample_count\"]=5,[\"kill_samples\"]={782.098,751.692,783.165,838.291,794.832},[\"roulette\"]={[\"first\"]=293.478,[\"step\"]=20.123,[\"templates\"]={[\"Garuda\"]={{9.5,10.0}},[\"Ifrit\"]={{7.0,9.5},{11.0,11.5}},[\"Titan\"]={{5.0,13.0}}}},[\"anchorOrder\"]={\"p1end\",\"ifrit1\",\"p2end\",\"ifrit2Back\",\"titan1\",\"p3end\",\"titan3Back\",\"magitekBit1\",\"p4end\",\"graniteGaol1\"},[\"ifritArrival\"]=13.603,[\"lahaDelay\"]=14.041}\n-- Separate Ifrit's second dash from his actual phase death.\nS.anchors.ifritDash={after=\"ifrit1\",offset=47.95,spread=2}\nS.anchors.ifritDashBack={after=\"ifritDash\",offset=15.79,spread=1}\nS.anchors.p2end={after=\"ifritDashBack\",offset=17.31,spread=12}\nS.anchors.ifrit2Back={after=\"p2end\",offset=7.55,spread=.75}\nS.anchorOrder={\"p1end\",\"ifrit1\",\"ifritDash\",\"ifritDashBack\",\"p2end\",\"ifrit2Back\",\"titan1\",\"p3end\",\"titan3Back\",\"magitekBit1\",\"p4end\",\"graniteGaol1\"}\nS.phases[#S.phases+1]={\"FullDowntime\",\"ifritDash\",0.1,\"ifritDashBack\",-0.1,1}\nfor _,phase in ipairs(S.phases) do\n if phase[1]==\"FullDowntime\" and phase[2]==\"ifrit1\" and phase[4]==\"ifrit1\" then phase[5]=4.25 end\nend\n-- First Garuda disappearance: corroborated in three recent native logs.\nS.phases[#S.phases+1]={\"FullDowntime\",\"pull\",33.96,\"pull\",38.25,1}\n-- Tonight's native phase-end samples: 16 Garuda ends and 7 final Ifrit returns.\nS.anchors.p1end.offset=145.61\nS.anchors.p1end.spread=27\nS.anchors.p2end.offset=22.312\nS.anchors.p2end.spread=17\nS.windows={} -- BRD can attack while moving; caster forecasts do not apply.\n-- Three native Monk-pull boss-event samples; shared boss timing, independent of job movement.\nfor _,phase in ipairs(S.phases) do\n if phase[1]==\"FullDowntime\" and phase[2]==\"pull\" and math.abs(phase[3]-70.532)<.001 then\n  phase[3]=68.865;phase[5]=73.150\n elseif phase[1]==\"FullDowntime\" and phase[2]==\"titan1\" and phase[3]==.1 then\n  phase[5]=7.544\n end\nend\nS.cfg={}\nfor k,v in pairs(cfg) do S.cfg[k]=v end\nS.observed={pull=0}\nS.dynamic={}\nS.rouletteWindows={}\nfunction S.time(name)\n if S.observed[name] then return S.observed[name] end\n local a=S.anchors[name]\n return S.time(a.after)+a.offset\nend\nfunction S.union(list)\n table.sort(list,function(a,b)return a[1]<b[1] end)\n local out={}\n for _,w in ipairs(list) do\n  local last=out[#out]\n  if last and w[1]<=last[2] and w[3]==last[3] then last[2]=math.max(last[2],w[2])\n  else out[#out+1]={w[1],w[2],w[3]} end\n end\n return out\nend\nfunction S.rouletteForecast() end\nS.dotStarts={}\nS.dotGaps={}\nS.dotEnds={ [1644]=\"p1end\", [1185]=\"p2end\", [1801]=\"p3end\" }\nfunction S.publishDots()\n local t=TensorCore.mGetTarget()\n local now=A.getAutoSimTime()\n if t and t.alive and t.targetable then\n  S.dotEntityID=t.id;S.dotContentID=t.contentid\n end\n local cid=S.dotContentID\n local endAnchor=S.dotEnds[cid]\n local finish=math.min(1259,math.max(now+5,S.time(S.kill.after)+S.kill.offset))\n local start=0\n if endAnchor then\n  if not S.dotStarts[cid] then\n   local predicted=cid==1644 and 0 or (cid==1185 and S.time(\"p1end\")+S.ifritArrival or S.time(\"ifrit2Back\"))\n   S.dotStarts[cid]=math.max(0,math.min(predicted,now))\n  end\n  start=S.dotStarts[cid]\n  finish=S.observed[endAnchor] or math.max(S.time(endAnchor),now+5)\n end\n A.clearAutoSimPhases(\"DotAvailability\",0)\n A.clearAutoSimPhases(\"TargetLifetime\",0)\n if finish<=start then return end\n A.addAutoSimPhase(\"TargetLifetime\",start,finish,1,0)\n local stop=endAnchor and math.max(start,finish-.5) or finish\n local gaps={}\n if endAnchor then\n  local observed=S.dotGaps[S.dotEntityID] or {}\n  for _,p in ipairs(S.phases) do\n   if p[1]==\"FullDowntime\" then\n    local a,b=S.time(p[2])+p[3],S.time(p[4])+p[5]\n    local replaced=false\n    for _,g in ipairs(observed) do if math.abs(g[1]-a)<10 then replaced=true;break end end\n    if not replaced and b>start and a<stop then gaps[#gaps+1]={math.max(start,a),math.min(stop,b),1} end\n   end\n  end\n  for _,g in ipairs(observed) do\n   local a,b=math.max(start,g[1]),math.min(stop,g[2] or stop)\n   if b>a then gaps[#gaps+1]={a,b,1} end\n  end\n end\n local cursor=start\n for _,g in ipairs(S.union(gaps)) do\n  if g[1]>cursor then A.addAutoSimPhase(\"DotAvailability\",cursor,g[1],1,0) end\n  cursor=math.max(cursor,g[2])\n end\n if stop>cursor then A.addAutoSimPhase(\"DotAvailability\",cursor,stop,1,0) end\n S.dotPublishedEnd=finish;S.dotPublishedTarget=S.dotEntityID\nend\n\nfunction S.publish()\n local now=A.getAutoSimTime()\n local finish=math.max(now+5,S.time(S.kill.after)+S.kill.offset)\n A.setAutoSimKillTime(math.min(finish,1259))\n local grouped={FullDowntime={},CasterDowntime={},Stun={},BossModifier={},RaidBuff={},GroundFieldMovement={}}\n local function add(kind,a,b,value)\n  if b>a then grouped[kind][#grouped[kind]+1]={a,b,value or 1} end\n end\n for _,p in ipairs(S.phases) do\n  -- HP-driven deaths are variable. Do not declare the still-live boss unavailable.\n  local hpDeath=p[1]==\"FullDowntime\" and (p[2]==\"p1end\" or p[2]==\"p2end\")\n  if not hpDeath or S.observed[p[2]]~=nil then\n   add(p[1],S.time(p[2])+p[3],S.time(p[4])+p[5],p[6])\n  end\n end\n for _,p in ipairs(S.windows) do\n  local a,b=S.time(p[2])+p[3],S.time(p[4])+p[5]\n  if p[2]==\"titan1\" and S.observed.p3end then b=math.min(b,S.observed.p3end) end\n  add(p[1],a,b,p[6])\n end\n if S.cfg.poolLaha then\n  add(\"BossModifier\",S.time(\"magitekBit1\")+S.lahaDelay,S.time(\"p4end\"),.01)\n end\n if S.cfg.priorityGaols then\n  add(\"BossModifier\",S.time(\"titan1\")+68.966,S.time(\"titan1\")+73.966,1.10)\n  add(\"BossModifier\",S.time(\"p4end\")+227.75,S.time(\"p4end\")+232.75,1.10)\n end\n if S.cfg.raidBuffs then\n  local prev\n  for _,w in ipairs(S.buffwindows) do\n   local t=S.time(w[1])+w[2]\n   if prev then t=math.max(t,prev+120) end\n   -- The p1end-anchored burst is the Ifrit opener; preserve its timing/resync.\n   local burstWeight=w[1]==\"p1end\" and 1.4 or (1+S.cfg.buffGain/100)\n   local burstEnd=t+20\n   if w[1]==\"p1end\" then\n    -- Never extend the artificial 1.4 opener into nail softening.\n    burstEnd=math.min(burstEnd,S.time(\"p1end\")+39,S.nailsStartedAt or math.huge)\n   end\n   add(\"RaidBuff\",t,burstEnd,burstWeight)\n   prev=t\n  end\n end\n for _,w in ipairs(S.rouletteWindows) do add(\"CasterDowntime\",w[1],w[2],1) end\n for _,w in pairs(S.dynamic) do add(w[1],w[2],w[3],w[4]) end\n for kind,list in pairs(grouped) do\n  A.clearAutoSimPhases(kind)\n  -- All absolute same-type overlaps are merged before submission.\n  if kind==\"BossModifier\" or kind==\"RaidBuff\" then\n   local cuts,seen={},{}\n   for _,w in ipairs(list) do for i=1,2 do if not seen[w[i]] then cuts[#cuts+1]=w[i];seen[w[i]]=true end end end\n   table.sort(cuts)\n   for i=1,#cuts-1 do\n    local value,active=1,false\n    for _,w in ipairs(list) do if w[1]<=cuts[i] and w[2]>=cuts[i+1] then value=value*w[3];active=true end end\n    if active then A.addAutoSimPhase(kind,cuts[i],cuts[i+1],value) end\n   end\n  else\n   for _,w in ipairs(S.union(list)) do A.addAutoSimPhase(kind,w[1],w[2],w[3]) end\n  end\n end\n S.publishDots()\n A.clearAutoSimUncertainty()\n A.addAutoSimUncertainty(0,2)\n local uncertainty=2\n for _,name in ipairs(S.anchorOrder) do\n  if not S.observed[name] then\n   local anchor=S.anchors[name]\n   uncertainty=math.max(uncertainty,anchor.spread)\n   A.addAutoSimUncertainty(S.time(name)-25,uncertainty)\n  end\n end\n A.addAutoSimUncertainty(math.max(0,finish-30),math.max(uncertainty,S.kill.spread))\nend\nfunction S.resync(name,now)\n if S.observed[name] then return end\n S.observed[name]=now\n S.rouletteForecast()\n S.publish()\n\nend\nS.rouletteForecast()\nS.publish()\ndata.uwuBRDAutoSim=S\nself.used=true",
							conditions = 
							{
								
								{
									"bd55e653-58c4-b046-b710-95685cebb7f8",
									true,
								},
								
								{
									"d1228212-9acd-1afe-899a-c3f4ba08d16c",
									true,
								},
								
								{
									"fcc4f44a-bcad-b301-9250-a519191315f0",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "466691e9-8c54-bcce-b631-1f0acc5e2e15",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.uwuBRDAutoSim==nil",
							name = "not configured",
							uuid = "fcc4f44a-bcad-b301-9250-a519191315f0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 8,
							dequeueIfLuaFalse = true,
							localmapid = 777,
							name = "UWU only",
							uuid = "bd55e653-58c4-b046-b710-95685cebb7f8",
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
							name = "BRD only",
							uuid = "d1228212-9acd-1afe-899a-c3f4ba08d16c",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim",
				eventType = 16,
				mechanicTime = 9,
				name = "[BRD UWU] Configure phase forecast",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = -8,
				timerStartOffset = -70,
				uuid = "9052924a-db84-cbf7-9d80-8269a4324417",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local T=_G.UWU_BRD_TemporaryState\nif T and T.gaolPriorityOptions then\n for k,v in pairs(T.gaolPriorityOptions) do _G[k]=v end\n T.gaolPriorityOptions=nil\nend\nlocal T=_G.UWU_BRD_TemporaryState\nif T and T.gaols then\n TensorCore.API.TensorACR.deleteAOEBlacklistEntry(1804)\n TensorCore.API.TensorACR.deleteBlacklistEntry(1804)\n TensorCore.API.TensorACR.saveDotBlacklist()\nend\n_G.UWU_BRD_TemporaryState=nil\ndata.uwuBRDAutoSim=nil\nself.used=true",
							conditions = 
							{
								
								{
									"c2677c9c-4094-9c7d-87be-d1c588b1511d",
									true,
								},
								
								{
									"81758487-6a22-31f5-b58d-5735e81f6059",
									true,
								},
								
								{
									"2489def5-2b34-92c8-974c-6d67d5f4900c",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "7ca478e7-60b5-7d1f-988c-2f2d090b2c04",
							version = 2.1,
						},
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
							localmapid = 777,
							name = "UWU only",
							uuid = "c2677c9c-4094-9c7d-87be-d1c588b1511d",
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
							name = "BRD only",
							uuid = "81758487-6a22-31f5-b58d-5735e81f6059",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return _G.UWU_BRD_TemporaryState~=nil",
							name = "owned state",
							uuid = "2489def5-2b34-92c8-974c-6d67d5f4900c",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim",
				eventType = 9,
				loop = true,
				mechanicTime = 9,
				name = "[BRD UWU] Restore temporary settings Wipe",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -80,
				uuid = "4a17d526-514f-6b41-9be8-7305a13c2425",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.uwuBRDAutoSim\nif not S or not S.publishDots then return end\nlocal t=TensorCore.mGetTarget()\nlocal changed=t and t.alive and t.targetable and t.id~=S.dotPublishedTarget\nlocal late=S.dotEnds[S.dotContentID] and not S.observed[S.dotEnds[S.dotContentID]] and S.dotPublishedEnd and TensorCore.API.TensorACR.getAutoSimTime()>=S.dotPublishedEnd-2\nif changed or late then S.publishDots() end\nself.used=true",
							conditions = 
							{
								
								{
									"05c83d34-9eeb-1637-8ede-ae93c97635c7",
									true,
								},
								
								{
									"82394d0a-9dc9-176e-83ae-da6ccceda447",
									true,
								},
							},
							name = "DoT forecast follows target",
							uuid = "822d5b81-f735-a1ed-aba5-e0078d0d917f",
							version = 2.1,
						},
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
							localmapid = 777,
							name = "UWU only",
							uuid = "05c83d34-9eeb-1637-8ede-ae93c97635c7",
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
							name = "BRD only",
							uuid = "82394d0a-9dc9-176e-83ae-da6ccceda447",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim",
				loop = true,
				mechanicTime = 9,
				name = "[BRD UWU] DoT forecast follows target",
				throttleTime = 500,
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1250,
				timerStartOffset = -9,
				uuid = "a2adee9b-2f4a-9021-a546-8e159c446237",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.uwuBRDAutoSim\nif not S or not S.publishDots or not S.dotEnds[eventArgs.entityContentID] or eventArgs.entityID~=S.dotEntityID then return end\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal gaps=S.dotGaps[eventArgs.entityID] or {};S.dotGaps[eventArgs.entityID]=gaps\nlocal last=gaps[#gaps]\nif eventArgs.isTargetable then\n if not last or last[2] then return end\n last[2]=now\nelseif not last or last[2] then gaps[#gaps+1]={now}\nelse return end\nS.publishDots();self.used=true",
							conditions = 
							{
								
								{
									"942b309e-dcac-e365-949e-6a8fcfeb6405",
									true,
								},
								
								{
									"03b3e112-56af-52f7-92e4-2ca63ec39125",
									true,
								},
							},
							name = "Observe primal DoT availability",
							uuid = "e524facb-51de-da7d-aae9-53066965604b",
							version = 2.1,
						},
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
							localmapid = 777,
							name = "UWU only",
							uuid = "942b309e-dcac-e365-949e-6a8fcfeb6405",
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
							name = "BRD only",
							uuid = "03b3e112-56af-52f7-92e4-2ca63ec39125",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim",
				eventType = 26,
				loop = true,
				mechanicTime = 9,
				name = "[BRD UWU] Observe primal DoT availability",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1250,
				timerStartOffset = -9,
				uuid = "8fee609d-dd6e-7588-8476-2f7804a48a02",
				version = 2,
			},
		},
	},
	[8] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "BRD AutoSim",
				uuid = "49d2148b-e616-2879-a6a1-f0621aaa8a94",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "BRD AutoSim",
				name = "Targeting",
				uuid = "0fd543c3-eb2c-6449-b838-498915d8643e",
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
									"8fddd1a1-c900-61be-9275-ba220ed18952",
									true,
								},
								
								{
									"099c5f99-ed15-6e14-a73c-c911796033ee",
									true,
								},
								
								{
									"72c5d974-2085-a57e-bf4d-3cba1eb37efb",
									true,
								},
								
								{
									"0e049153-a713-6b8b-9dc6-8418c2a3475c",
									true,
								},
							},
							endIfUsed = true,
							name = "Target - Garuda",
							setTarget = true,
							targetContentID = 1644,
							targetType = "ContentID",
							uuid = "8141ba8b-3ee5-7c58-8633-11ad260fde73",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "099c5f99-ed15-6e14-a73c-c911796033ee",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local t=TensorCore.mGetTarget()\nreturn t==nil or not t.alive or not t.targetable",
							name = "No living hostile target",
							uuid = "72c5d974-2085-a57e-bf4d-3cba1eb37efb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Filter",
							filterTargetType = "ContentID",
							name = "Garuda",
							partyTargetContentID = 1644,
							uuid = "0e049153-a713-6b8b-9dc6-8418c2a3475c",
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
							name = "BRD only",
							uuid = "8fddd1a1-c900-61be-9275-ba220ed18952",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim/Targeting",
				loop = true,
				mechanicTime = 34,
				name = "[BRD UWU] [Target] Garuda Reacquire",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 8,
				timerEndOffset = 147,
				uuid = "ab54da5f-a90a-0db4-9949-5360db8abe87",
				version = 2,
			},
		},
	},
	[10] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "BRD AutoSim",
				uuid = "7f09a89b-c701-486a-89aa-1994eea3cbda",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "BRD AutoSim",
				name = "Targeting",
				uuid = "d1bb26d1-be63-a5fe-9f31-3d5fe7e32fec",
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
									"f92cca99-ed96-023a-922b-1452fbe3ce6b",
									true,
								},
								
								{
									"133e5e8a-b6b1-965c-978d-2eecf722b5ff",
									true,
								},
								
								{
									"8aa9cb7e-28b4-9038-b6f9-e280f0e971ec",
									true,
								},
								
								{
									"6e942469-d81c-b584-bbba-2e2515d85217",
									true,
								},
							},
							name = "Target Garuda",
							setTarget = true,
							targetType = "Event Entity",
							uuid = "3eb165b4-ef60-fea8-984f-e7a489a57419",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "133e5e8a-b6b1-965c-978d-2eecf722b5ff",
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
							uuid = "6e942469-d81c-b584-bbba-2e2515d85217",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 1644,
							name = "Garuda",
							uuid = "8aa9cb7e-28b4-9038-b6f9-e280f0e971ec",
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
							name = "BRD only",
							uuid = "f92cca99-ed96-023a-922b-1452fbe3ce6b",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim/Targeting",
				eventType = 26,
				loop = true,
				mechanicTime = 39,
				name = "[BRD UWU] [Target] Garuda - Acquire",
				timeRange = true,
				timelineIndex = 10,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "df1426c7-f4b7-ed21-ae05-741304d527fc",
				version = 2,
			},
		},
	},
	[34] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "BRD AutoSim",
				uuid = "1f3712e9-a7e3-c668-8d8b-01c1e888799e",
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
							actionLua = "local S=data.uwuBRDAutoSim\nS.resync(\"p1end\",TensorCore.API.TensorACR.getAutoSimTime())\nself.used=true",
							conditions = 
							{
								
								{
									"1da5ffc5-0f02-771b-917c-897c2dddac47",
									true,
								},
								
								{
									"2924fac5-e3d5-7b49-9e31-a73ca05fc04a",
									true,
								},
								
								{
									"7d07e248-48a7-c254-854a-e2efbaa5e972",
									true,
								},
								
								{
									"eb4a621e-ea87-2ae6-b6b1-d7fd7c366fbb",
									true,
								},
								
								{
									"567d16c2-fb28-b39f-87d2-0d283dc411a6",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "bafdd9b0-2b60-0dbe-bc50-49c2e9a5983a",
							version = 2.1,
						},
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
							localmapid = 777,
							name = "UWU only",
							uuid = "1da5ffc5-0f02-771b-917c-897c2dddac47",
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
							name = "BRD only",
							uuid = "2924fac5-e3d5-7b49-9e31-a73ca05fc04a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 1644,
							name = "Content 1644",
							uuid = "7d07e248-48a7-c254-854a-e2efbaa5e972",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 3,
							eventBoolValue = 2,
							name = "Untargetable",
							uuid = "eb4a621e-ea87-2ae6-b6b1-d7fd7c366fbb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuBRDAutoSim\nreturn S~=nil and S.observed.p1end==nil",
							name = "anchor pending",
							uuid = "567d16c2-fb28-b39f-87d2-0d283dc411a6",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim",
				eventType = 26,
				loop = true,
				mechanicTime = 176,
				name = "[BRD UWU] Resync p1end",
				timeRange = true,
				timelineIndex = 34,
				timerEndOffset = 25,
				timerStartOffset = -76,
				uuid = "4bef9a39-0257-2210-aa4d-7eda9ffaf642",
				version = 2,
			},
		},
	},
	[36] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "BRD AutoSim",
				uuid = "4d42b615-1e32-34b8-b5d5-2dca840d997e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "BRD AutoSim",
				name = "Targeting",
				uuid = "f1d9231e-fcde-4a41-86cd-6688b844a840",
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
									"1aa09885-09ed-1120-acfa-bf9d0a4c53b5",
									true,
								},
								
								{
									"cc265f2a-19a1-4ce6-8d41-6503b1e4b05c",
									true,
								},
								
								{
									"46c60e81-3eff-f714-8972-826e20b97582",
									true,
								},
								
								{
									"08d67acd-2c2e-432c-89c5-48f7505aaa9e",
									true,
								},
							},
							endIfUsed = true,
							name = "Target - Ifrit",
							setTarget = true,
							targetContentID = 1185,
							targetType = "ContentID",
							uuid = "2aa18349-4d5c-74a4-8f91-12fe5da10859",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "cc265f2a-19a1-4ce6-8d41-6503b1e4b05c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local t=TensorCore.mGetTarget()\nreturn t==nil or not t.alive or not t.targetable",
							name = "No living hostile target",
							uuid = "46c60e81-3eff-f714-8972-826e20b97582",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Filter",
							filterTargetType = "ContentID",
							name = "Ifrit",
							partyTargetContentID = 1185,
							uuid = "08d67acd-2c2e-432c-89c5-48f7505aaa9e",
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
							name = "BRD only",
							uuid = "1aa09885-09ed-1120-acfa-bf9d0a4c53b5",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim/Targeting",
				loop = true,
				mechanicTime = 300,
				name = "[BRD UWU] [Target] Ifrit Reacquire",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 36,
				timerEndOffset = 153,
				uuid = "43904ad3-94c6-4b11-9ef1-f4caffef3098",
				version = 2,
			},
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
									"5e078e53-5ba3-a739-8bc7-51fffe4f3ebc",
									true,
								},
								
								{
									"dfa98ab5-6c22-e347-b16b-20199d54ae4e",
									true,
								},
								
								{
									"9e256e14-896c-4fe5-9b4f-c9732145762f",
									true,
								},
								
								{
									"fb4e9fdf-4972-97e1-af44-18449b59bf0d",
									true,
								},
							},
							name = "Target Ifrit",
							setTarget = true,
							targetType = "Event Entity",
							uuid = "d651ed55-8c23-0fd9-ac93-3ede376ae8ca",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "dfa98ab5-6c22-e347-b16b-20199d54ae4e",
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
							uuid = "fb4e9fdf-4972-97e1-af44-18449b59bf0d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 1185,
							name = "Ifrit",
							uuid = "9e256e14-896c-4fe5-9b4f-c9732145762f",
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
							name = "BRD only",
							uuid = "5e078e53-5ba3-a739-8bc7-51fffe4f3ebc",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim/Targeting",
				eventType = 26,
				loop = true,
				mechanicTime = 300,
				name = "[BRD UWU] [Target] Ifrit - Acquire",
				timeRange = true,
				timelineIndex = 36,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "b48e2df4-1cc9-1583-a998-0e0c30f7fb80",
				version = 2,
			},
		},
	},
	[43] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "BRD AutoSim",
				uuid = "b5fc7fdd-f6eb-65c9-a6cf-00890a1eceb9",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "BRD AutoSim",
				name = "P2 Ifrit",
				uuid = "975d97ac-b3a8-5c1d-aac4-eda0b04ff7b3",
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
				displayPath = "BRD AutoSim/P2 Ifrit",
				eventType = 9,
				execute = "if Player.job~=23 then return end\nlocal N=data.uwuBRDOwnNails\nif N and N.options then for k,v in pairs(N.options) do _G[k]=v end;N.options=nil end\nif N then N.done=true end\nself.used=true",
				executeType = 2,
				mechanicTime = 328,
				name = "[BRD UWU] Nails - Restore targeting options on wipe",
				timeRange = true,
				timelineIndex = 43,
				timerEndOffset = 1400,
				timerStartOffset = -328,
				uuid = "206a034a-aa7a-32af-ac25-e58cd0025fec",
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
				displayPath = "BRD AutoSim/P2 Ifrit",
				eventType = 11,
				execute = "if Player.job~=23 then return end\nlocal N=data.uwuBRDOwnNails\nif N and N.options then for k,v in pairs(N.options) do _G[k]=v end;N.options=nil end\nif N then N.done=true end\nself.used=true",
				executeType = 2,
				mechanicTime = 328,
				name = "[BRD UWU] Nails - Restore targeting options on map change",
				timeRange = true,
				timelineIndex = 43,
				timerEndOffset = 1400,
				timerStartOffset = -328,
				uuid = "fc446ffd-2fd9-4857-998c-2bcf07d377ee",
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
				displayPath = "BRD AutoSim/P2 Ifrit",
				execute = "if Player.job~=23 then return end\nlocal p=TensorCore.mGetPlayer()\nif not p or not p.alive then return end\nlocal roster=AnyoneCore.Roster\nlocal role\nlocal blocked\nif not roster or not roster.current() then blocked=\"waiting for roster\"\nelseif not roster.isReady() then blocked=\"waiting for ready roster\"\nelse\n role=roster.mySlot()\n if role~=\"R1\" and role~=\"R2\" and role~=\"M1\" and role~=\"M2\" then blocked=\"unsupported or missing slot: \"..tostring(role) end\nend\nif blocked then\n if data.uwuBRDNailDiagnostic~=blocked then\n  data.uwuBRDNailDiagnostic=blocked\n  TensorCore.timelineLogToFile(\"[BRD UWU nails] \"..blocked..\"\\n\")\n end\n return\nend\nlocal N=data.uwuBRDOwnNails\nlocal api=TensorCore.API.TensorACR\nlocal function restore()\n if N and N.options then for k,v in pairs(N.options) do _G[k]=v end;N.options=nil end\nend\nif not N then N={ids={},awake={}};data.uwuBRDOwnNails=N end\nif N.done then return end\nlocal entities,count,alive={},0,0\nfor _,e in pairs(TensorCore.getEntityGroupList(\"ContentID\",1186) or {}) do\n if e.alive and e.targetable then N.ids[e.id]=true;entities[e.id]=e;alive=alive+1 end\nend\nfor id in pairs(N.ids) do\n count=count+1\n local buff=TensorCore.getBuff(id,1544)\n if buff and buff.stacks>=2 then N.awake[id]=true end\nend\nlocal S=data.uwuBRDAutoSim\nif count>0 and S and not S.nailsStartedAt then\n S.nailsStartedAt=api.getAutoSimTime()\n S.publish()\nend\nif count<4 then\n local reason=\"waiting for four nails: \"..count\n if data.uwuBRDNailDiagnostic~=reason then\n  data.uwuBRDNailDiagnostic=reason\n  TensorCore.timelineLogToFile(\"[BRD UWU nails] \"..reason..\"\\n\")\n end\n return\nend\nif alive==0 then\n if N.options then for k in pairs(N.options) do _G[k]=true end;N.options=nil end\n N.done=true;return\nend\nif not N.options then\n N.options={}\n for _,toggle in ipairs(api.getQuickToggles() or {}) do\n  if string.match(toggle.var,\"_AOE$\") or string.match(toggle.var,\"_SmartAOE$\") then\n   if type(_G[toggle.var])==\"boolean\" then N.options[toggle.var]=_G[toggle.var] end\n  end\n end\nend\nif not N.order then\n if alive~=4 then return end\n local list={};for id,e in pairs(entities) do list[#list+1]=e end\n local best=math.huge;local ni,nj\n for i=1,3 do for j=i+1,4 do\n  local a,b=list[i].pos,list[j].pos\n  local d=(a.x-b.x)^2+(a.z-b.z)^2\n  if d<best then best=d;ni=i;nj=j end\n end end\n local north,south={},{}\n for i,e in ipairs(list) do\n  if i==ni or i==nj then north[#north+1]=e else south[#south+1]=e end\n end\n local nx=(north[1].pos.x+north[2].pos.x-south[1].pos.x-south[2].pos.x)/2\n local nz=(north[1].pos.z+north[2].pos.z-south[1].pos.z-south[2].pos.z)/2\n local len=math.sqrt(nx*nx+nz*nz)\n if len<1 then return end\n local ex,ez=-nz/len,nx/len\n local function eastFirst(pair)\n  local a,b=pair[1].pos,pair[2].pos\n  if (a.x-b.x)*ex+(a.z-b.z)*ez<0 then pair[1],pair[2]=pair[2],pair[1] end\n end\n eastFirst(north);eastFirst(south)\n N.order={south[1].id,south[2].id,north[1].id,north[2].id}\n local slot=roster.mySlot()\n if slot==\"R2\" then N.softenID=N.order[1]\n elseif slot==\"R1\" then N.softenID=N.order[2]\n else\n  local a,b=entities[N.order[3]],entities[N.order[4]]\n  N.softenID=TensorCore.getDistance2d(p.pos,a.pos)<=TensorCore.getDistance2d(p.pos,b.pos) and a.id or b.id\n end\nend\nlocal nail=entities[N.softenID]\nlocal reached=nail and nail.hp.percent<=40\nif role==\"M1\" or role==\"M2\" then\n for i=3,4 do local e=entities[N.order[i]];if e and e.hp.percent<=40 then reached=true end end\nend\nif not N.softened and (reached or not nail) then\n N.softened=true\n local cast=p.castinginfo\n if cast.castingid>0 or cast.channelingid>0 then\n  for _,id in ipairs(cast.castingtargets) do\n   if id==N.softenID then ActionList:StopCasting();break end\n  end\n end\nend\nlocal awakened=0\nfor id in pairs(N.ids) do if N.awake[id] then awakened=awakened+1 end end\nlocal kill=N.softened and awakened==4\nlocal desired\nif not N.softened then desired=N.softenID\nelseif kill then for _,id in ipairs(N.order) do if entities[id] then desired=id;break end end\nelse for _,e in pairs(TensorCore.getEntityGroupList(\"ContentID\",1185) or {}) do desired=e.id;break end end\n-- Only transitions are logged: no per-pulse HP/position dump.\nlocal stage=(not N.softened and \"soften\" or (kill and \"ordered kill\" or \"wait for awakening\"))\nlocal reason=stage..\"; slot=\"..role..\"; soften=\"..tostring(N.softenID)..\"; awake=\"..awakened..\"; desired=\"..tostring(desired)\nif data.uwuBRDNailDiagnostic~=reason then\n data.uwuBRDNailDiagnostic=reason\n local current=TensorCore.mGetTarget()\n local hp=nail and nail.hp.percent\n TensorCore.timelineLogToFile(\"[BRD UWU nails] \"..reason..\"; current=\"..tostring(current and current.id)..\"; softenHP=\"..tostring(hp)..\"\\n\")\nend\nlocal close=kill and not entities[N.order[1]] and not entities[N.order[2]]\nlocal meleeSoftening=(role==\"M1\" or role==\"M2\") and not N.softened\nlocal aoe=meleeSoftening or close\nfor k in pairs(N.options) do _G[k]=aoe end\nif desired then\n local target=TensorCore.mGetTarget()\n if not target or target.id~=desired then Player:SetTarget(desired) end\nend\n",
				executeType = 2,
				loop = true,
				mechanicTime = 328,
				name = "[BRD UWU] Nails - Role softening and ordered targeting",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 43,
				timerEndOffset = 67,
				timerStartOffset = -12,
				uuid = "93b24878-a171-e623-8ab5-4592dd3730dc",
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
				displayPath = "BRD AutoSim/P2 Ifrit",
				execute = "if Player.job~=23 then return end\nlocal N=data.uwuBRDOwnNails\nif N and N.options then for k,v in pairs(N.options) do _G[k]=v end;N.options=nil end\nif N then N.done=true end\nself.used=true",
				executeType = 2,
				mechanicTime = 328,
				name = "[BRD UWU] Nails - Restore targeting options after nails",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 43,
				timerEndOffset = 90,
				timerStartOffset = 68,
				uuid = "887a5bb5-d43d-bd23-9622-a8406dfdaac4",
				version = 2,
			},
		},
	},
	[50] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "BRD AutoSim",
				uuid = "213694c0-8802-7ae4-9dca-8eea6d11958e",
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
							actionLua = "local S=data.uwuBRDAutoSim\nS.resync(\"ifrit1\",TensorCore.API.TensorACR.getAutoSimTime())\nself.used=true",
							conditions = 
							{
								
								{
									"d75e98ff-284e-d092-9eb6-fc03297b0890",
									true,
								},
								
								{
									"278f247f-15b2-61ef-a8c4-d7290df684cd",
									true,
								},
								
								{
									"f20451b9-1fb8-2e63-a871-68548ee29fc2",
									true,
								},
								
								{
									"f989853e-e020-0157-81c3-9853e34d1572",
									true,
								},
								
								{
									"cc5526d9-88a9-fe30-af38-145e4fea75a6",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "c17471c8-5a99-1acf-bcd8-1f4dbc1957d2",
							version = 2.1,
						},
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
							localmapid = 777,
							name = "UWU only",
							uuid = "d75e98ff-284e-d092-9eb6-fc03297b0890",
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
							name = "BRD only",
							uuid = "278f247f-15b2-61ef-a8c4-d7290df684cd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 1185,
							name = "Content 1185",
							uuid = "f20451b9-1fb8-2e63-a871-68548ee29fc2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 3,
							eventBoolValue = 2,
							name = "Untargetable",
							uuid = "f989853e-e020-0157-81c3-9853e34d1572",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuBRDAutoSim\nreturn S~=nil and S.observed.ifrit1==nil",
							name = "anchor pending",
							uuid = "cc5526d9-88a9-fe30-af38-145e4fea75a6",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim",
				eventType = 26,
				loop = true,
				mechanicTime = 361.5,
				name = "[BRD UWU] Resync ifrit1",
				timeRange = true,
				timelineIndex = 50,
				timerEndOffset = 20,
				timerStartOffset = -15,
				uuid = "361e7559-14a7-f557-91a2-7d7e1caaeef2",
				version = 2,
			},
		},
	},
	[63] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "BRD AutoSim",
				uuid = "de5e0e63-01f7-0bc3-8069-20f3f7c3a868",
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
							actionLua = "local S=data.uwuBRDAutoSim\nlocal key=eventArgs.isTargetable and \"ifritDashBack\" or \"ifritDash\"\nS.resync(key,TensorCore.API.TensorACR.getAutoSimTime())\nself.used=true",
							conditions = 
							{
								
								{
									"cb0bdfb7-bbbc-45ab-a5c2-d58329297a35",
									true,
								},
								
								{
									"3d083f2c-0ba3-966c-a57d-8a96e2e18f08",
									true,
								},
								
								{
									"ddcfd843-898e-a910-80d5-155702467eb9",
									true,
								},
								
								{
									"6dc1ba11-1edd-bc9a-9467-340fe82352a6",
									true,
								},
							},
							name = "Resync distinct dash boundary",
							uuid = "5d03789f-68b9-a92e-8a6a-79c94d4d2ecd",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuBRDAutoSim\nif not S or not S.anchors.ifritDash then return false end\nlocal key=eventArgs.isTargetable and \"ifritDashBack\" or \"ifritDash\"\nreturn S.observed[key]==nil",
							dequeueIfLuaFalse = true,
							name = "Dash anchor pending",
							uuid = "6dc1ba11-1edd-bc9a-9467-340fe82352a6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 8,
							dequeueIfLuaFalse = true,
							localmapid = 777,
							name = "UWU only",
							uuid = "cb0bdfb7-bbbc-45ab-a5c2-d58329297a35",
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
							name = "BRD only",
							uuid = "3d083f2c-0ba3-966c-a57d-8a96e2e18f08",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 1185,
							name = "Ifrit",
							uuid = "ddcfd843-898e-a910-80d5-155702467eb9",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim",
				eventType = 26,
				loop = true,
				mechanicTime = 409,
				name = "[BRD UWU] Resync Ifrit second dash and return",
				timeRange = true,
				timelineIndex = 63,
				timerEndOffset = 25,
				timerStartOffset = -15,
				uuid = "0445def9-23f3-65e4-a0b9-58aa27e84e6d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.uwuBRDAutoSim\nS.resync(\"p2end\",TensorCore.API.TensorACR.getAutoSimTime())\nself.used=true",
							conditions = 
							{
								
								{
									"ca919d78-eb31-97ab-bd7f-18640d8cdc71",
									true,
								},
								
								{
									"7d6df88b-1440-58ac-8a8b-4327f9bb51f9",
									true,
								},
								
								{
									"410a214d-27ea-aac3-92e6-28a65f2b13a9",
									true,
								},
								
								{
									"413a1f33-fd5a-b717-b62c-a9322af9889c",
									true,
								},
								
								{
									"46a34433-9a19-45d2-965b-1f19ab5b2384",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "cf3d19de-3434-cc18-8c82-e9fbb61ecbac",
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
							dequeueIfLuaFalse = true,
							eventArgType = 3,
							eventBoolValue = 2,
							name = "Untargetable",
							uuid = "413a1f33-fd5a-b717-b62c-a9322af9889c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuBRDAutoSim\nreturn S~=nil and S.observed.p2end==nil",
							name = "anchor pending",
							uuid = "46a34433-9a19-45d2-965b-1f19ab5b2384",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 8,
							dequeueIfLuaFalse = true,
							localmapid = 777,
							name = "UWU only",
							uuid = "ca919d78-eb31-97ab-bd7f-18640d8cdc71",
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
							name = "BRD only",
							uuid = "7d6df88b-1440-58ac-8a8b-4327f9bb51f9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 1185,
							name = "Content 1185",
							uuid = "410a214d-27ea-aac3-92e6-28a65f2b13a9",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim",
				eventType = 26,
				loop = true,
				mechanicTime = 409,
				name = "[BRD UWU] Resync p2end",
				timeRange = true,
				timelineIndex = 63,
				timerEndOffset = 75,
				timerStartOffset = 15,
				uuid = "7f407256-4630-4892-860c-b51a4f91a060",
				version = 2,
			},
		},
	},
	[74] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "BRD AutoSim",
				uuid = "a3122c43-83c5-5b30-a6de-5db6f27cc60e",
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
							actionLua = "local T=_G.UWU_BRD_TemporaryState\nif T and T.leyHold then\n TensorCore.API.TensorACR.holdActionUntil(3573,Now())\n T.leyHold=nil\nend\nlocal S=data.uwuBRDAutoSim\nS.resync(\"ifrit2Back\",TensorCore.API.TensorACR.getAutoSimTime())\nself.used=true",
							conditions = 
							{
								
								{
									"9aa462f5-210e-670c-abd1-079e18ec587d",
									true,
								},
								
								{
									"a0109657-8e5b-f1d9-8a61-14706169e594",
									true,
								},
								
								{
									"e452222c-febd-51cf-af2c-cb46d0f4d285",
									true,
								},
								
								{
									"0bb5bc23-15e1-3ffe-a42e-97d5a12bb7b1",
									true,
								},
								
								{
									"a5608cb5-5c1d-e443-96c9-ca29faf53edb",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "36ff6e38-43d3-9503-b1e8-99663396cdc8",
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
							dequeueIfLuaFalse = true,
							eventArgType = 3,
							name = "Targetable",
							uuid = "0bb5bc23-15e1-3ffe-a42e-97d5a12bb7b1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuBRDAutoSim\nreturn S~=nil and S.observed.ifrit2Back==nil",
							name = "anchor pending",
							uuid = "a5608cb5-5c1d-e443-96c9-ca29faf53edb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 8,
							dequeueIfLuaFalse = true,
							localmapid = 777,
							name = "UWU only",
							uuid = "9aa462f5-210e-670c-abd1-079e18ec587d",
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
							name = "BRD only",
							uuid = "a0109657-8e5b-f1d9-8a61-14706169e594",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 1801,
							name = "Content 1801",
							uuid = "e452222c-febd-51cf-af2c-cb46d0f4d285",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim",
				eventType = 26,
				loop = true,
				mechanicTime = 600,
				name = "[BRD UWU] Resync ifrit2Back",
				timeRange = true,
				timelineIndex = 74,
				timerEndOffset = 15,
				timerStartOffset = -10,
				uuid = "76dd6a25-404e-a9c2-9fe2-737cb171b6d1",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "BRD AutoSim",
				name = "Targeting",
				uuid = "d0ea0407-dee2-fbeb-9a62-7a340f234b6a",
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
									"adec3872-3cdc-822b-af2c-5a81d73c1167",
									true,
								},
								
								{
									"67a219ee-cb1d-593c-b95e-8a3c3d6a435b",
									true,
								},
								
								{
									"b7121166-85b1-1e60-b94f-8d51a81a2d76",
									true,
								},
								
								{
									"561943b6-17a1-80b8-8417-fb01496e1eb8",
									true,
								},
							},
							endIfUsed = true,
							name = "Target - Titan",
							setTarget = true,
							targetContentID = 1801,
							targetType = "ContentID",
							uuid = "1590c39e-d12b-5f42-8868-f60bb8310953",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "67a219ee-cb1d-593c-b95e-8a3c3d6a435b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local t=TensorCore.mGetTarget()\nreturn t==nil or not t.alive or not t.targetable",
							name = "No living hostile target",
							uuid = "b7121166-85b1-1e60-b94f-8d51a81a2d76",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Filter",
							filterTargetType = "ContentID",
							name = "Titan",
							partyTargetContentID = 1801,
							uuid = "561943b6-17a1-80b8-8417-fb01496e1eb8",
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
							name = "BRD only",
							uuid = "adec3872-3cdc-822b-af2c-5a81d73c1167",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim/Targeting",
				loop = true,
				mechanicTime = 600,
				name = "[BRD UWU] [Target] Titan Reacquire",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 74,
				timerEndOffset = 168,
				uuid = "e4f807a1-90e8-ce5b-88c8-b24c5af9f250",
				version = 2,
			},
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
									"bbaaee36-b4cc-4c02-a60a-d3654b587650",
									true,
								},
								
								{
									"5ab568bd-7738-986d-af55-12eeb6effe34",
									true,
								},
								
								{
									"915e9ca0-8186-a3bb-a505-c9b936f62f68",
									true,
								},
								
								{
									"b63955d4-affa-a943-95cb-c9c089e4b23d",
									true,
								},
							},
							name = "Target Titan",
							setTarget = true,
							targetType = "Event Entity",
							uuid = "0a038f4f-9e7e-37ff-89b3-16f1dd832db1",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "5ab568bd-7738-986d-af55-12eeb6effe34",
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
							uuid = "b63955d4-affa-a943-95cb-c9c089e4b23d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 1801,
							name = "Titan",
							uuid = "915e9ca0-8186-a3bb-a505-c9b936f62f68",
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
							name = "BRD only",
							uuid = "bbaaee36-b4cc-4c02-a60a-d3654b587650",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim/Targeting",
				eventType = 26,
				loop = true,
				mechanicTime = 600,
				name = "[BRD UWU] [Target] Titan - Acquire",
				timeRange = true,
				timelineIndex = 74,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "3403e1be-d8d0-0b2a-b855-5459573ab10e",
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
				name = "BRD AutoSim",
				uuid = "9517ea41-4a5e-3a77-9260-b5b8200b27fb",
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
							actionLua = "local S=data.uwuBRDAutoSim\nS.resync(\"titan1\",TensorCore.API.TensorACR.getAutoSimTime())\nself.used=true",
							conditions = 
							{
								
								{
									"bd1f026d-e318-3f70-a7fa-76d2699a9a55",
									true,
								},
								
								{
									"cab493c1-df8f-af89-9a50-a87ab60dbf2c",
									true,
								},
								
								{
									"029ba90a-0e94-11ac-94a8-7571499ddf95",
									true,
								},
								
								{
									"a0fc9b7c-03e3-22e7-8916-b680fe02f583",
									true,
								},
								
								{
									"aa0c7d32-b5c3-7b54-8a56-cffdd5fa45d8",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "c6e2ab30-1775-93a7-8689-863a80fa30cc",
							version = 2.1,
						},
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
							localmapid = 777,
							name = "UWU only",
							uuid = "bd1f026d-e318-3f70-a7fa-76d2699a9a55",
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
							name = "BRD only",
							uuid = "cab493c1-df8f-af89-9a50-a87ab60dbf2c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 1801,
							name = "Content 1801",
							uuid = "029ba90a-0e94-11ac-94a8-7571499ddf95",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 3,
							eventBoolValue = 2,
							name = "Untargetable",
							uuid = "a0fc9b7c-03e3-22e7-8916-b680fe02f583",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuBRDAutoSim\nreturn S~=nil and S.observed.titan1==nil",
							name = "anchor pending",
							uuid = "aa0c7d32-b5c3-7b54-8a56-cffdd5fa45d8",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim",
				eventType = 26,
				loop = true,
				mechanicTime = 623.5,
				name = "[BRD UWU] Resync titan1",
				timeRange = true,
				timelineIndex = 79,
				timerEndOffset = 8,
				timerStartOffset = -8,
				uuid = "b960fa7c-9e9b-3fc4-adbd-e0b6585419ca",
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
				name = "BRD AutoSim",
				uuid = "b9a03b03-bacb-bc37-a70c-8f9ac51705c1",
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
							actionLua = "data.uwuBRDTripleGaols={ids={}}\nlocal T=_G.UWU_BRD_TemporaryState or {};_G.UWU_BRD_TemporaryState=T;T.gaols=true\nlocal entry=TensorCore.API.TensorACR.addAOEBlacklistEntry(1804,\"UWU triple player gaols\")\nentry.enabled=true\nlocal dot=TensorCore.API.TensorACR.addBlacklistEntry(1804,\"UWU triple player gaols\")\ndot.enabled=true;dot.allowIfTarget=false;dot.allowSmartDoT=false\nTensorCore.API.TensorACR.saveDotBlacklist()\nlocal S=data.uwuBRDAutoSim\nif S and eventArgs.targetID==Player.id and not S.gaolForecast then\n local now=TensorCore.API.TensorACR.getAutoSimTime()\n S.gaolForecast=true\n S.dynamic.gaolStun={\"Stun\",now+4.942,now+10.516,1}\n S.publish()\nend\nself.used=true",
							conditions = 
							{
								
								{
									"c79afe5c-c4aa-d7cf-91c6-579b78715df1",
									true,
								},
								
								{
									"f090cf7e-3848-236e-9995-db04278f8555",
									true,
								},
								
								{
									"74bf2478-63b1-c2ef-aa06-f2595fec5925",
									true,
								},
								
								{
									"59a30f60-b11f-d3ba-8852-3ac181d1c822",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "139ad644-a9d2-de40-881f-20de58e8a46e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.uwuBRDTripleGaols==nil",
							name = "first triple",
							uuid = "59a30f60-b11f-d3ba-8852-3ac181d1c822",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 8,
							dequeueIfLuaFalse = true,
							localmapid = 777,
							name = "UWU only",
							uuid = "c79afe5c-c4aa-d7cf-91c6-579b78715df1",
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
							name = "BRD only",
							uuid = "f090cf7e-3848-236e-9995-db04278f8555",
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
							name = "Exact mechanic",
							spellIDList = 
							{
								11115,
								11116,
							},
							uuid = "74bf2478-63b1-c2ef-aa06-f2595fec5925",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim",
				eventType = 2,
				loop = true,
				mechanicTime = 639,
				name = "[BRD UWU] Blacklist the triple gaols",
				timeRange = true,
				timelineIndex = 85,
				timerEndOffset = 10,
				timerStartOffset = -5,
				uuid = "e211c6a4-d858-7a77-a8bd-e63f63703acd",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.uwuBRDAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal own=S.gaolEntityID and TensorCore.mGetEntity(S.gaolEntityID)\nlocal trapped=TensorCore.hasBuff(Player.id,292) or (own and own.alive and own.targetable and own.hp.current>0)\nif trapped then\n S.fettersActive=true\n if not S.dynamic.gaolStun then S.dynamic.gaolStun={\"Stun\",now,now+1,1};S.publish()\n elseif now>=S.dynamic.gaolStun[3]-.5 then S.dynamic.gaolStun[3]=now+1;S.publish() end\nelseif S.fettersActive then\n S.dynamic.gaolStun=nil;S.fettersActive=nil;S.gaolCompleted=true\n S.publish();self.used=true\nend",
							conditions = 
							{
								
								{
									"96b07278-7d74-480a-a707-24150d78557a",
									true,
								},
								
								{
									"0411112b-492d-2b19-b636-fa2d86c32795",
									true,
								},
								
								{
									"7239ab19-50c2-b94d-87d2-4ef7b06641cc",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "578d5065-1e2b-2683-b3d3-d190f6f37eba",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "BRD only",
							uuid = "0411112b-492d-2b19-b636-fa2d86c32795",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuBRDAutoSim\nreturn S~=nil and (S.fettersActive==true or (S.gaolForecast==true and S.gaolCompleted~=true))",
							name = "stunned",
							uuid = "7239ab19-50c2-b94d-87d2-4ef7b06641cc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 8,
							dequeueIfLuaFalse = true,
							localmapid = 777,
							name = "UWU only",
							uuid = "96b07278-7d74-480a-a707-24150d78557a",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim",
				loop = true,
				mechanicTime = 639,
				name = "[BRD UWU] End personal gaol downtime",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 85,
				timerEndOffset = 40,
				timerStartOffset = -5,
				uuid = "449c8e15-54b4-0123-8dbf-c66ed670f8f3",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local G=data.uwuBRDTripleGaols\nlocal id=eventArgs.entityID\nG.ids[id]=eventArgs.isTargetable\nlocal S=data.uwuBRDAutoSim\nif eventArgs.isTargetable and S and S.gaolForecast then\n local e=TensorCore.mGetEntity(id)\n local p=TensorCore.mGetPlayer()\n if e and p then\n  local dx,dz=e.pos.x-p.pos.x,e.pos.z-p.pos.z\n  local distance=dx*dx+dz*dz\n  if distance<=4 and (not S.gaolEntityDistance or distance<S.gaolEntityDistance) then\n   S.gaolEntityID=id;S.gaolEntityDistance=distance;S.gaolEntityObserved=true\n  end\n end\nend\n\nlocal count,up=0,0\nfor _,alive in pairs(G.ids) do count=count+1;if alive then up=up+1 end end\nif count>=3 and up==0 then\n TensorCore.API.TensorACR.deleteAOEBlacklistEntry(1804)\n TensorCore.API.TensorACR.deleteBlacklistEntry(1804)\n TensorCore.API.TensorACR.saveDotBlacklist()\n _G.UWU_BRD_TemporaryState.gaols=nil\n G.done=true\nend\nself.used=true",
							conditions = 
							{
								
								{
									"9e3a4409-d4b2-6bb4-9b67-c21580b11219",
									true,
								},
								
								{
									"6ee9895c-0c92-d6fc-b32e-eddd8b7dd379",
									true,
								},
								
								{
									"e491c394-e3fb-c65f-9a83-c39da3aef004",
									true,
								},
								
								{
									"f982bc61-e418-c92b-b3aa-38e5df6b725f",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "42904776-dda5-fc5a-b346-2a6e4cee224f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "BRD only",
							uuid = "6ee9895c-0c92-d6fc-b32e-eddd8b7dd379",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 1804,
							name = "Content 1804",
							uuid = "e491c394-e3fb-c65f-9a83-c39da3aef004",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local G=data.uwuBRDTripleGaols\nreturn G~=nil and not G.done",
							name = "triple active",
							uuid = "f982bc61-e418-c92b-b3aa-38e5df6b725f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 8,
							dequeueIfLuaFalse = true,
							localmapid = 777,
							name = "UWU only",
							uuid = "9e3a4409-d4b2-6bb4-9b67-c21580b11219",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim",
				eventType = 26,
				loop = true,
				mechanicTime = 639,
				name = "[BRD UWU] Unblock after all three gaols",
				timeRange = true,
				timelineIndex = 85,
				timerEndOffset = 35,
				timerStartOffset = -5,
				uuid = "d21d2dba-ae65-8754-9a51-524633e4c59f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.uwuBRDAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal duration=eventArgs.buffDuration\nif type(duration)~=\"number\" or duration<=0 then duration=5.574 end\nS.fettersActive=true\nS.dynamic.gaolStun={\"Stun\",now,now+duration,1}\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"d6490a1e-3215-e47b-9ffe-ec5fc79fed29",
									true,
								},
								
								{
									"696c90b1-d7b8-80c6-a29c-9c23766ef9d8",
									true,
								},
								
								{
									"d2355880-9367-b68d-b7d9-3ae26d7f1ab7",
									true,
								},
								
								{
									"e21f378c-0644-89d6-9020-37f75844df1f",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "2a11acc6-aa0b-69d7-809e-f02a3bcfc011",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityID==Player.id and eventArgs.buffID==292 and data.uwuBRDAutoSim~=nil",
							dequeueIfLuaFalse = true,
							name = "self fetters",
							uuid = "e21f378c-0644-89d6-9020-37f75844df1f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventBuffID = 292,
							name = "Exact Fetters event",
							uuid = "d6490a1e-3215-e47b-9ffe-ec5fc79fed29",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 8,
							dequeueIfLuaFalse = true,
							localmapid = 777,
							name = "UWU only",
							uuid = "696c90b1-d7b8-80c6-a29c-9c23766ef9d8",
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
							name = "BRD only",
							uuid = "d2355880-9367-b68d-b7d9-3ae26d7f1ab7",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim",
				eventType = 8,
				loop = true,
				mechanicTime = 639,
				name = "[BRD UWU] Observe personal Fetters stun",
				timeRange = true,
				timelineIndex = 85,
				timerEndOffset = 25,
				timerStartOffset = -5,
				uuid = "e0298fb2-f8c1-cfd3-8b1c-67daabf4f68e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.uwuBRDAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime();S.gaolForecast=true\nS.dynamic.gaolStun={\"Stun\",now+4.942,now+10.516,1}\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"d2b8802d-29a0-24f8-95e4-d09d630c0e4e",
									true,
								},
								
								{
									"9e268e51-4037-ebcf-9b5f-f595cc49b33d",
									true,
								},
								
								{
									"6c262215-55a0-b8c5-9f38-53ff06792339",
									true,
								},
								
								{
									"dc5d1716-ecb7-e712-a262-76f130208ccf",
									true,
								},
								
								{
									"8577264b-edca-1be4-820f-dcce18615f30",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "6a0ddd0d-e09d-ee34-9029-253576adbd1a",
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
							dequeueIfLuaFalse = true,
							eventArgOptionType = 3,
							eventArgType = 2,
							name = "Exact mechanic",
							spellIDList = 
							{
								11115,
								11116,
							},
							uuid = "6c262215-55a0-b8c5-9f38-53ff06792339",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.targetID==Player.id",
							dequeueIfLuaFalse = true,
							name = "self mark",
							uuid = "dc5d1716-ecb7-e712-a262-76f130208ccf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuBRDAutoSim\nreturn S~=nil and not S.gaolForecast",
							dequeueIfLuaFalse = true,
							name = "not forecast",
							uuid = "8577264b-edca-1be4-820f-dcce18615f30",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 8,
							dequeueIfLuaFalse = true,
							localmapid = 777,
							name = "UWU only",
							uuid = "d2b8802d-29a0-24f8-95e4-d09d630c0e4e",
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
							name = "BRD only",
							uuid = "9e268e51-4037-ebcf-9b5f-f595cc49b33d",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim",
				eventType = 2,
				loop = true,
				mechanicTime = 639,
				name = "[BRD UWU] Forecast personal gaol movement",
				timeRange = true,
				timelineIndex = 85,
				timerEndOffset = 10,
				timerStartOffset = -5,
				uuid = "56782945-a818-0045-b86b-15560ee90980",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "BRD AutoSim",
				name = "Targeting",
				uuid = "1ca8a3bc-3eb5-7d4b-a8dc-4c1eb822310a",
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
									"68cbae5a-d7ec-b598-bc5b-391fb41a17ae",
									true,
								},
								
								{
									"2e493b74-1351-bb97-a2f4-86468878f53a",
									true,
								},
								
								{
									"eeee30f9-55bd-c4fd-b26e-f45fa5e8f72b",
									true,
								},
								
								{
									"fec3e43e-9926-e03e-b3db-a76448b4e221",
									true,
								},
							},
							name = "Target nearest Granite Gaol",
							setTarget = true,
							targetContentID = 1804,
							targetType = "ContentID",
							uuid = "233bb631-7b1c-d307-9678-1e5bf2464848",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "2e493b74-1351-bb97-a2f4-86468878f53a",
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
							uuid = "fec3e43e-9926-e03e-b3db-a76448b4e221",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 1804,
							name = "Event entity",
							uuid = "eeee30f9-55bd-c4fd-b26e-f45fa5e8f72b",
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
							name = "BRD only",
							uuid = "68cbae5a-d7ec-b598-bc5b-391fb41a17ae",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim/Targeting",
				enabled = false,
				eventType = 26,
				loop = true,
				mechanicTime = 639,
				name = "[BRD UWU] [Target] Titan Gaols - Acquire",
				timeRange = true,
				timelineIndex = 85,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "a79d389f-266e-af47-bf9e-9c02420b5c9a",
				version = 2,
			},
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
									"fd4d4b08-51cd-046c-8d73-796a9b2a17c7",
									true,
								},
								
								{
									"97de163e-fbd6-b12c-b8f7-7848c6c5686f",
									true,
								},
								
								{
									"03683c39-a1d0-da73-bdb7-23f8870bfbb5",
									true,
								},
								
								{
									"215d614b-9325-3a7e-8803-6868598a98e5",
									true,
								},
								
								{
									"6d20bbfd-a82e-6d95-b627-5e251060f8a5",
									true,
								},
							},
							name = "Target next Granite Gaol",
							setTarget = true,
							targetType = "Detection Target",
							uuid = "e4204008-6fa1-9f35-b535-ff8e976a5bf2",
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
									"fd4d4b08-51cd-046c-8d73-796a9b2a17c7",
									true,
								},
								
								{
									"97de163e-fbd6-b12c-b8f7-7848c6c5686f",
									true,
								},
								
								{
									"03683c39-a1d0-da73-bdb7-23f8870bfbb5",
									true,
								},
								
								{
									"215d614b-9325-3a7e-8803-6868598a98e5",
									true,
								},
								
								{
									"6d20bbfd-a82e-6d95-b627-5e251060f8a5",
									false,
								},
							},
							name = "Restore Titan target",
							setTarget = true,
							targetContentID = 1801,
							targetType = "ContentID",
							uuid = "c9cf1fff-7b66-01a9-9dd6-373ce8c4ee97",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "97de163e-fbd6-b12c-b8f7-7848c6c5686f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Filter",
							filterTargetType = "ContentID",
							name = "Targetable gaol remains",
							partyTargetContentID = 1804,
							uuid = "6d20bbfd-a82e-6d95-b627-5e251060f8a5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 1804,
							name = "Event entity",
							uuid = "03683c39-a1d0-da73-bdb7-23f8870bfbb5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 3,
							eventBoolValue = 2,
							name = "Became untargetable",
							uuid = "215d614b-9325-3a7e-8803-6868598a98e5",
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
							name = "BRD only",
							uuid = "fd4d4b08-51cd-046c-8d73-796a9b2a17c7",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim/Targeting",
				enabled = false,
				eventType = 26,
				loop = true,
				mechanicTime = 639,
				name = "[BRD UWU] [Target] Titan Gaols - Advance",
				timeRange = true,
				timelineIndex = 85,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "7d0a2659-f459-f6a9-b3d6-9432b44dfcd6",
				version = 2,
			},
		},
	},
	[90] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "BRD AutoSim",
				uuid = "2263f964-99fd-463a-a084-3d35960c9ae1",
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
							actionLua = "TensorCore.API.TensorACR.deleteAOEBlacklistEntry(1804)\n TensorCore.API.TensorACR.deleteBlacklistEntry(1804)\n TensorCore.API.TensorACR.saveDotBlacklist()\n_G.UWU_BRD_TemporaryState.gaols=nil\nif data.uwuBRDTripleGaols then data.uwuBRDTripleGaols.done=true end\nself.used=true",
							conditions = 
							{
								
								{
									"b54ecaa4-fdb0-fbe1-8b52-b2a4c6c86be8",
									true,
								},
								
								{
									"474a4b44-d6ed-5bab-b4d2-8d4eb3eb37f0",
									true,
								},
								
								{
									"864fd1e9-e7d4-0451-8c72-b6a9f5e5209c",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "9c96fe94-d945-8541-929c-72b1f80a6f43",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "BRD only",
							uuid = "474a4b44-d6ed-5bab-b4d2-8d4eb3eb37f0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local T=_G.UWU_BRD_TemporaryState\nreturn T~=nil and T.gaols==true",
							name = "Owned gaol blacklist",
							uuid = "864fd1e9-e7d4-0451-8c72-b6a9f5e5209c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 8,
							dequeueIfLuaFalse = true,
							localmapid = 777,
							name = "UWU only",
							uuid = "b54ecaa4-fdb0-fbe1-8b52-b2a4c6c86be8",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim",
				mechanicTime = 666,
				name = "[BRD UWU] Triple-gaol blacklist deadline",
				timeRange = true,
				timelineIndex = 90,
				timerStartOffset = -2,
				uuid = "cb98e2f6-ccd4-cf84-ac88-1b1abaab495b",
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
				name = "BRD AutoSim",
				uuid = "29433c00-18f3-5cce-948d-0eeaa77b5f7b",
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
							actionLua = "local S=data.uwuBRDAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal duration=eventArgs.buffDuration\nif type(duration)~=\"number\" or duration<=0 then duration=5.574 end\nS.fettersActive=true\nS.dynamic.gaolStun={\"Stun\",now,now+duration,1}\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"d73dd038-fb41-c772-978d-f38e50ff6e6e",
									true,
								},
								
								{
									"2a54bfad-7d8f-9ed2-902a-4a35d1840c98",
									true,
								},
								
								{
									"39dd7087-e10e-ce95-a8fb-9cc94fd12e15",
									true,
								},
								
								{
									"d7e3af5a-d60a-70fd-97fd-6b49c293f4a0",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "1d5c563b-9ec0-3211-94c7-7d38be41b90e",
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
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventBuffID = 292,
							name = "Exact Fetters event",
							uuid = "d73dd038-fb41-c772-978d-f38e50ff6e6e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 8,
							dequeueIfLuaFalse = true,
							localmapid = 777,
							name = "UWU only",
							uuid = "2a54bfad-7d8f-9ed2-902a-4a35d1840c98",
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
							name = "BRD only",
							uuid = "39dd7087-e10e-ce95-a8fb-9cc94fd12e15",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityID==Player.id and eventArgs.buffID==292 and data.uwuBRDAutoSim~=nil",
							dequeueIfLuaFalse = true,
							name = "self fetters",
							uuid = "d7e3af5a-d60a-70fd-97fd-6b49c293f4a0",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim",
				eventType = 8,
				loop = true,
				mechanicTime = 684,
				name = "[BRD UWU] Observe healer gaol personal stun",
				timeRange = true,
				timelineIndex = 95,
				timerEndOffset = 25,
				timerStartOffset = -5,
				uuid = "0e06d4bd-3dc1-def0-b4b0-721a345ba841",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.uwuBRDAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal own=S.gaolEntityID and TensorCore.mGetEntity(S.gaolEntityID)\nlocal trapped=TensorCore.hasBuff(Player.id,292) or (own and own.alive and own.targetable and own.hp.current>0)\nif trapped then\n S.fettersActive=true\n if not S.dynamic.gaolStun then S.dynamic.gaolStun={\"Stun\",now,now+1,1};S.publish()\n elseif now>=S.dynamic.gaolStun[3]-.5 then S.dynamic.gaolStun[3]=now+1;S.publish() end\nelseif S.fettersActive then\n S.dynamic.gaolStun=nil;S.fettersActive=nil;S.gaolCompleted=true\n S.publish();self.used=true\nend",
							conditions = 
							{
								
								{
									"cee27077-1453-8ae3-8513-549438af3e88",
									true,
								},
								
								{
									"29caa41e-8df5-d15c-8a0c-8b36ffe74d01",
									true,
								},
								
								{
									"f7e29442-6796-8776-b198-7573f9a738ff",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "29633491-ecd9-901f-8566-c0a8cd80558f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "BRD only",
							uuid = "29caa41e-8df5-d15c-8a0c-8b36ffe74d01",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuBRDAutoSim\nreturn S~=nil and S.fettersActive==true",
							name = "stunned",
							uuid = "f7e29442-6796-8776-b198-7573f9a738ff",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 8,
							dequeueIfLuaFalse = true,
							localmapid = 777,
							name = "UWU only",
							uuid = "cee27077-1453-8ae3-8513-549438af3e88",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim",
				loop = true,
				mechanicTime = 684,
				name = "[BRD UWU] End healer gaol personal stun",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 95,
				timerEndOffset = 25,
				timerStartOffset = -5,
				uuid = "8785f086-ca97-ad9d-bd10-6920c85d1609",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "BRD AutoSim",
				name = "Targeting",
				uuid = "7c612361-233a-3798-a902-f8e270bd1a0d",
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
							actionLua = "local T=_G.UWU_BRD_TemporaryState or {}\n_G.UWU_BRD_TemporaryState=T\nif not T.gaolPriorityOptions then\n local toggles=TensorCore.API.TensorACR.getQuickToggles()\n if not toggles then return end\n T.gaolPriorityOptions={}\n for _,toggle in ipairs(toggles) do\n  local k=toggle.var\n  if string.match(k,\"_AOE$\") or string.match(k,\"_SmartAOE$\") then\n   if type(_G[k])==\"boolean\" then T.gaolPriorityOptions[k]=_G[k] end\n  end\n end\nend\nfor k in pairs(T.gaolPriorityOptions) do _G[k]=false end\nself.used=true",
							conditions = 
							{
								
								{
									"697d3a58-3585-232b-83ad-479157caa800",
									true,
								},
								
								{
									"5a1fc35e-1bf4-8e73-98d9-6eeebf45d254",
									true,
								},
								
								{
									"95d2af6d-2ef3-8055-b7ae-e52cbe4374bd",
									true,
								},
								
								{
									"233d17d7-da1d-0eb4-a7b2-4c15a45f9ed3",
									true,
								},
								
								{
									"d3de6ce6-f739-5a46-95ad-81be87cc001b",
									true,
								},
							},
							name = "Gaol single-target only",
							uuid = "543d8e85-df38-9a2a-a0f5-07cc44b32661",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							aType = "Misc",
							conditions = 
							{
								
								{
									"697d3a58-3585-232b-83ad-479157caa800",
									true,
								},
								
								{
									"5a1fc35e-1bf4-8e73-98d9-6eeebf45d254",
									true,
								},
								
								{
									"95d2af6d-2ef3-8055-b7ae-e52cbe4374bd",
									true,
								},
								
								{
									"233d17d7-da1d-0eb4-a7b2-4c15a45f9ed3",
									true,
								},
								
								{
									"d3de6ce6-f739-5a46-95ad-81be87cc001b",
									true,
								},
							},
							name = "Target newly targetable gaol",
							setTarget = true,
							targetType = "Event Entity",
							uuid = "ad2daf4e-a347-64f3-9f37-9ea103f7c879",
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
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 1804,
							name = "Granite Gaol 1804",
							uuid = "95d2af6d-2ef3-8055-b7ae-e52cbe4374bd",
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
							uuid = "233d17d7-da1d-0eb4-a7b2-4c15a45f9ed3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local Roster = AnyoneCore.Roster\nif not Roster or not Roster.current() then return false end\nlocal slot = Roster.mySlot()\nif not slot then return false end\nreturn slot == \"H1\" or slot == \"H2\" or slot == \"M1\" or slot == \"M2\" or slot == \"R1\" or slot == \"R2\"",
							name = "Roster: DPS/healers",
							uuid = "d3de6ce6-f739-5a46-95ad-81be87cc001b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "5a1fc35e-1bf4-8e73-98d9-6eeebf45d254",
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
							name = "BRD only",
							uuid = "697d3a58-3585-232b-83ad-479157caa800",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim/Targeting",
				eventType = 26,
				mechanicTime = 684,
				name = "[BRD UWU] [Target][Titan] Granite Gaol - Non-Tanks",
				timeRange = true,
				timelineIndex = 95,
				timerEndOffset = 13,
				timerStartOffset = 3,
				uuid = "a599c6a1-5c22-c30c-8a3b-1f9fe23864a1",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local T=_G.UWU_BRD_TemporaryState\nif T and T.gaolPriorityOptions then\n for k,v in pairs(T.gaolPriorityOptions) do _G[k]=v end\n T.gaolPriorityOptions=nil\nend\nself.used=true",
							conditions = 
							{
								
								{
									"0e02be01-42e1-8a1d-9816-372fdad49f39",
									true,
								},
								
								{
									"cedab3c6-a700-12d7-8c15-b1ad30438d08",
									true,
								},
								
								{
									"e758b8db-90c3-11c0-a107-2e0f9f865f15",
									true,
								},
								
								{
									"cfbbfbcb-83a4-b399-8bec-34f6495f50a7",
									true,
								},
								
								{
									"29585a85-42a8-6129-9af4-3e186ac31e6b",
									false,
								},
							},
							name = "Restore pre-gaol AoE settings",
							uuid = "520d1075-9b7e-502f-9fed-a13e13dcad46",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							aType = "Misc",
							conditions = 
							{
								
								{
									"0e02be01-42e1-8a1d-9816-372fdad49f39",
									true,
								},
								
								{
									"cedab3c6-a700-12d7-8c15-b1ad30438d08",
									true,
								},
								
								{
									"e758b8db-90c3-11c0-a107-2e0f9f865f15",
									true,
								},
								
								{
									"cfbbfbcb-83a4-b399-8bec-34f6495f50a7",
									true,
								},
								
								{
									"29585a85-42a8-6129-9af4-3e186ac31e6b",
									true,
								},
							},
							name = "Target next Granite Gaol",
							setTarget = true,
							targetType = "Detection Target",
							uuid = "f203546a-fed5-50eb-b60c-c6bad3b663d6",
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
									"0e02be01-42e1-8a1d-9816-372fdad49f39",
									true,
								},
								
								{
									"cedab3c6-a700-12d7-8c15-b1ad30438d08",
									true,
								},
								
								{
									"e758b8db-90c3-11c0-a107-2e0f9f865f15",
									true,
								},
								
								{
									"cfbbfbcb-83a4-b399-8bec-34f6495f50a7",
									true,
								},
								
								{
									"29585a85-42a8-6129-9af4-3e186ac31e6b",
									false,
								},
							},
							name = "Restore Titan target",
							setTarget = true,
							targetContentID = 1801,
							targetType = "ContentID",
							uuid = "d4b45612-049f-7d98-82a9-9c7a00669eda",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "cedab3c6-a700-12d7-8c15-b1ad30438d08",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 1804,
							name = "Event entity",
							uuid = "e758b8db-90c3-11c0-a107-2e0f9f865f15",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 3,
							eventBoolValue = 2,
							name = "Became untargetable",
							uuid = "cfbbfbcb-83a4-b399-8bec-34f6495f50a7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Filter",
							filterTargetType = "ContentID",
							name = "Targetable gaol remains",
							partyTargetContentID = 1804,
							uuid = "29585a85-42a8-6129-9af4-3e186ac31e6b",
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
							name = "BRD only",
							uuid = "0e02be01-42e1-8a1d-9816-372fdad49f39",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim/Targeting",
				eventType = 26,
				loop = true,
				mechanicTime = 684,
				name = "[BRD UWU] [Target] Healer Gaol - Advance",
				timeRange = true,
				timelineIndex = 95,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "0bf79b9a-e246-cf14-8051-41d79096b12d",
				version = 2,
			},
		},
	},
	[113] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "BRD AutoSim",
				uuid = "d7184a14-07bd-f0e6-ad2e-31d27b23e22a",
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
							actionLua = "local S=data.uwuBRDAutoSim\nS.resync(\"p3end\",TensorCore.API.TensorACR.getAutoSimTime())\nself.used=true",
							conditions = 
							{
								
								{
									"91cf4b33-bf30-1775-b62c-01cdd8cd5120",
									true,
								},
								
								{
									"43b19da0-fddf-5a41-8fd3-0797035adef8",
									true,
								},
								
								{
									"d2e6393a-e0c7-7f08-8af4-7dac26c1711e",
									true,
								},
								
								{
									"0f2d3e4e-c75d-7a17-878c-9009197fcbf6",
									true,
								},
								
								{
									"bcbeaf73-0f2e-c4cd-89e2-839c0fe287a0",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "a8b3e109-86d2-5f78-aca3-0f50009afe48",
							version = 2.1,
						},
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
							localmapid = 777,
							name = "UWU only",
							uuid = "91cf4b33-bf30-1775-b62c-01cdd8cd5120",
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
							name = "BRD only",
							uuid = "43b19da0-fddf-5a41-8fd3-0797035adef8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 1801,
							name = "Content 1801",
							uuid = "d2e6393a-e0c7-7f08-8af4-7dac26c1711e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 3,
							eventBoolValue = 2,
							name = "Untargetable",
							uuid = "0f2d3e4e-c75d-7a17-878c-9009197fcbf6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuBRDAutoSim\nreturn S~=nil and S.observed.p3end==nil",
							name = "anchor pending",
							uuid = "bcbeaf73-0f2e-c4cd-89e2-839c0fe287a0",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim",
				eventType = 26,
				loop = true,
				mechanicTime = 768,
				name = "[BRD UWU] Resync p3end",
				timeRange = true,
				timelineIndex = 113,
				timerEndOffset = 30,
				timerStartOffset = -65,
				uuid = "a4cb9889-1954-7285-a632-860801d2402c",
				version = 2,
			},
		},
	},
	[114] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "BRD AutoSim",
				uuid = "3c2c1394-2564-479a-ac5d-bed47d4da935",
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
							actionLua = "local S=data.uwuBRDAutoSim\nS.bits=S.bits or {}\nlocal id=eventArgs.entityID\nif eventArgs.isTargetable then\n S.bits[id]=true;S.resync(\"titan3Back\",TensorCore.API.TensorACR.getAutoSimTime())\nelseif S.bits[id]~=nil then\n S.bits[id]=false\n local count=0\n for _,up in pairs(S.bits) do if up then self.used=true;return end;count=count+1 end\n if count==6 then S.resync(\"magitekBit1\",TensorCore.API.TensorACR.getAutoSimTime()) end\nend\nself.used=true",
							conditions = 
							{
								
								{
									"28de94ed-acb6-00f0-a126-349fe68c48bf",
									true,
								},
								
								{
									"5deb6665-8211-9130-83d9-5c8d08e76cc7",
									true,
								},
								
								{
									"21b36e1b-6f62-657e-893e-94a66a674707",
									true,
								},
								
								{
									"e28a2b9b-b79f-b842-b16f-08820a0b2d2e",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "3345e741-63ad-d4ec-b397-e91336d89e86",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "BRD only",
							uuid = "5deb6665-8211-9130-83d9-5c8d08e76cc7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 5563,
							name = "Content 5563",
							uuid = "21b36e1b-6f62-657e-893e-94a66a674707",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.uwuBRDAutoSim~=nil",
							name = "configured",
							uuid = "e28a2b9b-b79f-b842-b16f-08820a0b2d2e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 8,
							dequeueIfLuaFalse = true,
							localmapid = 777,
							name = "UWU only",
							uuid = "28de94ed-acb6-00f0-a126-349fe68c48bf",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim",
				eventType = 26,
				loop = true,
				mechanicTime = 800,
				name = "[BRD UWU] Resync six Magitek Bits",
				timeRange = true,
				timelineIndex = 114,
				timerEndOffset = 25,
				timerStartOffset = -20,
				uuid = "be9b9966-c9fc-0f29-a876-ae7d82d5bbdf",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "BRD AutoSim",
				name = "Targeting",
				uuid = "9421e9e3-898b-232c-be48-82d4c72d038b",
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
									"99d74e1d-7b99-abc0-a11d-37d1557975f8",
									true,
								},
								
								{
									"4df98c62-1036-97e4-a7b4-ae4f24a09598",
									true,
								},
								
								{
									"05455d93-4964-ad3c-bc3e-051588b0528b",
									true,
								},
								
								{
									"70d5c0a7-9545-c91b-b0a3-da8365ccfb92",
									true,
								},
							},
							name = "Target nearest Magitek Bit",
							setTarget = true,
							targetContentID = 5563,
							targetType = "ContentID",
							uuid = "7b32dee8-586b-3842-8ad2-38063285c60e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "4df98c62-1036-97e4-a7b4-ae4f24a09598",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 5563,
							name = "Event entity",
							uuid = "05455d93-4964-ad3c-bc3e-051588b0528b",
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
							uuid = "70d5c0a7-9545-c91b-b0a3-da8365ccfb92",
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
							name = "BRD only",
							uuid = "99d74e1d-7b99-abc0-a11d-37d1557975f8",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim/Targeting",
				eventType = 26,
				loop = true,
				mechanicTime = 800,
				name = "[BRD UWU] [Target] Magitek Bits",
				timeRange = true,
				timelineIndex = 114,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "a557c9b8-8c84-345f-b060-7e53383cd987",
				version = 2,
			},
		},
	},
	[116] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "BRD AutoSim",
				uuid = "8c8a080b-ab33-5513-93e6-1750acae2ea5",
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
							actionLua = "local S=data.uwuBRDAutoSim\nS.resync(\"p4end\",TensorCore.API.TensorACR.getAutoSimTime())\nself.used=true",
							conditions = 
							{
								
								{
									"b3b02b8f-b7c1-30a4-9554-406ac58a7568",
									true,
								},
								
								{
									"6a256d64-f674-2f12-a8ed-4cfba3222662",
									true,
								},
								
								{
									"0a78c112-51f1-2e29-85a4-9e78f888855b",
									true,
								},
								
								{
									"7035bad1-95b9-15b4-8f9a-1a30161331d4",
									true,
								},
								
								{
									"2270d150-25ba-1b2e-85d0-a86166e6d2b1",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "fedc6f75-6937-1936-b1d6-8c39f57d4182",
							version = 2.1,
						},
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
							localmapid = 777,
							name = "UWU only",
							uuid = "b3b02b8f-b7c1-30a4-9554-406ac58a7568",
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
							name = "BRD only",
							uuid = "6a256d64-f674-2f12-a8ed-4cfba3222662",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 2143,
							name = "Content 2143",
							uuid = "0a78c112-51f1-2e29-85a4-9e78f888855b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 3,
							eventBoolValue = 2,
							name = "Untargetable",
							uuid = "7035bad1-95b9-15b4-8f9a-1a30161331d4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuBRDAutoSim\nreturn S~=nil and S.observed.p4end==nil",
							name = "anchor pending",
							uuid = "2270d150-25ba-1b2e-85d0-a86166e6d2b1",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim",
				eventType = 26,
				loop = true,
				mechanicTime = 840,
				name = "[BRD UWU] Resync p4end",
				timeRange = true,
				timelineIndex = 116,
				timerEndOffset = 25,
				timerStartOffset = -15,
				uuid = "0a69b314-7c83-a148-8e5c-a73be8a88fee",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "BRD AutoSim",
				name = "Targeting",
				uuid = "63543ba7-87bc-3237-a800-dbf2aba35217",
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
									"8a689919-5007-2951-9a9b-a9e2f1363587",
									true,
								},
								
								{
									"279504e7-c714-9825-a3a0-a4898902b74c",
									true,
								},
								
								{
									"d321f5ee-c173-6c84-a3b1-2d3220d7f8a3",
									true,
								},
							},
							name = "Target Lahabrea",
							setTarget = true,
							targetContentID = 2143,
							targetType = "ContentID",
							uuid = "b5f56280-e8ad-d93a-9bc4-dd293571ea75",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local e = TensorCore.getEntityByGroup(\"ContentID\", {contentid=2143, subgroup=\"Nearest\"})\nreturn e ~= nil and e.targetable == true",
							name = "Lahabrea targetable",
							uuid = "d321f5ee-c173-6c84-a3b1-2d3220d7f8a3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "279504e7-c714-9825-a3a0-a4898902b74c",
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
							name = "BRD only",
							uuid = "8a689919-5007-2951-9a9b-a9e2f1363587",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim/Targeting",
				mechanicTime = 840,
				name = "[BRD UWU] [Target] Lahabrea on Targetable",
				timeRange = true,
				timelineIndex = 116,
				timerEndOffset = -10,
				timerStartOffset = -19,
				uuid = "ebaf33fc-e277-1f88-98d9-f1c607a5c622",
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
				name = "BRD AutoSim",
				uuid = "2aaca74f-4866-8854-ba4c-2c0405fa4950",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "BRD AutoSim",
				name = "Targeting",
				uuid = "20c9b8e9-bd1a-3263-8db9-2c8a377032e0",
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
									"b9a15e86-b8d2-0f62-9697-b63385f2fda4",
									true,
								},
								
								{
									"d5306609-10aa-d16b-b35e-9b8c48334a91",
									true,
								},
								
								{
									"73f54017-9d7f-8f59-bdb7-2063d9135ac6",
									true,
								},
								
								{
									"dee8452e-c8de-9701-9627-fe78265cd479",
									true,
								},
							},
							endIfUsed = true,
							name = "Target - Ultima",
							setTarget = true,
							targetContentID = 2137,
							targetType = "ContentID",
							uuid = "89dc1208-ad56-e40f-abc0-901b11caca79",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "d5306609-10aa-d16b-b35e-9b8c48334a91",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Filter",
							filterTargetType = "ContentID",
							name = "Ultima",
							partyTargetContentID = 2137,
							uuid = "dee8452e-c8de-9701-9627-fe78265cd479",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local t=TensorCore.mGetTarget()\nreturn t==nil or not t.alive or not t.targetable",
							name = "No living hostile target",
							uuid = "73f54017-9d7f-8f59-bdb7-2063d9135ac6",
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
							name = "BRD only",
							uuid = "b9a15e86-b8d2-0f62-9697-b63385f2fda4",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim/Targeting",
				loop = true,
				mechanicTime = 1000,
				name = "[BRD UWU] [Target] Ultima Reacquire",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 118,
				timerEndOffset = 650,
				uuid = "ce0be2d4-c68b-4b9d-a457-8c2d34390a04",
				version = 2,
			},
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
									"14b7bed6-e98d-44e4-ae53-bcd55392249d",
									true,
								},
								
								{
									"6644dee8-3ef8-834d-af6c-093912939932",
									true,
								},
								
								{
									"a2b4a22c-c853-da34-a4b3-fef0822f3353",
									true,
								},
								
								{
									"392a5593-8977-cb4f-8df5-3e0fbd223428",
									true,
								},
							},
							name = "Target Ultima",
							setTarget = true,
							targetType = "Event Entity",
							uuid = "57294ac7-31ad-6072-a9ad-2a8318619009",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "6644dee8-3ef8-834d-af6c-093912939932",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 2137,
							name = "Ultima",
							uuid = "a2b4a22c-c853-da34-a4b3-fef0822f3353",
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
							uuid = "392a5593-8977-cb4f-8df5-3e0fbd223428",
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
							name = "BRD only",
							uuid = "14b7bed6-e98d-44e4-ae53-bcd55392249d",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim/Targeting",
				eventType = 26,
				loop = true,
				mechanicTime = 1000,
				name = "[BRD UWU] [Target] Ultima - Acquire",
				timeRange = true,
				timelineIndex = 118,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "7a5c8f06-6f35-3b00-8718-4594a97addd0",
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
				name = "BRD AutoSim",
				uuid = "470f2420-c28c-7dbb-8f5f-f1269d37b360",
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
							actionLua = "local S=data.uwuBRDAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal own=S.gaolEntityID and TensorCore.mGetEntity(S.gaolEntityID)\nlocal trapped=TensorCore.hasBuff(Player.id,292) or (own and own.alive and own.targetable and own.hp.current>0)\nif trapped then\n S.fettersActive=true\n if not S.dynamic.gaolStun then S.dynamic.gaolStun={\"Stun\",now,now+1,1};S.publish()\n elseif now>=S.dynamic.gaolStun[3]-.5 then S.dynamic.gaolStun[3]=now+1;S.publish() end\nelseif S.fettersActive then\n S.dynamic.gaolStun=nil;S.fettersActive=nil;S.gaolCompleted=true\n S.publish();self.used=true\nend",
							conditions = 
							{
								
								{
									"89ccde60-6402-0caa-9776-0d810d105a83",
									true,
								},
								
								{
									"1748e953-6fe3-d73e-a49d-90d6f65b8b80",
									true,
								},
								
								{
									"66cee2c0-c5fb-08f2-8cd3-76aa0106d29b",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "3e2c43cd-a7c9-9e1a-a7a2-594e5e685de2",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "BARD",
							name = "BRD only",
							uuid = "1748e953-6fe3-d73e-a49d-90d6f65b8b80",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuBRDAutoSim\nreturn S~=nil and S.fettersActive==true",
							name = "stunned",
							uuid = "66cee2c0-c5fb-08f2-8cd3-76aa0106d29b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 8,
							dequeueIfLuaFalse = true,
							localmapid = 777,
							name = "UWU only",
							uuid = "89ccde60-6402-0caa-9776-0d810d105a83",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim",
				loop = true,
				mechanicTime = 1206,
				name = "[BRD UWU] End Suppression gaol personal stun",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 190,
				timerEndOffset = 35,
				timerStartOffset = -5,
				uuid = "346e5d30-2279-38fd-9b3e-f4af36d2755e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.uwuBRDAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal duration=eventArgs.buffDuration\nif type(duration)~=\"number\" or duration<=0 then duration=5.574 end\nS.fettersActive=true\nS.dynamic.gaolStun={\"Stun\",now,now+duration,1}\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"dfeece98-35ef-de82-b1e4-39369a3bee2e",
									true,
								},
								
								{
									"b17906a6-1cce-603d-bca3-f7e5ef2593fe",
									true,
								},
								
								{
									"8478d7d6-4c1c-30c8-89ac-44e08065f4fd",
									true,
								},
								
								{
									"fe1f690f-c244-6ca4-9cb1-794d1e1b8d27",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "4427daa3-96ec-70dd-a1cc-13a510c3a1cc",
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
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventBuffID = 292,
							name = "Exact Fetters event",
							uuid = "dfeece98-35ef-de82-b1e4-39369a3bee2e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 8,
							dequeueIfLuaFalse = true,
							localmapid = 777,
							name = "UWU only",
							uuid = "b17906a6-1cce-603d-bca3-f7e5ef2593fe",
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
							name = "BRD only",
							uuid = "8478d7d6-4c1c-30c8-89ac-44e08065f4fd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityID==Player.id and eventArgs.buffID==292 and data.uwuBRDAutoSim~=nil",
							dequeueIfLuaFalse = true,
							name = "self fetters",
							uuid = "fe1f690f-c244-6ca4-9cb1-794d1e1b8d27",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim",
				eventType = 8,
				loop = true,
				mechanicTime = 1206,
				name = "[BRD UWU] Observe Suppression gaol personal stun",
				timeRange = true,
				timelineIndex = 190,
				timerEndOffset = 35,
				timerStartOffset = -5,
				uuid = "33346cbb-0166-ec2f-904e-e54d2cc08f02",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "BRD AutoSim",
				name = "Targeting",
				uuid = "44b1623e-1987-2c80-8f77-b6f1148dfc7b",
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
							actionLua = "local T=_G.UWU_BRD_TemporaryState or {}\n_G.UWU_BRD_TemporaryState=T\nif not T.gaolPriorityOptions then\n local toggles=TensorCore.API.TensorACR.getQuickToggles()\n if not toggles then return end\n T.gaolPriorityOptions={}\n for _,toggle in ipairs(toggles) do\n  local k=toggle.var\n  if string.match(k,\"_AOE$\") or string.match(k,\"_SmartAOE$\") then\n   if type(_G[k])==\"boolean\" then T.gaolPriorityOptions[k]=_G[k] end\n  end\n end\nend\nfor k in pairs(T.gaolPriorityOptions) do _G[k]=false end\nself.used=true",
							conditions = 
							{
								
								{
									"c3c0a024-4312-7863-ad05-87a44433e8d5",
									true,
								},
								
								{
									"dcf68860-b696-f11a-a839-90e48aeea409",
									true,
								},
								
								{
									"4f0c6d0b-3642-e6df-aad7-df0bdf2da960",
									true,
								},
								
								{
									"19a053bb-6b05-5801-aca9-7ec32b3a8b3f",
									true,
								},
							},
							name = "Gaol single-target only",
							uuid = "213bc264-f70b-8e5e-9280-9eeb38ccb7c9",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							aType = "Misc",
							conditions = 
							{
								
								{
									"c3c0a024-4312-7863-ad05-87a44433e8d5",
									true,
								},
								
								{
									"dcf68860-b696-f11a-a839-90e48aeea409",
									true,
								},
								
								{
									"4f0c6d0b-3642-e6df-aad7-df0bdf2da960",
									true,
								},
								
								{
									"19a053bb-6b05-5801-aca9-7ec32b3a8b3f",
									true,
								},
							},
							name = "Target nearest Granite Gaol",
							setTarget = true,
							targetContentID = 1804,
							targetType = "Event Entity",
							uuid = "ad29492b-72fd-5a4d-aeaa-c1ee1ae190bd",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "dcf68860-b696-f11a-a839-90e48aeea409",
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
							uuid = "19a053bb-6b05-5801-aca9-7ec32b3a8b3f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 1804,
							name = "Event entity",
							uuid = "4f0c6d0b-3642-e6df-aad7-df0bdf2da960",
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
							name = "BRD only",
							uuid = "c3c0a024-4312-7863-ad05-87a44433e8d5",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim/Targeting",
				eventType = 26,
				loop = true,
				mechanicTime = 1206,
				name = "[BRD UWU] [Target] Suppression Gaol - Acquire",
				timeRange = true,
				timelineIndex = 190,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "6b5cb153-493c-4af6-88b3-342ba3d1e403",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local T=_G.UWU_BRD_TemporaryState\nif T and T.gaolPriorityOptions then\n for k,v in pairs(T.gaolPriorityOptions) do _G[k]=v end\n T.gaolPriorityOptions=nil\nend\nself.used=true",
							conditions = 
							{
								
								{
									"f86e47d4-09b2-8ff5-85f6-0995aabe04f8",
									true,
								},
								
								{
									"d472a79a-6f65-467b-acd0-670cb41b264e",
									true,
								},
								
								{
									"2de8ed75-d555-1ffd-9689-601443df3c36",
									true,
								},
								
								{
									"bae9d4fa-27b3-f024-9e6d-bbf087e91a77",
									true,
								},
								
								{
									"6c802235-ff45-68e5-aeea-d13a74ae90ea",
									false,
								},
							},
							name = "Restore pre-gaol AoE settings",
							uuid = "689dee38-bafe-5501-93c7-af92fa929d2e",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							aType = "Misc",
							conditions = 
							{
								
								{
									"f86e47d4-09b2-8ff5-85f6-0995aabe04f8",
									true,
								},
								
								{
									"d472a79a-6f65-467b-acd0-670cb41b264e",
									true,
								},
								
								{
									"2de8ed75-d555-1ffd-9689-601443df3c36",
									true,
								},
								
								{
									"bae9d4fa-27b3-f024-9e6d-bbf087e91a77",
									true,
								},
								
								{
									"6c802235-ff45-68e5-aeea-d13a74ae90ea",
									true,
								},
							},
							name = "Target next Granite Gaol",
							setTarget = true,
							targetType = "Detection Target",
							uuid = "975be074-a787-857a-8dd4-457114165c51",
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
									"f86e47d4-09b2-8ff5-85f6-0995aabe04f8",
									true,
								},
								
								{
									"d472a79a-6f65-467b-acd0-670cb41b264e",
									true,
								},
								
								{
									"2de8ed75-d555-1ffd-9689-601443df3c36",
									true,
								},
								
								{
									"bae9d4fa-27b3-f024-9e6d-bbf087e91a77",
									true,
								},
								
								{
									"6c802235-ff45-68e5-aeea-d13a74ae90ea",
									false,
								},
							},
							name = "Restore Ultima target",
							setTarget = true,
							targetContentID = 2137,
							targetType = "ContentID",
							uuid = "f30a5fe7-8d55-dc57-8d52-b54a600698cd",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "d472a79a-6f65-467b-acd0-670cb41b264e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 1804,
							name = "Event entity",
							uuid = "2de8ed75-d555-1ffd-9689-601443df3c36",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 3,
							eventBoolValue = 2,
							name = "Became untargetable",
							uuid = "bae9d4fa-27b3-f024-9e6d-bbf087e91a77",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Filter",
							filterTargetType = "ContentID",
							name = "Targetable gaol remains",
							partyTargetContentID = 1804,
							uuid = "6c802235-ff45-68e5-aeea-d13a74ae90ea",
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
							name = "BRD only",
							uuid = "f86e47d4-09b2-8ff5-85f6-0995aabe04f8",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim/Targeting",
				eventType = 26,
				loop = true,
				mechanicTime = 1206,
				name = "[BRD UWU] [Target] Suppression Gaol - Advance",
				timeRange = true,
				timelineIndex = 190,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "940c1dac-7cd5-f3a8-a03b-5e87587be548",
				version = 2,
			},
		},
	},
	[199] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "BRD AutoSim",
				uuid = "63454850-32c2-6466-9877-792b71fd995d",
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
							actionLua = "local S=data.uwuBRDAutoSim\nS.resync(\"graniteGaol1\",TensorCore.API.TensorACR.getAutoSimTime())\nself.used=true",
							conditions = 
							{
								
								{
									"a7910efe-22e2-a20e-995f-9a29b772a7e6",
									true,
								},
								
								{
									"b5cd116a-147d-b685-bda7-f553bf6925dc",
									true,
								},
								
								{
									"c4915196-57a2-bad4-858c-ccbe9f047d8a",
									true,
								},
								
								{
									"5d0d2334-d377-8484-9de6-c419725fd7ef",
									true,
								},
								
								{
									"7266078d-4980-d1d8-9469-1984a8437a27",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "4f013c75-4467-b31a-b591-e5951b5707ae",
							version = 2.1,
						},
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
							localmapid = 777,
							name = "UWU only",
							uuid = "a7910efe-22e2-a20e-995f-9a29b772a7e6",
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
							name = "BRD only",
							uuid = "b5cd116a-147d-b685-bda7-f553bf6925dc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 1804,
							name = "Content 1804",
							uuid = "c4915196-57a2-bad4-858c-ccbe9f047d8a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 3,
							eventBoolValue = 2,
							name = "Untargetable",
							uuid = "5d0d2334-d377-8484-9de6-c419725fd7ef",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuBRDAutoSim\nreturn S~=nil and S.observed.graniteGaol1==nil",
							name = "anchor pending",
							uuid = "7266078d-4980-d1d8-9469-1984a8437a27",
							version = 3,
						},
					},
				},
				displayPath = "BRD AutoSim",
				eventType = 26,
				loop = true,
				mechanicTime = 1223,
				name = "[BRD UWU] Resync graniteGaol1",
				timeRange = true,
				timelineIndex = 199,
				timerEndOffset = 20,
				timerStartOffset = -13,
				uuid = "d66a3b1f-b243-aaee-a5f0-e7fa3a541eac",
				version = 2,
			},
		},
	},
	inheritedProfiles = 
	{
	},
	timelineName = "uwu",
	version = "1.0.2",
}



return tbl
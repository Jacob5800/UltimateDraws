local tbl = 
{
	[2] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "BLM AutoSim",
				uuid = "83599a91-8abe-7fb5-803d-249017916d43",
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
							actionLua = "local ownedLey=_G.UWU_BLM_TemporaryState\nif ownedLey and ownedLey.leyHold then\n TensorCore.API.TensorACR.holdActionUntil(3573,Now())\n ownedLey.leyHold=nil\nend\nlocal T=_G.UWU_BLM_TemporaryState\nif T then\n if T.options then for k,v in pairs(T.options) do _G[k]=v end end\n if T.gaols then TensorCore.API.TensorACR.deleteAOEBlacklistEntry(1804) end\n _G.UWU_BLM_TemporaryState=nil\nend\nTensorCore.API.TensorACR.holdActionUntil(846,Now())\nself.used=true",
							conditions = 
							{
								
								{
									"99590d55-260b-99df-ba29-35e4379e80a4",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "8dd1679d-a0d0-045f-845d-840b7123758c",
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
							conditionLua = "return _G.UWU_BLM_TemporaryState~=nil",
							name = "owned state",
							uuid = "99590d55-260b-99df-ba29-35e4379e80a4",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 11,
				loop = true,
				mechanicTime = 9,
				name = "[BLM UWU] Restore temporary settings MapChange",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -80,
				uuid = "37dd4cb3-fe19-d30b-85b3-0ea0fd2eca13",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local feather=TensorCore.API.TensorACR.addBlacklistEntry(1648,\"UWU Satin Plume\")\nif not feather.enabled or feather.allowIfTarget or feather.allowSmartDoT then\n feather.enabled=true;feather.allowIfTarget=false;feather.allowSmartDoT=false\n TensorCore.API.TensorACR.saveDotBlacklist()\nend\nlocal dotAPI=TensorCore.API.TensorACR\nlocal dotEntry=dotAPI.addBlacklistEntry(1186,\"UWU Infernal Nail\")\nif not dotEntry.enabled or dotEntry.allowIfTarget then\n dotEntry.enabled=true\n dotEntry.allowIfTarget=false\n dotAPI.saveDotBlacklist()\nend\n-- Generated encounter inputs are inserted by the MCP authoring script.\n-- Five EU BLM clears supply the phase-relative medians. Native events resync them.\nlocal A=TensorCore.API.TensorACR\n_G.UWU_BLM_TemporaryState=_G.UWU_BLM_TemporaryState or {}\nlocal cfg=_G.UWU_BLM_AutoSimConfig\nif not cfg then\n cfg={poolLaha=true,priorityGaols=true,roulette=true,raidBuffs=true,buffGain=16.87,nails=true,closePair=true,surecast=true,manaward=true}\n _G.UWU_BLM_AutoSimConfig=cfg\nend\nlocal S={[\"anchors\"]={[\"p1end\"]={[\"after\"]=\"pull\",[\"offset\"]=134.629,[\"spread\"]=10},[\"ifrit1\"]={[\"after\"]=\"p1end\",[\"offset\"]=72.217,[\"spread\"]=0.75},[\"p2end\"]={[\"after\"]=\"ifrit1\",[\"offset\"]=38.162,[\"spread\"]=10},[\"ifrit2Back\"]={[\"after\"]=\"p2end\",[\"offset\"]=7.422,[\"spread\"]=0.75},[\"titan1\"]={[\"after\"]=\"ifrit2Back\",[\"offset\"]=22.062,[\"spread\"]=0.75},[\"p3end\"]={[\"after\"]=\"titan1\",[\"offset\"]=97.279,[\"spread\"]=15},[\"titan3Back\"]={[\"after\"]=\"p3end\",[\"offset\"]=12.283,[\"spread\"]=0.75},[\"magitekBit1\"]={[\"after\"]=\"titan3Back\",[\"offset\"]=7.018,[\"spread\"]=0.75},[\"p4end\"]={[\"after\"]=\"magitekBit1\",[\"offset\"]=25.99,[\"spread\"]=0.75},[\"graniteGaol1\"]={[\"after\"]=\"p4end\",[\"offset\"]=233.053,[\"spread\"]=0.75}},[\"kill\"]={[\"after\"]=\"graniteGaol1\",[\"offset\"]=134.648,[\"spread\"]=7.881},[\"phases\"]={{\"FullDowntime\",\"pull\",70.532,\"pull\",74.238,1},{\"FullDowntime\",\"p1end\",0.1,\"p1end\",13.303,1},{\"FullDowntime\",\"ifrit1\",0.1,\"ifrit1\",3.812,1},{\"FullDowntime\",\"p2end\",0.1,\"ifrit2Back\",-0.3,1},{\"FullDowntime\",\"titan1\",0.1,\"titan1\",8.158,1},{\"FullDowntime\",\"titan1\",54.272,\"titan1\",62.508,1},{\"FullDowntime\",\"p3end\",0.1,\"titan3Back\",-0.3,1},{\"FullDowntime\",\"magitekBit1\",0.1,\"magitekBit1\",13.741,1},{\"FullDowntime\",\"p4end\",0.1,\"p4end\",50.191,1},{\"FullDowntime\",\"p4end\",77.992,\"p4end\",98.072,1},{\"FullDowntime\",\"p4end\",156.499,\"p4end\",161.092,1},{\"FullDowntime\",\"p4end\",193.502,\"p4end\",198.14,1},{\"FullDowntime\",\"p4end\",214.525,\"p4end\",229.087,1},{\"FullDowntime\",\"graniteGaol1\",0.1,\"p4end\",255.307,1},{\"FullDowntime\",\"p4end\",353.6,\"p4end\",357.89,1}},[\"windows\"]={{\"CasterDowntime\",\"pull\",35.0,\"pull\",37.5,1},{\"CasterDowntime\",\"pull\",38.5,\"pull\",41.0,1},{\"CasterDowntime\",\"pull\",43.0,\"pull\",44.0,1},{\"CasterDowntime\",\"pull\",91.0,\"pull\",92.5,1},{\"CasterDowntime\",\"pull\",102.5,\"pull\",104.0,1},{\"CasterDowntime\",\"pull\",105.5,\"pull\",106.5,1},{\"CasterDowntime\",\"pull\",127.5,\"pull\",128.5,1},{\"CasterDowntime\",\"p1end\",44.5,\"p1end\",47.0,1},{\"CasterDowntime\",\"p1end\",91.5,\"p1end\",98.0,1},{\"CasterDowntime\",\"titan1\",8.5,\"titan1\",11.0,1},{\"CasterDowntime\",\"titan1\",14.0,\"titan1\",21.5,1},{\"CasterDowntime\",\"titan1\",27.5,\"titan1\",29.0,1},{\"CasterDowntime\",\"titan1\",41.0,\"titan1\",42.5,1},{\"CasterDowntime\",\"titan1\",74.5,\"titan1\",76.0,1},{\"CasterDowntime\",\"p4end\",99.5,\"p4end\",100.5,1},{\"CasterDowntime\",\"p4end\",109.0,\"p4end\",115.0,1},{\"CasterDowntime\",\"p4end\",121.0,\"p4end\",124.0,1},{\"CasterDowntime\",\"p4end\",125.0,\"p4end\",129.0,1},{\"CasterDowntime\",\"p4end\",144.5,\"p4end\",145.5,1},{\"CasterDowntime\",\"p4end\",161.5,\"p4end\",169.0,1},{\"CasterDowntime\",\"p4end\",170.0,\"p4end\",172.5,1},{\"CasterDowntime\",\"p4end\",173.5,\"p4end\",174.5,1},{\"CasterDowntime\",\"p4end\",178.5,\"p4end\",182.0,1},{\"CasterDowntime\",\"p4end\",229.5,\"p4end\",231.0,1},{\"CasterDowntime\",\"p4end\",274.0,\"p4end\",280.0,1},{\"CasterDowntime\",\"p4end\",281.0,\"p4end\",282.5,1}},[\"returns\"]={},[\"buffwindows\"]={{\"pull\",8.069},{\"p1end\",16.081},{\"ifrit2Back\",52.467},{\"p4end\",52.628},{\"p4end\",175.979},{\"p4end\",317.846}},[\"sample_count\"]=5,[\"kill_samples\"]={782.098,751.692,783.165,838.291,794.832},[\"roulette\"]={[\"first\"]=293.478,[\"step\"]=20.123,[\"templates\"]={[\"Garuda\"]={{9.5,10.0}},[\"Ifrit\"]={{7.0,9.5},{11.0,11.5}},[\"Titan\"]={{5.0,13.0}}}},[\"anchorOrder\"]={\"p1end\",\"ifrit1\",\"p2end\",\"ifrit2Back\",\"titan1\",\"p3end\",\"titan3Back\",\"magitekBit1\",\"p4end\",\"graniteGaol1\"},[\"ifritArrival\"]=13.603,[\"lahaDelay\"]=14.041}\n-- Separate Ifrit's second dash from his actual phase death.\nS.anchors.ifritDash={after=\"ifrit1\",offset=47.95,spread=2}\nS.anchors.ifritDashBack={after=\"ifritDash\",offset=15.79,spread=1}\nS.anchors.p2end={after=\"ifritDashBack\",offset=17.31,spread=12}\nS.anchors.ifrit2Back={after=\"p2end\",offset=7.55,spread=.75}\nS.anchorOrder={\"p1end\",\"ifrit1\",\"ifritDash\",\"ifritDashBack\",\"p2end\",\"ifrit2Back\",\"titan1\",\"p3end\",\"titan3Back\",\"magitekBit1\",\"p4end\",\"graniteGaol1\"}\nS.phases[#S.phases+1]={\"FullDowntime\",\"ifritDash\",0.1,\"ifritDashBack\",-0.1,1}\nfor _,phase in ipairs(S.phases) do\n if phase[1]==\"FullDowntime\" and phase[2]==\"ifrit1\" and phase[4]==\"ifrit1\" then phase[5]=4.25 end\nend\n-- First Garuda disappearance: corroborated in three recent native logs.\nS.phases[#S.phases+1]={\"FullDowntime\",\"pull\",33.96,\"pull\",38.25,1}\n-- Tonight's native phase-end samples: 16 Garuda ends and 7 final Ifrit returns.\nS.anchors.p1end.offset=145.61\nS.anchors.p1end.spread=27\nS.anchors.p2end.offset=22.312\nS.anchors.p2end.spread=17\nS.cfg={}\nfor k,v in pairs(cfg) do S.cfg[k]=v end\nS.observed={pull=0}\nS.dynamic={}\nS.rouletteWindows={}\nfunction S.time(name)\n if S.observed[name] then return S.observed[name] end\n local a=S.anchors[name]\n return S.time(a.after)+a.offset\nend\nfunction S.union(list)\n table.sort(list,function(a,b)return a[1]<b[1] end)\n local out={}\n for _,w in ipairs(list) do\n  local last=out[#out]\n  if last and w[1]<=last[2] and w[3]==last[3] then last[2]=math.max(last[2],w[2])\n  else out[#out+1]={w[1],w[2],w[3]} end\n end\n return out\nend\nfunction S.rouletteForecast(kind,now)\n if not S.cfg.roulette then return end\n local orders={Garuda={\"Garuda\",\"Ifrit\",\"Titan\"},Ifrit={\"Ifrit\",\"Garuda\",\"Titan\"},Titan={\"Titan\",\"Ifrit\",\"Garuda\"}}\n if kind then\n  if not S.rouletteOrder then S.rouletteOrder=orders[kind];S.rouletteTimes={} end\n  local step=#S.rouletteTimes+1\n  if S.rouletteOrder[step]~=kind then return end\n  S.rouletteTimes[step]=now\n end\n S.rouletteWindows={}\n local function addOrder(order,base,times)\n  local offsets={0,S.roulette.step,S.roulette.step*2}\n  if times and #times>0 then base=times[#times]-S.time(\"p4end\")-offsets[#times] end\n  for i,k in ipairs(order) do\n   local t=times and times[i] or S.time(\"p4end\")+base+offsets[i]\n   for _,w in ipairs(S.roulette.templates[k]) do\n    S.rouletteWindows[#S.rouletteWindows+1]={t+w[1],t+w[2],1}\n   end\n  end\n end\n if S.rouletteOrder then addOrder(S.rouletteOrder,0,S.rouletteTimes)\n else\n  -- Initial estimates use the reference's three possible orders. Prepare events narrow them.\n  for _,order in pairs(orders) do addOrder(order,S.roulette.first) end\n end\nend\nfunction S.publish()\n local now=A.getAutoSimTime()\n local finish=math.max(now+5,S.time(S.kill.after)+S.kill.offset)\n A.setAutoSimKillTime(math.min(finish,1259))\n local grouped={FullDowntime={},CasterDowntime={},Stun={},BossModifier={},RaidBuff={},GroundFieldMovement={}}\n local function add(kind,a,b,value)\n  if b>a then grouped[kind][#grouped[kind]+1]={a,b,value or 1} end\n end\n for _,p in ipairs(S.phases) do\n  -- HP-driven deaths are variable. Do not declare the still-live boss unavailable.\n  local hpDeath=p[1]==\"FullDowntime\" and (p[2]==\"p1end\" or p[2]==\"p2end\")\n  if not hpDeath or S.observed[p[2]]~=nil then\n   add(p[1],S.time(p[2])+p[3],S.time(p[4])+p[5],p[6])\n  end\n end\n for _,p in ipairs(S.windows) do\n  local a,b=S.time(p[2])+p[3],S.time(p[4])+p[5]\n  if p[2]==\"titan1\" and S.observed.p3end then b=math.min(b,S.observed.p3end) end\n  add(p[1],a,b,p[6])\n end\n if S.cfg.poolLaha then\n  add(\"BossModifier\",S.time(\"magitekBit1\")+S.lahaDelay,S.time(\"p4end\"),.01)\n end\n if S.cfg.priorityGaols then\n  add(\"BossModifier\",S.time(\"titan1\")+68.966,S.time(\"titan1\")+73.966,1.10)\n  add(\"BossModifier\",S.time(\"p4end\")+227.75,S.time(\"p4end\")+232.75,1.10)\n end\n if S.cfg.raidBuffs then\n  local prev\n  for _,w in ipairs(S.buffwindows) do\n   local t=S.time(w[1])+w[2]\n   if prev then t=math.max(t,prev+120) end\n   add(\"RaidBuff\",t,t+20,1+S.cfg.buffGain/100)\n   prev=t\n  end\n end\n for _,w in ipairs(S.rouletteWindows) do add(\"CasterDowntime\",w[1],w[2],1) end\n local roster=AnyoneCore.Roster\n local isR2=roster and roster.current() and roster.mySlot()==\"R2\"\n if isR2 and not S.lbObserved then\n  local lb=S.time(\"titan3Back\")+4\n  add(\"Stun\",lb,lb+12.6,1)\n end\n for _,w in pairs(S.dynamic) do add(w[1],w[2],w[3],w[4]) end\n for kind,list in pairs(grouped) do\n  A.clearAutoSimPhases(kind)\n  -- All absolute same-type overlaps are merged before submission.\n  if kind==\"BossModifier\" or kind==\"RaidBuff\" then\n   local cuts,seen={},{}\n   for _,w in ipairs(list) do for i=1,2 do if not seen[w[i]] then cuts[#cuts+1]=w[i];seen[w[i]]=true end end end\n   table.sort(cuts)\n   for i=1,#cuts-1 do\n    local value,active=1,false\n    for _,w in ipairs(list) do if w[1]<=cuts[i] and w[2]>=cuts[i+1] then value=value*w[3];active=true end end\n    if active then A.addAutoSimPhase(kind,cuts[i],cuts[i+1],value) end\n   end\n  else\n   for _,w in ipairs(S.union(list)) do A.addAutoSimPhase(kind,w[1],w[2],w[3]) end\n  end\n end\n A.clearAutoSimUncertainty()\n A.addAutoSimUncertainty(0,2)\n local uncertainty=2\n for _,name in ipairs(S.anchorOrder) do\n  if not S.observed[name] then\n   local anchor=S.anchors[name]\n   uncertainty=math.max(uncertainty,anchor.spread)\n   A.addAutoSimUncertainty(S.time(name)-25,uncertainty)\n  end\n end\n A.addAutoSimUncertainty(math.max(0,finish-30),math.max(uncertainty,S.kill.spread))\nend\nfunction S.resync(name,now)\n if S.observed[name] then return end\n S.observed[name]=now\n S.rouletteForecast()\n S.publish()\n if not S.ifritStarted then\n  local untilIfrit=S.time(\"p1end\")+S.ifritArrival\n  A.holdActionUntil(846,Now()+math.max(0,untilIfrit-now)*1000)\n end\nend\nS.rouletteForecast()\nA.setAutoSimUnexpectedMovementPct(.05)\nS.publish()\nA.holdActionUntil(846,Now()+math.max(0,S.time(\"p1end\")+S.ifritArrival-A.getAutoSimTime())*1000)\ndata.uwuBLMAutoSim=S\nself.used=true\n",
							conditions = 
							{
								
								{
									"50c76318-1dfc-5adc-b2d8-2435e88bbfba",
									true,
								},
								
								{
									"eeb63008-707a-34f8-9135-89cd2c80a269",
									true,
								},
								
								{
									"91f96b76-99dd-083b-8b49-485c75d3efba",
									true,
								},
								
								{
									"70fb6860-8dc0-7ef2-b77e-b024c90fb993",
									true,
								},
								
								{
									"4905bb66-578a-5431-84c8-876abed7e49d",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "fd724419-f142-080b-98d5-6e9271fbcc27",
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
							conditionLua = "return data.uwuBLMAutoSim==nil",
							name = "not configured",
							uuid = "4905bb66-578a-5431-84c8-876abed7e49d",
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
							uuid = "50c76318-1dfc-5adc-b2d8-2435e88bbfba",
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
							uuid = "eeb63008-707a-34f8-9135-89cd2c80a269",
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
							uuid = "91f96b76-99dd-083b-8b49-485c75d3efba",
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
							uuid = "70fb6860-8dc0-7ef2-b77e-b024c90fb993",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 3,
				mechanicTime = 9,
				name = "[BLM UWU] Configure on first Slipstream",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 5,
				timerStartOffset = -9,
				uuid = "8e553448-11c9-a7f6-9cb4-82ae0d998a83",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local C=_G.UWU_BLM_AutoSimConfig\nif not C then\n C={poolLaha=true,priorityGaols=true,roulette=true,raidBuffs=true,buffGain=16.87,nails=true,closePair=true,surecast=true,manaward=true}\n _G.UWU_BLM_AutoSimConfig=C\nend\nlocal visible=GUI:Begin('UWU BLM AutoSim',true)\nif visible then\n GUI:Text('Forecast options apply on the next pull. Session settings.')\n local function check(label,key,help)\n  C[key]=GUI:Checkbox(label,C[key])\n  if GUI:IsItemHovered() then GUI:SetTooltip(help) end\n end\n check('Forecast raid buffs','raidBuffs','Predict party burst windows. The ACR handles actual active buffs separately.')\n C.buffGain=GUI:SliderFloat('Forecast damage gain (%)',C.buffGain,0,40,'%.2f',1)\n if GUI:IsItemHovered() then GUI:SetTooltip('Combined expected party damage gain, not a measured boss buff. Reference default 16.87%.') end\n check('Automatic Manaward','manaward','Aerial Blast, Titan opening Earthen Fury, and Ultima opening. Uses are more than 120 real seconds apart in sampled clears.')\n if GUI:TreeNode('P2 - Ifrit') then\n  check('Nail targeting','nails','Soften the nearest nail to about 30%, wait for all four to awaken, then relative SE, SW, NE, NW. Finishes an existing cast first.')\n  check('Allow final close-pair AoE','closePair','AoE remains off for the first two kills. On the final close pair, normal ACR gain and geometry checks decide whether to AoE.')\n  check('Surecast Vulcan Burst','surecast','Requests Surecast before the Ifrit opening knockback. Does not immune Titan Upheaval or Aetheric Boom.')\n  GUI:TreePop()\n end\n if GUI:TreeNode('P3 - Titan') then\n  GUI:Text('Triple gaols are temporarily AoE-blacklisted. Ride Upheaval for placement.')\n  GUI:TreePop()\n end\n if GUI:TreeNode('P4 - Ultima') then\n  check('Pool cooldowns on Lahabrea','poolLaha','Artificial 0.01 damage-priority weight while Lahabrea is attackable. Keep normal damage and gauge building; this is not a real damage debuff.')\n  check('Prioritize healer / Suppression gaols','priorityGaols','Artificial 1.10 damage-priority forecast for the first five seconds of these gaols.')\n  check('Adapt final primal movement','roulette','Initially forecasts all three possible orders, then narrows movement as Prepare casts reveal the actual sequence.')\n  GUI:TreePop()\n end\nend\nGUI:End()\n-- Rendering is continuous; do not finish/requeue an action each frame.\n",
							conditions = 
							{
								
								{
									"fddb7edd-83ce-0b0c-b4e7-4acc3818a688",
									true,
								},
								
								{
									"0c65dfe2-3c59-389e-aaf1-95313bb17d37",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "21e9cbd5-318c-021e-b313-2fe169ba4c7b",
							version = 2.1,
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
							jobValue = "BLACKMAGE",
							name = "BLM only",
							uuid = "0c65dfe2-3c59-389e-aaf1-95313bb17d37",
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
							uuid = "fddb7edd-83ce-0b0c-b4e7-4acc3818a688",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 13,
				loop = true,
				mechanicTime = 9,
				name = "[BLM UWU] AutoSim options",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -80,
				uuid = "d4769f80-8ce5-8530-9b37-632db08f9d99",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local ownedLey=_G.UWU_BLM_TemporaryState\nif ownedLey and ownedLey.leyHold then\n TensorCore.API.TensorACR.holdActionUntil(3573,Now())\n ownedLey.leyHold=nil\nend\nlocal T=_G.UWU_BLM_TemporaryState\nif T then\n if T.options then for k,v in pairs(T.options) do _G[k]=v end end\n if T.gaols then TensorCore.API.TensorACR.deleteAOEBlacklistEntry(1804) end\n _G.UWU_BLM_TemporaryState=nil\nend\nTensorCore.API.TensorACR.holdActionUntil(846,Now())\nself.used=true",
							conditions = 
							{
								
								{
									"52dfaa4c-59c6-8ccc-b13a-84ba54bc7845",
									true,
								},
								
								{
									"119acc90-3021-777c-8a3e-cf1bbf4bd022",
									true,
								},
								
								{
									"c628d955-ce05-2b24-9c66-70d1f4cb6f42",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "f8f65f37-18f8-e3cf-b592-a13443ec1975",
							version = 2.1,
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
							uuid = "52dfaa4c-59c6-8ccc-b13a-84ba54bc7845",
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
							uuid = "119acc90-3021-777c-8a3e-cf1bbf4bd022",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return _G.UWU_BLM_TemporaryState~=nil",
							name = "owned state",
							uuid = "c628d955-ce05-2b24-9c66-70d1f4cb6f42",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 9,
				loop = true,
				mechanicTime = 9,
				name = "[BLM UWU] Restore temporary settings Wipe",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -80,
				uuid = "9dd9cbe7-4226-8cca-9bce-65db773627df",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local ownedLey=_G.UWU_BLM_TemporaryState\nif ownedLey and ownedLey.leyHold then\n TensorCore.API.TensorACR.holdActionUntil(3573,Now())\n ownedLey.leyHold=nil\nend\nlocal T=_G.UWU_BLM_TemporaryState\nif T then\n if T.options then for k,v in pairs(T.options) do _G[k]=v end end\n if T.gaols then TensorCore.API.TensorACR.deleteAOEBlacklistEntry(1804) end\n _G.UWU_BLM_TemporaryState=nil\nend\nTensorCore.API.TensorACR.holdActionUntil(846,Now())\nself.used=true",
							conditions = 
							{
								
								{
									"9993be70-0da4-2f30-a036-33eec06e48da",
									true,
								},
								
								{
									"2f90aefc-1149-3528-8f39-133c148de45f",
									true,
								},
								
								{
									"cffdd703-b305-e6f6-981c-178c059bca48",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "1154302b-b28a-19a6-9b08-5e78e95f4932",
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
							conditionLua = "return _G.UWU_BLM_TemporaryState~=nil",
							name = "owned state",
							uuid = "cffdd703-b305-e6f6-981c-178c059bca48",
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
							uuid = "9993be70-0da4-2f30-a036-33eec06e48da",
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
							uuid = "2f90aefc-1149-3528-8f39-133c148de45f",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 17,
				loop = true,
				mechanicTime = 9,
				name = "[BLM UWU] Restore temporary settings CountdownCancel",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -80,
				uuid = "521627f6-183d-7481-9225-bbbae4f84f7e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local feather=TensorCore.API.TensorACR.addBlacklistEntry(1648,\"UWU Satin Plume\")\nif not feather.enabled or feather.allowIfTarget or feather.allowSmartDoT then\n feather.enabled=true;feather.allowIfTarget=false;feather.allowSmartDoT=false\n TensorCore.API.TensorACR.saveDotBlacklist()\nend\nlocal dotAPI=TensorCore.API.TensorACR\nlocal dotEntry=dotAPI.addBlacklistEntry(1186,\"UWU Infernal Nail\")\nif not dotEntry.enabled or dotEntry.allowIfTarget then\n dotEntry.enabled=true\n dotEntry.allowIfTarget=false\n dotAPI.saveDotBlacklist()\nend\n-- Generated encounter inputs are inserted by the MCP authoring script.\n-- Five EU BLM clears supply the phase-relative medians. Native events resync them.\nlocal A=TensorCore.API.TensorACR\n_G.UWU_BLM_TemporaryState=_G.UWU_BLM_TemporaryState or {}\nlocal cfg=_G.UWU_BLM_AutoSimConfig\nif not cfg then\n cfg={poolLaha=true,priorityGaols=true,roulette=true,raidBuffs=true,buffGain=16.87,nails=true,closePair=true,surecast=true,manaward=true}\n _G.UWU_BLM_AutoSimConfig=cfg\nend\nlocal S={[\"anchors\"]={[\"p1end\"]={[\"after\"]=\"pull\",[\"offset\"]=134.629,[\"spread\"]=10},[\"ifrit1\"]={[\"after\"]=\"p1end\",[\"offset\"]=72.217,[\"spread\"]=0.75},[\"p2end\"]={[\"after\"]=\"ifrit1\",[\"offset\"]=38.162,[\"spread\"]=10},[\"ifrit2Back\"]={[\"after\"]=\"p2end\",[\"offset\"]=7.422,[\"spread\"]=0.75},[\"titan1\"]={[\"after\"]=\"ifrit2Back\",[\"offset\"]=22.062,[\"spread\"]=0.75},[\"p3end\"]={[\"after\"]=\"titan1\",[\"offset\"]=97.279,[\"spread\"]=15},[\"titan3Back\"]={[\"after\"]=\"p3end\",[\"offset\"]=12.283,[\"spread\"]=0.75},[\"magitekBit1\"]={[\"after\"]=\"titan3Back\",[\"offset\"]=7.018,[\"spread\"]=0.75},[\"p4end\"]={[\"after\"]=\"magitekBit1\",[\"offset\"]=25.99,[\"spread\"]=0.75},[\"graniteGaol1\"]={[\"after\"]=\"p4end\",[\"offset\"]=233.053,[\"spread\"]=0.75}},[\"kill\"]={[\"after\"]=\"graniteGaol1\",[\"offset\"]=134.648,[\"spread\"]=7.881},[\"phases\"]={{\"FullDowntime\",\"pull\",70.532,\"pull\",74.238,1},{\"FullDowntime\",\"p1end\",0.1,\"p1end\",13.303,1},{\"FullDowntime\",\"ifrit1\",0.1,\"ifrit1\",3.812,1},{\"FullDowntime\",\"p2end\",0.1,\"ifrit2Back\",-0.3,1},{\"FullDowntime\",\"titan1\",0.1,\"titan1\",8.158,1},{\"FullDowntime\",\"titan1\",54.272,\"titan1\",62.508,1},{\"FullDowntime\",\"p3end\",0.1,\"titan3Back\",-0.3,1},{\"FullDowntime\",\"magitekBit1\",0.1,\"magitekBit1\",13.741,1},{\"FullDowntime\",\"p4end\",0.1,\"p4end\",50.191,1},{\"FullDowntime\",\"p4end\",77.992,\"p4end\",98.072,1},{\"FullDowntime\",\"p4end\",156.499,\"p4end\",161.092,1},{\"FullDowntime\",\"p4end\",193.502,\"p4end\",198.14,1},{\"FullDowntime\",\"p4end\",214.525,\"p4end\",229.087,1},{\"FullDowntime\",\"graniteGaol1\",0.1,\"p4end\",255.307,1},{\"FullDowntime\",\"p4end\",353.6,\"p4end\",357.89,1}},[\"windows\"]={{\"CasterDowntime\",\"pull\",35.0,\"pull\",37.5,1},{\"CasterDowntime\",\"pull\",38.5,\"pull\",41.0,1},{\"CasterDowntime\",\"pull\",43.0,\"pull\",44.0,1},{\"CasterDowntime\",\"pull\",91.0,\"pull\",92.5,1},{\"CasterDowntime\",\"pull\",102.5,\"pull\",104.0,1},{\"CasterDowntime\",\"pull\",105.5,\"pull\",106.5,1},{\"CasterDowntime\",\"pull\",127.5,\"pull\",128.5,1},{\"CasterDowntime\",\"p1end\",44.5,\"p1end\",47.0,1},{\"CasterDowntime\",\"p1end\",91.5,\"p1end\",98.0,1},{\"CasterDowntime\",\"titan1\",8.5,\"titan1\",11.0,1},{\"CasterDowntime\",\"titan1\",14.0,\"titan1\",21.5,1},{\"CasterDowntime\",\"titan1\",27.5,\"titan1\",29.0,1},{\"CasterDowntime\",\"titan1\",41.0,\"titan1\",42.5,1},{\"CasterDowntime\",\"titan1\",74.5,\"titan1\",76.0,1},{\"CasterDowntime\",\"p4end\",99.5,\"p4end\",100.5,1},{\"CasterDowntime\",\"p4end\",109.0,\"p4end\",115.0,1},{\"CasterDowntime\",\"p4end\",121.0,\"p4end\",124.0,1},{\"CasterDowntime\",\"p4end\",125.0,\"p4end\",129.0,1},{\"CasterDowntime\",\"p4end\",144.5,\"p4end\",145.5,1},{\"CasterDowntime\",\"p4end\",161.5,\"p4end\",169.0,1},{\"CasterDowntime\",\"p4end\",170.0,\"p4end\",172.5,1},{\"CasterDowntime\",\"p4end\",173.5,\"p4end\",174.5,1},{\"CasterDowntime\",\"p4end\",178.5,\"p4end\",182.0,1},{\"CasterDowntime\",\"p4end\",229.5,\"p4end\",231.0,1},{\"CasterDowntime\",\"p4end\",274.0,\"p4end\",280.0,1},{\"CasterDowntime\",\"p4end\",281.0,\"p4end\",282.5,1}},[\"returns\"]={},[\"buffwindows\"]={{\"pull\",8.069},{\"p1end\",16.081},{\"ifrit2Back\",52.467},{\"p4end\",52.628},{\"p4end\",175.979},{\"p4end\",317.846}},[\"sample_count\"]=5,[\"kill_samples\"]={782.098,751.692,783.165,838.291,794.832},[\"roulette\"]={[\"first\"]=293.478,[\"step\"]=20.123,[\"templates\"]={[\"Garuda\"]={{9.5,10.0}},[\"Ifrit\"]={{7.0,9.5},{11.0,11.5}},[\"Titan\"]={{5.0,13.0}}}},[\"anchorOrder\"]={\"p1end\",\"ifrit1\",\"p2end\",\"ifrit2Back\",\"titan1\",\"p3end\",\"titan3Back\",\"magitekBit1\",\"p4end\",\"graniteGaol1\"},[\"ifritArrival\"]=13.603,[\"lahaDelay\"]=14.041}\n-- Separate Ifrit's second dash from his actual phase death.\nS.anchors.ifritDash={after=\"ifrit1\",offset=47.95,spread=2}\nS.anchors.ifritDashBack={after=\"ifritDash\",offset=15.79,spread=1}\nS.anchors.p2end={after=\"ifritDashBack\",offset=17.31,spread=12}\nS.anchors.ifrit2Back={after=\"p2end\",offset=7.55,spread=.75}\nS.anchorOrder={\"p1end\",\"ifrit1\",\"ifritDash\",\"ifritDashBack\",\"p2end\",\"ifrit2Back\",\"titan1\",\"p3end\",\"titan3Back\",\"magitekBit1\",\"p4end\",\"graniteGaol1\"}\nS.phases[#S.phases+1]={\"FullDowntime\",\"ifritDash\",0.1,\"ifritDashBack\",-0.1,1}\nfor _,phase in ipairs(S.phases) do\n if phase[1]==\"FullDowntime\" and phase[2]==\"ifrit1\" and phase[4]==\"ifrit1\" then phase[5]=4.25 end\nend\n-- First Garuda disappearance: corroborated in three recent native logs.\nS.phases[#S.phases+1]={\"FullDowntime\",\"pull\",33.96,\"pull\",38.25,1}\n-- Tonight's native phase-end samples: 16 Garuda ends and 7 final Ifrit returns.\nS.anchors.p1end.offset=145.61\nS.anchors.p1end.spread=27\nS.anchors.p2end.offset=22.312\nS.anchors.p2end.spread=17\nS.cfg={}\nfor k,v in pairs(cfg) do S.cfg[k]=v end\nS.observed={pull=0}\nS.dynamic={}\nS.rouletteWindows={}\nfunction S.time(name)\n if S.observed[name] then return S.observed[name] end\n local a=S.anchors[name]\n return S.time(a.after)+a.offset\nend\nfunction S.union(list)\n table.sort(list,function(a,b)return a[1]<b[1] end)\n local out={}\n for _,w in ipairs(list) do\n  local last=out[#out]\n  if last and w[1]<=last[2] and w[3]==last[3] then last[2]=math.max(last[2],w[2])\n  else out[#out+1]={w[1],w[2],w[3]} end\n end\n return out\nend\nfunction S.rouletteForecast(kind,now)\n if not S.cfg.roulette then return end\n local orders={Garuda={\"Garuda\",\"Ifrit\",\"Titan\"},Ifrit={\"Ifrit\",\"Garuda\",\"Titan\"},Titan={\"Titan\",\"Ifrit\",\"Garuda\"}}\n if kind then\n  if not S.rouletteOrder then S.rouletteOrder=orders[kind];S.rouletteTimes={} end\n  local step=#S.rouletteTimes+1\n  if S.rouletteOrder[step]~=kind then return end\n  S.rouletteTimes[step]=now\n end\n S.rouletteWindows={}\n local function addOrder(order,base,times)\n  local offsets={0,S.roulette.step,S.roulette.step*2}\n  if times and #times>0 then base=times[#times]-S.time(\"p4end\")-offsets[#times] end\n  for i,k in ipairs(order) do\n   local t=times and times[i] or S.time(\"p4end\")+base+offsets[i]\n   for _,w in ipairs(S.roulette.templates[k]) do\n    S.rouletteWindows[#S.rouletteWindows+1]={t+w[1],t+w[2],1}\n   end\n  end\n end\n if S.rouletteOrder then addOrder(S.rouletteOrder,0,S.rouletteTimes)\n else\n  -- Initial estimates use the reference's three possible orders. Prepare events narrow them.\n  for _,order in pairs(orders) do addOrder(order,S.roulette.first) end\n end\nend\nfunction S.publish()\n local now=A.getAutoSimTime()\n local finish=math.max(now+5,S.time(S.kill.after)+S.kill.offset)\n A.setAutoSimKillTime(math.min(finish,1259))\n local grouped={FullDowntime={},CasterDowntime={},Stun={},BossModifier={},RaidBuff={},GroundFieldMovement={}}\n local function add(kind,a,b,value)\n  if b>a then grouped[kind][#grouped[kind]+1]={a,b,value or 1} end\n end\n for _,p in ipairs(S.phases) do\n  -- HP-driven deaths are variable. Do not declare the still-live boss unavailable.\n  local hpDeath=p[1]==\"FullDowntime\" and (p[2]==\"p1end\" or p[2]==\"p2end\")\n  if not hpDeath or S.observed[p[2]]~=nil then\n   add(p[1],S.time(p[2])+p[3],S.time(p[4])+p[5],p[6])\n  end\n end\n for _,p in ipairs(S.windows) do\n  local a,b=S.time(p[2])+p[3],S.time(p[4])+p[5]\n  if p[2]==\"titan1\" and S.observed.p3end then b=math.min(b,S.observed.p3end) end\n  add(p[1],a,b,p[6])\n end\n if S.cfg.poolLaha then\n  add(\"BossModifier\",S.time(\"magitekBit1\")+S.lahaDelay,S.time(\"p4end\"),.01)\n end\n if S.cfg.priorityGaols then\n  add(\"BossModifier\",S.time(\"titan1\")+68.966,S.time(\"titan1\")+73.966,1.10)\n  add(\"BossModifier\",S.time(\"p4end\")+227.75,S.time(\"p4end\")+232.75,1.10)\n end\n if S.cfg.raidBuffs then\n  local prev\n  for _,w in ipairs(S.buffwindows) do\n   local t=S.time(w[1])+w[2]\n   if prev then t=math.max(t,prev+120) end\n   add(\"RaidBuff\",t,t+20,1+S.cfg.buffGain/100)\n   prev=t\n  end\n end\n for _,w in ipairs(S.rouletteWindows) do add(\"CasterDowntime\",w[1],w[2],1) end\n local roster=AnyoneCore.Roster\n local isR2=roster and roster.current() and roster.mySlot()==\"R2\"\n if isR2 and not S.lbObserved then\n  local lb=S.time(\"titan3Back\")+4\n  add(\"Stun\",lb,lb+12.6,1)\n end\n for _,w in pairs(S.dynamic) do add(w[1],w[2],w[3],w[4]) end\n for kind,list in pairs(grouped) do\n  A.clearAutoSimPhases(kind)\n  -- All absolute same-type overlaps are merged before submission.\n  if kind==\"BossModifier\" or kind==\"RaidBuff\" then\n   local cuts,seen={},{}\n   for _,w in ipairs(list) do for i=1,2 do if not seen[w[i]] then cuts[#cuts+1]=w[i];seen[w[i]]=true end end end\n   table.sort(cuts)\n   for i=1,#cuts-1 do\n    local value,active=1,false\n    for _,w in ipairs(list) do if w[1]<=cuts[i] and w[2]>=cuts[i+1] then value=value*w[3];active=true end end\n    if active then A.addAutoSimPhase(kind,cuts[i],cuts[i+1],value) end\n   end\n  else\n   for _,w in ipairs(S.union(list)) do A.addAutoSimPhase(kind,w[1],w[2],w[3]) end\n  end\n end\n A.clearAutoSimUncertainty()\n A.addAutoSimUncertainty(0,2)\n local uncertainty=2\n for _,name in ipairs(S.anchorOrder) do\n  if not S.observed[name] then\n   local anchor=S.anchors[name]\n   uncertainty=math.max(uncertainty,anchor.spread)\n   A.addAutoSimUncertainty(S.time(name)-25,uncertainty)\n  end\n end\n A.addAutoSimUncertainty(math.max(0,finish-30),math.max(uncertainty,S.kill.spread))\nend\nfunction S.resync(name,now)\n if S.observed[name] then return end\n S.observed[name]=now\n S.rouletteForecast()\n S.publish()\n if not S.ifritStarted then\n  local untilIfrit=S.time(\"p1end\")+S.ifritArrival\n  A.holdActionUntil(846,Now()+math.max(0,untilIfrit-now)*1000)\n end\nend\nS.rouletteForecast()\nA.setAutoSimUnexpectedMovementPct(.05)\nS.publish()\nA.holdActionUntil(846,Now()+math.max(0,S.time(\"p1end\")+S.ifritArrival-A.getAutoSimTime())*1000)\ndata.uwuBLMAutoSim=S\nself.used=true\n",
							conditions = 
							{
								
								{
									"e3d58a73-a48c-1cc4-8f25-a6484822bb06",
									true,
								},
								
								{
									"405a01db-ab2f-3538-b2ff-05f6b2750c9d",
									true,
								},
								
								{
									"3fd10d59-a4db-05a7-a3bc-4ec4161259ef",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "961917ab-f585-7a8a-acbf-99b6555368aa",
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
							conditionLua = "return data.uwuBLMAutoSim==nil",
							name = "not configured",
							uuid = "3fd10d59-a4db-05a7-a3bc-4ec4161259ef",
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
							uuid = "e3d58a73-a48c-1cc4-8f25-a6484822bb06",
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
							uuid = "405a01db-ab2f-3538-b2ff-05f6b2750c9d",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 16,
				mechanicTime = 9,
				name = "[BLM UWU] Configure phase forecast",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = -8,
				timerStartOffset = -70,
				uuid = "a1491d3a-d073-065d-9128-537bf3986770",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local T=_G.UWU_BLM_TemporaryState or {}\n_G.UWU_BLM_TemporaryState=T\nTensorCore.API.TensorACR.holdActionUntil(3573,Now()+120000)\nT.leyHold=true\nself.used=true",
							conditions = 
							{
								
								{
									"5d5cba62-8f1f-4ac9-9b2f-dfd294b810ae",
									true,
								},
								
								{
									"d4e6f43a-2552-4fed-ae6b-82c474ea7c5d",
									true,
								},
								
								{
									"2ab7d83f-07fe-0c51-bbaf-8e5d951c8bbc",
									true,
								},
								
								{
									"ca158b8e-6b82-135f-ace4-fa990350f9b5",
									true,
								},
								
								{
									"d3d39871-6c5f-8ed7-b7e7-11032b149328",
									true,
								},
							},
							name = "Save Ley Lines for Ifrit",
							uuid = "7727329f-68fa-def2-ac54-4503c117f3ae",
							version = 2.1,
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
							localmapid = 777,
							name = "UWU only",
							uuid = "5d5cba62-8f1f-4ac9-9b2f-dfd294b810ae",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "BLACKMAGE",
							name = "BLM only",
							uuid = "d4e6f43a-2552-4fed-ae6b-82c474ea7c5d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 1644,
							name = "Garuda target",
							uuid = "2ab7d83f-07fe-0c51-bbaf-8e5d951c8bbc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							comparator = 2,
							conditionType = 3,
							hpValue = 5,
							name = "Garuda at most 5%",
							uuid = "ca158b8e-6b82-135f-ace4-fa990350f9b5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuBLMAutoSim\nreturn S~=nil and S.ifritStarted~=true and S.observed.p1end==nil",
							name = "Before Ifrit",
							uuid = "d3d39871-6c5f-8ed7-b7e7-11032b149328",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				mechanicTime = 9,
				name = "[BLM UWU] Save Ley Lines at Garuda 5%",
				throttleTime = 500,
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 205,
				timerStartOffset = -9,
				uuid = "581767f8-8e1d-77ba-829a-7a4698a55932",
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
				name = "BLM AutoSim",
				uuid = "c2b0cc48-912e-0a34-8e2a-a7f24a60cbc7",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "BLM AutoSim",
				name = "Targeting",
				uuid = "7f45f5b3-b087-baa1-b179-56feb74bd099",
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
									"227ab398-b416-294e-a0af-7af8c970653c",
									true,
								},
								
								{
									"0a8db094-5dc7-b640-8ce8-c251537148a8",
									true,
								},
								
								{
									"d1a9165f-52a1-3476-a398-8fbf7efb6ba8",
									true,
								},
								
								{
									"03ceddb8-f817-89cc-a6a4-1219d3046321",
									true,
								},
							},
							endIfUsed = true,
							name = "Target - Garuda",
							setTarget = true,
							targetContentID = 1644,
							targetType = "ContentID",
							uuid = "a0a145b2-dae4-2307-b2a8-17eee6464094",
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
							uuid = "0a8db094-5dc7-b640-8ce8-c251537148a8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local t=TensorCore.mGetTarget()\nreturn t==nil or not t.alive or not t.targetable",
							name = "No living hostile target",
							uuid = "d1a9165f-52a1-3476-a398-8fbf7efb6ba8",
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
							uuid = "03ceddb8-f817-89cc-a6a4-1219d3046321",
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
							uuid = "227ab398-b416-294e-a0af-7af8c970653c",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim/Targeting",
				loop = true,
				mechanicTime = 34,
				name = "[BLM UWU] [Target] Garuda Reacquire",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 8,
				timerEndOffset = 147,
				uuid = "a19f4c35-2b95-43e6-911e-1848903ab4e8",
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
				name = "BLM AutoSim",
				uuid = "44297600-1d78-0b3d-a2ff-6077cbe2e40b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "BLM AutoSim",
				name = "Targeting",
				uuid = "c520d02c-26ea-914a-ae31-6ae47e9c7715",
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
									"2b8c616c-ac7a-2853-ba20-1f2462ca6705",
									true,
								},
								
								{
									"3cd9b6c3-153e-b8aa-bf1b-af5e9dc9f691",
									true,
								},
								
								{
									"8da24022-5c29-5fbc-b24a-9cf2a7c0e65d",
									true,
								},
								
								{
									"ae125f9a-478f-692c-a65b-f6574d1e3c3c",
									true,
								},
							},
							name = "Target Garuda",
							setTarget = true,
							targetType = "Event Entity",
							uuid = "558c7f01-bd23-3cc4-a316-1e9bdcbeca52",
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
							uuid = "3cd9b6c3-153e-b8aa-bf1b-af5e9dc9f691",
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
							uuid = "ae125f9a-478f-692c-a65b-f6574d1e3c3c",
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
							uuid = "8da24022-5c29-5fbc-b24a-9cf2a7c0e65d",
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
							uuid = "2b8c616c-ac7a-2853-ba20-1f2462ca6705",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim/Targeting",
				eventType = 26,
				loop = true,
				mechanicTime = 39,
				name = "[BLM UWU] [Target] Garuda - Acquire",
				timeRange = true,
				timelineIndex = 10,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "3abba45f-a5bf-0632-9dbe-6c9612c6eab2",
				version = 2,
			},
		},
	},
	[17] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "BLM AutoSim",
				uuid = "d519dfff-9750-1f85-bb7c-7a51b2f7e3a2",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "BLM AutoSim",
				name = "Mitigation",
				uuid = "07c2fed3-0351-9ed9-8340-d6de2b3b140a",
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
									"447b2e15-d181-0374-abe7-5d8b3a126399",
									true,
								},
								
								{
									"ad2d04b6-6645-8d8c-b742-876f1f947bed",
									true,
								},
								
								{
									"2b8d6df6-043d-9e21-b24e-5bc2fd61c0f0",
									true,
								},
							},
							gVar = "ACR_TensorNuke4_Hotbar_Manaward",
							uuid = "84b9be95-f648-fb72-8dc5-909a433ddacc",
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
							localmapid = 777,
							name = "UWU only",
							uuid = "447b2e15-d181-0374-abe7-5d8b3a126399",
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
							uuid = "ad2d04b6-6645-8d8c-b742-876f1f947bed",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local C=_G.UWU_BLM_AutoSimConfig\nreturn C==nil or C.manaward==true",
							name = "option enabled",
							uuid = "2b8d6df6-043d-9e21-b24e-5bc2fd61c0f0",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim/Mitigation",
				mechanicTime = 77,
				name = "[BLM UWU] Manaward Aerial Blast",
				timeRange = true,
				timelineIndex = 17,
				timerEndOffset = -1,
				timerStartOffset = -3,
				uuid = "df638cb9-c70a-924b-9d3d-5e77c1a4e110",
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
				name = "BLM AutoSim",
				uuid = "dbfe2b7c-91ba-b7a2-a2da-c53ad8a42e6c",
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
							actionLua = "local S=data.uwuBLMAutoSim\nS.resync(\"p1end\",TensorCore.API.TensorACR.getAutoSimTime())\nself.used=true",
							conditions = 
							{
								
								{
									"bed1d482-2fcb-9163-9ed1-584c28ba70eb",
									true,
								},
								
								{
									"acfb7f69-0686-6ba8-805a-2d558224e09f",
									true,
								},
								
								{
									"461d1af7-774a-b513-a94e-a6275f461579",
									true,
								},
								
								{
									"cd3603a4-f681-fcc0-bf25-f4bd0c2fe722",
									true,
								},
								
								{
									"890c34fd-d9c6-f013-8667-8d22ea23ab0a",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "a00287dc-228e-7a25-a727-f3d8c4a8af7c",
							version = 2.1,
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
							uuid = "bed1d482-2fcb-9163-9ed1-584c28ba70eb",
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
							uuid = "acfb7f69-0686-6ba8-805a-2d558224e09f",
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
							uuid = "461d1af7-774a-b513-a94e-a6275f461579",
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
							uuid = "cd3603a4-f681-fcc0-bf25-f4bd0c2fe722",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuBLMAutoSim\nreturn S~=nil and S.observed.p1end==nil",
							name = "anchor pending",
							uuid = "890c34fd-d9c6-f013-8667-8d22ea23ab0a",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 26,
				loop = true,
				mechanicTime = 176,
				name = "[BLM UWU] Resync p1end",
				timeRange = true,
				timelineIndex = 34,
				timerEndOffset = 25,
				timerStartOffset = -76,
				uuid = "c5659747-7e7e-fb47-853b-b0e74b116983",
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
				name = "BLM AutoSim",
				uuid = "6fca8a58-ffc4-70e2-8721-450a793a6f8a",
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
							actionLua = "local ownedLey=_G.UWU_BLM_TemporaryState\nif ownedLey and ownedLey.leyHold then\n TensorCore.API.TensorACR.holdActionUntil(3573,Now())\n ownedLey.leyHold=nil\nend\nlocal S=data.uwuBLMAutoSim\nS.ifritStarted=true;S.ifritID=eventArgs.entityID\nTensorCore.API.TensorACR.holdActionUntil(846,Now())\nself.used=true",
							conditions = 
							{
								
								{
									"162f414c-65d1-dfd0-9ae0-644bd9c010c9",
									true,
								},
								
								{
									"a46ed0dc-eee6-b4bb-b8b4-3559d2f85fbf",
									true,
								},
								
								{
									"7d27a3ed-17ad-233a-93fd-160379b06499",
									true,
								},
								
								{
									"df83c503-ea9c-7262-b632-30e047fd0198",
									true,
								},
								
								{
									"24282b69-3459-5eab-b19a-86f800ec5129",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "f28b520b-e0cd-8876-ba1a-e322c93cedc8",
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
							conditionLua = "local S=data.uwuBLMAutoSim\nreturn S~=nil and not S.ifritStarted",
							name = "reserved",
							uuid = "24282b69-3459-5eab-b19a-86f800ec5129",
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
							uuid = "162f414c-65d1-dfd0-9ae0-644bd9c010c9",
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
							uuid = "a46ed0dc-eee6-b4bb-b8b4-3559d2f85fbf",
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
							uuid = "7d27a3ed-17ad-233a-93fd-160379b06499",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 3,
							name = "Ifrit returns",
							uuid = "df83c503-ea9c-7262-b632-30e047fd0198",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 26,
				mechanicTime = 300,
				name = "[BLM UWU] Release reserved Ifrit potion",
				timeRange = true,
				timelineIndex = 36,
				timerEndOffset = 15,
				timerStartOffset = -10,
				uuid = "11d945be-2939-2f9d-a1e1-7a9d449661e8",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "BLM AutoSim",
				name = "Targeting",
				uuid = "b964c606-26dd-ff57-9ae3-8ec7054dd214",
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
									"4f0d5d61-b875-5ea6-868d-d68fe1539eee",
									true,
								},
								
								{
									"ac6a3617-83be-0fdb-a187-7eed807bbbaa",
									true,
								},
								
								{
									"93bdafcf-1c0a-a3f9-a1f7-8b0d5c28dfed",
									true,
								},
								
								{
									"d840dcb4-4889-c10d-bcfa-b355e81fd0f3",
									true,
								},
							},
							endIfUsed = true,
							name = "Target - Ifrit",
							setTarget = true,
							targetContentID = 1185,
							targetType = "ContentID",
							uuid = "87667bd1-b230-4b0e-8cf0-39a7d36b4a5a",
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
							uuid = "ac6a3617-83be-0fdb-a187-7eed807bbbaa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local t=TensorCore.mGetTarget()\nreturn t==nil or not t.alive or not t.targetable",
							name = "No living hostile target",
							uuid = "93bdafcf-1c0a-a3f9-a1f7-8b0d5c28dfed",
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
							uuid = "d840dcb4-4889-c10d-bcfa-b355e81fd0f3",
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
							uuid = "4f0d5d61-b875-5ea6-868d-d68fe1539eee",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim/Targeting",
				loop = true,
				mechanicTime = 300,
				name = "[BLM UWU] [Target] Ifrit Reacquire",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 36,
				timerEndOffset = 153,
				uuid = "1d1792fd-cc4d-e2fa-9926-370d0d3a41dc",
				version = 2,
			},
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
									"d6862bb1-152e-000c-818c-5c7648084b71",
									true,
								},
								
								{
									"fb85a5e0-c156-7331-b162-69cff5db85ad",
									true,
								},
								
								{
									"929032dd-e4e1-32ac-9df1-298596804004",
									true,
								},
								
								{
									"36a7e917-0753-cabe-9cd2-d83c4f38320d",
									true,
								},
							},
							name = "Target Ifrit",
							setTarget = true,
							targetType = "Event Entity",
							uuid = "f82a6210-9f67-7e48-8b83-c17a765d7f03",
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
							uuid = "fb85a5e0-c156-7331-b162-69cff5db85ad",
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
							uuid = "36a7e917-0753-cabe-9cd2-d83c4f38320d",
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
							uuid = "929032dd-e4e1-32ac-9df1-298596804004",
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
							uuid = "d6862bb1-152e-000c-818c-5c7648084b71",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim/Targeting",
				eventType = 26,
				loop = true,
				mechanicTime = 300,
				name = "[BLM UWU] [Target] Ifrit - Acquire",
				timeRange = true,
				timelineIndex = 36,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "c48abb93-80c9-9349-9b67-b78a24233551",
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
				name = "BLM AutoSim",
				uuid = "bac22945-bb9b-bf5b-b7e5-6ceef762f4dd",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "BLM AutoSim",
				name = "Mitigation",
				uuid = "22052f50-0115-c089-9081-8bd5cacfe085",
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
									"5a7d5ae4-4883-adfd-bca7-9124e9aa1eee",
									true,
								},
								
								{
									"5c86b880-a31d-0a09-b12e-19e30b2d0f03",
									true,
								},
								
								{
									"425cad22-d9e1-8085-8d18-f5763dab8243",
									true,
								},
							},
							gVar = "ACR_TensorNuke4_Hotbar_Surecast",
							uuid = "e58c9e11-de19-b070-9544-3594de7dc459",
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
							localmapid = 777,
							name = "UWU only",
							uuid = "5a7d5ae4-4883-adfd-bca7-9124e9aa1eee",
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
							uuid = "5c86b880-a31d-0a09-b12e-19e30b2d0f03",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local C=_G.UWU_BLM_AutoSimConfig\nreturn C==nil or C.surecast==true",
							name = "option enabled",
							uuid = "425cad22-d9e1-8085-8d18-f5763dab8243",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim/Mitigation",
				mechanicTime = 315,
				name = "[BLM UWU] Surecast for Vulcan Burst",
				timeRange = true,
				timelineIndex = 39,
				timerEndOffset = 0.3,
				timerStartOffset = -5,
				uuid = "675fd1ac-74dd-aba8-b7d2-a9306ad4e862",
				version = 2,
			},
		},
	},
	[43] = 
	{
		
		{
			data = 
			{
				name = "[LPDU] Nails - Below 40 Percent Kill Order",
				uuid = "b75b927d-876c-cc05-a583-2061a07b50a7",
				version = 2,
			},
			inheritedObjectUUID = "d394afa9-032d-f512-a07f-abe0091a8e4c",
			inheritedOverwrites = 
			{
				loop = false,
				throttleTime = 250,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "BLM AutoSim",
				uuid = "0af30e9f-0cb7-a0ca-8ec1-ff36b2543264",
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
							actionLua = "local S=data.uwuBLMAutoSim\nif not S or not S.cfg.nails then self.used=true;return end\nlocal N=data.uwuBLMNails\nif not N then N={ids={},awake={}};data.uwuBLMNails=N end\nif not N.ids[eventArgs.entityID] then N.ids[eventArgs.entityID]=true end\nself.used=true",
							conditions = 
							{
								
								{
									"0e23b07a-62e3-27ac-b1fb-698dfcd1a9ae",
									true,
								},
								
								{
									"9c886592-01ae-892d-86f0-9013cc88eaaa",
									true,
								},
								
								{
									"1cdab06a-8b63-24b2-b3ca-ff30b0a040e6",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "c8187807-5061-e70c-aa0a-5163526e0859",
							version = 2.1,
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
							uuid = "0e23b07a-62e3-27ac-b1fb-698dfcd1a9ae",
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
							uuid = "9c886592-01ae-892d-86f0-9013cc88eaaa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 1186,
							name = "Content 1186",
							uuid = "1cdab06a-8b63-24b2-b3ca-ff30b0a040e6",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 5,
				loop = true,
				mechanicTime = 328,
				name = "[BLM UWU] Capture Ifrit nails",
				timeRange = true,
				timelineIndex = 43,
				timerEndOffset = 65,
				timerStartOffset = -15,
				uuid = "c5848eaf-5bcf-ed55-8697-2e7f7204ec3c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "BLM AutoSim",
				name = "P2 Ifrit",
				uuid = "a2bbac5b-0c1c-d7d5-a793-f10f95fe607b",
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
							actionLua = "local N=data.uwuBLMNails\nlocal S=data.uwuBLMAutoSim\nlocal p=TensorCore.mGetPlayer()\nif not p or not p.alive or not S then return end\nif not N.dotBlacklistDone then\nlocal dotAPI=TensorCore.API.TensorACR\nlocal dotEntry=dotAPI.addBlacklistEntry(1186,\"UWU Infernal Nail\")\nif not dotEntry.enabled or dotEntry.allowIfTarget then\n dotEntry.enabled=true\n dotEntry.allowIfTarget=false\n dotAPI.saveDotBlacklist()\nend\n N.dotBlacklistDone=true\nend\nlocal T=_G.UWU_BLM_TemporaryState or {}\n_G.UWU_BLM_TemporaryState=T\nif not T.options then\n T.options={ACR_TensorNuke4_AOE=_G.ACR_TensorNuke4_AOE,ACR_TensorNuke4_SmartAOE=_G.ACR_TensorNuke4_SmartAOE,ACR_TensorNuke4_SmartDoT=_G.ACR_TensorNuke4_SmartDoT}\nend\nlocal entities,count,alive={},0,0\nfor id in pairs(N.ids) do\n count=count+1\n local e=TensorCore.mGetEntity(id)\n if e and e.alive and e.targetable and e.hp.current>0 then\n  entities[id]=e;alive=alive+1\n  local buff=TensorCore.getBuff(id,1544)\n  if buff and buff.stacks>=2 then N.awake[id]=true end\n end\nend\nif count<4 then return end\nif alive==0 then\n for k,v in pairs(T.options) do _G[k]=v end\n T.options=nil;N.done=true;self.used=true;return\nend\nif not N.order then\n if alive~=4 then return end\n local list={};for id,e in pairs(entities) do list[#list+1]=e end\n local best=math.huge;local ni,nj\n for i=1,3 do for j=i+1,4 do\n  local a,b=list[i].pos,list[j].pos\n  local d=(a.x-b.x)^2+(a.z-b.z)^2\n  if d<best then best=d;ni=i;nj=j end\n end end\n local north,south={},{}\n for i,e in ipairs(list) do\n  if i==ni or i==nj then north[#north+1]=e else south[#south+1]=e end\n end\n local nx=(north[1].pos.x+north[2].pos.x-south[1].pos.x-south[2].pos.x)/2\n local nz=(north[1].pos.z+north[2].pos.z-south[1].pos.z-south[2].pos.z)/2\n local len=math.sqrt(nx*nx+nz*nz)\n if len<1 then return end\n local ex,ez=-nz/len,nx/len\n local function eastFirst(pair)\n  local a,b=pair[1].pos,pair[2].pos\n  if (a.x-b.x)*ex+(a.z-b.z)*ez<0 then pair[1],pair[2]=pair[2],pair[1] end\n end\n eastFirst(north);eastFirst(south)\n N.order={south[1].id,south[2].id,north[1].id,north[2].id}\n local distance=math.huge\n for id,e in pairs(entities) do\n  local d=(e.pos.x-p.pos.x)^2+(e.pos.z-p.pos.z)^2\n  if d<distance then distance=d;N.softenID=id end\n end\nend\nlocal nearest=entities[N.softenID]\nlocal cancelledSofteningCast=false\nif not N.softened and nearest and nearest.hp.percent<=40 then\n N.softened=true\n local cast=p.castinginfo\n if cast.castingid>0 or cast.channelingid>0 then\n  for _,id in ipairs(cast.castingtargets) do\n   if id==N.softenID then\n    -- One threshold transition only: never cancel ordered-kill casts.\n    ActionList:StopCasting()\n    cancelledSofteningCast=true\n    break\n   end\n  end\n end\nelseif not nearest then\n N.softened=true\nend\nlocal awakened=0\nfor id in pairs(N.ids) do if N.awake[id] then awakened=awakened+1 end end\nlocal kill=N.softened and awakened==4\nlocal desired\nif not N.softened then desired=N.softenID\nelseif not kill then\n local boss=S.ifritID and TensorCore.mGetEntity(S.ifritID)\n if boss and boss.alive and boss.targetable then desired=boss.id end\nelse\n for _,id in ipairs(N.order) do if entities[id] then desired=id;break end end\nend\nlocal close=kill and S.cfg.closePair and not entities[N.order[1]] and not entities[N.order[2]]\nlocal smart=awakened==4\nlocal changed=false\nlocal function option(k,value)\n if _G[k]~=value then _G[k]=value;changed=true end\nend\noption('ACR_TensorNuke4_AOE',close and T.options.ACR_TensorNuke4_AOE or false)\n-- Keep exact kill-order targeting until only the close pair remains.\noption('ACR_TensorNuke4_SmartAOE',close and T.options.ACR_TensorNuke4_SmartAOE or false)\noption('ACR_TensorNuke4_SmartDoT',smart and T.options.ACR_TensorNuke4_SmartDoT or false)\n-- At the softening threshold, switch immediately after cancelling that nail cast.\nif desired and (cancelledSofteningCast or (p.castinginfo.castingid<=0 and p.castinginfo.channelingid<=0)) then\n local e=entities[desired] or TensorCore.mGetEntity(desired)\n local target=TensorCore.mGetTarget()\n if e and e.targetable and (not target or target.id~=desired) then Player:SetTarget(desired);changed=true end\nend\nif changed then self.used=true end\n",
							conditions = 
							{
								
								{
									"cac9e27b-5d56-59ff-9735-7cbd29bf60f7",
									true,
								},
								
								{
									"4ee22f41-dcea-e19a-8033-b889bf24eb80",
									true,
								},
								
								{
									"e43c4f0f-079d-9096-973e-5a0f0fc5629a",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "f19aa1a8-e4be-8ef1-b7e4-c97e433627ed",
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
							conditionLua = "local N=data.uwuBLMNails\nreturn N~=nil and not N.done",
							name = "nails active",
							uuid = "e43c4f0f-079d-9096-973e-5a0f0fc5629a",
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
							uuid = "cac9e27b-5d56-59ff-9735-7cbd29bf60f7",
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
							uuid = "4ee22f41-dcea-e19a-8033-b889bf24eb80",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim/P2 Ifrit",
				loop = true,
				mechanicTime = 328,
				name = "[BLM UWU] Nearest nail 40% then ordered kills",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 43,
				timerEndOffset = 67,
				timerStartOffset = -12,
				uuid = "3d638507-2af6-e6b8-adde-a8fc3cee3b45",
				version = 2,
			},
		},
	},
	[46] = 
	{
		
		{
			data = 
			{
				name = "[Draw] Searing Wind Buff Cleanup",
				uuid = "4017e453-53d0-bf50-8b8b-58f1f0a63827",
				version = 2,
			},
			inheritedObjectUUID = "a46fd5de-c699-3895-aa70-b3dec57aad5f",
			inheritedOverwrites = 
			{
				throttleTime = 1000,
			},
		},
	},
	[50] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "BLM AutoSim",
				uuid = "0d531525-622c-a31e-ac2f-76a219cde7f5",
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
							actionLua = "local S=data.uwuBLMAutoSim\nS.resync(\"ifrit1\",TensorCore.API.TensorACR.getAutoSimTime())\nself.used=true",
							conditions = 
							{
								
								{
									"0574fde9-633f-1006-95ef-c40bd0902c0d",
									true,
								},
								
								{
									"34cfa8b3-d814-2f12-b252-4f1cbd5af132",
									true,
								},
								
								{
									"4e30ad27-737a-8263-a673-e5a398f4093c",
									true,
								},
								
								{
									"99e5877c-14a6-8793-8f56-ffcc7608ca36",
									true,
								},
								
								{
									"85fae42c-325c-3059-9e52-df3fea78c86a",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "579c773b-5665-85ee-afb6-ef8a448494b1",
							version = 2.1,
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
							uuid = "0574fde9-633f-1006-95ef-c40bd0902c0d",
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
							uuid = "34cfa8b3-d814-2f12-b252-4f1cbd5af132",
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
							uuid = "4e30ad27-737a-8263-a673-e5a398f4093c",
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
							uuid = "99e5877c-14a6-8793-8f56-ffcc7608ca36",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuBLMAutoSim\nreturn S~=nil and S.observed.ifrit1==nil",
							name = "anchor pending",
							uuid = "85fae42c-325c-3059-9e52-df3fea78c86a",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 26,
				loop = true,
				mechanicTime = 361.5,
				name = "[BLM UWU] Resync ifrit1",
				timeRange = true,
				timelineIndex = 50,
				timerEndOffset = 20,
				timerStartOffset = -15,
				uuid = "41263be8-ab34-36c7-840c-99ce27af7e39",
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
				name = "BLM AutoSim",
				uuid = "deb8a66a-d362-0896-bbbe-4ad55ce3903e",
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
							actionLua = "local S=data.uwuBLMAutoSim\nS.resync(\"p2end\",TensorCore.API.TensorACR.getAutoSimTime())\nself.used=true",
							conditions = 
							{
								
								{
									"c6a7bfac-0bdd-0ee6-9ca3-57e3445583b9",
									true,
								},
								
								{
									"39d78614-fe3b-ec4f-9757-0b4d4dc54165",
									true,
								},
								
								{
									"3208965c-26e4-e978-85de-fff9b40fca5b",
									true,
								},
								
								{
									"329a4c92-7f7b-b46f-843f-3d7fd3d6bc67",
									true,
								},
								
								{
									"c56c2737-b6e0-f133-a854-e570d2eca60f",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "068c86cd-1b32-aa1a-8ecc-78c0b66dd0f2",
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
							uuid = "329a4c92-7f7b-b46f-843f-3d7fd3d6bc67",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuBLMAutoSim\nreturn S~=nil and S.observed.p2end==nil",
							name = "anchor pending",
							uuid = "c56c2737-b6e0-f133-a854-e570d2eca60f",
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
							uuid = "c6a7bfac-0bdd-0ee6-9ca3-57e3445583b9",
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
							uuid = "39d78614-fe3b-ec4f-9757-0b4d4dc54165",
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
							uuid = "3208965c-26e4-e978-85de-fff9b40fca5b",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 26,
				loop = true,
				mechanicTime = 409,
				name = "[BLM UWU] Resync p2end",
				timeRange = true,
				timelineIndex = 63,
				timerEndOffset = 75,
				timerStartOffset = 15,
				uuid = "3a736973-ef92-e680-9414-776e1fd3ed25",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.uwuBLMAutoSim\nlocal key=eventArgs.isTargetable and \"ifritDashBack\" or \"ifritDash\"\nS.resync(key,TensorCore.API.TensorACR.getAutoSimTime())\nself.used=true",
							conditions = 
							{
								
								{
									"b69029d8-c900-48a1-a0f2-67b452d4b571",
									true,
								},
								
								{
									"aa7c675b-0b11-349d-8317-449145813581",
									true,
								},
								
								{
									"df4265dc-b54b-9481-90e4-05cd78b13ef6",
									true,
								},
								
								{
									"cc595712-1770-6508-aab7-3005d8251fb0",
									true,
								},
							},
							name = "Resync distinct dash boundary",
							uuid = "ffd90a22-f1ac-7f44-bc68-57b1ac1c5208",
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
							conditionLua = "local S=data.uwuBLMAutoSim\nif not S or not S.anchors.ifritDash then return false end\nlocal key=eventArgs.isTargetable and \"ifritDashBack\" or \"ifritDash\"\nreturn S.observed[key]==nil",
							dequeueIfLuaFalse = true,
							name = "Dash anchor pending",
							uuid = "cc595712-1770-6508-aab7-3005d8251fb0",
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
							uuid = "b69029d8-c900-48a1-a0f2-67b452d4b571",
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
							uuid = "aa7c675b-0b11-349d-8317-449145813581",
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
							uuid = "df4265dc-b54b-9481-90e4-05cd78b13ef6",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 26,
				loop = true,
				mechanicTime = 409,
				name = "[BLM UWU] Resync Ifrit second dash and return",
				timeRange = true,
				timelineIndex = 63,
				timerEndOffset = 25,
				timerStartOffset = -15,
				uuid = "a1537adf-cc26-8b55-b55d-6ecfca0e39bc",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local T=_G.UWU_BLM_TemporaryState or {}\n_G.UWU_BLM_TemporaryState=T\nTensorCore.API.TensorACR.holdActionUntil(3573,Now()+180000)\nT.leyHold=\"Ifrit\"\nself.used=true",
							conditions = 
							{
								
								{
									"a063f6e8-7746-9942-959b-9c6ea9b690fb",
									true,
								},
								
								{
									"47e53700-b245-7f97-998b-2b8d50d091d6",
									true,
								},
								
								{
									"fc92cbd8-389d-3b35-b18b-41da322a1fb5",
									true,
								},
								
								{
									"5f5459b7-ba35-5823-b54c-93418730525c",
									true,
								},
								
								{
									"838b5f29-6032-fb35-abf2-7b5e5fac4a4c",
									true,
								},
							},
							name = "Reserve Ley Lines for next phase",
							uuid = "db34a04a-f41f-1e6d-a4d9-99479fd1ec4f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							comparator = 2,
							conditionType = 3,
							hpValue = 5,
							name = "Ifrit at most 5%",
							uuid = "5f5459b7-ba35-5823-b54c-93418730525c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuBLMAutoSim\nreturn S~=nil and S.observed.p2end==nil",
							name = "Phase not finished",
							uuid = "838b5f29-6032-fb35-abf2-7b5e5fac4a4c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 8,
							localmapid = 777,
							name = "UWU only",
							uuid = "a063f6e8-7746-9942-959b-9c6ea9b690fb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "BLACKMAGE",
							name = "BLM only",
							uuid = "47e53700-b245-7f97-998b-2b8d50d091d6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 1185,
							name = "Ifrit target",
							uuid = "fc92cbd8-389d-3b35-b18b-41da322a1fb5",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				mechanicTime = 409,
				name = "[BLM UWU] Save Ley Lines at Ifrit 5%",
				throttleTime = 500,
				timeRange = true,
				timelineIndex = 63,
				timerEndOffset = 100,
				timerStartOffset = -120,
				uuid = "89991686-0ae0-267e-9218-aa0646a63f58",
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
				name = "BLM AutoSim",
				uuid = "1460eb93-4a7a-d38e-8ea0-de4272329ec2",
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
							actionLua = "local T=_G.UWU_BLM_TemporaryState\nif T and T.options then for k,v in pairs(T.options) do _G[k]=v end;T.options=nil end\nif data.uwuBLMNails then data.uwuBLMNails.done=true end\nself.used=true",
							conditions = 
							{
								
								{
									"5ef5328e-3d24-aea1-956b-7be7728fa610",
									true,
								},
								
								{
									"9af11798-64b5-340c-9b08-da1d5354c644",
									true,
								},
								
								{
									"e75e042a-a310-ffb4-b0f2-09c1812e29c4",
									true,
								},
								
								{
									"6c2bf249-f674-f9f0-a2aa-595fb6d2075c",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "72d09d95-ffd1-7978-b72f-ac6250da842e",
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
							name = "Titan targetable",
							uuid = "6c2bf249-f674-f9f0-a2aa-595fb6d2075c",
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
							uuid = "5ef5328e-3d24-aea1-956b-7be7728fa610",
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
							uuid = "9af11798-64b5-340c-9b08-da1d5354c644",
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
							uuid = "e75e042a-a310-ffb4-b0f2-09c1812e29c4",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 26,
				mechanicTime = 600,
				name = "[BLM UWU] Restore nail options at Titan",
				timeRange = true,
				timelineIndex = 74,
				timerEndOffset = 15,
				timerStartOffset = -10,
				uuid = "ef96b212-5522-a7af-b436-ea49c15b039d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local T=_G.UWU_BLM_TemporaryState\nif T and T.leyHold then\n TensorCore.API.TensorACR.holdActionUntil(3573,Now())\n T.leyHold=nil\nend\nlocal S=data.uwuBLMAutoSim\nS.resync(\"ifrit2Back\",TensorCore.API.TensorACR.getAutoSimTime())\nself.used=true",
							conditions = 
							{
								
								{
									"f67ad551-a807-bdc0-b4ba-d513d6607ee3",
									true,
								},
								
								{
									"127ba814-37be-640d-890a-c60828f802ef",
									true,
								},
								
								{
									"49cdad40-361f-6cf5-b6b9-3b38f0cc8567",
									true,
								},
								
								{
									"ca60b023-521c-ce68-8b8a-c9057bed4d44",
									true,
								},
								
								{
									"4c2627f2-859d-adef-b908-657f555f81d1",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "e35cc740-4db7-6cc7-8ed1-9d9468b80548",
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
							uuid = "ca60b023-521c-ce68-8b8a-c9057bed4d44",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuBLMAutoSim\nreturn S~=nil and S.observed.ifrit2Back==nil",
							name = "anchor pending",
							uuid = "4c2627f2-859d-adef-b908-657f555f81d1",
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
							uuid = "f67ad551-a807-bdc0-b4ba-d513d6607ee3",
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
							uuid = "127ba814-37be-640d-890a-c60828f802ef",
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
							uuid = "49cdad40-361f-6cf5-b6b9-3b38f0cc8567",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 26,
				loop = true,
				mechanicTime = 600,
				name = "[BLM UWU] Resync ifrit2Back",
				timeRange = true,
				timelineIndex = 74,
				timerEndOffset = 15,
				timerStartOffset = -10,
				uuid = "1e13a2ed-2217-5bc1-995a-36ede605b69c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "BLM AutoSim",
				name = "Targeting",
				uuid = "b690bbec-3727-6d3d-aeb6-109534d0259e",
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
									"7d079e74-1092-62ee-a558-49c1a8b1e57c",
									true,
								},
								
								{
									"409aca1e-54c5-b8a1-b1ad-39bdb80b1095",
									true,
								},
								
								{
									"d52a3bb3-f97c-c294-95e5-624074967c68",
									true,
								},
								
								{
									"022e4314-bdea-7de3-8d32-81080e74c1e8",
									true,
								},
							},
							endIfUsed = true,
							name = "Target - Titan",
							setTarget = true,
							targetContentID = 1801,
							targetType = "ContentID",
							uuid = "09f3bb1c-62e0-5119-856e-052db4df2dfa",
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
							uuid = "409aca1e-54c5-b8a1-b1ad-39bdb80b1095",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local t=TensorCore.mGetTarget()\nreturn t==nil or not t.alive or not t.targetable",
							name = "No living hostile target",
							uuid = "d52a3bb3-f97c-c294-95e5-624074967c68",
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
							uuid = "022e4314-bdea-7de3-8d32-81080e74c1e8",
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
							uuid = "7d079e74-1092-62ee-a558-49c1a8b1e57c",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim/Targeting",
				loop = true,
				mechanicTime = 600,
				name = "[BLM UWU] [Target] Titan Reacquire",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 74,
				timerEndOffset = 168,
				uuid = "daef54a7-625d-959e-89cb-8ef6c8f82d27",
				version = 2,
			},
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
									"bb038b93-7932-51ee-9561-74acb38aadfb",
									true,
								},
								
								{
									"b707b3f2-4a09-4634-a0df-157f82c844d3",
									true,
								},
								
								{
									"ecb82bf5-7e8f-c410-bc70-c6f2204a4225",
									true,
								},
								
								{
									"a0a16347-3ac1-3027-9cd4-3b8f82e32086",
									true,
								},
							},
							name = "Target Titan",
							setTarget = true,
							targetType = "Event Entity",
							uuid = "df922900-9e50-cdc0-ba3a-9d2f630226c5",
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
							uuid = "b707b3f2-4a09-4634-a0df-157f82c844d3",
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
							uuid = "a0a16347-3ac1-3027-9cd4-3b8f82e32086",
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
							uuid = "ecb82bf5-7e8f-c410-bc70-c6f2204a4225",
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
							uuid = "bb038b93-7932-51ee-9561-74acb38aadfb",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim/Targeting",
				eventType = 26,
				loop = true,
				mechanicTime = 600,
				name = "[BLM UWU] [Target] Titan - Acquire",
				timeRange = true,
				timelineIndex = 74,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "14762ebd-1b3a-8be8-b58b-879ee566defa",
				version = 2,
			},
		},
	},
	[75] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "BLM AutoSim",
				uuid = "03369419-c187-dc61-b7f1-172c2213b3f2",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "BLM AutoSim",
				name = "Mitigation",
				uuid = "ee47ed80-a949-71e7-9384-38410b3d9fa7",
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
									"77d83473-a998-901c-9e5b-cd54450916a3",
									true,
								},
								
								{
									"4f1255cb-096a-d987-aa4a-ebcf3cd21250",
									true,
								},
								
								{
									"474dcdda-6c7e-17a6-a399-4f98a3448a0b",
									true,
								},
							},
							gVar = "ACR_TensorNuke4_Hotbar_Manaward",
							uuid = "71d622db-8b18-fb63-a559-6af4ddd9bb6d",
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
							localmapid = 777,
							name = "UWU only",
							uuid = "77d83473-a998-901c-9e5b-cd54450916a3",
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
							uuid = "4f1255cb-096a-d987-aa4a-ebcf3cd21250",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local C=_G.UWU_BLM_AutoSimConfig\nreturn C==nil or C.manaward==true",
							name = "option enabled",
							uuid = "474dcdda-6c7e-17a6-a399-4f98a3448a0b",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim/Mitigation",
				mechanicTime = 605,
				name = "[BLM UWU] Manaward Earthen Fury",
				timeRange = true,
				timelineIndex = 75,
				timerEndOffset = -1,
				timerStartOffset = -3,
				uuid = "1db0f54a-63ad-5dbf-9263-a689d6b0635d",
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
				name = "BLM AutoSim",
				uuid = "2d1f7bda-f582-2e55-b895-c292a53656a4",
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
							actionLua = "local S=data.uwuBLMAutoSim\nS.resync(\"titan1\",TensorCore.API.TensorACR.getAutoSimTime())\nself.used=true",
							conditions = 
							{
								
								{
									"26ff376e-b476-4762-803e-12cde789457f",
									true,
								},
								
								{
									"6a552c11-5ea1-6ea9-9811-437f7a6120bb",
									true,
								},
								
								{
									"48b72521-cfd2-51c5-8f5b-f80f604208df",
									true,
								},
								
								{
									"22c7b8c6-6320-493f-a3ab-b8d72519cf88",
									true,
								},
								
								{
									"0f6db468-22ba-79e3-a045-2252bd860ae0",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "d0e1a114-5086-78ef-8971-477d37bef581",
							version = 2.1,
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
							uuid = "26ff376e-b476-4762-803e-12cde789457f",
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
							uuid = "6a552c11-5ea1-6ea9-9811-437f7a6120bb",
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
							uuid = "48b72521-cfd2-51c5-8f5b-f80f604208df",
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
							uuid = "22c7b8c6-6320-493f-a3ab-b8d72519cf88",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuBLMAutoSim\nreturn S~=nil and S.observed.titan1==nil",
							name = "anchor pending",
							uuid = "0f6db468-22ba-79e3-a045-2252bd860ae0",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 26,
				loop = true,
				mechanicTime = 623.5,
				name = "[BLM UWU] Resync titan1",
				timeRange = true,
				timelineIndex = 79,
				timerEndOffset = 8,
				timerStartOffset = -8,
				uuid = "b922cee1-e0b2-5cca-b342-097d8fdeda82",
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
				name = "BLM AutoSim",
				uuid = "b03fd606-de74-c5aa-8587-1ce916c61180",
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
							actionLua = "local G=data.uwuBLMTripleGaols\nlocal id=eventArgs.entityID\nG.ids[id]=eventArgs.isTargetable\nlocal S=data.uwuBLMAutoSim\nif eventArgs.isTargetable and S and S.gaolForecast then\n local e=TensorCore.mGetEntity(id)\n local p=TensorCore.mGetPlayer()\n if e and p then\n  local dx,dz=e.pos.x-p.pos.x,e.pos.z-p.pos.z\n  local distance=dx*dx+dz*dz\n  if distance<=4 and (not S.gaolEntityDistance or distance<S.gaolEntityDistance) then\n   S.gaolEntityID=id;S.gaolEntityDistance=distance;S.gaolEntityObserved=true\n  end\n end\nend\n\nlocal count,up=0,0\nfor _,alive in pairs(G.ids) do count=count+1;if alive then up=up+1 end end\nif count>=3 and up==0 then\n TensorCore.API.TensorACR.deleteAOEBlacklistEntry(1804)\n _G.UWU_BLM_TemporaryState.gaols=nil\n G.done=true\nend\nself.used=true",
							conditions = 
							{
								
								{
									"892396b9-60d5-7835-be3f-cbbf4a2b0464",
									true,
								},
								
								{
									"e2767fa3-e497-b217-81b4-5f862d1a145a",
									true,
								},
								
								{
									"fce5f001-9ab0-8327-8275-725ab56d3577",
									true,
								},
								
								{
									"aa5c57ac-3a99-478a-bb3c-93e899a2b8a5",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "1d267953-6572-7120-b66f-eeb0ed89c9c4",
							version = 2.1,
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
							jobValue = "BLACKMAGE",
							name = "BLM only",
							uuid = "e2767fa3-e497-b217-81b4-5f862d1a145a",
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
							uuid = "fce5f001-9ab0-8327-8275-725ab56d3577",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local G=data.uwuBLMTripleGaols\nreturn G~=nil and not G.done",
							name = "triple active",
							uuid = "aa5c57ac-3a99-478a-bb3c-93e899a2b8a5",
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
							uuid = "892396b9-60d5-7835-be3f-cbbf4a2b0464",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 26,
				loop = true,
				mechanicTime = 639,
				name = "[BLM UWU] Unblock after all three gaols",
				timeRange = true,
				timelineIndex = 85,
				timerEndOffset = 35,
				timerStartOffset = -5,
				uuid = "f7f6c3cc-06df-81f0-9933-c6fd1d61a4ec",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.uwuBLMAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal duration=eventArgs.buffDuration\nif type(duration)~=\"number\" or duration<=0 then duration=5.574 end\nS.fettersActive=true\nS.dynamic.gaolStun={\"Stun\",now,now+duration,1}\nS.dynamic.gaolMove={\"CasterDowntime\",now-0.1,now+duration+2,1}\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"222f0946-bc1d-59f0-b8b0-3f6304c7d072",
									true,
								},
								
								{
									"9310fa32-e33f-fa06-afe3-c8ab04c6e55a",
									true,
								},
								
								{
									"748aa666-c034-5c9c-b6cd-906aee84a0bb",
									true,
								},
								
								{
									"a5b7053e-eee5-665e-a41b-f68e50d0d913",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "86ae6bb9-4b8d-0240-8570-fa4506b67a77",
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
							conditionLua = "return eventArgs.entityID==Player.id and eventArgs.buffID==292 and data.uwuBLMAutoSim~=nil",
							dequeueIfLuaFalse = true,
							name = "self fetters",
							uuid = "a5b7053e-eee5-665e-a41b-f68e50d0d913",
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
							uuid = "222f0946-bc1d-59f0-b8b0-3f6304c7d072",
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
							uuid = "9310fa32-e33f-fa06-afe3-c8ab04c6e55a",
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
							uuid = "748aa666-c034-5c9c-b6cd-906aee84a0bb",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 8,
				loop = true,
				mechanicTime = 639,
				name = "[BLM UWU] Observe personal Fetters stun",
				timeRange = true,
				timelineIndex = 85,
				timerEndOffset = 25,
				timerStartOffset = -5,
				uuid = "13e5f4b2-5d15-0f6a-8fb5-f15f090aae57",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.uwuBLMAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal observed=TensorCore.hasBuff(Player.id,292)\nlocal own=S.gaolEntityID and TensorCore.mGetEntity(S.gaolEntityID)\nlocal entityTrapped=own and own.alive and own.targetable and own.hp.current>0\nif observed or entityTrapped then\n local firstObservation=not S.fettersActive\n S.fettersActive=true\n if not S.dynamic.gaolStun then S.dynamic.gaolStun={\"Stun\",now,now+1,1} end\n if not S.dynamic.gaolMove then S.dynamic.gaolMove={\"CasterDowntime\",now,now+3,1} end\n if firstObservation then\n  S.dynamic.gaolStun[2]=math.min(S.dynamic.gaolStun[2],now)\n  S.dynamic.gaolMove[2]=math.min(S.dynamic.gaolMove[2],now)\n  S.publish()\n end\n if now>=S.dynamic.gaolStun[3]-.5 then\n  S.dynamic.gaolStun[3]=now+1;S.dynamic.gaolMove[3]=now+3\n  S.publish()\n end\nelseif S.fettersActive then\n S.dynamic.gaolStun=nil\n if S.dynamic.gaolMove then S.dynamic.gaolMove[3]=now+2 end\n S.fettersActive=nil;S.gaolCompleted=true\n S.publish();self.used=true\nend",
							conditions = 
							{
								
								{
									"7185d10d-4329-9145-b1bb-985787528f1b",
									true,
								},
								
								{
									"5474bd0c-e985-21aa-aed7-4473908231df",
									true,
								},
								
								{
									"309c5b59-c0ed-4614-b7b0-4459f4a912be",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "e4612bff-84d5-ed11-a2f4-d82b699ab3e8",
							version = 2.1,
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
							jobValue = "BLACKMAGE",
							name = "BLM only",
							uuid = "5474bd0c-e985-21aa-aed7-4473908231df",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuBLMAutoSim\nreturn S~=nil and (S.fettersActive==true or (S.gaolForecast==true and S.gaolCompleted~=true))",
							name = "stunned",
							uuid = "309c5b59-c0ed-4614-b7b0-4459f4a912be",
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
							uuid = "7185d10d-4329-9145-b1bb-985787528f1b",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				loop = true,
				mechanicTime = 639,
				name = "[BLM UWU] End personal gaol downtime",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 85,
				timerEndOffset = 40,
				timerStartOffset = -5,
				uuid = "49625acc-2423-d7d1-aa22-369df1920736",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.uwuBLMTripleGaols={ids={}}\nlocal T=_G.UWU_BLM_TemporaryState or {};_G.UWU_BLM_TemporaryState=T;T.gaols=true\nlocal entry=TensorCore.API.TensorACR.addAOEBlacklistEntry(1804,\"UWU triple player gaols\")\nentry.enabled=true\nlocal S=data.uwuBLMAutoSim\nif S and eventArgs.targetID==Player.id and not S.gaolForecast then\n local now=TensorCore.API.TensorACR.getAutoSimTime()\n S.gaolForecast=true\n S.dynamic.gaolStun={\"Stun\",now+4.942,now+10.516,1}\n S.dynamic.gaolMove={\"CasterDowntime\",now,now+12.516,1}\n S.publish()\nend\nself.used=true",
							conditions = 
							{
								
								{
									"31b54dcf-0df0-3a99-8bed-2bf3a5a0ca3f",
									true,
								},
								
								{
									"32d2c7d6-b8c2-2578-a419-e2d6fa667934",
									true,
								},
								
								{
									"76db2e7f-722e-0578-aacd-596e040e41ed",
									true,
								},
								
								{
									"dbc6ce0a-fa2c-0b1a-9fc7-dbab0c414d4f",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "f184643a-39c2-b22e-8d63-88b6eece1ddd",
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
							conditionLua = "return data.uwuBLMTripleGaols==nil",
							name = "first triple",
							uuid = "dbc6ce0a-fa2c-0b1a-9fc7-dbab0c414d4f",
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
							uuid = "31b54dcf-0df0-3a99-8bed-2bf3a5a0ca3f",
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
							uuid = "32d2c7d6-b8c2-2578-a419-e2d6fa667934",
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
							uuid = "76db2e7f-722e-0578-aacd-596e040e41ed",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 2,
				loop = true,
				mechanicTime = 639,
				name = "[BLM UWU] Blacklist the triple gaols",
				timeRange = true,
				timelineIndex = 85,
				timerEndOffset = 10,
				timerStartOffset = -5,
				uuid = "5c4870a0-ab18-bc1e-a4c3-095c59869773",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.uwuBLMAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime();S.gaolForecast=true\nS.dynamic.gaolStun={\"Stun\",now+4.942,now+10.516,1}\nS.dynamic.gaolMove={\"CasterDowntime\",now,now+12.516,1}\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"8c429d1e-40f6-b091-ba66-40913414468d",
									true,
								},
								
								{
									"6181a900-e67a-15b9-a9dd-4180dbb66eee",
									true,
								},
								
								{
									"2e951e94-e04a-1f74-908c-b3f6f8df30bc",
									true,
								},
								
								{
									"aed8c1dc-eb9f-6d93-8f65-03cd434e1c61",
									true,
								},
								
								{
									"e71ef132-e328-7d9b-8f68-1888c0193a53",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "12b29233-faff-6cb5-baba-781ec2874ce4",
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
							uuid = "2e951e94-e04a-1f74-908c-b3f6f8df30bc",
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
							uuid = "aed8c1dc-eb9f-6d93-8f65-03cd434e1c61",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuBLMAutoSim\nreturn S~=nil and not S.gaolForecast",
							dequeueIfLuaFalse = true,
							name = "not forecast",
							uuid = "e71ef132-e328-7d9b-8f68-1888c0193a53",
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
							uuid = "8c429d1e-40f6-b091-ba66-40913414468d",
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
							uuid = "6181a900-e67a-15b9-a9dd-4180dbb66eee",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 2,
				loop = true,
				mechanicTime = 639,
				name = "[BLM UWU] Forecast personal gaol movement",
				timeRange = true,
				timelineIndex = 85,
				timerEndOffset = 10,
				timerStartOffset = -5,
				uuid = "e66f6e78-040e-a4ee-b88c-833a7a958869",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "BLM AutoSim",
				name = "Targeting",
				uuid = "0d6e79a3-6c1d-f5eb-9cf7-20f676acdb70",
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
									"de8000c8-ca86-9991-882a-2575aba36a0b",
									true,
								},
								
								{
									"83bfbc47-df09-c3f7-8397-e11322773118",
									true,
								},
								
								{
									"90f06ac1-7d64-654e-918e-d95174d468ba",
									true,
								},
								
								{
									"5c023a64-b92a-60bb-b097-b01ebc8ae3dc",
									true,
								},
							},
							name = "Target nearest Granite Gaol",
							setTarget = true,
							targetContentID = 1804,
							targetType = "ContentID",
							uuid = "baf380a3-3f87-2455-9c5d-0cc70b089e38",
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
							uuid = "83bfbc47-df09-c3f7-8397-e11322773118",
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
							uuid = "5c023a64-b92a-60bb-b097-b01ebc8ae3dc",
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
							uuid = "90f06ac1-7d64-654e-918e-d95174d468ba",
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
							uuid = "de8000c8-ca86-9991-882a-2575aba36a0b",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim/Targeting",
				enabled = false,
				eventType = 26,
				loop = true,
				mechanicTime = 639,
				name = "[BLM UWU] [Target] Titan Gaols - Acquire",
				timeRange = true,
				timelineIndex = 85,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "27e7e348-4606-1f85-8fda-caa60efeba6d",
				version = 2,
			},
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
									"00e70d09-7805-8bc0-a82d-61a899eb98f3",
									true,
								},
								
								{
									"18913bd3-e7ec-8d90-8a0f-fea71aa58224",
									true,
								},
								
								{
									"19f4269f-df56-b406-88d1-b814da84398f",
									true,
								},
								
								{
									"ec3928ef-dfd9-7ed0-a342-c380d7266613",
									true,
								},
								
								{
									"0935be8d-508d-7747-aa9b-955340556cc4",
									true,
								},
							},
							name = "Target next Granite Gaol",
							setTarget = true,
							targetType = "Detection Target",
							uuid = "63263ccb-0826-249b-a0b0-0b6ed3d884f3",
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
									"00e70d09-7805-8bc0-a82d-61a899eb98f3",
									true,
								},
								
								{
									"18913bd3-e7ec-8d90-8a0f-fea71aa58224",
									true,
								},
								
								{
									"19f4269f-df56-b406-88d1-b814da84398f",
									true,
								},
								
								{
									"ec3928ef-dfd9-7ed0-a342-c380d7266613",
									true,
								},
								
								{
									"0935be8d-508d-7747-aa9b-955340556cc4",
									false,
								},
							},
							name = "Restore Titan target",
							setTarget = true,
							targetContentID = 1801,
							targetType = "ContentID",
							uuid = "b0cd5394-3b7b-637b-9a38-353212b1fd99",
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
							uuid = "18913bd3-e7ec-8d90-8a0f-fea71aa58224",
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
							uuid = "0935be8d-508d-7747-aa9b-955340556cc4",
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
							uuid = "19f4269f-df56-b406-88d1-b814da84398f",
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
							uuid = "ec3928ef-dfd9-7ed0-a342-c380d7266613",
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
							uuid = "00e70d09-7805-8bc0-a82d-61a899eb98f3",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim/Targeting",
				enabled = false,
				eventType = 26,
				loop = true,
				mechanicTime = 639,
				name = "[BLM UWU] [Target] Titan Gaols - Advance",
				timeRange = true,
				timelineIndex = 85,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "02719e5b-f264-eacb-b906-535d1640a0aa",
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
				name = "BLM AutoSim",
				uuid = "84ab0c4a-f33d-7fab-a252-184ea516a51d",
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
							actionLua = "TensorCore.API.TensorACR.deleteAOEBlacklistEntry(1804)\n_G.UWU_BLM_TemporaryState.gaols=nil\nif data.uwuBLMTripleGaols then data.uwuBLMTripleGaols.done=true end\nself.used=true",
							conditions = 
							{
								
								{
									"08697279-f092-dd93-8ae0-ae88b1b7b996",
									true,
								},
								
								{
									"2d6e4995-e695-0010-bf86-a1a38700e891",
									true,
								},
								
								{
									"f823121b-7499-b941-a63a-c4f9a7bd5a4c",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "47fdeca4-cebf-120d-9055-cfa591451fb1",
							version = 2.1,
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
							jobValue = "BLACKMAGE",
							name = "BLM only",
							uuid = "2d6e4995-e695-0010-bf86-a1a38700e891",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local T=_G.UWU_BLM_TemporaryState\nreturn T~=nil and T.gaols==true",
							name = "Owned gaol blacklist",
							uuid = "f823121b-7499-b941-a63a-c4f9a7bd5a4c",
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
							uuid = "08697279-f092-dd93-8ae0-ae88b1b7b996",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				mechanicTime = 666,
				name = "[BLM UWU] Triple-gaol blacklist deadline",
				timeRange = true,
				timelineIndex = 90,
				timerStartOffset = -2,
				uuid = "a4e4d8a7-c846-208f-b0de-803916bcc60c",
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
				name = "BLM AutoSim",
				uuid = "cc451f02-6713-97bd-bd92-de1859b03f0f",
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
							actionLua = "local S=data.uwuBLMAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal observed=TensorCore.hasBuff(Player.id,292)\nlocal own=S.gaolEntityID and TensorCore.mGetEntity(S.gaolEntityID)\nlocal entityTrapped=own and own.alive and own.targetable and own.hp.current>0\nif observed or entityTrapped then\n local firstObservation=not S.fettersActive\n S.fettersActive=true\n if not S.dynamic.gaolStun then S.dynamic.gaolStun={\"Stun\",now,now+1,1} end\n if not S.dynamic.gaolMove then S.dynamic.gaolMove={\"CasterDowntime\",now,now+3,1} end\n if firstObservation then\n  S.dynamic.gaolStun[2]=math.min(S.dynamic.gaolStun[2],now)\n  S.dynamic.gaolMove[2]=math.min(S.dynamic.gaolMove[2],now)\n  S.publish()\n end\n if now>=S.dynamic.gaolStun[3]-.5 then\n  S.dynamic.gaolStun[3]=now+1;S.dynamic.gaolMove[3]=now+3\n  S.publish()\n end\nelseif S.fettersActive then\n S.dynamic.gaolStun=nil\n if S.dynamic.gaolMove then S.dynamic.gaolMove[3]=now+2 end\n S.fettersActive=nil;S.gaolCompleted=true\n S.publish();self.used=true\nend",
							conditions = 
							{
								
								{
									"a2b0f496-3f98-4364-8181-5ed7039b83dd",
									true,
								},
								
								{
									"d098dbc0-c99b-42cc-8b44-3cbca5a911d0",
									true,
								},
								
								{
									"a2aa89a8-eb88-a25b-b08b-3b166592c12b",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "62a1f1b8-be7d-ebde-9875-fe2a534fd817",
							version = 2.1,
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
							jobValue = "BLACKMAGE",
							name = "BLM only",
							uuid = "d098dbc0-c99b-42cc-8b44-3cbca5a911d0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuBLMAutoSim\nreturn S~=nil and S.fettersActive==true",
							name = "stunned",
							uuid = "a2aa89a8-eb88-a25b-b08b-3b166592c12b",
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
							uuid = "a2b0f496-3f98-4364-8181-5ed7039b83dd",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				loop = true,
				mechanicTime = 684,
				name = "[BLM UWU] End healer gaol personal stun",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 95,
				timerEndOffset = 25,
				timerStartOffset = -5,
				uuid = "bed43640-d2df-d3b4-853e-d74d9048f78b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.uwuBLMAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal duration=eventArgs.buffDuration\nif type(duration)~=\"number\" or duration<=0 then duration=5.574 end\nS.fettersActive=true\nS.dynamic.gaolStun={\"Stun\",now,now+duration,1}\nS.dynamic.gaolMove={\"CasterDowntime\",now-0.1,now+duration+2,1}\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"ac4edcea-af96-2cd4-8847-19a1dc8bfed8",
									true,
								},
								
								{
									"2953f9b0-d907-8aa7-bb38-606d6ae09a1c",
									true,
								},
								
								{
									"6c9ff0ef-370f-ef2b-8104-5ca3ef4a4958",
									true,
								},
								
								{
									"f92d2b05-c3b2-e915-a409-da088e9234ea",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "571ca722-c6db-57ef-a806-e925d7851570",
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
							uuid = "ac4edcea-af96-2cd4-8847-19a1dc8bfed8",
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
							uuid = "2953f9b0-d907-8aa7-bb38-606d6ae09a1c",
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
							uuid = "6c9ff0ef-370f-ef2b-8104-5ca3ef4a4958",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityID==Player.id and eventArgs.buffID==292 and data.uwuBLMAutoSim~=nil",
							dequeueIfLuaFalse = true,
							name = "self fetters",
							uuid = "f92d2b05-c3b2-e915-a409-da088e9234ea",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 8,
				loop = true,
				mechanicTime = 684,
				name = "[BLM UWU] Observe healer gaol personal stun",
				timeRange = true,
				timelineIndex = 95,
				timerEndOffset = 25,
				timerStartOffset = -5,
				uuid = "687343c9-7887-69fc-9f35-e40d98922634",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "BLM AutoSim",
				name = "Targeting",
				uuid = "19bf0ee3-b8fd-5242-a34d-cdec6b240014",
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
									"69fbf354-fd74-3d65-a1e5-65a156d3bf46",
									true,
								},
								
								{
									"d31e7e61-ca34-f294-96e1-73233a894fb3",
									true,
								},
								
								{
									"16b1fc8c-db89-db87-b8f7-de601471e725",
									true,
								},
								
								{
									"ccdda4f1-62b6-b81e-ae33-c912387ca376",
									true,
								},
								
								{
									"f6a8966d-f0e9-3a73-a407-73780bbc1ef3",
									true,
								},
							},
							name = "Target newly targetable gaol",
							setTarget = true,
							targetType = "Event Entity",
							uuid = "4f3a3fb4-595e-73d0-8a42-d46fe7843b79",
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
							uuid = "16b1fc8c-db89-db87-b8f7-de601471e725",
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
							uuid = "ccdda4f1-62b6-b81e-ae33-c912387ca376",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local Roster = AnyoneCore.Roster\nif not Roster or not Roster.current() then return false end\nlocal slot = Roster.mySlot()\nif not slot then return false end\nreturn slot == \"H1\" or slot == \"H2\" or slot == \"M1\" or slot == \"M2\" or slot == \"R1\" or slot == \"R2\"",
							name = "Roster: DPS/healers",
							uuid = "f6a8966d-f0e9-3a73-a407-73780bbc1ef3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "d31e7e61-ca34-f294-96e1-73233a894fb3",
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
							uuid = "69fbf354-fd74-3d65-a1e5-65a156d3bf46",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim/Targeting",
				eventType = 26,
				mechanicTime = 684,
				name = "[BLM UWU] [Target][Titan] Granite Gaol - Non-Tanks",
				timeRange = true,
				timelineIndex = 95,
				timerEndOffset = 13,
				timerStartOffset = 3,
				uuid = "70185f3d-db42-526a-bc8e-5bb486dd6e2b",
				version = 2,
			},
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
									"6e799f92-0629-333d-9243-9d21e628bec0",
									true,
								},
								
								{
									"251f84e1-fd09-9063-9d12-59cb4e801a8e",
									true,
								},
								
								{
									"2cb11c8f-ab48-9039-bf78-e33d1f023ed8",
									true,
								},
								
								{
									"cf276701-59c1-65b5-a933-993cd9bbe256",
									true,
								},
								
								{
									"119df58b-6e90-65e1-abee-e98a5f158e4c",
									true,
								},
							},
							name = "Target next Granite Gaol",
							setTarget = true,
							targetType = "Detection Target",
							uuid = "bdcabef7-8bec-76c1-867f-19c25c735770",
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
									"6e799f92-0629-333d-9243-9d21e628bec0",
									true,
								},
								
								{
									"251f84e1-fd09-9063-9d12-59cb4e801a8e",
									true,
								},
								
								{
									"2cb11c8f-ab48-9039-bf78-e33d1f023ed8",
									true,
								},
								
								{
									"cf276701-59c1-65b5-a933-993cd9bbe256",
									true,
								},
								
								{
									"119df58b-6e90-65e1-abee-e98a5f158e4c",
									false,
								},
							},
							name = "Restore Titan target",
							setTarget = true,
							targetContentID = 1801,
							targetType = "ContentID",
							uuid = "ba07b2f8-44c9-e956-b97e-98210092f11c",
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
							uuid = "251f84e1-fd09-9063-9d12-59cb4e801a8e",
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
							uuid = "2cb11c8f-ab48-9039-bf78-e33d1f023ed8",
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
							uuid = "cf276701-59c1-65b5-a933-993cd9bbe256",
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
							uuid = "119df58b-6e90-65e1-abee-e98a5f158e4c",
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
							uuid = "6e799f92-0629-333d-9243-9d21e628bec0",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim/Targeting",
				eventType = 26,
				loop = true,
				mechanicTime = 684,
				name = "[BLM UWU] [Target] Healer Gaol - Advance",
				timeRange = true,
				timelineIndex = 95,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "5d73c5a6-05f7-f951-b606-06dd401478bf",
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
				name = "BLM AutoSim",
				uuid = "57c8621b-44c9-fd84-a9bc-7babc2e8f441",
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
							actionLua = "local S=data.uwuBLMAutoSim\nS.resync(\"p3end\",TensorCore.API.TensorACR.getAutoSimTime())\nself.used=true",
							conditions = 
							{
								
								{
									"e6683e5c-ecc4-064d-be00-291ecae10efe",
									true,
								},
								
								{
									"840536cf-fec5-3ea7-b572-d266e11c634d",
									true,
								},
								
								{
									"5f575931-a97f-ac93-b046-17b083d8ca21",
									true,
								},
								
								{
									"11d81a3e-8fe5-205e-b560-d1f7b3db1e37",
									true,
								},
								
								{
									"5c6de080-d0ac-6f1f-95c6-52d29897700e",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "013a1268-77df-0f32-b5a2-f11e4510d9ca",
							version = 2.1,
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
							uuid = "e6683e5c-ecc4-064d-be00-291ecae10efe",
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
							uuid = "840536cf-fec5-3ea7-b572-d266e11c634d",
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
							uuid = "5f575931-a97f-ac93-b046-17b083d8ca21",
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
							uuid = "11d81a3e-8fe5-205e-b560-d1f7b3db1e37",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuBLMAutoSim\nreturn S~=nil and S.observed.p3end==nil",
							name = "anchor pending",
							uuid = "5c6de080-d0ac-6f1f-95c6-52d29897700e",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 26,
				loop = true,
				mechanicTime = 768,
				name = "[BLM UWU] Resync p3end",
				timeRange = true,
				timelineIndex = 113,
				timerEndOffset = 30,
				timerStartOffset = -65,
				uuid = "2e7c26a4-14f9-8b8f-9b8c-bf1abf07e70f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local T=_G.UWU_BLM_TemporaryState or {}\n_G.UWU_BLM_TemporaryState=T\nTensorCore.API.TensorACR.holdActionUntil(3573,Now()+180000)\nT.leyHold=\"Titan\"\nself.used=true",
							conditions = 
							{
								
								{
									"1e7ff432-ef0b-5685-808a-adc3b967a670",
									true,
								},
								
								{
									"a2ca00f3-b20f-85e9-8847-4530b7a107b2",
									true,
								},
								
								{
									"97482115-27f1-0e59-8e32-12188d59d32e",
									true,
								},
								
								{
									"c6ce5aaf-a586-71dd-a10c-2d454cda6360",
									true,
								},
								
								{
									"89480746-3fc9-3dc2-b607-8f10e3c04719",
									true,
								},
							},
							name = "Reserve Ley Lines for next phase",
							uuid = "0287e6c3-426a-5d0f-985e-929ba8c2264f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							comparator = 2,
							conditionType = 3,
							hpValue = 5,
							name = "Titan at most 5%",
							uuid = "c6ce5aaf-a586-71dd-a10c-2d454cda6360",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuBLMAutoSim\nreturn S~=nil and S.observed.p3end==nil",
							name = "Phase not finished",
							uuid = "89480746-3fc9-3dc2-b607-8f10e3c04719",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 8,
							localmapid = 777,
							name = "UWU only",
							uuid = "1e7ff432-ef0b-5685-808a-adc3b967a670",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "BLACKMAGE",
							name = "BLM only",
							uuid = "a2ca00f3-b20f-85e9-8847-4530b7a107b2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 1801,
							name = "Titan target",
							uuid = "97482115-27f1-0e59-8e32-12188d59d32e",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				mechanicTime = 768,
				name = "[BLM UWU] Save Ley Lines at Titan 5%",
				throttleTime = 500,
				timeRange = true,
				timelineIndex = 113,
				timerEndOffset = 30,
				timerStartOffset = -168,
				uuid = "fe2787fa-7b59-c743-ad29-33dc3c2460fd",
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
				name = "BLM AutoSim",
				uuid = "0e0401d1-1205-c2a2-8c2a-4db041b802e5",
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
							actionLua = "local S=data.uwuBLMAutoSim\nS.bits=S.bits or {}\nlocal id=eventArgs.entityID\nif eventArgs.isTargetable then\n S.bits[id]=true;S.resync(\"titan3Back\",TensorCore.API.TensorACR.getAutoSimTime())\nelseif S.bits[id]~=nil then\n S.bits[id]=false\n local count=0\n for _,up in pairs(S.bits) do if up then self.used=true;return end;count=count+1 end\n if count==6 then S.resync(\"magitekBit1\",TensorCore.API.TensorACR.getAutoSimTime()) end\nend\nself.used=true",
							conditions = 
							{
								
								{
									"3f47349d-4390-6860-83fa-5043d53cef8a",
									true,
								},
								
								{
									"02f555d1-6252-64de-b463-c6ea87960dd5",
									true,
								},
								
								{
									"913db292-9297-d54d-836a-5405c41316fa",
									true,
								},
								
								{
									"687d1f9f-3278-dd6e-bc1d-9554fc20534c",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "d99bcd8b-24f5-f5cc-a425-aa0de8e38023",
							version = 2.1,
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
							jobValue = "BLACKMAGE",
							name = "BLM only",
							uuid = "02f555d1-6252-64de-b463-c6ea87960dd5",
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
							uuid = "913db292-9297-d54d-836a-5405c41316fa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.uwuBLMAutoSim~=nil",
							name = "configured",
							uuid = "687d1f9f-3278-dd6e-bc1d-9554fc20534c",
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
							uuid = "3f47349d-4390-6860-83fa-5043d53cef8a",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 26,
				loop = true,
				mechanicTime = 800,
				name = "[BLM UWU] Resync six Magitek Bits",
				timeRange = true,
				timelineIndex = 114,
				timerEndOffset = 25,
				timerStartOffset = -20,
				uuid = "5db9e9e0-0720-18e8-974b-3ec78d647cd9",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "BLM AutoSim",
				name = "Targeting",
				uuid = "9f286d33-35b4-eded-b731-2ffda9a66c94",
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
									"a6213eaf-b5c9-1590-b374-3b459ae79819",
									true,
								},
								
								{
									"d3a681c8-450d-6037-ad6e-65f3444e939b",
									true,
								},
								
								{
									"e718fc55-10a7-3591-8779-6e767f9b8e18",
									true,
								},
								
								{
									"7367b1ca-fc53-ce2c-873a-302c1fda5ea9",
									true,
								},
							},
							name = "Target nearest Magitek Bit",
							setTarget = true,
							targetContentID = 5563,
							targetType = "ContentID",
							uuid = "16daf560-0a84-f74b-b751-1bad91d5c53d",
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
							uuid = "d3a681c8-450d-6037-ad6e-65f3444e939b",
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
							uuid = "e718fc55-10a7-3591-8779-6e767f9b8e18",
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
							uuid = "7367b1ca-fc53-ce2c-873a-302c1fda5ea9",
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
							uuid = "a6213eaf-b5c9-1590-b374-3b459ae79819",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim/Targeting",
				eventType = 26,
				loop = true,
				mechanicTime = 800,
				name = "[BLM UWU] [Target] Magitek Bits",
				timeRange = true,
				timelineIndex = 114,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "13a1c497-4c76-cf45-9bcf-948295a77f5b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "BLM AutoSim",
				name = "P4 Bits",
				uuid = "4604dc80-ff4e-4166-a644-31d6ff3d998d",
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
							actionLua = "local roster=AnyoneCore.Roster\nif not roster or not roster.current() or roster.mySlot()~=\"R2\" then return end\nlocal S=data.uwuBLMAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nS.lbObserved=true;S.lbStarted=now;S.lbCompleted=nil;S.lbCancelled=nil;S.lbCastingSeen=nil\nS.dynamic.meteorLock={\"Stun\",now,now+12.6,1}\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"d3779085-4377-62c6-99aa-87b52d079642",
									true,
								},
								
								{
									"6deb0774-aa45-3bc0-b4d6-501923a3809d",
									true,
								},
								
								{
									"82916ddc-dca3-b91e-8626-630be10ba70b",
									true,
								},
								
								{
									"898ed3d9-a4aa-1e6f-9cc1-e5abeca403ed",
									true,
								},
							},
							name = "Correct personal Meteor stun",
							uuid = "0e40f824-a3d4-b87a-8302-cb1dc3fe7277",
							version = 2.1,
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
							uuid = "d3779085-4377-62c6-99aa-87b52d079642",
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
							uuid = "6deb0774-aa45-3bc0-b4d6-501923a3809d",
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
							name = "Meteor",
							spellIDList = 
							{
								205,
							},
							uuid = "82916ddc-dca3-b91e-8626-630be10ba70b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityID==Player.id and data.uwuBLMAutoSim~=nil",
							dequeueIfLuaFalse = true,
							name = "Personal Meteor",
							uuid = "898ed3d9-a4aa-1e6f-9cc1-e5abeca403ed",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim/P4 Bits",
				eventType = 3,
				loop = true,
				mechanicTime = 800,
				name = "[BLM UWU] Meteor start animation-lock forecast",
				timeRange = true,
				timelineIndex = 114,
				timerEndOffset = 35,
				timerStartOffset = -20,
				uuid = "c7310f9a-9d92-dfcb-9134-74097dd99936",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local roster=AnyoneCore.Roster\nif not roster or not roster.current() or roster.mySlot()~=\"R2\" then return end\nlocal S=data.uwuBLMAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nS.lbObserved=true;S.lbCompleted=true\nS.dynamic.meteorLock={\"Stun\",S.lbStarted or now-4.5,now+8.1,1}\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"f6b92227-46f4-c3df-983b-79006624293c",
									true,
								},
								
								{
									"01b098d1-7e70-b3e7-94a3-0df036ed4f0b",
									true,
								},
								
								{
									"ea4a7c13-9bc6-d67d-943c-b5d0fa2af869",
									true,
								},
								
								{
									"7305e222-74df-1b8b-8a7f-66c2ee957c20",
									true,
								},
							},
							name = "Correct personal Meteor stun",
							uuid = "5f6e010a-c2ca-645a-8248-c356551f641c",
							version = 2.1,
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
							uuid = "f6b92227-46f4-c3df-983b-79006624293c",
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
							uuid = "01b098d1-7e70-b3e7-94a3-0df036ed4f0b",
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
							name = "Meteor",
							spellIDList = 
							{
								205,
							},
							uuid = "ea4a7c13-9bc6-d67d-943c-b5d0fa2af869",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityID==Player.id and data.uwuBLMAutoSim~=nil",
							dequeueIfLuaFalse = true,
							name = "Personal Meteor",
							uuid = "7305e222-74df-1b8b-8a7f-66c2ee957c20",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim/P4 Bits",
				eventType = 2,
				loop = true,
				mechanicTime = 800,
				name = "[BLM UWU] Meteor finish animation-lock forecast",
				timeRange = true,
				timelineIndex = 114,
				timerEndOffset = 35,
				timerStartOffset = -20,
				uuid = "097ae68c-0c6f-8e8d-ab78-9a2bf0fd040a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.uwuBLMAutoSim\nlocal p=TensorCore.mGetPlayer()\nif not p then return end\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal elapsed=now-S.lbStarted\nlocal cast=p.castinginfo\nif cast.castingid==205 or cast.channelingid==205 then\n S.lbCastingSeen=true\n return\nend\n-- Allow queued cast-completion events to arrive before interpreting a stopped cast.\nif elapsed<0.5 then return end\nif elapsed>=4.25 and elapsed<5.25 and p.alive then return end\nif elapsed>=4.25 and p.alive and cast.lastcastid==205 then\n S.lbCompleted=true\n S.dynamic.meteorLock={\"Stun\",S.lbStarted,S.lbStarted+12.6,1}\nelse\n S.lbCancelled=true\n S.dynamic.meteorLock=nil\nend\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"301fcce3-7198-6d1c-a85c-15f6b67602c7",
									true,
								},
								
								{
									"f609e616-5ce9-0812-aa8d-59f17e8578b1",
									true,
								},
								
								{
									"c540cd6c-3a55-bfbe-9da9-794e286dd6fe",
									true,
								},
							},
							name = "Resolve Meteor completion or cancellation",
							uuid = "0fcbb072-1dd0-3344-badf-c55fc608c37a",
							version = 2.1,
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
							uuid = "301fcce3-7198-6d1c-a85c-15f6b67602c7",
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
							uuid = "f609e616-5ce9-0812-aa8d-59f17e8578b1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuBLMAutoSim\nreturn S~=nil and S.lbStarted~=nil and not S.lbCompleted and not S.lbCancelled",
							name = "Personal Meteor pending",
							uuid = "c540cd6c-3a55-bfbe-9da9-794e286dd6fe",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim/P4 Bits",
				loop = true,
				mechanicTime = 800,
				name = "[BLM UWU] Clear cancelled Meteor lock",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 114,
				timerEndOffset = 40,
				timerStartOffset = -20,
				uuid = "85573043-c7e4-e2a8-a825-aa5b6e839d93",
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
				name = "BLM AutoSim",
				uuid = "bed92c46-8273-5791-905c-7a246857f6d2",
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
							actionLua = "local S=data.uwuBLMAutoSim\nS.resync(\"p4end\",TensorCore.API.TensorACR.getAutoSimTime())\nself.used=true",
							conditions = 
							{
								
								{
									"1b200c34-ef6e-bf73-835c-9e30990770d5",
									true,
								},
								
								{
									"1b52da25-9bde-6a64-ac4d-888910d8a8b9",
									true,
								},
								
								{
									"740f9672-0929-8165-ba45-775e4c9766d7",
									true,
								},
								
								{
									"95b4679e-4426-aac2-b2d9-bb89206754a7",
									true,
								},
								
								{
									"db5bcb22-103a-90be-b109-c007fc2f65cb",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "66be3199-47b1-87ee-b539-4fd116b3b244",
							version = 2.1,
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
							uuid = "1b200c34-ef6e-bf73-835c-9e30990770d5",
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
							uuid = "1b52da25-9bde-6a64-ac4d-888910d8a8b9",
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
							uuid = "740f9672-0929-8165-ba45-775e4c9766d7",
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
							uuid = "95b4679e-4426-aac2-b2d9-bb89206754a7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuBLMAutoSim\nreturn S~=nil and S.observed.p4end==nil",
							name = "anchor pending",
							uuid = "db5bcb22-103a-90be-b109-c007fc2f65cb",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 26,
				loop = true,
				mechanicTime = 840,
				name = "[BLM UWU] Resync p4end",
				timeRange = true,
				timelineIndex = 116,
				timerEndOffset = 25,
				timerStartOffset = -15,
				uuid = "eb73f9d5-4e80-9321-a521-87fc1d073557",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "BLM AutoSim",
				name = "Targeting",
				uuid = "f5b39593-e680-624d-a87e-165d1db944fb",
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
									"ca39464a-c04a-3077-96a5-fa0f23fa13f1",
									true,
								},
								
								{
									"f913211b-5d54-e321-8029-f4046ccb7115",
									true,
								},
								
								{
									"ce591b5f-5fe0-2031-8db7-15ba7b996337",
									true,
								},
							},
							name = "Target Lahabrea",
							setTarget = true,
							targetContentID = 2143,
							targetType = "ContentID",
							uuid = "df71be55-2fcd-b70e-af19-10e1bc2bb874",
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
							uuid = "ce591b5f-5fe0-2031-8db7-15ba7b996337",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "f913211b-5d54-e321-8029-f4046ccb7115",
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
							uuid = "ca39464a-c04a-3077-96a5-fa0f23fa13f1",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim/Targeting",
				mechanicTime = 840,
				name = "[BLM UWU] [Target] Lahabrea on Targetable",
				timeRange = true,
				timelineIndex = 116,
				timerEndOffset = -10,
				timerStartOffset = -19,
				uuid = "f9547a8a-8a00-c15e-9929-67dce0cf6365",
				version = 2,
			},
		},
	},
	[117] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "BLM AutoSim",
				uuid = "804d61a9-59de-3f1f-a27b-8ac5a0e7a578",
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
							actionLua = "local T=_G.UWU_BLM_TemporaryState\nif T and T.leyHold then\n TensorCore.API.TensorACR.holdActionUntil(3573,Now())\n T.leyHold=nil\nend\nself.used=true",
							conditions = 
							{
								
								{
									"cce17e51-29eb-eba8-b67d-de94a371484a",
									true,
								},
								
								{
									"805d79f1-32f8-4e0b-9d22-e272d37971e8",
									true,
								},
								
								{
									"47f477bd-7a3c-e3fa-946c-c1c7358c823b",
									true,
								},
								
								{
									"3fa2bcaa-d882-d82b-b32a-cea8f2b8f91a",
									true,
								},
								
								{
									"ce756dbc-66cc-cd04-9014-bd87fa6a2562",
									true,
								},
							},
							name = "Release own Ley Lines hold",
							uuid = "9b66b2f8-a198-497d-adf4-4432c7360145",
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
							uuid = "3fa2bcaa-d882-d82b-b32a-cea8f2b8f91a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local T=_G.UWU_BLM_TemporaryState\nreturn T~=nil and T.leyHold~=nil",
							name = "Own Ley Lines reservation",
							uuid = "ce756dbc-66cc-cd04-9014-bd87fa6a2562",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 8,
							localmapid = 777,
							name = "UWU only",
							uuid = "cce17e51-29eb-eba8-b67d-de94a371484a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "BLACKMAGE",
							name = "BLM only",
							uuid = "805d79f1-32f8-4e0b-9d22-e272d37971e8",
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
							name = "Ultima Weapon",
							uuid = "47f477bd-7a3c-e3fa-946c-c1c7358c823b",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 26,
				mechanicTime = 848,
				name = "[BLM UWU] Release Ley Lines at Ultima",
				timeRange = true,
				timelineIndex = 117,
				timerEndOffset = 180,
				timerStartOffset = -20,
				uuid = "0e63822e-2e38-04ac-b450-91dd0023d765",
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
				name = "BLM AutoSim",
				uuid = "702fa37f-c277-7c9e-8ded-c1d2cb68f825",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "BLM AutoSim",
				name = "Mitigation",
				uuid = "64c4fea0-7c38-c51c-8e88-780641999c59",
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
									"e61498af-b23e-24a1-83ae-17eca6ad7581",
									true,
								},
								
								{
									"aa1f2237-175d-d20c-806a-a3e0d9727a70",
									true,
								},
								
								{
									"2e1bae76-2e43-786d-ac15-37acd0c49112",
									true,
								},
							},
							gVar = "ACR_TensorNuke4_Hotbar_Manaward",
							uuid = "e710a26e-5f26-bc69-9f38-bdc49a54cc6a",
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
							localmapid = 777,
							name = "UWU only",
							uuid = "e61498af-b23e-24a1-83ae-17eca6ad7581",
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
							uuid = "aa1f2237-175d-d20c-806a-a3e0d9727a70",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local C=_G.UWU_BLM_AutoSimConfig\nreturn C==nil or C.manaward==true",
							name = "option enabled",
							uuid = "2e1bae76-2e43-786d-ac15-37acd0c49112",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim/Mitigation",
				mechanicTime = 1000,
				name = "[BLM UWU] Manaward Ultima opening",
				timeRange = true,
				timelineIndex = 118,
				timerEndOffset = 2,
				uuid = "2cd1e898-ef06-3c86-a167-97e78cf14712",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "BLM AutoSim",
				name = "Targeting",
				uuid = "32225081-305f-566e-8db7-9159f06b96df",
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
									"79eba2e6-fcb3-c67a-bcc3-e27d1dd7ef84",
									true,
								},
								
								{
									"9c10c039-c70d-ce62-8c66-98d2673e9140",
									true,
								},
								
								{
									"ab0a9c6b-8955-7d9c-ad9c-86a3d0cd9d7a",
									true,
								},
								
								{
									"3de2361b-7617-75f3-8c02-65a3797e237d",
									true,
								},
							},
							endIfUsed = true,
							name = "Target - Ultima",
							setTarget = true,
							targetContentID = 2137,
							targetType = "ContentID",
							uuid = "a3ca0550-b8f2-410b-8d70-ea951bf9f64d",
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
							uuid = "9c10c039-c70d-ce62-8c66-98d2673e9140",
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
							uuid = "3de2361b-7617-75f3-8c02-65a3797e237d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local t=TensorCore.mGetTarget()\nreturn t==nil or not t.alive or not t.targetable",
							name = "No living hostile target",
							uuid = "ab0a9c6b-8955-7d9c-ad9c-86a3d0cd9d7a",
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
							uuid = "79eba2e6-fcb3-c67a-bcc3-e27d1dd7ef84",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim/Targeting",
				loop = true,
				mechanicTime = 1000,
				name = "[BLM UWU] [Target] Ultima Reacquire",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 118,
				timerEndOffset = 650,
				uuid = "4420d42e-d366-712e-a5ee-5c0a245416d9",
				version = 2,
			},
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
									"b79e4c13-cb1c-8773-b856-9aae84531f44",
									true,
								},
								
								{
									"2a1e7bee-9b49-1fde-9b93-e144c3982a02",
									true,
								},
								
								{
									"d278b874-baac-959e-b2f1-cbcafeca733e",
									true,
								},
								
								{
									"cd383311-f28d-7f57-9707-fb6d3c9f7ec6",
									true,
								},
							},
							name = "Target Ultima",
							setTarget = true,
							targetType = "Event Entity",
							uuid = "d78cb6a2-8845-d3d4-97e1-cdf8038fa623",
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
							uuid = "2a1e7bee-9b49-1fde-9b93-e144c3982a02",
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
							uuid = "d278b874-baac-959e-b2f1-cbcafeca733e",
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
							uuid = "cd383311-f28d-7f57-9707-fb6d3c9f7ec6",
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
							uuid = "b79e4c13-cb1c-8773-b856-9aae84531f44",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim/Targeting",
				eventType = 26,
				loop = true,
				mechanicTime = 1000,
				name = "[BLM UWU] [Target] Ultima - Acquire",
				timeRange = true,
				timelineIndex = 118,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "5a0eadf4-5d99-80a0-8017-6d8ea3319c3f",
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
				name = "BLM AutoSim",
				uuid = "d169b5e2-8bd2-88df-9cc8-ddc5e38ba2ac",
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
							actionLua = "local S=data.uwuBLMAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal observed=TensorCore.hasBuff(Player.id,292)\nlocal own=S.gaolEntityID and TensorCore.mGetEntity(S.gaolEntityID)\nlocal entityTrapped=own and own.alive and own.targetable and own.hp.current>0\nif observed or entityTrapped then\n local firstObservation=not S.fettersActive\n S.fettersActive=true\n if not S.dynamic.gaolStun then S.dynamic.gaolStun={\"Stun\",now,now+1,1} end\n if not S.dynamic.gaolMove then S.dynamic.gaolMove={\"CasterDowntime\",now,now+3,1} end\n if firstObservation then\n  S.dynamic.gaolStun[2]=math.min(S.dynamic.gaolStun[2],now)\n  S.dynamic.gaolMove[2]=math.min(S.dynamic.gaolMove[2],now)\n  S.publish()\n end\n if now>=S.dynamic.gaolStun[3]-.5 then\n  S.dynamic.gaolStun[3]=now+1;S.dynamic.gaolMove[3]=now+3\n  S.publish()\n end\nelseif S.fettersActive then\n S.dynamic.gaolStun=nil\n if S.dynamic.gaolMove then S.dynamic.gaolMove[3]=now+2 end\n S.fettersActive=nil;S.gaolCompleted=true\n S.publish();self.used=true\nend",
							conditions = 
							{
								
								{
									"6aeaa321-c317-f50d-bbbd-f6b1c4698190",
									true,
								},
								
								{
									"fd81aec1-f7ac-3bf0-b76f-ba1b00ec806e",
									true,
								},
								
								{
									"3ab1b125-06e5-3edb-8108-9fe0f59e7f8c",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "d469f660-1e48-7cae-a10d-cf9102a44528",
							version = 2.1,
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
							jobValue = "BLACKMAGE",
							name = "BLM only",
							uuid = "fd81aec1-f7ac-3bf0-b76f-ba1b00ec806e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuBLMAutoSim\nreturn S~=nil and S.fettersActive==true",
							name = "stunned",
							uuid = "3ab1b125-06e5-3edb-8108-9fe0f59e7f8c",
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
							uuid = "6aeaa321-c317-f50d-bbbd-f6b1c4698190",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				loop = true,
				mechanicTime = 1206,
				name = "[BLM UWU] End Suppression gaol personal stun",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 190,
				timerEndOffset = 35,
				timerStartOffset = -5,
				uuid = "bb2e6035-31c4-d2c1-a20b-8121db555ba8",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.uwuBLMAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal duration=eventArgs.buffDuration\nif type(duration)~=\"number\" or duration<=0 then duration=5.574 end\nS.fettersActive=true\nS.dynamic.gaolStun={\"Stun\",now,now+duration,1}\nS.dynamic.gaolMove={\"CasterDowntime\",now-0.1,now+duration+2,1}\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"c476aea8-e824-ea7d-8723-eca17b1c1026",
									true,
								},
								
								{
									"82154d78-c985-4969-8c0a-ef83a82f5f24",
									true,
								},
								
								{
									"88114359-c0bb-4cce-8f9b-73d911ca055e",
									true,
								},
								
								{
									"df4ffc9c-5036-33e6-8659-7984132b328f",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "baab6087-c459-fca7-8f3e-3f701c14b5d9",
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
							uuid = "c476aea8-e824-ea7d-8723-eca17b1c1026",
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
							uuid = "82154d78-c985-4969-8c0a-ef83a82f5f24",
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
							uuid = "88114359-c0bb-4cce-8f9b-73d911ca055e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityID==Player.id and eventArgs.buffID==292 and data.uwuBLMAutoSim~=nil",
							dequeueIfLuaFalse = true,
							name = "self fetters",
							uuid = "df4ffc9c-5036-33e6-8659-7984132b328f",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 8,
				loop = true,
				mechanicTime = 1206,
				name = "[BLM UWU] Observe Suppression gaol personal stun",
				timeRange = true,
				timelineIndex = 190,
				timerEndOffset = 35,
				timerStartOffset = -5,
				uuid = "646b9b34-36fe-ba07-a9da-a46662348f27",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "BLM AutoSim",
				name = "Targeting",
				uuid = "9b05408a-6055-db30-a64f-bf4f9ee4b360",
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
									"a7309300-d228-0eb9-a013-9872382775cb",
									true,
								},
								
								{
									"71348faf-7f17-619c-8da6-a9b47c297361",
									true,
								},
								
								{
									"6aec5a63-4f4e-e510-9bc3-cc01fda720ed",
									true,
								},
								
								{
									"5d953661-808a-1298-9143-e02a2c872ba4",
									true,
								},
							},
							name = "Target nearest Granite Gaol",
							setTarget = true,
							targetContentID = 1804,
							targetType = "ContentID",
							uuid = "52a69b86-2dab-5a7b-bade-b8451897d18a",
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
							uuid = "71348faf-7f17-619c-8da6-a9b47c297361",
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
							uuid = "5d953661-808a-1298-9143-e02a2c872ba4",
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
							uuid = "6aec5a63-4f4e-e510-9bc3-cc01fda720ed",
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
							uuid = "a7309300-d228-0eb9-a013-9872382775cb",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim/Targeting",
				eventType = 26,
				loop = true,
				mechanicTime = 1206,
				name = "[BLM UWU] [Target] Suppression Gaol - Acquire",
				timeRange = true,
				timelineIndex = 190,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "d994f8fa-07bb-3851-9b0b-0a87a7ff91a1",
				version = 2,
			},
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
									"ed6289f5-0513-716a-b90c-6a18db00135b",
									true,
								},
								
								{
									"2284cc1e-52db-e83c-aeb1-3078c7d1fc60",
									true,
								},
								
								{
									"4589da47-9882-771a-85e0-2030fa287726",
									true,
								},
								
								{
									"5ecfde3b-fbe3-e42e-820c-1684aa9c4d32",
									true,
								},
								
								{
									"5e02cde6-e31d-e982-b524-ad040f69c5d5",
									true,
								},
							},
							name = "Target next Granite Gaol",
							setTarget = true,
							targetType = "Detection Target",
							uuid = "16ca592e-0762-1330-85a6-b36249d906d9",
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
									"ed6289f5-0513-716a-b90c-6a18db00135b",
									true,
								},
								
								{
									"2284cc1e-52db-e83c-aeb1-3078c7d1fc60",
									true,
								},
								
								{
									"4589da47-9882-771a-85e0-2030fa287726",
									true,
								},
								
								{
									"5ecfde3b-fbe3-e42e-820c-1684aa9c4d32",
									true,
								},
								
								{
									"5e02cde6-e31d-e982-b524-ad040f69c5d5",
									false,
								},
							},
							name = "Restore Ultima target",
							setTarget = true,
							targetContentID = 2137,
							targetType = "ContentID",
							uuid = "7184447d-446c-4399-8ea7-34f0a83dce00",
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
							uuid = "2284cc1e-52db-e83c-aeb1-3078c7d1fc60",
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
							uuid = "4589da47-9882-771a-85e0-2030fa287726",
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
							uuid = "5ecfde3b-fbe3-e42e-820c-1684aa9c4d32",
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
							uuid = "5e02cde6-e31d-e982-b524-ad040f69c5d5",
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
							uuid = "ed6289f5-0513-716a-b90c-6a18db00135b",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim/Targeting",
				eventType = 26,
				loop = true,
				mechanicTime = 1206,
				name = "[BLM UWU] [Target] Suppression Gaol - Advance",
				timeRange = true,
				timelineIndex = 190,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "aa7df587-d5bf-fb95-b10c-d28d16fe4515",
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
				name = "BLM AutoSim",
				uuid = "937ad5ea-71d3-f94c-b862-1e5a65428f67",
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
							actionLua = "local S=data.uwuBLMAutoSim\nS.resync(\"graniteGaol1\",TensorCore.API.TensorACR.getAutoSimTime())\nself.used=true",
							conditions = 
							{
								
								{
									"c419709c-3014-73aa-904a-b3a90bde9639",
									true,
								},
								
								{
									"11b53600-40d5-7c24-a2f0-31ad32d389b8",
									true,
								},
								
								{
									"29c5ff96-7573-7d7b-984f-8a552e083158",
									true,
								},
								
								{
									"572454fb-b24c-d451-9888-79a36d4bba83",
									true,
								},
								
								{
									"0b91dc3c-495f-4029-97cc-fd64da0b83e2",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "34c7cef0-dca6-5f3e-9155-6c05b10a80f8",
							version = 2.1,
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
							uuid = "c419709c-3014-73aa-904a-b3a90bde9639",
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
							uuid = "11b53600-40d5-7c24-a2f0-31ad32d389b8",
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
							uuid = "29c5ff96-7573-7d7b-984f-8a552e083158",
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
							uuid = "572454fb-b24c-d451-9888-79a36d4bba83",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuBLMAutoSim\nreturn S~=nil and S.observed.graniteGaol1==nil",
							name = "anchor pending",
							uuid = "0b91dc3c-495f-4029-97cc-fd64da0b83e2",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 26,
				loop = true,
				mechanicTime = 1223,
				name = "[BLM UWU] Resync graniteGaol1",
				timeRange = true,
				timelineIndex = 199,
				timerEndOffset = 20,
				timerStartOffset = -13,
				uuid = "cda67d87-ab44-6ee9-ae19-21490d76c02b",
				version = 2,
			},
		},
	},
	[211] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "BLM AutoSim",
				uuid = "cf5c17c9-c396-128a-a191-36da616ca98c",
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
							actionLua = "local S=data.uwuBLMAutoSim\nlocal kinds={[11475]=\"Garuda\",[11476]=\"Ifrit\",[11477]=\"Titan\"}\nS.rouletteForecast(kinds[eventArgs.spellID],TensorCore.API.TensorACR.getAutoSimTime())\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"d1bd58da-29a3-5fd5-9de2-32946a22b57c",
									true,
								},
								
								{
									"7a0199ee-0982-2227-b5e6-b13edf9e2d86",
									true,
								},
								
								{
									"c5957bd2-8cbf-8d39-88cf-fc4b117b3337",
									true,
								},
								
								{
									"848de1c9-dc5a-3a9f-9040-69f93cbc5cd4",
									true,
								},
								
								{
									"70cf063c-a0e9-5a1b-9cb1-c7a32e187915",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "bf1286dc-eb06-8e5f-9d43-9575f27b1d55",
							version = 2.1,
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
							uuid = "d1bd58da-29a3-5fd5-9de2-32946a22b57c",
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
							uuid = "7a0199ee-0982-2227-b5e6-b13edf9e2d86",
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
							name = "Content 2137",
							uuid = "c5957bd2-8cbf-8d39-88cf-fc4b117b3337",
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
								11475,
								11476,
								11477,
							},
							uuid = "848de1c9-dc5a-3a9f-9040-69f93cbc5cd4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuBLMAutoSim\nreturn S~=nil and S.cfg.roulette and TensorCore.API.TensorACR.getAutoSimTime()>S.time(\"p4end\")+260 and (not S.rouletteTimes or #S.rouletteTimes<3)",
							name = "final sequence",
							uuid = "70cf063c-a0e9-5a1b-9cb1-c7a32e187915",
							version = 3,
						},
					},
				},
				displayPath = "BLM AutoSim",
				eventType = 3,
				loop = true,
				mechanicTime = 1307,
				name = "[BLM UWU] Adapt final primal movement",
				timeRange = true,
				timelineIndex = 211,
				timerEndOffset = 180,
				timerStartOffset = -30,
				uuid = "d881dd0e-4a95-0a51-8e35-f8b174f0fb2c",
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
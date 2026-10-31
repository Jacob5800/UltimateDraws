local tbl = 
{
	[2] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "RPR AutoSim",
				uuid = "409653e0-eb4c-876a-886c-766a2284bce4",
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
							actionLua = "local T=_G.UWU_RPR_TemporaryState\nif T and T.gaolPriorityOptions then\n for k,v in pairs(T.gaolPriorityOptions) do _G[k]=v end\n T.gaolPriorityOptions=nil\nend\nlocal T=_G.UWU_RPR_TemporaryState\nif T and T.gaols then\n TensorCore.API.TensorACR.deleteAOEBlacklistEntry(1804)\n TensorCore.API.TensorACR.deleteBlacklistEntry(1804)\n TensorCore.API.TensorACR.saveDotBlacklist()\nend\n_G.UWU_RPR_TemporaryState=nil\nlocal N=data.uwuRPROwnNails\nif N and N.options then for k,v in pairs(N.options) do _G[k]=v end;N.options=nil end\ndata.uwuRPRAutoSim=nil\nself.used=true",
							conditions = 
							{
								
								{
									"65f00beb-cbfd-ae63-a6be-ff9ebf8c3271",
									true,
								},
								
								{
									"be2b59bf-0dcb-6a02-a49a-93ce9b004eab",
									true,
								},
								
								{
									"c41daaf9-ea2a-0882-a2d2-faf6c0d275e1",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "b8fc39f9-f80b-7894-a8f7-4e43a83afe27",
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
							conditionLua = "return _G.UWU_RPR_TemporaryState~=nil",
							name = "owned state",
							uuid = "c41daaf9-ea2a-0882-a2d2-faf6c0d275e1",
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
							uuid = "65f00beb-cbfd-ae63-a6be-ff9ebf8c3271",
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
							name = "RPR only",
							uuid = "be2b59bf-0dcb-6a02-a49a-93ce9b004eab",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				eventType = 17,
				loop = true,
				mechanicTime = 9,
				name = "[RPR UWU] Restore temporary settings CountdownCancel",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -80,
				uuid = "0c98c718-382a-fe26-bdad-fb5b4df77748",
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
							actionLua = "local T=_G.UWU_RPR_TemporaryState\nif T and T.gaolPriorityOptions then\n for k,v in pairs(T.gaolPriorityOptions) do _G[k]=v end\n T.gaolPriorityOptions=nil\nend\nlocal T=_G.UWU_RPR_TemporaryState\nif T and T.gaols then\n TensorCore.API.TensorACR.deleteAOEBlacklistEntry(1804)\n TensorCore.API.TensorACR.deleteBlacklistEntry(1804)\n TensorCore.API.TensorACR.saveDotBlacklist()\nend\n_G.UWU_RPR_TemporaryState=nil\nlocal N=data.uwuRPROwnNails\nif N and N.options then for k,v in pairs(N.options) do _G[k]=v end;N.options=nil end\ndata.uwuRPRAutoSim=nil\nself.used=true",
							conditions = 
							{
								
								{
									"42901329-fc41-f82f-8f72-01510d209600",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "3c379a4f-8d9a-b8a5-b418-9d843c42cdd4",
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
							conditionLua = "return _G.UWU_RPR_TemporaryState~=nil",
							name = "owned state",
							uuid = "42901329-fc41-f82f-8f72-01510d209600",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				eventType = 11,
				loop = true,
				mechanicTime = 9,
				name = "[RPR UWU] Restore temporary settings MapChange",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -80,
				uuid = "15351950-5066-e859-b07d-76db0f2d5be9",
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
							actionLua = "local C=_G.UWU_RPR_AutoSimConfig\nif not C then C={lbWho=2,poolLaha=true,priorityGaols=true,raidBuffs=false,buffGain=17};_G.UWU_RPR_AutoSimConfig=C end\n-- Burst weight update: preserve forecast enablement and other options.\nif not C.burstWeight20261029 then C.buffGain=17;C.burstWeight20261029=true end\nlocal visible=GUI:Begin('UWU LPDU Settings',true)\nif visible and GUI:TreeNode('RPR AutoSim') then\n GUI:Text('Forecast options apply next pull. Session settings.')\n local function check(label,key,help)\n C[key]=GUI:Checkbox(label,C[key])\n if GUI:IsItemHovered() then GUI:SetTooltip(help) end\n end\n check('Pool damage cooldowns on Lahabrea','poolLaha','Artificial 0.01 planning weight. Continue normal damage; this is not a real vulnerability.')\n check('Prioritize healer / Suppression gaols','priorityGaols','Artificial 1.10 planning weight for the first five seconds.')\n check('Forecast party raid buffs','raidBuffs','Optional estimated party burst. Disabled by default for this RPR adaptation; actual buffs remain automatic.')\n C.buffGain=GUI:SliderFloat('Forecast damage gain (%)',C.buffGain,0,40,'%.2f',1)\n if GUI:IsItemHovered() then GUI:SetTooltip('Adjust for the actual party composition. 16.87 is the old reference estimate, not a universal gain.') end\n if GUI:TreeNode('P4 - Ultima / Lahabrea') then\n C.lbWho=GUI:Combo('Who LBs',C.lbWho or 2,{'Me','Other melee'})\n if GUI:IsItemHovered() then GUI:SetTooltip('Me predicts an 8.2s melee LB3 action lock at Lahabrea for roster M1/M2. Personal LB events correct timing, and cancellation clears the lock. This setting does not force an LB cast.') end\n GUI:TreePop()\n end\n GUI:Text('Melee forecasts include Titan return and personal gaol movement.')\n GUI:Text('Built-in targeting. No forced Ingress/Egress. Marks blocked on nails/plumes/triple gaols.')\n GUI:TreePop()\nend\nGUI:End()",
							conditions = 
							{
								
								{
									"332143e4-0a9f-7e80-9b7b-162f7908e051",
									true,
								},
								
								{
									"5c024219-764c-b380-90e7-0c2fbd4de697",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "63dd28ca-a6b8-2a3a-9aae-c23346d611ef",
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
							jobValue = "REAPER",
							name = "RPR only",
							uuid = "5c024219-764c-b380-90e7-0c2fbd4de697",
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
							uuid = "332143e4-0a9f-7e80-9b7b-162f7908e051",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				eventType = 13,
				loop = true,
				mechanicTime = 9,
				name = "[RPR UWU] AutoSim options",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -80,
				uuid = "ba62ca44-abb5-c7ba-98e6-405e73b26d4b",
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
							actionLua = "-- Spiny Plume: applies regardless of model scale, including the enlarged plume.\nlocal spiny=TensorCore.API.TensorACR.addBlacklistEntry(2091,\"UWU Spiny Plume\")\nif not spiny.enabled or spiny.allowIfTarget or spiny.allowSmartDoT then\n spiny.enabled=true;spiny.allowIfTarget=false;spiny.allowSmartDoT=false\n TensorCore.API.TensorACR.saveDotBlacklist()\nend\nlocal feather=TensorCore.API.TensorACR.addBlacklistEntry(1648,\"UWU Satin Plume\")\nif not feather.enabled or feather.allowIfTarget or feather.allowSmartDoT then\n feather.enabled=true;feather.allowIfTarget=false;feather.allowSmartDoT=false\n TensorCore.API.TensorACR.saveDotBlacklist()\nend\nlocal A=TensorCore.API.TensorACR\nlocal nail=A.addBlacklistEntry(1186,\"UWU Infernal Nail\")\nif not nail.enabled or nail.allowIfTarget or nail.allowSmartDoT then\n nail.enabled=true;nail.allowIfTarget=false;nail.allowSmartDoT=false\n A.saveDotBlacklist()\nend\n-- Generated encounter inputs are inserted by the MCP authoring script.\n-- Five EU BLM clears supplied the original the phase-relative medians. Native events resync them.\nlocal A=TensorCore.API.TensorACR\n_G.UWU_RPR_TemporaryState=_G.UWU_RPR_TemporaryState or {}\nlocal cfg=_G.UWU_RPR_AutoSimConfig\nif not cfg then\n cfg={lbWho=2,poolLaha=true,priorityGaols=true,roulette=false,raidBuffs=false,buffGain=17}\n _G.UWU_RPR_AutoSimConfig=cfg\nend\n-- Burst weight update: preserve forecast enablement and other options.\nif not cfg.burstWeight20261029 then cfg.buffGain=17;cfg.burstWeight20261029=true end\nlocal S={[\"anchors\"]={[\"p1end\"]={[\"after\"]=\"pull\",[\"offset\"]=134.629,[\"spread\"]=10},[\"ifrit1\"]={[\"after\"]=\"p1end\",[\"offset\"]=72.217,[\"spread\"]=0.75},[\"p2end\"]={[\"after\"]=\"ifrit1\",[\"offset\"]=38.162,[\"spread\"]=10},[\"ifrit2Back\"]={[\"after\"]=\"p2end\",[\"offset\"]=7.422,[\"spread\"]=0.75},[\"titan1\"]={[\"after\"]=\"ifrit2Back\",[\"offset\"]=22.062,[\"spread\"]=0.75},[\"p3end\"]={[\"after\"]=\"titan1\",[\"offset\"]=97.279,[\"spread\"]=15},[\"titan3Back\"]={[\"after\"]=\"p3end\",[\"offset\"]=12.283,[\"spread\"]=0.75},[\"magitekBit1\"]={[\"after\"]=\"titan3Back\",[\"offset\"]=7.018,[\"spread\"]=0.75},[\"p4end\"]={[\"after\"]=\"magitekBit1\",[\"offset\"]=25.99,[\"spread\"]=0.75},[\"graniteGaol1\"]={[\"after\"]=\"p4end\",[\"offset\"]=233.053,[\"spread\"]=0.75}},[\"kill\"]={[\"after\"]=\"graniteGaol1\",[\"offset\"]=134.648,[\"spread\"]=7.881},[\"phases\"]={{\"FullDowntime\",\"pull\",70.532,\"pull\",74.238,1},{\"FullDowntime\",\"p1end\",0.1,\"p1end\",13.303,1},{\"FullDowntime\",\"ifrit1\",0.1,\"ifrit1\",3.812,1},{\"FullDowntime\",\"p2end\",0.1,\"ifrit2Back\",-0.3,1},{\"FullDowntime\",\"titan1\",0.1,\"titan1\",8.158,1},{\"FullDowntime\",\"titan1\",54.272,\"titan1\",62.508,1},{\"FullDowntime\",\"p3end\",0.1,\"titan3Back\",-0.3,1},{\"FullDowntime\",\"magitekBit1\",0.1,\"magitekBit1\",13.741,1},{\"FullDowntime\",\"p4end\",0.1,\"p4end\",50.191,1},{\"FullDowntime\",\"p4end\",77.992,\"p4end\",98.072,1},{\"FullDowntime\",\"p4end\",156.499,\"p4end\",161.092,1},{\"FullDowntime\",\"p4end\",193.502,\"p4end\",198.14,1},{\"FullDowntime\",\"p4end\",214.525,\"p4end\",229.087,1},{\"FullDowntime\",\"graniteGaol1\",0.1,\"p4end\",255.307,1},{\"FullDowntime\",\"p4end\",353.6,\"p4end\",357.89,1}},[\"windows\"]={{\"CasterDowntime\",\"pull\",35.0,\"pull\",37.5,1},{\"CasterDowntime\",\"pull\",38.5,\"pull\",41.0,1},{\"CasterDowntime\",\"pull\",43.0,\"pull\",44.0,1},{\"CasterDowntime\",\"pull\",91.0,\"pull\",92.5,1},{\"CasterDowntime\",\"pull\",102.5,\"pull\",104.0,1},{\"CasterDowntime\",\"pull\",105.5,\"pull\",106.5,1},{\"CasterDowntime\",\"pull\",127.5,\"pull\",128.5,1},{\"CasterDowntime\",\"p1end\",44.5,\"p1end\",47.0,1},{\"CasterDowntime\",\"p1end\",91.5,\"p1end\",98.0,1},{\"CasterDowntime\",\"titan1\",8.5,\"titan1\",11.0,1},{\"CasterDowntime\",\"titan1\",14.0,\"titan1\",21.5,1},{\"CasterDowntime\",\"titan1\",27.5,\"titan1\",29.0,1},{\"CasterDowntime\",\"titan1\",41.0,\"titan1\",42.5,1},{\"CasterDowntime\",\"titan1\",74.5,\"titan1\",76.0,1},{\"CasterDowntime\",\"p4end\",99.5,\"p4end\",100.5,1},{\"CasterDowntime\",\"p4end\",109.0,\"p4end\",115.0,1},{\"CasterDowntime\",\"p4end\",121.0,\"p4end\",124.0,1},{\"CasterDowntime\",\"p4end\",125.0,\"p4end\",129.0,1},{\"CasterDowntime\",\"p4end\",144.5,\"p4end\",145.5,1},{\"CasterDowntime\",\"p4end\",161.5,\"p4end\",169.0,1},{\"CasterDowntime\",\"p4end\",170.0,\"p4end\",172.5,1},{\"CasterDowntime\",\"p4end\",173.5,\"p4end\",174.5,1},{\"CasterDowntime\",\"p4end\",178.5,\"p4end\",182.0,1},{\"CasterDowntime\",\"p4end\",229.5,\"p4end\",231.0,1},{\"CasterDowntime\",\"p4end\",274.0,\"p4end\",280.0,1},{\"CasterDowntime\",\"p4end\",281.0,\"p4end\",282.5,1}},[\"returns\"]={},[\"buffwindows\"]={{\"pull\",8.069},{\"p1end\",16.081},{\"ifrit2Back\",52.467},{\"p4end\",52.628},{\"p4end\",175.979},{\"p4end\",317.846}},[\"sample_count\"]=5,[\"kill_samples\"]={782.098,751.692,783.165,838.291,794.832},[\"roulette\"]={[\"first\"]=293.478,[\"step\"]=20.123,[\"templates\"]={[\"Garuda\"]={{9.5,10.0}},[\"Ifrit\"]={{7.0,9.5},{11.0,11.5}},[\"Titan\"]={{5.0,13.0}}}},[\"anchorOrder\"]={\"p1end\",\"ifrit1\",\"p2end\",\"ifrit2Back\",\"titan1\",\"p3end\",\"titan3Back\",\"magitekBit1\",\"p4end\",\"graniteGaol1\"},[\"ifritArrival\"]=13.603,[\"lahaDelay\"]=14.041}\n-- Separate Ifrit's second dash from his actual phase death.\nS.anchors.ifritDash={after=\"ifrit1\",offset=47.95,spread=2}\nS.anchors.ifritDashBack={after=\"ifritDash\",offset=15.79,spread=1}\nS.anchors.p2end={after=\"ifritDashBack\",offset=17.31,spread=12}\nS.anchors.ifrit2Back={after=\"p2end\",offset=7.55,spread=.75}\nS.anchorOrder={\"p1end\",\"ifrit1\",\"ifritDash\",\"ifritDashBack\",\"p2end\",\"ifrit2Back\",\"titan1\",\"p3end\",\"titan3Back\",\"magitekBit1\",\"p4end\",\"graniteGaol1\"}\nS.phases[#S.phases+1]={\"FullDowntime\",\"ifritDash\",0.1,\"ifritDashBack\",-0.1,1}\nfor _,phase in ipairs(S.phases) do\n if phase[1]==\"FullDowntime\" and phase[2]==\"ifrit1\" and phase[4]==\"ifrit1\" then phase[5]=4.25 end\nend\n-- First Garuda disappearance: corroborated in three recent native logs.\nS.phases[#S.phases+1]={\"FullDowntime\",\"pull\",33.96,\"pull\",38.25,1}\n-- Tonight's native phase-end samples: 16 Garuda ends and 7 final Ifrit returns.\nS.anchors.p1end.offset=145.61\nS.anchors.p1end.spread=27\nS.anchors.p2end.offset=22.312\nS.anchors.p2end.spread=17\nS.windows={{\"MeleeDowntime\",\"titan1\",15.831,\"titan1\",17.831,1}}\n-- Native personal-gaol forecast supplies its own additional movement interval.\n-- Three native Monk-pull boss-event samples, 21 October; not player damage-gap estimates.\nfor _,phase in ipairs(S.phases) do\n if phase[1]==\"FullDowntime\" and phase[2]==\"pull\" and math.abs(phase[3]-70.532)<.001 then\n  phase[3]=68.865;phase[5]=73.150\n elseif phase[1]==\"FullDowntime\" and phase[2]==\"titan1\" and phase[3]==.1 then\n  phase[5]=7.544\n end\nend\nS.cfg={}\nfor k,v in pairs(cfg) do S.cfg[k]=v end\nS.observed={pull=0}\nS.dynamic={}\nS.rouletteWindows={}\nfunction S.time(name)\n if S.observed[name] then return S.observed[name] end\n local a=S.anchors[name]\n return S.time(a.after)+a.offset\nend\nfunction S.union(list)\n table.sort(list,function(a,b)return a[1]<b[1] end)\n local out={}\n for _,w in ipairs(list) do\n  local last=out[#out]\n  if last and w[1]<=last[2] and w[3]==last[3] then last[2]=math.max(last[2],w[2])\n  else out[#out+1]={w[1],w[2],w[3]} end\n end\n return out\nend\nfunction S.rouletteForecast() end\nS.dotStarts={}\nS.dotGaps={}\nS.dotEnds={ [1644]=\"p1end\", [1185]=\"p2end\", [1801]=\"p3end\" }\nfunction S.publishDots()\n local t=TensorCore.mGetTarget()\n local now=A.getAutoSimTime()\n if t and t.alive and t.targetable then\n  S.dotEntityID=t.id;S.dotContentID=t.contentid\n end\n local cid=S.dotContentID\n local endAnchor=S.dotEnds[cid]\n local finish=math.min(1259,math.max(now+5,S.time(S.kill.after)+S.kill.offset))\n local start=0\n if endAnchor then\n  if not S.dotStarts[cid] then\n   local predicted=cid==1644 and 0 or (cid==1185 and S.time(\"p1end\")+S.ifritArrival or S.time(\"ifrit2Back\"))\n   S.dotStarts[cid]=math.max(0,math.min(predicted,now))\n  end\n  start=S.dotStarts[cid]\n  finish=S.observed[endAnchor] or math.max(S.time(endAnchor),now+5)\n end\n A.clearAutoSimPhases(\"DotAvailability\",0)\n A.clearAutoSimPhases(\"TargetLifetime\",0)\n if finish<=start then return end\n A.addAutoSimPhase(\"TargetLifetime\",start,finish,1,0)\n local stop=endAnchor and math.max(start,finish-.5) or finish\n local gaps={}\n if endAnchor then\n  local observed=S.dotGaps[S.dotEntityID] or {}\n  for _,p in ipairs(S.phases) do\n   if p[1]==\"FullDowntime\" then\n    local a,b=S.time(p[2])+p[3],S.time(p[4])+p[5]\n    local replaced=false\n    for _,g in ipairs(observed) do if math.abs(g[1]-a)<10 then replaced=true;break end end\n    if not replaced and b>start and a<stop then gaps[#gaps+1]={math.max(start,a),math.min(stop,b),1} end\n   end\n  end\n  for _,g in ipairs(observed) do\n   local a,b=math.max(start,g[1]),math.min(stop,g[2] or stop)\n   if b>a then gaps[#gaps+1]={a,b,1} end\n  end\n end\n local cursor=start\n for _,g in ipairs(S.union(gaps)) do\n  if g[1]>cursor then A.addAutoSimPhase(\"DotAvailability\",cursor,g[1],1,0) end\n  cursor=math.max(cursor,g[2])\n end\n if stop>cursor then A.addAutoSimPhase(\"DotAvailability\",cursor,stop,1,0) end\n S.dotPublishedEnd=finish;S.dotPublishedTarget=S.dotEntityID\nend\n\nfunction S.publish()\n local live=_G.UWU_RPR_AutoSimConfig\n if live then S.cfg.lbWho=live.lbWho or 2 end\n local now=A.getAutoSimTime()\n local finish=math.max(now+5,S.time(S.kill.after)+S.kill.offset)\n A.setAutoSimKillTime(math.min(finish,1259))\n local grouped={MeleeDowntime={},FullDowntime={},CasterDowntime={},Stun={},BossModifier={},RaidBuff={},GroundFieldMovement={}}\n local function add(kind,a,b,value)\n  if b>a then grouped[kind][#grouped[kind]+1]={a,b,value or 1} end\n end\n for _,p in ipairs(S.phases) do\n  -- HP-driven deaths are variable. Do not declare the still-live boss unavailable.\n  local hpDeath=p[1]==\"FullDowntime\" and (p[2]==\"p1end\" or p[2]==\"p2end\")\n  if not hpDeath or S.observed[p[2]]~=nil then\n   add(p[1],S.time(p[2])+p[3],S.time(p[4])+p[5],p[6])\n  end\n end\n for _,p in ipairs(S.windows) do\n  local a,b=S.time(p[2])+p[3],S.time(p[4])+p[5]\n  if p[2]==\"titan1\" and S.observed.p3end then b=math.min(b,S.observed.p3end) end\n  add(p[1],a,b,p[6])\n end\n if S.cfg.poolLaha then\n  add(\"BossModifier\",S.time(\"magitekBit1\")+S.lahaDelay,S.time(\"p4end\"),.01)\n end\n if S.cfg.priorityGaols then\n  add(\"BossModifier\",S.time(\"titan1\")+68.966,S.time(\"titan1\")+73.966,1.10)\n  add(\"BossModifier\",S.time(\"p4end\")+227.75,S.time(\"p4end\")+232.75,1.10)\n end\n if S.cfg.raidBuffs then\n  local prev\n  for _,w in ipairs(S.buffwindows) do\n   local t=S.time(w[1])+w[2]\n   if prev then t=math.max(t,prev+120) end\n   -- The p1end-anchored burst is the Ifrit opener; preserve its timing/resync.\n   local burstWeight=w[1]==\"p1end\" and 1.4 or (1+S.cfg.buffGain/100)\n   local burstEnd=t+20\n   if w[1]==\"p1end\" then\n    -- Never extend the artificial 1.4 opener into nail softening.\n    burstEnd=math.min(burstEnd,S.time(\"p1end\")+39,S.nailsStartedAt or math.huge)\n   end\n   add(\"RaidBuff\",t,burstEnd,burstWeight)\n   prev=t\n  end\n end\n for _,w in ipairs(S.rouletteWindows) do add(\"CasterDowntime\",w[1],w[2],1) end\n local roster=AnyoneCore.Roster\n local slot=roster and roster.current() and roster.mySlot()\n if S.cfg.lbWho==1 and (slot==\"M1\" or slot==\"M2\") and not S.lbObserved then\n  local lb=S.time(\"magitekBit1\")+S.lahaDelay\n  add(\"Stun\",lb,lb+8.2,1)\n end\n for _,w in pairs(S.dynamic) do add(w[1],w[2],w[3],w[4]) end\n for kind,list in pairs(grouped) do\n  A.clearAutoSimPhases(kind)\n  -- All absolute same-type overlaps are merged before submission.\n  if kind==\"BossModifier\" or kind==\"RaidBuff\" then\n   local cuts,seen={},{}\n   for _,w in ipairs(list) do for i=1,2 do if not seen[w[i]] then cuts[#cuts+1]=w[i];seen[w[i]]=true end end end\n   table.sort(cuts)\n   for i=1,#cuts-1 do\n    local value,active=1,false\n    for _,w in ipairs(list) do if w[1]<=cuts[i] and w[2]>=cuts[i+1] then value=value*w[3];active=true end end\n    if active then A.addAutoSimPhase(kind,cuts[i],cuts[i+1],value) end\n   end\n  else\n   for _,w in ipairs(S.union(list)) do A.addAutoSimPhase(kind,w[1],w[2],w[3]) end\n  end\n end\n S.publishDots()\n A.clearAutoSimUncertainty()\n A.addAutoSimUncertainty(0,2)\n local uncertainty=2\n for _,name in ipairs(S.anchorOrder) do\n  if not S.observed[name] then\n   local anchor=S.anchors[name]\n   uncertainty=math.max(uncertainty,anchor.spread)\n   A.addAutoSimUncertainty(S.time(name)-25,uncertainty)\n  end\n end\n A.addAutoSimUncertainty(math.max(0,finish-30),math.max(uncertainty,S.kill.spread))\nend\nfunction S.resync(name,now)\n if S.observed[name] then return end\n S.observed[name]=now\n S.rouletteForecast()\n S.publish()\n\nend\nS.rouletteForecast()\nS.publish()\ndata.uwuRPRAutoSim=S\nself.used=true",
							conditions = 
							{
								
								{
									"9b6a95e6-64cf-4189-be46-0069dba14238",
									true,
								},
								
								{
									"c31e6d4a-c75c-6898-b208-7fda97f2a259",
									true,
								},
								
								{
									"14806ec2-8efb-c303-83f1-3a6733f4ae9d",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "34e7122e-0d09-6ba6-b25d-4ccc0873b76a",
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
							conditionLua = "return data.uwuRPRAutoSim==nil",
							name = "not configured",
							uuid = "14806ec2-8efb-c303-83f1-3a6733f4ae9d",
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
							uuid = "9b6a95e6-64cf-4189-be46-0069dba14238",
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
							name = "RPR only",
							uuid = "c31e6d4a-c75c-6898-b208-7fda97f2a259",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				eventType = 16,
				mechanicTime = 9,
				name = "[RPR UWU] Configure phase forecast",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = -8,
				timerStartOffset = -70,
				uuid = "c8b5a77d-1f55-ddb2-b0b8-9cc671f77e40",
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
							actionLua = "local T=_G.UWU_RPR_TemporaryState\nif T and T.gaolPriorityOptions then\n for k,v in pairs(T.gaolPriorityOptions) do _G[k]=v end\n T.gaolPriorityOptions=nil\nend\nlocal T=_G.UWU_RPR_TemporaryState\nif T and T.gaols then\n TensorCore.API.TensorACR.deleteAOEBlacklistEntry(1804)\n TensorCore.API.TensorACR.deleteBlacklistEntry(1804)\n TensorCore.API.TensorACR.saveDotBlacklist()\nend\n_G.UWU_RPR_TemporaryState=nil\nlocal N=data.uwuRPROwnNails\nif N and N.options then for k,v in pairs(N.options) do _G[k]=v end;N.options=nil end\ndata.uwuRPRAutoSim=nil\nself.used=true",
							conditions = 
							{
								
								{
									"74d66877-a1f8-1378-b4d8-1b3e30d973dc",
									true,
								},
								
								{
									"01ee53aa-76a1-c74e-a631-986107cd2762",
									true,
								},
								
								{
									"838cfee1-0ded-aaf9-b002-c222ef05697f",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "856262f4-d5e0-95cd-97e2-3d5bc8999d0c",
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
							uuid = "74d66877-a1f8-1378-b4d8-1b3e30d973dc",
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
							name = "RPR only",
							uuid = "01ee53aa-76a1-c74e-a631-986107cd2762",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return _G.UWU_RPR_TemporaryState~=nil",
							name = "owned state",
							uuid = "838cfee1-0ded-aaf9-b002-c222ef05697f",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				eventType = 9,
				loop = true,
				mechanicTime = 9,
				name = "[RPR UWU] Restore temporary settings Wipe",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -80,
				uuid = "f33f8609-3ea9-bbd4-b1ef-b2804157fa26",
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
							actionLua = "local S=data.uwuRPRAutoSim\nif not S or not S.publishDots then return end\nlocal t=TensorCore.mGetTarget()\nlocal changed=t and t.alive and t.targetable and t.id~=S.dotPublishedTarget\nlocal late=S.dotEnds[S.dotContentID] and not S.observed[S.dotEnds[S.dotContentID]] and S.dotPublishedEnd and TensorCore.API.TensorACR.getAutoSimTime()>=S.dotPublishedEnd-2\nif changed or late then S.publishDots() end\nself.used=true",
							conditions = 
							{
								
								{
									"a0aa3ecc-dbf7-3638-b0d6-a8ed0acb87eb",
									true,
								},
								
								{
									"83c8c612-8d81-2ba4-a218-c7b4ff134a02",
									true,
								},
							},
							name = "DoT forecast follows target",
							uuid = "c5a4f458-16d6-f193-9dda-6e2bcc12e119",
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
							uuid = "a0aa3ecc-dbf7-3638-b0d6-a8ed0acb87eb",
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
							name = "RPR only",
							uuid = "83c8c612-8d81-2ba4-a218-c7b4ff134a02",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				loop = true,
				mechanicTime = 9,
				name = "[RPR UWU] DoT forecast follows target",
				throttleTime = 500,
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1250,
				timerStartOffset = -9,
				uuid = "8230d5de-2677-e35b-b7f8-6e0ee4680b67",
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
							actionLua = "local S=data.uwuRPRAutoSim\nif not S or not S.publishDots or not S.dotEnds[eventArgs.entityContentID] or eventArgs.entityID~=S.dotEntityID then return end\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal gaps=S.dotGaps[eventArgs.entityID] or {};S.dotGaps[eventArgs.entityID]=gaps\nlocal last=gaps[#gaps]\nif eventArgs.isTargetable then\n if not last or last[2] then return end\n last[2]=now\nelseif not last or last[2] then gaps[#gaps+1]={now}\nelse return end\nS.publishDots();self.used=true",
							conditions = 
							{
								
								{
									"a0f9a88c-8247-f076-9da5-b986529a5832",
									true,
								},
								
								{
									"4be9c4a0-682a-1923-b5fd-9495e8dffd63",
									true,
								},
							},
							name = "Observe primal DoT availability",
							uuid = "b67e4aa1-95cf-f645-b5ec-0101a464b309",
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
							uuid = "a0f9a88c-8247-f076-9da5-b986529a5832",
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
							name = "RPR only",
							uuid = "4be9c4a0-682a-1923-b5fd-9495e8dffd63",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				eventType = 26,
				loop = true,
				mechanicTime = 9,
				name = "[RPR UWU] Observe primal DoT availability",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1250,
				timerStartOffset = -9,
				uuid = "8cbc147e-b0f6-19f8-8730-51ac6281c7f6",
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
							actionLua = "-- Spiny Plume: applies regardless of model scale, including the enlarged plume.\nlocal spiny=TensorCore.API.TensorACR.addBlacklistEntry(2091,\"UWU Spiny Plume\")\nif not spiny.enabled or spiny.allowIfTarget or spiny.allowSmartDoT then\n spiny.enabled=true;spiny.allowIfTarget=false;spiny.allowSmartDoT=false\n TensorCore.API.TensorACR.saveDotBlacklist()\nend\nlocal feather=TensorCore.API.TensorACR.addBlacklistEntry(1648,\"UWU Satin Plume\")\nif not feather.enabled or feather.allowIfTarget or feather.allowSmartDoT then\n feather.enabled=true;feather.allowIfTarget=false;feather.allowSmartDoT=false\n TensorCore.API.TensorACR.saveDotBlacklist()\nend\nlocal A=TensorCore.API.TensorACR\nlocal nail=A.addBlacklistEntry(1186,\"UWU Infernal Nail\")\nif not nail.enabled or nail.allowIfTarget or nail.allowSmartDoT then\n nail.enabled=true;nail.allowIfTarget=false;nail.allowSmartDoT=false\n A.saveDotBlacklist()\nend\n-- Generated encounter inputs are inserted by the MCP authoring script.\n-- Five EU BLM clears supplied the original the phase-relative medians. Native events resync them.\nlocal A=TensorCore.API.TensorACR\n_G.UWU_RPR_TemporaryState=_G.UWU_RPR_TemporaryState or {}\nlocal cfg=_G.UWU_RPR_AutoSimConfig\nif not cfg then\n cfg={lbWho=2,poolLaha=true,priorityGaols=true,roulette=false,raidBuffs=false,buffGain=16.87}\n _G.UWU_RPR_AutoSimConfig=cfg\nend\nlocal S={[\"anchors\"]={[\"p1end\"]={[\"after\"]=\"pull\",[\"offset\"]=134.629,[\"spread\"]=10},[\"ifrit1\"]={[\"after\"]=\"p1end\",[\"offset\"]=72.217,[\"spread\"]=0.75},[\"p2end\"]={[\"after\"]=\"ifrit1\",[\"offset\"]=38.162,[\"spread\"]=10},[\"ifrit2Back\"]={[\"after\"]=\"p2end\",[\"offset\"]=7.422,[\"spread\"]=0.75},[\"titan1\"]={[\"after\"]=\"ifrit2Back\",[\"offset\"]=22.062,[\"spread\"]=0.75},[\"p3end\"]={[\"after\"]=\"titan1\",[\"offset\"]=97.279,[\"spread\"]=15},[\"titan3Back\"]={[\"after\"]=\"p3end\",[\"offset\"]=12.283,[\"spread\"]=0.75},[\"magitekBit1\"]={[\"after\"]=\"titan3Back\",[\"offset\"]=7.018,[\"spread\"]=0.75},[\"p4end\"]={[\"after\"]=\"magitekBit1\",[\"offset\"]=25.99,[\"spread\"]=0.75},[\"graniteGaol1\"]={[\"after\"]=\"p4end\",[\"offset\"]=233.053,[\"spread\"]=0.75}},[\"kill\"]={[\"after\"]=\"graniteGaol1\",[\"offset\"]=134.648,[\"spread\"]=7.881},[\"phases\"]={{\"FullDowntime\",\"pull\",70.532,\"pull\",74.238,1},{\"FullDowntime\",\"p1end\",0.1,\"p1end\",13.303,1},{\"FullDowntime\",\"ifrit1\",0.1,\"ifrit1\",3.812,1},{\"FullDowntime\",\"p2end\",0.1,\"ifrit2Back\",-0.3,1},{\"FullDowntime\",\"titan1\",0.1,\"titan1\",8.158,1},{\"FullDowntime\",\"titan1\",54.272,\"titan1\",62.508,1},{\"FullDowntime\",\"p3end\",0.1,\"titan3Back\",-0.3,1},{\"FullDowntime\",\"magitekBit1\",0.1,\"magitekBit1\",13.741,1},{\"FullDowntime\",\"p4end\",0.1,\"p4end\",50.191,1},{\"FullDowntime\",\"p4end\",77.992,\"p4end\",98.072,1},{\"FullDowntime\",\"p4end\",156.499,\"p4end\",161.092,1},{\"FullDowntime\",\"p4end\",193.502,\"p4end\",198.14,1},{\"FullDowntime\",\"p4end\",214.525,\"p4end\",229.087,1},{\"FullDowntime\",\"graniteGaol1\",0.1,\"p4end\",255.307,1},{\"FullDowntime\",\"p4end\",353.6,\"p4end\",357.89,1}},[\"windows\"]={{\"CasterDowntime\",\"pull\",35.0,\"pull\",37.5,1},{\"CasterDowntime\",\"pull\",38.5,\"pull\",41.0,1},{\"CasterDowntime\",\"pull\",43.0,\"pull\",44.0,1},{\"CasterDowntime\",\"pull\",91.0,\"pull\",92.5,1},{\"CasterDowntime\",\"pull\",102.5,\"pull\",104.0,1},{\"CasterDowntime\",\"pull\",105.5,\"pull\",106.5,1},{\"CasterDowntime\",\"pull\",127.5,\"pull\",128.5,1},{\"CasterDowntime\",\"p1end\",44.5,\"p1end\",47.0,1},{\"CasterDowntime\",\"p1end\",91.5,\"p1end\",98.0,1},{\"CasterDowntime\",\"titan1\",8.5,\"titan1\",11.0,1},{\"CasterDowntime\",\"titan1\",14.0,\"titan1\",21.5,1},{\"CasterDowntime\",\"titan1\",27.5,\"titan1\",29.0,1},{\"CasterDowntime\",\"titan1\",41.0,\"titan1\",42.5,1},{\"CasterDowntime\",\"titan1\",74.5,\"titan1\",76.0,1},{\"CasterDowntime\",\"p4end\",99.5,\"p4end\",100.5,1},{\"CasterDowntime\",\"p4end\",109.0,\"p4end\",115.0,1},{\"CasterDowntime\",\"p4end\",121.0,\"p4end\",124.0,1},{\"CasterDowntime\",\"p4end\",125.0,\"p4end\",129.0,1},{\"CasterDowntime\",\"p4end\",144.5,\"p4end\",145.5,1},{\"CasterDowntime\",\"p4end\",161.5,\"p4end\",169.0,1},{\"CasterDowntime\",\"p4end\",170.0,\"p4end\",172.5,1},{\"CasterDowntime\",\"p4end\",173.5,\"p4end\",174.5,1},{\"CasterDowntime\",\"p4end\",178.5,\"p4end\",182.0,1},{\"CasterDowntime\",\"p4end\",229.5,\"p4end\",231.0,1},{\"CasterDowntime\",\"p4end\",274.0,\"p4end\",280.0,1},{\"CasterDowntime\",\"p4end\",281.0,\"p4end\",282.5,1}},[\"returns\"]={},[\"buffwindows\"]={{\"pull\",8.069},{\"p1end\",16.081},{\"ifrit2Back\",52.467},{\"p4end\",52.628},{\"p4end\",175.979},{\"p4end\",317.846}},[\"sample_count\"]=5,[\"kill_samples\"]={782.098,751.692,783.165,838.291,794.832},[\"roulette\"]={[\"first\"]=293.478,[\"step\"]=20.123,[\"templates\"]={[\"Garuda\"]={{9.5,10.0}},[\"Ifrit\"]={{7.0,9.5},{11.0,11.5}},[\"Titan\"]={{5.0,13.0}}}},[\"anchorOrder\"]={\"p1end\",\"ifrit1\",\"p2end\",\"ifrit2Back\",\"titan1\",\"p3end\",\"titan3Back\",\"magitekBit1\",\"p4end\",\"graniteGaol1\"},[\"ifritArrival\"]=13.603,[\"lahaDelay\"]=14.041}\n-- Separate Ifrit's second dash from his actual phase death.\nS.anchors.ifritDash={after=\"ifrit1\",offset=47.95,spread=2}\nS.anchors.ifritDashBack={after=\"ifritDash\",offset=15.79,spread=1}\nS.anchors.p2end={after=\"ifritDashBack\",offset=17.31,spread=12}\nS.anchors.ifrit2Back={after=\"p2end\",offset=7.55,spread=.75}\nS.anchorOrder={\"p1end\",\"ifrit1\",\"ifritDash\",\"ifritDashBack\",\"p2end\",\"ifrit2Back\",\"titan1\",\"p3end\",\"titan3Back\",\"magitekBit1\",\"p4end\",\"graniteGaol1\"}\nS.phases[#S.phases+1]={\"FullDowntime\",\"ifritDash\",0.1,\"ifritDashBack\",-0.1,1}\nfor _,phase in ipairs(S.phases) do\n if phase[1]==\"FullDowntime\" and phase[2]==\"ifrit1\" and phase[4]==\"ifrit1\" then phase[5]=4.25 end\nend\n-- First Garuda disappearance: corroborated in three recent native logs.\nS.phases[#S.phases+1]={\"FullDowntime\",\"pull\",33.96,\"pull\",38.25,1}\n-- Tonight's native phase-end samples: 16 Garuda ends and 7 final Ifrit returns.\nS.anchors.p1end.offset=145.61\nS.anchors.p1end.spread=27\nS.anchors.p2end.offset=22.312\nS.anchors.p2end.spread=17\nS.windows={{\"MeleeDowntime\",\"titan1\",15.831,\"titan1\",17.831,1}}\n-- Native personal-gaol forecast supplies its own additional movement interval.\n-- Three native Monk-pull boss-event samples, 21 October; not player damage-gap estimates.\nfor _,phase in ipairs(S.phases) do\n if phase[1]==\"FullDowntime\" and phase[2]==\"pull\" and math.abs(phase[3]-70.532)<.001 then\n  phase[3]=68.865;phase[5]=73.150\n elseif phase[1]==\"FullDowntime\" and phase[2]==\"titan1\" and phase[3]==.1 then\n  phase[5]=7.544\n end\nend\nS.cfg={}\nfor k,v in pairs(cfg) do S.cfg[k]=v end\nS.observed={pull=0}\nS.dynamic={}\nS.rouletteWindows={}\nfunction S.time(name)\n if S.observed[name] then return S.observed[name] end\n local a=S.anchors[name]\n return S.time(a.after)+a.offset\nend\nfunction S.union(list)\n table.sort(list,function(a,b)return a[1]<b[1] end)\n local out={}\n for _,w in ipairs(list) do\n  local last=out[#out]\n  if last and w[1]<=last[2] and w[3]==last[3] then last[2]=math.max(last[2],w[2])\n  else out[#out+1]={w[1],w[2],w[3]} end\n end\n return out\nend\nfunction S.rouletteForecast() end\nS.dotStarts={}\nS.dotGaps={}\nS.dotEnds={ [1644]=\"p1end\", [1185]=\"p2end\", [1801]=\"p3end\" }\nfunction S.publishDots()\n local t=TensorCore.mGetTarget()\n local now=A.getAutoSimTime()\n if t and t.alive and t.targetable then\n  S.dotEntityID=t.id;S.dotContentID=t.contentid\n end\n local cid=S.dotContentID\n local endAnchor=S.dotEnds[cid]\n local finish=math.min(1259,math.max(now+5,S.time(S.kill.after)+S.kill.offset))\n local start=0\n if endAnchor then\n  if not S.dotStarts[cid] then\n   local predicted=cid==1644 and 0 or (cid==1185 and S.time(\"p1end\")+S.ifritArrival or S.time(\"ifrit2Back\"))\n   S.dotStarts[cid]=math.max(0,math.min(predicted,now))\n  end\n  start=S.dotStarts[cid]\n  finish=S.observed[endAnchor] or math.max(S.time(endAnchor),now+5)\n end\n A.clearAutoSimPhases(\"DotAvailability\",0)\n A.clearAutoSimPhases(\"TargetLifetime\",0)\n if finish<=start then return end\n A.addAutoSimPhase(\"TargetLifetime\",start,finish,1,0)\n local stop=endAnchor and math.max(start,finish-.5) or finish\n local gaps={}\n if endAnchor then\n  local observed=S.dotGaps[S.dotEntityID] or {}\n  for _,p in ipairs(S.phases) do\n   if p[1]==\"FullDowntime\" then\n    local a,b=S.time(p[2])+p[3],S.time(p[4])+p[5]\n    local replaced=false\n    for _,g in ipairs(observed) do if math.abs(g[1]-a)<10 then replaced=true;break end end\n    if not replaced and b>start and a<stop then gaps[#gaps+1]={math.max(start,a),math.min(stop,b),1} end\n   end\n  end\n  for _,g in ipairs(observed) do\n   local a,b=math.max(start,g[1]),math.min(stop,g[2] or stop)\n   if b>a then gaps[#gaps+1]={a,b,1} end\n  end\n end\n local cursor=start\n for _,g in ipairs(S.union(gaps)) do\n  if g[1]>cursor then A.addAutoSimPhase(\"DotAvailability\",cursor,g[1],1,0) end\n  cursor=math.max(cursor,g[2])\n end\n if stop>cursor then A.addAutoSimPhase(\"DotAvailability\",cursor,stop,1,0) end\n S.dotPublishedEnd=finish;S.dotPublishedTarget=S.dotEntityID\nend\n\nfunction S.publish()\n local live=_G.UWU_RPR_AutoSimConfig\n if live then S.cfg.lbWho=live.lbWho or 2 end\n local now=A.getAutoSimTime()\n local finish=math.max(now+5,S.time(S.kill.after)+S.kill.offset)\n A.setAutoSimKillTime(math.min(finish,1259))\n local grouped={MeleeDowntime={},FullDowntime={},CasterDowntime={},Stun={},BossModifier={},RaidBuff={},GroundFieldMovement={}}\n local function add(kind,a,b,value)\n  if b>a then grouped[kind][#grouped[kind]+1]={a,b,value or 1} end\n end\n for _,p in ipairs(S.phases) do\n  -- HP-driven deaths are variable. Do not declare the still-live boss unavailable.\n  local hpDeath=p[1]==\"FullDowntime\" and (p[2]==\"p1end\" or p[2]==\"p2end\")\n  if not hpDeath or S.observed[p[2]]~=nil then\n   add(p[1],S.time(p[2])+p[3],S.time(p[4])+p[5],p[6])\n  end\n end\n for _,p in ipairs(S.windows) do\n  local a,b=S.time(p[2])+p[3],S.time(p[4])+p[5]\n  if p[2]==\"titan1\" and S.observed.p3end then b=math.min(b,S.observed.p3end) end\n  add(p[1],a,b,p[6])\n end\n if S.cfg.poolLaha then\n  add(\"BossModifier\",S.time(\"magitekBit1\")+S.lahaDelay,S.time(\"p4end\"),.01)\n end\n if S.cfg.priorityGaols then\n  add(\"BossModifier\",S.time(\"titan1\")+68.966,S.time(\"titan1\")+73.966,1.10)\n  add(\"BossModifier\",S.time(\"p4end\")+227.75,S.time(\"p4end\")+232.75,1.10)\n end\n if S.cfg.raidBuffs then\n  local prev\n  for _,w in ipairs(S.buffwindows) do\n   local t=S.time(w[1])+w[2]\n   if prev then t=math.max(t,prev+120) end\n   local burstWeight=w[1]==\"p1end\" and 1.4 or (1+S.cfg.buffGain/100)\n   local burstEnd=t+20\n   if w[1]==\"p1end\" then\n    -- Never extend the artificial 1.4 opener into nail softening.\n    burstEnd=math.min(burstEnd,S.time(\"p1end\")+39,S.nailsStartedAt or math.huge)\n   end\n   add(\"RaidBuff\",t,burstEnd,burstWeight)\n   prev=t\n  end\n end\n for _,w in ipairs(S.rouletteWindows) do add(\"CasterDowntime\",w[1],w[2],1) end\n local roster=AnyoneCore.Roster\n local slot=roster and roster.current() and roster.mySlot()\n if S.cfg.lbWho==1 and (slot==\"M1\" or slot==\"M2\") and not S.lbObserved then\n  local lb=S.time(\"magitekBit1\")+S.lahaDelay\n  add(\"Stun\",lb,lb+8.2,1)\n end\n for _,w in pairs(S.dynamic) do add(w[1],w[2],w[3],w[4]) end\n for kind,list in pairs(grouped) do\n  A.clearAutoSimPhases(kind)\n  -- All absolute same-type overlaps are merged before submission.\n  if kind==\"BossModifier\" or kind==\"RaidBuff\" then\n   local cuts,seen={},{}\n   for _,w in ipairs(list) do for i=1,2 do if not seen[w[i]] then cuts[#cuts+1]=w[i];seen[w[i]]=true end end end\n   table.sort(cuts)\n   for i=1,#cuts-1 do\n    local value,active=1,false\n    for _,w in ipairs(list) do if w[1]<=cuts[i] and w[2]>=cuts[i+1] then value=value*w[3];active=true end end\n    if active then A.addAutoSimPhase(kind,cuts[i],cuts[i+1],value) end\n   end\n  else\n   for _,w in ipairs(S.union(list)) do A.addAutoSimPhase(kind,w[1],w[2],w[3]) end\n  end\n end\n S.publishDots()\n A.clearAutoSimUncertainty()\n A.addAutoSimUncertainty(0,2)\n local uncertainty=2\n for _,name in ipairs(S.anchorOrder) do\n  if not S.observed[name] then\n   local anchor=S.anchors[name]\n   uncertainty=math.max(uncertainty,anchor.spread)\n   A.addAutoSimUncertainty(S.time(name)-25,uncertainty)\n  end\n end\n A.addAutoSimUncertainty(math.max(0,finish-30),math.max(uncertainty,S.kill.spread))\nend\nfunction S.resync(name,now)\n if S.observed[name] then return end\n S.observed[name]=now\n S.rouletteForecast()\n S.publish()\n\nend\nS.rouletteForecast()\nS.publish()\ndata.uwuRPRAutoSim=S\nself.used=true",
							conditions = 
							{
								
								{
									"aa8098fc-e02d-470c-aceb-0b1dc7eca71e",
									true,
								},
								
								{
									"0b9cbb67-6dca-5c98-80c5-9206da3046a1",
									true,
								},
								
								{
									"54fd8513-b158-8ed3-b1e2-955d59dfcc6d",
									true,
								},
								
								{
									"093f3faa-db72-94b1-937a-6e26b22307da",
									true,
								},
								
								{
									"8e5e135d-09d9-3eca-8226-06cbb872d6ca",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "15cb21fd-b0f0-a3ad-b937-aa187b298627",
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
							conditionLua = "return data.uwuRPRAutoSim==nil",
							name = "not configured",
							uuid = "8e5e135d-09d9-3eca-8226-06cbb872d6ca",
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
							uuid = "aa8098fc-e02d-470c-aceb-0b1dc7eca71e",
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
							name = "RPR only",
							uuid = "0b9cbb67-6dca-5c98-80c5-9206da3046a1",
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
							uuid = "54fd8513-b158-8ed3-b1e2-955d59dfcc6d",
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
							uuid = "093f3faa-db72-94b1-937a-6e26b22307da",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				eventType = 3,
				mechanicTime = 9,
				name = "[RPR UWU] Configure on first Slipstream",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 5,
				timerStartOffset = -9,
				uuid = "0ad64911-6e5a-3848-88be-6f5cf08ae6ba",
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
				name = "RPR AutoSim",
				uuid = "8e222bcc-a255-bf57-ac1f-318accb688ad",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "RPR AutoSim",
				name = "Targeting",
				uuid = "884a6753-32ac-1caa-9c8d-992049143525",
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
									"6382e816-99ef-e0a6-a48a-f389e25e162f",
									true,
								},
								
								{
									"85db3208-7de8-46c6-9c11-64463d7f4181",
									true,
								},
								
								{
									"506afd5b-f9c9-63e0-b17d-ca5df3acc12f",
									true,
								},
								
								{
									"f4d60098-af7c-400d-8fc2-23fce957bf21",
									true,
								},
							},
							endIfUsed = true,
							name = "Target - Garuda",
							setTarget = true,
							targetContentID = 1644,
							targetType = "ContentID",
							uuid = "6c468c00-7217-135a-8066-6abb11103802",
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
							uuid = "85db3208-7de8-46c6-9c11-64463d7f4181",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local t=TensorCore.mGetTarget()\nreturn t==nil or not t.alive or not t.targetable",
							name = "No living hostile target",
							uuid = "506afd5b-f9c9-63e0-b17d-ca5df3acc12f",
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
							uuid = "f4d60098-af7c-400d-8fc2-23fce957bf21",
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
							name = "RPR only",
							uuid = "6382e816-99ef-e0a6-a48a-f389e25e162f",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim/Targeting",
				loop = true,
				mechanicTime = 34,
				name = "[RPR UWU] [Target] Garuda Reacquire",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 8,
				timerEndOffset = 147,
				uuid = "2aa26478-d960-3150-a2e6-5a103a124868",
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
				name = "RPR AutoSim",
				uuid = "33e6e418-2464-9dd5-a6f4-62659f323a0c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "RPR AutoSim",
				name = "Targeting",
				uuid = "95084e65-fe07-2963-9f4a-746ce6eecd66",
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
									"a7b8941a-c9b1-452c-9676-79a136516136",
									true,
								},
								
								{
									"189e8dfc-1640-1833-998e-3cdb1e124681",
									true,
								},
								
								{
									"acb84dcf-325a-aeef-a37f-2ff4b6908c1b",
									true,
								},
								
								{
									"de02f310-7553-cc49-8f23-38a74e4e6237",
									true,
								},
							},
							name = "Target Garuda",
							setTarget = true,
							targetType = "Event Entity",
							uuid = "f2ac5367-a5ba-d3e2-8257-b897d8856047",
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
							uuid = "189e8dfc-1640-1833-998e-3cdb1e124681",
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
							uuid = "de02f310-7553-cc49-8f23-38a74e4e6237",
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
							uuid = "acb84dcf-325a-aeef-a37f-2ff4b6908c1b",
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
							name = "RPR only",
							uuid = "a7b8941a-c9b1-452c-9676-79a136516136",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim/Targeting",
				eventType = 26,
				loop = true,
				mechanicTime = 39,
				name = "[RPR UWU] [Target] Garuda - Acquire",
				timeRange = true,
				timelineIndex = 10,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "7ee558fb-34e7-4a35-ad39-4b2584ddffc4",
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
				name = "RPR AutoSim",
				uuid = "0f793cf5-bf50-6697-83f1-621e9c397e13",
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
							actionLua = "local S=data.uwuRPRAutoSim\nS.resync(\"p1end\",TensorCore.API.TensorACR.getAutoSimTime())\nself.used=true",
							conditions = 
							{
								
								{
									"7f3589d4-cc99-bf53-82cf-cecb772d2f29",
									true,
								},
								
								{
									"e9a04393-1f49-837f-ade5-b86c54dd3fb4",
									true,
								},
								
								{
									"464933b7-a4de-f06f-8026-2b9a123ea371",
									true,
								},
								
								{
									"a276bf72-a8d1-3fb0-8a0e-3b6f176af535",
									true,
								},
								
								{
									"1c670d31-c2de-f130-af8b-3ef58010c024",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "b94f4511-35d5-21c7-8232-34c96aa45cbe",
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
							uuid = "7f3589d4-cc99-bf53-82cf-cecb772d2f29",
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
							name = "RPR only",
							uuid = "e9a04393-1f49-837f-ade5-b86c54dd3fb4",
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
							uuid = "464933b7-a4de-f06f-8026-2b9a123ea371",
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
							uuid = "a276bf72-a8d1-3fb0-8a0e-3b6f176af535",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuRPRAutoSim\nreturn S~=nil and S.observed.p1end==nil",
							name = "anchor pending",
							uuid = "1c670d31-c2de-f130-af8b-3ef58010c024",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				eventType = 26,
				loop = true,
				mechanicTime = 176,
				name = "[RPR UWU] Resync p1end",
				timeRange = true,
				timelineIndex = 34,
				timerEndOffset = 25,
				timerStartOffset = -76,
				uuid = "8b932f51-1353-bea7-ac2e-4de711adf9fb",
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
				name = "RPR AutoSim",
				uuid = "57886412-40a1-f51d-bdd0-ad0d76592699",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "RPR AutoSim",
				name = "Targeting",
				uuid = "cbca1664-44ab-8a25-b418-8fe7b803a334",
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
									"e4d105b4-1553-1d73-b4cd-576691393863",
									true,
								},
								
								{
									"7209aa1b-7f40-bbda-a91e-8a0bd5d37407",
									true,
								},
								
								{
									"9f901c28-3bf8-9709-ac3a-16c856a1e1e5",
									true,
								},
								
								{
									"3803fbcf-49fe-2d9f-94a4-2a90271216fc",
									true,
								},
							},
							endIfUsed = true,
							name = "Target - Ifrit",
							setTarget = true,
							targetContentID = 1185,
							targetType = "ContentID",
							uuid = "2b46e34f-4065-ac2c-af2f-8f7f36457b6d",
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
							uuid = "7209aa1b-7f40-bbda-a91e-8a0bd5d37407",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local t=TensorCore.mGetTarget()\nreturn t==nil or not t.alive or not t.targetable",
							name = "No living hostile target",
							uuid = "9f901c28-3bf8-9709-ac3a-16c856a1e1e5",
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
							uuid = "3803fbcf-49fe-2d9f-94a4-2a90271216fc",
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
							name = "RPR only",
							uuid = "e4d105b4-1553-1d73-b4cd-576691393863",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim/Targeting",
				loop = true,
				mechanicTime = 300,
				name = "[RPR UWU] [Target] Ifrit Reacquire",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 36,
				timerEndOffset = 153,
				uuid = "e2b8fe73-e5af-368f-8330-8da2b435fea0",
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
									"99fcd965-a995-6eb6-bcf2-f5b2f31c5e86",
									true,
								},
								
								{
									"09d3c99b-7a39-d269-ab56-21d3ba5f590e",
									true,
								},
								
								{
									"22be4381-b5e1-8a39-802c-80f4dfad55f6",
									true,
								},
								
								{
									"9cf9973d-f8df-278a-bd85-d860b4b59c05",
									true,
								},
							},
							name = "Target Ifrit",
							setTarget = true,
							targetType = "Event Entity",
							uuid = "462c2d1a-09e5-8a29-a76c-0a3495a06e75",
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
							uuid = "09d3c99b-7a39-d269-ab56-21d3ba5f590e",
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
							uuid = "9cf9973d-f8df-278a-bd85-d860b4b59c05",
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
							uuid = "22be4381-b5e1-8a39-802c-80f4dfad55f6",
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
							name = "RPR only",
							uuid = "99fcd965-a995-6eb6-bcf2-f5b2f31c5e86",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim/Targeting",
				eventType = 26,
				loop = true,
				mechanicTime = 300,
				name = "[RPR UWU] [Target] Ifrit - Acquire",
				timeRange = true,
				timelineIndex = 36,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "3fca67fe-99fe-63b5-b19f-882018528b32",
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
				name = "RPR AutoSim",
				uuid = "4fea730a-a86b-b5cd-977a-7a30328b358b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "RPR AutoSim",
				name = "P2 Ifrit",
				uuid = "579bf519-cf05-b8be-94ec-e91c01e18c7b",
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
				displayPath = "RPR AutoSim/P2 Ifrit",
				execute = "if Player.job~=39 then return end\nlocal p=TensorCore.mGetPlayer()\nif not p or not p.alive then return end\nlocal roster=AnyoneCore.Roster\nlocal role\nlocal blocked\nif not roster or not roster.current() then blocked=\"waiting for roster\"\nelseif not roster.isReady() then blocked=\"waiting for ready roster\"\nelse\n role=roster.mySlot()\n if role~=\"R1\" and role~=\"R2\" and role~=\"M1\" and role~=\"M2\" then blocked=\"unsupported or missing slot: \"..tostring(role) end\nend\nif blocked then\n if data.uwuRPRNailDiagnostic~=blocked then\n  data.uwuRPRNailDiagnostic=blocked\n  TensorCore.timelineLogToFile(\"[RPR UWU nails] \"..blocked..\"\\n\")\n end\n return\nend\nlocal N=data.uwuRPROwnNails\nlocal api=TensorCore.API.TensorACR\nlocal function restore()\n if N and N.options then for k,v in pairs(N.options) do _G[k]=v end;N.options=nil end\nend\nif not N then N={ids={},awake={}};data.uwuRPROwnNails=N end\nif N.done then return end\nlocal entities,count,alive={},0,0\nfor _,e in pairs(TensorCore.getEntityGroupList(\"ContentID\",1186) or {}) do\n if e.alive and e.targetable then N.ids[e.id]=true;entities[e.id]=e;alive=alive+1 end\nend\nfor id in pairs(N.ids) do\n count=count+1\n local buff=TensorCore.getBuff(id,1544)\n if buff and buff.stacks>=2 then N.awake[id]=true end\nend\nlocal S=data.uwuRPRAutoSim\nif count>0 and S and not S.nailsStartedAt then\n S.nailsStartedAt=api.getAutoSimTime()\n S.publish()\nend\nif count<4 then\n local reason=\"waiting for four nails: \"..count\n if data.uwuRPRNailDiagnostic~=reason then\n  data.uwuRPRNailDiagnostic=reason\n  TensorCore.timelineLogToFile(\"[RPR UWU nails] \"..reason..\"\\n\")\n end\n return\nend\nif alive==0 then\n if N.options then for k in pairs(N.options) do _G[k]=true end;N.options=nil end\n N.done=true;return\nend\nif not N.options then\n N.options={}\n for _,toggle in ipairs(api.getQuickToggles() or {}) do\n  if string.match(toggle.var,\"_AOE$\") or string.match(toggle.var,\"_SmartAOE$\") then\n   if type(_G[toggle.var])==\"boolean\" then N.options[toggle.var]=_G[toggle.var] end\n  end\n end\nend\nif not N.order then\n if alive~=4 then return end\n local list={};for id,e in pairs(entities) do list[#list+1]=e end\n local best=math.huge;local ni,nj\n for i=1,3 do for j=i+1,4 do\n  local a,b=list[i].pos,list[j].pos\n  local d=(a.x-b.x)^2+(a.z-b.z)^2\n  if d<best then best=d;ni=i;nj=j end\n end end\n local north,south={},{}\n for i,e in ipairs(list) do\n  if i==ni or i==nj then north[#north+1]=e else south[#south+1]=e end\n end\n local nx=(north[1].pos.x+north[2].pos.x-south[1].pos.x-south[2].pos.x)/2\n local nz=(north[1].pos.z+north[2].pos.z-south[1].pos.z-south[2].pos.z)/2\n local len=math.sqrt(nx*nx+nz*nz)\n if len<1 then return end\n local ex,ez=-nz/len,nx/len\n local function eastFirst(pair)\n  local a,b=pair[1].pos,pair[2].pos\n  if (a.x-b.x)*ex+(a.z-b.z)*ez<0 then pair[1],pair[2]=pair[2],pair[1] end\n end\n eastFirst(north);eastFirst(south)\n N.order={south[1].id,south[2].id,north[1].id,north[2].id}\n local slot=roster.mySlot()\n if slot==\"R2\" then N.softenID=N.order[1]\n elseif slot==\"R1\" then N.softenID=N.order[2]\n else\n  local a,b=entities[N.order[3]],entities[N.order[4]]\n  N.softenID=TensorCore.getDistance2d(p.pos,a.pos)<=TensorCore.getDistance2d(p.pos,b.pos) and a.id or b.id\n end\nend\nlocal nail=entities[N.softenID]\nlocal reached=nail and nail.hp.percent<=40\nif role==\"M1\" or role==\"M2\" then\n for i=3,4 do local e=entities[N.order[i]];if e and e.hp.percent<=40 then reached=true end end\nend\nif not N.softened and (reached or not nail) then\n N.softened=true\n local cast=p.castinginfo\n if cast.castingid>0 or cast.channelingid>0 then\n  for _,id in ipairs(cast.castingtargets) do\n   if id==N.softenID then ActionList:StopCasting();break end\n  end\n end\nend\nlocal awakened=0\nfor id in pairs(N.ids) do if N.awake[id] then awakened=awakened+1 end end\nlocal kill=N.softened and awakened==4\nlocal desired\nif not N.softened then desired=N.softenID\nelseif kill then for _,id in ipairs(N.order) do if entities[id] then desired=id;break end end\nelse for _,e in pairs(TensorCore.getEntityGroupList(\"ContentID\",1185) or {}) do desired=e.id;break end end\n-- Only transitions are logged: no per-pulse HP/position dump.\nlocal stage=(not N.softened and \"soften\" or (kill and \"ordered kill\" or \"wait for awakening\"))\nlocal reason=stage..\"; slot=\"..role..\"; soften=\"..tostring(N.softenID)..\"; awake=\"..awakened..\"; desired=\"..tostring(desired)\nif data.uwuRPRNailDiagnostic~=reason then\n data.uwuRPRNailDiagnostic=reason\n local current=TensorCore.mGetTarget()\n local hp=nail and nail.hp.percent\n TensorCore.timelineLogToFile(\"[RPR UWU nails] \"..reason..\"; current=\"..tostring(current and current.id)..\"; softenHP=\"..tostring(hp)..\"\\n\")\nend\nlocal close=kill and not entities[N.order[1]] and not entities[N.order[2]]\nlocal meleeSoftening=(role==\"M1\" or role==\"M2\") and not N.softened\nlocal aoe=meleeSoftening or close\nfor k in pairs(N.options) do _G[k]=aoe end\nif desired then\n local target=TensorCore.mGetTarget()\n if not target or target.id~=desired then Player:SetTarget(desired) end\nend\n",
				executeType = 2,
				loop = true,
				mechanicTime = 328,
				name = "[RPR UWU] Nails - Role softening and ordered targeting",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 43,
				timerEndOffset = 67,
				timerStartOffset = -12,
				uuid = "dd140889-cc71-3c5b-ad97-78738d7dd437",
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
				displayPath = "RPR AutoSim/P2 Ifrit",
				eventType = 9,
				execute = "if Player.job~=39 then return end\nlocal N=data.uwuRPROwnNails\nif N and N.options then for k,v in pairs(N.options) do _G[k]=v end;N.options=nil end\nif N then N.done=true end\nself.used=true",
				executeType = 2,
				mechanicTime = 328,
				name = "[RPR UWU] Nails - Restore targeting options on wipe",
				timeRange = true,
				timelineIndex = 43,
				timerEndOffset = 1400,
				timerStartOffset = -328,
				uuid = "33c4c746-a387-fc28-a077-4bd591579727",
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
				displayPath = "RPR AutoSim/P2 Ifrit",
				execute = "if Player.job~=39 then return end\nlocal N=data.uwuRPROwnNails\nif N and N.options then for k,v in pairs(N.options) do _G[k]=v end;N.options=nil end\nif N then N.done=true end\nself.used=true",
				executeType = 2,
				mechanicTime = 328,
				name = "[RPR UWU] Nails - Restore targeting options after nails",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 43,
				timerEndOffset = 90,
				timerStartOffset = 68,
				uuid = "2c3922dd-c646-3892-af6c-b3ff244db153",
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
				displayPath = "RPR AutoSim/P2 Ifrit",
				eventType = 11,
				execute = "if Player.job~=39 then return end\nlocal N=data.uwuRPROwnNails\nif N and N.options then for k,v in pairs(N.options) do _G[k]=v end;N.options=nil end\nif N then N.done=true end\nself.used=true",
				executeType = 2,
				mechanicTime = 328,
				name = "[RPR UWU] Nails - Restore targeting options on map change",
				timeRange = true,
				timelineIndex = 43,
				timerEndOffset = 1400,
				timerStartOffset = -328,
				uuid = "777233a9-86d0-693f-a7e0-64a9aef5c5f3",
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
				name = "RPR AutoSim",
				uuid = "9212e0f7-c181-6936-bf51-0101fb1ec9cb",
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
							actionLua = "local S=data.uwuRPRAutoSim\nS.resync(\"ifrit1\",TensorCore.API.TensorACR.getAutoSimTime())\nself.used=true",
							conditions = 
							{
								
								{
									"5bab4a03-e80d-216c-8951-169fb8482317",
									true,
								},
								
								{
									"a3e59fdc-a75a-cbe6-a744-807964c8675a",
									true,
								},
								
								{
									"49514f4d-b8ac-5ed3-b1ee-c3297417641e",
									true,
								},
								
								{
									"5b770563-0cf2-dc62-8482-c08cb1fae4ad",
									true,
								},
								
								{
									"87335ba1-b58c-5fc2-9e3f-0d98f9198062",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "8d82d30f-a0c5-890c-b77f-20e4f92da7eb",
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
							uuid = "5bab4a03-e80d-216c-8951-169fb8482317",
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
							name = "RPR only",
							uuid = "a3e59fdc-a75a-cbe6-a744-807964c8675a",
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
							uuid = "49514f4d-b8ac-5ed3-b1ee-c3297417641e",
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
							uuid = "5b770563-0cf2-dc62-8482-c08cb1fae4ad",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuRPRAutoSim\nreturn S~=nil and S.observed.ifrit1==nil",
							name = "anchor pending",
							uuid = "87335ba1-b58c-5fc2-9e3f-0d98f9198062",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				eventType = 26,
				loop = true,
				mechanicTime = 361.5,
				name = "[RPR UWU] Resync ifrit1",
				timeRange = true,
				timelineIndex = 50,
				timerEndOffset = 20,
				timerStartOffset = -15,
				uuid = "276f9a01-de36-1de3-9906-329ed069fdc5",
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
				name = "RPR AutoSim",
				uuid = "9847aa72-034f-0ba4-9127-f2c28d8be93f",
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
							actionLua = "local S=data.uwuRPRAutoSim\nlocal key=eventArgs.isTargetable and \"ifritDashBack\" or \"ifritDash\"\nS.resync(key,TensorCore.API.TensorACR.getAutoSimTime())\nself.used=true",
							conditions = 
							{
								
								{
									"72493e2d-ad90-4b49-9ee3-d00ac7a12128",
									true,
								},
								
								{
									"05dfda9b-8b1c-c057-8aeb-a1a76fa0c0df",
									true,
								},
								
								{
									"984cb8d3-4a87-644c-bb03-c1796f5723f4",
									true,
								},
								
								{
									"d80a333b-1cf4-e1ad-aca5-9631153d2fb4",
									true,
								},
							},
							name = "Resync distinct dash boundary",
							uuid = "72eb4e11-0507-c79c-a0ba-3dda3c227694",
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
							conditionLua = "local S=data.uwuRPRAutoSim\nif not S or not S.anchors.ifritDash then return false end\nlocal key=eventArgs.isTargetable and \"ifritDashBack\" or \"ifritDash\"\nreturn S.observed[key]==nil",
							dequeueIfLuaFalse = true,
							name = "Dash anchor pending",
							uuid = "d80a333b-1cf4-e1ad-aca5-9631153d2fb4",
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
							uuid = "72493e2d-ad90-4b49-9ee3-d00ac7a12128",
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
							name = "RPR only",
							uuid = "05dfda9b-8b1c-c057-8aeb-a1a76fa0c0df",
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
							uuid = "984cb8d3-4a87-644c-bb03-c1796f5723f4",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				eventType = 26,
				loop = true,
				mechanicTime = 409,
				name = "[RPR UWU] Resync Ifrit second dash and return",
				timeRange = true,
				timelineIndex = 63,
				timerEndOffset = 25,
				timerStartOffset = -15,
				uuid = "f9fbaea4-9512-192d-9db6-a23c41750266",
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
							actionLua = "local S=data.uwuRPRAutoSim\nS.resync(\"p2end\",TensorCore.API.TensorACR.getAutoSimTime())\nself.used=true",
							conditions = 
							{
								
								{
									"473f83fa-40ff-f76e-b782-ad6cb105e880",
									true,
								},
								
								{
									"9d2f1a59-e246-a11c-afe7-7458d0355526",
									true,
								},
								
								{
									"282dc7ba-56a7-01d2-a6aa-9441716fc997",
									true,
								},
								
								{
									"d07deca1-7218-ba4a-9f45-03601b0bc25d",
									true,
								},
								
								{
									"53f1b9db-5bac-5c25-a596-63fa75eb3b30",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "29ed6f93-520c-43a7-9493-aac56fe90d7d",
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
							uuid = "d07deca1-7218-ba4a-9f45-03601b0bc25d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuRPRAutoSim\nreturn S~=nil and S.observed.p2end==nil",
							name = "anchor pending",
							uuid = "53f1b9db-5bac-5c25-a596-63fa75eb3b30",
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
							uuid = "473f83fa-40ff-f76e-b782-ad6cb105e880",
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
							name = "RPR only",
							uuid = "9d2f1a59-e246-a11c-afe7-7458d0355526",
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
							uuid = "282dc7ba-56a7-01d2-a6aa-9441716fc997",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				eventType = 26,
				loop = true,
				mechanicTime = 409,
				name = "[RPR UWU] Resync p2end",
				timeRange = true,
				timelineIndex = 63,
				timerEndOffset = 75,
				timerStartOffset = 15,
				uuid = "98ebca3f-0759-326e-9136-1093a080a66c",
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
				name = "RPR AutoSim",
				uuid = "a9708cb3-16b0-ad06-a0f0-e8b0c54ca47b",
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
							actionLua = "local T=_G.UWU_RPR_TemporaryState\nif T and T.leyHold then\n TensorCore.API.TensorACR.holdActionUntil(3573,Now())\n T.leyHold=nil\nend\nlocal S=data.uwuRPRAutoSim\nS.resync(\"ifrit2Back\",TensorCore.API.TensorACR.getAutoSimTime())\nself.used=true",
							conditions = 
							{
								
								{
									"932655dd-86f7-5618-a927-adfc41c97601",
									true,
								},
								
								{
									"599c5a25-cb8c-0b6b-b8ad-26c4f3352ca5",
									true,
								},
								
								{
									"61ab9ce5-8431-f7c5-8a2f-16fe7e24dcb4",
									true,
								},
								
								{
									"270b7e05-f40a-3ecf-9061-62352fd2f931",
									true,
								},
								
								{
									"17636601-1e28-613d-b6c6-6c4d7605fe74",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "c3d8e102-3e8b-df18-b6fe-c2f27d9769f0",
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
							uuid = "270b7e05-f40a-3ecf-9061-62352fd2f931",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuRPRAutoSim\nreturn S~=nil and S.observed.ifrit2Back==nil",
							name = "anchor pending",
							uuid = "17636601-1e28-613d-b6c6-6c4d7605fe74",
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
							uuid = "932655dd-86f7-5618-a927-adfc41c97601",
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
							name = "RPR only",
							uuid = "599c5a25-cb8c-0b6b-b8ad-26c4f3352ca5",
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
							uuid = "61ab9ce5-8431-f7c5-8a2f-16fe7e24dcb4",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				eventType = 26,
				loop = true,
				mechanicTime = 600,
				name = "[RPR UWU] Resync ifrit2Back",
				timeRange = true,
				timelineIndex = 74,
				timerEndOffset = 15,
				timerStartOffset = -10,
				uuid = "f0bfd49d-5e95-7791-9329-526356b3abfe",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "RPR AutoSim",
				name = "Targeting",
				uuid = "2bf2523f-42ce-f2f3-83bf-a63b9978df16",
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
									"a294b972-f15f-25ec-8ce6-976b56432a96",
									true,
								},
								
								{
									"ecc31f64-446e-7e41-865b-3bf223c7c9e9",
									true,
								},
								
								{
									"150cfd46-df48-faf9-a150-03a628f69d4d",
									true,
								},
								
								{
									"89802aef-dcdc-74fb-aab9-a2e2316dc297",
									true,
								},
							},
							endIfUsed = true,
							name = "Target - Titan",
							setTarget = true,
							targetContentID = 1801,
							targetType = "ContentID",
							uuid = "c18295e8-e01d-d2d8-b18e-eb110a4ad41e",
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
							uuid = "ecc31f64-446e-7e41-865b-3bf223c7c9e9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local t=TensorCore.mGetTarget()\nreturn t==nil or not t.alive or not t.targetable",
							name = "No living hostile target",
							uuid = "150cfd46-df48-faf9-a150-03a628f69d4d",
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
							uuid = "89802aef-dcdc-74fb-aab9-a2e2316dc297",
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
							name = "RPR only",
							uuid = "a294b972-f15f-25ec-8ce6-976b56432a96",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim/Targeting",
				loop = true,
				mechanicTime = 600,
				name = "[RPR UWU] [Target] Titan Reacquire",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 74,
				timerEndOffset = 168,
				uuid = "dd3663fc-97f5-b017-9dfc-5ff63d41f851",
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
									"d4d47405-55b8-f11b-9c73-55caa87bfef0",
									true,
								},
								
								{
									"5f29ecfa-3a5a-13c0-8afa-b6ff29f31c1f",
									true,
								},
								
								{
									"9a6402ed-7dd5-1d46-8511-8e12589e8d9b",
									true,
								},
								
								{
									"25718bc9-f8a6-7a6a-95a6-444044412760",
									true,
								},
							},
							name = "Target Titan",
							setTarget = true,
							targetType = "Event Entity",
							uuid = "4840197f-a981-e9a4-baf9-0fcd472d4928",
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
							uuid = "5f29ecfa-3a5a-13c0-8afa-b6ff29f31c1f",
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
							uuid = "25718bc9-f8a6-7a6a-95a6-444044412760",
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
							uuid = "9a6402ed-7dd5-1d46-8511-8e12589e8d9b",
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
							name = "RPR only",
							uuid = "d4d47405-55b8-f11b-9c73-55caa87bfef0",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim/Targeting",
				eventType = 26,
				loop = true,
				mechanicTime = 600,
				name = "[RPR UWU] [Target] Titan - Acquire",
				timeRange = true,
				timelineIndex = 74,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "841e628a-2842-9a27-aa50-430378221f8b",
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
				name = "RPR AutoSim",
				uuid = "fafe73e2-a54a-22a5-b2d3-d3ee7e3cd10b",
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
							actionLua = "local S=data.uwuRPRAutoSim\nS.resync(\"titan1\",TensorCore.API.TensorACR.getAutoSimTime())\nself.used=true",
							conditions = 
							{
								
								{
									"99595892-1b21-0f9f-93f3-24747a99b930",
									true,
								},
								
								{
									"d4f68813-aeee-13ed-8a11-73d7a5449d0f",
									true,
								},
								
								{
									"a4a3ec8a-07bd-0b78-bdb4-24057016764c",
									true,
								},
								
								{
									"1ec18539-a3ac-879d-88dd-49fbd403d2f1",
									true,
								},
								
								{
									"36a0fc0c-2083-ea4b-8efb-7b613c726ce5",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "3a2bd217-6198-b554-b367-def4038c6797",
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
							uuid = "99595892-1b21-0f9f-93f3-24747a99b930",
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
							name = "RPR only",
							uuid = "d4f68813-aeee-13ed-8a11-73d7a5449d0f",
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
							uuid = "a4a3ec8a-07bd-0b78-bdb4-24057016764c",
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
							uuid = "1ec18539-a3ac-879d-88dd-49fbd403d2f1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuRPRAutoSim\nreturn S~=nil and S.observed.titan1==nil",
							name = "anchor pending",
							uuid = "36a0fc0c-2083-ea4b-8efb-7b613c726ce5",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				eventType = 26,
				loop = true,
				mechanicTime = 623.5,
				name = "[RPR UWU] Resync titan1",
				timeRange = true,
				timelineIndex = 79,
				timerEndOffset = 8,
				timerStartOffset = -8,
				uuid = "844d93ec-4c09-46d2-944b-746d2f0706f6",
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
				name = "RPR AutoSim",
				uuid = "2d2be1d0-ee16-6c99-b2e5-a03ab2a27445",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "RPR AutoSim",
				name = "Targeting",
				uuid = "05170bff-36d2-871b-83d1-02cfc307df5e",
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
									"ff547edf-8370-5a0d-8251-759fd875628c",
									true,
								},
								
								{
									"9d45a09d-eccf-c9c8-8c30-77341f60a37e",
									true,
								},
								
								{
									"c9219881-09e7-1762-9774-4e670d4b905b",
									true,
								},
								
								{
									"4f36b13d-5576-53e4-b080-16684e420af1",
									true,
								},
								
								{
									"7ef00275-cddc-5912-8713-72068514b9f1",
									true,
								},
							},
							name = "Target next Granite Gaol",
							setTarget = true,
							targetType = "Detection Target",
							uuid = "c13e7c47-0348-94fb-8f35-d5655bc61c8e",
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
									"ff547edf-8370-5a0d-8251-759fd875628c",
									true,
								},
								
								{
									"9d45a09d-eccf-c9c8-8c30-77341f60a37e",
									true,
								},
								
								{
									"c9219881-09e7-1762-9774-4e670d4b905b",
									true,
								},
								
								{
									"4f36b13d-5576-53e4-b080-16684e420af1",
									true,
								},
								
								{
									"7ef00275-cddc-5912-8713-72068514b9f1",
									false,
								},
							},
							name = "Restore Titan target",
							setTarget = true,
							targetContentID = 1801,
							targetType = "ContentID",
							uuid = "173f8c11-1b16-6eab-bb04-59956c58dcad",
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
							uuid = "9d45a09d-eccf-c9c8-8c30-77341f60a37e",
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
							uuid = "7ef00275-cddc-5912-8713-72068514b9f1",
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
							uuid = "c9219881-09e7-1762-9774-4e670d4b905b",
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
							uuid = "4f36b13d-5576-53e4-b080-16684e420af1",
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
							name = "RPR only",
							uuid = "ff547edf-8370-5a0d-8251-759fd875628c",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim/Targeting",
				enabled = false,
				eventType = 26,
				loop = true,
				mechanicTime = 639,
				name = "[RPR UWU] [Target] Titan Gaols - Advance",
				timeRange = true,
				timelineIndex = 85,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "75724ded-fb44-2ef5-aaa3-a631a1553d2a",
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
									"78c7448a-b0a1-944a-b3da-2da6821d6f56",
									true,
								},
								
								{
									"4c709686-c2c9-d46f-ba26-300afe7a1fec",
									true,
								},
								
								{
									"18e409db-9800-e8de-8991-5252b417391d",
									true,
								},
								
								{
									"7f69d5f5-d690-350f-9ce3-231b369abbae",
									true,
								},
							},
							name = "Target nearest Granite Gaol",
							setTarget = true,
							targetContentID = 1804,
							targetType = "ContentID",
							uuid = "16c1d120-334d-4ff5-930d-1cd686634713",
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
							uuid = "4c709686-c2c9-d46f-ba26-300afe7a1fec",
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
							uuid = "7f69d5f5-d690-350f-9ce3-231b369abbae",
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
							uuid = "18e409db-9800-e8de-8991-5252b417391d",
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
							name = "RPR only",
							uuid = "78c7448a-b0a1-944a-b3da-2da6821d6f56",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim/Targeting",
				enabled = false,
				eventType = 26,
				loop = true,
				mechanicTime = 639,
				name = "[RPR UWU] [Target] Titan Gaols - Acquire",
				timeRange = true,
				timelineIndex = 85,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "51943c5b-5b4a-29dd-9789-4f56a50ec9df",
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
							actionLua = "local S=data.uwuRPRAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal own=S.gaolEntityID and TensorCore.mGetEntity(S.gaolEntityID)\nlocal trapped=TensorCore.hasBuff(Player.id,292) or (own and own.alive and own.targetable and own.hp.current>0)\nif trapped then\n S.fettersActive=true\n if not S.dynamic.gaolStun then S.dynamic.gaolStun={\"Stun\",now,now+1,1};S.publish()\n elseif now>=S.dynamic.gaolStun[3]-.5 then S.dynamic.gaolStun[3]=now+1;S.publish() end\nelseif S.fettersActive then\n if S.dynamic.gaolMove then S.dynamic.gaolMove[3]=now+1 end\n S.dynamic.gaolStun=nil;S.fettersActive=nil;S.gaolCompleted=true\n S.publish();self.used=true\nend",
							conditions = 
							{
								
								{
									"0f7ea641-2c1f-8f59-9cf6-30446e37d01d",
									true,
								},
								
								{
									"f3215c70-692e-d670-99dc-20d39b7df387",
									true,
								},
								
								{
									"9d5da045-2877-18c5-969a-43e8e6227abe",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "a272740d-7b27-cd17-8cb4-d556eb8843ba",
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
							jobValue = "REAPER",
							name = "RPR only",
							uuid = "f3215c70-692e-d670-99dc-20d39b7df387",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuRPRAutoSim\nreturn S~=nil and (S.fettersActive==true or (S.gaolForecast==true and S.gaolCompleted~=true))",
							name = "stunned",
							uuid = "9d5da045-2877-18c5-969a-43e8e6227abe",
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
							uuid = "0f7ea641-2c1f-8f59-9cf6-30446e37d01d",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				loop = true,
				mechanicTime = 639,
				name = "[RPR UWU] End personal gaol downtime",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 85,
				timerEndOffset = 40,
				timerStartOffset = -5,
				uuid = "a1195807-4786-518e-b427-a4c22c7f6a71",
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
							actionLua = "local G=data.uwuRPRTripleGaols\nlocal id=eventArgs.entityID\nG.ids[id]=eventArgs.isTargetable\nlocal S=data.uwuRPRAutoSim\nif eventArgs.isTargetable and S and S.gaolForecast then\n local e=TensorCore.mGetEntity(id)\n local p=TensorCore.mGetPlayer()\n if e and p then\n  local dx,dz=e.pos.x-p.pos.x,e.pos.z-p.pos.z\n  local distance=dx*dx+dz*dz\n  if distance<=4 and (not S.gaolEntityDistance or distance<S.gaolEntityDistance) then\n   S.gaolEntityID=id;S.gaolEntityDistance=distance;S.gaolEntityObserved=true\n  end\n end\nend\n\nlocal count,up=0,0\nfor _,alive in pairs(G.ids) do count=count+1;if alive then up=up+1 end end\nif count>=3 and up==0 then\n TensorCore.API.TensorACR.deleteAOEBlacklistEntry(1804)\n TensorCore.API.TensorACR.deleteBlacklistEntry(1804)\n TensorCore.API.TensorACR.saveDotBlacklist()\n _G.UWU_RPR_TemporaryState.gaols=nil\n G.done=true\nend\nself.used=true",
							conditions = 
							{
								
								{
									"cd4ec459-5c6f-8e9e-b897-26d1523ce949",
									true,
								},
								
								{
									"6ade5214-9756-c217-b0fd-bd7bc663cc85",
									true,
								},
								
								{
									"e7db8ac5-c011-5bef-857a-0504d2497b30",
									true,
								},
								
								{
									"2a19dece-f43f-94a7-8b59-764025318281",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "60d1dd87-008c-9f42-8b23-314e9773c26a",
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
							jobValue = "REAPER",
							name = "RPR only",
							uuid = "6ade5214-9756-c217-b0fd-bd7bc663cc85",
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
							uuid = "e7db8ac5-c011-5bef-857a-0504d2497b30",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local G=data.uwuRPRTripleGaols\nreturn G~=nil and not G.done",
							name = "triple active",
							uuid = "2a19dece-f43f-94a7-8b59-764025318281",
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
							uuid = "cd4ec459-5c6f-8e9e-b897-26d1523ce949",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				eventType = 26,
				loop = true,
				mechanicTime = 639,
				name = "[RPR UWU] Unblock after all three gaols",
				timeRange = true,
				timelineIndex = 85,
				timerEndOffset = 35,
				timerStartOffset = -5,
				uuid = "10675036-770d-f1e3-9ed7-5943986794c4",
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
							actionLua = "local S=data.uwuRPRAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal duration=eventArgs.buffDuration\nif type(duration)~=\"number\" or duration<=0 then duration=5.574 end\nS.fettersActive=true\nS.dynamic.gaolStun={\"Stun\",now,now+duration,1}\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"5dd8dda3-2453-4578-a343-ee58b1de125a",
									true,
								},
								
								{
									"0820c930-02bf-c8cc-9200-4356bbab0c14",
									true,
								},
								
								{
									"90f39501-70f3-0ec5-bab6-6495b5400e75",
									true,
								},
								
								{
									"0a4a0bc3-bbbb-fbbb-a297-1bf1c27c3804",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "1c9a5024-7424-d57b-a927-81d0b64d6866",
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
							conditionLua = "return eventArgs.entityID==Player.id and eventArgs.buffID==292 and data.uwuRPRAutoSim~=nil",
							dequeueIfLuaFalse = true,
							name = "self fetters",
							uuid = "0a4a0bc3-bbbb-fbbb-a297-1bf1c27c3804",
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
							uuid = "5dd8dda3-2453-4578-a343-ee58b1de125a",
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
							uuid = "0820c930-02bf-c8cc-9200-4356bbab0c14",
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
							name = "RPR only",
							uuid = "90f39501-70f3-0ec5-bab6-6495b5400e75",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				eventType = 8,
				loop = true,
				mechanicTime = 639,
				name = "[RPR UWU] Observe personal Fetters stun",
				timeRange = true,
				timelineIndex = 85,
				timerEndOffset = 25,
				timerStartOffset = -5,
				uuid = "47dc5296-6301-3d15-98b5-1f6fe0697229",
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
							actionLua = "local S=data.uwuRPRAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime();S.gaolForecast=true\nS.dynamic.gaolStun={\"Stun\",now+4.942,now+10.516,1}\nS.dynamic.gaolMove={\"MeleeDowntime\",now,now+11.516,1}\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"9a2a281c-42ce-1075-b2d8-d74fd01c49f0",
									true,
								},
								
								{
									"9bb51376-a4b9-73c4-b214-1f33e7b96b0b",
									true,
								},
								
								{
									"79beef24-0ff8-458d-a6b1-6bdfe029b61b",
									true,
								},
								
								{
									"b1fda56c-05c1-13e5-836d-b8c1d9f67c1f",
									true,
								},
								
								{
									"a4fef3be-d262-b104-ab02-0a6c115b9e3f",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "00ce393c-a958-f5cd-a82e-450736f622d4",
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
							uuid = "79beef24-0ff8-458d-a6b1-6bdfe029b61b",
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
							uuid = "b1fda56c-05c1-13e5-836d-b8c1d9f67c1f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuRPRAutoSim\nreturn S~=nil and not S.gaolForecast",
							dequeueIfLuaFalse = true,
							name = "not forecast",
							uuid = "a4fef3be-d262-b104-ab02-0a6c115b9e3f",
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
							uuid = "9a2a281c-42ce-1075-b2d8-d74fd01c49f0",
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
							name = "RPR only",
							uuid = "9bb51376-a4b9-73c4-b214-1f33e7b96b0b",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				eventType = 2,
				loop = true,
				mechanicTime = 639,
				name = "[RPR UWU] Forecast personal gaol movement",
				timeRange = true,
				timelineIndex = 85,
				timerEndOffset = 10,
				timerStartOffset = -5,
				uuid = "e5217d36-964f-9777-aca2-09b54c6acefc",
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
							actionLua = "data.uwuRPRTripleGaols={ids={}}\nlocal T=_G.UWU_RPR_TemporaryState or {};_G.UWU_RPR_TemporaryState=T;T.gaols=true\nlocal entry=TensorCore.API.TensorACR.addAOEBlacklistEntry(1804,\"UWU triple player gaols\")\nentry.enabled=true\nlocal dot=TensorCore.API.TensorACR.addBlacklistEntry(1804,\"UWU triple player gaols\")\ndot.enabled=true;dot.allowIfTarget=false;dot.allowSmartDoT=false\nTensorCore.API.TensorACR.saveDotBlacklist()\nlocal S=data.uwuRPRAutoSim\nif S and eventArgs.targetID==Player.id and not S.gaolForecast then\n local now=TensorCore.API.TensorACR.getAutoSimTime()\n S.gaolForecast=true\n S.dynamic.gaolStun={\"Stun\",now+4.942,now+10.516,1}\n S.publish()\nend\nself.used=true",
							conditions = 
							{
								
								{
									"e88c43be-2c46-49b0-be68-d61f5c943ded",
									true,
								},
								
								{
									"16b3db4a-20e2-99d1-a677-cc90e948b22b",
									true,
								},
								
								{
									"d41fc933-31ec-123c-9662-dcd64a914d4c",
									true,
								},
								
								{
									"bfae782d-fb3a-2d7a-ae17-ec08b29fd3b7",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "1ffd7d8f-5110-ee8a-9336-6d162e3ba61a",
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
							conditionLua = "return data.uwuRPRTripleGaols==nil",
							name = "first triple",
							uuid = "bfae782d-fb3a-2d7a-ae17-ec08b29fd3b7",
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
							uuid = "e88c43be-2c46-49b0-be68-d61f5c943ded",
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
							name = "RPR only",
							uuid = "16b3db4a-20e2-99d1-a677-cc90e948b22b",
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
							uuid = "d41fc933-31ec-123c-9662-dcd64a914d4c",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				eventType = 2,
				loop = true,
				mechanicTime = 639,
				name = "[RPR UWU] Blacklist the triple gaols",
				timeRange = true,
				timelineIndex = 85,
				timerEndOffset = 10,
				timerStartOffset = -5,
				uuid = "99711eb0-aec7-c40f-bb8b-f263878a4095",
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
				name = "RPR AutoSim",
				uuid = "757a296d-fa66-5c9b-808e-d878de252de8",
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
							actionLua = "TensorCore.API.TensorACR.deleteAOEBlacklistEntry(1804)\n TensorCore.API.TensorACR.deleteBlacklistEntry(1804)\n TensorCore.API.TensorACR.saveDotBlacklist()\n_G.UWU_RPR_TemporaryState.gaols=nil\nif data.uwuRPRTripleGaols then data.uwuRPRTripleGaols.done=true end\nself.used=true",
							conditions = 
							{
								
								{
									"c0d2b6d6-0223-8f56-a738-dd7c2e3aebbf",
									true,
								},
								
								{
									"7934327c-b892-d995-b8e8-9be135e01004",
									true,
								},
								
								{
									"c3673924-9a31-9e3a-ab03-6a2f984c90fc",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "72a002c4-6d1c-fd29-a1c2-2178f6994fed",
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
							jobValue = "REAPER",
							name = "RPR only",
							uuid = "7934327c-b892-d995-b8e8-9be135e01004",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local T=_G.UWU_RPR_TemporaryState\nreturn T~=nil and T.gaols==true",
							name = "Owned gaol blacklist",
							uuid = "c3673924-9a31-9e3a-ab03-6a2f984c90fc",
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
							uuid = "c0d2b6d6-0223-8f56-a738-dd7c2e3aebbf",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				mechanicTime = 666,
				name = "[RPR UWU] Triple-gaol blacklist deadline",
				timeRange = true,
				timelineIndex = 90,
				timerStartOffset = -2,
				uuid = "0f0939cf-6433-441f-a37d-764344e83386",
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
				name = "RPR AutoSim",
				uuid = "37fa6e8d-bb44-e515-9da2-faa707cb8cc2",
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
							actionLua = "local S=data.uwuRPRAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal duration=eventArgs.buffDuration\nif type(duration)~=\"number\" or duration<=0 then duration=5.574 end\nS.fettersActive=true\nS.dynamic.gaolStun={\"Stun\",now,now+duration,1}\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"21063c23-a7c1-a364-9098-248d5d631c5b",
									true,
								},
								
								{
									"bef9c171-224a-6200-b48f-33001ec85d33",
									true,
								},
								
								{
									"2bd9a639-0bc3-f9ad-b7c3-b4bbc5bb3976",
									true,
								},
								
								{
									"23adbd60-b1ab-9b28-bbf9-13a7d1b15513",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "892b5066-3a4d-253a-a46e-f637da986a6d",
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
							uuid = "21063c23-a7c1-a364-9098-248d5d631c5b",
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
							uuid = "bef9c171-224a-6200-b48f-33001ec85d33",
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
							name = "RPR only",
							uuid = "2bd9a639-0bc3-f9ad-b7c3-b4bbc5bb3976",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityID==Player.id and eventArgs.buffID==292 and data.uwuRPRAutoSim~=nil",
							dequeueIfLuaFalse = true,
							name = "self fetters",
							uuid = "23adbd60-b1ab-9b28-bbf9-13a7d1b15513",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				eventType = 8,
				loop = true,
				mechanicTime = 684,
				name = "[RPR UWU] Observe healer gaol personal stun",
				timeRange = true,
				timelineIndex = 95,
				timerEndOffset = 25,
				timerStartOffset = -5,
				uuid = "09805cdd-13e2-afb8-b699-88c26191ce01",
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
							actionLua = "local S=data.uwuRPRAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal own=S.gaolEntityID and TensorCore.mGetEntity(S.gaolEntityID)\nlocal trapped=TensorCore.hasBuff(Player.id,292) or (own and own.alive and own.targetable and own.hp.current>0)\nif trapped then\n S.fettersActive=true\n if not S.dynamic.gaolStun then S.dynamic.gaolStun={\"Stun\",now,now+1,1};S.publish()\n elseif now>=S.dynamic.gaolStun[3]-.5 then S.dynamic.gaolStun[3]=now+1;S.publish() end\nelseif S.fettersActive then\n if S.dynamic.gaolMove then S.dynamic.gaolMove[3]=now+1 end\n S.dynamic.gaolStun=nil;S.fettersActive=nil;S.gaolCompleted=true\n S.publish();self.used=true\nend",
							conditions = 
							{
								
								{
									"478173b3-423c-d4f2-9527-466d13ef7401",
									true,
								},
								
								{
									"6b4f1767-2b52-df1e-b63e-7af0cb73c0aa",
									true,
								},
								
								{
									"c516f97a-7b7e-a9ae-812e-4e9692216a5a",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "10302432-73cc-6e90-9bde-66f428909020",
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
							jobValue = "REAPER",
							name = "RPR only",
							uuid = "6b4f1767-2b52-df1e-b63e-7af0cb73c0aa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuRPRAutoSim\nreturn S~=nil and S.fettersActive==true",
							name = "stunned",
							uuid = "c516f97a-7b7e-a9ae-812e-4e9692216a5a",
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
							uuid = "478173b3-423c-d4f2-9527-466d13ef7401",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				loop = true,
				mechanicTime = 684,
				name = "[RPR UWU] End healer gaol personal stun",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 95,
				timerEndOffset = 25,
				timerStartOffset = -5,
				uuid = "3542d51c-6c0c-5b3f-9566-5a754ec575bc",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "RPR AutoSim",
				name = "Targeting",
				uuid = "d218489b-403b-6208-a922-08162a061f19",
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
							actionLua = "local T=_G.UWU_RPR_TemporaryState or {}\n_G.UWU_RPR_TemporaryState=T\nif not T.gaolPriorityOptions then\n local toggles=TensorCore.API.TensorACR.getQuickToggles()\n if not toggles then return end\n T.gaolPriorityOptions={}\n for _,toggle in ipairs(toggles) do\n  local k=toggle.var\n  if string.match(k,\"_AOE$\") or string.match(k,\"_SmartAOE$\") then\n   if type(_G[k])==\"boolean\" then T.gaolPriorityOptions[k]=_G[k] end\n  end\n end\nend\nfor k in pairs(T.gaolPriorityOptions) do _G[k]=false end\nself.used=true",
							conditions = 
							{
								
								{
									"70c9f596-17c8-eed3-a11d-30a97babebc2",
									true,
								},
								
								{
									"2091876c-fcc6-0aeb-a134-8a463ef4fa03",
									true,
								},
								
								{
									"62b90450-4241-32f3-a908-1f01b63889c0",
									true,
								},
								
								{
									"f86caeed-e809-357b-873d-3fe2e65b372a",
									true,
								},
								
								{
									"d566b24a-fd8f-d05c-af9d-d16f486e5557",
									true,
								},
							},
							name = "Gaol single-target only",
							uuid = "86b66196-c435-aac8-a529-48320934f17b",
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
									"70c9f596-17c8-eed3-a11d-30a97babebc2",
									true,
								},
								
								{
									"2091876c-fcc6-0aeb-a134-8a463ef4fa03",
									true,
								},
								
								{
									"62b90450-4241-32f3-a908-1f01b63889c0",
									true,
								},
								
								{
									"f86caeed-e809-357b-873d-3fe2e65b372a",
									true,
								},
								
								{
									"d566b24a-fd8f-d05c-af9d-d16f486e5557",
									true,
								},
							},
							name = "Target newly targetable gaol",
							setTarget = true,
							targetType = "Event Entity",
							uuid = "ad8db91f-c292-1a3f-b9e5-f16f5066a384",
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
							uuid = "62b90450-4241-32f3-a908-1f01b63889c0",
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
							uuid = "f86caeed-e809-357b-873d-3fe2e65b372a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local Roster = AnyoneCore.Roster\nif not Roster or not Roster.current() then return false end\nlocal slot = Roster.mySlot()\nif not slot then return false end\nreturn slot == \"H1\" or slot == \"H2\" or slot == \"M1\" or slot == \"M2\" or slot == \"R1\" or slot == \"R2\"",
							name = "Roster: DPS/healers",
							uuid = "d566b24a-fd8f-d05c-af9d-d16f486e5557",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "2091876c-fcc6-0aeb-a134-8a463ef4fa03",
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
							name = "RPR only",
							uuid = "70c9f596-17c8-eed3-a11d-30a97babebc2",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim/Targeting",
				eventType = 26,
				mechanicTime = 684,
				name = "[RPR UWU] [Target][Titan] Granite Gaol - Non-Tanks",
				timeRange = true,
				timelineIndex = 95,
				timerEndOffset = 13,
				timerStartOffset = 3,
				uuid = "1afd7651-0bf9-941d-9189-39712f411ee2",
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
							actionLua = "local T=_G.UWU_RPR_TemporaryState\nif T and T.gaolPriorityOptions then\n for k,v in pairs(T.gaolPriorityOptions) do _G[k]=v end\n T.gaolPriorityOptions=nil\nend\nself.used=true",
							conditions = 
							{
								
								{
									"992ddd6b-311a-4b14-9aa6-93c3c6bba83b",
									true,
								},
								
								{
									"93289ab1-d2be-94f5-965c-020c20b0abb2",
									true,
								},
								
								{
									"18cc2e4d-69ec-03a5-b854-c7fb8868c17d",
									true,
								},
								
								{
									"19564033-ae90-7fc9-a1ab-0b439c0c7034",
									true,
								},
								
								{
									"7d4fbacd-bf54-28dd-bdda-4fe3196814bc",
									false,
								},
							},
							name = "Restore pre-gaol AoE settings",
							uuid = "361a59cf-e812-3d7f-85a9-bbe6916f4af5",
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
									"992ddd6b-311a-4b14-9aa6-93c3c6bba83b",
									true,
								},
								
								{
									"93289ab1-d2be-94f5-965c-020c20b0abb2",
									true,
								},
								
								{
									"18cc2e4d-69ec-03a5-b854-c7fb8868c17d",
									true,
								},
								
								{
									"19564033-ae90-7fc9-a1ab-0b439c0c7034",
									true,
								},
								
								{
									"7d4fbacd-bf54-28dd-bdda-4fe3196814bc",
									true,
								},
							},
							name = "Target next Granite Gaol",
							setTarget = true,
							targetType = "Detection Target",
							uuid = "b173066c-9280-6dc8-9a3e-79d16b8e68e6",
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
									"992ddd6b-311a-4b14-9aa6-93c3c6bba83b",
									true,
								},
								
								{
									"93289ab1-d2be-94f5-965c-020c20b0abb2",
									true,
								},
								
								{
									"18cc2e4d-69ec-03a5-b854-c7fb8868c17d",
									true,
								},
								
								{
									"19564033-ae90-7fc9-a1ab-0b439c0c7034",
									true,
								},
								
								{
									"7d4fbacd-bf54-28dd-bdda-4fe3196814bc",
									false,
								},
							},
							name = "Restore Titan target",
							setTarget = true,
							targetContentID = 1801,
							targetType = "ContentID",
							uuid = "58b5055b-691e-1770-930b-80a131f440c4",
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
							uuid = "93289ab1-d2be-94f5-965c-020c20b0abb2",
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
							uuid = "18cc2e4d-69ec-03a5-b854-c7fb8868c17d",
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
							uuid = "19564033-ae90-7fc9-a1ab-0b439c0c7034",
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
							uuid = "7d4fbacd-bf54-28dd-bdda-4fe3196814bc",
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
							name = "RPR only",
							uuid = "992ddd6b-311a-4b14-9aa6-93c3c6bba83b",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim/Targeting",
				eventType = 26,
				loop = true,
				mechanicTime = 684,
				name = "[RPR UWU] [Target] Healer Gaol - Advance",
				timeRange = true,
				timelineIndex = 95,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "576fe84f-9e2e-50db-acd7-2c4542a5d72c",
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
				name = "RPR AutoSim",
				uuid = "fcf12db4-08c8-c219-9d8b-48e722635065",
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
							actionLua = "local S=data.uwuRPRAutoSim\nS.resync(\"p3end\",TensorCore.API.TensorACR.getAutoSimTime())\nself.used=true",
							conditions = 
							{
								
								{
									"c49977cd-4ba0-b258-a230-ac1afff3c11e",
									true,
								},
								
								{
									"8fb9d5a7-875c-1a6c-b879-288ddeadcc13",
									true,
								},
								
								{
									"c7653b8d-cedf-ec36-8493-27dd079c346b",
									true,
								},
								
								{
									"d60b1154-f70e-312d-a962-7fec1efb733b",
									true,
								},
								
								{
									"4713e8fc-e19a-5143-8fe1-771397372923",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "70d93e85-4277-f099-a29c-0344cdbe803a",
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
							uuid = "c49977cd-4ba0-b258-a230-ac1afff3c11e",
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
							name = "RPR only",
							uuid = "8fb9d5a7-875c-1a6c-b879-288ddeadcc13",
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
							uuid = "c7653b8d-cedf-ec36-8493-27dd079c346b",
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
							uuid = "d60b1154-f70e-312d-a962-7fec1efb733b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuRPRAutoSim\nreturn S~=nil and S.observed.p3end==nil",
							name = "anchor pending",
							uuid = "4713e8fc-e19a-5143-8fe1-771397372923",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				eventType = 26,
				loop = true,
				mechanicTime = 768,
				name = "[RPR UWU] Resync p3end",
				timeRange = true,
				timelineIndex = 113,
				timerEndOffset = 30,
				timerStartOffset = -65,
				uuid = "fcdb8eb3-505d-db98-a2c3-5d1b4dd5f7a2",
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
				name = "RPR AutoSim",
				uuid = "74b6c250-9de2-c06b-ab5d-df535b30583a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "RPR AutoSim",
				name = "Targeting",
				uuid = "f9e9ba32-29c7-c4b9-9ce0-be45e3c72d3d",
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
									"f7e82659-8040-a367-99de-957728e16f1e",
									true,
								},
								
								{
									"a6dbfedf-e686-905a-88b7-1f8fdc6f8781",
									true,
								},
								
								{
									"626dcb4f-ff15-0b59-bfbe-099a94ff1f55",
									true,
								},
								
								{
									"a0c15258-500e-1b49-9b9e-2ae23ccbddb7",
									true,
								},
							},
							name = "Target nearest Magitek Bit",
							setTarget = true,
							targetContentID = 5563,
							targetType = "ContentID",
							uuid = "bbb2d13e-5808-bbd7-aa39-38c9c3806d33",
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
							uuid = "a6dbfedf-e686-905a-88b7-1f8fdc6f8781",
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
							uuid = "626dcb4f-ff15-0b59-bfbe-099a94ff1f55",
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
							uuid = "a0c15258-500e-1b49-9b9e-2ae23ccbddb7",
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
							name = "RPR only",
							uuid = "f7e82659-8040-a367-99de-957728e16f1e",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim/Targeting",
				eventType = 26,
				loop = true,
				mechanicTime = 800,
				name = "[RPR UWU] [Target] Magitek Bits",
				timeRange = true,
				timelineIndex = 114,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "51b097a9-080c-74e2-b30c-2a92c27d5c8d",
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
							actionLua = "local S=data.uwuRPRAutoSim\nS.bits=S.bits or {}\nlocal id=eventArgs.entityID\nif eventArgs.isTargetable then\n S.bits[id]=true;S.resync(\"titan3Back\",TensorCore.API.TensorACR.getAutoSimTime())\nelseif S.bits[id]~=nil then\n S.bits[id]=false\n local count=0\n for _,up in pairs(S.bits) do if up then self.used=true;return end;count=count+1 end\n if count==6 then S.resync(\"magitekBit1\",TensorCore.API.TensorACR.getAutoSimTime()) end\nend\nself.used=true",
							conditions = 
							{
								
								{
									"41cacad6-f923-f189-917f-64cc621bfdc4",
									true,
								},
								
								{
									"a4f284e6-a75a-dc61-ba52-d3d4f41aaa7a",
									true,
								},
								
								{
									"95c423ad-be20-55d0-8fca-0bf47606fa55",
									true,
								},
								
								{
									"b6a795d2-5f57-972c-9e44-c1118e2e33c4",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "90b0a353-f5b8-c9d4-b961-e5dd67057d57",
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
							jobValue = "REAPER",
							name = "RPR only",
							uuid = "a4f284e6-a75a-dc61-ba52-d3d4f41aaa7a",
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
							uuid = "95c423ad-be20-55d0-8fca-0bf47606fa55",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.uwuRPRAutoSim~=nil",
							name = "configured",
							uuid = "b6a795d2-5f57-972c-9e44-c1118e2e33c4",
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
							uuid = "41cacad6-f923-f189-917f-64cc621bfdc4",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				eventType = 26,
				loop = true,
				mechanicTime = 800,
				name = "[RPR UWU] Resync six Magitek Bits",
				timeRange = true,
				timelineIndex = 114,
				timerEndOffset = 25,
				timerStartOffset = -20,
				uuid = "be1ee009-c85c-d6ec-8999-669d0edf51d0",
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
				name = "RPR AutoSim",
				uuid = "9c3f51da-9c57-b5e1-a21b-c8a510574f59",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "RPR AutoSim",
				name = "Targeting",
				uuid = "39d9a34b-fc28-76ad-b108-1c013b9274e3",
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
									"98d93067-92a3-26ee-b3ac-be8f0c46a618",
									true,
								},
								
								{
									"4964e7e7-b6da-b02f-85a3-4101d8fe4bd0",
									true,
								},
								
								{
									"01c6ffaf-9d1c-afe2-98d1-a4036e20b74e",
									true,
								},
							},
							name = "Target Lahabrea",
							setTarget = true,
							targetContentID = 2143,
							targetType = "ContentID",
							uuid = "c9095b00-4f66-5244-b16b-f945e6942add",
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
							uuid = "01c6ffaf-9d1c-afe2-98d1-a4036e20b74e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "4964e7e7-b6da-b02f-85a3-4101d8fe4bd0",
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
							name = "RPR only",
							uuid = "98d93067-92a3-26ee-b3ac-be8f0c46a618",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim/Targeting",
				mechanicTime = 840,
				name = "[RPR UWU] [Target] Lahabrea on Targetable",
				timeRange = true,
				timelineIndex = 116,
				timerEndOffset = -10,
				timerStartOffset = -19,
				uuid = "abb42764-8d8b-91c2-97a5-30175c0288f1",
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
							actionLua = "local S=data.uwuRPRAutoSim\nS.resync(\"p4end\",TensorCore.API.TensorACR.getAutoSimTime())\nself.used=true",
							conditions = 
							{
								
								{
									"aad7cd3c-6e9b-6e7e-8e0d-5c9bcfa31c9d",
									true,
								},
								
								{
									"d66c1705-04ef-44cb-8a7f-9b07d22405ab",
									true,
								},
								
								{
									"4ddd2e9c-6692-ddb5-8c91-c06b26ed2f62",
									true,
								},
								
								{
									"6bdac9dd-e555-e8ac-9b11-f67e06b5e55e",
									true,
								},
								
								{
									"de39a619-8a6e-6ba9-9752-79a8ffc3676e",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "ab5b04cc-a14f-2430-a5e3-7f3bfd88f1dc",
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
							uuid = "aad7cd3c-6e9b-6e7e-8e0d-5c9bcfa31c9d",
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
							name = "RPR only",
							uuid = "d66c1705-04ef-44cb-8a7f-9b07d22405ab",
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
							uuid = "4ddd2e9c-6692-ddb5-8c91-c06b26ed2f62",
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
							uuid = "6bdac9dd-e555-e8ac-9b11-f67e06b5e55e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuRPRAutoSim\nreturn S~=nil and S.observed.p4end==nil",
							name = "anchor pending",
							uuid = "de39a619-8a6e-6ba9-9752-79a8ffc3676e",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				eventType = 26,
				loop = true,
				mechanicTime = 840,
				name = "[RPR UWU] Resync p4end",
				timeRange = true,
				timelineIndex = 116,
				timerEndOffset = 25,
				timerStartOffset = -15,
				uuid = "6d5e1115-f101-ac55-b15f-c4bbfa346206",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "RPR AutoSim",
				name = "P4 Lahabrea",
				uuid = "de4bd617-bb84-4535-9179-e2fbbbd31c6a",
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
							actionLua = "local roster=AnyoneCore.Roster\nif not roster or not roster.current() or (roster.mySlot()~=\"M1\" and roster.mySlot()~=\"M2\") then return end\nlocal S=data.uwuRPRAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nS.lbObserved=true;S.lbCompleted=true\nS.dynamic.meleeLBLock={\"Stun\",S.lbStarted or now-4.5,now+3.7,1}\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"4cd3e4dd-eadb-fc71-95d1-e2f6f6b3be89",
									true,
								},
								
								{
									"968439a2-9946-849d-a6cd-5de4606e1b7e",
									true,
								},
								
								{
									"7cc6f98e-914a-7498-ab52-adb3ba8138e0",
									true,
								},
								
								{
									"23442473-2850-32f2-a82a-80454e5fe2c8",
									true,
								},
							},
							name = "Correct personal melee LB stun",
							uuid = "bde25a85-8a62-335a-b82a-2857404bc75d",
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
							uuid = "4cd3e4dd-eadb-fc71-95d1-e2f6f6b3be89",
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
							name = "RPR only",
							uuid = "968439a2-9946-849d-a6cd-5de4606e1b7e",
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
							name = "melee LB",
							spellIDList = 
							{
								24858,
							},
							uuid = "7cc6f98e-914a-7498-ab52-adb3ba8138e0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityID==Player.id and data.uwuRPRAutoSim~=nil",
							dequeueIfLuaFalse = true,
							name = "Personal melee LB",
							uuid = "23442473-2850-32f2-a82a-80454e5fe2c8",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim/P4 Lahabrea",
				eventType = 2,
				loop = true,
				mechanicTime = 840,
				name = "[RPR UWU] melee LB finish animation-lock forecast",
				timeRange = true,
				timelineIndex = 116,
				timerEndOffset = 25,
				timerStartOffset = -30,
				uuid = "89240ea7-74b9-82f5-89b0-73ce70dfbd09",
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
							actionLua = "local S=data.uwuRPRAutoSim\nlocal p=TensorCore.mGetPlayer()\nif not p then return end\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal elapsed=now-S.lbStarted\nlocal cast=p.castinginfo\nif cast.castingid==24858 or cast.channelingid==24858 then\n S.lbCastingSeen=true\n return\nend\n-- Allow queued cast-completion events to arrive before interpreting a stopped cast.\nif elapsed<0.5 then return end\nif elapsed>=4.25 and elapsed<5.25 and p.alive then return end\nif elapsed>=4.25 and p.alive and cast.lastcastid==24858 then\n S.lbCompleted=true\n S.dynamic.meleeLBLock={\"Stun\",S.lbStarted,S.lbStarted+8.2,1}\nelse\n S.lbCancelled=true\n S.dynamic.meleeLBLock=nil\nend\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"af81a87a-215b-dc25-b915-2890fe568585",
									true,
								},
								
								{
									"d610382c-da31-ce9c-9842-32b5dd794f81",
									true,
								},
								
								{
									"90b3641b-8906-6902-a4df-76bf05813886",
									true,
								},
							},
							name = "Resolve melee LB completion or cancellation",
							uuid = "95aea8f1-9557-e073-9eed-4c25bab88b7b",
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
							uuid = "af81a87a-215b-dc25-b915-2890fe568585",
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
							name = "RPR only",
							uuid = "d610382c-da31-ce9c-9842-32b5dd794f81",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuRPRAutoSim\nreturn S~=nil and S.lbStarted~=nil and not S.lbCompleted and not S.lbCancelled",
							name = "Personal melee LB pending",
							uuid = "90b3641b-8906-6902-a4df-76bf05813886",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim/P4 Lahabrea",
				loop = true,
				mechanicTime = 840,
				name = "[RPR UWU] Clear cancelled melee LB lock",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 116,
				timerEndOffset = 25,
				timerStartOffset = -30,
				uuid = "378937e7-057d-c0b8-9be1-717342801cbd",
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
							actionLua = "local roster=AnyoneCore.Roster\nif not roster or not roster.current() or (roster.mySlot()~=\"M1\" and roster.mySlot()~=\"M2\") then return end\nlocal S=data.uwuRPRAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nS.lbObserved=true;S.lbStarted=now;S.lbCompleted=nil;S.lbCancelled=nil;S.lbCastingSeen=nil\nS.dynamic.meleeLBLock={\"Stun\",now,now+8.2,1}\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"73115b12-54fc-f05a-842a-847f0e6ac461",
									true,
								},
								
								{
									"3f854733-e5fb-3b5c-abeb-9e4d3b3da87a",
									true,
								},
								
								{
									"6230c44e-c50e-21eb-ae08-cff739607270",
									true,
								},
								
								{
									"67870ed4-0fd2-c71c-abd6-9c5cda99e748",
									true,
								},
							},
							name = "Correct personal melee LB stun",
							uuid = "141461ae-a440-e460-9e0e-7f5ffcf4a730",
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
							uuid = "73115b12-54fc-f05a-842a-847f0e6ac461",
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
							name = "RPR only",
							uuid = "3f854733-e5fb-3b5c-abeb-9e4d3b3da87a",
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
							name = "melee LB",
							spellIDList = 
							{
								24858,
							},
							uuid = "6230c44e-c50e-21eb-ae08-cff739607270",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityID==Player.id and data.uwuRPRAutoSim~=nil",
							dequeueIfLuaFalse = true,
							name = "Personal melee LB",
							uuid = "67870ed4-0fd2-c71c-abd6-9c5cda99e748",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim/P4 Lahabrea",
				eventType = 3,
				loop = true,
				mechanicTime = 840,
				name = "[RPR UWU] melee LB start animation-lock forecast",
				timeRange = true,
				timelineIndex = 116,
				timerEndOffset = 25,
				timerStartOffset = -30,
				uuid = "81c645da-c571-a227-92e9-26d3b66b7beb",
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
				name = "RPR AutoSim",
				uuid = "ecc02911-6dea-9476-b3e6-0a570862c439",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "RPR AutoSim",
				name = "Targeting",
				uuid = "c093e8b3-b8fd-7313-86f5-7e184cce3586",
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
									"a98dadbc-84be-c6df-b69b-8d617ccdffad",
									true,
								},
								
								{
									"fbb34b22-1e6d-2f2b-97ea-6fdc6a1dade9",
									true,
								},
								
								{
									"5584fe38-805f-192e-8eeb-c5a08c1a5253",
									true,
								},
								
								{
									"5a298de6-921d-aa26-9818-9d3dfb51083b",
									true,
								},
							},
							endIfUsed = true,
							name = "Target - Ultima",
							setTarget = true,
							targetContentID = 2137,
							targetType = "ContentID",
							uuid = "6a5eb36b-51d0-5504-8230-f7891d0d5a7a",
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
							uuid = "fbb34b22-1e6d-2f2b-97ea-6fdc6a1dade9",
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
							uuid = "5a298de6-921d-aa26-9818-9d3dfb51083b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local t=TensorCore.mGetTarget()\nreturn t==nil or not t.alive or not t.targetable",
							name = "No living hostile target",
							uuid = "5584fe38-805f-192e-8eeb-c5a08c1a5253",
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
							name = "RPR only",
							uuid = "a98dadbc-84be-c6df-b69b-8d617ccdffad",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim/Targeting",
				loop = true,
				mechanicTime = 1000,
				name = "[RPR UWU] [Target] Ultima Reacquire",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 118,
				timerEndOffset = 650,
				uuid = "ac87a767-5cc6-33c1-b109-b1fdfbc1d1f6",
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
									"982b9bfc-b893-c914-9642-dc4d85da2e8c",
									true,
								},
								
								{
									"364bc3ab-f500-1ce1-b087-c074afdeed48",
									true,
								},
								
								{
									"e13c0afa-2bfa-7b7e-9748-3bca6aeac0d7",
									true,
								},
								
								{
									"74760b70-5ac8-8a5d-9f7e-817b1440e0d3",
									true,
								},
							},
							name = "Target Ultima",
							setTarget = true,
							targetType = "Event Entity",
							uuid = "47af1aa7-1534-1c6b-904f-1462625a6c5d",
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
							uuid = "364bc3ab-f500-1ce1-b087-c074afdeed48",
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
							uuid = "e13c0afa-2bfa-7b7e-9748-3bca6aeac0d7",
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
							uuid = "74760b70-5ac8-8a5d-9f7e-817b1440e0d3",
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
							name = "RPR only",
							uuid = "982b9bfc-b893-c914-9642-dc4d85da2e8c",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim/Targeting",
				eventType = 26,
				loop = true,
				mechanicTime = 1000,
				name = "[RPR UWU] [Target] Ultima - Acquire",
				timeRange = true,
				timelineIndex = 118,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "a6fa0e40-e96e-a18e-b8a1-3f9d1ff502f1",
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
				uuid = "bce73371-41fc-b6af-b02b-de3041667d77",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "RPR AutoSim",
				name = "Targeting",
				uuid = "6f8bf685-67af-3dcb-8d3a-e1fe36a8920b",
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
							actionLua = "local T=_G.UWU_RPR_TemporaryState or {}\n_G.UWU_RPR_TemporaryState=T\nif not T.gaolPriorityOptions then\n local toggles=TensorCore.API.TensorACR.getQuickToggles()\n if not toggles then return end\n T.gaolPriorityOptions={}\n for _,toggle in ipairs(toggles) do\n  local k=toggle.var\n  if string.match(k,\"_AOE$\") or string.match(k,\"_SmartAOE$\") then\n   if type(_G[k])==\"boolean\" then T.gaolPriorityOptions[k]=_G[k] end\n  end\n end\nend\nfor k in pairs(T.gaolPriorityOptions) do _G[k]=false end\nself.used=true",
							conditions = 
							{
								
								{
									"7c9f4767-0755-d743-8580-4c15b454edd1",
									true,
								},
								
								{
									"94d699d8-a036-5f43-ab93-ba7c66fe1c7f",
									true,
								},
								
								{
									"caf71ac6-bf78-e115-a4b0-31b56e72dfd6",
									true,
								},
								
								{
									"fc12e1f7-0108-dadc-b321-0bd8ae6d257c",
									true,
								},
							},
							name = "Gaol single-target only",
							uuid = "115d70bb-6093-8669-827b-f6416ba28c1f",
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
									"7c9f4767-0755-d743-8580-4c15b454edd1",
									true,
								},
								
								{
									"94d699d8-a036-5f43-ab93-ba7c66fe1c7f",
									true,
								},
								
								{
									"caf71ac6-bf78-e115-a4b0-31b56e72dfd6",
									true,
								},
								
								{
									"fc12e1f7-0108-dadc-b321-0bd8ae6d257c",
									true,
								},
							},
							name = "Target nearest Granite Gaol",
							setTarget = true,
							targetContentID = 1804,
							targetType = "Event Entity",
							uuid = "418f5183-f7f2-adb5-8b69-6c3b2038a816",
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
							uuid = "94d699d8-a036-5f43-ab93-ba7c66fe1c7f",
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
							uuid = "fc12e1f7-0108-dadc-b321-0bd8ae6d257c",
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
							uuid = "caf71ac6-bf78-e115-a4b0-31b56e72dfd6",
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
							name = "RPR only",
							uuid = "7c9f4767-0755-d743-8580-4c15b454edd1",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim/Targeting",
				eventType = 26,
				loop = true,
				mechanicTime = 1206,
				name = "[RPR UWU] [Target] Suppression Gaol - Acquire",
				timeRange = true,
				timelineIndex = 190,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "c6b5fdd9-93b1-ada6-8a11-480c7ec3d448",
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
							actionLua = "local T=_G.UWU_RPR_TemporaryState\nif T and T.gaolPriorityOptions then\n for k,v in pairs(T.gaolPriorityOptions) do _G[k]=v end\n T.gaolPriorityOptions=nil\nend\nself.used=true",
							conditions = 
							{
								
								{
									"039abb86-4a15-866f-9524-9a7fe67d3a4e",
									true,
								},
								
								{
									"028a28b0-d21a-bc61-9d4f-fa59330e0ab7",
									true,
								},
								
								{
									"e6a70fe1-cbce-b194-aa27-f5464faf97d1",
									true,
								},
								
								{
									"4e70f276-b169-65bf-967f-28010ef8e97f",
									true,
								},
								
								{
									"779c32f6-5bd3-8baf-94a5-b1ff2d8dccd3",
									false,
								},
							},
							name = "Restore pre-gaol AoE settings",
							uuid = "530b07a7-15e1-28ec-8bd8-cbdae341e533",
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
									"039abb86-4a15-866f-9524-9a7fe67d3a4e",
									true,
								},
								
								{
									"028a28b0-d21a-bc61-9d4f-fa59330e0ab7",
									true,
								},
								
								{
									"e6a70fe1-cbce-b194-aa27-f5464faf97d1",
									true,
								},
								
								{
									"4e70f276-b169-65bf-967f-28010ef8e97f",
									true,
								},
								
								{
									"779c32f6-5bd3-8baf-94a5-b1ff2d8dccd3",
									true,
								},
							},
							name = "Target next Granite Gaol",
							setTarget = true,
							targetType = "Detection Target",
							uuid = "f9e38308-6d41-9a82-baf4-91fc0a78d842",
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
									"039abb86-4a15-866f-9524-9a7fe67d3a4e",
									true,
								},
								
								{
									"028a28b0-d21a-bc61-9d4f-fa59330e0ab7",
									true,
								},
								
								{
									"e6a70fe1-cbce-b194-aa27-f5464faf97d1",
									true,
								},
								
								{
									"4e70f276-b169-65bf-967f-28010ef8e97f",
									true,
								},
								
								{
									"779c32f6-5bd3-8baf-94a5-b1ff2d8dccd3",
									false,
								},
							},
							name = "Restore Ultima target",
							setTarget = true,
							targetContentID = 2137,
							targetType = "ContentID",
							uuid = "87bc21a9-64cc-d2ee-a35d-6d464bcb52be",
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
							uuid = "028a28b0-d21a-bc61-9d4f-fa59330e0ab7",
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
							uuid = "e6a70fe1-cbce-b194-aa27-f5464faf97d1",
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
							uuid = "4e70f276-b169-65bf-967f-28010ef8e97f",
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
							uuid = "779c32f6-5bd3-8baf-94a5-b1ff2d8dccd3",
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
							name = "RPR only",
							uuid = "039abb86-4a15-866f-9524-9a7fe67d3a4e",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim/Targeting",
				eventType = 26,
				loop = true,
				mechanicTime = 1206,
				name = "[RPR UWU] [Target] Suppression Gaol - Advance",
				timeRange = true,
				timelineIndex = 190,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "0a90d9e7-362f-1d6e-8ee3-e6bcb0c864db",
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
							actionLua = "local S=data.uwuRPRAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal own=S.gaolEntityID and TensorCore.mGetEntity(S.gaolEntityID)\nlocal trapped=TensorCore.hasBuff(Player.id,292) or (own and own.alive and own.targetable and own.hp.current>0)\nif trapped then\n S.fettersActive=true\n if not S.dynamic.gaolStun then S.dynamic.gaolStun={\"Stun\",now,now+1,1};S.publish()\n elseif now>=S.dynamic.gaolStun[3]-.5 then S.dynamic.gaolStun[3]=now+1;S.publish() end\nelseif S.fettersActive then\n if S.dynamic.gaolMove then S.dynamic.gaolMove[3]=now+1 end\n S.dynamic.gaolStun=nil;S.fettersActive=nil;S.gaolCompleted=true\n S.publish();self.used=true\nend",
							conditions = 
							{
								
								{
									"faf30448-055a-614f-8342-7d6dcb883124",
									true,
								},
								
								{
									"9708f070-8959-5ba3-932c-5be0acbd135a",
									true,
								},
								
								{
									"2ac0dcc4-c990-ab8f-a373-46954dc45428",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "635bdfaf-d619-c6e5-bb9f-c66b7d1528b6",
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
							jobValue = "REAPER",
							name = "RPR only",
							uuid = "9708f070-8959-5ba3-932c-5be0acbd135a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuRPRAutoSim\nreturn S~=nil and S.fettersActive==true",
							name = "stunned",
							uuid = "2ac0dcc4-c990-ab8f-a373-46954dc45428",
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
							uuid = "faf30448-055a-614f-8342-7d6dcb883124",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				loop = true,
				mechanicTime = 1206,
				name = "[RPR UWU] End Suppression gaol personal stun",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 190,
				timerEndOffset = 35,
				timerStartOffset = -5,
				uuid = "a2256cfe-7e66-b2f7-af29-7229875450ff",
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
							actionLua = "local S=data.uwuRPRAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal duration=eventArgs.buffDuration\nif type(duration)~=\"number\" or duration<=0 then duration=5.574 end\nS.fettersActive=true\nS.dynamic.gaolStun={\"Stun\",now,now+duration,1}\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"2299ac1a-60de-02c1-bd45-a348444a137e",
									true,
								},
								
								{
									"317cc89f-2ef6-6a59-80d0-f7d1f58b2163",
									true,
								},
								
								{
									"51da02b0-563c-249d-ac0e-29bc76961536",
									true,
								},
								
								{
									"fdf5019f-7291-c4dc-ae92-2db02cc2632b",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "82da9627-2388-6725-b923-49e2a9af635d",
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
							uuid = "2299ac1a-60de-02c1-bd45-a348444a137e",
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
							uuid = "317cc89f-2ef6-6a59-80d0-f7d1f58b2163",
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
							name = "RPR only",
							uuid = "51da02b0-563c-249d-ac0e-29bc76961536",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityID==Player.id and eventArgs.buffID==292 and data.uwuRPRAutoSim~=nil",
							dequeueIfLuaFalse = true,
							name = "self fetters",
							uuid = "fdf5019f-7291-c4dc-ae92-2db02cc2632b",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				eventType = 8,
				loop = true,
				mechanicTime = 1206,
				name = "[RPR UWU] Observe Suppression gaol personal stun",
				timeRange = true,
				timelineIndex = 190,
				timerEndOffset = 35,
				timerStartOffset = -5,
				uuid = "af1f0550-fb6a-d96d-9041-9a8cae17e7ce",
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
				name = "RPR AutoSim",
				uuid = "c8468563-a40b-bb26-be01-54c49370b45c",
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
							actionLua = "local S=data.uwuRPRAutoSim\nS.resync(\"graniteGaol1\",TensorCore.API.TensorACR.getAutoSimTime())\nself.used=true",
							conditions = 
							{
								
								{
									"b049c69f-9de4-4624-987e-e32c5909425c",
									true,
								},
								
								{
									"f536f5c6-309f-f51d-a868-458f2b565dc4",
									true,
								},
								
								{
									"72992c19-d20b-ac87-8889-1258bd6ae5d3",
									true,
								},
								
								{
									"e91ad2c2-1aeb-6fab-be7b-c37e4b8458fa",
									true,
								},
								
								{
									"a085df9a-b1ab-8c39-9e2a-e029dd48c948",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "8fcc81bc-c86b-6767-bb04-4ad5d63df9d0",
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
							uuid = "b049c69f-9de4-4624-987e-e32c5909425c",
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
							name = "RPR only",
							uuid = "f536f5c6-309f-f51d-a868-458f2b565dc4",
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
							uuid = "72992c19-d20b-ac87-8889-1258bd6ae5d3",
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
							uuid = "e91ad2c2-1aeb-6fab-be7b-c37e4b8458fa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuRPRAutoSim\nreturn S~=nil and S.observed.graniteGaol1==nil",
							name = "anchor pending",
							uuid = "a085df9a-b1ab-8c39-9e2a-e029dd48c948",
							version = 3,
						},
					},
				},
				displayPath = "RPR AutoSim",
				eventType = 26,
				loop = true,
				mechanicTime = 1223,
				name = "[RPR UWU] Resync graniteGaol1",
				timeRange = true,
				timelineIndex = 199,
				timerEndOffset = 20,
				timerStartOffset = -13,
				uuid = "ef19fdbc-ab5a-ee56-a360-9233711911de",
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
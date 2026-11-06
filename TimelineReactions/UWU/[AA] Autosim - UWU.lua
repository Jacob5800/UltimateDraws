local tbl = 
{
	[2] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "a3bcddc7-237f-97e0-8815-81b7870d75cd",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Job options",
				uuid = "bce8c37f-8dda-ffa0-91cb-df061fe4d78b",
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
							actionLua = "local T=_G.UWU_BLM_TemporaryState or {}\n_G.UWU_BLM_TemporaryState=T\nTensorCore.API.TensorACR.holdActionUntil(3573,Now()+120000)\nT.leyHold=true\nself.used=true",
							conditions = 
							{
								
								{
									"1cf51fc7-c108-8fc0-9b6d-e3ea8010a007",
									true,
								},
								
								{
									"b66793ff-76d7-6815-adba-c867c9cf640f",
									true,
								},
								
								{
									"81bfe35b-fe24-a67a-85a5-f50df9fa9756",
									true,
								},
								
								{
									"c52c64e9-2810-3961-8929-7cfb720bdc3f",
									true,
								},
								
								{
									"8dd733d1-07c4-f0ad-9914-c4d3a09df729",
									true,
								},
								
								{
									"cff69cd2-7f47-4ea8-84f1-4f3512fa9dda",
									true,
								},
							},
							name = "BLM - Save Ley Lines for Ifrit",
							uuid = "d59c80e7-b9c2-26ac-a90d-d8e549310f3f",
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
							name = "UWU territory",
							uuid = "1cf51fc7-c108-8fc0-9b6d-e3ea8010a007",
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
							},
							name = "Supported jobs: BLM",
							uuid = "b66793ff-76d7-6815-adba-c867c9cf640f",
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
							uuid = "81bfe35b-fe24-a67a-85a5-f50df9fa9756",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 1644,
							name = "Garuda target",
							uuid = "c52c64e9-2810-3961-8929-7cfb720bdc3f",
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
							uuid = "8dd733d1-07c4-f0ad-9914-c4d3a09df729",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuAutoSim\nreturn S~=nil and S.ifritStarted~=true and S.observed.p1end==nil",
							name = "Before Ifrit",
							uuid = "cff69cd2-7f47-4ea8-84f1-4f3512fa9dda",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Job options",
				mechanicTime = 9,
				name = "[UWU] Save Ley Lines at Garuda 5%",
				throttleTime = 500,
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 205,
				timerStartOffset = -9,
				uuid = "7dc0f1b7-12ee-f33b-a1b2-e769211488bd",
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
							actionLua = "local C=_G.UWU_BLM_AutoSimConfig\nif not C then\n C={poolLaha=true,priorityGaols=true,roulette=true,raidBuffs=true,buffGain=17,nails=true,closePair=true,surecast=true,manaward=true}\n _G.UWU_BLM_AutoSimConfig=C\nend\n-- Burst weight update: preserve forecast enablement and other options.\nif not C.burstWeight20261029 then C.buffGain=17;C.burstWeight20261029=true end\nif C.holdTripleLateGaruda==nil then C.holdTripleLateGaruda=true end\nif C.garudaEndSeconds==nil then C.garudaEndSeconds=133.235 end\nif C.ifritEndAfterFirstDisappear==nil then C.ifritEndAfterFirstDisappear=40.328 end\nif C.tripleHoldLeadSeconds==nil then C.tripleHoldLeadSeconds=8 end\nlocal visible=GUI:Begin('UWU LPDU Settings',true)\nif visible and GUI:TreeNode('Caster / healer AutoSim') then\n GUI:Text('Forecast estimates apply next pull. Settings last this Lua session.')\n local function check(label,key,help)\n  C[key]=GUI:Checkbox(label,C[key])\n  if GUI:IsItemHovered() then GUI:SetTooltip(help) end\n end\n if GUI:TreeNode('P1 - Garuda') then\n  C.garudaEndSeconds=GUI:SliderFloat('Estimated Garuda end (s)',C.garudaEndSeconds,110,180,'%.3f',1)\n  if GUI:IsItemHovered() then GUI:SetTooltip('Seconds from pull to Garuda dying. Default 133.235 from recent logs. Actual phase events correct the forecast; applies on the next pull.') end\n if Player.job==25 then\n  check('Hold Triplecast near Garuda end','holdTripleLateGaruda','Blocks ALL Triplecast uses near the estimated end and releases when Ifrit becomes targetable. AutoSim cannot reserve only one charge.')\n end\n if Player.job==25 then\n  C.tripleHoldLeadSeconds=GUI:SliderFloat('Triplecast hold before end (s)',C.tripleHoldLeadSeconds,0,20,'%.1f',1)\n end\n  if GUI:IsItemHovered() then GUI:SetTooltip('How many seconds before the estimated Garuda end to start holding Triplecast. Default 8. Timing changes apply next pull.') end\n  GUI:TreePop()\n end\n check('Forecast raid buffs','raidBuffs','Predict party burst windows. The ACR handles actual active buffs separately.')\n C.buffGain=GUI:SliderFloat('Forecast damage gain (%)',C.buffGain,0,40,'%.2f',1)\n if GUI:IsItemHovered() then GUI:SetTooltip('Combined expected party damage gain, not a measured boss buff. Default burst weight 1.17; Ifrit opener uses 1.4.') end\n if Player.job==25 then\n check('Automatic Manaward','manaward','Aerial Blast, Titan opening Earthen Fury, and Ultima opening. Uses are more than 120 real seconds apart in sampled clears.')\n end\n if GUI:TreeNode('P2 - Ifrit') then\n  C.ifritEndAfterFirstDisappear=GUI:SliderFloat('Ifrit end after first disappearance (s)',C.ifritEndAfterFirstDisappear,20,90,'%.3f',1)\n  if GUI:IsItemHovered() then GUI:SetTooltip('Estimated seconds from Ifrit first disappearing to his phase ending. Default 40.328 from recent pulls. Increase for slower groups. Native events correct the estimate; applies next pull.') end\n  check('Nail targeting','nails','Soften the nearest nail to 40%. At that threshold, cancel an ongoing cast targeting that nail once and switch away. Target Ifrit with AoE off until all four awaken, then kill relative SE, SW, NE, NW. Ordered-kill casts are not cancelled by this threshold.')\n  check('Allow final close-pair AoE','closePair','AoE remains off for the first two kills. On the final close pair, normal ACR gain and geometry checks decide whether to AoE.')\n  check('Surecast Vulcan Burst','surecast','Requests Surecast before the Ifrit opening knockback. Does not immune Titan Upheaval or Aetheric Boom.')\n  GUI:TreePop()\n end\n if GUI:TreeNode('P3 - Titan') then\n  GUI:Text('Triple gaols are temporarily AoE-blacklisted. Ride Upheaval for placement.')\n  GUI:TreePop()\n end\n if GUI:TreeNode('P4 - Ultima') then\n  check('Pool cooldowns on Lahabrea','poolLaha','Artificial 0.01 damage-priority weight while Lahabrea is attackable. Keep normal damage and gauge building; this is not a real damage debuff.')\n  check('Prioritize healer / Suppression gaols','priorityGaols','Artificial 1.10 damage-priority forecast for the first five seconds of these gaols.')\n  check('Adapt final primal movement','roulette','Initially forecasts all three possible orders, then narrows movement as Prepare casts reveal the actual sequence.')\n  GUI:TreePop()\n end\n GUI:TreePop()\nend\nGUI:End()\n-- Rendering is continuous; do not finish/requeue an action each frame.",
							conditions = 
							{
								
								{
									"0ada3534-9a27-d2a5-8ac6-50d0598a6900",
									true,
								},
								
								{
									"e830eefd-b62d-1182-9c34-419feb1e3f54",
									true,
								},
								
								{
									"67a38a63-9874-2a7b-9ea0-11bc7a982f04",
									true,
								},
							},
							name = "Caster/healer - Apply owned UWU state",
							uuid = "a191d084-5409-4f63-b88a-7b2b017e19cf",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local C=_G.UWU_BRD_AutoSimConfig\nif not C then C={poolLaha=true,priorityGaols=true,raidBuffs=false,buffGain=16.87};_G.UWU_BRD_AutoSimConfig=C end\nlocal visible=GUI:Begin('UWU LPDU Settings',true)\nif visible and GUI:TreeNode('Ranged / support AutoSim') then\n GUI:Text('Forecast options apply next pull. Session settings.')\n local function check(label,key,help)\n C[key]=GUI:Checkbox(label,C[key])\n if GUI:IsItemHovered() then GUI:SetTooltip(help) end\n end\n check('Pool damage cooldowns on Lahabrea','poolLaha','Artificial 0.01 planning weight. Continue normal damage; this is not a real vulnerability.')\n check('Prioritize healer / Suppression gaols','priorityGaols','Artificial 1.10 planning weight for the first five seconds.')\n check('Forecast party raid buffs','raidBuffs','Optional estimated party burst. Disabled by default for this BRD adaptation; actual buffs remain automatic.')\n C.buffGain=GUI:SliderFloat('Forecast damage gain (%)',C.buffGain,0,40,'%.2f',1)\n if GUI:IsItemHovered() then GUI:SetTooltip('Adjust for the actual party composition. 16.87 is the old reference estimate, not a universal gain.') end\n GUI:Text('Movement permits BRD attacks. Only actual gaol stun blocks actions.')\n GUI:Text('Nails and utility actions use inherited LPDU controls.')\n GUI:TreePop()\nend\nGUI:End()",
							conditions = 
							{
								
								{
									"2d5befa4-188c-7051-8815-3c7c75c8f852",
									true,
								},
								
								{
									"f0c0a06f-7059-4dc4-9d2a-2d58af19b731",
									false,
								},
								
								{
									"32d0adc4-ef95-e5a2-ada9-8d92d44f5b56",
									true,
								},
							},
							name = "Ranged/support - Apply owned UWU state",
							uuid = "94105bfc-97b7-27b5-93ed-43db1f3fbecf",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local C=_G.UWU_RPR_AutoSimConfig\nif not C then C={lbWho=2,poolLaha=true,priorityGaols=true,raidBuffs=false,buffGain=17};_G.UWU_RPR_AutoSimConfig=C end\n-- Burst weight update: preserve forecast enablement and other options.\nif not C.burstWeight20261029 then C.buffGain=17;C.burstWeight20261029=true end\nlocal visible=GUI:Begin('UWU LPDU Settings',true)\nif visible and GUI:TreeNode('Melee / tank AutoSim') then\n GUI:Text('Forecast options apply next pull. Session settings.')\n local function check(label,key,help)\n C[key]=GUI:Checkbox(label,C[key])\n if GUI:IsItemHovered() then GUI:SetTooltip(help) end\n end\n check('Pool damage cooldowns on Lahabrea','poolLaha','Artificial 0.01 planning weight. Continue normal damage; this is not a real vulnerability.')\n check('Prioritize healer / Suppression gaols','priorityGaols','Artificial 1.10 planning weight for the first five seconds.')\n check('Forecast party raid buffs','raidBuffs','Optional estimated party burst. Disabled by default for this RPR adaptation; actual buffs remain automatic.')\n C.buffGain=GUI:SliderFloat('Forecast damage gain (%)',C.buffGain,0,40,'%.2f',1)\n if GUI:IsItemHovered() then GUI:SetTooltip('Adjust for the actual party composition. 16.87 is the old reference estimate, not a universal gain.') end\n if GUI:TreeNode('P4 - Ultima / Lahabrea') then\n C.lbWho=GUI:Combo('Who LBs',C.lbWho or 2,{'Me','Other melee'})\n if GUI:IsItemHovered() then GUI:SetTooltip('Me predicts an 8.2s melee LB3 action lock at Lahabrea for roster M1/M2. Personal LB events correct timing, and cancellation clears the lock. This setting does not force an LB cast.') end\n GUI:TreePop()\n end\n GUI:Text('Melee forecasts include Titan return and personal gaol movement.')\n GUI:Text('Built-in targeting. No forced Ingress/Egress. Marks blocked on nails/plumes/triple gaols.')\n GUI:TreePop()\nend\nGUI:End()",
							conditions = 
							{
								
								{
									"abddd86c-0c8c-9242-b38f-a8a08c8eb17a",
									true,
								},
								
								{
									"224c2e8e-aabb-c6a4-892a-1bdf323daf6c",
									true,
								},
								
								{
									"17df46aa-8924-e65c-9d7d-8c952565e291",
									true,
								},
							},
							name = "Melee/tank - Apply owned UWU state",
							uuid = "13f5768c-89a4-d36f-9999-ecd27ecd1e65",
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
							name = "UWU territory",
							uuid = "0ada3534-9a27-d2a5-8ac6-50d0598a6900",
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
							name = "Caster/healer plan",
							uuid = "e830eefd-b62d-1182-9c34-419feb1e3f54",
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
							uuid = "67a38a63-9874-2a7b-9ea0-11bc7a982f04",
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
							name = "UWU territory",
							uuid = "2d5befa4-188c-7051-8815-3c7c75c8f852",
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
								20,
								22,
								30,
								34,
								39,
								41,
								19,
								21,
								32,
								37,
							},
							name = "Other roles plan",
							uuid = "f0c0a06f-7059-4dc4-9d2a-2d58af19b731",
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
							uuid = "32d0adc4-ef95-e5a2-ada9-8d92d44f5b56",
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
							name = "UWU territory",
							uuid = "abddd86c-0c8c-9242-b38f-a8a08c8eb17a",
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
								20,
								22,
								30,
								34,
								39,
								41,
								19,
								21,
								32,
								37,
							},
							name = "Melee/tank plan",
							uuid = "224c2e8e-aabb-c6a4-892a-1bdf323daf6c",
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
							uuid = "17df46aa-8924-e65c-9d7d-8c952565e291",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Job options",
				enabled = false,
				eventType = 13,
				loop = true,
				mechanicTime = 9,
				name = "[UWU] AutoSim options",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -80,
				uuid = "d5e33a71-73b8-1e80-a570-e8bcbc4788ab",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "DoT forecasts",
				uuid = "9ce0135c-f6d2-dfaf-aaa4-32a252ee3463",
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
							actionLua = "local S=data.uwuAutoSim\nif not S or not S.publishDots then return end\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal id=eventArgs.entityID\nlocal gaps=S.dotGaps[id] or {};S.dotGaps[id]=gaps\nlocal last=gaps[#gaps]\nif eventArgs.isTargetable then\n if last and not last[2] then last[2]=now end\nelse\n if eventArgs.entityContentID==1185 then S.ifritLastUntargetable=now end\n if not last or last[2] then gaps[#gaps+1]={now} end\nend\nif id==S.dotEntityID then S.publishDots() end\nself.used=true",
							conditions = 
							{
								
								{
									"c0080ff5-3f6e-0978-8e71-d0b5394fdef4",
									true,
								},
								
								{
									"ad23be13-ee1e-b316-bae8-add20e9cb8b0",
									true,
								},
								
								{
									"5d183fcd-0e93-9b7f-837f-352ee0e40409",
									true,
								},
								
								{
									"5c5f1998-7a3b-4467-b664-a73627fd176d",
									true,
								},
							},
							name = "BLM - Record native DoT gap",
							uuid = "009e967a-35dc-26ad-b9f5-07606d5373e2",
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
							name = "UWU territory",
							uuid = "c0080ff5-3f6e-0978-8e71-d0b5394fdef4",
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
							},
							name = "BLM Thunder only",
							uuid = "ad23be13-ee1e-b316-bae8-add20e9cb8b0",
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
							uuid = "5d183fcd-0e93-9b7f-837f-352ee0e40409",
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
							uuid = "5c5f1998-7a3b-4467-b664-a73627fd176d",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/DoT forecasts",
				eventType = 26,
				loop = true,
				mechanicTime = 9,
				name = "[UWU] Garuda Thunder availability",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 167,
				timerStartOffset = -9,
				uuid = "92ff8bdd-f967-22ee-bbae-9e32c43442f2",
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
							actionLua = "local S=data.uwuAutoSim\nif not S or not S.publishDots then return end\nlocal t=TensorCore.mGetTarget()\nlocal changed=t and t.alive and t.targetable and t.id~=S.dotPublishedTarget\nlocal late=S.dotEnds[S.dotContentID] and not S.observed[S.dotEnds[S.dotContentID]] and S.dotPublishedEnd and TensorCore.API.TensorACR.getAutoSimTime()>=S.dotPublishedEnd-2\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal spiny=(t and t.contentid==2091 or S.dotContentID==2091) and (not S.spinyLifetimeNext or now>=S.spinyLifetimeNext)\nif changed or late or spiny then S.publishDots() end\nself.used=true",
							conditions = 
							{
								
								{
									"92cdc11c-9ce1-60a2-a438-402d816e554e",
									true,
								},
								
								{
									"9abc690d-ad9d-b268-b3a2-cf383c6e1c85",
									true,
								},
							},
							name = "BRD/RPR - DoT forecast follows target",
							uuid = "1544f8cb-c691-a38f-9e2c-3a74861952c3",
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
							name = "UWU territory",
							uuid = "92cdc11c-9ce1-60a2-a438-402d816e554e",
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
							uuid = "9abc690d-ad9d-b268-b3a2-cf383c6e1c85",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/DoT forecasts",
				loop = true,
				mechanicTime = 9,
				name = "[UWU] DoT forecast follows target",
				throttleTime = 500,
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1250,
				timerStartOffset = -9,
				uuid = "0796bc54-a880-cecf-85c4-57002cf5b1f6",
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
							actionLua = "local S=data.uwuAutoSim\nif not S or not S.publishDots or not S.dotEnds[eventArgs.entityContentID] or eventArgs.entityID~=S.dotEntityID then return end\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal gaps=S.dotGaps[eventArgs.entityID] or {};S.dotGaps[eventArgs.entityID]=gaps\nlocal last=gaps[#gaps]\nif eventArgs.isTargetable then\n if not last or last[2] then return end\n last[2]=now\nelseif not last or last[2] then gaps[#gaps+1]={now}\nelse return end\nS.publishDots();self.used=true",
							conditions = 
							{
								
								{
									"8de7b149-903a-f6b5-bae2-7b3681f953d0",
									true,
								},
								
								{
									"5f81535c-6f1e-25d2-bfab-c10f2ddcc522",
									false,
								},
								
								{
									"8330ca50-c1eb-0d19-9a20-cdd3f4eed932",
									true,
								},
							},
							name = "BRD/RPR - Observe primal DoT availability",
							uuid = "f9db99bb-7ac1-4dcf-b9ef-99e8bae1d351",
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
							name = "UWU territory",
							uuid = "8de7b149-903a-f6b5-bae2-7b3681f953d0",
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
							},
							name = "Non-BLM DoT tracking",
							uuid = "5f81535c-6f1e-25d2-bfab-c10f2ddcc522",
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
							uuid = "8330ca50-c1eb-0d19-9a20-cdd3f4eed932",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/DoT forecasts",
				eventType = 26,
				loop = true,
				mechanicTime = 9,
				name = "[UWU] Observe primal DoT availability",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1250,
				timerStartOffset = -9,
				uuid = "4cb4e7bf-1598-f886-87d0-e9233600c987",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Retired duplicates",
				uuid = "b631de33-9466-cb5b-bb78-8938ff48cf8d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Setup and cleanup",
				uuid = "d29473fa-3527-60e8-bf2a-3b6aa361cd21",
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
							actionLua = "-- Profile-owned settings, loaded before any GUI or gameplay consumer.\nif not _G.UWU_AutoSimSettingsStore then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[UWU-AutoSim.lua]]\n local saved={}\n if FileExists(path) then\n  local loaded=FileLoad(path)\n  if type(loaded)==\"table\" then saved=loaded end\n end\n local specs={\n  UWU_AutoSimSettings={autoCasterLB=true,autoMeleeLB=true,vulcanKnockback=true,casterNailLifetime=true,casterNailCastBudget=2.8,spinyTarget=true,spinyEarly=false,adjustKillTimes=false,garudaSeconds=130,ifritSeconds=100,titanSeconds=125,fakeMelee=false,slowerGroup=false,garudaExtra=0,ifritExtra=0,titanExtra=0,killExtra=0},\n  UWU_BLM_AutoSimConfig={poolLaha=true,priorityGaols=true,roulette=true,raidBuffs=true,buffGain=17,nails=true,closePair=true,surecast=true,manaward=true,holdTripleLateGaruda=true,garudaEndSeconds=133.235,ifritEndAfterFirstDisappear=40.328,tripleHoldLeadSeconds=8,burstWeight20261029=true},\n  UWU_BRD_AutoSimConfig={poolLaha=true,priorityGaols=true,raidBuffs=false,buffGain=16.87},\n  UWU_RPR_AutoSimConfig={lbWho=2,poolLaha=true,priorityGaols=true,raidBuffs=false,buffGain=17,burstWeight20261029=true},\n  UWU_AutoSimUI={general=true,garuda=false,ifrit=false,titan=false,ultima=false}\n }\n local ranges={buffGain={0,40},lbWho={1,2},casterNailCastBudget={0.5,5},garudaSeconds={90,240},ifritSeconds={70,240},titanSeconds={80,240},garudaExtra={0,90},ifritExtra={0,90},titanExtra={0,90},killExtra={0,90},tripleHoldLeadSeconds={0,20},garudaEndSeconds={110,180},ifritEndAfterFirstDisappear={20,90}}\n for name,defaults in pairs(specs) do\n  local current=_G[name]\n  local disk=type(saved[name])==\"table\" and saved[name] or {}\n  local values={}\n  for key,default in pairs(defaults) do\n   -- Disk wins on a fresh Lua session even if an older initializer already ran.\n   local value=disk[key]\n   if value==nil and current then value=current[key] end\n   if type(value)~=type(default) then value=default end\n   local range=ranges[key]\n   if range and (value~=value or value<range[1] or value>range[2] or (key==\"lbWho\" and value%1~=0)) then value=default end\n   values[key]=value\n  end\n  _G[name]=values\n end\n local store={}\n function store.save()\n  local out={}\n  for name,defaults in pairs(specs) do\n   out[name]={}\n   for key in pairs(defaults) do out[name][key]=_G[name][key] end\n  end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,out)\n end\n _G.UWU_AutoSimSettingsStore=store\n store.save()\nend\n\n-- UWU forecast: event resync handlers are shared by every supported job.\n-- This plan retains this job's movement, target lifetimes and existing preferences.\n-- Phase/window records: {type, start anchor, start offset, end anchor, end offset, value}.\n-- Anchors use the real combat clock; native events correct the estimates.\n-- Spiny Plume: applies regardless of model scale, including the enlarged plume.\nlocal spiny=TensorCore.API.TensorACR.addBlacklistEntry(2091,\"UWU Spiny Plume\")\nif not spiny.enabled or spiny.allowIfTarget or spiny.allowSmartDoT then\n spiny.enabled=true;spiny.allowIfTarget=false;spiny.allowSmartDoT=false\n TensorCore.API.TensorACR.saveDotBlacklist()\nend\nlocal feather=TensorCore.API.TensorACR.addBlacklistEntry(1648,\"UWU Satin Plume\")\nif not feather.enabled or feather.allowIfTarget or feather.allowSmartDoT then\n feather.enabled=true;feather.allowIfTarget=false;feather.allowSmartDoT=false\n TensorCore.API.TensorACR.saveDotBlacklist()\nend\nlocal dotAPI=TensorCore.API.TensorACR\nlocal dotEntry=dotAPI.addBlacklistEntry(1186,\"UWU Infernal Nail\")\nif not dotEntry.enabled or dotEntry.allowIfTarget then\n dotEntry.enabled=true\n dotEntry.allowIfTarget=false\n dotAPI.saveDotBlacklist()\nend\n-- Generated encounter inputs are inserted by the MCP authoring script.\n-- Five EU BLM clears supply the phase-relative medians. Native events resync them.\nlocal A=TensorCore.API.TensorACR\n_G.UWU_BLM_TemporaryState=_G.UWU_BLM_TemporaryState or {}\nlocal cfg=_G.UWU_BLM_AutoSimConfig\nif not cfg then\n cfg={poolLaha=true,priorityGaols=true,roulette=true,raidBuffs=true,buffGain=16.87,nails=true,closePair=true,surecast=true,manaward=true}\n _G.UWU_BLM_AutoSimConfig=cfg\nend\nlocal S={\n  [\"anchors\"]={\n    [\"p1end\"]={\n      [\"after\"]=\"pull\",\n      [\"offset\"]=134.629,\n      [\"spread\"]=10\n    },\n    [\"ifrit1\"]={\n      [\"after\"]=\"p1end\",\n      [\"offset\"]=72.217,\n      [\"spread\"]=0.75\n    },\n    [\"p2end\"]={\n      [\"after\"]=\"ifrit1\",\n      [\"offset\"]=38.162,\n      [\"spread\"]=10\n    },\n    [\"ifrit2Back\"]={\n      [\"after\"]=\"p2end\",\n      [\"offset\"]=7.422,\n      [\"spread\"]=0.75\n    },\n    [\"titan1\"]={\n      [\"after\"]=\"ifrit2Back\",\n      [\"offset\"]=22.062,\n      [\"spread\"]=0.75\n    },\n    [\"p3end\"]={\n      [\"after\"]=\"titan1\",\n      [\"offset\"]=107.938,\n      [\"spread\"]=15\n    },\n    [\"titan3Back\"]={\n      [\"after\"]=\"p3end\",\n      [\"offset\"]=12.283,\n      [\"spread\"]=0.75\n    },\n    [\"magitekBit1\"]={\n      [\"after\"]=\"titan3Back\",\n      [\"offset\"]=7.018,\n      [\"spread\"]=0.75\n    },\n    [\"p4end\"]={\n      [\"after\"]=\"magitekBit1\",\n      [\"offset\"]=25.99,\n      [\"spread\"]=0.75\n    },\n    [\"graniteGaol1\"]={\n      [\"after\"]=\"p4end\",\n      [\"offset\"]=233.053,\n      [\"spread\"]=0.75\n    }\n  },\n  [\"kill\"]={\n    [\"after\"]=\"graniteGaol1\",\n    [\"offset\"]=137.5,\n    [\"spread\"]=7.881\n  },\n  [\"phases\"]={\n    {\n      \"FullDowntime\",\n      \"pull\",\n      70.532,\n      \"pull\",\n      74.238,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p1end\",\n      0.1,\n      \"p1end\",\n      13.303,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"ifrit1\",\n      0.1,\n      \"ifrit1\",\n      3.812,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p2end\",\n      0.1,\n      \"ifrit2Back\",\n      -0.3,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"titan1\",\n      0.1,\n      \"titan1\",\n      8.158,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"titan1\",\n      54.272,\n      \"titan1\",\n      62.508,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p3end\",\n      0.1,\n      \"titan3Back\",\n      -0.3,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"magitekBit1\",\n      0.1,\n      \"magitekBit1\",\n      13.741,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p4end\",\n      0.1,\n      \"p4end\",\n      50.191,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p4end\",\n      77.992,\n      \"p4end\",\n      98.072,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p4end\",\n      156.499,\n      \"p4end\",\n      161.092,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p4end\",\n      193.502,\n      \"p4end\",\n      198.14,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p4end\",\n      214.525,\n      \"p4end\",\n      229.087,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"graniteGaol1\",\n      0.1,\n      \"p4end\",\n      255.307,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p4end\",\n      353.6,\n      \"p4end\",\n      357.89,\n      1\n    }\n  },\n  [\"windows\"]={\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      35.0,\n      \"pull\",\n      37.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      38.5,\n      \"pull\",\n      41.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      43.0,\n      \"pull\",\n      44.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      91.0,\n      \"pull\",\n      92.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      102.5,\n      \"pull\",\n      104.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      105.5,\n      \"pull\",\n      106.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      127.5,\n      \"pull\",\n      128.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p1end\",\n      44.5,\n      \"p1end\",\n      47.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p1end\",\n      91.5,\n      \"p1end\",\n      98.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"titan1\",\n      8.5,\n      \"titan1\",\n      11.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"titan1\",\n      14.0,\n      \"titan1\",\n      21.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"titan1\",\n      41.0,\n      \"titan1\",\n      42.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"titan1\",\n      74.5,\n      \"titan1\",\n      76.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      99.5,\n      \"p4end\",\n      100.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      109.0,\n      \"p4end\",\n      115.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      121.0,\n      \"p4end\",\n      124.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      125.0,\n      \"p4end\",\n      129.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      144.5,\n      \"p4end\",\n      145.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      161.5,\n      \"p4end\",\n      169.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      170.0,\n      \"p4end\",\n      172.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      173.5,\n      \"p4end\",\n      174.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      178.5,\n      \"p4end\",\n      182.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      229.5,\n      \"p4end\",\n      231.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      274.0,\n      \"p4end\",\n      280.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      281.0,\n      \"p4end\",\n      282.5,\n      1\n    }\n  },\n  [\"returns\"]={\n    \n  },\n  [\"buffwindows\"]={\n    {\n      \"pull\",\n      8.069\n    },\n    {\n      \"p1end\",\n      16.081\n    },\n    {\n      \"ifrit2Back\",\n      52.467\n    },\n    {\n      \"p4end\",\n      52.628\n    },\n    {\n      \"p4end\",\n      175.979\n    },\n    {\n      \"p4end\",\n      317.846\n    }\n  },\n  [\"sample_count\"]=5,\n  [\"kill_samples\"]={\n    782.098,\n    751.692,\n    783.165,\n    838.291,\n    794.832\n  },\n  [\"roulette\"]={\n    [\"first\"]=293.478,\n    [\"step\"]=20.123,\n    [\"templates\"]={\n      [\"Garuda\"]={\n        {\n          9.5,\n          10.0\n        }\n      },\n      [\"Ifrit\"]={\n        {\n          7.0,\n          9.5\n        },\n        {\n          11.0,\n          11.5\n        }\n      },\n      [\"Titan\"]={\n        {\n          5.0,\n          13.0\n        }\n      }\n    }\n  },\n  [\"anchorOrder\"]={\n    \"p1end\",\n    \"ifrit1\",\n    \"p2end\",\n    \"ifrit2Back\",\n    \"titan1\",\n    \"p3end\",\n    \"titan3Back\",\n    \"magitekBit1\",\n    \"p4end\",\n    \"graniteGaol1\"\n  },\n  [\"ifritArrival\"]=13.603,\n  [\"lahaDelay\"]=14.041\n}\n-- Separate Ifrit's second dash from his actual phase death.\nS.anchors.ifritDash={after=\"ifrit1\",offset=47.95,spread=2}\nS.anchors.ifritDashBack={after=\"ifritDash\",offset=15.79,spread=1}\nS.anchors.p2end={after=\"ifrit1\",offset=cfg.ifritEndAfterFirstDisappear or 42.386,spread=12}\nS.anchors.ifrit2Back={after=\"p2end\",offset=7.55,spread=.75}\nS.anchorOrder={\"p1end\",\"ifrit1\",\"ifritDash\",\"ifritDashBack\",\"p2end\",\"ifrit2Back\",\"titan1\",\"p3end\",\"titan3Back\",\"magitekBit1\",\"p4end\",\"graniteGaol1\"}\nS.phases[#S.phases+1]={\"FullDowntime\",\"ifritDash\",0.1,\"ifritDashBack\",-0.1,1}\nfor _,phase in ipairs(S.phases) do\n if phase[1]==\"FullDowntime\" and phase[2]==\"ifrit1\" and phase[4]==\"ifrit1\" then phase[5]=4.25 end\nend\n-- First Garuda disappearance: corroborated in three recent native logs.\nS.phases[#S.phases+1]={\"FullDowntime\",\"pull\",33.96,\"pull\",38.25,1}\n-- Shared encounter defaults chosen by user: Garuda 130s, Ifrit 100s; live resyncs still win.\nS.anchors.p1end.offset=130\nS.anchors.p1end.spread=27\n-- P2 end is configured above relative to the first disappearance.\nS.anchors.p2end.spread=17\n-- Three native Monk-pull boss-event samples; shared boss timing, independent of job movement.\nfor _,phase in ipairs(S.phases) do\n if phase[1]==\"FullDowntime\" and phase[2]==\"pull\" and math.abs(phase[3]-70.532)<.001 then\n  phase[3]=68.865;phase[5]=73.150\n elseif phase[1]==\"FullDowntime\" and phase[2]==\"titan1\" and phase[3]==.1 then\n  phase[5]=7.544\n end\nend\nS.cfg={}\nfor k,v in pairs(cfg) do S.cfg[k]=v end\n-- Recent native records: six BLM Garuda ends; five distinct party Ifrit ends.\nS.anchors.p1end.offset=cfg.garudaEndSeconds or 130\nS.tripleHoldLeadSeconds=cfg.tripleHoldLeadSeconds or 8\nlocal userSettings=_G.UWU_AutoSimSettings or {}\n-- Shared Ifrit controls apply to every role plan.\nS.cfg.nails=_G.UWU_BLM_AutoSimConfig.nails\nS.cfg.closePair=_G.UWU_BLM_AutoSimConfig.closePair\nlocal roleJob=Player.job\nS.cfg.fakeMelee=userSettings.fakeMelee==true and (roleJob==25 or roleJob==27 or roleJob==35 or roleJob==42 or roleJob==23 or roleJob==31 or roleJob==38)\nS.cfg.adjustKillTimes=userSettings.adjustKillTimes==true\nlocal garuda=130;local ifrit=100;local titan=125\nif S.cfg.adjustKillTimes then\n garuda=userSettings.garudaSeconds or 130\n ifrit=userSettings.ifritSeconds or 100\n titan=userSettings.titanSeconds or 125\nend\nS.anchors.p1end.offset=garuda\nS.anchors.p2end={after=\"ifrit1\",offset=ifrit-(72.217-S.ifritArrival),spread=17}\nS.anchors.p3end.offset=titan-S.anchors.titan1.offset\n-- Tag only eruption bait-route forecasts; no other movement is removed.\nfor _,w in ipairs(S.windows) do\n if w[1]==\"CasterDowntime\" and ((w[2]==\"p1end\" and (w[3]==44.5 or w[3]==91.5)) or (w[2]==\"p4end\" and w[3]==109)) then w[7]=\"eruption bait\" end\nend\nS.observed={pull=0}\nS.dynamic={}\nS.rouletteWindows={}\nfunction S.time(name)\n if S.observed[name] then return S.observed[name] end\n local a=S.anchors[name]\n return S.time(a.after)+a.offset\nend\nfunction S.union(list)\n table.sort(list,function(a,b)return a[1]<b[1] end)\n local out={}\n for _,w in ipairs(list) do\n  local last=out[#out]\n  if last and w[1]<=last[2] and w[3]==last[3] then last[2]=math.max(last[2],w[2])\n  else out[#out+1]={w[1],w[2],w[3]} end\n end\n return out\nend\nfunction S.rouletteForecast(kind,now)\n local orders={Garuda={\"Garuda\",\"Ifrit\",\"Titan\"},Ifrit={\"Ifrit\",\"Garuda\",\"Titan\"},Titan={\"Titan\",\"Ifrit\",\"Garuda\"}}\n if kind then\n  if not S.rouletteOrder then S.rouletteOrder=orders[kind];S.rouletteTimes={} end\n  local step=#S.rouletteTimes+1\n  if S.rouletteOrder[step]~=kind then return end\n  S.rouletteTimes[step]=now\n end\n S.rouletteWindows={}\n if not S.cfg.roulette then return end\n local function addOrder(order,base,times)\n  local offsets={0,S.roulette.step,S.roulette.step*2}\n  if times and #times>0 then base=times[#times]-S.time(\"p4end\")-offsets[#times] end\n  for i,k in ipairs(order) do\n   local t=times and times[i] or S.time(\"p4end\")+base+offsets[i]\n   for _,w in ipairs((S.cfg.fakeMelee and k==\"Ifrit\") and {} or S.roulette.templates[k]) do\n    S.rouletteWindows[#S.rouletteWindows+1]={t+w[1],t+w[2],1}\n   end\n  end\n end\n if S.rouletteOrder then addOrder(S.rouletteOrder,0,S.rouletteTimes)\n else\n  -- Initial estimates use the reference's three possible orders. Prepare events narrow them.\n  for _,order in pairs(orders) do addOrder(order,S.roulette.first) end\n end\nend\nS.dotStarts={}\nS.dotGaps={}\nS.dotEnds={ [1644]=\"p1end\",[1185]=\"p2end\",[1801]=\"p3end\" }\nfunction S.publishSpinyLifetime(target,now)\n -- Only Spiny uses the live TTK override; nails retain their existing forecasts.\n if target and target.contentid~=2091 and target.alive and target.targetable then return false end\n if not (target and target.contentid==2091) and S.dotContentID~=2091 then return false end\n A.clearAutoSimPhases(\"DotAvailability\",0,0)\n A.clearAutoSimPhases(\"DotAvailability\",0,1)\n A.clearAutoSimPhases(\"TargetLifetime\",0)\n S.spinyLifetimeNext=now+1\n if not (target and target.contentid==2091 and target.alive and target.targetable and target.attackable) then\n  S.dotPublishedTarget=nil;S.dotPublishedEnd=nil\n  return true\n end\n S.dotEntityID=target.id;S.dotContentID=2091;S.dotPublishedTarget=target.id\n local ttl=TensorCore.calcTimeToKill(target.id)\n local valid=type(ttl)==\"number\" and ttl==ttl and ttl>0 and ttl<1259-now\n if valid then\n  if S.spinyLifetimeID~=target.id then S.spinyLifetimeID=target.id;S.spinyLifetimeStart=now end\n  S.dotPublishedEnd=now+ttl\n  A.addAutoSimPhase(\"TargetLifetime\",S.spinyLifetimeStart,S.dotPublishedEnd,1,0)\n else S.dotPublishedEnd=nil end\n if S.spinyLifetimeLogID~=target.id or not S.spinyLifetimeLogAt or now>=S.spinyLifetimeLogAt+5 then\n  d(\"[UWU AutoSim] Spiny lifetime target=\"..tostring(target.id)..\" remaining=\"..tostring(ttl)..\" published=\"..tostring(valid)..\"; DoT exclusions unchanged\")\n  S.spinyLifetimeLogID=target.id;S.spinyLifetimeLogAt=now\n end\n return true\nend\n\nfunction S.publishDots()\n local target=TensorCore.mGetTarget()\n local now=A.getAutoSimTime()\n if S.publishSpinyLifetime(target,now) then return end\n if target and target.alive and target.targetable then\n  S.dotEntityID=target.id;S.dotContentID=target.contentid\n end\n if not S.dotEntityID then return end\n local cid=S.dotContentID\n local endAnchor=S.dotEnds[cid]\n local finish=math.min(1259,math.max(now+5,S.time(S.kill.after)+S.kill.offset))\n local start=0\n if endAnchor then\n  if not S.dotStarts[S.dotEntityID] then\n   local predicted=cid==1644 and 0 or (cid==1185 and S.time(\"p1end\")+S.ifritArrival or S.time(\"ifrit2Back\"))\n   S.dotStarts[S.dotEntityID]=math.max(0,math.min(predicted,now))\n  end\n  start=S.dotStarts[S.dotEntityID]\n  finish=math.min(1259,S.observed[endAnchor] or math.max(S.time(endAnchor),now+5))\n end\n -- Thunder and AoE Thunder have independent availability groups.\n A.clearAutoSimPhases(\"DotAvailability\",0,0)\n A.clearAutoSimPhases(\"DotAvailability\",0,1)\n A.clearAutoSimPhases(\"TargetLifetime\",0)\n if finish<=start then return end\n A.addAutoSimPhase(\"TargetLifetime\",start,finish,1,0)\n local stop=endAnchor and math.max(start,finish-.5) or finish\n -- Respect existing excluded adds even when selected manually.\n if cid==1186 or cid==1648 or cid==2091 then stop=start end\n local gaps={}\n local observed=S.dotGaps[S.dotEntityID] or {}\n for _,phase in ipairs(S.phases) do\n  if phase[1]==\"FullDowntime\" and not (phase[2]==\"ifritDash\" and (S.ifritDashWasFinal or (not S.observed.ifritDash and S.time(\"p2end\")<=S.time(\"ifritDash\")))) then\n   local a,b=S.time(phase[2])+phase[3],S.time(phase[4])+phase[5]\n   local replaced=false\n   for _,gap in ipairs(observed) do if math.abs(gap[1]-a)<10 then replaced=true;break end end\n   if not replaced and b>start and a<stop then gaps[#gaps+1]={math.max(start,a),math.min(stop,b),1} end\n  end\n end\n for _,gap in ipairs(observed) do\n  local a,b=math.max(start,gap[1]),math.min(stop,gap[2] or stop)\n  if b>a then gaps[#gaps+1]={a,b,1} end\n end\n local cursor=start\n local available={}\n for _,gap in ipairs(S.union(gaps)) do\n  if gap[1]>cursor then available[#available+1]={cursor,gap[1]} end\n  cursor=math.max(cursor,gap[2])\n end\n if stop>cursor then available[#available+1]={cursor,stop} end\n for group=0,1 do\n  for _,window in ipairs(available) do A.addAutoSimPhase(\"DotAvailability\",window[1],window[2],1,0,group) end\n end\n S.dotPublishedEnd=finish;S.dotPublishedTarget=S.dotEntityID\n S.dotAnchorSignature=tostring(S.observed.p1end)..\":\"..tostring(S.observed.p2end)..\":\"..tostring(S.observed.p3end)\nend\n\nfunction S.publish()\n local now=A.getAutoSimTime()\n local finish=math.max(now+5,S.time(S.kill.after)+S.kill.offset)\n A.setAutoSimKillTime(math.min(finish,1259))\n local grouped={FullDowntime={},CasterDowntime={},Stun={},BossModifier={},RaidBuff={},GroundFieldMovement={}}\n local function add(kind,a,b,value)\n  if b>a then grouped[kind][#grouped[kind]+1]={a,b,value or 1} end\n end\n for _,p in ipairs(S.phases) do\n  -- HP-driven deaths are variable. Do not declare the still-live boss unavailable.\n  local hpDeath=p[1]==\"FullDowntime\" and (p[2]==\"p1end\" or p[2]==\"p2end\")\n  if (not hpDeath or S.observed[p[2]]~=nil) and not (p[2]==\"ifritDash\" and (S.ifritDashWasFinal or (not S.observed.ifritDash and S.time(\"p2end\")<=S.time(\"ifritDash\")))) then\n   local a,b=S.time(p[2])+p[3],S.time(p[4])+p[5]\n   local readySpiny=S.spinyUptime\n   if p[1]==\"FullDowntime\" and p[2]==\"pull\" and p[3]==33.96 and readySpiny then\n    -- Split only Garuda's first jump: the stack-safe Spiny remains attackable.\n    add(p[1],a,math.min(b,readySpiny[1]),p[6])\n    add(p[1],math.max(a,readySpiny[2] or b),b,p[6])\n   else\n    add(p[1],a,b,p[6])\n   end\n  end\n end\n for _,p in ipairs(S.windows) do\n  local a,b=S.time(p[2])+p[3],S.time(p[4])+p[5]\n  if p[2]==\"titan1\" and S.observed.p3end then b=math.min(b,S.observed.p3end) end\n  if not (S.cfg.fakeMelee and p[7]==\"eruption bait\") then add(p[1],a,b,p[6]) end\n end\n if S.cfg.poolLaha then\n  add(\"BossModifier\",S.time(\"magitekBit1\")+S.lahaDelay,S.time(\"p4end\"),.01)\n end\n if S.cfg.priorityGaols then\n  add(\"BossModifier\",S.time(\"titan1\")+68.966,S.time(\"titan1\")+73.966,1.10)\n  add(\"BossModifier\",S.time(\"p4end\")+227.75,S.time(\"p4end\")+232.75,1.10)\n end\n if S.cfg.raidBuffs then\n  local prev\n  for _,w in ipairs(S.buffwindows) do\n   local t=S.time(w[1])+w[2]\n   if prev then t=math.max(t,prev+120) end\n   local burstWeight=w[1]==\"p1end\" and 1.4 or (1+S.cfg.buffGain/100)\n   local burstEnd=t+20\n   if w[1]==\"p1end\" then\n    -- Never extend the artificial 1.4 opener into nail softening.\n    burstEnd=math.min(burstEnd,S.time(\"p1end\")+39,S.nailsStartedAt or math.huge)\n   end\n   add(\"RaidBuff\",t,burstEnd,burstWeight)\n   prev=t\n  end\n end\n for _,w in ipairs(S.rouletteWindows) do add(\"CasterDowntime\",w[1],w[2],1) end\n local job=Player.job\n local caster=job==25 or job==27 or job==35 or job==42\n local options=_G.UWU_AutoSimSettings\n local ownsCasterLB=caster and (not options or options.autoCasterLB~=false) and TensorCore.hasBuff(Player.id,1530)\n if ownsCasterLB and not S.lbObserved then\n  local lb=S.time(\"titan3Back\")+4\n  add(\"Stun\",lb,lb+12.6,1)\n end\n for _,w in pairs(S.dynamic) do add(w[1],w[2],w[3],w[4]) end\n for kind,list in pairs(grouped) do\n  A.clearAutoSimPhases(kind)\n  -- All absolute same-type overlaps are merged before submission.\n  if kind==\"BossModifier\" or kind==\"RaidBuff\" then\n   local cuts,seen={},{}\n   for _,w in ipairs(list) do for i=1,2 do if not seen[w[i]] then cuts[#cuts+1]=w[i];seen[w[i]]=true end end end\n   table.sort(cuts)\n   for i=1,#cuts-1 do\n    local value,active=1,false\n    for _,w in ipairs(list) do if w[1]<=cuts[i] and w[2]>=cuts[i+1] then value=value*w[3];active=true end end\n    if active then A.addAutoSimPhase(kind,cuts[i],cuts[i+1],value) end\n   end\n  else\n   for _,w in ipairs(S.union(list)) do A.addAutoSimPhase(kind,w[1],w[2],w[3]) end\n  end\n end\n A.clearAutoSimUncertainty()\n A.addAutoSimUncertainty(0,2)\n local uncertainty=2\n for _,name in ipairs(S.anchorOrder) do\n  if not S.observed[name] and not (name==\"ifritDashBack\" and S.ifritDashWasFinal) then\n   local anchor=S.anchors[name]\n   uncertainty=math.max(uncertainty,anchor.spread)\n   A.addAutoSimUncertainty(S.time(name)-25,uncertainty)\n  end\n end\n A.addAutoSimUncertainty(math.max(0,finish-30),math.max(uncertainty,S.kill.spread))\n S.publishDots()\nend\nfunction S.resync(name,now)\n if S.observed[name] then return end\n S.observed[name]=now\n S.rouletteForecast()\n S.publish()\n if not S.ifritStarted then\n  local untilIfrit=S.time(\"p1end\")+S.ifritArrival\n  A.holdActionUntil(846,Now()+math.max(0,untilIfrit-now)*1000)\n end\nend\n-- Snapshot slower-group adjustments once at pull setup, never from the drawing callback.\nlocal G=_G.UWU_AutoSimSettings or {}\nlocal previous=data.uwuAutoSim\nlocal timing=previous and previous.slowerGroupTiming\nif not timing then\n timing={enabled=G.slowerGroup==true}\n for _,key in ipairs({\"garudaExtra\",\"ifritExtra\",\"titanExtra\",\"killExtra\"}) do\n  timing[key]=math.max(0,math.min(90,tonumber(G[key]) or 0))\n end\nend\nS.slowerGroupTiming=timing\nif timing.enabled then\n S.anchors.p1end.offset=S.anchors.p1end.offset+timing.garudaExtra\n S.anchors.p2end.offset=S.anchors.p2end.offset+timing.ifritExtra\n S.anchors.p3end.offset=S.anchors.p3end.offset+timing.titanExtra\n S.kill.offset=S.kill.offset+timing.killExtra\nend\nS.rouletteForecast()\nA.setAutoSimUnexpectedMovementPct(.05)\nS.publish()\nA.holdActionUntil(846,Now()+math.max(0,S.time(\"p1end\")+S.ifritArrival-A.getAutoSimTime())*1000)\nS.planRole=\"caster\"; S.planJob=Player.job\ndata.uwuAutoSim=S\nself.used=true",
							conditions = 
							{
								
								{
									"4ffd5610-21b5-3705-acde-ade496baccbe",
									true,
								},
								
								{
									"41eaebca-7f15-b9b4-81c3-79168424cb3c",
									true,
								},
								
								{
									"61c96b06-0a10-ff77-b2e8-8861a4f95615",
									true,
								},
								
								{
									"8999f562-ecbe-6da5-b54e-4d30d7f73b45",
									true,
								},
								
								{
									"79ec4216-d403-e03b-86ad-a32641abb630",
									true,
								},
								
								{
									"1fdca9c7-9c82-ef06-8ad1-102da258fbdb",
									true,
								},
							},
							name = "Caster/healer - Apply owned UWU state",
							uuid = "c1725f17-8545-a8d0-92bd-9effc8f895ad",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "-- Profile-owned settings, loaded before any GUI or gameplay consumer.\nif not _G.UWU_AutoSimSettingsStore then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[UWU-AutoSim.lua]]\n local saved={}\n if FileExists(path) then\n  local loaded=FileLoad(path)\n  if type(loaded)==\"table\" then saved=loaded end\n end\n local specs={\n  UWU_AutoSimSettings={autoCasterLB=true,autoMeleeLB=true,vulcanKnockback=true,casterNailLifetime=true,casterNailCastBudget=2.8,spinyTarget=true,spinyEarly=false,adjustKillTimes=false,garudaSeconds=130,ifritSeconds=100,titanSeconds=125,fakeMelee=false,slowerGroup=false,garudaExtra=0,ifritExtra=0,titanExtra=0,killExtra=0},\n  UWU_BLM_AutoSimConfig={poolLaha=true,priorityGaols=true,roulette=true,raidBuffs=true,buffGain=17,nails=true,closePair=true,surecast=true,manaward=true,holdTripleLateGaruda=true,garudaEndSeconds=133.235,ifritEndAfterFirstDisappear=40.328,tripleHoldLeadSeconds=8,burstWeight20261029=true},\n  UWU_BRD_AutoSimConfig={poolLaha=true,priorityGaols=true,raidBuffs=false,buffGain=16.87},\n  UWU_RPR_AutoSimConfig={lbWho=2,poolLaha=true,priorityGaols=true,raidBuffs=false,buffGain=17,burstWeight20261029=true},\n  UWU_AutoSimUI={general=true,garuda=false,ifrit=false,titan=false,ultima=false}\n }\n local ranges={buffGain={0,40},lbWho={1,2},casterNailCastBudget={0.5,5},garudaSeconds={90,240},ifritSeconds={70,240},titanSeconds={80,240},garudaExtra={0,90},ifritExtra={0,90},titanExtra={0,90},killExtra={0,90},tripleHoldLeadSeconds={0,20},garudaEndSeconds={110,180},ifritEndAfterFirstDisappear={20,90}}\n for name,defaults in pairs(specs) do\n  local current=_G[name]\n  local disk=type(saved[name])==\"table\" and saved[name] or {}\n  local values={}\n  for key,default in pairs(defaults) do\n   -- Disk wins on a fresh Lua session even if an older initializer already ran.\n   local value=disk[key]\n   if value==nil and current then value=current[key] end\n   if type(value)~=type(default) then value=default end\n   local range=ranges[key]\n   if range and (value~=value or value<range[1] or value>range[2] or (key==\"lbWho\" and value%1~=0)) then value=default end\n   values[key]=value\n  end\n  _G[name]=values\n end\n local store={}\n function store.save()\n  local out={}\n  for name,defaults in pairs(specs) do\n   out[name]={}\n   for key in pairs(defaults) do out[name][key]=_G[name][key] end\n  end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,out)\n end\n _G.UWU_AutoSimSettingsStore=store\n store.save()\nend\n\n-- UWU forecast: event resync handlers are shared by every supported job.\n-- This plan retains this job's movement, target lifetimes and existing preferences.\n-- Phase/window records: {type, start anchor, start offset, end anchor, end offset, value}.\n-- Anchors use the real combat clock; native events correct the estimates.\n-- Spiny Plume: applies regardless of model scale, including the enlarged plume.\nlocal spiny=TensorCore.API.TensorACR.addBlacklistEntry(2091,\"UWU Spiny Plume\")\nif not spiny.enabled or spiny.allowIfTarget or spiny.allowSmartDoT then\n spiny.enabled=true;spiny.allowIfTarget=false;spiny.allowSmartDoT=false\n TensorCore.API.TensorACR.saveDotBlacklist()\nend\nlocal feather=TensorCore.API.TensorACR.addBlacklistEntry(1648,\"UWU Satin Plume\")\nif not feather.enabled or feather.allowIfTarget or feather.allowSmartDoT then\n feather.enabled=true;feather.allowIfTarget=false;feather.allowSmartDoT=false\n TensorCore.API.TensorACR.saveDotBlacklist()\nend\nlocal A=TensorCore.API.TensorACR\nlocal nail=A.addBlacklistEntry(1186,\"UWU Infernal Nail\")\nif not nail.enabled or nail.allowIfTarget or nail.allowSmartDoT then\n nail.enabled=true;nail.allowIfTarget=false;nail.allowSmartDoT=false\n A.saveDotBlacklist()\nend\n-- Generated encounter inputs are inserted by the MCP authoring script.\n-- Five EU BLM clears supplied the original the phase-relative medians. Native events resync them.\nlocal A=TensorCore.API.TensorACR\n_G.UWU_BRD_TemporaryState=_G.UWU_BRD_TemporaryState or {}\nlocal cfg=_G.UWU_BRD_AutoSimConfig\nif not cfg then\n cfg={poolLaha=true,priorityGaols=true,roulette=false,raidBuffs=false,buffGain=16.87}\n _G.UWU_BRD_AutoSimConfig=cfg\nend\nlocal S={\n  [\"anchors\"]={\n    [\"p1end\"]={\n      [\"after\"]=\"pull\",\n      [\"offset\"]=134.629,\n      [\"spread\"]=10\n    },\n    [\"ifrit1\"]={\n      [\"after\"]=\"p1end\",\n      [\"offset\"]=72.217,\n      [\"spread\"]=0.75\n    },\n    [\"p2end\"]={\n      [\"after\"]=\"ifrit1\",\n      [\"offset\"]=38.162,\n      [\"spread\"]=10\n    },\n    [\"ifrit2Back\"]={\n      [\"after\"]=\"p2end\",\n      [\"offset\"]=7.422,\n      [\"spread\"]=0.75\n    },\n    [\"titan1\"]={\n      [\"after\"]=\"ifrit2Back\",\n      [\"offset\"]=22.062,\n      [\"spread\"]=0.75\n    },\n    [\"p3end\"]={\n      [\"after\"]=\"titan1\",\n      [\"offset\"]=107.938,\n      [\"spread\"]=15\n    },\n    [\"titan3Back\"]={\n      [\"after\"]=\"p3end\",\n      [\"offset\"]=12.283,\n      [\"spread\"]=0.75\n    },\n    [\"magitekBit1\"]={\n      [\"after\"]=\"titan3Back\",\n      [\"offset\"]=7.018,\n      [\"spread\"]=0.75\n    },\n    [\"p4end\"]={\n      [\"after\"]=\"magitekBit1\",\n      [\"offset\"]=25.99,\n      [\"spread\"]=0.75\n    },\n    [\"graniteGaol1\"]={\n      [\"after\"]=\"p4end\",\n      [\"offset\"]=233.053,\n      [\"spread\"]=0.75\n    }\n  },\n  [\"kill\"]={\n    [\"after\"]=\"graniteGaol1\",\n    [\"offset\"]=137.5,\n    [\"spread\"]=7.881\n  },\n  [\"phases\"]={\n    {\n      \"FullDowntime\",\n      \"pull\",\n      70.532,\n      \"pull\",\n      74.238,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p1end\",\n      0.1,\n      \"p1end\",\n      13.303,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"ifrit1\",\n      0.1,\n      \"ifrit1\",\n      3.812,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p2end\",\n      0.1,\n      \"ifrit2Back\",\n      -0.3,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"titan1\",\n      0.1,\n      \"titan1\",\n      8.158,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"titan1\",\n      54.272,\n      \"titan1\",\n      62.508,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p3end\",\n      0.1,\n      \"titan3Back\",\n      -0.3,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"magitekBit1\",\n      0.1,\n      \"magitekBit1\",\n      13.741,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p4end\",\n      0.1,\n      \"p4end\",\n      50.191,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p4end\",\n      77.992,\n      \"p4end\",\n      98.072,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p4end\",\n      156.499,\n      \"p4end\",\n      161.092,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p4end\",\n      193.502,\n      \"p4end\",\n      198.14,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p4end\",\n      214.525,\n      \"p4end\",\n      229.087,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"graniteGaol1\",\n      0.1,\n      \"p4end\",\n      255.307,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p4end\",\n      353.6,\n      \"p4end\",\n      357.89,\n      1\n    }\n  },\n  [\"windows\"]={\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      35.0,\n      \"pull\",\n      37.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      38.5,\n      \"pull\",\n      41.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      43.0,\n      \"pull\",\n      44.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      91.0,\n      \"pull\",\n      92.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      102.5,\n      \"pull\",\n      104.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      105.5,\n      \"pull\",\n      106.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      127.5,\n      \"pull\",\n      128.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p1end\",\n      44.5,\n      \"p1end\",\n      47.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p1end\",\n      91.5,\n      \"p1end\",\n      98.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"titan1\",\n      8.5,\n      \"titan1\",\n      11.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"titan1\",\n      14.0,\n      \"titan1\",\n      21.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"titan1\",\n      27.5,\n      \"titan1\",\n      29.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"titan1\",\n      41.0,\n      \"titan1\",\n      42.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"titan1\",\n      74.5,\n      \"titan1\",\n      76.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      99.5,\n      \"p4end\",\n      100.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      109.0,\n      \"p4end\",\n      115.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      121.0,\n      \"p4end\",\n      124.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      125.0,\n      \"p4end\",\n      129.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      144.5,\n      \"p4end\",\n      145.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      161.5,\n      \"p4end\",\n      169.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      170.0,\n      \"p4end\",\n      172.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      173.5,\n      \"p4end\",\n      174.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      178.5,\n      \"p4end\",\n      182.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      229.5,\n      \"p4end\",\n      231.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      274.0,\n      \"p4end\",\n      280.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      281.0,\n      \"p4end\",\n      282.5,\n      1\n    }\n  },\n  [\"returns\"]={\n    \n  },\n  [\"buffwindows\"]={\n    {\n      \"pull\",\n      8.069\n    },\n    {\n      \"p1end\",\n      16.081\n    },\n    {\n      \"ifrit2Back\",\n      52.467\n    },\n    {\n      \"p4end\",\n      52.628\n    },\n    {\n      \"p4end\",\n      175.979\n    },\n    {\n      \"p4end\",\n      317.846\n    }\n  },\n  [\"sample_count\"]=5,\n  [\"kill_samples\"]={\n    782.098,\n    751.692,\n    783.165,\n    838.291,\n    794.832\n  },\n  [\"roulette\"]={\n    [\"first\"]=293.478,\n    [\"step\"]=20.123,\n    [\"templates\"]={\n      [\"Garuda\"]={\n        {\n          9.5,\n          10.0\n        }\n      },\n      [\"Ifrit\"]={\n        {\n          7.0,\n          9.5\n        },\n        {\n          11.0,\n          11.5\n        }\n      },\n      [\"Titan\"]={\n        {\n          5.0,\n          13.0\n        }\n      }\n    }\n  },\n  [\"anchorOrder\"]={\n    \"p1end\",\n    \"ifrit1\",\n    \"p2end\",\n    \"ifrit2Back\",\n    \"titan1\",\n    \"p3end\",\n    \"titan3Back\",\n    \"magitekBit1\",\n    \"p4end\",\n    \"graniteGaol1\"\n  },\n  [\"ifritArrival\"]=13.603,\n  [\"lahaDelay\"]=14.041\n}\n-- Separate Ifrit's second dash from his actual phase death.\nS.anchors.ifritDash={after=\"ifrit1\",offset=47.95,spread=2}\nS.anchors.ifritDashBack={after=\"ifritDash\",offset=15.79,spread=1}\nS.anchors.p2end={after=\"ifrit1\",offset=42.386,spread=12}\nS.anchors.ifrit2Back={after=\"p2end\",offset=7.55,spread=.75}\nS.anchorOrder={\"p1end\",\"ifrit1\",\"ifritDash\",\"ifritDashBack\",\"p2end\",\"ifrit2Back\",\"titan1\",\"p3end\",\"titan3Back\",\"magitekBit1\",\"p4end\",\"graniteGaol1\"}\nS.phases[#S.phases+1]={\"FullDowntime\",\"ifritDash\",0.1,\"ifritDashBack\",-0.1,1}\nfor _,phase in ipairs(S.phases) do\n if phase[1]==\"FullDowntime\" and phase[2]==\"ifrit1\" and phase[4]==\"ifrit1\" then phase[5]=4.25 end\nend\n-- First Garuda disappearance: corroborated in three recent native logs.\nS.phases[#S.phases+1]={\"FullDowntime\",\"pull\",33.96,\"pull\",38.25,1}\n-- Shared encounter defaults chosen by user: Garuda 130s, Ifrit 100s; live resyncs still win.\nS.anchors.p1end.offset=130\nS.anchors.p1end.spread=27\n-- Ifrit default: 101s from targetability (58.614s to first disappearance + 42.386s).\nS.anchors.p2end.spread=17\nS.windows={} -- BRD can attack while moving; caster forecasts do not apply.\n-- Three native Monk-pull boss-event samples; shared boss timing, independent of job movement.\nfor _,phase in ipairs(S.phases) do\n if phase[1]==\"FullDowntime\" and phase[2]==\"pull\" and math.abs(phase[3]-70.532)<.001 then\n  phase[3]=68.865;phase[5]=73.150\n elseif phase[1]==\"FullDowntime\" and phase[2]==\"titan1\" and phase[3]==.1 then\n  phase[5]=7.544\n end\nend\nS.cfg={}\nfor k,v in pairs(cfg) do S.cfg[k]=v end\nlocal userSettings=_G.UWU_AutoSimSettings or {}\n-- Shared Ifrit controls apply to every role plan.\nS.cfg.nails=_G.UWU_BLM_AutoSimConfig.nails\nS.cfg.closePair=_G.UWU_BLM_AutoSimConfig.closePair\nlocal roleJob=Player.job\nS.cfg.fakeMelee=userSettings.fakeMelee==true and (roleJob==25 or roleJob==27 or roleJob==35 or roleJob==42 or roleJob==23 or roleJob==31 or roleJob==38)\nS.cfg.adjustKillTimes=userSettings.adjustKillTimes==true\nlocal garuda=130;local ifrit=100;local titan=125\nif S.cfg.adjustKillTimes then\n garuda=userSettings.garudaSeconds or 130\n ifrit=userSettings.ifritSeconds or 100\n titan=userSettings.titanSeconds or 125\nend\nS.anchors.p1end.offset=garuda\nS.anchors.p2end={after=\"ifrit1\",offset=ifrit-(72.217-S.ifritArrival),spread=17}\nS.anchors.p3end.offset=titan-S.anchors.titan1.offset\n-- Tag only eruption bait-route forecasts; no other movement is removed.\nfor _,w in ipairs(S.windows) do\n if w[1]==\"CasterDowntime\" and ((w[2]==\"p1end\" and (w[3]==44.5 or w[3]==91.5)) or (w[2]==\"p4end\" and w[3]==109)) then w[7]=\"eruption bait\" end\nend\nS.observed={pull=0}\nS.dynamic={}\nS.rouletteWindows={}\nfunction S.time(name)\n if S.observed[name] then return S.observed[name] end\n local a=S.anchors[name]\n return S.time(a.after)+a.offset\nend\nfunction S.union(list)\n table.sort(list,function(a,b)return a[1]<b[1] end)\n local out={}\n for _,w in ipairs(list) do\n  local last=out[#out]\n  if last and w[1]<=last[2] and w[3]==last[3] then last[2]=math.max(last[2],w[2])\n  else out[#out+1]={w[1],w[2],w[3]} end\n end\n return out\nend\nfunction S.rouletteForecast(kind,now)\n local orders={Garuda={\"Garuda\",\"Ifrit\",\"Titan\"},Ifrit={\"Ifrit\",\"Garuda\",\"Titan\"},Titan={\"Titan\",\"Ifrit\",\"Garuda\"}}\n if kind then\n  if not S.rouletteOrder then S.rouletteOrder=orders[kind];S.rouletteTimes={} end\n  local step=#S.rouletteTimes+1\n  if S.rouletteOrder[step]~=kind then return end\n  S.rouletteTimes[step]=now\n end\n S.rouletteWindows={}\n if not S.cfg.roulette then return end\n local function addOrder(order,base,times)\n  local offsets={0,S.roulette.step,S.roulette.step*2}\n  if times and #times>0 then base=times[#times]-S.time(\"p4end\")-offsets[#times] end\n  for i,k in ipairs(order) do\n   local t=times and times[i] or S.time(\"p4end\")+base+offsets[i]\n   for _,w in ipairs((S.cfg.fakeMelee and k==\"Ifrit\") and {} or S.roulette.templates[k]) do\n    S.rouletteWindows[#S.rouletteWindows+1]={t+w[1],t+w[2],1}\n   end\n  end\n end\n if S.rouletteOrder then addOrder(S.rouletteOrder,0,S.rouletteTimes)\n else\n  -- Initial estimates use the reference's three possible orders. Prepare events narrow them.\n  for _,order in pairs(orders) do addOrder(order,S.roulette.first) end\n end\nend\nS.dotStarts={}\nS.dotGaps={}\nS.dotEnds={ [1644]=\"p1end\", [1185]=\"p2end\", [1801]=\"p3end\" }\nfunction S.publishSpinyLifetime(target,now)\n -- Only Spiny uses the live TTK override; nails retain their existing forecasts.\n if target and target.contentid~=2091 and target.alive and target.targetable then return false end\n if not (target and target.contentid==2091) and S.dotContentID~=2091 then return false end\n A.clearAutoSimPhases(\"DotAvailability\",0,0)\n A.clearAutoSimPhases(\"DotAvailability\",0,1)\n A.clearAutoSimPhases(\"TargetLifetime\",0)\n S.spinyLifetimeNext=now+1\n if not (target and target.contentid==2091 and target.alive and target.targetable and target.attackable) then\n  S.dotPublishedTarget=nil;S.dotPublishedEnd=nil\n  return true\n end\n S.dotEntityID=target.id;S.dotContentID=2091;S.dotPublishedTarget=target.id\n local ttl=TensorCore.calcTimeToKill(target.id)\n local valid=type(ttl)==\"number\" and ttl==ttl and ttl>0 and ttl<1259-now\n if valid then\n  if S.spinyLifetimeID~=target.id then S.spinyLifetimeID=target.id;S.spinyLifetimeStart=now end\n  S.dotPublishedEnd=now+ttl\n  A.addAutoSimPhase(\"TargetLifetime\",S.spinyLifetimeStart,S.dotPublishedEnd,1,0)\n else S.dotPublishedEnd=nil end\n if S.spinyLifetimeLogID~=target.id or not S.spinyLifetimeLogAt or now>=S.spinyLifetimeLogAt+5 then\n  d(\"[UWU AutoSim] Spiny lifetime target=\"..tostring(target.id)..\" remaining=\"..tostring(ttl)..\" published=\"..tostring(valid)..\"; DoT exclusions unchanged\")\n  S.spinyLifetimeLogID=target.id;S.spinyLifetimeLogAt=now\n end\n return true\nend\n\nfunction S.publishDots()\n local target=TensorCore.mGetTarget()\n local now=A.getAutoSimTime()\n if S.publishSpinyLifetime(target,now) then return end\n if target and target.alive and target.targetable then\n  S.dotEntityID=target.id;S.dotContentID=target.contentid\n end\n if not S.dotEntityID then return end\n local cid=S.dotContentID\n local endAnchor=S.dotEnds[cid]\n local finish=math.min(1259,math.max(now+5,S.time(S.kill.after)+S.kill.offset))\n local start=0\n if endAnchor then\n  if not S.dotStarts[S.dotEntityID] then\n   local predicted=cid==1644 and 0 or (cid==1185 and S.time(\"p1end\")+S.ifritArrival or S.time(\"ifrit2Back\"))\n   S.dotStarts[S.dotEntityID]=math.max(0,math.min(predicted,now))\n  end\n  start=S.dotStarts[S.dotEntityID]\n  finish=math.min(1259,S.observed[endAnchor] or math.max(S.time(endAnchor),now+5))\n end\n -- Preserve target lifetime, but exclude periods without DoT damage, including Ultima jumps.\n A.clearAutoSimPhases(\"DotAvailability\",0,0)\n A.clearAutoSimPhases(\"TargetLifetime\",0)\n if finish<=start then return end\n A.addAutoSimPhase(\"TargetLifetime\",start,finish,1,0)\n local stop=endAnchor and math.max(start,finish-.5) or finish\n -- Respect existing excluded adds even when selected manually.\n if cid==1186 or cid==1648 or cid==2091 then stop=start end\n local gaps={}\n local observed=S.dotGaps[S.dotEntityID] or {}\n for _,phase in ipairs(S.phases) do\n  if phase[1]==\"FullDowntime\" and not (phase[2]==\"ifritDash\" and (S.ifritDashWasFinal or (not S.observed.ifritDash and S.time(\"p2end\")<=S.time(\"ifritDash\")))) then\n   local a,b=S.time(phase[2])+phase[3],S.time(phase[4])+phase[5]\n   local replaced=false\n   for _,gap in ipairs(observed) do if math.abs(gap[1]-a)<10 then replaced=true;break end end\n   if not replaced and b>start and a<stop then gaps[#gaps+1]={math.max(start,a),math.min(stop,b),1} end\n  end\n end\n for _,gap in ipairs(observed) do\n  local a,b=math.max(start,gap[1]),math.min(stop,gap[2] or stop)\n  if b>a then gaps[#gaps+1]={a,b,1} end\n end\n local cursor=start\n local available={}\n for _,gap in ipairs(S.union(gaps)) do\n  if gap[1]>cursor then available[#available+1]={cursor,gap[1]} end\n  cursor=math.max(cursor,gap[2])\n end\n if stop>cursor then available[#available+1]={cursor,stop} end\n for _,window in ipairs(available) do A.addAutoSimPhase(\"DotAvailability\",window[1],window[2],1,0,0) end\n S.dotPublishedEnd=finish;S.dotPublishedTarget=S.dotEntityID\n S.dotAnchorSignature=tostring(S.observed.p1end)..\":\"..tostring(S.observed.p2end)..\":\"..tostring(S.observed.p3end)\nend\n\nfunction S.publish()\n local now=A.getAutoSimTime()\n local finish=math.max(now+5,S.time(S.kill.after)+S.kill.offset)\n A.setAutoSimKillTime(math.min(finish,1259))\n local grouped={FullDowntime={},CasterDowntime={},Stun={},BossModifier={},RaidBuff={},GroundFieldMovement={}}\n local function add(kind,a,b,value)\n  if b>a then grouped[kind][#grouped[kind]+1]={a,b,value or 1} end\n end\n for _,p in ipairs(S.phases) do\n  -- HP-driven deaths are variable. Do not declare the still-live boss unavailable.\n  local hpDeath=p[1]==\"FullDowntime\" and (p[2]==\"p1end\" or p[2]==\"p2end\")\n  if (not hpDeath or S.observed[p[2]]~=nil) and not (p[2]==\"ifritDash\" and (S.ifritDashWasFinal or (not S.observed.ifritDash and S.time(\"p2end\")<=S.time(\"ifritDash\")))) then\n   local a,b=S.time(p[2])+p[3],S.time(p[4])+p[5]\n   local readySpiny=S.spinyUptime\n   if p[1]==\"FullDowntime\" and p[2]==\"pull\" and p[3]==33.96 and readySpiny then\n    -- Split only Garuda's first jump: the stack-safe Spiny remains attackable.\n    add(p[1],a,math.min(b,readySpiny[1]),p[6])\n    add(p[1],math.max(a,readySpiny[2] or b),b,p[6])\n   else\n    add(p[1],a,b,p[6])\n   end\n  end\n end\n for _,p in ipairs(S.windows) do\n  local a,b=S.time(p[2])+p[3],S.time(p[4])+p[5]\n  if p[2]==\"titan1\" and S.observed.p3end then b=math.min(b,S.observed.p3end) end\n  if not (S.cfg.fakeMelee and p[7]==\"eruption bait\") then add(p[1],a,b,p[6]) end\n end\n if S.cfg.poolLaha then\n  add(\"BossModifier\",S.time(\"magitekBit1\")+S.lahaDelay,S.time(\"p4end\"),.01)\n end\n if S.cfg.priorityGaols then\n  add(\"BossModifier\",S.time(\"titan1\")+68.966,S.time(\"titan1\")+73.966,1.10)\n  add(\"BossModifier\",S.time(\"p4end\")+227.75,S.time(\"p4end\")+232.75,1.10)\n end\n if S.cfg.raidBuffs then\n  local prev\n  for _,w in ipairs(S.buffwindows) do\n   local t=S.time(w[1])+w[2]\n   if prev then t=math.max(t,prev+120) end\n   local burstWeight=w[1]==\"p1end\" and 1.4 or (1+S.cfg.buffGain/100)\n   local burstEnd=t+20\n   if w[1]==\"p1end\" then\n    -- Never extend the artificial 1.4 opener into nail softening.\n    burstEnd=math.min(burstEnd,S.time(\"p1end\")+39,S.nailsStartedAt or math.huge)\n   end\n   add(\"RaidBuff\",t,burstEnd,burstWeight)\n   prev=t\n  end\n end\n for _,w in ipairs(S.rouletteWindows) do add(\"CasterDowntime\",w[1],w[2],1) end\n for _,w in pairs(S.dynamic) do add(w[1],w[2],w[3],w[4]) end\n for kind,list in pairs(grouped) do\n  A.clearAutoSimPhases(kind)\n  -- All absolute same-type overlaps are merged before submission.\n  if kind==\"BossModifier\" or kind==\"RaidBuff\" then\n   local cuts,seen={},{}\n   for _,w in ipairs(list) do for i=1,2 do if not seen[w[i]] then cuts[#cuts+1]=w[i];seen[w[i]]=true end end end\n   table.sort(cuts)\n   for i=1,#cuts-1 do\n    local value,active=1,false\n    for _,w in ipairs(list) do if w[1]<=cuts[i] and w[2]>=cuts[i+1] then value=value*w[3];active=true end end\n    if active then A.addAutoSimPhase(kind,cuts[i],cuts[i+1],value) end\n   end\n  else\n   for _,w in ipairs(S.union(list)) do A.addAutoSimPhase(kind,w[1],w[2],w[3]) end\n  end\n end\n S.publishDots()\n A.clearAutoSimUncertainty()\n A.addAutoSimUncertainty(0,2)\n local uncertainty=2\n for _,name in ipairs(S.anchorOrder) do\n  if not S.observed[name] then\n   local anchor=S.anchors[name]\n   uncertainty=math.max(uncertainty,anchor.spread)\n   A.addAutoSimUncertainty(S.time(name)-25,uncertainty)\n  end\n end\n A.addAutoSimUncertainty(math.max(0,finish-30),math.max(uncertainty,S.kill.spread))\nend\nfunction S.resync(name,now)\n if S.observed[name] then return end\n S.observed[name]=now\n S.rouletteForecast()\n S.publish()\n\nend\n-- Snapshot slower-group adjustments once at pull setup, never from the drawing callback.\nlocal G=_G.UWU_AutoSimSettings or {}\nlocal previous=data.uwuAutoSim\nlocal timing=previous and previous.slowerGroupTiming\nif not timing then\n timing={enabled=G.slowerGroup==true}\n for _,key in ipairs({\"garudaExtra\",\"ifritExtra\",\"titanExtra\",\"killExtra\"}) do\n  timing[key]=math.max(0,math.min(90,tonumber(G[key]) or 0))\n end\nend\nS.slowerGroupTiming=timing\nif timing.enabled then\n S.anchors.p1end.offset=S.anchors.p1end.offset+timing.garudaExtra\n S.anchors.p2end.offset=S.anchors.p2end.offset+timing.ifritExtra\n S.anchors.p3end.offset=S.anchors.p3end.offset+timing.titanExtra\n S.kill.offset=S.kill.offset+timing.killExtra\nend\nS.rouletteForecast()\nS.publish()\nS.planRole=\"ranged\"; S.planJob=Player.job\ndata.uwuAutoSim=S\nself.used=true",
							conditions = 
							{
								
								{
									"898ae64a-0ddc-5a0b-9e9a-9467be6f721d",
									true,
								},
								
								{
									"fa84326b-fe58-29c3-b948-11cfe1e57b29",
									false,
								},
								
								{
									"5d7d1ece-a048-a72d-8d1a-b28976fc4be9",
									true,
								},
								
								{
									"ed7eb98b-fc29-1b13-882f-dfd2b9579822",
									true,
								},
								
								{
									"d3a20ef0-8431-9cf1-9755-8f0ab605d1af",
									true,
								},
								
								{
									"64d83cc2-d4b1-529d-9c66-3e66a86ef118",
									true,
								},
							},
							name = "Ranged/support - Apply owned UWU state",
							uuid = "f165d8a4-d88f-2d64-8874-0d9aba3f0cef",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "-- Profile-owned settings, loaded before any GUI or gameplay consumer.\nif not _G.UWU_AutoSimSettingsStore then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[UWU-AutoSim.lua]]\n local saved={}\n if FileExists(path) then\n  local loaded=FileLoad(path)\n  if type(loaded)==\"table\" then saved=loaded end\n end\n local specs={\n  UWU_AutoSimSettings={autoCasterLB=true,autoMeleeLB=true,vulcanKnockback=true,casterNailLifetime=true,casterNailCastBudget=2.8,spinyTarget=true,spinyEarly=false,adjustKillTimes=false,garudaSeconds=130,ifritSeconds=100,titanSeconds=125,fakeMelee=false,slowerGroup=false,garudaExtra=0,ifritExtra=0,titanExtra=0,killExtra=0},\n  UWU_BLM_AutoSimConfig={poolLaha=true,priorityGaols=true,roulette=true,raidBuffs=true,buffGain=17,nails=true,closePair=true,surecast=true,manaward=true,holdTripleLateGaruda=true,garudaEndSeconds=133.235,ifritEndAfterFirstDisappear=40.328,tripleHoldLeadSeconds=8,burstWeight20261029=true},\n  UWU_BRD_AutoSimConfig={poolLaha=true,priorityGaols=true,raidBuffs=false,buffGain=16.87},\n  UWU_RPR_AutoSimConfig={lbWho=2,poolLaha=true,priorityGaols=true,raidBuffs=false,buffGain=17,burstWeight20261029=true},\n  UWU_AutoSimUI={general=true,garuda=false,ifrit=false,titan=false,ultima=false}\n }\n local ranges={buffGain={0,40},lbWho={1,2},casterNailCastBudget={0.5,5},garudaSeconds={90,240},ifritSeconds={70,240},titanSeconds={80,240},garudaExtra={0,90},ifritExtra={0,90},titanExtra={0,90},killExtra={0,90},tripleHoldLeadSeconds={0,20},garudaEndSeconds={110,180},ifritEndAfterFirstDisappear={20,90}}\n for name,defaults in pairs(specs) do\n  local current=_G[name]\n  local disk=type(saved[name])==\"table\" and saved[name] or {}\n  local values={}\n  for key,default in pairs(defaults) do\n   -- Disk wins on a fresh Lua session even if an older initializer already ran.\n   local value=disk[key]\n   if value==nil and current then value=current[key] end\n   if type(value)~=type(default) then value=default end\n   local range=ranges[key]\n   if range and (value~=value or value<range[1] or value>range[2] or (key==\"lbWho\" and value%1~=0)) then value=default end\n   values[key]=value\n  end\n  _G[name]=values\n end\n local store={}\n function store.save()\n  local out={}\n  for name,defaults in pairs(specs) do\n   out[name]={}\n   for key in pairs(defaults) do out[name][key]=_G[name][key] end\n  end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,out)\n end\n _G.UWU_AutoSimSettingsStore=store\n store.save()\nend\n\n-- UWU forecast: event resync handlers are shared by every supported job.\n-- This plan retains this job's movement, target lifetimes and existing preferences.\n-- Phase/window records: {type, start anchor, start offset, end anchor, end offset, value}.\n-- Anchors use the real combat clock; native events correct the estimates.\n-- Spiny Plume: applies regardless of model scale, including the enlarged plume.\nlocal spiny=TensorCore.API.TensorACR.addBlacklistEntry(2091,\"UWU Spiny Plume\")\nif not spiny.enabled or spiny.allowIfTarget or spiny.allowSmartDoT then\n spiny.enabled=true;spiny.allowIfTarget=false;spiny.allowSmartDoT=false\n TensorCore.API.TensorACR.saveDotBlacklist()\nend\nlocal feather=TensorCore.API.TensorACR.addBlacklistEntry(1648,\"UWU Satin Plume\")\nif not feather.enabled or feather.allowIfTarget or feather.allowSmartDoT then\n feather.enabled=true;feather.allowIfTarget=false;feather.allowSmartDoT=false\n TensorCore.API.TensorACR.saveDotBlacklist()\nend\nlocal A=TensorCore.API.TensorACR\nlocal nail=A.addBlacklistEntry(1186,\"UWU Infernal Nail\")\nif not nail.enabled or nail.allowIfTarget or nail.allowSmartDoT then\n nail.enabled=true;nail.allowIfTarget=false;nail.allowSmartDoT=false\n A.saveDotBlacklist()\nend\n-- Generated encounter inputs are inserted by the MCP authoring script.\n-- Five EU BLM clears supplied the original the phase-relative medians. Native events resync them.\nlocal A=TensorCore.API.TensorACR\n_G.UWU_RPR_TemporaryState=_G.UWU_RPR_TemporaryState or {}\nlocal cfg=_G.UWU_RPR_AutoSimConfig\nif not cfg then\n cfg={lbWho=2,poolLaha=true,priorityGaols=true,roulette=false,raidBuffs=false,buffGain=16.87}\n _G.UWU_RPR_AutoSimConfig=cfg\nend\nlocal S={\n  [\"anchors\"]={\n    [\"p1end\"]={\n      [\"after\"]=\"pull\",\n      [\"offset\"]=134.629,\n      [\"spread\"]=10\n    },\n    [\"ifrit1\"]={\n      [\"after\"]=\"p1end\",\n      [\"offset\"]=72.217,\n      [\"spread\"]=0.75\n    },\n    [\"p2end\"]={\n      [\"after\"]=\"ifrit1\",\n      [\"offset\"]=38.162,\n      [\"spread\"]=10\n    },\n    [\"ifrit2Back\"]={\n      [\"after\"]=\"p2end\",\n      [\"offset\"]=7.422,\n      [\"spread\"]=0.75\n    },\n    [\"titan1\"]={\n      [\"after\"]=\"ifrit2Back\",\n      [\"offset\"]=22.062,\n      [\"spread\"]=0.75\n    },\n    [\"p3end\"]={\n      [\"after\"]=\"titan1\",\n      [\"offset\"]=107.938,\n      [\"spread\"]=15\n    },\n    [\"titan3Back\"]={\n      [\"after\"]=\"p3end\",\n      [\"offset\"]=12.283,\n      [\"spread\"]=0.75\n    },\n    [\"magitekBit1\"]={\n      [\"after\"]=\"titan3Back\",\n      [\"offset\"]=7.018,\n      [\"spread\"]=0.75\n    },\n    [\"p4end\"]={\n      [\"after\"]=\"magitekBit1\",\n      [\"offset\"]=25.99,\n      [\"spread\"]=0.75\n    },\n    [\"graniteGaol1\"]={\n      [\"after\"]=\"p4end\",\n      [\"offset\"]=233.053,\n      [\"spread\"]=0.75\n    }\n  },\n  [\"kill\"]={\n    [\"after\"]=\"graniteGaol1\",\n    [\"offset\"]=137.5,\n    [\"spread\"]=7.881\n  },\n  [\"phases\"]={\n    {\n      \"FullDowntime\",\n      \"pull\",\n      70.532,\n      \"pull\",\n      74.238,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p1end\",\n      0.1,\n      \"p1end\",\n      13.303,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"ifrit1\",\n      0.1,\n      \"ifrit1\",\n      3.812,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p2end\",\n      0.1,\n      \"ifrit2Back\",\n      -0.3,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"titan1\",\n      0.1,\n      \"titan1\",\n      8.158,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"titan1\",\n      54.272,\n      \"titan1\",\n      62.508,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p3end\",\n      0.1,\n      \"titan3Back\",\n      -0.3,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"magitekBit1\",\n      0.1,\n      \"magitekBit1\",\n      13.741,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p4end\",\n      0.1,\n      \"p4end\",\n      50.191,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p4end\",\n      77.992,\n      \"p4end\",\n      98.072,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p4end\",\n      156.499,\n      \"p4end\",\n      161.092,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p4end\",\n      193.502,\n      \"p4end\",\n      198.14,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p4end\",\n      214.525,\n      \"p4end\",\n      229.087,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"graniteGaol1\",\n      0.1,\n      \"p4end\",\n      255.307,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p4end\",\n      353.6,\n      \"p4end\",\n      357.89,\n      1\n    }\n  },\n  [\"windows\"]={\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      35.0,\n      \"pull\",\n      37.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      38.5,\n      \"pull\",\n      41.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      43.0,\n      \"pull\",\n      44.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      91.0,\n      \"pull\",\n      92.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      102.5,\n      \"pull\",\n      104.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      105.5,\n      \"pull\",\n      106.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      127.5,\n      \"pull\",\n      128.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p1end\",\n      44.5,\n      \"p1end\",\n      47.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p1end\",\n      91.5,\n      \"p1end\",\n      98.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"titan1\",\n      8.5,\n      \"titan1\",\n      11.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"titan1\",\n      14.0,\n      \"titan1\",\n      21.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"titan1\",\n      27.5,\n      \"titan1\",\n      29.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"titan1\",\n      41.0,\n      \"titan1\",\n      42.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"titan1\",\n      74.5,\n      \"titan1\",\n      76.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      99.5,\n      \"p4end\",\n      100.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      109.0,\n      \"p4end\",\n      115.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      121.0,\n      \"p4end\",\n      124.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      125.0,\n      \"p4end\",\n      129.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      144.5,\n      \"p4end\",\n      145.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      161.5,\n      \"p4end\",\n      169.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      170.0,\n      \"p4end\",\n      172.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      173.5,\n      \"p4end\",\n      174.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      178.5,\n      \"p4end\",\n      182.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      229.5,\n      \"p4end\",\n      231.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      274.0,\n      \"p4end\",\n      280.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      281.0,\n      \"p4end\",\n      282.5,\n      1\n    }\n  },\n  [\"returns\"]={\n    \n  },\n  [\"buffwindows\"]={\n    {\n      \"pull\",\n      8.069\n    },\n    {\n      \"p1end\",\n      16.081\n    },\n    {\n      \"ifrit2Back\",\n      52.467\n    },\n    {\n      \"p4end\",\n      52.628\n    },\n    {\n      \"p4end\",\n      175.979\n    },\n    {\n      \"p4end\",\n      317.846\n    }\n  },\n  [\"sample_count\"]=5,\n  [\"kill_samples\"]={\n    782.098,\n    751.692,\n    783.165,\n    838.291,\n    794.832\n  },\n  [\"roulette\"]={\n    [\"first\"]=293.478,\n    [\"step\"]=20.123,\n    [\"templates\"]={\n      [\"Garuda\"]={\n        {\n          9.5,\n          10.0\n        }\n      },\n      [\"Ifrit\"]={\n        {\n          7.0,\n          9.5\n        },\n        {\n          11.0,\n          11.5\n        }\n      },\n      [\"Titan\"]={\n        {\n          5.0,\n          13.0\n        }\n      }\n    }\n  },\n  [\"anchorOrder\"]={\n    \"p1end\",\n    \"ifrit1\",\n    \"p2end\",\n    \"ifrit2Back\",\n    \"titan1\",\n    \"p3end\",\n    \"titan3Back\",\n    \"magitekBit1\",\n    \"p4end\",\n    \"graniteGaol1\"\n  },\n  [\"ifritArrival\"]=13.603,\n  [\"lahaDelay\"]=14.041\n}\n-- Separate Ifrit's second dash from his actual phase death.\nS.anchors.ifritDash={after=\"ifrit1\",offset=47.95,spread=2}\nS.anchors.ifritDashBack={after=\"ifritDash\",offset=15.79,spread=1}\nS.anchors.p2end={after=\"ifrit1\",offset=42.386,spread=12}\nS.anchors.ifrit2Back={after=\"p2end\",offset=7.55,spread=.75}\nS.anchorOrder={\"p1end\",\"ifrit1\",\"ifritDash\",\"ifritDashBack\",\"p2end\",\"ifrit2Back\",\"titan1\",\"p3end\",\"titan3Back\",\"magitekBit1\",\"p4end\",\"graniteGaol1\"}\nS.phases[#S.phases+1]={\"FullDowntime\",\"ifritDash\",0.1,\"ifritDashBack\",-0.1,1}\nfor _,phase in ipairs(S.phases) do\n if phase[1]==\"FullDowntime\" and phase[2]==\"ifrit1\" and phase[4]==\"ifrit1\" then phase[5]=4.25 end\nend\n-- First Garuda disappearance: corroborated in three recent native logs.\nS.phases[#S.phases+1]={\"FullDowntime\",\"pull\",33.96,\"pull\",38.25,1}\n-- Shared encounter defaults chosen by user: Garuda 130s, Ifrit 100s; live resyncs still win.\nS.anchors.p1end.offset=130\nS.anchors.p1end.spread=27\n-- Ifrit default: 101s from targetability (58.614s to first disappearance + 42.386s).\nS.anchors.p2end.spread=17\nS.windows={{\"MeleeDowntime\",\"titan1\",15.831,\"titan1\",17.831,1}}\n-- Native personal-gaol forecast supplies its own additional movement interval.\n-- Three native Monk-pull boss-event samples, 21 October; not player damage-gap estimates.\nfor _,phase in ipairs(S.phases) do\n if phase[1]==\"FullDowntime\" and phase[2]==\"pull\" and math.abs(phase[3]-70.532)<.001 then\n  phase[3]=68.865;phase[5]=73.150\n elseif phase[1]==\"FullDowntime\" and phase[2]==\"titan1\" and phase[3]==.1 then\n  phase[5]=7.544\n end\nend\nS.cfg={}\nfor k,v in pairs(cfg) do S.cfg[k]=v end\nlocal userSettings=_G.UWU_AutoSimSettings or {}\n-- Shared Ifrit controls apply to every role plan.\nS.cfg.nails=_G.UWU_BLM_AutoSimConfig.nails\nS.cfg.closePair=_G.UWU_BLM_AutoSimConfig.closePair\nlocal roleJob=Player.job\nS.cfg.fakeMelee=userSettings.fakeMelee==true and (roleJob==25 or roleJob==27 or roleJob==35 or roleJob==42 or roleJob==23 or roleJob==31 or roleJob==38)\nS.cfg.adjustKillTimes=userSettings.adjustKillTimes==true\nlocal garuda=130;local ifrit=100;local titan=125\nif S.cfg.adjustKillTimes then\n garuda=userSettings.garudaSeconds or 130\n ifrit=userSettings.ifritSeconds or 100\n titan=userSettings.titanSeconds or 125\nend\nS.anchors.p1end.offset=garuda\nS.anchors.p2end={after=\"ifrit1\",offset=ifrit-(72.217-S.ifritArrival),spread=17}\nS.anchors.p3end.offset=titan-S.anchors.titan1.offset\n-- Tag only eruption bait-route forecasts; no other movement is removed.\nfor _,w in ipairs(S.windows) do\n if w[1]==\"CasterDowntime\" and ((w[2]==\"p1end\" and (w[3]==44.5 or w[3]==91.5)) or (w[2]==\"p4end\" and w[3]==109)) then w[7]=\"eruption bait\" end\nend\nS.observed={pull=0}\nS.dynamic={}\nS.rouletteWindows={}\nfunction S.time(name)\n if S.observed[name] then return S.observed[name] end\n local a=S.anchors[name]\n return S.time(a.after)+a.offset\nend\nfunction S.union(list)\n table.sort(list,function(a,b)return a[1]<b[1] end)\n local out={}\n for _,w in ipairs(list) do\n  local last=out[#out]\n  if last and w[1]<=last[2] and w[3]==last[3] then last[2]=math.max(last[2],w[2])\n  else out[#out+1]={w[1],w[2],w[3]} end\n end\n return out\nend\nfunction S.rouletteForecast(kind,now)\n local orders={Garuda={\"Garuda\",\"Ifrit\",\"Titan\"},Ifrit={\"Ifrit\",\"Garuda\",\"Titan\"},Titan={\"Titan\",\"Ifrit\",\"Garuda\"}}\n if kind then\n  if not S.rouletteOrder then S.rouletteOrder=orders[kind];S.rouletteTimes={} end\n  local step=#S.rouletteTimes+1\n  if S.rouletteOrder[step]~=kind then return end\n  S.rouletteTimes[step]=now\n end\n S.rouletteWindows={}\n if not S.cfg.roulette then return end\n local function addOrder(order,base,times)\n  local offsets={0,S.roulette.step,S.roulette.step*2}\n  if times and #times>0 then base=times[#times]-S.time(\"p4end\")-offsets[#times] end\n  for i,k in ipairs(order) do\n   local t=times and times[i] or S.time(\"p4end\")+base+offsets[i]\n   for _,w in ipairs((S.cfg.fakeMelee and k==\"Ifrit\") and {} or S.roulette.templates[k]) do\n    S.rouletteWindows[#S.rouletteWindows+1]={t+w[1],t+w[2],1}\n   end\n  end\n end\n if S.rouletteOrder then addOrder(S.rouletteOrder,0,S.rouletteTimes)\n else\n  -- Initial estimates use the reference's three possible orders. Prepare events narrow them.\n  for _,order in pairs(orders) do addOrder(order,S.roulette.first) end\n end\nend\nS.dotStarts={}\nS.dotGaps={}\nS.dotEnds={ [1644]=\"p1end\", [1185]=\"p2end\", [1801]=\"p3end\" }\nfunction S.publishSpinyLifetime(target,now)\n -- Only Spiny uses the live TTK override; nails retain their existing forecasts.\n if target and target.contentid~=2091 and target.alive and target.targetable then return false end\n if not (target and target.contentid==2091) and S.dotContentID~=2091 then return false end\n A.clearAutoSimPhases(\"DotAvailability\",0,0)\n A.clearAutoSimPhases(\"DotAvailability\",0,1)\n A.clearAutoSimPhases(\"TargetLifetime\",0)\n S.spinyLifetimeNext=now+1\n if not (target and target.contentid==2091 and target.alive and target.targetable and target.attackable) then\n  S.dotPublishedTarget=nil;S.dotPublishedEnd=nil\n  return true\n end\n S.dotEntityID=target.id;S.dotContentID=2091;S.dotPublishedTarget=target.id\n local ttl=TensorCore.calcTimeToKill(target.id)\n local valid=type(ttl)==\"number\" and ttl==ttl and ttl>0 and ttl<1259-now\n if valid then\n  if S.spinyLifetimeID~=target.id then S.spinyLifetimeID=target.id;S.spinyLifetimeStart=now end\n  S.dotPublishedEnd=now+ttl\n  A.addAutoSimPhase(\"TargetLifetime\",S.spinyLifetimeStart,S.dotPublishedEnd,1,0)\n else S.dotPublishedEnd=nil end\n if S.spinyLifetimeLogID~=target.id or not S.spinyLifetimeLogAt or now>=S.spinyLifetimeLogAt+5 then\n  d(\"[UWU AutoSim] Spiny lifetime target=\"..tostring(target.id)..\" remaining=\"..tostring(ttl)..\" published=\"..tostring(valid)..\"; DoT exclusions unchanged\")\n  S.spinyLifetimeLogID=target.id;S.spinyLifetimeLogAt=now\n end\n return true\nend\n\nfunction S.publishDots()\n local t=TensorCore.mGetTarget()\n local now=A.getAutoSimTime()\n if S.publishSpinyLifetime(t,now) then return end\n if t and t.alive and t.targetable then\n  S.dotEntityID=t.id;S.dotContentID=t.contentid\n end\n local cid=S.dotContentID\n local endAnchor=S.dotEnds[cid]\n local finish=math.min(1259,math.max(now+5,S.time(S.kill.after)+S.kill.offset))\n local start=0\n if endAnchor then\n  if not S.dotStarts[cid] then\n   local predicted=cid==1644 and 0 or (cid==1185 and S.time(\"p1end\")+S.ifritArrival or S.time(\"ifrit2Back\"))\n   S.dotStarts[cid]=math.max(0,math.min(predicted,now))\n  end\n  start=S.dotStarts[cid]\n  finish=S.observed[endAnchor] or math.max(S.time(endAnchor),now+5)\n end\n A.clearAutoSimPhases(\"DotAvailability\",0)\n A.clearAutoSimPhases(\"TargetLifetime\",0)\n if finish<=start then return end\n A.addAutoSimPhase(\"TargetLifetime\",start,finish,1,0)\n local stop=endAnchor and math.max(start,finish-.5) or finish\n -- FullDowntime already prevents application during boss disappearances.\n -- Keep the same target available across those gaps so its existing mark persists.\n if stop>start then A.addAutoSimPhase(\"DotAvailability\",start,stop,1,0) end\n S.dotPublishedEnd=finish;S.dotPublishedTarget=S.dotEntityID\nend\n\nfunction S.publish()\n local live=_G.UWU_RPR_AutoSimConfig\n if live then S.cfg.lbWho=live.lbWho or 2 end\n local now=A.getAutoSimTime()\n local finish=math.max(now+5,S.time(S.kill.after)+S.kill.offset)\n A.setAutoSimKillTime(math.min(finish,1259))\n local grouped={MeleeDowntime={},FullDowntime={},CasterDowntime={},Stun={},BossModifier={},RaidBuff={},GroundFieldMovement={}}\n local function add(kind,a,b,value)\n  if b>a then grouped[kind][#grouped[kind]+1]={a,b,value or 1} end\n end\n for _,p in ipairs(S.phases) do\n  -- HP-driven deaths are variable. Do not declare the still-live boss unavailable.\n  local hpDeath=p[1]==\"FullDowntime\" and (p[2]==\"p1end\" or p[2]==\"p2end\")\n  if (not hpDeath or S.observed[p[2]]~=nil) and not (p[2]==\"ifritDash\" and (S.ifritDashWasFinal or (not S.observed.ifritDash and S.time(\"p2end\")<=S.time(\"ifritDash\")))) then\n   local a,b=S.time(p[2])+p[3],S.time(p[4])+p[5]\n   local readySpiny=S.spinyUptime\n   if p[1]==\"FullDowntime\" and p[2]==\"pull\" and p[3]==33.96 and readySpiny then\n    -- Split only Garuda's first jump: the stack-safe Spiny remains attackable.\n    add(p[1],a,math.min(b,readySpiny[1]),p[6])\n    add(p[1],math.max(a,readySpiny[2] or b),b,p[6])\n   else\n    add(p[1],a,b,p[6])\n   end\n  end\n end\n for _,p in ipairs(S.windows) do\n  local a,b=S.time(p[2])+p[3],S.time(p[4])+p[5]\n  if p[2]==\"titan1\" and S.observed.p3end then b=math.min(b,S.observed.p3end) end\n  if not (S.cfg.fakeMelee and p[7]==\"eruption bait\") then add(p[1],a,b,p[6]) end\n end\n if S.cfg.poolLaha then\n  add(\"BossModifier\",S.time(\"magitekBit1\")+S.lahaDelay,S.time(\"p4end\"),.01)\n end\n if S.cfg.priorityGaols then\n  add(\"BossModifier\",S.time(\"titan1\")+68.966,S.time(\"titan1\")+73.966,1.10)\n  add(\"BossModifier\",S.time(\"p4end\")+227.75,S.time(\"p4end\")+232.75,1.10)\n end\n if S.cfg.raidBuffs then\n  local prev\n  for _,w in ipairs(S.buffwindows) do\n   local t=S.time(w[1])+w[2]\n   if prev then t=math.max(t,prev+120) end\n   local burstWeight=w[1]==\"p1end\" and 1.4 or (1+S.cfg.buffGain/100)\n   local burstEnd=t+20\n   if w[1]==\"p1end\" then\n    -- Never extend the artificial 1.4 opener into nail softening.\n    burstEnd=math.min(burstEnd,S.time(\"p1end\")+39,S.nailsStartedAt or math.huge)\n   end\n   add(\"RaidBuff\",t,burstEnd,burstWeight)\n   prev=t\n  end\n end\n for _,w in ipairs(S.rouletteWindows) do add(\"CasterDowntime\",w[1],w[2],1) end\n local roster=AnyoneCore.Roster\n local slot=roster and roster.current() and roster.mySlot()\n if S.cfg.lbWho==1 and (slot==\"M1\" or slot==\"M2\") and not S.lbObserved then\n  local lb=S.time(\"magitekBit1\")+S.lahaDelay\n  add(\"Stun\",lb,lb+8.2,1)\n end\n for _,w in pairs(S.dynamic) do add(w[1],w[2],w[3],w[4]) end\n for kind,list in pairs(grouped) do\n  A.clearAutoSimPhases(kind)\n  -- All absolute same-type overlaps are merged before submission.\n  if kind==\"BossModifier\" or kind==\"RaidBuff\" then\n   local cuts,seen={},{}\n   for _,w in ipairs(list) do for i=1,2 do if not seen[w[i]] then cuts[#cuts+1]=w[i];seen[w[i]]=true end end end\n   table.sort(cuts)\n   for i=1,#cuts-1 do\n    local value,active=1,false\n    for _,w in ipairs(list) do if w[1]<=cuts[i] and w[2]>=cuts[i+1] then value=value*w[3];active=true end end\n    if active then A.addAutoSimPhase(kind,cuts[i],cuts[i+1],value) end\n   end\n  else\n   for _,w in ipairs(S.union(list)) do A.addAutoSimPhase(kind,w[1],w[2],w[3]) end\n  end\n end\n S.publishDots()\n A.clearAutoSimUncertainty()\n A.addAutoSimUncertainty(0,2)\n local uncertainty=2\n for _,name in ipairs(S.anchorOrder) do\n  if not S.observed[name] then\n   local anchor=S.anchors[name]\n   uncertainty=math.max(uncertainty,anchor.spread)\n   A.addAutoSimUncertainty(S.time(name)-25,uncertainty)\n  end\n end\n A.addAutoSimUncertainty(math.max(0,finish-30),math.max(uncertainty,S.kill.spread))\nend\nfunction S.resync(name,now)\n if S.observed[name] then return end\n S.observed[name]=now\n S.rouletteForecast()\n S.publish()\n\nend\n-- Snapshot slower-group adjustments once at pull setup, never from the drawing callback.\nlocal G=_G.UWU_AutoSimSettings or {}\nlocal previous=data.uwuAutoSim\nlocal timing=previous and previous.slowerGroupTiming\nif not timing then\n timing={enabled=G.slowerGroup==true}\n for _,key in ipairs({\"garudaExtra\",\"ifritExtra\",\"titanExtra\",\"killExtra\"}) do\n  timing[key]=math.max(0,math.min(90,tonumber(G[key]) or 0))\n end\nend\nS.slowerGroupTiming=timing\nif timing.enabled then\n S.anchors.p1end.offset=S.anchors.p1end.offset+timing.garudaExtra\n S.anchors.p2end.offset=S.anchors.p2end.offset+timing.ifritExtra\n S.anchors.p3end.offset=S.anchors.p3end.offset+timing.titanExtra\n S.kill.offset=S.kill.offset+timing.killExtra\nend\nS.rouletteForecast()\nS.publish()\nS.planRole=\"melee\"; S.planJob=Player.job\ndata.uwuAutoSim=S\nself.used=true",
							conditions = 
							{
								
								{
									"5c58e49b-46f6-c052-9213-461281e0d708",
									true,
								},
								
								{
									"48a75732-92b1-da4b-8f67-08c9850d8ef2",
									true,
								},
								
								{
									"02ed1211-1057-f33f-a839-ae5459026e19",
									true,
								},
								
								{
									"b18c5e5c-3877-3b9b-82cb-1bbaae6cfc52",
									true,
								},
								
								{
									"2a634669-73c9-02cc-8416-0bc50d5d5e70",
									true,
								},
								
								{
									"fef5d331-2b5d-53a5-aa28-1f97a188cea2",
									true,
								},
							},
							name = "Melee/tank - Apply owned UWU state",
							uuid = "c832f594-8039-5517-a76d-6b97f07533f9",
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
							name = "UWU territory",
							uuid = "4ffd5610-21b5-3705-acde-ade496baccbe",
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
							name = "Caster/healer plan",
							uuid = "41eaebca-7f15-b9b4-81c3-79168424cb3c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.uwuAutoSim==nil or data.uwuAutoSim.planJob~=Player.job",
							name = "not configured",
							uuid = "1fdca9c7-9c82-ef06-8ad1-102da258fbdb",
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
							uuid = "61c96b06-0a10-ff77-b2e8-8861a4f95615",
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
							uuid = "8999f562-ecbe-6da5-b54e-4d30d7f73b45",
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
							uuid = "79ec4216-d403-e03b-86ad-a32641abb630",
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
							name = "UWU territory",
							uuid = "898ae64a-0ddc-5a0b-9e9a-9467be6f721d",
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
								20,
								22,
								30,
								34,
								39,
								41,
								19,
								21,
								32,
								37,
							},
							name = "Other roles plan",
							uuid = "fa84326b-fe58-29c3-b948-11cfe1e57b29",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.uwuAutoSim==nil or data.uwuAutoSim.planJob~=Player.job",
							name = "not configured",
							uuid = "64d83cc2-d4b1-529d-9c66-3e66a86ef118",
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
							uuid = "5d7d1ece-a048-a72d-8d1a-b28976fc4be9",
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
							uuid = "ed7eb98b-fc29-1b13-882f-dfd2b9579822",
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
							uuid = "d3a20ef0-8431-9cf1-9755-8f0ab605d1af",
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
							name = "UWU territory",
							uuid = "5c58e49b-46f6-c052-9213-461281e0d708",
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
								20,
								22,
								30,
								34,
								39,
								41,
								19,
								21,
								32,
								37,
							},
							name = "Melee/tank plan",
							uuid = "48a75732-92b1-da4b-8f67-08c9850d8ef2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.uwuAutoSim==nil or data.uwuAutoSim.planJob~=Player.job",
							name = "not configured",
							uuid = "fef5d331-2b5d-53a5-aa28-1f97a188cea2",
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
							uuid = "02ed1211-1057-f33f-a839-ae5459026e19",
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
							uuid = "b18c5e5c-3877-3b9b-82cb-1bbaae6cfc52",
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
							uuid = "2a634669-73c9-02cc-8416-0bc50d5d5e70",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Setup and cleanup",
				eventType = 3,
				mechanicTime = 9,
				name = "[UWU] Configure on first Slipstream",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 5,
				timerStartOffset = -9,
				uuid = "9f36526b-fbec-1be2-9ee4-2ef3f69f657d",
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
							actionLua = "local T=_G.UWU_BLM_TemporaryState\nif T and T.gaolPriorityOptions then\n for k,v in pairs(T.gaolPriorityOptions) do _G[k]=v end\n T.gaolPriorityOptions=nil\nend\nlocal ownedTriple=_G.UWU_BLM_TemporaryState\nif ownedTriple and ownedTriple.tripleHold then\n TensorCore.API.TensorACR.holdActionUntil(7421,Now())\n ownedTriple.tripleHold=nil\nend\nlocal ownedLey=_G.UWU_BLM_TemporaryState\nif ownedLey and ownedLey.leyHold then\n TensorCore.API.TensorACR.holdActionUntil(3573,Now())\n ownedLey.leyHold=nil\nend\nlocal T=_G.UWU_BLM_TemporaryState\nif T then\n if T.options then for k,v in pairs(T.options) do _G[k]=v end end\n if T.gaols then TensorCore.API.TensorACR.deleteAOEBlacklistEntry(1804) end\n _G.UWU_BLM_TemporaryState=nil\nend\nTensorCore.API.TensorACR.holdActionUntil(846,Now())\n-- Release this profile's encounter caches on wipe/map departure.\ndata.uwuAutoSim=nil\nself.used=true",
							conditions = 
							{
								
								{
									"800709de-1afd-d1c9-9014-e38d6a5ba793",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "eb2e2584-6987-7c45-a3cc-75e28033738a",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local T=_G.UWU_BRD_TemporaryState\nif T and T.gaolPriorityOptions then\n for k,v in pairs(T.gaolPriorityOptions) do _G[k]=v end\n T.gaolPriorityOptions=nil\nend\nlocal T=_G.UWU_BRD_TemporaryState\nif T and T.gaols then\n TensorCore.API.TensorACR.deleteAOEBlacklistEntry(1804)\n TensorCore.API.TensorACR.deleteBlacklistEntry(1804)\n TensorCore.API.TensorACR.saveDotBlacklist()\nend\n_G.UWU_BRD_TemporaryState=nil\ndata.uwuAutoSim=nil\nself.used=true",
							conditions = 
							{
								
								{
									"d00aa225-b45e-864f-b8ab-8b727c000bad",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "ead94b0e-22bf-0506-b5d9-d11ac1ac7a7d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local T=_G.UWU_RPR_TemporaryState\nif T and T.gaolPriorityOptions then\n for k,v in pairs(T.gaolPriorityOptions) do _G[k]=v end\n T.gaolPriorityOptions=nil\nend\nlocal T=_G.UWU_RPR_TemporaryState\nif T and T.gaols then\n TensorCore.API.TensorACR.deleteAOEBlacklistEntry(1804)\n TensorCore.API.TensorACR.deleteBlacklistEntry(1804)\n TensorCore.API.TensorACR.saveDotBlacklist()\nend\n_G.UWU_RPR_TemporaryState=nil\nlocal N=data.uwuRPROwnNails\nif N and N.options then for k,v in pairs(N.options) do _G[k]=v end;N.options=nil end\ndata.uwuAutoSim=nil\nself.used=true",
							conditions = 
							{
								
								{
									"f159aeca-add5-eac7-9338-47658fc8a3d1",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "60698bac-0e28-26b1-9280-4cf80c1388d9",
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
							uuid = "800709de-1afd-d1c9-9014-e38d6a5ba793",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return _G.UWU_BRD_TemporaryState~=nil",
							name = "owned state",
							uuid = "d00aa225-b45e-864f-b8ab-8b727c000bad",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return _G.UWU_RPR_TemporaryState~=nil",
							name = "owned state",
							uuid = "f159aeca-add5-eac7-9338-47658fc8a3d1",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Setup and cleanup",
				eventType = 11,
				loop = true,
				mechanicTime = 9,
				name = "[UWU] Restore temporary settings MapChange",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -80,
				uuid = "b56fe3ef-b24e-ce83-861e-6242effc1114",
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
							actionLua = "local T=_G.UWU_BLM_TemporaryState\nif T and T.gaolPriorityOptions then\n for k,v in pairs(T.gaolPriorityOptions) do _G[k]=v end\n T.gaolPriorityOptions=nil\nend\nlocal ownedTriple=_G.UWU_BLM_TemporaryState\nif ownedTriple and ownedTriple.tripleHold then\n TensorCore.API.TensorACR.holdActionUntil(7421,Now())\n ownedTriple.tripleHold=nil\nend\nlocal ownedLey=_G.UWU_BLM_TemporaryState\nif ownedLey and ownedLey.leyHold then\n TensorCore.API.TensorACR.holdActionUntil(3573,Now())\n ownedLey.leyHold=nil\nend\nlocal T=_G.UWU_BLM_TemporaryState\nif T then\n if T.options then for k,v in pairs(T.options) do _G[k]=v end end\n if T.gaols then TensorCore.API.TensorACR.deleteAOEBlacklistEntry(1804) end\n _G.UWU_BLM_TemporaryState=nil\nend\nTensorCore.API.TensorACR.holdActionUntil(846,Now())\n-- Release this profile's encounter caches on wipe/map departure.\ndata.uwuAutoSim=nil\nself.used=true",
							conditions = 
							{
								
								{
									"50f8a098-cbbd-24a7-8a42-5290e63f0eee",
									true,
								},
								
								{
									"0e9f55e7-7507-4bc3-a248-1efcbe142b06",
									true,
								},
								
								{
									"6b72051d-fa15-2fc3-a242-18368c1d5f71",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "99822a0b-f5f2-1c05-a6be-8e28184a65d4",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local T=_G.UWU_BRD_TemporaryState\nif T and T.gaolPriorityOptions then\n for k,v in pairs(T.gaolPriorityOptions) do _G[k]=v end\n T.gaolPriorityOptions=nil\nend\nlocal T=_G.UWU_BRD_TemporaryState\nif T and T.gaols then\n TensorCore.API.TensorACR.deleteAOEBlacklistEntry(1804)\n TensorCore.API.TensorACR.deleteBlacklistEntry(1804)\n TensorCore.API.TensorACR.saveDotBlacklist()\nend\n_G.UWU_BRD_TemporaryState=nil\ndata.uwuAutoSim=nil\nself.used=true",
							conditions = 
							{
								
								{
									"f92261c0-13e1-5080-89d0-6438b3052d41",
									true,
								},
								
								{
									"d34002d1-2e20-43e7-899d-4e03926ef0ac",
									true,
								},
								
								{
									"ba42f11c-e470-96b4-9ea3-ca8e86733e21",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "477bff2f-45a0-75d3-90c8-cec3acf63c88",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local T=_G.UWU_RPR_TemporaryState\nif T and T.gaolPriorityOptions then\n for k,v in pairs(T.gaolPriorityOptions) do _G[k]=v end\n T.gaolPriorityOptions=nil\nend\nlocal T=_G.UWU_RPR_TemporaryState\nif T and T.gaols then\n TensorCore.API.TensorACR.deleteAOEBlacklistEntry(1804)\n TensorCore.API.TensorACR.deleteBlacklistEntry(1804)\n TensorCore.API.TensorACR.saveDotBlacklist()\nend\n_G.UWU_RPR_TemporaryState=nil\nlocal N=data.uwuRPROwnNails\nif N and N.options then for k,v in pairs(N.options) do _G[k]=v end;N.options=nil end\ndata.uwuAutoSim=nil\nself.used=true",
							conditions = 
							{
								
								{
									"5265683d-dc9c-1509-ac0c-355f546c30be",
									true,
								},
								
								{
									"1bb30c61-c796-280d-9d5c-ae51cc65d99f",
									true,
								},
								
								{
									"434f3e14-da52-02ca-9cc7-cfd446a9c80b",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "b5c39660-d2ab-e5fe-aff6-932c89216b2b",
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
							name = "UWU territory",
							uuid = "50f8a098-cbbd-24a7-8a42-5290e63f0eee",
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
							uuid = "0e9f55e7-7507-4bc3-a248-1efcbe142b06",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return _G.UWU_BLM_TemporaryState~=nil",
							name = "owned state",
							uuid = "6b72051d-fa15-2fc3-a242-18368c1d5f71",
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
							name = "UWU territory",
							uuid = "f92261c0-13e1-5080-89d0-6438b3052d41",
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
							uuid = "d34002d1-2e20-43e7-899d-4e03926ef0ac",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return _G.UWU_BRD_TemporaryState~=nil",
							name = "owned state",
							uuid = "ba42f11c-e470-96b4-9ea3-ca8e86733e21",
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
							name = "UWU territory",
							uuid = "5265683d-dc9c-1509-ac0c-355f546c30be",
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
							uuid = "1bb30c61-c796-280d-9d5c-ae51cc65d99f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return _G.UWU_RPR_TemporaryState~=nil",
							name = "owned state",
							uuid = "434f3e14-da52-02ca-9cc7-cfd446a9c80b",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Setup and cleanup",
				eventType = 9,
				loop = true,
				mechanicTime = 9,
				name = "[UWU] Restore temporary settings Wipe",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -80,
				uuid = "9ec53b36-8811-3ed1-8687-a175ba4d7854",
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
							actionLua = "local T=_G.UWU_BLM_TemporaryState\nif T and T.gaolPriorityOptions then\n for k,v in pairs(T.gaolPriorityOptions) do _G[k]=v end\n T.gaolPriorityOptions=nil\nend\nlocal ownedTriple=_G.UWU_BLM_TemporaryState\nif ownedTriple and ownedTriple.tripleHold then\n TensorCore.API.TensorACR.holdActionUntil(7421,Now())\n ownedTriple.tripleHold=nil\nend\nlocal ownedLey=_G.UWU_BLM_TemporaryState\nif ownedLey and ownedLey.leyHold then\n TensorCore.API.TensorACR.holdActionUntil(3573,Now())\n ownedLey.leyHold=nil\nend\nlocal T=_G.UWU_BLM_TemporaryState\nif T then\n if T.options then for k,v in pairs(T.options) do _G[k]=v end end\n if T.gaols then TensorCore.API.TensorACR.deleteAOEBlacklistEntry(1804) end\n _G.UWU_BLM_TemporaryState=nil\nend\nTensorCore.API.TensorACR.holdActionUntil(846,Now())\ndata.uwuAutoSim=nil\nself.used=true",
							conditions = 
							{
								
								{
									"cd650288-1447-019d-9e5f-a8c37fa91d4e",
									true,
								},
								
								{
									"2b6113ce-da9e-f39d-9c5a-bf2e9d3e0427",
									true,
								},
								
								{
									"823947f5-00b9-cf55-a190-8d6f7cb562e2",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "cda3840d-cef1-79b1-9ede-4704a761664c",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local T=_G.UWU_BRD_TemporaryState\nif T and T.gaolPriorityOptions then\n for k,v in pairs(T.gaolPriorityOptions) do _G[k]=v end\n T.gaolPriorityOptions=nil\nend\nlocal T=_G.UWU_BRD_TemporaryState\nif T and T.gaols then\n TensorCore.API.TensorACR.deleteAOEBlacklistEntry(1804)\n TensorCore.API.TensorACR.deleteBlacklistEntry(1804)\n TensorCore.API.TensorACR.saveDotBlacklist()\nend\n_G.UWU_BRD_TemporaryState=nil\ndata.uwuAutoSim=nil\nself.used=true",
							conditions = 
							{
								
								{
									"695b2439-1eeb-80f5-8870-9068ef030065",
									true,
								},
								
								{
									"4be4e0ad-526b-99f7-bfd5-59f0c4b1cac7",
									true,
								},
								
								{
									"492fca6d-551c-34c1-92c6-2b9058d8974b",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "aeea6ef7-aa8f-81d9-8d03-60e8e74b39d3",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local T=_G.UWU_RPR_TemporaryState\nif T and T.gaolPriorityOptions then\n for k,v in pairs(T.gaolPriorityOptions) do _G[k]=v end\n T.gaolPriorityOptions=nil\nend\nlocal T=_G.UWU_RPR_TemporaryState\nif T and T.gaols then\n TensorCore.API.TensorACR.deleteAOEBlacklistEntry(1804)\n TensorCore.API.TensorACR.deleteBlacklistEntry(1804)\n TensorCore.API.TensorACR.saveDotBlacklist()\nend\n_G.UWU_RPR_TemporaryState=nil\nlocal N=data.uwuRPROwnNails\nif N and N.options then for k,v in pairs(N.options) do _G[k]=v end;N.options=nil end\ndata.uwuAutoSim=nil\nself.used=true",
							conditions = 
							{
								
								{
									"7c2be940-4306-9aac-87be-40248d924ab3",
									true,
								},
								
								{
									"20a1999d-a437-ec66-9979-5e780b62bbb4",
									true,
								},
								
								{
									"42a4cfed-efff-9fe7-b988-a3f79526ed2b",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "e17df553-d779-e191-81ce-7a26ba927393",
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
							name = "UWU territory",
							uuid = "cd650288-1447-019d-9e5f-a8c37fa91d4e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return _G.UWU_BLM_TemporaryState~=nil",
							name = "owned state",
							uuid = "823947f5-00b9-cf55-a190-8d6f7cb562e2",
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
							uuid = "2b6113ce-da9e-f39d-9c5a-bf2e9d3e0427",
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
							name = "UWU territory",
							uuid = "695b2439-1eeb-80f5-8870-9068ef030065",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return _G.UWU_BRD_TemporaryState~=nil",
							name = "owned state",
							uuid = "492fca6d-551c-34c1-92c6-2b9058d8974b",
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
							uuid = "4be4e0ad-526b-99f7-bfd5-59f0c4b1cac7",
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
							name = "UWU territory",
							uuid = "7c2be940-4306-9aac-87be-40248d924ab3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return _G.UWU_RPR_TemporaryState~=nil",
							name = "owned state",
							uuid = "42a4cfed-efff-9fe7-b988-a3f79526ed2b",
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
							uuid = "20a1999d-a437-ec66-9979-5e780b62bbb4",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Setup and cleanup",
				eventType = 17,
				loop = true,
				mechanicTime = 9,
				name = "[UWU] Restore temporary settings CountdownCancel",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1500,
				timerStartOffset = -80,
				uuid = "2ed5cd0a-ba36-43ac-ac80-598bb73ea614",
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
							actionLua = "-- Profile-owned settings, loaded before any GUI or gameplay consumer.\nif not _G.UWU_AutoSimSettingsStore then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[UWU-AutoSim.lua]]\n local saved={}\n if FileExists(path) then\n  local loaded=FileLoad(path)\n  if type(loaded)==\"table\" then saved=loaded end\n end\n local specs={\n  UWU_AutoSimSettings={autoCasterLB=true,autoMeleeLB=true,vulcanKnockback=true,casterNailLifetime=true,casterNailCastBudget=2.8,spinyTarget=true,spinyEarly=false,adjustKillTimes=false,garudaSeconds=130,ifritSeconds=100,titanSeconds=125,fakeMelee=false,slowerGroup=false,garudaExtra=0,ifritExtra=0,titanExtra=0,killExtra=0},\n  UWU_BLM_AutoSimConfig={poolLaha=true,priorityGaols=true,roulette=true,raidBuffs=true,buffGain=17,nails=true,closePair=true,surecast=true,manaward=true,holdTripleLateGaruda=true,garudaEndSeconds=133.235,ifritEndAfterFirstDisappear=40.328,tripleHoldLeadSeconds=8,burstWeight20261029=true},\n  UWU_BRD_AutoSimConfig={poolLaha=true,priorityGaols=true,raidBuffs=false,buffGain=16.87},\n  UWU_RPR_AutoSimConfig={lbWho=2,poolLaha=true,priorityGaols=true,raidBuffs=false,buffGain=17,burstWeight20261029=true},\n  UWU_AutoSimUI={general=true,garuda=false,ifrit=false,titan=false,ultima=false}\n }\n local ranges={buffGain={0,40},lbWho={1,2},casterNailCastBudget={0.5,5},garudaSeconds={90,240},ifritSeconds={70,240},titanSeconds={80,240},garudaExtra={0,90},ifritExtra={0,90},titanExtra={0,90},killExtra={0,90},tripleHoldLeadSeconds={0,20},garudaEndSeconds={110,180},ifritEndAfterFirstDisappear={20,90}}\n for name,defaults in pairs(specs) do\n  local current=_G[name]\n  local disk=type(saved[name])==\"table\" and saved[name] or {}\n  local values={}\n  for key,default in pairs(defaults) do\n   -- Disk wins on a fresh Lua session even if an older initializer already ran.\n   local value=disk[key]\n   if value==nil and current then value=current[key] end\n   if type(value)~=type(default) then value=default end\n   local range=ranges[key]\n   if range and (value~=value or value<range[1] or value>range[2] or (key==\"lbWho\" and value%1~=0)) then value=default end\n   values[key]=value\n  end\n  _G[name]=values\n end\n local store={}\n function store.save()\n  local out={}\n  for name,defaults in pairs(specs) do\n   out[name]={}\n   for key in pairs(defaults) do out[name][key]=_G[name][key] end\n  end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,out)\n end\n _G.UWU_AutoSimSettingsStore=store\n store.save()\nend\n\n-- UWU forecast: event resync handlers are shared by every supported job.\n-- This plan retains this job's movement, target lifetimes and existing preferences.\n-- Phase/window records: {type, start anchor, start offset, end anchor, end offset, value}.\n-- Anchors use the real combat clock; native events correct the estimates.\n-- Spiny Plume: applies regardless of model scale, including the enlarged plume.\nlocal spiny=TensorCore.API.TensorACR.addBlacklistEntry(2091,\"UWU Spiny Plume\")\nif not spiny.enabled or spiny.allowIfTarget or spiny.allowSmartDoT then\n spiny.enabled=true;spiny.allowIfTarget=false;spiny.allowSmartDoT=false\n TensorCore.API.TensorACR.saveDotBlacklist()\nend\nlocal feather=TensorCore.API.TensorACR.addBlacklistEntry(1648,\"UWU Satin Plume\")\nif not feather.enabled or feather.allowIfTarget or feather.allowSmartDoT then\n feather.enabled=true;feather.allowIfTarget=false;feather.allowSmartDoT=false\n TensorCore.API.TensorACR.saveDotBlacklist()\nend\nlocal dotAPI=TensorCore.API.TensorACR\nlocal dotEntry=dotAPI.addBlacklistEntry(1186,\"UWU Infernal Nail\")\nif not dotEntry.enabled or dotEntry.allowIfTarget then\n dotEntry.enabled=true\n dotEntry.allowIfTarget=false\n dotAPI.saveDotBlacklist()\nend\n-- Generated encounter inputs are inserted by the MCP authoring script.\n-- Five EU BLM clears supply the phase-relative medians. Native events resync them.\nlocal A=TensorCore.API.TensorACR\n_G.UWU_BLM_TemporaryState=_G.UWU_BLM_TemporaryState or {}\nlocal cfg=_G.UWU_BLM_AutoSimConfig\nif not cfg then\n cfg={poolLaha=true,priorityGaols=true,roulette=true,raidBuffs=true,buffGain=17,nails=true,closePair=true,surecast=true,manaward=true}\n _G.UWU_BLM_AutoSimConfig=cfg\nend\n-- Burst weight update: preserve forecast enablement and other options.\nif not cfg.burstWeight20261029 then cfg.buffGain=17;cfg.burstWeight20261029=true end\nlocal S={\n  [\"anchors\"]={\n    [\"p1end\"]={\n      [\"after\"]=\"pull\",\n      [\"offset\"]=134.629,\n      [\"spread\"]=10\n    },\n    [\"ifrit1\"]={\n      [\"after\"]=\"p1end\",\n      [\"offset\"]=72.217,\n      [\"spread\"]=0.75\n    },\n    [\"p2end\"]={\n      [\"after\"]=\"ifrit1\",\n      [\"offset\"]=38.162,\n      [\"spread\"]=10\n    },\n    [\"ifrit2Back\"]={\n      [\"after\"]=\"p2end\",\n      [\"offset\"]=7.422,\n      [\"spread\"]=0.75\n    },\n    [\"titan1\"]={\n      [\"after\"]=\"ifrit2Back\",\n      [\"offset\"]=22.062,\n      [\"spread\"]=0.75\n    },\n    [\"p3end\"]={\n      [\"after\"]=\"titan1\",\n      [\"offset\"]=107.938,\n      [\"spread\"]=15\n    },\n    [\"titan3Back\"]={\n      [\"after\"]=\"p3end\",\n      [\"offset\"]=12.283,\n      [\"spread\"]=0.75\n    },\n    [\"magitekBit1\"]={\n      [\"after\"]=\"titan3Back\",\n      [\"offset\"]=7.018,\n      [\"spread\"]=0.75\n    },\n    [\"p4end\"]={\n      [\"after\"]=\"magitekBit1\",\n      [\"offset\"]=25.99,\n      [\"spread\"]=0.75\n    },\n    [\"graniteGaol1\"]={\n      [\"after\"]=\"p4end\",\n      [\"offset\"]=233.053,\n      [\"spread\"]=0.75\n    }\n  },\n  [\"kill\"]={\n    [\"after\"]=\"graniteGaol1\",\n    [\"offset\"]=137.5,\n    [\"spread\"]=7.881\n  },\n  [\"phases\"]={\n    {\n      \"FullDowntime\",\n      \"pull\",\n      70.532,\n      \"pull\",\n      74.238,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p1end\",\n      0.1,\n      \"p1end\",\n      13.303,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"ifrit1\",\n      0.1,\n      \"ifrit1\",\n      3.812,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p2end\",\n      0.1,\n      \"ifrit2Back\",\n      -0.3,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"titan1\",\n      0.1,\n      \"titan1\",\n      8.158,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"titan1\",\n      54.272,\n      \"titan1\",\n      62.508,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p3end\",\n      0.1,\n      \"titan3Back\",\n      -0.3,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"magitekBit1\",\n      0.1,\n      \"magitekBit1\",\n      13.741,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p4end\",\n      0.1,\n      \"p4end\",\n      50.191,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p4end\",\n      77.992,\n      \"p4end\",\n      98.072,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p4end\",\n      156.499,\n      \"p4end\",\n      161.092,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p4end\",\n      193.502,\n      \"p4end\",\n      198.14,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p4end\",\n      214.525,\n      \"p4end\",\n      229.087,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"graniteGaol1\",\n      0.1,\n      \"p4end\",\n      255.307,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p4end\",\n      353.6,\n      \"p4end\",\n      357.89,\n      1\n    }\n  },\n  [\"windows\"]={\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      35.0,\n      \"pull\",\n      37.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      38.5,\n      \"pull\",\n      41.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      43.0,\n      \"pull\",\n      44.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      91.0,\n      \"pull\",\n      92.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      102.5,\n      \"pull\",\n      104.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      105.5,\n      \"pull\",\n      106.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      127.5,\n      \"pull\",\n      128.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p1end\",\n      44.5,\n      \"p1end\",\n      47.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p1end\",\n      91.5,\n      \"p1end\",\n      98.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"titan1\",\n      8.5,\n      \"titan1\",\n      11.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"titan1\",\n      14.0,\n      \"titan1\",\n      21.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"titan1\",\n      41.0,\n      \"titan1\",\n      42.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"titan1\",\n      74.5,\n      \"titan1\",\n      76.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      99.5,\n      \"p4end\",\n      100.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      109.0,\n      \"p4end\",\n      115.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      121.0,\n      \"p4end\",\n      124.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      125.0,\n      \"p4end\",\n      129.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      144.5,\n      \"p4end\",\n      145.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      161.5,\n      \"p4end\",\n      169.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      170.0,\n      \"p4end\",\n      172.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      173.5,\n      \"p4end\",\n      174.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      178.5,\n      \"p4end\",\n      182.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      229.5,\n      \"p4end\",\n      231.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      274.0,\n      \"p4end\",\n      280.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      281.0,\n      \"p4end\",\n      282.5,\n      1\n    }\n  },\n  [\"returns\"]={\n    \n  },\n  [\"buffwindows\"]={\n    {\n      \"pull\",\n      8.069\n    },\n    {\n      \"p1end\",\n      16.081\n    },\n    {\n      \"ifrit2Back\",\n      52.467\n    },\n    {\n      \"p4end\",\n      52.628\n    },\n    {\n      \"p4end\",\n      175.979\n    },\n    {\n      \"p4end\",\n      317.846\n    }\n  },\n  [\"sample_count\"]=5,\n  [\"kill_samples\"]={\n    782.098,\n    751.692,\n    783.165,\n    838.291,\n    794.832\n  },\n  [\"roulette\"]={\n    [\"first\"]=293.478,\n    [\"step\"]=20.123,\n    [\"templates\"]={\n      [\"Garuda\"]={\n        {\n          9.5,\n          10.0\n        }\n      },\n      [\"Ifrit\"]={\n        {\n          7.0,\n          9.5\n        },\n        {\n          11.0,\n          11.5\n        }\n      },\n      [\"Titan\"]={\n        {\n          5.0,\n          13.0\n        }\n      }\n    }\n  },\n  [\"anchorOrder\"]={\n    \"p1end\",\n    \"ifrit1\",\n    \"p2end\",\n    \"ifrit2Back\",\n    \"titan1\",\n    \"p3end\",\n    \"titan3Back\",\n    \"magitekBit1\",\n    \"p4end\",\n    \"graniteGaol1\"\n  },\n  [\"ifritArrival\"]=13.603,\n  [\"lahaDelay\"]=14.041\n}\n-- Separate Ifrit's second dash from his actual phase death.\nS.anchors.ifritDash={after=\"ifrit1\",offset=47.95,spread=2}\nS.anchors.ifritDashBack={after=\"ifritDash\",offset=15.79,spread=1}\nS.anchors.p2end={after=\"ifrit1\",offset=cfg.ifritEndAfterFirstDisappear or 42.386,spread=12}\nS.anchors.ifrit2Back={after=\"p2end\",offset=7.55,spread=.75}\nS.anchorOrder={\"p1end\",\"ifrit1\",\"ifritDash\",\"ifritDashBack\",\"p2end\",\"ifrit2Back\",\"titan1\",\"p3end\",\"titan3Back\",\"magitekBit1\",\"p4end\",\"graniteGaol1\"}\nS.phases[#S.phases+1]={\"FullDowntime\",\"ifritDash\",0.1,\"ifritDashBack\",-0.1,1}\nfor _,phase in ipairs(S.phases) do\n if phase[1]==\"FullDowntime\" and phase[2]==\"ifrit1\" and phase[4]==\"ifrit1\" then phase[5]=4.25 end\nend\n-- First Garuda disappearance: corroborated in three recent native logs.\nS.phases[#S.phases+1]={\"FullDowntime\",\"pull\",33.96,\"pull\",38.25,1}\n-- Shared encounter defaults chosen by user: Garuda 130s, Ifrit 100s; live resyncs still win.\nS.anchors.p1end.offset=130\nS.anchors.p1end.spread=27\n-- P2 end is configured above relative to the first disappearance.\nS.anchors.p2end.spread=17\n-- Three native Monk-pull boss-event samples; shared boss timing, independent of job movement.\nfor _,phase in ipairs(S.phases) do\n if phase[1]==\"FullDowntime\" and phase[2]==\"pull\" and math.abs(phase[3]-70.532)<.001 then\n  phase[3]=68.865;phase[5]=73.150\n elseif phase[1]==\"FullDowntime\" and phase[2]==\"titan1\" and phase[3]==.1 then\n  phase[5]=7.544\n end\nend\nS.cfg={}\nfor k,v in pairs(cfg) do S.cfg[k]=v end\n-- Recent native records: six BLM Garuda ends; five distinct party Ifrit ends.\nS.anchors.p1end.offset=cfg.garudaEndSeconds or 130\nS.tripleHoldLeadSeconds=cfg.tripleHoldLeadSeconds or 8\nlocal userSettings=_G.UWU_AutoSimSettings or {}\n-- Shared Ifrit controls apply to every role plan.\nS.cfg.nails=_G.UWU_BLM_AutoSimConfig.nails\nS.cfg.closePair=_G.UWU_BLM_AutoSimConfig.closePair\nlocal roleJob=Player.job\nS.cfg.fakeMelee=userSettings.fakeMelee==true and (roleJob==25 or roleJob==27 or roleJob==35 or roleJob==42 or roleJob==23 or roleJob==31 or roleJob==38)\nS.cfg.adjustKillTimes=userSettings.adjustKillTimes==true\nlocal garuda=130;local ifrit=100;local titan=125\nif S.cfg.adjustKillTimes then\n garuda=userSettings.garudaSeconds or 130\n ifrit=userSettings.ifritSeconds or 100\n titan=userSettings.titanSeconds or 125\nend\nS.anchors.p1end.offset=garuda\nS.anchors.p2end={after=\"ifrit1\",offset=ifrit-(72.217-S.ifritArrival),spread=17}\nS.anchors.p3end.offset=titan-S.anchors.titan1.offset\n-- Tag only eruption bait-route forecasts; no other movement is removed.\nfor _,w in ipairs(S.windows) do\n if w[1]==\"CasterDowntime\" and ((w[2]==\"p1end\" and (w[3]==44.5 or w[3]==91.5)) or (w[2]==\"p4end\" and w[3]==109)) then w[7]=\"eruption bait\" end\nend\nS.observed={pull=0}\nS.dynamic={}\nS.rouletteWindows={}\nfunction S.time(name)\n if S.observed[name] then return S.observed[name] end\n local a=S.anchors[name]\n return S.time(a.after)+a.offset\nend\nfunction S.union(list)\n table.sort(list,function(a,b)return a[1]<b[1] end)\n local out={}\n for _,w in ipairs(list) do\n  local last=out[#out]\n  if last and w[1]<=last[2] and w[3]==last[3] then last[2]=math.max(last[2],w[2])\n  else out[#out+1]={w[1],w[2],w[3]} end\n end\n return out\nend\nfunction S.rouletteForecast(kind,now)\n local orders={Garuda={\"Garuda\",\"Ifrit\",\"Titan\"},Ifrit={\"Ifrit\",\"Garuda\",\"Titan\"},Titan={\"Titan\",\"Ifrit\",\"Garuda\"}}\n if kind then\n  if not S.rouletteOrder then S.rouletteOrder=orders[kind];S.rouletteTimes={} end\n  local step=#S.rouletteTimes+1\n  if S.rouletteOrder[step]~=kind then return end\n  S.rouletteTimes[step]=now\n end\n S.rouletteWindows={}\n if not S.cfg.roulette then return end\n local function addOrder(order,base,times)\n  local offsets={0,S.roulette.step,S.roulette.step*2}\n  if times and #times>0 then base=times[#times]-S.time(\"p4end\")-offsets[#times] end\n  for i,k in ipairs(order) do\n   local t=times and times[i] or S.time(\"p4end\")+base+offsets[i]\n   for _,w in ipairs((S.cfg.fakeMelee and k==\"Ifrit\") and {} or S.roulette.templates[k]) do\n    S.rouletteWindows[#S.rouletteWindows+1]={t+w[1],t+w[2],1}\n   end\n  end\n end\n if S.rouletteOrder then addOrder(S.rouletteOrder,0,S.rouletteTimes)\n else\n  -- Initial estimates use the reference's three possible orders. Prepare events narrow them.\n  for _,order in pairs(orders) do addOrder(order,S.roulette.first) end\n end\nend\nS.dotStarts={}\nS.dotGaps={}\nS.dotEnds={ [1644]=\"p1end\",[1185]=\"p2end\",[1801]=\"p3end\" }\nfunction S.publishSpinyLifetime(target,now)\n -- Only Spiny uses the live TTK override; nails retain their existing forecasts.\n if target and target.contentid~=2091 and target.alive and target.targetable then return false end\n if not (target and target.contentid==2091) and S.dotContentID~=2091 then return false end\n A.clearAutoSimPhases(\"DotAvailability\",0,0)\n A.clearAutoSimPhases(\"DotAvailability\",0,1)\n A.clearAutoSimPhases(\"TargetLifetime\",0)\n S.spinyLifetimeNext=now+1\n if not (target and target.contentid==2091 and target.alive and target.targetable and target.attackable) then\n  S.dotPublishedTarget=nil;S.dotPublishedEnd=nil\n  return true\n end\n S.dotEntityID=target.id;S.dotContentID=2091;S.dotPublishedTarget=target.id\n local ttl=TensorCore.calcTimeToKill(target.id)\n local valid=type(ttl)==\"number\" and ttl==ttl and ttl>0 and ttl<1259-now\n if valid then\n  if S.spinyLifetimeID~=target.id then S.spinyLifetimeID=target.id;S.spinyLifetimeStart=now end\n  S.dotPublishedEnd=now+ttl\n  A.addAutoSimPhase(\"TargetLifetime\",S.spinyLifetimeStart,S.dotPublishedEnd,1,0)\n else S.dotPublishedEnd=nil end\n if S.spinyLifetimeLogID~=target.id or not S.spinyLifetimeLogAt or now>=S.spinyLifetimeLogAt+5 then\n  d(\"[UWU AutoSim] Spiny lifetime target=\"..tostring(target.id)..\" remaining=\"..tostring(ttl)..\" published=\"..tostring(valid)..\"; DoT exclusions unchanged\")\n  S.spinyLifetimeLogID=target.id;S.spinyLifetimeLogAt=now\n end\n return true\nend\n\nfunction S.publishDots()\n local target=TensorCore.mGetTarget()\n local now=A.getAutoSimTime()\n if S.publishSpinyLifetime(target,now) then return end\n if target and target.alive and target.targetable then\n  S.dotEntityID=target.id;S.dotContentID=target.contentid\n end\n if not S.dotEntityID then return end\n local cid=S.dotContentID\n local endAnchor=S.dotEnds[cid]\n local finish=math.min(1259,math.max(now+5,S.time(S.kill.after)+S.kill.offset))\n local start=0\n if endAnchor then\n  if not S.dotStarts[S.dotEntityID] then\n   local predicted=cid==1644 and 0 or (cid==1185 and S.time(\"p1end\")+S.ifritArrival or S.time(\"ifrit2Back\"))\n   S.dotStarts[S.dotEntityID]=math.max(0,math.min(predicted,now))\n  end\n  start=S.dotStarts[S.dotEntityID]\n  finish=math.min(1259,S.observed[endAnchor] or math.max(S.time(endAnchor),now+5))\n end\n -- Thunder and AoE Thunder have independent availability groups.\n A.clearAutoSimPhases(\"DotAvailability\",0,0)\n A.clearAutoSimPhases(\"DotAvailability\",0,1)\n A.clearAutoSimPhases(\"TargetLifetime\",0)\n if finish<=start then return end\n A.addAutoSimPhase(\"TargetLifetime\",start,finish,1,0)\n local stop=endAnchor and math.max(start,finish-.5) or finish\n -- Respect existing excluded adds even when selected manually.\n if cid==1186 or cid==1648 or cid==2091 then stop=start end\n local gaps={}\n local observed=S.dotGaps[S.dotEntityID] or {}\n for _,phase in ipairs(S.phases) do\n  if phase[1]==\"FullDowntime\" and not (phase[2]==\"ifritDash\" and (S.ifritDashWasFinal or (not S.observed.ifritDash and S.time(\"p2end\")<=S.time(\"ifritDash\")))) then\n   local a,b=S.time(phase[2])+phase[3],S.time(phase[4])+phase[5]\n   local replaced=false\n   for _,gap in ipairs(observed) do if math.abs(gap[1]-a)<10 then replaced=true;break end end\n   if not replaced and b>start and a<stop then gaps[#gaps+1]={math.max(start,a),math.min(stop,b),1} end\n  end\n end\n for _,gap in ipairs(observed) do\n  local a,b=math.max(start,gap[1]),math.min(stop,gap[2] or stop)\n  if b>a then gaps[#gaps+1]={a,b,1} end\n end\n local cursor=start\n local available={}\n for _,gap in ipairs(S.union(gaps)) do\n  if gap[1]>cursor then available[#available+1]={cursor,gap[1]} end\n  cursor=math.max(cursor,gap[2])\n end\n if stop>cursor then available[#available+1]={cursor,stop} end\n for group=0,1 do\n  for _,window in ipairs(available) do A.addAutoSimPhase(\"DotAvailability\",window[1],window[2],1,0,group) end\n end\n S.dotPublishedEnd=finish;S.dotPublishedTarget=S.dotEntityID\n S.dotAnchorSignature=tostring(S.observed.p1end)..\":\"..tostring(S.observed.p2end)..\":\"..tostring(S.observed.p3end)\nend\n\nfunction S.publish()\n local now=A.getAutoSimTime()\n local finish=math.max(now+5,S.time(S.kill.after)+S.kill.offset)\n A.setAutoSimKillTime(math.min(finish,1259))\n local grouped={FullDowntime={},CasterDowntime={},Stun={},BossModifier={},RaidBuff={},GroundFieldMovement={}}\n local function add(kind,a,b,value)\n  if b>a then grouped[kind][#grouped[kind]+1]={a,b,value or 1} end\n end\n for _,p in ipairs(S.phases) do\n  -- HP-driven deaths are variable. Do not declare the still-live boss unavailable.\n  local hpDeath=p[1]==\"FullDowntime\" and (p[2]==\"p1end\" or p[2]==\"p2end\")\n  if (not hpDeath or S.observed[p[2]]~=nil) and not (p[2]==\"ifritDash\" and (S.ifritDashWasFinal or (not S.observed.ifritDash and S.time(\"p2end\")<=S.time(\"ifritDash\")))) then\n   local a,b=S.time(p[2])+p[3],S.time(p[4])+p[5]\n   local readySpiny=S.spinyUptime\n   if p[1]==\"FullDowntime\" and p[2]==\"pull\" and p[3]==33.96 and readySpiny then\n    -- Split only Garuda's first jump: the stack-safe Spiny remains attackable.\n    add(p[1],a,math.min(b,readySpiny[1]),p[6])\n    add(p[1],math.max(a,readySpiny[2] or b),b,p[6])\n   else\n    add(p[1],a,b,p[6])\n   end\n  end\n end\n for _,p in ipairs(S.windows) do\n  local a,b=S.time(p[2])+p[3],S.time(p[4])+p[5]\n  if p[2]==\"titan1\" and S.observed.p3end then b=math.min(b,S.observed.p3end) end\n  if not (S.cfg.fakeMelee and p[7]==\"eruption bait\") then add(p[1],a,b,p[6]) end\n end\n if S.cfg.poolLaha then\n  add(\"BossModifier\",S.time(\"magitekBit1\")+S.lahaDelay,S.time(\"p4end\"),.01)\n end\n if S.cfg.priorityGaols then\n  add(\"BossModifier\",S.time(\"titan1\")+68.966,S.time(\"titan1\")+73.966,1.10)\n  add(\"BossModifier\",S.time(\"p4end\")+227.75,S.time(\"p4end\")+232.75,1.10)\n end\n if S.cfg.raidBuffs then\n  local prev\n  for _,w in ipairs(S.buffwindows) do\n   local t=S.time(w[1])+w[2]\n   if prev then t=math.max(t,prev+120) end\n   -- The p1end-anchored burst is the Ifrit opener; preserve its timing/resync.\n   local burstWeight=w[1]==\"p1end\" and 1.4 or (1+S.cfg.buffGain/100)\n   local burstEnd=t+20\n   if w[1]==\"p1end\" then\n    -- Never extend the artificial 1.4 opener into nail softening.\n    burstEnd=math.min(burstEnd,S.time(\"p1end\")+39,S.nailsStartedAt or math.huge)\n   end\n   add(\"RaidBuff\",t,burstEnd,burstWeight)\n   prev=t\n  end\n end\n for _,w in ipairs(S.rouletteWindows) do add(\"CasterDowntime\",w[1],w[2],1) end\n local job=Player.job\n local caster=job==25 or job==27 or job==35 or job==42\n local options=_G.UWU_AutoSimSettings\n local ownsCasterLB=caster and (not options or options.autoCasterLB~=false) and TensorCore.hasBuff(Player.id,1530)\n if ownsCasterLB and not S.lbObserved then\n  local lb=S.time(\"titan3Back\")+4\n  add(\"Stun\",lb,lb+12.6,1)\n end\n for _,w in pairs(S.dynamic) do add(w[1],w[2],w[3],w[4]) end\n for kind,list in pairs(grouped) do\n  A.clearAutoSimPhases(kind)\n  -- All absolute same-type overlaps are merged before submission.\n  if kind==\"BossModifier\" or kind==\"RaidBuff\" then\n   local cuts,seen={},{}\n   for _,w in ipairs(list) do for i=1,2 do if not seen[w[i]] then cuts[#cuts+1]=w[i];seen[w[i]]=true end end end\n   table.sort(cuts)\n   for i=1,#cuts-1 do\n    local value,active=1,false\n    for _,w in ipairs(list) do if w[1]<=cuts[i] and w[2]>=cuts[i+1] then value=value*w[3];active=true end end\n    if active then A.addAutoSimPhase(kind,cuts[i],cuts[i+1],value) end\n   end\n  else\n   for _,w in ipairs(S.union(list)) do A.addAutoSimPhase(kind,w[1],w[2],w[3]) end\n  end\n end\n A.clearAutoSimUncertainty()\n A.addAutoSimUncertainty(0,2)\n local uncertainty=2\n for _,name in ipairs(S.anchorOrder) do\n  if not S.observed[name] and not (name==\"ifritDashBack\" and S.ifritDashWasFinal) then\n   local anchor=S.anchors[name]\n   uncertainty=math.max(uncertainty,anchor.spread)\n   A.addAutoSimUncertainty(S.time(name)-25,uncertainty)\n  end\n end\n A.addAutoSimUncertainty(math.max(0,finish-30),math.max(uncertainty,S.kill.spread))\n S.publishDots()\nend\nfunction S.resync(name,now)\n if S.observed[name] then return end\n S.observed[name]=now\n S.rouletteForecast()\n S.publish()\n if not S.ifritStarted then\n  local untilIfrit=S.time(\"p1end\")+S.ifritArrival\n  A.holdActionUntil(846,Now()+math.max(0,untilIfrit-now)*1000)\n end\nend\n-- Snapshot slower-group adjustments once at pull setup, never from the drawing callback.\nlocal G=_G.UWU_AutoSimSettings or {}\nlocal previous=data.uwuAutoSim\nlocal timing=previous and previous.slowerGroupTiming\nif not timing then\n timing={enabled=G.slowerGroup==true}\n for _,key in ipairs({\"garudaExtra\",\"ifritExtra\",\"titanExtra\",\"killExtra\"}) do\n  timing[key]=math.max(0,math.min(90,tonumber(G[key]) or 0))\n end\nend\nS.slowerGroupTiming=timing\nif timing.enabled then\n S.anchors.p1end.offset=S.anchors.p1end.offset+timing.garudaExtra\n S.anchors.p2end.offset=S.anchors.p2end.offset+timing.ifritExtra\n S.anchors.p3end.offset=S.anchors.p3end.offset+timing.titanExtra\n S.kill.offset=S.kill.offset+timing.killExtra\nend\nS.rouletteForecast()\nA.setAutoSimUnexpectedMovementPct(.05)\nS.publish()\nA.holdActionUntil(846,Now()+math.max(0,S.time(\"p1end\")+S.ifritArrival-A.getAutoSimTime())*1000)\nS.planRole=\"caster\"; S.planJob=Player.job\ndata.uwuAutoSim=S\nself.used=true",
							conditions = 
							{
								
								{
									"e3a650bb-2492-0964-9d75-a877be702ae6",
									true,
								},
								
								{
									"393d3944-e313-681b-9dcb-b7d142e1befd",
									true,
								},
								
								{
									"b504e41e-fb90-e045-8010-f01e52509a57",
									true,
								},
								
								{
									"356661a1-b0b4-24e0-92a3-073765d3c98d",
									true,
								},
							},
							name = "Caster/healer - Apply owned UWU state",
							uuid = "3b87d2ef-14e2-01fa-8fb6-72e034ad5ce9",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "-- Profile-owned settings, loaded before any GUI or gameplay consumer.\nif not _G.UWU_AutoSimSettingsStore then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[UWU-AutoSim.lua]]\n local saved={}\n if FileExists(path) then\n  local loaded=FileLoad(path)\n  if type(loaded)==\"table\" then saved=loaded end\n end\n local specs={\n  UWU_AutoSimSettings={autoCasterLB=true,autoMeleeLB=true,vulcanKnockback=true,casterNailLifetime=true,casterNailCastBudget=2.8,spinyTarget=true,spinyEarly=false,adjustKillTimes=false,garudaSeconds=130,ifritSeconds=100,titanSeconds=125,fakeMelee=false,slowerGroup=false,garudaExtra=0,ifritExtra=0,titanExtra=0,killExtra=0},\n  UWU_BLM_AutoSimConfig={poolLaha=true,priorityGaols=true,roulette=true,raidBuffs=true,buffGain=17,nails=true,closePair=true,surecast=true,manaward=true,holdTripleLateGaruda=true,garudaEndSeconds=133.235,ifritEndAfterFirstDisappear=40.328,tripleHoldLeadSeconds=8,burstWeight20261029=true},\n  UWU_BRD_AutoSimConfig={poolLaha=true,priorityGaols=true,raidBuffs=false,buffGain=16.87},\n  UWU_RPR_AutoSimConfig={lbWho=2,poolLaha=true,priorityGaols=true,raidBuffs=false,buffGain=17,burstWeight20261029=true},\n  UWU_AutoSimUI={general=true,garuda=false,ifrit=false,titan=false,ultima=false}\n }\n local ranges={buffGain={0,40},lbWho={1,2},casterNailCastBudget={0.5,5},garudaSeconds={90,240},ifritSeconds={70,240},titanSeconds={80,240},garudaExtra={0,90},ifritExtra={0,90},titanExtra={0,90},killExtra={0,90},tripleHoldLeadSeconds={0,20},garudaEndSeconds={110,180},ifritEndAfterFirstDisappear={20,90}}\n for name,defaults in pairs(specs) do\n  local current=_G[name]\n  local disk=type(saved[name])==\"table\" and saved[name] or {}\n  local values={}\n  for key,default in pairs(defaults) do\n   -- Disk wins on a fresh Lua session even if an older initializer already ran.\n   local value=disk[key]\n   if value==nil and current then value=current[key] end\n   if type(value)~=type(default) then value=default end\n   local range=ranges[key]\n   if range and (value~=value or value<range[1] or value>range[2] or (key==\"lbWho\" and value%1~=0)) then value=default end\n   values[key]=value\n  end\n  _G[name]=values\n end\n local store={}\n function store.save()\n  local out={}\n  for name,defaults in pairs(specs) do\n   out[name]={}\n   for key in pairs(defaults) do out[name][key]=_G[name][key] end\n  end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,out)\n end\n _G.UWU_AutoSimSettingsStore=store\n store.save()\nend\n\n-- UWU forecast: event resync handlers are shared by every supported job.\n-- This plan retains this job's movement, target lifetimes and existing preferences.\n-- Phase/window records: {type, start anchor, start offset, end anchor, end offset, value}.\n-- Anchors use the real combat clock; native events correct the estimates.\n-- Spiny Plume: applies regardless of model scale, including the enlarged plume.\nlocal spiny=TensorCore.API.TensorACR.addBlacklistEntry(2091,\"UWU Spiny Plume\")\nif not spiny.enabled or spiny.allowIfTarget or spiny.allowSmartDoT then\n spiny.enabled=true;spiny.allowIfTarget=false;spiny.allowSmartDoT=false\n TensorCore.API.TensorACR.saveDotBlacklist()\nend\nlocal feather=TensorCore.API.TensorACR.addBlacklistEntry(1648,\"UWU Satin Plume\")\nif not feather.enabled or feather.allowIfTarget or feather.allowSmartDoT then\n feather.enabled=true;feather.allowIfTarget=false;feather.allowSmartDoT=false\n TensorCore.API.TensorACR.saveDotBlacklist()\nend\nlocal A=TensorCore.API.TensorACR\nlocal nail=A.addBlacklistEntry(1186,\"UWU Infernal Nail\")\nif not nail.enabled or nail.allowIfTarget or nail.allowSmartDoT then\n nail.enabled=true;nail.allowIfTarget=false;nail.allowSmartDoT=false\n A.saveDotBlacklist()\nend\n-- Generated encounter inputs are inserted by the MCP authoring script.\n-- Five EU BLM clears supplied the original the phase-relative medians. Native events resync them.\nlocal A=TensorCore.API.TensorACR\n_G.UWU_BRD_TemporaryState=_G.UWU_BRD_TemporaryState or {}\nlocal cfg=_G.UWU_BRD_AutoSimConfig\nif not cfg then\n cfg={poolLaha=true,priorityGaols=true,roulette=false,raidBuffs=false,buffGain=16.87}\n _G.UWU_BRD_AutoSimConfig=cfg\nend\nlocal S={\n  [\"anchors\"]={\n    [\"p1end\"]={\n      [\"after\"]=\"pull\",\n      [\"offset\"]=134.629,\n      [\"spread\"]=10\n    },\n    [\"ifrit1\"]={\n      [\"after\"]=\"p1end\",\n      [\"offset\"]=72.217,\n      [\"spread\"]=0.75\n    },\n    [\"p2end\"]={\n      [\"after\"]=\"ifrit1\",\n      [\"offset\"]=38.162,\n      [\"spread\"]=10\n    },\n    [\"ifrit2Back\"]={\n      [\"after\"]=\"p2end\",\n      [\"offset\"]=7.422,\n      [\"spread\"]=0.75\n    },\n    [\"titan1\"]={\n      [\"after\"]=\"ifrit2Back\",\n      [\"offset\"]=22.062,\n      [\"spread\"]=0.75\n    },\n    [\"p3end\"]={\n      [\"after\"]=\"titan1\",\n      [\"offset\"]=107.938,\n      [\"spread\"]=15\n    },\n    [\"titan3Back\"]={\n      [\"after\"]=\"p3end\",\n      [\"offset\"]=12.283,\n      [\"spread\"]=0.75\n    },\n    [\"magitekBit1\"]={\n      [\"after\"]=\"titan3Back\",\n      [\"offset\"]=7.018,\n      [\"spread\"]=0.75\n    },\n    [\"p4end\"]={\n      [\"after\"]=\"magitekBit1\",\n      [\"offset\"]=25.99,\n      [\"spread\"]=0.75\n    },\n    [\"graniteGaol1\"]={\n      [\"after\"]=\"p4end\",\n      [\"offset\"]=233.053,\n      [\"spread\"]=0.75\n    }\n  },\n  [\"kill\"]={\n    [\"after\"]=\"graniteGaol1\",\n    [\"offset\"]=137.5,\n    [\"spread\"]=7.881\n  },\n  [\"phases\"]={\n    {\n      \"FullDowntime\",\n      \"pull\",\n      70.532,\n      \"pull\",\n      74.238,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p1end\",\n      0.1,\n      \"p1end\",\n      13.303,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"ifrit1\",\n      0.1,\n      \"ifrit1\",\n      3.812,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p2end\",\n      0.1,\n      \"ifrit2Back\",\n      -0.3,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"titan1\",\n      0.1,\n      \"titan1\",\n      8.158,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"titan1\",\n      54.272,\n      \"titan1\",\n      62.508,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p3end\",\n      0.1,\n      \"titan3Back\",\n      -0.3,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"magitekBit1\",\n      0.1,\n      \"magitekBit1\",\n      13.741,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p4end\",\n      0.1,\n      \"p4end\",\n      50.191,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p4end\",\n      77.992,\n      \"p4end\",\n      98.072,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p4end\",\n      156.499,\n      \"p4end\",\n      161.092,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p4end\",\n      193.502,\n      \"p4end\",\n      198.14,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p4end\",\n      214.525,\n      \"p4end\",\n      229.087,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"graniteGaol1\",\n      0.1,\n      \"p4end\",\n      255.307,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p4end\",\n      353.6,\n      \"p4end\",\n      357.89,\n      1\n    }\n  },\n  [\"windows\"]={\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      35.0,\n      \"pull\",\n      37.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      38.5,\n      \"pull\",\n      41.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      43.0,\n      \"pull\",\n      44.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      91.0,\n      \"pull\",\n      92.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      102.5,\n      \"pull\",\n      104.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      105.5,\n      \"pull\",\n      106.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      127.5,\n      \"pull\",\n      128.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p1end\",\n      44.5,\n      \"p1end\",\n      47.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p1end\",\n      91.5,\n      \"p1end\",\n      98.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"titan1\",\n      8.5,\n      \"titan1\",\n      11.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"titan1\",\n      14.0,\n      \"titan1\",\n      21.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"titan1\",\n      27.5,\n      \"titan1\",\n      29.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"titan1\",\n      41.0,\n      \"titan1\",\n      42.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"titan1\",\n      74.5,\n      \"titan1\",\n      76.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      99.5,\n      \"p4end\",\n      100.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      109.0,\n      \"p4end\",\n      115.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      121.0,\n      \"p4end\",\n      124.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      125.0,\n      \"p4end\",\n      129.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      144.5,\n      \"p4end\",\n      145.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      161.5,\n      \"p4end\",\n      169.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      170.0,\n      \"p4end\",\n      172.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      173.5,\n      \"p4end\",\n      174.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      178.5,\n      \"p4end\",\n      182.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      229.5,\n      \"p4end\",\n      231.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      274.0,\n      \"p4end\",\n      280.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      281.0,\n      \"p4end\",\n      282.5,\n      1\n    }\n  },\n  [\"returns\"]={\n    \n  },\n  [\"buffwindows\"]={\n    {\n      \"pull\",\n      8.069\n    },\n    {\n      \"p1end\",\n      16.081\n    },\n    {\n      \"ifrit2Back\",\n      52.467\n    },\n    {\n      \"p4end\",\n      52.628\n    },\n    {\n      \"p4end\",\n      175.979\n    },\n    {\n      \"p4end\",\n      317.846\n    }\n  },\n  [\"sample_count\"]=5,\n  [\"kill_samples\"]={\n    782.098,\n    751.692,\n    783.165,\n    838.291,\n    794.832\n  },\n  [\"roulette\"]={\n    [\"first\"]=293.478,\n    [\"step\"]=20.123,\n    [\"templates\"]={\n      [\"Garuda\"]={\n        {\n          9.5,\n          10.0\n        }\n      },\n      [\"Ifrit\"]={\n        {\n          7.0,\n          9.5\n        },\n        {\n          11.0,\n          11.5\n        }\n      },\n      [\"Titan\"]={\n        {\n          5.0,\n          13.0\n        }\n      }\n    }\n  },\n  [\"anchorOrder\"]={\n    \"p1end\",\n    \"ifrit1\",\n    \"p2end\",\n    \"ifrit2Back\",\n    \"titan1\",\n    \"p3end\",\n    \"titan3Back\",\n    \"magitekBit1\",\n    \"p4end\",\n    \"graniteGaol1\"\n  },\n  [\"ifritArrival\"]=13.603,\n  [\"lahaDelay\"]=14.041\n}\n-- Separate Ifrit's second dash from his actual phase death.\nS.anchors.ifritDash={after=\"ifrit1\",offset=47.95,spread=2}\nS.anchors.ifritDashBack={after=\"ifritDash\",offset=15.79,spread=1}\nS.anchors.p2end={after=\"ifrit1\",offset=42.386,spread=12}\nS.anchors.ifrit2Back={after=\"p2end\",offset=7.55,spread=.75}\nS.anchorOrder={\"p1end\",\"ifrit1\",\"ifritDash\",\"ifritDashBack\",\"p2end\",\"ifrit2Back\",\"titan1\",\"p3end\",\"titan3Back\",\"magitekBit1\",\"p4end\",\"graniteGaol1\"}\nS.phases[#S.phases+1]={\"FullDowntime\",\"ifritDash\",0.1,\"ifritDashBack\",-0.1,1}\nfor _,phase in ipairs(S.phases) do\n if phase[1]==\"FullDowntime\" and phase[2]==\"ifrit1\" and phase[4]==\"ifrit1\" then phase[5]=4.25 end\nend\n-- First Garuda disappearance: corroborated in three recent native logs.\nS.phases[#S.phases+1]={\"FullDowntime\",\"pull\",33.96,\"pull\",38.25,1}\n-- Shared encounter defaults chosen by user: Garuda 130s, Ifrit 100s; live resyncs still win.\nS.anchors.p1end.offset=130\nS.anchors.p1end.spread=27\n-- Ifrit default: 101s from targetability (58.614s to first disappearance + 42.386s).\nS.anchors.p2end.spread=17\nS.windows={} -- BRD can attack while moving; caster forecasts do not apply.\n-- Three native Monk-pull boss-event samples; shared boss timing, independent of job movement.\nfor _,phase in ipairs(S.phases) do\n if phase[1]==\"FullDowntime\" and phase[2]==\"pull\" and math.abs(phase[3]-70.532)<.001 then\n  phase[3]=68.865;phase[5]=73.150\n elseif phase[1]==\"FullDowntime\" and phase[2]==\"titan1\" and phase[3]==.1 then\n  phase[5]=7.544\n end\nend\nS.cfg={}\nfor k,v in pairs(cfg) do S.cfg[k]=v end\nlocal userSettings=_G.UWU_AutoSimSettings or {}\n-- Shared Ifrit controls apply to every role plan.\nS.cfg.nails=_G.UWU_BLM_AutoSimConfig.nails\nS.cfg.closePair=_G.UWU_BLM_AutoSimConfig.closePair\nlocal roleJob=Player.job\nS.cfg.fakeMelee=userSettings.fakeMelee==true and (roleJob==25 or roleJob==27 or roleJob==35 or roleJob==42 or roleJob==23 or roleJob==31 or roleJob==38)\nS.cfg.adjustKillTimes=userSettings.adjustKillTimes==true\nlocal garuda=130;local ifrit=100;local titan=125\nif S.cfg.adjustKillTimes then\n garuda=userSettings.garudaSeconds or 130\n ifrit=userSettings.ifritSeconds or 100\n titan=userSettings.titanSeconds or 125\nend\nS.anchors.p1end.offset=garuda\nS.anchors.p2end={after=\"ifrit1\",offset=ifrit-(72.217-S.ifritArrival),spread=17}\nS.anchors.p3end.offset=titan-S.anchors.titan1.offset\n-- Tag only eruption bait-route forecasts; no other movement is removed.\nfor _,w in ipairs(S.windows) do\n if w[1]==\"CasterDowntime\" and ((w[2]==\"p1end\" and (w[3]==44.5 or w[3]==91.5)) or (w[2]==\"p4end\" and w[3]==109)) then w[7]=\"eruption bait\" end\nend\nS.observed={pull=0}\nS.dynamic={}\nS.rouletteWindows={}\nfunction S.time(name)\n if S.observed[name] then return S.observed[name] end\n local a=S.anchors[name]\n return S.time(a.after)+a.offset\nend\nfunction S.union(list)\n table.sort(list,function(a,b)return a[1]<b[1] end)\n local out={}\n for _,w in ipairs(list) do\n  local last=out[#out]\n  if last and w[1]<=last[2] and w[3]==last[3] then last[2]=math.max(last[2],w[2])\n  else out[#out+1]={w[1],w[2],w[3]} end\n end\n return out\nend\nfunction S.rouletteForecast(kind,now)\n local orders={Garuda={\"Garuda\",\"Ifrit\",\"Titan\"},Ifrit={\"Ifrit\",\"Garuda\",\"Titan\"},Titan={\"Titan\",\"Ifrit\",\"Garuda\"}}\n if kind then\n  if not S.rouletteOrder then S.rouletteOrder=orders[kind];S.rouletteTimes={} end\n  local step=#S.rouletteTimes+1\n  if S.rouletteOrder[step]~=kind then return end\n  S.rouletteTimes[step]=now\n end\n S.rouletteWindows={}\n if not S.cfg.roulette then return end\n local function addOrder(order,base,times)\n  local offsets={0,S.roulette.step,S.roulette.step*2}\n  if times and #times>0 then base=times[#times]-S.time(\"p4end\")-offsets[#times] end\n  for i,k in ipairs(order) do\n   local t=times and times[i] or S.time(\"p4end\")+base+offsets[i]\n   for _,w in ipairs((S.cfg.fakeMelee and k==\"Ifrit\") and {} or S.roulette.templates[k]) do\n    S.rouletteWindows[#S.rouletteWindows+1]={t+w[1],t+w[2],1}\n   end\n  end\n end\n if S.rouletteOrder then addOrder(S.rouletteOrder,0,S.rouletteTimes)\n else\n  -- Initial estimates use the reference's three possible orders. Prepare events narrow them.\n  for _,order in pairs(orders) do addOrder(order,S.roulette.first) end\n end\nend\nS.dotStarts={}\nS.dotGaps={}\nS.dotEnds={ [1644]=\"p1end\", [1185]=\"p2end\", [1801]=\"p3end\" }\nfunction S.publishSpinyLifetime(target,now)\n -- Only Spiny uses the live TTK override; nails retain their existing forecasts.\n if target and target.contentid~=2091 and target.alive and target.targetable then return false end\n if not (target and target.contentid==2091) and S.dotContentID~=2091 then return false end\n A.clearAutoSimPhases(\"DotAvailability\",0,0)\n A.clearAutoSimPhases(\"DotAvailability\",0,1)\n A.clearAutoSimPhases(\"TargetLifetime\",0)\n S.spinyLifetimeNext=now+1\n if not (target and target.contentid==2091 and target.alive and target.targetable and target.attackable) then\n  S.dotPublishedTarget=nil;S.dotPublishedEnd=nil\n  return true\n end\n S.dotEntityID=target.id;S.dotContentID=2091;S.dotPublishedTarget=target.id\n local ttl=TensorCore.calcTimeToKill(target.id)\n local valid=type(ttl)==\"number\" and ttl==ttl and ttl>0 and ttl<1259-now\n if valid then\n  if S.spinyLifetimeID~=target.id then S.spinyLifetimeID=target.id;S.spinyLifetimeStart=now end\n  S.dotPublishedEnd=now+ttl\n  A.addAutoSimPhase(\"TargetLifetime\",S.spinyLifetimeStart,S.dotPublishedEnd,1,0)\n else S.dotPublishedEnd=nil end\n if S.spinyLifetimeLogID~=target.id or not S.spinyLifetimeLogAt or now>=S.spinyLifetimeLogAt+5 then\n  d(\"[UWU AutoSim] Spiny lifetime target=\"..tostring(target.id)..\" remaining=\"..tostring(ttl)..\" published=\"..tostring(valid)..\"; DoT exclusions unchanged\")\n  S.spinyLifetimeLogID=target.id;S.spinyLifetimeLogAt=now\n end\n return true\nend\n\nfunction S.publishDots()\n local target=TensorCore.mGetTarget()\n local now=A.getAutoSimTime()\n if S.publishSpinyLifetime(target,now) then return end\n if target and target.alive and target.targetable then\n  S.dotEntityID=target.id;S.dotContentID=target.contentid\n end\n if not S.dotEntityID then return end\n local cid=S.dotContentID\n local endAnchor=S.dotEnds[cid]\n local finish=math.min(1259,math.max(now+5,S.time(S.kill.after)+S.kill.offset))\n local start=0\n if endAnchor then\n  if not S.dotStarts[S.dotEntityID] then\n   local predicted=cid==1644 and 0 or (cid==1185 and S.time(\"p1end\")+S.ifritArrival or S.time(\"ifrit2Back\"))\n   S.dotStarts[S.dotEntityID]=math.max(0,math.min(predicted,now))\n  end\n  start=S.dotStarts[S.dotEntityID]\n  finish=math.min(1259,S.observed[endAnchor] or math.max(S.time(endAnchor),now+5))\n end\n -- Preserve target lifetime, but exclude periods without DoT damage, including Ultima jumps.\n A.clearAutoSimPhases(\"DotAvailability\",0,0)\n A.clearAutoSimPhases(\"TargetLifetime\",0)\n if finish<=start then return end\n A.addAutoSimPhase(\"TargetLifetime\",start,finish,1,0)\n local stop=endAnchor and math.max(start,finish-.5) or finish\n -- Respect existing excluded adds even when selected manually.\n if cid==1186 or cid==1648 or cid==2091 then stop=start end\n local gaps={}\n local observed=S.dotGaps[S.dotEntityID] or {}\n for _,phase in ipairs(S.phases) do\n  if phase[1]==\"FullDowntime\" and not (phase[2]==\"ifritDash\" and (S.ifritDashWasFinal or (not S.observed.ifritDash and S.time(\"p2end\")<=S.time(\"ifritDash\")))) then\n   local a,b=S.time(phase[2])+phase[3],S.time(phase[4])+phase[5]\n   local replaced=false\n   for _,gap in ipairs(observed) do if math.abs(gap[1]-a)<10 then replaced=true;break end end\n   if not replaced and b>start and a<stop then gaps[#gaps+1]={math.max(start,a),math.min(stop,b),1} end\n  end\n end\n for _,gap in ipairs(observed) do\n  local a,b=math.max(start,gap[1]),math.min(stop,gap[2] or stop)\n  if b>a then gaps[#gaps+1]={a,b,1} end\n end\n local cursor=start\n local available={}\n for _,gap in ipairs(S.union(gaps)) do\n  if gap[1]>cursor then available[#available+1]={cursor,gap[1]} end\n  cursor=math.max(cursor,gap[2])\n end\n if stop>cursor then available[#available+1]={cursor,stop} end\n for _,window in ipairs(available) do A.addAutoSimPhase(\"DotAvailability\",window[1],window[2],1,0,0) end\n S.dotPublishedEnd=finish;S.dotPublishedTarget=S.dotEntityID\n S.dotAnchorSignature=tostring(S.observed.p1end)..\":\"..tostring(S.observed.p2end)..\":\"..tostring(S.observed.p3end)\nend\n\nfunction S.publish()\n local now=A.getAutoSimTime()\n local finish=math.max(now+5,S.time(S.kill.after)+S.kill.offset)\n A.setAutoSimKillTime(math.min(finish,1259))\n local grouped={FullDowntime={},CasterDowntime={},Stun={},BossModifier={},RaidBuff={},GroundFieldMovement={}}\n local function add(kind,a,b,value)\n  if b>a then grouped[kind][#grouped[kind]+1]={a,b,value or 1} end\n end\n for _,p in ipairs(S.phases) do\n  -- HP-driven deaths are variable. Do not declare the still-live boss unavailable.\n  local hpDeath=p[1]==\"FullDowntime\" and (p[2]==\"p1end\" or p[2]==\"p2end\")\n  if (not hpDeath or S.observed[p[2]]~=nil) and not (p[2]==\"ifritDash\" and (S.ifritDashWasFinal or (not S.observed.ifritDash and S.time(\"p2end\")<=S.time(\"ifritDash\")))) then\n   local a,b=S.time(p[2])+p[3],S.time(p[4])+p[5]\n   local readySpiny=S.spinyUptime\n   if p[1]==\"FullDowntime\" and p[2]==\"pull\" and p[3]==33.96 and readySpiny then\n    -- Split only Garuda's first jump: the stack-safe Spiny remains attackable.\n    add(p[1],a,math.min(b,readySpiny[1]),p[6])\n    add(p[1],math.max(a,readySpiny[2] or b),b,p[6])\n   else\n    add(p[1],a,b,p[6])\n   end\n  end\n end\n for _,p in ipairs(S.windows) do\n  local a,b=S.time(p[2])+p[3],S.time(p[4])+p[5]\n  if p[2]==\"titan1\" and S.observed.p3end then b=math.min(b,S.observed.p3end) end\n  if not (S.cfg.fakeMelee and p[7]==\"eruption bait\") then add(p[1],a,b,p[6]) end\n end\n if S.cfg.poolLaha then\n  add(\"BossModifier\",S.time(\"magitekBit1\")+S.lahaDelay,S.time(\"p4end\"),.01)\n end\n if S.cfg.priorityGaols then\n  add(\"BossModifier\",S.time(\"titan1\")+68.966,S.time(\"titan1\")+73.966,1.10)\n  add(\"BossModifier\",S.time(\"p4end\")+227.75,S.time(\"p4end\")+232.75,1.10)\n end\n if S.cfg.raidBuffs then\n  local prev\n  for _,w in ipairs(S.buffwindows) do\n   local t=S.time(w[1])+w[2]\n   if prev then t=math.max(t,prev+120) end\n   -- The p1end-anchored burst is the Ifrit opener; preserve its timing/resync.\n   local burstWeight=w[1]==\"p1end\" and 1.4 or (1+S.cfg.buffGain/100)\n   local burstEnd=t+20\n   if w[1]==\"p1end\" then\n    -- Never extend the artificial 1.4 opener into nail softening.\n    burstEnd=math.min(burstEnd,S.time(\"p1end\")+39,S.nailsStartedAt or math.huge)\n   end\n   add(\"RaidBuff\",t,burstEnd,burstWeight)\n   prev=t\n  end\n end\n for _,w in ipairs(S.rouletteWindows) do add(\"CasterDowntime\",w[1],w[2],1) end\n for _,w in pairs(S.dynamic) do add(w[1],w[2],w[3],w[4]) end\n for kind,list in pairs(grouped) do\n  A.clearAutoSimPhases(kind)\n  -- All absolute same-type overlaps are merged before submission.\n  if kind==\"BossModifier\" or kind==\"RaidBuff\" then\n   local cuts,seen={},{}\n   for _,w in ipairs(list) do for i=1,2 do if not seen[w[i]] then cuts[#cuts+1]=w[i];seen[w[i]]=true end end end\n   table.sort(cuts)\n   for i=1,#cuts-1 do\n    local value,active=1,false\n    for _,w in ipairs(list) do if w[1]<=cuts[i] and w[2]>=cuts[i+1] then value=value*w[3];active=true end end\n    if active then A.addAutoSimPhase(kind,cuts[i],cuts[i+1],value) end\n   end\n  else\n   for _,w in ipairs(S.union(list)) do A.addAutoSimPhase(kind,w[1],w[2],w[3]) end\n  end\n end\n S.publishDots()\n A.clearAutoSimUncertainty()\n A.addAutoSimUncertainty(0,2)\n local uncertainty=2\n for _,name in ipairs(S.anchorOrder) do\n  if not S.observed[name] then\n   local anchor=S.anchors[name]\n   uncertainty=math.max(uncertainty,anchor.spread)\n   A.addAutoSimUncertainty(S.time(name)-25,uncertainty)\n  end\n end\n A.addAutoSimUncertainty(math.max(0,finish-30),math.max(uncertainty,S.kill.spread))\nend\nfunction S.resync(name,now)\n if S.observed[name] then return end\n S.observed[name]=now\n S.rouletteForecast()\n S.publish()\n\nend\n-- Snapshot slower-group adjustments once at pull setup, never from the drawing callback.\nlocal G=_G.UWU_AutoSimSettings or {}\nlocal previous=data.uwuAutoSim\nlocal timing=previous and previous.slowerGroupTiming\nif not timing then\n timing={enabled=G.slowerGroup==true}\n for _,key in ipairs({\"garudaExtra\",\"ifritExtra\",\"titanExtra\",\"killExtra\"}) do\n  timing[key]=math.max(0,math.min(90,tonumber(G[key]) or 0))\n end\nend\nS.slowerGroupTiming=timing\nif timing.enabled then\n S.anchors.p1end.offset=S.anchors.p1end.offset+timing.garudaExtra\n S.anchors.p2end.offset=S.anchors.p2end.offset+timing.ifritExtra\n S.anchors.p3end.offset=S.anchors.p3end.offset+timing.titanExtra\n S.kill.offset=S.kill.offset+timing.killExtra\nend\nS.rouletteForecast()\nS.publish()\nS.planRole=\"ranged\"; S.planJob=Player.job\ndata.uwuAutoSim=S\nself.used=true",
							conditions = 
							{
								
								{
									"c432c1d8-c39e-253a-9a7d-b6dd7d98103f",
									true,
								},
								
								{
									"e76d1438-735f-cb14-a1e8-a344f54b8257",
									false,
								},
								
								{
									"97d80a73-ff2d-6cec-bb06-82936ec47b68",
									true,
								},
								
								{
									"08e88141-2152-1887-8e67-ee03529dce9a",
									true,
								},
							},
							name = "Ranged/support - Apply owned UWU state",
							uuid = "2e0ad1c8-2a0c-19bc-b0fe-429a7722adbd",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "-- Profile-owned settings, loaded before any GUI or gameplay consumer.\nif not _G.UWU_AutoSimSettingsStore then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[UWU-AutoSim.lua]]\n local saved={}\n if FileExists(path) then\n  local loaded=FileLoad(path)\n  if type(loaded)==\"table\" then saved=loaded end\n end\n local specs={\n  UWU_AutoSimSettings={autoCasterLB=true,autoMeleeLB=true,vulcanKnockback=true,casterNailLifetime=true,casterNailCastBudget=2.8,spinyTarget=true,spinyEarly=false,adjustKillTimes=false,garudaSeconds=130,ifritSeconds=100,titanSeconds=125,fakeMelee=false,slowerGroup=false,garudaExtra=0,ifritExtra=0,titanExtra=0,killExtra=0},\n  UWU_BLM_AutoSimConfig={poolLaha=true,priorityGaols=true,roulette=true,raidBuffs=true,buffGain=17,nails=true,closePair=true,surecast=true,manaward=true,holdTripleLateGaruda=true,garudaEndSeconds=133.235,ifritEndAfterFirstDisappear=40.328,tripleHoldLeadSeconds=8,burstWeight20261029=true},\n  UWU_BRD_AutoSimConfig={poolLaha=true,priorityGaols=true,raidBuffs=false,buffGain=16.87},\n  UWU_RPR_AutoSimConfig={lbWho=2,poolLaha=true,priorityGaols=true,raidBuffs=false,buffGain=17,burstWeight20261029=true},\n  UWU_AutoSimUI={general=true,garuda=false,ifrit=false,titan=false,ultima=false}\n }\n local ranges={buffGain={0,40},lbWho={1,2},casterNailCastBudget={0.5,5},garudaSeconds={90,240},ifritSeconds={70,240},titanSeconds={80,240},garudaExtra={0,90},ifritExtra={0,90},titanExtra={0,90},killExtra={0,90},tripleHoldLeadSeconds={0,20},garudaEndSeconds={110,180},ifritEndAfterFirstDisappear={20,90}}\n for name,defaults in pairs(specs) do\n  local current=_G[name]\n  local disk=type(saved[name])==\"table\" and saved[name] or {}\n  local values={}\n  for key,default in pairs(defaults) do\n   -- Disk wins on a fresh Lua session even if an older initializer already ran.\n   local value=disk[key]\n   if value==nil and current then value=current[key] end\n   if type(value)~=type(default) then value=default end\n   local range=ranges[key]\n   if range and (value~=value or value<range[1] or value>range[2] or (key==\"lbWho\" and value%1~=0)) then value=default end\n   values[key]=value\n  end\n  _G[name]=values\n end\n local store={}\n function store.save()\n  local out={}\n  for name,defaults in pairs(specs) do\n   out[name]={}\n   for key in pairs(defaults) do out[name][key]=_G[name][key] end\n  end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,out)\n end\n _G.UWU_AutoSimSettingsStore=store\n store.save()\nend\n\n-- UWU forecast: event resync handlers are shared by every supported job.\n-- This plan retains this job's movement, target lifetimes and existing preferences.\n-- Phase/window records: {type, start anchor, start offset, end anchor, end offset, value}.\n-- Anchors use the real combat clock; native events correct the estimates.\n-- Spiny Plume: applies regardless of model scale, including the enlarged plume.\nlocal spiny=TensorCore.API.TensorACR.addBlacklistEntry(2091,\"UWU Spiny Plume\")\nif not spiny.enabled or spiny.allowIfTarget or spiny.allowSmartDoT then\n spiny.enabled=true;spiny.allowIfTarget=false;spiny.allowSmartDoT=false\n TensorCore.API.TensorACR.saveDotBlacklist()\nend\nlocal feather=TensorCore.API.TensorACR.addBlacklistEntry(1648,\"UWU Satin Plume\")\nif not feather.enabled or feather.allowIfTarget or feather.allowSmartDoT then\n feather.enabled=true;feather.allowIfTarget=false;feather.allowSmartDoT=false\n TensorCore.API.TensorACR.saveDotBlacklist()\nend\nlocal A=TensorCore.API.TensorACR\nlocal nail=A.addBlacklistEntry(1186,\"UWU Infernal Nail\")\nif not nail.enabled or nail.allowIfTarget or nail.allowSmartDoT then\n nail.enabled=true;nail.allowIfTarget=false;nail.allowSmartDoT=false\n A.saveDotBlacklist()\nend\n-- Generated encounter inputs are inserted by the MCP authoring script.\n-- Five EU BLM clears supplied the original the phase-relative medians. Native events resync them.\nlocal A=TensorCore.API.TensorACR\n_G.UWU_RPR_TemporaryState=_G.UWU_RPR_TemporaryState or {}\nlocal cfg=_G.UWU_RPR_AutoSimConfig\nif not cfg then\n cfg={lbWho=2,poolLaha=true,priorityGaols=true,roulette=false,raidBuffs=false,buffGain=17}\n _G.UWU_RPR_AutoSimConfig=cfg\nend\n-- Burst weight update: preserve forecast enablement and other options.\nif not cfg.burstWeight20261029 then cfg.buffGain=17;cfg.burstWeight20261029=true end\nlocal S={\n  [\"anchors\"]={\n    [\"p1end\"]={\n      [\"after\"]=\"pull\",\n      [\"offset\"]=134.629,\n      [\"spread\"]=10\n    },\n    [\"ifrit1\"]={\n      [\"after\"]=\"p1end\",\n      [\"offset\"]=72.217,\n      [\"spread\"]=0.75\n    },\n    [\"p2end\"]={\n      [\"after\"]=\"ifrit1\",\n      [\"offset\"]=38.162,\n      [\"spread\"]=10\n    },\n    [\"ifrit2Back\"]={\n      [\"after\"]=\"p2end\",\n      [\"offset\"]=7.422,\n      [\"spread\"]=0.75\n    },\n    [\"titan1\"]={\n      [\"after\"]=\"ifrit2Back\",\n      [\"offset\"]=22.062,\n      [\"spread\"]=0.75\n    },\n    [\"p3end\"]={\n      [\"after\"]=\"titan1\",\n      [\"offset\"]=107.938,\n      [\"spread\"]=15\n    },\n    [\"titan3Back\"]={\n      [\"after\"]=\"p3end\",\n      [\"offset\"]=12.283,\n      [\"spread\"]=0.75\n    },\n    [\"magitekBit1\"]={\n      [\"after\"]=\"titan3Back\",\n      [\"offset\"]=7.018,\n      [\"spread\"]=0.75\n    },\n    [\"p4end\"]={\n      [\"after\"]=\"magitekBit1\",\n      [\"offset\"]=25.99,\n      [\"spread\"]=0.75\n    },\n    [\"graniteGaol1\"]={\n      [\"after\"]=\"p4end\",\n      [\"offset\"]=233.053,\n      [\"spread\"]=0.75\n    }\n  },\n  [\"kill\"]={\n    [\"after\"]=\"graniteGaol1\",\n    [\"offset\"]=137.5,\n    [\"spread\"]=7.881\n  },\n  [\"phases\"]={\n    {\n      \"FullDowntime\",\n      \"pull\",\n      70.532,\n      \"pull\",\n      74.238,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p1end\",\n      0.1,\n      \"p1end\",\n      13.303,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"ifrit1\",\n      0.1,\n      \"ifrit1\",\n      3.812,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p2end\",\n      0.1,\n      \"ifrit2Back\",\n      -0.3,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"titan1\",\n      0.1,\n      \"titan1\",\n      8.158,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"titan1\",\n      54.272,\n      \"titan1\",\n      62.508,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p3end\",\n      0.1,\n      \"titan3Back\",\n      -0.3,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"magitekBit1\",\n      0.1,\n      \"magitekBit1\",\n      13.741,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p4end\",\n      0.1,\n      \"p4end\",\n      50.191,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p4end\",\n      77.992,\n      \"p4end\",\n      98.072,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p4end\",\n      156.499,\n      \"p4end\",\n      161.092,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p4end\",\n      193.502,\n      \"p4end\",\n      198.14,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p4end\",\n      214.525,\n      \"p4end\",\n      229.087,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"graniteGaol1\",\n      0.1,\n      \"p4end\",\n      255.307,\n      1\n    },\n    {\n      \"FullDowntime\",\n      \"p4end\",\n      353.6,\n      \"p4end\",\n      357.89,\n      1\n    }\n  },\n  [\"windows\"]={\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      35.0,\n      \"pull\",\n      37.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      38.5,\n      \"pull\",\n      41.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      43.0,\n      \"pull\",\n      44.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      91.0,\n      \"pull\",\n      92.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      102.5,\n      \"pull\",\n      104.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      105.5,\n      \"pull\",\n      106.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"pull\",\n      127.5,\n      \"pull\",\n      128.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p1end\",\n      44.5,\n      \"p1end\",\n      47.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p1end\",\n      91.5,\n      \"p1end\",\n      98.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"titan1\",\n      8.5,\n      \"titan1\",\n      11.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"titan1\",\n      14.0,\n      \"titan1\",\n      21.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"titan1\",\n      27.5,\n      \"titan1\",\n      29.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"titan1\",\n      41.0,\n      \"titan1\",\n      42.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"titan1\",\n      74.5,\n      \"titan1\",\n      76.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      99.5,\n      \"p4end\",\n      100.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      109.0,\n      \"p4end\",\n      115.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      121.0,\n      \"p4end\",\n      124.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      125.0,\n      \"p4end\",\n      129.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      144.5,\n      \"p4end\",\n      145.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      161.5,\n      \"p4end\",\n      169.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      170.0,\n      \"p4end\",\n      172.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      173.5,\n      \"p4end\",\n      174.5,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      178.5,\n      \"p4end\",\n      182.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      229.5,\n      \"p4end\",\n      231.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      274.0,\n      \"p4end\",\n      280.0,\n      1\n    },\n    {\n      \"CasterDowntime\",\n      \"p4end\",\n      281.0,\n      \"p4end\",\n      282.5,\n      1\n    }\n  },\n  [\"returns\"]={\n    \n  },\n  [\"buffwindows\"]={\n    {\n      \"pull\",\n      8.069\n    },\n    {\n      \"p1end\",\n      16.081\n    },\n    {\n      \"ifrit2Back\",\n      52.467\n    },\n    {\n      \"p4end\",\n      52.628\n    },\n    {\n      \"p4end\",\n      175.979\n    },\n    {\n      \"p4end\",\n      317.846\n    }\n  },\n  [\"sample_count\"]=5,\n  [\"kill_samples\"]={\n    782.098,\n    751.692,\n    783.165,\n    838.291,\n    794.832\n  },\n  [\"roulette\"]={\n    [\"first\"]=293.478,\n    [\"step\"]=20.123,\n    [\"templates\"]={\n      [\"Garuda\"]={\n        {\n          9.5,\n          10.0\n        }\n      },\n      [\"Ifrit\"]={\n        {\n          7.0,\n          9.5\n        },\n        {\n          11.0,\n          11.5\n        }\n      },\n      [\"Titan\"]={\n        {\n          5.0,\n          13.0\n        }\n      }\n    }\n  },\n  [\"anchorOrder\"]={\n    \"p1end\",\n    \"ifrit1\",\n    \"p2end\",\n    \"ifrit2Back\",\n    \"titan1\",\n    \"p3end\",\n    \"titan3Back\",\n    \"magitekBit1\",\n    \"p4end\",\n    \"graniteGaol1\"\n  },\n  [\"ifritArrival\"]=13.603,\n  [\"lahaDelay\"]=14.041\n}\n-- Separate Ifrit's second dash from his actual phase death.\nS.anchors.ifritDash={after=\"ifrit1\",offset=47.95,spread=2}\nS.anchors.ifritDashBack={after=\"ifritDash\",offset=15.79,spread=1}\nS.anchors.p2end={after=\"ifrit1\",offset=42.386,spread=12}\nS.anchors.ifrit2Back={after=\"p2end\",offset=7.55,spread=.75}\nS.anchorOrder={\"p1end\",\"ifrit1\",\"ifritDash\",\"ifritDashBack\",\"p2end\",\"ifrit2Back\",\"titan1\",\"p3end\",\"titan3Back\",\"magitekBit1\",\"p4end\",\"graniteGaol1\"}\nS.phases[#S.phases+1]={\"FullDowntime\",\"ifritDash\",0.1,\"ifritDashBack\",-0.1,1}\nfor _,phase in ipairs(S.phases) do\n if phase[1]==\"FullDowntime\" and phase[2]==\"ifrit1\" and phase[4]==\"ifrit1\" then phase[5]=4.25 end\nend\n-- First Garuda disappearance: corroborated in three recent native logs.\nS.phases[#S.phases+1]={\"FullDowntime\",\"pull\",33.96,\"pull\",38.25,1}\n-- Shared encounter defaults chosen by user: Garuda 130s, Ifrit 100s; live resyncs still win.\nS.anchors.p1end.offset=130\nS.anchors.p1end.spread=27\n-- Ifrit default: 101s from targetability (58.614s to first disappearance + 42.386s).\nS.anchors.p2end.spread=17\nS.windows={{\"MeleeDowntime\",\"titan1\",15.831,\"titan1\",17.831,1}}\n-- Native personal-gaol forecast supplies its own additional movement interval.\n-- Three native Monk-pull boss-event samples, 21 October; not player damage-gap estimates.\nfor _,phase in ipairs(S.phases) do\n if phase[1]==\"FullDowntime\" and phase[2]==\"pull\" and math.abs(phase[3]-70.532)<.001 then\n  phase[3]=68.865;phase[5]=73.150\n elseif phase[1]==\"FullDowntime\" and phase[2]==\"titan1\" and phase[3]==.1 then\n  phase[5]=7.544\n end\nend\nS.cfg={}\nfor k,v in pairs(cfg) do S.cfg[k]=v end\nlocal userSettings=_G.UWU_AutoSimSettings or {}\n-- Shared Ifrit controls apply to every role plan.\nS.cfg.nails=_G.UWU_BLM_AutoSimConfig.nails\nS.cfg.closePair=_G.UWU_BLM_AutoSimConfig.closePair\nlocal roleJob=Player.job\nS.cfg.fakeMelee=userSettings.fakeMelee==true and (roleJob==25 or roleJob==27 or roleJob==35 or roleJob==42 or roleJob==23 or roleJob==31 or roleJob==38)\nS.cfg.adjustKillTimes=userSettings.adjustKillTimes==true\nlocal garuda=130;local ifrit=100;local titan=125\nif S.cfg.adjustKillTimes then\n garuda=userSettings.garudaSeconds or 130\n ifrit=userSettings.ifritSeconds or 100\n titan=userSettings.titanSeconds or 125\nend\nS.anchors.p1end.offset=garuda\nS.anchors.p2end={after=\"ifrit1\",offset=ifrit-(72.217-S.ifritArrival),spread=17}\nS.anchors.p3end.offset=titan-S.anchors.titan1.offset\n-- Tag only eruption bait-route forecasts; no other movement is removed.\nfor _,w in ipairs(S.windows) do\n if w[1]==\"CasterDowntime\" and ((w[2]==\"p1end\" and (w[3]==44.5 or w[3]==91.5)) or (w[2]==\"p4end\" and w[3]==109)) then w[7]=\"eruption bait\" end\nend\nS.observed={pull=0}\nS.dynamic={}\nS.rouletteWindows={}\nfunction S.time(name)\n if S.observed[name] then return S.observed[name] end\n local a=S.anchors[name]\n return S.time(a.after)+a.offset\nend\nfunction S.union(list)\n table.sort(list,function(a,b)return a[1]<b[1] end)\n local out={}\n for _,w in ipairs(list) do\n  local last=out[#out]\n  if last and w[1]<=last[2] and w[3]==last[3] then last[2]=math.max(last[2],w[2])\n  else out[#out+1]={w[1],w[2],w[3]} end\n end\n return out\nend\nfunction S.rouletteForecast(kind,now)\n local orders={Garuda={\"Garuda\",\"Ifrit\",\"Titan\"},Ifrit={\"Ifrit\",\"Garuda\",\"Titan\"},Titan={\"Titan\",\"Ifrit\",\"Garuda\"}}\n if kind then\n  if not S.rouletteOrder then S.rouletteOrder=orders[kind];S.rouletteTimes={} end\n  local step=#S.rouletteTimes+1\n  if S.rouletteOrder[step]~=kind then return end\n  S.rouletteTimes[step]=now\n end\n S.rouletteWindows={}\n if not S.cfg.roulette then return end\n local function addOrder(order,base,times)\n  local offsets={0,S.roulette.step,S.roulette.step*2}\n  if times and #times>0 then base=times[#times]-S.time(\"p4end\")-offsets[#times] end\n  for i,k in ipairs(order) do\n   local t=times and times[i] or S.time(\"p4end\")+base+offsets[i]\n   for _,w in ipairs((S.cfg.fakeMelee and k==\"Ifrit\") and {} or S.roulette.templates[k]) do\n    S.rouletteWindows[#S.rouletteWindows+1]={t+w[1],t+w[2],1}\n   end\n  end\n end\n if S.rouletteOrder then addOrder(S.rouletteOrder,0,S.rouletteTimes)\n else\n  -- Initial estimates use the reference's three possible orders. Prepare events narrow them.\n  for _,order in pairs(orders) do addOrder(order,S.roulette.first) end\n end\nend\nS.dotStarts={}\nS.dotGaps={}\nS.dotEnds={ [1644]=\"p1end\", [1185]=\"p2end\", [1801]=\"p3end\" }\nfunction S.publishSpinyLifetime(target,now)\n -- Only Spiny uses the live TTK override; nails retain their existing forecasts.\n if target and target.contentid~=2091 and target.alive and target.targetable then return false end\n if not (target and target.contentid==2091) and S.dotContentID~=2091 then return false end\n A.clearAutoSimPhases(\"DotAvailability\",0,0)\n A.clearAutoSimPhases(\"DotAvailability\",0,1)\n A.clearAutoSimPhases(\"TargetLifetime\",0)\n S.spinyLifetimeNext=now+1\n if not (target and target.contentid==2091 and target.alive and target.targetable and target.attackable) then\n  S.dotPublishedTarget=nil;S.dotPublishedEnd=nil\n  return true\n end\n S.dotEntityID=target.id;S.dotContentID=2091;S.dotPublishedTarget=target.id\n local ttl=TensorCore.calcTimeToKill(target.id)\n local valid=type(ttl)==\"number\" and ttl==ttl and ttl>0 and ttl<1259-now\n if valid then\n  if S.spinyLifetimeID~=target.id then S.spinyLifetimeID=target.id;S.spinyLifetimeStart=now end\n  S.dotPublishedEnd=now+ttl\n  A.addAutoSimPhase(\"TargetLifetime\",S.spinyLifetimeStart,S.dotPublishedEnd,1,0)\n else S.dotPublishedEnd=nil end\n if S.spinyLifetimeLogID~=target.id or not S.spinyLifetimeLogAt or now>=S.spinyLifetimeLogAt+5 then\n  d(\"[UWU AutoSim] Spiny lifetime target=\"..tostring(target.id)..\" remaining=\"..tostring(ttl)..\" published=\"..tostring(valid)..\"; DoT exclusions unchanged\")\n  S.spinyLifetimeLogID=target.id;S.spinyLifetimeLogAt=now\n end\n return true\nend\n\nfunction S.publishDots()\n local t=TensorCore.mGetTarget()\n local now=A.getAutoSimTime()\n if S.publishSpinyLifetime(t,now) then return end\n if t and t.alive and t.targetable then\n  S.dotEntityID=t.id;S.dotContentID=t.contentid\n end\n local cid=S.dotContentID\n local endAnchor=S.dotEnds[cid]\n local finish=math.min(1259,math.max(now+5,S.time(S.kill.after)+S.kill.offset))\n local start=0\n if endAnchor then\n  if not S.dotStarts[cid] then\n   local predicted=cid==1644 and 0 or (cid==1185 and S.time(\"p1end\")+S.ifritArrival or S.time(\"ifrit2Back\"))\n   S.dotStarts[cid]=math.max(0,math.min(predicted,now))\n  end\n  start=S.dotStarts[cid]\n  finish=S.observed[endAnchor] or math.max(S.time(endAnchor),now+5)\n end\n A.clearAutoSimPhases(\"DotAvailability\",0)\n A.clearAutoSimPhases(\"TargetLifetime\",0)\n if finish<=start then return end\n A.addAutoSimPhase(\"TargetLifetime\",start,finish,1,0)\n local stop=endAnchor and math.max(start,finish-.5) or finish\n -- FullDowntime already prevents application during boss disappearances.\n -- Keep the same target available across those gaps so its existing mark persists.\n if stop>start then A.addAutoSimPhase(\"DotAvailability\",start,stop,1,0) end\n S.dotPublishedEnd=finish;S.dotPublishedTarget=S.dotEntityID\nend\n\nfunction S.publish()\n local live=_G.UWU_RPR_AutoSimConfig\n if live then S.cfg.lbWho=live.lbWho or 2 end\n local now=A.getAutoSimTime()\n local finish=math.max(now+5,S.time(S.kill.after)+S.kill.offset)\n A.setAutoSimKillTime(math.min(finish,1259))\n local grouped={MeleeDowntime={},FullDowntime={},CasterDowntime={},Stun={},BossModifier={},RaidBuff={},GroundFieldMovement={}}\n local function add(kind,a,b,value)\n  if b>a then grouped[kind][#grouped[kind]+1]={a,b,value or 1} end\n end\n for _,p in ipairs(S.phases) do\n  -- HP-driven deaths are variable. Do not declare the still-live boss unavailable.\n  local hpDeath=p[1]==\"FullDowntime\" and (p[2]==\"p1end\" or p[2]==\"p2end\")\n  if (not hpDeath or S.observed[p[2]]~=nil) and not (p[2]==\"ifritDash\" and (S.ifritDashWasFinal or (not S.observed.ifritDash and S.time(\"p2end\")<=S.time(\"ifritDash\")))) then\n   local a,b=S.time(p[2])+p[3],S.time(p[4])+p[5]\n   local readySpiny=S.spinyUptime\n   if p[1]==\"FullDowntime\" and p[2]==\"pull\" and p[3]==33.96 and readySpiny then\n    -- Split only Garuda's first jump: the stack-safe Spiny remains attackable.\n    add(p[1],a,math.min(b,readySpiny[1]),p[6])\n    add(p[1],math.max(a,readySpiny[2] or b),b,p[6])\n   else\n    add(p[1],a,b,p[6])\n   end\n  end\n end\n for _,p in ipairs(S.windows) do\n  local a,b=S.time(p[2])+p[3],S.time(p[4])+p[5]\n  if p[2]==\"titan1\" and S.observed.p3end then b=math.min(b,S.observed.p3end) end\n  if not (S.cfg.fakeMelee and p[7]==\"eruption bait\") then add(p[1],a,b,p[6]) end\n end\n if S.cfg.poolLaha then\n  add(\"BossModifier\",S.time(\"magitekBit1\")+S.lahaDelay,S.time(\"p4end\"),.01)\n end\n if S.cfg.priorityGaols then\n  add(\"BossModifier\",S.time(\"titan1\")+68.966,S.time(\"titan1\")+73.966,1.10)\n  add(\"BossModifier\",S.time(\"p4end\")+227.75,S.time(\"p4end\")+232.75,1.10)\n end\n if S.cfg.raidBuffs then\n  local prev\n  for _,w in ipairs(S.buffwindows) do\n   local t=S.time(w[1])+w[2]\n   if prev then t=math.max(t,prev+120) end\n   -- The p1end-anchored burst is the Ifrit opener; preserve its timing/resync.\n   local burstWeight=w[1]==\"p1end\" and 1.4 or (1+S.cfg.buffGain/100)\n   local burstEnd=t+20\n   if w[1]==\"p1end\" then\n    -- Never extend the artificial 1.4 opener into nail softening.\n    burstEnd=math.min(burstEnd,S.time(\"p1end\")+39,S.nailsStartedAt or math.huge)\n   end\n   add(\"RaidBuff\",t,burstEnd,burstWeight)\n   prev=t\n  end\n end\n for _,w in ipairs(S.rouletteWindows) do add(\"CasterDowntime\",w[1],w[2],1) end\n local roster=AnyoneCore.Roster\n local slot=roster and roster.current() and roster.mySlot()\n if S.cfg.lbWho==1 and (slot==\"M1\" or slot==\"M2\") and not S.lbObserved then\n  local lb=S.time(\"magitekBit1\")+S.lahaDelay\n  add(\"Stun\",lb,lb+8.2,1)\n end\n for _,w in pairs(S.dynamic) do add(w[1],w[2],w[3],w[4]) end\n for kind,list in pairs(grouped) do\n  A.clearAutoSimPhases(kind)\n  -- All absolute same-type overlaps are merged before submission.\n  if kind==\"BossModifier\" or kind==\"RaidBuff\" then\n   local cuts,seen={},{}\n   for _,w in ipairs(list) do for i=1,2 do if not seen[w[i]] then cuts[#cuts+1]=w[i];seen[w[i]]=true end end end\n   table.sort(cuts)\n   for i=1,#cuts-1 do\n    local value,active=1,false\n    for _,w in ipairs(list) do if w[1]<=cuts[i] and w[2]>=cuts[i+1] then value=value*w[3];active=true end end\n    if active then A.addAutoSimPhase(kind,cuts[i],cuts[i+1],value) end\n   end\n  else\n   for _,w in ipairs(S.union(list)) do A.addAutoSimPhase(kind,w[1],w[2],w[3]) end\n  end\n end\n S.publishDots()\n A.clearAutoSimUncertainty()\n A.addAutoSimUncertainty(0,2)\n local uncertainty=2\n for _,name in ipairs(S.anchorOrder) do\n  if not S.observed[name] then\n   local anchor=S.anchors[name]\n   uncertainty=math.max(uncertainty,anchor.spread)\n   A.addAutoSimUncertainty(S.time(name)-25,uncertainty)\n  end\n end\n A.addAutoSimUncertainty(math.max(0,finish-30),math.max(uncertainty,S.kill.spread))\nend\nfunction S.resync(name,now)\n if S.observed[name] then return end\n S.observed[name]=now\n S.rouletteForecast()\n S.publish()\n\nend\n-- Snapshot slower-group adjustments once at pull setup, never from the drawing callback.\nlocal G=_G.UWU_AutoSimSettings or {}\nlocal previous=data.uwuAutoSim\nlocal timing=previous and previous.slowerGroupTiming\nif not timing then\n timing={enabled=G.slowerGroup==true}\n for _,key in ipairs({\"garudaExtra\",\"ifritExtra\",\"titanExtra\",\"killExtra\"}) do\n  timing[key]=math.max(0,math.min(90,tonumber(G[key]) or 0))\n end\nend\nS.slowerGroupTiming=timing\nif timing.enabled then\n S.anchors.p1end.offset=S.anchors.p1end.offset+timing.garudaExtra\n S.anchors.p2end.offset=S.anchors.p2end.offset+timing.ifritExtra\n S.anchors.p3end.offset=S.anchors.p3end.offset+timing.titanExtra\n S.kill.offset=S.kill.offset+timing.killExtra\nend\nS.rouletteForecast()\nS.publish()\nS.planRole=\"melee\"; S.planJob=Player.job\ndata.uwuAutoSim=S\nself.used=true",
							conditions = 
							{
								
								{
									"e2ffb63f-2116-c768-9e66-0ca35c875cb1",
									true,
								},
								
								{
									"2ac78be1-5e33-d0cc-8aff-0a5583c659e8",
									true,
								},
								
								{
									"d33e676f-20e3-6ff6-886b-9b2de027dd21",
									true,
								},
								
								{
									"041820e0-d7ac-1636-8ae4-a911822cdb3b",
									true,
								},
							},
							name = "Melee/tank - Apply owned UWU state",
							uuid = "fb6f35b9-02b5-1cbf-ab39-c78a86cb1607",
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
							name = "UWU territory",
							uuid = "e3a650bb-2492-0964-9d75-a877be702ae6",
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
							name = "Caster/healer plan",
							uuid = "393d3944-e313-681b-9dcb-b7d142e1befd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.uwuAutoSim==nil or data.uwuAutoSim.planJob~=Player.job",
							name = "not configured",
							uuid = "356661a1-b0b4-24e0-92a3-073765d3c98d",
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
							uuid = "b504e41e-fb90-e045-8010-f01e52509a57",
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
							name = "UWU territory",
							uuid = "c432c1d8-c39e-253a-9a7d-b6dd7d98103f",
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
								20,
								22,
								30,
								34,
								39,
								41,
								19,
								21,
								32,
								37,
							},
							name = "Other roles plan",
							uuid = "e76d1438-735f-cb14-a1e8-a344f54b8257",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.uwuAutoSim==nil or data.uwuAutoSim.planJob~=Player.job",
							name = "not configured",
							uuid = "08e88141-2152-1887-8e67-ee03529dce9a",
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
							uuid = "97d80a73-ff2d-6cec-bb06-82936ec47b68",
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
							name = "UWU territory",
							uuid = "e2ffb63f-2116-c768-9e66-0ca35c875cb1",
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
								20,
								22,
								30,
								34,
								39,
								41,
								19,
								21,
								32,
								37,
							},
							name = "Melee/tank plan",
							uuid = "2ac78be1-5e33-d0cc-8aff-0a5583c659e8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.uwuAutoSim==nil or data.uwuAutoSim.planJob~=Player.job",
							name = "not configured",
							uuid = "041820e0-d7ac-1636-8ae4-a911822cdb3b",
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
							uuid = "d33e676f-20e3-6ff6-886b-9b2de027dd21",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Setup and cleanup",
				eventType = 16,
				mechanicTime = 9,
				name = "[UWU] Configure phase forecast",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = -8,
				timerStartOffset = -70,
				uuid = "19731e4d-5af0-f685-89b0-a0dc4dfc8a13",
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
							actionLua = "gStartCombat=false\ndata.uwuPrecast={deadline=eventArgs.timeQueued+eventArgs.time*1000,cancelled=false}\nself.used=true",
							conditions = 
							{
								
								{
									"295feb24-c5ef-3ce4-b5a4-3fab33ce072a",
									true,
								},
								
								{
									"8850e281-ca0d-53b4-834b-f930b9f1b7b6",
									false,
								},
							},
							name = "Keep Start Combat off",
							uuid = "dded3962-740f-bf18-b885-ead6466a5ebe",
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
									"295feb24-c5ef-3ce4-b5a4-3fab33ce072a",
									true,
								},
								
								{
									"8850e281-ca0d-53b4-834b-f930b9f1b7b6",
									false,
								},
								
								{
									"8329024a-3991-e47b-b0f2-a6311f66e3f9",
									true,
								},
								
								{
									"d87e938c-2b8a-895d-8801-77dab31080ca",
									true,
								},
							},
							name = "Select boss for precast",
							setTarget = true,
							targetType = "Detection Target",
							uuid = "93894c05-a61f-f238-bc93-e69e30a3cb80",
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
							name = "UWU",
							uuid = "295feb24-c5ef-3ce4-b5a4-3fab33ce072a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 7,
							uuid = "8850e281-ca0d-53b4-834b-f930b9f1b7b6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local s=data.uwuPrecast\nreturn s and not s.cancelled and Now()<s.deadline",
							name = "Countdown still active",
							uuid = "8329024a-3991-e47b-b0f2-a6311f66e3f9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local e=TensorCore.mGetEntity(eventArgs.detectionTargetID)\nlocal p=TensorCore.mGetPlayer()\nreturn e and p and e.contentid==1644 and e.attackable and e.targetable and e.hp.current>0 and TensorCore.getDistance2d(p.pos,e.pos)<=60+e.hitradius",
							name = "Nearby Garuda",
							uuid = "c8dbc300-2efa-fce8-842c-655c28a1fc85",
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
									"c8dbc300-2efa-fce8-842c-655c28a1fc85",
									true,
								},
							},
							filterTargetType = "Enemy",
							name = "Nearest eligible boss",
							uuid = "d87e938c-2b8a-895d-8801-77dab31080ca",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Setup and cleanup",
				eventType = 16,
				loop = true,
				mechanicTime = 9,
				name = "[UWU] Countdown boss targeting",
				timeRange = true,
				timelineIndex = 2,
				timerStartOffset = -120,
				uuid = "ae954bf2-af8a-f107-a51d-b76c2a97a3e4",
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
							actionLua = "local s=data.uwuPrecast;if s then s.cancelled=true end\nself.used=true",
							conditions = 
							{
								
								{
									"31a29ac2-4b58-28ff-81c2-dd66ec50f5e2",
									true,
								},
							},
							name = "Cancel countdown selection",
							uuid = "1dce1b5d-f85b-2a67-9b47-7c573f874588",
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
							name = "UWU",
							uuid = "31a29ac2-4b58-28ff-81c2-dd66ec50f5e2",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Setup and cleanup",
				eventType = 17,
				loop = true,
				mechanicTime = 9,
				name = "[UWU] Countdown target cancellation",
				timeRange = true,
				timelineIndex = 2,
				timerStartOffset = -120,
				uuid = "ddc0cc11-fb96-af89-8808-03de438f8f5c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Settings",
				uuid = "bd1bf611-c87c-8bd4-b1ff-3978e266ed89",
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
							actionLua = "-- Profile-owned settings, loaded before any GUI or gameplay consumer.\nif not _G.UWU_AutoSimSettingsStore then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[UWU-AutoSim.lua]]\n local saved={}\n if FileExists(path) then\n  local loaded=FileLoad(path)\n  if type(loaded)==\"table\" then saved=loaded end\n end\n local specs={\n  UWU_AutoSimSettings={autoCasterLB=true,autoMeleeLB=true,vulcanKnockback=true,casterNailLifetime=true,casterNailCastBudget=2.8,spinyTarget=true,spinyEarly=false,adjustKillTimes=false,garudaSeconds=130,ifritSeconds=100,titanSeconds=125,fakeMelee=false,slowerGroup=false,garudaExtra=0,ifritExtra=0,titanExtra=0,killExtra=0},\n  UWU_BLM_AutoSimConfig={poolLaha=true,priorityGaols=true,roulette=true,raidBuffs=true,buffGain=17,nails=true,closePair=true,surecast=true,manaward=true,holdTripleLateGaruda=true,garudaEndSeconds=133.235,ifritEndAfterFirstDisappear=40.328,tripleHoldLeadSeconds=8,burstWeight20261029=true},\n  UWU_BRD_AutoSimConfig={poolLaha=true,priorityGaols=true,raidBuffs=false,buffGain=16.87},\n  UWU_RPR_AutoSimConfig={lbWho=2,poolLaha=true,priorityGaols=true,raidBuffs=false,buffGain=17,burstWeight20261029=true},\n  UWU_AutoSimUI={general=true,garuda=false,ifrit=false,titan=false,ultima=false}\n }\n local ranges={buffGain={0,40},lbWho={1,2},casterNailCastBudget={0.5,5},garudaSeconds={90,240},ifritSeconds={70,240},titanSeconds={80,240},garudaExtra={0,90},ifritExtra={0,90},titanExtra={0,90},killExtra={0,90},tripleHoldLeadSeconds={0,20},garudaEndSeconds={110,180},ifritEndAfterFirstDisappear={20,90}}\n for name,defaults in pairs(specs) do\n  local current=_G[name]\n  local disk=type(saved[name])==\"table\" and saved[name] or {}\n  local values={}\n  for key,default in pairs(defaults) do\n   -- Disk wins on a fresh Lua session even if an older initializer already ran.\n   local value=disk[key]\n   if value==nil and current then value=current[key] end\n   if type(value)~=type(default) then value=default end\n   local range=ranges[key]\n   if range and (value~=value or value<range[1] or value>range[2] or (key==\"lbWho\" and value%1~=0)) then value=default end\n   values[key]=value\n  end\n  _G[name]=values\n end\n local store={}\n function store.save()\n  local out={}\n  for name,defaults in pairs(specs) do\n   out[name]={}\n   for key in pairs(defaults) do out[name][key]=_G[name][key] end\n  end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,out)\n end\n _G.UWU_AutoSimSettingsStore=store\n store.save()\nend\n\nlocal G=_G.UWU_AutoSimSettings\nlocal B=_G.UWU_BLM_AutoSimConfig\nlocal job=Player.job\nlocal caster=job==25 or job==27 or job==35 or job==42 or job==24 or job==28 or job==33 or job==40\nlocal ranged=job==23 or job==31 or job==38\nlocal melee=job==20 or job==22 or job==30 or job==34 or job==39 or job==41\nlocal C=caster and B or ranged and _G.UWU_BRD_AutoSimConfig or _G.UWU_RPR_AutoSimConfig\nlocal U=_G.UWU_AutoSimUI\nlocal changed=false\nlocal function help(text)\n if GUI:IsItemHovered() then GUI:SetTooltip(text) end\nend\nlocal function check(label,t,key,text)\n local value=GUI:Checkbox(label,t[key])\n help(text)\n if value~=t[key] then t[key]=value;changed=true end\nend\nlocal function slider(label,t,key,lo,hi,format,text)\n GUI:Text(label)\n GUI:PushItemWidth(400)\n local value=GUI:SliderFloat(\"##UWU_\"..key,t[key],lo,hi,format or \"%.1f\",1)\n help(text)\n GUI:PopItemWidth()\n if value~=t[key] then t[key]=value;changed=true end\nend\nlocal function section(key,label)\n GUI:SetNextTreeNodeOpened(U[key],GUI.SetCond_Always)\n local opened\n if label==\"General\" then\n  opened=U[key]\n  GUI:PushStyleVar(GUI.StyleVar_ButtonTextAlign,0,0.5)\n  if GUI:Button((opened and \"- \" or \"+ \")..label..\"##UWU_AutoSim_\"..key,GUI:GetContentRegionAvailWidth(),0) then opened=not opened end\n  GUI:PopStyleVar()\n  if opened then GUI:TreePush(\"UWU_AutoSim_\"..key) end\n else\n  opened=GUI:CollapsingHeader(label,0)\n  if opened then GUI:TreePush(label) end\n end\n if opened~=U[key] then U[key]=opened;changed=true end\n return opened\nend\nGUI:PushStyleColor(GUI.Col_WindowBg,0.055,0.07,0.09,0.97)\nGUI:SetNextWindowSize(440,0,GUI.SetCond_Always)\nlocal visible=GUI:Begin(\"UWU LPDU Settings\",true,GUI.WindowFlags_NoCollapse+GUI.WindowFlags_AlwaysAutoResize)\nif visible then\n GUI:Text(\"UWU | AutoSim\")\n GUI:Text(\"Saved automatically. Forecast changes apply next pull.\")\n if section(\"general\",\"General\") then\n  check(\"Forecast party raid buffs\",C,\"raidBuffs\",\"Predict combined party burst strength. Actual active buffs remain handled by the ACR. Applies to your active role plan.\")\n  if C.raidBuffs then slider(\"Expected party damage gain (%)\",C,\"buffGain\",0,40,\"%.2f\",\"A planning estimate for your composition, not a real boss modifier.\") end\n  check(\"Prioritize healer / Suppression gaols\",C,\"priorityGaols\",\"Applies a 1.10 planning weight to the first five seconds of the relevant Titan and Ultima gaols. Applies next pull.\")\n  check(\"Customize phase kill estimates\",G,\"adjustKillTimes\",\"Reveal Garuda, Ifrit and Titan phase estimates below. Native encounter events still correct timing.\")\n  check(\"Add slower-group timing\",G,\"slowerGroup\",\"Reveal extra seconds under each phase. Added to the role plan next pull; mechanic movement windows are not stretched.\")\n  if job==25 or job==27 or job==35 or job==42 or ranged then check(\"Fake melee: skip eruption-bait route\",G,\"fakeMelee\",\"Only use if your assignment does not bait ranged eruptions. Removes those planned movement windows; does not change roster, targeting or draws.\") end\n  if job==25 then check(\"Automatic Manaward (BLM)\",B,\"manaward\",\"Requests Manaward for Aerial Blast, Titan opening and Ultima opening using the existing schedule.\") end\n  GUI:TreePop()\n end\n if section(\"garuda\",\"P1 - Garuda\") then\n  check(\"Target stack-ready Spiny Plume\",G,\"spinyTarget\",\"All AutoSim roles: focuses Spiny when its tank has two Thermal Low stacks, then returns to Garuda. Preserves the existing DoT restrictions.\")\n  if G.spinyTarget then check(\"Allow guarded one-stack early focus\",G,\"spinyEarly\",\"Optional. Requires a known Spiny time-to-kill exceeding the estimated time to the next Cyclone plus two seconds. Unknown estimates wait for two stacks.\") end\n  if G.adjustKillTimes then slider(\"Garuda phase duration (seconds)\",G,\"garudaSeconds\",90,240,\"%.0f\",\"Seconds from pull; default 130. Applies next pull.\") end\n  if G.slowerGroup then slider(\"Garuda extra seconds\",G,\"garudaExtra\",0,90,\"%.1f\",\"Extra time added to the next pull's Garuda forecast.\") end\n  if job==25 then\n   check(\"Hold Triplecast near phase end (BLM)\",B,\"holdTripleLateGaruda\",\"Holds all Triplecast uses near the predicted end, releasing when Ifrit becomes targetable.\")\n   if B.holdTripleLateGaruda then slider(\"Triplecast hold before end (seconds)\",B,\"tripleHoldLeadSeconds\",0,20,\"%.1f\",\"Default eight seconds before the configured Garuda end. Applies next pull.\") end\n  end\n  GUI:TreePop()\n end\n if section(\"ifrit\",\"P2 - Ifrit\") then\n  check(\"Automatic nail targeting (all DPS)\",B,\"nails\",\"Uses each role's established softening and kill-order logic. The same toggle now applies to caster and physical DPS; changes apply next pull.\")\n  if B.nails then\n   check(\"Allow final close-pair AoE\",B,\"closePair\",\"Allows the final close pair after the first two kills. Preserves melee's existing softening cleave. Applies next pull.\")\n   if caster then\n    check(\"Avoid short-lived nails (casters/healers)\",G,\"casterNailLifetime\",\"During ordered kills, stay on Ifrit if the next nail cannot survive the cast budget. Does not skip to a later nail or alter the 40% softening step.\")\n    if G.casterNailLifetime then slider(\"Nail cast budget (seconds)\",G,\"casterNailCastBudget\",0.5,5,\"%.1f\",\"Estimated future cast time including a margin. Default 2.8 seconds; unknown time-to-kill retains normal targeting.\") end\n   end\n  end\n  local immune=G.vulcanKnockback and (not caster or B.surecast)\n  local nextImmune=GUI:Checkbox(\"Vulcan Burst knockback immunity\",immune)\n  help(\"Surecast for casters/healers, Arm's Length for physical jobs. Titan Upheaval and Aetheric Boom must still be ridden.\")\n  if nextImmune~=immune then G.vulcanKnockback=nextImmune;if caster then B.surecast=nextImmune end;changed=true end\n  if G.adjustKillTimes then slider(\"Ifrit phase duration (seconds)\",G,\"ifritSeconds\",70,240,\"%.0f\",\"Shared phase estimate; default 100 seconds. Applies next pull.\") end\n  if G.slowerGroup then slider(\"Ifrit extra seconds\",G,\"ifritExtra\",0,90,\"%.1f\",\"Extra time added to the next pull's Ifrit forecast.\") end\n  GUI:TreePop()\n end\n if section(\"titan\",\"P3 - Titan\") then\n  GUI:Text(\"Ride Upheaval; triple-gaol AoE protection is automatic.\")\n  if G.adjustKillTimes then slider(\"Titan phase duration (seconds)\",G,\"titanSeconds\",80,240,\"%.0f\",\"Shared phase estimate; default 125 seconds. Applies next pull.\") end\n  if G.slowerGroup then slider(\"Titan extra seconds\",G,\"titanExtra\",0,90,\"%.1f\",\"Extra time added to the next pull's Titan forecast.\") end\n  GUI:TreePop()\n end\n if section(\"ultima\",\"P4 - Ultima / Lahabrea\") then\n  check(\"Reserve cooldowns during Lahabrea\",C,\"poolLaha\",\"Uses the existing 0.01 planning weight while continuing ordinary damage and gauge building. Applies next pull.\")\n  if caster then\n   check(\"Adapt final primal movement\",B,\"roulette\",\"Forecast all possible orders, then narrow movement when Prepare casts reveal the actual sequence.\")\n   if job==25 or job==27 or job==35 or job==42 then check(\"Automatic caster LB3\",G,\"autoCasterLB\",\"For caster jobs with Beyond Limits: waits for full gauge and six bits, then aims at arena centre.\") end\n  elseif melee then\n   check(\"Automatic melee LB3\",G,\"autoMeleeLB\",\"For the melee Beyond Limits owner: targets Lahabrea and waits for the buff and full gauge.\")\n   GUI:Text(\"Lahabrea LB forecast\")\n   GUI:PushItemWidth(400)\n   local value=GUI:Combo(\"##UWU_lbWho\",C.lbWho,{\"Me\",\"Other melee\"},2)\n   help(\"Only forecasts the personal LB action lock. The automatic-LB toggle above controls casting.\")\n   GUI:PopItemWidth()\n   if value~=C.lbWho then C.lbWho=value;changed=true end\n  end\n  if G.slowerGroup then slider(\"Final kill extra seconds\",G,\"killExtra\",0,90,\"%.1f\",\"Extra time added to the next pull's final kill forecast.\") end\n  GUI:TreePop()\n end\nend\nGUI:End()\nGUI:PopStyleColor(1)\nif changed then _G.UWU_AutoSimSettingsStore.save() end\n",
							conditions = 
							{
								
								{
									"7b044559-8281-fe14-b124-c2f273d30292",
									true,
								},
							},
							name = "Draw shared role options",
							uuid = "85f9ce9b-31ec-ca4e-b4de-2e4dc48629d5",
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
							name = "UWU territory",
							uuid = "7b044559-8281-fe14-b124-c2f273d30292",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Settings",
				eventType = 13,
				loop = true,
				mechanicTime = 9,
				name = "[UWU] Settings - general and phases",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 1400,
				timerStartOffset = -9,
				uuid = "524a2bee-8542-0493-b977-046f36db747c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Garuda plumes",
				uuid = "2bafe0a6-0c3f-574d-b66a-ae83c38c7e9b",
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
							actionLua = "-- Profile-owned settings, loaded before any GUI or gameplay consumer.\nif not _G.UWU_AutoSimSettingsStore then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[UWU-AutoSim.lua]]\n local saved={}\n if FileExists(path) then\n  local loaded=FileLoad(path)\n  if type(loaded)==\"table\" then saved=loaded end\n end\n local specs={\n  UWU_AutoSimSettings={autoCasterLB=true,autoMeleeLB=true,vulcanKnockback=true,casterNailLifetime=true,casterNailCastBudget=2.8,spinyTarget=true,spinyEarly=false,adjustKillTimes=false,garudaSeconds=130,ifritSeconds=100,titanSeconds=125,fakeMelee=false,slowerGroup=false,garudaExtra=0,ifritExtra=0,titanExtra=0,killExtra=0},\n  UWU_BLM_AutoSimConfig={poolLaha=true,priorityGaols=true,roulette=true,raidBuffs=true,buffGain=17,nails=true,closePair=true,surecast=true,manaward=true,holdTripleLateGaruda=true,garudaEndSeconds=133.235,ifritEndAfterFirstDisappear=40.328,tripleHoldLeadSeconds=8,burstWeight20261029=true},\n  UWU_BRD_AutoSimConfig={poolLaha=true,priorityGaols=true,raidBuffs=false,buffGain=16.87},\n  UWU_RPR_AutoSimConfig={lbWho=2,poolLaha=true,priorityGaols=true,raidBuffs=false,buffGain=17,burstWeight20261029=true},\n  UWU_AutoSimUI={general=true,garuda=false,ifrit=false,titan=false,ultima=false}\n }\n local ranges={buffGain={0,40},lbWho={1,2},casterNailCastBudget={0.5,5},garudaSeconds={90,240},ifritSeconds={70,240},titanSeconds={80,240},garudaExtra={0,90},ifritExtra={0,90},titanExtra={0,90},killExtra={0,90},tripleHoldLeadSeconds={0,20},garudaEndSeconds={110,180},ifritEndAfterFirstDisappear={20,90}}\n for name,defaults in pairs(specs) do\n  local current=_G[name]\n  local disk=type(saved[name])==\"table\" and saved[name] or {}\n  local values={}\n  for key,default in pairs(defaults) do\n   -- Disk wins on a fresh Lua session even if an older initializer already ran.\n   local value=disk[key]\n   if value==nil and current then value=current[key] end\n   if type(value)~=type(default) then value=default end\n   local range=ranges[key]\n   if range and (value~=value or value<range[1] or value>range[2] or (key==\"lbWho\" and value%1~=0)) then value=default end\n   values[key]=value\n  end\n  _G[name]=values\n end\n local store={}\n function store.save()\n  local out={}\n  for name,defaults in pairs(specs) do\n   out[name]={}\n   for key in pairs(defaults) do out[name][key]=_G[name][key] end\n  end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,out)\n end\n _G.UWU_AutoSimSettingsStore=store\n store.save()\nend\n\nlocal C=_G.UWU_AutoSimSettings or {}\nlocal S=data.uwuSpinyTarget\nif not S then S={};data.uwuSpinyTarget=S end\nlocal function log(reason,desired,stacks,life)\n local current=TensorCore.mGetTarget()\n local key=reason..\":\"..tostring(desired)..\":\"..tostring(stacks)..\":\"..tostring(current and current.id)\n if S.logKey==key then return end\n S.logKey=key\n TensorCore.timelineLogToFile(\"[UWU Spiny target] reason=\"..reason..\" desired=\"..tostring(desired)..\" actual=\"..tostring(current and current.id)..\" stacks=\"..tostring(stacks)..\" ttk=\"..tostring(life)..\" early=\"..tostring(C.spinyEarly==true)..\"\\n\")\nend\nlocal p=TensorCore.mGetPlayer()\nif not p or not p.alive or not data.uwuAutoSim then self.used=true;return end\nlocal target=TensorCore.mGetTarget()\nlocal plume\nfor _,e in pairs(TensorCore.getEntityGroupList(\"ContentID\",{contentid=2091}) or {}) do\n if e.alive and e.targetable and e.attackable and e.hp.current>0 then plume=e;break end\nend\nlocal desired,reason,stacks,life\nif C.spinyTarget~=false and plume then\n local b=TensorCore.getBuff(plume.targetid,1525)\n stacks=b and b.stacks or 0\n local ready=stacks>=2\n life=TensorCore.calcTimeToKill(plume.id)\n if not ready and C.spinyEarly==true and stacks==1 and S.firstHit and S.hitID==plume.id then\n  local untilSecond=math.max(0,9.5-(Now()-S.firstHit)/1000)\n  ready=type(life)==\"number\" and life>untilSecond+2\n end\n if ready then desired=plume;reason=stacks>=2 and \"two stacks ready\" or \"one stack: lifetime margin\"\n else reason=\"waiting stacks / lifetime margin\" end\n if TensorCore.isMelee(p) and desired and TensorCore.getDistance2d(p.pos,desired.pos)>3+p.hitradius+desired.hitradius then desired=nil;reason=\"outside melee range\" end\n if desired then S.plumeID=plume.id end\nelse reason=C.spinyTarget==false and \"disabled\" or \"no live Spiny\" end\n-- Release only a target owned by this controller; never replace a manual target here.\nif not desired and S.plumeID and target and target.id==S.plumeID then\n for _,e in pairs(TensorCore.getEntityGroupList(\"ContentID\",{contentid=1644}) or {}) do\n  if e.alive and e.targetable and e.attackable and e.hp.current>0 then desired=e;break end\n end\nend\n-- A ready, reachable Spiny is attackable while Garuda is away.\nlocal plan=data.uwuAutoSim\nlocal usable=plume and desired and desired.id==plume.id\nif usable and not plan.spinyUptime then\n plan.spinyUptime={TensorCore.API.TensorACR.getAutoSimTime()}\n plan.publish()\n TensorCore.timelineLogToFile(\"[UWU Spiny uptime] opened; id=\"..plume.id..\" stacks=\"..tostring(stacks)..\" reason=\"..reason..\"\\n\")\nelseif not usable and plan.spinyUptime and not plan.spinyUptime[2] then\n plan.spinyUptime[2]=TensorCore.API.TensorACR.getAutoSimTime()\n plan.publish()\n TensorCore.timelineLogToFile(\"[UWU Spiny uptime] closed; reason=\"..reason..\"\\n\")\nend\nif S.requestedID and target and target.id==S.requestedID then\n TensorCore.timelineLogToFile(\"[UWU Spiny target] confirmed=\"..target.id..\"\\n\")\n S.requestedID=nil\nend\nlocal ci=p.castinginfo\nif ci.castingid>0 or ci.channelingid>0 then log(reason..\"; active cast hold\",desired and desired.id,stacks,life);self.used=true;return end\nlog(reason,desired and desired.id,stacks,life)\nif desired and (not target or target.id~=desired.id) then\n Player:SetTarget(desired.id)\n S.requestedID=desired.id\n TensorCore.timelineLogToFile(\"[UWU Spiny target] request sent=\"..desired.id..\" cid=\"..desired.contentid..\" reason=\"..reason..\"\\n\")\nend\nself.used=true\n",
							conditions = 
							{
								
								{
									"fb95e821-9b46-9925-955c-e54551bb7593",
									true,
								},
							},
							name = "Spiny target",
							uuid = "aeb8a929-3671-046e-ba08-0f942ef79e8e",
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
							name = "UWU",
							uuid = "fb95e821-9b46-9925-955c-e54551bb7593",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Garuda plumes",
				loop = true,
				mechanicTime = 9,
				name = "[UWU] Spiny - target",
				throttleTime = 500,
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 165,
				uuid = "e4e928de-b984-d875-9642-e1ab68e7156c",
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
							actionLua = "local S=data.uwuSpinyTarget or {};data.uwuSpinyTarget=S\nif S.hitID~=eventArgs.entityID then S.hitID=eventArgs.entityID;S.firstHit=Now() end\nself.used=true",
							conditions = 
							{
								
								{
									"caac6e4b-b3e7-d924-a9ef-3cdc7b046455",
									true,
								},
								
								{
									"a9da0638-96cc-6b62-91ff-2a5f99f28a9d",
									true,
								},
								
								{
									"b50ae656-2b1f-fb94-b420-825a8350639c",
									true,
								},
							},
							name = "Spiny cyclone",
							uuid = "300aa283-9a56-54e4-8391-f65a22753cf2",
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
							name = "UWU",
							uuid = "caac6e4b-b3e7-d924-a9ef-3cdc7b046455",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							eventArgOptionType = 2,
							eventEntityContentID = 2091,
							name = "Spiny Plume",
							uuid = "a9da0638-96cc-6b62-91ff-2a5f99f28a9d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							eventArgOptionType = 3,
							eventArgType = 2,
							name = "Cyclone",
							spellIDList = 
							{
								11077,
							},
							uuid = "b50ae656-2b1f-fb94-b420-825a8350639c",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Garuda plumes",
				eventType = 2,
				loop = true,
				mechanicTime = 9,
				name = "[UWU] Spiny - cyclone",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 165,
				uuid = "ced24c23-fb38-8ad5-80f0-a7fdd54ba0a1",
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
				name = "AutoSim",
				uuid = "0aea64e7-b9e0-d7c4-989d-057d69642e92",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Encounter events",
				uuid = "02ee8c46-741b-2873-a9b9-7cbfb5513755",
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
									"68185be9-41ca-1351-9d02-0867481df43d",
									true,
								},
								
								{
									"8eeb4298-6910-a8de-9f1e-8924da7bca3b",
									true,
								},
								
								{
									"34f289be-9e36-a0d3-b46b-78e89f14560b",
									true,
								},
								
								{
									"74e1fa68-863f-b66c-8603-e2ad4b1c3083",
									true,
								},
								
								{
									"b9e431a9-bdc4-e090-a9ca-fb7e90e09a1d",
									true,
								},
							},
							endIfUsed = true,
							name = "Target - Garuda",
							setTarget = true,
							targetContentID = 1644,
							targetType = "ContentID",
							uuid = "c018d996-950e-2d9f-8691-6dcae7b51a9c",
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
							name = "UWU territory",
							uuid = "68185be9-41ca-1351-9d02-0867481df43d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.uwuAutoSim~=nil",
							name = "Encounter initialized",
							uuid = "8eeb4298-6910-a8de-9f1e-8924da7bca3b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "34f289be-9e36-a0d3-b46b-78e89f14560b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local t=TensorCore.mGetTarget()\nreturn t==nil or not t.alive or not t.targetable",
							name = "No living hostile target",
							uuid = "74e1fa68-863f-b66c-8603-e2ad4b1c3083",
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
							uuid = "b9e431a9-bdc4-e090-a9ca-fb7e90e09a1d",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Encounter events",
				loop = true,
				mechanicTime = 34,
				name = "[UWU] [Target] Garuda Reacquire",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 8,
				timerEndOffset = 147,
				uuid = "bd185e78-059d-ca13-b930-830eb9e2e616",
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
				name = "AutoSim",
				uuid = "145466a7-08bf-6eca-a06c-b2fc598e78c4",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Encounter events",
				uuid = "7f9c257c-b799-1735-a450-a8c71548bc30",
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
									"de2cb462-b656-add1-a5c4-d5bf482c2dfc",
									true,
								},
								
								{
									"2c55c7e5-fcfd-8913-bb46-b5b6443f269a",
									true,
								},
								
								{
									"aa9f3704-f968-be92-b901-8baaf8a49eca",
									true,
								},
								
								{
									"d02bcf45-1762-e9ea-b650-148fccaac952",
									true,
								},
								
								{
									"d0078058-014c-f026-bab1-8d1328d00e3b",
									true,
								},
							},
							name = "Target Garuda",
							setTarget = true,
							targetType = "Event Entity",
							uuid = "37b973c4-ead5-feeb-8ef9-a72da4243d4b",
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
							name = "UWU territory",
							uuid = "de2cb462-b656-add1-a5c4-d5bf482c2dfc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.uwuAutoSim~=nil",
							name = "Encounter initialized",
							uuid = "2c55c7e5-fcfd-8913-bb46-b5b6443f269a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "aa9f3704-f968-be92-b901-8baaf8a49eca",
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
							uuid = "d0078058-014c-f026-bab1-8d1328d00e3b",
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
							uuid = "d02bcf45-1762-e9ea-b650-148fccaac952",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Encounter events",
				eventType = 26,
				loop = true,
				mechanicTime = 39,
				name = "[UWU] [Target] Garuda - Acquire",
				timeRange = true,
				timelineIndex = 10,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "7ecfd607-2c4c-991e-b305-351e7d2ba360",
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
				name = "AutoSim",
				uuid = "7278b161-65a2-2146-aa4c-54d2bee594d2",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Abilities",
				uuid = "55e64506-5129-8a85-9ba6-bfa0146e2e54",
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
									"82cac681-0f21-996a-9651-84c4f0416405",
									true,
								},
								
								{
									"9ddbf814-78ab-b3fb-b6ec-6fa3ba6f7430",
									true,
								},
								
								{
									"f030327a-a85d-74b5-ab6a-8dff8c420022",
									true,
								},
								
								{
									"29686643-df85-5156-94c1-8322519b8f51",
									true,
								},
							},
							gVar = "ACR_TensorNuke4_Hotbar_Manaward",
							name = "BLM - ACR",
							uuid = "16d7d69a-9b89-e6e0-8689-8973c69ee345",
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
							name = "UWU territory",
							uuid = "82cac681-0f21-996a-9651-84c4f0416405",
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
							},
							name = "Supported jobs: BLM",
							uuid = "9ddbf814-78ab-b3fb-b6ec-6fa3ba6f7430",
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
							uuid = "f030327a-a85d-74b5-ab6a-8dff8c420022",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- Profile-owned settings, loaded before any GUI or gameplay consumer.\nif not _G.UWU_AutoSimSettingsStore then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[UWU-AutoSim.lua]]\n local saved={}\n if FileExists(path) then\n  local loaded=FileLoad(path)\n  if type(loaded)==\"table\" then saved=loaded end\n end\n local specs={\n  UWU_AutoSimSettings={autoCasterLB=true,autoMeleeLB=true,vulcanKnockback=true,casterNailLifetime=true,casterNailCastBudget=2.8,spinyTarget=true,spinyEarly=false,adjustKillTimes=false,garudaSeconds=130,ifritSeconds=100,titanSeconds=125,fakeMelee=false,slowerGroup=false,garudaExtra=0,ifritExtra=0,titanExtra=0,killExtra=0},\n  UWU_BLM_AutoSimConfig={poolLaha=true,priorityGaols=true,roulette=true,raidBuffs=true,buffGain=17,nails=true,closePair=true,surecast=true,manaward=true,holdTripleLateGaruda=true,garudaEndSeconds=133.235,ifritEndAfterFirstDisappear=40.328,tripleHoldLeadSeconds=8,burstWeight20261029=true},\n  UWU_BRD_AutoSimConfig={poolLaha=true,priorityGaols=true,raidBuffs=false,buffGain=16.87},\n  UWU_RPR_AutoSimConfig={lbWho=2,poolLaha=true,priorityGaols=true,raidBuffs=false,buffGain=17,burstWeight20261029=true},\n  UWU_AutoSimUI={general=true,garuda=false,ifrit=false,titan=false,ultima=false}\n }\n local ranges={buffGain={0,40},lbWho={1,2},casterNailCastBudget={0.5,5},garudaSeconds={90,240},ifritSeconds={70,240},titanSeconds={80,240},garudaExtra={0,90},ifritExtra={0,90},titanExtra={0,90},killExtra={0,90},tripleHoldLeadSeconds={0,20},garudaEndSeconds={110,180},ifritEndAfterFirstDisappear={20,90}}\n for name,defaults in pairs(specs) do\n  local current=_G[name]\n  local disk=type(saved[name])==\"table\" and saved[name] or {}\n  local values={}\n  for key,default in pairs(defaults) do\n   -- Disk wins on a fresh Lua session even if an older initializer already ran.\n   local value=disk[key]\n   if value==nil and current then value=current[key] end\n   if type(value)~=type(default) then value=default end\n   local range=ranges[key]\n   if range and (value~=value or value<range[1] or value>range[2] or (key==\"lbWho\" and value%1~=0)) then value=default end\n   values[key]=value\n  end\n  _G[name]=values\n end\n local store={}\n function store.save()\n  local out={}\n  for name,defaults in pairs(specs) do\n   out[name]={}\n   for key in pairs(defaults) do out[name][key]=_G[name][key] end\n  end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,out)\n end\n _G.UWU_AutoSimSettingsStore=store\n store.save()\nend\n\nlocal C=_G.UWU_BLM_AutoSimConfig\nreturn C==nil or C.manaward==true",
							name = "option enabled",
							uuid = "29686643-df85-5156-94c1-8322519b8f51",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Abilities",
				mechanicTime = 77,
				name = "[UWU] Manaward Aerial Blast",
				timeRange = true,
				timelineIndex = 17,
				timerEndOffset = -1,
				timerStartOffset = -3,
				uuid = "eb4f7795-b792-4e3f-8fa6-fb6de54f1215",
				version = 2,
			},
		},
	},
	[25] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "2a4d7fcc-4ae7-bf1a-9df2-cd72f539d67d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Job options",
				uuid = "7019dc56-d63b-70a6-80c0-862b52009ce1",
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
							actionLua = "-- Profile-owned settings, loaded before any GUI or gameplay consumer.\nif not _G.UWU_AutoSimSettingsStore then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[UWU-AutoSim.lua]]\n local saved={}\n if FileExists(path) then\n  local loaded=FileLoad(path)\n  if type(loaded)==\"table\" then saved=loaded end\n end\n local specs={\n  UWU_AutoSimSettings={autoCasterLB=true,autoMeleeLB=true,vulcanKnockback=true,casterNailLifetime=true,casterNailCastBudget=2.8,spinyTarget=true,spinyEarly=false,adjustKillTimes=false,garudaSeconds=130,ifritSeconds=100,titanSeconds=125,fakeMelee=false,slowerGroup=false,garudaExtra=0,ifritExtra=0,titanExtra=0,killExtra=0},\n  UWU_BLM_AutoSimConfig={poolLaha=true,priorityGaols=true,roulette=true,raidBuffs=true,buffGain=17,nails=true,closePair=true,surecast=true,manaward=true,holdTripleLateGaruda=true,garudaEndSeconds=133.235,ifritEndAfterFirstDisappear=40.328,tripleHoldLeadSeconds=8,burstWeight20261029=true},\n  UWU_BRD_AutoSimConfig={poolLaha=true,priorityGaols=true,raidBuffs=false,buffGain=16.87},\n  UWU_RPR_AutoSimConfig={lbWho=2,poolLaha=true,priorityGaols=true,raidBuffs=false,buffGain=17,burstWeight20261029=true},\n  UWU_AutoSimUI={general=true,garuda=false,ifrit=false,titan=false,ultima=false}\n }\n local ranges={buffGain={0,40},lbWho={1,2},casterNailCastBudget={0.5,5},garudaSeconds={90,240},ifritSeconds={70,240},titanSeconds={80,240},garudaExtra={0,90},ifritExtra={0,90},titanExtra={0,90},killExtra={0,90},tripleHoldLeadSeconds={0,20},garudaEndSeconds={110,180},ifritEndAfterFirstDisappear={20,90}}\n for name,defaults in pairs(specs) do\n  local current=_G[name]\n  local disk=type(saved[name])==\"table\" and saved[name] or {}\n  local values={}\n  for key,default in pairs(defaults) do\n   -- Disk wins on a fresh Lua session even if an older initializer already ran.\n   local value=disk[key]\n   if value==nil and current then value=current[key] end\n   if type(value)~=type(default) then value=default end\n   local range=ranges[key]\n   if range and (value~=value or value<range[1] or value>range[2] or (key==\"lbWho\" and value%1~=0)) then value=default end\n   values[key]=value\n  end\n  _G[name]=values\n end\n local store={}\n function store.save()\n  local out={}\n  for name,defaults in pairs(specs) do\n   out[name]={}\n   for key in pairs(defaults) do out[name][key]=_G[name][key] end\n  end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,out)\n end\n _G.UWU_AutoSimSettingsStore=store\n store.save()\nend\n\nlocal S=data.uwuAutoSim\nif not S then return end\nlocal C=_G.UWU_BLM_AutoSimConfig\nlocal enabled=not C or C.holdTripleLateGaruda~=false\nlocal T=_G.UWU_BLM_TemporaryState\nif T and T.tripleHold then\n if not enabled then\n  TensorCore.API.TensorACR.holdActionUntil(7421,Now())\n  T.tripleHold=nil\n  S.tripleHoldFinished=true\n  self.used=true\n end\n return\nend\nif not enabled or S.tripleHoldFinished then return end\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nif not S.observed.p1end and now<S.time(\"p1end\")-(S.tripleHoldLeadSeconds or 8) then return end\n-- Do not acquire a late hold if Ifrit is already targetable.\nfor _,boss in pairs(TensorCore.getEntityGroupList(\"ContentID\",{contentid=1185}) or {}) do\n if boss.alive and boss.targetable then S.tripleHoldFinished=true;return end\nend\nT=T or {};_G.UWU_BLM_TemporaryState=T\n-- Bounded fail-safe; the native targetability event releases earlier.\nif TensorCore.API.TensorACR.holdActionUntil(7421,Now()+90000) then\n T.tripleHold=true\n self.used=true\nend",
							conditions = 
							{
								
								{
									"cb86d5c9-021c-1f91-a7ae-3102f1054b0d",
									true,
								},
								
								{
									"60c6cc58-50e9-b07e-8e56-1b2715b97ecf",
									true,
								},
								
								{
									"89620716-b686-5fa9-833e-3b0a9f84c240",
									true,
								},
							},
							name = "BLM - [BLM UWU] Hold Triplecast for Ifrit opener",
							uuid = "e16044fe-4779-40f3-9cc9-3a25339d3d52",
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
							name = "UWU territory",
							uuid = "cb86d5c9-021c-1f91-a7ae-3102f1054b0d",
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
							},
							name = "Supported jobs: BLM",
							uuid = "60c6cc58-50e9-b07e-8e56-1b2715b97ecf",
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
							uuid = "89620716-b686-5fa9-833e-3b0a9f84c240",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Job options",
				loop = true,
				mechanicTime = 122,
				name = "[UWU] Hold Triplecast for Ifrit opener",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = 190,
				timerStartOffset = -2,
				uuid = "5ddd9cec-959b-cd7a-87d2-b21fb558d928",
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
				name = "AutoSim",
				uuid = "ffe69510-6c66-51b3-9e34-753b2bd177f3",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Encounter events",
				uuid = "05e3d938-d874-f66c-8e3c-f377a312359e",
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
							actionLua = "-- Shared UWU event handler: uses the active plan, with no job restriction.\nlocal S=data.uwuAutoSim\nS.resync(\"p1end\",TensorCore.API.TensorACR.getAutoSimTime())\nself.used=true",
							conditions = 
							{
								
								{
									"6b79b646-daf3-29a9-936a-51c41b1e2daa",
									true,
								},
								
								{
									"86fc9d9e-a8e4-d321-acf7-b05cb6d2b357",
									true,
								},
								
								{
									"9eda6955-dece-faa8-b3ac-5e3e94bf55ba",
									true,
								},
								
								{
									"aa0605ef-f521-c125-87e6-b53875ca04e9",
									true,
								},
								
								{
									"0d9bdc2d-dd1c-005d-9098-9cc12decbf40",
									true,
								},
								
								{
									"2c43cf9c-da3d-c8fb-a1f9-76b1f64af541",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "544c35e0-4d36-5400-b873-d4750482fac9",
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
							name = "UWU territory",
							uuid = "6b79b646-daf3-29a9-936a-51c41b1e2daa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.uwuAutoSim~=nil",
							name = "Encounter initialized",
							uuid = "86fc9d9e-a8e4-d321-acf7-b05cb6d2b357",
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
							uuid = "9eda6955-dece-faa8-b3ac-5e3e94bf55ba",
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
							uuid = "aa0605ef-f521-c125-87e6-b53875ca04e9",
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
							uuid = "0d9bdc2d-dd1c-005d-9098-9cc12decbf40",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuAutoSim\nreturn S~=nil and S.observed.p1end==nil",
							name = "anchor pending",
							uuid = "2c43cf9c-da3d-c8fb-a1f9-76b1f64af541",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Encounter events",
				eventType = 26,
				loop = true,
				mechanicTime = 176,
				name = "[UWU] Resync p1end",
				timeRange = true,
				timelineIndex = 34,
				timerEndOffset = 25,
				timerStartOffset = -76,
				uuid = "a468ca60-3442-a1be-a8e1-c2700dbc64d6",
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
				name = "AutoSim",
				uuid = "d02228e5-a85b-b527-b8e5-f2e4c19f8248",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Job options",
				uuid = "dcffff2b-115b-7841-8c25-ff17317e4831",
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
							actionLua = "local ownedLey=_G.UWU_BLM_TemporaryState\nif ownedLey and ownedLey.leyHold then\n TensorCore.API.TensorACR.holdActionUntil(3573,Now())\n ownedLey.leyHold=nil\nend\nlocal S=data.uwuAutoSim\nS.ifritStarted=true;S.ifritID=eventArgs.entityID\nTensorCore.API.TensorACR.holdActionUntil(846,Now())\nself.used=true",
							conditions = 
							{
								
								{
									"e6ced728-8c50-a217-aadf-b1467e263e36",
									true,
								},
								
								{
									"f945dffd-d926-0d08-9e82-d89eb4eff13e",
									true,
								},
								
								{
									"ffbd1e9f-f71d-1a4d-a80f-1343b74a06f8",
									true,
								},
								
								{
									"56c0463d-d6e7-1b92-b931-ec4c375e8778",
									true,
								},
								
								{
									"04b35c11-8d24-01f9-81a8-79a137302c40",
									true,
								},
								
								{
									"c1be58f0-490d-618b-bf41-a1e5541bebc1",
									true,
								},
							},
							name = "BLM - Apply owned UWU state",
							uuid = "d60b4326-f6dc-cdd3-aa17-24cdc39e7b5c",
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
							name = "UWU territory",
							uuid = "e6ced728-8c50-a217-aadf-b1467e263e36",
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
							},
							name = "Supported jobs: BLM",
							uuid = "f945dffd-d926-0d08-9e82-d89eb4eff13e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuAutoSim\nreturn S~=nil and not S.ifritStarted",
							name = "reserved",
							uuid = "c1be58f0-490d-618b-bf41-a1e5541bebc1",
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
							uuid = "ffbd1e9f-f71d-1a4d-a80f-1343b74a06f8",
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
							uuid = "56c0463d-d6e7-1b92-b931-ec4c375e8778",
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
							uuid = "04b35c11-8d24-01f9-81a8-79a137302c40",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Job options",
				eventType = 26,
				mechanicTime = 300,
				name = "[UWU] Release reserved Ifrit potion",
				timeRange = true,
				timelineIndex = 36,
				timerEndOffset = 15,
				timerStartOffset = -10,
				uuid = "7844045e-2e06-c3c6-91f2-7553507ed632",
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
							actionLua = "local T=_G.UWU_BLM_TemporaryState\nif T and T.tripleHold then\n TensorCore.API.TensorACR.holdActionUntil(7421,Now())\n T.tripleHold=nil\nend\nlocal S=data.uwuAutoSim\nif S then S.tripleHoldFinished=true end\nself.used=true",
							conditions = 
							{
								
								{
									"e8a2dd70-a256-a634-a94c-58358b790bd2",
									true,
								},
								
								{
									"c3222a0a-303d-3a0a-ae31-126a58fd3928",
									true,
								},
								
								{
									"83286a0c-e332-d997-94d5-4bf2248cf96a",
									true,
								},
								
								{
									"d4fd6e46-14f4-9014-ac52-a3629d3db27c",
									true,
								},
								
								{
									"a334aa68-e081-823b-b110-7f495d01f28d",
									true,
								},
							},
							name = "BLM - [BLM UWU] Release Triplecast at Ifrit",
							uuid = "6a2b513e-7b2a-5efc-80a3-08cdf507daa8",
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
							name = "UWU territory",
							uuid = "e8a2dd70-a256-a634-a94c-58358b790bd2",
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
							},
							name = "Supported jobs: BLM",
							uuid = "c3222a0a-303d-3a0a-ae31-126a58fd3928",
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
							uuid = "83286a0c-e332-d997-94d5-4bf2248cf96a",
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
							uuid = "d4fd6e46-14f4-9014-ac52-a3629d3db27c",
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
							uuid = "a334aa68-e081-823b-b110-7f495d01f28d",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Job options",
				eventType = 26,
				loop = true,
				mechanicTime = 300,
				name = "[UWU] Release Triplecast at Ifrit",
				timeRange = true,
				timelineIndex = 36,
				timerEndOffset = 15,
				timerStartOffset = -15,
				uuid = "5f1e38a7-f8d9-cb76-96d7-bf9b6480bbce",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Encounter events",
				uuid = "f18b80fd-fe63-8adc-bfc5-188c7995621e",
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
									"87624473-40ba-ba36-8855-1cb808c7a77d",
									true,
								},
								
								{
									"90dc8568-6e84-f2f6-8f95-b0a86577112e",
									true,
								},
								
								{
									"405bf0a9-98eb-744e-9532-9635b03e9d6a",
									true,
								},
								
								{
									"45ba29df-6a6a-eb9f-9990-477c9ce5c7a3",
									true,
								},
								
								{
									"a4acb23f-ba98-3c76-bc8c-cf78fee90c00",
									true,
								},
							},
							endIfUsed = true,
							name = "Target - Ifrit",
							setTarget = true,
							targetContentID = 1185,
							targetType = "ContentID",
							uuid = "1d9a1a9e-7b4f-d0e3-b337-5410fad292e9",
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
							name = "UWU territory",
							uuid = "87624473-40ba-ba36-8855-1cb808c7a77d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.uwuAutoSim~=nil",
							name = "Encounter initialized",
							uuid = "90dc8568-6e84-f2f6-8f95-b0a86577112e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "405bf0a9-98eb-744e-9532-9635b03e9d6a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local t=TensorCore.mGetTarget()\nreturn t==nil or not t.alive or not t.targetable",
							name = "No living hostile target",
							uuid = "45ba29df-6a6a-eb9f-9990-477c9ce5c7a3",
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
							uuid = "a4acb23f-ba98-3c76-bc8c-cf78fee90c00",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Encounter events",
				loop = true,
				mechanicTime = 300,
				name = "[UWU] [Target] Ifrit Reacquire",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 36,
				timerEndOffset = 153,
				uuid = "5c545486-d7af-d866-add1-1659f8a6af7e",
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
									"2990038c-be2b-79c2-9b07-f056dd0338a7",
									true,
								},
								
								{
									"081986c3-b98b-03fb-9fca-092c0ff8389c",
									true,
								},
								
								{
									"4bd18e8e-4b10-dc8b-aab4-1ceb020d0000",
									true,
								},
								
								{
									"24009ca6-6221-9dfa-84d1-b523a575a5a6",
									true,
								},
								
								{
									"6c1857f6-f8b3-ed26-b0a8-3590ce8de188",
									true,
								},
							},
							name = "Target Ifrit",
							setTarget = true,
							targetType = "Event Entity",
							uuid = "7e8eae8f-2991-72b8-bee9-0e23a015b230",
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
							name = "UWU territory",
							uuid = "2990038c-be2b-79c2-9b07-f056dd0338a7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.uwuAutoSim~=nil",
							name = "Encounter initialized",
							uuid = "081986c3-b98b-03fb-9fca-092c0ff8389c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "4bd18e8e-4b10-dc8b-aab4-1ceb020d0000",
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
							uuid = "6c1857f6-f8b3-ed26-b0a8-3590ce8de188",
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
							uuid = "24009ca6-6221-9dfa-84d1-b523a575a5a6",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Encounter events",
				eventType = 26,
				loop = true,
				mechanicTime = 300,
				name = "[UWU] [Target] Ifrit - Acquire",
				timeRange = true,
				timelineIndex = 36,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "9a70e8fc-acdf-f887-a6c5-4aac9378ed99",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "DoT forecasts",
				uuid = "c93ceced-5bf5-693d-8e5b-3cc96a1bfc94",
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
							actionLua = "local S=data.uwuAutoSim\nif not S or not S.publishDots then return end\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal id=eventArgs.entityID\nlocal gaps=S.dotGaps[id] or {};S.dotGaps[id]=gaps\nlocal last=gaps[#gaps]\nif eventArgs.isTargetable then\n if last and not last[2] then last[2]=now end\nelse\n if eventArgs.entityContentID==1185 then S.ifritLastUntargetable=now end\n if not last or last[2] then gaps[#gaps+1]={now} end\nend\nif id==S.dotEntityID then S.publishDots() end\nself.used=true",
							conditions = 
							{
								
								{
									"94d7209c-f9e8-75a3-bb7d-c7e0fc491e5b",
									true,
								},
								
								{
									"9a64ed50-b31c-2b33-b156-a01b105b9115",
									true,
								},
								
								{
									"230b4471-70a7-f848-8a1e-006a97e79492",
									true,
								},
								
								{
									"3f20d37d-2853-da22-b808-a68f1c8d3017",
									true,
								},
							},
							name = "BLM - Record native DoT gap",
							uuid = "42a674b9-1631-b9c4-b22b-792214c5ea6b",
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
							name = "UWU territory",
							uuid = "94d7209c-f9e8-75a3-bb7d-c7e0fc491e5b",
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
							},
							name = "BLM Thunder only",
							uuid = "9a64ed50-b31c-2b33-b156-a01b105b9115",
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
							uuid = "230b4471-70a7-f848-8a1e-006a97e79492",
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
							uuid = "3f20d37d-2853-da22-b808-a68f1c8d3017",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/DoT forecasts",
				eventType = 26,
				loop = true,
				mechanicTime = 300,
				name = "[UWU] Ifrit Thunder availability",
				timeRange = true,
				timelineIndex = 36,
				timerEndOffset = 270,
				timerStartOffset = -20,
				uuid = "2c0f002f-e334-c125-86c3-1d68f3e259f5",
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
				name = "AutoSim",
				uuid = "43f816bc-ceea-ac9c-94ac-3ff096f96c23",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Abilities",
				uuid = "086af6ee-7ce2-cb3b-8d8a-f87cbb3b9fc7",
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
									"bc2a86d7-b4a6-3aee-b040-28447fdb822e",
									true,
								},
								
								{
									"048709f6-dd9e-6b4d-bea6-afb69e46969a",
									true,
								},
								
								{
									"bb9dcdbb-c43f-cac8-89ce-4fb56ce423a5",
									true,
								},
								
								{
									"8deb6cec-79de-d4c0-bff7-396c9f6b00ad",
									true,
								},
								
								{
									"c1eda9cc-ff29-8ec0-93ff-1fc4357db3c6",
									true,
								},
							},
							gVar = "ACR_TensorNuke4_Hotbar_Surecast",
							name = "BLM - ACR",
							uuid = "54889894-fde0-6e1c-9869-d304f3b7eb14",
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
							name = "UWU territory",
							uuid = "bc2a86d7-b4a6-3aee-b040-28447fdb822e",
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
							name = "Caster or healer",
							uuid = "048709f6-dd9e-6b4d-bea6-afb69e46969a",
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
							uuid = "bb9dcdbb-c43f-cac8-89ce-4fb56ce423a5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- Profile-owned settings, loaded before any GUI or gameplay consumer.\nif not _G.UWU_AutoSimSettingsStore then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[UWU-AutoSim.lua]]\n local saved={}\n if FileExists(path) then\n  local loaded=FileLoad(path)\n  if type(loaded)==\"table\" then saved=loaded end\n end\n local specs={\n  UWU_AutoSimSettings={autoCasterLB=true,autoMeleeLB=true,vulcanKnockback=true,casterNailLifetime=true,casterNailCastBudget=2.8,spinyTarget=true,spinyEarly=false,adjustKillTimes=false,garudaSeconds=130,ifritSeconds=100,titanSeconds=125,fakeMelee=false,slowerGroup=false,garudaExtra=0,ifritExtra=0,titanExtra=0,killExtra=0},\n  UWU_BLM_AutoSimConfig={poolLaha=true,priorityGaols=true,roulette=true,raidBuffs=true,buffGain=17,nails=true,closePair=true,surecast=true,manaward=true,holdTripleLateGaruda=true,garudaEndSeconds=133.235,ifritEndAfterFirstDisappear=40.328,tripleHoldLeadSeconds=8,burstWeight20261029=true},\n  UWU_BRD_AutoSimConfig={poolLaha=true,priorityGaols=true,raidBuffs=false,buffGain=16.87},\n  UWU_RPR_AutoSimConfig={lbWho=2,poolLaha=true,priorityGaols=true,raidBuffs=false,buffGain=17,burstWeight20261029=true},\n  UWU_AutoSimUI={general=true,garuda=false,ifrit=false,titan=false,ultima=false}\n }\n local ranges={buffGain={0,40},lbWho={1,2},casterNailCastBudget={0.5,5},garudaSeconds={90,240},ifritSeconds={70,240},titanSeconds={80,240},garudaExtra={0,90},ifritExtra={0,90},titanExtra={0,90},killExtra={0,90},tripleHoldLeadSeconds={0,20},garudaEndSeconds={110,180},ifritEndAfterFirstDisappear={20,90}}\n for name,defaults in pairs(specs) do\n  local current=_G[name]\n  local disk=type(saved[name])==\"table\" and saved[name] or {}\n  local values={}\n  for key,default in pairs(defaults) do\n   -- Disk wins on a fresh Lua session even if an older initializer already ran.\n   local value=disk[key]\n   if value==nil and current then value=current[key] end\n   if type(value)~=type(default) then value=default end\n   local range=ranges[key]\n   if range and (value~=value or value<range[1] or value>range[2] or (key==\"lbWho\" and value%1~=0)) then value=default end\n   values[key]=value\n  end\n  _G[name]=values\n end\n local store={}\n function store.save()\n  local out={}\n  for name,defaults in pairs(specs) do\n   out[name]={}\n   for key in pairs(defaults) do out[name][key]=_G[name][key] end\n  end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,out)\n end\n _G.UWU_AutoSimSettingsStore=store\n store.save()\nend\n\nlocal C=_G.UWU_BLM_AutoSimConfig\nreturn C==nil or C.surecast==true",
							name = "option enabled",
							uuid = "8deb6cec-79de-d4c0-bff7-396c9f6b00ad",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- Profile-owned settings, loaded before any GUI or gameplay consumer.\nif not _G.UWU_AutoSimSettingsStore then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[UWU-AutoSim.lua]]\n local saved={}\n if FileExists(path) then\n  local loaded=FileLoad(path)\n  if type(loaded)==\"table\" then saved=loaded end\n end\n local specs={\n  UWU_AutoSimSettings={autoCasterLB=true,autoMeleeLB=true,vulcanKnockback=true,casterNailLifetime=true,casterNailCastBudget=2.8,spinyTarget=true,spinyEarly=false,adjustKillTimes=false,garudaSeconds=130,ifritSeconds=100,titanSeconds=125,fakeMelee=false,slowerGroup=false,garudaExtra=0,ifritExtra=0,titanExtra=0,killExtra=0},\n  UWU_BLM_AutoSimConfig={poolLaha=true,priorityGaols=true,roulette=true,raidBuffs=true,buffGain=17,nails=true,closePair=true,surecast=true,manaward=true,holdTripleLateGaruda=true,garudaEndSeconds=133.235,ifritEndAfterFirstDisappear=40.328,tripleHoldLeadSeconds=8,burstWeight20261029=true},\n  UWU_BRD_AutoSimConfig={poolLaha=true,priorityGaols=true,raidBuffs=false,buffGain=16.87},\n  UWU_RPR_AutoSimConfig={lbWho=2,poolLaha=true,priorityGaols=true,raidBuffs=false,buffGain=17,burstWeight20261029=true},\n  UWU_AutoSimUI={general=true,garuda=false,ifrit=false,titan=false,ultima=false}\n }\n local ranges={buffGain={0,40},lbWho={1,2},casterNailCastBudget={0.5,5},garudaSeconds={90,240},ifritSeconds={70,240},titanSeconds={80,240},garudaExtra={0,90},ifritExtra={0,90},titanExtra={0,90},killExtra={0,90},tripleHoldLeadSeconds={0,20},garudaEndSeconds={110,180},ifritEndAfterFirstDisappear={20,90}}\n for name,defaults in pairs(specs) do\n  local current=_G[name]\n  local disk=type(saved[name])==\"table\" and saved[name] or {}\n  local values={}\n  for key,default in pairs(defaults) do\n   -- Disk wins on a fresh Lua session even if an older initializer already ran.\n   local value=disk[key]\n   if value==nil and current then value=current[key] end\n   if type(value)~=type(default) then value=default end\n   local range=ranges[key]\n   if range and (value~=value or value<range[1] or value>range[2] or (key==\"lbWho\" and value%1~=0)) then value=default end\n   values[key]=value\n  end\n  _G[name]=values\n end\n local store={}\n function store.save()\n  local out={}\n  for name,defaults in pairs(specs) do\n   out[name]={}\n   for key in pairs(defaults) do out[name][key]=_G[name][key] end\n  end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,out)\n end\n _G.UWU_AutoSimSettingsStore=store\n store.save()\nend\n\nreturn _G.UWU_AutoSimSettings==nil or _G.UWU_AutoSimSettings.vulcanKnockback~=false",
							name = "Shared option enabled",
							uuid = "c1eda9cc-ff29-8ec0-93ff-1fc4357db3c6",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Abilities",
				mechanicTime = 315,
				name = "[UWU] Surecast for Vulcan Burst",
				timeRange = true,
				timelineIndex = 39,
				timerEndOffset = 0.3,
				timerStartOffset = -5,
				uuid = "fee2e6e7-2831-c569-8603-6f2ef896a413",
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
									"90995f01-9ebd-84da-94d0-c9422d05f0b5",
									true,
								},
								
								{
									"718b79d2-1391-3314-8ef8-51d86b70421a",
									true,
								},
								
								{
									"ff26355c-d674-c8dd-b2d5-81bef617500b",
									true,
								},
								
								{
									"b3130eda-5d97-bce6-a261-97ee4aaba7de",
									true,
								},
							},
							gVar = "ACR_TensorReaper4_Hotbar_ArmsLength",
							name = "Request Arm's Length",
							uuid = "f84c01a0-ca01-9258-8c27-ce8196f84cd3",
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
							name = "UWU territory",
							uuid = "90995f01-9ebd-84da-94d0-c9422d05f0b5",
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
								23,
								31,
								38,
							},
							name = "Tank or physical DPS",
							uuid = "718b79d2-1391-3314-8ef8-51d86b70421a",
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
							uuid = "ff26355c-d674-c8dd-b2d5-81bef617500b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- Profile-owned settings, loaded before any GUI or gameplay consumer.\nif not _G.UWU_AutoSimSettingsStore then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[UWU-AutoSim.lua]]\n local saved={}\n if FileExists(path) then\n  local loaded=FileLoad(path)\n  if type(loaded)==\"table\" then saved=loaded end\n end\n local specs={\n  UWU_AutoSimSettings={autoCasterLB=true,autoMeleeLB=true,vulcanKnockback=true,casterNailLifetime=true,casterNailCastBudget=2.8,spinyTarget=true,spinyEarly=false,adjustKillTimes=false,garudaSeconds=130,ifritSeconds=100,titanSeconds=125,fakeMelee=false,slowerGroup=false,garudaExtra=0,ifritExtra=0,titanExtra=0,killExtra=0},\n  UWU_BLM_AutoSimConfig={poolLaha=true,priorityGaols=true,roulette=true,raidBuffs=true,buffGain=17,nails=true,closePair=true,surecast=true,manaward=true,holdTripleLateGaruda=true,garudaEndSeconds=133.235,ifritEndAfterFirstDisappear=40.328,tripleHoldLeadSeconds=8,burstWeight20261029=true},\n  UWU_BRD_AutoSimConfig={poolLaha=true,priorityGaols=true,raidBuffs=false,buffGain=16.87},\n  UWU_RPR_AutoSimConfig={lbWho=2,poolLaha=true,priorityGaols=true,raidBuffs=false,buffGain=17,burstWeight20261029=true},\n  UWU_AutoSimUI={general=true,garuda=false,ifrit=false,titan=false,ultima=false}\n }\n local ranges={buffGain={0,40},lbWho={1,2},casterNailCastBudget={0.5,5},garudaSeconds={90,240},ifritSeconds={70,240},titanSeconds={80,240},garudaExtra={0,90},ifritExtra={0,90},titanExtra={0,90},killExtra={0,90},tripleHoldLeadSeconds={0,20},garudaEndSeconds={110,180},ifritEndAfterFirstDisappear={20,90}}\n for name,defaults in pairs(specs) do\n  local current=_G[name]\n  local disk=type(saved[name])==\"table\" and saved[name] or {}\n  local values={}\n  for key,default in pairs(defaults) do\n   -- Disk wins on a fresh Lua session even if an older initializer already ran.\n   local value=disk[key]\n   if value==nil and current then value=current[key] end\n   if type(value)~=type(default) then value=default end\n   local range=ranges[key]\n   if range and (value~=value or value<range[1] or value>range[2] or (key==\"lbWho\" and value%1~=0)) then value=default end\n   values[key]=value\n  end\n  _G[name]=values\n end\n local store={}\n function store.save()\n  local out={}\n  for name,defaults in pairs(specs) do\n   out[name]={}\n   for key in pairs(defaults) do out[name][key]=_G[name][key] end\n  end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,out)\n end\n _G.UWU_AutoSimSettingsStore=store\n store.save()\nend\n\nreturn _G.UWU_AutoSimSettings==nil or _G.UWU_AutoSimSettings.vulcanKnockback~=false",
							name = "Vulcan Burst immunity enabled",
							uuid = "b3130eda-5d97-bce6-a261-97ee4aaba7de",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Abilities",
				mechanicTime = 315,
				name = "[UWU] Arm's Length - Vulcan Burst",
				timeRange = true,
				timelineIndex = 39,
				timerEndOffset = 0.3,
				timerStartOffset = -5,
				uuid = "c98a6fb6-08d3-48c8-bef2-fdcbbe661da3",
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
				name = "AutoSim",
				uuid = "741f4a54-9797-8dd7-af7f-7cdc2ae37fd6",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Ifrit nails",
				uuid = "35476e52-9074-9540-9797-247f27b602cb",
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
							actionLua = "-- Profile-owned settings, loaded before any GUI or gameplay consumer.\nif not _G.UWU_AutoSimSettingsStore then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[UWU-AutoSim.lua]]\n local saved={}\n if FileExists(path) then\n  local loaded=FileLoad(path)\n  if type(loaded)==\"table\" then saved=loaded end\n end\n local specs={\n  UWU_AutoSimSettings={autoCasterLB=true,autoMeleeLB=true,vulcanKnockback=true,casterNailLifetime=true,casterNailCastBudget=2.8,spinyTarget=true,spinyEarly=false,adjustKillTimes=false,garudaSeconds=130,ifritSeconds=100,titanSeconds=125,fakeMelee=false,slowerGroup=false,garudaExtra=0,ifritExtra=0,titanExtra=0,killExtra=0},\n  UWU_BLM_AutoSimConfig={poolLaha=true,priorityGaols=true,roulette=true,raidBuffs=true,buffGain=17,nails=true,closePair=true,surecast=true,manaward=true,holdTripleLateGaruda=true,garudaEndSeconds=133.235,ifritEndAfterFirstDisappear=40.328,tripleHoldLeadSeconds=8,burstWeight20261029=true},\n  UWU_BRD_AutoSimConfig={poolLaha=true,priorityGaols=true,raidBuffs=false,buffGain=16.87},\n  UWU_RPR_AutoSimConfig={lbWho=2,poolLaha=true,priorityGaols=true,raidBuffs=false,buffGain=17,burstWeight20261029=true},\n  UWU_AutoSimUI={general=true,garuda=false,ifrit=false,titan=false,ultima=false}\n }\n local ranges={buffGain={0,40},lbWho={1,2},casterNailCastBudget={0.5,5},garudaSeconds={90,240},ifritSeconds={70,240},titanSeconds={80,240},garudaExtra={0,90},ifritExtra={0,90},titanExtra={0,90},killExtra={0,90},tripleHoldLeadSeconds={0,20},garudaEndSeconds={110,180},ifritEndAfterFirstDisappear={20,90}}\n for name,defaults in pairs(specs) do\n  local current=_G[name]\n  local disk=type(saved[name])==\"table\" and saved[name] or {}\n  local values={}\n  for key,default in pairs(defaults) do\n   -- Disk wins on a fresh Lua session even if an older initializer already ran.\n   local value=disk[key]\n   if value==nil and current then value=current[key] end\n   if type(value)~=type(default) then value=default end\n   local range=ranges[key]\n   if range and (value~=value or value<range[1] or value>range[2] or (key==\"lbWho\" and value%1~=0)) then value=default end\n   values[key]=value\n  end\n  _G[name]=values\n end\n local store={}\n function store.save()\n  local out={}\n  for name,defaults in pairs(specs) do\n   out[name]={}\n   for key in pairs(defaults) do out[name][key]=_G[name][key] end\n  end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,out)\n end\n _G.UWU_AutoSimSettingsStore=store\n store.save()\nend\n\nlocal function nailDiag(stage,N,desired,detail)\n local now=Now()\n local D=data.uwuBLMNailTrace\n if not D then D={};data.uwuBLMNailTrace=D end\n if D.at and now-D.at<1000 then return end\n D.at=now\n local p=TensorCore.mGetPlayer()\n local t=TensorCore.mGetTarget()\n local roster=AnyoneCore.Roster\n local slot=roster and roster.current() and roster.mySlot() or \"unavailable\"\n local ready=roster and roster.current() and roster.isReady() or false\n local sig={stage,tostring(slot),tostring(ready),tostring(desired),tostring(t and t.id),tostring(N and N.softenID),tostring(N and N.softened)}\n local rows={}\n local ids={};for id in pairs(N and N.ids or {}) do ids[#ids+1]=id end;table.sort(ids)\n for _,id in ipairs(ids) do\n  local e=TensorCore.mGetEntity(id)\n  local b=TensorCore.getBuff(id,1544)\n  local stacks=b and b.stacks or 0\n  local hp=e and e.hp.percent or -1\n  local state=tostring(id)..\":\"..tostring(e and e.alive)..\":\"..tostring(e and e.targetable)..\":\"..stacks..\":\"..tostring(N.awake[id])..\":\"..math.floor(hp/10)\n  sig[#sig+1]=state\n  rows[#rows+1]=string.format(\"id=%s alive=%s targetable=%s hp=%.1f stacks1544=%s awakeLatched=%s pos=%s\",id,tostring(e and e.alive),tostring(e and e.targetable),hp,stacks,tostring(N.awake[id]),e and string.format(\"%.2f,%.2f\",e.pos.x,e.pos.z) or \"missing\")\n end\n local key=table.concat(sig,\"|\")\n if D.key==key then return end\n D.key=key\n local cast=p and p.castinginfo\n local order={};for _,id in ipairs(N and N.order or {}) do order[#order+1]=tostring(id) end\n TensorCore.timelineLogToFile(\"[UWU nails v2 Caster] job=\"..tostring(Player.job)..\" stage=\"..stage..\" slot=\"..tostring(slot)..\" rosterReady=\"..tostring(ready)..\" soften=\"..tostring(N and N.softenID)..\" softened=\"..tostring(N and N.softened)..\" desired=\"..tostring(desired)..\" actual=\"..tostring(t and t.id)..\" actualCID=\"..tostring(t and t.contentid)..\" cast=\"..tostring(cast and cast.castingid)..\" channel=\"..tostring(cast and cast.channelingid)..\" order=\"..table.concat(order,\",\")..\" detail=\"..tostring(detail)..\" nails=[\"..table.concat(rows,\"; \")..\"]\\n\")\nend\nlocal N=data.uwuBLMNails\nlocal S=data.uwuAutoSim\nlocal p=TensorCore.mGetPlayer()\nif not p or not p.alive or not S then nailDiag(\"blocked\",N,nil,\"player unavailable/dead or AutoSim not configured\");return end\nlocal confirmedTarget=TensorCore.mGetTarget()\nif N.requestedID and confirmedTarget and confirmedTarget.id==N.requestedID then\n TensorCore.timelineLogToFile(\"[UWU caster nails] confirmed=\"..N.requestedID..\"\\n\")\n N.requestedID=nil\nend\nif not N.dotBlacklistDone then\nlocal dotAPI=TensorCore.API.TensorACR\nlocal dotEntry=dotAPI.addBlacklistEntry(1186,\"UWU Infernal Nail\")\nif not dotEntry.enabled or dotEntry.allowIfTarget then\n dotEntry.enabled=true\n dotEntry.allowIfTarget=false\n dotAPI.saveDotBlacklist()\nend\n N.dotBlacklistDone=true\nend\nlocal T=_G.UWU_BLM_TemporaryState or {}\n_G.UWU_BLM_TemporaryState=T\nif not T.options then\n T.options={}\n for _,toggle in ipairs(TensorCore.API.TensorACR.getQuickToggles() or {}) do\n  if string.match(toggle.var,\"_AOE$\") or string.match(toggle.var,\"_SmartAOE$\") or string.match(toggle.var,\"_SmartDoT$\") then\n   if type(_G[toggle.var])==\"boolean\" then T.options[toggle.var]=_G[toggle.var] end\n  end\n end\nend\nlocal entities,count,alive,dead={},0,0,0\nfor id in pairs(N.ids) do\n count=count+1\n local e=TensorCore.mGetEntity(id)\n if e and (not e.alive or e.hp.current<=0) then dead=dead+1 end\n if e and e.alive and e.targetable and e.hp.current>0 then\n  N.activationSeen=true\n  entities[id]=e;alive=alive+1\n  local buff=TensorCore.getBuff(id,1544)\n  if buff and buff.stacks>=2 then N.awake[id]=true end\n end\nend\nif count<4 then nailDiag(\"collecting\",N,nil,\"captured fewer than four nails\");return end\nif alive==0 and (not N.activationSeen or dead<count) then\n nailDiag(\"waiting activation\",N,nil,\"captured=\"..count..\" dead=\"..dead..\" activationSeen=\"..tostring(N.activationSeen))\n return\nend\nif alive==0 then\n nailDiag(\"complete\",N,nil,\"all captured nails confirmed dead after activation\")\n for k,v in pairs(T.options) do _G[k]=v end\n T.options=nil;N.done=true;self.used=true;return\nend\nif not N.order then\n if alive~=4 then nailDiag(\"waiting geometry\",N,nil,\"need four live nails to lock order\");return end\n local list={};for id,e in pairs(entities) do list[#list+1]=e end\n local best=math.huge;local ni,nj\n for i=1,3 do for j=i+1,4 do\n  local a,b=list[i].pos,list[j].pos\n  local d=(a.x-b.x)^2+(a.z-b.z)^2\n  if d<best then best=d;ni=i;nj=j end\n end end\n local north,south={},{}\n for i,e in ipairs(list) do\n  if i==ni or i==nj then north[#north+1]=e else south[#south+1]=e end\n end\n local nx=(north[1].pos.x+north[2].pos.x-south[1].pos.x-south[2].pos.x)/2\n local nz=(north[1].pos.z+north[2].pos.z-south[1].pos.z-south[2].pos.z)/2\n local len=math.sqrt(nx*nx+nz*nz)\n if len<1 then nailDiag(\"invalid geometry\",N,nil,\"pair axis shorter than one yalm\");return end\n local ex,ez=-nz/len,nx/len\n local function eastFirst(pair)\n  local a,b=pair[1].pos,pair[2].pos\n  if (a.x-b.x)*ex+(a.z-b.z)*ez<0 then pair[1],pair[2]=pair[2],pair[1] end\n end\n eastFirst(north);eastFirst(south)\n N.order={south[1].id,south[2].id,north[1].id,north[2].id}\n local distance=math.huge\n for id,e in pairs(entities) do\n  local d=(e.pos.x-p.pos.x)^2+(e.pos.z-p.pos.z)^2\n  if d<distance then distance=d;N.softenID=id end\n end\nend\nlocal nearest=entities[N.softenID]\nlocal cancelledSofteningCast=false\nif not N.softened and nearest and nearest.hp.percent<=40 then\n N.softened=true\n local cast=p.castinginfo\n if cast.castingid>0 or cast.channelingid>0 then\n  for _,id in ipairs(cast.castingtargets) do\n   if id==N.softenID then\n    -- One threshold transition only: never cancel ordered-kill casts.\n    ActionList:StopCasting()\n    cancelledSofteningCast=true\n    break\n   end\n  end\n end\nelseif not nearest then\n N.softened=true\nend\nlocal awakened=0\nfor id in pairs(N.ids) do if N.awake[id] then awakened=awakened+1 end end\nlocal kill=N.softened and awakened==4\nlocal desired\nif not N.softened then desired=N.softenID\nelseif not kill then\n -- Resolve the live boss; the forecast does not store an ifritID.\n for _,boss in pairs(TensorCore.getEntityGroupList(\"ContentID\",{contentid=1185}) or {}) do\n  if boss.alive and boss.targetable then desired=boss.id;break end\n end\nelse\n for _,id in ipairs(N.order) do if entities[id] then desired=id;break end end\nend\n-- TTK is an estimate for a future cast, never permission to reorder nails.\nlocal targetConfig=_G.UWU_AutoSimSettings\nlocal lifetimeGuard=not targetConfig or targetConfig.casterNailLifetime~=false\nlocal budget=targetConfig and targetConfig.casterNailCastBudget or 2.8\nlocal lifetimeFallback=false\nlocal lifetime\nif kill and desired and lifetimeGuard then\n lifetime=TensorCore.calcTimeToKill(desired)\n if type(lifetime)==\"number\" and lifetime>=0 and lifetime<budget then\n  for _,boss in pairs(TensorCore.getEntityGroupList(\"ContentID\",{contentid=1185}) or {}) do\n   if boss.alive and boss.targetable and boss.attackable and boss.hp.current>0 then\n    desired=boss.id;lifetimeFallback=true;break\n   end\n  end\n end\nend\nlocal close=not lifetimeFallback and kill and S.cfg.closePair and not entities[N.order[1]] and not entities[N.order[2]]\nlocal smart=awakened==4\nlocal changed=false\nlocal function option(k,value)\n if _G[k]~=value then _G[k]=value;changed=true end\nend\n-- Apply the active ACR's actual variables, rather than BLM-prefixed globals.\nfor key,value in pairs(T.options) do\n local allow=string.match(key,\"_SmartDoT$\") and smart or close\n option(key,allow and value or false)\nend\n-- At the softening threshold, switch immediately after cancelling that nail cast.\nif desired and (cancelledSofteningCast or (p.castinginfo.castingid<=0 and p.castinginfo.channelingid<=0)) then\n local e=entities[desired] or TensorCore.mGetEntity(desired)\n local target=TensorCore.mGetTarget()\n if e and e.targetable and (not target or target.id~=desired) then\n  Player:SetTarget(desired);changed=true;N.requestedID=desired\n  TensorCore.timelineLogToFile(\"[UWU caster nails] request sent=\"..desired..\" previous=\"..tostring(target and target.id)..\"\\n\")\n end\nend\nif changed then self.used=true end\n\nlocal diagStage=lifetimeFallback and \"cast budget: stay on Ifrit\" or not N.softened and \"softening\" or (kill and \"ordered kill\" or \"waiting awakening\")\nnailDiag(diagStage,N,desired,\"assignment=nearest at order lock; switch=\"..tostring(cancelledSofteningCast or (p.castinginfo.castingid<=0 and p.castinginfo.channelingid<=0))..\" nailTTK=\"..tostring(lifetime)..\" castBudget=\"..tostring(budget)..\" lifetimeGuard=\"..tostring(lifetimeGuard)..\" closePair=\"..tostring(close)..\" smartDot=\"..tostring(smart))\n",
							conditions = 
							{
								
								{
									"c64d4be4-d5ac-86f1-b62c-c0130508afbc",
									true,
								},
								
								{
									"c61e7e90-816e-e8b5-b1c6-a5df7b2d2e4f",
									true,
								},
								
								{
									"3ac27a93-d689-6b0b-98cd-620b0f2a409c",
									true,
								},
								
								{
									"76e41539-af2b-a934-967e-8479ed7f92d0",
									true,
								},
							},
							name = "BLM - Apply owned UWU state",
							uuid = "00c75c01-2d82-4496-a78b-4f71393dbad1",
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
							name = "UWU territory",
							uuid = "c64d4be4-d5ac-86f1-b62c-c0130508afbc",
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
							},
							name = "Caster DPS nail plan",
							uuid = "c61e7e90-816e-e8b5-b1c6-a5df7b2d2e4f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local N=data.uwuBLMNails\nif not N then\n local now=Now()\n if not data.uwuBLMNailMissingLog or now-data.uwuBLMNailMissingLog>=5000 then\n  data.uwuBLMNailMissingLog=now\n  TensorCore.timelineLogToFile(\"[UWU nails v2 BLM] blocked: no captured nail state; inspect Capture Ifrit nails events\\n\")\n end\nend\nreturn N~=nil and not N.done",
							name = "nails active",
							uuid = "76e41539-af2b-a934-967e-8479ed7f92d0",
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
							uuid = "3ac27a93-d689-6b0b-98cd-620b0f2a409c",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Ifrit nails",
				loop = true,
				mechanicTime = 328,
				name = "[UWU] Nearest nail 40% then ordered kills",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 43,
				timerEndOffset = 67,
				timerStartOffset = -12,
				uuid = "79defffa-e080-d53c-bdeb-cb9ce33ac42a",
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
							actionLua = "local S=data.uwuAutoSim\nif not S or not S.cfg.nails then\n local reason=not S and \"AutoSim not configured\" or \"nail targeting disabled at pull setup\"\n if data.uwuNailCaptureReason~=reason then\n  data.uwuNailCaptureReason=reason\n  TensorCore.timelineLogToFile(\"[UWU nail capture] blocked: \"..reason..\"; entity=\"..tostring(eventArgs.entityID)..\" job=\"..tostring(Player.job)..\"\\n\")\n end\n self.used=true;return\nend\nif not S.nailsStartedAt then\n S.nailsStartedAt=TensorCore.API.TensorACR.getAutoSimTime()\n S.publish()\nend\nlocal N=data.uwuBLMNails\nif not N then N={ids={},awake={}};data.uwuBLMNails=N end\nif not N.ids[eventArgs.entityID] then\n N.ids[eventArgs.entityID]=true\n local count=0;for _ in pairs(N.ids) do count=count+1 end\n data.uwuNailCaptureReason=\"captured\"\n TensorCore.timelineLogToFile(\"[UWU nail capture] recorded=\"..eventArgs.entityID..\" total=\"..count..\" planRole=\"..tostring(S.planRole)..\" enabled=\"..tostring(S.cfg.nails)..\"\\n\")\nend\nself.used=true",
							conditions = 
							{
								
								{
									"c53a0f6f-6e66-3168-acab-22c374c077c9",
									true,
								},
								
								{
									"8ed7fb3b-7191-2fb5-a05b-c2641b1be267",
									true,
								},
								
								{
									"4e51e973-40da-4cb1-b369-7fdccd5b0410",
									true,
								},
								
								{
									"86c94e82-eb04-de21-8c39-c996c20becde",
									true,
								},
							},
							name = "BLM - Apply owned UWU state",
							uuid = "1876a9ac-135f-edeb-b264-31cb2e5ab780",
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
							name = "UWU territory",
							uuid = "c53a0f6f-6e66-3168-acab-22c374c077c9",
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
							},
							name = "Caster DPS nail plan",
							uuid = "8ed7fb3b-7191-2fb5-a05b-c2641b1be267",
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
							uuid = "4e51e973-40da-4cb1-b369-7fdccd5b0410",
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
							uuid = "86c94e82-eb04-de21-8c39-c996c20becde",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Ifrit nails",
				eventType = 5,
				loop = true,
				mechanicTime = 328,
				name = "[UWU] Capture Ifrit nails",
				timeRange = true,
				timelineIndex = 43,
				timerEndOffset = 65,
				timerStartOffset = -15,
				uuid = "02b4a34c-b0f0-d66a-bd39-6d8b5faf0ac9",
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
				displayPath = "AutoSim/Ifrit nails",
				execute = "if Player.job~=20 and Player.job~=22 and Player.job~=30 and Player.job~=34 and Player.job~=39 and Player.job~=41 and Player.job~=23 and Player.job~=31 and Player.job~=38 then return end\nif Player.localmapid~=777 then return end\nlocal function nailDiag(stage,N,desired,detail)\n local now=Now()\n local D=data.uwuPhysicalNailTrace\n if not D then D={};data.uwuPhysicalNailTrace=D end\n if D.at and now-D.at<1000 then return end\n D.at=now\n local p=TensorCore.mGetPlayer()\n local t=TensorCore.mGetTarget()\n local roster=AnyoneCore.Roster\n local slot=roster and roster.current() and roster.mySlot() or \"unavailable\"\n local ready=roster and roster.current() and roster.isReady() or false\n local sig={stage,tostring(slot),tostring(ready),tostring(desired),tostring(t and t.id),tostring(N and N.softenID),tostring(N and N.softened)}\n local rows={}\n local ids={};for id in pairs(N and N.ids or {}) do ids[#ids+1]=id end;table.sort(ids)\n for _,id in ipairs(ids) do\n  local e=TensorCore.mGetEntity(id)\n  local b=TensorCore.getBuff(id,1544)\n  local stacks=b and b.stacks or 0\n  local hp=e and e.hp.percent or -1\n  local state=tostring(id)..\":\"..tostring(e and e.alive)..\":\"..tostring(e and e.targetable)..\":\"..stacks..\":\"..tostring(N.awake[id])..\":\"..math.floor(hp/10)\n  sig[#sig+1]=state\n  rows[#rows+1]=string.format(\"id=%s alive=%s targetable=%s hp=%.1f stacks1544=%s awakeLatched=%s pos=%s\",id,tostring(e and e.alive),tostring(e and e.targetable),hp,stacks,tostring(N.awake[id]),e and string.format(\"%.2f,%.2f\",e.pos.x,e.pos.z) or \"missing\")\n end\n local key=table.concat(sig,\"|\")\n if D.key==key then return end\n D.key=key\n local cast=p and p.castinginfo\n local order={};for _,id in ipairs(N and N.order or {}) do order[#order+1]=tostring(id) end\n TensorCore.timelineLogToFile(\"[UWU nails v2 Physical] job=\"..tostring(Player.job)..\" stage=\"..stage..\" slot=\"..tostring(slot)..\" rosterReady=\"..tostring(ready)..\" soften=\"..tostring(N and N.softenID)..\" softened=\"..tostring(N and N.softened)..\" desired=\"..tostring(desired)..\" actual=\"..tostring(t and t.id)..\" actualCID=\"..tostring(t and t.contentid)..\" cast=\"..tostring(cast and cast.castingid)..\" channel=\"..tostring(cast and cast.channelingid)..\" order=\"..table.concat(order,\",\")..\" detail=\"..tostring(detail)..\" nails=[\"..table.concat(rows,\"; \")..\"]\\n\")\nend\nlocal p=TensorCore.mGetPlayer()\nif not p or not p.alive then nailDiag(\"blocked\",nil,nil,\"player missing/dead\");return end\nlocal roster=AnyoneCore.Roster\nlocal role\nlocal blocked\nif not roster or not roster.current() then blocked=\"waiting for roster\"\nelseif not roster.isReady() then blocked=\"waiting for ready roster\"\nelse\n role=roster.mySlot()\n if role~=\"R1\" and role~=\"R2\" and role~=\"M1\" and role~=\"M2\" then blocked=\"unsupported or missing slot: \"..tostring(role) end\nend\nif blocked then\n nailDiag(\"blocked\",data.uwuOwnNails,nil,blocked)\n if data.uwuPhysicalNailDiagnostic~=blocked then\n  data.uwuPhysicalNailDiagnostic=blocked\n  TensorCore.timelineLogToFile(\"[UWU physical nails] \"..blocked..\"\\n\")\n end\n return\nend\nlocal N=data.uwuOwnNails\nlocal api=TensorCore.API.TensorACR\nlocal function restore()\n if N and N.options then for k,v in pairs(N.options) do _G[k]=v end;N.options=nil end\nend\nif not N then N={ids={},awake={}};data.uwuOwnNails=N end\nlocal confirmedTarget=TensorCore.mGetTarget()\nif N.requestedID and confirmedTarget and confirmedTarget.id==N.requestedID then\n TensorCore.timelineLogToFile(\"[UWU physical nails] confirmed=\"..N.requestedID..\"\\n\")\n N.requestedID=nil\nend\nif N.done then return end\nlocal entities,count,alive={},0,0\nfor _,e in pairs(TensorCore.getEntityGroupList(\"ContentID\",{contentid=1186}) or {}) do\n if e.alive and e.targetable then N.ids[e.id]=true;entities[e.id]=e;alive=alive+1 end\nend\nfor id in pairs(N.ids) do\n count=count+1\n local buff=TensorCore.getBuff(id,1544)\n if buff and buff.stacks>=2 then N.awake[id]=true end\nend\nlocal S=data.uwuAutoSim\nif count>0 and S and not S.nailsStartedAt then\n S.nailsStartedAt=api.getAutoSimTime()\n S.publish()\nend\nif count<4 then\n nailDiag(\"collecting\",N,nil,\"fewer than four nails\")\n local reason=\"waiting for four nails: \"..count\n if data.uwuPhysicalNailDiagnostic~=reason then\n  data.uwuPhysicalNailDiagnostic=reason\n  TensorCore.timelineLogToFile(\"[UWU physical nails] \"..reason..\"\\n\")\n end\n return\nend\nif alive==0 then\n nailDiag(\"complete\",N,nil,\"no nails alive/targetable\")\n if N.options then for k,v in pairs(N.options) do _G[k]=v end;N.options=nil end\n N.done=true;return\nend\nif not N.options then\n N.options={}\n for _,toggle in ipairs(api.getQuickToggles() or {}) do\n  if string.match(toggle.var,\"_AOE$\") or string.match(toggle.var,\"_SmartAOE$\") then\n   if type(_G[toggle.var])==\"boolean\" then N.options[toggle.var]=_G[toggle.var] end\n  end\n end\nend\nif not N.order then\n if alive~=4 then nailDiag(\"waiting geometry\",N,nil,\"need four live nails to lock order\");return end\n local list={};for id,e in pairs(entities) do list[#list+1]=e end\n local best=math.huge;local ni,nj\n for i=1,3 do for j=i+1,4 do\n  local a,b=list[i].pos,list[j].pos\n  local d=(a.x-b.x)^2+(a.z-b.z)^2\n  if d<best then best=d;ni=i;nj=j end\n end end\n local north,south={},{}\n for i,e in ipairs(list) do\n  if i==ni or i==nj then north[#north+1]=e else south[#south+1]=e end\n end\n local nx=(north[1].pos.x+north[2].pos.x-south[1].pos.x-south[2].pos.x)/2\n local nz=(north[1].pos.z+north[2].pos.z-south[1].pos.z-south[2].pos.z)/2\n local len=math.sqrt(nx*nx+nz*nz)\n if len<1 then nailDiag(\"invalid geometry\",N,nil,\"pair axis shorter than one yalm\");return end\n local ex,ez=-nz/len,nx/len\n local function eastFirst(pair)\n  local a,b=pair[1].pos,pair[2].pos\n  if (a.x-b.x)*ex+(a.z-b.z)*ez<0 then pair[1],pair[2]=pair[2],pair[1] end\n end\n eastFirst(north);eastFirst(south)\n N.order={south[1].id,south[2].id,north[1].id,north[2].id}\n local slot=roster.mySlot()\n if slot==\"R2\" then N.softenID=N.order[1]\n elseif slot==\"R1\" then N.softenID=N.order[2]\n else\n  local a,b=entities[N.order[3]],entities[N.order[4]]\n  N.softenID=TensorCore.getDistance2d(p.pos,a.pos)<=TensorCore.getDistance2d(p.pos,b.pos) and a.id or b.id\n end\nend\nlocal nail=entities[N.softenID]\nlocal reached=nail and nail.hp.percent<=40\nif role==\"M1\" or role==\"M2\" then\n for i=3,4 do local e=entities[N.order[i]];if e and e.hp.percent<=40 then reached=true end end\nend\nif not N.softened and (reached or not nail) then\n N.softened=true\n local cast=p.castinginfo\n if cast.castingid>0 or cast.channelingid>0 then\n  for _,id in ipairs(cast.castingtargets) do\n   if id==N.softenID then ActionList:StopCasting();break end\n  end\n end\nend\nlocal awakened=0\nfor id in pairs(N.ids) do if N.awake[id] then awakened=awakened+1 end end\nlocal kill=N.softened and awakened==4\nlocal desired\nif not N.softened then desired=N.softenID\nelseif kill then for _,id in ipairs(N.order) do if entities[id] then desired=id;break end end\nelse for _,e in pairs(TensorCore.getEntityGroupList(\"ContentID\",{contentid=1185}) or {}) do desired=e.id;break end end\n-- Only transitions are logged: no per-pulse HP/position dump.\nlocal stage=(not N.softened and \"soften\" or (kill and \"ordered kill\" or \"wait for awakening\"))\nlocal reason=stage..\"; slot=\"..role..\"; soften=\"..tostring(N.softenID)..\"; awake=\"..awakened..\"; desired=\"..tostring(desired)\nif data.uwuPhysicalNailDiagnostic~=reason then\n data.uwuPhysicalNailDiagnostic=reason\n local current=TensorCore.mGetTarget()\n local hp=nail and nail.hp.percent\n TensorCore.timelineLogToFile(\"[UWU physical nails] \"..reason..\"; current=\"..tostring(current and current.id)..\"; softenHP=\"..tostring(hp)..\"\\n\")\nend\nlocal close=kill and not entities[N.order[1]] and not entities[N.order[2]]\nlocal meleeSoftening=(role==\"M1\" or role==\"M2\") and not N.softened\nlocal aoe=meleeSoftening or close\nfor k in pairs(N.options) do _G[k]=aoe end\nif desired then\n local target=TensorCore.mGetTarget()\n if not target or target.id~=desired then\n  Player:SetTarget(desired);N.requestedID=desired\n  TensorCore.timelineLogToFile(\"[UWU physical nails] request sent=\"..desired..\" previous=\"..tostring(target and target.id)..\"\\n\")\n end\nend\n\nnailDiag(stage,N,desired,\"assignment=roster; meleeReachedEitherClose=\"..tostring(reached)..\" aoe=\"..tostring(aoe))\n",
				executeType = 2,
				loop = true,
				mechanicTime = 328,
				name = "[UWU] Physical DPS nails - role softening and kill order",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 43,
				timerEndOffset = 67,
				timerStartOffset = -12,
				uuid = "b9841222-13c6-2e8b-99ef-a780df7a1a73",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Retired duplicates",
				uuid = "572bdd88-30df-ce89-8d6e-a06b5f839e7a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Setup and cleanup",
				uuid = "aa291649-354b-fb62-afda-8148da6040dd",
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
				displayPath = "AutoSim/Setup and cleanup",
				eventType = 9,
				execute = "if Player.localmapid~=777 then return end\nlocal N=data.uwuOwnNails\nif N and N.options then for k,v in pairs(N.options) do _G[k]=v end;N.options=nil end\nif N then N.done=true end\nself.used=true",
				executeType = 2,
				mechanicTime = 328,
				name = "[UWU] Nails - Restore targeting options on wipe",
				timeRange = true,
				timelineIndex = 43,
				timerEndOffset = 1400,
				timerStartOffset = -328,
				uuid = "f153be59-f3a9-3c0f-bd36-d9b87fba3366",
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
				displayPath = "AutoSim/Setup and cleanup",
				eventType = 11,
				execute = "local N=data.uwuOwnNails\nif N and N.options then for k,v in pairs(N.options) do _G[k]=v end;N.options=nil end\nif N then N.done=true end\nself.used=true",
				executeType = 2,
				mechanicTime = 328,
				name = "[UWU] Nails - Restore targeting options on map change",
				timeRange = true,
				timelineIndex = 43,
				timerEndOffset = 1400,
				timerStartOffset = -328,
				uuid = "101b57b8-113e-c0ba-b685-996c0fca4029",
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
				displayPath = "AutoSim/Setup and cleanup",
				execute = "if Player.localmapid~=777 then return end\nlocal N=data.uwuOwnNails\nif N and N.options then for k,v in pairs(N.options) do _G[k]=v end;N.options=nil end\nif N then N.done=true end\nself.used=true",
				executeType = 2,
				mechanicTime = 328,
				name = "[UWU] Nails - Restore targeting options after nails",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 43,
				timerEndOffset = 90,
				timerStartOffset = 68,
				uuid = "3b483f23-1889-59de-b0e7-9544a592a992",
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
				name = "AutoSim",
				uuid = "83964137-7747-a69f-8a05-913acdbd2965",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Encounter events",
				uuid = "0e1f1f55-7c5e-1a58-a119-aab342293d46",
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
							actionLua = "-- Shared UWU event handler: uses the active plan, with no job restriction.\nlocal S=data.uwuAutoSim\nS.resync(\"ifrit1\",TensorCore.API.TensorACR.getAutoSimTime())\nself.used=true",
							conditions = 
							{
								
								{
									"8903ed1c-ba4f-1515-99eb-18d52b30639f",
									true,
								},
								
								{
									"456600bb-484a-72ad-9fb9-bf8b16e6681c",
									true,
								},
								
								{
									"7f3f9221-0107-b4e8-a2fd-5143626ca30b",
									true,
								},
								
								{
									"341adf13-85f3-afd5-ab43-9aadf498d215",
									true,
								},
								
								{
									"3cbee90a-3a64-26c8-a420-128a937eee7f",
									true,
								},
								
								{
									"2698ba1a-8a20-88d2-b1e0-0f909a04b82a",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "9d8d75dd-ecef-c554-993a-345abe82b999",
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
							name = "UWU territory",
							uuid = "8903ed1c-ba4f-1515-99eb-18d52b30639f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.uwuAutoSim~=nil",
							name = "Encounter initialized",
							uuid = "456600bb-484a-72ad-9fb9-bf8b16e6681c",
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
							uuid = "7f3f9221-0107-b4e8-a2fd-5143626ca30b",
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
							uuid = "341adf13-85f3-afd5-ab43-9aadf498d215",
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
							uuid = "3cbee90a-3a64-26c8-a420-128a937eee7f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuAutoSim\nreturn S~=nil and S.observed.ifrit1==nil",
							name = "anchor pending",
							uuid = "2698ba1a-8a20-88d2-b1e0-0f909a04b82a",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Encounter events",
				eventType = 26,
				loop = true,
				mechanicTime = 361.5,
				name = "[UWU] Resync ifrit1",
				timeRange = true,
				timelineIndex = 50,
				timerEndOffset = 20,
				timerStartOffset = -15,
				uuid = "6fbd5c04-42cc-498c-9486-27630d62fb81",
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
				name = "AutoSim",
				uuid = "3648b0b5-00ef-f155-a6cc-115080711c44",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Encounter events",
				uuid = "abbceb36-5f69-1131-b4a2-d092a3699fbe",
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
							actionLua = "-- Shared UWU event handler: uses the active plan, with no job restriction.\nlocal S=data.uwuAutoSim\nlocal key=eventArgs.isTargetable and \"ifritDashBack\" or \"ifritDash\"\nS.resync(key,TensorCore.API.TensorACR.getAutoSimTime())\nself.used=true",
							conditions = 
							{
								
								{
									"07687a0a-9d8e-509d-99c9-169244cf9114",
									true,
								},
								
								{
									"73738e51-a3ae-8f23-b7dc-752db8b2ae50",
									true,
								},
								
								{
									"a9fcb792-7d2a-ffc0-96cd-7d5c800ab5fe",
									true,
								},
								
								{
									"380583ad-e5d6-520e-a607-7a96b2cecbda",
									true,
								},
								
								{
									"fbb0e685-807d-cc6b-872f-8d0b742d668a",
									true,
								},
							},
							name = "Resync distinct dash boundary",
							uuid = "9b877d4d-c043-5af3-a062-3ddcf783bb4e",
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
							name = "UWU territory",
							uuid = "07687a0a-9d8e-509d-99c9-169244cf9114",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.uwuAutoSim~=nil",
							name = "Encounter initialized",
							uuid = "73738e51-a3ae-8f23-b7dc-752db8b2ae50",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuAutoSim\nif not S or not S.anchors.ifritDash then return false end\nlocal key=eventArgs.isTargetable and \"ifritDashBack\" or \"ifritDash\"\nreturn S.observed[key]==nil",
							dequeueIfLuaFalse = true,
							name = "Dash anchor pending",
							uuid = "fbb0e685-807d-cc6b-872f-8d0b742d668a",
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
							uuid = "a9fcb792-7d2a-ffc0-96cd-7d5c800ab5fe",
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
							uuid = "380583ad-e5d6-520e-a607-7a96b2cecbda",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Encounter events",
				eventType = 26,
				loop = true,
				mechanicTime = 409,
				name = "[UWU] Resync Ifrit second dash and return",
				timeRange = true,
				timelineIndex = 63,
				timerEndOffset = 25,
				timerStartOffset = -15,
				uuid = "70375bd1-7877-7596-b79b-c735b215a002",
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
							actionLua = "-- Shared UWU event handler: uses the active plan, with no job restriction.\nlocal S=data.uwuAutoSim\nS.resync(\"p2end\",TensorCore.API.TensorACR.getAutoSimTime())\nself.used=true",
							conditions = 
							{
								
								{
									"ea85f9bc-0d07-152b-9406-eac72e65d524",
									true,
								},
								
								{
									"24c6555f-2ec1-e140-b778-83808272b024",
									true,
								},
								
								{
									"8dbc88a5-7151-e3d8-b13c-6116805dbd1b",
									true,
								},
								
								{
									"2562fb01-ca26-69a3-9cc2-60a8792a42e3",
									true,
								},
								
								{
									"10b4f4f9-d621-4fc4-ba60-51897d29248c",
									true,
								},
								
								{
									"e5a824e8-89d5-763b-9fe7-df3302760262",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "422e99da-9c76-71ff-bfd2-b347d250e49b",
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
							name = "UWU territory",
							uuid = "ea85f9bc-0d07-152b-9406-eac72e65d524",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.uwuAutoSim~=nil",
							name = "Encounter initialized",
							uuid = "24c6555f-2ec1-e140-b778-83808272b024",
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
							uuid = "10b4f4f9-d621-4fc4-ba60-51897d29248c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuAutoSim\nreturn S~=nil and S.observed.p2end==nil",
							name = "anchor pending",
							uuid = "e5a824e8-89d5-763b-9fe7-df3302760262",
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
							uuid = "8dbc88a5-7151-e3d8-b13c-6116805dbd1b",
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
							uuid = "2562fb01-ca26-69a3-9cc2-60a8792a42e3",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Encounter events",
				eventType = 26,
				loop = true,
				mechanicTime = 409,
				name = "[UWU] Resync p2end",
				timeRange = true,
				timelineIndex = 63,
				timerEndOffset = 75,
				timerStartOffset = 15,
				uuid = "2f56b0e1-5f50-afe9-a350-3c66838044d0",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Job options",
				uuid = "b93e9854-bc05-9bac-9ee8-83cb6c226c6c",
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
							actionLua = "local T=_G.UWU_BLM_TemporaryState or {}\n_G.UWU_BLM_TemporaryState=T\nTensorCore.API.TensorACR.holdActionUntil(3573,Now()+180000)\nT.leyHold=\"Ifrit\"\nself.used=true",
							conditions = 
							{
								
								{
									"a80d8ee8-bd47-34a0-8b53-caf60ce6b0b7",
									true,
								},
								
								{
									"2eb30010-8d4e-d7b3-bf79-d7c50b35bbf6",
									true,
								},
								
								{
									"055f46f0-e3fb-a1fa-9c1f-209c5f3628a8",
									true,
								},
								
								{
									"8b61142b-cb86-0061-bf09-1b78a070cc07",
									true,
								},
								
								{
									"025fd30e-1c00-f717-b78e-307dfbae494b",
									true,
								},
								
								{
									"e62678f4-133f-4c93-8e98-ee9d35417eca",
									true,
								},
							},
							name = "BLM - Reserve Ley Lines for next phase",
							uuid = "1dcacc79-30c6-fa70-a3f2-4cd562c7c799",
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
							name = "UWU territory",
							uuid = "a80d8ee8-bd47-34a0-8b53-caf60ce6b0b7",
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
							},
							name = "Supported jobs: BLM",
							uuid = "2eb30010-8d4e-d7b3-bf79-d7c50b35bbf6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							comparator = 2,
							conditionType = 3,
							hpValue = 5,
							name = "Ifrit at most 5%",
							uuid = "025fd30e-1c00-f717-b78e-307dfbae494b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuAutoSim\nreturn S~=nil and S.observed.p2end==nil",
							name = "Phase not finished",
							uuid = "e62678f4-133f-4c93-8e98-ee9d35417eca",
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
							uuid = "055f46f0-e3fb-a1fa-9c1f-209c5f3628a8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 1185,
							name = "Ifrit target",
							uuid = "8b61142b-cb86-0061-bf09-1b78a070cc07",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Job options",
				mechanicTime = 409,
				name = "[UWU] Save Ley Lines at Ifrit 5%",
				throttleTime = 500,
				timeRange = true,
				timelineIndex = 63,
				timerEndOffset = 100,
				timerStartOffset = -120,
				uuid = "88e3fcc2-d098-c567-9f5c-9e22cbd427b5",
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
				name = "AutoSim",
				uuid = "bc516a87-2c94-c12c-ac67-ed2592bf27c9",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Ifrit nails",
				uuid = "b6f826c5-ad05-1920-8e36-747bb5e72150",
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
									"c7743f1e-a0ca-4cc2-9f6e-d082db5e9baa",
									true,
								},
								
								{
									"be180e6d-10ee-9810-99a8-96668586cb0f",
									true,
								},
								
								{
									"f964b324-300f-4f59-a630-23947beb2e7e",
									true,
								},
								
								{
									"3d57abf3-779e-620d-9cc7-09b5b57d369c",
									true,
								},
								
								{
									"3ece4219-3abc-ecd6-bbf2-d0f100581bcd",
									true,
								},
							},
							name = "BLM - Apply owned UWU state",
							uuid = "e5303773-4563-db29-8906-313f0722b3bb",
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
							name = "UWU territory",
							uuid = "c7743f1e-a0ca-4cc2-9f6e-d082db5e9baa",
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
							},
							name = "Caster DPS nail plan",
							uuid = "be180e6d-10ee-9810-99a8-96668586cb0f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 3,
							name = "Titan targetable",
							uuid = "3ece4219-3abc-ecd6-bbf2-d0f100581bcd",
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
							uuid = "f964b324-300f-4f59-a630-23947beb2e7e",
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
							uuid = "3d57abf3-779e-620d-9cc7-09b5b57d369c",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Ifrit nails",
				eventType = 26,
				mechanicTime = 600,
				name = "[UWU] Restore nail options at Titan",
				timeRange = true,
				timelineIndex = 74,
				timerEndOffset = 15,
				timerStartOffset = -10,
				uuid = "92d85a3b-3be6-7adf-932e-bbf5fb6ca76a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Job options",
				uuid = "497d5479-76f4-662d-89c1-6f5c25464bf5",
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
							actionLua = "-- Shared UWU event handler: uses the active plan, with no job restriction.\nlocal T=_G.UWU_BLM_TemporaryState\nif T and T.leyHold then\n TensorCore.API.TensorACR.holdActionUntil(3573,Now())\n T.leyHold=nil\nend\nlocal S=data.uwuAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal departure=S.ifritLastUntargetable\nif departure and now-departure>=5 and now-departure<=12 and not S.observed.p2end then\n -- Titan's arrival confirms the preceding disappearance was Ifrit's death.\n S.ifritDashWasFinal=S.observed.ifritDash and math.abs(S.observed.ifritDash-departure)<1 or false\n S.resync(\"p2end\",departure)\nend\nS.resync(\"ifrit2Back\",now)\nself.used=true",
							conditions = 
							{
								
								{
									"88124936-703e-4c9f-9af1-d26daba5a496",
									true,
								},
								
								{
									"4a7aca2b-242f-5d26-93ce-e3ec02c8dac7",
									true,
								},
								
								{
									"127c308e-9516-df39-9ff5-adbb8229b74f",
									true,
								},
								
								{
									"a806f2bb-3f6e-6c40-89a9-10c71179ac0e",
									true,
								},
								
								{
									"deff8af5-5284-35b8-a8f2-dd7e834af762",
									true,
								},
								
								{
									"f86c249b-4e87-fba6-aa20-5408c3b96514",
									true,
								},
							},
							name = "BLM - Apply owned UWU state",
							uuid = "2743f188-7d86-bd30-85b4-18b857d7680c",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "-- Shared UWU event handler: uses the active plan, with no job restriction.\nlocal T=_G.UWU_BRD_TemporaryState\nif T and T.leyHold then\n TensorCore.API.TensorACR.holdActionUntil(3573,Now())\n T.leyHold=nil\nend\nlocal S=data.uwuAutoSim\nS.resync(\"ifrit2Back\",TensorCore.API.TensorACR.getAutoSimTime())\nself.used=true",
							conditions = 
							{
								
								{
									"66cafaaf-8db9-ded5-9fac-2d2e539ba3f0",
									true,
								},
								
								{
									"a2b328ed-3799-b130-8b76-7aea0ad5a785",
									false,
								},
								
								{
									"0688039b-69ec-a522-b03e-838a7e2f5e95",
									true,
								},
								
								{
									"0b53d668-b122-5dea-9a25-a27bd64cdd5c",
									true,
								},
								
								{
									"a2c68bcf-bb8b-f451-a0aa-d0b14cf25174",
									true,
								},
								
								{
									"b3bf6124-f0e4-5f4d-8376-cd2c6b4adb00",
									true,
								},
							},
							name = "BRD - Apply owned UWU state",
							uuid = "3ddf1274-bd91-9fb7-a12e-293c359344de",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "-- Shared UWU event handler: uses the active plan, with no job restriction.\nlocal T=_G.UWU_RPR_TemporaryState\nif T and T.leyHold then\n TensorCore.API.TensorACR.holdActionUntil(3573,Now())\n T.leyHold=nil\nend\nlocal S=data.uwuAutoSim\nS.resync(\"ifrit2Back\",TensorCore.API.TensorACR.getAutoSimTime())\nself.used=true",
							conditions = 
							{
								
								{
									"1fa5f473-6049-bdaa-ab8f-489f0a5f8baa",
									true,
								},
								
								{
									"3fbfa3f2-ebd3-7566-a256-0b0bcce96b05",
									true,
								},
								
								{
									"45f12178-a8ed-a652-9d4c-adcd073b6e30",
									true,
								},
								
								{
									"e2f5b953-23e0-d655-bfaa-e63c76c36ebf",
									true,
								},
								
								{
									"38a82317-9f10-11ea-ac8a-7bd9c681581b",
									true,
								},
								
								{
									"ff8de21d-df99-15fd-8c5a-c6da34c72864",
									true,
								},
							},
							name = "RPR - Apply owned UWU state",
							uuid = "9ff317ca-17dc-9630-a6a4-9899870005ba",
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
							name = "UWU territory",
							uuid = "88124936-703e-4c9f-9af1-d26daba5a496",
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
							name = "Caster/healer plan",
							uuid = "4a7aca2b-242f-5d26-93ce-e3ec02c8dac7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 3,
							name = "Targetable",
							uuid = "deff8af5-5284-35b8-a8f2-dd7e834af762",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuAutoSim\nreturn S~=nil and S.observed.ifrit2Back==nil",
							name = "anchor pending",
							uuid = "f86c249b-4e87-fba6-aa20-5408c3b96514",
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
							uuid = "127c308e-9516-df39-9ff5-adbb8229b74f",
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
							uuid = "a806f2bb-3f6e-6c40-89a9-10c71179ac0e",
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
							name = "UWU territory",
							uuid = "66cafaaf-8db9-ded5-9fac-2d2e539ba3f0",
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
								20,
								22,
								30,
								34,
								39,
								41,
								19,
								21,
								32,
								37,
							},
							name = "Other roles plan",
							uuid = "a2b328ed-3799-b130-8b76-7aea0ad5a785",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 3,
							name = "Targetable",
							uuid = "a2c68bcf-bb8b-f451-a0aa-d0b14cf25174",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuAutoSim\nreturn S~=nil and S.observed.ifrit2Back==nil",
							name = "anchor pending",
							uuid = "b3bf6124-f0e4-5f4d-8376-cd2c6b4adb00",
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
							uuid = "0688039b-69ec-a522-b03e-838a7e2f5e95",
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
							uuid = "0b53d668-b122-5dea-9a25-a27bd64cdd5c",
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
							name = "UWU territory",
							uuid = "1fa5f473-6049-bdaa-ab8f-489f0a5f8baa",
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
								20,
								22,
								30,
								34,
								39,
								41,
								19,
								21,
								32,
								37,
							},
							name = "Melee/tank plan",
							uuid = "3fbfa3f2-ebd3-7566-a256-0b0bcce96b05",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 3,
							name = "Targetable",
							uuid = "38a82317-9f10-11ea-ac8a-7bd9c681581b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuAutoSim\nreturn S~=nil and S.observed.ifrit2Back==nil",
							name = "anchor pending",
							uuid = "ff8de21d-df99-15fd-8c5a-c6da34c72864",
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
							uuid = "45f12178-a8ed-a652-9d4c-adcd073b6e30",
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
							uuid = "e2f5b953-23e0-d655-bfaa-e63c76c36ebf",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Job options",
				eventType = 26,
				loop = true,
				mechanicTime = 600,
				name = "[UWU] Resync ifrit2Back",
				timeRange = true,
				timelineIndex = 74,
				timerEndOffset = 15,
				timerStartOffset = -10,
				uuid = "3fb4c5ca-5f62-1a47-940e-b3fc2cc89912",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Encounter events",
				uuid = "67bfc498-03b7-2546-b0e1-5899f55b24b3",
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
									"248698aa-fe25-11ac-94d3-73860ebe86dc",
									true,
								},
								
								{
									"f9f9dd5a-9005-cf04-bd58-25b2b2e475ca",
									true,
								},
								
								{
									"c1be6c89-8bc9-9bb8-93ed-c94683bbe351",
									true,
								},
								
								{
									"03d560af-7797-dd1e-81ef-0006d3583e04",
									true,
								},
								
								{
									"d4e47a5d-4f50-166f-b853-600502bcea0a",
									true,
								},
							},
							endIfUsed = true,
							name = "Target - Titan",
							setTarget = true,
							targetContentID = 1801,
							targetType = "ContentID",
							uuid = "28cff23a-8fe9-0562-9bfc-92115442b4e7",
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
							name = "UWU territory",
							uuid = "248698aa-fe25-11ac-94d3-73860ebe86dc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.uwuAutoSim~=nil",
							name = "Encounter initialized",
							uuid = "f9f9dd5a-9005-cf04-bd58-25b2b2e475ca",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "c1be6c89-8bc9-9bb8-93ed-c94683bbe351",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local t=TensorCore.mGetTarget()\nreturn t==nil or not t.alive or not t.targetable",
							name = "No living hostile target",
							uuid = "03d560af-7797-dd1e-81ef-0006d3583e04",
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
							uuid = "d4e47a5d-4f50-166f-b853-600502bcea0a",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Encounter events",
				loop = true,
				mechanicTime = 600,
				name = "[UWU] [Target] Titan Reacquire",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 74,
				timerEndOffset = 168,
				uuid = "795eabde-789d-1bd1-89f1-e1ebdd04d87d",
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
									"acfeefe2-cc95-ee8b-bf5a-64453e616714",
									true,
								},
								
								{
									"acd80139-d5ce-f270-b33e-481d942a5e48",
									true,
								},
								
								{
									"05ad8b23-acea-4ad9-9820-27cf263bd7a8",
									true,
								},
								
								{
									"995342b0-018b-0851-991d-e24fd715ef76",
									true,
								},
								
								{
									"9d21253c-aa6c-a6f5-8941-e9c324f6fb60",
									true,
								},
							},
							name = "Target Titan",
							setTarget = true,
							targetType = "Event Entity",
							uuid = "c89a02ad-3942-65ec-8706-5e6459022f9b",
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
							name = "UWU territory",
							uuid = "acfeefe2-cc95-ee8b-bf5a-64453e616714",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.uwuAutoSim~=nil",
							name = "Encounter initialized",
							uuid = "acd80139-d5ce-f270-b33e-481d942a5e48",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "05ad8b23-acea-4ad9-9820-27cf263bd7a8",
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
							uuid = "9d21253c-aa6c-a6f5-8941-e9c324f6fb60",
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
							uuid = "995342b0-018b-0851-991d-e24fd715ef76",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Encounter events",
				eventType = 26,
				loop = true,
				mechanicTime = 600,
				name = "[UWU] [Target] Titan - Acquire",
				timeRange = true,
				timelineIndex = 74,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "64bf27cf-dd01-3bf0-841b-aaa539676fb0",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "DoT forecasts",
				uuid = "0e56335e-8568-7f32-8235-73d08da13c85",
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
							actionLua = "local S=data.uwuAutoSim\nif not S or not S.publishDots then return end\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal id=eventArgs.entityID\nlocal gaps=S.dotGaps[id] or {};S.dotGaps[id]=gaps\nlocal last=gaps[#gaps]\nif eventArgs.isTargetable then\n if last and not last[2] then last[2]=now end\nelse\n if eventArgs.entityContentID==1185 then S.ifritLastUntargetable=now end\n if not last or last[2] then gaps[#gaps+1]={now} end\nend\nif id==S.dotEntityID then S.publishDots() end\nself.used=true",
							conditions = 
							{
								
								{
									"2ed377bc-2913-8a94-a890-75ff45c7eba9",
									true,
								},
								
								{
									"a8db3a9b-d446-c0f0-bb6f-91b2e93c834d",
									true,
								},
								
								{
									"9f92dcbd-7861-a853-878d-542a500a9e16",
									true,
								},
								
								{
									"dfc810c5-2eac-605c-9b92-4fca7224246e",
									true,
								},
							},
							name = "BLM - Record native DoT gap",
							uuid = "8c3dce6e-121b-52f3-a897-006e53beac97",
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
							name = "UWU territory",
							uuid = "2ed377bc-2913-8a94-a890-75ff45c7eba9",
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
							},
							name = "BLM Thunder only",
							uuid = "a8db3a9b-d446-c0f0-bb6f-91b2e93c834d",
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
							uuid = "9f92dcbd-7861-a853-878d-542a500a9e16",
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
							uuid = "dfc810c5-2eac-605c-9b92-4fca7224246e",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/DoT forecasts",
				eventType = 26,
				loop = true,
				mechanicTime = 600,
				name = "[UWU] Titan Thunder availability",
				timeRange = true,
				timelineIndex = 74,
				timerEndOffset = 200,
				timerStartOffset = -20,
				uuid = "a5a85780-5f8b-6948-ba64-bbc838bd509c",
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
				name = "AutoSim",
				uuid = "ac8970cf-82ff-8933-a42f-8f4dec3070ca",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Abilities",
				uuid = "960c0744-11b6-4d76-b558-70f97579dd63",
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
									"ebac8fb3-5191-6bf1-bdae-8b5af08b14d6",
									true,
								},
								
								{
									"030e2d7a-ec34-1e5c-9911-22a9fe94342a",
									true,
								},
								
								{
									"dcdd3a25-b9c1-b5e5-8a2d-99549a3359c0",
									true,
								},
								
								{
									"fde0ea6b-cbf3-1318-aa2f-430b040ba1ed",
									true,
								},
							},
							gVar = "ACR_TensorNuke4_Hotbar_Manaward",
							name = "BLM - ACR",
							uuid = "41cf5746-de31-0ae6-b3ab-13f48f2e3538",
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
							name = "UWU territory",
							uuid = "ebac8fb3-5191-6bf1-bdae-8b5af08b14d6",
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
							},
							name = "Supported jobs: BLM",
							uuid = "030e2d7a-ec34-1e5c-9911-22a9fe94342a",
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
							uuid = "dcdd3a25-b9c1-b5e5-8a2d-99549a3359c0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- Profile-owned settings, loaded before any GUI or gameplay consumer.\nif not _G.UWU_AutoSimSettingsStore then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[UWU-AutoSim.lua]]\n local saved={}\n if FileExists(path) then\n  local loaded=FileLoad(path)\n  if type(loaded)==\"table\" then saved=loaded end\n end\n local specs={\n  UWU_AutoSimSettings={autoCasterLB=true,autoMeleeLB=true,vulcanKnockback=true,casterNailLifetime=true,casterNailCastBudget=2.8,spinyTarget=true,spinyEarly=false,adjustKillTimes=false,garudaSeconds=130,ifritSeconds=100,titanSeconds=125,fakeMelee=false,slowerGroup=false,garudaExtra=0,ifritExtra=0,titanExtra=0,killExtra=0},\n  UWU_BLM_AutoSimConfig={poolLaha=true,priorityGaols=true,roulette=true,raidBuffs=true,buffGain=17,nails=true,closePair=true,surecast=true,manaward=true,holdTripleLateGaruda=true,garudaEndSeconds=133.235,ifritEndAfterFirstDisappear=40.328,tripleHoldLeadSeconds=8,burstWeight20261029=true},\n  UWU_BRD_AutoSimConfig={poolLaha=true,priorityGaols=true,raidBuffs=false,buffGain=16.87},\n  UWU_RPR_AutoSimConfig={lbWho=2,poolLaha=true,priorityGaols=true,raidBuffs=false,buffGain=17,burstWeight20261029=true},\n  UWU_AutoSimUI={general=true,garuda=false,ifrit=false,titan=false,ultima=false}\n }\n local ranges={buffGain={0,40},lbWho={1,2},casterNailCastBudget={0.5,5},garudaSeconds={90,240},ifritSeconds={70,240},titanSeconds={80,240},garudaExtra={0,90},ifritExtra={0,90},titanExtra={0,90},killExtra={0,90},tripleHoldLeadSeconds={0,20},garudaEndSeconds={110,180},ifritEndAfterFirstDisappear={20,90}}\n for name,defaults in pairs(specs) do\n  local current=_G[name]\n  local disk=type(saved[name])==\"table\" and saved[name] or {}\n  local values={}\n  for key,default in pairs(defaults) do\n   -- Disk wins on a fresh Lua session even if an older initializer already ran.\n   local value=disk[key]\n   if value==nil and current then value=current[key] end\n   if type(value)~=type(default) then value=default end\n   local range=ranges[key]\n   if range and (value~=value or value<range[1] or value>range[2] or (key==\"lbWho\" and value%1~=0)) then value=default end\n   values[key]=value\n  end\n  _G[name]=values\n end\n local store={}\n function store.save()\n  local out={}\n  for name,defaults in pairs(specs) do\n   out[name]={}\n   for key in pairs(defaults) do out[name][key]=_G[name][key] end\n  end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,out)\n end\n _G.UWU_AutoSimSettingsStore=store\n store.save()\nend\n\nlocal C=_G.UWU_BLM_AutoSimConfig\nreturn C==nil or C.manaward==true",
							name = "option enabled",
							uuid = "fde0ea6b-cbf3-1318-aa2f-430b040ba1ed",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Abilities",
				mechanicTime = 605,
				name = "[UWU] Manaward Earthen Fury",
				timeRange = true,
				timelineIndex = 75,
				timerEndOffset = -1,
				timerStartOffset = -3,
				uuid = "3902d95f-c775-5aae-8dd9-301b7a9e6d32",
				version = 2,
			},
		},
	},
	[78] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "85f53229-ba5f-e13c-9103-eec4ab64a857",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Personal movement",
				uuid = "78232dc9-a022-0e24-b4fe-5af2b72ce5d9",
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
							actionLua = "local S=data.uwuAutoSim\nif not S or S.observed.p3end then self.used=true;return end\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal e=eventArgs\n-- Argus supplies the actual ground centre, not the helper caster's position.\n-- This log's 2.7s omen resolves about 3.0s after creation.\nlocal finish=now+e.duration+0.35\nS.weightPuddles=S.weightPuddles or {}\nS.weightPuddles[e.entityID]={x=e.x,z=e.z,radius=e.aoeLength,finish=finish}\nself.used=true",
							conditions = 
							{
								
								{
									"082431f6-06ca-2aea-8000-186a9836fe3e",
									true,
								},
								
								{
									"9097b21b-9a95-0c78-ae20-1445d74b1c10",
									true,
								},
								
								{
									"36db3fae-d278-2ee0-8d1c-885f6337bf98",
									true,
								},
							},
							name = "Record ground puddle",
							uuid = "84b15b01-8c04-60b7-865f-992ccca4a750",
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
							uuid = "082431f6-06ca-2aea-8000-186a9836fe3e",
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
							name = "Caster or healer",
							uuid = "9097b21b-9a95-0c78-ae20-1445d74b1c10",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.aoeID==11109 and eventArgs.friendly==false and type(eventArgs.x)==\"number\" and type(eventArgs.z)==\"number\" and type(eventArgs.aoeLength)==\"number\" and eventArgs.aoeLength>0 and type(eventArgs.duration)==\"number\" and eventArgs.duration>0",
							dequeueIfLuaFalse = true,
							name = "Weight ground omen",
							uuid = "36db3fae-d278-2ee0-8d1c-885f6337bf98",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Personal movement",
				eventType = 18,
				loop = true,
				mechanicTime = 621,
				name = "[UWU] Titan Weight - capture puddles",
				timeRange = true,
				timelineIndex = 78,
				timerEndOffset = 174,
				timerStartOffset = -21,
				uuid = "3b0b9c5e-9e8e-1d73-b8f5-9e4dd1db48da",
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
							actionLua = "local S=data.uwuAutoSim\nif not S then self.used=true;return end\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal p=Player.pos\nlocal count,finish=0,0\nfor id,w in pairs(S.weightPuddles or {}) do\n if now>=w.finish or S.observed.p3end or not Player.alive then\n  S.weightPuddles[id]=nil\n elseif p then\n  local dx,dz=p.x-w.x,p.z-w.z\n  -- Small edge margin avoids flickering at the visible rim.\n  local radius=w.radius+0.2\n  if dx*dx+dz*dz<=radius*radius then count=count+1;finish=math.max(finish,w.finish) end\n end\nend\nif S.weightPuddles and next(S.weightPuddles)==nil then S.weightPuddles=nil end\nlocal old=S.dynamic.weightMove\nif count>0 then\n if not old or math.abs(old[3]-finish)>0.05 then\n  S.dynamic.weightMove={\"CasterDowntime\",now,finish,1}\n  S.publish()\n end\nelseif old then\n S.dynamic.weightMove=nil\n S.publish()\nend\nlocal threatened=count>0\nif S.weightThreatened~=threatened then\n if threatened or S.weightThreatened~=nil then\n  d(string.format(\"[UWU AutoSim] Titan Weight: %s; overlapping=%d; player=(%.2f,%.2f); remaining=%.2f\",threatened and \"movement needed\" or \"safe - movement released\",count,p and p.x or 0,p and p.z or 0,math.max(0,finish-now)))\n end\n S.weightThreatened=threatened\nend\nself.used=true",
							conditions = 
							{
								
								{
									"4d63ad7c-2068-af45-9714-0df5ef5a2e49",
									true,
								},
								
								{
									"ce725f97-97bc-0162-a296-44149096f569",
									true,
								},
								
								{
									"fd8562af-f63e-86e8-99cd-51008466fef9",
									true,
								},
							},
							name = "Move only while threatened",
							uuid = "9aa01e34-7ee4-c6dd-b81c-b4b3cf1ee292",
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
							uuid = "4d63ad7c-2068-af45-9714-0df5ef5a2e49",
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
							name = "Caster or healer",
							uuid = "ce725f97-97bc-0162-a296-44149096f569",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuAutoSim; return S~=nil and (S.weightPuddles~=nil or S.dynamic.weightMove~=nil)",
							name = "Owned puddles or cleanup",
							uuid = "fd8562af-f63e-86e8-99cd-51008466fef9",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Personal movement",
				loop = true,
				mechanicTime = 621,
				name = "[UWU] Titan Weight - personal caster movement",
				timeRange = true,
				timelineIndex = 78,
				timerEndOffset = 174,
				timerStartOffset = -21,
				uuid = "6fea7fd3-69f9-7121-a819-2509581deea3",
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
				name = "AutoSim",
				uuid = "9b0c91d6-23bb-f7d3-aeb4-5e67012b4836",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Encounter events",
				uuid = "cb928b68-13dc-d910-8fae-ed80b0513b19",
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
							actionLua = "-- Shared UWU event handler: uses the active plan, with no job restriction.\nlocal S=data.uwuAutoSim\nS.resync(\"titan1\",TensorCore.API.TensorACR.getAutoSimTime())\nself.used=true",
							conditions = 
							{
								
								{
									"d6a4259f-9160-f386-9b24-9b93aee6f367",
									true,
								},
								
								{
									"9da6ec26-59a4-0d76-b48c-e99fffe36111",
									true,
								},
								
								{
									"b9d05909-d460-e5f3-a88f-bcc110d86f6b",
									true,
								},
								
								{
									"4e0e59ec-08e9-a8bd-ac9d-63b856091465",
									true,
								},
								
								{
									"cb071531-fcfa-09fb-aa37-2e330a50e595",
									true,
								},
								
								{
									"2f25dd68-8699-0d6b-b2e7-5648fc4a62d0",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "580fa3b8-c3d2-c715-a76a-ebd42973e52d",
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
							name = "UWU territory",
							uuid = "d6a4259f-9160-f386-9b24-9b93aee6f367",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.uwuAutoSim~=nil",
							name = "Encounter initialized",
							uuid = "9da6ec26-59a4-0d76-b48c-e99fffe36111",
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
							uuid = "b9d05909-d460-e5f3-a88f-bcc110d86f6b",
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
							uuid = "4e0e59ec-08e9-a8bd-ac9d-63b856091465",
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
							uuid = "cb071531-fcfa-09fb-aa37-2e330a50e595",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuAutoSim\nreturn S~=nil and S.observed.titan1==nil",
							name = "anchor pending",
							uuid = "2f25dd68-8699-0d6b-b2e7-5648fc4a62d0",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Encounter events",
				eventType = 26,
				loop = true,
				mechanicTime = 623.5,
				name = "[UWU] Resync titan1",
				timeRange = true,
				timelineIndex = 79,
				timerEndOffset = 8,
				timerStartOffset = -8,
				uuid = "d0e5b28a-0681-05e8-844b-3972f4ca5441",
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
				name = "AutoSim",
				uuid = "54feb720-41f4-62dc-bdd3-1ed011d34c98",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Personal gaols",
				uuid = "d8bd764a-c346-041f-80e9-e8464470a6a2",
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
							actionLua = "local G=data.uwuBLMTripleGaols\nlocal id=eventArgs.entityID\nG.ids[id]=eventArgs.isTargetable\nlocal S=data.uwuAutoSim\nif eventArgs.isTargetable and S and S.gaolForecast then\n local e=TensorCore.mGetEntity(id)\n local p=TensorCore.mGetPlayer()\n if e and p then\n  local dx,dz=e.pos.x-p.pos.x,e.pos.z-p.pos.z\n  local distance=dx*dx+dz*dz\n  if distance<=4 and (not S.gaolEntityDistance or distance<S.gaolEntityDistance) then\n   S.gaolEntityID=id;S.gaolEntityDistance=distance;S.gaolEntityObserved=true\n  end\n end\nend\n\nlocal count,up=0,0\nfor _,alive in pairs(G.ids) do count=count+1;if alive then up=up+1 end end\nif count>=3 and up==0 then\n TensorCore.API.TensorACR.deleteAOEBlacklistEntry(1804)\n _G.UWU_BLM_TemporaryState.gaols=nil\n G.done=true\nend\nself.used=true",
							conditions = 
							{
								
								{
									"474f6d98-ce27-9f8c-af4e-e1b3261c8432",
									true,
								},
								
								{
									"0493a453-2881-3fdf-ad6c-76b9b00ff87f",
									true,
								},
								
								{
									"34a3d80a-6e87-11cc-a88e-2c38d58c5b19",
									true,
								},
								
								{
									"ffeb2b44-9d68-cda3-b2c4-8fe118469874",
									true,
								},
								
								{
									"e0403dd3-4549-e3ee-9965-a30041110152",
									true,
								},
							},
							name = "Caster/healer - Apply owned UWU state",
							uuid = "f2d79c89-64d1-e764-9f76-e6117ceb9450",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local G=data.uwuBRDTripleGaols\nlocal id=eventArgs.entityID\nG.ids[id]=eventArgs.isTargetable\nlocal S=data.uwuAutoSim\nif eventArgs.isTargetable and S and S.gaolForecast then\n local e=TensorCore.mGetEntity(id)\n local p=TensorCore.mGetPlayer()\n if e and p then\n  local dx,dz=e.pos.x-p.pos.x,e.pos.z-p.pos.z\n  local distance=dx*dx+dz*dz\n  if distance<=4 and (not S.gaolEntityDistance or distance<S.gaolEntityDistance) then\n   S.gaolEntityID=id;S.gaolEntityDistance=distance;S.gaolEntityObserved=true\n  end\n end\nend\n\nlocal count,up=0,0\nfor _,alive in pairs(G.ids) do count=count+1;if alive then up=up+1 end end\nif count>=3 and up==0 then\n TensorCore.API.TensorACR.deleteAOEBlacklistEntry(1804)\n TensorCore.API.TensorACR.deleteBlacklistEntry(1804)\n TensorCore.API.TensorACR.saveDotBlacklist()\n _G.UWU_BRD_TemporaryState.gaols=nil\n G.done=true\nend\nself.used=true",
							conditions = 
							{
								
								{
									"410c0d64-6ed4-09b5-979d-3231382de478",
									true,
								},
								
								{
									"fc1db1ed-bb39-0767-81b2-5d5aae6a6122",
									false,
								},
								
								{
									"aa6b3740-58e0-8ca9-8e39-3976a854dbb4",
									true,
								},
								
								{
									"2e31c5fe-1b8d-bdd7-ae4f-602f949aafa4",
									true,
								},
								
								{
									"e0398aa1-eb2a-0e3f-8dc3-8a2716e98566",
									true,
								},
							},
							name = "Ranged/support - Apply owned UWU state",
							uuid = "fd8cddf8-1292-264b-9496-acf1217f935e",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local G=data.uwuRPRTripleGaols\nlocal id=eventArgs.entityID\nG.ids[id]=eventArgs.isTargetable\nlocal S=data.uwuAutoSim\nif eventArgs.isTargetable and S and S.gaolForecast then\n local e=TensorCore.mGetEntity(id)\n local p=TensorCore.mGetPlayer()\n if e and p then\n  local dx,dz=e.pos.x-p.pos.x,e.pos.z-p.pos.z\n  local distance=dx*dx+dz*dz\n  if distance<=4 and (not S.gaolEntityDistance or distance<S.gaolEntityDistance) then\n   S.gaolEntityID=id;S.gaolEntityDistance=distance;S.gaolEntityObserved=true\n  end\n end\nend\n\nlocal count,up=0,0\nfor _,alive in pairs(G.ids) do count=count+1;if alive then up=up+1 end end\nif count>=3 and up==0 then\n TensorCore.API.TensorACR.deleteAOEBlacklistEntry(1804)\n TensorCore.API.TensorACR.deleteBlacklistEntry(1804)\n TensorCore.API.TensorACR.saveDotBlacklist()\n _G.UWU_RPR_TemporaryState.gaols=nil\n G.done=true\nend\nself.used=true",
							conditions = 
							{
								
								{
									"1f915574-70ce-d70f-b983-c0c62a5cce38",
									true,
								},
								
								{
									"bedf5ac0-6ad1-db90-91d7-375bc73e1d56",
									true,
								},
								
								{
									"5f80c807-926e-0f6d-988a-72b09e39489a",
									true,
								},
								
								{
									"327ba153-ee45-dd70-9ea8-ef18f34ea56b",
									true,
								},
								
								{
									"88a33493-a152-3dbb-a04b-258a921fa582",
									true,
								},
							},
							name = "Melee/tank - Apply owned UWU state",
							uuid = "31983a29-5691-77bd-ac7b-3ba0d58df21a",
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
							name = "UWU territory",
							uuid = "474f6d98-ce27-9f8c-af4e-e1b3261c8432",
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
							name = "Caster/healer plan",
							uuid = "0493a453-2881-3fdf-ad6c-76b9b00ff87f",
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
							uuid = "ffeb2b44-9d68-cda3-b2c4-8fe118469874",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local G=data.uwuBLMTripleGaols\nreturn G~=nil and not G.done",
							name = "triple active",
							uuid = "e0403dd3-4549-e3ee-9965-a30041110152",
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
							uuid = "34a3d80a-6e87-11cc-a88e-2c38d58c5b19",
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
							name = "UWU territory",
							uuid = "410c0d64-6ed4-09b5-979d-3231382de478",
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
								20,
								22,
								30,
								34,
								39,
								41,
								19,
								21,
								32,
								37,
							},
							name = "Other roles plan",
							uuid = "fc1db1ed-bb39-0767-81b2-5d5aae6a6122",
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
							uuid = "2e31c5fe-1b8d-bdd7-ae4f-602f949aafa4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local G=data.uwuBRDTripleGaols\nreturn G~=nil and not G.done",
							name = "triple active",
							uuid = "e0398aa1-eb2a-0e3f-8dc3-8a2716e98566",
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
							uuid = "aa6b3740-58e0-8ca9-8e39-3976a854dbb4",
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
							name = "UWU territory",
							uuid = "1f915574-70ce-d70f-b983-c0c62a5cce38",
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
								20,
								22,
								30,
								34,
								39,
								41,
								19,
								21,
								32,
								37,
							},
							name = "Melee/tank plan",
							uuid = "bedf5ac0-6ad1-db90-91d7-375bc73e1d56",
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
							uuid = "327ba153-ee45-dd70-9ea8-ef18f34ea56b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local G=data.uwuRPRTripleGaols\nreturn G~=nil and not G.done",
							name = "triple active",
							uuid = "88a33493-a152-3dbb-a04b-258a921fa582",
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
							uuid = "5f80c807-926e-0f6d-988a-72b09e39489a",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Personal gaols",
				eventType = 26,
				loop = true,
				mechanicTime = 639,
				name = "[UWU] Unblock after all three gaols",
				timeRange = true,
				timelineIndex = 85,
				timerEndOffset = 35,
				timerStartOffset = -5,
				uuid = "b7591732-1ff8-cac7-ac4c-f855483f8f3f",
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
							actionLua = "local S=data.uwuAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal observed=TensorCore.hasBuff(Player.id,292)\nlocal own=S.gaolEntityID and TensorCore.mGetEntity(S.gaolEntityID)\nlocal entityTrapped=own and own.alive and own.targetable and own.hp.current>0\nif observed or entityTrapped then\n local firstObservation=not S.fettersActive\n S.fettersActive=true\n if not S.dynamic.gaolStun then S.dynamic.gaolStun={\"Stun\",now,now+1,1} end\n if not S.dynamic.gaolMove then S.dynamic.gaolMove={\"CasterDowntime\",now,now+3,1} end\n if firstObservation then\n  S.dynamic.gaolStun[2]=math.min(S.dynamic.gaolStun[2],now)\n  S.dynamic.gaolMove[2]=math.min(S.dynamic.gaolMove[2],now)\n  S.publish()\n end\n if now>=S.dynamic.gaolStun[3]-.5 then\n  S.dynamic.gaolStun[3]=now+1;S.dynamic.gaolMove[3]=now+3\n  S.publish()\n end\nelseif S.fettersActive then\n S.dynamic.gaolStun=nil\n if S.dynamic.gaolMove then S.dynamic.gaolMove[3]=now+2 end\n S.fettersActive=nil;S.gaolCompleted=true\n S.publish();self.used=true\nend",
							conditions = 
							{
								
								{
									"3fe60284-8918-485b-9333-8de07a991ccb",
									true,
								},
								
								{
									"d7094a0d-20e4-e501-b661-f6c2e0009d73",
									true,
								},
								
								{
									"0a840c7e-02d4-4da9-89b6-3cb445d2d40d",
									true,
								},
								
								{
									"7e1b76d4-90b3-ffff-894d-cae66f2a6038",
									true,
								},
							},
							name = "Caster/healer - Apply owned UWU state",
							uuid = "98870176-6274-5e90-a66f-8794509875c6",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.uwuAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal own=S.gaolEntityID and TensorCore.mGetEntity(S.gaolEntityID)\nlocal trapped=TensorCore.hasBuff(Player.id,292) or (own and own.alive and own.targetable and own.hp.current>0)\nif trapped then\n S.fettersActive=true\n if not S.dynamic.gaolStun then S.dynamic.gaolStun={\"Stun\",now,now+1,1};S.publish()\n elseif now>=S.dynamic.gaolStun[3]-.5 then S.dynamic.gaolStun[3]=now+1;S.publish() end\nelseif S.fettersActive then\n S.dynamic.gaolStun=nil;S.fettersActive=nil;S.gaolCompleted=true\n S.publish();self.used=true\nend",
							conditions = 
							{
								
								{
									"b6f8a31e-759b-d307-b82d-ae40a6ae2062",
									true,
								},
								
								{
									"37524c85-f5bd-c686-85b3-063e403a13e2",
									false,
								},
								
								{
									"f13a7375-36d6-fade-aeaa-b81a4bb127ed",
									true,
								},
								
								{
									"0e6f2af8-b63c-1c07-9c56-9cd9f37dda1a",
									true,
								},
							},
							name = "Ranged/support - Apply owned UWU state",
							uuid = "c56c755a-0bfc-5a35-9800-c76478e38c9e",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.uwuAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal own=S.gaolEntityID and TensorCore.mGetEntity(S.gaolEntityID)\nlocal trapped=TensorCore.hasBuff(Player.id,292) or (own and own.alive and own.targetable and own.hp.current>0)\nif trapped then\n S.fettersActive=true\n if not S.dynamic.gaolStun then S.dynamic.gaolStun={\"Stun\",now,now+1,1};S.publish()\n elseif now>=S.dynamic.gaolStun[3]-.5 then S.dynamic.gaolStun[3]=now+1;S.publish() end\nelseif S.fettersActive then\n if S.dynamic.gaolMove then S.dynamic.gaolMove[3]=now+1 end\n S.dynamic.gaolStun=nil;S.fettersActive=nil;S.gaolCompleted=true\n S.publish();self.used=true\nend",
							conditions = 
							{
								
								{
									"85bce7e6-48d4-daf1-aa2a-7da2b7c239ee",
									true,
								},
								
								{
									"2c3bd5ab-23c8-ae42-b7c4-a20436aba2ff",
									true,
								},
								
								{
									"644b68b1-0dbf-2885-9c5c-5b3195b7f9ad",
									true,
								},
								
								{
									"fa153c51-b256-514b-9c6b-0463b1cfd0ac",
									true,
								},
							},
							name = "Melee/tank - Apply owned UWU state",
							uuid = "1faab41d-7f5e-2228-93e2-d147f1a1e46a",
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
							name = "UWU territory",
							uuid = "3fe60284-8918-485b-9333-8de07a991ccb",
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
							name = "Caster/healer plan",
							uuid = "d7094a0d-20e4-e501-b661-f6c2e0009d73",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuAutoSim\nreturn S~=nil and (S.fettersActive==true or (S.gaolForecast==true and S.gaolCompleted~=true))",
							name = "stunned",
							uuid = "7e1b76d4-90b3-ffff-894d-cae66f2a6038",
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
							uuid = "0a840c7e-02d4-4da9-89b6-3cb445d2d40d",
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
							name = "UWU territory",
							uuid = "b6f8a31e-759b-d307-b82d-ae40a6ae2062",
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
								20,
								22,
								30,
								34,
								39,
								41,
								19,
								21,
								32,
								37,
							},
							name = "Other roles plan",
							uuid = "37524c85-f5bd-c686-85b3-063e403a13e2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuAutoSim\nreturn S~=nil and (S.fettersActive==true or (S.gaolForecast==true and S.gaolCompleted~=true))",
							name = "stunned",
							uuid = "0e6f2af8-b63c-1c07-9c56-9cd9f37dda1a",
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
							uuid = "f13a7375-36d6-fade-aeaa-b81a4bb127ed",
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
							name = "UWU territory",
							uuid = "85bce7e6-48d4-daf1-aa2a-7da2b7c239ee",
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
								20,
								22,
								30,
								34,
								39,
								41,
								19,
								21,
								32,
								37,
							},
							name = "Melee/tank plan",
							uuid = "2c3bd5ab-23c8-ae42-b7c4-a20436aba2ff",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuAutoSim\nreturn S~=nil and (S.fettersActive==true or (S.gaolForecast==true and S.gaolCompleted~=true))",
							name = "stunned",
							uuid = "fa153c51-b256-514b-9c6b-0463b1cfd0ac",
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
							uuid = "644b68b1-0dbf-2885-9c5c-5b3195b7f9ad",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Personal gaols",
				loop = true,
				mechanicTime = 639,
				name = "[UWU] End personal gaol downtime",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 85,
				timerEndOffset = 40,
				timerStartOffset = -5,
				uuid = "a3ee1dc7-4102-27cc-9445-917219db17ad",
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
							actionLua = "data.uwuBLMTripleGaols={ids={}}\nlocal T=_G.UWU_BLM_TemporaryState or {};_G.UWU_BLM_TemporaryState=T;T.gaols=true\nlocal entry=TensorCore.API.TensorACR.addAOEBlacklistEntry(1804,\"UWU triple player gaols\")\nentry.enabled=true\nlocal S=data.uwuAutoSim\nif S and eventArgs.targetID==Player.id and not S.gaolForecast then\n local now=TensorCore.API.TensorACR.getAutoSimTime()\n S.gaolForecast=true\n S.dynamic.gaolStun={\"Stun\",now+4.942,now+10.516,1}\n S.dynamic.gaolMove={\"CasterDowntime\",now,now+12.516,1}\n S.publish()\nend\nself.used=true",
							conditions = 
							{
								
								{
									"13739160-cab8-06f6-a593-d5102ab84853",
									true,
								},
								
								{
									"929ba0c6-a1a7-1528-94c3-9250a4e49311",
									true,
								},
								
								{
									"65563523-cdeb-71d0-b4e3-79aa0e54c2ab",
									true,
								},
								
								{
									"1ff83df2-594e-6821-97ae-52090bd62d38",
									true,
								},
								
								{
									"656307e6-cd16-8826-bc38-df5537444dd6",
									true,
								},
							},
							name = "Caster/healer - Apply owned UWU state",
							uuid = "5798f4d2-000f-a4c4-bae4-e1f504261b5b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.uwuBRDTripleGaols={ids={}}\nlocal T=_G.UWU_BRD_TemporaryState or {};_G.UWU_BRD_TemporaryState=T;T.gaols=true\nlocal entry=TensorCore.API.TensorACR.addAOEBlacklistEntry(1804,\"UWU triple player gaols\")\nentry.enabled=true\nlocal dot=TensorCore.API.TensorACR.addBlacklistEntry(1804,\"UWU triple player gaols\")\ndot.enabled=true;dot.allowIfTarget=false;dot.allowSmartDoT=false\nTensorCore.API.TensorACR.saveDotBlacklist()\nlocal S=data.uwuAutoSim\nif S and eventArgs.targetID==Player.id and not S.gaolForecast then\n local now=TensorCore.API.TensorACR.getAutoSimTime()\n S.gaolForecast=true\n S.dynamic.gaolStun={\"Stun\",now+4.942,now+10.516,1}\n S.publish()\nend\nself.used=true",
							conditions = 
							{
								
								{
									"d550b308-3137-335f-b588-411f58aae68a",
									true,
								},
								
								{
									"f4a3ade1-d37a-8194-875e-d1b17951f3a0",
									false,
								},
								
								{
									"035fe060-43c3-72f7-a509-9307becceddf",
									true,
								},
								
								{
									"2777e61c-42ad-e47b-a2cd-ead0c0d21b6d",
									true,
								},
								
								{
									"47c3aa99-7f73-724f-ac93-e3276e47356a",
									true,
								},
							},
							name = "Ranged/support - Apply owned UWU state",
							uuid = "17264f16-6624-0165-9452-3a347e832875",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.uwuRPRTripleGaols={ids={}}\nlocal T=_G.UWU_RPR_TemporaryState or {};_G.UWU_RPR_TemporaryState=T;T.gaols=true\nlocal entry=TensorCore.API.TensorACR.addAOEBlacklistEntry(1804,\"UWU triple player gaols\")\nentry.enabled=true\nlocal dot=TensorCore.API.TensorACR.addBlacklistEntry(1804,\"UWU triple player gaols\")\ndot.enabled=true;dot.allowIfTarget=false;dot.allowSmartDoT=false\nTensorCore.API.TensorACR.saveDotBlacklist()\nlocal S=data.uwuAutoSim\nif S and eventArgs.targetID==Player.id and not S.gaolForecast then\n local now=TensorCore.API.TensorACR.getAutoSimTime()\n S.gaolForecast=true\n S.dynamic.gaolStun={\"Stun\",now+4.942,now+10.516,1}\n S.publish()\nend\nself.used=true",
							conditions = 
							{
								
								{
									"c417a958-f3f2-1e37-853b-f54ba57a1331",
									true,
								},
								
								{
									"ed37e93d-150b-ffb5-a445-fedcee5b99df",
									true,
								},
								
								{
									"c83c6783-efc7-d159-a24f-eda64e9f84fd",
									true,
								},
								
								{
									"2cc808d6-04d8-8f29-b578-fe38e0bff3a9",
									true,
								},
								
								{
									"a381ea6a-9b26-88c5-b54b-fe6a5a0426fa",
									true,
								},
							},
							name = "Melee/tank - Apply owned UWU state",
							uuid = "afee10eb-cae3-0b5c-afeb-a50c8166f79a",
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
							name = "UWU territory",
							uuid = "13739160-cab8-06f6-a593-d5102ab84853",
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
							name = "Caster/healer plan",
							uuid = "929ba0c6-a1a7-1528-94c3-9250a4e49311",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.uwuBLMTripleGaols==nil",
							name = "first triple",
							uuid = "656307e6-cd16-8826-bc38-df5537444dd6",
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
							uuid = "65563523-cdeb-71d0-b4e3-79aa0e54c2ab",
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
							uuid = "1ff83df2-594e-6821-97ae-52090bd62d38",
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
							name = "UWU territory",
							uuid = "d550b308-3137-335f-b588-411f58aae68a",
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
								20,
								22,
								30,
								34,
								39,
								41,
								19,
								21,
								32,
								37,
							},
							name = "Other roles plan",
							uuid = "f4a3ade1-d37a-8194-875e-d1b17951f3a0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.uwuBRDTripleGaols==nil",
							name = "first triple",
							uuid = "47c3aa99-7f73-724f-ac93-e3276e47356a",
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
							uuid = "035fe060-43c3-72f7-a509-9307becceddf",
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
							uuid = "2777e61c-42ad-e47b-a2cd-ead0c0d21b6d",
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
							name = "UWU territory",
							uuid = "c417a958-f3f2-1e37-853b-f54ba57a1331",
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
								20,
								22,
								30,
								34,
								39,
								41,
								19,
								21,
								32,
								37,
							},
							name = "Melee/tank plan",
							uuid = "ed37e93d-150b-ffb5-a445-fedcee5b99df",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.uwuRPRTripleGaols==nil",
							name = "first triple",
							uuid = "a381ea6a-9b26-88c5-b54b-fe6a5a0426fa",
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
							uuid = "c83c6783-efc7-d159-a24f-eda64e9f84fd",
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
							uuid = "2cc808d6-04d8-8f29-b578-fe38e0bff3a9",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Personal gaols",
				eventType = 2,
				loop = true,
				mechanicTime = 639,
				name = "[UWU] Blacklist the triple gaols",
				timeRange = true,
				timelineIndex = 85,
				timerEndOffset = 10,
				timerStartOffset = -5,
				uuid = "150efa7f-b268-4911-9681-06c6f624d9b7",
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
							actionLua = "local S=data.uwuAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime();S.gaolForecast=true\nS.dynamic.gaolStun={\"Stun\",now+4.942,now+10.516,1}\nS.dynamic.gaolMove={\"CasterDowntime\",now,now+12.516,1}\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"2ab602bb-0ce9-7c98-966a-ebd21ab39bee",
									true,
								},
								
								{
									"7d3500c9-a83e-2a0d-b4c0-91a808607156",
									true,
								},
								
								{
									"47d8a126-9a0c-7e6c-aa93-c0361a1e08dd",
									true,
								},
								
								{
									"ec1dfbe9-9194-d33b-b761-ce04f881c921",
									true,
								},
								
								{
									"9c7d5a40-f858-7b86-bf8c-479854b33621",
									true,
								},
								
								{
									"e51282fd-a3ea-c30e-a6eb-6aa183865da8",
									true,
								},
							},
							name = "Caster/healer - Apply owned UWU state",
							uuid = "e54ed3bc-7dd8-d114-b688-8b8749a2b154",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.uwuAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime();S.gaolForecast=true\nS.dynamic.gaolStun={\"Stun\",now+4.942,now+10.516,1}\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"beafc683-afad-f3c7-8977-9472e5aaeb9c",
									true,
								},
								
								{
									"e30634e0-85a4-baca-a160-282eda283423",
									false,
								},
								
								{
									"a161247f-39e4-bbb0-9611-c93f6a4d6032",
									true,
								},
								
								{
									"ca844821-dbde-eb16-84c7-1c310d4e3208",
									true,
								},
								
								{
									"8aed38dc-972d-9a6b-9866-b6a94cc71936",
									true,
								},
								
								{
									"c5bc79b1-dc1f-6099-b4dc-fe16698ff543",
									true,
								},
							},
							name = "Ranged/support - Apply owned UWU state",
							uuid = "a46d6b1d-0534-7d69-b66f-719c40c16b35",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.uwuAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime();S.gaolForecast=true\nS.dynamic.gaolStun={\"Stun\",now+4.942,now+10.516,1}\nS.dynamic.gaolMove={\"MeleeDowntime\",now,now+11.516,1}\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"d4de0af1-f106-457f-bc82-d744d1c052df",
									true,
								},
								
								{
									"b07ab82d-ee0c-0713-a874-69ff545a3ce6",
									true,
								},
								
								{
									"30b23111-5694-6369-b85e-5ac5c9d0a07f",
									true,
								},
								
								{
									"4a6690ef-ec11-c5ce-aaa7-7f246682668f",
									true,
								},
								
								{
									"382717ff-8348-bc67-ba44-8f8d1ae51032",
									true,
								},
								
								{
									"270a00b5-461a-f2d5-beba-7e8da98a6b95",
									true,
								},
							},
							name = "Melee/tank - Apply owned UWU state",
							uuid = "778c1d5c-15ce-8223-aaf3-d649b4bd0e5d",
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
							name = "UWU territory",
							uuid = "2ab602bb-0ce9-7c98-966a-ebd21ab39bee",
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
							name = "Caster/healer plan",
							uuid = "7d3500c9-a83e-2a0d-b4c0-91a808607156",
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
							uuid = "ec1dfbe9-9194-d33b-b761-ce04f881c921",
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
							uuid = "9c7d5a40-f858-7b86-bf8c-479854b33621",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuAutoSim\nreturn S~=nil and not S.gaolForecast",
							dequeueIfLuaFalse = true,
							name = "not forecast",
							uuid = "e51282fd-a3ea-c30e-a6eb-6aa183865da8",
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
							uuid = "47d8a126-9a0c-7e6c-aa93-c0361a1e08dd",
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
							name = "UWU territory",
							uuid = "beafc683-afad-f3c7-8977-9472e5aaeb9c",
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
								20,
								22,
								30,
								34,
								39,
								41,
								19,
								21,
								32,
								37,
							},
							name = "Other roles plan",
							uuid = "e30634e0-85a4-baca-a160-282eda283423",
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
							uuid = "ca844821-dbde-eb16-84c7-1c310d4e3208",
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
							uuid = "8aed38dc-972d-9a6b-9866-b6a94cc71936",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuAutoSim\nreturn S~=nil and not S.gaolForecast",
							dequeueIfLuaFalse = true,
							name = "not forecast",
							uuid = "c5bc79b1-dc1f-6099-b4dc-fe16698ff543",
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
							uuid = "a161247f-39e4-bbb0-9611-c93f6a4d6032",
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
							name = "UWU territory",
							uuid = "d4de0af1-f106-457f-bc82-d744d1c052df",
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
								20,
								22,
								30,
								34,
								39,
								41,
								19,
								21,
								32,
								37,
							},
							name = "Melee/tank plan",
							uuid = "b07ab82d-ee0c-0713-a874-69ff545a3ce6",
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
							uuid = "4a6690ef-ec11-c5ce-aaa7-7f246682668f",
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
							uuid = "382717ff-8348-bc67-ba44-8f8d1ae51032",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuAutoSim\nreturn S~=nil and not S.gaolForecast",
							dequeueIfLuaFalse = true,
							name = "not forecast",
							uuid = "270a00b5-461a-f2d5-beba-7e8da98a6b95",
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
							uuid = "30b23111-5694-6369-b85e-5ac5c9d0a07f",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Personal gaols",
				eventType = 2,
				loop = true,
				mechanicTime = 639,
				name = "[UWU] Forecast personal gaol movement",
				timeRange = true,
				timelineIndex = 85,
				timerEndOffset = 10,
				timerStartOffset = -5,
				uuid = "1951d6ac-73d0-bf34-8a40-1c435d62d364",
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
							actionLua = "local S=data.uwuAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal duration=eventArgs.buffDuration\nif type(duration)~=\"number\" or duration<=0 then duration=5.574 end\nS.fettersActive=true\nS.dynamic.gaolStun={\"Stun\",now,now+duration,1}\nS.dynamic.gaolMove={\"CasterDowntime\",now-0.1,now+duration+2,1}\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"9bbf7b01-1949-d98a-9577-e5a049c523c1",
									true,
								},
								
								{
									"182ad493-9e7d-6484-b5d9-af1dc686aa2d",
									true,
								},
								
								{
									"ea208967-0ee2-3b03-afe5-83275b42355c",
									true,
								},
								
								{
									"92990753-b86c-11f4-beb2-4160df11d899",
									true,
								},
								
								{
									"187fa4c9-22e4-f16b-b986-51ceb6f27c82",
									true,
								},
							},
							name = "Caster/healer - Apply owned UWU state",
							uuid = "ed754a58-2711-230f-a657-06a3f67d0bc1",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.uwuAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal duration=eventArgs.buffDuration\nif type(duration)~=\"number\" or duration<=0 then duration=5.574 end\nS.fettersActive=true\nS.dynamic.gaolStun={\"Stun\",now,now+duration,1}\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"13676ce8-49df-3bd7-a8bd-9ad5847eb832",
									true,
								},
								
								{
									"4317af60-7e99-1b15-8a38-649eb40e6ab7",
									false,
								},
								
								{
									"16bed904-00ae-a1c2-8772-89c92a0ed58b",
									true,
								},
								
								{
									"b5b76696-9a10-bd4b-a36a-384cdcfdebfc",
									true,
								},
								
								{
									"d2dacf07-56ad-39d1-a65f-804b5b985def",
									true,
								},
							},
							name = "BRD/RPR - Apply owned UWU state",
							uuid = "4584fd0a-72ac-29f2-90ae-44485eaa5f20",
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
							name = "UWU territory",
							uuid = "9bbf7b01-1949-d98a-9577-e5a049c523c1",
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
							name = "Caster/healer plan",
							uuid = "182ad493-9e7d-6484-b5d9-af1dc686aa2d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityID==Player.id and eventArgs.buffID==292 and data.uwuAutoSim~=nil",
							dequeueIfLuaFalse = true,
							name = "self fetters",
							uuid = "187fa4c9-22e4-f16b-b986-51ceb6f27c82",
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
							uuid = "ea208967-0ee2-3b03-afe5-83275b42355c",
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
							uuid = "92990753-b86c-11f4-beb2-4160df11d899",
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
							name = "UWU territory",
							uuid = "13676ce8-49df-3bd7-a8bd-9ad5847eb832",
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
							name = "Physical role plan",
							uuid = "4317af60-7e99-1b15-8a38-649eb40e6ab7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityID==Player.id and eventArgs.buffID==292 and data.uwuAutoSim~=nil",
							dequeueIfLuaFalse = true,
							name = "self fetters",
							uuid = "d2dacf07-56ad-39d1-a65f-804b5b985def",
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
							uuid = "16bed904-00ae-a1c2-8772-89c92a0ed58b",
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
							uuid = "b5b76696-9a10-bd4b-a36a-384cdcfdebfc",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Personal gaols",
				eventType = 8,
				loop = true,
				mechanicTime = 639,
				name = "[UWU] Observe personal Fetters stun",
				timeRange = true,
				timelineIndex = 85,
				timerEndOffset = 25,
				timerStartOffset = -5,
				uuid = "84349bd2-45a1-b05f-89bf-3a6d8acbad4b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Encounter events",
				uuid = "f59a9917-6e32-570e-8271-4672dceabd1e",
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
									"ef333bae-5e44-b3e5-a96a-975218c7031c",
									true,
								},
								
								{
									"46cdad41-6cfd-939d-8a16-d7fb0f4718b4",
									true,
								},
								
								{
									"c9b3489e-b1d1-64b8-8271-d84f0084f9e6",
									true,
								},
								
								{
									"b0b5f503-edcb-4103-bb8a-9e6023918ac3",
									true,
								},
								
								{
									"ba955e6e-4627-9814-9e81-cfabcd483c72",
									true,
								},
								
								{
									"596aebf1-32e9-21d9-af79-a875dfc32460",
									true,
								},
							},
							name = "Target next Granite Gaol",
							setTarget = true,
							targetType = "Detection Target",
							uuid = "f7f29024-a224-aac3-95ec-7897b82c4bec",
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
									"ef333bae-5e44-b3e5-a96a-975218c7031c",
									true,
								},
								
								{
									"46cdad41-6cfd-939d-8a16-d7fb0f4718b4",
									true,
								},
								
								{
									"c9b3489e-b1d1-64b8-8271-d84f0084f9e6",
									true,
								},
								
								{
									"b0b5f503-edcb-4103-bb8a-9e6023918ac3",
									true,
								},
								
								{
									"ba955e6e-4627-9814-9e81-cfabcd483c72",
									true,
								},
								
								{
									"596aebf1-32e9-21d9-af79-a875dfc32460",
									false,
								},
							},
							name = "Restore Titan target",
							setTarget = true,
							targetContentID = 1801,
							targetType = "ContentID",
							uuid = "9de04b83-9b5b-3ba1-a3b9-1d4983fd6436",
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
							name = "UWU territory",
							uuid = "ef333bae-5e44-b3e5-a96a-975218c7031c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.uwuAutoSim~=nil",
							name = "Encounter initialized",
							uuid = "46cdad41-6cfd-939d-8a16-d7fb0f4718b4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "c9b3489e-b1d1-64b8-8271-d84f0084f9e6",
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
							uuid = "596aebf1-32e9-21d9-af79-a875dfc32460",
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
							uuid = "b0b5f503-edcb-4103-bb8a-9e6023918ac3",
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
							uuid = "ba955e6e-4627-9814-9e81-cfabcd483c72",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Encounter events",
				enabled = false,
				eventType = 26,
				loop = true,
				mechanicTime = 639,
				name = "[UWU] [Target] Titan Gaols - Advance",
				timeRange = true,
				timelineIndex = 85,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "94e5ba99-f3af-96d6-9537-dd5d9070c03a",
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
									"22accaf1-085d-a4da-81d2-8b36e1ee9087",
									true,
								},
								
								{
									"28568f03-8783-6d54-b2f0-27a08bb045a5",
									true,
								},
								
								{
									"44bda27d-98d7-dddc-87c0-d01e10f28c34",
									true,
								},
								
								{
									"6ec788bc-e1ba-6a62-b834-96bab6ffc00d",
									true,
								},
								
								{
									"7e1fe85c-9936-cd35-9e10-612a930513ef",
									true,
								},
							},
							name = "Target nearest Granite Gaol",
							setTarget = true,
							targetContentID = 1804,
							targetType = "ContentID",
							uuid = "0f897f2d-9542-0f8f-ba9d-d5a0bc81656c",
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
							name = "UWU territory",
							uuid = "22accaf1-085d-a4da-81d2-8b36e1ee9087",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.uwuAutoSim~=nil",
							name = "Encounter initialized",
							uuid = "28568f03-8783-6d54-b2f0-27a08bb045a5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "44bda27d-98d7-dddc-87c0-d01e10f28c34",
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
							uuid = "7e1fe85c-9936-cd35-9e10-612a930513ef",
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
							uuid = "6ec788bc-e1ba-6a62-b834-96bab6ffc00d",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Encounter events",
				enabled = false,
				eventType = 26,
				loop = true,
				mechanicTime = 639,
				name = "[UWU] [Target] Titan Gaols - Acquire",
				timeRange = true,
				timelineIndex = 85,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "bb775fa8-71bf-960c-8501-b6fb935dab96",
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
				name = "AutoSim",
				uuid = "0a243d76-0134-e9c1-b8a4-6759233682bb",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Personal gaols",
				uuid = "9c77a6b4-259a-fb9d-a6c2-ff5e01a5e7e8",
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
									"a81ce083-22f3-a5b1-8fa7-2a40b8e5bd15",
									true,
								},
								
								{
									"db5fcef0-d7c9-d4f9-b2c6-9869f385722f",
									true,
								},
								
								{
									"aac8437e-58af-74b4-b325-fd64569ddfe6",
									true,
								},
								
								{
									"2a976462-a477-cc5d-9d59-215a63d11717",
									true,
								},
							},
							name = "Caster/healer - Apply owned UWU state",
							uuid = "ec36ef1a-d223-4bfd-bec7-9ff242f5392d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "TensorCore.API.TensorACR.deleteAOEBlacklistEntry(1804)\n TensorCore.API.TensorACR.deleteBlacklistEntry(1804)\n TensorCore.API.TensorACR.saveDotBlacklist()\n_G.UWU_BRD_TemporaryState.gaols=nil\nif data.uwuBRDTripleGaols then data.uwuBRDTripleGaols.done=true end\nself.used=true",
							conditions = 
							{
								
								{
									"1224c866-74f5-90fd-a043-af3ae1bf1ca9",
									true,
								},
								
								{
									"47f92749-f0dd-115b-a199-2ae1ee12e37c",
									false,
								},
								
								{
									"c051b954-1537-d0de-9da5-31285b748bc5",
									true,
								},
								
								{
									"7012b9e1-9cb5-5145-95ac-e9af344be89c",
									true,
								},
							},
							name = "Ranged/support - Apply owned UWU state",
							uuid = "e088fcd6-836d-c28b-b110-15f3eab3a110",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "TensorCore.API.TensorACR.deleteAOEBlacklistEntry(1804)\n TensorCore.API.TensorACR.deleteBlacklistEntry(1804)\n TensorCore.API.TensorACR.saveDotBlacklist()\n_G.UWU_RPR_TemporaryState.gaols=nil\nif data.uwuRPRTripleGaols then data.uwuRPRTripleGaols.done=true end\nself.used=true",
							conditions = 
							{
								
								{
									"4ff0c928-a8f0-6113-b595-90f7528ad26f",
									true,
								},
								
								{
									"6d2c879b-c499-9dc5-b356-890c39ae5bc9",
									true,
								},
								
								{
									"c29c4696-82a8-c32e-9eee-0121a5b249c9",
									true,
								},
								
								{
									"cf63823f-2560-d30b-92b7-6e7b4bc382a4",
									true,
								},
							},
							name = "Melee/tank - Apply owned UWU state",
							uuid = "c711a59c-03fe-70e4-b008-501b4ad66414",
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
							name = "UWU territory",
							uuid = "a81ce083-22f3-a5b1-8fa7-2a40b8e5bd15",
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
							name = "Caster/healer plan",
							uuid = "db5fcef0-d7c9-d4f9-b2c6-9869f385722f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local T=_G.UWU_BLM_TemporaryState\nreturn T~=nil and T.gaols==true",
							name = "Owned gaol blacklist",
							uuid = "2a976462-a477-cc5d-9d59-215a63d11717",
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
							uuid = "aac8437e-58af-74b4-b325-fd64569ddfe6",
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
							name = "UWU territory",
							uuid = "1224c866-74f5-90fd-a043-af3ae1bf1ca9",
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
								20,
								22,
								30,
								34,
								39,
								41,
								19,
								21,
								32,
								37,
							},
							name = "Other roles plan",
							uuid = "47f92749-f0dd-115b-a199-2ae1ee12e37c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local T=_G.UWU_BRD_TemporaryState\nreturn T~=nil and T.gaols==true",
							name = "Owned gaol blacklist",
							uuid = "7012b9e1-9cb5-5145-95ac-e9af344be89c",
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
							uuid = "c051b954-1537-d0de-9da5-31285b748bc5",
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
							name = "UWU territory",
							uuid = "4ff0c928-a8f0-6113-b595-90f7528ad26f",
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
								20,
								22,
								30,
								34,
								39,
								41,
								19,
								21,
								32,
								37,
							},
							name = "Melee/tank plan",
							uuid = "6d2c879b-c499-9dc5-b356-890c39ae5bc9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local T=_G.UWU_RPR_TemporaryState\nreturn T~=nil and T.gaols==true",
							name = "Owned gaol blacklist",
							uuid = "cf63823f-2560-d30b-92b7-6e7b4bc382a4",
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
							uuid = "c29c4696-82a8-c32e-9eee-0121a5b249c9",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Personal gaols",
				mechanicTime = 666,
				name = "[UWU] Triple-gaol blacklist deadline",
				timeRange = true,
				timelineIndex = 90,
				timerStartOffset = -2,
				uuid = "cf642fb4-813d-7821-bb44-4e64f1fc0b7c",
				version = 2,
			},
		},
	},
	[92] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "1cd5aebc-b482-86c9-bb68-dfe58db53a7e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Personal movement",
				uuid = "26f9e92c-632a-ecda-9e40-112847c09474",
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
							actionLua = "local S=data.uwuAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal old=S.dynamic.awakenedLandslide\n-- Preserve movement across the short gap between first and awakened second wave.\nlocal finish=now+eventArgs.channelTimeMax+0.5\nlocal first=old and old[3]>=now and old[2] or now\nfinish=math.max(finish,old and old[3] or now)\nif not old or finish>old[3]+0.05 then\n S.dynamic.awakenedLandslide={\"CasterDowntime\",first,finish,1}\n S.publish()\n d(string.format(\"[UWU AutoSim] Awakened Landslide: cast=%d; movement through %.3f; cast remaining=%.2f\",eventArgs.spellID,finish,eventArgs.channelTimeMax))\nend\nself.used=true",
							conditions = 
							{
								
								{
									"ada984de-7b93-705f-9773-cc3d72b97d0a",
									true,
								},
								
								{
									"62534f3f-264b-7fe2-ae89-08084b9c2279",
									true,
								},
								
								{
									"648512c4-3045-bb07-aec7-44a9d0c8f11f",
									true,
								},
								
								{
									"c4d1cac9-faa8-ad04-a14f-0bde334918fb",
									true,
								},
							},
							name = "Forecast both Landslide waves",
							uuid = "cc0a67ba-e87a-7980-a08c-e5b654ba83a2",
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
							uuid = "ada984de-7b93-705f-9773-cc3d72b97d0a",
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
							name = "Caster or healer",
							uuid = "62534f3f-264b-7fe2-ae89-08084b9c2279",
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
							name = "Awakened waves",
							spellIDList = 
							{
								11121,
								11298,
							},
							uuid = "648512c4-3045-bb07-aec7-44a9d0c8f11f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuAutoSim; return S~=nil and not S.observed.p3end and type(eventArgs.channelTimeMax)==\"number\" and eventArgs.channelTimeMax>0",
							dequeueIfLuaFalse = true,
							name = "Active Titan forecast",
							uuid = "c4d1cac9-faa8-ad04-a14f-0bde334918fb",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Personal movement",
				eventType = 3,
				loop = true,
				mechanicTime = 671,
				name = "[UWU] Awakened Landslide - both waves",
				timeRange = true,
				timelineIndex = 92,
				timerEndOffset = 124,
				timerStartOffset = -71,
				uuid = "ec1a5dd4-cddc-8006-b849-5ffc989a3403",
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
				name = "AutoSim",
				uuid = "d52f3041-2c59-ffee-a06c-4a78a2c618bf",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Personal gaols",
				uuid = "9744ed50-c939-354a-b7b5-5069b96ba28f",
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
							actionLua = "local S=data.uwuAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal duration=eventArgs.buffDuration\nif type(duration)~=\"number\" or duration<=0 then duration=5.574 end\nS.fettersActive=true\nS.dynamic.gaolStun={\"Stun\",now,now+duration,1}\nS.dynamic.gaolMove={\"CasterDowntime\",now-0.1,now+duration+2,1}\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"4b69d712-935b-57d3-ae9c-7be1158e4870",
									true,
								},
								
								{
									"23ad91fd-d214-be13-9c26-e36a282457e1",
									true,
								},
								
								{
									"4e761968-cb7f-5adc-a69d-4e38c297848b",
									true,
								},
								
								{
									"e8d86e8d-2577-af3d-95b0-b2955de50d81",
									true,
								},
								
								{
									"fc6e7e41-5ad3-c1b8-a2b4-ec160d77d0d8",
									true,
								},
							},
							name = "Caster/healer - Apply owned UWU state",
							uuid = "26e6c01d-fc49-a85b-98f6-d9a97330b999",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.uwuAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal duration=eventArgs.buffDuration\nif type(duration)~=\"number\" or duration<=0 then duration=5.574 end\nS.fettersActive=true\nS.dynamic.gaolStun={\"Stun\",now,now+duration,1}\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"0fa02f4f-9ed5-4f74-b60e-ea1c70c8fd5a",
									true,
								},
								
								{
									"77b8b775-ee1c-7cff-ad51-5ef2123f4d6f",
									false,
								},
								
								{
									"8d9998ba-5b78-a16e-a7d4-e2a39d914998",
									true,
								},
								
								{
									"0a68498c-3a86-a0e6-bda5-cf6acc64072e",
									true,
								},
								
								{
									"24ed6b3d-a99a-6d62-ba4e-6d73ed1d200f",
									true,
								},
							},
							name = "BRD/RPR - Apply owned UWU state",
							uuid = "f1bb2961-d1b1-4ef7-b312-96c9c3f732f5",
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
							name = "UWU territory",
							uuid = "4b69d712-935b-57d3-ae9c-7be1158e4870",
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
							name = "Caster/healer plan",
							uuid = "23ad91fd-d214-be13-9c26-e36a282457e1",
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
							uuid = "4e761968-cb7f-5adc-a69d-4e38c297848b",
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
							uuid = "e8d86e8d-2577-af3d-95b0-b2955de50d81",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityID==Player.id and eventArgs.buffID==292 and data.uwuAutoSim~=nil",
							dequeueIfLuaFalse = true,
							name = "self fetters",
							uuid = "fc6e7e41-5ad3-c1b8-a2b4-ec160d77d0d8",
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
							name = "UWU territory",
							uuid = "0fa02f4f-9ed5-4f74-b60e-ea1c70c8fd5a",
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
							name = "Physical role plan",
							uuid = "77b8b775-ee1c-7cff-ad51-5ef2123f4d6f",
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
							uuid = "8d9998ba-5b78-a16e-a7d4-e2a39d914998",
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
							uuid = "0a68498c-3a86-a0e6-bda5-cf6acc64072e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityID==Player.id and eventArgs.buffID==292 and data.uwuAutoSim~=nil",
							dequeueIfLuaFalse = true,
							name = "self fetters",
							uuid = "24ed6b3d-a99a-6d62-ba4e-6d73ed1d200f",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Personal gaols",
				eventType = 8,
				loop = true,
				mechanicTime = 684,
				name = "[UWU] Observe healer gaol personal stun",
				timeRange = true,
				timelineIndex = 95,
				timerEndOffset = 25,
				timerStartOffset = -5,
				uuid = "22c46fb4-bd0c-a9bc-abbc-62a410ab40fe",
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
							actionLua = "local T=_G.UWU_BLM_TemporaryState or {}\n_G.UWU_BLM_TemporaryState=T\nif not T.gaolPriorityOptions then\n local toggles=TensorCore.API.TensorACR.getQuickToggles()\n if not toggles then return end\n T.gaolPriorityOptions={}\n for _,toggle in ipairs(toggles) do\n  local k=toggle.var\n  if string.match(k,\"_AOE$\") or string.match(k,\"_SmartAOE$\") then\n   if type(_G[k])==\"boolean\" then T.gaolPriorityOptions[k]=_G[k] end\n  end\n end\nend\nfor k in pairs(T.gaolPriorityOptions) do _G[k]=false end\nself.used=true",
							conditions = 
							{
								
								{
									"2ffd52d0-b68b-134e-90cb-230525786c2b",
									true,
								},
								
								{
									"dcb0d641-b2be-4475-935d-23587be89599",
									true,
								},
								
								{
									"97bbd71d-49bc-3987-8e88-a6233f0109cc",
									true,
								},
								
								{
									"2e21f6b9-2b47-0356-bdae-0ac972c9aff6",
									true,
								},
								
								{
									"b435de33-cfd8-0833-848f-0584802a0531",
									true,
								},
								
								{
									"dd596a49-aec6-c744-992c-da836d2c0932",
									true,
								},
							},
							name = "Caster/healer - Gaol single-target only",
							uuid = "3c802432-5574-c6c9-b864-db5552ce05b6",
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
									"2ffd52d0-b68b-134e-90cb-230525786c2b",
									true,
								},
								
								{
									"dcb0d641-b2be-4475-935d-23587be89599",
									true,
								},
								
								{
									"97bbd71d-49bc-3987-8e88-a6233f0109cc",
									true,
								},
								
								{
									"2e21f6b9-2b47-0356-bdae-0ac972c9aff6",
									true,
								},
								
								{
									"b435de33-cfd8-0833-848f-0584802a0531",
									true,
								},
								
								{
									"dd596a49-aec6-c744-992c-da836d2c0932",
									true,
								},
							},
							name = "Caster/healer - Target newly targetable gaol",
							setTarget = true,
							targetType = "Event Entity",
							uuid = "f431df6d-4da3-fe7a-9e83-99a69b7642b4",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local T=_G.UWU_BRD_TemporaryState or {}\n_G.UWU_BRD_TemporaryState=T\nif not T.gaolPriorityOptions then\n local toggles=TensorCore.API.TensorACR.getQuickToggles()\n if not toggles then return end\n T.gaolPriorityOptions={}\n for _,toggle in ipairs(toggles) do\n  local k=toggle.var\n  if string.match(k,\"_AOE$\") or string.match(k,\"_SmartAOE$\") then\n   if type(_G[k])==\"boolean\" then T.gaolPriorityOptions[k]=_G[k] end\n  end\n end\nend\nfor k in pairs(T.gaolPriorityOptions) do _G[k]=false end\nself.used=true",
							conditions = 
							{
								
								{
									"ee36e707-aa6c-1d2f-8266-0526e594d5d0",
									true,
								},
								
								{
									"cc63ef51-88ef-2635-8000-198b1b57007c",
									false,
								},
								
								{
									"33b63216-7ede-9806-8384-ed0963b26d29",
									true,
								},
								
								{
									"1769c0e1-f935-191b-aa96-1599b7fc65a7",
									true,
								},
								
								{
									"9e05ed50-d209-a08d-b01f-547c4883f02d",
									true,
								},
								
								{
									"dc71b864-c485-7044-b752-48c2713cd37e",
									true,
								},
							},
							name = "Ranged/support - Gaol single-target only",
							uuid = "a0090138-e171-1b28-8749-1cf880cd74a1",
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
									"ee36e707-aa6c-1d2f-8266-0526e594d5d0",
									true,
								},
								
								{
									"cc63ef51-88ef-2635-8000-198b1b57007c",
									false,
								},
								
								{
									"33b63216-7ede-9806-8384-ed0963b26d29",
									true,
								},
								
								{
									"1769c0e1-f935-191b-aa96-1599b7fc65a7",
									true,
								},
								
								{
									"9e05ed50-d209-a08d-b01f-547c4883f02d",
									true,
								},
								
								{
									"dc71b864-c485-7044-b752-48c2713cd37e",
									true,
								},
							},
							name = "Ranged/support - Target newly targetable gaol",
							setTarget = true,
							targetType = "Event Entity",
							uuid = "1a9a3dc5-dc72-4e64-aa10-b864d38e497f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local T=_G.UWU_RPR_TemporaryState or {}\n_G.UWU_RPR_TemporaryState=T\nif not T.gaolPriorityOptions then\n local toggles=TensorCore.API.TensorACR.getQuickToggles()\n if not toggles then return end\n T.gaolPriorityOptions={}\n for _,toggle in ipairs(toggles) do\n  local k=toggle.var\n  if string.match(k,\"_AOE$\") or string.match(k,\"_SmartAOE$\") then\n   if type(_G[k])==\"boolean\" then T.gaolPriorityOptions[k]=_G[k] end\n  end\n end\nend\nfor k in pairs(T.gaolPriorityOptions) do _G[k]=false end\nself.used=true",
							conditions = 
							{
								
								{
									"b09838c8-6a46-3dd7-bbb9-709f8f06ef59",
									true,
								},
								
								{
									"bf023334-06e5-dbac-8452-5802c30a9b33",
									true,
								},
								
								{
									"683cc435-bc20-b802-b144-62fde05c8962",
									true,
								},
								
								{
									"a384c7ef-3d95-38b0-b536-6a829b32b190",
									true,
								},
								
								{
									"34a28e64-c8d9-f6a4-a171-d156c419792d",
									true,
								},
								
								{
									"a4ba4252-0e07-2404-a272-7236c49b28c2",
									true,
								},
							},
							name = "Melee/tank - Gaol single-target only",
							uuid = "50b90455-95b2-bb43-8e8a-9a730223a58b",
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
									"b09838c8-6a46-3dd7-bbb9-709f8f06ef59",
									true,
								},
								
								{
									"bf023334-06e5-dbac-8452-5802c30a9b33",
									true,
								},
								
								{
									"683cc435-bc20-b802-b144-62fde05c8962",
									true,
								},
								
								{
									"a384c7ef-3d95-38b0-b536-6a829b32b190",
									true,
								},
								
								{
									"34a28e64-c8d9-f6a4-a171-d156c419792d",
									true,
								},
								
								{
									"a4ba4252-0e07-2404-a272-7236c49b28c2",
									true,
								},
							},
							name = "Melee/tank - Target newly targetable gaol",
							setTarget = true,
							targetType = "Event Entity",
							uuid = "dc190036-37a4-2891-8d27-f29c3bab471d",
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
							name = "UWU territory",
							uuid = "2ffd52d0-b68b-134e-90cb-230525786c2b",
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
							name = "Caster/healer plan",
							uuid = "dcb0d641-b2be-4475-935d-23587be89599",
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
							name = "Granite Gaol 1804",
							uuid = "2e21f6b9-2b47-0356-bdae-0ac972c9aff6",
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
							uuid = "b435de33-cfd8-0833-848f-0584802a0531",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local Roster = AnyoneCore.Roster\nif not Roster or not Roster.current() then return false end\nlocal slot = Roster.mySlot()\nif not slot then return false end\nreturn slot == \"H1\" or slot == \"H2\" or slot == \"M1\" or slot == \"M2\" or slot == \"R1\" or slot == \"R2\"",
							name = "Roster: DPS/healers",
							uuid = "dd596a49-aec6-c744-992c-da836d2c0932",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "97bbd71d-49bc-3987-8e88-a6233f0109cc",
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
							name = "UWU territory",
							uuid = "ee36e707-aa6c-1d2f-8266-0526e594d5d0",
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
								20,
								22,
								30,
								34,
								39,
								41,
								19,
								21,
								32,
								37,
							},
							name = "Other roles plan",
							uuid = "cc63ef51-88ef-2635-8000-198b1b57007c",
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
							name = "Granite Gaol 1804",
							uuid = "1769c0e1-f935-191b-aa96-1599b7fc65a7",
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
							uuid = "9e05ed50-d209-a08d-b01f-547c4883f02d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local Roster = AnyoneCore.Roster\nif not Roster or not Roster.current() then return false end\nlocal slot = Roster.mySlot()\nif not slot then return false end\nreturn slot == \"H1\" or slot == \"H2\" or slot == \"M1\" or slot == \"M2\" or slot == \"R1\" or slot == \"R2\"",
							name = "Roster: DPS/healers",
							uuid = "dc71b864-c485-7044-b752-48c2713cd37e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "33b63216-7ede-9806-8384-ed0963b26d29",
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
							name = "UWU territory",
							uuid = "b09838c8-6a46-3dd7-bbb9-709f8f06ef59",
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
								20,
								22,
								30,
								34,
								39,
								41,
								19,
								21,
								32,
								37,
							},
							name = "Melee/tank plan",
							uuid = "bf023334-06e5-dbac-8452-5802c30a9b33",
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
							name = "Granite Gaol 1804",
							uuid = "a384c7ef-3d95-38b0-b536-6a829b32b190",
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
							uuid = "34a28e64-c8d9-f6a4-a171-d156c419792d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local Roster = AnyoneCore.Roster\nif not Roster or not Roster.current() then return false end\nlocal slot = Roster.mySlot()\nif not slot then return false end\nreturn slot == \"H1\" or slot == \"H2\" or slot == \"M1\" or slot == \"M2\" or slot == \"R1\" or slot == \"R2\"",
							name = "Roster: DPS/healers",
							uuid = "a4ba4252-0e07-2404-a272-7236c49b28c2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "683cc435-bc20-b802-b144-62fde05c8962",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Personal gaols",
				eventType = 26,
				mechanicTime = 684,
				name = "[UWU] [Target][Titan] Granite Gaol - Non-Tanks",
				timeRange = true,
				timelineIndex = 95,
				timerEndOffset = 13,
				timerStartOffset = 3,
				uuid = "31a6caf2-e095-439e-8756-aa090ea04282",
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
							actionLua = "local T=_G.UWU_BLM_TemporaryState\nif T and T.gaolPriorityOptions then\n for k,v in pairs(T.gaolPriorityOptions) do _G[k]=v end\n T.gaolPriorityOptions=nil\nend\nself.used=true",
							conditions = 
							{
								
								{
									"f021a2d9-dc65-0247-bf94-cb95e3aa35ca",
									true,
								},
								
								{
									"1d00ff5f-d00e-ba77-ac41-09703741b84c",
									true,
								},
								
								{
									"c06e47cb-ecb0-81ae-a999-f18cc708e717",
									true,
								},
								
								{
									"2a1a1029-300b-66f4-bf41-ebdac128bc80",
									true,
								},
								
								{
									"6ed39301-bdbf-1ae9-9a3f-8799ce413f22",
									true,
								},
								
								{
									"a7d3e6df-513c-7335-a8d2-a657cf819fdd",
									false,
								},
							},
							name = "Caster/healer - Restore pre-gaol AoE settings",
							uuid = "d039738d-5c34-cc59-b900-85a7d4fbc272",
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
									"f021a2d9-dc65-0247-bf94-cb95e3aa35ca",
									true,
								},
								
								{
									"1d00ff5f-d00e-ba77-ac41-09703741b84c",
									true,
								},
								
								{
									"c06e47cb-ecb0-81ae-a999-f18cc708e717",
									true,
								},
								
								{
									"2a1a1029-300b-66f4-bf41-ebdac128bc80",
									true,
								},
								
								{
									"6ed39301-bdbf-1ae9-9a3f-8799ce413f22",
									true,
								},
								
								{
									"a7d3e6df-513c-7335-a8d2-a657cf819fdd",
									true,
								},
							},
							name = "Caster/healer - Target next Granite Gaol",
							setTarget = true,
							targetType = "Detection Target",
							uuid = "e83c7e42-c591-0b5b-95d5-87d723248390",
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
									"f021a2d9-dc65-0247-bf94-cb95e3aa35ca",
									true,
								},
								
								{
									"1d00ff5f-d00e-ba77-ac41-09703741b84c",
									true,
								},
								
								{
									"c06e47cb-ecb0-81ae-a999-f18cc708e717",
									true,
								},
								
								{
									"2a1a1029-300b-66f4-bf41-ebdac128bc80",
									true,
								},
								
								{
									"6ed39301-bdbf-1ae9-9a3f-8799ce413f22",
									true,
								},
								
								{
									"a7d3e6df-513c-7335-a8d2-a657cf819fdd",
									false,
								},
							},
							name = "Caster/healer - Restore Titan target",
							setTarget = true,
							targetContentID = 1801,
							targetType = "ContentID",
							uuid = "9fa69c9f-5bcb-43d7-a991-266f30825a89",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local T=_G.UWU_BRD_TemporaryState\nif T and T.gaolPriorityOptions then\n for k,v in pairs(T.gaolPriorityOptions) do _G[k]=v end\n T.gaolPriorityOptions=nil\nend\nself.used=true",
							conditions = 
							{
								
								{
									"9cd1348e-c6df-77cf-ad0e-bab08f59a5f1",
									true,
								},
								
								{
									"58b868fd-fe3c-2bdb-942c-8716a110f065",
									false,
								},
								
								{
									"9e448fca-e0cb-9a05-8dbb-501a37b25034",
									true,
								},
								
								{
									"eda64cc6-1d9c-f7f5-8acf-012d6a0e03f7",
									true,
								},
								
								{
									"300c50df-2f89-7057-8541-706901ee353b",
									true,
								},
								
								{
									"edb66806-daf0-377d-a811-c6aabbdde901",
									false,
								},
							},
							name = "Ranged/support - Restore pre-gaol AoE settings",
							uuid = "e0911d3b-a937-08c9-be21-ef52ef20bf5a",
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
									"9cd1348e-c6df-77cf-ad0e-bab08f59a5f1",
									true,
								},
								
								{
									"58b868fd-fe3c-2bdb-942c-8716a110f065",
									false,
								},
								
								{
									"9e448fca-e0cb-9a05-8dbb-501a37b25034",
									true,
								},
								
								{
									"eda64cc6-1d9c-f7f5-8acf-012d6a0e03f7",
									true,
								},
								
								{
									"300c50df-2f89-7057-8541-706901ee353b",
									true,
								},
								
								{
									"edb66806-daf0-377d-a811-c6aabbdde901",
									true,
								},
							},
							name = "Ranged/support - Target next Granite Gaol",
							setTarget = true,
							targetType = "Detection Target",
							uuid = "d7854999-fca9-4200-8606-fca33156f822",
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
									"9cd1348e-c6df-77cf-ad0e-bab08f59a5f1",
									true,
								},
								
								{
									"58b868fd-fe3c-2bdb-942c-8716a110f065",
									false,
								},
								
								{
									"9e448fca-e0cb-9a05-8dbb-501a37b25034",
									true,
								},
								
								{
									"eda64cc6-1d9c-f7f5-8acf-012d6a0e03f7",
									true,
								},
								
								{
									"300c50df-2f89-7057-8541-706901ee353b",
									true,
								},
								
								{
									"edb66806-daf0-377d-a811-c6aabbdde901",
									false,
								},
							},
							name = "Ranged/support - Restore Titan target",
							setTarget = true,
							targetContentID = 1801,
							targetType = "ContentID",
							uuid = "c7e8b5cf-1f4b-346d-b8e3-57ec93d6966c",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local T=_G.UWU_RPR_TemporaryState\nif T and T.gaolPriorityOptions then\n for k,v in pairs(T.gaolPriorityOptions) do _G[k]=v end\n T.gaolPriorityOptions=nil\nend\nself.used=true",
							conditions = 
							{
								
								{
									"7ce96343-7c79-8dd7-9b67-6d4efcc34849",
									true,
								},
								
								{
									"893ffaf4-0bc8-566d-b498-70bbc214649e",
									true,
								},
								
								{
									"15899877-d1d4-b022-931f-a2d62f62b78d",
									true,
								},
								
								{
									"d0405f57-0c0c-3b75-b442-bd7fa23ff902",
									true,
								},
								
								{
									"017a86e2-88df-67b8-bf62-cbc65a2f3171",
									true,
								},
								
								{
									"fd4feaed-302b-86f4-90ae-246306d10c61",
									false,
								},
							},
							name = "Melee/tank - Restore pre-gaol AoE settings",
							uuid = "9c12f8cc-c142-d06a-b7ab-f986d4ff22a3",
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
									"7ce96343-7c79-8dd7-9b67-6d4efcc34849",
									true,
								},
								
								{
									"893ffaf4-0bc8-566d-b498-70bbc214649e",
									true,
								},
								
								{
									"15899877-d1d4-b022-931f-a2d62f62b78d",
									true,
								},
								
								{
									"d0405f57-0c0c-3b75-b442-bd7fa23ff902",
									true,
								},
								
								{
									"017a86e2-88df-67b8-bf62-cbc65a2f3171",
									true,
								},
								
								{
									"fd4feaed-302b-86f4-90ae-246306d10c61",
									true,
								},
							},
							name = "Melee/tank - Target next Granite Gaol",
							setTarget = true,
							targetType = "Detection Target",
							uuid = "9189d3d9-1c2d-7320-b637-634013b6e9d8",
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
									"7ce96343-7c79-8dd7-9b67-6d4efcc34849",
									true,
								},
								
								{
									"893ffaf4-0bc8-566d-b498-70bbc214649e",
									true,
								},
								
								{
									"15899877-d1d4-b022-931f-a2d62f62b78d",
									true,
								},
								
								{
									"d0405f57-0c0c-3b75-b442-bd7fa23ff902",
									true,
								},
								
								{
									"017a86e2-88df-67b8-bf62-cbc65a2f3171",
									true,
								},
								
								{
									"fd4feaed-302b-86f4-90ae-246306d10c61",
									false,
								},
							},
							name = "Melee/tank - Restore Titan target",
							setTarget = true,
							targetContentID = 1801,
							targetType = "ContentID",
							uuid = "61e2fb33-1736-b6f9-88aa-5aa1b3d3b070",
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
							name = "UWU territory",
							uuid = "f021a2d9-dc65-0247-bf94-cb95e3aa35ca",
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
							name = "Caster/healer plan",
							uuid = "1d00ff5f-d00e-ba77-ac41-09703741b84c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "c06e47cb-ecb0-81ae-a999-f18cc708e717",
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
							uuid = "2a1a1029-300b-66f4-bf41-ebdac128bc80",
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
							uuid = "6ed39301-bdbf-1ae9-9a3f-8799ce413f22",
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
							uuid = "a7d3e6df-513c-7335-a8d2-a657cf819fdd",
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
							name = "UWU territory",
							uuid = "9cd1348e-c6df-77cf-ad0e-bab08f59a5f1",
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
								20,
								22,
								30,
								34,
								39,
								41,
								19,
								21,
								32,
								37,
							},
							name = "Other roles plan",
							uuid = "58b868fd-fe3c-2bdb-942c-8716a110f065",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "9e448fca-e0cb-9a05-8dbb-501a37b25034",
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
							uuid = "eda64cc6-1d9c-f7f5-8acf-012d6a0e03f7",
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
							uuid = "300c50df-2f89-7057-8541-706901ee353b",
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
							uuid = "edb66806-daf0-377d-a811-c6aabbdde901",
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
							name = "UWU territory",
							uuid = "7ce96343-7c79-8dd7-9b67-6d4efcc34849",
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
								20,
								22,
								30,
								34,
								39,
								41,
								19,
								21,
								32,
								37,
							},
							name = "Melee/tank plan",
							uuid = "893ffaf4-0bc8-566d-b498-70bbc214649e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "15899877-d1d4-b022-931f-a2d62f62b78d",
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
							uuid = "d0405f57-0c0c-3b75-b442-bd7fa23ff902",
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
							uuid = "017a86e2-88df-67b8-bf62-cbc65a2f3171",
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
							uuid = "fd4feaed-302b-86f4-90ae-246306d10c61",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Personal gaols",
				eventType = 26,
				loop = true,
				mechanicTime = 684,
				name = "[UWU] [Target] Healer Gaol - Advance",
				timeRange = true,
				timelineIndex = 95,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "c08b75ad-8e58-8d13-900c-4054dc4fa77e",
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
							actionLua = "local S=data.uwuAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal observed=TensorCore.hasBuff(Player.id,292)\nlocal own=S.gaolEntityID and TensorCore.mGetEntity(S.gaolEntityID)\nlocal entityTrapped=own and own.alive and own.targetable and own.hp.current>0\nif observed or entityTrapped then\n local firstObservation=not S.fettersActive\n S.fettersActive=true\n if not S.dynamic.gaolStun then S.dynamic.gaolStun={\"Stun\",now,now+1,1} end\n if not S.dynamic.gaolMove then S.dynamic.gaolMove={\"CasterDowntime\",now,now+3,1} end\n if firstObservation then\n  S.dynamic.gaolStun[2]=math.min(S.dynamic.gaolStun[2],now)\n  S.dynamic.gaolMove[2]=math.min(S.dynamic.gaolMove[2],now)\n  S.publish()\n end\n if now>=S.dynamic.gaolStun[3]-.5 then\n  S.dynamic.gaolStun[3]=now+1;S.dynamic.gaolMove[3]=now+3\n  S.publish()\n end\nelseif S.fettersActive then\n S.dynamic.gaolStun=nil\n if S.dynamic.gaolMove then S.dynamic.gaolMove[3]=now+2 end\n S.fettersActive=nil;S.gaolCompleted=true\n S.publish();self.used=true\nend",
							conditions = 
							{
								
								{
									"75881190-dcfc-67af-a373-f2843bb0e56c",
									true,
								},
								
								{
									"4ea32acb-def8-c7c4-9a05-f6aaacbf3e41",
									true,
								},
								
								{
									"3965e7dc-ebd7-523c-8fac-f3ec5f129acb",
									true,
								},
								
								{
									"59d29f94-a18c-f3a2-a2ba-14259dcf3a4e",
									true,
								},
							},
							name = "Caster/healer - Apply owned UWU state",
							uuid = "be2f6609-6fe9-452e-ad30-a266842045d5",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.uwuAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal own=S.gaolEntityID and TensorCore.mGetEntity(S.gaolEntityID)\nlocal trapped=TensorCore.hasBuff(Player.id,292) or (own and own.alive and own.targetable and own.hp.current>0)\nif trapped then\n S.fettersActive=true\n if not S.dynamic.gaolStun then S.dynamic.gaolStun={\"Stun\",now,now+1,1};S.publish()\n elseif now>=S.dynamic.gaolStun[3]-.5 then S.dynamic.gaolStun[3]=now+1;S.publish() end\nelseif S.fettersActive then\n S.dynamic.gaolStun=nil;S.fettersActive=nil;S.gaolCompleted=true\n S.publish();self.used=true\nend",
							conditions = 
							{
								
								{
									"79fcbd4e-08cc-ed6f-a29c-0f89221c248a",
									true,
								},
								
								{
									"57b6a0cb-6d58-938a-96e7-f9d12355407e",
									false,
								},
								
								{
									"7ac858ee-b997-ce7c-abc3-ef8a6ab6d766",
									true,
								},
								
								{
									"f6f42515-9fc2-4dff-861f-703ee8f5371b",
									true,
								},
							},
							name = "Ranged/support - Apply owned UWU state",
							uuid = "f9e12658-baf1-82f7-85a3-52f68572bcfd",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.uwuAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal own=S.gaolEntityID and TensorCore.mGetEntity(S.gaolEntityID)\nlocal trapped=TensorCore.hasBuff(Player.id,292) or (own and own.alive and own.targetable and own.hp.current>0)\nif trapped then\n S.fettersActive=true\n if not S.dynamic.gaolStun then S.dynamic.gaolStun={\"Stun\",now,now+1,1};S.publish()\n elseif now>=S.dynamic.gaolStun[3]-.5 then S.dynamic.gaolStun[3]=now+1;S.publish() end\nelseif S.fettersActive then\n if S.dynamic.gaolMove then S.dynamic.gaolMove[3]=now+1 end\n S.dynamic.gaolStun=nil;S.fettersActive=nil;S.gaolCompleted=true\n S.publish();self.used=true\nend",
							conditions = 
							{
								
								{
									"f14cc466-3bb5-16a8-8f52-799ab3dfdda8",
									true,
								},
								
								{
									"1544ab6d-454d-00d8-a096-6376bb71d468",
									true,
								},
								
								{
									"7fbf8037-a438-d416-b3c5-81eba6db294c",
									true,
								},
								
								{
									"211158ee-e3d9-6c47-afdb-c663b666156a",
									true,
								},
							},
							name = "Melee/tank - Apply owned UWU state",
							uuid = "5b62bf34-bafe-a089-b28e-944ce0410eab",
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
							name = "UWU territory",
							uuid = "75881190-dcfc-67af-a373-f2843bb0e56c",
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
							name = "Caster/healer plan",
							uuid = "4ea32acb-def8-c7c4-9a05-f6aaacbf3e41",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuAutoSim\nreturn S~=nil and S.fettersActive==true",
							name = "stunned",
							uuid = "59d29f94-a18c-f3a2-a2ba-14259dcf3a4e",
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
							uuid = "3965e7dc-ebd7-523c-8fac-f3ec5f129acb",
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
							name = "UWU territory",
							uuid = "79fcbd4e-08cc-ed6f-a29c-0f89221c248a",
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
								20,
								22,
								30,
								34,
								39,
								41,
								19,
								21,
								32,
								37,
							},
							name = "Other roles plan",
							uuid = "57b6a0cb-6d58-938a-96e7-f9d12355407e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuAutoSim\nreturn S~=nil and S.fettersActive==true",
							name = "stunned",
							uuid = "f6f42515-9fc2-4dff-861f-703ee8f5371b",
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
							uuid = "7ac858ee-b997-ce7c-abc3-ef8a6ab6d766",
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
							name = "UWU territory",
							uuid = "f14cc466-3bb5-16a8-8f52-799ab3dfdda8",
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
								20,
								22,
								30,
								34,
								39,
								41,
								19,
								21,
								32,
								37,
							},
							name = "Melee/tank plan",
							uuid = "1544ab6d-454d-00d8-a096-6376bb71d468",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuAutoSim\nreturn S~=nil and S.fettersActive==true",
							name = "stunned",
							uuid = "211158ee-e3d9-6c47-afdb-c663b666156a",
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
							uuid = "7fbf8037-a438-d416-b3c5-81eba6db294c",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Personal gaols",
				loop = true,
				mechanicTime = 684,
				name = "[UWU] End healer gaol personal stun",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 95,
				timerEndOffset = 25,
				timerStartOffset = -5,
				uuid = "4caf58c8-6883-4641-95a1-5e854469a27f",
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
				name = "AutoSim",
				uuid = "a550cc58-2285-4a6b-a2d5-265998dad28c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Encounter events",
				uuid = "56d7e444-b33d-f651-a8a7-b14e92dc1cfc",
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
							actionLua = "-- Shared UWU event handler: uses the active plan, with no job restriction.\nlocal S=data.uwuAutoSim\nS.resync(\"p3end\",TensorCore.API.TensorACR.getAutoSimTime())\nself.used=true",
							conditions = 
							{
								
								{
									"6b79497b-1683-1c7c-8c30-1285dd2b04ae",
									true,
								},
								
								{
									"375ccb9b-ab24-52cf-9cc8-c4c5c2d50599",
									true,
								},
								
								{
									"b38a199b-e393-d81b-8c99-4d621238725c",
									true,
								},
								
								{
									"984c75dc-c029-1e51-bb10-ae961b8fac84",
									true,
								},
								
								{
									"12ecf902-1df7-85c5-8f0e-a448a853eabf",
									true,
								},
								
								{
									"38bfe749-b8f6-0fe5-83d0-7daed85acaa0",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "466d8ded-d4ed-3f3c-b881-d4755bd188c1",
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
							name = "UWU territory",
							uuid = "6b79497b-1683-1c7c-8c30-1285dd2b04ae",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.uwuAutoSim~=nil",
							name = "Encounter initialized",
							uuid = "375ccb9b-ab24-52cf-9cc8-c4c5c2d50599",
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
							uuid = "b38a199b-e393-d81b-8c99-4d621238725c",
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
							uuid = "984c75dc-c029-1e51-bb10-ae961b8fac84",
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
							uuid = "12ecf902-1df7-85c5-8f0e-a448a853eabf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuAutoSim\nreturn S~=nil and S.observed.p3end==nil",
							name = "anchor pending",
							uuid = "38bfe749-b8f6-0fe5-83d0-7daed85acaa0",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Encounter events",
				eventType = 26,
				loop = true,
				mechanicTime = 768,
				name = "[UWU] Resync p3end",
				timeRange = true,
				timelineIndex = 113,
				timerEndOffset = 30,
				timerStartOffset = -65,
				uuid = "ef473743-ffef-d203-915b-7cd83bc8e8eb",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Job options",
				uuid = "bdeef5ab-14f1-1446-a7ba-c808606e8690",
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
							actionLua = "local T=_G.UWU_BLM_TemporaryState or {}\n_G.UWU_BLM_TemporaryState=T\nTensorCore.API.TensorACR.holdActionUntil(3573,Now()+180000)\nT.leyHold=\"Titan\"\nself.used=true",
							conditions = 
							{
								
								{
									"95c55ba5-024a-d1c1-80ae-65a6ab3823d9",
									true,
								},
								
								{
									"b79f5083-148a-bf37-a8cd-b55d4290d54b",
									true,
								},
								
								{
									"d2def2cb-d760-f232-84b4-2e189b9b3cb5",
									true,
								},
								
								{
									"e6c697f3-3e57-b070-8909-fc37d0801b90",
									true,
								},
								
								{
									"4ac716c9-dbc6-f508-b543-09e195232575",
									true,
								},
								
								{
									"148a76dc-a0af-5c54-bdea-ad3bcb586b53",
									true,
								},
							},
							name = "BLM - Reserve Ley Lines for next phase",
							uuid = "0fbb9f33-d1b4-6b44-830a-9a03553a1ef9",
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
							name = "UWU territory",
							uuid = "95c55ba5-024a-d1c1-80ae-65a6ab3823d9",
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
							},
							name = "Supported jobs: BLM",
							uuid = "b79f5083-148a-bf37-a8cd-b55d4290d54b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							comparator = 2,
							conditionType = 3,
							hpValue = 5,
							name = "Titan at most 5%",
							uuid = "4ac716c9-dbc6-f508-b543-09e195232575",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuAutoSim\nreturn S~=nil and S.observed.p3end==nil",
							name = "Phase not finished",
							uuid = "148a76dc-a0af-5c54-bdea-ad3bcb586b53",
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
							uuid = "d2def2cb-d760-f232-84b4-2e189b9b3cb5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 1801,
							name = "Titan target",
							uuid = "e6c697f3-3e57-b070-8909-fc37d0801b90",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Job options",
				mechanicTime = 768,
				name = "[UWU] Save Ley Lines at Titan 5%",
				throttleTime = 500,
				timeRange = true,
				timelineIndex = 113,
				timerEndOffset = 30,
				timerStartOffset = -168,
				uuid = "9442fb4a-b7b5-6d30-aa9f-24f02c0aabb4",
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
				name = "AutoSim",
				uuid = "449051f9-2987-6bbd-96e0-ad4c1d795d48",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Encounter events",
				uuid = "6fd106b0-5874-ee02-9747-dfc55b496d69",
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
									"28208f68-46f7-8ae8-892f-c5abd34e6e89",
									true,
								},
								
								{
									"93514763-8ba9-da01-bef9-1bf4cc81085d",
									true,
								},
								
								{
									"16625d56-98f7-1360-a4f8-af4f3f55e4a0",
									true,
								},
								
								{
									"4c656301-241d-b107-8cc4-5da980017f38",
									true,
								},
								
								{
									"a83d27dc-29b7-2dad-9ac1-d394c84daa6d",
									true,
								},
							},
							name = "Target nearest Magitek Bit",
							setTarget = true,
							targetContentID = 5563,
							targetType = "ContentID",
							uuid = "c9255d4e-041c-4628-83d5-248471f60fc8",
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
							name = "UWU territory",
							uuid = "28208f68-46f7-8ae8-892f-c5abd34e6e89",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.uwuAutoSim~=nil",
							name = "Encounter initialized",
							uuid = "93514763-8ba9-da01-bef9-1bf4cc81085d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "16625d56-98f7-1360-a4f8-af4f3f55e4a0",
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
							uuid = "4c656301-241d-b107-8cc4-5da980017f38",
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
							uuid = "a83d27dc-29b7-2dad-9ac1-d394c84daa6d",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Encounter events",
				eventType = 26,
				loop = true,
				mechanicTime = 800,
				name = "[UWU] [Target] Magitek Bits",
				timeRange = true,
				timelineIndex = 114,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "b12202a6-bea8-efc3-ac38-964457d8646e",
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
							actionLua = "-- Shared UWU event handler: uses the active plan, with no job restriction.\nlocal S=data.uwuAutoSim\nS.bits=S.bits or {}\nlocal id=eventArgs.entityID\nif eventArgs.isTargetable then\n S.bits[id]=true;S.resync(\"titan3Back\",TensorCore.API.TensorACR.getAutoSimTime())\nelseif S.bits[id]~=nil then\n S.bits[id]=false\n local count=0\n for _,up in pairs(S.bits) do if up then self.used=true;return end;count=count+1 end\n if count==6 then S.resync(\"magitekBit1\",TensorCore.API.TensorACR.getAutoSimTime()) end\nend\nself.used=true",
							conditions = 
							{
								
								{
									"3aa51768-0d80-e02f-be52-9b54e6e79a28",
									true,
								},
								
								{
									"913326a7-5da7-2c6b-989f-459abbe04a1a",
									true,
								},
								
								{
									"58fa7b53-d27e-b619-bb8e-e0929f871d58",
									true,
								},
								
								{
									"456f8a91-3726-a71f-9e5f-e155c3783440",
									true,
								},
								
								{
									"3c579119-7cc1-35a0-9c21-0954d91f7746",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "7d0a35a5-b47e-57c8-9c2d-972112a34fad",
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
							name = "UWU territory",
							uuid = "3aa51768-0d80-e02f-be52-9b54e6e79a28",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.uwuAutoSim~=nil",
							name = "Encounter initialized",
							uuid = "913326a7-5da7-2c6b-989f-459abbe04a1a",
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
							uuid = "456f8a91-3726-a71f-9e5f-e155c3783440",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.uwuAutoSim~=nil",
							name = "configured",
							uuid = "3c579119-7cc1-35a0-9c21-0954d91f7746",
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
							uuid = "58fa7b53-d27e-b619-bb8e-e0929f871d58",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Encounter events",
				eventType = 26,
				loop = true,
				mechanicTime = 800,
				name = "[UWU] Resync six Magitek Bits",
				timeRange = true,
				timelineIndex = 114,
				timerEndOffset = 25,
				timerStartOffset = -20,
				uuid = "07471dbe-4805-19e0-b341-6cc07f1315d6",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Limit Break",
				uuid = "db25b935-88ab-e9e9-b34b-dea5d75f9e09",
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
							actionLua = "local S=data.uwuAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nS.lbObserved=true;S.lbStarted=now;S.lbCompleted=nil;S.lbCancelled=nil;S.lbCastingSeen=nil\nS.dynamic.meteorLock={\"Stun\",now,now+12.6,1}\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"ded67bfe-b669-d026-8e42-ad2210964480",
									true,
								},
								
								{
									"8b8b539d-ee00-e677-9d39-869d2976df41",
									true,
								},
								
								{
									"d00679bc-b024-4a0c-a7ad-0130834314f0",
									true,
								},
								
								{
									"403797ab-80f2-6536-9059-f4156f6ef9a8",
									true,
								},
								
								{
									"4d825618-aa3a-6e96-b416-0fc20edc8e5d",
									true,
								},
							},
							name = "BLM - Correct personal Meteor stun",
							uuid = "0d4156a2-f5ed-c7be-a28e-5e81737f6f70",
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
							name = "UWU territory",
							uuid = "ded67bfe-b669-d026-8e42-ad2210964480",
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
							},
							name = "Caster DPS",
							uuid = "8b8b539d-ee00-e677-9d39-869d2976df41",
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
							uuid = "d00679bc-b024-4a0c-a7ad-0130834314f0",
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
								4246,
								7862,
								34867,
							},
							uuid = "403797ab-80f2-6536-9059-f4156f6ef9a8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityID==Player.id and data.uwuAutoSim~=nil",
							dequeueIfLuaFalse = true,
							name = "Personal Meteor",
							uuid = "4d825618-aa3a-6e96-b416-0fc20edc8e5d",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Limit Break",
				eventType = 3,
				loop = true,
				mechanicTime = 800,
				name = "[UWU] Meteor start animation-lock forecast",
				timeRange = true,
				timelineIndex = 114,
				timerEndOffset = 35,
				timerStartOffset = -20,
				uuid = "53753056-7f1f-1454-92ca-7ed2376031ce",
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
							actionLua = "local S=data.uwuAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nS.lbObserved=true;S.lbCompleted=true\nS.dynamic.meteorLock={\"Stun\",S.lbStarted or now-4.5,now+8.1,1}\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"59b88fe1-91c5-8159-9dbc-8724f73ed30a",
									true,
								},
								
								{
									"15992bed-a39b-205c-a969-797f8cce2d3f",
									true,
								},
								
								{
									"7e0bcafa-13e8-619c-94c6-884fa2576dd2",
									true,
								},
								
								{
									"97855fb3-e835-3fa6-9ddb-c9f8185d6e4c",
									true,
								},
								
								{
									"910a1a42-555b-2ff1-b7c4-6a1071c95bb0",
									true,
								},
							},
							name = "BLM - Correct personal Meteor stun",
							uuid = "467d076d-afdf-55a8-a9d8-5224f513a485",
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
							name = "UWU territory",
							uuid = "59b88fe1-91c5-8159-9dbc-8724f73ed30a",
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
							},
							name = "Caster DPS",
							uuid = "15992bed-a39b-205c-a969-797f8cce2d3f",
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
							uuid = "7e0bcafa-13e8-619c-94c6-884fa2576dd2",
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
								4246,
								7862,
								34867,
							},
							uuid = "97855fb3-e835-3fa6-9ddb-c9f8185d6e4c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityID==Player.id and data.uwuAutoSim~=nil",
							dequeueIfLuaFalse = true,
							name = "Personal Meteor",
							uuid = "910a1a42-555b-2ff1-b7c4-6a1071c95bb0",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Limit Break",
				eventType = 2,
				loop = true,
				mechanicTime = 800,
				name = "[UWU] Meteor finish animation-lock forecast",
				timeRange = true,
				timelineIndex = 114,
				timerEndOffset = 35,
				timerStartOffset = -20,
				uuid = "796b2e09-a96a-a30e-b6f4-ce7ac97719bc",
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
							actionLua = "local lbIDs={[205]=true,[4246]=true,[7862]=true,[34867]=true}\nlocal S=data.uwuAutoSim\nlocal p=TensorCore.mGetPlayer()\nif not p then return end\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal elapsed=now-S.lbStarted\nlocal cast=p.castinginfo\nif lbIDs[cast.castingid] or lbIDs[cast.channelingid] then\n S.lbCastingSeen=true\n return\nend\n-- Allow queued cast-completion events to arrive before interpreting a stopped cast.\nif elapsed<0.5 then return end\nif elapsed>=4.25 and elapsed<5.25 and p.alive then return end\nif elapsed>=4.25 and p.alive and lbIDs[cast.lastcastid] then\n S.lbCompleted=true\n S.dynamic.meteorLock={\"Stun\",S.lbStarted,S.lbStarted+12.6,1}\nelse\n S.lbCancelled=true\n S.dynamic.meteorLock=nil\nend\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"6a9723d5-28b1-7e02-b314-b51962965cb4",
									true,
								},
								
								{
									"dc462715-1ce2-d97d-ab2a-042bad92a5ac",
									true,
								},
								
								{
									"d97e44ab-e95c-92ee-b813-a4ab69caa4d5",
									true,
								},
								
								{
									"0190fda6-13eb-6af1-97bd-82d2f0b3ad4e",
									true,
								},
							},
							name = "BLM - Resolve Meteor completion or cancellation",
							uuid = "34bd23da-f458-0a0c-95a4-5f0ee07dda41",
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
							name = "UWU territory",
							uuid = "6a9723d5-28b1-7e02-b314-b51962965cb4",
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
							},
							name = "Caster DPS",
							uuid = "dc462715-1ce2-d97d-ab2a-042bad92a5ac",
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
							uuid = "d97e44ab-e95c-92ee-b813-a4ab69caa4d5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuAutoSim\nreturn S~=nil and S.lbStarted~=nil and not S.lbCompleted and not S.lbCancelled",
							name = "Personal Meteor pending",
							uuid = "0190fda6-13eb-6af1-97bd-82d2f0b3ad4e",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Limit Break",
				loop = true,
				mechanicTime = 800,
				name = "[UWU] Clear cancelled Meteor lock",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 114,
				timerEndOffset = 40,
				timerStartOffset = -20,
				uuid = "6bf00e0f-7478-dbf0-b688-17f5e09536a9",
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
							actionID = 205,
							castPosX = 100,
							castPosZ = 100,
							conditions = 
							{
								
								{
									"dc7a6312-a77c-4422-bc35-34696620d48f",
									true,
								},
								
								{
									"dd0a4c17-89e6-8f95-9acc-dc850d5fd6b5",
									true,
								},
								
								{
									"47f333c9-1ebf-7e1c-832b-0f95f9d47485",
									true,
								},
								
								{
									"d765f639-8bea-2f5a-ab41-650f6cd6a0e0",
									true,
								},
								
								{
									"cb116f40-5536-0655-9e87-f891fe429ef9",
									true,
								},
								
								{
									"20c1b49a-4f6c-30d7-b621-abdcd955fb1c",
									true,
								},
								
								{
									"af0284f5-c9ef-ec42-910f-3f51f4bb0eb4",
									true,
								},
							},
							isAreaTarget = true,
							name = "BLM Meteor at centre",
							uuid = "78b07c28-c10f-47ec-8e39-826f08aa0a91",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 4246,
							castPosX = 100,
							castPosZ = 100,
							conditions = 
							{
								
								{
									"dc7a6312-a77c-4422-bc35-34696620d48f",
									true,
								},
								
								{
									"dd0a4c17-89e6-8f95-9acc-dc850d5fd6b5",
									true,
								},
								
								{
									"47f333c9-1ebf-7e1c-832b-0f95f9d47485",
									true,
								},
								
								{
									"d765f639-8bea-2f5a-ab41-650f6cd6a0e0",
									true,
								},
								
								{
									"cb116f40-5536-0655-9e87-f891fe429ef9",
									true,
								},
								
								{
									"e6f3b9b6-846c-fe4e-a3c2-e71e922e792f",
									true,
								},
								
								{
									"af0284f5-c9ef-ec42-910f-3f51f4bb0eb4",
									true,
								},
							},
							isAreaTarget = true,
							name = "SMN Teraflare at centre",
							uuid = "b39d8630-69af-099e-a67c-b5d573c182d1",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7862,
							castPosX = 100,
							castPosZ = 100,
							conditions = 
							{
								
								{
									"dc7a6312-a77c-4422-bc35-34696620d48f",
									true,
								},
								
								{
									"dd0a4c17-89e6-8f95-9acc-dc850d5fd6b5",
									true,
								},
								
								{
									"47f333c9-1ebf-7e1c-832b-0f95f9d47485",
									true,
								},
								
								{
									"d765f639-8bea-2f5a-ab41-650f6cd6a0e0",
									true,
								},
								
								{
									"cb116f40-5536-0655-9e87-f891fe429ef9",
									true,
								},
								
								{
									"6de4fa69-e865-627b-8bdd-4c3bfcc26bf8",
									true,
								},
								
								{
									"af0284f5-c9ef-ec42-910f-3f51f4bb0eb4",
									true,
								},
							},
							isAreaTarget = true,
							name = "RDM Vermilion Scourge at centre",
							uuid = "b07e1cbe-abaf-e0e0-a4f1-79bbab50d9ee",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 34867,
							castPosX = 100,
							castPosZ = 100,
							conditions = 
							{
								
								{
									"dc7a6312-a77c-4422-bc35-34696620d48f",
									true,
								},
								
								{
									"dd0a4c17-89e6-8f95-9acc-dc850d5fd6b5",
									true,
								},
								
								{
									"47f333c9-1ebf-7e1c-832b-0f95f9d47485",
									true,
								},
								
								{
									"d765f639-8bea-2f5a-ab41-650f6cd6a0e0",
									true,
								},
								
								{
									"cb116f40-5536-0655-9e87-f891fe429ef9",
									true,
								},
								
								{
									"4dc076c9-8947-9938-b77d-f2b0165c4614",
									true,
								},
								
								{
									"af0284f5-c9ef-ec42-910f-3f51f4bb0eb4",
									true,
								},
							},
							isAreaTarget = true,
							name = "PCT Chromatic Fantasy at centre",
							uuid = "0e9382e8-58c7-b2bb-b0d8-f7ea4a6b8900",
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
							name = "UWU territory",
							uuid = "dc7a6312-a77c-4422-bc35-34696620d48f",
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
							},
							name = "Caster DPS",
							uuid = "dd0a4c17-89e6-8f95-9acc-dc850d5fd6b5",
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
							uuid = "47f333c9-1ebf-7e1c-832b-0f95f9d47485",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 1530,
							category = "Self",
							name = "Beyond Limits",
							uuid = "d765f639-8bea-2f5a-ab41-650f6cd6a0e0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local current,maximum=TensorCore.getLBGauge()\nif maximum<=0 or current<maximum then return false end\nlocal n=0\nfor _,e in pairs(TensorCore.entityList(\"contentid=5563\")) do\n if e.alive and e.targetable then\n  if (e.pos.x-100)^2+(e.pos.z-100)^2>196 then return false end\n  n=n+1\n end\nend\nreturn n==6",
							name = "Six live bits inside centre LB",
							uuid = "cb116f40-5536-0655-9e87-f891fe429ef9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								25,
							},
							name = "BLM Meteor",
							uuid = "20c1b49a-4f6c-30d7-b621-abdcd955fb1c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								27,
							},
							name = "SMN Teraflare",
							uuid = "e6f3b9b6-846c-fe4e-a3c2-e71e922e792f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								35,
							},
							name = "RDM Vermilion Scourge",
							uuid = "6de4fa69-e865-627b-8bdd-4c3bfcc26bf8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								42,
							},
							name = "PCT Chromatic Fantasy",
							uuid = "4dc076c9-8947-9938-b77d-f2b0165c4614",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- Profile-owned settings, loaded before any GUI or gameplay consumer.\nif not _G.UWU_AutoSimSettingsStore then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[UWU-AutoSim.lua]]\n local saved={}\n if FileExists(path) then\n  local loaded=FileLoad(path)\n  if type(loaded)==\"table\" then saved=loaded end\n end\n local specs={\n  UWU_AutoSimSettings={autoCasterLB=true,autoMeleeLB=true,vulcanKnockback=true,casterNailLifetime=true,casterNailCastBudget=2.8,spinyTarget=true,spinyEarly=false,adjustKillTimes=false,garudaSeconds=130,ifritSeconds=100,titanSeconds=125,fakeMelee=false,slowerGroup=false,garudaExtra=0,ifritExtra=0,titanExtra=0,killExtra=0},\n  UWU_BLM_AutoSimConfig={poolLaha=true,priorityGaols=true,roulette=true,raidBuffs=true,buffGain=17,nails=true,closePair=true,surecast=true,manaward=true,holdTripleLateGaruda=true,garudaEndSeconds=133.235,ifritEndAfterFirstDisappear=40.328,tripleHoldLeadSeconds=8,burstWeight20261029=true},\n  UWU_BRD_AutoSimConfig={poolLaha=true,priorityGaols=true,raidBuffs=false,buffGain=16.87},\n  UWU_RPR_AutoSimConfig={lbWho=2,poolLaha=true,priorityGaols=true,raidBuffs=false,buffGain=17,burstWeight20261029=true},\n  UWU_AutoSimUI={general=true,garuda=false,ifrit=false,titan=false,ultima=false}\n }\n local ranges={buffGain={0,40},lbWho={1,2},casterNailCastBudget={0.5,5},garudaSeconds={90,240},ifritSeconds={70,240},titanSeconds={80,240},garudaExtra={0,90},ifritExtra={0,90},titanExtra={0,90},killExtra={0,90},tripleHoldLeadSeconds={0,20},garudaEndSeconds={110,180},ifritEndAfterFirstDisappear={20,90}}\n for name,defaults in pairs(specs) do\n  local current=_G[name]\n  local disk=type(saved[name])==\"table\" and saved[name] or {}\n  local values={}\n  for key,default in pairs(defaults) do\n   -- Disk wins on a fresh Lua session even if an older initializer already ran.\n   local value=disk[key]\n   if value==nil and current then value=current[key] end\n   if type(value)~=type(default) then value=default end\n   local range=ranges[key]\n   if range and (value~=value or value<range[1] or value>range[2] or (key==\"lbWho\" and value%1~=0)) then value=default end\n   values[key]=value\n  end\n  _G[name]=values\n end\n local store={}\n function store.save()\n  local out={}\n  for name,defaults in pairs(specs) do\n   out[name]={}\n   for key in pairs(defaults) do out[name][key]=_G[name][key] end\n  end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,out)\n end\n _G.UWU_AutoSimSettingsStore=store\n store.save()\nend\n\nreturn _G.UWU_AutoSimSettings==nil or _G.UWU_AutoSimSettings.autoCasterLB~=false",
							name = "Shared option enabled",
							uuid = "af0284f5-c9ef-ec42-910f-3f51f4bb0eb4",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Limit Break",
				mechanicTime = 800,
				name = "[UWU] Buff-owned caster LB3 centre",
				timeRange = true,
				timelineIndex = 114,
				timerEndOffset = 10,
				timerStartOffset = -3,
				uuid = "f1b8a860-de05-0437-9770-8e88751f7b1a",
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
							actionLua = "local lbIDs={[205]=true,[4246]=true,[7862]=true,[34867]=true}\nlocal p=Player.pos\nlocal c=Player.castinginfo\nif lbIDs[c.castingid] or lbIDs[c.channelingid] then return end\nArgus.addCircleFilled(100,0,100,1.2,40,0x4000FF00,0xFF00FF00,2)\nlocal dx,dz=100-p.x,100-p.z\nlocal dist=math.sqrt(dx*dx+dz*dz)\nif dist>1.5 then\n Argus.addArrowFilled(p.x,p.y,p.z,math.max(0,dist-1),0.5,1,1,math.atan2(dx,dz),0x5000FF00,0xFF00FF00,1)\nend\nself.used=true",
							conditions = 
							{
								
								{
									"ad34ffed-b8aa-c81f-8a55-d1488ab6ae46",
									true,
								},
								
								{
									"945c3ea0-8dea-2b86-a4c8-dd4a296d4eec",
									true,
								},
								
								{
									"0351e333-ea31-7bc5-8887-cd4d3cae62e8",
									true,
								},
								
								{
									"30f4c7e7-5f2a-ccb1-913c-0405fa5f1fc6",
									true,
								},
								
								{
									"62d5d990-cd56-b59b-acd1-fdb81c7bc756",
									true,
								},
							},
							name = "BLM - Green centre circle and personal arrow",
							uuid = "0926f228-0347-e571-ad85-ea1eab9c2e64",
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
							name = "UWU territory",
							uuid = "ad34ffed-b8aa-c81f-8a55-d1488ab6ae46",
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
							},
							name = "Caster DPS",
							uuid = "945c3ea0-8dea-2b86-a4c8-dd4a296d4eec",
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
							uuid = "0351e333-ea31-7bc5-8887-cd4d3cae62e8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 1530,
							category = "Self",
							name = "Beyond Limits",
							uuid = "30f4c7e7-5f2a-ccb1-913c-0405fa5f1fc6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return next(TensorCore.entityList(\"contentid=2143\"))~=nil",
							name = "Lahabrea intermission actor present",
							uuid = "62d5d990-cd56-b59b-acd1-fdb81c7bc756",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Limit Break",
				eventType = 12,
				loop = true,
				mechanicTime = 800,
				name = "[UWU] Caster LB centre guidance",
				timeRange = true,
				timelineIndex = 114,
				timerEndOffset = 10,
				timerStartOffset = -65,
				uuid = "bd84a0c1-fade-ae83-bef2-352037d4a0b2",
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
				name = "AutoSim",
				uuid = "14d9573e-8b4e-177a-a02d-290a3c52be0a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "DoT forecasts",
				uuid = "44b88cae-e67c-27b3-b733-f4ef8b1c6912",
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
							actionLua = "local S=data.uwuAutoSim\nif not S or not S.publishDots then return end\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal id=eventArgs.entityID\nlocal gaps=S.dotGaps[id] or {};S.dotGaps[id]=gaps\nlocal last=gaps[#gaps]\nif eventArgs.isTargetable then\n if last and not last[2] then last[2]=now end\nelse\n if eventArgs.entityContentID==1185 then S.ifritLastUntargetable=now end\n if not last or last[2] then gaps[#gaps+1]={now} end\nend\nif id==S.dotEntityID then S.publishDots() end\nself.used=true",
							conditions = 
							{
								
								{
									"4633e15a-7b46-fbaa-8260-7c132b4ca5b4",
									true,
								},
								
								{
									"c6ed7800-4ac0-fa27-aa26-bff737d22601",
									true,
								},
								
								{
									"0b48ceaa-a8a0-deb9-89b3-97c5a9293a8b",
									true,
								},
								
								{
									"61fb0b3f-4985-9f40-8908-cc0579dbdde9",
									true,
								},
							},
							name = "BLM - Record native DoT gap",
							uuid = "14a1e87d-9c9f-3b66-8ebc-1d1b3e02998b",
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
							name = "UWU territory",
							uuid = "4633e15a-7b46-fbaa-8260-7c132b4ca5b4",
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
							},
							name = "BLM Thunder only",
							uuid = "c6ed7800-4ac0-fa27-aa26-bff737d22601",
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
							uuid = "0b48ceaa-a8a0-deb9-89b3-97c5a9293a8b",
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
							uuid = "61fb0b3f-4985-9f40-8908-cc0579dbdde9",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/DoT forecasts",
				eventType = 26,
				loop = true,
				mechanicTime = 840,
				name = "[UWU] Ultima Thunder availability",
				timeRange = true,
				timelineIndex = 116,
				timerEndOffset = 500,
				timerStartOffset = -20,
				uuid = "807b2bda-93bc-7422-82d3-212684cf8f45",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Encounter events",
				uuid = "c49c22a5-604d-06cd-8efa-9af159c44d05",
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
							actionLua = "-- Shared UWU event handler: uses the active plan, with no job restriction.\nlocal S=data.uwuAutoSim\nS.resync(\"p4end\",TensorCore.API.TensorACR.getAutoSimTime())\nself.used=true",
							conditions = 
							{
								
								{
									"793274d0-ac0f-4252-8215-1ec83f0d1fbf",
									true,
								},
								
								{
									"559d38a6-b302-5973-b20d-f79a18ebb2db",
									true,
								},
								
								{
									"b5ab13fa-ce0a-dd1a-90ed-de6beac22cc0",
									true,
								},
								
								{
									"6fd36640-d84d-c129-abf5-ad0e9018b95c",
									true,
								},
								
								{
									"11364d05-538d-3492-8f86-8e7c53b311de",
									true,
								},
								
								{
									"abc3709d-8e1c-ddb9-a6e4-d6727b72c32f",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "71a2937c-a0be-7056-b3bb-22ae25ed6b3b",
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
							name = "UWU territory",
							uuid = "793274d0-ac0f-4252-8215-1ec83f0d1fbf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.uwuAutoSim~=nil",
							name = "Encounter initialized",
							uuid = "559d38a6-b302-5973-b20d-f79a18ebb2db",
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
							uuid = "b5ab13fa-ce0a-dd1a-90ed-de6beac22cc0",
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
							uuid = "6fd36640-d84d-c129-abf5-ad0e9018b95c",
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
							uuid = "11364d05-538d-3492-8f86-8e7c53b311de",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuAutoSim\nreturn S~=nil and S.observed.p4end==nil",
							name = "anchor pending",
							uuid = "abc3709d-8e1c-ddb9-a6e4-d6727b72c32f",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Encounter events",
				eventType = 26,
				loop = true,
				mechanicTime = 840,
				name = "[UWU] Resync p4end",
				timeRange = true,
				timelineIndex = 116,
				timerEndOffset = 25,
				timerStartOffset = -15,
				uuid = "1aa37fe2-0cd4-7bc3-bec1-4fa10c2492c2",
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
									"1897365e-85a9-e47c-a0ce-19080a7488e8",
									true,
								},
								
								{
									"88d3b65c-ad79-3e43-9cf1-ccab5d44665d",
									true,
								},
								
								{
									"dfef1808-f1c2-5679-bd94-4b0afc81abf1",
									true,
								},
								
								{
									"6cd78011-ae03-09e8-bd3a-2ead140df033",
									true,
								},
							},
							name = "Target Lahabrea",
							setTarget = true,
							targetContentID = 2143,
							targetType = "ContentID",
							uuid = "1ad4cbef-60ba-5dc1-8361-be309605cd37",
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
							name = "UWU territory",
							uuid = "1897365e-85a9-e47c-a0ce-19080a7488e8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.uwuAutoSim~=nil",
							name = "Encounter initialized",
							uuid = "88d3b65c-ad79-3e43-9cf1-ccab5d44665d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local e = TensorCore.getEntityByGroup(\"ContentID\", {contentid=2143, subgroup=\"Nearest\"})\nreturn e ~= nil and e.targetable == true",
							name = "Lahabrea targetable",
							uuid = "6cd78011-ae03-09e8-bd3a-2ead140df033",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "dfef1808-f1c2-5679-bd94-4b0afc81abf1",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Encounter events",
				mechanicTime = 840,
				name = "[UWU] [Target] Lahabrea on Targetable",
				timeRange = true,
				timelineIndex = 116,
				timerEndOffset = -10,
				timerStartOffset = -19,
				uuid = "130d6601-988e-620d-81ee-2389c452986c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Limit Break",
				uuid = "0a21165c-6bd9-8161-b009-3709545118d5",
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
									"bacf60e2-a030-f297-ab9a-e01fea4e525d",
									true,
								},
								
								{
									"9d37ec70-7195-cd39-be40-47d5b6349002",
									true,
								},
								
								{
									"d95d6b45-86aa-ff5c-b50d-ee34f2f8f1f1",
									true,
								},
								
								{
									"f7994a45-a1ef-fde1-aa06-87fa4c647700",
									true,
								},
								
								{
									"8ff194ec-f7a8-4fff-a37c-b6ffe14ad801",
									true,
								},
								
								{
									"b4ea17bf-9c67-8008-9ed8-417b294e217a",
									true,
								},
								
								{
									"4ca34311-cb03-3d37-8ceb-1e283ea58275",
									true,
								},
							},
							name = "RPR - Target Lahabrea",
							setTarget = true,
							targetType = "Event Entity",
							uuid = "b27aa16a-33b5-2fef-989c-f01cf9bf7b82",
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
									"bacf60e2-a030-f297-ab9a-e01fea4e525d",
									true,
								},
								
								{
									"9d37ec70-7195-cd39-be40-47d5b6349002",
									true,
								},
								
								{
									"d95d6b45-86aa-ff5c-b50d-ee34f2f8f1f1",
									true,
								},
								
								{
									"f7994a45-a1ef-fde1-aa06-87fa4c647700",
									true,
								},
								
								{
									"8ff194ec-f7a8-4fff-a37c-b6ffe14ad801",
									true,
								},
								
								{
									"b4ea17bf-9c67-8008-9ed8-417b294e217a",
									true,
								},
								
								{
									"e8643d9e-d15f-d2a5-a730-da9bf6a43050",
									true,
								},
								
								{
									"4ca34311-cb03-3d37-8ceb-1e283ea58275",
									true,
								},
							},
							gVar = "ACR_TensorNuke4_Hotbar_LimitBreak",
							name = "RPR - ACR",
							uuid = "08d1c0f6-433f-00da-b0d9-490dc2f9c8b4",
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
							name = "UWU territory",
							uuid = "bacf60e2-a030-f297-ab9a-e01fea4e525d",
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
								20,
								22,
								30,
								34,
								39,
								41,
							},
							name = "Melee DPS",
							uuid = "9d37ec70-7195-cd39-be40-47d5b6349002",
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
							uuid = "d95d6b45-86aa-ff5c-b50d-ee34f2f8f1f1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 1530,
							category = "Self",
							name = "Beyond Limits",
							uuid = "b4ea17bf-9c67-8008-9ed8-417b294e217a",
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
							name = "Lahabrea",
							uuid = "f7994a45-a1ef-fde1-aa06-87fa4c647700",
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
							uuid = "8ff194ec-f7a8-4fff-a37c-b6ffe14ad801",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local cur,max=TensorCore.getLBGauge()\nlocal e=TensorCore.mGetEntity(eventArgs.entityID)\nreturn max>0 and cur>=max and e~=nil and e.alive and e.targetable and Player.targetid==e.id",
							name = "Full LB and live Lahabrea target",
							uuid = "e8643d9e-d15f-d2a5-a730-da9bf6a43050",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- Profile-owned settings, loaded before any GUI or gameplay consumer.\nif not _G.UWU_AutoSimSettingsStore then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[UWU-AutoSim.lua]]\n local saved={}\n if FileExists(path) then\n  local loaded=FileLoad(path)\n  if type(loaded)==\"table\" then saved=loaded end\n end\n local specs={\n  UWU_AutoSimSettings={autoCasterLB=true,autoMeleeLB=true,vulcanKnockback=true,casterNailLifetime=true,casterNailCastBudget=2.8,spinyTarget=true,spinyEarly=false,adjustKillTimes=false,garudaSeconds=130,ifritSeconds=100,titanSeconds=125,fakeMelee=false,slowerGroup=false,garudaExtra=0,ifritExtra=0,titanExtra=0,killExtra=0},\n  UWU_BLM_AutoSimConfig={poolLaha=true,priorityGaols=true,roulette=true,raidBuffs=true,buffGain=17,nails=true,closePair=true,surecast=true,manaward=true,holdTripleLateGaruda=true,garudaEndSeconds=133.235,ifritEndAfterFirstDisappear=40.328,tripleHoldLeadSeconds=8,burstWeight20261029=true},\n  UWU_BRD_AutoSimConfig={poolLaha=true,priorityGaols=true,raidBuffs=false,buffGain=16.87},\n  UWU_RPR_AutoSimConfig={lbWho=2,poolLaha=true,priorityGaols=true,raidBuffs=false,buffGain=17,burstWeight20261029=true},\n  UWU_AutoSimUI={general=true,garuda=false,ifrit=false,titan=false,ultima=false}\n }\n local ranges={buffGain={0,40},lbWho={1,2},casterNailCastBudget={0.5,5},garudaSeconds={90,240},ifritSeconds={70,240},titanSeconds={80,240},garudaExtra={0,90},ifritExtra={0,90},titanExtra={0,90},killExtra={0,90},tripleHoldLeadSeconds={0,20},garudaEndSeconds={110,180},ifritEndAfterFirstDisappear={20,90}}\n for name,defaults in pairs(specs) do\n  local current=_G[name]\n  local disk=type(saved[name])==\"table\" and saved[name] or {}\n  local values={}\n  for key,default in pairs(defaults) do\n   -- Disk wins on a fresh Lua session even if an older initializer already ran.\n   local value=disk[key]\n   if value==nil and current then value=current[key] end\n   if type(value)~=type(default) then value=default end\n   local range=ranges[key]\n   if range and (value~=value or value<range[1] or value>range[2] or (key==\"lbWho\" and value%1~=0)) then value=default end\n   values[key]=value\n  end\n  _G[name]=values\n end\n local store={}\n function store.save()\n  local out={}\n  for name,defaults in pairs(specs) do\n   out[name]={}\n   for key in pairs(defaults) do out[name][key]=_G[name][key] end\n  end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,out)\n end\n _G.UWU_AutoSimSettingsStore=store\n store.save()\nend\n\nreturn _G.UWU_AutoSimSettings==nil or _G.UWU_AutoSimSettings.autoMeleeLB~=false",
							name = "Shared option enabled",
							uuid = "4ca34311-cb03-3d37-8ceb-1e283ea58275",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Limit Break",
				eventType = 26,
				mechanicTime = 840,
				name = "[UWU] Buff-owned melee LB3 Lahabrea",
				timeRange = true,
				timelineIndex = 116,
				timerEndOffset = 1,
				timerStartOffset = -25,
				uuid = "5150d9d5-a5cd-a862-92cb-1da5b70dd691",
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
							actionLua = "local S=data.uwuAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nS.lbObserved=true;S.lbCompleted=true\nS.dynamic.meleeLBLock={\"Stun\",S.lbStarted or now-4.5,now+3.7,1}\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"d197cc7a-f697-5c5c-aee4-e4831400de49",
									true,
								},
								
								{
									"d72d7fea-184f-e167-a851-0e8f76d23d22",
									true,
								},
								
								{
									"98d51c72-7d25-0d65-85c3-8f3406a25609",
									true,
								},
								
								{
									"8b71f02e-72c2-185a-9024-6784fab7d004",
									true,
								},
								
								{
									"e1420941-19e7-1000-8941-1666992a83ef",
									true,
								},
							},
							name = "RPR - Correct personal melee LB stun",
							uuid = "72398cbe-a738-9340-b5fe-64636cbef006",
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
							name = "UWU territory",
							uuid = "d197cc7a-f697-5c5c-aee4-e4831400de49",
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
								20,
								22,
								30,
								34,
								39,
								41,
							},
							name = "Melee DPS",
							uuid = "d72d7fea-184f-e167-a851-0e8f76d23d22",
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
							uuid = "98d51c72-7d25-0d65-85c3-8f3406a25609",
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
								202,
								4242,
								4243,
								7861,
								24858,
								34866,
							},
							uuid = "8b71f02e-72c2-185a-9024-6784fab7d004",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityID==Player.id and data.uwuAutoSim~=nil",
							dequeueIfLuaFalse = true,
							name = "Personal melee LB",
							uuid = "e1420941-19e7-1000-8941-1666992a83ef",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Limit Break",
				eventType = 2,
				loop = true,
				mechanicTime = 840,
				name = "[UWU] melee LB finish animation-lock forecast",
				timeRange = true,
				timelineIndex = 116,
				timerEndOffset = 25,
				timerStartOffset = -30,
				uuid = "11d7ca64-bd51-5fa6-87ab-96517571237d",
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
							actionLua = "local lbIDs={[202]=true,[4242]=true,[4243]=true,[7861]=true,[24858]=true,[34866]=true}\nlocal S=data.uwuAutoSim\nlocal p=TensorCore.mGetPlayer()\nif not p then return end\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal elapsed=now-S.lbStarted\nlocal cast=p.castinginfo\nif lbIDs[cast.castingid] or lbIDs[cast.channelingid] then\n S.lbCastingSeen=true\n return\nend\n-- Allow queued cast-completion events to arrive before interpreting a stopped cast.\nif elapsed<0.5 then return end\nif elapsed>=4.25 and elapsed<5.25 and p.alive then return end\nif elapsed>=4.25 and p.alive and lbIDs[cast.lastcastid] then\n S.lbCompleted=true\n S.dynamic.meleeLBLock={\"Stun\",S.lbStarted,S.lbStarted+8.2,1}\nelse\n S.lbCancelled=true\n S.dynamic.meleeLBLock=nil\nend\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"24996b3b-2548-2efd-b6e4-c332291340e4",
									true,
								},
								
								{
									"97647bba-6786-7795-84c3-5daaef9b634b",
									true,
								},
								
								{
									"d204e46f-fe77-4e24-a550-2dba64831293",
									true,
								},
								
								{
									"548717fb-52d1-2137-b19a-e333b1fc7b38",
									true,
								},
							},
							name = "RPR - Resolve melee LB completion or cancellation",
							uuid = "d4cfc1d1-b794-6728-94ea-db199425185c",
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
							name = "UWU territory",
							uuid = "24996b3b-2548-2efd-b6e4-c332291340e4",
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
								20,
								22,
								30,
								34,
								39,
								41,
							},
							name = "Melee DPS",
							uuid = "97647bba-6786-7795-84c3-5daaef9b634b",
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
							uuid = "d204e46f-fe77-4e24-a550-2dba64831293",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuAutoSim\nreturn S~=nil and S.lbStarted~=nil and not S.lbCompleted and not S.lbCancelled",
							name = "Personal melee LB pending",
							uuid = "548717fb-52d1-2137-b19a-e333b1fc7b38",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Limit Break",
				loop = true,
				mechanicTime = 840,
				name = "[UWU] Clear cancelled melee LB lock",
				throttleTime = 100,
				timeRange = true,
				timelineIndex = 116,
				timerEndOffset = 25,
				timerStartOffset = -30,
				uuid = "563ab134-de9b-0653-8780-c1a4f64822bd",
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
							actionLua = "local S=data.uwuAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nS.lbObserved=true;S.lbStarted=now;S.lbCompleted=nil;S.lbCancelled=nil;S.lbCastingSeen=nil\nS.dynamic.meleeLBLock={\"Stun\",now,now+8.2,1}\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"1c74752d-7d8a-3ed4-afa4-86b9c0a0bb01",
									true,
								},
								
								{
									"d2e270c5-e94c-2908-bb34-c56bb0d371cd",
									true,
								},
								
								{
									"cacae467-03b6-047f-8058-6ab7157af49a",
									true,
								},
								
								{
									"b5cfdb06-207d-c2b9-80b1-00d1fdc301f4",
									true,
								},
								
								{
									"8d2e40d6-dcb5-f93d-89ee-eaf5b1151d09",
									true,
								},
							},
							name = "RPR - Correct personal melee LB stun",
							uuid = "d639150a-d1fc-5b45-98f4-4b2a70a5aa5d",
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
							name = "UWU territory",
							uuid = "1c74752d-7d8a-3ed4-afa4-86b9c0a0bb01",
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
								20,
								22,
								30,
								34,
								39,
								41,
							},
							name = "Melee DPS",
							uuid = "d2e270c5-e94c-2908-bb34-c56bb0d371cd",
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
							uuid = "cacae467-03b6-047f-8058-6ab7157af49a",
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
								202,
								4242,
								4243,
								7861,
								24858,
								34866,
							},
							uuid = "b5cfdb06-207d-c2b9-80b1-00d1fdc301f4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityID==Player.id and data.uwuAutoSim~=nil",
							dequeueIfLuaFalse = true,
							name = "Personal melee LB",
							uuid = "8d2e40d6-dcb5-f93d-89ee-eaf5b1151d09",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Limit Break",
				eventType = 3,
				loop = true,
				mechanicTime = 840,
				name = "[UWU] melee LB start animation-lock forecast",
				timeRange = true,
				timelineIndex = 116,
				timerEndOffset = 25,
				timerStartOffset = -30,
				uuid = "8b32f855-74d3-cfd3-9757-c999bf550099",
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
				name = "AutoSim",
				uuid = "447c64a7-9023-20eb-b879-5cd0bddef305",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Job options",
				uuid = "058a6518-73d3-7b28-a94b-0aa2a7a1983d",
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
									"2555457a-5ec2-6a78-a2ba-a46c6d7df734",
									true,
								},
								
								{
									"aa659ac0-8874-7e8e-a92d-aa424517ce1d",
									true,
								},
								
								{
									"80d4d9cb-94fa-50cc-8187-8b7913c90067",
									true,
								},
								
								{
									"6729c67c-85fe-363b-8506-6065b4c75a84",
									true,
								},
								
								{
									"d137038c-ab65-1832-b29f-f048376469a1",
									true,
								},
								
								{
									"b9c37b56-2d68-f7de-886d-40ccf95d9805",
									true,
								},
							},
							name = "BLM - Release own Ley Lines hold",
							uuid = "933c013c-0c42-6088-9c64-3166f75b1213",
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
							name = "UWU territory",
							uuid = "2555457a-5ec2-6a78-a2ba-a46c6d7df734",
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
							},
							name = "Supported jobs: BLM",
							uuid = "aa659ac0-8874-7e8e-a92d-aa424517ce1d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 3,
							name = "Targetable",
							uuid = "d137038c-ab65-1832-b29f-f048376469a1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local T=_G.UWU_BLM_TemporaryState\nreturn T~=nil and T.leyHold~=nil",
							name = "Own Ley Lines reservation",
							uuid = "b9c37b56-2d68-f7de-886d-40ccf95d9805",
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
							uuid = "80d4d9cb-94fa-50cc-8187-8b7913c90067",
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
							uuid = "6729c67c-85fe-363b-8506-6065b4c75a84",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Job options",
				eventType = 26,
				mechanicTime = 848,
				name = "[UWU] Release Ley Lines at Ultima",
				timeRange = true,
				timelineIndex = 117,
				timerEndOffset = 180,
				timerStartOffset = -20,
				uuid = "73b6f4a6-e5f4-4a18-b326-4ca5f9a1bfa9",
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
				name = "AutoSim",
				uuid = "aa9fe66a-57fc-0550-9aae-ff57e54b5086",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Abilities",
				uuid = "dc772c52-7406-f8b9-9d78-ac5e137ccb27",
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
									"0591c33f-0f1a-3eba-a79b-5ab93ea5e607",
									true,
								},
								
								{
									"225a8536-e5ae-32a1-a05b-359454817698",
									true,
								},
								
								{
									"ba668587-0e80-f4ff-892b-d2c3fe89d1d2",
									true,
								},
								
								{
									"79d16a10-ea4b-c600-a6cc-82f3229c0d77",
									true,
								},
							},
							gVar = "ACR_TensorNuke4_Hotbar_Manaward",
							name = "BLM - ACR",
							uuid = "a4eb60fa-96f6-a027-994d-3d4f4e26e7b8",
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
							name = "UWU territory",
							uuid = "0591c33f-0f1a-3eba-a79b-5ab93ea5e607",
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
							},
							name = "Supported jobs: BLM",
							uuid = "225a8536-e5ae-32a1-a05b-359454817698",
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
							uuid = "ba668587-0e80-f4ff-892b-d2c3fe89d1d2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "-- Profile-owned settings, loaded before any GUI or gameplay consumer.\nif not _G.UWU_AutoSimSettingsStore then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[UWU-AutoSim.lua]]\n local saved={}\n if FileExists(path) then\n  local loaded=FileLoad(path)\n  if type(loaded)==\"table\" then saved=loaded end\n end\n local specs={\n  UWU_AutoSimSettings={autoCasterLB=true,autoMeleeLB=true,vulcanKnockback=true,casterNailLifetime=true,casterNailCastBudget=2.8,spinyTarget=true,spinyEarly=false,adjustKillTimes=false,garudaSeconds=130,ifritSeconds=100,titanSeconds=125,fakeMelee=false,slowerGroup=false,garudaExtra=0,ifritExtra=0,titanExtra=0,killExtra=0},\n  UWU_BLM_AutoSimConfig={poolLaha=true,priorityGaols=true,roulette=true,raidBuffs=true,buffGain=17,nails=true,closePair=true,surecast=true,manaward=true,holdTripleLateGaruda=true,garudaEndSeconds=133.235,ifritEndAfterFirstDisappear=40.328,tripleHoldLeadSeconds=8,burstWeight20261029=true},\n  UWU_BRD_AutoSimConfig={poolLaha=true,priorityGaols=true,raidBuffs=false,buffGain=16.87},\n  UWU_RPR_AutoSimConfig={lbWho=2,poolLaha=true,priorityGaols=true,raidBuffs=false,buffGain=17,burstWeight20261029=true},\n  UWU_AutoSimUI={general=true,garuda=false,ifrit=false,titan=false,ultima=false}\n }\n local ranges={buffGain={0,40},lbWho={1,2},casterNailCastBudget={0.5,5},garudaSeconds={90,240},ifritSeconds={70,240},titanSeconds={80,240},garudaExtra={0,90},ifritExtra={0,90},titanExtra={0,90},killExtra={0,90},tripleHoldLeadSeconds={0,20},garudaEndSeconds={110,180},ifritEndAfterFirstDisappear={20,90}}\n for name,defaults in pairs(specs) do\n  local current=_G[name]\n  local disk=type(saved[name])==\"table\" and saved[name] or {}\n  local values={}\n  for key,default in pairs(defaults) do\n   -- Disk wins on a fresh Lua session even if an older initializer already ran.\n   local value=disk[key]\n   if value==nil and current then value=current[key] end\n   if type(value)~=type(default) then value=default end\n   local range=ranges[key]\n   if range and (value~=value or value<range[1] or value>range[2] or (key==\"lbWho\" and value%1~=0)) then value=default end\n   values[key]=value\n  end\n  _G[name]=values\n end\n local store={}\n function store.save()\n  local out={}\n  for name,defaults in pairs(specs) do\n   out[name]={}\n   for key in pairs(defaults) do out[name][key]=_G[name][key] end\n  end\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,out)\n end\n _G.UWU_AutoSimSettingsStore=store\n store.save()\nend\n\nlocal C=_G.UWU_BLM_AutoSimConfig\nreturn C==nil or C.manaward==true",
							name = "option enabled",
							uuid = "79d16a10-ea4b-c600-a6cc-82f3229c0d77",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Abilities",
				mechanicTime = 1000,
				name = "[UWU] Manaward Ultima opening",
				timeRange = true,
				timelineIndex = 118,
				timerEndOffset = 2,
				uuid = "690b2764-f2d4-dc4b-a986-e43839fd26e5",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Encounter events",
				uuid = "5d45faa6-8fa1-46d0-95cf-89eab8bc2183",
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
									"4826535a-d3bb-a19c-801b-a6482c2d32cf",
									true,
								},
								
								{
									"c36b0f12-a69c-3761-b35b-025958f1f2e6",
									true,
								},
								
								{
									"1b1e3710-ce7a-fee5-8e81-dcf104a0c7a0",
									true,
								},
								
								{
									"532a486e-5de7-5e1f-ba45-dbdd4013b02a",
									true,
								},
								
								{
									"a9d30923-410f-cfc4-b4a5-093952d044ba",
									true,
								},
							},
							endIfUsed = true,
							name = "Target - Ultima",
							setTarget = true,
							targetContentID = 2137,
							targetType = "ContentID",
							uuid = "c10b4aa9-0eaf-b164-87a2-0a37f48a8a1c",
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
							name = "UWU territory",
							uuid = "4826535a-d3bb-a19c-801b-a6482c2d32cf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.uwuAutoSim~=nil",
							name = "Encounter initialized",
							uuid = "c36b0f12-a69c-3761-b35b-025958f1f2e6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "1b1e3710-ce7a-fee5-8e81-dcf104a0c7a0",
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
							uuid = "a9d30923-410f-cfc4-b4a5-093952d044ba",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local t=TensorCore.mGetTarget()\nreturn t==nil or not t.alive or not t.targetable",
							name = "No living hostile target",
							uuid = "532a486e-5de7-5e1f-ba45-dbdd4013b02a",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Encounter events",
				loop = true,
				mechanicTime = 1000,
				name = "[UWU] [Target] Ultima Reacquire",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 118,
				timerEndOffset = 650,
				uuid = "4fcc1101-e3c8-a58d-b232-22b5f9056994",
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
									"7323a43b-8da0-4a44-8748-903e0860903f",
									true,
								},
								
								{
									"5c5f18b5-250a-3b29-8bbd-36b66938a615",
									true,
								},
								
								{
									"92b18e8c-94eb-c607-a0c3-28cf416f4bf3",
									true,
								},
								
								{
									"da6f763e-99b0-8bc5-8d83-f6d6f72da569",
									true,
								},
								
								{
									"1a566b03-de89-aa47-bb8b-9bcef54770ae",
									true,
								},
							},
							name = "Target Ultima",
							setTarget = true,
							targetType = "Event Entity",
							uuid = "4de70a2f-902c-4b71-8210-e6f90a5faa82",
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
							name = "UWU territory",
							uuid = "7323a43b-8da0-4a44-8748-903e0860903f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.uwuAutoSim~=nil",
							name = "Encounter initialized",
							uuid = "5c5f18b5-250a-3b29-8bbd-36b66938a615",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "92b18e8c-94eb-c607-a0c3-28cf416f4bf3",
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
							uuid = "da6f763e-99b0-8bc5-8d83-f6d6f72da569",
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
							uuid = "1a566b03-de89-aa47-bb8b-9bcef54770ae",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Encounter events",
				eventType = 26,
				loop = true,
				mechanicTime = 1000,
				name = "[UWU] [Target] Ultima - Acquire",
				timeRange = true,
				timelineIndex = 118,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "aefb4e31-8d0d-a8ce-860e-56ac62cdebb5",
				version = 2,
			},
		},
	},
	[144] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "AutoSim",
				uuid = "0e7abf99-4355-eca8-9e17-fb1e676d07ec",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Personal movement",
				uuid = "466fe0e3-6aac-ef74-a44c-e0c04f6a524f",
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
							actionLua = "local S=data.uwuAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\n-- Five pulls: departure animation precedes the ground cast by about 1.5s.\n-- Request a short bait step before the ground cast, including both pre-Annihilation baits.\nlocal first,finish=now+0.1,now+1.9\nlocal old=S.dynamic.ultimaFeatherBait\nif not old or finish>old[3]+0.05 then\n S.dynamic.ultimaFeatherBait={\"CasterDowntime\",first,finish,1}\n S.publish()\n d(string.format(\"[UWU AutoSim] Ultima Feather Rain bait: source=%d; movement %.3f to %.3f\",eventArgs.entityID,first,finish))\nend\nself.used=true",
							conditions = 
							{
								
								{
									"cfb4eb34-477b-c402-bc9a-982db7f449e5",
									true,
								},
								
								{
									"970b6775-0b96-7dd8-a4c8-6071673380af",
									true,
								},
								
								{
									"1c79f0e7-65e5-1697-b521-8ad6e800de1c",
									true,
								},
								
								{
									"d708a298-48ba-5761-8b9b-3920c9377f54",
									true,
								},
								
								{
									"21973065-8efe-0244-8812-df03976de101",
									true,
								},
							},
							name = "Forecast short feather bait step",
							uuid = "040491e6-4f4f-b6c6-9b13-7d79aec293e0",
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
							uuid = "cfb4eb34-477b-c402-bc9a-982db7f449e5",
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
							name = "Caster or healer",
							uuid = "970b6775-0b96-7dd8-a4c8-6071673380af",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							comparator = 3,
							dequeueIfLuaFalse = true,
							eventArgType = 4,
							eventIntValue = 7738,
							name = "Departure animation",
							uuid = "1c79f0e7-65e5-1697-b521-8ad6e800de1c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local c=eventArgs.entityContentID; return eventArgs.index==1 and (c==1644 or c==1645 or c==1646)",
							dequeueIfLuaFalse = true,
							name = "Garuda or sisters",
							uuid = "d708a298-48ba-5761-8b9b-3920c9377f54",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuAutoSim; if not S or not S.observed.p4end then return false end; local t=TensorCore.API.TensorACR.getAutoSimTime()-S.time(\"p4end\"); return (t>=135 and t<=150) or (t>=183 and t<=195) or (S.cfg.roulette and S.rouletteOrder~=nil and t>=275 and t<=390)",
							dequeueIfLuaFalse = true,
							name = "Ultima bait or observed roulette",
							uuid = "21973065-8efe-0244-8812-df03976de101",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Personal movement",
				eventType = 23,
				loop = true,
				mechanicTime = 1091,
				name = "[UWU] Ultima Feather Rain - bait steps",
				timeRange = true,
				timelineIndex = 144,
				timerEndOffset = 429,
				timerStartOffset = -10,
				uuid = "3292ab17-1d25-6d0d-9122-8b0d0709efc8",
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
				uuid = "cb1d820c-3ede-cc6b-a6e7-3651fef71ec8",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Personal gaols",
				uuid = "ef8cdd6a-99b7-e48f-bf30-ca1b7070c8bd",
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
							actionLua = "local S=data.uwuAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal observed=TensorCore.hasBuff(Player.id,292)\nlocal own=S.gaolEntityID and TensorCore.mGetEntity(S.gaolEntityID)\nlocal entityTrapped=own and own.alive and own.targetable and own.hp.current>0\nif observed or entityTrapped then\n local firstObservation=not S.fettersActive\n S.fettersActive=true\n if not S.dynamic.gaolStun then S.dynamic.gaolStun={\"Stun\",now,now+1,1} end\n if not S.dynamic.gaolMove then S.dynamic.gaolMove={\"CasterDowntime\",now,now+3,1} end\n if firstObservation then\n  S.dynamic.gaolStun[2]=math.min(S.dynamic.gaolStun[2],now)\n  S.dynamic.gaolMove[2]=math.min(S.dynamic.gaolMove[2],now)\n  S.publish()\n end\n if now>=S.dynamic.gaolStun[3]-.5 then\n  S.dynamic.gaolStun[3]=now+1;S.dynamic.gaolMove[3]=now+3\n  S.publish()\n end\nelseif S.fettersActive then\n S.dynamic.gaolStun=nil\n if S.dynamic.gaolMove then S.dynamic.gaolMove[3]=now+2 end\n S.fettersActive=nil;S.gaolCompleted=true\n S.publish();self.used=true\nend",
							conditions = 
							{
								
								{
									"2971ad63-dac9-afcd-8de3-e4c97e7ef3ef",
									true,
								},
								
								{
									"d836b2a1-e72b-1833-bcd2-19d60289cac4",
									true,
								},
								
								{
									"80630d42-3b6b-e5f2-929d-acf52b584b3b",
									true,
								},
								
								{
									"4ad548df-e6d4-e8ec-a6cf-16612f7f4d32",
									true,
								},
							},
							name = "Caster/healer - Apply owned UWU state",
							uuid = "1b85d573-3ba5-0ea3-aab5-7a8404ef0da1",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.uwuAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal own=S.gaolEntityID and TensorCore.mGetEntity(S.gaolEntityID)\nlocal trapped=TensorCore.hasBuff(Player.id,292) or (own and own.alive and own.targetable and own.hp.current>0)\nif trapped then\n S.fettersActive=true\n if not S.dynamic.gaolStun then S.dynamic.gaolStun={\"Stun\",now,now+1,1};S.publish()\n elseif now>=S.dynamic.gaolStun[3]-.5 then S.dynamic.gaolStun[3]=now+1;S.publish() end\nelseif S.fettersActive then\n S.dynamic.gaolStun=nil;S.fettersActive=nil;S.gaolCompleted=true\n S.publish();self.used=true\nend",
							conditions = 
							{
								
								{
									"fa8a958a-d0bf-5b4f-8687-5386305d4685",
									true,
								},
								
								{
									"796dd9f8-71f6-3b7b-be27-c57bc4f1c585",
									false,
								},
								
								{
									"cd07b319-377c-abf8-b078-9d11c3bb0b31",
									true,
								},
								
								{
									"62edbe61-b9d5-7b12-aae8-04f311727f54",
									true,
								},
							},
							name = "Ranged/support - Apply owned UWU state",
							uuid = "0329a970-b7a1-abf5-9722-d85fcf7d2d7a",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.uwuAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal own=S.gaolEntityID and TensorCore.mGetEntity(S.gaolEntityID)\nlocal trapped=TensorCore.hasBuff(Player.id,292) or (own and own.alive and own.targetable and own.hp.current>0)\nif trapped then\n S.fettersActive=true\n if not S.dynamic.gaolStun then S.dynamic.gaolStun={\"Stun\",now,now+1,1};S.publish()\n elseif now>=S.dynamic.gaolStun[3]-.5 then S.dynamic.gaolStun[3]=now+1;S.publish() end\nelseif S.fettersActive then\n if S.dynamic.gaolMove then S.dynamic.gaolMove[3]=now+1 end\n S.dynamic.gaolStun=nil;S.fettersActive=nil;S.gaolCompleted=true\n S.publish();self.used=true\nend",
							conditions = 
							{
								
								{
									"cf7652f6-92b9-6a74-bfa5-d1439a710776",
									true,
								},
								
								{
									"22dc929c-9bcb-c931-97bf-7ca4ea2b7576",
									true,
								},
								
								{
									"26c8ec04-291a-3806-93fd-7a08a56c95d8",
									true,
								},
								
								{
									"219aaef3-7eb9-2490-ba64-2264680c1a6a",
									true,
								},
							},
							name = "Melee/tank - Apply owned UWU state",
							uuid = "6ab5ad06-1790-d112-851a-b4d1917d17fd",
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
							name = "UWU territory",
							uuid = "2971ad63-dac9-afcd-8de3-e4c97e7ef3ef",
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
							name = "Caster/healer plan",
							uuid = "d836b2a1-e72b-1833-bcd2-19d60289cac4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuAutoSim\nreturn S~=nil and S.fettersActive==true",
							name = "stunned",
							uuid = "4ad548df-e6d4-e8ec-a6cf-16612f7f4d32",
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
							uuid = "80630d42-3b6b-e5f2-929d-acf52b584b3b",
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
							name = "UWU territory",
							uuid = "fa8a958a-d0bf-5b4f-8687-5386305d4685",
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
								20,
								22,
								30,
								34,
								39,
								41,
								19,
								21,
								32,
								37,
							},
							name = "Other roles plan",
							uuid = "796dd9f8-71f6-3b7b-be27-c57bc4f1c585",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuAutoSim\nreturn S~=nil and S.fettersActive==true",
							name = "stunned",
							uuid = "62edbe61-b9d5-7b12-aae8-04f311727f54",
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
							uuid = "cd07b319-377c-abf8-b078-9d11c3bb0b31",
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
							name = "UWU territory",
							uuid = "cf7652f6-92b9-6a74-bfa5-d1439a710776",
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
								20,
								22,
								30,
								34,
								39,
								41,
								19,
								21,
								32,
								37,
							},
							name = "Melee/tank plan",
							uuid = "22dc929c-9bcb-c931-97bf-7ca4ea2b7576",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuAutoSim\nreturn S~=nil and S.fettersActive==true",
							name = "stunned",
							uuid = "219aaef3-7eb9-2490-ba64-2264680c1a6a",
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
							uuid = "26c8ec04-291a-3806-93fd-7a08a56c95d8",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Personal gaols",
				loop = true,
				mechanicTime = 1206,
				name = "[UWU] End Suppression gaol personal stun",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 190,
				timerEndOffset = 35,
				timerStartOffset = -5,
				uuid = "d602741f-178b-912d-8022-26a551aecd59",
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
							actionLua = "local S=data.uwuAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal duration=eventArgs.buffDuration\nif type(duration)~=\"number\" or duration<=0 then duration=5.574 end\nS.fettersActive=true\nS.dynamic.gaolStun={\"Stun\",now,now+duration,1}\nS.dynamic.gaolMove={\"CasterDowntime\",now-0.1,now+duration+2,1}\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"bdb75432-804b-9ed3-b379-8be11042d3a9",
									true,
								},
								
								{
									"0972238e-bf67-0535-bffd-e4cc45b152df",
									true,
								},
								
								{
									"e0ae961a-ba52-178c-a0bf-1e680bfd987c",
									true,
								},
								
								{
									"b65ac394-6a82-0f8b-b4af-7ff99faea5a5",
									true,
								},
								
								{
									"b16f007c-92ef-b8a0-98cd-d73c87fa85dc",
									true,
								},
							},
							name = "Caster/healer - Apply owned UWU state",
							uuid = "108d76c4-b142-0131-925d-8b14dc964dc2",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local S=data.uwuAutoSim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal duration=eventArgs.buffDuration\nif type(duration)~=\"number\" or duration<=0 then duration=5.574 end\nS.fettersActive=true\nS.dynamic.gaolStun={\"Stun\",now,now+duration,1}\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"231541e9-5e75-f39f-b266-08d215aa8be5",
									true,
								},
								
								{
									"d45c3110-4a58-e15c-a44c-acb1963dd5de",
									false,
								},
								
								{
									"4ebc88aa-65d7-70f7-a136-5e0f15cb69ae",
									true,
								},
								
								{
									"385e1a4c-22e7-13e1-96b0-d40fb7527dc0",
									true,
								},
								
								{
									"e6834c7f-656c-1c70-a534-ec0f5a98cf1b",
									true,
								},
							},
							name = "BRD/RPR - Apply owned UWU state",
							uuid = "047e5bbc-9890-ffec-a94a-e63ecb4c3bef",
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
							name = "UWU territory",
							uuid = "bdb75432-804b-9ed3-b379-8be11042d3a9",
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
							name = "Caster/healer plan",
							uuid = "0972238e-bf67-0535-bffd-e4cc45b152df",
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
							uuid = "e0ae961a-ba52-178c-a0bf-1e680bfd987c",
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
							uuid = "b65ac394-6a82-0f8b-b4af-7ff99faea5a5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityID==Player.id and eventArgs.buffID==292 and data.uwuAutoSim~=nil",
							dequeueIfLuaFalse = true,
							name = "self fetters",
							uuid = "b16f007c-92ef-b8a0-98cd-d73c87fa85dc",
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
							name = "UWU territory",
							uuid = "231541e9-5e75-f39f-b266-08d215aa8be5",
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
							name = "Physical role plan",
							uuid = "d45c3110-4a58-e15c-a44c-acb1963dd5de",
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
							uuid = "4ebc88aa-65d7-70f7-a136-5e0f15cb69ae",
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
							uuid = "385e1a4c-22e7-13e1-96b0-d40fb7527dc0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.entityID==Player.id and eventArgs.buffID==292 and data.uwuAutoSim~=nil",
							dequeueIfLuaFalse = true,
							name = "self fetters",
							uuid = "e6834c7f-656c-1c70-a534-ec0f5a98cf1b",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Personal gaols",
				eventType = 8,
				loop = true,
				mechanicTime = 1206,
				name = "[UWU] Observe Suppression gaol personal stun",
				timeRange = true,
				timelineIndex = 190,
				timerEndOffset = 35,
				timerStartOffset = -5,
				uuid = "cec6800a-8b9a-b32e-b5fa-1b87227a9293",
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
							actionLua = "local T=_G.UWU_BLM_TemporaryState or {}\n_G.UWU_BLM_TemporaryState=T\nif not T.gaolPriorityOptions then\n local toggles=TensorCore.API.TensorACR.getQuickToggles()\n if not toggles then return end\n T.gaolPriorityOptions={}\n for _,toggle in ipairs(toggles) do\n  local k=toggle.var\n  if string.match(k,\"_AOE$\") or string.match(k,\"_SmartAOE$\") then\n   if type(_G[k])==\"boolean\" then T.gaolPriorityOptions[k]=_G[k] end\n  end\n end\nend\nfor k in pairs(T.gaolPriorityOptions) do _G[k]=false end\nself.used=true",
							conditions = 
							{
								
								{
									"67016076-99ce-a4ce-bb0a-dc7a204d6cad",
									true,
								},
								
								{
									"ab947cf3-eff4-ba79-9ddc-f31dfa67eea9",
									true,
								},
								
								{
									"c20813b7-79b7-8011-8ae3-bddaf9ba1c59",
									true,
								},
								
								{
									"b0d0668c-db1c-e8bc-a4ed-e3e65007105e",
									true,
								},
								
								{
									"aebc2ca2-dd7e-9f6d-a962-90a910330f71",
									true,
								},
							},
							name = "Caster/healer - Gaol single-target only",
							uuid = "44fa3c48-6122-6b6b-89ff-8bac15e4af00",
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
									"67016076-99ce-a4ce-bb0a-dc7a204d6cad",
									true,
								},
								
								{
									"ab947cf3-eff4-ba79-9ddc-f31dfa67eea9",
									true,
								},
								
								{
									"c20813b7-79b7-8011-8ae3-bddaf9ba1c59",
									true,
								},
								
								{
									"b0d0668c-db1c-e8bc-a4ed-e3e65007105e",
									true,
								},
								
								{
									"aebc2ca2-dd7e-9f6d-a962-90a910330f71",
									true,
								},
							},
							name = "Caster/healer - Target nearest Granite Gaol",
							setTarget = true,
							targetType = "Event Entity",
							uuid = "4f54c299-a2fc-22e1-a0f2-ab02b257cb84",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local T=_G.UWU_BRD_TemporaryState or {}\n_G.UWU_BRD_TemporaryState=T\nif not T.gaolPriorityOptions then\n local toggles=TensorCore.API.TensorACR.getQuickToggles()\n if not toggles then return end\n T.gaolPriorityOptions={}\n for _,toggle in ipairs(toggles) do\n  local k=toggle.var\n  if string.match(k,\"_AOE$\") or string.match(k,\"_SmartAOE$\") then\n   if type(_G[k])==\"boolean\" then T.gaolPriorityOptions[k]=_G[k] end\n  end\n end\nend\nfor k in pairs(T.gaolPriorityOptions) do _G[k]=false end\nself.used=true",
							conditions = 
							{
								
								{
									"c07877fc-40bc-b57f-931b-16fcb16b9fe6",
									true,
								},
								
								{
									"e14c67be-7b84-be38-914e-53fee8bde0e7",
									false,
								},
								
								{
									"fa2a6c9d-376e-8d2d-adf8-d0664f04dbd3",
									true,
								},
								
								{
									"8f1af3ab-de13-7dee-b178-60ce5945dfcd",
									true,
								},
								
								{
									"b9ca315d-9864-e4fb-adf2-fc503e6a8ad6",
									true,
								},
							},
							name = "Ranged/support - Gaol single-target only",
							uuid = "27902971-277e-c194-8c75-cf0a4c833ab1",
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
									"c07877fc-40bc-b57f-931b-16fcb16b9fe6",
									true,
								},
								
								{
									"e14c67be-7b84-be38-914e-53fee8bde0e7",
									false,
								},
								
								{
									"fa2a6c9d-376e-8d2d-adf8-d0664f04dbd3",
									true,
								},
								
								{
									"8f1af3ab-de13-7dee-b178-60ce5945dfcd",
									true,
								},
								
								{
									"b9ca315d-9864-e4fb-adf2-fc503e6a8ad6",
									true,
								},
							},
							name = "Ranged/support - Target nearest Granite Gaol",
							setTarget = true,
							targetType = "Event Entity",
							uuid = "d27d796a-90ba-b861-830e-e090cb9ab288",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local T=_G.UWU_RPR_TemporaryState or {}\n_G.UWU_RPR_TemporaryState=T\nif not T.gaolPriorityOptions then\n local toggles=TensorCore.API.TensorACR.getQuickToggles()\n if not toggles then return end\n T.gaolPriorityOptions={}\n for _,toggle in ipairs(toggles) do\n  local k=toggle.var\n  if string.match(k,\"_AOE$\") or string.match(k,\"_SmartAOE$\") then\n   if type(_G[k])==\"boolean\" then T.gaolPriorityOptions[k]=_G[k] end\n  end\n end\nend\nfor k in pairs(T.gaolPriorityOptions) do _G[k]=false end\nself.used=true",
							conditions = 
							{
								
								{
									"bc2f255d-4b38-e9da-8656-05a569c41221",
									true,
								},
								
								{
									"63a65677-9246-3813-b517-bd2a9252d34e",
									true,
								},
								
								{
									"5e2c7f32-3145-84a0-9186-f6c7f1e8d5e9",
									true,
								},
								
								{
									"91d3974a-d738-b90a-ba99-79500629c84b",
									true,
								},
								
								{
									"d896a071-77cb-8894-a50c-8cd6990b47a2",
									true,
								},
							},
							name = "Melee/tank - Gaol single-target only",
							uuid = "e15f63a6-7a6d-2ce4-a5b0-1d32d186c4ae",
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
									"bc2f255d-4b38-e9da-8656-05a569c41221",
									true,
								},
								
								{
									"63a65677-9246-3813-b517-bd2a9252d34e",
									true,
								},
								
								{
									"5e2c7f32-3145-84a0-9186-f6c7f1e8d5e9",
									true,
								},
								
								{
									"91d3974a-d738-b90a-ba99-79500629c84b",
									true,
								},
								
								{
									"d896a071-77cb-8894-a50c-8cd6990b47a2",
									true,
								},
							},
							name = "Melee/tank - Target nearest Granite Gaol",
							setTarget = true,
							targetType = "Event Entity",
							uuid = "cd09d4dc-9aa7-8dbd-84e3-7fbf9d5c5489",
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
							name = "UWU territory",
							uuid = "67016076-99ce-a4ce-bb0a-dc7a204d6cad",
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
							name = "Caster/healer plan",
							uuid = "ab947cf3-eff4-ba79-9ddc-f31dfa67eea9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "c20813b7-79b7-8011-8ae3-bddaf9ba1c59",
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
							uuid = "aebc2ca2-dd7e-9f6d-a962-90a910330f71",
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
							uuid = "b0d0668c-db1c-e8bc-a4ed-e3e65007105e",
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
							name = "UWU territory",
							uuid = "c07877fc-40bc-b57f-931b-16fcb16b9fe6",
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
								20,
								22,
								30,
								34,
								39,
								41,
								19,
								21,
								32,
								37,
							},
							name = "Other roles plan",
							uuid = "e14c67be-7b84-be38-914e-53fee8bde0e7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "fa2a6c9d-376e-8d2d-adf8-d0664f04dbd3",
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
							uuid = "b9ca315d-9864-e4fb-adf2-fc503e6a8ad6",
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
							uuid = "8f1af3ab-de13-7dee-b178-60ce5945dfcd",
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
							name = "UWU territory",
							uuid = "bc2f255d-4b38-e9da-8656-05a569c41221",
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
								20,
								22,
								30,
								34,
								39,
								41,
								19,
								21,
								32,
								37,
							},
							name = "Melee/tank plan",
							uuid = "63a65677-9246-3813-b517-bd2a9252d34e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "5e2c7f32-3145-84a0-9186-f6c7f1e8d5e9",
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
							uuid = "d896a071-77cb-8894-a50c-8cd6990b47a2",
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
							uuid = "91d3974a-d738-b90a-ba99-79500629c84b",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Personal gaols",
				eventType = 26,
				loop = true,
				mechanicTime = 1206,
				name = "[UWU] [Target] Suppression Gaol - Acquire",
				timeRange = true,
				timelineIndex = 190,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "eb1645bd-bf2d-629f-89f5-b2a6b636239e",
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
							actionLua = "local T=_G.UWU_BLM_TemporaryState\nif T and T.gaolPriorityOptions then\n for k,v in pairs(T.gaolPriorityOptions) do _G[k]=v end\n T.gaolPriorityOptions=nil\nend\nself.used=true",
							conditions = 
							{
								
								{
									"78656535-5f0c-08e9-9dcc-4773b8a77240",
									true,
								},
								
								{
									"fdad5612-3c27-e0bd-9263-a43925372878",
									true,
								},
								
								{
									"f0df4d94-4060-87af-a738-3230a482a965",
									true,
								},
								
								{
									"f8308229-4e0f-4998-b1fa-c42c75bf1937",
									true,
								},
								
								{
									"3b60ced8-9ae7-8ab4-be45-59faf2bb2c4e",
									true,
								},
								
								{
									"c34b0f63-4511-225b-84bc-428ce5e389aa",
									false,
								},
							},
							name = "Caster/healer - Restore pre-gaol AoE settings",
							uuid = "c4d58170-f396-8d92-b4bb-1ba672fd9197",
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
									"78656535-5f0c-08e9-9dcc-4773b8a77240",
									true,
								},
								
								{
									"fdad5612-3c27-e0bd-9263-a43925372878",
									true,
								},
								
								{
									"f0df4d94-4060-87af-a738-3230a482a965",
									true,
								},
								
								{
									"f8308229-4e0f-4998-b1fa-c42c75bf1937",
									true,
								},
								
								{
									"3b60ced8-9ae7-8ab4-be45-59faf2bb2c4e",
									true,
								},
								
								{
									"c34b0f63-4511-225b-84bc-428ce5e389aa",
									true,
								},
							},
							name = "Caster/healer - Target next Granite Gaol",
							setTarget = true,
							targetType = "Detection Target",
							uuid = "4348f2d8-3b3c-035c-bfcb-87bbd6780d7a",
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
									"78656535-5f0c-08e9-9dcc-4773b8a77240",
									true,
								},
								
								{
									"fdad5612-3c27-e0bd-9263-a43925372878",
									true,
								},
								
								{
									"f0df4d94-4060-87af-a738-3230a482a965",
									true,
								},
								
								{
									"f8308229-4e0f-4998-b1fa-c42c75bf1937",
									true,
								},
								
								{
									"3b60ced8-9ae7-8ab4-be45-59faf2bb2c4e",
									true,
								},
								
								{
									"c34b0f63-4511-225b-84bc-428ce5e389aa",
									false,
								},
							},
							name = "Caster/healer - Restore Ultima target",
							setTarget = true,
							targetContentID = 2137,
							targetType = "ContentID",
							uuid = "b749a375-8476-0c8c-a795-8993c2a0581b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local T=_G.UWU_BRD_TemporaryState\nif T and T.gaolPriorityOptions then\n for k,v in pairs(T.gaolPriorityOptions) do _G[k]=v end\n T.gaolPriorityOptions=nil\nend\nself.used=true",
							conditions = 
							{
								
								{
									"04ee1605-8bdd-c6a7-b359-18cb751767c8",
									true,
								},
								
								{
									"45643370-fbd4-d25a-af6b-63721ba46fda",
									false,
								},
								
								{
									"4095bfd3-8428-2198-990d-18f572bdca85",
									true,
								},
								
								{
									"9a79993a-4cc3-029a-b741-7fac7e58974e",
									true,
								},
								
								{
									"9036f566-5b15-688c-a5ab-e8d7af97b9b4",
									true,
								},
								
								{
									"770267c2-b53a-3f41-8537-a67ad422536d",
									false,
								},
							},
							name = "Ranged/support - Restore pre-gaol AoE settings",
							uuid = "f6488606-d945-cd02-8168-24ff3ef993da",
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
									"04ee1605-8bdd-c6a7-b359-18cb751767c8",
									true,
								},
								
								{
									"45643370-fbd4-d25a-af6b-63721ba46fda",
									false,
								},
								
								{
									"4095bfd3-8428-2198-990d-18f572bdca85",
									true,
								},
								
								{
									"9a79993a-4cc3-029a-b741-7fac7e58974e",
									true,
								},
								
								{
									"9036f566-5b15-688c-a5ab-e8d7af97b9b4",
									true,
								},
								
								{
									"770267c2-b53a-3f41-8537-a67ad422536d",
									true,
								},
							},
							name = "Ranged/support - Target next Granite Gaol",
							setTarget = true,
							targetType = "Detection Target",
							uuid = "0176d7f6-7087-f1da-8e88-2f72597071ca",
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
									"04ee1605-8bdd-c6a7-b359-18cb751767c8",
									true,
								},
								
								{
									"45643370-fbd4-d25a-af6b-63721ba46fda",
									false,
								},
								
								{
									"4095bfd3-8428-2198-990d-18f572bdca85",
									true,
								},
								
								{
									"9a79993a-4cc3-029a-b741-7fac7e58974e",
									true,
								},
								
								{
									"9036f566-5b15-688c-a5ab-e8d7af97b9b4",
									true,
								},
								
								{
									"770267c2-b53a-3f41-8537-a67ad422536d",
									false,
								},
							},
							name = "Ranged/support - Restore Ultima target",
							setTarget = true,
							targetContentID = 2137,
							targetType = "ContentID",
							uuid = "f1d04283-8dbf-d6be-a9aa-cde46c31a92b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local T=_G.UWU_RPR_TemporaryState\nif T and T.gaolPriorityOptions then\n for k,v in pairs(T.gaolPriorityOptions) do _G[k]=v end\n T.gaolPriorityOptions=nil\nend\nself.used=true",
							conditions = 
							{
								
								{
									"72ba6284-32be-25e0-b4c8-a2e03854e81b",
									true,
								},
								
								{
									"6eed0ec1-2123-9447-87c2-f8de15ed24fa",
									true,
								},
								
								{
									"3b7789be-baec-af60-9341-cda5b2af8545",
									true,
								},
								
								{
									"456f7a92-e86c-83fd-8bf0-583b23692b59",
									true,
								},
								
								{
									"b6b1a5f2-3fc3-5d82-97b3-3ee4f1346407",
									true,
								},
								
								{
									"a9d4a72e-ec9a-2a32-b753-ac4d357aa0cc",
									false,
								},
							},
							name = "Melee/tank - Restore pre-gaol AoE settings",
							uuid = "d69ecfc3-ccca-a01e-87d9-4597c676d77b",
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
									"72ba6284-32be-25e0-b4c8-a2e03854e81b",
									true,
								},
								
								{
									"6eed0ec1-2123-9447-87c2-f8de15ed24fa",
									true,
								},
								
								{
									"3b7789be-baec-af60-9341-cda5b2af8545",
									true,
								},
								
								{
									"456f7a92-e86c-83fd-8bf0-583b23692b59",
									true,
								},
								
								{
									"b6b1a5f2-3fc3-5d82-97b3-3ee4f1346407",
									true,
								},
								
								{
									"a9d4a72e-ec9a-2a32-b753-ac4d357aa0cc",
									true,
								},
							},
							name = "Melee/tank - Target next Granite Gaol",
							setTarget = true,
							targetType = "Detection Target",
							uuid = "963d67da-5f82-dd25-af77-9c7532016446",
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
									"72ba6284-32be-25e0-b4c8-a2e03854e81b",
									true,
								},
								
								{
									"6eed0ec1-2123-9447-87c2-f8de15ed24fa",
									true,
								},
								
								{
									"3b7789be-baec-af60-9341-cda5b2af8545",
									true,
								},
								
								{
									"456f7a92-e86c-83fd-8bf0-583b23692b59",
									true,
								},
								
								{
									"b6b1a5f2-3fc3-5d82-97b3-3ee4f1346407",
									true,
								},
								
								{
									"a9d4a72e-ec9a-2a32-b753-ac4d357aa0cc",
									false,
								},
							},
							name = "Melee/tank - Restore Ultima target",
							setTarget = true,
							targetContentID = 2137,
							targetType = "ContentID",
							uuid = "72c24087-c248-a4d2-930d-a93e5d9a6950",
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
							name = "UWU territory",
							uuid = "78656535-5f0c-08e9-9dcc-4773b8a77240",
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
							name = "Caster/healer plan",
							uuid = "fdad5612-3c27-e0bd-9263-a43925372878",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "f0df4d94-4060-87af-a738-3230a482a965",
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
							uuid = "f8308229-4e0f-4998-b1fa-c42c75bf1937",
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
							uuid = "3b60ced8-9ae7-8ab4-be45-59faf2bb2c4e",
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
							uuid = "c34b0f63-4511-225b-84bc-428ce5e389aa",
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
							name = "UWU territory",
							uuid = "04ee1605-8bdd-c6a7-b359-18cb751767c8",
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
								20,
								22,
								30,
								34,
								39,
								41,
								19,
								21,
								32,
								37,
							},
							name = "Other roles plan",
							uuid = "45643370-fbd4-d25a-af6b-63721ba46fda",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "4095bfd3-8428-2198-990d-18f572bdca85",
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
							uuid = "9a79993a-4cc3-029a-b741-7fac7e58974e",
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
							uuid = "9036f566-5b15-688c-a5ab-e8d7af97b9b4",
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
							uuid = "770267c2-b53a-3f41-8537-a67ad422536d",
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
							name = "UWU territory",
							uuid = "72ba6284-32be-25e0-b4c8-a2e03854e81b",
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
								20,
								22,
								30,
								34,
								39,
								41,
								19,
								21,
								32,
								37,
							},
							name = "Melee/tank plan",
							uuid = "6eed0ec1-2123-9447-87c2-f8de15ed24fa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return true",
							name = "Built-in AutoSim targeting",
							uuid = "3b7789be-baec-af60-9341-cda5b2af8545",
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
							uuid = "456f7a92-e86c-83fd-8bf0-583b23692b59",
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
							uuid = "b6b1a5f2-3fc3-5d82-97b3-3ee4f1346407",
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
							uuid = "a9d4a72e-ec9a-2a32-b753-ac4d357aa0cc",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Personal gaols",
				eventType = 26,
				loop = true,
				mechanicTime = 1206,
				name = "[UWU] [Target] Suppression Gaol - Advance",
				timeRange = true,
				timelineIndex = 190,
				timerEndOffset = 12,
				timerStartOffset = -8,
				uuid = "a7a86f88-858a-903e-b76e-ebcd93078b40",
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
				name = "AutoSim",
				uuid = "22f75c38-3639-9946-b934-620abbc72cde",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Encounter events",
				uuid = "17330371-a7f7-ff90-98c9-044e9199b02a",
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
							actionLua = "-- Shared UWU event handler: uses the active plan, with no job restriction.\nlocal S=data.uwuAutoSim\nS.resync(\"graniteGaol1\",TensorCore.API.TensorACR.getAutoSimTime())\nself.used=true",
							conditions = 
							{
								
								{
									"4dd3c5b5-02fc-9e1f-9546-22cb97725c63",
									true,
								},
								
								{
									"3f45b218-19bb-f041-94c6-e0acfe3a3e75",
									true,
								},
								
								{
									"86e97144-b34e-a395-8b48-2958cce01685",
									true,
								},
								
								{
									"f917ae5d-b02b-093a-a968-e7fed180df90",
									true,
								},
								
								{
									"f755b743-7fe9-6283-a005-f564d5335fbd",
									true,
								},
								
								{
									"0e2647c6-bb8d-87a9-9924-0b14b47b8227",
									true,
								},
							},
							name = "Apply owned UWU state",
							uuid = "fc578908-b66f-3cd1-8941-e4616d69a901",
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
							name = "UWU territory",
							uuid = "4dd3c5b5-02fc-9e1f-9546-22cb97725c63",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return data.uwuAutoSim~=nil",
							name = "Encounter initialized",
							uuid = "3f45b218-19bb-f041-94c6-e0acfe3a3e75",
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
							uuid = "86e97144-b34e-a395-8b48-2958cce01685",
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
							uuid = "f917ae5d-b02b-093a-a968-e7fed180df90",
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
							uuid = "f755b743-7fe9-6283-a005-f564d5335fbd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuAutoSim\nreturn S~=nil and S.observed.graniteGaol1==nil",
							name = "anchor pending",
							uuid = "0e2647c6-bb8d-87a9-9924-0b14b47b8227",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Encounter events",
				eventType = 26,
				loop = true,
				mechanicTime = 1223,
				name = "[UWU] Resync graniteGaol1",
				timeRange = true,
				timelineIndex = 199,
				timerEndOffset = 20,
				timerStartOffset = -13,
				uuid = "2bd3f5db-7347-fc78-8f74-c56bc1b6298f",
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
				name = "AutoSim",
				uuid = "a0bd18e6-0515-ebca-b5f5-08b2c020a692",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Job options",
				uuid = "cc465660-ccf7-d7fd-9746-109e31448cdd",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "AutoSim",
				name = "Encounter events",
				uuid = "0873f3c9-693e-cfc5-a494-d505d8f7e93c",
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
							actionLua = "local S=data.uwuAutoSim\nlocal kinds={[11475]=\"Garuda\",[11476]=\"Ifrit\",[11477]=\"Titan\"}\nS.rouletteForecast(kinds[eventArgs.spellID],TensorCore.API.TensorACR.getAutoSimTime())\nS.publish();self.used=true",
							conditions = 
							{
								
								{
									"ffdef6f8-e728-c266-8118-160dccf686f7",
									true,
								},
								
								{
									"2cb4381b-89ac-29fe-ad59-fb1272db22c0",
									true,
								},
								
								{
									"e00f84a9-8463-4836-add9-788f5636df72",
									true,
								},
								
								{
									"4d6ebfed-2736-a4dc-9eb4-c03809abe2ae",
									true,
								},
								
								{
									"0dacddcc-dfd6-0a5a-886b-fd4d54d7f02b",
									true,
								},
							},
							name = "BLM - Apply owned UWU state",
							uuid = "bc50aa16-c97d-513d-9bcc-515f0b73680c",
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
							name = "UWU territory",
							uuid = "ffdef6f8-e728-c266-8118-160dccf686f7",
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
							uuid = "2cb4381b-89ac-29fe-ad59-fb1272db22c0",
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
							uuid = "e00f84a9-8463-4836-add9-788f5636df72",
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
							uuid = "4d6ebfed-2736-a4dc-9eb4-c03809abe2ae",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local S=data.uwuAutoSim\nreturn S~=nil and TensorCore.API.TensorACR.getAutoSimTime()>S.time(\"p4end\")+260 and (not S.rouletteTimes or #S.rouletteTimes<3)",
							name = "final sequence",
							uuid = "0dacddcc-dfd6-0a5a-886b-fd4d54d7f02b",
							version = 3,
						},
					},
				},
				displayPath = "AutoSim/Encounter events",
				eventType = 3,
				loop = true,
				mechanicTime = 1307,
				name = "[UWU] Adapt final primal movement",
				timeRange = true,
				timelineIndex = 211,
				timerEndOffset = 180,
				timerStartOffset = -30,
				uuid = "ca85d793-cb26-dfe7-803d-fbf58266c628",
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
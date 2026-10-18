local tbl = 
{
	
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "26254e39-08b2-bd2d-9e00-cb03d29d2e69",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT",
				uuid = "a038514d-556e-1181-9914-7f984e1a9e3e",
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
							actionLua = "local settings=Settings.FFXIVMINION\nlocal visible=GUI:Begin(\"[LPDU] FRU - DRK OT\",true,GUI.WindowFlags_AlwaysAutoResize)\nif visible then\n GUI:Text(\"Mitigation timing plan\")\n local imported=settings.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\"\n local choice=GUI:Combo(\"##DRKOTMitPlan\",imported and 2 or 1,{\"Spreadsheet\",\"Imported DRK timings\"})\n settings.LPDU_FRU_DRKOT_MitigationPlan=choice==2 and \"Imported DRK timings\" or \"Spreadsheet\"\n GUI:Text(\"Spreadsheet is the default. Imported timings replace it for DRK OT only.\")\n settings.LPDU_FRU_DRKOT_Optimize=GUI:Checkbox(\"Source rotation optimizations##DRKOT\",settings.LPDU_FRU_DRKOT_Optimize~=false)\n if choice==2 then\n  local function tankChoice(label,key,default)\n   local value=settings[key] or default\n   GUI:Text(label);GUI:SameLine(190);GUI:PushItemWidth(150)\n   local i=GUI:Combo(\"##DRKOT\"..key,value==\"MT\" and 1 or 2,{\"MT\",\"OT\"})\n   GUI:PopItemWidth();settings[key]=i==1 and \"MT\" or \"OT\"\n  end\n  tankChoice(\"P3 Halo tank\",\"LPDU_FRU_HaloTank\",\"MT\")\n  tankChoice(\"P3 Apoc bait\",\"LPDU_FRU_ApocBait\",\"OT\")\n  settings.LPDU_FRU_DRKApocInvuln=GUI:Checkbox(\"Living Dead for OT Apocalypse##DRKOT\",settings.LPDU_FRU_DRKApocInvuln==true)\n  local mode=settings.LPDU_FRU_DarklitTank or \"MT invulns\"\n  local p4=GUI:Combo(\"P4 invuln tank##DRKOT\",mode==\"OT invulns\" and 2 or 1,{\"MT\",\"OT\"})\n  settings.LPDU_FRU_DarklitTank=p4==2 and \"OT invulns\" or \"MT invulns\"\n  tankChoice(\"P5 first invuln\",\"LPDU_FRU_P5FirstInvuln\",\"OT\")\n  GUI:Text(\"Both tanks must agree on shared buster assignments.\")\n end\nend\nGUI:End();self.used=true",
							conditions = 
							{
								
								{
									"e011103f-f269-ee91-9877-289decb8a19a",
									true,
								},
							},
							name = "DRK OT plan settings",
							uuid = "0b835fac-8fd7-d2df-9003-e308ddec142a",
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
							jobValue = "DARKKNIGHT",
							uuid = "e011103f-f269-ee91-9877-289decb8a19a",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT",
				eventType = 13,
				loop = true,
				mechanicTime = 13.7,
				name = "[DRK OT] Plan settings",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 1.3,
				timerStartOffset = -73.7,
				uuid = "c6e9bf47-09e8-13b5-a79f-d68b71df28b3",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "d232f68d-c507-7fd7-a993-82c9179a3cff",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "00bc18cd-014a-e8b9-b260-bb21066f9e41",
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
									"2f9ac3fc-7f0f-0e23-9ca7-84e2dadbc967",
									true,
								},
								
								{
									"b18faec9-310b-e1e0-a81e-8b99dbacc4ad",
									true,
								},
								
								{
									"092a876f-83ed-fde6-b954-ad8584fd3e38",
									true,
								},
								
								{
									"ed2e5610-33a8-13f1-945a-713d8c35fe72",
									true,
								},
								
								{
									"7e622e68-cc11-0fe1-b91d-bce532b11891",
									true,
								},
							},
							ignoreWeaveRules = true,
							potType = 4,
							usePot = true,
							uuid = "dba4ec5d-18a3-d744-a3cc-4a849527e0ed",
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
							jobValue = "DARKKNIGHT",
							uuid = "2f9ac3fc-7f0f-0e23-9ca7-84e2dadbc967",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "b18faec9-310b-e1e0-a81e-8b99dbacc4ad",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "4dd596d8-3a1d-bf4f-8f8e-ee783272493e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "092a876f-83ed-fde6-b954-ad8584fd3e38",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 5,
							lastSkillID = 3617,
							uuid = "ed2e5610-33a8-13f1-945a-713d8c35fe72",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return ACR_RikuDRK3_Potion == true\n\n\n",
							uuid = "7e622e68-cc11-0fe1-b91d-bce532b11891",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 13.7,
				name = "[DRK OT] pot after 1st gcd",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 6,
				timerStartOffset = -13.699999809265,
				uuid = "bdcf1358-ca8d-3357-9026-900ce826d8e8",
				version = 2,
			},
		},
	}, 
	[4] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "bae78a6c-8104-a288-c5e2-83eee34b589c",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[7] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "4fc3c8b3-46ff-ef9f-4a50-95496960c7a3",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "c0a1f2ed-6076-c4a2-b7b3-d42e11da0b38",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "eefb9229-6428-b9a0-80f4-cb2f38c3c161",
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
							actionLua = "ACR_RikuDRK3_Tankbar_Reprisal = true\nself.used = true",
							conditions = 
							{
								
								{
									"a0c5d16d-75c4-2cba-9c4c-b696eceb95a1",
									true,
								},
								
								{
									"ba1ecd48-e564-6f81-a5f4-06e371c92d9d",
									true,
								},
								
								{
									"6326384b-08f4-ea3d-8320-7e989aba22a8",
									true,
								},
							},
							name = "Request Reprisal",
							uuid = "2e9bb13a-0510-223a-b094-1414e5716c56",
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
							jobValue = "DARKKNIGHT",
							uuid = "a0c5d16d-75c4-2cba-9c4c-b696eceb95a1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "ba1ecd48-e564-6f81-a5f4-06e371c92d9d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "6326384b-08f4-ea3d-8320-7e989aba22a8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "cc0000f7-680e-a9c4-8534-637f1545e6ec",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 24.2,
				name = "[DRK OT] reprisal",
				timeRange = true,
				timelineIndex = 7,
				timerStartOffset = -13,
				uuid = "d3e91ada-fc22-a5d0-af09-89514535ede5",
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
							actionLua = "ACR_RikuDRK3_Tankbar_OblationOT = true\nself.used = true",
							conditions = 
							{
								
								{
									"3789390a-d4b8-f265-8833-dab622868ea2",
									true,
								},
								
								{
									"3d102ecc-4b54-117f-9a7c-62337510bf44",
									true,
								},
								
								{
									"ca725dab-fc16-2c7b-9107-34dadee574a3",
									true,
								},
							},
							name = "Request Oblation OT",
							uuid = "5eb52fac-6ef8-d4b6-9f87-13e87743ee8b",
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
							jobValue = "DARKKNIGHT",
							uuid = "3789390a-d4b8-f265-8833-dab622868ea2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "3d102ecc-4b54-117f-9a7c-62337510bf44",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "ca725dab-fc16-2c7b-9107-34dadee574a3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "a02256d0-302e-3d31-9da1-96cfb3e56b1c",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				enabled = false,
				mechanicTime = 24.2,
				name = "[DRK OT] Oblation mt ",
				timeRange = true,
				timelineIndex = 7,
				timerStartOffset = -9,
				uuid = "6a5bd5ad-192c-5891-9a1d-1681f21ded94",
				version = 2,
			},
		},
	},
	[9] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "71c222e1-8cd6-9455-72d5-118bdd31dbd1",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[10] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "1cfc32ad-a19f-6e89-25c3-5d7be6a3969d",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[11] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "249478ec-aa63-fdd8-f600-27baa61618dc",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "513532f4-e614-57e8-803c-a6c6e640f265",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "94387289-0e0f-0ff4-8880-49c2704efc6a",
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
							actionLua = "ACR_RikuDRK3_Tankbar_Rampart = true\nself.used = true",
							conditions = 
							{
								
								{
									"02754be1-b93a-9314-bcc2-a7cfcbee17c6",
									true,
								},
								
								{
									"905c3b77-3361-a313-8146-fbf4be6ffcf5",
									true,
								},
								
								{
									"aa0cc600-fe73-2609-863f-9beb5a1317ce",
									true,
								},
							},
							name = "Request Rampart",
							uuid = "4de41f82-f3ef-f4b6-9a91-aacf31d61c4d",
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
							jobValue = "DARKKNIGHT",
							uuid = "02754be1-b93a-9314-bcc2-a7cfcbee17c6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "905c3b77-3361-a313-8146-fbf4be6ffcf5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "aa0cc600-fe73-2609-863f-9beb5a1317ce",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "a083a3a2-f882-29c5-bf83-48eba734cf97",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 40.3,
				name = "[DRK OT] Rampart",
				timelineIndex = 11,
				timerOffset = -19,
				uuid = "c74f6bbc-26e3-af06-8f7a-1ade7a498557",
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
							actionLua = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf = true\nself.used = true",
							conditions = 
							{
								
								{
									"86b42d0c-e01c-bf33-92b3-7444e8c5a324",
									true,
								},
								
								{
									"d37bce47-46c5-a341-a25a-2293e74ea88b",
									true,
								},
								
								{
									"1f837bbd-e379-41dd-8aa1-c87381a58b73",
									true,
								},
							},
							name = "Request TBN Self",
							uuid = "fc4f33b3-4bff-3a57-b20b-9c5c64c6821e",
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
							jobValue = "DARKKNIGHT",
							uuid = "86b42d0c-e01c-bf33-92b3-7444e8c5a324",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "d37bce47-46c5-a341-a25a-2293e74ea88b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "1f837bbd-e379-41dd-8aa1-c87381a58b73",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "f0e5e73d-90d9-d33d-af93-16cac88a1b6b",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 40.3,
				name = "[DRK OT] TBN",
				timelineIndex = 11,
				timerOffset = -6.8000001907349,
				uuid = "1f18ad80-2d3d-fd21-a5db-89ccd6a312e9",
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
							actionLua = "ACR_RikuDRK3_Tankbar_DarkMind = true\nself.used = true",
							conditions = 
							{
								
								{
									"51d633ee-f454-94d9-b7bf-aa16d26472e6",
									true,
								},
								
								{
									"1a779590-468a-39cd-b236-29955029b777",
									true,
								},
								
								{
									"ebf5a7b8-224c-67e3-b2f7-b98c0503c34a",
									true,
								},
							},
							name = "Request Dark Mind",
							uuid = "1f6da490-3398-ec42-afed-1f709af0308b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_Tankbar_OblationSelf = true\nself.used = true",
							conditions = 
							{
								
								{
									"51d633ee-f454-94d9-b7bf-aa16d26472e6",
									true,
								},
								
								{
									"1a779590-468a-39cd-b236-29955029b777",
									true,
								},
								
								{
									"ebf5a7b8-224c-67e3-b2f7-b98c0503c34a",
									true,
								},
							},
							name = "Request Oblation Self",
							uuid = "d870ff7f-513c-4177-a2d1-cfb33a1ab2f0",
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
							jobValue = "DARKKNIGHT",
							uuid = "51d633ee-f454-94d9-b7bf-aa16d26472e6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "1a779590-468a-39cd-b236-29955029b777",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "ebf5a7b8-224c-67e3-b2f7-b98c0503c34a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "8b2fff64-931e-2439-b9e1-6fa513daa46c",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 40.3,
				name = "[DRK OT] Dark mind + Oblation + TBN ",
				timelineIndex = 11,
				timerOffset = -9,
				uuid = "9da7b7d9-98e9-de93-8581-167e7eb50f20",
				version = 2,
			},
		},
	},
	[12] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "b970b733-338b-3faf-1c37-c25530ab5ce3",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[13] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "1d841092-85f8-882e-5b0a-e054ae85ea82",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[15] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "954e1808-c38c-81bc-190d-ffe63a79d9f8",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[16] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "5b49651f-8309-9343-5686-c9e1826b70cf",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[17] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "b97f24de-90d2-9a62-219a-2eb025b69ace",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[18] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "a12009d5-2558-9b71-3488-6fb3d358c6c5",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[19] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "dff327d4-a4c2-9fc0-989b-c912a1896304",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[20] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "575853b8-0247-5a14-b181-bb8230586be8",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "606d23cc-17d6-2c28-8924-48d942035eb0",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "51be5271-a691-f66c-b03b-62e28c89af2e",
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
							actionLua = "ACR_RikuDRK3_Tankbar_DarkMissionary = true\nself.used = true",
							conditions = 
							{
								
								{
									"c384a550-4bfd-dd4d-b4f0-4b9977e62910",
									true,
								},
								
								{
									"2b277c71-3122-aee8-8a13-ab74c98675f9",
									true,
								},
								
								{
									"1e34dc6c-5e45-bdfb-a5b8-9733e91b7c98",
									true,
								},
								
								{
									"9b8f3458-84c3-e796-be64-cc5736fcb311",
									true,
								},
							},
							name = "Request Dark Missionary",
							uuid = "b895b095-659e-e7a3-b4f5-5af2a8d9025d",
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
							jobValue = "DARKKNIGHT",
							uuid = "c384a550-4bfd-dd4d-b4f0-4b9977e62910",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "2b277c71-3122-aee8-8a13-ab74c98675f9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "1e34dc6c-5e45-bdfb-a5b8-9733e91b7c98",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "276dc243-d0ce-6d1a-990c-d4f4330be75f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "9b8f3458-84c3-e796-be64-cc5736fcb311",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 78.5,
				name = "[DRK OT] Dark missionary ot",
				timelineIndex = 20,
				timerOffset = -2.5,
				uuid = "ddc102b7-1f61-c8b5-96e0-b679731fcc85",
				version = 2,
			},
		},
	},
	[21] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "8a769a69-89a4-e815-33a7-2de32e70dc99",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "29e9f42a-d2b9-d26d-8f8f-5e973a7be495",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "148e17b0-503e-0d8e-850d-6461ec403e48",
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
							acrOptionType = "Hold Action",
							conditions = 
							{
								
								{
									"becf4c3e-97be-0f58-a5fb-b373470dc9c0",
									true,
								},
								
								{
									"5cdc6fb3-b27e-0554-b081-edbe23067fe3",
									true,
								},
								
								{
									"da4a7b6f-503a-dba0-8082-a25a57bcca3c",
									true,
								},
							},
							holdActionCharges = 3,
							holdActionDuration = 1,
							holdActionID = 36928,
							uuid = "5fc7e3af-363a-00e2-b14a-25b21b90f558",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							acrOptionType = "Hold Action",
							conditions = 
							{
								
								{
									"becf4c3e-97be-0f58-a5fb-b373470dc9c0",
									true,
								},
								
								{
									"5cdc6fb3-b27e-0554-b081-edbe23067fe3",
									true,
								},
								
								{
									"da4a7b6f-503a-dba0-8082-a25a57bcca3c",
									true,
								},
							},
							holdActionDuration = 1,
							holdActionID = 36929,
							uuid = "d83b7590-f704-21cf-9c24-9715bcddc53e",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							acrOptionType = "Hold Action",
							conditions = 
							{
								
								{
									"becf4c3e-97be-0f58-a5fb-b373470dc9c0",
									true,
								},
								
								{
									"5cdc6fb3-b27e-0554-b081-edbe23067fe3",
									true,
								},
								
								{
									"da4a7b6f-503a-dba0-8082-a25a57bcca3c",
									true,
								},
							},
							holdActionDuration = 1,
							holdActionID = 36930,
							uuid = "dcc0ab96-9ae8-678e-837a-5f3378aeb71c",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							acrOptionType = "Hold Action",
							conditions = 
							{
								
								{
									"becf4c3e-97be-0f58-a5fb-b373470dc9c0",
									true,
								},
								
								{
									"5cdc6fb3-b27e-0554-b081-edbe23067fe3",
									true,
								},
								
								{
									"da4a7b6f-503a-dba0-8082-a25a57bcca3c",
									true,
								},
							},
							holdActionDuration = 1,
							holdActionID = 7391,
							uuid = "f78b87b4-2141-8181-beb0-db60614b544b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							acrOptionType = "Hold Action",
							conditions = 
							{
								
								{
									"becf4c3e-97be-0f58-a5fb-b373470dc9c0",
									true,
								},
								
								{
									"5cdc6fb3-b27e-0554-b081-edbe23067fe3",
									true,
								},
								
								{
									"da4a7b6f-503a-dba0-8082-a25a57bcca3c",
									true,
								},
							},
							holdActionDuration = 1,
							holdActionID = 7392,
							uuid = "027ffaf3-959a-1ca2-adb3-00217c77554c",
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
							jobValue = "DARKKNIGHT",
							uuid = "becf4c3e-97be-0f58-a5fb-b373470dc9c0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "5cdc6fb3-b27e-0554-b081-edbe23067fe3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "d1b173e8-9fdf-5eb3-884e-6e08235e8e44",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "da4a7b6f-503a-dba0-8082-a25a57bcca3c",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 80,
				name = "[DRK OT] hold guage",
				timelineIndex = 21,
				timerOffset = -0.30000001192093,
				uuid = "549201c7-62b6-865e-9124-9e64c8a7d232",
				version = 2,
			},
		},
	},
	[22] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "33b8d48e-f352-147a-a911-e9dc369e5dbe",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[23] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "e71dcf8f-03db-013b-e99f-679d9179e0ff",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[24] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "9b24c49c-4d0f-de70-28b2-6bce551f55cc",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "0b3d380d-f1a1-d6f3-ad57-7028029cc0db",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "a418f9d4-595b-78f5-a2b5-4833fdf90104",
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
							acrOptionType = "Hold Action",
							conditions = 
							{
								
								{
									"95d6cabc-c638-3a57-8d95-1066961bca51",
									true,
								},
								
								{
									"47ffff70-95ef-c19f-af36-d23da4789214",
									true,
								},
								
								{
									"2bdad843-7b62-d119-8d24-9218574502e0",
									true,
								},
							},
							holdActionDuration = 90,
							holdActionID = 36932,
							uuid = "687e8ffe-22de-5b37-91e5-ccab8dc51d42",
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
							jobValue = "DARKKNIGHT",
							uuid = "95d6cabc-c638-3a57-8d95-1066961bca51",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "47ffff70-95ef-c19f-af36-d23da4789214",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "288bccd2-3222-9224-8301-5eca48aa2c0b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "2bdad843-7b62-d119-8d24-9218574502e0",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 102.2,
				name = "[DRK OT] hold dises",
				timelineIndex = 24,
				timerOffset = -5,
				uuid = "8ee0c89a-703a-1413-a979-16379920fe21",
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
				name = "Frureactions\\lpdu strats",
				uuid = "cc19ff5d-9b89-90a1-8567-41cf71c8748d",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[26] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "a87b6e42-af5d-d8a6-3d75-aaf8fc2b2df2",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[27] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "213a33a3-b4a5-a747-d0a8-c5a910f31b93",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[28] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "620ce520-6e49-cd2c-b93e-0dea311fea90",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[29] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "950b47d1-991b-e5ed-91cb-9deb02ae9f41",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "50d37b5c-4643-afda-83c4-db553143accf",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "3f667b2f-0394-e75e-8397-1a4c70b0d4a0",
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
							actionLua = "ACR_RikuDRK3_Tankbar_Reprisal = true\nself.used = true",
							conditions = 
							{
								
								{
									"316e6b5a-ec64-0f27-979a-89a555f7f078",
									true,
								},
								
								{
									"46b06651-1b13-9660-a132-4a990fd2ca2b",
									true,
								},
								
								{
									"0cc9f2ac-93bc-77ad-81f9-15d4b32974a3",
									true,
								},
								
								{
									"dc0bc638-8442-9d65-9526-81ecca005d9e",
									true,
								},
							},
							name = "Request Reprisal",
							uuid = "b77da8a1-35d1-3486-96e6-facf4de1f05e",
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
							jobValue = "DARKKNIGHT",
							uuid = "316e6b5a-ec64-0f27-979a-89a555f7f078",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "46b06651-1b13-9660-a132-4a990fd2ca2b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "0cc9f2ac-93bc-77ad-81f9-15d4b32974a3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "c8a59816-625c-3fa5-b7c4-653c6786d1d9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "dc0bc638-8442-9d65-9526-81ecca005d9e",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 121.1,
				name = "[DRK OT] reprisal",
				timeRange = true,
				timelineIndex = 29,
				timerStartOffset = -14.89999961853,
				uuid = "2af33964-36c8-a897-83a8-42a1757f1042",
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
							actionLua = "ACR_RikuDRK3_Shadowbringer = true\nself.used = true",
							conditions = 
							{
								
								{
									"138d66ef-e22c-ee01-9b97-00413d8beadf",
									true,
								},
								
								{
									"441f5166-0077-606b-b5fc-04487a2464ef",
									true,
								},
								
								{
									"6c001de3-0652-de5a-a72e-dae09cd9e2e9",
									true,
								},
							},
							name = "Set Shb",
							uuid = "6d19b6f1-ab25-96c5-a3c4-b328dd792872",
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
							jobValue = "DARKKNIGHT",
							uuid = "138d66ef-e22c-ee01-9b97-00413d8beadf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "441f5166-0077-606b-b5fc-04487a2464ef",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "ae3437e1-d490-f77d-ab20-a7cd80333a11",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "6c001de3-0652-de5a-a72e-dae09cd9e2e9",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 121.1,
				name = "[DRK OT] shadowbringer on",
				timelineIndex = 29,
				timerOffset = 4,
				uuid = "d66f5409-a402-70ef-b6ff-f4cb33fa7749",
				version = 2,
			},
		},
	},
	[30] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "6dc945bf-d75f-32eb-316c-ad994aa741ef",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "a61cf52d-8e42-9538-92d7-2938c29322c1",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "cc6fdacd-c9b4-ad6b-92bf-bbb4d2172903",
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
							actionLua = "ACR_RikuDRK3_Tankbar_LivingDead = true\nself.used = true",
							conditions = 
							{
								
								{
									"bbdfdfed-222c-951c-a18f-2725f973f7fc",
									true,
								},
								
								{
									"17d9acd4-bdfc-3e20-8a9c-78a9cd68931a",
									true,
								},
								
								{
									"01bfb3b9-f9c2-9e4d-ab02-83fbfbb5ba7c",
									true,
								},
							},
							name = "Request Living Dead",
							uuid = "6a523e44-d31c-688c-babf-008f8325f211",
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
							jobValue = "DARKKNIGHT",
							uuid = "bbdfdfed-222c-951c-a18f-2725f973f7fc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "17d9acd4-bdfc-3e20-8a9c-78a9cd68931a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "01bfb3b9-f9c2-9e4d-ab02-83fbfbb5ba7c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "0b6b3436-0fde-8b0c-a37c-311f0da527aa",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 129.5,
				name = "[DRK OT] inv",
				randomOffset = 0.5,
				timelineIndex = 30,
				timerOffset = -6,
				uuid = "b728cf2d-1b1d-0752-a949-856179b1ea36",
				version = 2,
			},
		},
	},
	[32] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "fa387159-1be8-2cc5-9475-b1ffea0ee5c9",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "04fba547-91d0-80b4-aabd-11392355b202",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "51da6fa4-4eb1-7d7e-a1a2-b13947dd213b",
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
							acrOptionType = "Hold Action",
							conditions = 
							{
								
								{
									"88fae40f-13ae-9000-a2c4-54ef17eb4d1b",
									true,
								},
								
								{
									"2c867bd3-e9b2-ba00-bff8-02b91e49454b",
									true,
								},
								
								{
									"df99440e-7158-d34c-bcf0-c205d25cd0ac",
									true,
								},
							},
							holdActionDuration = 0.10000000149012,
							holdActionID = 36932,
							uuid = "87907a95-bbf9-3f5f-8195-9c9138f689df",
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
							jobValue = "DARKKNIGHT",
							uuid = "88fae40f-13ae-9000-a2c4-54ef17eb4d1b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "2c867bd3-e9b2-ba00-bff8-02b91e49454b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "2ce1805e-ea09-9874-85e6-e4ae414104a8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "df99440e-7158-d34c-bcf0-c205d25cd0ac",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 140.9,
				name = "[DRK OT] hold dises",
				timelineIndex = 32,
				timerOffset = -0.10000000149012,
				uuid = "1ace1f8d-cbaa-d8f1-8542-7fe8c7cfe2a2",
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
							actionID = 36932,
							conditions = 
							{
								
								{
									"a018b12e-a362-4a3a-a1a1-ebca498ef232",
									true,
								},
								
								{
									"6ea8ea0f-a0ad-aa01-958e-bf555a91e8d7",
									true,
								},
								
								{
									"7b759a7b-d626-1fc8-a9da-41be49e01a2a",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "c278b459-5e02-18a1-96a1-29fa398871d4",
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
							jobValue = "DARKKNIGHT",
							uuid = "a018b12e-a362-4a3a-a1a1-ebca498ef232",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "6ea8ea0f-a0ad-aa01-958e-bf555a91e8d7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "8505aeff-f6e7-1bed-8fc3-e27076c1a91c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "7b759a7b-d626-1fc8-a9da-41be49e01a2a",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 140.9,
				name = "[DRK OT] dises",
				timeRange = true,
				timelineIndex = 32,
				timerEndOffset = 5,
				uuid = "cd56168b-41d4-8db0-9629-f8394d569596",
				version = 2,
			},
		},
	},
	[33] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "03c2fca8-ea18-c904-399a-2ebeddc3c918",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[34] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "9abec553-59e4-1bb7-74c4-458d3dbf1b83",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[35] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "794a74b2-612a-8416-581b-26cc9b8fbda2",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "2b794057-150f-6f7b-83de-6f24e686b8a7",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "e65a0a52-104d-163e-bda6-0e505742dc34",
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
							actionLua = "ACR_RikuDRK3_Tankbar_Rampart = true\nself.used = true",
							conditions = 
							{
								
								{
									"e1348dd6-b8f8-4a94-9f58-5c1f2d26df3d",
									true,
								},
								
								{
									"9ce36065-96ba-cdac-a346-597d88c05060",
									true,
								},
								
								{
									"b246893d-7eb4-c1f0-b464-e85c756ea04b",
									true,
								},
							},
							name = "Request Rampart",
							uuid = "aa95d5f3-2bd7-0a2b-ba8c-2595c7c4ead6",
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
							jobValue = "DARKKNIGHT",
							uuid = "e1348dd6-b8f8-4a94-9f58-5c1f2d26df3d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "9ce36065-96ba-cdac-a346-597d88c05060",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "b246893d-7eb4-c1f0-b464-e85c756ea04b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "d31c4182-8e38-5509-adea-704829535b68",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 145.6,
				name = "[DRK OT] rampart",
				timeRange = true,
				timelineIndex = 35,
				timerStartOffset = -19,
				uuid = "36eefc55-45f8-0bd7-bbc3-966587d61fb5",
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
							actionLua = "ACR_RikuDRK3_Tankbar_ShadowedVigil = true\nself.used = true",
							conditions = 
							{
								
								{
									"4016c5de-0525-dde4-b046-20065062654b",
									true,
								},
								
								{
									"a05e3ccd-161e-3e0f-93f4-7440b2158f30",
									true,
								},
								
								{
									"b68ed31e-81fb-3191-9e65-cadd59bf4a3f",
									true,
								},
							},
							name = "Request Vigil",
							uuid = "899e8094-bb7a-9aa3-8d60-acdb063b2360",
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
							jobValue = "DARKKNIGHT",
							uuid = "4016c5de-0525-dde4-b046-20065062654b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "a05e3ccd-161e-3e0f-93f4-7440b2158f30",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "b68ed31e-81fb-3191-9e65-cadd59bf4a3f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "41ee7998-90e2-23dc-ae42-35ed36c6548a",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 145.6,
				name = "[DRK OT] vigil",
				timeRange = true,
				timelineIndex = 35,
				timerStartOffset = -14,
				uuid = "ce654dab-fc1e-af63-a534-cf3cebd33212",
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
							actionLua = "ACR_RikuDRK3_Tankbar_DarkMind = true\nself.used = true",
							conditions = 
							{
								
								{
									"c42a8857-b0bf-f529-9f03-a67265829458",
									true,
								},
								
								{
									"04386c95-c570-3401-b742-44af07f2180d",
									true,
								},
								
								{
									"b1c02e23-99f8-63f3-8f77-91eaa6c96319",
									true,
								},
							},
							name = "Request Dark Mind",
							uuid = "d7b0cd6a-e5a2-6284-9d14-617649ca6154",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_Tankbar_OblationSelf = true\nself.used = true",
							conditions = 
							{
								
								{
									"c42a8857-b0bf-f529-9f03-a67265829458",
									true,
								},
								
								{
									"04386c95-c570-3401-b742-44af07f2180d",
									true,
								},
								
								{
									"b1c02e23-99f8-63f3-8f77-91eaa6c96319",
									true,
								},
							},
							name = "Request Oblation Self",
							uuid = "27a2d290-0a3c-cb3d-b779-e0678e56521a",
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
							jobValue = "DARKKNIGHT",
							uuid = "c42a8857-b0bf-f529-9f03-a67265829458",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "04386c95-c570-3401-b742-44af07f2180d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "b1c02e23-99f8-63f3-8f77-91eaa6c96319",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "78f05fca-3745-b71b-abc3-6cd772e72faf",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 145.6,
				name = "[DRK OT] dark mind",
				timeRange = true,
				timelineIndex = 35,
				timerStartOffset = -9,
				uuid = "367a3ce0-d953-9ba9-8ef8-c15b7420ebc9",
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
							actionLua = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf = true\nself.used = true",
							conditions = 
							{
								
								{
									"90cc931a-a87c-2850-938c-a317760c5a26",
									true,
								},
								
								{
									"ccbac5e5-9c9d-de22-8dd0-188aab85b8a7",
									true,
								},
								
								{
									"bebb2017-c1bc-5054-a8c8-320592bed7f0",
									true,
								},
							},
							name = "Request TBN Self",
							uuid = "a8052069-1188-a478-a511-cdf89df7163b",
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
							jobValue = "DARKKNIGHT",
							uuid = "90cc931a-a87c-2850-938c-a317760c5a26",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "ccbac5e5-9c9d-de22-8dd0-188aab85b8a7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "bebb2017-c1bc-5054-a8c8-320592bed7f0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "31b94e03-0677-9c8a-a74f-3ab8034c50f4",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 145.6,
				name = "[DRK OT] TBN",
				timeRange = true,
				timelineIndex = 35,
				timerStartOffset = -6.9000000953674,
				uuid = "616138da-5a40-ae7f-b6e8-70851198ab94",
				version = 2,
			},
		},
	},
	[37] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "dc21758c-a9a2-2a60-ff26-fef2af04c0fc",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[39] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "8d398006-f715-5082-341b-bb90342e86b6",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "767ee4f5-8934-0bfa-88f4-fda72aff3041",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "62a7ee55-f7f9-a173-8dac-55e14a4f5136",
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
							actionLua = "ACR_RikuDRK3_Shadowbringer = false\nself.used = true",
							conditions = 
							{
								
								{
									"905ed02c-c2c9-1af8-a75a-56a49efdd7a0",
									true,
								},
								
								{
									"e85c458b-5d0d-3b8a-a7bf-b05723e0fe7c",
									true,
								},
								
								{
									"8ae2e4ee-9fea-d781-a852-b80bfe5277ca",
									true,
								},
							},
							name = "Set Shb",
							uuid = "5afd2318-d0ef-f81f-9bc4-64748b9645d3",
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
							jobValue = "DARKKNIGHT",
							uuid = "905ed02c-c2c9-1af8-a75a-56a49efdd7a0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "e85c458b-5d0d-3b8a-a7bf-b05723e0fe7c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "1fbfbb90-91e8-587f-a4de-b5e05e393e64",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "8ae2e4ee-9fea-d781-a852-b80bfe5277ca",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 203.8,
				name = "[DRK OT] shb off",
				timelineIndex = 39,
				timerOffset = -1,
				uuid = "583997ac-794b-5177-b6f2-a5878ffbbfef",
				version = 2,
			},
		},
	},
	[44] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "53da967e-98b5-359a-8647-952c080f776e",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[45] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "1037e8bf-3d5d-cd5b-b119-adeded15e4ef",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "c6abe1db-d382-9cc0-bf73-d0354801f303",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "2dde7327-80f3-cd28-8332-c6a5df24d31e",
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
							actionLua = "ACR_RikuDRK3_CD = false\nself.used = true",
							conditions = 
							{
								
								{
									"737c204d-46df-7b85-9194-a78c2f372dc4",
									true,
								},
								
								{
									"5463d15d-aa4b-4483-9056-08eac68a208b",
									true,
								},
								
								{
									"b107d4aa-f9bb-27f6-a3e2-775300374c02",
									true,
								},
							},
							name = "Set CD",
							uuid = "214f7906-87ab-415a-a1f6-c630e252a375",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_Delirium = false\nself.used = true",
							conditions = 
							{
								
								{
									"737c204d-46df-7b85-9194-a78c2f372dc4",
									true,
								},
								
								{
									"5463d15d-aa4b-4483-9056-08eac68a208b",
									true,
								},
								
								{
									"b107d4aa-f9bb-27f6-a3e2-775300374c02",
									true,
								},
							},
							name = "Set Delirium",
							uuid = "83a54ba9-d7af-4cb7-9ebd-caa9f0ea5092",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_CarveAndSpit = false\nself.used = true",
							conditions = 
							{
								
								{
									"737c204d-46df-7b85-9194-a78c2f372dc4",
									true,
								},
								
								{
									"5463d15d-aa4b-4483-9056-08eac68a208b",
									true,
								},
								
								{
									"b107d4aa-f9bb-27f6-a3e2-775300374c02",
									true,
								},
							},
							name = "Set Carve & Spit",
							uuid = "4b900aa7-e897-d739-a2f2-66e9511a2d94",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_Shadowbringer = false\nself.used = true",
							conditions = 
							{
								
								{
									"737c204d-46df-7b85-9194-a78c2f372dc4",
									true,
								},
								
								{
									"5463d15d-aa4b-4483-9056-08eac68a208b",
									true,
								},
								
								{
									"b107d4aa-f9bb-27f6-a3e2-775300374c02",
									true,
								},
							},
							name = "Set Shb",
							uuid = "267b410e-f4db-d8d0-96a9-5ba8bfd63526",
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
							jobValue = "DARKKNIGHT",
							uuid = "737c204d-46df-7b85-9194-a78c2f372dc4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "5463d15d-aa4b-4483-9056-08eac68a208b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "464754fa-9abe-3c93-ad70-887b9e093aab",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "b107d4aa-f9bb-27f6-a3e2-775300374c02",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 238.9,
				name = "[DRK OT] cd off till living shadow",
				timelineIndex = 45,
				timerOffset = -10,
				uuid = "c8938f79-e45f-b744-9d8a-db02d2cd55c6",
				version = 2,
			},
		},
	},
	[46] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "a6319fa8-dc8f-a134-4ddd-bfd280326c18",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[47] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "9ca71459-b84b-a1b5-ca04-4f738c7d88c9",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[49] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "b7b10b1b-da09-46ff-b387-58a1b502050b",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[50] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "3607f389-8893-adad-e2f8-9ecfaa5cc739",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "5415b344-1f5d-31fc-8c58-ac47af3a7892",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "7a936e96-4856-0417-99b2-ffe8ce9073ec",
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
							actionLua = "ACR_RikuDRK3_Tankbar_DarkMissionary = true\nself.used = true",
							conditions = 
							{
								
								{
									"6f113baa-b62c-d665-81e2-f6fda915f1aa",
									true,
								},
								
								{
									"f4f6a31b-d8d2-79aa-b7cb-0d8043da13a6",
									true,
								},
								
								{
									"30b159a0-a195-33da-92be-7bb4c71f393f",
									true,
								},
								
								{
									"57ee87fb-4afe-8a01-9d2d-e2e97f55dae3",
									true,
								},
							},
							name = "Request Dark Missionary",
							uuid = "415a95ff-5057-9db9-abbb-af40a366e4c3",
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
							jobValue = "DARKKNIGHT",
							uuid = "6f113baa-b62c-d665-81e2-f6fda915f1aa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "f4f6a31b-d8d2-79aa-b7cb-0d8043da13a6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "30b159a0-a195-33da-92be-7bb4c71f393f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "bfe3c88b-36df-0da1-9171-ae81cbb1cf15",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "57ee87fb-4afe-8a01-9d2d-e2e97f55dae3",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 251.1,
				name = "[DRK OT] Dark missionary ot",
				timeRange = true,
				timelineIndex = 50,
				timerStartOffset = -2.5,
				uuid = "909dbea6-cc86-b24b-be44-d8535880eeda",
				version = 2,
			},
		},
	},
	[53] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "1a610d2e-891b-8b92-9b07-07f8d409af5e",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[57] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "253b1f62-2516-9fde-06a3-46dc380e9b12",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[58] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "b9c12071-0cb7-84d5-71e1-e3b7f5f99be1",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[59] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "392b24c0-4b8a-a2d4-7928-4c16c10d00b0",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[61] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "1e0d6d15-f60e-1569-f8eb-73f7970bee05",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[62] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "87ba997a-9f50-4f8e-dd24-9da0103be92a",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "67dffe05-3c2d-268a-a2de-240760ac1000",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "9051c41e-56ad-e24b-860f-28b27f1f9dc7",
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
							actionLua = "ACR_RikuDRK3_CD = true\nself.used = true",
							conditions = 
							{
								
								{
									"8b7514fa-9d3b-6185-9e0a-d77fa6c99229",
									true,
								},
								
								{
									"2054fff7-1093-017c-958b-5594336b318a",
									true,
								},
								
								{
									"19da70c2-49ba-bacf-a54b-e186353e5edc",
									true,
								},
							},
							name = "Set CD",
							uuid = "75669c48-6934-5a4a-9ecc-6084f1963c2d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_Delirium = true\nself.used = true",
							conditions = 
							{
								
								{
									"8b7514fa-9d3b-6185-9e0a-d77fa6c99229",
									true,
								},
								
								{
									"2054fff7-1093-017c-958b-5594336b318a",
									true,
								},
								
								{
									"19da70c2-49ba-bacf-a54b-e186353e5edc",
									true,
								},
							},
							name = "Set Delirium",
							uuid = "bdcd508d-84aa-2198-8e2f-46cd15ab610a",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_CarveAndSpit = true\nself.used = true",
							conditions = 
							{
								
								{
									"8b7514fa-9d3b-6185-9e0a-d77fa6c99229",
									true,
								},
								
								{
									"2054fff7-1093-017c-958b-5594336b318a",
									true,
								},
								
								{
									"19da70c2-49ba-bacf-a54b-e186353e5edc",
									true,
								},
							},
							name = "Set Carve & Spit",
							uuid = "cb807f2b-5be8-47e6-bc92-ca5b5f4b7af2",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_Shadowbringer = true\nself.used = true",
							conditions = 
							{
								
								{
									"8b7514fa-9d3b-6185-9e0a-d77fa6c99229",
									true,
								},
								
								{
									"2054fff7-1093-017c-958b-5594336b318a",
									true,
								},
								
								{
									"19da70c2-49ba-bacf-a54b-e186353e5edc",
									true,
								},
							},
							name = "Set Shb",
							uuid = "f527f2f8-ed60-0ad1-8a01-5e1282526b7e",
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
							jobValue = "DARKKNIGHT",
							uuid = "8b7514fa-9d3b-6185-9e0a-d77fa6c99229",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "2054fff7-1093-017c-958b-5594336b318a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "58e2adea-b076-3d4d-abbc-5d5530b39fae",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "19da70c2-49ba-bacf-a54b-e186353e5edc",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 276.1,
				name = "[DRK OT] cd on till living shadow",
				timelineIndex = 62,
				timerOffset = -3,
				uuid = "d83bc97f-3006-3ea1-914b-ee27e1c49913",
				version = 2,
			},
		},
	},
	[64] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "e1786370-06bc-3f9c-70c9-172a7c976fa0",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "47b39488-0f0e-2bc4-a2d6-bba5b7cac405",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "a5282d26-4a61-4642-ad52-f8f6561ea955",
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
							actionLua = "ACR_RikuDRK3_Tankbar_Reprisal = true\nself.used = true",
							conditions = 
							{
								
								{
									"f8b09747-89eb-f54f-9501-e65f8aa0a71e",
									true,
								},
								
								{
									"0b71b668-e184-5d7c-a5f6-11f3a576e81f",
									true,
								},
								
								{
									"f0e79e93-3fa7-4a42-b738-1ee0c197c0a2",
									true,
								},
								
								{
									"5d52a711-0e16-8a8e-a4ec-9fae3b5d1b93",
									true,
								},
							},
							name = "Request Reprisal",
							uuid = "c8837f57-3109-262a-811c-a7a3d940f4e2",
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
							jobValue = "DARKKNIGHT",
							uuid = "f8b09747-89eb-f54f-9501-e65f8aa0a71e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "0b71b668-e184-5d7c-a5f6-11f3a576e81f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "f0e79e93-3fa7-4a42-b738-1ee0c197c0a2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "f062ecd5-d6e4-9eb0-97ab-87589b1d86e7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "5d52a711-0e16-8a8e-a4ec-9fae3b5d1b93",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 283,
				name = "[DRK OT] reprisal",
				timeRange = true,
				timelineIndex = 64,
				timerStartOffset = -4,
				uuid = "4f9d3099-7049-c379-bf12-e4eb3d055d5c",
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
							acrOptionType = "Hold Action",
							conditions = 
							{
								
								{
									"4084047f-ed63-14aa-b144-7b1527a25c1e",
									true,
								},
								
								{
									"65d9c053-c8ef-f8ba-a1dc-3d4d4c0b050b",
									true,
								},
								
								{
									"ac0e1c26-ce3c-994d-86a9-97c4c41b186b",
									true,
								},
							},
							holdActionDuration = 13,
							holdActionID = 36932,
							uuid = "beed1163-a163-2e4b-9295-c035f454569c",
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
							jobValue = "DARKKNIGHT",
							uuid = "4084047f-ed63-14aa-b144-7b1527a25c1e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "65d9c053-c8ef-f8ba-a1dc-3d4d4c0b050b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "809b966c-7b3b-8326-9505-8c832e709301",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "ac0e1c26-ce3c-994d-86a9-97c4c41b186b",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 283,
				name = "[DRK OT] hold dises",
				timelineIndex = 64,
				uuid = "c3762e98-0587-0922-a987-819033fc2e27",
				version = 2,
			},
		},
	},
	[68] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "02b2522c-cda4-6020-aed0-8d0eb5af4f1c",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "8dc630ae-f71f-da3e-9a60-e73b28054f57",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "3d06164c-5a2e-73bf-9fd5-2bd01f4a412e",
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
							actionLua = "ACR_RikuDRK3_Shadowbringer = true\nself.used = true",
							conditions = 
							{
								
								{
									"a47152ba-ba51-e5a4-8709-cee79523dc11",
									true,
								},
								
								{
									"64bd81cf-5c4f-d515-8893-3f0de3399406",
									true,
								},
								
								{
									"1dcdcff2-c4ca-0490-86d4-bdc345335a02",
									true,
								},
							},
							name = "Set Shb",
							uuid = "c074f068-9e3e-5dc6-826e-0866e57e081c",
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
							jobValue = "DARKKNIGHT",
							uuid = "a47152ba-ba51-e5a4-8709-cee79523dc11",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "64bd81cf-5c4f-d515-8893-3f0de3399406",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "67aec23e-25a0-e511-b1c8-4ef364218fec",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "1dcdcff2-c4ca-0490-86d4-bdc345335a02",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 292.6,
				name = "[DRK OT] shb on",
				timelineIndex = 68,
				timerOffset = 1,
				uuid = "3933f02f-10f6-f5af-91d5-cb217c6e3057",
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
							actionLua = "ACR_RikuDRK3_CD = true\nself.used = true",
							conditions = 
							{
								
								{
									"7b61d6bc-c2c9-d5eb-8923-0c19b9c64a68",
									true,
								},
								
								{
									"8aebed63-c841-8c6a-a7a7-634ff1a84502",
									true,
								},
								
								{
									"830e78b2-8cbb-d60c-98bc-a3a57a0f6665",
									true,
								},
							},
							name = "Set CD",
							uuid = "c9b4c778-e68a-960c-88ab-c19f7bb6f86c",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_Delirium = true\nself.used = true",
							conditions = 
							{
								
								{
									"7b61d6bc-c2c9-d5eb-8923-0c19b9c64a68",
									true,
								},
								
								{
									"8aebed63-c841-8c6a-a7a7-634ff1a84502",
									true,
								},
								
								{
									"830e78b2-8cbb-d60c-98bc-a3a57a0f6665",
									true,
								},
							},
							name = "Set Delirium",
							uuid = "7261c4f0-c420-df96-b1bd-a7607b8c77ac",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_CarveAndSpit = true\nself.used = true",
							conditions = 
							{
								
								{
									"7b61d6bc-c2c9-d5eb-8923-0c19b9c64a68",
									true,
								},
								
								{
									"8aebed63-c841-8c6a-a7a7-634ff1a84502",
									true,
								},
								
								{
									"830e78b2-8cbb-d60c-98bc-a3a57a0f6665",
									true,
								},
							},
							name = "Set Carve & Spit",
							uuid = "e7115b2d-6069-262f-a1f0-e694c52cc7e6",
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
							jobValue = "DARKKNIGHT",
							uuid = "7b61d6bc-c2c9-d5eb-8923-0c19b9c64a68",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "8aebed63-c841-8c6a-a7a7-634ff1a84502",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "7b860e56-2e0c-52ff-b38e-7b45818c4861",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "830e78b2-8cbb-d60c-98bc-a3a57a0f6665",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 292.6,
				name = "[DRK OT] cd on till living shadow",
				timelineIndex = 68,
				timerOffset = 1,
				uuid = "974ffe80-5411-e017-b36a-97a3362b6734",
				version = 2,
			},
		},
	},
	[71] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "933a27ea-1d03-6e7e-db8a-49bc76ee90da",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[72] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "b050b1c5-65cf-ec59-9b07-5b4310aa5af5",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[76] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "076da211-6aff-cd4d-4b89-07af3ff15681",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[77] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "3e0aaf60-47b8-f08c-9df6-502ef5d3c8d0",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[80] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "171081de-7a87-b74a-1eba-079c8347f7ce",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[81] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "b8dac21f-046a-b9cb-4faf-425ddffccdcf",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[85] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "17021433-fd76-9b97-0e0b-dd698e3cb9e3",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[88] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "fb87a466-ee63-f762-6da9-69c4762c7b16",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[90] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "da12c085-f91a-eda1-1e54-0853cd4d98b5",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[92] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "c32875ab-1237-0447-82fd-954d525fc45b",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "8dd2d8ee-5430-eef0-b9dc-5b0d8cc26d80",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "a0b73409-3e82-93ef-884f-3bab1c640151",
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
							actionLua = "ACR_RikuDRK3_Tankbar_DarkMissionary = true\nself.used = true",
							conditions = 
							{
								
								{
									"01a012e4-f959-f55e-9965-f3ad15540902",
									true,
								},
								
								{
									"9134dba4-679b-adf8-96c1-2e84956edccf",
									true,
								},
								
								{
									"136a7d70-1956-1b5b-b34f-cb53cdbb3417",
									true,
								},
								
								{
									"bf75483b-afb4-1ee4-b9cb-d20db6a8a235",
									true,
								},
							},
							name = "Request Dark Missionary",
							uuid = "314f9606-7e05-1023-a34b-5cf6442f2b77",
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
							jobValue = "DARKKNIGHT",
							uuid = "01a012e4-f959-f55e-9965-f3ad15540902",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "9134dba4-679b-adf8-96c1-2e84956edccf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "136a7d70-1956-1b5b-b34f-cb53cdbb3417",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "18b4e3cc-ec0a-6428-a391-d7df39d8fa8a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "bf75483b-afb4-1ee4-b9cb-d20db6a8a235",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 360.8,
				name = "[DRK OT] Dark missionary ot",
				timeRange = true,
				timelineIndex = 92,
				timerStartOffset = -2.5,
				uuid = "dccb27c0-9fb1-8001-a71d-9fc4ca513507",
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
							actionID = 7390,
							conditions = 
							{
								
								{
									"54860beb-369a-65bd-ae76-e93113fd0101",
									true,
								},
								
								{
									"8e8854f9-6c20-98d5-8249-a1d5679c6ca3",
									true,
								},
								
								{
									"99b5708c-3643-46c0-98b0-d586090d6d81",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "f22bf711-3dad-8ad8-9fb9-afdf74f016ff",
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
							jobValue = "DARKKNIGHT",
							uuid = "54860beb-369a-65bd-ae76-e93113fd0101",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "8e8854f9-6c20-98d5-8249-a1d5679c6ca3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "de297380-76a0-1ef9-b0f9-6e0d0ef5efc9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "99b5708c-3643-46c0-98b0-d586090d6d81",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 360.8,
				name = "[DRK OT] early delirium",
				timelineIndex = 92,
				uuid = "5a342965-9a04-c0f7-9905-c6538ef9f53e",
				version = 2,
			},
		},
	},
	[93] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "5342bbaa-0cef-35a6-5fb6-b88cadb72c9a",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "55a0ecf1-3330-65df-b49c-e69cacbfed0f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "ea2d09d3-5382-f8af-81d7-8f5b72e7db09",
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
							actionLua = "ACR_RikuDRK3_Shadowbringer = false\nself.used = true",
							conditions = 
							{
								
								{
									"336e2fc9-d22c-7cb0-8e0e-a372c570f132",
									true,
								},
								
								{
									"199397f1-c8c3-9fb3-acb7-fc5d81a92a62",
									true,
								},
								
								{
									"57f0579c-6466-bdbc-869c-d4286fbba880",
									true,
								},
							},
							name = "Set Shb",
							uuid = "02206672-f526-ab7a-b861-0db148dd3f06",
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
							jobValue = "DARKKNIGHT",
							uuid = "336e2fc9-d22c-7cb0-8e0e-a372c570f132",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "199397f1-c8c3-9fb3-acb7-fc5d81a92a62",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "a3758a3c-816d-e481-bed7-be79bdbce5da",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "57f0579c-6466-bdbc-869c-d4286fbba880",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 363.5,
				name = "[DRK OT] shb",
				timelineIndex = 93,
				timerOffset = -2,
				uuid = "0c852cc4-a1ee-5c28-8a43-24437af27ecf",
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
				name = "Frureactions\\lpdu strats",
				uuid = "bf9e4220-5fd8-b714-3501-367e8eb14790",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "b047bfd9-e190-4d0a-96df-f796a119fe7a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "4fa7b06a-9db9-464d-b103-00f3168a4bea",
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
							actionLua = "ACR_RikuDRK3_Tankbar_Reprisal = true\nself.used = true",
							conditions = 
							{
								
								{
									"11576f3c-4fad-f1fd-b498-b39419fd5387",
									true,
								},
								
								{
									"fdef613d-787e-58c0-a75f-6819f3ca76e3",
									true,
								},
								
								{
									"000f7da4-5041-138f-9452-0b41eda7bca2",
									true,
								},
								
								{
									"5210c2ed-6ac1-9546-b4d5-06d91b58b2a3",
									true,
								},
							},
							name = "Request Reprisal",
							uuid = "ccf6e26c-71c1-e2dd-bd0e-be0428cabfbd",
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
							jobValue = "DARKKNIGHT",
							uuid = "11576f3c-4fad-f1fd-b498-b39419fd5387",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "fdef613d-787e-58c0-a75f-6819f3ca76e3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "000f7da4-5041-138f-9452-0b41eda7bca2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "892d2dfd-2c94-c354-9a7b-e1c5db0aa203",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "5210c2ed-6ac1-9546-b4d5-06d91b58b2a3",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 368.8,
				name = "[DRK OT] reprisal",
				timeRange = true,
				timelineIndex = 95,
				timerStartOffset = -4,
				uuid = "216aac97-0ce5-609b-a8bf-f45ba705b159",
				version = 2,
			},
		},
	},
	[99] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "f8b6219c-d98f-df48-dff9-495ab2b0b2cc",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[100] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "998a4400-b899-5334-b6f3-c25c137914c2",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "daa99d12-6ccf-6326-8e25-34122295f603",
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
							actionLua = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf = true\nself.used = true",
							conditions = 
							{
								
								{
									"1e5c52b7-6a68-214d-9f0e-87e43a020697",
									true,
								},
								
								{
									"ca1ad4f2-6f9b-f00e-a813-39d6a7a33544",
									true,
								},
								
								{
									"48997bc8-b3ec-8836-96d6-7a58fc180903",
									true,
								},
								
								{
									"9629c5dd-de5d-19f8-9fbd-2dd4e8e52a83",
									true,
								},
							},
							name = "Request TBN Self",
							uuid = "e5c41723-c6f4-a85b-9843-26c843b97368",
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
							jobValue = "DARKKNIGHT",
							uuid = "1e5c52b7-6a68-214d-9f0e-87e43a020697",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "ca1ad4f2-6f9b-f00e-a813-39d6a7a33544",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "48997bc8-b3ec-8836-96d6-7a58fc180903",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "6995e797-e0cb-a093-a09c-7739fbd72835",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 3,
							mpType = 2,
							mpValue = 7000,
							uuid = "9629c5dd-de5d-19f8-9fbd-2dd4e8e52a83",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 388.7,
				name = "[DRK OT] tbn",
				timeRange = true,
				timelineIndex = 100,
				timerStartOffset = -6.5,
				uuid = "d9d6af09-e38d-af42-bbf8-9aed76180b78",
				version = 2,
			},
		},
	},
	[102] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "a32f382f-1a4b-1a03-90f0-023d0b6bf65f",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "6b5953c3-bb9d-ca1a-8a69-cac7dbd80e03",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "1ccbdcd8-7d22-5f41-a7dc-95f1571f6e64",
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
							actionLua = "ACR_RikuDRK3_MinMPDump = 3000\nself.used = true",
							conditions = 
							{
								
								{
									"9f1b2f14-4a28-cddd-b754-c4340e9bd21a",
									true,
								},
								
								{
									"f57bf91e-34e7-a45b-bd36-7f4d46ba41e6",
									true,
								},
								
								{
									"52d9480e-a87c-3f80-9ddd-d61f1495db07",
									true,
								},
							},
							uuid = "62c7b2c4-69d3-47f3-a1d9-a9bd6bfd2a67",
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
							jobValue = "DARKKNIGHT",
							uuid = "9f1b2f14-4a28-cddd-b754-c4340e9bd21a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "f57bf91e-34e7-a45b-bd36-7f4d46ba41e6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "0eec2453-ded2-f96e-b678-3c600928c72a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "52d9480e-a87c-3f80-9ddd-d61f1495db07",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 418.8,
				name = "[DRK OT] mp after 3k",
				timelineIndex = 102,
				timerOffset = -3,
				uuid = "9c5530f1-c2ad-5214-a884-7a0efb0d44e3",
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
							actionID = 16472,
							conditions = 
							{
								
								{
									"1817f24e-6e41-1ce7-bcf8-9157430f1a29",
									true,
								},
								
								{
									"3c872283-d2f4-6a4b-af75-ddabee755302",
									true,
								},
								
								{
									"7e1b6a01-2ca1-088b-a4b4-fdb159f9071c",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "8c507be9-0d8c-5c4a-9b1e-9f74a139deb1",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_Hotbar_Potion = true\nself.used = true",
							conditions = 
							{
								
								{
									"1817f24e-6e41-1ce7-bcf8-9157430f1a29",
									true,
								},
								
								{
									"3c872283-d2f4-6a4b-af75-ddabee755302",
									true,
								},
								
								{
									"7e1b6a01-2ca1-088b-a4b4-fdb159f9071c",
									true,
								},
								
								{
									"468199d2-801c-dd07-804e-bb2b1a70099c",
									true,
								},
							},
							name = "Set Potion",
							uuid = "b03a0675-c9ad-2da2-8d34-1cff5ddf358b",
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
							jobValue = "DARKKNIGHT",
							uuid = "1817f24e-6e41-1ce7-bcf8-9157430f1a29",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "3c872283-d2f4-6a4b-af75-ddabee755302",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "e182ec1c-98fb-dd23-804c-2adcd8988428",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "7e1b6a01-2ca1-088b-a4b4-fdb159f9071c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return ACR_RikuDRK3_Potion == true\n\n\n",
							uuid = "468199d2-801c-dd07-804e-bb2b1a70099c",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 418.8,
				name = "[DRK OT] Pot",
				timeRange = true,
				timelineIndex = 102,
				timerStartOffset = -3,
				uuid = "05a57735-2f30-7c4f-8c9f-8e006fe74e44",
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
							actionID = 16472,
							conditions = 
							{
								
								{
									"8d7c9142-1b58-6ef2-ae50-c0ac24ca423d",
									true,
								},
								
								{
									"d1d18f76-96b3-28a8-bad3-0053b40cd0d6",
									true,
								},
								
								{
									"8f7e7f5a-ec0a-5f89-98e7-ce5783d97a0b",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "6734134c-3145-2ce9-aff4-253759131ab1",
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
							jobValue = "DARKKNIGHT",
							uuid = "8d7c9142-1b58-6ef2-ae50-c0ac24ca423d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "d1d18f76-96b3-28a8-bad3-0053b40cd0d6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "f20ce20f-3b64-75a6-8cce-d64e2272d594",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "8f7e7f5a-ec0a-5f89-98e7-ce5783d97a0b",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 418.8,
				name = "[DRK OT] Living shadow",
				timelineIndex = 102,
				timerOffset = -0.69999998807907,
				uuid = "0e7312bc-f6d8-7465-91a7-b3b24b0d7d7d",
				version = 2,
			},
		},
	},
	[108] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "94fc93f1-9c49-6ae5-199b-bc8bf0e8f4a1",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[117] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "77e287d9-04f8-97c5-9882-3b7ff6fed289",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[119] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "92ec7e9b-b40b-41cf-76c4-9635fc38c0cb",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[120] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "47032b6b-3bc5-b58f-af16-57a192bd315b",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "91e28432-625f-1c88-b2da-44cc5d70b869",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "a6441f4e-f782-58c4-93cd-2c9bfba0919c",
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
							actionLua = "ACR_RikuDRK3_Unmend = true\nself.used = true",
							conditions = 
							{
								
								{
									"6ea06d3f-01a0-39f0-b8a0-2415f538de41",
									true,
								},
								
								{
									"b96c8853-29f0-2468-ad21-f123a0dd307e",
									true,
								},
								
								{
									"2f709b88-9074-9823-be27-a3814e7ee423",
									true,
								},
							},
							name = "Set Unmend",
							uuid = "490fdec5-8a60-e6bc-876e-11c0967613e7",
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
							jobValue = "DARKKNIGHT",
							uuid = "6ea06d3f-01a0-39f0-b8a0-2415f538de41",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "b96c8853-29f0-2468-ad21-f123a0dd307e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "6979a1a7-f4ae-570b-9797-b1830247218a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "2f709b88-9074-9823-be27-a3814e7ee423",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 514,
				name = "[DRK OT] unmend",
				timelineIndex = 120,
				uuid = "8b630f91-48f1-d945-989e-17ef36f923f7",
				version = 2,
			},
		},
	},
	[121] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "6e759b6a-8860-ba8e-609c-a570ee14999a",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[123] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "59bcc184-ac00-39b8-c2ea-9fa631ef0534",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[126] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "e2a91591-20c1-e55d-1767-c83ba09d6941",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[127] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "194622e0-efcc-aa9c-06de-db7acf0eb490",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[128] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "e8debb63-d27b-a177-b5d2-e1f9aee1e593",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[130] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "71eb5294-e9f5-fe08-3083-214a3f782d04",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[131] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "f948e095-e47a-22b9-ba66-23cb714790c5",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[132] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "62f60cfa-0e27-0ade-61ed-4ae4543106ea",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[133] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "737ef9bb-aff1-4b1f-4809-65252cbe96eb",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[134] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "bcb3d6f0-793c-5eec-ab9a-d176ff018e60",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "df1ad485-5f4c-50b6-a23e-aece16ad0be4",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "6f71120b-6ffe-baf0-b164-6be47fad4c05",
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
							actionID = 16472,
							conditions = 
							{
								
								{
									"84693b4a-29b4-ad44-a4c0-fc4f8180a48f",
									true,
								},
								
								{
									"bac36f0c-fe43-08a0-9ff3-6ab28adc1020",
									true,
								},
								
								{
									"0f26df14-178a-456c-b09b-4ea192d09a1c",
									true,
								},
							},
							uuid = "e3ba0957-54ac-5819-8a4f-853f1d700122",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							acrOptionType = "Hold Action",
							conditions = 
							{
								
								{
									"84693b4a-29b4-ad44-a4c0-fc4f8180a48f",
									true,
								},
								
								{
									"bac36f0c-fe43-08a0-9ff3-6ab28adc1020",
									true,
								},
								
								{
									"0f26df14-178a-456c-b09b-4ea192d09a1c",
									true,
								},
							},
							holdActionDuration = 9,
							holdActionID = 36932,
							uuid = "cb856778-0b42-da47-84f9-f5e91bcae746",
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
							jobValue = "DARKKNIGHT",
							uuid = "84693b4a-29b4-ad44-a4c0-fc4f8180a48f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "bac36f0c-fe43-08a0-9ff3-6ab28adc1020",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "4a33a191-eacc-c437-86de-26fbd6891cb3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "0f26df14-178a-456c-b09b-4ea192d09a1c",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 569.3,
				name = "[DRK OT] living shadow",
				timelineIndex = 134,
				timerOffset = 0.40000000596046,
				uuid = "2ca75002-b1de-f7a7-b3b4-f3a80e7c5195",
				version = 2,
			},
		},
	},
	[135] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "0b2d8921-71a4-18ad-b372-0597c8648111",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[138] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "ddedc5ac-fb2a-5c30-a45f-61624404e2dc",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "d3f42bd4-4d57-896c-ab35-ab5e7ff2e251",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "013d89cd-2bc5-380c-b89b-9dccd416e4c1",
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
							actionLua = "ACR_RikuDRK3_Unmend = false\nself.used = true",
							conditions = 
							{
								
								{
									"2c0eaa14-fbeb-9e4f-8e40-097f93c89652",
									true,
								},
								
								{
									"7555eb95-f820-83fc-b5ad-43f969d33343",
									true,
								},
								
								{
									"9230115c-0882-81ae-bd8a-28530c2294d4",
									true,
								},
							},
							name = "Set Unmend",
							uuid = "e9ad5d07-140e-2dd4-b571-25d5b127a475",
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
							jobValue = "DARKKNIGHT",
							uuid = "2c0eaa14-fbeb-9e4f-8e40-097f93c89652",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "7555eb95-f820-83fc-b5ad-43f969d33343",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "e9346c96-b962-224f-a55e-c39c6a602131",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "9230115c-0882-81ae-bd8a-28530c2294d4",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 578.6,
				name = "[DRK OT] unmend off",
				timelineIndex = 138,
				uuid = "223e6c93-e3ae-6ebe-8694-10dd1543818f",
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
							actionLua = "ACR_RikuDRK3_Tankbar_DarkMissionary = true\nself.used = true",
							conditions = 
							{
								
								{
									"a2170d36-b362-d5c1-9b2e-510c1eb791c5",
									true,
								},
								
								{
									"1a7f372e-eb6e-0e0e-99f9-d37f150d8f3e",
									true,
								},
								
								{
									"75317b70-7273-8dc5-b788-79cf5f384318",
									true,
								},
								
								{
									"fa838ca7-efa3-463a-86c4-66779f21e410",
									true,
								},
							},
							name = "Request Dark Missionary",
							uuid = "4c851184-5bb4-2407-b61d-4905d55f5bc1",
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
							jobValue = "DARKKNIGHT",
							uuid = "a2170d36-b362-d5c1-9b2e-510c1eb791c5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "1a7f372e-eb6e-0e0e-99f9-d37f150d8f3e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "75317b70-7273-8dc5-b788-79cf5f384318",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "b6d585cb-4914-f060-92f7-0a18e02213f2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "fa838ca7-efa3-463a-86c4-66779f21e410",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 578.6,
				name = "[DRK OT] Dark missionary ot",
				timeRange = true,
				timelineIndex = 138,
				timerStartOffset = -14,
				uuid = "105a2536-aa0d-1b79-b37c-68018639a06e",
				version = 2,
			},
		},
	},
	[139] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "08bfde6d-3016-f761-9696-5a438492609d",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "b3c81dfc-1948-7333-8e0d-5e41ea39f7e0",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "3bcae44a-1e15-2041-a20e-d83fe04c41e6",
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
							actionLua = "ACR_RikuDRK3_Shadowbringer = false\nself.used = true",
							conditions = 
							{
								
								{
									"45a8c7cb-4875-59c8-a49b-9f2f94ebcb11",
									true,
								},
								
								{
									"a044ee34-bea2-0af3-b075-9861d2c773b7",
									true,
								},
								
								{
									"7b8c4695-2c16-b437-9c7d-d471d7e69137",
									true,
								},
							},
							name = "Set Shb",
							uuid = "b446f97e-cf79-72c8-abdc-29df726a5a36",
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
							jobValue = "DARKKNIGHT",
							uuid = "45a8c7cb-4875-59c8-a49b-9f2f94ebcb11",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "a044ee34-bea2-0af3-b075-9861d2c773b7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "018efbf1-3c38-ac93-9b72-0660787d56f3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "7b8c4695-2c16-b437-9c7d-d471d7e69137",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 587.1,
				name = "[DRK OT] shb off",
				timelineIndex = 139,
				uuid = "189e72d0-e617-eb87-b31e-b96ff99a6f98",
				version = 2,
			},
		},
	},
	[140] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "f837a62d-f14e-fa59-1103-62978d10de5d",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "3a2c276a-ed90-3b55-acc9-29c69e1add16",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "5fd31a4c-58ba-37a7-8160-2448de869ced",
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
							actionLua = "ACR_RikuDRK3_MinMPDump = 6000\nself.used = true",
							conditions = 
							{
								
								{
									"472128b4-279d-64cd-aa1d-79fa51db0726",
									true,
								},
								
								{
									"5033677b-8ce8-21ef-bcea-3c8f55fbeb3d",
									true,
								},
								
								{
									"e6046b4a-2a84-e5b4-b7c4-b2ee9eafdf91",
									true,
								},
							},
							uuid = "fe9f4c8e-dbf9-83a1-a435-2b97b3ed4d36",
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
							jobValue = "DARKKNIGHT",
							uuid = "472128b4-279d-64cd-aa1d-79fa51db0726",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "5033677b-8ce8-21ef-bcea-3c8f55fbeb3d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "d390286a-e82a-f792-9e9b-c209dd6a8400",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "e6046b4a-2a84-e5b4-b7c4-b2ee9eafdf91",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 595.4,
				name = "[DRK OT] Set mp to 6k",
				timelineIndex = 140,
				timerOffset = 4,
				uuid = "b6ed024a-586f-5527-b738-7e6363eda95a",
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
							actionLua = "ACR_RikuDRK3_Tankbar_Rampart = true\nself.used = true",
							conditions = 
							{
								
								{
									"32fc2fb8-603c-1b27-893f-a4bfdbd7aee9",
									true,
								},
								
								{
									"a10dee75-918e-55f6-ba03-eef602103e92",
									true,
								},
								
								{
									"541a1592-c7ec-124d-aa76-5d30b373c722",
									true,
								},
								
								{
									"830619f5-7c08-99ad-a592-d9ea80921de3",
									true,
								},
							},
							name = "Request Rampart",
							uuid = "cad173be-c694-4058-8be3-b996c35785f9",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_Tankbar_ShadowedVigil = true\nself.used = true",
							conditions = 
							{
								
								{
									"32fc2fb8-603c-1b27-893f-a4bfdbd7aee9",
									true,
								},
								
								{
									"a10dee75-918e-55f6-ba03-eef602103e92",
									true,
								},
								
								{
									"541a1592-c7ec-124d-aa76-5d30b373c722",
									true,
								},
								
								{
									"830619f5-7c08-99ad-a592-d9ea80921de3",
									true,
								},
							},
							name = "Request Vigil",
							uuid = "aaf595f3-13ad-da7f-94d0-745b48087e59",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_Tankbar_DarkMind = true\nself.used = true",
							conditions = 
							{
								
								{
									"32fc2fb8-603c-1b27-893f-a4bfdbd7aee9",
									true,
								},
								
								{
									"a10dee75-918e-55f6-ba03-eef602103e92",
									true,
								},
								
								{
									"541a1592-c7ec-124d-aa76-5d30b373c722",
									true,
								},
								
								{
									"830619f5-7c08-99ad-a592-d9ea80921de3",
									true,
								},
							},
							name = "Request Dark Mind",
							uuid = "65d0fd86-8b90-1033-a09c-d53f975a6acd",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_Tankbar_OblationSelf = true\nself.used = true",
							conditions = 
							{
								
								{
									"32fc2fb8-603c-1b27-893f-a4bfdbd7aee9",
									true,
								},
								
								{
									"a10dee75-918e-55f6-ba03-eef602103e92",
									true,
								},
								
								{
									"541a1592-c7ec-124d-aa76-5d30b373c722",
									true,
								},
								
								{
									"830619f5-7c08-99ad-a592-d9ea80921de3",
									true,
								},
							},
							name = "Request Oblation Self",
							uuid = "33cd8ced-567d-1c8d-81e3-bdc5442c1ff1",
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
							jobValue = "DARKKNIGHT",
							uuid = "32fc2fb8-603c-1b27-893f-a4bfdbd7aee9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "a10dee75-918e-55f6-ba03-eef602103e92",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "541a1592-c7ec-124d-aa76-5d30b373c722",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "d6f86542-968f-7073-96ba-21a3e45e73f2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return (Settings.FFXIVMINION.LPDU_FRU_HaloTank or \"MT\") == \"OT\"",
							uuid = "830619f5-7c08-99ad-a592-d9ea80921de3",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 595.4,
				name = "[DRK OT] Halo mits",
				timeRange = true,
				timelineIndex = 140,
				timerStartOffset = -12,
				uuid = "1123a257-5766-5aa6-910b-85f01ca2f911",
				version = 2,
			},
		},
	},
	[141] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "ffcfec6c-fad9-85a8-092c-2e765c1ba39c",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[142] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "94ac2ab3-64df-cebf-9676-bf71e23112a3",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "06f89b39-97d9-2e88-a926-6ba82a9b1a41",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "122bbd9b-4681-bcf0-bee5-dea1231231ef",
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
							actionLua = "ACR_RikuDRK3_Shadowbringer = false\nself.used = true",
							conditions = 
							{
								
								{
									"cd05a89b-02d2-7be2-b145-2f9eb07910fe",
									true,
								},
								
								{
									"65379903-5cfa-0b9d-959d-164e40c5aee7",
									true,
								},
								
								{
									"f611b0d1-94ff-4ada-951f-32640a01cb73",
									true,
								},
							},
							name = "Set Shb",
							uuid = "230da51c-ebb2-68ba-9527-97c301c977a8",
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
							jobValue = "DARKKNIGHT",
							uuid = "cd05a89b-02d2-7be2-b145-2f9eb07910fe",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "65379903-5cfa-0b9d-959d-164e40c5aee7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "cad46fa8-a74a-8867-85e9-b643221e8143",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "f611b0d1-94ff-4ada-951f-32640a01cb73",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 612.6,
				name = "[DRK OT] shb off",
				timelineIndex = 142,
				uuid = "e77d9386-59c0-4551-ae2b-cbb00aee1e7b",
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
				name = "Frureactions\\lpdu strats",
				uuid = "6b0db039-f67e-db4d-17f7-80cb4b6d7969",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[145] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "70898b88-d337-fe8c-8e14-7e4a184f32b8",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[146] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "3684d89f-91d5-4e53-a59a-c225a814ae8f",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[148] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "7c5b7d55-1c7d-5501-a4a9-63af3d784285",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[149] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "bb2e9b54-d25f-c750-f716-ac2eab0b05c4",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[150] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "b68f8ec6-9f91-f742-5a6d-8050d21d50b6",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "a4e40382-c11a-efe6-9b7f-7d19ced2805b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "500c03a4-e51f-2b97-a19a-bea761dac187",
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
							actionLua = "ACR_RikuDRK3_Tankbar_Rampart = true\nself.used = true",
							conditions = 
							{
								
								{
									"ad351587-0dba-5602-9b34-4c9555c4680d",
									true,
								},
								
								{
									"858b9365-3f1a-af00-ab97-e9a2cc0d9014",
									true,
								},
								
								{
									"85bda2f2-7fe6-b43e-a0f6-e66b85109b46",
									true,
								},
								
								{
									"de014985-180f-5277-a285-f46515ffd813",
									true,
								},
							},
							name = "Request Rampart",
							uuid = "ff09e8d1-642d-3d2a-99e4-f7b687453eb4",
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
							jobValue = "DARKKNIGHT",
							uuid = "ad351587-0dba-5602-9b34-4c9555c4680d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "858b9365-3f1a-af00-ab97-e9a2cc0d9014",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "85bda2f2-7fe6-b43e-a0f6-e66b85109b46",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "8d647680-b377-c625-8a21-9a87fde34bed",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return (Settings.FFXIVMINION.LPDU_FRU_ApocBait or \"OT\") == \"OT\" and Settings.FFXIVMINION.LPDU_FRU_DRKApocInvuln == true",
							uuid = "09fc0331-9511-5b5b-984e-5fba8983a7e5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return (Settings.FFXIVMINION.LPDU_FRU_ApocBait or \"OT\") == \"OT\" and Settings.FFXIVMINION.LPDU_FRU_DRKApocInvuln ~= true",
							name = "OT Apocalypse kitchen sink",
							uuid = "de014985-180f-5277-a285-f46515ffd813",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 644.3,
				name = "[DRK OT] rampart",
				timeRange = true,
				timelineIndex = 150,
				timerStartOffset = -18,
				uuid = "92f652cf-ed10-cf70-b119-6035a758e94b",
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
							actionLua = "ACR_RikuDRK3_Tankbar_ShadowedVigil = true\nself.used = true",
							conditions = 
							{
								
								{
									"d3a73ad7-8820-1308-860d-c939421ec625",
									true,
								},
								
								{
									"8fc87c1f-1c66-df00-8bb0-eed3b3ece0b8",
									true,
								},
								
								{
									"3da27fa0-4cf0-d3d8-bcc1-438138a7fe6c",
									true,
								},
								
								{
									"f447cb7a-665d-a92b-9225-481aad6eb21c",
									true,
								},
							},
							name = "Request Vigil",
							uuid = "5e52bd2c-b167-57ab-81d9-512f7653ce0b",
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
							jobValue = "DARKKNIGHT",
							uuid = "d3a73ad7-8820-1308-860d-c939421ec625",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "8fc87c1f-1c66-df00-8bb0-eed3b3ece0b8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "3da27fa0-4cf0-d3d8-bcc1-438138a7fe6c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "09620f65-288f-567c-ac15-5b96b898f9c1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return (Settings.FFXIVMINION.LPDU_FRU_ApocBait or \"OT\") == \"OT\" and Settings.FFXIVMINION.LPDU_FRU_DRKApocInvuln == true",
							uuid = "96f72419-7d41-7980-b34c-eb74e5aeaad8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return (Settings.FFXIVMINION.LPDU_FRU_ApocBait or \"OT\") == \"OT\" and Settings.FFXIVMINION.LPDU_FRU_DRKApocInvuln ~= true",
							name = "OT Apocalypse kitchen sink",
							uuid = "f447cb7a-665d-a92b-9225-481aad6eb21c",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 644.3,
				name = "[DRK OT] vigil",
				timeRange = true,
				timelineIndex = 150,
				timerStartOffset = -13,
				uuid = "7b6f216b-4c80-2241-b706-61859c746454",
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
							actionLua = "ACR_RikuDRK3_Tankbar_DarkMind = true\nself.used = true",
							conditions = 
							{
								
								{
									"2ffad678-962c-964f-8048-fe65f9427e91",
									true,
								},
								
								{
									"df7fecd3-38f8-358e-8747-a4d098cf8427",
									true,
								},
								
								{
									"ac0ac531-4a92-83f5-964c-8aa7a5d20e4a",
									true,
								},
								
								{
									"b9c1650a-86c2-ac69-aaa4-0f43ef0e10b1",
									true,
								},
							},
							name = "Request Dark Mind",
							uuid = "d172697b-c609-4a86-948a-f9714d908dc7",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_Tankbar_OblationSelf = true\nself.used = true",
							conditions = 
							{
								
								{
									"2ffad678-962c-964f-8048-fe65f9427e91",
									true,
								},
								
								{
									"df7fecd3-38f8-358e-8747-a4d098cf8427",
									true,
								},
								
								{
									"ac0ac531-4a92-83f5-964c-8aa7a5d20e4a",
									true,
								},
								
								{
									"b9c1650a-86c2-ac69-aaa4-0f43ef0e10b1",
									true,
								},
							},
							name = "Request Oblation Self",
							uuid = "39ee1c83-ef24-ad92-a8ec-14835e5f6bc6",
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
							jobValue = "DARKKNIGHT",
							uuid = "2ffad678-962c-964f-8048-fe65f9427e91",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "df7fecd3-38f8-358e-8747-a4d098cf8427",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "ac0ac531-4a92-83f5-964c-8aa7a5d20e4a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "bae220a0-80ee-e3bd-a247-b6e24d1839d0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return (Settings.FFXIVMINION.LPDU_FRU_ApocBait or \"OT\") == \"OT\" and Settings.FFXIVMINION.LPDU_FRU_DRKApocInvuln == true",
							uuid = "af6d15e6-8ffe-fbfa-ad88-ee5863c5c1a6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return (Settings.FFXIVMINION.LPDU_FRU_ApocBait or \"OT\") == \"OT\" and Settings.FFXIVMINION.LPDU_FRU_DRKApocInvuln ~= true",
							name = "OT Apocalypse kitchen sink",
							uuid = "b9c1650a-86c2-ac69-aaa4-0f43ef0e10b1",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 644.3,
				name = "[DRK OT] dark mind",
				timeRange = true,
				timelineIndex = 150,
				timerStartOffset = -8,
				uuid = "fcf6f943-cc5c-d629-b7e5-cf54f4c55bf3",
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
							actionLua = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf = true\nself.used = true",
							conditions = 
							{
								
								{
									"f94f19a4-7482-03cb-9adc-6f2821c2cb69",
									true,
								},
								
								{
									"99d142d8-a48f-68f2-a0ce-616424c39a18",
									true,
								},
								
								{
									"520b4a90-0531-1267-88c6-a6c9ebadd074",
									true,
								},
								
								{
									"fad15faa-a7cd-8b17-8472-07629a7210f1",
									true,
								},
							},
							name = "Request TBN Self",
							uuid = "6e94aff4-a292-445f-89f3-53810aa9b84c",
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
							jobValue = "DARKKNIGHT",
							uuid = "f94f19a4-7482-03cb-9adc-6f2821c2cb69",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "99d142d8-a48f-68f2-a0ce-616424c39a18",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "520b4a90-0531-1267-88c6-a6c9ebadd074",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "a230d2dd-166a-3512-8158-cd09c5d18c6e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return (Settings.FFXIVMINION.LPDU_FRU_ApocBait or \"OT\") == \"OT\" and Settings.FFXIVMINION.LPDU_FRU_DRKApocInvuln == true",
							uuid = "438afcca-0622-528f-8763-69fe8c2eb6c8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return (Settings.FFXIVMINION.LPDU_FRU_ApocBait or \"OT\") == \"OT\" and Settings.FFXIVMINION.LPDU_FRU_DRKApocInvuln ~= true",
							name = "OT Apocalypse kitchen sink",
							uuid = "fad15faa-a7cd-8b17-8472-07629a7210f1",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 644.3,
				name = "[DRK OT] TBN",
				timeRange = true,
				timelineIndex = 150,
				timerStartOffset = -6.9000000953674,
				uuid = "f2d40d71-847e-d19d-b2e9-1062ec65b4bd",
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
							actionLua = "ACR_RikuDRK3_Tankbar_LivingDead = true\nself.used = true",
							conditions = 
							{
								
								{
									"388c2e53-381e-17c1-b091-cb725f64fbf3",
									true,
								},
								
								{
									"0691329d-6b27-6853-adb3-01b14fdb27fa",
									true,
								},
								
								{
									"3be15277-45eb-893f-a639-65ff31d1d06e",
									true,
								},
								
								{
									"9b8a18bd-dca4-8cac-84d0-9f1313f10861",
									true,
								},
							},
							name = "Request Living Dead",
							uuid = "1d2d3fbd-c601-14d1-8354-ec724cd94529",
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
							jobValue = "DARKKNIGHT",
							uuid = "388c2e53-381e-17c1-b091-cb725f64fbf3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "0691329d-6b27-6853-adb3-01b14fdb27fa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "3be15277-45eb-893f-a639-65ff31d1d06e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "9fa736d5-7272-1ed6-a072-945cdf1e7d24",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return (Settings.FFXIVMINION.LPDU_FRU_ApocBait or \"OT\") == \"OT\" and Settings.FFXIVMINION.LPDU_FRU_DRKApocInvuln == true",
							uuid = "9b8a18bd-dca4-8cac-84d0-9f1313f10861",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				enabled = false,
				mechanicTime = 644.3,
				name = "[DRK OT] Living dead",
				timeRange = true,
				timelineIndex = 150,
				timerStartOffset = -5,
				uuid = "769a83ba-ce69-d9b7-8684-c98e9df1d040",
				version = 2,
			},
		},
	},
	[151] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "5953d867-1850-bca3-a48b-0e01a273cfd7",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[153] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "bae1fdc1-c330-885d-3957-93a70dfffdb1",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[154] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "08592e1a-2acf-5d8e-be50-b7f46060e78a",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[156] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "4c3399b4-4e6e-dcb8-db88-485ad3b9a024",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "ab2662bb-2d0b-375d-81b6-b250c2340e0d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "cac141eb-bed7-94c1-a6a1-52d1bcc6fe1a",
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
							actionLua = "ACR_RikuDRK3_MinMPDump = 9000\nself.used = true",
							conditions = 
							{
								
								{
									"f4bbf4c9-994f-7ed3-a1e0-471d5586330a",
									true,
								},
								
								{
									"ae45d64f-5a96-8570-b4c8-fd3d0f2f8a4b",
									true,
								},
								
								{
									"4bc74e0a-d346-965c-9de1-a5e708058dd5",
									true,
								},
							},
							uuid = "a21ecf66-0628-e7f7-81e0-464aa6331523",
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
							jobValue = "DARKKNIGHT",
							uuid = "f4bbf4c9-994f-7ed3-a1e0-471d5586330a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "ae45d64f-5a96-8570-b4c8-fd3d0f2f8a4b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "ec1c4b44-0c6d-c520-b8eb-9a73ce3f73cc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "4bc74e0a-d346-965c-9de1-a5e708058dd5",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 705.3,
				name = "[DRK OT] mp 9k",
				timelineIndex = 156,
				timerOffset = -2,
				uuid = "95bae6fb-a741-3af5-8c72-daecd9604323",
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
							actionLua = "ACR_RikuDRK3_CD = true\nself.used = true",
							conditions = 
							{
								
								{
									"9654f223-31c3-3224-b550-b2cc1585e01a",
									true,
								},
								
								{
									"c660dea1-ce57-fa15-9d40-2d016a4a00d4",
									true,
								},
								
								{
									"aa99f9da-6514-25f5-acc7-d029f37bfc44",
									true,
								},
							},
							name = "Set CD",
							uuid = "2c1e7c01-886a-76c4-ad0f-d5a63718d6d3",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_SaltedEarth = true\nself.used = true",
							conditions = 
							{
								
								{
									"9654f223-31c3-3224-b550-b2cc1585e01a",
									true,
								},
								
								{
									"c660dea1-ce57-fa15-9d40-2d016a4a00d4",
									true,
								},
								
								{
									"aa99f9da-6514-25f5-acc7-d029f37bfc44",
									true,
								},
							},
							name = "Set Salted Earth",
							uuid = "c3f308c8-7de2-a3ce-a575-770da92c945f",
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
							jobValue = "DARKKNIGHT",
							uuid = "9654f223-31c3-3224-b550-b2cc1585e01a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "c660dea1-ce57-fa15-9d40-2d016a4a00d4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "7270f6d8-6b7e-8fa0-88bd-ead064027e31",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "aa99f9da-6514-25f5-acc7-d029f37bfc44",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 705.3,
				name = "[DRK OT] enable cds",
				timelineIndex = 156,
				uuid = "75b0d795-dc81-2526-9ddc-f4d1965deb47",
				version = 2,
			},
		},
	},
	[157] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "27ef9a35-818d-2369-9466-aa1b5dac3665",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[158] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "eed1bc3e-ecc7-e7aa-82e7-3ea8038f9e6e",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[162] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "d573e4d9-72b5-5315-e4bb-5aab54902f89",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "85d06901-0707-c6ae-aa94-4231bbf2b051",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "e82d44ef-d6c5-4e7b-86bf-43f61da95cb6",
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
							acrOptionType = "Hold Action",
							conditions = 
							{
								
								{
									"b67630ab-7547-1c75-9f80-d620cf4fb11c",
									true,
								},
								
								{
									"964fddf8-8ccd-3a7b-9f9b-42404f5ecd35",
									true,
								},
								
								{
									"f09dd3f4-0cd6-cbc0-a56f-f9804697b78d",
									true,
								},
							},
							holdActionCharges = 3,
							holdActionDuration = 60,
							holdActionID = 36928,
							uuid = "022376a2-2418-2260-b970-217ebbe638a0",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							acrOptionType = "Hold Action",
							conditions = 
							{
								
								{
									"b67630ab-7547-1c75-9f80-d620cf4fb11c",
									true,
								},
								
								{
									"964fddf8-8ccd-3a7b-9f9b-42404f5ecd35",
									true,
								},
								
								{
									"f09dd3f4-0cd6-cbc0-a56f-f9804697b78d",
									true,
								},
							},
							holdActionDuration = 60,
							holdActionID = 36929,
							uuid = "b032b15b-da97-2692-bb0e-777a03a1a012",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							acrOptionType = "Hold Action",
							conditions = 
							{
								
								{
									"b67630ab-7547-1c75-9f80-d620cf4fb11c",
									true,
								},
								
								{
									"964fddf8-8ccd-3a7b-9f9b-42404f5ecd35",
									true,
								},
								
								{
									"f09dd3f4-0cd6-cbc0-a56f-f9804697b78d",
									true,
								},
							},
							holdActionDuration = 60,
							holdActionID = 36930,
							uuid = "67b43771-7bd9-dc53-9588-f80cc8f1bc3f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							acrOptionType = "Hold Action",
							conditions = 
							{
								
								{
									"b67630ab-7547-1c75-9f80-d620cf4fb11c",
									true,
								},
								
								{
									"964fddf8-8ccd-3a7b-9f9b-42404f5ecd35",
									true,
								},
								
								{
									"f09dd3f4-0cd6-cbc0-a56f-f9804697b78d",
									true,
								},
							},
							holdActionDuration = 60,
							holdActionID = 7391,
							uuid = "ecfb63ff-c910-943a-a998-951b7de5d6b6",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							acrOptionType = "Hold Action",
							conditions = 
							{
								
								{
									"b67630ab-7547-1c75-9f80-d620cf4fb11c",
									true,
								},
								
								{
									"964fddf8-8ccd-3a7b-9f9b-42404f5ecd35",
									true,
								},
								
								{
									"f09dd3f4-0cd6-cbc0-a56f-f9804697b78d",
									true,
								},
							},
							holdActionDuration = 60,
							holdActionID = 7392,
							uuid = "14c3a1ea-2edc-cb82-94ed-2dc0ec8a026d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							acrOptionType = "Hold Action",
							conditions = 
							{
								
								{
									"b67630ab-7547-1c75-9f80-d620cf4fb11c",
									true,
								},
								
								{
									"964fddf8-8ccd-3a7b-9f9b-42404f5ecd35",
									true,
								},
								
								{
									"f09dd3f4-0cd6-cbc0-a56f-f9804697b78d",
									true,
								},
							},
							holdActionDuration = 60,
							holdActionID = 36932,
							uuid = "180121c5-f83a-67fe-96c8-9f31591d1dd3",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							acrOptionType = "Hold Action",
							conditions = 
							{
								
								{
									"b67630ab-7547-1c75-9f80-d620cf4fb11c",
									true,
								},
								
								{
									"964fddf8-8ccd-3a7b-9f9b-42404f5ecd35",
									true,
								},
								
								{
									"f09dd3f4-0cd6-cbc0-a56f-f9804697b78d",
									true,
								},
							},
							holdActionDuration = 60,
							holdActionID = 3643,
							uuid = "e0afb766-974a-c5ab-96c6-4f9cc38736c8",
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
							jobValue = "DARKKNIGHT",
							uuid = "b67630ab-7547-1c75-9f80-d620cf4fb11c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "964fddf8-8ccd-3a7b-9f9b-42404f5ecd35",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "3780ef7e-707b-fa66-8735-ad4c5705e4b9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "f09dd3f4-0cd6-cbc0-a56f-f9804697b78d",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 729.2,
				name = "[DRK OT] hold guage",
				timelineIndex = 162,
				timerOffset = -16,
				uuid = "afd3f2f7-9f7e-0e2c-92c2-95cf830b59b7",
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
							actionID = 36932,
							conditions = 
							{
								
								{
									"727643b4-b8ad-2768-82d9-393658c53180",
									true,
								},
								
								{
									"77cd9b39-b1f9-03c7-80f5-31341b206d00",
									true,
								},
								
								{
									"17785ec4-6c1c-28b9-a031-ddc2f1933f4b",
									true,
								},
								
								{
									"f64dd529-04ab-0180-8189-26a833c50259",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "fb1d8103-a946-7fcc-9ff6-03fe420bb749",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_HoldGauge = false\nself.used = true",
							conditions = 
							{
								
								{
									"727643b4-b8ad-2768-82d9-393658c53180",
									true,
								},
								
								{
									"77cd9b39-b1f9-03c7-80f5-31341b206d00",
									true,
								},
								
								{
									"17785ec4-6c1c-28b9-a031-ddc2f1933f4b",
									true,
								},
								
								{
									"f64dd529-04ab-0180-8189-26a833c50259",
									true,
								},
							},
							name = "Set Hold Gauge",
							uuid = "30c0da1f-9aa2-f6f7-8609-2b7b482b6b48",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_MinMPDump = 3000\nself.used = true",
							conditions = 
							{
								
								{
									"727643b4-b8ad-2768-82d9-393658c53180",
									true,
								},
								
								{
									"77cd9b39-b1f9-03c7-80f5-31341b206d00",
									true,
								},
								
								{
									"17785ec4-6c1c-28b9-a031-ddc2f1933f4b",
									true,
								},
								
								{
									"f64dd529-04ab-0180-8189-26a833c50259",
									true,
								},
							},
							uuid = "b0b539f1-966a-82c5-b5a2-255d51222297",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_Shadowbringer = true\nself.used = true",
							conditions = 
							{
								
								{
									"727643b4-b8ad-2768-82d9-393658c53180",
									true,
								},
								
								{
									"77cd9b39-b1f9-03c7-80f5-31341b206d00",
									true,
								},
								
								{
									"17785ec4-6c1c-28b9-a031-ddc2f1933f4b",
									true,
								},
								
								{
									"f64dd529-04ab-0180-8189-26a833c50259",
									true,
								},
							},
							name = "Set Shb",
							uuid = "819a5e93-eebe-88d9-a55e-8593e21b3462",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							acrOptionType = "Hold Action",
							conditions = 
							{
								
								{
									"727643b4-b8ad-2768-82d9-393658c53180",
									true,
								},
								
								{
									"77cd9b39-b1f9-03c7-80f5-31341b206d00",
									true,
								},
								
								{
									"17785ec4-6c1c-28b9-a031-ddc2f1933f4b",
									true,
								},
								
								{
									"f64dd529-04ab-0180-8189-26a833c50259",
									true,
								},
							},
							holdActionDuration = 0.10000000149012,
							holdActionID = 7391,
							uuid = "fbcc9129-c63d-1342-9d63-1cc1786f76cf",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							acrOptionType = "Hold Action",
							conditions = 
							{
								
								{
									"727643b4-b8ad-2768-82d9-393658c53180",
									true,
								},
								
								{
									"77cd9b39-b1f9-03c7-80f5-31341b206d00",
									true,
								},
								
								{
									"17785ec4-6c1c-28b9-a031-ddc2f1933f4b",
									true,
								},
								
								{
									"f64dd529-04ab-0180-8189-26a833c50259",
									true,
								},
							},
							holdActionDuration = 0.10000000149012,
							holdActionID = 36930,
							uuid = "18b3fa96-4503-1447-ba42-871785ce67fa",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							acrOptionType = "Hold Action",
							conditions = 
							{
								
								{
									"727643b4-b8ad-2768-82d9-393658c53180",
									true,
								},
								
								{
									"77cd9b39-b1f9-03c7-80f5-31341b206d00",
									true,
								},
								
								{
									"17785ec4-6c1c-28b9-a031-ddc2f1933f4b",
									true,
								},
								
								{
									"f64dd529-04ab-0180-8189-26a833c50259",
									true,
								},
							},
							holdActionDuration = 0.10000000149012,
							holdActionID = 36929,
							uuid = "faf4fde6-b362-1eb0-b4a7-e43af415a193",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							acrOptionType = "Hold Action",
							conditions = 
							{
								
								{
									"727643b4-b8ad-2768-82d9-393658c53180",
									true,
								},
								
								{
									"77cd9b39-b1f9-03c7-80f5-31341b206d00",
									true,
								},
								
								{
									"17785ec4-6c1c-28b9-a031-ddc2f1933f4b",
									true,
								},
								
								{
									"f64dd529-04ab-0180-8189-26a833c50259",
									true,
								},
							},
							holdActionDuration = 0.10000000149012,
							holdActionID = 36928,
							uuid = "8bd32e7e-eea9-c63c-86ca-0349c1dbcdfd",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							acrOptionType = "Hold Action",
							conditions = 
							{
								
								{
									"727643b4-b8ad-2768-82d9-393658c53180",
									true,
								},
								
								{
									"77cd9b39-b1f9-03c7-80f5-31341b206d00",
									true,
								},
								
								{
									"17785ec4-6c1c-28b9-a031-ddc2f1933f4b",
									true,
								},
								
								{
									"f64dd529-04ab-0180-8189-26a833c50259",
									true,
								},
							},
							holdActionDuration = 0.10000000149012,
							holdActionID = 36932,
							uuid = "f55091a7-d1b5-2d55-8241-a833e18bace4",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							acrOptionType = "Hold Action",
							conditions = 
							{
								
								{
									"727643b4-b8ad-2768-82d9-393658c53180",
									true,
								},
								
								{
									"77cd9b39-b1f9-03c7-80f5-31341b206d00",
									true,
								},
								
								{
									"17785ec4-6c1c-28b9-a031-ddc2f1933f4b",
									true,
								},
								
								{
									"f64dd529-04ab-0180-8189-26a833c50259",
									true,
								},
							},
							holdActionDuration = 0.10000000149012,
							holdActionID = 7392,
							uuid = "aba9dc53-626d-b203-81ca-8850fb30d33e",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							acrOptionType = "Hold Action",
							conditions = 
							{
								
								{
									"727643b4-b8ad-2768-82d9-393658c53180",
									true,
								},
								
								{
									"77cd9b39-b1f9-03c7-80f5-31341b206d00",
									true,
								},
								
								{
									"17785ec4-6c1c-28b9-a031-ddc2f1933f4b",
									true,
								},
								
								{
									"f64dd529-04ab-0180-8189-26a833c50259",
									true,
								},
							},
							holdActionDuration = 0.10000000149012,
							holdActionID = 3643,
							uuid = "2f5b672f-8bbd-45cb-bb26-5ef16df79945",
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
							jobValue = "DARKKNIGHT",
							uuid = "727643b4-b8ad-2768-82d9-393658c53180",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "77cd9b39-b1f9-03c7-80f5-31341b206d00",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "de7736e2-cb17-f6a8-b3ad-17bca915fcef",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "17785ec4-6c1c-28b9-a031-ddc2f1933f4b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 49,
							category = "Self",
							uuid = "f64dd529-04ab-0180-8189-26a833c50259",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 729.2,
				name = "[DRK OT] hold till pot'ed",
				timeRange = true,
				timelineIndex = 162,
				timerEndOffset = 30,
				uuid = "1245e20d-b740-7559-9cf8-73eb1d3cd5fe",
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
							acrOptionType = "Hold Action",
							conditions = 
							{
								
								{
									"57813e61-7d35-c6c3-94b9-d3fcbc144260",
									true,
								},
								
								{
									"642c2eb4-45ce-5052-9313-d2c263ca5a82",
									true,
								},
								
								{
									"03272e61-460e-66fa-bd98-b1306964dc4d",
									true,
								},
							},
							holdActionDuration = 26.799999237061,
							holdActionID = 7390,
							uuid = "da11e430-337e-4706-9912-317f6e26a7f8",
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
							jobValue = "DARKKNIGHT",
							uuid = "57813e61-7d35-c6c3-94b9-d3fcbc144260",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "642c2eb4-45ce-5052-9313-d2c263ca5a82",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "fb6ba9ee-030a-9ec3-9d62-74ee2bf34ee3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "03272e61-460e-66fa-bd98-b1306964dc4d",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 729.2,
				name = "[DRK OT] hold delirium 26",
				timelineIndex = 162,
				timerOffset = -25,
				uuid = "7966e24a-2cb0-6685-b0ba-e259f8ee5e89",
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
							actionLua = "ACR_RikuDRK3_Hotbar_Potion = true\nself.used = true",
							conditions = 
							{
								
								{
									"70d73f4e-e1af-0506-81d5-4d4119441b0f",
									true,
								},
								
								{
									"8a6927f5-30d8-6ed0-8f37-965a8bf2cb98",
									true,
								},
								
								{
									"53f98ac4-2db6-bf84-afcb-856c5830a169",
									true,
								},
							},
							name = "Set Potion",
							uuid = "c4e6982b-7285-1d1b-a277-b26d580903b2",
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
							jobValue = "DARKKNIGHT",
							uuid = "70d73f4e-e1af-0506-81d5-4d4119441b0f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "8a6927f5-30d8-6ed0-8f37-965a8bf2cb98",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "ae4b42a7-55e8-2ea1-96e2-a7644f4b8816",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "53f98ac4-2db6-bf84-afcb-856c5830a169",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				loop = true,
				mechanicTime = 729.2,
				name = "[DRK OT] pot",
				timeRange = true,
				timelineIndex = 162,
				timerEndOffset = 17,
				timerStartOffset = 3,
				uuid = "c9b6d992-fc5d-f111-97c9-38bd92eb5572",
				version = 2,
			},
		},
	},
	[166] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "daa3c5cd-8499-fba1-fcf7-fd77a585017d",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "6aa902b9-d198-1816-b995-2508b130a80a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "8e69f7df-9dd9-bd6d-8930-9c64a888dc3b",
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
							actionLua = "ACR_RikuDRK3_Tankbar_DarkMissionary = true\nself.used = true",
							conditions = 
							{
								
								{
									"22f55cd7-fd70-dc94-9fee-2b02685a0e6c",
									true,
								},
								
								{
									"92e490bb-0f80-3051-9272-58c722b8d7df",
									true,
								},
								
								{
									"de8079a7-97fe-3a04-822c-0972a81a0858",
									true,
								},
								
								{
									"9fa22042-84fe-ad7e-9d0b-7185969b5b96",
									true,
								},
							},
							name = "Request Dark Missionary",
							uuid = "b7e42cef-9755-80a8-9aae-3d475cdd47c8",
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
							jobValue = "DARKKNIGHT",
							uuid = "22f55cd7-fd70-dc94-9fee-2b02685a0e6c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "92e490bb-0f80-3051-9272-58c722b8d7df",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "de8079a7-97fe-3a04-822c-0972a81a0858",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "c8f38ca5-a016-875f-b4cc-d2558a5a8bc7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "9fa22042-84fe-ad7e-9d0b-7185969b5b96",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 738.2,
				name = "[DRK OT] Dark missionary ot",
				timeRange = true,
				timelineIndex = 166,
				timerStartOffset = -14,
				uuid = "54ccc178-4336-1575-837f-0fd10cdd54d8",
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
							actionLua = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf = true\nself.used = true",
							conditions = 
							{
								
								{
									"c2024865-3994-43c6-a7f9-aeb7c85054fa",
									true,
								},
								
								{
									"ccdf48c4-49eb-03fd-930b-f05feb1b3e21",
									true,
								},
								
								{
									"647da3af-4973-ce1e-8950-5d17e0131160",
									true,
								},
								
								{
									"26710352-9151-acc1-955e-bc1b419093d2",
									true,
								},
							},
							name = "Request TBN Self",
							uuid = "56a2af78-c855-9fe5-a3e9-7b1e101e339b",
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
							jobValue = "DARKKNIGHT",
							uuid = "c2024865-3994-43c6-a7f9-aeb7c85054fa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "ccdf48c4-49eb-03fd-930b-f05feb1b3e21",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "647da3af-4973-ce1e-8950-5d17e0131160",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "0285652c-3aca-f639-be10-ae2df14d42b9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 3,
							mpType = 2,
							mpValue = 9000,
							uuid = "26710352-9151-acc1-955e-bc1b419093d2",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 738.2,
				name = "[DRK OT] tbn if mp above 9k",
				timeRange = true,
				timelineIndex = 166,
				timerStartOffset = -6.9000000953674,
				uuid = "1c464c6b-ee29-7aaa-98c1-f2e787e6ad52",
				version = 2,
			},
		},
	},
	[167] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "b75ce90c-3620-4970-4260-84d6767d42bc",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[168] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "956ec527-9b16-f273-4b3e-415d52d5ff97",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[169] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "6874f386-1ef0-62d2-1a49-069c4afecb76",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "be00656e-4a90-7f0a-ad0a-e25e82f8693a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "400601de-7859-19fd-9576-d9770751c6e0",
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
							actionLua = "ACR_RikuDRK3_Unmend = true\nself.used = true",
							conditions = 
							{
								
								{
									"9d35ca41-41a8-1ca5-a8b7-b46082d3934d",
									true,
								},
								
								{
									"2988a216-f75f-6246-b43a-e846a75e049a",
									true,
								},
								
								{
									"507dd1ab-6ad9-4a1f-8ced-697883316437",
									true,
								},
							},
							name = "Set Unmend",
							uuid = "2d76770d-07bb-6ed8-8f53-14cc422a7d61",
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
							jobValue = "DARKKNIGHT",
							uuid = "9d35ca41-41a8-1ca5-a8b7-b46082d3934d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "2988a216-f75f-6246-b43a-e846a75e049a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "afd5e961-b827-0955-8b5c-e82e4fdb165d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "507dd1ab-6ad9-4a1f-8ced-697883316437",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 752.3,
				name = "[DRK OT] unmend",
				timelineIndex = 169,
				uuid = "998bbbf1-adba-d09e-bd93-22b99bd76276",
				version = 2,
			},
		},
	},
	[170] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "3293c738-3770-eee4-38a3-66dec4b9dba8",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[171] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "65b20de9-1d8d-0925-da6d-a71fbb2f5059",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "70036592-79ee-ae4f-9605-0783d758fc2a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "220c322a-7b04-7f86-a22e-dd9293ae96c2",
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
							actionLua = "ACR_RikuDRK3_Tankbar_LivingDead = true\nself.used = true",
							conditions = 
							{
								
								{
									"eae1e252-f394-ed53-a98c-ae074d9bf3d0",
									true,
								},
								
								{
									"1f057103-ca56-c0c1-b0a6-bbe511a14852",
									true,
								},
								
								{
									"0a9f8918-3f92-9820-b00b-38be94e5d3df",
									true,
								},
								
								{
									"d5cbb54b-2b71-facb-8d73-22f705f6eadb",
									true,
								},
							},
							name = "Request Living Dead",
							uuid = "c8b0ab37-0419-6598-8f0f-3848c37c128f",
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
							jobValue = "DARKKNIGHT",
							uuid = "eae1e252-f394-ed53-a98c-ae074d9bf3d0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "1f057103-ca56-c0c1-b0a6-bbe511a14852",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "0a9f8918-3f92-9820-b00b-38be94e5d3df",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "dbeae0d9-37cf-0cbf-9a2d-34497f90e829",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return (Settings.FFXIVMINION.LPDU_FRU_DarklitTank or \"MT invulns\") == \"OT invulns\"",
							uuid = "d5cbb54b-2b71-facb-8d73-22f705f6eadb",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 757.3,
				name = "[DRK OT] Living dead",
				timelineIndex = 171,
				timerOffset = -1,
				uuid = "ed72ffca-7e11-ab00-a5e3-b735c6112cf8",
				version = 2,
			},
		},
	},
	[172] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "0ef4480e-0606-c54a-1472-5a087262d27e",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[173] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "c259430f-8fe9-c7cb-0ef6-7eb92ec024bf",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[175] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "a75572dd-0e69-0671-3894-f933c05f314d",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "fc25e760-1b54-43b9-a693-2f20ed44c7b7",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "9e0cc32f-a802-8eb6-9302-0955d72cc3e3",
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
							actionLua = "ACR_RikuDRK3_Tankbar_Rampart = true\nself.used = true",
							conditions = 
							{
								
								{
									"5a1ac0dd-18f5-d3de-aebf-c7fb327fc5da",
									true,
								},
								
								{
									"da1f8d57-a83b-8789-9fd2-27e46ed7eeca",
									true,
								},
								
								{
									"956ee892-48bb-4f4e-a917-669abb43eee4",
									true,
								},
								
								{
									"2b5952eb-2281-2eb5-957b-565d5cf4f0ad",
									true,
								},
							},
							name = "Request Rampart",
							uuid = "b6220cab-56ab-5943-ac8d-d6e09aed054b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_Tankbar_ShadowedVigil = true\nself.used = true",
							conditions = 
							{
								
								{
									"5a1ac0dd-18f5-d3de-aebf-c7fb327fc5da",
									true,
								},
								
								{
									"da1f8d57-a83b-8789-9fd2-27e46ed7eeca",
									true,
								},
								
								{
									"956ee892-48bb-4f4e-a917-669abb43eee4",
									true,
								},
								
								{
									"2b5952eb-2281-2eb5-957b-565d5cf4f0ad",
									true,
								},
							},
							name = "Request Vigil",
							uuid = "275616a6-3fa8-1109-a6aa-df6e26d9cb7a",
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
							jobValue = "DARKKNIGHT",
							uuid = "5a1ac0dd-18f5-d3de-aebf-c7fb327fc5da",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "da1f8d57-a83b-8789-9fd2-27e46ed7eeca",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "956ee892-48bb-4f4e-a917-669abb43eee4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "a78d869e-389d-b6d2-b9b3-ce91333def41",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return (Settings.FFXIVMINION.LPDU_FRU_P4AM1Mode or \"4-4\") == \"7-1 OT solo\"",
							name = "OT is selected solo tank for this set",
							uuid = "2b5952eb-2281-2eb5-957b-565d5cf4f0ad",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 773.5,
				name = "[DRK OT] 7 1 AM",
				throttleTime = 5000,
				timeRange = true,
				timelineIndex = 175,
				timerStartOffset = -14,
				uuid = "15a2ad99-d385-ee7b-a993-23b044787f7f",
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
							actionLua = "ACR_RikuDRK3_Tankbar_OblationSelf = true\nself.used = true",
							conditions = 
							{
								
								{
									"6d4fcc91-ce79-dd6e-99e5-fac48ae036f4",
									true,
								},
								
								{
									"db83c83f-73a6-c2ea-95bf-ed92b9dbaaeb",
									true,
								},
								
								{
									"f011272e-698b-121d-9ae6-ae8b32b52e66",
									true,
								},
								
								{
									"630363c9-d100-a443-9792-8c237bfc2434",
									true,
								},
							},
							name = "Request Oblation Self",
							uuid = "2baa03a7-335a-f12a-8c1e-1bbc45a4b1f7",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf = true\nself.used = true",
							conditions = 
							{
								
								{
									"6d4fcc91-ce79-dd6e-99e5-fac48ae036f4",
									true,
								},
								
								{
									"db83c83f-73a6-c2ea-95bf-ed92b9dbaaeb",
									true,
								},
								
								{
									"f011272e-698b-121d-9ae6-ae8b32b52e66",
									true,
								},
								
								{
									"630363c9-d100-a443-9792-8c237bfc2434",
									true,
								},
							},
							name = "Request TBN Self",
							uuid = "25cab908-bf1c-f75d-8fd8-86010511c203",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_Tankbar_DarkMind = true\nself.used = true",
							conditions = 
							{
								
								{
									"6d4fcc91-ce79-dd6e-99e5-fac48ae036f4",
									true,
								},
								
								{
									"db83c83f-73a6-c2ea-95bf-ed92b9dbaaeb",
									true,
								},
								
								{
									"f011272e-698b-121d-9ae6-ae8b32b52e66",
									true,
								},
								
								{
									"630363c9-d100-a443-9792-8c237bfc2434",
									true,
								},
							},
							name = "Request Dark Mind",
							uuid = "224b68e9-345c-9db7-98db-2a04e451cfcb",
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
							jobValue = "DARKKNIGHT",
							uuid = "6d4fcc91-ce79-dd6e-99e5-fac48ae036f4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "db83c83f-73a6-c2ea-95bf-ed92b9dbaaeb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "f011272e-698b-121d-9ae6-ae8b32b52e66",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "9adb0e16-46a1-a0c8-999b-6cf0740bdd1d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return (Settings.FFXIVMINION.LPDU_FRU_P4AM1Mode or \"4-4\") == \"7-1 OT solo\"",
							name = "OT is selected solo tank for this set",
							uuid = "630363c9-d100-a443-9792-8c237bfc2434",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 773.5,
				name = "[DRK OT] 7 1 AM",
				timeRange = true,
				timelineIndex = 175,
				timerStartOffset = -5,
				uuid = "6bb01de8-4208-f208-83ef-56f56e922e02",
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
							actionLua = "ACR_RikuDRK3_Tankbar_Reprisal = true\nself.used = true",
							conditions = 
							{
								
								{
									"02c2667d-c0ce-561f-bec3-84e270be4e20",
									true,
								},
								
								{
									"6d62d255-de86-7fc8-85e0-663cd7446f40",
									true,
								},
								
								{
									"dfeafa3c-dccd-b37e-a6ee-ba7f43ee6189",
									true,
								},
								
								{
									"f8f16e1d-5f45-ffb6-b634-5e142d1cddfa",
									true,
								},
							},
							name = "Request Reprisal",
							uuid = "b1a20df7-582d-e5aa-ab8d-235e642c979a",
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
							jobValue = "DARKKNIGHT",
							uuid = "02c2667d-c0ce-561f-bec3-84e270be4e20",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "6d62d255-de86-7fc8-85e0-663cd7446f40",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "dfeafa3c-dccd-b37e-a6ee-ba7f43ee6189",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "f4769e54-4582-8170-8f01-382cf19cb2bb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "f8f16e1d-5f45-ffb6-b634-5e142d1cddfa",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 773.5,
				name = "[DRK OT] reprisal",
				timeRange = true,
				timelineIndex = 175,
				timerStartOffset = -5,
				uuid = "e3107acf-076d-cdde-afe0-e94646c3a9a5",
				version = 2,
			},
		},
	},
	[176] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "83b6e1c2-811e-7576-a3b8-baec3a4153b2",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[179] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "7046bb51-dba4-ab7d-0dd3-c607e65dab01",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "8c5048cb-1799-bf13-92c2-fc661da4059c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "3a617a5a-fdd4-7cf5-bcaf-698ac7ae7237",
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
							actionLua = "ACR_RikuDRK3_Tankbar_DarkMissionary = true\nself.used = true",
							conditions = 
							{
								
								{
									"bd90464b-e2a6-82f0-8072-1eb7fb3686d9",
									true,
								},
								
								{
									"35450cdd-aa2a-ce9b-b273-261e19ad66ee",
									true,
								},
								
								{
									"f78216b3-3c2e-520b-9caf-456a6950e2e0",
									true,
								},
								
								{
									"7306c5ec-97a7-9206-8fde-a7d2ad8e651a",
									true,
								},
							},
							name = "Request Dark Missionary",
							uuid = "0358a9f2-81bc-05e5-bfd0-f15ead5d0a12",
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
							jobValue = "DARKKNIGHT",
							uuid = "bd90464b-e2a6-82f0-8072-1eb7fb3686d9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "35450cdd-aa2a-ce9b-b273-261e19ad66ee",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "f78216b3-3c2e-520b-9caf-456a6950e2e0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "1c506f7b-5423-4f0d-bc5a-bf36fbd849ce",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "7306c5ec-97a7-9206-8fde-a7d2ad8e651a",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 798.9,
				name = "[DRK OT] Dark missionary ot",
				timeRange = true,
				timelineIndex = 179,
				timerStartOffset = -14,
				uuid = "45e26f51-74d6-4da6-a6a2-c4701898d3d2",
				version = 2,
			},
		},
	},
	[180] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "68bee621-5359-4cd5-8d5a-9ceb25f5de11",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "1decde26-6ead-3697-902b-ecee775b69ad",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "923dbd5e-a2a8-f96e-a8a5-05828d7d3e4e",
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
							actionLua = "ACR_RikuDRK3_Unmend = false\nself.used = true",
							conditions = 
							{
								
								{
									"830d5bfd-4955-7313-a5b8-b2d18c58d8a2",
									true,
								},
								
								{
									"bbdeec1c-0488-8bbc-9c84-f6030f995cb0",
									true,
								},
								
								{
									"e1eb2d88-a3b8-6c43-9cec-8bd8336229fc",
									true,
								},
							},
							name = "Set Unmend",
							uuid = "716566fe-4449-b78b-bec1-d94d99138baa",
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
							jobValue = "DARKKNIGHT",
							uuid = "830d5bfd-4955-7313-a5b8-b2d18c58d8a2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "bbdeec1c-0488-8bbc-9c84-f6030f995cb0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "6412e141-d125-f411-bde5-10062555b527",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "e1eb2d88-a3b8-6c43-9cec-8bd8336229fc",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 802.8,
				name = "[DRK OT] unmend",
				timelineIndex = 180,
				uuid = "7e560bf8-935a-2f12-9c10-4879f3e0ee66",
				version = 2,
			},
		},
	},
	[181] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "1a4533f0-922c-6ad4-b4cd-0cea5c92eb60",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[182] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "81dafcc7-5ce4-e7fb-d1e3-96c50cd4dcb7",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[184] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "56da3d95-8da8-5461-0fdf-85b7ced8edc5",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[188] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "6f7b7079-cf35-75ad-2f36-2ce3c92d1ba9",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[192] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "1b95d964-17e1-2498-a94d-7e7ab5381b14",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "087f5368-fd75-c18a-9510-d7f75e60c6f7",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "b6c64ab2-d720-2e22-b39e-6a87b75c8cfc",
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
							actionLua = "ACR_RikuDRK3_Tankbar_DarkMissionary = true\nself.used = true",
							conditions = 
							{
								
								{
									"3842d092-872b-e33b-a424-352b0e402ecf",
									true,
								},
								
								{
									"e4987f47-33ba-bcbd-8e4d-690c4189d939",
									true,
								},
								
								{
									"13c7fbb9-c1f0-547b-86d0-1473c612cbf0",
									true,
								},
								
								{
									"874c6f9d-25f6-2e15-b51a-616a92f489b9",
									true,
								},
							},
							name = "Request Dark Missionary",
							uuid = "991445f2-7285-4e5f-92bc-049b857ee264",
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
							jobValue = "DARKKNIGHT",
							uuid = "3842d092-872b-e33b-a424-352b0e402ecf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "e4987f47-33ba-bcbd-8e4d-690c4189d939",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "13c7fbb9-c1f0-547b-86d0-1473c612cbf0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "fac57c11-caa7-d337-8937-599254fd338b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "874c6f9d-25f6-2e15-b51a-616a92f489b9",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 830.1,
				name = "[DRK OT] Dark missionary ot",
				timelineIndex = 192,
				timerOffset = 2,
				uuid = "c4f2ea1b-37d0-fd59-b6ed-5e9af6e21620",
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
				name = "Frureactions\\lpdu strats",
				uuid = "65435ff6-d5ad-1922-030b-4870624e99a6",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[195] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "9c863269-2713-a2fd-963c-d1db9a510491",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "26841d66-0ff6-9198-9d47-93c7611e8fac",
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
							actionLua = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf = true\nself.used = true",
							conditions = 
							{
								
								{
									"c3981774-a019-353d-969b-235d4caf24d0",
									true,
								},
								
								{
									"31e43ba5-2c24-ae62-9cf8-893199537292",
									true,
								},
								
								{
									"6eca21a5-7a95-4bf3-863f-f776064e1d99",
									true,
								},
							},
							name = "Request TBN Self",
							uuid = "e09b5b9b-1f27-e686-8398-e27943710b96",
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
							jobValue = "DARKKNIGHT",
							uuid = "c3981774-a019-353d-969b-235d4caf24d0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "31e43ba5-2c24-ae62-9cf8-893199537292",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "6eca21a5-7a95-4bf3-863f-f776064e1d99",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "51c82a2b-d698-7bbd-9a9d-34f736dcc512",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 839.1,
				name = "[DRK OT] tbn",
				timeRange = true,
				timelineIndex = 195,
				timerStartOffset = -0.69999998807907,
				uuid = "e4691471-aa3a-3deb-95ac-e1029fd52502",
				version = 2,
			},
		},
	},
	[198] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "2f9810a1-355e-30c7-9007-1a814932e27a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "53455852-0fe0-1133-831d-e8ba0bdf68fa",
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
							actionID = 16472,
							conditions = 
							{
								
								{
									"0364ac49-0e5b-3352-9058-dd928bf9477b",
									true,
								},
								
								{
									"c35694ea-fd52-201a-a6fd-35ff6c6854a0",
									true,
								},
								
								{
									"eaa33764-8eaf-ff8a-9a5a-be4b73526232",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "f3dabd77-12f0-bfaa-b739-10492736866b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_Tankbar_DarkMind = true\nself.used = true",
							conditions = 
							{
								
								{
									"0364ac49-0e5b-3352-9058-dd928bf9477b",
									true,
								},
								
								{
									"c35694ea-fd52-201a-a6fd-35ff6c6854a0",
									true,
								},
								
								{
									"58d5eb45-6eb2-2e74-891b-e93f24fd5633",
									true,
								},
							},
							name = "Request Dark Mind",
							uuid = "fb70fa67-d036-c596-996b-938f4426b43f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_Tankbar_OblationSelf = true\nself.used = true",
							conditions = 
							{
								
								{
									"0364ac49-0e5b-3352-9058-dd928bf9477b",
									true,
								},
								
								{
									"c35694ea-fd52-201a-a6fd-35ff6c6854a0",
									true,
								},
								
								{
									"58d5eb45-6eb2-2e74-891b-e93f24fd5633",
									true,
								},
							},
							name = "Request Oblation Self",
							uuid = "54ad73ad-a4c6-4d45-9b46-7f4c7b809ae4",
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
							jobValue = "DARKKNIGHT",
							uuid = "0364ac49-0e5b-3352-9058-dd928bf9477b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "c35694ea-fd52-201a-a6fd-35ff6c6854a0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "58d5eb45-6eb2-2e74-891b-e93f24fd5633",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "eaa33764-8eaf-ff8a-9a5a-be4b73526232",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 845.7,
				name = "[DRK OT] dark mind",
				timeRange = true,
				timelineIndex = 198,
				timerStartOffset = -9.8999996185303,
				uuid = "791d8dca-bce1-f2e4-b8f9-6c9f9d113f40",
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
							actionLua = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf = true\nself.used = true",
							conditions = 
							{
								
								{
									"461d7852-fc66-17c0-8c15-c9ed6437ef70",
									true,
								},
								
								{
									"10a16e0d-8b67-51d4-b732-84ee4c7c0a52",
									true,
								},
								
								{
									"637e17fc-fa73-f306-b151-12d11e2775f5",
									true,
								},
							},
							name = "Request TBN Self",
							uuid = "cb40bb67-2b54-bd14-b23e-48ed2183e7d7",
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
							jobValue = "DARKKNIGHT",
							uuid = "461d7852-fc66-17c0-8c15-c9ed6437ef70",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "10a16e0d-8b67-51d4-b732-84ee4c7c0a52",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "637e17fc-fa73-f306-b151-12d11e2775f5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "9e58b5eb-14ce-ce1b-93c4-d2db6cdaecf1",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 845.7,
				name = "[DRK OT] tbn",
				timeRange = true,
				timelineIndex = 198,
				timerStartOffset = -6.9000000953674,
				uuid = "59b70fae-f536-26a9-aa6e-4703a78aeea8",
				version = 2,
			},
		},
	},
	[201] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "17aeaf17-3fab-a30b-23b1-93c5122a8347",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "a3b94823-63f7-4dd7-a373-55e9a70a15b0",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "508d6516-20b9-5ff5-b882-d48aec9a1efe",
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
							actionLua = "ACR_RikuDRK3_Tankbar_Reprisal = true\nself.used = true",
							conditions = 
							{
								
								{
									"cdcbdab3-12da-e098-b9de-9543410d9f4a",
									true,
								},
								
								{
									"1afe23ab-d326-5b91-b586-4afb1744259f",
									true,
								},
								
								{
									"1109efd9-af85-2543-8d1f-71b25429f28f",
									true,
								},
								
								{
									"f3e028cb-b1ba-7262-b359-9e4791c9702d",
									true,
								},
							},
							name = "Request Reprisal",
							uuid = "a558ea9a-c3dc-d570-bfa2-b06ec90138e3",
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
							jobValue = "DARKKNIGHT",
							uuid = "cdcbdab3-12da-e098-b9de-9543410d9f4a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "1afe23ab-d326-5b91-b586-4afb1744259f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "1109efd9-af85-2543-8d1f-71b25429f28f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "1d34b133-d545-62d5-87aa-0148db72875f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "f3e028cb-b1ba-7262-b359-9e4791c9702d",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 850.2,
				name = "[DRK OT] reprisal",
				timeRange = true,
				timelineIndex = 201,
				timerEndOffset = 6,
				timerStartOffset = 0.80000001192093,
				uuid = "acce90b0-d2a6-098c-a39f-27fdae52b757",
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
							actionID = 3639,
							conditions = 
							{
								
								{
									"de8fdd78-bbe4-f253-8309-ce8dbb659de5",
									true,
								},
								
								{
									"d9bbe539-4204-2e09-803c-22b93c024a6d",
									true,
								},
								
								{
									"f1cb7c25-c1b9-aba2-b1ed-a9bd87d933c6",
									true,
								},
							},
							uuid = "229d0ff5-be4a-3b3b-978a-09334338b2ca",
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
							jobValue = "DARKKNIGHT",
							uuid = "de8fdd78-bbe4-f253-8309-ce8dbb659de5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "d9bbe539-4204-2e09-803c-22b93c024a6d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "d4b13f55-5673-6988-b9b7-e20c0a79be7f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "f1cb7c25-c1b9-aba2-b1ed-a9bd87d933c6",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 850.2,
				name = "[DRK OT] salt earth",
				timeRange = true,
				timelineIndex = 201,
				timerEndOffset = 11,
				timerStartOffset = 1,
				uuid = "19ee12a1-11c9-26a8-8830-e99a205e0634",
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
							actionLua = "ACR_RikuDRK3_CD = true\nself.used = true",
							conditions = 
							{
								
								{
									"8f7cfa0f-f3e7-15e6-a73d-78ece2959302",
									true,
								},
								
								{
									"5465f3b3-76bf-d544-b26d-4195e2c95931",
									true,
								},
								
								{
									"99026854-21f2-2bd7-887b-5b8e1f04be62",
									true,
								},
							},
							name = "Set CD",
							uuid = "98c39756-11cb-d1ec-ac71-dcae773ec2a1",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_Delirium = true\nself.used = true",
							conditions = 
							{
								
								{
									"8f7cfa0f-f3e7-15e6-a73d-78ece2959302",
									true,
								},
								
								{
									"5465f3b3-76bf-d544-b26d-4195e2c95931",
									true,
								},
								
								{
									"99026854-21f2-2bd7-887b-5b8e1f04be62",
									true,
								},
							},
							name = "Set Delirium",
							uuid = "d07094b6-9224-98a3-8e3c-0e57cc5ea61c",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_CarveAndSpit = true\nself.used = true",
							conditions = 
							{
								
								{
									"8f7cfa0f-f3e7-15e6-a73d-78ece2959302",
									true,
								},
								
								{
									"5465f3b3-76bf-d544-b26d-4195e2c95931",
									true,
								},
								
								{
									"99026854-21f2-2bd7-887b-5b8e1f04be62",
									true,
								},
							},
							name = "Set Carve & Spit",
							uuid = "224568aa-b0b9-3b66-863f-d1c4c96e704d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_Shadowbringer = true\nself.used = true",
							conditions = 
							{
								
								{
									"8f7cfa0f-f3e7-15e6-a73d-78ece2959302",
									true,
								},
								
								{
									"5465f3b3-76bf-d544-b26d-4195e2c95931",
									true,
								},
								
								{
									"99026854-21f2-2bd7-887b-5b8e1f04be62",
									true,
								},
							},
							name = "Set Shb",
							uuid = "8c8aa352-8145-6950-a2bf-47c6d8e57b63",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_SaltedEarth = true\nself.used = true",
							conditions = 
							{
								
								{
									"8f7cfa0f-f3e7-15e6-a73d-78ece2959302",
									true,
								},
								
								{
									"5465f3b3-76bf-d544-b26d-4195e2c95931",
									true,
								},
								
								{
									"99026854-21f2-2bd7-887b-5b8e1f04be62",
									true,
								},
							},
							name = "Set Salted Earth",
							uuid = "3b6ba1e8-69b5-6d8c-a404-9747dc59f256",
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
							jobValue = "DARKKNIGHT",
							uuid = "8f7cfa0f-f3e7-15e6-a73d-78ece2959302",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "5465f3b3-76bf-d544-b26d-4195e2c95931",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "4f0476d3-2880-f9fa-a98f-ee5b77441c6b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "99026854-21f2-2bd7-887b-5b8e1f04be62",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 850.2,
				name = "[DRK OT] CD on",
				timelineIndex = 201,
				timerOffset = 0.10000000149012,
				uuid = "6ab69b92-faa3-b255-aac4-ff137dfb51f8",
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
							actionLua = "ACR_RikuDRK3_MinMPDump = 3000\nself.used = true",
							conditions = 
							{
								
								{
									"5238dc27-0482-d45d-9e09-783e3be49b2a",
									true,
								},
								
								{
									"84a40a9b-e22d-969f-a896-7d0db3bcf4e5",
									true,
								},
								
								{
									"083467e6-0731-77ad-b8ca-01dedef2af0c",
									true,
								},
							},
							uuid = "774f519c-96bf-04f7-87d0-48d3d05a62f2",
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
							jobValue = "DARKKNIGHT",
							uuid = "5238dc27-0482-d45d-9e09-783e3be49b2a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "84a40a9b-e22d-969f-a896-7d0db3bcf4e5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "85bc37e7-bf1e-2f88-a21c-b48fe1ecaab5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "083467e6-0731-77ad-b8ca-01dedef2af0c",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 850.2,
				name = "[DRK OT] set mp to 3k",
				timelineIndex = 201,
				timerOffset = -1,
				uuid = "2c72f1d5-0b1e-07ec-8544-3b1a68bfc2bc",
				version = 2,
			},
		},
	},
	[202] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "1c8c1040-62e3-1724-069b-09eaaa94ba70",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "10090f7f-de7f-40f5-8b2d-cc876dafc0ec",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "d7525ce2-bad4-d891-8a61-54d9bcc24adb",
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
							actionLua = "ACR_RikuDRK3_Tankbar_Rampart = true\nself.used = true",
							conditions = 
							{
								
								{
									"38930360-25d3-f4b6-8b92-c318a54332d6",
									true,
								},
								
								{
									"15bb10fe-4274-a2ec-aeaf-8f635538b559",
									true,
								},
								
								{
									"c0a783f4-4495-fc1b-99d0-32df7473aadf",
									true,
								},
								
								{
									"bba3810d-f813-4503-8164-18dc0b89a869",
									true,
								},
							},
							name = "Request Rampart",
							uuid = "4978e5dc-93ad-b4ea-afa3-4eef9f5a1d31",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_Tankbar_ShadowedVigil = true\nself.used = true",
							conditions = 
							{
								
								{
									"38930360-25d3-f4b6-8b92-c318a54332d6",
									true,
								},
								
								{
									"15bb10fe-4274-a2ec-aeaf-8f635538b559",
									true,
								},
								
								{
									"c0a783f4-4495-fc1b-99d0-32df7473aadf",
									true,
								},
								
								{
									"bba3810d-f813-4503-8164-18dc0b89a869",
									true,
								},
							},
							name = "Request Vigil",
							uuid = "45a0f58e-4ea5-5576-9871-6bd1095154f4",
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
							jobValue = "DARKKNIGHT",
							uuid = "38930360-25d3-f4b6-8b92-c318a54332d6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "15bb10fe-4274-a2ec-aeaf-8f635538b559",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "c0a783f4-4495-fc1b-99d0-32df7473aadf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "da6d3a32-852f-ced7-8f55-31be7c249752",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return (Settings.FFXIVMINION.LPDU_FRU_P4AM2Mode or \"7-1 MT solo\") == \"7-1 OT solo\"",
							name = "OT is selected solo tank for this set",
							uuid = "bba3810d-f813-4503-8164-18dc0b89a869",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				enabled = false,
				mechanicTime = 854.9,
				name = "[DRK OT] 7 1 AM",
				throttleTime = 5000,
				timeRange = true,
				timelineIndex = 202,
				timerStartOffset = -14,
				uuid = "e47f485a-b88b-732a-bc03-b832569c5d3a",
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
							actionLua = "ACR_RikuDRK3_Tankbar_OblationSelf = true\nself.used = true",
							conditions = 
							{
								
								{
									"70b7acc6-dcb8-406e-8928-f96185aa66ea",
									true,
								},
								
								{
									"ed748ea8-e9ff-9c5a-95c0-331675ad24c4",
									true,
								},
								
								{
									"a09c34e3-0afd-3bb5-bc37-93350715f753",
									true,
								},
								
								{
									"83be2265-ff2c-43c5-8f26-3f7d1682cbc6",
									true,
								},
							},
							name = "Request Oblation Self",
							uuid = "aa7e36c5-078c-942e-ace1-0faa722d451b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf = true\nself.used = true",
							conditions = 
							{
								
								{
									"70b7acc6-dcb8-406e-8928-f96185aa66ea",
									true,
								},
								
								{
									"ed748ea8-e9ff-9c5a-95c0-331675ad24c4",
									true,
								},
								
								{
									"a09c34e3-0afd-3bb5-bc37-93350715f753",
									true,
								},
								
								{
									"83be2265-ff2c-43c5-8f26-3f7d1682cbc6",
									true,
								},
							},
							name = "Request TBN Self",
							uuid = "d9597df9-5541-0497-9f27-b2a4f412c1b5",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_Tankbar_DarkMind = true\nself.used = true",
							conditions = 
							{
								
								{
									"70b7acc6-dcb8-406e-8928-f96185aa66ea",
									true,
								},
								
								{
									"ed748ea8-e9ff-9c5a-95c0-331675ad24c4",
									true,
								},
								
								{
									"a09c34e3-0afd-3bb5-bc37-93350715f753",
									true,
								},
								
								{
									"83be2265-ff2c-43c5-8f26-3f7d1682cbc6",
									true,
								},
							},
							name = "Request Dark Mind",
							uuid = "05b8e829-91e1-1846-8613-35a201dd7ccc",
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
							jobValue = "DARKKNIGHT",
							uuid = "70b7acc6-dcb8-406e-8928-f96185aa66ea",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "ed748ea8-e9ff-9c5a-95c0-331675ad24c4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "a09c34e3-0afd-3bb5-bc37-93350715f753",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "46a52c05-f606-6cc8-abfe-1500f9a2a4c4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return (Settings.FFXIVMINION.LPDU_FRU_P4AM2Mode or \"7-1 MT solo\") == \"7-1 OT solo\"",
							name = "OT is selected solo tank for this set",
							uuid = "83be2265-ff2c-43c5-8f26-3f7d1682cbc6",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				enabled = false,
				mechanicTime = 854.9,
				name = "[DRK OT] 7 1 AM",
				timeRange = true,
				timelineIndex = 202,
				timerStartOffset = -5,
				uuid = "e52578e4-3c10-2465-a676-44abc293ecd9",
				version = 2,
			},
		},
	},
	[204] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "94bfcaca-6146-c7b6-b16b-916050d6f07a",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[207] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "ac460ea5-9d29-74b1-61ad-82b7e729c415",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "48c043eb-667a-ee03-8a6b-82a273d49dc0",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "c9896135-0c22-03bb-bdc1-a04523f757ee",
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
							actionLua = "ACR_RikuDRK3_Potion = false\nself.used = true",
							conditions = 
							{
								
								{
									"6bd5ac50-ee30-b720-bc54-ccff49249025",
									true,
								},
								
								{
									"8459be7b-b4e1-9ca2-93be-1221df552dac",
									true,
								},
								
								{
									"5ff04ada-7c65-5220-9ecf-cd5df2f680b4",
									true,
								},
							},
							name = "Set Potion",
							uuid = "0807986c-25e8-397f-8b32-ec2adbb431fd",
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
							jobValue = "DARKKNIGHT",
							uuid = "6bd5ac50-ee30-b720-bc54-ccff49249025",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "8459be7b-b4e1-9ca2-93be-1221df552dac",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "07210911-9e14-fbb5-9573-91f59864d715",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "5ff04ada-7c65-5220-9ecf-cd5df2f680b4",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 972.3,
				name = "[DRK OT] pot off",
				timelineIndex = 207,
				timerOffset = -2,
				uuid = "7aeb4244-b532-972c-aa11-c18ad204dfa1",
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
							actionLua = "ACR_RikuDRK3_MinMPDump = 6000\nself.used = true",
							conditions = 
							{
								
								{
									"916e6f68-afc0-47d5-9f9e-cbd633b86862",
									true,
								},
								
								{
									"37d03c55-e5f4-55a7-9d6c-2b54a8024e10",
									true,
								},
								
								{
									"fa6c1a90-52c5-b2dc-bce0-189317d477a1",
									true,
								},
							},
							uuid = "cf61e076-4b76-613c-b870-742f5d458a8d",
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
							jobValue = "DARKKNIGHT",
							uuid = "916e6f68-afc0-47d5-9f9e-cbd633b86862",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "37d03c55-e5f4-55a7-9d6c-2b54a8024e10",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "1b5f4baa-2991-4953-a439-725ee9e66859",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "fa6c1a90-52c5-b2dc-bce0-189317d477a1",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 972.3,
				name = "[DRK OT] set mp to 6k",
				timelineIndex = 207,
				timerOffset = -1,
				uuid = "3cd88f1d-8859-2ecd-92e3-18954219f67e",
				version = 2,
			},
		},
	},
	[209] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "ab54b02f-6ad7-5c83-36fc-639d13916e5f",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[212] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "9bf060e3-33e3-ac87-c015-08b561f38b13",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[215] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "a5beddf8-8527-5054-4eb4-fd468158db68",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "67fc8088-c891-9900-9e72-a45451e076a0",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "77896242-dfd9-36a7-9d74-618fd3326f54",
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
							actionLua = "ACR_RikuDRK3_Shadowbringer = false\nself.used = true",
							conditions = 
							{
								
								{
									"ec6a8537-3566-36fa-80ec-9f3fd2daa59a",
									true,
								},
								
								{
									"3e8780fe-aaf6-9081-bf30-f592c1f49052",
									true,
								},
								
								{
									"de85f0f1-b39d-6527-9009-09363bf1f6df",
									true,
								},
							},
							name = "Set Shb",
							uuid = "208a6952-9f49-6fd1-9651-a9801420c044",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_SaltedEarth = false\nself.used = true",
							conditions = 
							{
								
								{
									"ec6a8537-3566-36fa-80ec-9f3fd2daa59a",
									true,
								},
								
								{
									"3e8780fe-aaf6-9081-bf30-f592c1f49052",
									true,
								},
								
								{
									"de85f0f1-b39d-6527-9009-09363bf1f6df",
									true,
								},
							},
							name = "Set Salted Earth",
							uuid = "164a0cba-c072-2979-b238-1c0cf7176ff0",
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
							jobValue = "DARKKNIGHT",
							uuid = "ec6a8537-3566-36fa-80ec-9f3fd2daa59a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "3e8780fe-aaf6-9081-bf30-f592c1f49052",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "3a5a0f6c-1a58-1b59-8c70-96b6f0f54e47",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "de85f0f1-b39d-6527-9009-09363bf1f6df",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 1011.4,
				name = "[DRK OT] shb + salted earth off",
				timelineIndex = 215,
				uuid = "aad5f757-cbc0-6d18-99f8-39a29e7fd42d",
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
							actionLua = "ACR_RikuDRK3_Tankbar_DarkMissionary = true\nself.used = true",
							conditions = 
							{
								
								{
									"dad2f038-3c5f-41b7-9078-503fc760ca87",
									true,
								},
								
								{
									"eb0331fc-ae3a-10b9-8c46-b4d8fe9227fc",
									true,
								},
								
								{
									"84ccc6af-9656-85d8-9ec8-b67d6a5fca06",
									true,
								},
							},
							name = "Request Dark Missionary",
							uuid = "dd13f399-c0b9-4196-9bd8-54966c1e2fff",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_Tankbar_Reprisal = true\nself.used = true",
							conditions = 
							{
								
								{
									"dad2f038-3c5f-41b7-9078-503fc760ca87",
									true,
								},
								
								{
									"eb0331fc-ae3a-10b9-8c46-b4d8fe9227fc",
									true,
								},
								
								{
									"84ccc6af-9656-85d8-9ec8-b67d6a5fca06",
									true,
								},
							},
							name = "Request Reprisal",
							uuid = "ef6e40af-c989-b278-b53a-d2893be93e9c",
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
							jobValue = "DARKKNIGHT",
							uuid = "dad2f038-3c5f-41b7-9078-503fc760ca87",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "eb0331fc-ae3a-10b9-8c46-b4d8fe9227fc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "84ccc6af-9656-85d8-9ec8-b67d6a5fca06",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "8f650b76-fdf7-af0b-bfd0-effb2548b5e9",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 1011.4,
				name = "[DRK OT] reprisal + missionary",
				timeRange = true,
				timelineIndex = 215,
				timerStartOffset = -14,
				uuid = "889315df-c5ba-5e18-ad55-e64a1f6caa16",
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
							actionLua = "ACR_RikuDRK3_Potion = true\nself.used = true",
							conditions = 
							{
								
								{
									"fddce78b-d9c7-b3a0-a122-1b73e72555f7",
									true,
								},
								
								{
									"bcf0f000-deba-fee5-bdaa-76883f5500b9",
									true,
								},
								
								{
									"e61e92f7-912d-f16a-9f86-edac2d0f0769",
									true,
								},
							},
							name = "Set Potion",
							uuid = "53c13ee3-8354-a415-8c5e-038eef819462",
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
							jobValue = "DARKKNIGHT",
							uuid = "fddce78b-d9c7-b3a0-a122-1b73e72555f7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "bcf0f000-deba-fee5-bdaa-76883f5500b9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "1cff65dd-5ce5-6550-ac79-3608c1eca147",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "e61e92f7-912d-f16a-9f86-edac2d0f0769",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 1011.4,
				name = "[DRK OT] potion",
				timelineIndex = 215,
				uuid = "44a35d69-701f-3346-b0fe-cda036508365",
				version = 2,
			},
		},
	},
	[218] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "3e9dcac5-3506-6539-614b-e893c0bcab35",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[219] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "0cce6704-3a82-4088-4c83-faf2e500aab4",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "8604435a-eb66-9de3-977c-b71d03872d04",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "afe47241-5b9d-9356-ab57-c03e38e0ce9a",
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
							actionLua = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf = true\nself.used = true",
							conditions = 
							{
								
								{
									"5a1fbf5d-60f7-8b1d-9083-8438dd41b308",
									true,
								},
								
								{
									"438bf720-d5c9-b0ea-bd0b-6979c7993f79",
									true,
								},
								
								{
									"109849bc-cd3b-08cb-b179-2d364e91e6ae",
									true,
								},
								
								{
									"c7f34689-1e6f-d0c8-a4cb-bc11ce99f42a",
									true,
								},
							},
							name = "Request TBN Self",
							uuid = "77b3f4e3-e4ba-e576-b72c-9a8d1188834e",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_Tankbar_OblationSelf = true\nself.used = true",
							conditions = 
							{
								
								{
									"5a1fbf5d-60f7-8b1d-9083-8438dd41b308",
									true,
								},
								
								{
									"438bf720-d5c9-b0ea-bd0b-6979c7993f79",
									true,
								},
								
								{
									"109849bc-cd3b-08cb-b179-2d364e91e6ae",
									true,
								},
								
								{
									"c7f34689-1e6f-d0c8-a4cb-bc11ce99f42a",
									true,
								},
							},
							name = "Request Oblation Self",
							uuid = "3bff145d-489a-1367-a51c-767535886a68",
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
							jobValue = "DARKKNIGHT",
							uuid = "5a1fbf5d-60f7-8b1d-9083-8438dd41b308",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "438bf720-d5c9-b0ea-bd0b-6979c7993f79",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "109849bc-cd3b-08cb-b179-2d364e91e6ae",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "312ea3b6-9b7d-73fb-8763-459ea14409fe",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return (Settings.FFXIVMINION.LPDU_FRU_P5FirstInvuln or \"OT\") == \"MT\"",
							dequeueIfLuaFalse = true,
							uuid = "c7f34689-1e6f-d0c8-a4cb-bc11ce99f42a",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 1029.9,
				name = "[DRK OT] tbn/obl (ksi/invu)",
				timeRange = true,
				timelineIndex = 219,
				timerStartOffset = -6.9000000953674,
				uuid = "665d3599-7928-0ea1-b8fb-32dbab9d2a63",
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
							actionLua = "ACR_RikuDRK3_Tankbar_LivingDead = true\nself.used = true",
							conditions = 
							{
								
								{
									"5cfae28b-b932-5065-a0e3-5350a046a0a7",
									true,
								},
								
								{
									"c06f3eda-fe0a-b538-bbc5-8b195aaa3252",
									true,
								},
								
								{
									"62645711-8b4b-fd79-b1a7-cfa535ff687b",
									true,
								},
								
								{
									"bb4e02b2-6c43-2862-9dac-e6da959d2752",
									true,
								},
							},
							name = "Request Living Dead",
							uuid = "00cbee61-8016-36ea-8587-37bf49a9d6c6",
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
							jobValue = "DARKKNIGHT",
							uuid = "5cfae28b-b932-5065-a0e3-5350a046a0a7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "c06f3eda-fe0a-b538-bbc5-8b195aaa3252",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "62645711-8b4b-fd79-b1a7-cfa535ff687b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "6fb7d39e-ea94-99c0-9acd-32fd4f0614d1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return (Settings.FFXIVMINION.LPDU_FRU_P5FirstInvuln or \"OT\") == \"OT\"",
							dequeueIfLuaFalse = true,
							uuid = "bb4e02b2-6c43-2862-9dac-e6da959d2752",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 1029.9,
				name = "[DRK OT] living dead",
				timeRange = true,
				timelineIndex = 219,
				timerStartOffset = -5,
				uuid = "5d01e4cc-d3b7-1bc0-93ea-071e442b2e86",
				version = 2,
			},
		},
	},
	[221] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "a9c19cfa-1e02-04ec-b0b2-da2cc0bb4071",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "db586802-47fa-4b62-9172-667f80aed8ab",
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
							actionLua = "ACR_RikuDRK3_Tankbar_Rampart = true\nself.used = true",
							conditions = 
							{
								
								{
									"9655552f-aaf5-6b4a-b40c-80724a98ceb3",
									true,
								},
								
								{
									"c4397306-5f80-c16c-8c95-c17de4627542",
									true,
								},
								
								{
									"c876958f-7756-b694-91ae-86fb1ea9fe8e",
									true,
								},
								
								{
									"1f4d5489-a7b3-9207-951c-69818c8da58c",
									true,
								},
							},
							name = "Request Rampart",
							uuid = "af7190cf-8af9-de36-8c13-1d1c92b16974",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_Tankbar_ShadowedVigil = true\nself.used = true",
							conditions = 
							{
								
								{
									"9655552f-aaf5-6b4a-b40c-80724a98ceb3",
									true,
								},
								
								{
									"c4397306-5f80-c16c-8c95-c17de4627542",
									true,
								},
								
								{
									"c876958f-7756-b694-91ae-86fb1ea9fe8e",
									true,
								},
								
								{
									"1f4d5489-a7b3-9207-951c-69818c8da58c",
									true,
								},
							},
							name = "Request Vigil",
							uuid = "c39ac81e-3341-5667-9f07-074ac5ed224b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_Tankbar_DarkMind = true\nself.used = true",
							conditions = 
							{
								
								{
									"9655552f-aaf5-6b4a-b40c-80724a98ceb3",
									true,
								},
								
								{
									"c4397306-5f80-c16c-8c95-c17de4627542",
									true,
								},
								
								{
									"c876958f-7756-b694-91ae-86fb1ea9fe8e",
									true,
								},
								
								{
									"1f4d5489-a7b3-9207-951c-69818c8da58c",
									true,
								},
							},
							name = "Request Dark Mind",
							uuid = "de6a77d7-3194-9f24-8f8f-0217794f6190",
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
							jobValue = "DARKKNIGHT",
							uuid = "9655552f-aaf5-6b4a-b40c-80724a98ceb3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "c4397306-5f80-c16c-8c95-c17de4627542",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "c876958f-7756-b694-91ae-86fb1ea9fe8e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "41f874e5-6e64-07c4-969d-553ffac4f675",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return (Settings.FFXIVMINION.LPDU_FRU_P5FirstInvuln or \"OT\") == \"MT\"",
							dequeueIfLuaFalse = true,
							uuid = "1f4d5489-a7b3-9207-951c-69818c8da58c",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 1033.5,
				name = "[DRK OT] rampart (ks/invu)",
				timeRange = true,
				timelineIndex = 221,
				timerEndOffset = 14,
				timerStartOffset = -15,
				uuid = "18c8359e-5c77-42c8-824c-3ff19277a4f6",
				version = 2,
			},
		},
	},
	[222] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "a1e361be-c96a-cab2-cb55-e8bcb6a143ee",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[224] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "c06459cc-53e3-52a8-8dc1-ef2e0005307c",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[226] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "677031f2-018c-497e-b22d-64d8ec902d22",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[227] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "7c381f93-bde9-9bbf-a968-d5898ebf8b03",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[228] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "9c64ee90-8f4c-cbf4-24bf-c14ad426b080",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[229] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "6df3a341-4640-2675-aea2-c3cbc111a331",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[230] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "b5ec45ef-c523-cb43-aa0f-81f92465bc1f",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[231] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "d0e5d86e-d2ec-d262-83c7-e948829b7bde",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[232] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "5553e9c9-34ae-787d-bdd5-f95f58ee93b9",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[233] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "4908cd18-05a6-b9bc-d8ff-451e5e6a6f08",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[235] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "c325adf2-5ddd-a38d-9aeb-14d984998a86",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "826a6c71-7014-c4d4-aec3-6ab99cc91820",
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
							actionLua = "ACR_RikuDRK3_MinMPDump = 9000\nself.used = true",
							conditions = 
							{
								
								{
									"846b264e-20d7-36b9-813a-011991692fde",
									true,
								},
								
								{
									"ce35af4e-43e9-7e11-8f6f-a5a6de297654",
									true,
								},
								
								{
									"f76efca8-66ab-fef4-9c6e-5acbfddeca2b",
									true,
								},
							},
							uuid = "e3a3c4dd-4e41-9937-a378-b77e4feb615f",
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
							jobValue = "DARKKNIGHT",
							uuid = "846b264e-20d7-36b9-813a-011991692fde",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "ce35af4e-43e9-7e11-8f6f-a5a6de297654",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "cb16be65-f1d8-d620-85fc-7c7d6f42fc2e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "f76efca8-66ab-fef4-9c6e-5acbfddeca2b",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 1070.8,
				name = "[DRK OT] HOLD mp for 2min",
				timelineIndex = 235,
				timerOffset = -8,
				uuid = "d9f35975-e8f0-b181-9dbe-9db75d0bd60b",
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
							actionLua = "ACR_RikuDRK3_MinMPDump = 3000\nself.used = true",
							conditions = 
							{
								
								{
									"c732bc71-e7f2-305a-8e82-19338947e298",
									true,
								},
								
								{
									"0153404b-0fdf-0292-b3a3-75c7a4f3966e",
									true,
								},
								
								{
									"af5ff474-f66f-2c03-b79a-ea42a49dbadd",
									true,
								},
								
								{
									"e5a62121-89d5-2d22-a8e4-1ac54473b45e",
									true,
								},
							},
							uuid = "98132978-84ea-7745-96ad-554977c89dbd",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_Shadowbringer = true\nself.used = true",
							conditions = 
							{
								
								{
									"c732bc71-e7f2-305a-8e82-19338947e298",
									true,
								},
								
								{
									"0153404b-0fdf-0292-b3a3-75c7a4f3966e",
									true,
								},
								
								{
									"af5ff474-f66f-2c03-b79a-ea42a49dbadd",
									true,
								},
								
								{
									"e5a62121-89d5-2d22-a8e4-1ac54473b45e",
									true,
								},
							},
							name = "Set Shb",
							uuid = "f2fb21ff-965e-7a4b-9677-5dfa81c24508",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_SaltedEarth = true\nself.used = true",
							conditions = 
							{
								
								{
									"c732bc71-e7f2-305a-8e82-19338947e298",
									true,
								},
								
								{
									"0153404b-0fdf-0292-b3a3-75c7a4f3966e",
									true,
								},
								
								{
									"af5ff474-f66f-2c03-b79a-ea42a49dbadd",
									true,
								},
								
								{
									"e5a62121-89d5-2d22-a8e4-1ac54473b45e",
									true,
								},
							},
							name = "Set Salted Earth",
							uuid = "45927b1f-add3-fad8-ab0e-1171eac286da",
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
							jobValue = "DARKKNIGHT",
							uuid = "c732bc71-e7f2-305a-8e82-19338947e298",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "0153404b-0fdf-0292-b3a3-75c7a4f3966e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "a4952db9-7da5-bd89-abf9-779e4001d3b5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "af5ff474-f66f-2c03-b79a-ea42a49dbadd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 49,
							category = "Self",
							uuid = "e5a62121-89d5-2d22-a8e4-1ac54473b45e",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 1070.8,
				name = "[DRK OT] hold till pot'ed",
				timeRange = true,
				timelineIndex = 235,
				timerEndOffset = 50,
				uuid = "f4fde646-fc46-39cd-b24e-84639fb3cf6e",
				version = 2,
			},
		},
	},
	[236] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "f52cabbd-e3b9-a689-b9cf-ee73e61889ad",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[237] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "1a49c4fc-ec7e-35d8-3da9-5ed2edb0cfec",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[243] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "979b4ebd-e460-52f9-e12a-27bf88872cad",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "deaccd68-be50-b442-9f28-151fb95ee2d9",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "d1998f55-7ec6-56f7-b19f-31e6f33bbcd2",
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
							actionLua = "ACR_RikuDRK3_Tankbar_DarkMissionary = true\nself.used = true",
							conditions = 
							{
								
								{
									"72bce967-3ea1-9a00-8a7d-de87a0a423b0",
									true,
								},
								
								{
									"ce11e85f-bde8-e53d-9027-6a404bc3a6c0",
									true,
								},
								
								{
									"67fcc712-d64d-e92e-9543-4fdd0f14ee59",
									true,
								},
							},
							name = "Request Dark Missionary",
							uuid = "eacb0c16-c786-2d36-92bf-8b4c15f2c191",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_Tankbar_Reprisal = true\nself.used = true",
							conditions = 
							{
								
								{
									"72bce967-3ea1-9a00-8a7d-de87a0a423b0",
									true,
								},
								
								{
									"ce11e85f-bde8-e53d-9027-6a404bc3a6c0",
									true,
								},
								
								{
									"67fcc712-d64d-e92e-9543-4fdd0f14ee59",
									true,
								},
							},
							name = "Request Reprisal",
							uuid = "caf6ae53-9a41-1ce9-8db0-8cf3d599b951",
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
							jobValue = "DARKKNIGHT",
							uuid = "72bce967-3ea1-9a00-8a7d-de87a0a423b0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "ce11e85f-bde8-e53d-9027-6a404bc3a6c0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "67fcc712-d64d-e92e-9543-4fdd0f14ee59",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "a93d2fe1-2326-120d-9620-f2744de57c45",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 1124,
				name = "[DRK OT] reprisal + missionary ot",
				timeRange = true,
				timelineIndex = 243,
				timerStartOffset = -14,
				uuid = "3b65c289-6f43-81f4-a29e-3c4a6fe73604",
				version = 2,
			},
		},
	},
	[247] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "f7c28cc9-db36-1ded-0e1f-a753fb5d36b9",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[248] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "fc149c72-4d37-bc91-91fc-ba624cfe2ac7",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "89decbee-73af-b04f-9371-67169c0980f9",
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
							actionLua = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf = true\nself.used = true",
							conditions = 
							{
								
								{
									"82cff55c-f497-46ea-bf3c-4cbaf0b0a1fe",
									true,
								},
								
								{
									"79b471a8-0439-2d48-8e83-802ae47440fb",
									true,
								},
								
								{
									"45241c5e-1dab-b3f9-a40a-41bfcc9ab109",
									true,
								},
								
								{
									"750b9c22-bb5c-3c1f-862f-2828859979b0",
									true,
								},
							},
							name = "Request TBN Self",
							uuid = "9b931218-40e3-1fc9-913a-e7609344eb74",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_Tankbar_OblationSelf = true\nself.used = true",
							conditions = 
							{
								
								{
									"82cff55c-f497-46ea-bf3c-4cbaf0b0a1fe",
									true,
								},
								
								{
									"79b471a8-0439-2d48-8e83-802ae47440fb",
									true,
								},
								
								{
									"45241c5e-1dab-b3f9-a40a-41bfcc9ab109",
									true,
								},
								
								{
									"750b9c22-bb5c-3c1f-862f-2828859979b0",
									true,
								},
							},
							name = "Request Oblation Self",
							uuid = "f2105d79-760b-df68-af21-97c31bcb7bc9",
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
							jobValue = "DARKKNIGHT",
							uuid = "82cff55c-f497-46ea-bf3c-4cbaf0b0a1fe",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "79b471a8-0439-2d48-8e83-802ae47440fb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "45241c5e-1dab-b3f9-a40a-41bfcc9ab109",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "ec83b89c-b55e-2b85-beb6-016e83a1e425",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return (Settings.FFXIVMINION.LPDU_FRU_P5FirstInvuln or \"OT\") == \"OT\"",
							dequeueIfLuaFalse = true,
							uuid = "750b9c22-bb5c-3c1f-862f-2828859979b0",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 1146.6,
				name = "[DRK OT] tbn/obl (lv/ks)",
				timeRange = true,
				timelineIndex = 248,
				timerStartOffset = -6.9000000953674,
				uuid = "ba0edb47-0ddf-1106-a8d1-7395ea6e071d",
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
							actionLua = "ACR_RikuDRK3_Tankbar_LivingDead = true\nself.used = true",
							conditions = 
							{
								
								{
									"e272280f-34bb-2281-8784-623f97ba12fe",
									true,
								},
								
								{
									"e2b45d17-f531-e2a7-a3f4-65726959fa53",
									true,
								},
								
								{
									"a331c067-dd3c-33ee-9714-2d4c75fd3eb5",
									true,
								},
								
								{
									"8a9434c2-9b9a-eccf-87df-0744dc78d4ef",
									true,
								},
							},
							name = "Request Living Dead",
							uuid = "3d49faac-45d3-9d18-afc5-638ef751acac",
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
							jobValue = "DARKKNIGHT",
							uuid = "e272280f-34bb-2281-8784-623f97ba12fe",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "e2b45d17-f531-e2a7-a3f4-65726959fa53",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "a331c067-dd3c-33ee-9714-2d4c75fd3eb5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "a17d0d8e-2e9a-d1a2-9680-bef814a7ef4f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return (Settings.FFXIVMINION.LPDU_FRU_P5FirstInvuln or \"OT\") == \"MT\"",
							dequeueIfLuaFalse = true,
							uuid = "8a9434c2-9b9a-eccf-87df-0744dc78d4ef",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 1146.6,
				name = "[DRK OT] living dead",
				timeRange = true,
				timelineIndex = 248,
				timerStartOffset = -5,
				uuid = "3ac1881d-4b4a-1eca-9b49-8a64aacab9b7",
				version = 2,
			},
		},
	},
	[249] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "2047090b-f6bf-df47-98c7-ae0116369efb",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[250] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "15a1cb39-5e02-64c5-98e6-03aff6019469",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "a7051d35-9e40-fde8-b7ab-f03133569b66",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "b20265c1-b69a-d214-8cbf-36ee7336f981",
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
							actionLua = "ACR_RikuDRK3_Tankbar_Rampart = true\nself.used = true",
							conditions = 
							{
								
								{
									"4bc0ab9e-fe31-54cf-bf53-253d40c7f56c",
									true,
								},
								
								{
									"a723d0ff-0f3d-354c-af7a-881d9f07dda5",
									true,
								},
								
								{
									"35873f3e-518d-ec3e-b769-6a496faeba1c",
									true,
								},
								
								{
									"7259a7f7-67da-4242-b6cd-b530fb8592f1",
									true,
								},
							},
							name = "Request Rampart",
							uuid = "a7f886e1-3ad6-6cb2-a7f6-30815b3e25c5",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_Tankbar_ShadowedVigil = true\nself.used = true",
							conditions = 
							{
								
								{
									"4bc0ab9e-fe31-54cf-bf53-253d40c7f56c",
									true,
								},
								
								{
									"a723d0ff-0f3d-354c-af7a-881d9f07dda5",
									true,
								},
								
								{
									"35873f3e-518d-ec3e-b769-6a496faeba1c",
									true,
								},
								
								{
									"7259a7f7-67da-4242-b6cd-b530fb8592f1",
									true,
								},
							},
							name = "Request Vigil",
							uuid = "9a1518c0-d495-9bde-bd98-ab9abbdb3284",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_Tankbar_DarkMind = true\nself.used = true",
							conditions = 
							{
								
								{
									"4bc0ab9e-fe31-54cf-bf53-253d40c7f56c",
									true,
								},
								
								{
									"a723d0ff-0f3d-354c-af7a-881d9f07dda5",
									true,
								},
								
								{
									"35873f3e-518d-ec3e-b769-6a496faeba1c",
									true,
								},
								
								{
									"7259a7f7-67da-4242-b6cd-b530fb8592f1",
									true,
								},
							},
							name = "Request Dark Mind",
							uuid = "da5d5933-c3ed-7120-875f-3570dc224fc2",
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
							jobValue = "DARKKNIGHT",
							uuid = "4bc0ab9e-fe31-54cf-bf53-253d40c7f56c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "a723d0ff-0f3d-354c-af7a-881d9f07dda5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "35873f3e-518d-ec3e-b769-6a496faeba1c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "0bfff079-eaf5-6d9a-b128-c357af00686c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return (Settings.FFXIVMINION.LPDU_FRU_P5FirstInvuln or \"OT\") == \"OT\"",
							uuid = "7259a7f7-67da-4242-b6cd-b530fb8592f1",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 1150.3,
				name = "[DRK OT] Mits (lv/ks)",
				timeRange = true,
				timelineIndex = 250,
				timerEndOffset = 14,
				timerStartOffset = -15,
				uuid = "b6698312-7191-8017-8b89-aea8d9d96179",
				version = 2,
			},
		},
	},
	[251] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "1b1da688-2c33-0104-eb53-4c2ec2e34db8",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[253] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "3f4eb35e-40eb-daea-0fbe-c1d89f43ce8e",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[254] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "a2cbc12d-b51f-5511-e864-574337a4f95d",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[255] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "aa64076c-ebbc-6260-f62d-5e6206afbe9c",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[256] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "3f4045b3-9bfe-53b7-57ef-047d8cc52da3",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[257] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "a3539f12-a344-bc16-28e7-45bc14066842",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[258] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "613e9fe1-714d-349d-0540-0297009641d1",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[259] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "2c5204b0-30bf-b6dc-fd68-ce76cd97df20",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[260] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "6fe3b544-bbc9-8890-8487-53b6aab76ff4",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[262] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "7b80ed2a-8905-ce46-d37f-0e00c7ef005a",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[268] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "20f4531c-bb02-09e8-b5f9-a16e47ac6f8c",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DRK OT ",
				uuid = "4c1eba12-15de-9c57-a87a-ea782bf98328",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DRK OT ",
				name = " Imported timings",
				uuid = "78fc6b48-d611-ae20-8932-a6460f0f984c",
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
							actionLua = "ACR_RikuDRK3_Tankbar_DarkMissionary = true\nself.used = true",
							conditions = 
							{
								
								{
									"0a37fdd0-e467-f25a-b184-f7899079a210",
									true,
								},
								
								{
									"b5e4d351-90d9-168c-b35e-a11ff7a16e5c",
									true,
								},
								
								{
									"0820bfab-0dd1-632c-84f0-bc8467dd0d8c",
									true,
								},
							},
							name = "Request Dark Missionary",
							uuid = "8ef4b57e-32b4-955f-b90e-b40562fecb97",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRK3_Tankbar_Reprisal = true\nself.used = true",
							conditions = 
							{
								
								{
									"0a37fdd0-e467-f25a-b184-f7899079a210",
									true,
								},
								
								{
									"b5e4d351-90d9-168c-b35e-a11ff7a16e5c",
									true,
								},
								
								{
									"0820bfab-0dd1-632c-84f0-bc8467dd0d8c",
									true,
								},
							},
							name = "Request Reprisal",
							uuid = "ed2bf6ff-4d3f-5eed-93bc-51be224583d0",
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
							jobValue = "DARKKNIGHT",
							uuid = "0a37fdd0-e467-f25a-b184-f7899079a210",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "b5e4d351-90d9-168c-b35e-a11ff7a16e5c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan == \"Imported DRK timings\"",
							name = "Imported mitigation plan selected",
							uuid = "0820bfab-0dd1-632c-84f0-bc8467dd0d8c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DRKOT_Optimize ~= false",
							name = "Source rotation optimizations enabled",
							uuid = "6a786906-8009-055f-a16f-1635e57d5fbd",
							version = 3,
						},
					},
				},
				displayPath = "DRK OT / Imported timings",
				mechanicTime = 1214.2,
				name = "[DRK OT] reprisal + missionary ot",
				timeRange = true,
				timelineIndex = 268,
				timerStartOffset = -14,
				uuid = "da03dd71-3fec-7ba3-9d0e-393c402ae791",
				version = 2,
			},
		},
	},
	inheritedProfiles = 
	{
		"Frureactions\\lpdu strats",
	},
	timelineName = "fru",
	version = "1.0.5",
}



return tbl
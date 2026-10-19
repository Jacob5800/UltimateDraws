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
							actionID = 16165,
							gVar = "ACR_RikuGNB3_Hotbar_ArmsLength",
							targetType = "Current Target",
							uuid = "ec62ea8d-7c0e-eb2d-90d8-51cc1fd89542",
							variableTogglesType = 2,
							version = 2.1,
						},
						inheritedIndex = 1,
					},
				},
				conditions = 
				{
				},
				mechanicTime = 13.7,
				name = "Force Danger Zone",
				timelineIndex = 1,
				timerOffset = -12.199999809265,
				uuid = "9436f2be-be4b-bd18-8a82-8694ea36ab88",
				version = 2,
			},
			inheritedIndex = 1,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "a73a0404-8e18-0248-58ee-162ef562abf4",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	}, 
	[4] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "700b8007-5c43-fb83-ef26-2b390c8f37f7",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[6] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "GNB profile settings",
				uuid = "b83548da-aff3-4280-afe9-6a06bd810678",
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
							actionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.job~=37 then return end\n-- Same role state used by this profile's existing MT/OT reactions.\nlocal role=_G[\"ACR_RikuGNB3_TankStance\"]\nlocal defaults={LPDU_FRU_HaloTank=\"MT\",LPDU_FRU_ApocBait=\"OT\",LPDU_FRU_P4Bait=\"MT\",LPDU_FRU_DarklitTank=\"MT invulns\",LPDU_FRU_P5FirstInvuln=\"OT\"}\ndata.lpdu_fru_gnb_v3_defaults={role=role,values=defaults}\nlocal settings=Settings.FFXIVMINION\nfor key,value in pairs(defaults) do if settings[key]==nil then settings[key]=value end end\nself.used=true",
							name = "Seed GNB profile tank defaults",
							uuid = "7635e0ca-eac7-70ec-83ce-3cb29802d6c2",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "GNB profile settings",
				eventType = 13,
				mechanicTime = 20.4,
				name = "[GNB V3] Default tank GUI assignments",
				timeRange = true,
				timelineIndex = 6,
				timerEndOffset = -5.4,
				timerStartOffset = -20.4,
				uuid = "7d7b773d-73b6-be97-a4bc-947591cec249",
				version = 2,
			},
		},
	},
	[7] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "0ad97d1e-0761-76aa-c5a6-4c148cec9e8e",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
									"21a28755-b579-1313-9402-7a418e1bb873",
									true,
								},
								
								{
									"51e73290-a6cd-10c1-b28e-78a00a3970e4",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "9ea153ec-7121-2d08-b671-a70696f4b170",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "21a28755-b579-1313-9402-7a418e1bb873",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							comparator = 2,
							conditionType = 6,
							dequeueIfLuaFalse = true,
							inRangeValue = 5,
							name = "Range Check",
							uuid = "51e73290-a6cd-10c1-b28e-78a00a3970e4",
							version = 3,
						},
					},
				},
				mechanicTime = 24.2,
				name = "MT Reprisal",
				timelineIndex = 7,
				timerOffset = -15,
				uuid = "e9b89be2-f65e-b125-ac73-3152e8b49faf",
				version = 2,
			},
			inheritedIndex = 2,
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
									"5cbd772f-a061-78ad-92f1-16a49c0a2c12",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Nebula",
							uuid = "ecd117f4-d628-0e2b-bb57-2a94a7862d6e",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "5cbd772f-a061-78ad-92f1-16a49c0a2c12",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 24.2,
				name = "MT Nebula",
				timelineIndex = 7,
				timerOffset = -13,
				uuid = "a1203492-38a5-34ab-9879-c82842019cc2",
				version = 2,
			},
			inheritedIndex = 3,
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
									"b5cc461e-a8d8-052a-8b50-2eeedf181cb0",
									true,
								},
								
								{
									"b96d9dfe-cc4a-10c0-a306-17bf1b917d81",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "800648e6-c77b-9721-8ae9-b8d00600f995",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "b5cc461e-a8d8-052a-8b50-2eeedf181cb0",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							partyTargetSubType = "Furthest",
							uuid = "b96d9dfe-cc4a-10c0-a306-17bf1b917d81",
							version = 3,
						},
					},
				},
				mechanicTime = 24.2,
				name = "MT HoL",
				timelineIndex = 7,
				timerOffset = -11,
				uuid = "a5a9f9f6-01e1-60e3-a9b8-e39218ee9302",
				version = 2,
			},
			inheritedIndex = 4,
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
									"6b38983a-9401-24bd-9f2e-a32fc132932d",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							uuid = "15db5b59-562c-f754-8a6a-c5438e660ab5",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "6b38983a-9401-24bd-9f2e-a32fc132932d",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 24.2,
				name = "MT Camo",
				timelineIndex = 7,
				timerOffset = -5,
				uuid = "69012e44-a89d-4043-b547-79f58d7d482b",
				version = 2,
			},
			inheritedIndex = 5,
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
									"695bb711-4b29-c93e-b171-26ac3338929d",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_ShirkOT",
							uuid = "0ad414fb-c171-b824-8c3d-8653eaaf4f9e",
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
							category = "Lua",
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "695bb711-4b29-c93e-b171-26ac3338929d",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 24.2,
				name = "MT Shirk",
				timelineIndex = 7,
				timerOffset = -1,
				uuid = "05eba08c-eed0-ec7c-b5d2-d203b876757e",
				version = 2,
			},
			inheritedIndex = 6,
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 16142,
							conditions = 
							{
								
								{
									"9570f172-fa22-6f0b-a2e1-6b8d2b11befa",
									true,
								},
								
								{
									"9980e027-1a86-3028-82fd-61e6e9b976c2",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_CD",
							uuid = "59c26b6d-cc32-3584-9807-46145a0415c3",
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "9570f172-fa22-6f0b-a2e1-6b8d2b11befa",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffID = 1833,
							category = "Self",
							uuid = "9980e027-1a86-3028-82fd-61e6e9b976c2",
							version = 3,
						},
						inheritedIndex = 2,
					},
				},
				mechanicTime = 24.2,
				name = "MT Stance OFF",
				timelineIndex = 7,
				timerOffset = 1,
				uuid = "a48ee864-5cd1-e14c-a5ee-36a48bf7e406",
				version = 2,
			},
			inheritedIndex = 7,
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
									"1b7dfd50-8fd1-3ca3-8aa7-611d6c72ea3e",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Rampart",
							uuid = "f693d3f8-1915-5256-9d22-2289268f6be1",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "1b7dfd50-8fd1-3ca3-8aa7-611d6c72ea3e",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 24.2,
				name = "MT Rampart",
				timelineIndex = 7,
				timerOffset = -3,
				uuid = "1a3a51ae-f8ac-ed36-8560-bde62b879d18",
				version = 2,
			},
			inheritedIndex = 8,
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
									"16ab8144-84aa-e72b-8118-d79cdb0ac53d",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "2450b0be-8075-e5ed-b567-c173622f501e",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "16ab8144-84aa-e72b-8118-d79cdb0ac53d",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 24.2,
				name = "MT HoC Self",
				timelineIndex = 7,
				timerOffset = -3.5999999046326,
				uuid = "9910f0ba-7179-1e33-a465-fd1005c88b44",
				version = 2,
			},
			inheritedIndex = 9,
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
									"67614a0d-b5d5-35da-a5b1-31afe7622250",
									true,
								},
								
								{
									"cef6c1cd-3591-8178-983b-c0bb6690aa46",
									true,
								},
								
								{
									"400d6842-5f6e-a5e5-b7b5-0767e8ed70bc",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "7e974ba2-da6b-0522-b345-d35e8a23db05",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "67614a0d-b5d5-35da-a5b1-31afe7622250",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1193,
							dequeueIfLuaFalse = true,
							name = "Reprisal Check",
							partyTargetSubType = 1,
							uuid = "cef6c1cd-3591-8178-983b-c0bb6690aa46",
							version = 3,
						},
					},
					
					{
						data = 
						{
							comparator = 2,
							conditionType = 6,
							dequeueIfLuaFalse = true,
							inRangeValue = 5,
							name = "Range Check",
							uuid = "400d6842-5f6e-a5e5-b7b5-0767e8ed70bc",
							version = 3,
						},
					},
				},
				mechanicTime = 24.2,
				name = "OT Reprisal",
				timelineIndex = 7,
				timerOffset = -14,
				uuid = "148e195b-c774-0745-acc2-15da8cb777ca",
				version = 2,
			},
			inheritedIndex = 10,
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 16142,
							conditions = 
							{
								
								{
									"14385d62-f682-454c-910e-a054edb4069d",
									true,
								},
								
								{
									"dd92d010-b536-eae7-a30e-d746094b6691",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_CD",
							uuid = "44ec3077-78d6-2d67-8f1f-a0a55a6d3790",
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "14385d62-f682-454c-910e-a054edb4069d",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "dd92d010-b536-eae7-a30e-d746094b6691",
							version = 3,
						},
						inheritedIndex = 2,
					},
				},
				mechanicTime = 24.2,
				name = "OT Stance ON",
				timelineIndex = 7,
				timerOffset = -8,
				uuid = "f3af9be2-26b6-5e26-918a-63a7b24a0064",
				version = 2,
			},
			inheritedIndex = 11,
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
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumOT",
							uuid = "df012c65-c3db-4b29-afc2-2b6dbd6b02fb",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "a54f4d4d-cd7d-0bef-b3dc-8cfd37f02a87",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 24.2,
				name = "OT HoC OT",
				timelineIndex = 7,
				timerOffset = -4,
				uuid = "6180e672-edfc-86c9-b8a3-d5e7b586d614",
				version = 2,
			},
			inheritedIndex = 12,
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
									"6dada694-00aa-66e8-878f-f0a3c9a2f512",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "6d50a7e9-e5fe-04ee-9b58-7685c742b422",
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
							category = "Lua",
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "6dada694-00aa-66e8-878f-f0a3c9a2f512",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 24.2,
				name = "OT Voke",
				timelineIndex = 7,
				timerOffset = -2.5999999046326,
				uuid = "80dd4313-75f7-db99-8f80-22588cd6eb85",
				version = 2,
			},
			inheritedIndex = 13,
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
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							uuid = "f8416b63-0eee-ae18-902d-2d7524fbec00",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 24.2,
				name = "Camo",
				timelineIndex = 7,
				timerOffset = 3,
				uuid = "f556ae63-4de8-7298-92e1-5ca5a2e8d86c",
				version = 2,
			},
			inheritedIndex = 14,
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
							gVar = "ACR_RikuGNB3_Tankbar_AuroraSelf",
							uuid = "a6968e18-009b-8233-aa3c-3dc921a3e72d",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 24.2,
				name = "Aurora Self",
				timelineIndex = 7,
				timerOffset = 2,
				uuid = "83759e66-30cc-9d24-97f0-04adc7a5fe0c",
				version = 2,
			},
			inheritedIndex = 15,
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
							gVar = "ACR_RikuGNB3_Tankbar_Rampart",
							uuid = "3473b5c1-d00d-00d3-aa9a-6e1ca613554e",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 24.2,
				name = "Rampart",
				timelineIndex = 7,
				timerOffset = 4,
				uuid = "61144bae-0242-7a15-b81a-21c81e766a33",
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
				name = "FRU\\lpdu strats",
				uuid = "2272b8bc-f950-b760-abf5-3ec600db52ac",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[10] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "ced492ea-a69e-6e46-cf5c-c768fdf9a45a",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[11] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "db3a30b9-1e9d-b995-a814-5d771ea52ba9",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
							actionID = 25758,
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							ignoreWeaveRules = true,
							uuid = "0fae3702-bac5-5a3f-b5f5-bbc7046eb289",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 40.3,
				name = "HoC Self",
				timeRange = true,
				timelineIndex = 11,
				timerEndOffset = -1,
				timerOffset = -3.5,
				timerStartOffset = -3.5,
				uuid = "2fab317d-5741-1f7c-8fa8-12c0ce300a28",
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
				name = "FRU\\lpdu strats",
				uuid = "b1ba5194-bf05-4fa0-2871-c40ef22efa04",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[13] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "684791c3-4d51-d1af-ef31-bbfd459a9fb3",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[15] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "835b5c1d-da0c-eb31-a4b0-c0236249ed4d",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[16] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "0b9cca88-60bf-744c-23d3-554a4e991678",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[17] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "19ac3717-dc4c-c99b-5f38-4619bb007607",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[18] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "e67dede2-5397-45ae-af75-5c001619d792",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[19] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "cb77c131-91f0-861d-0b61-420fb7e9d361",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[20] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "154ed9f1-b23d-6ead-f348-01339bd77f21",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
							actionID = 3,
							gVar = "ACR_RikuGNB3_Hotbar_Sprint",
							ignoreWeaveRules = true,
							uuid = "d0041a4a-0112-1e91-ba84-37571210c681",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 78.5,
				name = "Sprint",
				timelineIndex = 20,
				timerOffset = -10,
				uuid = "62ebf411-c4f7-8c89-b126-54f87fdb8406",
				version = 2,
			},
			inheritedIndex = 3,
		},
	},
	[21] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "a4f900a2-ef06-89fe-9fdc-5b8467cea652",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[22] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "1b50345b-b056-c5e7-cc52-8d29517d8f0b",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
									"21a28755-b579-1313-9402-7a418e1bb873",
									true,
								},
								
								{
									"75928e7c-7877-81a1-be0a-54f8ee9a0162",
									true,
								},
								
								{
									"51e73290-a6cd-10c1-b28e-78a00a3970e4",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "9ea153ec-7121-2d08-b671-a70696f4b170",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "21a28755-b579-1313-9402-7a418e1bb873",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1193,
							dequeueIfLuaFalse = true,
							name = "Reprisal Check",
							partyTargetSubType = 1,
							uuid = "75928e7c-7877-81a1-be0a-54f8ee9a0162",
							version = 3,
						},
					},
					
					{
						data = 
						{
							comparator = 2,
							conditionType = 6,
							dequeueIfLuaFalse = true,
							inRangeValue = 5,
							name = "Range Check",
							uuid = "51e73290-a6cd-10c1-b28e-78a00a3970e4",
							version = 3,
						},
					},
				},
				mechanicTime = 85.9,
				name = "MT Reprisal",
				timelineIndex = 22,
				timerOffset = -4,
				uuid = "9a70dd60-7050-4b59-8e4d-c14c2e02899b",
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
							actionID = 16160,
							conditions = 
							{
								
								{
									"89af344d-9fb1-95e1-be76-67416fc86cb9",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							ignoreWeaveRules = true,
							uuid = "0a0e52b4-8f9b-ea6a-bdf0-10fd1aa8fd83",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "89af344d-9fb1-95e1-be76-67416fc86cb9",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 85.9,
				name = "OT HoL",
				timelineIndex = 22,
				timerOffset = -11,
				uuid = "2088d1d9-c310-1af7-b5a3-468d7e76d1d1",
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
							actionID = 16142,
							conditions = 
							{
								
								{
									"abde3631-571d-ce36-9aea-06e66347a015",
									true,
								},
								
								{
									"4d1581ac-8fb2-b3df-935c-6dbb22995b29",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_CD",
							uuid = "2acb1ddf-eb58-e00f-9ee7-2df336f26a1e",
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "abde3631-571d-ce36-9aea-06e66347a015",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "4d1581ac-8fb2-b3df-935c-6dbb22995b29",
							version = 3,
						},
					},
				},
				mechanicTime = 85.9,
				name = "MT Stance ON",
				timelineIndex = 22,
				uuid = "13f364a5-6990-1add-83c9-c2525360f7f0",
				version = 2,
			},
		},
	},
	[23] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "f2f4410c-93f5-1a58-aba7-05da0912177c",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
							actionID = 16142,
							conditions = 
							{
								
								{
									"abde3631-571d-ce36-9aea-06e66347a015",
									true,
								},
								
								{
									"4d1581ac-8fb2-b3df-935c-6dbb22995b29",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_CD",
							uuid = "2acb1ddf-eb58-e00f-9ee7-2df336f26a1e",
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "abde3631-571d-ce36-9aea-06e66347a015",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "4d1581ac-8fb2-b3df-935c-6dbb22995b29",
							version = 3,
						},
					},
				},
				mechanicTime = 101.5,
				name = "MT Stance ON",
				timelineIndex = 23,
				uuid = "cd52df80-8ba1-be21-9957-622a75d73afe",
				version = 2,
			},
		},
	},
	[24] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "275a7355-6d41-4289-68ad-d78785eb6445",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[25] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "cf31aa06-416f-e83a-fc46-77f8e58f71b6",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[26] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "29af8b6f-5248-1793-0ff7-4ecdcd57001f",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[27] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "53f8cd60-7cc8-1e64-037b-d49e735f09d0",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[28] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "fa5ea379-77fb-1565-b406-75cb93bf8d69",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
									"6dada694-00aa-66e8-878f-f0a3c9a2f512",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "6d50a7e9-e5fe-04ee-9b58-7685c742b422",
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
							category = "Lua",
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "6dada694-00aa-66e8-878f-f0a3c9a2f512",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 113.7,
				name = "OT Voke",
				timelineIndex = 28,
				uuid = "889db2df-ac55-1656-aebf-4fac40570133",
				version = 2,
			},
			inheritedIndex = 4,
		},
	},
	[29] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "62098caa-4e1e-09d6-1b15-103c3183d61a",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
									"67614a0d-b5d5-35da-a5b1-31afe7622250",
									true,
								},
								
								{
									"cef6c1cd-3591-8178-983b-c0bb6690aa46",
									true,
								},
								
								{
									"400d6842-5f6e-a5e5-b7b5-0767e8ed70bc",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "7e974ba2-da6b-0522-b345-d35e8a23db05",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "67614a0d-b5d5-35da-a5b1-31afe7622250",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1193,
							dequeueIfLuaFalse = true,
							name = "Reprisal Check",
							partyTargetSubType = 1,
							uuid = "cef6c1cd-3591-8178-983b-c0bb6690aa46",
							version = 3,
						},
					},
					
					{
						data = 
						{
							comparator = 2,
							conditionType = 6,
							dequeueIfLuaFalse = true,
							inRangeValue = 5,
							name = "Range Check",
							uuid = "400d6842-5f6e-a5e5-b7b5-0767e8ed70bc",
							version = 3,
						},
					},
				},
				mechanicTime = 121.1,
				name = "OT Reprisal",
				timelineIndex = 29,
				timerOffset = -14,
				uuid = "5269b58a-d7ff-8df2-a830-5a95689181d4",
				version = 2,
			},
			inheritedIndex = 4,
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
									"b5cc461e-a8d8-052a-8b50-2eeedf181cb0",
									true,
								},
								
								{
									"b96d9dfe-cc4a-10c0-a306-17bf1b917d81",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "800648e6-c77b-9721-8ae9-b8d00600f995",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "b5cc461e-a8d8-052a-8b50-2eeedf181cb0",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							partyTargetSubType = "Furthest",
							uuid = "b96d9dfe-cc4a-10c0-a306-17bf1b917d81",
							version = 3,
						},
					},
				},
				mechanicTime = 121.1,
				name = "MT HoL",
				timelineIndex = 29,
				timerOffset = -14,
				uuid = "9fe2d0be-e80b-226e-9fcf-5351d0b0f25d",
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
				name = "FRU\\lpdu strats",
				uuid = "97395b9c-9941-2128-f33e-fa86d11524cc",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
									"355bf092-cbc8-01f7-99d0-fabdd36416aa",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Superbolide",
							uuid = "23118413-0f70-c233-bdd0-3c12b415c3d9",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "355bf092-cbc8-01f7-99d0-fabdd36416aa",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 129.5,
				name = "OT Bolide",
				timelineIndex = 30,
				timerOffset = -4,
				uuid = "175cdbff-becb-76dd-8e35-a482ae0d0b38",
				version = 2,
			},
			inheritedIndex = 3,
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
									"bab5ee75-6870-1df1-8426-06cd74db4447",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "89716ecf-4af5-246b-a088-b3c4b5850a05",
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
							category = "Lua",
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "bab5ee75-6870-1df1-8426-06cd74db4447",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 129.5,
				name = "MT Provoke",
				timelineIndex = 30,
				timerOffset = -3,
				uuid = "a9c8f778-a707-28ba-a9d5-375975539df7",
				version = 2,
			},
			inheritedIndex = 4,
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 16164,
							gVar = "ACR_RikuGNB3_Hotbar_ArmsLength",
							targetType = "Current Target",
							uuid = "054b0a96-6fe1-cdad-b28d-cbe4bb6ed53e",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 129.5,
				name = "Bloodfest",
				timeRange = true,
				timelineIndex = 30,
				timerOffset = -12,
				timerStartOffset = -12,
				uuid = "5e88527c-c51c-24b8-94f1-d4a730e1b525",
				version = 2,
			},
			inheritedIndex = 5,
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
									"e360ec22-c4aa-80e0-9a1a-8d6934788554",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_ShirkOT",
							uuid = "27708d6e-6bf3-9c1a-a60a-2de4707a6001",
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
							category = "Lua",
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "e360ec22-c4aa-80e0-9a1a-8d6934788554",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 129.5,
				name = "OT Shirk",
				timelineIndex = 30,
				timerOffset = -1,
				uuid = "c646a637-30d3-624e-b6ef-2a9926486916",
				version = 2,
			},
			inheritedIndex = 6,
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 36937,
							gVar = "ACR_RikuGNB3_CD",
							targetType = "Current Target",
							uuid = "2f9b0c02-5904-c18d-afdd-0b944b00b7b2",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 129.5,
				name = "Force RoB",
				timeRange = true,
				timelineIndex = 30,
				timerEndOffset = 9,
				timerStartOffset = 2,
				uuid = "417ad448-3e7e-fecf-8c56-26f5df316a81",
				version = 2,
			},
			inheritedIndex = 7,
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 16142,
							conditions = 
							{
								
								{
									"bb2d4f6f-b85c-d30d-8054-8d923c6538a1",
									true,
								},
								
								{
									"ef18a5b1-9d14-7e95-a9ad-add4dfcb2e2a",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_CD",
							uuid = "c1ff8393-043d-0f87-8e46-72497f585f1f",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "bb2d4f6f-b85c-d30d-8054-8d923c6538a1",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffID = 1833,
							category = "Self",
							uuid = "ef18a5b1-9d14-7e95-a9ad-add4dfcb2e2a",
							version = 3,
						},
						inheritedIndex = 2,
					},
				},
				mechanicTime = 129.5,
				name = "OT Stance OFF",
				timelineIndex = 30,
				uuid = "909787c2-e3da-1be5-bc2e-f0f5a8508e43",
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
							gVar = "ACR_RikuGNB3_Tankbar_AuroraSelf",
							uuid = "eab992f4-98d2-2f21-abac-8ff9d3e50ae7",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 129.5,
				name = "Aurora Self",
				timelineIndex = 30,
				uuid = "19169d20-e55d-4a97-9ef0-2636225e4aa7",
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
				name = "FRU\\lpdu strats",
				uuid = "c43e5172-b73e-9bce-7806-1de06568c862",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
							gVar = "ACR_RikuGNB3_Hotbar_ArmsLength",
							holdActionDuration = 20,
							holdActionID = 16153,
							uuid = "4553a6f0-440d-ce6e-a81f-bf5b8216b4b5",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 140.9,
				name = "Hold Sonic Break",
				timelineIndex = 32,
				timerOffset = -6,
				uuid = "e674b8e8-9ec8-6b7b-87f2-7dca86a7a4c1",
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
				name = "FRU\\lpdu strats",
				uuid = "a6af50c1-3b8f-edbd-4dbc-dbef4a629bb1",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[34] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "cda568f0-ebfc-4a34-c906-51222f5b0020",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Melee] Ranged Attacks off",
				uuid = "bb566fd3-2015-4048-bb28-871844c5d493",
				version = 2,
			},
			inheritedObjectUUID = "72a29016-331d-e092-a001-9c39869bc6ca",
			inheritedOverwrites = 
			{
				timerOffset = -2.2999999523163,
			},
		},
	},
	[35] = 
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
							gVar = "ACR_RikuGNB3_Tankbar_Rampart",
							uuid = "fc572b73-91cd-dd1f-be1c-90af10ef7fa6",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 145.6,
				name = "Rampart",
				timelineIndex = 35,
				timerOffset = -14,
				uuid = "28de12ab-dbf0-a51b-910a-c7d5f6f0dfa6",
				version = 2,
			},
			inheritedIndex = 1,
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
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							uuid = "480bc739-dc45-917a-b059-b2ecec835a56",
							variableTogglesType = 3,
							version = 2.1,
						},
						inheritedIndex = 1,
					},
				},
				conditions = 
				{
				},
				mechanicTime = 145.6,
				name = "Camo",
				timelineIndex = 35,
				timerOffset = -12,
				uuid = "7230073f-4539-5e24-9528-795a07d57580",
				version = 2,
			},
			inheritedIndex = 2,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "36b6c93f-b066-7ae3-395c-2a71bda7822f",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
							gVar = "ACR_RikuGNB3_Hotbar_Sprint",
							uuid = "d0041a4a-0112-1e91-ba84-37571210c681",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 145.6,
				name = "Sprint",
				timelineIndex = 35,
				timerOffset = -8,
				uuid = "b4edd9ba-40b7-15ad-b5be-27459e7d9760",
				version = 2,
			},
			inheritedIndex = 4,
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
							gVar = "ACR_RikuGNB3_Tankbar_Nebula",
							uuid = "b60da046-9a7e-c6a4-8408-6541a5d17857",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 145.6,
				name = "Nebula",
				timelineIndex = 35,
				timerOffset = -10,
				uuid = "592bda96-e346-8f7f-94e7-98145ec244ee",
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
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "4886390e-e308-4579-8e55-8acf34dc41a9",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 145.6,
				name = "HoC Self",
				timelineIndex = 35,
				timerOffset = -3,
				uuid = "0364ad44-e6c8-b3e3-9c77-b2f6787d963a",
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
							gVar = "ACR_RikuGNB3_Tankbar_AuroraSelf",
							uuid = "eab992f4-98d2-2f21-abac-8ff9d3e50ae7",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 145.6,
				name = "Aurora Self",
				timelineIndex = 35,
				uuid = "28c083ea-88eb-a3e7-bac9-2039202314bd",
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
				name = "FRU\\lpdu strats",
				uuid = "517867e5-7ca9-d2d9-3f5d-84db8ef36a15",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[39] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 16165,
							gVar = "ACR_RikuGNB3_Hotbar_ArmsLength",
							targetType = "Current Target",
							uuid = "ec62ea8d-7c0e-eb2d-90d8-51cc1fd89542",
							variableTogglesType = 2,
							version = 2.1,
						},
						inheritedIndex = 1,
					},
				},
				conditions = 
				{
				},
				mechanicTime = 203.8,
				name = "Force Danger Zone",
				timeRange = true,
				timelineIndex = 39,
				timerEndOffset = 5,
				uuid = "8f13dbea-7240-ad49-a610-a500350e2b33",
				version = 2,
			},
			inheritedIndex = 1,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "2bc56a13-c07b-82cf-be9c-295de7326c43",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
									"bab5ee75-6870-1df1-8426-06cd74db4447",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "89716ecf-4af5-246b-a088-b3c4b5850a05",
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
							category = "Lua",
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "bab5ee75-6870-1df1-8426-06cd74db4447",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 203.8,
				name = "MT Provoke",
				timelineIndex = 39,
				uuid = "63a428c1-76e5-f87d-9045-6c4bba719a9e",
				version = 2,
			},
			inheritedIndex = 4,
		},
	},
	[40] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 16142,
							conditions = 
							{
								
								{
									"14385d62-f682-454c-910e-a054edb4069d",
									true,
								},
								
								{
									"dd92d010-b536-eae7-a30e-d746094b6691",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_CD",
							uuid = "44ec3077-78d6-2d67-8f1f-a0a55a6d3790",
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "14385d62-f682-454c-910e-a054edb4069d",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "dd92d010-b536-eae7-a30e-d746094b6691",
							version = 3,
						},
						inheritedIndex = 2,
					},
				},
				mechanicTime = 214.9,
				name = "OT Stance ON",
				timelineIndex = 40,
				timerOffset = -6,
				uuid = "63ff0884-253d-86ad-a8b0-d1839d67451c",
				version = 2,
			},
			inheritedIndex = 1,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "80a36fa3-8f63-8a57-cabc-a141c29dc813",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[41] = 
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
							conditions = 
							{
								
								{
									"e0a3c935-d306-f911-b33d-70b895794fd5",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Superbolide",
							uuid = "d2214e27-b530-3a2e-b251-34ce37cb8a5d",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "e0a3c935-d306-f911-b33d-70b895794fd5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 219,
				name = "MT Bolide",
				timelineIndex = 41,
				timerOffset = -7.5,
				uuid = "a9e943e0-ff9f-3cad-954e-c12fa33c455b",
				version = 2,
			},
			inheritedIndex = 1,
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
									"493e4e4e-c9ef-445e-8ebd-e77853fff127",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "e46e1c8b-37e6-0dc3-8c11-dc48d60467fc",
							variableTogglesType = 3,
							version = 2.1,
						},
						inheritedIndex = 1,
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "493e4e4e-c9ef-445e-8ebd-e77853fff127",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 219,
				name = "MT HoC Self",
				timelineIndex = 41,
				uuid = "89d3e857-0a27-47ed-a3f3-c6920e21d04a",
				version = 2,
			},
			inheritedIndex = 2,
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
									"6dada694-00aa-66e8-878f-f0a3c9a2f512",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "6d50a7e9-e5fe-04ee-9b58-7685c742b422",
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
							category = "Lua",
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "6dada694-00aa-66e8-878f-f0a3c9a2f512",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 219,
				name = "OT Voke",
				timelineIndex = 41,
				uuid = "7260b6ba-cd3a-9287-93c6-2c960af0f97d",
				version = 2,
			},
			inheritedIndex = 3,
		},
	},
	[44] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "84070cf7-bcf6-5003-7585-b86520ac7667",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
									"21a28755-b579-1313-9402-7a418e1bb873",
									true,
								},
								
								{
									"75928e7c-7877-81a1-be0a-54f8ee9a0162",
									true,
								},
								
								{
									"51e73290-a6cd-10c1-b28e-78a00a3970e4",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "9ea153ec-7121-2d08-b671-a70696f4b170",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "21a28755-b579-1313-9402-7a418e1bb873",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1193,
							dequeueIfLuaFalse = true,
							name = "Reprisal Check",
							partyTargetSubType = 1,
							uuid = "75928e7c-7877-81a1-be0a-54f8ee9a0162",
							version = 3,
						},
					},
					
					{
						data = 
						{
							comparator = 2,
							conditionType = 6,
							dequeueIfLuaFalse = true,
							inRangeValue = 5,
							name = "Range Check",
							uuid = "51e73290-a6cd-10c1-b28e-78a00a3970e4",
							version = 3,
						},
					},
				},
				mechanicTime = 235.3,
				name = "MT Reprisal",
				timelineIndex = 44,
				timerOffset = -10,
				uuid = "3ae0fc92-3b02-b504-aee8-1d5caaa9e6cd",
				version = 2,
			},
			inheritedIndex = 2,
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
									"bab5ee75-6870-1df1-8426-06cd74db4447",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "89716ecf-4af5-246b-a088-b3c4b5850a05",
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
							category = "Lua",
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "bab5ee75-6870-1df1-8426-06cd74db4447",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 235.3,
				name = "MT Provoke",
				timelineIndex = 44,
				uuid = "e59b25c1-dffa-98e4-be15-d4609c1d78c0",
				version = 2,
			},
			inheritedIndex = 4,
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
									"b278dff5-8e52-a847-a8ff-4aa23021e48c",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "56e2b6ba-a1a6-b09d-88f0-e53a0175baea",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "b278dff5-8e52-a847-a8ff-4aa23021e48c",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 235.3,
				name = "OT HoL",
				timelineIndex = 44,
				timerOffset = -14,
				uuid = "10b0b1de-9480-0553-b6df-b1d228095382",
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
							actionID = 16142,
							conditions = 
							{
								
								{
									"abde3631-571d-ce36-9aea-06e66347a015",
									true,
								},
								
								{
									"4d1581ac-8fb2-b3df-935c-6dbb22995b29",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_CD",
							uuid = "2acb1ddf-eb58-e00f-9ee7-2df336f26a1e",
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "abde3631-571d-ce36-9aea-06e66347a015",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "4d1581ac-8fb2-b3df-935c-6dbb22995b29",
							version = 3,
						},
					},
				},
				mechanicTime = 235.3,
				name = "MT Stance ON",
				timelineIndex = 44,
				uuid = "c21f2c6c-aa58-763f-afc6-041fa9d2ea4f",
				version = 2,
			},
		},
	},
	[45] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "ab4f76e8-8783-81d4-4ba8-acd6044acad8",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
									"e6e8ea7c-cad1-a560-a828-2080930ea4b8",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_ReleaseRoyalGuard",
							uuid = "ad686b59-0d52-4290-9b21-74efeaa2ca17",
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
							category = "Lua",
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "e6e8ea7c-cad1-a560-a828-2080930ea4b8",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 238.9,
				name = "OT Stance OFF",
				randomOffset = -3,
				timelineIndex = 45,
				timerOffset = -8,
				uuid = "cf99d8a8-5ea2-3301-bf81-fb1457de0044",
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
				name = "FRU\\lpdu strats",
				uuid = "cb246b7d-0068-e1f9-5ac4-19bf22931f2d",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[47] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "0464738e-6813-cb2a-f1b2-b9705f5c3a7e",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[48] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "eb7d7e7b-2fb9-c9ef-6acb-e58916c14bab",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[49] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "785327ac-5a03-0be0-3efa-8b3a2e11b99c",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[50] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 3,
							gVar = "ACR_RikuGNB3_Hotbar_Sprint",
							ignoreWeaveRules = true,
							uuid = "d0041a4a-0112-1e91-ba84-37571210c681",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 251.1,
				name = "Sprint",
				timelineIndex = 50,
				timerOffset = -12,
				uuid = "b2ed93a0-ff65-edac-b242-9fcca7aedade",
				version = 2,
			},
			inheritedIndex = 1,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "995f92f6-20f7-793a-82d9-12ec6f5a6966",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[53] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "b728765f-31cf-a893-def3-05d130d1334f",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
							actionID = 25758,
							gVar = "ACR_RikuGNB3_CD",
							ignoreWeaveRules = true,
							targetType = "Healer",
							uuid = "9722e256-09f2-6c40-a24e-103a20caee15",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 255.1,
				name = "HoC Healer Nearest",
				timelineIndex = 53,
				timerOffset = -1,
				uuid = "52a32a00-799b-4f3e-ace4-6585fc339528",
				version = 2,
			},
		},
	},
	[57] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "8ff9254b-8fde-56e7-ec3b-38b5e23bac3b",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[58] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "df6e841e-ca48-8ff2-e986-ed3427944c4e",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Core] Lookaway",
				uuid = "13870347-b251-446d-84ad-b47da3d84981",
				version = 2,
			},
			inheritedObjectUUID = "726cf3b4-ac65-0eae-9e78-43c3d5a8a3e1",
			inheritedOverwrites = 
			{
				timerEndOffset = -0.10000000149012,
			},
		},
	},
	[59] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "ebe9fe4d-acb9-8f41-adf1-1de3abe59e3d",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[61] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "657a8aae-1bf0-fdb2-2faa-1b087646e21e",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[62] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "3a24a617-6c60-16eb-a768-ac9ddb78e507",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[64] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "fbb29fb9-a731-2125-8c54-e2433f1d9aa9",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
							actionID = 16142,
							conditions = 
							{
								
								{
									"14385d62-f682-454c-910e-a054edb4069d",
									true,
								},
								
								{
									"dd92d010-b536-eae7-a30e-d746094b6691",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_CD",
							uuid = "44ec3077-78d6-2d67-8f1f-a0a55a6d3790",
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "14385d62-f682-454c-910e-a054edb4069d",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "dd92d010-b536-eae7-a30e-d746094b6691",
							version = 3,
						},
						inheritedIndex = 2,
					},
				},
				mechanicTime = 283,
				name = "OT Stance ON",
				randomOffset = 8,
				timelineIndex = 64,
				uuid = "296f3d5d-d184-763f-aafc-e74c3eac6ffa",
				version = 2,
			},
			inheritedIndex = 4,
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
									"67614a0d-b5d5-35da-a5b1-31afe7622250",
									true,
								},
								
								{
									"cef6c1cd-3591-8178-983b-c0bb6690aa46",
									true,
								},
								
								{
									"400d6842-5f6e-a5e5-b7b5-0767e8ed70bc",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "7e974ba2-da6b-0522-b345-d35e8a23db05",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "67614a0d-b5d5-35da-a5b1-31afe7622250",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1193,
							dequeueIfLuaFalse = true,
							name = "Reprisal Check",
							partyTargetSubType = 1,
							uuid = "cef6c1cd-3591-8178-983b-c0bb6690aa46",
							version = 3,
						},
					},
					
					{
						data = 
						{
							comparator = 2,
							conditionType = 6,
							dequeueIfLuaFalse = true,
							inRangeValue = 5,
							name = "Range Check",
							uuid = "400d6842-5f6e-a5e5-b7b5-0767e8ed70bc",
							version = 3,
						},
					},
				},
				mechanicTime = 283,
				name = "OT Reprisal",
				timelineIndex = 64,
				timerOffset = -4,
				uuid = "71834997-249d-9ac2-b599-894e5552418a",
				version = 2,
			},
			inheritedIndex = 7,
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
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumLowest",
							uuid = "838e62ed-b83d-4f51-8f56-05715c1a6116",
							variableTogglesType = 3,
							version = 2.1,
						},
						inheritedIndex = 1,
					},
				},
				conditions = 
				{
				},
				mechanicTime = 283,
				name = "HoC Lowest",
				timelineIndex = 64,
				timerOffset = -3,
				uuid = "a37c3673-c9a3-63df-a074-91a37326013f",
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
				name = "FRU\\lpdu strats",
				uuid = "3080fe95-08c0-fc49-62c9-f82f10e62685",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
									"c203b9bb-ecd5-8895-b556-dcf919b8e846",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_AuroraOT",
							uuid = "05f7aa91-1b18-0d5b-b421-bb109913eb8c",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "c203b9bb-ecd5-8895-b556-dcf919b8e846",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 292.6,
				name = "OT Aurora MT",
				timelineIndex = 68,
				uuid = "3f19e3a5-c47a-fa49-8f22-76c05e308bab",
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
							actionID = 16142,
							conditions = 
							{
								
								{
									"bb2d4f6f-b85c-d30d-8054-8d923c6538a1",
									true,
								},
								
								{
									"ef18a5b1-9d14-7e95-a9ad-add4dfcb2e2a",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_CD",
							uuid = "c1ff8393-043d-0f87-8e46-72497f585f1f",
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "bb2d4f6f-b85c-d30d-8054-8d923c6538a1",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffID = 1833,
							category = "Self",
							uuid = "ef18a5b1-9d14-7e95-a9ad-add4dfcb2e2a",
							version = 3,
						},
						inheritedIndex = 2,
					},
				},
				mechanicTime = 292.6,
				name = "OT Stance OFF",
				timelineIndex = 68,
				timerOffset = 2,
				uuid = "31088c12-4c92-3512-ad03-a4b56efeebc8",
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
				name = "FRU\\lpdu strats",
				uuid = "aac6cba7-d99a-397b-1e39-22c92031a9d7",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[72] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "09a241be-da59-30c2-7082-a9a4a644a76e",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
									"1b7dfd50-8fd1-3ca3-8aa7-611d6c72ea3e",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Rampart",
							uuid = "f693d3f8-1915-5256-9d22-2289268f6be1",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "1b7dfd50-8fd1-3ca3-8aa7-611d6c72ea3e",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 307.2,
				name = "MT Rampart",
				timelineIndex = 72,
				timerOffset = -15,
				uuid = "9761ba74-4fcc-6ef0-b080-f85b2c19986e",
				version = 2,
			},
			inheritedIndex = 5,
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
									"e5c94ffc-d647-5942-9937-cdf5e1fe7946",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							uuid = "8305c559-22c5-f7f7-9f4b-c26278a6d7d3",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "e5c94ffc-d647-5942-9937-cdf5e1fe7946",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 307.2,
				name = "OT Camo",
				timelineIndex = 72,
				timerOffset = -19,
				uuid = "febf4651-7c30-4693-9525-615831287532",
				version = 2,
			},
			inheritedIndex = 8,
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
									"d8ac13f3-2cae-9e7f-bf92-68e996c25967",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_AuroraSelf",
							uuid = "d36b134a-97d0-9328-8be3-48239b3b0e35",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "d8ac13f3-2cae-9e7f-bf92-68e996c25967",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 307.2,
				name = "MT Aurora Self",
				timelineIndex = 72,
				timerOffset = -13,
				uuid = "65ee0cf4-f43a-a85e-b826-1b863ad845eb",
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
									"d357a60d-cce7-f06a-bf21-930d7b78686c",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Aurora",
							targetSubType = "Topmost Partylist",
							targetType = "Melee DPS",
							uuid = "6199a206-ea45-f7fb-aed8-783f7ed6b2cc",
							variableIsHover = true,
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "d357a60d-cce7-f06a-bf21-930d7b78686c",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 307.2,
				name = "MT Aurora Melee TopMost",
				timelineIndex = 72,
				timerOffset = 0.5,
				uuid = "ff31103e-3f83-bb3b-9c5d-ed8913b86308",
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
									"97609366-c56c-8277-bf5e-248f6f9e668d",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumMouse",
							targetSubType = "Bottom-most Partylist",
							targetType = "Melee DPS",
							uuid = "bb0eee86-150d-dc45-8d2e-c85027da8531",
							variableIsHover = true,
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "97609366-c56c-8277-bf5e-248f6f9e668d",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 307.2,
				name = "OT HoC BottomMelee",
				timelineIndex = 72,
				timerOffset = -3.5,
				uuid = "9567e020-c31b-c43b-8efb-947fa199e621",
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
									"6b876b04-95f6-7ed0-aad7-3fe08e078fd3",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Aurora",
							targetSubType = "Bottom-most Partylist",
							targetType = "Melee DPS",
							uuid = "ec0d36d7-be13-4359-bc57-5ed80fd84f5b",
							variableIsHover = true,
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "6b876b04-95f6-7ed0-aad7-3fe08e078fd3",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 307.2,
				name = "OT Aurora BottomMelee",
				timelineIndex = 72,
				timerOffset = 1,
				uuid = "229e453c-c036-f723-9bb6-cc451702a169",
				version = 2,
			},
		},
	},
	[76] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "389645fa-c03f-b9a6-304f-d798f8e1eaaa",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
									"16fe5984-aff9-be6d-bb9b-398b6453a73e",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumMouse",
							targetSubType = "Topmost Partylist",
							targetType = "Melee DPS",
							uuid = "2717ff62-11a8-8b8f-932c-8f0530b72c1e",
							variableIsHover = true,
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "16fe5984-aff9-be6d-bb9b-398b6453a73e",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 317.1,
				name = "MT HoC Melee TopMost",
				timelineIndex = 76,
				timerOffset = -3.5,
				uuid = "4b4ff844-7a31-aaab-87a2-ef41cfd560a9",
				version = 2,
			},
			inheritedIndex = 3,
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
									"6b38983a-9401-24bd-9f2e-a32fc132932d",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							uuid = "15db5b59-562c-f754-8a6a-c5438e660ab5",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "6b38983a-9401-24bd-9f2e-a32fc132932d",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 317.1,
				name = "MT Camo",
				timelineIndex = 76,
				timerOffset = -19,
				uuid = "93a165b1-f41f-748d-a862-a11a55851654",
				version = 2,
			},
			inheritedIndex = 4,
		},
	},
	[77] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "1aa44149-62d6-3a75-ae5b-ad2791370179",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
									"16fff488-9abe-89dc-bdc5-478cb69448bb",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Rampart",
							uuid = "dfa7a31f-b43b-baad-b856-ddb8d1e7a365",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "16fff488-9abe-89dc-bdc5-478cb69448bb",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 322.5,
				name = "OT Rampart",
				timelineIndex = 77,
				timerOffset = -19.5,
				uuid = "6897c3b9-70e9-107f-94b2-f510cc43ebba",
				version = 2,
			},
			inheritedIndex = 7,
		},
	},
	[80] = 
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
							conditions = 
							{
								
								{
									"b5cc461e-a8d8-052a-8b50-2eeedf181cb0",
									true,
								},
								
								{
									"b96d9dfe-cc4a-10c0-a306-17bf1b917d81",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "800648e6-c77b-9721-8ae9-b8d00600f995",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "b5cc461e-a8d8-052a-8b50-2eeedf181cb0",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							partyTargetSubType = "Furthest",
							uuid = "b96d9dfe-cc4a-10c0-a306-17bf1b917d81",
							version = 3,
						},
					},
				},
				mechanicTime = 331.8,
				name = "MT HoL",
				timelineIndex = 80,
				timerOffset = -14,
				uuid = "162dac18-cc44-7429-a3d2-83d462387a3f",
				version = 2,
			},
			inheritedIndex = 1,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "1e4438af-bbd4-5a9b-784e-60f50d0ff65f",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
							gVar = "ACR_RikuGNB3_Tankbar_Nebula",
							uuid = "81e2b132-f94c-53c2-a56b-1bedd82c24a2",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 331.8,
				name = "Nebula",
				timelineIndex = 80,
				timerOffset = -3.5,
				uuid = "2f3dcfc8-8166-1382-a550-49324f33aba7",
				version = 2,
			},
			inheritedIndex = 3,
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
									"21a28755-b579-1313-9402-7a418e1bb873",
									true,
								},
								
								{
									"75928e7c-7877-81a1-be0a-54f8ee9a0162",
									true,
								},
								
								{
									"51e73290-a6cd-10c1-b28e-78a00a3970e4",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "9ea153ec-7121-2d08-b671-a70696f4b170",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "21a28755-b579-1313-9402-7a418e1bb873",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1193,
							dequeueIfLuaFalse = true,
							name = "Reprisal Check",
							partyTargetSubType = 1,
							uuid = "75928e7c-7877-81a1-be0a-54f8ee9a0162",
							version = 3,
						},
					},
					
					{
						data = 
						{
							comparator = 2,
							conditionType = 6,
							dequeueIfLuaFalse = true,
							inRangeValue = 5,
							name = "Range Check",
							uuid = "51e73290-a6cd-10c1-b28e-78a00a3970e4",
							version = 3,
						},
					},
				},
				mechanicTime = 331.8,
				name = "MT Reprisal",
				timelineIndex = 80,
				timerOffset = -12,
				uuid = "2dc3e8a2-863c-a6a9-ac08-4899c5ede041",
				version = 2,
			},
		},
	},
	[81] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "8ff7b6a0-4047-054c-d5b7-e026abfdef10",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[85] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "31b1db4c-9e8c-e0a0-efd1-57424cef3fbc",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[88] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "f933c817-5664-4cc3-ceb9-4cfd9a880707",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
							actionID = 3,
							gVar = "ACR_RikuGNB3_Hotbar_Sprint",
							ignoreWeaveRules = true,
							uuid = "d0041a4a-0112-1e91-ba84-37571210c681",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 348.7,
				name = "Sprint",
				timelineIndex = 88,
				timerOffset = -11,
				uuid = "08c06662-cc79-9390-8a69-4e66242aa97e",
				version = 2,
			},
			inheritedIndex = 7,
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 16160,
							conditions = 
							{
								
								{
									"b278dff5-8e52-a847-a8ff-4aa23021e48c",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							ignoreWeaveRules = true,
							uuid = "56e2b6ba-a1a6-b09d-88f0-e53a0175baea",
							variableTogglesType = 3,
							version = 2.1,
						},
						inheritedIndex = 1,
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "b278dff5-8e52-a847-a8ff-4aa23021e48c",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 348.7,
				name = "OT HoL",
				timelineIndex = 88,
				timerOffset = -14,
				uuid = "ab4eae9d-ca12-bb0e-960e-9ad38cd8ad9f",
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
							actionID = 25758,
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumMouse",
							ignoreWeaveRules = true,
							targetType = "Ranged DPS",
							uuid = "696fd49f-2323-f2af-bce7-29e11d610733",
							variableIsHover = true,
							variableTogglesType = 3,
							version = 2.1,
						},
						inheritedIndex = 1,
					},
				},
				conditions = 
				{
				},
				mechanicTime = 348.7,
				name = "HoC Ranged Nearest",
				timelineIndex = 88,
				timerOffset = -3.5,
				uuid = "a0238673-d3a9-c0f0-b8b0-446f2d321448",
				version = 2,
			},
		},
	},
	[89] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "eb245b88-9fd7-0c94-07f9-550e2e20a778",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[90] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "ece364b2-e9f6-430e-59ab-5090fae080a2",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
							actionID = 16151,
							gVar = "ACR_RikuGNB3_Tankbar_Aurora",
							ignoreWeaveRules = true,
							targetType = "Ranged DPS",
							uuid = "8849418e-2dea-f602-b864-d6757ca4ba2c",
							variableIsHover = true,
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 355,
				name = "Aurora Ranged Nearest",
				timelineIndex = 90,
				uuid = "821821c2-d9a4-7366-995f-504dbbe1684b",
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
				name = "FRU\\lpdu strats",
				uuid = "2469f7dc-90e1-4668-9cf4-747648dbc10c",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
							actionID = 16160,
							conditions = 
							{
								
								{
									"b278dff5-8e52-a847-a8ff-4aa23021e48c",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							ignoreWeaveRules = true,
							uuid = "56e2b6ba-a1a6-b09d-88f0-e53a0175baea",
							variableTogglesType = 3,
							version = 2.1,
						},
						inheritedIndex = 1,
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "b278dff5-8e52-a847-a8ff-4aa23021e48c",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 360.8,
				name = "OT HoL",
				timelineIndex = 92,
				timerOffset = -4,
				uuid = "059c52b1-4275-e8c1-8bf0-4be5b360f816",
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
				name = "FRU\\lpdu strats",
				uuid = "3d527deb-6998-dc77-7da2-aa057137b45b",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[95] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "78238825-20bc-c519-938e-06cb7d41f355",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
									"67614a0d-b5d5-35da-a5b1-31afe7622250",
									true,
								},
								
								{
									"cef6c1cd-3591-8178-983b-c0bb6690aa46",
									true,
								},
								
								{
									"400d6842-5f6e-a5e5-b7b5-0767e8ed70bc",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "7e974ba2-da6b-0522-b345-d35e8a23db05",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "67614a0d-b5d5-35da-a5b1-31afe7622250",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1193,
							dequeueIfLuaFalse = true,
							name = "Reprisal Check",
							partyTargetSubType = 1,
							uuid = "cef6c1cd-3591-8178-983b-c0bb6690aa46",
							version = 3,
						},
					},
					
					{
						data = 
						{
							comparator = 2,
							conditionType = 6,
							dequeueIfLuaFalse = true,
							inRangeValue = 5,
							name = "Range Check",
							uuid = "400d6842-5f6e-a5e5-b7b5-0767e8ed70bc",
							version = 3,
						},
					},
				},
				mechanicTime = 368.8,
				name = "OT Reprisal",
				timelineIndex = 95,
				timerOffset = -3.5,
				uuid = "260eb6b0-16e2-e180-9b04-b42e810c2601",
				version = 2,
			},
			inheritedIndex = 3,
		},
	},
	[99] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "d9b36349-5a4b-4ef5-4835-688750462379",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumLowest",
							uuid = "6878f7a3-2a77-8f4e-a97a-abb812c50c95",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 387.8,
				name = "HoC Lowest",
				timelineIndex = 99,
				timerOffset = -3.5,
				uuid = "412d1878-b220-3c34-8561-e075a38d37bf",
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
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "97e1628e-834c-3834-b065-029c6067911a",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 387.8,
				name = "Reprisal",
				timelineIndex = 99,
				timerOffset = -8,
				uuid = "4e1321c4-8859-69ed-b39c-28ac5f24a0f0",
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
							gVar = "ACR_RikuGNB3_HoldGauge",
							uuid = "6ff42b3b-c526-55d5-8cec-525509b9e578",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 387.8,
				name = "Hold Gauge",
				timelineIndex = 99,
				timerOffset = -15,
				uuid = "9833a080-a9a1-f437-8de1-adb087986613",
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
				name = "FRU\\lpdu strats",
				uuid = "ad11e182-b54a-3af6-6002-50c0c3dd9372",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
							gVar = "ACR_RikuGNB3_CD",
							ignoreWeaveRules = true,
							potType = 4,
							usePot = true,
							uuid = "74cfe2a8-2127-ef57-9fef-6be1a33bd303",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 418.8,
				name = "Pot",
				timelineIndex = 102,
				timerOffset = -3,
				uuid = "4e5ee004-8bf3-ed55-8559-dced37f9782d",
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
							gVar = "ACR_RikuGNB3_HoldGauge",
							gVarValue = 2,
							uuid = "0cb988b4-8602-152e-ac87-a4f3355ac5c2",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 418.8,
				name = "Hold Gauge OFF",
				timelineIndex = 102,
				uuid = "6acf51a6-cce9-227f-8095-e26c48365a17",
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
				name = "FRU\\lpdu strats",
				uuid = "0d0b95b4-f423-cf78-7a2e-54ce55e4b2e4",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
							actionID = 16142,
							conditions = 
							{
								
								{
									"abde3631-571d-ce36-9aea-06e66347a015",
									true,
								},
								
								{
									"4d1581ac-8fb2-b3df-935c-6dbb22995b29",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_CD",
							uuid = "2acb1ddf-eb58-e00f-9ee7-2df336f26a1e",
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "abde3631-571d-ce36-9aea-06e66347a015",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "4d1581ac-8fb2-b3df-935c-6dbb22995b29",
							version = 3,
						},
					},
				},
				mechanicTime = 431.1,
				name = "MT Stance ON",
				timelineIndex = 108,
				uuid = "aa8ea338-58f7-ce2b-816c-cd29739fe45b",
				version = 2,
			},
		},
	},
	[111] = 
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
							gVar = "ACR_RikuGNB3_Hotbar_Sprint",
							uuid = "d0041a4a-0112-1e91-ba84-37571210c681",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 435.1,
				name = "Sprint",
				timelineIndex = 111,
				timerOffset = -8,
				uuid = "1a4dd30e-bffe-2719-acda-1f358540d441",
				version = 2,
			},
			inheritedIndex = 1,
		},
	},
	[117] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "153761f0-943d-cfac-b1f6-42fe53980f60",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[119] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 16160,
							conditions = 
							{
								
								{
									"b278dff5-8e52-a847-a8ff-4aa23021e48c",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							ignoreWeaveRules = true,
							uuid = "56e2b6ba-a1a6-b09d-88f0-e53a0175baea",
							variableTogglesType = 3,
							version = 2.1,
						},
						inheritedIndex = 1,
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "b278dff5-8e52-a847-a8ff-4aa23021e48c",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 500,
				name = "OT HoL",
				timelineIndex = 119,
				timerOffset = -6,
				uuid = "93096530-b41e-fe73-a7b7-df2688966b2a",
				version = 2,
			},
			inheritedIndex = 1,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "627f33ba-204f-1b8e-80ab-c21c61a8ceaa",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
							actionID = 25758,
							conditions = 
							{
								
								{
									"60a5fd1a-0f98-dd24-89b3-8cc7121c7345",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumMouse",
							ignoreWeaveRules = true,
							targetSubType = "Lowest HP",
							targetType = "Party",
							uuid = "63d5ffff-18e1-33b1-a4b7-ab84d2613735",
							variableIsHover = true,
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "60a5fd1a-0f98-dd24-89b3-8cc7121c7345",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 500,
				name = "MT HoC Lowest",
				timelineIndex = 119,
				timerOffset = -3.5,
				uuid = "6d90482d-3e93-87fb-911b-1b270f7d121b",
				version = 2,
			},
		},
	},
	[120] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "5fafcffa-c494-19ce-d232-7ec8ce73d4ea",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
									"bab5ee75-6870-1df1-8426-06cd74db4447",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "89716ecf-4af5-246b-a088-b3c4b5850a05",
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
							category = "Lua",
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "bab5ee75-6870-1df1-8426-06cd74db4447",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 514,
				name = "MT Provoke",
				timelineIndex = 120,
				uuid = "592b3f86-6dd5-e383-9ab5-b5b8a54f7d81",
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
				name = "FRU\\lpdu strats",
				uuid = "41bdcb49-48e5-6bbd-72cb-b257dad972b9",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
							actionID = 16142,
							conditions = 
							{
								
								{
									"abde3631-571d-ce36-9aea-06e66347a015",
									true,
								},
								
								{
									"4d1581ac-8fb2-b3df-935c-6dbb22995b29",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_CD",
							uuid = "2acb1ddf-eb58-e00f-9ee7-2df336f26a1e",
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "abde3631-571d-ce36-9aea-06e66347a015",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "4d1581ac-8fb2-b3df-935c-6dbb22995b29",
							version = 3,
						},
					},
				},
				mechanicTime = 518.3,
				name = "MT Stance ON",
				timelineIndex = 121,
				uuid = "9e9ffc3a-dd57-8e6e-bd9b-0b84a631671c",
				version = 2,
			},
		},
	},
	[123] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "20a0d353-6737-f037-8401-3f5d67e6d3c3",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
							actionID = 16142,
							conditions = 
							{
								
								{
									"14385d62-f682-454c-910e-a054edb4069d",
									true,
								},
								
								{
									"dd92d010-b536-eae7-a30e-d746094b6691",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_CD",
							uuid = "44ec3077-78d6-2d67-8f1f-a0a55a6d3790",
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "14385d62-f682-454c-910e-a054edb4069d",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "dd92d010-b536-eae7-a30e-d746094b6691",
							version = 3,
						},
						inheritedIndex = 2,
					},
				},
				mechanicTime = 532.4,
				name = "OT Stance ON",
				timelineIndex = 123,
				uuid = "fc50eff2-8bce-6576-bba6-3e897d665b74",
				version = 2,
			},
			inheritedIndex = 10,
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
									"21a28755-b579-1313-9402-7a418e1bb873",
									true,
								},
								
								{
									"75928e7c-7877-81a1-be0a-54f8ee9a0162",
									true,
								},
								
								{
									"51e73290-a6cd-10c1-b28e-78a00a3970e4",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "9ea153ec-7121-2d08-b671-a70696f4b170",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "21a28755-b579-1313-9402-7a418e1bb873",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1193,
							dequeueIfLuaFalse = true,
							name = "Reprisal Check",
							partyTargetSubType = 1,
							uuid = "75928e7c-7877-81a1-be0a-54f8ee9a0162",
							version = 3,
						},
					},
					
					{
						data = 
						{
							comparator = 2,
							conditionType = 6,
							dequeueIfLuaFalse = true,
							inRangeValue = 5,
							name = "Range Check",
							uuid = "51e73290-a6cd-10c1-b28e-78a00a3970e4",
							version = 3,
						},
					},
				},
				mechanicTime = 532.4,
				name = "MT Reprisal",
				timelineIndex = 123,
				timerOffset = -14,
				uuid = "96db03c4-841e-10ce-98d0-d60014801283",
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
									"42d4aa6a-2952-f4a9-b217-a65f8edc7fa3",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumMouse",
							targetType = "Ranged Physical DPS",
							uuid = "21d40f04-ada1-c82c-9673-445c5a356a48",
							variableIsHover = true,
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "42d4aa6a-2952-f4a9-b217-a65f8edc7fa3",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				enabled = false,
				mechanicTime = 532.4,
				name = "MT HoC Phys",
				timelineIndex = 123,
				timerOffset = -3.5,
				uuid = "54431c22-e5e0-789b-a462-25471f7a9ff8",
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
									"f5b9f4b9-9fcf-2f1f-8e1f-2a91e30299e7",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_AuroraLowest",
							uuid = "4a2c8394-5bff-d9f3-ae6c-4dbdcd4cf3a7",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "f5b9f4b9-9fcf-2f1f-8e1f-2a91e30299e7",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 532.4,
				name = "MT Aurora Lowest",
				timelineIndex = 123,
				timerOffset = 0.5,
				uuid = "6d25f071-e102-c184-a183-750952ede08d",
				version = 2,
			},
		},
	},
	[125] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "935a696d-89ff-50d9-a05e-780382fa9e1d",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[126] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "53d48018-f951-c834-4b7b-f32a0b3c0c88",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
									"67614a0d-b5d5-35da-a5b1-31afe7622250",
									true,
								},
								
								{
									"cef6c1cd-3591-8178-983b-c0bb6690aa46",
									true,
								},
								
								{
									"400d6842-5f6e-a5e5-b7b5-0767e8ed70bc",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "7e974ba2-da6b-0522-b345-d35e8a23db05",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "67614a0d-b5d5-35da-a5b1-31afe7622250",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1193,
							dequeueIfLuaFalse = true,
							name = "Reprisal Check",
							partyTargetSubType = 1,
							uuid = "cef6c1cd-3591-8178-983b-c0bb6690aa46",
							version = 3,
						},
					},
					
					{
						data = 
						{
							comparator = 2,
							conditionType = 6,
							dequeueIfLuaFalse = true,
							inRangeValue = 5,
							name = "Range Check",
							uuid = "400d6842-5f6e-a5e5-b7b5-0767e8ed70bc",
							version = 3,
						},
					},
				},
				mechanicTime = 544.2,
				name = "OT Reprisal",
				timelineIndex = 126,
				timerOffset = -3,
				uuid = "2bab77f8-1e7a-eb40-ab43-0be4fb5ebe51",
				version = 2,
			},
			inheritedIndex = 3,
		},
	},
	[127] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "d1e055a7-bdbb-f8e3-e3d1-09f9194b7917",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[128] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "54edccb2-0c5a-36e6-3d6b-33e0e61d2fe2",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[130] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "613e3017-373a-dc5b-d55c-64cd12628d47",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[131] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "532ec388-0ede-e90c-c8e0-ea9e94aabcb8",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[132] = 
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
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumLowest",
							uuid = "2688506f-d4b5-fa32-ba18-ac7dd0fe4cf6",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 563.6,
				name = "HoC Lowest",
				timelineIndex = 132,
				timerOffset = -3.5,
				uuid = "2cf5767f-5ef0-3fcf-8753-6ead014e3880",
				version = 2,
			},
			inheritedIndex = 1,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "caed551d-3139-81f1-2e12-ed87bb4f4a8d",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[133] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "8c9414ae-c0e3-a8a2-c1ab-8df8670a925e",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[134] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "afd98ac3-459a-336f-91b7-a329ffc9bef3",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
							gVar = "ACR_RikuGNB3_Hotbar_Sprint",
							uuid = "d0041a4a-0112-1e91-ba84-37571210c681",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 569.3,
				name = "Sprint",
				timelineIndex = 134,
				timerOffset = -9,
				uuid = "65373136-9ef6-6f38-ac21-db9fb3c6a5e4",
				version = 2,
			},
			inheritedIndex = 7,
		},
	},
	[135] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "f94c4a94-6fe3-7560-710c-1bda43d39744",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[136] = 
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
							conditions = 
							{
								
								{
									"67614a0d-b5d5-35da-a5b1-31afe7622250",
									true,
								},
								
								{
									"cef6c1cd-3591-8178-983b-c0bb6690aa46",
									true,
								},
								
								{
									"400d6842-5f6e-a5e5-b7b5-0767e8ed70bc",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "7e974ba2-da6b-0522-b345-d35e8a23db05",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "67614a0d-b5d5-35da-a5b1-31afe7622250",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1193,
							dequeueIfLuaFalse = true,
							name = "Reprisal Check",
							partyTargetSubType = 1,
							uuid = "cef6c1cd-3591-8178-983b-c0bb6690aa46",
							version = 3,
						},
					},
					
					{
						data = 
						{
							comparator = 2,
							conditionType = 6,
							dequeueIfLuaFalse = true,
							inRangeValue = 5,
							name = "Range Check",
							uuid = "400d6842-5f6e-a5e5-b7b5-0767e8ed70bc",
							version = 3,
						},
					},
				},
				mechanicTime = 574.9,
				name = "OT Reprisal",
				timelineIndex = 136,
				timerOffset = -14,
				uuid = "d2c20782-7c4a-b4a5-9ab4-c6693c794ec9",
				version = 2,
			},
			inheritedIndex = 1,
		},
	},
	[137] = 
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
							conditions = 
							{
								
								{
									"b5cc461e-a8d8-052a-8b50-2eeedf181cb0",
									true,
								},
								
								{
									"b96d9dfe-cc4a-10c0-a306-17bf1b917d81",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "800648e6-c77b-9721-8ae9-b8d00600f995",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "b5cc461e-a8d8-052a-8b50-2eeedf181cb0",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							partyTargetSubType = "Furthest",
							uuid = "b96d9dfe-cc4a-10c0-a306-17bf1b917d81",
							version = 3,
						},
					},
				},
				mechanicTime = 574.9,
				name = "MT HoL",
				timelineIndex = 137,
				timerOffset = -14,
				uuid = "4ef99949-81d9-fded-b710-1a7eafccc241",
				version = 2,
			},
			inheritedIndex = 1,
		},
	},
	[138] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "864ea0af-d2d6-b983-6380-2f054e0b679f",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
									"130c04cc-0218-12cc-9cdf-f091cce92f14",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumMouse",
							targetSubType = "Lowest HP",
							targetType = "Healer",
							uuid = "e737dd2b-8bf5-ac19-8bb8-7a749fa89bcf",
							variableIsHover = true,
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "130c04cc-0218-12cc-9cdf-f091cce92f14",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				enabled = false,
				mechanicTime = 578.6,
				name = "MT HOC HealerTop",
				timelineIndex = 138,
				timerOffset = -3.5,
				uuid = "97158369-5a96-a094-afe9-cd79e50fa59a",
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
									"2a39ddb1-7074-9b08-9900-732810c284e6",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumMouse",
							targetSubType = "Lowest HP",
							targetType = "Healer",
							uuid = "9b548222-e4a9-63d1-9591-d43a8408f1c7",
							variableIsHover = true,
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "2a39ddb1-7074-9b08-9900-732810c284e6",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 578.6,
				name = "MT HoC Healer Lowest HP",
				timelineIndex = 138,
				timerOffset = -3.5,
				uuid = "686e06e1-9444-b827-9420-6a361f454c8a",
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
				name = "FRU\\lpdu strats",
				uuid = "f8021ea0-9d63-eb54-82d1-f976f4137150",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
									"098a1b47-ab68-a994-9907-a3a64a597232",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumMouse",
							targetSubType = "Lowest HP",
							targetType = "Healer",
							uuid = "047b560d-bf97-dbc5-9903-be97e74b9a27",
							variableIsHover = true,
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "098a1b47-ab68-a994-9907-a3a64a597232",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 587.1,
				name = "MT Aurora Healer",
				timelineIndex = 139,
				timerOffset = -22,
				uuid = "015cd1bd-4452-01ac-b263-6d6c619c07a5",
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
									"b278dff5-8e52-a847-a8ff-4aa23021e48c",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "56e2b6ba-a1a6-b09d-88f0-e53a0175baea",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "b278dff5-8e52-a847-a8ff-4aa23021e48c",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 587.1,
				name = "OT HoL",
				timelineIndex = 139,
				timerOffset = -14,
				uuid = "71b14c0d-8da9-5493-9aea-b45ec3301e02",
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
									"21a28755-b579-1313-9402-7a418e1bb873",
									true,
								},
								
								{
									"75928e7c-7877-81a1-be0a-54f8ee9a0162",
									true,
								},
								
								{
									"51e73290-a6cd-10c1-b28e-78a00a3970e4",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "9ea153ec-7121-2d08-b671-a70696f4b170",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "21a28755-b579-1313-9402-7a418e1bb873",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1193,
							dequeueIfLuaFalse = true,
							name = "Reprisal Check",
							partyTargetSubType = 1,
							uuid = "75928e7c-7877-81a1-be0a-54f8ee9a0162",
							version = 3,
						},
					},
					
					{
						data = 
						{
							comparator = 2,
							conditionType = 6,
							dequeueIfLuaFalse = true,
							inRangeValue = 5,
							name = "Range Check",
							uuid = "51e73290-a6cd-10c1-b28e-78a00a3970e4",
							version = 3,
						},
					},
				},
				mechanicTime = 587.1,
				name = "MT Reprisal",
				timelineIndex = 139,
				timerOffset = -10,
				uuid = "faa66912-3029-20f9-8067-ddcdc6b7447a",
				version = 2,
			},
		},
	},
	[140] = 
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
							conditions = 
							{
								
								{
									"1b7dfd50-8fd1-3ca3-8aa7-611d6c72ea3e",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Rampart",
							uuid = "f693d3f8-1915-5256-9d22-2289268f6be1",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "1b7dfd50-8fd1-3ca3-8aa7-611d6c72ea3e",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 595.4,
				name = "MT Rampart",
				timelineIndex = 140,
				timerOffset = -15,
				uuid = "fde235c9-17e4-2be7-83d4-cddcce456054",
				version = 2,
			},
			inheritedIndex = 1,
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
									"21a28755-b579-1313-9402-7a418e1bb873",
									true,
								},
								
								{
									"75928e7c-7877-81a1-be0a-54f8ee9a0162",
									true,
								},
								
								{
									"51e73290-a6cd-10c1-b28e-78a00a3970e4",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "9ea153ec-7121-2d08-b671-a70696f4b170",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "21a28755-b579-1313-9402-7a418e1bb873",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1193,
							dequeueIfLuaFalse = true,
							name = "Reprisal Check",
							partyTargetSubType = 1,
							uuid = "75928e7c-7877-81a1-be0a-54f8ee9a0162",
							version = 3,
						},
					},
					
					{
						data = 
						{
							comparator = 2,
							conditionType = 6,
							dequeueIfLuaFalse = true,
							inRangeValue = 5,
							name = "Range Check",
							uuid = "51e73290-a6cd-10c1-b28e-78a00a3970e4",
							version = 3,
						},
					},
				},
				mechanicTime = 595.4,
				name = "MT Reprisal",
				timelineIndex = 140,
				timerOffset = -14,
				uuid = "af2fbb3a-c37e-7282-80e2-3da0b337d5a4",
				version = 2,
			},
			inheritedIndex = 2,
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
									"6b38983a-9401-24bd-9f2e-a32fc132932d",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							uuid = "15db5b59-562c-f754-8a6a-c5438e660ab5",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "6b38983a-9401-24bd-9f2e-a32fc132932d",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 595.4,
				name = "MT Camo",
				timelineIndex = 140,
				timerOffset = -13,
				uuid = "b66e0736-5747-1334-9d5c-e66a51427349",
				version = 2,
			},
			inheritedIndex = 3,
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
									"5cbd772f-a061-78ad-92f1-16a49c0a2c12",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Nebula",
							uuid = "ecd117f4-d628-0e2b-bb57-2a94a7862d6e",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "5cbd772f-a061-78ad-92f1-16a49c0a2c12",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 595.4,
				name = "MT Nebula",
				timelineIndex = 140,
				timerOffset = -6,
				uuid = "94a6e788-ac83-fef9-bb27-512e8eb16c78",
				version = 2,
			},
			inheritedIndex = 4,
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
							gVar = "ACR_RikuGNB3_Hotbar_Sprint",
							uuid = "d0041a4a-0112-1e91-ba84-37571210c681",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 595.4,
				name = "Sprint",
				timelineIndex = 140,
				timerOffset = -8,
				uuid = "43b8af45-1887-0399-87fe-3fde1efa4ca6",
				version = 2,
			},
			inheritedIndex = 5,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "f2e16fe8-cda4-f994-5093-acda2c5a3818",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
									"16ab8144-84aa-e72b-8118-d79cdb0ac53d",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "2450b0be-8075-e5ed-b567-c173622f501e",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "16ab8144-84aa-e72b-8118-d79cdb0ac53d",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 595.4,
				name = "MT HoC Self",
				timelineIndex = 140,
				timerOffset = -3.5999999046326,
				uuid = "aea38c51-a4f6-d29a-a003-716e18753c6b",
				version = 2,
			},
			inheritedIndex = 7,
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
									"1d2da817-26a6-5992-9f64-141b1b4b1a53",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumOT",
							uuid = "93bfbe50-aacd-61b6-9c0b-46635b0d513b",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "1d2da817-26a6-5992-9f64-141b1b4b1a53",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 595.4,
				name = "OT HOC OT",
				timelineIndex = 140,
				timerOffset = -3.5999999046326,
				uuid = "ab23a142-fff6-4cd5-927e-a9662b6e6f3a",
				version = 2,
			},
			inheritedIndex = 8,
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
									"d8ac13f3-2cae-9e7f-bf92-68e996c25967",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_AuroraSelf",
							uuid = "d36b134a-97d0-9328-8be3-48239b3b0e35",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "d8ac13f3-2cae-9e7f-bf92-68e996c25967",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 595.4,
				name = "MT Aurora Self",
				timelineIndex = 140,
				timerOffset = -10,
				uuid = "a7266eb7-f702-2d93-a558-c8fec2ed935c",
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
							actionID = 16142,
							conditions = 
							{
								
								{
									"bb2d4f6f-b85c-d30d-8054-8d923c6538a1",
									true,
								},
								
								{
									"ef18a5b1-9d14-7e95-a9ad-add4dfcb2e2a",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_CD",
							uuid = "c1ff8393-043d-0f87-8e46-72497f585f1f",
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "bb2d4f6f-b85c-d30d-8054-8d923c6538a1",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffID = 1833,
							category = "Self",
							uuid = "ef18a5b1-9d14-7e95-a9ad-add4dfcb2e2a",
							version = 3,
						},
						inheritedIndex = 2,
					},
				},
				mechanicTime = 595.4,
				name = "OT Stance OFF",
				timelineIndex = 140,
				uuid = "1b43e9c6-b6dc-b423-aeb6-82a1ad03c900",
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
				name = "FRU\\lpdu strats",
				uuid = "cb9905f7-8432-39c3-713f-3429aa660da7",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[142] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "4bf66c8e-eabf-3aea-44c9-0284094183be",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[144] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "b46c79f4-2787-7288-a868-7b9e6c8d0a24",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[145] = 
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
							conditions = 
							{
								
								{
									"42d4aa6a-2952-f4a9-b217-a65f8edc7fa3",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumMouse",
							targetType = "Ranged Physical DPS",
							uuid = "21d40f04-ada1-c82c-9673-445c5a356a48",
							variableIsHover = true,
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "42d4aa6a-2952-f4a9-b217-a65f8edc7fa3",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 623,
				name = "MT HoC Phys",
				timelineIndex = 145,
				timerOffset = -19,
				uuid = "78983555-91b3-7ff8-9674-a81e462adca8",
				version = 2,
			},
		},
	},
	[146] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "4757fdca-60ec-c3ae-a133-1ef8383587fa",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[148] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "d2fa0480-6e14-f24c-68b3-e012ac2d7c30",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[149] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "2ee5ea8f-e9a2-479b-0a83-dbe17148457f",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
							gVar = "ACR_RikuGNB3_Tankbar_Aurora",
							targetType = "Ranged Physical DPS",
							uuid = "0070aa8b-d1f2-08a8-b5ec-ef3af1059b2f",
							variableIsHover = true,
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "f5f4d2b4-a9bd-f901-959d-a1f0063e40ad",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 642.1,
				name = "MT Aurora Phys",
				timelineIndex = 149,
				timerOffset = -19,
				uuid = "34f4c6a2-8ed5-55a7-b174-e4ec25a55a5a",
				version = 2,
			},
		},
	},
	[150] = 
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
							conditions = 
							{
								
								{
									"437db45a-014f-50fb-99b7-5eedc4acb362",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Rampart",
							uuid = "f8e26157-382d-6f9d-a40a-e2510a85c668",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "437db45a-014f-50fb-99b7-5eedc4acb362",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 644.3,
				name = "OT Rampart",
				timelineIndex = 150,
				timerOffset = -18,
				uuid = "78cad833-d474-f433-aae2-769875bf3324",
				version = 2,
			},
			inheritedIndex = 1,
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
									"ea68f261-c958-d108-8dbf-960dedc1db29",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							uuid = "253c8369-0ef8-5e27-a057-74c7c60c759e",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "ea68f261-c958-d108-8dbf-960dedc1db29",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 644.3,
				name = "OT Camo",
				timelineIndex = 150,
				timerOffset = -16,
				uuid = "75ecc171-4b5b-257a-9af2-ab6bbddf503e",
				version = 2,
			},
			inheritedIndex = 2,
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
									"21a28755-b579-1313-9402-7a418e1bb873",
									true,
								},
								
								{
									"75928e7c-7877-81a1-be0a-54f8ee9a0162",
									true,
								},
								
								{
									"51e73290-a6cd-10c1-b28e-78a00a3970e4",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "9ea153ec-7121-2d08-b671-a70696f4b170",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "21a28755-b579-1313-9402-7a418e1bb873",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1193,
							dequeueIfLuaFalse = true,
							name = "Reprisal Check",
							partyTargetSubType = 1,
							uuid = "75928e7c-7877-81a1-be0a-54f8ee9a0162",
							version = 3,
						},
					},
					
					{
						data = 
						{
							comparator = 2,
							conditionType = 6,
							dequeueIfLuaFalse = true,
							inRangeValue = 5,
							name = "Range Check",
							uuid = "51e73290-a6cd-10c1-b28e-78a00a3970e4",
							version = 3,
						},
					},
				},
				mechanicTime = 644.3,
				name = "MT Reprisal",
				timelineIndex = 150,
				timerOffset = -14,
				uuid = "164b27f0-ff9f-2cc6-a1ba-8cc6564d2bc9",
				version = 2,
			},
			inheritedIndex = 3,
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
									"bcce59ea-bcf0-6280-a43f-699efd2b1478",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Nebula",
							uuid = "5fc4d285-2475-9624-997a-b5898437d2b3",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "bcce59ea-bcf0-6280-a43f-699efd2b1478",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 644.3,
				name = "OT Nebula",
				timelineIndex = 150,
				timerOffset = -12,
				uuid = "3e3a7742-6a14-5249-b5d4-28a258d1ca43",
				version = 2,
			},
			inheritedIndex = 4,
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
									"3ff12824-8eac-5f76-a926-814c308773b9",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_AuroraSelf",
							uuid = "b92b80bd-5419-a5e3-a707-d32f0e447fa2",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "3ff12824-8eac-5f76-a926-814c308773b9",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 644.3,
				name = "OT Aurora Self",
				timelineIndex = 150,
				timerOffset = -10,
				uuid = "ba13b446-f466-3f84-b666-89f9fbb35ae6",
				version = 2,
			},
			inheritedIndex = 5,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "b3d2d86d-30bf-5ae9-4d01-0477a3730d1d",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
							gVar = "ACR_RikuGNB3_Hotbar_Sprint",
							uuid = "d0041a4a-0112-1e91-ba84-37571210c681",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 644.3,
				name = "Sprint",
				timelineIndex = 150,
				timerOffset = -7,
				uuid = "775ea7a7-f734-9311-88be-f5550950a819",
				version = 2,
			},
			inheritedIndex = 9,
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
									"7aca749d-735f-8692-bf67-cc967118e83a",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "7588d011-28c3-d845-a9cd-783100b6f7c7",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "7aca749d-735f-8692-bf67-cc967118e83a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 644.3,
				name = "OT HoC Self",
				timelineIndex = 150,
				timerOffset = -3.5,
				uuid = "92ed7985-4262-400d-95a0-0a77908e09e9",
				version = 2,
			},
			inheritedIndex = 11,
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
									"0140f1eb-8661-bc8d-a910-679db6e6858d",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumOT",
							uuid = "f6c03193-c01e-a63e-b6e9-b4c05c037963",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "0140f1eb-8661-bc8d-a910-679db6e6858d",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 644.3,
				name = "MT HoC OT",
				timelineIndex = 150,
				timerOffset = -3.5,
				uuid = "de05f547-e720-8b64-b80e-9e68a7a20920",
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
				name = "FRU\\lpdu strats",
				uuid = "51343abe-ce83-a39a-7449-6e686519ccae",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[153] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "744cef18-601e-fd44-cd5e-6b0e2bb47b88",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
							actionID = 16142,
							conditions = 
							{
								
								{
									"abde3631-571d-ce36-9aea-06e66347a015",
									true,
								},
								
								{
									"4d1581ac-8fb2-b3df-935c-6dbb22995b29",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_CD",
							uuid = "2acb1ddf-eb58-e00f-9ee7-2df336f26a1e",
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "abde3631-571d-ce36-9aea-06e66347a015",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "4d1581ac-8fb2-b3df-935c-6dbb22995b29",
							version = 3,
						},
					},
				},
				mechanicTime = 656.4,
				name = "MT Stance ON",
				timelineIndex = 153,
				uuid = "5f5417a4-f82e-aafb-95cb-f2567738c3a6",
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
							actionID = 16142,
							conditions = 
							{
								
								{
									"bb2d4f6f-b85c-d30d-8054-8d923c6538a1",
									true,
								},
								
								{
									"ef18a5b1-9d14-7e95-a9ad-add4dfcb2e2a",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_CD",
							uuid = "c1ff8393-043d-0f87-8e46-72497f585f1f",
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "bb2d4f6f-b85c-d30d-8054-8d923c6538a1",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffID = 1833,
							category = "Self",
							uuid = "ef18a5b1-9d14-7e95-a9ad-add4dfcb2e2a",
							version = 3,
						},
						inheritedIndex = 2,
					},
				},
				mechanicTime = 656.4,
				name = "OT Stance OFF",
				timelineIndex = 153,
				uuid = "85288661-e1fb-f87e-b9a2-04b0eb76cc01",
				version = 2,
			},
		},
	},
	[154] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "62363a49-d79a-b08d-499d-6723fb51e1b9",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
									"b5cc461e-a8d8-052a-8b50-2eeedf181cb0",
									true,
								},
								
								{
									"b96d9dfe-cc4a-10c0-a306-17bf1b917d81",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "800648e6-c77b-9721-8ae9-b8d00600f995",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "b5cc461e-a8d8-052a-8b50-2eeedf181cb0",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							partyTargetSubType = "Furthest",
							uuid = "b96d9dfe-cc4a-10c0-a306-17bf1b917d81",
							version = 3,
						},
					},
				},
				mechanicTime = 670.1,
				name = "MT HoL",
				timelineIndex = 154,
				timerOffset = -15,
				uuid = "48c18be9-c523-0b96-bc52-6fdc147354e1",
				version = 2,
			},
			inheritedIndex = 2,
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
									"67614a0d-b5d5-35da-a5b1-31afe7622250",
									true,
								},
								
								{
									"cef6c1cd-3591-8178-983b-c0bb6690aa46",
									true,
								},
								
								{
									"400d6842-5f6e-a5e5-b7b5-0767e8ed70bc",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "7e974ba2-da6b-0522-b345-d35e8a23db05",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "67614a0d-b5d5-35da-a5b1-31afe7622250",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1193,
							dequeueIfLuaFalse = true,
							name = "Reprisal Check",
							partyTargetSubType = 1,
							uuid = "cef6c1cd-3591-8178-983b-c0bb6690aa46",
							version = 3,
						},
					},
					
					{
						data = 
						{
							comparator = 2,
							conditionType = 6,
							dequeueIfLuaFalse = true,
							inRangeValue = 5,
							name = "Range Check",
							uuid = "400d6842-5f6e-a5e5-b7b5-0767e8ed70bc",
							version = 3,
						},
					},
				},
				mechanicTime = 670.1,
				name = "OT Reprisal",
				timelineIndex = 154,
				timerOffset = -15,
				uuid = "d0057872-18e2-0976-a841-04b3e00434d2",
				version = 2,
			},
			inheritedIndex = 10,
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
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumLowest",
							uuid = "d78997c4-8666-e129-bb6b-1e4323acc4eb",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 670.1,
				name = "HoC Lowest",
				timelineIndex = 154,
				timerOffset = -3,
				uuid = "fcce2fec-8a33-b22f-90f3-a5522ae3ee47",
				version = 2,
			},
		},
	},
	[156] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "41194253-2ead-f347-0424-ed19885f42c3",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
									"bab5ee75-6870-1df1-8426-06cd74db4447",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "89716ecf-4af5-246b-a088-b3c4b5850a05",
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
							category = "Lua",
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "bab5ee75-6870-1df1-8426-06cd74db4447",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 705.3,
				name = "MT Provoke",
				timelineIndex = 156,
				uuid = "fb78f911-9e91-e7c4-b6ab-4f1ff4ed1178",
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
							gVar = "ACR_RikuGNB3_Tankbar_Nebula",
							uuid = "d7d9f8c9-6d98-d8f5-96da-5382d5843bc3",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 705.3,
				name = "Nebula",
				timelineIndex = 156,
				timerOffset = 2,
				uuid = "cd9e5b1b-8bbf-fdad-bb19-c0cafba9d9e6",
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
				name = "FRU\\lpdu strats",
				uuid = "b47fc124-b0f6-22b8-c8bf-fc4ad1d20294",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[158] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 16142,
							conditions = 
							{
								
								{
									"14385d62-f682-454c-910e-a054edb4069d",
									true,
								},
								
								{
									"dd92d010-b536-eae7-a30e-d746094b6691",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_CD",
							uuid = "44ec3077-78d6-2d67-8f1f-a0a55a6d3790",
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "14385d62-f682-454c-910e-a054edb4069d",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "dd92d010-b536-eae7-a30e-d746094b6691",
							version = 3,
						},
						inheritedIndex = 2,
					},
				},
				mechanicTime = 724.1,
				name = "OT Stance ON",
				timelineIndex = 158,
				timerOffset = -3,
				uuid = "ad474c9d-7751-e1fa-84e2-068347290525",
				version = 2,
			},
			inheritedIndex = 1,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "00a65f25-38d7-4ca1-b04d-e90f30204095",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[159] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "72d53696-04ce-73d2-5462-0300b820f546",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[162] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Misc",
							gVar = "ACR_RikuGNB3_CD",
							setTarget = true,
							targetContentID = 9832,
							targetType = "ContentID",
							uuid = "0dbc9674-5f30-c72c-9164-b7392abd8fc1",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
				},
				conditions = 
				{
				},
				mechanicTime = 729.2,
				name = "Target Gaia",
				timelineIndex = 162,
				uuid = "e6229f48-94a2-eea0-8330-375e805227e4",
				version = 2,
			},
			inheritedIndex = 1,
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
									"70b68627-2732-05ae-b032-a06df1544e83",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_ProvokeMouse",
							targetContentID = 9832,
							targetType = "ContentID",
							uuid = "304fe319-c78d-3541-a08c-9dcdba8206a4",
							variableIsHover = true,
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
							category = "Lua",
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "70b68627-2732-05ae-b032-a06df1544e83",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 729.2,
				name = "OT Voke Gaia",
				randomOffset = 8,
				timeRange = true,
				timelineIndex = 162,
				timerEndOffset = 8,
				timerOffset = -5,
				timerStartOffset = -5,
				uuid = "69bf6402-9009-a675-9f5d-01028851669e",
				version = 2,
			},
			inheritedIndex = 2,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "9b8ac660-73c5-60ac-b802-d0e255b5b110",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
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
							actionID = 16142,
							conditions = 
							{
								
								{
									"14385d62-f682-454c-910e-a054edb4069d",
									true,
								},
								
								{
									"dd92d010-b536-eae7-a30e-d746094b6691",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_CD",
							uuid = "44ec3077-78d6-2d67-8f1f-a0a55a6d3790",
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "14385d62-f682-454c-910e-a054edb4069d",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "dd92d010-b536-eae7-a30e-d746094b6691",
							version = 3,
						},
						inheritedIndex = 2,
					},
				},
				mechanicTime = 738.2,
				name = "OT Stance ON",
				timelineIndex = 166,
				uuid = "48b92a4f-1b4e-a144-ad5c-8e669b2d14c3",
				version = 2,
			},
			inheritedIndex = 1,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "3a863a0c-86da-4480-698e-2746f6a701bc",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
									"d8ac13f3-2cae-9e7f-bf92-68e996c25967",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_AuroraSelf",
							uuid = "d36b134a-97d0-9328-8be3-48239b3b0e35",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "d8ac13f3-2cae-9e7f-bf92-68e996c25967",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 738.2,
				name = "MT Aurora Self",
				timelineIndex = 166,
				timerOffset = -24,
				uuid = "d37ea14c-25fb-bb00-a2fc-cc634aeca3c3",
				version = 2,
			},
			inheritedIndex = 6,
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local player = TensorCore.mGetPlayer()\n--data.tetheredHealer = nil --idk if needed, keeping just in case smile\nlocal entityList = TensorCore.entityList(\"type=1\")\n\n-- First verify we have a valid tether\ndata.playerTethers = Argus.getTethersOnEnt(player.id)\nif not table.valid(data.playerTethers) then \n    self.used = true\n    return\nend\n\n-- find healer that has tether\nfor _, entity in pairs(entityList) do\n    if AnyoneCore.healJobs[entity.job] then\n        data.healerTethers = Argus.getTethersOnEnt(entity.id)\n        if table.valid(data.healerTethers) then\n            for _, tether in pairs(data.healerTethers) do\n                if tether.type == 110 then\n                    data.tetheredHealer = entity\n                    break\n                end\n            end\n        end\n    end\n    if data.tetheredHealer then break end\nend\nif not data.tetheredHealer then\n    self.used = true\n    return\nend\ndata.tetheredToHealer = false\nfor _, tether in pairs(data.playerTethers) do\n    if tether.type == 110 and tether.partnerid == data.tetheredHealer.id then\n        data.tetheredToHealer = true\n        break\n    end\nend\n\ndata.drawer = TensorCore.getStaticDrawer(1862270719)\ndata.center = {x = 100, y = 0, z = 100}\nif data.tetheredToHealer then\n    -- tethered to healer\n    data.drawer:addTimedArrow(5000, data.center.x, data.center.y, data.center.z, 0, 8, 1, nil, nil, nil, true)\n    AnyoneCore.Shotcall(\"South\", true, 5)\nelse\n    -- not tethered to healer\n    data.drawer:addTimedArrow(5000, data.center.x, data.center.y, data.center.z, math.pi, 8, 1, nil, nil, nil, true)\n    AnyoneCore.Shotcall(\"North\", true, 5)\nend\n\nself.used = true",
							conditions = 
							{
								
								{
									"115701fe-b4dd-27de-8f82-947571a53be0",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_CD",
							name = "mami darklit chain",
							uuid = "757febc6-cd72-815e-b179-62283ac55fa8",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Alert",
							alertTTS = true,
							alertText = "Adjust Water",
							conditions = 
							{
								
								{
									"115701fe-b4dd-27de-8f82-947571a53be0",
									true,
								},
								
								{
									"31030d1e-1911-e1f3-b544-fe256065d5aa",
									true,
								},
								
								{
									"9aaee956-a290-c45e-a9bf-afca55edfceb",
									false,
								},
							},
							gVar = "ACR_TensorMagnum3_CD",
							uuid = "0dcf64f5-7bdf-a067-89c7-0ea554d9c181",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							buffID = 2253,
							category = "Party",
							name = "4 chains",
							partyTargetNumber = 4,
							partyTargetSubType = "Number",
							uuid = "115701fe-b4dd-27de-8f82-947571a53be0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2461,
							category = "Self",
							name = "have water",
							uuid = "31030d1e-1911-e1f3-b544-fe256065d5aa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2253,
							category = "Self",
							name = "have chain",
							uuid = "9aaee956-a290-c45e-a9bf-afca55edfceb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local player = TensorCore.mGetPlayer()\nlocal myBuff = TensorCore.getBuff(player, 2461)\nlocal myZ = player.pos.z\n\nif not myBuff then\n    return false\nend\n\n-- Find the other player who shares buff 2461\nlocal hasMatchingBuff = false\nlocal otherZ = nil\nlocal partyList = TensorCore.entityList(\"party\")\n\nfor _,member in pairs(partyList) do\n    if member.id ~= player.id then\n        local theirBuff1 = TensorCore.getBuff(member, 2461)\n        local theirBuff2 = TensorCore.getBuff(member, 2253)\n        \n        if theirBuff1 and theirBuff2 then\n            hasMatchingBuff = true\n            otherZ = member.pos.z\n            break\n        end\n    end\nend\n\nif not hasMatchingBuff or not otherZ then\n    return false\nend\n\n-- Check if we're on the same side of z=100\nlocal myAbove = (myZ > 100)\nlocal otherAbove = (otherZ > 100)\n\n-- Return true if we're on the same side (both above or both below)\nreturn myAbove == otherAbove",
							name = "same side",
							uuid = "f0f761df-a61a-216a-bac1-ad4713d6c6f2",
							version = 3,
						},
					},
				},
				mechanicTime = 738.2,
				name = "mechanic| darklit lpdu (mami)",
				timeRange = true,
				timelineIndex = 166,
				timerEndOffset = 10,
				uuid = "c6b2cb7f-70a9-4611-be80-f4b23c8df827",
				version = 2,
			},
		},
	},
	[167] = 
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
							conditions = 
							{
								
								{
									"21a28755-b579-1313-9402-7a418e1bb873",
									true,
								},
								
								{
									"75928e7c-7877-81a1-be0a-54f8ee9a0162",
									true,
								},
								
								{
									"51e73290-a6cd-10c1-b28e-78a00a3970e4",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "9ea153ec-7121-2d08-b671-a70696f4b170",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "21a28755-b579-1313-9402-7a418e1bb873",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1193,
							dequeueIfLuaFalse = true,
							name = "Reprisal Check",
							partyTargetSubType = 1,
							uuid = "75928e7c-7877-81a1-be0a-54f8ee9a0162",
							version = 3,
						},
					},
					
					{
						data = 
						{
							comparator = 2,
							conditionType = 6,
							dequeueIfLuaFalse = true,
							inRangeValue = 5,
							name = "Range Check",
							uuid = "51e73290-a6cd-10c1-b28e-78a00a3970e4",
							version = 3,
						},
					},
				},
				mechanicTime = 749.3,
				name = "MT Reprisal",
				timelineIndex = 167,
				timerOffset = -15,
				uuid = "f2f65a07-6caa-9eb0-bcc7-539e8210c8dd",
				version = 2,
			},
			inheritedIndex = 1,
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
									"b278dff5-8e52-a847-a8ff-4aa23021e48c",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "56e2b6ba-a1a6-b09d-88f0-e53a0175baea",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "b278dff5-8e52-a847-a8ff-4aa23021e48c",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 749.3,
				name = "OT HoL",
				timelineIndex = 167,
				timerOffset = -15,
				uuid = "1dc09e50-8b68-2a60-bf7c-9c314b8cadba",
				version = 2,
			},
			inheritedIndex = 2,
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
									"695bb711-4b29-c93e-b171-26ac3338929d",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_ShirkOT",
							uuid = "0ad414fb-c171-b824-8c3d-8653eaaf4f9e",
							variableTogglesType = 2,
							version = 2.1,
						},
						inheritedIndex = 1,
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "695bb711-4b29-c93e-b171-26ac3338929d",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 749.3,
				name = "MT Shirk",
				timelineIndex = 167,
				timerOffset = -2,
				uuid = "bcf742ec-c1f4-8d5c-bce9-fc1823885503",
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
									"f0e58de1-a152-d848-9251-7bff5e1b3cc8",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_CD",
							setTarget = true,
							targetContentID = 12809,
							targetType = "ContentID",
							uuid = "0bbbcc51-8cd0-2af5-be13-cc85ae704aee",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "f0e58de1-a152-d848-9251-7bff5e1b3cc8",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 749.3,
				name = "MT Target Shiva",
				timelineIndex = 167,
				uuid = "042700ad-9b73-1f64-a905-cfe6fd8057a0",
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
									"c4b250b5-4027-0426-9df0-4cda2558c9dd",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_ProvokeMouse",
							targetContentID = 12809,
							targetType = "ContentID",
							uuid = "7967eee3-2ce2-1ab3-ab06-4961185253b4",
							variableIsHover = true,
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
							category = "Lua",
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "c4b250b5-4027-0426-9df0-4cda2558c9dd",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 749.3,
				name = "MT Voke Shiva",
				timelineIndex = 167,
				timerOffset = 2,
				uuid = "dfde4e9e-5732-97b6-b111-d6778f328878",
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
									"a6265b7b-c045-d37a-a10d-33e58f34dbdb",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Sprint",
							uuid = "d0041a4a-0112-1e91-ba84-37571210c681",
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
							category = "Lua",
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "a6265b7b-c045-d37a-a10d-33e58f34dbdb",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 749.3,
				name = "Sprint",
				timelineIndex = 167,
				timerOffset = -10,
				uuid = "66742a13-738b-2428-8d0a-54dd14aa6e76",
				version = 2,
			},
			inheritedIndex = 6,
		},
	},
	[168] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "56fe426e-fb38-3dca-833f-3494df0dc61e",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[169] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "e220d1dd-369d-2e99-39cc-74c3eb89404d",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[170] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "16cca9b3-6d1b-3c7f-ee71-87a18042b1a3",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[171] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "c3610404-a800-7330-ba68-aed26c79c2f4",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[172] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "efd735a9-b486-9f25-a417-978b3aca3799",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[173] = 
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
							gVar = "ACR_RikuGNB3_Hotbar_Sprint",
							uuid = "3ae6d40d-e6ce-1ecd-9477-2842846ad086",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 763.9,
				name = "Sprint",
				timelineIndex = 173,
				timerOffset = -10,
				uuid = "68f0f94f-e38c-4fde-95af-c3e348d1fb01",
				version = 2,
			},
			inheritedIndex = 1,
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
									"e0a3c935-d306-f911-b33d-70b895794fd5",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Superbolide",
							uuid = "d2214e27-b530-3a2e-b251-34ce37cb8a5d",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "e0a3c935-d306-f911-b33d-70b895794fd5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 763.9,
				name = "MT Bolide",
				timelineIndex = 173,
				timerOffset = -8,
				uuid = "98be032a-965f-095c-a315-a9e4b8004812",
				version = 2,
			},
			inheritedIndex = 2,
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
									"162e64e2-3bf4-d23b-b7ad-20e48ed962a7",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_ProvokeMouse",
							targetContentID = 9832,
							targetType = "ContentID",
							uuid = "304fe319-c78d-3541-a08c-9dcdba8206a4",
							variableIsHover = true,
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
							category = "Lua",
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "162e64e2-3bf4-d23b-b7ad-20e48ed962a7",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 763.9,
				name = "OT Voke Gaia",
				timelineIndex = 173,
				uuid = "9547280c-e5b4-30c2-8bd8-9e4fb06b96c9",
				version = 2,
			},
			inheritedIndex = 3,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "cf2bae5a-26b5-7696-5bac-1ffcff6546ca",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[175] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "1fcb2078-60cd-0edc-3829-7a36aaeeb8e8",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
							gVar = "ACR_RikuGNB3_Tankbar_Rampart",
							uuid = "5b7223de-6513-e602-97f8-347b7d3c87a0",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 773.5,
				name = "Rampart",
				timelineIndex = 175,
				timerOffset = -15,
				uuid = "6252d560-d5f6-1c2f-bb63-6be8f25d2ce3",
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
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							uuid = "13ede58b-67d3-dc60-8361-8c71e244833b",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 773.5,
				name = "Camo",
				timelineIndex = 175,
				timerOffset = -13,
				uuid = "00dc933f-fc44-2b0a-ab07-b0b047b35620",
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
							gVar = "ACR_RikuGNB3_Tankbar_AuroraSelf",
							uuid = "b4b737bf-853d-bc8a-9052-abcbc7f63c61",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 773.5,
				name = "Aurora Self",
				timelineIndex = 175,
				timerOffset = -10,
				uuid = "0b85009b-d5d2-b462-b83a-ed90efad97b4",
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
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "a6e302b9-a0d0-8380-b398-c155f719065d",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 773.5,
				name = "HoC Self",
				timelineIndex = 175,
				timerOffset = -1.5,
				uuid = "9ed72ff4-e14e-630b-9414-5b7ba6e757ab",
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
				name = "FRU\\lpdu strats",
				uuid = "337bf74d-92ea-ec01-1ff1-089fcac3ad7d",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
									"b5cc461e-a8d8-052a-8b50-2eeedf181cb0",
									true,
								},
								
								{
									"b96d9dfe-cc4a-10c0-a306-17bf1b917d81",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "800648e6-c77b-9721-8ae9-b8d00600f995",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "b5cc461e-a8d8-052a-8b50-2eeedf181cb0",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							partyTargetSubType = "Furthest",
							uuid = "b96d9dfe-cc4a-10c0-a306-17bf1b917d81",
							version = 3,
						},
					},
				},
				mechanicTime = 783.4,
				name = "MT HoL",
				timelineIndex = 176,
				timerOffset = -14,
				uuid = "4349bb77-f6c3-0ae2-a291-be178488b7f5",
				version = 2,
			},
			inheritedIndex = 2,
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
									"67614a0d-b5d5-35da-a5b1-31afe7622250",
									true,
								},
								
								{
									"cef6c1cd-3591-8178-983b-c0bb6690aa46",
									true,
								},
								
								{
									"400d6842-5f6e-a5e5-b7b5-0767e8ed70bc",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "7e974ba2-da6b-0522-b345-d35e8a23db05",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "67614a0d-b5d5-35da-a5b1-31afe7622250",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1193,
							dequeueIfLuaFalse = true,
							name = "Reprisal Check",
							partyTargetSubType = 1,
							uuid = "cef6c1cd-3591-8178-983b-c0bb6690aa46",
							version = 3,
						},
					},
					
					{
						data = 
						{
							comparator = 2,
							conditionType = 6,
							dequeueIfLuaFalse = true,
							inRangeValue = 5,
							name = "Range Check",
							uuid = "400d6842-5f6e-a5e5-b7b5-0767e8ed70bc",
							version = 3,
						},
					},
				},
				mechanicTime = 783.4,
				name = "OT Reprisal",
				timelineIndex = 176,
				timerOffset = -14,
				uuid = "e26e12cc-5b9a-3ba7-987c-3b3a3734df1a",
				version = 2,
			},
			inheritedIndex = 5,
		},
	},
	[179] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "3e99b8bc-282d-2f18-841d-de9a77f269ac",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
									"c289d9d1-e0aa-b155-a9aa-5124d79b0891",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_ProvokeMouse",
							targetContentID = 9832,
							targetType = "ContentID",
							uuid = "304fe319-c78d-3541-a08c-9dcdba8206a4",
							variableIsHover = true,
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
							category = "Lua",
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "c289d9d1-e0aa-b155-a9aa-5124d79b0891",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 798.9,
				name = "OT Voke Gaia",
				timelineIndex = 179,
				timerOffset = -5,
				uuid = "ce76e645-abfa-9baf-886d-7ee7f1ff092a",
				version = 2,
			},
			inheritedIndex = 2,
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
									"21a28755-b579-1313-9402-7a418e1bb873",
									true,
								},
								
								{
									"75928e7c-7877-81a1-be0a-54f8ee9a0162",
									true,
								},
								
								{
									"51e73290-a6cd-10c1-b28e-78a00a3970e4",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "9ea153ec-7121-2d08-b671-a70696f4b170",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "21a28755-b579-1313-9402-7a418e1bb873",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1193,
							dequeueIfLuaFalse = true,
							name = "Reprisal Check",
							partyTargetSubType = 1,
							uuid = "75928e7c-7877-81a1-be0a-54f8ee9a0162",
							version = 3,
						},
					},
					
					{
						data = 
						{
							comparator = 2,
							conditionType = 6,
							dequeueIfLuaFalse = true,
							inRangeValue = 5,
							name = "Range Check",
							uuid = "51e73290-a6cd-10c1-b28e-78a00a3970e4",
							version = 3,
						},
					},
				},
				mechanicTime = 798.9,
				name = "MT Reprisal",
				timelineIndex = 179,
				timerOffset = -5,
				uuid = "426b7a70-a8e1-3a00-9254-55f5399bae93",
				version = 2,
			},
			inheritedIndex = 4,
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
									"c4b250b5-4027-0426-9df0-4cda2558c9dd",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_ProvokeMouse",
							targetContentID = 12809,
							targetType = "ContentID",
							uuid = "7967eee3-2ce2-1ab3-ab06-4961185253b4",
							variableIsHover = true,
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
							category = "Lua",
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "c4b250b5-4027-0426-9df0-4cda2558c9dd",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 798.9,
				name = "MT Voke Shiva",
				timelineIndex = 179,
				timerOffset = -6,
				uuid = "c04741fb-5dd0-9040-bf23-17f1bd367675",
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
				name = "FRU\\lpdu strats",
				uuid = "d8d3db94-e7b2-8de8-0dfc-132e235b2844",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[181] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "8f611bc3-c06a-23f7-4c55-539ddf514ff3",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[182] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "f5ee1cea-40c7-8a8e-d496-c20891bfce9a",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[184] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "32b65488-a93d-97f4-97ce-8a6a74324db8",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[188] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "7943d44c-c7cb-2280-6103-3bc6694e0ffc",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[192] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "274406f3-e729-e2a7-83df-acd180f823e3",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
							gVar = "ACR_RikuGNB3_Hotbar_Sprint",
							uuid = "d0041a4a-0112-1e91-ba84-37571210c681",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 830.1,
				name = "Sprint",
				timelineIndex = 192,
				timerOffset = -10,
				uuid = "e8302a17-07dc-e51e-98f2-d691b024849d",
				version = 2,
			},
			inheritedIndex = 3,
		},
	},
	[194] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "e2c9928d-5707-5849-62f2-cccf0c2196bd",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[195] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "8e84da5e-74f9-5cfa-3f89-e1c087d044ce",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[198] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 25758,
							conditions = 
							{
								
								{
									"881e9bba-e371-1f19-b0e1-191dd6f618b4",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_CD",
							ignoreWeaveRules = true,
							uuid = "ba2d2d7b-38fa-addc-a07c-58b381d95fc2",
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "881e9bba-e371-1f19-b0e1-191dd6f618b4",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 845.7,
				name = "MT HoC Self Trio",
				timelineIndex = 198,
				timerOffset = -19,
				uuid = "cd0c11c6-df5c-b34b-96be-6628e672fd56",
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
							actionID = 16151,
							conditions = 
							{
								
								{
									"e4a15afb-7a00-fdfd-ad27-55afdf3e4bc9",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_CD",
							ignoreWeaveRules = true,
							uuid = "130dab2c-4587-ad46-bc36-4250d1a6a40e",
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "e4a15afb-7a00-fdfd-ad27-55afdf3e4bc9",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 845.7,
				name = "MT Aurora Self Trio",
				timelineIndex = 198,
				timerOffset = -17,
				uuid = "8bcad19e-da38-971f-a54f-c35a2bd7f7ab",
				version = 2,
			},
			inheritedIndex = 2,
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7531,
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							ignoreWeaveRules = true,
							uuid = "38bcf22b-e178-a4f0-a37a-0cd0b94ae58f",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 845.7,
				name = "Rampart Trio",
				timelineIndex = 198,
				timerOffset = -3,
				uuid = "8200b930-3f84-13e6-a5e1-276e3900e95c",
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
							actionID = 36935,
							gVar = "ACR_RikuGNB3_Tankbar_Nebula",
							ignoreWeaveRules = true,
							uuid = "2b9655d8-5324-7b26-adea-9c6929628a72",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 845.7,
				name = "Nebula Trio",
				timelineIndex = 198,
				timerOffset = -13,
				uuid = "fb48c10b-0a77-e6db-8ccb-140e392a95ae",
				version = 2,
			},
			inheritedIndex = 4,
		},
	},
	[201] = 
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
							conditions = 
							{
								
								{
									"c4b250b5-4027-0426-9df0-4cda2558c9dd",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_ProvokeMouse",
							targetContentID = 12809,
							targetType = "ContentID",
							uuid = "7967eee3-2ce2-1ab3-ab06-4961185253b4",
							variableIsHover = true,
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
							category = "Lua",
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "c4b250b5-4027-0426-9df0-4cda2558c9dd",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 850.2,
				name = "MT Voke Shiva",
				timelineIndex = 201,
				uuid = "8c07a405-8324-c961-8e5b-cf9e335551f7",
				version = 2,
			},
			inheritedIndex = 1,
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
									"9bd0340e-8a16-4191-80c7-6007e339047b",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_ProvokeMouse",
							targetContentID = 9832,
							targetType = "ContentID",
							uuid = "304fe319-c78d-3541-a08c-9dcdba8206a4",
							variableIsHover = true,
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
							category = "Lua",
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "9bd0340e-8a16-4191-80c7-6007e339047b",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 850.2,
				name = "OT Voke Gaia",
				timelineIndex = 201,
				uuid = "476a0849-2b70-4d84-9607-f3ff2bd806d2",
				version = 2,
			},
			inheritedIndex = 2,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "23c626da-ff56-3b8e-7c9b-393853ffbf4a",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[202] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "6b672233-7ef8-d4f7-a33f-c70dd4dd2a23",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							uuid = "13ede58b-67d3-dc60-8361-8c71e244833b",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 854.9,
				name = "Camo",
				timelineIndex = 202,
				timerOffset = -4,
				uuid = "f72a74a2-6f78-e8df-a492-ae12b363fb2e",
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
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "a6e302b9-a0d0-8380-b398-c155f719065d",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 854.9,
				name = "HoC Self",
				timelineIndex = 202,
				timerOffset = -1.5,
				uuid = "74e81664-19ad-0ad2-81b1-c28c051bb1f7",
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
							actionID = 7531,
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							ignoreWeaveRules = true,
							uuid = "7ac543ee-9f9d-3fb6-80a0-08278ba0fad9",
							variableTogglesType = 3,
							version = 2.1,
						},
						inheritedIndex = 1,
					},
				},
				conditions = 
				{
				},
				mechanicTime = 854.9,
				name = "Rampart Trio",
				timelineIndex = 202,
				timerOffset = -8,
				uuid = "bcf9cc8b-3302-c929-9dd6-2ee1fe50e3d5",
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
							actionID = 16151,
							gVar = "ACR_RikuGNB3_CD",
							ignoreWeaveRules = true,
							uuid = "40c8e3cf-b907-54c5-a8d3-6349481c55ed",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
				},
				conditions = 
				{
				},
				mechanicTime = 854.9,
				name = "Aurora Self Trio",
				timelineIndex = 202,
				timerOffset = -10,
				uuid = "d6a2a384-27af-2391-be0f-4dd14b27c74a",
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
				name = "FRU\\lpdu strats",
				uuid = "88166fcd-361c-bd99-e7ba-3b731f5e25fd",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
									"67614a0d-b5d5-35da-a5b1-31afe7622250",
									true,
								},
								
								{
									"cef6c1cd-3591-8178-983b-c0bb6690aa46",
									true,
								},
								
								{
									"400d6842-5f6e-a5e5-b7b5-0767e8ed70bc",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "7e974ba2-da6b-0522-b345-d35e8a23db05",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "67614a0d-b5d5-35da-a5b1-31afe7622250",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1193,
							dequeueIfLuaFalse = true,
							name = "Reprisal Check",
							partyTargetSubType = 1,
							uuid = "cef6c1cd-3591-8178-983b-c0bb6690aa46",
							version = 3,
						},
					},
					
					{
						data = 
						{
							comparator = 2,
							conditionType = 6,
							dequeueIfLuaFalse = true,
							inRangeValue = 5,
							name = "Range Check",
							uuid = "400d6842-5f6e-a5e5-b7b5-0767e8ed70bc",
							version = 3,
						},
					},
				},
				mechanicTime = 864.8,
				name = "OT Reprisal",
				timelineIndex = 204,
				timerOffset = -14,
				uuid = "5fc846b5-c505-6e42-8865-1374c2e16233",
				version = 2,
			},
			inheritedIndex = 4,
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
									"21a28755-b579-1313-9402-7a418e1bb873",
									true,
								},
								
								{
									"75928e7c-7877-81a1-be0a-54f8ee9a0162",
									true,
								},
								
								{
									"51e73290-a6cd-10c1-b28e-78a00a3970e4",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "9ea153ec-7121-2d08-b671-a70696f4b170",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "21a28755-b579-1313-9402-7a418e1bb873",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1193,
							dequeueIfLuaFalse = true,
							name = "Reprisal Check",
							partyTargetSubType = 1,
							uuid = "75928e7c-7877-81a1-be0a-54f8ee9a0162",
							version = 3,
						},
					},
					
					{
						data = 
						{
							comparator = 2,
							conditionType = 6,
							dequeueIfLuaFalse = true,
							inRangeValue = 5,
							name = "Range Check",
							uuid = "51e73290-a6cd-10c1-b28e-78a00a3970e4",
							version = 3,
						},
					},
				},
				mechanicTime = 864.8,
				name = "MT Reprisal",
				timelineIndex = 204,
				timerOffset = -14,
				uuid = "a42c31b8-df8b-8585-ac57-378cb3f3e1e4",
				version = 2,
			},
		},
	},
	[205] = 
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
							acrOptionType = "Hold Action",
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							holdActionDuration = 20,
							holdActionID = 16164,
							uuid = "8e8860a4-c957-9eea-b24b-b857ecf4ccc5",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 878.8,
				name = "Hold Bloodfest",
				timelineIndex = 205,
				timerOffset = -20,
				uuid = "4a54b5df-f89a-1c19-8f32-a78fa0e6b3e8",
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
							gVar = "ACR_RikuGNB3_HoldGauge",
							uuid = "e693c5bd-1588-1295-9af6-4e76edabfdd4",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 878.8,
				name = "Hold Gauge",
				timelineIndex = 205,
				timerOffset = -15,
				uuid = "9b538f1d-5bf3-9b2c-b2b1-c8d076898e67",
				version = 2,
			},
		},
	},
	[207] = 
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
							gVar = "ACR_RikuGNB3_HoldGauge",
							gVarValue = 2,
							uuid = "0cb988b4-8602-152e-ac87-a4f3355ac5c2",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 972.3,
				name = "Hold Gauge OFF",
				timelineIndex = 207,
				uuid = "ae20bc26-6aee-3eab-b7bd-45b8e344e7a9",
				version = 2,
			},
			inheritedIndex = 1,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "746598f8-67cc-48f4-9a28-ba1aff893168",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
									"bab5ee75-6870-1df1-8426-06cd74db4447",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "89716ecf-4af5-246b-a088-b3c4b5850a05",
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
							category = "Lua",
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "bab5ee75-6870-1df1-8426-06cd74db4447",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 972.3,
				name = "MT Provoke",
				timelineIndex = 207,
				uuid = "61adff67-89c8-1f4d-b9f7-bdda05c732db",
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
				name = "FRU\\lpdu strats",
				uuid = "3be65a12-cd14-c6a6-dc03-edd040763042",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
									"21a28755-b579-1313-9402-7a418e1bb873",
									true,
								},
								
								{
									"75928e7c-7877-81a1-be0a-54f8ee9a0162",
									true,
								},
								
								{
									"51e73290-a6cd-10c1-b28e-78a00a3970e4",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "9ea153ec-7121-2d08-b671-a70696f4b170",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "21a28755-b579-1313-9402-7a418e1bb873",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1193,
							dequeueIfLuaFalse = true,
							name = "Reprisal Check",
							partyTargetSubType = 1,
							uuid = "75928e7c-7877-81a1-be0a-54f8ee9a0162",
							version = 3,
						},
					},
					
					{
						data = 
						{
							comparator = 2,
							conditionType = 6,
							dequeueIfLuaFalse = true,
							inRangeValue = 5,
							name = "Range Check",
							uuid = "51e73290-a6cd-10c1-b28e-78a00a3970e4",
							version = 3,
						},
					},
				},
				mechanicTime = 984.8,
				name = "MT Reprisal",
				timelineIndex = 209,
				timerOffset = -3.5,
				uuid = "067057af-4e90-4ccf-9c4d-50daba8e20a1",
				version = 2,
			},
		},
	},
	[212] = 
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
							gVar = "ACR_RikuGNB3_Hotbar_Sprint",
							uuid = "d0041a4a-0112-1e91-ba84-37571210c681",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 994.9,
				name = "Sprint",
				timelineIndex = 212,
				uuid = "9e9632d8-5051-e930-b23a-ea3a7c1b762d",
				version = 2,
			},
			inheritedIndex = 1,
		},
	},
	[213] = 
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
							conditions = 
							{
								
								{
									"16ab8144-84aa-e72b-8118-d79cdb0ac53d",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "2450b0be-8075-e5ed-b567-c173622f501e",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "16ab8144-84aa-e72b-8118-d79cdb0ac53d",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 998,
				name = "MT HoC Self",
				timelineIndex = 213,
				timerOffset = -8,
				uuid = "26c118b9-34c6-f9ff-aa9f-2c55e121c6ca",
				version = 2,
			},
			inheritedIndex = 1,
		},
	},
	[214] = 
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
							conditions = 
							{
								
								{
									"432c16e7-7494-5c24-8b27-a5ee5e071297",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_AuroraSelf",
							uuid = "48928cd5-d60c-3579-86ae-1c3f3b7948a3",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "432c16e7-7494-5c24-8b27-a5ee5e071297",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1001.1,
				name = "MT Aurora Self",
				timelineIndex = 214,
				timerOffset = -18,
				uuid = "d2805942-2aea-c72e-a94e-8228ed623894",
				version = 2,
			},
			inheritedIndex = 1,
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
									"bab5ee75-6870-1df1-8426-06cd74db4447",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "89716ecf-4af5-246b-a088-b3c4b5850a05",
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
							category = "Lua",
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "bab5ee75-6870-1df1-8426-06cd74db4447",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1001.1,
				name = "MT Provoke",
				timelineIndex = 214,
				uuid = "796b06c4-9063-5843-845c-b03bcdd799a3",
				version = 2,
			},
		},
	},
	[215] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "2585bd57-ca2c-78b3-6aeb-1a9d98da4187",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "fa07df5f-f1eb-73e0-866b-f6b8b16da434",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1011.4,
				name = "HoL",
				timelineIndex = 215,
				timerOffset = -11,
				uuid = "5574239b-160b-de09-a30a-e43a571358f5",
				version = 2,
			},
			inheritedIndex = 3,
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
									"67614a0d-b5d5-35da-a5b1-31afe7622250",
									true,
								},
								
								{
									"cef6c1cd-3591-8178-983b-c0bb6690aa46",
									true,
								},
								
								{
									"400d6842-5f6e-a5e5-b7b5-0767e8ed70bc",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "7e974ba2-da6b-0522-b345-d35e8a23db05",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "67614a0d-b5d5-35da-a5b1-31afe7622250",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1193,
							dequeueIfLuaFalse = true,
							name = "Reprisal Check",
							partyTargetSubType = 1,
							uuid = "cef6c1cd-3591-8178-983b-c0bb6690aa46",
							version = 3,
						},
					},
					
					{
						data = 
						{
							comparator = 2,
							conditionType = 6,
							dequeueIfLuaFalse = true,
							inRangeValue = 5,
							name = "Range Check",
							uuid = "400d6842-5f6e-a5e5-b7b5-0767e8ed70bc",
							version = 3,
						},
					},
				},
				mechanicTime = 1011.4,
				name = "OT Reprisal",
				timelineIndex = 215,
				timerOffset = -13,
				uuid = "b5bd3547-f35f-5f8d-85d6-3727ad172d30",
				version = 2,
			},
			inheritedIndex = 4,
		},
	},
	[218] = 
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
							conditions = 
							{
								
								{
									"6dada694-00aa-66e8-878f-f0a3c9a2f512",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "6d50a7e9-e5fe-04ee-9b58-7685c742b422",
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
							category = "Lua",
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "6dada694-00aa-66e8-878f-f0a3c9a2f512",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1029.6,
				name = "OT Voke",
				timelineIndex = 218,
				timerOffset = -3,
				uuid = "3aa6b704-317e-02a4-9fb7-96232c7bc6a1",
				version = 2,
			},
			inheritedIndex = 1,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "8f20b28c-5108-3710-ce0d-ac624b417a3c",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
									"695bb711-4b29-c93e-b171-26ac3338929d",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_ShirkOT",
							uuid = "0ad414fb-c171-b824-8c3d-8653eaaf4f9e",
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
							category = "Lua",
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "695bb711-4b29-c93e-b171-26ac3338929d",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1029.6,
				name = "MT Shirk",
				timelineIndex = 218,
				timerOffset = -2,
				uuid = "8cd56883-e011-6497-936f-0c4bb82a383b",
				version = 2,
			},
		},
	},
	[219] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "b77ca5db-b21a-3e5f-b307-7fb1e432dfcb",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[220] = 
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
							conditions = 
							{
								
								{
									"16ab8144-84aa-e72b-8118-d79cdb0ac53d",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "2450b0be-8075-e5ed-b567-c173622f501e",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "16ab8144-84aa-e72b-8118-d79cdb0ac53d",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1029.9,
				name = "MT HoC Self",
				timelineIndex = 220,
				timerOffset = -3.5999999046326,
				uuid = "82c90448-8c05-d406-a842-b7951fb71f67",
				version = 2,
			},
			inheritedIndex = 1,
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
									"1d2da817-26a6-5992-9f64-141b1b4b1a53",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumOT",
							uuid = "93bfbe50-aacd-61b6-9c0b-46635b0d513b",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "1d2da817-26a6-5992-9f64-141b1b4b1a53",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1029.9,
				name = "OT HOC OT",
				timelineIndex = 220,
				timerOffset = -3.5999999046326,
				uuid = "322544b3-ba76-ef68-acda-7b692321ee34",
				version = 2,
			},
			inheritedIndex = 2,
		},
	},
	[222] = 
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
							conditions = 
							{
								
								{
									"432c16e7-7494-5c24-8b27-a5ee5e071297",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_AuroraSelf",
							uuid = "48928cd5-d60c-3579-86ae-1c3f3b7948a3",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "432c16e7-7494-5c24-8b27-a5ee5e071297",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1033.6,
				name = "MT Aurora Self",
				timelineIndex = 222,
				timerOffset = -18,
				uuid = "47f25777-7157-f9c6-9f43-58ab9830453c",
				version = 2,
			},
			inheritedIndex = 1,
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
									"1b7dfd50-8fd1-3ca3-8aa7-611d6c72ea3e",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Rampart",
							uuid = "f693d3f8-1915-5256-9d22-2289268f6be1",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "1b7dfd50-8fd1-3ca3-8aa7-611d6c72ea3e",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1033.6,
				name = "MT Rampart",
				timelineIndex = 222,
				timerOffset = -15,
				uuid = "13ffda40-f29a-fb1d-a448-b703dc70d77d",
				version = 2,
			},
			inheritedIndex = 2,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "eda4d965-f550-6b79-02df-f2db7b942dd5",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
									"5cbd772f-a061-78ad-92f1-16a49c0a2c12",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Nebula",
							uuid = "ecd117f4-d628-0e2b-bb57-2a94a7862d6e",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "5cbd772f-a061-78ad-92f1-16a49c0a2c12",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1033.6,
				name = "MT Nebula",
				timelineIndex = 222,
				timerOffset = -13,
				uuid = "627713b6-ae82-6ca4-a5ff-32324299dccc",
				version = 2,
			},
			inheritedIndex = 4,
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
									"6b38983a-9401-24bd-9f2e-a32fc132932d",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							uuid = "15db5b59-562c-f754-8a6a-c5438e660ab5",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "6b38983a-9401-24bd-9f2e-a32fc132932d",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1033.6,
				name = "MT Camo",
				timelineIndex = 222,
				timerOffset = -10,
				uuid = "36f030f8-b329-1ad6-8dc9-8401b9a6a9a2",
				version = 2,
			},
			inheritedIndex = 6,
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
									"355bf092-cbc8-01f7-99d0-fabdd36416aa",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Superbolide",
							uuid = "23118413-0f70-c233-bdd0-3c12b415c3d9",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "355bf092-cbc8-01f7-99d0-fabdd36416aa",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1033.6,
				name = "OT Bolide",
				timelineIndex = 222,
				timerOffset = -8.5,
				uuid = "4a8c4362-477d-a686-8ca8-0ee2bc9d4889",
				version = 2,
			},
		},
	},
	[223] = 
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
							conditions = 
							{
								
								{
									"bab5ee75-6870-1df1-8426-06cd74db4447",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "89716ecf-4af5-246b-a088-b3c4b5850a05",
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
							category = "Lua",
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "bab5ee75-6870-1df1-8426-06cd74db4447",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1037.1,
				name = "MT Provoke",
				timelineIndex = 223,
				timerOffset = -2,
				uuid = "77a713f6-e77e-3956-a9c1-148738bd9ea7",
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
									"e360ec22-c4aa-80e0-9a1a-8d6934788554",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_ShirkOT",
							uuid = "27708d6e-6bf3-9c1a-a60a-2de4707a6001",
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
							category = "Lua",
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "e360ec22-c4aa-80e0-9a1a-8d6934788554",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1037.1,
				name = "OT Shirk",
				timelineIndex = 223,
				uuid = "c4c9211a-9077-8d02-963c-5d16f069083c",
				version = 2,
			},
			inheritedIndex = 2,
		},
	},
	[224] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "1c155f2b-844b-13d7-0eea-31d56f89eedb",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[226] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "42dbc241-9580-a0dd-113f-49ef69889471",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[227] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "606ac2f2-0a5e-116e-3b88-8be0f932bb22",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[228] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "260089e7-1641-fc5b-e1ee-61f9dd930657",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[229] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "099ede58-ede6-090c-4999-4b2a3cf9d2c8",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[230] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "01ac5a02-228d-2456-7ec9-1a1c18780bf2",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[231] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "571226d1-4c6a-2fe5-6778-ac2bfae90b41",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[232] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "faf833ec-c897-30f0-abce-0ff2eb73161c",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[233] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "e78fbfbb-31a8-913f-8e3f-0f41d422a82b",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
									"21a28755-b579-1313-9402-7a418e1bb873",
									true,
								},
								
								{
									"75928e7c-7877-81a1-be0a-54f8ee9a0162",
									true,
								},
								
								{
									"51e73290-a6cd-10c1-b28e-78a00a3970e4",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "9ea153ec-7121-2d08-b671-a70696f4b170",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "21a28755-b579-1313-9402-7a418e1bb873",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1193,
							dequeueIfLuaFalse = true,
							name = "Reprisal Check",
							partyTargetSubType = 1,
							uuid = "75928e7c-7877-81a1-be0a-54f8ee9a0162",
							version = 3,
						},
					},
					
					{
						data = 
						{
							comparator = 2,
							conditionType = 6,
							dequeueIfLuaFalse = true,
							inRangeValue = 5,
							name = "Range Check",
							uuid = "51e73290-a6cd-10c1-b28e-78a00a3970e4",
							version = 3,
						},
					},
				},
				mechanicTime = 1065.6,
				name = "MT Reprisal",
				timelineIndex = 233,
				timerOffset = -15,
				uuid = "610b4782-7dfe-c156-82b7-1a97b05f6567",
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
				name = "FRU\\lpdu strats",
				uuid = "12bc5bc0-922b-239c-0f2b-1ad621df2370",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
									"42d4aa6a-2952-f4a9-b217-a65f8edc7fa3",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumMouse",
							targetType = "Ranged Physical DPS",
							uuid = "21d40f04-ada1-c82c-9673-445c5a356a48",
							variableIsHover = true,
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "42d4aa6a-2952-f4a9-b217-a65f8edc7fa3",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1085.2,
				name = "MT HoC Phys",
				timelineIndex = 236,
				timerOffset = -3,
				uuid = "5357e870-6407-d341-8029-e917d246b957",
				version = 2,
			},
		},
	},
	[237] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "362546cf-7ada-b5ab-3908-26658af083bf",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
									"67614a0d-b5d5-35da-a5b1-31afe7622250",
									true,
								},
								
								{
									"cef6c1cd-3591-8178-983b-c0bb6690aa46",
									true,
								},
								
								{
									"400d6842-5f6e-a5e5-b7b5-0767e8ed70bc",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "7e974ba2-da6b-0522-b345-d35e8a23db05",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "67614a0d-b5d5-35da-a5b1-31afe7622250",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1193,
							dequeueIfLuaFalse = true,
							name = "Reprisal Check",
							partyTargetSubType = 1,
							uuid = "cef6c1cd-3591-8178-983b-c0bb6690aa46",
							version = 3,
						},
					},
					
					{
						data = 
						{
							comparator = 2,
							conditionType = 6,
							dequeueIfLuaFalse = true,
							inRangeValue = 5,
							name = "Range Check",
							uuid = "400d6842-5f6e-a5e5-b7b5-0767e8ed70bc",
							version = 3,
						},
					},
				},
				mechanicTime = 1097.4,
				name = "OT Reprisal",
				timelineIndex = 237,
				timerOffset = -15,
				uuid = "b7989ea4-6710-dff2-9054-a0af81979f9d",
				version = 2,
			},
			inheritedIndex = 4,
		},
	},
	[240] = 
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
							gVar = "ACR_RikuGNB3_Hotbar_Sprint",
							uuid = "d0041a4a-0112-1e91-ba84-37571210c681",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1107.5,
				name = "Sprint",
				timelineIndex = 240,
				uuid = "261697fd-69f2-56c4-b323-c6fa41109688",
				version = 2,
			},
			inheritedIndex = 1,
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
									"16ab8144-84aa-e72b-8118-d79cdb0ac53d",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "2450b0be-8075-e5ed-b567-c173622f501e",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "16ab8144-84aa-e72b-8118-d79cdb0ac53d",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1107.5,
				name = "MT HoC Self",
				timelineIndex = 240,
				uuid = "519ae097-c5bf-cf7a-bf3b-e6f0d24dfc6b",
				version = 2,
			},
			inheritedIndex = 2,
		},
	},
	[242] = 
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
							conditions = 
							{
								
								{
									"432c16e7-7494-5c24-8b27-a5ee5e071297",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_AuroraSelf",
							uuid = "48928cd5-d60c-3579-86ae-1c3f3b7948a3",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "432c16e7-7494-5c24-8b27-a5ee5e071297",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1113.7,
				name = "MT Aurora Self",
				timelineIndex = 242,
				timerOffset = -18,
				uuid = "726872a3-e345-4e09-8162-d63824610a88",
				version = 2,
			},
			inheritedIndex = 1,
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
									"bab5ee75-6870-1df1-8426-06cd74db4447",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "89716ecf-4af5-246b-a088-b3c4b5850a05",
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
							category = "Lua",
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "bab5ee75-6870-1df1-8426-06cd74db4447",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1113.7,
				name = "MT Provoke",
				timelineIndex = 242,
				uuid = "706c734c-9cb0-83f0-ac68-bfc74698cba5",
				version = 2,
			},
		},
	},
	[243] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "3334cac0-59bd-8a6c-e755-c34a42579270",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "fa07df5f-f1eb-73e0-866b-f6b8b16da434",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1124,
				name = "HoL",
				timelineIndex = 243,
				timerOffset = -11,
				uuid = "250fc009-43a1-0039-847c-67a336592223",
				version = 2,
			},
			inheritedIndex = 3,
		},
	},
	[247] = 
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
							conditions = 
							{
								
								{
									"6dada694-00aa-66e8-878f-f0a3c9a2f512",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "6d50a7e9-e5fe-04ee-9b58-7685c742b422",
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
							category = "Lua",
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "6dada694-00aa-66e8-878f-f0a3c9a2f512",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1146.3,
				name = "OT Voke",
				timelineIndex = 247,
				timerOffset = -3,
				uuid = "46a7a1a9-61dd-c712-ab9b-698b107889bf",
				version = 2,
			},
			inheritedIndex = 1,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "1b70a2ec-7181-b240-ebf4-320e0beb851c",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
									"695bb711-4b29-c93e-b171-26ac3338929d",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_ShirkOT",
							uuid = "0ad414fb-c171-b824-8c3d-8653eaaf4f9e",
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
							category = "Lua",
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "695bb711-4b29-c93e-b171-26ac3338929d",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1146.3,
				name = "MT Shirk",
				timelineIndex = 247,
				timerOffset = -2,
				uuid = "e1b66690-dc90-0538-b446-b0172ba93497",
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
				name = "FRU\\lpdu strats",
				uuid = "4d60cece-beb7-358a-5fe2-e62c3d3605fe",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
									"7aca749d-735f-8692-bf67-cc967118e83a",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "7588d011-28c3-d845-a9cd-783100b6f7c7",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "7aca749d-735f-8692-bf67-cc967118e83a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1147.4,
				name = "OT HoC Self",
				timelineIndex = 249,
				timerOffset = -3.5,
				uuid = "6259988a-e4c8-196d-b389-925b0ccfc8c7",
				version = 2,
			},
			inheritedIndex = 5,
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
									"0140f1eb-8661-bc8d-a910-679db6e6858d",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumOT",
							uuid = "f6c03193-c01e-a63e-b6e9-b4c05c037963",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "0140f1eb-8661-bc8d-a910-679db6e6858d",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1147.4,
				name = "MT HoC OT",
				timelineIndex = 249,
				timerOffset = -3.5,
				uuid = "4335c3a5-e0ae-bb96-a508-871ae9c1070a",
				version = 2,
			},
		},
	},
	[250] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "992b8c50-6d2b-817c-80ef-5176eb4213c0",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[251] = 
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
							conditions = 
							{
								
								{
									"437db45a-014f-50fb-99b7-5eedc4acb362",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Rampart",
							uuid = "f8e26157-382d-6f9d-a40a-e2510a85c668",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "437db45a-014f-50fb-99b7-5eedc4acb362",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1150.3,
				name = "OT Rampart",
				timelineIndex = 251,
				timerOffset = -15,
				uuid = "f678d98c-a732-00ac-8566-f1f73094f9a5",
				version = 2,
			},
			inheritedIndex = 1,
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
									"bcce59ea-bcf0-6280-a43f-699efd2b1478",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Nebula",
							uuid = "5fc4d285-2475-9624-997a-b5898437d2b3",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "bcce59ea-bcf0-6280-a43f-699efd2b1478",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1150.3,
				name = "OT Nebula",
				timelineIndex = 251,
				timerOffset = -13,
				uuid = "8c286ce9-8174-67e2-9b95-f54045dc79ab",
				version = 2,
			},
			inheritedIndex = 2,
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
									"ea68f261-c958-d108-8dbf-960dedc1db29",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							uuid = "253c8369-0ef8-5e27-a057-74c7c60c759e",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "ea68f261-c958-d108-8dbf-960dedc1db29",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1150.3,
				name = "OT Camo",
				timelineIndex = 251,
				timerOffset = -10,
				uuid = "6b999dc8-cf59-0760-80c8-97eefe434bc7",
				version = 2,
			},
			inheritedIndex = 3,
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
									"3ff12824-8eac-5f76-a926-814c308773b9",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_AuroraSelf",
							uuid = "b92b80bd-5419-a5e3-a707-d32f0e447fa2",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "3ff12824-8eac-5f76-a926-814c308773b9",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1150.3,
				name = "OT Aurora Self",
				timelineIndex = 251,
				timerOffset = -17,
				uuid = "93e758ab-a21e-1654-98b6-6a2e326414db",
				version = 2,
			},
			inheritedIndex = 4,
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
							gVar = "ACR_RikuGNB3_Hotbar_Sprint",
							uuid = "d0041a4a-0112-1e91-ba84-37571210c681",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1150.3,
				name = "Sprint",
				timelineIndex = 251,
				timerOffset = -7,
				uuid = "51439a92-76ba-6865-b050-7a9aa7dc93ad",
				version = 2,
			},
			inheritedIndex = 5,
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
									"e0a3c935-d306-f911-b33d-70b895794fd5",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Superbolide",
							uuid = "d2214e27-b530-3a2e-b251-34ce37cb8a5d",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "e0a3c935-d306-f911-b33d-70b895794fd5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1150.3,
				name = "MT Bolide",
				timelineIndex = 251,
				timerOffset = -8.5,
				uuid = "ff8672bb-9d00-9b51-9548-3d8bf0e1515d",
				version = 2,
			},
			inheritedIndex = 6,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "f323829f-b596-f90b-619d-87050eaafecf",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[252] = 
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
							conditions = 
							{
								
								{
									"bab5ee75-6870-1df1-8426-06cd74db4447",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "89716ecf-4af5-246b-a088-b3c4b5850a05",
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
							category = "Lua",
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "bab5ee75-6870-1df1-8426-06cd74db4447",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1153.9,
				name = "MT Provoke",
				timelineIndex = 252,
				timerOffset = -1,
				uuid = "2b789651-1b58-d540-8bef-d7216da050ec",
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
									"e360ec22-c4aa-80e0-9a1a-8d6934788554",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_ShirkOT",
							uuid = "27708d6e-6bf3-9c1a-a60a-2de4707a6001",
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
							category = "Lua",
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "e360ec22-c4aa-80e0-9a1a-8d6934788554",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1153.9,
				name = "OT Shirk",
				timelineIndex = 252,
				timerOffset = 1,
				uuid = "18b9b2ba-62b8-97f4-b3d3-3e7a0942ea74",
				version = 2,
			},
			inheritedIndex = 2,
		},
	},
	[253] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "abb7e6c5-fff0-e921-9eb8-34df3ce011b5",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[254] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "2ede99fc-d778-73d0-8749-a712d37debec",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[255] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "774a118b-3170-6a1f-2919-a2e1c01577bb",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[256] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "8d9b28d2-49a8-dbb6-de97-7e3cda321202",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[257] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "c1a401a1-ea04-ce45-7788-e3cb2f97ded1",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[258] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "39c2d7b8-2738-99c4-c6fe-429ee7709d28",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[259] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "b77aa847-e32e-c173-d379-bccda811ee37",
			},
			inheritanceRoot = "FRU\\lpdu strats",
			objectType = "folder",
		},
	},
	[260] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "726efc9b-8540-24a7-8b63-899d2f575a8b",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
									"67614a0d-b5d5-35da-a5b1-31afe7622250",
									true,
								},
								
								{
									"cef6c1cd-3591-8178-983b-c0bb6690aa46",
									true,
								},
								
								{
									"400d6842-5f6e-a5e5-b7b5-0767e8ed70bc",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "7e974ba2-da6b-0522-b345-d35e8a23db05",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"ot\"",
							dequeueIfLuaFalse = true,
							name = "OT",
							uuid = "67614a0d-b5d5-35da-a5b1-31afe7622250",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1193,
							dequeueIfLuaFalse = true,
							name = "Reprisal Check",
							partyTargetSubType = 1,
							uuid = "cef6c1cd-3591-8178-983b-c0bb6690aa46",
							version = 3,
						},
					},
					
					{
						data = 
						{
							comparator = 2,
							conditionType = 6,
							dequeueIfLuaFalse = true,
							inRangeValue = 5,
							name = "Range Check",
							uuid = "400d6842-5f6e-a5e5-b7b5-0767e8ed70bc",
							version = 3,
						},
					},
				},
				mechanicTime = 1177,
				name = "OT Reprisal",
				timelineIndex = 260,
				timerOffset = -15,
				uuid = "1be0dd62-b6b4-679d-bbc4-a6a2d8ff3f09",
				version = 2,
			},
			inheritedIndex = 4,
		},
	},
	[262] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "702f1e31-46ba-386d-21b4-649779b14aa1",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
									"21a28755-b579-1313-9402-7a418e1bb873",
									true,
								},
								
								{
									"75928e7c-7877-81a1-be0a-54f8ee9a0162",
									true,
								},
								
								{
									"51e73290-a6cd-10c1-b28e-78a00a3970e4",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "9ea153ec-7121-2d08-b671-a70696f4b170",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "21a28755-b579-1313-9402-7a418e1bb873",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1193,
							dequeueIfLuaFalse = true,
							name = "Reprisal Check",
							partyTargetSubType = 1,
							uuid = "75928e7c-7877-81a1-be0a-54f8ee9a0162",
							version = 3,
						},
					},
					
					{
						data = 
						{
							comparator = 2,
							conditionType = 6,
							dequeueIfLuaFalse = true,
							inRangeValue = 5,
							name = "Range Check",
							uuid = "51e73290-a6cd-10c1-b28e-78a00a3970e4",
							version = 3,
						},
					},
				},
				mechanicTime = 1187.6,
				name = "MT Reprisal",
				timelineIndex = 262,
				timerOffset = -3.5,
				uuid = "78902773-6ad7-803c-a8f5-24b31e2c20aa",
				version = 2,
			},
		},
	},
	[265] = 
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
							gVar = "ACR_RikuGNB3_Hotbar_Sprint",
							uuid = "d0041a4a-0112-1e91-ba84-37571210c681",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1197.7,
				name = "Sprint",
				timelineIndex = 265,
				uuid = "35230676-20de-b5e4-b462-320afea0642b",
				version = 2,
			},
			inheritedIndex = 1,
		},
	},
	[266] = 
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
							conditions = 
							{
								
								{
									"16ab8144-84aa-e72b-8118-d79cdb0ac53d",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "2450b0be-8075-e5ed-b567-c173622f501e",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "16ab8144-84aa-e72b-8118-d79cdb0ac53d",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1200.8,
				name = "MT HoC Self",
				timelineIndex = 266,
				timerOffset = -8,
				uuid = "a675175f-667f-8814-b75f-c305871ccc0e",
				version = 2,
			},
			inheritedIndex = 1,
		},
	},
	[267] = 
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
							conditions = 
							{
								
								{
									"432c16e7-7494-5c24-8b27-a5ee5e071297",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_AuroraSelf",
							uuid = "48928cd5-d60c-3579-86ae-1c3f3b7948a3",
							variableTogglesType = 3,
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
							conditionLua = "return _G[\"ACR_\"..gACRSelectedProfiles[TensorCore.mGetPlayer().job]..\"_TankStance\"] == \"mt\"",
							dequeueIfLuaFalse = true,
							name = "MT",
							uuid = "432c16e7-7494-5c24-8b27-a5ee5e071297",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1203.9,
				name = "MT Aurora Self",
				timelineIndex = 267,
				timerOffset = -18,
				uuid = "e5cc0004-7157-6440-ba79-afb94b648364",
				version = 2,
			},
			inheritedIndex = 1,
		},
	},
	[268] = 
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
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "fa07df5f-f1eb-73e0-866b-f6b8b16da434",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1214.2,
				name = "HoL",
				timelineIndex = 268,
				timerOffset = -11,
				uuid = "6dd31de7-7da0-502d-8777-fcdd2285300e",
				version = 2,
			},
			inheritedIndex = 1,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "FRU\\lpdu strats",
				uuid = "0cfeeec3-4c22-5c7f-1810-bd155cef22f3",
			},
			inheritanceRoot = "FRU\\lpdu strats",
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
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumLowest",
							uuid = "f0e31e9e-6f3e-ebee-b405-758018d9ec23",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1214.2,
				name = "HoC Lowest",
				timelineIndex = 268,
				timerOffset = -3.5,
				uuid = "fb2286f6-565a-efb7-8f24-0fe2121852a7",
				version = 2,
			},
		},
	},
	inheritedProfiles = 
	{
		"FRU\\lpdu strats",
	},
	timelineName = "fru",
	version = "1.0.5",
}



return tbl
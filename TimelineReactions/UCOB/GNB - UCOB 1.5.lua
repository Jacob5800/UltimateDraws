local tbl = 
{
	[2] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "7d311a01-9a83-2fd5-df6f-239f1e0b9c31",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[3] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "6e474956-dc43-d4ea-bc30-ed044e32ee06",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[4] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "fb5519cf-44ef-bf3b-8182-e2115b7b783f",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
							uuid = "4cb7f6aa-9b82-41c0-95d7-a7050da86c67",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 16.3,
				name = "Sprint",
				timelineIndex = 4,
				timerOffset = -9,
				uuid = "6de72a5b-9b7f-2ab3-96fa-6e9bb1e9c4ee",
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
				mechanicTime = 16.3,
				name = "OT Rampart",
				timelineIndex = 4,
				timerOffset = -7,
				uuid = "701dd5c9-f66d-eeee-8b46-ff64fa672a7c",
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
									"b7d00970-d2c7-55d2-b984-c31c656e9aca",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "88237b1c-2683-42b4-a249-ff603d1736ef",
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
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							partyTargetSubType = "Furthest",
							uuid = "b7d00970-d2c7-55d2-b984-c31c656e9aca",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 16.3,
				name = "HoL",
				timelineIndex = 4,
				timerOffset = -5,
				uuid = "9a8b0027-d3a0-2ce8-8049-0e51b6f4cbe0",
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
				mechanicTime = 16.3,
				name = "OT Stance ON",
				timelineIndex = 4,
				uuid = "c922067f-6fa8-d6d0-a31b-ccd26acd72bd",
				version = 2,
			},
			inheritedIndex = 8,
		},
	},
	[5] = 
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
				mechanicTime = 24.5,
				name = "MT Nebula",
				timelineIndex = 5,
				timerOffset = -10,
				uuid = "d1f7f70c-c0d1-3f8f-88f7-9069021b4c1e",
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
				mechanicTime = 24.5,
				name = "MT Reprisal",
				timelineIndex = 5,
				timerOffset = -8,
				uuid = "bf30cb94-c150-940e-890d-a46a8be80632",
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
				mechanicTime = 24.5,
				name = "MT Stance OFF",
				timelineIndex = 5,
				timerOffset = -5,
				uuid = "704cebf5-f6ad-9f53-ae02-32b942ad1e88",
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
									"9f125e6f-64d0-d9bd-b09f-c78280093e8a",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "3d78bd8b-20e7-8732-b551-b3601d3685ce",
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
							uuid = "9f125e6f-64d0-d9bd-b09f-c78280093e8a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 24.5,
				name = "MT HoS Self",
				timelineIndex = 5,
				timerOffset = -3,
				uuid = "0d7afa5d-2e13-ce03-98df-5fa9ec082fda",
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
				mechanicTime = 24.5,
				name = "MT Shirk",
				timelineIndex = 5,
				timerOffset = -1,
				uuid = "b9e8ee79-8604-94f5-b418-44cfa4b5bb17",
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
									"23c1de8a-c0d5-65b9-aeb9-84bb0018df02",
									true,
								},
								
								{
									"fa3097fc-a329-2141-a155-ac38f8a8f525",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "a4c6545d-327a-c59f-832a-448bf559d075",
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
							uuid = "23c1de8a-c0d5-65b9-aeb9-84bb0018df02",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							conditionType = 8,
							jobIDList = 
							{
								19,
								32,
								37,
							},
							jobValue = "WARRIOR",
							name = "No WAR Check",
							partyTargetType = "Tank",
							uuid = "fa3097fc-a329-2141-a155-ac38f8a8f525",
							version = 3,
						},
					},
				},
				mechanicTime = 24.5,
				name = "OT Fast Voke NO WAR",
				timelineIndex = 5,
				timerOffset = -3.5,
				uuid = "c72a0711-ae3f-c69c-9ec6-328944d25c5d",
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
									"f104fec6-f0a4-1d02-984f-af6ecad494c4",
									true,
								},
								
								{
									"c824cb80-1e9e-d8f9-8cb3-2290a3ffcdc5",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "0f0a1c69-d8f6-7c66-896f-3388b7b3d890",
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
							uuid = "f104fec6-f0a4-1d02-984f-af6ecad494c4",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							conditionType = 8,
							jobIDList = 
							{
								21,
							},
							jobValue = "WARRIOR",
							name = "With WAR Check",
							partyTargetType = "Tank",
							uuid = "c824cb80-1e9e-d8f9-8cb3-2290a3ffcdc5",
							version = 3,
						},
						inheritedIndex = 2,
					},
				},
				mechanicTime = 24.5,
				name = "OT Slow Voke With WAR",
				timelineIndex = 5,
				uuid = "48a54d05-ec5b-8c88-8f08-7009849ed596",
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
									"68676aaf-90c3-0222-9f64-25599c6b5929",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "6e911c04-e0a0-504c-9954-1024fe54f8b1",
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
							uuid = "68676aaf-90c3-0222-9f64-25599c6b5929",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 24.5,
				name = "OT HoS Self",
				timelineIndex = 5,
				timerOffset = 1.5,
				uuid = "f341daaf-f00b-6830-956b-cb710f40e1e9",
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
				mechanicTime = 24.5,
				name = "OT Stance ON",
				timelineIndex = 5,
				timerOffset = -3,
				uuid = "18cb567f-8c70-7cf6-8966-7b99f4a4b3c2",
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
				enabled = false,
				mechanicTime = 24.5,
				name = "MT Bolide",
				timelineIndex = 5,
				timerOffset = -3,
				uuid = "d1265a13-45ea-2996-831d-6ed30a52cf8b",
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
				mechanicTime = 24.5,
				name = "OT Camo",
				timelineIndex = 5,
				timerOffset = -6,
				uuid = "8a8c3cbd-cd77-cf93-9983-bfdac9b932ed",
				version = 2,
			},
			inheritedIndex = 11,
		},
	},
	[6] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "0b5d13dd-b540-4519-d02d-9233ebe87c0d",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[7] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "735b78b2-953f-776e-6cb7-e1d8a98d00e2",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[8] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "b683ce8b-f62e-aaff-a8bb-91f57d921e7b",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[10] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "b31cf964-0faf-6690-020c-d91a8f2b6754",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
				mechanicTime = 47.5,
				name = "MT Stance ON",
				timelineIndex = 10,
				timerOffset = 5,
				uuid = "afb9c15e-cc51-6734-8dad-0c42f289821a",
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
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "5385caa2-e427-ad7e-9dbd-1e3c95804552",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[13] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "83e040cd-63dc-8569-4887-3c377b3c857d",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[14] = 
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
				mechanicTime = 70.6,
				name = "MT Aurora Self",
				timelineIndex = 14,
				uuid = "cd284692-4334-96e3-a599-2b2648e59c41",
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
									"68676aaf-90c3-0222-9f64-25599c6b5929",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "6e911c04-e0a0-504c-9954-1024fe54f8b1",
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
							uuid = "68676aaf-90c3-0222-9f64-25599c6b5929",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 70.6,
				name = "OT HoS Self",
				timelineIndex = 14,
				timerOffset = -6,
				uuid = "e790417b-c118-a28f-b456-be78172bc5f0",
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
				mechanicTime = 70.6,
				name = "OT Stance OFF",
				timelineIndex = 14,
				timerOffset = -4,
				uuid = "a2c31ff2-8a45-cbd7-aeae-5b3b3141d6d6",
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
				mechanicTime = 70.6,
				name = "MT Provoke",
				timelineIndex = 14,
				timerOffset = -3.5,
				uuid = "ab780694-0422-88b9-a79f-e65f7a0910d5",
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
				mechanicTime = 70.6,
				name = "MT Stance ON",
				timelineIndex = 14,
				timerOffset = -8,
				uuid = "9aaeace5-4629-9246-9e1b-41b54f0299a7",
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
				mechanicTime = 70.6,
				name = "OT Rampart",
				timelineIndex = 14,
				timerOffset = -19,
				uuid = "191f3ae6-4519-9aa9-aac6-ea4184b49d28",
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
									"bdfb8fa5-b5f2-2131-a5e4-dff42389f8d6",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_AuroraSelf",
							uuid = "99dcc0c2-f350-8e1a-a975-f6a722cedbd7",
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
							uuid = "bdfb8fa5-b5f2-2131-a5e4-dff42389f8d6",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 70.6,
				name = "OT Aurora Self",
				timelineIndex = 14,
				timerOffset = -17,
				uuid = "f521fa3b-1e3b-2ef3-bf34-6f06e6ff071d",
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
				mechanicTime = 70.6,
				name = "OT Nebula",
				timelineIndex = 14,
				timerOffset = -14,
				uuid = "6de858b9-57ff-f533-86de-62dceeaee2ed",
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
				mechanicTime = 70.6,
				name = "MT Camo",
				timelineIndex = 14,
				timerOffset = 2,
				uuid = "55e9f8d1-8a6f-4c70-8e41-4c327d37c6d0",
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
				mechanicTime = 70.6,
				name = "OT Shirk",
				timelineIndex = 14,
				timerOffset = -1,
				uuid = "3738259f-cd84-a119-b741-fc9222d19dd0",
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
									"a0014ee6-4543-fc9f-912f-a9d6311afe4f",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumOT",
							uuid = "0b8d690f-f49f-8a2a-8228-366acfc3e701",
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
							uuid = "a0014ee6-4543-fc9f-912f-a9d6311afe4f",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 70.6,
				name = "MT HoS OT",
				timelineIndex = 14,
				timerOffset = -6,
				uuid = "515d2419-ba4b-60fb-b753-2983194d03dc",
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
				mechanicTime = 70.6,
				name = "OT Reprisal",
				timelineIndex = 14,
				timerOffset = -9,
				uuid = "d1946db6-895d-b082-a046-3be34c1155a8",
				version = 2,
			},
			inheritedIndex = 12,
		},
	},
	[15] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "1a406713-783e-f057-9cb1-c6496b734283",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[17] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "4981b0f1-d144-3fe5-d09c-4bebd3165d21",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[18] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "bcef1a8c-80c6-a448-e80f-f392a9d0d8fc",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[20] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "f9d91e03-9788-5fff-b4dc-b8fd7991af33",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[22] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "617c38a1-e4ff-efcd-941e-9b6f2ae6ff11",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[23] = 
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
				mechanicTime = 118,
				name = "OT Stance ON",
				timelineIndex = 23,
				timerOffset = -6,
				uuid = "d0d86663-bd7a-1101-975f-78e64855ae6d",
				version = 2,
			},
			inheritedIndex = 1,
		},
	},
	[24] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "e8e4436f-7b60-1613-0cb6-90a188d3409f",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
							uuid = "88237b1c-2683-42b4-a249-ff603d1736ef",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 124.6,
				name = "HoL",
				timelineIndex = 24,
				timerOffset = -14,
				uuid = "80018208-cbf4-7ee9-9708-b649c784efd4",
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
									"21a28755-b579-1313-9402-7a418e1bb873",
									true,
								},
								
								{
									"51e73290-a6cd-10c1-b28e-78a00a3970e4",
									true,
								},
								
								{
									"a0d6c9dc-12e4-d078-a341-e4a7e1ffa22a",
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
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1193,
							dequeueIfLuaFalse = true,
							name = "Reprisal Check",
							partyTargetSubType = 1,
							uuid = "a0d6c9dc-12e4-d078-a341-e4a7e1ffa22a",
							version = 3,
						},
					},
				},
				mechanicTime = 124.6,
				name = "MT Reprisal",
				timelineIndex = 24,
				timerOffset = -9,
				uuid = "a9eb5838-4433-23b7-a214-5ec56f286717",
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
							gVar = "ACR_RikuGNB3_Hotbar_Sprint",
							uuid = "53c141b0-a1b5-bf8c-8705-2ceca476aa4c",
							variableTogglesType = 2,
							version = 2.1,
						},
						inheritedIndex = 1,
					},
				},
				conditions = 
				{
				},
				mechanicTime = 124.6,
				name = "Sprint",
				timelineIndex = 24,
				timerOffset = -10,
				uuid = "084adc12-3347-dc98-8095-5b3555ece963",
				version = 2,
			},
		},
	},
	[25] = 
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
				mechanicTime = 133.6,
				name = "MT Rampart",
				timelineIndex = 25,
				timerOffset = -18,
				uuid = "09292f53-1af3-4966-b85a-adee05f7acff",
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
				mechanicTime = 133.6,
				name = "MT Stance OFF",
				timelineIndex = 25,
				timerOffset = -4,
				uuid = "890ae613-5bf4-fea5-9444-70ae431e3cfe",
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
				mechanicTime = 133.6,
				name = "OT Voke",
				timelineIndex = 25,
				timerOffset = -3.5,
				uuid = "333d490f-32f4-8bed-a91e-c6609b347a44",
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
				mechanicTime = 133.6,
				name = "MT Shirk",
				timelineIndex = 25,
				timerOffset = -1,
				uuid = "d2a152ce-4ca9-89d2-b46a-92aee85431eb",
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
				mechanicTime = 133.6,
				name = "OT Rampart",
				timelineIndex = 25,
				timerOffset = -1,
				uuid = "7b31ca4b-510b-6f08-9618-dc4c119c9c49",
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
				mechanicTime = 133.6,
				name = "MT Nebula",
				timelineIndex = 25,
				timerOffset = -14,
				uuid = "8a796949-f233-df16-9639-df7b2b89e8bd",
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
									"9f125e6f-64d0-d9bd-b09f-c78280093e8a",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "3d78bd8b-20e7-8732-b551-b3601d3685ce",
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
							uuid = "9f125e6f-64d0-d9bd-b09f-c78280093e8a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 133.6,
				name = "MT HoS Self",
				timelineIndex = 25,
				timerOffset = -6,
				uuid = "29e26457-c96d-30f6-8b26-d33da13a36c6",
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
				mechanicTime = 133.6,
				name = "OT Stance ON",
				timelineIndex = 25,
				timerOffset = -10,
				uuid = "11bb55a6-e035-e992-bc17-9c89b9d5550d",
				version = 2,
			},
			inheritedIndex = 8,
		},
	},
	[26] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "09a260fd-aaa1-5ff1-a513-760337c09fed",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
									"bdfb8fa5-b5f2-2131-a5e4-dff42389f8d6",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_AuroraSelf",
							uuid = "99dcc0c2-f350-8e1a-a975-f6a722cedbd7",
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
							uuid = "bdfb8fa5-b5f2-2131-a5e4-dff42389f8d6",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 136.6,
				name = "OT Aurora Self",
				timelineIndex = 26,
				uuid = "4d5490ed-e7a9-3198-ad7d-d2028b3d3b4c",
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
									"68676aaf-90c3-0222-9f64-25599c6b5929",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "6e911c04-e0a0-504c-9954-1024fe54f8b1",
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
							uuid = "68676aaf-90c3-0222-9f64-25599c6b5929",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 136.6,
				name = "OT HoS Self",
				timelineIndex = 26,
				timerOffset = -3,
				uuid = "5893d863-77ba-3ca0-94c3-a7aeb14bae7c",
				version = 2,
			},
		},
	},
	[27] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "23e620d2-453c-5ac6-8188-f3e89ccefec2",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[28] = 
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
									"698f5935-ad80-46e6-9d2e-7112358959f1",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_AuroraOT",
							uuid = "e5a59b36-79fc-3ed2-be35-4e1bcab7162a",
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
							uuid = "698f5935-ad80-46e6-9d2e-7112358959f1",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 146.6,
				name = "MT Aurora OT",
				timelineIndex = 28,
				timerOffset = 1,
				uuid = "56ba1d43-69b2-fa8a-98d9-a7a6ddef94ab",
				version = 2,
			},
			inheritedIndex = 1,
		},
	},
	[29] = 
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
									"a0014ee6-4543-fc9f-912f-a9d6311afe4f",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumOT",
							uuid = "0b8d690f-f49f-8a2a-8228-366acfc3e701",
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
							uuid = "a0014ee6-4543-fc9f-912f-a9d6311afe4f",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 151.6,
				name = "MT HoS OT",
				timelineIndex = 29,
				timerOffset = 1,
				uuid = "c67c29f9-c571-6bff-99cc-2b4ed32ac476",
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
				mechanicTime = 151.6,
				name = "OT Reprisal",
				timelineIndex = 29,
				timerOffset = -9,
				uuid = "ff8c64be-8689-96f4-b6f1-b57065e5ec43",
				version = 2,
			},
			inheritedIndex = 2,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "b7f93bb0-1e0e-c98c-1b1d-215a4ae1ea60",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[30] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "f97b1266-8505-cfd2-4fbc-32585f9e1716",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
									"ea68f261-c958-d108-8dbf-960dedc1db29",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							uuid = "253c8369-0ef8-5e27-a057-74c7c60c759e",
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
							uuid = "ea68f261-c958-d108-8dbf-960dedc1db29",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 153.8,
				name = "OT Camo",
				timelineIndex = 30,
				timerOffset = -14,
				uuid = "e58da7a7-a0fc-3bea-89df-2f4b08ed2048",
				version = 2,
			},
			inheritedIndex = 4,
		},
	},
	[31] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "b94cda91-6ac2-0ffd-b331-e2b3fe2593c1",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[33] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "07f78ab3-4a03-f26f-6487-3291b6f340a3",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[35] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "c6267b6d-c29b-e7a1-c273-741f8623859d",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[36] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "f3fae584-376e-4ae8-d66f-32421dd09f74",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[38] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "5550738e-d102-785a-8482-1de0fe2ea93e",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[39] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "9637f0b9-100a-9085-83c1-6cdbb38bfe29",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[40] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "22e9846d-1a6c-8991-68b7-b613e2e68e9d",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[42] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 16161,
							gVar = "ACR_RikuGNB3_CD",
							ignoreWeaveRules = true,
							targetSubType = "Lowest HP",
							targetType = "Party",
							uuid = "2e9a8bd3-b21c-23c3-a4f0-14db9133775c",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
				},
				conditions = 
				{
				},
				mechanicTime = 208.5,
				name = "HoS Lowest Trio",
				timelineIndex = 42,
				timerOffset = -6.5,
				uuid = "cfaf7b91-9c27-0a70-b8e8-5b6f58d8feb4",
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
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "160fe391-2746-2a6d-84df-ffff5ae89cc1",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
							actionID = 16152,
							conditions = 
							{
								
								{
									"9ca75771-e21a-3b0f-bc78-5f215832fc2d",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_CD",
							ignoreWeaveRules = true,
							uuid = "34682ba5-e9fb-3802-a4f3-3bbe97fa5755",
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
							uuid = "9ca75771-e21a-3b0f-bc78-5f215832fc2d",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 211.5,
				name = "OT Bolide Trio",
				timelineIndex = 44,
				timerOffset = -2.5,
				uuid = "c2fbf3f4-ab6a-04d4-8bad-0808ec44a8fb",
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
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "563e1b66-8c54-8942-0194-4864bc612016",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
				mechanicTime = 213.5,
				name = "OT Voke",
				timelineIndex = 45,
				uuid = "d064da1d-4905-9f98-8521-d15c7db1dd30",
				version = 2,
			},
			inheritedIndex = 4,
		},
	},
	[47] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "0144e358-551a-9484-a1fd-19a2f7a7f408",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
				mechanicTime = 222.1,
				name = "MT Stance ON",
				timelineIndex = 47,
				uuid = "bde21272-90cf-c0bf-9c5a-991e8cbe57d8",
				version = 2,
			},
			inheritedIndex = 2,
		},
	},
	[48] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "3d489375-f757-9fb9-d3a1-143ba15f88a5",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "Draw Quotes",
				uuid = "7418bc38-0b2a-2bfc-925a-c44013127b04",
				version = 2,
			},
			inheritedIndex = 3,
			inheritedObjectUUID = "e823ed74-a31b-fa6e-b15a-77c6116e3ee9",
			inheritedOverwrites = 
			{
				timerEndOffset = 172.60000610352,
			},
		},
	},
	[49] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "64c10b0a-b670-228e-ba8d-5f4017230b7a",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
							uuid = "e7326efe-1f02-3ea5-93c6-3163cc8e6976",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 235.1,
				name = "Sprint",
				timelineIndex = 49,
				timerOffset = -6,
				uuid = "0f63d1f1-adc4-5b1c-bdce-b54fbbfb8630",
				version = 2,
			},
		},
	},
	[51] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "a21c2523-ad21-cd07-aff3-87a19e6e27d3",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[53] = 
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
				mechanicTime = 249.3,
				name = "OT Voke",
				timelineIndex = 53,
				timerOffset = -4,
				uuid = "bb08a322-fd9d-658b-a0ba-ec8bb8b2143c",
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
				mechanicTime = 249.3,
				name = "MT Shirk",
				timelineIndex = 53,
				timerOffset = 5,
				uuid = "7775d144-41fb-a74a-bc63-ae6f3c77c609",
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
									"bdfb8fa5-b5f2-2131-a5e4-dff42389f8d6",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_AuroraSelf",
							uuid = "99dcc0c2-f350-8e1a-a975-f6a722cedbd7",
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
							uuid = "bdfb8fa5-b5f2-2131-a5e4-dff42389f8d6",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 249.3,
				name = "OT Aurora Self",
				timelineIndex = 53,
				timerOffset = -11,
				uuid = "e4d273a5-4dc3-ee45-b9c3-883b3de8d279",
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
									"698f5935-ad80-46e6-9d2e-7112358959f1",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_AuroraOT",
							uuid = "e5a59b36-79fc-3ed2-be35-4e1bcab7162a",
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
							uuid = "698f5935-ad80-46e6-9d2e-7112358959f1",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 249.3,
				name = "MT Aurora OT",
				timelineIndex = 53,
				timerOffset = -11,
				uuid = "239a9cd0-7989-285e-ac2a-b9c8b7632eb5",
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
				mechanicTime = 249.3,
				name = "OT Nebula",
				timelineIndex = 53,
				timerOffset = -9,
				uuid = "191973b7-cd1b-bc32-84d7-07324b165b86",
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
				mechanicTime = 249.3,
				name = "MT Stance ON",
				timelineIndex = 53,
				timerOffset = -6,
				uuid = "4adc8955-f57e-669d-89c9-e283fbe8946e",
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
									"a0014ee6-4543-fc9f-912f-a9d6311afe4f",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumOT",
							uuid = "0b8d690f-f49f-8a2a-8228-366acfc3e701",
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
							uuid = "a0014ee6-4543-fc9f-912f-a9d6311afe4f",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 249.3,
				name = "MT HoS OT",
				timelineIndex = 53,
				timerOffset = -2,
				uuid = "61af0ecd-2b1c-ec08-8b2e-c804fa08a711",
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
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "88237b1c-2683-42b4-a249-ff603d1736ef",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 249.3,
				name = "HoL",
				timelineIndex = 53,
				uuid = "c55d894f-b2e7-0377-bdf7-1d277a4e7049",
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
									"21a28755-b579-1313-9402-7a418e1bb873",
									true,
								},
								
								{
									"51e73290-a6cd-10c1-b28e-78a00a3970e4",
									true,
								},
								
								{
									"a0d6c9dc-12e4-d078-a341-e4a7e1ffa22a",
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
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1193,
							dequeueIfLuaFalse = true,
							name = "Reprisal Check",
							partyTargetSubType = 1,
							uuid = "a0d6c9dc-12e4-d078-a341-e4a7e1ffa22a",
							version = 3,
						},
					},
				},
				mechanicTime = 249.3,
				name = "MT Reprisal",
				timelineIndex = 53,
				timerOffset = 5,
				uuid = "ac0be0bf-ee38-d174-a0a0-ffa3cdd56ad8",
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
									"68676aaf-90c3-0222-9f64-25599c6b5929",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "6e911c04-e0a0-504c-9954-1024fe54f8b1",
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
							uuid = "68676aaf-90c3-0222-9f64-25599c6b5929",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 249.3,
				name = "OT HoS Self",
				timelineIndex = 53,
				timerOffset = -2,
				uuid = "def1a7d7-18ac-75d3-b174-b2a29cd6af36",
				version = 2,
			},
			inheritedIndex = 10,
		},
	},
	[54] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "08f983f4-788a-3c00-725d-6fd236368224",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[55] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "4fbf570f-28d2-f4fb-5819-affd8d5f34bf",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[56] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "cf3d2af2-d369-482e-6c08-91d4db70bd62",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[59] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "bf9d7ccb-06bc-4ebf-e287-3689af75dafb",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[60] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "fa0fed37-8681-a2eb-ffed-8679ed6ecaa7",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[61] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "4f45cf3c-86bd-f570-0938-144e32c7f2ec",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[62] = 
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
									"ea68f261-c958-d108-8dbf-960dedc1db29",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							uuid = "253c8369-0ef8-5e27-a057-74c7c60c759e",
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
							uuid = "ea68f261-c958-d108-8dbf-960dedc1db29",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 284.7,
				name = "OT Camo",
				timelineIndex = 62,
				timerOffset = -13,
				uuid = "ad77c5aa-9df5-1613-a1f2-c3e22b6ede40",
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
				mechanicTime = 284.7,
				name = "OT Voke",
				timelineIndex = 62,
				timerOffset = -6,
				uuid = "304b7322-384a-206f-a8a3-86a9b37a5e52",
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
									"68676aaf-90c3-0222-9f64-25599c6b5929",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "6e911c04-e0a0-504c-9954-1024fe54f8b1",
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
							uuid = "68676aaf-90c3-0222-9f64-25599c6b5929",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 284.7,
				name = "OT HoS Self",
				timelineIndex = 62,
				timerOffset = -2,
				uuid = "da55a636-eaa8-428e-a91d-174e05c8225e",
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
									"a0014ee6-4543-fc9f-912f-a9d6311afe4f",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumOT",
							uuid = "0b8d690f-f49f-8a2a-8228-366acfc3e701",
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
							uuid = "a0014ee6-4543-fc9f-912f-a9d6311afe4f",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 284.7,
				name = "MT HoS OT",
				timelineIndex = 62,
				timerOffset = -2,
				uuid = "86b8c257-f1af-b27c-9585-e44b5fe43781",
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
				mechanicTime = 284.7,
				name = "OT Nebula",
				timelineIndex = 62,
				timerOffset = -13,
				uuid = "10dee6b5-0835-9334-85e5-94c934172c65",
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
				mechanicTime = 284.7,
				name = "OT Reprisal",
				timelineIndex = 62,
				timerOffset = -4.5,
				uuid = "435a9ce5-dccf-2898-8725-d7e6e36940cc",
				version = 2,
			},
			inheritedIndex = 6,
		},
	},
	[63] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "b3958a1a-980c-08de-f7a2-22a01cba504a",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[65] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "82614f70-53a2-753c-f997-7aca1ac4f820",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
							uuid = "8a57b36f-028e-c922-9862-8f700210074f",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 305.9,
				name = "Sprint",
				timelineIndex = 65,
				timerOffset = -6,
				uuid = "17e199c7-c1eb-e024-8278-12fed092418e",
				version = 2,
			},
		},
	},
	[67] = 
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
				mechanicTime = 323.3,
				name = "OT Stance OFF",
				timelineIndex = 67,
				timerOffset = -4,
				uuid = "bbc79fe6-bb9b-fc49-b041-1acf99616724",
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
				mechanicTime = 323.3,
				name = "MT Provoke",
				timelineIndex = 67,
				timerOffset = -3.5,
				uuid = "f2a1c891-73d5-a22d-968c-63f153fb0043",
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
									"698f5935-ad80-46e6-9d2e-7112358959f1",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_AuroraOT",
							uuid = "e5a59b36-79fc-3ed2-be35-4e1bcab7162a",
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
							uuid = "698f5935-ad80-46e6-9d2e-7112358959f1",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 323.3,
				name = "MT Aurora OT",
				timelineIndex = 67,
				timerOffset = -16,
				uuid = "c6856a70-2c6d-1f31-b286-17bc3414430a",
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
				mechanicTime = 323.3,
				name = "OT Rampart",
				timelineIndex = 67,
				timerOffset = -18,
				uuid = "e99ff775-43b0-ba25-9a4a-878c8cc2c48d",
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
									"68676aaf-90c3-0222-9f64-25599c6b5929",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "6e911c04-e0a0-504c-9954-1024fe54f8b1",
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
							uuid = "68676aaf-90c3-0222-9f64-25599c6b5929",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 323.3,
				name = "OT HoS Self",
				timelineIndex = 67,
				timerOffset = -6,
				uuid = "cf2dc077-383e-f173-8df7-f6ac2e38de40",
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
									"a0014ee6-4543-fc9f-912f-a9d6311afe4f",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumOT",
							uuid = "0b8d690f-f49f-8a2a-8228-366acfc3e701",
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
							uuid = "a0014ee6-4543-fc9f-912f-a9d6311afe4f",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 323.3,
				name = "MT HoS OT",
				timelineIndex = 67,
				timerOffset = -6,
				uuid = "b738edbf-48e9-50a1-871b-a26249082e39",
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
									"5cbd772f-a061-78ad-92f1-16a49c0a2c12",
									true,
								},
								
								{
									"95e25e8d-4e54-c7f1-b137-c47647793552",
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
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 2612,
							name = "Nael Still Alive",
							uuid = "95e25e8d-4e54-c7f1-b137-c47647793552",
							version = 3,
						},
					},
				},
				mechanicTime = 323.3,
				name = "MT Nebula",
				timelineIndex = 67,
				timerOffset = 15,
				uuid = "b349720b-1718-dc43-8477-35ee61d7a96d",
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
				mechanicTime = 323.3,
				name = "MT Stance ON",
				timelineIndex = 67,
				timerOffset = -10,
				uuid = "152d8c8c-42c8-25e1-9f2a-bdea0dc67df5",
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
									"21a28755-b579-1313-9402-7a418e1bb873",
									true,
								},
								
								{
									"51e73290-a6cd-10c1-b28e-78a00a3970e4",
									true,
								},
								
								{
									"a0d6c9dc-12e4-d078-a341-e4a7e1ffa22a",
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
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1193,
							dequeueIfLuaFalse = true,
							name = "Reprisal Check",
							partyTargetSubType = 1,
							uuid = "a0d6c9dc-12e4-d078-a341-e4a7e1ffa22a",
							version = 3,
						},
					},
				},
				mechanicTime = 323.3,
				name = "MT Reprisal",
				timelineIndex = 67,
				timerOffset = -9,
				uuid = "69f69356-7670-9195-af36-8ac23f231787",
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
				mechanicTime = 323.3,
				name = "OT Shirk",
				timelineIndex = 67,
				timerOffset = -1,
				uuid = "05618026-e9a9-1a9a-9fa4-a3dbf40653ce",
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
									"bdfb8fa5-b5f2-2131-a5e4-dff42389f8d6",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_AuroraSelf",
							uuid = "99dcc0c2-f350-8e1a-a975-f6a722cedbd7",
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
							uuid = "bdfb8fa5-b5f2-2131-a5e4-dff42389f8d6",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 323.3,
				name = "OT Aurora Self",
				timelineIndex = 67,
				timerOffset = -16,
				uuid = "3983dacf-163b-1dde-90f7-40df01107f49",
				version = 2,
			},
			inheritedIndex = 11,
		},
	},
	[68] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "b5b4882f-8035-1cc3-dfb1-3a51574a5b5f",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[73] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "7bd4a627-de00-a09b-a986-7fdd88b965d7",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[77] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "d9a3fa9b-8031-4c27-1b5a-860177d0100b",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
								
								{
									"54b59ff5-e52e-12d3-986a-e8970cb701e3",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "7e974ba2-da6b-0522-b345-d35e8a23db05",
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
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 2612,
							name = "Nael Still Alive",
							uuid = "54b59ff5-e52e-12d3-986a-e8970cb701e3",
							version = 3,
						},
					},
				},
				mechanicTime = 349.7,
				name = "OT Reprisal",
				timelineIndex = 77,
				timerOffset = -3.5,
				uuid = "a72284ed-e17e-6bb2-ab5d-b0c21e1c3b20",
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
									"9f125e6f-64d0-d9bd-b09f-c78280093e8a",
									true,
								},
								
								{
									"f9358c31-8f66-567c-b156-cad8b1450324",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "3d78bd8b-20e7-8732-b551-b3601d3685ce",
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
							uuid = "9f125e6f-64d0-d9bd-b09f-c78280093e8a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 2612,
							name = "Nael Still Alive",
							uuid = "f9358c31-8f66-567c-b156-cad8b1450324",
							version = 3,
						},
					},
				},
				mechanicTime = 349.7,
				name = "MT HoS Self",
				timelineIndex = 77,
				timerOffset = -2.5,
				uuid = "bf56fb78-0311-05d4-859a-7562eee2ab4a",
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
									"4f55832c-abc3-e2f1-a410-3098b761bc63",
									true,
								},
								
								{
									"a4596da4-65de-0870-95ec-2f991a62acbc",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumOT",
							uuid = "32dea0b1-2530-d22f-95b7-aeefc58a7652",
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
							uuid = "4f55832c-abc3-e2f1-a410-3098b761bc63",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 2612,
							name = "Nael Still Alive",
							uuid = "a4596da4-65de-0870-95ec-2f991a62acbc",
							version = 3,
						},
					},
				},
				mechanicTime = 349.7,
				name = "OT HoS OT",
				timelineIndex = 77,
				timerOffset = -2.4000000953674,
				uuid = "d926b2a8-e509-af71-870c-63b9b4f244fa",
				version = 2,
			},
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
								
								{
									"4f1adc0e-5528-1924-ad36-6cdb48ef2dc8",
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
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 2612,
							name = "Nael Still Alive",
							uuid = "4f1adc0e-5528-1924-ad36-6cdb48ef2dc8",
							version = 3,
						},
					},
				},
				mechanicTime = 388.7,
				name = "OT Stance OFF",
				timelineIndex = 80,
				uuid = "5d8fbad5-7986-3d23-ad9b-df992c501695",
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
									"9f125e6f-64d0-d9bd-b09f-c78280093e8a",
									true,
								},
								
								{
									"f9358c31-8f66-567c-b156-cad8b1450324",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "3d78bd8b-20e7-8732-b551-b3601d3685ce",
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
							uuid = "9f125e6f-64d0-d9bd-b09f-c78280093e8a",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 2612,
							name = "Nael Still Alive",
							uuid = "f9358c31-8f66-567c-b156-cad8b1450324",
							version = 3,
						},
					},
				},
				mechanicTime = 388.7,
				name = "MT HoS Self",
				timelineIndex = 80,
				timerOffset = -6,
				uuid = "40f8b8a6-d741-27bf-b343-8e17501ed295",
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
									"51e73290-a6cd-10c1-b28e-78a00a3970e4",
									true,
								},
								
								{
									"a0d6c9dc-12e4-d078-a341-e4a7e1ffa22a",
									true,
								},
								
								{
									"76f66cc0-1056-acc4-af21-807134feb40f",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "9ea153ec-7121-2d08-b671-a70696f4b170",
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
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1193,
							dequeueIfLuaFalse = true,
							name = "Reprisal Check",
							partyTargetSubType = 1,
							uuid = "a0d6c9dc-12e4-d078-a341-e4a7e1ffa22a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 2612,
							name = "Nael Still Alive",
							uuid = "76f66cc0-1056-acc4-af21-807134feb40f",
							version = 3,
						},
					},
				},
				mechanicTime = 388.7,
				name = "MT Reprisal",
				timelineIndex = 80,
				timerOffset = -9,
				uuid = "4fdcf66e-38ea-9ef8-b859-907ad1814e8e",
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
									"6dada694-00aa-66e8-878f-f0a3c9a2f512",
									true,
								},
								
								{
									"709655c7-b3b4-bcd0-8d3f-bb51e1eab1c9",
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
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 2612,
							name = "Nael Still Alive",
							uuid = "709655c7-b3b4-bcd0-8d3f-bb51e1eab1c9",
							version = 3,
						},
					},
				},
				mechanicTime = 388.7,
				name = "OT Voke",
				timelineIndex = 80,
				timerOffset = -3.5,
				uuid = "7342008e-25b2-6399-b1ff-6cbc3f67fe01",
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
									"4f55832c-abc3-e2f1-a410-3098b761bc63",
									true,
								},
								
								{
									"ac6ca9c9-275b-bf6b-97a4-698808236c43",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumOT",
							uuid = "32dea0b1-2530-d22f-95b7-aeefc58a7652",
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
							uuid = "4f55832c-abc3-e2f1-a410-3098b761bc63",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 2612,
							name = "Nael Still Alive",
							uuid = "ac6ca9c9-275b-bf6b-97a4-698808236c43",
							version = 3,
						},
					},
				},
				mechanicTime = 388.7,
				name = "OT HoS OT",
				timelineIndex = 80,
				timerOffset = -6,
				uuid = "ff07cabd-c0c3-cd4c-b134-7156e9106130",
				version = 2,
			},
			inheritedIndex = 5,
		},
	},
	[82] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "f200e743-4f63-dccf-ce23-dc6dd9f65573",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[84] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "30f95d3d-d13f-dd01-0ff4-ebb383f6fc2d",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[85] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "0fc11512-c256-0c56-ac7f-3b587f96bf02",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[86] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7531,
							conditions = 
							{
								
								{
									"7a946c50-f355-de1c-a23b-33c4803b5042",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_CD",
							ignoreWeaveRules = true,
							uuid = "4ffda3d3-f63e-3d7f-9421-19b0d3363d9c",
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
							uuid = "7a946c50-f355-de1c-a23b-33c4803b5042",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 508,
				name = "MT Rampart Trio",
				timelineIndex = 86,
				timerOffset = -2,
				uuid = "caa0fbcf-102c-ecc8-b1de-8ec5d4a97648",
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
							actionID = 16140,
							conditions = 
							{
								
								{
									"cbb7dd9d-a3ef-df13-96f0-4ae1358222d6",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							ignoreWeaveRules = true,
							uuid = "f07010ef-85c2-a4ba-9017-d39da54614a1",
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
							uuid = "cbb7dd9d-a3ef-df13-96f0-4ae1358222d6",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 508,
				name = "MT Camo Trio",
				timelineIndex = 86,
				timerOffset = -1,
				uuid = "8fa637f6-74ae-90cf-af9a-85adc13919de",
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
							actionID = 17105,
							gVar = "ACR_RikuGNB3_CD",
							ignoreWeaveRules = true,
							uuid = "2e658d36-a471-d302-abc8-f304028320bc",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 508,
				name = "GNB LB3",
				timelineIndex = 86,
				timerOffset = -7.5,
				uuid = "dc4f1207-8850-66c9-a96d-101e027b1f11",
				version = 2,
			},
		},
	},
	[87] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "bf38bb14-2403-9b48-0178-7366c27d7144",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
				mechanicTime = 511,
				name = "MT Provoke",
				timelineIndex = 87,
				uuid = "48fa13e9-e7c8-c155-8c1e-41ff86faa756",
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
				mechanicTime = 511,
				name = "OT Stance OFF",
				timelineIndex = 87,
				timerOffset = -4,
				uuid = "4164536d-1b8f-fe51-ad7e-b90117b77599",
				version = 2,
			},
		},
	},
	[88] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "c462e7c9-7481-36e5-dea8-73679938cc79",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
									"b4c88dfa-98ee-a3dc-ae28-36c152d72309",
									true,
								},
								
								{
									"9dfec6d3-4cd5-76d8-8d42-861dea2d40f8",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumOT",
							uuid = "be5e1384-d059-244a-9ab5-0eab1e0fc982",
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
							uuid = "b4c88dfa-98ee-a3dc-ae28-36c152d72309",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							conditionType = 8,
							jobIDList = 
							{
								21,
							},
							jobValue = "WARRIOR",
							name = "With WAR Check",
							partyTargetType = "Tank",
							uuid = "9dfec6d3-4cd5-76d8-8d42-861dea2d40f8",
							version = 3,
						},
						inheritedIndex = 2,
					},
				},
				mechanicTime = 517,
				name = "OT HoS with WAR",
				timelineIndex = 88,
				timerOffset = -5,
				uuid = "130acf0e-2580-e742-bbd9-d91076258abc",
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
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "09d7d35e-8d3b-b7ba-04c7-f2aca2835a4e",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
									"9f125e6f-64d0-d9bd-b09f-c78280093e8a",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "3d78bd8b-20e7-8732-b551-b3601d3685ce",
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
							uuid = "9f125e6f-64d0-d9bd-b09f-c78280093e8a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 525,
				name = "MT HoS Self",
				timelineIndex = 89,
				timerOffset = -5,
				uuid = "202eb086-4fdf-e799-a3ea-f2cc08f7d167",
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
				mechanicTime = 525,
				name = "OT Stance ON",
				timelineIndex = 89,
				timerOffset = -8,
				uuid = "0f4ac1e2-2425-46d6-bde8-7a17b2b39caa",
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
									"4f55832c-abc3-e2f1-a410-3098b761bc63",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumOT",
							uuid = "32dea0b1-2530-d22f-95b7-aeefc58a7652",
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
							uuid = "4f55832c-abc3-e2f1-a410-3098b761bc63",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 525,
				name = "OT HoS OT",
				timelineIndex = 89,
				timerOffset = -6,
				uuid = "5c05263b-aa32-b002-a52f-316feb548968",
				version = 2,
			},
		},
	},
	[90] = 
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
				mechanicTime = 532,
				name = "OT Stance ON",
				timelineIndex = 90,
				timerOffset = -5,
				uuid = "cbb872fd-a5a0-872a-8d66-182e3e4ecbf0",
				version = 2,
			},
			inheritedIndex = 1,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "c11ae0dc-9f0e-aeb8-7a77-82f28b4c480c",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[91] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "73e24a57-1e9d-0d13-1c86-c21d5a9a11c7",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[92] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "e5a21aba-e879-51c6-b433-dbf4eadb086a",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[93] = 
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
									"1df62806-0cc4-3b5c-8d51-ff9b1fd05bae",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							ignoreWeaveRules = true,
							uuid = "8dd28f88-20f5-11b2-a287-3171f3145625",
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
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							partyTargetSubType = "Furthest",
							uuid = "1df62806-0cc4-3b5c-8d51-ff9b1fd05bae",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 544,
				name = "HoL Trio",
				timelineIndex = 93,
				timerOffset = -6,
				uuid = "1b35dbe8-cd49-1c6c-9305-49892daa1dae",
				version = 2,
			},
			inheritedIndex = 1,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "cce799e5-4dde-56f1-faf9-af0fa91a6355",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[94] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "0b52c090-b779-9f64-f601-53963a733dc0",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[96] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "dfcb077e-57e2-70a2-3148-2788a3d6aaee",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[97] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "5f7fdf69-883c-e6cd-4d56-7d23c3d77899",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[98] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "955b1db4-7072-b640-50c3-3efa817a26e4",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
									"68676aaf-90c3-0222-9f64-25599c6b5929",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "6e911c04-e0a0-504c-9954-1024fe54f8b1",
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
							uuid = "68676aaf-90c3-0222-9f64-25599c6b5929",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 552,
				name = "OT HoS Self",
				timelineIndex = 98,
				timerOffset = -4.5,
				uuid = "b94d601f-e1b6-d26e-a598-abc0f61b691b",
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
							actionID = 3,
							gVar = "ACR_RikuGNB3_Hotbar_ArmsLength",
							ignoreWeaveRules = true,
							uuid = "342bca96-97e1-f4db-a672-428165fb9d79",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 552,
				name = "Sprint Trio",
				timelineIndex = 98,
				timerOffset = -10,
				uuid = "30a5fa65-bef5-506a-83f6-afcbeabd21e8",
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
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "a7ca3fcf-8986-6b3b-daff-bc2504c5de7f",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
									"9f125e6f-64d0-d9bd-b09f-c78280093e8a",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "3d78bd8b-20e7-8732-b551-b3601d3685ce",
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
							uuid = "9f125e6f-64d0-d9bd-b09f-c78280093e8a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 555.9,
				name = "MT HoS Self",
				timelineIndex = 99,
				timerOffset = -6,
				uuid = "934b3bcb-b82b-d557-a2dc-6cb8434273a5",
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
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "142adb88-d2ad-0a6f-85bb-4e6fab1c1931",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 555.9,
				name = "HoL",
				timelineIndex = 99,
				timerOffset = -9.5,
				uuid = "8df1aaa0-085c-c7b6-aa88-fc7df93176b6",
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
				mechanicTime = 555.9,
				name = "MT Provoke",
				timelineIndex = 99,
				timerOffset = -7,
				uuid = "939fd16b-83d7-71bc-a91d-8283c82d7e71",
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
									"21a28755-b579-1313-9402-7a418e1bb873",
									true,
								},
								
								{
									"51e73290-a6cd-10c1-b28e-78a00a3970e4",
									true,
								},
								
								{
									"a0d6c9dc-12e4-d078-a341-e4a7e1ffa22a",
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
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1193,
							dequeueIfLuaFalse = true,
							name = "Reprisal Check",
							partyTargetSubType = 1,
							uuid = "a0d6c9dc-12e4-d078-a341-e4a7e1ffa22a",
							version = 3,
						},
					},
				},
				mechanicTime = 555.9,
				name = "MT Reprisal",
				timelineIndex = 99,
				timerOffset = -9.5,
				uuid = "857796c3-9d86-6d89-8528-33066fdf4111",
				version = 2,
			},
			inheritedIndex = 6,
		},
	},
	[100] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "ba6620b8-1b5f-04dc-62ec-2f4229520f28",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
				mechanicTime = 563.9,
				name = "OT Stance ON",
				timelineIndex = 100,
				timerOffset = -10,
				uuid = "5c8f073c-1584-577c-8e66-85481ae7fed7",
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
							gVar = "ACR_RikuGNB3_Tankbar_AuroraSelf",
							uuid = "e550796d-c0f3-dd6b-88e7-76688062a79b",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 563.9,
				name = "Aurora Self",
				timelineIndex = 100,
				timerOffset = -15,
				uuid = "f203e79b-a9b5-ebc6-83da-8bdf3e65c6e7",
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
				mechanicTime = 563.9,
				name = "MT Bolide",
				timelineIndex = 100,
				timerOffset = -9,
				uuid = "14e032a6-87cd-9d83-8862-0e059a63076a",
				version = 2,
			},
			inheritedIndex = 5,
		},
	},
	[101] = 
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
				mechanicTime = 572,
				name = "OT Stance ON",
				timelineIndex = 101,
				uuid = "cd496444-b38f-c914-a493-7fcd699de981",
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
				mechanicTime = 572,
				name = "OT Voke",
				timelineIndex = 101,
				timerOffset = -4,
				uuid = "9b335070-181b-058b-a9f2-726f4598af45",
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
				mechanicTime = 572,
				name = "MT Shirk",
				timelineIndex = 101,
				timerOffset = -3,
				uuid = "f0347dd4-21bf-fcca-9825-b341e10b6a29",
				version = 2,
			},
			inheritedIndex = 3,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "39f47f13-ce26-6e57-fddd-d06d3ec16c43",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[102] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "03d0c3c6-3fe6-3eba-2bb2-3a846d7166b6",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[103] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "6935c8f1-272b-bde5-4ef0-711fd6e02fe1",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[104] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "d2d11164-6596-e490-3132-67660bf94014",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
							actionID = 16161,
							conditions = 
							{
								
								{
									"cdd4f40e-cd15-2e49-b4fd-03de4a08c295",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_CD",
							ignoreWeaveRules = true,
							targetSubType = "Lowest HP",
							targetType = "Party",
							uuid = "d7f89b60-ecd4-0186-bb23-f68ae59a501f",
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
							uuid = "cdd4f40e-cd15-2e49-b4fd-03de4a08c295",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 579,
				name = "MT HoS Trio",
				timelineIndex = 104,
				timerOffset = -3,
				uuid = "27d11acf-5aa1-161a-ae4e-6417b5202b70",
				version = 2,
			},
		},
	},
	[106] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "7339e2a2-3a0f-2b7e-dc39-2f585c819a12",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[108] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "8bca2840-ef9f-41b4-3fb5-570a454a44f0",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[109] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "a4dddd3b-020e-63cf-183c-df75450df26b",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[110] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "7ac348dd-e463-cee1-209b-986f55b5a20d",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
				mechanicTime = 596,
				name = "OT Reprisal",
				timelineIndex = 110,
				timerOffset = -4,
				uuid = "6922199d-552d-2e2d-b281-3cd5d757c2f2",
				version = 2,
			},
			inheritedIndex = 6,
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
				mechanicTime = 605,
				name = "OT Reprisal",
				timelineIndex = 111,
				timerOffset = -5,
				uuid = "501e83de-22c4-90b6-9218-48625e1858d1",
				version = 2,
			},
			inheritedIndex = 1,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "e2c1adb2-7af5-05b6-5548-97d4135a26e2",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[112] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "6abb4ecf-4c45-0b43-4159-b5fdc5489e3f",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[113] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "584c2cb4-36d5-ae28-5b9d-75d26e1feba4",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
				mechanicTime = 609,
				name = "MT Stance ON",
				timelineIndex = 113,
				timerOffset = -10,
				uuid = "adfa3b7f-6689-475b-9d21-d04006c270c3",
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
				mechanicTime = 609,
				name = "OT Rampart",
				timelineIndex = 113,
				timerOffset = -18.5,
				uuid = "7dff08c0-e397-b1f6-9bce-af6ede3facd1",
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
				mechanicTime = 609,
				name = "OT Nebula",
				timelineIndex = 113,
				timerOffset = -14,
				uuid = "7ba018e0-cce8-bd8c-84bc-af1a2ee6420e",
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
									"bdfb8fa5-b5f2-2131-a5e4-dff42389f8d6",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_AuroraSelf",
							uuid = "99dcc0c2-f350-8e1a-a975-f6a722cedbd7",
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
							uuid = "bdfb8fa5-b5f2-2131-a5e4-dff42389f8d6",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 609,
				name = "OT Aurora Self",
				timelineIndex = 113,
				timerOffset = -12,
				uuid = "10e6618f-290d-567c-9ded-3a68f380a754",
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
									"ea68f261-c958-d108-8dbf-960dedc1db29",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							uuid = "253c8369-0ef8-5e27-a057-74c7c60c759e",
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
							uuid = "ea68f261-c958-d108-8dbf-960dedc1db29",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 609,
				name = "OT Camo",
				timelineIndex = 113,
				timerOffset = -10,
				uuid = "e1c96c7b-2041-79e5-a83e-54443ce261fd",
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
									"68676aaf-90c3-0222-9f64-25599c6b5929",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "6e911c04-e0a0-504c-9954-1024fe54f8b1",
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
							uuid = "68676aaf-90c3-0222-9f64-25599c6b5929",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 609,
				name = "OT HoS Self",
				timelineIndex = 113,
				timerOffset = -6.5,
				uuid = "c81c5785-1904-1412-b966-e2acacac2a2e",
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
									"a0014ee6-4543-fc9f-912f-a9d6311afe4f",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumOT",
							uuid = "0b8d690f-f49f-8a2a-8228-366acfc3e701",
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
							uuid = "a0014ee6-4543-fc9f-912f-a9d6311afe4f",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 609,
				name = "MT HoS OT",
				timelineIndex = 113,
				timerOffset = -6.5,
				uuid = "f8636dfd-e553-4935-95ee-546660dfb6dc",
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
				mechanicTime = 609,
				name = "OT Stance OFF",
				timelineIndex = 113,
				uuid = "2e93d9fd-b027-1552-a1a2-e6c22dba228d",
				version = 2,
			},
		},
	},
	[114] = 
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
				mechanicTime = 622,
				name = "OT Stance OFF",
				timelineIndex = 114,
				timerOffset = -6,
				uuid = "3d2a101a-6883-494a-a9dc-83eb51e478f6",
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
				mechanicTime = 622,
				name = "MT Provoke",
				timelineIndex = 114,
				timerOffset = -4,
				uuid = "0de60b37-eb26-914b-bf2a-1878d4c52dee",
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
				mechanicTime = 622,
				name = "OT Shirk",
				timelineIndex = 114,
				timerOffset = -3,
				uuid = "915361bc-8b87-5f1d-98a6-b50c0cdc11f3",
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
				mechanicTime = 622,
				name = "MT Stance ON",
				timelineIndex = 114,
				timerOffset = -6,
				uuid = "9f9d7fd4-0ad4-d4bb-9576-1f388fd54628",
				version = 2,
			},
			inheritedIndex = 4,
		},
	},
	[115] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "ddad7e56-6a05-3912-0e05-f0e8b8001406",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[116] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "65cfe6e3-8621-1caf-9933-8da1d6579153",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[117] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 16161,
							gVar = "ACR_RikuGNB3_CD",
							ignoreWeaveRules = true,
							targetSubType = "Lowest HP",
							uuid = "271bfea8-6178-a314-acec-aca28274b669",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
				},
				conditions = 
				{
				},
				mechanicTime = 637.1,
				name = "HoS Self Trio",
				timelineIndex = 117,
				timerOffset = -5,
				uuid = "a883e045-bb57-c484-a23b-f76dcf4e7381",
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
							actionID = 3,
							gVar = "ACR_RikuGNB3_Hotbar_ArmsLength",
							ignoreWeaveRules = true,
							uuid = "342bca96-97e1-f4db-a672-428165fb9d79",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 637.1,
				name = "Sprint Trio",
				timelineIndex = 117,
				timerOffset = -10,
				uuid = "8518f99c-c6d8-4a17-8602-d1c3ea6c1c1f",
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
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "8fd8a8e5-1ea7-0bc9-769a-6d77d3a63215",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[119] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "a89329ba-641b-f75e-6fee-097c6976662a",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
							gVar = "ACR_RikuGNB3_Hotbar_Trajectory",
							uuid = "379a43b7-3a2b-280d-ba72-1f9839527eba",
							variableTogglesType = 2,
							version = 2.1,
						},
						inheritedIndex = 1,
					},
				},
				conditions = 
				{
				},
				mechanicTime = 640.1,
				name = "Trajectory",
				timelineIndex = 119,
				timerOffset = -2,
				uuid = "dfb9af22-89c4-a360-8730-ae3a4c39590d",
				version = 2,
			},
		},
	},
	[122] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "a1cab39c-6f00-68b0-0d30-d26e6672a88c",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
								
								{
									"a0d6c9dc-12e4-d078-a341-e4a7e1ffa22a",
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
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1193,
							dequeueIfLuaFalse = true,
							name = "Reprisal Check",
							partyTargetSubType = 1,
							uuid = "a0d6c9dc-12e4-d078-a341-e4a7e1ffa22a",
							version = 3,
						},
					},
				},
				mechanicTime = 651.4,
				name = "MT Reprisal",
				timelineIndex = 122,
				timerOffset = -9,
				uuid = "42598438-97d4-e0b2-8eaf-a758ac49ccbf",
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
				mechanicTime = 651.4,
				name = "OT Stance ON",
				timelineIndex = 122,
				timerOffset = -7,
				uuid = "debfb3c8-abe0-6ede-8163-d8631eccc028",
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
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "142adb88-d2ad-0a6f-85bb-4e6fab1c1931",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 651.4,
				name = "HoL",
				timelineIndex = 122,
				timerOffset = -9.5,
				uuid = "4efa556a-5bff-6eb7-b844-c8409c05b7a8",
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
							actionID = 16160,
							conditions = 
							{
								
								{
									"1df62806-0cc4-3b5c-8d51-ff9b1fd05bae",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							ignoreWeaveRules = true,
							uuid = "8dd28f88-20f5-11b2-a287-3171f3145625",
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
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							partyTargetSubType = "Furthest",
							uuid = "1df62806-0cc4-3b5c-8d51-ff9b1fd05bae",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 651.4,
				name = "HoL Trio",
				timelineIndex = 122,
				timerOffset = -14.5,
				uuid = "84f6b1f1-8c06-a537-9f26-9d19707a5d93",
				version = 2,
			},
		},
	},
	[123] = 
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
				mechanicTime = 660.4,
				name = "OT Stance ON",
				timelineIndex = 123,
				timerOffset = -10,
				uuid = "f69742bd-7d1e-b1ae-8567-f6c33ef56e6a",
				version = 2,
			},
			inheritedIndex = 1,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "5248e217-f2e3-c52b-2d31-a01935c07247",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
									"9f125e6f-64d0-d9bd-b09f-c78280093e8a",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "3d78bd8b-20e7-8732-b551-b3601d3685ce",
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
							uuid = "9f125e6f-64d0-d9bd-b09f-c78280093e8a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 660.4,
				name = "MT HoS Self",
				timelineIndex = 123,
				timerOffset = -3,
				uuid = "810dcb7d-4f68-5a36-9ed1-94dcc6b51e06",
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
									"4f55832c-abc3-e2f1-a410-3098b761bc63",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumOT",
							uuid = "32dea0b1-2530-d22f-95b7-aeefc58a7652",
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
							uuid = "4f55832c-abc3-e2f1-a410-3098b761bc63",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 660.4,
				name = "OT HoS OT",
				timelineIndex = 123,
				timerOffset = -3,
				uuid = "30a62c05-6914-9808-8a3b-f7ac8203c0a8",
				version = 2,
			},
		},
	},
	[124] = 
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
				mechanicTime = 665.4,
				name = "MT Nebula",
				timelineIndex = 124,
				timerOffset = -14,
				uuid = "261f27be-00a6-2108-acc8-6e91c93f2343",
				version = 2,
			},
			inheritedIndex = 1,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "92e3353e-26e9-f65a-f4a6-6f8c7efd0b6e",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
									"e878413c-61ff-209b-bb27-b03aff2d535a",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_AuroraSelf",
							uuid = "c70cfccc-20cc-3b51-8b48-74a457520d44",
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
							uuid = "e878413c-61ff-209b-bb27-b03aff2d535a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 665.4,
				name = "MT Aurora Self",
				timelineIndex = 124,
				timerOffset = -18,
				uuid = "caac9eb2-8a4b-351d-9db3-681c0e53e0d2",
				version = 2,
			},
			inheritedIndex = 4,
		},
	},
	[125] = 
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
				mechanicTime = 673.4,
				name = "OT Stance ON",
				timelineIndex = 125,
				timerOffset = -10,
				uuid = "0bb44b06-8909-24e9-b8dc-c31b08c5a3b2",
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
				mechanicTime = 673.4,
				name = "OT Voke",
				timelineIndex = 125,
				timerOffset = -4,
				uuid = "84dc8686-57b6-56ee-86cd-2b73cecdcef8",
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
				mechanicTime = 673.4,
				name = "MT Stance OFF",
				timelineIndex = 125,
				timerOffset = -4,
				uuid = "752ddf6d-c361-f3ec-a13f-2a52dbfdee62",
				version = 2,
			},
			inheritedIndex = 3,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "48408a29-65f2-0e85-c3f4-39479efdd919",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[126] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "c156d050-ef3d-e17c-5435-2fea15999e40",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[127] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "6929244b-f5ea-4577-1274-8ad52ead533b",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[128] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "78c8d272-bdd7-be76-d269-5db8fd0958a2",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[130] = 
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
							gVar = "ACR_RikuGNB3_Hotbar_ArmsLength",
							ignoreWeaveRules = true,
							uuid = "342bca96-97e1-f4db-a672-428165fb9d79",
							variableTogglesType = 2,
							version = 2.1,
						},
						inheritedIndex = 1,
					},
				},
				conditions = 
				{
				},
				mechanicTime = 688.9,
				name = "Sprint Trio",
				timelineIndex = 130,
				uuid = "4924d521-723a-07c3-9298-51c991b6bd23",
				version = 2,
			},
		},
	},
	[131] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 16161,
							gVar = "ACR_RikuGNB3_CD",
							ignoreWeaveRules = true,
							targetSubType = "Lowest HP",
							targetType = "Party",
							uuid = "2e9a8bd3-b21c-23c3-a4f0-14db9133775c",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
				},
				conditions = 
				{
				},
				mechanicTime = 691.4,
				name = "HoS Lowest Trio",
				timelineIndex = 131,
				timerOffset = -6.9000000953674,
				uuid = "c0b2520e-43b0-d212-838d-ee02013cc138",
				version = 2,
			},
		},
	},
	[133] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "0e4cb28a-8c80-aa6e-9c0f-2cdc32629fba",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[134] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "ded5c55b-4344-1147-3a74-2b69afb9798b",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[135] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "df967660-73f6-478c-babf-537e58134590",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
				mechanicTime = 708.5,
				name = "MT Stance ON",
				timelineIndex = 136,
				uuid = "0b5493fa-4cd6-0aef-a324-8e15bab02d52",
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
				mechanicTime = 708.5,
				name = "OT Reprisal",
				timelineIndex = 136,
				timerOffset = -5,
				uuid = "a6faa267-2872-c563-aff1-766a7882769e",
				version = 2,
			},
			inheritedIndex = 2,
		},
	},
	[137] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "5b9f240e-d385-07ea-e647-0c902c8b8c7e",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[138] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "1d87cc9f-d147-9413-92c6-85ddf48ac4cf",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[139] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "fa499604-51b9-35b8-fac4-eab2e21ba2b4",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
				mechanicTime = 721.5,
				name = "OT Rampart",
				timelineIndex = 139,
				timerOffset = -18.5,
				uuid = "7ae75317-02b9-a931-a1f2-b20ee01a21a1",
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
				mechanicTime = 721.5,
				name = "OT Nebula",
				timelineIndex = 139,
				timerOffset = -14,
				uuid = "cf3a7d24-a7a3-d5b2-ac46-2f44a53e6e80",
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
									"bdfb8fa5-b5f2-2131-a5e4-dff42389f8d6",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_AuroraSelf",
							uuid = "99dcc0c2-f350-8e1a-a975-f6a722cedbd7",
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
							uuid = "bdfb8fa5-b5f2-2131-a5e4-dff42389f8d6",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 721.5,
				name = "OT Aurora Self",
				timelineIndex = 139,
				timerOffset = -12,
				uuid = "abd2bf9b-f091-de7b-8e13-5ac7c40f72de",
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
									"ea68f261-c958-d108-8dbf-960dedc1db29",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							uuid = "253c8369-0ef8-5e27-a057-74c7c60c759e",
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
							uuid = "ea68f261-c958-d108-8dbf-960dedc1db29",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 721.5,
				name = "OT Camo",
				timelineIndex = 139,
				timerOffset = -10,
				uuid = "61f51150-b813-459f-943b-cc47c480ab5b",
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
									"68676aaf-90c3-0222-9f64-25599c6b5929",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "6e911c04-e0a0-504c-9954-1024fe54f8b1",
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
							uuid = "68676aaf-90c3-0222-9f64-25599c6b5929",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 721.5,
				name = "OT HoS Self",
				timelineIndex = 139,
				timerOffset = -6.5,
				uuid = "6ac206e3-0407-8f90-8f80-294c992f0e5c",
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
									"a0014ee6-4543-fc9f-912f-a9d6311afe4f",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumOT",
							uuid = "0b8d690f-f49f-8a2a-8228-366acfc3e701",
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
							uuid = "a0014ee6-4543-fc9f-912f-a9d6311afe4f",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 721.5,
				name = "MT HoS OT",
				timelineIndex = 139,
				timerOffset = -6.5,
				uuid = "81c9c92e-f2c0-9f6b-90dc-8c10f90bb764",
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
				mechanicTime = 721.5,
				name = "OT Stance OFF",
				timelineIndex = 139,
				uuid = "ae6a4e85-4389-d243-984e-4ae8aa59db7c",
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
				mechanicTime = 733.5,
				name = "MT Stance ON",
				timelineIndex = 140,
				timerOffset = -10,
				uuid = "eb0728ed-8f56-897d-aec8-340bc2841f63",
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
				mechanicTime = 733.5,
				name = "OT Stance OFF",
				timelineIndex = 140,
				timerOffset = -6,
				uuid = "adeb75ae-0c6e-8fc1-a07f-0b629715962a",
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
				mechanicTime = 733.5,
				name = "MT Provoke",
				timelineIndex = 140,
				timerOffset = -4,
				uuid = "de79ae6c-873e-7ffb-bead-099c40f1ffe7",
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
				mechanicTime = 733.5,
				name = "OT Shirk",
				timelineIndex = 140,
				timerOffset = -3,
				uuid = "59d3eae3-e5d0-323d-9849-defb80495b9e",
				version = 2,
			},
			inheritedIndex = 4,
		},
	},
	[141] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "78a5972f-ec51-4adb-ddb1-2269c0bcaa1f",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[142] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "5c89b392-691a-a98e-8984-0390d4b86842",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[143] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "7dc1fbbd-aa02-26b9-e12a-378b6faa096d",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
							actionID = 16161,
							gVar = "ACR_RikuGNB3_CD",
							ignoreWeaveRules = true,
							targetSubType = "Lowest HP",
							targetType = "Party",
							uuid = "2e9a8bd3-b21c-23c3-a4f0-14db9133775c",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
				},
				conditions = 
				{
				},
				mechanicTime = 745.5,
				name = "HoS Lowest Trio",
				timelineIndex = 145,
				timerOffset = -3,
				uuid = "55bed537-ae94-f137-a6cd-152f0e6f2f70",
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
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "6d798036-1bc8-380a-3f4c-23dca2fea066",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[147] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "d6e84961-f44f-c075-f213-8d5762d06891",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[148] = 
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
									"1df62806-0cc4-3b5c-8d51-ff9b1fd05bae",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							ignoreWeaveRules = true,
							uuid = "8dd28f88-20f5-11b2-a287-3171f3145625",
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
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							partyTargetSubType = "Furthest",
							uuid = "1df62806-0cc4-3b5c-8d51-ff9b1fd05bae",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 759.4,
				name = "HoL Trio",
				timelineIndex = 148,
				timerOffset = -14,
				uuid = "34100f40-a3e2-ff39-a9c0-66579e45c3cf",
				version = 2,
			},
			inheritedIndex = 1,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "1236de3c-b84c-1058-98ed-b256a64e1fac",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
							gVar = "ACR_RikuGNB3_Hotbar_ArmsLength",
							ignoreWeaveRules = true,
							uuid = "342bca96-97e1-f4db-a672-428165fb9d79",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 759.4,
				name = "Sprint Trio",
				timelineIndex = 148,
				timerOffset = -10,
				uuid = "8dd9afa1-e13f-62ad-9db8-15124695b440",
				version = 2,
			},
		},
	},
	[149] = 
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
									"51e73290-a6cd-10c1-b28e-78a00a3970e4",
									true,
								},
								
								{
									"a0d6c9dc-12e4-d078-a341-e4a7e1ffa22a",
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
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1193,
							dequeueIfLuaFalse = true,
							name = "Reprisal Check",
							partyTargetSubType = 1,
							uuid = "a0d6c9dc-12e4-d078-a341-e4a7e1ffa22a",
							version = 3,
						},
					},
				},
				mechanicTime = 767.4,
				name = "MT Reprisal",
				timelineIndex = 149,
				timerOffset = -5,
				uuid = "902d76ad-6039-86d3-909b-e512817df256",
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
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "142adb88-d2ad-0a6f-85bb-4e6fab1c1931",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 767.4,
				name = "HoL",
				timelineIndex = 149,
				timerOffset = -9.5,
				uuid = "00496b8c-5f87-8176-89df-6c85145447e3",
				version = 2,
			},
			inheritedIndex = 2,
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
				mechanicTime = 778.4,
				name = "MT Nebula",
				timelineIndex = 150,
				timerOffset = -7,
				uuid = "7a58c2fd-78d4-8760-a2ba-3c29a40958b9",
				version = 2,
			},
			inheritedIndex = 1,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "3b567cd9-c2b5-1785-b498-469b3d937589",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
									"9f125e6f-64d0-d9bd-b09f-c78280093e8a",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "3d78bd8b-20e7-8732-b551-b3601d3685ce",
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
							uuid = "9f125e6f-64d0-d9bd-b09f-c78280093e8a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 778.4,
				name = "MT HoS Self",
				timelineIndex = 150,
				timerOffset = -3,
				uuid = "d1861d8a-354a-df33-a31c-141240c8a10a",
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
									"4f55832c-abc3-e2f1-a410-3098b761bc63",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumOT",
							uuid = "32dea0b1-2530-d22f-95b7-aeefc58a7652",
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
							uuid = "4f55832c-abc3-e2f1-a410-3098b761bc63",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 778.4,
				name = "OT HoS OT",
				timelineIndex = 150,
				timerOffset = -3,
				uuid = "e4619f84-f280-cee1-b94a-b31c0249462a",
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
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "91fdb12e-83ac-ff5a-841f-1fa0e8f4761e",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
									"e878413c-61ff-209b-bb27-b03aff2d535a",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_AuroraSelf",
							uuid = "c70cfccc-20cc-3b51-8b48-74a457520d44",
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
							uuid = "e878413c-61ff-209b-bb27-b03aff2d535a",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 781.4,
				name = "MT Aurora Self",
				timelineIndex = 151,
				timerOffset = -14,
				uuid = "fc2e6fd0-3339-d40e-803e-035733e2f0d4",
				version = 2,
			},
			inheritedIndex = 3,
		},
	},
	[152] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "e7675dfb-52ad-4e77-8c6a-8379e560262b",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
									"94dbebbe-911b-c213-96b4-225a12f7a5e8",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_CD",
							uuid = "8ef49325-1e66-8427-8bef-5777f912a807",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "94dbebbe-911b-c213-96b4-225a12f7a5e8",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 789.4,
				name = "Stance ON",
				timelineIndex = 152,
				timerOffset = -10,
				uuid = "2aabbe6f-df05-f2f0-9315-96b556514093",
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
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "371ea500-4c00-ea7c-95b5-114e617cc9b0",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[154] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "d3ae4b95-a7da-1d89-56c8-f227586e6f85",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[155] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "697e7faa-533b-1e1e-9c22-1a6c1966575a",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[159] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "b8082d86-37b0-56d2-f746-0c18b0541f76",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
							gVar = "ACR_RikuGNB3_Hotbar_ArmsLength",
							ignoreWeaveRules = true,
							uuid = "342bca96-97e1-f4db-a672-428165fb9d79",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 814.4,
				name = "Sprint Trio",
				timelineIndex = 159,
				timerOffset = -2,
				uuid = "2bfb10bf-e911-5a37-86f5-af5ffb8e4c58",
				version = 2,
			},
		},
	},
	[164] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 16161,
							gVar = "ACR_RikuGNB3_CD",
							ignoreWeaveRules = true,
							targetSubType = "Lowest HP",
							targetType = "Party",
							uuid = "e1cd486f-0793-711e-9e57-4d30b8ad6349",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
				},
				conditions = 
				{
				},
				mechanicTime = 826.4,
				name = "HoS Lowest",
				timelineIndex = 164,
				timerOffset = -6,
				uuid = "782f43d8-8610-d380-b8ef-27ab1a2b4b1e",
				version = 2,
			},
		},
	},
	[165] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "1e003fdd-955c-6131-5d19-48ebf8f2990d",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
							actionID = 7548,
							gVar = "ACR_RikuGNB3_CD",
							ignoreWeaveRules = true,
							uuid = "619714f5-37da-bcad-a8b6-387a4b12d155",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 827.6,
				name = "Arms Length",
				timelineIndex = 165,
				timerOffset = -5,
				uuid = "285d0775-b810-d03a-8ea9-eab056cb9475",
				version = 2,
			},
			inheritedIndex = 3,
		},
	},
	[166] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "fb8923b4-8925-34f8-6ea3-aede115ce2a4",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[168] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "45f90d7e-76fa-052a-2404-969435328eae",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
							actionID = 16140,
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							ignoreWeaveRules = true,
							uuid = "95828401-d9e1-4543-85bd-c3f0280cd065",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 844.9,
				name = "Camo Trio",
				timelineIndex = 168,
				timerOffset = -1,
				uuid = "4eae85c1-c04f-6af8-87cb-89e267ed605a",
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
							gVar = "ACR_RikuGNB3_Hotbar_ProvokeMouse",
							targetType = "Enemy",
							uuid = "12e2b8ad-5355-73d5-9ad5-2f8e3c1549d4",
							variableIsHover = true,
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 844.9,
				name = "Provoke Nearest",
				timelineIndex = 168,
				uuid = "1cdfedc7-aaf8-d0ec-8bb0-380dbad162d7",
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
							gVar = "ACR_RikuGNB3_CD",
							ignoreWeaveRules = true,
							uuid = "a85abf0f-78fe-47b8-973f-247c41ca8865",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 844.9,
				name = "Rampart Trio",
				timelineIndex = 168,
				timerOffset = -2,
				uuid = "9549f750-38fc-5639-b896-ad52d5019037",
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
									"94dbebbe-911b-c213-96b4-225a12f7a5e8",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_CD",
							ignoreWeaveRules = true,
							uuid = "8ef49325-1e66-8427-8bef-5777f912a807",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "94dbebbe-911b-c213-96b4-225a12f7a5e8",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 844.9,
				name = "Stance ON",
				timelineIndex = 168,
				timerOffset = -10,
				uuid = "6933f11f-a74c-1ef9-987a-1e3704224fc9",
				version = 2,
			},
		},
	},
	[169] = 
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
				mechanicTime = 852.9,
				name = "OT Reprisal",
				timelineIndex = 169,
				timerOffset = -5,
				uuid = "99159485-0928-b5a9-b280-3a39403bd990",
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
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "90277bfc-5240-758f-ac9c-7ba98ffa2567",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 852.9,
				name = "HoS Self",
				timelineIndex = 169,
				timerOffset = -2.5,
				uuid = "e51b8e23-1fa4-bc61-850d-55ea7eed8294",
				version = 2,
			},
			inheritedIndex = 2,
		},
	},
	[170] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "b524cf73-06c6-840f-c442-c441eedcaa23",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[171] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "df42cf18-c000-b0f4-25bb-4796d2ce5488",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[172] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "542afa51-2853-971d-7d10-7123360efd41",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[173] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "67858426-8644-57f2-6102-1b8897878096",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[174] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "a8a145df-5923-5223-4c40-b61d9c7fdc0f",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[175] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "9dabeb44-3d14-fc88-aa31-76f255ba08f4",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
							uuid = "a833d3ae-6199-10c6-85c2-3670a11cc6bb",
							variableTogglesType = 2,
							version = 2.1,
						},
						inheritedIndex = 1,
					},
				},
				conditions = 
				{
				},
				mechanicTime = 885.5,
				name = "Sprint",
				timelineIndex = 175,
				timerOffset = -9,
				uuid = "44e259e7-676d-216d-94da-88b3ec5deb2d",
				version = 2,
			},
		},
	},
	[176] = 
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
							uuid = "4056a204-e3bd-5608-865d-38d99401a85f",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 896.5,
				name = "HoL",
				timelineIndex = 176,
				timerOffset = -14,
				uuid = "7bb8973f-d710-ef44-b3b4-0565c9ac3964",
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
							gVar = "ACR_RikuGNB3_CD",
							setTarget = true,
							targetSubType = "Furthest",
							targetType = "Enemy",
							uuid = "d7768f3c-52b5-5e2f-a9ba-e0bad7fb0844",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 896.5,
				name = "Switch Targets",
				timelineIndex = 176,
				timerOffset = -4,
				uuid = "2ca0a93d-1e12-90ec-ba79-39b6c76ad146",
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
									"51e73290-a6cd-10c1-b28e-78a00a3970e4",
									true,
								},
								
								{
									"a0d6c9dc-12e4-d078-a341-e4a7e1ffa22a",
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
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1193,
							dequeueIfLuaFalse = true,
							name = "Reprisal Check",
							partyTargetSubType = 1,
							uuid = "a0d6c9dc-12e4-d078-a341-e4a7e1ffa22a",
							version = 3,
						},
					},
				},
				mechanicTime = 896.5,
				name = "MT Reprisal",
				timelineIndex = 176,
				timerOffset = -5,
				uuid = "7daa46fb-9e45-65b8-8dda-07ebe8272fc8",
				version = 2,
			},
			inheritedIndex = 3,
		},
	},
	[178] = 
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
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "60eba393-ed5e-478d-b0ad-c871d096b43e",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 904.6,
				name = "Provoke",
				timelineIndex = 178,
				timerOffset = -2.5,
				uuid = "f21ce0dc-4282-adfb-97ed-8864c9ce8b6e",
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
							uuid = "90277bfc-5240-758f-ac9c-7ba98ffa2567",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 904.6,
				name = "HoS Self",
				timelineIndex = 178,
				timerOffset = -4,
				uuid = "cefae2bb-00d5-93a6-9829-60f9974ae946",
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
							gVar = "ACR_RikuGNB3_Tankbar_Nebula",
							uuid = "3095622c-334a-df77-a184-2fa0e43535a1",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 904.6,
				name = "Nebula",
				timelineIndex = 178,
				timerOffset = -6,
				uuid = "6e96b678-c03f-73e9-b9d4-19b6ab43a5df",
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
							gVar = "ACR_RikuGNB3_Tankbar_AuroraSelf",
							uuid = "3ee59c1e-54fd-8970-b678-43372a7bfb96",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 904.6,
				name = "Aurora Self",
				timelineIndex = 178,
				timerOffset = -8,
				uuid = "b5dd68f0-71ca-301b-85dd-fdf1309d1821",
				version = 2,
			},
			inheritedIndex = 4,
		},
	},
	[179] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "6c1be2a0-af46-391c-c44b-d9be648badd0",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[180] = 
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
				mechanicTime = 908.6,
				name = "OT Reprisal",
				timelineIndex = 180,
				timerOffset = -2,
				uuid = "1ed253e5-d9b3-8f91-ab0f-6feaf47636ba",
				version = 2,
			},
			inheritedIndex = 1,
		},
	},
	[181] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "82ad0c8b-90ac-d4ff-8eee-7f9544224d7b",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[182] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "ff7f1f7e-adc9-eea2-f1bb-d64ceeb8a0ae",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[183] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "7f33f769-de24-64cd-26f6-6a0798116c59",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[184] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "e0cef8dc-f4f6-2cb8-4d3d-e52e933691cc",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[185] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "93966257-7484-8b13-f696-b0d9c8712587",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
							uuid = "a833d3ae-6199-10c6-85c2-3670a11cc6bb",
							variableTogglesType = 2,
							version = 2.1,
						},
						inheritedIndex = 1,
					},
				},
				conditions = 
				{
				},
				mechanicTime = 947.9,
				name = "Sprint",
				timelineIndex = 185,
				timerOffset = -9,
				uuid = "b5ee1d20-c19b-1653-b4a3-20fedbb4da70",
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
							gVar = "ACR_RikuGNB3_CD",
							setTarget = true,
							targetSubType = "Furthest",
							targetType = "Enemy",
							uuid = "d7768f3c-52b5-5e2f-a9ba-e0bad7fb0844",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 947.9,
				name = "Switch Targets",
				timelineIndex = 185,
				timerOffset = 2.5,
				uuid = "8916b608-0d04-d3ce-96fc-9f09371f519f",
				version = 2,
			},
		},
	},
	[187] = 
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
							gVar = "ACR_RikuGNB3_Tankbar_AuroraSelf",
							uuid = "3ee59c1e-54fd-8970-b678-43372a7bfb96",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 960.7,
				name = "Aurora Self",
				timelineIndex = 187,
				uuid = "07b3f137-9e1f-193a-996b-4ade9c164047",
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
							gVar = "ACR_RikuGNB3_Tankbar_Rampart",
							uuid = "c48697d6-403d-cac8-9b86-08aae2cfbbd4",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 960.7,
				name = "Rampart",
				timelineIndex = 187,
				timerOffset = -19,
				uuid = "1b461d38-57e6-a4d7-89dd-761244445b02",
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
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							uuid = "eb1b5741-2a99-c501-bb8d-140338c9891e",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 960.7,
				name = "Camo",
				timelineIndex = 187,
				timerOffset = -17,
				uuid = "4d168b6d-4aee-915f-ab1d-dcbfdde5be8d",
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
									"51e73290-a6cd-10c1-b28e-78a00a3970e4",
									true,
								},
								
								{
									"a0d6c9dc-12e4-d078-a341-e4a7e1ffa22a",
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
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1193,
							dequeueIfLuaFalse = true,
							name = "Reprisal Check",
							partyTargetSubType = 1,
							uuid = "a0d6c9dc-12e4-d078-a341-e4a7e1ffa22a",
							version = 3,
						},
					},
				},
				mechanicTime = 960.7,
				name = "MT Reprisal",
				timelineIndex = 187,
				timerOffset = -9,
				uuid = "4354e4f6-8fac-2149-ae9d-4dfb7062ac7e",
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
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "90277bfc-5240-758f-ac9c-7ba98ffa2567",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 960.7,
				name = "HoS Self",
				timelineIndex = 187,
				timerOffset = -6,
				uuid = "62af84a6-f048-180e-bd84-3cceb1be3504",
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
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "60eba393-ed5e-478d-b0ad-c871d096b43e",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 960.7,
				name = "Provoke",
				timelineIndex = 187,
				timerOffset = -3,
				uuid = "0edcf165-03f2-ccad-bb0e-0c87e3ba8b12",
				version = 2,
			},
			inheritedIndex = 6,
		},
	},
	[188] = 
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
				mechanicTime = 973,
				name = "OT Reprisal",
				timelineIndex = 188,
				timerOffset = -5,
				uuid = "15a0578c-390b-950c-9086-c1281f658d62",
				version = 2,
			},
			inheritedIndex = 1,
		},
	},
	[189] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "c292efe3-e681-0847-10fd-ef8d331a9a53",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[193] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "3da4ef6c-08d3-db90-0a54-c27afe85a31c",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
				mechanicTime = 1245,
				name = "MT Provoke",
				timelineIndex = 193,
				uuid = "3e2400af-af26-4d6a-b4ab-a4f1ed7ac18c",
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
							ignoreWeaveRules = true,
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
				mechanicTime = 1245,
				name = "OT Stance OFF",
				timelineIndex = 193,
				timerOffset = -6,
				uuid = "061f014e-2ec1-9d7b-8e1d-fb6900e4cc69",
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
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "2ded5879-ca68-b4e5-2469-584ba4fb79a9",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[195] = 
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
				mechanicTime = 1257.5,
				name = "OT Stance ON",
				timelineIndex = 195,
				timerOffset = 8,
				uuid = "834faf29-39a4-dd8a-b9bf-d7afaacca645",
				version = 2,
			},
			inheritedIndex = 1,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "3737e64e-e323-35ba-7c97-0450ef9e24be",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
							uuid = "c48697d6-403d-cac8-9b86-08aae2cfbbd4",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1257.5,
				name = "Rampart",
				timelineIndex = 195,
				timerOffset = -8,
				uuid = "f42f584f-72ea-fab5-9347-7630f0db69f1",
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
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							uuid = "eb1b5741-2a99-c501-bb8d-140338c9891e",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1257.5,
				name = "Camo",
				timelineIndex = 195,
				timerOffset = -6,
				uuid = "699f3cfa-5cc4-643b-acb8-779571793cbe",
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
							uuid = "3095622c-334a-df77-a184-2fa0e43535a1",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1257.5,
				name = "Nebula",
				timelineIndex = 195,
				timerOffset = -4,
				uuid = "c346486d-2016-a30a-9b10-65feb9180726",
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
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "90277bfc-5240-758f-ac9c-7ba98ffa2567",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1257.5,
				name = "HoS Self",
				timelineIndex = 195,
				timerOffset = -2.5,
				uuid = "c86a23e6-14ca-fb6e-b743-87e8d186e55b",
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
							gVar = "ACR_RikuGNB3_Tankbar_AuroraSelf",
							uuid = "56512152-c499-f2bc-8aaa-df44134f663a",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1257.5,
				name = "Aorora Self",
				timelineIndex = 195,
				uuid = "77975052-32b3-6ff4-8671-1ebd497be3b8",
				version = 2,
			},
		},
	},
	[196] = 
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
				mechanicTime = 1270,
				name = "OT Stance ON",
				timelineIndex = 196,
				uuid = "27f70ae3-f40e-502d-ad0d-74a5bec04e53",
				version = 2,
			},
			inheritedIndex = 1,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "561b1b9b-7163-6557-0380-be29c5e413cb",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[197] = 
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
				mechanicTime = 1289.3,
				name = "MT Bolide",
				timelineIndex = 197,
				timerOffset = -3,
				uuid = "901c5e8e-26bd-8f14-8afd-c8611466d0e2",
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
				mechanicTime = 1289.3,
				name = "MT Stance OFF",
				timelineIndex = 197,
				timerOffset = 7,
				uuid = "de925598-05c3-3aa5-9931-965d6c03cbe1",
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
				mechanicTime = 1289.3,
				name = "MT Shirk",
				timelineIndex = 197,
				timerOffset = 11,
				uuid = "38f72a63-ed04-de38-a84e-27c24f8d3c46",
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
				mechanicTime = 1289.3,
				name = "MT Provoke",
				timelineIndex = 197,
				timerOffset = -10,
				uuid = "a06ba286-2dc1-86c5-9dc0-a0d178955685",
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
				mechanicTime = 1289.3,
				name = "OT Voke",
				timelineIndex = 197,
				timerOffset = 10,
				uuid = "ed2cce4f-dc19-eddb-86a4-42e93c106a48",
				version = 2,
			},
			inheritedIndex = 5,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "25a1f4a0-be9b-fbdc-4e23-693e1e11bfd0",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[198] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "18ab882d-2727-5b01-b48b-328f7793011d",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
							uuid = "e6ee4cc6-149c-c51c-898a-429e680e6eab",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1306.9,
				name = "HoL ",
				timelineIndex = 198,
				timerOffset = -7,
				uuid = "5b80caeb-0d7d-be43-8b65-726954e413c6",
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
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "32b8c330-ec6d-eb30-ac95-d38766da5ef1",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1306.9,
				name = "Reprisal",
				timelineIndex = 198,
				timerOffset = -5,
				uuid = "c8660d6a-94b9-ad18-ace5-ae79e8f8656a",
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
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumLowest",
							uuid = "9572dea8-c3d6-3adb-a537-7e238e3f6e62",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1306.9,
				name = "HoS Lowest",
				timelineIndex = 198,
				timerOffset = -3,
				uuid = "c19fc36b-5911-2e42-a315-c8d7d63aa713",
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
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "144b4b02-183d-8a56-6dc5-5f74d583c1f2",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[200] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "e7ec0009-5fa3-c5dd-f7d3-e1d7a8872d79",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
							uuid = "9572dea8-c3d6-3adb-a537-7e238e3f6e62",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1340.5,
				name = "HoS Lowest",
				timelineIndex = 200,
				timerOffset = -3,
				uuid = "f572f292-b3bd-2430-909d-2b748cb169fc",
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
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "934d009e-c7a2-2ab2-450c-785cb1d1bb4e",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
							uuid = "355bf092-cbc8-01f7-99d0-fabdd36416aa",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1352.7,
				name = "OT Bolide",
				timelineIndex = 201,
				timerOffset = -3,
				uuid = "db09517d-fb7d-18a0-b992-e78f92ecc4e3",
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
				mechanicTime = 1352.7,
				name = "OT Voke",
				timelineIndex = 201,
				timerOffset = -10,
				uuid = "46131981-ce30-c0b6-9d46-6349c4e5ced4",
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
				mechanicTime = 1352.7,
				name = "MT Stance ON",
				timelineIndex = 201,
				timerOffset = -5,
				uuid = "3ee2e95c-d16d-acdf-ab7c-0f55502ede34",
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
				mechanicTime = 1352.7,
				name = "MT Provoke",
				timelineIndex = 201,
				timerOffset = 10,
				uuid = "6a2cd815-ba0d-b22e-a511-80fe9d0d8d52",
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
				mechanicTime = 1352.7,
				name = "OT Shirk",
				timelineIndex = 201,
				timerOffset = 11,
				uuid = "6bdc82f2-ace0-d14c-9e58-bddccc06769e",
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
				mechanicTime = 1352.7,
				name = "OT Stance OFF",
				timelineIndex = 201,
				timerOffset = 7,
				uuid = "84bba86e-6c98-043c-b06f-a6b0263f859d",
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
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "8fb8b0ab-4f9b-cbcf-50d9-3165d0b4f09b",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[203] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "0bd55430-3d2c-a9b4-6993-b23aa03bc9a0",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[204] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "02c6fa05-d177-cc01-e6ea-8c0b65a88f35",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
							uuid = "c48697d6-403d-cac8-9b86-08aae2cfbbd4",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1402.7,
				name = "Rampart",
				timelineIndex = 204,
				timerOffset = -8,
				uuid = "d96611f9-7e20-df5f-ba1c-9e985321e7fd",
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
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "90277bfc-5240-758f-ac9c-7ba98ffa2567",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1402.7,
				name = "HoS Self",
				timelineIndex = 204,
				timerOffset = -2.5,
				uuid = "33abf15d-fdf3-e14b-aa7a-b4732faff09f",
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
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							uuid = "eb1b5741-2a99-c501-bb8d-140338c9891e",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1402.7,
				name = "Camo",
				timelineIndex = 204,
				timerOffset = -6,
				uuid = "a6041dcd-0365-4bc5-8379-3bb26e3e97f0",
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
							uuid = "3095622c-334a-df77-a184-2fa0e43535a1",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1402.7,
				name = "Nebula",
				timelineIndex = 204,
				timerOffset = -4,
				uuid = "87072448-2260-749a-80a0-32be2ec7c8b4",
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
							gVar = "ACR_RikuGNB3_Tankbar_AuroraSelf",
							uuid = "56512152-c499-f2bc-8aaa-df44134f663a",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1402.7,
				name = "Aorora Self",
				timelineIndex = 204,
				uuid = "1f445f7f-48d2-dd35-8418-5d6aadc4da49",
				version = 2,
			},
		},
	},
	[205] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "c3bee1da-c28d-fb56-8f44-5810a23121ca",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
			objectType = "folder",
		},
	},
	[206] = 
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
							uuid = "e6ee4cc6-149c-c51c-898a-429e680e6eab",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1441.6,
				name = "HoL ",
				timelineIndex = 206,
				timerOffset = -7,
				uuid = "e8f74233-0cad-9893-abf6-7e5408d2a280",
				version = 2,
			},
			inheritedIndex = 1,
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "UCOB\\LPDU Draws(beta)",
				uuid = "92bf30f7-4ab0-63e3-e371-76e972e59c27",
			},
			inheritanceRoot = "UCOB\\LPDU Draws(beta)",
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
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "32b8c330-ec6d-eb30-ac95-d38766da5ef1",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1441.6,
				name = "Reprisal",
				timelineIndex = 206,
				timerOffset = -7,
				uuid = "1051790a-12a0-c015-aef5-ddf7b710bfd3",
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
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumLowest",
							uuid = "9572dea8-c3d6-3adb-a537-7e238e3f6e62",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1441.6,
				name = "HoS Lowest",
				timelineIndex = 206,
				timerOffset = -3,
				uuid = "50882b13-27de-b0ce-9993-42646d93dca1",
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
				mechanicTime = 1453.7,
				name = "Sprint",
				timelineIndex = 207,
				timerOffset = -7,
				uuid = "10b45b8e-252b-d4b7-a10f-1e13a5cfd070",
				version = 2,
			},
			inheritedIndex = 1,
		},
		
		{
			data = 
			{
				actions = 
				{
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Party",
							conditionType = 8,
							jobIDList = 
							{
								19,
								32,
								37,
							},
							jobValue = "WARRIOR",
							name = "No WAR Check",
							partyTargetType = "Tank",
							uuid = "61085d0f-c0f4-9e3c-85e7-099a8092624c",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1453.7,
				name = "No WAR",
				timelineIndex = 207,
				uuid = "de5d46f3-bd03-73c6-b332-f24c9af27656",
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
							actionID = 3,
							gVar = "ACR_RikuGNB3_Hotbar_ArmsLength",
							ignoreWeaveRules = true,
							uuid = "7528167c-65f1-caba-90e9-86aefb7bbb8b",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1453.7,
				name = "Sprint Trio",
				timelineIndex = 207,
				timerOffset = -8,
				uuid = "7d748042-b9eb-12cb-9e8a-b56dcbe3b37a",
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
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "39e4a46d-e612-2fb7-9b53-92567ea1e51d",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1453.7,
				name = "HoC Self",
				timelineIndex = 207,
				uuid = "91c18292-a96a-f410-8b35-75c34ca33fe2",
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
							actionID = 25758,
							gVar = "ACR_RikuGNB3_CD",
							ignoreWeaveRules = true,
							uuid = "e13b9486-426c-fc35-8cbc-f193f3397507",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1453.7,
				name = "HoC Self Trio",
				timelineIndex = 207,
				uuid = "993810b1-82ce-8b05-a998-8df30a484c56",
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
							actionID = 16161,
							gVar = "ACR_RikuGNB3_CD",
							ignoreWeaveRules = true,
							uuid = "528961a1-e37f-7f86-8960-0312e1804275",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1453.7,
				name = "HoS Self Trio",
				timelineIndex = 207,
				uuid = "322c9673-da3c-29bb-b1ee-52b87d31154f",
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
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumLowest",
							uuid = "eae567d7-4d7b-ad79-9893-9f21731a60e7",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1453.7,
				name = "HoC Lowest",
				timelineIndex = 207,
				uuid = "39695064-5bd6-6def-b732-b97daf6b97c9",
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
							aType = "Misc",
							gVar = "ACR_RikuGNB3_CD",
							setTarget = true,
							targetName = "Garuda",
							targetType = "Enemy",
							uuid = "d60c847a-f17b-64e7-8537-80a4e892d79a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1453.7,
				name = "Target Boss",
				timeRange = true,
				timelineIndex = 207,
				timerEndOffset = 6,
				timerOffset = 2,
				timerStartOffset = -3,
				uuid = "c53773d2-db63-13b4-bd33-c7d2d03e0dae",
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
							actionID = 7531,
							gVar = "ACR_RikuDRK3_CD",
							ignoreWeaveRules = true,
							uuid = "b1a8db75-6bce-ae93-a7e5-66da979cf8bf",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1453.7,
				name = "Rampart Trio",
				timelineIndex = 207,
				uuid = "5a4a2e56-734c-d3c5-a4b0-275e277219e2",
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
				mechanicTime = 1453.7,
				name = "Camo",
				timelineIndex = 207,
				timerOffset = 3,
				uuid = "9d1a3c46-f4a8-184f-bc39-d13ec322d200",
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
							actionID = 16140,
							gVar = "ACR_RikuGNB3_CD",
							ignoreWeaveRules = true,
							uuid = "b93018a0-fcec-5531-85dd-230cbfc03cad",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1453.7,
				name = "Camo Trio",
				timelineIndex = 207,
				uuid = "c9acef5d-fb1f-976a-8f64-973e76ba1c56",
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
							gVar = "ACR_RikuGNB3_Tankbar_Nebula",
							uuid = "016857ba-a315-934d-973f-6f6669584a23",
							variableTogglesType = 3,
							version = 2.1,
						},
						inheritedIndex = 1,
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1453.7,
				name = "Nebula",
				timelineIndex = 207,
				uuid = "b96d35e1-932f-519a-aec1-4e7b2e1d8825",
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
							actionID = 16148,
							gVar = "ACR_RikuGNB3_CD",
							ignoreWeaveRules = true,
							uuid = "e5940d37-b7ff-c528-9bbe-9f5a8040ceb3",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1453.7,
				name = "Nebula Trio",
				timelineIndex = 207,
				uuid = "d7af21ed-abd9-f0b8-a27c-54e4a2148840",
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
							actionID = 36935,
							gVar = "ACR_RikuGNB3_CD",
							ignoreWeaveRules = true,
							uuid = "5dabb576-4864-9289-819b-05296bf08089",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1453.7,
				name = "Great Nebula Trio",
				timelineIndex = 207,
				uuid = "1f87fdb0-17e4-30d1-8dbb-edd755712165",
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
							conditions = 
							{
								
								{
									"de06b93c-7467-90f5-92c4-cc144593aeee",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "6977be25-ad3a-6b3d-8ba8-337646130ce7",
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
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							partyTargetSubType = "Furthest",
							uuid = "de06b93c-7467-90f5-92c4-cc144593aeee",
							version = 3,
						},
					},
				},
				mechanicTime = 1453.7,
				name = "HoL",
				timelineIndex = 207,
				uuid = "b4187841-6fb9-2122-958e-f4329492228c",
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
							actionID = 16160,
							conditions = 
							{
								
								{
									"c11aff7e-afce-282f-b5b2-5b0840719918",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_CD",
							ignoreWeaveRules = true,
							uuid = "ce5b0ac5-05c2-68f1-a49d-2a75109a656a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							partyTargetSubType = "Furthest",
							uuid = "c11aff7e-afce-282f-b5b2-5b0840719918",
							version = 3,
						},
					},
				},
				mechanicTime = 1453.7,
				name = "HoL Trio",
				timelineIndex = 207,
				uuid = "14db43e4-54b8-6d2f-9f76-a01871854012",
				version = 2,
			},
			inheritedIndex = 16,
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
				mechanicTime = 1453.7,
				name = "Aurora Self",
				timelineIndex = 207,
				timerOffset = 2,
				uuid = "b2aaa515-e963-178d-a0c2-432be91fd157",
				version = 2,
			},
			inheritedIndex = 17,
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
							uuid = "4318ef62-175e-d5da-bddc-56625f07a372",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1453.7,
				name = "Aurora Trio",
				timelineIndex = 207,
				uuid = "54b882ca-6fd6-daf8-b164-633370e9f517",
				version = 2,
			},
			inheritedIndex = 18,
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
							gVar = "ACR_RikuGNB3_Tankbar_AuroraLowest",
							uuid = "5e1cb851-071c-67bf-89cb-ff946314a2fe",
							variableTogglesType = 3,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1453.7,
				name = "Aurora Lowest",
				timelineIndex = 207,
				uuid = "688e4f05-a760-f10a-8472-3ff3d8875117",
				version = 2,
			},
			inheritedIndex = 19,
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
							gVar = "ACR_RikuGNB3_Hotbar_ArmsLength",
							uuid = "c0032b1b-7695-3470-bacc-b2877d3859b5",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1453.7,
				name = "Arms Length",
				timelineIndex = 207,
				uuid = "97ef8f56-8d35-5f01-a0c7-77592d16b1b1",
				version = 2,
			},
			inheritedIndex = 20,
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7548,
							gVar = "ACR_RikuGNB3_CD",
							ignoreWeaveRules = true,
							uuid = "d4672ee7-72ce-65d5-8610-bd25468739ca",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1453.7,
				name = "Arms Length Trio",
				timelineIndex = 207,
				uuid = "e4e35e05-1cbe-83c4-abe2-c63cf097d7d2",
				version = 2,
			},
			inheritedIndex = 21,
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
				mechanicTime = 1453.7,
				name = "MT Stance ON",
				timelineIndex = 207,
				uuid = "81405c46-5cc6-e246-9015-8c709962ea29",
				version = 2,
			},
			inheritedIndex = 22,
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
				mechanicTime = 1453.7,
				name = "OT Stance ON",
				timelineIndex = 207,
				timerOffset = -8,
				uuid = "ff352c31-699a-bbe6-a971-96be6ab526c7",
				version = 2,
			},
			inheritedIndex = 23,
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
				mechanicTime = 1453.7,
				name = "MT Stance OFF",
				timelineIndex = 207,
				timerOffset = 1,
				uuid = "e1397d7c-eaae-a6d0-ab9c-674655c2aeec",
				version = 2,
			},
			inheritedIndex = 24,
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
				mechanicTime = 1453.7,
				name = "OT Stance OFF",
				timelineIndex = 207,
				uuid = "b842b36f-8bc5-98c7-bf5f-1a4f491af167",
				version = 2,
			},
			inheritedIndex = 25,
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
				mechanicTime = 1453.7,
				name = "MT Provoke",
				timelineIndex = 207,
				timerOffset = -3,
				uuid = "56395093-343b-802d-950f-6c8b09328db6",
				version = 2,
			},
			inheritedIndex = 26,
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
									"cb92afb3-faf7-d30b-9083-2ec3ad221cc5",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "8e42e6a2-fecb-f434-96f1-2ed1f92db5dc",
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
							uuid = "cb92afb3-faf7-d30b-9083-2ec3ad221cc5",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1453.7,
				name = "OT Provoke",
				timelineIndex = 207,
				uuid = "13763fcc-89f6-0f94-987e-58dc6469c5a0",
				version = 2,
			},
			inheritedIndex = 27,
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
				mechanicTime = 1453.7,
				name = "MT HoC Self",
				timelineIndex = 207,
				timerOffset = -3.5999999046326,
				uuid = "81d0f49e-b2f2-032f-a1d5-f43c769e9ae3",
				version = 2,
			},
			inheritedIndex = 28,
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
				mechanicTime = 1453.7,
				name = "MT HoC OT",
				timelineIndex = 207,
				timerOffset = -3.5,
				uuid = "1066f577-a933-2ff8-99ab-5441eae8782f",
				version = 2,
			},
			inheritedIndex = 29,
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
				mechanicTime = 1453.7,
				name = "OT HoC Self",
				timelineIndex = 207,
				timerOffset = -3.5,
				uuid = "5f04d073-2589-28bf-b380-a059f1276866",
				version = 2,
			},
			inheritedIndex = 30,
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
				mechanicTime = 1453.7,
				name = "OT HoC OT",
				timelineIndex = 207,
				timerOffset = -4,
				uuid = "55cd7f2a-79df-4ede-bc14-e4f23bc1d04c",
				version = 2,
			},
			inheritedIndex = 31,
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
									"0d6e3516-f44f-074a-ace0-98e88888e335",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumLowest",
							uuid = "7e7e0c84-157a-951d-975a-e3bf23624438",
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
							uuid = "0d6e3516-f44f-074a-ace0-98e88888e335",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1453.7,
				name = "MT HoC Lowest",
				timelineIndex = 207,
				uuid = "0543105a-74a3-b08a-83a5-1931f32b1b5f",
				version = 2,
			},
			inheritedIndex = 32,
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
									"fa43caa8-221b-f5e1-8a8f-e9004c0db5d0",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumLowest",
							uuid = "e835225d-1446-5e7a-8d82-accfd1cbd6c6",
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
							uuid = "fa43caa8-221b-f5e1-8a8f-e9004c0db5d0",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1453.7,
				name = "OT HoC Lowest",
				timelineIndex = 207,
				uuid = "6c0ecf55-6665-1058-b813-d469e8b785c2",
				version = 2,
			},
			inheritedIndex = 33,
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
				mechanicTime = 1453.7,
				name = "MT Aurora Self",
				timelineIndex = 207,
				timerOffset = -10,
				uuid = "c6635a0f-2dd4-5c81-b1ac-58a4e817dd5b",
				version = 2,
			},
			inheritedIndex = 34,
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
				mechanicTime = 1453.7,
				name = "OT Aurora Self",
				timelineIndex = 207,
				timerOffset = -17,
				uuid = "3c6e43cb-865f-4a40-a01c-17fda4840d44",
				version = 2,
			},
			inheritedIndex = 35,
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
									"f76fc024-ea61-f9fc-aac8-33b9fdda819f",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_AuroraOT",
							uuid = "b97e38cc-c76a-c8b3-bdd5-c65dbf44feef",
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
							uuid = "f76fc024-ea61-f9fc-aac8-33b9fdda819f",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1453.7,
				name = "MT Aurora OT",
				timelineIndex = 207,
				uuid = "94a58028-c934-65d9-a32b-1a0c18e487af",
				version = 2,
			},
			inheritedIndex = 36,
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
									"03f86524-8564-71a4-bb8b-ae82bceb95e2",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_AuroraOT",
							uuid = "5593322f-1dca-896b-a6f5-235d79eff91d",
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
							uuid = "03f86524-8564-71a4-bb8b-ae82bceb95e2",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1453.7,
				name = "OT Aurora OT",
				timelineIndex = 207,
				uuid = "80775626-a55b-31f3-96b4-eeb2e7a11b42",
				version = 2,
			},
			inheritedIndex = 37,
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
									"8c6e4dfb-9653-ea22-851b-70859e83b9c2",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_AuroraLowest",
							uuid = "0a5bfc4c-b999-9c94-b2b2-9d0ca48b6e6e",
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
							uuid = "8c6e4dfb-9653-ea22-851b-70859e83b9c2",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1453.7,
				name = "MT Aurora Lowest",
				timelineIndex = 207,
				uuid = "3a8ea0a1-b309-307d-9452-66975861e72e",
				version = 2,
			},
			inheritedIndex = 38,
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
									"cb844fd1-ebda-2dcc-b8be-0f4df4a54f8f",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_AuroraLowest",
							uuid = "0f9ece8d-77cb-e83a-a540-595a5a5adb5f",
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
							uuid = "cb844fd1-ebda-2dcc-b8be-0f4df4a54f8f",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1453.7,
				name = "OT Aurora Lowest",
				timelineIndex = 207,
				uuid = "ca86df8e-14ba-a913-b5f4-83fb7b21dc52",
				version = 2,
			},
			inheritedIndex = 39,
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
				mechanicTime = 1453.7,
				name = "OT Reprisal",
				timelineIndex = 207,
				timerOffset = -9,
				uuid = "0d578c8e-41a4-4000-baf6-53f49a6254b5",
				version = 2,
			},
			inheritedIndex = 40,
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
				mechanicTime = 1453.7,
				name = "MT Rampart",
				timelineIndex = 207,
				timerOffset = -3,
				uuid = "680238af-79a1-577a-9fe5-dd90bec7712b",
				version = 2,
			},
			inheritedIndex = 41,
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
				mechanicTime = 1453.7,
				name = "OT Rampart",
				timelineIndex = 207,
				timerOffset = -15,
				uuid = "2adb0c45-4a46-2621-98ac-adff810521ed",
				version = 2,
			},
			inheritedIndex = 42,
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
				mechanicTime = 1453.7,
				name = "MT Camo",
				timelineIndex = 207,
				timerOffset = -5,
				uuid = "70b09e72-33a4-208c-9e13-930b504898eb",
				version = 2,
			},
			inheritedIndex = 43,
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
				mechanicTime = 1453.7,
				name = "OT Camo",
				timelineIndex = 207,
				timerOffset = -10,
				uuid = "eca982ec-e5aa-fd0b-8464-5e1042ca0a54",
				version = 2,
			},
			inheritedIndex = 44,
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
							uuid = "5cbd772f-a061-78ad-92f1-16a49c0a2c12",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1453.7,
				name = "MT Nebula",
				timelineIndex = 207,
				timerOffset = -13,
				uuid = "54973d32-823b-8689-8dce-bdefcf4fae5c",
				version = 2,
			},
			inheritedIndex = 45,
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
				mechanicTime = 1453.7,
				name = "OT Nebula",
				timelineIndex = 207,
				timerOffset = -13,
				uuid = "befadced-dd6e-03fe-a698-d1aff3c52691",
				version = 2,
			},
			inheritedIndex = 46,
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
				mechanicTime = 1453.7,
				name = "MT Reprisal",
				timelineIndex = 207,
				timerOffset = -9,
				uuid = "48ef897c-a741-4287-9b50-445274dfcaa6",
				version = 2,
			},
			inheritedIndex = 47,
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
				mechanicTime = 1453.7,
				name = "MT HoL",
				timelineIndex = 207,
				timerOffset = -11,
				uuid = "2807e3fa-7748-e489-88cb-9e9cfe1a8ac2",
				version = 2,
			},
			inheritedIndex = 48,
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
									"41b31193-f568-bdf5-9b31-9f6762e77702",
									true,
								},
								
								{
									"2b39d405-c073-2aa2-b18c-0a2227f83f8d",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "d0fd257a-3c43-877d-88b4-75f4c8b99e72",
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
							uuid = "41b31193-f568-bdf5-9b31-9f6762e77702",
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
							uuid = "2b39d405-c073-2aa2-b18c-0a2227f83f8d",
							version = 3,
						},
					},
				},
				mechanicTime = 1453.7,
				name = "OT HoL",
				timelineIndex = 207,
				uuid = "38026a56-323b-5bb9-981f-71dae18058c3",
				version = 2,
			},
			inheritedIndex = 49,
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
				mechanicTime = 1453.7,
				name = "MT Bolide",
				timelineIndex = 207,
				timerOffset = -8.5,
				uuid = "f9338bf2-1e07-1287-b0fa-6d56548c6ec0",
				version = 2,
			},
			inheritedIndex = 50,
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
				mechanicTime = 1453.7,
				name = "OT Bolide",
				timelineIndex = 207,
				timerOffset = -4,
				uuid = "97d3cda9-1938-fa78-a2dc-1ef65542fa66",
				version = 2,
			},
			inheritedIndex = 51,
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
				mechanicTime = 1453.7,
				name = "MT Shirk",
				timelineIndex = 207,
				timerOffset = -1,
				uuid = "7856d6da-9493-4100-9374-d086c92bc835",
				version = 2,
			},
			inheritedIndex = 52,
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
				mechanicTime = 1453.7,
				name = "OT Shirk",
				timelineIndex = 207,
				timerOffset = -1,
				uuid = "f0779e25-6a09-5a40-b86a-6fdeb492475e",
				version = 2,
			},
			inheritedIndex = 53,
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
									"ac43e95b-b0c0-c119-9319-04e1b1cc3065",
									true,
								},
								
								{
									"d1291b7c-0d19-59f6-a0df-f894097792f3",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Rampart",
							uuid = "31f25b2d-fe96-6c58-8814-9dfac8a2f5d8",
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
							uuid = "ac43e95b-b0c0-c119-9319-04e1b1cc3065",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							conditionType = 8,
							jobIDList = 
							{
								21,
							},
							jobValue = "WARRIOR",
							name = "With WAR Check",
							partyTargetType = "Tank",
							uuid = "d1291b7c-0d19-59f6-a0df-f894097792f3",
							version = 3,
						},
						inheritedIndex = 2,
					},
				},
				mechanicTime = 1453.7,
				name = "OT Rampart [WithWAR]",
				timelineIndex = 207,
				uuid = "f182fa8e-405b-aa09-a228-7acb64d2ff52",
				version = 2,
			},
			inheritedIndex = 54,
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
									"d956ca6d-a127-76fc-a535-e27c396dbc39",
									true,
								},
								
								{
									"e1f0dc0e-e525-45f2-b974-e4b63f638b65",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							uuid = "99160d1d-5902-e12e-a432-6e43549bd34d",
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
							uuid = "d956ca6d-a127-76fc-a535-e27c396dbc39",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							conditionType = 8,
							jobIDList = 
							{
								21,
							},
							jobValue = "WARRIOR",
							name = "With WAR Check",
							partyTargetType = "Tank",
							uuid = "e1f0dc0e-e525-45f2-b974-e4b63f638b65",
							version = 3,
						},
						inheritedIndex = 2,
					},
				},
				mechanicTime = 1453.7,
				name = "OT Camo [WithWAR]",
				timelineIndex = 207,
				uuid = "72109d5e-8b4a-f5f3-a844-7ba0c1a80d50",
				version = 2,
			},
			inheritedIndex = 55,
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
									"2fe43c65-4818-85f6-9a4b-bf803ee8a43e",
									true,
								},
								
								{
									"2fa289a6-02a4-6444-bb9c-1e94823c91c1",
									true,
								},
								
								{
									"8f9a01d7-9929-08ed-a1fd-43fe80bd2bf4",
									true,
								},
								
								{
									"8b047946-6997-0478-918b-4867b1547dda",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "8cfc3582-adef-f7f5-9ad9-70155a44ae9f",
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
							uuid = "2fe43c65-4818-85f6-9a4b-bf803ee8a43e",
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
							uuid = "2fa289a6-02a4-6444-bb9c-1e94823c91c1",
							version = 3,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							category = "Party",
							conditionType = 8,
							jobIDList = 
							{
								21,
							},
							jobValue = "WARRIOR",
							name = "With WAR Check",
							partyTargetType = "Tank",
							uuid = "8b047946-6997-0478-918b-4867b1547dda",
							version = 3,
						},
						inheritedIndex = 3,
					},
					
					{
						data = 
						{
							comparator = 2,
							conditionType = 6,
							dequeueIfLuaFalse = true,
							inRangeValue = 5,
							name = "Range Check",
							uuid = "8f9a01d7-9929-08ed-a1fd-43fe80bd2bf4",
							version = 3,
						},
					},
				},
				mechanicTime = 1453.7,
				name = "OT Reprisal [WithWAR]",
				timelineIndex = 207,
				timerOffset = -5,
				uuid = "6387d016-c5c7-13f8-8bbb-c8aac08cd0dd",
				version = 2,
			},
			inheritedIndex = 56,
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
							gVar = "ACR_RikuGNB3_Potion",
							uuid = "48c94a2c-2e06-53e5-85b8-63222775520f",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_RikuGNB3_AOE",
							uuid = "a449e8bf-6208-0eea-9f8b-c43df6d6b14c",
							version = 2.1,
						},
						inheritedIndex = 2,
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_RikuGNB3_CD",
							uuid = "1e64d6a6-d7ff-3bdc-8116-602703bf6d8f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_RikuGNB3_Bloodfest",
							uuid = "c848aefd-fcfc-6b6c-a735-954400b1051d",
							version = 2.1,
						},
						inheritedIndex = 4,
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_RikuGNB3_BowShock",
							uuid = "34d80ad6-d68a-1cd3-a31e-e055d57d8c7f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_RikuGNB3_NoMercy",
							uuid = "5285a3f5-ed66-6d3a-9aeb-9ef4114ae3cf",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_RikuGNB3_DoubleDown",
							uuid = "192e2c5d-cbb3-2c99-a1ed-b959c6d68e04",
							version = 2.1,
						},
						inheritedIndex = 7,
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_RikuGNB3_GnashingFang",
							uuid = "f8797dc4-9fbb-15c7-bedb-d61c6bc7fe35",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_RikuGNB3_HoldGauge",
							gVarValue = 2,
							uuid = "fa2e3760-87e2-9b41-bdb2-20a86624f35d",
							version = 2.1,
						},
						inheritedIndex = 9,
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_RikuGNB3_ForceAOE",
							gVarValue = 2,
							uuid = "9ce3698f-f2ee-e834-91c7-72a71222f3c7",
							version = 2.1,
						},
						inheritedIndex = 10,
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1453.7,
				name = "ALL CDS ON",
				timelineIndex = 207,
				uuid = "70f7a54c-681d-0f02-8c7d-7e4fd6655950",
				version = 2,
			},
			inheritedIndex = 57,
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
				mechanicTime = 1453.7,
				name = "Rampart",
				timelineIndex = 207,
				timerOffset = 4,
				uuid = "4069c96e-c4c9-48c7-98cf-5f04a82ab85c",
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
									"b23e1d07-d170-2a1b-8780-0bb2a76821ad",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Sprint",
							uuid = "f294c96d-c2a3-395c-88b8-442afd9b39ed",
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
							uuid = "b23e1d07-d170-2a1b-8780-0bb2a76821ad",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1453.7,
				name = "MT Sprint",
				timelineIndex = 207,
				uuid = "851c26d8-54cf-b31e-9249-0cc116d73ac5",
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
									"52aff81a-c0b0-b74e-8d58-2259ff012ca3",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Sprint",
							uuid = "3eff1fa0-545f-c4bd-b721-b3804720c5ea",
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
							uuid = "52aff81a-c0b0-b74e-8d58-2259ff012ca3",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1453.7,
				name = "OT Sprint",
				timelineIndex = 207,
				uuid = "b204a945-7eea-ed11-bc9a-1f339bc1d74f",
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
									"d3bd356d-7632-348e-ab54-3c2b86c52502",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumMouse",
							targetSubType = "Topmost Partylist",
							targetType = "Melee DPS",
							uuid = "9ee5160d-a503-1f35-925d-41f6d7d23057",
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
							uuid = "d3bd356d-7632-348e-ab54-3c2b86c52502",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1453.7,
				name = "MT HoC Melee TopMost",
				timelineIndex = 207,
				uuid = "9291e262-5d57-1f6b-9541-78bd69f81225",
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
									"802187b1-7908-9fcf-87b3-e7533bc1ae35",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumMouse",
							targetSubType = "Bottom-most Partylist",
							targetType = "Melee DPS",
							uuid = "eb1010cb-541c-a510-b4f7-5bf1e01322f5",
							variableIsHover = true,
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
							uuid = "802187b1-7908-9fcf-87b3-e7533bc1ae35",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1453.7,
				name = "OT HoC Melee BottomMost",
				timelineIndex = 207,
				uuid = "c1bc4771-1fdb-a210-a216-09cbb6d6dec2",
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
							gVar = "ACR_RikuGNB3_CD",
							gVarValue = 2,
							uuid = "b9a0fba8-df26-3ab9-8f5c-c77f3e0eda37",
							version = 2.1,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_RikuGNB3_AOE",
							gVarValue = 2,
							uuid = "cd221c9d-1aee-27eb-82ff-1674abb26157",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_RikuGNB3_Potion",
							gVarValue = 2,
							uuid = "9b60c967-fcf5-f55e-a05f-08f22d17e303",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_RikuGNB3_Bloodfest",
							gVarValue = 2,
							uuid = "72efc2e4-4c30-b964-a8b2-340aa6d201af",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_RikuGNB3_BowShock",
							gVarValue = 2,
							uuid = "65bcbd00-814f-633c-867e-675a697f27c2",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_RikuGNB3_NoMercy",
							gVarValue = 2,
							uuid = "548cd7c3-a59c-c167-a98d-3384bde14725",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_RikuGNB3_DoubleDown",
							gVarValue = 2,
							uuid = "655172a6-2a1f-21dc-893e-af3edbe17da9",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_RikuGNB3_GnashingFang",
							gVarValue = 2,
							uuid = "3ca21eb3-a1d3-f2a8-bb3f-1c4e0e41ece7",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_RikuGNB3_HoldGauge",
							uuid = "6cfd44b7-f4cb-bb64-a6a6-5777e0697344",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1453.7,
				name = "ALL CDS OFF",
				timelineIndex = 207,
				uuid = "6f1d6ba8-503f-b989-b81c-c4fe8c951b71",
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
							gVar = "ACR_RikuGNB3_Hotbar_Trajectory",
							uuid = "9299e11d-1517-f997-af65-c1f7ad880fd2",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1453.7,
				name = "Trajectory",
				timelineIndex = 207,
				uuid = "a4f77060-675c-f51f-ad81-5dbfbe821e6d",
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
					
					{
						data = 
						{
							category = "Party",
							conditionType = 8,
							jobIDList = 
							{
								21,
								32,
								37,
							},
							jobValue = "WARRIOR",
							name = "No PLD Check",
							partyTargetType = "Tank",
							uuid = "aaba39fa-eb2a-ae3a-9b21-36a043945f72",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1453.7,
				name = "No PLD",
				timelineIndex = 207,
				uuid = "c0ecff9c-5ddd-4613-bfbb-ed0aab0466ea",
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
					
					{
						data = 
						{
							category = "Party",
							conditionType = 8,
							jobIDList = 
							{
								19,
							},
							jobValue = "WARRIOR",
							name = "With PLD Check",
							partyTargetType = "Tank",
							uuid = "d9db1cfa-61d7-1f8c-b28a-8b7b0d828481",
							version = 3,
						},
					},
				},
				mechanicTime = 1453.7,
				name = "With PLD",
				timelineIndex = 207,
				uuid = "b4d9c275-bbfe-60ee-8460-8ef3931ced1a",
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
					
					{
						data = 
						{
							category = "Party",
							conditionType = 8,
							jobIDList = 
							{
								21,
							},
							jobValue = "WARRIOR",
							name = "With WAR Check",
							partyTargetType = "Tank",
							uuid = "3a886051-c688-bf8f-acb4-fe17f585115d",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1453.7,
				name = "With WAR",
				timelineIndex = 207,
				uuid = "d8a71792-9d04-16b7-89eb-e276741e68c5",
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
									"9caa9889-4191-ae39-b011-7513b56f2943",
									true,
								},
								
								{
									"a3a87675-dc5b-d3f7-a968-44c2376938d1",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_ShirkOT",
							uuid = "1ac66ace-6dd5-8ea5-8de2-116472f5078e",
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
							uuid = "9caa9889-4191-ae39-b011-7513b56f2943",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							conditionType = 8,
							jobIDList = 
							{
								21,
							},
							jobValue = "WARRIOR",
							name = "With WAR Check",
							partyTargetType = "Tank",
							uuid = "a3a87675-dc5b-d3f7-a968-44c2376938d1",
							version = 3,
						},
						inheritedIndex = 2,
					},
				},
				mechanicTime = 1453.7,
				name = "OT Shirk [WithWAR]",
				timelineIndex = 207,
				uuid = "e95ea599-8582-876f-9bf4-e058180a0d61",
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
									"f41c7967-58bf-dc6b-a873-a24749201327",
									true,
								},
								
								{
									"2134bff8-a921-d597-b953-74ffb23342fc",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "b77ff8cf-2ef7-7626-b6ff-0f94105a358f",
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
							uuid = "f41c7967-58bf-dc6b-a873-a24749201327",
							version = 3,
						},
						inheritedIndex = 1,
					},
					
					{
						data = 
						{
							category = "Party",
							conditionType = 8,
							jobIDList = 
							{
								21,
							},
							jobValue = "WARRIOR",
							name = "With WAR Check",
							partyTargetType = "Tank",
							uuid = "2134bff8-a921-d597-b953-74ffb23342fc",
							version = 3,
						},
						inheritedIndex = 2,
					},
				},
				mechanicTime = 1453.7,
				name = "OT HoC Self [WithWAR]",
				timelineIndex = 207,
				timerOffset = -3,
				uuid = "569ed59a-246c-c653-b0c5-24ba73b45a77",
				version = 2,
			},
			inheritedIndex = 69,
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
									"b5310217-a7ab-5c09-b406-b014823fcc6f",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumOT",
							uuid = "9399d674-d88d-981c-89be-e77587cd7d9f",
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
							category = "Party",
							conditionType = 8,
							jobIDList = 
							{
								19,
								32,
								37,
							},
							jobValue = "WARRIOR",
							name = "No WAR Check",
							partyTargetType = "Tank",
							uuid = "b5310217-a7ab-5c09-b406-b014823fcc6f",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1453.7,
				name = "OT HoC OT [NOWAR]",
				timelineIndex = 207,
				timerOffset = -6,
				uuid = "150195d7-6777-45d1-bb66-fd612547f3b4",
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
					
					{
						data = 
						{
							conditionType = 3,
							hpValue = 5,
							uuid = "67d2fa7e-23c2-64c8-82c7-d88597141c68",
							version = 3,
						},
						inheritedIndex = 1,
					},
				},
				mechanicTime = 1453.7,
				name = "Target HP Check",
				timelineIndex = 207,
				uuid = "eaeaec16-a17e-9af3-8ed0-bae7cc855fb2",
				version = 2,
			},
		},
	},
	inheritedProfiles = 
	{
		"UCOB\\LPDU Draws(beta)",
	},
	timelineName = "ucob",
	version = "1.0.3",
}



return tbl
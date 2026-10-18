local tbl = 
{
	
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "faa05d0b-6439-98c7-f1cd-560deb6e1c1b",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	}, 
	[4] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "1c3b81b6-a2e6-05fa-b05d-4d6863653406",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[6] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "WAR rotation controls",
				uuid = "e9467d25-f758-6b29-ad8e-848e25902a4e",
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
									"18db789f-73cf-98e9-b758-dd4a8e2dd0fb",
									true,
								},
								
								{
									"6536cb93-a317-0713-85f2-5822a886a7d2",
									true,
								},
							},
							holdActionDuration = 5,
							holdActionID = 25753,
							uuid = "4cef4b60-7786-e707-8007-aa7a16737a27",
							version = 2.1,
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
							jobValue = "WARRIOR",
							uuid = "18db789f-73cf-98e9-b758-dd4a8e2dd0fb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "Assigned tanks",
							uuid = "6536cb93-a317-0713-85f2-5822a886a7d2",
							version = 3,
						},
					},
				},
				displayPath = "WAR rotation controls",
				mechanicTime = 20.4,
				name = "[WAR LPDU] Hold Primal",
				timeRange = true,
				timelineIndex = 6,
				timerEndOffset = -2,
				timerStartOffset = -5,
				uuid = "a3dcc0a5-2a34-d97d-bdc1-a61687284caa",
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
				name = "Frureactions\\lpdu strats",
				uuid = "581e2eb1-3938-d995-117e-c27ffb928001",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[9] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "25cc1683-65a0-83df-efc1-1d3570ea7953",
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
				uuid = "635be2d3-7513-d057-fdb0-90e9de7920a3",
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
				uuid = "41e79232-a4bd-5136-ca92-4a3865ba5b42",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[12] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "c8056fcd-e09f-fe31-5a57-c60f8958ec5d",
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
				uuid = "a4be930c-f3b5-0b80-a6f2-cb0e5863b19c",
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
				uuid = "7a0910fe-3300-e80a-0e5e-bb1cf0f7c18e",
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
				uuid = "c2d58ed9-304c-36e5-9474-2a2347b58769",
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
				uuid = "cc601a28-a659-a0a4-1bb5-64c2149740b8",
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
				uuid = "dddf859b-bb36-0c6f-0845-3e5122d605ab",
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
				uuid = "250123da-d62f-9eee-d546-dba0b2f04baa",
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
				uuid = "f5bad81a-f935-429e-b266-6c74507914ea",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[21] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "9a636fdb-de0b-f6df-6959-c6f52906a4eb",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[22] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "399543b4-a3fd-e6c8-cf9d-fcda3bc03b04",
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
				uuid = "15514435-ca45-7f79-887c-5e9b6d8f9ec5",
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
				uuid = "a3f138c6-5ddf-5c52-4e83-34d0b2d1f616",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[25] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "46b58267-da05-ebf3-98a0-c281ab8b8db7",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "WAR rotation controls",
				uuid = "2f1c5733-0f07-f7ad-aa28-cc9f50903928",
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
							actionLua = "ACR_RikuWAR3_Jumps = false\nself.used=true",
							conditions = 
							{
								
								{
									"2e8d3d60-b716-39e3-9616-1bc206c68aba",
									true,
								},
								
								{
									"cd4fa797-f476-479c-8be0-2c73c66a08dd",
									true,
								},
							},
							name = "WAR Disable Jumps",
							uuid = "089f98cb-599c-768e-a4f7-e09b1d4ac21c",
							version = 2.1,
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
							jobValue = "WARRIOR",
							uuid = "2e8d3d60-b716-39e3-9616-1bc206c68aba",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "Assigned tanks",
							uuid = "cd4fa797-f476-479c-8be0-2c73c66a08dd",
							version = 3,
						},
					},
				},
				displayPath = "WAR rotation controls",
				mechanicTime = 105.8,
				name = "[WAR LPDU] Disable Jumps",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = -2,
				timerStartOffset = -5,
				uuid = "7b2814ef-7f6a-d902-bbac-8eeba59892f9",
				version = 2,
			},
		},
	},
	[26] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "d6b4f310-9649-31ac-0073-7686fb499c60",
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
				uuid = "a843a7c1-c11b-4a6d-2d6d-4827c4ac8f11",
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
				uuid = "a1c03672-d75d-3d26-4f5b-6c0c48bcc282",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "WAR rotation controls",
				uuid = "f15296d9-5f35-1de0-a619-4041993ff5d5",
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
							actionLua = "ACR_RikuWAR3_Jumps = true\nself.used=true",
							conditions = 
							{
								
								{
									"ffe0b39f-ffa8-d473-b255-0a242c44688b",
									true,
								},
								
								{
									"7bb60e84-7612-6afd-ab7c-c66e9b902001",
									true,
								},
							},
							name = "WAR Enable Jumps",
							uuid = "6e9ef734-81af-ac55-8366-292b67c1474c",
							version = 2.1,
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
							jobValue = "WARRIOR",
							uuid = "ffe0b39f-ffa8-d473-b255-0a242c44688b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "Assigned tanks",
							uuid = "7bb60e84-7612-6afd-ab7c-c66e9b902001",
							version = 3,
						},
					},
				},
				displayPath = "WAR rotation controls",
				mechanicTime = 113.7,
				name = "[WAR LPDU] Enable Jumps",
				timeRange = true,
				timelineIndex = 28,
				timerEndOffset = 3.5,
				timerStartOffset = 0.5,
				uuid = "54c6692d-3476-e793-b146-634dae80d96c",
				version = 2,
			},
		},
	},
	[29] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "b6882413-dca5-0bc7-72a2-48cdcae234e3",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[30] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "15a63c31-43e7-9145-0c0d-354b9ce57741",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[32] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "aa1a0e57-ff5e-976b-99b0-76a53b5751e7",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "WAR rotation controls",
				uuid = "83c3b598-ca7d-d509-8eb2-919381799211",
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
							actionLua = "ACR_RikuWAR3_CD = false\nself.used=true",
							conditions = 
							{
								
								{
									"8742f9a2-9414-eeb3-93c3-7484fc2e5ed1",
									true,
								},
								
								{
									"43fb8cf1-ffcf-4852-8163-100af148bcad",
									true,
								},
							},
							name = "WAR Hold CD",
							uuid = "38e8b7c3-0754-f1ff-a835-0578818f5cc3",
							version = 2.1,
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
							jobValue = "WARRIOR",
							uuid = "8742f9a2-9414-eeb3-93c3-7484fc2e5ed1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "Assigned tanks",
							uuid = "43fb8cf1-ffcf-4852-8163-100af148bcad",
							version = 3,
						},
					},
				},
				displayPath = "WAR rotation controls",
				mechanicTime = 140.9,
				name = "[WAR LPDU] Hold CD",
				timeRange = true,
				timelineIndex = 32,
				timerStartOffset = -10,
				uuid = "9f1640aa-e3f5-ed25-80ae-5315051a6f0b",
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
				uuid = "d9c38f36-26d1-076a-b394-5c6498930846",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "WAR rotation controls",
				uuid = "21026927-ba48-edbf-82ce-2272fb523440",
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
							actionLua = "ACR_RikuWAR3_Jumps = false\nself.used=true",
							conditions = 
							{
								
								{
									"22ee6415-3f3b-fe72-8cda-39e413c01ec8",
									true,
								},
								
								{
									"cfa4ad1d-f659-8e56-8127-4ef9fdee79cb",
									true,
								},
							},
							name = "WAR Disable Jumps",
							uuid = "f01f980f-cfb1-7be0-b34c-2612288476a9",
							version = 2.1,
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
							jobValue = "WARRIOR",
							uuid = "22ee6415-3f3b-fe72-8cda-39e413c01ec8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "Assigned tanks",
							uuid = "cfa4ad1d-f659-8e56-8127-4ef9fdee79cb",
							version = 3,
						},
					},
				},
				displayPath = "WAR rotation controls",
				mechanicTime = 142.9,
				name = "[WAR LPDU] Disable Jumps",
				timeRange = true,
				timelineIndex = 33,
				timerEndOffset = 3,
				uuid = "b272617e-5f4f-d516-b9af-02572ecbee91",
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
				name = "Frureactions\\lpdu strats",
				uuid = "655274e5-9b04-8191-0519-171709f313b5",
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
				uuid = "db5fdea4-d1a1-8ee0-fd41-e2f62e371334",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "WAR rotation controls",
				uuid = "1e837a58-6a17-58f5-a049-f5226360d2ee",
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
							actionLua = "ACR_RikuWAR3_Jumps = true\nself.used=true",
							conditions = 
							{
								
								{
									"eacc1e4d-b9a8-fd3f-b645-3618561437bf",
									true,
								},
								
								{
									"4c9ebff2-af15-c34e-9e01-64ccfda26dd2",
									true,
								},
							},
							name = "WAR Enable Jumps",
							uuid = "4907a981-9feb-1fb8-bef1-9f64a0c1509f",
							version = 2.1,
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
							jobValue = "WARRIOR",
							uuid = "eacc1e4d-b9a8-fd3f-b645-3618561437bf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "Assigned tanks",
							uuid = "4c9ebff2-af15-c34e-9e01-64ccfda26dd2",
							version = 3,
						},
					},
				},
				displayPath = "WAR rotation controls",
				mechanicTime = 145.6,
				name = "[WAR LPDU] Enable Jumps",
				timeRange = true,
				timelineIndex = 35,
				timerEndOffset = 5,
				timerStartOffset = 2,
				uuid = "cad26409-a098-0074-b838-9f86f6112076",
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
				uuid = "6807260a-8929-e896-09f6-7840ea5ca79a",
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
				uuid = "8358d198-16a4-e35c-f606-72e2ca8f43e8",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "WAR rotation controls",
				uuid = "ecfcb9c2-a389-8b34-8cb5-6174483820fc",
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
							actionLua = "ACR_RikuWAR3_CD = true\nself.used=true",
							conditions = 
							{
								
								{
									"7e2fe91f-a7e2-ab5e-98a8-7cd79a8c7d8f",
									true,
								},
								
								{
									"31e1dfeb-28cf-dbdc-9254-7a5fdf0efa36",
									true,
								},
							},
							name = "WAR Enable CD",
							uuid = "49dba884-a9d1-fd31-86db-ff2de1741e6b",
							version = 2.1,
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
							jobValue = "WARRIOR",
							uuid = "7e2fe91f-a7e2-ab5e-98a8-7cd79a8c7d8f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "Assigned tanks",
							uuid = "31e1dfeb-28cf-dbdc-9254-7a5fdf0efa36",
							version = 3,
						},
					},
				},
				displayPath = "WAR rotation controls",
				mechanicTime = 203.8,
				name = "[WAR LPDU] Enable CD",
				timeRange = true,
				timelineIndex = 39,
				timerEndOffset = 3,
				uuid = "cb057857-c9ff-7e82-bb74-012df7ba71a9",
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
							actionLua = "ACR_RikuWAR3_Jumps=true\nself.used=true",
							conditions = 
							{
								
								{
									"34f36d80-a01f-9cef-b827-1d833f0d701f",
									true,
								},
								
								{
									"2287ff79-0b76-457f-80fb-08b4147817e7",
									true,
								},
							},
							name = "Release skipped P1 jump hold",
							uuid = "81743b82-0114-42f1-86da-54a1c11bc68f",
							version = 2.1,
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
							jobValue = "WARRIOR",
							uuid = "34f36d80-a01f-9cef-b827-1d833f0d701f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "Assigned tanks",
							uuid = "2287ff79-0b76-457f-80fb-08b4147817e7",
							version = 3,
						},
					},
				},
				displayPath = "WAR rotation controls",
				mechanicTime = 203.8,
				name = "[WAR LPDU] P2 sync rotation recovery",
				timeRange = true,
				timelineIndex = 39,
				timerEndOffset = 3,
				uuid = "020d639b-aeca-5014-9fe8-127c93d467b5",
				version = 2,
			},
		},
	},
	[40] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "643929e0-1226-f80c-1491-b126fc48ad70",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[44] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "a4afc884-39c8-7f28-5885-ecfab1802914",
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
				uuid = "d67f2c45-303d-f3d9-690e-d9bb38ddb715",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[46] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "b968a26a-e771-75fe-677b-3294a28ae37a",
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
				uuid = "91f6326b-a3ce-c83f-eed8-c095b313d03b",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[48] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "3da03f78-7531-f874-3669-b69e2b375148",
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
				uuid = "d0d35a29-2c25-52f5-1b40-6adf517ee9f9",
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
				uuid = "a446df67-ab08-f7c3-ca77-e08d091ceab7",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[53] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "34465010-eb8b-e63c-54da-99f258daf960",
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
				uuid = "9726a0b4-d263-6258-8f4d-c9be99519804",
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
				uuid = "94a0467f-ced8-c14b-c86b-a7b57a33a5cf",
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
				uuid = "39c4c33e-44f5-beca-ecaf-a7341d7ecfce",
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
				uuid = "ee223f2f-2590-cf8b-42be-51c92b0832bf",
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
				uuid = "64fafd58-48c8-43a4-be50-406ec101e9a8",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[64] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "4b6999e2-472b-f436-07b4-2cfc368961b2",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[68] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "52a509f6-ae8d-2b22-dbd5-ad004a786d06",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[71] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "bcde5994-319b-cb30-8a4a-785efd9952e4",
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
				uuid = "be7200bb-19c8-d907-609d-903956122bcb",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "WAR rotation controls",
				uuid = "8b823a4b-c8e7-01c5-bda3-945ccf0aeeaf",
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
							actionLua = "ACR_RikuWAR3_Jumps = false\nself.used=true",
							conditions = 
							{
								
								{
									"b13f0173-d77b-f890-b70b-d69a8c6e9c39",
									true,
								},
								
								{
									"e08c6c68-57b8-12bd-8e21-934677817c4a",
									true,
								},
							},
							name = "WAR Disable Jumps",
							uuid = "c2b93629-6e3a-0509-842c-9e47415ccaf0",
							version = 2.1,
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
							jobValue = "WARRIOR",
							uuid = "b13f0173-d77b-f890-b70b-d69a8c6e9c39",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "Assigned tanks",
							uuid = "e08c6c68-57b8-12bd-8e21-934677817c4a",
							version = 3,
						},
					},
				},
				displayPath = "WAR rotation controls",
				mechanicTime = 307.2,
				name = "[WAR LPDU] Disable Jumps",
				timeRange = true,
				timelineIndex = 72,
				timerStartOffset = -3,
				uuid = "480cd04e-0958-3824-88e1-710ecb2381a0",
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
				name = "Frureactions\\lpdu strats",
				uuid = "6f3ca6c7-35c4-f9fb-edc7-862d4f1e0d97",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "WAR rotation controls",
				uuid = "bfe9a6a4-aac4-711b-942d-7ce8d63f28d2",
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
							actionLua = "ACR_RikuWAR3_Jumps = true\nself.used=true",
							conditions = 
							{
								
								{
									"35497029-5579-d556-8dd8-bec018ebeec3",
									true,
								},
								
								{
									"edbda3df-06d2-2d98-b9cc-62af84612609",
									true,
								},
							},
							name = "WAR Enable Jumps",
							uuid = "3a9a3cd5-2734-2319-a7fe-9af19ebf70c2",
							version = 2.1,
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
							jobValue = "WARRIOR",
							uuid = "35497029-5579-d556-8dd8-bec018ebeec3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "Assigned tanks",
							uuid = "edbda3df-06d2-2d98-b9cc-62af84612609",
							version = 3,
						},
					},
				},
				displayPath = "WAR rotation controls",
				mechanicTime = 317.1,
				name = "[WAR LPDU] Enable Jumps",
				timeRange = true,
				timelineIndex = 76,
				timerEndOffset = 3.5,
				timerStartOffset = 0.5,
				uuid = "b84bd2b0-db52-88aa-ac40-2419e080948c",
				version = 2,
			},
		},
	},
	[77] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "69f4d826-0601-c43a-f55f-cc6c4746d976",
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
				uuid = "7dce81a4-4d77-4778-c67c-b22ad0a5b634",
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
				uuid = "07c117e5-e0aa-6229-3662-6c2bac61b6b5",
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
				uuid = "b814df31-f9a1-041d-4e9f-0ef73f541a41",
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
				uuid = "f7086c7c-7410-31e0-7946-c1c291c4d0cc",
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
				uuid = "6acb37fb-a477-4e7f-f632-1f814f38dd0b",
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
				uuid = "613f9cd5-416e-4a19-8afe-a527fc62e765",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[93] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "a012bad4-4355-d968-5e04-d38672705124",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[95] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "5e15da66-0f28-9b72-0ff7-c97470d401b6",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[99] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "dda3a392-1159-9dc6-d48e-5028d83538a2",
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
				name = "WAR rotation controls",
				uuid = "8c1c76af-6af7-65c2-a9f4-bba4645fc43d",
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
							actionLua = "ACR_RikuWAR3_CD = false\nself.used=true",
							conditions = 
							{
								
								{
									"e0908aa5-a1f1-b7c1-9c57-df8075381553",
									true,
								},
								
								{
									"d8c637ca-e7da-3344-a74c-8e1dfbb01c89",
									true,
								},
								
								{
									"078a0bb3-de0f-409b-ba03-53da7a036e9a",
									true,
								},
							},
							name = "WAR Hold CD",
							uuid = "e78ead7d-0c79-b9f5-93b0-d742dae4a584",
							version = 2.1,
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
							jobValue = "WARRIOR",
							uuid = "e0908aa5-a1f1-b7c1-9c57-df8075381553",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "Assigned tanks",
							uuid = "d8c637ca-e7da-3344-a74c-8e1dfbb01c89",
							version = 3,
						},
					},
					
					{
						data = 
						{
							comparator = 2,
							conditionType = 3,
							hpValue = 25,
							uuid = "078a0bb3-de0f-409b-ba03-53da7a036e9a",
							version = 3,
						},
					},
				},
				displayPath = "WAR rotation controls",
				mechanicTime = 388.7,
				name = "[WAR LPDU] Hold CD",
				timeRange = true,
				timelineIndex = 100,
				timerEndOffset = 10,
				timerStartOffset = -15,
				uuid = "60dd9e20-0843-af6b-aaf1-057e42db3971",
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
							actionLua = "ACR_RikuWAR3_HoldGauge = true\nself.used=true",
							conditions = 
							{
								
								{
									"5050c3c2-6b73-f5a2-b208-dc0ccdad9f09",
									true,
								},
								
								{
									"cbf902a4-80ad-37c4-88ae-44244f700907",
									true,
								},
								
								{
									"02de9e18-cc92-060b-a204-e2400922078e",
									true,
								},
							},
							name = "WAR Hold Gauge",
							uuid = "27e57c47-8fae-b2e4-a5f8-2c0be02b6bcd",
							version = 2.1,
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
							jobValue = "WARRIOR",
							uuid = "5050c3c2-6b73-f5a2-b208-dc0ccdad9f09",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "Assigned tanks",
							uuid = "cbf902a4-80ad-37c4-88ae-44244f700907",
							version = 3,
						},
					},
					
					{
						data = 
						{
							comparator = 2,
							conditionType = 3,
							hpValue = 20,
							uuid = "02de9e18-cc92-060b-a204-e2400922078e",
							version = 3,
						},
					},
				},
				displayPath = "WAR rotation controls",
				mechanicTime = 388.7,
				name = "[WAR LPDU] Hold Gauge",
				timeRange = true,
				timelineIndex = 100,
				timerEndOffset = 10,
				timerStartOffset = -15,
				uuid = "2c13337f-e315-d4be-84d2-4cb74ae85e9e",
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
				uuid = "24ebfbe5-6a2e-ab41-802f-6c6365fe75f5",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "WAR rotation controls",
				uuid = "d6b1baeb-61bd-4268-ae5d-bbe795d005fb",
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
							actionLua = "ACR_RikuWAR3_CD = true\nself.used=true",
							conditions = 
							{
								
								{
									"946846ca-3320-e1ea-8993-c72ff47ace96",
									true,
								},
								
								{
									"1cbf3b81-58ce-e5a8-9a03-45f028fa7a6c",
									true,
								},
							},
							name = "WAR Enable CD",
							uuid = "cf63775f-ab48-b6a8-9a62-910172573497",
							version = 2.1,
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
							jobValue = "WARRIOR",
							uuid = "946846ca-3320-e1ea-8993-c72ff47ace96",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "Assigned tanks",
							uuid = "1cbf3b81-58ce-e5a8-9a03-45f028fa7a6c",
							version = 3,
						},
					},
				},
				displayPath = "WAR rotation controls",
				mechanicTime = 418.8,
				name = "[WAR LPDU] Enable CD",
				timeRange = true,
				timelineIndex = 102,
				timerEndOffset = 3,
				uuid = "527eb256-5ae9-47fe-832d-966745ff7d2c",
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
							actionLua = "ACR_RikuWAR3_HoldGauge = false\nself.used=true",
							conditions = 
							{
								
								{
									"7fa56ed4-5310-bb22-823d-bcc83239726b",
									true,
								},
								
								{
									"2a50a89f-661e-4b94-b0c9-9a431b0f6cac",
									true,
								},
							},
							name = "WAR Enable Gauge",
							uuid = "34a2e7d0-7150-6e7e-a60e-220e89a749aa",
							version = 2.1,
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
							jobValue = "WARRIOR",
							uuid = "7fa56ed4-5310-bb22-823d-bcc83239726b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "Assigned tanks",
							uuid = "2a50a89f-661e-4b94-b0c9-9a431b0f6cac",
							version = 3,
						},
					},
				},
				displayPath = "WAR rotation controls",
				mechanicTime = 418.8,
				name = "[WAR LPDU] Enable Gauge",
				timeRange = true,
				timelineIndex = 102,
				timerEndOffset = 3,
				uuid = "4671c03c-a856-1dbd-9b34-da362e58cf7b",
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
				uuid = "a2edab03-f8f9-ecff-22dc-d6450a9d6ad3",
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
				uuid = "064f0967-f64f-d8eb-9085-1a25edb260f7",
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
				uuid = "d6f7040d-352d-00a9-8f93-bbaf3bf8a4dd",
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
				uuid = "32db8429-a895-8e15-9a2b-516fffb0e239",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[121] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "9fa86978-2138-0014-b524-e3ee052cbd88",
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
				uuid = "8ae52a4e-1242-ba7a-2d47-d898295dca5e",
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
				uuid = "95d9ec63-d396-4d47-d96b-b73d294f5cb3",
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
				uuid = "13b47a02-ce4e-7ea6-fe88-d07c8d62b612",
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
				uuid = "8fa44691-b80c-8bed-5409-15574b4db6e1",
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
				uuid = "527f2152-a4e9-2e2e-7fdc-7b6893527ba2",
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
				uuid = "cea5b0f3-527b-e5af-7df4-ec193581d983",
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
				uuid = "8ae8f6ac-c954-a3d8-8622-6d3ea6c77efc",
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
				uuid = "b5bb0f6d-c090-1489-e0fd-f07f81aa65bd",
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
				uuid = "edd5079e-afc3-4062-a4a3-654c5d63926e",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[135] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "d2abbbdf-a1fa-3943-c14c-840d4269ffef",
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
				uuid = "0ff13dfa-b6fe-b076-80a3-fa10ba34db8a",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[139] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "207a2abb-bed5-e497-5232-aec10a56200b",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[140] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "303d18df-c7b5-8953-f9e0-d6b99ffb5cef",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[141] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "4b66649e-a641-38b2-ff5c-b208baf4ef6e",
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
				uuid = "1c76a179-2c5f-164d-c557-ff1f3f6300c9",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[144] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "2c370df3-9ac0-09bf-870a-ccad93133683",
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
				uuid = "b0107e52-de62-b77e-8ea3-12ecf0e3d8a2",
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
				uuid = "134c6c6d-272f-3559-237f-5133df3bc2bd",
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
				uuid = "2ed62dc7-4239-2c1b-457d-ab6159d920d7",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "WAR rotation controls",
				uuid = "a9320a1f-4cad-691e-893e-01998cdeb970",
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
							actionLua = "ACR_RikuWAR3_Jumps = false\nself.used=true",
							conditions = 
							{
								
								{
									"dd2bafea-dadc-33a6-8c3e-2c281b98c986",
									true,
								},
								
								{
									"0341da79-fbf5-d0f6-9475-9ee64304de70",
									true,
								},
							},
							name = "WAR Disable Jumps",
							uuid = "1bb5b9e6-61a1-69a5-89aa-e1209df21550",
							version = 2.1,
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
							jobValue = "WARRIOR",
							uuid = "dd2bafea-dadc-33a6-8c3e-2c281b98c986",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "Assigned tanks",
							uuid = "0341da79-fbf5-d0f6-9475-9ee64304de70",
							version = 3,
						},
					},
				},
				displayPath = "WAR rotation controls",
				mechanicTime = 635.4,
				name = "[WAR LPDU] Disable Jumps",
				timeRange = true,
				timelineIndex = 148,
				timerStartOffset = -3,
				uuid = "12fb95f1-57fd-60f0-9f2f-0e848f434f59",
				version = 2,
			},
		},
	},
	[149] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "298e5f26-895a-ca5a-1091-10308982a1b6",
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
				uuid = "24948458-c81b-889c-8d82-702285ac86e8",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[151] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "1bcff509-f910-c35d-2fb1-ce0383c4f799",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "WAR rotation controls",
				uuid = "cf52e10f-9457-af3c-ab07-c1fe2de72fa8",
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
							actionLua = "ACR_RikuWAR3_Jumps=true\nself.used=true",
							conditions = 
							{
								
								{
									"84c4e440-03e2-a86f-9f6d-752666bdce1f",
									true,
								},
								
								{
									"7c94786d-135d-f240-b73d-ab41e266d997",
									true,
								},
							},
							name = "Release skipped P1 jump hold",
							uuid = "6547753c-78ed-4df2-b40d-6c12353ac895",
							version = 2.1,
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
							jobValue = "WARRIOR",
							uuid = "84c4e440-03e2-a86f-9f6d-752666bdce1f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "Assigned tanks",
							uuid = "7c94786d-135d-f240-b73d-ab41e266d997",
							version = 3,
						},
					},
				},
				displayPath = "WAR rotation controls",
				mechanicTime = 647.2,
				name = "[WAR LPDU] Release Apocalypse jump hold",
				timeRange = true,
				timelineIndex = 151,
				timerEndOffset = 4,
				timerStartOffset = 1,
				uuid = "932f7f1c-a94c-bfb5-8416-91e50b5fdf1c",
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
				name = "Frureactions\\lpdu strats",
				uuid = "adbbc62f-4e30-f7a3-7bda-5a3de6cdfbff",
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
				uuid = "3dbd083c-844f-17b8-5793-86eeaa7370cc",
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
				uuid = "0b0320e2-60af-988e-cfb6-7b98517f48f2",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[157] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "fd3a19c3-1414-938f-dc01-984966473693",
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
				uuid = "1ef32640-170a-eac4-b464-d00a86740590",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[159] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "WAR rotation controls",
				uuid = "c3dcaa45-e9ec-eecf-8ef0-091d69590bff",
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
							actionLua = "ACR_RikuWAR3_Jumps = false\nself.used=true",
							conditions = 
							{
								
								{
									"aa7b1086-e1d7-4d00-a1cb-cec89d6b93df",
									true,
								},
								
								{
									"28bbe416-1953-7aa1-aa70-97c3d7a9603d",
									true,
								},
							},
							name = "WAR Disable Jumps",
							uuid = "c8a894e0-e208-6380-8437-12f9600e49a7",
							version = 2.1,
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
							jobValue = "WARRIOR",
							uuid = "aa7b1086-e1d7-4d00-a1cb-cec89d6b93df",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T2\"",
							name = "Assigned OT",
							uuid = "28bbe416-1953-7aa1-aa70-97c3d7a9603d",
							version = 3,
						},
					},
				},
				displayPath = "WAR rotation controls",
				mechanicTime = 726.5,
				name = "[WAR LPDU] Disable Jumps",
				timeRange = true,
				timelineIndex = 159,
				timerEndOffset = 2,
				timerStartOffset = -1,
				uuid = "996ed7ec-82b9-6113-a0d6-29e1bb108f51",
				version = 2,
			},
		},
	},
	[162] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "22f569d3-0e73-b4d7-602e-6a7585ff77e3",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "WAR rotation controls",
				uuid = "be914b72-ee97-9804-9ac4-639e207dd058",
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
							actionLua = "ACR_RikuWAR3_Jumps = true\nself.used=true",
							conditions = 
							{
								
								{
									"3f9c8706-f328-269e-891d-e18a8b1ad0c3",
									true,
								},
								
								{
									"e45b86a3-155d-ace9-a9eb-01d52763423b",
									true,
								},
							},
							name = "WAR Enable Jumps",
							uuid = "36777177-cc9a-4ae0-96b5-8f4ac655e877",
							version = 2.1,
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
							jobValue = "WARRIOR",
							uuid = "3f9c8706-f328-269e-891d-e18a8b1ad0c3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T2\"",
							name = "Assigned OT",
							uuid = "e45b86a3-155d-ace9-a9eb-01d52763423b",
							version = 3,
						},
					},
				},
				displayPath = "WAR rotation controls",
				mechanicTime = 729.2,
				name = "[WAR LPDU] Enable Jumps",
				timeRange = true,
				timelineIndex = 162,
				timerEndOffset = 4,
				timerStartOffset = 1,
				uuid = "9ab4766f-abb0-a339-b976-7a9aa464ad3e",
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
				uuid = "f5ffea3f-1c82-110b-8f75-6601d7bf8bcf",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[167] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "39a297fe-cc60-cc8a-4557-d8507b0ab5ce",
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
				uuid = "7e5674f5-f3fd-94c9-04cd-5f5328ace1c5",
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
				uuid = "c7631a74-e7b2-7818-e359-0eb2f6dd7e04",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[170] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "7b40be66-5a14-7e9a-5422-c0c4f9e691f6",
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
				uuid = "6bf9fb07-febd-165b-e68f-fd8501bdc617",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[172] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "83cced30-9dee-ea34-5fbf-f8aa069b2740",
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
				uuid = "b8b98861-79aa-eab5-cfa5-b2ab873122f1",
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
				uuid = "87f61bfb-ab0f-28e7-ff19-e1d108b1e44b",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[176] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "bd3d9ed4-3b0e-9990-2d4a-dcd6b0390b64",
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
				uuid = "3893dc1f-1ae1-ca93-3628-995d9563c72f",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[180] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "07023523-8c5a-1fcf-1cd1-a8351c5c9973",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[181] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "8e436fc2-2fa5-49ce-4115-a7b4a03609d2",
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
				uuid = "b1e200dd-d79b-a3a9-a1e3-d3db0371f7ed",
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
				uuid = "cce5d10f-3a9a-0be3-afc4-0bc12062a45f",
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
				uuid = "4b5f1a2b-1b43-64b7-1edd-e10d6e31133b",
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
				uuid = "034c1212-9295-271e-e78f-4678fb28ac62",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[194] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "7b161988-2fa9-162c-5b9b-570214ba0fd8",
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
				name = "Frureactions\\lpdu strats",
				uuid = "759a3e39-5a7b-2eed-ddc0-c9630bf58089",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[201] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "28baaded-71d0-6b29-e679-546bf4aa043d",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[202] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "c57ebfd2-c9da-114e-f932-ea8406521a22",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[204] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "0b9d4a48-4a39-8f5c-7044-a59648862598",
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
				uuid = "45ab5a5f-d4ce-d363-821f-3e91b5699e6f",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[209] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "1943b015-ce99-2d91-8854-e4632a7fc8e5",
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
				uuid = "bed1c49d-d294-5319-f8ca-0167ffda76ad",
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
				uuid = "fde4c8ce-a04e-a472-eba9-c2b49c5d68de",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[218] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "66fdfaeb-4543-f067-861a-64198d89e8fb",
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
				uuid = "8e706aea-a27f-a6c6-8801-f3685dc6b33a",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[222] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "dcccdf44-99f7-3f50-9835-ad12798e2314",
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
				uuid = "b5f4fb56-1b12-075a-0fff-b48826a4a1a6",
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
				uuid = "54c59da0-fdda-76f4-3430-c15ec456a770",
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
				uuid = "87c40051-b4cd-d175-d5fb-019f12d059a1",
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
				uuid = "9b3426c2-7019-f47e-5aa4-c454ad26c0d2",
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
				uuid = "13f2ec23-2c77-46bf-1bd1-a655294d5073",
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
				uuid = "181f8481-f4af-f66d-9beb-d023ea4be611",
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
				uuid = "ce01f6d0-c9dd-ddac-232d-0ac220e8f360",
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
				uuid = "acec0a27-0d9a-97f3-46cb-9bddd12ae4b7",
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
				uuid = "7ff23886-9174-0852-15d6-611cd8714d16",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[236] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "07fb209b-11a0-a2df-0528-36e94ea5fbeb",
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
				uuid = "4f1cbeda-2cc9-ee9e-d209-f03876186bea",
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
				uuid = "def99987-6959-a5fb-74ea-0dd974bd6497",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[247] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "faf5ba7b-4d5d-8507-7a19-eecd7bb182cb",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[249] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "e01c5239-dbaa-33ad-34e4-ee2776779489",
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
				uuid = "ce1dd0f7-2445-19ab-a128-1ca5897dcd47",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
		},
	},
	[251] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Frureactions\\lpdu strats",
				uuid = "13865856-b45f-5faa-bb0c-02648435fea6",
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
				uuid = "b256faa0-a8c2-27c4-89a1-d8ca21e80470",
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
				uuid = "b5e12e2b-3c81-bc77-9204-19f1d8b3273b",
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
				uuid = "45fb742a-81ea-43d6-116e-1e40c82a3a7a",
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
				uuid = "cccb7905-53b9-48d1-0c90-bd175e7d0e15",
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
				uuid = "3a5e3c44-20ba-e620-04b9-88f6d71f8014",
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
				uuid = "3767e50f-dfe8-34a3-5f3f-befd8ae4b85f",
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
				uuid = "8402ea0e-6729-6f42-3038-003ca60e041e",
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
				uuid = "0ecc8bbe-42bd-4772-b9bb-5cf01697188e",
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
				uuid = "088699e8-9bb1-6f4c-1c09-57263a3697b8",
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
				uuid = "d68a5e46-96b7-e91a-e8aa-00c8a61a86d6",
			},
			inheritanceRoot = "Frureactions\\lpdu strats",
			objectType = "folder",
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
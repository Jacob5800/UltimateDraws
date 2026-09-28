local tbl = 
{
	[2] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Mits",
				uuid = "df72add0-d37e-6e9d-8126-7b9ccf5e9f46",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mits",
				name = "UWU",
				uuid = "5e317c47-9ba9-721e-ba2f-4c545fb1d294",
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
							actionLua = "AnyoneCore.Settings.Reactions.UWUEnableMitigation = false\nself.used = true",
							endIfUsed = true,
							name = "Disable UWU mitigation toggle",
							uuid = "29c6cc34-8d17-8ed6-8629-eacdf972af21",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Mits/UWU",
				mechanicTime = 9,
				name = "[Init] Disable UWU mitigation toggle",
				timelineIndex = 2,
				timerOffset = -9,
				uuid = "b2fca967-4e55-360d-85c7-61306c849dee",
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
				name = "[Raid calls]",
				uuid = "81a6f846-e2de-3b8a-b25e-6b689e66ba4e",
			},
			objectType = "folder",
		},
	},
	[12] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Mits",
				uuid = "5a8ca6a8-a0fe-ce97-8c5d-6c346b401820",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mits",
				name = "UWU",
				uuid = "4570ba17-6c1f-7b50-a05e-1020c3e88822",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mits/UWU",
				name = "Personal",
				uuid = "9e611e59-0dff-31ea-b847-a894eeba5ede",
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
							actionID = 65,
							conditions = 
							{
								
								{
									"33c2090c-50a8-40b1-8736-fa3862aa3aa0",
									true,
								},
								
								{
									"1b3a7f68-8d99-68f0-a1df-ea59f5ea4a64",
									true,
								},
							},
							name = "UWU Mantra: Friction",
							uuid = "4bdd9b44-bbeb-617a-8522-6c84265180ac",
							version = 2.1,
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
							jobValue = "MONK",
							name = "Monk",
							uuid = "33c2090c-50a8-40b1-8736-fa3862aa3aa0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 65,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "1b3a7f68-8d99-68f0-a1df-ea59f5ea4a64",
							version = 3,
						},
					},
				},
				displayPath = "Mits/UWU/Personal",
				mechanicTime = 51,
				name = "UWU Mantra: Friction",
				timelineIndex = 12,
				timerOffset = -2,
				uuid = "1d93fa2a-0196-51b0-aee1-c1f9c37a1eee",
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
							actionID = 7408,
							conditions = 
							{
								
								{
									"2338877a-d0d1-ca46-8dcd-108c7f50166f",
									true,
								},
								
								{
									"267fbc06-301b-3932-ac31-b4e9575e64c2",
									true,
								},
							},
							name = "UWU Nature's Minne: Friction",
							uuid = "748309a9-9e73-3c42-9a31-c5e96d0e3255",
							version = 2.1,
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
							name = "Bard",
							uuid = "2338877a-d0d1-ca46-8dcd-108c7f50166f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 7408,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "267fbc06-301b-3932-ac31-b4e9575e64c2",
							version = 3,
						},
					},
				},
				displayPath = "Mits/UWU/Personal",
				mechanicTime = 51,
				name = "UWU Nature's Minne: Friction",
				timelineIndex = 12,
				timerOffset = -2,
				uuid = "d8036ab4-0401-ac5b-b6cf-343d6ab50461",
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
							actionID = 24404,
							conditions = 
							{
								
								{
									"2525aa8b-dcb5-9498-85f4-89041fb5337b",
									true,
								},
								
								{
									"3267a852-4b76-7754-9600-c09b14c60d42",
									true,
								},
							},
							name = "UWU Arcane Crest: Friction",
							uuid = "5a425b64-486f-a7f3-a9f0-ca468abebeb2",
							version = 2.1,
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
							name = "Reaper",
							uuid = "2525aa8b-dcb5-9498-85f4-89041fb5337b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 24404,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "3267a852-4b76-7754-9600-c09b14c60d42",
							version = 3,
						},
					},
				},
				displayPath = "Mits/UWU/Personal",
				mechanicTime = 51,
				name = "UWU Arcane Crest: Friction",
				timelineIndex = 12,
				timerOffset = -2,
				uuid = "62a1b774-e040-6b9b-954f-6c67c48fd42e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Mits/UWU",
				name = "Ranged",
				uuid = "335f03fd-2cda-2e98-96a1-e479a1204feb",
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
							actionID = 16889,
							conditions = 
							{
								
								{
									"8db21899-b14c-6c43-868d-aca89173c3d1",
									true,
								},
								
								{
									"0d0e0faa-785a-e23c-afb0-16da3cf0c883",
									true,
								},
								
								{
									"bea269ab-05f3-492b-9d50-bc290282adda",
									true,
								},
							},
							name = "Tactician",
							uuid = "7d710e6f-b3c5-c162-8b37-cd9639d6677d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return GetCurrentRole() == \"R1\"",
							dequeueIfLuaFalse = true,
							name = "Roster: R1",
							uuid = "8db21899-b14c-6c43-868d-aca89173c3d1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Job: MACHINIST",
							uuid = "0d0e0faa-785a-e23c-afb0-16da3cf0c883",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 16889,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Tactician Ready",
							uuid = "bea269ab-05f3-492b-9d50-bc290282adda",
							version = 3,
						},
					},
				},
				displayPath = "Mits/UWU/Ranged",
				mechanicTime = 51,
				name = "UWU Tactician: Friction",
				timelineIndex = 12,
				timerOffset = -2,
				uuid = "cae625bd-efd7-cbae-b53f-e3f8ff3ec925",
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
							actionID = 7405,
							conditions = 
							{
								
								{
									"56f6749f-120d-a355-9f7f-a1a77bbc8e53",
									true,
								},
								
								{
									"4d13e153-5f1e-6e73-a002-c236195d6a85",
									true,
								},
								
								{
									"80e9f43a-f97f-dd45-ba84-a77e94d94bf8",
									true,
								},
							},
							name = "Troubadour",
							uuid = "c68c99f5-2a59-1b35-92a5-b46c20b80906",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return GetCurrentRole() == \"R1\"",
							dequeueIfLuaFalse = true,
							name = "Roster: R1",
							uuid = "56f6749f-120d-a355-9f7f-a1a77bbc8e53",
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
							name = "Job: BARD",
							uuid = "4d13e153-5f1e-6e73-a002-c236195d6a85",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 7405,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Troubadour Ready",
							uuid = "80e9f43a-f97f-dd45-ba84-a77e94d94bf8",
							version = 3,
						},
					},
				},
				displayPath = "Mits/UWU/Ranged",
				mechanicTime = 51,
				name = "UWU Troubadour: Friction",
				timelineIndex = 12,
				timerOffset = -2,
				uuid = "e09c384b-c02d-4c5e-af64-6090d51f4fd2",
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
							actionID = 16012,
							conditions = 
							{
								
								{
									"e109db98-c332-d5b2-b42f-97deef49e42f",
									true,
								},
								
								{
									"a1e6a88b-57ae-e47e-b63a-d89e92ee3f7f",
									true,
								},
								
								{
									"98717f68-c5fd-a6ae-b102-fb513ba08f6e",
									true,
								},
							},
							name = "Shield Samba",
							uuid = "59432a24-e54b-7cc1-afd5-28056b68e521",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return GetCurrentRole() == \"R1\"",
							dequeueIfLuaFalse = true,
							name = "Roster: R1",
							uuid = "e109db98-c332-d5b2-b42f-97deef49e42f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Job: DANCER",
							uuid = "a1e6a88b-57ae-e47e-b63a-d89e92ee3f7f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 16012,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Shield Samba Ready",
							uuid = "98717f68-c5fd-a6ae-b102-fb513ba08f6e",
							version = 3,
						},
					},
				},
				displayPath = "Mits/UWU/Ranged",
				mechanicTime = 51,
				name = "UWU Shield Samba: Friction",
				timelineIndex = 12,
				timerOffset = -2,
				uuid = "87bd9d9c-4142-16be-bb04-56b65e57a569",
				version = 2,
			},
		},
	},
	[13] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Mits",
				uuid = "374162fc-536d-2717-a657-174ca27f0861",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mits",
				name = "UWU",
				uuid = "b08ab45f-837f-4484-858a-69c3df2a2e03",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mits/UWU",
				name = "Feint",
				uuid = "557c0485-1ff0-187c-9adc-78a8a8100ad7",
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
							actionID = 7549,
							conditions = 
							{
								
								{
									"08e339d9-b655-82fa-bbc2-838b2664bd8a",
									true,
								},
								
								{
									"91fbdcae-51d2-f10e-b559-aac55fadc887",
									true,
								},
							},
							name = "Feint",
							targetType = "Current Target",
							uuid = "2e55ccb2-1fc7-5bad-a458-6f16dadded73",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return GetCurrentRole() == \"M1\"",
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
							name = "Roster: M1",
							uuid = "08e339d9-b655-82fa-bbc2-838b2664bd8a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Feint Ready",
							uuid = "91fbdcae-51d2-f10e-b559-aac55fadc887",
							version = 3,
						},
					},
				},
				displayPath = "Mits/UWU/Feint",
				mechanicTime = 57,
				name = "UWU Feint: Friction",
				timelineIndex = 13,
				timerOffset = -2,
				uuid = "c9304b47-5fed-28b6-82fa-af1b537be5b1",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Mits/UWU",
				name = "Personal",
				uuid = "f6fe872f-af77-df73-9ff5-369a7ddbb7f4",
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
							actionID = 7541,
							conditions = 
							{
								
								{
									"fb30e60c-85c1-3a0f-9397-3f50a006a106",
									true,
								},
							},
							name = "Second Wind",
							uuid = "faaca5bf-4ec2-1d5f-897e-20365f22a0ee",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Second Wind Ready",
							uuid = "fb30e60c-85c1-3a0f-9397-3f50a006a106",
							version = 3,
						},
					},
				},
				displayPath = "Mits/UWU/Personal",
				mechanicTime = 57,
				name = "UWU Second Wind: Friction",
				timelineIndex = 13,
				uuid = "102131f0-3f16-391a-a2e4-8e293850eb27",
				version = 2,
			},
		},
	},
	[19] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "[Raid calls]",
				uuid = "d84eb243-aa69-d9d2-abc7-0a4f86987196",
			},
			objectType = "folder",
		},
	},
	[26] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "[Raid calls]",
				uuid = "809dcbb7-2b00-5aaf-a31c-b15bd3bdd0cb",
			},
			objectType = "folder",
		},
	},
	[27] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Movement - Ifrit",
				uuid = "c0b4374d-b89e-a627-8f82-cc1c8c587e76",
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
									"ab8f0abe-4ada-cd46-917a-71219b9da1d1",
									true,
								},
							},
							gVar = "ACR_RikuMNK3_Hotbar_Sprint",
							name = "Sprint - Transition",
							uuid = "5aadd72a-b233-7bc2-ae99-7c7f584df633",
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
							conditionLua = "local player = TensorCore.mGetPlayer()\nreturn player and not TensorCore.hasBuff(player, 1231)",
							name = "Not Meditating",
							uuid = "ab8f0abe-4ada-cd46-917a-71219b9da1d1",
							version = 3,
						},
					},
				},
				displayPath = "Movement - Ifrit",
				enabled = false,
				mechanicTime = 124,
				name = "[Sprint] Ifrit Transition Prep",
				timeRange = true,
				timelineIndex = 27,
				timerEndOffset = 9,
				timerStartOffset = 3,
				uuid = "4fca0c63-7e30-af6e-8eb2-ed6061235530",
				version = 2,
			},
		},
	},
	[38] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Mits",
				uuid = "ce7c035a-a2e3-ca56-bfa4-62fd17b75513",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mits",
				name = "UWU",
				uuid = "86ceee97-4c64-0e99-995d-b9c22afd470a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mits/UWU",
				name = "Addle",
				uuid = "2383c0c0-73b0-c3d1-88f2-813421e73edc",
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
							actionID = 7560,
							conditions = 
							{
								
								{
									"f071f838-4783-11b6-8467-4e0cb2e50ff9",
									true,
								},
								
								{
									"285eef9e-7b50-c256-8e73-eb32579b3bba",
									true,
								},
							},
							name = "Addle",
							targetType = "Current Target",
							uuid = "87224c89-efd4-00cf-9665-0073e53b91ac",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return GetCurrentRole() == \"R2\"",
							dequeueIfLuaFalse = true,
							name = "Roster: R2",
							uuid = "f071f838-4783-11b6-8467-4e0cb2e50ff9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 7560,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Addle Ready",
							uuid = "285eef9e-7b50-c256-8e73-eb32579b3bba",
							version = 3,
						},
					},
				},
				displayPath = "Mits/UWU/Addle",
				mechanicTime = 307,
				name = "UWU Addle: Hellfire 307",
				timelineIndex = 38,
				timerOffset = -2,
				uuid = "436241c7-0ee0-9f80-bf47-c6fc57de262e",
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
				name = "Mits",
				uuid = "39126042-5d83-5a72-af44-bd681f1e8264",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mits",
				name = "UWU",
				uuid = "5248de93-a595-41bb-81e2-65b496f5ecbb",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mits/UWU",
				name = "Personal",
				uuid = "7e9330bb-d61d-ea1f-aa03-c3bd0d21bcfa",
			},
			objectType = "folder",
		},
	},
	[43] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "[Raid calls]",
				uuid = "31e5d162-4550-806f-aa93-a8b3e4534ae5",
			},
			objectType = "folder",
		},
	},
	[45] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Mits",
				uuid = "30d6d99e-a3b4-fb50-9da2-9b206d55ce07",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mits",
				name = "UWU",
				uuid = "7e166f33-26d4-cbf9-aa2a-dea1e4a37f10",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mits/UWU",
				name = "Ranged",
				uuid = "ecb851d9-3b12-8ee3-9e11-d4a10f8c17a7",
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
							actionID = 16889,
							conditions = 
							{
								
								{
									"d4f827f7-6979-87a3-b9a9-21d59aa8ceba",
									true,
								},
								
								{
									"9e765e30-53c9-a678-b2db-48860de9859e",
									true,
								},
								
								{
									"39f41d3e-d1e1-4115-a43f-19e5d4bd1575",
									true,
								},
							},
							name = "Tactician",
							uuid = "9412fa53-56b1-3920-8bd4-c3e6c05d1667",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return GetCurrentRole() == \"R1\"",
							dequeueIfLuaFalse = true,
							name = "Roster: R1",
							uuid = "d4f827f7-6979-87a3-b9a9-21d59aa8ceba",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Job: MACHINIST",
							uuid = "9e765e30-53c9-a678-b2db-48860de9859e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 16889,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Tactician Ready",
							uuid = "39f41d3e-d1e1-4115-a43f-19e5d4bd1575",
							version = 3,
						},
					},
				},
				displayPath = "Mits/UWU/Ranged",
				mechanicTime = 339,
				name = "UWU Tactician: Nail detonation",
				timelineIndex = 45,
				timerOffset = -2,
				uuid = "8e1a774c-217d-68c1-ae46-55690d60a8c5",
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
							actionID = 7405,
							conditions = 
							{
								
								{
									"02aeaeb8-3242-f009-9e55-e5cfdf6af2e5",
									true,
								},
								
								{
									"de738d28-cb60-8f19-ba75-f259976f1c3a",
									true,
								},
								
								{
									"9bd51fe1-f784-a702-a2c9-df7abcac6ba9",
									true,
								},
							},
							name = "Troubadour",
							uuid = "3cbb8168-e3f7-b3ed-a890-1a9a28531b1c",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return GetCurrentRole() == \"R1\"",
							dequeueIfLuaFalse = true,
							name = "Roster: R1",
							uuid = "02aeaeb8-3242-f009-9e55-e5cfdf6af2e5",
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
							name = "Job: BARD",
							uuid = "de738d28-cb60-8f19-ba75-f259976f1c3a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 7405,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Troubadour Ready",
							uuid = "9bd51fe1-f784-a702-a2c9-df7abcac6ba9",
							version = 3,
						},
					},
				},
				displayPath = "Mits/UWU/Ranged",
				mechanicTime = 339,
				name = "UWU Troubadour: Nail detonation",
				timelineIndex = 45,
				timerOffset = -2,
				uuid = "32601c45-4e6d-7bc1-9a8d-b2595d1ace08",
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
							actionID = 16012,
							conditions = 
							{
								
								{
									"82a21272-2edf-08e3-a1d1-5a475b3ca5a7",
									true,
								},
								
								{
									"6c53d97d-b098-5f6c-99c6-17ae8d2a0d51",
									true,
								},
								
								{
									"5bf985d1-2f07-5c24-8575-c289444f3732",
									true,
								},
							},
							name = "Shield Samba",
							uuid = "ee171804-e1fb-bc92-bffd-931e76990b62",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return GetCurrentRole() == \"R1\"",
							dequeueIfLuaFalse = true,
							name = "Roster: R1",
							uuid = "82a21272-2edf-08e3-a1d1-5a475b3ca5a7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Job: DANCER",
							uuid = "6c53d97d-b098-5f6c-99c6-17ae8d2a0d51",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 16012,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Shield Samba Ready",
							uuid = "5bf985d1-2f07-5c24-8575-c289444f3732",
							version = 3,
						},
					},
				},
				displayPath = "Mits/UWU/Ranged",
				mechanicTime = 339,
				name = "UWU Shield Samba: Nail detonation",
				timelineIndex = 45,
				timerOffset = -2,
				uuid = "50411f00-10d4-8761-b390-19549f16eb2e",
				version = 2,
			},
		},
	},
	[61] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Mits",
				uuid = "b1b55d3d-36c5-b60b-81f9-069b3a7b40e3",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mits",
				name = "UWU",
				uuid = "bdc7eba0-cf0f-050a-b340-8069be1d82ac",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mits/UWU",
				name = "Feint",
				uuid = "6fc2439e-fa03-3b7b-b85e-8fc76a742b14",
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
							actionID = 7549,
							conditions = 
							{
								
								{
									"37601385-8d1e-97a6-addb-945387e17a6b",
									true,
								},
								
								{
									"7ed1fd57-1506-d634-ae59-df15c762ccb6",
									true,
								},
							},
							name = "Feint",
							targetType = "Current Target",
							uuid = "eb28d98b-1848-cbca-96b6-0c0d2fccadea",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return GetCurrentRole() == \"M1\"",
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
							name = "Roster: M1",
							uuid = "37601385-8d1e-97a6-addb-945387e17a6b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Feint Ready",
							uuid = "7ed1fd57-1506-d634-ae59-df15c762ccb6",
							version = 3,
						},
					},
				},
				displayPath = "Mits/UWU/Feint",
				mechanicTime = 405,
				name = "UWU Feint: Flaming Crush",
				timelineIndex = 61,
				timerOffset = -2,
				uuid = "d68bf332-1a1c-b5e0-b579-bed1e6f5f907",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Mits/UWU",
				name = "Personal",
				uuid = "c35dea10-879c-e50f-84fb-1f95615e3ba0",
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
							actionID = 65,
							conditions = 
							{
								
								{
									"78343c2f-fcc3-19ba-983c-717df9268649",
									true,
								},
								
								{
									"74efa259-a0e5-b2ea-99ab-17738cc3f01d",
									true,
								},
							},
							name = "Mantra",
							uuid = "e2826736-b80b-535a-8032-47949730d586",
							version = 2.1,
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
							jobValue = "MONK",
							name = "Monk",
							uuid = "78343c2f-fcc3-19ba-983c-717df9268649",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 65,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Mantra Ready",
							uuid = "74efa259-a0e5-b2ea-99ab-17738cc3f01d",
							version = 3,
						},
					},
				},
				displayPath = "Mits/UWU/Personal",
				mechanicTime = 405,
				name = "UWU Mantra: Flaming Crush",
				timelineIndex = 61,
				timerOffset = -2,
				uuid = "4fadf1dc-1508-d090-abc4-bb9f247575aa",
				version = 2,
			},
		},
	},
	[69] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Mits",
				uuid = "a1896a8d-1e50-bd3a-bafb-81f00d4299fc",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mits",
				name = "UWU",
				uuid = "17c646db-43ae-b950-a28c-cb8e3c477bd2",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mits/UWU",
				name = "Feint",
				uuid = "23476a5b-bb6a-5423-abae-30ea0c06472d",
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
							actionID = 7549,
							conditions = 
							{
								
								{
									"f9253176-60ef-4521-a9d0-320e2bb287f4",
									true,
								},
								
								{
									"478b38a2-c216-0fda-90e5-86149e6d5668",
									true,
								},
							},
							name = "Feint",
							targetType = "Current Target",
							uuid = "6fed1133-9a22-b4fa-aa56-137b3628023d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return GetCurrentRole() == \"M1\"",
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
							name = "Roster: M1",
							uuid = "f9253176-60ef-4521-a9d0-320e2bb287f4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Feint Ready",
							uuid = "478b38a2-c216-0fda-90e5-86149e6d5668",
							version = 3,
						},
					},
				},
				displayPath = "Mits/UWU/Feint",
				mechanicTime = 428,
				name = "UWU Feint: Incinerate (fallback)",
				timelineIndex = 69,
				timerOffset = -2,
				uuid = "f147f7be-d743-c83d-bc4a-d1b533203d23",
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
				name = "[Raid calls]",
				uuid = "cc5d386a-7252-a66f-b9bd-0b5fa33721f1",
			},
			objectType = "folder",
		},
	},
	[82] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "[Raid calls]",
				uuid = "0fab0377-8662-cdc9-a638-c52ca5f2cdd6",
			},
			objectType = "folder",
		},
	},
	[85] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "[Raid calls]",
				uuid = "78fb70a7-445d-9464-8d68-71502952618e",
			},
			objectType = "folder",
		},
	},
	[89] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Mits",
				uuid = "1c5e3e97-d1c1-1337-9d29-ed269e0f70be",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mits",
				name = "UWU",
				uuid = "4459ff58-7841-67ae-a6a7-5282a5b02706",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mits/UWU",
				name = "Feint",
				uuid = "e288fc13-d1db-69b9-aaae-d03c8a25797b",
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
							actionID = 7549,
							conditions = 
							{
								
								{
									"d3cbbd38-c897-a801-ad86-2160bcfe0aa5",
									true,
								},
								
								{
									"4c0fc272-d8e0-e616-aff7-9f706e04234e",
									true,
								},
								
								{
									"0d5b80ab-0ce3-d961-9c1b-697f8d15ed01",
									true,
								},
							},
							name = "Feint",
							targetType = "Current Target",
							uuid = "361569e0-1102-034e-a288-877828ed9267",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return GetCurrentRole() == \"M1\"",
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
							name = "Roster: M1",
							uuid = "d3cbbd38-c897-a801-ad86-2160bcfe0aa5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Feint Ready",
							uuid = "0d5b80ab-0ce3-d961-9c1b-697f8d15ed01",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return TensorCore.getLBGauge() >= 20500",
							dequeueIfLuaFalse = true,
							name = "LB 20,500+",
							uuid = "4c0fc272-d8e0-e616-aff7-9f706e04234e",
							version = 3,
						},
					},
				},
				displayPath = "Mits/UWU/Feint",
				mechanicTime = 651,
				name = "UWU Feint: Tumult x8",
				timelineIndex = 89,
				timerOffset = -2,
				uuid = "b5ebb418-4eff-f981-93b9-dffd86dbd6fe",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Mits/UWU",
				name = "Personal",
				uuid = "34ae1ee9-38f2-f62c-a241-d492afea2170",
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
							actionID = 65,
							conditions = 
							{
								
								{
									"1fa32382-0382-a3c8-a70c-5ac51f8d944f",
									true,
								},
								
								{
									"82068ba5-8996-0275-a778-404fa67a868c",
									true,
								},
							},
							name = "Mantra",
							uuid = "05a42fec-1344-42c3-b38e-fb1620154df1",
							version = 2.1,
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
							jobValue = "MONK",
							name = "Monk",
							uuid = "1fa32382-0382-a3c8-a70c-5ac51f8d944f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 65,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Mantra Ready",
							uuid = "82068ba5-8996-0275-a778-404fa67a868c",
							version = 3,
						},
					},
				},
				displayPath = "Mits/UWU/Personal",
				mechanicTime = 651,
				name = "UWU Mantra: Tumult x8",
				timelineIndex = 89,
				timerOffset = -2,
				uuid = "6cc6cf7e-3217-ad15-a734-f9e173ec0c27",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Mits/UWU",
				name = "Addle",
				uuid = "4cf4b4c4-3ecf-2229-8c93-e6bcc0bd3a98",
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
							actionID = 7560,
							conditions = 
							{
								
								{
									"ff003575-bf65-fefa-b1cd-8fc017a08a71",
									true,
								},
								
								{
									"3a075d1e-dd2e-52e9-a389-fb11894a9516",
									true,
								},
							},
							name = "Addle",
							targetType = "Current Target",
							uuid = "78a32546-d12f-1091-9be8-c769800ee183",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return GetCurrentRole() == \"R2\"",
							dequeueIfLuaFalse = true,
							name = "Roster: R2",
							uuid = "ff003575-bf65-fefa-b1cd-8fc017a08a71",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 7560,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Addle Ready",
							uuid = "3a075d1e-dd2e-52e9-a389-fb11894a9516",
							version = 3,
						},
					},
				},
				displayPath = "Mits/UWU/Addle",
				mechanicTime = 651,
				name = "UWU Addle: Tumult x8",
				timelineIndex = 89,
				timerOffset = -2,
				uuid = "765625b2-f143-f7d5-8c05-ecd1cfda6ad7",
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
				name = "[Raid calls]",
				uuid = "46aadd1c-d913-259f-938f-eac769babec3",
			},
			objectType = "folder",
		},
	},
	[95] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "[Raid calls]",
				uuid = "2cbe8a5a-7f66-a8ff-91ed-fa56a4ea0ec0",
			},
			objectType = "folder",
		},
	},
	[98] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Mits",
				uuid = "fdebff5f-d157-28d0-aac9-5a8406921357",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mits",
				name = "UWU",
				uuid = "ee467dab-d0e4-237a-932a-34e706791a1a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mits/UWU",
				name = "Feint",
				uuid = "9cbe0290-fbf4-aa2f-9353-e548d7c1da98",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mits/UWU",
				name = "Ranged",
				uuid = "44ef5618-fee0-ba78-aa60-9b1add949e4e",
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
							actionID = 16889,
							conditions = 
							{
								
								{
									"580c2d18-f74b-6917-b343-0d92f90cd444",
									true,
								},
								
								{
									"bdfab8e9-4e49-8aef-b6f4-501c528317bb",
									true,
								},
								
								{
									"bfcb0d9c-6e18-fd67-b066-0cd0653a2c13",
									true,
								},
							},
							name = "Tactician",
							uuid = "31f49b6a-6a9b-56ca-bcfd-17d84536698c",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return GetCurrentRole() == \"R1\"",
							dequeueIfLuaFalse = true,
							name = "Roster: R1",
							uuid = "580c2d18-f74b-6917-b343-0d92f90cd444",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Job: MACHINIST",
							uuid = "bdfab8e9-4e49-8aef-b6f4-501c528317bb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 16889,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Tactician Ready",
							uuid = "bfcb0d9c-6e18-fd67-b066-0cd0653a2c13",
							version = 3,
						},
					},
				},
				displayPath = "Mits/UWU/Ranged",
				mechanicTime = 704,
				name = "UWU Tactician: Tumult x6",
				timelineIndex = 98,
				timerOffset = -2,
				uuid = "8a9d896b-03a8-e726-80db-82be86c3d99b",
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
							actionID = 7405,
							conditions = 
							{
								
								{
									"48515339-8805-85a0-8a9c-e4c8779eca1f",
									true,
								},
								
								{
									"f7d6786d-48c0-27e2-b4dd-4be9f5a5ae61",
									true,
								},
								
								{
									"33235fa8-b6c1-2073-9a1b-9ad693fc5d7a",
									true,
								},
							},
							name = "Troubadour",
							uuid = "6901d990-47d5-639c-bbd2-9a6fdb420d50",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return GetCurrentRole() == \"R1\"",
							dequeueIfLuaFalse = true,
							name = "Roster: R1",
							uuid = "48515339-8805-85a0-8a9c-e4c8779eca1f",
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
							name = "Job: BARD",
							uuid = "f7d6786d-48c0-27e2-b4dd-4be9f5a5ae61",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 7405,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Troubadour Ready",
							uuid = "33235fa8-b6c1-2073-9a1b-9ad693fc5d7a",
							version = 3,
						},
					},
				},
				displayPath = "Mits/UWU/Ranged",
				mechanicTime = 704,
				name = "UWU Troubadour: Tumult x6",
				timelineIndex = 98,
				timerOffset = -2,
				uuid = "81e478d5-ef8c-5849-86b6-5e5831e2fe7a",
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
							actionID = 16012,
							conditions = 
							{
								
								{
									"cce9a599-f8fb-78e0-94f8-1aeb3e837a58",
									true,
								},
								
								{
									"41f270a3-b6b3-67ec-97cf-0ff44914d8a2",
									true,
								},
								
								{
									"5c371ad9-1feb-ae7b-a271-938e26adab97",
									true,
								},
							},
							name = "Shield Samba",
							uuid = "8ee21cdf-c8f0-8e92-a718-616316507814",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return GetCurrentRole() == \"R1\"",
							dequeueIfLuaFalse = true,
							name = "Roster: R1",
							uuid = "cce9a599-f8fb-78e0-94f8-1aeb3e837a58",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Job: DANCER",
							uuid = "41f270a3-b6b3-67ec-97cf-0ff44914d8a2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 16012,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Shield Samba Ready",
							uuid = "5c371ad9-1feb-ae7b-a271-938e26adab97",
							version = 3,
						},
					},
				},
				displayPath = "Mits/UWU/Ranged",
				mechanicTime = 704,
				name = "UWU Shield Samba: Tumult x6",
				timelineIndex = 98,
				timerOffset = -2,
				uuid = "887a26b5-1a2f-a78c-b604-4f23f98cc048",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "[Raid calls]",
				uuid = "52b5bf3e-7d4c-a9a1-84a2-5f3f9d5bc21d",
			},
			objectType = "folder",
		},
	},
	[99] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Mits",
				uuid = "d028baa6-0aa9-79b8-9b2c-03fe759dbf7b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mits",
				name = "UWU",
				uuid = "b65db74f-48dd-7566-9b99-83c7fd407e6e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mits/UWU",
				name = "Feint",
				uuid = "2d31435b-2952-ed4a-b24e-86e65141a916",
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
							actionID = 7549,
							conditions = 
							{
								
								{
									"248423e2-074e-cad5-9b25-94e9bdfd7fb0",
									true,
								},
								
								{
									"e6736e5d-f614-26de-babf-3862a1af4316",
									true,
								},
							},
							name = "Feint",
							targetType = "Current Target",
							uuid = "ecb23b69-1b4b-0744-a69f-c550e8455a35",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return GetCurrentRole() == \"M1\"",
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
							name = "Roster: M1",
							uuid = "248423e2-074e-cad5-9b25-94e9bdfd7fb0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Feint Ready",
							uuid = "e6736e5d-f614-26de-babf-3862a1af4316",
							version = 3,
						},
					},
				},
				displayPath = "Mits/UWU/Feint",
				mechanicTime = 711,
				name = "UWU Feint: Rock Buster (fallback)",
				timelineIndex = 99,
				timerOffset = -2,
				uuid = "5d8fd8fe-a3b6-549f-ac78-a51491e7ccee",
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
				name = "[Raid calls]",
				uuid = "8ba65ee7-7901-bb2e-af1a-f94bd56776e3",
			},
			objectType = "folder",
		},
	},
	[109] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "[Raid calls]",
				uuid = "05842289-e405-3a91-a37f-16ca6f900629",
			},
			objectType = "folder",
		},
	},
	[121] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Mits",
				uuid = "587a82ff-8aec-5a4f-804c-a6e0e23dec85",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mits",
				name = "UWU",
				uuid = "847a5479-f0e6-ce29-83a3-de2aecd1a727",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mits/UWU",
				name = "Feint",
				uuid = "f43fe1b0-82f2-ff68-82e9-39a7071da744",
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
							actionID = 7549,
							conditions = 
							{
								
								{
									"abc6dd9e-dc57-f50f-9a9e-8a0722c2a83d",
									true,
								},
								
								{
									"9a8e3043-2288-7fbc-a582-506ee157fd23",
									true,
								},
							},
							name = "Feint",
							targetType = "Current Target",
							uuid = "691f7785-eda3-03d5-b8f0-c948df031ff9",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return GetCurrentRole() == \"M1\"",
							dequeueIfLuaFalse = true,
							name = "Roster: M1",
							uuid = "abc6dd9e-dc57-f50f-9a9e-8a0722c2a83d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Feint Ready",
							uuid = "9a8e3043-2288-7fbc-a582-506ee157fd23",
							version = 3,
						},
					},
				},
				displayPath = "Mits/UWU/Feint",
				mechanicTime = 1012,
				name = "UWU Feint: Homing Lasers 1",
				timelineIndex = 121,
				timerOffset = -2,
				uuid = "64631f7b-0ad5-ff01-907b-5c414fce7a6e",
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
				name = "Mits",
				uuid = "fb961c1a-1818-9f6a-b459-a89988bc2494",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mits",
				name = "UWU",
				uuid = "27f1c38c-e19a-68ea-a303-cd6f76c6ad27",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mits/UWU",
				name = "Ranged",
				uuid = "7f107b95-ad14-749d-9754-b7d12059e826",
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
							actionID = 16889,
							conditions = 
							{
								
								{
									"3b820745-e3cf-dac4-ade3-8c83d0a1e353",
									true,
								},
								
								{
									"c09abcfd-d9ad-975b-b4bb-bf9e0c2df2ef",
									true,
								},
								
								{
									"0e590241-9893-289f-8adb-4594c2e1a22f",
									true,
								},
							},
							name = "Tactician",
							uuid = "cd152c74-8ec7-6452-9eb8-17b6cf57e396",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return GetCurrentRole() == \"R1\"",
							dequeueIfLuaFalse = true,
							name = "Roster: R1",
							uuid = "3b820745-e3cf-dac4-ade3-8c83d0a1e353",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Job: MACHINIST",
							uuid = "c09abcfd-d9ad-975b-b4bb-bf9e0c2df2ef",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 16889,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Tactician Ready",
							uuid = "0e590241-9893-289f-8adb-4594c2e1a22f",
							version = 3,
						},
					},
				},
				displayPath = "Mits/UWU/Ranged",
				mechanicTime = 1079,
				name = "UWU Tactician: Tumult x7",
				timelineIndex = 140,
				timerOffset = -2,
				uuid = "9a1ff4ee-7022-ef11-a014-54c8f1e2d642",
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
							actionID = 7405,
							conditions = 
							{
								
								{
									"a425310d-6c0e-2345-85fa-9cf1fb8249b5",
									true,
								},
								
								{
									"088f9e22-5ac9-96cd-8f15-f76bc68c78dd",
									true,
								},
								
								{
									"c399051b-1e22-08f0-962c-b6d83107b699",
									true,
								},
							},
							name = "Troubadour",
							uuid = "e25a8d5e-0868-d254-b54d-fc08a8b3fd15",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return GetCurrentRole() == \"R1\"",
							dequeueIfLuaFalse = true,
							name = "Roster: R1",
							uuid = "a425310d-6c0e-2345-85fa-9cf1fb8249b5",
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
							name = "Job: BARD",
							uuid = "088f9e22-5ac9-96cd-8f15-f76bc68c78dd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 7405,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Troubadour Ready",
							uuid = "c399051b-1e22-08f0-962c-b6d83107b699",
							version = 3,
						},
					},
				},
				displayPath = "Mits/UWU/Ranged",
				mechanicTime = 1079,
				name = "UWU Troubadour: Tumult x7",
				timelineIndex = 140,
				timerOffset = -2,
				uuid = "66f57e6e-faea-116f-98be-b24113268497",
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
							actionID = 16012,
							conditions = 
							{
								
								{
									"edbd7e39-a5a1-cb92-9071-af721419d5a4",
									true,
								},
								
								{
									"3316c08b-ed95-90c4-9a53-38f0b6227f85",
									true,
								},
								
								{
									"e294959c-c2ff-12e5-ba72-0a0d42b518f1",
									true,
								},
							},
							name = "Shield Samba",
							uuid = "a5b95c5f-cab1-78c4-b962-a1fedc5b90b2",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return GetCurrentRole() == \"R1\"",
							dequeueIfLuaFalse = true,
							name = "Roster: R1",
							uuid = "edbd7e39-a5a1-cb92-9071-af721419d5a4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Job: DANCER",
							uuid = "3316c08b-ed95-90c4-9a53-38f0b6227f85",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 16012,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Shield Samba Ready",
							uuid = "e294959c-c2ff-12e5-ba72-0a0d42b518f1",
							version = 3,
						},
					},
				},
				displayPath = "Mits/UWU/Ranged",
				mechanicTime = 1079,
				name = "UWU Shield Samba: Tumult x7",
				timelineIndex = 140,
				timerOffset = -2,
				uuid = "e5cda06a-42a2-d94a-a113-a9276bf6c8b2",
				version = 2,
			},
		},
	},
	[148] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Mits",
				uuid = "97f82374-cb3f-f2cc-99c1-c8f8e7ab1960",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mits",
				name = "UWU",
				uuid = "018918e8-f9b5-8b9d-b812-ffc48b8a87d1",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mits/UWU",
				name = "Personal",
				uuid = "066e3a66-bbe7-f591-b451-701d0866ae63",
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
							actionID = 65,
							conditions = 
							{
								
								{
									"2cd28e8d-8790-0319-9c5a-0b5f1851582d",
									true,
								},
								
								{
									"46a44ec4-216f-030f-b0b7-eda2595fb598",
									true,
								},
							},
							name = "Mantra",
							uuid = "0e659f99-0c7b-b05f-8b99-69a00b1f7e67",
							version = 2.1,
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
							jobValue = "MONK",
							name = "Monk",
							uuid = "2cd28e8d-8790-0319-9c5a-0b5f1851582d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 65,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Mantra Ready",
							uuid = "46a44ec4-216f-030f-b0b7-eda2595fb598",
							version = 3,
						},
					},
				},
				displayPath = "Mits/UWU/Personal",
				mechanicTime = 1100,
				name = "UWU Mantra: Ultimate Annihilation",
				timelineIndex = 148,
				timerOffset = -2,
				uuid = "0c4d87fd-047f-de73-8a9c-39b4025f8223",
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
				name = "Mits",
				uuid = "3fc93d6e-5a14-0f53-ac7a-02cf0f62d2dc",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mits",
				name = "UWU",
				uuid = "53ed3dc0-e555-9e24-a7e4-c728ebed818e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mits/UWU",
				name = "Feint",
				uuid = "b117f7e5-571b-7d3b-bff7-38745a802150",
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
							actionID = 7549,
							conditions = 
							{
								
								{
									"55032bb1-d3c1-66e1-b0c3-71d44c904f91",
									true,
								},
								
								{
									"106a32b8-0221-a547-8b32-52b8f341b17f",
									true,
								},
								
								{
									"a6629afc-0922-c180-a1b6-fd4d07f66224",
									true,
								},
							},
							name = "Feint",
							targetType = "Current Target",
							uuid = "624c9363-4238-9d0e-acd5-5f7e3ff0959f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return GetCurrentRole() == \"M2\"",
							name = "Roster: M2",
							uuid = "55032bb1-d3c1-66e1-b0c3-71d44c904f91",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return TensorCore.getLBGauge() >= 30000",
							dequeueIfLuaFalse = true,
							name = "LB3 Ready",
							uuid = "106a32b8-0221-a547-8b32-52b8f341b17f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Feint Ready",
							uuid = "a6629afc-0922-c180-a1b6-fd4d07f66224",
							version = 3,
						},
					},
				},
				displayPath = "Mits/UWU/Feint",
				mechanicTime = 1139,
				name = "UWU Feint: Tank Purge (LB3)",
				timelineIndex = 172,
				timerOffset = -2,
				uuid = "76e054d4-258b-9f3b-8546-8044ee8843b6",
				version = 2,
			},
		},
	},
	[185] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Mits",
				uuid = "d358a5be-e58d-f96c-9745-a0a4f88d5f10",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mits",
				name = "UWU",
				uuid = "a49221f5-cc1d-b46d-bb56-c7b8d5754d1c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mits/UWU",
				name = "Feint",
				uuid = "854e6144-2294-38c8-a61e-9b0f958c87fa",
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
							actionID = 7549,
							conditions = 
							{
								
								{
									"22771dde-4a21-4bf1-a536-854b4bf72dd6",
									true,
								},
								
								{
									"d8a95a9b-b4b5-32ec-85b5-1f3cf8288041",
									true,
								},
							},
							name = "Feint",
							targetType = "Current Target",
							uuid = "b9ba806c-b1f4-2985-a35d-b25e5836ff64",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return GetCurrentRole() == \"M1\"",
							name = "Roster: M1",
							uuid = "22771dde-4a21-4bf1-a536-854b4bf72dd6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Feint Ready",
							uuid = "d8a95a9b-b4b5-32ec-85b5-1f3cf8288041",
							version = 3,
						},
					},
				},
				displayPath = "Mits/UWU/Feint",
				mechanicTime = 1181,
				name = "UWU Feint: Homing Lasers 4",
				timelineIndex = 185,
				timerOffset = -2,
				uuid = "d0fb73df-f35b-c9e2-9c00-46f573a39e9a",
				version = 2,
			},
		},
	},
	[206] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Mits",
				uuid = "9ec311de-f165-88e3-9c19-998869e287d5",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mits",
				name = "UWU",
				uuid = "d6048a79-f9e8-74dc-9886-55c96d43169c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mits/UWU",
				name = "Feint",
				uuid = "a87c2600-450c-951c-80de-edeaaf6819ea",
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
							actionID = 7549,
							conditions = 
							{
								
								{
									"8a9076a6-ada8-d24c-b40c-a7fde29177ae",
									true,
								},
								
								{
									"be60ece9-71b3-22d1-80a2-51bb773479d9",
									true,
								},
							},
							name = "Feint",
							targetType = "Current Target",
							uuid = "4815ec9b-abde-1fdb-921c-499d86323697",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return GetCurrentRole() == \"M2\"",
							name = "Roster: M2",
							uuid = "8a9076a6-ada8-d24c-b40c-a7fde29177ae",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Feint Ready",
							uuid = "be60ece9-71b3-22d1-80a2-51bb773479d9",
							version = 3,
						},
					},
				},
				displayPath = "Mits/UWU/Feint",
				mechanicTime = 1243,
				name = "UWU Feint: Ultima",
				timelineIndex = 206,
				timerOffset = -2,
				uuid = "6f877010-feca-dc57-a82c-22c1c0303bda",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Mits/UWU",
				name = "Personal",
				uuid = "9a524dfd-a449-7383-84d9-3595ecd09b04",
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
							actionID = 65,
							conditions = 
							{
								
								{
									"948b93d4-bd75-430e-9cc2-fd260abb6b4e",
									true,
								},
								
								{
									"577a8e59-615d-c426-8026-b5377a5fbb35",
									true,
								},
							},
							name = "Mantra",
							uuid = "d2433abb-7a58-1e02-831c-3b62f156dc55",
							version = 2.1,
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
							jobValue = "MONK",
							name = "Monk",
							uuid = "948b93d4-bd75-430e-9cc2-fd260abb6b4e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 65,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Mantra Ready",
							uuid = "577a8e59-615d-c426-8026-b5377a5fbb35",
							version = 3,
						},
					},
				},
				displayPath = "Mits/UWU/Personal",
				mechanicTime = 1243,
				name = "UWU Mantra: Ultima",
				timelineIndex = 206,
				timerOffset = -2,
				uuid = "7873571c-6803-0eb5-a3da-5ab22762f6fb",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Mits/UWU",
				name = "Addle",
				uuid = "76de7ef4-b435-dded-9926-91b9dab0aad3",
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
							actionID = 7560,
							conditions = 
							{
								
								{
									"00f533c2-0a09-1e1e-b2e2-205087177bc8",
									true,
								},
								
								{
									"9c04a8dd-3362-91fe-9737-f6bd5ebb17ef",
									true,
								},
							},
							name = "Addle",
							targetType = "Current Target",
							uuid = "324f431a-d598-bd86-a178-9c10c32becaf",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return GetCurrentRole() == \"R2\"",
							dequeueIfLuaFalse = true,
							name = "Roster: R2",
							uuid = "00f533c2-0a09-1e1e-b2e2-205087177bc8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 7560,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Addle Ready",
							uuid = "9c04a8dd-3362-91fe-9737-f6bd5ebb17ef",
							version = 3,
						},
					},
				},
				displayPath = "Mits/UWU/Addle",
				mechanicTime = 1243,
				name = "UWU Addle: Ultima",
				timelineIndex = 206,
				timerOffset = -2,
				uuid = "9650955f-c0f2-1b90-8283-0a3a12a9c7de",
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
				name = "Mits",
				uuid = "c6489fb7-de1a-8547-962f-3dad284578b7",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mits",
				name = "UWU",
				uuid = "849873fb-a8da-9ea6-bb83-9a27c2d8782a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mits/UWU",
				name = "Ranged",
				uuid = "79d661aa-644f-8387-a12b-037bb0471307",
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
							actionID = 16889,
							conditions = 
							{
								
								{
									"758a827d-86d5-4315-a45f-dba0015e715d",
									true,
								},
								
								{
									"bab09484-06ea-726d-87a5-9c6e9b315c7e",
									true,
								},
								
								{
									"f6084d50-95b0-6ea8-a224-2ac7e08eb4b8",
									true,
								},
							},
							name = "Tactician",
							uuid = "9f9c0a5e-536e-1b41-a14d-a9684b2a0187",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return GetCurrentRole() == \"R1\"",
							dequeueIfLuaFalse = true,
							name = "Roster: R1",
							uuid = "758a827d-86d5-4315-a45f-dba0015e715d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "Job: MACHINIST",
							uuid = "bab09484-06ea-726d-87a5-9c6e9b315c7e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 16889,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Tactician Ready",
							uuid = "f6084d50-95b0-6ea8-a224-2ac7e08eb4b8",
							version = 3,
						},
					},
				},
				displayPath = "Mits/UWU/Ranged",
				mechanicTime = 1320,
				name = "UWU Tactician: Primal #2",
				timelineIndex = 215,
				timerOffset = -2,
				uuid = "80afaf08-f67a-ddfe-8982-6bd2575fc99d",
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
							actionID = 7405,
							conditions = 
							{
								
								{
									"4c35621f-b034-6327-bfb7-0e3461e8715b",
									true,
								},
								
								{
									"c7453d66-9576-5f68-af61-3440f0bb86c3",
									true,
								},
								
								{
									"0f564a84-232d-d243-b34f-db129a29edbe",
									true,
								},
							},
							name = "Troubadour",
							uuid = "4362c939-835a-1d86-b650-5abc4cd95cf7",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return GetCurrentRole() == \"R1\"",
							dequeueIfLuaFalse = true,
							name = "Roster: R1",
							uuid = "4c35621f-b034-6327-bfb7-0e3461e8715b",
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
							name = "Job: BARD",
							uuid = "c7453d66-9576-5f68-af61-3440f0bb86c3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 7405,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Troubadour Ready",
							uuid = "0f564a84-232d-d243-b34f-db129a29edbe",
							version = 3,
						},
					},
				},
				displayPath = "Mits/UWU/Ranged",
				mechanicTime = 1320,
				name = "UWU Troubadour: Primal #2",
				timelineIndex = 215,
				timerOffset = -2,
				uuid = "aaa284c7-3fed-9b58-9e2b-d55d838a7e3d",
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
							actionID = 16012,
							conditions = 
							{
								
								{
									"29d129c3-3391-df45-8a1e-f036e2b76320",
									true,
								},
								
								{
									"994c0394-01f9-bad3-a631-07b184d0a314",
									true,
								},
								
								{
									"5f5062b0-eb82-b1ee-a1cf-87072b813e71",
									true,
								},
							},
							name = "Shield Samba",
							uuid = "50a62f42-ce8e-cd82-8177-d6f19b01158a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return GetCurrentRole() == \"R1\"",
							dequeueIfLuaFalse = true,
							name = "Roster: R1",
							uuid = "29d129c3-3391-df45-8a1e-f036e2b76320",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "Job: DANCER",
							uuid = "994c0394-01f9-bad3-a631-07b184d0a314",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 16012,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Shield Samba Ready",
							uuid = "5f5062b0-eb82-b1ee-a1cf-87072b813e71",
							version = 3,
						},
					},
				},
				displayPath = "Mits/UWU/Ranged",
				mechanicTime = 1320,
				name = "UWU Shield Samba: Primal #2",
				timelineIndex = 215,
				timerOffset = -2,
				uuid = "a94635c7-bdb5-b830-b661-974a78582349",
				version = 2,
			},
		},
	},
	[225] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Mits",
				uuid = "008ed2b9-a460-fac6-abb1-260b8d66bebb",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mits",
				name = "UWU",
				uuid = "e27d4463-2b10-cd3a-889f-468f96634fce",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Mits/UWU",
				name = "Feint",
				uuid = "6e937dad-cc23-e6e6-abb6-4d5e3f7cffef",
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
							actionID = 7549,
							conditions = 
							{
								
								{
									"22771dde-4a21-4bf1-a536-854b4bf72dd6",
									true,
								},
								
								{
									"d8a95a9b-b4b5-32ec-85b5-1f3cf8288041",
									true,
								},
							},
							name = "Feint",
							targetType = "Current Target",
							uuid = "b9ba806c-b1f4-2985-a35d-b25e5836ff64",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return GetCurrentRole() == \"M1\"",
							name = "Roster: M1",
							uuid = "22771dde-4a21-4bf1-a536-854b4bf72dd6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionCDValue = 1,
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Feint Ready",
							uuid = "d8a95a9b-b4b5-32ec-85b5-1f3cf8288041",
							version = 3,
						},
					},
				},
				displayPath = "Mits/UWU/Feint",
				mechanicTime = 1508,
				name = "UWU Feint: Homing Lasers 4",
				timelineIndex = 225,
				timerOffset = -2,
				uuid = "4a7c8336-320c-0215-89f2-e68919ac9c57",
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
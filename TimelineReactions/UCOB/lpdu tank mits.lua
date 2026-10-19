local tbl = 
{
	[4] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared",
				uuid = "e2502131-fb85-3907-8402-57c3f8ffd3c7",
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
									"08b77f25-9a59-e582-886d-14f3fd7d9a0a",
									true,
								},
								
								{
									"8e964e45-7647-b056-92d1-e420c6b89d1e",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Sprint",
							uuid = "1c60b9bc-f9d0-3cc1-b4a9-f9077ffde025",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "08b77f25-9a59-e582-886d-14f3fd7d9a0a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "8e964e45-7647-b056-92d1-e420c6b89d1e",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 16.3,
				name = "[LPDU Tank] Sprint",
				timeRange = true,
				timelineIndex = 4,
				timerEndOffset = -6,
				timerStartOffset = -9,
				uuid = "2ba0c9b6-7fb7-2a89-81be-8f7e1bbaecdb",
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
									"45319b0b-06cb-b4bf-8b66-1110edac4762",
									true,
								},
								
								{
									"7ce47530-a333-08b6-b672-667696d044a6",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Rampart",
							uuid = "5bcab823-dcd1-8d64-baf3-b32a3b33189a",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "45319b0b-06cb-b4bf-8b66-1110edac4762",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "7ce47530-a333-08b6-b672-667696d044a6",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 16.3,
				name = "[LPDU Tank] OT Rampart",
				timeRange = true,
				timelineIndex = 4,
				timerEndOffset = -4,
				timerStartOffset = -7,
				uuid = "73439106-6dfd-aa6e-83db-9d5dd4e2014b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker",
				uuid = "4b79b3d1-5137-a329-a1ea-fa756422fc0c",
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
									"d1861b8f-4484-0503-83f2-9586cefbddaa",
									true,
								},
								
								{
									"c9ceba5e-d151-3633-8a0a-66a92b14d42b",
									true,
								},
								
								{
									"f627ba2d-4073-734c-9c72-25255a9afd8b",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "08c5fa5b-a75f-e6ec-a847-c376b4609e23",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "d1861b8f-4484-0503-83f2-9586cefbddaa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "c9ceba5e-d151-3633-8a0a-66a92b14d42b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							partyTargetSubType = "Furthest",
							uuid = "f627ba2d-4073-734c-9c72-25255a9afd8b",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 16.3,
				name = "[LPDU Tank] HoL",
				timeRange = true,
				timelineIndex = 4,
				timerEndOffset = -2,
				timerStartOffset = -5,
				uuid = "98abce46-5f5a-31d4-bd83-61e61a91f41f",
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
									"71606b04-bbd7-d4f4-9157-1efb9125f875",
									true,
								},
								
								{
									"be1acbc3-2370-6c1d-896c-e248c0165976",
									true,
								},
								
								{
									"904e8e2e-017a-8bab-ad60-8fca3f649613",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_RoyalGuard",
							uuid = "6fe34ab8-39a2-807f-8a24-0bf703924bf8",
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
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "71606b04-bbd7-d4f4-9157-1efb9125f875",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "be1acbc3-2370-6c1d-896c-e248c0165976",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "904e8e2e-017a-8bab-ad60-8fca3f649613",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 16.3,
				name = "[LPDU Tank] OT Stance ON",
				timeRange = true,
				timelineIndex = 4,
				timerEndOffset = 3,
				uuid = "cdd603df-a02f-f454-b075-16fcdcd2a1f3",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "30871e84-99a0-815c-97d9-55d35af0bd5f",
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
									"82042fd9-b1ce-0fe6-a105-83ec80527b60",
									true,
								},
								
								{
									"50a2b05e-ebba-5841-b3b6-6c9f1fc4897e",
									true,
								},
								
								{
									"d65e9abc-1b60-b8ff-b8ae-8c5f4deb4f13",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_DivineVeil",
							uuid = "39d99a99-92a6-cd55-86a7-e29dcc448e50",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "82042fd9-b1ce-0fe6-a105-83ec80527b60",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "50a2b05e-ebba-5841-b3b6-6c9f1fc4897e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							partyTargetSubType = "Furthest",
							uuid = "d65e9abc-1b60-b8ff-b8ae-8c5f4deb4f13",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 16.3,
				name = "[LPDU PLD] DivineVeil",
				timeRange = true,
				timelineIndex = 4,
				timerEndOffset = -2,
				timerStartOffset = -5,
				uuid = "8253735c-eba9-7d17-99ad-482ee1e23ecb",
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
									"abd0f04f-aac6-e543-8387-5e48485cebdf",
									true,
								},
								
								{
									"01845c3c-72a4-c3c4-be38-f705bab72c0c",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Hotbar_IronWill",
							uuid = "f796c6db-4a68-dbd7-aca2-7d601146023b",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "abd0f04f-aac6-e543-8387-5e48485cebdf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "01845c3c-72a4-c3c4-be38-f705bab72c0c",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 16.3,
				name = "[LPDU PLD] OT Stance ON",
				timeRange = true,
				timelineIndex = 4,
				timerEndOffset = 3,
				uuid = "2701df69-5f7c-86a5-9ff8-87726ff093f5",
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
							aType = "Alert",
							alertDuration = 4000,
							alertTTS = true,
							alertText = "PASSAGE OF ARMS IN 2s - position for party",
							conditions = 
							{
								
								{
									"53d74fac-b388-a1a6-8181-68e98eb9b9df",
									true,
								},
								
								{
									"bee98da8-c318-7a30-a6e0-66e5d56d91db",
									true,
								},
							},
							uuid = "e86d08e3-2b87-ae70-80d7-2a092095cd30",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "53d74fac-b388-a1a6-8181-68e98eb9b9df",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "bee98da8-c318-7a30-a6e0-66e5d56d91db",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							partyTargetSubType = "Furthest",
							uuid = "84f4faac-89f6-f315-8e04-4d48b60b8ef1",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 16.3,
				name = "[LPDU PLD] Passage - manual positioning",
				timeRange = true,
				timelineIndex = 4,
				timerEndOffset = -6.5,
				timerStartOffset = -7,
				uuid = "5caaf4b7-4d67-50a8-aeec-e785f0b89082",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "702d52a5-0164-eecc-9085-9e5ab7d3a628",
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
									"8a253939-07dc-d95f-9944-992a27abaf11",
									true,
								},
								
								{
									"a403b196-a500-4fc9-833b-e2ac76c815e5",
									true,
								},
								
								{
									"2b5c9614-e937-12fe-a037-670e8d33ac99",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_ShakeItOff",
							uuid = "b276da73-ae8f-9ec7-8bea-400bec886a4a",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "8a253939-07dc-d95f-9944-992a27abaf11",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "a403b196-a500-4fc9-833b-e2ac76c815e5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							partyTargetSubType = "Furthest",
							uuid = "2b5c9614-e937-12fe-a037-670e8d33ac99",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 16.3,
				name = "[LPDU WAR] ShakeItOff",
				timeRange = true,
				timelineIndex = 4,
				timerEndOffset = -2,
				timerStartOffset = -5,
				uuid = "8e674f05-d5e7-24dd-a4dc-1f9710cc0ff1",
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
									"5053b1a7-6b19-985e-bcc5-635fdd11fa9c",
									true,
								},
								
								{
									"1d7861b0-3923-54c8-82bf-58f6cfdfae16",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Hotbar_Defiance",
							uuid = "8c75b707-58bf-5587-b5a6-728781f896b9",
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
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "5053b1a7-6b19-985e-bcc5-635fdd11fa9c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "1d7861b0-3923-54c8-82bf-58f6cfdfae16",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 16.3,
				name = "[LPDU WAR] OT Stance ON",
				timeRange = true,
				timelineIndex = 4,
				timerEndOffset = 3,
				uuid = "b9b272e2-7c74-3a52-b2da-bb6daa9bf91b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "9e351f73-0244-ce65-bece-88c607b9dcf6",
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
									"12d3bf12-f2de-942a-8957-ab80ef142eb7",
									true,
								},
								
								{
									"6c6c117f-1def-38b5-b68e-7360460d7561",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Hotbar_Grit",
							uuid = "f154909f-728e-3b26-898c-dad8f76e9bfd",
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
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "12d3bf12-f2de-942a-8957-ab80ef142eb7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "6c6c117f-1def-38b5-b68e-7360460d7561",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 16.3,
				name = "[LPDU DRK] OT Stance ON",
				timeRange = true,
				timelineIndex = 4,
				timerEndOffset = 3,
				uuid = "34699380-6d3c-ad2b-8929-35e68ba0010b",
				version = 2,
			},
		},
	},
	[5] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker",
				uuid = "471e9cb3-f09f-112a-96fc-6a0400e8116b",
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
									"29af4fa5-4c67-decb-be20-a24e93637366",
									true,
								},
								
								{
									"a24b95ab-9599-0885-be99-5d27a00b03ff",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Nebula",
							uuid = "2d12f875-83a2-e5d2-b82a-28753dc944cd",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "29af4fa5-4c67-decb-be20-a24e93637366",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "a24b95ab-9599-0885-be99-5d27a00b03ff",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 24.5,
				name = "[LPDU Tank] MT Nebula",
				timeRange = true,
				timelineIndex = 5,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "f8c16758-3bff-873f-a949-e29d0aa4c6c2",
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
									"6acf360c-12ba-37ab-a861-a9ee734a7d98",
									true,
								},
								
								{
									"04efb582-6c66-36aa-b592-3fe2f9cef9f2",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							uuid = "c60aa0b2-73cb-bcc7-b1ae-b61d6da45f90",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "6acf360c-12ba-37ab-a861-a9ee734a7d98",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "04efb582-6c66-36aa-b592-3fe2f9cef9f2",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 24.5,
				name = "[LPDU Tank] OT Camo",
				timeRange = true,
				timelineIndex = 5,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "e9e26cf8-d528-07c8-8124-9516e769201c",
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
									"bdec7565-a3ff-6ee2-9e76-4f68ccb79c29",
									true,
								},
								
								{
									"344fa237-1843-32a3-8190-20c41f27bf40",
									true,
								},
								
								{
									"2ca7f431-878d-1f0a-b354-6fc82bac66cf",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_ReleaseRoyalGuard",
							uuid = "44a9110f-cf23-7f64-8e4d-d071caffef1a",
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
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "bdec7565-a3ff-6ee2-9e76-4f68ccb79c29",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "344fa237-1843-32a3-8190-20c41f27bf40",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 1833,
							category = "Self",
							uuid = "2ca7f431-878d-1f0a-b354-6fc82bac66cf",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 24.5,
				name = "[LPDU Tank] MT Stance OFF",
				timeRange = true,
				timelineIndex = 5,
				timerEndOffset = -2,
				timerStartOffset = -5,
				uuid = "6c556b92-8ab4-8643-84f1-79417711f399",
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
									"c77beb04-6d88-a23d-ab06-114845a59c70",
									true,
								},
								
								{
									"ad087c0c-aed5-7c39-9992-e253ba423f0c",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "a767cc95-a3f2-c062-b90a-1f8d61bd30d3",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "c77beb04-6d88-a23d-ab06-114845a59c70",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "ad087c0c-aed5-7c39-9992-e253ba423f0c",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 24.5,
				name = "[LPDU Tank] MT HoS Self",
				timeRange = true,
				timelineIndex = 5,
				timerStartOffset = -3,
				uuid = "24247b79-01fc-3987-a478-63958c8d1171",
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
									"c9d58e2a-edd2-a74b-b5e7-f48cb4eaba48",
									true,
								},
								
								{
									"ac7e417d-e979-c2b4-96f8-3983289eab6b",
									true,
								},
								
								{
									"756ad7dc-87a1-80d5-b1c8-a6760f96ef62",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_RoyalGuard",
							uuid = "fb47c212-012b-7f78-a0ea-732cfb35225a",
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
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "c9d58e2a-edd2-a74b-b5e7-f48cb4eaba48",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "ac7e417d-e979-c2b4-96f8-3983289eab6b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "756ad7dc-87a1-80d5-b1c8-a6760f96ef62",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 24.5,
				name = "[LPDU Tank] OT Stance ON",
				timeRange = true,
				timelineIndex = 5,
				timerStartOffset = -3,
				uuid = "4764be03-5c2c-7296-aae9-7968188604cc",
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
									"1da97ce2-9e91-3ed5-a010-3c7c2598fc1e",
									true,
								},
								
								{
									"9b052716-c427-ae40-89b1-ae018534d801",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "83ab26b3-67a5-3526-9a31-4b21116a8e53",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "1da97ce2-9e91-3ed5-a010-3c7c2598fc1e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "9b052716-c427-ae40-89b1-ae018534d801",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 24.5,
				name = "[LPDU Tank] OT HoS Self",
				timeRange = true,
				timelineIndex = 5,
				timerEndOffset = 4.5,
				timerStartOffset = 1.5,
				uuid = "c4c55ea5-e1f8-1cb4-baeb-553cf4d4c6f8",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared",
				uuid = "c6e5b3b8-6ef6-59f4-b514-4480fc4c20ad",
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
									"d3c6ea40-4a6f-cccb-b149-59c6bf1b9f7d",
									true,
								},
								
								{
									"d27e9c6a-bce3-648d-a1c8-a8702e9a0dbe",
									true,
								},
								
								{
									"def0aebe-1554-4db1-a8b8-d4ce55b22516",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "3099da5d-b4d1-252a-aaca-660d420c49d0",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "d3c6ea40-4a6f-cccb-b149-59c6bf1b9f7d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "d27e9c6a-bce3-648d-a1c8-a8702e9a0dbe",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 5,
							name = "Reprisal range <=5y",
							partyTargetType = "Detection Target",
							uuid = "72477268-fc1b-a316-b712-07ff2b562fa5",
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
									"72477268-fc1b-a316-b712-07ff2b562fa5",
									true,
								},
							},
							filterTargetType = "Enemy",
							name = "Enemy in Reprisal range",
							uuid = "def0aebe-1554-4db1-a8b8-d4ce55b22516",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 24.5,
				name = "[LPDU Tank] MT Reprisal",
				timeRange = true,
				timelineIndex = 5,
				timerEndOffset = -5,
				timerStartOffset = -8,
				uuid = "79e2f7db-d0dd-b208-9f0c-4de84194431b",
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
									"40ea919c-0397-ace3-a3ac-c813c6f5f16c",
									true,
								},
								
								{
									"491e7e58-8def-316e-9a52-c06aa434d575",
									true,
								},
								
								{
									"801b4d2f-661e-7b4d-95bc-05cce16736bb",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "fe712ff2-8183-c70e-a263-bbaf0b7ab5bf",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "40ea919c-0397-ace3-a3ac-c813c6f5f16c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "491e7e58-8def-316e-9a52-c06aa434d575",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nlocal other=AnyoneCore.Roster.entOf(slot==\"T1\" and \"T2\" or \"T1\")\nreturn other ~= nil and (other.job==19 or other.job==32 or other.job==37)",
							name = "No WAR Check",
							uuid = "801b4d2f-661e-7b4d-95bc-05cce16736bb",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 24.5,
				name = "[LPDU Tank] OT Fast Voke NO WAR",
				timeRange = true,
				timelineIndex = 5,
				timerEndOffset = -0.5,
				timerStartOffset = -3.5,
				uuid = "6ba165c8-3ea3-012b-adc0-299d9ada8b3b",
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
									"97f71809-6bba-2031-ac7f-c0207cfce00b",
									true,
								},
								
								{
									"69cf49de-d690-2b2b-9abf-b2acf98bcdcb",
									true,
								},
								
								{
									"fbabeaec-648f-2d7a-87bb-edd49ee12075",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_ShirkMouse",
							targetType = "Detection Target",
							uuid = "54511c57-19fe-e7e9-836f-b951b6e448ce",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "97f71809-6bba-2031-ac7f-c0207cfce00b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "69cf49de-d690-2b2b-9abf-b2acf98bcdcb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "127eee9f-ce9b-5fd8-827a-6f1ae65f9526",
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
									"127eee9f-ce9b-5fd8-827a-6f1ae65f9526",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "fbabeaec-648f-2d7a-87bb-edd49ee12075",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 24.5,
				name = "[LPDU Tank] MT Shirk",
				timeRange = true,
				timelineIndex = 5,
				timerEndOffset = 2,
				timerStartOffset = -1,
				uuid = "f6062321-e66c-246c-9925-1bafa5402386",
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
									"988e6508-b890-fcdf-9735-3354c95cc031",
									true,
								},
								
								{
									"4baf69f0-0d7c-c279-b2bb-34953f62222d",
									true,
								},
								
								{
									"8e46c9cc-91a4-8e59-b182-a02b842ad3f0",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "5e0acded-2efa-57c2-a541-9573825ea5b2",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "988e6508-b890-fcdf-9735-3354c95cc031",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "4baf69f0-0d7c-c279-b2bb-34953f62222d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nlocal other=AnyoneCore.Roster.entOf(slot==\"T1\" and \"T2\" or \"T1\")\nreturn other ~= nil and (other.job==21)",
							name = "With WAR Check",
							uuid = "8e46c9cc-91a4-8e59-b182-a02b842ad3f0",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 24.5,
				name = "[LPDU Tank] OT Slow Voke With WAR",
				timeRange = true,
				timelineIndex = 5,
				timerEndOffset = 3,
				uuid = "7308f907-8ba2-1cd9-9e0a-f5217bbf5c2b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "dbebaf01-2d06-fc95-890a-3a83b2b4d111",
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
									"993303b7-4193-11ad-84cc-6500cbd465dd",
									true,
								},
								
								{
									"06e11bdc-6c87-2098-962e-a8f66ccd2bde",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Guardian",
							uuid = "87c78cb9-50db-647f-84c9-dc701e6cff5a",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "993303b7-4193-11ad-84cc-6500cbd465dd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "06e11bdc-6c87-2098-962e-a8f66ccd2bde",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 24.5,
				name = "[LPDU PLD] MT Guardian",
				timeRange = true,
				timelineIndex = 5,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "764e3a4b-d4e5-9b32-b476-718c6795277e",
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
									"ef8ea428-2cf6-9101-9154-74c04a81bc4a",
									true,
								},
								
								{
									"0b7693be-6685-0c7b-941d-a79e7c3ea86c",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Bulwark",
							uuid = "f01a123e-116e-0767-8d98-c9bcecf67da1",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "ef8ea428-2cf6-9101-9154-74c04a81bc4a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "0b7693be-6685-0c7b-941d-a79e7c3ea86c",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 24.5,
				name = "[LPDU PLD] OT Bulwark",
				timeRange = true,
				timelineIndex = 5,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "2aa97998-665b-1053-9686-fa6e639af91a",
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
									"084aff0a-1f85-68fb-a402-7f0951af19b6",
									true,
								},
								
								{
									"494be59a-6115-0421-a56b-2cac14424657",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Hotbar_ReleaseIronWill",
							uuid = "a88e0e95-f2c2-9036-8e06-83677c307244",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "084aff0a-1f85-68fb-a402-7f0951af19b6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "494be59a-6115-0421-a56b-2cac14424657",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 24.5,
				name = "[LPDU PLD] MT Stance OFF",
				timeRange = true,
				timelineIndex = 5,
				timerEndOffset = -2,
				timerStartOffset = -5,
				uuid = "e130a738-1da9-972b-8797-62c786f141e0",
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
									"e69647e2-5b9e-6bac-9cd9-d42c9ccb5bd1",
									true,
								},
								
								{
									"de24ea11-5d94-0fcb-beb3-e59806e16dc6",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HolySheltron",
							uuid = "7dd2ffec-7b9f-55bb-b481-d3eb46ffd216",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "e69647e2-5b9e-6bac-9cd9-d42c9ccb5bd1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "de24ea11-5d94-0fcb-beb3-e59806e16dc6",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 24.5,
				name = "[LPDU PLD] MT Sheltron/Intervention Self",
				timeRange = true,
				timelineIndex = 5,
				timerStartOffset = -3,
				uuid = "cc865e66-d7b1-c25c-9b84-7a7a867fe9fa",
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
									"f8e62451-a79c-dbd5-accc-a668f5a065c4",
									true,
								},
								
								{
									"c93952b7-335d-f130-a996-a5982f5c66da",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Hotbar_IronWill",
							uuid = "2fd81a87-8307-4695-bfff-ea529523d2a5",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "f8e62451-a79c-dbd5-accc-a668f5a065c4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "c93952b7-335d-f130-a996-a5982f5c66da",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 24.5,
				name = "[LPDU PLD] OT Stance ON",
				timeRange = true,
				timelineIndex = 5,
				timerStartOffset = -3,
				uuid = "eeca45f1-902b-f3aa-a72f-4f353a4c7a02",
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
									"6bc23247-0b35-8545-911e-a9c2673e503c",
									true,
								},
								
								{
									"06a20317-dd0a-f6c9-8da9-f824cf3c16d9",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HolySheltron",
							uuid = "ec964b97-d83a-f79d-9c77-1bc7fd18cca3",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "6bc23247-0b35-8545-911e-a9c2673e503c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "06a20317-dd0a-f6c9-8da9-f824cf3c16d9",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 24.5,
				name = "[LPDU PLD] OT Sheltron/Intervention Self",
				timeRange = true,
				timelineIndex = 5,
				timerEndOffset = 4.5,
				timerStartOffset = 1.5,
				uuid = "c1490738-7b21-8f64-ac0f-f5250530e3cf",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "b2fcd15d-f911-9387-a8f0-2113ec877e7c",
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
									"430bc9bb-71fc-f3df-b80c-2066fad4fcd3",
									true,
								},
								
								{
									"ae401d97-ce31-a0fe-9383-9a561f10e13b",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Damnation",
							uuid = "0267af92-9ba7-604e-8ff3-d80eb6def2fd",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "430bc9bb-71fc-f3df-b80c-2066fad4fcd3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "ae401d97-ce31-a0fe-9383-9a561f10e13b",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 24.5,
				name = "[LPDU WAR] MT Damnation",
				timeRange = true,
				timelineIndex = 5,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "8d5a46d4-5001-c625-b328-1541ed4c06d8",
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
									"95b9034b-630a-8a6c-8e33-09702712343a",
									true,
								},
								
								{
									"d04f4ed8-5d99-f370-9469-9d8d749c064c",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_ThrillOfBattle",
							uuid = "fa2239a3-cc6e-1770-b281-584c9567edcf",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "95b9034b-630a-8a6c-8e33-09702712343a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "d04f4ed8-5d99-f370-9469-9d8d749c064c",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 24.5,
				name = "[LPDU WAR] OT ThrillOfBattle",
				timeRange = true,
				timelineIndex = 5,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "ce0fd2c7-3fcd-12b7-a234-d46680c97f10",
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
									"f609da67-caa7-1ff9-8f45-8aa9cfcd6de4",
									true,
								},
								
								{
									"8cf5a9b7-4a6b-177e-a887-46c5b1c62d19",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Hotbar_ReleaseDefiance",
							uuid = "1adf0670-e896-93bb-899e-5b4c130ae39a",
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
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "f609da67-caa7-1ff9-8f45-8aa9cfcd6de4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "8cf5a9b7-4a6b-177e-a887-46c5b1c62d19",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 24.5,
				name = "[LPDU WAR] MT Stance OFF",
				timeRange = true,
				timelineIndex = 5,
				timerEndOffset = -2,
				timerStartOffset = -5,
				uuid = "3f61df61-6ebb-dd5a-a59b-c88a50e2611b",
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
									"91fab6aa-b064-460d-9e5f-d8e941a56818",
									true,
								},
								
								{
									"89c46ea1-f2a9-aebe-9a33-15a42b7e9b64",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Bloodwhetting",
							uuid = "abe2ae59-dc45-35c3-9947-810cc9e6c692",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "91fab6aa-b064-460d-9e5f-d8e941a56818",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "89c46ea1-f2a9-aebe-9a33-15a42b7e9b64",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 24.5,
				name = "[LPDU WAR] MT Raw Intuition Self",
				timeRange = true,
				timelineIndex = 5,
				timerStartOffset = -3,
				uuid = "e2cb9b09-3dda-3825-9818-1b2b7d66f5e3",
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
									"9820cffb-d849-2922-b804-4bf10959a4af",
									true,
								},
								
								{
									"575101d5-0c66-7105-a45d-d27f63da679d",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Hotbar_Defiance",
							uuid = "1c6a6d52-12c0-5f99-9f8a-ff00ca9dff63",
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
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "9820cffb-d849-2922-b804-4bf10959a4af",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "575101d5-0c66-7105-a45d-d27f63da679d",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 24.5,
				name = "[LPDU WAR] OT Stance ON",
				timeRange = true,
				timelineIndex = 5,
				timerStartOffset = -3,
				uuid = "6e47a544-7a2e-d56d-8517-3adadb677f76",
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
									"02bbec21-c8ee-1ac6-bdcc-b6dc38004812",
									true,
								},
								
								{
									"946bfa6e-82eb-85e0-b8af-e7330edab688",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Bloodwhetting",
							uuid = "dd72e271-7b77-dc6d-9139-9d0d5b5bee22",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "02bbec21-c8ee-1ac6-bdcc-b6dc38004812",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "946bfa6e-82eb-85e0-b8af-e7330edab688",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 24.5,
				name = "[LPDU WAR] OT Raw Intuition Self",
				timeRange = true,
				timelineIndex = 5,
				timerEndOffset = 4.5,
				timerStartOffset = 1.5,
				uuid = "decc5371-899a-eb5b-a12a-e99256c9dcde",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "e0255e52-1c2f-f2ed-9809-3b3d8bde7651",
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
									"0224afef-1a70-5e17-a8bb-652583be7324",
									true,
								},
								
								{
									"4941e1db-8b25-8eb8-9c5a-cbe8c3d94051",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_ShadowedVigil",
							uuid = "9ec52cf0-eb15-fef1-b13b-7f652f2b2715",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "0224afef-1a70-5e17-a8bb-652583be7324",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "4941e1db-8b25-8eb8-9c5a-cbe8c3d94051",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 24.5,
				name = "[LPDU DRK] MT ShadowedVigil",
				timeRange = true,
				timelineIndex = 5,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "431c00ba-fe56-4a12-973f-b53e470e2de5",
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
									"1c8772cf-e530-1f34-b9da-ef90762c1a4f",
									true,
								},
								
								{
									"35097618-d75b-69ee-8b97-9d09ba2d8038",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_DarkMind",
							uuid = "d407d008-aa8d-d1ba-96bf-73a08105c3a8",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "1c8772cf-e530-1f34-b9da-ef90762c1a4f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "35097618-d75b-69ee-8b97-9d09ba2d8038",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 24.5,
				name = "[LPDU DRK] OT DarkMind",
				timeRange = true,
				timelineIndex = 5,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "3407abbf-35aa-bb9f-b11f-a7c9990ac599",
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
									"771d0530-5ffc-059a-a5c4-87beeadb222c",
									true,
								},
								
								{
									"15f4282e-54c8-e260-9f81-aa174a33df24",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Hotbar_ReleaseGrit",
							uuid = "1c54b048-69bf-07e6-8aa1-f1df1ba81f37",
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
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "771d0530-5ffc-059a-a5c4-87beeadb222c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "15f4282e-54c8-e260-9f81-aa174a33df24",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 24.5,
				name = "[LPDU DRK] MT Stance OFF",
				timeRange = true,
				timelineIndex = 5,
				timerEndOffset = -2,
				timerStartOffset = -5,
				uuid = "f487f956-f2c0-14e9-bd18-7b2174fde879",
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
									"e8d55aae-a409-34b0-ab39-994be724c5f3",
									true,
								},
								
								{
									"7a5864b9-53e0-4682-af25-7753d66b95f0",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf",
							uuid = "7a4288af-6a02-5dd9-8a04-ac68bdb8cb9a",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "e8d55aae-a409-34b0-ab39-994be724c5f3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "7a5864b9-53e0-4682-af25-7753d66b95f0",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 24.5,
				name = "[LPDU DRK] MT TBN Self",
				timeRange = true,
				timelineIndex = 5,
				timerStartOffset = -3,
				uuid = "36e04e72-b7ce-f58a-b316-b0b7ebd45fc8",
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
									"51746f82-5c36-eaff-8f54-44944a9408de",
									true,
								},
								
								{
									"4e501b4c-fa7a-cf5a-941b-59828b655269",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Hotbar_Grit",
							uuid = "c7add60e-6cc4-1b39-8640-e46acdf6020a",
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
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "51746f82-5c36-eaff-8f54-44944a9408de",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "4e501b4c-fa7a-cf5a-941b-59828b655269",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 24.5,
				name = "[LPDU DRK] OT Stance ON",
				timeRange = true,
				timelineIndex = 5,
				timerStartOffset = -3,
				uuid = "3fc4b19b-dfa1-fbcc-b394-a3ddc27d509e",
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
									"dd415be6-c81a-c2db-a7be-48d7ff2caa62",
									true,
								},
								
								{
									"7e86c21b-2386-52fc-950d-a9ae4fe030fd",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf",
							uuid = "7ece1897-4e55-fe3c-82f9-e8481eead92b",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "dd415be6-c81a-c2db-a7be-48d7ff2caa62",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "7e86c21b-2386-52fc-950d-a9ae4fe030fd",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 24.5,
				name = "[LPDU DRK] OT TBN Self",
				timeRange = true,
				timelineIndex = 5,
				timerEndOffset = 4.5,
				timerStartOffset = 1.5,
				uuid = "1b6d44a4-bd72-55d1-a49b-9149f2d48877",
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
				name = "Gunbreaker",
				uuid = "e2870e8a-9dbe-ed89-bc9c-5d136d2ae54e",
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
									"3f906e27-25b4-24fd-b9a4-6db79786f3ef",
									true,
								},
								
								{
									"70f8db53-b93f-b147-93c2-e3466918c64a",
									true,
								},
								
								{
									"8254b901-99a1-4c62-a242-072b5267cc28",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_RoyalGuard",
							uuid = "048af2cb-ca0f-d89a-b701-932b3208408f",
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
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "3f906e27-25b4-24fd-b9a4-6db79786f3ef",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "70f8db53-b93f-b147-93c2-e3466918c64a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "8254b901-99a1-4c62-a242-072b5267cc28",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 47.5,
				name = "[LPDU Tank] MT Stance ON",
				timeRange = true,
				timelineIndex = 10,
				timerEndOffset = 8,
				timerStartOffset = 5,
				uuid = "0f8b9e7d-2916-f1fa-9150-af6847566f9d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "3c81ea70-a34b-9638-81f0-281c9a6b2d84",
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
									"4519171f-9c38-bc45-8683-210b4d7c92d0",
									true,
								},
								
								{
									"07213dc8-42ee-241b-a2eb-3b07ade8d36a",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Hotbar_IronWill",
							uuid = "8762ece4-8986-b08b-944e-3c5e8f8641fa",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "4519171f-9c38-bc45-8683-210b4d7c92d0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "07213dc8-42ee-241b-a2eb-3b07ade8d36a",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 47.5,
				name = "[LPDU PLD] MT Stance ON",
				timeRange = true,
				timelineIndex = 10,
				timerEndOffset = 8,
				timerStartOffset = 5,
				uuid = "6564a7a3-e79c-0df7-b46a-69de20a27a7a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "222d7b3b-cfad-073e-b78c-5b13f6f4cf15",
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
									"4813844b-8b2b-a150-9df9-9628e81167a9",
									true,
								},
								
								{
									"9d820286-9a90-17c8-9454-4b3487071457",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Hotbar_Defiance",
							uuid = "592d1310-a38b-f3bf-859c-9cafb573c43e",
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
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "4813844b-8b2b-a150-9df9-9628e81167a9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "9d820286-9a90-17c8-9454-4b3487071457",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 47.5,
				name = "[LPDU WAR] MT Stance ON",
				timeRange = true,
				timelineIndex = 10,
				timerEndOffset = 8,
				timerStartOffset = 5,
				uuid = "24d98a67-acd5-3720-a23d-7ba691f900c2",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "4a90709c-abc5-d960-b489-a4a8338cbcbe",
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
									"5460a027-4f4a-7641-98f6-d47edb8e7a31",
									true,
								},
								
								{
									"2c0dc6a2-8864-1723-ad7d-8ccfeb927c7f",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Hotbar_Grit",
							uuid = "e5d84f1e-5e39-702a-8022-085d29ca82ba",
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
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "5460a027-4f4a-7641-98f6-d47edb8e7a31",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "2c0dc6a2-8864-1723-ad7d-8ccfeb927c7f",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 47.5,
				name = "[LPDU DRK] MT Stance ON",
				timeRange = true,
				timelineIndex = 10,
				timerEndOffset = 8,
				timerStartOffset = 5,
				uuid = "395bfd2f-6fd5-566e-ab12-1fd220922490",
				version = 2,
			},
		},
	},
	[14] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker",
				uuid = "5a858975-fdc4-cb8f-ab77-50a21254d8d6",
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
									"6c68594b-0319-e045-aba6-aa43116b5fc7",
									true,
								},
								
								{
									"d57a09a9-b252-c750-8ed9-1b81046f3d2a",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_AuroraSelf",
							uuid = "acce7807-10fa-35c0-9134-35097ec1a389",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "6c68594b-0319-e045-aba6-aa43116b5fc7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "d57a09a9-b252-c750-8ed9-1b81046f3d2a",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 70.6,
				name = "[LPDU Tank] OT Aurora Self",
				timeRange = true,
				timelineIndex = 14,
				timerEndOffset = -14,
				timerStartOffset = -17,
				uuid = "131b66ba-1677-18cf-a1c1-dde997705f59",
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
									"8d0aa84f-403f-593f-b8ca-4edbd156b0ad",
									true,
								},
								
								{
									"747946e4-21c9-3300-bb8b-a4061be504d3",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Nebula",
							uuid = "45733818-ccb1-2635-a364-942147ed20ff",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "8d0aa84f-403f-593f-b8ca-4edbd156b0ad",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "747946e4-21c9-3300-bb8b-a4061be504d3",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 70.6,
				name = "[LPDU Tank] OT Nebula",
				timeRange = true,
				timelineIndex = 14,
				timerEndOffset = -11,
				timerStartOffset = -14,
				uuid = "4097269b-bb1d-872c-ad1b-20b75ad9af37",
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
									"d525262c-bfbd-8cb2-b24d-779d11cab20c",
									true,
								},
								
								{
									"bc755aed-bf86-da40-8408-d9faede53182",
									true,
								},
								
								{
									"be8ed62a-aeae-5931-9192-c178564a2161",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_RoyalGuard",
							uuid = "057d673b-21f5-39a3-a4ed-72fcd9f1f441",
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
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "d525262c-bfbd-8cb2-b24d-779d11cab20c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "bc755aed-bf86-da40-8408-d9faede53182",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "be8ed62a-aeae-5931-9192-c178564a2161",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 70.6,
				name = "[LPDU Tank] MT Stance ON",
				timeRange = true,
				timelineIndex = 14,
				timerEndOffset = -5,
				timerStartOffset = -8,
				uuid = "0e8ca800-ecff-ac18-beee-f6c4225c436d",
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
									"8f81c740-2e02-2748-9ecc-057d59f6a459",
									true,
								},
								
								{
									"7d7fe02a-5af3-3231-b476-ec9d7a7723bc",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "e452dd4a-8e89-dbfa-87cd-00bcc7b45b69",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "8f81c740-2e02-2748-9ecc-057d59f6a459",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "7d7fe02a-5af3-3231-b476-ec9d7a7723bc",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 70.6,
				name = "[LPDU Tank] OT HoS Self",
				timeRange = true,
				timelineIndex = 14,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "b1f4be51-f49a-0a36-b74a-9e1637e9e987",
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
									"f6a344d7-ddfc-f786-adb5-1df113d27693",
									true,
								},
								
								{
									"7d02ea91-f315-af72-a3c3-ab68bd63fea2",
									true,
								},
								
								{
									"023787da-1be2-8172-872a-16ce0ab43224",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumMouse",
							targetType = "Detection Target",
							uuid = "d698dbf9-9e70-9ecb-ac6d-69c314cce485",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "f6a344d7-ddfc-f786-adb5-1df113d27693",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "7d02ea91-f315-af72-a3c3-ab68bd63fea2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "7fa028b4-0d7b-4524-ac1b-09b2f023da2c",
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
									"7fa028b4-0d7b-4524-ac1b-09b2f023da2c",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "023787da-1be2-8172-872a-16ce0ab43224",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 70.6,
				name = "[LPDU Tank] MT HoS OT",
				timeRange = true,
				timelineIndex = 14,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "15e27d4f-32aa-ea3e-958e-739e06b52413",
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
									"ea2fc04d-fb87-e087-8be1-399cb5edaa11",
									true,
								},
								
								{
									"28f131ca-1dc7-b470-8d91-9a29c82c4d09",
									true,
								},
								
								{
									"d05c6937-5d93-8256-8a0a-036452697ec8",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_ReleaseRoyalGuard",
							uuid = "6569f9f0-efa3-ec42-a9cf-7892bd24ad97",
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
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "ea2fc04d-fb87-e087-8be1-399cb5edaa11",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "28f131ca-1dc7-b470-8d91-9a29c82c4d09",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 1833,
							category = "Self",
							uuid = "d05c6937-5d93-8256-8a0a-036452697ec8",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 70.6,
				name = "[LPDU Tank] OT Stance OFF",
				timeRange = true,
				timelineIndex = 14,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "fef0dc7b-13c8-1d0a-90ac-406e331b679e",
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
									"638a5391-f59a-3fb4-899e-188638935870",
									true,
								},
								
								{
									"57e6444e-3dce-59af-8d0b-e2e2caf6fc56",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_AuroraSelf",
							uuid = "09f6a064-ef31-d637-b44a-16dacfbd172c",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "638a5391-f59a-3fb4-899e-188638935870",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "57e6444e-3dce-59af-8d0b-e2e2caf6fc56",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 70.6,
				name = "[LPDU Tank] MT Aurora Self",
				timeRange = true,
				timelineIndex = 14,
				timerEndOffset = 3,
				uuid = "09e0a645-7c18-73ab-9574-57c44aad8f3f",
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
									"d5dd9369-bc9f-a0ef-8e1d-7036ed25cd2c",
									true,
								},
								
								{
									"ea158904-a4fb-cda8-9315-2d5d79e1c40b",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							uuid = "49dc31ff-8913-6f40-bfc5-bd741868c10c",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "d5dd9369-bc9f-a0ef-8e1d-7036ed25cd2c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "ea158904-a4fb-cda8-9315-2d5d79e1c40b",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 70.6,
				name = "[LPDU Tank] MT Camo",
				timeRange = true,
				timelineIndex = 14,
				timerEndOffset = 5,
				timerStartOffset = 2,
				uuid = "143ecad6-8b33-7d09-8b12-55b7c83446ec",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared",
				uuid = "fa1bd674-9a1b-b4f7-bfd2-0f9b05fc87ab",
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
									"93d0ac20-fe57-f6f2-90fb-4d49df5aa01c",
									true,
								},
								
								{
									"eb7bc6dc-310d-a52b-9e47-e1d3b8c6ddad",
									true,
								},
								
								{
									"06ca10a4-73be-d60f-8357-c7ff94e3152f",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "21ba13f8-35da-de95-aba6-ed2c0ffcd866",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "93d0ac20-fe57-f6f2-90fb-4d49df5aa01c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "eb7bc6dc-310d-a52b-9e47-e1d3b8c6ddad",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 5,
							name = "Reprisal range <=5y",
							partyTargetType = "Detection Target",
							uuid = "9d5af445-5ff8-b8d7-8766-3b38e6e438c2",
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
									"9d5af445-5ff8-b8d7-8766-3b38e6e438c2",
									true,
								},
							},
							filterTargetType = "Enemy",
							name = "Enemy in Reprisal range",
							uuid = "06ca10a4-73be-d60f-8357-c7ff94e3152f",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 70.6,
				name = "[LPDU Tank] OT Reprisal",
				timeRange = true,
				timelineIndex = 14,
				timerEndOffset = -6,
				timerStartOffset = -9,
				uuid = "214edf3c-f2f8-0a59-90b8-82a73da88f2f",
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
									"2bdddef6-3cfd-ab3f-8d85-1a0fb433675b",
									true,
								},
								
								{
									"5cff620b-2223-4317-9115-60cd2cb500ea",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "894c02c2-6d5b-5cf9-b09d-894f466c6077",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "2bdddef6-3cfd-ab3f-8d85-1a0fb433675b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "5cff620b-2223-4317-9115-60cd2cb500ea",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 70.6,
				name = "[LPDU Tank] MT Provoke",
				timeRange = true,
				timelineIndex = 14,
				timerEndOffset = -0.5,
				timerStartOffset = -3.5,
				uuid = "073b5510-13e2-9f88-8d16-d44774a04c9f",
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
									"c4efa756-265f-bcf0-97d3-a80a3d7f7740",
									true,
								},
								
								{
									"097e8187-5f24-d171-a5c9-5c05bb788e33",
									true,
								},
								
								{
									"b9f13f5f-ea79-d2de-bf58-7b075a3ac1b8",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_ShirkMouse",
							targetType = "Detection Target",
							uuid = "ad12754a-1ede-174a-882a-bf55e5e038c4",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "c4efa756-265f-bcf0-97d3-a80a3d7f7740",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "097e8187-5f24-d171-a5c9-5c05bb788e33",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "21132994-58f6-59a0-9bbd-f259b02ddaf3",
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
									"21132994-58f6-59a0-9bbd-f259b02ddaf3",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "b9f13f5f-ea79-d2de-bf58-7b075a3ac1b8",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 70.6,
				name = "[LPDU Tank] OT Shirk",
				timeRange = true,
				timelineIndex = 14,
				timerEndOffset = 2,
				timerStartOffset = -1,
				uuid = "5dc9ba56-3481-4d36-9d4f-521d04922590",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "daac9f85-8400-6034-ac62-503f2ee6cbbb",
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
									"8afe5982-b484-9e6f-abb3-7d62c59449e2",
									true,
								},
								
								{
									"e262685a-55cb-0246-93ed-2ceb10be5fcb",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Guardian",
							uuid = "ae42845d-2246-cb45-90e3-3e1c1be1b557",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "8afe5982-b484-9e6f-abb3-7d62c59449e2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "e262685a-55cb-0246-93ed-2ceb10be5fcb",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 70.6,
				name = "[LPDU PLD] OT Guardian",
				timeRange = true,
				timelineIndex = 14,
				timerEndOffset = -11,
				timerStartOffset = -14,
				uuid = "a4112609-3bc8-60e8-8cba-0db4854580fd",
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
									"1156ca92-8315-fad9-a9ad-54891b14b289",
									true,
								},
								
								{
									"228b81d9-81a4-52db-bbde-c65c663a8b02",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Hotbar_IronWill",
							uuid = "cff11e8d-2202-d302-87ab-f46d735b1554",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "1156ca92-8315-fad9-a9ad-54891b14b289",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "228b81d9-81a4-52db-bbde-c65c663a8b02",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 70.6,
				name = "[LPDU PLD] MT Stance ON",
				timeRange = true,
				timelineIndex = 14,
				timerEndOffset = -5,
				timerStartOffset = -8,
				uuid = "559de94e-e439-4f67-beb8-20bf989de6c5",
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
									"cff30160-e651-e4c3-aa65-a228ed33ec7a",
									true,
								},
								
								{
									"8798dc15-1fa6-a501-8b28-3159d40e9bc1",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HolySheltron",
							uuid = "af703b1b-7846-7cfc-bb85-28cbb31398aa",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "cff30160-e651-e4c3-aa65-a228ed33ec7a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "8798dc15-1fa6-a501-8b28-3159d40e9bc1",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 70.6,
				name = "[LPDU PLD] OT Sheltron/Intervention Self",
				timeRange = true,
				timelineIndex = 14,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "2d99b784-585e-2d8d-a8e6-e0e4bd6f6e77",
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
									"9df4e746-0cbe-05be-81aa-22169351c3e4",
									true,
								},
								
								{
									"d2de4242-37e6-b4ba-b096-a5db09cb81a8",
									true,
								},
								
								{
									"0d598598-87a0-929f-af8b-261a03785dbf",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_InterventionMouse",
							targetType = "Detection Target",
							uuid = "cca53cc4-00b8-6788-b5e7-5c65488c9e08",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "9df4e746-0cbe-05be-81aa-22169351c3e4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "d2de4242-37e6-b4ba-b096-a5db09cb81a8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "a862ec41-031c-050c-b4f0-20d3253f9fab",
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
									"a862ec41-031c-050c-b4f0-20d3253f9fab",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "0d598598-87a0-929f-af8b-261a03785dbf",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 70.6,
				name = "[LPDU PLD] MT Sheltron/Intervention OT",
				timeRange = true,
				timelineIndex = 14,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "1ae4badc-00eb-6141-b612-de97fd0b2102",
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
									"ba93ad8e-8ea3-e472-a5d5-e4f8d2882ff1",
									true,
								},
								
								{
									"4cee1af9-06ce-37df-87ef-5159c646e731",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Hotbar_ReleaseIronWill",
							uuid = "f6695952-7342-99e3-a6c3-cad36803f27c",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "ba93ad8e-8ea3-e472-a5d5-e4f8d2882ff1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "4cee1af9-06ce-37df-87ef-5159c646e731",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 70.6,
				name = "[LPDU PLD] OT Stance OFF",
				timeRange = true,
				timelineIndex = 14,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "3f00f431-d119-f092-8620-88a915da7216",
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
									"9d853aab-5196-d672-a5d6-52a0044518ac",
									true,
								},
								
								{
									"abc660e4-e8ff-2664-a302-a6bb1511e791",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Bulwark",
							uuid = "e659a629-79c2-c2ca-8478-2afb829b87d5",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "9d853aab-5196-d672-a5d6-52a0044518ac",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "abc660e4-e8ff-2664-a302-a6bb1511e791",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 70.6,
				name = "[LPDU PLD] MT Bulwark",
				timeRange = true,
				timelineIndex = 14,
				timerEndOffset = 5,
				timerStartOffset = 2,
				uuid = "453c1323-9e7b-d9ec-bb97-1a0e5e4511d6",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "69603cdb-7fa6-d25d-8be9-598b0ff9094e",
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
									"764f84c5-ad4d-b0bd-9cde-93c1e09a7d75",
									true,
								},
								
								{
									"76732cfa-1936-3f93-ace5-6376c84cdcf7",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Equilibrium",
							uuid = "6715ff38-fc5b-65bc-af2e-e5ad2857beac",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "764f84c5-ad4d-b0bd-9cde-93c1e09a7d75",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "76732cfa-1936-3f93-ace5-6376c84cdcf7",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 70.6,
				name = "[LPDU WAR] OT Equilibrium Self",
				timeRange = true,
				timelineIndex = 14,
				timerEndOffset = -14,
				timerStartOffset = -17,
				uuid = "eeda572a-a952-7658-89db-0a9cccf2d86d",
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
									"39b5c614-0d6d-87d0-bc9e-0c178ebd6137",
									true,
								},
								
								{
									"1deb55fe-34d2-b7c9-aaf9-4ccd941d68e9",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Damnation",
							uuid = "e70426aa-2a21-1a3a-bc51-263a95a467a1",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "39b5c614-0d6d-87d0-bc9e-0c178ebd6137",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "1deb55fe-34d2-b7c9-aaf9-4ccd941d68e9",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 70.6,
				name = "[LPDU WAR] OT Damnation",
				timeRange = true,
				timelineIndex = 14,
				timerEndOffset = -11,
				timerStartOffset = -14,
				uuid = "5c255953-e26e-8b47-bf0d-f6de7c385bd0",
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
									"6c1512e3-2a64-f73e-8047-b577279d9a1d",
									true,
								},
								
								{
									"c32dcd3c-6a0f-1786-bff4-3d90d65e64c4",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Hotbar_Defiance",
							uuid = "42f10e48-5638-bdcb-b689-cbe3786b1359",
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
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "6c1512e3-2a64-f73e-8047-b577279d9a1d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "c32dcd3c-6a0f-1786-bff4-3d90d65e64c4",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 70.6,
				name = "[LPDU WAR] MT Stance ON",
				timeRange = true,
				timelineIndex = 14,
				timerEndOffset = -5,
				timerStartOffset = -8,
				uuid = "195f9bc4-9c24-ba6d-9556-96954661ce2e",
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
									"e9dba1d1-f310-f65e-bdd5-9843b3964ab4",
									true,
								},
								
								{
									"01fe76a3-943f-2cdf-8f64-c1df442cb894",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Bloodwhetting",
							uuid = "5325b25e-3d07-3ab9-af81-61e028e51a11",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "e9dba1d1-f310-f65e-bdd5-9843b3964ab4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "01fe76a3-943f-2cdf-8f64-c1df442cb894",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 70.6,
				name = "[LPDU WAR] OT Raw Intuition Self",
				timeRange = true,
				timelineIndex = 14,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "d54a8b35-6824-757e-abea-84e2bcef3d73",
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
									"26398d0f-2454-5fc7-a08d-9ec0e9a1b053",
									true,
								},
								
								{
									"f40feee9-f49b-2336-81e2-4d657c50a205",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Hotbar_ReleaseDefiance",
							uuid = "a91190cd-e69d-2847-88a3-e1599f2057f7",
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
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "26398d0f-2454-5fc7-a08d-9ec0e9a1b053",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "f40feee9-f49b-2336-81e2-4d657c50a205",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 70.6,
				name = "[LPDU WAR] OT Stance OFF",
				timeRange = true,
				timelineIndex = 14,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "3817c8f1-2740-37ea-bbe7-0d209ba3f768",
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
									"6457efb3-0563-3fb6-9acb-313f8e407a77",
									true,
								},
								
								{
									"68c127b7-12fd-cafb-b637-c3e8a9b9101b",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Equilibrium",
							uuid = "d1fe03ee-6022-b068-8d24-2965a18bd2da",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "6457efb3-0563-3fb6-9acb-313f8e407a77",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "68c127b7-12fd-cafb-b637-c3e8a9b9101b",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 70.6,
				name = "[LPDU WAR] MT Equilibrium Self",
				timeRange = true,
				timelineIndex = 14,
				timerEndOffset = 3,
				uuid = "46a14e99-eaa6-9c36-ab8d-d5ada55b381a",
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
									"8a1bbcdd-dc85-7366-9bab-1cd1bde0cfe0",
									true,
								},
								
								{
									"74b5bb94-60c4-cc6b-8406-2171aa8bdeb9",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_ThrillOfBattle",
							uuid = "82073a15-135b-de75-94d6-f8f56e2a48a5",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "8a1bbcdd-dc85-7366-9bab-1cd1bde0cfe0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "74b5bb94-60c4-cc6b-8406-2171aa8bdeb9",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 70.6,
				name = "[LPDU WAR] MT ThrillOfBattle",
				timeRange = true,
				timelineIndex = 14,
				timerEndOffset = 5,
				timerStartOffset = 2,
				uuid = "7708ff15-c630-144a-bd52-36cfa26121f2",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "564ebac6-a563-c8a3-95e6-49d1d3e80f13",
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
									"0ae09cf1-872d-ef9f-8984-221cc7f6c608",
									true,
								},
								
								{
									"51cc47ec-adfc-edd9-b7d3-cd231c208aa7",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_ShadowedVigil",
							uuid = "373037a1-ded1-75c2-81d2-da60d0a26846",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "0ae09cf1-872d-ef9f-8984-221cc7f6c608",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "51cc47ec-adfc-edd9-b7d3-cd231c208aa7",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 70.6,
				name = "[LPDU DRK] OT ShadowedVigil",
				timeRange = true,
				timelineIndex = 14,
				timerEndOffset = -11,
				timerStartOffset = -14,
				uuid = "15078e6c-9e54-761c-893d-d97ad246a771",
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
									"bc3aac48-d416-6548-b2e3-96a2b98a8861",
									true,
								},
								
								{
									"194ca9cb-1c77-02aa-9731-7f115516676c",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Hotbar_Grit",
							uuid = "b0494baa-26f1-bb6e-b680-53bbdf6c3af1",
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
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "bc3aac48-d416-6548-b2e3-96a2b98a8861",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "194ca9cb-1c77-02aa-9731-7f115516676c",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 70.6,
				name = "[LPDU DRK] MT Stance ON",
				timeRange = true,
				timelineIndex = 14,
				timerEndOffset = -5,
				timerStartOffset = -8,
				uuid = "00dc0a0c-b486-25f9-a880-5ac77d4ef12e",
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
									"0ab56a34-9578-d914-a524-12f64cfc41ea",
									true,
								},
								
								{
									"73732d58-4719-a853-95fa-7a3c6311d0dd",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf",
							uuid = "c302c13e-65fd-7af9-9a4f-65ce595980c4",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "0ab56a34-9578-d914-a524-12f64cfc41ea",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "73732d58-4719-a853-95fa-7a3c6311d0dd",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 70.6,
				name = "[LPDU DRK] OT TBN Self",
				timeRange = true,
				timelineIndex = 14,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "34b0f63c-4746-c932-8a90-cf4cf01f29c9",
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
									"4d6350f5-ad57-5b08-96fb-7a2fb05dea76",
									true,
								},
								
								{
									"9d8f8381-771c-3638-9c51-3ce2190900bf",
									true,
								},
								
								{
									"4679caa9-6988-fcde-aef5-d51d28bea5ec",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightMouse",
							targetType = "Detection Target",
							uuid = "51b3864e-472f-4ca0-a860-c1071c138495",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "4d6350f5-ad57-5b08-96fb-7a2fb05dea76",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "9d8f8381-771c-3638-9c51-3ce2190900bf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "1cbf5e16-0263-ca22-b973-aa015a6b3d65",
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
									"1cbf5e16-0263-ca22-b973-aa015a6b3d65",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "4679caa9-6988-fcde-aef5-d51d28bea5ec",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 70.6,
				name = "[LPDU DRK] MT TBN OT",
				timeRange = true,
				timelineIndex = 14,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "8024881e-cf4b-9ede-9479-8ca2e14271f6",
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
									"ac39b660-d892-ddac-82b2-621ba7822ad7",
									true,
								},
								
								{
									"296c10ae-234d-43c6-8777-9c0c8394bb6c",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Hotbar_ReleaseGrit",
							uuid = "8cf91077-475a-9f70-ad31-79c512f6028e",
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
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "ac39b660-d892-ddac-82b2-621ba7822ad7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "296c10ae-234d-43c6-8777-9c0c8394bb6c",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 70.6,
				name = "[LPDU DRK] OT Stance OFF",
				timeRange = true,
				timelineIndex = 14,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "8adc51ec-8ca8-7cf5-912e-4b2cb6e9ce6b",
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
									"4de5c56b-f3dc-061c-8694-439980f34727",
									true,
								},
								
								{
									"1d0a1f71-67f5-d3cc-85cd-81a024102f93",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_DarkMind",
							uuid = "70e3502b-1efc-241e-b18d-3662e3000180",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "4de5c56b-f3dc-061c-8694-439980f34727",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "1d0a1f71-67f5-d3cc-85cd-81a024102f93",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 70.6,
				name = "[LPDU DRK] MT DarkMind",
				timeRange = true,
				timelineIndex = 14,
				timerEndOffset = 5,
				timerStartOffset = 2,
				uuid = "09587e4d-d17d-e11a-8a34-9ebc1accf9b3",
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
				name = "Gunbreaker",
				uuid = "8dbc7e1c-0bd7-86a0-a00f-14eb80ea6490",
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
									"2da3a209-f951-14a8-80c3-4f325d54f4b7",
									true,
								},
								
								{
									"e6595748-d0f9-4651-b418-61b332bbac47",
									true,
								},
								
								{
									"8472117d-ea1b-af44-a519-2bf4216b9850",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_RoyalGuard",
							uuid = "d4f54718-1961-72a4-bdce-3948148f2136",
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
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "2da3a209-f951-14a8-80c3-4f325d54f4b7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "e6595748-d0f9-4651-b418-61b332bbac47",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "8472117d-ea1b-af44-a519-2bf4216b9850",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 118,
				name = "[LPDU Tank] OT Stance ON",
				timeRange = true,
				timelineIndex = 23,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "2db1280c-d9cf-2031-8678-d51257f7410c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "6cc87bcb-046f-2406-8c8e-05670244f731",
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
									"e67d8034-8389-82bc-ac86-94ab63ad6b4f",
									true,
								},
								
								{
									"3ba56655-62c2-c2e6-8c43-c7e3dba87124",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Hotbar_IronWill",
							uuid = "1b849a5e-7bf0-d08c-85af-8226e7c067a0",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "e67d8034-8389-82bc-ac86-94ab63ad6b4f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "3ba56655-62c2-c2e6-8c43-c7e3dba87124",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 118,
				name = "[LPDU PLD] OT Stance ON",
				timeRange = true,
				timelineIndex = 23,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "ae8d2c23-3cd6-bad6-9fab-c037dd7a9ea9",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "930e2ac3-a9af-21c2-9de4-c711cd8f8032",
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
									"abcb5352-2a35-8ab7-be4c-d8380d6521eb",
									true,
								},
								
								{
									"6ce61d39-ba39-1696-9e42-a5ac64699c91",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Hotbar_Defiance",
							uuid = "64d72214-50c8-e2e2-8530-a40832e8af12",
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
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "abcb5352-2a35-8ab7-be4c-d8380d6521eb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "6ce61d39-ba39-1696-9e42-a5ac64699c91",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 118,
				name = "[LPDU WAR] OT Stance ON",
				timeRange = true,
				timelineIndex = 23,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "64522b4d-4b86-39b1-9f21-d440af31a6a9",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "918af78c-2935-d4bd-bf27-3da4700f7a30",
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
									"a428cd74-d94e-7e61-ad50-c030dbb947ab",
									true,
								},
								
								{
									"1d031212-b43e-7c27-91d1-200587a5532c",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Hotbar_Grit",
							uuid = "5cbfa473-83a2-194f-b0f1-4aa4cc484432",
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
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "a428cd74-d94e-7e61-ad50-c030dbb947ab",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "1d031212-b43e-7c27-91d1-200587a5532c",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 118,
				name = "[LPDU DRK] OT Stance ON",
				timeRange = true,
				timelineIndex = 23,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "82806997-6a31-9743-8d95-1e9581bbefc0",
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
				name = "Gunbreaker",
				uuid = "27b985ba-a2d6-2e77-8819-a3744c65b3a1",
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
									"ee1fef3a-37f4-c1c4-aa5c-4c1b5df4bdb3",
									true,
								},
								
								{
									"3987bf49-639c-c14a-ba06-0a2839d798a3",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "50d35fb4-36a4-2db3-986b-bc74349f685b",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "ee1fef3a-37f4-c1c4-aa5c-4c1b5df4bdb3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "3987bf49-639c-c14a-ba06-0a2839d798a3",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 124.6,
				name = "[LPDU Tank] HoL",
				timeRange = true,
				timelineIndex = 24,
				timerEndOffset = -11,
				timerStartOffset = -14,
				uuid = "6b48671f-3d93-7e20-9425-eb1034535c0f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared",
				uuid = "59c43ab1-e8f2-2995-a212-2a8cd254cdba",
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
									"86a212ff-c5d6-6d43-be72-008a350b4816",
									true,
								},
								
								{
									"4f6c5f6b-e3b3-afe2-9d19-3bfe4df3223b",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Sprint",
							uuid = "2f22afca-4c97-6a83-827d-7523c98c9a37",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "86a212ff-c5d6-6d43-be72-008a350b4816",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "4f6c5f6b-e3b3-afe2-9d19-3bfe4df3223b",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 124.6,
				name = "[LPDU Tank] Sprint",
				timeRange = true,
				timelineIndex = 24,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "04e92e4c-b36f-f7f6-97f5-62a0504b6f32",
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
									"a09622bd-cd5c-e10d-8aba-e1b495e8eaaa",
									true,
								},
								
								{
									"8e825b04-42d2-62fe-b846-5254849bff1d",
									true,
								},
								
								{
									"582a11e0-272d-03c8-9334-8783e0f6bcda",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "89005663-e893-098a-87e5-3794a3209bdb",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "a09622bd-cd5c-e10d-8aba-e1b495e8eaaa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "8e825b04-42d2-62fe-b846-5254849bff1d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 5,
							name = "Reprisal range <=5y",
							partyTargetType = "Detection Target",
							uuid = "4ebcf704-d099-d6eb-b803-7c1390cbb81e",
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
									"4ebcf704-d099-d6eb-b803-7c1390cbb81e",
									true,
								},
							},
							filterTargetType = "Enemy",
							name = "Enemy in Reprisal range",
							uuid = "582a11e0-272d-03c8-9334-8783e0f6bcda",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 124.6,
				name = "[LPDU Tank] MT Reprisal",
				timeRange = true,
				timelineIndex = 24,
				timerEndOffset = -6,
				timerStartOffset = -9,
				uuid = "b144eba6-6e87-da49-ba23-d1188d2cfccc",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "9ae69e2a-78f5-f554-bc44-d4a4a7195370",
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
									"8a6187e7-23bc-41c9-ac59-2a2c42b4dd8b",
									true,
								},
								
								{
									"7bb64664-9533-57aa-9b99-3d7cef080214",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_DivineVeil",
							uuid = "164087a5-7efb-e3ac-bb7e-7763d6d280d6",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "8a6187e7-23bc-41c9-ac59-2a2c42b4dd8b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "7bb64664-9533-57aa-9b99-3d7cef080214",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 124.6,
				name = "[LPDU PLD] DivineVeil",
				timeRange = true,
				timelineIndex = 24,
				timerEndOffset = -11,
				timerStartOffset = -14,
				uuid = "f15277ba-1881-e229-a10e-a4a941e7f60e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "6b7f71c1-f930-ea5b-8d57-1937dccc510c",
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
									"9d2b16b2-2d62-1f47-9e6b-6ef985410eef",
									true,
								},
								
								{
									"778c17f1-c475-3620-b2ce-9fa2beb281c2",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_ShakeItOff",
							uuid = "7fd448bf-6293-0c9a-b5a6-4a178018a456",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "9d2b16b2-2d62-1f47-9e6b-6ef985410eef",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "778c17f1-c475-3620-b2ce-9fa2beb281c2",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 124.6,
				name = "[LPDU WAR] ShakeItOff",
				timeRange = true,
				timelineIndex = 24,
				timerEndOffset = -11,
				timerStartOffset = -14,
				uuid = "b584670c-00dc-b689-80f5-f67adbee2b1d",
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
				name = "Shared",
				uuid = "beb2e7ea-f8df-83a1-9876-6952a7b623e9",
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
									"92f442d3-9355-67f5-80ec-535b196ce4c7",
									true,
								},
								
								{
									"8e4f6134-2950-56bd-9fa3-bfb5c42d1ca3",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Rampart",
							uuid = "e4e16ea6-9835-5442-bd24-371af30f1054",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "92f442d3-9355-67f5-80ec-535b196ce4c7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "8e4f6134-2950-56bd-9fa3-bfb5c42d1ca3",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 133.6,
				name = "[LPDU Tank] MT Rampart",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = -15,
				timerStartOffset = -18,
				uuid = "825946d5-f464-edbc-8128-d186b67ac5d4",
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
									"47119298-8d9f-75ed-9e23-b96bcbfb83a0",
									true,
								},
								
								{
									"47ce1031-7837-3b1b-9a71-ef69723c48d8",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "5b8bc125-4cc6-b010-8723-40db4f84f1ea",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "47119298-8d9f-75ed-9e23-b96bcbfb83a0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "47ce1031-7837-3b1b-9a71-ef69723c48d8",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 133.6,
				name = "[LPDU Tank] OT Voke",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = -0.5,
				timerStartOffset = -3.5,
				uuid = "4bc05221-268d-7204-bae3-5f4010aa8a38",
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
									"6d529751-dbcf-f5e6-9183-59ad5bbca502",
									true,
								},
								
								{
									"2618a55f-11ef-fb2f-bfdb-ed58352ce752",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Rampart",
							uuid = "5c4711fb-189b-2426-a385-601e9b31069f",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "6d529751-dbcf-f5e6-9183-59ad5bbca502",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "2618a55f-11ef-fb2f-bfdb-ed58352ce752",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 133.6,
				name = "[LPDU Tank] OT Rampart",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = 2,
				timerStartOffset = -1,
				uuid = "433c191c-c8cf-5750-bf51-4b9e88ee0549",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker",
				uuid = "3f4c9333-b587-f9ac-aeff-2ce3e6338590",
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
									"d58dd209-b1ec-b122-a670-a239325913cd",
									true,
								},
								
								{
									"b2a83947-fd66-c31c-a83e-aab03e3b25c4",
									true,
								},
								
								{
									"c456b6c9-26ba-54ab-b523-53b973a8d5be",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_RoyalGuard",
							uuid = "741ff747-8f64-1b6b-a170-8dc1def81b9b",
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
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "d58dd209-b1ec-b122-a670-a239325913cd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "b2a83947-fd66-c31c-a83e-aab03e3b25c4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "c456b6c9-26ba-54ab-b523-53b973a8d5be",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 133.6,
				name = "[LPDU Tank] OT Stance ON",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "9012793b-4c6d-7753-8bd3-c1cf8d51cb76",
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
									"b971ab20-eb4f-3d6c-8b70-f5d62f639bdb",
									true,
								},
								
								{
									"d27b21b5-8a87-0b30-b95d-c41a7ba4908b",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "d8c1bd2f-c74f-2545-a8a1-c94ecde3e784",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "b971ab20-eb4f-3d6c-8b70-f5d62f639bdb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "d27b21b5-8a87-0b30-b95d-c41a7ba4908b",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 133.6,
				name = "[LPDU Tank] MT HoS Self",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "7eb04700-66ff-f640-a8e7-d1c3065f56c1",
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
									"53c98296-ca0c-a43b-a6b6-4c570ca6f561",
									true,
								},
								
								{
									"bf68b635-1907-7ffa-887f-68bbcc6e4ca3",
									true,
								},
								
								{
									"5aa8c61c-a351-c6d6-b165-de4d924aec39",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_ReleaseRoyalGuard",
							uuid = "f33d86f6-9490-0fd8-8f46-c95a5516863b",
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
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "53c98296-ca0c-a43b-a6b6-4c570ca6f561",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "bf68b635-1907-7ffa-887f-68bbcc6e4ca3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 1833,
							category = "Self",
							uuid = "5aa8c61c-a351-c6d6-b165-de4d924aec39",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 133.6,
				name = "[LPDU Tank] MT Stance OFF",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "da4e9ada-ab16-c455-b99e-c4c2602ea7d8",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "7fa0b428-0d09-fa3d-9204-97dfce354ce5",
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
									"f60cf5d9-b276-3f9b-8af3-0e2519a8272e",
									true,
								},
								
								{
									"6ffd37e2-adc9-2210-bde2-d53cc6f5e7df",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Hotbar_IronWill",
							uuid = "b086d015-79dd-2e8e-b761-85855071ddd4",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "f60cf5d9-b276-3f9b-8af3-0e2519a8272e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "6ffd37e2-adc9-2210-bde2-d53cc6f5e7df",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 133.6,
				name = "[LPDU PLD] OT Stance ON",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "7d07d0a7-ef98-4e46-bdaa-dc7a56a2f89e",
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
									"de29a340-9810-eea2-a592-885d1188e885",
									true,
								},
								
								{
									"a2bb3bbe-90f5-48d9-aad5-26b1bee03cba",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HolySheltron",
							uuid = "389779ce-9d54-5d58-8c08-2e3b9e545915",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "de29a340-9810-eea2-a592-885d1188e885",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "a2bb3bbe-90f5-48d9-aad5-26b1bee03cba",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 133.6,
				name = "[LPDU PLD] MT Sheltron/Intervention Self",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "3250de55-36cf-4a66-9c62-c7cdbfca97f0",
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
									"4d0fc998-e334-ccf2-bad5-aacdfaec360d",
									true,
								},
								
								{
									"b9268921-4b5f-d51e-b7ab-aea1d0e2a9a7",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Hotbar_ReleaseIronWill",
							uuid = "c46c1d9b-f811-459a-b637-f3530b68305a",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "4d0fc998-e334-ccf2-bad5-aacdfaec360d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "b9268921-4b5f-d51e-b7ab-aea1d0e2a9a7",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 133.6,
				name = "[LPDU PLD] MT Stance OFF",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "1188557d-6617-1d7c-bccf-8bdf5443e727",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "b3451d58-abfb-aab9-9c67-d8d243078085",
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
									"9436216d-22c1-5a66-b720-e8ad5cc77b8c",
									true,
								},
								
								{
									"8a81d456-c2fc-77a7-abc5-d4b012a818e3",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Hotbar_Defiance",
							uuid = "e5668c12-5d36-9e39-b729-72e3e104c294",
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
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "9436216d-22c1-5a66-b720-e8ad5cc77b8c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "8a81d456-c2fc-77a7-abc5-d4b012a818e3",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 133.6,
				name = "[LPDU WAR] OT Stance ON",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "ea58a108-cf85-c461-b4ee-5d64418734bb",
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
									"1a881ec6-d6e8-fffa-8570-37643d84c77c",
									true,
								},
								
								{
									"7dadb223-188f-3c36-ac12-d13fce83bfb4",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Bloodwhetting",
							uuid = "d79dc0de-c596-7e08-b0ca-b2861b2e9c54",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "1a881ec6-d6e8-fffa-8570-37643d84c77c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "7dadb223-188f-3c36-ac12-d13fce83bfb4",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 133.6,
				name = "[LPDU WAR] MT Raw Intuition Self",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "4ea9f153-c8d6-81ca-8785-eaeb18e96c4d",
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
									"af790398-773d-be36-a0f1-b2410b46e1ef",
									true,
								},
								
								{
									"5dfb603e-1bc9-6e2b-bf6e-dfea5da7aa40",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Hotbar_ReleaseDefiance",
							uuid = "b68ba117-c0aa-83d5-88a0-7783ca9889de",
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
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "af790398-773d-be36-a0f1-b2410b46e1ef",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "5dfb603e-1bc9-6e2b-bf6e-dfea5da7aa40",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 133.6,
				name = "[LPDU WAR] MT Stance OFF",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "d33062ab-1e58-9f0f-a658-904d4a308645",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "3d7e9356-e0e5-8526-9f78-c8ff058ffabf",
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
									"e55421d9-67f5-4dc0-becd-37d75307623a",
									true,
								},
								
								{
									"8054785b-7677-0814-a5a0-323dbc202536",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Hotbar_Grit",
							uuid = "834c2f78-4649-de82-9bde-bac3b9c60cb9",
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
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "e55421d9-67f5-4dc0-becd-37d75307623a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "8054785b-7677-0814-a5a0-323dbc202536",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 133.6,
				name = "[LPDU DRK] OT Stance ON",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "bddc6bcd-920e-8622-a3d2-fd0f04fb1d82",
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
									"c7c3fce4-1d70-83d2-a766-29a25d586b29",
									true,
								},
								
								{
									"8281afb9-37eb-5053-b4d7-e648f42d1752",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf",
							uuid = "13368c0f-fa28-fc25-8447-8a199847404d",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "c7c3fce4-1d70-83d2-a766-29a25d586b29",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "8281afb9-37eb-5053-b4d7-e648f42d1752",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 133.6,
				name = "[LPDU DRK] MT TBN Self",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "1f2ec00c-c88f-6ae8-8b54-39ec639e660a",
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
									"6f83f425-6c38-8335-834b-9150c69e5c48",
									true,
								},
								
								{
									"d003869e-569a-1cf1-a816-982246ae4532",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Hotbar_ReleaseGrit",
							uuid = "bd6c1575-07be-010a-b278-55816707f615",
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
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "6f83f425-6c38-8335-834b-9150c69e5c48",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "d003869e-569a-1cf1-a816-982246ae4532",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 133.6,
				name = "[LPDU DRK] MT Stance OFF",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "5b6ff1b3-20ec-74db-9061-9f51dbc06bad",
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
				name = "Gunbreaker",
				uuid = "194f8f91-2962-43f6-ac2e-c2ada945acfe",
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
									"567b8182-5a55-50a7-a0fd-679bf9c7ca8c",
									true,
								},
								
								{
									"24cc349f-0037-f4a0-8748-01aeabe80156",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "756e3186-7dc1-7fb9-b1b1-8aa52fcc1ff2",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "567b8182-5a55-50a7-a0fd-679bf9c7ca8c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "24cc349f-0037-f4a0-8748-01aeabe80156",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 136.6,
				name = "[LPDU Tank] OT HoS Self",
				timeRange = true,
				timelineIndex = 26,
				timerStartOffset = -3,
				uuid = "d74c7ede-a162-0299-a19a-d694996f9fa1",
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
									"c99829fc-27a9-05b6-a970-e6b115f2461b",
									true,
								},
								
								{
									"03b8a507-213e-4f77-8cb8-7c45d298dc1c",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_AuroraSelf",
							uuid = "e9a24a2b-cfc0-0d5b-895a-596d4a925940",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "c99829fc-27a9-05b6-a970-e6b115f2461b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "03b8a507-213e-4f77-8cb8-7c45d298dc1c",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 136.6,
				name = "[LPDU Tank] OT Aurora Self",
				timeRange = true,
				timelineIndex = 26,
				timerEndOffset = 3,
				uuid = "43ae6de7-ddd6-7cdc-a881-7a75ea79c7bd",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "9e8a8ecd-cc28-f109-9be3-4a156998beda",
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
									"3c286c9a-523d-70e3-9fac-4829159a015d",
									true,
								},
								
								{
									"8a49ac44-c298-3f32-9140-9631ba38d93e",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HolySheltron",
							uuid = "efa6b4cc-28da-1e0e-aa3c-688de28b753b",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "3c286c9a-523d-70e3-9fac-4829159a015d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "8a49ac44-c298-3f32-9140-9631ba38d93e",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 136.6,
				name = "[LPDU PLD] OT Sheltron/Intervention Self",
				timeRange = true,
				timelineIndex = 26,
				timerStartOffset = -3,
				uuid = "85bd4795-66a8-aa6b-95d8-588493ee393b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "f79d489a-ee89-674f-8b53-1f01709976c7",
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
									"1bb73396-56b2-b952-8d7c-913db3046eb1",
									true,
								},
								
								{
									"ee04547b-4e99-7faa-a996-846b8f0b867f",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Bloodwhetting",
							uuid = "6dcfcc0f-8466-77f5-86f4-74e1cce309bb",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "1bb73396-56b2-b952-8d7c-913db3046eb1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "ee04547b-4e99-7faa-a996-846b8f0b867f",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 136.6,
				name = "[LPDU WAR] OT Raw Intuition Self",
				timeRange = true,
				timelineIndex = 26,
				timerStartOffset = -3,
				uuid = "e5c14361-6814-9538-a98d-cc251b590acb",
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
									"147cf0a1-db44-a196-8e1b-97793bdcd79e",
									true,
								},
								
								{
									"a7477857-34ed-0e47-b2ef-ff0423a64a91",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Equilibrium",
							uuid = "79817c34-5a36-e311-8128-a7e55d206e66",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "147cf0a1-db44-a196-8e1b-97793bdcd79e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "a7477857-34ed-0e47-b2ef-ff0423a64a91",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 136.6,
				name = "[LPDU WAR] OT Equilibrium Self",
				timeRange = true,
				timelineIndex = 26,
				timerEndOffset = 3,
				uuid = "423452eb-8669-2183-8438-b8d5c7bc34de",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "47f280d3-77ae-dd46-9e31-47a9164af2b0",
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
									"4ca0e97d-57c5-d2c2-9cd7-8ed4a1f42d10",
									true,
								},
								
								{
									"3255db36-1ecc-5107-bb05-d326de86ae10",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf",
							uuid = "6170fb34-5099-acc0-a324-57532a75d643",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "4ca0e97d-57c5-d2c2-9cd7-8ed4a1f42d10",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "3255db36-1ecc-5107-bb05-d326de86ae10",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 136.6,
				name = "[LPDU DRK] OT TBN Self",
				timeRange = true,
				timelineIndex = 26,
				timerStartOffset = -3,
				uuid = "6679b630-8a0a-033c-9907-f3a3dd15e081",
				version = 2,
			},
		},
	},
	[28] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker",
				uuid = "3f5d814c-b590-8b0c-ba96-1be1adbc6e5a",
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
									"f2da9b56-91e6-51a8-9c34-8c24179afa3a",
									true,
								},
								
								{
									"2fcb62e5-6975-c862-8226-5f386c3b170a",
									true,
								},
								
								{
									"d442aa3f-6298-a240-9fcb-d8e44e73c063",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Aurora",
							targetType = "Detection Target",
							uuid = "271cdb5c-cd6d-b40d-9b77-f623dadc9411",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "f2da9b56-91e6-51a8-9c34-8c24179afa3a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "2fcb62e5-6975-c862-8226-5f386c3b170a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "244578a0-cb2d-518d-b3bb-a55694612b91",
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
									"244578a0-cb2d-518d-b3bb-a55694612b91",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "d442aa3f-6298-a240-9fcb-d8e44e73c063",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 146.6,
				name = "[LPDU Tank] MT Aurora OT",
				timeRange = true,
				timelineIndex = 28,
				timerEndOffset = 4,
				timerStartOffset = 1,
				uuid = "505e5046-a0e1-26dd-be5e-681757140181",
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
				name = "Shared",
				uuid = "f35dda7f-bb07-ec75-87fc-cd4f2973fd01",
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
									"fdc4d281-910e-b843-ab89-59d200b34573",
									true,
								},
								
								{
									"33414393-d9df-91c0-bca0-64771839a970",
									true,
								},
								
								{
									"9774b00f-66cd-5f26-9eab-9a30fbd0b12b",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "f8611bb1-cd08-34f9-84b4-00c1ed76ba16",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "fdc4d281-910e-b843-ab89-59d200b34573",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "33414393-d9df-91c0-bca0-64771839a970",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 5,
							name = "Reprisal range <=5y",
							partyTargetType = "Detection Target",
							uuid = "04a4c649-9f18-6db5-bc89-e7ebb8be8e5e",
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
									"04a4c649-9f18-6db5-bc89-e7ebb8be8e5e",
									true,
								},
							},
							filterTargetType = "Enemy",
							name = "Enemy in Reprisal range",
							uuid = "9774b00f-66cd-5f26-9eab-9a30fbd0b12b",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 151.6,
				name = "[LPDU Tank] OT Reprisal",
				timeRange = true,
				timelineIndex = 29,
				timerEndOffset = -6,
				timerStartOffset = -9,
				uuid = "06f523e9-3b97-23e2-aa08-49fa16523e73",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker",
				uuid = "88aaf379-cb04-0e28-8043-f6d517acbfba",
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
									"c9c9c53a-e477-61fd-8fda-707fb3539de0",
									true,
								},
								
								{
									"8003b12a-c068-3e51-b65b-da4ab9f5c575",
									true,
								},
								
								{
									"881da58b-ed3c-3778-9fba-fc3b9dba8bce",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumMouse",
							targetType = "Detection Target",
							uuid = "8ac7efe1-4d65-d0ae-98f5-3e8f67d36740",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "c9c9c53a-e477-61fd-8fda-707fb3539de0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "8003b12a-c068-3e51-b65b-da4ab9f5c575",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "fdc7060b-b6d0-26cc-98ba-77e150d39144",
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
									"fdc7060b-b6d0-26cc-98ba-77e150d39144",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "881da58b-ed3c-3778-9fba-fc3b9dba8bce",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 151.6,
				name = "[LPDU Tank] MT HoS OT",
				timeRange = true,
				timelineIndex = 29,
				timerEndOffset = 4,
				timerStartOffset = 1,
				uuid = "51798074-8fe5-5fbf-8831-29a8f6348a74",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "80d2cb3e-c98a-9346-83f7-3e3239e4ff86",
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
									"f146673d-b83c-44f2-a0f5-20e5027485a2",
									true,
								},
								
								{
									"e86ca746-cbb8-5b15-ba26-08a9456df67d",
									true,
								},
								
								{
									"0fdbf318-6d2b-4de9-9656-994834eaabe4",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_InterventionMouse",
							targetType = "Detection Target",
							uuid = "f200de10-1e41-b88f-bf38-00ffab4d9515",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "f146673d-b83c-44f2-a0f5-20e5027485a2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "e86ca746-cbb8-5b15-ba26-08a9456df67d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "54bb107f-53dd-c823-b5cc-cd0d72b3567b",
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
									"54bb107f-53dd-c823-b5cc-cd0d72b3567b",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "0fdbf318-6d2b-4de9-9656-994834eaabe4",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 151.6,
				name = "[LPDU PLD] MT Sheltron/Intervention OT",
				timeRange = true,
				timelineIndex = 29,
				timerEndOffset = 4,
				timerStartOffset = 1,
				uuid = "8ccf6225-a56a-125d-aeea-ca8a4032998a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "afdc0759-d3a6-ab29-a631-f0162124f0ed",
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
									"e06ef230-d75d-bc05-ae8a-30e34e3c8d59",
									true,
								},
								
								{
									"edf30699-630f-9192-8be6-a556d59552e9",
									true,
								},
								
								{
									"607a0ffb-c5f4-9f15-ae98-39ef60ee6fcb",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightMouse",
							targetType = "Detection Target",
							uuid = "8ea6afd6-9502-7d29-a9d4-ed9b3f01a975",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "e06ef230-d75d-bc05-ae8a-30e34e3c8d59",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "edf30699-630f-9192-8be6-a556d59552e9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "3f1580b0-7f53-ea94-8920-10e4a272f888",
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
									"3f1580b0-7f53-ea94-8920-10e4a272f888",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "607a0ffb-c5f4-9f15-ae98-39ef60ee6fcb",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 151.6,
				name = "[LPDU DRK] MT TBN OT",
				timeRange = true,
				timelineIndex = 29,
				timerEndOffset = 4,
				timerStartOffset = 1,
				uuid = "34c836f1-8d7c-fcd2-a806-eb9a2aedf3b3",
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
				name = "Gunbreaker",
				uuid = "2e5a4193-c2b2-5405-aa5c-3a9421551573",
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
									"ec67b2c3-b5ed-efab-b49d-50d81b50bdce",
									true,
								},
								
								{
									"e137f040-d4b2-2113-9fc1-d45d474c5eb7",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							uuid = "10812e04-4c2c-7015-8472-9688580361a5",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "ec67b2c3-b5ed-efab-b49d-50d81b50bdce",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "e137f040-d4b2-2113-9fc1-d45d474c5eb7",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 153.8,
				name = "[LPDU Tank] OT Camo",
				timeRange = true,
				timelineIndex = 30,
				timerEndOffset = -11,
				timerStartOffset = -14,
				uuid = "663de407-5d5c-66b0-a207-ac37e74be203",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "33bd31c3-491e-529e-be15-0c0a65cb3e79",
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
									"305a1902-cd90-630f-b63d-3a37282621ec",
									true,
								},
								
								{
									"4913e64d-55cb-d24c-9f13-6574184876f9",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Bulwark",
							uuid = "72c5eee8-d1f5-3cfb-b34a-630435d71170",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "305a1902-cd90-630f-b63d-3a37282621ec",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "4913e64d-55cb-d24c-9f13-6574184876f9",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 153.8,
				name = "[LPDU PLD] OT Bulwark",
				timeRange = true,
				timelineIndex = 30,
				timerEndOffset = -11,
				timerStartOffset = -14,
				uuid = "ac74668c-fbb5-aa3c-bf8c-800182831937",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "b3380b56-c3d9-d4b8-9056-2bd2ffbdc1c0",
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
									"5c473a4f-e106-6fab-9594-3a2a9663c563",
									true,
								},
								
								{
									"de74f8fe-01df-8c91-b66e-761d7bb66112",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_ThrillOfBattle",
							uuid = "47c2b4ae-6e6f-f0d1-ba0d-e830a894bf58",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "5c473a4f-e106-6fab-9594-3a2a9663c563",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "de74f8fe-01df-8c91-b66e-761d7bb66112",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 153.8,
				name = "[LPDU WAR] OT ThrillOfBattle",
				timeRange = true,
				timelineIndex = 30,
				timerEndOffset = -11,
				timerStartOffset = -14,
				uuid = "c90ad3b8-5962-16ab-bb91-c7a7b65c49c1",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "b6de4c85-a75f-ea29-8bf8-287a1408e28e",
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
									"8aedb78f-2795-bfb0-8669-8cf9020b93c5",
									true,
								},
								
								{
									"98119b98-557a-a92d-a88a-8c3cda1aee3f",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_DarkMind",
							uuid = "a764730b-7cac-09e9-8171-222622901821",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "8aedb78f-2795-bfb0-8669-8cf9020b93c5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "98119b98-557a-a92d-a88a-8c3cda1aee3f",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 153.8,
				name = "[LPDU DRK] OT DarkMind",
				timeRange = true,
				timelineIndex = 30,
				timerEndOffset = -11,
				timerStartOffset = -14,
				uuid = "e3ef034b-7701-f233-a067-e2ddabdaa72e",
				version = 2,
			},
		},
	},
	[42] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker",
				uuid = "d817f0ff-3dca-d8da-a533-0cc375b38b6c",
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
									"433008af-aa73-1444-ba39-c5e0029ae508",
									true,
								},
								
								{
									"eaf46120-aa9c-ee9c-81db-1498626c487f",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumMouse",
							targetSubType = "Lowest HP",
							targetType = "Party",
							uuid = "197e71d9-3ad3-c2c0-8a63-604e713a0e12",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "433008af-aa73-1444-ba39-c5e0029ae508",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "eaf46120-aa9c-ee9c-81db-1498626c487f",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 208.5,
				name = "[LPDU Tank] HoS Lowest Trio",
				timeRange = true,
				timelineIndex = 42,
				timerEndOffset = -3.5,
				timerStartOffset = -6.5,
				uuid = "d5e50d18-97a6-39b5-b845-5ba61874540a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "6d20a335-c04f-da64-bbcc-4175b1a85468",
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
									"b5753910-15eb-bb99-82c2-dc1d901e8949",
									true,
								},
								
								{
									"7976a2e0-a4e7-3b23-ac12-bbbb4bd329c8",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_InterventionMouse",
							targetSubType = "Lowest HP",
							targetType = "Party",
							uuid = "e4048b3f-22d0-fc3b-8983-907c4229fb93",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "b5753910-15eb-bb99-82c2-dc1d901e8949",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "7976a2e0-a4e7-3b23-ac12-bbbb4bd329c8",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 208.5,
				name = "[LPDU PLD] Sheltron/Intervention Lowest Trio",
				timeRange = true,
				timelineIndex = 42,
				timerEndOffset = -3.5,
				timerStartOffset = -6.5,
				uuid = "7e9d85cd-1911-859a-86d9-dd9d6ce4f527",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "cd4c7e2c-6615-95d3-8c8e-bbf2991b63f9",
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
									"86970a5a-3d02-5998-b233-50c7315e9262",
									true,
								},
								
								{
									"391260b3-27a9-4b25-a744-0fc63eb47619",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightMouse",
							targetSubType = "Lowest HP",
							targetType = "Party",
							uuid = "42dc7501-7bfd-1faa-b580-2b9960e41c44",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "86970a5a-3d02-5998-b233-50c7315e9262",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "391260b3-27a9-4b25-a744-0fc63eb47619",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 208.5,
				name = "[LPDU DRK] TBN Lowest Trio",
				timeRange = true,
				timelineIndex = 42,
				timerEndOffset = -3.5,
				timerStartOffset = -6.5,
				uuid = "7c899282-70cc-3da4-b792-9e1ee1349b7c",
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
				name = "Gunbreaker",
				uuid = "5dc82b20-6f86-47da-979f-2a8dde9fe57d",
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
									"dea352f1-0d17-baed-9774-9bd27801defe",
									true,
								},
								
								{
									"997cf854-14e4-2863-bb65-362165dc4eab",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Superbolide",
							uuid = "7c9975ea-9bc7-5a1e-bd88-59a08c9e1999",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "dea352f1-0d17-baed-9774-9bd27801defe",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "997cf854-14e4-2863-bb65-362165dc4eab",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 211.5,
				name = "[LPDU Tank] OT Bolide Trio",
				timeRange = true,
				timelineIndex = 44,
				timerEndOffset = 0.5,
				timerStartOffset = -2.5,
				uuid = "2b0671a2-66e5-b71e-91f0-9e251827a4cf",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "a07b9806-c93c-b2da-b000-ce7c4d95fbc7",
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
									"50678d53-4d9a-9f71-92ca-7caaa965c6fb",
									true,
								},
								
								{
									"9ece462a-ab93-99c5-9b17-0196253ef488",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HallowedGround",
							uuid = "edda619a-3b2d-6ec6-8ca4-6ffa8acab61d",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "50678d53-4d9a-9f71-92ca-7caaa965c6fb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "9ece462a-ab93-99c5-9b17-0196253ef488",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 211.5,
				name = "[LPDU PLD] OT HallowedGround Trio",
				timeRange = true,
				timelineIndex = 44,
				timerEndOffset = 0.5,
				timerStartOffset = -2.5,
				uuid = "194fe0c3-8945-fb71-b412-20a8bf7e8b2c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "6dc37ec5-0a7a-574b-827a-3051d2bcdf47",
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
							aType = "Alert",
							alertDuration = 4000,
							alertTTS = true,
							alertText = "HOLMGANG IN 2s - use self target",
							conditions = 
							{
								
								{
									"8ff001a6-ac40-f200-b9c1-43854ab552b7",
									true,
								},
								
								{
									"2dd8f668-952b-6c0a-b7ca-8f38958ee585",
									true,
								},
							},
							uuid = "4bbd9f89-8dcf-a099-a17d-2df335cf3399",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "8ff001a6-ac40-f200-b9c1-43854ab552b7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "2dd8f668-952b-6c0a-b7ca-8f38958ee585",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 211.5,
				name = "[LPDU WAR] Holmgang - manual self target",
				timeRange = true,
				timelineIndex = 44,
				timerEndOffset = -4,
				timerStartOffset = -4.5,
				uuid = "0ae682aa-70c4-feda-8888-0e5fd4836bd3",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "4af59e98-9f1d-9abc-8707-6f469a0868ba",
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
									"ec415337-2220-fdd0-b707-2903d239730d",
									true,
								},
								
								{
									"61cde9dd-98fd-b623-9aeb-b81ce0ab615d",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_LivingDead",
							uuid = "01e8c438-5a4c-a07c-9753-f9c7d94a4f07",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "ec415337-2220-fdd0-b707-2903d239730d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "61cde9dd-98fd-b623-9aeb-b81ce0ab615d",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 211.5,
				name = "[LPDU DRK] OT LivingDead Trio",
				timeRange = true,
				timelineIndex = 44,
				timerEndOffset = 0.5,
				timerStartOffset = -2.5,
				uuid = "b052bb85-6e0d-4421-8ef8-24e034e3cc90",
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
				name = "Shared",
				uuid = "178c37fd-9bd7-0208-81d7-ecfc9ea65d49",
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
									"0f35f988-ddcc-eea7-8267-a242f864bbf9",
									true,
								},
								
								{
									"bdf7cffa-2111-6d59-be2d-cc9ba29b254f",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "71a21692-1d89-2fb3-aa7d-e0e641c745a2",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "0f35f988-ddcc-eea7-8267-a242f864bbf9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "bdf7cffa-2111-6d59-be2d-cc9ba29b254f",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 213.5,
				name = "[LPDU Tank] OT Voke",
				timeRange = true,
				timelineIndex = 45,
				timerEndOffset = 3,
				uuid = "596fc89a-a7a6-c3f0-905f-ee4ff216120f",
				version = 2,
			},
		},
	},
	[47] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker",
				uuid = "90dff5d3-4084-137d-b8c8-f915b3d2fa94",
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
									"441a6d4b-2db1-db51-9165-bc5fbf14e4f7",
									true,
								},
								
								{
									"fe5902b9-6c98-11ab-b3ae-2c2ea69668fb",
									true,
								},
								
								{
									"c7fcc28c-461c-bc9f-b4a8-d3edc1b09edc",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_RoyalGuard",
							uuid = "62042455-b702-4939-9374-5c16dc967371",
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
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "441a6d4b-2db1-db51-9165-bc5fbf14e4f7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "fe5902b9-6c98-11ab-b3ae-2c2ea69668fb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "c7fcc28c-461c-bc9f-b4a8-d3edc1b09edc",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 222.1,
				name = "[LPDU Tank] MT Stance ON",
				timeRange = true,
				timelineIndex = 47,
				timerEndOffset = 3,
				uuid = "4178f1a4-f343-93d9-89bd-b79c9f7ade03",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "bb721ea3-a06c-db4a-814f-74432c04051d",
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
									"e1d45a31-a277-052f-8dea-e29aa99d16b4",
									true,
								},
								
								{
									"6456a282-ba3b-9035-9e02-5638fac8b419",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Hotbar_IronWill",
							uuid = "767337fc-7abd-f3e5-8072-0902ba932a80",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "e1d45a31-a277-052f-8dea-e29aa99d16b4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "6456a282-ba3b-9035-9e02-5638fac8b419",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 222.1,
				name = "[LPDU PLD] MT Stance ON",
				timeRange = true,
				timelineIndex = 47,
				timerEndOffset = 3,
				uuid = "7629f9fb-c59a-3397-8f48-39cb76e35b25",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "2d4b2583-737f-d17d-83a1-474df6b4ca64",
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
									"ac388cd4-c08e-231f-a1fd-8fd1c22cd605",
									true,
								},
								
								{
									"f9078612-8fb8-3e27-adcc-970478386a11",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Hotbar_Defiance",
							uuid = "e104485e-0f45-e0bd-8073-a2cef09bebbd",
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
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "ac388cd4-c08e-231f-a1fd-8fd1c22cd605",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "f9078612-8fb8-3e27-adcc-970478386a11",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 222.1,
				name = "[LPDU WAR] MT Stance ON",
				timeRange = true,
				timelineIndex = 47,
				timerEndOffset = 3,
				uuid = "7c06b278-bb4a-0106-88b2-fe045f629a0f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "3197e19a-f821-a182-ba9d-5e3f2f908c0a",
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
									"430ae549-e8fd-9873-a9ff-3840160b5a00",
									true,
								},
								
								{
									"6953dafd-3bea-21f6-b46f-8cb04dd5ae71",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Hotbar_Grit",
							uuid = "5bf934be-6b22-e136-9b05-f156a30921cb",
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
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "430ae549-e8fd-9873-a9ff-3840160b5a00",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "6953dafd-3bea-21f6-b46f-8cb04dd5ae71",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 222.1,
				name = "[LPDU DRK] MT Stance ON",
				timeRange = true,
				timelineIndex = 47,
				timerEndOffset = 3,
				uuid = "389b5467-2e9a-6b7f-a837-378a52285281",
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
				name = "Shared",
				uuid = "7f08d77e-c596-801a-b897-bb34fdcb85dd",
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
									"44d8aa06-3dd0-e35b-be63-7e83b1df533a",
									true,
								},
								
								{
									"6a861c00-dc30-9ac9-ace5-98d62d274fc2",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Sprint",
							uuid = "a10f85cf-6d59-56bd-ac5f-c99a6605b16a",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "44d8aa06-3dd0-e35b-be63-7e83b1df533a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "6a861c00-dc30-9ac9-ace5-98d62d274fc2",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 235.1,
				name = "[LPDU Tank] Sprint",
				timeRange = true,
				timelineIndex = 49,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "93060ad7-a4fe-63f9-bfed-d4183d73313f",
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
				name = "Gunbreaker",
				uuid = "f4b339dd-a401-cbfd-bee8-7b871bb1a596",
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
									"a2df6690-9279-6975-be11-e34d1c5821b3",
									true,
								},
								
								{
									"63bb3092-e5e7-3dde-894e-b2f0c2ed0d88",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_AuroraSelf",
							uuid = "2e98510b-497f-f9c0-8000-4cc39f927503",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "a2df6690-9279-6975-be11-e34d1c5821b3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "63bb3092-e5e7-3dde-894e-b2f0c2ed0d88",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 249.3,
				name = "[LPDU Tank] OT Aurora Self",
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = -8,
				timerStartOffset = -11,
				uuid = "f2341ed2-1b67-7fc8-a51e-37f1a8fbc912",
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
									"17674ed3-c259-ac56-946a-b2c2c0166617",
									true,
								},
								
								{
									"fdfa2b9d-cb57-5249-8014-e48962c747b0",
									true,
								},
								
								{
									"4c35846e-2fd4-5db8-bda2-cb1318962628",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Aurora",
							targetType = "Detection Target",
							uuid = "cbbd1036-6ea9-0be0-89db-c7aa106d2f77",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "17674ed3-c259-ac56-946a-b2c2c0166617",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "fdfa2b9d-cb57-5249-8014-e48962c747b0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "6bf6529c-8714-7784-8e1f-980989482306",
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
									"6bf6529c-8714-7784-8e1f-980989482306",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "4c35846e-2fd4-5db8-bda2-cb1318962628",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 249.3,
				name = "[LPDU Tank] MT Aurora OT",
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = -8,
				timerStartOffset = -11,
				uuid = "3c013865-9236-9062-b737-747c9f8a36d8",
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
									"7d5aa96c-cfc7-f1e0-835a-9880e2d9c1fc",
									true,
								},
								
								{
									"5d2a7bc0-913a-e30b-8e1c-0489e2f6c934",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Nebula",
							uuid = "7f437bd9-aa3b-f0c8-a426-97db76e117d1",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "7d5aa96c-cfc7-f1e0-835a-9880e2d9c1fc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "5d2a7bc0-913a-e30b-8e1c-0489e2f6c934",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 249.3,
				name = "[LPDU Tank] OT Nebula",
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = -6,
				timerStartOffset = -9,
				uuid = "156b2d4e-62bc-2ebc-beb1-f2726b220015",
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
									"c04b5544-ef5f-4ae5-abaa-ccc0f0b09e41",
									true,
								},
								
								{
									"33592cf6-04ef-2cd7-b232-5fe9374a48a8",
									true,
								},
								
								{
									"bc378ad0-8a39-e716-b818-40373848a3b4",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_RoyalGuard",
							uuid = "acf8d06f-f1a5-437b-aecf-fe82b43216f0",
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
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "c04b5544-ef5f-4ae5-abaa-ccc0f0b09e41",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "33592cf6-04ef-2cd7-b232-5fe9374a48a8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "bc378ad0-8a39-e716-b818-40373848a3b4",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 249.3,
				name = "[LPDU Tank] MT Stance ON",
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "9166147e-56ba-954c-8b3c-0e457a5000c1",
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
									"33d97553-6358-7006-b32e-11de99d3e53d",
									true,
								},
								
								{
									"d431fb8f-c534-1e1d-892f-79d10186e1a0",
									true,
								},
								
								{
									"d12f5c34-b59b-1f22-8586-755aea67afe5",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumMouse",
							targetType = "Detection Target",
							uuid = "3e2b0950-62dc-47fb-91f9-cf0a177a9d8a",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "33d97553-6358-7006-b32e-11de99d3e53d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "d431fb8f-c534-1e1d-892f-79d10186e1a0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "c3c34dc9-e7e4-91ab-92c8-ae04c71eb851",
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
									"c3c34dc9-e7e4-91ab-92c8-ae04c71eb851",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "d12f5c34-b59b-1f22-8586-755aea67afe5",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 249.3,
				name = "[LPDU Tank] MT HoS OT",
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = 1,
				timerStartOffset = -2,
				uuid = "b10b49ba-9197-4c51-bca2-da7366b66c4b",
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
									"1df033e3-87ed-2bb5-8bc3-1155fffdc60c",
									true,
								},
								
								{
									"633876d9-358a-abab-a18e-daccb7c5b164",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "81bf8813-25a3-472a-86ee-fcd894f37b9e",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "1df033e3-87ed-2bb5-8bc3-1155fffdc60c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "633876d9-358a-abab-a18e-daccb7c5b164",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 249.3,
				name = "[LPDU Tank] OT HoS Self",
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = 1,
				timerStartOffset = -2,
				uuid = "ca50ffb3-ab23-7f1b-ad90-5e4789d278b0",
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
									"3639b110-b6e0-44fd-b933-bc31b63738ce",
									true,
								},
								
								{
									"3698fbee-25df-daaf-bba5-193933f9a3e1",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "00cd9b26-b581-0891-8dab-36866957c3c2",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "3639b110-b6e0-44fd-b933-bc31b63738ce",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "3698fbee-25df-daaf-bba5-193933f9a3e1",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 249.3,
				name = "[LPDU Tank] HoL",
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = 3,
				uuid = "16e15dda-e7eb-3a91-a1f1-12b3227b0521",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared",
				uuid = "1dd17d10-536b-1bba-af96-a6b77d2c1dc7",
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
									"74884fd3-7cf3-a3da-b406-f4cbe23a6e04",
									true,
								},
								
								{
									"de3b8aad-5e06-3897-9681-49d49bf4e267",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "b2c66db6-ec0b-4d81-b06d-adf41d89029c",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "74884fd3-7cf3-a3da-b406-f4cbe23a6e04",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "de3b8aad-5e06-3897-9681-49d49bf4e267",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 249.3,
				name = "[LPDU Tank] OT Voke",
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "9eacaa1b-972d-b8ac-9271-5412b2d64bc1",
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
									"c091f17f-1559-4b29-a349-e284523d3499",
									true,
								},
								
								{
									"96a51940-1f55-d029-a1ab-f1dee9a11792",
									true,
								},
								
								{
									"1409fb6a-8cbe-4b40-bbcc-c373cb0b30cb",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "2018c1e5-f8de-4145-b2dc-bc9c05ca817f",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "c091f17f-1559-4b29-a349-e284523d3499",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "96a51940-1f55-d029-a1ab-f1dee9a11792",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 5,
							name = "Reprisal range <=5y",
							partyTargetType = "Detection Target",
							uuid = "fb3b6078-b564-f5b1-8fb0-3cfdb2728165",
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
									"fb3b6078-b564-f5b1-8fb0-3cfdb2728165",
									true,
								},
							},
							filterTargetType = "Enemy",
							name = "Enemy in Reprisal range",
							uuid = "1409fb6a-8cbe-4b40-bbcc-c373cb0b30cb",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 249.3,
				name = "[LPDU Tank] MT Reprisal",
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = 8,
				timerStartOffset = 5,
				uuid = "3da05fc1-429b-dc9b-b10e-f2f25b97b995",
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
									"cb8df359-64ef-23c7-86a3-2aa9e0935244",
									true,
								},
								
								{
									"98d9c726-57ea-7a66-8651-edf94e2c95d9",
									true,
								},
								
								{
									"799935ea-746d-a1ce-ab6a-03ed32675989",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_ShirkMouse",
							targetType = "Detection Target",
							uuid = "3741c9a4-677f-35f0-b294-a7f23bd66714",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "cb8df359-64ef-23c7-86a3-2aa9e0935244",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "98d9c726-57ea-7a66-8651-edf94e2c95d9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "8a5e7485-008e-5426-9dd4-000214c4213c",
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
									"8a5e7485-008e-5426-9dd4-000214c4213c",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "799935ea-746d-a1ce-ab6a-03ed32675989",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 249.3,
				name = "[LPDU Tank] MT Shirk",
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = 8,
				timerStartOffset = 5,
				uuid = "87763201-1281-761d-a026-dadc11f2b4f4",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "c94f4721-cb54-97b1-ab6d-96714c012323",
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
									"df9f81f6-32d9-2ffd-99f9-c555eb5d47bf",
									true,
								},
								
								{
									"2d7b45f2-443f-bd69-9b4b-b733bd3681e4",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Guardian",
							uuid = "993014a8-cdb8-56bc-b173-68ba596fbde9",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "df9f81f6-32d9-2ffd-99f9-c555eb5d47bf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "2d7b45f2-443f-bd69-9b4b-b733bd3681e4",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 249.3,
				name = "[LPDU PLD] OT Guardian",
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = -6,
				timerStartOffset = -9,
				uuid = "cddc873d-5722-9b31-96f7-8688518f5ddf",
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
									"de6a93a1-e154-6745-aa79-7e88c9160b58",
									true,
								},
								
								{
									"d8396e77-f1e6-e841-b8fd-412edc9ada29",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Hotbar_IronWill",
							uuid = "816abcb7-2b1f-c140-9c7e-dd0b38b0fc40",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "de6a93a1-e154-6745-aa79-7e88c9160b58",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "d8396e77-f1e6-e841-b8fd-412edc9ada29",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 249.3,
				name = "[LPDU PLD] MT Stance ON",
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "856767bc-6985-6507-a8c0-fcb7de2f85c2",
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
									"a179b4ac-c2ed-781b-b92e-899d618c6cc6",
									true,
								},
								
								{
									"1fca2126-b87b-2bd6-8140-0c1a09805b32",
									true,
								},
								
								{
									"dcc3d48d-018f-36a5-8e94-6f394e685f72",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_InterventionMouse",
							targetType = "Detection Target",
							uuid = "c6515580-b743-537d-ae3a-49d4c8d1bd6f",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "a179b4ac-c2ed-781b-b92e-899d618c6cc6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "1fca2126-b87b-2bd6-8140-0c1a09805b32",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "912b6ce3-ed45-ea6f-8230-da1f822e1a2e",
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
									"912b6ce3-ed45-ea6f-8230-da1f822e1a2e",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "dcc3d48d-018f-36a5-8e94-6f394e685f72",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 249.3,
				name = "[LPDU PLD] MT Sheltron/Intervention OT",
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = 1,
				timerStartOffset = -2,
				uuid = "7472a747-8e20-95cb-9700-dd8382386ec3",
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
									"dd222d8d-078e-f1ec-b826-9c9cb9d407d6",
									true,
								},
								
								{
									"69972809-d42b-4871-bae8-b8ac06d288c5",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HolySheltron",
							uuid = "37b28cb0-1640-7900-8a0b-6f597e2749f7",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "dd222d8d-078e-f1ec-b826-9c9cb9d407d6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "69972809-d42b-4871-bae8-b8ac06d288c5",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 249.3,
				name = "[LPDU PLD] OT Sheltron/Intervention Self",
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = 1,
				timerStartOffset = -2,
				uuid = "4e7b0ad2-ce4e-e008-86c0-a595c5c31208",
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
									"7a03b3f0-3217-2288-bfc3-9b2007c38c2b",
									true,
								},
								
								{
									"b26eba7c-0ac1-780b-bb5f-be36f6d2a6ab",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_DivineVeil",
							uuid = "3336c195-c905-c89b-8db3-bfff75e4c11a",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "7a03b3f0-3217-2288-bfc3-9b2007c38c2b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "b26eba7c-0ac1-780b-bb5f-be36f6d2a6ab",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 249.3,
				name = "[LPDU PLD] DivineVeil",
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = 3,
				uuid = "39339492-4b67-24ef-a38c-9f6dddfd2cc1",
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
							aType = "Alert",
							alertDuration = 4000,
							alertTTS = true,
							alertText = "PASSAGE OF ARMS IN 2s - position for party",
							conditions = 
							{
								
								{
									"3e481e84-9e20-790a-8a44-5761f386a39e",
									true,
								},
								
								{
									"b5dbb3a0-cfc5-7b56-9c06-64a676d7f065",
									true,
								},
							},
							uuid = "ee962f43-7d14-aa9e-b0b5-671eaf438143",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "3e481e84-9e20-790a-8a44-5761f386a39e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "b5dbb3a0-cfc5-7b56-9c06-64a676d7f065",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 249.3,
				name = "[LPDU PLD] Passage - manual positioning",
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = -1.5,
				timerStartOffset = -2,
				uuid = "d3a82d08-f75d-0923-a841-7cb911f2dfbf",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "78b87763-766e-d927-b03e-dc8d007a4c86",
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
									"89c72b33-2a2d-ca55-a1c1-bc9f20e21b2f",
									true,
								},
								
								{
									"44325d8d-559c-122e-8477-b159a2970e6b",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Equilibrium",
							uuid = "a639e0f3-9ddc-efb0-988b-eeb3a97bc85b",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "89c72b33-2a2d-ca55-a1c1-bc9f20e21b2f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "44325d8d-559c-122e-8477-b159a2970e6b",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 249.3,
				name = "[LPDU WAR] OT Equilibrium Self",
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = -8,
				timerStartOffset = -11,
				uuid = "9b980d55-2c1f-d18b-8838-f9b2a4d95026",
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
									"b5779e62-e43b-ef52-9a39-10d761de6c65",
									true,
								},
								
								{
									"ecee22e5-dc8a-ef13-badf-9eafd35736a3",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Damnation",
							uuid = "512b13a0-d947-5961-8895-0af85a401a55",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "b5779e62-e43b-ef52-9a39-10d761de6c65",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "ecee22e5-dc8a-ef13-badf-9eafd35736a3",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 249.3,
				name = "[LPDU WAR] OT Damnation",
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = -6,
				timerStartOffset = -9,
				uuid = "407b53f0-5774-d489-93f6-b84e31cb6acf",
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
									"24c0d595-d1dd-393f-a97f-00f5bae5f6e8",
									true,
								},
								
								{
									"907584d4-2b8b-b90d-9f1f-42bfa0e7c54f",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Hotbar_Defiance",
							uuid = "5635d22a-5e9b-cbd9-a54c-f3890ed23e67",
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
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "24c0d595-d1dd-393f-a97f-00f5bae5f6e8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "907584d4-2b8b-b90d-9f1f-42bfa0e7c54f",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 249.3,
				name = "[LPDU WAR] MT Stance ON",
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "6a7a6e35-0973-96c1-ad47-541752e662c0",
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
									"bf5bbb83-94df-143e-b711-77550f5536b4",
									true,
								},
								
								{
									"37240e11-b4d5-62a6-a6bc-fc4b26aa95dd",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Bloodwhetting",
							uuid = "c3322da9-1cc7-76b1-bcc0-8589dfa00207",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "bf5bbb83-94df-143e-b711-77550f5536b4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "37240e11-b4d5-62a6-a6bc-fc4b26aa95dd",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 249.3,
				name = "[LPDU WAR] OT Raw Intuition Self",
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = 1,
				timerStartOffset = -2,
				uuid = "b13ef6f9-0cdf-0aa7-936f-3e964b00e3ea",
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
									"cf286975-ecc2-b36b-8056-1bbe263bcac9",
									true,
								},
								
								{
									"fe0b33ec-0c20-782e-8da0-63e309936d8e",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_ShakeItOff",
							uuid = "9e342e80-3910-4dd2-9c3e-9d496fba8bed",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "cf286975-ecc2-b36b-8056-1bbe263bcac9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "fe0b33ec-0c20-782e-8da0-63e309936d8e",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 249.3,
				name = "[LPDU WAR] ShakeItOff",
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = 3,
				uuid = "97ca87dd-7565-2796-a3e3-b04916b914d6",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "6b3caf34-d3b3-b90b-a510-f258bf56b1d1",
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
									"efcf2461-2cef-aaa6-a3d7-091c281fe43e",
									true,
								},
								
								{
									"234f7f71-1650-bcd0-a2d4-1915597975f4",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_ShadowedVigil",
							uuid = "7d071bb9-bc39-fc6f-92b8-2b3f8eed7197",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "efcf2461-2cef-aaa6-a3d7-091c281fe43e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "234f7f71-1650-bcd0-a2d4-1915597975f4",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 249.3,
				name = "[LPDU DRK] OT ShadowedVigil",
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = -6,
				timerStartOffset = -9,
				uuid = "57c2f868-7131-f53c-a703-a5410167b59d",
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
									"aaf5f3c5-3d7e-20b4-b064-1e6308bcc225",
									true,
								},
								
								{
									"dc5343dc-ce36-a7cc-bf8e-7da20cb45ec1",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Hotbar_Grit",
							uuid = "03710666-760f-8fd0-b0a8-5a22946e5662",
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
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "aaf5f3c5-3d7e-20b4-b064-1e6308bcc225",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "dc5343dc-ce36-a7cc-bf8e-7da20cb45ec1",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 249.3,
				name = "[LPDU DRK] MT Stance ON",
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "e8ff38ca-15f1-a217-b857-96fb680c1193",
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
									"b95195f6-ceb5-0ec9-a22f-9812178b4e6c",
									true,
								},
								
								{
									"be9e7329-3f19-e08c-8487-afefcead130a",
									true,
								},
								
								{
									"4db56fef-dd7d-ac05-897f-6e39841587b4",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightMouse",
							targetType = "Detection Target",
							uuid = "a3205f0c-ca71-3592-a01b-6bddda5ae46a",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "b95195f6-ceb5-0ec9-a22f-9812178b4e6c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "be9e7329-3f19-e08c-8487-afefcead130a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "7e61e860-cbaf-bac8-beb3-7091ce8dd3c2",
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
									"7e61e860-cbaf-bac8-beb3-7091ce8dd3c2",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "4db56fef-dd7d-ac05-897f-6e39841587b4",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 249.3,
				name = "[LPDU DRK] MT TBN OT",
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = 1,
				timerStartOffset = -2,
				uuid = "6a58812d-35fc-b511-8f07-5dd9776df64a",
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
									"1139bc8d-9d00-d2cf-a557-45e561924e15",
									true,
								},
								
								{
									"ca106dbb-cfdb-d3e2-8611-999e9691b4de",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf",
							uuid = "d1ee30d3-1d98-46c2-bdfb-2a018ff32977",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "1139bc8d-9d00-d2cf-a557-45e561924e15",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "ca106dbb-cfdb-d3e2-8611-999e9691b4de",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 249.3,
				name = "[LPDU DRK] OT TBN Self",
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = 1,
				timerStartOffset = -2,
				uuid = "555a1de2-138e-dc70-9d88-373634a56773",
				version = 2,
			},
		},
	},
	[62] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker",
				uuid = "1ea39676-e941-a265-8c1d-dae4c2f5a579",
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
									"26e5186c-d5b6-1aa3-a66c-239d3f84a3a2",
									true,
								},
								
								{
									"9be13c09-d3c1-6b32-83e1-8fa212a565e3",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							uuid = "faa4282b-4eb4-f37b-9560-15ee51eec8ac",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "26e5186c-d5b6-1aa3-a66c-239d3f84a3a2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "9be13c09-d3c1-6b32-83e1-8fa212a565e3",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 284.7,
				name = "[LPDU Tank] OT Camo",
				timeRange = true,
				timelineIndex = 62,
				timerEndOffset = -10,
				timerStartOffset = -13,
				uuid = "1781385e-f0c4-2554-9d10-f9c4956e700a",
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
									"05824e5e-8990-a378-8526-4820a9e0d23e",
									true,
								},
								
								{
									"30362593-2006-d1e0-9a31-a59422c79121",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "4296d1b3-95b6-3b43-9f4f-a153a59034b8",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "05824e5e-8990-a378-8526-4820a9e0d23e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "30362593-2006-d1e0-9a31-a59422c79121",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 284.7,
				name = "[LPDU Tank] OT HoS Self",
				timeRange = true,
				timelineIndex = 62,
				timerEndOffset = 1,
				timerStartOffset = -2,
				uuid = "3904f0d1-5469-8d7b-bf05-caa639dfcfcd",
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
									"04e5c224-a922-666e-99a1-7a617a614492",
									true,
								},
								
								{
									"efeb694d-e191-5a62-9e8b-c6e9526ed9cb",
									true,
								},
								
								{
									"3b6a33a3-9e56-222e-9b85-5d299fd3d3c6",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumMouse",
							targetType = "Detection Target",
							uuid = "9d648fbc-b39b-c068-a1cf-8e39df7149d9",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "04e5c224-a922-666e-99a1-7a617a614492",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "efeb694d-e191-5a62-9e8b-c6e9526ed9cb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "3d33b012-2779-8892-8a43-8389becf8c1b",
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
									"3d33b012-2779-8892-8a43-8389becf8c1b",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "3b6a33a3-9e56-222e-9b85-5d299fd3d3c6",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 284.7,
				name = "[LPDU Tank] MT HoS OT",
				timeRange = true,
				timelineIndex = 62,
				timerEndOffset = 1,
				timerStartOffset = -2,
				uuid = "7b998df3-19ab-cd97-87e7-146512ac2178",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared",
				uuid = "a8e80dda-b7d3-0998-9e59-2630a13735c4",
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
									"85cd5a29-59ce-1ca5-807c-2b1139907d2b",
									true,
								},
								
								{
									"776fdb02-e5a1-7399-9cbb-7f4094fd8e95",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "3917742a-1ec5-197d-aab2-7fda989e87f0",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "85cd5a29-59ce-1ca5-807c-2b1139907d2b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "776fdb02-e5a1-7399-9cbb-7f4094fd8e95",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 284.7,
				name = "[LPDU Tank] OT Voke",
				timeRange = true,
				timelineIndex = 62,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "7188395b-6e17-f82b-b51f-e4f8e3bffe1e",
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
									"20c09106-505b-919e-9867-05c0c9ad5ea8",
									true,
								},
								
								{
									"e3254559-da85-c4b3-9c1a-22f8f85afa46",
									true,
								},
								
								{
									"1e2e752c-ac46-0875-aed6-046484a84473",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "5c9b26da-8131-d057-8ed0-e39f25ff4140",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "20c09106-505b-919e-9867-05c0c9ad5ea8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "e3254559-da85-c4b3-9c1a-22f8f85afa46",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 5,
							name = "Reprisal range <=5y",
							partyTargetType = "Detection Target",
							uuid = "a4cebd52-c9df-2e02-b3cc-eb1b175b6f83",
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
									"a4cebd52-c9df-2e02-b3cc-eb1b175b6f83",
									true,
								},
							},
							filterTargetType = "Enemy",
							name = "Enemy in Reprisal range",
							uuid = "1e2e752c-ac46-0875-aed6-046484a84473",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 284.7,
				name = "[LPDU Tank] OT Reprisal",
				timeRange = true,
				timelineIndex = 62,
				timerEndOffset = -1.5,
				timerStartOffset = -4.5,
				uuid = "ec7a020d-5324-2e5a-9715-742c7b397e0c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "983ea023-427c-516b-a715-cc153a75a4c5",
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
									"b1df516a-37c7-7eed-99d1-c3aaff2d66ae",
									true,
								},
								
								{
									"b1e2baea-20cf-275b-a776-720c1aaab925",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Bulwark",
							uuid = "bd80b3c4-6ba6-15e6-8905-bd7e29a0d733",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "b1df516a-37c7-7eed-99d1-c3aaff2d66ae",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "b1e2baea-20cf-275b-a776-720c1aaab925",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 284.7,
				name = "[LPDU PLD] OT Bulwark",
				timeRange = true,
				timelineIndex = 62,
				timerEndOffset = -10,
				timerStartOffset = -13,
				uuid = "88424e47-ac87-a6e1-a3e1-9308ceee5c34",
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
									"4f2e4b21-cc28-2272-922e-20a451ebb3fb",
									true,
								},
								
								{
									"2a42a16d-63c0-61f2-884f-4918ff985a07",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HolySheltron",
							uuid = "761e606e-d69b-d6c7-815e-7dcebe18a9c5",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "4f2e4b21-cc28-2272-922e-20a451ebb3fb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "2a42a16d-63c0-61f2-884f-4918ff985a07",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 284.7,
				name = "[LPDU PLD] OT Sheltron/Intervention Self",
				timeRange = true,
				timelineIndex = 62,
				timerEndOffset = 1,
				timerStartOffset = -2,
				uuid = "ef575a3d-d420-ce2f-bf91-494489922deb",
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
									"d8dbbf8e-f807-3737-a4d5-8e779de36d33",
									true,
								},
								
								{
									"b6ae45f0-5a3e-56e3-b42e-41029b736bea",
									true,
								},
								
								{
									"5a8620d3-77d0-704f-9d68-e7c3bd568aea",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_InterventionMouse",
							targetType = "Detection Target",
							uuid = "186bfd75-117a-b3a2-b297-5d6ba35ba48f",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "d8dbbf8e-f807-3737-a4d5-8e779de36d33",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "b6ae45f0-5a3e-56e3-b42e-41029b736bea",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "6dafc808-3d4e-3fb6-b847-16288bdc75bb",
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
									"6dafc808-3d4e-3fb6-b847-16288bdc75bb",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "5a8620d3-77d0-704f-9d68-e7c3bd568aea",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 284.7,
				name = "[LPDU PLD] MT Sheltron/Intervention OT",
				timeRange = true,
				timelineIndex = 62,
				timerEndOffset = 1,
				timerStartOffset = -2,
				uuid = "313c6323-9b10-d97c-bcbe-bc718122e984",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "7f59fe32-336f-48dc-9c3e-f0c12a189a6b",
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
									"cf978da8-c8f3-1f28-a06a-ab1663932fbf",
									true,
								},
								
								{
									"d372ebd1-e1d0-34da-87fa-0afe15e91d59",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_ThrillOfBattle",
							uuid = "604931eb-c0a4-fbe5-89b1-01dd7e45920d",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "cf978da8-c8f3-1f28-a06a-ab1663932fbf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "d372ebd1-e1d0-34da-87fa-0afe15e91d59",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 284.7,
				name = "[LPDU WAR] OT ThrillOfBattle",
				timeRange = true,
				timelineIndex = 62,
				timerEndOffset = -10,
				timerStartOffset = -13,
				uuid = "f6b17fab-7e26-40f7-b2a7-0a93255d8e15",
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
									"5c5a33ff-43e3-fd3a-9c30-57d544dc7d87",
									true,
								},
								
								{
									"4b0ed373-c473-3dc3-84e8-5a47f44fdbb4",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Bloodwhetting",
							uuid = "8a20224c-aec7-56eb-a7ea-b34a4e910dd9",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "5c5a33ff-43e3-fd3a-9c30-57d544dc7d87",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "4b0ed373-c473-3dc3-84e8-5a47f44fdbb4",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 284.7,
				name = "[LPDU WAR] OT Raw Intuition Self",
				timeRange = true,
				timelineIndex = 62,
				timerEndOffset = 1,
				timerStartOffset = -2,
				uuid = "e7f2d5f8-600a-2c98-8023-8deb5e6bb820",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "875394f8-577e-9d0a-b970-bc604d14ca81",
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
									"a18f5d42-1845-432a-9891-c4bc99fed330",
									true,
								},
								
								{
									"9010adde-bdd3-44a9-b169-e146512a935b",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_DarkMind",
							uuid = "305a410f-414c-26c6-8dc7-1946bfd571d7",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "a18f5d42-1845-432a-9891-c4bc99fed330",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "9010adde-bdd3-44a9-b169-e146512a935b",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 284.7,
				name = "[LPDU DRK] OT DarkMind",
				timeRange = true,
				timelineIndex = 62,
				timerEndOffset = -10,
				timerStartOffset = -13,
				uuid = "28bc46d2-9ce6-5be9-992b-519c50b1782b",
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
									"360dcfd6-be02-0dbb-bfda-01c7d7a04441",
									true,
								},
								
								{
									"8aec4179-7177-0a91-a5f1-a97d855e5bda",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf",
							uuid = "ae46cda7-2b1c-26b9-817f-2e1281686421",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "360dcfd6-be02-0dbb-bfda-01c7d7a04441",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "8aec4179-7177-0a91-a5f1-a97d855e5bda",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 284.7,
				name = "[LPDU DRK] OT TBN Self",
				timeRange = true,
				timelineIndex = 62,
				timerEndOffset = 1,
				timerStartOffset = -2,
				uuid = "fde71bb6-d5e4-6581-8066-daf7fe34c7d6",
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
									"a91ef98e-b6e0-8f2f-855c-28b84031f679",
									true,
								},
								
								{
									"1939bbbe-2918-ed54-a76c-4c1e6f62371f",
									true,
								},
								
								{
									"5cf2cfa4-c255-0300-ad47-03a56ac332d9",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightMouse",
							targetType = "Detection Target",
							uuid = "86eb5eab-b04d-d4f7-833f-e1f853dbad24",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "a91ef98e-b6e0-8f2f-855c-28b84031f679",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "1939bbbe-2918-ed54-a76c-4c1e6f62371f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "20190422-b65c-faf6-82f8-76bec8aa5662",
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
									"20190422-b65c-faf6-82f8-76bec8aa5662",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "5cf2cfa4-c255-0300-ad47-03a56ac332d9",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 284.7,
				name = "[LPDU DRK] MT TBN OT",
				timeRange = true,
				timelineIndex = 62,
				timerEndOffset = 1,
				timerStartOffset = -2,
				uuid = "181268d4-5342-b268-8409-87d3bc14786e",
				version = 2,
			},
		},
	},
	[65] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared",
				uuid = "f010c5bb-6e12-a81d-a25c-86db9a81c8d3",
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
									"0b68fab4-fa13-b6e3-8689-1501ecda93ae",
									true,
								},
								
								{
									"7398e681-0a0b-eeae-9cb6-d55af6dd13c4",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Sprint",
							uuid = "669ce8fa-fefc-06a3-b42a-615165e3840e",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "0b68fab4-fa13-b6e3-8689-1501ecda93ae",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "7398e681-0a0b-eeae-9cb6-d55af6dd13c4",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 305.9,
				name = "[LPDU Tank] Sprint",
				timeRange = true,
				timelineIndex = 65,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "e2a48998-00cb-cf43-8358-51324b141ca7",
				version = 2,
			},
		},
	},
	[67] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared",
				uuid = "1e2d87d2-677d-7e10-bcfa-6ee521c8a98b",
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
									"51e28983-8a03-ff06-81c2-4e2fad9ddc3d",
									true,
								},
								
								{
									"c119efa0-ef07-9801-8020-a3f767868971",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Rampart",
							uuid = "a212c683-30b6-8aa3-b5a2-0442777ce267",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "51e28983-8a03-ff06-81c2-4e2fad9ddc3d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "c119efa0-ef07-9801-8020-a3f767868971",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 323.3,
				name = "[LPDU Tank] OT Rampart",
				timeRange = true,
				timelineIndex = 67,
				timerEndOffset = -15,
				timerStartOffset = -18,
				uuid = "3c2cc02b-9c93-c287-84fe-faed71e9d32f",
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
									"c6452471-3d4d-0b4a-b352-7804999f297b",
									true,
								},
								
								{
									"268561fe-3892-7a0e-88ae-f24cd5bef25b",
									true,
								},
								
								{
									"90b6b860-9fff-397c-8c5d-d31ac7f78fae",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "043057ed-61da-ba93-b2f5-ff7a0d40d190",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "c6452471-3d4d-0b4a-b352-7804999f297b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "268561fe-3892-7a0e-88ae-f24cd5bef25b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 5,
							name = "Reprisal range <=5y",
							partyTargetType = "Detection Target",
							uuid = "7d139f48-a11c-2327-9c1b-adb958e40fbf",
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
									"7d139f48-a11c-2327-9c1b-adb958e40fbf",
									true,
								},
							},
							filterTargetType = "Enemy",
							name = "Enemy in Reprisal range",
							uuid = "90b6b860-9fff-397c-8c5d-d31ac7f78fae",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 323.3,
				name = "[LPDU Tank] MT Reprisal",
				timeRange = true,
				timelineIndex = 67,
				timerEndOffset = -6,
				timerStartOffset = -9,
				uuid = "9024d87d-dda8-34ed-baf7-68ba77340f28",
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
									"db8280e0-61be-4a66-9363-6698f3cce552",
									true,
								},
								
								{
									"4522ed9b-62e6-35d4-a3e7-67eb380eb0ab",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "700a70ff-0c00-a8d3-b3fb-a5bcd8266803",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "db8280e0-61be-4a66-9363-6698f3cce552",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "4522ed9b-62e6-35d4-a3e7-67eb380eb0ab",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 323.3,
				name = "[LPDU Tank] MT Provoke",
				timeRange = true,
				timelineIndex = 67,
				timerEndOffset = -0.5,
				timerStartOffset = -3.5,
				uuid = "11ca153f-42dc-d97f-a142-0f11169c2e8d",
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
									"32553556-fe29-7fdb-bb16-344d73fa0e17",
									true,
								},
								
								{
									"69556a74-3727-d29d-81c7-c923bdef790e",
									true,
								},
								
								{
									"3d73b423-cb76-12ee-9aad-7c1452ae8297",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_ShirkMouse",
							targetType = "Detection Target",
							uuid = "994711e3-6f42-329b-bccd-20f8b9fd2214",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "32553556-fe29-7fdb-bb16-344d73fa0e17",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "69556a74-3727-d29d-81c7-c923bdef790e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "9e60c882-b274-a010-b57d-627859594f01",
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
									"9e60c882-b274-a010-b57d-627859594f01",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "3d73b423-cb76-12ee-9aad-7c1452ae8297",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 323.3,
				name = "[LPDU Tank] OT Shirk",
				timeRange = true,
				timelineIndex = 67,
				timerEndOffset = 2,
				timerStartOffset = -1,
				uuid = "f86c4d37-fc99-8f2f-adb1-322a3e9a77bc",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker",
				uuid = "d056dc88-0f8c-9e6c-aee6-ec1bbc5aee98",
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
									"2b2636b7-21d2-e0e2-ae1a-51555f96006d",
									true,
								},
								
								{
									"fbce504e-8584-88a7-8090-ce231323d7ad",
									true,
								},
								
								{
									"ad302aad-aa7f-4b56-bd37-e8bfe3908c68",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Aurora",
							targetType = "Detection Target",
							uuid = "12f0aedf-d7eb-0681-b97c-a3ca9abd5e94",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "2b2636b7-21d2-e0e2-ae1a-51555f96006d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "fbce504e-8584-88a7-8090-ce231323d7ad",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "2e1489d8-7f0b-9087-bcc5-496d9b8237b0",
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
									"2e1489d8-7f0b-9087-bcc5-496d9b8237b0",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "ad302aad-aa7f-4b56-bd37-e8bfe3908c68",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 323.3,
				name = "[LPDU Tank] MT Aurora OT",
				timeRange = true,
				timelineIndex = 67,
				timerEndOffset = -13,
				timerStartOffset = -16,
				uuid = "fe4c5952-2053-ea9a-8099-84ab02329d1e",
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
									"140aae7e-90b2-b09f-ab2b-7e15aba93a7a",
									true,
								},
								
								{
									"9b7b96cb-ac4d-635c-a720-943d38f48e9c",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_AuroraSelf",
							uuid = "2aea5517-92f5-0e0f-b283-9789a21b8ecc",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "140aae7e-90b2-b09f-ab2b-7e15aba93a7a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "9b7b96cb-ac4d-635c-a720-943d38f48e9c",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 323.3,
				name = "[LPDU Tank] OT Aurora Self",
				timeRange = true,
				timelineIndex = 67,
				timerEndOffset = -13,
				timerStartOffset = -16,
				uuid = "00cc72f3-be55-eb7a-8876-79a481e03727",
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
									"dd120181-7a46-c220-afd8-44c3f505c9ed",
									true,
								},
								
								{
									"5fcdff67-a19b-854a-91b8-3f57865d2696",
									true,
								},
								
								{
									"392a804a-3622-9d92-a8bc-0965ed819460",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_RoyalGuard",
							uuid = "4c85802c-0beb-89c6-8fcc-0212da0077ff",
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
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "dd120181-7a46-c220-afd8-44c3f505c9ed",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "5fcdff67-a19b-854a-91b8-3f57865d2696",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "392a804a-3622-9d92-a8bc-0965ed819460",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 323.3,
				name = "[LPDU Tank] MT Stance ON",
				timeRange = true,
				timelineIndex = 67,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "36dcb3ef-8551-56a9-a4e5-914f7df1123c",
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
									"c2df63a9-667d-bb7f-b3fc-be3f7442dbd0",
									true,
								},
								
								{
									"34bfe085-a2bc-e210-a2ec-a4246245b04c",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "2e5a99ff-c86f-354d-80cb-4fe23ac2e814",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "c2df63a9-667d-bb7f-b3fc-be3f7442dbd0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "34bfe085-a2bc-e210-a2ec-a4246245b04c",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 323.3,
				name = "[LPDU Tank] OT HoS Self",
				timeRange = true,
				timelineIndex = 67,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "8ec39c89-190a-b477-a2a6-9c46cf722c5a",
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
									"a2bf20c0-8c9a-6f87-9ead-09bb3ee89ed9",
									true,
								},
								
								{
									"829999da-0b99-a685-95cd-61e8301bc2f8",
									true,
								},
								
								{
									"ce55f5ad-3485-217a-b142-52f1a1fa7252",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumMouse",
							targetType = "Detection Target",
							uuid = "a5ac13a1-0d12-48aa-8a64-fdfa716302ce",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "a2bf20c0-8c9a-6f87-9ead-09bb3ee89ed9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "829999da-0b99-a685-95cd-61e8301bc2f8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "481ac26b-df9e-418c-b52d-499a80e97194",
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
									"481ac26b-df9e-418c-b52d-499a80e97194",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "ce55f5ad-3485-217a-b142-52f1a1fa7252",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 323.3,
				name = "[LPDU Tank] MT HoS OT",
				timeRange = true,
				timelineIndex = 67,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "cff448d7-47f0-6357-bdee-257f949e8bd4",
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
									"c4fa7075-fa21-cc58-b915-d8ae48cf4c14",
									true,
								},
								
								{
									"57aeaa7f-a0e6-a569-aa99-e53b290a23e8",
									true,
								},
								
								{
									"b94a3549-ee35-db91-8092-984c3f293984",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_ReleaseRoyalGuard",
							uuid = "d7337927-2305-1e5e-8fb3-071a364c271d",
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
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "c4fa7075-fa21-cc58-b915-d8ae48cf4c14",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "57aeaa7f-a0e6-a569-aa99-e53b290a23e8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 1833,
							category = "Self",
							uuid = "b94a3549-ee35-db91-8092-984c3f293984",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 323.3,
				name = "[LPDU Tank] OT Stance OFF",
				timeRange = true,
				timelineIndex = 67,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "e45eb902-016f-c7a2-8ce5-71dfb832721d",
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
									"d1a5dbab-c1a4-a887-963a-b6620c11988d",
									true,
								},
								
								{
									"041a4584-68ab-8a42-9174-51447802ead1",
									true,
								},
								
								{
									"92bd7e50-5b12-546b-8bfc-f9286f27dea7",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Nebula",
							uuid = "c1081bdd-13bf-15d5-9bc4-28a25d883959",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "d1a5dbab-c1a4-a887-963a-b6620c11988d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "041a4584-68ab-8a42-9174-51447802ead1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 2612,
							name = "Nael Still Alive",
							uuid = "92bd7e50-5b12-546b-8bfc-f9286f27dea7",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 323.3,
				name = "[LPDU Tank] MT Nebula",
				timeRange = true,
				timelineIndex = 67,
				timerEndOffset = 18,
				timerStartOffset = 15,
				uuid = "1bcd1cf1-bb4c-cdd8-9c3d-80c72c04d72c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "08638d5a-22ed-282d-ab4c-54b7e56549ca",
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
									"fb6ace68-f323-1ad8-b22e-8b276587f4e6",
									true,
								},
								
								{
									"68ea4beb-e916-e045-bb2b-e4e72cdfc2fc",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Hotbar_IronWill",
							uuid = "3c31b7e9-9c85-091c-b655-1b71206a79e1",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "fb6ace68-f323-1ad8-b22e-8b276587f4e6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "68ea4beb-e916-e045-bb2b-e4e72cdfc2fc",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 323.3,
				name = "[LPDU PLD] MT Stance ON",
				timeRange = true,
				timelineIndex = 67,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "bdd5e9fe-a18f-0889-971d-0fd9f76fb77e",
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
									"4de57424-cb85-8739-95f6-f7f3462cce99",
									true,
								},
								
								{
									"1e20ef1d-1bfa-2d0f-98a9-962146087cfc",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HolySheltron",
							uuid = "4f591012-bf74-643f-8490-df947bd5cd32",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "4de57424-cb85-8739-95f6-f7f3462cce99",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "1e20ef1d-1bfa-2d0f-98a9-962146087cfc",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 323.3,
				name = "[LPDU PLD] OT Sheltron/Intervention Self",
				timeRange = true,
				timelineIndex = 67,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "2dcc9a1c-a5bf-f886-b045-35d126227697",
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
									"9b179423-e723-5ae8-8199-99b2fceec869",
									true,
								},
								
								{
									"3a0b3d66-516d-10b8-9e3d-24cd4b1582ad",
									true,
								},
								
								{
									"d13c4238-e24e-1940-bfac-774e5542ac32",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_InterventionMouse",
							targetType = "Detection Target",
							uuid = "ed1848f9-6160-de76-8fa1-f023b2738c01",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "9b179423-e723-5ae8-8199-99b2fceec869",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "3a0b3d66-516d-10b8-9e3d-24cd4b1582ad",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "55963cf8-68a4-b75c-a559-32803630faea",
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
									"55963cf8-68a4-b75c-a559-32803630faea",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "d13c4238-e24e-1940-bfac-774e5542ac32",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 323.3,
				name = "[LPDU PLD] MT Sheltron/Intervention OT",
				timeRange = true,
				timelineIndex = 67,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "177af612-fd0e-8269-88a7-0da0da044a9a",
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
									"366ce092-e244-bc26-82b5-29ed9c59bbdb",
									true,
								},
								
								{
									"2e23023e-4b57-9f19-b57c-88474549fd10",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Hotbar_ReleaseIronWill",
							uuid = "961377a3-b67e-27f2-98f7-d63c3ccb45e3",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "366ce092-e244-bc26-82b5-29ed9c59bbdb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "2e23023e-4b57-9f19-b57c-88474549fd10",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 323.3,
				name = "[LPDU PLD] OT Stance OFF",
				timeRange = true,
				timelineIndex = 67,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "c62ec446-434d-3f6e-b3a1-7fcc9e8914ed",
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
									"4ca507e4-74af-45e8-befb-331a78a01279",
									true,
								},
								
								{
									"bd978d88-e60b-c325-bb3e-191217595508",
									true,
								},
								
								{
									"33ff329a-50ee-a16b-969f-113301fc0a21",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Guardian",
							uuid = "1d0f8a97-7e08-36d3-a6d1-b96e4ca4675e",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "4ca507e4-74af-45e8-befb-331a78a01279",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "bd978d88-e60b-c325-bb3e-191217595508",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 2612,
							name = "Nael Still Alive",
							uuid = "33ff329a-50ee-a16b-969f-113301fc0a21",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 323.3,
				name = "[LPDU PLD] MT Guardian",
				timeRange = true,
				timelineIndex = 67,
				timerEndOffset = 18,
				timerStartOffset = 15,
				uuid = "97fc088b-7962-e8f4-954c-c2b3a8bb3a99",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "82ac5957-7341-6597-8f68-ca275197a617",
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
									"90e5c566-efdc-ac87-8bcd-7824a39fc622",
									true,
								},
								
								{
									"20c87890-32c3-91e2-95b0-4fb0b101f233",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Equilibrium",
							uuid = "c3c51496-1edb-5c33-9fbc-599811376f75",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "90e5c566-efdc-ac87-8bcd-7824a39fc622",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "20c87890-32c3-91e2-95b0-4fb0b101f233",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 323.3,
				name = "[LPDU WAR] OT Equilibrium Self",
				timeRange = true,
				timelineIndex = 67,
				timerEndOffset = -13,
				timerStartOffset = -16,
				uuid = "6f3aed5f-09df-2a9c-82b0-b55ff58e2883",
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
									"5d1fbbf7-b7f6-0eed-803a-e9cba831922e",
									true,
								},
								
								{
									"ba9ee209-726c-8ae8-a43f-1e0901167787",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Hotbar_Defiance",
							uuid = "a9a5b6c5-bc47-fd87-9471-6c175c9a0afc",
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
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "5d1fbbf7-b7f6-0eed-803a-e9cba831922e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "ba9ee209-726c-8ae8-a43f-1e0901167787",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 323.3,
				name = "[LPDU WAR] MT Stance ON",
				timeRange = true,
				timelineIndex = 67,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "7f43413e-e779-dd17-b3ce-64aa9a4fa5f0",
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
									"c8367041-20eb-608d-bd75-da4b3b476a7e",
									true,
								},
								
								{
									"7f073965-48f7-94c7-963d-9617d8b47e8b",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Bloodwhetting",
							uuid = "a9466aba-d03d-5608-81fd-fab1ff5f4b80",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "c8367041-20eb-608d-bd75-da4b3b476a7e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "7f073965-48f7-94c7-963d-9617d8b47e8b",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 323.3,
				name = "[LPDU WAR] OT Raw Intuition Self",
				timeRange = true,
				timelineIndex = 67,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "85a3fa8c-cbc5-51e1-b21a-972234ca2991",
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
									"6bcc6600-7f97-6eb6-946a-df34043dd338",
									true,
								},
								
								{
									"362891e5-d1f8-bb82-8a27-3ab7b2b6f7e5",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Hotbar_ReleaseDefiance",
							uuid = "27e7bf80-7ed2-4ab1-ade8-1faec14e5369",
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
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "6bcc6600-7f97-6eb6-946a-df34043dd338",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "362891e5-d1f8-bb82-8a27-3ab7b2b6f7e5",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 323.3,
				name = "[LPDU WAR] OT Stance OFF",
				timeRange = true,
				timelineIndex = 67,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "854225c7-02a8-b367-b10e-d41eda27a1b7",
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
									"039b60cc-8d70-4407-b0d0-93ec245ad357",
									true,
								},
								
								{
									"fe4187d1-9341-d446-a899-66a9644bc772",
									true,
								},
								
								{
									"108a929e-686d-818a-8b14-5f80de66f788",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Damnation",
							uuid = "c758893f-42a7-2986-8c0c-d4e8b72e4dbd",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "039b60cc-8d70-4407-b0d0-93ec245ad357",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "fe4187d1-9341-d446-a899-66a9644bc772",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 2612,
							name = "Nael Still Alive",
							uuid = "108a929e-686d-818a-8b14-5f80de66f788",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 323.3,
				name = "[LPDU WAR] MT Damnation",
				timeRange = true,
				timelineIndex = 67,
				timerEndOffset = 18,
				timerStartOffset = 15,
				uuid = "ee36bdee-e301-1ffc-aec2-ae974860c187",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "ee18ff2e-2a89-1099-abac-c56c82050960",
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
									"bc38b264-9684-ce17-a882-acdc513e109c",
									true,
								},
								
								{
									"1fc89552-e033-09c9-87e9-ef449df2e39f",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Hotbar_Grit",
							uuid = "a9d78e44-dab3-6900-ad72-b00ff954b52c",
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
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "bc38b264-9684-ce17-a882-acdc513e109c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "1fc89552-e033-09c9-87e9-ef449df2e39f",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 323.3,
				name = "[LPDU DRK] MT Stance ON",
				timeRange = true,
				timelineIndex = 67,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "2e8530d3-bcc6-9da0-b5a4-d723f747b81a",
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
									"58f771a6-8582-a955-ac0f-82f420c21e37",
									true,
								},
								
								{
									"1fdb5efb-d8a8-7d52-97c5-382be9a25a3d",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf",
							uuid = "cbf26f35-56ef-0d46-b228-7c61b2e4fd50",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "58f771a6-8582-a955-ac0f-82f420c21e37",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "1fdb5efb-d8a8-7d52-97c5-382be9a25a3d",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 323.3,
				name = "[LPDU DRK] OT TBN Self",
				timeRange = true,
				timelineIndex = 67,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "70008dab-eaed-360e-ad9d-690cc8d42187",
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
									"c7aba7a3-173d-58ec-a99c-adac25a9c40b",
									true,
								},
								
								{
									"f405701e-815b-c23d-836e-156475223d21",
									true,
								},
								
								{
									"6e87da4f-f727-ccb5-aed9-7103e1d53794",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightMouse",
							targetType = "Detection Target",
							uuid = "e47113af-9982-b2a2-ad91-4dfa0cbf9c9c",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "c7aba7a3-173d-58ec-a99c-adac25a9c40b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "f405701e-815b-c23d-836e-156475223d21",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "95a815f9-d158-33e6-be9a-7705d6290558",
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
									"95a815f9-d158-33e6-be9a-7705d6290558",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "6e87da4f-f727-ccb5-aed9-7103e1d53794",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 323.3,
				name = "[LPDU DRK] MT TBN OT",
				timeRange = true,
				timelineIndex = 67,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "6d1fe2e6-1b72-dd2b-a8ce-cf4d88a76045",
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
									"f1351409-fa29-5d50-937f-976879dbfd99",
									true,
								},
								
								{
									"d7898e0d-9fa4-6838-a6e4-eee0515ec33b",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Hotbar_ReleaseGrit",
							uuid = "a8450d53-dc74-e46f-8c8c-1a7d2b0be9c6",
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
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "f1351409-fa29-5d50-937f-976879dbfd99",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "d7898e0d-9fa4-6838-a6e4-eee0515ec33b",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 323.3,
				name = "[LPDU DRK] OT Stance OFF",
				timeRange = true,
				timelineIndex = 67,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "f60e75b3-cc16-ada8-a023-ea04627c909d",
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
									"3280be84-38ca-7ba0-88a6-b08d3e5c6342",
									true,
								},
								
								{
									"f1b66461-83ac-7ecb-be0d-ea43d50d125d",
									true,
								},
								
								{
									"017877e9-a24d-e163-9e38-951300f98a6a",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_ShadowedVigil",
							uuid = "044a300c-2c16-2451-ac1d-e38b4ea8b9d3",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "3280be84-38ca-7ba0-88a6-b08d3e5c6342",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "f1b66461-83ac-7ecb-be0d-ea43d50d125d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 2612,
							name = "Nael Still Alive",
							uuid = "017877e9-a24d-e163-9e38-951300f98a6a",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 323.3,
				name = "[LPDU DRK] MT ShadowedVigil",
				timeRange = true,
				timelineIndex = 67,
				timerEndOffset = 18,
				timerStartOffset = 15,
				uuid = "9b927a20-13ec-606e-822c-139030d099b1",
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
				name = "Shared",
				uuid = "d091eb99-d440-d06a-b6d7-42d75e2932d2",
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
									"5e4328ac-dbb4-280f-9f70-e95f2e39bb83",
									true,
								},
								
								{
									"be148d7c-34ac-adfb-a0f3-22a19fd35ca0",
									true,
								},
								
								{
									"4e8355a3-faa9-9e60-bca6-c463c2b68b77",
									true,
								},
								
								{
									"a866a711-aa77-5c1e-b105-72c6b114268f",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "366e8840-3780-fcf1-972c-f88038bb306c",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "5e4328ac-dbb4-280f-9f70-e95f2e39bb83",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "be148d7c-34ac-adfb-a0f3-22a19fd35ca0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 2612,
							name = "Nael Still Alive",
							uuid = "4e8355a3-faa9-9e60-bca6-c463c2b68b77",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 5,
							name = "Reprisal range <=5y",
							partyTargetType = "Detection Target",
							uuid = "fad76b37-86d2-9aba-a843-b61fc54d8ba9",
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
									"fad76b37-86d2-9aba-a843-b61fc54d8ba9",
									true,
								},
							},
							filterTargetType = "Enemy",
							name = "Enemy in Reprisal range",
							uuid = "a866a711-aa77-5c1e-b105-72c6b114268f",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 349.7,
				name = "[LPDU Tank] OT Reprisal",
				timeRange = true,
				timelineIndex = 77,
				timerEndOffset = -0.5,
				timerStartOffset = -3.5,
				uuid = "5bd4ea92-ce61-a7f5-bdf7-d41a7b2a5720",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker",
				uuid = "105bdd35-1589-5b07-851c-8b9624485064",
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
									"baa01310-a075-16fe-a61e-16e9f0f12c24",
									true,
								},
								
								{
									"06396bd0-64a3-fea0-ae45-c50718882ac6",
									true,
								},
								
								{
									"6363649d-871c-2868-b9ca-e51656c0f7c3",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "6b662f1c-23c1-932a-83ad-0a5447fcf8e1",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "baa01310-a075-16fe-a61e-16e9f0f12c24",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "06396bd0-64a3-fea0-ae45-c50718882ac6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 2612,
							name = "Nael Still Alive",
							uuid = "6363649d-871c-2868-b9ca-e51656c0f7c3",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 349.7,
				name = "[LPDU Tank] MT HoS Self",
				timeRange = true,
				timelineIndex = 77,
				timerEndOffset = 0.5,
				timerStartOffset = -2.5,
				uuid = "f50530de-76d7-168e-a1c1-48aa6950bed4",
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
									"694cf306-a8be-ed02-a38c-d3e73bf5537c",
									true,
								},
								
								{
									"d881f9de-092d-3976-9048-060517eb28a1",
									true,
								},
								
								{
									"8c767e54-8864-771e-808d-2ee32de7329b",
									true,
								},
								
								{
									"a5c07e44-7ae9-8181-9ba3-ef6d789aed4e",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumMouse",
							targetType = "Detection Target",
							uuid = "320790c1-c4bd-f4ef-80d1-e53d6de61278",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "694cf306-a8be-ed02-a38c-d3e73bf5537c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "d881f9de-092d-3976-9048-060517eb28a1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 2612,
							name = "Nael Still Alive",
							uuid = "8c767e54-8864-771e-808d-2ee32de7329b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "425a608d-d0d3-8796-abaa-c8b3edc8f128",
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
									"425a608d-d0d3-8796-abaa-c8b3edc8f128",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "a5c07e44-7ae9-8181-9ba3-ef6d789aed4e",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 349.7,
				name = "[LPDU Tank] OT HoS OT",
				timeRange = true,
				timelineIndex = 77,
				timerEndOffset = 0.5999999046326,
				timerStartOffset = -2.4000000953674,
				uuid = "24d2c132-c5fa-c2ac-8793-7a56968cd3a7",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "c63298d9-1bdc-9938-a0f7-fbe3fa4a6756",
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
									"c2554206-2c69-25c9-a06c-e21cf4ce8d26",
									true,
								},
								
								{
									"9131532a-2f12-3195-abbb-523d8be7c4ec",
									true,
								},
								
								{
									"7971a69f-2237-4152-a438-f858b4a79a99",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HolySheltron",
							uuid = "8d707b18-db4a-d921-bce5-e64b5e037e32",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "c2554206-2c69-25c9-a06c-e21cf4ce8d26",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "9131532a-2f12-3195-abbb-523d8be7c4ec",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 2612,
							name = "Nael Still Alive",
							uuid = "7971a69f-2237-4152-a438-f858b4a79a99",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 349.7,
				name = "[LPDU PLD] MT Sheltron/Intervention Self",
				timeRange = true,
				timelineIndex = 77,
				timerEndOffset = 0.5,
				timerStartOffset = -2.5,
				uuid = "51e9e2e3-df3a-2e1e-a346-a5591b396371",
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
									"9dc10649-f20a-8557-9a3a-f9821c846841",
									true,
								},
								
								{
									"b0bd10e0-971b-98ca-9e13-b6dfa80bc5d4",
									true,
								},
								
								{
									"3c297e2d-3ecf-0f2e-b190-b1e84177f44d",
									true,
								},
								
								{
									"4dada083-781c-6f95-9cfd-8a3e76842d1a",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_InterventionMouse",
							targetType = "Detection Target",
							uuid = "2f29a234-2920-8130-9947-1aab78d5845f",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "9dc10649-f20a-8557-9a3a-f9821c846841",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "b0bd10e0-971b-98ca-9e13-b6dfa80bc5d4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 2612,
							name = "Nael Still Alive",
							uuid = "3c297e2d-3ecf-0f2e-b190-b1e84177f44d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "45b30405-e248-a00f-822b-c7131eeb2381",
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
									"45b30405-e248-a00f-822b-c7131eeb2381",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "4dada083-781c-6f95-9cfd-8a3e76842d1a",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 349.7,
				name = "[LPDU PLD] OT Sheltron/Intervention OT",
				timeRange = true,
				timelineIndex = 77,
				timerEndOffset = 0.5999999046326,
				timerStartOffset = -2.4000000953674,
				uuid = "4a0ad54c-26e2-6ab5-87fc-8798b24149e8",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "32b49b6e-d26b-d650-9ad8-59ee559cbc87",
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
									"016d249d-5d2b-0a90-9bc0-bde3e85786db",
									true,
								},
								
								{
									"ebd36b3e-4179-a344-9f0a-381689e25e85",
									true,
								},
								
								{
									"7a2e206c-1269-d128-b211-f196defe2136",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Bloodwhetting",
							uuid = "d5189092-6e55-990c-8cfe-a817be3d146e",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "016d249d-5d2b-0a90-9bc0-bde3e85786db",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "ebd36b3e-4179-a344-9f0a-381689e25e85",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 2612,
							name = "Nael Still Alive",
							uuid = "7a2e206c-1269-d128-b211-f196defe2136",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 349.7,
				name = "[LPDU WAR] MT Raw Intuition Self",
				timeRange = true,
				timelineIndex = 77,
				timerEndOffset = 0.5,
				timerStartOffset = -2.5,
				uuid = "2d4c80bb-10bd-001a-8919-9a20f91588f1",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "ab58044a-c4d5-a8ff-becd-a10141bb165e",
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
									"f53f6ef4-bb02-b29c-afad-8f04c05c4fbc",
									true,
								},
								
								{
									"1a30bdde-f87c-e720-8be4-eee859c3c4ae",
									true,
								},
								
								{
									"d0787801-7167-5ce6-81cd-5d7bee27525b",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf",
							uuid = "c0834c5e-cb1f-2f64-af23-53eadd4f7f9f",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "f53f6ef4-bb02-b29c-afad-8f04c05c4fbc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "1a30bdde-f87c-e720-8be4-eee859c3c4ae",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 2612,
							name = "Nael Still Alive",
							uuid = "d0787801-7167-5ce6-81cd-5d7bee27525b",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 349.7,
				name = "[LPDU DRK] MT TBN Self",
				timeRange = true,
				timelineIndex = 77,
				timerEndOffset = 0.5,
				timerStartOffset = -2.5,
				uuid = "da88d188-7270-ea7e-badc-a4641984d96d",
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
									"f7f68746-0f70-781a-abc2-0450382bd98b",
									true,
								},
								
								{
									"486fc67b-9c62-ea00-85f1-599fe2132d67",
									true,
								},
								
								{
									"63ecd541-cbfa-4817-b3f1-8357dba9a9e0",
									true,
								},
								
								{
									"31ad2b75-31f2-c957-9072-9e850a383450",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightMouse",
							targetType = "Detection Target",
							uuid = "35f42e3c-9534-e248-9c43-81c0c786ce15",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "f7f68746-0f70-781a-abc2-0450382bd98b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "486fc67b-9c62-ea00-85f1-599fe2132d67",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 2612,
							name = "Nael Still Alive",
							uuid = "63ecd541-cbfa-4817-b3f1-8357dba9a9e0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "439c0f4c-761e-9763-8820-f38853a381d2",
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
									"439c0f4c-761e-9763-8820-f38853a381d2",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "31ad2b75-31f2-c957-9072-9e850a383450",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 349.7,
				name = "[LPDU DRK] OT TBN OT",
				timeRange = true,
				timelineIndex = 77,
				timerEndOffset = 0.5999999046326,
				timerStartOffset = -2.4000000953674,
				uuid = "939571eb-545a-bb26-bcbc-75844809060d",
				version = 2,
			},
		},
	},
	[80] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared",
				uuid = "85b7096f-dddd-b75e-8485-63267443f8de",
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
									"e91d90da-08f7-f91f-86dc-f95d7301be47",
									true,
								},
								
								{
									"a4536387-99f5-a47b-aee3-b8659e1ee941",
									true,
								},
								
								{
									"ed0a8a37-6127-d581-af4b-6fe2f0f16fcd",
									true,
								},
								
								{
									"2d88c47d-f877-a59a-bd9b-5c06ad54d323",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "862d2cd3-2170-8473-9247-dd15b816a121",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "e91d90da-08f7-f91f-86dc-f95d7301be47",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "a4536387-99f5-a47b-aee3-b8659e1ee941",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 2612,
							name = "Nael Still Alive",
							uuid = "ed0a8a37-6127-d581-af4b-6fe2f0f16fcd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 5,
							name = "Reprisal range <=5y",
							partyTargetType = "Detection Target",
							uuid = "11b3120b-a715-f88b-805a-299111fd39b8",
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
									"11b3120b-a715-f88b-805a-299111fd39b8",
									true,
								},
							},
							filterTargetType = "Enemy",
							name = "Enemy in Reprisal range",
							uuid = "2d88c47d-f877-a59a-bd9b-5c06ad54d323",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 388.7,
				name = "[LPDU Tank] MT Reprisal",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = -6,
				timerStartOffset = -9,
				uuid = "3a8dc4c0-0ea8-b48a-88d8-3981b7f8ece1",
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
									"d2dd0834-ad5e-63db-ae18-02cd6c005b39",
									true,
								},
								
								{
									"b0035969-a288-d54c-8066-50aceccf8d0d",
									true,
								},
								
								{
									"f5cd2d48-4d6b-1b60-859e-39e98040dcfa",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "5ed80058-3378-32b7-9e75-4af3c7006899",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "d2dd0834-ad5e-63db-ae18-02cd6c005b39",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "b0035969-a288-d54c-8066-50aceccf8d0d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 2612,
							name = "Nael Still Alive",
							uuid = "f5cd2d48-4d6b-1b60-859e-39e98040dcfa",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 388.7,
				name = "[LPDU Tank] OT Voke",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = -0.5,
				timerStartOffset = -3.5,
				uuid = "013dadb9-81f3-6a15-b324-c0615540bd2d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker",
				uuid = "086fac4d-ffb4-60bf-bfb2-d9eff5ca05a0",
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
									"31b90c61-d815-9ed2-9060-e72fbd047f6d",
									true,
								},
								
								{
									"d5e5b988-601d-86dd-b552-b5ea437d880a",
									true,
								},
								
								{
									"07ad327f-e99d-3a72-8e4b-d8b3bf81d4db",
									true,
								},
								
								{
									"df59df34-7c26-25ce-8163-0d5cdb5655e4",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumMouse",
							targetType = "Detection Target",
							uuid = "ce23bd23-4064-3615-8925-32abe09130aa",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "31b90c61-d815-9ed2-9060-e72fbd047f6d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "d5e5b988-601d-86dd-b552-b5ea437d880a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 2612,
							name = "Nael Still Alive",
							uuid = "07ad327f-e99d-3a72-8e4b-d8b3bf81d4db",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "7afa4864-e377-1dc6-8da6-4d7726ef54a5",
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
									"7afa4864-e377-1dc6-8da6-4d7726ef54a5",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "df59df34-7c26-25ce-8163-0d5cdb5655e4",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 388.7,
				name = "[LPDU Tank] OT HoS OT",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "efc36e16-82a9-ec80-b414-c412fa5d2369",
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
									"c5af45f8-fbde-05d8-9280-e210957d3f5d",
									true,
								},
								
								{
									"88d36c08-ffda-212e-a6da-d5341d4362ec",
									true,
								},
								
								{
									"f6682a5c-fada-1ffd-9f46-256eddda7cd7",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "e3deecdb-b6fe-f99f-98d6-77265bfcead4",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "c5af45f8-fbde-05d8-9280-e210957d3f5d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "88d36c08-ffda-212e-a6da-d5341d4362ec",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 2612,
							name = "Nael Still Alive",
							uuid = "f6682a5c-fada-1ffd-9f46-256eddda7cd7",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 388.7,
				name = "[LPDU Tank] MT HoS Self",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "d8c54238-f25d-7518-b422-595440bce36c",
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
									"d7bc22df-7a86-e66b-8179-966f00372a3f",
									true,
								},
								
								{
									"11653bdd-beb3-5dae-8788-72a51c8c73e5",
									true,
								},
								
								{
									"d93b4244-a224-1b00-a9d2-47657006eda0",
									true,
								},
								
								{
									"470899d6-a514-f23a-8dec-f5f936451e0f",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_ReleaseRoyalGuard",
							uuid = "f74c29e4-646c-50b0-9f93-52eb92c5afc2",
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
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "d7bc22df-7a86-e66b-8179-966f00372a3f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "11653bdd-beb3-5dae-8788-72a51c8c73e5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 1833,
							category = "Self",
							uuid = "d93b4244-a224-1b00-a9d2-47657006eda0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 2612,
							name = "Nael Still Alive",
							uuid = "470899d6-a514-f23a-8dec-f5f936451e0f",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 388.7,
				name = "[LPDU Tank] OT Stance OFF",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = 3,
				uuid = "766941b8-f325-f4de-af8f-ebdca88f1214",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "ed1439dc-710a-db30-8d78-68967b207618",
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
									"8b27c1b4-460b-b618-a6cf-2c3b145fae6a",
									true,
								},
								
								{
									"582ba004-5efd-a6c7-b528-d854e153515d",
									true,
								},
								
								{
									"7c689725-1398-2101-acea-35c65a6efdf0",
									true,
								},
								
								{
									"dfffd84c-417f-5389-bd37-c6ae8d8bffff",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_InterventionMouse",
							targetType = "Detection Target",
							uuid = "4fc9733d-814d-055d-a3d0-185b09d4b589",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "8b27c1b4-460b-b618-a6cf-2c3b145fae6a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "582ba004-5efd-a6c7-b528-d854e153515d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 2612,
							name = "Nael Still Alive",
							uuid = "7c689725-1398-2101-acea-35c65a6efdf0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "514d5629-569f-262b-ac1b-4888228d7517",
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
									"514d5629-569f-262b-ac1b-4888228d7517",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "dfffd84c-417f-5389-bd37-c6ae8d8bffff",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 388.7,
				name = "[LPDU PLD] OT Sheltron/Intervention OT",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "8e235e76-292d-cf4a-9bb2-53dfa7d36f89",
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
									"72bf292d-c015-226f-b024-669bd7579d35",
									true,
								},
								
								{
									"4c4f668f-3104-6b9b-a5e1-2f65a7a988b9",
									true,
								},
								
								{
									"d908f6af-4a8d-6659-a105-5a95fa7c2565",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HolySheltron",
							uuid = "cd995259-0489-19d4-9d31-de0466a0c564",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "72bf292d-c015-226f-b024-669bd7579d35",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "4c4f668f-3104-6b9b-a5e1-2f65a7a988b9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 2612,
							name = "Nael Still Alive",
							uuid = "d908f6af-4a8d-6659-a105-5a95fa7c2565",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 388.7,
				name = "[LPDU PLD] MT Sheltron/Intervention Self",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "99933dd4-346c-12f4-9b94-72a93451b19d",
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
									"1949f1e8-3ed1-56b9-8796-fe215ef1f231",
									true,
								},
								
								{
									"f4d7d749-3152-b1e7-a935-d0b19ae2ee3b",
									true,
								},
								
								{
									"9b390060-bc4b-1c6f-a47c-db33ba1e138a",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Hotbar_ReleaseIronWill",
							uuid = "2e5816a0-fa18-1a1d-9f64-93a59e9e61a5",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "1949f1e8-3ed1-56b9-8796-fe215ef1f231",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "f4d7d749-3152-b1e7-a935-d0b19ae2ee3b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 2612,
							name = "Nael Still Alive",
							uuid = "9b390060-bc4b-1c6f-a47c-db33ba1e138a",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 388.7,
				name = "[LPDU PLD] OT Stance OFF",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = 3,
				uuid = "81ab6f8f-0579-eb93-aa80-7aece70b720c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "3b7089a0-7006-832e-b4e7-341c01259749",
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
									"d8ff3d63-ae63-e697-90f7-7e75ba0cbf21",
									true,
								},
								
								{
									"6f157dff-4b86-e46c-96ff-795edd7a2c42",
									true,
								},
								
								{
									"89c0e7cd-502e-1ad8-940f-23ceaef7f952",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Bloodwhetting",
							uuid = "287a7723-7fe7-8854-b295-e37c4eedaab9",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "d8ff3d63-ae63-e697-90f7-7e75ba0cbf21",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "6f157dff-4b86-e46c-96ff-795edd7a2c42",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 2612,
							name = "Nael Still Alive",
							uuid = "89c0e7cd-502e-1ad8-940f-23ceaef7f952",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 388.7,
				name = "[LPDU WAR] MT Raw Intuition Self",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "0c4f2ea8-faef-a43e-ac33-9cd73a8e0044",
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
									"b3de5ce6-2504-f157-8504-b0a64100ead2",
									true,
								},
								
								{
									"7fa81996-e75d-6164-95f1-9ec18d6e458a",
									true,
								},
								
								{
									"ffc0e7d2-72aa-c3db-b490-1eec78edf7f9",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Hotbar_ReleaseDefiance",
							uuid = "b9e01bb8-09a3-dbba-a33a-6229fcc27564",
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
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "b3de5ce6-2504-f157-8504-b0a64100ead2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "7fa81996-e75d-6164-95f1-9ec18d6e458a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 2612,
							name = "Nael Still Alive",
							uuid = "ffc0e7d2-72aa-c3db-b490-1eec78edf7f9",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 388.7,
				name = "[LPDU WAR] OT Stance OFF",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = 3,
				uuid = "282c9e50-e01f-f4c5-877d-3751d1e168b4",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "e6376265-1113-6c51-9abf-b54e5a04e2e5",
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
									"6a3d7efd-fef1-cfb7-a3ae-82f3f6389335",
									true,
								},
								
								{
									"b482c38d-fa0b-9863-881e-e5c45fbd92a4",
									true,
								},
								
								{
									"ccde4f78-e6ea-1a01-8932-c36e920dd96e",
									true,
								},
								
								{
									"40a82864-b61b-7f4c-a76a-a558b921636c",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightMouse",
							targetType = "Detection Target",
							uuid = "0c054be7-d12a-6161-96a2-78bf047e654e",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "6a3d7efd-fef1-cfb7-a3ae-82f3f6389335",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "b482c38d-fa0b-9863-881e-e5c45fbd92a4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 2612,
							name = "Nael Still Alive",
							uuid = "ccde4f78-e6ea-1a01-8932-c36e920dd96e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "e894028c-dfcf-4d04-8798-007e7d2decb3",
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
									"e894028c-dfcf-4d04-8798-007e7d2decb3",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "40a82864-b61b-7f4c-a76a-a558b921636c",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 388.7,
				name = "[LPDU DRK] OT TBN OT",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "656e3bd1-cb24-e6e5-8cb8-e964b64ec408",
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
									"c2a5cf3a-166e-3b52-a675-1837e945444c",
									true,
								},
								
								{
									"d13d44f5-b2e2-877b-a3a6-b94f4492f803",
									true,
								},
								
								{
									"21ef3a29-1b74-6c9f-a55a-a3d7dcca25ae",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf",
							uuid = "1210e9ab-52b7-daac-ae24-7311a1dd445a",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "c2a5cf3a-166e-3b52-a675-1837e945444c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "d13d44f5-b2e2-877b-a3a6-b94f4492f803",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 2612,
							name = "Nael Still Alive",
							uuid = "21ef3a29-1b74-6c9f-a55a-a3d7dcca25ae",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 388.7,
				name = "[LPDU DRK] MT TBN Self",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "a613c1ce-19f0-f69a-b7b0-d711d49ad88a",
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
									"e90f8f1b-8bc9-a580-85ae-ccf088a8e775",
									true,
								},
								
								{
									"a75e36aa-a120-a969-9809-956c2637edf4",
									true,
								},
								
								{
									"cb72d569-f8fa-b59e-b9a0-96e5e405035c",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Hotbar_ReleaseGrit",
							uuid = "60fe17a9-3508-3581-bb8a-d13ac57199fa",
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
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "e90f8f1b-8bc9-a580-85ae-ccf088a8e775",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "a75e36aa-a120-a969-9809-956c2637edf4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 2612,
							name = "Nael Still Alive",
							uuid = "cb72d569-f8fa-b59e-b9a0-96e5e405035c",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 388.7,
				name = "[LPDU DRK] OT Stance OFF",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = 3,
				uuid = "126955ad-44cf-0fa2-b4de-644eae05dbd4",
				version = 2,
			},
		},
	},
	[86] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared",
				uuid = "a37c3c7f-f855-b369-a0df-4bc352e6f4e9",
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
									"d6c5a73c-8129-96fa-b463-440cf4bce431",
									true,
								},
								
								{
									"14a17a32-7743-18ba-95e8-d9af974e7330",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Rampart",
							uuid = "e5983970-ce35-ae28-97f0-b5f3187dea02",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "d6c5a73c-8129-96fa-b463-440cf4bce431",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "14a17a32-7743-18ba-95e8-d9af974e7330",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 508,
				name = "[LPDU Tank] MT Rampart Trio",
				timeRange = true,
				timelineIndex = 86,
				timerEndOffset = 1,
				timerStartOffset = -2,
				uuid = "357b3558-8ef1-25c0-be32-251701ad3f2e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker",
				uuid = "fca5f91d-938a-dc73-9b27-19fcf157f8c2",
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
									"e8bb2d2d-dce4-5ce7-aa0c-46c02a4886af",
									true,
								},
								
								{
									"68021565-ad98-6a6d-84e0-dd4cac81ec17",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							uuid = "cd6c4e81-44aa-c9ca-beee-11da1a2d63ef",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "e8bb2d2d-dce4-5ce7-aa0c-46c02a4886af",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "68021565-ad98-6a6d-84e0-dd4cac81ec17",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 508,
				name = "[LPDU Tank] MT Camo Trio",
				timeRange = true,
				timelineIndex = 86,
				timerEndOffset = 2,
				timerStartOffset = -1,
				uuid = "368acd99-622b-abfb-9d4b-d993b1814415",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "997ead35-1f3b-c0d5-812f-3c6618642848",
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
									"97bed093-69b5-83a8-abaf-04a0fc32d6d2",
									true,
								},
								
								{
									"923d570d-983f-3e01-926a-174e10a3fdad",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Bulwark",
							uuid = "45bd067a-5e19-0b59-a25f-8d6a9a26f0ef",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "97bed093-69b5-83a8-abaf-04a0fc32d6d2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "923d570d-983f-3e01-926a-174e10a3fdad",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 508,
				name = "[LPDU PLD] MT Bulwark Trio",
				timeRange = true,
				timelineIndex = 86,
				timerEndOffset = 2,
				timerStartOffset = -1,
				uuid = "f6d96f49-9234-6932-a065-372346cabc4a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "fde062c1-e501-2ad5-8322-ed5f7964f454",
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
									"c9695748-c125-3f39-a443-134052f24925",
									true,
								},
								
								{
									"4a1bf97c-b68d-cf4d-82d5-8ee5bbe2b1b7",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_ThrillOfBattle",
							uuid = "d26209b9-4593-5dcd-a0ee-000978a87655",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "c9695748-c125-3f39-a443-134052f24925",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "4a1bf97c-b68d-cf4d-82d5-8ee5bbe2b1b7",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 508,
				name = "[LPDU WAR] MT ThrillOfBattle Trio",
				timeRange = true,
				timelineIndex = 86,
				timerEndOffset = 2,
				timerStartOffset = -1,
				uuid = "36332077-3dea-e733-87f9-826e63e02477",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "492233c4-b996-5969-bcb9-182a73d9ade4",
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
									"f272f4d9-6d3d-0c85-a737-08cc973552b2",
									true,
								},
								
								{
									"f2177bd4-2cac-3894-90ce-5f55bb001603",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_DarkMind",
							uuid = "ba167be8-9394-c44b-8ff7-00a65887475b",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "f272f4d9-6d3d-0c85-a737-08cc973552b2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "f2177bd4-2cac-3894-90ce-5f55bb001603",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 508,
				name = "[LPDU DRK] MT DarkMind Trio",
				timeRange = true,
				timelineIndex = 86,
				timerEndOffset = 2,
				timerStartOffset = -1,
				uuid = "23579285-2323-ac01-9838-b62df5aec9cd",
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
				name = "Gunbreaker",
				uuid = "ee268b42-e288-d48d-8585-304b2480264d",
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
									"d44d3a7b-0eab-0d6c-acf0-cd05ccea7695",
									true,
								},
								
								{
									"e070ad84-fcca-21ca-83da-3859708b07f9",
									true,
								},
								
								{
									"38f4fecd-ae47-5abf-94ee-c9803b18568f",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_ReleaseRoyalGuard",
							uuid = "cba65632-c6bc-8407-a115-d226e067e274",
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
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "d44d3a7b-0eab-0d6c-acf0-cd05ccea7695",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "e070ad84-fcca-21ca-83da-3859708b07f9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 1833,
							category = "Self",
							uuid = "38f4fecd-ae47-5abf-94ee-c9803b18568f",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 511,
				name = "[LPDU Tank] OT Stance OFF",
				timeRange = true,
				timelineIndex = 87,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "f27554ad-abf9-0beb-8d5f-25f82c7c8fde",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared",
				uuid = "d11f0df8-4f9e-90fe-b5a6-f70634060124",
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
									"f96b0130-c61d-eba4-bb67-b9e284591511",
									true,
								},
								
								{
									"8636cd88-1117-0c66-b5b3-a052c568d424",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "ccb7b4c6-f8dc-a73c-b6d0-f5d3b14400c2",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "f96b0130-c61d-eba4-bb67-b9e284591511",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "8636cd88-1117-0c66-b5b3-a052c568d424",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 511,
				name = "[LPDU Tank] MT Provoke",
				timeRange = true,
				timelineIndex = 87,
				timerEndOffset = 3,
				uuid = "f43a32d2-c34b-bf90-8fba-5af345b3ed0b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "bb629f6e-1255-667c-a80d-84da7ad0c1eb",
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
									"af40a448-e068-b689-9b09-ca6d38a7587b",
									true,
								},
								
								{
									"aff6a5fa-d520-350e-b7d5-33145c814d08",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Hotbar_ReleaseIronWill",
							uuid = "18fbc967-f68f-0a4d-a8e9-f3f4d427221b",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "af40a448-e068-b689-9b09-ca6d38a7587b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "aff6a5fa-d520-350e-b7d5-33145c814d08",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 511,
				name = "[LPDU PLD] OT Stance OFF",
				timeRange = true,
				timelineIndex = 87,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "f22aa525-2bbc-700a-a3e6-3447c94305b0",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "b601fce9-dbfd-245f-9afd-35363cbf8627",
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
									"d33e2588-a232-0d62-9f52-e7523a91bdd4",
									true,
								},
								
								{
									"8dffeee0-b7c0-4d81-b7a9-f991a293267f",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Hotbar_ReleaseDefiance",
							uuid = "b0228a27-bad0-8c20-b8da-47fb13fbc194",
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
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "d33e2588-a232-0d62-9f52-e7523a91bdd4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "8dffeee0-b7c0-4d81-b7a9-f991a293267f",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 511,
				name = "[LPDU WAR] OT Stance OFF",
				timeRange = true,
				timelineIndex = 87,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "1cbf70f1-56ce-eb7a-8834-30e4f60e0976",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "5b8cbc5e-14af-6f44-a9a4-9388f1703927",
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
									"26e72160-545b-2a3a-b295-bd57a07eda76",
									true,
								},
								
								{
									"23812c15-b436-a3a5-ae29-fe2ec5b38c9a",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Hotbar_ReleaseGrit",
							uuid = "b08c3140-3c1a-63df-95d9-5ea2d28acca3",
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
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "26e72160-545b-2a3a-b295-bd57a07eda76",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "23812c15-b436-a3a5-ae29-fe2ec5b38c9a",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 511,
				name = "[LPDU DRK] OT Stance OFF",
				timeRange = true,
				timelineIndex = 87,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "600b0157-417a-4917-a08d-8b026e41b552",
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
				name = "Gunbreaker",
				uuid = "2378a9d9-3d33-b59c-8fd6-2eb08a6eef7a",
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
									"029f6f60-56e3-a77e-9231-2a60d61f7b37",
									true,
								},
								
								{
									"11ef4c3f-336a-3fa1-a422-48ccae91d4e1",
									true,
								},
								
								{
									"38d28f2a-b491-1a6c-bcbb-3ffe97b45c5d",
									true,
								},
								
								{
									"e9678f4c-6936-3933-97d5-bdf26e2ea6c4",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumMouse",
							targetType = "Detection Target",
							uuid = "c4d9052b-fa9b-4be8-929a-d458971d9ba4",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "029f6f60-56e3-a77e-9231-2a60d61f7b37",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "11ef4c3f-336a-3fa1-a422-48ccae91d4e1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nlocal other=AnyoneCore.Roster.entOf(slot==\"T1\" and \"T2\" or \"T1\")\nreturn other ~= nil and (other.job==21)",
							name = "With WAR Check",
							uuid = "38d28f2a-b491-1a6c-bcbb-3ffe97b45c5d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "dbcf08ef-d88f-9d55-94ba-971e0745bf7b",
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
									"dbcf08ef-d88f-9d55-94ba-971e0745bf7b",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "e9678f4c-6936-3933-97d5-bdf26e2ea6c4",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 517,
				name = "[LPDU Tank] OT HoS with WAR",
				timeRange = true,
				timelineIndex = 88,
				timerEndOffset = -2,
				timerStartOffset = -5,
				uuid = "c349c067-12a8-be6e-98e4-a5b65284b655",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "8592231a-0676-81f1-8901-139d80ca73aa",
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
									"443a5490-bb9e-cd32-ac45-5c0b547d7047",
									true,
								},
								
								{
									"0d26880d-7d3b-ab8f-a188-2b6823cf935b",
									true,
								},
								
								{
									"587859ad-1084-1436-85da-2d22e28220b7",
									true,
								},
								
								{
									"0cdfc484-2daa-a9cb-834b-9e837e40ca5f",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_InterventionMouse",
							targetType = "Detection Target",
							uuid = "882c6b94-1078-cb33-9418-c0cd1f1fe72b",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "443a5490-bb9e-cd32-ac45-5c0b547d7047",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "0d26880d-7d3b-ab8f-a188-2b6823cf935b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nlocal other=AnyoneCore.Roster.entOf(slot==\"T1\" and \"T2\" or \"T1\")\nreturn other ~= nil and (other.job==21)",
							name = "With WAR Check",
							uuid = "587859ad-1084-1436-85da-2d22e28220b7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "933d04d4-c0fb-d2a1-9585-22e2677752e7",
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
									"933d04d4-c0fb-d2a1-9585-22e2677752e7",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "0cdfc484-2daa-a9cb-834b-9e837e40ca5f",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 517,
				name = "[LPDU PLD] OT Sheltron/Intervention with WAR",
				timeRange = true,
				timelineIndex = 88,
				timerEndOffset = -2,
				timerStartOffset = -5,
				uuid = "936a396b-25ac-cde3-b784-4aaf93369748",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "4917d60b-3783-ec88-872c-159a0384b947",
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
									"ff96ce99-47ba-8462-bf18-3b9e14e8edef",
									true,
								},
								
								{
									"ffc68562-347f-0403-a994-158d8b865bec",
									true,
								},
								
								{
									"510520fb-0108-2dfc-acff-ef1bfa29a666",
									true,
								},
								
								{
									"de3d9085-6d2d-7599-a0ef-e2c3eced79e9",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightMouse",
							targetType = "Detection Target",
							uuid = "330e1bfc-9a02-9545-979c-aaa479d0eb04",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "ff96ce99-47ba-8462-bf18-3b9e14e8edef",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "ffc68562-347f-0403-a994-158d8b865bec",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nlocal other=AnyoneCore.Roster.entOf(slot==\"T1\" and \"T2\" or \"T1\")\nreturn other ~= nil and (other.job==21)",
							name = "With WAR Check",
							uuid = "510520fb-0108-2dfc-acff-ef1bfa29a666",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "b629fd79-c322-846d-99b8-a8ce3309e185",
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
									"b629fd79-c322-846d-99b8-a8ce3309e185",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "de3d9085-6d2d-7599-a0ef-e2c3eced79e9",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 517,
				name = "[LPDU DRK] OT TBN with WAR",
				timeRange = true,
				timelineIndex = 88,
				timerEndOffset = -2,
				timerStartOffset = -5,
				uuid = "343d3ad1-7846-b269-8a54-fc422e89e938",
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
				name = "Gunbreaker",
				uuid = "e7a22de3-96a6-d6d3-b85a-0d8641b656f5",
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
									"94ac05a4-6c42-58bb-bafb-c6bfad8fbfa4",
									true,
								},
								
								{
									"5b572958-44ed-dc1c-b5ad-dc7858f8881f",
									true,
								},
								
								{
									"b5de64ed-6ae2-309e-82ee-83092b2b4a96",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_RoyalGuard",
							uuid = "3bc5dbc2-9981-89e3-a65a-8d6eb607ee3f",
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
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "94ac05a4-6c42-58bb-bafb-c6bfad8fbfa4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "5b572958-44ed-dc1c-b5ad-dc7858f8881f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "b5de64ed-6ae2-309e-82ee-83092b2b4a96",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 525,
				name = "[LPDU Tank] OT Stance ON",
				timeRange = true,
				timelineIndex = 89,
				timerEndOffset = -5,
				timerStartOffset = -8,
				uuid = "444cfecb-b762-109c-a9f1-1e630b38a272",
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
									"8d2ba21b-7f50-34b0-9f84-c6ad593b1646",
									true,
								},
								
								{
									"f7e80456-fa8c-8b1b-9505-12241b306003",
									true,
								},
								
								{
									"13148db5-90ec-d705-9d3d-6c7683c84964",
									true,
								},
								
								{
									"191b0fde-ba6f-3c30-8514-829427af851c",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumMouse",
							targetType = "Detection Target",
							uuid = "bc1ebdda-b9be-ca5f-a298-203bb5119022",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "8d2ba21b-7f50-34b0-9f84-c6ad593b1646",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "f7e80456-fa8c-8b1b-9505-12241b306003",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "f82c5cb4-73b2-1bb9-bf42-ba954e882206",
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
									"f82c5cb4-73b2-1bb9-bf42-ba954e882206",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "13148db5-90ec-d705-9d3d-6c7683c84964",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nlocal other=AnyoneCore.Roster.entOf(slot==\"T1\" and \"T2\" or \"T1\")\nreturn other ~= nil and other.job ~= 21",
							name = "Other tank is not Warrior",
							uuid = "191b0fde-ba6f-3c30-8514-829427af851c",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 525,
				name = "[LPDU Tank] OT HoS OT",
				timeRange = true,
				timelineIndex = 89,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "2396ab93-3d3f-c50c-bccd-6f4ac84d20cf",
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
									"d4b74010-5793-0a9a-8947-112fbbc92d01",
									true,
								},
								
								{
									"06e99675-fb37-a96a-9360-cd782ecab237",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "433b83cf-ef90-2f77-b37c-02598de135a6",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "d4b74010-5793-0a9a-8947-112fbbc92d01",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "06e99675-fb37-a96a-9360-cd782ecab237",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 525,
				name = "[LPDU Tank] MT HoS Self",
				timeRange = true,
				timelineIndex = 89,
				timerEndOffset = -2,
				timerStartOffset = -5,
				uuid = "d89646d2-c42b-0569-a46c-fb7d3dbf9785",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "9429b783-6f96-4de9-8612-75b514c3c15d",
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
									"c5e949c6-0883-25a2-a7d9-5273ef935000",
									true,
								},
								
								{
									"36beac93-f003-64d7-a43f-056ab4dbd1e2",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Hotbar_IronWill",
							uuid = "6c6e6ed3-4d1f-c7be-8f2b-56063bb725d2",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "c5e949c6-0883-25a2-a7d9-5273ef935000",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "36beac93-f003-64d7-a43f-056ab4dbd1e2",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 525,
				name = "[LPDU PLD] OT Stance ON",
				timeRange = true,
				timelineIndex = 89,
				timerEndOffset = -5,
				timerStartOffset = -8,
				uuid = "afe3e770-cda3-1a81-8993-07fdf553a2fb",
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
									"1f30d1a9-fba2-5446-9630-2090c9bd7f01",
									true,
								},
								
								{
									"adbc08e9-4013-00ea-b14d-10e660ca32f6",
									true,
								},
								
								{
									"7b8af804-c6bc-1061-bccf-f71097ff3bce",
									true,
								},
								
								{
									"24ba5f7f-250b-ecfa-ba8a-96040d1d0bfa",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_InterventionMouse",
							targetType = "Detection Target",
							uuid = "ce56a9a2-fe8d-dbdb-a831-3596035f899c",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "1f30d1a9-fba2-5446-9630-2090c9bd7f01",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "adbc08e9-4013-00ea-b14d-10e660ca32f6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "4694ba64-6f75-2930-b578-e66c53e6754a",
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
									"4694ba64-6f75-2930-b578-e66c53e6754a",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "7b8af804-c6bc-1061-bccf-f71097ff3bce",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nlocal other=AnyoneCore.Roster.entOf(slot==\"T1\" and \"T2\" or \"T1\")\nreturn other ~= nil and other.job ~= 21",
							name = "Other tank is not Warrior",
							uuid = "24ba5f7f-250b-ecfa-ba8a-96040d1d0bfa",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 525,
				name = "[LPDU PLD] OT Sheltron/Intervention OT",
				timeRange = true,
				timelineIndex = 89,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "9d9563d5-e28a-1e78-9cdc-1a0bd2222b4e",
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
									"60c4e004-e931-9119-bf9e-3ae1cc4c88a2",
									true,
								},
								
								{
									"5e707861-7ba3-c60e-b4c7-a769b347b8b3",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HolySheltron",
							uuid = "263ba216-0378-dfd4-9606-3ae2fdd3581e",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "60c4e004-e931-9119-bf9e-3ae1cc4c88a2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "5e707861-7ba3-c60e-b4c7-a769b347b8b3",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 525,
				name = "[LPDU PLD] MT Sheltron/Intervention Self",
				timeRange = true,
				timelineIndex = 89,
				timerEndOffset = -2,
				timerStartOffset = -5,
				uuid = "57a2b155-0e61-00c5-a1a8-681b494d82b4",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "ad9b5242-2aea-0a13-9e67-d015de85e1b1",
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
									"329cac17-4ea2-e863-9007-78275394e56a",
									true,
								},
								
								{
									"6384bf7f-fc97-525c-a071-a137fd6fd7e3",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Hotbar_Defiance",
							uuid = "bcad7679-2edb-bbc0-8653-0e43ca9ff635",
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
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "329cac17-4ea2-e863-9007-78275394e56a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "6384bf7f-fc97-525c-a071-a137fd6fd7e3",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 525,
				name = "[LPDU WAR] OT Stance ON",
				timeRange = true,
				timelineIndex = 89,
				timerEndOffset = -5,
				timerStartOffset = -8,
				uuid = "23237923-6821-a5b5-95dd-68717ff5d6f0",
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
									"21dd5ae9-b8e5-1fe5-bb59-3ff1088b767b",
									true,
								},
								
								{
									"c2299a25-e925-62d4-ac65-68725b9bc515",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Bloodwhetting",
							uuid = "8f1863cf-2ad9-5ed9-b8ba-c7fa21e3738a",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "21dd5ae9-b8e5-1fe5-bb59-3ff1088b767b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "c2299a25-e925-62d4-ac65-68725b9bc515",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 525,
				name = "[LPDU WAR] MT Raw Intuition Self",
				timeRange = true,
				timelineIndex = 89,
				timerEndOffset = -2,
				timerStartOffset = -5,
				uuid = "e6dae115-ad06-cb5c-940c-6c5ee35f9aaf",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "e6459d09-a5dd-3898-8470-21673b65a2e7",
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
									"442c068e-78c8-af40-a298-0bb16bd5d586",
									true,
								},
								
								{
									"31f27c84-e1cf-e4d8-ad63-a67fbef93a5a",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Hotbar_Grit",
							uuid = "4c196fa6-b7b6-7176-ae71-d80feea2c5bc",
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
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "442c068e-78c8-af40-a298-0bb16bd5d586",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "31f27c84-e1cf-e4d8-ad63-a67fbef93a5a",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 525,
				name = "[LPDU DRK] OT Stance ON",
				timeRange = true,
				timelineIndex = 89,
				timerEndOffset = -5,
				timerStartOffset = -8,
				uuid = "ddcf327a-07ee-8dd4-95a3-3499f8b4e992",
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
									"1241f0d7-2d19-0848-a0c1-84e5c89dbb66",
									true,
								},
								
								{
									"18412ac9-ab2c-ce0d-bf32-8b7b6ead76f8",
									true,
								},
								
								{
									"af613f19-d168-c49d-a7d9-b552b2dc70b1",
									true,
								},
								
								{
									"b1881628-e766-b9d7-a447-699166af5776",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightMouse",
							targetType = "Detection Target",
							uuid = "4d9edb8c-c998-c25c-8d84-ee4bb146bc43",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "1241f0d7-2d19-0848-a0c1-84e5c89dbb66",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "18412ac9-ab2c-ce0d-bf32-8b7b6ead76f8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "867f8f23-0c98-7a3f-b9bf-edc4143217fb",
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
									"867f8f23-0c98-7a3f-b9bf-edc4143217fb",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "af613f19-d168-c49d-a7d9-b552b2dc70b1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nlocal other=AnyoneCore.Roster.entOf(slot==\"T1\" and \"T2\" or \"T1\")\nreturn other ~= nil and other.job ~= 21",
							name = "Other tank is not Warrior",
							uuid = "b1881628-e766-b9d7-a447-699166af5776",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 525,
				name = "[LPDU DRK] OT TBN OT",
				timeRange = true,
				timelineIndex = 89,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "31834f69-f486-7358-b223-71a131bec3db",
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
									"7941e987-47ce-b252-b491-ddb4728c2427",
									true,
								},
								
								{
									"3115100f-c764-e833-910d-9d5cb7e78fb5",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf",
							uuid = "e5ac1fa3-0eb5-7625-bc21-4a721eef772a",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "7941e987-47ce-b252-b491-ddb4728c2427",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "3115100f-c764-e833-910d-9d5cb7e78fb5",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 525,
				name = "[LPDU DRK] MT TBN Self",
				timeRange = true,
				timelineIndex = 89,
				timerEndOffset = -2,
				timerStartOffset = -5,
				uuid = "62a9b58e-4a61-8a27-be87-84605fc6b195",
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
				name = "Gunbreaker",
				uuid = "5579af6e-e2f2-5622-9f3f-10c5f2fe2a6d",
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
									"7a618005-e0c4-aa71-b7b4-59513e31cb35",
									true,
								},
								
								{
									"3310dbd6-60b7-eaad-846b-813327c70613",
									true,
								},
								
								{
									"e46d3d8b-89b8-e787-8975-03fd56e5c2ed",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_RoyalGuard",
							uuid = "b70f59b5-ba84-26ae-a68c-8a5ec0e5173d",
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
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "7a618005-e0c4-aa71-b7b4-59513e31cb35",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "3310dbd6-60b7-eaad-846b-813327c70613",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "e46d3d8b-89b8-e787-8975-03fd56e5c2ed",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 532,
				name = "[LPDU Tank] OT Stance ON",
				timeRange = true,
				timelineIndex = 90,
				timerEndOffset = -2,
				timerStartOffset = -5,
				uuid = "881ae848-fca6-8687-9fe3-9c97ed22a081",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "79f17815-dc33-6172-97e3-29e1ec9a0ddc",
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
									"647813ae-c1c6-e23c-842a-8bff30d941d1",
									true,
								},
								
								{
									"c2d1cf26-fb26-ce8e-bdcb-3a3d9f6aeec7",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Hotbar_IronWill",
							uuid = "42a52502-ab14-237a-ac5c-0b31cc771ed5",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "647813ae-c1c6-e23c-842a-8bff30d941d1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "c2d1cf26-fb26-ce8e-bdcb-3a3d9f6aeec7",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 532,
				name = "[LPDU PLD] OT Stance ON",
				timeRange = true,
				timelineIndex = 90,
				timerEndOffset = -2,
				timerStartOffset = -5,
				uuid = "9692d47c-c198-f922-b9b3-cf7edb88a400",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "f55b95a4-01dc-0b64-a315-34e20ef23a9e",
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
									"11e5cda3-122a-f283-8e38-4e5a44c07a2f",
									true,
								},
								
								{
									"c6d5dfaf-621e-8693-b5b2-7888dc7e0623",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Hotbar_Defiance",
							uuid = "988fe95a-2ccb-c49b-bd2d-6fa931b3c1ea",
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
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "11e5cda3-122a-f283-8e38-4e5a44c07a2f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "c6d5dfaf-621e-8693-b5b2-7888dc7e0623",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 532,
				name = "[LPDU WAR] OT Stance ON",
				timeRange = true,
				timelineIndex = 90,
				timerEndOffset = -2,
				timerStartOffset = -5,
				uuid = "db1737e5-7366-87aa-861d-56be812aca2b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "f77053b8-1d2c-6864-ab08-1a302c24dff8",
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
									"8810dcae-1e69-a16a-b4b1-c61b41100ecf",
									true,
								},
								
								{
									"60a41900-59e5-39b0-8c4e-ffac2eed0d55",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Hotbar_Grit",
							uuid = "2ec05746-ef17-e0cf-a7fa-3369bb22ae7c",
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
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "8810dcae-1e69-a16a-b4b1-c61b41100ecf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "60a41900-59e5-39b0-8c4e-ffac2eed0d55",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 532,
				name = "[LPDU DRK] OT Stance ON",
				timeRange = true,
				timelineIndex = 90,
				timerEndOffset = -2,
				timerStartOffset = -5,
				uuid = "714a5680-194e-fc12-94a9-5f7e93268b70",
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
				name = "Gunbreaker",
				uuid = "b5c051a9-5dc1-5d19-874b-a4a0bc04a598",
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
									"7e560e7e-f7f9-7d15-b6cf-8d606214765e",
									true,
								},
								
								{
									"d11ef3ed-b565-a3bc-94c3-a4fdec115950",
									true,
								},
								
								{
									"d53a4696-a242-a30a-8777-21b660d67899",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "a670c914-e522-b6a0-b0fd-5c80beb22b0c",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "7e560e7e-f7f9-7d15-b6cf-8d606214765e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "d11ef3ed-b565-a3bc-94c3-a4fdec115950",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							partyTargetSubType = "Furthest",
							uuid = "d53a4696-a242-a30a-8777-21b660d67899",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 544,
				name = "[LPDU Tank] HoL Trio",
				timeRange = true,
				timelineIndex = 93,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "748e306c-dae1-2daa-87ca-92b271f1b3c9",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "5ea7fd99-4108-3384-bbfe-4c1d7db32b9b",
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
									"39fbe992-29a9-7331-9f7c-bf4fb1cce228",
									true,
								},
								
								{
									"bb4c4459-d271-8114-9fad-699adafb06df",
									true,
								},
								
								{
									"c663f180-d10d-6a57-9f44-d32dfdfe4889",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_DivineVeil",
							uuid = "a8a6da83-460c-4dc1-9b8f-8fed45a33030",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "39fbe992-29a9-7331-9f7c-bf4fb1cce228",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "bb4c4459-d271-8114-9fad-699adafb06df",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							partyTargetSubType = "Furthest",
							uuid = "c663f180-d10d-6a57-9f44-d32dfdfe4889",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 544,
				name = "[LPDU PLD] DivineVeil Trio",
				timeRange = true,
				timelineIndex = 93,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "26e8aa1d-0326-32df-9904-43888e6294de",
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
							aType = "Alert",
							alertDuration = 4000,
							alertTTS = true,
							alertText = "PASSAGE OF ARMS IN 2s - position for party",
							conditions = 
							{
								
								{
									"87144d67-aefb-8887-8f88-6abaa1343276",
									true,
								},
								
								{
									"8e8faf53-521a-46e6-8519-2635bebd3180",
									true,
								},
							},
							uuid = "75fcac6e-8dc1-796d-b74d-23582be2033a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "87144d67-aefb-8887-8f88-6abaa1343276",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "8e8faf53-521a-46e6-8519-2635bebd3180",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							partyTargetSubType = "Furthest",
							uuid = "596c4134-1732-6048-a923-0fe060b4e51c",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 544,
				name = "[LPDU PLD] Passage - manual positioning",
				timeRange = true,
				timelineIndex = 93,
				timerEndOffset = -7.5,
				timerStartOffset = -8,
				uuid = "377b28bb-aa27-49de-9473-6fcbfdb84c3c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "24bdb715-bb55-59a0-bab2-72ae6cb66a42",
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
									"41cf5fc6-b7f9-52b8-bc9b-8200c480f7cd",
									true,
								},
								
								{
									"8b8df9e6-85ce-ca51-95fb-9a99a8ba5cad",
									true,
								},
								
								{
									"51d8b5d5-7f90-1e15-92b7-fb367c53da98",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_ShakeItOff",
							uuid = "b6400ef3-f5d6-3f8e-8f34-265600bd90ac",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "41cf5fc6-b7f9-52b8-bc9b-8200c480f7cd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "8b8df9e6-85ce-ca51-95fb-9a99a8ba5cad",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							partyTargetSubType = "Furthest",
							uuid = "51d8b5d5-7f90-1e15-92b7-fb367c53da98",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 544,
				name = "[LPDU WAR] ShakeItOff Trio",
				timeRange = true,
				timelineIndex = 93,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "95fa33a0-e305-2c75-ab1d-26fbf5809f4e",
				version = 2,
			},
		},
	},
	[98] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared",
				uuid = "43d614b9-521d-4f32-9d1f-ee10c31969e8",
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
									"432b21b5-0b58-355b-97b5-87bd17111d35",
									true,
								},
								
								{
									"0f860731-2220-d351-bb83-7ac844e176a0",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Sprint",
							uuid = "d4642edc-9782-5872-a24a-ef6976125af2",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "432b21b5-0b58-355b-97b5-87bd17111d35",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "0f860731-2220-d351-bb83-7ac844e176a0",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 552,
				name = "[LPDU Tank] Sprint Trio",
				timeRange = true,
				timelineIndex = 98,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "86b0cec9-f5af-676b-b9c1-6e60b857a8e9",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker",
				uuid = "1f082e7e-7484-0ad4-92be-bb3ccc4df433",
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
									"7cbbb899-0fa1-d17f-8eb6-17b689589794",
									true,
								},
								
								{
									"440f4029-fc10-b6d1-8c75-4f9e5ed5fd74",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "0d3bb7c7-aa89-9c72-a82e-69b9025c2b63",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "7cbbb899-0fa1-d17f-8eb6-17b689589794",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "440f4029-fc10-b6d1-8c75-4f9e5ed5fd74",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 552,
				name = "[LPDU Tank] OT HoS Self",
				timeRange = true,
				timelineIndex = 98,
				timerEndOffset = -1.5,
				timerStartOffset = -4.5,
				uuid = "cee778d4-7ef2-03b4-8785-6c36a81dadf1",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "51320dc2-f7e0-617a-a82c-5e484c415b7b",
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
									"ec4db1d8-070f-4e60-a6ca-eb7d3ddc0244",
									true,
								},
								
								{
									"6497a65e-25d7-1aa5-aa38-5376301763a2",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HolySheltron",
							uuid = "e53aeed5-e336-61f6-9645-fe444c4893e7",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "ec4db1d8-070f-4e60-a6ca-eb7d3ddc0244",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "6497a65e-25d7-1aa5-aa38-5376301763a2",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 552,
				name = "[LPDU PLD] OT Sheltron/Intervention Self",
				timeRange = true,
				timelineIndex = 98,
				timerEndOffset = -1.5,
				timerStartOffset = -4.5,
				uuid = "c2701862-998c-5438-8855-27e6cda2bb8b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "e994f816-2f21-847e-aef7-740847fb9066",
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
									"701b402b-3a76-e540-a348-6cbf54ce3b53",
									true,
								},
								
								{
									"ed3194a2-d36b-6a31-86a4-f768a2787558",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Bloodwhetting",
							uuid = "aa383c6a-c700-4f83-af7b-afe56882abc6",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "701b402b-3a76-e540-a348-6cbf54ce3b53",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "ed3194a2-d36b-6a31-86a4-f768a2787558",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 552,
				name = "[LPDU WAR] OT Raw Intuition Self",
				timeRange = true,
				timelineIndex = 98,
				timerEndOffset = -1.5,
				timerStartOffset = -4.5,
				uuid = "db616efe-df7d-bead-b705-146bc701f8f4",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "7ac4e0fe-4232-3807-8ccf-3e4f63715654",
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
									"2451c87c-537d-4c93-997b-5c85d8d31e1f",
									true,
								},
								
								{
									"b886aadc-0d7b-4f03-964f-073a3d1782ab",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf",
							uuid = "0a74d8a0-919a-37ee-9fd6-1c7883a1b6ae",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "2451c87c-537d-4c93-997b-5c85d8d31e1f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "b886aadc-0d7b-4f03-964f-073a3d1782ab",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 552,
				name = "[LPDU DRK] OT TBN Self",
				timeRange = true,
				timelineIndex = 98,
				timerEndOffset = -1.5,
				timerStartOffset = -4.5,
				uuid = "25031ef6-cab2-c46a-aef1-a5154a9fb276",
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
				name = "Shared",
				uuid = "33af6a78-59fe-36d4-ad49-b7047ec52176",
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
									"235ea19d-7b43-1f11-b0d4-b146df85b8ca",
									true,
								},
								
								{
									"77a3044c-12e0-8940-a191-7d9d2f18fd18",
									true,
								},
								
								{
									"575f61db-70cb-269d-9a6f-da00222dedd1",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "aead8ac6-9735-7e1d-8927-d7a49c4bac97",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "235ea19d-7b43-1f11-b0d4-b146df85b8ca",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "77a3044c-12e0-8940-a191-7d9d2f18fd18",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 5,
							name = "Reprisal range <=5y",
							partyTargetType = "Detection Target",
							uuid = "5c2687d4-f53c-e699-aac4-2a258f9a2a0e",
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
									"5c2687d4-f53c-e699-aac4-2a258f9a2a0e",
									true,
								},
							},
							filterTargetType = "Enemy",
							name = "Enemy in Reprisal range",
							uuid = "575f61db-70cb-269d-9a6f-da00222dedd1",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 555.9,
				name = "[LPDU Tank] MT Reprisal",
				timeRange = true,
				timelineIndex = 99,
				timerEndOffset = -6.5,
				timerStartOffset = -9.5,
				uuid = "9ba6ac43-d5a2-7b55-bd9f-d39f3394132c",
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
									"076149e1-f2ea-6ca4-b5aa-373148006f2a",
									true,
								},
								
								{
									"ba193a32-2dc8-c73d-8841-624e78ea299b",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "7f461e33-2482-c723-bd9a-5329674653ba",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "076149e1-f2ea-6ca4-b5aa-373148006f2a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "ba193a32-2dc8-c73d-8841-624e78ea299b",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 555.9,
				name = "[LPDU Tank] MT Provoke",
				timeRange = true,
				timelineIndex = 99,
				timerEndOffset = -4,
				timerStartOffset = -7,
				uuid = "8a0b795f-775a-a6c9-b237-61a3ab987172",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker",
				uuid = "2f0a70b3-77b7-2591-bbf6-0a2ef817212c",
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
									"9c380eaf-7431-73de-970f-ef089865c034",
									true,
								},
								
								{
									"f05d0dc3-2e2d-e672-bf03-6e1aa6c54113",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "809b24dd-dfaa-b9cc-8d56-1cb61d631c56",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "9c380eaf-7431-73de-970f-ef089865c034",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "f05d0dc3-2e2d-e672-bf03-6e1aa6c54113",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 555.9,
				name = "[LPDU Tank] MT HoS Self",
				timeRange = true,
				timelineIndex = 99,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "baa9a8e5-3067-f32e-84d8-7053d477c27a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "d3f85ada-147d-73ea-a204-031ec01b8f0c",
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
									"bad741c6-e274-9af3-8e50-9e0575e340d4",
									true,
								},
								
								{
									"5b908900-1a06-4416-b540-2699738df17f",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HolySheltron",
							uuid = "2b19f628-b188-73e6-af0a-255e38b4b367",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "bad741c6-e274-9af3-8e50-9e0575e340d4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "5b908900-1a06-4416-b540-2699738df17f",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 555.9,
				name = "[LPDU PLD] MT Sheltron/Intervention Self",
				timeRange = true,
				timelineIndex = 99,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "866530a6-c52e-f7a1-852e-e3c084576632",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "320d2781-fdab-9488-ab38-1c84ecdef060",
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
									"1c8475df-032c-9025-9ed4-15efcd8955cf",
									true,
								},
								
								{
									"2be35eb4-0e8e-3a41-88f4-938d8068c7f7",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Bloodwhetting",
							uuid = "632b89cc-f78e-bf5c-aabf-1c8a5f731eaf",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "1c8475df-032c-9025-9ed4-15efcd8955cf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "2be35eb4-0e8e-3a41-88f4-938d8068c7f7",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 555.9,
				name = "[LPDU WAR] MT Raw Intuition Self",
				timeRange = true,
				timelineIndex = 99,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "9ecd0c53-9582-4d5a-918f-f99f66af68ff",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "2329eb50-3292-643a-839a-c415348ae6a9",
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
									"0876936e-f852-a040-b88d-5c0a3c675bff",
									true,
								},
								
								{
									"95a4636a-f781-8c56-ba85-e07309787bea",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf",
							uuid = "ecfae1e5-747a-882b-8273-167b3c75e4ab",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "0876936e-f852-a040-b88d-5c0a3c675bff",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "95a4636a-f781-8c56-ba85-e07309787bea",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 555.9,
				name = "[LPDU DRK] MT TBN Self",
				timeRange = true,
				timelineIndex = 99,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "cc560b7f-99a6-e3cb-940d-72c0ddbb58d8",
				version = 2,
			},
		},
	},
	[100] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker",
				uuid = "91cf5921-93f3-bdc7-9a07-07d463e0dc8b",
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
									"aca10fe7-8a7f-a2fe-92c3-46fab49ba3c5",
									true,
								},
								
								{
									"90570a11-f8d9-0fbf-91ee-036425af6904",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_AuroraSelf",
							uuid = "d49be0ce-03d0-81dd-985b-1622c2a6c20e",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "aca10fe7-8a7f-a2fe-92c3-46fab49ba3c5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "90570a11-f8d9-0fbf-91ee-036425af6904",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 563.9,
				name = "[LPDU Tank] Aurora Self",
				timeRange = true,
				timelineIndex = 100,
				timerEndOffset = -12,
				timerStartOffset = -15,
				uuid = "55b44022-f4d7-8347-bec9-eb8857bc7d5a",
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
									"5f0e053d-c417-2309-abb6-789af1d28b77",
									true,
								},
								
								{
									"2603279b-2eaa-bd66-a394-dbd8638b1111",
									true,
								},
								
								{
									"9db61267-2392-456f-99fc-39c8bce1952e",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_RoyalGuard",
							uuid = "f6e50931-d203-5288-9e35-ab2e8a47b075",
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
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "5f0e053d-c417-2309-abb6-789af1d28b77",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "2603279b-2eaa-bd66-a394-dbd8638b1111",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "9db61267-2392-456f-99fc-39c8bce1952e",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 563.9,
				name = "[LPDU Tank] OT Stance ON",
				timeRange = true,
				timelineIndex = 100,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "17fc81ac-fa7c-c1a6-af3a-e50536a46ab2",
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
									"bf0a87ef-7d07-e37a-891d-f8cc61ecb178",
									true,
								},
								
								{
									"b38db611-312a-ea4f-9c7a-f45b11bc5b13",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Superbolide",
							uuid = "e40c9611-9f15-b696-9450-fc9227078445",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "bf0a87ef-7d07-e37a-891d-f8cc61ecb178",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "b38db611-312a-ea4f-9c7a-f45b11bc5b13",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 563.9,
				name = "[LPDU Tank] MT Bolide",
				timeRange = true,
				timelineIndex = 100,
				timerEndOffset = -6,
				timerStartOffset = -9,
				uuid = "b4fce09d-edb7-5d2f-977c-ea0b33917386",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "46acf684-73db-2ad6-802c-d2cb8ff170f0",
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
									"0da23245-9bf5-cf88-9991-f78f99979ec8",
									true,
								},
								
								{
									"8e44de8a-4d48-0e90-b023-9b3f03405729",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Hotbar_IronWill",
							uuid = "9b0e0de7-0bb9-b8d4-969a-4ee4c4c7a8ba",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "0da23245-9bf5-cf88-9991-f78f99979ec8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "8e44de8a-4d48-0e90-b023-9b3f03405729",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 563.9,
				name = "[LPDU PLD] OT Stance ON",
				timeRange = true,
				timelineIndex = 100,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "10b5bdae-543f-88f1-8ba7-a041bcbfb498",
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
									"ff203a84-5a27-2f5e-9c46-bdcd5490b29a",
									true,
								},
								
								{
									"00687f89-5def-9087-824d-8dd2d5388dad",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HallowedGround",
							uuid = "65b528ca-c58a-54e5-b3b5-deadc9d5f690",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "ff203a84-5a27-2f5e-9c46-bdcd5490b29a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "00687f89-5def-9087-824d-8dd2d5388dad",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 563.9,
				name = "[LPDU PLD] MT HallowedGround",
				timeRange = true,
				timelineIndex = 100,
				timerEndOffset = -6,
				timerStartOffset = -9,
				uuid = "19aa9386-3d4b-2464-a45e-19ae462a1b9e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "153975b0-3f88-7fbd-91ba-53aff000ccb0",
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
									"9542b2a3-9cc8-c80a-a293-c2df77312991",
									true,
								},
								
								{
									"ded46ffe-1fee-0c4a-b4a1-f0f7482c22ad",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Equilibrium",
							uuid = "cf7342bc-9f21-bda4-81e9-4883d2deab74",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "9542b2a3-9cc8-c80a-a293-c2df77312991",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "ded46ffe-1fee-0c4a-b4a1-f0f7482c22ad",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 563.9,
				name = "[LPDU WAR] Equilibrium Self",
				timeRange = true,
				timelineIndex = 100,
				timerEndOffset = -12,
				timerStartOffset = -15,
				uuid = "2a53b054-0209-8a8c-bfae-5bac0e57eb82",
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
									"eb77f810-ed75-86fa-9690-b51fb4f40791",
									true,
								},
								
								{
									"b63caf7b-7620-b2b6-87d9-5922763faa8e",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Hotbar_Defiance",
							uuid = "c0badb83-f86e-f34e-803d-46f869b084bb",
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
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "eb77f810-ed75-86fa-9690-b51fb4f40791",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "b63caf7b-7620-b2b6-87d9-5922763faa8e",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 563.9,
				name = "[LPDU WAR] OT Stance ON",
				timeRange = true,
				timelineIndex = 100,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "ae0a31ba-c978-89dd-be36-b5a277b9ca97",
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
							aType = "Alert",
							alertDuration = 4000,
							alertTTS = true,
							alertText = "HOLMGANG IN 2s - use self target",
							conditions = 
							{
								
								{
									"b723a7f1-b752-e3e0-9561-ca115e78c374",
									true,
								},
								
								{
									"0c557219-3726-2234-af5d-0812595c8fe1",
									true,
								},
							},
							uuid = "c74f2a84-e1a7-68ab-a9ab-5663e77fe321",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "b723a7f1-b752-e3e0-9561-ca115e78c374",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "0c557219-3726-2234-af5d-0812595c8fe1",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 563.9,
				name = "[LPDU WAR] Holmgang - manual self target",
				timeRange = true,
				timelineIndex = 100,
				timerEndOffset = -10.5,
				timerStartOffset = -11,
				uuid = "38dbba9f-dade-1444-84af-13ae4b86de49",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "0176c8ea-497c-b6bb-9d90-fd26d41750fd",
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
									"b319df53-7269-112b-9add-fd18e19e45e3",
									true,
								},
								
								{
									"48073666-29bc-0366-973e-c6a4c10a08ff",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Hotbar_Grit",
							uuid = "bc7388c4-49ab-8904-8a02-5bb984e65c4d",
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
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "b319df53-7269-112b-9add-fd18e19e45e3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "48073666-29bc-0366-973e-c6a4c10a08ff",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 563.9,
				name = "[LPDU DRK] OT Stance ON",
				timeRange = true,
				timelineIndex = 100,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "c514b168-99c9-067f-9552-b0cb939d4d04",
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
									"cfa0c869-011e-117d-9d7d-05871f9c0f1c",
									true,
								},
								
								{
									"bd7faf05-8864-c03b-97e5-52f195746ca3",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_LivingDead",
							uuid = "64f53cd8-29f1-6231-b474-f07e88ba74ee",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "cfa0c869-011e-117d-9d7d-05871f9c0f1c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "bd7faf05-8864-c03b-97e5-52f195746ca3",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 563.9,
				name = "[LPDU DRK] MT LivingDead",
				timeRange = true,
				timelineIndex = 100,
				timerEndOffset = -6,
				timerStartOffset = -9,
				uuid = "ba7d13a5-e520-6a11-b5f5-5ca9574bd44c",
				version = 2,
			},
		},
	},
	[101] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared",
				uuid = "c7504306-3ef8-b5c2-b006-ba56a7e20a3f",
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
									"5720937e-76c7-1ede-a188-1206d9d21b60",
									true,
								},
								
								{
									"9c81997d-897c-59a8-9730-fef2afbcda0b",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "1e20b6b0-9d36-ec05-99e9-9c0b90f6000e",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "5720937e-76c7-1ede-a188-1206d9d21b60",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "9c81997d-897c-59a8-9730-fef2afbcda0b",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 572,
				name = "[LPDU Tank] OT Voke",
				timeRange = true,
				timelineIndex = 101,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "5185b9d7-6147-730e-9de8-a93a35517e4c",
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
									"41218db9-1ec2-b3da-a65f-fd06c5775153",
									true,
								},
								
								{
									"481c3ec0-6769-aa19-a928-c36d6289f687",
									true,
								},
								
								{
									"ce09ea18-bd64-065e-a3b6-68720ea68a57",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_ShirkMouse",
							targetType = "Detection Target",
							uuid = "abde23a4-7cdf-36c8-bdad-fc571ec51383",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "41218db9-1ec2-b3da-a65f-fd06c5775153",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "481c3ec0-6769-aa19-a928-c36d6289f687",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "b7bacbfc-febf-78e0-af18-5d2650091570",
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
									"b7bacbfc-febf-78e0-af18-5d2650091570",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "ce09ea18-bd64-065e-a3b6-68720ea68a57",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 572,
				name = "[LPDU Tank] MT Shirk",
				timeRange = true,
				timelineIndex = 101,
				timerStartOffset = -3,
				uuid = "7d4c9a24-a7b7-e4a1-8ab0-807113adf5c0",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker",
				uuid = "445bade0-c21b-3082-8e76-c1de8aa5d3d2",
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
									"0927e16f-3e36-5914-bc43-a2e04072a47d",
									true,
								},
								
								{
									"290b5f7c-daa7-54c0-be9d-e9a9ab956e10",
									true,
								},
								
								{
									"14f7ed45-6181-ca3d-9bc0-727509f786fd",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_RoyalGuard",
							uuid = "dbf8d898-a137-672e-af1f-b0e465b88423",
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
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "0927e16f-3e36-5914-bc43-a2e04072a47d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "290b5f7c-daa7-54c0-be9d-e9a9ab956e10",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "14f7ed45-6181-ca3d-9bc0-727509f786fd",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 572,
				name = "[LPDU Tank] OT Stance ON",
				timeRange = true,
				timelineIndex = 101,
				timerEndOffset = 3,
				uuid = "67a3c185-6a4c-a389-a6ac-5dff9e906a50",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "8d71c161-b54e-e431-af6d-19e3f5ad316f",
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
									"ed8500cb-7c0d-241b-a199-e546c5dc6abf",
									true,
								},
								
								{
									"a32a911d-c3dc-7f36-80c8-1a3956eec6cc",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Hotbar_IronWill",
							uuid = "67b7deb8-6567-b499-8244-b08a45673609",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "ed8500cb-7c0d-241b-a199-e546c5dc6abf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "a32a911d-c3dc-7f36-80c8-1a3956eec6cc",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 572,
				name = "[LPDU PLD] OT Stance ON",
				timeRange = true,
				timelineIndex = 101,
				timerEndOffset = 3,
				uuid = "1e052bdc-be51-37fd-9819-421ea061f315",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "70624606-779a-9904-a76b-256fe144b785",
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
									"e2d0dc3e-e29f-ef94-9a7b-732a40482bea",
									true,
								},
								
								{
									"d76e9ba1-e677-c275-a9b1-391b86938d9c",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Hotbar_Defiance",
							uuid = "52862585-cdfb-bb37-be7a-9b90755515c0",
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
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "e2d0dc3e-e29f-ef94-9a7b-732a40482bea",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "d76e9ba1-e677-c275-a9b1-391b86938d9c",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 572,
				name = "[LPDU WAR] OT Stance ON",
				timeRange = true,
				timelineIndex = 101,
				timerEndOffset = 3,
				uuid = "13d8d4a1-14cf-9fb8-ac54-8cf105b4fd48",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "9b53bfba-e861-8d65-b363-c2f3fd96b014",
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
									"58933ac0-1fd2-5e5b-957c-a62843749423",
									true,
								},
								
								{
									"b144c119-4fa0-6224-999a-bb9dab4c3825",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Hotbar_Grit",
							uuid = "d5b2b932-ba10-4fb7-b2f8-c220cd03ced0",
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
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "58933ac0-1fd2-5e5b-957c-a62843749423",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "b144c119-4fa0-6224-999a-bb9dab4c3825",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 572,
				name = "[LPDU DRK] OT Stance ON",
				timeRange = true,
				timelineIndex = 101,
				timerEndOffset = 3,
				uuid = "e0a688fd-af02-d245-b6ed-873c45bac8d2",
				version = 2,
			},
		},
	},
	[104] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker",
				uuid = "0232d2a3-85df-f3e1-a599-9593839bae11",
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
									"c48a668e-3bd9-3ec3-b338-4b840313669c",
									true,
								},
								
								{
									"4d3b820f-f40f-26b5-988c-ad9d7e300fe2",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumMouse",
							targetSubType = "Lowest HP",
							targetType = "Party",
							uuid = "1de48e82-9428-3c12-878d-dce1adda82bc",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "c48a668e-3bd9-3ec3-b338-4b840313669c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "4d3b820f-f40f-26b5-988c-ad9d7e300fe2",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 579,
				name = "[LPDU Tank] MT HoS Trio",
				timeRange = true,
				timelineIndex = 104,
				timerStartOffset = -3,
				uuid = "22920491-1a4e-1080-a187-bb4c6bd0fa02",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "4db1f5a8-6a02-d2a7-a5d2-0849c7817c7a",
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
									"8458e093-e1a3-9318-9ec6-1b61d4643c53",
									true,
								},
								
								{
									"56c1f9e4-36d4-007a-a54d-163aad0df743",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_InterventionMouse",
							targetSubType = "Lowest HP",
							targetType = "Party",
							uuid = "2e9c0d2d-bdb7-9f8e-a902-5a155e70b695",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "8458e093-e1a3-9318-9ec6-1b61d4643c53",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "56c1f9e4-36d4-007a-a54d-163aad0df743",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 579,
				name = "[LPDU PLD] MT Sheltron/Intervention Trio",
				timeRange = true,
				timelineIndex = 104,
				timerStartOffset = -3,
				uuid = "c347a511-8e43-41ed-a978-cbe1b1fa5c9b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "b8a16c41-4289-c79f-b67a-6cd4c64513a2",
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
									"6cfd6aeb-30e9-cb21-a3e9-3aeb5070ea22",
									true,
								},
								
								{
									"2b3d7aef-64d0-7c90-aa4b-9899240cbe83",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightMouse",
							targetSubType = "Lowest HP",
							targetType = "Party",
							uuid = "5ecaef17-affc-2d4e-a070-d7044d899332",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "6cfd6aeb-30e9-cb21-a3e9-3aeb5070ea22",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "2b3d7aef-64d0-7c90-aa4b-9899240cbe83",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 579,
				name = "[LPDU DRK] MT TBN Trio",
				timeRange = true,
				timelineIndex = 104,
				timerStartOffset = -3,
				uuid = "dea0e4cf-f93b-41b5-8034-c787381d27ca",
				version = 2,
			},
		},
	},
	[110] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared",
				uuid = "01fbea81-259a-5757-913e-17b24f886da3",
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
									"d33f468c-9a14-55e1-a9c9-26395649ea5c",
									true,
								},
								
								{
									"900a46ef-5935-0fdb-a469-99de50986d0e",
									true,
								},
								
								{
									"f4980817-3944-4465-9b70-1091a7e3933a",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "ceb6786f-00d2-8a17-98a2-8c3a912caf58",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "d33f468c-9a14-55e1-a9c9-26395649ea5c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "900a46ef-5935-0fdb-a469-99de50986d0e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 5,
							name = "Reprisal range <=5y",
							partyTargetType = "Detection Target",
							uuid = "470afd2b-b2f6-8be4-92da-8e1229c1bd7d",
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
									"470afd2b-b2f6-8be4-92da-8e1229c1bd7d",
									true,
								},
							},
							filterTargetType = "Enemy",
							name = "Enemy in Reprisal range",
							uuid = "f4980817-3944-4465-9b70-1091a7e3933a",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 596,
				name = "[LPDU Tank] OT Reprisal",
				timeRange = true,
				timelineIndex = 110,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "7669f2e1-2fa8-0fa3-a259-e42df1441774",
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
				name = "Shared",
				uuid = "8a5db862-d63e-8d73-ae13-30aea1143dee",
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
									"6c63aa32-daec-f627-a936-0312668c0058",
									true,
								},
								
								{
									"812ff3be-a26a-9a01-bce3-f80687ce3c76",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Rampart",
							uuid = "3776071f-6392-4969-856d-1df1f1cdf4d6",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "6c63aa32-daec-f627-a936-0312668c0058",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "812ff3be-a26a-9a01-bce3-f80687ce3c76",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 609,
				name = "[LPDU Tank] OT Rampart",
				timeRange = true,
				timelineIndex = 113,
				timerEndOffset = -15.5,
				timerStartOffset = -18.5,
				uuid = "a9133bb6-b350-51ca-a522-6a61dd29c2a9",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker",
				uuid = "78d92a86-591c-e346-8322-482a25ad5edc",
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
									"0fd36b52-4b9f-47cd-98be-b5bac4d28b2e",
									true,
								},
								
								{
									"62895f35-aa88-ea2e-839f-1c3cfbbdb83f",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Nebula",
							uuid = "ff0312c3-6108-d9c9-808a-d8788927cdaf",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "0fd36b52-4b9f-47cd-98be-b5bac4d28b2e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "62895f35-aa88-ea2e-839f-1c3cfbbdb83f",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 609,
				name = "[LPDU Tank] OT Nebula",
				timeRange = true,
				timelineIndex = 113,
				timerEndOffset = -11,
				timerStartOffset = -14,
				uuid = "7a2d0336-ce04-e909-b7fd-b54f3d9d1e98",
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
									"75b1cd4c-1ba0-3348-9aaf-6c2a539099db",
									true,
								},
								
								{
									"acb96d66-778e-1579-9b4c-8265e18b4364",
									true,
								},
								
								{
									"8bf4cc76-65c9-7cbd-a0f9-adbaf3dacec9",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_RoyalGuard",
							uuid = "5ddcd0d0-13f3-3d8f-acd8-adc6ad9ab7c7",
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
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "75b1cd4c-1ba0-3348-9aaf-6c2a539099db",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "acb96d66-778e-1579-9b4c-8265e18b4364",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "8bf4cc76-65c9-7cbd-a0f9-adbaf3dacec9",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 609,
				name = "[LPDU Tank] MT Stance ON",
				timeRange = true,
				timelineIndex = 113,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "8123cda6-e136-2e66-b65e-834734e47def",
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
									"3027c951-a092-91c6-84da-151e980a1a12",
									true,
								},
								
								{
									"dfd0dd96-5e49-4680-984a-0e8cff01f290",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							uuid = "4c17e5ec-fad3-86e0-bc16-5a469a2fcec3",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "3027c951-a092-91c6-84da-151e980a1a12",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "dfd0dd96-5e49-4680-984a-0e8cff01f290",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 609,
				name = "[LPDU Tank] OT Camo",
				timeRange = true,
				timelineIndex = 113,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "6811e4d0-4f33-fec6-991e-0abec753751b",
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
									"61a649f4-c28b-d625-9b55-e93e0dfc87f3",
									true,
								},
								
								{
									"751a331c-f4d5-a295-958f-27fd2d05c37a",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "6ce226f1-c712-c620-8554-21102097f0ad",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "61a649f4-c28b-d625-9b55-e93e0dfc87f3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "751a331c-f4d5-a295-958f-27fd2d05c37a",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 609,
				name = "[LPDU Tank] OT HoS Self",
				timeRange = true,
				timelineIndex = 113,
				timerEndOffset = -3.5,
				timerStartOffset = -6.5,
				uuid = "8a881609-e8b5-ec51-ba77-133a4e1abc79",
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
									"897abee9-fb80-59a9-a507-41b789c8c622",
									true,
								},
								
								{
									"509f4ab3-0e9d-0ff1-863e-59959956a9ad",
									true,
								},
								
								{
									"e041dcfc-6a50-4d08-8323-37742642e727",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumMouse",
							targetType = "Detection Target",
							uuid = "dd6727ad-154e-b6b5-ae25-18dfbd5e68bd",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "897abee9-fb80-59a9-a507-41b789c8c622",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "509f4ab3-0e9d-0ff1-863e-59959956a9ad",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "24ab038d-6104-4d55-89a7-42df2153b582",
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
									"24ab038d-6104-4d55-89a7-42df2153b582",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "e041dcfc-6a50-4d08-8323-37742642e727",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 609,
				name = "[LPDU Tank] MT HoS OT",
				timeRange = true,
				timelineIndex = 113,
				timerEndOffset = -3.5,
				timerStartOffset = -6.5,
				uuid = "154fb25e-d8b4-856c-8e48-3ddd77976d7f",
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
									"57d683bf-4cf3-2565-ac66-388414effb16",
									true,
								},
								
								{
									"30fabcc4-d13e-3e9b-aa78-c674d9a3155a",
									true,
								},
								
								{
									"9ba76b4d-86fd-3e81-9293-11945d246d2a",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_ReleaseRoyalGuard",
							uuid = "f018c9c3-7617-2f79-938c-a052f7a5ebf4",
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
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "57d683bf-4cf3-2565-ac66-388414effb16",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "30fabcc4-d13e-3e9b-aa78-c674d9a3155a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 1833,
							category = "Self",
							uuid = "9ba76b4d-86fd-3e81-9293-11945d246d2a",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 609,
				name = "[LPDU Tank] OT Stance OFF",
				timeRange = true,
				timelineIndex = 113,
				timerEndOffset = 3,
				uuid = "9a4eb68b-b3be-9d1b-8bd8-1e4a2ba1b273",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "a217dde4-8d97-f569-9eab-491380f485ea",
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
									"642028f9-ab76-bc8f-a934-8fb4d451bccf",
									true,
								},
								
								{
									"84cd6a80-650a-3eba-9943-9b3573e8e8e0",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Guardian",
							uuid = "2c4973a4-48f4-47c1-8441-ecba277b6308",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "642028f9-ab76-bc8f-a934-8fb4d451bccf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "84cd6a80-650a-3eba-9943-9b3573e8e8e0",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 609,
				name = "[LPDU PLD] OT Guardian",
				timeRange = true,
				timelineIndex = 113,
				timerEndOffset = -11,
				timerStartOffset = -14,
				uuid = "47e64e85-8e73-828a-9959-8fb56a1674d7",
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
									"449828e9-ea3c-e7be-bca6-6f3d739e7962",
									true,
								},
								
								{
									"1c371baa-bcf7-6439-b77f-9e50baf3af58",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Hotbar_IronWill",
							uuid = "fcdb3c3b-7dd2-bdc3-8368-e78a1b4dae88",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "449828e9-ea3c-e7be-bca6-6f3d739e7962",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "1c371baa-bcf7-6439-b77f-9e50baf3af58",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 609,
				name = "[LPDU PLD] MT Stance ON",
				timeRange = true,
				timelineIndex = 113,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "2d3805db-b9e2-6a58-9dbb-bc7ab50e0be4",
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
									"9feeaf11-3644-f630-aa5a-2ab6dd2f6318",
									true,
								},
								
								{
									"f620783a-b01b-1629-9d61-c519d1ee2613",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Bulwark",
							uuid = "45afebbc-1fae-cebf-a0ff-0ee46a8c12d3",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "9feeaf11-3644-f630-aa5a-2ab6dd2f6318",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "f620783a-b01b-1629-9d61-c519d1ee2613",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 609,
				name = "[LPDU PLD] OT Bulwark",
				timeRange = true,
				timelineIndex = 113,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "e2e11e95-16e7-9473-b489-7e287fda7ba8",
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
									"eddcba7c-a37f-b58e-bef7-7da4bdb62af1",
									true,
								},
								
								{
									"517e3143-ee81-8ef9-bcc8-00aef382edd7",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HolySheltron",
							uuid = "cb880d28-8b24-7ed1-9e3c-a3147b0d922a",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "eddcba7c-a37f-b58e-bef7-7da4bdb62af1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "517e3143-ee81-8ef9-bcc8-00aef382edd7",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 609,
				name = "[LPDU PLD] OT Sheltron/Intervention Self",
				timeRange = true,
				timelineIndex = 113,
				timerEndOffset = -3.5,
				timerStartOffset = -6.5,
				uuid = "363a0670-e27e-9b8a-8274-ba02c303da93",
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
									"07e33e14-6dad-f712-af87-81a72e0a7da1",
									true,
								},
								
								{
									"3f2ed71e-bca7-5d9e-860e-959899587706",
									true,
								},
								
								{
									"3a4dfc0e-1d84-cb62-b12e-3e36854f052d",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_InterventionMouse",
							targetType = "Detection Target",
							uuid = "38783a66-385f-8f2a-b191-9573397b7706",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "07e33e14-6dad-f712-af87-81a72e0a7da1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "3f2ed71e-bca7-5d9e-860e-959899587706",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "b1ebd5d5-3829-98fb-ad75-a765729dd5e5",
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
									"b1ebd5d5-3829-98fb-ad75-a765729dd5e5",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "3a4dfc0e-1d84-cb62-b12e-3e36854f052d",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 609,
				name = "[LPDU PLD] MT Sheltron/Intervention OT",
				timeRange = true,
				timelineIndex = 113,
				timerEndOffset = -3.5,
				timerStartOffset = -6.5,
				uuid = "ecdba13e-b787-33a5-8ad5-00a93e99e544",
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
									"de39d248-6eb4-27fb-8fdb-cca3f782399a",
									true,
								},
								
								{
									"b362e5ad-d580-fe65-b545-b32338d5805f",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Hotbar_ReleaseIronWill",
							uuid = "1d71ebed-d95c-d584-81ed-5e9d212b861c",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "de39d248-6eb4-27fb-8fdb-cca3f782399a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "b362e5ad-d580-fe65-b545-b32338d5805f",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 609,
				name = "[LPDU PLD] OT Stance OFF",
				timeRange = true,
				timelineIndex = 113,
				timerEndOffset = 3,
				uuid = "6ff2eb07-fb54-0800-8147-11f497a4b1cc",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "8eb637df-6f09-9eac-b4f3-9cecf8b7126b",
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
									"209c19ac-cf0e-08e5-abbe-b5e1c1975378",
									true,
								},
								
								{
									"649e4fcf-1c4e-2299-9bc1-37c039698d52",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Damnation",
							uuid = "e484a15d-a0d0-2311-aa4c-96859f6561b0",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "209c19ac-cf0e-08e5-abbe-b5e1c1975378",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "649e4fcf-1c4e-2299-9bc1-37c039698d52",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 609,
				name = "[LPDU WAR] OT Damnation",
				timeRange = true,
				timelineIndex = 113,
				timerEndOffset = -11,
				timerStartOffset = -14,
				uuid = "69a878e7-954c-1e96-98fb-3650aed0374d",
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
									"b5afdac9-0b84-3300-9d64-8d0a1a5da40e",
									true,
								},
								
								{
									"9b6374df-ade9-33d5-a075-616962d580c8",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Hotbar_Defiance",
							uuid = "bc77a913-a79b-497a-813f-c779e532a092",
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
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "b5afdac9-0b84-3300-9d64-8d0a1a5da40e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "9b6374df-ade9-33d5-a075-616962d580c8",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 609,
				name = "[LPDU WAR] MT Stance ON",
				timeRange = true,
				timelineIndex = 113,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "274c990a-acfc-42ae-bb13-5bd9f053d11e",
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
									"771d454d-db95-17ea-ac55-a52d23f82227",
									true,
								},
								
								{
									"0bac76ea-d607-6fcf-88e7-cefa18117de3",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_ThrillOfBattle",
							uuid = "cba921a0-5429-5077-9947-b0141df7607e",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "771d454d-db95-17ea-ac55-a52d23f82227",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "0bac76ea-d607-6fcf-88e7-cefa18117de3",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 609,
				name = "[LPDU WAR] OT ThrillOfBattle",
				timeRange = true,
				timelineIndex = 113,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "bac86397-2599-84ca-934e-35ebf1fd74bf",
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
									"8d03273f-2054-f584-8b62-ad49a1736afe",
									true,
								},
								
								{
									"80a30aac-de38-652b-963b-f9a287be1074",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Bloodwhetting",
							uuid = "5a3c39c5-eb64-b147-a555-7c2d008ac009",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "8d03273f-2054-f584-8b62-ad49a1736afe",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "80a30aac-de38-652b-963b-f9a287be1074",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 609,
				name = "[LPDU WAR] OT Raw Intuition Self",
				timeRange = true,
				timelineIndex = 113,
				timerEndOffset = -3.5,
				timerStartOffset = -6.5,
				uuid = "6b70d057-231e-be33-832c-36c9011838f5",
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
									"646aec77-d356-979d-83c4-18150cb53e10",
									true,
								},
								
								{
									"e2043d49-851b-b5ca-95d7-af227fd33e11",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Hotbar_ReleaseDefiance",
							uuid = "b0444c0d-55e7-cd16-a308-8e15dc9e2b64",
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
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "646aec77-d356-979d-83c4-18150cb53e10",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "e2043d49-851b-b5ca-95d7-af227fd33e11",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 609,
				name = "[LPDU WAR] OT Stance OFF",
				timeRange = true,
				timelineIndex = 113,
				timerEndOffset = 3,
				uuid = "b652a06e-74a2-da13-a3bd-a4d57115ad15",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "711a8b45-324f-a19d-afed-b2519aa6b92b",
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
									"88547b3a-8cfc-99c8-8912-826ec336fe3b",
									true,
								},
								
								{
									"6aab89e9-82da-8534-b6f7-e8a4fda10a3d",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_ShadowedVigil",
							uuid = "303a5651-2c34-ced9-b6b7-103fbad7fa64",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "88547b3a-8cfc-99c8-8912-826ec336fe3b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "6aab89e9-82da-8534-b6f7-e8a4fda10a3d",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 609,
				name = "[LPDU DRK] OT ShadowedVigil",
				timeRange = true,
				timelineIndex = 113,
				timerEndOffset = -11,
				timerStartOffset = -14,
				uuid = "337b0d51-4a9c-30c5-975c-c0ce95d3a7a2",
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
									"5c75e9a7-0d52-3efc-9335-3313079730f7",
									true,
								},
								
								{
									"669d1e31-15ce-af6a-a0f6-4b58da214723",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Hotbar_Grit",
							uuid = "368f5f7b-3ecd-5a55-bae3-0a0a19a7c45d",
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
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "5c75e9a7-0d52-3efc-9335-3313079730f7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "669d1e31-15ce-af6a-a0f6-4b58da214723",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 609,
				name = "[LPDU DRK] MT Stance ON",
				timeRange = true,
				timelineIndex = 113,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "f29ddcb2-cd42-691c-bcb8-8abc2bc8e708",
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
									"ff6da293-81aa-362d-87a0-0e3e5f731f65",
									true,
								},
								
								{
									"4d5e8620-7533-857b-938f-0635c1b210f4",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_DarkMind",
							uuid = "4227aed0-6bf9-1f90-a5f8-f8eb81665c43",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "ff6da293-81aa-362d-87a0-0e3e5f731f65",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "4d5e8620-7533-857b-938f-0635c1b210f4",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 609,
				name = "[LPDU DRK] OT DarkMind",
				timeRange = true,
				timelineIndex = 113,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "2716a268-a065-438e-8e06-c123aaf2e63b",
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
									"dea10676-dce3-9404-a230-a32ccabcc4ab",
									true,
								},
								
								{
									"9908b27e-0f8e-5576-8eed-d17d71a10e35",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf",
							uuid = "53910562-4a26-bda3-9311-ea12ae29c8f5",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "dea10676-dce3-9404-a230-a32ccabcc4ab",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "9908b27e-0f8e-5576-8eed-d17d71a10e35",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 609,
				name = "[LPDU DRK] OT TBN Self",
				timeRange = true,
				timelineIndex = 113,
				timerEndOffset = -3.5,
				timerStartOffset = -6.5,
				uuid = "65ed054b-4493-197f-b273-e7d220430cb9",
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
									"79a18813-8ccd-8fa1-a1a6-a8c23bb4b9b1",
									true,
								},
								
								{
									"48f9127a-b52c-3560-9621-4ab95435b880",
									true,
								},
								
								{
									"359fe32c-9f36-61b3-b383-3b2fd5a835a9",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightMouse",
							targetType = "Detection Target",
							uuid = "def484ff-6704-238c-bfb8-07f7b656eee5",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "79a18813-8ccd-8fa1-a1a6-a8c23bb4b9b1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "48f9127a-b52c-3560-9621-4ab95435b880",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "b818d48b-97d5-fd69-bcac-3b847e726126",
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
									"b818d48b-97d5-fd69-bcac-3b847e726126",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "359fe32c-9f36-61b3-b383-3b2fd5a835a9",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 609,
				name = "[LPDU DRK] MT TBN OT",
				timeRange = true,
				timelineIndex = 113,
				timerEndOffset = -3.5,
				timerStartOffset = -6.5,
				uuid = "fe825c69-16e1-1c61-9c5d-751b6df32e78",
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
									"faf6843f-65aa-8573-be11-1f4d8d3a5f15",
									true,
								},
								
								{
									"d7c216ef-567b-ada7-a662-5e12c9b8d080",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Hotbar_ReleaseGrit",
							uuid = "40ffdb96-6e0f-2dac-9e84-1bdecf6cf025",
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
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "faf6843f-65aa-8573-be11-1f4d8d3a5f15",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "d7c216ef-567b-ada7-a662-5e12c9b8d080",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 609,
				name = "[LPDU DRK] OT Stance OFF",
				timeRange = true,
				timelineIndex = 113,
				timerEndOffset = 3,
				uuid = "fd8b1c4f-0eaf-8bef-a80d-abafa9ec3d55",
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
				name = "Gunbreaker",
				uuid = "9c642ecd-b9e2-8163-b66b-0d1afd69c43d",
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
									"b59e35c1-a270-cc28-b421-ac22060e20b5",
									true,
								},
								
								{
									"2c975091-c8e4-88de-bfe0-72b60c849664",
									true,
								},
								
								{
									"6881b71e-3371-b44c-8d4a-5d741d5fbda7",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_RoyalGuard",
							uuid = "e22804c6-e704-fccf-8ed7-c87dddca7f90",
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
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "b59e35c1-a270-cc28-b421-ac22060e20b5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "2c975091-c8e4-88de-bfe0-72b60c849664",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "6881b71e-3371-b44c-8d4a-5d741d5fbda7",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 622,
				name = "[LPDU Tank] MT Stance ON",
				timeRange = true,
				timelineIndex = 114,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "99f2e4ad-8ff4-b03c-8c60-80db416a8cf4",
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
									"fd4f4feb-fa5e-e183-a519-da64d1a078f3",
									true,
								},
								
								{
									"b25d206e-c7de-601b-aa72-0da81b68c32d",
									true,
								},
								
								{
									"f59863e7-f50c-bc28-912f-216ff5ef42ac",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_ReleaseRoyalGuard",
							uuid = "7f77ba32-f7e1-4a1c-90ec-f1fa1f4d2037",
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
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "fd4f4feb-fa5e-e183-a519-da64d1a078f3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "b25d206e-c7de-601b-aa72-0da81b68c32d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 1833,
							category = "Self",
							uuid = "f59863e7-f50c-bc28-912f-216ff5ef42ac",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 622,
				name = "[LPDU Tank] OT Stance OFF",
				timeRange = true,
				timelineIndex = 114,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "2ee8d74e-ee68-49c3-977d-0a7d5ccb2e5e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared",
				uuid = "fd49f10e-e161-9077-ae68-ba93a319fafe",
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
									"6d0a19af-28f0-4116-9095-04fa919a7420",
									true,
								},
								
								{
									"0630b33b-e622-e690-b579-cb12cd614655",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "efba37c1-3abd-7e14-96a6-0b221f422eb1",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "6d0a19af-28f0-4116-9095-04fa919a7420",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "0630b33b-e622-e690-b579-cb12cd614655",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 622,
				name = "[LPDU Tank] MT Provoke",
				timeRange = true,
				timelineIndex = 114,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "50a934a8-7792-b400-8d78-9abeca3002f9",
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
									"2aad9283-e1b6-f5d5-bd9f-8c424e4f93fb",
									true,
								},
								
								{
									"87784fd2-5c1a-a47e-a0ac-db218145b409",
									true,
								},
								
								{
									"32c80de2-9c6b-05cc-aa57-e3dfc170dc85",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_ShirkMouse",
							targetType = "Detection Target",
							uuid = "ec671772-7786-d260-b78a-0764693ffeca",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "2aad9283-e1b6-f5d5-bd9f-8c424e4f93fb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "87784fd2-5c1a-a47e-a0ac-db218145b409",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "f6e14874-e9ee-ebda-9eaa-a0a3532ec9d7",
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
									"f6e14874-e9ee-ebda-9eaa-a0a3532ec9d7",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "32c80de2-9c6b-05cc-aa57-e3dfc170dc85",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 622,
				name = "[LPDU Tank] OT Shirk",
				timeRange = true,
				timelineIndex = 114,
				timerStartOffset = -3,
				uuid = "8af19de9-d696-44da-af61-fcce0588bc0a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "80559e54-a4c5-5ec1-9d2f-c4aa10ce5292",
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
									"240e0b5a-9ce1-a99a-a4f3-e073039e8f09",
									true,
								},
								
								{
									"dbec10d5-8b19-406d-88fe-a3a25b33c9e2",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Hotbar_IronWill",
							uuid = "519dc56b-022d-4e17-9d4b-1fa09c53141f",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "240e0b5a-9ce1-a99a-a4f3-e073039e8f09",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "dbec10d5-8b19-406d-88fe-a3a25b33c9e2",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 622,
				name = "[LPDU PLD] MT Stance ON",
				timeRange = true,
				timelineIndex = 114,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "c48dd7d0-655e-3733-b147-8fe0d7d4dde4",
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
									"dc583d9a-0259-fc1e-a331-6ba01d295a0a",
									true,
								},
								
								{
									"2111bc69-8245-0f86-8770-c881cf0da1fd",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Hotbar_ReleaseIronWill",
							uuid = "ce25e4ac-4df3-acd7-a511-40bb22f8465a",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "dc583d9a-0259-fc1e-a331-6ba01d295a0a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "2111bc69-8245-0f86-8770-c881cf0da1fd",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 622,
				name = "[LPDU PLD] OT Stance OFF",
				timeRange = true,
				timelineIndex = 114,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "b3687742-2de5-eae1-bb2a-57d4f9b626e4",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "e2fdd369-9002-feb5-aba8-7f3b77cd39a4",
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
									"357bd333-4de9-b833-8a79-efb0ab946bf8",
									true,
								},
								
								{
									"fd0cd1c9-a8dc-4657-b6f5-6fae26f7ffbe",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Hotbar_Defiance",
							uuid = "47218326-78c6-708d-b3bd-7e9b66db9464",
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
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "357bd333-4de9-b833-8a79-efb0ab946bf8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "fd0cd1c9-a8dc-4657-b6f5-6fae26f7ffbe",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 622,
				name = "[LPDU WAR] MT Stance ON",
				timeRange = true,
				timelineIndex = 114,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "91ef3445-08ef-09c6-beb7-1bc4b4786981",
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
									"b936f4f7-f53a-cca8-ae2c-5b5afe7699ba",
									true,
								},
								
								{
									"72278d00-2521-8205-a4d7-f740d61fd7ab",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Hotbar_ReleaseDefiance",
							uuid = "94ba5836-b5dc-52d6-adac-8e7455dce441",
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
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "b936f4f7-f53a-cca8-ae2c-5b5afe7699ba",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "72278d00-2521-8205-a4d7-f740d61fd7ab",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 622,
				name = "[LPDU WAR] OT Stance OFF",
				timeRange = true,
				timelineIndex = 114,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "9f025df3-20ea-d772-80c0-d3aa9dc7e9a7",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "6e56fe0b-4be6-25ca-b1e0-3db13f8a0053",
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
									"4dc39d25-eeb7-5cf5-96f5-a6d5397ca1cf",
									true,
								},
								
								{
									"cf8a241a-a80d-95c5-9ba2-ca39423991e9",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Hotbar_Grit",
							uuid = "a3285a5a-6ec3-301b-836d-0b55bd299fe6",
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
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "4dc39d25-eeb7-5cf5-96f5-a6d5397ca1cf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "cf8a241a-a80d-95c5-9ba2-ca39423991e9",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 622,
				name = "[LPDU DRK] MT Stance ON",
				timeRange = true,
				timelineIndex = 114,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "b1b1b143-96ed-a228-9d24-1ef0e926c40e",
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
									"fec57cd7-3594-7131-9d89-0d7102632924",
									true,
								},
								
								{
									"a838fe97-0dd7-b54b-8cb0-94c31820dc73",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Hotbar_ReleaseGrit",
							uuid = "2deecb13-a834-5267-8053-bf2d63f5570a",
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
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "fec57cd7-3594-7131-9d89-0d7102632924",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "a838fe97-0dd7-b54b-8cb0-94c31820dc73",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 622,
				name = "[LPDU DRK] OT Stance OFF",
				timeRange = true,
				timelineIndex = 114,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "b34dc1f6-43b7-e4a4-9a8b-ba9470c81ab8",
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
				name = "Shared",
				uuid = "ba3a5219-6d47-e289-850a-2aedd7efd42c",
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
									"df5bedb7-591f-9a23-877d-63e690f0aa9d",
									true,
								},
								
								{
									"48c13c5f-20ad-2994-a40d-643844513069",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Sprint",
							uuid = "427a49d8-522d-e460-a5f7-e9ec3e939a18",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "df5bedb7-591f-9a23-877d-63e690f0aa9d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "48c13c5f-20ad-2994-a40d-643844513069",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 637.1,
				name = "[LPDU Tank] Sprint Trio",
				timeRange = true,
				timelineIndex = 117,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "431280e6-d79d-a395-9ddd-af6f1ae56a99",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker",
				uuid = "cebbb69d-e9fb-25c7-a225-e296e4ec4adf",
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
									"18a45678-0cf2-81af-bf21-ca574c8f14d8",
									true,
								},
								
								{
									"02ce1b0c-d898-8b87-892c-834bc22d8b99",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "562252f8-17d4-a205-af3a-ad7bd70fdaef",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "18a45678-0cf2-81af-bf21-ca574c8f14d8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "02ce1b0c-d898-8b87-892c-834bc22d8b99",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 637.1,
				name = "[LPDU Tank] HoS Self Trio",
				timeRange = true,
				timelineIndex = 117,
				timerEndOffset = -2,
				timerStartOffset = -5,
				uuid = "613101f3-404b-d567-88db-0edcdecc7ddd",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "f108d86f-bd33-7722-84b5-d34914e32e9d",
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
									"a2cec7dc-8a24-e263-ba4f-2b651b004c04",
									true,
								},
								
								{
									"627366cb-25e9-d9ac-9f3a-81d5342698d6",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HolySheltron",
							uuid = "88e678ef-cd16-9788-b924-8390f3a8ade5",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "a2cec7dc-8a24-e263-ba4f-2b651b004c04",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "627366cb-25e9-d9ac-9f3a-81d5342698d6",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 637.1,
				name = "[LPDU PLD] Sheltron/Intervention Self Trio",
				timeRange = true,
				timelineIndex = 117,
				timerEndOffset = -2,
				timerStartOffset = -5,
				uuid = "79b09215-84e5-d2fc-9249-e7b05c77c3f8",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "3d0c627e-2b9b-5996-b9ef-e1e1b69b7659",
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
									"603c1030-ca40-27b6-aa96-2293539e4b89",
									true,
								},
								
								{
									"01ea4d94-73af-7cae-990b-deab4e43ffd4",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Bloodwhetting",
							uuid = "e4e320f4-c4d2-2a94-b19f-f081064a6c06",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "603c1030-ca40-27b6-aa96-2293539e4b89",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "01ea4d94-73af-7cae-990b-deab4e43ffd4",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 637.1,
				name = "[LPDU WAR] Raw Intuition Self Trio",
				timeRange = true,
				timelineIndex = 117,
				timerEndOffset = -2,
				timerStartOffset = -5,
				uuid = "94f9e28c-741b-17d2-9ab0-a64883b68cee",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "a3e6e6e5-266b-c886-93be-7dd1ab97269d",
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
									"d7c5c294-b953-5994-b443-ac816a483684",
									true,
								},
								
								{
									"352b6fd3-9f43-ceed-924a-88edef258f13",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf",
							uuid = "4305657c-a6cc-a70d-b901-ed9daf21a5ea",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "d7c5c294-b953-5994-b443-ac816a483684",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "352b6fd3-9f43-ceed-924a-88edef258f13",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 637.1,
				name = "[LPDU DRK] TBN Self Trio",
				timeRange = true,
				timelineIndex = 117,
				timerEndOffset = -2,
				timerStartOffset = -5,
				uuid = "8cdf60c7-6909-1f51-8a91-b3614501bb1b",
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
				name = "Gunbreaker",
				uuid = "c6c109dd-e3b7-cb1b-ab27-f64bce023564",
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
									"ae21b2f8-377d-d5fc-8970-adfbf2406c50",
									true,
								},
								
								{
									"1e746580-cc81-d45e-b717-2d7226a91bbe",
									true,
								},
								
								{
									"95562ae2-db33-18dc-8dc3-626ffcbaa8d2",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "0d566bc2-ec15-a0cc-952e-a827e73bd6cf",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "ae21b2f8-377d-d5fc-8970-adfbf2406c50",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "1e746580-cc81-d45e-b717-2d7226a91bbe",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							partyTargetSubType = "Furthest",
							uuid = "95562ae2-db33-18dc-8dc3-626ffcbaa8d2",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 651.4,
				name = "[LPDU Tank] HoL Trio",
				timeRange = true,
				timelineIndex = 122,
				timerEndOffset = -11.5,
				timerStartOffset = -14.5,
				uuid = "cfb759cd-7f3c-c240-a9db-ea8d7d863168",
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
									"7c686fff-d4fd-95c1-9345-eb7d80f8003f",
									true,
								},
								
								{
									"4faf85bf-fe44-1d0c-a7ba-1f1dec9b3ba2",
									true,
								},
								
								{
									"0b5f4a9e-f643-5d6c-866c-378a65a30b62",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_RoyalGuard",
							uuid = "8dce8d18-9a08-fd49-b6ca-1e5d60cdc7d8",
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
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "7c686fff-d4fd-95c1-9345-eb7d80f8003f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "4faf85bf-fe44-1d0c-a7ba-1f1dec9b3ba2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "0b5f4a9e-f643-5d6c-866c-378a65a30b62",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 651.4,
				name = "[LPDU Tank] OT Stance ON",
				timeRange = true,
				timelineIndex = 122,
				timerEndOffset = -4,
				timerStartOffset = -7,
				uuid = "5f3a85c9-9384-cefe-ae06-9701e0b5ee67",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared",
				uuid = "9d219f65-868f-5578-8d28-82ba1b0113f3",
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
									"fbc14e42-9432-3f44-ada2-2014c26d0203",
									true,
								},
								
								{
									"936b936f-9d62-7c51-b9f7-9512b37540ca",
									true,
								},
								
								{
									"c6b53243-9815-c226-a176-b2e32abf41e0",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "1d9eaa1c-4ecf-aec7-bd79-fb1efd6ae3a8",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "fbc14e42-9432-3f44-ada2-2014c26d0203",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "936b936f-9d62-7c51-b9f7-9512b37540ca",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 5,
							name = "Reprisal range <=5y",
							partyTargetType = "Detection Target",
							uuid = "d91112e5-8245-15b6-88fe-6b307fa6a5a9",
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
									"d91112e5-8245-15b6-88fe-6b307fa6a5a9",
									true,
								},
							},
							filterTargetType = "Enemy",
							name = "Enemy in Reprisal range",
							uuid = "c6b53243-9815-c226-a176-b2e32abf41e0",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 651.4,
				name = "[LPDU Tank] MT Reprisal",
				timeRange = true,
				timelineIndex = 122,
				timerEndOffset = -6,
				timerStartOffset = -9,
				uuid = "5ee5840e-6733-db22-afcc-422935e5a17d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "d1d755ab-a012-989f-9acc-f53f31fe6b5e",
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
									"783764a5-5a45-41bb-bb77-824fe58755aa",
									true,
								},
								
								{
									"6f98e89a-829d-27f9-89a8-9f658b3a3a6b",
									true,
								},
								
								{
									"5b943e17-cd78-96ae-b3ed-76d143d268ca",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_DivineVeil",
							uuid = "23e19c69-903a-10cc-b705-4c906bbb7c55",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "783764a5-5a45-41bb-bb77-824fe58755aa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "6f98e89a-829d-27f9-89a8-9f658b3a3a6b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							partyTargetSubType = "Furthest",
							uuid = "5b943e17-cd78-96ae-b3ed-76d143d268ca",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 651.4,
				name = "[LPDU PLD] DivineVeil Trio",
				timeRange = true,
				timelineIndex = 122,
				timerEndOffset = -11.5,
				timerStartOffset = -14.5,
				uuid = "6aaa6899-a070-3b73-82d0-12cfb01d7087",
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
									"96db80dd-da21-eb9d-9e79-d6533b455baf",
									true,
								},
								
								{
									"cbc016aa-6ea5-c76b-a55c-4abbc0efa70e",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Hotbar_IronWill",
							uuid = "86d51c92-6813-1c97-aab4-b586890f7e8c",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "96db80dd-da21-eb9d-9e79-d6533b455baf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "cbc016aa-6ea5-c76b-a55c-4abbc0efa70e",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 651.4,
				name = "[LPDU PLD] OT Stance ON",
				timeRange = true,
				timelineIndex = 122,
				timerEndOffset = -4,
				timerStartOffset = -7,
				uuid = "9f611c9f-30e6-7e5e-9380-5545dce96f45",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "1262e0e5-c110-2faa-979c-feb8e523e0c8",
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
									"eaeaf73d-01b7-1c46-b33e-20daa3912916",
									true,
								},
								
								{
									"f6232f89-567c-7b09-98a5-299817d57ddf",
									true,
								},
								
								{
									"a17d3b3e-fbf8-be9a-ae8d-39466c099c11",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_ShakeItOff",
							uuid = "450bceca-654b-e873-8567-b5339e31dc10",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "eaeaf73d-01b7-1c46-b33e-20daa3912916",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "f6232f89-567c-7b09-98a5-299817d57ddf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							partyTargetSubType = "Furthest",
							uuid = "a17d3b3e-fbf8-be9a-ae8d-39466c099c11",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 651.4,
				name = "[LPDU WAR] ShakeItOff Trio",
				timeRange = true,
				timelineIndex = 122,
				timerEndOffset = -11.5,
				timerStartOffset = -14.5,
				uuid = "e1b29c3d-f3e9-e019-8a26-e3bfc290e4fa",
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
									"86ec93b9-4dcd-724f-ba77-07b041eaaaa1",
									true,
								},
								
								{
									"e0c78b4b-0163-15c4-a263-451989d2c9a5",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Hotbar_Defiance",
							uuid = "663f9769-456f-815a-9b91-3f781a6241fa",
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
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "86ec93b9-4dcd-724f-ba77-07b041eaaaa1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "e0c78b4b-0163-15c4-a263-451989d2c9a5",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 651.4,
				name = "[LPDU WAR] OT Stance ON",
				timeRange = true,
				timelineIndex = 122,
				timerEndOffset = -4,
				timerStartOffset = -7,
				uuid = "45bc1a37-4c10-6cc8-b817-3bfe9306a197",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "b03fa5de-84ac-af05-8a56-4f2284778275",
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
									"36b3541f-e463-5486-9cc5-d62cc5e9f33c",
									true,
								},
								
								{
									"dfbadcb8-acbd-b613-a91c-eb3dddc99b66",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Hotbar_Grit",
							uuid = "ea9fec76-7b4f-4814-b295-1c8b2a2632bd",
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
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "36b3541f-e463-5486-9cc5-d62cc5e9f33c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "dfbadcb8-acbd-b613-a91c-eb3dddc99b66",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 651.4,
				name = "[LPDU DRK] OT Stance ON",
				timeRange = true,
				timelineIndex = 122,
				timerEndOffset = -4,
				timerStartOffset = -7,
				uuid = "e3e859d3-8234-83d9-8e8b-1632cf5621da",
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
				name = "Gunbreaker",
				uuid = "e5aead24-7833-0d4e-b241-9493efaa69b5",
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
									"00c342c3-260e-e193-8580-c4b4ea547e7f",
									true,
								},
								
								{
									"e4f7cee4-419f-10c3-8f9f-f3e26134aec7",
									true,
								},
								
								{
									"ebe26ff3-eb4c-7b2d-9d1d-55bfcf549ce8",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_RoyalGuard",
							uuid = "a1c15e01-9539-4577-a894-613eda7f3b12",
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
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "00c342c3-260e-e193-8580-c4b4ea547e7f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "e4f7cee4-419f-10c3-8f9f-f3e26134aec7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "ebe26ff3-eb4c-7b2d-9d1d-55bfcf549ce8",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 660.4,
				name = "[LPDU Tank] OT Stance ON",
				timeRange = true,
				timelineIndex = 123,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "db80f10b-6bf3-812e-a1fd-d05a5b5e3b42",
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
									"dfd46446-e3e9-7553-a092-1aeaf2e85be7",
									true,
								},
								
								{
									"279e01e1-3401-a058-bd79-a919e42bb92d",
									true,
								},
								
								{
									"8bcbfa7e-bc68-8922-a8d0-c125ebe5bf18",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumMouse",
							targetType = "Detection Target",
							uuid = "514910f6-949e-55dd-9ac4-7356e7a0ca9a",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "dfd46446-e3e9-7553-a092-1aeaf2e85be7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "279e01e1-3401-a058-bd79-a919e42bb92d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "2e53374f-1b93-7aa9-b494-b4f312d2062a",
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
									"2e53374f-1b93-7aa9-b494-b4f312d2062a",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "8bcbfa7e-bc68-8922-a8d0-c125ebe5bf18",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 660.4,
				name = "[LPDU Tank] OT HoS OT",
				timeRange = true,
				timelineIndex = 123,
				timerStartOffset = -3,
				uuid = "5363cbeb-dbe2-cfe5-a9d5-f06b4dc8d3a4",
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
									"cbf79360-4da0-9e23-b524-59d619b0765e",
									true,
								},
								
								{
									"e5a5270a-f657-0a67-bfc7-fee51633165c",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "9cdfd953-ac29-5ecb-ad7e-5463dfd7a892",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "cbf79360-4da0-9e23-b524-59d619b0765e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "e5a5270a-f657-0a67-bfc7-fee51633165c",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 660.4,
				name = "[LPDU Tank] MT HoS Self",
				timeRange = true,
				timelineIndex = 123,
				timerStartOffset = -3,
				uuid = "8e660e0c-4a9f-8e00-81a6-d4fcf95d6be4",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "7f4717cd-3865-f305-8039-55962a9f8daf",
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
									"25259570-d8e6-7350-9024-952118e2a43a",
									true,
								},
								
								{
									"d6a71b25-d4bb-5dfc-8251-2707f70901fa",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Hotbar_IronWill",
							uuid = "1f1207bb-e0d2-9ed4-b1a1-455fd19137c0",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "25259570-d8e6-7350-9024-952118e2a43a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "d6a71b25-d4bb-5dfc-8251-2707f70901fa",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 660.4,
				name = "[LPDU PLD] OT Stance ON",
				timeRange = true,
				timelineIndex = 123,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "35681dda-5ad4-1874-9865-9dd02079643c",
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
									"027d6080-7c62-1981-99ed-b3141ac6a705",
									true,
								},
								
								{
									"ee59e06e-c813-5efb-bb3d-d3badc25dc13",
									true,
								},
								
								{
									"45f5c265-3303-29ad-9761-84bffbd9efa5",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_InterventionMouse",
							targetType = "Detection Target",
							uuid = "110326ea-dc18-3a09-aabd-c4e540e2f4c3",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "027d6080-7c62-1981-99ed-b3141ac6a705",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "ee59e06e-c813-5efb-bb3d-d3badc25dc13",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "b6270816-db3c-33d0-9d78-948da6d8b6be",
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
									"b6270816-db3c-33d0-9d78-948da6d8b6be",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "45f5c265-3303-29ad-9761-84bffbd9efa5",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 660.4,
				name = "[LPDU PLD] OT Sheltron/Intervention OT",
				timeRange = true,
				timelineIndex = 123,
				timerStartOffset = -3,
				uuid = "2238642b-3304-9400-902c-6732b7064254",
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
									"b4e347d4-9cd2-ff58-a16f-6e2c9c18b125",
									true,
								},
								
								{
									"99cd0464-d915-b69e-a4f3-dc074041a84e",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HolySheltron",
							uuid = "59f6985c-87ee-9b42-bdbf-03aea0eb163b",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "b4e347d4-9cd2-ff58-a16f-6e2c9c18b125",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "99cd0464-d915-b69e-a4f3-dc074041a84e",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 660.4,
				name = "[LPDU PLD] MT Sheltron/Intervention Self",
				timeRange = true,
				timelineIndex = 123,
				timerStartOffset = -3,
				uuid = "18d0d900-4ebf-8094-8391-4a2b993af5c5",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "9254ed02-f944-95b4-8037-954cb2450fa1",
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
									"f9bef681-0598-4f1d-b458-a3bc5db5953d",
									true,
								},
								
								{
									"136af1be-e90b-0cde-abbc-8bea22df0b52",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Hotbar_Defiance",
							uuid = "840b7868-5207-c1f0-af2b-32ac565b9d71",
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
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "f9bef681-0598-4f1d-b458-a3bc5db5953d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "136af1be-e90b-0cde-abbc-8bea22df0b52",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 660.4,
				name = "[LPDU WAR] OT Stance ON",
				timeRange = true,
				timelineIndex = 123,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "66d45378-2351-8aa2-ac33-f976cca9a312",
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
									"22a5fd65-bc83-1718-bbe1-ea41323b5225",
									true,
								},
								
								{
									"8d6d49b6-d476-e25d-8198-f8b62ae4c1e2",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Bloodwhetting",
							uuid = "bdad572c-d5c5-e6b7-8567-3f6783bf08e8",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "22a5fd65-bc83-1718-bbe1-ea41323b5225",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "8d6d49b6-d476-e25d-8198-f8b62ae4c1e2",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 660.4,
				name = "[LPDU WAR] MT Raw Intuition Self",
				timeRange = true,
				timelineIndex = 123,
				timerStartOffset = -3,
				uuid = "a8845fac-0bfc-0ad6-b7d2-a0cab85a3ccd",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "47c35fc8-79cf-2791-9ba7-71a0b72550ca",
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
									"60d1fe7a-e3b7-fdcb-aadf-e6046ae72c60",
									true,
								},
								
								{
									"a2b99e31-2560-9663-bbfd-747af77ef24d",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Hotbar_Grit",
							uuid = "9b036988-77c1-3e7a-8ac7-2389269600c7",
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
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "60d1fe7a-e3b7-fdcb-aadf-e6046ae72c60",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "a2b99e31-2560-9663-bbfd-747af77ef24d",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 660.4,
				name = "[LPDU DRK] OT Stance ON",
				timeRange = true,
				timelineIndex = 123,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "39cc5651-45d9-6c3e-ad12-6404678da751",
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
									"7617b559-b33c-bd4d-b7a7-d571c4b32f52",
									true,
								},
								
								{
									"0a9be18b-030b-56fc-98dd-216caed35d39",
									true,
								},
								
								{
									"f73f0bd6-840e-f5e5-abec-e2e297ca7eab",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightMouse",
							targetType = "Detection Target",
							uuid = "adcda081-9c9c-865a-93ef-f1caa70d4304",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "7617b559-b33c-bd4d-b7a7-d571c4b32f52",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "0a9be18b-030b-56fc-98dd-216caed35d39",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "b6e3ef70-5a1d-42e6-b886-a4239e38e524",
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
									"b6e3ef70-5a1d-42e6-b886-a4239e38e524",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "f73f0bd6-840e-f5e5-abec-e2e297ca7eab",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 660.4,
				name = "[LPDU DRK] OT TBN OT",
				timeRange = true,
				timelineIndex = 123,
				timerStartOffset = -3,
				uuid = "ff854da2-b39f-2449-ab74-421d872a8fe9",
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
									"1d6be8f6-3678-05bd-9ffa-76cf0bfb5c25",
									true,
								},
								
								{
									"bdfc6b10-8385-670a-87d0-79c312eca96d",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf",
							uuid = "986b3abb-58b0-ebaa-8f26-cb5654fa8e9f",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "1d6be8f6-3678-05bd-9ffa-76cf0bfb5c25",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "bdfc6b10-8385-670a-87d0-79c312eca96d",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 660.4,
				name = "[LPDU DRK] MT TBN Self",
				timeRange = true,
				timelineIndex = 123,
				timerStartOffset = -3,
				uuid = "0521b444-bd6a-8ea5-8be2-e32b644ca8e8",
				version = 2,
			},
		},
	},
	[124] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker",
				uuid = "e380d194-602a-9833-911e-aee12efd78b8",
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
									"3691972f-7f3e-f5c7-800a-06f7e81894f7",
									true,
								},
								
								{
									"770572f1-c8e2-d693-b16a-2331445052d5",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_AuroraSelf",
							uuid = "0d9d3f61-418c-a26c-9c8a-029e2f738b64",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "3691972f-7f3e-f5c7-800a-06f7e81894f7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "770572f1-c8e2-d693-b16a-2331445052d5",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 665.4,
				name = "[LPDU Tank] MT Aurora Self",
				timeRange = true,
				timelineIndex = 124,
				timerEndOffset = -15,
				timerStartOffset = -18,
				uuid = "78691ce4-2e98-6f3c-8102-7b5386a198b0",
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
									"a1005248-f326-dfce-a19c-76bec5bb12d8",
									true,
								},
								
								{
									"416e1d92-3b63-2833-bd46-76352f5f1ad2",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Nebula",
							uuid = "e9f70450-7571-6159-8cba-5b593ea028e5",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "a1005248-f326-dfce-a19c-76bec5bb12d8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "416e1d92-3b63-2833-bd46-76352f5f1ad2",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 665.4,
				name = "[LPDU Tank] MT Nebula",
				timeRange = true,
				timelineIndex = 124,
				timerEndOffset = -11,
				timerStartOffset = -14,
				uuid = "44b913c1-6fc2-8737-aad9-90276cc447ee",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "2187cef7-c180-e38f-9624-e2dd1d2d6212",
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
									"92a5f030-9a95-0be7-a377-3fdfcb177b6a",
									true,
								},
								
								{
									"49ab3d8a-b09f-7df8-b02c-1df0c3dd3ace",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Guardian",
							uuid = "d713e6f8-9fc0-b1be-8d92-ee90c91cf17b",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "92a5f030-9a95-0be7-a377-3fdfcb177b6a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "49ab3d8a-b09f-7df8-b02c-1df0c3dd3ace",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 665.4,
				name = "[LPDU PLD] MT Guardian",
				timeRange = true,
				timelineIndex = 124,
				timerEndOffset = -11,
				timerStartOffset = -14,
				uuid = "83c204a3-c8a3-573e-b50f-6a24eae0a7eb",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "9f1e4879-86b2-4768-a756-11fae5b72571",
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
									"f97d32ae-228a-0a8e-a8b9-6a6f3890a2c4",
									true,
								},
								
								{
									"c8162ec5-5e96-6947-9269-b20adb55fa5e",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Equilibrium",
							uuid = "a96e434b-74ef-9bad-b3f1-b36b3fd656a2",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "f97d32ae-228a-0a8e-a8b9-6a6f3890a2c4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "c8162ec5-5e96-6947-9269-b20adb55fa5e",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 665.4,
				name = "[LPDU WAR] MT Equilibrium Self",
				timeRange = true,
				timelineIndex = 124,
				timerEndOffset = -15,
				timerStartOffset = -18,
				uuid = "e5e610ba-1505-7a43-8513-e1ab8a2658b5",
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
									"50d02300-0e11-2aaf-8a5a-9d9e926705da",
									true,
								},
								
								{
									"e3f36ab2-b7af-ae2b-8649-f09c860b02eb",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Damnation",
							uuid = "8bd33a6b-73b9-d347-a961-74bdeb568978",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "50d02300-0e11-2aaf-8a5a-9d9e926705da",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "e3f36ab2-b7af-ae2b-8649-f09c860b02eb",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 665.4,
				name = "[LPDU WAR] MT Damnation",
				timeRange = true,
				timelineIndex = 124,
				timerEndOffset = -11,
				timerStartOffset = -14,
				uuid = "109ffd4a-1601-0a5f-9bfa-13f384cf55b4",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "9721471b-34d7-75bd-9181-01d7f531522e",
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
									"b652205e-9b7a-e62a-81eb-c960dec680c0",
									true,
								},
								
								{
									"8cf867b9-1694-c5e9-8c6f-ae483c9b9e37",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_ShadowedVigil",
							uuid = "580c1874-baa5-ee54-b46b-7442bd9a9b95",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "b652205e-9b7a-e62a-81eb-c960dec680c0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "8cf867b9-1694-c5e9-8c6f-ae483c9b9e37",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 665.4,
				name = "[LPDU DRK] MT ShadowedVigil",
				timeRange = true,
				timelineIndex = 124,
				timerEndOffset = -11,
				timerStartOffset = -14,
				uuid = "19ab52c1-789f-5134-a158-38689c1a8d0a",
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
				name = "Gunbreaker",
				uuid = "679efaf8-6d61-68b3-93c5-604e33857df6",
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
									"43f9a251-87ff-91c1-997e-cdeb2da2ef4a",
									true,
								},
								
								{
									"b15f58bd-47ef-4e1a-9bcb-02fd93c0eb90",
									true,
								},
								
								{
									"308f8144-2f8d-1cff-8cca-6b050646cc1c",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_RoyalGuard",
							uuid = "63e3491a-5e81-8870-ba86-5e1d41677a65",
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
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "43f9a251-87ff-91c1-997e-cdeb2da2ef4a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "b15f58bd-47ef-4e1a-9bcb-02fd93c0eb90",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "308f8144-2f8d-1cff-8cca-6b050646cc1c",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 673.4,
				name = "[LPDU Tank] OT Stance ON",
				timeRange = true,
				timelineIndex = 125,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "2bec73ea-10f2-3b45-bd82-b8aa9eec5e16",
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
									"e5053462-c598-4a6b-b266-e3a2c89f634e",
									true,
								},
								
								{
									"5ea7d5a4-a737-e13a-ba75-80a93d03c08a",
									true,
								},
								
								{
									"960f100e-4a1f-420f-8ca0-f3aba770f7c7",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_ReleaseRoyalGuard",
							uuid = "82fe0c37-02e2-5a1d-b702-bfa71fc44792",
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
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "e5053462-c598-4a6b-b266-e3a2c89f634e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "5ea7d5a4-a737-e13a-ba75-80a93d03c08a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 1833,
							category = "Self",
							uuid = "960f100e-4a1f-420f-8ca0-f3aba770f7c7",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 673.4,
				name = "[LPDU Tank] MT Stance OFF",
				timeRange = true,
				timelineIndex = 125,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "116072b1-0b37-b022-9f62-ecb6d586821c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared",
				uuid = "dcc1d911-c0ba-bb53-90d0-84eb59d3f184",
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
									"2fbf8f1b-3c82-1d8b-b3ce-3162b9c2d61e",
									true,
								},
								
								{
									"e101759b-1527-0b93-82b1-bdef1abcd773",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "3d1dba8e-f7eb-b87c-a56b-630d32599329",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "2fbf8f1b-3c82-1d8b-b3ce-3162b9c2d61e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "e101759b-1527-0b93-82b1-bdef1abcd773",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 673.4,
				name = "[LPDU Tank] OT Voke",
				timeRange = true,
				timelineIndex = 125,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "191c43dd-b4e5-1803-9116-a2d9fc6534cb",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "5b3c12ed-7fb1-152c-8fb4-878bb9d022f5",
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
									"2955b028-685c-c439-877e-bde2f0af7fe7",
									true,
								},
								
								{
									"d6541fb4-4659-2dd8-a6aa-97cfeee7d56f",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Hotbar_IronWill",
							uuid = "d7776f41-516b-894f-8ae3-ba7a1d5e23c8",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "2955b028-685c-c439-877e-bde2f0af7fe7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "d6541fb4-4659-2dd8-a6aa-97cfeee7d56f",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 673.4,
				name = "[LPDU PLD] OT Stance ON",
				timeRange = true,
				timelineIndex = 125,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "eb6a8547-29e8-1b7d-95dd-69d49ed62376",
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
									"422e5236-d0a2-2b96-a8fb-4aa3d504e587",
									true,
								},
								
								{
									"c470b007-dcc7-a74e-855f-62657cdc628d",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Hotbar_ReleaseIronWill",
							uuid = "334796b9-c438-4e79-8dec-8880f8782425",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "422e5236-d0a2-2b96-a8fb-4aa3d504e587",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "c470b007-dcc7-a74e-855f-62657cdc628d",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 673.4,
				name = "[LPDU PLD] MT Stance OFF",
				timeRange = true,
				timelineIndex = 125,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "49ee8f9e-a891-2791-b5e6-bcb412a55d74",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "94f1e306-e7cd-8c3c-8d7d-696a6e660304",
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
									"87aa5e69-823d-f3ed-ae2f-9f8d4c2b2f57",
									true,
								},
								
								{
									"f3d299a4-f84e-953b-9df9-3d6e8e344c39",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Hotbar_Defiance",
							uuid = "e87cd0e4-cb5b-bc7c-b33c-aa2b0442b7a6",
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
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "87aa5e69-823d-f3ed-ae2f-9f8d4c2b2f57",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "f3d299a4-f84e-953b-9df9-3d6e8e344c39",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 673.4,
				name = "[LPDU WAR] OT Stance ON",
				timeRange = true,
				timelineIndex = 125,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "30d5f671-2fc9-2541-b9d6-34cdb8d90734",
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
									"e9f76b92-e085-22f1-beeb-01be27ccd442",
									true,
								},
								
								{
									"ab3ed547-072a-20b4-9ffb-5b99a85313c1",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Hotbar_ReleaseDefiance",
							uuid = "37300662-eecd-193a-91ff-5e8f197b6abb",
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
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "e9f76b92-e085-22f1-beeb-01be27ccd442",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "ab3ed547-072a-20b4-9ffb-5b99a85313c1",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 673.4,
				name = "[LPDU WAR] MT Stance OFF",
				timeRange = true,
				timelineIndex = 125,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "2b9e9236-fd52-a0a4-aff8-75abe582d9a8",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "a15562a4-095c-6508-bea4-2ecfd0c2ca8b",
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
									"c0323f65-d03a-e685-9567-81cc39a3d96d",
									true,
								},
								
								{
									"ec252218-db66-251b-bfe1-c53be3a170ab",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Hotbar_Grit",
							uuid = "d0d0e09d-753a-5152-9097-89bce030123a",
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
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "c0323f65-d03a-e685-9567-81cc39a3d96d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "ec252218-db66-251b-bfe1-c53be3a170ab",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 673.4,
				name = "[LPDU DRK] OT Stance ON",
				timeRange = true,
				timelineIndex = 125,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "24548a61-4c32-6ce8-a962-abe99f1a32d7",
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
									"9ec5303d-f648-e9c3-9996-b33f070c357e",
									true,
								},
								
								{
									"2e2898cb-355b-6781-993d-6e820bcfb6e7",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Hotbar_ReleaseGrit",
							uuid = "c59df9ba-8314-831d-84b4-ef423ad45afc",
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
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "9ec5303d-f648-e9c3-9996-b33f070c357e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "2e2898cb-355b-6781-993d-6e820bcfb6e7",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 673.4,
				name = "[LPDU DRK] MT Stance OFF",
				timeRange = true,
				timelineIndex = 125,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "6ab89d89-7f99-ba3b-97cd-484c0f6c2b96",
				version = 2,
			},
		},
	},
	[130] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared",
				uuid = "eae62ecf-9b6b-5674-b6f0-feeb0502caf8",
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
									"e2459883-b7b8-5c15-880f-d91058c354cf",
									true,
								},
								
								{
									"03774fc8-bbcd-4bab-b6d1-fd0b6f214acd",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Sprint",
							uuid = "a93e7011-07b7-7641-875c-06a6d9618ad9",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "e2459883-b7b8-5c15-880f-d91058c354cf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "03774fc8-bbcd-4bab-b6d1-fd0b6f214acd",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 688.9,
				name = "[LPDU Tank] Sprint Trio",
				timeRange = true,
				timelineIndex = 130,
				timerEndOffset = 3,
				uuid = "9fc10dc8-9349-9bad-b88d-6dce523c588f",
				version = 2,
			},
		},
	},
	[131] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker",
				uuid = "1ea91cc0-8d06-7bde-a2b8-9bfb673a3e0e",
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
									"64255bdf-14e6-4f1f-9ca2-f2199fea9c38",
									true,
								},
								
								{
									"1698380a-afb3-a8e6-bd8d-bdc7b07c460c",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumMouse",
							targetSubType = "Lowest HP",
							targetType = "Party",
							uuid = "81d5e435-17ea-95b0-ba1e-9649ff884444",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "64255bdf-14e6-4f1f-9ca2-f2199fea9c38",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "1698380a-afb3-a8e6-bd8d-bdc7b07c460c",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 691.4,
				name = "[LPDU Tank] HoS Lowest Trio",
				timeRange = true,
				timelineIndex = 131,
				timerEndOffset = -3.9000000953674,
				timerStartOffset = -6.9000000953674,
				uuid = "607e2634-0c06-3f98-b619-ae57965a1e73",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "b873d9ef-baad-78e3-a1bd-5ca36cdcbb1e",
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
									"121c6035-82d6-2202-89ac-ff3a3f939c32",
									true,
								},
								
								{
									"29f6ccec-7119-aeed-b384-0be2aa6f2bc2",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_InterventionMouse",
							targetSubType = "Lowest HP",
							targetType = "Party",
							uuid = "ecd92132-11c4-4303-a7d9-b3b7f174bd9c",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "121c6035-82d6-2202-89ac-ff3a3f939c32",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "29f6ccec-7119-aeed-b384-0be2aa6f2bc2",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 691.4,
				name = "[LPDU PLD] Sheltron/Intervention Lowest Trio",
				timeRange = true,
				timelineIndex = 131,
				timerEndOffset = -3.9000000953674,
				timerStartOffset = -6.9000000953674,
				uuid = "25d99109-b58f-7b9e-b30a-aca1b0400ed9",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "6112e5e8-0d41-ecef-b4d3-4b94179cded6",
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
									"f45a06e3-d890-019a-8a98-25d433d082c7",
									true,
								},
								
								{
									"273bb2ee-f7f8-8b28-8c6e-15e798a72a03",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightMouse",
							targetSubType = "Lowest HP",
							targetType = "Party",
							uuid = "3b76fd35-3425-08dd-a1f0-5aef76d98fba",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "f45a06e3-d890-019a-8a98-25d433d082c7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "273bb2ee-f7f8-8b28-8c6e-15e798a72a03",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 691.4,
				name = "[LPDU DRK] TBN Lowest Trio",
				timeRange = true,
				timelineIndex = 131,
				timerEndOffset = -3.9000000953674,
				timerStartOffset = -6.9000000953674,
				uuid = "7981f7e3-7cf3-5d13-8bd9-ccf27b8099b8",
				version = 2,
			},
		},
	},
	[136] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared",
				uuid = "a23317e3-feb0-8009-b927-e6520f93aee6",
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
									"2924453a-9778-0648-98ac-dcc84a99f49a",
									true,
								},
								
								{
									"446a6515-48ce-8d8a-b051-c6beda1afd42",
									true,
								},
								
								{
									"3eb3d827-bf5b-98e3-a165-217c1aa6234f",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "d88d4d46-c617-2524-ac0f-4a678185a3bc",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "2924453a-9778-0648-98ac-dcc84a99f49a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "446a6515-48ce-8d8a-b051-c6beda1afd42",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 5,
							name = "Reprisal range <=5y",
							partyTargetType = "Detection Target",
							uuid = "7b33546a-9eff-fa2c-9e1f-46413106a398",
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
									"7b33546a-9eff-fa2c-9e1f-46413106a398",
									true,
								},
							},
							filterTargetType = "Enemy",
							name = "Enemy in Reprisal range",
							uuid = "3eb3d827-bf5b-98e3-a165-217c1aa6234f",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 708.5,
				name = "[LPDU Tank] OT Reprisal",
				timeRange = true,
				timelineIndex = 136,
				timerEndOffset = -2,
				timerStartOffset = -5,
				uuid = "5ea5610e-b3ce-58fc-9cef-4586ed33030f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker",
				uuid = "7d763685-908a-a495-b545-3929a251126e",
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
									"c042c16a-8195-5fb1-b969-01933ed70741",
									true,
								},
								
								{
									"47861f17-ede0-e9f3-81b4-ac41d61bfb9d",
									true,
								},
								
								{
									"f52b00af-f28d-9382-bac3-293ec8483e2b",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_RoyalGuard",
							uuid = "e88360d0-55e2-2d13-9a1d-371a08b248d1",
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
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "c042c16a-8195-5fb1-b969-01933ed70741",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "47861f17-ede0-e9f3-81b4-ac41d61bfb9d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "f52b00af-f28d-9382-bac3-293ec8483e2b",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 708.5,
				name = "[LPDU Tank] MT Stance ON",
				timeRange = true,
				timelineIndex = 136,
				timerEndOffset = 3,
				uuid = "a76432fb-71d2-d634-96a1-a06b13f1fd45",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "32e2c776-379b-c85d-913d-2fffbe09de8a",
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
									"fd65e79b-7a0f-503f-a794-3d6173be9c8d",
									true,
								},
								
								{
									"e927a0ca-6f06-c1bd-a2fc-c2c22a9e5a46",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Hotbar_IronWill",
							uuid = "3ede524f-770f-80dd-add8-7c587f99d4fa",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "fd65e79b-7a0f-503f-a794-3d6173be9c8d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "e927a0ca-6f06-c1bd-a2fc-c2c22a9e5a46",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 708.5,
				name = "[LPDU PLD] MT Stance ON",
				timeRange = true,
				timelineIndex = 136,
				timerEndOffset = 3,
				uuid = "294439a4-4f40-c468-b038-b226bb4e02f6",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "c78b5a72-031c-713a-89a4-a71595748501",
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
									"7fe227f5-2d9c-8717-a60a-fd01d089436e",
									true,
								},
								
								{
									"a21d2456-4cf3-33dd-ab53-9f1ef6743182",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Hotbar_Defiance",
							uuid = "8ad6801e-8c4a-94d1-8d91-519d14fbc37c",
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
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "7fe227f5-2d9c-8717-a60a-fd01d089436e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "a21d2456-4cf3-33dd-ab53-9f1ef6743182",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 708.5,
				name = "[LPDU WAR] MT Stance ON",
				timeRange = true,
				timelineIndex = 136,
				timerEndOffset = 3,
				uuid = "ba80ddd5-9007-2c59-bd28-08360bdd30e5",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "dbc60953-ba63-584a-aa6e-20ee9a792b44",
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
									"b9db043f-e1ca-f1db-bc38-02f5be5d878d",
									true,
								},
								
								{
									"7a611fb3-ab60-0261-838c-a7e8138e6bd6",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Hotbar_Grit",
							uuid = "ead891bb-b4ee-2dc9-98c6-a3cf604a4990",
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
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "b9db043f-e1ca-f1db-bc38-02f5be5d878d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "7a611fb3-ab60-0261-838c-a7e8138e6bd6",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 708.5,
				name = "[LPDU DRK] MT Stance ON",
				timeRange = true,
				timelineIndex = 136,
				timerEndOffset = 3,
				uuid = "a3d7589a-5ade-659e-a4d8-9edd041b2262",
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
				name = "Shared",
				uuid = "d32dcd30-a444-b913-87c9-c6e038deff93",
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
									"6ca4d82c-ab15-1369-9b63-a7d3c6178537",
									true,
								},
								
								{
									"03c54f6a-26e2-7f9b-a47d-7517455b71c6",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Rampart",
							uuid = "ddd6fa84-9802-8f5f-a264-22e8443560d5",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "6ca4d82c-ab15-1369-9b63-a7d3c6178537",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "03c54f6a-26e2-7f9b-a47d-7517455b71c6",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 721.5,
				name = "[LPDU Tank] OT Rampart",
				timeRange = true,
				timelineIndex = 139,
				timerEndOffset = -15.5,
				timerStartOffset = -18.5,
				uuid = "dc490565-2a20-232b-916a-deada987fe66",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker",
				uuid = "ca663853-15af-bfe0-9685-f7785950dc1d",
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
									"95acc9b1-0f65-ad87-b780-862b7685705f",
									true,
								},
								
								{
									"cce90ec7-c0e0-a471-ae7c-2ec07d8bca94",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_AuroraSelf",
							uuid = "00a60ad5-020c-b47f-aaa8-3829acb9b95f",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "95acc9b1-0f65-ad87-b780-862b7685705f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "cce90ec7-c0e0-a471-ae7c-2ec07d8bca94",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 721.5,
				name = "[LPDU Tank] OT Aurora Self",
				timeRange = true,
				timelineIndex = 139,
				timerEndOffset = -9,
				timerStartOffset = -12,
				uuid = "af4ed0d3-f163-2645-9897-d67bb0bc77f9",
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
									"308c650e-606c-2679-922c-3876845199fe",
									true,
								},
								
								{
									"3a425846-98a9-ae0e-8ef4-794ec4f440d5",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							uuid = "278a4711-3b75-7bc2-a123-43788703a0ee",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "308c650e-606c-2679-922c-3876845199fe",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "3a425846-98a9-ae0e-8ef4-794ec4f440d5",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 721.5,
				name = "[LPDU Tank] OT Camo",
				timeRange = true,
				timelineIndex = 139,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "9ca6e14a-f514-0d4d-bf89-95dca1b93cf3",
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
									"02dc7e35-e71b-39db-be11-777866a19de4",
									true,
								},
								
								{
									"437b85b5-f40f-220b-9a7a-0a10787fbb19",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "7f617fc1-3e9c-4215-aa76-085cc37b6445",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "02dc7e35-e71b-39db-be11-777866a19de4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "437b85b5-f40f-220b-9a7a-0a10787fbb19",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 721.5,
				name = "[LPDU Tank] OT HoS Self",
				timeRange = true,
				timelineIndex = 139,
				timerEndOffset = -3.5,
				timerStartOffset = -6.5,
				uuid = "4e312a8c-3269-8b21-b489-ef28f4ba15ca",
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
									"0c859112-8480-d73f-a44a-a44c93027dc4",
									true,
								},
								
								{
									"0c597af4-8228-6061-aa1e-fb281ac76505",
									true,
								},
								
								{
									"b5b546ab-d2c8-6d54-baf6-9e5c9c93eb00",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumMouse",
							targetType = "Detection Target",
							uuid = "d3b44abe-c3d9-2fb2-beea-dcbbf15e3fe2",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "0c859112-8480-d73f-a44a-a44c93027dc4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "0c597af4-8228-6061-aa1e-fb281ac76505",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "e25f0928-f6c0-3818-9277-1c08aab750c6",
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
									"e25f0928-f6c0-3818-9277-1c08aab750c6",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "b5b546ab-d2c8-6d54-baf6-9e5c9c93eb00",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 721.5,
				name = "[LPDU Tank] MT HoS OT",
				timeRange = true,
				timelineIndex = 139,
				timerEndOffset = -3.5,
				timerStartOffset = -6.5,
				uuid = "97109c3f-8881-7c05-bcc7-7a9c6c8ee0e3",
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
									"b31535b8-6c05-73de-99ce-e883edc33bf1",
									true,
								},
								
								{
									"9a94b562-79a4-0d3a-bbfe-f6333f282128",
									true,
								},
								
								{
									"10baa564-f2a3-8a8e-8a41-f9e32fffdfe4",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_ReleaseRoyalGuard",
							uuid = "afa6fadf-3ff4-4394-a96a-bdc8384700af",
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
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "b31535b8-6c05-73de-99ce-e883edc33bf1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "9a94b562-79a4-0d3a-bbfe-f6333f282128",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 1833,
							category = "Self",
							uuid = "10baa564-f2a3-8a8e-8a41-f9e32fffdfe4",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 721.5,
				name = "[LPDU Tank] OT Stance OFF",
				timeRange = true,
				timelineIndex = 139,
				timerEndOffset = 3,
				uuid = "d501a7dc-1888-3bca-b67d-a1df0bc51ee6",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "24c6a4b0-3a3f-1ef3-864b-db167f52e4e7",
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
									"14f5c30b-0699-13ef-82c0-0b46301029ae",
									true,
								},
								
								{
									"20e40000-d19c-df26-8eab-2ed9dbe6ae69",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Bulwark",
							uuid = "b16171ee-e188-04a6-8140-dafaa94e1775",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "14f5c30b-0699-13ef-82c0-0b46301029ae",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "20e40000-d19c-df26-8eab-2ed9dbe6ae69",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 721.5,
				name = "[LPDU PLD] OT Bulwark",
				timeRange = true,
				timelineIndex = 139,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "a7411d85-0249-6514-b4f2-bb2254c2ce2f",
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
									"a601ad12-47b2-333a-8a41-187ecda174ce",
									true,
								},
								
								{
									"36115d75-5e46-f443-8a59-95afecbaea2c",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HolySheltron",
							uuid = "28dbc40c-ec60-b367-88a9-b57d6737d739",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "a601ad12-47b2-333a-8a41-187ecda174ce",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "36115d75-5e46-f443-8a59-95afecbaea2c",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 721.5,
				name = "[LPDU PLD] OT Sheltron/Intervention Self",
				timeRange = true,
				timelineIndex = 139,
				timerEndOffset = -3.5,
				timerStartOffset = -6.5,
				uuid = "92433f91-024b-c446-becb-1e3066ad7b8d",
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
									"816866c0-8bc4-c3e6-87a1-3c748eb0279e",
									true,
								},
								
								{
									"61ca10b1-b27b-a41d-8014-87ff5a4b2abe",
									true,
								},
								
								{
									"c2803f42-898b-c24d-8976-3e88b9a98c12",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_InterventionMouse",
							targetType = "Detection Target",
							uuid = "59744391-bdc1-cd52-9dff-44a27fa4682a",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "816866c0-8bc4-c3e6-87a1-3c748eb0279e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "61ca10b1-b27b-a41d-8014-87ff5a4b2abe",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "79c9a721-6bcb-6b1c-a37b-657f41a02b25",
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
									"79c9a721-6bcb-6b1c-a37b-657f41a02b25",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "c2803f42-898b-c24d-8976-3e88b9a98c12",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 721.5,
				name = "[LPDU PLD] MT Sheltron/Intervention OT",
				timeRange = true,
				timelineIndex = 139,
				timerEndOffset = -3.5,
				timerStartOffset = -6.5,
				uuid = "8dd6c249-9c09-55ef-a927-e2ed5a0df41f",
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
									"40ddba94-62f1-34f3-a392-c3b0ed1e8f73",
									true,
								},
								
								{
									"84226900-1235-d5e5-8668-1c4175cbead4",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Hotbar_ReleaseIronWill",
							uuid = "d7877994-ac71-0397-af68-0a12c9d5e49f",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "40ddba94-62f1-34f3-a392-c3b0ed1e8f73",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "84226900-1235-d5e5-8668-1c4175cbead4",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 721.5,
				name = "[LPDU PLD] OT Stance OFF",
				timeRange = true,
				timelineIndex = 139,
				timerEndOffset = 3,
				uuid = "bbb3e4cc-b1cd-bc50-a74f-5fd470ced2fa",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "1db54f62-3a41-8eab-b1d7-97937eb79529",
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
									"a8075951-a1bf-f80f-a28f-9188de41794f",
									true,
								},
								
								{
									"8c7462a5-d9fa-a327-851c-6ffef12cf15d",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Equilibrium",
							uuid = "d7eb6c7c-9a59-896e-9ad5-1b4bf6a5b5ff",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "a8075951-a1bf-f80f-a28f-9188de41794f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "8c7462a5-d9fa-a327-851c-6ffef12cf15d",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 721.5,
				name = "[LPDU WAR] OT Equilibrium Self",
				timeRange = true,
				timelineIndex = 139,
				timerEndOffset = -9,
				timerStartOffset = -12,
				uuid = "48186164-4c1a-620a-8041-5dc322f794c1",
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
									"5943524b-9adb-228b-a746-408d4575259e",
									true,
								},
								
								{
									"41e80677-e3e2-d56d-8990-11972ed26c7a",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_ThrillOfBattle",
							uuid = "fa6fd534-dfee-284e-9a58-4ef12ec251f1",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "5943524b-9adb-228b-a746-408d4575259e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "41e80677-e3e2-d56d-8990-11972ed26c7a",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 721.5,
				name = "[LPDU WAR] OT ThrillOfBattle",
				timeRange = true,
				timelineIndex = 139,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "5b776105-e86b-d07c-b01c-bc8ba7a1b250",
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
									"5bf40965-f59e-3a6f-aad1-80a023b5dea8",
									true,
								},
								
								{
									"b2d8eabf-9614-812d-8eee-98d5f034c25a",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Bloodwhetting",
							uuid = "978bb0e7-d512-8760-b439-92224bf4a2da",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "5bf40965-f59e-3a6f-aad1-80a023b5dea8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "b2d8eabf-9614-812d-8eee-98d5f034c25a",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 721.5,
				name = "[LPDU WAR] OT Raw Intuition Self",
				timeRange = true,
				timelineIndex = 139,
				timerEndOffset = -3.5,
				timerStartOffset = -6.5,
				uuid = "8f8c695a-de4f-2ab8-93ac-c3ed2ad83751",
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
									"57792dba-911b-6912-a138-95810c0753cc",
									true,
								},
								
								{
									"f430c382-3bbd-efc1-b529-fa6b7c8996de",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Hotbar_ReleaseDefiance",
							uuid = "1221ea86-f5c4-f8b4-90bf-db6a08805494",
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
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "57792dba-911b-6912-a138-95810c0753cc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "f430c382-3bbd-efc1-b529-fa6b7c8996de",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 721.5,
				name = "[LPDU WAR] OT Stance OFF",
				timeRange = true,
				timelineIndex = 139,
				timerEndOffset = 3,
				uuid = "f5175945-4e59-0817-8c24-279f66442fcd",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "52dd80d6-29c6-9801-9c19-93213016b988",
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
									"45844618-c6e9-49ef-86bc-f2651cdd2776",
									true,
								},
								
								{
									"37484d7b-31e9-47b0-9685-44ad6c2086cb",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_DarkMind",
							uuid = "ad711f9e-1fdf-558c-859d-036a92b610f8",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "45844618-c6e9-49ef-86bc-f2651cdd2776",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "37484d7b-31e9-47b0-9685-44ad6c2086cb",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 721.5,
				name = "[LPDU DRK] OT DarkMind",
				timeRange = true,
				timelineIndex = 139,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "db601bc6-4437-d509-8f0a-8e398aa2c8cb",
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
									"b1cbf0eb-e5b8-7725-8e88-225e73d9f9b5",
									true,
								},
								
								{
									"925960ed-8321-0482-b771-9a2bc0d640a1",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf",
							uuid = "732127dd-c432-5dfa-8b91-77496a847456",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "b1cbf0eb-e5b8-7725-8e88-225e73d9f9b5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "925960ed-8321-0482-b771-9a2bc0d640a1",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 721.5,
				name = "[LPDU DRK] OT TBN Self",
				timeRange = true,
				timelineIndex = 139,
				timerEndOffset = -3.5,
				timerStartOffset = -6.5,
				uuid = "e991232f-e6f9-d2e6-a921-e72665aaacb2",
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
									"58e8934e-af82-6a85-99ad-5efe70afa394",
									true,
								},
								
								{
									"39e77ae8-e201-90ae-8261-99529d458f70",
									true,
								},
								
								{
									"2d2d6d73-4425-8825-98fd-032132ca75ea",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightMouse",
							targetType = "Detection Target",
							uuid = "152c634e-5a76-b1cc-898e-52479c156391",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "58e8934e-af82-6a85-99ad-5efe70afa394",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "39e77ae8-e201-90ae-8261-99529d458f70",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "b4105e1b-7335-12a9-beed-da9e6381fa44",
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
									"b4105e1b-7335-12a9-beed-da9e6381fa44",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "2d2d6d73-4425-8825-98fd-032132ca75ea",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 721.5,
				name = "[LPDU DRK] MT TBN OT",
				timeRange = true,
				timelineIndex = 139,
				timerEndOffset = -3.5,
				timerStartOffset = -6.5,
				uuid = "7aa9d43e-c4d7-6ea4-bf89-12b219cce144",
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
									"16f2e944-ee56-4698-b272-e0dc7ecde996",
									true,
								},
								
								{
									"96f66b8b-31db-8df8-863b-8a3459651d1d",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Hotbar_ReleaseGrit",
							uuid = "263a24f9-5b8b-ce2e-ab3d-15f1c561f280",
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
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "16f2e944-ee56-4698-b272-e0dc7ecde996",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "96f66b8b-31db-8df8-863b-8a3459651d1d",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 721.5,
				name = "[LPDU DRK] OT Stance OFF",
				timeRange = true,
				timelineIndex = 139,
				timerEndOffset = 3,
				uuid = "8f819c81-5630-7c39-909f-7180744c56a5",
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
				name = "Gunbreaker",
				uuid = "554f89e7-efa6-ddcd-8a19-f405f20a6d44",
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
									"d7dd0eb8-81fc-1f50-832c-26dba7225847",
									true,
								},
								
								{
									"8241e376-db7d-a94a-b47b-061810e9d02a",
									true,
								},
								
								{
									"772609c4-b9df-3ae7-8e04-d3500f80eec7",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_RoyalGuard",
							uuid = "2f182fe5-840a-acba-9f35-8a6a611cc39e",
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
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "d7dd0eb8-81fc-1f50-832c-26dba7225847",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "8241e376-db7d-a94a-b47b-061810e9d02a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "772609c4-b9df-3ae7-8e04-d3500f80eec7",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 733.5,
				name = "[LPDU Tank] MT Stance ON",
				timeRange = true,
				timelineIndex = 140,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "a0bb09fd-1134-b1fe-8739-dffd0934ad86",
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
									"443b0604-ca41-2f97-8d54-ec5b41875584",
									true,
								},
								
								{
									"ecfb8de7-2a01-48ec-adfb-78ccfe43e0d6",
									true,
								},
								
								{
									"684ad1e9-304c-b06a-8132-b93f8527bde5",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_ReleaseRoyalGuard",
							uuid = "d17ddc8c-f8b3-d9c4-bc9f-dc822552591c",
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
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "443b0604-ca41-2f97-8d54-ec5b41875584",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "ecfb8de7-2a01-48ec-adfb-78ccfe43e0d6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 1833,
							category = "Self",
							uuid = "684ad1e9-304c-b06a-8132-b93f8527bde5",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 733.5,
				name = "[LPDU Tank] OT Stance OFF",
				timeRange = true,
				timelineIndex = 140,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "26a31da4-facb-2fbc-a8b6-18c7d3e4c5bd",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared",
				uuid = "8da0f988-350a-b218-a8a7-fd48defe6d65",
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
									"39e890b4-4ab5-f3e2-b72a-3bd4d5b83118",
									true,
								},
								
								{
									"4c6e980a-a7f8-7707-96ca-875746f87793",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "bdf0a6a4-fe2c-5787-b154-70ae00547e25",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "39e890b4-4ab5-f3e2-b72a-3bd4d5b83118",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "4c6e980a-a7f8-7707-96ca-875746f87793",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 733.5,
				name = "[LPDU Tank] MT Provoke",
				timeRange = true,
				timelineIndex = 140,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "969a0d80-d401-a917-9c1e-cb10cce0852f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "083868f6-40d8-71c5-8995-c8ec0efe7d83",
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
									"a6b6f286-a42b-8f4c-999a-eda3eaa18e09",
									true,
								},
								
								{
									"4200e518-524c-d040-8631-e1674b4d1201",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Hotbar_IronWill",
							uuid = "fd67198b-59df-bc1a-8b53-654ddbe93815",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "a6b6f286-a42b-8f4c-999a-eda3eaa18e09",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "4200e518-524c-d040-8631-e1674b4d1201",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 733.5,
				name = "[LPDU PLD] MT Stance ON",
				timeRange = true,
				timelineIndex = 140,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "d9f53900-e876-e047-a817-78cfe17b3497",
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
									"c1560579-dc8f-b2c1-a6bc-73b32020d65b",
									true,
								},
								
								{
									"697700f1-3344-5132-9d71-a03df1499e48",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Hotbar_ReleaseIronWill",
							uuid = "8bdf0b35-834a-e143-8c29-18ba21576ec1",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "c1560579-dc8f-b2c1-a6bc-73b32020d65b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "697700f1-3344-5132-9d71-a03df1499e48",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 733.5,
				name = "[LPDU PLD] OT Stance OFF",
				timeRange = true,
				timelineIndex = 140,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "f4802941-8d3f-d305-b04d-2f0b099e56ea",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "298434e2-1e70-b191-a5a9-2927ab60dcb2",
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
									"c1389d80-e708-d926-8039-2828c921c6db",
									true,
								},
								
								{
									"ac07a94b-4d25-bad5-922b-829e8b61800c",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Hotbar_Defiance",
							uuid = "7ac2c560-5e71-f73d-abae-d0ce7b01b30f",
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
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "c1389d80-e708-d926-8039-2828c921c6db",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "ac07a94b-4d25-bad5-922b-829e8b61800c",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 733.5,
				name = "[LPDU WAR] MT Stance ON",
				timeRange = true,
				timelineIndex = 140,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "74a82265-0aa6-53e6-ae0e-75e5153540f8",
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
									"28fc7bb4-d387-290b-b69d-04d2cd73783b",
									true,
								},
								
								{
									"7f6cd680-23a8-44aa-bc63-a5cefdec1988",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Hotbar_ReleaseDefiance",
							uuid = "c9179813-0da3-8e02-a6ea-d6577da4411b",
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
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "28fc7bb4-d387-290b-b69d-04d2cd73783b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "7f6cd680-23a8-44aa-bc63-a5cefdec1988",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 733.5,
				name = "[LPDU WAR] OT Stance OFF",
				timeRange = true,
				timelineIndex = 140,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "ddd71c2a-0f0b-07d3-b4bb-86583c51cb1e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "1f29f59c-6050-211e-9e92-5db5c9f74a43",
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
									"99976bf6-a1db-0ce9-8a45-2b898d4e30bc",
									true,
								},
								
								{
									"acc84851-9f1a-7521-ac67-cf96cade5ee0",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Hotbar_Grit",
							uuid = "2ea639b8-a03e-6f80-8c29-7b18bad41ef8",
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
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "99976bf6-a1db-0ce9-8a45-2b898d4e30bc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "acc84851-9f1a-7521-ac67-cf96cade5ee0",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 733.5,
				name = "[LPDU DRK] MT Stance ON",
				timeRange = true,
				timelineIndex = 140,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "324cabcb-ba94-3042-9ced-3881be855024",
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
									"2b2613a7-5b9a-356f-80dc-5928dcd9ffe0",
									true,
								},
								
								{
									"210f33e7-4bc1-424a-a2ea-b575a4d8bf66",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Hotbar_ReleaseGrit",
							uuid = "f3754ae3-3042-f6fe-bffc-013c7c9f35dd",
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
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "2b2613a7-5b9a-356f-80dc-5928dcd9ffe0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "210f33e7-4bc1-424a-a2ea-b575a4d8bf66",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 733.5,
				name = "[LPDU DRK] OT Stance OFF",
				timeRange = true,
				timelineIndex = 140,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "f42cc3e8-077a-0c63-82cf-5756a2af2d97",
				version = 2,
			},
		},
	},
	[145] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker",
				uuid = "e539e150-52f0-5360-b138-c8f241bcaaff",
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
									"b0a48036-b387-2868-987a-896013636eeb",
									true,
								},
								
								{
									"186da75c-527e-6d96-a6c8-1b1ace5c9c3b",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumMouse",
							targetSubType = "Lowest HP",
							targetType = "Party",
							uuid = "05f80411-ae0b-d9ff-a9f1-cbccad5b2fb4",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "b0a48036-b387-2868-987a-896013636eeb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "186da75c-527e-6d96-a6c8-1b1ace5c9c3b",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 745.5,
				name = "[LPDU Tank] HoS Lowest Trio",
				timeRange = true,
				timelineIndex = 145,
				timerStartOffset = -3,
				uuid = "b2f2082d-b43a-8322-9fb4-c20480b5d2b8",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "ca414df3-7819-50af-b657-60b56859a946",
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
									"c195fa04-ba08-e68a-90cd-9b6e8e0f7d83",
									true,
								},
								
								{
									"dfcb1db3-d700-56f7-99b1-81842c4c0b5f",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_InterventionMouse",
							targetSubType = "Lowest HP",
							targetType = "Party",
							uuid = "3ffc4823-e147-61ba-858c-b0f6af21155e",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "c195fa04-ba08-e68a-90cd-9b6e8e0f7d83",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "dfcb1db3-d700-56f7-99b1-81842c4c0b5f",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 745.5,
				name = "[LPDU PLD] Sheltron/Intervention Lowest Trio",
				timeRange = true,
				timelineIndex = 145,
				timerStartOffset = -3,
				uuid = "cbe1db44-e20c-d7e4-85eb-048dce6d69d7",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "909b189a-d52d-cdf8-8358-6858a53639b1",
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
									"8bcd3956-7439-0de2-bb70-1b0362a96957",
									true,
								},
								
								{
									"de3be255-fd5a-c9eb-a6ac-29c2aff31bd4",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightMouse",
							targetSubType = "Lowest HP",
							targetType = "Party",
							uuid = "d3b32a2f-7b82-9958-8bf7-b898b8f180d8",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "8bcd3956-7439-0de2-bb70-1b0362a96957",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "de3be255-fd5a-c9eb-a6ac-29c2aff31bd4",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 745.5,
				name = "[LPDU DRK] TBN Lowest Trio",
				timeRange = true,
				timelineIndex = 145,
				timerStartOffset = -3,
				uuid = "630a4361-5953-c2be-909b-711f79be3d1e",
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
				name = "Gunbreaker",
				uuid = "a30da78f-2391-a1d6-8865-ce5793b86f41",
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
									"4c51a559-7471-99ac-8f4b-f578ed87dd00",
									true,
								},
								
								{
									"3867fcfe-4145-2c4a-aa4d-5627780a1b4b",
									true,
								},
								
								{
									"97414863-c36e-2137-baa4-caf1c5445c69",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "df43f428-64b5-da36-a0ab-35046704c27f",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "4c51a559-7471-99ac-8f4b-f578ed87dd00",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "3867fcfe-4145-2c4a-aa4d-5627780a1b4b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							partyTargetSubType = "Furthest",
							uuid = "97414863-c36e-2137-baa4-caf1c5445c69",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 759.4,
				name = "[LPDU Tank] HoL Trio",
				timeRange = true,
				timelineIndex = 148,
				timerEndOffset = -11,
				timerStartOffset = -14,
				uuid = "62287622-8217-f6af-9d08-c31b69c934c6",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared",
				uuid = "c62b8e17-b5ef-9ae7-8bf2-07c42415fc5e",
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
									"45982854-d28b-7162-a8de-34e1a5609a1e",
									true,
								},
								
								{
									"14a87f11-b294-2dbd-9ded-a472894777c6",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Sprint",
							uuid = "87a57c78-a0fe-f1e8-a26e-3a5f2e851df2",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "45982854-d28b-7162-a8de-34e1a5609a1e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "14a87f11-b294-2dbd-9ded-a472894777c6",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 759.4,
				name = "[LPDU Tank] Sprint Trio",
				timeRange = true,
				timelineIndex = 148,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "7f14f070-f689-d83f-acf7-1fe3729f81a8",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "b23d2556-9e6a-7b26-b4a2-63d38da9a8ac",
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
									"e5ead447-2e02-4793-8633-3e2638450a07",
									true,
								},
								
								{
									"fb7e0fb4-e6ef-a3af-9d0e-f2dd167b89b0",
									true,
								},
								
								{
									"af082149-f3a1-0678-8e8c-e4e8e09eff3c",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_DivineVeil",
							uuid = "78723479-d3dc-7008-a2e0-032d251834d2",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "e5ead447-2e02-4793-8633-3e2638450a07",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "fb7e0fb4-e6ef-a3af-9d0e-f2dd167b89b0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							partyTargetSubType = "Furthest",
							uuid = "af082149-f3a1-0678-8e8c-e4e8e09eff3c",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 759.4,
				name = "[LPDU PLD] DivineVeil Trio",
				timeRange = true,
				timelineIndex = 148,
				timerEndOffset = -11,
				timerStartOffset = -14,
				uuid = "fd3ad434-99b2-c22b-8e9e-cb608f479e3d",
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
							aType = "Alert",
							alertDuration = 4000,
							alertTTS = true,
							alertText = "PASSAGE OF ARMS IN 2s - position for party",
							conditions = 
							{
								
								{
									"ed2399c5-4f92-3148-b96d-e9137b13a335",
									true,
								},
								
								{
									"6440f884-b6dd-cf9c-85a5-0173a0ea82be",
									true,
								},
							},
							uuid = "64488c3e-02b5-ccd6-a7e7-82f32fbaf874",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "ed2399c5-4f92-3148-b96d-e9137b13a335",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "6440f884-b6dd-cf9c-85a5-0173a0ea82be",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							partyTargetSubType = "Furthest",
							uuid = "49e5949d-c18d-8d92-a0a3-fc331267dd0d",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 759.4,
				name = "[LPDU PLD] Passage - manual positioning",
				timeRange = true,
				timelineIndex = 148,
				timerEndOffset = -15.5,
				timerStartOffset = -16,
				uuid = "0c9e7b5e-837d-a6a7-9876-b6655c5b82ca",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "93c556e8-af6e-ffc4-96ba-f1e873a4a9a3",
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
									"baed0d69-2f70-05c7-b272-2b5c2769f556",
									true,
								},
								
								{
									"1a61caef-6688-5d4c-a9b8-d1d2f3726ef3",
									true,
								},
								
								{
									"1a73ffd0-f533-837d-82a4-7814ad99f0ee",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_ShakeItOff",
							uuid = "1e607d60-b600-1b80-8748-65cd981f330f",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "baed0d69-2f70-05c7-b272-2b5c2769f556",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "1a61caef-6688-5d4c-a9b8-d1d2f3726ef3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 30,
							partyTargetSubType = "Furthest",
							uuid = "1a73ffd0-f533-837d-82a4-7814ad99f0ee",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 759.4,
				name = "[LPDU WAR] ShakeItOff Trio",
				timeRange = true,
				timelineIndex = 148,
				timerEndOffset = -11,
				timerStartOffset = -14,
				uuid = "5966ef15-08ad-bdbf-9bee-138f24ccfaea",
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
				name = "Shared",
				uuid = "16611acd-adff-4c5e-8caf-e284a5238891",
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
									"2c373ff9-6b2c-f7ff-bd68-7a17445fdd40",
									true,
								},
								
								{
									"6e84bb7b-e347-164e-ac9d-c2c84d534fca",
									true,
								},
								
								{
									"4fe2b6c7-3ad4-3e4d-8ea7-0e5eaae154c3",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "5aeeab01-018e-b66e-bda9-0ac6a16b1192",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "2c373ff9-6b2c-f7ff-bd68-7a17445fdd40",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "6e84bb7b-e347-164e-ac9d-c2c84d534fca",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 5,
							name = "Reprisal range <=5y",
							partyTargetType = "Detection Target",
							uuid = "a46ee3ba-02d7-65ed-b754-58785c8c2bf0",
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
									"a46ee3ba-02d7-65ed-b754-58785c8c2bf0",
									true,
								},
							},
							filterTargetType = "Enemy",
							name = "Enemy in Reprisal range",
							uuid = "4fe2b6c7-3ad4-3e4d-8ea7-0e5eaae154c3",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 767.4,
				name = "[LPDU Tank] MT Reprisal",
				timeRange = true,
				timelineIndex = 149,
				timerEndOffset = -2,
				timerStartOffset = -5,
				uuid = "8a9e3f73-cbb8-3a57-a49f-d3b535b44287",
				version = 2,
			},
		},
	},
	[150] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker",
				uuid = "cafca5f0-3c31-698f-9f47-f6f67372d0b4",
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
									"61ad463f-6159-62ad-b9e5-a1245794494d",
									true,
								},
								
								{
									"4120ccb8-aa3b-c85d-90b3-7013b756953f",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Nebula",
							uuid = "399cdbea-1a9d-b8e1-9430-29c95b25cebb",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "61ad463f-6159-62ad-b9e5-a1245794494d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "4120ccb8-aa3b-c85d-90b3-7013b756953f",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 778.4,
				name = "[LPDU Tank] MT Nebula",
				timeRange = true,
				timelineIndex = 150,
				timerEndOffset = -4,
				timerStartOffset = -7,
				uuid = "348c05d0-8405-a7c2-8f3a-132b79070bf0",
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
									"42c1a9d3-49d6-228a-89e8-a02a4d238092",
									true,
								},
								
								{
									"f0866037-33e7-9c9b-a1aa-80c7bb9cfb16",
									true,
								},
								
								{
									"17f7a37a-d44b-790a-a327-bf2cfec74449",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumMouse",
							targetType = "Detection Target",
							uuid = "3da123a2-c704-b766-92ed-bf4a3032536a",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "42c1a9d3-49d6-228a-89e8-a02a4d238092",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "f0866037-33e7-9c9b-a1aa-80c7bb9cfb16",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "c2bfbba6-7b76-26e1-8339-bf88216afbd0",
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
									"c2bfbba6-7b76-26e1-8339-bf88216afbd0",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "17f7a37a-d44b-790a-a327-bf2cfec74449",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 778.4,
				name = "[LPDU Tank] OT HoS OT",
				timeRange = true,
				timelineIndex = 150,
				timerStartOffset = -3,
				uuid = "183387e9-0177-6f80-9acf-6ab2921e1feb",
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
									"11d4dfd3-4c03-d80f-bbc1-80d7587bb053",
									true,
								},
								
								{
									"b7f4705a-4309-6015-bc43-2c8494cfd1ed",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "b7eaa23f-49b0-95c2-9248-03c28c1a89d8",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "11d4dfd3-4c03-d80f-bbc1-80d7587bb053",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "b7f4705a-4309-6015-bc43-2c8494cfd1ed",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 778.4,
				name = "[LPDU Tank] MT HoS Self",
				timeRange = true,
				timelineIndex = 150,
				timerStartOffset = -3,
				uuid = "1189b9ca-bbaf-9046-a491-a292e4b470eb",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "1e9b9d30-9ef8-f6c6-b0cc-771e2474a783",
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
									"adb0ae03-bd0a-7f64-bdd1-e2fd3d1da866",
									true,
								},
								
								{
									"7baeaa57-404a-6642-8237-37775ce9ebcc",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Guardian",
							uuid = "c69f32b1-35e0-28b0-866f-34100a77a0bb",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "adb0ae03-bd0a-7f64-bdd1-e2fd3d1da866",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "7baeaa57-404a-6642-8237-37775ce9ebcc",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 778.4,
				name = "[LPDU PLD] MT Guardian",
				timeRange = true,
				timelineIndex = 150,
				timerEndOffset = -4,
				timerStartOffset = -7,
				uuid = "8e675398-e8f1-655c-99ca-3339add7b6cb",
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
									"36841650-f146-48a7-a45f-59f9b9083091",
									true,
								},
								
								{
									"109980c8-d694-a7d1-9d25-226111b0b100",
									true,
								},
								
								{
									"c5ae667b-0722-8761-bb4c-de84bd9b07e0",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_InterventionMouse",
							targetType = "Detection Target",
							uuid = "14a9b0c1-ad76-18e3-987c-856ea859311d",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "36841650-f146-48a7-a45f-59f9b9083091",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "109980c8-d694-a7d1-9d25-226111b0b100",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "193a9d3a-2d20-ccfe-9315-7d64e72bda05",
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
									"193a9d3a-2d20-ccfe-9315-7d64e72bda05",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "c5ae667b-0722-8761-bb4c-de84bd9b07e0",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 778.4,
				name = "[LPDU PLD] OT Sheltron/Intervention OT",
				timeRange = true,
				timelineIndex = 150,
				timerStartOffset = -3,
				uuid = "63ab40e3-080b-f980-a966-b99d680be9c9",
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
									"351b930f-d7ea-61bb-acf7-617fc54765ee",
									true,
								},
								
								{
									"19aa14bd-7ba9-d2dd-ae5c-892c2285b2ef",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HolySheltron",
							uuid = "32baa055-17c1-18c8-a7ed-557e6755993e",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "351b930f-d7ea-61bb-acf7-617fc54765ee",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "19aa14bd-7ba9-d2dd-ae5c-892c2285b2ef",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 778.4,
				name = "[LPDU PLD] MT Sheltron/Intervention Self",
				timeRange = true,
				timelineIndex = 150,
				timerStartOffset = -3,
				uuid = "463b081e-bfff-e40c-9f92-f15f71b1a017",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "dbbdefb3-468b-2899-96e5-70f179839042",
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
									"90f08954-0418-8b3b-a53d-1886376e0e3b",
									true,
								},
								
								{
									"d4c4f0f6-b892-ec4c-be94-f7f5b8422608",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Damnation",
							uuid = "3b08d4e2-05d4-f16a-9bba-f0e05f1af37b",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "90f08954-0418-8b3b-a53d-1886376e0e3b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "d4c4f0f6-b892-ec4c-be94-f7f5b8422608",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 778.4,
				name = "[LPDU WAR] MT Damnation",
				timeRange = true,
				timelineIndex = 150,
				timerEndOffset = -4,
				timerStartOffset = -7,
				uuid = "0d0e0387-4c2d-41ae-a85c-8b496846f08d",
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
									"d7911ebd-16bb-b131-a0c0-95fe94cbc37d",
									true,
								},
								
								{
									"72e23456-dd11-a333-bc0e-7f33b9de5872",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Bloodwhetting",
							uuid = "de37a284-5809-bc31-abb4-dce7ea65ee3a",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "d7911ebd-16bb-b131-a0c0-95fe94cbc37d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "72e23456-dd11-a333-bc0e-7f33b9de5872",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 778.4,
				name = "[LPDU WAR] MT Raw Intuition Self",
				timeRange = true,
				timelineIndex = 150,
				timerStartOffset = -3,
				uuid = "a7f7b821-6efc-a2f1-9ae1-6f91a99e3d7e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "6872bc19-de3d-93a6-a244-86f2c2ef805b",
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
									"c1365bdf-b4de-97f3-bc50-63ac466692d8",
									true,
								},
								
								{
									"2f9dabf2-11f0-6bcb-be78-d38d4678ca38",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_ShadowedVigil",
							uuid = "24c80a68-348c-d315-b931-e64291981edc",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "c1365bdf-b4de-97f3-bc50-63ac466692d8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "2f9dabf2-11f0-6bcb-be78-d38d4678ca38",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 778.4,
				name = "[LPDU DRK] MT ShadowedVigil",
				timeRange = true,
				timelineIndex = 150,
				timerEndOffset = -4,
				timerStartOffset = -7,
				uuid = "ffe6faef-8cdc-42ed-bf84-df69adf0f22a",
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
									"37d93505-384f-3377-90d5-ad944410c7a6",
									true,
								},
								
								{
									"7d682741-3727-d466-85c3-9ee4215efb41",
									true,
								},
								
								{
									"97afc148-225b-c133-b3c6-848c02b2b124",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightMouse",
							targetType = "Detection Target",
							uuid = "0553dde8-099d-f325-b6a5-50b39561e4c9",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "37d93505-384f-3377-90d5-ad944410c7a6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "7d682741-3727-d466-85c3-9ee4215efb41",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "fae3e39e-ef6c-3af7-903b-c51748516e6f",
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
									"fae3e39e-ef6c-3af7-903b-c51748516e6f",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "97afc148-225b-c133-b3c6-848c02b2b124",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 778.4,
				name = "[LPDU DRK] OT TBN OT",
				timeRange = true,
				timelineIndex = 150,
				timerStartOffset = -3,
				uuid = "465d1496-2e01-1877-9cfd-ae121ca9fbe0",
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
									"a4b75646-9330-b0c5-b97d-6ae537882bf0",
									true,
								},
								
								{
									"558dd9a4-acc3-84c6-9ca9-9e28289de839",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf",
							uuid = "82b1d2a4-7ae1-d74e-8daf-42fc7d7c9605",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "a4b75646-9330-b0c5-b97d-6ae537882bf0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "558dd9a4-acc3-84c6-9ca9-9e28289de839",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 778.4,
				name = "[LPDU DRK] MT TBN Self",
				timeRange = true,
				timelineIndex = 150,
				timerStartOffset = -3,
				uuid = "43506615-4e2d-d3b0-9b4a-4e7a5893df88",
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
				name = "Gunbreaker",
				uuid = "97442333-c296-2f43-a059-0a23808e7c96",
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
									"0ce0b8e8-73e7-d677-bc80-0cf9eace751e",
									true,
								},
								
								{
									"017e4277-c94a-802d-83e0-94fb43441872",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_AuroraSelf",
							uuid = "9e9fd793-37c7-fd34-9936-ba78ee4bb7f4",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "0ce0b8e8-73e7-d677-bc80-0cf9eace751e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "017e4277-c94a-802d-83e0-94fb43441872",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 781.4,
				name = "[LPDU Tank] MT Aurora Self",
				timeRange = true,
				timelineIndex = 151,
				timerEndOffset = -11,
				timerStartOffset = -14,
				uuid = "16f68468-5833-a7a8-864f-dbacebc4e620",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "6eaf8976-98ae-3b70-82e7-0b6e38f235a4",
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
									"623476f6-13d2-0b6a-bfff-d2200fb16960",
									true,
								},
								
								{
									"eed50a6a-1177-f6a1-a9d4-41e154198fbc",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Equilibrium",
							uuid = "fe5265e2-2e94-1c75-8e7e-6b1463c3c55a",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "623476f6-13d2-0b6a-bfff-d2200fb16960",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "eed50a6a-1177-f6a1-a9d4-41e154198fbc",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 781.4,
				name = "[LPDU WAR] MT Equilibrium Self",
				timeRange = true,
				timelineIndex = 151,
				timerEndOffset = -11,
				timerStartOffset = -14,
				uuid = "bbcd9a7a-f286-672d-9836-c37898fc21f9",
				version = 2,
			},
		},
	},
	[152] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker",
				uuid = "68ed58f0-87de-ea81-a057-3780f27bd952",
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
									"933e8f8b-e82b-1b46-a921-e90b797db94b",
									true,
								},
								
								{
									"8d720ced-24ae-aa25-8c1a-da89d136dc5c",
									true,
								},
								
								{
									"37e0ac00-5c3d-12dc-8984-a60adef6a529",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_RoyalGuard",
							uuid = "2fc1b4e3-be47-ae51-a850-e62c97de1b1b",
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
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "933e8f8b-e82b-1b46-a921-e90b797db94b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "8d720ced-24ae-aa25-8c1a-da89d136dc5c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "37e0ac00-5c3d-12dc-8984-a60adef6a529",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 789.4,
				name = "[LPDU Tank] Stance ON",
				timeRange = true,
				timelineIndex = 152,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "cc821b8f-60ae-4047-8c7f-70054559111c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "414326e8-ff3e-a14f-a34d-032f5f1924a1",
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
									"33d83f84-e2df-bab3-9d55-a1c79a429ef3",
									true,
								},
								
								{
									"c84d64c7-fb36-d3e3-9c5c-55eea9f67046",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Hotbar_IronWill",
							uuid = "4b2d5d33-a626-1e57-a8bc-084bb15c1eee",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "33d83f84-e2df-bab3-9d55-a1c79a429ef3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "c84d64c7-fb36-d3e3-9c5c-55eea9f67046",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 789.4,
				name = "[LPDU PLD] Stance ON",
				timeRange = true,
				timelineIndex = 152,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "1cab92b8-4597-1d21-8942-ba50d1723816",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "847140df-d6fc-8424-a0d7-74facfa36db4",
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
									"314663eb-96d8-0329-b376-733eb038e823",
									true,
								},
								
								{
									"aa45f45a-aeef-f99d-8608-f047cac972bf",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Hotbar_Defiance",
							uuid = "dc5516d8-ac25-e616-a858-6ccc11a9a229",
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
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "314663eb-96d8-0329-b376-733eb038e823",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "aa45f45a-aeef-f99d-8608-f047cac972bf",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 789.4,
				name = "[LPDU WAR] Stance ON",
				timeRange = true,
				timelineIndex = 152,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "3337a414-3678-f0f7-bc68-b182d90f3d3c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "087ed06c-243d-8b48-9fe7-a91ff521ee03",
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
									"bd5bbbdc-0d95-35dd-9663-f0bd17f17441",
									true,
								},
								
								{
									"166f868b-e53b-6d8e-9cae-a48606a7851f",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Hotbar_Grit",
							uuid = "74b243c6-a951-5c69-8411-8e68e677c568",
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
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "bd5bbbdc-0d95-35dd-9663-f0bd17f17441",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "166f868b-e53b-6d8e-9cae-a48606a7851f",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 789.4,
				name = "[LPDU DRK] Stance ON",
				timeRange = true,
				timelineIndex = 152,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "dac6636b-d675-ea3d-ae70-32a781defff1",
				version = 2,
			},
		},
	},
	[159] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared",
				uuid = "9cd30284-6b1d-cf0a-90d1-9a645352e5c9",
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
									"a6cd5f84-94e0-d16d-a049-8f39a56fee30",
									true,
								},
								
								{
									"540a290b-9f38-86d1-986f-1619642a6e58",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Sprint",
							uuid = "8cf2ab4b-37ff-e2dc-b77e-7ddcc34ef585",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "a6cd5f84-94e0-d16d-a049-8f39a56fee30",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "540a290b-9f38-86d1-986f-1619642a6e58",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 814.4,
				name = "[LPDU Tank] Sprint Trio",
				timeRange = true,
				timelineIndex = 159,
				timerEndOffset = 1,
				timerStartOffset = -2,
				uuid = "96a7f862-31d2-08fd-a12c-50a190926ccf",
				version = 2,
			},
		},
	},
	[164] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker",
				uuid = "c89e4344-a00c-e526-af0e-e84b744dfb6e",
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
									"58dc3974-17a2-7cdb-a809-316c77e69fe5",
									true,
								},
								
								{
									"333c768e-520f-9a36-bcc0-a77f37d316ec",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumMouse",
							targetSubType = "Lowest HP",
							targetType = "Party",
							uuid = "82780cf8-1fb3-7289-9285-19954d8283b2",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "58dc3974-17a2-7cdb-a809-316c77e69fe5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "333c768e-520f-9a36-bcc0-a77f37d316ec",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 826.4,
				name = "[LPDU Tank] HoS Lowest",
				timeRange = true,
				timelineIndex = 164,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "7c27dd42-f6c1-d9eb-a741-7573f2273d17",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "4ef037a8-9906-ae3a-9558-2e2687f0a807",
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
									"16a940ac-4263-5ee4-81c9-02a99ef0117b",
									true,
								},
								
								{
									"6268d4c5-1c36-1bbf-af85-2cb06ccb407a",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_InterventionMouse",
							targetSubType = "Lowest HP",
							targetType = "Party",
							uuid = "c2afb575-4cc7-9ccb-9ecf-6e363093ae96",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "16a940ac-4263-5ee4-81c9-02a99ef0117b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "6268d4c5-1c36-1bbf-af85-2cb06ccb407a",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 826.4,
				name = "[LPDU PLD] Sheltron/Intervention Lowest",
				timeRange = true,
				timelineIndex = 164,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "c8551505-a66d-5edd-94c7-0ab0d3540216",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "d40c71f4-d4ee-ce5f-b286-96f711d2a67a",
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
									"3753fd78-1afd-2fdc-8108-e7de7f2dd53d",
									true,
								},
								
								{
									"87495cbb-ebf2-cc6a-9bb0-803a724e9f1e",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightMouse",
							targetSubType = "Lowest HP",
							targetType = "Party",
							uuid = "db3d5e62-d942-5279-999c-ddd0afd94816",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "3753fd78-1afd-2fdc-8108-e7de7f2dd53d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "87495cbb-ebf2-cc6a-9bb0-803a724e9f1e",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 826.4,
				name = "[LPDU DRK] TBN Lowest",
				timeRange = true,
				timelineIndex = 164,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "d3b0d872-06ed-535c-b35a-d6fc3ffb9304",
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
				name = "Shared",
				uuid = "630e0c14-173e-1cd2-bc79-040b189cd357",
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
									"92570405-7bae-fb4f-a7cb-67b960c73f76",
									true,
								},
								
								{
									"d7e94e32-287e-1b65-81f1-1b02e1645ae1",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_ArmsLength",
							uuid = "f2bc42d7-b2ef-9d3c-abf4-2f19679a4908",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "92570405-7bae-fb4f-a7cb-67b960c73f76",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "d7e94e32-287e-1b65-81f1-1b02e1645ae1",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 827.6,
				name = "[LPDU Tank] Arms Length",
				timeRange = true,
				timelineIndex = 165,
				timerEndOffset = -2,
				timerStartOffset = -5,
				uuid = "0010dd56-c11f-ff8d-8ba4-4293943cc0ec",
				version = 2,
			},
		},
	},
	[168] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker",
				uuid = "afed29e3-edd3-6a33-a4ac-c8b9735fcb19",
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
									"2d6878c0-798f-7a7e-a7c6-e2d9854057c6",
									true,
								},
								
								{
									"8cde1f2d-5859-477e-ad8a-d3d7f5838c87",
									true,
								},
								
								{
									"c8aef079-b04a-e527-9035-230fb27fbe8e",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_RoyalGuard",
							uuid = "f4c818ff-25f0-ff12-8b3f-84aabe01d9a7",
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
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "2d6878c0-798f-7a7e-a7c6-e2d9854057c6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "8cde1f2d-5859-477e-ad8a-d3d7f5838c87",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "c8aef079-b04a-e527-9035-230fb27fbe8e",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 844.9,
				name = "[LPDU Tank] Stance ON",
				timeRange = true,
				timelineIndex = 168,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "394939b1-db5b-cd01-9476-5e2779745c3f",
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
									"4aa11288-33d4-9b17-bb75-8015fd242d01",
									true,
								},
								
								{
									"14c55f68-9d0e-58da-9ac7-bbc138a72526",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							uuid = "e8c28c8e-268c-95fa-a4d9-e325e5e84a78",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "4aa11288-33d4-9b17-bb75-8015fd242d01",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "14c55f68-9d0e-58da-9ac7-bbc138a72526",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 844.9,
				name = "[LPDU Tank] Camo Trio",
				timeRange = true,
				timelineIndex = 168,
				timerEndOffset = 2,
				timerStartOffset = -1,
				uuid = "f9ff5cd4-be82-0a28-91bf-ba034fa05ef8",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared",
				uuid = "d0cd8842-a7af-79ea-9213-49f3bb853128",
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
									"6f4fae7b-b234-eee1-9cc0-737bc3bf45bf",
									true,
								},
								
								{
									"01342ed6-b89b-f536-8fa5-62f0cea9600c",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Rampart",
							uuid = "d71d4cb0-c24a-29e4-96b2-f5f846f7ff22",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "6f4fae7b-b234-eee1-9cc0-737bc3bf45bf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "01342ed6-b89b-f536-8fa5-62f0cea9600c",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 844.9,
				name = "[LPDU Tank] Rampart Trio",
				timeRange = true,
				timelineIndex = 168,
				timerEndOffset = 1,
				timerStartOffset = -2,
				uuid = "8bee93b3-67a3-5a43-b68b-dee5a5f27282",
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
									"951cc077-bc19-d4dc-a386-20d18ccdfbf9",
									true,
								},
								
								{
									"199ac252-1f6b-4bd6-84e8-2108dcce327f",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_ProvokeMouse",
							targetType = "Enemy",
							uuid = "bdf795fe-0679-987b-8ad3-ebd17732a3f5",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "951cc077-bc19-d4dc-a386-20d18ccdfbf9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "199ac252-1f6b-4bd6-84e8-2108dcce327f",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 844.9,
				name = "[LPDU Tank] Provoke Nearest",
				timeRange = true,
				timelineIndex = 168,
				timerEndOffset = 3,
				uuid = "7a1c4ce6-14a3-11ca-9ce5-82cc827d0358",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "fcdef61a-a413-0973-a624-63caf083f602",
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
									"bfc1d77c-66d6-7388-97c9-4976fe5633d4",
									true,
								},
								
								{
									"b97ac1de-2234-228b-8d6e-6806f5bbb155",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Hotbar_IronWill",
							uuid = "cbf811f0-6a77-d175-82fe-a746ae22239e",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "bfc1d77c-66d6-7388-97c9-4976fe5633d4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "b97ac1de-2234-228b-8d6e-6806f5bbb155",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 844.9,
				name = "[LPDU PLD] Stance ON",
				timeRange = true,
				timelineIndex = 168,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "2e571e16-f7a3-e7e9-9f15-5e9a6a4ecdf8",
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
									"ad3b5274-208c-6bc7-95a0-6380282f9c37",
									true,
								},
								
								{
									"d6adf14f-6d7e-0769-8e60-7366fb2ae4b4",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Bulwark",
							uuid = "a7fce0f8-456c-64d4-affe-9ea6f4ee5aef",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "ad3b5274-208c-6bc7-95a0-6380282f9c37",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "d6adf14f-6d7e-0769-8e60-7366fb2ae4b4",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 844.9,
				name = "[LPDU PLD] Bulwark Trio",
				timeRange = true,
				timelineIndex = 168,
				timerEndOffset = 2,
				timerStartOffset = -1,
				uuid = "6232c542-cd70-f5fd-9f8a-7f342e0865b5",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "8c62fe16-fdd7-0dd9-9ed3-c5cc9e3b8f95",
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
									"f4fdb036-5f8a-893d-be76-2cd2d8a1c279",
									true,
								},
								
								{
									"4f7d0c58-1ea1-a551-a468-dfe040c4dab0",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Hotbar_Defiance",
							uuid = "11fa9d9e-7990-6a6f-8383-07d61d1dff63",
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
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "f4fdb036-5f8a-893d-be76-2cd2d8a1c279",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "4f7d0c58-1ea1-a551-a468-dfe040c4dab0",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 844.9,
				name = "[LPDU WAR] Stance ON",
				timeRange = true,
				timelineIndex = 168,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "1085a520-27b5-5f6c-a601-117f610670e9",
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
									"96c6024a-9c55-8cab-a3cf-ace5e25d1928",
									true,
								},
								
								{
									"a57f642b-a53f-abdc-9407-3c0824b2f5ad",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_ThrillOfBattle",
							uuid = "f2c5f3ae-e983-8d5d-ba39-83490d4f0d43",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "96c6024a-9c55-8cab-a3cf-ace5e25d1928",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "a57f642b-a53f-abdc-9407-3c0824b2f5ad",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 844.9,
				name = "[LPDU WAR] ThrillOfBattle Trio",
				timeRange = true,
				timelineIndex = 168,
				timerEndOffset = 2,
				timerStartOffset = -1,
				uuid = "fd47ae40-6e64-28bf-ae43-7f44682321a7",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "4c5abc3b-8975-62f9-8765-6b3a5682523c",
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
									"f1bcc774-3253-2dbc-8047-bea84ecf4e9c",
									true,
								},
								
								{
									"2b4b83b7-0720-070b-9b3c-50344fb01ca8",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Hotbar_Grit",
							uuid = "20a9b875-b812-e1d6-81ee-e724f886cca4",
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
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "f1bcc774-3253-2dbc-8047-bea84ecf4e9c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "2b4b83b7-0720-070b-9b3c-50344fb01ca8",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 844.9,
				name = "[LPDU DRK] Stance ON",
				timeRange = true,
				timelineIndex = 168,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "069997ec-ce17-5414-9860-2479019532cd",
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
									"f45d6f1d-daae-c5bb-9bac-981a123c3a1e",
									true,
								},
								
								{
									"5dd19daa-8adc-51d9-89a1-d2c1eea7831d",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_DarkMind",
							uuid = "7a8f67a8-ed76-8b99-9412-062c2a71bb73",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "f45d6f1d-daae-c5bb-9bac-981a123c3a1e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "5dd19daa-8adc-51d9-89a1-d2c1eea7831d",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 844.9,
				name = "[LPDU DRK] DarkMind Trio",
				timeRange = true,
				timelineIndex = 168,
				timerEndOffset = 2,
				timerStartOffset = -1,
				uuid = "3be5315c-493f-ce5d-a43d-0a535838f167",
				version = 2,
			},
		},
	},
	[169] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared",
				uuid = "fc418a70-d623-4681-a6ee-01064b0292c4",
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
									"b88e2b09-b897-067f-abac-3ed4d551e5e8",
									true,
								},
								
								{
									"2903a13a-a49a-57be-87e1-e4dcc07a02fc",
									true,
								},
								
								{
									"ef0c24e0-8f94-a352-8c22-a1a761a976f3",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "0669662b-94df-78af-8e44-a728809b54d7",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "b88e2b09-b897-067f-abac-3ed4d551e5e8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "2903a13a-a49a-57be-87e1-e4dcc07a02fc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 5,
							name = "Reprisal range <=5y",
							partyTargetType = "Detection Target",
							uuid = "228003ab-316a-5ca0-a455-39d3f9c1a6fd",
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
									"228003ab-316a-5ca0-a455-39d3f9c1a6fd",
									true,
								},
							},
							filterTargetType = "Enemy",
							name = "Enemy in Reprisal range",
							uuid = "ef0c24e0-8f94-a352-8c22-a1a761a976f3",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 852.9,
				name = "[LPDU Tank] OT Reprisal",
				timeRange = true,
				timelineIndex = 169,
				timerEndOffset = -2,
				timerStartOffset = -5,
				uuid = "a3382526-b14c-f980-88f7-83f51b8659ea",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker",
				uuid = "4382f2b2-2a9a-4748-ba68-f1cd2c1ff539",
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
									"91134983-a2ab-6a2e-8fd7-9783ead0c8bf",
									true,
								},
								
								{
									"dbc3a710-c57e-041a-b45a-3b42f1eb9408",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "8b2206ca-186d-ab42-bc78-00a3159b3ed9",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "91134983-a2ab-6a2e-8fd7-9783ead0c8bf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "dbc3a710-c57e-041a-b45a-3b42f1eb9408",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 852.9,
				name = "[LPDU Tank] HoS Self",
				timeRange = true,
				timelineIndex = 169,
				timerEndOffset = 0.5,
				timerStartOffset = -2.5,
				uuid = "58880aaf-996b-2fcf-9419-0538a8f0a17a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "10529fe1-2a90-3554-92d7-5595bb3f8b7c",
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
									"8407ec97-1932-6d96-9ede-b0153bf16359",
									true,
								},
								
								{
									"57bb60b4-7392-1ec1-807c-af9eecf6ad39",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HolySheltron",
							uuid = "ee444fdf-8217-e62d-8e60-3328f65419fe",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "8407ec97-1932-6d96-9ede-b0153bf16359",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "57bb60b4-7392-1ec1-807c-af9eecf6ad39",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 852.9,
				name = "[LPDU PLD] Sheltron/Intervention Self",
				timeRange = true,
				timelineIndex = 169,
				timerEndOffset = 0.5,
				timerStartOffset = -2.5,
				uuid = "2f9c8e64-ce8a-2647-a868-637ce72cd63a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "bb7e41a4-e3f8-cd7e-bbd9-90ae8634483a",
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
									"c86c67e6-8fda-7140-8612-24baa3a51789",
									true,
								},
								
								{
									"388b5875-8f34-a854-ae0c-ddbd6ca1ce29",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Bloodwhetting",
							uuid = "a2e8848c-5a32-b568-bb20-fe1bcd1419d1",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "c86c67e6-8fda-7140-8612-24baa3a51789",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "388b5875-8f34-a854-ae0c-ddbd6ca1ce29",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 852.9,
				name = "[LPDU WAR] Raw Intuition Self",
				timeRange = true,
				timelineIndex = 169,
				timerEndOffset = 0.5,
				timerStartOffset = -2.5,
				uuid = "f2aa5979-b90a-7ce5-baa6-c8839013e1f2",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "1ce942c2-77dc-b902-8441-173aa7168dd0",
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
									"3cdedfda-4782-b323-9c93-98225cb73b14",
									true,
								},
								
								{
									"bc13bad2-9353-815b-8f92-d5c37e8e592f",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf",
							uuid = "6a7f18fe-0d70-79ea-a246-639701eb013f",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "3cdedfda-4782-b323-9c93-98225cb73b14",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "bc13bad2-9353-815b-8f92-d5c37e8e592f",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 852.9,
				name = "[LPDU DRK] TBN Self",
				timeRange = true,
				timelineIndex = 169,
				timerEndOffset = 0.5,
				timerStartOffset = -2.5,
				uuid = "a96ea54f-93a3-2caf-a79d-8294e56a1ca8",
				version = 2,
			},
		},
	},
	[175] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared",
				uuid = "fb75dcc3-8394-2fb3-aac7-fce068e546de",
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
									"2f032962-f514-b233-a1c2-55607001b946",
									true,
								},
								
								{
									"a36e4127-86c2-b04c-8761-7576aa7bb98a",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Sprint",
							uuid = "9e38471e-3f6f-64ca-b8d8-bb8ce6143675",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "2f032962-f514-b233-a1c2-55607001b946",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "a36e4127-86c2-b04c-8761-7576aa7bb98a",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 885.5,
				name = "[LPDU Tank] Sprint",
				timeRange = true,
				timelineIndex = 175,
				timerEndOffset = -6,
				timerStartOffset = -9,
				uuid = "6e82280b-6103-394f-a92c-b117d4ef8f25",
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
				name = "Gunbreaker",
				uuid = "809ceaf3-e0ef-b148-981b-f93dbc3a998f",
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
									"debd6187-57cb-6bb8-8a03-8892404a145a",
									true,
								},
								
								{
									"349dd11b-83ca-825d-b3d4-b70e59d6baab",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "cd56d14e-b08f-488a-ab82-14ae100006ea",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "debd6187-57cb-6bb8-8a03-8892404a145a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "349dd11b-83ca-825d-b3d4-b70e59d6baab",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 896.5,
				name = "[LPDU Tank] HoL",
				timeRange = true,
				timelineIndex = 176,
				timerEndOffset = -11,
				timerStartOffset = -14,
				uuid = "9d2a23e9-501b-0adf-b5c4-b0ae7fe7530e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared",
				uuid = "b9371d0e-fb25-99a3-9cc4-0eef7d8bd49f",
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
									"67b7b6ed-0913-7b65-b4c4-a3765dacb039",
									true,
								},
								
								{
									"1ccc5dd2-f539-2c7a-a66a-aaf94d846673",
									true,
								},
								
								{
									"7256786d-b922-5ebf-9c10-14a49536fc8a",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "b9092d16-2ac2-7bf6-919c-c297688fca22",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "67b7b6ed-0913-7b65-b4c4-a3765dacb039",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "1ccc5dd2-f539-2c7a-a66a-aaf94d846673",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 5,
							name = "Reprisal range <=5y",
							partyTargetType = "Detection Target",
							uuid = "076119e4-d61f-76d3-9ca9-54825707e30c",
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
									"076119e4-d61f-76d3-9ca9-54825707e30c",
									true,
								},
							},
							filterTargetType = "Enemy",
							name = "Enemy in Reprisal range",
							uuid = "7256786d-b922-5ebf-9c10-14a49536fc8a",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 896.5,
				name = "[LPDU Tank] MT Reprisal",
				timeRange = true,
				timelineIndex = 176,
				timerEndOffset = -2,
				timerStartOffset = -5,
				uuid = "937e29d2-bade-20c7-a033-94b4325bf889",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "33f45878-36ba-037a-986f-f7e7bf0436b1",
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
									"7fed7c89-30fe-3991-abf0-aa63a98f1ec2",
									true,
								},
								
								{
									"89410e7f-0805-a5be-8ed5-14f6f2e49915",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_DivineVeil",
							uuid = "95e0b5c9-d01c-fedc-972f-d1448c9af633",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "7fed7c89-30fe-3991-abf0-aa63a98f1ec2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "89410e7f-0805-a5be-8ed5-14f6f2e49915",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 896.5,
				name = "[LPDU PLD] DivineVeil",
				timeRange = true,
				timelineIndex = 176,
				timerEndOffset = -11,
				timerStartOffset = -14,
				uuid = "33cc4b60-76e2-9133-a3bc-51769292d78b",
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
							aType = "Alert",
							alertDuration = 4000,
							alertTTS = true,
							alertText = "PASSAGE OF ARMS IN 2s - position for party",
							conditions = 
							{
								
								{
									"bd181467-4feb-ce92-b18a-cb9fcd17eff7",
									true,
								},
								
								{
									"ea5a1ab8-7892-63d3-bf43-90bccefb8bd7",
									true,
								},
							},
							uuid = "6abf51ca-0ae4-6f3a-9d47-0b7b7978ae33",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "bd181467-4feb-ce92-b18a-cb9fcd17eff7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "ea5a1ab8-7892-63d3-bf43-90bccefb8bd7",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 896.5,
				name = "[LPDU PLD] Passage - manual positioning",
				timeRange = true,
				timelineIndex = 176,
				timerEndOffset = -15.5,
				timerStartOffset = -16,
				uuid = "80da5026-e97d-f21d-8f34-2b6476acda0b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "65bc9146-8d29-9db3-8ed7-e36f44ab42d5",
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
									"21db74b6-6f93-c80e-8ef7-087b00eab07f",
									true,
								},
								
								{
									"3a76a0db-8871-412e-ab32-f444a7f8badd",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_ShakeItOff",
							uuid = "3282cbda-8c64-2068-98e8-20f62fe1584d",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "21db74b6-6f93-c80e-8ef7-087b00eab07f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "3a76a0db-8871-412e-ab32-f444a7f8badd",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 896.5,
				name = "[LPDU WAR] ShakeItOff",
				timeRange = true,
				timelineIndex = 176,
				timerEndOffset = -11,
				timerStartOffset = -14,
				uuid = "826e3e77-1ed1-2674-a4a5-ee25c43bd39c",
				version = 2,
			},
		},
	},
	[178] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker",
				uuid = "51e2f8e5-2a7e-ad1a-bb6e-4938dea65114",
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
									"1939eda2-ee50-11d6-9b87-fa1375ab096b",
									true,
								},
								
								{
									"9b7d397c-5a8d-ac6c-86d5-8efecffa4e76",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_AuroraSelf",
							uuid = "6915065c-6269-a4c9-ba63-6ab4d428b311",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "1939eda2-ee50-11d6-9b87-fa1375ab096b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "9b7d397c-5a8d-ac6c-86d5-8efecffa4e76",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 904.6,
				name = "[LPDU Tank] Aurora Self",
				timeRange = true,
				timelineIndex = 178,
				timerEndOffset = -5,
				timerStartOffset = -8,
				uuid = "dce73bfe-36d3-dfa9-8eb1-fada119d3c7a",
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
									"77f090bd-9a18-247a-bd51-6e8fe7e7ad0d",
									true,
								},
								
								{
									"a3b81690-8b85-8f13-9465-f4a4b808b459",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Nebula",
							uuid = "fc29c7bd-4711-cea9-9851-71b0e6eeaf12",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "77f090bd-9a18-247a-bd51-6e8fe7e7ad0d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "a3b81690-8b85-8f13-9465-f4a4b808b459",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 904.6,
				name = "[LPDU Tank] Nebula",
				timeRange = true,
				timelineIndex = 178,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "f6ab4a58-fc10-d888-8981-38e15dc02be7",
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
									"907fd5d2-0e0d-e4b6-9276-2e289845b24b",
									true,
								},
								
								{
									"a2f5b6f7-2a94-333c-91fc-5a2178e40e11",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "45869b30-3254-01e7-a920-6f9e9e3d4c92",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "907fd5d2-0e0d-e4b6-9276-2e289845b24b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "a2f5b6f7-2a94-333c-91fc-5a2178e40e11",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 904.6,
				name = "[LPDU Tank] HoS Self",
				timeRange = true,
				timelineIndex = 178,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "797a9da0-c7b1-9392-a29d-962f628f2e6a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared",
				uuid = "349cf4e9-3771-944f-a942-ff6f70723e52",
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
									"505714cc-9855-bcfb-a58f-b25cfa9463c6",
									true,
								},
								
								{
									"e8b092ff-f771-bb5d-819f-5297eeb34d55",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "a8ad1eb5-64ef-29bc-b614-27d4ea83c8fe",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "505714cc-9855-bcfb-a58f-b25cfa9463c6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "e8b092ff-f771-bb5d-819f-5297eeb34d55",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 904.6,
				name = "[LPDU Tank] Provoke",
				timeRange = true,
				timelineIndex = 178,
				timerEndOffset = 0.5,
				timerStartOffset = -2.5,
				uuid = "6b8dd7d5-0705-259e-bbe4-f7d620436413",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "87418aec-30eb-312e-b6e1-2d90b47eb78d",
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
									"9ff94d77-8382-c4be-a890-cd2086568b52",
									true,
								},
								
								{
									"aa39b86f-fb73-8262-8424-ebb7721e0415",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Guardian",
							uuid = "554e18c2-cb48-1815-8dd5-6475c4b43f84",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "9ff94d77-8382-c4be-a890-cd2086568b52",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "aa39b86f-fb73-8262-8424-ebb7721e0415",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 904.6,
				name = "[LPDU PLD] Guardian",
				timeRange = true,
				timelineIndex = 178,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "6732953d-15cf-5482-b431-5067061de2eb",
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
									"441b9a95-33e7-a55f-9457-71882e5ab8cb",
									true,
								},
								
								{
									"06583920-670e-00ea-a5c9-72b91898c9b2",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HolySheltron",
							uuid = "762d4ed4-9a40-6488-9b45-0e69afcaa5b1",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "441b9a95-33e7-a55f-9457-71882e5ab8cb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "06583920-670e-00ea-a5c9-72b91898c9b2",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 904.6,
				name = "[LPDU PLD] Sheltron/Intervention Self",
				timeRange = true,
				timelineIndex = 178,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "0e95b0ff-6022-a9d9-a31d-0e980fe09f5b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "e66ca72c-c875-c9ec-ae61-5b4e8fbc936e",
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
									"5ffc3ef9-ff3f-5dc5-9865-e0ea4ecc3dbf",
									true,
								},
								
								{
									"da5b1bc5-5867-d3f8-becf-5beb934715c1",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Equilibrium",
							uuid = "b422d558-6b91-c6e3-9040-6539c5bbce8e",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "5ffc3ef9-ff3f-5dc5-9865-e0ea4ecc3dbf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "da5b1bc5-5867-d3f8-becf-5beb934715c1",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 904.6,
				name = "[LPDU WAR] Equilibrium Self",
				timeRange = true,
				timelineIndex = 178,
				timerEndOffset = -5,
				timerStartOffset = -8,
				uuid = "73c726ca-2656-51a3-afe8-84bcdeb0274f",
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
									"5940de70-41c8-ec13-ab0d-900677d153bf",
									true,
								},
								
								{
									"760a9a92-4ad0-1c83-8740-11051bcfaf56",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Damnation",
							uuid = "7458a3e4-f523-593e-b12a-d0282f84b935",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "5940de70-41c8-ec13-ab0d-900677d153bf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "760a9a92-4ad0-1c83-8740-11051bcfaf56",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 904.6,
				name = "[LPDU WAR] Damnation",
				timeRange = true,
				timelineIndex = 178,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "2fde3e0a-7ac1-195d-a5dd-553169f946f7",
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
									"7708b417-053c-4ad3-8904-95cd6f457fc4",
									true,
								},
								
								{
									"c759d235-8ab1-68be-8490-c6bc8597f6cb",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Bloodwhetting",
							uuid = "1e0fc248-7f87-9065-bd6e-630b5492494e",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "7708b417-053c-4ad3-8904-95cd6f457fc4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "c759d235-8ab1-68be-8490-c6bc8597f6cb",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 904.6,
				name = "[LPDU WAR] Raw Intuition Self",
				timeRange = true,
				timelineIndex = 178,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "714de169-1944-02af-8fa2-0a7f85169a4d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "5af9c280-4bbc-8494-a7c7-848406f065e8",
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
									"8176dd2c-f91d-677c-89d1-2ec44c731f20",
									true,
								},
								
								{
									"1d293021-563d-2977-a3ef-b20891bdb716",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_ShadowedVigil",
							uuid = "3e5ebf1a-56a4-b83f-9a46-0ab3e05eaa22",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "8176dd2c-f91d-677c-89d1-2ec44c731f20",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "1d293021-563d-2977-a3ef-b20891bdb716",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 904.6,
				name = "[LPDU DRK] ShadowedVigil",
				timeRange = true,
				timelineIndex = 178,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "5f1d50ea-5481-59e5-be6d-e6afd3757518",
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
									"de75e4e9-1443-57fc-a754-b1d73b3b1512",
									true,
								},
								
								{
									"d9abfbc2-84fc-bda1-a001-073d8431bb90",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf",
							uuid = "e6ad7501-ebb5-8d51-8a5a-19406678705e",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "de75e4e9-1443-57fc-a754-b1d73b3b1512",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "d9abfbc2-84fc-bda1-a001-073d8431bb90",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 904.6,
				name = "[LPDU DRK] TBN Self",
				timeRange = true,
				timelineIndex = 178,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "c3fd324e-59ce-859c-8b0e-1852d2f83da1",
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
				name = "Shared",
				uuid = "bd3859df-5b1d-2dea-aa64-f8234d9176d1",
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
									"a2303ac0-4e3e-93fa-adbc-60541d39228b",
									true,
								},
								
								{
									"775785f0-d559-db70-9f94-deee5411aa04",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Sprint",
							uuid = "4299a76e-b3d5-fa16-b554-18e56be8b0f4",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "a2303ac0-4e3e-93fa-adbc-60541d39228b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "775785f0-d559-db70-9f94-deee5411aa04",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 947.9,
				name = "[LPDU Tank] Sprint",
				timeRange = true,
				timelineIndex = 185,
				timerEndOffset = -6,
				timerStartOffset = -9,
				uuid = "ac568e76-fd69-7e97-b883-cfcf20180864",
				version = 2,
			},
		},
	},
	[187] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared",
				uuid = "edfb098b-d3b7-31d8-909f-1eefd3ca5014",
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
									"47195d9e-da41-4ddf-91fb-d038d2d1f4ba",
									true,
								},
								
								{
									"0c625e7f-0568-b8f4-a8d9-62f27eac8e05",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Rampart",
							uuid = "2539d6e0-9d4c-89b9-8828-7bbc31a78cac",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "47195d9e-da41-4ddf-91fb-d038d2d1f4ba",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "0c625e7f-0568-b8f4-a8d9-62f27eac8e05",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 960.7,
				name = "[LPDU Tank] Rampart",
				timeRange = true,
				timelineIndex = 187,
				timerEndOffset = -16,
				timerStartOffset = -19,
				uuid = "7a52ecb0-eddd-bef5-b170-885f2fcea22d",
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
									"ee128485-8a49-e3a8-807d-2a2d16c9b6fc",
									true,
								},
								
								{
									"d631d321-b85b-4194-8062-c08daa8e83db",
									true,
								},
								
								{
									"8eb7ef81-2e14-0664-9771-64aedac2bcb2",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "46c9ab6a-f7f7-3b04-9272-33f50d3dcf58",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "ee128485-8a49-e3a8-807d-2a2d16c9b6fc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "d631d321-b85b-4194-8062-c08daa8e83db",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 5,
							name = "Reprisal range <=5y",
							partyTargetType = "Detection Target",
							uuid = "f53ec63b-99b2-aa86-8d0f-a3e68d3f0160",
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
									"f53ec63b-99b2-aa86-8d0f-a3e68d3f0160",
									true,
								},
							},
							filterTargetType = "Enemy",
							name = "Enemy in Reprisal range",
							uuid = "8eb7ef81-2e14-0664-9771-64aedac2bcb2",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 960.7,
				name = "[LPDU Tank] MT Reprisal",
				timeRange = true,
				timelineIndex = 187,
				timerEndOffset = -6,
				timerStartOffset = -9,
				uuid = "2ffd1982-c800-72ae-8b01-96b8580c731c",
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
									"70df99dc-1000-e500-9db5-3b155571cac6",
									true,
								},
								
								{
									"52a37b08-8ded-b8be-a898-a213853b1282",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "1900d189-d19a-fa1f-a8e4-f1fcc514997f",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "70df99dc-1000-e500-9db5-3b155571cac6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "52a37b08-8ded-b8be-a898-a213853b1282",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 960.7,
				name = "[LPDU Tank] Provoke",
				timeRange = true,
				timelineIndex = 187,
				timerStartOffset = -3,
				uuid = "7ac4153f-a994-525b-a73a-b94ba7747768",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker",
				uuid = "e74cf1dc-b37b-9d98-ab48-4705db911edf",
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
									"87a50442-849c-816d-aa3d-095f67ebcb62",
									true,
								},
								
								{
									"bf5e2dee-967f-e770-b7d2-0046ce6aeaf1",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							uuid = "7a6b1f20-1f9f-21d8-a335-18789a17e5cc",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "87a50442-849c-816d-aa3d-095f67ebcb62",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "bf5e2dee-967f-e770-b7d2-0046ce6aeaf1",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 960.7,
				name = "[LPDU Tank] Camo",
				timeRange = true,
				timelineIndex = 187,
				timerEndOffset = -14,
				timerStartOffset = -17,
				uuid = "729eb264-56f4-6486-a96f-7a0a39b70d2b",
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
									"d5d80da0-5e59-bff1-8eb4-19402a004da3",
									true,
								},
								
								{
									"5ad2d863-95c9-58f4-98d9-3121be16b1f0",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "ec0daf42-17e1-c18f-9bfa-938360c6f254",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "d5d80da0-5e59-bff1-8eb4-19402a004da3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "5ad2d863-95c9-58f4-98d9-3121be16b1f0",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 960.7,
				name = "[LPDU Tank] HoS Self",
				timeRange = true,
				timelineIndex = 187,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "af23f02e-c61f-6d26-830e-a78bc596ea11",
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
									"862a686b-6bfc-fe53-b7be-c084ea5d109e",
									true,
								},
								
								{
									"b9b8ff5c-e3fa-a4a1-8f13-08289e0b69ce",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_AuroraSelf",
							uuid = "6d897635-9bfc-4d1f-8544-a360af2793f0",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "862a686b-6bfc-fe53-b7be-c084ea5d109e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "b9b8ff5c-e3fa-a4a1-8f13-08289e0b69ce",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 960.7,
				name = "[LPDU Tank] Aurora Self",
				timeRange = true,
				timelineIndex = 187,
				timerEndOffset = 3,
				uuid = "340ed758-2469-9ea8-8564-bdfd64b812d0",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "ade92463-87c2-9740-b8a8-543cb27f2294",
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
									"c946cbe8-267f-190b-a874-de3b3ef15b34",
									true,
								},
								
								{
									"b7e5d313-7717-88d8-af9f-0af607d9c582",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Bulwark",
							uuid = "304db05f-25e2-531b-8864-34b200d18142",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "c946cbe8-267f-190b-a874-de3b3ef15b34",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "b7e5d313-7717-88d8-af9f-0af607d9c582",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 960.7,
				name = "[LPDU PLD] Bulwark",
				timeRange = true,
				timelineIndex = 187,
				timerEndOffset = -14,
				timerStartOffset = -17,
				uuid = "b60ff85e-ebe0-14bb-aff9-19b3049ed47e",
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
									"1c7a71cd-2178-4a34-9a2f-1aa44c89c4ec",
									true,
								},
								
								{
									"150d42ea-a3eb-dc2b-8ba0-2afa207f65a4",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HolySheltron",
							uuid = "adf8e6a7-42b7-d56e-bfdc-d4533eac09c1",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "1c7a71cd-2178-4a34-9a2f-1aa44c89c4ec",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "150d42ea-a3eb-dc2b-8ba0-2afa207f65a4",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 960.7,
				name = "[LPDU PLD] Sheltron/Intervention Self",
				timeRange = true,
				timelineIndex = 187,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "8f2f5acb-f2ef-0d87-aff8-0af1e2d3b07e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "ae86da8f-8d6c-5dd4-bacb-daee607bcb2b",
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
									"6609da0e-00e4-20f5-9f5e-a1f979c3280a",
									true,
								},
								
								{
									"69f7cd87-44e4-f569-a4fc-492c50d2a30e",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_ThrillOfBattle",
							uuid = "75bbdc63-c936-a691-b3f0-f845c0ef6679",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "6609da0e-00e4-20f5-9f5e-a1f979c3280a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "69f7cd87-44e4-f569-a4fc-492c50d2a30e",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 960.7,
				name = "[LPDU WAR] ThrillOfBattle",
				timeRange = true,
				timelineIndex = 187,
				timerEndOffset = -14,
				timerStartOffset = -17,
				uuid = "6c170ddf-87af-a781-a42e-f9e6b5fb5f25",
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
									"791ed624-90c7-2558-a0ef-3dd27aeeee94",
									true,
								},
								
								{
									"9cd085b3-7e19-546f-a2e9-269168576c99",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Bloodwhetting",
							uuid = "0255bc57-0cb9-1177-810d-09d16d7b25f7",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "791ed624-90c7-2558-a0ef-3dd27aeeee94",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "9cd085b3-7e19-546f-a2e9-269168576c99",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 960.7,
				name = "[LPDU WAR] Raw Intuition Self",
				timeRange = true,
				timelineIndex = 187,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "c6c2dbf0-8dea-53ae-9077-a09730179188",
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
									"03cec5ea-73c3-322e-a413-766b19dfab03",
									true,
								},
								
								{
									"9f61b937-f383-5217-beaf-45ba2caff009",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Equilibrium",
							uuid = "410fe3d7-d900-2a42-9a78-54881e70cdb0",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "03cec5ea-73c3-322e-a413-766b19dfab03",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "9f61b937-f383-5217-beaf-45ba2caff009",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 960.7,
				name = "[LPDU WAR] Equilibrium Self",
				timeRange = true,
				timelineIndex = 187,
				timerEndOffset = 3,
				uuid = "5a8f256d-25a0-922e-b7b9-0c1201d52509",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "45c69445-b098-b989-b143-d4e1a44de25e",
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
									"fe254ff7-b486-2e77-bf1e-217521ec7204",
									true,
								},
								
								{
									"4c7612b8-8c11-4a4f-a635-d3e8870ca856",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_DarkMind",
							uuid = "7c5500f5-a498-2961-b964-4ce8cdf7b222",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "fe254ff7-b486-2e77-bf1e-217521ec7204",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "4c7612b8-8c11-4a4f-a635-d3e8870ca856",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 960.7,
				name = "[LPDU DRK] DarkMind",
				timeRange = true,
				timelineIndex = 187,
				timerEndOffset = -14,
				timerStartOffset = -17,
				uuid = "d34814a2-362c-91b0-9627-ff37102a1f70",
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
									"70a64f2d-12f8-766e-ae25-83d682d93ad5",
									true,
								},
								
								{
									"d9f5c1b3-bf98-f4b8-ba6d-6f0bb099b9d9",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf",
							uuid = "2acf49db-0f3a-6f0a-989d-bcbdf6bf96d6",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "70a64f2d-12f8-766e-ae25-83d682d93ad5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "d9f5c1b3-bf98-f4b8-ba6d-6f0bb099b9d9",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 960.7,
				name = "[LPDU DRK] TBN Self",
				timeRange = true,
				timelineIndex = 187,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "519f58b5-3a65-bc7c-a593-1e8dbb9a2c22",
				version = 2,
			},
		},
	},
	[188] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared",
				uuid = "9f9f151a-1ca7-8ddf-999a-2e3424e24241",
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
									"ff431fc6-9ac7-7b8c-91d0-580af6d0d1b2",
									true,
								},
								
								{
									"160e12fe-d08c-3037-a498-1a77eb6fec37",
									true,
								},
								
								{
									"bd683360-09e8-527c-bedf-019268858742",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "2940dbb4-5545-4a9f-b571-5899a190f3a5",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "ff431fc6-9ac7-7b8c-91d0-580af6d0d1b2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "160e12fe-d08c-3037-a498-1a77eb6fec37",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 5,
							name = "Reprisal range <=5y",
							partyTargetType = "Detection Target",
							uuid = "c8b34982-da8b-2b1f-a078-73c8fa4f5879",
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
									"c8b34982-da8b-2b1f-a078-73c8fa4f5879",
									true,
								},
							},
							filterTargetType = "Enemy",
							name = "Enemy in Reprisal range",
							uuid = "bd683360-09e8-527c-bedf-019268858742",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 973,
				name = "[LPDU Tank] OT Reprisal",
				timeRange = true,
				timelineIndex = 188,
				timerEndOffset = -2,
				timerStartOffset = -5,
				uuid = "cf9ba22d-e752-9e59-bc84-68d727b65f40",
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
				name = "Gunbreaker",
				uuid = "5f795817-7bed-f41f-a6ef-91b959059ab6",
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
									"e374d7eb-3e75-9b58-b0f0-d8272e5e8da1",
									true,
								},
								
								{
									"b35e1963-6e23-8aea-9046-622eed57eff2",
									true,
								},
								
								{
									"535f6677-11f2-d637-824f-63876035cc89",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_ReleaseRoyalGuard",
							uuid = "1974cd91-5d25-6ba3-865f-311c5de695a5",
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
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "e374d7eb-3e75-9b58-b0f0-d8272e5e8da1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "b35e1963-6e23-8aea-9046-622eed57eff2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 1833,
							category = "Self",
							uuid = "535f6677-11f2-d637-824f-63876035cc89",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 1245,
				name = "[LPDU Tank] OT Stance OFF",
				timeRange = true,
				timelineIndex = 193,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "9fd1c399-5652-c658-b83e-a55060fc2b3b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared",
				uuid = "58b76cd6-7a3f-9071-8c26-acf0289c4438",
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
									"22f3526f-727b-70f0-9570-a687200f4577",
									true,
								},
								
								{
									"4341ac9c-654a-3be1-9110-800017e8b83d",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "28bfd578-030f-9518-b10f-3148f843b126",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "22f3526f-727b-70f0-9570-a687200f4577",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "4341ac9c-654a-3be1-9110-800017e8b83d",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 1245,
				name = "[LPDU Tank] MT Provoke",
				timeRange = true,
				timelineIndex = 193,
				timerEndOffset = 3,
				uuid = "40922275-2132-ccd3-9969-bf66a9fc3f03",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "5630447e-de45-d833-ba0e-1b6649366fd6",
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
									"87818c39-ba9d-4e89-980c-af81191d7a5b",
									true,
								},
								
								{
									"385a71e7-64fe-90e7-abe1-94c05a55af1d",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Hotbar_ReleaseIronWill",
							uuid = "bea3c5e8-dd6b-3439-9cd7-63e5709589ab",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "87818c39-ba9d-4e89-980c-af81191d7a5b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "385a71e7-64fe-90e7-abe1-94c05a55af1d",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 1245,
				name = "[LPDU PLD] OT Stance OFF",
				timeRange = true,
				timelineIndex = 193,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "a22b25e7-d980-f79d-9d4d-cfffab5f7633",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "64351776-515f-d8dd-bd35-92aff2d66bd0",
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
									"7f896b01-8a7c-2296-9e2c-98d82bc3d380",
									true,
								},
								
								{
									"b1d59cb0-4f08-59b7-8ebd-5a3696a5633b",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Hotbar_ReleaseDefiance",
							uuid = "8fa8b964-28b8-da15-960c-dde008371f29",
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
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "7f896b01-8a7c-2296-9e2c-98d82bc3d380",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "b1d59cb0-4f08-59b7-8ebd-5a3696a5633b",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 1245,
				name = "[LPDU WAR] OT Stance OFF",
				timeRange = true,
				timelineIndex = 193,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "1b7e12ff-176d-6295-a278-b885e3ada4e5",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "da643457-fd5e-854a-87cd-eaa31fe78271",
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
									"a4855ea4-7209-b116-9928-4532a02ca453",
									true,
								},
								
								{
									"ccc3d98e-dbec-d101-8301-7e27840a281b",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Hotbar_ReleaseGrit",
							uuid = "e1aaae98-3ec1-520e-ab3d-730566f8e972",
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
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "a4855ea4-7209-b116-9928-4532a02ca453",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "ccc3d98e-dbec-d101-8301-7e27840a281b",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 1245,
				name = "[LPDU DRK] OT Stance OFF",
				timeRange = true,
				timelineIndex = 193,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "dfe35828-ffe2-4b28-bffe-5f137f74a3da",
				version = 2,
			},
		},
	},
	[195] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared",
				uuid = "6b4fdcb4-ed2a-364d-9087-57604a6a8f82",
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
									"55910555-9df6-2934-a9ed-691bf3074d1e",
									true,
								},
								
								{
									"402c0b41-8ee9-4be2-b424-de0daeb03a4d",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Rampart",
							uuid = "c2e3fe65-cefd-970f-9e8e-1116d1c8c100",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "55910555-9df6-2934-a9ed-691bf3074d1e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "402c0b41-8ee9-4be2-b424-de0daeb03a4d",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 1257.5,
				name = "[LPDU Tank] Rampart",
				timeRange = true,
				timelineIndex = 195,
				timerEndOffset = -5,
				timerStartOffset = -8,
				uuid = "701be4a0-63be-dd68-a14b-a4ee4c9a3ca5",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker",
				uuid = "d60bcc8b-428b-4fc3-8c2f-dd73c7a8ee7c",
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
									"e6d58095-953c-d49f-9ccd-fa9c290d6002",
									true,
								},
								
								{
									"3ea082cf-379f-8d04-b46d-50a3f0716734",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							uuid = "e105b542-cccb-4f70-bbb0-1fbf34bceddb",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "e6d58095-953c-d49f-9ccd-fa9c290d6002",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "3ea082cf-379f-8d04-b46d-50a3f0716734",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 1257.5,
				name = "[LPDU Tank] Camo",
				timeRange = true,
				timelineIndex = 195,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "ed0fbda1-274a-00c2-b2c1-308528345bda",
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
									"68fc8b3e-14fe-ae1c-aed1-f77881352229",
									true,
								},
								
								{
									"faa7065d-c8d5-eaa5-975b-456a36778369",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Nebula",
							uuid = "f3d169b1-64e0-70e5-bb2e-c9fbe471cc36",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "68fc8b3e-14fe-ae1c-aed1-f77881352229",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "faa7065d-c8d5-eaa5-975b-456a36778369",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 1257.5,
				name = "[LPDU Tank] Nebula",
				timeRange = true,
				timelineIndex = 195,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "09a97655-ede3-6d81-8cd6-e8db65e4a572",
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
									"7268b646-b159-da59-989a-5b8c094716ca",
									true,
								},
								
								{
									"921237a9-2cbd-ac95-b789-5716a77dcbac",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "b830a368-b752-0897-9ff3-390bc9a9f520",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "7268b646-b159-da59-989a-5b8c094716ca",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "921237a9-2cbd-ac95-b789-5716a77dcbac",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 1257.5,
				name = "[LPDU Tank] HoS Self",
				timeRange = true,
				timelineIndex = 195,
				timerEndOffset = 0.5,
				timerStartOffset = -2.5,
				uuid = "6a139a43-82f0-418a-a597-b12ea193c47a",
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
									"d2d34e22-d755-9a3b-bebd-9db576be38da",
									true,
								},
								
								{
									"0eaf3920-f2c5-6163-8bbd-bbcebc946a02",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_AuroraSelf",
							uuid = "656c12c6-4415-8d87-ae07-cf66ba945fbe",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "d2d34e22-d755-9a3b-bebd-9db576be38da",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "0eaf3920-f2c5-6163-8bbd-bbcebc946a02",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 1257.5,
				name = "[LPDU Tank] Aorora Self",
				timeRange = true,
				timelineIndex = 195,
				timerEndOffset = 3,
				uuid = "ec6897ae-eebe-d341-a830-68d7e5fd1eec",
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
									"019f8751-5b0f-0f5a-9f54-b82e7dc9f928",
									true,
								},
								
								{
									"8f06c177-ac67-bf14-bdbd-aaf3f66db008",
									true,
								},
								
								{
									"a8211c7c-4464-8fe6-ab4b-3d8206ad14d2",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_RoyalGuard",
							uuid = "c9f74a00-f3c7-8376-bcf1-9eab76645a3c",
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
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "019f8751-5b0f-0f5a-9f54-b82e7dc9f928",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "8f06c177-ac67-bf14-bdbd-aaf3f66db008",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "a8211c7c-4464-8fe6-ab4b-3d8206ad14d2",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 1257.5,
				name = "[LPDU Tank] OT Stance ON",
				timeRange = true,
				timelineIndex = 195,
				timerEndOffset = 11,
				timerStartOffset = 8,
				uuid = "5f893a70-d3ca-afc7-a282-afd26ae8f3d5",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "57d2e5b6-3de3-f2a3-8ce2-9309300659d2",
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
									"03e281ca-61c8-06a1-ac4f-74e08520203e",
									true,
								},
								
								{
									"9b1e8012-6a79-e638-a942-675a4ad243ae",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Bulwark",
							uuid = "af32f4bd-c8a9-0421-be2b-4b4045b16c56",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "03e281ca-61c8-06a1-ac4f-74e08520203e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "9b1e8012-6a79-e638-a942-675a4ad243ae",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 1257.5,
				name = "[LPDU PLD] Bulwark",
				timeRange = true,
				timelineIndex = 195,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "a5b290b5-c00a-2655-9705-e4dacc13766f",
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
									"3456dceb-09fc-3993-bab2-4969d3113556",
									true,
								},
								
								{
									"052d9d5f-b5f9-f349-87de-451ee3f5a1dc",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Guardian",
							uuid = "0a4349c3-f45a-5115-be71-62f4b656e12c",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "3456dceb-09fc-3993-bab2-4969d3113556",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "052d9d5f-b5f9-f349-87de-451ee3f5a1dc",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 1257.5,
				name = "[LPDU PLD] Guardian",
				timeRange = true,
				timelineIndex = 195,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "ed60fd00-d08a-aab3-963f-7841a2f0f209",
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
									"01b37537-73b5-4c37-8169-d1fd3715e660",
									true,
								},
								
								{
									"caf3d16d-886c-5b06-b532-cad7dbb526b5",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HolySheltron",
							uuid = "feca6f70-0a88-bf77-a8b2-1a931c2efb37",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "01b37537-73b5-4c37-8169-d1fd3715e660",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "caf3d16d-886c-5b06-b532-cad7dbb526b5",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 1257.5,
				name = "[LPDU PLD] Sheltron/Intervention Self",
				timeRange = true,
				timelineIndex = 195,
				timerEndOffset = 0.5,
				timerStartOffset = -2.5,
				uuid = "80f6f2a9-3624-6ce9-bda6-daf7c4700425",
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
									"72eb4db5-019f-4b4d-a4a8-8b8f70abcdab",
									true,
								},
								
								{
									"dff8c1d6-4814-dbd8-b657-b6a1a3a5627c",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Hotbar_IronWill",
							uuid = "cf245344-0966-208f-9a0e-b856599163a2",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "72eb4db5-019f-4b4d-a4a8-8b8f70abcdab",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "dff8c1d6-4814-dbd8-b657-b6a1a3a5627c",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 1257.5,
				name = "[LPDU PLD] OT Stance ON",
				timeRange = true,
				timelineIndex = 195,
				timerEndOffset = 11,
				timerStartOffset = 8,
				uuid = "02d277ac-f083-ee93-b603-5ffaeec37147",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "d9fdce56-25d6-dd05-8740-16d4feeea434",
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
									"ae30cea2-431f-2711-a83e-574c90eaa6b6",
									true,
								},
								
								{
									"d35864af-ffdc-c323-a223-0e9825e363f9",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_ThrillOfBattle",
							uuid = "193570b6-2b92-7b18-8402-cb17f7863a99",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "ae30cea2-431f-2711-a83e-574c90eaa6b6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "d35864af-ffdc-c323-a223-0e9825e363f9",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 1257.5,
				name = "[LPDU WAR] ThrillOfBattle",
				timeRange = true,
				timelineIndex = 195,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "fa400380-930b-d406-b24d-3f070dec266d",
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
									"2a724bf1-4139-8ad1-a6c9-2489354135ac",
									true,
								},
								
								{
									"396259e0-25df-71c6-bc68-aa8ab627b532",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Damnation",
							uuid = "a3e94a93-d561-8bfd-89b0-4fcbc330b3fd",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "2a724bf1-4139-8ad1-a6c9-2489354135ac",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "396259e0-25df-71c6-bc68-aa8ab627b532",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 1257.5,
				name = "[LPDU WAR] Damnation",
				timeRange = true,
				timelineIndex = 195,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "d8302d2a-2194-2b36-8aab-4bc0b9b30f43",
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
									"a3a657f7-f31f-9258-ac4e-899a137b89e3",
									true,
								},
								
								{
									"2276b6db-20d4-f944-9be6-058358b94fc9",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Bloodwhetting",
							uuid = "3dd05b37-eb87-71f1-9161-e6a8726ddccd",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "a3a657f7-f31f-9258-ac4e-899a137b89e3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "2276b6db-20d4-f944-9be6-058358b94fc9",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 1257.5,
				name = "[LPDU WAR] Raw Intuition Self",
				timeRange = true,
				timelineIndex = 195,
				timerEndOffset = 0.5,
				timerStartOffset = -2.5,
				uuid = "2a2ec3cf-0445-17f5-b5c1-d085c2f9ccdf",
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
									"a64acf13-9f27-ffa5-96e8-fa44ff0528b0",
									true,
								},
								
								{
									"bb6e3f5b-92fa-ec1a-9e57-99f7370f5193",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Equilibrium",
							uuid = "3e124cf7-af8c-5053-9af2-75ea6976d78f",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "a64acf13-9f27-ffa5-96e8-fa44ff0528b0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "bb6e3f5b-92fa-ec1a-9e57-99f7370f5193",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 1257.5,
				name = "[LPDU WAR] Aorora Self",
				timeRange = true,
				timelineIndex = 195,
				timerEndOffset = 3,
				uuid = "dca45aba-ca21-1397-92b5-b6e9a32a2418",
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
									"a133e398-7fc6-60b2-9ffb-5f56d9259ac7",
									true,
								},
								
								{
									"586d80fe-3b99-4f7f-ad54-9c4f5cbd3516",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Hotbar_Defiance",
							uuid = "3eaa6e26-f7c6-bebb-aefd-8789bf824592",
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
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "a133e398-7fc6-60b2-9ffb-5f56d9259ac7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "586d80fe-3b99-4f7f-ad54-9c4f5cbd3516",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 1257.5,
				name = "[LPDU WAR] OT Stance ON",
				timeRange = true,
				timelineIndex = 195,
				timerEndOffset = 11,
				timerStartOffset = 8,
				uuid = "ca33b1ca-d1fb-ed71-93a9-5c3a09e17d72",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "747e301f-52db-2614-bd4e-f8d5bf67cd47",
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
									"f028920b-a73e-802f-91f3-d9cba884662f",
									true,
								},
								
								{
									"04920f67-0ee2-3efa-ad22-235d58ad7429",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_DarkMind",
							uuid = "f282ee14-1ece-5590-8053-9f22a97c284d",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "f028920b-a73e-802f-91f3-d9cba884662f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "04920f67-0ee2-3efa-ad22-235d58ad7429",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 1257.5,
				name = "[LPDU DRK] DarkMind",
				timeRange = true,
				timelineIndex = 195,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "9663b783-ed09-acbb-8479-766c666ad1b9",
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
									"7d58eb5a-c37d-e3f3-ba32-1333632125d3",
									true,
								},
								
								{
									"03a8ecb6-f4b7-2db8-8aed-f2774b3dbab4",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_ShadowedVigil",
							uuid = "437e3035-cf04-ecbf-865e-ab20faa83487",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "7d58eb5a-c37d-e3f3-ba32-1333632125d3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "03a8ecb6-f4b7-2db8-8aed-f2774b3dbab4",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 1257.5,
				name = "[LPDU DRK] ShadowedVigil",
				timeRange = true,
				timelineIndex = 195,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "71504f13-5718-7443-a2c1-f017bdf79a1c",
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
									"473e76a9-5e74-5d8e-93f4-47e777ec3d3d",
									true,
								},
								
								{
									"27d2fec4-f992-7e83-9087-208c967bfbf2",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf",
							uuid = "78788857-5f85-a658-8dec-5bc1fda61831",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "473e76a9-5e74-5d8e-93f4-47e777ec3d3d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "27d2fec4-f992-7e83-9087-208c967bfbf2",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 1257.5,
				name = "[LPDU DRK] TBN Self",
				timeRange = true,
				timelineIndex = 195,
				timerEndOffset = 0.5,
				timerStartOffset = -2.5,
				uuid = "c4d9471a-924c-32d2-938c-3cf96c89f949",
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
									"9d9d7371-f22a-0523-971d-fd1a26badb42",
									true,
								},
								
								{
									"54fdedae-0b88-4b44-a475-dc6b0bcbec71",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Hotbar_Grit",
							uuid = "280348a1-c3b5-e3aa-85b3-52fa14729d93",
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
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "9d9d7371-f22a-0523-971d-fd1a26badb42",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "54fdedae-0b88-4b44-a475-dc6b0bcbec71",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 1257.5,
				name = "[LPDU DRK] OT Stance ON",
				timeRange = true,
				timelineIndex = 195,
				timerEndOffset = 11,
				timerStartOffset = 8,
				uuid = "c2d0f63a-7438-0cf2-94d3-39146634f6ad",
				version = 2,
			},
		},
	},
	[196] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker",
				uuid = "5e4d2846-6723-7c63-9216-12c710e7e8cf",
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
									"0924ce35-9803-0572-a54c-b45ba3dcef1a",
									true,
								},
								
								{
									"c71a4181-673f-1d2a-90c0-d300b956a7a9",
									true,
								},
								
								{
									"421e7f7a-7fce-d0d4-8d17-75b17716d7f1",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_RoyalGuard",
							uuid = "f2ed3f36-ea29-ad18-880f-bb20543efaff",
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
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "0924ce35-9803-0572-a54c-b45ba3dcef1a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "c71a4181-673f-1d2a-90c0-d300b956a7a9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "421e7f7a-7fce-d0d4-8d17-75b17716d7f1",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 1270,
				name = "[LPDU Tank] OT Stance ON",
				timeRange = true,
				timelineIndex = 196,
				timerEndOffset = 3,
				uuid = "5a3fca33-b627-719e-bb90-b6b0cd1d6cbb",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "4d701ba6-ca85-abca-ac97-a1af1a56ef40",
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
									"a2ee3e41-7bad-8e4c-b7a1-2fc4d619ddce",
									true,
								},
								
								{
									"b482449a-11ef-41ee-bfad-597325aa5336",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Hotbar_IronWill",
							uuid = "86763670-7645-f48f-844d-99b7c6245cd7",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "a2ee3e41-7bad-8e4c-b7a1-2fc4d619ddce",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "b482449a-11ef-41ee-bfad-597325aa5336",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 1270,
				name = "[LPDU PLD] OT Stance ON",
				timeRange = true,
				timelineIndex = 196,
				timerEndOffset = 3,
				uuid = "b9175c14-144d-f9ec-b7a3-664290358c13",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "dc0f4fdd-0cd3-dffe-8503-e056f1465be7",
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
									"1295dc2f-02be-6261-a555-e20aededb790",
									true,
								},
								
								{
									"d75441f9-0ef8-c7cc-95ed-d0c7e2909840",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Hotbar_Defiance",
							uuid = "0a7c41dc-7c51-5e66-b1c1-bc2c9ab15d1e",
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
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "1295dc2f-02be-6261-a555-e20aededb790",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "d75441f9-0ef8-c7cc-95ed-d0c7e2909840",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 1270,
				name = "[LPDU WAR] OT Stance ON",
				timeRange = true,
				timelineIndex = 196,
				timerEndOffset = 3,
				uuid = "75a5a88c-df02-aaf7-a19d-4cfc69a08879",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "914bdc0b-fc95-9dd7-b57f-9fa49cd446fe",
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
									"fa81efe0-f272-df3d-83cd-dca59589a096",
									true,
								},
								
								{
									"5fe5bc7d-bbfb-420d-bc24-46c5fc578ab3",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Hotbar_Grit",
							uuid = "4cb02ec8-dbac-9739-b559-c19ecc69ef0f",
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
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "fa81efe0-f272-df3d-83cd-dca59589a096",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "5fe5bc7d-bbfb-420d-bc24-46c5fc578ab3",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 1270,
				name = "[LPDU DRK] OT Stance ON",
				timeRange = true,
				timelineIndex = 196,
				timerEndOffset = 3,
				uuid = "f1ad547d-3322-4d5e-a05e-014799c078f7",
				version = 2,
			},
		},
	},
	[197] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared",
				uuid = "fb23bf71-c013-4c6a-9761-e2c4cd166f64",
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
									"12567389-ad45-f22f-9bd3-a4c929756aec",
									true,
								},
								
								{
									"bd57d973-0ee9-10e6-bf35-62ba50f6ff7e",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "4799af67-926e-1033-8621-a8169e11bcd0",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "12567389-ad45-f22f-9bd3-a4c929756aec",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "bd57d973-0ee9-10e6-bf35-62ba50f6ff7e",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 1289.3,
				name = "[LPDU Tank] MT Provoke",
				timeRange = true,
				timelineIndex = 197,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "1a5847e8-39f7-d248-a78c-5236f6f60b7c",
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
									"2f373de0-58f7-bd4d-8f3f-0f12e1e46194",
									true,
								},
								
								{
									"bbc7dd69-7cbf-ce14-b3ac-23fd6e3c3b74",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "245a5353-42e9-c366-a5b8-e87cb8cf26b4",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "2f373de0-58f7-bd4d-8f3f-0f12e1e46194",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "bbc7dd69-7cbf-ce14-b3ac-23fd6e3c3b74",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 1289.3,
				name = "[LPDU Tank] OT Voke",
				timeRange = true,
				timelineIndex = 197,
				timerEndOffset = 13,
				timerStartOffset = 10,
				uuid = "6c860053-ddcc-775f-83d2-0ce586585636",
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
									"d11adab0-512d-1e11-9676-5eb4b953b073",
									true,
								},
								
								{
									"553f3359-d85c-f8b3-864c-0eedb36a1518",
									true,
								},
								
								{
									"517e74af-4154-b719-93d5-826a84e5174f",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_ShirkMouse",
							targetType = "Detection Target",
							uuid = "ff451cd4-4dfa-9821-9706-a2a105496eed",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "d11adab0-512d-1e11-9676-5eb4b953b073",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "553f3359-d85c-f8b3-864c-0eedb36a1518",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "7343352c-5e24-ac5e-87b3-2108088e78ea",
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
									"7343352c-5e24-ac5e-87b3-2108088e78ea",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "517e74af-4154-b719-93d5-826a84e5174f",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 1289.3,
				name = "[LPDU Tank] MT Shirk",
				timeRange = true,
				timelineIndex = 197,
				timerEndOffset = 14,
				timerStartOffset = 11,
				uuid = "e901619b-fc4b-8cc1-b1d5-7b8d01994f3a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker",
				uuid = "2a0eeeac-7cff-8d23-86ee-e2e80fc9172e",
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
									"4f6ac089-5e0d-da79-8aba-1c8f72347e28",
									true,
								},
								
								{
									"8a5573bf-f9c7-2e74-b0d0-cff4250cba6e",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Superbolide",
							uuid = "b42bf2c5-d593-df7b-8ddd-81e98aa35149",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "4f6ac089-5e0d-da79-8aba-1c8f72347e28",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "8a5573bf-f9c7-2e74-b0d0-cff4250cba6e",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 1289.3,
				name = "[LPDU Tank] MT Bolide",
				timeRange = true,
				timelineIndex = 197,
				timerStartOffset = -3,
				uuid = "e88cd952-aeb0-6e6b-9927-33dd94f6e2b2",
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
									"9e85b66d-0e1c-a9af-bb3c-8e2078f55c4f",
									true,
								},
								
								{
									"afdad59a-88e5-c0e8-8ed1-d72e248777ec",
									true,
								},
								
								{
									"1ae33af1-b078-16a2-824f-f748facb058c",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_ReleaseRoyalGuard",
							uuid = "7c557172-95ad-8468-a358-2e8acceee946",
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
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "9e85b66d-0e1c-a9af-bb3c-8e2078f55c4f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "afdad59a-88e5-c0e8-8ed1-d72e248777ec",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 1833,
							category = "Self",
							uuid = "1ae33af1-b078-16a2-824f-f748facb058c",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 1289.3,
				name = "[LPDU Tank] MT Stance OFF",
				timeRange = true,
				timelineIndex = 197,
				timerEndOffset = 10,
				timerStartOffset = 7,
				uuid = "d028bb33-fd0f-b1fc-aa49-e954f7e0149c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "7fced952-4c82-a14b-b5ea-395caf301f84",
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
									"232bd490-5eae-c796-813a-8dbb8926f023",
									true,
								},
								
								{
									"138ea258-f9d2-24c0-a383-2167cdae2660",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HallowedGround",
							uuid = "f5681744-d805-a9aa-a9e0-c50970f02a62",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "232bd490-5eae-c796-813a-8dbb8926f023",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "138ea258-f9d2-24c0-a383-2167cdae2660",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 1289.3,
				name = "[LPDU PLD] MT HallowedGround",
				timeRange = true,
				timelineIndex = 197,
				timerStartOffset = -3,
				uuid = "97a1b189-39dd-c8d1-9a4d-fa054bbebbf5",
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
									"143ceed3-83ac-c9d3-a0ec-745e0cdedf0c",
									true,
								},
								
								{
									"7d49170f-37e4-6031-a955-8b6827e2bb9d",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Hotbar_ReleaseIronWill",
							uuid = "81fbe8cb-aead-10b6-925b-2ff56ac8f4da",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "143ceed3-83ac-c9d3-a0ec-745e0cdedf0c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "7d49170f-37e4-6031-a955-8b6827e2bb9d",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 1289.3,
				name = "[LPDU PLD] MT Stance OFF",
				timeRange = true,
				timelineIndex = 197,
				timerEndOffset = 10,
				timerStartOffset = 7,
				uuid = "a54c3d80-999f-d33c-8f80-d24d4d8f5166",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "4199d8a3-a4a3-04e1-8b8f-74f0cc636f50",
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
									"e386c3c2-49fe-7201-a4e3-1a89f1600e7c",
									true,
								},
								
								{
									"81c37e8f-7a11-c392-bea7-780059c56981",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Hotbar_ReleaseDefiance",
							uuid = "736d7de9-0796-5565-99fc-a2934b7d56a5",
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
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "e386c3c2-49fe-7201-a4e3-1a89f1600e7c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "81c37e8f-7a11-c392-bea7-780059c56981",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 1289.3,
				name = "[LPDU WAR] MT Stance OFF",
				timeRange = true,
				timelineIndex = 197,
				timerEndOffset = 10,
				timerStartOffset = 7,
				uuid = "c5cd58a5-5cdb-e891-8d7d-6d88fff39aa7",
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
							aType = "Alert",
							alertDuration = 4000,
							alertTTS = true,
							alertText = "HOLMGANG IN 2s - use self target",
							conditions = 
							{
								
								{
									"eff16dd3-923e-a8dc-aa41-7e4f4884e9d0",
									true,
								},
								
								{
									"03b66fb6-c2a1-7670-9645-88ae1c482e43",
									true,
								},
							},
							uuid = "3fc325eb-90af-a0b6-989b-a39965b6d089",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "eff16dd3-923e-a8dc-aa41-7e4f4884e9d0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "03b66fb6-c2a1-7670-9645-88ae1c482e43",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 1289.3,
				name = "[LPDU WAR] Holmgang - manual self target",
				timeRange = true,
				timelineIndex = 197,
				timerEndOffset = -4.5,
				timerStartOffset = -5,
				uuid = "14e8ff51-89fb-b83d-9da9-63bc62b194bf",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "26d14fee-5284-73ef-8463-6b3b396ddc9f",
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
									"39b60eae-f50e-cf1a-a23f-d2426114c582",
									true,
								},
								
								{
									"d6c3e7ff-041b-6348-bcab-9a69969ae013",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_LivingDead",
							uuid = "b7f2b09a-24f3-9cb8-b943-628b7cb284b5",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "39b60eae-f50e-cf1a-a23f-d2426114c582",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "d6c3e7ff-041b-6348-bcab-9a69969ae013",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 1289.3,
				name = "[LPDU DRK] MT LivingDead",
				timeRange = true,
				timelineIndex = 197,
				timerStartOffset = -3,
				uuid = "fe91dc12-74fb-2e06-9d2e-8943d3451e34",
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
									"a40594f3-956a-bca7-b38d-5158889595e0",
									true,
								},
								
								{
									"920c8679-1f27-0ead-a528-3c6d25c67fbb",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Hotbar_ReleaseGrit",
							uuid = "13d0dc1b-f9e2-7380-9935-6d0031b3a74c",
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
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "a40594f3-956a-bca7-b38d-5158889595e0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "920c8679-1f27-0ead-a528-3c6d25c67fbb",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 1289.3,
				name = "[LPDU DRK] MT Stance OFF",
				timeRange = true,
				timelineIndex = 197,
				timerEndOffset = 10,
				timerStartOffset = 7,
				uuid = "fdd58ae1-ca80-90b5-9b30-26a5cbee310b",
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
				name = "Gunbreaker",
				uuid = "77271dc0-3d38-334f-b050-21e5513bb794",
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
									"4df9b951-9d29-7bf2-9fee-366d97f9e85a",
									true,
								},
								
								{
									"90715a5a-9f6e-1f29-b9e9-08845ea15c71",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "29aee584-3b3d-461e-afa5-27961c7c9b3f",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "4df9b951-9d29-7bf2-9fee-366d97f9e85a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "90715a5a-9f6e-1f29-b9e9-08845ea15c71",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 1306.9,
				name = "[LPDU Tank] HoL ",
				timeRange = true,
				timelineIndex = 198,
				timerEndOffset = -4,
				timerStartOffset = -7,
				uuid = "3908605b-8c3a-531f-b059-9bb8c0ec5d26",
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
									"4dca939c-058f-4fb2-b861-6ef5c30e00dc",
									true,
								},
								
								{
									"9631a17d-dab5-861a-ab49-5b77f68f4e19",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumLowest",
							uuid = "b3d68567-d793-9885-8b68-eb86f6ae07e6",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "4dca939c-058f-4fb2-b861-6ef5c30e00dc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "9631a17d-dab5-861a-ab49-5b77f68f4e19",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 1306.9,
				name = "[LPDU Tank] HoS Lowest",
				timeRange = true,
				timelineIndex = 198,
				timerStartOffset = -3,
				uuid = "bec8612a-6003-3f98-b98c-1feecc086d1c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared",
				uuid = "abbfb803-1659-733b-81bd-0e797c473a13",
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
									"2784681c-6c44-090d-afaf-7c507d2e056a",
									true,
								},
								
								{
									"fde2ab84-2d72-b5d0-8944-7dc640812583",
									true,
								},
								
								{
									"52b888e1-c660-e99d-86e7-6a8173403283",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "2bc1130a-c027-0980-99ce-6f8f4a814db0",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "2784681c-6c44-090d-afaf-7c507d2e056a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "fde2ab84-2d72-b5d0-8944-7dc640812583",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 5,
							name = "Reprisal range <=5y",
							partyTargetType = "Detection Target",
							uuid = "13bc8c2d-7325-4abf-845a-bcd348837acd",
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
									"13bc8c2d-7325-4abf-845a-bcd348837acd",
									true,
								},
							},
							filterTargetType = "Enemy",
							name = "Enemy in Reprisal range",
							uuid = "52b888e1-c660-e99d-86e7-6a8173403283",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 1306.9,
				name = "[LPDU Tank] Reprisal",
				timeRange = true,
				timelineIndex = 198,
				timerEndOffset = -2,
				timerStartOffset = -5,
				uuid = "5de31d02-847a-98c8-bf9d-8cd2a353a519",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "f985ce44-6c1c-897c-bdad-be0f1a6eaea7",
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
									"0c73cc8d-52ad-32af-a958-940dc3c9c3ef",
									true,
								},
								
								{
									"168a6cf9-ad21-64b2-901f-6619ac62445c",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_DivineVeil",
							uuid = "f8eeb2dc-8470-99c0-a61d-e44fee09ba7f",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "0c73cc8d-52ad-32af-a958-940dc3c9c3ef",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "168a6cf9-ad21-64b2-901f-6619ac62445c",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 1306.9,
				name = "[LPDU PLD] DivineVeil ",
				timeRange = true,
				timelineIndex = 198,
				timerEndOffset = -4,
				timerStartOffset = -7,
				uuid = "c32e6e49-9414-5608-b263-e12d927d2a2d",
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
									"d149402f-7f37-51ca-a367-24a7799ba1fa",
									true,
								},
								
								{
									"b223c5d2-2d18-5bb7-837f-07d8171490b7",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_InterventionLowest",
							uuid = "f84007f2-2c94-be08-915a-201f57b98735",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "d149402f-7f37-51ca-a367-24a7799ba1fa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "b223c5d2-2d18-5bb7-837f-07d8171490b7",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 1306.9,
				name = "[LPDU PLD] Sheltron/Intervention Lowest",
				timeRange = true,
				timelineIndex = 198,
				timerStartOffset = -3,
				uuid = "4631b05c-7e9f-349f-b06e-edda42548002",
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
							aType = "Alert",
							alertDuration = 4000,
							alertTTS = true,
							alertText = "PASSAGE OF ARMS IN 2s - position for party",
							conditions = 
							{
								
								{
									"6a714711-4437-c647-85a6-dd216d2c5cb3",
									true,
								},
								
								{
									"c9d91b9c-f48c-f37d-bebb-ae63416c07c9",
									true,
								},
							},
							uuid = "8bd5f64f-8cda-0f6b-8d89-0946c1a03cf5",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "6a714711-4437-c647-85a6-dd216d2c5cb3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "c9d91b9c-f48c-f37d-bebb-ae63416c07c9",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 1306.9,
				name = "[LPDU PLD] Passage - manual positioning",
				timeRange = true,
				timelineIndex = 198,
				timerEndOffset = -8.5,
				timerStartOffset = -9,
				uuid = "b84d5d6c-ae1e-a945-8647-64b8deee70ac",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "b732e779-4a50-4ab2-97b4-fc5aad1f2594",
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
									"8e93faab-82cd-b0e4-a5c0-6b9ce33c651c",
									true,
								},
								
								{
									"d315f26c-1c26-2abb-85ff-fd5f3bcb6f4f",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_ShakeItOff",
							uuid = "d3c3fd20-4e4f-a598-9d1c-e10ccab5173e",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "8e93faab-82cd-b0e4-a5c0-6b9ce33c651c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "d315f26c-1c26-2abb-85ff-fd5f3bcb6f4f",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 1306.9,
				name = "[LPDU WAR] ShakeItOff ",
				timeRange = true,
				timelineIndex = 198,
				timerEndOffset = -4,
				timerStartOffset = -7,
				uuid = "b166ffc4-aef2-12b1-be2d-41e40b439b82",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "8e0ff79d-cee6-f64f-968b-83e9a077e5b6",
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
									"04cf6c41-bdce-b7f6-b1a7-e4fdc600bb7b",
									true,
								},
								
								{
									"ca75d815-8377-82db-9c1d-f8c3ed061b97",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightLowest",
							uuid = "44d63e77-080e-83c0-84a4-e8a8c6b56ef6",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "04cf6c41-bdce-b7f6-b1a7-e4fdc600bb7b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "ca75d815-8377-82db-9c1d-f8c3ed061b97",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 1306.9,
				name = "[LPDU DRK] TBN Lowest",
				timeRange = true,
				timelineIndex = 198,
				timerStartOffset = -3,
				uuid = "7cfe18a0-c0ee-49f3-a239-8c09b8d2c240",
				version = 2,
			},
		},
	},
	[200] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker",
				uuid = "67371de8-139e-3279-b6bc-303ec23e1f04",
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
									"5a07cf78-f535-879d-bba5-55fd23b8aaef",
									true,
								},
								
								{
									"73abb59b-38ff-52e6-935c-332c93fc5c7f",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumLowest",
							uuid = "0ffb274c-045e-9863-8378-ffbd8d4606fa",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "5a07cf78-f535-879d-bba5-55fd23b8aaef",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "73abb59b-38ff-52e6-935c-332c93fc5c7f",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 1340.5,
				name = "[LPDU Tank] HoS Lowest",
				timeRange = true,
				timelineIndex = 200,
				timerStartOffset = -3,
				uuid = "51e6c896-a691-fcfa-91cc-f58be5aa7c7e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "6563f040-4eee-c947-91c5-3dc357c9ee14",
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
									"2e1113af-43ca-9862-a8bf-8fea23359758",
									true,
								},
								
								{
									"e686cf2d-34d1-33c5-ad3e-b727098865c0",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_InterventionLowest",
							uuid = "b92e5b7b-7556-2d84-a784-6d12ff09d75f",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "2e1113af-43ca-9862-a8bf-8fea23359758",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "e686cf2d-34d1-33c5-ad3e-b727098865c0",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 1340.5,
				name = "[LPDU PLD] Sheltron/Intervention Lowest",
				timeRange = true,
				timelineIndex = 200,
				timerStartOffset = -3,
				uuid = "1bc10db3-5d15-466c-be9d-3606b46de11f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "cebe61c5-809a-9a30-8f4b-3c886c8503da",
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
									"0cd9f6b5-30c4-c300-a3c8-fef8653c6cf3",
									true,
								},
								
								{
									"864c08a0-8a69-edcb-8f32-a9dce8beb66f",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightLowest",
							uuid = "fa399676-8060-54af-a03e-a08feebaae62",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "0cd9f6b5-30c4-c300-a3c8-fef8653c6cf3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "864c08a0-8a69-edcb-8f32-a9dce8beb66f",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 1340.5,
				name = "[LPDU DRK] TBN Lowest",
				timeRange = true,
				timelineIndex = 200,
				timerStartOffset = -3,
				uuid = "4474da1e-b8d5-a71f-ad47-d742922820c3",
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
				name = "Shared",
				uuid = "6ed5c4e9-21d1-8832-bf0f-1f8412d36ab2",
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
									"6f9e735f-b667-efcf-8e02-fb78f008c017",
									true,
								},
								
								{
									"9e8dca36-56ab-1679-87c4-4523eb2a972a",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "715e922f-5598-f10a-81b1-befd78915509",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "6f9e735f-b667-efcf-8e02-fb78f008c017",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "9e8dca36-56ab-1679-87c4-4523eb2a972a",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 1352.7,
				name = "[LPDU Tank] OT Voke",
				timeRange = true,
				timelineIndex = 201,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "d2c34040-da02-bd1d-961c-3debd2c44f5e",
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
									"161f239d-c4d6-8609-bbcb-60016f2ce71e",
									true,
								},
								
								{
									"ad99a66f-337d-2faf-b73b-623697231e89",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_Provoke",
							uuid = "5d8f1a19-b96f-2dea-99c1-37c87e9f500e",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "161f239d-c4d6-8609-bbcb-60016f2ce71e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "ad99a66f-337d-2faf-b73b-623697231e89",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 1352.7,
				name = "[LPDU Tank] MT Provoke",
				timeRange = true,
				timelineIndex = 201,
				timerEndOffset = 13,
				timerStartOffset = 10,
				uuid = "dc0bf895-80cd-6318-a758-256b9ba5519b",
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
									"d1d3db24-3fcf-829b-9f23-9e0e1b3d5815",
									true,
								},
								
								{
									"5922bbd4-58c5-e84b-b66e-28e44d722f29",
									true,
								},
								
								{
									"3e307e08-369b-2f87-b1a3-f4a39890db18",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_ShirkMouse",
							targetType = "Detection Target",
							uuid = "39dea783-4cc5-8035-81ee-ff747cc791eb",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "d1d3db24-3fcf-829b-9f23-9e0e1b3d5815",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "5922bbd4-58c5-e84b-b66e-28e44d722f29",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nif slot~=\"T1\" and slot~=\"T2\" then return false end\nreturn eventArgs.detectionTargetID == AnyoneCore.Roster.idOf(slot==\"T1\" and \"T2\" or \"T1\")",
							name = "Other roster tank",
							uuid = "118c3834-1277-4752-a807-9e409d4df141",
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
									"118c3834-1277-4752-a807-9e409d4df141",
									true,
								},
							},
							filterTargetType = "Tank",
							name = "Roster co-tank",
							uuid = "3e307e08-369b-2f87-b1a3-f4a39890db18",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 1352.7,
				name = "[LPDU Tank] OT Shirk",
				timeRange = true,
				timelineIndex = 201,
				timerEndOffset = 14,
				timerStartOffset = 11,
				uuid = "c26fefcd-422d-0f37-9ac3-1a121f279c54",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker",
				uuid = "210ebc34-692f-bd0c-b7f1-742f0a87c623",
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
									"7538c3bb-55cc-eda6-85f3-d8680faf25c7",
									true,
								},
								
								{
									"b739a771-1bcf-b2fe-8b8b-82e0e31523a8",
									true,
								},
								
								{
									"0bea27f6-e236-38f3-92a5-4bc9b3f3ac0d",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_RoyalGuard",
							uuid = "54d79259-2541-052d-bc3d-da1b7e39b277",
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
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "7538c3bb-55cc-eda6-85f3-d8680faf25c7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "b739a771-1bcf-b2fe-8b8b-82e0e31523a8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "0bea27f6-e236-38f3-92a5-4bc9b3f3ac0d",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 1352.7,
				name = "[LPDU Tank] MT Stance ON",
				timeRange = true,
				timelineIndex = 201,
				timerEndOffset = -2,
				timerStartOffset = -5,
				uuid = "b37ac51e-f842-7cf3-96ed-74dcebc0b770",
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
									"5fe4150e-d27c-df70-adc2-c0dcd5dff114",
									true,
								},
								
								{
									"be618cdc-07d9-afa0-86af-0cc614c83f52",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Superbolide",
							uuid = "fb166f81-d2e6-b69f-843d-405231e6ce8c",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "5fe4150e-d27c-df70-adc2-c0dcd5dff114",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "be618cdc-07d9-afa0-86af-0cc614c83f52",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 1352.7,
				name = "[LPDU Tank] OT Bolide",
				timeRange = true,
				timelineIndex = 201,
				timerStartOffset = -3,
				uuid = "a972daa3-fcda-8b0e-98be-69a76e3b2a65",
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
									"8af69c59-8fdf-ef46-a6b3-2c68918742d4",
									true,
								},
								
								{
									"7254651d-b846-d970-af15-fc3cb7e79eb8",
									true,
								},
								
								{
									"beb53ae6-6499-e6a1-82c7-129fb82956df",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Hotbar_ReleaseRoyalGuard",
							uuid = "7482ac5c-e6c1-d5ad-9523-bd7ee6891937",
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
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "8af69c59-8fdf-ef46-a6b3-2c68918742d4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "7254651d-b846-d970-af15-fc3cb7e79eb8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 1833,
							category = "Self",
							uuid = "beb53ae6-6499-e6a1-82c7-129fb82956df",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 1352.7,
				name = "[LPDU Tank] OT Stance OFF",
				timeRange = true,
				timelineIndex = 201,
				timerEndOffset = 10,
				timerStartOffset = 7,
				uuid = "29f32491-1b1a-2640-b062-e582330c25aa",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "7271656b-0c6d-b4d9-967e-3aa10bdec9bc",
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
									"547c523e-1f57-b324-81fe-32cb65be2999",
									true,
								},
								
								{
									"7f8fdf6e-45ff-a018-82c6-475269f6a4b4",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Hotbar_IronWill",
							uuid = "8b538ef2-1674-e172-a861-b79fb7a915bb",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "547c523e-1f57-b324-81fe-32cb65be2999",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "7f8fdf6e-45ff-a018-82c6-475269f6a4b4",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 1352.7,
				name = "[LPDU PLD] MT Stance ON",
				timeRange = true,
				timelineIndex = 201,
				timerEndOffset = -2,
				timerStartOffset = -5,
				uuid = "e80c7eee-c64a-54e1-9382-ec3f33dd9efa",
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
									"39d95119-1667-e90c-83d0-0334847e3a3c",
									true,
								},
								
								{
									"67af69b2-469e-6564-91c1-d88f883d64b6",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HallowedGround",
							uuid = "5a1a4bb8-aabb-f5ab-9f09-ec60802820d1",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "39d95119-1667-e90c-83d0-0334847e3a3c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "67af69b2-469e-6564-91c1-d88f883d64b6",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 1352.7,
				name = "[LPDU PLD] OT HallowedGround",
				timeRange = true,
				timelineIndex = 201,
				timerStartOffset = -3,
				uuid = "b8d0d2bc-708d-e35b-97a6-87e12435bca2",
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
									"08fa57f7-900f-d511-b46d-d4ca4831f2e6",
									true,
								},
								
								{
									"9b91cb40-44d4-dc8d-86fe-cd4fa2363c21",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Hotbar_ReleaseIronWill",
							uuid = "f10ba8f6-9cab-a727-92fd-c83fc6841455",
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
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "08fa57f7-900f-d511-b46d-d4ca4831f2e6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "9b91cb40-44d4-dc8d-86fe-cd4fa2363c21",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 1352.7,
				name = "[LPDU PLD] OT Stance OFF",
				timeRange = true,
				timelineIndex = 201,
				timerEndOffset = 10,
				timerStartOffset = 7,
				uuid = "9dc71854-beed-1a66-951c-396331a509ef",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "f38cabbb-07d9-e351-977d-21151b256ab6",
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
									"f054d5da-e92a-acb4-a752-d2b09f33c5d4",
									true,
								},
								
								{
									"924037c0-c371-7f6c-9f71-785391577c51",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Hotbar_Defiance",
							uuid = "1ab4fa03-e7ce-f1df-be85-7ac0d5408eaf",
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
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "f054d5da-e92a-acb4-a752-d2b09f33c5d4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "924037c0-c371-7f6c-9f71-785391577c51",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 1352.7,
				name = "[LPDU WAR] MT Stance ON",
				timeRange = true,
				timelineIndex = 201,
				timerEndOffset = -2,
				timerStartOffset = -5,
				uuid = "04644624-71d5-7928-b787-90d24bd7ed59",
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
									"38ececbb-e771-d3cf-b91d-4da839ac7875",
									true,
								},
								
								{
									"ba8cfb38-9220-d5e6-a791-2f79ae0df1a6",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Hotbar_ReleaseDefiance",
							uuid = "c5b73fe1-62c7-b608-aa2b-30f49e5eea5b",
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
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "38ececbb-e771-d3cf-b91d-4da839ac7875",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "ba8cfb38-9220-d5e6-a791-2f79ae0df1a6",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 1352.7,
				name = "[LPDU WAR] OT Stance OFF",
				timeRange = true,
				timelineIndex = 201,
				timerEndOffset = 10,
				timerStartOffset = 7,
				uuid = "8ec295c2-546a-4379-a50d-2b249a4b3166",
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
							aType = "Alert",
							alertDuration = 4000,
							alertTTS = true,
							alertText = "HOLMGANG IN 2s - use self target",
							conditions = 
							{
								
								{
									"878edd97-e5cc-1bf6-979f-2aa898214c09",
									true,
								},
								
								{
									"b6dcce0d-802d-1df5-b5b4-da917f80a702",
									true,
								},
							},
							uuid = "26a19102-2f5c-7ec8-a2f3-794d4e029c18",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "878edd97-e5cc-1bf6-979f-2aa898214c09",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "b6dcce0d-802d-1df5-b5b4-da917f80a702",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 1352.7,
				name = "[LPDU WAR] Holmgang - manual self target",
				timeRange = true,
				timelineIndex = 201,
				timerEndOffset = -4.5,
				timerStartOffset = -5,
				uuid = "63e8c413-48e6-a33d-88ba-f992669f26ab",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "98ed7629-f614-7360-9d75-786421c89bf2",
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
									"9106f475-c3d1-7e10-a892-ad3a5219e50c",
									true,
								},
								
								{
									"057fe971-f0c7-110b-be82-ab6484beab61",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Hotbar_Grit",
							uuid = "f4c71799-f64a-9c3e-aa7b-fab142c11516",
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
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "9106f475-c3d1-7e10-a892-ad3a5219e50c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T1\"",
							name = "MT roster",
							uuid = "057fe971-f0c7-110b-be82-ab6484beab61",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 1352.7,
				name = "[LPDU DRK] MT Stance ON",
				timeRange = true,
				timelineIndex = 201,
				timerEndOffset = -2,
				timerStartOffset = -5,
				uuid = "8043c560-db94-2670-9d26-afb8f56409c1",
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
									"53992114-dbae-2275-8472-ab418be254ab",
									true,
								},
								
								{
									"e754774d-3365-7815-8560-37f3187f42a0",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_LivingDead",
							uuid = "27413c7a-7f71-0363-87f1-fea21d74d188",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "53992114-dbae-2275-8472-ab418be254ab",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "e754774d-3365-7815-8560-37f3187f42a0",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 1352.7,
				name = "[LPDU DRK] OT LivingDead",
				timeRange = true,
				timelineIndex = 201,
				timerStartOffset = -3,
				uuid = "3377d4d0-fb66-88c7-8509-e0a7a471dc84",
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
									"a9c2fa4e-b85e-621a-9705-38fe456d633b",
									true,
								},
								
								{
									"fab1fdd7-dd1a-dbaf-8876-108b37fbd794",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Hotbar_ReleaseGrit",
							uuid = "ba7c1084-bbed-3eb9-8301-873ad430e553",
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
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "a9c2fa4e-b85e-621a-9705-38fe456d633b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn slot == \"T2\"",
							name = "OT roster",
							uuid = "fab1fdd7-dd1a-dbaf-8876-108b37fbd794",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 1352.7,
				name = "[LPDU DRK] OT Stance OFF",
				timeRange = true,
				timelineIndex = 201,
				timerEndOffset = 10,
				timerStartOffset = 7,
				uuid = "4f020a1a-7f95-0e62-a07e-58b80c2c7ebe",
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
				name = "Shared",
				uuid = "9bb291d3-ec08-fbd2-a4a7-1c474f2a5972",
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
									"f65b6d76-a867-20da-8939-a209351a8e86",
									true,
								},
								
								{
									"ea6c99f2-1f96-4304-8c37-c8072d6a9b5c",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Rampart",
							uuid = "f883c7a8-2fd0-8db8-82af-bad682d1b733",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "f65b6d76-a867-20da-8939-a209351a8e86",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "ea6c99f2-1f96-4304-8c37-c8072d6a9b5c",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 1402.7,
				name = "[LPDU Tank] Rampart",
				timeRange = true,
				timelineIndex = 204,
				timerEndOffset = -5,
				timerStartOffset = -8,
				uuid = "253468fc-2f0b-d3f8-9ef8-3c45301488b4",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker",
				uuid = "b5b6437b-ec74-3f17-a15a-923e79e1081f",
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
									"2b0d56db-c4b6-3fd4-a080-c2cca08fc89a",
									true,
								},
								
								{
									"a7099573-30d8-a7b8-bfa8-aee89be85ea9",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							uuid = "9d6e73b3-86d2-a88d-a210-e0a1a3cebc7d",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "2b0d56db-c4b6-3fd4-a080-c2cca08fc89a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "a7099573-30d8-a7b8-bfa8-aee89be85ea9",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 1402.7,
				name = "[LPDU Tank] Camo",
				timeRange = true,
				timelineIndex = 204,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "871e5b49-39ff-7d7f-961a-c2326830a47d",
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
									"03384814-7179-4250-90d0-6ad1c7029210",
									true,
								},
								
								{
									"8bd14311-3c5d-eef1-8b53-1942b0cc4a1f",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Nebula",
							uuid = "59eaab68-959b-2f13-a2e7-61d05861dcae",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "03384814-7179-4250-90d0-6ad1c7029210",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "8bd14311-3c5d-eef1-8b53-1942b0cc4a1f",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 1402.7,
				name = "[LPDU Tank] Nebula",
				timeRange = true,
				timelineIndex = 204,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "e5fad608-2b77-5794-8297-a2e019a1f95a",
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
									"60f4b9f8-9f18-fb78-a294-1c93e0658527",
									true,
								},
								
								{
									"43d89d2a-3b70-ac06-89ba-3242a39bbd64",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "1185b7fe-2420-d9fa-b5fd-b074c31f2237",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "60f4b9f8-9f18-fb78-a294-1c93e0658527",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "43d89d2a-3b70-ac06-89ba-3242a39bbd64",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 1402.7,
				name = "[LPDU Tank] HoS Self",
				timeRange = true,
				timelineIndex = 204,
				timerEndOffset = 0.5,
				timerStartOffset = -2.5,
				uuid = "73edb5c5-5d11-22ed-a895-c66cee5a6518",
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
									"6124802f-f831-6696-9ee6-24609fdd56ab",
									true,
								},
								
								{
									"a0ad36ca-00f6-d818-bd32-6d3798863bd3",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_AuroraSelf",
							uuid = "23bed319-97c7-4e71-bda9-05adf02469cb",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "6124802f-f831-6696-9ee6-24609fdd56ab",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "a0ad36ca-00f6-d818-bd32-6d3798863bd3",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 1402.7,
				name = "[LPDU Tank] Aorora Self",
				timeRange = true,
				timelineIndex = 204,
				timerEndOffset = 3,
				uuid = "439f10db-7f7f-506c-b601-e0f4df858653",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "844e3cbe-8bac-b356-879a-bc0d88e4c180",
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
									"4f4348e2-c64d-3a07-b35d-79b458281a4a",
									true,
								},
								
								{
									"a95a7d22-2ef4-2fc6-ad2b-ec002f636d10",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Bulwark",
							uuid = "f66d6111-8e3c-336b-a01c-e8342ef60f72",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "4f4348e2-c64d-3a07-b35d-79b458281a4a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "a95a7d22-2ef4-2fc6-ad2b-ec002f636d10",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 1402.7,
				name = "[LPDU PLD] Bulwark",
				timeRange = true,
				timelineIndex = 204,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "2368ff4d-9ae3-11af-aeeb-8a8b0f1a5fdc",
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
									"d4d32113-8686-2eb2-a2e5-984631123d4f",
									true,
								},
								
								{
									"1de470a7-b751-47b3-bb9f-ce60f51b7f33",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Guardian",
							uuid = "89083c40-4ce6-474d-8a7e-47585780c801",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "d4d32113-8686-2eb2-a2e5-984631123d4f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "1de470a7-b751-47b3-bb9f-ce60f51b7f33",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 1402.7,
				name = "[LPDU PLD] Guardian",
				timeRange = true,
				timelineIndex = 204,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "4e1a23b1-c985-23b3-bd14-a225e3be310b",
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
									"6431c143-8ad9-24dd-b06b-be2448ac2023",
									true,
								},
								
								{
									"344070fd-bf69-1fb3-bab7-3f705b24cf80",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HolySheltron",
							uuid = "cc353248-c1c9-f6ee-a0ef-d1ccab2c9bce",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "6431c143-8ad9-24dd-b06b-be2448ac2023",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "344070fd-bf69-1fb3-bab7-3f705b24cf80",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 1402.7,
				name = "[LPDU PLD] Sheltron/Intervention Self",
				timeRange = true,
				timelineIndex = 204,
				timerEndOffset = 0.5,
				timerStartOffset = -2.5,
				uuid = "f26d2856-1578-b8a1-898f-d1f026c99dbd",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "63aa96de-8c87-1c24-a06d-7188adc0e4e2",
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
									"341bd137-5860-6410-bc5a-db0177e587cd",
									true,
								},
								
								{
									"8ff7ecc0-6d8e-8793-b6af-980c2c258aee",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_ThrillOfBattle",
							uuid = "a807123c-28bd-a263-b5d2-d424b6dd670f",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "341bd137-5860-6410-bc5a-db0177e587cd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "8ff7ecc0-6d8e-8793-b6af-980c2c258aee",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 1402.7,
				name = "[LPDU WAR] ThrillOfBattle",
				timeRange = true,
				timelineIndex = 204,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "331051bb-ddd0-6bfa-b2a6-676fc0018baf",
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
									"f721741d-850a-3033-b509-600522ab96bd",
									true,
								},
								
								{
									"3425815a-b362-924f-a884-8ecc9f0d353d",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Damnation",
							uuid = "49c55e69-0fb8-4de2-b184-6641cc3dc9a0",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "f721741d-850a-3033-b509-600522ab96bd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "3425815a-b362-924f-a884-8ecc9f0d353d",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 1402.7,
				name = "[LPDU WAR] Damnation",
				timeRange = true,
				timelineIndex = 204,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "e5d5e7d0-ab50-11a1-9388-4bd320713a9c",
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
									"3c65be5d-242d-1d1f-aa08-6b308ef313b3",
									true,
								},
								
								{
									"56479f80-5aca-b39b-a9d3-79c37bc21371",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Bloodwhetting",
							uuid = "f27cc7c0-3c34-992c-87e3-c37b99daaf28",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "3c65be5d-242d-1d1f-aa08-6b308ef313b3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "56479f80-5aca-b39b-a9d3-79c37bc21371",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 1402.7,
				name = "[LPDU WAR] Raw Intuition Self",
				timeRange = true,
				timelineIndex = 204,
				timerEndOffset = 0.5,
				timerStartOffset = -2.5,
				uuid = "aeeb7f35-d345-33cb-964d-139e3c9c8ea7",
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
									"b0a638b9-b735-98ca-9b53-a3ccaa67b638",
									true,
								},
								
								{
									"0e6e753e-efec-ecd3-83e7-31b48191b6f5",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Equilibrium",
							uuid = "cee5de60-4a30-7ff6-89dc-f25bea8fc0a3",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "b0a638b9-b735-98ca-9b53-a3ccaa67b638",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "0e6e753e-efec-ecd3-83e7-31b48191b6f5",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 1402.7,
				name = "[LPDU WAR] Aorora Self",
				timeRange = true,
				timelineIndex = 204,
				timerEndOffset = 3,
				uuid = "2e6252bf-82b1-1fe1-a682-b6dd3bf7ab15",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "827015fa-7f04-bc18-b5fc-c8a8aaa20f3a",
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
									"61182311-fa92-5a0b-986c-b460f78895d9",
									true,
								},
								
								{
									"5fb18743-1b92-df39-aaed-6453f9df37d9",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_DarkMind",
							uuid = "7062aee3-96b0-fd74-a0fe-0d6fde1d87c7",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "61182311-fa92-5a0b-986c-b460f78895d9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "5fb18743-1b92-df39-aaed-6453f9df37d9",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 1402.7,
				name = "[LPDU DRK] DarkMind",
				timeRange = true,
				timelineIndex = 204,
				timerEndOffset = -3,
				timerStartOffset = -6,
				uuid = "2aea7627-14c4-478c-8de0-e674dc4de97a",
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
									"0c60bc5d-f081-90a2-bf7b-7f7ff7a72be5",
									true,
								},
								
								{
									"1440f2d6-8093-3e30-a7f8-adc1e47ad66a",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_ShadowedVigil",
							uuid = "46e0d461-8d50-d851-86ff-d7b411f110e6",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "0c60bc5d-f081-90a2-bf7b-7f7ff7a72be5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "1440f2d6-8093-3e30-a7f8-adc1e47ad66a",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 1402.7,
				name = "[LPDU DRK] ShadowedVigil",
				timeRange = true,
				timelineIndex = 204,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "ca1c13d8-9176-52ab-8425-f4ce74ced7bf",
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
									"e01d2932-663e-5bb3-b14e-c6e5023d65d3",
									true,
								},
								
								{
									"e18aa4fe-9fab-4afb-a0c2-ee19d01d8144",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf",
							uuid = "f63b8cd9-3400-c049-bd34-0280f5f52feb",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "e01d2932-663e-5bb3-b14e-c6e5023d65d3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "e18aa4fe-9fab-4afb-a0c2-ee19d01d8144",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 1402.7,
				name = "[LPDU DRK] TBN Self",
				timeRange = true,
				timelineIndex = 204,
				timerEndOffset = 0.5,
				timerStartOffset = -2.5,
				uuid = "3a8653c4-446e-6255-9e20-bab9602a895f",
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
				name = "Shared",
				uuid = "59259f0a-b2bc-a64b-a905-dec26507b4bc",
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
									"7342afe5-4d47-aaf2-8811-e4bfd4a6b201",
									true,
								},
								
								{
									"be38fba2-4d3b-cb55-8c39-6fa6496b08f6",
									true,
								},
								
								{
									"b8a86747-b58b-b15a-99ad-710a8be06090",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "1f993e23-714e-80d2-8c23-eff9c94778b5",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
								21,
								32,
								37,
							},
							name = "Tank jobs",
							uuid = "7342afe5-4d47-aaf2-8811-e4bfd4a6b201",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "be38fba2-4d3b-cb55-8c39-6fa6496b08f6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Party",
							comparator = 2,
							conditionType = 4,
							inRangeValue = 5,
							name = "Reprisal range <=5y",
							partyTargetType = "Detection Target",
							uuid = "b7eb5e97-5020-eb1c-b05d-2afdb89fbacb",
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
									"b7eb5e97-5020-eb1c-b05d-2afdb89fbacb",
									true,
								},
							},
							filterTargetType = "Enemy",
							name = "Enemy in Reprisal range",
							uuid = "b8a86747-b58b-b15a-99ad-710a8be06090",
							version = 3,
						},
					},
				},
				displayPath = "Shared",
				mechanicTime = 1441.6,
				name = "[LPDU Tank] Reprisal",
				timeRange = true,
				timelineIndex = 206,
				timerEndOffset = -4,
				timerStartOffset = -7,
				uuid = "7e114a72-9317-405c-8b32-a7afd337722a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker",
				uuid = "d1cd715d-1664-c5ea-9032-b17ecb0c8487",
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
									"78a6b7c6-9388-2e7b-bdd3-b1ed7aba26b2",
									true,
								},
								
								{
									"3fb911f3-fec5-0b58-b41b-ec839e3bad86",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "c1934413-09b9-243c-a743-417bce2809f3",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "78a6b7c6-9388-2e7b-bdd3-b1ed7aba26b2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "3fb911f3-fec5-0b58-b41b-ec839e3bad86",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 1441.6,
				name = "[LPDU Tank] HoL ",
				timeRange = true,
				timelineIndex = 206,
				timerEndOffset = -4,
				timerStartOffset = -7,
				uuid = "1ecb5e43-ab4d-f37e-b32d-7e2ab9185d03",
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
									"48cbb4ef-a232-285c-b902-691ccedcb26a",
									true,
								},
								
								{
									"240dcb50-655e-23f0-8c3c-dce278292202",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumLowest",
							uuid = "612224cc-470b-ae41-aa5a-8fd1f6a300af",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								37,
							},
							name = "Gunbreaker",
							uuid = "48cbb4ef-a232-285c-b902-691ccedcb26a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "240dcb50-655e-23f0-8c3c-dce278292202",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker",
				mechanicTime = 1441.6,
				name = "[LPDU Tank] HoS Lowest",
				timeRange = true,
				timelineIndex = 206,
				timerStartOffset = -3,
				uuid = "7ab2e365-f7b2-dad5-913c-6db8587b08d0",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin",
				uuid = "0af976b9-a66e-3217-9f69-d9483f584d94",
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
									"b2e6abda-509d-ad43-8027-6d4fc02e70ba",
									true,
								},
								
								{
									"9ebdcb6a-bf30-5598-850f-980f85984ac3",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_DivineVeil",
							uuid = "5047f94a-3243-1c73-9016-248157c0b937",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "b2e6abda-509d-ad43-8027-6d4fc02e70ba",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "9ebdcb6a-bf30-5598-850f-980f85984ac3",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 1441.6,
				name = "[LPDU PLD] DivineVeil ",
				timeRange = true,
				timelineIndex = 206,
				timerEndOffset = -4,
				timerStartOffset = -7,
				uuid = "f5495eb6-7854-e7e9-b5c9-83b9ab01b0af",
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
									"43d8d704-6927-d146-84f5-447c15e0a845",
									true,
								},
								
								{
									"62eaeb6f-fde8-cbcb-9f0b-71ea3877a453",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_InterventionLowest",
							uuid = "33748deb-5296-78ab-9085-365f53fc568b",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "43d8d704-6927-d146-84f5-447c15e0a845",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "62eaeb6f-fde8-cbcb-9f0b-71ea3877a453",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 1441.6,
				name = "[LPDU PLD] Sheltron/Intervention Lowest",
				timeRange = true,
				timelineIndex = 206,
				timerStartOffset = -3,
				uuid = "f1eddab7-5b06-2e1c-ae00-0ace4eed24e0",
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
							aType = "Alert",
							alertDuration = 4000,
							alertTTS = true,
							alertText = "PASSAGE OF ARMS IN 2s - position for party",
							conditions = 
							{
								
								{
									"8c03e24d-0a0b-8470-8ef9-c4951626442c",
									true,
								},
								
								{
									"c2054a90-a95a-e8b2-b99b-7bf6369c4497",
									true,
								},
							},
							uuid = "742bf05e-f71c-f122-8610-e98f3661502b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								19,
							},
							name = "Paladin",
							uuid = "8c03e24d-0a0b-8470-8ef9-c4951626442c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "c2054a90-a95a-e8b2-b99b-7bf6369c4497",
							version = 3,
						},
					},
				},
				displayPath = "Paladin",
				mechanicTime = 1441.6,
				name = "[LPDU PLD] Passage - manual positioning",
				timeRange = true,
				timelineIndex = 206,
				timerEndOffset = -8.5,
				timerStartOffset = -9,
				uuid = "471c4a71-89b0-5e58-a233-7b20ef255539",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior",
				uuid = "61cfc5e2-424c-460e-b294-ee27e962da4d",
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
									"0291f569-4472-b267-8eaf-be873ed0e098",
									true,
								},
								
								{
									"ff949562-ab2f-1145-96ce-96197ce76135",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_ShakeItOff",
							uuid = "9494eeea-d442-3a32-a2c7-e25d26ca1392",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								21,
							},
							name = "Warrior",
							uuid = "0291f569-4472-b267-8eaf-be873ed0e098",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "ff949562-ab2f-1145-96ce-96197ce76135",
							version = 3,
						},
					},
				},
				displayPath = "Warrior",
				mechanicTime = 1441.6,
				name = "[LPDU WAR] ShakeItOff ",
				timeRange = true,
				timelineIndex = 206,
				timerEndOffset = -4,
				timerStartOffset = -7,
				uuid = "9fcc625f-7b29-fb0e-b842-975dfda85833",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight",
				uuid = "67001195-5b10-fe6f-ba60-173834248a4d",
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
									"8e619ed6-6ac1-47a6-bdad-aa8c1c58de29",
									true,
								},
								
								{
									"b498b16b-7eee-90ea-a0a1-90892e358412",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightLowest",
							uuid = "e947fbb2-fd15-ffc3-9014-fc4048b1b95c",
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
							category = "Self",
							conditionType = 14,
							jobIDList = 
							{
								32,
							},
							name = "Dark Knight",
							uuid = "8e619ed6-6ac1-47a6-bdad-aa8c1c58de29",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal slot=AnyoneCore.Roster.mySlot()\nreturn (slot == \"T1\" or slot == \"T2\")",
							name = "Both roster",
							uuid = "b498b16b-7eee-90ea-a0a1-90892e358412",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight",
				mechanicTime = 1441.6,
				name = "[LPDU DRK] TBN Lowest",
				timeRange = true,
				timelineIndex = 206,
				timerStartOffset = -3,
				uuid = "3f0b120f-f31f-1bdc-80cd-6ebc795dab4b",
				version = 2,
			},
		},
	},
	inheritedProfiles = 
	{
	},
	timelineName = "ucob",
	version = "1.0.3",
}



return tbl
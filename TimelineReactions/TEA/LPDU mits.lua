local tbl = 
{
	[2] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior ",
				uuid = "7ddf9f0a-dca4-ea6b-81cc-ee0aca668a3b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T1 ",
				uuid = "b3a58a36-1d92-dd3d-b53c-3a5b53b4c235",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T1 ",
				name = " P1",
				uuid = "870ed617-3233-65bf-bcb9-e8cfb287122f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"96bd19a0-4adf-32b7-bb8b-3c6c1bdf7d80",
									true,
								},
								
								{
									"6b6d2563-afc8-89df-9bed-678575e186ce",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Rampart",
							uuid = "37824154-dab4-0746-9b4b-b506e66cd9c2",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "96bd19a0-4adf-32b7-bb8b-3c6c1bdf7d80",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "6b6d2563-afc8-89df-9bed-678575e186ce",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T1 / P1",
				mechanicTime = 11.4,
				name = "[T1] Rampart - Fluid Swing 1",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = -16.9,
				timerStartOffset = -19.4,
				uuid = "88848bbe-086a-9f95-8db8-9ba86a4a6b91",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"e1c74e2a-a29b-6b7c-b34c-9385820bd4b8",
									true,
								},
								
								{
									"d7cbf426-9b95-f4ac-ba50-2379b1513a85",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Bloodwhetting",
							uuid = "745b3a51-26d2-4ec0-aff9-ba7ef40daa10",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "e1c74e2a-a29b-6b7c-b34c-9385820bd4b8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "d7cbf426-9b95-f4ac-ba50-2379b1513a85",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T1 / P1",
				mechanicTime = 11.4,
				name = "[T1] Raw Intuition - Fluid Swing 1",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = -1.8,
				timerStartOffset = -4.1,
				uuid = "6eff2af0-778c-407a-8c5c-9039af6a94f7",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T2 ",
				uuid = "d868a404-fc0a-ab75-aca1-c8466d33dbe9",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T2 ",
				name = " P1",
				uuid = "fac9b790-3fec-ca0b-ac78-99ca3f238c36",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"e04ce9ed-e000-1fe5-a756-520b87485d28",
									true,
								},
								
								{
									"e828e834-3493-785f-956f-040466598625",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_NascentFlashMouse",
							targetType = "Other Tank",
							uuid = "2cbfe790-631a-2675-90b5-d48bf43ae63a",
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
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							name = "Warrior",
							uuid = "e04ce9ed-e000-1fe5-a756-520b87485d28",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "e828e834-3493-785f-956f-040466598625",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T2 / P1",
				mechanicTime = 11.4,
				name = "[T2] Nascent Flash - Fluid Swing 1",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = -1.8,
				timerStartOffset = -4.1,
				uuid = "7dc389c1-ee7d-0131-aafe-dc3d1aefa17c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker ",
				uuid = "14b42dc3-f478-f469-a694-7ea0d46acec4",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T1 ",
				uuid = "ab981012-325b-5c34-a252-f2055e041f37",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T1 ",
				name = " P1",
				uuid = "a594bddf-e3b0-c1ce-8f0c-75ad343f22f2",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"063a0343-e995-7bae-8639-d543f3bcd1f8",
									true,
								},
								
								{
									"3496fac0-8249-d541-b0f6-c359e832c903",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Rampart",
							uuid = "037ad0f3-520c-9665-ab9e-c2f16feae3f4",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "063a0343-e995-7bae-8639-d543f3bcd1f8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "3496fac0-8249-d541-b0f6-c359e832c903",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T1 / P1",
				mechanicTime = 11.4,
				name = "[T1] Rampart - Fluid Swing 1",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = -18.5,
				timerStartOffset = -19.4,
				uuid = "209a2dc6-e945-87bf-95f1-d56eea4de1d2",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"f2240ad9-4d62-32a2-b3ab-a142f1c980ad",
									true,
								},
								
								{
									"b1a4099a-f909-7a1c-9831-a88b67aa687e",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							uuid = "9119b3bd-d827-ae91-9994-8ecf94cb8142",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "f2240ad9-4d62-32a2-b3ab-a142f1c980ad",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "b1a4099a-f909-7a1c-9831-a88b67aa687e",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T1 / P1",
				mechanicTime = 11.4,
				name = "[T1] Camouflage - Fluid Swing 1",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = -16.5,
				timerStartOffset = -18.2,
				uuid = "23c14642-52f6-37df-8e76-0498838aa5f1",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"4485eef2-4723-267b-a40f-1843804d6982",
									true,
								},
								
								{
									"bff6447d-3e5d-3e03-8dc6-8e929069239c",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "479fc499-fcf6-91a3-91dd-4bf3250fbbda",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "4485eef2-4723-267b-a40f-1843804d6982",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "bff6447d-3e5d-3e03-8dc6-8e929069239c",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T1 / P1",
				mechanicTime = 11.4,
				name = "[T1] Heart of Stone - Fluid Swing 1",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = -1.8,
				timerStartOffset = -4.1,
				uuid = "87c79603-3c05-580e-9241-27f0d1404201",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T2 ",
				uuid = "eb28b59c-3a7d-95b2-98d1-a73496b5cb22",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T2 ",
				name = " P1",
				uuid = "8ee1179d-f974-81af-91b4-25534858fe41",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"ccdee0d7-58b8-5d68-9e31-3511258c7780",
									true,
								},
								
								{
									"0c786d37-0599-d05b-b30f-8b9fa395ea6c",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumMouse",
							targetType = "Other Tank",
							uuid = "1855483f-0b6a-1660-8ea7-c43d275550d7",
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
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "ccdee0d7-58b8-5d68-9e31-3511258c7780",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "0c786d37-0599-d05b-b30f-8b9fa395ea6c",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T2 / P1",
				mechanicTime = 11.4,
				name = "[T2] Heart of Stone - Fluid Swing 1",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = -1.8,
				timerStartOffset = -4.1,
				uuid = "6e81b16f-6825-94c9-8ed7-0e5961409a31",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight ",
				uuid = "41e754dc-342a-0d9f-9f36-59be6ce1dbcc",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T1 ",
				uuid = "4495476b-d27e-4ec5-9c93-f6d4841803e9",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T1 ",
				name = " P1",
				uuid = "57e6852a-cb0b-4ff4-9179-018c3ea24f4e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"8f398155-28d9-7dd3-b1dc-af699ef11b15",
									true,
								},
								
								{
									"76b2b274-b4ba-41b5-921a-2396bc2b2942",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_Rampart",
							uuid = "96efac80-ab20-8d47-831d-5da64114555e",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "8f398155-28d9-7dd3-b1dc-af699ef11b15",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "76b2b274-b4ba-41b5-921a-2396bc2b2942",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T1 / P1",
				mechanicTime = 11.4,
				name = "[T1] Rampart - Fluid Swing 1",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = -18.5,
				timerStartOffset = -19.4,
				uuid = "226de28a-7c7c-1e52-b721-524d0d50a2e8",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"fcdcd99b-e477-440f-980e-23fb0b7a3665",
									true,
								},
								
								{
									"080ddd18-367d-1b92-8ba0-19141388c56a",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf",
							uuid = "bcc1daa4-3c74-dd1d-86e5-a06c8bccb2b9",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "fcdcd99b-e477-440f-980e-23fb0b7a3665",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "080ddd18-367d-1b92-8ba0-19141388c56a",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T1 / P1",
				mechanicTime = 11.4,
				name = "[T1] The Blackest Night - Fluid Swing 1",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = -1.8,
				timerStartOffset = -4.1,
				uuid = "58e2fa1a-5f1b-0bdb-a6fc-155c85d91fa7",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T2 ",
				uuid = "eb124559-d031-549a-89ac-80d916a79fb7",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T2 ",
				name = " P1",
				uuid = "76c0a022-fbcb-b5ea-ac1f-d65c73992e4a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"72dfcf18-796a-963f-ac9d-cbc63eed572c",
									true,
								},
								
								{
									"1d4a20c0-ad5b-ea1c-b09f-d33810d939d1",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightMouse",
							targetType = "Other Tank",
							uuid = "92f774dc-aff2-2d93-82fd-98e953bccd75",
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
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "72dfcf18-796a-963f-ac9d-cbc63eed572c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "1d4a20c0-ad5b-ea1c-b09f-d33810d939d1",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T2 / P1",
				mechanicTime = 11.4,
				name = "[T2] The Blackest Night - Fluid Swing 1",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = -1.7999999523163,
				timerStartOffset = -4.0999999046326,
				uuid = "bf1a7159-762f-c676-8364-9387f39cb44f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin ",
				uuid = "4d5eebdc-8f7e-1827-8881-962092e429d0",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T1 ",
				uuid = "a6a583ef-3a7c-1713-9c4c-23bfc7ff743d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T1 ",
				name = " P1",
				uuid = "8b544f26-bd08-6755-b62a-8c8441720276",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a2911875-acc6-8e73-b224-437a8a20f0cb",
									true,
								},
								
								{
									"c0dcf95f-6933-8fe9-b327-967484705d9a",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Rampart",
							uuid = "2a28506f-7670-3422-abc5-c6b9e0c92b29",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "a2911875-acc6-8e73-b224-437a8a20f0cb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "c0dcf95f-6933-8fe9-b327-967484705d9a",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T1 / P1",
				mechanicTime = 11.4,
				name = "[T1] Rampart - Fluid Swing 1",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = -18.5,
				timerStartOffset = -19.4,
				uuid = "c18489e4-6932-b9e0-868e-515e76a70b4c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"481b68e3-4d5c-9777-a0d7-fd29d330ba95",
									true,
								},
								
								{
									"ebe7ba21-6431-dcd3-a4b3-9c864a80e13f",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HolySheltron",
							uuid = "95dd117b-cf36-5dae-a3c7-90c45d2060d8",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "481b68e3-4d5c-9777-a0d7-fd29d330ba95",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "ebe7ba21-6431-dcd3-a4b3-9c864a80e13f",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T1 / P1",
				mechanicTime = 11.4,
				name = "[T1] Sheltron - Fluid Swing 1",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = -1.8,
				timerStartOffset = -4.1,
				uuid = "34a67b4c-8a0a-7a0d-95fd-832f085a7d6d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T2 ",
				uuid = "e3952830-005b-bea0-a26d-8af45b511cf9",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T2 ",
				name = " P1",
				uuid = "bc37c1d7-4532-14dd-a237-966695e29d1a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"31cca914-cb97-71df-ba6c-ddced35c1a34",
									true,
								},
								
								{
									"6d780545-6b7d-94e6-8faf-bbfa33014010",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_InterventionMouse",
							targetType = "Other Tank",
							uuid = "f584436a-c8d1-396b-ad8f-bf04910b6f2f",
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
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "31cca914-cb97-71df-ba6c-ddced35c1a34",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "6d780545-6b7d-94e6-8faf-bbfa33014010",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T2 / P1",
				mechanicTime = 11.4,
				name = "[T2] Intervention - Fluid Swing 1",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = -1.8,
				timerStartOffset = -4.1,
				uuid = "2fab7768-c6ee-2b1f-a145-6e3d1502c719",
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
				name = "Warrior ",
				uuid = "73ab0ca5-f64f-a4f9-a380-6847ce3e662f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T1 ",
				uuid = "2c690fb3-c80e-1b82-9a91-5a974a3e3774",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T1 ",
				name = " P1",
				uuid = "edc389bf-cb59-e2c8-9128-699a5ed3fd31",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"21dc56e4-8f4d-0358-87dd-4c147c00b712",
									true,
								},
								
								{
									"854eeaa6-e5e2-9849-abf7-6befda18ddd3",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Reprisal",
							uuid = "569e1296-d7df-8060-8d4b-7a1a9dde7970",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "21dc56e4-8f4d-0358-87dd-4c147c00b712",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "854eeaa6-e5e2-9849-abf7-6befda18ddd3",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T1 / P1",
				mechanicTime = 19.5,
				name = "[T1] Reprisal - Cascade 1",
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = -1.2,
				timerStartOffset = -3.8,
				uuid = "d922d31d-3a70-b667-8aa6-2dbb22f396bb",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker ",
				uuid = "b404a93d-9a6f-fcf4-884b-71eed935a36b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T1 ",
				uuid = "e5ba4f2a-fc53-6406-a4a0-b4bbd9724ead",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T1 ",
				name = " P1",
				uuid = "72e65f0a-fd56-b3fd-b693-a54c5c863a18",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"43099a9e-8f78-a82f-a9df-59eeea79c7fe",
									true,
								},
								
								{
									"d9f847ec-4427-3b12-be5e-04df4f5d0a3d",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "9976334b-4ef6-239f-b6d0-332bc6579e95",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "43099a9e-8f78-a82f-a9df-59eeea79c7fe",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "d9f847ec-4427-3b12-be5e-04df4f5d0a3d",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T1 / P1",
				mechanicTime = 19.5,
				name = "[T1] Reprisal - Cascade 1",
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = -1.2,
				timerStartOffset = -3.8,
				uuid = "d0818e8c-e44b-038c-b00d-194bda6cd0ea",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight ",
				uuid = "46f19169-2a0b-e796-9baf-f61e7cbe2b57",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T1 ",
				uuid = "6a51b182-2f01-4a07-abe5-01cf8ead012b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T1 ",
				name = " P1",
				uuid = "60b0bc7c-ac04-0308-b6c6-d1a2a4a69e76",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"6e00ff87-b72f-93d8-89c5-f73d9f51cdbe",
									true,
								},
								
								{
									"063ece96-96dd-aecd-80cc-0d8f56ba559f",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_Reprisal",
							uuid = "c40edfe0-b4f4-9324-9605-3f8a098d26b2",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "6e00ff87-b72f-93d8-89c5-f73d9f51cdbe",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "063ece96-96dd-aecd-80cc-0d8f56ba559f",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T1 / P1",
				mechanicTime = 19.5,
				name = "[T1] Reprisal - Cascade 1",
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = -1.2,
				timerStartOffset = -3.8,
				uuid = "0c65ee6f-4364-8536-8155-c457c0635ada",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin ",
				uuid = "e4720d86-81b6-37fa-b514-3074404552c4",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T1 ",
				uuid = "4e73a4eb-3ec1-9873-a406-047129651b1d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T1 ",
				name = " P1",
				uuid = "01c79bb2-85b7-65c1-819d-d6d55e1da96f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"9c2a6a27-e6fe-2172-8b0c-ee022239e92e",
									true,
								},
								
								{
									"7d1cbe34-dd6b-8ad2-a0dc-6345fc6a75a2",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Reprisal",
							uuid = "00dd4991-93a4-e887-a80b-bf79757f4e1d",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "9c2a6a27-e6fe-2172-8b0c-ee022239e92e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "7d1cbe34-dd6b-8ad2-a0dc-6345fc6a75a2",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T1 / P1",
				mechanicTime = 19.5,
				name = "[T1] Reprisal - Cascade 1",
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = -1.2,
				timerStartOffset = -3.8,
				uuid = "8368e4a3-4f99-0d1b-b92a-44519ca7a2ce",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DPS ",
				uuid = "b4f45d3a-a255-9a05-8474-20c2a8f24261",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " M1",
				uuid = "720d1f72-d591-2b6a-b306-1464e4abede4",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"ad4be7ca-cc72-0608-bf55-f3d8dd82a78b",
									true,
								},
								
								{
									"d513e408-6974-7e54-9628-390f599009b3",
									true,
								},
							},
							gVar = "ACR_TensorViper3_Hotbar_Feint",
							uuid = "fabc21e5-a0c1-3ac4-a441-8b632bf56eb3",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"M1\" or false",
							name = "Assigned M1",
							uuid = "ad4be7ca-cc72-0608-bf55-f3d8dd82a78b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local target = TensorCore.mGetTarget()\nreturn target and target.contentid == 9211 or false",
							name = "Living Liquid selected",
							uuid = "d513e408-6974-7e54-9628-390f599009b3",
							version = 3,
						},
					},
				},
				displayPath = "DPS / M1",
				mechanicTime = 19.5,
				name = "[M1] Feint - Cascade 1",
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = -3.5,
				timerStartOffset = -4.7,
				uuid = "1aeb7b8f-a66b-72b4-80d2-d14172975ac0",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " Reaper",
				uuid = "90f3bb4f-181e-7da3-90c4-6448d4142121",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a6ddca7e-bce0-2af5-bc4b-f2c4277878e4",
									true,
								},
								
								{
									"8076e266-6c5f-9166-87be-14cd8e14d5ff",
									true,
								},
							},
							gVar = "ACR_TensorReaper4_Hotbar_ArcaneCrest",
							uuid = "e2d7f190-80e7-280a-8ea0-e8d5613c0bd6",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif not roster or not roster.current() then return false end\nlocal slot = roster.mySlot()\nreturn slot == \"M1\" or slot == \"M2\"",
							name = "Assigned M1 or M2",
							uuid = "8076e266-6c5f-9166-87be-14cd8e14d5ff",
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
							name = "Reaper",
							uuid = "a6ddca7e-bce0-2af5-bc4b-f2c4277878e4",
							version = 3,
						},
					},
				},
				displayPath = "DPS / Reaper",
				mechanicTime = 19.5,
				name = "[RPR] Arcane Crest - Cascade 1",
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = -1.2,
				timerStartOffset = -3.5,
				uuid = "db2b6fd8-5ae5-a039-9466-a286a64f1d43",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " Samurai",
				uuid = "2a51b9df-3e03-b929-be66-688a9dd6e1cc",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"d215b352-fbb4-f999-86d0-f31b9c7b9bdf",
									true,
								},
								
								{
									"454190b6-e647-1b7f-945a-f28373d3bee8",
									true,
								},
							},
							gVar = "ACR_TensorWeeb3_Hotbar_Tengetsu",
							uuid = "c1849192-65ed-ddf0-9740-577e1b1d3337",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif not roster or not roster.current() then return false end\nlocal slot = roster.mySlot()\nreturn slot == \"M1\" or slot == \"M2\"",
							name = "Assigned M1 or M2",
							uuid = "454190b6-e647-1b7f-945a-f28373d3bee8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "SAMURAI",
							name = "Samurai",
							uuid = "d215b352-fbb4-f999-86d0-f31b9c7b9bdf",
							version = 3,
						},
					},
				},
				displayPath = "DPS / Samurai",
				mechanicTime = 19.5,
				name = "[SAM] Third Eye - Cascade 1",
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = -1.1,
				timerStartOffset = -3.1,
				uuid = "35f2ebfe-abe0-bc2c-ae99-a54d80c00c2e",
				version = 2,
			},
		},
	},
	[6] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior ",
				uuid = "688f200d-ea77-165c-9537-d7693bf07d4f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T1 ",
				uuid = "0656e945-f81c-be14-9644-2fed72db78ff",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T1 ",
				name = " P1",
				uuid = "8fe16f0a-0009-2832-aad0-2b69d5673b60",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"9cf767cf-778b-3f9a-b939-16c6cfb9d815",
									true,
								},
								
								{
									"8ca79ddd-6a7c-3e3d-99ea-fb240ce41ba4",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Holmgang",
							uuid = "5dcee6eb-9385-115b-ad1a-cba14709019f",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "9cf767cf-778b-3f9a-b939-16c6cfb9d815",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "8ca79ddd-6a7c-3e3d-99ea-fb240ce41ba4",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T1 / P1",
				mechanicTime = 37.7,
				name = "[T1] Holmgang - Fluid Swing 2",
				timeRange = true,
				timelineIndex = 6,
				timerEndOffset = -1.2,
				timerStartOffset = -4,
				uuid = "86f2cfa1-9dab-ac4e-8e1e-2939f966b67a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker ",
				uuid = "4894aa03-a5a3-6755-a978-54ecea8547ba",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T1 ",
				uuid = "73fb2bee-7012-5a10-a410-ca5dd569b5fb",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T1 ",
				name = " P1",
				uuid = "9a87df05-2e9d-84c6-96e2-a75ee626477a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"81b07562-4dd9-19ac-8e1c-dc1fadad78ea",
									true,
								},
								
								{
									"c14453bc-526a-7432-9b9d-6d552e326621",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Superbolide",
							uuid = "3285a1da-4841-b748-b1b5-f2857887d7af",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "81b07562-4dd9-19ac-8e1c-dc1fadad78ea",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "c14453bc-526a-7432-9b9d-6d552e326621",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T1 / P1",
				mechanicTime = 37.7,
				name = "[T1] Superbolide - Fluid Swing 2",
				timeRange = true,
				timelineIndex = 6,
				timerEndOffset = -1.2,
				timerStartOffset = -3,
				uuid = "4f6beeb1-f4a5-d032-8832-b8731e901467",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight ",
				uuid = "6432b02a-9226-5253-a8b8-a8e692535b83",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T1 ",
				uuid = "f0effadd-308c-619e-bdd3-b5154b78ead9",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T1 ",
				name = " P1",
				uuid = "67b2f9d5-f95c-1311-a5b2-bdac6f2fbf9b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"0f6afe16-e8ba-e25d-9900-b48d589322ea",
									true,
								},
								
								{
									"c2645d07-c658-9f20-a77f-6a02234d081a",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_LivingDead",
							uuid = "8fd2abf6-c8da-3eaf-99f5-303a92d3969f",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "0f6afe16-e8ba-e25d-9900-b48d589322ea",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "c2645d07-c658-9f20-a77f-6a02234d081a",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T1 / P1",
				mechanicTime = 37.7,
				name = "[T1] Living Dead - Fluid Swing 2",
				timeRange = true,
				timelineIndex = 6,
				timerEndOffset = -1.2,
				timerStartOffset = -3,
				uuid = "33675c4e-cf9c-9c1d-bf33-e8e90da683cc",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin ",
				uuid = "f1687d34-3fd1-bdc5-8abe-f8eb31a0c64f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T1 ",
				uuid = "dde411d1-40d8-8893-9ecf-67671aa8f6a8",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T1 ",
				name = " P1",
				uuid = "b8dc142a-d393-deca-a06f-4ea041fad56d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"6f9e897f-3aca-b9f5-afda-12751332af8d",
									true,
								},
								
								{
									"d8ff52e7-e548-64c0-9c52-eb55163ffbf4",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HallowedGround",
							uuid = "cf864383-e496-649f-8bd1-77f4db097117",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "6f9e897f-3aca-b9f5-afda-12751332af8d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "d8ff52e7-e548-64c0-9c52-eb55163ffbf4",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T1 / P1",
				mechanicTime = 37.7,
				name = "[T1] Hallowed Ground - Fluid Swing 2",
				timeRange = true,
				timelineIndex = 6,
				timerEndOffset = -1.2,
				timerStartOffset = -3,
				uuid = "9d99c038-9e57-ec7d-af03-55bb361284f9",
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
				name = "Warrior ",
				uuid = "58833ae0-dbc1-6582-8e1d-4c29563cd93e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T1 ",
				uuid = "3a58686d-6818-5361-a1e4-9eb6cc6b0885",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T1 ",
				name = " P1",
				uuid = "da1b9835-5244-c3de-9e07-a6e49c288be3",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"eeb5a2e9-d50e-407d-86f1-b7108747e5ff",
									true,
								},
								
								{
									"83707fb4-3671-aec6-8cc6-b79f059ef006",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_ShakeItOff",
							uuid = "69020262-3cc3-eef5-b363-9c94a9507b53",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "eeb5a2e9-d50e-407d-86f1-b7108747e5ff",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "83707fb4-3671-aec6-8cc6-b79f059ef006",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T1 / P1",
				mechanicTime = 39.7,
				name = "[T1] Shake It Off - Doll feeds",
				timeRange = true,
				timelineIndex = 9,
				timerEndOffset = -0.7,
				timerStartOffset = -2.7,
				uuid = "1e3ce62b-f709-7080-bd83-168a327da67c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker ",
				uuid = "51eb7b7b-a6d0-3020-a235-183b7f9066ff",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T1 ",
				uuid = "2a852356-3b11-591d-b510-64fb6bf77f34",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T1 ",
				name = " P1",
				uuid = "9823c101-0f41-a669-bf09-84345ca891ab",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"23d6adeb-578e-e459-8db2-8f506bb42034",
									true,
								},
								
								{
									"0fd60c9f-7f73-cc66-a953-f2f476ad0475",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "d7bf03d0-98c2-7a90-b8be-43fd2b521875",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "23d6adeb-578e-e459-8db2-8f506bb42034",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "0fd60c9f-7f73-cc66-a953-f2f476ad0475",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T1 / P1",
				mechanicTime = 39.7,
				name = "[T1] Heart of Light - Doll feeds",
				timeRange = true,
				timelineIndex = 9,
				timerEndOffset = -0.7,
				timerStartOffset = -2.9,
				uuid = "bbdbe6b5-1d08-f250-8584-567dfcf7a3ef",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight ",
				uuid = "a38b4c4a-aa24-fce8-8f8a-feeaecbcbd42",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T1 ",
				uuid = "c5f00187-fe1e-c992-bffc-10d945b506e4",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T1 ",
				name = " P1",
				uuid = "38a7070d-fdf1-de4a-93ca-052d20c635a0",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"757aa4b2-180c-57af-a035-45f683498466",
									true,
								},
								
								{
									"ecdfe235-d4f4-61b4-8e43-619ba9999959",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_DarkMissionary",
							uuid = "5d9ef59c-aad9-c6f8-a054-8d0f1b13d8d2",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "757aa4b2-180c-57af-a035-45f683498466",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "ecdfe235-d4f4-61b4-8e43-619ba9999959",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T1 / P1",
				mechanicTime = 39.7,
				name = "[T1] Dark Missionary - Doll feeds",
				timeRange = true,
				timelineIndex = 9,
				timerEndOffset = -0.7,
				timerStartOffset = -2.9,
				uuid = "9f3a35ae-e4a2-c89a-94cd-3f5351903276",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin ",
				uuid = "e6dc5d96-fd22-705e-9a14-f47acef58b81",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T1 ",
				uuid = "f20492b1-5400-89b4-b560-ad3a91b31808",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T1 ",
				name = " P1",
				uuid = "3a86afda-f14b-f68f-968c-fa12899ec039",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"7d6320d2-e0f9-f06c-b9cc-4d6a88c95e1e",
									true,
								},
								
								{
									"04db58f7-0b05-0978-af15-578bdbee6044",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_DivineVeil",
							uuid = "24bb3c56-8389-9ee6-8063-834c306508e4",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "7d6320d2-e0f9-f06c-b9cc-4d6a88c95e1e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "04db58f7-0b05-0978-af15-578bdbee6044",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T1 / P1",
				mechanicTime = 39.7,
				name = "[T1] Divine Veil - Doll feeds",
				timeRange = true,
				timelineIndex = 9,
				timerEndOffset = -0.7,
				timerStartOffset = -2.9,
				uuid = "aaac429e-56c0-9377-920d-dd6866ab9b00",
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
				name = "Warrior ",
				uuid = "2351b10e-e829-6bcc-8cae-bf465fd1c783",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T1 ",
				uuid = "60a4735c-caca-10e7-b662-9c4ce88b52b9",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T1 ",
				name = " P1",
				uuid = "3fa5273c-f14e-9e1e-9202-309684eeb4ee",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"3350db45-1b32-8799-b6e4-aff88b07db4d",
									true,
								},
								
								{
									"92296e23-0cbd-89ca-ac5b-6987d1a00129",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Damnation",
							uuid = "69add27f-d035-4a33-9df7-117d2c3b2f9f",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "3350db45-1b32-8799-b6e4-aff88b07db4d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "92296e23-0cbd-89ca-ac5b-6987d1a00129",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T1 / P1",
				mechanicTime = 56.7,
				name = "[T1] Vengeance - Fluid Swing 3",
				timeRange = true,
				timelineIndex = 13,
				timerEndOffset = -2.7,
				timerStartOffset = -5.2,
				uuid = "6ea60243-1bec-8b3f-aa0d-6e7e21945a93",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"de9a92fe-f88a-d55d-98af-7537f5407dc4",
									true,
								},
								
								{
									"44008248-f3db-9433-b913-22e534d21564",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_NascentFlashMouse",
							targetType = "Other Tank",
							uuid = "e4bf92f6-3ea7-4449-b95d-7747c5350e63",
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
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							name = "Warrior",
							uuid = "de9a92fe-f88a-d55d-98af-7537f5407dc4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "44008248-f3db-9433-b913-22e534d21564",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T1 / P1",
				mechanicTime = 56.7,
				name = "[T1] Nascent Flash - Fluid Swing 3",
				timeRange = true,
				timelineIndex = 13,
				timerEndOffset = -0.8,
				timerStartOffset = -2.7,
				uuid = "4b713930-a358-a2d4-afa8-12ab6ba81d02",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T2 ",
				uuid = "d3fb5cff-a0ed-45bc-bc94-99b3a70ddf7d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T2 ",
				name = " P1",
				uuid = "122fe835-3bc9-4acf-a230-d99611951509",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"57a39fa4-3870-bc74-895d-4413fbcf1bf6",
									true,
								},
								
								{
									"57b364d9-63ff-df68-b422-7f6b95228247",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Reprisal",
							uuid = "0dc06899-4afa-0d9f-a4d2-9ab3990f7504",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "57a39fa4-3870-bc74-895d-4413fbcf1bf6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "57b364d9-63ff-df68-b422-7f6b95228247",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T2 / P1",
				mechanicTime = 56.7,
				name = "[T2] Reprisal - Fluid Swing 3",
				timeRange = true,
				timelineIndex = 13,
				timerEndOffset = -1,
				timerStartOffset = -2,
				uuid = "b5774cce-bdc2-54d8-b7eb-f02d81c81afe",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"8ddcf52e-cd03-2e15-a28e-2c83d51b2dd2",
									true,
								},
								
								{
									"d5761816-a3d0-5ae2-8842-c42619bf37df",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Damnation",
							uuid = "dabdb4c1-acba-7794-ba9c-43f8b67c1f59",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "8ddcf52e-cd03-2e15-a28e-2c83d51b2dd2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "d5761816-a3d0-5ae2-8842-c42619bf37df",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T2 / P1",
				mechanicTime = 56.7,
				name = "[T2] Vengeance - Fluid Swing 3",
				timeRange = true,
				timelineIndex = 13,
				timerEndOffset = -2.7,
				timerStartOffset = -5.2,
				uuid = "8b32761a-51cb-7864-88d8-a12af4d3ea97",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a5c547fd-b865-4137-8e7d-e3044e7fd158",
									true,
								},
								
								{
									"f0e4ab15-7032-e7cd-9738-0f7bed09d682",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_NascentFlashMouse",
							targetType = "Other Tank",
							uuid = "ae05317e-d5ef-0fc4-b3d3-bff1f70ba07c",
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
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							name = "Warrior",
							uuid = "a5c547fd-b865-4137-8e7d-e3044e7fd158",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "f0e4ab15-7032-e7cd-9738-0f7bed09d682",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T2 / P1",
				mechanicTime = 56.7,
				name = "[T2] Nascent Flash - Fluid Swing 3",
				timeRange = true,
				timelineIndex = 13,
				timerEndOffset = -0.8,
				timerStartOffset = -2.7,
				uuid = "0d5046cf-10d2-1217-966f-333f063832b9",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker ",
				uuid = "2aece0cf-a255-6ac2-a044-e64194fb2b86",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T1 ",
				uuid = "72213a44-2db4-d148-88e0-73dc1bc4a2ff",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T1 ",
				name = " P1",
				uuid = "e8179604-cbd2-bd19-90c8-0b85d1b5f700",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"c634a607-d3ce-1887-99ce-6c849ed562d7",
									true,
								},
								
								{
									"c7ea2230-5265-2ba2-97e9-32fcf0c94305",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Nebula",
							uuid = "92e57a2f-7ac4-02ed-a471-9e58d86247b4",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "c634a607-d3ce-1887-99ce-6c849ed562d7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "c7ea2230-5265-2ba2-97e9-32fcf0c94305",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T1 / P1",
				mechanicTime = 56.7,
				name = "[T1] Nebula - Fluid Swing 3",
				timeRange = true,
				timelineIndex = 13,
				timerEndOffset = -2.9,
				timerStartOffset = -5.7,
				uuid = "759a7d27-0b9f-6bf6-8ee7-2185257ba3c1",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"8a16c79e-f6bd-9db0-9d24-0f639f8824e8",
									true,
								},
								
								{
									"4cbc4a9d-6df9-8d84-a7b1-620ba7e68d94",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "c4a78121-436e-f283-8a9d-c4d18e41740e",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "8a16c79e-f6bd-9db0-9d24-0f639f8824e8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "4cbc4a9d-6df9-8d84-a7b1-620ba7e68d94",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T1 / P1",
				mechanicTime = 56.7,
				name = "[T1] Heart of Stone - Fluid Swing 3",
				timeRange = true,
				timelineIndex = 13,
				timerEndOffset = -0.8,
				timerStartOffset = -2.7,
				uuid = "d7ec78a0-257a-946a-b2d8-8ead6273679f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T2 ",
				uuid = "b95f8a3e-fdf7-d27d-965c-c16ccb411548",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T2 ",
				name = " P1",
				uuid = "15b7adab-f74e-b785-a236-2cf9afdd8529",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"747ab6f3-1be3-8aa2-8fec-5480e70fe095",
									true,
								},
								
								{
									"f5061ea1-8829-b238-ab13-cc01086f0cd3",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "7deaf733-2209-c45a-b34c-75378a29d3e2",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "747ab6f3-1be3-8aa2-8fec-5480e70fe095",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "f5061ea1-8829-b238-ab13-cc01086f0cd3",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T2 / P1",
				mechanicTime = 56.7,
				name = "[T2] Reprisal - Fluid Swing 3",
				timeRange = true,
				timelineIndex = 13,
				timerEndOffset = -2.7,
				timerStartOffset = -4.3,
				uuid = "15815843-e65d-39ac-bbf2-7ceb1100c1c9",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a3d402e9-24eb-fd12-987e-cdd84293ee3c",
									true,
								},
								
								{
									"8eea58bd-e3fd-37eb-ae34-7bcd905102f5",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Nebula",
							uuid = "32339bba-9142-e66c-b7ef-1dd3e47355b1",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "a3d402e9-24eb-fd12-987e-cdd84293ee3c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "8eea58bd-e3fd-37eb-ae34-7bcd905102f5",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T2 / P1",
				mechanicTime = 56.7,
				name = "[T2] Nebula - Fluid Swing 3",
				timeRange = true,
				timelineIndex = 13,
				timerEndOffset = -2.9,
				timerStartOffset = -5.7,
				uuid = "2460daea-2d99-5ab8-91c5-4bbd880b32a1",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a115a885-d3b6-ec3a-9302-f6b39a2626f0",
									true,
								},
								
								{
									"e04ac746-fcc0-d341-bb2d-7fe30de5a76c",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "66a6db3c-dbbf-3f89-ba60-806807a924aa",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "a115a885-d3b6-ec3a-9302-f6b39a2626f0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "e04ac746-fcc0-d341-bb2d-7fe30de5a76c",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T2 / P1",
				mechanicTime = 56.7,
				name = "[T2] Heart of Stone - Fluid Swing 3",
				timeRange = true,
				timelineIndex = 13,
				timerEndOffset = -0.8,
				timerStartOffset = -2.7,
				uuid = "457b59ca-8df2-7c46-b2dd-569390831d5f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight ",
				uuid = "02daa136-b17b-10f3-803d-b69891a1a35d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T1 ",
				uuid = "42f72fd8-9b5a-40e1-81ea-a7c2cae64dda",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T1 ",
				name = " P1",
				uuid = "991bff36-0a0d-98f5-9a22-8224cdbe0896",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"b0c393cb-4943-b211-b181-60447e161468",
									true,
								},
								
								{
									"3dac1c18-e760-c503-83d7-baf563190aab",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_ShadowedVigil",
							uuid = "661dd52e-f2a9-0a48-8408-27c60cfb5841",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "b0c393cb-4943-b211-b181-60447e161468",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "3dac1c18-e760-c503-83d7-baf563190aab",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T1 / P1",
				mechanicTime = 56.7,
				name = "[T1] Shadow Wall - Fluid Swing 3",
				timeRange = true,
				timelineIndex = 13,
				timerEndOffset = -2.9,
				timerStartOffset = -5.7,
				uuid = "27d0701c-a1fe-062a-bed3-922f0cbad031",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"68a4ec72-aa71-96aa-a243-dd1d236870f8",
									true,
								},
								
								{
									"556122df-d554-77a7-a3d6-71b388bd323b",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf",
							uuid = "c67f7bee-692a-0c42-89d4-8c3e35febb8f",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "68a4ec72-aa71-96aa-a243-dd1d236870f8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "556122df-d554-77a7-a3d6-71b388bd323b",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T1 / P1",
				mechanicTime = 56.7,
				name = "[T1] The Blackest Night - Fluid Swing 3",
				timeRange = true,
				timelineIndex = 13,
				timerEndOffset = -0.8,
				timerStartOffset = -2.7,
				uuid = "3852f504-ddad-27fc-a088-9fdef1df45bc",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T2 ",
				uuid = "e7aefdf7-7c5f-8a86-8ee2-639e6907af48",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T2 ",
				name = " P1",
				uuid = "e2ab3cbe-e8a9-63fd-81fd-706358c09c09",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"d9feff23-b267-3984-a75c-717a75ef8d03",
									true,
								},
								
								{
									"08f04d81-ee4b-c49a-8c6c-3414a43c38c1",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_Reprisal",
							uuid = "504b3d67-9f0b-efd0-a9a3-a4a5e1ca4119",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "d9feff23-b267-3984-a75c-717a75ef8d03",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "08f04d81-ee4b-c49a-8c6c-3414a43c38c1",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T2 / P1",
				mechanicTime = 56.7,
				name = "[T2] Reprisal - Fluid Swing 3",
				timeRange = true,
				timelineIndex = 13,
				timerEndOffset = -2.7,
				timerStartOffset = -4.3,
				uuid = "1ac3038f-bd2b-1e2a-8a5c-34dbf607721d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"56dd2b07-5630-20b5-a450-572bf7cc3bb7",
									true,
								},
								
								{
									"20257ee0-1bd8-3b93-9809-42dee3cb1370",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_ShadowedVigil",
							uuid = "c7b9d471-debe-e152-883d-2896b963372d",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "56dd2b07-5630-20b5-a450-572bf7cc3bb7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "20257ee0-1bd8-3b93-9809-42dee3cb1370",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T2 / P1",
				mechanicTime = 56.7,
				name = "[T2] Shadow Wall - Fluid Swing 3",
				timeRange = true,
				timelineIndex = 13,
				timerEndOffset = -2.9,
				timerStartOffset = -5.7,
				uuid = "2aed7800-f254-ce35-b81c-9e03123e863b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"550c4334-9a33-09d8-8dde-1f63009e88fa",
									true,
								},
								
								{
									"2a03ffd0-2a92-d53d-a441-fe2d80d86979",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf",
							uuid = "64ae878f-bab7-9c57-9297-53fb8286a9fb",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "550c4334-9a33-09d8-8dde-1f63009e88fa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "2a03ffd0-2a92-d53d-a441-fe2d80d86979",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T2 / P1",
				mechanicTime = 56.7,
				name = "[T2] The Blackest Night - Fluid Swing 3",
				timeRange = true,
				timelineIndex = 13,
				timerEndOffset = -0.8,
				timerStartOffset = -2.7,
				uuid = "c0950030-af89-28cd-b908-55bdd908b5cf",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin ",
				uuid = "7f894d86-aaf8-e8f4-8a0b-6fcd8fefdcff",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T1 ",
				uuid = "39b3428a-8954-0695-bfec-77edccc31840",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T1 ",
				name = " P1",
				uuid = "263fcee4-8472-97bd-8cd7-37bd4a6b415c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"fa7a7ad9-db33-0125-bb23-0b4f2acc83b8",
									true,
								},
								
								{
									"f7b4d4fc-401a-993a-96dd-cbb6ae9dfe2b",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Guardian",
							uuid = "c30f08a9-38e2-cd8c-9a28-451e3ccaac49",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "fa7a7ad9-db33-0125-bb23-0b4f2acc83b8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "f7b4d4fc-401a-993a-96dd-cbb6ae9dfe2b",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T1 / P1",
				mechanicTime = 56.7,
				name = "[T1] Sentinel - Fluid Swing 3",
				timeRange = true,
				timelineIndex = 13,
				timerEndOffset = -2.9,
				timerStartOffset = -5.7,
				uuid = "4710b0e9-71bd-bc09-9f28-fe0a7f4f96ea",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"018c4502-81b6-d7c5-89d6-b6f5bc3f5cbf",
									true,
								},
								
								{
									"b1a3dd51-75e3-961f-8672-9cb1633886b2",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HolySheltron",
							uuid = "cdf305de-4326-c86d-979e-2dcd245f8681",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "018c4502-81b6-d7c5-89d6-b6f5bc3f5cbf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "b1a3dd51-75e3-961f-8672-9cb1633886b2",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T1 / P1",
				mechanicTime = 56.7,
				name = "[T1] Sheltron - Fluid Swing 3",
				timeRange = true,
				timelineIndex = 13,
				timerEndOffset = -0.8,
				timerStartOffset = -2.7,
				uuid = "0fe85cf0-6d0d-afaa-8965-4b63866fee20",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T2 ",
				uuid = "fc390cb1-8828-7393-905d-f4e1fdcd4acd",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T2 ",
				name = " P1",
				uuid = "2be2596d-1e6f-9502-9c10-1c397111fd37",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"042ff4f7-9764-4558-b2ab-0b8c8fe19124",
									true,
								},
								
								{
									"983d874c-560a-c765-a942-877c6934e22f",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Reprisal",
							uuid = "d0694318-6b67-eca0-b5ad-56341087bad4",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "042ff4f7-9764-4558-b2ab-0b8c8fe19124",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "983d874c-560a-c765-a942-877c6934e22f",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T2 / P1",
				mechanicTime = 56.7,
				name = "[T2] Reprisal - Fluid Swing 3",
				timeRange = true,
				timelineIndex = 13,
				timerEndOffset = -2.7,
				timerStartOffset = -4.3,
				uuid = "05cd1117-febe-f418-9b68-aac985b929f5",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"21ef3f90-b0a0-8958-b4b7-59d3a86efea7",
									true,
								},
								
								{
									"d8ea2f1b-1b71-24eb-b0cb-780bda5b473c",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Guardian",
							uuid = "1d821141-b603-aa46-a470-10769f26c858",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "21ef3f90-b0a0-8958-b4b7-59d3a86efea7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "d8ea2f1b-1b71-24eb-b0cb-780bda5b473c",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T2 / P1",
				mechanicTime = 56.7,
				name = "[T2] Sentinel - Fluid Swing 3",
				timeRange = true,
				timelineIndex = 13,
				timerEndOffset = -2.9,
				timerStartOffset = -5.7,
				uuid = "0f5b9397-443a-e73a-82a5-025a57b19cba",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"c14bb289-3f43-2728-adbd-0a523ac3eda9",
									true,
								},
								
								{
									"ab401778-25d9-81fc-9ea4-c5a48714b872",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HolySheltron",
							uuid = "bd4d93ff-b457-fc01-8e2c-db44aefced22",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "c14bb289-3f43-2728-adbd-0a523ac3eda9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "ab401778-25d9-81fc-9ea4-c5a48714b872",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T2 / P1",
				mechanicTime = 56.7,
				name = "[T2] Sheltron - Fluid Swing 3",
				timeRange = true,
				timelineIndex = 13,
				timerEndOffset = -0.8,
				timerStartOffset = -2.7,
				uuid = "3d157844-1ac5-c854-8b47-0687aa0f93df",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"adf1fdb5-79d7-fb50-859e-20f7c78e59d5",
									true,
								},
								
								{
									"317370eb-d8b9-fb51-8114-f4bf8d49d0e2",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_InterventionMouse",
							targetType = "Other Tank",
							uuid = "edc5a730-54cf-9089-8b42-9e840f103bbc",
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
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "adf1fdb5-79d7-fb50-859e-20f7c78e59d5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "317370eb-d8b9-fb51-8114-f4bf8d49d0e2",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T2 / P1",
				mechanicTime = 56.7,
				name = "[T2] Intervention - Fluid Swing 3",
				timeRange = true,
				timelineIndex = 13,
				timerEndOffset = -0.7,
				timerStartOffset = -2.2,
				uuid = "122e1996-8b30-909a-832d-60c5bdd0f60a",
				version = 2,
			},
		},
	},
	[20] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior ",
				uuid = "9e91fad2-4e28-22a3-a322-a37fd428546f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T1 ",
				uuid = "21248f36-3be0-0f5b-999c-7f6d69e5edbc",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T1 ",
				name = " P1",
				uuid = "ca5e0da1-9c6f-de3f-9ff0-c4d3073ae566",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"166f334b-1766-9f34-9134-92abf62679aa",
									true,
								},
								
								{
									"cd46c8b1-d472-fc5f-ac36-9ee66591711b",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Reprisal",
							uuid = "7e243f38-9886-6b68-995e-75e3fbf2f0d6",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "166f334b-1766-9f34-9134-92abf62679aa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "cd46c8b1-d472-fc5f-ac36-9ee66591711b",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T1 / P1",
				mechanicTime = 81.1,
				name = "[T1] Reprisal - Splashes",
				timeRange = true,
				timelineIndex = 20,
				timerEndOffset = -0.9,
				timerStartOffset = -2.4,
				uuid = "fc58a5ea-7ff7-3440-811f-09b9dd692fb7",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T2 ",
				uuid = "e36b4010-e6be-b7f1-8acb-2c4a3f5a8174",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T2 ",
				name = " P1",
				uuid = "7734f670-24a7-86f6-b1b3-81cc546f2a90",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"e7fe7e59-9dee-eecd-b688-0e25975a2b21",
									true,
								},
								
								{
									"74869058-c4a1-4536-a80e-346126edc44d",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_ShakeItOff",
							uuid = "a5b566e6-fc0a-7a42-b30c-906e7422b2e2",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "e7fe7e59-9dee-eecd-b688-0e25975a2b21",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "74869058-c4a1-4536-a80e-346126edc44d",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T2 / P1",
				mechanicTime = 81.1,
				name = "[T2] Shake It Off - Splashes",
				timeRange = true,
				timelineIndex = 20,
				timerEndOffset = -1.1,
				timerStartOffset = -3.4,
				uuid = "368343f7-6fe8-7fc8-873b-6497e050eddc",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker ",
				uuid = "f8bacd62-93fb-4dd9-8110-6d85dd23052b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T1 ",
				uuid = "cd3bdacf-ef46-eeb7-98cf-86bc044bf59d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T1 ",
				name = " P1",
				uuid = "6d0600ff-83cc-9303-be0d-9c323f9a5685",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"8a839f51-d5b1-9190-8987-c2a75692dd22",
									true,
								},
								
								{
									"2b5ad773-4be1-ae6d-a710-cba2fd23b7c5",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "27bee916-5421-34f4-b396-38a87b4e5a24",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "8a839f51-d5b1-9190-8987-c2a75692dd22",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "2b5ad773-4be1-ae6d-a710-cba2fd23b7c5",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T1 / P1",
				mechanicTime = 81.1,
				name = "[T1] Reprisal - Splashes",
				timeRange = true,
				timelineIndex = 20,
				timerEndOffset = -1,
				timerStartOffset = -2.4,
				uuid = "0d57963a-c8f6-4970-ac3c-cc68ee37b1c0",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T2 ",
				uuid = "87b384ba-c630-4863-a4be-3a61a7cf808f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T2 ",
				name = " P1",
				uuid = "7caeeada-014c-ffe2-b76c-993f69071846",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"185cf373-e24a-8949-93c9-0288ab656714",
									true,
								},
								
								{
									"35e0e995-c304-0ac0-a319-e27623be3c83",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "e671c53f-6fda-1266-b999-311018ecdaa3",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "185cf373-e24a-8949-93c9-0288ab656714",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "35e0e995-c304-0ac0-a319-e27623be3c83",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T2 / P1",
				mechanicTime = 81.1,
				name = "[T2] Heart of Light - Splashes",
				timeRange = true,
				timelineIndex = 20,
				timerEndOffset = -1,
				timerStartOffset = -2.4,
				uuid = "b157a03e-13ca-3b3a-9598-5b16b0e34aa8",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight ",
				uuid = "c7776cfd-acaa-6329-b4d6-9deb51a3e63f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T1 ",
				uuid = "caa63c27-5685-29d3-8876-fe87be3143c5",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T1 ",
				name = " P1",
				uuid = "3d2bb3e9-52d7-4ddf-be46-bc77047ed807",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"c8a5e424-f110-c73d-8134-2c24f083cc0a",
									true,
								},
								
								{
									"add54054-c090-7258-a511-ac6b37768a04",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_Reprisal",
							uuid = "8ad4adb2-fe3b-d8c8-9ce1-9544f01e050a",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "c8a5e424-f110-c73d-8134-2c24f083cc0a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "add54054-c090-7258-a511-ac6b37768a04",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T1 / P1",
				mechanicTime = 81.1,
				name = "[T1] Reprisal - Splashes",
				timeRange = true,
				timelineIndex = 20,
				timerEndOffset = -1,
				timerStartOffset = -2.4,
				uuid = "cb5a3b4e-a157-3964-a4de-7dc40228bb5e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T2 ",
				uuid = "371d16c6-f28c-ffc6-b9cb-e1562e4c7a02",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T2 ",
				name = " P1",
				uuid = "f5c21884-402d-7c68-bd9e-a61308717a4c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"55173e43-fc3f-fb5f-8e6f-5f544e58563c",
									true,
								},
								
								{
									"c2b1e915-9a5e-08b6-adf7-f559be08d76a",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_DarkMissionary",
							uuid = "ed958515-d62c-26d2-be93-f9ca999704d0",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "55173e43-fc3f-fb5f-8e6f-5f544e58563c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "c2b1e915-9a5e-08b6-adf7-f559be08d76a",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T2 / P1",
				mechanicTime = 81.1,
				name = "[T2] Dark Missionary - Splashes",
				timeRange = true,
				timelineIndex = 20,
				timerEndOffset = -1,
				timerStartOffset = -2.4,
				uuid = "03c7b360-f790-62e3-bd47-4b660b16deaa",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin ",
				uuid = "4b1c1df1-003a-fd02-b2b2-b929f4914fc3",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T1 ",
				uuid = "d7c6d8b4-3ed3-4609-9ef0-2d8c5c1b425d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T1 ",
				name = " P1",
				uuid = "e9ad5497-5e95-5480-bc74-02e76c347915",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"04480844-5233-8443-80fd-7a60f0c0c396",
									true,
								},
								
								{
									"8f3b5976-d2d1-76ac-9f2f-212e50b8ac6d",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Reprisal",
							uuid = "03cd637c-0c31-9fe7-8d6f-62985a6290b4",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "04480844-5233-8443-80fd-7a60f0c0c396",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "8f3b5976-d2d1-76ac-9f2f-212e50b8ac6d",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T1 / P1",
				mechanicTime = 81.1,
				name = "[T1] Reprisal - Splashes",
				timeRange = true,
				timelineIndex = 20,
				timerEndOffset = -1,
				timerStartOffset = -2.4,
				uuid = "d5493d08-e110-d18a-b61e-85be66325205",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T2 ",
				uuid = "30e132b7-67d0-5f23-afaa-796923b45e87",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T2 ",
				name = " P1",
				uuid = "9eb3a589-d05e-b1ed-81e4-9041ce506628",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"9c6ee158-eb8f-7a1a-9fa4-a0966bce9ea6",
									true,
								},
								
								{
									"f7533e97-7aed-3008-b098-da5fb08b24b2",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_DivineVeil",
							uuid = "9bf7429c-8dae-b1ed-8771-715bfed97ff5",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "9c6ee158-eb8f-7a1a-9fa4-a0966bce9ea6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "f7533e97-7aed-3008-b098-da5fb08b24b2",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T2 / P1",
				mechanicTime = 81.1,
				name = "[T2] Divine Veil - Splashes",
				timeRange = true,
				timelineIndex = 20,
				timerEndOffset = -1,
				timerStartOffset = -2.4,
				uuid = "52982154-8a7e-bb34-ae52-1bd62e25346c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DPS ",
				uuid = "7a441457-aa62-7e2d-a676-f751ffc14634",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " R1",
				uuid = "cfd91732-58ba-55f4-a094-14cad14c0b9f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"361a6373-c697-30f3-937d-19ef42c4d442",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_Hotbar_Tactician",
							uuid = "5dd9f5f5-6fa3-cb96-b761-499c47748835",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R1\" or false",
							name = "Assigned R1",
							uuid = "361a6373-c697-30f3-937d-19ef42c4d442",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R1",
				mechanicTime = 81.1,
				name = "[R1] Tactician - Splashes",
				timeRange = true,
				timelineIndex = 20,
				timerEndOffset = -1.6,
				timerStartOffset = -4.1,
				uuid = "62331007-3e42-38be-94b7-61e7392cede9",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"c5ee0fce-f8fe-e3c1-804a-fa338f925a24",
									true,
								},
							},
							gVar = "ACR_TensorRequiem4_Hotbar_Troubadour",
							uuid = "1fe906a5-9064-8e94-ad57-ef4c17b0418a",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R1\" or false",
							name = "Assigned R1",
							uuid = "c5ee0fce-f8fe-e3c1-804a-fa338f925a24",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R1",
				mechanicTime = 81.1,
				name = "[R1] Troubadour - Splashes",
				timeRange = true,
				timelineIndex = 20,
				timerEndOffset = -1.6,
				timerStartOffset = -4.1,
				uuid = "7f4b3d73-bfa3-24bc-836d-60f504487330",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"261d865a-351f-07c3-bbb1-fdf885929d66",
									true,
								},
							},
							gVar = "ACR_RikuDNC3_Hotbar_ShieldSamba",
							uuid = "2e40dbe0-3237-fb05-8402-e86ec45919f4",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R1\" or false",
							name = "Assigned R1",
							uuid = "261d865a-351f-07c3-bbb1-fdf885929d66",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R1",
				mechanicTime = 81.1,
				name = "[R1] ShieldSamba - Splashes",
				timeRange = true,
				timelineIndex = 20,
				timerEndOffset = -1.6,
				timerStartOffset = -4.1,
				uuid = "47948d18-d538-d4a8-8fb6-a9cb69f44a68",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " R2",
				uuid = "f8fee24d-25bf-20f5-8512-231b51c417e2",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"64a8db8a-7d7f-b2dd-bcd3-84151ee8ebbc",
									true,
								},
								
								{
									"417ce43a-80a9-46ab-a571-2ebd4c74d70c",
									true,
								},
							},
							gVar = "ACR_TensorNuke4_Hotbar_Manaward",
							uuid = "4c0ca884-1026-aa29-af78-863bf9ae9dab",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R2\" or false",
							name = "Assigned R2",
							uuid = "417ce43a-80a9-46ab-a571-2ebd4c74d70c",
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
							name = "Black Mage",
							uuid = "64a8db8a-7d7f-b2dd-bcd3-84151ee8ebbc",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R2",
				mechanicTime = 81.1,
				name = "[R2] Manaward - Splashes and Cascade",
				timeRange = true,
				timelineIndex = 20,
				timerEndOffset = -1.1,
				timerStartOffset = -4.1,
				uuid = "cda56c47-b038-953e-8471-6d954ca8b982",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"1154f4b9-8cc8-01fd-ba76-beca2fd40202",
									true,
								},
								
								{
									"3d7edec6-71bf-d0e2-a769-b22feda8842f",
									true,
								},
							},
							gVar = "ACR_RikuPCT3_Hotbar_TemperaCoat",
							uuid = "22934d75-401c-e867-adf5-d6bd855afc0a",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R2\" or false",
							name = "Assigned R2",
							uuid = "3d7edec6-71bf-d0e2-a769-b22feda8842f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PICTOMANCER",
							name = "Pictomancer",
							uuid = "1154f4b9-8cc8-01fd-ba76-beca2fd40202",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R2",
				mechanicTime = 81.1,
				name = "[R2] TemperaCoat - Splashes",
				timeRange = true,
				timelineIndex = 20,
				timerEndOffset = -1.1,
				timerStartOffset = -4.1,
				uuid = "11bb9f67-07d1-1f2e-a0f7-03660e81a6fd",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " M2",
				uuid = "d618c998-c74d-547a-84da-b20c648d4d4d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"15ddf60d-1bb5-e6d1-9b12-bc847f8a6bd0",
									true,
								},
								
								{
									"43ca2962-a48b-ce72-aa86-bf69dbaf96ae",
									true,
								},
							},
							gVar = "ACR_TensorViper3_Hotbar_Feint",
							uuid = "268a1804-03d3-183a-9885-071bbefa73af",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"M2\" or false",
							name = "Assigned M2",
							uuid = "15ddf60d-1bb5-e6d1-9b12-bc847f8a6bd0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local target = TensorCore.mGetTarget()\nreturn target and target.contentid == 9211 or false",
							name = "Living Liquid selected",
							uuid = "43ca2962-a48b-ce72-aa86-bf69dbaf96ae",
							version = 3,
						},
					},
				},
				displayPath = "DPS / M2",
				mechanicTime = 81.1,
				name = "[M2] Feint - Splashes",
				timeRange = true,
				timelineIndex = 20,
				timerEndOffset = -1.1,
				timerStartOffset = -3.1,
				uuid = "987c2e55-6580-aec0-9a3b-cc89fac3467a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " Melee",
				uuid = "4e53414b-45dd-ec8b-a512-bd3c59b07b1a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"b4ef38ac-3e7e-ac90-8cfb-7a8c30441d39",
									true,
								},
							},
							gVar = "ACR_TensorViper3_Hotbar_Bloodbath",
							uuid = "26792dcb-11fa-a1b7-a1be-98f39ffc9a20",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif not roster or not roster.current() then return false end\nlocal slot = roster.mySlot()\nreturn slot == \"M1\" or slot == \"M2\"",
							name = "Assigned M1 or M2",
							uuid = "b4ef38ac-3e7e-ac90-8cfb-7a8c30441d39",
							version = 3,
						},
					},
				},
				displayPath = "DPS / Melee",
				mechanicTime = 81.1,
				name = "[Melee] Bloodbath - Splashes",
				timeRange = true,
				timelineIndex = 20,
				timerEndOffset = 2.3,
				timerStartOffset = 0.3,
				uuid = "082cfabf-b334-bbc5-9367-9ce07db560c0",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " Ninja",
				uuid = "5e4bb497-9fbd-2bcb-9b43-449bd28a6c9c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"09f5d8ed-9d91-586b-b337-c41fb133fcad",
									true,
								},
								
								{
									"b4c01043-6ce3-37ca-bacc-d31d64fa1642",
									true,
								},
							},
							gVar = "ACR_RikuNIN3_Hotbar_ShadeShift",
							uuid = "9c7a566c-1bb7-1546-9644-2ff19bdd7760",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif not roster or not roster.current() then return false end\nlocal slot = roster.mySlot()\nreturn slot == \"M1\" or slot == \"M2\"",
							name = "Assigned M1 or M2",
							uuid = "b4c01043-6ce3-37ca-bacc-d31d64fa1642",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "NINJA",
							name = "Ninja",
							uuid = "09f5d8ed-9d91-586b-b337-c41fb133fcad",
							version = 3,
						},
					},
				},
				displayPath = "DPS / Ninja",
				mechanicTime = 81.1,
				name = "[NIN] Shade Shift - Splashes",
				timeRange = true,
				timelineIndex = 20,
				timerEndOffset = -1.1,
				timerStartOffset = -4.1,
				uuid = "67910a85-7dbd-6389-ba47-b9a4d828cd6c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " Monk",
				uuid = "16323cc9-3f4c-e3e4-b55c-f8657ccfe331",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"59dd0abc-3194-f235-baaf-f01234af2c7c",
									true,
								},
								
								{
									"92f1047b-ed93-c9cf-ab77-f47a605392e9",
									true,
								},
							},
							gVar = "ACR_RikuMNK3_Hotbar_RiddleOfEarth",
							uuid = "c5055b42-b700-f4c7-97a5-1d853b3723ea",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif not roster or not roster.current() then return false end\nlocal slot = roster.mySlot()\nreturn slot == \"M1\" or slot == \"M2\"",
							name = "Assigned M1 or M2",
							uuid = "92f1047b-ed93-c9cf-ab77-f47a605392e9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MONK",
							name = "Monk",
							uuid = "59dd0abc-3194-f235-baaf-f01234af2c7c",
							version = 3,
						},
					},
				},
				displayPath = "DPS / Monk",
				mechanicTime = 81.1,
				name = "[MNK] Riddle of Earth - Splashes",
				timeRange = true,
				timelineIndex = 20,
				timerEndOffset = -1.1,
				timerStartOffset = -3.1,
				uuid = "e0b59afa-0e07-b5cf-a1a0-a4876d37f27c",
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
				name = "Warrior ",
				uuid = "b7740ecc-0eae-9a13-aafa-30ae6ea57523",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T1 ",
				uuid = "2810d417-d7ff-bafb-8fbb-3d24b9545fb8",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T1 ",
				name = " P1",
				uuid = "9258796a-b607-4c44-a5a6-3b400a61c995",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"7c022e45-fabd-ac40-bd01-1af2aa99c796",
									true,
								},
								
								{
									"bd168bdf-2f55-f92b-abdb-3531a201b9e1",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Rampart",
							uuid = "fd6c4f85-0c87-5c9c-9ec2-987428090218",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "7c022e45-fabd-ac40-bd01-1af2aa99c796",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "bd168bdf-2f55-f92b-abdb-3531a201b9e1",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T1 / P1",
				mechanicTime = 86.6,
				name = "[T1] Rampart - Drainage",
				timeRange = true,
				timelineIndex = 21,
				timerEndOffset = -4.1,
				timerStartOffset = -6.9,
				uuid = "61871f54-a8e4-0fa2-b57c-a2951190f1b7",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"ffb7cf4d-8e12-b0f8-a774-f107a3e8266c",
									true,
								},
								
								{
									"07c64759-64c8-9874-b2c3-8737b84522ba",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_NascentFlashMouse",
							targetType = "Other Tank",
							uuid = "c21dc6ab-260a-0fea-b625-85a65402a2fe",
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
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							name = "Warrior",
							uuid = "ffb7cf4d-8e12-b0f8-a774-f107a3e8266c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "07c64759-64c8-9874-b2c3-8737b84522ba",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T1 / P1",
				mechanicTime = 86.6,
				name = "[T1] Nascent Flash - Drainage",
				timeRange = true,
				timelineIndex = 21,
				timerEndOffset = -5.2,
				timerStartOffset = -6.6,
				uuid = "78a71aea-b8e2-0270-93e7-acc2fe420ece",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"19531df5-995c-b490-815e-1c14b4484278",
									true,
								},
								
								{
									"3ebd2ea4-df13-6234-9361-769809e012fb",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_ThrillOfBattle",
							uuid = "9a91b6b3-c91f-3482-a5c0-6629747d44bd",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "19531df5-995c-b490-815e-1c14b4484278",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "3ebd2ea4-df13-6234-9361-769809e012fb",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T1 / P1",
				mechanicTime = 86.6,
				name = "[T1] Thrill of Battle - Drainage",
				timeRange = true,
				timelineIndex = 21,
				timerEndOffset = -1.6,
				timerStartOffset = -4.4,
				uuid = "38cc3f4d-9f0c-f9ae-a405-aa47d7ea4ad5",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T2 ",
				uuid = "2f258edc-1401-d2ac-ac27-08976eddf6d0",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T2 ",
				name = " P1",
				uuid = "683e7b01-c7a2-3d50-bfae-711f03adcd61",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"1647a329-d538-6883-8cde-a9a5b884f318",
									true,
								},
								
								{
									"fa69da37-d38b-0766-8c29-75a2e2fcfa72",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Rampart",
							uuid = "0081163a-b0b0-7a5d-9604-f8f52b70b6d3",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "1647a329-d538-6883-8cde-a9a5b884f318",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "fa69da37-d38b-0766-8c29-75a2e2fcfa72",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T2 / P1",
				mechanicTime = 86.6,
				name = "[T2] Rampart - Drainage",
				timeRange = true,
				timelineIndex = 21,
				timerEndOffset = -4.1,
				timerStartOffset = -6.9,
				uuid = "c9ef6528-d932-c373-b0b7-6f70dc2937fe",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"504f7d94-5f31-5b51-bc6e-48941c0b33fa",
									true,
								},
								
								{
									"40f774b9-44c3-6644-ae55-4a3d8584e7b6",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_NascentFlashMouse",
							targetType = "Other Tank",
							uuid = "026e2140-e147-4e3a-8ee4-f10de1a0c1c3",
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
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							name = "Warrior",
							uuid = "504f7d94-5f31-5b51-bc6e-48941c0b33fa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "40f774b9-44c3-6644-ae55-4a3d8584e7b6",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T2 / P1",
				mechanicTime = 86.6,
				name = "[T2] Nascent Flash - Drainage",
				timeRange = true,
				timelineIndex = 21,
				timerEndOffset = -5.2,
				timerStartOffset = -6.6,
				uuid = "4be47f82-5d03-3c78-8a83-11cdca399446",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"3ecf7877-d396-dc32-833d-80cb209de44b",
									true,
								},
								
								{
									"36abb21a-096b-d52e-9a27-68ecc0c0d9ad",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_ThrillOfBattle",
							uuid = "67ae93ef-eaca-6504-a93c-43a9f56ef25f",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "3ecf7877-d396-dc32-833d-80cb209de44b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "36abb21a-096b-d52e-9a27-68ecc0c0d9ad",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T2 / P1",
				mechanicTime = 86.6,
				name = "[T2] Thrill of Battle - Drainage",
				timeRange = true,
				timelineIndex = 21,
				timerEndOffset = -1.6,
				timerStartOffset = -4.4,
				uuid = "283f4f05-1b31-5351-8fb1-517859d96fb8",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker ",
				uuid = "968549f5-9c08-773a-8bff-76d27b2d6bb8",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T1 ",
				uuid = "d53fb361-4f91-c406-bb24-5ee3ea8e63fc",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T1 ",
				name = " P1",
				uuid = "6dcbe728-a0ad-989e-8488-cb4d510ed312",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"c9aa8bb0-2ea1-cb11-82a0-cfb35f955d60",
									true,
								},
								
								{
									"8e82deb9-e084-0666-b30b-dd9b2fbdbaee",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Rampart",
							uuid = "677850da-a4e4-f8b2-aa13-717218c6eb0d",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "c9aa8bb0-2ea1-cb11-82a0-cfb35f955d60",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "8e82deb9-e084-0666-b30b-dd9b2fbdbaee",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T1 / P1",
				mechanicTime = 86.6,
				name = "[T1] Rampart - Drainage",
				timeRange = true,
				timelineIndex = 21,
				timerEndOffset = -4.1,
				timerStartOffset = -6.9,
				uuid = "2a2f41e6-610f-d7e2-96a4-39aaa42c9ccc",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"aa32c796-782c-4291-ace2-676a62a656bc",
									true,
								},
								
								{
									"a81786c5-0fb6-45f7-b8c3-f9cc1dff189c",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "d5a693db-27e7-5bc8-915e-b74b11a3bc80",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "aa32c796-782c-4291-ace2-676a62a656bc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "a81786c5-0fb6-45f7-b8c3-f9cc1dff189c",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T1 / P1",
				mechanicTime = 86.6,
				name = "[T1] Heart of Stone - Drainage",
				timeRange = true,
				timelineIndex = 21,
				timerEndOffset = -5.2,
				timerStartOffset = -6.6,
				uuid = "88971c28-1f88-4144-8656-08922de93635",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"2d2ec1dd-d726-d67c-809c-82517bc53a34",
									true,
								},
								
								{
									"2fccc25d-58bf-513c-98c0-bdb03cbca0e0",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							uuid = "74bb4661-edb0-38e3-8414-aa1312039025",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "2d2ec1dd-d726-d67c-809c-82517bc53a34",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "2fccc25d-58bf-513c-98c0-bdb03cbca0e0",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T1 / P1",
				mechanicTime = 86.6,
				name = "[T1] Camouflage - Drainage",
				timeRange = true,
				timelineIndex = 21,
				timerEndOffset = -0.7,
				timerStartOffset = -1.6,
				uuid = "26d5100b-eeaf-ccbd-90d4-77d8e173b887",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T2 ",
				uuid = "bbe73d3a-687e-c80e-9427-61c1f44574b3",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T2 ",
				name = " P1",
				uuid = "be1eff7d-64c7-9975-ad3d-88825b7abd52",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"7ba38345-a43f-99df-bde0-e693fb0361ee",
									true,
								},
								
								{
									"426abc50-b306-2630-ad6e-37a074535d5e",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Rampart",
							uuid = "5be8c691-2a4e-917c-95c3-01916b71942c",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "7ba38345-a43f-99df-bde0-e693fb0361ee",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "426abc50-b306-2630-ad6e-37a074535d5e",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T2 / P1",
				mechanicTime = 86.6,
				name = "[T2] Rampart - Drainage",
				timeRange = true,
				timelineIndex = 21,
				timerEndOffset = -4.1,
				timerStartOffset = -6.9,
				uuid = "4c407f80-5a51-c561-9ecf-f8de235daa9f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"5d643b7c-8ea9-e686-8ec3-c8cb10a87428",
									true,
								},
								
								{
									"688fdb54-6741-678a-846a-038e3fe409b3",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "e2c87229-0f1d-f8b6-a94b-be8d21d921e3",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "5d643b7c-8ea9-e686-8ec3-c8cb10a87428",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "688fdb54-6741-678a-846a-038e3fe409b3",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T2 / P1",
				mechanicTime = 86.6,
				name = "[T2] Heart of Stone - Drainage",
				timeRange = true,
				timelineIndex = 21,
				timerEndOffset = -5.2,
				timerStartOffset = -6.6,
				uuid = "77c4d5fe-69b9-32de-8f50-da71cf14cefa",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"fb794f76-4e16-eedf-84e6-b3145d15e8e6",
									true,
								},
								
								{
									"cada4b83-8eb1-276e-a16a-b806354df912",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							uuid = "f062bd9b-f72b-8c9a-aadf-ad1149c081aa",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "fb794f76-4e16-eedf-84e6-b3145d15e8e6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "cada4b83-8eb1-276e-a16a-b806354df912",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T2 / P1",
				mechanicTime = 86.6,
				name = "[T2] Camouflage - Drainage",
				timeRange = true,
				timelineIndex = 21,
				timerEndOffset = -0.7,
				timerStartOffset = -1.6,
				uuid = "c8e2a952-a784-4e8f-8c01-35c33472bf3d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight ",
				uuid = "b09fc9b2-0db3-8a3b-9163-5790f20df78d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T1 ",
				uuid = "e9d81aa9-d3c9-3271-ad19-e765f4d20b89",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T1 ",
				name = " P1",
				uuid = "ea716fd5-caff-33f7-aebe-74c198dfbe2a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"8756001b-3d38-54d2-8834-790aeae81965",
									true,
								},
								
								{
									"d9483441-9fb9-438f-9929-709260e7c6ee",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_Rampart",
							uuid = "e80bd16e-6add-375b-afb8-048c5201bc43",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "8756001b-3d38-54d2-8834-790aeae81965",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "d9483441-9fb9-438f-9929-709260e7c6ee",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T1 / P1",
				mechanicTime = 86.6,
				name = "[T1] Rampart - Drainage",
				timeRange = true,
				timelineIndex = 21,
				timerEndOffset = -4.1,
				timerStartOffset = -6.9,
				uuid = "d0315289-3ae8-264f-8270-92537893e210",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"630bc9a3-0bb1-acb9-8d5f-c4750ecbd32e",
									true,
								},
								
								{
									"53281fab-9dc0-3ebc-950d-03a099a68b9b",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf",
							uuid = "eb477fd9-9cdb-5a79-ad04-65b964f3cfb0",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "630bc9a3-0bb1-acb9-8d5f-c4750ecbd32e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "53281fab-9dc0-3ebc-950d-03a099a68b9b",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T1 / P1",
				mechanicTime = 86.6,
				name = "[T1] The Blackest Night - Drainage",
				timeRange = true,
				timelineIndex = 21,
				timerEndOffset = -5.2,
				timerStartOffset = -6.6,
				uuid = "066ab52d-51cc-acb5-8a44-9fad441db200",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"08ec9135-216b-df79-88db-8d2ae5340328",
									true,
								},
								
								{
									"f5dbc8f3-f2f4-1f1e-b0fc-a01142333e6e",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_DarkMind",
							uuid = "580a0168-c8f7-e451-8c48-0e35ddc0cd09",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "08ec9135-216b-df79-88db-8d2ae5340328",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "f5dbc8f3-f2f4-1f1e-b0fc-a01142333e6e",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T1 / P1",
				mechanicTime = 86.6,
				name = "[T1] Dark Mind - Drainage",
				timeRange = true,
				timelineIndex = 21,
				timerEndOffset = -1.4,
				timerStartOffset = -3.7,
				uuid = "48c2c246-80c2-1c87-a825-3f7252ccd15a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T2 ",
				uuid = "2b6881f7-fba2-b233-a2e2-f6126f760108",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T2 ",
				name = " P1",
				uuid = "1e8dc451-ad56-561f-9644-43a470fc9049",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"73d0a20f-4bdf-851f-8b07-90bc341e1a93",
									true,
								},
								
								{
									"4f407197-b812-11fc-aa10-5f0507df981f",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_Rampart",
							uuid = "46158825-e498-6ec6-a9a9-eda38f9c4b8b",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "73d0a20f-4bdf-851f-8b07-90bc341e1a93",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "4f407197-b812-11fc-aa10-5f0507df981f",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T2 / P1",
				mechanicTime = 86.6,
				name = "[T2] Rampart - Drainage",
				timeRange = true,
				timelineIndex = 21,
				timerEndOffset = -4.1,
				timerStartOffset = -6.9,
				uuid = "adb8ab7e-8499-750a-afb6-6f9d0a71c71f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"01d0b332-e9f3-eb89-8156-3dd003b32b20",
									true,
								},
								
								{
									"5ec10a1c-803b-286c-82d3-10700b9dd7c5",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf",
							uuid = "729b4217-1294-f046-9431-445b3ecb1896",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "01d0b332-e9f3-eb89-8156-3dd003b32b20",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "5ec10a1c-803b-286c-82d3-10700b9dd7c5",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T2 / P1",
				mechanicTime = 86.6,
				name = "[T2] The Blackest Night - Drainage",
				timeRange = true,
				timelineIndex = 21,
				timerEndOffset = -5.2,
				timerStartOffset = -6.6,
				uuid = "6e3e872c-c95e-2df6-a19c-01262429b421",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"ffac442b-a6e0-2f75-9816-1d41d644b6c3",
									true,
								},
								
								{
									"02356b18-73d8-9299-b37e-98e7c2064093",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_DarkMind",
							uuid = "44710b07-7a08-0e2f-803b-f2702371dfb5",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "ffac442b-a6e0-2f75-9816-1d41d644b6c3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "02356b18-73d8-9299-b37e-98e7c2064093",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T2 / P1",
				mechanicTime = 86.6,
				name = "[T2] Dark Mind - Drainage",
				timeRange = true,
				timelineIndex = 21,
				timerEndOffset = -1.4,
				timerStartOffset = -3.7,
				uuid = "58cd0a5d-5a45-fa8e-a0ef-301dd54d639f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin ",
				uuid = "dddb2875-ea57-6f23-b963-8ba55a14de71",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T1 ",
				uuid = "3762101a-ac6e-fe60-98a5-99910e7d7dd7",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T1 ",
				name = " P1",
				uuid = "c789924b-6167-8dca-8423-8f57fa57af24",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"2215298d-36a3-d3bc-88ea-d9daf2b21170",
									true,
								},
								
								{
									"60352b33-db88-6e22-b4e6-cf06e8f70dc8",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Rampart",
							uuid = "c596e762-7854-d0dc-84f8-ca3d48ac080d",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "2215298d-36a3-d3bc-88ea-d9daf2b21170",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "60352b33-db88-6e22-b4e6-cf06e8f70dc8",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T1 / P1",
				mechanicTime = 86.6,
				name = "[T1] Rampart - Drainage",
				timeRange = true,
				timelineIndex = 21,
				timerEndOffset = -4.1,
				timerStartOffset = -6.9,
				uuid = "e819f146-ce41-0517-901d-8be72c4f1410",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"7ef2a5a5-b76c-1184-bd49-db4a11968624",
									true,
								},
								
								{
									"93c180e0-261c-9a6c-87ed-be2a2478ecf1",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HolySheltron",
							uuid = "77e45075-e305-894d-906a-ff1bc7c2381e",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "7ef2a5a5-b76c-1184-bd49-db4a11968624",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "93c180e0-261c-9a6c-87ed-be2a2478ecf1",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T1 / P1",
				mechanicTime = 86.6,
				name = "[T1] Sheltron - Drainage",
				timeRange = true,
				timelineIndex = 21,
				timerEndOffset = -5.2,
				timerStartOffset = -6.6,
				uuid = "d359c796-6297-816b-a7d6-15f070e00c09",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"4a2bbd8f-1ced-2267-8b18-92e1d6c500c7",
									true,
								},
								
								{
									"61217e5a-1c02-466f-bdd3-3c83c382683a",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Bulwark",
							uuid = "0a379e27-2cdf-acac-92e1-67f13eb490cb",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "4a2bbd8f-1ced-2267-8b18-92e1d6c500c7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "61217e5a-1c02-466f-bdd3-3c83c382683a",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T1 / P1",
				mechanicTime = 86.6,
				name = "[T1] Bulwark - Drainage",
				timeRange = true,
				timelineIndex = 21,
				timerEndOffset = -0.7,
				timerStartOffset = -1.6,
				uuid = "9be2d7ea-1277-02a1-ae2a-74ea1f4599bd",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T2 ",
				uuid = "8fe502ab-f38e-d156-9858-7bc623ce15ff",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T2 ",
				name = " P1",
				uuid = "5e45d680-d7cc-951a-9f4f-5ac0ccc84811",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"56aa4bf4-9384-9049-852b-946f0eae9e79",
									true,
								},
								
								{
									"52a3d3d3-5a4c-7d8c-976f-f04e2b0e41d3",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Rampart",
							uuid = "8eed51e3-9821-d8c7-bb0d-848020fe023b",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "56aa4bf4-9384-9049-852b-946f0eae9e79",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "52a3d3d3-5a4c-7d8c-976f-f04e2b0e41d3",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T2 / P1",
				mechanicTime = 86.6,
				name = "[T2] Rampart - Drainage",
				timeRange = true,
				timelineIndex = 21,
				timerEndOffset = -4.1,
				timerStartOffset = -6.9,
				uuid = "e71e5f79-f047-0bdd-a627-7c6c8106a387",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"e87a1d6a-a90d-2849-90fe-254178889cda",
									true,
								},
								
								{
									"fcbc9df5-104e-6dcb-8d2e-7aa6d38bc3de",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HolySheltron",
							uuid = "3558d854-8198-9536-bdc8-caae4c40680e",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "e87a1d6a-a90d-2849-90fe-254178889cda",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "fcbc9df5-104e-6dcb-8d2e-7aa6d38bc3de",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T2 / P1",
				mechanicTime = 86.6,
				name = "[T2] Sheltron - Drainage",
				timeRange = true,
				timelineIndex = 21,
				timerEndOffset = -5.2,
				timerStartOffset = -6.6,
				uuid = "e7c1f91e-abd6-bd25-85bc-9d7138a1cdf9",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"9607c6f1-af99-8d22-bcd9-bc31014faf0b",
									true,
								},
								
								{
									"7ab2966e-8fc2-6412-8df4-353f2b390080",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Bulwark",
							uuid = "9ee83c5e-4186-ecd5-8f7f-de1aa41c290a",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "9607c6f1-af99-8d22-bcd9-bc31014faf0b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "7ab2966e-8fc2-6412-8df4-353f2b390080",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T2 / P1",
				mechanicTime = 86.6,
				name = "[T2] Bulwark - Drainage",
				timeRange = true,
				timelineIndex = 21,
				timerEndOffset = -0.7,
				timerStartOffset = -1.6,
				uuid = "7a69b76a-a832-2a40-969e-cf6f4c4d422f",
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
				name = "DPS ",
				uuid = "7da25558-5425-e978-8e4d-7501e31a9fd4",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " R1",
				uuid = "ad2b1368-d81f-f8c6-9d91-d235359529ae",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"f1c3ed55-4068-48ae-ae3f-5a4cd062e6d8",
									true,
								},
								
								{
									"1cca6b58-2c55-97ae-a266-56f21e6b195e",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_Hotbar_Dismantle",
							uuid = "477222f2-d760-c832-8899-bd5255f8a07a",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R1\" or false",
							name = "Assigned R1",
							uuid = "f1c3ed55-4068-48ae-ae3f-5a4cd062e6d8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local target = TensorCore.mGetTarget()\nreturn target and target.contentid == 9211 or false",
							name = "Living Liquid selected",
							uuid = "1cca6b58-2c55-97ae-a266-56f21e6b195e",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R1",
				mechanicTime = 91.7,
				name = "[R1] Dismantle - Late Splashes and Cascade",
				timeRange = true,
				timelineIndex = 23,
				timerEndOffset = -6.7,
				timerStartOffset = -9.3,
				uuid = "a12c6ad1-bd77-ae4f-88dd-9824c0fb78c2",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " R2",
				uuid = "465d4f69-2394-d512-a08c-989fa9413c23",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"7d874035-36b1-1091-b7ad-e1b3bcc39097",
									true,
								},
								
								{
									"7692b8e1-eb67-4368-8d0d-e1b46d545772",
									true,
								},
							},
							gVar = "ACR_TensorNuke4_Hotbar_Addle",
							uuid = "2a75f81b-d90c-a254-a260-dd4d25492bd0",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R2\" or false",
							name = "Assigned R2",
							uuid = "7d874035-36b1-1091-b7ad-e1b3bcc39097",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local target = TensorCore.mGetTarget()\nreturn target and target.contentid == 9211 or false",
							name = "Living Liquid selected",
							uuid = "7692b8e1-eb67-4368-8d0d-e1b46d545772",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R2",
				mechanicTime = 91.7,
				name = "[R2] Addle - Late Splashes and Cascade",
				timeRange = true,
				timelineIndex = 23,
				timerEndOffset = -6.9,
				timerStartOffset = -9.2,
				uuid = "1e26a84f-1574-6fc5-b6c2-c9308e3ab13f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " Reaper",
				uuid = "c6c62cc5-4187-0b02-8ddf-8096bd539864",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"e0b63cf0-fb0c-3259-80a0-6e085b1a0cbc",
									true,
								},
								
								{
									"6dc2b801-daef-fa97-a556-0507b4b8a974",
									true,
								},
							},
							gVar = "ACR_TensorReaper4_Hotbar_ArcaneCrest",
							uuid = "751dd62c-79d5-d326-a185-7f5b7ae53b0a",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif not roster or not roster.current() then return false end\nlocal slot = roster.mySlot()\nreturn slot == \"M1\" or slot == \"M2\"",
							name = "Assigned M1 or M2",
							uuid = "6dc2b801-daef-fa97-a556-0507b4b8a974",
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
							name = "Reaper",
							uuid = "e0b63cf0-fb0c-3259-80a0-6e085b1a0cbc",
							version = 3,
						},
					},
				},
				displayPath = "DPS / Reaper",
				mechanicTime = 91.7,
				name = "[RPR] Arcane Crest - Cascade 2",
				timeRange = true,
				timelineIndex = 23,
				timerEndOffset = -1,
				timerStartOffset = -3.5,
				uuid = "5011d6c3-b234-c072-a3c1-98826fccd380",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " Samurai",
				uuid = "1e147d96-4d89-15d3-822d-d84266478aab",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"1bbef787-466b-92c1-b374-859df4f9fecf",
									true,
								},
								
								{
									"1f7f1099-042d-7a6e-bed9-f82e9a239698",
									true,
								},
							},
							gVar = "ACR_TensorWeeb3_Hotbar_Tengetsu",
							uuid = "4ec7db0a-c6a4-1973-9c41-3f4d6ccc1957",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif not roster or not roster.current() then return false end\nlocal slot = roster.mySlot()\nreturn slot == \"M1\" or slot == \"M2\"",
							name = "Assigned M1 or M2",
							uuid = "1f7f1099-042d-7a6e-bed9-f82e9a239698",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "SAMURAI",
							name = "Samurai",
							uuid = "1bbef787-466b-92c1-b374-859df4f9fecf",
							version = 3,
						},
					},
				},
				displayPath = "DPS / Samurai",
				mechanicTime = 91.7,
				name = "[SAM] Third Eye - Cascade 2",
				timeRange = true,
				timelineIndex = 23,
				timerEndOffset = -1,
				timerStartOffset = -2.9,
				uuid = "31cc2992-ce3a-67c2-9182-622c67e6b9e2",
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
				name = "Warrior ",
				uuid = "3527603a-29be-7db8-b98c-1187697f23df",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T1 ",
				uuid = "76d676fe-f683-4adb-b459-1380b8c1eca9",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T1 ",
				name = " P1",
				uuid = "b1d23b2b-14b2-b06a-b386-a64a9c537825",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"182b420d-b746-5b4e-8d83-3aa5c49b7ee9",
									true,
								},
								
								{
									"2fecbf4c-5163-bfd6-8990-577729e8ff21",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_NascentFlashMouse",
							targetType = "Other Tank",
							uuid = "6da6c0df-f1a6-d7b5-95a4-f7ef8f98be9e",
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
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							name = "Warrior",
							uuid = "182b420d-b746-5b4e-8d83-3aa5c49b7ee9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "2fecbf4c-5163-bfd6-8990-577729e8ff21",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T1 / P1",
				mechanicTime = 107,
				name = "[T1] Nascent Flash - Protean 2",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = 1,
				timerStartOffset = -1,
				uuid = "09f4c593-c0da-04cf-90f7-1522a020ef41",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T2 ",
				uuid = "93b2cc5a-b3e8-6aef-aad7-a7bc5bc6d649",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T2 ",
				name = " P1",
				uuid = "7203b698-4c0e-2813-913b-03e355b896a9",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"df755be6-edd6-c15b-9314-db430a9792f3",
									true,
								},
								
								{
									"b51d8d08-d01c-bf06-b25d-c79e576d9e9d",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Bloodwhetting",
							uuid = "3095481e-53f2-de65-b966-14c4cee8ba11",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "df755be6-edd6-c15b-9314-db430a9792f3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "b51d8d08-d01c-bf06-b25d-c79e576d9e9d",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T2 / P1",
				mechanicTime = 107,
				name = "[T2] Raw Intuition - Protean 2",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = 1,
				timerStartOffset = -1,
				uuid = "6c79fdb7-634d-8c20-921f-8e35a41d10e0",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker ",
				uuid = "dffbe945-10e8-4e43-8406-8d8cbb399792",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T1 ",
				uuid = "6b2f5013-2444-e947-bc1f-da394b0a2154",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T1 ",
				name = " P1",
				uuid = "61d5cb7b-5ec0-8ba4-859e-8220acaa154e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"febb5a69-cf50-3f93-bf05-c4599cbe0e02",
									true,
								},
								
								{
									"2e070d66-e2ac-4aa0-b863-8a8ea681ea25",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumMouse",
							targetType = "Other Tank",
							uuid = "0bc1c136-738d-fff2-ac8b-a5dda7a81ecf",
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
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "febb5a69-cf50-3f93-bf05-c4599cbe0e02",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "2e070d66-e2ac-4aa0-b863-8a8ea681ea25",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T1 / P1",
				mechanicTime = 107,
				name = "[T1] Heart of Stone - Protean 2",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = 1,
				timerStartOffset = -1,
				uuid = "7b006354-01c1-c38c-a86e-571dc7d29257",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T2 ",
				uuid = "13113417-11f2-53f0-b00f-47ce83852e51",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T2 ",
				name = " P1",
				uuid = "e1f134ab-4b04-ba49-85d8-f1d09d3d627f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"93526c08-d54e-7684-9ca1-b46997e68af0",
									true,
								},
								
								{
									"70813617-6972-aab5-87f3-e7451a3ff0b2",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "df485444-88b0-c37d-bf78-1d391012f504",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "93526c08-d54e-7684-9ca1-b46997e68af0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "70813617-6972-aab5-87f3-e7451a3ff0b2",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T2 / P1",
				mechanicTime = 107,
				name = "[T2] Heart of Stone - Protean 2",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = 1,
				timerStartOffset = -1,
				uuid = "19de9801-52ad-0c5c-9a93-2767d145ad4e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight ",
				uuid = "971ec7af-4c78-241a-b78d-4d83b57d1b89",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T1 ",
				uuid = "e4c3cc2d-e074-44fa-8df8-b63e857e90c0",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T1 ",
				name = " P1",
				uuid = "7211a226-922a-a4c3-84dc-1949ae8c2c22",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"7fbd7176-4491-2f44-b5b1-859967c8cb14",
									true,
								},
								
								{
									"2eb6552c-5ba4-093b-8774-0439c161bc84",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightMouse",
							targetType = "Other Tank",
							uuid = "44501a44-6ba7-54e7-a723-d061985cf88c",
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
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "7fbd7176-4491-2f44-b5b1-859967c8cb14",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "2eb6552c-5ba4-093b-8774-0439c161bc84",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T1 / P1",
				mechanicTime = 107,
				name = "[T1] The Blackest Night - Protean 2",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = 1,
				timerStartOffset = -1,
				uuid = "31e1dd72-5c8c-0d1b-ad4b-101e63ca3183",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T2 ",
				uuid = "af20e54b-159f-2f42-af06-784d309e1856",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T2 ",
				name = " P1",
				uuid = "169404f7-679a-f968-b98d-9395c5bc4995",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"89deff79-8645-3c9c-b078-626a7e15e843",
									true,
								},
								
								{
									"07948357-7e31-0a95-8a37-89c220f1acb2",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf",
							uuid = "218fa468-7b25-5ced-923b-ba6157a2b3ac",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "89deff79-8645-3c9c-b078-626a7e15e843",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "07948357-7e31-0a95-8a37-89c220f1acb2",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T2 / P1",
				mechanicTime = 107,
				name = "[T2] The Blackest Night - Protean 2",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = 1,
				timerStartOffset = -1,
				uuid = "2455ebc1-8bf6-8ef6-9899-697b090f1825",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin ",
				uuid = "3ff08d1f-397a-eae9-bdd4-9f9507fbca8c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T1 ",
				uuid = "23eb36ea-261d-bb53-9982-f607691cb8dc",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T1 ",
				name = " P1",
				uuid = "18faccb4-3b9e-4183-ab81-ba351d8859a7",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"43883fed-d9fd-a793-ad24-4ed625017dc0",
									true,
								},
								
								{
									"a1278f6c-8ca1-467f-ba17-29411c2de7ea",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_InterventionMouse",
							targetType = "Other Tank",
							uuid = "9ff1bc95-28e5-cfcc-956c-a030ccd63540",
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
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "43883fed-d9fd-a793-ad24-4ed625017dc0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "a1278f6c-8ca1-467f-ba17-29411c2de7ea",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T1 / P1",
				mechanicTime = 107,
				name = "[T1] Intervention - Protean 2",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = 1,
				timerStartOffset = -1,
				uuid = "8b2ac3b6-b887-d415-8133-8ba2e0360389",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T2 ",
				uuid = "7a85b2a3-ea7c-2675-82ec-a3193ac8f26c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T2 ",
				name = " P1",
				uuid = "1376da4f-603a-c533-871b-ec37f22e2d28",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"0ce98fca-11f5-8817-9fd6-ec0d13b195ed",
									true,
								},
								
								{
									"2341ea7e-8594-1761-8898-012853d5991f",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HolySheltron",
							uuid = "5dc58ca6-c33a-471c-80de-cb8d4317e879",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "0ce98fca-11f5-8817-9fd6-ec0d13b195ed",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "2341ea7e-8594-1761-8898-012853d5991f",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T2 / P1",
				mechanicTime = 107,
				name = "[T2] Sheltron - Protean 2",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = 1,
				timerStartOffset = -1,
				uuid = "2e67b8e0-57df-e391-8f79-ffe9a1a1afde",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DPS ",
				uuid = "cad15522-2ce1-f64b-91b6-031d4cb44c23",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " M1",
				uuid = "0910bb12-5209-3826-8565-22f6b51bf62e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"d084a1fd-c0a5-8af7-8076-293f0ac5458c",
									true,
								},
								
								{
									"3472c955-a86e-ab33-98db-e52efcb60842",
									true,
								},
							},
							gVar = "ACR_TensorViper3_Hotbar_Feint",
							uuid = "95b0ec30-2396-d62b-b763-336b3005e0b0",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"M1\" or false",
							name = "Assigned M1",
							uuid = "d084a1fd-c0a5-8af7-8076-293f0ac5458c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local target = TensorCore.mGetTarget()\nreturn target and target.contentid == 9211 or false",
							name = "Living Liquid selected",
							uuid = "3472c955-a86e-ab33-98db-e52efcb60842",
							version = 3,
						},
					},
				},
				displayPath = "DPS / M1",
				mechanicTime = 107,
				name = "[M1] Feint - Protean 2",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = 1,
				timerStartOffset = -0.9,
				uuid = "67789805-3e34-ead5-a8a3-6511e496b259",
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
				name = "Gunbreaker ",
				uuid = "de8d6553-8fd8-8b83-9351-3cd94cc1a149",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T1 ",
				uuid = "a515a6b8-2b13-1b25-80e1-bfbb5cacc7f1",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T1 ",
				name = " P2",
				uuid = "3808974e-56a0-16c5-9c11-6039147db3a1",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"d4379d3b-0d88-2428-a824-3e44cbdecb5e",
									true,
								},
								
								{
									"b411e2ed-c30a-c2d0-9491-b7fce31a9350",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "3e217395-7e1d-03e0-9883-118989c35325",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "d4379d3b-0d88-2428-a824-3e44cbdecb5e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "b411e2ed-c30a-c2d0-9491-b7fce31a9350",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T1 / P2",
				mechanicTime = 226.1,
				name = "[T1] Heart of Light - J Kick",
				timeRange = true,
				timelineIndex = 57,
				timerEndOffset = -1.1,
				timerStartOffset = -4.1,
				uuid = "8dce7737-bee9-fb92-847c-edf6c69dcc78",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T2 ",
				uuid = "36368be4-f4c3-c17a-a434-cd1ab6871304",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T2 ",
				name = " P2",
				uuid = "02d5d078-df3e-c982-9d48-2e72823f9c78",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"879af38d-5a74-8e7a-b0e7-27c75c26839a",
									true,
								},
								
								{
									"a252001b-4f8d-3a55-bd7c-b126b145aa0d",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "b9df332d-ebb2-ba7f-bb44-2ddf9ea11e69",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "879af38d-5a74-8e7a-b0e7-27c75c26839a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "a252001b-4f8d-3a55-bd7c-b126b145aa0d",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T2 / P2",
				mechanicTime = 226.1,
				name = "[T2] Heart of Light - J Kick",
				timeRange = true,
				timelineIndex = 57,
				timerEndOffset = -1.1,
				timerStartOffset = -4.1,
				uuid = "6a0fcf48-c5c1-926a-9bba-07233346fe5d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight ",
				uuid = "4259aa1d-e824-131a-bdb5-69dce5e18a2f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T1 ",
				uuid = "86d1a46d-4df0-fb40-bac1-415882bc9710",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T1 ",
				name = " P2",
				uuid = "0771d0c7-3e6b-00b2-9132-30df830717a7",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"f567f00d-c1cf-71e0-ac1e-f86e9ee60573",
									true,
								},
								
								{
									"d19cf366-4b9d-5338-a0fd-38ba7eeb71f6",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_DarkMissionary",
							uuid = "44da548d-5d69-22db-ab03-1d9aad25685a",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "f567f00d-c1cf-71e0-ac1e-f86e9ee60573",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "d19cf366-4b9d-5338-a0fd-38ba7eeb71f6",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T1 / P2",
				mechanicTime = 226.1,
				name = "[T1] Dark Missionary - J Kick",
				timeRange = true,
				timelineIndex = 57,
				timerEndOffset = -1.1,
				timerStartOffset = -4.1,
				uuid = "f3a802f4-c74e-2d7e-95ec-76aaa09ce704",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T2 ",
				uuid = "03f06779-645c-7ce9-ad6f-4c5b750477af",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T2 ",
				name = " P2",
				uuid = "c44c2d63-9af6-2fdc-9531-74221c548159",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"db13f6d1-a879-7b3c-a997-1a1ba04cae26",
									true,
								},
								
								{
									"dc03a5b2-f962-00de-8097-293460410468",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_DarkMissionary",
							uuid = "74a3ad62-445e-2e60-9422-5d6644ebc6fe",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "db13f6d1-a879-7b3c-a997-1a1ba04cae26",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "dc03a5b2-f962-00de-8097-293460410468",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T2 / P2",
				mechanicTime = 226.1,
				name = "[T2] Dark Missionary - J Kick",
				timeRange = true,
				timelineIndex = 57,
				timerEndOffset = -1.1,
				timerStartOffset = -4.1,
				uuid = "d4c92e96-fb92-2413-98db-d85adc191aa1",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DPS ",
				uuid = "2cee2966-d3f0-2ba4-8728-5bddbe95b4a6",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " Reaper",
				uuid = "ee5c6ba4-a7e3-fa24-afa6-319e6a9014d0",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"941626e2-b254-db1c-9a31-b32eced8b319",
									true,
								},
								
								{
									"9e87fb2f-672c-261a-b3b5-ca9ef78c0dd8",
									true,
								},
							},
							gVar = "ACR_TensorReaper4_Hotbar_ArcaneCrest",
							uuid = "9390735d-a9e5-49e5-9869-5b200bf3bd3e",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif not roster or not roster.current() then return false end\nlocal slot = roster.mySlot()\nreturn slot == \"M1\" or slot == \"M2\"",
							name = "Assigned M1 or M2",
							uuid = "9e87fb2f-672c-261a-b3b5-ca9ef78c0dd8",
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
							name = "Reaper",
							uuid = "941626e2-b254-db1c-9a31-b32eced8b319",
							version = 3,
						},
					},
				},
				displayPath = "DPS / Reaper",
				mechanicTime = 226.1,
				name = "[RPR] Arcane Crest - J Kick",
				timeRange = true,
				timelineIndex = 57,
				timerEndOffset = -1.1,
				timerStartOffset = -3.4,
				uuid = "59da94fe-a2cb-14ac-9671-85070139e318",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " Samurai",
				uuid = "e3bbf65b-3130-ad5f-acbd-02806e011a65",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"35cfe14c-833d-2fee-a9b3-2be6584e7a55",
									true,
								},
								
								{
									"c6c3868b-39ec-06de-ab0f-0fbd29c24444",
									true,
								},
							},
							gVar = "ACR_TensorWeeb3_Hotbar_Tengetsu",
							uuid = "fba278ae-9192-0d1f-9c7e-513fde483534",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif not roster or not roster.current() then return false end\nlocal slot = roster.mySlot()\nreturn slot == \"M1\" or slot == \"M2\"",
							name = "Assigned M1 or M2",
							uuid = "c6c3868b-39ec-06de-ab0f-0fbd29c24444",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "SAMURAI",
							name = "Samurai",
							uuid = "35cfe14c-833d-2fee-a9b3-2be6584e7a55",
							version = 3,
						},
					},
				},
				displayPath = "DPS / Samurai",
				mechanicTime = 226.1,
				name = "[SAM] Third Eye - J Kick",
				timeRange = true,
				timelineIndex = 57,
				timerEndOffset = -1,
				timerStartOffset = -3,
				uuid = "636af8f8-9a85-57a1-aa21-1d34d2f2e10e",
				version = 2,
			},
		},
	},
	[59] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior ",
				uuid = "91407e96-e182-0e1f-ba78-9b63d96a4772",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T2 ",
				uuid = "6d98525e-1c0e-0219-9a91-2854e2c20328",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T2 ",
				name = " P2",
				uuid = "2ca846d6-17ca-be78-937b-df8cfe368817",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"93b9d0e1-837c-329b-a57b-daabf7c8be60",
									true,
								},
								
								{
									"cee15e8f-e0cf-bcfc-aa36-d839d6e2aee4",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_NascentFlashMouse",
							targetType = "Other Tank",
							uuid = "e9b551af-c7a4-9258-a084-bd3c921f12af",
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
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							name = "Warrior",
							uuid = "93b9d0e1-837c-329b-a57b-daabf7c8be60",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "cee15e8f-e0cf-bcfc-aa36-d839d6e2aee4",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T2 / P2",
				mechanicTime = 238.3,
				name = "[T2] Nascent Flash - Whirlwind 1",
				timeRange = true,
				timelineIndex = 59,
				timerEndOffset = -3.3,
				timerStartOffset = -4.8,
				uuid = "c8085b8c-27b7-bc88-b77b-8f7eacaa7a5c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a0d96985-a07b-0bf9-90ff-0f10ee2bb7bd",
									true,
								},
								
								{
									"a5a4340d-2dd6-3c27-864f-672242fc313b",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Reprisal",
							uuid = "821f6779-ec20-97a3-b117-c487994c65a0",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "a0d96985-a07b-0bf9-90ff-0f10ee2bb7bd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "a5a4340d-2dd6-3c27-864f-672242fc313b",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T2 / P2",
				mechanicTime = 238.3,
				name = "[T2] Reprisal - Whirlwind 1",
				timeRange = true,
				timelineIndex = 59,
				timerEndOffset = -0.9,
				timerStartOffset = -3.3,
				uuid = "0c5f3f11-3a2d-d231-99d3-84c5910e1abb",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker ",
				uuid = "d2a4ade1-6d7f-fde3-9585-59795cec106c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T2 ",
				uuid = "3610a870-e8f9-8b1b-a4f9-8d2f8f8fb353",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T2 ",
				name = " P2",
				uuid = "c8c49d38-de8d-bf97-8716-b1c0d03a87d9",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"bef1c499-ca29-30ef-b1ce-a4db5ff6a64f",
									true,
								},
								
								{
									"5a78428c-a553-edbc-b654-d3f4ed00a0ac",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumMouse",
							targetType = "Other Tank",
							uuid = "4dbf45ab-48d3-4ce7-9380-cd187e615773",
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
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "bef1c499-ca29-30ef-b1ce-a4db5ff6a64f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "5a78428c-a553-edbc-b654-d3f4ed00a0ac",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T2 / P2",
				mechanicTime = 238.3,
				name = "[T2] Heart of Stone - Whirlwind 1",
				timeRange = true,
				timelineIndex = 59,
				timerEndOffset = -3.3,
				timerStartOffset = -4.8,
				uuid = "f3229636-933c-e8dd-8c19-4d4213a4b699",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"b8ea5339-93d5-2460-9d62-aeb434274ec6",
									true,
								},
								
								{
									"7966d637-3c9d-af11-951a-9c24001590ee",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "3fd3f896-da9c-cf60-ace6-5d1a1bf6a6d5",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "b8ea5339-93d5-2460-9d62-aeb434274ec6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "7966d637-3c9d-af11-951a-9c24001590ee",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T2 / P2",
				mechanicTime = 238.3,
				name = "[T2] Reprisal - Whirlwind 1",
				timeRange = true,
				timelineIndex = 59,
				timerEndOffset = -0.9,
				timerStartOffset = -3.3,
				uuid = "49e1accc-232d-ce40-9217-deb024927eb9",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight ",
				uuid = "9d5fb43e-97b5-80db-bd93-c809dace3a1a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T2 ",
				uuid = "1fc41908-f0b4-5cab-8338-17b94937d8c0",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T2 ",
				name = " P2",
				uuid = "91b83363-92e2-3ed2-8169-d428571f8cc4",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"7780cb0d-8167-b3b2-87c9-e31d38b83cdc",
									true,
								},
								
								{
									"28bdefa4-d85d-6323-aec2-4215b7828575",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightMouse",
							targetType = "Other Tank",
							uuid = "a1058903-c274-054a-9bae-d69f258a2270",
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
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "7780cb0d-8167-b3b2-87c9-e31d38b83cdc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "28bdefa4-d85d-6323-aec2-4215b7828575",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T2 / P2",
				mechanicTime = 238.3,
				name = "[T2] The Blackest Night - Whirlwind 1",
				timeRange = true,
				timelineIndex = 59,
				timerEndOffset = -3.3,
				timerStartOffset = -4.8,
				uuid = "59749717-f725-b700-857d-126fd6fe7f88",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"bcdd53f4-a2bf-acf6-82d4-4f3f689d18c0",
									true,
								},
								
								{
									"f442068d-48dc-d639-9a37-d984eb736b2f",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_Reprisal",
							uuid = "2e5849df-a6e6-7413-9489-bc7850e8c4bd",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "bcdd53f4-a2bf-acf6-82d4-4f3f689d18c0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "f442068d-48dc-d639-9a37-d984eb736b2f",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T2 / P2",
				mechanicTime = 238.3,
				name = "[T2] Reprisal - Whirlwind 1",
				timeRange = true,
				timelineIndex = 59,
				timerEndOffset = -0.9,
				timerStartOffset = -3.3,
				uuid = "bae7cd4f-4e1e-af75-922a-91fad9a0b287",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin ",
				uuid = "ac16b72e-6bd5-0b41-aa4a-1597b8c1f877",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T2 ",
				uuid = "c6e79380-da15-2bf0-ad8a-6ebdd2a1681e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T2 ",
				name = " P2",
				uuid = "4ab2bada-7058-988b-9902-16ee804391f5",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"5990d55b-01a3-b003-93e8-add37e44b33c",
									true,
								},
								
								{
									"f9d47ca1-550b-e342-9684-559ba5ff5436",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HolySheltron",
							uuid = "c117204d-719c-17fb-b7ea-9480f5ffaf3e",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "5990d55b-01a3-b003-93e8-add37e44b33c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "f9d47ca1-550b-e342-9684-559ba5ff5436",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T2 / P2",
				mechanicTime = 238.3,
				name = "[T2] Sheltron - Whirlwind 1",
				timeRange = true,
				timelineIndex = 59,
				timerEndOffset = -3.3,
				timerStartOffset = -4.8,
				uuid = "91cb4cca-ac9b-d64f-a8ef-07b4844d3022",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"f57db787-b837-91da-bf39-f17082bf2af5",
									true,
								},
								
								{
									"105845e4-e709-dfd2-bd21-e4333fed48c0",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Reprisal",
							uuid = "7af2fb91-e685-b773-b46e-392954df30c7",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "f57db787-b837-91da-bf39-f17082bf2af5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "105845e4-e709-dfd2-bd21-e4333fed48c0",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T2 / P2",
				mechanicTime = 238.3,
				name = "[T2] Reprisal - Whirlwind 1",
				timeRange = true,
				timelineIndex = 59,
				timerEndOffset = -0.9,
				timerStartOffset = -3.3,
				uuid = "9d8ae046-6c56-a61b-abe0-582c84d4c532",
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
				name = "Warrior ",
				uuid = "2414db6f-da4b-e789-9fb0-c338e306ace6",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T1 ",
				uuid = "9bc709f3-03a9-7d40-9972-de12188a9257",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T1 ",
				name = " P2",
				uuid = "00df827b-b83d-c1ea-ba30-4c4541fe41cc",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"4763068b-737d-a451-9325-bb6c36556bfa",
									true,
								},
								
								{
									"a894f296-0e8d-5eac-925c-ba920324fdd4",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Rampart",
							uuid = "ae8132a2-7620-1eb7-bf2e-7257d9bc748f",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "4763068b-737d-a451-9325-bb6c36556bfa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "a894f296-0e8d-5eac-925c-ba920324fdd4",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T1 / P2",
				mechanicTime = 262.5,
				name = "[T1] Rampart - Water 1 via Photon",
				timeRange = true,
				timelineIndex = 65,
				timerEndOffset = -0.7,
				timerStartOffset = -3.3,
				uuid = "adeb7072-15e9-0d25-ae6d-26bb679ade42",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker ",
				uuid = "761e7a27-3f62-6df9-8a21-3e72e8b48331",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T1 ",
				uuid = "0953c8ed-5978-918c-8fa7-ad348f777675",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T1 ",
				name = " P2",
				uuid = "1b091df5-bc50-c64b-90fa-0dc1f586d6f1",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"f1d9acc5-39a9-5550-ae9b-075d91722e2b",
									true,
								},
								
								{
									"07c9c07a-8cdb-b5e5-af5a-80a585479916",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Rampart",
							uuid = "a637177d-74d0-cb9f-8b40-ddde421ac8ca",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "f1d9acc5-39a9-5550-ae9b-075d91722e2b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "07c9c07a-8cdb-b5e5-af5a-80a585479916",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T1 / P2",
				mechanicTime = 262.5,
				name = "[T1] Rampart - Water 1 via Photon",
				timeRange = true,
				timelineIndex = 65,
				timerEndOffset = -0.7,
				timerStartOffset = -3.3,
				uuid = "ce45677d-6278-64f2-81b9-b53bc3d3e533",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight ",
				uuid = "a255d36e-888a-7767-a881-89d182d0ddd6",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T1 ",
				uuid = "3308666b-aabe-f6a2-adb7-1d667c8a0d46",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T1 ",
				name = " P2",
				uuid = "7052c12c-5e24-f576-940b-4ebf9e8053af",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"ececed57-ce8e-fdb6-8863-e4d74f3abcbd",
									true,
								},
								
								{
									"e23222ad-d149-cf69-b741-1413f4ffd1e9",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_Rampart",
							uuid = "0139e919-f835-067c-aab9-4731ca4d62df",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "ececed57-ce8e-fdb6-8863-e4d74f3abcbd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "e23222ad-d149-cf69-b741-1413f4ffd1e9",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T1 / P2",
				mechanicTime = 262.5,
				name = "[T1] Rampart - Water 1 via Photon",
				timeRange = true,
				timelineIndex = 65,
				timerEndOffset = -0.7,
				timerStartOffset = -3.3,
				uuid = "d52497f1-9b64-77bb-a308-8ec5524bec12",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin ",
				uuid = "dedaab2a-91ab-b89e-a8f5-06ef172fe66a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T1 ",
				uuid = "59fb95ba-29d1-6753-a091-77e47b63212a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T1 ",
				name = " P2",
				uuid = "9578f576-afd1-956c-b660-4ce4c4459c5f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"d56d8240-7a07-f83d-b026-24d7559dd5e5",
									true,
								},
								
								{
									"9eda7288-4046-28fc-8877-e08dd83bb27e",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Rampart",
							uuid = "8a45f58c-1f9a-66b3-8ff4-ae4aef82a12e",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "d56d8240-7a07-f83d-b026-24d7559dd5e5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "9eda7288-4046-28fc-8877-e08dd83bb27e",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T1 / P2",
				mechanicTime = 262.5,
				name = "[T1] Rampart - Water 1 via Photon",
				timeRange = true,
				timelineIndex = 65,
				timerEndOffset = -0.7,
				timerStartOffset = -3.3,
				uuid = "e12e822e-4919-5fb9-8747-ed96977e8a66",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DPS ",
				uuid = "21633833-d7b5-6dc8-993a-e583c2f5deed",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " R1",
				uuid = "9b93aade-3f3e-29f5-927c-e16472f0ea7f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"4f645738-21ee-02e0-bd2f-33bdb38e3c53",
									true,
								},
							},
							gVar = "ACR_TensorRequiem4_Hotbar_NaturesMinne",
							uuid = "05555c3a-2fb2-2144-9321-26f5f64f7ee1",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R1\" or false",
							name = "Assigned R1",
							uuid = "4f645738-21ee-02e0-bd2f-33bdb38e3c53",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R1",
				mechanicTime = 262.5,
				name = "[R1] Nature's Minne - First Photon",
				timeRange = true,
				timelineIndex = 65,
				timerEndOffset = -0.8,
				timerStartOffset = -3,
				uuid = "6196511f-73dc-4b94-b499-e7224437d83f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"d3f8b199-4dd2-b3ff-b1ff-c1b334f1d15a",
									true,
								},
							},
							gVar = "ACR_RikuDNC3_Hotbar_CuringWaltz",
							uuid = "9d25d3c7-da9c-495d-9a89-4ac2be2bc2eb",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R1\" or false",
							name = "Assigned R1",
							uuid = "d3f8b199-4dd2-b3ff-b1ff-c1b334f1d15a",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R1",
				enabled = false,
				mechanicTime = 262.5,
				name = "[R1] CuringWaltz - After first Photon",
				timeRange = true,
				timelineIndex = 65,
				timerEndOffset = 2.5,
				timerStartOffset = 0.7,
				uuid = "dec12fa5-6ad5-7c83-8cac-a96d0d448ab9",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " Monk",
				uuid = "0805cbc8-0f07-84d1-b36b-b259a7852b51",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"2e059152-57ab-95a8-bd57-ad40b2c975bd",
									true,
								},
								
								{
									"392a0c94-ee29-b8c6-a2b8-4da7b86a8dbe",
									true,
								},
							},
							gVar = "ACR_RikuMNK3_Hotbar_Mantra",
							uuid = "296f00d2-9d76-6d33-8f11-2e6d3ab7bc13",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif not roster or not roster.current() then return false end\nlocal slot = roster.mySlot()\nreturn slot == \"M1\" or slot == \"M2\"",
							name = "Assigned M1 or M2",
							uuid = "392a0c94-ee29-b8c6-a2b8-4da7b86a8dbe",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MONK",
							name = "Monk",
							uuid = "2e059152-57ab-95a8-bd57-ad40b2c975bd",
							version = 3,
						},
					},
				},
				displayPath = "DPS / Monk",
				mechanicTime = 262.5,
				name = "[MNK] Mantra - First Photon",
				timeRange = true,
				timelineIndex = 65,
				timerEndOffset = -0.8,
				timerStartOffset = -3,
				uuid = "1dfb8b5e-a677-4f72-805a-0046c0e6fe2f",
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
				name = "Warrior ",
				uuid = "a27ada54-fa8e-8900-8303-70d85fdc9b7b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T1 ",
				uuid = "ffe22005-b753-dc2e-8d4e-ac93a6c298a8",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T1 ",
				name = " P2",
				uuid = "66dd1d0e-31fb-f57b-b0d1-1bc1055f66b7",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"d1b47ecf-4ca9-9636-be7f-a60d57065d05",
									true,
								},
								
								{
									"b658d7e0-1733-3ff0-9a97-6d2faecdd688",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Bloodwhetting",
							uuid = "293019e8-1838-c6a2-8639-ebbc3325ac51",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "d1b47ecf-4ca9-9636-be7f-a60d57065d05",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "b658d7e0-1733-3ff0-9a97-6d2faecdd688",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T1 / P2",
				mechanicTime = 277.3,
				name = "[T1] Raw Intuition - Water 1",
				timeRange = true,
				timelineIndex = 67,
				timerEndOffset = -1.7,
				timerStartOffset = -4.5,
				uuid = "3566cf4e-646f-a707-8fed-4dd964c0e4b1",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"0190b204-1802-ed5d-9b86-5a3df91f3553",
									true,
								},
								
								{
									"17d87386-334a-51ad-bb75-e1c71ddf361f",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Reprisal",
							uuid = "5cb4f0b4-e7f1-8f20-a49b-cf2961001d18",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "0190b204-1802-ed5d-9b86-5a3df91f3553",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "17d87386-334a-51ad-bb75-e1c71ddf361f",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T1 / P2",
				mechanicTime = 277.3,
				name = "[T1] Reprisal - Water 1",
				timeRange = true,
				timelineIndex = 67,
				timerEndOffset = -0.9,
				timerStartOffset = -2.9,
				uuid = "488e2ef0-d36f-f633-81d1-22a97293abe4",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker ",
				uuid = "393f814b-66e2-616f-8b91-c1b06147d7ad",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T1 ",
				uuid = "4c62381a-a4f4-2a9d-84f6-9b1d4c1177db",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T1 ",
				name = " P2",
				uuid = "da4d88fb-547e-95fb-992c-5358267d474c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"5db91058-a356-795d-a3a3-76a388d7aa9d",
									true,
								},
								
								{
									"28108251-90e7-7e1b-b5f3-2ec7d21f4b87",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "599ce8ce-4e47-cd05-8a97-85137a6bb8e2",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "5db91058-a356-795d-a3a3-76a388d7aa9d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "28108251-90e7-7e1b-b5f3-2ec7d21f4b87",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T1 / P2",
				mechanicTime = 277.3,
				name = "[T1] Heart of Stone - Water 1",
				timeRange = true,
				timelineIndex = 67,
				timerEndOffset = -1.7,
				timerStartOffset = -4.5,
				uuid = "91e20716-e0e3-2f42-959b-9573dbb68ae8",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"d7c4ba44-fcbb-eb56-9fec-19bc2c50f12d",
									true,
								},
								
								{
									"e412cd33-f940-28cd-8684-ce916974f3bb",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "96dc6158-c323-ee95-af34-661d24479f26",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "d7c4ba44-fcbb-eb56-9fec-19bc2c50f12d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "e412cd33-f940-28cd-8684-ce916974f3bb",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T1 / P2",
				mechanicTime = 277.3,
				name = "[T1] Reprisal - Water 1",
				timeRange = true,
				timelineIndex = 67,
				timerEndOffset = -0.9,
				timerStartOffset = -2.9,
				uuid = "6d8a8f6d-4566-e0e8-a7f4-23f10c29a346",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight ",
				uuid = "82e3c94c-ec5f-d378-9122-3a6641bb4c05",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T1 ",
				uuid = "37e0489a-1169-cef8-994a-67c6bcbb417f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T1 ",
				name = " P2",
				uuid = "2f4543b3-0d59-0a75-b20b-36e12de4e3b1",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"34e153c8-6029-1eee-828f-f5ae510d0904",
									true,
								},
								
								{
									"a8e6f1ea-421a-3f31-8327-6df94c3abe2a",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf",
							uuid = "54b2c977-64ac-4f70-9bd8-108d7b9a8cde",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "34e153c8-6029-1eee-828f-f5ae510d0904",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "a8e6f1ea-421a-3f31-8327-6df94c3abe2a",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T1 / P2",
				mechanicTime = 277.3,
				name = "[T1] The Blackest Night - Water 1",
				timeRange = true,
				timelineIndex = 67,
				timerEndOffset = -1.7,
				timerStartOffset = -4.5,
				uuid = "6bbf62ef-4270-fc31-af73-66a006ecce61",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"43d68169-2d2c-8675-ad42-75ab98c48981",
									true,
								},
								
								{
									"4da3f0aa-361c-13e1-bb66-207d35d41a31",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_Reprisal",
							uuid = "ae98fa91-01b1-dfc1-b3ce-251eb5732dbd",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "43d68169-2d2c-8675-ad42-75ab98c48981",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "4da3f0aa-361c-13e1-bb66-207d35d41a31",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T1 / P2",
				mechanicTime = 277.3,
				name = "[T1] Reprisal - Water 1",
				timeRange = true,
				timelineIndex = 67,
				timerEndOffset = -0.9,
				timerStartOffset = -2.9,
				uuid = "95604922-99d5-378e-8fa4-4f1c058b7734",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin ",
				uuid = "132944e9-1168-93aa-9a62-2256a82f1e51",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T1 ",
				uuid = "3013d969-6ae0-7c99-9eef-83bccaa964f2",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T1 ",
				name = " P2",
				uuid = "7fbe9d7e-06bf-53c4-bde3-4175fdcbe40c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"b2d68fbd-c92d-570f-89eb-cd20db59bf92",
									true,
								},
								
								{
									"b13d91dd-5ddb-1015-83b5-857af0715eab",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HolySheltron",
							uuid = "60e9a81d-3bae-1132-a801-0fdd705e2a9f",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "b2d68fbd-c92d-570f-89eb-cd20db59bf92",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "b13d91dd-5ddb-1015-83b5-857af0715eab",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T1 / P2",
				mechanicTime = 277.3,
				name = "[T1] Sheltron - Water 1",
				timeRange = true,
				timelineIndex = 67,
				timerEndOffset = -1.7,
				timerStartOffset = -4.5,
				uuid = "f931f8bf-cca5-1c94-be23-e71aff438c73",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"21dfc2b4-b7fa-fe90-bc75-e9266cb26b51",
									true,
								},
								
								{
									"5daddd60-b554-ba15-96c4-907be273a233",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Reprisal",
							uuid = "274a4a72-ae24-47cf-af33-62ba270d9e35",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "21dfc2b4-b7fa-fe90-bc75-e9266cb26b51",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "5daddd60-b554-ba15-96c4-907be273a233",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T1 / P2",
				mechanicTime = 277.3,
				name = "[T1] Reprisal - Water 1",
				timeRange = true,
				timelineIndex = 67,
				timerEndOffset = -0.9,
				timerStartOffset = -2.9,
				uuid = "1c7848ba-26af-b801-b3a6-6415d58d1a19",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DPS ",
				uuid = "26792a7d-c71f-ab77-b824-9beb6d84bef8",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " M1",
				uuid = "dcd4a5ce-a0b7-97a1-b912-29750a1c7dbc",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"5b91ff11-f318-c608-b025-44f8f4d13823",
									true,
								},
								
								{
									"d099592e-5f03-e5cd-ab0d-ca01fadcb2a7",
									true,
								},
							},
							gVar = "ACR_TensorViper3_Hotbar_Feint",
							uuid = "02529ade-15fe-ce1a-9fed-f857d3a0db63",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"M1\" or false",
							name = "Assigned M1",
							uuid = "5b91ff11-f318-c608-b025-44f8f4d13823",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local target = TensorCore.mGetTarget()\nreturn target and target.contentid == 9216 or false",
							name = "Brute Justice selected",
							uuid = "d099592e-5f03-e5cd-ab0d-ca01fadcb2a7",
							version = 3,
						},
					},
				},
				displayPath = "DPS / M1",
				mechanicTime = 277.3,
				name = "[M1] Feint - Water 1",
				timeRange = true,
				timelineIndex = 67,
				timerEndOffset = -1.3,
				timerStartOffset = -4.3,
				uuid = "9f1aad94-c6ef-2d88-86e8-e99465123001",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " Samurai",
				uuid = "53b78fdc-90aa-fbf0-b433-532b11052d14",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"7c38aaa7-8659-cc0e-bbe9-13fc3f8a5058",
									true,
								},
								
								{
									"f14effd4-9857-ba49-868e-fe08a55a1a36",
									true,
								},
							},
							gVar = "ACR_TensorWeeb3_Hotbar_Tengetsu",
							uuid = "3d7dac1e-3e04-a42b-bc75-89fd95b8b3de",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif not roster or not roster.current() then return false end\nlocal slot = roster.mySlot()\nreturn slot == \"M1\" or slot == \"M2\"",
							name = "Assigned M1 or M2",
							uuid = "f14effd4-9857-ba49-868e-fe08a55a1a36",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "SAMURAI",
							name = "Samurai",
							uuid = "7c38aaa7-8659-cc0e-bbe9-13fc3f8a5058",
							version = 3,
						},
					},
				},
				displayPath = "DPS / Samurai",
				mechanicTime = 277.3,
				name = "[SAM] Third Eye - Water 1",
				timeRange = true,
				timelineIndex = 67,
				timerEndOffset = -1,
				timerStartOffset = -3,
				uuid = "dd728f29-08d7-8621-97a5-79125566802c",
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
				name = "Warrior ",
				uuid = "88820af6-963f-a01a-90b1-1831f17489fe",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T1 ",
				uuid = "d84f2354-c76a-23fd-9b23-6db9840436e0",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T1 ",
				name = " P2",
				uuid = "b33fbc00-f21b-0611-bf30-7ec6ec257222",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"247aa9e5-b0a0-1d5e-834c-8c4da25f4f0c",
									true,
								},
								
								{
									"4b9b1d93-8588-4342-bc0e-b96b633a3477",
									true,
								},
								
								{
									"7dc69d69-edc7-4647-9c02-79d7b038fa9b",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_ThrillOfBattle",
							uuid = "22dff9d7-a340-4604-b795-0ebdc0a6594e",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "247aa9e5-b0a0-1d5e-834c-8c4da25f4f0c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "4b9b1d93-8588-4342-bc0e-b96b633a3477",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local player = TensorCore.mGetPlayer()\nlocal target = data.teaLpduMitsIceTarget\nreturn player and target and target == player.id or false",
							name = "Ice Missile on MT",
							uuid = "7dc69d69-edc7-4647-9c02-79d7b038fa9b",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T1 / P2",
				mechanicTime = 290.6,
				name = "[T1] Thrill of Battle - Mines with Ice Missile",
				timeRange = true,
				timelineIndex = 69,
				timerEndOffset = 0.6,
				timerStartOffset = -2.6,
				uuid = "bb0d72ca-4eaa-4ced-a076-22b82ef2cb45",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T2 ",
				uuid = "3a8f0c20-da6c-b883-b4cc-d5f749a0379a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T2 ",
				name = " P2",
				uuid = "2046461b-bc54-b967-b4ca-f7dd54fda534",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"1aab90d7-ef84-b307-a612-3487e695c73a",
									true,
								},
								
								{
									"9f72f647-bf26-36ef-8915-8b474acb45aa",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Rampart",
							uuid = "ffe0f80a-4a10-ee94-82cf-f210cf23856e",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "1aab90d7-ef84-b307-a612-3487e695c73a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "9f72f647-bf26-36ef-8915-8b474acb45aa",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T2 / P2",
				mechanicTime = 290.6,
				name = "[T2] Rampart - Mines",
				timeRange = true,
				timelineIndex = 69,
				timerEndOffset = -9.1,
				timerStartOffset = -10.6,
				uuid = "ea5538d6-6016-0254-a169-695a40a46bc9",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"fba80845-8597-6695-b43b-96cedce9a6fa",
									true,
								},
								
								{
									"9dea65b2-b45e-59ab-be2b-869c10382f14",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Damnation",
							uuid = "6a7a20ba-1cae-8a75-9fca-980ebca3cd27",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "fba80845-8597-6695-b43b-96cedce9a6fa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "9dea65b2-b45e-59ab-be2b-869c10382f14",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T2 / P2",
				mechanicTime = 290.6,
				name = "[T2] Vengeance - Mines",
				timeRange = true,
				timelineIndex = 69,
				timerEndOffset = -5.6,
				timerStartOffset = -8.6,
				uuid = "0b178013-ce29-eee4-a595-d750f4db0a8c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"59baab58-3624-4762-bd3c-fa362d4e6abc",
									true,
								},
								
								{
									"fd459dc6-772a-d1f8-88e7-715aefd21ba2",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_ThrillOfBattle",
							uuid = "48e377fe-07d6-dec3-ba43-b27341d805ae",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "59baab58-3624-4762-bd3c-fa362d4e6abc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "fd459dc6-772a-d1f8-88e7-715aefd21ba2",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T2 / P2",
				mechanicTime = 290.6,
				name = "[T2] Thrill of Battle - Mines",
				timeRange = true,
				timelineIndex = 69,
				timerEndOffset = -3.1,
				timerStartOffset = -5.3,
				uuid = "524b2f45-23a0-a43c-b911-97a29879c359",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"e4dda2f2-d37c-c94d-9f7b-57b0c9e361e3",
									true,
								},
								
								{
									"9569baa9-6ac5-f7ba-87ff-6d608aeeba24",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Bloodwhetting",
							uuid = "68df0d8e-1733-1eba-9d0f-7fbcf883b9dd",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "e4dda2f2-d37c-c94d-9f7b-57b0c9e361e3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "9569baa9-6ac5-f7ba-87ff-6d608aeeba24",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T2 / P2",
				mechanicTime = 290.6,
				name = "[T2] Raw Intuition - Mines",
				timeRange = true,
				timelineIndex = 69,
				timerEndOffset = -0.4,
				timerStartOffset = -2.6,
				uuid = "64428fb7-365d-899a-83d2-e5c41fc22cf3",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared ",
				uuid = "a42f6916-1ac0-e8d9-b133-159081e18c61",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Shared ",
				name = " P2",
				uuid = "b3175106-6d2d-d966-a318-4780eade7135",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "data.teaLpduMitsIceTarget = eventArgs.entityID",
							conditions = 
							{
								
								{
									"bcd3d1e3-fab9-01ca-9c3b-1e11012ab539",
									true,
								},
							},
							name = "Record marked player",
							uuid = "e82e8007-202e-358d-ae1d-5a5009fc641b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.markerID == 67",
							dequeueIfLuaFalse = true,
							name = "Ice Missile marker",
							uuid = "bcd3d1e3-fab9-01ca-9c3b-1e11012ab539",
							version = 3,
						},
					},
				},
				displayPath = "Shared / P2",
				eventType = 4,
				mechanicTime = 290.6,
				name = "[TEA Mits] Record Ice Missile target",
				timeRange = true,
				timelineIndex = 69,
				timerEndOffset = 0.5,
				timerStartOffset = -5,
				uuid = "31b655fe-8995-524a-9522-9e06be70b899",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker ",
				uuid = "326b87f1-6b6e-178c-bedf-2c41b7a764db",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T1 ",
				uuid = "37d25838-5c67-daa6-931d-ecb4dd564255",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T1 ",
				name = " P2",
				uuid = "fe77de6f-b92f-c170-96ac-f9d0fe3f0762",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"d44acb8f-a477-cf5c-b15c-1f67e9a1b1ab",
									true,
								},
								
								{
									"b62dd367-443f-b1f1-8762-a69a2ef6db00",
									true,
								},
								
								{
									"ebef6de3-309d-bfff-9180-d4948ff24839",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							uuid = "f17dedd5-80f4-a718-817f-f81bd0df6d16",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "d44acb8f-a477-cf5c-b15c-1f67e9a1b1ab",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "b62dd367-443f-b1f1-8762-a69a2ef6db00",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local player = TensorCore.mGetPlayer()\nlocal target = data.teaLpduMitsIceTarget\nreturn player and target and target == player.id or false",
							name = "Ice Missile on MT",
							uuid = "ebef6de3-309d-bfff-9180-d4948ff24839",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T1 / P2",
				mechanicTime = 290.6,
				name = "[T1] Camouflage - Mines with Ice Missile",
				timeRange = true,
				timelineIndex = 69,
				timerEndOffset = 0.6,
				timerStartOffset = -2.6,
				uuid = "42ea3cf7-037c-c182-a01f-df9d597ffcc4",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T2 ",
				uuid = "3bafb9fb-53bb-2cfb-89a9-64f16c04a934",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T2 ",
				name = " P2",
				uuid = "d9bc0ec5-1716-cbe4-8b60-642206b75e8b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"13c09cc7-cfe8-2033-920c-fcce53e96b97",
									true,
								},
								
								{
									"21b09715-677a-ead2-a16a-e75fdaab9141",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Rampart",
							uuid = "a16c2510-42fc-0692-b9e5-65ad2751ab76",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "13c09cc7-cfe8-2033-920c-fcce53e96b97",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "21b09715-677a-ead2-a16a-e75fdaab9141",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T2 / P2",
				mechanicTime = 290.6,
				name = "[T2] Rampart - Mines",
				timeRange = true,
				timelineIndex = 69,
				timerEndOffset = -9.3,
				timerStartOffset = -10.6,
				uuid = "ae1c15cb-7f51-e128-a12d-7c550fcc168d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"f6503b4d-dc4d-0cf7-ba26-de2d3aa1f80f",
									true,
								},
								
								{
									"990c4e02-606b-c4fa-a2d2-923386ab9449",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							uuid = "dd0aa8d8-1724-f7d4-acd4-1d00214104c6",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "f6503b4d-dc4d-0cf7-ba26-de2d3aa1f80f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "990c4e02-606b-c4fa-a2d2-923386ab9449",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T2 / P2",
				mechanicTime = 290.6,
				name = "[T2] Camouflage - Mines",
				timeRange = true,
				timelineIndex = 69,
				timerEndOffset = -8.6,
				timerStartOffset = -9.2,
				uuid = "49395a80-fb92-f4db-ba32-2c5c13a9b05a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"6d0581c4-1890-d63f-ac8e-49057ef0371c",
									true,
								},
								
								{
									"37409402-3df9-2d3f-a2c1-12940c06ad7e",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Nebula",
							uuid = "8c28ae79-2e62-8661-ba97-5de6d460481f",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "6d0581c4-1890-d63f-ac8e-49057ef0371c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "37409402-3df9-2d3f-a2c1-12940c06ad7e",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T2 / P2",
				mechanicTime = 290.6,
				name = "[T2] Nebula - Mines",
				timeRange = true,
				timelineIndex = 69,
				timerEndOffset = -5.6,
				timerStartOffset = -8.4,
				uuid = "e19254e7-3b03-31e3-8721-b234e8ab6b5c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"120a05cc-365b-acb5-9967-eaffae8ba978",
									true,
								},
								
								{
									"79b640aa-d476-986a-8459-d89150acec77",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "9442d24e-16fa-4e9f-816d-12e13ec05b44",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "120a05cc-365b-acb5-9967-eaffae8ba978",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "79b640aa-d476-986a-8459-d89150acec77",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T2 / P2",
				mechanicTime = 290.6,
				name = "[T2] Heart of Stone - Mines",
				timeRange = true,
				timelineIndex = 69,
				timerEndOffset = -0.4,
				timerStartOffset = -2.6,
				uuid = "ee2404ae-544a-11a2-a395-22d31c0841d3",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight ",
				uuid = "f230e317-4c5d-01e0-8ab0-062667f07842",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T1 ",
				uuid = "b02f664e-1e59-6d71-a5e3-474a0fa33bb0",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T1 ",
				name = " P2",
				uuid = "d4cec3b7-c8ee-503f-ab68-8c6978518293",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"872af0fd-e0bf-d49e-a4da-64ee285dbcb2",
									true,
								},
								
								{
									"cbb9e626-1341-f568-bd80-1de9ee09175c",
									true,
								},
								
								{
									"8ba8c744-45cf-6e1a-b38b-c05df3000d21",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_DarkMind",
							uuid = "48d6496f-3e7e-1a3e-84f0-0a3e91bd7abe",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "872af0fd-e0bf-d49e-a4da-64ee285dbcb2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "cbb9e626-1341-f568-bd80-1de9ee09175c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local player = TensorCore.mGetPlayer()\nlocal target = data.teaLpduMitsIceTarget\nreturn player and target and target == player.id or false",
							name = "Ice Missile on MT",
							uuid = "8ba8c744-45cf-6e1a-b38b-c05df3000d21",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T1 / P2",
				mechanicTime = 290.6,
				name = "[T1] Dark Mind - Mines with Ice Missile",
				timeRange = true,
				timelineIndex = 69,
				timerEndOffset = 0.6,
				timerStartOffset = -2.6,
				uuid = "c3434b1d-a795-444a-91e3-7b7a717ee949",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T2 ",
				uuid = "70fb7706-4908-2634-b903-705c89ce21d4",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T2 ",
				name = " P2",
				uuid = "18ccf4c4-3a95-a311-b1f0-ef151145347f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"c230cf75-d4a8-ceb3-bdc4-dcb7be9c2157",
									true,
								},
								
								{
									"dcd89b68-9127-1afd-ac66-3f71bc446969",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_Rampart",
							uuid = "dad5d5a5-d064-8a9c-9c99-e0f4b9eec7f2",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "c230cf75-d4a8-ceb3-bdc4-dcb7be9c2157",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "dcd89b68-9127-1afd-ac66-3f71bc446969",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T2 / P2",
				mechanicTime = 290.6,
				name = "[T2] Rampart - Mines",
				timeRange = true,
				timelineIndex = 69,
				timerEndOffset = -9.3,
				timerStartOffset = -10.6,
				uuid = "d36ef80b-be72-08af-a49c-6bfa9869ca96",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"fbf52153-4d13-d3f0-a026-c133e4d5fddc",
									true,
								},
								
								{
									"b5b1c761-01c6-6171-828a-d6975c7c336e",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_DarkMind",
							uuid = "9d1821c6-1048-24f0-a271-937cf46f1327",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "fbf52153-4d13-d3f0-a026-c133e4d5fddc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "b5b1c761-01c6-6171-828a-d6975c7c336e",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T2 / P2",
				mechanicTime = 290.6,
				name = "[T2] Dark Mind - Mines",
				timeRange = true,
				timelineIndex = 69,
				timerEndOffset = -8.6,
				timerStartOffset = -9.2,
				uuid = "c271cf33-9098-e9d7-aa50-699d132ef984",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"c83826e8-1ad7-5c2f-a08d-9f1bacaf114d",
									true,
								},
								
								{
									"80ce716f-5c6c-4845-b690-3f5e9e1f69fe",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_ShadowedVigil",
							uuid = "9337642f-d93b-e181-aaf5-fff029ebdd62",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "c83826e8-1ad7-5c2f-a08d-9f1bacaf114d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "80ce716f-5c6c-4845-b690-3f5e9e1f69fe",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T2 / P2",
				mechanicTime = 290.6,
				name = "[T2] Shadow Wall - Mines",
				timeRange = true,
				timelineIndex = 69,
				timerEndOffset = -5.6,
				timerStartOffset = -8.4,
				uuid = "511d876d-2865-8858-b9c8-4dae8d5d279c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"647df2b8-dd51-93b7-8e1d-e910dcbe88e1",
									true,
								},
								
								{
									"ec9b0426-550f-6e92-adf2-a62c717f9534",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf",
							uuid = "78824196-72f7-de4c-8a04-c09dfa2e7887",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "647df2b8-dd51-93b7-8e1d-e910dcbe88e1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "ec9b0426-550f-6e92-adf2-a62c717f9534",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T2 / P2",
				mechanicTime = 290.6,
				name = "[T2] The Blackest Night - Mines",
				timeRange = true,
				timelineIndex = 69,
				timerEndOffset = -0.4,
				timerStartOffset = -2.6,
				uuid = "2c8f203c-54fa-e674-b6f8-1ddc8d72525d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin ",
				uuid = "2c475fe3-87f8-d28d-8980-2e0fbf11cfaa",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T1 ",
				uuid = "128c6081-722e-120c-ae77-37f196068669",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T1 ",
				name = " P2",
				uuid = "c32854f5-510a-83dc-bbf9-7fe1b47f952a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a8920633-c877-558a-9b9e-fecdea7ed596",
									true,
								},
								
								{
									"3e3482c9-16a1-531b-8e73-a2c595c416a8",
									true,
								},
								
								{
									"a9178585-6337-5d9b-aaed-8086f503a0fa",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Bulwark",
							uuid = "97482e73-1cac-65d9-9afc-edcf8cd273b0",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "a8920633-c877-558a-9b9e-fecdea7ed596",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "3e3482c9-16a1-531b-8e73-a2c595c416a8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local player = TensorCore.mGetPlayer()\nlocal target = data.teaLpduMitsIceTarget\nreturn player and target and target == player.id or false",
							name = "Ice Missile on MT",
							uuid = "a9178585-6337-5d9b-aaed-8086f503a0fa",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T1 / P2",
				mechanicTime = 290.6,
				name = "[T1] Bulwark - Mines with Ice Missile",
				timeRange = true,
				timelineIndex = 69,
				timerEndOffset = -0.4,
				timerStartOffset = -2.6,
				uuid = "db64407e-e915-3327-9017-f2ab65325fc9",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"4ffcd46c-d18a-ba66-8545-ef8edd055c74",
									true,
								},
								
								{
									"7f149669-f82c-b741-abbc-8a73a0add861",
									true,
								},
								
								{
									"d5787534-2f3b-8888-b831-7879df8ac1ab",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_InterventionMouse",
							targetType = "Other Tank",
							uuid = "dbd0a256-f26e-46fa-b662-b783a8b4ce9d",
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
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "4ffcd46c-d18a-ba66-8545-ef8edd055c74",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "7f149669-f82c-b741-abbc-8a73a0add861",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local player = TensorCore.mGetPlayer()\nlocal target = data.teaLpduMitsIceTarget\nreturn player and target and target == player.id or false",
							name = "Ice Missile on MT",
							uuid = "d5787534-2f3b-8888-b831-7879df8ac1ab",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T1 / P2",
				mechanicTime = 290.6,
				name = "[T1] Intervention - Mines with Ice Missile",
				timeRange = true,
				timelineIndex = 69,
				timerEndOffset = 1.1,
				timerStartOffset = -0.3,
				uuid = "7fa9476b-900c-b274-87bf-345d14297b6d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T2 ",
				uuid = "0590d1b9-29a6-cd29-96ba-571ea304cab8",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T2 ",
				name = " P2",
				uuid = "a2193c25-1e00-1743-832e-80e09442b365",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"f5c68dd4-2b91-7b17-b146-4298189ac135",
									true,
								},
								
								{
									"070a1678-ae59-b279-9a4f-4521aeb3a17a",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Rampart",
							uuid = "826897bb-a8db-29e1-bc26-ac3e7d81371d",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "f5c68dd4-2b91-7b17-b146-4298189ac135",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "070a1678-ae59-b279-9a4f-4521aeb3a17a",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T2 / P2",
				mechanicTime = 290.6,
				name = "[T2] Rampart - Mines",
				timeRange = true,
				timelineIndex = 69,
				timerEndOffset = -9.3,
				timerStartOffset = -10.6,
				uuid = "46e99670-4b25-b337-8566-94f21852c789",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"360e3d24-1798-0f10-bc5b-a71df1f8c529",
									true,
								},
								
								{
									"4466e96e-57fe-948b-94b6-9a9debc4876f",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Bulwark",
							uuid = "8d05e541-404d-43a1-b15f-aa82287917f9",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "360e3d24-1798-0f10-bc5b-a71df1f8c529",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "4466e96e-57fe-948b-94b6-9a9debc4876f",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T2 / P2",
				mechanicTime = 290.6,
				name = "[T2] Bulwark - Mines",
				timeRange = true,
				timelineIndex = 69,
				timerEndOffset = -8.6,
				timerStartOffset = -9.2,
				uuid = "fc3a94f9-22d9-ed16-a70d-dc6ab66d641d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"91339cb6-c123-506e-acf5-ca953c2c2d3d",
									true,
								},
								
								{
									"27fde1b9-1fd2-62ca-9b36-ec828215035a",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Guardian",
							uuid = "34f0a470-f471-aa87-a9e6-8083d2e4a309",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "91339cb6-c123-506e-acf5-ca953c2c2d3d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "27fde1b9-1fd2-62ca-9b36-ec828215035a",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T2 / P2",
				mechanicTime = 290.6,
				name = "[T2] Sentinel - Mines",
				timeRange = true,
				timelineIndex = 69,
				timerEndOffset = -5.6,
				timerStartOffset = -8.4,
				uuid = "0bc07be6-f7f8-7b73-bff0-73c8de3c02ca",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"ee8891da-4dc1-44a8-90e6-41bb4d510907",
									true,
								},
								
								{
									"7ebd3839-df06-193b-8f44-57d8ae7ffede",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HolySheltron",
							uuid = "0552e1fe-8136-704b-a890-eefceb1d1473",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "ee8891da-4dc1-44a8-90e6-41bb4d510907",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "7ebd3839-df06-193b-8f44-57d8ae7ffede",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T2 / P2",
				mechanicTime = 290.6,
				name = "[T2] Sheltron - Mines",
				timeRange = true,
				timelineIndex = 69,
				timerEndOffset = -0.4,
				timerStartOffset = -2.6,
				uuid = "a160f7cf-148d-c3b8-ae57-617a85212055",
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
				name = "Warrior ",
				uuid = "ee08d338-38cc-91d9-997b-d986aa5c2257",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T1 ",
				uuid = "456ad431-b417-1926-9e89-7cac1963aedd",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T1 ",
				name = " P2",
				uuid = "b7e4c5ce-ae81-8517-8cdb-4917c5bb3b43",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"2c2d1b13-e7c0-6ad1-b205-3dd255576e62",
									true,
								},
								
								{
									"e12c53fc-9fc5-6d37-8621-1bdd92347e5e",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Damnation",
							uuid = "a1ef7d00-3e22-2c60-a972-8aabf3f04b7b",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "2c2d1b13-e7c0-6ad1-b205-3dd255576e62",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "e12c53fc-9fc5-6d37-8621-1bdd92347e5e",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T1 / P2",
				mechanicTime = 306.7,
				name = "[T1] Vengeance - Water 2",
				timeRange = true,
				timelineIndex = 71,
				timerEndOffset = -5.6,
				timerStartOffset = -8.7,
				uuid = "7ff6df9b-0a47-818b-9fcb-cabdbb9c3ac6",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"3464afbb-0b33-91ac-920e-30b88696c123",
									true,
								},
								
								{
									"22ce9e2d-f152-fb3c-b289-16c42a394636",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Bloodwhetting",
							uuid = "32e719e3-34f0-3656-9f5a-d01112b09c61",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "3464afbb-0b33-91ac-920e-30b88696c123",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "22ce9e2d-f152-fb3c-b289-16c42a394636",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T1 / P2",
				mechanicTime = 306.7,
				name = "[T1] Raw Intuition - Water 2",
				timeRange = true,
				timelineIndex = 71,
				timerEndOffset = -1.2,
				timerStartOffset = -4.5,
				uuid = "63fdcd37-0199-26da-9335-b5a920a55ae2",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker ",
				uuid = "861cca0e-c9c9-8ffd-ba52-91d005504455",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T1 ",
				uuid = "387d5c46-f786-969f-bcb9-07b906fdae1b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T1 ",
				name = " P2",
				uuid = "03c530ec-d917-c96e-898f-b3b81870479a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"7bc3020e-96f0-cdf6-a0bc-2c27cfd67d88",
									true,
								},
								
								{
									"3594cee4-326e-4e08-a050-2d04e3c27d7b",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Nebula",
							uuid = "3de47f51-7e87-ab1d-ba70-0a3ce9ad1609",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "7bc3020e-96f0-cdf6-a0bc-2c27cfd67d88",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "3594cee4-326e-4e08-a050-2d04e3c27d7b",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T1 / P2",
				mechanicTime = 306.7,
				name = "[T1] Nebula - Water 2",
				timeRange = true,
				timelineIndex = 71,
				timerEndOffset = -5.6,
				timerStartOffset = -8.7,
				uuid = "91bff573-db48-c31b-b80c-1b52360ff96e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"08c55ed0-bfa4-d875-9a29-e32791ef1833",
									true,
								},
								
								{
									"e0077aa7-24f8-a25e-a374-9878d178e63b",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "6d60f452-98b4-f36c-9fd5-8f0011febf6a",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "08c55ed0-bfa4-d875-9a29-e32791ef1833",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "e0077aa7-24f8-a25e-a374-9878d178e63b",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T1 / P2",
				mechanicTime = 306.7,
				name = "[T1] Heart of Stone - Water 2",
				timeRange = true,
				timelineIndex = 71,
				timerEndOffset = -1.2,
				timerStartOffset = -4.5,
				uuid = "e29aef5a-3298-8d89-a00c-d0713dd3eb97",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight ",
				uuid = "1265378c-121c-fe5b-b2d2-8234d9be7c94",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T1 ",
				uuid = "a8dc43cb-85be-1d03-b844-041948f3a414",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T1 ",
				name = " P2",
				uuid = "8f0f4328-be90-6af5-aa3d-ed061872903b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"9b02214c-dd82-3f1b-8de9-bd632d58689b",
									true,
								},
								
								{
									"26fc4250-872a-5fe9-acbc-01910ce6fe23",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_ShadowedVigil",
							uuid = "81018a91-6c5c-ec7f-9979-320a176126d0",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "9b02214c-dd82-3f1b-8de9-bd632d58689b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "26fc4250-872a-5fe9-acbc-01910ce6fe23",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T1 / P2",
				mechanicTime = 306.7,
				name = "[T1] Shadow Wall - Water 2",
				timeRange = true,
				timelineIndex = 71,
				timerEndOffset = -5.6,
				timerStartOffset = -8.7,
				uuid = "c91a7f95-024b-e099-b6fa-ba5584e598b5",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"d993f911-0fb2-dbd6-a717-22331d30ec37",
									true,
								},
								
								{
									"c933b27b-75fe-f3ad-af60-319974d878d0",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf",
							uuid = "7186228a-bcc2-c578-8333-85238e6d074d",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "d993f911-0fb2-dbd6-a717-22331d30ec37",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "c933b27b-75fe-f3ad-af60-319974d878d0",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T1 / P2",
				mechanicTime = 306.7,
				name = "[T1] The Blackest Night - Water 2",
				timeRange = true,
				timelineIndex = 71,
				timerEndOffset = -1.2,
				timerStartOffset = -4.5,
				uuid = "c0b8f716-f373-90d6-891d-12aa6d922774",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin ",
				uuid = "d687bf2e-ba78-ce72-a9a6-a849ae161fa2",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T1 ",
				uuid = "c7912ed1-ed90-2c0e-8f3e-89a268a8a01e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T1 ",
				name = " P2",
				uuid = "bb08cfec-e522-1564-b68e-4a6628dd3f86",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"f2dc76d8-0eaf-f417-88a3-4f3e5f7946f6",
									true,
								},
								
								{
									"1938f412-d8f4-365c-aa31-6663c631bb72",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Guardian",
							uuid = "3496de89-afaf-74e1-a030-ff88e7dfa723",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "f2dc76d8-0eaf-f417-88a3-4f3e5f7946f6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "1938f412-d8f4-365c-aa31-6663c631bb72",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T1 / P2",
				mechanicTime = 306.7,
				name = "[T1] Sentinel - Water 2",
				timeRange = true,
				timelineIndex = 71,
				timerEndOffset = -5.6,
				timerStartOffset = -8.7,
				uuid = "cfaf336f-984a-c81b-b967-38279018482f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"b438a56d-e2ce-b69c-9092-7b40a06ebd0a",
									true,
								},
								
								{
									"355ed308-8a48-eb8c-9a7a-1cd4c9c22a6d",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HolySheltron",
							uuid = "24b93445-d11d-92a7-8fa9-3e1c85990d03",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "b438a56d-e2ce-b69c-9092-7b40a06ebd0a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "355ed308-8a48-eb8c-9a7a-1cd4c9c22a6d",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T1 / P2",
				mechanicTime = 306.7,
				name = "[T1] Sheltron - Water 2",
				timeRange = true,
				timelineIndex = 71,
				timerEndOffset = -1.2,
				timerStartOffset = -4.5,
				uuid = "4d1154ed-d6d4-205f-a7fb-20cbcad3aa5b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DPS ",
				uuid = "636ec2d0-6fb8-b3f7-8f03-bd9899450dfb",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " R1",
				uuid = "b69d5e16-22e9-caee-8598-768ba193db10",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"15b5192e-f472-db2d-9964-67c9974dfd3b",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_Hotbar_Tactician",
							uuid = "4e3d3a5e-5e41-f96c-9bb2-89efe6798efd",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R1\" or false",
							name = "Assigned R1",
							uuid = "15b5192e-f472-db2d-9964-67c9974dfd3b",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R1",
				mechanicTime = 306.7,
				name = "[R1] Tactician - Water 2",
				timeRange = true,
				timelineIndex = 71,
				timerEndOffset = -1.1,
				timerStartOffset = -4.2,
				uuid = "7fe7fa35-9b48-a27c-b28d-3e2302650de2",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"433a2e15-645e-4414-9a64-6a542cc60933",
									true,
								},
							},
							gVar = "ACR_TensorRequiem4_Hotbar_Troubadour",
							uuid = "be1f0497-1a49-d9d9-a509-bd2267415392",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R1\" or false",
							name = "Assigned R1",
							uuid = "433a2e15-645e-4414-9a64-6a542cc60933",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R1",
				mechanicTime = 306.7,
				name = "[R1] Troubadour - Water 2",
				timeRange = true,
				timelineIndex = 71,
				timerEndOffset = -1.1,
				timerStartOffset = -4.2,
				uuid = "9ff74837-aeea-39db-bd70-b70281b15be9",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"35ea7b0f-9a06-78df-a70b-7128086b29aa",
									true,
								},
							},
							gVar = "ACR_RikuDNC3_Hotbar_ShieldSamba",
							uuid = "ae53798d-5363-24fa-a503-44402215785c",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R1\" or false",
							name = "Assigned R1",
							uuid = "35ea7b0f-9a06-78df-a70b-7128086b29aa",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R1",
				mechanicTime = 306.7,
				name = "[R1] ShieldSamba - Water 2",
				timeRange = true,
				timelineIndex = 71,
				timerEndOffset = -1.1,
				timerStartOffset = -4.2,
				uuid = "2d6c140c-1496-d723-bada-23b6b5cf1c65",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " R2",
				uuid = "26c033e1-fb0b-86f2-ad98-4f77ea181e28",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"40ed2254-4a8d-a8b4-b536-e66c08912256",
									true,
								},
								
								{
									"f8059ef7-cf00-f9be-9150-bc0cea778c02",
									true,
								},
							},
							gVar = "ACR_TensorNuke4_Hotbar_Addle",
							uuid = "07898171-0c03-6757-b4f7-c90486052013",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R2\" or false",
							name = "Assigned R2",
							uuid = "40ed2254-4a8d-a8b4-b536-e66c08912256",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local target = TensorCore.mGetTarget()\nreturn target and target.contentid == 9216 or false",
							name = "Brute Justice selected",
							uuid = "f8059ef7-cf00-f9be-9150-bc0cea778c02",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R2",
				mechanicTime = 306.7,
				name = "[R2] Addle - Water 2",
				timeRange = true,
				timelineIndex = 71,
				timerEndOffset = -1.2,
				timerStartOffset = -3.7,
				uuid = "875c078f-3937-8d2d-9afb-9046b547cc36",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"5204d619-07f8-505d-a217-44f6165ec6dc",
									true,
								},
								
								{
									"17b39119-a0e1-56bc-8a05-a4f7efb68114",
									true,
								},
							},
							gVar = "ACR_TensorNuke4_Hotbar_Manaward",
							uuid = "cbb7bc19-f879-b128-9aa8-0db02a4ca0cd",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R2\" or false",
							name = "Assigned R2",
							uuid = "17b39119-a0e1-56bc-8a05-a4f7efb68114",
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
							name = "Black Mage",
							uuid = "5204d619-07f8-505d-a217-44f6165ec6dc",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R2",
				mechanicTime = 306.7,
				name = "[R2] Manaward - Water 2",
				timeRange = true,
				timelineIndex = 71,
				timerEndOffset = -1.7,
				timerStartOffset = -4.7,
				uuid = "fd85eafe-6890-77ea-9543-b06276815dc9",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"ef53ba7d-f582-4b91-9a9e-e997052ec5cb",
									true,
								},
								
								{
									"59f29be7-160a-2bb7-9aca-5c3d30bc4906",
									true,
								},
							},
							gVar = "ACR_RikuPCT3_Hotbar_TemperaCoat",
							uuid = "1928bd9d-c011-118b-a253-98e13a73ff8b",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R2\" or false",
							name = "Assigned R2",
							uuid = "59f29be7-160a-2bb7-9aca-5c3d30bc4906",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PICTOMANCER",
							name = "Pictomancer",
							uuid = "ef53ba7d-f582-4b91-9a9e-e997052ec5cb",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R2",
				mechanicTime = 306.7,
				name = "[R2] TemperaCoat - Water 2",
				timeRange = true,
				timelineIndex = 71,
				timerEndOffset = -1.7,
				timerStartOffset = -4.7,
				uuid = "8a8fc3fa-f332-29d0-96f2-af779a2454fe",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " Samurai",
				uuid = "e1bc8cf3-64f6-97fd-b98e-e2ce7c0117ee",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"8a5854fa-c848-e363-a5da-0634f7db505c",
									true,
								},
								
								{
									"8d10d6ff-e5b8-76b3-8242-c74e2bdf2aff",
									true,
								},
							},
							gVar = "ACR_TensorWeeb3_Hotbar_Tengetsu",
							uuid = "c94e0d46-e8cd-0e6e-88fb-eb23c568ecad",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif not roster or not roster.current() then return false end\nlocal slot = roster.mySlot()\nreturn slot == \"M1\" or slot == \"M2\"",
							name = "Assigned M1 or M2",
							uuid = "8d10d6ff-e5b8-76b3-8242-c74e2bdf2aff",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "SAMURAI",
							name = "Samurai",
							uuid = "8a5854fa-c848-e363-a5da-0634f7db505c",
							version = 3,
						},
					},
				},
				displayPath = "DPS / Samurai",
				mechanicTime = 306.7,
				name = "[SAM] Third Eye - Water 2",
				timeRange = true,
				timelineIndex = 71,
				timerEndOffset = -0.8,
				timerStartOffset = -2.8,
				uuid = "c60110ac-f826-0f2e-942a-71c36f869f15",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " Ninja",
				uuid = "3750b4c6-ec55-9f03-bf06-5bff11ce24d4",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"c4607ab7-c2f3-d2ce-8b3f-c427074e1f5d",
									true,
								},
								
								{
									"c075aa10-6d27-9e07-8bc5-088e533d4d15",
									true,
								},
							},
							gVar = "ACR_RikuNIN3_Hotbar_ShadeShift",
							uuid = "9f717755-caee-9842-9b35-975275f61416",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif not roster or not roster.current() then return false end\nlocal slot = roster.mySlot()\nreturn slot == \"M1\" or slot == \"M2\"",
							name = "Assigned M1 or M2",
							uuid = "c075aa10-6d27-9e07-8bc5-088e533d4d15",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "NINJA",
							name = "Ninja",
							uuid = "c4607ab7-c2f3-d2ce-8b3f-c427074e1f5d",
							version = 3,
						},
					},
				},
				displayPath = "DPS / Ninja",
				mechanicTime = 306.7,
				name = "[NIN] Shade Shift - Water 2",
				timeRange = true,
				timelineIndex = 71,
				timerEndOffset = -1.7,
				timerStartOffset = -4.7,
				uuid = "603983ba-5c32-12c7-80df-344ffa38f42a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " Monk",
				uuid = "d5e2354c-4f1b-07ef-877c-fd39dade43da",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"5bce7aa2-6e84-df23-b981-918c228f9c8f",
									true,
								},
								
								{
									"a80527d6-dfb1-f064-9fc4-d85fc973be8f",
									true,
								},
							},
							gVar = "ACR_RikuMNK3_Hotbar_RiddleOfEarth",
							uuid = "8c73ba49-e2c2-239b-896b-b34941894756",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif not roster or not roster.current() then return false end\nlocal slot = roster.mySlot()\nreturn slot == \"M1\" or slot == \"M2\"",
							name = "Assigned M1 or M2",
							uuid = "a80527d6-dfb1-f064-9fc4-d85fc973be8f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MONK",
							name = "Monk",
							uuid = "5bce7aa2-6e84-df23-b981-918c228f9c8f",
							version = 3,
						},
					},
				},
				displayPath = "DPS / Monk",
				mechanicTime = 306.7,
				name = "[MNK] Riddle of Earth - Water 2",
				timeRange = true,
				timelineIndex = 71,
				timerEndOffset = -1.2,
				timerStartOffset = -3.7,
				uuid = "2e75a366-aa1d-aa6b-aad2-2428ef4d6dd6",
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
				name = "Warrior ",
				uuid = "e64b2cc3-e286-24e3-a54b-6764b716bd21",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T1 ",
				uuid = "5bcaf049-376a-be25-a52e-0e44eba9196e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T1 ",
				name = " P2",
				uuid = "7edee83e-e982-6dfb-8ac3-8d2a18ee069d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"2924e77e-9b3c-506a-92e3-00408635a8a7",
									true,
								},
								
								{
									"788af227-b41d-f818-8543-3d9d24200cc3",
									true,
								},
								
								{
									"fabbbcfd-b524-5298-a558-cf06e64c5c68",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_ThrillOfBattle",
							uuid = "e0e4a57d-65e8-ea32-ba5e-5b465f3e55b3",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "2924e77e-9b3c-506a-92e3-00408635a8a7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "788af227-b41d-f818-8543-3d9d24200cc3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local player = TensorCore.mGetPlayer()\nlocal target = data.teaLpduMitsIceTarget\nreturn player and target and target ~= player.id or false",
							name = "Ice Missile on another player",
							uuid = "fabbbcfd-b524-5298-a558-cf06e64c5c68",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T1 / P2",
				mechanicTime = 315.5,
				name = "[T1] Thrill of Battle - Flarethrower without Ice Missile",
				timeRange = true,
				timelineIndex = 74,
				timerEndOffset = -1.1,
				timerStartOffset = -3.8,
				uuid = "107901a2-70fb-c800-8287-ef169d8caf84",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker ",
				uuid = "f2201719-a503-1855-bccc-d6ef5584c4bb",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T1 ",
				uuid = "906e1e3e-fee5-8dea-a2e0-5ed59484a1dc",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T1 ",
				name = " P2",
				uuid = "d54c1ee5-1ef3-8324-933c-909d549cbafa",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"34284c86-42f2-3a1b-a3e9-8b0558e6fbb1",
									true,
								},
								
								{
									"4ff3fcc0-e143-d5ca-83a9-49f97eeff8df",
									true,
								},
								
								{
									"f6054d3a-0f19-0c00-8dcf-fa882acb3682",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							uuid = "ad0dd4cf-daea-9450-9aee-a959f7242514",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "34284c86-42f2-3a1b-a3e9-8b0558e6fbb1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "4ff3fcc0-e143-d5ca-83a9-49f97eeff8df",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local player = TensorCore.mGetPlayer()\nlocal target = data.teaLpduMitsIceTarget\nreturn player and target and target ~= player.id or false",
							name = "Ice Missile on another player",
							uuid = "f6054d3a-0f19-0c00-8dcf-fa882acb3682",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T1 / P2",
				mechanicTime = 315.5,
				name = "[T1] Camouflage - Flarethrower without Ice Missile",
				timeRange = true,
				timelineIndex = 74,
				timerEndOffset = -1.1,
				timerStartOffset = -3.8,
				uuid = "fa96d442-d344-4d89-a1de-2f7a6c10174d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight ",
				uuid = "2d59bff5-82cc-464f-bfa4-d020d92d9767",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T1 ",
				uuid = "781cc0a9-a3c5-df02-99b3-8692e2de1e57",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T1 ",
				name = " P2",
				uuid = "9b6182d3-688f-7835-9a70-4e1d7a36e341",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"0c378c84-d9bb-eb95-befc-7b11ec5c4b8c",
									true,
								},
								
								{
									"6b2001be-c785-5a6f-9475-4bbbed1b711e",
									true,
								},
								
								{
									"0ea30c87-3f2c-4dcf-84a4-67756322200b",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_DarkMind",
							uuid = "99a005c6-aee7-0084-942c-f8bf0882bd96",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "0c378c84-d9bb-eb95-befc-7b11ec5c4b8c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "6b2001be-c785-5a6f-9475-4bbbed1b711e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local player = TensorCore.mGetPlayer()\nlocal target = data.teaLpduMitsIceTarget\nreturn player and target and target ~= player.id or false",
							name = "Ice Missile on another player",
							uuid = "0ea30c87-3f2c-4dcf-84a4-67756322200b",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T1 / P2",
				mechanicTime = 315.5,
				name = "[T1] Dark Mind - Flarethrower without Ice Missile",
				timeRange = true,
				timelineIndex = 74,
				timerEndOffset = -1.1,
				timerStartOffset = -3.8,
				uuid = "6756dbde-16b5-b7a6-9b24-2902b1379426",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin ",
				uuid = "8b385784-83b4-9650-9dd6-f1a82a947740",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T1 ",
				uuid = "c3192b4f-84a6-d5ea-9abd-51301e2119b5",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T1 ",
				name = " P2",
				uuid = "c4f4bed3-c51b-90ba-8aad-a9f7c8ec8b32",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"ec04dc0d-30a0-159a-9928-91e364a3dd3d",
									true,
								},
								
								{
									"d90cfbcf-879f-140e-8c78-79e16b855ec8",
									true,
								},
								
								{
									"e34af248-f2c4-0ec8-af30-bb5aa763c59c",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Bulwark",
							uuid = "0b160807-517d-05c2-b267-ca4558d3a493",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "ec04dc0d-30a0-159a-9928-91e364a3dd3d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "d90cfbcf-879f-140e-8c78-79e16b855ec8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local player = TensorCore.mGetPlayer()\nlocal target = data.teaLpduMitsIceTarget\nreturn player and target and target ~= player.id or false",
							name = "Ice Missile on another player",
							uuid = "e34af248-f2c4-0ec8-af30-bb5aa763c59c",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T1 / P2",
				mechanicTime = 315.5,
				name = "[T1] Bulwark - Flarethrower without Ice Missile",
				timeRange = true,
				timelineIndex = 74,
				timerEndOffset = -1.1,
				timerStartOffset = -3.8,
				uuid = "a5111f52-35a9-84c6-b0f9-0d40ee550270",
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
				name = "Gunbreaker ",
				uuid = "1dbfd7c5-e106-a426-b00f-e03383980d61",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T1 ",
				uuid = "dccd0a63-cf4b-d423-bc8a-8e591fc07849",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T1 ",
				name = " P2",
				uuid = "44961bdd-7776-29c0-a75d-e7bfea473e23",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"dded8ba4-dc4d-a336-8ceb-c330d06f9c21",
									true,
								},
								
								{
									"84e859da-ee88-2620-8af4-346762063937",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "4b923ebc-3721-cce6-9a0f-945d67fac36f",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "dded8ba4-dc4d-a336-8ceb-c330d06f9c21",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "84e859da-ee88-2620-8af4-346762063937",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T1 / P2",
				mechanicTime = 327.6,
				name = "[T1] Heart of Light - Whirlwind 2",
				timeRange = true,
				timelineIndex = 75,
				timerEndOffset = -1.3,
				timerStartOffset = -3.9,
				uuid = "ed806d80-14d0-99ac-ad61-6754650a092c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T2 ",
				uuid = "6163e01b-47e1-f428-a1db-77d51932e21c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T2 ",
				name = " P2",
				uuid = "72b7be79-c559-b063-b8be-1949927c6c06",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"dbff6e59-caf1-7f6f-a7c2-5e040260c594",
									true,
								},
								
								{
									"f65b2f40-59cf-2f69-96e8-142d52d5a271",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "14c576ab-bfcd-55f2-8c61-63faa96b98b1",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "dbff6e59-caf1-7f6f-a7c2-5e040260c594",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "f65b2f40-59cf-2f69-96e8-142d52d5a271",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T2 / P2",
				mechanicTime = 327.6,
				name = "[T2] Heart of Light - Whirlwind 2",
				timeRange = true,
				timelineIndex = 75,
				timerEndOffset = -1.3,
				timerStartOffset = -3.9,
				uuid = "73ea5e1d-cf88-4bbf-a415-9d38f25527b0",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight ",
				uuid = "783550d8-93af-0356-961a-977472fbfb6a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T1 ",
				uuid = "22f4fea1-392f-65d1-b976-57a458c91683",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T1 ",
				name = " P2",
				uuid = "e59c8557-9260-6ead-ad6d-4642551d5fe4",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"04a0c985-0424-9745-a53f-b94bbbddc116",
									true,
								},
								
								{
									"5f2b08c9-f545-9df1-9d16-8541141a7513",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_DarkMissionary",
							uuid = "fa8c89a8-60eb-1e35-9c0b-b317061c9762",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "04a0c985-0424-9745-a53f-b94bbbddc116",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "5f2b08c9-f545-9df1-9d16-8541141a7513",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T1 / P2",
				mechanicTime = 327.6,
				name = "[T1] Dark Missionary - Whirlwind 2",
				timeRange = true,
				timelineIndex = 75,
				timerEndOffset = -1.3,
				timerStartOffset = -3.9,
				uuid = "8a6cb1b6-6d1f-23de-a65c-2444e78aa22d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T2 ",
				uuid = "7024b477-6b8d-2644-ab80-140a739b066d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T2 ",
				name = " P2",
				uuid = "752bb8f7-8693-33c7-a6f7-16c740b6bad0",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"bb9ca82d-6839-4708-86f7-0b3fca1a9942",
									true,
								},
								
								{
									"e171da9e-39a2-d144-8b29-2100c33279b8",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_DarkMissionary",
							uuid = "2147d454-fc1e-668b-b3e5-14ea2632c3c1",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "bb9ca82d-6839-4708-86f7-0b3fca1a9942",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "e171da9e-39a2-d144-8b29-2100c33279b8",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T2 / P2",
				mechanicTime = 327.6,
				name = "[T2] Dark Missionary - Whirlwind 2",
				timeRange = true,
				timelineIndex = 75,
				timerEndOffset = -1.3,
				timerStartOffset = -3.9,
				uuid = "66389978-e733-2e38-a2e9-75dc3ed6c5ff",
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
				name = "Warrior ",
				uuid = "8638443e-28c3-e945-95ac-b0935fa5b597",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T1 ",
				uuid = "0f60c704-b8c6-b4b7-97cb-1d91210598ad",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T1 ",
				name = " P2",
				uuid = "6fed9b61-a10b-b4f8-aa47-6560c3ca6341",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"10ccb28f-0c14-5eb6-8536-82386e039fd4",
									true,
								},
								
								{
									"f4dacf4f-ab81-64c4-80bc-eb3d22a1e897",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_NascentFlashMouse",
							targetType = "Other Tank",
							uuid = "6170b265-abbf-ad79-b225-65e238c15121",
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
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							name = "Warrior",
							uuid = "10ccb28f-0c14-5eb6-8536-82386e039fd4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "f4dacf4f-ab81-64c4-80bc-eb3d22a1e897",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T1 / P2",
				mechanicTime = 336.2,
				name = "[T1] Nascent Flash - Water 3",
				timeRange = true,
				timelineIndex = 76,
				timerEndOffset = -3.7,
				timerStartOffset = -5.9,
				uuid = "76c874b5-c9e6-d7e9-b02c-05ccd0159409",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"488146da-8f5a-a416-92a1-75f881648065",
									true,
								},
								
								{
									"c4609239-e495-8293-9883-46d391936a46",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_ShakeItOff",
							uuid = "a8adaa8c-56fb-49bc-9e05-a16641820cea",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "488146da-8f5a-a416-92a1-75f881648065",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "c4609239-e495-8293-9883-46d391936a46",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T1 / P2",
				mechanicTime = 336.2,
				name = "[T1] Shake It Off - Water 3",
				timeRange = true,
				timelineIndex = 76,
				timerEndOffset = -1,
				timerStartOffset = -3.6,
				uuid = "3b341ac2-2d3e-6993-a83c-34e75e3cd323",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T2 ",
				uuid = "772c929e-123a-33c9-b9f4-09e775470cb5",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T2 ",
				name = " P2",
				uuid = "cf6658c8-7cf2-22bf-8ef3-77c61f13aef9",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"eb93e78a-26ee-f636-80c3-e3aa99d75e4d",
									true,
								},
								
								{
									"fedbe59c-1901-51d7-bbcf-866d2944f0e9",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Bloodwhetting",
							uuid = "c0d9a55d-0f93-a3b1-a5cb-7340a3857ccb",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "eb93e78a-26ee-f636-80c3-e3aa99d75e4d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "fedbe59c-1901-51d7-bbcf-866d2944f0e9",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T2 / P2",
				mechanicTime = 336.2,
				name = "[T2] Raw Intuition - Water 3",
				timeRange = true,
				timelineIndex = 76,
				timerEndOffset = -3.7,
				timerStartOffset = -5.9,
				uuid = "3625e3d2-be07-9955-a812-07076fb33260",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker ",
				uuid = "456d0c5b-1307-6a1a-9c4d-ddb3596b5163",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T1 ",
				uuid = "bb10110e-8498-40a1-8e56-cdeb1bbcdf43",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T1 ",
				name = " P2",
				uuid = "675e07d4-3641-cae8-a2f3-aa8087b66132",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"f38af052-d75e-4c00-9add-b2c9a0525656",
									true,
								},
								
								{
									"b245d295-cc72-5ff7-a1f5-1791edb6187d",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "9d7de3b1-8ad2-78a2-b588-91251e9e7bf4",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "f38af052-d75e-4c00-9add-b2c9a0525656",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "b245d295-cc72-5ff7-a1f5-1791edb6187d",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T1 / P2",
				mechanicTime = 336.2,
				name = "[T1] Heart of Stone - Water 3",
				timeRange = true,
				timelineIndex = 76,
				timerEndOffset = -3.7,
				timerStartOffset = -5.9,
				uuid = "78a5836e-e405-3584-b5e8-82ab50fdae61",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T2 ",
				uuid = "5283ee88-3ca1-b429-9029-c78398a9127f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T2 ",
				name = " P2",
				uuid = "ea8e0655-9158-799b-a100-860993c48d04",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"b13b146f-db12-5c4c-ac34-93317c234bb0",
									true,
								},
								
								{
									"8154c0fe-27e6-5cfa-b537-92163738b5c5",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "fa4b7b5c-c5fc-a634-9744-b45c1920935f",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "b13b146f-db12-5c4c-ac34-93317c234bb0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "8154c0fe-27e6-5cfa-b537-92163738b5c5",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T2 / P2",
				mechanicTime = 336.2,
				name = "[T2] Heart of Stone - Water 3",
				timeRange = true,
				timelineIndex = 76,
				timerEndOffset = -3.7,
				timerStartOffset = -5.9,
				uuid = "00f0b9ef-2a14-65b1-b1b1-ae99ba0d7f68",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight ",
				uuid = "9b48dbcf-d786-982d-a987-a28a021f6761",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T1 ",
				uuid = "9ae48ca3-97e2-2dfb-9158-d49ea7d5a588",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T1 ",
				name = " P2",
				uuid = "f9959318-5bd3-791d-9df9-ebecb60201fd",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"95c2ab1a-5367-c4e2-82ee-3197ba50b856",
									true,
								},
								
								{
									"9e9bf399-eca7-b227-8075-550fe3629058",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf",
							uuid = "73af4c85-aa1f-96ae-9db0-93ee7fe99d1e",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "95c2ab1a-5367-c4e2-82ee-3197ba50b856",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "9e9bf399-eca7-b227-8075-550fe3629058",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T1 / P2",
				mechanicTime = 336.2,
				name = "[T1] The Blackest Night - Water 3",
				timeRange = true,
				timelineIndex = 76,
				timerEndOffset = -3.7,
				timerStartOffset = -5.9,
				uuid = "e9d9604c-32b2-908b-910a-334bbb85e0da",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T2 ",
				uuid = "0e7a944c-3878-13d4-9301-b94dcaac40a2",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T2 ",
				name = " P2",
				uuid = "8e07dce8-ed9e-3c07-9352-839e6acd9c5d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"9d513f37-ce0a-9fcf-928f-fa60018bab8e",
									true,
								},
								
								{
									"a481ffda-44af-a220-a661-7df9cd511e42",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf",
							uuid = "0b80c120-7634-57b2-942a-451614172cbc",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "9d513f37-ce0a-9fcf-928f-fa60018bab8e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "a481ffda-44af-a220-a661-7df9cd511e42",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T2 / P2",
				mechanicTime = 336.2,
				name = "[T2] The Blackest Night - Water 3",
				timeRange = true,
				timelineIndex = 76,
				timerEndOffset = -3.7,
				timerStartOffset = -5.9,
				uuid = "0a5437a3-d51b-e6c5-8fb3-2de26c7f4f57",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin ",
				uuid = "343b367a-d247-729c-9b09-96614bf19577",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T1 ",
				uuid = "b47fe7a1-1883-b30e-8461-8e63957261f7",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T1 ",
				name = " P2",
				uuid = "e53cb712-45c4-8872-a904-312bbe7d817c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"237ec11c-257f-43a2-8768-8d31785cf615",
									true,
								},
								
								{
									"dfec7ae3-5f70-3f9c-b106-728bde74f750",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HolySheltron",
							uuid = "a01f2bf2-020f-925a-8408-a81a1c6ccb53",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "237ec11c-257f-43a2-8768-8d31785cf615",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "dfec7ae3-5f70-3f9c-b106-728bde74f750",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T1 / P2",
				mechanicTime = 336.2,
				name = "[T1] Sheltron - Water 3",
				timeRange = true,
				timelineIndex = 76,
				timerEndOffset = -3.7,
				timerStartOffset = -5.9,
				uuid = "f78f2a0e-383e-6f0f-84c0-81684e74009a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T2 ",
				uuid = "1d2ca6ce-9d99-8806-91f2-aa023fda858c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T2 ",
				name = " P2",
				uuid = "5e2f779f-bb6b-7b0b-8225-25ba474e87d2",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"2d12cee6-8a06-62da-acab-a70df51850ef",
									true,
								},
								
								{
									"1664a818-1eb7-8aeb-84f6-8fc5c6bf34b7",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HolySheltron",
							uuid = "28d01db8-3310-629a-89e2-fa49d07aaedd",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "2d12cee6-8a06-62da-acab-a70df51850ef",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "1664a818-1eb7-8aeb-84f6-8fc5c6bf34b7",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T2 / P2",
				mechanicTime = 336.2,
				name = "[T2] Sheltron - Water 3",
				timeRange = true,
				timelineIndex = 76,
				timerEndOffset = -3.7,
				timerStartOffset = -5.9,
				uuid = "c3474b3a-3bec-43ca-80e9-560072b23f60",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"2e7ec216-1ba1-47d0-a273-f4b8031bb5b2",
									true,
								},
								
								{
									"8522748b-2aaf-22e1-9304-d2ed017340be",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_DivineVeil",
							uuid = "5ee955c7-70a7-181b-9a23-c64e4502d5ef",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "2e7ec216-1ba1-47d0-a273-f4b8031bb5b2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "8522748b-2aaf-22e1-9304-d2ed017340be",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T2 / P2",
				mechanicTime = 336.2,
				name = "[T2] Divine Veil - Water 3",
				timeRange = true,
				timelineIndex = 76,
				timerEndOffset = -1,
				timerStartOffset = -3.6,
				uuid = "5c929cb3-148c-baa4-a4a6-33f80469ba17",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DPS ",
				uuid = "9c122efa-e41e-b007-9cdb-bd01eb9e8984",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " R1",
				uuid = "e62eeeb5-5a87-b9b4-b494-d7372cdfc2a6",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"f374ef80-afdd-4d09-9684-4852953c36f5",
									true,
								},
								
								{
									"d07499c8-410e-bb66-a3aa-1090560acf02",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_Hotbar_Dismantle",
							uuid = "8c8db2c6-f84c-ebaa-9314-d74562fad95b",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R1\" or false",
							name = "Assigned R1",
							uuid = "f374ef80-afdd-4d09-9684-4852953c36f5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local target = TensorCore.mGetTarget()\nreturn target and target.contentid == 9216 or false",
							name = "Brute Justice selected",
							uuid = "d07499c8-410e-bb66-a3aa-1090560acf02",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R1",
				mechanicTime = 336.2,
				name = "[R1] Dismantle - Water 3",
				timeRange = true,
				timelineIndex = 76,
				timerEndOffset = -1.8,
				timerStartOffset = -5.2,
				uuid = "64a7aec4-821c-8256-9a9d-78901ec2adfc",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"661fe06b-ba7c-bfb2-b03f-7d7bbcfdb8f5",
									true,
								},
							},
							gVar = "ACR_RikuDNC3_Hotbar_CuringWaltz",
							uuid = "98f9f9e2-16c2-0261-8cf9-9b81d42b9f7b",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R1\" or false",
							name = "Assigned R1",
							uuid = "661fe06b-ba7c-bfb2-b03f-7d7bbcfdb8f5",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R1",
				enabled = false,
				mechanicTime = 336.2,
				name = "[R1] CuringWaltz - After Water 3",
				timeRange = true,
				timelineIndex = 76,
				timerEndOffset = 2.3,
				timerStartOffset = 0.5,
				uuid = "19241718-c566-f816-aac5-ae0e3e73fbac",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " M2",
				uuid = "d61b1160-66c3-25ec-a613-49a1bfc6894f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"40d62b17-6d7b-d3dc-b90f-c46e4ca76429",
									true,
								},
								
								{
									"e9c00940-a7f8-d859-ba5a-c7667821b782",
									true,
								},
							},
							gVar = "ACR_TensorViper3_Hotbar_Feint",
							uuid = "433ed6ef-b292-76f5-bccd-cb7dfcc73a34",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"M2\" or false",
							name = "Assigned M2",
							uuid = "40d62b17-6d7b-d3dc-b90f-c46e4ca76429",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local target = TensorCore.mGetTarget()\nreturn target and target.contentid == 9216 or false",
							name = "Brute Justice selected",
							uuid = "e9c00940-a7f8-d859-ba5a-c7667821b782",
							version = 3,
						},
					},
				},
				displayPath = "DPS / M2",
				mechanicTime = 336.2,
				name = "[M2] Feint - Water 3",
				timeRange = true,
				timelineIndex = 76,
				timerEndOffset = -1.2,
				timerStartOffset = -4.2,
				uuid = "335407a9-db5b-6664-b620-cee67edd5313",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " Reaper",
				uuid = "354db808-0a3d-85c4-87d4-bc030af9bb4a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"ba676913-fcac-e6fe-b016-460e4e5cea32",
									true,
								},
								
								{
									"68eca17a-2830-557b-afe7-a64e996bcf18",
									true,
								},
							},
							gVar = "ACR_TensorReaper4_Hotbar_ArcaneCrest",
							uuid = "27cf9019-0930-6f2b-9714-cf0ca99b9fb4",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif not roster or not roster.current() then return false end\nlocal slot = roster.mySlot()\nreturn slot == \"M1\" or slot == \"M2\"",
							name = "Assigned M1 or M2",
							uuid = "68eca17a-2830-557b-afe7-a64e996bcf18",
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
							name = "Reaper",
							uuid = "ba676913-fcac-e6fe-b016-460e4e5cea32",
							version = 3,
						},
					},
				},
				displayPath = "DPS / Reaper",
				mechanicTime = 336.2,
				name = "[RPR] Arcane Crest - Water 3",
				timeRange = true,
				timelineIndex = 76,
				timerEndOffset = -1.2,
				timerStartOffset = -3.4,
				uuid = "dd53e6e3-4729-243f-8daf-dadd76abfc79",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " Samurai",
				uuid = "b097db4f-907b-3117-b678-91ab5f00a42a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"e1f92db4-cb7e-0d75-ac94-8ec540e6b74a",
									true,
								},
								
								{
									"9c6a54bc-3bbf-9655-a93a-bf6945cb6bf3",
									true,
								},
							},
							gVar = "ACR_TensorWeeb3_Hotbar_Tengetsu",
							uuid = "016b68f0-5115-570e-8c5b-1e505ee405d3",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif not roster or not roster.current() then return false end\nlocal slot = roster.mySlot()\nreturn slot == \"M1\" or slot == \"M2\"",
							name = "Assigned M1 or M2",
							uuid = "9c6a54bc-3bbf-9655-a93a-bf6945cb6bf3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "SAMURAI",
							name = "Samurai",
							uuid = "e1f92db4-cb7e-0d75-ac94-8ec540e6b74a",
							version = 3,
						},
					},
				},
				displayPath = "DPS / Samurai",
				mechanicTime = 336.2,
				name = "[SAM] Third Eye - Water 3",
				timeRange = true,
				timelineIndex = 76,
				timerEndOffset = -1,
				timerStartOffset = -3,
				uuid = "0dbb9395-acdc-c83b-b8fd-af55847add3d",
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
				name = "Warrior ",
				uuid = "d61be454-ffaa-3197-9911-334e4a090e24",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T1 ",
				uuid = "40340aea-57aa-b2b6-86fa-14a5fd9ef308",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T1 ",
				name = " P2",
				uuid = "6875ca32-e566-c804-907c-10b52c1450eb",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"e462d133-f3ea-c018-8720-0d20a1feec40",
									true,
								},
								
								{
									"c1ba189e-4013-2489-a7ae-43e6395582be",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Rampart",
							uuid = "5a72ec2d-df28-9fab-8fc0-36e7ec3d9f17",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "e462d133-f3ea-c018-8720-0d20a1feec40",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "c1ba189e-4013-2489-a7ae-43e6395582be",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T1 / P2",
				mechanicTime = 374.8,
				name = "[T1] Rampart - Double Rocket Punch",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = -1,
				timerStartOffset = -2.8,
				uuid = "464c8fc3-12a8-516b-afb0-f71ac7eab9ec",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"f3a2dd3a-1863-5e0e-9b2e-e8a3dc3634c1",
									true,
								},
								
								{
									"87ab7059-6a1b-3326-be60-60bcea40f2b3",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Bloodwhetting",
							uuid = "0769a42b-ed1c-4e58-8767-82c809106c8d",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "f3a2dd3a-1863-5e0e-9b2e-e8a3dc3634c1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "87ab7059-6a1b-3326-be60-60bcea40f2b3",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T1 / P2",
				mechanicTime = 374.8,
				name = "[T1] Raw Intuition - Double Rocket Punch",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = -3,
				timerStartOffset = -4.8,
				uuid = "b9d641f3-095c-3bdb-b901-4e912798e6a1",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"b0e8dd3a-26f7-19d6-beb8-7ced9b29049d",
									true,
								},
								
								{
									"65f732bb-a59d-7872-baae-bba4e5ae3cc3",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Reprisal",
							uuid = "e90c6aa3-f507-9d59-987d-5cbdebe2479e",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "b0e8dd3a-26f7-19d6-beb8-7ced9b29049d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "65f732bb-a59d-7872-baae-bba4e5ae3cc3",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T1 / P2",
				mechanicTime = 374.8,
				name = "[T1] Reprisal - Double Rocket Punch",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = -1,
				timerStartOffset = -4.3,
				uuid = "01589e8c-b1eb-f8e5-9ed8-773fd8216613",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T2 ",
				uuid = "8632122f-5380-9691-8f37-283fb67d2e24",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T2 ",
				name = " P2",
				uuid = "9e0b2b32-7cd5-b635-91ea-f5b9a7915504",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"0f9526c2-39fe-13b4-a6ca-248ba937403f",
									true,
								},
								
								{
									"2e3148d7-7bd6-882b-9269-12a521163b3e",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Rampart",
							uuid = "2508e1cd-85a0-77df-a0e5-da4821cc8bac",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "0f9526c2-39fe-13b4-a6ca-248ba937403f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "2e3148d7-7bd6-882b-9269-12a521163b3e",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T2 / P2",
				mechanicTime = 374.8,
				name = "[T2] Rampart - Double Rocket Punch",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = -1,
				timerStartOffset = -2.8,
				uuid = "a96c7f55-a7dc-1b16-bc02-9ada8618f8a1",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"5a537367-cac9-1db4-ac4e-2f543c4ea55c",
									true,
								},
								
								{
									"0d3e2955-d2eb-a895-bddc-2bd34e2ccb79",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Bloodwhetting",
							uuid = "c5294cee-0b29-09d5-a201-2f75407eb170",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "5a537367-cac9-1db4-ac4e-2f543c4ea55c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "0d3e2955-d2eb-a895-bddc-2bd34e2ccb79",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T2 / P2",
				mechanicTime = 374.8,
				name = "[T2] Raw Intuition - Double Rocket Punch",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = -3,
				timerStartOffset = -4.8,
				uuid = "1bb73a4a-2e95-a18c-a87c-4d8efb794907",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker ",
				uuid = "f6420b26-46b2-d097-accf-0b8e17396fa0",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T1 ",
				uuid = "54c0546b-e76c-178d-8fa8-1325094ef786",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T1 ",
				name = " P2",
				uuid = "76a51104-d406-a611-b0b9-658a2a5ea13e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"02e4ba3b-81d0-0d2b-8c29-38de7d122471",
									true,
								},
								
								{
									"224054f1-cdd4-4f76-b5bf-afd839949cd4",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Rampart",
							uuid = "5412e3a8-fcdc-5c58-af03-98a9a57e3ebe",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "02e4ba3b-81d0-0d2b-8c29-38de7d122471",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "224054f1-cdd4-4f76-b5bf-afd839949cd4",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T1 / P2",
				mechanicTime = 374.8,
				name = "[T1] Rampart - Double Rocket Punch",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = -3.8,
				timerStartOffset = -5.3,
				uuid = "ed2b8945-8571-efc9-b038-93504a271d13",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"5d75b6d6-a8a6-bdd5-b96d-e565ca084289",
									true,
								},
								
								{
									"b4f86887-d4ad-436e-a6a4-cf495088b640",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "9def278d-d759-5b54-aa88-b55fbc191e7f",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "5d75b6d6-a8a6-bdd5-b96d-e565ca084289",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "b4f86887-d4ad-436e-a6a4-cf495088b640",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T1 / P2",
				mechanicTime = 374.8,
				name = "[T1] Heart of Stone - Double Rocket Punch",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = -2.4,
				timerStartOffset = -3.7,
				uuid = "28e1087a-d2a5-8d25-9050-b7c302d65565",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"48cdeaab-1d71-9402-ad5a-41ec63ab3853",
									true,
								},
								
								{
									"8319d958-27a8-f352-a2a0-95c4c583394c",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "f1e170bc-29cb-9cee-bf8d-10bd0e71ebef",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "48cdeaab-1d71-9402-ad5a-41ec63ab3853",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "8319d958-27a8-f352-a2a0-95c4c583394c",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T1 / P2",
				mechanicTime = 374.8,
				name = "[T1] Reprisal - Double Rocket Punch",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = -1,
				timerStartOffset = -3.3,
				uuid = "3f95e51a-c24d-9b54-a39c-b76ae35e4f7e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T2 ",
				uuid = "1501f763-4688-4c6a-bc9b-5c845f720165",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T2 ",
				name = " P2",
				uuid = "7114e14c-ab9b-4bb2-923d-56e708644647",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"4458fd0b-fc6f-0c0d-a405-9cbc28064985",
									true,
								},
								
								{
									"93667d31-aaab-998d-aed1-be6919b83312",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Rampart",
							uuid = "4255ed84-b75d-6aa2-a693-919b2a2f4f1a",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "4458fd0b-fc6f-0c0d-a405-9cbc28064985",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "93667d31-aaab-998d-aed1-be6919b83312",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T2 / P2",
				mechanicTime = 374.8,
				name = "[T2] Rampart - Double Rocket Punch",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = -3.8,
				timerStartOffset = -5.3,
				uuid = "ae27ffbe-82f4-26c3-a41c-b3c7da560893",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"e81012ee-d862-a40e-86d4-a11393be59ed",
									true,
								},
								
								{
									"781877be-6930-d3c4-9c84-2b88544eb580",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "960d08b0-b9ee-6f30-8d2d-045c409dee47",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "e81012ee-d862-a40e-86d4-a11393be59ed",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "781877be-6930-d3c4-9c84-2b88544eb580",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T2 / P2",
				mechanicTime = 374.8,
				name = "[T2] Heart of Stone - Double Rocket Punch",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = -2.4,
				timerStartOffset = -3.7,
				uuid = "aa7a4907-c177-f552-aeca-f0f4bdf60d44",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"5b941bc1-e343-d250-92bf-53d53524cf22",
									true,
								},
								
								{
									"09bf01a8-93b2-1365-9395-32659ccb7b5e",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							uuid = "ea341472-8a6e-f97c-8ae4-eea0bf35e143",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "5b941bc1-e343-d250-92bf-53d53524cf22",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "09bf01a8-93b2-1365-9395-32659ccb7b5e",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T2 / P2",
				mechanicTime = 374.8,
				name = "[T2] Camouflage - Double Rocket Punch",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = -1,
				timerStartOffset = -2.4,
				uuid = "4f98c06d-47ab-5459-a299-5434cee39e69",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight ",
				uuid = "48eb6fd1-ea83-1194-b987-cf1fe900fe55",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T1 ",
				uuid = "ed9bb98b-ba74-3289-9020-b78456780154",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T1 ",
				name = " P2",
				uuid = "388db0d1-1429-e4e2-979a-ce3549de5784",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"793654ef-b4d3-4d25-98ff-cd5e4f6eaf3e",
									true,
								},
								
								{
									"d64a7606-1aba-563b-ac4b-c3437b977bc2",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_Rampart",
							uuid = "40eeb4d1-8446-9d82-9af2-08f4583cde4a",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "793654ef-b4d3-4d25-98ff-cd5e4f6eaf3e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "d64a7606-1aba-563b-ac4b-c3437b977bc2",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T1 / P2",
				mechanicTime = 374.8,
				name = "[T1] Rampart - Double Rocket Punch",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = -3.8,
				timerStartOffset = -5.3,
				uuid = "bf68d36a-6205-94ce-bb6a-46fb7bc426a1",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"cc99b59f-a1fa-4668-be3d-38ca665eb8b3",
									true,
								},
								
								{
									"f30e838d-2fb3-3215-a21d-d418edd6ce93",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf",
							uuid = "639d8955-a223-2d13-badd-d1856db2f80a",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "cc99b59f-a1fa-4668-be3d-38ca665eb8b3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "f30e838d-2fb3-3215-a21d-d418edd6ce93",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T1 / P2",
				mechanicTime = 374.8,
				name = "[T1] The Blackest Night - Double Rocket Punch",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = -2.4,
				timerStartOffset = -3.7,
				uuid = "3829ffcf-0a08-b542-9bf9-bb943084c919",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"ab1250be-3c98-b1e9-ba24-3d19e885d4cd",
									true,
								},
								
								{
									"36b9f5ba-7efc-d36c-ab99-2444fef95502",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_Reprisal",
							uuid = "3ede0a89-e250-a597-bb17-636801b6a228",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "ab1250be-3c98-b1e9-ba24-3d19e885d4cd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "36b9f5ba-7efc-d36c-ab99-2444fef95502",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T1 / P2",
				mechanicTime = 374.8,
				name = "[T1] Reprisal - Double Rocket Punch",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = -1,
				timerStartOffset = -3.3,
				uuid = "66ea9d42-524b-0e3b-a8d2-0bb72368afd7",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T2 ",
				uuid = "731add3c-b08d-5bfc-95bf-6b05ac483453",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T2 ",
				name = " P2",
				uuid = "65becdef-cf67-08fc-a777-f6d0fb8343eb",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"b8468b1c-683f-7312-b580-9b3481a32a19",
									true,
								},
								
								{
									"eababdd8-b6b6-c7fb-8f76-ed7b8a6ee03d",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_Rampart",
							uuid = "0f9991d9-8785-98aa-83fd-8c549ba69d24",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "b8468b1c-683f-7312-b580-9b3481a32a19",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "eababdd8-b6b6-c7fb-8f76-ed7b8a6ee03d",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T2 / P2",
				mechanicTime = 374.8,
				name = "[T2] Rampart - Double Rocket Punch",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = -3.8,
				timerStartOffset = -5.3,
				uuid = "a87e88f1-5d95-e7c5-bb08-f5eb6c866e85",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"88fbdd88-64a3-ae34-b9fc-ca274286e62f",
									true,
								},
								
								{
									"0ee11292-eb9c-a4cb-98bf-e713075bd547",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf",
							uuid = "f71de353-ff6b-0ae7-b476-3ee331dc2060",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "88fbdd88-64a3-ae34-b9fc-ca274286e62f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "0ee11292-eb9c-a4cb-98bf-e713075bd547",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T2 / P2",
				mechanicTime = 374.8,
				name = "[T2] The Blackest Night - Double Rocket Punch",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = -2.4,
				timerStartOffset = -3.7,
				uuid = "93034fad-6fab-6884-8a9b-8df956dea324",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin ",
				uuid = "584ca2cf-14c4-6a06-b81f-928bd8723f22",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T1 ",
				uuid = "7dfc72e9-cf93-f9c1-b196-0f77b1e71376",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T1 ",
				name = " P2",
				uuid = "d2a93b78-40ac-a5b5-99e6-10554b8731f2",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"fa098d37-3eb1-778f-b05b-f0c6a6b59f99",
									true,
								},
								
								{
									"826bfc83-b79e-f6dc-abc5-68dc79c7f547",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Rampart",
							uuid = "c111d7ec-de60-be78-96d5-faa7a08720bb",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "fa098d37-3eb1-778f-b05b-f0c6a6b59f99",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "826bfc83-b79e-f6dc-abc5-68dc79c7f547",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T1 / P2",
				mechanicTime = 374.8,
				name = "[T1] Rampart - Double Rocket Punch",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = -3.8,
				timerStartOffset = -5.3,
				uuid = "ae8fbe0c-15ac-67b7-a24f-7cdcfd162d3a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"733661cc-49de-f5bf-a078-b839cb19d5be",
									true,
								},
								
								{
									"72fd2aea-52df-195a-b2f6-3f768da33e07",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HolySheltron",
							uuid = "d8a7c218-7f2f-f37b-a37b-0782080eee81",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "733661cc-49de-f5bf-a078-b839cb19d5be",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "72fd2aea-52df-195a-b2f6-3f768da33e07",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T1 / P2",
				mechanicTime = 374.8,
				name = "[T1] Sheltron - Double Rocket Punch",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = -2.4,
				timerStartOffset = -3.7,
				uuid = "378a296d-56f7-d26e-ad92-e283b6764290",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"51727161-8915-6af5-b837-d55122795f65",
									true,
								},
								
								{
									"4e0706cb-643b-6b43-a192-4d0549711869",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Reprisal",
							uuid = "2e61f09a-4957-d557-b889-f5a10f87acba",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "51727161-8915-6af5-b837-d55122795f65",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "4e0706cb-643b-6b43-a192-4d0549711869",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T1 / P2",
				mechanicTime = 374.8,
				name = "[T1] Reprisal - Double Rocket Punch",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = -1,
				timerStartOffset = -3.3,
				uuid = "39719edf-1af3-c1f1-aa87-3943badba8e8",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T2 ",
				uuid = "7483ebef-870d-d085-9fb7-6889793b3ed5",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T2 ",
				name = " P2",
				uuid = "4a2af1c4-9a5b-4e58-b44c-59cdf8972b15",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"07b7b79b-1c61-b8f8-ac71-f1a66d8616e3",
									true,
								},
								
								{
									"8e8461b9-643b-91f8-b9a5-aec54530af75",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Rampart",
							uuid = "6be710c5-3922-87a9-9e85-c7aa63ad0f1e",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "07b7b79b-1c61-b8f8-ac71-f1a66d8616e3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "8e8461b9-643b-91f8-b9a5-aec54530af75",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T2 / P2",
				mechanicTime = 374.8,
				name = "[T2] Rampart - Double Rocket Punch",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = -3.8,
				timerStartOffset = -5.3,
				uuid = "a151caea-607f-9e0f-81fd-3e6f668f29eb",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"08a9e526-0d75-cd9f-9b95-33157720c787",
									true,
								},
								
								{
									"369a447b-8ed9-f874-9f44-b41867c6b577",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HolySheltron",
							uuid = "4aeb2c93-bea7-b07e-801e-32f129db8b5f",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "08a9e526-0d75-cd9f-9b95-33157720c787",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "369a447b-8ed9-f874-9f44-b41867c6b577",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T2 / P2",
				mechanicTime = 374.8,
				name = "[T2] Sheltron - Double Rocket Punch",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = -2.4,
				timerStartOffset = -3.7,
				uuid = "0fd9bb31-0a4e-ad57-a9c1-6e63a2aba2dc",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DPS ",
				uuid = "0a00fcb0-843b-a385-b6b1-dfbfa71bb635",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " M1",
				uuid = "935f28aa-c2ea-4b03-8bb5-8ee467afaac3",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"d87cb1d5-06cc-554d-b7e9-ebb0388b1af3",
									true,
								},
								
								{
									"4e2d5464-8545-02a7-b323-8369d0421b45",
									true,
								},
							},
							gVar = "ACR_TensorViper3_Hotbar_Feint",
							uuid = "fefdca3e-b19b-ae72-b81f-9c63bd88aaa2",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"M1\" or false",
							name = "Assigned M1",
							uuid = "d87cb1d5-06cc-554d-b7e9-ebb0388b1af3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local target = TensorCore.mGetTarget()\nreturn target and target.contentid == 9216 or false",
							name = "Brute Justice selected",
							uuid = "4e2d5464-8545-02a7-b323-8369d0421b45",
							version = 3,
						},
					},
				},
				displayPath = "DPS / M1",
				mechanicTime = 374.8,
				name = "[M1] Feint - Double Rocket Punch",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = -1.3,
				timerStartOffset = -4.3,
				uuid = "48f2474a-850a-72b3-9154-e76cef00fb84",
				version = 2,
			},
		},
	},
	[83] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior ",
				uuid = "023288a6-b0f7-4fde-a51f-cdb68111f585",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T2 ",
				uuid = "e682205b-5205-0c6e-ab54-c6585026b0f0",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T2 ",
				name = " P2",
				uuid = "dd9c4d2f-1443-358e-b025-509ea8f3b102",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"25289edb-c598-fed4-bc78-1f6801a92b2b",
									true,
								},
								
								{
									"5d993292-843a-38a9-8e9e-6de2cf833670",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Reprisal",
							uuid = "1b4197ae-2481-cc65-b454-037445e0414d",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "25289edb-c598-fed4-bc78-1f6801a92b2b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "5d993292-843a-38a9-8e9e-6de2cf833670",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T2 / P2",
				mechanicTime = 395,
				name = "[T2] Reprisal - Post-Gavel Whirlwinds",
				timeRange = true,
				timelineIndex = 83,
				timerEndOffset = -0.6,
				timerStartOffset = -1.3,
				uuid = "d34f58be-5b67-97d6-8d9e-062fa0b331d1",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker ",
				uuid = "13ff0b32-494f-96d1-b799-d9058f3291ba",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T2 ",
				uuid = "d820413f-ba87-aade-9f5b-41558d8e4205",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T2 ",
				name = " P2",
				uuid = "429afc28-b33e-573c-9b4a-a641d13c6401",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"56e2d29a-8d06-c6d0-9bf8-41bccb271a39",
									true,
								},
								
								{
									"fe2631c7-6d5c-126e-8e93-d9178ee7d885",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "138c347c-f1d2-ffd6-ac50-205f2e02d2e1",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "56e2d29a-8d06-c6d0-9bf8-41bccb271a39",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "fe2631c7-6d5c-126e-8e93-d9178ee7d885",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T2 / P2",
				mechanicTime = 395,
				name = "[T2] Reprisal - Post-Gavel Whirlwinds",
				timeRange = true,
				timelineIndex = 83,
				timerEndOffset = -0.6,
				timerStartOffset = -1.3,
				uuid = "c95c821e-c8d3-2063-bc58-f1dad6ae79a6",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight ",
				uuid = "d473866a-46cd-896b-99fb-ce417812e19d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T2 ",
				uuid = "661d722b-f91a-50e8-a6fa-affa78fb96af",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T2 ",
				name = " P2",
				uuid = "99040da3-815c-f82d-82b7-c17ce50d32c8",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"4a43044b-a92e-987a-9fb9-6bbfeb3b6f25",
									true,
								},
								
								{
									"0054522a-e32a-a0bf-b575-7f74d4ad95ab",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_Reprisal",
							uuid = "7d950217-f488-ea91-8c56-809b4a2ea75e",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "4a43044b-a92e-987a-9fb9-6bbfeb3b6f25",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "0054522a-e32a-a0bf-b575-7f74d4ad95ab",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T2 / P2",
				mechanicTime = 395,
				name = "[T2] Reprisal - Post-Gavel Whirlwinds",
				timeRange = true,
				timelineIndex = 83,
				timerEndOffset = -0.6,
				timerStartOffset = -1.3,
				uuid = "63eaa98d-c4ad-70dd-a4f5-3e2686b40642",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin ",
				uuid = "ac05938d-2b5d-e293-99df-02319d296f1e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T2 ",
				uuid = "877470d6-779a-4570-977a-75ef896043a2",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T2 ",
				name = " P2",
				uuid = "fcd9b6be-f078-1ea0-934e-f1f7a3af8554",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"b05f6cb5-13fb-6bca-8c44-45dad3a8f6f2",
									true,
								},
								
								{
									"453b9239-246a-3444-adc9-b9ddf4cd30a6",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Reprisal",
							uuid = "15a24069-6784-36e7-bbaf-4485c555a620",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "b05f6cb5-13fb-6bca-8c44-45dad3a8f6f2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "453b9239-246a-3444-adc9-b9ddf4cd30a6",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T2 / P2",
				mechanicTime = 395,
				name = "[T2] Reprisal - Post-Gavel Whirlwinds",
				timeRange = true,
				timelineIndex = 83,
				timerEndOffset = -0.6,
				timerStartOffset = -1.3,
				uuid = "b84d350f-edae-fa4f-8a81-7276011d9b80",
				version = 2,
			},
		},
	},
	[96] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior ",
				uuid = "ad8adafb-ac41-7caf-b436-2a14fa07cc88",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T1 ",
				uuid = "444d124c-3f3a-4954-9a4a-7491abfdf6dc",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T1 ",
				name = " P3",
				uuid = "4fb4f412-3e65-6770-bd41-001ecc412ede",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"d54475ea-325b-fca4-a07e-af01cffb4f5d",
									true,
								},
								
								{
									"eb8de207-1c61-abe0-9a56-e61b26954221",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Holmgang",
							uuid = "60eae64a-fdbc-8abc-9fd3-8ba51fd9a958",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "d54475ea-325b-fca4-a07e-af01cffb4f5d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "eb8de207-1c61-abe0-9a56-e61b26954221",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T1 / P3",
				mechanicTime = 521.5,
				name = "[T1] Holmgang - Chastening Heat 1 and Spears",
				timeRange = true,
				timelineIndex = 96,
				timerEndOffset = -0.6,
				timerStartOffset = -2,
				uuid = "d454c8bd-f9e4-20cb-a9d0-1505b9dfcf88",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T2 ",
				uuid = "abf69434-3524-0723-a393-d0fe40c9d430",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T2 ",
				name = " P3",
				uuid = "f242778f-2efe-a3a0-b287-e3ba7fae60e6",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a8efb4bd-d619-0ef8-af7d-8e53f1f8c670",
									true,
								},
								
								{
									"c3614451-410c-e6a8-9596-f1bf197177fc",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Holmgang",
							uuid = "b5f385da-51eb-a39f-92a0-abc653a57339",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "a8efb4bd-d619-0ef8-af7d-8e53f1f8c670",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "c3614451-410c-e6a8-9596-f1bf197177fc",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T2 / P3",
				mechanicTime = 521.5,
				name = "[T2] Holmgang - Chastening Heat 1 and Spears",
				timeRange = true,
				timelineIndex = 96,
				timerEndOffset = -0.6,
				timerStartOffset = -2,
				uuid = "7038437f-ae4b-8b10-b270-a8c46bb6da9e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker ",
				uuid = "b0b9bbd6-7d7e-09b8-b22e-57d36b4a9f10",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T1 ",
				uuid = "931dd6a3-106f-b803-92d4-25a4fb22a243",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T1 ",
				name = " P3",
				uuid = "ecf9ad90-e188-a934-9b83-d3a7dfe89eb4",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a6bc6153-36bd-2855-8a35-23204cc6c224",
									true,
								},
								
								{
									"9fad3b68-4d6a-1f51-95f7-a3a0301e737c",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Superbolide",
							uuid = "a80520ba-ed26-c21d-a46d-a9630bf61d31",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "a6bc6153-36bd-2855-8a35-23204cc6c224",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "9fad3b68-4d6a-1f51-95f7-a3a0301e737c",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T1 / P3",
				mechanicTime = 521.5,
				name = "[T1] Superbolide - Chastening Heat 1 and Spears",
				timeRange = true,
				timelineIndex = 96,
				timerEndOffset = -0.6,
				timerStartOffset = -2,
				uuid = "a3cde6b7-2dc4-b826-a7e6-e0c9a7382bba",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight ",
				uuid = "19b2cdfa-39e6-475c-991b-63f8e78aad56",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T1 ",
				uuid = "eca943dd-ca72-7ab4-bbf5-123878999bdf",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T1 ",
				name = " P3",
				uuid = "4b68255e-26d0-ad93-9889-56e121bd33cf",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"d6f4b027-5750-2315-8356-17f0effe4fc3",
									true,
								},
								
								{
									"3a1c3eae-ea42-6bd4-89af-e6e98afb93ab",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_LivingDead",
							uuid = "616711f2-bad6-b9ce-a0b6-e542267af40e",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "d6f4b027-5750-2315-8356-17f0effe4fc3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "3a1c3eae-ea42-6bd4-89af-e6e98afb93ab",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T1 / P3",
				mechanicTime = 521.5,
				name = "[T1] Living Dead - Chastening Heat 1 and Spears",
				timeRange = true,
				timelineIndex = 96,
				timerEndOffset = -0.6,
				timerStartOffset = -2,
				uuid = "3c06d496-5c5c-26b4-a22b-a9ce4faeb944",
				version = 2,
			},
		},
	},
	[103] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "DPS ",
				uuid = "a86c51c5-2129-41b0-b00b-bb83661ef1a7",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " R1",
				uuid = "0af60d96-f605-c88c-80fa-fa89f669d35f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"fb64a260-db00-681a-9b9b-e1335a91cc32",
									true,
								},
							},
							gVar = "ACR_TensorRequiem4_Hotbar_NaturesMinne",
							uuid = "d7ec15db-47d1-832a-b4de-30748a082372",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R1\" or false",
							name = "Assigned R1",
							uuid = "fb64a260-db00-681a-9b9b-e1335a91cc32",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R1",
				mechanicTime = 558.2,
				name = "[R1] Nature's Minne - Inception crystal explosions",
				timeRange = true,
				timelineIndex = 103,
				timerEndOffset = 4.3,
				timerStartOffset = 1.3,
				uuid = "5669bd54-17f5-09ce-9a98-b73f0683d33a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"63044e1c-07c3-6f19-8281-3e83a3c5dd1b",
									true,
								},
							},
							gVar = "ACR_RikuDNC3_Hotbar_ShieldSamba",
							uuid = "9b55c96f-1544-2eaa-a363-c804c8e2ad63",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R1\" or false",
							name = "Assigned R1",
							uuid = "63044e1c-07c3-6f19-8281-3e83a3c5dd1b",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R1",
				mechanicTime = 558.2,
				name = "[R1] ShieldSamba - Inception crystals",
				timeRange = true,
				timelineIndex = 103,
				timerEndOffset = 4.5,
				timerStartOffset = 1.3,
				uuid = "8a014516-0830-78a4-b5ff-386138ffbc81",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " R2",
				uuid = "66521d37-3a12-fbe2-9092-b0a1d446237d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"072708b6-25bc-c63f-af2b-edb6dc2732ee",
									true,
								},
								
								{
									"e774a13d-0441-80f4-af2f-135ffc2b6f5c",
									true,
								},
							},
							gVar = "ACR_TensorNuke4_Hotbar_Manaward",
							uuid = "f3b9797e-0592-9ffe-97f7-dde9f976b3a6",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R2\" or false",
							name = "Assigned R2",
							uuid = "e774a13d-0441-80f4-af2f-135ffc2b6f5c",
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
							name = "Black Mage",
							uuid = "072708b6-25bc-c63f-af2b-edb6dc2732ee",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R2",
				mechanicTime = 558.2,
				name = "[R2] Manaward - Inception crystal explosions",
				timeRange = true,
				timelineIndex = 103,
				timerEndOffset = 3.8,
				timerStartOffset = 0.8,
				uuid = "431a1faa-7954-cff2-a869-2951fd38c599",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"9120a71f-0d19-1f3f-b5e4-f47710f00a21",
									true,
								},
								
								{
									"ca568aab-4f73-91e6-85ae-f35d4e206ead",
									true,
								},
							},
							gVar = "ACR_RikuPCT3_Hotbar_TemperaCoat",
							uuid = "2078df6f-2de6-f69c-b0eb-cfb91e891da0",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R2\" or false",
							name = "Assigned R2",
							uuid = "ca568aab-4f73-91e6-85ae-f35d4e206ead",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PICTOMANCER",
							name = "Pictomancer",
							uuid = "9120a71f-0d19-1f3f-b5e4-f47710f00a21",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R2",
				mechanicTime = 558.2,
				name = "[R2] TemperaCoat - Inception crystal explosions",
				timeRange = true,
				timelineIndex = 103,
				timerEndOffset = 3.8,
				timerStartOffset = 0.8,
				uuid = "0d3fe23d-c17f-0c57-ac62-20c9805f6d81",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " Ninja",
				uuid = "28c017e4-82d7-bfc6-ba60-aab06fa15d13",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"20930099-90be-910e-bb9e-506c012765ac",
									true,
								},
								
								{
									"5a18ed67-97bf-9311-b2b9-3c1a505788c7",
									true,
								},
							},
							gVar = "ACR_RikuNIN3_Hotbar_ShadeShift",
							uuid = "1093f0ac-d123-32e2-83f2-7c3afb7301e9",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif not roster or not roster.current() then return false end\nlocal slot = roster.mySlot()\nreturn slot == \"M1\" or slot == \"M2\"",
							name = "Assigned M1 or M2",
							uuid = "5a18ed67-97bf-9311-b2b9-3c1a505788c7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "NINJA",
							name = "Ninja",
							uuid = "20930099-90be-910e-bb9e-506c012765ac",
							version = 3,
						},
					},
				},
				displayPath = "DPS / Ninja",
				mechanicTime = 558.2,
				name = "[NIN] Shade Shift - Inception crystal explosions",
				timeRange = true,
				timelineIndex = 103,
				timerEndOffset = 3.8,
				timerStartOffset = 0.8,
				uuid = "70e0d933-82e1-457d-a2f2-3d4ed9842f1f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " Monk",
				uuid = "179e9ecc-278f-785e-b00f-ca2ef3702d8f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"5a4715fa-e75c-7159-a4d3-6b7a7ad98122",
									true,
								},
								
								{
									"9b02d9d2-5071-1021-a3ea-ca1e66cc2873",
									true,
								},
							},
							gVar = "ACR_RikuMNK3_Hotbar_Mantra",
							uuid = "d7215a4d-07cb-330a-93ce-d3b4cf0190b7",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif not roster or not roster.current() then return false end\nlocal slot = roster.mySlot()\nreturn slot == \"M1\" or slot == \"M2\"",
							name = "Assigned M1 or M2",
							uuid = "9b02d9d2-5071-1021-a3ea-ca1e66cc2873",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MONK",
							name = "Monk",
							uuid = "5a4715fa-e75c-7159-a4d3-6b7a7ad98122",
							version = 3,
						},
					},
				},
				displayPath = "DPS / Monk",
				mechanicTime = 558.2,
				name = "[MNK] Mantra - Inception crystal explosions",
				timeRange = true,
				timelineIndex = 103,
				timerEndOffset = 4.3,
				timerStartOffset = 1.3,
				uuid = "6714746c-7dec-05d2-a464-eca9f62ef698",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"7814311f-e2a9-1bc2-be04-1ccb37abd576",
									true,
								},
								
								{
									"e7bd4846-d261-e959-acaf-93804b2afff4",
									true,
								},
							},
							gVar = "ACR_RikuMNK3_Hotbar_RiddleOfEarth",
							uuid = "821e2a6b-730e-6af7-9767-5c49264f239c",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif not roster or not roster.current() then return false end\nlocal slot = roster.mySlot()\nreturn slot == \"M1\" or slot == \"M2\"",
							name = "Assigned M1 or M2",
							uuid = "e7bd4846-d261-e959-acaf-93804b2afff4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MONK",
							name = "Monk",
							uuid = "7814311f-e2a9-1bc2-be04-1ccb37abd576",
							version = 3,
						},
					},
				},
				displayPath = "DPS / Monk",
				mechanicTime = 558.2,
				name = "[MNK] Riddle of Earth - Inception crystal explosions",
				timeRange = true,
				timelineIndex = 103,
				timerEndOffset = 3.8,
				timerStartOffset = 0.8,
				uuid = "973e1829-43ee-9f07-92fe-b75d2536b238",
				version = 2,
			},
		},
	},
	[107] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin ",
				uuid = "392bd979-bdb6-60b1-aab6-56dd2b94094e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T1 ",
				uuid = "132cb9a5-346a-3b99-9ee7-2c2530c10745",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T1 ",
				name = " P3",
				uuid = "4d2557fe-55cd-456e-a724-cd8c17e0b34a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"b752299d-068f-7412-a885-0b449b0c919e",
									true,
								},
								
								{
									"c48643f6-4ccd-a34e-9b75-f2221cebc323",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_DivineVeil",
							uuid = "81247397-c3b2-74ec-ac7b-1c026d9c8ee3",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "b752299d-068f-7412-a885-0b449b0c919e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "c48643f6-4ccd-a34e-9b75-f2221cebc323",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T1 / P3",
				mechanicTime = 581,
				name = "[T1] Divine Veil - Inception crystals",
				timeRange = true,
				timelineIndex = 107,
				timerEndOffset = -3.1,
				timerStartOffset = -4.8,
				uuid = "a8d59ca4-7543-b0c3-bef2-e2d9aec21b5f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T2 ",
				uuid = "f607979a-c89b-b4ed-820e-fd692853c929",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T2 ",
				name = " P3",
				uuid = "49725ed0-b2e3-a890-861e-eee9136b1cde",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"7c583038-5032-952c-91df-4b3a5b6b7667",
									true,
								},
								
								{
									"79a2c0cb-3e63-02aa-b009-c7255992df15",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_DivineVeil",
							uuid = "8d311a0c-6a28-1955-b816-6af01fdf1ecb",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "7c583038-5032-952c-91df-4b3a5b6b7667",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "79a2c0cb-3e63-02aa-b009-c7255992df15",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T2 / P3",
				mechanicTime = 581,
				name = "[T2] Divine Veil - Inception crystals",
				timeRange = true,
				timelineIndex = 107,
				timerEndOffset = -1,
				timerStartOffset = -2.9,
				uuid = "6797795c-aa70-9b94-86d2-2ea2c62cc542",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior ",
				uuid = "ed7dc6c3-6394-713f-8e0e-94960d687838",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T1 ",
				uuid = "92a39a9c-5077-79db-b02a-ef1651fc4aef",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T1 ",
				name = " P3",
				uuid = "3b5a5e58-6f3f-463d-b180-1b2e6a4204c0",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"f696863e-d83c-596c-bf51-81d7d8f9206f",
									true,
								},
								
								{
									"8e6b8203-1586-6af0-8e54-388dcc6bb637",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_ShakeItOff",
							uuid = "2c2ce1ef-11fd-a13e-9019-7e8ba87fe100",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "f696863e-d83c-596c-bf51-81d7d8f9206f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "8e6b8203-1586-6af0-8e54-388dcc6bb637",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T1 / P3",
				mechanicTime = 581,
				name = "[T1] Shake It Off - Inception crystals",
				timeRange = true,
				timelineIndex = 107,
				timerEndOffset = -3.1,
				timerStartOffset = -4.8,
				uuid = "c4c39cee-6282-0002-8f7e-6adf77d406d2",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T2 ",
				uuid = "f4b161b7-e716-7526-9bfc-00bbc20ce42b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T2 ",
				name = " P3",
				uuid = "969618d0-ee8b-225e-b57b-9ba37b29a5cd",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"67eccac5-1350-f736-8ca7-9a5dd4094f17",
									true,
								},
								
								{
									"10311750-e6a8-458f-b523-49dff9bfbb7e",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_ShakeItOff",
							uuid = "704b3309-cdf1-e19d-a020-816f1e46ec1f",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "67eccac5-1350-f736-8ca7-9a5dd4094f17",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "10311750-e6a8-458f-b523-49dff9bfbb7e",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T2 / P3",
				mechanicTime = 581,
				name = "[T2] Shake It Off - Inception crystals",
				timeRange = true,
				timelineIndex = 107,
				timerEndOffset = -1,
				timerStartOffset = -2.9,
				uuid = "a982a6b7-9b3a-a4c1-a464-17ba7ac6ec46",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker ",
				uuid = "74857438-2028-caa1-ae41-5bdf6416fd37",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T1 ",
				uuid = "46b456fe-94b2-0c2b-8629-ca953931dbcc",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T1 ",
				name = " P3",
				uuid = "3aeecd0a-7f7c-a759-aba4-27397e2fde94",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"bd492573-1b2e-f67c-9145-0c99166f2bc5",
									true,
								},
								
								{
									"79a54892-226f-a513-9e08-524714f5e9c9",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "c1ffe1c6-dece-8f04-9789-724f3296296c",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "bd492573-1b2e-f67c-9145-0c99166f2bc5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "79a54892-226f-a513-9e08-524714f5e9c9",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T1 / P3",
				mechanicTime = 581,
				name = "[T1] Heart of Light - Inception crystals",
				timeRange = true,
				timelineIndex = 107,
				timerEndOffset = -3.1,
				timerStartOffset = -4.8,
				uuid = "0c1b2ce8-723f-be73-9e0e-0d90dba6e64e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T2 ",
				uuid = "2662bf52-bc9c-8d3c-8716-ebeebedd2b70",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T2 ",
				name = " P3",
				uuid = "8369693d-1290-1622-89b4-b295ce5072f5",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"48080548-b2bb-f4f4-9020-28aad81f3c87",
									true,
								},
								
								{
									"5142eb46-0989-36e2-84b3-81c2bcbe3e41",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "095f47d7-6cd4-bd51-bd0f-b2c918d7ccf6",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "48080548-b2bb-f4f4-9020-28aad81f3c87",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "5142eb46-0989-36e2-84b3-81c2bcbe3e41",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T2 / P3",
				mechanicTime = 581,
				name = "[T2] Heart of Light - Inception crystals",
				timeRange = true,
				timelineIndex = 107,
				timerEndOffset = -1,
				timerStartOffset = -2.9,
				uuid = "37e414ab-a5d6-0087-b68d-fd733ef1fdb2",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight ",
				uuid = "ab51ba28-4e92-8f4a-958e-c4cef7182a5f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T1 ",
				uuid = "657c4807-3f7d-acbc-b8de-670a0270eb05",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T1 ",
				name = " P3",
				uuid = "a63bfe0d-6a75-7b07-b351-d4296f69509a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"eb1fb629-4e17-3b77-834a-70c1f2ede1d4",
									true,
								},
								
								{
									"d51f4617-4145-f691-991f-cfba36a5710d",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_DarkMissionary",
							uuid = "4e7a2978-445a-0003-8a83-bf1e9e1c2445",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "eb1fb629-4e17-3b77-834a-70c1f2ede1d4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "d51f4617-4145-f691-991f-cfba36a5710d",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T1 / P3",
				mechanicTime = 581,
				name = "[T1] Dark Missionary - Inception crystals",
				timeRange = true,
				timelineIndex = 107,
				timerEndOffset = -20.2,
				timerStartOffset = -21.5,
				uuid = "fa5b1e05-4275-a086-a4bb-4b32f7bafa09",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T2 ",
				uuid = "0e6c5f1b-f3e7-93dc-bd90-1b4898a6f7d6",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T2 ",
				name = " P3",
				uuid = "bbb0bcc5-df76-6531-8d1c-3fa8e5b83069",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"e737ad43-b7b2-707b-a9db-50591a736356",
									true,
								},
								
								{
									"c68434ac-7e98-9683-b8c5-ad5880b9c88e",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_DarkMissionary",
							uuid = "bc441317-9ff5-738b-89e9-80567ceb8716",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "e737ad43-b7b2-707b-a9db-50591a736356",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "c68434ac-7e98-9683-b8c5-ad5880b9c88e",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T2 / P3",
				mechanicTime = 581,
				name = "[T2] Dark Missionary - Inception crystals",
				timeRange = true,
				timelineIndex = 107,
				timerEndOffset = -17.8,
				timerStartOffset = -20,
				uuid = "a6607bfe-b494-1f7b-8b97-b711e7746db8",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DPS ",
				uuid = "88517e39-ea07-5d26-bb8c-53bb816f5060",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " R1",
				uuid = "c523ec10-85b4-235a-9764-46f66f4bf2d4",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a4e180a8-7701-0f0a-9ab9-0759e5355211",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_Hotbar_Tactician",
							uuid = "b3383cbc-e990-eb4e-bac1-ad3c493e9a02",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R1\" or false",
							name = "Assigned R1",
							uuid = "a4e180a8-7701-0f0a-9ab9-0759e5355211",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R1",
				mechanicTime = 581,
				name = "[R1] Tactician - Inception crystals",
				timeRange = true,
				timelineIndex = 107,
				timerEndOffset = -18.3,
				timerStartOffset = -21.5,
				uuid = "6f0aaeed-fddf-974c-8e0d-19cbd31333b4",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"b6e44edc-7307-5c6f-98fb-89d50a9f93a4",
									true,
								},
							},
							gVar = "ACR_TensorRequiem4_Hotbar_Troubadour",
							uuid = "f8d3eac9-7036-10d5-aa4d-e22407d083f5",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R1\" or false",
							name = "Assigned R1",
							uuid = "b6e44edc-7307-5c6f-98fb-89d50a9f93a4",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R1",
				mechanicTime = 581,
				name = "[R1] Troubadour - Inception crystals",
				timeRange = true,
				timelineIndex = 107,
				timerEndOffset = -18.3,
				timerStartOffset = -21.5,
				uuid = "5eac5ec2-05c7-607b-bc95-cf7f56e3e0ff",
				version = 2,
			},
		},
	},
	[115] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin ",
				uuid = "c46601d8-6118-9dcf-8312-eacdea0a0f95",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T1 ",
				uuid = "fd03b581-6c49-9524-bc4d-667424619f8d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T1 ",
				name = " P3",
				uuid = "ed9b1a35-e352-ea27-9617-9fef49672e93",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"145034be-bb27-e85f-9657-2f3ff8801b45",
									true,
								},
								
								{
									"4982391f-6094-f907-9008-5fceec79d271",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HallowedGround",
							uuid = "7e0ee2ef-d6b6-884a-9b8a-a47fba1fba51",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "145034be-bb27-e85f-9657-2f3ff8801b45",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "4982391f-6094-f907-9008-5fceec79d271",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T1 / P3",
				mechanicTime = 610.9,
				name = "[T1] Hallowed Ground - Chastening Heat 2 and Spears",
				timeRange = true,
				timelineIndex = 115,
				timerEndOffset = -0.5,
				timerStartOffset = -0.9,
				uuid = "a4c387b8-ae6d-8ba7-b087-4acbcd964e87",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T2 ",
				uuid = "9b19c077-e06a-0a28-a25a-f31f27848898",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T2 ",
				name = " P3",
				uuid = "48be6a18-ac2e-0a4f-978d-ff65f788fabf",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"b1420431-ab1d-ca39-8a90-833589a34eaa",
									true,
								},
								
								{
									"9e245060-9755-1c45-a255-9d086a6bf291",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HallowedGround",
							uuid = "e6f58575-5298-d1c9-8ec2-2cdc4a80f54c",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "b1420431-ab1d-ca39-8a90-833589a34eaa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "9e245060-9755-1c45-a255-9d086a6bf291",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T2 / P3",
				mechanicTime = 610.9,
				name = "[T2] Hallowed Ground - Chastening Heat 2 and Spears",
				timeRange = true,
				timelineIndex = 115,
				timerEndOffset = -0.5,
				timerStartOffset = -0.9,
				uuid = "d64ea7a0-6a55-549b-b87f-57315b583c84",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker ",
				uuid = "6a6aa977-93e1-4a23-bd63-0ddbfe6991ed",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T2 ",
				uuid = "9c51f6c8-0ce8-6747-b734-b80fd31fd44c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T2 ",
				name = " P3",
				uuid = "d805621c-fddd-184d-bc25-f4d8300ad63a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"fbc8324f-fabd-5309-a23a-59921a269af9",
									true,
								},
								
								{
									"52e23301-8030-178b-871c-9369cb25e165",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Superbolide",
							uuid = "97b2a8ee-95ea-72b8-8e99-b5cb229a690d",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "fbc8324f-fabd-5309-a23a-59921a269af9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "52e23301-8030-178b-871c-9369cb25e165",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T2 / P3",
				mechanicTime = 610.9,
				name = "[T2] Superbolide - Chastening Heat 2 and Spears",
				timeRange = true,
				timelineIndex = 115,
				timerEndOffset = -0.5,
				timerStartOffset = -0.9,
				uuid = "c288f2d3-2c6a-2c05-90bb-4e8703c0dc49",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight ",
				uuid = "efc8e994-2fc5-4d66-95cc-2e9a523de82c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T2 ",
				uuid = "bd096b09-b650-93de-8229-8c63948011ea",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T2 ",
				name = " P3",
				uuid = "97ac0ce3-5a64-71ef-b7c5-b93fe6e44991",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"b1ddaa78-c86e-227d-bbe3-7a54650bac90",
									true,
								},
								
								{
									"b7e3b33b-9cd2-0c5a-8730-1ebb0b0f6d8e",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_LivingDead",
							uuid = "52fe51b3-b817-5951-a504-11a423d5536c",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "b1ddaa78-c86e-227d-bbe3-7a54650bac90",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "b7e3b33b-9cd2-0c5a-8730-1ebb0b0f6d8e",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T2 / P3",
				mechanicTime = 610.9,
				name = "[T2] Living Dead - Chastening Heat 2 and Spears",
				timeRange = true,
				timelineIndex = 115,
				timerEndOffset = -0.5,
				timerStartOffset = -0.9,
				uuid = "bc5fd4df-2638-5d31-8e24-6240d7eb9131",
				version = 2,
			},
		},
	},
	[143] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "DPS ",
				uuid = "2148db20-64b3-560b-af85-f5307f80e297",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " Reaper",
				uuid = "3da0d773-a42e-6a43-8de0-0e9100bc66d4",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"e93fa708-84d6-ad67-9716-180310f158da",
									true,
								},
								
								{
									"51c3cf5d-f39f-f88f-a309-ebfe08aa8f62",
									true,
								},
							},
							gVar = "ACR_TensorReaper4_Hotbar_ArcaneCrest",
							uuid = "df2f883c-a49a-3aeb-bd1d-ecd3f5550ada",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif not roster or not roster.current() then return false end\nlocal slot = roster.mySlot()\nreturn slot == \"M1\" or slot == \"M2\"",
							name = "Assigned M1 or M2",
							uuid = "51c3cf5d-f39f-f88f-a309-ebfe08aa8f62",
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
							name = "Reaper",
							uuid = "e93fa708-84d6-ad67-9716-180310f158da",
							version = 3,
						},
					},
				},
				displayPath = "DPS / Reaper",
				mechanicTime = 682.9,
				name = "[RPR] Arcane Crest - Mega Holy 1",
				timeRange = true,
				timelineIndex = 143,
				timerEndOffset = -1.1,
				timerStartOffset = -3.4,
				uuid = "694bf94e-c217-982e-bcd6-505944acee6c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " Samurai",
				uuid = "20e4358a-9090-05bf-9516-a4f06e59fd52",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"7bdf1a95-95af-7e7d-a108-bc7ef0d6977a",
									true,
								},
								
								{
									"864c8ca0-775d-0452-a037-5b10e13ede8c",
									true,
								},
							},
							gVar = "ACR_TensorWeeb3_Hotbar_Tengetsu",
							uuid = "9221ad20-371f-c786-b125-90d24b4b1173",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif not roster or not roster.current() then return false end\nlocal slot = roster.mySlot()\nreturn slot == \"M1\" or slot == \"M2\"",
							name = "Assigned M1 or M2",
							uuid = "864c8ca0-775d-0452-a037-5b10e13ede8c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "SAMURAI",
							name = "Samurai",
							uuid = "7bdf1a95-95af-7e7d-a108-bc7ef0d6977a",
							version = 3,
						},
					},
				},
				displayPath = "DPS / Samurai",
				mechanicTime = 682.9,
				name = "[SAM] Third Eye - Mega Holy 1",
				timeRange = true,
				timelineIndex = 143,
				timerEndOffset = -1,
				timerStartOffset = -3,
				uuid = "ab78874d-ecc2-04e4-bc4f-ed67bac345a0",
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
				name = "Paladin ",
				uuid = "618e642a-25f8-a272-9884-52728315c273",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T1 ",
				uuid = "a5bdbf18-1112-e88c-9c00-0b714c0098d6",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T1 ",
				name = " P3",
				uuid = "f15fe782-b50a-ad47-809b-c7e48d69f626",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"687b1135-566f-3142-a5e3-d8b81d56700f",
									true,
								},
								
								{
									"7b05bdb4-3392-2f72-b32b-eae8d7c1b5f3",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Reprisal",
							uuid = "284c50bc-6db3-bb7e-9b5b-e8d1560b4ad3",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "687b1135-566f-3142-a5e3-d8b81d56700f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "7b05bdb4-3392-2f72-b32b-eae8d7c1b5f3",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T1 / P3",
				mechanicTime = 690,
				name = "[T1] Reprisal - Mega Holy pair",
				timeRange = true,
				timelineIndex = 144,
				timerEndOffset = -7.9,
				timerStartOffset = -8.6,
				uuid = "3678c3ca-8dd4-70c2-9386-65d24c2c28e2",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior ",
				uuid = "5993cc1c-d521-1244-84aa-4bf4b01c3ffa",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T1 ",
				uuid = "bb91d796-650f-0234-bffb-a03360ecbd3e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T1 ",
				name = " P3",
				uuid = "293abce2-c186-5ead-94e1-f25f5cc23ce3",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"db5d3a08-19f3-a893-a91e-c0c82970a891",
									true,
								},
								
								{
									"d5b4864b-7be6-250a-a5ee-3340adb16ada",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Reprisal",
							uuid = "d4d4842a-c4ee-1e40-bc99-617c1a9d9abe",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "db5d3a08-19f3-a893-a91e-c0c82970a891",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "d5b4864b-7be6-250a-a5ee-3340adb16ada",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T1 / P3",
				mechanicTime = 690,
				name = "[T1] Reprisal - Mega Holy pair",
				timeRange = true,
				timelineIndex = 144,
				timerEndOffset = -7.9,
				timerStartOffset = -8.6,
				uuid = "dfe0d79e-00a8-31ad-b2d5-bbbd75e7738a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker ",
				uuid = "da778b72-1ef9-dbff-8857-00a753e7a196",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T1 ",
				uuid = "7d408720-d427-e4aa-b8e0-e52ca4eb3c19",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T1 ",
				name = " P3",
				uuid = "8d97b805-1f89-7601-a8c8-1f64659874a3",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"069983c2-b648-ef4f-9bf1-4c0671fc24be",
									true,
								},
								
								{
									"4d5d0e09-40c3-0bb9-8dfe-51fbe3c18cc8",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "8eb9b070-7480-44c9-92fe-85057b68ed67",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "069983c2-b648-ef4f-9bf1-4c0671fc24be",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "4d5d0e09-40c3-0bb9-8dfe-51fbe3c18cc8",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T1 / P3",
				mechanicTime = 690,
				name = "[T1] Reprisal - Mega Holy pair",
				timeRange = true,
				timelineIndex = 144,
				timerEndOffset = -7.9,
				timerStartOffset = -8.6,
				uuid = "d3d52af5-a209-c5cc-90da-24adb0f59d72",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight ",
				uuid = "208090ba-f939-fe5c-94ea-19da7901bde3",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T1 ",
				uuid = "151d04ae-96c1-02d9-a98a-09d08380bc28",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T1 ",
				name = " P3",
				uuid = "fb983fae-ee63-b3e8-a045-386721aac51a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"401c896f-ec32-0dee-a729-34fe59e429d5",
									true,
								},
								
								{
									"22b6e181-90b5-91ed-b51a-34041a14347f",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_Reprisal",
							uuid = "0b82cb82-f5ec-7e7e-947b-1582ae845cdd",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "401c896f-ec32-0dee-a729-34fe59e429d5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "22b6e181-90b5-91ed-b51a-34041a14347f",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T1 / P3",
				mechanicTime = 690,
				name = "[T1] Reprisal - Mega Holy pair",
				timeRange = true,
				timelineIndex = 144,
				timerEndOffset = -7.9,
				timerStartOffset = -8.6,
				uuid = "70b4baf4-1c1a-331a-97de-74feb189a086",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DPS ",
				uuid = "0d0da79b-02e0-8376-b5c2-320abd25c3f5",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " R1",
				uuid = "668d9272-9ed1-dae1-bbed-106c78cb95b6",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"30d9e815-8fd0-ba65-ad4f-f794780bd3dc",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_Hotbar_Dismantle",
							uuid = "973db798-ebc9-7a8a-a884-c4272ba03a67",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R1\" or false",
							name = "Assigned R1",
							uuid = "30d9e815-8fd0-ba65-ad4f-f794780bd3dc",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R1",
				mechanicTime = 690,
				name = "[R1] Dismantle - Mega Holy pair",
				timeRange = true,
				timelineIndex = 144,
				timerEndOffset = -7.9,
				timerStartOffset = -9,
				uuid = "9a0b693d-563d-7574-bd2f-3f6307964b95",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " R2",
				uuid = "80dd8876-9fe8-d12d-8b52-34392a039ffc",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"7fac123a-39e8-9406-bc28-ee34435c14ad",
									true,
								},
								
								{
									"fbc30e04-0a66-8968-892f-40b5e2835372",
									true,
								},
							},
							gVar = "ACR_TensorNuke4_Hotbar_Addle",
							uuid = "93abe1b7-0c16-8fa9-9a0b-3be66ee2f67c",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R2\" or false",
							name = "Assigned R2",
							uuid = "7fac123a-39e8-9406-bc28-ee34435c14ad",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local target = TensorCore.mGetTarget()\nreturn target and target.contentid == 9220 or false",
							name = "Alexander Prime selected",
							uuid = "fbc30e04-0a66-8968-892f-40b5e2835372",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R2",
				mechanicTime = 690,
				name = "[R2] Addle - Mega Holy pair",
				timeRange = true,
				timelineIndex = 144,
				timerEndOffset = -8,
				timerStartOffset = -9.2,
				uuid = "4a905dcb-2b49-97d4-8f22-15c2fceead96",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"77fce9af-0c10-3ceb-9599-a54f9cab1620",
									true,
								},
								
								{
									"81759138-25bb-a64c-b7be-df7434c668ae",
									true,
								},
							},
							gVar = "ACR_TensorNuke4_Hotbar_Manaward",
							uuid = "7fec4c79-2fea-3185-954f-f8d81d87edd7",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R2\" or false",
							name = "Assigned R2",
							uuid = "81759138-25bb-a64c-b7be-df7434c668ae",
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
							name = "Black Mage",
							uuid = "77fce9af-0c10-3ceb-9599-a54f9cab1620",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R2",
				mechanicTime = 690,
				name = "[R2] Manaward - Mega Holy pair",
				timeRange = true,
				timelineIndex = 144,
				timerEndOffset = -8,
				timerStartOffset = -10,
				uuid = "36355725-2443-9467-bbbd-006fca2378d3",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"b98712e5-fc2f-081a-815d-e7cb56951c41",
									true,
								},
								
								{
									"f9191e5b-bdf4-bc28-8197-0f24ff225ff0",
									true,
								},
							},
							gVar = "ACR_RikuPCT3_Hotbar_TemperaCoat",
							uuid = "ba682eb2-c7df-2ece-b0e1-1bf43ff75643",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R2\" or false",
							name = "Assigned R2",
							uuid = "f9191e5b-bdf4-bc28-8197-0f24ff225ff0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PICTOMANCER",
							name = "Pictomancer",
							uuid = "b98712e5-fc2f-081a-815d-e7cb56951c41",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R2",
				mechanicTime = 690,
				name = "[R2] TemperaCoat - Mega Holy pair",
				timeRange = true,
				timelineIndex = 144,
				timerEndOffset = -8,
				timerStartOffset = -10,
				uuid = "e49f1b17-a66c-7af1-8850-0510080caee8",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " M1",
				uuid = "950264fc-0cc6-80e4-915d-75053d86fb8d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"cfe3edea-60a3-e410-9902-c4d42de6dcfb",
									true,
								},
								
								{
									"fd86e623-45d8-fe0e-93f0-36ec77b57f45",
									true,
								},
							},
							gVar = "ACR_TensorViper3_Hotbar_Feint",
							uuid = "d23c3611-e218-6b34-9da0-4d11b0acc665",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"M1\" or false",
							name = "Assigned M1",
							uuid = "cfe3edea-60a3-e410-9902-c4d42de6dcfb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local target = TensorCore.mGetTarget()\nreturn target and target.contentid == 9220 or false",
							name = "Alexander Prime selected",
							uuid = "fd86e623-45d8-fe0e-93f0-36ec77b57f45",
							version = 3,
						},
					},
				},
				displayPath = "DPS / M1",
				mechanicTime = 690,
				name = "[M1] Feint - Mega Holy pair",
				timeRange = true,
				timelineIndex = 144,
				timerEndOffset = -7.8,
				timerStartOffset = -9,
				uuid = "a26393c4-587d-9c39-b14d-415c14861768",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " Ninja",
				uuid = "705d8491-a1be-a539-a695-53b69b68168b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"6544249a-3531-19d3-9040-977a249cd383",
									true,
								},
								
								{
									"dae941c8-5d38-6c51-a4ae-39df1cd71118",
									true,
								},
							},
							gVar = "ACR_RikuNIN3_Hotbar_ShadeShift",
							uuid = "2523c1c4-2f81-c184-9e8e-1f90fa7bb18f",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif not roster or not roster.current() then return false end\nlocal slot = roster.mySlot()\nreturn slot == \"M1\" or slot == \"M2\"",
							name = "Assigned M1 or M2",
							uuid = "dae941c8-5d38-6c51-a4ae-39df1cd71118",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "NINJA",
							name = "Ninja",
							uuid = "6544249a-3531-19d3-9040-977a249cd383",
							version = 3,
						},
					},
				},
				displayPath = "DPS / Ninja",
				mechanicTime = 690,
				name = "[NIN] Shade Shift - Mega Holy pair",
				timeRange = true,
				timelineIndex = 144,
				timerEndOffset = -8,
				timerStartOffset = -10,
				uuid = "73c0f1e4-00d3-6813-9c31-7f234b5adbae",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " Monk",
				uuid = "f07e21f4-e674-fde5-bdda-7b6620a0e4dd",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"36fc1901-139b-d5db-8cee-4e32c695f9b2",
									true,
								},
								
								{
									"e69405c0-0d0c-62f6-a937-06c6d361fbab",
									true,
								},
							},
							gVar = "ACR_RikuMNK3_Hotbar_RiddleOfEarth",
							uuid = "ee0da51e-49d9-edc8-8ba4-59c8045d8105",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif not roster or not roster.current() then return false end\nlocal slot = roster.mySlot()\nreturn slot == \"M1\" or slot == \"M2\"",
							name = "Assigned M1 or M2",
							uuid = "e69405c0-0d0c-62f6-a937-06c6d361fbab",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MONK",
							name = "Monk",
							uuid = "36fc1901-139b-d5db-8cee-4e32c695f9b2",
							version = 3,
						},
					},
				},
				displayPath = "DPS / Monk",
				mechanicTime = 690,
				name = "[MNK] Riddle of Earth - Mega Holy pair",
				timeRange = true,
				timelineIndex = 144,
				timerEndOffset = -8,
				timerStartOffset = -10,
				uuid = "5579c9f4-be8b-4f14-bb68-7ff128f09397",
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
				name = "Paladin ",
				uuid = "8d047e52-8920-7e9f-a425-80a970395adc",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T1 ",
				uuid = "f1fd6955-3433-9dad-8e50-84ea0c1b23d3",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T1 ",
				name = " P3",
				uuid = "57b29a03-0eeb-669a-bc26-4bc32dae19fe",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"f49b8a17-dd5b-013b-b3f4-34dc6b11b0a7",
									true,
								},
								
								{
									"b7c49a3a-b100-9526-a8a6-32aa183cbe56",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_DivineVeil",
							uuid = "08d7855a-0a38-7a7f-b124-ae535164b808",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "f49b8a17-dd5b-013b-b3f4-34dc6b11b0a7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "b7c49a3a-b100-9526-a8a6-32aa183cbe56",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T1 / P3",
				mechanicTime = 705.7,
				name = "[T1] Divine Veil - J Waves 4 onward",
				timeRange = true,
				timelineIndex = 148,
				timerEndOffset = 13.7,
				timerStartOffset = 12.3,
				uuid = "59551b26-3624-9ecb-b94b-11a69759f8c7",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T2 ",
				uuid = "16bfb75c-ee2c-ad65-8297-22f7f0fca614",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T2 ",
				name = " P3",
				uuid = "cf10a017-6e66-59bb-9504-c095980ae07d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"d597e625-5bd4-7c4b-a900-f85bed3304b5",
									true,
								},
								
								{
									"f66014c4-ec47-b5c4-aac7-d810d6ccd73d",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Reprisal",
							uuid = "dde0414a-bd99-5aef-8839-77d19fcc2653",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "d597e625-5bd4-7c4b-a900-f85bed3304b5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "f66014c4-ec47-b5c4-aac7-d810d6ccd73d",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T2 / P3",
				mechanicTime = 705.7,
				name = "[T2] Reprisal - J Waves 4 onward",
				timeRange = true,
				timelineIndex = 148,
				timerEndOffset = 13.8,
				timerStartOffset = 12.4,
				uuid = "3c8b392b-0648-90f5-918d-48b35f43b181",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"14350eb1-f23b-6bf4-915b-f71abf2ec4fc",
									true,
								},
								
								{
									"05a60638-eca7-c641-8fd8-18ad1efcbafd",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_DivineVeil",
							uuid = "8e560fb5-19a7-21aa-bd66-6a1e5af99cdf",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "14350eb1-f23b-6bf4-915b-f71abf2ec4fc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "05a60638-eca7-c641-8fd8-18ad1efcbafd",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T2 / P3",
				mechanicTime = 705.7,
				name = "[T2] Divine Veil - J Waves 6 onward",
				timeRange = true,
				timelineIndex = 148,
				timerEndOffset = 19.8,
				timerStartOffset = 18.5,
				uuid = "170992fa-7a25-dbab-899e-12ff29cee6ed",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior ",
				uuid = "bc6604ce-0cb3-856a-a15e-0f82ae2932fe",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T1 ",
				uuid = "4e84f8e7-7f82-a7e3-b99e-e71b1f4a8e2d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T1 ",
				name = " P3",
				uuid = "4f737f86-d83f-6670-8d64-d4b548b90b2b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"06688ce4-7e02-0108-b59e-f051b72c1a80",
									true,
								},
								
								{
									"3826af4f-3ab8-7d40-8bfa-b52ea5fa5811",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_ShakeItOff",
							uuid = "beaed83c-6f59-7f6f-b3f7-6b766dc55638",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "06688ce4-7e02-0108-b59e-f051b72c1a80",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "3826af4f-3ab8-7d40-8bfa-b52ea5fa5811",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T1 / P3",
				mechanicTime = 705.7,
				name = "[T1] Shake It Off - J Waves 4 onward",
				timeRange = true,
				timelineIndex = 148,
				timerEndOffset = 13.7,
				timerStartOffset = 12.3,
				uuid = "f06d4aa1-9df7-8e2c-9c50-39f9a11189c8",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T2 ",
				uuid = "f34111f2-ca5f-3e7a-9946-5d4589cb5047",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T2 ",
				name = " P3",
				uuid = "a2805bf0-2db1-7612-b8c1-ef6d711bdcd8",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"826bc319-1c74-618e-a2e1-22e232612d9d",
									true,
								},
								
								{
									"841b7aef-c0b9-d192-b642-87b4824ca780",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Reprisal",
							uuid = "4404bfca-af0c-9963-84ed-c9c7a582305a",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "826bc319-1c74-618e-a2e1-22e232612d9d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "841b7aef-c0b9-d192-b642-87b4824ca780",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T2 / P3",
				mechanicTime = 705.7,
				name = "[T2] Reprisal - J Waves 4 onward",
				timeRange = true,
				timelineIndex = 148,
				timerEndOffset = 13.8,
				timerStartOffset = 12.4,
				uuid = "8aa4e22d-9025-c9d8-98e3-c4a688d87b82",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"262232be-69ba-b383-a15e-a716b1358ceb",
									true,
								},
								
								{
									"c535335a-ec9b-105d-a091-e551d1ecece1",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_ShakeItOff",
							uuid = "bc33d934-3863-773b-9f05-f6e0ea8956b1",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "262232be-69ba-b383-a15e-a716b1358ceb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "c535335a-ec9b-105d-a091-e551d1ecece1",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T2 / P3",
				mechanicTime = 705.7,
				name = "[T2] Shake It Off - J Waves 6 onward",
				timeRange = true,
				timelineIndex = 148,
				timerEndOffset = 19.8,
				timerStartOffset = 18.5,
				uuid = "95043d1a-4814-e943-93cc-e1e88d11ce65",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker ",
				uuid = "a1388870-2a08-a711-a307-f8e5795c4702",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T1 ",
				uuid = "db806b43-dc3d-4e2d-8113-4ad160d5fe2b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T1 ",
				name = " P3",
				uuid = "8b8ddfb1-63ae-6f99-804a-a9f2761a6b57",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"28ec67e7-b96d-d245-9606-03e58504dc4e",
									true,
								},
								
								{
									"0cf2ee7e-e6ba-c56e-88ca-f209dfd3c3e4",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "93ac8251-c440-e89f-a58d-1f9735a5060f",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "28ec67e7-b96d-d245-9606-03e58504dc4e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "0cf2ee7e-e6ba-c56e-88ca-f209dfd3c3e4",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T1 / P3",
				mechanicTime = 705.7,
				name = "[T1] Heart of Light - J Waves 4 onward",
				timeRange = true,
				timelineIndex = 148,
				timerEndOffset = 13.7,
				timerStartOffset = 12.3,
				uuid = "2456eec1-a2ed-665c-a6c5-790dd867fcea",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T2 ",
				uuid = "39d40a2c-dfc7-482e-ba58-907179285951",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T2 ",
				name = " P3",
				uuid = "d6fc15a8-9162-9106-8a68-ac4822d14680",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"8626bb9b-3fca-6c64-b2ea-48d3c8699a57",
									true,
								},
								
								{
									"5801d3a5-1f9e-4616-8972-d351ff3bb990",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "c44426fc-d408-78ae-a82c-c507c8250d2e",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "8626bb9b-3fca-6c64-b2ea-48d3c8699a57",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "5801d3a5-1f9e-4616-8972-d351ff3bb990",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T2 / P3",
				mechanicTime = 705.7,
				name = "[T2] Reprisal - J Waves 4 onward",
				timeRange = true,
				timelineIndex = 148,
				timerEndOffset = 13.8,
				timerStartOffset = 12.4,
				uuid = "3fedc8bc-2867-ba4e-ad5f-a626db3f6bab",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"eb8a3263-601b-2310-8c53-34a335887326",
									true,
								},
								
								{
									"ad420bc6-2428-cf8c-8e69-9c79699c9fd6",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "c551f1ef-83be-7139-8145-e0c3a016c65c",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "eb8a3263-601b-2310-8c53-34a335887326",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "ad420bc6-2428-cf8c-8e69-9c79699c9fd6",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T2 / P3",
				mechanicTime = 705.7,
				name = "[T2] Heart of Light - J Waves 6 onward",
				timeRange = true,
				timelineIndex = 148,
				timerEndOffset = 19.8,
				timerStartOffset = 18.5,
				uuid = "552b3cd8-4e38-604b-be17-ad2a9acd27f5",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight ",
				uuid = "ac7812c0-f060-e12e-adc1-e90dc3bb3abd",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T1 ",
				uuid = "b7abd67e-3c13-3efc-a9fd-11d5f4496e41",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T1 ",
				name = " P3",
				uuid = "3b0d6a3a-0132-cf27-83e5-31fa7350cc7b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"7d2aa0d9-d293-ed62-88ff-becf4e6aa20e",
									true,
								},
								
								{
									"d839b88c-ab38-a763-85ac-f349e951cc1d",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_DarkMissionary",
							uuid = "e090293a-53f7-3158-940d-1fca06350536",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "7d2aa0d9-d293-ed62-88ff-becf4e6aa20e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "d839b88c-ab38-a763-85ac-f349e951cc1d",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T1 / P3",
				mechanicTime = 705.7,
				name = "[T1] Dark Missionary - J Waves 4 onward",
				timeRange = true,
				timelineIndex = 148,
				timerEndOffset = 13.7,
				timerStartOffset = 12.3,
				uuid = "080c3358-cb4e-fd3f-9ee6-c960af3e7f14",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T2 ",
				uuid = "cefb0b2e-ca95-c78a-b7de-90c16c72a4a4",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T2 ",
				name = " P3",
				uuid = "e6563396-416c-134a-93e5-7dc1f74aa58b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"fdcb8d6d-b644-78c5-bf39-0bd385934879",
									true,
								},
								
								{
									"412edd16-1a91-9d3b-93c5-6654080ccc81",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_Reprisal",
							uuid = "332dba3e-39e9-142a-8b3a-c2c33755266b",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "fdcb8d6d-b644-78c5-bf39-0bd385934879",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "412edd16-1a91-9d3b-93c5-6654080ccc81",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T2 / P3",
				mechanicTime = 705.7,
				name = "[T2] Reprisal - J Waves 4 onward",
				timeRange = true,
				timelineIndex = 148,
				timerEndOffset = 13.8,
				timerStartOffset = 12.4,
				uuid = "a6b128bd-9cd7-d3e9-9b09-889d27a4ca73",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"912a9e4a-e849-dfc6-ac35-0cf05f323cf7",
									true,
								},
								
								{
									"43458a2d-1645-f273-97c1-440b3a9b0fe5",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_DarkMissionary",
							uuid = "10432012-f485-5b87-a7b4-3ed0115a37d1",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "912a9e4a-e849-dfc6-ac35-0cf05f323cf7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "43458a2d-1645-f273-97c1-440b3a9b0fe5",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T2 / P3",
				mechanicTime = 705.7,
				name = "[T2] Dark Missionary - J Waves 6 onward",
				timeRange = true,
				timelineIndex = 148,
				timerEndOffset = 19.8,
				timerStartOffset = 18.5,
				uuid = "17fc2217-7f9b-0248-af89-2167d6f88cac",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DPS ",
				uuid = "812d3df1-b8c0-9260-8573-d9f2a53948c0",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " R1",
				uuid = "772326e8-b5a5-1939-8d19-f0ba2b058d08",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"31eb904c-f2b5-bf31-9a0d-c5a1b4be64d1",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_Hotbar_Tactician",
							uuid = "0ffa3b04-0539-0988-af5b-847229895f43",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R1\" or false",
							name = "Assigned R1",
							uuid = "31eb904c-f2b5-bf31-9a0d-c5a1b4be64d1",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R1",
				mechanicTime = 705.7,
				name = "[R1] Tactician - J Waves 4 onward",
				timeRange = true,
				timelineIndex = 148,
				timerEndOffset = 13.8,
				timerStartOffset = 12.4,
				uuid = "27d6200d-8d67-88c6-a026-91d8f602c2c6",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"4652fa8d-254e-c8a2-9deb-1ed34b90c16e",
									true,
								},
							},
							gVar = "ACR_TensorRequiem4_Hotbar_Troubadour",
							uuid = "0cbd16fb-f2e2-cc6f-b757-8bee351a1bea",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R1\" or false",
							name = "Assigned R1",
							uuid = "4652fa8d-254e-c8a2-9deb-1ed34b90c16e",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R1",
				mechanicTime = 705.7,
				name = "[R1] Troubadour - J Waves 4 onward",
				timeRange = true,
				timelineIndex = 148,
				timerEndOffset = 13.8,
				timerStartOffset = 12.4,
				uuid = "d8818622-191c-8ead-bdfa-0c2eeacb9d73",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"5b969033-4752-22e1-977f-bebc079e947d",
									true,
								},
							},
							gVar = "ACR_TensorRequiem4_Hotbar_NaturesMinne",
							uuid = "53e6f757-26b2-0995-8528-63474e81d951",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R1\" or false",
							name = "Assigned R1",
							uuid = "5b969033-4752-22e1-977f-bebc079e947d",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R1",
				mechanicTime = 705.7,
				name = "[R1] Nature's Minne - J Wave 4 onward",
				timeRange = true,
				timelineIndex = 148,
				timerEndOffset = 13.8,
				timerStartOffset = 12.4,
				uuid = "31a977a5-167d-f3f4-b174-23ee423cf833",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"11df3007-f75a-fad8-842d-b7012db3547d",
									true,
								},
							},
							gVar = "ACR_RikuDNC3_Hotbar_ShieldSamba",
							uuid = "9c74d721-10ef-ba0e-a684-8259201b9a8f",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R1\" or false",
							name = "Assigned R1",
							uuid = "11df3007-f75a-fad8-842d-b7012db3547d",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R1",
				mechanicTime = 705.7,
				name = "[R1] ShieldSamba - J Waves 4 onward",
				timeRange = true,
				timelineIndex = 148,
				timerEndOffset = 13.8,
				timerStartOffset = 12.4,
				uuid = "9fff668c-2ac8-6aa2-9242-5195f0fa9085",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " M2",
				uuid = "b1597a6a-df44-ce91-bf6e-acde97b574a5",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"19f284e4-a69e-8e97-8bda-0d0bce9055e7",
									true,
								},
								
								{
									"f002d153-52d5-c4e9-9d52-f43298a66f52",
									true,
								},
							},
							gVar = "ACR_TensorViper3_Hotbar_Feint",
							uuid = "088d46b0-ac85-064e-805d-018f944cdf1d",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"M2\" or false",
							name = "Assigned M2",
							uuid = "19f284e4-a69e-8e97-8bda-0d0bce9055e7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local target = TensorCore.mGetTarget()\nreturn target and target.contentid == 9216 or false",
							name = "Brute Justice selected",
							uuid = "f002d153-52d5-c4e9-9d52-f43298a66f52",
							version = 3,
						},
					},
				},
				displayPath = "DPS / M2",
				mechanicTime = 705.7,
				name = "[M2] Feint - J Wave 6 onward",
				timeRange = true,
				timelineIndex = 148,
				timerEndOffset = 19.8,
				timerStartOffset = 17.8,
				uuid = "eff2f6a5-1a72-ec8d-a216-2d859840cdab",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " Melee",
				uuid = "e62d1e52-0c36-b63b-8f2b-a7c75437f389",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"fe0335a9-bec3-c4f5-82bb-bb009f0f476d",
									true,
								},
							},
							gVar = "ACR_TensorViper3_Hotbar_Bloodbath",
							uuid = "04c465f0-ea19-864a-93e0-90b8e406c627",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif not roster or not roster.current() then return false end\nlocal slot = roster.mySlot()\nreturn slot == \"M1\" or slot == \"M2\"",
							name = "Assigned M1 or M2",
							uuid = "fe0335a9-bec3-c4f5-82bb-bb009f0f476d",
							version = 3,
						},
					},
				},
				displayPath = "DPS / Melee",
				mechanicTime = 705.7,
				name = "[Melee] Bloodbath - J Wave sequence",
				timeRange = true,
				timelineIndex = 148,
				timerEndOffset = 18.3,
				timerStartOffset = 15.3,
				uuid = "d85ebe35-e351-c634-92e2-55c56b089d4b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " Reaper",
				uuid = "df0a0151-671c-e9f6-9766-1597f7cd3742",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"5c2214e2-b550-9a10-9f6c-8e9734b51328",
									true,
								},
								
								{
									"a2ef3cec-21ae-8044-b697-8a151a37d995",
									true,
								},
							},
							gVar = "ACR_TensorReaper4_Hotbar_ArcaneCrest",
							uuid = "3491eef3-0aa0-e107-81e8-4c4957a5843d",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif not roster or not roster.current() then return false end\nlocal slot = roster.mySlot()\nreturn slot == \"M1\" or slot == \"M2\"",
							name = "Assigned M1 or M2",
							uuid = "a2ef3cec-21ae-8044-b697-8a151a37d995",
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
							name = "Reaper",
							uuid = "5c2214e2-b550-9a10-9f6c-8e9734b51328",
							version = 3,
						},
					},
				},
				displayPath = "DPS / Reaper",
				mechanicTime = 705.7,
				name = "[RPR] Arcane Crest - J Wave 5",
				timeRange = true,
				timelineIndex = 148,
				timerEndOffset = 16.1,
				timerStartOffset = 13.8,
				uuid = "25b7d7f7-5f0f-4ff1-91ee-36a249ca0f17",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " Samurai",
				uuid = "6475a9e8-a6e5-9268-961a-128df085a1fa",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"924b45ad-f9d5-12da-9684-1ea81ff9261d",
									true,
								},
								
								{
									"6c9cedf1-8e4b-528f-a2ae-03d5fa2ea340",
									true,
								},
							},
							gVar = "ACR_TensorWeeb3_Hotbar_Tengetsu",
							uuid = "939e54a4-723b-ce37-be81-7648b176bd96",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif not roster or not roster.current() then return false end\nlocal slot = roster.mySlot()\nreturn slot == \"M1\" or slot == \"M2\"",
							name = "Assigned M1 or M2",
							uuid = "6c9cedf1-8e4b-528f-a2ae-03d5fa2ea340",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "SAMURAI",
							name = "Samurai",
							uuid = "924b45ad-f9d5-12da-9684-1ea81ff9261d",
							version = 3,
						},
					},
				},
				displayPath = "DPS / Samurai",
				mechanicTime = 705.7,
				name = "[SAM] Third Eye - J Wave 5",
				timeRange = true,
				timelineIndex = 148,
				timerEndOffset = 16.2,
				timerStartOffset = 14.2,
				uuid = "d2b1d302-c658-a16d-9ff4-51e9e3253816",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " Monk",
				uuid = "92543dc2-e56d-8067-83f3-1fff730c6098",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"f5e2d6f8-a04b-59f3-9186-e03ca0e72825",
									true,
								},
								
								{
									"23852b1d-b587-4577-8709-d15db7f354dd",
									true,
								},
							},
							gVar = "ACR_RikuMNK3_Hotbar_Mantra",
							uuid = "f4ec40ab-8c6a-186a-a276-928b3e47f32a",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif not roster or not roster.current() then return false end\nlocal slot = roster.mySlot()\nreturn slot == \"M1\" or slot == \"M2\"",
							name = "Assigned M1 or M2",
							uuid = "23852b1d-b587-4577-8709-d15db7f354dd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MONK",
							name = "Monk",
							uuid = "f5e2d6f8-a04b-59f3-9186-e03ca0e72825",
							version = 3,
						},
					},
				},
				displayPath = "DPS / Monk",
				mechanicTime = 705.7,
				name = "[MNK] Mantra - J Wave 4",
				timeRange = true,
				timelineIndex = 148,
				timerEndOffset = 13.8,
				timerStartOffset = 11.8,
				uuid = "8f75fc5c-a16d-fd5b-9bfc-7c0a12f7363e",
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
				name = "DPS ",
				uuid = "c46b2014-67f8-7469-95ef-ee76bf1545f5",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " R1",
				uuid = "1fa2ca8a-3edd-2e4a-9158-e3a43a580d3c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"234dd660-3190-7d20-a386-51ad1393af5d",
									true,
								},
							},
							gVar = "ACR_RikuDNC3_Hotbar_Improvisation",
							uuid = "32010005-0365-bee1-93a3-e0a6894c4e54",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R1\" or false",
							name = "Assigned R1",
							uuid = "234dd660-3190-7d20-a386-51ad1393af5d",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R1",
				mechanicTime = 787.3,
				name = "[R1] Improvisation - After Divine Judgment",
				timeRange = true,
				timelineIndex = 151,
				timerEndOffset = 4.7,
				timerStartOffset = 1.7,
				uuid = "9a572c7d-4155-0d90-84e0-f467774ec53b",
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
				name = "Paladin ",
				uuid = "bb6d17fc-7b84-43bf-a8c0-aa69279c6ccf",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T1 ",
				uuid = "f49b183c-1fad-fde8-b2db-f4f7b7f7f511",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T1 ",
				name = " P4",
				uuid = "bcf354c8-e26b-d931-81aa-3a6ba1df462d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"13da384f-b0fe-dc2f-b8b9-1fd476b2eebd",
									true,
								},
								
								{
									"be8d2140-2c69-c2b2-ba88-c7e5328ecf29",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Reprisal",
							uuid = "a1acffbc-ec9b-1f32-aa5c-f927189bffff",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "13da384f-b0fe-dc2f-b8b9-1fd476b2eebd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "be8d2140-2c69-c2b2-ba88-c7e5328ecf29",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T1 / P4",
				mechanicTime = 938.6,
				name = "[T1] Reprisal - Opening Optical Sight pair",
				timeRange = true,
				timelineIndex = 159,
				timerEndOffset = -1.3,
				timerStartOffset = -2.6,
				uuid = "ba99b369-3105-c491-bafc-349f174a8ced",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a03300d4-35bd-069a-a4e9-78565fd780d4",
									true,
								},
								
								{
									"9012bc47-a9b7-1b63-9670-affac67ed87f",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_DivineVeil",
							uuid = "ff6cb0b5-94d3-2d50-96c6-882d9a8a45a7",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "a03300d4-35bd-069a-a4e9-78565fd780d4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "9012bc47-a9b7-1b63-9670-affac67ed87f",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T1 / P4",
				mechanicTime = 938.6,
				name = "[T1] Divine Veil - Opening Optical Sight pair",
				timeRange = true,
				timelineIndex = 159,
				timerEndOffset = -2.7,
				timerStartOffset = -4,
				uuid = "a5575de7-2ae0-ce48-8ec2-bbd7a2f7a412",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior ",
				uuid = "cc83766b-9094-9455-8c4f-d616cc274426",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T1 ",
				uuid = "0bcd6372-0966-2472-8a4e-fa80d2557e00",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T1 ",
				name = " P4",
				uuid = "90f09054-79e3-c41a-b3f4-bc3ff16a1997",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"5d8b22bc-7812-595e-9bc9-27f31357e10e",
									true,
								},
								
								{
									"b3c7df9f-2b54-9868-abbd-e98b800b3d3f",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Reprisal",
							uuid = "53aab33e-0186-777a-814d-5fcde56869d9",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "5d8b22bc-7812-595e-9bc9-27f31357e10e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "b3c7df9f-2b54-9868-abbd-e98b800b3d3f",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T1 / P4",
				mechanicTime = 938.6,
				name = "[T1] Reprisal - Opening Optical Sight pair",
				timeRange = true,
				timelineIndex = 159,
				timerEndOffset = -1.3,
				timerStartOffset = -2.6,
				uuid = "a7d50330-e29f-cf25-9b12-50867d94565c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"db532bb2-c597-fe98-9ae2-71de526638e5",
									true,
								},
								
								{
									"479a63e8-1909-d62a-a280-d7db9ae2e7eb",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_ShakeItOff",
							uuid = "adba9d8a-cf6e-d8f0-ba5f-8bc983e096a0",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "db532bb2-c597-fe98-9ae2-71de526638e5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "479a63e8-1909-d62a-a280-d7db9ae2e7eb",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T1 / P4",
				mechanicTime = 938.6,
				name = "[T1] Shake It Off - Opening Optical Sight pair",
				timeRange = true,
				timelineIndex = 159,
				timerEndOffset = -2.7,
				timerStartOffset = -4,
				uuid = "0c989e27-5787-2e6b-b007-9d05903bfcf9",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker ",
				uuid = "b5f322d8-e705-b76c-acde-0a9f50a74c73",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T1 ",
				uuid = "abd3781f-3561-2617-b710-43fafdae78da",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T1 ",
				name = " P4",
				uuid = "625c089a-0a8b-f04e-ab2d-33f9f71ac5ea",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a3845386-4dd7-c6cb-ab9e-22b6e96ba7de",
									true,
								},
								
								{
									"517a9dcb-4431-5e0d-a29d-574cd376c8dd",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "6309cfb2-bd94-7e2c-a8c5-75ca31146398",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "a3845386-4dd7-c6cb-ab9e-22b6e96ba7de",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "517a9dcb-4431-5e0d-a29d-574cd376c8dd",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T1 / P4",
				mechanicTime = 938.6,
				name = "[T1] Reprisal - Opening Optical Sight pair",
				timeRange = true,
				timelineIndex = 159,
				timerEndOffset = -1.3,
				timerStartOffset = -2.6,
				uuid = "0e5ce856-1461-7c31-9b33-5aa2525da6af",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"8837b92d-a7a5-9aa2-9cdc-e47a10592b01",
									true,
								},
								
								{
									"0637b2b6-e190-e5bf-975f-450fc2e88ac7",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "5b8c48eb-7e04-3d78-bff6-e2d1937ef8b0",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "8837b92d-a7a5-9aa2-9cdc-e47a10592b01",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "0637b2b6-e190-e5bf-975f-450fc2e88ac7",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T1 / P4",
				mechanicTime = 938.6,
				name = "[T1] Heart of Light - Opening Optical Sight pair",
				timeRange = true,
				timelineIndex = 159,
				timerEndOffset = -2.7,
				timerStartOffset = -4,
				uuid = "87b37c5b-d1e3-decb-a266-8f804a3b8cc9",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight ",
				uuid = "8e3c5acf-b658-c782-b009-4a16c788aa75",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T1 ",
				uuid = "170c3e1e-27f2-2127-ae74-f58656b1f407",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T1 ",
				name = " P4",
				uuid = "0a6fc68c-43dc-d99c-893f-863928aaf6af",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"b7a64051-3479-1c68-9cc5-84be9b85e020",
									true,
								},
								
								{
									"c10425ec-d352-cbbb-97ec-f9584c5e8693",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_Reprisal",
							uuid = "add5ec97-2c5d-01b5-ac2c-f84f6e282fab",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "b7a64051-3479-1c68-9cc5-84be9b85e020",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "c10425ec-d352-cbbb-97ec-f9584c5e8693",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T1 / P4",
				mechanicTime = 938.6,
				name = "[T1] Reprisal - Opening Optical Sight pair",
				timeRange = true,
				timelineIndex = 159,
				timerEndOffset = -1.3,
				timerStartOffset = -2.6,
				uuid = "e1a474f2-6cd5-bd8e-a1f2-7647cbf4b206",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"5bd0ffd6-ed93-211b-996e-c1408616053b",
									true,
								},
								
								{
									"89949e4c-869f-81cd-9c60-dfd646692087",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_DarkMissionary",
							uuid = "23c0805f-a264-3e48-855f-03cbcc1b174e",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "5bd0ffd6-ed93-211b-996e-c1408616053b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "89949e4c-869f-81cd-9c60-dfd646692087",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T1 / P4",
				mechanicTime = 938.6,
				name = "[T1] Dark Missionary - Opening Optical Sight pair",
				timeRange = true,
				timelineIndex = 159,
				timerEndOffset = -2.7,
				timerStartOffset = -4,
				uuid = "4c06b69d-6a3b-1c74-818f-11cea97b16ff",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DPS ",
				uuid = "b179cbc0-8d10-e336-a39a-1f33c9a25812",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " R1",
				uuid = "ba8a9660-19b7-b95d-b05f-037260b5eed1",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"c11edc30-8abd-ffd4-8c8c-89cd14707777",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_Hotbar_Tactician",
							uuid = "36cbcf8b-8857-342c-b5f9-4f354debf5eb",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R1\" or false",
							name = "Assigned R1",
							uuid = "c11edc30-8abd-ffd4-8c8c-89cd14707777",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R1",
				mechanicTime = 938.6,
				name = "[R1] Tactician - Opening Optical Sight pair",
				timeRange = true,
				timelineIndex = 159,
				timerEndOffset = -1.8,
				timerStartOffset = -5.6,
				uuid = "dbd3194a-0b4b-a945-adca-34f6072f1924",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"de9bf625-8e22-9937-a660-8593aabe7056",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_Hotbar_Dismantle",
							uuid = "ebfb6eaa-2987-8e15-853a-5be875c9909b",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R1\" or false",
							name = "Assigned R1",
							uuid = "de9bf625-8e22-9937-a660-8593aabe7056",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R1",
				mechanicTime = 938.6,
				name = "[R1] Dismantle - Opening Optical Sight pair",
				timeRange = true,
				timelineIndex = 159,
				timerEndOffset = -1.1,
				timerStartOffset = -2.6,
				uuid = "49cc3c95-b0be-3c63-8306-a251bc6df364",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"5c6b5cf4-ea22-82fc-9ea2-f7b97414988c",
									true,
								},
							},
							gVar = "ACR_TensorRequiem4_Hotbar_Troubadour",
							uuid = "6b445905-5b23-c88c-956d-cceed4150699",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R1\" or false",
							name = "Assigned R1",
							uuid = "5c6b5cf4-ea22-82fc-9ea2-f7b97414988c",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R1",
				mechanicTime = 938.6,
				name = "[R1] Troubadour - Opening Optical Sight pair",
				timeRange = true,
				timelineIndex = 159,
				timerEndOffset = -1.8,
				timerStartOffset = -5.6,
				uuid = "5d099abb-3858-fb6f-865b-d95475500ec2",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"443576af-dfc3-9903-adf1-5e43a77dfeb6",
									true,
								},
							},
							gVar = "ACR_RikuDNC3_Hotbar_ShieldSamba",
							uuid = "17aefe1d-8ad4-f2bf-b366-e7e14a8e11be",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R1\" or false",
							name = "Assigned R1",
							uuid = "443576af-dfc3-9903-adf1-5e43a77dfeb6",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R1",
				mechanicTime = 938.6,
				name = "[R1] ShieldSamba - Opening Optical Sight pair",
				timeRange = true,
				timelineIndex = 159,
				timerEndOffset = -1.8,
				timerStartOffset = -5.6,
				uuid = "e0c429d7-248b-2648-bd69-e04279c07db2",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " R2",
				uuid = "0706fd64-1694-587b-b17f-2b5b0d399a7a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"f22c5335-34ea-9df4-975a-897f275eba65",
									true,
								},
								
								{
									"33a087de-dd19-8f69-89d2-8689c6f69bbb",
									true,
								},
							},
							gVar = "ACR_TensorNuke4_Hotbar_Addle",
							uuid = "b444617e-de43-efac-acf0-f44b9404cf6d",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R2\" or false",
							name = "Assigned R2",
							uuid = "f22c5335-34ea-9df4-975a-897f275eba65",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local target = TensorCore.mGetTarget()\nreturn target and target.contentid == 9042 or false",
							name = "Perfect Alexander selected",
							uuid = "33a087de-dd19-8f69-89d2-8689c6f69bbb",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R2",
				mechanicTime = 938.6,
				name = "[R2] Addle - Opening Optical Sight pair",
				timeRange = true,
				timelineIndex = 159,
				timerEndOffset = -1,
				timerStartOffset = -2.5,
				uuid = "11f97bf7-a462-5650-9999-c0b122e1ce7f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"7a9b37b1-f0a8-8bd0-95f9-8578a04dcd69",
									true,
								},
								
								{
									"eda9cfc3-0855-21d0-b99e-4421c7fa49ab",
									true,
								},
							},
							gVar = "ACR_TensorNuke4_Hotbar_Manaward",
							uuid = "85d5748d-675a-bcdc-8afe-d17f2491c767",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R2\" or false",
							name = "Assigned R2",
							uuid = "eda9cfc3-0855-21d0-b99e-4421c7fa49ab",
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
							name = "Black Mage",
							uuid = "7a9b37b1-f0a8-8bd0-95f9-8578a04dcd69",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R2",
				mechanicTime = 938.6,
				name = "[R2] Manaward - Opening Optical Sight pair",
				timeRange = true,
				timelineIndex = 159,
				timerEndOffset = -2.6,
				timerStartOffset = -5.6,
				uuid = "d861c67b-e301-04f0-a17a-9dc0387c6db4",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"40b3dd2c-d8a9-e04a-9abf-efac899aa03d",
									true,
								},
								
								{
									"cc16e4d1-8ad0-bce3-8cfc-589d70b09d5c",
									true,
								},
							},
							gVar = "ACR_RikuPCT3_Hotbar_TemperaCoat",
							uuid = "e53d354b-de61-47a9-b951-18bfe796b91b",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R2\" or false",
							name = "Assigned R2",
							uuid = "cc16e4d1-8ad0-bce3-8cfc-589d70b09d5c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PICTOMANCER",
							name = "Pictomancer",
							uuid = "40b3dd2c-d8a9-e04a-9abf-efac899aa03d",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R2",
				mechanicTime = 938.6,
				name = "[R2] TemperaCoat - Opening Optical Sight pair",
				timeRange = true,
				timelineIndex = 159,
				timerEndOffset = -2.6,
				timerStartOffset = -5.6,
				uuid = "1a31b408-dcf7-4fa6-a01e-cc28799b4cbf",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " M1",
				uuid = "456c7616-3aa5-e541-8f3b-5dde51c4d43a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"f1bc3216-fd48-0508-8804-dffcc2ebe54d",
									true,
								},
								
								{
									"3236f4da-4715-16cb-8b75-0202859e59b8",
									true,
								},
							},
							gVar = "ACR_TensorViper3_Hotbar_Feint",
							uuid = "c21f477b-558e-5344-8d98-5a9b21469570",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"M1\" or false",
							name = "Assigned M1",
							uuid = "f1bc3216-fd48-0508-8804-dffcc2ebe54d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local target = TensorCore.mGetTarget()\nreturn target and target.contentid == 9042 or false",
							name = "Perfect Alexander selected",
							uuid = "3236f4da-4715-16cb-8b75-0202859e59b8",
							version = 3,
						},
					},
				},
				displayPath = "DPS / M1",
				mechanicTime = 938.6,
				name = "[M1] Feint - Opening Optical Sight pair",
				timeRange = true,
				timelineIndex = 159,
				timerEndOffset = -1.2,
				timerStartOffset = -2.6,
				uuid = "9d23230f-bc26-2c90-9514-abf6efd09c32",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " Reaper",
				uuid = "cdb78d7a-6282-38d9-b104-4f0298c56c15",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"88c6ca4f-b0f2-c11f-abcd-8f857263087f",
									true,
								},
								
								{
									"1a44dd19-6fba-bfed-a80c-fd5108ed661b",
									true,
								},
							},
							gVar = "ACR_TensorReaper4_Hotbar_ArcaneCrest",
							uuid = "cb3ae085-09a5-7969-ad83-8e4a400cbc13",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif not roster or not roster.current() then return false end\nlocal slot = roster.mySlot()\nreturn slot == \"M1\" or slot == \"M2\"",
							name = "Assigned M1 or M2",
							uuid = "1a44dd19-6fba-bfed-a80c-fd5108ed661b",
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
							name = "Reaper",
							uuid = "88c6ca4f-b0f2-c11f-abcd-8f857263087f",
							version = 3,
						},
					},
				},
				displayPath = "DPS / Reaper",
				mechanicTime = 938.6,
				name = "[RPR] Arcane Crest - Opening Optical Sight hit",
				timeRange = true,
				timelineIndex = 159,
				timerEndOffset = -1.1,
				timerStartOffset = -3.4,
				uuid = "3d931cbc-3a60-48b9-a2c9-fe05b71ea418",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " Samurai",
				uuid = "023eb924-a2c2-fdf5-871d-1abaf23ea4b5",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"15dc22dd-c1f2-34a0-9434-0413ca141f36",
									true,
								},
								
								{
									"e40f9b16-c4f2-ec35-8208-9b84788dc709",
									true,
								},
							},
							gVar = "ACR_TensorWeeb3_Hotbar_Tengetsu",
							uuid = "747d2136-e878-33d8-8fda-90f9e9f0cf7f",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif not roster or not roster.current() then return false end\nlocal slot = roster.mySlot()\nreturn slot == \"M1\" or slot == \"M2\"",
							name = "Assigned M1 or M2",
							uuid = "e40f9b16-c4f2-ec35-8208-9b84788dc709",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "SAMURAI",
							name = "Samurai",
							uuid = "15dc22dd-c1f2-34a0-9434-0413ca141f36",
							version = 3,
						},
					},
				},
				displayPath = "DPS / Samurai",
				mechanicTime = 938.6,
				name = "[SAM] Third Eye - Opening Optical Sight hit",
				timeRange = true,
				timelineIndex = 159,
				timerEndOffset = -1,
				timerStartOffset = -3,
				uuid = "811fbe7a-d61a-d27d-b007-961d3d89425c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " Ninja",
				uuid = "353e5597-96e5-cda1-9566-a83472fe5a37",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"677bca8e-1050-60cc-91c9-3622da11604f",
									true,
								},
								
								{
									"40863dd0-fd23-a3d0-906b-8c491ad9368e",
									true,
								},
							},
							gVar = "ACR_RikuNIN3_Hotbar_ShadeShift",
							uuid = "3064f7b7-ae4f-cd7a-b542-e4367a7c58dc",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif not roster or not roster.current() then return false end\nlocal slot = roster.mySlot()\nreturn slot == \"M1\" or slot == \"M2\"",
							name = "Assigned M1 or M2",
							uuid = "40863dd0-fd23-a3d0-906b-8c491ad9368e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "NINJA",
							name = "Ninja",
							uuid = "677bca8e-1050-60cc-91c9-3622da11604f",
							version = 3,
						},
					},
				},
				displayPath = "DPS / Ninja",
				mechanicTime = 938.6,
				name = "[NIN] Shade Shift - Opening Optical Sight pair",
				timeRange = true,
				timelineIndex = 159,
				timerEndOffset = -2.6,
				timerStartOffset = -5.6,
				uuid = "8e9df731-6998-9f1b-b22d-17336dec0716",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " Monk",
				uuid = "39a45899-c81a-7c00-af90-4ba5374a52c9",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"36db6d1a-e1d8-0a3f-b9b8-55f94616cd58",
									true,
								},
								
								{
									"40cfaf3b-1621-c27c-8c2a-0694432776a3",
									true,
								},
							},
							gVar = "ACR_RikuMNK3_Hotbar_RiddleOfEarth",
							uuid = "078081b9-4c0a-6d54-b300-f18c5f975668",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif not roster or not roster.current() then return false end\nlocal slot = roster.mySlot()\nreturn slot == \"M1\" or slot == \"M2\"",
							name = "Assigned M1 or M2",
							uuid = "40cfaf3b-1621-c27c-8c2a-0694432776a3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MONK",
							name = "Monk",
							uuid = "36db6d1a-e1d8-0a3f-b9b8-55f94616cd58",
							version = 3,
						},
					},
				},
				displayPath = "DPS / Monk",
				mechanicTime = 938.6,
				name = "[MNK] Riddle of Earth - Opening Optical Sight pair",
				timeRange = true,
				timelineIndex = 159,
				timerEndOffset = -1.6,
				timerStartOffset = -3.6,
				uuid = "920163ca-5ac7-fdc2-91f4-377adf780553",
				version = 2,
			},
		},
	},
	[161] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin ",
				uuid = "ff595245-2877-327d-8478-c44bf14e762e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T2 ",
				uuid = "5858c42c-3cde-0d37-9237-72220f436690",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T2 ",
				name = " P4",
				uuid = "eb56e942-a264-ee4b-9b15-3220e5bc0c22",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"483b7507-08a4-1840-8427-f64c9411e765",
									true,
								},
								
								{
									"9c8cc137-f906-2e26-900f-4e3516ff0794",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Reprisal",
							uuid = "c623a290-d4e4-e12d-9d65-2b5bd7422da9",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "483b7507-08a4-1840-8427-f64c9411e765",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "9c8cc137-f906-2e26-900f-4e3516ff0794",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T2 / P4",
				mechanicTime = 944.7,
				name = "[T2] Reprisal - Opening Optical Sight pair",
				timeRange = true,
				timelineIndex = 161,
				timerEndOffset = -2.2,
				timerStartOffset = -3.4,
				uuid = "7ee31e8b-bb74-982d-b61d-0af8b7696eb5",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"5a0c96d0-663a-9b52-a95c-362df7f3875c",
									true,
								},
								
								{
									"98e5ed87-8cc1-f2de-b5f3-0e3b9c1a6fbe",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_DivineVeil",
							uuid = "398ea877-125b-516b-be60-966fa9c2b78e",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "5a0c96d0-663a-9b52-a95c-362df7f3875c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "98e5ed87-8cc1-f2de-b5f3-0e3b9c1a6fbe",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T2 / P4",
				mechanicTime = 944.7,
				name = "[T2] Divine Veil - Opening Optical Sight pair",
				timeRange = true,
				timelineIndex = 161,
				timerEndOffset = -3.6,
				timerStartOffset = -5.4,
				uuid = "7dfe1ec5-8396-cdb4-bc5b-32f1a3353466",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior ",
				uuid = "32e754f7-c711-7fd0-85b7-7ea155c97b37",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T2 ",
				uuid = "d5b53223-2c8b-0a27-818d-1996806fb40d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T2 ",
				name = " P4",
				uuid = "c8cb6d72-4247-cfc9-8671-7d4415ffa848",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"93ee6889-fbf7-ad57-a704-abad52fe8114",
									true,
								},
								
								{
									"615ebde0-7928-e89e-b5f6-2eefa7be54ab",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Reprisal",
							uuid = "020a2cff-edde-ea92-8d6a-54c77391ea25",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "93ee6889-fbf7-ad57-a704-abad52fe8114",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "615ebde0-7928-e89e-b5f6-2eefa7be54ab",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T2 / P4",
				mechanicTime = 944.7,
				name = "[T2] Reprisal - Opening Optical Sight pair",
				timeRange = true,
				timelineIndex = 161,
				timerEndOffset = -2.2,
				timerStartOffset = -3.4,
				uuid = "c951390f-4016-4c6b-91f4-6674d0557008",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"0fe0716b-d7f8-d193-8b25-e32410990fcc",
									true,
								},
								
								{
									"3656fea6-c828-9747-beb0-1802d8c3ba95",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_ShakeItOff",
							uuid = "f98b9232-7757-a9a5-905e-69f2be456dfe",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "0fe0716b-d7f8-d193-8b25-e32410990fcc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "3656fea6-c828-9747-beb0-1802d8c3ba95",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T2 / P4",
				mechanicTime = 944.7,
				name = "[T2] Shake It Off - Opening Optical Sight pair",
				timeRange = true,
				timelineIndex = 161,
				timerEndOffset = -3.6,
				timerStartOffset = -5.4,
				uuid = "edc85dd6-7b4f-4793-b40c-d9e3209768af",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker ",
				uuid = "7eb3f944-845e-fe58-a7c2-39f1be199178",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T2 ",
				uuid = "ba47b6b3-6190-ff08-b30e-1275fca933cb",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T2 ",
				name = " P4",
				uuid = "1deafa3e-c2e4-ff91-8fe6-6e6e8650c259",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"c6e0354c-15f4-f757-b545-00fe3c9f209c",
									true,
								},
								
								{
									"7807b595-0802-f8f2-a290-dade17f0a96f",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "66b103c6-653b-793f-a89e-dcc4a3db97b0",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "c6e0354c-15f4-f757-b545-00fe3c9f209c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "7807b595-0802-f8f2-a290-dade17f0a96f",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T2 / P4",
				mechanicTime = 944.7,
				name = "[T2] Reprisal - Opening Optical Sight pair",
				timeRange = true,
				timelineIndex = 161,
				timerEndOffset = -2.2,
				timerStartOffset = -3.4,
				uuid = "b7fa7c11-df76-ac2f-a5a8-3d83da7814f5",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"f54bfc9b-ea62-9b22-bc5c-cc50a524a582",
									true,
								},
								
								{
									"6e336b24-5a5a-37ca-a820-04be5eaa7c3e",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "8d439868-e4db-e524-92aa-e2a311e50f67",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "f54bfc9b-ea62-9b22-bc5c-cc50a524a582",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "6e336b24-5a5a-37ca-a820-04be5eaa7c3e",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T2 / P4",
				mechanicTime = 944.7,
				name = "[T2] Heart of Light - Opening Optical Sight pair",
				timeRange = true,
				timelineIndex = 161,
				timerEndOffset = -3.6,
				timerStartOffset = -5.4,
				uuid = "ce13b147-475e-8585-a19d-90351baaae10",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight ",
				uuid = "4f3f0307-f755-6629-9eaa-3f98c11cba11",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T2 ",
				uuid = "12b0a811-3e54-bcb8-afe7-da5bbedecec6",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T2 ",
				name = " P4",
				uuid = "00ba2923-9e92-1fbc-8f39-6f2734d65142",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"9ab5a059-6246-08a7-b1bb-cf1a7e649279",
									true,
								},
								
								{
									"3fc71a87-1c66-d283-bd7b-d6d7833827f3",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_Reprisal",
							uuid = "ae55c29f-4479-521d-84dd-77a8218eb3fc",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "9ab5a059-6246-08a7-b1bb-cf1a7e649279",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "3fc71a87-1c66-d283-bd7b-d6d7833827f3",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T2 / P4",
				mechanicTime = 944.7,
				name = "[T2] Reprisal - Opening Optical Sight pair",
				timeRange = true,
				timelineIndex = 161,
				timerEndOffset = -2.2,
				timerStartOffset = -3.4,
				uuid = "dafc54f7-79cf-dcbf-9af1-23aa268885c3",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"ad91d7d3-0a44-8a47-bed2-2866ce2e7b83",
									true,
								},
								
								{
									"5a33f33c-03c6-41fe-87d1-2cd6ec46115c",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_DarkMissionary",
							uuid = "ed410483-b02a-578f-83f8-a5dd5eff4d10",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "ad91d7d3-0a44-8a47-bed2-2866ce2e7b83",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "5a33f33c-03c6-41fe-87d1-2cd6ec46115c",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T2 / P4",
				mechanicTime = 944.7,
				name = "[T2] Dark Missionary - Opening Optical Sight pair",
				timeRange = true,
				timelineIndex = 161,
				timerEndOffset = -3.6,
				timerStartOffset = -5.4,
				uuid = "c2fec98d-7b7f-58f7-91fd-8679ff2160ac",
				version = 2,
			},
		},
	},
	[174] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin ",
				uuid = "473f7dda-9355-2dfa-93c4-2ae563ff00ce",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T1 ",
				uuid = "30441a8d-cd28-5354-b74f-8eb2e6439758",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T1 ",
				name = " P4",
				uuid = "cce1cbbf-e9ad-6c11-b907-7b076c357740",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"65a178b6-21cb-396c-a14d-cb0eba8e604d",
									true,
								},
								
								{
									"dee609f7-b349-50d5-8468-288142812814",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Rampart",
							uuid = "6603a631-cc6e-8f4e-95d2-99482724c9a6",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "65a178b6-21cb-396c-a14d-cb0eba8e604d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "dee609f7-b349-50d5-8468-288142812814",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T1 / P4",
				mechanicTime = 1008,
				name = "[T1] Rampart - Capital Punishment 1",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = -4.2,
				timerStartOffset = -6,
				uuid = "03da8f5f-7a15-7b9e-8cf0-c7e0d8a9c2fb",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"c36c781a-6f42-2ec4-9842-127854eaa090",
									true,
								},
								
								{
									"eb46b7a3-ca6d-f53c-8f3b-99fecc2c640d",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Guardian",
							uuid = "4bc99d6d-f47f-cf85-9ef0-38805eab07b5",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "c36c781a-6f42-2ec4-9842-127854eaa090",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "eb46b7a3-ca6d-f53c-8f3b-99fecc2c640d",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T1 / P4",
				mechanicTime = 1008,
				name = "[T1] Sentinel - Capital Punishment 1",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = -2.2,
				timerStartOffset = -4,
				uuid = "af10847d-0f55-1be7-8a18-16cc1ae2e51f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"12788ab4-8bf3-3170-9dbb-60911403ae4c",
									true,
								},
								
								{
									"14d1eafd-cdde-e53d-b5f9-6e5cda3241e8",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Bulwark",
							uuid = "c4f2da46-ba8e-4145-9e28-9bda5fefd569",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "12788ab4-8bf3-3170-9dbb-60911403ae4c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "14d1eafd-cdde-e53d-b5f9-6e5cda3241e8",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T1 / P4",
				mechanicTime = 1008,
				name = "[T1] Bulwark - Capital Punishment 1",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = -0.6,
				timerStartOffset = -2,
				uuid = "18e13c8b-298a-e75b-ad26-9127a82fbf2f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a21e2ae0-d6fb-4afb-9200-a0c8610c2748",
									true,
								},
								
								{
									"5405950d-2038-852f-8f9e-d59b1059fc73",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HolySheltron",
							uuid = "88f55e48-2035-05f0-b2f4-d5998b0a2bed",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "a21e2ae0-d6fb-4afb-9200-a0c8610c2748",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "5405950d-2038-852f-8f9e-d59b1059fc73",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T1 / P4",
				mechanicTime = 1008,
				name = "[T1] Sheltron - Capital Punishment 1",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = 1.4,
				timerStartOffset = -0.5,
				uuid = "0b02c59b-6946-1638-bb61-189f5c37c698",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T2 ",
				uuid = "594f79a9-29e5-5c77-8152-a1026e689d47",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T2 ",
				name = " P4",
				uuid = "015d0430-cc1b-41cc-831c-99de3d2f64ee",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"5ea0b9e5-48ff-e7a8-978d-4f1221d91cbc",
									true,
								},
								
								{
									"30a26e2a-a6ca-99e0-b3a5-72a5c423647f",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Rampart",
							uuid = "1adfe487-93d3-2b20-b631-a99722c19d8c",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "5ea0b9e5-48ff-e7a8-978d-4f1221d91cbc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "30a26e2a-a6ca-99e0-b3a5-72a5c423647f",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T2 / P4",
				mechanicTime = 1008,
				name = "[T2] Rampart - Capital Punishment 1",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = -4.2,
				timerStartOffset = -6,
				uuid = "6044d2e5-0891-88ba-90cb-e43a13a6faa4",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"c73017ec-3101-6bc6-a350-000c9e9113cf",
									true,
								},
								
								{
									"1048e70b-9e6f-f305-b6c5-cb11a8f68073",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Guardian",
							uuid = "cb4b1f47-5e1f-368d-a512-901a22648b55",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "c73017ec-3101-6bc6-a350-000c9e9113cf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "1048e70b-9e6f-f305-b6c5-cb11a8f68073",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T2 / P4",
				mechanicTime = 1008,
				name = "[T2] Sentinel - Capital Punishment 1",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = -2.2,
				timerStartOffset = -4,
				uuid = "13503b56-9383-018f-8ba3-c65b3118ab77",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"1e3fbda1-be0a-6739-a624-bbee2d923151",
									true,
								},
								
								{
									"2fb24a47-a228-bf75-9373-52f5cbbe49d5",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Bulwark",
							uuid = "de28721a-9daa-ea9c-bb9f-f500f735b95b",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "1e3fbda1-be0a-6739-a624-bbee2d923151",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "2fb24a47-a228-bf75-9373-52f5cbbe49d5",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T2 / P4",
				mechanicTime = 1008,
				name = "[T2] Bulwark - Capital Punishment 1",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = -0.6,
				timerStartOffset = -2,
				uuid = "34f748f2-3e1a-5a4e-ab04-246f4134fa2b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"17829115-bada-3007-b208-e962e4ead44e",
									true,
								},
								
								{
									"491f4fc9-e8c5-af52-9f16-efe08287d9bb",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HolySheltron",
							uuid = "7fb7a3db-5fd5-ed25-bf8e-24efea082ffd",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "17829115-bada-3007-b208-e962e4ead44e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "491f4fc9-e8c5-af52-9f16-efe08287d9bb",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T2 / P4",
				mechanicTime = 1008,
				name = "[T2] Sheltron - Capital Punishment 1",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = 1.4,
				timerStartOffset = -0.5,
				uuid = "d941c08a-a19f-7a19-abc1-ff7730017c90",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior ",
				uuid = "03ba35b5-d0a6-080e-b50d-4cfa878a3629",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T1 ",
				uuid = "bc85559d-f4a5-7c75-909a-bea45b27175d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T1 ",
				name = " P4",
				uuid = "765a695c-8e63-1e4a-952b-852d9f7e9ede",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"831842f5-17d9-270f-ab9c-3e9ec3df6262",
									true,
								},
								
								{
									"626d88ce-1e97-d9a6-baae-1a61a2ed480e",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Rampart",
							uuid = "efe4bbb7-e17f-31dd-acf2-39f14fd34442",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "831842f5-17d9-270f-ab9c-3e9ec3df6262",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "626d88ce-1e97-d9a6-baae-1a61a2ed480e",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T1 / P4",
				mechanicTime = 1008,
				name = "[T1] Rampart - Capital Punishment 1",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = -4.2,
				timerStartOffset = -6,
				uuid = "3aab8edf-4188-3f5d-9b29-3173d1513699",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"1d135727-65ad-19a0-b157-79ebc24b5c18",
									true,
								},
								
								{
									"cf07bff2-1b42-cd36-825a-6be16b241eb6",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Damnation",
							uuid = "03743fc5-c9de-62db-9b25-50af04aab7a8",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "1d135727-65ad-19a0-b157-79ebc24b5c18",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "cf07bff2-1b42-cd36-825a-6be16b241eb6",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T1 / P4",
				mechanicTime = 1008,
				name = "[T1] Vengeance - Capital Punishment 1",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = -2.2,
				timerStartOffset = -4,
				uuid = "3ef128f5-5b07-ed30-a461-8ec3d16df49a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"b4e34f84-e445-89ee-bfaf-2fe742d36924",
									true,
								},
								
								{
									"b1f6dbd2-dea5-8a85-a634-207c1b3fe193",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_ThrillOfBattle",
							uuid = "13f44291-287a-46c9-a6c4-39a1d0e89f63",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "b4e34f84-e445-89ee-bfaf-2fe742d36924",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "b1f6dbd2-dea5-8a85-a634-207c1b3fe193",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T1 / P4",
				mechanicTime = 1008,
				name = "[T1] Thrill of Battle - Capital Punishment 1",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = -0.6,
				timerStartOffset = -2,
				uuid = "f1c42758-fc9f-978c-9166-a730740f68d0",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"34b51e87-4ed1-d13f-a374-3253204d761f",
									true,
								},
								
								{
									"3336a112-d3fa-5b96-8644-c57475d8bb1b",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Bloodwhetting",
							uuid = "3115882e-c02c-7f2d-8c1e-58667115d0f4",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "34b51e87-4ed1-d13f-a374-3253204d761f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "3336a112-d3fa-5b96-8644-c57475d8bb1b",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T1 / P4",
				mechanicTime = 1008,
				name = "[T1] Raw Intuition - Capital Punishment 1",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = 1.4,
				timerStartOffset = -0.5,
				uuid = "11172e0f-9812-45a7-b88f-f4a651079bbf",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T2 ",
				uuid = "79914a0f-e6a6-6a13-8576-dab79e6f6746",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T2 ",
				name = " P4",
				uuid = "9168aea9-6768-07e8-b00a-d13f027842c8",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"fd459856-aae8-1102-a96c-99bd0082e6b5",
									true,
								},
								
								{
									"7d045481-a853-eb49-89b6-d9780622a18d",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Rampart",
							uuid = "e2811251-5399-8559-916c-3abedb7b2e12",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "fd459856-aae8-1102-a96c-99bd0082e6b5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "7d045481-a853-eb49-89b6-d9780622a18d",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T2 / P4",
				mechanicTime = 1008,
				name = "[T2] Rampart - Capital Punishment 1",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = -4.2,
				timerStartOffset = -6,
				uuid = "b50470f5-6016-d29e-881e-edd16c4a122e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a81f251b-e802-5e2e-bc67-00a5994cc700",
									true,
								},
								
								{
									"42329300-34ce-ce00-925f-08199dae72da",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Damnation",
							uuid = "8e9219fb-faa9-0051-ae50-a80732628eb0",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "a81f251b-e802-5e2e-bc67-00a5994cc700",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "42329300-34ce-ce00-925f-08199dae72da",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T2 / P4",
				mechanicTime = 1008,
				name = "[T2] Vengeance - Capital Punishment 1",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = -2.2,
				timerStartOffset = -4,
				uuid = "86022412-aaee-1c57-b947-6ed14539f12c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"6e04ec20-ac8b-6b07-ae28-4f2efdb69d48",
									true,
								},
								
								{
									"4fba6f66-33f7-74a8-ad0e-80797373ff67",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_ThrillOfBattle",
							uuid = "ea4aabb5-c7e7-d142-b1d3-3ab031d2f70a",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "6e04ec20-ac8b-6b07-ae28-4f2efdb69d48",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "4fba6f66-33f7-74a8-ad0e-80797373ff67",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T2 / P4",
				mechanicTime = 1008,
				name = "[T2] Thrill of Battle - Capital Punishment 1",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = -0.6,
				timerStartOffset = -2,
				uuid = "f61f8ac3-9dc7-496f-ac7f-691e1221b542",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"7cd40f1e-3944-856b-83cb-362f1b76584b",
									true,
								},
								
								{
									"c39084f8-e547-a4f5-9230-8129c3350251",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Bloodwhetting",
							uuid = "5740e4c9-9929-145f-af8a-bf803840a268",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "7cd40f1e-3944-856b-83cb-362f1b76584b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "c39084f8-e547-a4f5-9230-8129c3350251",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T2 / P4",
				mechanicTime = 1008,
				name = "[T2] Raw Intuition - Capital Punishment 1",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = 1.4,
				timerStartOffset = -0.5,
				uuid = "f05811ef-f7a6-0776-bd54-05bd2e2ee420",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker ",
				uuid = "17ffbda3-1204-bbb7-aafd-eed73f2f28a0",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T1 ",
				uuid = "b35c7367-b163-f7e2-affb-9a80e5a73804",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T1 ",
				name = " P4",
				uuid = "03825d55-3edc-9dff-8808-4cab5d00daa3",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"187a05eb-4e71-a9fd-9171-1d8826ed6387",
									true,
								},
								
								{
									"de27cd48-e51c-1d75-9b3a-65d12a6b4cad",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Rampart",
							uuid = "0ae5299b-9d33-6234-be5f-58f4d9818575",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "187a05eb-4e71-a9fd-9171-1d8826ed6387",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "de27cd48-e51c-1d75-9b3a-65d12a6b4cad",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T1 / P4",
				mechanicTime = 1008,
				name = "[T1] Rampart - Capital Punishment 1",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = -4.2,
				timerStartOffset = -6,
				uuid = "d2966bf9-4ce3-2ab1-88a2-6ef89a7a5868",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"dd9d22e6-0ea9-a73c-8658-602ca0d184ce",
									true,
								},
								
								{
									"ee5e632a-43f8-dc11-a189-11a274ae4c53",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Nebula",
							uuid = "72553248-c890-16a7-a9fb-f43366e2850e",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "dd9d22e6-0ea9-a73c-8658-602ca0d184ce",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "ee5e632a-43f8-dc11-a189-11a274ae4c53",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T1 / P4",
				mechanicTime = 1008,
				name = "[T1] Nebula - Capital Punishment 1",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = -2.2,
				timerStartOffset = -4,
				uuid = "b331c1ff-a9d1-be5d-950c-8d2b8f614c96",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"77b9545c-26b1-894c-85ec-15c45331c32a",
									true,
								},
								
								{
									"85cd80e3-17d0-5986-a1ad-8f2abe1da2f6",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							uuid = "b4a64dcb-d572-ecf6-9ad4-f38375141de6",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "77b9545c-26b1-894c-85ec-15c45331c32a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "85cd80e3-17d0-5986-a1ad-8f2abe1da2f6",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T1 / P4",
				mechanicTime = 1008,
				name = "[T1] Camouflage - Capital Punishment 1",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = -0.6,
				timerStartOffset = -2,
				uuid = "3733a7cd-c5e9-2720-ad1c-ba74e964da85",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"eb9fcd6a-28a7-a9c4-831e-0e497d51854e",
									true,
								},
								
								{
									"77cdbb69-fd9a-b43f-aa3e-495b6e9bfa31",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "f0ee812e-b0d9-34b2-956b-39265b126880",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "eb9fcd6a-28a7-a9c4-831e-0e497d51854e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "77cdbb69-fd9a-b43f-aa3e-495b6e9bfa31",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T1 / P4",
				mechanicTime = 1008,
				name = "[T1] Heart of Stone - Capital Punishment 1",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = 1.4,
				timerStartOffset = -0.5,
				uuid = "5e15fd10-d886-97c1-94c5-5f6ca8d67414",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T2 ",
				uuid = "f774236b-9797-bf5b-9568-2c8292a832a0",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T2 ",
				name = " P4",
				uuid = "af6cf66c-cfb0-0f97-b808-9fe321c3c675",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"51cb3c71-fcd7-13b1-811f-5b46c21cd230",
									true,
								},
								
								{
									"00eb94e5-18e1-4e19-a5f6-2bfc7b4295aa",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Rampart",
							uuid = "bba1589d-b255-f191-8e6f-264e9a76eb53",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "51cb3c71-fcd7-13b1-811f-5b46c21cd230",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "00eb94e5-18e1-4e19-a5f6-2bfc7b4295aa",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T2 / P4",
				mechanicTime = 1008,
				name = "[T2] Rampart - Capital Punishment 1",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = -4.2,
				timerStartOffset = -6,
				uuid = "87d9de11-0809-e655-a56a-06547c6e4616",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"d598f59e-ff06-fd8d-8882-1c455c7e57d7",
									true,
								},
								
								{
									"99b78709-2445-a7df-99f1-36b0350cff41",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Nebula",
							uuid = "22a41732-0261-7395-9c7a-60fa5cdc9933",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "d598f59e-ff06-fd8d-8882-1c455c7e57d7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "99b78709-2445-a7df-99f1-36b0350cff41",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T2 / P4",
				mechanicTime = 1008,
				name = "[T2] Nebula - Capital Punishment 1",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = -2.2,
				timerStartOffset = -4,
				uuid = "b067604b-aa9d-91ae-b877-8561ef47ea3e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"53fb2da1-58f0-548a-aa21-fe4e4386498b",
									true,
								},
								
								{
									"cdf1a2f7-156e-9969-8e99-303226b32a7f",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							uuid = "7e5eda55-51a3-c249-80ce-7e0528152d13",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "53fb2da1-58f0-548a-aa21-fe4e4386498b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "cdf1a2f7-156e-9969-8e99-303226b32a7f",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T2 / P4",
				mechanicTime = 1008,
				name = "[T2] Camouflage - Capital Punishment 1",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = -0.6,
				timerStartOffset = -2,
				uuid = "0369af5c-d462-2dff-9969-5a6ebd607a98",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"1257dd15-ad1b-b4ec-951a-a74845367698",
									true,
								},
								
								{
									"7b3e51cb-2ca2-e521-aab0-41bca56b7003",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumSelf",
							uuid = "0899a643-b3ca-b31a-8bf7-09234c17e85f",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "1257dd15-ad1b-b4ec-951a-a74845367698",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "7b3e51cb-2ca2-e521-aab0-41bca56b7003",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T2 / P4",
				mechanicTime = 1008,
				name = "[T2] Heart of Stone - Capital Punishment 1",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = 1.4,
				timerStartOffset = -0.5,
				uuid = "ed9043bc-4cd5-2791-959b-12649d481266",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight ",
				uuid = "837d1441-1925-cc00-b43f-69bf1a774186",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T1 ",
				uuid = "b2386d5f-124f-aa7f-99f1-b5de70813546",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T1 ",
				name = " P4",
				uuid = "1ad465b4-70e1-5baf-bf2e-dab9fd60836c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"c99b00dc-8b4f-1d4b-a64c-b5d7c82e5c20",
									true,
								},
								
								{
									"fd2539cd-662d-c262-9fd9-9abe14999dae",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_Rampart",
							uuid = "a38e9293-1089-e2b0-bab5-63618725ac16",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "c99b00dc-8b4f-1d4b-a64c-b5d7c82e5c20",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "fd2539cd-662d-c262-9fd9-9abe14999dae",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T1 / P4",
				mechanicTime = 1008,
				name = "[T1] Rampart - Capital Punishment 1",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = -4.2,
				timerStartOffset = -6,
				uuid = "fc582856-dc56-842e-ac0f-48549033930f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"aae60864-35f2-0249-a5ce-0452448d93f3",
									true,
								},
								
								{
									"9d6c10bf-7c21-eb28-9a88-a9e1d070abb3",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_ShadowedVigil",
							uuid = "d4b8c093-8dcc-7661-a08d-080e68c498c2",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "aae60864-35f2-0249-a5ce-0452448d93f3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "9d6c10bf-7c21-eb28-9a88-a9e1d070abb3",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T1 / P4",
				mechanicTime = 1008,
				name = "[T1] Shadow Wall - Capital Punishment 1",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = -2.2,
				timerStartOffset = -4,
				uuid = "06101b4e-11cd-7f4d-ab66-58c66c8e46e7",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"6775af9d-de73-a69b-955b-5b8b16dc1fb9",
									true,
								},
								
								{
									"c08995a2-c928-b2e9-8f66-9ad7dc29c837",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_DarkMind",
							uuid = "67d8bc32-e999-2352-9f4b-05db9899b7c3",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "6775af9d-de73-a69b-955b-5b8b16dc1fb9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "c08995a2-c928-b2e9-8f66-9ad7dc29c837",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T1 / P4",
				mechanicTime = 1008,
				name = "[T1] Dark Mind - Capital Punishment 1",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = -0.6,
				timerStartOffset = -2,
				uuid = "4389c3dc-b40d-35c9-9b76-db622ddf9f55",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"592f1a80-cfde-9845-a0d5-788c1348ec36",
									true,
								},
								
								{
									"a7826abb-9c56-b849-9c64-8a5cc7dc3836",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf",
							uuid = "70de948d-bdeb-4c35-951b-aa1177e569c9",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "592f1a80-cfde-9845-a0d5-788c1348ec36",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "a7826abb-9c56-b849-9c64-8a5cc7dc3836",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T1 / P4",
				mechanicTime = 1008,
				name = "[T1] The Blackest Night - Capital Punishment 1",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = 1.4,
				timerStartOffset = -0.5,
				uuid = "97c63e8c-bc7d-6fa4-99f0-b93fa73cbcc1",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T2 ",
				uuid = "624a508b-8158-7553-a66f-8a7a589cadeb",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T2 ",
				name = " P4",
				uuid = "2b40baaa-be3b-7299-8a61-124ba1044e2c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"75e48893-4b10-d13a-9d5b-d919b09ed898",
									true,
								},
								
								{
									"3b9bb278-dad8-4042-b035-3145e490b2ed",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_Rampart",
							uuid = "57b19b17-133f-50a0-aa50-521d2c001610",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "75e48893-4b10-d13a-9d5b-d919b09ed898",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "3b9bb278-dad8-4042-b035-3145e490b2ed",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T2 / P4",
				mechanicTime = 1008,
				name = "[T2] Rampart - Capital Punishment 1",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = -4.2,
				timerStartOffset = -6,
				uuid = "da903fae-554d-3cf1-bd44-c9ff79a9de5c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"b6933720-5637-7131-a96f-7514faf2c3ca",
									true,
								},
								
								{
									"26822d44-53e1-cc37-a93a-ef030e316afd",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_ShadowedVigil",
							uuid = "7c46da9d-9582-3d78-8674-185d635af20f",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "b6933720-5637-7131-a96f-7514faf2c3ca",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "26822d44-53e1-cc37-a93a-ef030e316afd",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T2 / P4",
				mechanicTime = 1008,
				name = "[T2] Shadow Wall - Capital Punishment 1",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = -2.2,
				timerStartOffset = -4,
				uuid = "7c972c65-6f18-37b5-b2fd-fda8cdcb2ae0",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"127aefb8-a0c8-b902-8139-ad332ebb0d20",
									true,
								},
								
								{
									"2262a48d-5416-d067-b2b7-21c8a510e868",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_DarkMind",
							uuid = "3cc5b75d-9842-2e3e-bf1b-be5335b3dc13",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "127aefb8-a0c8-b902-8139-ad332ebb0d20",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "2262a48d-5416-d067-b2b7-21c8a510e868",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T2 / P4",
				mechanicTime = 1008,
				name = "[T2] Dark Mind - Capital Punishment 1",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = -0.6,
				timerStartOffset = -2,
				uuid = "4c83a320-1610-58ed-b775-01d9e32a0d69",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a20b55ba-6ca6-35cd-ba58-d8fe371b0a52",
									true,
								},
								
								{
									"038b308c-7f2f-c0db-a951-37460f0f5243",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightSelf",
							uuid = "32b3b865-4b44-695e-a970-9b9f16d85b33",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "a20b55ba-6ca6-35cd-ba58-d8fe371b0a52",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "038b308c-7f2f-c0db-a951-37460f0f5243",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T2 / P4",
				mechanicTime = 1008,
				name = "[T2] The Blackest Night - Capital Punishment 1",
				timeRange = true,
				timelineIndex = 174,
				timerEndOffset = 1.4,
				timerStartOffset = -0.5,
				uuid = "f263ec0d-81af-0ffb-a996-f8bdecb46045",
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
				name = "Paladin ",
				uuid = "9c6411c8-85eb-8b2b-b9e8-311864321602",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T2 ",
				uuid = "8a60894c-8edc-c309-afd7-136117c6ae84",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T2 ",
				name = " P4",
				uuid = "1532a6d6-edcb-5005-a0f5-b9fbb3b3ba62",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"7e9c1760-3153-1ab3-a064-012767ccb936",
									true,
								},
								
								{
									"c8537d6a-99fb-e751-bead-fcee289f9b40",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_DivineVeil",
							uuid = "ef5eb8e1-ec18-cfe1-8158-1275fe5bcce2",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "7e9c1760-3153-1ab3-a064-012767ccb936",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "c8537d6a-99fb-e751-bead-fcee289f9b40",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T2 / P4",
				mechanicTime = 1070.3,
				name = "[T2] Divine Veil - Fate Calibration Beta",
				timeRange = true,
				timelineIndex = 185,
				timerEndOffset = -0.3,
				timerStartOffset = -2.3,
				uuid = "6683ec79-473f-c3c0-8dfe-c6ba9af85c3f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior ",
				uuid = "fcf191d0-b7a1-b009-9c43-680918518f5d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T2 ",
				uuid = "72bcf32a-2839-6f8f-8c5f-94ada08677f8",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T2 ",
				name = " P4",
				uuid = "c03549a6-0375-d1d4-9ca4-2ac1f824ce04",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"d1d82d3d-40f2-63a8-874c-0c664f7603bd",
									true,
								},
								
								{
									"ca92b83a-6461-282e-bda2-90822a9ad8d8",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_ShakeItOff",
							uuid = "ca171176-c970-4348-b375-8fe308e49256",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "d1d82d3d-40f2-63a8-874c-0c664f7603bd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "ca92b83a-6461-282e-bda2-90822a9ad8d8",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T2 / P4",
				mechanicTime = 1070.3,
				name = "[T2] Shake It Off - Fate Calibration Beta",
				timeRange = true,
				timelineIndex = 185,
				timerEndOffset = -0.3,
				timerStartOffset = -2.3,
				uuid = "4ef6ce6e-40ad-d327-8b5a-60f514c29c0f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker ",
				uuid = "e94222c3-d81d-c0e5-b16c-624fd885a519",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T2 ",
				uuid = "ae5c274f-ef11-1f38-bf5f-b6c35b92c06e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T2 ",
				name = " P4",
				uuid = "b17baa29-825c-832f-befd-97b2f521bb8b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a86d7f8b-8928-3b44-b45e-815559bbc1fb",
									true,
								},
								
								{
									"a21f4f4d-21af-7a49-91e4-c4c3a75d7855",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "3d1f793c-3b4c-1033-a6ea-716d46980a34",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "a86d7f8b-8928-3b44-b45e-815559bbc1fb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "a21f4f4d-21af-7a49-91e4-c4c3a75d7855",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T2 / P4",
				mechanicTime = 1070.3,
				name = "[T2] Heart of Light - Fate Calibration Beta",
				timeRange = true,
				timelineIndex = 185,
				timerEndOffset = -0.3,
				timerStartOffset = -2.3,
				uuid = "b03e2a44-c914-540c-aa1e-89a2aee838b4",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight ",
				uuid = "b02f8675-c44e-0e6f-9bb9-791c824a3bf8",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T2 ",
				uuid = "66555bd9-8933-d2d9-a68b-12f159758d4d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T2 ",
				name = " P4",
				uuid = "ba502adb-de52-7ea4-aed6-a7cd93c92b1c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"43fe563d-b69d-57f4-899a-558f0da92f75",
									true,
								},
								
								{
									"f10ed252-5bac-f367-bbf7-a6c08ea610d1",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_DarkMissionary",
							uuid = "cecbdd54-4380-214c-a6d9-ae0e85032ed0",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "43fe563d-b69d-57f4-899a-558f0da92f75",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "f10ed252-5bac-f367-bbf7-a6c08ea610d1",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T2 / P4",
				mechanicTime = 1070.3,
				name = "[T2] Dark Missionary - Fate Calibration Beta",
				timeRange = true,
				timelineIndex = 185,
				timerEndOffset = -0.3,
				timerStartOffset = -2.3,
				uuid = "abcc630f-7c37-51dd-b955-22ebc599e6eb",
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
				name = "Paladin ",
				uuid = "85860656-9457-1450-b420-4c83958b9753",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T2 ",
				uuid = "6c095435-1fba-e703-a036-4eb0c73df899",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T2 ",
				name = " P4",
				uuid = "963a6c24-134a-e8ed-9869-855a4ee93e37",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"5036ecba-25c4-fcad-afd7-97ca0d69e0fe",
									true,
								},
								
								{
									"ba4a19ab-f2cb-ddd3-ab96-91abb2ed7b1f",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HallowedGround",
							uuid = "145d995b-c8fb-260d-8b69-88f71b0a9595",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "5036ecba-25c4-fcad-afd7-97ca0d69e0fe",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "ba4a19ab-f2cb-ddd3-ab96-91abb2ed7b1f",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T2 / P4",
				mechanicTime = 1106.8,
				name = "[T2] Hallowed Ground - Capital Punishment 2",
				timeRange = true,
				timelineIndex = 193,
				timerEndOffset = 1.2,
				timerStartOffset = -1.3,
				uuid = "a69eb4ab-9d99-5f9a-b853-bc5d39ff12e4",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior ",
				uuid = "d2608231-3bd4-4775-bcf3-83786e9d8252",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T2 ",
				uuid = "be114e5e-f184-3ca8-bd36-f8cffc28970b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T2 ",
				name = " P4",
				uuid = "c1e0a639-a5de-5424-9700-8a7110d00e72",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"203d484c-6575-8154-8cb3-6d1a72553542",
									true,
								},
								
								{
									"44d9858a-7d3b-7a65-bbc4-8b452a972c1d",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Holmgang",
							uuid = "cb58108d-bfef-cb26-9e62-23c6977e9579",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "203d484c-6575-8154-8cb3-6d1a72553542",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "44d9858a-7d3b-7a65-bbc4-8b452a972c1d",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T2 / P4",
				mechanicTime = 1106.8,
				name = "[T2] Holmgang - Capital Punishment 2",
				timeRange = true,
				timelineIndex = 193,
				timerEndOffset = 1.2,
				timerStartOffset = -1.3,
				uuid = "7ce0552b-0382-0b7e-95ab-c2e42771e065",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker ",
				uuid = "116f5351-90db-6edf-a590-132f5c19a1a5",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T2 ",
				uuid = "5844de38-0a5e-4eca-add0-90a6a4a9717b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T2 ",
				name = " P4",
				uuid = "96f888b7-8c35-92af-977d-143702fe965b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"510f0304-53ab-5647-a9de-2f06fcb9213d",
									true,
								},
								
								{
									"8defbaa9-c261-e194-b88e-84a959865b37",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Superbolide",
							uuid = "5310f1d1-e786-cd16-af7f-72feea47b65e",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "510f0304-53ab-5647-a9de-2f06fcb9213d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "8defbaa9-c261-e194-b88e-84a959865b37",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T2 / P4",
				mechanicTime = 1106.8,
				name = "[T2] Superbolide - Capital Punishment 2",
				timeRange = true,
				timelineIndex = 193,
				timerEndOffset = 1.2,
				timerStartOffset = -1.3,
				uuid = "80e2e8e2-6c9d-1c60-a9ff-9d76107099e2",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight ",
				uuid = "a9b41122-b186-ec08-8490-26f16b5310fc",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T2 ",
				uuid = "9b7ae741-b011-fb3e-8d48-079e521feeb7",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T2 ",
				name = " P4",
				uuid = "9f6e6987-4848-1e91-8280-c716656ee28f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"ec51818b-742f-5d59-a8dc-4ecbe48fff7f",
									true,
								},
								
								{
									"7810eda3-0cbf-1c72-890a-7a2705ba4d8b",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_LivingDead",
							uuid = "09fb135d-aed8-2c77-b915-a6a75d1d53f2",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "ec51818b-742f-5d59-a8dc-4ecbe48fff7f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "7810eda3-0cbf-1c72-890a-7a2705ba4d8b",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T2 / P4",
				mechanicTime = 1106.8,
				name = "[T2] Living Dead - Capital Punishment 2",
				timeRange = true,
				timelineIndex = 193,
				timerEndOffset = 1.2,
				timerStartOffset = -1.3,
				uuid = "7628d4b8-fda0-76a2-b916-3adc709921af",
				version = 2,
			},
		},
	},
	[203] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin ",
				uuid = "67b66a1d-315e-8660-b377-262f24786322",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T1 ",
				uuid = "dacad3a8-1529-ff7d-b8c9-b96bc9696c1c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T1 ",
				name = " P4",
				uuid = "9633c216-10f8-512a-87f4-136c885d33be",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"e05ce4cd-1d28-7a1a-9f90-20026d8eeb53",
									true,
								},
								
								{
									"ad43fb00-f5af-e78e-a2a7-7f420d57eb95",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Reprisal",
							uuid = "c4a27ad6-1ec6-8e0a-a06c-c3d8d96011a2",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "e05ce4cd-1d28-7a1a-9f90-20026d8eeb53",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "ad43fb00-f5af-e78e-a2a7-7f420d57eb95",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T1 / P4",
				mechanicTime = 1142.5,
				name = "[T1] Reprisal - Grace 1",
				timeRange = true,
				timelineIndex = 203,
				timerEndOffset = -0.9,
				timerStartOffset = -2.5,
				uuid = "0a31c006-ccd5-3b9e-a19c-4e80480c1ba1",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"2e5d6475-7ec4-a699-9b24-dac7042401c6",
									true,
								},
								
								{
									"247c10c7-5228-dcc7-a795-8154cf8781b8",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_DivineVeil",
							uuid = "ad4f1e37-90d9-4e0b-b220-6f832b48d046",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "2e5d6475-7ec4-a699-9b24-dac7042401c6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "247c10c7-5228-dcc7-a795-8154cf8781b8",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T1 / P4",
				mechanicTime = 1142.5,
				name = "[T1] Divine Veil - Grace 1",
				timeRange = true,
				timelineIndex = 203,
				timerEndOffset = -2.9,
				timerStartOffset = -5.5,
				uuid = "42cb70b6-a0f0-23e9-892d-b4d9baeb5a96",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T2 ",
				uuid = "edd56962-57a3-a056-bc48-7096e2d97bf4",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T2 ",
				name = " P4",
				uuid = "9638291c-6d28-b57e-80e0-ecd92f358e25",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"4306dab6-653f-5263-bd4f-10b8282a51e0",
									true,
								},
								
								{
									"4a2031c0-1a90-992b-b494-69eca3529893",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_InterventionMouse",
							targetType = "Other Tank",
							uuid = "6aeec415-a46f-4c25-a754-1766719c0190",
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
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "4306dab6-653f-5263-bd4f-10b8282a51e0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "4a2031c0-1a90-992b-b494-69eca3529893",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T2 / P4",
				mechanicTime = 1142.5,
				name = "[T2] Intervention - Grace 1 support",
				timeRange = true,
				timelineIndex = 203,
				timerEndOffset = -2,
				timerStartOffset = -4,
				uuid = "9b4e4ec2-83b9-1a71-83e8-8b448967c213",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior ",
				uuid = "eb628701-c529-a9f9-95d0-34c6e4cf11d0",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T1 ",
				uuid = "3cb370ac-ba33-aff5-8f2c-804032fdcf11",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T1 ",
				name = " P4",
				uuid = "fbca92dd-53ab-b071-977b-6f2a43228a6f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"3ec8ae17-47dd-3cf6-9f6a-ee68fe047163",
									true,
								},
								
								{
									"67aa6fb1-4377-dba5-bc1a-81769ed7603b",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Reprisal",
							uuid = "a6bb9fce-b779-5258-9759-1e6cee905f01",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "3ec8ae17-47dd-3cf6-9f6a-ee68fe047163",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "67aa6fb1-4377-dba5-bc1a-81769ed7603b",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T1 / P4",
				mechanicTime = 1142.5,
				name = "[T1] Reprisal - Grace 1",
				timeRange = true,
				timelineIndex = 203,
				timerEndOffset = -0.9,
				timerStartOffset = -2.5,
				uuid = "e428f8db-1b4d-4423-96fa-69033db65590",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"7616024c-78bd-cd76-907a-304243f4a860",
									true,
								},
								
								{
									"cafc7dba-d216-1594-ac43-5570f009fe62",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_ShakeItOff",
							uuid = "34bcb791-6a96-00bb-8871-42ee40c9e3a8",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "7616024c-78bd-cd76-907a-304243f4a860",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "cafc7dba-d216-1594-ac43-5570f009fe62",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T1 / P4",
				mechanicTime = 1142.5,
				name = "[T1] Shake It Off - Grace 1",
				timeRange = true,
				timelineIndex = 203,
				timerEndOffset = -2.9,
				timerStartOffset = -5.5,
				uuid = "7ac520c5-f3d8-ca3e-8b9c-149786c0c109",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T2 ",
				uuid = "acedf774-e8f5-c36f-8fc4-3f0394b0fdd4",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T2 ",
				name = " P4",
				uuid = "0148e66b-4a2f-df68-89be-66bbe878ebc6",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"7e788bc6-c5d4-0797-919a-d34ef91a6ac9",
									true,
								},
								
								{
									"4acf6205-cba6-b792-be39-8d758499876a",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_NascentFlashMouse",
							targetType = "Other Tank",
							uuid = "f2fc5c2c-824b-c786-a46c-8175c15a77ab",
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
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							name = "Warrior",
							uuid = "7e788bc6-c5d4-0797-919a-d34ef91a6ac9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "4acf6205-cba6-b792-be39-8d758499876a",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T2 / P4",
				mechanicTime = 1142.5,
				name = "[T2] Nascent Flash - Grace 1 support",
				timeRange = true,
				timelineIndex = 203,
				timerEndOffset = -2,
				timerStartOffset = -4,
				uuid = "fc298fc2-6fb1-e37d-a011-2f758c7d21c2",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker ",
				uuid = "05ed11c2-77d7-6359-a417-597386ad3088",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T1 ",
				uuid = "0ba75a51-f5ee-a77d-ad86-f3307b20341a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T1 ",
				name = " P4",
				uuid = "1141f00a-f0b1-9235-8200-72cc9a0cde67",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"87e666fa-e776-b3ee-bc74-009f9d5e9e31",
									true,
								},
								
								{
									"9991c7a8-33c7-7e92-99a4-b53cca3fc5f9",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "b23e0de5-da36-781f-8bf4-a9c719dabf34",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "87e666fa-e776-b3ee-bc74-009f9d5e9e31",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "9991c7a8-33c7-7e92-99a4-b53cca3fc5f9",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T1 / P4",
				mechanicTime = 1142.5,
				name = "[T1] Reprisal - Grace 1",
				timeRange = true,
				timelineIndex = 203,
				timerEndOffset = -0.9,
				timerStartOffset = -2.5,
				uuid = "f8ddce17-30f1-93c5-a6f2-91479a69c0f8",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"5619b5f1-1eb3-3f25-9227-3ec49808b771",
									true,
								},
								
								{
									"e61d5787-78af-4955-832e-6af379612031",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "04a11961-acbe-f132-b096-28a2aec5d313",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "5619b5f1-1eb3-3f25-9227-3ec49808b771",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "e61d5787-78af-4955-832e-6af379612031",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T1 / P4",
				mechanicTime = 1142.5,
				name = "[T1] Heart of Light - Grace 1",
				timeRange = true,
				timelineIndex = 203,
				timerEndOffset = -2.9,
				timerStartOffset = -5.5,
				uuid = "c0c46987-5002-a570-a19c-5aebe2554a96",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T2 ",
				uuid = "f43c058a-c7e2-806e-9f98-52309d8c0551",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T2 ",
				name = " P4",
				uuid = "2ec14b0f-9dc2-975f-8dd9-ef1558a168d6",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"453de1c6-c355-71fa-8296-12cf583d9ffb",
									true,
								},
								
								{
									"d6243881-8386-b279-a9d3-26818a07d9b7",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumMouse",
							targetType = "Other Tank",
							uuid = "224a046b-7e11-d54f-8a91-88b65a088779",
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
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "453de1c6-c355-71fa-8296-12cf583d9ffb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "d6243881-8386-b279-a9d3-26818a07d9b7",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T2 / P4",
				mechanicTime = 1142.5,
				name = "[T2] Heart of Stone - Grace 1 support",
				timeRange = true,
				timelineIndex = 203,
				timerEndOffset = -2,
				timerStartOffset = -4,
				uuid = "eae11885-be9d-fb68-9391-8456061c11b4",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight ",
				uuid = "3b664947-f84f-c044-bf49-676b25606236",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T1 ",
				uuid = "2b155f77-cd25-8769-8c0a-73553d584144",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T1 ",
				name = " P4",
				uuid = "8ccc6f27-10b3-6e97-9349-3cdc0eeef25d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"7cf65407-5620-d0d8-a379-03719bf80144",
									true,
								},
								
								{
									"d9e796f5-d1e6-bbda-a1fe-0717b22f5809",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_Reprisal",
							uuid = "1799bf02-3b99-7c34-bfc4-d7e0261f004b",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "7cf65407-5620-d0d8-a379-03719bf80144",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "d9e796f5-d1e6-bbda-a1fe-0717b22f5809",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T1 / P4",
				mechanicTime = 1142.5,
				name = "[T1] Reprisal - Grace 1",
				timeRange = true,
				timelineIndex = 203,
				timerEndOffset = -0.9,
				timerStartOffset = -2.5,
				uuid = "11cae8af-f448-97d2-a1b3-72554b583e95",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"646fc271-1215-e4e7-96dd-e6d3e8918a82",
									true,
								},
								
								{
									"dcb481be-9abf-3d7b-964c-84a4efa42d90",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_DarkMissionary",
							uuid = "ec9c78f4-9a5d-2802-a64e-947ccc397d25",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "646fc271-1215-e4e7-96dd-e6d3e8918a82",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "dcb481be-9abf-3d7b-964c-84a4efa42d90",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T1 / P4",
				mechanicTime = 1142.5,
				name = "[T1] Dark Missionary - Grace 1",
				timeRange = true,
				timelineIndex = 203,
				timerEndOffset = -2.9,
				timerStartOffset = -5.5,
				uuid = "8db06f95-5da3-d252-a244-b4d2e0a16117",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T2 ",
				uuid = "d8316d30-74db-8e43-b064-6d6a6697d2d2",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T2 ",
				name = " P4",
				uuid = "12efb70c-4b76-b2f5-8bd7-ce0dc5b88238",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"e3179b71-0765-39c4-b8ea-b8ea446f2d52",
									true,
								},
								
								{
									"44a45b88-ec21-0fe8-8497-7b5ced4add99",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightMouse",
							targetType = "Other Tank",
							uuid = "64bc1b4c-e5b4-ce4d-8880-d464f8aa2c3f",
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
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "e3179b71-0765-39c4-b8ea-b8ea446f2d52",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "44a45b88-ec21-0fe8-8497-7b5ced4add99",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T2 / P4",
				mechanicTime = 1142.5,
				name = "[T2] The Blackest Night - Grace 1 support",
				timeRange = true,
				timelineIndex = 203,
				timerEndOffset = -2,
				timerStartOffset = -4,
				uuid = "40c5fb2a-5948-e501-a229-101c7cf6cba8",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DPS ",
				uuid = "e12a6e84-2192-ace1-9ba0-69c4291ccd7c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " R1",
				uuid = "b921a932-f6d1-0e75-96eb-e1bd994bf623",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"e7a50fae-e81c-b616-89f5-2d043e554420",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_Hotbar_Dismantle",
							uuid = "344b1b68-475d-537f-8243-996154bb2be0",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R1\" or false",
							name = "Assigned R1",
							uuid = "e7a50fae-e81c-b616-89f5-2d043e554420",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R1",
				mechanicTime = 1142.5,
				name = "[R1] Dismantle - Grace 1",
				timeRange = true,
				timelineIndex = 203,
				timerEndOffset = -1.1,
				timerStartOffset = -4,
				uuid = "d57d5926-5692-f2ef-b049-692a95f367bc",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"47061346-5c91-3656-b41d-ca3ff6e3b60d",
									true,
								},
							},
							gVar = "ACR_RikuDNC3_Hotbar_CuringWaltz",
							uuid = "d9459076-4614-0329-a026-9086ad598854",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R1\" or false",
							name = "Assigned R1",
							uuid = "47061346-5c91-3656-b41d-ca3ff6e3b60d",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R1",
				enabled = false,
				mechanicTime = 1142.5,
				name = "[R1] CuringWaltz - After Grace 1",
				timeRange = true,
				timelineIndex = 203,
				timerEndOffset = 2,
				timerStartOffset = 0.3,
				uuid = "07484d65-30f3-beb0-9a7a-16c585985294",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " R2",
				uuid = "d5c967ad-9a0d-8975-8dfb-3cafb3420a1c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"4359bbe7-d86c-1ed6-b552-7fa059dbfeed",
									true,
								},
								
								{
									"b09582bc-d9df-1d43-ac5f-b6a5f1bd2b4d",
									true,
								},
							},
							gVar = "ACR_TensorNuke4_Hotbar_Addle",
							uuid = "7c76a230-1496-86ce-9490-0e11568626eb",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R2\" or false",
							name = "Assigned R2",
							uuid = "4359bbe7-d86c-1ed6-b552-7fa059dbfeed",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local target = TensorCore.mGetTarget()\nreturn target and target.contentid == 9042 or false",
							name = "Perfect Alexander selected",
							uuid = "b09582bc-d9df-1d43-ac5f-b6a5f1bd2b4d",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R2",
				mechanicTime = 1142.5,
				name = "[R2] Addle - Grace 1",
				timeRange = true,
				timelineIndex = 203,
				timerEndOffset = -1.2,
				timerStartOffset = -3.9,
				uuid = "c777796c-febe-4a53-a7bb-2660da9f0996",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"ce475fe4-a8cd-7ec9-94ed-1c879eb4522e",
									true,
								},
								
								{
									"0fe4b8d9-2043-61e1-b753-6ed10f5f6a88",
									true,
								},
							},
							gVar = "ACR_TensorNuke4_Hotbar_Manaward",
							uuid = "cf3d27da-7e78-3ee1-9e7b-5daa5ce53f18",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R2\" or false",
							name = "Assigned R2",
							uuid = "0fe4b8d9-2043-61e1-b753-6ed10f5f6a88",
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
							name = "Black Mage",
							uuid = "ce475fe4-a8cd-7ec9-94ed-1c879eb4522e",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R2",
				mechanicTime = 1142.5,
				name = "[R2] Manaward - Grace 1",
				timeRange = true,
				timelineIndex = 203,
				timerEndOffset = -2.5,
				timerStartOffset = -5.5,
				uuid = "6e05e33a-557f-ade2-8064-ab9df74b7ab5",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"3f572ccc-7465-c2f1-9d32-25a3990d779c",
									true,
								},
								
								{
									"67f3be66-e235-68e2-98b2-f0fa4cd4d2de",
									true,
								},
							},
							gVar = "ACR_RikuPCT3_Hotbar_TemperaCoat",
							uuid = "da947a7d-c5ab-e61d-a9c5-e01789039e6a",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R2\" or false",
							name = "Assigned R2",
							uuid = "67f3be66-e235-68e2-98b2-f0fa4cd4d2de",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PICTOMANCER",
							name = "Pictomancer",
							uuid = "3f572ccc-7465-c2f1-9d32-25a3990d779c",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R2",
				mechanicTime = 1142.5,
				name = "[R2] TemperaCoat - Grace 1",
				timeRange = true,
				timelineIndex = 203,
				timerEndOffset = -2.5,
				timerStartOffset = -5.5,
				uuid = "bb9ba179-59ad-3d52-a5df-b7a176871090",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " M1",
				uuid = "132d8284-a8e0-78e1-9187-89b345bcfa43",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"744b7dad-772b-2ef4-bd5d-5e23a41d4f4b",
									true,
								},
								
								{
									"3e6d82c6-6100-97bb-980d-2ea9295703fb",
									true,
								},
							},
							gVar = "ACR_TensorViper3_Hotbar_Feint",
							uuid = "5bba4ddc-f284-fbf9-8688-26a9c2097288",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"M1\" or false",
							name = "Assigned M1",
							uuid = "744b7dad-772b-2ef4-bd5d-5e23a41d4f4b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local target = TensorCore.mGetTarget()\nreturn target and target.contentid == 9042 or false",
							name = "Perfect Alexander selected",
							uuid = "3e6d82c6-6100-97bb-980d-2ea9295703fb",
							version = 3,
						},
					},
				},
				displayPath = "DPS / M1",
				mechanicTime = 1142.5,
				name = "[M1] Feint - Grace 1",
				timeRange = true,
				timelineIndex = 203,
				timerEndOffset = -1.1,
				timerStartOffset = -4,
				uuid = "5fda5808-2202-1147-92e8-26129178d538",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " Reaper",
				uuid = "81b5fba5-d204-bfa3-9a87-9de22b9f3b17",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"e625e254-b964-3faa-a738-4ac2fcc23a2f",
									true,
								},
								
								{
									"9d9516ec-85a5-82ac-9f46-d4b8287ec872",
									true,
								},
							},
							gVar = "ACR_TensorReaper4_Hotbar_ArcaneCrest",
							uuid = "afc03f66-7d85-0075-96b5-51894fc901b3",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif not roster or not roster.current() then return false end\nlocal slot = roster.mySlot()\nreturn slot == \"M1\" or slot == \"M2\"",
							name = "Assigned M1 or M2",
							uuid = "9d9516ec-85a5-82ac-9f46-d4b8287ec872",
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
							name = "Reaper",
							uuid = "e625e254-b964-3faa-a738-4ac2fcc23a2f",
							version = 3,
						},
					},
				},
				displayPath = "DPS / Reaper",
				mechanicTime = 1142.5,
				name = "[RPR] Arcane Crest - Grace 1",
				timeRange = true,
				timelineIndex = 203,
				timerEndOffset = -1.2,
				timerStartOffset = -3.7,
				uuid = "db7869e6-ec26-882d-9dc1-24c4962261e1",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " Samurai",
				uuid = "0f6ef011-1486-8991-bf7a-858bf4a9782f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"e96e0f38-b37c-24c6-9056-b0da714d9bb6",
									true,
								},
								
								{
									"931b4d13-5a8f-5ab8-a344-e1e67dfe3959",
									true,
								},
							},
							gVar = "ACR_TensorWeeb3_Hotbar_Tengetsu",
							uuid = "8afd89d5-0386-e253-8447-057c40a1aea0",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif not roster or not roster.current() then return false end\nlocal slot = roster.mySlot()\nreturn slot == \"M1\" or slot == \"M2\"",
							name = "Assigned M1 or M2",
							uuid = "931b4d13-5a8f-5ab8-a344-e1e67dfe3959",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "SAMURAI",
							name = "Samurai",
							uuid = "e96e0f38-b37c-24c6-9056-b0da714d9bb6",
							version = 3,
						},
					},
				},
				displayPath = "DPS / Samurai",
				mechanicTime = 1142.5,
				name = "[SAM] Third Eye - Grace 1",
				timeRange = true,
				timelineIndex = 203,
				timerEndOffset = -1.2,
				timerStartOffset = -3.2,
				uuid = "9020515c-8e72-898a-b569-44ffbe2761b2",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " Ninja",
				uuid = "89ac8bed-7dea-1bb7-841b-675aa6ffb2a8",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"ff4f695f-8706-a271-af01-f36a479ed142",
									true,
								},
								
								{
									"5670b8dd-719a-4428-9bff-6f7d643b6539",
									true,
								},
							},
							gVar = "ACR_RikuNIN3_Hotbar_ShadeShift",
							uuid = "7cb9edf1-963c-f401-97ba-25b366842fac",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif not roster or not roster.current() then return false end\nlocal slot = roster.mySlot()\nreturn slot == \"M1\" or slot == \"M2\"",
							name = "Assigned M1 or M2",
							uuid = "5670b8dd-719a-4428-9bff-6f7d643b6539",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "NINJA",
							name = "Ninja",
							uuid = "ff4f695f-8706-a271-af01-f36a479ed142",
							version = 3,
						},
					},
				},
				displayPath = "DPS / Ninja",
				mechanicTime = 1142.5,
				name = "[NIN] Shade Shift - Grace 1",
				timeRange = true,
				timelineIndex = 203,
				timerEndOffset = -2.5,
				timerStartOffset = -5.5,
				uuid = "84d46b53-749d-fbb9-ab28-d9e9d06f20dd",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " Monk",
				uuid = "fc510522-5689-81b0-8f3c-bd53809ad543",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"d3f2fee8-cf8e-a5c7-8162-6a4b99ee9198",
									true,
								},
								
								{
									"d3a44084-77b1-beca-972c-77fdc0712364",
									true,
								},
							},
							gVar = "ACR_RikuMNK3_Hotbar_RiddleOfEarth",
							uuid = "2d50ccd2-3b8e-ad94-9db9-8de052ee9a5a",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nif not roster or not roster.current() then return false end\nlocal slot = roster.mySlot()\nreturn slot == \"M1\" or slot == \"M2\"",
							name = "Assigned M1 or M2",
							uuid = "d3a44084-77b1-beca-972c-77fdc0712364",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MONK",
							name = "Monk",
							uuid = "d3f2fee8-cf8e-a5c7-8162-6a4b99ee9198",
							version = 3,
						},
					},
				},
				displayPath = "DPS / Monk",
				mechanicTime = 1142.5,
				name = "[MNK] Riddle of Earth - Grace 1",
				timeRange = true,
				timelineIndex = 203,
				timerEndOffset = -1.5,
				timerStartOffset = -3.5,
				uuid = "d8f3915e-83b0-4cdc-ab79-0bcf8373cc8e",
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
				name = "Paladin ",
				uuid = "6bbc4bb4-a5b6-d420-867a-73ab9ea4bf42",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T1 ",
				uuid = "01b308be-a0fe-0d1b-9773-0d7a1fa02f0a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T1 ",
				name = " P4",
				uuid = "e597f4b8-8533-1d83-a254-c67a7d764ded",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"72ad8ebc-0dc0-9c8e-aeaf-bebe1869bd21",
									true,
								},
								
								{
									"b8d1602f-dd09-0b30-a485-175a27724051",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_HallowedGround",
							uuid = "5d1aae7c-5d25-41fb-9539-b98ffa75e24c",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "72ad8ebc-0dc0-9c8e-aeaf-bebe1869bd21",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "b8d1602f-dd09-0b30-a485-175a27724051",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T1 / P4",
				mechanicTime = 1152.6,
				name = "[T1] Hallowed Ground - Capital Punishment 3",
				timeRange = true,
				timelineIndex = 204,
				timerEndOffset = 1.2,
				timerStartOffset = -1.6,
				uuid = "cb860547-3e69-d932-92f5-e8a47a7ddc09",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior ",
				uuid = "c5c8c92f-541f-07ee-85e1-eff258f63c33",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T1 ",
				uuid = "977bd63f-2c0d-6335-a749-00a722406df6",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T1 ",
				name = " P4",
				uuid = "e8f71397-8a43-ade1-98c1-089c285ae2ad",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"46b99c25-655f-b1cd-9eef-ab813a8a44be",
									true,
								},
								
								{
									"ba70c292-4faa-1e53-9a2c-0dfae756609e",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Holmgang",
							uuid = "5b3a723e-4d42-3924-9d9e-959de97f1049",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "46b99c25-655f-b1cd-9eef-ab813a8a44be",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "ba70c292-4faa-1e53-9a2c-0dfae756609e",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T1 / P4",
				mechanicTime = 1152.6,
				name = "[T1] Holmgang - Capital Punishment 3",
				timeRange = true,
				timelineIndex = 204,
				timerEndOffset = 1.2,
				timerStartOffset = -1.6,
				uuid = "960126b1-fb99-bfba-861c-503a76f6b74e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker ",
				uuid = "0c85ad4c-654f-3ce9-9cba-e42daf10cf28",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T1 ",
				uuid = "010033b7-afea-c72e-ba1d-82e2d10f70fe",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T1 ",
				name = " P4",
				uuid = "71c2cbaf-d0d1-0fe6-a642-eb6aaa4226e6",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"89b071de-e69e-58fa-85cd-fb6559f71ef7",
									true,
								},
								
								{
									"f2036974-0439-5249-8a6d-bb57ce91b63a",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Superbolide",
							uuid = "1be52c8c-18c1-f876-bf73-f791e166352d",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "89b071de-e69e-58fa-85cd-fb6559f71ef7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "f2036974-0439-5249-8a6d-bb57ce91b63a",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T1 / P4",
				mechanicTime = 1152.6,
				name = "[T1] Superbolide - Capital Punishment 3",
				timeRange = true,
				timelineIndex = 204,
				timerEndOffset = 1.2,
				timerStartOffset = -1.6,
				uuid = "d669091f-4d5b-7f21-b473-68611f3c83ac",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight ",
				uuid = "9dc5705e-2b0d-50c9-be2e-e118671236dd",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T1 ",
				uuid = "a871a4e0-7572-93f3-9088-3af66d05291e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T1 ",
				name = " P4",
				uuid = "a8c8415a-b8e1-1632-bc81-281262faa3ef",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"eee3fe71-477e-5b52-8b73-5a8f39a50779",
									true,
								},
								
								{
									"c91fb9ae-c64b-8cec-a63e-4a5569682c72",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_LivingDead",
							uuid = "0faba8a1-43d1-3dde-8b07-cbafa6bf3627",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "eee3fe71-477e-5b52-8b73-5a8f39a50779",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "c91fb9ae-c64b-8cec-a63e-4a5569682c72",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T1 / P4",
				mechanicTime = 1152.6,
				name = "[T1] Living Dead - Capital Punishment 3",
				timeRange = true,
				timelineIndex = 204,
				timerEndOffset = 1.2,
				timerStartOffset = -1.6,
				uuid = "36db351e-3f95-1618-9384-158797692c9c",
				version = 2,
			},
		},
	},
	[214] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Paladin ",
				uuid = "bb5f2c6a-54ce-5543-a387-e25e80003f0f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T1 ",
				uuid = "2b9660c5-be02-fd8f-b0ef-98127f969b7d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T1 ",
				name = " P4",
				uuid = "43bf18e6-2ed3-f65c-9e0b-942562df49c4",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"e64cff26-2166-1df6-bb27-0aba54d0a7c4",
									true,
								},
								
								{
									"873cf1b6-fe32-9a85-804b-74015196025f",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_InterventionMouse",
							targetType = "Other Tank",
							uuid = "da9b5736-4edc-4805-be86-61d4979c1d1d",
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
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "e64cff26-2166-1df6-bb27-0aba54d0a7c4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "873cf1b6-fe32-9a85-804b-74015196025f",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T1 / P4",
				mechanicTime = 1187.9,
				name = "[T1] Intervention - Grace 2 support",
				timeRange = true,
				timelineIndex = 214,
				timerEndOffset = -1.9,
				timerStartOffset = -3.9,
				uuid = "4ac72337-c53a-e9b6-a3e7-eba1d59ac0c1",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Paladin ",
				name = " T2 ",
				uuid = "e78cf32a-c2e8-d44e-a116-06d9417eb432",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Paladin / T2 ",
				name = " P4",
				uuid = "6a237e9e-b145-4a45-a547-38c29035d701",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"cbf73e63-5899-c8ea-942e-ba2b9aa3046b",
									true,
								},
								
								{
									"f06a7da8-25b0-40ce-ae53-b03772eef05c",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Rampart",
							uuid = "43ed42a4-bb29-30c6-9604-bad6fd2ceaee",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "cbf73e63-5899-c8ea-942e-ba2b9aa3046b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "f06a7da8-25b0-40ce-ae53-b03772eef05c",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T2 / P4",
				mechanicTime = 1187.9,
				name = "[T2] Rampart - Grace 2",
				timeRange = true,
				timelineIndex = 214,
				timerEndOffset = -5.9,
				timerStartOffset = -7.9,
				uuid = "8e94df10-23e7-5785-9247-56f6d7e128fd",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"f2b5721b-5d90-7feb-adfd-e828c5113d66",
									true,
								},
								
								{
									"41c1c883-ac0d-98ab-84cb-ba2d0e070dc2",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Bulwark",
							uuid = "fb83d72d-cdbd-b0a0-9686-7adf4db9e862",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "f2b5721b-5d90-7feb-adfd-e828c5113d66",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "41c1c883-ac0d-98ab-84cb-ba2d0e070dc2",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T2 / P4",
				mechanicTime = 1187.9,
				name = "[T2] Bulwark - Grace 2",
				timeRange = true,
				timelineIndex = 214,
				timerEndOffset = -3.4,
				timerStartOffset = -4.9,
				uuid = "d1147751-aa03-b92a-b01c-cfb5bd5415a7",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"1f225560-1f8c-7c10-933a-3e3134ae5f18",
									true,
								},
								
								{
									"27202712-7f2e-a2cb-867b-9b357a6e1341",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_Reprisal",
							uuid = "eb247402-b44f-199b-a8bb-73cd379f3e05",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "1f225560-1f8c-7c10-933a-3e3134ae5f18",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "27202712-7f2e-a2cb-867b-9b357a6e1341",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T2 / P4",
				mechanicTime = 1187.9,
				name = "[T2] Reprisal - Grace 2",
				timeRange = true,
				timelineIndex = 214,
				timerEndOffset = -1.3,
				timerStartOffset = -2.8,
				uuid = "064901a5-8fce-74d8-806d-09c0af560d95",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"006c10dc-25ba-1bf3-98dc-2ce374033d9a",
									true,
								},
								
								{
									"0e71f1cf-cc73-70e9-8b75-515b494f9cd1",
									true,
								},
							},
							gVar = "ACR_RikuPLD3_Tankbar_DivineVeil",
							uuid = "bdd81fcb-5a54-3161-8407-4f0763b283a6",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "PALADIN",
							name = "Paladin",
							uuid = "006c10dc-25ba-1bf3-98dc-2ce374033d9a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "0e71f1cf-cc73-70e9-8b75-515b494f9cd1",
							version = 3,
						},
					},
				},
				displayPath = "Paladin / T2 / P4",
				mechanicTime = 1187.9,
				name = "[T2] Divine Veil - Grace 2",
				timeRange = true,
				timelineIndex = 214,
				timerEndOffset = -3.9,
				timerStartOffset = -6.1,
				uuid = "70dbe32c-238b-6a21-afce-c8028c648d41",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Warrior ",
				uuid = "9f7f7542-50ee-4f14-b7be-0a140a9fdce9",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T1 ",
				uuid = "b671c2f5-f34f-1bf9-9a14-2bbf4f0f09c6",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T1 ",
				name = " P4",
				uuid = "728fddec-154b-2194-8473-0341d0d653f9",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"da21f307-4796-d91e-8a0f-4c51c3079ace",
									true,
								},
								
								{
									"c5dcf47b-cb4c-5aa9-b82e-fb847b18e01a",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_NascentFlashMouse",
							targetType = "Other Tank",
							uuid = "04864ea1-c211-c12f-8219-74c753a91a8f",
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
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							name = "Warrior",
							uuid = "da21f307-4796-d91e-8a0f-4c51c3079ace",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "c5dcf47b-cb4c-5aa9-b82e-fb847b18e01a",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T1 / P4",
				mechanicTime = 1187.9,
				name = "[T1] Nascent Flash - Grace 2 support",
				timeRange = true,
				timelineIndex = 214,
				timerEndOffset = -1.9,
				timerStartOffset = -3.9,
				uuid = "75a7ec50-4348-3d7b-a415-4ddb4a2e417e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Warrior ",
				name = " T2 ",
				uuid = "818340ec-d524-f936-b227-1cf795464889",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Warrior / T2 ",
				name = " P4",
				uuid = "ee385b8b-99e5-845a-a99c-74c1cbc3f15c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"c17c734c-744f-39f9-84fa-0e2a773a3eed",
									true,
								},
								
								{
									"b01a5a00-774e-3c80-890e-81772398e1d5",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Rampart",
							uuid = "0b44ce60-a8aa-c964-b2cd-b0b11f7a1439",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "c17c734c-744f-39f9-84fa-0e2a773a3eed",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "b01a5a00-774e-3c80-890e-81772398e1d5",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T2 / P4",
				mechanicTime = 1187.9,
				name = "[T2] Rampart - Grace 2",
				timeRange = true,
				timelineIndex = 214,
				timerEndOffset = -5.9,
				timerStartOffset = -7.9,
				uuid = "25ac6f7c-b006-1b45-8e6e-c02cc68b8364",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"cee40062-3bdb-cc19-b002-c761c68bd370",
									true,
								},
								
								{
									"a6e0e9c6-8c73-af69-856e-52db6472dd70",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_ThrillOfBattle",
							uuid = "1951e6b2-6e5f-60b3-8f70-d0efeb6d2da1",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "cee40062-3bdb-cc19-b002-c761c68bd370",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "a6e0e9c6-8c73-af69-856e-52db6472dd70",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T2 / P4",
				mechanicTime = 1187.9,
				name = "[T2] Thrill of Battle - Grace 2",
				timeRange = true,
				timelineIndex = 214,
				timerEndOffset = -3.4,
				timerStartOffset = -4.9,
				uuid = "cee32f43-587f-c628-bdb3-bcdeaf6477a3",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"5c9a76a4-35e7-957e-9554-efbe4678101c",
									true,
								},
								
								{
									"c6353e3d-f203-0c14-901d-fa094092b3ee",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_Reprisal",
							uuid = "c4b1c7b9-899f-13b8-be4c-d4b3a6183930",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "5c9a76a4-35e7-957e-9554-efbe4678101c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "c6353e3d-f203-0c14-901d-fa094092b3ee",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T2 / P4",
				mechanicTime = 1187.9,
				name = "[T2] Reprisal - Grace 2",
				timeRange = true,
				timelineIndex = 214,
				timerEndOffset = -1.3,
				timerStartOffset = -2.8,
				uuid = "55046848-66a0-4bf0-8d63-7151251edbd8",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"5d528aec-437e-5bce-a27e-528f7c1b10ca",
									true,
								},
								
								{
									"733a3335-24c5-04f8-8320-24b5771083fa",
									true,
								},
							},
							gVar = "ACR_RikuWAR3_Tankbar_ShakeItOff",
							uuid = "a65ced77-60ac-24e0-a9cc-9981cec61222",
							variableTogglesType = 3,
							version = 2.1,
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
							name = "Warrior",
							uuid = "5d528aec-437e-5bce-a27e-528f7c1b10ca",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "733a3335-24c5-04f8-8320-24b5771083fa",
							version = 3,
						},
					},
				},
				displayPath = "Warrior / T2 / P4",
				mechanicTime = 1187.9,
				name = "[T2] Shake It Off - Grace 2",
				timeRange = true,
				timelineIndex = 214,
				timerEndOffset = -3.9,
				timerStartOffset = -6.1,
				uuid = "52a8ccc9-9901-7d5c-b6d0-225d3635b866",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Gunbreaker ",
				uuid = "475b0a90-4964-f083-9e13-3faf25ad7b0a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T1 ",
				uuid = "c4ed8ff2-e18b-9ce4-9937-96cd99865a4c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T1 ",
				name = " P4",
				uuid = "0a43fe18-90d2-1593-b8dd-0ff484cb2747",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"600de236-9437-bc41-a1e7-152d107b894d",
									true,
								},
								
								{
									"82045c3d-5cbf-edcb-8e0e-0e2b342755ae",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfCorundumMouse",
							targetType = "Other Tank",
							uuid = "794ab1e5-ec5b-281d-8596-96d950178bf5",
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
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "600de236-9437-bc41-a1e7-152d107b894d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "82045c3d-5cbf-edcb-8e0e-0e2b342755ae",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T1 / P4",
				mechanicTime = 1187.9,
				name = "[T1] Heart of Stone - Grace 2 support",
				timeRange = true,
				timelineIndex = 214,
				timerEndOffset = -1.9,
				timerStartOffset = -3.9,
				uuid = "5be6f580-435e-7dfc-b75d-01ffc21a47ff",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker ",
				name = " T2 ",
				uuid = "520e62ff-560a-cee3-ae0c-ba7a86f87b50",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Gunbreaker / T2 ",
				name = " P4",
				uuid = "44609932-7974-c2d9-8758-68194d1965ca",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"b2273787-3ffe-c8a7-bb2a-a564509b9fdb",
									true,
								},
								
								{
									"5a3f45a9-6002-bda7-9608-24e54d19796f",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Rampart",
							uuid = "c3de3104-c3a1-4583-8cf5-5e0afcb04687",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "b2273787-3ffe-c8a7-bb2a-a564509b9fdb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "5a3f45a9-6002-bda7-9608-24e54d19796f",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T2 / P4",
				mechanicTime = 1187.9,
				name = "[T2] Rampart - Grace 2",
				timeRange = true,
				timelineIndex = 214,
				timerEndOffset = -5.9,
				timerStartOffset = -7.9,
				uuid = "0c68f33e-67ce-f7eb-96c6-2766d3a7953e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"5eb54382-76a1-cb3c-bd09-c3e2061713c9",
									true,
								},
								
								{
									"c4c6e40d-d63b-2c48-aad9-adc8f6dcbb52",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Camouflage",
							uuid = "d576ea5d-d5cc-86af-b907-f17b4c9d5508",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "5eb54382-76a1-cb3c-bd09-c3e2061713c9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "c4c6e40d-d63b-2c48-aad9-adc8f6dcbb52",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T2 / P4",
				mechanicTime = 1187.9,
				name = "[T2] Camouflage - Grace 2",
				timeRange = true,
				timelineIndex = 214,
				timerEndOffset = -3.4,
				timerStartOffset = -4.9,
				uuid = "1153c2a0-15de-7861-9426-3267a4f3e5c7",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"aaa56db7-1338-7ebf-bcef-3d174207d68a",
									true,
								},
								
								{
									"0d638049-130f-43b2-b41c-a241e6ee7fb7",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_Reprisal",
							uuid = "92b18cd4-28e1-601b-b18c-6a1ffd2b389d",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "aaa56db7-1338-7ebf-bcef-3d174207d68a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "0d638049-130f-43b2-b41c-a241e6ee7fb7",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T2 / P4",
				mechanicTime = 1187.9,
				name = "[T2] Reprisal - Grace 2",
				timeRange = true,
				timelineIndex = 214,
				timerEndOffset = -1.3,
				timerStartOffset = -2.8,
				uuid = "f14dc0fa-eda3-f831-b368-f4f21a95e2b1",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"5f08822e-ac66-83d3-a4c2-0df9b43218e9",
									true,
								},
								
								{
									"526cbf85-671d-59ef-b3f2-2b4c2fc86172",
									true,
								},
							},
							gVar = "ACR_RikuGNB3_Tankbar_HeartOfLight",
							uuid = "78fcda8c-9b1d-e80e-b3cd-f24d6bab28e9",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "GUNBREAKER",
							name = "Gunbreaker",
							uuid = "5f08822e-ac66-83d3-a4c2-0df9b43218e9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "526cbf85-671d-59ef-b3f2-2b4c2fc86172",
							version = 3,
						},
					},
				},
				displayPath = "Gunbreaker / T2 / P4",
				mechanicTime = 1187.9,
				name = "[T2] Heart of Light - Grace 2",
				timeRange = true,
				timelineIndex = 214,
				timerEndOffset = -3.9,
				timerStartOffset = -6.1,
				uuid = "a0602f20-5f21-97a0-b44a-2d22ad392ad6",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Dark Knight ",
				uuid = "a59548f5-03ff-c3dc-bfc0-dcc67698a73a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T1 ",
				uuid = "bcd4cb93-c301-1a72-9ce1-d8abfda48f4d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T1 ",
				name = " P4",
				uuid = "9ab9b09d-5e4b-6cf0-9607-c2599b06180e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"cdcec553-8d61-6ab1-9bfb-750af4515029",
									true,
								},
								
								{
									"e5d32415-1672-f915-a956-730ac34051b2",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_TheBlackestNightMouse",
							targetType = "Other Tank",
							uuid = "7bebd8a6-0fb3-6387-bcda-d2b43a632452",
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
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "cdcec553-8d61-6ab1-9bfb-750af4515029",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T1\" or false",
							name = "Assigned T1",
							uuid = "e5d32415-1672-f915-a956-730ac34051b2",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T1 / P4",
				mechanicTime = 1187.9,
				name = "[T1] The Blackest Night - Grace 2 support",
				timeRange = true,
				timelineIndex = 214,
				timerEndOffset = -1.9,
				timerStartOffset = -3.9,
				uuid = "1dfa5d5d-67e9-a12f-9824-2c1e1f014b86",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight ",
				name = " T2 ",
				uuid = "6031fa6e-1e93-356c-8549-9f9d11d7051e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Dark Knight / T2 ",
				name = " P4",
				uuid = "2e3dc9d4-0ed9-5c54-8286-7d4eee41dd81",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"85ddf1e9-0ce6-483b-86f7-e5a018986852",
									true,
								},
								
								{
									"f69c52c1-f681-26e1-b6a7-5103265e49d6",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_Rampart",
							uuid = "88e9817b-53d4-01bd-9259-77dc7992acf7",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "85ddf1e9-0ce6-483b-86f7-e5a018986852",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "f69c52c1-f681-26e1-b6a7-5103265e49d6",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T2 / P4",
				mechanicTime = 1187.9,
				name = "[T2] Rampart - Grace 2",
				timeRange = true,
				timelineIndex = 214,
				timerEndOffset = -5.9,
				timerStartOffset = -7.9,
				uuid = "e85ff46b-faff-fe10-8d5a-4ac55f35b831",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"1d5eab28-6a2c-45e6-96b7-7dc0ae487a90",
									true,
								},
								
								{
									"98265dc0-ad19-4764-912c-013f75e2d7cc",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_DarkMind",
							uuid = "393b4df5-0002-37b2-b4c5-6c52d2cebab7",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "1d5eab28-6a2c-45e6-96b7-7dc0ae487a90",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "98265dc0-ad19-4764-912c-013f75e2d7cc",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T2 / P4",
				mechanicTime = 1187.9,
				name = "[T2] Dark Mind - Grace 2",
				timeRange = true,
				timelineIndex = 214,
				timerEndOffset = -3.4,
				timerStartOffset = -4.9,
				uuid = "37d944de-cbbb-6bc4-882a-9cd8c4b43570",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"2cbed800-af41-d1d6-ac31-57826eb95921",
									true,
								},
								
								{
									"d8af3c66-2f3a-7016-a2f2-ad1ea9207059",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_Reprisal",
							uuid = "2fc58924-7d7f-5942-b990-e13f6248700d",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "2cbed800-af41-d1d6-ac31-57826eb95921",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "d8af3c66-2f3a-7016-a2f2-ad1ea9207059",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T2 / P4",
				mechanicTime = 1187.9,
				name = "[T2] Reprisal - Grace 2",
				timeRange = true,
				timelineIndex = 214,
				timerEndOffset = -1.3,
				timerStartOffset = -2.8,
				uuid = "1fc94efe-1854-c1ed-af57-611bab5f391e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"4e7c29d5-78d5-a5ef-97e7-2bff4e5a5718",
									true,
								},
								
								{
									"cb17f2d4-b9ca-73f8-acfc-7bcd56440bdd",
									true,
								},
							},
							gVar = "ACR_RikuDRK3_Tankbar_DarkMissionary",
							uuid = "bb5bb75b-3253-a520-a172-2c4e93ebc9a4",
							variableTogglesType = 3,
							version = 2.1,
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
							jobValue = "DARKKNIGHT",
							name = "Dark Knight",
							uuid = "4e7c29d5-78d5-a5ef-97e7-2bff4e5a5718",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"T2\" or false",
							name = "Assigned T2",
							uuid = "cb17f2d4-b9ca-73f8-acfc-7bcd56440bdd",
							version = 3,
						},
					},
				},
				displayPath = "Dark Knight / T2 / P4",
				mechanicTime = 1187.9,
				name = "[T2] Dark Missionary - Grace 2",
				timeRange = true,
				timelineIndex = 214,
				timerEndOffset = -3.9,
				timerStartOffset = -6.1,
				uuid = "a4275c36-bb0b-113a-8934-7abd6c6f78c3",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DPS ",
				uuid = "f6a92242-cd9c-12c8-b0eb-1aedaddc3e18",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " R1",
				uuid = "7e95cbe4-164c-0f2a-8cc1-fc433b5d8fa9",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"9ac685ae-eb67-f370-9763-0a9f85ef400d",
									true,
								},
							},
							gVar = "ACR_TensorMagnum3_Hotbar_Tactician",
							uuid = "901c4db6-1341-b759-a8f5-404aa7e5aa7c",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R1\" or false",
							name = "Assigned R1",
							uuid = "9ac685ae-eb67-f370-9763-0a9f85ef400d",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R1",
				mechanicTime = 1187.9,
				name = "[R1] Tactician - Grace 2",
				timeRange = true,
				timelineIndex = 214,
				timerEndOffset = -2.4,
				timerStartOffset = -5.3,
				uuid = "6d570c53-bffa-b02f-9c66-7c1bd3d0d4dc",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"3044f5b4-ca37-938c-80a7-1f0d91c58e66",
									true,
								},
							},
							gVar = "ACR_TensorRequiem4_Hotbar_Troubadour",
							uuid = "325b693b-3ebb-1ac9-aaf9-44996f5bfcab",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R1\" or false",
							name = "Assigned R1",
							uuid = "3044f5b4-ca37-938c-80a7-1f0d91c58e66",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R1",
				mechanicTime = 1187.9,
				name = "[R1] Troubadour - Grace 2",
				timeRange = true,
				timelineIndex = 214,
				timerEndOffset = -2.4,
				timerStartOffset = -5.3,
				uuid = "40cff474-7347-ec17-b2a2-5b5ca97746e7",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"1bf821b5-8903-1689-9409-a8a657370a7b",
									true,
								},
							},
							gVar = "ACR_RikuDNC3_Hotbar_ShieldSamba",
							uuid = "634b1f53-34b5-3faa-b93e-744dd268a033",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"R1\" or false",
							name = "Assigned R1",
							uuid = "1bf821b5-8903-1689-9409-a8a657370a7b",
							version = 3,
						},
					},
				},
				displayPath = "DPS / R1",
				mechanicTime = 1187.9,
				name = "[R1] ShieldSamba - Grace 2",
				timeRange = true,
				timelineIndex = 214,
				timerEndOffset = -2.4,
				timerStartOffset = -5.3,
				uuid = "403c6579-7e71-336f-ba5b-2bf1b5e8a4aa",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "DPS ",
				name = " M2",
				uuid = "3830ac67-010d-5d9e-acae-3b0ba472ba93",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"48e79c80-7e18-b82b-8452-24198cf0fae7",
									true,
								},
								
								{
									"732a7c6d-51ef-c794-bd91-474b82ab05e9",
									true,
								},
							},
							gVar = "ACR_TensorViper3_Hotbar_Feint",
							uuid = "46c47b46-5140-4950-a74b-22a12f87f8d4",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore and AnyoneCore.Roster\nreturn roster and roster.current() and roster.mySlot() == \"M2\" or false",
							name = "Assigned M2",
							uuid = "48e79c80-7e18-b82b-8452-24198cf0fae7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local target = TensorCore.mGetTarget()\nreturn target and target.contentid == 9042 or false",
							name = "Perfect Alexander selected",
							uuid = "732a7c6d-51ef-c794-bd91-474b82ab05e9",
							version = 3,
						},
					},
				},
				displayPath = "DPS / M2",
				mechanicTime = 1187.9,
				name = "[M2] Feint - Grace 2",
				timeRange = true,
				timelineIndex = 214,
				timerEndOffset = -1.2,
				timerStartOffset = -3.9,
				uuid = "e26bbae4-a0f7-78d2-82a7-5876b195599e",
				version = 2,
			},
		},
	},
	inheritedProfiles = 
	{
	},
	timelineName = "tea",
	version = "1.0.2",
}



return tbl
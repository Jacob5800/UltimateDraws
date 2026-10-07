local tbl = 
{
	[2] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal",
				uuid = "8fbd4a3a-a7bd-9e6a-ab02-1e4601c36e59",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							displayPath = "",
							name = "Shinryu Unreal",
							uuid = "3926f5c8-ce3e-e57a-a1fa-f52383d70309",
						},
						objectType = "folder",
					},
					
					{
						data = 
						{
							aType = "ACR",
							displayPath = "Shinryu Unreal",
							gVar = "ACR_RikuNIN3_CD",
							name = "Enable CDs",
							uuid = "83e4a530-b081-831f-bb25-98317cb7700f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "TensorDrift_SlidecastForceHold = false\nif AnyoneCore and AnyoneCore.Settings and AnyoneCore.Settings.DutyHelper then\n    AnyoneCore.Settings.DutyHelper.enabled = false\nend\nself.used = true",
							displayPath = "Shinryu Unreal",
							name = "Disable slidecast hold and Duty Helper",
							uuid = "51f58b59-37ac-ce16-ae22-e014d250f006",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "Shinryu Unreal",
				eventType = 11,
				mechanicTime = 21.3,
				name = "Fight start setup",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = -16.299999237061,
				timerStartOffset = -21.299999237061,
				uuid = "66195c60-e148-dac4-9bb7-6293542a5ba3",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DPS Mitigation",
				uuid = "5d86b820-4c06-73ac-8833-37b5375f5684",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7394,
							conditions = 
							{
								
								{
									"1a63fdfe-b8a0-b066-aa43-c4a541b39d69",
									true,
								},
								
								{
									"57f07b7c-5abc-7c85-8899-4c2956e0c462",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "c6bd10db-60f8-b41d-ad87-b11828df8a6d",
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
									"c7409f2d-241a-9d96-ba32-2d7cbe86c5ab",
									true,
								},
								
								{
									"ea29d99f-0d06-d35b-90c4-447b3fa405f1",
									true,
								},
							},
							gVar = "ACR_RikuNIN3_Hotbar_ShadeShift",
							uuid = "2691cb4a-6499-2d59-b50f-5a7793539b19",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 36962,
							conditions = 
							{
								
								{
									"6b252389-4fc4-e8f1-96bc-e506b95d83d1",
									true,
								},
								
								{
									"5ea88a72-07f2-6597-a1c0-68e7985dc8de",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "beb40ff6-a0d7-58db-8e6a-79934f38c7bc",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 24404,
							conditions = 
							{
								
								{
									"0cba7477-8530-c604-ba10-beab0d3e4858",
									true,
								},
								
								{
									"273eaa82-d7a2-bd85-a296-62e402d936ef",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "b5d3a53d-fa1d-a385-a666-a12f85ded97a",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7405,
							conditions = 
							{
								
								{
									"d23e1f4c-453a-a25f-93d3-ae00fa574892",
									true,
								},
								
								{
									"297c4a05-a73e-5977-99b6-92eb1d8ddad0",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "f2b0452e-f05a-0f8a-b5ce-e9498cef3427",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							conditions = 
							{
								
								{
									"23d1f726-4927-2a8b-bae8-dc6e3cf2b84d",
									true,
								},
								
								{
									"d49d9308-d89c-4fc2-a902-021c80e6c118",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "3704c52b-397f-7eca-ab81-f61abeeb316d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							conditions = 
							{
								
								{
									"b089c6f1-d265-beb1-8537-560c3f83c382",
									true,
								},
								
								{
									"54950e14-5720-4ee5-bfe3-f1fe15403fb1",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "adeb130f-3470-1e5e-b58d-0dbc950d8374",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 157,
							conditions = 
							{
								
								{
									"f60c8ba5-fcb3-c208-b994-3017c937163a",
									true,
								},
								
								{
									"f4f8ec6c-67a9-f549-9a7d-f974525850de",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "fb84440c-e089-fc0a-b237-1e687145999e",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25799,
							conditions = 
							{
								
								{
									"63a94ddb-dee4-e06a-a19e-deef21809a79",
									true,
								},
								
								{
									"150626b2-1c99-a9cf-ad3b-bcd9a61413bd",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "b2aa3568-5d82-2861-b7be-e667a880d5e0",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25857,
							conditions = 
							{
								
								{
									"56a92011-3592-1c64-b330-ede7a7a01453",
									true,
								},
								
								{
									"1f1a15ab-e876-488a-966b-fc0a5d217fec",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "9c56f91f-d57d-5ea8-96bb-e1beb22ea2c0",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 34685,
							conditions = 
							{
								
								{
									"445836d8-9f0f-5cb8-85fd-1d84c984d484",
									true,
								},
								
								{
									"a06296f7-0e6a-48c4-a51e-c73ff919190a",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "5740ea8b-37eb-1e08-9738-fe833ad1f0b0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MONK",
							name = "MONK",
							uuid = "1a63fdfe-b8a0-b066-aa43-c4a541b39d69",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7394,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7394",
							uuid = "57f07b7c-5abc-7c85-8899-4c2956e0c462",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "NINJA",
							name = "NINJA",
							uuid = "c7409f2d-241a-9d96-ba32-2d7cbe86c5ab",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 2241,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 2241",
							uuid = "ea29d99f-0d06-d35b-90c4-447b3fa405f1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "SAMURAI",
							name = "SAMURAI",
							uuid = "6b252389-4fc4-e8f1-96bc-e506b95d83d1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 36962,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 36962",
							uuid = "5ea88a72-07f2-6597-a1c0-68e7985dc8de",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "REAPER",
							name = "REAPER",
							uuid = "0cba7477-8530-c604-ba10-beab0d3e4858",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 24404,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 24404",
							uuid = "273eaa82-d7a2-bd85-a296-62e402d936ef",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "BARD",
							name = "BARD",
							uuid = "d23e1f4c-453a-a25f-93d3-ae00fa574892",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7405,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7405",
							uuid = "297c4a05-a73e-5977-99b6-92eb1d8ddad0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MACHINIST",
							name = "MACHINIST",
							uuid = "23d1f726-4927-2a8b-bae8-dc6e3cf2b84d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 16889",
							uuid = "d49d9308-d89c-4fc2-a902-021c80e6c118",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "DANCER",
							name = "DANCER",
							uuid = "b089c6f1-d265-beb1-8537-560c3f83c382",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 16012",
							uuid = "54950e14-5720-4ee5-bfe3-f1fe15403fb1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "BLACKMAGE",
							name = "BLACKMAGE",
							uuid = "f60c8ba5-fcb3-c208-b994-3017c937163a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 157,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 157",
							uuid = "f4f8ec6c-67a9-f549-9a7d-f974525850de",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "SUMMONER",
							name = "SUMMONER",
							uuid = "63a94ddb-dee4-e06a-a19e-deef21809a79",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25799,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 25799",
							uuid = "150626b2-1c99-a9cf-ad3b-bcd9a61413bd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "REDMAGE",
							name = "REDMAGE",
							uuid = "56a92011-3592-1c64-b330-ede7a7a01453",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25857,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 25857",
							uuid = "1f1a15ab-e876-488a-966b-fc0a5d217fec",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "PICTOMANCER",
							name = "PICTOMANCER",
							uuid = "445836d8-9f0f-5cb8-85fd-1d84c984d484",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 34685,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 34685",
							uuid = "a06296f7-0e6a-48c4-a51e-c73ff919190a",
							version = 3,
						},
					},
				},
				displayPath = "DPS Mitigation",
				mechanicTime = 21.3,
				name = "DPS shields - Earthen Fury",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = -0.3,
				timerStartOffset = -3,
				uuid = "22552587-d8ec-c4ac-9111-ce1e21b4a526",
				version = 2,
			},
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
									"5c995b4e-e2a8-051e-b9cf-08c50822b0a9",
									true,
								},
								
								{
									"81188299-09f0-8811-a26c-e90706471d95",
									true,
								},
								
								{
									"1346629f-9071-7829-8398-b9bdb9ad6930",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "704d70bc-54d8-0404-a6fa-876e0d941385",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"9c5063c5-256f-1e2d-bc86-0d21b06cb954",
									true,
								},
								
								{
									"5a29c8ed-33fd-7fc9-a241-ebfd2d3502d9",
									true,
								},
								
								{
									"f665f5e9-70e9-6be5-8bd8-cf2d930abea0",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "5f61b9b9-d916-21e2-853f-6494ef6e16c9",
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
									"03afb420-1e3d-431c-85c3-d4dec92587bc",
									true,
								},
								
								{
									"9e5f5019-400e-73e2-88f6-3e07b3239247",
									true,
								},
								
								{
									"df1072a5-2680-765d-9eff-482267f9a7fe",
									true,
								},
							},
							gVar = "ACR_RikuNIN3_Hotbar_SecondWind",
							uuid = "ab17e801-c629-df21-bba9-b6fae27f110e",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"9046333a-2cad-25e6-88a2-e9aa76e2b8c5",
									true,
								},
								
								{
									"0fad47eb-c2cc-2a69-bf0b-323bce0f67b5",
									true,
								},
								
								{
									"bca3b290-64cd-04cf-ad6e-c37f0ec088cd",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "5c71735d-0ac5-790e-9be8-33b437bbc337",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"89bfedcf-2336-7ef7-bd47-9276b64ef18f",
									true,
								},
								
								{
									"5be540a6-4f1e-97cb-8089-32c0950f2c13",
									true,
								},
								
								{
									"93314ae3-c423-a16b-9bb0-f0aa1953e84a",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "46308785-b3b5-da59-91cf-c3e750e7d424",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"de24485b-b3d9-3a56-9003-5ea62c560ff5",
									true,
								},
								
								{
									"a13cd555-b2ad-01e7-a75c-77c1add2ee8e",
									true,
								},
								
								{
									"880edd71-56e8-eab6-98f7-8890794694c6",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "7077c002-2534-76f8-baf6-bf7c4b7cf608",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"8ffa735a-fcd8-2431-a894-103fdccce36e",
									true,
								},
								
								{
									"0c2c103e-f2ee-6d6a-a1ea-7e679ff5cc94",
									true,
								},
								
								{
									"17d6e062-a159-7e9a-ac1f-af3c08229889",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "eebaa47e-440a-c170-81b6-6c6fcb8309e4",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"7d93e121-6e31-497b-9251-6a37881011de",
									true,
								},
								
								{
									"bff014ca-86b8-cd0a-b4af-265215def724",
									true,
								},
								
								{
									"3719056a-30a6-15ad-8cc7-2227ffd840d5",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "0e853f71-7ceb-50ea-a29c-a7b14b013a4b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"e6fe2afb-3a72-5bbb-bfbc-d18ad34e0a01",
									true,
								},
								
								{
									"4fef590f-11ed-f260-9b56-eb1df0e75bae",
									true,
								},
								
								{
									"7d6ccb69-3a5e-a979-a8a9-5ba08e314be9",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "54e4950d-c7f9-5234-afad-344257fea19b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MONK",
							name = "MONK",
							uuid = "5c995b4e-e2a8-051e-b9cf-08c50822b0a9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "81188299-09f0-8811-a26c-e90706471d95",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "1346629f-9071-7829-8398-b9bdb9ad6930",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "DRAGOON",
							name = "DRAGOON",
							uuid = "9c5063c5-256f-1e2d-bc86-0d21b06cb954",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "5a29c8ed-33fd-7fc9-a241-ebfd2d3502d9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "f665f5e9-70e9-6be5-8bd8-cf2d930abea0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "NINJA",
							name = "NINJA",
							uuid = "03afb420-1e3d-431c-85c3-d4dec92587bc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "9e5f5019-400e-73e2-88f6-3e07b3239247",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "df1072a5-2680-765d-9eff-482267f9a7fe",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "SAMURAI",
							name = "SAMURAI",
							uuid = "9046333a-2cad-25e6-88a2-e9aa76e2b8c5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "0fad47eb-c2cc-2a69-bf0b-323bce0f67b5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "bca3b290-64cd-04cf-ad6e-c37f0ec088cd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "REAPER",
							name = "REAPER",
							uuid = "89bfedcf-2336-7ef7-bd47-9276b64ef18f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "5be540a6-4f1e-97cb-8089-32c0950f2c13",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "93314ae3-c423-a16b-9bb0-f0aa1953e84a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "VIPER",
							name = "VIPER",
							uuid = "de24485b-b3d9-3a56-9003-5ea62c560ff5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "a13cd555-b2ad-01e7-a75c-77c1add2ee8e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "880edd71-56e8-eab6-98f7-8890794694c6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "BARD",
							name = "BARD",
							uuid = "8ffa735a-fcd8-2431-a894-103fdccce36e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "0c2c103e-f2ee-6d6a-a1ea-7e679ff5cc94",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "17d6e062-a159-7e9a-ac1f-af3c08229889",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MACHINIST",
							name = "MACHINIST",
							uuid = "7d93e121-6e31-497b-9251-6a37881011de",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "bff014ca-86b8-cd0a-b4af-265215def724",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "3719056a-30a6-15ad-8cc7-2227ffd840d5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "DANCER",
							name = "DANCER",
							uuid = "e6fe2afb-3a72-5bbb-bfbc-d18ad34e0a01",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "4fef590f-11ed-f260-9b56-eb1df0e75bae",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "7d6ccb69-3a5e-a979-a8a9-5ba08e314be9",
							version = 3,
						},
					},
				},
				displayPath = "DPS Mitigation",
				mechanicTime = 21.3,
				name = "DPS recovery - Earthen Fury",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 4,
				timerStartOffset = 0.2,
				uuid = "5fc25acd-ac3b-9dbe-aae7-1edf3391dd50",
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
				name = "Shinryu Unreal",
				uuid = "79373f95-5e33-6f57-8038-317ce6f4ddcf",
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
				displayPath = "Shinryu Unreal",
				eventType = 15,
				execute = "data.shinryu_burning_chain_pair = data.shinryu_burning_chain_pair or {}\nlocal state = data.shinryu_burning_chain_pair\nif not state.clear then\n    state.clear = function(s)\n        if s.playerCircle then Argus.deleteTimedShape(s.playerCircle) end\n        if s.partnerCircle then Argus.deleteTimedShape(s.partnerCircle) end\n        if s.link then Argus.deleteTimedShape(s.link) end\n        s.playerCircle = nil\n        s.partnerCircle = nil\n        s.link = nil\n        s.partnerID = nil\n    end\nend\n\nlocal player = TensorCore.mGetPlayer()\nif player and player.id and player.id > 0 then\n    local playerID = player.id\n    local sourceID = eventArgs.sourceEntityID\n    local targetID = eventArgs.newTargetID\n\n    if eventArgs.newTetherID == 9 then\n        local partnerID = nil\n        if sourceID == playerID then\n            partnerID = targetID\n        elseif targetID == playerID then\n            partnerID = sourceID\n        end\n\n        if partnerID and partnerID > 0 then\n            state.clear(state)\n            state.partnerID = partnerID\n            local drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.1, 0.95, 0.65, 0.9), 1.5)\n            state.playerCircle = drawer:addTimedCircleOnEnt(15000, playerID, 1.6, 0, false, true)\n            state.partnerCircle = drawer:addTimedCircleOnEnt(15000, partnerID, 1.6, 0, false, true)\n            state.link = drawer:addTimedRectOnEnt(15000, playerID, 0.5, 0.22, partnerID, 0, false, false, true, 0, false)\n        end\n    elseif eventArgs.oldTetherID == 9 then\n        local oldTargetID = eventArgs.oldTargetID\n        if sourceID == playerID or oldTargetID == playerID or sourceID == state.partnerID or oldTargetID == state.partnerID then\n            state.clear(state)\n        end\n    end\nend\nself.used = true",
				executeType = 2,
				loop = true,
				mechanicTime = 36.4,
				name = "Burning Chain pair marks",
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = 17,
				timerStartOffset = -4,
				uuid = "38fe3b5b-a649-5818-a99f-c59165761513",
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
				name = "Shinryu Unreal",
				uuid = "ff1cf8f3-12f4-d77f-a33f-1d143bea586e",
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
				displayPath = "Shinryu Unreal",
				eventType = 3,
				execute = "if eventArgs.spellID == 50230 and eventArgs.entityContentID == 5640 then\n    local boss = TensorCore.mGetEntity(eventArgs.entityID)\n    if boss and boss.pos then\n        local p = boss.pos\n        local center = { x = 0, y = p.y, z = 0 }\n        local heading = TensorCore.getHeadingToTarget(p, center)\n        local duration = ((eventArgs.channelTimeMax or 0) + 1.0) * 1000\n        local drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.1, 0.85, 1.0, 0.75), 3)\n        drawer:addTimedCircleOnEnt(duration, eventArgs.entityID, 5, 0, false, true)\n        drawer:addTimedLine(duration, p.x, p.y, p.z, center.x, center.y, center.z, 3, 2)\n        drawer:addTimedArrow(duration, center.x, center.y, center.z, heading, 8, 3, 4, 6)\n    end\nend\nself.used = true",
				executeType = 2,
				mechanicTime = 44.5,
				name = "Tidal Wave direction",
				timeRange = true,
				timelineIndex = 4,
				timerEndOffset = 0.5,
				timerStartOffset = -10.5,
				uuid = "428d334c-cdb6-6202-b2a2-2dcd8bd38916",
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
				name = "Shinryu Unreal",
				uuid = "dc5089cc-aa5c-b713-8979-5ec2df63bc7d",
			},
			objectType = "folder",
		},
	},
	[8] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal",
				uuid = "10d1abb2-8323-2819-a8d9-2c2accdd2427",
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
				displayPath = "Shinryu Unreal",
				eventType = 3,
				execute = "if eventArgs.spellID == 50252 and eventArgs.entityContentID == 6278 then\n    local duration = ((eventArgs.channelTimeMax or 0) + 0.35) * 1000\n    local drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1.0, 0.18, 0.08, 0.38), 3)\n    local early=data.shinryu_early_icicles\n    if early and early[eventArgs.entityID] then\n        Argus.deleteTimedShape(early[eventArgs.entityID])\n        early[eventArgs.entityID]=nil\n    end\n    drawer:addTimedRectOnEnt(duration, eventArgs.entityID, 60, 10, nil, 0, true, false, true)\n    if not data.shinryu_icicle_warned_67 then\n        TensorCore.addAlertText(duration, \"Dodge Icicle\", 1.35, 2, true)\n        data.shinryu_icicle_warned_67 = true\n    end\nend\nself.used = true",
				executeType = 2,
				loop = true,
				mechanicTime = 67,
				name = "Spikesicle lane",
				timeRange = true,
				timelineIndex = 8,
				timerEndOffset = 0.5,
				timerStartOffset = -3,
				uuid = "edef2882-509c-df5a-b752-9f2b7e4402f3",
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
				displayPath = "Shinryu Unreal",
				eventType = 2,
				execute = "self.used=true\nif eventArgs.spellID~=50251 or eventArgs.entityContentID~=6278 then return end\nlocal shapes=data.shinryu_early_icicles or {}\ndata.shinryu_early_icicles=shapes\nif shapes[eventArgs.entityID] then Argus.deleteTimedShape(shapes[eventArgs.entityID]) end\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1.0,0.18,0.08,0.38),3)\nshapes[eventArgs.entityID]=drawer:addTimedRectOnEnt(8000,eventArgs.entityID,60,10,nil,0,true,false,true)\n",
				executeType = 2,
				loop = true,
				mechanicTime = 67,
				name = "[Earlier] Spikesicle lane from Icicle Impact",
				timeRange = true,
				timelineIndex = 8,
				timerEndOffset = 0.5,
				timerStartOffset = -8,
				uuid = "3ab77e38-eb69-aa15-8edc-ccee85b88eb0",
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
				name = "Shinryu Unreal",
				uuid = "44fe38b7-5492-d1e0-9050-5cd453fcc8b1",
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
				displayPath = "Shinryu Unreal",
				eventType = 26,
				execute = "\ndata.shinryu_tail_highlights = data.shinryu_tail_highlights or {}\nlocal marks = data.shinryu_tail_highlights\nlocal id = eventArgs.entityID\nif eventArgs.entityContentID == 5789 and id and id > 0 then\n    if eventArgs.isTargetable then\n        if not marks[id] then TensorCore.addAlertText(3500, \"Tail up\", 1.3, 2, false) end\n        local old = marks[id]\n        if old then\n            Argus.deleteTimedShape(old)\n        end\n        local drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1.0, 0.78, 0.08, 0.34), 4)\n        marks[id] = drawer:addTimedRectOnEnt(12000, id, 40, 10, nil, 0, true, false, true)\n    else\n        local uuid = marks[id]\n        if uuid then\n            Argus.deleteTimedShape(uuid)\n            marks[id] = nil\n        end\n    end\nend\nself.used = true\n",
				executeType = 2,
				loop = true,
				mechanicTime = 67.9,
				name = "Highlight active Shinryu tail",
				timeRange = true,
				timelineIndex = 9,
				timerEndOffset = 10,
				timerStartOffset = -1,
				uuid = "afb21017-d989-2af7-a2bc-7832035170dc",
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
				name = "Shinryu Unreal",
				uuid = "a292cd21-007f-32a1-adef-3d8381d54a10",
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
				displayPath = "Shinryu Unreal",
				eventType = 3,
				execute = "\nif eventArgs.entityContentID == 5642 then\n    local spell = eventArgs.spellID\n    if spell == 50244 then\n        local duration = math.max(1, eventArgs.channelTimeMax or 0) * 1000\n        TensorCore.addAlertText(duration, \"HYPERNOVA: stack in puddle\", 1.35, 2, false)\n    end\nend\nself.used = true\n",
				executeType = 2,
				mechanicTime = 79.8,
				name = "Hypernova puddle stack",
				timeRange = true,
				timelineIndex = 10,
				timerEndOffset = 0.5,
				timerStartOffset = -8.5,
				uuid = "bca8956b-d596-41f7-97f3-ec1de877a637",
				version = 2,
			},
		},
	},
	[11] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal",
				uuid = "b0a020e0-717a-075e-a172-4241baacef6f",
			},
			objectType = "folder",
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
							alertDuration = 4200,
							alertPriority = 3,
							alertText = "Dragonfist: move out of center",
							conditions = 
							{
								
								{
									"d65232d9-9ca0-1c13-a511-24359cd666db",
									true,
								},
							},
							name = "Alert - Dragonfist center",
							uuid = "90ad3fa3-08ff-caf9-80c6-f105b9ce77c5",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "local duration = math.max(1, (eventArgs.duration or 3.7) + 0.5) * 1000\nlocal radius = eventArgs.aoeLength or 16.0\nlocal drawer = TensorCore.getMoogleDrawer()\ndrawer:addTimedCircle(duration, eventArgs.x, eventArgs.y, eventArgs.z, radius, 0, false, false)\nself.used = true",
							conditions = 
							{
								
								{
									"d65232d9-9ca0-1c13-a511-24359cd666db",
									true,
								},
							},
							name = "Draw - Dragonfist center",
							uuid = "dcad9f3d-f67f-d500-898d-19b3a01d5aa6",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return eventArgs.aoeID == 50285 and eventArgs.aoeName == \"Dragonfist\"",
							dequeueIfLuaFalse = true,
							name = "Dragonfist AOE",
							uuid = "d65232d9-9ca0-1c13-a511-24359cd666db",
							version = 3,
						},
					},
				},
				displayPath = "Shinryu Unreal",
				eventType = 18,
				mechanicTime = 90.9,
				name = "Dragonfist center danger",
				timelineIndex = 11,
				uuid = "7e30170e-4c91-b1bc-a34f-a4750afc7cf0",
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
				name = "Shinryu Unreal",
				uuid = "250f988c-03da-89bf-be23-75c984d726ef",
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
				displayPath = "Shinryu Unreal",
				execute = "data.shinryu_akhmorn_spread = data.shinryu_akhmorn_spread or {}\nlocal states = data.shinryu_akhmorn_spread\nlocal state = states[\"akh108\"] or {called = false, close = false, line = nil}\nstates[\"akh108\"] = state\n\nif not state.called then\n    TensorCore.addAlertText(1300, \"Spread\", 1.35, 3, true)\n    state.called = true\nend\n\nlocal player = TensorCore.mGetPlayer()\nlocal party = TensorCore.getEntityGroupList(\"Party\")\nlocal nearest, nearestDistance\nif player and player.id and player.pos and party then\n    for _, member in pairs(party) do\n        if member and member.id and member.id ~= player.id and member.pos then\n            local dx = player.pos.x - member.pos.x\n            local dz = player.pos.z - member.pos.z\n            local distance = math.sqrt(dx * dx + dz * dz)\n            if distance <= 6 and (not nearestDistance or distance < nearestDistance) then\n                nearest = member\n                nearestDistance = distance\n            end\n        end\n    end\nend\n\nif nearest then\n    if state.line then Argus.deleteTimedShape(state.line) end\n    local drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1.0, 0.82, 0.08, 0.9), 2)\n    state.line = drawer:addTimedLine(300, player.pos.x, player.pos.y, player.pos.z, nearest.pos.x, nearest.pos.y, nearest.pos.z, 0.45, 1)\n    if not state.close then\n        TensorCore.addAlertText(900, \"Spread out\", 1.2, 3, false)\n    end\n    state.close = true\nelse\n    if state.line then Argus.deleteTimedShape(state.line) end\n    state.line = nil\n    state.close = false\nend\n\nself.used = true",
				executeType = 2,
				loop = true,
				mechanicTime = 108,
				name = "Akh Morn spread guidance",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 13,
				timerEndOffset = 3.5,
				timerStartOffset = -1.1,
				uuid = "b25a6ad1-65fb-1daf-b1a8-ed9301f905aa",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DPS Mitigation",
				uuid = "10214cf7-4141-5381-a079-e63c635b3fb1",
			},
			objectType = "folder",
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
									"de002a3e-426f-689d-b401-dd628b99dfcc",
									true,
								},
								
								{
									"415589b8-5c3a-c5d4-a406-b03de83ed2d4",
									true,
								},
								
								{
									"191c274a-7f44-7482-8d79-bf4193288f83",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "e6953b4c-d0ff-28ff-b9d3-1f556049932b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							conditions = 
							{
								
								{
									"5af48a3a-a261-4afd-b7f1-4056ee6a0284",
									true,
								},
								
								{
									"55cbb319-6a38-6570-8c37-1c925f25b6c5",
									true,
								},
								
								{
									"e9d75e9d-ceb4-da7d-8426-f8495731d599",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "97ab9c3e-c427-5491-a79f-9ccc983f90a3",
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
									"6eb23555-cf6f-e0cc-ba1e-8517ed8451cd",
									true,
								},
								
								{
									"f3c43e34-027f-69e8-b787-b04e42c8feb6",
									true,
								},
								
								{
									"2c5593b6-84b8-3252-a637-f27b77ce4fdd",
									true,
								},
							},
							gVar = "ACR_RikuNIN3_Hotbar_Feint",
							uuid = "d3cf8164-33e3-5e42-a748-afd2f30aeb68",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							conditions = 
							{
								
								{
									"dc9efa07-c993-f879-878f-d1692114fc56",
									true,
								},
								
								{
									"81fc87c4-2a9a-e151-94f4-4c775a02a42d",
									true,
								},
								
								{
									"90f5c6ed-1f4c-98e0-9b67-7607ae8d355d",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "71649753-1dc7-940d-be44-5d476e5453e7",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							conditions = 
							{
								
								{
									"275cf86c-7e5f-2f48-84df-07384f533646",
									true,
								},
								
								{
									"311c5fac-fc38-4872-b142-97480545342b",
									true,
								},
								
								{
									"b5b7bcab-0da0-8c54-b0e5-457fb203dca6",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "9ddea4f0-0d47-4930-b57a-076233f35a4e",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							conditions = 
							{
								
								{
									"0a2c4430-f58e-c592-842e-476111f8fa7c",
									true,
								},
								
								{
									"282a9944-4909-8bdb-9b5d-f44119d13a8e",
									true,
								},
								
								{
									"c2c166f3-5964-b6d9-a131-b06a298924eb",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "5c1eecfa-2271-dcec-9c23-0bb039e142fe",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 2887,
							conditions = 
							{
								
								{
									"42a474b9-22a3-567e-b265-54a5b3e42a67",
									true,
								},
								
								{
									"6814a9a6-9286-4153-a69a-2ecce021435d",
									true,
								},
								
								{
									"020be14a-ccb7-942e-810a-f3676334016a",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "e947aa6e-d30b-8186-badb-51beb1b51144",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							conditions = 
							{
								
								{
									"d9339ab1-8fb3-ada3-a842-d9ffc2c7c959",
									true,
								},
								
								{
									"f702188d-7f70-e142-9701-20259be53f86",
									true,
								},
								
								{
									"e08e9469-042d-70ea-a2a7-76dcd8d5525d",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "f67e8b5a-debc-9fd4-8080-7fbc25b15c3d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							conditions = 
							{
								
								{
									"1b910d21-9a0c-144d-85fe-e9e13e82cd5c",
									true,
								},
								
								{
									"ba7f450d-f21b-3185-80cc-2d00d93232bd",
									true,
								},
								
								{
									"fdeb4ade-1a20-4bd3-8e37-431a01caf07e",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "890f2cf1-06cd-15e7-9f84-518ed1b0cb0d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							conditions = 
							{
								
								{
									"e1d6e405-8c14-07e9-95fd-850767566f3f",
									true,
								},
								
								{
									"5029512c-5670-fe29-9572-fc29cecbb0eb",
									true,
								},
								
								{
									"9c8c52f6-ea89-83a5-a2b7-4f36ce89f9b7",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "faf3b4c7-e9f6-605a-a075-0782ad94eff9",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							conditions = 
							{
								
								{
									"c2bcdc92-c49c-0ea8-bcf8-7e1b54cbb654",
									true,
								},
								
								{
									"ff570a37-7c25-b15c-bb2d-051b44ff9dac",
									true,
								},
								
								{
									"eb19332c-6fdf-a6ed-8b4b-45b496267df8",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "725b3e88-6bd7-c36a-b0fb-988ff5100ca0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MONK",
							name = "MONK",
							uuid = "de002a3e-426f-689d-b401-dd628b99dfcc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7549",
							uuid = "415589b8-5c3a-c5d4-a406-b03de83ed2d4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "191c274a-7f44-7482-8d79-bf4193288f83",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "DRAGOON",
							name = "DRAGOON",
							uuid = "5af48a3a-a261-4afd-b7f1-4056ee6a0284",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7549",
							uuid = "55cbb319-6a38-6570-8c37-1c925f25b6c5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "e9d75e9d-ceb4-da7d-8426-f8495731d599",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "NINJA",
							name = "NINJA",
							uuid = "6eb23555-cf6f-e0cc-ba1e-8517ed8451cd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7549",
							uuid = "f3c43e34-027f-69e8-b787-b04e42c8feb6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "2c5593b6-84b8-3252-a637-f27b77ce4fdd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "SAMURAI",
							name = "SAMURAI",
							uuid = "dc9efa07-c993-f879-878f-d1692114fc56",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7549",
							uuid = "81fc87c4-2a9a-e151-94f4-4c775a02a42d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "90f5c6ed-1f4c-98e0-9b67-7607ae8d355d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "REAPER",
							name = "REAPER",
							uuid = "275cf86c-7e5f-2f48-84df-07384f533646",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7549",
							uuid = "311c5fac-fc38-4872-b142-97480545342b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "b5b7bcab-0da0-8c54-b0e5-457fb203dca6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "VIPER",
							name = "VIPER",
							uuid = "0a2c4430-f58e-c592-842e-476111f8fa7c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7549",
							uuid = "282a9944-4909-8bdb-9b5d-f44119d13a8e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "c2c166f3-5964-b6d9-a131-b06a298924eb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MACHINIST",
							name = "MACHINIST",
							uuid = "42a474b9-22a3-567e-b265-54a5b3e42a67",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 2887,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 2887",
							uuid = "6814a9a6-9286-4153-a69a-2ecce021435d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "020be14a-ccb7-942e-810a-f3676334016a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "BLACKMAGE",
							name = "BLACKMAGE",
							uuid = "d9339ab1-8fb3-ada3-a842-d9ffc2c7c959",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7560",
							uuid = "f702188d-7f70-e142-9701-20259be53f86",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "e08e9469-042d-70ea-a2a7-76dcd8d5525d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "SUMMONER",
							name = "SUMMONER",
							uuid = "1b910d21-9a0c-144d-85fe-e9e13e82cd5c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7560",
							uuid = "ba7f450d-f21b-3185-80cc-2d00d93232bd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "fdeb4ade-1a20-4bd3-8e37-431a01caf07e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "REDMAGE",
							name = "REDMAGE",
							uuid = "e1d6e405-8c14-07e9-95fd-850767566f3f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7560",
							uuid = "5029512c-5670-fe29-9572-fc29cecbb0eb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "9c8c52f6-ea89-83a5-a2b7-4f36ce89f9b7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "PICTOMANCER",
							name = "PICTOMANCER",
							uuid = "c2bcdc92-c49c-0ea8-bcf8-7e1b54cbb654",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7560",
							uuid = "ff570a37-7c25-b15c-bb2d-051b44ff9dac",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "eb19332c-6fdf-a6ed-8b4b-45b496267df8",
							version = 3,
						},
					},
				},
				displayPath = "DPS Mitigation",
				mechanicTime = 108,
				name = "DPS debuffs - Akh Morn 1",
				timeRange = true,
				timelineIndex = 13,
				timerEndOffset = -0.5,
				timerStartOffset = -5,
				uuid = "a0aeda5f-40a9-8101-9650-7c8d2735ab7b",
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
				name = "Shinryu Unreal",
				uuid = "f3bab6ed-bd22-64f6-9422-1bf71e33e20a",
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
				displayPath = "Shinryu Unreal",
				eventType = 3,
				execute = "if eventArgs.spellID == 50252 and eventArgs.entityContentID == 6278 then\n    local duration = ((eventArgs.channelTimeMax or 0) + 0.35) * 1000\n    local drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1.0, 0.18, 0.08, 0.38), 3)\n    local early=data.shinryu_early_icicles\n    if early and early[eventArgs.entityID] then\n        Argus.deleteTimedShape(early[eventArgs.entityID])\n        early[eventArgs.entityID]=nil\n    end\n    drawer:addTimedRectOnEnt(duration, eventArgs.entityID, 60, 10, nil, 0, true, false, true)\n    if not data.shinryu_icicle_warned_121 then\n        TensorCore.addAlertText(duration, \"Dodge Icicle\", 1.35, 2, true)\n        data.shinryu_icicle_warned_121 = true\n    end\nend\nself.used = true",
				executeType = 2,
				loop = true,
				mechanicTime = 121.4,
				name = "Spikesicle lane",
				timeRange = true,
				timelineIndex = 17,
				timerEndOffset = 0.5,
				timerStartOffset = -3,
				uuid = "6bf57fec-024d-35fd-a5f6-eb877e0a7b71",
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
				displayPath = "Shinryu Unreal",
				eventType = 2,
				execute = "self.used=true\nif eventArgs.spellID~=50251 or eventArgs.entityContentID~=6278 then return end\nlocal shapes=data.shinryu_early_icicles or {}\ndata.shinryu_early_icicles=shapes\nif shapes[eventArgs.entityID] then Argus.deleteTimedShape(shapes[eventArgs.entityID]) end\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1.0,0.18,0.08,0.38),3)\nshapes[eventArgs.entityID]=drawer:addTimedRectOnEnt(8000,eventArgs.entityID,60,10,nil,0,true,false,true)\n",
				executeType = 2,
				loop = true,
				mechanicTime = 121.4,
				name = "[Earlier] Spikesicle lane from Icicle Impact",
				timeRange = true,
				timelineIndex = 17,
				timerEndOffset = 0.5,
				timerStartOffset = -8,
				uuid = "32eb11ab-cb17-88f3-9d3e-5e47f8fd3e6c",
				version = 2,
			},
		},
	},
	[18] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal",
				uuid = "a18dcee4-618d-cd24-abea-a018cae94875",
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
				displayPath = "Shinryu Unreal",
				eventType = 3,
				execute = "\nif eventArgs.entityContentID == 5640 then\n    local spell = eventArgs.spellID\n    if spell == 50232 or spell == 50263 then\n        local duration = math.max(1, eventArgs.channelTimeMax or 0) * 1000\n        TensorCore.addAlertText(duration, \"JUDGMENT BOLT: stay out of puddles\", 1.35, 2, false)\n    end\nend\nself.used = true\n",
				executeType = 2,
				mechanicTime = 123.3,
				name = "Judgment Bolt out of puddle",
				timeRange = true,
				timelineIndex = 18,
				timerEndOffset = 0.5,
				timerStartOffset = -10.5,
				uuid = "8f268dbe-24e6-73fc-b7d9-413600516eab",
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
				displayPath = "Shinryu Unreal",
				eventType = 3,
				execute = "if eventArgs.entityContentID~=5640 or (eventArgs.spellID~=50231 and eventArgs.spellID~=50262) then return end\nif eventArgs.entityContentID == 5640 and (eventArgs.spellID == 50231 or eventArgs.spellID == 50262) then\n    local duration = math.max(1, eventArgs.channelTimeMax or 0) * 1000 + 1000\n    if not data.shinryu_hellfire_callout then\n        TensorCore.addAlertText(duration, \"HELLFIRE: stand in a green puddle\", 1.35, 2, false)\n        data.shinryu_hellfire_callout = true\n    end\nend\nself.used = true",
				executeType = 2,
				loop = true,
				mechanicTime = 123.3,
				name = "Hellfire water puddles",
				timeRange = true,
				timelineIndex = 18,
				timerEndOffset = 0.5,
				timerStartOffset = -13.3,
				uuid = "5b25a68c-b7c5-9c98-94bc-8e21ebdfafb4",
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
				displayPath = "Shinryu Unreal",
				execute = "local drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.1, 1.0, 0.2, 0.9), 4)\nfor _, ent in pairs(EntityList(\"\") or {}) do\n    if ent.contentid == 2004237 and ent.pos and math.abs(ent.pos.y + 380) < 5 then\n        drawer:addTimedCircle(500, ent.pos.x, ent.pos.y + 0.1, ent.pos.z, 5, 0, false, true, Argus2.RenderFlags.FLAG_RENDER_OVERLAY)\n    end\nend\nself.used = true",
				executeType = 2,
				loop = true,
				mechanicTime = 123.3,
				name = "[V2] Hellfire green water puddles",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 18,
				timerEndOffset = 0.5,
				timerStartOffset = -13.3,
				uuid = "06a8ccfb-a15d-f6aa-a360-ef175192e730",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DPS Mitigation",
				uuid = "47e7fc9d-5ecb-75c9-9a04-37c5ab9c2a49",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7394,
							conditions = 
							{
								
								{
									"c8f04fe5-e709-6900-8880-41c0d6f76921",
									true,
								},
								
								{
									"d0ab03fe-e5db-8137-9d69-5e782e2c634a",
									true,
								},
							},
							uuid = "d8068313-b1c4-f9ea-842c-5d0ce499f5ee",
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
									"4ca55752-c3a6-2245-a955-a7f5e31e62c3",
									true,
								},
								
								{
									"3ec1f9cb-53b4-6238-87f5-cefccb2a27f2",
									true,
								},
							},
							gVar = "ACR_RikuNIN3_Hotbar_ShadeShift",
							uuid = "45460ab1-856a-a466-80dd-3f45582ba055",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 36962,
							conditions = 
							{
								
								{
									"90a12b44-facb-6c3a-a4c0-9de7fef09d9b",
									true,
								},
								
								{
									"d521aa4e-398f-7de5-a81c-674e2dd60900",
									true,
								},
							},
							uuid = "3a462927-bb39-c6d2-96a3-f97d1578c834",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 24404,
							conditions = 
							{
								
								{
									"2a0c545e-bf4f-68aa-858b-18fda6e0e072",
									true,
								},
								
								{
									"a69f95b7-074c-903e-831d-8bba629a3fe4",
									true,
								},
							},
							uuid = "9d688792-ebf4-29b3-964b-56297ba3e733",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7405,
							conditions = 
							{
								
								{
									"7d6abe99-df1c-5d29-b904-46b3312d975a",
									true,
								},
								
								{
									"d65c6549-6645-4e0c-a3a6-07b8ab6c7e56",
									true,
								},
							},
							uuid = "80cd49ab-afe2-57b4-9082-370afee450ca",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							conditions = 
							{
								
								{
									"b6560e94-144a-0da3-9405-aa90a25b56b3",
									true,
								},
								
								{
									"14096272-01ca-6a17-8765-6487558aaa58",
									true,
								},
							},
							uuid = "02b4448c-d10e-7a9d-8e5e-d7247433fdf1",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							conditions = 
							{
								
								{
									"176f6b21-3b44-f328-a81b-602ea16f0c6f",
									true,
								},
								
								{
									"59b3d8b9-643d-ae9d-b99e-d0a5674c4a09",
									true,
								},
							},
							uuid = "662134c7-f765-7382-af36-e9a59079aff0",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 157,
							conditions = 
							{
								
								{
									"0a8a12b9-c365-99c0-bb48-abdccb5e7a54",
									true,
								},
								
								{
									"37b6a0ef-f2d4-6fd4-9412-14748ac0282b",
									true,
								},
							},
							uuid = "9e9a1791-997f-16ff-af05-3730845a5aac",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25799,
							conditions = 
							{
								
								{
									"ae8fee1c-9bc4-75b9-954c-f542dd1d85bd",
									true,
								},
								
								{
									"0546133f-821c-90be-82fd-31697dd4e8c2",
									true,
								},
							},
							uuid = "10695c0e-2eab-b7e2-ab0c-8810cc75e72e",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25857,
							conditions = 
							{
								
								{
									"15d0ecd9-8e89-599b-8764-3efa8c5e6288",
									true,
								},
								
								{
									"135d642d-a37d-f7bf-acaa-c6f47bab6264",
									true,
								},
							},
							uuid = "a8377c29-48c8-63f9-acb3-5b6ea7f4804e",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 34685,
							conditions = 
							{
								
								{
									"f940a77e-7844-39ab-b1d5-92634455ed2b",
									true,
								},
								
								{
									"98f666cb-3f1a-89a9-8685-fd2e7eda3381",
									true,
								},
							},
							uuid = "bfa6ab6a-6415-8b9b-9452-6e89077e90df",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MONK",
							name = "MONK",
							uuid = "c8f04fe5-e709-6900-8880-41c0d6f76921",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7394,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7394",
							uuid = "d0ab03fe-e5db-8137-9d69-5e782e2c634a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "NINJA",
							name = "NINJA",
							uuid = "4ca55752-c3a6-2245-a955-a7f5e31e62c3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 2241,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 2241",
							uuid = "3ec1f9cb-53b4-6238-87f5-cefccb2a27f2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "SAMURAI",
							name = "SAMURAI",
							uuid = "90a12b44-facb-6c3a-a4c0-9de7fef09d9b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 36962,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 36962",
							uuid = "d521aa4e-398f-7de5-a81c-674e2dd60900",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "REAPER",
							name = "REAPER",
							uuid = "2a0c545e-bf4f-68aa-858b-18fda6e0e072",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 24404,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 24404",
							uuid = "a69f95b7-074c-903e-831d-8bba629a3fe4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "BARD",
							name = "BARD",
							uuid = "7d6abe99-df1c-5d29-b904-46b3312d975a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7405,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7405",
							uuid = "d65c6549-6645-4e0c-a3a6-07b8ab6c7e56",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MACHINIST",
							name = "MACHINIST",
							uuid = "b6560e94-144a-0da3-9405-aa90a25b56b3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 16889",
							uuid = "14096272-01ca-6a17-8765-6487558aaa58",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "DANCER",
							name = "DANCER",
							uuid = "176f6b21-3b44-f328-a81b-602ea16f0c6f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 16012",
							uuid = "59b3d8b9-643d-ae9d-b99e-d0a5674c4a09",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "BLACKMAGE",
							name = "BLACKMAGE",
							uuid = "0a8a12b9-c365-99c0-bb48-abdccb5e7a54",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 157,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 157",
							uuid = "37b6a0ef-f2d4-6fd4-9412-14748ac0282b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "SUMMONER",
							name = "SUMMONER",
							uuid = "ae8fee1c-9bc4-75b9-954c-f542dd1d85bd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25799,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 25799",
							uuid = "0546133f-821c-90be-82fd-31697dd4e8c2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "REDMAGE",
							name = "REDMAGE",
							uuid = "15d0ecd9-8e89-599b-8764-3efa8c5e6288",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25857,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 25857",
							uuid = "135d642d-a37d-f7bf-acaa-c6f47bab6264",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "PICTOMANCER",
							name = "PICTOMANCER",
							uuid = "f940a77e-7844-39ab-b1d5-92634455ed2b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 34685,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 34685",
							uuid = "98f666cb-3f1a-89a9-8685-fd2e7eda3381",
							version = 3,
						},
					},
				},
				displayPath = "DPS Mitigation",
				mechanicTime = 123.3,
				name = "DPS shields - Judgment Bolt / Hellfire",
				timeRange = true,
				timelineIndex = 18,
				timerEndOffset = -0.3,
				timerStartOffset = -3,
				uuid = "0bd7b036-8af7-963d-ae51-88d8fef1ee18",
				version = 2,
			},
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
									"44a8d58f-1ceb-5c0a-b4cc-23516dfd4656",
									true,
								},
								
								{
									"94eb4e13-2cc6-ddd3-9e97-88f6fc45afab",
									true,
								},
								
								{
									"edd9cfed-94a6-11fe-8f8e-29894f2e13d2",
									true,
								},
							},
							uuid = "9cc62535-8ba8-2f6a-9ac5-d384b87d5448",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"6c0dbe6a-c119-8360-ba75-963b2110cdaf",
									true,
								},
								
								{
									"0c12bd88-b1e8-6c91-978b-859fc8bf0c01",
									true,
								},
								
								{
									"6a2c9290-16d4-2ccc-8e6f-6966c0d7f0cc",
									true,
								},
							},
							uuid = "c6dae565-b48a-6420-a511-a6404b3aeecc",
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
									"05bc76b6-c8f8-4fa3-b035-abb6af6f258f",
									true,
								},
								
								{
									"a66a4b01-c47f-26ae-822b-d4a12c1bb4de",
									true,
								},
								
								{
									"db2bb118-1024-4b3f-8d0e-483392a07b1f",
									true,
								},
							},
							gVar = "ACR_RikuNIN3_Hotbar_SecondWind",
							uuid = "c3ebf8f9-ffee-73fc-ba15-40d270e32025",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"2ccafbac-a0cb-8cde-967a-969aa265985b",
									true,
								},
								
								{
									"845e3c7b-caf8-6c59-844d-3b9551bdfa1a",
									true,
								},
								
								{
									"582ac91b-08f0-b0fb-a51d-b749660286f8",
									true,
								},
							},
							uuid = "ef1b5174-0bd3-0187-bba4-2e446340b3e7",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"e36d66da-d65a-aa30-9a45-0d72bed4c5a5",
									true,
								},
								
								{
									"990428b4-7635-a7ef-abba-a88a0cf89489",
									true,
								},
								
								{
									"a54bf941-60b8-c252-9d04-16650c1496df",
									true,
								},
							},
							uuid = "d9105d5a-8c48-01ec-b2c9-37fc98103f63",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"eefe9470-9e93-e80a-91b5-33a6faf978ff",
									true,
								},
								
								{
									"a4b3f15c-2b92-2d60-b022-7ab80e47c427",
									true,
								},
								
								{
									"8947f9dc-48d1-2513-a642-67d8d69f67f2",
									true,
								},
							},
							uuid = "110a8b5d-ac11-f20f-b7a5-586b7be948e1",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"86c67b5e-181a-1ebb-96be-90e48461514d",
									true,
								},
								
								{
									"c39677e1-665c-7d2a-ac6b-5d3b24dbfbfd",
									true,
								},
								
								{
									"138f3f8c-515d-0bd4-86a4-176f90bcb069",
									true,
								},
							},
							uuid = "5fd3f2ee-0544-982a-9ab4-6edb5202c0f4",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"d6d04598-5101-9baa-a119-cd902bb5641d",
									true,
								},
								
								{
									"79d3b271-26ac-2b2b-8f28-72cde1cee1bf",
									true,
								},
								
								{
									"f7548833-f546-f15c-a142-1bede2506917",
									true,
								},
							},
							uuid = "c3f605ac-3be0-738c-bc65-15e4c68603cf",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"d9907ca7-d800-66db-9c61-3b138b8c3a7f",
									true,
								},
								
								{
									"125df80f-42c2-b9f0-9eac-9fab40475681",
									true,
								},
								
								{
									"3532d13a-45b9-cee4-9cd2-800ff23714b7",
									true,
								},
							},
							uuid = "8237d248-4520-f01d-ba1b-8f59943ade2e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MONK",
							name = "MONK",
							uuid = "44a8d58f-1ceb-5c0a-b4cc-23516dfd4656",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "94eb4e13-2cc6-ddd3-9e97-88f6fc45afab",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "edd9cfed-94a6-11fe-8f8e-29894f2e13d2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "DRAGOON",
							name = "DRAGOON",
							uuid = "6c0dbe6a-c119-8360-ba75-963b2110cdaf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "0c12bd88-b1e8-6c91-978b-859fc8bf0c01",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "6a2c9290-16d4-2ccc-8e6f-6966c0d7f0cc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "NINJA",
							name = "NINJA",
							uuid = "05bc76b6-c8f8-4fa3-b035-abb6af6f258f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "a66a4b01-c47f-26ae-822b-d4a12c1bb4de",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "db2bb118-1024-4b3f-8d0e-483392a07b1f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "SAMURAI",
							name = "SAMURAI",
							uuid = "2ccafbac-a0cb-8cde-967a-969aa265985b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "845e3c7b-caf8-6c59-844d-3b9551bdfa1a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "582ac91b-08f0-b0fb-a51d-b749660286f8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "REAPER",
							name = "REAPER",
							uuid = "e36d66da-d65a-aa30-9a45-0d72bed4c5a5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "990428b4-7635-a7ef-abba-a88a0cf89489",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "a54bf941-60b8-c252-9d04-16650c1496df",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "VIPER",
							name = "VIPER",
							uuid = "eefe9470-9e93-e80a-91b5-33a6faf978ff",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "a4b3f15c-2b92-2d60-b022-7ab80e47c427",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "8947f9dc-48d1-2513-a642-67d8d69f67f2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "BARD",
							name = "BARD",
							uuid = "86c67b5e-181a-1ebb-96be-90e48461514d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "c39677e1-665c-7d2a-ac6b-5d3b24dbfbfd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "138f3f8c-515d-0bd4-86a4-176f90bcb069",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MACHINIST",
							name = "MACHINIST",
							uuid = "d6d04598-5101-9baa-a119-cd902bb5641d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "79d3b271-26ac-2b2b-8f28-72cde1cee1bf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "f7548833-f546-f15c-a142-1bede2506917",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "DANCER",
							name = "DANCER",
							uuid = "d9907ca7-d800-66db-9c61-3b138b8c3a7f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "125df80f-42c2-b9f0-9eac-9fab40475681",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "3532d13a-45b9-cee4-9cd2-800ff23714b7",
							version = 3,
						},
					},
				},
				displayPath = "DPS Mitigation",
				mechanicTime = 123.3,
				name = "DPS recovery - Judgment Bolt / Hellfire",
				timeRange = true,
				timelineIndex = 18,
				timerEndOffset = 4,
				timerStartOffset = 0.2,
				uuid = "4b754430-ae8c-ac02-85e6-ba374cccecee",
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
				name = "Shinryu Unreal",
				uuid = "585209b2-aa60-aa5a-bdfc-720d0621c1ed",
			},
			objectType = "folder",
		},
	},
	[20] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal",
				uuid = "6e01b676-fefc-2216-a312-379da08fdd50",
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
				displayPath = "Shinryu Unreal",
				eventType = 2,
				execute = "\nif eventArgs.entityContentID == 5642 and eventArgs.spellID == 50247 and eventArgs.targetID then\n    local target = TensorCore.mGetEntity(eventArgs.targetID)\n    if target and target.id then\n        local duration = 4000\n        local drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1.0, 0.2, 0.15, 0.75), 3)\n        drawer:addTimedCircleOnEnt(duration, target.id, 3.5, 0, false, true)\n        local player = TensorCore.mGetPlayer()\n        if player and eventArgs.targetID == player.id then\n            TensorCore.addAlertText(3000, \"Spread for Levinbolt\", 1.35, 2, true)\n        end\n    end\nend\nself.used = true\n",
				executeType = 2,
				mechanicTime = 149.5,
				name = "Levinbolt player spreads",
				timeRange = true,
				timelineIndex = 20,
				timerEndOffset = 0.5,
				timerStartOffset = -8.5,
				uuid = "3fc2d096-8a9d-1abc-9b6f-48f5332716a3",
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
				name = "Shinryu Unreal",
				uuid = "fcacb3b9-41af-216d-a620-724a7cabec4f",
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
				displayPath = "Shinryu Unreal",
				eventType = 26,
				execute = "\ndata.shinryu_tail_highlights = data.shinryu_tail_highlights or {}\nlocal marks = data.shinryu_tail_highlights\nlocal id = eventArgs.entityID\nif eventArgs.entityContentID == 5789 and id and id > 0 then\n    if eventArgs.isTargetable then\n        if not marks[id] then TensorCore.addAlertText(3500, \"Tail up\", 1.3, 2, false) end\n        local old = marks[id]\n        if old then\n            Argus.deleteTimedShape(old)\n        end\n        local drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1.0, 0.78, 0.08, 0.34), 4)\n        marks[id] = drawer:addTimedRectOnEnt(12000, id, 40, 10, nil, 0, true, false, true)\n    else\n        local uuid = marks[id]\n        if uuid then\n            Argus.deleteTimedShape(uuid)\n            marks[id] = nil\n        end\n    end\nend\nself.used = true\n",
				executeType = 2,
				loop = true,
				mechanicTime = 156.6,
				name = "Highlight active Shinryu tail",
				timeRange = true,
				timelineIndex = 21,
				timerEndOffset = 10,
				timerStartOffset = -1,
				uuid = "823acbac-65b5-3c96-8eea-c9133a4408d4",
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
				name = "Shinryu Unreal",
				uuid = "943425ff-c278-529a-a0d2-4b16e716cbec",
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
				displayPath = "Shinryu Unreal",
				eventType = 15,
				execute = "data.shinryu_burning_chain_pair = data.shinryu_burning_chain_pair or {}\nlocal state = data.shinryu_burning_chain_pair\nif not state.clear then\n    state.clear = function(s)\n        if s.playerCircle then Argus.deleteTimedShape(s.playerCircle) end\n        if s.partnerCircle then Argus.deleteTimedShape(s.partnerCircle) end\n        if s.link then Argus.deleteTimedShape(s.link) end\n        s.playerCircle = nil\n        s.partnerCircle = nil\n        s.link = nil\n        s.partnerID = nil\n    end\nend\n\nlocal player = TensorCore.mGetPlayer()\nif player and player.id and player.id > 0 then\n    local playerID = player.id\n    local sourceID = eventArgs.sourceEntityID\n    local targetID = eventArgs.newTargetID\n\n    if eventArgs.newTetherID == 9 then\n        local partnerID = nil\n        if sourceID == playerID then\n            partnerID = targetID\n        elseif targetID == playerID then\n            partnerID = sourceID\n        end\n\n        if partnerID and partnerID > 0 then\n            state.clear(state)\n            state.partnerID = partnerID\n            local drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.1, 0.95, 0.65, 0.9), 1.5)\n            state.playerCircle = drawer:addTimedCircleOnEnt(15000, playerID, 1.6, 0, false, true)\n            state.partnerCircle = drawer:addTimedCircleOnEnt(15000, partnerID, 1.6, 0, false, true)\n            state.link = drawer:addTimedRectOnEnt(15000, playerID, 0.5, 0.22, partnerID, 0, false, false, true, 0, false)\n        end\n    elseif eventArgs.oldTetherID == 9 then\n        local oldTargetID = eventArgs.oldTargetID\n        if sourceID == playerID or oldTargetID == playerID or sourceID == state.partnerID or oldTargetID == state.partnerID then\n            state.clear(state)\n        end\n    end\nend\nself.used = true",
				executeType = 2,
				loop = true,
				mechanicTime = 171.8,
				name = "Burning Chain pair marks",
				timeRange = true,
				timelineIndex = 23,
				timerEndOffset = 17,
				timerStartOffset = -4,
				uuid = "0918253d-61ef-e5aa-baa1-0765bd7fb177",
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
				name = "Shinryu Unreal",
				uuid = "a04e16c6-9f8d-a212-a39b-2817e3848568",
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
				displayPath = "Shinryu Unreal",
				eventType = 4,
				execute = "if eventArgs.markerID == 40 and eventArgs.entityID and eventArgs.entityID > 0 then\n    local target = TensorCore.mGetEntity(eventArgs.entityID)\n    local boss = TensorCore.getEntityByGroup(\"ContentID\", {contentid = 5640})\n    if target and target.pos and boss and boss.pos then\n        local drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1.0, 0.12, 0.06, 0.30), 3)\n        drawer:addTimedConeOnEnt(5750, boss.id, 60, 1.04719755, target.id or eventArgs.entityID, 0, false, true, 0, false)\n    end\nend\nself.used = true",
				executeType = 2,
				loop = true,
				mechanicTime = 180.6,
				name = "Earth Breath target cones",
				timeRange = true,
				timelineIndex = 24,
				timerEndOffset = 1,
				timerStartOffset = -6,
				uuid = "513d9f85-53e0-9e01-a161-11241fa491ba",
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
				name = "Shinryu Unreal",
				uuid = "65c3f983-d9b7-cef3-b022-f92cf28e58f7",
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
				displayPath = "Shinryu Unreal",
				execute = "data.shinryu_akhmorn_spread = data.shinryu_akhmorn_spread or {}\nlocal states = data.shinryu_akhmorn_spread\nlocal state = states[\"akh188\"] or {called = false, close = false, line = nil}\nstates[\"akh188\"] = state\n\nif not state.called then\n    TensorCore.addAlertText(1300, \"Spread\", 1.35, 3, true)\n    state.called = true\nend\n\nlocal player = TensorCore.mGetPlayer()\nlocal party = TensorCore.getEntityGroupList(\"Party\")\nlocal nearest, nearestDistance\nif player and player.id and player.pos and party then\n    for _, member in pairs(party) do\n        if member and member.id and member.id ~= player.id and member.pos then\n            local dx = player.pos.x - member.pos.x\n            local dz = player.pos.z - member.pos.z\n            local distance = math.sqrt(dx * dx + dz * dz)\n            if distance <= 6 and (not nearestDistance or distance < nearestDistance) then\n                nearest = member\n                nearestDistance = distance\n            end\n        end\n    end\nend\n\nif nearest then\n    if state.line then Argus.deleteTimedShape(state.line) end\n    local drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1.0, 0.82, 0.08, 0.9), 2)\n    state.line = drawer:addTimedLine(300, player.pos.x, player.pos.y, player.pos.z, nearest.pos.x, nearest.pos.y, nearest.pos.z, 0.45, 1)\n    if not state.close then\n        TensorCore.addAlertText(900, \"Spread out\", 1.2, 3, false)\n    end\n    state.close = true\nelse\n    if state.line then Argus.deleteTimedShape(state.line) end\n    state.line = nil\n    state.close = false\nend\n\nself.used = true",
				executeType = 2,
				loop = true,
				mechanicTime = 188,
				name = "Akh Morn spread guidance",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = 3.5,
				timerStartOffset = -1.1,
				uuid = "104e2aeb-9ad6-9dd3-9d68-6eb58e296003",
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
				name = "Shinryu Unreal",
				uuid = "60003eb6-7a06-3cf8-b888-46f5014eb103",
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
				displayPath = "Shinryu Unreal",
				eventType = 15,
				execute = "data.shinryu_burning_chain_pair = data.shinryu_burning_chain_pair or {}\nlocal state = data.shinryu_burning_chain_pair\nif not state.clear then\n    state.clear = function(s)\n        if s.playerCircle then Argus.deleteTimedShape(s.playerCircle) end\n        if s.partnerCircle then Argus.deleteTimedShape(s.partnerCircle) end\n        if s.link then Argus.deleteTimedShape(s.link) end\n        s.playerCircle = nil\n        s.partnerCircle = nil\n        s.link = nil\n        s.partnerID = nil\n    end\nend\n\nlocal player = TensorCore.mGetPlayer()\nif player and player.id and player.id > 0 then\n    local playerID = player.id\n    local sourceID = eventArgs.sourceEntityID\n    local targetID = eventArgs.newTargetID\n\n    if eventArgs.newTetherID == 9 then\n        local partnerID = nil\n        if sourceID == playerID then\n            partnerID = targetID\n        elseif targetID == playerID then\n            partnerID = sourceID\n        end\n\n        if partnerID and partnerID > 0 then\n            state.clear(state)\n            state.partnerID = partnerID\n            local drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.1, 0.95, 0.65, 0.9), 1.5)\n            state.playerCircle = drawer:addTimedCircleOnEnt(15000, playerID, 1.6, 0, false, true)\n            state.partnerCircle = drawer:addTimedCircleOnEnt(15000, partnerID, 1.6, 0, false, true)\n            state.link = drawer:addTimedRectOnEnt(15000, playerID, 0.5, 0.22, partnerID, 0, false, false, true, 0, false)\n        end\n    elseif eventArgs.oldTetherID == 9 then\n        local oldTargetID = eventArgs.oldTargetID\n        if sourceID == playerID or oldTargetID == playerID or sourceID == state.partnerID or oldTargetID == state.partnerID then\n            state.clear(state)\n        end\n    end\nend\nself.used = true",
				executeType = 2,
				loop = true,
				mechanicTime = 206.6,
				name = "Burning Chain pair marks",
				timeRange = true,
				timelineIndex = 28,
				timerEndOffset = 17,
				timerStartOffset = -4,
				uuid = "617933a6-e8a0-74e8-aa71-9ddcafd39817",
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
				displayPath = "Shinryu Unreal",
				execute = "if not data.shinryu_chain_callout then\n    local roster = AnyoneCore and AnyoneCore.Roster\n    if roster and roster.current() ~= nil then\n        local slot = roster.mySlot()\n        if slot == \"H1\" or slot == \"H2\" then\n            TensorCore.addAlertText(1600, \"Break tether\", 1.35, 3, true)\n        else\n            TensorCore.addAlertText(1600, \"Stack\", 1.35, 3, true)\n        end\n        data.shinryu_chain_callout = true\n    end\nend\nself.used = true",
				executeType = 2,
				loop = true,
				mechanicTime = 206.6,
				name = "Tether stack and marker 4",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 28,
				timerEndOffset = 1,
				timerStartOffset = -1.5,
				uuid = "c48773ed-a7a3-cf8c-970b-b3dbf60ddc4c",
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
				displayPath = "Shinryu Unreal",
				execute = "    local x, y, z, active = Argus.getWaymarkInfo(8)\n    if active then\n        local drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.1, 1.0, 0.2, 0.65), 2)\n        drawer:addTimedCircle(8500, x, y, z, 1.75, 0, false, true)\n    end\n\nself.used=true",
				executeType = 2,
				mechanicTime = 206.6,
				name = "[Earlier] Diamond Dust marker 4 green stack circle",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 28,
				timerEndOffset = 1,
				timerStartOffset = -3.5,
				uuid = "c99fe90c-eed1-1341-99a4-c487e29a27d7",
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
				name = "Shinryu Unreal",
				uuid = "110d0855-aa14-5c02-a045-55f4ff269aba",
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
				displayPath = "Shinryu Unreal",
				eventType = 3,
				execute = "\nif eventArgs.entityContentID == 5640 then\n    local spell = eventArgs.spellID\n    if spell == 50264 then\n        local duration = math.max(1, eventArgs.channelTimeMax or 0) * 1000\n        TensorCore.addAlertText(duration, \"DIAMOND DUST: ICE stack\", 1.35, 2, false)\n    end\nend\nself.used = true\n",
				executeType = 2,
				mechanicTime = 208.2,
				name = "Diamond Dust ice stack",
				timeRange = true,
				timelineIndex = 29,
				timerEndOffset = 0.5,
				timerStartOffset = -10.5,
				uuid = "4713afa6-cc14-fe9f-8fe4-034e1b0643ee",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DPS Mitigation",
				uuid = "2e71bdec-81a6-ee0a-ac4b-76a7f52664e9",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7394,
							conditions = 
							{
								
								{
									"b3c57e64-a150-5c46-8148-50c479708710",
									true,
								},
								
								{
									"104e1fc8-e7d2-2151-9161-270b2e11a57c",
									true,
								},
							},
							uuid = "b16477ed-7b8a-0db0-baef-ac882a11ae62",
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
									"e33ab586-d6d7-3022-823b-ce977914f94f",
									true,
								},
								
								{
									"19a900f4-2b15-1e25-8824-28b735fe86ab",
									true,
								},
							},
							gVar = "ACR_RikuNIN3_Hotbar_ShadeShift",
							uuid = "b5d1d3fc-54dd-ef69-a51f-87ca4ad24775",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 36962,
							conditions = 
							{
								
								{
									"9a4bd74e-925b-597b-9201-eb2577a1a53a",
									true,
								},
								
								{
									"4c7f5762-5659-2a5a-99ec-2c4ae507606b",
									true,
								},
							},
							uuid = "c60271fe-27f6-8dbc-82f1-5ed899f10e26",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 24404,
							conditions = 
							{
								
								{
									"78c3ecdd-29a3-bb68-8bd6-22d269bc0a42",
									true,
								},
								
								{
									"42a03ac4-9159-c9f0-bc8a-f03fae7488ce",
									true,
								},
							},
							uuid = "dbc72a3f-2443-d6ff-a3c2-701434844418",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7405,
							conditions = 
							{
								
								{
									"35af9675-b927-87be-843a-59cd31679d29",
									true,
								},
								
								{
									"5d30984d-73b7-8157-85ed-e02a72af8044",
									true,
								},
							},
							uuid = "175084a5-8829-d17b-b992-a0e79ba3e778",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							conditions = 
							{
								
								{
									"b486a6f9-84a6-5d6e-8560-574a0cb4b15e",
									true,
								},
								
								{
									"03691153-147d-3257-b489-2fa33140707f",
									true,
								},
							},
							uuid = "67b7175f-5723-2416-8556-d1196d2b3234",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							conditions = 
							{
								
								{
									"b46c922a-d22c-5822-8347-4a54f59c7d97",
									true,
								},
								
								{
									"494f3f2a-c552-59ae-97aa-33f41108c8a6",
									true,
								},
							},
							uuid = "6cf41586-5093-ec86-9886-f793ef9e4709",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 157,
							conditions = 
							{
								
								{
									"3d55c803-b763-c054-aa86-30c25f2ade72",
									true,
								},
								
								{
									"d830ac0a-e39d-fee3-88ce-d23fa8188d86",
									true,
								},
							},
							uuid = "abea907d-38b1-0c26-b887-225b7ff2bf64",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25799,
							conditions = 
							{
								
								{
									"63dee484-2e4a-16e6-8523-0bbe6481f51c",
									true,
								},
								
								{
									"0b17ac47-ac5e-135d-80c1-787f47a3944e",
									true,
								},
							},
							uuid = "8d0863db-e303-c8e7-b9d9-12a724135fde",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25857,
							conditions = 
							{
								
								{
									"61357402-555c-c4a0-8931-7c5e2b9927ac",
									true,
								},
								
								{
									"5e146490-bcc5-ad1f-8fa3-71e19424883a",
									true,
								},
							},
							uuid = "30b12eae-55e9-3f64-8dca-353d6735e7ba",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 34685,
							conditions = 
							{
								
								{
									"8d12c8c8-d21d-6907-8e12-1b51cdb17fae",
									true,
								},
								
								{
									"040ec8df-3fa9-3c6a-a7d5-e399bbcd09eb",
									true,
								},
							},
							uuid = "10997d43-39f3-1032-8a92-a185110b435d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MONK",
							name = "MONK",
							uuid = "b3c57e64-a150-5c46-8148-50c479708710",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7394,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7394",
							uuid = "104e1fc8-e7d2-2151-9161-270b2e11a57c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "NINJA",
							name = "NINJA",
							uuid = "e33ab586-d6d7-3022-823b-ce977914f94f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 2241,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 2241",
							uuid = "19a900f4-2b15-1e25-8824-28b735fe86ab",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "SAMURAI",
							name = "SAMURAI",
							uuid = "9a4bd74e-925b-597b-9201-eb2577a1a53a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 36962,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 36962",
							uuid = "4c7f5762-5659-2a5a-99ec-2c4ae507606b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "REAPER",
							name = "REAPER",
							uuid = "78c3ecdd-29a3-bb68-8bd6-22d269bc0a42",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 24404,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 24404",
							uuid = "42a03ac4-9159-c9f0-bc8a-f03fae7488ce",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "BARD",
							name = "BARD",
							uuid = "35af9675-b927-87be-843a-59cd31679d29",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7405,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7405",
							uuid = "5d30984d-73b7-8157-85ed-e02a72af8044",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MACHINIST",
							name = "MACHINIST",
							uuid = "b486a6f9-84a6-5d6e-8560-574a0cb4b15e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 16889",
							uuid = "03691153-147d-3257-b489-2fa33140707f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "DANCER",
							name = "DANCER",
							uuid = "b46c922a-d22c-5822-8347-4a54f59c7d97",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 16012",
							uuid = "494f3f2a-c552-59ae-97aa-33f41108c8a6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "BLACKMAGE",
							name = "BLACKMAGE",
							uuid = "3d55c803-b763-c054-aa86-30c25f2ade72",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 157,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 157",
							uuid = "d830ac0a-e39d-fee3-88ce-d23fa8188d86",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "SUMMONER",
							name = "SUMMONER",
							uuid = "63dee484-2e4a-16e6-8523-0bbe6481f51c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25799,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 25799",
							uuid = "0b17ac47-ac5e-135d-80c1-787f47a3944e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "REDMAGE",
							name = "REDMAGE",
							uuid = "61357402-555c-c4a0-8931-7c5e2b9927ac",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25857,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 25857",
							uuid = "5e146490-bcc5-ad1f-8fa3-71e19424883a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "PICTOMANCER",
							name = "PICTOMANCER",
							uuid = "8d12c8c8-d21d-6907-8e12-1b51cdb17fae",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 34685,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 34685",
							uuid = "040ec8df-3fa9-3c6a-a7d5-e399bbcd09eb",
							version = 3,
						},
					},
				},
				displayPath = "DPS Mitigation",
				mechanicTime = 208.2,
				name = "DPS shields - Diamond Dust",
				timeRange = true,
				timelineIndex = 29,
				timerEndOffset = -0.3,
				timerStartOffset = -3,
				uuid = "e8a7dada-a14a-387f-84cf-d91afe8cd998",
				version = 2,
			},
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
									"c5e0fcab-e03d-6141-84d5-456d6549cc58",
									true,
								},
								
								{
									"3e1746e6-0670-bd39-952c-7e92e7a6217b",
									true,
								},
								
								{
									"17574bcc-1ff7-273d-bf53-8c1555d65fe3",
									true,
								},
							},
							uuid = "5cddaf9b-cc56-77fd-bb15-9387b5c41521",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"ddfb63f7-9019-6d50-bb1b-ca460997fc74",
									true,
								},
								
								{
									"4823c7de-8c10-0401-8f27-7c10ddffd86f",
									true,
								},
								
								{
									"e1408975-25c9-3686-9f51-1c7cc3ace64e",
									true,
								},
							},
							uuid = "9d734834-d626-8a06-a13c-5b8b987fdbae",
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
									"70b00bf4-5f19-3fb8-a112-6af744f27ccb",
									true,
								},
								
								{
									"a11054c6-9e2f-a056-be41-7805c0fc03ea",
									true,
								},
								
								{
									"eda7e95b-2466-2ba2-9ef2-64649a3e8112",
									true,
								},
							},
							gVar = "ACR_RikuNIN3_Hotbar_SecondWind",
							uuid = "f37c1604-238d-ece9-b1b4-33d480898c1a",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"a4491821-743a-a0d4-9497-59147c144aa0",
									true,
								},
								
								{
									"b038ea4a-90d3-b5cc-97ae-04d4ef152fce",
									true,
								},
								
								{
									"fd51ab3e-4d49-7a82-bef9-311776121587",
									true,
								},
							},
							uuid = "a5b0f4b9-3c0e-5543-abbd-d2833b5dacaf",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"0eed0a62-2394-ce67-81fe-402f881fbda4",
									true,
								},
								
								{
									"8bd2e910-47f0-8d2d-a783-3c90b6078f9b",
									true,
								},
								
								{
									"5e05af81-1637-b2ce-8660-83fa7f7169d3",
									true,
								},
							},
							uuid = "41761dee-f813-a898-8a18-dae6ba04548b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"bc5bc500-6bf9-62e7-8f97-0275be8fee87",
									true,
								},
								
								{
									"0c94f7f4-9d7e-ee1f-bfdf-3be812b09a85",
									true,
								},
								
								{
									"c20ac77f-2593-2cd7-b753-97e192626459",
									true,
								},
							},
							uuid = "b031ef4b-6c9a-c5df-8938-86979c79993e",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"87975544-93c2-a165-8759-8a247c8c1a61",
									true,
								},
								
								{
									"2bbb3395-053b-5e46-85dc-0dd586a152f3",
									true,
								},
								
								{
									"d864a0c1-3389-c304-9d58-b1dda7a9e1af",
									true,
								},
							},
							uuid = "b143ff5c-a087-3106-b7ae-44cfec5f0640",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"929cbbea-2ad0-be24-8546-e3f8f3ed0a9c",
									true,
								},
								
								{
									"91d4bac6-2b32-db3b-95ac-c13d7af2a8ec",
									true,
								},
								
								{
									"2a79e73f-9305-0ba1-bb33-676c83967af9",
									true,
								},
							},
							uuid = "79edd505-fd4b-9ece-bf31-c27a796a9270",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"1b4c8760-18be-306e-bd00-8a497e4e7f1c",
									true,
								},
								
								{
									"ca2d1712-08ac-2dde-9846-87415a966999",
									true,
								},
								
								{
									"a8be1fe9-58de-e1df-90c0-b71d759d84f6",
									true,
								},
							},
							uuid = "a76c7362-0525-7ee4-9e6b-d9b0366994dc",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MONK",
							name = "MONK",
							uuid = "c5e0fcab-e03d-6141-84d5-456d6549cc58",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "3e1746e6-0670-bd39-952c-7e92e7a6217b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "17574bcc-1ff7-273d-bf53-8c1555d65fe3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "DRAGOON",
							name = "DRAGOON",
							uuid = "ddfb63f7-9019-6d50-bb1b-ca460997fc74",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "4823c7de-8c10-0401-8f27-7c10ddffd86f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "e1408975-25c9-3686-9f51-1c7cc3ace64e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "NINJA",
							name = "NINJA",
							uuid = "70b00bf4-5f19-3fb8-a112-6af744f27ccb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "a11054c6-9e2f-a056-be41-7805c0fc03ea",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "eda7e95b-2466-2ba2-9ef2-64649a3e8112",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "SAMURAI",
							name = "SAMURAI",
							uuid = "a4491821-743a-a0d4-9497-59147c144aa0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "b038ea4a-90d3-b5cc-97ae-04d4ef152fce",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "fd51ab3e-4d49-7a82-bef9-311776121587",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "REAPER",
							name = "REAPER",
							uuid = "0eed0a62-2394-ce67-81fe-402f881fbda4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "8bd2e910-47f0-8d2d-a783-3c90b6078f9b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "5e05af81-1637-b2ce-8660-83fa7f7169d3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "VIPER",
							name = "VIPER",
							uuid = "bc5bc500-6bf9-62e7-8f97-0275be8fee87",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "0c94f7f4-9d7e-ee1f-bfdf-3be812b09a85",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "c20ac77f-2593-2cd7-b753-97e192626459",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "BARD",
							name = "BARD",
							uuid = "87975544-93c2-a165-8759-8a247c8c1a61",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "2bbb3395-053b-5e46-85dc-0dd586a152f3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "d864a0c1-3389-c304-9d58-b1dda7a9e1af",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MACHINIST",
							name = "MACHINIST",
							uuid = "929cbbea-2ad0-be24-8546-e3f8f3ed0a9c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "91d4bac6-2b32-db3b-95ac-c13d7af2a8ec",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "2a79e73f-9305-0ba1-bb33-676c83967af9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "DANCER",
							name = "DANCER",
							uuid = "1b4c8760-18be-306e-bd00-8a497e4e7f1c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "ca2d1712-08ac-2dde-9846-87415a966999",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "a8be1fe9-58de-e1df-90c0-b71d759d84f6",
							version = 3,
						},
					},
				},
				displayPath = "DPS Mitigation",
				mechanicTime = 208.2,
				name = "DPS recovery - Diamond Dust",
				timeRange = true,
				timelineIndex = 29,
				timerEndOffset = 4,
				timerStartOffset = 0.2,
				uuid = "1260a3d2-bdb5-2cf2-a125-e88253c5a7d3",
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
				name = "Shinryu Unreal",
				uuid = "189b09d8-9fe5-9650-86d7-622b9864bdd1",
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
				displayPath = "Shinryu Unreal",
				execute = "local roster = AnyoneCore and AnyoneCore.Roster\nif roster and roster.current() ~= nil then\n    local slot = roster.mySlot()\n    if (slot == \"H1\" or slot == \"H2\") and not data.shinryu_healer230_called then\n        TensorCore.addAlertText(2500, \"Heal dragons to full\", 1.35, 3, true)\n        data.shinryu_healer230_called = true\n    end\nend\nself.used = true",
				executeType = 2,
				loop = true,
				mechanicTime = 224.9,
				name = "Healers heal dragons",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 30,
				timerEndOffset = 5.8,
				timerStartOffset = 4.7,
				uuid = "e6550b3e-2b4b-cac3-95de-7dfbf2da20f0",
				version = 2,
			},
		},
	},
	[31] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal",
				uuid = "e568f86a-0f9a-d6b4-81f6-c9d9bc2dc470",
			},
			objectType = "folder",
		},
	},
	[32] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal",
				uuid = "3b91a8a1-f5f8-1636-ba52-6d93b32c70a0",
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
				displayPath = "Shinryu Unreal",
				eventType = 26,
				execute = "\ndata.shinryu_tail_highlights = data.shinryu_tail_highlights or {}\nlocal marks = data.shinryu_tail_highlights\nlocal id = eventArgs.entityID\nif eventArgs.entityContentID == 5789 and id and id > 0 then\n    if eventArgs.isTargetable then\n        if not marks[id] then TensorCore.addAlertText(3500, \"Tail up\", 1.3, 2, false) end\n        local old = marks[id]\n        if old then\n            Argus.deleteTimedShape(old)\n        end\n        local drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1.0, 0.78, 0.08, 0.34), 4)\n        marks[id] = drawer:addTimedRectOnEnt(12000, id, 40, 10, nil, 0, true, false, true)\n    else\n        local uuid = marks[id]\n        if uuid then\n            Argus.deleteTimedShape(uuid)\n            marks[id] = nil\n        end\n    end\nend\nself.used = true\n",
				executeType = 2,
				loop = true,
				mechanicTime = 251.5,
				name = "Highlight active Shinryu tail",
				timeRange = true,
				timelineIndex = 32,
				timerEndOffset = 9,
				timerStartOffset = -1,
				uuid = "a3ff92f0-77c2-d303-9b3e-ff0c428dee76",
				version = 2,
			},
		},
	},
	[35] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal",
				uuid = "c4cc69e5-046c-5bf0-8250-c48fc4db7b56",
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
				displayPath = "Shinryu Unreal",
				execute = "data.shinryu_akhmorn_spread = data.shinryu_akhmorn_spread or {}\nlocal states = data.shinryu_akhmorn_spread\nlocal state = states[\"akh272\"] or {called = false, close = false, line = nil}\nstates[\"akh272\"] = state\n\nif not state.called then\n    TensorCore.addAlertText(1300, \"Spread\", 1.35, 3, true)\n    state.called = true\nend\n\nlocal player = TensorCore.mGetPlayer()\nlocal party = TensorCore.getEntityGroupList(\"Party\")\nlocal nearest, nearestDistance\nif player and player.id and player.pos and party then\n    for _, member in pairs(party) do\n        if member and member.id and member.id ~= player.id and member.pos then\n            local dx = player.pos.x - member.pos.x\n            local dz = player.pos.z - member.pos.z\n            local distance = math.sqrt(dx * dx + dz * dz)\n            if distance <= 6 and (not nearestDistance or distance < nearestDistance) then\n                nearest = member\n                nearestDistance = distance\n            end\n        end\n    end\nend\n\nif nearest then\n    if state.line then Argus.deleteTimedShape(state.line) end\n    local drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1.0, 0.82, 0.08, 0.9), 2)\n    state.line = drawer:addTimedLine(300, player.pos.x, player.pos.y, player.pos.z, nearest.pos.x, nearest.pos.y, nearest.pos.z, 0.45, 1)\n    if not state.close then\n        TensorCore.addAlertText(900, \"Spread out\", 1.2, 3, false)\n    end\n    state.close = true\nelse\n    if state.line then Argus.deleteTimedShape(state.line) end\n    state.line = nil\n    state.close = false\nend\n\nself.used = true",
				executeType = 2,
				loop = true,
				mechanicTime = 272.4,
				name = "Akh Morn spread guidance",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 35,
				timerEndOffset = 3.5,
				timerStartOffset = -1.1,
				uuid = "b3cbcd35-d9e1-0fdf-bc9e-48361a4f0aaf",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DPS Mitigation",
				uuid = "ad419b19-c85d-9501-a1ce-76d44b2b7c96",
			},
			objectType = "folder",
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
									"1bf3d5a1-7d92-66be-b8d9-0335e54e80e5",
									true,
								},
								
								{
									"fb431762-1226-e4f6-ba80-7326a2ea0207",
									true,
								},
								
								{
									"f433d707-ab47-effd-86c0-54bfb57d8ea5",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "df4c24e3-2891-b447-be0c-69cc61e3c14c",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							conditions = 
							{
								
								{
									"cbe1e531-1a86-076d-8e82-d29a51d72f3c",
									true,
								},
								
								{
									"4f6b3e4d-c484-76f5-a785-bc84413f8cb8",
									true,
								},
								
								{
									"46039492-303f-fd9a-8eb2-497e38048a5a",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "f9fd49a9-a46a-caa9-8d54-87e5cdfb46e4",
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
									"a04e9294-3e61-9642-9427-69eacfdabbcb",
									true,
								},
								
								{
									"639748ef-7650-fcf0-aa20-649916096aad",
									true,
								},
								
								{
									"d3a393c0-2c67-444b-8048-c0bddd995f40",
									true,
								},
							},
							gVar = "ACR_RikuNIN3_Hotbar_Feint",
							uuid = "d96528d3-8c88-3f88-bb4f-d8be93d8bdca",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							conditions = 
							{
								
								{
									"7603b560-93f0-6f91-b853-523e85260c03",
									true,
								},
								
								{
									"e0b15ef5-76bb-d7c2-b487-794c5c5a645b",
									true,
								},
								
								{
									"e36639f6-a1a5-6f40-a292-42966c93e4af",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "2214d95c-3ce0-b843-a2bc-8f8df811612b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							conditions = 
							{
								
								{
									"309dbd3f-a3e8-2141-b29a-a38ac42f0015",
									true,
								},
								
								{
									"502fb7cd-a5b2-10ad-a6e2-85abd0ea5943",
									true,
								},
								
								{
									"fe35becb-9627-3783-831d-bfd0c965f9f2",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "b552313e-0e7a-0207-8728-d6bfb1935685",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							conditions = 
							{
								
								{
									"4e7ecec0-e974-324e-b323-01098b3fa336",
									true,
								},
								
								{
									"d5fc0a3b-3668-24e0-86cc-02994a840e2c",
									true,
								},
								
								{
									"452a6d8c-8b15-493f-b472-23fb50377305",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "31645a8e-ebf2-bbb1-ac0e-2dde94ae54f8",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 2887,
							conditions = 
							{
								
								{
									"c1bdb5d0-628e-f3d1-aace-a44ceeb363b4",
									true,
								},
								
								{
									"b11f4345-1ca4-9a04-9169-7b28f312c5bc",
									true,
								},
								
								{
									"ab3bac12-7db9-d376-beeb-4ca6602e2c8b",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "e60b1521-6e05-8407-a862-5ec915483e32",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							conditions = 
							{
								
								{
									"8927c67f-44ae-10bb-a869-1cb5b00a9839",
									true,
								},
								
								{
									"3627806e-c984-8542-ac61-9c2062e86196",
									true,
								},
								
								{
									"541cd147-8cbd-e4f5-bfcd-50f231a81725",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "cbd264a8-34cf-e99f-9366-388007c4ab04",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							conditions = 
							{
								
								{
									"31238edb-d919-9508-8a8a-432a4764b7f9",
									true,
								},
								
								{
									"36d15dfc-960d-161b-9440-39c2d791fd7b",
									true,
								},
								
								{
									"080f6628-14cf-2ade-869f-6948ec1b2496",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "bcbbf597-3fb0-c2d7-87ef-73a7a83f77dd",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							conditions = 
							{
								
								{
									"ac159046-cf0e-3b5f-8dc7-d3ef5a615e75",
									true,
								},
								
								{
									"9fbc8bff-661e-2e91-b11e-8cab2c373622",
									true,
								},
								
								{
									"50d34fdf-f99b-f8e1-a583-65d9de1f0a4d",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "01571193-1227-0e86-b886-1a58754bc41f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							conditions = 
							{
								
								{
									"f569f316-eccf-9645-8fcf-f258644a702c",
									true,
								},
								
								{
									"0d0f600f-864e-a53b-9c2e-5f8a5363a0f0",
									true,
								},
								
								{
									"acff6bad-d8c8-11da-bef0-bb120d555478",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "311f9e4d-aab7-aa58-8257-6d04c07f8cd0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MONK",
							name = "MONK",
							uuid = "1bf3d5a1-7d92-66be-b8d9-0335e54e80e5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7549",
							uuid = "fb431762-1226-e4f6-ba80-7326a2ea0207",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "f433d707-ab47-effd-86c0-54bfb57d8ea5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "DRAGOON",
							name = "DRAGOON",
							uuid = "cbe1e531-1a86-076d-8e82-d29a51d72f3c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7549",
							uuid = "4f6b3e4d-c484-76f5-a785-bc84413f8cb8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "46039492-303f-fd9a-8eb2-497e38048a5a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "NINJA",
							name = "NINJA",
							uuid = "a04e9294-3e61-9642-9427-69eacfdabbcb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7549",
							uuid = "639748ef-7650-fcf0-aa20-649916096aad",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "d3a393c0-2c67-444b-8048-c0bddd995f40",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "SAMURAI",
							name = "SAMURAI",
							uuid = "7603b560-93f0-6f91-b853-523e85260c03",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7549",
							uuid = "e0b15ef5-76bb-d7c2-b487-794c5c5a645b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "e36639f6-a1a5-6f40-a292-42966c93e4af",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "REAPER",
							name = "REAPER",
							uuid = "309dbd3f-a3e8-2141-b29a-a38ac42f0015",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7549",
							uuid = "502fb7cd-a5b2-10ad-a6e2-85abd0ea5943",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "fe35becb-9627-3783-831d-bfd0c965f9f2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "VIPER",
							name = "VIPER",
							uuid = "4e7ecec0-e974-324e-b323-01098b3fa336",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7549",
							uuid = "d5fc0a3b-3668-24e0-86cc-02994a840e2c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "452a6d8c-8b15-493f-b472-23fb50377305",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MACHINIST",
							name = "MACHINIST",
							uuid = "c1bdb5d0-628e-f3d1-aace-a44ceeb363b4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 2887,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 2887",
							uuid = "b11f4345-1ca4-9a04-9169-7b28f312c5bc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "ab3bac12-7db9-d376-beeb-4ca6602e2c8b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "BLACKMAGE",
							name = "BLACKMAGE",
							uuid = "8927c67f-44ae-10bb-a869-1cb5b00a9839",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7560",
							uuid = "3627806e-c984-8542-ac61-9c2062e86196",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "541cd147-8cbd-e4f5-bfcd-50f231a81725",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "SUMMONER",
							name = "SUMMONER",
							uuid = "31238edb-d919-9508-8a8a-432a4764b7f9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7560",
							uuid = "36d15dfc-960d-161b-9440-39c2d791fd7b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "080f6628-14cf-2ade-869f-6948ec1b2496",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "REDMAGE",
							name = "REDMAGE",
							uuid = "ac159046-cf0e-3b5f-8dc7-d3ef5a615e75",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7560",
							uuid = "9fbc8bff-661e-2e91-b11e-8cab2c373622",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "50d34fdf-f99b-f8e1-a583-65d9de1f0a4d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "PICTOMANCER",
							name = "PICTOMANCER",
							uuid = "f569f316-eccf-9645-8fcf-f258644a702c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7560",
							uuid = "0d0f600f-864e-a53b-9c2e-5f8a5363a0f0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "acff6bad-d8c8-11da-bef0-bb120d555478",
							version = 3,
						},
					},
				},
				displayPath = "DPS Mitigation",
				mechanicTime = 272.4,
				name = "DPS debuffs - Akh Morn 3",
				timeRange = true,
				timelineIndex = 35,
				timerEndOffset = -0.5,
				timerStartOffset = -5,
				uuid = "fd927bc2-f217-bbde-adb0-727c093b7440",
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
				name = "Shinryu Unreal",
				uuid = "712cc6b5-23c2-ca23-b22d-736625a01b00",
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
				displayPath = "Shinryu Unreal",
				eventType = 3,
				execute = "if eventArgs.spellID == 50252 and eventArgs.entityContentID == 6278 then\n    local duration = ((eventArgs.channelTimeMax or 0) + 0.35) * 1000\n    local drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1.0, 0.18, 0.08, 0.38), 3)\n    local early=data.shinryu_early_icicles\n    if early and early[eventArgs.entityID] then\n        Argus.deleteTimedShape(early[eventArgs.entityID])\n        early[eventArgs.entityID]=nil\n    end\n    drawer:addTimedRectOnEnt(duration, eventArgs.entityID, 60, 10, nil, 0, true, false, true)\n    if not data.shinryu_icicle_warned_273 then\n        TensorCore.addAlertText(duration, \"Dodge Icicle\", 1.35, 2, true)\n        data.shinryu_icicle_warned_273 = true\n    end\nend\nself.used = true",
				executeType = 2,
				loop = true,
				mechanicTime = 273.6,
				name = "Spikesicle lane",
				timeRange = true,
				timelineIndex = 36,
				timerEndOffset = 0.5,
				timerStartOffset = -6.2,
				uuid = "944d05ca-0c98-680a-bfe7-58d688145f6c",
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
				displayPath = "Shinryu Unreal",
				eventType = 2,
				execute = "self.used=true\nif eventArgs.spellID~=50251 or eventArgs.entityContentID~=6278 then return end\nlocal shapes=data.shinryu_early_icicles or {}\ndata.shinryu_early_icicles=shapes\nif shapes[eventArgs.entityID] then Argus.deleteTimedShape(shapes[eventArgs.entityID]) end\nlocal drawer=TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1.0,0.18,0.08,0.38),3)\nshapes[eventArgs.entityID]=drawer:addTimedRectOnEnt(8000,eventArgs.entityID,60,10,nil,0,true,false,true)\n",
				executeType = 2,
				loop = true,
				mechanicTime = 273.6,
				name = "[Earlier] Spikesicle lane from Icicle Impact",
				timeRange = true,
				timelineIndex = 36,
				timerEndOffset = 0.5,
				timerStartOffset = -8,
				uuid = "5a933dcc-caa0-99bc-a0a5-7da2a57e1602",
				version = 2,
			},
		},
	},
	[41] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal",
				uuid = "a61aabe5-ede4-4446-9bc7-9028cebc2e81",
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
				displayPath = "Shinryu Unreal",
				eventType = 3,
				execute = "\nif eventArgs.entityContentID == 5640 then\n    local spell = eventArgs.spellID\n    if spell == 50235 then\n        local duration = math.max(1, eventArgs.channelTimeMax or 0) * 1000\n        TensorCore.addAlertText(duration, \"AERIAL BLAST: prepare for knockback\", 1.35, 2, false)\n    end\nend\nself.used = true\n",
				executeType = 2,
				mechanicTime = 291.7,
				name = "Aerial Blast knockback",
				timeRange = true,
				timelineIndex = 41,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "a4a475f3-a0fa-57fc-86e8-79222659bb00",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DPS Mitigation",
				uuid = "c6873e91-bb46-3505-be4b-25534d497992",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7394,
							conditions = 
							{
								
								{
									"66764686-0364-fe28-a5f0-045c008b9808",
									true,
								},
								
								{
									"ac246c32-f52c-fe7b-ba00-416bb974180b",
									true,
								},
							},
							uuid = "33f77b62-1302-109d-bc20-d8bd65966430",
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
									"2a4be08d-c44e-fcfa-82a2-966d338659e8",
									true,
								},
								
								{
									"c6e8c050-99ea-79d7-b2cc-0318ce852882",
									true,
								},
							},
							gVar = "ACR_RikuNIN3_Hotbar_ShadeShift",
							uuid = "b0f0be02-1d13-c40e-b46b-e4ef0016c4cc",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 36962,
							conditions = 
							{
								
								{
									"555fcb0a-d507-a506-b305-5db3a0c19f7d",
									true,
								},
								
								{
									"ee99badc-3eec-7444-ae00-27fd04b4603d",
									true,
								},
							},
							uuid = "f6ff1768-e1af-a5bb-ab4e-40111b477888",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 24404,
							conditions = 
							{
								
								{
									"6b98f5c6-4f53-b921-a314-a444f7e3ccf4",
									true,
								},
								
								{
									"5ad972dd-5eb4-f5b5-8440-f74ae66dd748",
									true,
								},
							},
							uuid = "e1a58966-c44a-0cbd-ae3c-41b55fc4de98",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7405,
							conditions = 
							{
								
								{
									"8ef767a6-5a42-b4af-a63c-87ffe48a15c1",
									true,
								},
								
								{
									"7e74cedc-8fb4-be63-810a-cf212f39a3bc",
									true,
								},
							},
							uuid = "80bb8bd5-c86b-be28-a70f-a62235a65781",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							conditions = 
							{
								
								{
									"1613ba20-2797-fd99-8fce-e17af0bb4c98",
									true,
								},
								
								{
									"c1c1c100-bf2b-a00a-96c3-9088e0cbff99",
									true,
								},
							},
							uuid = "58fe5595-5c62-8a71-9305-cbb8305a631b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							conditions = 
							{
								
								{
									"e13ea078-7c48-e98d-bb45-223e7a9587ea",
									true,
								},
								
								{
									"df313569-563f-4355-808f-654f3c2b3e3f",
									true,
								},
							},
							uuid = "ef3ce5d7-59dc-0b24-99d3-3a047ebebaf3",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 157,
							conditions = 
							{
								
								{
									"86afc72b-58b8-ec26-9525-deedf27dbe93",
									true,
								},
								
								{
									"53f15092-90d4-13d1-886f-51bfec7ebbc4",
									true,
								},
							},
							uuid = "2bc08d2b-ff23-904b-afd1-28e64c58945f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25799,
							conditions = 
							{
								
								{
									"fd85b843-81a5-0029-ba39-8be0fbaf10bf",
									true,
								},
								
								{
									"c6832e1d-96aa-9b4b-81ac-c73366960ec0",
									true,
								},
							},
							uuid = "54893a1b-f3bd-5105-81b4-cf11c7e7d5ec",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25857,
							conditions = 
							{
								
								{
									"238bd4dc-f06e-93ce-9a19-6667a3eabb34",
									true,
								},
								
								{
									"b1b5214a-8621-e6df-be9b-9736429d8ba1",
									true,
								},
							},
							uuid = "2afb33cb-5843-c5d6-932f-8a01a84cb9dc",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 34685,
							conditions = 
							{
								
								{
									"eb6e41bc-2b52-a144-953d-43528d117f6c",
									true,
								},
								
								{
									"789dcfb5-e74b-ee6d-8d7b-bb15cb5da2df",
									true,
								},
							},
							uuid = "725306f1-3532-949e-b957-6483478b7fc6",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MONK",
							name = "MONK",
							uuid = "66764686-0364-fe28-a5f0-045c008b9808",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7394,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7394",
							uuid = "ac246c32-f52c-fe7b-ba00-416bb974180b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "NINJA",
							name = "NINJA",
							uuid = "2a4be08d-c44e-fcfa-82a2-966d338659e8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 2241,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 2241",
							uuid = "c6e8c050-99ea-79d7-b2cc-0318ce852882",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "SAMURAI",
							name = "SAMURAI",
							uuid = "555fcb0a-d507-a506-b305-5db3a0c19f7d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 36962,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 36962",
							uuid = "ee99badc-3eec-7444-ae00-27fd04b4603d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "REAPER",
							name = "REAPER",
							uuid = "6b98f5c6-4f53-b921-a314-a444f7e3ccf4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 24404,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 24404",
							uuid = "5ad972dd-5eb4-f5b5-8440-f74ae66dd748",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "BARD",
							name = "BARD",
							uuid = "8ef767a6-5a42-b4af-a63c-87ffe48a15c1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7405,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7405",
							uuid = "7e74cedc-8fb4-be63-810a-cf212f39a3bc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MACHINIST",
							name = "MACHINIST",
							uuid = "1613ba20-2797-fd99-8fce-e17af0bb4c98",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 16889",
							uuid = "c1c1c100-bf2b-a00a-96c3-9088e0cbff99",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "DANCER",
							name = "DANCER",
							uuid = "e13ea078-7c48-e98d-bb45-223e7a9587ea",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 16012",
							uuid = "df313569-563f-4355-808f-654f3c2b3e3f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "BLACKMAGE",
							name = "BLACKMAGE",
							uuid = "86afc72b-58b8-ec26-9525-deedf27dbe93",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 157,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 157",
							uuid = "53f15092-90d4-13d1-886f-51bfec7ebbc4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "SUMMONER",
							name = "SUMMONER",
							uuid = "fd85b843-81a5-0029-ba39-8be0fbaf10bf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25799,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 25799",
							uuid = "c6832e1d-96aa-9b4b-81ac-c73366960ec0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "REDMAGE",
							name = "REDMAGE",
							uuid = "238bd4dc-f06e-93ce-9a19-6667a3eabb34",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25857,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 25857",
							uuid = "b1b5214a-8621-e6df-be9b-9736429d8ba1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "PICTOMANCER",
							name = "PICTOMANCER",
							uuid = "eb6e41bc-2b52-a144-953d-43528d117f6c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 34685,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 34685",
							uuid = "789dcfb5-e74b-ee6d-8d7b-bb15cb5da2df",
							version = 3,
						},
					},
				},
				displayPath = "DPS Mitigation",
				mechanicTime = 291.7,
				name = "DPS shields - Aerial Blast",
				timeRange = true,
				timelineIndex = 41,
				timerEndOffset = -0.3,
				timerStartOffset = -3,
				uuid = "546eada9-5c63-af55-8475-8bf65971700b",
				version = 2,
			},
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
									"f5497feb-c008-c566-bd61-a539cef0649b",
									true,
								},
								
								{
									"a681ff35-582d-07a7-a5b3-59d4de9f6063",
									true,
								},
								
								{
									"8b187fec-5806-7258-92a3-4204df84a9bb",
									true,
								},
							},
							uuid = "43dbabf4-066c-aeb7-b9d2-278d14a07dc8",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"cdbdcb99-1901-839a-80f0-479fec89b1f9",
									true,
								},
								
								{
									"e03d37ac-ea17-af00-9ffd-974073919bdc",
									true,
								},
								
								{
									"1310c368-9f2d-5507-9f18-3112a8466b1b",
									true,
								},
							},
							uuid = "19ce5503-0e21-64dc-952e-8d8f74cc783f",
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
									"d281df42-1e62-e6cb-9873-815172668624",
									true,
								},
								
								{
									"9f69900d-1ac1-4ecb-9514-99f873a1a2c7",
									true,
								},
								
								{
									"47def011-e39d-8be4-bda5-7a34fde61f73",
									true,
								},
							},
							gVar = "ACR_RikuNIN3_Hotbar_SecondWind",
							uuid = "d1e7a25e-866b-804f-a746-593ef4a2ac73",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"bcc6e583-6069-f4d4-9c82-3bab7e2ba838",
									true,
								},
								
								{
									"81f00382-39ac-cd9b-a1b8-69519d32bc6d",
									true,
								},
								
								{
									"aeca3b79-0e3d-8f76-a9a3-b3f923853144",
									true,
								},
							},
							uuid = "65dde7c3-a484-6954-b6dc-df9c2a59ef7f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"305c9d68-9be1-fb69-a7fe-8c807496f71d",
									true,
								},
								
								{
									"621ee545-cb67-9256-a149-a5ef254e81fc",
									true,
								},
								
								{
									"0e2e2577-27b3-84bb-89ef-e85977789950",
									true,
								},
							},
							uuid = "97f118ac-d247-2d9b-a06f-fb4497a09801",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"30d915fd-c54c-06f6-9f36-c67e4a302890",
									true,
								},
								
								{
									"b2727b7b-f6b9-d982-802b-8a7c9f8eb8af",
									true,
								},
								
								{
									"262d4528-c3cf-9742-bdfb-c03a11a9fd02",
									true,
								},
							},
							uuid = "252be069-3509-a7f2-8d85-aba3a9e5be4c",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"aa0679a5-9a6a-bde7-9cd9-2e4dbd6b31fc",
									true,
								},
								
								{
									"ba852d36-7c03-fea9-ae4d-ccb53e38dc22",
									true,
								},
								
								{
									"93a019a0-9c3a-9100-be35-4e4007a4497d",
									true,
								},
							},
							uuid = "4448bc64-551a-975b-a1fe-2bd21d9e45b3",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"81f24549-8d47-d24c-941d-770638a7ad9a",
									true,
								},
								
								{
									"5c873600-b9b1-ce56-bd67-feee63b4917f",
									true,
								},
								
								{
									"5802871f-a234-5a94-8d3e-a712bf7892c5",
									true,
								},
							},
							uuid = "1e1164e7-eda6-6750-ad83-2afb672b7609",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"9eb744ba-8055-1a06-be39-0fd23a6e45e0",
									true,
								},
								
								{
									"0d7fcf83-cce3-3425-9e79-2d268ab5c6fe",
									true,
								},
								
								{
									"a77c31b3-fabc-00d4-8ba1-fd314d7fbd8a",
									true,
								},
							},
							uuid = "1c601042-5eea-ef20-a4bb-93b77cdf6040",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MONK",
							name = "MONK",
							uuid = "f5497feb-c008-c566-bd61-a539cef0649b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "a681ff35-582d-07a7-a5b3-59d4de9f6063",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "8b187fec-5806-7258-92a3-4204df84a9bb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "DRAGOON",
							name = "DRAGOON",
							uuid = "cdbdcb99-1901-839a-80f0-479fec89b1f9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "e03d37ac-ea17-af00-9ffd-974073919bdc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "1310c368-9f2d-5507-9f18-3112a8466b1b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "NINJA",
							name = "NINJA",
							uuid = "d281df42-1e62-e6cb-9873-815172668624",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "9f69900d-1ac1-4ecb-9514-99f873a1a2c7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "47def011-e39d-8be4-bda5-7a34fde61f73",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "SAMURAI",
							name = "SAMURAI",
							uuid = "bcc6e583-6069-f4d4-9c82-3bab7e2ba838",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "81f00382-39ac-cd9b-a1b8-69519d32bc6d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "aeca3b79-0e3d-8f76-a9a3-b3f923853144",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "REAPER",
							name = "REAPER",
							uuid = "305c9d68-9be1-fb69-a7fe-8c807496f71d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "621ee545-cb67-9256-a149-a5ef254e81fc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "0e2e2577-27b3-84bb-89ef-e85977789950",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "VIPER",
							name = "VIPER",
							uuid = "30d915fd-c54c-06f6-9f36-c67e4a302890",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "b2727b7b-f6b9-d982-802b-8a7c9f8eb8af",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "262d4528-c3cf-9742-bdfb-c03a11a9fd02",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "BARD",
							name = "BARD",
							uuid = "aa0679a5-9a6a-bde7-9cd9-2e4dbd6b31fc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "ba852d36-7c03-fea9-ae4d-ccb53e38dc22",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "93a019a0-9c3a-9100-be35-4e4007a4497d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MACHINIST",
							name = "MACHINIST",
							uuid = "81f24549-8d47-d24c-941d-770638a7ad9a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "5c873600-b9b1-ce56-bd67-feee63b4917f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "5802871f-a234-5a94-8d3e-a712bf7892c5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "DANCER",
							name = "DANCER",
							uuid = "9eb744ba-8055-1a06-be39-0fd23a6e45e0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "0d7fcf83-cce3-3425-9e79-2d268ab5c6fe",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "a77c31b3-fabc-00d4-8ba1-fd314d7fbd8a",
							version = 3,
						},
					},
				},
				displayPath = "DPS Mitigation",
				mechanicTime = 291.7,
				name = "DPS recovery - Aerial Blast",
				timeRange = true,
				timelineIndex = 41,
				timerEndOffset = 4,
				timerStartOffset = 0.2,
				uuid = "f7fb2d1f-2ecf-ca68-80d3-4947b65b5e05",
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
				name = "Shinryu Unreal",
				uuid = "7a1c6a8f-79aa-b100-b7e9-5049156b896f",
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
				displayPath = "Shinryu Unreal",
				eventType = 4,
				execute = "if eventArgs.markerID == 40 and eventArgs.entityID and eventArgs.entityID > 0 then\n    local target = TensorCore.mGetEntity(eventArgs.entityID)\n    local boss = TensorCore.getEntityByGroup(\"ContentID\", {contentid = 5640})\n    if target and target.pos and boss and boss.pos then\n        local drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1.0, 0.12, 0.06, 0.30), 3)\n        drawer:addTimedConeOnEnt(5750, boss.id, 60, 1.04719755, target.id or eventArgs.entityID, 0, false, true, 0, false)\n    end\nend\nself.used = true",
				executeType = 2,
				loop = true,
				mechanicTime = 318.9,
				name = "Earth Breath target cones",
				timeRange = true,
				timelineIndex = 43,
				timerEndOffset = 1,
				timerStartOffset = -6,
				uuid = "86323cfb-7013-42fa-8110-fb74f09e0479",
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
				name = "Shinryu Unreal",
				uuid = "ae7dfa63-0953-d937-98de-4612f2239c58",
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
				displayPath = "Shinryu Unreal",
				eventType = 3,
				execute = "\nif eventArgs.entityContentID == 5641 then\n    local spell = eventArgs.spellID\n    if spell == 50308 then\n        local duration = math.max(1, eventArgs.channelTimeMax or 0) * 1000\n        TensorCore.addAlertText(duration, \"keep moving for ice\", 1.35, 2, false)\n    end\nend\nself.used = true\n",
				executeType = 2,
				mechanicTime = 321.9,
				name = "Ice Storm freeze timing",
				timeRange = true,
				timelineIndex = 44,
				timerEndOffset = 0.5,
				timerStartOffset = -7,
				uuid = "f512a366-ca13-c4f8-9d87-0a74dc967fd3",
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
				name = "Shinryu Unreal",
				uuid = "b643d776-0b12-95cb-b591-0072800f14eb",
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
				displayPath = "Shinryu Unreal",
				eventType = 3,
				execute = "if eventArgs.entityContentID == 5642 then\n    local callout\n    if eventArgs.spellID == 50244 then\n        callout = \"Stack in water\"\n    elseif eventArgs.spellID == 50246 then\n        callout = \"Spread out, avoid water\"\n    end\n    if callout then\n        TensorCore.addAlertText(math.max(1, eventArgs.channelTimeMax or 0) * 1000, callout, 1.35, 2, false)\n    end\nend\nself.used = true",
				executeType = 2,
				mechanicTime = 350.9,
				name = "Wing mechanic callout",
				timeRange = true,
				timelineIndex = 49,
				timerEndOffset = 0.5,
				timerStartOffset = -9,
				uuid = "518e571d-9642-7fbe-913a-ac8b5ff43e0d",
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
				name = "Shinryu Unreal",
				uuid = "c277d0b5-1bf8-eb54-8636-f287bf044d76",
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
				displayPath = "Shinryu Unreal",
				execute = "data.shinryu_akhmorn_spread = data.shinryu_akhmorn_spread or {}\nlocal states = data.shinryu_akhmorn_spread\nlocal state = states[\"akh363\"] or {called = false, close = false, line = nil}\nstates[\"akh363\"] = state\n\nif not state.called then\n    TensorCore.addAlertText(1300, \"Spread\", 1.35, 3, true)\n    state.called = true\nend\n\nlocal player = TensorCore.mGetPlayer()\nlocal party = TensorCore.getEntityGroupList(\"Party\")\nlocal nearest, nearestDistance\nif player and player.id and player.pos and party then\n    for _, member in pairs(party) do\n        if member and member.id and member.id ~= player.id and member.pos then\n            local dx = player.pos.x - member.pos.x\n            local dz = player.pos.z - member.pos.z\n            local distance = math.sqrt(dx * dx + dz * dz)\n            if distance <= 6 and (not nearestDistance or distance < nearestDistance) then\n                nearest = member\n                nearestDistance = distance\n            end\n        end\n    end\nend\n\nif nearest then\n    if state.line then Argus.deleteTimedShape(state.line) end\n    local drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1.0, 0.82, 0.08, 0.9), 2)\n    state.line = drawer:addTimedLine(300, player.pos.x, player.pos.y, player.pos.z, nearest.pos.x, nearest.pos.y, nearest.pos.z, 0.45, 1)\n    if not state.close then\n        TensorCore.addAlertText(900, \"Spread out\", 1.2, 3, false)\n    end\n    state.close = true\nelse\n    if state.line then Argus.deleteTimedShape(state.line) end\n    state.line = nil\n    state.close = false\nend\n\nself.used = true",
				executeType = 2,
				loop = true,
				mechanicTime = 363,
				name = "Akh Morn spread guidance",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 50,
				timerEndOffset = 3.5,
				timerStartOffset = -1.1,
				uuid = "a9420a21-2490-552b-a83b-b6aca1778fba",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DPS Mitigation",
				uuid = "ca4f66b6-5927-9375-86f2-c0efe786dbef",
			},
			objectType = "folder",
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
									"bb9c9dcd-b27e-d345-893d-c2ab99983960",
									true,
								},
								
								{
									"36ae0464-6d1d-1f2c-be51-eca4a5684a8b",
									true,
								},
								
								{
									"27e94b9a-fe03-223b-be9f-e789ecdff505",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "b89570b6-1944-4e2e-ac16-8c33916e23b1",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							conditions = 
							{
								
								{
									"0d031854-58c7-f71a-a38f-ef7e3055617b",
									true,
								},
								
								{
									"12d09fa4-f9ac-fc54-8444-de51c06e2502",
									true,
								},
								
								{
									"159abaef-9965-4f1a-8f9e-07fdfa61e1d0",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "2a514078-ee49-0241-a1fd-bcac6d1e11f1",
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
									"642ec71a-9dd8-ab3c-9bb6-a2d02cc734e0",
									true,
								},
								
								{
									"35c4ad94-2215-7f5e-ba0e-ef26a65f60f9",
									true,
								},
								
								{
									"e2f1e790-8834-8b79-a4b0-fc02df9fc526",
									true,
								},
							},
							gVar = "ACR_RikuNIN3_Hotbar_Feint",
							uuid = "4bd0bbd8-4985-05f1-a012-f905abded2ac",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							conditions = 
							{
								
								{
									"feb91cff-f119-6592-a10d-0adc61253b28",
									true,
								},
								
								{
									"d820699b-bf29-d854-808b-30d101f52ade",
									true,
								},
								
								{
									"86ea1086-4b19-37cf-b42b-3368724342f2",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "e46c6d07-5754-2139-a6b0-81a4c1df1a38",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							conditions = 
							{
								
								{
									"afb10a26-3d8d-6acf-9065-ef47ed877aab",
									true,
								},
								
								{
									"f98b3885-039e-82ce-ac98-089834b01907",
									true,
								},
								
								{
									"58c33296-e027-f459-9546-e873af25cf9d",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "e46a80be-27eb-c64f-b566-29159b98df96",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							conditions = 
							{
								
								{
									"41a3720d-4842-3860-8928-35f6fd5cbdec",
									true,
								},
								
								{
									"761153d3-57fb-62c1-8b47-155e63a4ca6c",
									true,
								},
								
								{
									"b4428b12-ff5d-be69-a860-923fbf6225d5",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "8ed23fa5-862f-f617-8335-28d77e1e3a59",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 2887,
							conditions = 
							{
								
								{
									"14c0f3d6-6482-b3a2-b306-7d5686e4c22f",
									true,
								},
								
								{
									"b9674ef7-0f3b-a293-81dc-98fb521d52f9",
									true,
								},
								
								{
									"a5477aa6-2611-56f5-bb22-5cba6b1244c1",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "3a8f53f6-3ae5-be62-83b8-ce60f222ae46",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							conditions = 
							{
								
								{
									"85ed5380-995f-d1b7-979f-d5a426c102cf",
									true,
								},
								
								{
									"40c26946-e1b8-9237-9ba5-f1c5b99dc28a",
									true,
								},
								
								{
									"7acc266e-ccd7-2bac-9a11-d11e8cb55629",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "e4ea1d7e-20ef-435e-b0e9-2a7618ef39d9",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							conditions = 
							{
								
								{
									"f7097e9f-4008-adc2-8d93-9951c14c20a0",
									true,
								},
								
								{
									"f8e913c8-9e48-b9ac-b05a-7ee5af2268e9",
									true,
								},
								
								{
									"d973e605-19a7-b8d0-a976-5fe34c96473f",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "c77b23b0-d3d1-1f56-873d-be84c9e57b1f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							conditions = 
							{
								
								{
									"78018bbf-3682-2490-8196-46bfb0110f6b",
									true,
								},
								
								{
									"a794d68b-3a92-93f1-9f2b-39331fb47935",
									true,
								},
								
								{
									"3384f4b0-96d1-3869-add8-25148e2a2d6b",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "e57f5274-0af4-40a1-84bb-95921dcb3d74",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							conditions = 
							{
								
								{
									"f91d1d1c-606c-478b-bf30-cfadec22ddee",
									true,
								},
								
								{
									"7f1d5a19-d0dd-6ef1-8aec-b925d971926a",
									true,
								},
								
								{
									"db04d113-e4b9-0a30-80e9-3408f2a0a705",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "873930d6-a2a9-f8a5-95ba-0c053e888e69",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MONK",
							name = "MONK",
							uuid = "bb9c9dcd-b27e-d345-893d-c2ab99983960",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7549",
							uuid = "36ae0464-6d1d-1f2c-be51-eca4a5684a8b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "27e94b9a-fe03-223b-be9f-e789ecdff505",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "DRAGOON",
							name = "DRAGOON",
							uuid = "0d031854-58c7-f71a-a38f-ef7e3055617b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7549",
							uuid = "12d09fa4-f9ac-fc54-8444-de51c06e2502",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "159abaef-9965-4f1a-8f9e-07fdfa61e1d0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "NINJA",
							name = "NINJA",
							uuid = "642ec71a-9dd8-ab3c-9bb6-a2d02cc734e0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7549",
							uuid = "35c4ad94-2215-7f5e-ba0e-ef26a65f60f9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "e2f1e790-8834-8b79-a4b0-fc02df9fc526",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "SAMURAI",
							name = "SAMURAI",
							uuid = "feb91cff-f119-6592-a10d-0adc61253b28",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7549",
							uuid = "d820699b-bf29-d854-808b-30d101f52ade",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "86ea1086-4b19-37cf-b42b-3368724342f2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "REAPER",
							name = "REAPER",
							uuid = "afb10a26-3d8d-6acf-9065-ef47ed877aab",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7549",
							uuid = "f98b3885-039e-82ce-ac98-089834b01907",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "58c33296-e027-f459-9546-e873af25cf9d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "VIPER",
							name = "VIPER",
							uuid = "41a3720d-4842-3860-8928-35f6fd5cbdec",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7549",
							uuid = "761153d3-57fb-62c1-8b47-155e63a4ca6c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "b4428b12-ff5d-be69-a860-923fbf6225d5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MACHINIST",
							name = "MACHINIST",
							uuid = "14c0f3d6-6482-b3a2-b306-7d5686e4c22f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 2887,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 2887",
							uuid = "b9674ef7-0f3b-a293-81dc-98fb521d52f9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "a5477aa6-2611-56f5-bb22-5cba6b1244c1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "BLACKMAGE",
							name = "BLACKMAGE",
							uuid = "85ed5380-995f-d1b7-979f-d5a426c102cf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7560",
							uuid = "40c26946-e1b8-9237-9ba5-f1c5b99dc28a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "7acc266e-ccd7-2bac-9a11-d11e8cb55629",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "SUMMONER",
							name = "SUMMONER",
							uuid = "f7097e9f-4008-adc2-8d93-9951c14c20a0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7560",
							uuid = "f8e913c8-9e48-b9ac-b05a-7ee5af2268e9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "d973e605-19a7-b8d0-a976-5fe34c96473f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "REDMAGE",
							name = "REDMAGE",
							uuid = "78018bbf-3682-2490-8196-46bfb0110f6b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7560",
							uuid = "a794d68b-3a92-93f1-9f2b-39331fb47935",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "3384f4b0-96d1-3869-add8-25148e2a2d6b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "PICTOMANCER",
							name = "PICTOMANCER",
							uuid = "f91d1d1c-606c-478b-bf30-cfadec22ddee",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7560",
							uuid = "7f1d5a19-d0dd-6ef1-8aec-b925d971926a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "db04d113-e4b9-0a30-80e9-3408f2a0a705",
							version = 3,
						},
					},
				},
				displayPath = "DPS Mitigation",
				mechanicTime = 363,
				name = "DPS debuffs - Akh Morn 4",
				timeRange = true,
				timelineIndex = 50,
				timerEndOffset = -0.5,
				timerStartOffset = -5,
				uuid = "4748a513-e2f2-7721-90ad-93e4d7ced182",
				version = 2,
			},
		},
	},
	[52] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal",
				uuid = "9184281d-6d1a-d128-814e-fa9d57bb6229",
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
				displayPath = "Shinryu Unreal",
				eventType = 3,
				execute = "if eventArgs.entityContentID == 5642 then\n    local callout\n    if eventArgs.spellID == 50244 then\n        callout = \"Stack in water\"\n    elseif eventArgs.spellID == 50246 then\n        callout = \"Spread out, avoid water\"\n    end\n    if callout then\n        TensorCore.addAlertText(math.max(1, eventArgs.channelTimeMax or 0) * 1000, callout, 1.35, 2, false)\n    end\nend\nself.used = true",
				executeType = 2,
				mechanicTime = 378.3,
				name = "Wing mechanic callout",
				timeRange = true,
				timelineIndex = 52,
				timerEndOffset = 0.5,
				timerStartOffset = -9,
				uuid = "e72fb824-7a22-0080-a307-3768f5142d8b",
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
				name = "Shinryu Unreal",
				uuid = "06cc8af2-10f8-29cc-a07b-01c233627068",
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
				displayPath = "Shinryu Unreal",
				eventType = 3,
				execute = "if eventArgs.spellID == 50230 and eventArgs.entityContentID == 5640 then\n    local boss = TensorCore.mGetEntity(eventArgs.entityID)\n    if boss and boss.pos then\n        local p = boss.pos\n        local center = { x = 0, y = p.y, z = 0 }\n        local heading = TensorCore.getHeadingToTarget(p, center)\n        local duration = ((eventArgs.channelTimeMax or 0) + 1.0) * 1000\n        local drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.1, 0.85, 1.0, 0.75), 3)\n        drawer:addTimedCircleOnEnt(duration, eventArgs.entityID, 5, 0, false, true)\n        drawer:addTimedLine(duration, p.x, p.y, p.z, center.x, center.y, center.z, 3, 2)\n        drawer:addTimedArrow(duration, center.x, center.y, center.z, heading, 8, 3, 4, 6)\n    end\nend\nself.used = true",
				executeType = 2,
				mechanicTime = 384.3,
				name = "Tidal Wave direction",
				timeRange = true,
				timelineIndex = 53,
				timerEndOffset = 0.5,
				timerStartOffset = -10.5,
				uuid = "2ea80003-0e67-1cf3-9a8a-d8ba43307ec1",
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
				name = "Shinryu Unreal",
				uuid = "d921a4fe-b6e9-e5a1-b589-0c65d26761db",
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
				displayPath = "Shinryu Unreal",
				eventType = 3,
				execute = "if eventArgs.entityContentID == 5640 and eventArgs.spellID == 50288 then\n    local duration = math.max(1, eventArgs.channelTimeMax or 0) * 1000 + 1000\n    local boss = TensorCore.mGetEntity(eventArgs.entityID)\n    local x, y, z, active = Argus.getWaymarkInfo(2)\n    if boss and boss.pos and active then\n        local p = boss.pos\n        local dx = x - p.x\n        local dz = z - p.z\n        local distance = math.sqrt(dx * dx + dz * dz)\n        if distance > 0.1 then\n            local edgeOffset = 7.5\n            local edgeX = x + dx / distance * edgeOffset\n            local edgeZ = z + dz / distance * edgeOffset\n            local edge = {x = edgeX, y = y, z = edgeZ}\n            local heading = TensorCore.getHeadingToTarget(p, edge)\n            local arrowLength = distance + edgeOffset\n            local tipLength = math.min(4.0, arrowLength * 0.25)\n            local baseLength = math.max(0.1, arrowLength - tipLength)\n            local drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.1, 1.0, 0.2, 0.9), 3)\n            drawer:addTimedCircle(duration, edgeX, y, edgeZ, 1.0, 0, false, true)\n            drawer:addTimedArrow(duration, p.x, p.y, p.z, heading, baseLength, 2.5, tipLength, 5.0)\n            TensorCore.addAlertText(duration, \"TO NEXT ARENA: follow the edge marker\", 1.35, 2, false)\n        end\n    else\n        TensorCore.addAlertText(duration, \"prepare for knockback\", 1.35, 2, false)\n    end\nend\nself.used = true",
				executeType = 2,
				mechanicTime = 540.7,
				name = "Touchdown next arena",
				timeRange = true,
				timelineIndex = 59,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "48a4ad4b-db06-16b3-92fe-1eaacbb16539",
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
				name = "Shinryu Unreal",
				uuid = "6474eda9-4e90-e7ec-aa33-53e7ba19aed5",
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
				displayPath = "Shinryu Unreal",
				eventType = 18,
				execute = "if (eventArgs.aoeID == 50283 or eventArgs.aoeID == 50241) and eventArgs.aoeName == \"Meteor Impact\" and eventArgs.x and eventArgs.y and eventArgs.z then\n    local duration = math.max(1, (eventArgs.duration or 4.5) + 0.5) * 1000\n    local drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1.0, 0.18, 0.08, 0.8), 3)\n    drawer:addTimedCircle(duration, eventArgs.x, eventArgs.y, eventArgs.z, 14.0, 0, false, true)\nend\nself.used = true",
				executeType = 2,
				loop = true,
				mechanicTime = 552.3,
				name = "Meteor Impact bomb ranges",
				timeRange = true,
				timelineIndex = 61,
				timerEndOffset = 50,
				timerStartOffset = -5.5,
				uuid = "67638347-1f56-fa11-bcfe-3b7899580b7d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DPS Mitigation",
				uuid = "9f5e8131-5c6f-214d-802f-ae8fb8d5e92f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7394,
							conditions = 
							{
								
								{
									"d9047563-90ea-0490-ad84-559dd1efa2ed",
									true,
								},
								
								{
									"6697de65-6f90-69a8-8b93-32bffdfd228f",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "59781001-83b1-3ea5-9240-8d11378dc1f0",
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
									"bedf7658-9c10-dfbb-b881-d86d19af3731",
									true,
								},
								
								{
									"c0588e04-8307-2c7f-842e-7f97a3df7724",
									true,
								},
							},
							gVar = "ACR_RikuNIN3_Hotbar_ShadeShift",
							uuid = "88e967dc-f9be-60ef-881b-fe0676188b4d",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 36962,
							conditions = 
							{
								
								{
									"bf88f16d-f108-ec92-8127-dcce094b4ee3",
									true,
								},
								
								{
									"bdc2e657-2bd4-1f07-9140-e7f385c41204",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "9b274db7-3735-bb8d-adbe-ed00e0f8e416",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 24404,
							conditions = 
							{
								
								{
									"1e981813-933a-5bab-b076-80f7c535c44b",
									true,
								},
								
								{
									"3d5360c2-7a9b-a9c8-9d8f-6998247faaf0",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "f4eca801-308f-d449-8236-c65cbef82d1b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7405,
							conditions = 
							{
								
								{
									"33816a89-efcb-004f-a62e-905def1197eb",
									true,
								},
								
								{
									"015cdf6d-5409-76b9-9036-d447162093a8",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "595d9320-9769-cb5f-a91c-5eaf3b6b0433",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							conditions = 
							{
								
								{
									"689eeb0b-73fb-8b94-a919-575e866732f2",
									true,
								},
								
								{
									"28d6d673-7b5e-87c6-83c4-c84b8880d1f7",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "eaebbf39-9838-0547-9f70-70c65e78087d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							conditions = 
							{
								
								{
									"1a523e89-6312-423e-b07e-799539b55f17",
									true,
								},
								
								{
									"cd5b8f54-e0a4-2605-af87-8b0f0d61d542",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "91edb6be-e6ca-8ce6-91aa-7ea9ed8c18c3",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 157,
							conditions = 
							{
								
								{
									"a4f9fd33-e4bb-89e3-bfa6-2894ca6845bb",
									true,
								},
								
								{
									"1e2d78ca-8c11-c98e-a022-6cb0f8b6b224",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "861fdbba-0453-59f8-936a-0bc60b43476b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25799,
							conditions = 
							{
								
								{
									"138e39c5-bc70-377d-8422-7268a9efcf8b",
									true,
								},
								
								{
									"ce0cf273-38b8-ae63-8787-71cfe648822a",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "b5bcc472-8271-576f-b511-ce8d076bdd31",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25857,
							conditions = 
							{
								
								{
									"69d77ff6-7fb2-ceba-9e76-e61bbe41fd5f",
									true,
								},
								
								{
									"4d110cc9-8956-04b5-b234-ca9688f5a92d",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "ae02e293-97db-6915-87a0-2aa2960f454b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 34685,
							conditions = 
							{
								
								{
									"1917c0b2-b5ae-24c6-beca-3d61466cd2a6",
									true,
								},
								
								{
									"e2657428-5c95-e7ce-b970-e4cf729833c4",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "500701a4-8ccb-484a-b4f3-661fca8bd163",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MONK",
							name = "MONK",
							uuid = "d9047563-90ea-0490-ad84-559dd1efa2ed",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7394,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7394",
							uuid = "6697de65-6f90-69a8-8b93-32bffdfd228f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "NINJA",
							name = "NINJA",
							uuid = "bedf7658-9c10-dfbb-b881-d86d19af3731",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 2241,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 2241",
							uuid = "c0588e04-8307-2c7f-842e-7f97a3df7724",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "SAMURAI",
							name = "SAMURAI",
							uuid = "bf88f16d-f108-ec92-8127-dcce094b4ee3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 36962,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 36962",
							uuid = "bdc2e657-2bd4-1f07-9140-e7f385c41204",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "REAPER",
							name = "REAPER",
							uuid = "1e981813-933a-5bab-b076-80f7c535c44b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 24404,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 24404",
							uuid = "3d5360c2-7a9b-a9c8-9d8f-6998247faaf0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "BARD",
							name = "BARD",
							uuid = "33816a89-efcb-004f-a62e-905def1197eb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7405,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7405",
							uuid = "015cdf6d-5409-76b9-9036-d447162093a8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MACHINIST",
							name = "MACHINIST",
							uuid = "689eeb0b-73fb-8b94-a919-575e866732f2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 16889",
							uuid = "28d6d673-7b5e-87c6-83c4-c84b8880d1f7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "DANCER",
							name = "DANCER",
							uuid = "1a523e89-6312-423e-b07e-799539b55f17",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 16012",
							uuid = "cd5b8f54-e0a4-2605-af87-8b0f0d61d542",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "BLACKMAGE",
							name = "BLACKMAGE",
							uuid = "a4f9fd33-e4bb-89e3-bfa6-2894ca6845bb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 157,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 157",
							uuid = "1e2d78ca-8c11-c98e-a022-6cb0f8b6b224",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "SUMMONER",
							name = "SUMMONER",
							uuid = "138e39c5-bc70-377d-8422-7268a9efcf8b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25799,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 25799",
							uuid = "ce0cf273-38b8-ae63-8787-71cfe648822a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "REDMAGE",
							name = "REDMAGE",
							uuid = "69d77ff6-7fb2-ceba-9e76-e61bbe41fd5f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25857,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 25857",
							uuid = "4d110cc9-8956-04b5-b234-ca9688f5a92d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "PICTOMANCER",
							name = "PICTOMANCER",
							uuid = "1917c0b2-b5ae-24c6-beca-3d61466cd2a6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 34685,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 34685",
							uuid = "e2657428-5c95-e7ce-b970-e4cf729833c4",
							version = 3,
						},
					},
				},
				displayPath = "DPS Mitigation",
				mechanicTime = 552.3,
				name = "DPS shields - Meteor Impact 1",
				timeRange = true,
				timelineIndex = 61,
				timerEndOffset = -0.3,
				timerStartOffset = -3,
				uuid = "addadffe-ec53-c529-9ec2-6a2a9ba1eb3b",
				version = 2,
			},
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
									"a0bfd7e0-fbf6-575a-982a-f5079a2ab6c7",
									true,
								},
								
								{
									"1cf38644-4e8c-f70b-9e39-11235952569d",
									true,
								},
								
								{
									"ab742706-6c27-36fc-8564-061acc438731",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "e1fb2418-f7bf-b94b-adf1-36c9d4b444d3",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"eb0a3633-a715-e32b-83a9-b9d4f561d067",
									true,
								},
								
								{
									"44024ade-f3c9-e7de-bb55-122be84e1682",
									true,
								},
								
								{
									"4060d652-f005-df4a-8c79-ecc11a59dbbd",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "8db58bd7-64af-d0a0-9ef8-e2b2d8b5a1fb",
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
									"458abefe-1f8b-24f3-b6c3-03b8abc07fef",
									true,
								},
								
								{
									"5819a868-3562-67a4-8625-96ac0d0a844b",
									true,
								},
								
								{
									"d3d52c93-05f5-7ee1-a481-b285d6ba27cd",
									true,
								},
							},
							gVar = "ACR_RikuNIN3_Hotbar_SecondWind",
							uuid = "69d4de1e-9151-d1a2-885a-efbe2a1707d4",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"c90168a6-0a86-b7ea-8947-f143bf992fe8",
									true,
								},
								
								{
									"a433a2d5-c9e9-6546-a602-955f7824f3f9",
									true,
								},
								
								{
									"63dcdc42-3a6d-0477-9185-f85b17b987c7",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "0b543177-10f8-4b7b-a62a-2ed277b65209",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"62c94c62-92a4-5d6f-a427-59d1bdef9a00",
									true,
								},
								
								{
									"0986e8d8-a409-1a45-b389-cf000653d527",
									true,
								},
								
								{
									"f3ff212f-fc82-151c-b676-c9a41b46c8f2",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "9e30ef90-4dd3-7c05-bae9-d9995faa7907",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"8f9e1e74-8406-c06f-982a-c8780e31452f",
									true,
								},
								
								{
									"28e244e8-066d-74e6-9283-60636f9378d4",
									true,
								},
								
								{
									"14db44a6-e33d-2a76-803b-1154936c0e3b",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "c77fe21f-3d79-a89e-8d9f-ff1a61637d3a",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"b2274696-3862-8956-893f-d88983861755",
									true,
								},
								
								{
									"8cc9f1a6-fdd7-1960-84ec-a19205334670",
									true,
								},
								
								{
									"e7d0c4e4-5313-fe9d-93da-596bb0ee6b58",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "96468a1d-06dd-b102-a8bf-9fcbcc4782cd",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"f2041fc8-3e15-c16b-bbdb-e98fd0d3a149",
									true,
								},
								
								{
									"5eb1663d-6e77-477a-b90e-02670ad2acab",
									true,
								},
								
								{
									"396bb00b-2a45-0683-8136-a51a9b6a5967",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "758ca79c-3646-2ded-968f-2246070ea48d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"c4f1b7bc-ca89-1171-ac80-99c2bcaade1a",
									true,
								},
								
								{
									"9e2fb6a3-50e0-418b-a27d-23a9e1c7b01b",
									true,
								},
								
								{
									"b95a97d6-5a86-6d7a-984f-05a6c6d11932",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "ea9bd6b5-bf07-d126-8441-9d5dc72aa766",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MONK",
							name = "MONK",
							uuid = "a0bfd7e0-fbf6-575a-982a-f5079a2ab6c7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "1cf38644-4e8c-f70b-9e39-11235952569d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "ab742706-6c27-36fc-8564-061acc438731",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "DRAGOON",
							name = "DRAGOON",
							uuid = "eb0a3633-a715-e32b-83a9-b9d4f561d067",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "44024ade-f3c9-e7de-bb55-122be84e1682",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "4060d652-f005-df4a-8c79-ecc11a59dbbd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "NINJA",
							name = "NINJA",
							uuid = "458abefe-1f8b-24f3-b6c3-03b8abc07fef",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "5819a868-3562-67a4-8625-96ac0d0a844b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "d3d52c93-05f5-7ee1-a481-b285d6ba27cd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "SAMURAI",
							name = "SAMURAI",
							uuid = "c90168a6-0a86-b7ea-8947-f143bf992fe8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "a433a2d5-c9e9-6546-a602-955f7824f3f9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "63dcdc42-3a6d-0477-9185-f85b17b987c7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "REAPER",
							name = "REAPER",
							uuid = "62c94c62-92a4-5d6f-a427-59d1bdef9a00",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "0986e8d8-a409-1a45-b389-cf000653d527",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "f3ff212f-fc82-151c-b676-c9a41b46c8f2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "VIPER",
							name = "VIPER",
							uuid = "8f9e1e74-8406-c06f-982a-c8780e31452f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "28e244e8-066d-74e6-9283-60636f9378d4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "14db44a6-e33d-2a76-803b-1154936c0e3b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "BARD",
							name = "BARD",
							uuid = "b2274696-3862-8956-893f-d88983861755",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "8cc9f1a6-fdd7-1960-84ec-a19205334670",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "e7d0c4e4-5313-fe9d-93da-596bb0ee6b58",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MACHINIST",
							name = "MACHINIST",
							uuid = "f2041fc8-3e15-c16b-bbdb-e98fd0d3a149",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "5eb1663d-6e77-477a-b90e-02670ad2acab",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "396bb00b-2a45-0683-8136-a51a9b6a5967",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "DANCER",
							name = "DANCER",
							uuid = "c4f1b7bc-ca89-1171-ac80-99c2bcaade1a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "9e2fb6a3-50e0-418b-a27d-23a9e1c7b01b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "b95a97d6-5a86-6d7a-984f-05a6c6d11932",
							version = 3,
						},
					},
				},
				displayPath = "DPS Mitigation",
				mechanicTime = 552.3,
				name = "DPS recovery - Meteor Impact 1",
				timeRange = true,
				timelineIndex = 61,
				timerEndOffset = 4,
				timerStartOffset = 0.2,
				uuid = "237302e2-8483-e52d-9ab1-e1c9edff80f2",
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
				name = "DPS Mitigation",
				uuid = "d954bc33-880d-9c80-951f-7d29f7ba9b59",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7394,
							conditions = 
							{
								
								{
									"ce8b0576-7e62-0adb-ba02-7885e5a0e9b6",
									true,
								},
								
								{
									"98937cb9-a1e1-fafb-a8f6-0c7109f5a238",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "26ff82b8-8275-9275-ba4a-f0557c17ed60",
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
									"0ef7e7d0-69d4-db93-8cfc-a5f4cf507aa5",
									true,
								},
								
								{
									"064a430c-11b6-c61f-9dd8-dce39f803796",
									true,
								},
							},
							gVar = "ACR_RikuNIN3_Hotbar_ShadeShift",
							uuid = "e3b7edbf-9a8e-8241-8347-fa752189e745",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 36962,
							conditions = 
							{
								
								{
									"9acdf867-55b7-1cf9-a747-77ceb7f237ae",
									true,
								},
								
								{
									"37c9dc49-5d53-3b2a-a2ab-2ecd3363cc42",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "e948bcab-b700-3b25-bb9c-f1c70cd0f4bc",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 24404,
							conditions = 
							{
								
								{
									"2465045b-69aa-8997-b994-86203a590a1b",
									true,
								},
								
								{
									"dd8a79db-f3b2-deea-80b0-dad9a2736438",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "ac9a8818-f461-f66b-bab2-e1c83d103753",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7405,
							conditions = 
							{
								
								{
									"406ee93a-f75e-3391-9b6d-1f941a232997",
									true,
								},
								
								{
									"9cdd3e8c-4350-3b51-a1c4-7b2704630555",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "f810cb7d-39e6-52f5-b6c8-4073ea16edee",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							conditions = 
							{
								
								{
									"7cc147df-4318-e537-a97b-1fdbafc3759d",
									true,
								},
								
								{
									"95c95732-996d-4d4e-9198-d9927f30e594",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "c1121de3-aee6-f8b1-b5a2-7bb3def48833",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							conditions = 
							{
								
								{
									"abbbabcf-3175-9855-8988-dab2138f8bfd",
									true,
								},
								
								{
									"e6696e01-5448-7c3c-ba75-685e1f13a0de",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "07317c51-3ce6-0542-aee3-44f704bc23fc",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 157,
							conditions = 
							{
								
								{
									"80a178d3-4f5f-1164-9000-ec6e876495e5",
									true,
								},
								
								{
									"bc1cfdbc-9b2f-af08-aebe-d812149ac5aa",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "ef46e94e-7414-7a68-8dec-3bf9ab1713d0",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25799,
							conditions = 
							{
								
								{
									"c2af0319-3140-f2d4-bb39-490f15d12bb2",
									true,
								},
								
								{
									"ab71bc4f-6a7c-d7e6-8312-d09538c2469d",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "d1b896e7-9e56-424b-8725-06ca8bc81f63",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25857,
							conditions = 
							{
								
								{
									"66cd295b-3df0-3479-a7c2-286b18ff7d28",
									true,
								},
								
								{
									"262df85e-1737-4ffb-905b-d0bcbba0f730",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "6101dea3-1c2d-bcda-99d9-1bad5946c2ce",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 34685,
							conditions = 
							{
								
								{
									"4e9e4f36-4d1f-30d5-9877-0a2498b8267e",
									true,
								},
								
								{
									"57ca9a3c-4d52-7f64-a7db-0d07d5259d33",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "639b27a6-f9a2-0ba6-bebc-3866131da768",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MONK",
							name = "MONK",
							uuid = "ce8b0576-7e62-0adb-ba02-7885e5a0e9b6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7394,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7394",
							uuid = "98937cb9-a1e1-fafb-a8f6-0c7109f5a238",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "NINJA",
							name = "NINJA",
							uuid = "0ef7e7d0-69d4-db93-8cfc-a5f4cf507aa5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 2241,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 2241",
							uuid = "064a430c-11b6-c61f-9dd8-dce39f803796",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "SAMURAI",
							name = "SAMURAI",
							uuid = "9acdf867-55b7-1cf9-a747-77ceb7f237ae",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 36962,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 36962",
							uuid = "37c9dc49-5d53-3b2a-a2ab-2ecd3363cc42",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "REAPER",
							name = "REAPER",
							uuid = "2465045b-69aa-8997-b994-86203a590a1b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 24404,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 24404",
							uuid = "dd8a79db-f3b2-deea-80b0-dad9a2736438",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "BARD",
							name = "BARD",
							uuid = "406ee93a-f75e-3391-9b6d-1f941a232997",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7405,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7405",
							uuid = "9cdd3e8c-4350-3b51-a1c4-7b2704630555",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MACHINIST",
							name = "MACHINIST",
							uuid = "7cc147df-4318-e537-a97b-1fdbafc3759d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 16889",
							uuid = "95c95732-996d-4d4e-9198-d9927f30e594",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "DANCER",
							name = "DANCER",
							uuid = "abbbabcf-3175-9855-8988-dab2138f8bfd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 16012",
							uuid = "e6696e01-5448-7c3c-ba75-685e1f13a0de",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "BLACKMAGE",
							name = "BLACKMAGE",
							uuid = "80a178d3-4f5f-1164-9000-ec6e876495e5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 157,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 157",
							uuid = "bc1cfdbc-9b2f-af08-aebe-d812149ac5aa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "SUMMONER",
							name = "SUMMONER",
							uuid = "c2af0319-3140-f2d4-bb39-490f15d12bb2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25799,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 25799",
							uuid = "ab71bc4f-6a7c-d7e6-8312-d09538c2469d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "REDMAGE",
							name = "REDMAGE",
							uuid = "66cd295b-3df0-3479-a7c2-286b18ff7d28",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25857,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 25857",
							uuid = "262df85e-1737-4ffb-905b-d0bcbba0f730",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "PICTOMANCER",
							name = "PICTOMANCER",
							uuid = "4e9e4f36-4d1f-30d5-9877-0a2498b8267e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 34685,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 34685",
							uuid = "57ca9a3c-4d52-7f64-a7db-0d07d5259d33",
							version = 3,
						},
					},
				},
				displayPath = "DPS Mitigation",
				mechanicTime = 571.1,
				name = "DPS shields - Meteor Impact 2",
				timeRange = true,
				timelineIndex = 63,
				timerEndOffset = -0.3,
				timerStartOffset = -3,
				uuid = "9b0fa5df-0d3d-d010-a359-304f1774cc81",
				version = 2,
			},
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
									"198441e1-f1b4-3882-87d2-830af8be74ea",
									true,
								},
								
								{
									"958d2c7b-36b9-c6e0-a368-650c4b0145a4",
									true,
								},
								
								{
									"d793530d-1819-bc2d-96a6-aacf09223371",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "368e6c9c-2981-9f94-90b8-1ebdd206b6f8",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"354f71f8-2b52-ab3e-94fd-acc54ccf83f2",
									true,
								},
								
								{
									"540868d1-ee45-e36a-919f-b8fb0a06e705",
									true,
								},
								
								{
									"e91163d9-2497-af0d-9599-b14c5923a9e6",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "e08c49c9-0f7b-a5d7-acd4-c0bb3c0b05e9",
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
									"693a01e9-e91a-b4c0-bd31-81cb29712ba4",
									true,
								},
								
								{
									"8884c371-2e4d-a350-ae32-19103bb1d25a",
									true,
								},
								
								{
									"ac7c2a22-51ac-c85d-a5af-fe8a1da4b8c0",
									true,
								},
							},
							gVar = "ACR_RikuNIN3_Hotbar_SecondWind",
							uuid = "133a07e3-d049-df03-9e4c-ee8df8a62baa",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"0c7a8137-0f43-0ca4-95b1-bedde0f3afaa",
									true,
								},
								
								{
									"d7b82e28-5d03-b808-b4d2-9aa834a2fd68",
									true,
								},
								
								{
									"16cf98ca-e231-512f-b1f9-2bcddc0efc0e",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "6ea683f4-5763-c875-8aac-77ff9726a805",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"724cd0c1-d55c-cfeb-9e29-99e6f76b99b0",
									true,
								},
								
								{
									"43bdf84e-5e7b-4a19-8922-119adf37802a",
									true,
								},
								
								{
									"0c1aef0a-5815-9ea6-a79f-adb9db179836",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "c5df7100-dfa0-6c7f-ba37-b2f5d988f141",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"7e79d968-2966-c962-8cea-20fa9ac84e2c",
									true,
								},
								
								{
									"e6dfcbff-fd9b-1ace-96c0-3a03bc6ff4c7",
									true,
								},
								
								{
									"77d09c3a-ed55-403b-ac47-1f9112a1a5c6",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "77cd38d6-0a6d-9853-af46-8872d56432a1",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"c4e03d73-2b8c-5dc5-851b-b9f1ff3f13a3",
									true,
								},
								
								{
									"42a6204d-37b4-d86d-a2f2-ad0912ae1c48",
									true,
								},
								
								{
									"3cab3815-0450-c0aa-bd7a-c26cf19b8efc",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "60ef0fbd-f33b-2d9c-b813-2ec4a10a0c40",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"77a11c0f-66dd-1ba4-bb70-998a280a8371",
									true,
								},
								
								{
									"8915a221-f96f-8e32-923f-a82e0256185d",
									true,
								},
								
								{
									"9a5376a1-ae28-88d1-90d2-903fc4ece47e",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "1d5c5c4d-1586-00af-a769-9eb894728934",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"fcad08da-7b2d-8fd7-984b-20514955efcf",
									true,
								},
								
								{
									"0efe83bf-678f-da04-af4f-7f69990821ae",
									true,
								},
								
								{
									"e785ccbb-66ab-ea4e-9b6f-ea0c1d997270",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "aded6c27-1124-9da7-ab85-afa1a325d8c1",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MONK",
							name = "MONK",
							uuid = "198441e1-f1b4-3882-87d2-830af8be74ea",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "958d2c7b-36b9-c6e0-a368-650c4b0145a4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "d793530d-1819-bc2d-96a6-aacf09223371",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "DRAGOON",
							name = "DRAGOON",
							uuid = "354f71f8-2b52-ab3e-94fd-acc54ccf83f2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "540868d1-ee45-e36a-919f-b8fb0a06e705",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "e91163d9-2497-af0d-9599-b14c5923a9e6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "NINJA",
							name = "NINJA",
							uuid = "693a01e9-e91a-b4c0-bd31-81cb29712ba4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "8884c371-2e4d-a350-ae32-19103bb1d25a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "ac7c2a22-51ac-c85d-a5af-fe8a1da4b8c0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "SAMURAI",
							name = "SAMURAI",
							uuid = "0c7a8137-0f43-0ca4-95b1-bedde0f3afaa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "d7b82e28-5d03-b808-b4d2-9aa834a2fd68",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "16cf98ca-e231-512f-b1f9-2bcddc0efc0e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "REAPER",
							name = "REAPER",
							uuid = "724cd0c1-d55c-cfeb-9e29-99e6f76b99b0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "43bdf84e-5e7b-4a19-8922-119adf37802a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "0c1aef0a-5815-9ea6-a79f-adb9db179836",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "VIPER",
							name = "VIPER",
							uuid = "7e79d968-2966-c962-8cea-20fa9ac84e2c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "e6dfcbff-fd9b-1ace-96c0-3a03bc6ff4c7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "77d09c3a-ed55-403b-ac47-1f9112a1a5c6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "BARD",
							name = "BARD",
							uuid = "c4e03d73-2b8c-5dc5-851b-b9f1ff3f13a3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "42a6204d-37b4-d86d-a2f2-ad0912ae1c48",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "3cab3815-0450-c0aa-bd7a-c26cf19b8efc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MACHINIST",
							name = "MACHINIST",
							uuid = "77a11c0f-66dd-1ba4-bb70-998a280a8371",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "8915a221-f96f-8e32-923f-a82e0256185d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "9a5376a1-ae28-88d1-90d2-903fc4ece47e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "DANCER",
							name = "DANCER",
							uuid = "fcad08da-7b2d-8fd7-984b-20514955efcf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "0efe83bf-678f-da04-af4f-7f69990821ae",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "e785ccbb-66ab-ea4e-9b6f-ea0c1d997270",
							version = 3,
						},
					},
				},
				displayPath = "DPS Mitigation",
				mechanicTime = 571.1,
				name = "DPS recovery - Meteor Impact 2",
				timeRange = true,
				timelineIndex = 63,
				timerEndOffset = 4,
				timerStartOffset = 0.2,
				uuid = "48f41519-d6f6-a92b-9e36-308565bb9886",
				version = 2,
			},
		},
	},
	[66] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "DPS Mitigation",
				uuid = "2f945f92-783c-314d-800c-6577e593b63e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7394,
							conditions = 
							{
								
								{
									"44c73ecf-9861-b803-a36c-2e0bda217607",
									true,
								},
								
								{
									"a500d4b6-6e94-da2c-9a48-33ae129c2c83",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "7d354cf8-0803-82fe-a948-ffa74734ed89",
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
									"c4afa23f-6aa3-0194-ac89-550c4a84a6fa",
									true,
								},
								
								{
									"42d96e4e-666a-11b2-9e93-d202aed16ab9",
									true,
								},
							},
							gVar = "ACR_RikuNIN3_Hotbar_ShadeShift",
							uuid = "172dfb9a-6420-3b0c-aaa6-c066a1a6c69b",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 36962,
							conditions = 
							{
								
								{
									"b56391eb-1dae-42d4-9883-a103e4b43a82",
									true,
								},
								
								{
									"192d6ece-3c72-1145-9332-5760871e51cf",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "4bc5e9fb-8e12-b843-8409-a3d0e743a8e6",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 24404,
							conditions = 
							{
								
								{
									"efcee178-1033-8513-a6bb-b08e092cadac",
									true,
								},
								
								{
									"5c8dbbb8-8729-4270-849d-2b5d3128aaa6",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "d983daf0-645d-f528-8896-a18720cb6930",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7405,
							conditions = 
							{
								
								{
									"0fe27943-4f15-0a93-9bc1-f9212563a22f",
									true,
								},
								
								{
									"20060059-ffa7-87a7-9048-d1511458de44",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "2b76c934-68f4-af2e-9ea4-046cc25acdef",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							conditions = 
							{
								
								{
									"3c336971-01fe-5f2e-b226-44599bc17873",
									true,
								},
								
								{
									"84e45076-696b-64e3-a47a-6ce5835d2ca7",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "2f893fc4-a550-d60b-9870-6f1a822f2435",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							conditions = 
							{
								
								{
									"7578c667-c71b-3be0-b00c-ce14a223a17b",
									true,
								},
								
								{
									"9da0a5f6-8d07-cdc2-9471-c820e10a809e",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "b7ebdc4e-47e2-00f6-98be-02a484ea484e",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 157,
							conditions = 
							{
								
								{
									"599a4903-3f55-31fb-881a-15ab7f99eaa1",
									true,
								},
								
								{
									"c31d6b3f-291b-0294-9089-47d5cd9b3f36",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "e9130cf9-2a38-4273-b9cf-f8a583fe8d94",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25799,
							conditions = 
							{
								
								{
									"7e72d675-b92e-ae3d-a06f-8f53262e0ebc",
									true,
								},
								
								{
									"9c8359f5-31b1-8811-a1de-a7ae31274134",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "bab5fdae-0054-e25f-87a2-7ed64e908cc4",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25857,
							conditions = 
							{
								
								{
									"693d14b5-ffd0-aa4d-bc2f-f5a3ffcc4131",
									true,
								},
								
								{
									"8a70d6fa-5752-8f00-a934-5a921c013a7e",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "5111189a-903d-36d7-8f49-735bbe316ecc",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 34685,
							conditions = 
							{
								
								{
									"8770c5ee-8262-5eb5-b897-2284ba96b739",
									true,
								},
								
								{
									"4d630c6c-53c5-8bff-82a2-76ab66fd097f",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "bb4e76a4-3190-86c6-bfdd-df118ff50c53",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MONK",
							name = "MONK",
							uuid = "44c73ecf-9861-b803-a36c-2e0bda217607",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7394,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7394",
							uuid = "a500d4b6-6e94-da2c-9a48-33ae129c2c83",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "NINJA",
							name = "NINJA",
							uuid = "c4afa23f-6aa3-0194-ac89-550c4a84a6fa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 2241,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 2241",
							uuid = "42d96e4e-666a-11b2-9e93-d202aed16ab9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "SAMURAI",
							name = "SAMURAI",
							uuid = "b56391eb-1dae-42d4-9883-a103e4b43a82",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 36962,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 36962",
							uuid = "192d6ece-3c72-1145-9332-5760871e51cf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "REAPER",
							name = "REAPER",
							uuid = "efcee178-1033-8513-a6bb-b08e092cadac",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 24404,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 24404",
							uuid = "5c8dbbb8-8729-4270-849d-2b5d3128aaa6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "BARD",
							name = "BARD",
							uuid = "0fe27943-4f15-0a93-9bc1-f9212563a22f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7405,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7405",
							uuid = "20060059-ffa7-87a7-9048-d1511458de44",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MACHINIST",
							name = "MACHINIST",
							uuid = "3c336971-01fe-5f2e-b226-44599bc17873",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 16889",
							uuid = "84e45076-696b-64e3-a47a-6ce5835d2ca7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "DANCER",
							name = "DANCER",
							uuid = "7578c667-c71b-3be0-b00c-ce14a223a17b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 16012",
							uuid = "9da0a5f6-8d07-cdc2-9471-c820e10a809e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "BLACKMAGE",
							name = "BLACKMAGE",
							uuid = "599a4903-3f55-31fb-881a-15ab7f99eaa1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 157,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 157",
							uuid = "c31d6b3f-291b-0294-9089-47d5cd9b3f36",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "SUMMONER",
							name = "SUMMONER",
							uuid = "7e72d675-b92e-ae3d-a06f-8f53262e0ebc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25799,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 25799",
							uuid = "9c8359f5-31b1-8811-a1de-a7ae31274134",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "REDMAGE",
							name = "REDMAGE",
							uuid = "693d14b5-ffd0-aa4d-bc2f-f5a3ffcc4131",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25857,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 25857",
							uuid = "8a70d6fa-5752-8f00-a934-5a921c013a7e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "PICTOMANCER",
							name = "PICTOMANCER",
							uuid = "8770c5ee-8262-5eb5-b897-2284ba96b739",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 34685,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 34685",
							uuid = "4d630c6c-53c5-8bff-82a2-76ab66fd097f",
							version = 3,
						},
					},
				},
				displayPath = "DPS Mitigation",
				mechanicTime = 601,
				name = "DPS shields - Meteor Impact 3",
				timeRange = true,
				timelineIndex = 66,
				timerEndOffset = -0.3,
				timerStartOffset = -3,
				uuid = "22d91000-9d1b-02dc-9af4-43d1e16a9335",
				version = 2,
			},
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
									"09383111-d84f-37b2-9319-349cb986e617",
									true,
								},
								
								{
									"61ce6b22-42b5-0304-abb0-751f2ee197d1",
									true,
								},
								
								{
									"ce60987f-9f25-b640-ae9a-15adc115699b",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "0cf84034-2d8c-6d96-8e2a-fee7389ac42f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"a8fe36df-5d63-bd7e-b9cf-569c2e4b32d6",
									true,
								},
								
								{
									"0cd260b8-d774-e9fb-9b0c-f0af516a4149",
									true,
								},
								
								{
									"57422d70-88ee-61ef-8f25-bf7ab2657f08",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "e15a3653-3149-0315-99a8-a636ce7e47bc",
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
									"30c70f98-a1d2-c4ad-aa5b-9b69c62d4717",
									true,
								},
								
								{
									"2425b836-61d9-dd10-a7e3-5d5b33270d0b",
									true,
								},
								
								{
									"526e4009-f591-ee8c-a3a6-48546eb6ef96",
									true,
								},
							},
							gVar = "ACR_RikuNIN3_Hotbar_SecondWind",
							uuid = "378e6f10-20a3-328e-96ea-d3895a579012",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"ab0464fa-665d-b8d2-856b-860c0b63e0f1",
									true,
								},
								
								{
									"8cd1ab8e-f686-d8e2-b689-9a55a786d4d6",
									true,
								},
								
								{
									"be31989c-e5a1-2c2c-bace-85e4919863c2",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "6942f712-638b-bffb-982b-8b6f46b4393b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"24869710-d058-01bc-9bb5-7413114d870f",
									true,
								},
								
								{
									"5a32cb20-7b8c-f8e8-9817-ecc288f8bfb7",
									true,
								},
								
								{
									"ae9368c6-95ae-f66d-ba97-244ae190c2d6",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "e1630a07-9f15-bf22-a91d-d3902bea3cda",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"59ae2715-1ee9-9a05-b4d5-4f0036efe3b8",
									true,
								},
								
								{
									"9c47caf1-4b6b-f7ef-99c7-f9b16402ed88",
									true,
								},
								
								{
									"06412101-4f61-3b31-874f-6a88a796dce1",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "7b85b1b6-a221-37ed-8d4f-4b5675ca3ac5",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"e24e956c-4d51-2947-a52d-ba4241e8c744",
									true,
								},
								
								{
									"de068839-b54d-b3c5-82fc-c294b8afd424",
									true,
								},
								
								{
									"ed28f92d-7275-8487-b99f-f18f4df811da",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "93a3df49-3cd2-de1f-b75a-5d0baad461bf",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"368fbbe8-c573-8e6a-b524-fe0fbfa57c94",
									true,
								},
								
								{
									"db76c26b-1cd6-af9d-b8eb-602fce3bf91a",
									true,
								},
								
								{
									"36e85480-0106-9437-977e-0a2b9d83239f",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "ee30babc-773d-6320-9af5-d6f6ccadc842",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"7bd6ba42-5dc9-38cb-ba94-d1d174ecbb15",
									true,
								},
								
								{
									"7acf1044-93b7-47b9-bcb8-fe93572d8fd3",
									true,
								},
								
								{
									"1ad0e7d7-465c-c66c-8d47-8d7d905ea90a",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "1a6cceb6-7188-3766-a401-5ecf538d2a66",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MONK",
							name = "MONK",
							uuid = "09383111-d84f-37b2-9319-349cb986e617",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "61ce6b22-42b5-0304-abb0-751f2ee197d1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "ce60987f-9f25-b640-ae9a-15adc115699b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "DRAGOON",
							name = "DRAGOON",
							uuid = "a8fe36df-5d63-bd7e-b9cf-569c2e4b32d6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "0cd260b8-d774-e9fb-9b0c-f0af516a4149",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "57422d70-88ee-61ef-8f25-bf7ab2657f08",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "NINJA",
							name = "NINJA",
							uuid = "30c70f98-a1d2-c4ad-aa5b-9b69c62d4717",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "2425b836-61d9-dd10-a7e3-5d5b33270d0b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "526e4009-f591-ee8c-a3a6-48546eb6ef96",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "SAMURAI",
							name = "SAMURAI",
							uuid = "ab0464fa-665d-b8d2-856b-860c0b63e0f1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "8cd1ab8e-f686-d8e2-b689-9a55a786d4d6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "be31989c-e5a1-2c2c-bace-85e4919863c2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "REAPER",
							name = "REAPER",
							uuid = "24869710-d058-01bc-9bb5-7413114d870f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "5a32cb20-7b8c-f8e8-9817-ecc288f8bfb7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "ae9368c6-95ae-f66d-ba97-244ae190c2d6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "VIPER",
							name = "VIPER",
							uuid = "59ae2715-1ee9-9a05-b4d5-4f0036efe3b8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "9c47caf1-4b6b-f7ef-99c7-f9b16402ed88",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "06412101-4f61-3b31-874f-6a88a796dce1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "BARD",
							name = "BARD",
							uuid = "e24e956c-4d51-2947-a52d-ba4241e8c744",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "de068839-b54d-b3c5-82fc-c294b8afd424",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "ed28f92d-7275-8487-b99f-f18f4df811da",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MACHINIST",
							name = "MACHINIST",
							uuid = "368fbbe8-c573-8e6a-b524-fe0fbfa57c94",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "db76c26b-1cd6-af9d-b8eb-602fce3bf91a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "36e85480-0106-9437-977e-0a2b9d83239f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "DANCER",
							name = "DANCER",
							uuid = "7bd6ba42-5dc9-38cb-ba94-d1d174ecbb15",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "7acf1044-93b7-47b9-bcb8-fe93572d8fd3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "1ad0e7d7-465c-c66c-8d47-8d7d905ea90a",
							version = 3,
						},
					},
				},
				displayPath = "DPS Mitigation",
				mechanicTime = 601,
				name = "DPS recovery - Meteor Impact 3",
				timeRange = true,
				timelineIndex = 66,
				timerEndOffset = 4,
				timerStartOffset = 0.2,
				uuid = "c1173478-b3fa-a061-9f12-c930a92938eb",
				version = 2,
			},
		},
	},
	[70] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal",
				uuid = "1c3a17ee-1c40-ae8d-b504-c2c386a7ef75",
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
				displayPath = "Shinryu Unreal",
				eventType = 3,
				execute = "if eventArgs.entityContentID == 5640 and eventArgs.spellID == 50227 then\n    local duration = math.max(1, eventArgs.channelTimeMax or 0) * 1000 + 500\n    local player = TensorCore.mGetPlayer()\n    local job = player and TensorCore.getJobNameByID(player.job)\n    if job == \"NIN\" then\n        ACR_RikuNIN3_KBCancel = true\n    elseif job == \"RPR\" then\n        ACR_TensorReaper3_KBCancel = true\n    end\n    local caster = TensorCore.mGetEntity(eventArgs.entityID)\n    if caster and caster.pos then\n        local p = caster.pos\n        local drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15, 1.0, 0.25, 0.8), 3)\n        drawer:addTimedCircle(duration, p.x - 5, p.y, p.z - 5, 1.25, 0, false, true)\n        if job == \"NIN\" or job == \"RPR\" then\n            TensorCore.addAlertText(duration, \"TAIL SPIT: knockback cancel\", 1.3, 2, false)\n        else\n            TensorCore.addAlertText(duration, \"TAIL SPIT: stand in the green circle\", 1.3, 2, false)\n        end\n    end\nend\nself.used = true",
				executeType = 2,
				mechanicTime = 813.1,
				name = "Tail Spit knockback",
				timeRange = true,
				timelineIndex = 70,
				timerEndOffset = 0.5,
				timerStartOffset = -1.5,
				uuid = "b7f8646d-6824-cb6b-ade9-60b154c601f3",
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
				name = "Shinryu Unreal",
				uuid = "36ea6139-b4b1-052f-844e-2cf2e620babc",
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
				displayPath = "Shinryu Unreal",
				eventType = 15,
				execute = "data.shinryu_burning_chain_pair = data.shinryu_burning_chain_pair or {}\nlocal state = data.shinryu_burning_chain_pair\nif not state.clear then\n    state.clear = function(s)\n        if s.playerCircle then Argus.deleteTimedShape(s.playerCircle) end\n        if s.partnerCircle then Argus.deleteTimedShape(s.partnerCircle) end\n        if s.link then Argus.deleteTimedShape(s.link) end\n        s.playerCircle = nil\n        s.partnerCircle = nil\n        s.link = nil\n        s.partnerID = nil\n    end\nend\n\nlocal player = TensorCore.mGetPlayer()\nif player and player.id and player.id > 0 then\n    local playerID = player.id\n    local sourceID = eventArgs.sourceEntityID\n    local targetID = eventArgs.newTargetID\n\n    if eventArgs.newTetherID == 9 then\n        local partnerID = nil\n        if sourceID == playerID then\n            partnerID = targetID\n        elseif targetID == playerID then\n            partnerID = sourceID\n        end\n\n        if partnerID and partnerID > 0 then\n            state.clear(state)\n            state.partnerID = partnerID\n            local drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.1, 0.95, 0.65, 0.9), 1.5)\n            state.playerCircle = drawer:addTimedCircleOnEnt(15000, playerID, 1.6, 0, false, true)\n            state.partnerCircle = drawer:addTimedCircleOnEnt(15000, partnerID, 1.6, 0, false, true)\n            state.link = drawer:addTimedRectOnEnt(15000, playerID, 0.5, 0.22, partnerID, 0, false, false, true, 0, false)\n        end\n    elseif eventArgs.oldTetherID == 9 then\n        local oldTargetID = eventArgs.oldTargetID\n        if sourceID == playerID or oldTargetID == playerID or sourceID == state.partnerID or oldTargetID == state.partnerID then\n            state.clear(state)\n        end\n    end\nend\nself.used = true",
				executeType = 2,
				loop = true,
				mechanicTime = 859.5,
				name = "Burning Chain pair marks",
				timeRange = true,
				timelineIndex = 74,
				timerEndOffset = 17,
				timerStartOffset = -4,
				uuid = "824ac152-a616-8452-8a2b-046ace4b68a5",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DPS Mitigation",
				uuid = "26aa91c6-f063-d3e2-b288-4858550c8fb1",
			},
			objectType = "folder",
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
									"c6f87abd-e13c-4429-9ba6-b9aad8702d4e",
									true,
								},
								
								{
									"c0bf09ee-0d46-9543-93b8-2f42f1970a5c",
									true,
								},
								
								{
									"b077caa6-0785-d970-af45-0a53ec93e6f3",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "f20d8ee0-9c60-ea3d-800c-46a862b23f6a",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							conditions = 
							{
								
								{
									"ad0db58b-a25a-0d52-9348-323969ae4d14",
									true,
								},
								
								{
									"ed658906-4c42-4ec1-86fd-4687b949b857",
									true,
								},
								
								{
									"72780879-c06c-7348-b6cb-bc0df70f81c6",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "d7db84be-8251-9731-a3c8-cbfd654da6f6",
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
									"347424d4-c921-bd8f-b4c2-a67a73b9316f",
									true,
								},
								
								{
									"1829d960-1aaa-1549-8cd4-316f7c7fadfb",
									true,
								},
								
								{
									"b4cf452f-1513-c7f8-b72f-dd16ce3bfd1b",
									true,
								},
							},
							gVar = "ACR_RikuNIN3_Hotbar_Feint",
							uuid = "3cdc57b0-a933-2964-9ece-d1ea2e4f900c",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							conditions = 
							{
								
								{
									"ef22f1cb-17a7-6d48-9801-0762279591c4",
									true,
								},
								
								{
									"df2e0b8d-647b-0dbc-a525-6a44c3d2262b",
									true,
								},
								
								{
									"a537bb07-95b9-2702-b148-64c5b2e48314",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "08a4f2f3-38bd-2002-925e-1bda7bcefa36",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							conditions = 
							{
								
								{
									"7e8f025b-236d-8149-9673-6039f0fb764f",
									true,
								},
								
								{
									"75b07e46-7f3c-bc9d-95e2-e0e657a4b59b",
									true,
								},
								
								{
									"da430126-d940-1dab-bc9f-ecaf44284a2e",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "2897b79b-a433-8bde-8b41-eb05d476b6c9",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							conditions = 
							{
								
								{
									"dfec00d2-ade3-ad79-a6e8-a63b52b8ed4d",
									true,
								},
								
								{
									"fc8d1182-9e03-3fcf-a813-9b104e759820",
									true,
								},
								
								{
									"a773cc1c-1b78-5493-99f7-666160d46db2",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "345e3816-7a77-d7e4-aff7-e6641e39d6ae",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 2887,
							conditions = 
							{
								
								{
									"72da6721-69ef-2b93-9f57-f6e18ee4be0b",
									true,
								},
								
								{
									"8102c57b-75ae-3720-9bc4-1a029e0cc05c",
									true,
								},
								
								{
									"18b11d35-651a-1cb1-880d-db03b6e9a39f",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "3be6e716-c3e0-dc93-a5e1-588f47037aa4",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							conditions = 
							{
								
								{
									"aaeb551a-620f-86db-8d00-563f20ff9a18",
									true,
								},
								
								{
									"71992a89-ed21-a7df-8fce-7e828a7c0369",
									true,
								},
								
								{
									"58bb1c61-19c3-d64c-8f31-52b9943e3e24",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "2c19fd0f-f3a5-48b3-b6da-58371cca3ad4",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							conditions = 
							{
								
								{
									"2a2daa2e-558e-d0dd-9ec2-2d38bdc0faef",
									true,
								},
								
								{
									"37d9751a-1119-cb01-af5a-6c4ae1bb6214",
									true,
								},
								
								{
									"92537dd0-d8b8-9269-b563-94175d841f97",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "8f1d4dcf-c120-b740-a79f-5a0bf801804c",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							conditions = 
							{
								
								{
									"01cdd048-30f7-c679-8ff6-a868691a8193",
									true,
								},
								
								{
									"1dcc803c-b3b1-4e2c-bb43-6f736dfad805",
									true,
								},
								
								{
									"c63e39b8-b3ac-7377-9e61-7763ffe6a1dd",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "b556fc2d-8a6e-c738-bcce-4eaad232645a",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							conditions = 
							{
								
								{
									"2ab6e636-d461-67c0-95f3-ac9e7256d784",
									true,
								},
								
								{
									"2fbd0a4e-b6fe-6f48-84f4-4c9819adaa80",
									true,
								},
								
								{
									"aef035e6-1dc3-c72e-9585-16ff2e9301f4",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "4c759ff0-990c-555f-8016-a344c6bfdfe2",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MONK",
							name = "MONK",
							uuid = "c6f87abd-e13c-4429-9ba6-b9aad8702d4e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7549",
							uuid = "c0bf09ee-0d46-9543-93b8-2f42f1970a5c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "b077caa6-0785-d970-af45-0a53ec93e6f3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "DRAGOON",
							name = "DRAGOON",
							uuid = "ad0db58b-a25a-0d52-9348-323969ae4d14",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7549",
							uuid = "ed658906-4c42-4ec1-86fd-4687b949b857",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "72780879-c06c-7348-b6cb-bc0df70f81c6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "NINJA",
							name = "NINJA",
							uuid = "347424d4-c921-bd8f-b4c2-a67a73b9316f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7549",
							uuid = "1829d960-1aaa-1549-8cd4-316f7c7fadfb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "b4cf452f-1513-c7f8-b72f-dd16ce3bfd1b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "SAMURAI",
							name = "SAMURAI",
							uuid = "ef22f1cb-17a7-6d48-9801-0762279591c4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7549",
							uuid = "df2e0b8d-647b-0dbc-a525-6a44c3d2262b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "a537bb07-95b9-2702-b148-64c5b2e48314",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "REAPER",
							name = "REAPER",
							uuid = "7e8f025b-236d-8149-9673-6039f0fb764f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7549",
							uuid = "75b07e46-7f3c-bc9d-95e2-e0e657a4b59b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "da430126-d940-1dab-bc9f-ecaf44284a2e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "VIPER",
							name = "VIPER",
							uuid = "dfec00d2-ade3-ad79-a6e8-a63b52b8ed4d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7549",
							uuid = "fc8d1182-9e03-3fcf-a813-9b104e759820",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "a773cc1c-1b78-5493-99f7-666160d46db2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MACHINIST",
							name = "MACHINIST",
							uuid = "72da6721-69ef-2b93-9f57-f6e18ee4be0b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 2887,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 2887",
							uuid = "8102c57b-75ae-3720-9bc4-1a029e0cc05c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "18b11d35-651a-1cb1-880d-db03b6e9a39f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "BLACKMAGE",
							name = "BLACKMAGE",
							uuid = "aaeb551a-620f-86db-8d00-563f20ff9a18",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7560",
							uuid = "71992a89-ed21-a7df-8fce-7e828a7c0369",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "58bb1c61-19c3-d64c-8f31-52b9943e3e24",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "SUMMONER",
							name = "SUMMONER",
							uuid = "2a2daa2e-558e-d0dd-9ec2-2d38bdc0faef",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7560",
							uuid = "37d9751a-1119-cb01-af5a-6c4ae1bb6214",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "92537dd0-d8b8-9269-b563-94175d841f97",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "REDMAGE",
							name = "REDMAGE",
							uuid = "01cdd048-30f7-c679-8ff6-a868691a8193",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7560",
							uuid = "1dcc803c-b3b1-4e2c-bb43-6f736dfad805",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "c63e39b8-b3ac-7377-9e61-7763ffe6a1dd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "PICTOMANCER",
							name = "PICTOMANCER",
							uuid = "2ab6e636-d461-67c0-95f3-ac9e7256d784",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7560",
							uuid = "2fbd0a4e-b6fe-6f48-84f4-4c9819adaa80",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "aef035e6-1dc3-c72e-9585-16ff2e9301f4",
							version = 3,
						},
					},
				},
				displayPath = "DPS Mitigation",
				mechanicTime = 859.5,
				name = "DPS debuffs - Tera Slash 1",
				timeRange = true,
				timelineIndex = 74,
				timerEndOffset = -0.5,
				timerStartOffset = -5,
				uuid = "b9f451da-c8cd-cf41-844b-cd24df833c2c",
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
				name = "DPS Mitigation",
				uuid = "d14f8ea9-5b7b-f740-b15e-8fd602b43e35",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7394,
							conditions = 
							{
								
								{
									"139d2b56-5322-4af9-9264-81ed03586800",
									true,
								},
								
								{
									"487f6f18-c2c2-7a88-8c51-64ddea9626ec",
									true,
								},
							},
							uuid = "2ee3f976-e9ba-bd1c-a120-d2dfc7db462f",
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
									"9be4bd41-a215-19e7-8be9-5ddcd1d6facc",
									true,
								},
								
								{
									"22c2fc23-dffb-1897-b291-199d3dd16bd1",
									true,
								},
							},
							gVar = "ACR_RikuNIN3_Hotbar_ShadeShift",
							uuid = "faecfb9d-f285-4d2f-9d0a-6f7e637cd652",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 36962,
							conditions = 
							{
								
								{
									"3475b2cb-b0af-5ebf-b6b6-0181712644be",
									true,
								},
								
								{
									"9d8a0bdb-3c05-e746-a5d5-9e0e7ffaedb8",
									true,
								},
							},
							uuid = "221549f1-198f-0b3d-8cac-3f7934a75fd2",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 24404,
							conditions = 
							{
								
								{
									"f7a4473f-ab50-44ca-9c84-67f1dc78205a",
									true,
								},
								
								{
									"86e9a5cc-9c15-fa31-85af-f420f646aad0",
									true,
								},
							},
							uuid = "b837a7f5-6738-2828-b2f0-3fa765a2e6f5",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7405,
							conditions = 
							{
								
								{
									"14c2cf84-affc-c798-b173-b2af6a8ce713",
									true,
								},
								
								{
									"85d5a7ab-7b36-6e9a-b469-51510eca8836",
									true,
								},
							},
							uuid = "fbfee62c-9428-3c8c-a153-90758beba28d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							conditions = 
							{
								
								{
									"04f2e633-9429-fb7f-ab1f-368200f7bf93",
									true,
								},
								
								{
									"5655c70b-2e64-b7ef-81ed-7f3eeaa79eeb",
									true,
								},
							},
							uuid = "d65f983d-1619-d730-b644-8babf18c18c8",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							conditions = 
							{
								
								{
									"0d5bf83e-057c-82be-9858-ae8fd906433f",
									true,
								},
								
								{
									"f2be4af3-8545-3671-8b5f-0f85d62e6c1a",
									true,
								},
							},
							uuid = "19a0f863-a9d8-3c91-8bc8-3e25722eb504",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 157,
							conditions = 
							{
								
								{
									"b26f93a5-26db-1bc7-8b9e-73adee4cb526",
									true,
								},
								
								{
									"838e66fd-bf38-8d63-ad9d-9ab0de3ed7fa",
									true,
								},
							},
							uuid = "5301d8b4-14db-8612-bde0-8b352a2b6cba",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25799,
							conditions = 
							{
								
								{
									"df22261e-3387-b4e9-b1db-21cfc549e6c3",
									true,
								},
								
								{
									"cf3859a4-e99e-2eb6-bed4-fc099b30ee7c",
									true,
								},
							},
							uuid = "e95a739a-43f6-aa03-ae19-b08f0b8357de",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25857,
							conditions = 
							{
								
								{
									"f663395e-e3be-8923-8fd8-bb596ab42e66",
									true,
								},
								
								{
									"f6881b83-d31c-8424-b21e-ef8c127425d9",
									true,
								},
							},
							uuid = "6af655ac-d629-384d-8226-47e56f525533",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 34685,
							conditions = 
							{
								
								{
									"cfea190b-0108-d298-9ec5-7d150eba08e7",
									true,
								},
								
								{
									"1d8e792b-bbca-6232-bed1-4c9fac39e45a",
									true,
								},
							},
							uuid = "f74e5463-9fc9-4f42-9b68-3f3842e82cbb",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MONK",
							name = "MONK",
							uuid = "139d2b56-5322-4af9-9264-81ed03586800",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7394,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7394",
							uuid = "487f6f18-c2c2-7a88-8c51-64ddea9626ec",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "NINJA",
							name = "NINJA",
							uuid = "9be4bd41-a215-19e7-8be9-5ddcd1d6facc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 2241,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 2241",
							uuid = "22c2fc23-dffb-1897-b291-199d3dd16bd1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "SAMURAI",
							name = "SAMURAI",
							uuid = "3475b2cb-b0af-5ebf-b6b6-0181712644be",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 36962,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 36962",
							uuid = "9d8a0bdb-3c05-e746-a5d5-9e0e7ffaedb8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "REAPER",
							name = "REAPER",
							uuid = "f7a4473f-ab50-44ca-9c84-67f1dc78205a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 24404,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 24404",
							uuid = "86e9a5cc-9c15-fa31-85af-f420f646aad0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "BARD",
							name = "BARD",
							uuid = "14c2cf84-affc-c798-b173-b2af6a8ce713",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7405,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7405",
							uuid = "85d5a7ab-7b36-6e9a-b469-51510eca8836",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MACHINIST",
							name = "MACHINIST",
							uuid = "04f2e633-9429-fb7f-ab1f-368200f7bf93",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 16889",
							uuid = "5655c70b-2e64-b7ef-81ed-7f3eeaa79eeb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "DANCER",
							name = "DANCER",
							uuid = "0d5bf83e-057c-82be-9858-ae8fd906433f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 16012",
							uuid = "f2be4af3-8545-3671-8b5f-0f85d62e6c1a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "BLACKMAGE",
							name = "BLACKMAGE",
							uuid = "b26f93a5-26db-1bc7-8b9e-73adee4cb526",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 157,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 157",
							uuid = "838e66fd-bf38-8d63-ad9d-9ab0de3ed7fa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "SUMMONER",
							name = "SUMMONER",
							uuid = "df22261e-3387-b4e9-b1db-21cfc549e6c3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25799,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 25799",
							uuid = "cf3859a4-e99e-2eb6-bed4-fc099b30ee7c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "REDMAGE",
							name = "REDMAGE",
							uuid = "f663395e-e3be-8923-8fd8-bb596ab42e66",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25857,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 25857",
							uuid = "f6881b83-d31c-8424-b21e-ef8c127425d9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "PICTOMANCER",
							name = "PICTOMANCER",
							uuid = "cfea190b-0108-d298-9ec5-7d150eba08e7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 34685,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 34685",
							uuid = "1d8e792b-bbca-6232-bed1-4c9fac39e45a",
							version = 3,
						},
					},
				},
				displayPath = "DPS Mitigation",
				mechanicTime = 868.2,
				name = "DPS shields - Atomic Ray 1",
				timeRange = true,
				timelineIndex = 75,
				timerEndOffset = 3.5,
				timerStartOffset = 1.5,
				uuid = "30ebebb9-d98c-1e43-b8a4-6355c7c4db17",
				version = 2,
			},
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
									"1bd0ee4a-dcd6-f847-84c4-15bfbf6d558d",
									true,
								},
								
								{
									"2ca51bd9-44b6-1849-b160-af98963f49f6",
									true,
								},
								
								{
									"fd10abd9-75c6-6cbb-99a2-93ddccb0e3b2",
									true,
								},
							},
							uuid = "cda18cc0-64ff-14c3-859b-66fc4b85bf82",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"91f581da-36a1-9039-bee2-c382d74bd2ba",
									true,
								},
								
								{
									"45bd2868-bd00-8f2f-a168-5511d2b6b317",
									true,
								},
								
								{
									"a4f9de23-3fd3-5511-96b3-4dbd0582fa5a",
									true,
								},
							},
							uuid = "e40e9f66-b604-7b80-a2ed-2fc32d90424b",
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
									"dabb656d-46ab-25db-a0a7-54405c2feacd",
									true,
								},
								
								{
									"1c1b8116-7ed1-cf35-80f3-c5e8ffb03157",
									true,
								},
								
								{
									"4ea694cf-31ce-4aa6-850e-ed505001db82",
									true,
								},
							},
							gVar = "ACR_RikuNIN3_Hotbar_SecondWind",
							uuid = "22d94ea6-4cd2-c5df-a6c2-d52a1977e558",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"748fdc79-e3cc-7d8c-bcf8-ffda6a79140f",
									true,
								},
								
								{
									"a088c22e-370c-6a41-a3ff-cc5ddb971c98",
									true,
								},
								
								{
									"8d559b21-fb5d-177b-b450-0075109c538c",
									true,
								},
							},
							uuid = "e4bfbdba-17d7-2665-8c06-bcd4790b7a1c",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"07032dcd-0e98-8900-b6fd-3a152bb0025a",
									true,
								},
								
								{
									"b346320a-f033-c18f-a748-72961404d4f6",
									true,
								},
								
								{
									"33420e86-71df-15d7-84d2-79fa897b4d6e",
									true,
								},
							},
							uuid = "4e6367c4-d445-f1a8-8991-1306d6f82718",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"d85629d3-624a-5c76-b75b-cd372b8ceb5a",
									true,
								},
								
								{
									"48aacb39-5617-9e85-ba34-dc29feffcd36",
									true,
								},
								
								{
									"2d8699d2-1ca3-ae7e-9e94-474def550c32",
									true,
								},
							},
							uuid = "10a58212-3f40-537a-a15a-4e47d8630f3c",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"3efdb694-6209-54a2-93a4-5366f74b86aa",
									true,
								},
								
								{
									"5358af54-7c74-4363-96f7-7e67369b8ecc",
									true,
								},
								
								{
									"e309e4d1-3063-50d1-8903-0728878009cf",
									true,
								},
							},
							uuid = "69136624-cecf-4166-ae59-15d708a5a0ff",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"e8d169cd-fea1-21d0-9c54-d4182c9f472e",
									true,
								},
								
								{
									"6f2d41b0-f6f2-9432-89d4-551c861a5f4e",
									true,
								},
								
								{
									"45b13689-e013-fb0c-afbc-4a563a57b611",
									true,
								},
							},
							uuid = "87fc9360-bcb6-3fea-ba70-1cb2b2d2ea5c",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"edbf4509-c57e-b325-9cc4-c1b2b1898684",
									true,
								},
								
								{
									"7827d98d-b976-658e-9b73-410ff0d61d58",
									true,
								},
								
								{
									"87364d44-69eb-3606-a735-6e13018c2fe3",
									true,
								},
							},
							uuid = "d30586ee-c38c-7c51-bb55-566b0c37fb7c",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MONK",
							name = "MONK",
							uuid = "1bd0ee4a-dcd6-f847-84c4-15bfbf6d558d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "2ca51bd9-44b6-1849-b160-af98963f49f6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "fd10abd9-75c6-6cbb-99a2-93ddccb0e3b2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "DRAGOON",
							name = "DRAGOON",
							uuid = "91f581da-36a1-9039-bee2-c382d74bd2ba",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "45bd2868-bd00-8f2f-a168-5511d2b6b317",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "a4f9de23-3fd3-5511-96b3-4dbd0582fa5a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "NINJA",
							name = "NINJA",
							uuid = "dabb656d-46ab-25db-a0a7-54405c2feacd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "1c1b8116-7ed1-cf35-80f3-c5e8ffb03157",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "4ea694cf-31ce-4aa6-850e-ed505001db82",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "SAMURAI",
							name = "SAMURAI",
							uuid = "748fdc79-e3cc-7d8c-bcf8-ffda6a79140f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "a088c22e-370c-6a41-a3ff-cc5ddb971c98",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "8d559b21-fb5d-177b-b450-0075109c538c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "REAPER",
							name = "REAPER",
							uuid = "07032dcd-0e98-8900-b6fd-3a152bb0025a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "b346320a-f033-c18f-a748-72961404d4f6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "33420e86-71df-15d7-84d2-79fa897b4d6e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "VIPER",
							name = "VIPER",
							uuid = "d85629d3-624a-5c76-b75b-cd372b8ceb5a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "48aacb39-5617-9e85-ba34-dc29feffcd36",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "2d8699d2-1ca3-ae7e-9e94-474def550c32",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "BARD",
							name = "BARD",
							uuid = "3efdb694-6209-54a2-93a4-5366f74b86aa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "5358af54-7c74-4363-96f7-7e67369b8ecc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "e309e4d1-3063-50d1-8903-0728878009cf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MACHINIST",
							name = "MACHINIST",
							uuid = "e8d169cd-fea1-21d0-9c54-d4182c9f472e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "6f2d41b0-f6f2-9432-89d4-551c861a5f4e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "45b13689-e013-fb0c-afbc-4a563a57b611",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "DANCER",
							name = "DANCER",
							uuid = "edbf4509-c57e-b325-9cc4-c1b2b1898684",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "7827d98d-b976-658e-9b73-410ff0d61d58",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "87364d44-69eb-3606-a735-6e13018c2fe3",
							version = 3,
						},
					},
				},
				displayPath = "DPS Mitigation",
				mechanicTime = 868.2,
				name = "DPS recovery - Atomic Ray 1",
				timeRange = true,
				timelineIndex = 75,
				timerEndOffset = 8,
				timerStartOffset = 4.8,
				uuid = "5e530ac9-c2ba-95f2-8890-f942f411276d",
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
				name = "Shinryu Unreal",
				uuid = "0d0d9852-8213-39f8-8f9c-da15b7f8fba6",
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
				displayPath = "Shinryu Unreal",
				eventType = 3,
				execute = "\nif eventArgs.entityContentID == 5641 then\n    local spell = eventArgs.spellID\n    if spell == 50308 then\n        local duration = math.max(1, eventArgs.channelTimeMax or 0) * 1000\n        TensorCore.addAlertText(duration, \"keep moving for ice\", 1.35, 2, false)\n    end\nend\nself.used = true\n",
				executeType = 2,
				mechanicTime = 885.9,
				name = "Ice Storm freeze timing",
				timeRange = true,
				timelineIndex = 76,
				timerEndOffset = 0.5,
				timerStartOffset = -7,
				uuid = "069ec770-f02c-2a32-a371-ee8e13980a9b",
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
				name = "Shinryu Unreal",
				uuid = "1e401805-549f-72f7-8e87-a788b7fb60d7",
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
				displayPath = "Shinryu Unreal",
				eventType = 3,
				execute = "if eventArgs.entityContentID == 5642 then\n    local spell = eventArgs.spellID\n    local duration = math.max(1, eventArgs.channelTimeMax or 0) * 1000\n    if spell == 50306 then\n        TensorCore.addAlertText(duration, \"Bait Levinbolt, keep moving\", 1.35, 2, false)\n    elseif spell == 50244 then\n        TensorCore.addAlertText(duration, \"Hypernova: stop to get frozen\", 1.35, 2, false)\n    elseif spell == 50307 and not data.shinryu_late_icicle_warned_889 then\n        TensorCore.addAlertText(duration, \"Dodge Icicle\", 1.35, 2, true)\n        data.shinryu_late_icicle_warned_889 = true\n    end\nend\nself.used = true",
				executeType = 2,
				mechanicTime = 889.9,
				name = "Late Levinbolt mechanic callout",
				timeRange = true,
				timelineIndex = 77,
				timerEndOffset = 0.5,
				timerStartOffset = -11,
				uuid = "34d7e1a2-6384-808b-bd62-45d02b6cf3b7",
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
				name = "Shinryu Unreal",
				uuid = "b25787a7-421e-fb1f-b73d-1afdf93e5ce6",
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
				displayPath = "Shinryu Unreal",
				eventType = 3,
				execute = "\nif eventArgs.spellID == 50293 and eventArgs.entityContentID == 5640 then\n    local duration = (eventArgs.channelTimeMax + 0.75) * 1000\n    local drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15, 1.0, 0.25, 0.40), 3)\n    drawer:addTimedCircleOnEnt(duration, eventArgs.entityID, 14, 0, false, true)\n    TensorCore.addAlertText(duration, \"WORMWAIL: stay inside the inner circle\", 1.35, 1, false)\nend\nself.used = true\n",
				executeType = 2,
				mechanicTime = 897.9,
				name = "Wormwail inner safe circle",
				timeRange = true,
				timelineIndex = 78,
				timerEndOffset = 0.5,
				timerStartOffset = -5.5,
				uuid = "6b8a8bc8-d5bc-604c-8435-22264cff600b",
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
				name = "Shinryu Unreal",
				uuid = "d97e0e31-3d33-3508-b7e9-9830106190fb",
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
				displayPath = "Shinryu Unreal",
				execute = "local roster = AnyoneCore and AnyoneCore.Roster\nif roster and roster.current() ~= nil then\n    local slot = roster.mySlot()\n    if (slot == \"H1\" or slot == \"H2\") and not data.shinryu_healer915_called then\n        TensorCore.addAlertText(2500, \"Heal dragons to full\", 1.35, 3, true)\n        data.shinryu_healer915_called = true\n    end\nend\nself.used = true",
				executeType = 2,
				loop = true,
				mechanicTime = 910.8,
				name = "Healers heal dragons",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = 4.8,
				timerStartOffset = 3.7,
				uuid = "f2cbdf85-7c8e-3c48-a051-19bec5717471",
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
				name = "DPS Mitigation",
				uuid = "b232d533-1d47-72c6-8c49-07fa61615cea",
			},
			objectType = "folder",
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
									"3687cd01-ec9f-9598-a23a-dc892b6a9178",
									true,
								},
								
								{
									"fed3a463-c59c-979b-8680-c979f75538ca",
									true,
								},
								
								{
									"22a74a72-8838-30b7-a0ef-5ebcd7c9c7ad",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "e617c779-9019-6e7f-8965-521e8e44a1eb",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							conditions = 
							{
								
								{
									"622703f5-42bd-aead-afee-1cb0696bc016",
									true,
								},
								
								{
									"c684480b-012d-b01b-a04f-fc119adf2e37",
									true,
								},
								
								{
									"c2ca2a3c-4626-9d4e-aa5b-fabf834a1597",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "0cc5da7e-244e-9354-a9ef-e9b7ad8c42d0",
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
									"9231bff1-a391-3f15-b3f1-9961f75fdda2",
									true,
								},
								
								{
									"7cb60352-531f-2ee1-9ac0-059a26d9680e",
									true,
								},
								
								{
									"dcd90bbf-2a20-9447-bb81-4988a4b30b75",
									true,
								},
							},
							gVar = "ACR_RikuNIN3_Hotbar_Feint",
							uuid = "dd6901f8-5410-9916-aca1-a033084d8c66",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							conditions = 
							{
								
								{
									"47811006-02e5-6007-9759-0008fc0b9dbb",
									true,
								},
								
								{
									"b63b0791-ff27-8905-996a-687244c17bd1",
									true,
								},
								
								{
									"dd0f2967-f958-56f6-a0fc-80103f4a5dfb",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "32e29086-f0e1-355b-ae27-53c130c356ec",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							conditions = 
							{
								
								{
									"514d6aca-b92d-30f5-be9e-a5b2c628fefc",
									true,
								},
								
								{
									"2da899f8-9504-01bd-8647-c95636179e8f",
									true,
								},
								
								{
									"2b7ec1e4-8f98-fe68-a58e-dd7ed60977ee",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "2fe18d52-4c10-1905-9e15-94a9c7c061a0",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							conditions = 
							{
								
								{
									"d346d9da-afd9-8fc8-a51a-d181cc491cb2",
									true,
								},
								
								{
									"2cbec005-2dc1-19cf-aa7f-ae11a3c96ef1",
									true,
								},
								
								{
									"13dde2a9-07a2-b6c5-8e75-53688133cc58",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "7473f0f9-f360-08cc-977b-c23dca2ff623",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 2887,
							conditions = 
							{
								
								{
									"06ff0202-4121-96f2-bd75-8a52e1abbcb5",
									true,
								},
								
								{
									"be104e96-8681-f4bd-8f18-07d0ccc197ca",
									true,
								},
								
								{
									"f0bf78e1-cdf9-0195-911b-361ef96b664b",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "9e913b26-8626-f18a-886d-6ce57aaf4760",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							conditions = 
							{
								
								{
									"ffc592a6-ffeb-0687-8b72-c5a77a6b4965",
									true,
								},
								
								{
									"6d1701ca-6be8-7ea8-9cd1-1ea436d5a4fd",
									true,
								},
								
								{
									"a5a72e7c-e1cf-d5fd-bbd6-1f1e220ec115",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "a473e9f0-31f1-c04d-b682-2c539470235f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							conditions = 
							{
								
								{
									"5cf8404f-95db-1ab3-b891-9fa277cbd8dd",
									true,
								},
								
								{
									"9efd91de-6058-9aab-9d25-8533d7448202",
									true,
								},
								
								{
									"b938652f-a090-7608-a2c6-349653d16b58",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "a43a290a-16d6-e8a0-a9e5-b65d243beb57",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							conditions = 
							{
								
								{
									"b9ede52b-6f76-a0fa-ad9b-f3d872a71efc",
									true,
								},
								
								{
									"87880b51-f4ed-5b64-896b-c5f04c7236f3",
									true,
								},
								
								{
									"e182a14e-662d-9f75-8cfc-36a56e3b485d",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "642f9d22-2727-b5b9-86bb-8a681d30eda6",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							conditions = 
							{
								
								{
									"ce60dad4-260a-92da-ac70-9d2a14d482bd",
									true,
								},
								
								{
									"2cc6afaa-934a-f5db-8d63-edfacb263f9f",
									true,
								},
								
								{
									"8bd59634-9e4e-cb15-9c4d-154e1967b38b",
									true,
								},
							},
							targetType = "Current Target",
							uuid = "08cf7db1-8fd0-7a15-8250-e7f010ddb034",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MONK",
							name = "MONK",
							uuid = "3687cd01-ec9f-9598-a23a-dc892b6a9178",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7549",
							uuid = "fed3a463-c59c-979b-8680-c979f75538ca",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "22a74a72-8838-30b7-a0ef-5ebcd7c9c7ad",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "DRAGOON",
							name = "DRAGOON",
							uuid = "622703f5-42bd-aead-afee-1cb0696bc016",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7549",
							uuid = "c684480b-012d-b01b-a04f-fc119adf2e37",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "c2ca2a3c-4626-9d4e-aa5b-fabf834a1597",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "NINJA",
							name = "NINJA",
							uuid = "9231bff1-a391-3f15-b3f1-9961f75fdda2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7549",
							uuid = "7cb60352-531f-2ee1-9ac0-059a26d9680e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "dcd90bbf-2a20-9447-bb81-4988a4b30b75",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "SAMURAI",
							name = "SAMURAI",
							uuid = "47811006-02e5-6007-9759-0008fc0b9dbb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7549",
							uuid = "b63b0791-ff27-8905-996a-687244c17bd1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "dd0f2967-f958-56f6-a0fc-80103f4a5dfb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "REAPER",
							name = "REAPER",
							uuid = "514d6aca-b92d-30f5-be9e-a5b2c628fefc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7549",
							uuid = "2da899f8-9504-01bd-8647-c95636179e8f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "2b7ec1e4-8f98-fe68-a58e-dd7ed60977ee",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "VIPER",
							name = "VIPER",
							uuid = "d346d9da-afd9-8fc8-a51a-d181cc491cb2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7549,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7549",
							uuid = "2cbec005-2dc1-19cf-aa7f-ae11a3c96ef1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "13dde2a9-07a2-b6c5-8e75-53688133cc58",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MACHINIST",
							name = "MACHINIST",
							uuid = "06ff0202-4121-96f2-bd75-8a52e1abbcb5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 2887,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 2887",
							uuid = "be104e96-8681-f4bd-8f18-07d0ccc197ca",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "f0bf78e1-cdf9-0195-911b-361ef96b664b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "BLACKMAGE",
							name = "BLACKMAGE",
							uuid = "ffc592a6-ffeb-0687-8b72-c5a77a6b4965",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7560",
							uuid = "6d1701ca-6be8-7ea8-9cd1-1ea436d5a4fd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "a5a72e7c-e1cf-d5fd-bbd6-1f1e220ec115",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "SUMMONER",
							name = "SUMMONER",
							uuid = "5cf8404f-95db-1ab3-b891-9fa277cbd8dd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7560",
							uuid = "9efd91de-6058-9aab-9d25-8533d7448202",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "b938652f-a090-7608-a2c6-349653d16b58",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "REDMAGE",
							name = "REDMAGE",
							uuid = "b9ede52b-6f76-a0fa-ad9b-f3d872a71efc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7560",
							uuid = "87880b51-f4ed-5b64-896b-c5f04c7236f3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "e182a14e-662d-9f75-8cfc-36a56e3b485d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "PICTOMANCER",
							name = "PICTOMANCER",
							uuid = "ce60dad4-260a-92da-ac70-9d2a14d482bd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7560,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7560",
							uuid = "2cc6afaa-934a-f5db-8d63-edfacb263f9f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 5640,
							name = "Target Shinryu",
							uuid = "8bd59634-9e4e-cb15-9c4d-154e1967b38b",
							version = 3,
						},
					},
				},
				displayPath = "DPS Mitigation",
				mechanicTime = 957.4,
				name = "DPS debuffs - Tera Slash 3",
				timeRange = true,
				timelineIndex = 81,
				timerEndOffset = -0.5,
				timerStartOffset = -5,
				uuid = "1e72b1d1-0b4e-7797-b995-90d8596b473d",
				version = 2,
			},
		},
	},
	[82] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal",
				uuid = "8b817de6-a0e9-707a-ab10-3077681f52e6",
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
				displayPath = "Shinryu Unreal",
				eventType = 15,
				execute = "data.shinryu_burning_chain_pair = data.shinryu_burning_chain_pair or {}\nlocal state = data.shinryu_burning_chain_pair\nif not state.clear then\n    state.clear = function(s)\n        if s.playerCircle then Argus.deleteTimedShape(s.playerCircle) end\n        if s.partnerCircle then Argus.deleteTimedShape(s.partnerCircle) end\n        if s.link then Argus.deleteTimedShape(s.link) end\n        s.playerCircle = nil\n        s.partnerCircle = nil\n        s.link = nil\n        s.partnerID = nil\n    end\nend\n\nlocal player = TensorCore.mGetPlayer()\nif player and player.id and player.id > 0 then\n    local playerID = player.id\n    local sourceID = eventArgs.sourceEntityID\n    local targetID = eventArgs.newTargetID\n\n    if eventArgs.newTetherID == 9 then\n        local partnerID = nil\n        if sourceID == playerID then\n            partnerID = targetID\n        elseif targetID == playerID then\n            partnerID = sourceID\n        end\n\n        if partnerID and partnerID > 0 then\n            state.clear(state)\n            state.partnerID = partnerID\n            local drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.1, 0.95, 0.65, 0.9), 1.5)\n            state.playerCircle = drawer:addTimedCircleOnEnt(15000, playerID, 1.6, 0, false, true)\n            state.partnerCircle = drawer:addTimedCircleOnEnt(15000, partnerID, 1.6, 0, false, true)\n            state.link = drawer:addTimedRectOnEnt(15000, playerID, 0.5, 0.22, partnerID, 0, false, false, true, 0, false)\n        end\n    elseif eventArgs.oldTetherID == 9 then\n        local oldTargetID = eventArgs.oldTargetID\n        if sourceID == playerID or oldTargetID == playerID or sourceID == state.partnerID or oldTargetID == state.partnerID then\n            state.clear(state)\n        end\n    end\nend\nself.used = true",
				executeType = 2,
				loop = true,
				mechanicTime = 966.1,
				name = "Burning Chain pair marks",
				timeRange = true,
				timelineIndex = 82,
				timerEndOffset = 17,
				timerStartOffset = -4,
				uuid = "d6c9490a-9a3a-f7c4-8809-3f7ab3f609a8",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "DPS Mitigation",
				uuid = "2520f8f2-b203-636c-abf5-2ff0c82adf49",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7394,
							conditions = 
							{
								
								{
									"6c916a0d-4948-ae6a-97eb-6858ae133d5b",
									true,
								},
								
								{
									"9cc20403-5cbb-329d-bb49-407919f47f19",
									true,
								},
							},
							uuid = "aa6d429d-407f-eb67-ada5-558842413283",
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
									"b5556382-e408-de4d-bc54-815b9f34b996",
									true,
								},
								
								{
									"a53b1940-1193-dc42-b5d7-589a2485ee74",
									true,
								},
							},
							gVar = "ACR_RikuNIN3_Hotbar_ShadeShift",
							uuid = "3dadbc81-bf54-8efd-bacd-30406f216e19",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 36962,
							conditions = 
							{
								
								{
									"57cc4431-894d-e753-8c26-461b72958d56",
									true,
								},
								
								{
									"f5db8e14-f971-5ea4-816f-1a06bf8d2491",
									true,
								},
							},
							uuid = "890e2d46-cedb-2f3c-8d00-1c8605272886",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 24404,
							conditions = 
							{
								
								{
									"f230ea7b-4670-49c8-b863-377cffe94ff8",
									true,
								},
								
								{
									"af2f504b-35a0-df2e-9ec8-0181ad3746e8",
									true,
								},
							},
							uuid = "5d09e0fa-7ad9-4a74-bca1-908f5d2092c9",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7405,
							conditions = 
							{
								
								{
									"d791775d-e2ab-8841-b3b3-ab1c54f2c00b",
									true,
								},
								
								{
									"212ece94-7bca-7873-9375-bc86924a3cae",
									true,
								},
							},
							uuid = "96bcadb2-a098-bb60-b627-936f044a3be3",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							conditions = 
							{
								
								{
									"51c5dfbd-bc6c-c6b4-a807-0ca0878a145c",
									true,
								},
								
								{
									"b0f2a265-3132-68a0-aedb-fb68ecb4cc56",
									true,
								},
							},
							uuid = "dd1e1568-4d0e-9deb-9bee-dca1a94ca336",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							conditions = 
							{
								
								{
									"af37157d-d7a3-075d-a759-e91d1def53e7",
									true,
								},
								
								{
									"ff63ea3b-1ed1-63bd-bdc4-1215f044d0a7",
									true,
								},
							},
							uuid = "5acd70f2-c14c-798b-8335-491816441d69",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 157,
							conditions = 
							{
								
								{
									"dcbae1eb-6b61-592c-badb-bf69d8acde8f",
									true,
								},
								
								{
									"bdfb79fa-1593-5622-bbdd-28168addc594",
									true,
								},
							},
							uuid = "4419ace0-0761-4013-a2c1-013cab530e20",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25799,
							conditions = 
							{
								
								{
									"6df5c441-0d2c-432a-8199-ddbe200c9b5c",
									true,
								},
								
								{
									"b3236e2c-3dca-c1cb-9143-a4cde7503364",
									true,
								},
							},
							uuid = "3477f88b-3161-d41b-b170-0d6bc860eee2",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25857,
							conditions = 
							{
								
								{
									"3e7cba75-77bb-c37f-9279-2a04c9c10894",
									true,
								},
								
								{
									"afb6047a-97b4-0605-84c1-1ec61f66822c",
									true,
								},
							},
							uuid = "e727ff32-8f1f-7ed5-8cf0-13249afcd567",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 34685,
							conditions = 
							{
								
								{
									"42574813-79ec-7f19-99af-3ddbc60efcdf",
									true,
								},
								
								{
									"5b40bb7d-6b57-0b5a-a2a2-f54b4fb17829",
									true,
								},
							},
							uuid = "03006e26-c174-61bf-b185-1313f783a1b7",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MONK",
							name = "MONK",
							uuid = "6c916a0d-4948-ae6a-97eb-6858ae133d5b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7394,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7394",
							uuid = "9cc20403-5cbb-329d-bb49-407919f47f19",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "NINJA",
							name = "NINJA",
							uuid = "b5556382-e408-de4d-bc54-815b9f34b996",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 2241,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 2241",
							uuid = "a53b1940-1193-dc42-b5d7-589a2485ee74",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "SAMURAI",
							name = "SAMURAI",
							uuid = "57cc4431-894d-e753-8c26-461b72958d56",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 36962,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 36962",
							uuid = "f5db8e14-f971-5ea4-816f-1a06bf8d2491",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "REAPER",
							name = "REAPER",
							uuid = "f230ea7b-4670-49c8-b863-377cffe94ff8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 24404,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 24404",
							uuid = "af2f504b-35a0-df2e-9ec8-0181ad3746e8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "BARD",
							name = "BARD",
							uuid = "d791775d-e2ab-8841-b3b3-ab1c54f2c00b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7405,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7405",
							uuid = "212ece94-7bca-7873-9375-bc86924a3cae",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MACHINIST",
							name = "MACHINIST",
							uuid = "51c5dfbd-bc6c-c6b4-a807-0ca0878a145c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16889,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 16889",
							uuid = "b0f2a265-3132-68a0-aedb-fb68ecb4cc56",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "DANCER",
							name = "DANCER",
							uuid = "af37157d-d7a3-075d-a759-e91d1def53e7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16012,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 16012",
							uuid = "ff63ea3b-1ed1-63bd-bdc4-1215f044d0a7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "BLACKMAGE",
							name = "BLACKMAGE",
							uuid = "dcbae1eb-6b61-592c-badb-bf69d8acde8f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 157,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 157",
							uuid = "bdfb79fa-1593-5622-bbdd-28168addc594",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "SUMMONER",
							name = "SUMMONER",
							uuid = "6df5c441-0d2c-432a-8199-ddbe200c9b5c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25799,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 25799",
							uuid = "b3236e2c-3dca-c1cb-9143-a4cde7503364",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "REDMAGE",
							name = "REDMAGE",
							uuid = "3e7cba75-77bb-c37f-9279-2a04c9c10894",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25857,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 25857",
							uuid = "afb6047a-97b4-0605-84c1-1ec61f66822c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "PICTOMANCER",
							name = "PICTOMANCER",
							uuid = "42574813-79ec-7f19-99af-3ddbc60efcdf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 34685,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 34685",
							uuid = "5b40bb7d-6b57-0b5a-a2a2-f54b4fb17829",
							version = 3,
						},
					},
				},
				displayPath = "DPS Mitigation",
				mechanicTime = 966.1,
				name = "DPS shields - Atomic Ray 2",
				timeRange = true,
				timelineIndex = 82,
				timerEndOffset = 3.5,
				timerStartOffset = 1.5,
				uuid = "10ca8806-baa3-8ede-a31e-c8f23add6b72",
				version = 2,
			},
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
									"76254d85-5200-4fd5-acbb-b6b29e1b6409",
									true,
								},
								
								{
									"299bd8fa-99cf-03a9-a4ea-fb85aa64019d",
									true,
								},
								
								{
									"c7c5c2b1-a01c-1bdf-8dbd-5e593cefb7a8",
									true,
								},
							},
							uuid = "3b020af2-3970-d57c-9767-32afe9f5a114",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"10b941b8-48e1-d1b1-9b4f-c57d4773ca33",
									true,
								},
								
								{
									"e1eb0d75-145f-2974-9c3e-723db8cdb008",
									true,
								},
								
								{
									"c6f75778-cc21-2173-9092-9477c39c042c",
									true,
								},
							},
							uuid = "8eb18909-43eb-0f8a-beaf-98477528fd17",
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
									"0e848e27-7f50-c9c8-83be-6578d4b799b3",
									true,
								},
								
								{
									"a6238906-cca7-b0ce-933c-444ab468347c",
									true,
								},
								
								{
									"3f794e68-51dd-32f9-a66f-bec53257fa62",
									true,
								},
							},
							gVar = "ACR_RikuNIN3_Hotbar_SecondWind",
							uuid = "b557162f-a495-13a2-aac8-4401aef63fb4",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"da3d6fd9-7026-8f7a-9e56-4c9cf1499b9d",
									true,
								},
								
								{
									"5216e773-c081-ec25-a9d8-4b7f970c006e",
									true,
								},
								
								{
									"66c9f5ed-915c-ff1e-8d24-ad6df142b2b1",
									true,
								},
							},
							uuid = "bd1b714b-9f03-4d8f-9017-8f6f34ab7251",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"f5abf97b-eb77-775b-9dd0-a041ae85587d",
									true,
								},
								
								{
									"02604b95-d630-8cb5-92d9-425022b0f9d6",
									true,
								},
								
								{
									"b62f3be5-2a6a-37cc-aaa6-9f39c25978c3",
									true,
								},
							},
							uuid = "c716a109-c7d1-264a-95f8-6af376c77319",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"3b39aeae-2fd2-0664-9404-cf2cf07bf832",
									true,
								},
								
								{
									"34cf9182-0b36-93c4-a964-c39ea8aaf1c8",
									true,
								},
								
								{
									"68e39b0d-34a6-bb31-8a20-565ffe3ffac5",
									true,
								},
							},
							uuid = "b672d0d0-4069-fd6a-9947-d36460866329",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"82b33d8b-c85c-ac69-9e49-479a257cc5a0",
									true,
								},
								
								{
									"7858ce3d-5b12-aa37-9864-a9869c1d6a8e",
									true,
								},
								
								{
									"37e810e3-61ec-249b-b167-daf5ed35afe2",
									true,
								},
							},
							uuid = "b22b852b-2723-4c7a-81a3-5c7caa292809",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"27df4fbd-e20c-1bac-90f1-f6ca4dd6d15d",
									true,
								},
								
								{
									"1dd8cc51-baf2-6276-b682-60e5ca510214",
									true,
								},
								
								{
									"f1b98107-8e91-9fc3-bac2-3c74fdd74adc",
									true,
								},
							},
							uuid = "72fbbdc3-196f-22c0-9fb6-d60628b9061a",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							conditions = 
							{
								
								{
									"26b97406-5948-8a79-b2da-ea5091350d45",
									true,
								},
								
								{
									"8013f103-4c98-ba5a-a822-1f26b3d0273f",
									true,
								},
								
								{
									"cf014bf5-baa5-9b8a-9b67-fc9b74330bad",
									true,
								},
							},
							uuid = "3c3afa66-be07-7d22-801b-3a694e2494d3",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MONK",
							name = "MONK",
							uuid = "76254d85-5200-4fd5-acbb-b6b29e1b6409",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "299bd8fa-99cf-03a9-a4ea-fb85aa64019d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "c7c5c2b1-a01c-1bdf-8dbd-5e593cefb7a8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "DRAGOON",
							name = "DRAGOON",
							uuid = "10b941b8-48e1-d1b1-9b4f-c57d4773ca33",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "e1eb0d75-145f-2974-9c3e-723db8cdb008",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "c6f75778-cc21-2173-9092-9477c39c042c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "NINJA",
							name = "NINJA",
							uuid = "0e848e27-7f50-c9c8-83be-6578d4b799b3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "a6238906-cca7-b0ce-933c-444ab468347c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "3f794e68-51dd-32f9-a66f-bec53257fa62",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "SAMURAI",
							name = "SAMURAI",
							uuid = "da3d6fd9-7026-8f7a-9e56-4c9cf1499b9d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "5216e773-c081-ec25-a9d8-4b7f970c006e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "66c9f5ed-915c-ff1e-8d24-ad6df142b2b1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "REAPER",
							name = "REAPER",
							uuid = "f5abf97b-eb77-775b-9dd0-a041ae85587d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "02604b95-d630-8cb5-92d9-425022b0f9d6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "b62f3be5-2a6a-37cc-aaa6-9f39c25978c3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "VIPER",
							name = "VIPER",
							uuid = "3b39aeae-2fd2-0664-9404-cf2cf07bf832",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "34cf9182-0b36-93c4-a964-c39ea8aaf1c8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "68e39b0d-34a6-bb31-8a20-565ffe3ffac5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "BARD",
							name = "BARD",
							uuid = "82b33d8b-c85c-ac69-9e49-479a257cc5a0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "7858ce3d-5b12-aa37-9864-a9869c1d6a8e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "37e810e3-61ec-249b-b167-daf5ed35afe2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "MACHINIST",
							name = "MACHINIST",
							uuid = "27df4fbd-e20c-1bac-90f1-f6ca4dd6d15d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "1dd8cc51-baf2-6276-b682-60e5ca510214",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "f1b98107-8e91-9fc3-bac2-3c74fdd74adc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "DANCER",
							name = "DANCER",
							uuid = "26b97406-5948-8a79-b2da-ea5091350d45",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7541,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready 7541",
							uuid = "8013f103-4c98-ba5a-a822-1f26b3d0273f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							comparator = 2,
							conditionType = 2,
							hpValue = 65,
							name = "HP <=65%",
							uuid = "cf014bf5-baa5-9b8a-9b67-fc9b74330bad",
							version = 3,
						},
					},
				},
				displayPath = "DPS Mitigation",
				mechanicTime = 966.1,
				name = "DPS recovery - Atomic Ray 2",
				timeRange = true,
				timelineIndex = 82,
				timerEndOffset = 8,
				timerStartOffset = 4.8,
				uuid = "9ebee4a9-dd1e-be9d-bfac-275fd6fbf1e4",
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
				name = "Shinryu Unreal",
				uuid = "382b10a2-fc7f-5230-8fbe-4b83329e681d",
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
				displayPath = "Shinryu Unreal",
				eventType = 3,
				execute = "\nif eventArgs.entityContentID == 5641 then\n    local spell = eventArgs.spellID\n    if spell == 50308 then\n        local duration = math.max(1, eventArgs.channelTimeMax or 0) * 1000\n        TensorCore.addAlertText(duration, \"keep moving for ice\", 1.35, 2, false)\n    end\nend\nself.used = true\n",
				executeType = 2,
				mechanicTime = 983.8,
				name = "Ice Storm freeze timing",
				timeRange = true,
				timelineIndex = 83,
				timerEndOffset = 0.5,
				timerStartOffset = -7,
				uuid = "6dfbeee0-cb40-d146-b09f-277b4a061ddd",
				version = 2,
			},
		},
	},
	[84] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal",
				uuid = "5461e481-ec10-04e7-bdfa-d568565918ce",
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
				displayPath = "Shinryu Unreal",
				eventType = 3,
				execute = "if eventArgs.entityContentID == 5642 then\n    local spell = eventArgs.spellID\n    local duration = math.max(1, eventArgs.channelTimeMax or 0) * 1000\n    if spell == 50306 then\n        TensorCore.addAlertText(duration, \"Bait Levinbolt, keep moving\", 1.35, 2, false)\n    elseif spell == 50244 then\n        TensorCore.addAlertText(duration, \"Hypernova: stop to get frozen\", 1.35, 2, false)\n    elseif spell == 50307 and not data.shinryu_late_icicle_warned_987 then\n        TensorCore.addAlertText(duration, \"Dodge Icicle\", 1.35, 2, true)\n        data.shinryu_late_icicle_warned_987 = true\n    end\nend\nself.used = true",
				executeType = 2,
				mechanicTime = 987.8,
				name = "Late Levinbolt mechanic callout",
				timeRange = true,
				timelineIndex = 84,
				timerEndOffset = 0.5,
				timerStartOffset = -11,
				uuid = "ecc02cb8-e928-fc9d-acf1-14397e0439c5",
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
				name = "Shinryu Unreal",
				uuid = "798f3cb4-8625-12fc-9b1a-7ab90af9964b",
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
				displayPath = "Shinryu Unreal",
				eventType = 3,
				execute = "\nif eventArgs.spellID == 50293 and eventArgs.entityContentID == 5640 then\n    local duration = (eventArgs.channelTimeMax + 0.75) * 1000\n    local drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15, 1.0, 0.25, 0.40), 3)\n    drawer:addTimedCircleOnEnt(duration, eventArgs.entityID, 14, 0, false, true)\n    TensorCore.addAlertText(duration, \"WORMWAIL: stay inside the inner circle\", 1.35, 1, false)\nend\nself.used = true\n",
				executeType = 2,
				mechanicTime = 995.9,
				name = "Wormwail inner safe circle",
				timeRange = true,
				timelineIndex = 85,
				timerEndOffset = 0.5,
				timerStartOffset = -5.5,
				uuid = "cf586644-aa9e-7506-8693-552f05890450",
				version = 2,
			},
		},
	},
	[91] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shinryu Unreal",
				uuid = "62bf571f-a627-4992-ba9e-fbba622eea10",
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
				displayPath = "Shinryu Unreal",
				eventType = 3,
				execute = "if eventArgs.spellID == 50230 and eventArgs.entityContentID == 5640 then\n    local boss = TensorCore.mGetEntity(eventArgs.entityID)\n    if boss and boss.pos then\n        local p = boss.pos\n        local center = { x = 0, y = p.y, z = 0 }\n        local heading = TensorCore.getHeadingToTarget(p, center)\n        local duration = ((eventArgs.channelTimeMax or 0) + 1.0) * 1000\n        local drawer = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.1, 0.85, 1.0, 0.75), 3)\n        drawer:addTimedCircleOnEnt(duration, eventArgs.entityID, 5, 0, false, true)\n        drawer:addTimedLine(duration, p.x, p.y, p.z, center.x, center.y, center.z, 3, 2)\n        drawer:addTimedArrow(duration, center.x, center.y, center.z, heading, 8, 3, 4, 6)\n    end\nend\nself.used = true",
				executeType = 2,
				mechanicTime = 1116,
				name = "Tidal Wave direction",
				timeRange = true,
				timelineIndex = 91,
				timerEndOffset = 0.5,
				timerStartOffset = -10.5,
				uuid = "7540b80a-c4ef-bfc0-b2fd-35a25933b085",
				version = 2,
			},
		},
	},
	inheritedProfiles = 
	{
	},
	timelineName = "shinryu-un",
	version = "1.0.1",
}



return tbl
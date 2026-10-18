local tbl = 
{
	
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Mitigation",
				uuid = "a334e01e-40c5-17dd-b747-65609a26ea9c",
			},
			objectType = "folder",
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
									"e819eda1-c417-6d4d-a297-51276285dcaa",
									true,
								},
								
								{
									"06243193-7c5b-9dc0-b04a-54f8e25952a0",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Mantra Cyclonic Break",
							uuid = "876c5273-a45a-696e-a773-6d934a509b7d",
							version = 2.1,
						},
					},
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
							name = "MONK job",
							uuid = "e819eda1-c417-6d4d-a297-51276285dcaa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 65,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Cyclonic Break CD",
							uuid = "06243193-7c5b-9dc0-b04a-54f8e25952a0",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 13.7,
				name = "[LPDU] Mantra Cyclonic Break",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "02ed764a-04fd-a87c-8f0a-809c0a3fa0d9",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 25857,
							conditions = 
							{
								
								{
									"72bd8735-e338-3c42-abc3-a8d1e0c7d2a6",
									true,
								},
								
								{
									"1fd1ad0e-946d-5d76-9015-d52a84546b75",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Magick Barrier Cyclonic Break",
							uuid = "a6884baa-224f-f73e-a062-03fb1ef59951",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "REDMAGE",
							name = "REDMAGE job",
							uuid = "72bd8735-e338-3c42-abc3-a8d1e0c7d2a6",
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
							dequeueIfLuaFalse = true,
							name = "Cyclonic Break CD",
							uuid = "1fd1ad0e-946d-5d76-9015-d52a84546b75",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 13.7,
				name = "[LPDU] Magick Barrier Cyclonic Break",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "826874b5-3eeb-2c0c-89c3-214aaecf348e",
				version = 2,
			},
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
									"50ec78ac-fcd6-376d-8665-9a799f9eb2d0",
									true,
								},
								
								{
									"e216d4c4-e9d7-fed6-b165-e6612c4de7d5",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] M1 Feint Cyclonic Break",
							targetType = "Enemy",
							uuid = "73c57bc1-cf09-64aa-b3d8-4d0595943c83",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"M1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "M1 roster",
							uuid = "50ec78ac-fcd6-376d-8665-9a799f9eb2d0",
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
							dequeueIfLuaFalse = true,
							name = "Cyclonic Break CD",
							uuid = "e216d4c4-e9d7-fed6-b165-e6612c4de7d5",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 13.7,
				name = "[LPDU] M1 Feint Cyclonic Break",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "e2515266-22d6-f3c0-82b4-54f37d4dd4a4",
				version = 2,
			},
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
									"eaeb920f-e316-0edf-9437-1a645af5a159",
									true,
								},
								
								{
									"3ce93a3d-d4a8-5646-8ec7-900a77057cef",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Addle 2 Cyclonic Break",
							targetType = "Enemy",
							uuid = "dfddf30c-8656-44b7-b418-61b78459953b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R2 roster",
							uuid = "eaeb920f-e316-0edf-9437-1a645af5a159",
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
							dequeueIfLuaFalse = true,
							name = "Cyclonic Break CD",
							uuid = "3ce93a3d-d4a8-5646-8ec7-900a77057cef",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				enabled = false,
				mechanicTime = 13.7,
				name = "[LPDU] R2 Addle 2 Cyclonic Break",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "afcbe62c-eb43-c3a1-b187-6391358df44d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 34686,
							conditions = 
							{
								
								{
									"d5f510a3-fb77-a6ed-9484-b645fd0559fd",
									true,
								},
								
								{
									"b7e1cd93-0c27-f2fc-a5cf-1a104cf40534",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Tempera Grassa Cyclonic Break",
							uuid = "ba183fee-9927-7cc1-874c-0e401c3d032b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PICTOMANCER",
							name = "PICTOMANCER job",
							uuid = "d5f510a3-fb77-a6ed-9484-b645fd0559fd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 34686,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Cyclonic Break CD",
							uuid = "b7e1cd93-0c27-f2fc-a5cf-1a104cf40534",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 13.7,
				name = "[LPDU] Tempera Grassa Cyclonic Break",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "b330459e-cc48-02c0-84e5-742877102330",
				version = 2,
			},
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
									"e5bd20a7-d56b-637a-8b08-b835251d632a",
									true,
								},
								
								{
									"ee3d7b08-b82f-6041-9695-1ee81f012bbc",
									true,
								},
								
								{
									"8bc77302-841e-d483-bfbd-a1d1ea924a2a",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Troubadour - Cyclonic Break",
							uuid = "d21a39e3-84b5-0889-96ff-150f0d457261",
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
									"e5bd20a7-d56b-637a-8b08-b835251d632a",
									true,
								},
								
								{
									"671d8e9c-19ba-30fa-aebb-36e0845f110a",
									true,
								},
								
								{
									"611fef16-b614-4e2a-b645-c3a0a3ddf00b",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Tactician - Cyclonic Break",
							uuid = "594e250f-b827-24c8-83ff-3c3daa0d8944",
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
									"e5bd20a7-d56b-637a-8b08-b835251d632a",
									true,
								},
								
								{
									"98eb502b-a829-49ec-a5f6-516312d9d9ba",
									true,
								},
								
								{
									"445e3d35-5ef5-1a02-ad3c-44df85380116",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Shield Samba - Cyclonic Break",
							uuid = "357f2c05-9f6b-03df-a8e9-c160194d5454",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R2 roster",
							uuid = "e5bd20a7-d56b-637a-8b08-b835251d632a",
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
							name = "Troubadour job",
							uuid = "ee3d7b08-b82f-6041-9695-1ee81f012bbc",
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
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "8bc77302-841e-d483-bfbd-a1d1ea924a2a",
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
							name = "Tactician job",
							uuid = "671d8e9c-19ba-30fa-aebb-36e0845f110a",
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
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "611fef16-b614-4e2a-b645-c3a0a3ddf00b",
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
							name = "Shield Samba job",
							uuid = "98eb502b-a829-49ec-a5f6-516312d9d9ba",
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
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "445e3d35-5ef5-1a02-ad3c-44df85380116",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 13.7,
				name = "[LPDU] R2 Phys Ranged - Cyclonic Break",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "689534c5-f2b4-036c-a186-e59c99da32bf",
				version = 2,
			},
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
									"649ce186-72ec-1810-8b47-5abe6afbba61",
									true,
								},
								
								{
									"4dcda1fd-7476-6c33-8535-05787e9ef1c8",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Nature's Minne Cyclonic Break",
							uuid = "9dac7927-0950-4263-af69-ed93a53ae8d4",
							version = 2.1,
						},
					},
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
							name = "BARD job",
							uuid = "649ce186-72ec-1810-8b47-5abe6afbba61",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7408,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Cyclonic Break CD",
							uuid = "4dcda1fd-7476-6c33-8535-05787e9ef1c8",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 13.7,
				name = "[LPDU] Nature's Minne Cyclonic Break",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "dd722cef-4056-12e6-9c62-db53bbfaea3f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "AnyoneCore Defaults",
				uuid = "50b48973-e5e7-32e0-bbd7-89a18e3b2050",
			},
			objectType = "folder",
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
							actionLua = "local reactions = AnyoneCore.Settings.Reactions\nif not reactions.fru then reactions.fru = {} end\nif reactions.fru.mitigation ~= false then\n reactions.fru.mitigation = false\nend\nself.used = true",
							conditions = 
							{
								
								{
									"1ffcd2d6-ce7e-baea-83cd-8fb001acb3e9",
									true,
								},
							},
							endIfUsed = true,
							name = "Set FRU mitigation default",
							uuid = "f5c35998-2958-1608-99e9-14b8a8ce3718",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 9,
							dequeueIfLuaFalse = true,
							name = "Self is DPS",
							partyTargetType = "DPS",
							uuid = "1ffcd2d6-ce7e-baea-83cd-8fb001acb3e9",
							version = 3,
						},
					},
				},
				displayPath = "AnyoneCore Defaults",
				mechanicTime = 13.7,
				name = "Disable AnyoneCore DPS mitigation at start",
				timelineIndex = 1,
				timerOffset = -13.60000038147,
				uuid = "7a54a151-536f-663c-bb67-07f33b18143d",
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
				name = "LPDU Mitigation",
				uuid = "dee7f529-921b-8018-ba65-6a8ab9eed17d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 16014,
							conditions = 
							{
								
								{
									"bb6a42bd-a1fe-5961-b3d7-c90938a30194",
									true,
								},
								
								{
									"4670be9c-aeb0-6aa3-9b5c-dec61e6ad28c",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Improvisation Utopian Sky",
							uuid = "7d5f0821-1cbc-01cb-a259-18cdbb3ccf56",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "DANCER job",
							uuid = "bb6a42bd-a1fe-5961-b3d7-c90938a30194",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16014,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Utopian Sky CD",
							uuid = "4670be9c-aeb0-6aa3-9b5c-dec61e6ad28c",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 34.9,
				name = "[LPDU] Improvisation Utopian Sky",
				timeRange = true,
				timelineIndex = 10,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "6bbee03b-8d5a-30af-a92d-f1f2cd068359",
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
				name = "LPDU Mitigation",
				uuid = "dd3f8188-111f-015a-941f-3a690afa80b8",
			},
			objectType = "folder",
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
									"55f84571-ace8-b9da-bb02-fc0cb7904bef",
									true,
								},
								
								{
									"82a75d68-67c6-b776-b627-1ad289da8531",
									true,
								},
								
								{
									"673e930f-4ea3-312e-b4bb-ee12a7c59a44",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Troubadour - Burnished Glory 1",
							uuid = "fadc4d80-baa2-8483-9fbe-06e4f0a0e254",
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
									"55f84571-ace8-b9da-bb02-fc0cb7904bef",
									true,
								},
								
								{
									"e39e0b27-ebcc-eac2-87ba-ff75cb710d96",
									true,
								},
								
								{
									"4e45de68-ee44-5da5-b447-efacf8d64ffa",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Tactician - Burnished Glory 1",
							uuid = "53a2fd27-021c-785e-a82c-b5f24a8e39b6",
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
									"55f84571-ace8-b9da-bb02-fc0cb7904bef",
									true,
								},
								
								{
									"38834bf5-f080-5641-b611-3c15c0626e5c",
									true,
								},
								
								{
									"6cbc0388-1d6e-4ec3-ae50-9c9f00f7a7b3",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Shield Samba - Burnished Glory 1",
							uuid = "0352468c-59d2-bab5-a44f-3394c446c65e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R1 roster",
							uuid = "55f84571-ace8-b9da-bb02-fc0cb7904bef",
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
							name = "Troubadour job",
							uuid = "82a75d68-67c6-b776-b627-1ad289da8531",
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
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "673e930f-4ea3-312e-b4bb-ee12a7c59a44",
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
							name = "Tactician job",
							uuid = "e39e0b27-ebcc-eac2-87ba-ff75cb710d96",
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
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "4e45de68-ee44-5da5-b447-efacf8d64ffa",
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
							name = "Shield Samba job",
							uuid = "38834bf5-f080-5641-b611-3c15c0626e5c",
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
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "6cbc0388-1d6e-4ec3-ae50-9c9f00f7a7b3",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 85.9,
				name = "[LPDU] R1 Phys Ranged - Burnished Glory 1",
				timeRange = true,
				timelineIndex = 22,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "6cbeae17-dc4d-28f0-b5fc-4448adaa65a3",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 2887,
							conditions = 
							{
								
								{
									"3bb72b57-76dd-e339-b10b-8b14e34557ec",
									true,
								},
								
								{
									"ee5a9fed-4580-7e4b-b994-5083ce858f55",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Dismantle Burnished Glory 1",
							uuid = "216c2448-fb13-802e-9c7b-2970ec87d7bb",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "MACHINIST job",
							uuid = "3bb72b57-76dd-e339-b10b-8b14e34557ec",
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
							dequeueIfLuaFalse = true,
							name = "Burnished Glory 1 CD",
							uuid = "ee5a9fed-4580-7e4b-b994-5083ce858f55",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 85.9,
				name = "[LPDU] Dismantle Burnished Glory 1",
				timeRange = true,
				timelineIndex = 22,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "1cba4bac-3e4a-2009-be07-6a308ab78de8",
				version = 2,
			},
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
									"e68c8998-97c2-e720-9a1d-54126c41c15b",
									true,
								},
								
								{
									"5607db3c-4a96-18ea-be06-6bc516cdf0b7",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Addle Burnished Glory 1",
							targetType = "Enemy",
							uuid = "3c30bef5-7e23-6de3-9973-1e61e061de0a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R1 roster",
							uuid = "e68c8998-97c2-e720-9a1d-54126c41c15b",
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
							dequeueIfLuaFalse = true,
							name = "Burnished Glory 1 CD",
							uuid = "5607db3c-4a96-18ea-be06-6bc516cdf0b7",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 85.9,
				name = "[LPDU] R1 Addle Burnished Glory 1",
				timeRange = true,
				timelineIndex = 22,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "dc341a5b-8478-ce90-b4e7-f99402868729",
				version = 2,
			},
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
									"5395384b-522c-8468-afe0-cf17a07bbc8c",
									true,
								},
								
								{
									"84dfa777-dfe1-8166-95c7-1ed63c53dc4a",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] M2 Feint Burnished Glory 1",
							targetType = "Enemy",
							uuid = "07dc106a-6066-b4f8-8311-a533c7f4b024",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"M2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "M2 roster",
							uuid = "5395384b-522c-8468-afe0-cf17a07bbc8c",
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
							dequeueIfLuaFalse = true,
							name = "Burnished Glory 1 CD",
							uuid = "84dfa777-dfe1-8166-95c7-1ed63c53dc4a",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 85.9,
				name = "[LPDU] M2 Feint Burnished Glory 1",
				timeRange = true,
				timelineIndex = 22,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "d952f3cb-dfd5-5576-ab0e-72ef0d497b49",
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
				name = "LPDU Mitigation",
				uuid = "d61d96f0-229c-a4e5-bcf4-3e2e76d18a43",
			},
			objectType = "folder",
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
									"2ecbf629-45ca-c9cd-b8e4-9ee4ab98ff3c",
									true,
								},
								
								{
									"9b2e400e-2470-933d-90d5-25f4de1418fa",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] M1 Feint Burnished Glory 2",
							targetType = "Enemy",
							uuid = "d0d9624d-1c39-f872-b702-dade79783bbb",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"M1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "M1 roster",
							uuid = "2ecbf629-45ca-c9cd-b8e4-9ee4ab98ff3c",
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
							dequeueIfLuaFalse = true,
							name = "Burnished Glory 2 CD",
							uuid = "9b2e400e-2470-933d-90d5-25f4de1418fa",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 121.1,
				name = "[LPDU] M1 Feint Burnished Glory 2",
				timeRange = true,
				timelineIndex = 29,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "cd8f46e0-0e1b-87f8-a35d-bf9a438b1aaf",
				version = 2,
			},
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
									"24153457-b622-5805-8041-d6e8fe6a1008",
									true,
								},
								
								{
									"3a49da24-b63f-0c79-b53f-870c08fc0198",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Addle 2 Burnished Glory 2",
							targetType = "Enemy",
							uuid = "24d845ce-fb58-97d3-a3c3-312c9b96d4c9",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R2 roster",
							uuid = "24153457-b622-5805-8041-d6e8fe6a1008",
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
							dequeueIfLuaFalse = true,
							name = "Burnished Glory 2 CD",
							uuid = "3a49da24-b63f-0c79-b53f-870c08fc0198",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				enabled = false,
				mechanicTime = 121.1,
				name = "[LPDU] R2 Addle 2 Burnished Glory 2",
				timeRange = true,
				timelineIndex = 29,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "763b8fbb-c99f-7c60-af42-01a20ef8d2a5",
				version = 2,
			},
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
									"a3267714-2d8a-18c2-81ef-e9c024ceb2d7",
									true,
								},
								
								{
									"a7bc9de8-26e3-74b0-a3e9-7c9ad36716af",
									true,
								},
								
								{
									"06277663-9f3d-9f47-bb2f-b44455c26093",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Troubadour - Burnished Glory 2",
							uuid = "28a16f0b-dcf3-a870-9d04-0cdef97695e3",
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
									"a3267714-2d8a-18c2-81ef-e9c024ceb2d7",
									true,
								},
								
								{
									"bcf0808f-5482-a048-a11c-8f2636c243ef",
									true,
								},
								
								{
									"86d80680-549c-9c22-a979-2dd9caa54737",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Tactician - Burnished Glory 2",
							uuid = "122537c7-032f-267b-9ce5-d24ebac8a456",
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
									"a3267714-2d8a-18c2-81ef-e9c024ceb2d7",
									true,
								},
								
								{
									"2182ec0c-7a11-9acf-9a0d-7c9fe5b3d105",
									true,
								},
								
								{
									"484ac990-6798-7804-b7c4-d9735ec2f494",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Shield Samba - Burnished Glory 2",
							uuid = "5924e541-d8b4-ec95-8e59-0eaeeef3c745",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R1 roster",
							uuid = "a3267714-2d8a-18c2-81ef-e9c024ceb2d7",
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
							name = "Troubadour job",
							uuid = "a7bc9de8-26e3-74b0-a3e9-7c9ad36716af",
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
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "06277663-9f3d-9f47-bb2f-b44455c26093",
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
							name = "Tactician job",
							uuid = "bcf0808f-5482-a048-a11c-8f2636c243ef",
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
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "86d80680-549c-9c22-a979-2dd9caa54737",
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
							name = "Shield Samba job",
							uuid = "2182ec0c-7a11-9acf-9a0d-7c9fe5b3d105",
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
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "484ac990-6798-7804-b7c4-d9735ec2f494",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 121.1,
				name = "[LPDU] R1 Phys Ranged - Burnished Glory 2",
				timeRange = true,
				timelineIndex = 29,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "9e087778-2368-05ca-bb27-825f765fe85e",
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
				name = "LPDU Mitigation",
				uuid = "8ff2b391-0b08-9265-bd25-483c2f148cef",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 34686,
							conditions = 
							{
								
								{
									"60e0a077-6463-eac1-9229-cdf62f9368aa",
									true,
								},
								
								{
									"d8b12211-ed2c-6f3d-aa14-a28e89a405d8",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Tempera Grassa Diamond Dust",
							uuid = "28545059-7570-8309-a0b8-308942848432",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PICTOMANCER",
							name = "PICTOMANCER job",
							uuid = "60e0a077-6463-eac1-9229-cdf62f9368aa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 34686,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Diamond Dust CD",
							uuid = "d8b12211-ed2c-6f3d-aa14-a28e89a405d8",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 235.3,
				name = "[LPDU] Tempera Grassa Diamond Dust",
				timeRange = true,
				timelineIndex = 44,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "428b725d-bd8d-f274-914e-3aeef8d85a69",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 25857,
							conditions = 
							{
								
								{
									"af567909-fa37-2f02-bfe8-6593c5f5c747",
									true,
								},
								
								{
									"9df9797d-98b3-42c1-b3ec-80eff9d15b21",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Magick Barrier Diamond Dust",
							uuid = "e97f9e12-fc7a-f5da-a55a-6d90f7972886",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "REDMAGE",
							name = "REDMAGE job",
							uuid = "af567909-fa37-2f02-bfe8-6593c5f5c747",
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
							dequeueIfLuaFalse = true,
							name = "Diamond Dust CD",
							uuid = "9df9797d-98b3-42c1-b3ec-80eff9d15b21",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 235.3,
				name = "[LPDU] Magick Barrier Diamond Dust",
				timeRange = true,
				timelineIndex = 44,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "4365a579-4ee4-8aeb-94ee-f8dfc454695f",
				version = 2,
			},
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
									"2399ddf4-9bfa-5766-861b-33b17778dab7",
									true,
								},
								
								{
									"65576fab-3bf0-9657-b806-4a5c0100cc96",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] M2 Feint Diamond Dust",
							targetType = "Enemy",
							uuid = "7bda8518-85f9-7e88-ba65-98795ff86808",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"M2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "M2 roster",
							uuid = "2399ddf4-9bfa-5766-861b-33b17778dab7",
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
							dequeueIfLuaFalse = true,
							name = "Diamond Dust CD",
							uuid = "65576fab-3bf0-9657-b806-4a5c0100cc96",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 235.3,
				name = "[LPDU] M2 Feint Diamond Dust",
				timeRange = true,
				timelineIndex = 44,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "fd3ebcf5-0fd1-09eb-999d-38375bff4598",
				version = 2,
			},
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
									"d75ef94f-3b30-6b7b-965e-8cfa12db8c9a",
									true,
								},
								
								{
									"87ce1989-a724-5229-ad23-88704790cf57",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Nature's Minne Diamond Dust",
							uuid = "3334c4f0-b8f4-cfef-a91a-d9e4a134f1c8",
							version = 2.1,
						},
					},
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
							name = "BARD job",
							uuid = "d75ef94f-3b30-6b7b-965e-8cfa12db8c9a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7408,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Diamond Dust CD",
							uuid = "87ce1989-a724-5229-ad23-88704790cf57",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 235.3,
				name = "[LPDU] Nature's Minne Diamond Dust",
				timeRange = true,
				timelineIndex = 44,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "5e484ec1-6c36-7524-9f8f-b1b1f4408ef3",
				version = 2,
			},
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
									"3462efac-2e48-6a7f-a540-38f59353cb9f",
									true,
								},
								
								{
									"0b46d05f-a52e-81c8-896a-47adea9d70be",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Addle Diamond Dust",
							targetType = "Enemy",
							uuid = "53886910-b2db-94ac-85ef-80cfd0475853",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R1 roster",
							uuid = "3462efac-2e48-6a7f-a540-38f59353cb9f",
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
							dequeueIfLuaFalse = true,
							name = "Diamond Dust CD",
							uuid = "0b46d05f-a52e-81c8-896a-47adea9d70be",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 235.3,
				name = "[LPDU] R1 Addle Diamond Dust",
				timeRange = true,
				timelineIndex = 44,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "96ed1793-ae49-01bf-b9b8-ea44b49dd91a",
				version = 2,
			},
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
									"a91ba3d2-bd73-fd4e-af3a-4c47154a91a7",
									true,
								},
								
								{
									"cbec6ce3-91d5-3b00-8886-03c14fe5da85",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Mantra Diamond Dust",
							uuid = "7cb25238-a73b-6dbc-8359-e11028e62d89",
							version = 2.1,
						},
					},
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
							name = "MONK job",
							uuid = "a91ba3d2-bd73-fd4e-af3a-4c47154a91a7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 65,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Diamond Dust CD",
							uuid = "cbec6ce3-91d5-3b00-8886-03c14fe5da85",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 235.3,
				name = "[LPDU] Mantra Diamond Dust",
				timeRange = true,
				timelineIndex = 44,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "c8f77f5f-ab7c-47d8-9442-73c63e2a2374",
				version = 2,
			},
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
									"db1b2e42-36e6-f4ca-9d7e-cfe10d79e7d6",
									true,
								},
								
								{
									"5ad23556-a403-a7f0-a1d7-0168beeeea51",
									true,
								},
								
								{
									"8b5820eb-1a28-28d3-b856-ce12be67e3fa",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Troubadour - Diamond Dust",
							uuid = "7ecdf836-c9cb-65b2-922e-88bd30aa3dc5",
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
									"db1b2e42-36e6-f4ca-9d7e-cfe10d79e7d6",
									true,
								},
								
								{
									"4703448f-8c73-9a4c-bc7f-a246f7bbb45b",
									true,
								},
								
								{
									"a5b76c8a-6da5-0b76-8c99-dbc9e27801ac",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Tactician - Diamond Dust",
							uuid = "ae4704c7-17ee-3698-af90-c8d424e24410",
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
									"db1b2e42-36e6-f4ca-9d7e-cfe10d79e7d6",
									true,
								},
								
								{
									"b9f38e66-6c56-19a3-8565-0096625d3aa0",
									true,
								},
								
								{
									"57c2ccff-97ee-312e-80bf-b9c7c16051f3",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Shield Samba - Diamond Dust",
							uuid = "42f36017-258d-ff8e-9c25-a9d4c6c7d7f8",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R2 roster",
							uuid = "db1b2e42-36e6-f4ca-9d7e-cfe10d79e7d6",
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
							name = "Troubadour job",
							uuid = "5ad23556-a403-a7f0-a1d7-0168beeeea51",
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
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "8b5820eb-1a28-28d3-b856-ce12be67e3fa",
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
							name = "Tactician job",
							uuid = "4703448f-8c73-9a4c-bc7f-a246f7bbb45b",
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
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "a5b76c8a-6da5-0b76-8c99-dbc9e27801ac",
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
							name = "Shield Samba job",
							uuid = "b9f38e66-6c56-19a3-8565-0096625d3aa0",
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
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "57c2ccff-97ee-312e-80bf-b9c7c16051f3",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 235.3,
				name = "[LPDU] R2 Phys Ranged - Diamond Dust",
				timeRange = true,
				timelineIndex = 44,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "a6015ce4-3239-8136-aeb2-9272934497fb",
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
				name = "LPDU Mitigation",
				uuid = "802d6e4d-badb-7992-97b7-8dafb19c32b1",
			},
			objectType = "folder",
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
									"bfcb18fd-550a-e828-a394-83dae3c2d1f3",
									true,
								},
								
								{
									"bde5383e-deef-78de-acee-1902efe2b9f3",
									true,
								},
								
								{
									"0442a4a5-d695-68ac-8543-e0b09c187b3b",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Troubadour - Diamond Dust Knockback",
							uuid = "cc86e535-4a83-e5d5-bade-78e2e31fc349",
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
									"bfcb18fd-550a-e828-a394-83dae3c2d1f3",
									true,
								},
								
								{
									"4aa51b41-3f7c-96c1-b86e-1c1eaa78e235",
									true,
								},
								
								{
									"b9d7c9d5-efd0-83b9-8a19-4e91154f2562",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Tactician - Diamond Dust Knockback",
							uuid = "6d7dbffe-fb55-1333-b563-d86da5c1b344",
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
									"bfcb18fd-550a-e828-a394-83dae3c2d1f3",
									true,
								},
								
								{
									"4933cc63-9cc7-fd8b-a5fb-8906f5181d1b",
									true,
								},
								
								{
									"c2741d44-47c5-3efe-8490-8b7178844637",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Shield Samba - Diamond Dust Knockback",
							uuid = "3c66abac-a50a-5dc0-a64b-d49a8794d38e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R1 roster",
							uuid = "bfcb18fd-550a-e828-a394-83dae3c2d1f3",
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
							name = "Troubadour job",
							uuid = "bde5383e-deef-78de-acee-1902efe2b9f3",
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
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "0442a4a5-d695-68ac-8543-e0b09c187b3b",
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
							name = "Tactician job",
							uuid = "4aa51b41-3f7c-96c1-b86e-1c1eaa78e235",
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
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "b9d7c9d5-efd0-83b9-8a19-4e91154f2562",
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
							name = "Shield Samba job",
							uuid = "4933cc63-9cc7-fd8b-a5fb-8906f5181d1b",
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
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "c2741d44-47c5-3efe-8490-8b7178844637",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 251.1,
				name = "[LPDU] R1 Phys Ranged - Diamond Dust Knockback",
				timeRange = true,
				timelineIndex = 50,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "6123fc3a-4ecf-6a68-b2cc-0fbefad7157b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 16014,
							conditions = 
							{
								
								{
									"9ae3f07d-f601-b306-bf66-703cba05b384",
									true,
								},
								
								{
									"cac4e221-8a26-b6ed-aa83-765409a123b3",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Improvisation Diamond Dust Knockback",
							uuid = "8f981874-19ee-0b13-8255-5c7d2544f3ed",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "DANCER job",
							uuid = "9ae3f07d-f601-b306-bf66-703cba05b384",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16014,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Diamond Dust Knockback CD",
							uuid = "cac4e221-8a26-b6ed-aa83-765409a123b3",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 251.1,
				name = "[LPDU] Improvisation Diamond Dust Knockback",
				timeRange = true,
				timelineIndex = 50,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "fd73327d-1b1f-584e-b36c-f1940c5a499e",
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
				name = "LPDU Mitigation",
				uuid = "ddefd9f6-101b-97f7-be5b-4e670a7a8aaf",
			},
			objectType = "folder",
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
									"9bdb2d7d-a821-8c96-9005-cb3955374c0a",
									true,
								},
								
								{
									"86f9b4b0-3669-ef27-8f81-2d4aea59ef94",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] M1 Feint Hallowed Ray",
							targetType = "Enemy",
							uuid = "99747ab3-3dde-9620-94a7-7ff0f1017915",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"M1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "M1 roster",
							uuid = "9bdb2d7d-a821-8c96-9005-cb3955374c0a",
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
							dequeueIfLuaFalse = true,
							name = "Hallowed Ray CD",
							uuid = "86f9b4b0-3669-ef27-8f81-2d4aea59ef94",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 283,
				name = "[LPDU] M1 Feint Hallowed Ray",
				timeRange = true,
				timelineIndex = 64,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "2aa5e0a3-cab8-2849-a461-7ef5d5c71f96",
				version = 2,
			},
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
									"8896db95-6e98-7de6-834d-905c549d5e42",
									true,
								},
								
								{
									"93eb9fab-b569-c1f3-bfb6-d854295ddc60",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Addle 2 Hallowed Ray",
							targetType = "Enemy",
							uuid = "4f2b079c-01fe-865f-831e-9cc7afb2afc1",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R2 roster",
							uuid = "8896db95-6e98-7de6-834d-905c549d5e42",
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
							dequeueIfLuaFalse = true,
							name = "Hallowed Ray CD",
							uuid = "93eb9fab-b569-c1f3-bfb6-d854295ddc60",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				enabled = false,
				mechanicTime = 283,
				name = "[LPDU] R2 Addle 2 Hallowed Ray",
				timeRange = true,
				timelineIndex = 64,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "c782b09b-e64d-a444-bb1a-9161427642ca",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 2887,
							conditions = 
							{
								
								{
									"a717a08f-142a-6bbe-8395-5eaaead7c8b1",
									true,
								},
								
								{
									"d0743d73-9a45-8a6c-b551-323e2af62a6f",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Dismantle Hallowed Ray",
							uuid = "6221801e-8425-0f29-ae53-17a005bfc098",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "MACHINIST job",
							uuid = "a717a08f-142a-6bbe-8395-5eaaead7c8b1",
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
							dequeueIfLuaFalse = true,
							name = "Hallowed Ray CD",
							uuid = "d0743d73-9a45-8a6c-b551-323e2af62a6f",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 283,
				name = "[LPDU] Dismantle Hallowed Ray",
				timeRange = true,
				timelineIndex = 64,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "9d32a82c-2faa-4b29-b840-530aaa6e3a72",
				version = 2,
			},
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
									"217f6e3e-1da1-0ed8-8bab-461ca1bb65a9",
									true,
								},
								
								{
									"ffbfd004-dde2-60eb-a8a8-70ae9d53ef75",
									true,
								},
								
								{
									"562ea1bc-0a76-4d04-b963-f4cfda9a8061",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Troubadour - Hallowed Ray",
							uuid = "5e4c9693-8769-5a5a-939d-f3bdf8ae1d88",
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
									"217f6e3e-1da1-0ed8-8bab-461ca1bb65a9",
									true,
								},
								
								{
									"d03f4b33-1611-665c-8e3c-f44b611446d3",
									true,
								},
								
								{
									"2bf31677-8367-7794-832a-dc8c8c1185f0",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Tactician - Hallowed Ray",
							uuid = "5e497998-231c-4990-a853-59eb9059c863",
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
									"217f6e3e-1da1-0ed8-8bab-461ca1bb65a9",
									true,
								},
								
								{
									"e753b257-c184-d9a9-9ab5-880b7cfd6cf2",
									true,
								},
								
								{
									"f0b7bdd7-9622-224a-8a1b-5e6ff9d64472",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Shield Samba - Hallowed Ray",
							uuid = "b0c31351-877f-905d-baf6-f6f0b86243d2",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R2 roster",
							uuid = "217f6e3e-1da1-0ed8-8bab-461ca1bb65a9",
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
							name = "Troubadour job",
							uuid = "ffbfd004-dde2-60eb-a8a8-70ae9d53ef75",
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
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "562ea1bc-0a76-4d04-b963-f4cfda9a8061",
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
							name = "Tactician job",
							uuid = "d03f4b33-1611-665c-8e3c-f44b611446d3",
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
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "2bf31677-8367-7794-832a-dc8c8c1185f0",
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
							name = "Shield Samba job",
							uuid = "e753b257-c184-d9a9-9ab5-880b7cfd6cf2",
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
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "f0b7bdd7-9622-224a-8a1b-5e6ff9d64472",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 283,
				name = "[LPDU] R2 Phys Ranged - Hallowed Ray",
				timeRange = true,
				timelineIndex = 64,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "40644424-84b7-0358-95ff-d21e7f90a7fc",
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
				name = "LPDU Mitigation",
				uuid = "9a67a72b-4233-6bd5-9e43-ee61e3c953b6",
			},
			objectType = "folder",
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
									"cc77a7c8-359b-8aa8-a382-42b269bc50c9",
									true,
								},
								
								{
									"49860175-7e3a-4c00-bdff-f6cc16a63e20",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] M2 Feint Banish III + Light Rampant",
							targetType = "Enemy",
							uuid = "37c73335-f73c-f3a8-b7df-a4c086690029",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"M2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "M2 roster",
							uuid = "cc77a7c8-359b-8aa8-a382-42b269bc50c9",
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
							dequeueIfLuaFalse = true,
							name = "Banish III + Light Rampant CD",
							uuid = "49860175-7e3a-4c00-bdff-f6cc16a63e20",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 322.5,
				name = "[LPDU] M2 Feint Banish III + Light Rampant",
				timeRange = true,
				timelineIndex = 77,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "18ff6d8c-f244-a1a5-b46b-88efb445ed0c",
				version = 2,
			},
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
									"dc5ec06a-00d7-622d-a7d9-5f259562366c",
									true,
								},
								
								{
									"eba0ace4-48d5-1180-9938-a0c52b9876f7",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Addle Banish III + Light Rampant",
							targetType = "Enemy",
							uuid = "237a847a-d974-5335-8776-2259d786d1ec",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R1 roster",
							uuid = "dc5ec06a-00d7-622d-a7d9-5f259562366c",
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
							dequeueIfLuaFalse = true,
							name = "Banish III + Light Rampant CD",
							uuid = "eba0ace4-48d5-1180-9938-a0c52b9876f7",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 322.5,
				name = "[LPDU] R1 Addle Banish III + Light Rampant",
				timeRange = true,
				timelineIndex = 77,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "263bf79a-d04d-5e72-85ae-f5d4feadf756",
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
				name = "LPDU Mitigation",
				uuid = "7f9fa3d0-1413-ad33-964c-e0aaf638eaba",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 34686,
							conditions = 
							{
								
								{
									"cc571b3e-c8c1-9a57-b62a-56e084bf759e",
									true,
								},
								
								{
									"c6434cac-93da-54b5-9a09-6f6c84ff51a5",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Tempera Grassa Light Rampant",
							uuid = "bca0e267-4eb0-0ca2-9abe-cf4ae95f17e5",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PICTOMANCER",
							name = "PICTOMANCER job",
							uuid = "cc571b3e-c8c1-9a57-b62a-56e084bf759e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 34686,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Light Rampant CD",
							uuid = "c6434cac-93da-54b5-9a09-6f6c84ff51a5",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 331.8,
				name = "[LPDU] Tempera Grassa Light Rampant",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "8886714a-c97f-4d68-b6d4-1ca8f1a8e1d6",
				version = 2,
			},
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
									"5c37cebb-b7f7-df40-b99a-8f3235818424",
									true,
								},
								
								{
									"e2341121-dc8b-5047-b7f4-0d400ec90124",
									true,
								},
								
								{
									"650d3260-4b78-da53-a9fb-9101d0b8bf4f",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Troubadour - Light Rampant",
							uuid = "82792e75-fd04-cb66-92b0-923f84f7f8bc",
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
									"5c37cebb-b7f7-df40-b99a-8f3235818424",
									true,
								},
								
								{
									"e5a14473-af2a-94c7-a546-2687583a206b",
									true,
								},
								
								{
									"c2d830f1-f805-db29-ad23-af0496f80875",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Tactician - Light Rampant",
							uuid = "9a548f82-1432-464c-874e-4150b33a7756",
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
									"5c37cebb-b7f7-df40-b99a-8f3235818424",
									true,
								},
								
								{
									"add25d20-95aa-ed48-b50f-eb6a710b318f",
									true,
								},
								
								{
									"cdddb2db-56d9-b449-801e-2949c4e8521e",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Shield Samba - Light Rampant",
							uuid = "f9248f19-336b-59b0-a66f-fe6b1563d957",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R1 roster",
							uuid = "5c37cebb-b7f7-df40-b99a-8f3235818424",
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
							name = "Troubadour job",
							uuid = "e2341121-dc8b-5047-b7f4-0d400ec90124",
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
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "650d3260-4b78-da53-a9fb-9101d0b8bf4f",
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
							name = "Tactician job",
							uuid = "e5a14473-af2a-94c7-a546-2687583a206b",
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
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "c2d830f1-f805-db29-ad23-af0496f80875",
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
							name = "Shield Samba job",
							uuid = "add25d20-95aa-ed48-b50f-eb6a710b318f",
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
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "cdddb2db-56d9-b449-801e-2949c4e8521e",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 331.8,
				name = "[LPDU] R1 Phys Ranged - Light Rampant",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "70c46645-6b35-308d-bc5b-6ffe8283b983",
				version = 2,
			},
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
									"fe591e66-d02c-0678-83fe-e026c284e623",
									true,
								},
								
								{
									"6a108e82-622c-3939-8331-adb97a06bcb2",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Mantra Light Rampant",
							uuid = "b8649d41-21b5-f516-a82d-cc3198555871",
							version = 2.1,
						},
					},
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
							name = "MONK job",
							uuid = "fe591e66-d02c-0678-83fe-e026c284e623",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 65,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Light Rampant CD",
							uuid = "6a108e82-622c-3939-8331-adb97a06bcb2",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 331.8,
				name = "[LPDU] Mantra Light Rampant",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "14b7a61f-b135-cdda-b625-61847ba34169",
				version = 2,
			},
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
									"d603f737-6d29-13b8-b9a9-2688dec1e21c",
									true,
								},
								
								{
									"e9374322-f144-8135-aa86-a2a368043375",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Nature's Minne Light Rampant",
							uuid = "d6d9dc27-4ad5-91d9-871d-b0edb2f836d7",
							version = 2.1,
						},
					},
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
							name = "BARD job",
							uuid = "d603f737-6d29-13b8-b9a9-2688dec1e21c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7408,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Light Rampant CD",
							uuid = "e9374322-f144-8135-aa86-a2a368043375",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 331.8,
				name = "[LPDU] Nature's Minne Light Rampant",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "6c9d6626-009c-cc73-b9b5-74287f0b6388",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 25857,
							conditions = 
							{
								
								{
									"2e81adb9-532b-3ddf-b0b5-13ed4129bf08",
									true,
								},
								
								{
									"bc5981af-a96c-285a-9fb6-451ac3771545",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Magick Barrier Light Rampant",
							uuid = "3775b1ca-d88e-bfad-8fdf-54a31b2645ae",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "REDMAGE",
							name = "REDMAGE job",
							uuid = "2e81adb9-532b-3ddf-b0b5-13ed4129bf08",
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
							dequeueIfLuaFalse = true,
							name = "Light Rampant CD",
							uuid = "bc5981af-a96c-285a-9fb6-451ac3771545",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 331.8,
				name = "[LPDU] Magick Barrier Light Rampant",
				timeRange = true,
				timelineIndex = 80,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "2d8d0631-807a-b72b-a573-98cc5d60d60e",
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
				name = "LPDU Mitigation",
				uuid = "55fab9c7-8ad1-9859-a72c-b7bec9ab4050",
			},
			objectType = "folder",
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
									"dda7d4ad-fbbc-d316-89d9-3331eb587f86",
									true,
								},
								
								{
									"0cd71c6b-e0d0-a356-b27c-9fad023fc785",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] M1 Feint Absolute Zero",
							targetType = "Enemy",
							uuid = "93e2490d-96c1-f51d-a610-b89530d9463e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"M1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "M1 roster",
							uuid = "dda7d4ad-fbbc-d316-89d9-3331eb587f86",
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
							dequeueIfLuaFalse = true,
							name = "Absolute Zero CD",
							uuid = "0cd71c6b-e0d0-a356-b27c-9fad023fc785",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 387.8,
				name = "[LPDU] M1 Feint Absolute Zero",
				timeRange = true,
				timelineIndex = 99,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "1077d1c8-42eb-6408-a7ce-cce2a5220660",
				version = 2,
			},
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
									"a6500a8d-d8cb-48fe-8309-b2aa23092ef1",
									true,
								},
								
								{
									"20653d09-2645-115f-9534-89cbe1aa7bd5",
									true,
								},
								
								{
									"40e0bb11-cd6b-61f5-9252-b119ce705907",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Troubadour - Absolute Zero",
							uuid = "94eb74ca-534c-5af0-8912-9d7e6ec4f2e1",
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
									"a6500a8d-d8cb-48fe-8309-b2aa23092ef1",
									true,
								},
								
								{
									"642b9de3-6d00-bf97-a738-df1b6bccd6c7",
									true,
								},
								
								{
									"e9c549c3-363e-b169-b3cb-bd88f1e706eb",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Tactician - Absolute Zero",
							uuid = "3ee8c56d-6660-00a2-bcde-e1f2afca7dd7",
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
									"a6500a8d-d8cb-48fe-8309-b2aa23092ef1",
									true,
								},
								
								{
									"e6d5fe2f-f600-ffec-b273-f5933756c8ea",
									true,
								},
								
								{
									"53d43c40-646a-b676-aaf4-0a69d24747b3",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Shield Samba - Absolute Zero",
							uuid = "30494a3b-4fb0-3ba4-9a6c-0b424b489a7e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R2 roster",
							uuid = "a6500a8d-d8cb-48fe-8309-b2aa23092ef1",
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
							name = "Troubadour job",
							uuid = "20653d09-2645-115f-9534-89cbe1aa7bd5",
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
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "40e0bb11-cd6b-61f5-9252-b119ce705907",
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
							name = "Tactician job",
							uuid = "642b9de3-6d00-bf97-a738-df1b6bccd6c7",
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
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "e9c549c3-363e-b169-b3cb-bd88f1e706eb",
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
							name = "Shield Samba job",
							uuid = "e6d5fe2f-f600-ffec-b273-f5933756c8ea",
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
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "53d43c40-646a-b676-aaf4-0a69d24747b3",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 387.8,
				name = "[LPDU] R2 Phys Ranged - Absolute Zero",
				timeRange = true,
				timelineIndex = 99,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "f9b98a78-affa-457e-81fe-9440f7989e3a",
				version = 2,
			},
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
									"56cdfcbf-5616-6065-91cf-5d0fab13680b",
									true,
								},
								
								{
									"edf996c9-4d5f-f8d2-9d0e-888562568be9",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Addle 2 Absolute Zero",
							targetType = "Enemy",
							uuid = "f61dc7d5-ffe1-4063-b928-6256e33c14f3",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R2 roster",
							uuid = "56cdfcbf-5616-6065-91cf-5d0fab13680b",
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
							dequeueIfLuaFalse = true,
							name = "Absolute Zero CD",
							uuid = "edf996c9-4d5f-f8d2-9d0e-888562568be9",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				enabled = false,
				mechanicTime = 387.8,
				name = "[LPDU] R2 Addle 2 Absolute Zero",
				timeRange = true,
				timelineIndex = 99,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "c75c136f-18a4-1134-adc6-6659f8605925",
				version = 2,
			},
		},
	},
	[119] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Mitigation",
				uuid = "a787e464-1a15-2326-92e5-cba150740e0b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 16014,
							conditions = 
							{
								
								{
									"c32d9236-e231-6970-a1cd-05cffce4675e",
									true,
								},
								
								{
									"5c6e5d68-33cd-60e8-9774-b80cc9facb55",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Improvisation P3 Transition",
							uuid = "6ba42a5c-3d21-1b47-9bc8-e93c40eae49c",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "DANCER job",
							uuid = "c32d9236-e231-6970-a1cd-05cffce4675e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16014,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "P3 Transition CD",
							uuid = "5c6e5d68-33cd-60e8-9774-b80cc9facb55",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 500,
				name = "[LPDU] Improvisation P3 Transition",
				timeRange = true,
				timelineIndex = 119,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "7974fa66-5c67-815f-a4fd-82f7c783078c",
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
				name = "LPDU Mitigation",
				uuid = "26ddc513-3504-f4aa-b548-b808aafca852",
			},
			objectType = "folder",
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
									"a284b425-c4cc-715b-bca9-0b280b1ccb52",
									true,
								},
								
								{
									"8f7abf7c-743d-acb4-80e6-8f8b46360d4a",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] M1 Feint Ultimate Relativity",
							targetType = "Enemy",
							uuid = "b2a1aa0b-4034-5c71-8418-c60d3e00c0f4",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"M1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "M1 roster",
							uuid = "a284b425-c4cc-715b-bca9-0b280b1ccb52",
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
							dequeueIfLuaFalse = true,
							name = "Ultimate Relativity CD",
							uuid = "8f7abf7c-743d-acb4-80e6-8f8b46360d4a",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 532.4,
				name = "[LPDU] M1 Feint Ultimate Relativity",
				timeRange = true,
				timelineIndex = 123,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "7917e689-1384-53a3-b8b2-7c080c1c42c0",
				version = 2,
			},
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
									"60025699-b757-bba6-bae2-a2c69e672939",
									true,
								},
								
								{
									"6b1d9a73-883c-b33f-9bf7-50337bc99767",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Nature's Minne Ultimate Relativity",
							uuid = "25d12872-8cd1-bc55-bd9e-f09394d6b260",
							version = 2.1,
						},
					},
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
							name = "BARD job",
							uuid = "60025699-b757-bba6-bae2-a2c69e672939",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7408,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Ultimate Relativity CD",
							uuid = "6b1d9a73-883c-b33f-9bf7-50337bc99767",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 532.4,
				name = "[LPDU] Nature's Minne Ultimate Relativity",
				timeRange = true,
				timelineIndex = 123,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "d74f2e1b-ef2d-c6aa-b90f-20da726aac5a",
				version = 2,
			},
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
									"3c32d1dd-4956-78f0-a3e7-eb99d95230bd",
									true,
								},
								
								{
									"ba02d82e-c8ee-49ae-82a6-d93d481a3c82",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Addle Ultimate Relativity",
							targetType = "Enemy",
							uuid = "c3a44e51-d8ff-d39c-9e82-af94bdd61848",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R1 roster",
							uuid = "3c32d1dd-4956-78f0-a3e7-eb99d95230bd",
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
							dequeueIfLuaFalse = true,
							name = "Ultimate Relativity CD",
							uuid = "ba02d82e-c8ee-49ae-82a6-d93d481a3c82",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 532.4,
				name = "[LPDU] R1 Addle Ultimate Relativity",
				timeRange = true,
				timelineIndex = 123,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "8dd05d78-ca14-2d12-ae70-dd18c64f5e33",
				version = 2,
			},
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
									"afe92a7f-8bc2-f663-a87f-19f2a809eb68",
									true,
								},
								
								{
									"3e51369a-b1c4-e433-8fb5-56afa9fb8da7",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Mantra Ultimate Relativity",
							uuid = "7eaf6205-b26d-5709-b457-3beeddd84c86",
							version = 2.1,
						},
					},
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
							name = "MONK job",
							uuid = "afe92a7f-8bc2-f663-a87f-19f2a809eb68",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 65,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Ultimate Relativity CD",
							uuid = "3e51369a-b1c4-e433-8fb5-56afa9fb8da7",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 532.4,
				name = "[LPDU] Mantra Ultimate Relativity",
				timeRange = true,
				timelineIndex = 123,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "3a31fc70-0f26-aa5e-a7b8-7db987c1a993",
				version = 2,
			},
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
									"60f8f443-cc9d-d6fb-9ad9-5fb32a6a5cf6",
									true,
								},
								
								{
									"bfe831ef-96a7-7e02-95d9-d0f79170efc1",
									true,
								},
								
								{
									"91aa0318-57b2-9a1c-8584-a7a8864ebded",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Troubadour - Ultimate Relativity",
							uuid = "5c171d25-e527-5572-a3f9-66077d29d400",
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
									"60f8f443-cc9d-d6fb-9ad9-5fb32a6a5cf6",
									true,
								},
								
								{
									"5e826c91-6831-b703-9ea6-f743a0f65a5e",
									true,
								},
								
								{
									"553f91c4-2be3-ba84-aca3-0ab285ab8cfe",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Tactician - Ultimate Relativity",
							uuid = "39b659fa-8322-f044-be09-b507070d193b",
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
									"60f8f443-cc9d-d6fb-9ad9-5fb32a6a5cf6",
									true,
								},
								
								{
									"5ef6a867-fb70-3c71-bcb8-f9ac1e8840c4",
									true,
								},
								
								{
									"a9977b69-fe8f-eb6f-aa03-868a9b1566da",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Shield Samba - Ultimate Relativity",
							uuid = "1fd1fc97-1ce7-615b-8fcb-4c337e68600c",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R2 roster",
							uuid = "60f8f443-cc9d-d6fb-9ad9-5fb32a6a5cf6",
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
							name = "Troubadour job",
							uuid = "bfe831ef-96a7-7e02-95d9-d0f79170efc1",
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
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "91aa0318-57b2-9a1c-8584-a7a8864ebded",
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
							name = "Tactician job",
							uuid = "5e826c91-6831-b703-9ea6-f743a0f65a5e",
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
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "553f91c4-2be3-ba84-aca3-0ab285ab8cfe",
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
							name = "Shield Samba job",
							uuid = "5ef6a867-fb70-3c71-bcb8-f9ac1e8840c4",
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
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "a9977b69-fe8f-eb6f-aa03-868a9b1566da",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 532.4,
				name = "[LPDU] R2 Phys Ranged - Ultimate Relativity",
				timeRange = true,
				timelineIndex = 123,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "ab3a39f1-776f-2025-a75b-1b70368c217d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 2887,
							conditions = 
							{
								
								{
									"58d7ae45-8710-fb3e-a403-8e2563ef26e9",
									true,
								},
								
								{
									"85d74b36-0488-9567-81b9-05aeba074897",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Dismantle Ultimate Relativity",
							uuid = "bcd46014-8e97-fb59-b40d-3550f0ec9a64",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "MACHINIST job",
							uuid = "58d7ae45-8710-fb3e-a403-8e2563ef26e9",
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
							dequeueIfLuaFalse = true,
							name = "Ultimate Relativity CD",
							uuid = "85d74b36-0488-9567-81b9-05aeba074897",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 532.4,
				name = "[LPDU] Dismantle Ultimate Relativity",
				timeRange = true,
				timelineIndex = 123,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "90c4faf3-789b-24b2-8297-b0b819e221c9",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 25857,
							conditions = 
							{
								
								{
									"d98363a4-c95d-9c4c-96de-8581fdc624b7",
									true,
								},
								
								{
									"42074fa1-1e30-7a43-8341-fb1b149af81d",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Magick Barrier Ultimate Relativity",
							uuid = "07d2414d-4fc6-fab6-b44c-f520922edc7b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "REDMAGE",
							name = "REDMAGE job",
							uuid = "d98363a4-c95d-9c4c-96de-8581fdc624b7",
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
							dequeueIfLuaFalse = true,
							name = "Ultimate Relativity CD",
							uuid = "42074fa1-1e30-7a43-8341-fb1b149af81d",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 532.4,
				name = "[LPDU] Magick Barrier Ultimate Relativity",
				timeRange = true,
				timelineIndex = 123,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "833165a7-1858-65c6-8e3f-2f79f328d9cf",
				version = 2,
			},
		},
	},
	[126] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Mitigation",
				uuid = "a10231ce-28ac-e179-9bef-2c68c2d1de87",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 34686,
							conditions = 
							{
								
								{
									"724f3135-6a14-4011-b066-fd637fc68716",
									true,
								},
								
								{
									"5874bcdc-acbd-d7c3-9bf6-701217dd0d46",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Tempera Grassa Dark Fire III",
							uuid = "834ec0cb-eb26-0cba-b665-cb8f3eb54028",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PICTOMANCER",
							name = "PICTOMANCER job",
							uuid = "724f3135-6a14-4011-b066-fd637fc68716",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 34686,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Dark Fire III CD",
							uuid = "5874bcdc-acbd-d7c3-9bf6-701217dd0d46",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 544.2,
				name = "[LPDU] Tempera Grassa Dark Fire III",
				timeRange = true,
				timelineIndex = 126,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "c665d183-c7b3-3993-94ed-e44dace029cb",
				version = 2,
			},
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
									"ca2f28e9-1d7c-d6fb-a0aa-26d576d3d7ec",
									true,
								},
								
								{
									"7166ddc6-2bda-92d8-a7fa-b802f4770972",
									true,
								},
								
								{
									"44327278-a21e-e232-bbbd-3a3ad0f6e09a",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Troubadour - Dark Fire III",
							uuid = "2234002b-af5f-9ed6-b78f-968799a6a985",
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
									"ca2f28e9-1d7c-d6fb-a0aa-26d576d3d7ec",
									true,
								},
								
								{
									"275e3907-c539-102c-a065-a4978b6a12dd",
									true,
								},
								
								{
									"970fd802-09b9-02be-b38d-19b9cbbdfaf9",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Tactician - Dark Fire III",
							uuid = "74879a34-1a0a-d68a-961c-82c67a73d599",
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
									"ca2f28e9-1d7c-d6fb-a0aa-26d576d3d7ec",
									true,
								},
								
								{
									"b610abd8-8b29-21b4-87b3-cc6a993fa804",
									true,
								},
								
								{
									"9d07e166-2e9b-662a-b10d-0b44111d9fce",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Shield Samba - Dark Fire III",
							uuid = "dca9954d-eebc-735f-8432-9c2bcf9957bc",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R1 roster",
							uuid = "ca2f28e9-1d7c-d6fb-a0aa-26d576d3d7ec",
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
							name = "Troubadour job",
							uuid = "7166ddc6-2bda-92d8-a7fa-b802f4770972",
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
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "44327278-a21e-e232-bbbd-3a3ad0f6e09a",
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
							name = "Tactician job",
							uuid = "275e3907-c539-102c-a065-a4978b6a12dd",
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
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "970fd802-09b9-02be-b38d-19b9cbbdfaf9",
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
							name = "Shield Samba job",
							uuid = "b610abd8-8b29-21b4-87b3-cc6a993fa804",
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
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "9d07e166-2e9b-662a-b10d-0b44111d9fce",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 544.2,
				name = "[LPDU] R1 Phys Ranged - Dark Fire III",
				timeRange = true,
				timelineIndex = 126,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "78bda707-a6ce-5cfe-a884-07298f468afc",
				version = 2,
			},
		},
	},
	[138] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Mitigation",
				uuid = "dc1c6eb1-0f13-ef40-a264-02c22a7ded1e",
			},
			objectType = "folder",
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
									"0d2104f7-a71e-7346-9c43-80f52e8af953",
									true,
								},
								
								{
									"b7d50553-7667-2144-bb85-91a0c47b2c8d",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] M2 Feint Shell Crusher + Shockwave Pulsar",
							targetType = "Enemy",
							uuid = "c2bce1a6-b4df-a6ce-8d58-17b74ddaefdf",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"M2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "M2 roster",
							uuid = "0d2104f7-a71e-7346-9c43-80f52e8af953",
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
							dequeueIfLuaFalse = true,
							name = "Shell Crusher + Shockwave Pulsar CD",
							uuid = "b7d50553-7667-2144-bb85-91a0c47b2c8d",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 578.6,
				name = "[LPDU] M2 Feint Shell Crusher + Shockwave Pulsar",
				timeRange = true,
				timelineIndex = 138,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "c9399e7e-b78d-e0a5-96ce-e95f5574a2e1",
				version = 2,
			},
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
									"8d64ebab-7122-07c3-a002-60cd91960740",
									true,
								},
								
								{
									"dee33aa5-7469-028c-8b8c-3464fbff1af5",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Addle 2 Shell Crusher + Shockwave Pulsar",
							targetType = "Enemy",
							uuid = "c6a2ed18-4f21-5239-b996-97f98827e152",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R2 roster",
							uuid = "8d64ebab-7122-07c3-a002-60cd91960740",
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
							dequeueIfLuaFalse = true,
							name = "Shell Crusher + Shockwave Pulsar CD",
							uuid = "dee33aa5-7469-028c-8b8c-3464fbff1af5",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				enabled = false,
				mechanicTime = 578.6,
				name = "[LPDU] R2 Addle 2 Shell Crusher + Shockwave Pulsar",
				timeRange = true,
				timelineIndex = 138,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "294d3a14-46de-1e96-8932-ffadd575f2bf",
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
				name = "LPDU Mitigation",
				uuid = "b0e669a2-a67e-dee7-be08-3942fa3f9efc",
			},
			objectType = "folder",
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
									"48f43004-4f8f-b1ab-a3e7-75189cfe520a",
									true,
								},
								
								{
									"4b9cdff7-0218-6a71-ae7a-499895edea43",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Nature's Minne Shockwave Pulsar + Memory's End",
							uuid = "e936dc79-1ac0-d52e-8305-1169f60c0bbc",
							version = 2.1,
						},
					},
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
							name = "BARD job",
							uuid = "48f43004-4f8f-b1ab-a3e7-75189cfe520a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7408,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Shockwave Pulsar + Memory's End CD",
							uuid = "4b9cdff7-0218-6a71-ae7a-499895edea43",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 656.4,
				name = "[LPDU] Nature's Minne Shockwave Pulsar + Memory's End",
				timeRange = true,
				timelineIndex = 153,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "e3a49d6a-d70d-2a37-80c9-7e454ee2c511",
				version = 2,
			},
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
									"9a49c8cf-33e6-73eb-a006-fb21a5611817",
									true,
								},
								
								{
									"1de54d1b-3f9f-0f12-a646-bc4627f1745e",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] M1 Feint Shockwave Pulsar + Memory's End",
							targetType = "Enemy",
							uuid = "0752c767-1eed-0139-a790-574ab167baa7",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"M1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "M1 roster",
							uuid = "9a49c8cf-33e6-73eb-a006-fb21a5611817",
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
							dequeueIfLuaFalse = true,
							name = "Shockwave Pulsar + Memory's End CD",
							uuid = "1de54d1b-3f9f-0f12-a646-bc4627f1745e",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 656.4,
				name = "[LPDU] M1 Feint Shockwave Pulsar + Memory's End",
				timeRange = true,
				timelineIndex = 153,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "5e473cdd-2da4-880c-9a57-198eef5a9633",
				version = 2,
			},
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
									"3ba0eb7d-29fa-753e-a9f9-3db01a364324",
									true,
								},
								
								{
									"9f142c2e-3154-4e06-9b18-f4ffe0b8bf31",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Mantra Shockwave Pulsar + Memory's End",
							uuid = "c89da4a7-864c-9899-95b4-25fedebbc9a3",
							version = 2.1,
						},
					},
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
							name = "MONK job",
							uuid = "3ba0eb7d-29fa-753e-a9f9-3db01a364324",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 65,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Shockwave Pulsar + Memory's End CD",
							uuid = "9f142c2e-3154-4e06-9b18-f4ffe0b8bf31",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 656.4,
				name = "[LPDU] Mantra Shockwave Pulsar + Memory's End",
				timeRange = true,
				timelineIndex = 153,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "e51c3ff8-7369-c7f0-bacd-35ea1e46bc6b",
				version = 2,
			},
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
									"5026f489-04fb-3ab2-8a18-dfd9734944b9",
									true,
								},
								
								{
									"d448e09d-ad9a-8915-b9e1-b6174f580ac6",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Addle Shockwave Pulsar + Memory's End",
							targetType = "Enemy",
							uuid = "a248acbc-b611-d0a0-a8f4-190c8ebd06db",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R1 roster",
							uuid = "5026f489-04fb-3ab2-8a18-dfd9734944b9",
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
							dequeueIfLuaFalse = true,
							name = "Shockwave Pulsar + Memory's End CD",
							uuid = "d448e09d-ad9a-8915-b9e1-b6174f580ac6",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 656.4,
				name = "[LPDU] R1 Addle Shockwave Pulsar + Memory's End",
				timeRange = true,
				timelineIndex = 153,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "50cb30d0-2788-4298-a222-8ebfeb7447f7",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 16014,
							conditions = 
							{
								
								{
									"f72450a1-104b-27aa-8797-dfa52993fbb6",
									true,
								},
								
								{
									"715d83c2-8338-a9d6-841c-a618024cbd89",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Improvisation Shockwave Pulsar + Memory's End",
							uuid = "e7c218e3-b99c-2b73-afd1-06bf3d46170b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "DANCER job",
							uuid = "f72450a1-104b-27aa-8797-dfa52993fbb6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16014,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Shockwave Pulsar + Memory's End CD",
							uuid = "715d83c2-8338-a9d6-841c-a618024cbd89",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 656.4,
				name = "[LPDU] Improvisation Shockwave Pulsar + Memory's End",
				timeRange = true,
				timelineIndex = 153,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "6f9b4a0c-5d98-2836-b33b-42eafbfa5018",
				version = 2,
			},
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
									"9d7b9392-564a-b96b-9fe8-80af6c1f4227",
									true,
								},
								
								{
									"ffe1b52e-388e-228a-8a82-4cb447161b40",
									true,
								},
								
								{
									"8abe0170-1c1b-5c79-9622-538ef16eb642",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Troubadour - Shockwave Pulsar + Memory's End",
							uuid = "0a97c854-d8e9-4a07-a4eb-2ebf0538be43",
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
									"9d7b9392-564a-b96b-9fe8-80af6c1f4227",
									true,
								},
								
								{
									"293db9bb-9e08-e5d4-bab8-7acb71805186",
									true,
								},
								
								{
									"c36b4e74-ea35-b758-92ec-71e3bb351cd3",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Tactician - Shockwave Pulsar + Memory's End",
							uuid = "94614015-2ebc-b610-a871-03ef376eeefc",
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
									"9d7b9392-564a-b96b-9fe8-80af6c1f4227",
									true,
								},
								
								{
									"2347a4cc-49c2-5174-bf87-e0044c4904eb",
									true,
								},
								
								{
									"2e483019-d08a-35a0-bd20-2a5ef4bf5941",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Shield Samba - Shockwave Pulsar + Memory's End",
							uuid = "7b62e4ff-a4c4-10b9-9dff-8548f8a39f4a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R2 roster",
							uuid = "9d7b9392-564a-b96b-9fe8-80af6c1f4227",
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
							name = "Troubadour job",
							uuid = "ffe1b52e-388e-228a-8a82-4cb447161b40",
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
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "8abe0170-1c1b-5c79-9622-538ef16eb642",
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
							name = "Tactician job",
							uuid = "293db9bb-9e08-e5d4-bab8-7acb71805186",
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
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "c36b4e74-ea35-b758-92ec-71e3bb351cd3",
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
							name = "Shield Samba job",
							uuid = "2347a4cc-49c2-5174-bf87-e0044c4904eb",
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
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "2e483019-d08a-35a0-bd20-2a5ef4bf5941",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 656.4,
				name = "[LPDU] R2 Phys Ranged - Shockwave Pulsar + Memory's End",
				timeRange = true,
				timelineIndex = 153,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "7e898572-7bdc-9ad8-bc81-c26c2d7e9ea5",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 34686,
							conditions = 
							{
								
								{
									"649273d1-6ff4-4b65-a06a-ff1c54885d12",
									true,
								},
								
								{
									"c51b206c-b3eb-fca2-a4d9-42b39cc70900",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Tempera Grassa Shockwave Pulsar + Memory's End",
							uuid = "0b4f87a3-375b-407f-a771-5895413bf2f9",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PICTOMANCER",
							name = "PICTOMANCER job",
							uuid = "649273d1-6ff4-4b65-a06a-ff1c54885d12",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 34686,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Shockwave Pulsar + Memory's End CD",
							uuid = "c51b206c-b3eb-fca2-a4d9-42b39cc70900",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 656.4,
				name = "[LPDU] Tempera Grassa Shockwave Pulsar + Memory's End",
				timeRange = true,
				timelineIndex = 153,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "c2872b05-0b8e-4d45-8ca6-02c7b77737b1",
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
				name = "LPDU Mitigation",
				uuid = "e8ea3efa-e89f-89af-8818-4bcb212ce849",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 2887,
							conditions = 
							{
								
								{
									"057f7e42-31d5-0d08-a735-e55b40928c66",
									true,
								},
								
								{
									"8056261e-8fa7-9703-9167-324f8713fa03",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Dismantle Darklit Dragonsong",
							uuid = "591026fe-4778-7131-a092-1f3d2046eaea",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "MACHINIST job",
							uuid = "057f7e42-31d5-0d08-a735-e55b40928c66",
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
							dequeueIfLuaFalse = true,
							name = "Darklit Dragonsong CD",
							uuid = "8056261e-8fa7-9703-9167-324f8713fa03",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 738.2,
				name = "[LPDU] Dismantle Darklit Dragonsong",
				timeRange = true,
				timelineIndex = 166,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "37c2abb8-d5ef-9e20-a828-4ecde222cfe9",
				version = 2,
			},
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
									"e7433206-23aa-e69c-a45e-0910c9a93a97",
									true,
								},
								
								{
									"f57ef022-d253-563c-b45d-e007aaa32619",
									true,
								},
								
								{
									"350cc91b-d3c6-7c4a-bc92-d00cc61c8a12",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Troubadour - Darklit Dragonsong",
							uuid = "c9bac720-1c1b-aea6-9044-9f3d0ecb4d65",
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
									"e7433206-23aa-e69c-a45e-0910c9a93a97",
									true,
								},
								
								{
									"b3c4a1a0-fad1-c094-9e6f-bcd898be70dc",
									true,
								},
								
								{
									"25fa646f-ecf4-840d-8b9a-3d5af4b3bcbc",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Tactician - Darklit Dragonsong",
							uuid = "3dc6859b-1605-f82d-9571-e421c8a80cb4",
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
									"e7433206-23aa-e69c-a45e-0910c9a93a97",
									true,
								},
								
								{
									"b6ba5a2a-9d1b-c7bb-91bb-278ec1646b75",
									true,
								},
								
								{
									"e68520cd-998a-013d-ae31-fa74a2fc508e",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Shield Samba - Darklit Dragonsong",
							uuid = "47fe4e1e-d49e-e0af-8df4-72f80b41c8fa",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R1 roster",
							uuid = "e7433206-23aa-e69c-a45e-0910c9a93a97",
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
							name = "Troubadour job",
							uuid = "f57ef022-d253-563c-b45d-e007aaa32619",
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
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "350cc91b-d3c6-7c4a-bc92-d00cc61c8a12",
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
							name = "Tactician job",
							uuid = "b3c4a1a0-fad1-c094-9e6f-bcd898be70dc",
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
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "25fa646f-ecf4-840d-8b9a-3d5af4b3bcbc",
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
							name = "Shield Samba job",
							uuid = "b6ba5a2a-9d1b-c7bb-91bb-278ec1646b75",
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
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "e68520cd-998a-013d-ae31-fa74a2fc508e",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 738.2,
				name = "[LPDU] R1 Phys Ranged - Darklit Dragonsong",
				timeRange = true,
				timelineIndex = 166,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "dee70a7d-1827-afd2-b5d2-fbd63ec0d065",
				version = 2,
			},
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
									"724a3e8c-7a68-ab9f-bc05-d07837a9aea4",
									true,
								},
								
								{
									"f86f9c4a-a7fa-0078-8625-c7ca506245ac",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] M2 Feint Darklit Dragonsong (Ryne)",
							targetType = "Enemy",
							uuid = "4bae1878-5e4b-fd02-8fda-55a9c94f92e2",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"M2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "M2 roster",
							uuid = "724a3e8c-7a68-ab9f-bc05-d07837a9aea4",
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
							dequeueIfLuaFalse = true,
							name = "Darklit Dragonsong (Ryne) CD",
							uuid = "f86f9c4a-a7fa-0078-8625-c7ca506245ac",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 738.2,
				name = "[LPDU] M2 Feint Darklit Dragonsong (Ryne)",
				timeRange = true,
				timelineIndex = 166,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "3af60a22-8e77-3efd-90d2-e3ed02559b23",
				version = 2,
			},
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
									"bbc8a9b1-9cb9-69ac-8a06-6d07e154f1d8",
									true,
								},
								
								{
									"d3c68315-fd22-2668-bedb-1d817df6c3ac",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Addle 2 Darklit Dragonsong",
							targetType = "Enemy",
							uuid = "4e2d7072-9e72-2006-9fc6-2ca5f5696624",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R2 roster",
							uuid = "bbc8a9b1-9cb9-69ac-8a06-6d07e154f1d8",
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
							dequeueIfLuaFalse = true,
							name = "Darklit Dragonsong CD",
							uuid = "d3c68315-fd22-2668-bedb-1d817df6c3ac",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				enabled = false,
				mechanicTime = 738.2,
				name = "[LPDU] R2 Addle 2 Darklit Dragonsong",
				timeRange = true,
				timelineIndex = 166,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "5acbc6f9-542d-1b8f-a1ad-a4b7d3c92692",
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
				name = "LPDU Mitigation",
				uuid = "b573d199-721a-7ee6-bef4-29369f11c366",
			},
			objectType = "folder",
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
									"c0b7e0ac-19b6-fd77-8862-45da8c0c7bec",
									true,
								},
								
								{
									"c27f55a6-a606-2ea0-81ff-0885ecf6b203",
									true,
								},
								
								{
									"76c337e2-5b9d-1601-a265-c3cbb41a0b3f",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Troubadour - P4 Akh Morn 1",
							uuid = "5d233b34-4390-b9f4-8474-f5abe240f0a0",
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
									"c0b7e0ac-19b6-fd77-8862-45da8c0c7bec",
									true,
								},
								
								{
									"f5efedf8-cfa3-5b9a-bb19-f000b5feaf66",
									true,
								},
								
								{
									"87e867c8-4cc3-e74f-94c4-e03983e1512c",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Tactician - P4 Akh Morn 1",
							uuid = "bb329436-d260-5bbd-b027-57e32170ff67",
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
									"c0b7e0ac-19b6-fd77-8862-45da8c0c7bec",
									true,
								},
								
								{
									"e8cebed1-5f98-d845-a014-1831c0d4a9fe",
									true,
								},
								
								{
									"cba98b9a-c4b7-df17-818a-924235548a0e",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Shield Samba - P4 Akh Morn 1",
							uuid = "ebd1a22a-ef45-aae1-81e7-e4124ff3340d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R2 roster",
							uuid = "c0b7e0ac-19b6-fd77-8862-45da8c0c7bec",
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
							name = "Troubadour job",
							uuid = "c27f55a6-a606-2ea0-81ff-0885ecf6b203",
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
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "76c337e2-5b9d-1601-a265-c3cbb41a0b3f",
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
							name = "Tactician job",
							uuid = "f5efedf8-cfa3-5b9a-bb19-f000b5feaf66",
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
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "87e867c8-4cc3-e74f-94c4-e03983e1512c",
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
							name = "Shield Samba job",
							uuid = "e8cebed1-5f98-d845-a014-1831c0d4a9fe",
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
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "cba98b9a-c4b7-df17-818a-924235548a0e",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 773.5,
				name = "[LPDU] R2 Phys Ranged - P4 Akh Morn 1",
				timeRange = true,
				timelineIndex = 175,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "5223976f-9421-21dd-a963-18642b34a638",
				version = 2,
			},
		},
	},
	[179] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Mitigation",
				uuid = "300954c6-435a-aac3-8309-57e52a67e1ad",
			},
			objectType = "folder",
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
									"e4f19d36-8f7a-4359-b2ff-843e8bc6d5f6",
									true,
								},
								
								{
									"6122e22b-88c4-301c-a7f3-08b272c9e4a6",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] M1 Feint Crystallize Time (Gaia)",
							targetType = "Enemy",
							uuid = "36f67c7d-1bb2-e08c-a9ac-c9301f80466d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"M1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "M1 roster",
							uuid = "e4f19d36-8f7a-4359-b2ff-843e8bc6d5f6",
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
							dequeueIfLuaFalse = true,
							name = "Crystallize Time (Gaia) CD",
							uuid = "6122e22b-88c4-301c-a7f3-08b272c9e4a6",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 798.9,
				name = "[LPDU] M1 Feint Crystallize Time (Gaia)",
				timeRange = true,
				timelineIndex = 179,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "28b38742-b499-49e4-87de-e1338e85f3a8",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 25857,
							conditions = 
							{
								
								{
									"bb087493-2769-1e4b-84a5-1c64d9c646f9",
									true,
								},
								
								{
									"e44241b8-ea93-64c8-8c0b-d88711beb550",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Magick Barrier Crystallize Time",
							uuid = "3a1d16ca-daa4-a278-b1d2-438095d52520",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "REDMAGE",
							name = "REDMAGE job",
							uuid = "bb087493-2769-1e4b-84a5-1c64d9c646f9",
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
							dequeueIfLuaFalse = true,
							name = "Crystallize Time CD",
							uuid = "e44241b8-ea93-64c8-8c0b-d88711beb550",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 798.9,
				name = "[LPDU] Magick Barrier Crystallize Time",
				timeRange = true,
				timelineIndex = 179,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "9dcdccd7-b32e-ae42-b484-524535c4d7bc",
				version = 2,
			},
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
									"94e3ba84-d4e0-4494-a8fc-5c291288ea21",
									true,
								},
								
								{
									"e43dd82c-b6ce-7ea6-b7f4-f442a4106a69",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Addle Crystallize Time",
							targetType = "Enemy",
							uuid = "ec4eda11-e6a1-56c1-a850-4cecfc93ac25",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R1 roster",
							uuid = "94e3ba84-d4e0-4494-a8fc-5c291288ea21",
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
							dequeueIfLuaFalse = true,
							name = "Crystallize Time CD",
							uuid = "e43dd82c-b6ce-7ea6-b7f4-f442a4106a69",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 798.9,
				name = "[LPDU] R1 Addle Crystallize Time",
				timeRange = true,
				timelineIndex = 179,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "8af95df8-3618-f0f6-95a2-7aa9241eceb6",
				version = 2,
			},
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
									"721ee3fd-adfa-f235-b416-eaf7db4fb216",
									true,
								},
								
								{
									"60f92f05-53dd-b8a6-a512-df8aa61f22eb",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Mantra Crystallize Time",
							uuid = "5790a44c-c21c-8a39-9c67-879fad652bed",
							version = 2.1,
						},
					},
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
							name = "MONK job",
							uuid = "721ee3fd-adfa-f235-b416-eaf7db4fb216",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 65,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Crystallize Time CD",
							uuid = "60f92f05-53dd-b8a6-a512-df8aa61f22eb",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 798.9,
				name = "[LPDU] Mantra Crystallize Time",
				timeRange = true,
				timelineIndex = 179,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "0a8c314b-569e-b539-ba34-a50d8f4dc912",
				version = 2,
			},
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
									"47863a8c-75d7-6565-b926-5d0660ff5e2c",
									true,
								},
								
								{
									"1cc6c40f-8e92-05fd-9317-3508a3831b14",
									true,
								},
								
								{
									"5279ed87-71aa-f251-96cc-326b1eff950c",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Troubadour - Crystallize Time Rewind",
							uuid = "0961687b-f1e0-5063-8c71-6a09b308106a",
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
									"47863a8c-75d7-6565-b926-5d0660ff5e2c",
									true,
								},
								
								{
									"e9260165-2acb-331b-8939-84afd10ba610",
									true,
								},
								
								{
									"0b600168-66a6-41a4-beb6-9238c1e6d2ee",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Tactician - Crystallize Time Rewind",
							uuid = "657905de-13af-e3a6-88ab-99023d165f00",
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
									"47863a8c-75d7-6565-b926-5d0660ff5e2c",
									true,
								},
								
								{
									"80af7271-d328-db0d-994e-f43232c16ba9",
									true,
								},
								
								{
									"06241e47-3c9e-8761-bba9-f93e94b1bb74",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Shield Samba - Crystallize Time Rewind",
							uuid = "646c7b4a-1f4f-0ee4-88b0-92850d669c73",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R1 roster",
							uuid = "47863a8c-75d7-6565-b926-5d0660ff5e2c",
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
							name = "Troubadour job",
							uuid = "1cc6c40f-8e92-05fd-9317-3508a3831b14",
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
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "5279ed87-71aa-f251-96cc-326b1eff950c",
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
							name = "Tactician job",
							uuid = "e9260165-2acb-331b-8939-84afd10ba610",
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
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "0b600168-66a6-41a4-beb6-9238c1e6d2ee",
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
							name = "Shield Samba job",
							uuid = "80af7271-d328-db0d-994e-f43232c16ba9",
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
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "06241e47-3c9e-8761-bba9-f93e94b1bb74",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 798.9,
				name = "[LPDU] R1 Phys Ranged - Crystallize Time Rewind",
				timeRange = true,
				timelineIndex = 179,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "76da8c46-480b-66f8-ba2e-2a1cd6fae0d6",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 16014,
							conditions = 
							{
								
								{
									"2af314ac-7db2-5744-a5c5-c0f4bba280e6",
									true,
								},
								
								{
									"7ca97e15-7cfb-a1ef-8b7d-ff1313298120",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Improvisation Crystallize Time",
							uuid = "170a2ac7-3be6-4315-a702-0c0989ca824f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "DANCER job",
							uuid = "2af314ac-7db2-5744-a5c5-c0f4bba280e6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16014,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Crystallize Time CD",
							uuid = "7ca97e15-7cfb-a1ef-8b7d-ff1313298120",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 798.9,
				name = "[LPDU] Improvisation Crystallize Time",
				timeRange = true,
				timelineIndex = 179,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "5626bc4d-823d-23bd-abcc-48ce0743190d",
				version = 2,
			},
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
									"9ab2b530-3929-0dfd-a8cb-6f278810719f",
									true,
								},
								
								{
									"c3d260f0-4158-7055-8ca6-8848ee0d1367",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Nature's Minne Crystallize Time",
							uuid = "3d277800-6774-1130-bf8d-ddb42fa03cce",
							version = 2.1,
						},
					},
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
							name = "BARD job",
							uuid = "9ab2b530-3929-0dfd-a8cb-6f278810719f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7408,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Crystallize Time CD",
							uuid = "c3d260f0-4158-7055-8ca6-8848ee0d1367",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 798.9,
				name = "[LPDU] Nature's Minne Crystallize Time",
				timeRange = true,
				timelineIndex = 179,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "7bb0a7aa-bb93-8e3b-ba07-dbe8f9e76529",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 34686,
							conditions = 
							{
								
								{
									"85851949-84b7-7fb1-bbf6-50a2b70a5f56",
									true,
								},
								
								{
									"71fefb25-1f00-bf50-948b-0c31a706bea5",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Tempera Grassa Crystallize Time Rewind",
							uuid = "590481f7-431a-31a6-9bbd-a5523d930b3a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PICTOMANCER",
							name = "PICTOMANCER job",
							uuid = "85851949-84b7-7fb1-bbf6-50a2b70a5f56",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 34686,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Crystallize Time Rewind CD",
							uuid = "71fefb25-1f00-bf50-948b-0c31a706bea5",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 798.9,
				name = "[LPDU] Tempera Grassa Crystallize Time Rewind",
				timeRange = true,
				timelineIndex = 179,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "acc9f421-1b3c-8e90-ba57-bef6f4bd8b23",
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
				name = "LPDU Mitigation",
				uuid = "982f49ed-1673-3b3a-a2f4-c9af284631a7",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 2887,
							conditions = 
							{
								
								{
									"3f39b37f-1ca7-92a0-b097-f23a8cc7707e",
									true,
								},
								
								{
									"425c0c45-6903-f68e-95a1-5278643747b7",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Dismantle Akh Morn on Ryne",
							uuid = "a4ecb823-fb71-b9d2-9137-a18a38927680",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "MACHINIST job",
							uuid = "3f39b37f-1ca7-92a0-b097-f23a8cc7707e",
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
							dequeueIfLuaFalse = true,
							name = "Akh Morn on Ryne CD",
							uuid = "425c0c45-6903-f68e-95a1-5278643747b7",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 854.9,
				name = "[LPDU] Dismantle Akh Morn on Ryne",
				timeRange = true,
				timelineIndex = 202,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "94b58b3a-0886-4189-98c6-71fe94576644",
				version = 2,
			},
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
									"af303233-021a-8a3a-b182-e716811be83f",
									true,
								},
								
								{
									"9cad5412-1fd4-04da-ab35-d3acf0dc7b5d",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] M2 Feint Post-CT Akh Morn + Morn Afah",
							targetType = "Enemy",
							uuid = "b1ae97b3-183a-7e67-bebf-0f3c6aca8a9f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"M2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "M2 roster",
							uuid = "af303233-021a-8a3a-b182-e716811be83f",
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
							dequeueIfLuaFalse = true,
							name = "Post-CT Akh Morn + Morn Afah CD",
							uuid = "9cad5412-1fd4-04da-ab35-d3acf0dc7b5d",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 854.9,
				name = "[LPDU] M2 Feint Post-CT Akh Morn + Morn Afah",
				timeRange = true,
				timelineIndex = 202,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "c233322b-be90-8e36-b0d2-68c22fb34d47",
				version = 2,
			},
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
									"c8d77df6-ab70-2a45-947c-1e5e0d3a8a40",
									true,
								},
								
								{
									"849d4d25-eb09-479b-a0e9-e9be14a8e424",
									true,
								},
								
								{
									"1e7ea252-ec63-a953-bb46-486f0ddaceec",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Troubadour - P4 Akh Morn 2 + Morn Afah",
							uuid = "368d356a-84fe-5e3f-8044-08556eea0a40",
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
									"c8d77df6-ab70-2a45-947c-1e5e0d3a8a40",
									true,
								},
								
								{
									"ad7b0e5f-c208-b3b4-b8da-57fccb2798e5",
									true,
								},
								
								{
									"e78c8ad4-3e1c-69b2-8b10-804f0ad18ec5",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Tactician - P4 Akh Morn 2 + Morn Afah",
							uuid = "a862ca7d-e226-7ac3-8996-6dbb367a8bbb",
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
									"c8d77df6-ab70-2a45-947c-1e5e0d3a8a40",
									true,
								},
								
								{
									"8ba72c4d-f494-ea5a-bffa-848b91be4c3a",
									true,
								},
								
								{
									"11d453a6-a026-8138-82bd-84768059c473",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Shield Samba - P4 Akh Morn 2 + Morn Afah",
							uuid = "ea7240d3-4607-6ce4-a1e5-a249de43299c",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R2 roster",
							uuid = "c8d77df6-ab70-2a45-947c-1e5e0d3a8a40",
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
							name = "Troubadour job",
							uuid = "849d4d25-eb09-479b-a0e9-e9be14a8e424",
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
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "1e7ea252-ec63-a953-bb46-486f0ddaceec",
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
							name = "Tactician job",
							uuid = "ad7b0e5f-c208-b3b4-b8da-57fccb2798e5",
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
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "e78c8ad4-3e1c-69b2-8b10-804f0ad18ec5",
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
							name = "Shield Samba job",
							uuid = "8ba72c4d-f494-ea5a-bffa-848b91be4c3a",
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
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "11d453a6-a026-8138-82bd-84768059c473",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 854.9,
				name = "[LPDU] R2 Phys Ranged - P4 Akh Morn 2 + Morn Afah",
				timeRange = true,
				timelineIndex = 202,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "e6ddfb7a-409f-1c48-9487-f84844da640c",
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
				name = "LPDU Mitigation",
				uuid = "ee766212-55b8-57db-8e42-ed75d96cf12e",
			},
			objectType = "folder",
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
									"f5c82fd6-245c-7994-9de5-44bbff77f5a1",
									true,
								},
								
								{
									"9a0a4f0c-3827-cbe6-a319-3521eb8897c7",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] M1 Feint Fulgent Blade",
							targetType = "Enemy",
							uuid = "7e6d8661-87d6-e7dd-b5f2-672f6e9c1424",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"M1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "M1 roster",
							uuid = "f5c82fd6-245c-7994-9de5-44bbff77f5a1",
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
							dequeueIfLuaFalse = true,
							name = "Fulgent Blade CD",
							uuid = "9a0a4f0c-3827-cbe6-a319-3521eb8897c7",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 984.8,
				name = "[LPDU] M1 Feint Fulgent Blade",
				timeRange = true,
				timelineIndex = 209,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "6ba813c8-1cf3-28f3-a577-3303d30aa454",
				version = 2,
			},
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
									"06675785-757d-eca5-b50a-fdc7b2a6932f",
									true,
								},
								
								{
									"a2269df3-7d00-8a7c-aa87-0dd095f93802",
									true,
								},
								
								{
									"2993f6f4-dafe-9ca3-9e77-e0dbdb9bd64b",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Troubadour - Fulgent Blade 1",
							uuid = "fc720ea6-0097-5d27-8285-d0a5d44539b8",
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
									"06675785-757d-eca5-b50a-fdc7b2a6932f",
									true,
								},
								
								{
									"d1723eb4-2aad-9bfd-bf95-2abeeb05780b",
									true,
								},
								
								{
									"7c139fd8-746c-fcb5-a03c-0ae36a88b098",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Tactician - Fulgent Blade 1",
							uuid = "9687ad47-c527-f6b7-bf88-c9e36a4845ba",
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
									"06675785-757d-eca5-b50a-fdc7b2a6932f",
									true,
								},
								
								{
									"d4eb4b3e-8f59-c085-ab73-c4b3ff5bbce5",
									true,
								},
								
								{
									"67fd696b-f383-6803-b069-f62fcf91d52d",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Shield Samba - Fulgent Blade 1",
							uuid = "8f6c77d9-028e-182d-8949-21a0aa9d42aa",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R1 roster",
							uuid = "06675785-757d-eca5-b50a-fdc7b2a6932f",
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
							name = "Troubadour job",
							uuid = "a2269df3-7d00-8a7c-aa87-0dd095f93802",
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
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "2993f6f4-dafe-9ca3-9e77-e0dbdb9bd64b",
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
							name = "Tactician job",
							uuid = "d1723eb4-2aad-9bfd-bf95-2abeeb05780b",
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
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "7c139fd8-746c-fcb5-a03c-0ae36a88b098",
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
							name = "Shield Samba job",
							uuid = "d4eb4b3e-8f59-c085-ab73-c4b3ff5bbce5",
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
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "67fd696b-f383-6803-b069-f62fcf91d52d",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 984.8,
				name = "[LPDU] R1 Phys Ranged - Fulgent Blade 1",
				timeRange = true,
				timelineIndex = 209,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "95ddfa57-1164-54de-a5fd-602c7dcfbd28",
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
				name = "LPDU Mitigation",
				uuid = "6c5fa020-3ac6-ae23-8afa-eec9cc6a34ba",
			},
			objectType = "folder",
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
									"141f1b6c-93a8-4585-a589-7d0007f43aad",
									true,
								},
								
								{
									"3b4b4a84-b97d-e5ed-9a65-8ae4bded629f",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Addle P5 Akh Morn 1",
							targetType = "Enemy",
							uuid = "8b3d234a-4c44-7101-bb76-06749a2642d5",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R1 roster",
							uuid = "141f1b6c-93a8-4585-a589-7d0007f43aad",
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
							dequeueIfLuaFalse = true,
							name = "P5 Akh Morn 1 CD",
							uuid = "3b4b4a84-b97d-e5ed-9a65-8ae4bded629f",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1011.4,
				name = "[LPDU] R1 Addle P5 Akh Morn 1",
				timeRange = true,
				timelineIndex = 215,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "bb9f1b42-c2a7-9eca-a9e0-e1eb3f9fd8a0",
				version = 2,
			},
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
									"03df86a7-454b-d15f-8974-bef6f3465abb",
									true,
								},
								
								{
									"f6bebb98-0ab8-4ff0-a43b-2830a34acfb0",
									true,
								},
								
								{
									"d3a84a15-31c5-96c6-919d-5037d9f3fa95",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Troubadour - P5 Akh Morn 1",
							uuid = "4e887d22-410e-5c6c-b7e6-8df72e5011e3",
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
									"03df86a7-454b-d15f-8974-bef6f3465abb",
									true,
								},
								
								{
									"b0331763-810b-d461-aae0-ad384e8c330f",
									true,
								},
								
								{
									"57dc52fd-a2f1-6cbf-a4b1-43f2acabbfd6",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Tactician - P5 Akh Morn 1",
							uuid = "49b88bdd-0b45-7cd5-bbf6-683ceefa7908",
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
									"03df86a7-454b-d15f-8974-bef6f3465abb",
									true,
								},
								
								{
									"1b320c78-9d55-95b7-b09a-73bfa8815423",
									true,
								},
								
								{
									"631d609e-c6ca-c392-b607-e1f6db1c9bba",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Shield Samba - P5 Akh Morn 1",
							uuid = "ad8765f8-62d2-b512-884d-37af4363ddce",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R2 roster",
							uuid = "03df86a7-454b-d15f-8974-bef6f3465abb",
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
							name = "Troubadour job",
							uuid = "f6bebb98-0ab8-4ff0-a43b-2830a34acfb0",
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
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "d3a84a15-31c5-96c6-919d-5037d9f3fa95",
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
							name = "Tactician job",
							uuid = "b0331763-810b-d461-aae0-ad384e8c330f",
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
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "57dc52fd-a2f1-6cbf-a4b1-43f2acabbfd6",
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
							name = "Shield Samba job",
							uuid = "1b320c78-9d55-95b7-b09a-73bfa8815423",
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
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "631d609e-c6ca-c392-b607-e1f6db1c9bba",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1011.4,
				name = "[LPDU] R2 Phys Ranged - P5 Akh Morn 1",
				timeRange = true,
				timelineIndex = 215,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "e5195101-2562-77c5-b4b5-b3ac3411ca09",
				version = 2,
			},
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
									"9b985e35-4754-cb45-9270-293bd476cb11",
									true,
								},
								
								{
									"f826f00c-9c5d-da28-a02b-83cf3a349404",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] M2 Feint P5 Akh Morn 1",
							targetType = "Enemy",
							uuid = "6eb5bab9-c279-02f5-870c-5ba3f86bb492",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"M2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "M2 roster",
							uuid = "9b985e35-4754-cb45-9270-293bd476cb11",
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
							dequeueIfLuaFalse = true,
							name = "P5 Akh Morn 1 CD",
							uuid = "f826f00c-9c5d-da28-a02b-83cf3a349404",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1011.4,
				name = "[LPDU] M2 Feint P5 Akh Morn 1",
				timeRange = true,
				timelineIndex = 215,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "c887d2eb-f432-c0f5-b70b-e801c3cc834f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 34686,
							conditions = 
							{
								
								{
									"51e633cd-694a-5f73-a7c9-3819658910ba",
									true,
								},
								
								{
									"5c0f011f-d190-de20-835d-dc1faff1c3eb",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Tempera Grassa P5 Akh Morn 1",
							uuid = "cd385a43-16dd-3a50-8e3e-f43ab4a7021e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PICTOMANCER",
							name = "PICTOMANCER job",
							uuid = "51e633cd-694a-5f73-a7c9-3819658910ba",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 34686,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "P5 Akh Morn 1 CD",
							uuid = "5c0f011f-d190-de20-835d-dc1faff1c3eb",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1011.4,
				name = "[LPDU] Tempera Grassa P5 Akh Morn 1",
				timeRange = true,
				timelineIndex = 215,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "9ad783d5-bf09-431b-a8ec-140a80f4df3b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 16014,
							conditions = 
							{
								
								{
									"894ad83e-a1cc-9dd9-abcf-1bdbf8e346a4",
									true,
								},
								
								{
									"02aa88b7-06d6-751f-b3d4-91fec2e4bec7",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Improvisation P5 Akh Morn 1",
							uuid = "035d94ef-7772-1ec7-bcde-1b891f1dc217",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "DANCER job",
							uuid = "894ad83e-a1cc-9dd9-abcf-1bdbf8e346a4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16014,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "P5 Akh Morn 1 CD",
							uuid = "02aa88b7-06d6-751f-b3d4-91fec2e4bec7",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1011.4,
				name = "[LPDU] Improvisation P5 Akh Morn 1",
				timeRange = true,
				timelineIndex = 215,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "cb87df62-8d5c-1884-afe9-17f7a1c9d1b6",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 2887,
							conditions = 
							{
								
								{
									"1d5fd847-18de-dd31-89e0-b3bd811a9816",
									true,
								},
								
								{
									"524e5ace-5cdb-ae27-acb4-b4e760ba8f02",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Dismantle P5 Akh Morn 1",
							uuid = "39ac086d-edcb-1a2d-891d-cc474c7c1120",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "MACHINIST job",
							uuid = "1d5fd847-18de-dd31-89e0-b3bd811a9816",
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
							dequeueIfLuaFalse = true,
							name = "P5 Akh Morn 1 CD",
							uuid = "524e5ace-5cdb-ae27-acb4-b4e760ba8f02",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1011.4,
				name = "[LPDU] Dismantle P5 Akh Morn 1",
				timeRange = true,
				timelineIndex = 215,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "17bfe220-31dd-882c-99b1-fed01df01ced",
				version = 2,
			},
		},
	},
	[226] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Mitigation",
				uuid = "2f787191-e53e-5058-9de7-8a7878cf88a6",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 25857,
							conditions = 
							{
								
								{
									"5847f1ff-e44c-cdf1-b79a-ae62eede204e",
									true,
								},
								
								{
									"b308b14b-b25a-0ed9-9780-6e84b3abe86e",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Magick Barrier Polarizing Strikes 1",
							uuid = "8ce8d8ca-a608-cafb-ac12-4e4fdce70a9d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "REDMAGE",
							name = "REDMAGE job",
							uuid = "5847f1ff-e44c-cdf1-b79a-ae62eede204e",
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
							dequeueIfLuaFalse = true,
							name = "Polarizing Strikes 1 CD",
							uuid = "b308b14b-b25a-0ed9-9780-6e84b3abe86e",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1051.2,
				name = "[LPDU] Magick Barrier Polarizing Strikes 1",
				timeRange = true,
				timelineIndex = 226,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "708a9939-d6bb-65d6-9528-588d6d1a0171",
				version = 2,
			},
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
									"7966f342-6e3c-68fb-abd0-2675fca994a9",
									true,
								},
								
								{
									"a52281bb-24ea-a881-ba25-cda232911e0a",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Nature's Minne Polarizing Strikes 1",
							uuid = "6a1c1be2-3ccf-c312-a448-e555e40b00c2",
							version = 2.1,
						},
					},
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
							name = "BARD job",
							uuid = "7966f342-6e3c-68fb-abd0-2675fca994a9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7408,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "Polarizing Strikes 1 CD",
							uuid = "a52281bb-24ea-a881-ba25-cda232911e0a",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1051.2,
				name = "[LPDU] Nature's Minne Polarizing Strikes 1",
				timeRange = true,
				timelineIndex = 226,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "ba56776f-6b20-e99a-bfc7-bf8be7a074ad",
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
				name = "LPDU",
				uuid = "7a414668-99b8-0cc5-8d1a-e80d596bf5b8",
			},
			objectType = "folder",
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
							alertPriority = 3,
							alertTTS = true,
							alertText = "Tank LB now",
							conditions = 
							{
								
								{
									"7ddff196-76c0-63cb-ba4e-d72780e16fbd",
									true,
								},
							},
							uuid = "fd53bdac-3fa2-4d5a-9690-c2abdacdee7f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster; if r.current()==nil then return false end; local s=r.mySlot();return s==\"T1\" or s==\"T2\"",
							name = "Tanks only",
							uuid = "7ddff196-76c0-63cb-ba4e-d72780e16fbd",
							version = 3,
						},
					},
				},
				displayPath = "LPDU",
				mechanicTime = 1085.2,
				name = "[LPDU] P5 Pandora's Box - Tank LB Reminder",
				timeRange = true,
				timelineIndex = 236,
				timerEndOffset = -5.4000000953674,
				timerStartOffset = -6,
				uuid = "9f11db4c-c871-3f3c-8f1d-81dc7054e301",
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
				name = "LPDU Mitigation",
				uuid = "2afb5c36-28c2-0228-8472-bae7fc63d6af",
			},
			objectType = "folder",
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
									"88ded3d5-c27e-dcc5-9759-23ae0e893c6c",
									true,
								},
								
								{
									"3868c66b-49c5-b96d-b5b8-b861abeb5a72",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] M1 Feint Fulgent Blade",
							targetType = "Enemy",
							uuid = "e17792fb-fc3e-6e4c-be6a-63a06220b3ac",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"M1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "M1 roster",
							uuid = "88ded3d5-c27e-dcc5-9759-23ae0e893c6c",
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
							dequeueIfLuaFalse = true,
							name = "Fulgent Blade CD",
							uuid = "3868c66b-49c5-b96d-b5b8-b861abeb5a72",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1097.4,
				name = "[LPDU] M1 Feint Fulgent Blade",
				timeRange = true,
				timelineIndex = 237,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "1e270d7b-a2f7-83e7-97c8-f485491cb50e",
				version = 2,
			},
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
									"b8fb1bd6-0c29-1890-b08a-a23f597f49fe",
									true,
								},
								
								{
									"a5676524-084f-203c-b4aa-4235d489b7b1",
									true,
								},
								
								{
									"a7de15e4-a51b-1b57-b98f-eff6df4bcb88",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Troubadour - Fulgent Blade 2",
							uuid = "60268de7-656d-b847-a5a9-68864775e0aa",
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
									"b8fb1bd6-0c29-1890-b08a-a23f597f49fe",
									true,
								},
								
								{
									"2a919f51-e383-47cd-9ad1-4f3fe1d1ca7c",
									true,
								},
								
								{
									"e182ec5a-3ca3-ce8f-985e-7034e0edcabb",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Tactician - Fulgent Blade 2",
							uuid = "9f6e4122-404f-c3f6-9ffa-9a31753fff29",
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
									"b8fb1bd6-0c29-1890-b08a-a23f597f49fe",
									true,
								},
								
								{
									"146c55d8-81d2-6f73-a3f6-a67044194083",
									true,
								},
								
								{
									"3275f4da-6795-fa27-adf4-9c08c9448b04",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Shield Samba - Fulgent Blade 2",
							uuid = "d2ae68bc-175b-64ed-8c6b-42cb156c47e3",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R1 roster",
							uuid = "b8fb1bd6-0c29-1890-b08a-a23f597f49fe",
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
							name = "Troubadour job",
							uuid = "a5676524-084f-203c-b4aa-4235d489b7b1",
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
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "a7de15e4-a51b-1b57-b98f-eff6df4bcb88",
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
							name = "Tactician job",
							uuid = "2a919f51-e383-47cd-9ad1-4f3fe1d1ca7c",
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
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "e182ec5a-3ca3-ce8f-985e-7034e0edcabb",
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
							name = "Shield Samba job",
							uuid = "146c55d8-81d2-6f73-a3f6-a67044194083",
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
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "3275f4da-6795-fa27-adf4-9c08c9448b04",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1097.4,
				name = "[LPDU] R1 Phys Ranged - Fulgent Blade 2",
				timeRange = true,
				timelineIndex = 237,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "8abfdac6-d816-309a-90b8-00c3704cec34",
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
				name = "LPDU Mitigation",
				uuid = "5b7fd82f-47b3-245b-b5a9-90f12fd0ae15",
			},
			objectType = "folder",
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
									"323097d1-37e2-697b-88e7-748affacd7ae",
									true,
								},
								
								{
									"2c67b356-6072-f558-9977-10625c353210",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Addle P5 Akh Morn 2",
							targetType = "Enemy",
							uuid = "488e224b-afcc-72d4-8d86-abed7b459098",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R1 roster",
							uuid = "323097d1-37e2-697b-88e7-748affacd7ae",
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
							dequeueIfLuaFalse = true,
							name = "P5 Akh Morn 2 CD",
							uuid = "2c67b356-6072-f558-9977-10625c353210",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1124,
				name = "[LPDU] R1 Addle P5 Akh Morn 2",
				timeRange = true,
				timelineIndex = 243,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "886ce008-a0b6-c874-877a-14f2e088ed7f",
				version = 2,
			},
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
									"77bb7d86-4881-9ac3-bafe-4483ef0bcf5a",
									true,
								},
								
								{
									"66c8faf8-12e7-4426-9299-25cfd1853aef",
									true,
								},
								
								{
									"0bdba138-90de-e8d6-926d-d4673a403dff",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Troubadour - P5 Akh Morn 2",
							uuid = "87beaf15-b1bb-7c18-920b-e830ed4256d5",
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
									"77bb7d86-4881-9ac3-bafe-4483ef0bcf5a",
									true,
								},
								
								{
									"d8beb762-7125-2b1b-be30-7903bb22ae4f",
									true,
								},
								
								{
									"f0259d91-9e3f-dfb7-a7bf-c55e70d97c8d",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Tactician - P5 Akh Morn 2",
							uuid = "1fd0ae51-a64b-374c-b94b-fa9a214e9fa0",
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
									"77bb7d86-4881-9ac3-bafe-4483ef0bcf5a",
									true,
								},
								
								{
									"ad1f38cb-1155-9bf1-bad5-f405a8dad008",
									true,
								},
								
								{
									"e9032b5d-032e-34df-9dd9-89448b3303ba",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Shield Samba - P5 Akh Morn 2",
							uuid = "16253ee1-1aa6-14b7-8e00-bc00da497a05",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R2 roster",
							uuid = "77bb7d86-4881-9ac3-bafe-4483ef0bcf5a",
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
							name = "Troubadour job",
							uuid = "66c8faf8-12e7-4426-9299-25cfd1853aef",
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
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "0bdba138-90de-e8d6-926d-d4673a403dff",
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
							name = "Tactician job",
							uuid = "d8beb762-7125-2b1b-be30-7903bb22ae4f",
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
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "f0259d91-9e3f-dfb7-a7bf-c55e70d97c8d",
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
							name = "Shield Samba job",
							uuid = "ad1f38cb-1155-9bf1-bad5-f405a8dad008",
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
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "e9032b5d-032e-34df-9dd9-89448b3303ba",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1124,
				name = "[LPDU] R2 Phys Ranged - P5 Akh Morn 2",
				timeRange = true,
				timelineIndex = 243,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "0fb327fd-b12e-0b64-ae4f-777ab7b3fa3a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 34686,
							conditions = 
							{
								
								{
									"1c16ad97-7f91-006e-b74f-96cb0e8748c6",
									true,
								},
								
								{
									"c9af8248-53bd-abaa-8bb3-512465a20564",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Tempera Grassa P5 Akh Morn 2",
							uuid = "bd2c6bf4-8ebf-b6f5-b58f-8898757dd8b1",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PICTOMANCER",
							name = "PICTOMANCER job",
							uuid = "1c16ad97-7f91-006e-b74f-96cb0e8748c6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 34686,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "P5 Akh Morn 2 CD",
							uuid = "c9af8248-53bd-abaa-8bb3-512465a20564",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1124,
				name = "[LPDU] Tempera Grassa P5 Akh Morn 2",
				timeRange = true,
				timelineIndex = 243,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "fbeb7992-7edf-849d-ae11-7639c3b64e48",
				version = 2,
			},
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
									"f12a8ccb-b3bb-86d5-801d-76e8374d8a6b",
									true,
								},
								
								{
									"b036ea5a-5aca-7776-8bd9-c30360efe025",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] M2 Feint P5 Akh Morn 2",
							targetType = "Enemy",
							uuid = "44b54428-2dba-6d00-a42a-3e9eae645255",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"M2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "M2 roster",
							uuid = "f12a8ccb-b3bb-86d5-801d-76e8374d8a6b",
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
							dequeueIfLuaFalse = true,
							name = "P5 Akh Morn 2 CD",
							uuid = "b036ea5a-5aca-7776-8bd9-c30360efe025",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1124,
				name = "[LPDU] M2 Feint P5 Akh Morn 2",
				timeRange = true,
				timelineIndex = 243,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "290f2403-fa64-a2ff-9174-a847a5feea27",
				version = 2,
			},
		},
	},
	[253] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Mitigation",
				uuid = "343ccef7-19db-89dc-adde-e527f8623989",
			},
			objectType = "folder",
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
									"e4965351-ddc4-ffa2-bfce-5b1017336512",
									true,
								},
								
								{
									"5cba043c-65b4-6d62-822f-d7e1461ebe45",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Addle 2 Polarizing Strikes 2",
							targetType = "Enemy",
							uuid = "97ac7bbe-c5be-3c45-bb5e-40e25fa00b2c",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R2 roster",
							uuid = "e4965351-ddc4-ffa2-bfce-5b1017336512",
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
							dequeueIfLuaFalse = true,
							name = "Polarizing Strikes 2 CD",
							uuid = "5cba043c-65b4-6d62-822f-d7e1461ebe45",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				enabled = false,
				mechanicTime = 1162.6,
				name = "[LPDU] R2 Addle 2 Polarizing Strikes 2",
				timeRange = true,
				timelineIndex = 253,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "af8d8bc4-f6d2-4c03-84c2-4b7697e88bc0",
				version = 2,
			},
		},
	},
	[262] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Mitigation",
				uuid = "d26afddb-2e0a-c219-860d-b92ce1936582",
			},
			objectType = "folder",
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
									"1922dbd6-fb92-0cee-8e02-a8302228bf17",
									true,
								},
								
								{
									"dd83d48e-9c76-a310-9a8f-823e9b25d526",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] M1 Feint Fulgent Blade",
							targetType = "Enemy",
							uuid = "5dc8e9f4-ce47-b455-b68d-a77f0c51b162",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"M1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "M1 roster",
							uuid = "1922dbd6-fb92-0cee-8e02-a8302228bf17",
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
							dequeueIfLuaFalse = true,
							name = "Fulgent Blade CD",
							uuid = "dd83d48e-9c76-a310-9a8f-823e9b25d526",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1187.6,
				name = "[LPDU] M1 Feint Fulgent Blade",
				timeRange = true,
				timelineIndex = 262,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "5fda9e6b-b01d-c6f8-9e55-b7f4f34d8418",
				version = 2,
			},
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
									"e140c3cb-fde2-b573-b264-73d9c2aa106d",
									true,
								},
								
								{
									"711aa88a-32b2-9d42-8e2c-d28beef5e720",
									true,
								},
								
								{
									"08b16faa-be00-802e-b4ae-71473909e84a",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Troubadour - Fulgent Blade 3",
							uuid = "4b7ceb08-3136-7477-9108-d3d743f287ef",
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
									"e140c3cb-fde2-b573-b264-73d9c2aa106d",
									true,
								},
								
								{
									"0daedb95-86e1-6ad1-aa75-3ed7c9c52d4e",
									true,
								},
								
								{
									"1d10904c-29d8-0182-89f0-e085d938d297",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Tactician - Fulgent Blade 3",
							uuid = "fb054a1f-0492-78cb-a387-ab0d090a3c27",
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
									"e140c3cb-fde2-b573-b264-73d9c2aa106d",
									true,
								},
								
								{
									"6b5afec5-b744-0fca-ae22-a77d1c561a3f",
									true,
								},
								
								{
									"c3c49ff2-1753-729c-96e3-dcbcd4b879de",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Shield Samba - Fulgent Blade 3",
							uuid = "33a47ccf-f1f3-215b-9d5b-c9e306cc9a3b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R1 roster",
							uuid = "e140c3cb-fde2-b573-b264-73d9c2aa106d",
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
							name = "Troubadour job",
							uuid = "711aa88a-32b2-9d42-8e2c-d28beef5e720",
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
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "08b16faa-be00-802e-b4ae-71473909e84a",
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
							name = "Tactician job",
							uuid = "0daedb95-86e1-6ad1-aa75-3ed7c9c52d4e",
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
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "1d10904c-29d8-0182-89f0-e085d938d297",
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
							name = "Shield Samba job",
							uuid = "6b5afec5-b744-0fca-ae22-a77d1c561a3f",
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
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "c3c49ff2-1753-729c-96e3-dcbcd4b879de",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1187.6,
				name = "[LPDU] R1 Phys Ranged - Fulgent Blade 3",
				timeRange = true,
				timelineIndex = 262,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "16dabf8c-c816-af71-96fa-2e99f92c9ce6",
				version = 2,
			},
		},
	},
	[268] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "LPDU Mitigation",
				uuid = "4a0726c2-f5f4-b9f1-a3d0-b8fc56cea53c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 2887,
							conditions = 
							{
								
								{
									"b9bfef6b-88d9-9176-94c4-9abb64158dea",
									true,
								},
								
								{
									"a01fe65d-fe15-fc04-868f-780bd4771061",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Dismantle P5 Akh Morn 3",
							uuid = "105ae981-9309-2e2b-bd6c-f7c17c616a0c",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "MACHINIST",
							name = "MACHINIST job",
							uuid = "b9bfef6b-88d9-9176-94c4-9abb64158dea",
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
							dequeueIfLuaFalse = true,
							name = "P5 Akh Morn 3 CD",
							uuid = "a01fe65d-fe15-fc04-868f-780bd4771061",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1214.2,
				name = "[LPDU] Dismantle P5 Akh Morn 3",
				timeRange = true,
				timelineIndex = 268,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "1f43745d-4cbb-fde5-9320-5d1dccbb94f7",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 16014,
							conditions = 
							{
								
								{
									"b2493c1b-861b-9945-886f-862436befe8c",
									true,
								},
								
								{
									"815c56ef-1b85-0793-9b45-6fb47056c46e",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Improvisation P5 Akh Morn 3",
							uuid = "3b78d419-3083-4a6c-a2fb-1f1bd702eb29",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DANCER",
							name = "DANCER job",
							uuid = "b2493c1b-861b-9945-886f-862436befe8c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16014,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "P5 Akh Morn 3 CD",
							uuid = "815c56ef-1b85-0793-9b45-6fb47056c46e",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1214.2,
				name = "[LPDU] Improvisation P5 Akh Morn 3",
				timeRange = true,
				timelineIndex = 268,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "996c3eae-66e2-bd1c-88da-d5f2c1d6304a",
				version = 2,
			},
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
									"f9770824-0bc5-49a9-bb4b-83ebde86f9f4",
									true,
								},
								
								{
									"5c2486fc-153f-7f97-ae0b-207a0a42ff66",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R1 Addle P5 Akh Morn 3",
							targetType = "Enemy",
							uuid = "842b758a-9d7c-02ce-a6e3-8e505e7437cb",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R1\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R1 roster",
							uuid = "f9770824-0bc5-49a9-bb4b-83ebde86f9f4",
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
							dequeueIfLuaFalse = true,
							name = "P5 Akh Morn 3 CD",
							uuid = "5c2486fc-153f-7f97-ae0b-207a0a42ff66",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1214.2,
				name = "[LPDU] R1 Addle P5 Akh Morn 3",
				timeRange = true,
				timelineIndex = 268,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "007d3cbf-66ec-f90e-8da2-3b6acacd0cfc",
				version = 2,
			},
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
									"84980a04-d1b2-b436-832d-8ebfdb9ba415",
									true,
								},
								
								{
									"a4cc2bec-6ca8-3ce0-93d7-72e1baef8b90",
									true,
								},
								
								{
									"9185a0d5-a5a6-4b03-b099-42da822539ca",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Troubadour - P5 Akh Morn 3",
							uuid = "6583cbe8-4ac7-5d6e-a05d-21a061a6b899",
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
									"84980a04-d1b2-b436-832d-8ebfdb9ba415",
									true,
								},
								
								{
									"c74e8ed1-f1fb-903a-af2d-65eba9b9ee72",
									true,
								},
								
								{
									"e5c01194-bd35-e694-b8ff-5243602ac689",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Tactician - P5 Akh Morn 3",
							uuid = "f52f9072-e123-68d8-8b03-2a84adf8b9c5",
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
									"84980a04-d1b2-b436-832d-8ebfdb9ba415",
									true,
								},
								
								{
									"091cccae-a5bd-52b4-a34a-4bcea593632a",
									true,
								},
								
								{
									"89f13ee0-81bb-d4b3-a9e9-7a988ea32709",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Shield Samba - P5 Akh Morn 3",
							uuid = "e6c5508b-ba7e-9676-a5f7-7a4156246fbf",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"R2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "R2 roster",
							uuid = "84980a04-d1b2-b436-832d-8ebfdb9ba415",
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
							name = "Troubadour job",
							uuid = "a4cc2bec-6ca8-3ce0-93d7-72e1baef8b90",
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
							dequeueIfLuaFalse = true,
							name = "Troubadour CD",
							uuid = "9185a0d5-a5a6-4b03-b099-42da822539ca",
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
							name = "Tactician job",
							uuid = "c74e8ed1-f1fb-903a-af2d-65eba9b9ee72",
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
							dequeueIfLuaFalse = true,
							name = "Tactician CD",
							uuid = "e5c01194-bd35-e694-b8ff-5243602ac689",
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
							name = "Shield Samba job",
							uuid = "091cccae-a5bd-52b4-a34a-4bcea593632a",
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
							dequeueIfLuaFalse = true,
							name = "Shield Samba CD",
							uuid = "89f13ee0-81bb-d4b3-a9e9-7a988ea32709",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1214.2,
				name = "[LPDU] R2 Phys Ranged - P5 Akh Morn 3",
				timeRange = true,
				timelineIndex = 268,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "4622d4ee-5f91-e199-8764-9aea7ef3f4c6",
				version = 2,
			},
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
									"06a0a777-8a69-8b81-9e55-0b5fb5fdf97d",
									true,
								},
								
								{
									"60825b6c-5eea-623b-9a91-ff9407bccfea",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] M2 Feint P5 Akh Morn 3",
							targetType = "Enemy",
							uuid = "8c0aee9a-ee55-3799-b565-d1ce3c22c394",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local p = TensorCore.mGetPlayer()\nlocal r = GetRole(\"M2\")\nreturn p ~= nil and r ~= nil and p.id == r.id",
							dequeueIfLuaFalse = true,
							name = "M2 roster",
							uuid = "06a0a777-8a69-8b81-9e55-0b5fb5fdf97d",
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
							dequeueIfLuaFalse = true,
							name = "P5 Akh Morn 3 CD",
							uuid = "60825b6c-5eea-623b-9a91-ff9407bccfea",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1214.2,
				name = "[LPDU] M2 Feint P5 Akh Morn 3",
				timeRange = true,
				timelineIndex = 268,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "a8dad720-234c-a95f-a3ad-b27cc084578a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 34686,
							conditions = 
							{
								
								{
									"1717dc11-6f4f-a642-91c0-2d03afb8843d",
									true,
								},
								
								{
									"204b4390-2fbc-5846-af21-e28ff69ba368",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Tempera Grassa P5 Akh Morn 3",
							uuid = "7ac6b7d9-2488-5d93-bd15-764efa5c305e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PICTOMANCER",
							name = "PICTOMANCER job",
							uuid = "1717dc11-6f4f-a642-91c0-2d03afb8843d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 34686,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							dequeueIfLuaFalse = true,
							name = "P5 Akh Morn 3 CD",
							uuid = "204b4390-2fbc-5846-af21-e28ff69ba368",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1214.2,
				name = "[LPDU] Tempera Grassa P5 Akh Morn 3",
				timeRange = true,
				timelineIndex = 268,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "3848b96e-358e-6baa-b77e-80eb8a35f8ed",
				version = 2,
			},
		},
	},
	inheritedProfiles = 
	{
	},
	timelineName = "fru",
	version = "1.0.5",
}



return tbl
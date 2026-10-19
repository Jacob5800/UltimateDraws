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
							gVar = "ACR_RikuSGE3_CD",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"M1\"",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"R2\"",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"R2\"",
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
				enabled = false,
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
							actionLua = "local reactions = AnyoneCore.Settings.Reactions\nif not reactions.fru then reactions.fru = {} end\nreactions.fru.mitigation = false\nreactions.fruFMBGTankMits = false\nself.used = true",
							conditions = 
							{
								
								{
									"1ffcd2d6-ce7e-baea-83cd-8fb001acb3e9",
									false,
								},
							},
							endIfUsed = true,
							name = "Disable FRU DPS/tank automatic mitigation",
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
							name = "Self is healer",
							partyTargetType = "Healer",
							uuid = "1ffcd2d6-ce7e-baea-83cd-8fb001acb3e9",
							version = 3,
						},
					},
				},
				displayPath = "AnyoneCore Defaults",
				mechanicTime = 13.7,
				name = "Disable AnyoneCore DPS and tank mitigation at start",
				timelineIndex = 1,
				timerOffset = -13.60000038147,
				uuid = "7a54a151-536f-663c-bb67-07f33b18143d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Spreadsheet tank mitigation ",
				uuid = "81ff2b34-f3cf-d840-a161-a267268ae266",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P1",
				uuid = "127863b1-70b8-0a03-8c00-74fd5c18839e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 3540,
							conditions = 
							{
								
								{
									"5a4dfbeb-1c90-c849-abc8-00aed2095773",
									true,
								},
								
								{
									"a70b6e49-a042-3656-ab76-df6fd5b75ec9",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "e49520b0-39a3-8ca4-9625-86e894b0f312",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7388,
							conditions = 
							{
								
								{
									"4ca54ae2-62ef-1b5d-977f-b8da0aeea3b1",
									true,
								},
								
								{
									"a70b6e49-a042-3656-ab76-df6fd5b75ec9",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "f2f94b07-c6bd-97c0-9682-389c6da3bd1a",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16471,
							conditions = 
							{
								
								{
									"0197ea66-26ba-19b0-ae67-2a48944280b0",
									true,
								},
								
								{
									"a70b6e49-a042-3656-ab76-df6fd5b75ec9",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "d5977654-517c-c193-8d99-76e04c9978e3",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16160,
							conditions = 
							{
								
								{
									"051e83f9-bfd0-3696-9b2d-b9484a37e515",
									true,
								},
								
								{
									"a70b6e49-a042-3656-ab76-df6fd5b75ec9",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "3b9ca6c5-564d-972e-8a11-2e66a5aefb9f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\"",
							name = "Assigned MT",
							uuid = "a70b6e49-a042-3656-ab76-df6fd5b75ec9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "5a4dfbeb-1c90-c849-abc8-00aed2095773",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "4ca54ae2-62ef-1b5d-977f-b8da0aeea3b1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "0197ea66-26ba-19b0-ae67-2a48944280b0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "051e83f9-bfd0-3696-9b2d-b9484a37e515",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P1",
				mechanicTime = 13.7,
				name = "[LPDU Tank] P1 pull party mitigation",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = -8.6999998092651,
				timerStartOffset = -13.699999809265,
				uuid = "0ed81913-2044-1598-b80c-86246add544c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"046a6528-cddc-4803-8721-9a120aac5c70",
									true,
								},
								
								{
									"24456ef7-3a4d-de75-93c2-a8947bed4377",
									true,
								},
							},
							uuid = "f7316daf-9c87-a825-816a-a407d3b6e32d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"f4aa7535-bd1e-6317-870d-c3cc48047520",
									true,
								},
								
								{
									"24456ef7-3a4d-de75-93c2-a8947bed4377",
									true,
								},
							},
							uuid = "8bfd6b84-566f-9c51-8873-5e9fd514968c",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"3938b995-4cc2-3848-b2df-1e6286f6496e",
									true,
								},
								
								{
									"24456ef7-3a4d-de75-93c2-a8947bed4377",
									true,
								},
							},
							uuid = "2f083e60-6f8d-9440-8cea-324d94a31eda",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"6c7a0ef6-9382-6ced-8ad6-37fb9d80c44e",
									true,
								},
								
								{
									"24456ef7-3a4d-de75-93c2-a8947bed4377",
									true,
								},
							},
							uuid = "72d55b5a-ced0-264e-97f1-6aa2867d95b5",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "Assigned BOTH",
							uuid = "24456ef7-3a4d-de75-93c2-a8947bed4377",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "046a6528-cddc-4803-8721-9a120aac5c70",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "f4aa7535-bd1e-6317-870d-c3cc48047520",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "3938b995-4cc2-3848-b2df-1e6286f6496e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "6c7a0ef6-9382-6ced-8ad6-37fb9d80c44e",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P1",
				mechanicTime = 13.7,
				name = "[LPDU Tank] P1 Cyclonic Reprisal",
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "409b84c2-2c72-4e5a-9612-1639beaf2a13",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 36920,
							conditions = 
							{
								
								{
									"1ca2521a-4877-f45f-8cfc-879ba02637e4",
									true,
								},
								
								{
									"f1d76b94-b948-d735-a7e8-de35b87206c2",
									true,
								},
								
								{
									"f317c48d-1108-7695-ac40-cdb662fabf7e",
									true,
								},
							},
							uuid = "e9d3e434-05ca-bec3-814a-27899b56e1b8",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 36923,
							conditions = 
							{
								
								{
									"a0be27f6-d034-4ee0-81bf-85a52b44508a",
									true,
								},
								
								{
									"f1d76b94-b948-d735-a7e8-de35b87206c2",
									true,
								},
								
								{
									"f317c48d-1108-7695-ac40-cdb662fabf7e",
									true,
								},
							},
							uuid = "1807ecd0-fe26-53cd-971d-bedb78ac092e",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 36927,
							conditions = 
							{
								
								{
									"e7d0c56f-3dae-204f-8393-73406729519a",
									true,
								},
								
								{
									"f1d76b94-b948-d735-a7e8-de35b87206c2",
									true,
								},
								
								{
									"f317c48d-1108-7695-ac40-cdb662fabf7e",
									true,
								},
							},
							uuid = "c79c5e9d-6dde-9a30-b55e-ac265f000473",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 36935,
							conditions = 
							{
								
								{
									"1941584d-a89e-2513-9a44-1f9173bfdd07",
									true,
								},
								
								{
									"f1d76b94-b948-d735-a7e8-de35b87206c2",
									true,
								},
								
								{
									"f317c48d-1108-7695-ac40-cdb662fabf7e",
									true,
								},
							},
							uuid = "5933f545-6d03-e0ce-95f9-440afc1b841b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\"",
							name = "Assigned MT",
							uuid = "f1d76b94-b948-d735-a7e8-de35b87206c2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "f317c48d-1108-7695-ac40-cdb662fabf7e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "1ca2521a-4877-f45f-8cfc-879ba02637e4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "a0be27f6-d034-4ee0-81bf-85a52b44508a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "e7d0c56f-3dae-204f-8393-73406729519a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "1941584d-a89e-2513-9a44-1f9173bfdd07",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P1",
				mechanicTime = 13.7,
				name = "[LPDU Tank] P1 Cyclonic MT 120s",
				timeRange = true,
				timelineIndex = 1,
				timerStartOffset = -3,
				uuid = "653df724-2600-6a52-866c-3807a38f5388",
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
				name = "Off-tank utility",
				uuid = "b63bd92b-d7e8-7f54-9234-34d0518e80f5",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 28,
							conditions = 
							{
								
								{
									"68f14b0a-8ffa-277a-8a9a-fff319a7093b",
									true,
								},
								
								{
									"32fa7d3b-40b0-8e5f-8913-e8db4dc81c22",
									true,
								},
								
								{
									"da82be03-665b-f98b-82c5-72bce8c8200a",
									true,
								},
							},
							endIfUsed = true,
							ignoreWeaveRules = true,
							uuid = "2b5d79a6-001b-2943-bcfd-c3c94694ce0d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 48,
							conditions = 
							{
								
								{
									"e9509486-3620-7e89-bf45-c440d22af19d",
									true,
								},
								
								{
									"32fa7d3b-40b0-8e5f-8913-e8db4dc81c22",
									true,
								},
								
								{
									"2c05bf1f-a04c-631e-a807-10012c7cf676",
									true,
								},
							},
							endIfUsed = true,
							ignoreWeaveRules = true,
							uuid = "06467aaf-6581-b866-ac38-3a859c045797",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 3629,
							conditions = 
							{
								
								{
									"d4668920-f79a-3ca2-bc9e-a8c9d92cb2fd",
									true,
								},
								
								{
									"32fa7d3b-40b0-8e5f-8913-e8db4dc81c22",
									true,
								},
								
								{
									"518e176c-ed69-9cfe-8193-b1aa705a2004",
									true,
								},
							},
							endIfUsed = true,
							ignoreWeaveRules = true,
							uuid = "3379d956-eba8-2193-b6dd-ee376e3b3da7",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16142,
							conditions = 
							{
								
								{
									"6d615cee-cf5e-b81b-9c5c-f55576e17b1d",
									true,
								},
								
								{
									"32fa7d3b-40b0-8e5f-8913-e8db4dc81c22",
									true,
								},
								
								{
									"deb2c332-f60d-7700-90ba-944b64e27217",
									true,
								},
							},
							endIfUsed = true,
							ignoreWeaveRules = true,
							uuid = "77f2aa5b-3d3a-075d-8612-c0ff281695bd",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "32fa7d3b-40b0-8e5f-8913-e8db4dc81c22",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "PALADIN",
							uuid = "68f14b0a-8ffa-277a-8a9a-fff319a7093b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 79,
							category = "Self",
							uuid = "da82be03-665b-f98b-82c5-72bce8c8200a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "WARRIOR",
							uuid = "e9509486-3620-7e89-bf45-c440d22af19d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 91,
							category = "Self",
							uuid = "2c05bf1f-a04c-631e-a807-10012c7cf676",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "DARKKNIGHT",
							uuid = "d4668920-f79a-3ca2-bc9e-a8c9d92cb2fd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 743,
							category = "Self",
							uuid = "518e176c-ed69-9cfe-8193-b1aa705a2004",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "GUNBREAKER",
							uuid = "6d615cee-cf5e-b81b-9c5c-f55576e17b1d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "deb2c332-f60d-7700-90ba-944b64e27217",
							version = 3,
						},
					},
				},
				displayPath = "Off-tank utility",
				mechanicTime = 16.4,
				name = "[LPDU OT] Stance on",
				timeRange = true,
				timelineIndex = 4,
				timerEndOffset = 3,
				uuid = "2cc129cc-93f9-6d81-a46c-1d0dce1bc611",
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
				name = "Spreadsheet tank mitigation ",
				uuid = "66f69ec3-95ea-f91b-ab74-44932d5b6513",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P1",
				uuid = "4b9f9f58-4fa3-2abc-aa97-4aa13e37a92b",
			},
			objectType = "folder",
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
							conditions = 
							{
								
								{
									"79a9a29e-f9aa-4d47-b4c0-ff9b770eac19",
									true,
								},
								
								{
									"ffba92e5-fd71-c3ba-b118-65510d537b8b",
									true,
								},
								
								{
									"562591ac-ad59-b006-883e-bb23bbb78d52",
									true,
								},
							},
							uuid = "184abbe6-8b1f-2941-8e70-2a5f08810627",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							conditions = 
							{
								
								{
									"037aedb0-5f6e-fffa-99fd-d455411332a4",
									true,
								},
								
								{
									"ffba92e5-fd71-c3ba-b118-65510d537b8b",
									true,
								},
								
								{
									"562591ac-ad59-b006-883e-bb23bbb78d52",
									true,
								},
							},
							uuid = "276c87cf-60cd-1dff-b845-79e5dceadaa9",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							conditions = 
							{
								
								{
									"795cc679-e10b-35cb-a774-6c23a1bae4c3",
									true,
								},
								
								{
									"ffba92e5-fd71-c3ba-b118-65510d537b8b",
									true,
								},
								
								{
									"562591ac-ad59-b006-883e-bb23bbb78d52",
									true,
								},
							},
							uuid = "ee4cf42e-2344-0158-8065-b1e1202065d3",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							conditions = 
							{
								
								{
									"680ad3b0-2836-af42-8c66-c623f38fe72a",
									true,
								},
								
								{
									"ffba92e5-fd71-c3ba-b118-65510d537b8b",
									true,
								},
								
								{
									"562591ac-ad59-b006-883e-bb23bbb78d52",
									true,
								},
							},
							uuid = "d58d0e04-db0d-cf9a-a8c9-88a9258a07f1",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\"",
							name = "Assigned MT",
							uuid = "ffba92e5-fd71-c3ba-b118-65510d537b8b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "562591ac-ad59-b006-883e-bb23bbb78d52",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "79a9a29e-f9aa-4d47-b4c0-ff9b770eac19",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "037aedb0-5f6e-fffa-99fd-d455411332a4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "795cc679-e10b-35cb-a774-6c23a1bae4c3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "680ad3b0-2836-af42-8c66-c623f38fe72a",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P1",
				mechanicTime = 24.2,
				name = "[LPDU Tank] P1 Powder 1 MT Rampart",
				timeRange = true,
				timelineIndex = 7,
				timerStartOffset = -3,
				uuid = "4b5c1d78-6532-9701-9c3b-0d9b3964817e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 25746,
							conditions = 
							{
								
								{
									"e2ea9d92-e4c6-0662-a9d9-35fee21c88b0",
									true,
								},
								
								{
									"f08ec3ef-c208-298f-8cff-e330cca7449d",
									true,
								},
								
								{
									"e90acd35-6f6f-7ec2-b40d-a67db209e74d",
									true,
								},
							},
							uuid = "2d12e424-2f90-5e16-8666-dc5a868a107b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25751,
							conditions = 
							{
								
								{
									"110d529e-a26d-3d25-afd5-6a9168797849",
									true,
								},
								
								{
									"f08ec3ef-c208-298f-8cff-e330cca7449d",
									true,
								},
								
								{
									"e90acd35-6f6f-7ec2-b40d-a67db209e74d",
									true,
								},
							},
							uuid = "11eebd3a-bc36-1009-bee2-1771129e42f9",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7393,
							conditions = 
							{
								
								{
									"f2a7197b-0a92-466e-a720-4abf76e76365",
									true,
								},
								
								{
									"f08ec3ef-c208-298f-8cff-e330cca7449d",
									true,
								},
								
								{
									"e90acd35-6f6f-7ec2-b40d-a67db209e74d",
									true,
								},
							},
							uuid = "fd861f7b-282a-62de-9c32-151d5fe904a0",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25758,
							conditions = 
							{
								
								{
									"690994f6-c5bd-12c5-b267-62e1e48853c4",
									true,
								},
								
								{
									"f08ec3ef-c208-298f-8cff-e330cca7449d",
									true,
								},
								
								{
									"e90acd35-6f6f-7ec2-b40d-a67db209e74d",
									true,
								},
							},
							uuid = "dcb95730-01cf-bfaa-8677-b9dff30fa7ce",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\"",
							name = "Assigned MT",
							uuid = "f08ec3ef-c208-298f-8cff-e330cca7449d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "e90acd35-6f6f-7ec2-b40d-a67db209e74d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "e2ea9d92-e4c6-0662-a9d9-35fee21c88b0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "110d529e-a26d-3d25-afd5-6a9168797849",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "f2a7197b-0a92-466e-a720-4abf76e76365",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "690994f6-c5bd-12c5-b267-62e1e48853c4",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P1",
				mechanicTime = 24.2,
				name = "[LPDU Tank] P1 Powder 1 MT short",
				timeRange = true,
				timelineIndex = 7,
				timerStartOffset = -3,
				uuid = "ea1e185f-4a13-4063-a4a0-c5c4adee7436",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7382,
							conditions = 
							{
								
								{
									"d7cfd8e0-af2e-2eea-8dd8-11ede1f493dd",
									true,
								},
								
								{
									"cbe8ca8c-4a82-d43a-9852-01a516138bb5",
									true,
								},
								
								{
									"7de54535-bc60-92ac-9bed-8c3e90cc8afb",
									true,
								},
							},
							targetType = "Other Tank",
							uuid = "113024ae-43aa-5977-96cd-9177e5ee3a94",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7393,
							conditions = 
							{
								
								{
									"db05502d-4788-2bf7-81a4-e7db20ae2e33",
									true,
								},
								
								{
									"cbe8ca8c-4a82-d43a-9852-01a516138bb5",
									true,
								},
								
								{
									"7de54535-bc60-92ac-9bed-8c3e90cc8afb",
									true,
								},
							},
							targetType = "Other Tank",
							uuid = "afa204a4-d76e-cfa8-9494-55da8e9ab670",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T2\"",
							name = "Assigned OT",
							uuid = "cbe8ca8c-4a82-d43a-9852-01a516138bb5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "7de54535-bc60-92ac-9bed-8c3e90cc8afb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "d7cfd8e0-af2e-2eea-8dd8-11ede1f493dd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "b5a50512-8012-5b77-afdb-1789cab85aeb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "db05502d-4788-2bf7-81a4-e7db20ae2e33",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "da1847ad-5649-9f5d-a002-649c6ca37e52",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P1",
				mechanicTime = 24.2,
				name = "[LPDU Tank] P1 Powder 1 OT support",
				timeRange = true,
				timelineIndex = 7,
				timerStartOffset = -3,
				uuid = "89a26290-cae3-d2f2-b4b4-a825185c968f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared tank utility",
				uuid = "64bd6cd5-e5ab-1db6-a65a-a7908077ae30",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7537,
							conditions = 
							{
								
								{
									"aa06a235-0fef-815c-89dc-e8aa1d736b5e",
									true,
								},
								
								{
									"5bedf1e7-2755-58f0-879d-fade9d03ae64",
									true,
								},
								
								{
									"b27ee5d7-d221-acd7-852e-e347c376bd3c",
									true,
								},
								
								{
									"c32d49ce-c46a-cdf7-9627-ae8362fc7235",
									true,
								},
							},
							targetType = "Other Tank",
							uuid = "37a4d1a0-b5e2-3bc2-bbfc-360527d97b02",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
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
							},
							uuid = "5bedf1e7-2755-58f0-879d-fade9d03ae64",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\"",
							name = "Assigned MT",
							uuid = "b27ee5d7-d221-acd7-852e-e347c376bd3c",
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
							name = "Provoke event",
							spellIDList = 
							{
								7533,
							},
							uuid = "aa06a235-0fef-815c-89dc-e8aa1d736b5e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nreturn eventArgs.entityID==r.idOf(\"T2\")",
							name = "Assigned OT used Provoke",
							uuid = "c32d49ce-c46a-cdf7-9627-ae8362fc7235",
							version = 3,
						},
					},
				},
				displayPath = "Shared tank utility",
				eventType = 2,
				mechanicTime = 24.2,
				name = "[LPDU Tank] MT Shirk after OT Provoke",
				timeRange = true,
				timelineIndex = 7,
				timerEndOffset = 10,
				timerStartOffset = -5,
				uuid = "243aee25-54a9-d302-bbde-c579735e2d55",
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
	[11] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Spreadsheet tank mitigation ",
				uuid = "f975bbaf-7e58-4725-993a-d011087f1178",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P1",
				uuid = "95e1ebab-ed76-fa95-84ba-cc1ccf6ffaab",
			},
			objectType = "folder",
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
							conditions = 
							{
								
								{
									"8158e67e-1773-e285-8dcc-bd188d166429",
									true,
								},
								
								{
									"6fa5ce1b-8d02-6ea4-b547-14c7a018927f",
									true,
								},
								
								{
									"a9affa23-390f-897c-93de-066612588a5e",
									true,
								},
							},
							uuid = "b80d17f5-477e-8553-a688-805b4d2c13c1",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							conditions = 
							{
								
								{
									"46a70174-c456-660b-9ad2-d4f240ec3528",
									true,
								},
								
								{
									"6fa5ce1b-8d02-6ea4-b547-14c7a018927f",
									true,
								},
								
								{
									"a9affa23-390f-897c-93de-066612588a5e",
									true,
								},
							},
							uuid = "14c6e55a-1b2b-d836-8aa8-a5454fc66e8c",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							conditions = 
							{
								
								{
									"0e2f434b-5052-618e-bcbc-e42164175e7a",
									true,
								},
								
								{
									"6fa5ce1b-8d02-6ea4-b547-14c7a018927f",
									true,
								},
								
								{
									"a9affa23-390f-897c-93de-066612588a5e",
									true,
								},
							},
							uuid = "8d968535-65e4-3e63-8f6e-10b27bbd03ef",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							conditions = 
							{
								
								{
									"58cb8076-1fc2-8987-b5a0-30336577b3f1",
									true,
								},
								
								{
									"6fa5ce1b-8d02-6ea4-b547-14c7a018927f",
									true,
								},
								
								{
									"a9affa23-390f-897c-93de-066612588a5e",
									true,
								},
							},
							uuid = "7ca8b384-4717-8865-8295-485905665b16",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T2\"",
							name = "Assigned OT",
							uuid = "6fa5ce1b-8d02-6ea4-b547-14c7a018927f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "a9affa23-390f-897c-93de-066612588a5e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "8158e67e-1773-e285-8dcc-bd188d166429",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "46a70174-c456-660b-9ad2-d4f240ec3528",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "0e2f434b-5052-618e-bcbc-e42164175e7a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "58cb8076-1fc2-8987-b5a0-30336577b3f1",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P1",
				mechanicTime = 40.3,
				name = "[LPDU Tank] P1 explosion 1 OT Rampart",
				timeRange = true,
				timelineIndex = 11,
				timerEndOffset = -5,
				timerStartOffset = -9,
				uuid = "006892ea-0039-c6da-ab15-ce40e84a1abb",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 22,
							conditions = 
							{
								
								{
									"96909c81-20a0-3de8-b262-410cc82b3993",
									true,
								},
								
								{
									"45659848-8870-7f91-8d83-844a77251f76",
									true,
								},
								
								{
									"b7c91cd9-d3be-152d-812b-c36f8009438a",
									true,
								},
							},
							uuid = "f6af4f0a-4339-7ab3-b0d3-b91841715ad9",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 40,
							conditions = 
							{
								
								{
									"65cf55d9-d2e7-92ce-9214-20dc28b4a434",
									true,
								},
								
								{
									"45659848-8870-7f91-8d83-844a77251f76",
									true,
								},
								
								{
									"b7c91cd9-d3be-152d-812b-c36f8009438a",
									true,
								},
							},
							uuid = "08ff98d9-d5ba-0b7c-b14c-9e0ed03c2843",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 3634,
							conditions = 
							{
								
								{
									"0f8b4d6c-492b-3d68-85ee-d05aaf1796aa",
									true,
								},
								
								{
									"45659848-8870-7f91-8d83-844a77251f76",
									true,
								},
								
								{
									"b7c91cd9-d3be-152d-812b-c36f8009438a",
									true,
								},
							},
							uuid = "8980ee6b-d7b9-15ba-a12e-765fd55d109c",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25754,
							conditions = 
							{
								
								{
									"0f8b4d6c-492b-3d68-85ee-d05aaf1796aa",
									true,
								},
								
								{
									"45659848-8870-7f91-8d83-844a77251f76",
									true,
								},
								
								{
									"b7c91cd9-d3be-152d-812b-c36f8009438a",
									true,
								},
							},
							uuid = "2be3e44e-8abd-b63b-a13a-6b4aa280963f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16140,
							conditions = 
							{
								
								{
									"8d2fa31e-1886-7c7e-ba58-84117873f7e0",
									true,
								},
								
								{
									"45659848-8870-7f91-8d83-844a77251f76",
									true,
								},
								
								{
									"b7c91cd9-d3be-152d-812b-c36f8009438a",
									true,
								},
							},
							uuid = "a5d9ec12-dccc-e9d7-9b45-6fb191948ee0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "Assigned tanks",
							uuid = "45659848-8870-7f91-8d83-844a77251f76",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "b7c91cd9-d3be-152d-812b-c36f8009438a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "96909c81-20a0-3de8-b262-410cc82b3993",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "65cf55d9-d2e7-92ce-9214-20dc28b4a434",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "0f8b4d6c-492b-3d68-85ee-d05aaf1796aa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "8d2fa31e-1886-7c7e-ba58-84117873f7e0",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P1",
				mechanicTime = 40.3,
				name = "[LPDU Tank] P1 explosion 1 tank extras",
				timeRange = true,
				timelineIndex = 11,
				timerEndOffset = -3,
				timerStartOffset = -7,
				uuid = "ce926446-04f8-5181-a219-3aa09b9dfe49",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 25746,
							conditions = 
							{
								
								{
									"66f45870-e305-21f1-b506-0b886defe63d",
									true,
								},
								
								{
									"5068e953-d7f1-55f9-8583-787f42dcadd1",
									true,
								},
								
								{
									"2e975f80-3f48-c1f6-abe0-0322a92d58b2",
									true,
								},
							},
							uuid = "3e43fec2-c6b0-0510-bf1b-c9787335272d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25751,
							conditions = 
							{
								
								{
									"49b03234-a037-b410-9f00-4fff296fd52c",
									true,
								},
								
								{
									"5068e953-d7f1-55f9-8583-787f42dcadd1",
									true,
								},
								
								{
									"2e975f80-3f48-c1f6-abe0-0322a92d58b2",
									true,
								},
								
								{
									"62b64d99-9043-2e88-9e1d-84851e058809",
									true,
								},
							},
							uuid = "e5efb9ec-4c28-4cae-b014-76fa61ea2c47",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7393,
							conditions = 
							{
								
								{
									"b87370c1-ccf7-e3e0-9156-7604ff9b974f",
									true,
								},
								
								{
									"5068e953-d7f1-55f9-8583-787f42dcadd1",
									true,
								},
								
								{
									"2e975f80-3f48-c1f6-abe0-0322a92d58b2",
									true,
								},
							},
							uuid = "1f837881-7ae3-abda-afdb-52968bc952f9",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25758,
							conditions = 
							{
								
								{
									"95b2daa2-d82f-b1fc-b9f2-130b49e07ba0",
									true,
								},
								
								{
									"5068e953-d7f1-55f9-8583-787f42dcadd1",
									true,
								},
								
								{
									"2e975f80-3f48-c1f6-abe0-0322a92d58b2",
									true,
								},
								
								{
									"62b64d99-9043-2e88-9e1d-84851e058809",
									true,
								},
							},
							uuid = "13a92e34-78e9-c15c-86d4-b0b9bb831b02",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "Assigned BOTH",
							uuid = "5068e953-d7f1-55f9-8583-787f42dcadd1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "2e975f80-3f48-c1f6-abe0-0322a92d58b2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "66f45870-e305-21f1-b506-0b886defe63d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "49b03234-a037-b410-9f00-4fff296fd52c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "b87370c1-ccf7-e3e0-9156-7604ff9b974f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "95b2daa2-d82f-b1fc-b9f2-130b49e07ba0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nreturn r.mySlot()==\"T2\"",
							name = "OT short reserved for explosion",
							uuid = "62b64d99-9043-2e88-9e1d-84851e058809",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P1",
				mechanicTime = 40.3,
				name = "[LPDU Tank] P1 explosion 1 tank short",
				timeRange = true,
				timelineIndex = 11,
				timerStartOffset = -3,
				uuid = "df82f232-26d5-6dc9-a7ff-649e6ecd0f32",
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
				name = "Shared tank utility",
				uuid = "eae50873-0594-214d-9b1a-d5f6ad9788d2",
			},
			objectType = "folder",
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
							conditions = 
							{
								
								{
									"58f62b69-c40d-f1ee-a6b5-1cefb4b377b9",
									true,
								},
								
								{
									"8f91e720-4023-551e-9a02-b49174740075",
									true,
								},
							},
							uuid = "eaeab93c-9616-8279-a047-7dd40a2e94eb",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
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
							},
							uuid = "58f62b69-c40d-f1ee-a6b5-1cefb4b377b9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "Assigned tanks",
							uuid = "8f91e720-4023-551e-9a02-b49174740075",
							version = 3,
						},
					},
				},
				displayPath = "Shared tank utility",
				mechanicTime = 50,
				name = "[LPDU Tank] Sprint",
				timeRange = true,
				timelineIndex = 12,
				timerEndOffset = -6,
				timerStartOffset = -9,
				uuid = "be79ef4b-ab00-b54f-b0a9-2d7edf02df3d",
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
				name = "Spreadsheet tank mitigation ",
				uuid = "e606720e-8cff-ee6a-b683-1f618d282ffb",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P1",
				uuid = "850f4c51-e0c3-7614-9934-91069d2dd727",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 3540,
							conditions = 
							{
								
								{
									"b89f038e-c91b-d4d6-8cf5-0d9ec383eaa6",
									true,
								},
								
								{
									"6f9c9694-26de-ade2-bab2-8539b2187dce",
									true,
								},
							},
							uuid = "9c575a27-d43b-10aa-98ab-d7e4bc3a1612",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7388,
							conditions = 
							{
								
								{
									"4f1eb8c7-8b50-e38f-bb14-9e89d18a684e",
									true,
								},
								
								{
									"6f9c9694-26de-ade2-bab2-8539b2187dce",
									true,
								},
							},
							uuid = "e9989627-427e-ef21-9afe-eb60c57a9581",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16471,
							conditions = 
							{
								
								{
									"b9223e22-d9de-03db-8fdb-577bd0af60e8",
									true,
								},
								
								{
									"6f9c9694-26de-ade2-bab2-8539b2187dce",
									true,
								},
							},
							uuid = "23852a0c-25f0-8944-b084-cc770164d820",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16160,
							conditions = 
							{
								
								{
									"16d46912-3124-94ae-a7cf-39d529b48d91",
									true,
								},
								
								{
									"6f9c9694-26de-ade2-bab2-8539b2187dce",
									true,
								},
							},
							uuid = "2df2959c-c025-5d25-a0df-7e9d2e79c577",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T2\"",
							name = "Assigned OT",
							uuid = "6f9c9694-26de-ade2-bab2-8539b2187dce",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "b89f038e-c91b-d4d6-8cf5-0d9ec383eaa6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "4f1eb8c7-8b50-e38f-bb14-9e89d18a684e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "b9223e22-d9de-03db-8fdb-577bd0af60e8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "16d46912-3124-94ae-a7cf-39d529b48d91",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P1",
				mechanicTime = 78.5,
				name = "[LPDU Tank] P1 red tether OT party",
				timeRange = true,
				timelineIndex = 20,
				timerEndOffset = 1,
				timerStartOffset = -2,
				uuid = "0481839a-130a-16c2-8559-c80298d2f472",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"R1\"",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"R1\"",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"M2\"",
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
		
		{
			data = 
			{
				displayPath = "",
				name = "Spreadsheet tank mitigation ",
				uuid = "b9214d5a-c124-38a7-b8d8-abeaa8239bfe",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P1",
				uuid = "f1fbf2ca-8d72-7698-a526-7381f429e53f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"e5c42ef3-b6cd-31a4-bf9c-1dbe788ab7f2",
									true,
								},
								
								{
									"8aa60a57-b6c8-ce84-a151-279131d80a61",
									true,
								},
							},
							uuid = "6d427418-fb07-34a0-a4c2-ad977830f9ba",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"9ce25b4d-fa35-7393-a6e8-47e9a54fb3fe",
									true,
								},
								
								{
									"8aa60a57-b6c8-ce84-a151-279131d80a61",
									true,
								},
							},
							uuid = "160c5f12-186a-d2a7-8bbc-b8786de8f3b0",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"c1af0261-8e86-4be1-9d42-17397e70c59c",
									true,
								},
								
								{
									"8aa60a57-b6c8-ce84-a151-279131d80a61",
									true,
								},
							},
							uuid = "c5c4b396-45f0-7e6f-82c7-49aabccbf412",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"2aba8285-4f07-2b72-8ccc-c7acb480eb4c",
									true,
								},
								
								{
									"8aa60a57-b6c8-ce84-a151-279131d80a61",
									true,
								},
							},
							uuid = "2781872d-1c24-706b-bb79-f25ed904f33c",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\"",
							name = "Assigned MT",
							uuid = "8aa60a57-b6c8-ce84-a151-279131d80a61",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "e5c42ef3-b6cd-31a4-bf9c-1dbe788ab7f2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "9ce25b4d-fa35-7393-a6e8-47e9a54fb3fe",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "c1af0261-8e86-4be1-9d42-17397e70c59c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "2aba8285-4f07-2b72-8ccc-c7acb480eb4c",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P1",
				mechanicTime = 85.9,
				name = "[LPDU Tank] P1 Glory 1 MT Reprisal",
				timeRange = true,
				timelineIndex = 22,
				timerStartOffset = -3,
				uuid = "751767b5-ce15-e19f-8742-175ee6e1b2fc",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7385,
							conditions = 
							{
								
								{
									"929f5ea3-e61b-cb38-a043-58991607ead8",
									true,
								},
								
								{
									"730f9f08-1124-a839-ae49-e756ea7b6bd4",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "8c60d434-da7a-d6ab-838f-da63a73ca1ee",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "Assigned BOTH",
							uuid = "730f9f08-1124-a839-ae49-e756ea7b6bd4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "929f5ea3-e61b-cb38-a043-58991607ead8",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P1",
				mechanicTime = 85.9,
				name = "[LPDU Tank] P1 Glory 1 PLD wings",
				timeRange = true,
				timelineIndex = 22,
				timerStartOffset = -2,
				uuid = "70fdb7ce-86c2-f2e6-881c-3c8f1f1bb127",
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
				name = "Spreadsheet tank mitigation ",
				uuid = "85aca151-bc16-b11b-b7d0-6ae0e45306bb",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P1",
				uuid = "d9312544-5f1e-e089-be17-b047b74cc81c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 16471,
							conditions = 
							{
								
								{
									"52c0a1f9-0d6f-0e0a-a0f8-ccd2be54f7cd",
									true,
								},
								
								{
									"70227a0c-308a-218f-ba7f-7f9701401295",
									true,
								},
							},
							uuid = "02e4e12a-ae09-1f7a-a69e-b46d2aac7233",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16160,
							conditions = 
							{
								
								{
									"8383d845-d64e-6d9d-a515-2ce91dd3b859",
									true,
								},
								
								{
									"70227a0c-308a-218f-ba7f-7f9701401295",
									true,
								},
							},
							uuid = "1fa65265-707e-a344-8a06-3498f3fd9347",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\"",
							name = "Assigned MT",
							uuid = "70227a0c-308a-218f-ba7f-7f9701401295",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "52c0a1f9-0d6f-0e0a-a0f8-ccd2be54f7cd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "8383d845-d64e-6d9d-a515-2ce91dd3b859",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P1",
				mechanicTime = 101.5,
				name = "[LPDU Tank] P1 Faith MT magic party",
				timeRange = true,
				timelineIndex = 23,
				timerEndOffset = 6,
				timerStartOffset = 3,
				uuid = "7fd0227f-8acd-c02d-90ad-2a7590a5ae0e",
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
				name = "Shared ACR jump controls",
				uuid = "fa107f8a-9241-f998-afc9-b6d0d6a64ad8",
			},
			objectType = "folder",
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
							actionLua = "ACR_RikuPLD3_Jumps = false\nself.used=true",
							conditions = 
							{
								
								{
									"74bf1a29-3f00-ca04-a127-fe75a0713fc8",
									true,
								},
							},
							name = "PALADIN jumps off",
							uuid = "ceb2ebc6-2ba3-9065-946f-b1c8ad147310",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuMNK3_Jumps = false\nself.used=true",
							conditions = 
							{
								
								{
									"13dd2059-3309-0055-92b0-5f86dacf0b2e",
									true,
								},
							},
							name = "MONK jumps off",
							uuid = "2d743c39-ed3f-92db-bd02-d1b24d67722e",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRG3_Jumps = false\nself.used=true",
							conditions = 
							{
								
								{
									"ba752731-02f1-5482-a22e-a69ac33fdaf1",
									true,
								},
							},
							name = "DRAGOON jumps off",
							uuid = "5404d3b3-28a3-4635-a52b-a1f2ea1059e0",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuRDM3_JumpIn = false\nself.used=true",
							conditions = 
							{
								
								{
									"ea467d12-87e0-0f99-9e00-bb093ba0c5e3",
									true,
								},
							},
							name = "RDM Jump In off",
							uuid = "ad8efd54-3bc5-6138-9daf-885fa4ef5209",
							version = 2.1,
						},
					},
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
							uuid = "74bf1a29-3f00-ca04-a127-fe75a0713fc8",
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
							uuid = "13dd2059-3309-0055-92b0-5f86dacf0b2e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DRAGOON",
							uuid = "ba752731-02f1-5482-a22e-a69ac33fdaf1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "REDMAGE",
							uuid = "ea467d12-87e0-0f99-9e00-bb093ba0c5e3",
							version = 3,
						},
					},
				},
				displayPath = "Shared ACR jump controls",
				mechanicTime = 105.8,
				name = "[LPDU] Disable jumps",
				timeRange = true,
				timelineIndex = 25,
				timerEndOffset = -2,
				timerStartOffset = -5,
				uuid = "fd35acf9-ecef-ff10-bcd3-ea07543b4bea",
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
				name = "Shared ACR jump controls",
				uuid = "2e30b0ad-588c-abc4-926d-145832ed5b18",
			},
			objectType = "folder",
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
							actionLua = "ACR_RikuPLD3_Jumps = true\nself.used=true",
							conditions = 
							{
								
								{
									"32158955-ad79-0271-84e5-b2ff62340057",
									true,
								},
							},
							name = "PALADIN jumps on",
							uuid = "d9e2542d-c6fe-d4dd-9f18-ba4400bdb85f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuMNK3_Jumps = true\nself.used=true",
							conditions = 
							{
								
								{
									"8b2a48a4-5f2e-605f-8f37-673c978b8fca",
									true,
								},
							},
							name = "MONK jumps on",
							uuid = "8079c1d1-0eb6-8a84-9081-8af21736d122",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRG3_Jumps = true\nself.used=true",
							conditions = 
							{
								
								{
									"e891ddc9-4fd7-c706-ba27-7d483189b424",
									true,
								},
							},
							name = "DRAGOON jumps on",
							uuid = "8f615ae0-843a-53a6-a83e-b457a3058e8b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuRDM3_JumpIn = true\nself.used=true",
							conditions = 
							{
								
								{
									"2f1b7a77-0dca-368a-8041-810da4c1bbd0",
									true,
								},
							},
							name = "RDM Jump In on",
							uuid = "82197bd0-84c4-e781-896c-ed903b980996",
							version = 2.1,
						},
					},
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
							uuid = "32158955-ad79-0271-84e5-b2ff62340057",
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
							uuid = "8b2a48a4-5f2e-605f-8f37-673c978b8fca",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DRAGOON",
							uuid = "e891ddc9-4fd7-c706-ba27-7d483189b424",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "REDMAGE",
							uuid = "2f1b7a77-0dca-368a-8041-810da4c1bbd0",
							version = 3,
						},
					},
				},
				displayPath = "Shared ACR jump controls",
				mechanicTime = 113.7,
				name = "[LPDU] Enable jumps",
				timeRange = true,
				timelineIndex = 28,
				timerEndOffset = 3.5,
				timerStartOffset = 0.5,
				uuid = "61baa886-b568-949d-88ac-cadd8c65bdac",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"M1\"",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"R2\"",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"R1\"",
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
		
		{
			data = 
			{
				displayPath = "",
				name = "Spreadsheet tank mitigation ",
				uuid = "828f5777-010b-73eb-95c8-127acdb0b757",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P1",
				uuid = "e3a0050f-d2ce-28c7-a40d-9ab1c2f7294b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 3540,
							conditions = 
							{
								
								{
									"53d090b2-5559-a4c1-9361-96c89b8fb52c",
									true,
								},
								
								{
									"88f98af8-565a-f00c-8fbd-3f952a6bcc09",
									true,
								},
							},
							uuid = "c6dc9a41-3303-3657-8b2b-bf1eccb1a769",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7388,
							conditions = 
							{
								
								{
									"463557d0-07cb-03d5-8d92-050f84c15469",
									true,
								},
								
								{
									"88f98af8-565a-f00c-8fbd-3f952a6bcc09",
									true,
								},
							},
							uuid = "c9a61b44-b1e0-f87b-ac7a-2cf9e6152344",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\"",
							name = "Assigned MT",
							uuid = "88f98af8-565a-f00c-8fbd-3f952a6bcc09",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "53d090b2-5559-a4c1-9361-96c89b8fb52c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "463557d0-07cb-03d5-8d92-050f84c15469",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P1",
				mechanicTime = 121.1,
				name = "[LPDU Tank] P1 Glory 2 MT shield",
				timeRange = true,
				timelineIndex = 29,
				timerStartOffset = -3,
				uuid = "ebb0e989-dce2-609b-afc7-43604cec692a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"292a208d-7d05-0926-b8c6-340057be247e",
									true,
								},
								
								{
									"5d04ffe0-d7da-0239-93c7-e6018174bc0b",
									true,
								},
							},
							uuid = "fad3dd55-a9da-9251-a72f-5c4f3fb0c95d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"55a6990e-38ad-9ddb-a0aa-f29b6572c672",
									true,
								},
								
								{
									"5d04ffe0-d7da-0239-93c7-e6018174bc0b",
									true,
								},
							},
							uuid = "c13498f2-b001-7165-9082-6b9ce7e8ece1",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"c8caf119-a998-f9ea-8e53-b7374f45b8bc",
									true,
								},
								
								{
									"5d04ffe0-d7da-0239-93c7-e6018174bc0b",
									true,
								},
							},
							uuid = "c486c403-1f1b-a537-9ea9-f82b534c7131",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"a873bc6c-6938-7325-a151-a2c6aab24f8a",
									true,
								},
								
								{
									"5d04ffe0-d7da-0239-93c7-e6018174bc0b",
									true,
								},
							},
							uuid = "f82e6a3b-a0fd-7f43-8467-5e8435ef1604",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T2\"",
							name = "Assigned OT",
							uuid = "5d04ffe0-d7da-0239-93c7-e6018174bc0b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "292a208d-7d05-0926-b8c6-340057be247e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "55a6990e-38ad-9ddb-a0aa-f29b6572c672",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "c8caf119-a998-f9ea-8e53-b7374f45b8bc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "a873bc6c-6938-7325-a151-a2c6aab24f8a",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P1",
				mechanicTime = 121.1,
				name = "[LPDU Tank] P1 Glory 2 OT Reprisal",
				timeRange = true,
				timelineIndex = 29,
				timerStartOffset = -3,
				uuid = "66b69271-8d06-455d-b1f5-207bf3899c68",
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
				name = "Spreadsheet tank mitigation ",
				uuid = "a05df28b-4b7d-29ef-9283-755b94b897f9",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P1",
				uuid = "48d16f96-89c2-b9d2-8013-d572b1d1a0e9",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 30,
							conditions = 
							{
								
								{
									"4bb11f1c-9bcd-db64-8b9c-7098f17ea2c8",
									true,
								},
								
								{
									"b56cedbf-90e5-eb0f-b678-59ba9e2b8445",
									true,
								},
								
								{
									"24cbf660-5c2e-32df-99e9-562ce8e9360d",
									true,
								},
							},
							uuid = "2292f6f1-c8d8-ba4f-bffb-336213d18a0f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 43,
							conditions = 
							{
								
								{
									"f0e3249f-dc94-02b2-82dd-61f71efcc834",
									true,
								},
								
								{
									"b56cedbf-90e5-eb0f-b678-59ba9e2b8445",
									true,
								},
								
								{
									"24cbf660-5c2e-32df-99e9-562ce8e9360d",
									true,
								},
							},
							uuid = "fbe99697-aac2-099b-b826-cfcabd70ca1d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 3638,
							conditions = 
							{
								
								{
									"b1bfd05e-3dfc-cb6a-9203-ecb430f329b3",
									true,
								},
								
								{
									"b56cedbf-90e5-eb0f-b678-59ba9e2b8445",
									true,
								},
								
								{
									"24cbf660-5c2e-32df-99e9-562ce8e9360d",
									true,
								},
							},
							uuid = "e5e4692d-fd1e-7ad9-a94d-925daaa8f85f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16152,
							conditions = 
							{
								
								{
									"005d5f55-212f-59a8-856f-08b3cc94b120",
									true,
								},
								
								{
									"b56cedbf-90e5-eb0f-b678-59ba9e2b8445",
									true,
								},
								
								{
									"24cbf660-5c2e-32df-99e9-562ce8e9360d",
									true,
								},
							},
							uuid = "6d7fa961-eee2-0b1c-af88-3caa153b01c3",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T2\"",
							name = "Assigned OT",
							uuid = "b56cedbf-90e5-eb0f-b678-59ba9e2b8445",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "24cbf660-5c2e-32df-99e9-562ce8e9360d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "4bb11f1c-9bcd-db64-8b9c-7098f17ea2c8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "f0e3249f-dc94-02b2-82dd-61f71efcc834",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "b1bfd05e-3dfc-cb6a-9203-ecb430f329b3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "005d5f55-212f-59a8-856f-08b3cc94b120",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P1",
				mechanicTime = 129.5,
				name = "[LPDU Tank] P1 Powder 2 OT invuln",
				timeRange = true,
				timelineIndex = 30,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "42256b47-c0e6-bf39-9444-72cc2c21802d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared tank utility",
				uuid = "d166b186-1cdf-a297-b7e2-3b7dc4da2929",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7537,
							conditions = 
							{
								
								{
									"a1eadd05-fce9-bfea-ab03-7bf2fd5f44fe",
									true,
								},
								
								{
									"f016c335-ed0a-fa27-8357-8a68e2c1ba79",
									true,
								},
								
								{
									"3800a0b2-06f2-c53a-b9df-109a552d926b",
									true,
								},
								
								{
									"03ff960e-d3a9-e476-afe0-bb3b648919bd",
									true,
								},
							},
							targetType = "Other Tank",
							uuid = "a5de62d8-e563-207a-b2b7-80933bc6b620",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
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
							},
							uuid = "f016c335-ed0a-fa27-8357-8a68e2c1ba79",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\"",
							name = "Assigned MT",
							uuid = "3800a0b2-06f2-c53a-b9df-109a552d926b",
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
							name = "Provoke event",
							spellIDList = 
							{
								7533,
							},
							uuid = "a1eadd05-fce9-bfea-ab03-7bf2fd5f44fe",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nreturn eventArgs.entityID==r.idOf(\"T2\")",
							name = "Assigned OT used Provoke",
							uuid = "03ff960e-d3a9-e476-afe0-bb3b648919bd",
							version = 3,
						},
					},
				},
				displayPath = "Shared tank utility",
				eventType = 2,
				mechanicTime = 129.5,
				name = "[LPDU Tank] MT Shirk after OT Provoke",
				timeRange = true,
				timelineIndex = 30,
				timerEndOffset = 10,
				timerStartOffset = -20,
				uuid = "aa7fc33d-081a-6b71-af8c-fbc2ad7ac4c8",
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
				name = "Shared ACR jump controls",
				uuid = "0eb30106-de4b-492c-a23e-829ee7937dbe",
			},
			objectType = "folder",
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
							actionLua = "ACR_RikuPLD3_Jumps = false\nself.used=true",
							conditions = 
							{
								
								{
									"ac7b2005-e1e5-6066-814c-4fa6c2d60444",
									true,
								},
							},
							name = "PALADIN jumps off",
							uuid = "33cd12a8-242e-6c15-a784-8611b1107e25",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuMNK3_Jumps = false\nself.used=true",
							conditions = 
							{
								
								{
									"7952e3c2-a90a-334b-96d4-965548f1437d",
									true,
								},
							},
							name = "MONK jumps off",
							uuid = "27356917-81b7-c09f-9f9c-89be46238ce0",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRG3_Jumps = false\nself.used=true",
							conditions = 
							{
								
								{
									"c6d458d2-0d8e-4820-823a-0648f16022a4",
									true,
								},
							},
							name = "DRAGOON jumps off",
							uuid = "dfa0e18e-0961-8d59-a65a-1fe145d03e40",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuRDM3_JumpIn = false\nself.used=true",
							conditions = 
							{
								
								{
									"022e6f64-30d5-dc7c-a892-09bc57f1446a",
									true,
								},
							},
							name = "RDM Jump In off",
							uuid = "271a18b1-a08f-0c5b-9762-4dcba27fabb3",
							version = 2.1,
						},
					},
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
							uuid = "ac7b2005-e1e5-6066-814c-4fa6c2d60444",
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
							uuid = "7952e3c2-a90a-334b-96d4-965548f1437d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DRAGOON",
							uuid = "c6d458d2-0d8e-4820-823a-0648f16022a4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "REDMAGE",
							uuid = "022e6f64-30d5-dc7c-a892-09bc57f1446a",
							version = 3,
						},
					},
				},
				displayPath = "Shared ACR jump controls",
				mechanicTime = 142.9,
				name = "[LPDU] Disable jumps",
				timeRange = true,
				timelineIndex = 33,
				timerEndOffset = 3,
				uuid = "5f37c7fb-9555-9539-9542-7abbc5797d18",
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
				name = "Spreadsheet tank mitigation ",
				uuid = "f2b27e2f-e90e-0fe9-b689-87ff358ef025",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P1",
				uuid = "8bf15300-6968-be92-b730-51b1482ac8ed",
			},
			objectType = "folder",
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
							conditions = 
							{
								
								{
									"1cb87f9a-5045-5986-8d46-8dcb167a0913",
									true,
								},
								
								{
									"51b3ae8e-e088-0a38-8e47-4d0c5409ef38",
									true,
								},
								
								{
									"566327cd-3615-970a-976b-6344912bb5a0",
									true,
								},
							},
							uuid = "3126dc5f-01ee-dad1-b123-2bf47c9d4f85",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							conditions = 
							{
								
								{
									"3a88ba96-c5bc-e48e-a154-78b418ba943d",
									true,
								},
								
								{
									"51b3ae8e-e088-0a38-8e47-4d0c5409ef38",
									true,
								},
								
								{
									"566327cd-3615-970a-976b-6344912bb5a0",
									true,
								},
							},
							uuid = "3647add7-3c32-f2b2-9937-8f4f13051742",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							conditions = 
							{
								
								{
									"6c0955e1-28ce-59ab-8ea7-91731d533ba9",
									true,
								},
								
								{
									"51b3ae8e-e088-0a38-8e47-4d0c5409ef38",
									true,
								},
								
								{
									"566327cd-3615-970a-976b-6344912bb5a0",
									true,
								},
							},
							uuid = "47a77cde-8b23-9be3-a239-d31c85fdb7aa",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							conditions = 
							{
								
								{
									"6a305978-ebd0-cb9c-97fe-1f21a3ef3791",
									true,
								},
								
								{
									"51b3ae8e-e088-0a38-8e47-4d0c5409ef38",
									true,
								},
								
								{
									"566327cd-3615-970a-976b-6344912bb5a0",
									true,
								},
							},
							uuid = "64961b15-a8ac-430a-96d8-11d3ec5877c5",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "Assigned BOTH",
							uuid = "51b3ae8e-e088-0a38-8e47-4d0c5409ef38",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "566327cd-3615-970a-976b-6344912bb5a0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "1cb87f9a-5045-5986-8d46-8dcb167a0913",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "3a88ba96-c5bc-e48e-a154-78b418ba943d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "6c0955e1-28ce-59ab-8ea7-91731d533ba9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "6a305978-ebd0-cb9c-97fe-1f21a3ef3791",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P1",
				mechanicTime = 145.6,
				name = "[LPDU Tank] P1 explosion 2 rampart",
				timeRange = true,
				timelineIndex = 35,
				timerEndOffset = -8,
				timerStartOffset = -12,
				uuid = "62745a3c-2d26-acf2-95ea-041bc30fcd38",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 36920,
							conditions = 
							{
								
								{
									"bc9d47d9-6aee-b0bc-8989-09a26de34fb8",
									true,
								},
								
								{
									"6e75a4cb-7b79-451b-9b59-2d1d3154307f",
									true,
								},
								
								{
									"2bfc5be8-302d-a90e-bb87-1effe7041bc4",
									true,
								},
							},
							uuid = "b1beaded-fdbb-1850-b2cc-be4124e427a5",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 36923,
							conditions = 
							{
								
								{
									"5c9107a3-8975-1f8a-b0f2-1da577b255da",
									true,
								},
								
								{
									"6e75a4cb-7b79-451b-9b59-2d1d3154307f",
									true,
								},
								
								{
									"2bfc5be8-302d-a90e-bb87-1effe7041bc4",
									true,
								},
							},
							uuid = "fe82e578-e0eb-4ada-b6d6-5959010d4e9c",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 36927,
							conditions = 
							{
								
								{
									"93cbd588-c7ca-c8bf-8a78-9494728656f7",
									true,
								},
								
								{
									"6e75a4cb-7b79-451b-9b59-2d1d3154307f",
									true,
								},
								
								{
									"2bfc5be8-302d-a90e-bb87-1effe7041bc4",
									true,
								},
							},
							uuid = "5b4277de-368e-2d59-a034-b1f4bc29d5e2",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 36935,
							conditions = 
							{
								
								{
									"4a2f7a5f-5811-c4b3-bff0-61853a4d4e2d",
									true,
								},
								
								{
									"6e75a4cb-7b79-451b-9b59-2d1d3154307f",
									true,
								},
								
								{
									"2bfc5be8-302d-a90e-bb87-1effe7041bc4",
									true,
								},
							},
							uuid = "da05d297-fb5f-ca19-8fec-2851aa5a3f3e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "Assigned BOTH",
							uuid = "6e75a4cb-7b79-451b-9b59-2d1d3154307f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "2bfc5be8-302d-a90e-bb87-1effe7041bc4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "bc9d47d9-6aee-b0bc-8989-09a26de34fb8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "5c9107a3-8975-1f8a-b0f2-1da577b255da",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "93cbd588-c7ca-c8bf-8a78-9494728656f7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "4a2f7a5f-5811-c4b3-bff0-61853a4d4e2d",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P1",
				mechanicTime = 145.6,
				name = "[LPDU Tank] P1 explosion 2 long",
				timeRange = true,
				timelineIndex = 35,
				timerEndOffset = -6,
				timerStartOffset = -10,
				uuid = "14ed67ab-fbd7-1732-883d-375fb791227a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 22,
							conditions = 
							{
								
								{
									"edf3aa0f-87e6-3493-a145-c2674c6820b0",
									true,
								},
								
								{
									"29ee4ea4-1565-843f-a7a3-5ecab1b27d5c",
									true,
								},
								
								{
									"487e012a-c27d-5728-ae71-da0b9b1a8484",
									true,
								},
							},
							uuid = "b5aefd5b-d5d2-8a91-b7d0-90830564c808",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 40,
							conditions = 
							{
								
								{
									"ad434365-6130-ae74-800b-3a81d859f7b3",
									true,
								},
								
								{
									"29ee4ea4-1565-843f-a7a3-5ecab1b27d5c",
									true,
								},
								
								{
									"487e012a-c27d-5728-ae71-da0b9b1a8484",
									true,
								},
							},
							uuid = "223342f3-542f-fc6e-992c-71df1c2f0a33",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 3634,
							conditions = 
							{
								
								{
									"10be2779-1740-c1ec-8614-7286af98e883",
									true,
								},
								
								{
									"29ee4ea4-1565-843f-a7a3-5ecab1b27d5c",
									true,
								},
								
								{
									"487e012a-c27d-5728-ae71-da0b9b1a8484",
									true,
								},
							},
							uuid = "c12b0c07-341d-943c-82e8-8c5e5119fe74",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25754,
							conditions = 
							{
								
								{
									"10be2779-1740-c1ec-8614-7286af98e883",
									true,
								},
								
								{
									"29ee4ea4-1565-843f-a7a3-5ecab1b27d5c",
									true,
								},
								
								{
									"487e012a-c27d-5728-ae71-da0b9b1a8484",
									true,
								},
							},
							uuid = "a39b5133-e676-ad13-8fa7-ca3d10af37d7",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16140,
							conditions = 
							{
								
								{
									"141eaa86-a3ac-b901-bbc8-437f50dbec31",
									true,
								},
								
								{
									"29ee4ea4-1565-843f-a7a3-5ecab1b27d5c",
									true,
								},
								
								{
									"487e012a-c27d-5728-ae71-da0b9b1a8484",
									true,
								},
							},
							uuid = "ff30d166-2180-8f9d-bd00-2fa58a3536c3",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "Assigned BOTH",
							uuid = "29ee4ea4-1565-843f-a7a3-5ecab1b27d5c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "487e012a-c27d-5728-ae71-da0b9b1a8484",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "edf3aa0f-87e6-3493-a145-c2674c6820b0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "ad434365-6130-ae74-800b-3a81d859f7b3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "10be2779-1740-c1ec-8614-7286af98e883",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "141eaa86-a3ac-b901-bbc8-437f50dbec31",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P1",
				mechanicTime = 145.6,
				name = "[LPDU Tank] P1 explosion 2 extra",
				timeRange = true,
				timelineIndex = 35,
				timerEndOffset = -3,
				timerStartOffset = -7,
				uuid = "37276518-d3fd-6c11-8402-46ece61dedd8",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 25746,
							conditions = 
							{
								
								{
									"f0890f32-e110-e39e-b2d2-47a3c07b164b",
									true,
								},
								
								{
									"701bf982-3c7d-9903-b6ca-4f90faa6522c",
									true,
								},
								
								{
									"8033cbe1-856a-115e-bd22-aaf2f3f9f0ce",
									true,
								},
							},
							uuid = "68156289-0a58-95bb-ab3d-65323bd33add",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25751,
							conditions = 
							{
								
								{
									"ae248e97-a929-70e8-8c4a-a12baa382be3",
									true,
								},
								
								{
									"701bf982-3c7d-9903-b6ca-4f90faa6522c",
									true,
								},
								
								{
									"8033cbe1-856a-115e-bd22-aaf2f3f9f0ce",
									true,
								},
							},
							uuid = "6cb8a55a-f06e-b976-b24f-02edf6fe1a66",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7393,
							conditions = 
							{
								
								{
									"65285e0c-6c76-2890-a7b4-198a5b6b6b39",
									true,
								},
								
								{
									"701bf982-3c7d-9903-b6ca-4f90faa6522c",
									true,
								},
								
								{
									"8033cbe1-856a-115e-bd22-aaf2f3f9f0ce",
									true,
								},
							},
							uuid = "05b3693f-e1c3-1b56-a01a-eef0c2dc65b3",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25758,
							conditions = 
							{
								
								{
									"1532b74a-932a-fc13-8a21-b1762e3018be",
									true,
								},
								
								{
									"701bf982-3c7d-9903-b6ca-4f90faa6522c",
									true,
								},
								
								{
									"8033cbe1-856a-115e-bd22-aaf2f3f9f0ce",
									true,
								},
							},
							uuid = "46cbf89b-ba80-e347-9b34-835fc2e33e1e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "Assigned BOTH",
							uuid = "701bf982-3c7d-9903-b6ca-4f90faa6522c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "8033cbe1-856a-115e-bd22-aaf2f3f9f0ce",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "f0890f32-e110-e39e-b2d2-47a3c07b164b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "ae248e97-a929-70e8-8c4a-a12baa382be3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "65285e0c-6c76-2890-a7b4-198a5b6b6b39",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "1532b74a-932a-fc13-8a21-b1762e3018be",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P1",
				mechanicTime = 145.6,
				name = "[LPDU Tank] P1 explosion 2 short",
				timeRange = true,
				timelineIndex = 35,
				timerStartOffset = -3,
				uuid = "7df21fde-0743-ae00-a578-f240365d9390",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared ACR jump controls",
				uuid = "ec2c1feb-31bd-61cc-a845-d0c0c7104179",
			},
			objectType = "folder",
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
							actionLua = "ACR_RikuPLD3_Jumps = true\nself.used=true",
							conditions = 
							{
								
								{
									"1824f222-3f34-852c-b51e-733d89982159",
									true,
								},
							},
							name = "PALADIN jumps on",
							uuid = "fc9467c2-6151-cd9d-bb75-658008aedab5",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuMNK3_Jumps = true\nself.used=true",
							conditions = 
							{
								
								{
									"4af7e2d4-eb60-5239-a06d-fb43674199dd",
									true,
								},
							},
							name = "MONK jumps on",
							uuid = "12b5794e-7546-6367-a25c-917c8c3aae02",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRG3_Jumps = true\nself.used=true",
							conditions = 
							{
								
								{
									"0eb42001-0607-bc07-ac15-8d0a4c8cc080",
									true,
								},
							},
							name = "DRAGOON jumps on",
							uuid = "a23ce231-9d0f-3869-8132-291bf61b9612",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuRDM3_JumpIn = true\nself.used=true",
							conditions = 
							{
								
								{
									"20547788-1d2d-5170-a859-6b3cb8d86b9a",
									true,
								},
							},
							name = "RDM Jump In on",
							uuid = "1f5acbd9-e82b-dc24-971b-63439b9c2277",
							version = 2.1,
						},
					},
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
							uuid = "1824f222-3f34-852c-b51e-733d89982159",
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
							uuid = "4af7e2d4-eb60-5239-a06d-fb43674199dd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DRAGOON",
							uuid = "0eb42001-0607-bc07-ac15-8d0a4c8cc080",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "REDMAGE",
							uuid = "20547788-1d2d-5170-a859-6b3cb8d86b9a",
							version = 3,
						},
					},
				},
				displayPath = "Shared ACR jump controls",
				mechanicTime = 145.6,
				name = "[LPDU] Enable jumps",
				timeRange = true,
				timelineIndex = 35,
				timerEndOffset = 5,
				timerStartOffset = 2,
				uuid = "1beecf94-0bf0-04b8-984e-365d8c655c3a",
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
				name = "Off-tank utility",
				uuid = "cf19c049-f983-22f1-ac05-9e0eb3b03933",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 32065,
							conditions = 
							{
								
								{
									"501fe6d7-82ad-24f7-b59a-c594c2a2011c",
									true,
								},
								
								{
									"75c7e5af-9110-8709-ae27-46cf465e2d82",
									true,
								},
								
								{
									"01896b12-434e-5f61-966d-ddf398a26919",
									true,
								},
							},
							endIfUsed = true,
							ignoreWeaveRules = true,
							uuid = "662fd3f5-91f5-cb81-a7d1-db8b50aa9de5",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 32066,
							conditions = 
							{
								
								{
									"5b6666ec-ff6b-ac8f-9c23-269102fcd671",
									true,
								},
								
								{
									"75c7e5af-9110-8709-ae27-46cf465e2d82",
									true,
								},
								
								{
									"a407cf73-6003-b4b6-82ee-426ed332b073",
									true,
								},
							},
							endIfUsed = true,
							ignoreWeaveRules = true,
							uuid = "9851811e-067e-0fd1-abb4-50720e4159b2",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 32067,
							conditions = 
							{
								
								{
									"7bd54c5c-e8cd-7f42-86c3-ddc7c1eea3fb",
									true,
								},
								
								{
									"75c7e5af-9110-8709-ae27-46cf465e2d82",
									true,
								},
								
								{
									"a5f8d41c-591b-16f9-8325-9ad53a8f19bf",
									true,
								},
							},
							endIfUsed = true,
							ignoreWeaveRules = true,
							uuid = "07abcaf0-61b6-6e95-9e5b-f664cd3e7bb7",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 32068,
							conditions = 
							{
								
								{
									"060a7f79-18cf-20d1-8c8b-4e5f849714a1",
									true,
								},
								
								{
									"75c7e5af-9110-8709-ae27-46cf465e2d82",
									true,
								},
								
								{
									"bbad54b3-29d8-e4bd-a4e7-7d88a05ec857",
									true,
								},
							},
							endIfUsed = true,
							ignoreWeaveRules = true,
							uuid = "8c5ffed3-1e9c-96ce-a6d1-44e4fe73ecb2",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "75c7e5af-9110-8709-ae27-46cf465e2d82",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "PALADIN",
							uuid = "501fe6d7-82ad-24f7-b59a-c594c2a2011c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 79,
							category = "Self",
							uuid = "01896b12-434e-5f61-966d-ddf398a26919",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "WARRIOR",
							uuid = "5b6666ec-ff6b-ac8f-9c23-269102fcd671",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 91,
							category = "Self",
							uuid = "a407cf73-6003-b4b6-82ee-426ed332b073",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "DARKKNIGHT",
							uuid = "7bd54c5c-e8cd-7f42-86c3-ddc7c1eea3fb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 743,
							category = "Self",
							uuid = "a5f8d41c-591b-16f9-8325-9ad53a8f19bf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "GUNBREAKER",
							uuid = "060a7f79-18cf-20d1-8c8b-4e5f849714a1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 1833,
							category = "Self",
							uuid = "bbad54b3-29d8-e4bd-a4e7-7d88a05ec857",
							version = 3,
						},
					},
				},
				displayPath = "Off-tank utility",
				mechanicTime = 203.8,
				name = "[LPDU OT] drop stance",
				timeRange = true,
				timelineIndex = 39,
				timerStartOffset = -3,
				uuid = "443a44e5-6142-6e4b-9378-b99c56828ef0",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared ACR jump controls",
				uuid = "d3890823-fa13-723d-a2f7-465919ee4065",
			},
			objectType = "folder",
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
							actionLua = "ACR_RikuPLD3_Jumps = true\nself.used=true",
							conditions = 
							{
								
								{
									"12f8afe6-3b87-e417-905b-2bfb01c0447f",
									true,
								},
							},
							name = "PALADIN jumps on",
							uuid = "db919d5b-57de-9440-9b92-c93aabf939d9",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuMNK3_Jumps = true\nself.used=true",
							conditions = 
							{
								
								{
									"585a1e43-6238-a04a-85c0-3f7a5717f9f7",
									true,
								},
							},
							name = "MONK jumps on",
							uuid = "0fbe71e6-bd83-9587-b676-812b0cfbddb4",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRG3_Jumps = true\nself.used=true",
							conditions = 
							{
								
								{
									"f9e0842a-9f57-5e78-af62-9e0183438563",
									true,
								},
							},
							name = "DRAGOON jumps on",
							uuid = "ea9f09ac-d06b-9d31-a961-b924f26bda6a",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuRDM3_JumpIn = true\nself.used=true",
							conditions = 
							{
								
								{
									"6ec8f797-9db6-b513-b640-2e08476b51c1",
									true,
								},
							},
							name = "RDM Jump In on",
							uuid = "04d5cc1e-48a1-7015-b84a-1c2380da1e7e",
							version = 2.1,
						},
					},
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
							uuid = "12f8afe6-3b87-e417-905b-2bfb01c0447f",
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
							uuid = "585a1e43-6238-a04a-85c0-3f7a5717f9f7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DRAGOON",
							uuid = "f9e0842a-9f57-5e78-af62-9e0183438563",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "REDMAGE",
							uuid = "6ec8f797-9db6-b513-b640-2e08476b51c1",
							version = 3,
						},
					},
				},
				displayPath = "Shared ACR jump controls",
				mechanicTime = 203.8,
				name = "[LPDU] P2 entry release jump holds",
				timeRange = true,
				timelineIndex = 39,
				timerEndOffset = 3,
				uuid = "54fe5d2c-22ac-4ca6-8451-b1752d567593",
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
				name = "Spreadsheet tank mitigation ",
				uuid = "6060bd71-1011-c58f-8b1d-61d265ff3cac",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P2",
				uuid = "5212d507-de79-ba86-bee1-e5c62d7dfe56",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 30,
							conditions = 
							{
								
								{
									"4ea85a65-f07b-21d3-a289-7755dc0a9641",
									true,
								},
								
								{
									"01462824-b780-a6c4-b71d-12ebee670b63",
									true,
								},
								
								{
									"31cc59dd-b803-fbbe-ac08-52fea110f58e",
									true,
								},
							},
							uuid = "d38ae01f-9705-da32-b2f2-2bac3adfb18e",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 43,
							conditions = 
							{
								
								{
									"0f43a558-ef63-c470-942b-104d1aebb119",
									true,
								},
								
								{
									"01462824-b780-a6c4-b71d-12ebee670b63",
									true,
								},
								
								{
									"31cc59dd-b803-fbbe-ac08-52fea110f58e",
									true,
								},
							},
							uuid = "df4123ff-f737-cc9d-9e3f-6dc0fefbadd6",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 3638,
							conditions = 
							{
								
								{
									"1628ba17-5ab9-2992-b300-569f048a21f7",
									true,
								},
								
								{
									"01462824-b780-a6c4-b71d-12ebee670b63",
									true,
								},
								
								{
									"31cc59dd-b803-fbbe-ac08-52fea110f58e",
									true,
								},
							},
							uuid = "9e32d5cd-f8c5-7a1b-a2ea-d8c9c103fdce",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16152,
							conditions = 
							{
								
								{
									"c5874b27-fbc0-50f5-85bd-6ae2385cb349",
									true,
								},
								
								{
									"01462824-b780-a6c4-b71d-12ebee670b63",
									true,
								},
								
								{
									"31cc59dd-b803-fbbe-ac08-52fea110f58e",
									true,
								},
							},
							uuid = "c9739ea6-e36d-dcc4-9ce2-97e61f952214",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\"",
							name = "Assigned MT",
							uuid = "01462824-b780-a6c4-b71d-12ebee670b63",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "31cc59dd-b803-fbbe-ac08-52fea110f58e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "4ea85a65-f07b-21d3-a289-7755dc0a9641",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "0f43a558-ef63-c470-942b-104d1aebb119",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "1628ba17-5ab9-2992-b300-569f048a21f7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "c5874b27-fbc0-50f5-85bd-6ae2385cb349",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P2",
				mechanicTime = 214.9,
				name = "[LPDU Tank] P2 Quad Slap MT invuln",
				timeRange = true,
				timelineIndex = 40,
				timerStartOffset = -1.8,
				uuid = "92e90716-62be-2935-a912-e23a36aee25e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7382,
							conditions = 
							{
								
								{
									"1bbcc7b5-e2ba-1785-afeb-4872de2903b7",
									true,
								},
								
								{
									"c1e5b3c7-aa95-fa2c-91d5-c4ac89487b02",
									true,
								},
								
								{
									"f69272ff-4737-9da8-a64b-d6ee57143db7",
									true,
								},
							},
							targetType = "Other Tank",
							uuid = "7827cb55-0be1-8f58-9351-3ffcd49aa037",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7393,
							conditions = 
							{
								
								{
									"7beefb02-fd84-fc89-acfd-e1e50a67a2af",
									true,
								},
								
								{
									"c1e5b3c7-aa95-fa2c-91d5-c4ac89487b02",
									true,
								},
								
								{
									"f69272ff-4737-9da8-a64b-d6ee57143db7",
									true,
								},
							},
							targetType = "Other Tank",
							uuid = "0c9192a2-4ec4-fc06-b7c8-ba0a12a5d1f5",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T2\"",
							name = "Assigned OT",
							uuid = "c1e5b3c7-aa95-fa2c-91d5-c4ac89487b02",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "f69272ff-4737-9da8-a64b-d6ee57143db7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "1bbcc7b5-e2ba-1785-afeb-4872de2903b7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "7beefb02-fd84-fc89-acfd-e1e50a67a2af",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P2",
				mechanicTime = 214.9,
				name = "[LPDU Tank] P2 Quad Slap OT support",
				timeRange = true,
				timelineIndex = 40,
				timerEndOffset = 1,
				timerStartOffset = -1.8,
				uuid = "3ad4fcb8-f2e8-7cf7-9d33-09eb5bf03ce4",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"M2\"",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"R1\"",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"R2\"",
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
		
		{
			data = 
			{
				displayPath = "",
				name = "Spreadsheet tank mitigation ",
				uuid = "f64aa2ec-fa48-e785-a5bf-7668eb90e777",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P2",
				uuid = "7c8b9e4c-6dd0-13c9-b02c-7c2f337713b7",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"342d7e4f-30f7-4c01-a04e-af774ce3f16a",
									true,
								},
								
								{
									"8d34f667-5340-01be-a1a2-2b0c0deb8d27",
									true,
								},
							},
							uuid = "03df9c96-5faf-9986-8776-f74995fc54c8",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"60db083e-ab6f-85a2-b887-0ff04adabfd6",
									true,
								},
								
								{
									"8d34f667-5340-01be-a1a2-2b0c0deb8d27",
									true,
								},
							},
							uuid = "9b4eb3a7-a724-8644-8606-01ab2de727d3",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"ae00a8f0-389f-74c6-80b7-49d7f60623b5",
									true,
								},
								
								{
									"8d34f667-5340-01be-a1a2-2b0c0deb8d27",
									true,
								},
							},
							uuid = "ba3323aa-0c71-c7f4-a39c-dd1997ce2dcf",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"405a5bc3-785b-69ab-9dfd-84117571b349",
									true,
								},
								
								{
									"8d34f667-5340-01be-a1a2-2b0c0deb8d27",
									true,
								},
							},
							uuid = "88fd61de-2cb5-3968-b20e-2d04da117410",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\"",
							name = "Assigned MT",
							uuid = "8d34f667-5340-01be-a1a2-2b0c0deb8d27",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "342d7e4f-30f7-4c01-a04e-af774ce3f16a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "60db083e-ab6f-85a2-b887-0ff04adabfd6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "ae00a8f0-389f-74c6-80b7-49d7f60623b5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "405a5bc3-785b-69ab-9dfd-84117571b349",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P2",
				mechanicTime = 235.3,
				name = "[LPDU Tank] P2 Diamond MT Reprisal",
				timeRange = true,
				timelineIndex = 44,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "86034f6e-d090-da87-bf5a-48ca46c44c9c",
				version = 2,
			},
		},
	},
	[48] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared tank utility",
				uuid = "842f278e-d839-53eb-8365-b1290d05f521",
			},
			objectType = "folder",
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
							conditions = 
							{
								
								{
									"7296e743-c23b-afed-b109-5937dacb1fbc",
									true,
								},
								
								{
									"2b0b92cf-d7ed-396f-99b7-a9cca2170346",
									true,
								},
							},
							uuid = "2669e3db-4988-9891-b27d-e1a3d8c8ca98",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
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
							},
							uuid = "7296e743-c23b-afed-b109-5937dacb1fbc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "Assigned tanks",
							uuid = "2b0b92cf-d7ed-396f-99b7-a9cca2170346",
							version = 3,
						},
					},
				},
				displayPath = "Shared tank utility",
				mechanicTime = 246.7,
				name = "[LPDU Tank] Sprint",
				timeRange = true,
				timelineIndex = 48,
				timerStartOffset = -3,
				uuid = "7bfcdae1-baaf-7f4c-a27b-5fc09ef21b58",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"R1\"",
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
		
		{
			data = 
			{
				displayPath = "",
				name = "Spreadsheet tank mitigation ",
				uuid = "95525f21-d663-cc17-8333-f8dcaf406bb5",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P2",
				uuid = "96bf2394-0275-bd9b-8478-ebcb6bf65d9f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 3540,
							conditions = 
							{
								
								{
									"0251dccf-2896-3494-ad72-dcbf3d2ecbb0",
									true,
								},
								
								{
									"b2a7ab7a-d992-daa6-968d-26056037958b",
									true,
								},
							},
							uuid = "59e1edb6-f51b-dadf-ab5d-f50e175d91ee",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7388,
							conditions = 
							{
								
								{
									"1a43161a-099f-0617-839a-3be08379625c",
									true,
								},
								
								{
									"b2a7ab7a-d992-daa6-968d-26056037958b",
									true,
								},
							},
							uuid = "234c5848-7f5a-b83d-986c-16da45e9e437",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16471,
							conditions = 
							{
								
								{
									"0682dc38-f4e1-4c6c-a712-46a1ed52287c",
									true,
								},
								
								{
									"b2a7ab7a-d992-daa6-968d-26056037958b",
									true,
								},
							},
							uuid = "6a4fec8c-c69b-b944-a9ad-5517df77c90f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16160,
							conditions = 
							{
								
								{
									"627794d8-f84c-7012-993a-6a86c2548ad3",
									true,
								},
								
								{
									"b2a7ab7a-d992-daa6-968d-26056037958b",
									true,
								},
							},
							uuid = "286ad62e-a6a7-25a5-bcb3-35ad1ddbfffb",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T2\"",
							name = "Assigned OT",
							uuid = "b2a7ab7a-d992-daa6-968d-26056037958b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "0251dccf-2896-3494-ad72-dcbf3d2ecbb0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "1a43161a-099f-0617-839a-3be08379625c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "0682dc38-f4e1-4c6c-a712-46a1ed52287c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "627794d8-f84c-7012-993a-6a86c2548ad3",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P2",
				mechanicTime = 251.1,
				name = "[LPDU Tank] P2 Heavenly OT party",
				timeRange = true,
				timelineIndex = 50,
				timerEndOffset = 1,
				timerStartOffset = -2,
				uuid = "63201a2e-8d1f-cb0b-b188-203761228f70",
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
				name = "Spreadsheet tank mitigation ",
				uuid = "f49b112b-6604-510e-ae91-3a0a903fc488",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P2",
				uuid = "263e517b-1c1f-4254-91dc-811af79a9b33",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 36920,
							conditions = 
							{
								
								{
									"05ed8351-9564-9072-b443-294d93aa4898",
									true,
								},
								
								{
									"e6c75cd9-6a6f-853a-b1a5-1ab2db9cb3aa",
									true,
								},
								
								{
									"b30b60cf-acbd-cb6b-9c2e-5a3f17e5c331",
									true,
								},
							},
							uuid = "075e03db-059d-789e-8bcd-a0e5fea43f9b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 36923,
							conditions = 
							{
								
								{
									"bdefdaf9-833f-8554-beee-b9328c4bbbdd",
									true,
								},
								
								{
									"e6c75cd9-6a6f-853a-b1a5-1ab2db9cb3aa",
									true,
								},
								
								{
									"b30b60cf-acbd-cb6b-9c2e-5a3f17e5c331",
									true,
								},
							},
							uuid = "214fbc47-aa93-58e4-9efa-43cba77c0de1",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 36927,
							conditions = 
							{
								
								{
									"044cf3cf-c27c-bc8a-9341-14acfa4bce74",
									true,
								},
								
								{
									"e6c75cd9-6a6f-853a-b1a5-1ab2db9cb3aa",
									true,
								},
								
								{
									"b30b60cf-acbd-cb6b-9c2e-5a3f17e5c331",
									true,
								},
							},
							uuid = "72d054d3-b397-1b4e-8097-3a908c839af2",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 36935,
							conditions = 
							{
								
								{
									"60d03043-2232-f26b-89ae-6d48fe83ad39",
									true,
								},
								
								{
									"e6c75cd9-6a6f-853a-b1a5-1ab2db9cb3aa",
									true,
								},
								
								{
									"b30b60cf-acbd-cb6b-9c2e-5a3f17e5c331",
									true,
								},
							},
							uuid = "c6974618-fc44-674d-bedf-6513cda804be",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "Assigned BOTH",
							uuid = "e6c75cd9-6a6f-853a-b1a5-1ab2db9cb3aa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "b30b60cf-acbd-cb6b-9c2e-5a3f17e5c331",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "05ed8351-9564-9072-b443-294d93aa4898",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "bdefdaf9-833f-8554-beee-b9328c4bbbdd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "044cf3cf-c27c-bc8a-9341-14acfa4bce74",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "60d03043-2232-f26b-89ae-6d48fe83ad39",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P2",
				mechanicTime = 276.1,
				name = "[LPDU Tank] P2 later autos 120s",
				timeRange = true,
				timelineIndex = 62,
				timerEndOffset = 42,
				timerStartOffset = 38,
				uuid = "097e6122-1436-be13-8b15-413ae578af0f",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"M1\"",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"R2\"",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"R2\"",
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
		
		{
			data = 
			{
				displayPath = "",
				name = "Spreadsheet tank mitigation ",
				uuid = "b868ad55-5a18-7157-8a1c-e7c9199cc6c8",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P2",
				uuid = "eca4fb15-639c-b917-b718-92900b9840ee",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"ea7e010a-b172-1509-89d8-c9560c485a6c",
									true,
								},
								
								{
									"8126189e-a3dd-cb99-b471-1dbf461d654c",
									true,
								},
							},
							uuid = "b8dec4b4-8aea-4083-bea2-b640e501804c",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"d37eb02e-4528-e1c5-9c89-d4945aa764c0",
									true,
								},
								
								{
									"8126189e-a3dd-cb99-b471-1dbf461d654c",
									true,
								},
							},
							uuid = "571c1b83-d32a-8836-88e3-759adf129b70",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"0c4d78b5-6b6f-7a53-9fc6-e7df2973c895",
									true,
								},
								
								{
									"8126189e-a3dd-cb99-b471-1dbf461d654c",
									true,
								},
							},
							uuid = "c5734f96-41ae-846c-b3b0-633bcbe7f2bb",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"a27e415c-09d5-2b54-917f-3f4919192575",
									true,
								},
								
								{
									"8126189e-a3dd-cb99-b471-1dbf461d654c",
									true,
								},
							},
							uuid = "9f658159-e90a-e333-8485-4fafffa9d1fd",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T2\"",
							name = "Assigned OT",
							uuid = "8126189e-a3dd-cb99-b471-1dbf461d654c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "ea7e010a-b172-1509-89d8-c9560c485a6c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "d37eb02e-4528-e1c5-9c89-d4945aa764c0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "0c4d78b5-6b6f-7a53-9fc6-e7df2973c895",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "a27e415c-09d5-2b54-917f-3f4919192575",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P2",
				mechanicTime = 283,
				name = "[LPDU Tank] P2 Ray OT Reprisal",
				timeRange = true,
				timelineIndex = 64,
				timerStartOffset = -3,
				uuid = "c67adb72-ff9f-265e-b67f-30727f28ed06",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7385,
							conditions = 
							{
								
								{
									"e620ded0-ff8c-b90e-bdbc-434bbf5263c9",
									true,
								},
								
								{
									"09e038ac-784b-4ddf-9b9c-dbd18d7642a5",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "9ff8f4f3-6be5-eddc-bc42-38f82e31ee7d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "Assigned BOTH",
							uuid = "09e038ac-784b-4ddf-9b9c-dbd18d7642a5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "e620ded0-ff8c-b90e-bdbc-434bbf5263c9",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P2",
				mechanicTime = 283,
				name = "[LPDU Tank] P2 Ray PLD wings",
				timeRange = true,
				timelineIndex = 64,
				timerStartOffset = -2,
				uuid = "9398fef5-bfb6-f55f-8bc3-dcd9c3aacb6a",
				version = 2,
			},
		},
	},
	[72] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Spreadsheet tank mitigation ",
				uuid = "a6b84cc3-1d3d-eada-88a4-afb0773e615e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P2",
				uuid = "a6174b37-30e1-213c-9469-3de78fd2f3d4",
			},
			objectType = "folder",
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
							conditions = 
							{
								
								{
									"abd756c4-aba3-e4c8-b461-5a0660fcac3b",
									true,
								},
								
								{
									"ba3528e8-e2fd-15e8-b631-76397f576b48",
									true,
								},
								
								{
									"3d492b6d-212a-cd2d-8213-5b1b1d7e4256",
									true,
								},
							},
							uuid = "c6b1f72a-ef3b-9fd0-ab99-5dabb5342af3",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							conditions = 
							{
								
								{
									"48eb5f0b-f54f-e6a3-8ace-86b5f424a14c",
									true,
								},
								
								{
									"ba3528e8-e2fd-15e8-b631-76397f576b48",
									true,
								},
								
								{
									"3d492b6d-212a-cd2d-8213-5b1b1d7e4256",
									true,
								},
							},
							uuid = "9ec4c3e1-c8aa-2a00-b7f1-174e437203c1",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							conditions = 
							{
								
								{
									"f0e275cc-d032-51e0-bdfd-0a7a5e909470",
									true,
								},
								
								{
									"ba3528e8-e2fd-15e8-b631-76397f576b48",
									true,
								},
								
								{
									"3d492b6d-212a-cd2d-8213-5b1b1d7e4256",
									true,
								},
							},
							uuid = "c10aeb14-89cc-e8b7-8067-b0e944989063",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							conditions = 
							{
								
								{
									"7fc875ec-ac82-0fea-b542-93753eb2214c",
									true,
								},
								
								{
									"ba3528e8-e2fd-15e8-b631-76397f576b48",
									true,
								},
								
								{
									"3d492b6d-212a-cd2d-8213-5b1b1d7e4256",
									true,
								},
							},
							uuid = "c7e53c3e-89eb-6190-9761-58bf47bfbae7",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "Assigned BOTH",
							uuid = "ba3528e8-e2fd-15e8-b631-76397f576b48",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "3d492b6d-212a-cd2d-8213-5b1b1d7e4256",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "abd756c4-aba3-e4c8-b461-5a0660fcac3b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "48eb5f0b-f54f-e6a3-8ace-86b5f424a14c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "f0e275cc-d032-51e0-bdfd-0a7a5e909470",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "7fc875ec-ac82-0fea-b542-93753eb2214c",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P2",
				mechanicTime = 307.2,
				name = "[LPDU Tank] P2 mirror autos Rampart",
				timeRange = true,
				timelineIndex = 72,
				timerEndOffset = 3,
				uuid = "7e342ae6-8023-94a4-91d1-2ace8cedf5a3",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared tank utility",
				uuid = "5293459c-abd1-bd8d-9455-fdf5b3e0fafd",
			},
			objectType = "folder",
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
							conditions = 
							{
								
								{
									"d8fe6f20-09d5-893e-bcc9-76bf8c5e8dcc",
									true,
								},
								
								{
									"e3d8a765-d26e-6048-8298-d7de0414ed8c",
									true,
								},
							},
							uuid = "aa36c8ac-587d-7652-9742-8acb350e1554",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
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
							},
							uuid = "d8fe6f20-09d5-893e-bcc9-76bf8c5e8dcc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "Assigned tanks",
							uuid = "e3d8a765-d26e-6048-8298-d7de0414ed8c",
							version = 3,
						},
					},
				},
				displayPath = "Shared tank utility",
				mechanicTime = 307.2,
				name = "[LPDU Tank] Sprint",
				timeRange = true,
				timelineIndex = 72,
				timerEndOffset = 9,
				timerStartOffset = 6,
				uuid = "4cac4676-8078-c9f2-92ef-77bfd9fcdaa6",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared ACR jump controls",
				uuid = "aeab0399-9083-5d85-bdc8-2810f6e31ec4",
			},
			objectType = "folder",
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
							actionLua = "ACR_RikuPLD3_Jumps = false\nself.used=true",
							conditions = 
							{
								
								{
									"c57c5ab3-5fe3-842e-ae90-2d477909a8d9",
									true,
								},
							},
							name = "PALADIN jumps off",
							uuid = "4edb0f31-94f5-fe06-86f6-c733eb93b583",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuMNK3_Jumps = false\nself.used=true",
							conditions = 
							{
								
								{
									"24c4fc94-1c9b-2fcc-a88d-066b92532290",
									true,
								},
							},
							name = "MONK jumps off",
							uuid = "14cac7d9-f434-53a3-8592-1f47b985279f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRG3_Jumps = false\nself.used=true",
							conditions = 
							{
								
								{
									"de020ddf-b53d-4141-9f10-8439f3c9525b",
									true,
								},
							},
							name = "DRAGOON jumps off",
							uuid = "606e16a4-0ddf-6861-b359-6df9261facc0",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuRDM3_JumpIn = false\nself.used=true",
							conditions = 
							{
								
								{
									"68fa4686-0d5b-6f6d-8e95-6021b324d335",
									true,
								},
							},
							name = "RDM Jump In off",
							uuid = "6352be2a-44b3-8c75-b64c-f7ac6658b4e4",
							version = 2.1,
						},
					},
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
							uuid = "c57c5ab3-5fe3-842e-ae90-2d477909a8d9",
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
							uuid = "24c4fc94-1c9b-2fcc-a88d-066b92532290",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DRAGOON",
							uuid = "de020ddf-b53d-4141-9f10-8439f3c9525b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "REDMAGE",
							uuid = "68fa4686-0d5b-6f6d-8e95-6021b324d335",
							version = 3,
						},
					},
				},
				displayPath = "Shared ACR jump controls",
				mechanicTime = 307.2,
				name = "[LPDU] Disable jumps",
				timeRange = true,
				timelineIndex = 72,
				timerStartOffset = -3,
				uuid = "1516150c-955a-d57d-b5f4-742283c80f41",
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
				name = "Shared ACR jump controls",
				uuid = "c353d30e-23bd-202b-89d6-f2f290a8249b",
			},
			objectType = "folder",
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
							actionLua = "ACR_RikuPLD3_Jumps = true\nself.used=true",
							conditions = 
							{
								
								{
									"23de3b21-42a7-69e1-b930-28e5a8a91987",
									true,
								},
							},
							name = "PALADIN jumps on",
							uuid = "f723e1cd-a93f-ebb5-b468-c9913029efb4",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuMNK3_Jumps = true\nself.used=true",
							conditions = 
							{
								
								{
									"e75464bc-bcd4-e189-99cb-72e2eac9b078",
									true,
								},
							},
							name = "MONK jumps on",
							uuid = "4baeb2e0-3da5-4471-9455-e7164f243c98",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRG3_Jumps = true\nself.used=true",
							conditions = 
							{
								
								{
									"161d5d94-d08a-899d-9447-4674739a0c2d",
									true,
								},
							},
							name = "DRAGOON jumps on",
							uuid = "65c9b70b-6f7f-750e-a58e-6c2fb9cb4167",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuRDM3_JumpIn = true\nself.used=true",
							conditions = 
							{
								
								{
									"e5a782ba-056f-e9ea-b2de-74685c54fb15",
									true,
								},
							},
							name = "RDM Jump In on",
							uuid = "c65db28e-ca94-4f47-86eb-da7c3564c801",
							version = 2.1,
						},
					},
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
							uuid = "23de3b21-42a7-69e1-b930-28e5a8a91987",
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
							uuid = "e75464bc-bcd4-e189-99cb-72e2eac9b078",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DRAGOON",
							uuid = "161d5d94-d08a-899d-9447-4674739a0c2d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "REDMAGE",
							uuid = "e5a782ba-056f-e9ea-b2de-74685c54fb15",
							version = 3,
						},
					},
				},
				displayPath = "Shared ACR jump controls",
				mechanicTime = 317.1,
				name = "[LPDU] Enable jumps",
				timeRange = true,
				timelineIndex = 76,
				timerEndOffset = 3.5,
				timerStartOffset = 0.5,
				uuid = "2b26f321-abce-b21f-b290-9a392b1b8b1d",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"M2\"",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"R1\"",
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
		
		{
			data = 
			{
				displayPath = "",
				name = "Spreadsheet tank mitigation ",
				uuid = "d74196aa-50da-eb3a-9359-cfce71b371a5",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P2",
				uuid = "81a88cc9-625b-0477-ae18-462dfee4db23",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"9e1fd6d5-21b3-7da5-bd17-9882aa4a1b26",
									true,
								},
								
								{
									"b5191cee-7ca0-6f37-b426-e2ef55afd340",
									true,
								},
							},
							uuid = "533e76cd-f91f-cf33-8d74-0108ad928a2e",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"1646a2e4-06e6-0d1b-a345-7454c6095287",
									true,
								},
								
								{
									"b5191cee-7ca0-6f37-b426-e2ef55afd340",
									true,
								},
							},
							uuid = "8dd1108e-d8f4-3cbe-93de-958cacaa4bd6",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"c13e175a-a0d8-96c3-ad3d-5cf62d7cec63",
									true,
								},
								
								{
									"b5191cee-7ca0-6f37-b426-e2ef55afd340",
									true,
								},
							},
							uuid = "49338cfd-e8e9-f634-86c8-bf58c23aaf9f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"ae6e3de9-d37f-4678-8a73-e2a3366220ef",
									true,
								},
								
								{
									"b5191cee-7ca0-6f37-b426-e2ef55afd340",
									true,
								},
							},
							uuid = "e49df7a6-916b-8646-8dd0-581fe29fdbed",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\"",
							name = "Assigned MT",
							uuid = "b5191cee-7ca0-6f37-b426-e2ef55afd340",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "9e1fd6d5-21b3-7da5-bd17-9882aa4a1b26",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "1646a2e4-06e6-0d1b-a345-7454c6095287",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "c13e175a-a0d8-96c3-ad3d-5cf62d7cec63",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "ae6e3de9-d37f-4678-8a73-e2a3366220ef",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P2",
				mechanicTime = 322.5,
				name = "[LPDU Tank] P2 Banish 1 MT Reprisal",
				timeRange = true,
				timelineIndex = 77,
				timerStartOffset = -2,
				uuid = "0dc181fe-d3ed-11a4-acaa-841f3fc155c4",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 16471,
							conditions = 
							{
								
								{
									"69775b10-ad68-2aa7-b8b6-3c7eb0d85753",
									true,
								},
								
								{
									"7e251d88-721a-ddaf-bad8-7740e3ecfb0e",
									true,
								},
							},
							uuid = "b147820a-c892-8296-a394-90060c85061b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16160,
							conditions = 
							{
								
								{
									"937b350c-6c0b-910c-a1e7-de8420832c0f",
									true,
								},
								
								{
									"7e251d88-721a-ddaf-bad8-7740e3ecfb0e",
									true,
								},
							},
							uuid = "1ef27a40-0fd7-140d-827b-fd8a0d5249b1",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\"",
							name = "Assigned MT",
							uuid = "7e251d88-721a-ddaf-bad8-7740e3ecfb0e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "69775b10-ad68-2aa7-b8b6-3c7eb0d85753",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "937b350c-6c0b-910c-a1e7-de8420832c0f",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P2",
				mechanicTime = 322.5,
				name = "[LPDU Tank] P2 Banish 1 MT magic party",
				timeRange = true,
				timelineIndex = 77,
				timerStartOffset = -2,
				uuid = "bc365075-f03b-f4f0-a190-843c732aea40",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"R1\"",
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
		
		{
			data = 
			{
				displayPath = "",
				name = "Spreadsheet tank mitigation ",
				uuid = "5787e461-6f01-e241-962c-a3f610dbc8f0",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P2",
				uuid = "3f820dbd-f54e-52d4-9b44-393a68b79947",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 3540,
							conditions = 
							{
								
								{
									"b4f4cbf5-ff2b-00a1-aa85-b61b818c4893",
									true,
								},
								
								{
									"1254cee6-e60f-c722-91cf-119d1c5c24c3",
									true,
								},
							},
							uuid = "6f4c17ed-abec-5463-8edd-5fd16ba3526f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7388,
							conditions = 
							{
								
								{
									"370a930b-e446-a862-8892-88deca788f49",
									true,
								},
								
								{
									"1254cee6-e60f-c722-91cf-119d1c5c24c3",
									true,
								},
							},
							uuid = "eb5bfe25-7a96-67da-91fa-95c6dd272374",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\"",
							name = "Assigned MT",
							uuid = "1254cee6-e60f-c722-91cf-119d1c5c24c3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "b4f4cbf5-ff2b-00a1-aa85-b61b818c4893",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "370a930b-e446-a862-8892-88deca788f49",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P2",
				mechanicTime = 331.8,
				name = "[LPDU Tank] P2 Rampant MT shield",
				timeRange = true,
				timelineIndex = 80,
				timerStartOffset = -3,
				uuid = "237c7e5b-fc9c-9121-afa6-9dc7cb3003df",
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
				name = "Spreadsheet tank mitigation ",
				uuid = "a3124c37-75c7-c0ab-a2eb-e576e74adb8a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P2",
				uuid = "091a9437-3fdf-f1b7-9aa2-a96452515d9a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 16471,
							conditions = 
							{
								
								{
									"d135603a-d870-c8e3-b3c5-47f8d068b55b",
									true,
								},
								
								{
									"7873531a-bffe-d876-bc2d-0448f9f884bd",
									true,
								},
							},
							uuid = "cd155af8-7fca-e1d8-a52c-b07826f1693d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16160,
							conditions = 
							{
								
								{
									"409997db-4286-82ad-9bfb-752e409d1cc8",
									true,
								},
								
								{
									"7873531a-bffe-d876-bc2d-0448f9f884bd",
									true,
								},
							},
							uuid = "ca975f96-8981-b698-add1-7a1705d8defb",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T2\"",
							name = "Assigned OT",
							uuid = "7873531a-bffe-d876-bc2d-0448f9f884bd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "d135603a-d870-c8e3-b3c5-47f8d068b55b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "409997db-4286-82ad-9bfb-752e409d1cc8",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P2",
				mechanicTime = 360.8,
				name = "[LPDU Tank] P2 Banish 2 OT magic party",
				timeRange = true,
				timelineIndex = 92,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "c7c15a5a-b6d5-c829-8936-7c5f7a549863",
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
				name = "Spreadsheet tank mitigation ",
				uuid = "568b3fd1-26bd-b613-9dd8-1fb526540ffb",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P2",
				uuid = "3bbceb9a-8881-3bdd-ac91-9bbd3f41f74b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"d774910d-7dc5-94c6-8c3e-44722cd07b06",
									true,
								},
								
								{
									"19bc225b-b2b4-a814-b203-97c6673af08d",
									true,
								},
							},
							uuid = "ef23b59d-54f2-47f2-b388-f0084eaefa1f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"fe315a87-05a8-b61e-a17a-0c15a6eb3299",
									true,
								},
								
								{
									"19bc225b-b2b4-a814-b203-97c6673af08d",
									true,
								},
							},
							uuid = "654a0681-083e-7700-b46f-8b1a25c7b93f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"059b92cf-f959-e6d0-a40f-599942d22c4d",
									true,
								},
								
								{
									"19bc225b-b2b4-a814-b203-97c6673af08d",
									true,
								},
							},
							uuid = "cac2bde9-c9e2-4ced-b143-e083daf1d7f3",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"a075f23b-945d-2629-9592-8f62b91d7991",
									true,
								},
								
								{
									"19bc225b-b2b4-a814-b203-97c6673af08d",
									true,
								},
							},
							uuid = "44458303-e895-031f-b2ff-fd67becedeed",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T2\"",
							name = "Assigned OT",
							uuid = "19bc225b-b2b4-a814-b203-97c6673af08d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "d774910d-7dc5-94c6-8c3e-44722cd07b06",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "fe315a87-05a8-b61e-a17a-0c15a6eb3299",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "059b92cf-f959-e6d0-a40f-599942d22c4d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "a075f23b-945d-2629-9592-8f62b91d7991",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P2",
				mechanicTime = 368.8,
				name = "[LPDU Tank] P2 House OT Reprisal",
				timeRange = true,
				timelineIndex = 95,
				timerStartOffset = -3,
				uuid = "82eda2d5-1421-df91-a1bd-06858377ea57",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 3540,
							conditions = 
							{
								
								{
									"11c2d30e-720d-b071-92ff-2c9f7c6eae45",
									true,
								},
								
								{
									"5f8cf753-3b77-3344-a7f0-2389a7ef73e5",
									true,
								},
							},
							uuid = "daa50751-f078-34d8-a56d-7e823e9bdd87",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7388,
							conditions = 
							{
								
								{
									"d8173cf6-074d-37ce-9b89-2e9192c9e2d7",
									true,
								},
								
								{
									"5f8cf753-3b77-3344-a7f0-2389a7ef73e5",
									true,
								},
							},
							uuid = "8d0192e1-46d1-c895-9268-a1227b9338d9",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T2\"",
							name = "Assigned OT",
							uuid = "5f8cf753-3b77-3344-a7f0-2389a7ef73e5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "11c2d30e-720d-b071-92ff-2c9f7c6eae45",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "d8173cf6-074d-37ce-9b89-2e9192c9e2d7",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P2",
				mechanicTime = 368.8,
				name = "[LPDU Tank] P2 House OT shield",
				timeRange = true,
				timelineIndex = 95,
				timerStartOffset = -3,
				uuid = "bcd7a933-47b7-2faa-9cb7-789bbf3587e4",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"M1\"",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"R2\"",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"R2\"",
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
		
		{
			data = 
			{
				displayPath = "",
				name = "Spreadsheet tank mitigation ",
				uuid = "34dd8a9e-0204-01f8-860d-b930c218f85d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P2",
				uuid = "5568ee41-d7e5-78c4-a01c-ac6ec812d5c4",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"bd9d2be8-b060-8fcc-889e-68e0ba9f7eef",
									true,
								},
								
								{
									"c8dff429-199e-c1ec-87f2-fb3bb4fae08e",
									true,
								},
							},
							uuid = "c8b02e56-f1f3-fd7c-a753-008b343ee58f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"a42cea52-62bb-45e1-bffb-f31db68c3b4a",
									true,
								},
								
								{
									"c8dff429-199e-c1ec-87f2-fb3bb4fae08e",
									true,
								},
							},
							uuid = "0df8df9a-c593-a9dd-aa5e-0d6720cceb22",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"4e2032f6-8f69-9641-8afc-7f4f21470c67",
									true,
								},
								
								{
									"c8dff429-199e-c1ec-87f2-fb3bb4fae08e",
									true,
								},
							},
							uuid = "5544971b-3771-5f3e-b511-7c75253f7e4b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"123927cb-a01d-e508-8764-4d8887d3d0de",
									true,
								},
								
								{
									"c8dff429-199e-c1ec-87f2-fb3bb4fae08e",
									true,
								},
							},
							uuid = "0a6b1435-6f49-87f6-925a-a27247aa0332",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\"",
							name = "Assigned MT",
							uuid = "c8dff429-199e-c1ec-87f2-fb3bb4fae08e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "bd9d2be8-b060-8fcc-889e-68e0ba9f7eef",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "a42cea52-62bb-45e1-bffb-f31db68c3b4a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "4e2032f6-8f69-9641-8afc-7f4f21470c67",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "123927cb-a01d-e508-8764-4d8887d3d0de",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P2",
				mechanicTime = 387.8,
				name = "[LPDU Tank] P2 Absolute MT Reprisal",
				timeRange = true,
				timelineIndex = 99,
				timerStartOffset = -3,
				uuid = "5b1080bb-0b46-be0f-b2a9-245b3611f810",
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
		
		{
			data = 
			{
				displayPath = "",
				name = "Spreadsheet tank mitigation ",
				uuid = "2e2bb5f5-bb78-35b9-af9e-1ae214d52c3b",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P2",
				uuid = "8e00885c-aed1-4b36-8fe4-6255b115964a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 3540,
							conditions = 
							{
								
								{
									"c690840c-368d-d900-94a4-39da161942db",
									true,
								},
								
								{
									"81696ca9-d6c0-2f0e-9f65-8e7d8cf5015f",
									true,
								},
								
								{
									"857ffa51-7fca-3b50-840d-beddddcebfba",
									true,
								},
								
								{
									"1e2e1ba5-a237-cc2a-8bed-3345909ad273",
									true,
								},
								
								{
									"35e26e5d-4bd8-5872-8786-d8838eb0b622",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "6be90a38-afaf-5cd6-8b1e-9fcae6e9c89d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7388,
							conditions = 
							{
								
								{
									"c690840c-368d-d900-94a4-39da161942db",
									true,
								},
								
								{
									"81696ca9-d6c0-2f0e-9f65-8e7d8cf5015f",
									true,
								},
								
								{
									"857ffa51-7fca-3b50-840d-beddddcebfba",
									true,
								},
								
								{
									"bce96466-204a-a546-90af-17ed73cc6450",
									true,
								},
								
								{
									"35e26e5d-4bd8-5872-8786-d8838eb0b622",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "f6d48466-0e02-d328-ae49-0a0e085cd73d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16471,
							conditions = 
							{
								
								{
									"c690840c-368d-d900-94a4-39da161942db",
									true,
								},
								
								{
									"81696ca9-d6c0-2f0e-9f65-8e7d8cf5015f",
									true,
								},
								
								{
									"857ffa51-7fca-3b50-840d-beddddcebfba",
									true,
								},
								
								{
									"073c8293-9850-6b4b-a25e-69208b87db0a",
									true,
								},
								
								{
									"35e26e5d-4bd8-5872-8786-d8838eb0b622",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "055ed40c-51b5-1fce-adf0-a70da22461dc",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16160,
							conditions = 
							{
								
								{
									"c690840c-368d-d900-94a4-39da161942db",
									true,
								},
								
								{
									"81696ca9-d6c0-2f0e-9f65-8e7d8cf5015f",
									true,
								},
								
								{
									"857ffa51-7fca-3b50-840d-beddddcebfba",
									true,
								},
								
								{
									"9bc66d50-38b7-afb8-99c1-282d60ec6102",
									true,
								},
								
								{
									"35e26e5d-4bd8-5872-8786-d8838eb0b622",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "1666fb9b-371a-7ae7-8433-44755b316b35",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T2\"",
							name = "Assigned OT",
							uuid = "35e26e5d-4bd8-5872-8786-d8838eb0b622",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 9358,
							name = "crystal",
							uuid = "c690840c-368d-d900-94a4-39da161942db",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							comparator = 3,
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventIntValue = 1,
							name = "index",
							uuid = "81696ca9-d6c0-2f0e-9f65-8e7d8cf5015f",
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
							eventIntValue = 72,
							name = "dead",
							uuid = "857ffa51-7fca-3b50-840d-beddddcebfba",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "1e2e1ba5-a237-cc2a-8bed-3345909ad273",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "bce96466-204a-a546-90af-17ed73cc6450",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "073c8293-9850-6b4b-a25e-69208b87db0a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "9bc66d50-38b7-afb8-99c1-282d60ec6102",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P2",
				eventType = 23,
				mechanicTime = 500,
				name = "[LPDU Tank] P2 crystal death OT party",
				timeRange = true,
				timelineIndex = 119,
				timerEndOffset = -10,
				timerStartOffset = -82,
				uuid = "69eb6b37-4624-ca87-8816-d1c58e2672e6",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7385,
							conditions = 
							{
								
								{
									"3415154c-abba-92ca-8432-876d7e895885",
									true,
								},
								
								{
									"76bf4893-4e19-97f6-9f70-f697f827dcd9",
									true,
								},
								
								{
									"26eb84d7-9e46-eeb5-8e73-5547e211666d",
									true,
								},
								
								{
									"7cef9b49-cb86-f00a-8539-c0656384e910",
									true,
								},
								
								{
									"3c1fbe28-e8b0-124b-80ff-75262ff409cb",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "41fbabef-afec-3d3a-afef-f0fc682b69db",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "Assigned BOTH",
							uuid = "3c1fbe28-e8b0-124b-80ff-75262ff409cb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgOptionType = 2,
							eventEntityContentID = 9358,
							name = "crystal",
							uuid = "3415154c-abba-92ca-8432-876d7e895885",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Event",
							comparator = 3,
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventIntValue = 1,
							name = "index",
							uuid = "76bf4893-4e19-97f6-9f70-f697f827dcd9",
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
							eventIntValue = 72,
							name = "dead",
							uuid = "26eb84d7-9e46-eeb5-8e73-5547e211666d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "7cef9b49-cb86-f00a-8539-c0656384e910",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P2",
				eventType = 23,
				mechanicTime = 500,
				name = "[LPDU Tank] P2 crystal death PLD wings",
				timeRange = true,
				timelineIndex = 119,
				timerEndOffset = -10,
				timerStartOffset = -82,
				uuid = "91d85594-ba67-c751-ae7b-d101a005f403",
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
				name = "Spreadsheet tank mitigation ",
				uuid = "1fa2f25a-0d4c-083d-bebe-56e491ad8751",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P3",
				uuid = "4b936af0-ec1a-ff14-9efc-78a8379af277",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"94e9526a-b2ce-38a9-84f0-bd8025b5b5ea",
									true,
								},
								
								{
									"f69d5890-a826-22bc-b13b-06b061fa54b1",
									true,
								},
							},
							uuid = "8abc50f5-eb31-b880-8e9d-f18c62c76fa2",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"9ad08c65-3603-756a-aaab-cc3e301de5dd",
									true,
								},
								
								{
									"f69d5890-a826-22bc-b13b-06b061fa54b1",
									true,
								},
							},
							uuid = "53a78afc-528e-a89f-bdee-5b40f8a5c54d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"2bbf7d91-a7d7-16eb-8cef-eb103aa262d1",
									true,
								},
								
								{
									"f69d5890-a826-22bc-b13b-06b061fa54b1",
									true,
								},
							},
							uuid = "d957b45b-631a-ca9c-b750-c90c481c4ac0",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"a10f7098-8e6c-2227-9031-f1213fe2daf9",
									true,
								},
								
								{
									"f69d5890-a826-22bc-b13b-06b061fa54b1",
									true,
								},
							},
							uuid = "a400aeb7-5b6a-8161-b760-b9da4995e0ff",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\"",
							name = "Assigned MT",
							uuid = "f69d5890-a826-22bc-b13b-06b061fa54b1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "94e9526a-b2ce-38a9-84f0-bd8025b5b5ea",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "9ad08c65-3603-756a-aaab-cc3e301de5dd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "2bbf7d91-a7d7-16eb-8cef-eb103aa262d1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "a10f7098-8e6c-2227-9031-f1213fe2daf9",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P3",
				mechanicTime = 518.3,
				name = "[LPDU Tank] P3 Judgment MT Reprisal",
				timeRange = true,
				timelineIndex = 121,
				timerEndOffset = 2,
				timerStartOffset = -1,
				uuid = "0af05303-1294-5013-b9a4-08e589b038c7",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"M1\"",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"R1\"",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"R2\"",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"R1\"",
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
		
		{
			data = 
			{
				displayPath = "",
				name = "Spreadsheet tank mitigation ",
				uuid = "80ad386c-206d-66db-8d93-68e03bb56193",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P3",
				uuid = "40660642-8e86-c8a5-a368-f62c3cae9736",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"67cced1d-1c8d-0865-9ca9-4db1fe43f32b",
									true,
								},
								
								{
									"f979abed-f807-f674-ae94-cfdf64709484",
									true,
								},
							},
							uuid = "864413b3-32f7-5b3d-956e-40b65133279b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"befd9055-df08-7c21-a7c0-dbc95463c07a",
									true,
								},
								
								{
									"f979abed-f807-f674-ae94-cfdf64709484",
									true,
								},
							},
							uuid = "67ef8dd3-6f5a-fcc3-bd6f-6620f80d3fc1",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"bcd4823f-4c47-c553-8e61-05057cb2886d",
									true,
								},
								
								{
									"f979abed-f807-f674-ae94-cfdf64709484",
									true,
								},
							},
							uuid = "7ee8c66d-70bf-846a-91fb-76e5791365a3",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"6c1496f6-28df-abd4-9de9-7576f191a72e",
									true,
								},
								
								{
									"f979abed-f807-f674-ae94-cfdf64709484",
									true,
								},
							},
							uuid = "fb2f611d-e4d6-b12f-baa3-4647e40f34b5",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T2\"",
							name = "Assigned OT",
							uuid = "f979abed-f807-f674-ae94-cfdf64709484",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "67cced1d-1c8d-0865-9ca9-4db1fe43f32b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "befd9055-df08-7c21-a7c0-dbc95463c07a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "bcd4823f-4c47-c553-8e61-05057cb2886d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "6c1496f6-28df-abd4-9de9-7576f191a72e",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P3",
				mechanicTime = 544.2,
				name = "[LPDU Tank] P3 Fire 10 OT Reprisal",
				timeRange = true,
				timelineIndex = 126,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "e208a5b1-b35e-454d-918b-fe018cde9783",
				version = 2,
			},
		},
	},
	[128] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Spreadsheet tank mitigation ",
				uuid = "378894ac-2908-35ad-8f71-804aa4a5ea11",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P3",
				uuid = "d8220a65-bfb3-c661-af82-c30acc4b646d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 16471,
							conditions = 
							{
								
								{
									"160032f5-664b-b39c-ae67-6b216a57685a",
									true,
								},
								
								{
									"8dd851b0-9e1d-898a-8cb5-b9bef453fe92",
									true,
								},
							},
							uuid = "1e02f8b6-0a07-5a57-b227-b5ea2816cc6c",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16160,
							conditions = 
							{
								
								{
									"7ccefdde-4b50-1056-9981-26dd080e3ed4",
									true,
								},
								
								{
									"8dd851b0-9e1d-898a-8cb5-b9bef453fe92",
									true,
								},
							},
							uuid = "d4c06039-f488-0dad-9d1b-312be8078329",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\"",
							name = "Assigned MT",
							uuid = "8dd851b0-9e1d-898a-8cb5-b9bef453fe92",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "160032f5-664b-b39c-ae67-6b216a57685a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "7ccefdde-4b50-1056-9981-26dd080e3ed4",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P3",
				mechanicTime = 554,
				name = "[LPDU Tank] P3 Fire 20 MT magic party",
				timeRange = true,
				timelineIndex = 128,
				timerStartOffset = -3,
				uuid = "9bb6c888-44e2-cc5d-bcb2-59e3d6f65a3b",
				version = 2,
			},
		},
	},
	[132] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Spreadsheet tank mitigation ",
				uuid = "85d2010c-0ef5-d697-a3b5-b27b6dea1220",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P3",
				uuid = "c650a244-4372-b80b-b0f7-e8c77bb6d324",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 3540,
							conditions = 
							{
								
								{
									"78afc05a-5951-e04d-865b-7f7e699332e9",
									true,
								},
								
								{
									"eebc5d35-5f31-340d-bcae-63c62d52babf",
									true,
								},
							},
							uuid = "7db5987b-63df-88b7-9301-a0c609f7287f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7388,
							conditions = 
							{
								
								{
									"dce28ba4-5c94-d57a-ac98-6357115f7deb",
									true,
								},
								
								{
									"eebc5d35-5f31-340d-bcae-63c62d52babf",
									true,
								},
							},
							uuid = "cc4f37ca-08de-e3d1-86ea-b36dd76bc215",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\"",
							name = "Assigned MT",
							uuid = "eebc5d35-5f31-340d-bcae-63c62d52babf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "78afc05a-5951-e04d-865b-7f7e699332e9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "dce28ba4-5c94-d57a-ac98-6357115f7deb",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P3",
				mechanicTime = 563.6,
				name = "[LPDU Tank] P3 Fire 30 MT shield",
				timeRange = true,
				timelineIndex = 132,
				timerStartOffset = -3,
				uuid = "29307b14-19df-4b93-9106-40206451b7dc",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"M2\"",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"R2\"",
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
		
		{
			data = 
			{
				displayPath = "",
				name = "Spreadsheet tank mitigation ",
				uuid = "ad305807-961c-892c-966b-9a0cd3c6281f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P3",
				uuid = "ea9d47cd-ac38-455f-920e-3ee2a5306693",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"0bb72b25-28d0-9f4d-8c11-4762d09fb70f",
									true,
								},
								
								{
									"be12eaff-8528-0078-b4a2-2e168372068c",
									true,
								},
							},
							uuid = "4f888165-65f7-5704-976f-233a21c4bd9e",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"5f04152f-ac83-d8e5-a490-54b3ec91ec75",
									true,
								},
								
								{
									"be12eaff-8528-0078-b4a2-2e168372068c",
									true,
								},
							},
							uuid = "4e014f2a-e2bd-86cd-b847-588ae45a4b01",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"cbf7a292-6d22-bfbe-a612-7ef34602bbe8",
									true,
								},
								
								{
									"be12eaff-8528-0078-b4a2-2e168372068c",
									true,
								},
							},
							uuid = "d7f94e36-66c1-5a6b-9d9f-90bec662a1b5",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"4e4a259a-1af2-12fa-9907-ca6d93149b44",
									true,
								},
								
								{
									"be12eaff-8528-0078-b4a2-2e168372068c",
									true,
								},
							},
							uuid = "fbe0379e-2825-b16f-bf6a-2c844662639e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\"",
							name = "Assigned MT",
							uuid = "be12eaff-8528-0078-b4a2-2e168372068c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "0bb72b25-28d0-9f4d-8c11-4762d09fb70f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "5f04152f-ac83-d8e5-a490-54b3ec91ec75",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "cbf7a292-6d22-bfbe-a612-7ef34602bbe8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "4e4a259a-1af2-12fa-9907-ca6d93149b44",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P3",
				mechanicTime = 578.6,
				name = "[LPDU Tank] P3 Shell MT Reprisal",
				timeRange = true,
				timelineIndex = 138,
				timerStartOffset = -3,
				uuid = "e4c106b6-4aaf-9915-b55c-32f67f9523c7",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 16471,
							conditions = 
							{
								
								{
									"e6b4fc4d-3101-ea06-9822-f08cfaff2187",
									true,
								},
								
								{
									"317270fc-2599-d448-a603-f6dde7a1febf",
									true,
								},
							},
							uuid = "32ec9d40-33df-9339-b722-5c1bbd630cc7",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16160,
							conditions = 
							{
								
								{
									"5f29cf98-d1da-e35c-84de-fc709197fdaf",
									true,
								},
								
								{
									"317270fc-2599-d448-a603-f6dde7a1febf",
									true,
								},
							},
							uuid = "abb2fb6d-77e2-9aae-bae2-9ddeb491ae19",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T2\"",
							name = "Assigned OT",
							uuid = "317270fc-2599-d448-a603-f6dde7a1febf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "e6b4fc4d-3101-ea06-9822-f08cfaff2187",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "5f29cf98-d1da-e35c-84de-fc709197fdaf",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P3",
				mechanicTime = 578.6,
				name = "[LPDU Tank] P3 Shell OT magic party",
				timeRange = true,
				timelineIndex = 138,
				timerStartOffset = -3,
				uuid = "bcd5cea7-ee62-87a7-a0b3-4ae7f1ffe79f",
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
				name = "Spreadsheet tank mitigation ",
				uuid = "b00172a5-74f3-0b4a-8186-2b3646abbcab",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P3",
				uuid = "2abd10ed-521a-8ef0-bee5-e7850d5b17e3",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 3540,
							conditions = 
							{
								
								{
									"75f90b47-34c0-e604-9028-db47bdd2c498",
									true,
								},
								
								{
									"08124e0c-c6d0-3137-b899-f530468321ce",
									true,
								},
							},
							uuid = "87c2b1be-42d5-1d06-9689-a98fa2663f8f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7388,
							conditions = 
							{
								
								{
									"8334152a-b1f1-aaac-acad-6724755626fd",
									true,
								},
								
								{
									"08124e0c-c6d0-3137-b899-f530468321ce",
									true,
								},
							},
							uuid = "10270c31-7e73-e963-9fe9-cb9f1203f275",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T2\"",
							name = "Assigned OT",
							uuid = "08124e0c-c6d0-3137-b899-f530468321ce",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "75f90b47-34c0-e604-9028-db47bdd2c498",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "8334152a-b1f1-aaac-acad-6724755626fd",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P3",
				mechanicTime = 587.1,
				name = "[LPDU Tank] P3 Shockwave 1 OT shield",
				timeRange = true,
				timelineIndex = 139,
				timerStartOffset = -3,
				uuid = "2045302b-c138-cf0e-b366-70bae7917e5f",
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
				name = "Spreadsheet tank mitigation ",
				uuid = "991161ef-b540-9ce6-9c6b-56dec3e6f87a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P3",
				uuid = "d9adec7d-1687-acc5-8e9c-04fe901e48ab",
			},
			objectType = "folder",
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
							conditions = 
							{
								
								{
									"3c1edde9-7087-397c-964f-579d8fbd4d29",
									true,
								},
								
								{
									"85cf779a-3e90-2f5f-b4c3-d685c0c93557",
									true,
								},
								
								{
									"0f81cb1b-9e4c-008c-b4b0-9d1e760367e1",
									true,
								},
							},
							uuid = "9d8ac5c9-3879-e36e-aca3-d37bb1196dad",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							conditions = 
							{
								
								{
									"5551addf-7220-4fea-8710-1595d8cd08c2",
									true,
								},
								
								{
									"85cf779a-3e90-2f5f-b4c3-d685c0c93557",
									true,
								},
								
								{
									"0f81cb1b-9e4c-008c-b4b0-9d1e760367e1",
									true,
								},
							},
							uuid = "ce9887c1-e205-f480-bdff-1a4ea512eb49",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							conditions = 
							{
								
								{
									"0728c841-6ddf-2fdc-8521-1a8d32a70a12",
									true,
								},
								
								{
									"85cf779a-3e90-2f5f-b4c3-d685c0c93557",
									true,
								},
								
								{
									"0f81cb1b-9e4c-008c-b4b0-9d1e760367e1",
									true,
								},
							},
							uuid = "3c40f2c1-e269-e3c2-a6e9-e64737d069b3",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							conditions = 
							{
								
								{
									"d77235e6-8594-cd8a-b7a9-c0ce9c8999a8",
									true,
								},
								
								{
									"85cf779a-3e90-2f5f-b4c3-d685c0c93557",
									true,
								},
								
								{
									"0f81cb1b-9e4c-008c-b4b0-9d1e760367e1",
									true,
								},
							},
							uuid = "fd4e09a2-27a2-4c29-9ed6-878d7208491f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==((Settings.FFXIVMINION.LPDU_FRU_HaloTank or \"MT\")==\"MT\" and \"T1\" or \"T2\")",
							name = "Assigned HALO",
							uuid = "85cf779a-3e90-2f5f-b4c3-d685c0c93557",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "0f81cb1b-9e4c-008c-b4b0-9d1e760367e1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "3c1edde9-7087-397c-964f-579d8fbd4d29",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "5551addf-7220-4fea-8710-1595d8cd08c2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "0728c841-6ddf-2fdc-8521-1a8d32a70a12",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "d77235e6-8594-cd8a-b7a9-c0ce9c8999a8",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P3",
				mechanicTime = 595.4,
				name = "[LPDU Tank] P3 Halo owner rampart",
				timeRange = true,
				timelineIndex = 140,
				timerEndOffset = -7,
				timerStartOffset = -11,
				uuid = "87127699-20f6-0521-ae52-ec10b98925fb",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 36920,
							conditions = 
							{
								
								{
									"1d666dc1-7c27-4790-9450-800787719438",
									true,
								},
								
								{
									"52a537e2-1468-ff6e-8bb5-ffb32b4610df",
									true,
								},
								
								{
									"e1272f3c-e603-77fb-b5af-aeab655cde14",
									true,
								},
							},
							uuid = "a17f4e2a-789b-155a-b5ad-8e66d6f9525c",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 36923,
							conditions = 
							{
								
								{
									"8d353b40-4782-a83c-a239-7f351c03a5cb",
									true,
								},
								
								{
									"52a537e2-1468-ff6e-8bb5-ffb32b4610df",
									true,
								},
								
								{
									"e1272f3c-e603-77fb-b5af-aeab655cde14",
									true,
								},
							},
							uuid = "f74a13eb-70d5-8568-8a9d-f1e1efaf42ac",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 36927,
							conditions = 
							{
								
								{
									"ade75df8-ae28-2dc7-b6ca-786c7a87484d",
									true,
								},
								
								{
									"52a537e2-1468-ff6e-8bb5-ffb32b4610df",
									true,
								},
								
								{
									"e1272f3c-e603-77fb-b5af-aeab655cde14",
									true,
								},
							},
							uuid = "6936c3b8-4146-dbf7-b379-5545047efe89",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 36935,
							conditions = 
							{
								
								{
									"735b8bc6-5d36-08fe-84df-879cdc5f75fc",
									true,
								},
								
								{
									"52a537e2-1468-ff6e-8bb5-ffb32b4610df",
									true,
								},
								
								{
									"e1272f3c-e603-77fb-b5af-aeab655cde14",
									true,
								},
							},
							uuid = "2748f5a4-c697-c948-bb82-6178c32cc08f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==((Settings.FFXIVMINION.LPDU_FRU_HaloTank or \"MT\")==\"MT\" and \"T1\" or \"T2\")",
							name = "Assigned HALO",
							uuid = "52a537e2-1468-ff6e-8bb5-ffb32b4610df",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "e1272f3c-e603-77fb-b5af-aeab655cde14",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "1d666dc1-7c27-4790-9450-800787719438",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "8d353b40-4782-a83c-a239-7f351c03a5cb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "ade75df8-ae28-2dc7-b6ca-786c7a87484d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "735b8bc6-5d36-08fe-84df-879cdc5f75fc",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P3",
				mechanicTime = 595.4,
				name = "[LPDU Tank] P3 Halo owner long",
				timeRange = true,
				timelineIndex = 140,
				timerEndOffset = -5,
				timerStartOffset = -9,
				uuid = "1cc06f8a-79cd-e574-83e9-9d576de160f8",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 22,
							conditions = 
							{
								
								{
									"36464a01-4fd9-e9d0-a669-d8a44c7b1334",
									true,
								},
								
								{
									"daa32ed4-690d-ec03-b826-0f6c38a995ed",
									true,
								},
								
								{
									"163a72fa-fc37-d2da-a55d-beeb8fd108b7",
									true,
								},
							},
							uuid = "a6b15cb5-3268-e706-95dc-9a912813ccb8",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 40,
							conditions = 
							{
								
								{
									"3ee954f1-947d-6555-adf3-c2b71dc7e200",
									true,
								},
								
								{
									"daa32ed4-690d-ec03-b826-0f6c38a995ed",
									true,
								},
								
								{
									"163a72fa-fc37-d2da-a55d-beeb8fd108b7",
									true,
								},
							},
							uuid = "d2f6f7b8-6570-f4e8-b1d6-3e0133ae722e",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 3634,
							conditions = 
							{
								
								{
									"17b3a5d2-4dd4-1e88-a267-3e1a14af3334",
									true,
								},
								
								{
									"daa32ed4-690d-ec03-b826-0f6c38a995ed",
									true,
								},
								
								{
									"163a72fa-fc37-d2da-a55d-beeb8fd108b7",
									true,
								},
							},
							uuid = "bcdad49f-4370-95af-8e85-caad034509f1",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25754,
							conditions = 
							{
								
								{
									"17b3a5d2-4dd4-1e88-a267-3e1a14af3334",
									true,
								},
								
								{
									"daa32ed4-690d-ec03-b826-0f6c38a995ed",
									true,
								},
								
								{
									"163a72fa-fc37-d2da-a55d-beeb8fd108b7",
									true,
								},
							},
							uuid = "205ad550-0d78-b07a-9000-af22676a4267",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16140,
							conditions = 
							{
								
								{
									"6f541bd7-403b-5504-a768-ccf9963ad38f",
									true,
								},
								
								{
									"daa32ed4-690d-ec03-b826-0f6c38a995ed",
									true,
								},
								
								{
									"163a72fa-fc37-d2da-a55d-beeb8fd108b7",
									true,
								},
							},
							uuid = "d66c16a3-03ea-3188-9863-fcf1d89d7beb",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==((Settings.FFXIVMINION.LPDU_FRU_HaloTank or \"MT\")==\"MT\" and \"T1\" or \"T2\")",
							name = "Assigned HALO",
							uuid = "daa32ed4-690d-ec03-b826-0f6c38a995ed",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "163a72fa-fc37-d2da-a55d-beeb8fd108b7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "36464a01-4fd9-e9d0-a669-d8a44c7b1334",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "3ee954f1-947d-6555-adf3-c2b71dc7e200",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "17b3a5d2-4dd4-1e88-a267-3e1a14af3334",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "6f541bd7-403b-5504-a768-ccf9963ad38f",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P3",
				mechanicTime = 595.4,
				name = "[LPDU Tank] P3 Halo owner extra",
				timeRange = true,
				timelineIndex = 140,
				timerEndOffset = -2,
				timerStartOffset = -6,
				uuid = "973b63ea-92a9-8b1b-b129-5d7302f12166",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 25746,
							conditions = 
							{
								
								{
									"2d6b05ca-e96a-3167-a20d-a93564a8355c",
									true,
								},
								
								{
									"1bbb4565-eaa5-232c-9fa8-5eb6b67645d5",
									true,
								},
								
								{
									"a10ed49b-384c-f68a-8ef6-dd649554a10b",
									true,
								},
							},
							uuid = "b758089a-c672-e96e-83ba-209f294a5d79",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25751,
							conditions = 
							{
								
								{
									"a23d4e21-8513-4442-a4f7-6bc927c2f69f",
									true,
								},
								
								{
									"1bbb4565-eaa5-232c-9fa8-5eb6b67645d5",
									true,
								},
								
								{
									"a10ed49b-384c-f68a-8ef6-dd649554a10b",
									true,
								},
							},
							uuid = "f9f85e3b-bdeb-3b28-8363-5bd7b4f57489",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7393,
							conditions = 
							{
								
								{
									"366af4c4-7832-6c63-a7bf-3fd8751df6c3",
									true,
								},
								
								{
									"1bbb4565-eaa5-232c-9fa8-5eb6b67645d5",
									true,
								},
								
								{
									"a10ed49b-384c-f68a-8ef6-dd649554a10b",
									true,
								},
							},
							uuid = "974ad90c-3409-a0a3-9f0c-046d894e0f78",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25758,
							conditions = 
							{
								
								{
									"fb276a39-cdb7-11ad-92af-42f8a2abbff4",
									true,
								},
								
								{
									"1bbb4565-eaa5-232c-9fa8-5eb6b67645d5",
									true,
								},
								
								{
									"a10ed49b-384c-f68a-8ef6-dd649554a10b",
									true,
								},
							},
							uuid = "48569a51-fde9-bdb8-b033-016e50894e31",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==((Settings.FFXIVMINION.LPDU_FRU_HaloTank or \"MT\")==\"MT\" and \"T1\" or \"T2\")",
							name = "Assigned HALO",
							uuid = "1bbb4565-eaa5-232c-9fa8-5eb6b67645d5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "a10ed49b-384c-f68a-8ef6-dd649554a10b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "2d6b05ca-e96a-3167-a20d-a93564a8355c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "a23d4e21-8513-4442-a4f7-6bc927c2f69f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "366af4c4-7832-6c63-a7bf-3fd8751df6c3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "fb276a39-cdb7-11ad-92af-42f8a2abbff4",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P3",
				mechanicTime = 595.4,
				name = "[LPDU Tank] P3 Halo owner short",
				timeRange = true,
				timelineIndex = 140,
				timerStartOffset = -3,
				uuid = "ae72dc9f-adf6-5784-acdf-845a2d78d9f6",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7382,
							conditions = 
							{
								
								{
									"67b3c5c3-3106-7aee-959c-f1840930ad91",
									true,
								},
								
								{
									"442dc511-0101-67df-a1d5-78fe5e18937e",
									true,
								},
								
								{
									"a89b9e00-b6fc-18a4-88be-4356c33ee434",
									true,
								},
							},
							targetType = "Other Tank",
							uuid = "247804f2-d9dd-ee51-9b86-3215ae4f59f3",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16464,
							conditions = 
							{
								
								{
									"dfc4409b-f4e2-763c-ace9-140c88d22dfb",
									true,
								},
								
								{
									"442dc511-0101-67df-a1d5-78fe5e18937e",
									true,
								},
								
								{
									"a89b9e00-b6fc-18a4-88be-4356c33ee434",
									true,
								},
							},
							targetType = "Other Tank",
							uuid = "d17f9ab8-ba24-6af0-ac05-f57f30bb3c82",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7393,
							conditions = 
							{
								
								{
									"618b7c9d-e988-f4b5-b8cd-77910a490238",
									true,
								},
								
								{
									"442dc511-0101-67df-a1d5-78fe5e18937e",
									true,
								},
								
								{
									"a89b9e00-b6fc-18a4-88be-4356c33ee434",
									true,
								},
							},
							targetType = "Other Tank",
							uuid = "63c82e08-ce02-4542-8d12-ed472eff6c38",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25758,
							conditions = 
							{
								
								{
									"6f5da329-aa1c-957b-a7bb-3b99c31e8947",
									true,
								},
								
								{
									"442dc511-0101-67df-a1d5-78fe5e18937e",
									true,
								},
								
								{
									"a89b9e00-b6fc-18a4-88be-4356c33ee434",
									true,
								},
							},
							targetType = "Other Tank",
							uuid = "2f1dfe2b-aea5-814e-9d2f-0ee8d3133b82",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot~=((Settings.FFXIVMINION.LPDU_FRU_HaloTank or \"MT\")==\"MT\" and \"T1\" or \"T2\") and (slot==\"T1\" or slot==\"T2\")",
							name = "Assigned HALO_OTHER",
							uuid = "442dc511-0101-67df-a1d5-78fe5e18937e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "a89b9e00-b6fc-18a4-88be-4356c33ee434",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "67b3c5c3-3106-7aee-959c-f1840930ad91",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "dfc4409b-f4e2-763c-ace9-140c88d22dfb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "618b7c9d-e988-f4b5-b8cd-77910a490238",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "6f5da329-aa1c-957b-a7bb-3b99c31e8947",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P3",
				mechanicTime = 595.4,
				name = "[LPDU Tank] P3 Halo other support",
				timeRange = true,
				timelineIndex = 140,
				timerStartOffset = -3,
				uuid = "dd6b46cd-5b54-8123-affa-264f74c55e8d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Shared tank utility",
				uuid = "3db328fd-e8f1-4639-8a45-ca1d19e9e4b1",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7537,
							conditions = 
							{
								
								{
									"3905c8e6-4c59-3214-b032-5fa200ddf4b3",
									true,
								},
								
								{
									"2b5b6efc-bc11-91e4-9452-216252ba2303",
									true,
								},
								
								{
									"75e75dc4-80f8-2040-a861-e2d580779bda",
									true,
								},
								
								{
									"772d0384-fb49-feda-87e7-30cf4b950f8c",
									true,
								},
							},
							targetType = "Other Tank",
							uuid = "75be06f1-7f02-60b3-b7e0-92fbb789a62f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
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
							},
							uuid = "2b5b6efc-bc11-91e4-9452-216252ba2303",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\"",
							name = "Assigned MT",
							uuid = "75e75dc4-80f8-2040-a861-e2d580779bda",
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
							name = "Provoke event",
							spellIDList = 
							{
								7533,
							},
							uuid = "3905c8e6-4c59-3214-b032-5fa200ddf4b3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nreturn eventArgs.entityID==r.idOf(\"T2\")",
							name = "Assigned OT used Provoke",
							uuid = "772d0384-fb49-feda-87e7-30cf4b950f8c",
							version = 3,
						},
					},
				},
				displayPath = "Shared tank utility",
				eventType = 2,
				mechanicTime = 595.4,
				name = "[LPDU Tank] MT Shirk after OT Provoke",
				timeRange = true,
				timelineIndex = 140,
				timerEndOffset = 20,
				timerStartOffset = -10,
				uuid = "d8cc1577-0e70-716e-850d-c8b870ceb476",
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
				name = "Shared tank utility",
				uuid = "73dbedd1-80c1-f965-af9c-b1babc950b56",
			},
			objectType = "folder",
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
							conditions = 
							{
								
								{
									"d1ec2481-b3fb-74bd-a826-95dfc989c4bc",
									true,
								},
								
								{
									"60846c58-da39-44d9-9d21-adaa253fdc8e",
									true,
								},
							},
							uuid = "52544608-2c6a-0553-ae33-0660a581108f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
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
							},
							uuid = "d1ec2481-b3fb-74bd-a826-95dfc989c4bc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "Assigned tanks",
							uuid = "60846c58-da39-44d9-9d21-adaa253fdc8e",
							version = 3,
						},
					},
				},
				displayPath = "Shared tank utility",
				mechanicTime = 635.4,
				name = "[LPDU Tank] Sprint",
				timeRange = true,
				timelineIndex = 148,
				timerEndOffset = -4,
				timerStartOffset = -7,
				uuid = "ab38ca03-c06c-f25f-b7ee-eaccabde486b",
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
				name = "Spreadsheet tank mitigation ",
				uuid = "8caf65b1-1aad-0a5a-b51b-cdf200c0420d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P3",
				uuid = "453cf371-4a04-bd0e-ab69-723478e5723f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"9ddf042c-34e3-fc9d-9645-7ec6c21d2dcf",
									true,
								},
								
								{
									"6edfaeca-5acc-6e12-abc5-03b95f5656b9",
									true,
								},
							},
							uuid = "b72941c7-6af4-4fc9-831a-9eb4dfb15146",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"682562ce-3812-a38c-b312-371b84b9900b",
									true,
								},
								
								{
									"6edfaeca-5acc-6e12-abc5-03b95f5656b9",
									true,
								},
							},
							uuid = "69d8dc6c-3916-33d9-8813-ab906604bf96",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"d0afed44-8b1e-f5d5-a834-83c9bc292a0f",
									true,
								},
								
								{
									"6edfaeca-5acc-6e12-abc5-03b95f5656b9",
									true,
								},
							},
							uuid = "ad4f2995-3138-655f-ad67-8c4d0e48e668",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"105e5a35-966c-b793-b70d-d4bc9dccc76c",
									true,
								},
								
								{
									"6edfaeca-5acc-6e12-abc5-03b95f5656b9",
									true,
								},
							},
							uuid = "d0cef4ad-e8ad-371c-9954-27f47703410d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\"",
							name = "Assigned MT",
							uuid = "6edfaeca-5acc-6e12-abc5-03b95f5656b9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "9ddf042c-34e3-fc9d-9645-7ec6c21d2dcf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "682562ce-3812-a38c-b312-371b84b9900b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "d0afed44-8b1e-f5d5-a834-83c9bc292a0f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "105e5a35-966c-b793-b70d-d4bc9dccc76c",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P3",
				mechanicTime = 642.1,
				name = "[LPDU Tank] P3 Water 2 MT Reprisal",
				timeRange = true,
				timelineIndex = 149,
				timerStartOffset = -3,
				uuid = "da95dce1-8a87-5776-a479-f6f3c9ad98d5",
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
				name = "Spreadsheet tank mitigation ",
				uuid = "2ef20e61-4f54-969e-8044-733115feda55",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P3",
				uuid = "a31bd0f4-1de6-4d98-9682-ad19e1d5e8ed",
			},
			objectType = "folder",
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
							conditions = 
							{
								
								{
									"b6a045b5-fbdc-25af-9626-0b189501f2e2",
									true,
								},
								
								{
									"8cef1f42-6510-0697-a5b9-72483dbfde02",
									true,
								},
								
								{
									"74caf4cc-81e9-5dce-8471-afe083827b72",
									true,
								},
							},
							uuid = "645694fa-2787-1429-8623-ea4be91e6f9d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							conditions = 
							{
								
								{
									"40640210-d000-9576-a188-c7a746ac1312",
									true,
								},
								
								{
									"8cef1f42-6510-0697-a5b9-72483dbfde02",
									true,
								},
								
								{
									"74caf4cc-81e9-5dce-8471-afe083827b72",
									true,
								},
							},
							uuid = "6f534d32-19cb-fb39-bade-ff5e361f94e0",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							conditions = 
							{
								
								{
									"edba4346-60bf-5489-b39f-8531468b0053",
									true,
								},
								
								{
									"8cef1f42-6510-0697-a5b9-72483dbfde02",
									true,
								},
								
								{
									"74caf4cc-81e9-5dce-8471-afe083827b72",
									true,
								},
							},
							uuid = "83d4cd09-54d4-8a42-b592-92f466311357",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							conditions = 
							{
								
								{
									"41881321-f43a-80ab-9a28-134ede43e905",
									true,
								},
								
								{
									"8cef1f42-6510-0697-a5b9-72483dbfde02",
									true,
								},
								
								{
									"74caf4cc-81e9-5dce-8471-afe083827b72",
									true,
								},
							},
							uuid = "5e7d9746-ec06-9f0c-9d47-8b3f0c5bbbfd",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==((Settings.FFXIVMINION.LPDU_FRU_ApocBait or \"OT\")==\"MT\" and \"T1\" or \"T2\")",
							name = "Assigned APOC",
							uuid = "8cef1f42-6510-0697-a5b9-72483dbfde02",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "74caf4cc-81e9-5dce-8471-afe083827b72",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "b6a045b5-fbdc-25af-9626-0b189501f2e2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "40640210-d000-9576-a188-c7a746ac1312",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "edba4346-60bf-5489-b39f-8531468b0053",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "41881321-f43a-80ab-9a28-134ede43e905",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P3",
				mechanicTime = 644.3,
				name = "[LPDU Tank] P3 Apoc owner rampart",
				timeRange = true,
				timelineIndex = 150,
				timerEndOffset = -14,
				timerStartOffset = -18,
				uuid = "7697eb3f-b8ec-7560-a808-76f12f248129",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 36920,
							conditions = 
							{
								
								{
									"cea07679-c0d4-fa70-b663-c9f4abd05367",
									true,
								},
								
								{
									"1f7dbfff-52f0-5a38-bbf7-0e82b5d3274d",
									true,
								},
								
								{
									"8c19ab0a-5add-5fe8-b290-8bd4dfd5237d",
									true,
								},
							},
							uuid = "88ee7160-add5-59f2-803b-1825003f7763",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 36923,
							conditions = 
							{
								
								{
									"1a2f50ab-42d7-5792-b825-48d67123231c",
									true,
								},
								
								{
									"1f7dbfff-52f0-5a38-bbf7-0e82b5d3274d",
									true,
								},
								
								{
									"8c19ab0a-5add-5fe8-b290-8bd4dfd5237d",
									true,
								},
							},
							uuid = "7f197022-cd64-e878-bac5-404bd9a15eb9",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 36927,
							conditions = 
							{
								
								{
									"2d4a1622-fb21-04e6-b279-a32b733550fc",
									true,
								},
								
								{
									"1f7dbfff-52f0-5a38-bbf7-0e82b5d3274d",
									true,
								},
								
								{
									"8c19ab0a-5add-5fe8-b290-8bd4dfd5237d",
									true,
								},
							},
							uuid = "ce008b8b-1c3f-7632-9491-3e7a70808e1f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 36935,
							conditions = 
							{
								
								{
									"d1f9b9ba-937e-f051-a15d-31898327d1da",
									true,
								},
								
								{
									"1f7dbfff-52f0-5a38-bbf7-0e82b5d3274d",
									true,
								},
								
								{
									"8c19ab0a-5add-5fe8-b290-8bd4dfd5237d",
									true,
								},
							},
							uuid = "63aa10fb-d6d4-9c92-b77b-8fa52c4a53be",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==((Settings.FFXIVMINION.LPDU_FRU_ApocBait or \"OT\")==\"MT\" and \"T1\" or \"T2\")",
							name = "Assigned APOC",
							uuid = "1f7dbfff-52f0-5a38-bbf7-0e82b5d3274d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "8c19ab0a-5add-5fe8-b290-8bd4dfd5237d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "cea07679-c0d4-fa70-b663-c9f4abd05367",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "1a2f50ab-42d7-5792-b825-48d67123231c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "2d4a1622-fb21-04e6-b279-a32b733550fc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "d1f9b9ba-937e-f051-a15d-31898327d1da",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P3",
				mechanicTime = 644.3,
				name = "[LPDU Tank] P3 Apoc owner long",
				timeRange = true,
				timelineIndex = 150,
				timerEndOffset = -9,
				timerStartOffset = -13,
				uuid = "d949eb1f-34f3-6210-9a05-bab7c7555105",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 22,
							conditions = 
							{
								
								{
									"3bbaa8e9-130c-37da-81fa-c5174dc8f0a3",
									true,
								},
								
								{
									"5e0c2cc5-22dc-0226-8710-4bd626c14e40",
									true,
								},
								
								{
									"a7637a64-8dac-907a-8f9a-2a23c18c34b1",
									true,
								},
							},
							uuid = "f40564df-2c36-f436-858c-f08c3c880eef",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 40,
							conditions = 
							{
								
								{
									"e49b4078-e683-23d0-b812-1877950206fe",
									true,
								},
								
								{
									"5e0c2cc5-22dc-0226-8710-4bd626c14e40",
									true,
								},
								
								{
									"a7637a64-8dac-907a-8f9a-2a23c18c34b1",
									true,
								},
							},
							uuid = "86929326-6acd-d3ec-953f-096fce297977",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 3634,
							conditions = 
							{
								
								{
									"140d0b1d-452d-db8c-9ed4-24a47c18a16e",
									true,
								},
								
								{
									"5e0c2cc5-22dc-0226-8710-4bd626c14e40",
									true,
								},
								
								{
									"a7637a64-8dac-907a-8f9a-2a23c18c34b1",
									true,
								},
							},
							uuid = "712bca05-cacf-2282-9c05-eaf1f94c7811",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25754,
							conditions = 
							{
								
								{
									"140d0b1d-452d-db8c-9ed4-24a47c18a16e",
									true,
								},
								
								{
									"5e0c2cc5-22dc-0226-8710-4bd626c14e40",
									true,
								},
								
								{
									"a7637a64-8dac-907a-8f9a-2a23c18c34b1",
									true,
								},
							},
							uuid = "8d94b2f2-e36a-9ba5-b88c-dc967e009249",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16140,
							conditions = 
							{
								
								{
									"3571fa8d-90d0-ca73-ae1d-b4121957c4bb",
									true,
								},
								
								{
									"5e0c2cc5-22dc-0226-8710-4bd626c14e40",
									true,
								},
								
								{
									"a7637a64-8dac-907a-8f9a-2a23c18c34b1",
									true,
								},
							},
							uuid = "91c6f40c-0e0a-9a23-961b-30c0d5eba700",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==((Settings.FFXIVMINION.LPDU_FRU_ApocBait or \"OT\")==\"MT\" and \"T1\" or \"T2\")",
							name = "Assigned APOC",
							uuid = "5e0c2cc5-22dc-0226-8710-4bd626c14e40",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "a7637a64-8dac-907a-8f9a-2a23c18c34b1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "3bbaa8e9-130c-37da-81fa-c5174dc8f0a3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "e49b4078-e683-23d0-b812-1877950206fe",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "140d0b1d-452d-db8c-9ed4-24a47c18a16e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "3571fa8d-90d0-ca73-ae1d-b4121957c4bb",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P3",
				mechanicTime = 644.3,
				name = "[LPDU Tank] P3 Apoc owner extra",
				timeRange = true,
				timelineIndex = 150,
				timerEndOffset = -3,
				timerStartOffset = -7,
				uuid = "54d0d603-1589-7e33-bd31-8d046eacaea0",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 25746,
							conditions = 
							{
								
								{
									"09620f01-e0e0-1120-a839-7131d7c02c93",
									true,
								},
								
								{
									"72051ab1-40f9-3177-8b4d-d9eeb3d98b4b",
									true,
								},
								
								{
									"95670685-5f8b-b91b-a38e-2e5b6c471e3b",
									true,
								},
							},
							uuid = "f3b75a60-e436-3f89-be75-b0e5930b7f7f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25751,
							conditions = 
							{
								
								{
									"d850e8f6-f86e-8ff8-9914-c702f2303d09",
									true,
								},
								
								{
									"72051ab1-40f9-3177-8b4d-d9eeb3d98b4b",
									true,
								},
								
								{
									"95670685-5f8b-b91b-a38e-2e5b6c471e3b",
									true,
								},
							},
							uuid = "c606052d-3690-c176-98ec-eaacafd03632",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7393,
							conditions = 
							{
								
								{
									"9b5d82e1-4dab-8ad9-b6ae-cbe715d15436",
									true,
								},
								
								{
									"72051ab1-40f9-3177-8b4d-d9eeb3d98b4b",
									true,
								},
								
								{
									"95670685-5f8b-b91b-a38e-2e5b6c471e3b",
									true,
								},
							},
							uuid = "44d82c2a-fa3f-0451-b9b5-d6bed0f11138",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25758,
							conditions = 
							{
								
								{
									"6cfa93e8-abe3-06e7-b18e-13cb266387d9",
									true,
								},
								
								{
									"72051ab1-40f9-3177-8b4d-d9eeb3d98b4b",
									true,
								},
								
								{
									"95670685-5f8b-b91b-a38e-2e5b6c471e3b",
									true,
								},
							},
							uuid = "2b3df429-e575-8aac-adbf-09a91106a614",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==((Settings.FFXIVMINION.LPDU_FRU_ApocBait or \"OT\")==\"MT\" and \"T1\" or \"T2\")",
							name = "Assigned APOC",
							uuid = "72051ab1-40f9-3177-8b4d-d9eeb3d98b4b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "95670685-5f8b-b91b-a38e-2e5b6c471e3b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "09620f01-e0e0-1120-a839-7131d7c02c93",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "d850e8f6-f86e-8ff8-9914-c702f2303d09",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "9b5d82e1-4dab-8ad9-b6ae-cbe715d15436",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "6cfa93e8-abe3-06e7-b18e-13cb266387d9",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P3",
				mechanicTime = 644.3,
				name = "[LPDU Tank] P3 Apoc owner short",
				timeRange = true,
				timelineIndex = 150,
				timerStartOffset = -3,
				uuid = "e514b59c-e721-eb12-b515-4a01b3aff82f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7382,
							conditions = 
							{
								
								{
									"a615a78f-0dd3-0577-9045-50f301d8609f",
									true,
								},
								
								{
									"6dca7cb2-45ba-6c74-b910-64fafe0e4368",
									true,
								},
								
								{
									"e9d70bed-5de6-20a8-8dcf-39b034d989c6",
									true,
								},
							},
							targetType = "Other Tank",
							uuid = "e7d7c6b4-27c0-cd5a-a6b1-4788e6a85aea",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16464,
							conditions = 
							{
								
								{
									"053e54fb-6bbb-b137-bf85-e87eebafb499",
									true,
								},
								
								{
									"6dca7cb2-45ba-6c74-b910-64fafe0e4368",
									true,
								},
								
								{
									"e9d70bed-5de6-20a8-8dcf-39b034d989c6",
									true,
								},
							},
							targetType = "Other Tank",
							uuid = "63e7c452-ac75-d5f2-9b4b-4a688ad9d3b1",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7393,
							conditions = 
							{
								
								{
									"71969dea-91e7-ba01-aef1-1065a2debbe3",
									true,
								},
								
								{
									"6dca7cb2-45ba-6c74-b910-64fafe0e4368",
									true,
								},
								
								{
									"e9d70bed-5de6-20a8-8dcf-39b034d989c6",
									true,
								},
							},
							targetType = "Other Tank",
							uuid = "f2405eb4-a039-f8c0-96f9-23d294aa88ae",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25758,
							conditions = 
							{
								
								{
									"629845ae-135e-72b3-a725-48943f6ed033",
									true,
								},
								
								{
									"6dca7cb2-45ba-6c74-b910-64fafe0e4368",
									true,
								},
								
								{
									"e9d70bed-5de6-20a8-8dcf-39b034d989c6",
									true,
								},
							},
							targetType = "Other Tank",
							uuid = "ca58d04a-7e87-fa1a-a1c4-b69769a30d7f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot~=((Settings.FFXIVMINION.LPDU_FRU_ApocBait or \"OT\")==\"MT\" and \"T1\" or \"T2\") and (slot==\"T1\" or slot==\"T2\")",
							name = "Assigned APOC_OTHER",
							uuid = "6dca7cb2-45ba-6c74-b910-64fafe0e4368",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "e9d70bed-5de6-20a8-8dcf-39b034d989c6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "a615a78f-0dd3-0577-9045-50f301d8609f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "053e54fb-6bbb-b137-bf85-e87eebafb499",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "71969dea-91e7-ba01-aef1-1065a2debbe3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "629845ae-135e-72b3-a725-48943f6ed033",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P3",
				mechanicTime = 644.3,
				name = "[LPDU Tank] P3 Apoc other support",
				timeRange = true,
				timelineIndex = 150,
				timerStartOffset = -3,
				uuid = "2777f6b6-40b2-da38-bef8-f81f284ed11a",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"M1\"",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"R1\"",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"R2\"",
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
		
		{
			data = 
			{
				displayPath = "",
				name = "Spreadsheet tank mitigation ",
				uuid = "98882295-e5f4-9db6-810a-ef5f7eba39ff",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P3",
				uuid = "707f981d-48ca-02e0-b601-512c0a1a4961",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 16471,
							conditions = 
							{
								
								{
									"f9779510-544e-80f4-9fff-17c4f46441a7",
									true,
								},
								
								{
									"00d0581e-bcc1-cd7a-b311-0411c76a70c5",
									true,
								},
							},
							uuid = "ec13c5e7-eea3-961b-85c8-6748b780e3cc",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16160,
							conditions = 
							{
								
								{
									"6689ffc7-8cf1-f78e-bc38-c21357273449",
									true,
								},
								
								{
									"00d0581e-bcc1-cd7a-b311-0411c76a70c5",
									true,
								},
							},
							uuid = "a9560702-45a8-277d-91e1-f0fa471b32f0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\"",
							name = "Assigned MT",
							uuid = "00d0581e-bcc1-cd7a-b311-0411c76a70c5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "f9779510-544e-80f4-9fff-17c4f46441a7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "6689ffc7-8cf1-f78e-bc38-c21357273449",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P3",
				mechanicTime = 656.4,
				name = "[LPDU Tank] P3 Shockwave 2 MT magic party",
				timeRange = true,
				timelineIndex = 153,
				timerStartOffset = -2,
				uuid = "4aede6c2-5f38-1f7f-b7c3-1b5f33c46d0b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"a048bc76-3f77-53ff-91ec-0b2307443149",
									true,
								},
								
								{
									"8b4243e2-d1a2-7ccf-b2f8-9710729096b2",
									true,
								},
							},
							uuid = "bbfb92c0-c56d-f629-b4e3-7e2319695cfd",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"b8e09fd0-4e86-d33b-bbed-f331f2d33264",
									true,
								},
								
								{
									"8b4243e2-d1a2-7ccf-b2f8-9710729096b2",
									true,
								},
							},
							uuid = "133faaf9-cf2c-fb97-8397-c35e31d3ced2",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"ff5db89c-1bb7-d4ec-b6a4-ca8e41f91a25",
									true,
								},
								
								{
									"8b4243e2-d1a2-7ccf-b2f8-9710729096b2",
									true,
								},
							},
							uuid = "20aeb385-e92e-6a83-9ebc-79e7e3e1f8b5",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"464874fd-a955-3d05-8a1e-e5ce8940814f",
									true,
								},
								
								{
									"8b4243e2-d1a2-7ccf-b2f8-9710729096b2",
									true,
								},
							},
							uuid = "26f4d2b9-25a0-6a9b-920c-e25191d10637",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T2\"",
							name = "Assigned OT",
							uuid = "8b4243e2-d1a2-7ccf-b2f8-9710729096b2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "a048bc76-3f77-53ff-91ec-0b2307443149",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "b8e09fd0-4e86-d33b-bbed-f331f2d33264",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "ff5db89c-1bb7-d4ec-b6a4-ca8e41f91a25",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "464874fd-a955-3d05-8a1e-e5ce8940814f",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P3",
				mechanicTime = 656.4,
				name = "[LPDU Tank] P3 Shockwave 2 OT Reprisal",
				timeRange = true,
				timelineIndex = 153,
				timerStartOffset = -2,
				uuid = "44823bc4-ad9c-31fc-9223-02c0d5e3799c",
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
				name = "Spreadsheet tank mitigation ",
				uuid = "5d39fe90-81e3-53e0-b9ff-f5b50872bbf3",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P3",
				uuid = "1fa120c9-e58d-44fc-8012-2058fc6f804f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 3540,
							conditions = 
							{
								
								{
									"10bff3e0-da05-c84a-967f-19db6b342abc",
									true,
								},
								
								{
									"329fbcb8-2042-8c0f-8fde-304d66030cbe",
									true,
								},
							},
							uuid = "e14669a7-755d-91c7-bee0-d63ad4faaf1f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7388,
							conditions = 
							{
								
								{
									"fe628564-bb17-dc49-8f07-3af26a80f477",
									true,
								},
								
								{
									"329fbcb8-2042-8c0f-8fde-304d66030cbe",
									true,
								},
							},
							uuid = "e473ac29-4e51-0428-8a8d-30776b0be8d8",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\"",
							name = "Assigned MT",
							uuid = "329fbcb8-2042-8c0f-8fde-304d66030cbe",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "10bff3e0-da05-c84a-967f-19db6b342abc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "fe628564-bb17-dc49-8f07-3af26a80f477",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P3",
				mechanicTime = 670.1,
				name = "[LPDU Tank] P3 Memory MT shield",
				timeRange = true,
				timelineIndex = 154,
				timerEndOffset = -9,
				timerStartOffset = -12,
				uuid = "55d6e2d0-765b-66be-af0e-12d64e0884b1",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7385,
							conditions = 
							{
								
								{
									"0087b9a7-7465-ed25-83da-ab28659aa51c",
									true,
								},
								
								{
									"64e4ecb4-cad9-530f-9910-de7f065f4c0e",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "0c1a9fcb-9634-ca99-b0d8-91080f2642da",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "Assigned BOTH",
							uuid = "64e4ecb4-cad9-530f-9910-de7f065f4c0e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "0087b9a7-7465-ed25-83da-ab28659aa51c",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P3",
				mechanicTime = 670.1,
				name = "[LPDU Tank] P3 Memory PLD wings",
				timeRange = true,
				timelineIndex = 154,
				timerStartOffset = -2,
				uuid = "3f1b7285-3b89-6ea1-bc18-5c1aa620c00c",
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
				name = "Spreadsheet tank mitigation ",
				uuid = "2113e7cc-b621-3774-aefb-098ec9fb5334",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P4",
				uuid = "5bbd7ac5-9832-89cb-af0a-763539e5616e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7533,
							conditions = 
							{
								
								{
									"b885a6d4-283c-6f9b-bad5-9a544a2d94a7",
									true,
								},
								
								{
									"dd26d592-2b06-36a8-8559-c67a5734abc7",
									true,
								},
							},
							targetContentID = 12809,
							targetType = "ContentID",
							uuid = "80a674ac-bb5c-84c6-86af-ffb11272aa65",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7533,
							conditions = 
							{
								
								{
									"10df2215-016d-2fb8-9f1b-b8a3de22c86b",
									true,
								},
								
								{
									"dd26d592-2b06-36a8-8559-c67a5734abc7",
									true,
								},
							},
							targetContentID = 12809,
							targetType = "ContentID",
							uuid = "71483ef0-2f8d-1cdf-afa4-654a7b0dee5a",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7533,
							conditions = 
							{
								
								{
									"6548a8ad-bfd0-58c8-a7a5-21802ceae23b",
									true,
								},
								
								{
									"dd26d592-2b06-36a8-8559-c67a5734abc7",
									true,
								},
							},
							targetContentID = 12809,
							targetType = "ContentID",
							uuid = "fe5ab921-be33-588c-bbde-29c0307cd2b3",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7533,
							conditions = 
							{
								
								{
									"662ec178-c1fc-bde7-8c60-6d39ff08939b",
									true,
								},
								
								{
									"dd26d592-2b06-36a8-8559-c67a5734abc7",
									true,
								},
							},
							targetContentID = 12809,
							targetType = "ContentID",
							uuid = "b7ca1607-b07f-e3fd-b4fb-7d8820f30e10",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\"",
							name = "Assigned MT",
							uuid = "dd26d592-2b06-36a8-8559-c67a5734abc7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "b885a6d4-283c-6f9b-bad5-9a544a2d94a7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "10df2215-016d-2fb8-9f1b-b8a3de22c86b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "6548a8ad-bfd0-58c8-a7a5-21802ceae23b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "662ec178-c1fc-bde7-8c60-6d39ff08939b",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P4",
				mechanicTime = 705.3,
				name = "[LPDU Tank] P4 opening MT Provoke",
				timeRange = true,
				timelineIndex = 156,
				timerEndOffset = 3,
				timerStartOffset = 0.5,
				uuid = "269a4fef-2a35-0884-8aa0-c16fd7a5a196",
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
				name = "Off-tank utility",
				uuid = "20da24f6-d2b2-06b7-a689-efbcb80fc6e4",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 28,
							conditions = 
							{
								
								{
									"e97e779a-3943-0bf1-8adf-49d398440476",
									true,
								},
								
								{
									"9e051362-d5d1-eefa-857c-6bb29f9078ef",
									true,
								},
								
								{
									"344a21be-745c-9d19-8d5e-917ff92a70b0",
									true,
								},
							},
							endIfUsed = true,
							ignoreWeaveRules = true,
							uuid = "2b79b66e-cad0-d00d-9446-52e578a13c12",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 48,
							conditions = 
							{
								
								{
									"33372f4f-2ab3-18d6-9113-e5187390d897",
									true,
								},
								
								{
									"9e051362-d5d1-eefa-857c-6bb29f9078ef",
									true,
								},
								
								{
									"20a6f33b-db08-6b88-acca-89145febb69b",
									true,
								},
							},
							endIfUsed = true,
							ignoreWeaveRules = true,
							uuid = "59fa6dc4-885f-ac86-9fc0-d73db1abece9",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 3629,
							conditions = 
							{
								
								{
									"b44ed2f5-946b-bbde-9c2e-57bcc37ac762",
									true,
								},
								
								{
									"9e051362-d5d1-eefa-857c-6bb29f9078ef",
									true,
								},
								
								{
									"441ea864-ed0b-e61b-ac86-df44dea989a5",
									true,
								},
							},
							endIfUsed = true,
							ignoreWeaveRules = true,
							uuid = "63c95f94-c7d6-22c4-9514-f4e7b4a4fc1d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16142,
							conditions = 
							{
								
								{
									"836982c9-e855-b501-b6fc-51f79d4c0a3e",
									true,
								},
								
								{
									"9e051362-d5d1-eefa-857c-6bb29f9078ef",
									true,
								},
								
								{
									"38ac909e-0134-c960-814e-0195f9334a21",
									true,
								},
							},
							endIfUsed = true,
							ignoreWeaveRules = true,
							uuid = "3a558d34-d432-81a0-8983-72d2b084041f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "9e051362-d5d1-eefa-857c-6bb29f9078ef",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "PALADIN",
							uuid = "e97e779a-3943-0bf1-8adf-49d398440476",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 79,
							category = "Self",
							uuid = "344a21be-745c-9d19-8d5e-917ff92a70b0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "WARRIOR",
							uuid = "33372f4f-2ab3-18d6-9113-e5187390d897",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 91,
							category = "Self",
							uuid = "20a6f33b-db08-6b88-acca-89145febb69b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "DARKKNIGHT",
							uuid = "b44ed2f5-946b-bbde-9c2e-57bcc37ac762",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 743,
							category = "Self",
							uuid = "441ea864-ed0b-e61b-ac86-df44dea989a5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							jobValue = "GUNBREAKER",
							uuid = "836982c9-e855-b501-b6fc-51f79d4c0a3e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffCheckType = 2,
							buffID = 1833,
							category = "Self",
							uuid = "38ac909e-0134-c960-814e-0195f9334a21",
							version = 3,
						},
					},
				},
				displayPath = "Off-tank utility",
				mechanicTime = 712.9,
				name = "[LPDU OT] stance up",
				timeRange = true,
				timelineIndex = 157,
				timerStartOffset = -10,
				uuid = "b2bf3509-4ef1-523a-8200-b09a27fb7243",
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
				name = "Shared ACR jump controls",
				uuid = "ea5cd340-0211-86e4-88c4-b4ea88defefa",
			},
			objectType = "folder",
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
							actionLua = "ACR_RikuPLD3_Jumps = false\nself.used=true",
							conditions = 
							{
								
								{
									"79e02959-0a0b-9179-9b03-76800960b025",
									true,
								},
							},
							name = "PALADIN jumps off",
							uuid = "f71ae68c-f8b9-1ba3-b3be-60dc3b513f6a",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuMNK3_Jumps = false\nself.used=true",
							conditions = 
							{
								
								{
									"5762272d-127a-bf01-a798-7de8cfd4427b",
									true,
								},
							},
							name = "MONK jumps off",
							uuid = "ef22f028-7307-bdf6-aca7-2f2f5939503b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRG3_Jumps = false\nself.used=true",
							conditions = 
							{
								
								{
									"391d1f23-416d-4640-8b94-bbf1d040f847",
									true,
								},
							},
							name = "DRAGOON jumps off",
							uuid = "02df3623-a812-782d-acdb-6f41ca6f85ee",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuRDM3_JumpIn = false\nself.used=true",
							conditions = 
							{
								
								{
									"8f137048-fcea-4a57-89b9-12b060297e23",
									true,
								},
							},
							name = "RDM Jump In off",
							uuid = "08907b10-98c1-65db-af78-05ff1a971401",
							version = 2.1,
						},
					},
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
							uuid = "79e02959-0a0b-9179-9b03-76800960b025",
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
							uuid = "5762272d-127a-bf01-a798-7de8cfd4427b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DRAGOON",
							uuid = "391d1f23-416d-4640-8b94-bbf1d040f847",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "REDMAGE",
							uuid = "8f137048-fcea-4a57-89b9-12b060297e23",
							version = 3,
						},
					},
				},
				displayPath = "Shared ACR jump controls",
				mechanicTime = 726.5,
				name = "[LPDU] Disable jumps",
				timeRange = true,
				timelineIndex = 159,
				timerEndOffset = 2,
				timerStartOffset = -1,
				uuid = "e2be83f1-1342-0b92-8d97-ce1529b555dd",
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
				name = "Shared ACR jump controls",
				uuid = "ab87d641-d70b-9b05-a38e-9c025b785767",
			},
			objectType = "folder",
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
							actionLua = "ACR_RikuPLD3_Jumps = true\nself.used=true",
							conditions = 
							{
								
								{
									"1a2fefe0-6f3b-5553-a845-91c15438ddfd",
									true,
								},
							},
							name = "PALADIN jumps on",
							uuid = "a235442e-9db6-7264-8ad9-9b1122ca11c4",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuMNK3_Jumps = true\nself.used=true",
							conditions = 
							{
								
								{
									"589342f2-4a7d-8796-831a-087f03dc9b68",
									true,
								},
							},
							name = "MONK jumps on",
							uuid = "56aef69c-8e32-1811-99b1-9057a5030463",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuDRG3_Jumps = true\nself.used=true",
							conditions = 
							{
								
								{
									"bffeefa8-5688-126c-98a0-a6637dc594fc",
									true,
								},
							},
							name = "DRAGOON jumps on",
							uuid = "9d85fedb-0551-cebe-b9f3-5af1b0c0aa94",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "ACR_RikuRDM3_JumpIn = true\nself.used=true",
							conditions = 
							{
								
								{
									"b8f5f25c-a1dc-26cb-a900-9136b72a18f5",
									true,
								},
							},
							name = "RDM Jump In on",
							uuid = "f13158c6-6930-b8e3-b77a-618e5855997d",
							version = 2.1,
						},
					},
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
							uuid = "1a2fefe0-6f3b-5553-a845-91c15438ddfd",
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
							uuid = "589342f2-4a7d-8796-831a-087f03dc9b68",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DRAGOON",
							uuid = "bffeefa8-5688-126c-98a0-a6637dc594fc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "REDMAGE",
							uuid = "b8f5f25c-a1dc-26cb-a900-9136b72a18f5",
							version = 3,
						},
					},
				},
				displayPath = "Shared ACR jump controls",
				mechanicTime = 729.2,
				name = "[LPDU] Enable jumps",
				timeRange = true,
				timelineIndex = 162,
				timerEndOffset = 4,
				timerStartOffset = 1,
				uuid = "5a1dd1db-b8cd-ab8b-bb61-71540dd19805",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"R1\"",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"M2\"",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"R2\"",
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
		
		{
			data = 
			{
				displayPath = "",
				name = "Off-tank utility",
				uuid = "279006f3-48dc-a085-b79f-0dcbc4796d18",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7533,
							conditions = 
							{
								
								{
									"01fa3dc5-76bc-152e-883d-03cbdea65ec3",
									true,
								},
								
								{
									"f2804fc8-b90c-4997-8bbb-c4595477b807",
									true,
								},
							},
							endIfUsed = true,
							targetContentID = 9832,
							targetType = "ContentID",
							uuid = "2e870ffc-8a2d-882f-905f-be2ee2455599",
							version = 2.1,
						},
					},
				},
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
							uuid = "01fa3dc5-76bc-152e-883d-03cbdea65ec3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "f2804fc8-b90c-4997-8bbb-c4595477b807",
							version = 3,
						},
					},
				},
				displayPath = "Off-tank utility",
				mechanicTime = 738.2,
				name = "[LPDU OT] Voke gaia",
				timeRange = true,
				timelineIndex = 166,
				timerStartOffset = -5,
				uuid = "413d9305-31a2-f272-8553-35d8b24b1735",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Spreadsheet tank mitigation ",
				uuid = "fac40ffd-ee53-7539-94e7-4c366c2fe71f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P4",
				uuid = "f83e53b5-06be-78c5-b8c8-555a256eacd9",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"1032e9c0-f15b-7137-a3a1-2ad9ceb8f3b4",
									true,
								},
								
								{
									"742f97f5-85dc-a5b4-a19b-f3d1580604fd",
									true,
								},
							},
							uuid = "ad189bf6-c8ba-4e4c-9d8c-4e84769b7864",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"ffc7a8ba-c883-db8b-a82c-5eda22402abc",
									true,
								},
								
								{
									"742f97f5-85dc-a5b4-a19b-f3d1580604fd",
									true,
								},
							},
							uuid = "adfbfd7e-94a0-b875-91eb-427d9ed6916f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"55af34f1-043b-79c0-8650-6ff8467fecd7",
									true,
								},
								
								{
									"742f97f5-85dc-a5b4-a19b-f3d1580604fd",
									true,
								},
							},
							uuid = "d27dc203-c144-479f-af8f-e352a678729b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"a13b13dd-d258-532d-b824-64dcabc245f8",
									true,
								},
								
								{
									"742f97f5-85dc-a5b4-a19b-f3d1580604fd",
									true,
								},
							},
							uuid = "29cbc19d-a54b-ecca-b455-379bec6c4258",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\"",
							name = "Assigned MT",
							uuid = "742f97f5-85dc-a5b4-a19b-f3d1580604fd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "1032e9c0-f15b-7137-a3a1-2ad9ceb8f3b4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "ffc7a8ba-c883-db8b-a82c-5eda22402abc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "55af34f1-043b-79c0-8650-6ff8467fecd7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "a13b13dd-d258-532d-b824-64dcabc245f8",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P4",
				mechanicTime = 738.2,
				name = "[LPDU Tank] P4 Darklit MT Reprisal",
				timeRange = true,
				timelineIndex = 166,
				timerEndOffset = -6,
				timerStartOffset = -7,
				uuid = "1c248c48-881d-505a-baaa-3980ab322394",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 3540,
							conditions = 
							{
								
								{
									"206fd35d-0d3b-ab4f-a4fc-063ef8019bc3",
									true,
								},
								
								{
									"ecb0b5d0-174a-492f-ab27-a8c17f95676f",
									true,
								},
							},
							uuid = "6c1d5b2e-05c7-f869-9929-5b14b91a5985",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7388,
							conditions = 
							{
								
								{
									"0c97b2f9-8434-07c4-8da5-917407e51ea6",
									true,
								},
								
								{
									"ecb0b5d0-174a-492f-ab27-a8c17f95676f",
									true,
								},
							},
							uuid = "48fd7ab4-350a-9fc5-965a-9870e65a54c9",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16471,
							conditions = 
							{
								
								{
									"0e2f683e-0a2b-70f0-8911-4cac6b8596cc",
									true,
								},
								
								{
									"ecb0b5d0-174a-492f-ab27-a8c17f95676f",
									true,
								},
							},
							uuid = "a91daf3b-a945-bf14-973a-fe5f0b7e32db",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16160,
							conditions = 
							{
								
								{
									"6819f04f-246f-f83b-a0bd-1391bebcba8f",
									true,
								},
								
								{
									"ecb0b5d0-174a-492f-ab27-a8c17f95676f",
									true,
								},
							},
							uuid = "ed6f7199-551b-b52e-bff1-c560877c4a12",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T2\"",
							name = "Assigned OT",
							uuid = "ecb0b5d0-174a-492f-ab27-a8c17f95676f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "206fd35d-0d3b-ab4f-a4fc-063ef8019bc3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "0c97b2f9-8434-07c4-8da5-917407e51ea6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "0e2f683e-0a2b-70f0-8911-4cac6b8596cc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "6819f04f-246f-f83b-a0bd-1391bebcba8f",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P4",
				mechanicTime = 738.2,
				name = "[LPDU Tank] P4 Darklit OT party",
				timeRange = true,
				timelineIndex = 166,
				timerStartOffset = -3,
				uuid = "c464328e-cde0-0420-9fbd-aaa5e9f13a9b",
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
				name = "Spreadsheet tank mitigation ",
				uuid = "0b1f5ed3-8ff1-0c3c-94cd-b7c4ca66212f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P4",
				uuid = "0979745a-9a38-865f-8eb4-727c1bf4cbb3",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 30,
							conditions = 
							{
								
								{
									"105f587e-a42f-7b8e-99f6-a70f5494e2ae",
									true,
								},
								
								{
									"dad0f3b8-c71e-5c32-8cbf-a45bf660a744",
									true,
								},
								
								{
									"ed7ce914-e2f7-4780-8dce-02a789373d06",
									true,
								},
							},
							uuid = "7323f28e-70d8-cbd0-8f3c-572bc28082e3",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 43,
							conditions = 
							{
								
								{
									"97bdb439-f09c-56f1-851d-76885b1c3cc5",
									true,
								},
								
								{
									"dad0f3b8-c71e-5c32-8cbf-a45bf660a744",
									true,
								},
								
								{
									"ed7ce914-e2f7-4780-8dce-02a789373d06",
									true,
								},
							},
							uuid = "264dd113-8e31-c852-ade7-f5c5fd3fd57e",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 3638,
							conditions = 
							{
								
								{
									"5c419942-d449-f837-b330-8f1bd198fd87",
									true,
								},
								
								{
									"dad0f3b8-c71e-5c32-8cbf-a45bf660a744",
									true,
								},
								
								{
									"ed7ce914-e2f7-4780-8dce-02a789373d06",
									true,
								},
							},
							uuid = "19d687ce-8f09-7752-9d8c-191808b4475b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16152,
							conditions = 
							{
								
								{
									"8896c6bb-07e2-dee7-9fae-1b7fcb9bf404",
									true,
								},
								
								{
									"dad0f3b8-c71e-5c32-8cbf-a45bf660a744",
									true,
								},
								
								{
									"ed7ce914-e2f7-4780-8dce-02a789373d06",
									true,
								},
							},
							uuid = "58e55d7a-67d4-f4bc-8b40-bbcffe80e06a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nlocal s=Settings.FFXIVMINION\nlocal mode=s.LPDU_FRU_DarklitTank or \"OT invulns\"\nif mode==\"Tank swap\" then return false end\nlocal owner=mode==\"MT invulns\" and \"T1\" or \"T2\"\nreturn slot==owner",
							name = "Assigned SOMBER",
							uuid = "dad0f3b8-c71e-5c32-8cbf-a45bf660a744",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "ed7ce914-e2f7-4780-8dce-02a789373d06",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "105f587e-a42f-7b8e-99f6-a70f5494e2ae",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "97bdb439-f09c-56f1-851d-76885b1c3cc5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "5c419942-d449-f837-b330-8f1bd198fd87",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "8896c6bb-07e2-dee7-9fae-1b7fcb9bf404",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P4",
				mechanicTime = 760.4,
				name = "[LPDU Tank] P4 Somber owner invuln",
				timeRange = true,
				timelineIndex = 172,
				timerStartOffset = -3,
				uuid = "ff3b4c86-021e-24d8-9187-782e2665bacb",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7382,
							conditions = 
							{
								
								{
									"2e5ec0e1-8f3f-69e0-b930-bbc109b3b74f",
									true,
								},
								
								{
									"a9bff998-8c1b-26ce-82de-72c6af78afb7",
									true,
								},
								
								{
									"04a43a36-a0d1-9d90-9a8d-95735fe13e94",
									true,
								},
							},
							targetType = "Other Tank",
							uuid = "93e6a97a-f882-51eb-a44f-02b58c6bed4b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16464,
							conditions = 
							{
								
								{
									"660abb59-3aaa-4704-a321-8ff76c1de2ea",
									true,
								},
								
								{
									"a9bff998-8c1b-26ce-82de-72c6af78afb7",
									true,
								},
								
								{
									"04a43a36-a0d1-9d90-9a8d-95735fe13e94",
									true,
								},
								
								{
									"2941aee9-d12f-7b60-be5e-becf8761be83",
									true,
								},
							},
							targetType = "Other Tank",
							uuid = "ce562e80-c347-23b1-a10f-0ea0d208ed69",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7393,
							conditions = 
							{
								
								{
									"5f82a4f0-dcb9-a77e-8a25-5ac7886200e7",
									true,
								},
								
								{
									"a9bff998-8c1b-26ce-82de-72c6af78afb7",
									true,
								},
								
								{
									"04a43a36-a0d1-9d90-9a8d-95735fe13e94",
									true,
								},
							},
							targetType = "Other Tank",
							uuid = "8881bab8-3eb4-e68c-9a18-905c9461676f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25758,
							conditions = 
							{
								
								{
									"e6494a79-a5a6-c3f2-8a40-85b4452506f3",
									true,
								},
								
								{
									"a9bff998-8c1b-26ce-82de-72c6af78afb7",
									true,
								},
								
								{
									"04a43a36-a0d1-9d90-9a8d-95735fe13e94",
									true,
								},
								
								{
									"2941aee9-d12f-7b60-be5e-becf8761be83",
									true,
								},
							},
							targetType = "Other Tank",
							uuid = "1d20a94b-cb95-6f97-bcf3-a0d2bfe56338",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nlocal s=Settings.FFXIVMINION\nlocal mode=s.LPDU_FRU_DarklitTank or \"OT invulns\"\nif mode==\"Tank swap\" then return false end\nlocal owner=mode==\"MT invulns\" and \"T1\" or \"T2\"\nreturn slot~=owner and (slot==\"T1\" or slot==\"T2\")",
							name = "Assigned SOMBER_OTHER",
							uuid = "a9bff998-8c1b-26ce-82de-72c6af78afb7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "04a43a36-a0d1-9d90-9a8d-95735fe13e94",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "2e5ec0e1-8f3f-69e0-b930-bbc109b3b74f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "660abb59-3aaa-4704-a321-8ff76c1de2ea",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "5f82a4f0-dcb9-a77e-8a25-5ac7886200e7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "e6494a79-a5a6-c3f2-8a40-85b4452506f3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nlocal mode=Settings.FFXIVMINION.LPDU_FRU_P4AM1Mode or \"4-4\"\nreturn mode == \"4-4\"",
							name = "Short reserved for first solo Akh",
							uuid = "2941aee9-d12f-7b60-be5e-becf8761be83",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P4",
				mechanicTime = 760.4,
				name = "[LPDU Tank] P4 Somber other support",
				timeRange = true,
				timelineIndex = 172,
				timerEndOffset = 1,
				timerStartOffset = -2,
				uuid = "ef90ca85-01e5-868b-9142-302abfce94d9",
				version = 2,
			},
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
							conditions = 
							{
								
								{
									"5913398a-6e6d-eddf-8484-22d67a7ea760",
									true,
								},
								
								{
									"24ba4429-d3d9-3533-ac1c-9989efa13af6",
									true,
								},
								
								{
									"54024a9c-8335-9788-aa6b-b40b2dfd3d11",
									true,
								},
							},
							uuid = "42148870-348e-8401-bf75-d16b8cbef39c",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							conditions = 
							{
								
								{
									"501403f2-5ceb-9a4a-a987-0a1ee00e110b",
									true,
								},
								
								{
									"24ba4429-d3d9-3533-ac1c-9989efa13af6",
									true,
								},
								
								{
									"54024a9c-8335-9788-aa6b-b40b2dfd3d11",
									true,
								},
							},
							uuid = "68341e6c-72a4-019f-a024-4e968255e6da",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							conditions = 
							{
								
								{
									"60060e5c-6dea-9cfe-bd65-036a71a5d42c",
									true,
								},
								
								{
									"24ba4429-d3d9-3533-ac1c-9989efa13af6",
									true,
								},
								
								{
									"54024a9c-8335-9788-aa6b-b40b2dfd3d11",
									true,
								},
							},
							uuid = "233e414f-1b76-d941-b7ac-45c27cca6593",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							conditions = 
							{
								
								{
									"c3641e36-5b3c-7503-8ed4-629613a5496e",
									true,
								},
								
								{
									"24ba4429-d3d9-3533-ac1c-9989efa13af6",
									true,
								},
								
								{
									"54024a9c-8335-9788-aa6b-b40b2dfd3d11",
									true,
								},
							},
							uuid = "3de27a37-3c0f-04c3-b36f-3d5d7d8a624f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn Settings.FFXIVMINION.LPDU_FRU_DarklitTank==\"Tank swap\" and (slot==\"T1\" or slot==\"T2\")",
							name = "Assigned SOMBER_SWAP",
							uuid = "24ba4429-d3d9-3533-ac1c-9989efa13af6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "54024a9c-8335-9788-aa6b-b40b2dfd3d11",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "5913398a-6e6d-eddf-8484-22d67a7ea760",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "501403f2-5ceb-9a4a-a987-0a1ee00e110b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "60060e5c-6dea-9cfe-bd65-036a71a5d42c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "c3641e36-5b3c-7503-8ed4-629613a5496e",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P4",
				mechanicTime = 760.4,
				name = "[LPDU Tank] P4 Somber tank swap rampart",
				timeRange = true,
				timelineIndex = 172,
				timerStartOffset = -6,
				uuid = "4c412f19-eda6-fb2b-b0a3-72acf1f1f8b7",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 22,
							conditions = 
							{
								
								{
									"3ac964f6-edd4-ebd0-bd2b-427113b78e6c",
									true,
								},
								
								{
									"6ff8bf41-c1e5-d164-9b8b-60e9e2dc297c",
									true,
								},
								
								{
									"bd366bc3-3767-4ba5-b2d8-f5cfdc6ee25c",
									true,
								},
							},
							uuid = "59540661-8be3-600c-b703-092ff7e1289f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 40,
							conditions = 
							{
								
								{
									"f5174118-76e4-a4a9-8785-ad31e1409bbe",
									true,
								},
								
								{
									"6ff8bf41-c1e5-d164-9b8b-60e9e2dc297c",
									true,
								},
								
								{
									"bd366bc3-3767-4ba5-b2d8-f5cfdc6ee25c",
									true,
								},
							},
							uuid = "d7788646-b166-5908-8578-9998c539c23b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 3634,
							conditions = 
							{
								
								{
									"1db4726c-c2fc-da90-837b-0d506de4de9d",
									true,
								},
								
								{
									"6ff8bf41-c1e5-d164-9b8b-60e9e2dc297c",
									true,
								},
								
								{
									"bd366bc3-3767-4ba5-b2d8-f5cfdc6ee25c",
									true,
								},
							},
							uuid = "1471eb67-b9fc-16f1-9fb5-9384cf24f1ac",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25754,
							conditions = 
							{
								
								{
									"1db4726c-c2fc-da90-837b-0d506de4de9d",
									true,
								},
								
								{
									"6ff8bf41-c1e5-d164-9b8b-60e9e2dc297c",
									true,
								},
								
								{
									"bd366bc3-3767-4ba5-b2d8-f5cfdc6ee25c",
									true,
								},
							},
							uuid = "a43f0d7a-29a8-a12a-b8ab-8f628e527037",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16140,
							conditions = 
							{
								
								{
									"960b2057-bc8f-fce3-8ff0-57b6ae04c271",
									true,
								},
								
								{
									"6ff8bf41-c1e5-d164-9b8b-60e9e2dc297c",
									true,
								},
								
								{
									"bd366bc3-3767-4ba5-b2d8-f5cfdc6ee25c",
									true,
								},
							},
							uuid = "7359dada-914e-1d4f-940c-25a41a0b204b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn Settings.FFXIVMINION.LPDU_FRU_DarklitTank==\"Tank swap\" and (slot==\"T1\" or slot==\"T2\")",
							name = "Assigned SOMBER_SWAP",
							uuid = "6ff8bf41-c1e5-d164-9b8b-60e9e2dc297c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "bd366bc3-3767-4ba5-b2d8-f5cfdc6ee25c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "3ac964f6-edd4-ebd0-bd2b-427113b78e6c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "f5174118-76e4-a4a9-8785-ad31e1409bbe",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "1db4726c-c2fc-da90-837b-0d506de4de9d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "960b2057-bc8f-fce3-8ff0-57b6ae04c271",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P4",
				mechanicTime = 760.4,
				name = "[LPDU Tank] P4 Somber tank swap extra",
				timeRange = true,
				timelineIndex = 172,
				timerStartOffset = -4,
				uuid = "5d0ef8af-b85d-dcd6-b235-3b5651c62942",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 25746,
							conditions = 
							{
								
								{
									"09f9f3c8-88b9-1728-90a2-a57dc410bb44",
									true,
								},
								
								{
									"3db09036-fc8c-8658-9fb1-db2c43b606b0",
									true,
								},
								
								{
									"aa98160d-82f0-7c27-b8fb-86a6461c6326",
									true,
								},
							},
							uuid = "403d4916-11c4-589c-af06-225da408e87d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25751,
							conditions = 
							{
								
								{
									"070c63a5-7c1d-aac8-b76b-b089d8f7544e",
									true,
								},
								
								{
									"3db09036-fc8c-8658-9fb1-db2c43b606b0",
									true,
								},
								
								{
									"aa98160d-82f0-7c27-b8fb-86a6461c6326",
									true,
								},
							},
							uuid = "d2b9eeec-6ab2-b7ae-b7b6-2c4292f00b14",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7393,
							conditions = 
							{
								
								{
									"998ca390-cc06-2d6f-9e42-aa0b83867e9d",
									true,
								},
								
								{
									"3db09036-fc8c-8658-9fb1-db2c43b606b0",
									true,
								},
								
								{
									"aa98160d-82f0-7c27-b8fb-86a6461c6326",
									true,
								},
							},
							uuid = "43e13b69-3937-bbd1-a080-0aa9500eaa7c",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25758,
							conditions = 
							{
								
								{
									"ba95a13a-abd5-ba10-bd46-678864c6d901",
									true,
								},
								
								{
									"3db09036-fc8c-8658-9fb1-db2c43b606b0",
									true,
								},
								
								{
									"aa98160d-82f0-7c27-b8fb-86a6461c6326",
									true,
								},
							},
							uuid = "1d484be4-af64-b2bf-895e-5c3891266902",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn Settings.FFXIVMINION.LPDU_FRU_DarklitTank==\"Tank swap\" and (slot==\"T1\" or slot==\"T2\")",
							name = "Assigned SOMBER_SWAP",
							uuid = "3db09036-fc8c-8658-9fb1-db2c43b606b0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "aa98160d-82f0-7c27-b8fb-86a6461c6326",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "09f9f3c8-88b9-1728-90a2-a57dc410bb44",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "070c63a5-7c1d-aac8-b76b-b089d8f7544e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "998ca390-cc06-2d6f-9e42-aa0b83867e9d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "ba95a13a-abd5-ba10-bd46-678864c6d901",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P4",
				mechanicTime = 760.4,
				name = "[LPDU Tank] P4 Somber tank swap short",
				timeRange = true,
				timelineIndex = 172,
				timerStartOffset = -2,
				uuid = "d1cf9993-03e6-212b-8050-34a54553f8a8",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"R2\"",
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
		
		{
			data = 
			{
				displayPath = "",
				name = "Off-tank utility",
				uuid = "c69a7693-2c10-eceb-b77e-3c2b3cfba6fd",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7533,
							conditions = 
							{
								
								{
									"32b57a5a-9303-7392-b8d2-f17446bfea85",
									true,
								},
								
								{
									"33ba5a4c-a3af-8f01-8932-39b3ba08a0d7",
									true,
								},
							},
							endIfUsed = true,
							targetContentID = 9832,
							targetType = "ContentID",
							uuid = "531733f7-9529-339c-b8e6-017860e924ca",
							version = 2.1,
						},
					},
				},
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
							uuid = "32b57a5a-9303-7392-b8d2-f17446bfea85",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "if not AnyoneCore.Roster.current() then return false end\nreturn AnyoneCore.Roster.mySlot() == \"T2\"",
							name = "Assigned OT (T2)",
							uuid = "33ba5a4c-a3af-8f01-8932-39b3ba08a0d7",
							version = 3,
						},
					},
				},
				displayPath = "Off-tank utility",
				mechanicTime = 773.5,
				name = "[LPDU OT] Voke gaia",
				timeRange = true,
				timelineIndex = 175,
				timerStartOffset = -6,
				uuid = "1692e7d0-038b-9179-a953-219974785381",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Spreadsheet tank mitigation ",
				uuid = "9f16276b-9a72-ab15-af88-2ae237bb3740",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P4",
				uuid = "9287291a-4ffa-d375-9b5a-c23b0519f2c0",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 16471,
							conditions = 
							{
								
								{
									"e274278b-f333-24dc-be46-301a6a5234f6",
									true,
								},
								
								{
									"15e67189-83ad-727a-84a6-03e334cad4b0",
									true,
								},
							},
							uuid = "16bb8434-d61b-ae2a-ba6c-0c512cc50b22",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16160,
							conditions = 
							{
								
								{
									"2ca07ce2-ba01-795a-947a-4800de35e896",
									true,
								},
								
								{
									"15e67189-83ad-727a-84a6-03e334cad4b0",
									true,
								},
							},
							uuid = "7e6effe3-e0a3-e6f9-8134-90e3952a4571",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\"",
							name = "Assigned MT",
							uuid = "15e67189-83ad-727a-84a6-03e334cad4b0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "794bee36-160c-3bf2-8cd0-d6749f818e5b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "5dd778bc-cb18-7699-9be8-039d9dc65643",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "e274278b-f333-24dc-be46-301a6a5234f6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "2ca07ce2-ba01-795a-947a-4800de35e896",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P4",
				mechanicTime = 773.5,
				name = "[LPDU Tank] P4 Akh 1 MT magic party",
				timeRange = true,
				timelineIndex = 175,
				timerStartOffset = -3,
				uuid = "18ac4b60-6547-57e7-868d-907079cbb93e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"e758780b-0e57-2d8e-95d8-fe0c37a2d341",
									true,
								},
								
								{
									"d67332da-096b-61b0-b928-34976f9913f3",
									true,
								},
							},
							uuid = "81bec400-1eb0-e815-ad6b-745e5a5a91cf",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"22c2469f-5843-81b9-9ede-513ae722c743",
									true,
								},
								
								{
									"d67332da-096b-61b0-b928-34976f9913f3",
									true,
								},
							},
							uuid = "ee95e5a0-d6e1-0484-9208-c89f2004e17b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"9cec9f5c-1f45-09a3-91cc-1f29ceb53d20",
									true,
								},
								
								{
									"d67332da-096b-61b0-b928-34976f9913f3",
									true,
								},
							},
							uuid = "3062d75b-42ca-aabd-a8e1-2e1282fa308f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"cb6bc534-3039-031b-90e1-2e0d9377b825",
									true,
								},
								
								{
									"d67332da-096b-61b0-b928-34976f9913f3",
									true,
								},
							},
							uuid = "6926f871-436c-8879-bbf3-cb41a52c7d0e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T2\"",
							name = "Assigned OT",
							uuid = "d67332da-096b-61b0-b928-34976f9913f3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "e758780b-0e57-2d8e-95d8-fe0c37a2d341",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "22c2469f-5843-81b9-9ede-513ae722c743",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "9cec9f5c-1f45-09a3-91cc-1f29ceb53d20",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "cb6bc534-3039-031b-90e1-2e0d9377b825",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P4",
				mechanicTime = 773.5,
				name = "[LPDU Tank] P4 Akh 1 OT Reprisal",
				timeRange = true,
				timelineIndex = 175,
				timerStartOffset = -3,
				uuid = "fd8cd229-d622-cb26-9b7e-8b5955726d17",
				version = 2,
			},
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
							conditions = 
							{
								
								{
									"4e180a93-0ab6-61d0-a58d-d2756c75d703",
									true,
								},
								
								{
									"e1c571d6-9ce4-edbe-aaad-0305ff56f89a",
									true,
								},
								
								{
									"33879b5d-12c1-e93a-9a24-6df66cb3521f",
									true,
								},
							},
							uuid = "f3ed8934-4f8c-9a15-8e51-a72b235d3035",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							conditions = 
							{
								
								{
									"6792609c-cd51-1ed2-9ca3-e36ec93e06fe",
									true,
								},
								
								{
									"e1c571d6-9ce4-edbe-aaad-0305ff56f89a",
									true,
								},
								
								{
									"33879b5d-12c1-e93a-9a24-6df66cb3521f",
									true,
								},
							},
							uuid = "1db04c0c-129a-b15c-afe2-4a8fc3202e66",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							conditions = 
							{
								
								{
									"9c5e5467-8691-2fa6-adcf-0326193315bc",
									true,
								},
								
								{
									"e1c571d6-9ce4-edbe-aaad-0305ff56f89a",
									true,
								},
								
								{
									"33879b5d-12c1-e93a-9a24-6df66cb3521f",
									true,
								},
							},
							uuid = "03ddd5c9-9923-ac9b-9044-3aa063231e2c",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							conditions = 
							{
								
								{
									"b2311810-1bb0-763e-a3fb-b42b8dfafb61",
									true,
								},
								
								{
									"e1c571d6-9ce4-edbe-aaad-0305ff56f89a",
									true,
								},
								
								{
									"33879b5d-12c1-e93a-9a24-6df66cb3521f",
									true,
								},
							},
							uuid = "6dbf19ee-d4d3-821f-9ba9-5801334c5225",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nlocal mode=Settings.FFXIVMINION.LPDU_FRU_P4AM1Mode or \"4-4\"\nreturn (mode==\"7-1 MT solo\" and slot==\"T1\") or (mode==\"7-1 OT solo\" and slot==\"T2\")",
							name = "Assigned SOLO1",
							uuid = "e1c571d6-9ce4-edbe-aaad-0305ff56f89a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "33879b5d-12c1-e93a-9a24-6df66cb3521f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "4e180a93-0ab6-61d0-a58d-d2756c75d703",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "6792609c-cd51-1ed2-9ca3-e36ec93e06fe",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "9c5e5467-8691-2fa6-adcf-0326193315bc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "b2311810-1bb0-763e-a3fb-b42b8dfafb61",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P4",
				mechanicTime = 773.5,
				name = "[LPDU Tank] P4 Akh 1 solo rampart",
				timeRange = true,
				timelineIndex = 175,
				timerStartOffset = -4,
				uuid = "bbc6550f-eac9-5124-8b91-6b0ce372c9ec",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 22,
							conditions = 
							{
								
								{
									"a6f15003-4d2c-21fd-8ae3-5b1fc53b4920",
									true,
								},
								
								{
									"cf76682f-85e0-129e-b33d-456bdb04875e",
									true,
								},
								
								{
									"9ddf129d-d967-920f-ad1e-4ee2520156e6",
									true,
								},
							},
							uuid = "752d5b97-a6e7-89c5-9981-d3a305a94ef3",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 40,
							conditions = 
							{
								
								{
									"e54b9b75-aeda-2525-ba39-f8ed0a5a3707",
									true,
								},
								
								{
									"cf76682f-85e0-129e-b33d-456bdb04875e",
									true,
								},
								
								{
									"9ddf129d-d967-920f-ad1e-4ee2520156e6",
									true,
								},
							},
							uuid = "c29bbb7a-dc78-8ea1-9d49-bd5502a6a2ef",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 3634,
							conditions = 
							{
								
								{
									"1bf6589b-9822-fd42-b7d4-abdb209cdbd3",
									true,
								},
								
								{
									"cf76682f-85e0-129e-b33d-456bdb04875e",
									true,
								},
								
								{
									"9ddf129d-d967-920f-ad1e-4ee2520156e6",
									true,
								},
							},
							uuid = "28621a25-c055-d81f-a191-b44344ac408a",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25754,
							conditions = 
							{
								
								{
									"1bf6589b-9822-fd42-b7d4-abdb209cdbd3",
									true,
								},
								
								{
									"cf76682f-85e0-129e-b33d-456bdb04875e",
									true,
								},
								
								{
									"9ddf129d-d967-920f-ad1e-4ee2520156e6",
									true,
								},
							},
							uuid = "6cae32d0-3a4c-48a6-9b9d-7b74034c7ffe",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16140,
							conditions = 
							{
								
								{
									"db8c8526-e520-8189-b765-3c9365f66bc9",
									true,
								},
								
								{
									"cf76682f-85e0-129e-b33d-456bdb04875e",
									true,
								},
								
								{
									"9ddf129d-d967-920f-ad1e-4ee2520156e6",
									true,
								},
							},
							uuid = "22138510-94f9-228e-9067-f8985802c0da",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nlocal mode=Settings.FFXIVMINION.LPDU_FRU_P4AM1Mode or \"4-4\"\nreturn (mode==\"7-1 MT solo\" and slot==\"T1\") or (mode==\"7-1 OT solo\" and slot==\"T2\")",
							name = "Assigned SOLO1",
							uuid = "cf76682f-85e0-129e-b33d-456bdb04875e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "9ddf129d-d967-920f-ad1e-4ee2520156e6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "a6f15003-4d2c-21fd-8ae3-5b1fc53b4920",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "e54b9b75-aeda-2525-ba39-f8ed0a5a3707",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "1bf6589b-9822-fd42-b7d4-abdb209cdbd3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "db8c8526-e520-8189-b765-3c9365f66bc9",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P4",
				mechanicTime = 773.5,
				name = "[LPDU Tank] P4 Akh 1 solo extra",
				timeRange = true,
				timelineIndex = 175,
				timerStartOffset = -3,
				uuid = "0b92e6d5-4ad8-37c0-8418-e71399eb294f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 25746,
							conditions = 
							{
								
								{
									"60cb8447-e1d2-db36-9b2d-885fe69b455b",
									true,
								},
								
								{
									"1699d0ef-f296-e651-8f73-69bdecf44291",
									true,
								},
								
								{
									"f96f3fa0-3236-ad4a-9969-e32ef6c1eb16",
									true,
								},
							},
							uuid = "a48c45d9-774b-8e8e-aa37-8dd3382faa7d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25751,
							conditions = 
							{
								
								{
									"a727467a-0730-2765-9029-04bd7f89d615",
									true,
								},
								
								{
									"1699d0ef-f296-e651-8f73-69bdecf44291",
									true,
								},
								
								{
									"f96f3fa0-3236-ad4a-9969-e32ef6c1eb16",
									true,
								},
							},
							uuid = "3cfcdb79-2b13-be4b-84bc-88465315ac94",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7393,
							conditions = 
							{
								
								{
									"ef20e92c-16ec-a474-8ec3-d25a314a2724",
									true,
								},
								
								{
									"1699d0ef-f296-e651-8f73-69bdecf44291",
									true,
								},
								
								{
									"f96f3fa0-3236-ad4a-9969-e32ef6c1eb16",
									true,
								},
							},
							uuid = "e1ed24d9-7981-3ae9-b63b-b6bb3143e5f8",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25758,
							conditions = 
							{
								
								{
									"a54c4db1-3c7d-340e-85c7-1c1c10ecf7be",
									true,
								},
								
								{
									"1699d0ef-f296-e651-8f73-69bdecf44291",
									true,
								},
								
								{
									"f96f3fa0-3236-ad4a-9969-e32ef6c1eb16",
									true,
								},
							},
							uuid = "d28cad16-4613-562b-bfde-aeacdab7b816",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nlocal mode=Settings.FFXIVMINION.LPDU_FRU_P4AM1Mode or \"4-4\"\nreturn (mode==\"7-1 MT solo\" and slot==\"T1\") or (mode==\"7-1 OT solo\" and slot==\"T2\")",
							name = "Assigned SOLO1",
							uuid = "1699d0ef-f296-e651-8f73-69bdecf44291",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "f96f3fa0-3236-ad4a-9969-e32ef6c1eb16",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "60cb8447-e1d2-db36-9b2d-885fe69b455b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "a727467a-0730-2765-9029-04bd7f89d615",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "ef20e92c-16ec-a474-8ec3-d25a314a2724",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "a54c4db1-3c7d-340e-85c7-1c1c10ecf7be",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P4",
				mechanicTime = 773.5,
				name = "[LPDU Tank] P4 Akh 1 solo short",
				timeRange = true,
				timelineIndex = 175,
				timerStartOffset = -1.5,
				uuid = "74f87a5a-ec36-7d78-b808-c4e0f0a3e43c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7382,
							conditions = 
							{
								
								{
									"d5fbe6ea-a32e-ec6a-8459-63a448b3cfaf",
									true,
								},
								
								{
									"aac9d296-2673-2120-8725-390bf35dd916",
									true,
								},
								
								{
									"60c3fffe-bc22-35e8-8ed8-8380a3076f4d",
									true,
								},
							},
							targetType = "Other Tank",
							uuid = "96869d5f-9e8f-f8d2-8fd6-b8d4efab7712",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16464,
							conditions = 
							{
								
								{
									"d8a629f5-c2a2-dc42-9f13-b1c0eb904de7",
									true,
								},
								
								{
									"aac9d296-2673-2120-8725-390bf35dd916",
									true,
								},
								
								{
									"60c3fffe-bc22-35e8-8ed8-8380a3076f4d",
									true,
								},
							},
							targetType = "Other Tank",
							uuid = "6cef1767-6d2a-16b7-809c-d6d9473137e7",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7393,
							conditions = 
							{
								
								{
									"95ec0cb3-02f1-67cc-9cb0-f03d0a622477",
									true,
								},
								
								{
									"aac9d296-2673-2120-8725-390bf35dd916",
									true,
								},
								
								{
									"60c3fffe-bc22-35e8-8ed8-8380a3076f4d",
									true,
								},
							},
							targetType = "Other Tank",
							uuid = "fdb993ca-8f68-cb4c-b301-306d2cc92b47",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25758,
							conditions = 
							{
								
								{
									"e2c2f1e8-e43d-404a-9a56-d2c55ddc1a78",
									true,
								},
								
								{
									"aac9d296-2673-2120-8725-390bf35dd916",
									true,
								},
								
								{
									"60c3fffe-bc22-35e8-8ed8-8380a3076f4d",
									true,
								},
							},
							targetType = "Other Tank",
							uuid = "442a23e4-f362-7a04-8d3d-dc7a30404f4d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nlocal mode=Settings.FFXIVMINION.LPDU_FRU_P4AM1Mode or \"4-4\"\nreturn (mode==\"7-1 MT solo\" and slot==\"T2\") or (mode==\"7-1 OT solo\" and slot==\"T1\")",
							name = "Assigned SOLO_OTHER1",
							uuid = "aac9d296-2673-2120-8725-390bf35dd916",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "60c3fffe-bc22-35e8-8ed8-8380a3076f4d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "d5fbe6ea-a32e-ec6a-8459-63a448b3cfaf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "d8a629f5-c2a2-dc42-9f13-b1c0eb904de7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "95ec0cb3-02f1-67cc-9cb0-f03d0a622477",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "e2c2f1e8-e43d-404a-9a56-d2c55ddc1a78",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P4",
				mechanicTime = 773.5,
				name = "[LPDU Tank] P4 Akh 1 solo partner support",
				timeRange = true,
				timelineIndex = 175,
				timerEndOffset = 1,
				timerStartOffset = -1.5,
				uuid = "80617853-7a93-e875-bb63-53664c1725e1",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7533,
							conditions = 
							{
								
								{
									"63886ca4-96b9-b151-a754-2e3ee0ce545d",
									true,
								},
								
								{
									"9a2c30d4-ffc4-b0be-8449-cf175fbcf496",
									true,
								},
							},
							targetContentID = 12809,
							targetType = "ContentID",
							uuid = "d1ba9b4d-8e26-fbe6-a825-a80a8eed3c9b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7533,
							conditions = 
							{
								
								{
									"c626f92c-f452-399e-b013-154a89deedce",
									true,
								},
								
								{
									"9a2c30d4-ffc4-b0be-8449-cf175fbcf496",
									true,
								},
							},
							targetContentID = 12809,
							targetType = "ContentID",
							uuid = "0bbeb4f6-1806-866e-a3d4-860b172ead80",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7533,
							conditions = 
							{
								
								{
									"af8454b2-f57c-67c2-9d47-b0e0d3a481e2",
									true,
								},
								
								{
									"9a2c30d4-ffc4-b0be-8449-cf175fbcf496",
									true,
								},
							},
							targetContentID = 12809,
							targetType = "ContentID",
							uuid = "c351851d-4832-02aa-862b-abad2fe75ee2",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7533,
							conditions = 
							{
								
								{
									"74a6348d-e698-2f3e-9763-194548d39ef0",
									true,
								},
								
								{
									"9a2c30d4-ffc4-b0be-8449-cf175fbcf496",
									true,
								},
							},
							targetContentID = 12809,
							targetType = "ContentID",
							uuid = "94c5c0c4-0cc0-0a00-9591-4641b41a1c96",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\"",
							name = "Assigned MT",
							uuid = "9a2c30d4-ffc4-b0be-8449-cf175fbcf496",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "63886ca4-96b9-b151-a754-2e3ee0ce545d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "c626f92c-f452-399e-b013-154a89deedce",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "af8454b2-f57c-67c2-9d47-b0e0d3a481e2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "74a6348d-e698-2f3e-9763-194548d39ef0",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P4",
				mechanicTime = 773.5,
				name = "[LPDU Tank] P4 after Somber MT Provoke",
				timeRange = true,
				timelineIndex = 175,
				timerStartOffset = -6,
				uuid = "c54fc891-7c2e-37a8-9510-9a2849825f4f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 3540,
							conditions = 
							{
								
								{
									"7096aa42-c93c-123a-becf-44cc189c0cee",
									true,
								},
								
								{
									"3dbc5edd-01b5-43fe-b9cb-cdacd267fa83",
									true,
								},
							},
							uuid = "02ad4afa-44f1-55a8-8769-3bdf0bec9e17",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7388,
							conditions = 
							{
								
								{
									"2afb522d-5ee4-6b68-8fbd-e2adb3645362",
									true,
								},
								
								{
									"3dbc5edd-01b5-43fe-b9cb-cdacd267fa83",
									true,
								},
							},
							uuid = "243724ed-24c7-9f41-807e-cc7e9294ed25",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\"",
							name = "Assigned MT",
							uuid = "3dbc5edd-01b5-43fe-b9cb-cdacd267fa83",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "7096aa42-c93c-123a-becf-44cc189c0cee",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "2afb522d-5ee4-6b68-8fbd-e2adb3645362",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "8c5bdb61-6462-087e-9b13-3f0d022990ef",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "fb1764dd-d719-6982-a3ab-5a8138b3912a",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P4",
				mechanicTime = 773.5,
				name = "[LPDU Tank] P4 Akh 1 MT shield for Morn Afah",
				timeRange = true,
				timelineIndex = 175,
				timerEndOffset = 9.5,
				timerStartOffset = 5,
				uuid = "e40c3211-d190-b015-be40-4c3dca7483d0",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"M1\"",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"R1\"",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"R1\"",
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
		
		{
			data = 
			{
				displayPath = "",
				name = "Spreadsheet tank mitigation ",
				uuid = "2a47291d-0184-65e5-b530-d39bb9ddef49",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P4",
				uuid = "e870bc2a-8a1c-0bcf-81a1-4c53451841b1",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"9a46afe5-d3d9-77e4-a67e-e97ffbb4340a",
									true,
								},
								
								{
									"9535c998-83e7-0fdd-b3a1-637ab4bc72ff",
									true,
								},
							},
							uuid = "8566c097-147d-9cee-9089-cccc1e6b6362",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"49422a86-03e5-7aa3-aeca-bbc479e3a8b9",
									true,
								},
								
								{
									"9535c998-83e7-0fdd-b3a1-637ab4bc72ff",
									true,
								},
							},
							uuid = "335b6276-e446-8523-9199-ca3e3b2bab36",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"be4d9ced-a6b2-cc57-8d0f-dbb50642cb5b",
									true,
								},
								
								{
									"9535c998-83e7-0fdd-b3a1-637ab4bc72ff",
									true,
								},
							},
							uuid = "e4353999-4275-6c74-a857-812de9207184",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"de9c52d5-a565-4209-b8cb-62741b854447",
									true,
								},
								
								{
									"9535c998-83e7-0fdd-b3a1-637ab4bc72ff",
									true,
								},
							},
							uuid = "28f0c9f7-d581-cc24-8ecc-98d329cbeec8",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\"",
							name = "Assigned MT",
							uuid = "9535c998-83e7-0fdd-b3a1-637ab4bc72ff",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "9a46afe5-d3d9-77e4-a67e-e97ffbb4340a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "49422a86-03e5-7aa3-aeca-bbc479e3a8b9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "be4d9ced-a6b2-cc57-8d0f-dbb50642cb5b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "de9c52d5-a565-4209-b8cb-62741b854447",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P4",
				mechanicTime = 798.9,
				name = "[LPDU Tank] P4 CT MT Reprisal",
				timeRange = true,
				timelineIndex = 179,
				timerEndOffset = -5,
				timerStartOffset = -6,
				uuid = "4e881e8f-5182-498f-8ccd-b9cd1cf1ae35",
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
				name = "Spreadsheet tank mitigation ",
				uuid = "fb44ea67-d96a-2932-9b51-20bdf4312d28",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P4",
				uuid = "57590ac6-b1fb-fd5d-b5c9-40e0f09855f2",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 3540,
							conditions = 
							{
								
								{
									"7379b898-73d4-893c-87ce-08f3e50ee01a",
									true,
								},
								
								{
									"6f6546d0-fc4d-029d-9b7c-47c641a060dd",
									true,
								},
							},
							uuid = "385429f2-a182-4926-97bc-0b765c7a5707",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7388,
							conditions = 
							{
								
								{
									"b0af5c13-aca6-a2e4-9712-485c6e426ba2",
									true,
								},
								
								{
									"6f6546d0-fc4d-029d-9b7c-47c641a060dd",
									true,
								},
							},
							uuid = "ffe6e223-3010-f6bc-bff7-0a7ebb56eba8",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16471,
							conditions = 
							{
								
								{
									"1f304906-c7ef-7be0-924f-920bb5f4d49e",
									true,
								},
								
								{
									"6f6546d0-fc4d-029d-9b7c-47c641a060dd",
									true,
								},
							},
							uuid = "a76b6fd3-fdd1-1e83-a20f-85e880704acf",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16160,
							conditions = 
							{
								
								{
									"151782fd-faea-a2b1-8986-9af74f196f7b",
									true,
								},
								
								{
									"6f6546d0-fc4d-029d-9b7c-47c641a060dd",
									true,
								},
							},
							uuid = "344ad568-8c59-a9be-b337-277f6fd95e0a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T2\"",
							name = "Assigned OT",
							uuid = "6f6546d0-fc4d-029d-9b7c-47c641a060dd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "7379b898-73d4-893c-87ce-08f3e50ee01a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "b0af5c13-aca6-a2e4-9712-485c6e426ba2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "1f304906-c7ef-7be0-924f-920bb5f4d49e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "151782fd-faea-a2b1-8986-9af74f196f7b",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P4",
				mechanicTime = 839.1,
				name = "[LPDU Tank] P4 Wings OT party",
				timeRange = true,
				timelineIndex = 195,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "380e4526-3ab0-f0be-94c7-0db31871cf8f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 36920,
							conditions = 
							{
								
								{
									"4b055849-b787-96a8-b633-50cb0a7cbbfd",
									true,
								},
								
								{
									"e3f34b2c-5747-d97f-ac5c-fd57e579d8ab",
									true,
								},
								
								{
									"8c3de200-2bcf-44f5-ba47-96f015a833b2",
									true,
								},
							},
							uuid = "06fed427-84a8-41c3-8363-73ca6f65172e",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 36923,
							conditions = 
							{
								
								{
									"11d55a96-ba56-6dcd-b54d-53463dc8b2bf",
									true,
								},
								
								{
									"e3f34b2c-5747-d97f-ac5c-fd57e579d8ab",
									true,
								},
								
								{
									"8c3de200-2bcf-44f5-ba47-96f015a833b2",
									true,
								},
							},
							uuid = "07221507-0602-e0a2-b2aa-0dfc2b293bde",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 36927,
							conditions = 
							{
								
								{
									"9072753c-3a42-8180-8ba1-a3c60461ac71",
									true,
								},
								
								{
									"e3f34b2c-5747-d97f-ac5c-fd57e579d8ab",
									true,
								},
								
								{
									"8c3de200-2bcf-44f5-ba47-96f015a833b2",
									true,
								},
							},
							uuid = "3b8aad9b-294f-7599-a2c6-3913a8b78501",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 36935,
							conditions = 
							{
								
								{
									"da26d91d-274f-1e42-a2ab-cb7887a26bfb",
									true,
								},
								
								{
									"e3f34b2c-5747-d97f-ac5c-fd57e579d8ab",
									true,
								},
								
								{
									"8c3de200-2bcf-44f5-ba47-96f015a833b2",
									true,
								},
							},
							uuid = "676343e2-8438-ce64-8fa5-738dc97e9e37",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "Assigned BOTH",
							uuid = "e3f34b2c-5747-d97f-ac5c-fd57e579d8ab",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "8c3de200-2bcf-44f5-ba47-96f015a833b2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "4b055849-b787-96a8-b633-50cb0a7cbbfd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "11d55a96-ba56-6dcd-b54d-53463dc8b2bf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "9072753c-3a42-8180-8ba1-a3c60461ac71",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "da26d91d-274f-1e42-a2ab-cb7887a26bfb",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P4",
				mechanicTime = 839.1,
				name = "[LPDU Tank] P4 Wings both 120s",
				timeRange = true,
				timelineIndex = 195,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "e4572322-75f7-7e54-9193-c0d320eeef90",
				version = 2,
			},
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
							conditions = 
							{
								
								{
									"2f653999-6544-cf50-8dce-75644aea0f1d",
									true,
								},
								
								{
									"520d9a58-8178-ea9d-8448-a27a78050146",
									true,
								},
								
								{
									"992faad8-eba0-301c-a78a-9d3a81133356",
									true,
								},
								
								{
									"dc709b0e-ba0e-46b6-9190-c854ef7eb55c",
									true,
								},
							},
							uuid = "8de1d17e-6e7e-5622-8e11-866c9933a3f2",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							conditions = 
							{
								
								{
									"26f7f0ed-e2ac-8e15-822d-561d29ae0089",
									true,
								},
								
								{
									"520d9a58-8178-ea9d-8448-a27a78050146",
									true,
								},
								
								{
									"992faad8-eba0-301c-a78a-9d3a81133356",
									true,
								},
								
								{
									"dc709b0e-ba0e-46b6-9190-c854ef7eb55c",
									true,
								},
							},
							uuid = "2b627385-da73-1cfa-8bdc-f49cdc024441",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							conditions = 
							{
								
								{
									"e859ab4c-a63a-dc7d-b47b-c72170878cb2",
									true,
								},
								
								{
									"520d9a58-8178-ea9d-8448-a27a78050146",
									true,
								},
								
								{
									"992faad8-eba0-301c-a78a-9d3a81133356",
									true,
								},
								
								{
									"dc709b0e-ba0e-46b6-9190-c854ef7eb55c",
									true,
								},
							},
							uuid = "5502ff84-8914-a62b-8709-62fd1c389825",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							conditions = 
							{
								
								{
									"2d2ef7ec-67e5-f66e-9f85-33134696de59",
									true,
								},
								
								{
									"520d9a58-8178-ea9d-8448-a27a78050146",
									true,
								},
								
								{
									"992faad8-eba0-301c-a78a-9d3a81133356",
									true,
								},
								
								{
									"dc709b0e-ba0e-46b6-9190-c854ef7eb55c",
									true,
								},
							},
							uuid = "a8521924-8de3-b0d7-b42a-92e16ab347a8",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T2\"",
							name = "Assigned OT",
							uuid = "520d9a58-8178-ea9d-8448-a27a78050146",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "992faad8-eba0-301c-a78a-9d3a81133356",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return Settings.FFXIVMINION.LPDU_FRU_DarklitTank ~= \"Tank swap\" and (Settings.FFXIVMINION.LPDU_FRU_P4AM1Mode or \"4-4\") ~= \"7-1 OT solo\" and (Settings.FFXIVMINION.LPDU_FRU_P4AM2Mode or \"7-1 MT solo\") ~= \"7-1 OT solo\"",
							name = "Mechanic plan branch",
							uuid = "dc709b0e-ba0e-46b6-9190-c854ef7eb55c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "2f653999-6544-cf50-8dce-75644aea0f1d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "26f7f0ed-e2ac-8e15-822d-561d29ae0089",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "e859ab4c-a63a-dc7d-b47b-c72170878cb2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "2d2ef7ec-67e5-f66e-9f85-33134696de59",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P4",
				mechanicTime = 839.1,
				name = "[LPDU Tank] P4 Wings OT Rampart",
				timeRange = true,
				timelineIndex = 195,
				timerEndOffset = -1,
				timerStartOffset = -4,
				uuid = "e0df126d-6c4f-80ae-ae21-ea48fedd324a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 3634,
							conditions = 
							{
								
								{
									"974010b2-c64b-7021-9eed-d6a27eba7a1b",
									true,
								},
								
								{
									"6fd31885-3457-a4e5-aa06-e6a3f77eef9a",
									true,
								},
								
								{
									"264f6fe3-32dc-9d29-bdcf-eeb58ed0fa7a",
									true,
								},
							},
							uuid = "6a1ed0f0-a06b-ba70-bd58-6d3e005ad75f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "Assigned BOTH",
							uuid = "6fd31885-3457-a4e5-aa06-e6a3f77eef9a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "264f6fe3-32dc-9d29-bdcf-eeb58ed0fa7a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "974010b2-c64b-7021-9eed-d6a27eba7a1b",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P4",
				mechanicTime = 839.1,
				name = "[LPDU Tank] P4 Wings DRK Dark Mind",
				timeRange = true,
				timelineIndex = 195,
				timerStartOffset = -3,
				uuid = "b04f60f1-3850-2736-a434-bf60f773271b",
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
				name = "Spreadsheet tank mitigation ",
				uuid = "42199b0f-f58a-b202-8fac-a602bc9f66a5",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P4",
				uuid = "efca94f9-82d2-889a-ace4-4b9a4a20c6a0",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7533,
							conditions = 
							{
								
								{
									"90e05882-ee10-ff56-90f2-4b24713deccc",
									true,
								},
								
								{
									"0a92e7d6-1bf0-b9d4-83b1-08c240f6f33c",
									true,
								},
							},
							targetContentID = 12809,
							targetType = "ContentID",
							uuid = "6737fc8e-f4d0-56c9-a553-0ab8bb8a8834",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7533,
							conditions = 
							{
								
								{
									"8f544f90-bd40-1b84-83cf-ec43aaba0d1a",
									true,
								},
								
								{
									"0a92e7d6-1bf0-b9d4-83b1-08c240f6f33c",
									true,
								},
							},
							targetContentID = 12809,
							targetType = "ContentID",
							uuid = "05a18c8c-ddf4-a163-b019-ac79d33df7e4",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7533,
							conditions = 
							{
								
								{
									"2db9ee21-8483-ab91-b941-54a1705cf281",
									true,
								},
								
								{
									"0a92e7d6-1bf0-b9d4-83b1-08c240f6f33c",
									true,
								},
							},
							targetContentID = 12809,
							targetType = "ContentID",
							uuid = "c0f792d8-877f-7c79-b4d9-85b49934fb72",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7533,
							conditions = 
							{
								
								{
									"929d64c4-bb1a-7a98-af31-dc21ae9c4922",
									true,
								},
								
								{
									"0a92e7d6-1bf0-b9d4-83b1-08c240f6f33c",
									true,
								},
							},
							targetContentID = 12809,
							targetType = "ContentID",
							uuid = "e3b99d18-1c14-9ff0-af0f-2f533b4bf32d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\"",
							name = "Assigned MT",
							uuid = "0a92e7d6-1bf0-b9d4-83b1-08c240f6f33c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "90e05882-ee10-ff56-90f2-4b24713deccc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "8f544f90-bd40-1b84-83cf-ec43aaba0d1a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "2db9ee21-8483-ab91-b941-54a1705cf281",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "929d64c4-bb1a-7a98-af31-dc21ae9c4922",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P4",
				mechanicTime = 850.2,
				name = "[LPDU Tank] P4 after CT MT Provoke",
				timeRange = true,
				timelineIndex = 201,
				timerEndOffset = 3,
				timerStartOffset = 0.2,
				uuid = "318f200e-6d1e-18c9-b6fb-f45fb60ae328",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7533,
							conditions = 
							{
								
								{
									"ab4c6913-01b5-2380-a3ac-96b46519466c",
									true,
								},
								
								{
									"e40d6b7f-3e5c-2a0f-8b2b-36ad629768cf",
									true,
								},
							},
							targetContentID = 9832,
							targetType = "ContentID",
							uuid = "61da00af-0cb3-628a-9762-1554ed0b7312",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7533,
							conditions = 
							{
								
								{
									"5b3dfa06-2d8c-7906-9699-2b526daa4a3f",
									true,
								},
								
								{
									"e40d6b7f-3e5c-2a0f-8b2b-36ad629768cf",
									true,
								},
							},
							targetContentID = 9832,
							targetType = "ContentID",
							uuid = "e8bb0b6c-1522-f28e-95a8-53ca568e6126",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7533,
							conditions = 
							{
								
								{
									"e4f3f00d-053f-e731-979a-85af996474f3",
									true,
								},
								
								{
									"e40d6b7f-3e5c-2a0f-8b2b-36ad629768cf",
									true,
								},
							},
							targetContentID = 9832,
							targetType = "ContentID",
							uuid = "d2fd27e4-4e03-b766-b142-a5173e7fa1d7",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7533,
							conditions = 
							{
								
								{
									"99c71ce7-4229-ae6e-b77a-1875d7952e9c",
									true,
								},
								
								{
									"e40d6b7f-3e5c-2a0f-8b2b-36ad629768cf",
									true,
								},
							},
							targetContentID = 9832,
							targetType = "ContentID",
							uuid = "28aff691-ccfc-d9bc-a3b9-9483f9933403",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T2\"",
							name = "Assigned OT",
							uuid = "e40d6b7f-3e5c-2a0f-8b2b-36ad629768cf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "ab4c6913-01b5-2380-a3ac-96b46519466c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "5b3dfa06-2d8c-7906-9699-2b526daa4a3f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "e4f3f00d-053f-e731-979a-85af996474f3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "99c71ce7-4229-ae6e-b77a-1875d7952e9c",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P4",
				mechanicTime = 850.2,
				name = "[LPDU Tank] P4 after CT OT Provoke",
				timeRange = true,
				timelineIndex = 201,
				timerEndOffset = 3,
				timerStartOffset = 0.2,
				uuid = "a92b9099-1720-e6e6-bccb-372e0c2e58a8",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"M2\"",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"R2\"",
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
		
		{
			data = 
			{
				displayPath = "",
				name = "Spreadsheet tank mitigation ",
				uuid = "f0c9269a-c395-6b0c-be45-c6cca7430704",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P4",
				uuid = "b2afa8e7-b3bc-4673-bd95-9bac6fb2fbe3",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"75c68b14-5972-60f7-be21-cee112aea81d",
									true,
								},
								
								{
									"a83616ba-a9fa-90a4-8dd5-20c5c60bb085",
									true,
								},
							},
							uuid = "f62a0b6c-ca89-17a4-9390-517662249ec6",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"d8ef14d0-c4b4-c172-8824-f81f25a09322",
									true,
								},
								
								{
									"a83616ba-a9fa-90a4-8dd5-20c5c60bb085",
									true,
								},
							},
							uuid = "4f94cb1a-ab43-0092-9638-0d4b91c7876c",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"bf77e7cc-5a28-42f8-bd5a-906f256af2cd",
									true,
								},
								
								{
									"a83616ba-a9fa-90a4-8dd5-20c5c60bb085",
									true,
								},
							},
							uuid = "a9f0ec66-9545-3af1-88d2-7cbe10499f32",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"0e00b604-f03f-28ea-affc-92e80febbb56",
									true,
								},
								
								{
									"a83616ba-a9fa-90a4-8dd5-20c5c60bb085",
									true,
								},
							},
							uuid = "bae92cab-454b-cf37-804c-a6145d647b1e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T2\"",
							name = "Assigned OT",
							uuid = "a83616ba-a9fa-90a4-8dd5-20c5c60bb085",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "75c68b14-5972-60f7-be21-cee112aea81d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "d8ef14d0-c4b4-c172-8824-f81f25a09322",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "bf77e7cc-5a28-42f8-bd5a-906f256af2cd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "0e00b604-f03f-28ea-affc-92e80febbb56",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P4",
				mechanicTime = 854.9,
				name = "[LPDU Tank] P4 Akh 2 OT Reprisal",
				timeRange = true,
				timelineIndex = 202,
				timerStartOffset = -2,
				uuid = "3225c433-7a78-85c1-9178-ae157508d6b9",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"1facd5a4-011d-fb7d-ab64-47c21203b1f5",
									true,
								},
								
								{
									"70dd2b10-ffe1-b06e-99cd-6c63f17401d4",
									true,
								},
							},
							uuid = "2c11163a-4a3d-18a0-929e-3319617ee02b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"bfef56a2-af7d-469d-9f4b-e6f36c2f4fd2",
									true,
								},
								
								{
									"70dd2b10-ffe1-b06e-99cd-6c63f17401d4",
									true,
								},
							},
							uuid = "714a3bac-0034-b6b5-be8b-3d7706264671",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"0128483b-d215-5dd5-bc25-bd35e0a443c8",
									true,
								},
								
								{
									"70dd2b10-ffe1-b06e-99cd-6c63f17401d4",
									true,
								},
							},
							uuid = "e618e2ca-133e-cfc6-994d-3819b1144105",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"41a1adbc-59af-d70b-9742-08f03940454f",
									true,
								},
								
								{
									"70dd2b10-ffe1-b06e-99cd-6c63f17401d4",
									true,
								},
							},
							uuid = "814e80e1-699b-b536-916b-150ab4ea53ac",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\"",
							name = "Assigned MT",
							uuid = "70dd2b10-ffe1-b06e-99cd-6c63f17401d4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "1facd5a4-011d-fb7d-ab64-47c21203b1f5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "bfef56a2-af7d-469d-9f4b-e6f36c2f4fd2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "0128483b-d215-5dd5-bc25-bd35e0a443c8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "41a1adbc-59af-d70b-9742-08f03940454f",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P4",
				mechanicTime = 854.9,
				name = "[LPDU Tank] P4 Akh 2 MT Reprisal on Ryne",
				timeRange = true,
				timelineIndex = 202,
				timerStartOffset = -2,
				uuid = "1ac3efbc-2152-46e2-9259-cb580154dcd2",
				version = 2,
			},
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
							conditions = 
							{
								
								{
									"caf4dd40-3c83-62e8-bbe8-42fb4f104cff",
									true,
								},
								
								{
									"4d0fd0a9-7a19-e09d-a63d-9620383e6b6a",
									true,
								},
								
								{
									"1fe3d806-bd0a-cc46-9653-e68a4ad92259",
									true,
								},
							},
							uuid = "29ffc56c-26d0-502b-b24e-c71bb21860cb",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							conditions = 
							{
								
								{
									"7ca471d4-2698-738c-ae3a-ed566383d606",
									true,
								},
								
								{
									"4d0fd0a9-7a19-e09d-a63d-9620383e6b6a",
									true,
								},
								
								{
									"1fe3d806-bd0a-cc46-9653-e68a4ad92259",
									true,
								},
							},
							uuid = "16a12d1b-8a1c-7a49-aaad-a9b9075ea156",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							conditions = 
							{
								
								{
									"afbba498-4a73-aa7a-b6c2-400e465f94f2",
									true,
								},
								
								{
									"4d0fd0a9-7a19-e09d-a63d-9620383e6b6a",
									true,
								},
								
								{
									"1fe3d806-bd0a-cc46-9653-e68a4ad92259",
									true,
								},
							},
							uuid = "4a8197d6-8e0d-0eee-b7ce-b1126e339101",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							conditions = 
							{
								
								{
									"a3416b50-62fa-728e-9e88-94159df19284",
									true,
								},
								
								{
									"4d0fd0a9-7a19-e09d-a63d-9620383e6b6a",
									true,
								},
								
								{
									"1fe3d806-bd0a-cc46-9653-e68a4ad92259",
									true,
								},
							},
							uuid = "cd18d908-d311-af52-a8e3-3d43c241b89d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nlocal mode=Settings.FFXIVMINION.LPDU_FRU_P4AM2Mode or \"7-1 MT solo\"\nreturn (mode==\"7-1 MT solo\" and slot==\"T1\") or (mode==\"7-1 OT solo\" and slot==\"T2\")",
							name = "Assigned SOLO2",
							uuid = "4d0fd0a9-7a19-e09d-a63d-9620383e6b6a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "1fe3d806-bd0a-cc46-9653-e68a4ad92259",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "caf4dd40-3c83-62e8-bbe8-42fb4f104cff",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "7ca471d4-2698-738c-ae3a-ed566383d606",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "afbba498-4a73-aa7a-b6c2-400e465f94f2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "a3416b50-62fa-728e-9e88-94159df19284",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P4",
				mechanicTime = 854.9,
				name = "[LPDU Tank] P4 Akh 2 solo Rampart",
				timeRange = true,
				timelineIndex = 202,
				timerEndOffset = -2,
				timerStartOffset = -7,
				uuid = "4fd4e168-b08c-005e-9031-671acffe1565",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 22,
							conditions = 
							{
								
								{
									"4baabb36-f0a0-3e35-ba3b-6c03bb391507",
									true,
								},
								
								{
									"eeb57ef6-a9b3-92f9-9ca5-ee7aeaa96879",
									true,
								},
								
								{
									"d1642ca3-33be-901a-9f0b-08ff9532cbfb",
									true,
								},
							},
							uuid = "11524b66-efc1-ab98-be5b-c695a98651b0",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 40,
							conditions = 
							{
								
								{
									"bd1ea15e-da72-a226-b843-8fd63b14994e",
									true,
								},
								
								{
									"eeb57ef6-a9b3-92f9-9ca5-ee7aeaa96879",
									true,
								},
								
								{
									"d1642ca3-33be-901a-9f0b-08ff9532cbfb",
									true,
								},
							},
							uuid = "bb286246-3011-14c7-bb82-cc816ad74c72",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25754,
							conditions = 
							{
								
								{
									"7b73bbd5-9c74-1f51-9ecf-be2806bb50f3",
									true,
								},
								
								{
									"eeb57ef6-a9b3-92f9-9ca5-ee7aeaa96879",
									true,
								},
								
								{
									"d1642ca3-33be-901a-9f0b-08ff9532cbfb",
									true,
								},
							},
							uuid = "0091b745-9734-39b8-8881-0fa5267f9fda",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16140,
							conditions = 
							{
								
								{
									"93f2649f-9e06-c994-ae34-e6bad44ce916",
									true,
								},
								
								{
									"eeb57ef6-a9b3-92f9-9ca5-ee7aeaa96879",
									true,
								},
								
								{
									"d1642ca3-33be-901a-9f0b-08ff9532cbfb",
									true,
								},
							},
							uuid = "18a2f1f6-33f4-524d-a0fa-4465276bbc75",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nlocal mode=Settings.FFXIVMINION.LPDU_FRU_P4AM2Mode or \"7-1 MT solo\"\nreturn (mode==\"7-1 MT solo\" and slot==\"T1\") or (mode==\"7-1 OT solo\" and slot==\"T2\")",
							name = "Assigned SOLO2",
							uuid = "eeb57ef6-a9b3-92f9-9ca5-ee7aeaa96879",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "d1642ca3-33be-901a-9f0b-08ff9532cbfb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "4baabb36-f0a0-3e35-ba3b-6c03bb391507",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "bd1ea15e-da72-a226-b843-8fd63b14994e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "7b73bbd5-9c74-1f51-9ecf-be2806bb50f3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "93f2649f-9e06-c994-ae34-e6bad44ce916",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P4",
				mechanicTime = 854.9,
				name = "[LPDU Tank] P4 Akh 2 solo extra",
				timeRange = true,
				timelineIndex = 202,
				timerEndOffset = -1,
				timerStartOffset = -5,
				uuid = "9166ae96-d7ab-f586-9465-200c02d15eae",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 25746,
							conditions = 
							{
								
								{
									"7a0ecf40-5637-e35a-a2e3-7830f3db8869",
									true,
								},
								
								{
									"606dd852-f201-d8ca-84a3-0cd290c3ccbe",
									true,
								},
								
								{
									"50ab368f-07d3-a852-866e-7875861655a4",
									true,
								},
							},
							uuid = "d4dfddc8-b777-a18f-988c-beb268e0cbb2",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25751,
							conditions = 
							{
								
								{
									"424afdbd-1791-e3a0-b92d-45dc014e04c4",
									true,
								},
								
								{
									"606dd852-f201-d8ca-84a3-0cd290c3ccbe",
									true,
								},
								
								{
									"50ab368f-07d3-a852-866e-7875861655a4",
									true,
								},
							},
							uuid = "9ed6fdc8-fcd4-2868-984b-3f52ef76d1df",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7393,
							conditions = 
							{
								
								{
									"7579ce78-152f-7311-87b9-c0e01e5f4d5c",
									true,
								},
								
								{
									"606dd852-f201-d8ca-84a3-0cd290c3ccbe",
									true,
								},
								
								{
									"50ab368f-07d3-a852-866e-7875861655a4",
									true,
								},
							},
							uuid = "d6fe7369-4809-3790-aa9d-78067b3304e3",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25758,
							conditions = 
							{
								
								{
									"879bc886-ca8d-3ba1-a0f4-485341194c3e",
									true,
								},
								
								{
									"606dd852-f201-d8ca-84a3-0cd290c3ccbe",
									true,
								},
								
								{
									"50ab368f-07d3-a852-866e-7875861655a4",
									true,
								},
							},
							uuid = "d4ae419b-5cb6-f8cb-ac23-7cd173d82ae5",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nlocal mode=Settings.FFXIVMINION.LPDU_FRU_P4AM2Mode or \"7-1 MT solo\"\nreturn (mode==\"7-1 MT solo\" and slot==\"T1\") or (mode==\"7-1 OT solo\" and slot==\"T2\")",
							name = "Assigned SOLO2",
							uuid = "606dd852-f201-d8ca-84a3-0cd290c3ccbe",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "50ab368f-07d3-a852-866e-7875861655a4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "7a0ecf40-5637-e35a-a2e3-7830f3db8869",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "424afdbd-1791-e3a0-b92d-45dc014e04c4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "7579ce78-152f-7311-87b9-c0e01e5f4d5c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "879bc886-ca8d-3ba1-a0f4-485341194c3e",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P4",
				mechanicTime = 854.9,
				name = "[LPDU Tank] P4 Akh 2 solo short",
				timeRange = true,
				timelineIndex = 202,
				timerEndOffset = 1,
				timerStartOffset = -2,
				uuid = "c7bcf3bf-7c27-9670-90c3-10b5d5f2ec1a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7382,
							conditions = 
							{
								
								{
									"d35ab81a-5f37-a16d-b6ae-ae3f6604ba6f",
									true,
								},
								
								{
									"9d9caa68-ffac-f525-b01b-8cd95a914d8f",
									true,
								},
								
								{
									"564e436d-d169-85da-816b-182d0ff18960",
									true,
								},
							},
							targetType = "Other Tank",
							uuid = "89ddce60-a18d-4d93-8fd1-6b6e37ff0222",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16464,
							conditions = 
							{
								
								{
									"09f9e42b-c79b-344d-a28d-f99f14ea95b2",
									true,
								},
								
								{
									"9d9caa68-ffac-f525-b01b-8cd95a914d8f",
									true,
								},
								
								{
									"564e436d-d169-85da-816b-182d0ff18960",
									true,
								},
							},
							targetType = "Other Tank",
							uuid = "4ad7d53b-0557-db3d-bbee-8694e4d6542a",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7393,
							conditions = 
							{
								
								{
									"9e845629-cce9-829e-91cc-a1314e6c83ad",
									true,
								},
								
								{
									"9d9caa68-ffac-f525-b01b-8cd95a914d8f",
									true,
								},
								
								{
									"564e436d-d169-85da-816b-182d0ff18960",
									true,
								},
							},
							targetType = "Other Tank",
							uuid = "4133109c-c2b4-f5df-b79c-d7f7b8a898a0",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25758,
							conditions = 
							{
								
								{
									"fc54c300-a0e3-ea09-a477-376eeb174bf9",
									true,
								},
								
								{
									"9d9caa68-ffac-f525-b01b-8cd95a914d8f",
									true,
								},
								
								{
									"564e436d-d169-85da-816b-182d0ff18960",
									true,
								},
							},
							targetType = "Other Tank",
							uuid = "ba6280f2-4179-5475-9e8d-94d9282acb97",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nlocal mode=Settings.FFXIVMINION.LPDU_FRU_P4AM2Mode or \"7-1 MT solo\"\nreturn (mode==\"7-1 MT solo\" and slot==\"T2\") or (mode==\"7-1 OT solo\" and slot==\"T1\")",
							name = "Assigned SOLO_OTHER2",
							uuid = "9d9caa68-ffac-f525-b01b-8cd95a914d8f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "564e436d-d169-85da-816b-182d0ff18960",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "d35ab81a-5f37-a16d-b6ae-ae3f6604ba6f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "09f9e42b-c79b-344d-a28d-f99f14ea95b2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "9e845629-cce9-829e-91cc-a1314e6c83ad",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "fc54c300-a0e3-ea09-a477-376eeb174bf9",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P4",
				mechanicTime = 854.9,
				name = "[LPDU Tank] P4 Akh 2 solo partner support",
				timeRange = true,
				timelineIndex = 202,
				timerEndOffset = 1,
				timerStartOffset = -2,
				uuid = "ea16c16a-a15c-326b-adb5-11bd11b359f4",
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
				name = "Spreadsheet tank mitigation ",
				uuid = "aebe0d6b-ac99-6e74-b7e5-4cba70c08317",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P4",
				uuid = "b878fb6d-92c5-f29f-af4d-33946f08cbc2",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 16471,
							conditions = 
							{
								
								{
									"67120005-3188-f54f-80ed-0153661f2a27",
									true,
								},
								
								{
									"99cfad7e-3467-5f40-ae72-62f5a2d9640c",
									true,
								},
							},
							uuid = "a14ec92f-44d8-ca77-92b7-4b09984b1473",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16160,
							conditions = 
							{
								
								{
									"b7339814-9767-bc2d-bbea-30c822afc092",
									true,
								},
								
								{
									"99cfad7e-3467-5f40-ae72-62f5a2d9640c",
									true,
								},
							},
							uuid = "1fc6582a-d6dd-5be7-ab57-3e0cb545950c",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\"",
							name = "Assigned MT",
							uuid = "99cfad7e-3467-5f40-ae72-62f5a2d9640c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "67120005-3188-f54f-80ed-0153661f2a27",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "b7339814-9767-bc2d-bbea-30c822afc092",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P4",
				mechanicTime = 864.8,
				name = "[LPDU Tank] P4 Morn Afah 2 MT party",
				timeRange = true,
				timelineIndex = 204,
				timerEndOffset = 2,
				timerStartOffset = -1,
				uuid = "f6d4e2cf-b7e1-6643-abe8-5cfb8412c3c3",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7385,
							conditions = 
							{
								
								{
									"8562a138-cc79-6b38-ba3f-9a061e8c1f9d",
									true,
								},
								
								{
									"c94f9e8e-c68d-6297-82de-fa0e66de3878",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "1e05e4ea-b848-1dca-ac16-396c638c3b27",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "Assigned BOTH",
							uuid = "c94f9e8e-c68d-6297-82de-fa0e66de3878",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "8562a138-cc79-6b38-ba3f-9a061e8c1f9d",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P4",
				mechanicTime = 864.8,
				name = "[LPDU Tank] P4 Morn Afah 2 PLD wings",
				timeRange = true,
				timelineIndex = 204,
				timerStartOffset = -2,
				uuid = "f1256a79-21eb-b0ff-93f3-5d56bda8d77b",
				version = 2,
			},
		},
	},
	[207] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Spreadsheet tank mitigation ",
				uuid = "3992566c-e84a-0955-ba1e-1f7a5b24a7cc",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P5",
				uuid = "3d6c52bd-2f82-420a-948a-49c1e50eda46",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7533,
							conditions = 
							{
								
								{
									"f3cb6d12-0648-995d-aed7-859e07c91dac",
									true,
								},
								
								{
									"1cd142bf-db55-f5a9-96f4-585db6f479b6",
									true,
								},
							},
							targetContentID = 13561,
							targetType = "ContentID",
							uuid = "1ec7cad2-9361-2a23-b93a-91bce46ff7c3",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7533,
							conditions = 
							{
								
								{
									"f353e0b1-a910-dad7-8bc4-bbe0f8219a07",
									true,
								},
								
								{
									"1cd142bf-db55-f5a9-96f4-585db6f479b6",
									true,
								},
							},
							targetContentID = 13561,
							targetType = "ContentID",
							uuid = "287ba0e9-d933-6b9f-8659-6ee0682c1e34",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7533,
							conditions = 
							{
								
								{
									"ee64d1d4-342b-280a-94ae-8763d48c3188",
									true,
								},
								
								{
									"1cd142bf-db55-f5a9-96f4-585db6f479b6",
									true,
								},
							},
							targetContentID = 13561,
							targetType = "ContentID",
							uuid = "bcba815a-a3cd-2452-83b4-de48a0cd97f8",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7533,
							conditions = 
							{
								
								{
									"4c8f08dd-f1a6-b828-a3c0-2a29df41516a",
									true,
								},
								
								{
									"1cd142bf-db55-f5a9-96f4-585db6f479b6",
									true,
								},
							},
							targetContentID = 13561,
							targetType = "ContentID",
							uuid = "b73b57ac-2598-a58f-a0f0-248919792226",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\"",
							name = "Assigned MT",
							uuid = "1cd142bf-db55-f5a9-96f4-585db6f479b6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "f3cb6d12-0648-995d-aed7-859e07c91dac",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "f353e0b1-a910-dad7-8bc4-bbe0f8219a07",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "ee64d1d4-342b-280a-94ae-8763d48c3188",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "4c8f08dd-f1a6-b828-a3c0-2a29df41516a",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P5",
				mechanicTime = 972.3,
				name = "[LPDU Tank] P5 opening MT Provoke",
				timeRange = true,
				timelineIndex = 207,
				timerEndOffset = 3,
				timerStartOffset = 0.2,
				uuid = "71dcde73-e985-e1bc-8245-a16cb5d9d234",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"M1\"",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"R1\"",
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
		
		{
			data = 
			{
				displayPath = "",
				name = "Spreadsheet tank mitigation ",
				uuid = "4ddce374-82bc-2df9-96e0-42190cb673e3",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P5",
				uuid = "8b4e2040-89cc-6a31-93ee-78fc37d84255",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"af28c015-66a0-9689-b5c1-6826d7552dc3",
									true,
								},
								
								{
									"3df0c0fa-85ed-4b54-9069-6468988d35c2",
									true,
								},
							},
							uuid = "e780540b-8e73-a028-bad3-9cc50959e5f1",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"dec8f5de-ab5b-fa03-98a1-7c98fb697ba2",
									true,
								},
								
								{
									"3df0c0fa-85ed-4b54-9069-6468988d35c2",
									true,
								},
							},
							uuid = "cf3ae98c-78a3-00c5-8299-3f34a52359dd",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"d2978976-299e-d577-bbf8-ea25779a342a",
									true,
								},
								
								{
									"3df0c0fa-85ed-4b54-9069-6468988d35c2",
									true,
								},
							},
							uuid = "10dc7f18-0405-3145-b37b-0d7465470cac",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"8109eba6-5176-8606-bd39-ac83089ab506",
									true,
								},
								
								{
									"3df0c0fa-85ed-4b54-9069-6468988d35c2",
									true,
								},
							},
							uuid = "7038806f-80ca-8e70-b763-df8eb3c88b00",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\"",
							name = "Assigned MT",
							uuid = "3df0c0fa-85ed-4b54-9069-6468988d35c2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "af28c015-66a0-9689-b5c1-6826d7552dc3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "dec8f5de-ab5b-fa03-98a1-7c98fb697ba2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "d2978976-299e-d577-bbf8-ea25779a342a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "8109eba6-5176-8606-bd39-ac83089ab506",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P5",
				mechanicTime = 984.8,
				name = "[LPDU Tank] P5 Fulgent 1 MT Reprisal",
				timeRange = true,
				timelineIndex = 209,
				timerStartOffset = -3,
				uuid = "f6973116-be99-02b3-9fec-1a131bbbcd34",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"R1\"",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"R2\"",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"M2\"",
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
		
		{
			data = 
			{
				displayPath = "",
				name = "Spreadsheet tank mitigation ",
				uuid = "9e4e8ab7-b20d-9052-acf2-8dc14be1598e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P5",
				uuid = "faca7afd-aa11-bbcd-88e9-82ccfeb55cee",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 3540,
							conditions = 
							{
								
								{
									"49bb0e25-760f-7914-a8ea-38ed1db6f852",
									true,
								},
								
								{
									"c1217d7d-deaa-f14f-9394-6eb5420506f5",
									true,
								},
							},
							uuid = "1b3f1731-b9d0-89f5-b9d1-cb8896eee9be",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7388,
							conditions = 
							{
								
								{
									"317ef63b-d596-c98a-911a-5b67cac7fb37",
									true,
								},
								
								{
									"c1217d7d-deaa-f14f-9394-6eb5420506f5",
									true,
								},
							},
							uuid = "bc2ca66b-0c1c-fdcc-8f02-b57b42df7af7",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16471,
							conditions = 
							{
								
								{
									"73c08da9-2bfc-e234-8310-2a957be6fa57",
									true,
								},
								
								{
									"c1217d7d-deaa-f14f-9394-6eb5420506f5",
									true,
								},
							},
							uuid = "292d3cf4-4173-80e0-8446-518c4d02e489",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16160,
							conditions = 
							{
								
								{
									"75e6a757-74f1-dcae-ac18-0bc8dd5c1ef3",
									true,
								},
								
								{
									"c1217d7d-deaa-f14f-9394-6eb5420506f5",
									true,
								},
							},
							uuid = "54b6c758-2d31-e505-bf2b-efc8bda50174",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "Assigned BOTH",
							uuid = "c1217d7d-deaa-f14f-9394-6eb5420506f5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "49bb0e25-760f-7914-a8ea-38ed1db6f852",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "317ef63b-d596-c98a-911a-5b67cac7fb37",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "73c08da9-2bfc-e234-8310-2a957be6fa57",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "75e6a757-74f1-dcae-ac18-0bc8dd5c1ef3",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P5",
				mechanicTime = 1011.4,
				name = "[LPDU Tank] P5 late exas 1 party",
				timeRange = true,
				timelineIndex = 215,
				timerEndOffset = -6,
				timerStartOffset = -9,
				uuid = "acb0a505-a585-a9d3-b3e1-737a7310c46b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"bade4b3e-4b74-925f-aa94-ef47b07b94aa",
									true,
								},
								
								{
									"94873b66-9222-7db0-a463-f3da0a728117",
									true,
								},
							},
							uuid = "eef9ed6b-1b8f-44fc-8780-512f0694b426",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"0c87f343-6663-0506-8c91-50e0c71a9bd2",
									true,
								},
								
								{
									"94873b66-9222-7db0-a463-f3da0a728117",
									true,
								},
							},
							uuid = "76170772-0e13-82a8-b835-e52a604a6144",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"152a9145-7909-f999-9f26-1c55d5cd670c",
									true,
								},
								
								{
									"94873b66-9222-7db0-a463-f3da0a728117",
									true,
								},
							},
							uuid = "5e94b8ac-3227-d1ce-afea-8c7ab8272426",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"ddca6f16-3484-afdb-8573-c8301f4dbdaf",
									true,
								},
								
								{
									"94873b66-9222-7db0-a463-f3da0a728117",
									true,
								},
							},
							uuid = "752ed16e-e6d7-79ec-a606-986ae03a24b3",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T2\"",
							name = "Assigned OT",
							uuid = "94873b66-9222-7db0-a463-f3da0a728117",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "bade4b3e-4b74-925f-aa94-ef47b07b94aa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "0c87f343-6663-0506-8c91-50e0c71a9bd2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "152a9145-7909-f999-9f26-1c55d5cd670c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "ddca6f16-3484-afdb-8573-c8301f4dbdaf",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P5",
				mechanicTime = 1011.4,
				name = "[LPDU Tank] P5 Akh 1 OT Reprisal",
				timeRange = true,
				timelineIndex = 215,
				timerStartOffset = -2,
				uuid = "32a32582-10a1-8066-94a0-35fde2ed8724",
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
				name = "Spreadsheet tank mitigation ",
				uuid = "0efc72e1-6cd1-53c6-b53d-3d4a0025bfab",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P5",
				uuid = "ce4ac062-79c0-a321-9133-c5ef7b7d404e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 30,
							conditions = 
							{
								
								{
									"fd7e5f48-2ff5-6cd3-af66-b8c540aebe98",
									true,
								},
								
								{
									"b3b207f4-5e15-8f3c-9d58-ceea62cde492",
									true,
								},
								
								{
									"cb0681b0-77be-acde-bb4a-ebbbe4104d88",
									true,
								},
							},
							uuid = "99308e40-7a58-f456-9d1a-94ae361e46d2",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 43,
							conditions = 
							{
								
								{
									"5fb60d70-d32b-c6cf-a396-f2bbbac33a2e",
									true,
								},
								
								{
									"b3b207f4-5e15-8f3c-9d58-ceea62cde492",
									true,
								},
								
								{
									"cb0681b0-77be-acde-bb4a-ebbbe4104d88",
									true,
								},
							},
							uuid = "6bb4adc3-b921-57e1-8160-e2e11f9855f5",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 3638,
							conditions = 
							{
								
								{
									"fe4674ea-fc7b-47cb-a9e5-ae9c70986f31",
									true,
								},
								
								{
									"b3b207f4-5e15-8f3c-9d58-ceea62cde492",
									true,
								},
								
								{
									"cb0681b0-77be-acde-bb4a-ebbbe4104d88",
									true,
								},
							},
							uuid = "67d88baf-eb25-16c8-8fc0-c2ebf343f04e",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16152,
							conditions = 
							{
								
								{
									"bc4d5ae7-e84d-369e-ab98-6281d76d92c3",
									true,
								},
								
								{
									"b3b207f4-5e15-8f3c-9d58-ceea62cde492",
									true,
								},
								
								{
									"cb0681b0-77be-acde-bb4a-ebbbe4104d88",
									true,
								},
							},
							uuid = "c32ff055-d394-c696-9217-28fab2ca854e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nlocal s=Settings.FFXIVMINION\nlocal first=s.LPDU_FRU_P5FirstInvuln or ((s.LPDU_FRU_DarklitTank or \"OT invulns\")==\"MT invulns\" and \"OT\" or \"MT\")\nlocal firstSlot=first==\"MT\" and \"T1\" or \"T2\"\nreturn slot==firstSlot",
							name = "Assigned P5_INV1",
							uuid = "b3b207f4-5e15-8f3c-9d58-ceea62cde492",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "cb0681b0-77be-acde-bb4a-ebbbe4104d88",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "fd7e5f48-2ff5-6cd3-af66-b8c540aebe98",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "5fb60d70-d32b-c6cf-a396-f2bbbac33a2e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "fe4674ea-fc7b-47cb-a9e5-ae9c70986f31",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "bc4d5ae7-e84d-369e-ab98-6281d76d92c3",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P5",
				mechanicTime = 1029.6,
				name = "[LPDU Tank] P5 Paradise 1 invuln",
				timeRange = true,
				timelineIndex = 218,
				timerStartOffset = -3,
				uuid = "2d5f4e00-2ab0-84cd-a78a-a3fc321a4703",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7382,
							conditions = 
							{
								
								{
									"89fdb50c-3478-e939-bbc7-794e24060633",
									true,
								},
								
								{
									"a16791de-847a-7196-a5d5-9d0bd51c5d8d",
									true,
								},
								
								{
									"05b2d036-364c-51c7-abd0-9902cc80b780",
									true,
								},
							},
							targetType = "Other Tank",
							uuid = "d75b7e87-467d-6d94-b06e-4e5d8b3b2dc6",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16464,
							conditions = 
							{
								
								{
									"90e2dd33-1e12-7054-a0f2-b1f2967e06c6",
									true,
								},
								
								{
									"a16791de-847a-7196-a5d5-9d0bd51c5d8d",
									true,
								},
								
								{
									"05b2d036-364c-51c7-abd0-9902cc80b780",
									true,
								},
							},
							targetType = "Other Tank",
							uuid = "15c141ce-d4c0-6c18-bfd9-1a1d068e34e4",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7393,
							conditions = 
							{
								
								{
									"407fd61b-da31-559d-bfcf-2e928b504319",
									true,
								},
								
								{
									"a16791de-847a-7196-a5d5-9d0bd51c5d8d",
									true,
								},
								
								{
									"05b2d036-364c-51c7-abd0-9902cc80b780",
									true,
								},
							},
							targetType = "Other Tank",
							uuid = "93cbd821-5497-bcce-b376-b5536eb17fb2",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25758,
							conditions = 
							{
								
								{
									"63af333f-f12d-b52a-af8c-f2fbdb020ed0",
									true,
								},
								
								{
									"a16791de-847a-7196-a5d5-9d0bd51c5d8d",
									true,
								},
								
								{
									"05b2d036-364c-51c7-abd0-9902cc80b780",
									true,
								},
							},
							targetType = "Other Tank",
							uuid = "54f0ccb7-f6ac-f0a7-95be-0745709149e7",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nlocal s=Settings.FFXIVMINION\nlocal first=s.LPDU_FRU_P5FirstInvuln or ((s.LPDU_FRU_DarklitTank or \"OT invulns\")==\"MT invulns\" and \"OT\" or \"MT\")\nlocal firstSlot=first==\"MT\" and \"T1\" or \"T2\"\nreturn slot==firstSlot",
							name = "Assigned P5_INV1",
							uuid = "a16791de-847a-7196-a5d5-9d0bd51c5d8d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "05b2d036-364c-51c7-abd0-9902cc80b780",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "89fdb50c-3478-e939-bbc7-794e24060633",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "90e2dd33-1e12-7054-a0f2-b1f2967e06c6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "407fd61b-da31-559d-bfcf-2e928b504319",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "63af333f-f12d-b52a-af8c-f2fbdb020ed0",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P5",
				mechanicTime = 1029.6,
				name = "[LPDU Tank] P5 Paradise 1 support",
				timeRange = true,
				timelineIndex = 218,
				timerStartOffset = -3,
				uuid = "5714ce68-4708-f01d-85c9-4c2a01f59f0f",
				version = 2,
			},
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
							conditions = 
							{
								
								{
									"b4b07c4b-8989-d459-9fac-2fb87d70d557",
									true,
								},
								
								{
									"a06ce05e-61a1-84eb-aadc-bf1b311367df",
									true,
								},
								
								{
									"53717b3f-8e45-35a3-9502-f36bc60b4381",
									true,
								},
							},
							uuid = "cf1b7639-ed22-5aa7-bb62-35f1ed8a6be9",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							conditions = 
							{
								
								{
									"c7f7977b-e044-bd05-9ee0-16b7bf5a6124",
									true,
								},
								
								{
									"a06ce05e-61a1-84eb-aadc-bf1b311367df",
									true,
								},
								
								{
									"53717b3f-8e45-35a3-9502-f36bc60b4381",
									true,
								},
							},
							uuid = "7e59d2d7-9583-5c2e-803a-f34764ae3fff",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							conditions = 
							{
								
								{
									"029e8cc0-d555-83cb-8b89-7260dc9a30ab",
									true,
								},
								
								{
									"a06ce05e-61a1-84eb-aadc-bf1b311367df",
									true,
								},
								
								{
									"53717b3f-8e45-35a3-9502-f36bc60b4381",
									true,
								},
							},
							uuid = "edb147be-bf0b-da33-b454-46650e6837d2",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							conditions = 
							{
								
								{
									"8c69bc2a-ae64-8085-88e7-5f826aeee7c5",
									true,
								},
								
								{
									"a06ce05e-61a1-84eb-aadc-bf1b311367df",
									true,
								},
								
								{
									"53717b3f-8e45-35a3-9502-f36bc60b4381",
									true,
								},
							},
							uuid = "b6ac25c1-67e7-20e2-b0a2-30d0f2ee8f7f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nlocal s=Settings.FFXIVMINION\nlocal first=s.LPDU_FRU_P5FirstInvuln or ((s.LPDU_FRU_DarklitTank or \"OT invulns\")==\"MT invulns\" and \"OT\" or \"MT\")\nlocal firstSlot=first==\"MT\" and \"T1\" or \"T2\"\nreturn slot~=firstSlot and (slot==\"T1\" or slot==\"T2\")",
							name = "Assigned P5_SINK1",
							uuid = "a06ce05e-61a1-84eb-aadc-bf1b311367df",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "53717b3f-8e45-35a3-9502-f36bc60b4381",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "b4b07c4b-8989-d459-9fac-2fb87d70d557",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "c7f7977b-e044-bd05-9ee0-16b7bf5a6124",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "029e8cc0-d555-83cb-8b89-7260dc9a30ab",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "8c69bc2a-ae64-8085-88e7-5f826aeee7c5",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P5",
				mechanicTime = 1029.6,
				name = "[LPDU Tank] P5 Paradise 1 sink rampart",
				timeRange = true,
				timelineIndex = 218,
				timerEndOffset = -8,
				timerStartOffset = -12,
				uuid = "8a589c54-543f-6897-8e21-eca5eb458d96",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 36920,
							conditions = 
							{
								
								{
									"64cefe83-2d8f-4a9a-9e38-52709b54b2b4",
									true,
								},
								
								{
									"857a1edd-9fe6-4695-b6a8-4f6a78c052c6",
									true,
								},
								
								{
									"ddb20975-a016-b474-b3ce-469005a7530d",
									true,
								},
							},
							uuid = "97e2b958-ce87-1fa7-8aba-3d67703b4c4f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 36923,
							conditions = 
							{
								
								{
									"e20e3c00-db4e-3818-8781-897092b6337d",
									true,
								},
								
								{
									"857a1edd-9fe6-4695-b6a8-4f6a78c052c6",
									true,
								},
								
								{
									"ddb20975-a016-b474-b3ce-469005a7530d",
									true,
								},
							},
							uuid = "318c6329-aa5f-77f4-a46d-8e5a0650da63",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 36927,
							conditions = 
							{
								
								{
									"e9e6a68e-0d21-d02a-a9c2-5a09c4a42bbd",
									true,
								},
								
								{
									"857a1edd-9fe6-4695-b6a8-4f6a78c052c6",
									true,
								},
								
								{
									"ddb20975-a016-b474-b3ce-469005a7530d",
									true,
								},
							},
							uuid = "376de718-1541-11f8-982f-20f898e7ef1d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 36935,
							conditions = 
							{
								
								{
									"d14f99df-acef-5340-b19e-1075b46aa261",
									true,
								},
								
								{
									"857a1edd-9fe6-4695-b6a8-4f6a78c052c6",
									true,
								},
								
								{
									"ddb20975-a016-b474-b3ce-469005a7530d",
									true,
								},
							},
							uuid = "d6467347-6575-a100-b5d1-6a2bcecc351a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nlocal s=Settings.FFXIVMINION\nlocal first=s.LPDU_FRU_P5FirstInvuln or ((s.LPDU_FRU_DarklitTank or \"OT invulns\")==\"MT invulns\" and \"OT\" or \"MT\")\nlocal firstSlot=first==\"MT\" and \"T1\" or \"T2\"\nreturn slot~=firstSlot and (slot==\"T1\" or slot==\"T2\")",
							name = "Assigned P5_SINK1",
							uuid = "857a1edd-9fe6-4695-b6a8-4f6a78c052c6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "ddb20975-a016-b474-b3ce-469005a7530d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "64cefe83-2d8f-4a9a-9e38-52709b54b2b4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "e20e3c00-db4e-3818-8781-897092b6337d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "e9e6a68e-0d21-d02a-a9c2-5a09c4a42bbd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "d14f99df-acef-5340-b19e-1075b46aa261",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P5",
				mechanicTime = 1029.6,
				name = "[LPDU Tank] P5 Paradise 1 sink long",
				timeRange = true,
				timelineIndex = 218,
				timerEndOffset = -6,
				timerStartOffset = -10,
				uuid = "2cb09458-3c1e-b8ce-a3af-892ca0da396d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 22,
							conditions = 
							{
								
								{
									"4cf8e0b8-4b9c-a804-b56d-1b89dbd7fdef",
									true,
								},
								
								{
									"d7119ddd-4f8e-6e02-b012-ae123572fd85",
									true,
								},
								
								{
									"1948e480-ea77-2519-af5d-2418792579f2",
									true,
								},
							},
							uuid = "ed5a7fd8-1e8f-318c-95bf-dd8ec74d017a",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 40,
							conditions = 
							{
								
								{
									"6749db35-db62-7158-b817-f09a6835a8e9",
									true,
								},
								
								{
									"d7119ddd-4f8e-6e02-b012-ae123572fd85",
									true,
								},
								
								{
									"1948e480-ea77-2519-af5d-2418792579f2",
									true,
								},
							},
							uuid = "747e95e4-d49e-224b-88c7-1947ec3619f9",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 3634,
							conditions = 
							{
								
								{
									"0c954354-58bd-5203-813a-1731f109192f",
									true,
								},
								
								{
									"d7119ddd-4f8e-6e02-b012-ae123572fd85",
									true,
								},
								
								{
									"1948e480-ea77-2519-af5d-2418792579f2",
									true,
								},
							},
							uuid = "b6b54a43-7beb-f98a-9d9c-dff49c3c2fbb",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25754,
							conditions = 
							{
								
								{
									"0c954354-58bd-5203-813a-1731f109192f",
									true,
								},
								
								{
									"d7119ddd-4f8e-6e02-b012-ae123572fd85",
									true,
								},
								
								{
									"1948e480-ea77-2519-af5d-2418792579f2",
									true,
								},
							},
							uuid = "23c0243a-5db6-4e38-9752-6bebba4eb080",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16140,
							conditions = 
							{
								
								{
									"5e5704b4-9874-5342-9751-83c672c0795a",
									true,
								},
								
								{
									"d7119ddd-4f8e-6e02-b012-ae123572fd85",
									true,
								},
								
								{
									"1948e480-ea77-2519-af5d-2418792579f2",
									true,
								},
							},
							uuid = "6461fb15-c5b5-fbbe-9730-83c69c8c126d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nlocal s=Settings.FFXIVMINION\nlocal first=s.LPDU_FRU_P5FirstInvuln or ((s.LPDU_FRU_DarklitTank or \"OT invulns\")==\"MT invulns\" and \"OT\" or \"MT\")\nlocal firstSlot=first==\"MT\" and \"T1\" or \"T2\"\nreturn slot~=firstSlot and (slot==\"T1\" or slot==\"T2\")",
							name = "Assigned P5_SINK1",
							uuid = "d7119ddd-4f8e-6e02-b012-ae123572fd85",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "1948e480-ea77-2519-af5d-2418792579f2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "4cf8e0b8-4b9c-a804-b56d-1b89dbd7fdef",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "6749db35-db62-7158-b817-f09a6835a8e9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "0c954354-58bd-5203-813a-1731f109192f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "5e5704b4-9874-5342-9751-83c672c0795a",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P5",
				mechanicTime = 1029.6,
				name = "[LPDU Tank] P5 Paradise 1 sink extra",
				timeRange = true,
				timelineIndex = 218,
				timerEndOffset = -3,
				timerStartOffset = -7,
				uuid = "e8ea0d46-6b53-1fa0-a003-8b8cc567f1da",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 25746,
							conditions = 
							{
								
								{
									"8d6c252f-a2d5-2a46-9e8b-1121553a33c1",
									true,
								},
								
								{
									"2e58f0d8-6169-f42c-806c-bcb77eb37543",
									true,
								},
								
								{
									"3d043754-a060-6512-95fd-72d4573804f2",
									true,
								},
							},
							uuid = "26313f37-caab-8bcd-8810-a2b05532f1e9",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25751,
							conditions = 
							{
								
								{
									"162e4c2a-e6c3-a39a-9c56-ab26bc7e9998",
									true,
								},
								
								{
									"2e58f0d8-6169-f42c-806c-bcb77eb37543",
									true,
								},
								
								{
									"3d043754-a060-6512-95fd-72d4573804f2",
									true,
								},
							},
							uuid = "cbc167b2-3f9b-d1b7-918a-ac544efec241",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7393,
							conditions = 
							{
								
								{
									"33709bbd-90dc-ad29-86aa-cbcbe769ef65",
									true,
								},
								
								{
									"2e58f0d8-6169-f42c-806c-bcb77eb37543",
									true,
								},
								
								{
									"3d043754-a060-6512-95fd-72d4573804f2",
									true,
								},
							},
							uuid = "924869c6-ca4f-1958-9f66-526384319901",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25758,
							conditions = 
							{
								
								{
									"4aec45fc-49a9-acd5-8fca-4e7850d4f9ae",
									true,
								},
								
								{
									"2e58f0d8-6169-f42c-806c-bcb77eb37543",
									true,
								},
								
								{
									"3d043754-a060-6512-95fd-72d4573804f2",
									true,
								},
							},
							uuid = "c290daaa-63ca-b96c-ba06-1f7f9179cc8f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nlocal s=Settings.FFXIVMINION\nlocal first=s.LPDU_FRU_P5FirstInvuln or ((s.LPDU_FRU_DarklitTank or \"OT invulns\")==\"MT invulns\" and \"OT\" or \"MT\")\nlocal firstSlot=first==\"MT\" and \"T1\" or \"T2\"\nreturn slot~=firstSlot and (slot==\"T1\" or slot==\"T2\")",
							name = "Assigned P5_SINK1",
							uuid = "2e58f0d8-6169-f42c-806c-bcb77eb37543",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "3d043754-a060-6512-95fd-72d4573804f2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "8d6c252f-a2d5-2a46-9e8b-1121553a33c1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "162e4c2a-e6c3-a39a-9c56-ab26bc7e9998",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "33709bbd-90dc-ad29-86aa-cbcbe769ef65",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "4aec45fc-49a9-acd5-8fca-4e7850d4f9ae",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P5",
				mechanicTime = 1029.6,
				name = "[LPDU Tank] P5 Paradise 1 sink short",
				timeRange = true,
				timelineIndex = 218,
				timerStartOffset = -3,
				uuid = "b89a0dad-3657-6b6c-a770-9443a57a41ae",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7533,
							conditions = 
							{
								
								{
									"38a54725-4024-5339-807e-5981678b974a",
									true,
								},
								
								{
									"4f1270ef-43ae-4a92-acc6-38fa6d4b88ca",
									true,
								},
							},
							targetContentID = 13561,
							targetType = "ContentID",
							uuid = "8a8aafbd-74c6-e674-a3b2-686aadf0d129",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7533,
							conditions = 
							{
								
								{
									"368b66fa-3298-2c32-8264-5027fe906948",
									true,
								},
								
								{
									"4f1270ef-43ae-4a92-acc6-38fa6d4b88ca",
									true,
								},
							},
							targetContentID = 13561,
							targetType = "ContentID",
							uuid = "80006f69-c5bc-145c-b09a-df33a7ae7af9",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7533,
							conditions = 
							{
								
								{
									"33d91500-dcd0-0552-8ec5-1865ccd67f3a",
									true,
								},
								
								{
									"4f1270ef-43ae-4a92-acc6-38fa6d4b88ca",
									true,
								},
							},
							targetContentID = 13561,
							targetType = "ContentID",
							uuid = "43173d3b-6ff4-e6fa-bb04-313ad5a98403",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7533,
							conditions = 
							{
								
								{
									"0224fce8-205b-18ff-adaf-89e0345ea52c",
									true,
								},
								
								{
									"4f1270ef-43ae-4a92-acc6-38fa6d4b88ca",
									true,
								},
							},
							targetContentID = 13561,
							targetType = "ContentID",
							uuid = "b60138b0-2394-ddb6-a082-9e991ca7b31e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nlocal s=Settings.FFXIVMINION\nlocal first=s.LPDU_FRU_P5FirstInvuln or ((s.LPDU_FRU_DarklitTank or \"OT invulns\")==\"MT invulns\" and \"OT\" or \"MT\")\nlocal firstSlot=first==\"MT\" and \"T1\" or \"T2\"\nreturn slot~=firstSlot and (slot==\"T1\" or slot==\"T2\")",
							name = "Assigned P5_SINK1",
							uuid = "4f1270ef-43ae-4a92-acc6-38fa6d4b88ca",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "38a54725-4024-5339-807e-5981678b974a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "368b66fa-3298-2c32-8264-5027fe906948",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "33d91500-dcd0-0552-8ec5-1865ccd67f3a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "0224fce8-205b-18ff-adaf-89e0345ea52c",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P5",
				mechanicTime = 1029.6,
				name = "[LPDU Tank] P5 Paradise 1 sink Provoke",
				timeRange = true,
				timelineIndex = 218,
				timerEndOffset = -2,
				timerStartOffset = -5,
				uuid = "f0e15cfd-e313-8cba-9f2d-57fec7fc7c98",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7533,
							conditions = 
							{
								
								{
									"81d93443-4a68-e6fa-85a1-8fa7d9c5f5fe",
									true,
								},
								
								{
									"3ccae06b-7e78-e071-ba62-e19aa10119ed",
									true,
								},
								
								{
									"a531b725-c575-0f8f-a875-29438b3f258b",
									true,
								},
							},
							targetContentID = 13561,
							targetType = "ContentID",
							uuid = "077634f6-242a-0e81-a8d6-e706ab8b2468",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7533,
							conditions = 
							{
								
								{
									"81d93443-4a68-e6fa-85a1-8fa7d9c5f5fe",
									true,
								},
								
								{
									"3bdf0414-85cb-f11d-9cd8-81f4d4ebbe90",
									true,
								},
								
								{
									"a531b725-c575-0f8f-a875-29438b3f258b",
									true,
								},
							},
							targetContentID = 13561,
							targetType = "ContentID",
							uuid = "9a078742-9423-e5c8-9e94-8811e4e5aa11",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7533,
							conditions = 
							{
								
								{
									"81d93443-4a68-e6fa-85a1-8fa7d9c5f5fe",
									true,
								},
								
								{
									"1919d102-383a-2607-b4b9-6281e197c69f",
									true,
								},
								
								{
									"a531b725-c575-0f8f-a875-29438b3f258b",
									true,
								},
							},
							targetContentID = 13561,
							targetType = "ContentID",
							uuid = "31529bcf-69be-8759-bc6c-0188dc0ad4ac",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7533,
							conditions = 
							{
								
								{
									"81d93443-4a68-e6fa-85a1-8fa7d9c5f5fe",
									true,
								},
								
								{
									"f8d27df0-c9de-4e8e-a2b9-1a33d901cd18",
									true,
								},
								
								{
									"a531b725-c575-0f8f-a875-29438b3f258b",
									true,
								},
							},
							targetContentID = 13561,
							targetType = "ContentID",
							uuid = "7b8e2e3d-99a4-1aa3-93ac-7aa0b883ac6d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nlocal s=Settings.FFXIVMINION\nlocal first=s.LPDU_FRU_P5FirstInvuln or ((s.LPDU_FRU_DarklitTank or \"OT invulns\")==\"MT invulns\" and \"OT\" or \"MT\")\nlocal firstSlot=first==\"MT\" and \"T1\" or \"T2\"\nreturn slot==firstSlot",
							name = "Assigned P5_INV1",
							uuid = "a531b725-c575-0f8f-a875-29438b3f258b",
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
							name = "Paradise first hit",
							spellIDList = 
							{
								39879,
							},
							uuid = "81d93443-4a68-e6fa-85a1-8fa7d9c5f5fe",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "3ccae06b-7e78-e071-ba62-e19aa10119ed",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "3bdf0414-85cb-f11d-9cd8-81f4d4ebbe90",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "1919d102-383a-2607-b4b9-6281e197c69f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "f8d27df0-c9de-4e8e-a2b9-1a33d901cd18",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P5",
				eventType = 2,
				mechanicTime = 1029.6,
				name = "[LPDU Tank] P5 Paradise 1 invuln Provoke after first hit",
				timeRange = true,
				timelineIndex = 218,
				timerEndOffset = 7,
				uuid = "b01d7cb2-b322-b91b-9e18-f9a618a20828",
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
									"ad23ea1e-3a98-017a-9a66-20c9d70355a4",
									true,
								},
								
								{
									"90f8dd06-3525-4e23-b427-586c17577277",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Mantra Polarizing Strikes 1",
							uuid = "7a720b3b-871c-4b18-95bf-ecd44dd4ec2d",
							version = 2.1,
						},
					},
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
							uuid = "ad23ea1e-3a98-017a-9a66-20c9d70355a4",
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
							name = "Polarizing Strikes 1 CD",
							uuid = "90f8dd06-3525-4e23-b427-586c17577277",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1051.2,
				name = "[LPDU] Mantra Polarizing Strikes 1",
				timeRange = true,
				timelineIndex = 226,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "8905fbd2-a42b-c5e7-a545-c11c9af18f45",
				version = 2,
			},
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
									"e953ab12-9ef1-27bd-9ace-39cca9e181f2",
									true,
								},
								
								{
									"4530a292-25de-2641-bdf0-76edb80a8d72",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] R2 Addle 2 Polarizing Strikes 1",
							targetType = "Enemy",
							uuid = "1b7cad82-e0cf-f0eb-a4cf-c8b0c010a71a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"R2\"",
							dequeueIfLuaFalse = true,
							name = "R2 roster",
							uuid = "e953ab12-9ef1-27bd-9ace-39cca9e181f2",
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
							name = "Polarizing Strikes 1 CD",
							uuid = "4530a292-25de-2641-bdf0-76edb80a8d72",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				enabled = false,
				mechanicTime = 1051.2,
				name = "[LPDU] R2 Addle 2 Polarizing Strikes 1",
				timeRange = true,
				timelineIndex = 226,
				timerEndOffset = 1,
				timerStartOffset = -5,
				uuid = "49f05020-4fcb-e177-805a-7f4ef6205f5a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Spreadsheet tank mitigation ",
				uuid = "c2929954-25c8-ae02-b522-f2cdcd87879c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P5",
				uuid = "9d366c3b-e2c6-c19d-acf9-66e4fa96fe6c",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"6defe1ba-6ca7-0781-862f-3503f39dfa80",
									true,
								},
								
								{
									"22b1cf0d-d388-99c6-a1b4-fccf4cce3d70",
									true,
								},
							},
							uuid = "cfd59bc9-bfd7-86f5-aec1-3839f0de369e",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"8a456641-03f3-3d4f-af61-4de8fe7b9c55",
									true,
								},
								
								{
									"22b1cf0d-d388-99c6-a1b4-fccf4cce3d70",
									true,
								},
							},
							uuid = "46fedeb7-43d8-9f81-b88c-456bb28d2df1",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"87e3aa3d-0e3c-c473-b96c-6666febca394",
									true,
								},
								
								{
									"22b1cf0d-d388-99c6-a1b4-fccf4cce3d70",
									true,
								},
							},
							uuid = "f7054c3c-e694-00ed-af44-63d22e367d0d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"be9618d6-07c5-3495-8faf-3b92bdeb60b7",
									true,
								},
								
								{
									"22b1cf0d-d388-99c6-a1b4-fccf4cce3d70",
									true,
								},
							},
							uuid = "fa159b96-3e24-2f32-b2bb-5c5c41aebdf2",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\"",
							name = "Assigned MT",
							uuid = "22b1cf0d-d388-99c6-a1b4-fccf4cce3d70",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "6defe1ba-6ca7-0781-862f-3503f39dfa80",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "8a456641-03f3-3d4f-af61-4de8fe7b9c55",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "87e3aa3d-0e3c-c473-b96c-6666febca394",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "be9618d6-07c5-3495-8faf-3b92bdeb60b7",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P5",
				mechanicTime = 1051.2,
				name = "[LPDU Tank] P5 Polarizing 1 MT Reprisal",
				timeRange = true,
				timelineIndex = 226,
				timerStartOffset = -2,
				uuid = "90184509-b282-2aae-8987-42697091af6b",
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
				displayPath = "",
				name = "Spreadsheet tank mitigation ",
				uuid = "3eeb9b46-2a83-8466-a03f-7e26c243cf94",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P5",
				uuid = "8d507283-9dff-a4d2-a825-1b2a10f630f7",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"3e6386fd-5cb1-7f38-9e2b-080bed4743ab",
									true,
								},
								
								{
									"573da736-0204-9278-8587-82a79a154b53",
									true,
								},
							},
							uuid = "f6cc197b-8afc-7b04-ab60-d71b78aa1d34",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"b3430574-7bff-6f28-8c34-9c85d0f94522",
									true,
								},
								
								{
									"573da736-0204-9278-8587-82a79a154b53",
									true,
								},
							},
							uuid = "0dddc4cd-151d-9c22-ba83-d160d2e9346e",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"d1030651-91e5-e056-b1ad-5d1238fd2220",
									true,
								},
								
								{
									"573da736-0204-9278-8587-82a79a154b53",
									true,
								},
							},
							uuid = "49f6d918-339c-d380-821e-e58a11764968",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"4d6ba6c7-6457-528d-aeca-1896fe43016d",
									true,
								},
								
								{
									"573da736-0204-9278-8587-82a79a154b53",
									true,
								},
							},
							uuid = "53845642-723c-a167-ad9a-0ebd8ea48496",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T2\"",
							name = "Assigned OT",
							uuid = "573da736-0204-9278-8587-82a79a154b53",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "3e6386fd-5cb1-7f38-9e2b-080bed4743ab",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "b3430574-7bff-6f28-8c34-9c85d0f94522",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "d1030651-91e5-e056-b1ad-5d1238fd2220",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "4d6ba6c7-6457-528d-aeca-1896fe43016d",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P5",
				mechanicTime = 1085.2,
				name = "[LPDU Tank] P5 Box OT Reprisal",
				timeRange = true,
				timelineIndex = 236,
				timerStartOffset = -2,
				uuid = "ec50f7eb-1ebb-cca1-9427-ac86e2c58789",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"M1\"",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"R1\"",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"R1\"",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"R2\"",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"M2\"",
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
		
		{
			data = 
			{
				displayPath = "",
				name = "Spreadsheet tank mitigation ",
				uuid = "bac6aec3-b292-36b5-b08c-ab2faa2e19d7",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P5",
				uuid = "38d63caa-88c0-db3a-9b1a-64d74ce369fa",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 3540,
							conditions = 
							{
								
								{
									"3a29d305-8af6-3aca-8284-61dd06af9699",
									true,
								},
								
								{
									"8838812b-7c7f-9369-a4a1-0cc308e0433a",
									true,
								},
							},
							uuid = "181cc250-d12a-71bc-854d-d1ff6289f56f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7388,
							conditions = 
							{
								
								{
									"5e4e6e1d-0dd5-caac-9176-32235de5589d",
									true,
								},
								
								{
									"8838812b-7c7f-9369-a4a1-0cc308e0433a",
									true,
								},
							},
							uuid = "86a2eafa-b642-76d6-81c8-664d7ce81054",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16471,
							conditions = 
							{
								
								{
									"bc11414c-b132-2a14-97cb-bce5ff5dfc93",
									true,
								},
								
								{
									"8838812b-7c7f-9369-a4a1-0cc308e0433a",
									true,
								},
							},
							uuid = "a7e33b5a-f8a1-1fa0-b83f-dee3c001705c",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16160,
							conditions = 
							{
								
								{
									"a09df74c-19da-aa71-ace5-f0472abd377b",
									true,
								},
								
								{
									"8838812b-7c7f-9369-a4a1-0cc308e0433a",
									true,
								},
							},
							uuid = "29318354-8f76-6dc7-8742-080c5010b81a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "Assigned BOTH",
							uuid = "8838812b-7c7f-9369-a4a1-0cc308e0433a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "3a29d305-8af6-3aca-8284-61dd06af9699",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "5e4e6e1d-0dd5-caac-9176-32235de5589d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "bc11414c-b132-2a14-97cb-bce5ff5dfc93",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "a09df74c-19da-aa71-ace5-f0472abd377b",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P5",
				mechanicTime = 1124,
				name = "[LPDU Tank] P5 late exas 2 party",
				timeRange = true,
				timelineIndex = 243,
				timerEndOffset = -6,
				timerStartOffset = -9,
				uuid = "1be0f873-5225-3e4b-b06d-56a339b5cf08",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"b442d95e-7e90-7266-b56a-ca5af37a644c",
									true,
								},
								
								{
									"ec68a34b-af26-fe0c-aa06-d387c2992f12",
									true,
								},
							},
							uuid = "b5cae6fe-b33e-3ad3-b94c-48fa0761a60e",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"733c0424-e9c5-69ef-b6e1-7b94d0492102",
									true,
								},
								
								{
									"ec68a34b-af26-fe0c-aa06-d387c2992f12",
									true,
								},
							},
							uuid = "9bc76dbb-776c-48a3-bfdb-d790b8388d28",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"ebd98d3f-32f3-faa7-9a4c-bf5ebd4b8301",
									true,
								},
								
								{
									"ec68a34b-af26-fe0c-aa06-d387c2992f12",
									true,
								},
							},
							uuid = "26fd75e2-880a-d1ed-9f06-e4babd9c1163",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"5f54b877-b754-89ac-9193-57921a43f49a",
									true,
								},
								
								{
									"ec68a34b-af26-fe0c-aa06-d387c2992f12",
									true,
								},
							},
							uuid = "ef00e1f1-74f3-c6ff-8f84-b4d4a4972362",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\"",
							name = "Assigned MT",
							uuid = "ec68a34b-af26-fe0c-aa06-d387c2992f12",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "b442d95e-7e90-7266-b56a-ca5af37a644c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "733c0424-e9c5-69ef-b6e1-7b94d0492102",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "ebd98d3f-32f3-faa7-9a4c-bf5ebd4b8301",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "5f54b877-b754-89ac-9193-57921a43f49a",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P5",
				mechanicTime = 1124,
				name = "[LPDU Tank] P5 Akh 2 MT Reprisal",
				timeRange = true,
				timelineIndex = 243,
				timerStartOffset = -2,
				uuid = "890cd227-0170-f5dd-83d7-733085b66531",
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
				name = "Spreadsheet tank mitigation ",
				uuid = "42512063-b280-67b6-ae55-0e02caa80862",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P5",
				uuid = "35cc8bea-5370-a351-b251-4e10c98a7f6d",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 30,
							conditions = 
							{
								
								{
									"4c529ce1-af26-ca8a-99af-d70a061c7d95",
									true,
								},
								
								{
									"d03a78d1-a0b4-220d-8a6a-61da9769b30d",
									true,
								},
								
								{
									"9805dcbf-360d-14e7-8fda-649c2196233e",
									true,
								},
							},
							uuid = "bf4d4904-aef4-e808-909a-1536b48d76b3",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 43,
							conditions = 
							{
								
								{
									"fd01b965-e1be-6aca-af37-c6aa6f35a196",
									true,
								},
								
								{
									"d03a78d1-a0b4-220d-8a6a-61da9769b30d",
									true,
								},
								
								{
									"9805dcbf-360d-14e7-8fda-649c2196233e",
									true,
								},
							},
							uuid = "f0b341df-8676-c996-b59f-77025241784c",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 3638,
							conditions = 
							{
								
								{
									"9eb60d52-a324-6d28-90ee-f79163abb3a5",
									true,
								},
								
								{
									"d03a78d1-a0b4-220d-8a6a-61da9769b30d",
									true,
								},
								
								{
									"9805dcbf-360d-14e7-8fda-649c2196233e",
									true,
								},
							},
							uuid = "3b96c385-d6fb-158f-b7f3-817b18827607",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16152,
							conditions = 
							{
								
								{
									"c302e365-adec-c299-857e-4b5e99f67d8c",
									true,
								},
								
								{
									"d03a78d1-a0b4-220d-8a6a-61da9769b30d",
									true,
								},
								
								{
									"9805dcbf-360d-14e7-8fda-649c2196233e",
									true,
								},
							},
							uuid = "1199c266-6433-65f1-a101-462129f9f5ea",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nlocal s=Settings.FFXIVMINION\nlocal first=s.LPDU_FRU_P5FirstInvuln or ((s.LPDU_FRU_DarklitTank or \"OT invulns\")==\"MT invulns\" and \"OT\" or \"MT\")\nlocal firstSlot=first==\"MT\" and \"T1\" or \"T2\"\nreturn slot~=firstSlot and (slot==\"T1\" or slot==\"T2\")",
							name = "Assigned P5_INV2",
							uuid = "d03a78d1-a0b4-220d-8a6a-61da9769b30d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "9805dcbf-360d-14e7-8fda-649c2196233e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "4c529ce1-af26-ca8a-99af-d70a061c7d95",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "fd01b965-e1be-6aca-af37-c6aa6f35a196",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "9eb60d52-a324-6d28-90ee-f79163abb3a5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "c302e365-adec-c299-857e-4b5e99f67d8c",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P5",
				mechanicTime = 1146.3,
				name = "[LPDU Tank] P5 Paradise 2 invuln",
				timeRange = true,
				timelineIndex = 247,
				timerStartOffset = -3,
				uuid = "f50bf3ce-42b4-6f97-849f-948ee65f6bd0",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7382,
							conditions = 
							{
								
								{
									"d62dc138-f3b3-1353-a5a1-2bb4529eabe0",
									true,
								},
								
								{
									"af14de83-1d94-ee1f-9a10-7a577781b89d",
									true,
								},
								
								{
									"ad5034f9-f75d-7c98-b93b-77ff14035c6b",
									true,
								},
							},
							targetType = "Other Tank",
							uuid = "5e209897-b89c-2785-9d2c-9bf685eaa263",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16464,
							conditions = 
							{
								
								{
									"8b0a2b65-f6d1-e7cd-8a0a-6fbe76bb63c3",
									true,
								},
								
								{
									"af14de83-1d94-ee1f-9a10-7a577781b89d",
									true,
								},
								
								{
									"ad5034f9-f75d-7c98-b93b-77ff14035c6b",
									true,
								},
							},
							targetType = "Other Tank",
							uuid = "2f5ce351-b875-3413-8fc7-2b95b65cd8bc",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7393,
							conditions = 
							{
								
								{
									"f7b1de1f-1fd9-8b0e-a9fa-28f04b7a5005",
									true,
								},
								
								{
									"af14de83-1d94-ee1f-9a10-7a577781b89d",
									true,
								},
								
								{
									"ad5034f9-f75d-7c98-b93b-77ff14035c6b",
									true,
								},
							},
							targetType = "Other Tank",
							uuid = "45d8379c-1bf3-b01f-8399-5955ee9e0210",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25758,
							conditions = 
							{
								
								{
									"bba3d15d-2f5c-22ba-9987-06060b31d250",
									true,
								},
								
								{
									"af14de83-1d94-ee1f-9a10-7a577781b89d",
									true,
								},
								
								{
									"ad5034f9-f75d-7c98-b93b-77ff14035c6b",
									true,
								},
							},
							targetType = "Other Tank",
							uuid = "2e272af4-8ba3-01b2-8d91-4bb79eeabe13",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nlocal s=Settings.FFXIVMINION\nlocal first=s.LPDU_FRU_P5FirstInvuln or ((s.LPDU_FRU_DarklitTank or \"OT invulns\")==\"MT invulns\" and \"OT\" or \"MT\")\nlocal firstSlot=first==\"MT\" and \"T1\" or \"T2\"\nreturn slot~=firstSlot and (slot==\"T1\" or slot==\"T2\")",
							name = "Assigned P5_INV2",
							uuid = "af14de83-1d94-ee1f-9a10-7a577781b89d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "ad5034f9-f75d-7c98-b93b-77ff14035c6b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "d62dc138-f3b3-1353-a5a1-2bb4529eabe0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "8b0a2b65-f6d1-e7cd-8a0a-6fbe76bb63c3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "f7b1de1f-1fd9-8b0e-a9fa-28f04b7a5005",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "bba3d15d-2f5c-22ba-9987-06060b31d250",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P5",
				mechanicTime = 1146.3,
				name = "[LPDU Tank] P5 Paradise 2 support",
				timeRange = true,
				timelineIndex = 247,
				timerStartOffset = -3,
				uuid = "a5217973-b09a-1212-8308-ad5e2619db01",
				version = 2,
			},
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
							conditions = 
							{
								
								{
									"72d12a42-4ac5-471d-9f65-2c35e20d9169",
									true,
								},
								
								{
									"23c8ab4b-042d-1e9d-bac8-572605c4fe7d",
									true,
								},
								
								{
									"49d1def8-3050-6542-ab7b-56803416d17f",
									true,
								},
							},
							uuid = "20db2fa1-f497-d9aa-a26d-d97ebb8e42ed",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							conditions = 
							{
								
								{
									"c6e524cb-a868-7b31-bc31-2f5a768ad008",
									true,
								},
								
								{
									"23c8ab4b-042d-1e9d-bac8-572605c4fe7d",
									true,
								},
								
								{
									"49d1def8-3050-6542-ab7b-56803416d17f",
									true,
								},
							},
							uuid = "a42fe900-0f1d-f3c0-ab60-46696c6f45da",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							conditions = 
							{
								
								{
									"0c12f7a9-93c4-3775-a1fc-f00c8fb2ecb7",
									true,
								},
								
								{
									"23c8ab4b-042d-1e9d-bac8-572605c4fe7d",
									true,
								},
								
								{
									"49d1def8-3050-6542-ab7b-56803416d17f",
									true,
								},
							},
							uuid = "525262c7-4273-1813-99c9-443aa3f82327",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							conditions = 
							{
								
								{
									"6faae1ad-6891-ff0c-9e23-7987d48f1923",
									true,
								},
								
								{
									"23c8ab4b-042d-1e9d-bac8-572605c4fe7d",
									true,
								},
								
								{
									"49d1def8-3050-6542-ab7b-56803416d17f",
									true,
								},
							},
							uuid = "de35b737-6a29-ee62-b8c2-406fbb3f0fd4",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nlocal s=Settings.FFXIVMINION\nlocal first=s.LPDU_FRU_P5FirstInvuln or ((s.LPDU_FRU_DarklitTank or \"OT invulns\")==\"MT invulns\" and \"OT\" or \"MT\")\nlocal firstSlot=first==\"MT\" and \"T1\" or \"T2\"\nreturn slot==firstSlot",
							name = "Assigned P5_SINK2",
							uuid = "23c8ab4b-042d-1e9d-bac8-572605c4fe7d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "49d1def8-3050-6542-ab7b-56803416d17f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "72d12a42-4ac5-471d-9f65-2c35e20d9169",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "c6e524cb-a868-7b31-bc31-2f5a768ad008",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "0c12f7a9-93c4-3775-a1fc-f00c8fb2ecb7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "6faae1ad-6891-ff0c-9e23-7987d48f1923",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P5",
				mechanicTime = 1146.3,
				name = "[LPDU Tank] P5 Paradise 2 sink rampart",
				timeRange = true,
				timelineIndex = 247,
				timerEndOffset = -8,
				timerStartOffset = -12,
				uuid = "cc9f5b46-8eec-713f-ae7b-7d109fa74e26",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 36920,
							conditions = 
							{
								
								{
									"b941ef7c-8aba-9c5c-8aff-cd692b2955fc",
									true,
								},
								
								{
									"fd032e55-5963-c0f7-b5d0-c9b6a4f5bed7",
									true,
								},
								
								{
									"1af3547a-b39f-1bb7-83ec-e0d37eca78ce",
									true,
								},
							},
							uuid = "f4b62b4b-8095-0f81-8f66-afe2cd2ca298",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 36923,
							conditions = 
							{
								
								{
									"8f5dc9cc-49ff-1737-9872-0cd0aac48473",
									true,
								},
								
								{
									"fd032e55-5963-c0f7-b5d0-c9b6a4f5bed7",
									true,
								},
								
								{
									"1af3547a-b39f-1bb7-83ec-e0d37eca78ce",
									true,
								},
							},
							uuid = "a2547db6-928e-677d-ad51-9e95fd3cb507",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 36927,
							conditions = 
							{
								
								{
									"e2498dd5-1f98-efe5-a4aa-62450a0604ef",
									true,
								},
								
								{
									"fd032e55-5963-c0f7-b5d0-c9b6a4f5bed7",
									true,
								},
								
								{
									"1af3547a-b39f-1bb7-83ec-e0d37eca78ce",
									true,
								},
							},
							uuid = "3cacd6b6-78c8-ee00-8bfc-36d413b448bb",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 36935,
							conditions = 
							{
								
								{
									"713b8cde-655e-0089-a41b-e1762fdc7645",
									true,
								},
								
								{
									"fd032e55-5963-c0f7-b5d0-c9b6a4f5bed7",
									true,
								},
								
								{
									"1af3547a-b39f-1bb7-83ec-e0d37eca78ce",
									true,
								},
							},
							uuid = "553274db-756d-6431-b744-62e32af16593",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nlocal s=Settings.FFXIVMINION\nlocal first=s.LPDU_FRU_P5FirstInvuln or ((s.LPDU_FRU_DarklitTank or \"OT invulns\")==\"MT invulns\" and \"OT\" or \"MT\")\nlocal firstSlot=first==\"MT\" and \"T1\" or \"T2\"\nreturn slot==firstSlot",
							name = "Assigned P5_SINK2",
							uuid = "fd032e55-5963-c0f7-b5d0-c9b6a4f5bed7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "1af3547a-b39f-1bb7-83ec-e0d37eca78ce",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "b941ef7c-8aba-9c5c-8aff-cd692b2955fc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "8f5dc9cc-49ff-1737-9872-0cd0aac48473",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "e2498dd5-1f98-efe5-a4aa-62450a0604ef",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "713b8cde-655e-0089-a41b-e1762fdc7645",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P5",
				mechanicTime = 1146.3,
				name = "[LPDU Tank] P5 Paradise 2 sink long",
				timeRange = true,
				timelineIndex = 247,
				timerEndOffset = -6,
				timerStartOffset = -10,
				uuid = "2898cc08-d536-8b36-8533-830e07ecb655",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 22,
							conditions = 
							{
								
								{
									"56c22d1e-7f56-c134-a9db-49b550188913",
									true,
								},
								
								{
									"fa93637b-45e3-5ced-b44e-4cfa1679eef1",
									true,
								},
								
								{
									"0af4d8a0-0fdb-693b-9fc5-49481fd56698",
									true,
								},
							},
							uuid = "59e24211-0e88-554b-bf11-ac91824a7eb3",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 40,
							conditions = 
							{
								
								{
									"66b951d8-65c3-a14a-8357-40365b3823b6",
									true,
								},
								
								{
									"fa93637b-45e3-5ced-b44e-4cfa1679eef1",
									true,
								},
								
								{
									"0af4d8a0-0fdb-693b-9fc5-49481fd56698",
									true,
								},
							},
							uuid = "f660d9bc-3c9a-1402-9b44-826f457d2981",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 3634,
							conditions = 
							{
								
								{
									"d3448b35-8752-2e76-a79b-849e69c7734e",
									true,
								},
								
								{
									"fa93637b-45e3-5ced-b44e-4cfa1679eef1",
									true,
								},
								
								{
									"0af4d8a0-0fdb-693b-9fc5-49481fd56698",
									true,
								},
							},
							uuid = "d95cbae9-9d72-b071-bffe-c0741bb49139",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25754,
							conditions = 
							{
								
								{
									"d3448b35-8752-2e76-a79b-849e69c7734e",
									true,
								},
								
								{
									"fa93637b-45e3-5ced-b44e-4cfa1679eef1",
									true,
								},
								
								{
									"0af4d8a0-0fdb-693b-9fc5-49481fd56698",
									true,
								},
							},
							uuid = "1bd1daf4-7634-01e3-9419-3430cc1cb0d5",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16140,
							conditions = 
							{
								
								{
									"0a96ab63-6055-08f5-8164-1a965fe7ddc0",
									true,
								},
								
								{
									"fa93637b-45e3-5ced-b44e-4cfa1679eef1",
									true,
								},
								
								{
									"0af4d8a0-0fdb-693b-9fc5-49481fd56698",
									true,
								},
							},
							uuid = "c80657f3-78c9-203a-ae9c-d85e5f4335b5",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nlocal s=Settings.FFXIVMINION\nlocal first=s.LPDU_FRU_P5FirstInvuln or ((s.LPDU_FRU_DarklitTank or \"OT invulns\")==\"MT invulns\" and \"OT\" or \"MT\")\nlocal firstSlot=first==\"MT\" and \"T1\" or \"T2\"\nreturn slot==firstSlot",
							name = "Assigned P5_SINK2",
							uuid = "fa93637b-45e3-5ced-b44e-4cfa1679eef1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "0af4d8a0-0fdb-693b-9fc5-49481fd56698",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "56c22d1e-7f56-c134-a9db-49b550188913",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "66b951d8-65c3-a14a-8357-40365b3823b6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "d3448b35-8752-2e76-a79b-849e69c7734e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "0a96ab63-6055-08f5-8164-1a965fe7ddc0",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P5",
				mechanicTime = 1146.3,
				name = "[LPDU Tank] P5 Paradise 2 sink extra",
				timeRange = true,
				timelineIndex = 247,
				timerEndOffset = -3,
				timerStartOffset = -7,
				uuid = "470c882e-4e2b-9161-b599-4f2c0070ac6e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 25746,
							conditions = 
							{
								
								{
									"b97718ef-b79f-716c-bd09-9a8f648442b4",
									true,
								},
								
								{
									"b255fd72-9893-908d-91dc-41cd3f322321",
									true,
								},
								
								{
									"5c3fb4c0-d057-d334-b727-5cc1b5d1a42f",
									true,
								},
							},
							uuid = "e94ca7a0-d3d9-ee39-bee6-5196973a61c9",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25751,
							conditions = 
							{
								
								{
									"531fd2c7-0c2d-a40d-aa21-326809ac0814",
									true,
								},
								
								{
									"b255fd72-9893-908d-91dc-41cd3f322321",
									true,
								},
								
								{
									"5c3fb4c0-d057-d334-b727-5cc1b5d1a42f",
									true,
								},
							},
							uuid = "24619f4a-efed-7978-92d7-b7afe5e34c23",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7393,
							conditions = 
							{
								
								{
									"d101768a-171c-b439-9e78-371dfc1ab691",
									true,
								},
								
								{
									"b255fd72-9893-908d-91dc-41cd3f322321",
									true,
								},
								
								{
									"5c3fb4c0-d057-d334-b727-5cc1b5d1a42f",
									true,
								},
							},
							uuid = "0343e14a-3547-4c92-bd03-97535f085792",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25758,
							conditions = 
							{
								
								{
									"b0e0a0f9-3b9b-14b9-9481-fd44498df6b7",
									true,
								},
								
								{
									"b255fd72-9893-908d-91dc-41cd3f322321",
									true,
								},
								
								{
									"5c3fb4c0-d057-d334-b727-5cc1b5d1a42f",
									true,
								},
							},
							uuid = "542114b5-59b9-a03a-ba5b-805dfba7477e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nlocal s=Settings.FFXIVMINION\nlocal first=s.LPDU_FRU_P5FirstInvuln or ((s.LPDU_FRU_DarklitTank or \"OT invulns\")==\"MT invulns\" and \"OT\" or \"MT\")\nlocal firstSlot=first==\"MT\" and \"T1\" or \"T2\"\nreturn slot==firstSlot",
							name = "Assigned P5_SINK2",
							uuid = "b255fd72-9893-908d-91dc-41cd3f322321",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return not (data.lpdu_fru_drk_profile and Settings.FFXIVMINION.LPDU_FRU_DRKOT_MitigationPlan==\"Imported DRK timings\")",
							name = "Spreadsheet personal timing plan",
							uuid = "5c3fb4c0-d057-d334-b727-5cc1b5d1a42f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "b97718ef-b79f-716c-bd09-9a8f648442b4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "531fd2c7-0c2d-a40d-aa21-326809ac0814",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "d101768a-171c-b439-9e78-371dfc1ab691",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "b0e0a0f9-3b9b-14b9-9481-fd44498df6b7",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P5",
				mechanicTime = 1146.3,
				name = "[LPDU Tank] P5 Paradise 2 sink short",
				timeRange = true,
				timelineIndex = 247,
				timerStartOffset = -3,
				uuid = "8bd48cea-3364-09a6-8f5d-4884b6f128ed",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7533,
							conditions = 
							{
								
								{
									"f0e65bbe-1e31-2ee4-b167-308f047474ef",
									true,
								},
								
								{
									"69b048f0-0df6-b621-aff8-873e3a570049",
									true,
								},
							},
							targetContentID = 13561,
							targetType = "ContentID",
							uuid = "3b6ac2c2-e3db-b25f-afc0-b3a72165d789",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7533,
							conditions = 
							{
								
								{
									"1a83d32e-e1ec-95de-9d6b-875d5376bfa1",
									true,
								},
								
								{
									"69b048f0-0df6-b621-aff8-873e3a570049",
									true,
								},
							},
							targetContentID = 13561,
							targetType = "ContentID",
							uuid = "3ff44768-baa7-04db-930b-10a180a574db",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7533,
							conditions = 
							{
								
								{
									"0476b341-45d6-30b2-84c8-36e8af528eea",
									true,
								},
								
								{
									"69b048f0-0df6-b621-aff8-873e3a570049",
									true,
								},
							},
							targetContentID = 13561,
							targetType = "ContentID",
							uuid = "deb2499c-3c0b-0591-9bd0-1d2f210d7d3c",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7533,
							conditions = 
							{
								
								{
									"ccced3fe-589a-99d8-9b38-e038aff02b50",
									true,
								},
								
								{
									"69b048f0-0df6-b621-aff8-873e3a570049",
									true,
								},
							},
							targetContentID = 13561,
							targetType = "ContentID",
							uuid = "d5760efa-eeec-6a44-9324-9f6ef06d7fb5",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nlocal s=Settings.FFXIVMINION\nlocal first=s.LPDU_FRU_P5FirstInvuln or ((s.LPDU_FRU_DarklitTank or \"OT invulns\")==\"MT invulns\" and \"OT\" or \"MT\")\nlocal firstSlot=first==\"MT\" and \"T1\" or \"T2\"\nreturn slot==firstSlot",
							name = "Assigned P5_SINK2",
							uuid = "69b048f0-0df6-b621-aff8-873e3a570049",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "f0e65bbe-1e31-2ee4-b167-308f047474ef",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "1a83d32e-e1ec-95de-9d6b-875d5376bfa1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "0476b341-45d6-30b2-84c8-36e8af528eea",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "ccced3fe-589a-99d8-9b38-e038aff02b50",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P5",
				mechanicTime = 1146.3,
				name = "[LPDU Tank] P5 Paradise 2 sink Provoke",
				timeRange = true,
				timelineIndex = 247,
				timerEndOffset = -2,
				timerStartOffset = -5,
				uuid = "78796956-b1e4-56f1-b725-794d603d61ba",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7533,
							conditions = 
							{
								
								{
									"5ea15fe0-06ac-64c4-867f-eb2c51cb8c54",
									true,
								},
								
								{
									"269ee2db-2c7c-72ab-b961-0f4f07731442",
									true,
								},
								
								{
									"7989b095-55bc-f305-b49a-262693e6bd82",
									true,
								},
							},
							targetContentID = 13561,
							targetType = "ContentID",
							uuid = "3266839d-e7d0-d585-bfd7-233d56759c39",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7533,
							conditions = 
							{
								
								{
									"5ea15fe0-06ac-64c4-867f-eb2c51cb8c54",
									true,
								},
								
								{
									"723a6fec-a951-898f-a057-f622ecdc91c1",
									true,
								},
								
								{
									"7989b095-55bc-f305-b49a-262693e6bd82",
									true,
								},
							},
							targetContentID = 13561,
							targetType = "ContentID",
							uuid = "2e0aed93-8c55-ee4b-acaa-0f6c1d031996",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7533,
							conditions = 
							{
								
								{
									"5ea15fe0-06ac-64c4-867f-eb2c51cb8c54",
									true,
								},
								
								{
									"611a745a-5e00-caae-b5d3-69649003acb8",
									true,
								},
								
								{
									"7989b095-55bc-f305-b49a-262693e6bd82",
									true,
								},
							},
							targetContentID = 13561,
							targetType = "ContentID",
							uuid = "821c4b9b-dbfd-dc5d-b1f9-b5d7a412d128",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7533,
							conditions = 
							{
								
								{
									"5ea15fe0-06ac-64c4-867f-eb2c51cb8c54",
									true,
								},
								
								{
									"2b07b094-6bf7-e6ac-bcf7-90607d6fcdcf",
									true,
								},
								
								{
									"7989b095-55bc-f305-b49a-262693e6bd82",
									true,
								},
							},
							targetContentID = 13561,
							targetType = "ContentID",
							uuid = "5ace0b48-98d1-aa96-94f4-a7044f900c7b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nlocal s=Settings.FFXIVMINION\nlocal first=s.LPDU_FRU_P5FirstInvuln or ((s.LPDU_FRU_DarklitTank or \"OT invulns\")==\"MT invulns\" and \"OT\" or \"MT\")\nlocal firstSlot=first==\"MT\" and \"T1\" or \"T2\"\nreturn slot~=firstSlot and (slot==\"T1\" or slot==\"T2\")",
							name = "Assigned P5_INV2",
							uuid = "7989b095-55bc-f305-b49a-262693e6bd82",
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
							name = "Paradise first hit",
							spellIDList = 
							{
								39879,
							},
							uuid = "5ea15fe0-06ac-64c4-867f-eb2c51cb8c54",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "269ee2db-2c7c-72ab-b961-0f4f07731442",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "723a6fec-a951-898f-a057-f622ecdc91c1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "611a745a-5e00-caae-b5d3-69649003acb8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "2b07b094-6bf7-e6ac-bcf7-90607d6fcdcf",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P5",
				eventType = 2,
				mechanicTime = 1146.3,
				name = "[LPDU Tank] P5 Paradise 2 invuln Provoke after first hit",
				timeRange = true,
				timelineIndex = 247,
				timerEndOffset = 7,
				uuid = "8b7ded08-dda5-c90f-bc96-44324af0ab86",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"R2\"",
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
									"aabe13dc-50e4-42a1-8577-332576cf0afb",
									true,
								},
								
								{
									"9b3e11db-b6c7-1a0f-9119-2cf58211b3be",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Mantra Polarizing Strikes 2",
							uuid = "646a3492-2fe5-8631-b3c4-9f8baef2374b",
							version = 2.1,
						},
					},
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
							uuid = "aabe13dc-50e4-42a1-8577-332576cf0afb",
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
							name = "Polarizing Strikes 2 CD",
							uuid = "9b3e11db-b6c7-1a0f-9119-2cf58211b3be",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1162.6,
				name = "[LPDU] Mantra Polarizing Strikes 2",
				timeRange = true,
				timelineIndex = 253,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "1b86f66c-feb9-aada-a2bd-ddfe724be771",
				version = 2,
			},
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
									"c4cf9901-ada4-c4a3-a7f2-b5929a63a67d",
									true,
								},
								
								{
									"77077584-f7d3-6a1e-9908-f19a78d6e98f",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Magick Barrier Polarizing Strikes 2",
							uuid = "8bfd0ca3-c152-378d-a257-6f737b7088cd",
							version = 2.1,
						},
					},
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
							uuid = "c4cf9901-ada4-c4a3-a7f2-b5929a63a67d",
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
							name = "Polarizing Strikes 2 CD",
							uuid = "77077584-f7d3-6a1e-9908-f19a78d6e98f",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1162.6,
				name = "[LPDU] Magick Barrier Polarizing Strikes 2",
				timeRange = true,
				timelineIndex = 253,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "a488d6e8-4a29-1ece-91c1-61bf558376a5",
				version = 2,
			},
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
									"d438220c-824e-d21c-b176-c29d267b28d3",
									true,
								},
								
								{
									"25737449-3bb2-c35a-a87a-9dab31c11b22",
									true,
								},
							},
							endIfUsed = true,
							name = "[LPDU] Nature's Minne Polarizing Strikes 2",
							uuid = "09a9a3dc-7035-d9e6-b815-58130be7ec4e",
							version = 2.1,
						},
					},
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
							uuid = "d438220c-824e-d21c-b176-c29d267b28d3",
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
							name = "Polarizing Strikes 2 CD",
							uuid = "25737449-3bb2-c35a-a87a-9dab31c11b22",
							version = 3,
						},
					},
				},
				displayPath = "LPDU Mitigation",
				mechanicTime = 1162.6,
				name = "[LPDU] Nature's Minne Polarizing Strikes 2",
				timeRange = true,
				timelineIndex = 253,
				timerEndOffset = -1.5,
				timerStartOffset = -11,
				uuid = "1acc5735-d61d-a64a-8773-5dd25fb16cc1",
				version = 2,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Spreadsheet tank mitigation ",
				uuid = "cff37cc6-12b2-042a-b99f-f44191e6f694",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P5",
				uuid = "9f471392-0ddb-3274-8bd9-f4bd5c72484f",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"0f412b29-450e-f8dc-affb-af032743a525",
									true,
								},
								
								{
									"216a4c48-b914-efdc-adce-3f2244f484ec",
									true,
								},
							},
							uuid = "8274e417-88ac-4bc5-b588-d991e759092f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"442178ea-64da-022c-b5ae-1b9d130ba47c",
									true,
								},
								
								{
									"216a4c48-b914-efdc-adce-3f2244f484ec",
									true,
								},
							},
							uuid = "43d2668d-03ed-86d2-a302-5e8c51eeb3fd",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"453b3785-9fa0-83f1-a974-e115d16d6043",
									true,
								},
								
								{
									"216a4c48-b914-efdc-adce-3f2244f484ec",
									true,
								},
							},
							uuid = "b80b0f3e-7256-c519-a82d-fc5bbdd29983",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"8133fe45-2ae7-0f8a-be40-f586fb37e553",
									true,
								},
								
								{
									"216a4c48-b914-efdc-adce-3f2244f484ec",
									true,
								},
							},
							uuid = "69576c8e-5810-4c4e-b263-74d43f6ab01a",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T2\"",
							name = "Assigned OT",
							uuid = "216a4c48-b914-efdc-adce-3f2244f484ec",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "0f412b29-450e-f8dc-affb-af032743a525",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "442178ea-64da-022c-b5ae-1b9d130ba47c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "453b3785-9fa0-83f1-a974-e115d16d6043",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "8133fe45-2ae7-0f8a-be40-f586fb37e553",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P5",
				mechanicTime = 1162.6,
				name = "[LPDU Tank] P5 Polarizing 2 OT Reprisal",
				timeRange = true,
				timelineIndex = 253,
				timerStartOffset = -2,
				uuid = "12152164-7e07-a770-a866-2d0c2abf627c",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"M1\"",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"R1\"",
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
		
		{
			data = 
			{
				displayPath = "",
				name = "Spreadsheet tank mitigation ",
				uuid = "bb29912c-eefb-5bef-8058-11e5f4301c6e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P5",
				uuid = "da026afd-3522-0a3a-874c-9f52dc3df350",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"0cf1df2a-e35b-8920-a5c6-2c06dbeced04",
									true,
								},
								
								{
									"f7812a71-67da-22cb-836d-1b3299ed9e1e",
									true,
								},
							},
							uuid = "43cbce90-7ce9-bc01-84da-d1e511084cbc",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"06510388-3fc2-1a5b-90d2-f419a1678864",
									true,
								},
								
								{
									"f7812a71-67da-22cb-836d-1b3299ed9e1e",
									true,
								},
							},
							uuid = "d4f2b4cc-a934-5564-951f-55f26b19df13",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"68577fde-974f-dec7-a6d8-d33ca518910c",
									true,
								},
								
								{
									"f7812a71-67da-22cb-836d-1b3299ed9e1e",
									true,
								},
							},
							uuid = "2d357982-67a1-4cde-9532-474c39c98cca",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7535,
							conditions = 
							{
								
								{
									"f04b5899-38a6-dd28-a709-f2952bf75c67",
									true,
								},
								
								{
									"f7812a71-67da-22cb-836d-1b3299ed9e1e",
									true,
								},
							},
							uuid = "699994fd-91a9-aea2-b2e5-947b93318f19",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\"",
							name = "Assigned MT",
							uuid = "f7812a71-67da-22cb-836d-1b3299ed9e1e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "0cf1df2a-e35b-8920-a5c6-2c06dbeced04",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "06510388-3fc2-1a5b-90d2-f419a1678864",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "68577fde-974f-dec7-a6d8-d33ca518910c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "f04b5899-38a6-dd28-a709-f2952bf75c67",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P5",
				mechanicTime = 1187.6,
				name = "[LPDU Tank] P5 Fulgent 3 MT Reprisal",
				timeRange = true,
				timelineIndex = 262,
				timerStartOffset = -3,
				uuid = "6e66bde0-50e5-8d6e-93bb-e530a5830e2a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7385,
							conditions = 
							{
								
								{
									"d2606bf1-22ad-41c1-8349-a4f1ab27c8ef",
									true,
								},
								
								{
									"0842795f-95f5-7426-bb95-07764458d72d",
									true,
								},
							},
							ignoreWeaveRules = true,
							uuid = "1ea12b04-dad3-30e1-8dcc-e12dee29dbbc",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "Assigned BOTH",
							uuid = "0842795f-95f5-7426-bb95-07764458d72d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "d2606bf1-22ad-41c1-8349-a4f1ab27c8ef",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P5",
				mechanicTime = 1187.6,
				name = "[LPDU Tank] P5 Fulgent 3 PLD wings",
				timeRange = true,
				timelineIndex = 262,
				timerStartOffset = -2,
				uuid = "9278282c-f99c-2cac-a69c-935db0cb81bb",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"R1\"",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"R2\"",
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
							conditionLua = "local roster = AnyoneCore.Roster\nif not roster.current() then return false end\nreturn roster.mySlot() == \"M2\"",
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
		
		{
			data = 
			{
				displayPath = "",
				name = "Spreadsheet tank mitigation ",
				uuid = "ef6a5469-50db-886d-a7f8-a9f6b018562e",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "Spreadsheet tank mitigation ",
				name = " P5",
				uuid = "599b75a0-fdf8-a907-b03e-929448897bdc",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 3540,
							conditions = 
							{
								
								{
									"94b5aeba-a926-d1fd-9f87-67fa24c7e046",
									true,
								},
								
								{
									"f3a99685-6101-9f83-9e2d-ba385a6f05ec",
									true,
								},
							},
							uuid = "76df6af6-670c-7722-9130-a8c3f6452f14",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7388,
							conditions = 
							{
								
								{
									"bd8bd8d5-eb71-2492-9cee-56598cea26e0",
									true,
								},
								
								{
									"f3a99685-6101-9f83-9e2d-ba385a6f05ec",
									true,
								},
							},
							uuid = "a2d3f0c6-b4f8-220e-b3f9-08690e87c1ee",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16471,
							conditions = 
							{
								
								{
									"d016a532-81f5-e22c-9b9b-9387adbe9b12",
									true,
								},
								
								{
									"f3a99685-6101-9f83-9e2d-ba385a6f05ec",
									true,
								},
							},
							uuid = "b2634a85-4e3d-cf01-88c2-883957c4365e",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 16160,
							conditions = 
							{
								
								{
									"a80262ee-4d84-57dc-8941-ae43ef96f945",
									true,
								},
								
								{
									"f3a99685-6101-9f83-9e2d-ba385a6f05ec",
									true,
								},
							},
							uuid = "7ac38f53-5723-b0ed-8d71-5ca5fbfe6eeb",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local r=AnyoneCore.Roster\nif not r.current() then return false end\nlocal slot=r.mySlot()\nreturn slot==\"T1\" or slot==\"T2\"",
							name = "Assigned BOTH",
							uuid = "f3a99685-6101-9f83-9e2d-ba385a6f05ec",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "PALADIN",
							uuid = "94b5aeba-a926-d1fd-9f87-67fa24c7e046",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "WARRIOR",
							uuid = "bd8bd8d5-eb71-2492-9cee-56598cea26e0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "DARKKNIGHT",
							uuid = "d016a532-81f5-e22c-9b9b-9387adbe9b12",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 13,
							dequeueIfLuaFalse = true,
							jobValue = "GUNBREAKER",
							uuid = "a80262ee-4d84-57dc-8941-ae43ef96f945",
							version = 3,
						},
					},
				},
				displayPath = "Spreadsheet tank mitigation / P5",
				mechanicTime = 1214.2,
				name = "[LPDU Tank] P5 late exas 3 party",
				timeRange = true,
				timelineIndex = 268,
				timerEndOffset = -6,
				timerStartOffset = -9,
				uuid = "ceb855b1-5cf3-a1a5-b46f-a2230246dbe6",
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
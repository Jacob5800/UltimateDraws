local tbl = 
{
	[2] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "fcb9c4aa-5957-5e46-5595-bf444bd3d8fa",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\LPDU mits",
				uuid = "7cd7de62-229b-c166-0f45-30a8499c73f2",
			},
			inheritanceRoot = "UWUReactions\\LPDU mits",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "a4265ea9-735e-fbfd-b963-9b23a2b525b9",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[3] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "98fd5d01-25a9-bd1d-d6c8-7713d7fda751",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\LPDU mits",
				uuid = "95daf7b7-27ec-5aab-fe34-bbbdb08f24c7",
			},
			inheritanceRoot = "UWUReactions\\LPDU mits",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Raid Call][Garuda] Opening Mistral",
				uuid = "1b8abfb5-458e-4afa-a7f7-e40e63ac5640",
				version = 2,
			},
			inheritedObjectUUID = "abb0e70d-b161-4a97-b353-64c44c7b8865",
			inheritedOverwrites = 
			{
				actions = 
				{
					
					{
						type = "add",
						value = 
						{
							data = 
							{
								name = "",
								uuid = "daf36298-94ab-bd7e-aa71-d30b210583e3",
								version = 2.1,
							},
							inheritedObjectUUID = "e394d079-7d1f-4179-93ba-bf5bca048ece",
							inheritedOverwrites = 
							{
								alertText = "MT drag Garuda south after.",
							},
						},
					},
				},
				enabled = false,
			},
		},
	},
	[4] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "1c2c1808-c9b2-360c-7e9c-4a3e200e7c18",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "7a2d8347-1c61-2f63-3e24-25bd7e96e817",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
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
									"5f8fd4aa-f7ab-700d-b9a0-d865d395ae9c",
									false,
								},
								
								{
									"ea4b8be4-a994-38b4-b885-7d708fd2d81c",
									true,
								},
							},
							setTarget = true,
							targetType = "Detection Target",
							uuid = "bc6a7307-09a2-8a1d-a582-2fce5fc4be45",
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
							inRangeValue = 5,
							name = "Within 5y of Garuda",
							partyTargetType = "Detection Target",
							rangeCheckSourceType = "ContentID",
							rangeSourceContentID = 1644,
							uuid = "802fdbfe-93cd-9854-9849-91c2ac798b68",
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
									"802fdbfe-93cd-9854-9849-91c2ac798b68",
									true,
								},
							},
							filterTargetType = "ContentID",
							name = "Spiny Plume",
							partyTargetContentID = 2091,
							uuid = "ea4b8be4-a994-38b4-b885-7d708fd2d81c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 2091,
							name = "Already Targeting Spiny",
							uuid = "5f8fd4aa-f7ab-700d-b9a0-d865d395ae9c",
							version = 3,
						},
					},
				},
				mechanicTime = 18,
				name = "[Target] Spiny Plume - Melee",
				throttleTime = 250,
				timeRange = true,
				timelineIndex = 4,
				timerEndOffset = 13,
				timerStartOffset = 9,
				uuid = "20bd0b57-ff7b-4092-b712-1cc4f2c7e09e",
				version = 2,
			},
		},
	},
	[8] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "8f3e151c-082c-74f8-9a73-95c2203c28ac",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "a1e53e23-335f-dd87-bba4-bba995c26cf3",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[9] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "1f3243ab-1367-8ba7-e36b-f59914b23efb",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "864e0b14-c263-25f8-508f-c9b299920124",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[10] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "e8fbac3a-ecfe-0fc6-5406-8d74f91f730a",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[11] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "0a7eb8c8-1d2f-c44c-4438-e0ea511db098",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "3737f9f1-c21e-682d-7f54-1c8383beb581",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[12] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "bb931855-6e5a-b6a9-bd2d-9ff39dff90a5",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\LPDU mits",
				uuid = "2721ac13-1476-d22f-82f5-71dd2febcbe3",
			},
			inheritanceRoot = "UWUReactions\\LPDU mits",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "1461fcb4-3838-e470-3e47-e1fa59836a84",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[13] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "a94fb29e-a0b1-cc92-9371-5ea46a05366e",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\LPDU mits",
				uuid = "f5e4262e-f22d-6c1a-4dcd-77c8881aef3e",
			},
			inheritanceRoot = "UWUReactions\\LPDU mits",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "ff5ceec3-8cde-953f-af78-8db1b8936153",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Draws - Garuda",
				uuid = "87130f3e-f75b-94c6-9854-a2b3b4eb5e9b",
			},
			objectType = "folder",
		},
	},
	[14] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "2d9c4e73-778c-f99f-4b24-69d5b2e5fa43",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "MOVE!",
				uuid = "2a91c822-be18-54e0-bf9e-1f4a11357ab8",
				version = 2,
			},
			inheritedObjectUUID = "f79f20a0-3dd4-ec27-b97c-fad765b11b94",
			inheritedOverwrites = 
			{
				timerOffset = 0,
			},
		},
	},
	[15] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "80f40a5d-19dd-cec1-04db-f86f93dcf8ed",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[17] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "4e8e47af-45c5-d093-2e06-6b1dbbce5eff",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[18] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "6f10872f-e5ae-13e3-6931-86799549a77f",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "MOVE!",
				uuid = "b1d1cb2f-b645-24aa-93d8-32142b6cf1d9",
				version = 2,
			},
			inheritedObjectUUID = "cb193897-47a1-eecb-87eb-41788a04c223",
			inheritedOverwrites = 
			{
				timerOffset = -1.5,
			},
		},
		
		{
			data = 
			{
				name = "MOVE!",
				uuid = "de098aa5-592c-b5db-8161-102f52e69a20",
				version = 2,
			},
			inheritedObjectUUID = "8041bce2-c25a-eecf-a85b-5757be048797",
			inheritedOverwrites = 
			{
				timerOffset = -1.8999999761581,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "381df1d2-e515-0cde-3470-206c5913bf62",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
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
							alertPriority = 2,
							alertTTS = true,
							alertText = "Stack in middle",
							gVar = "ACR_TensorWeeb3_CD",
							uuid = "a35d8c3d-938e-ce62-8e8e-7a661f58abb6",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 93,
				name = "Stack",
				timelineIndex = 18,
				timerOffset = -13.5,
				uuid = "03c3a66b-e74e-af3c-9688-a1ef098933c5",
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
				name = "UWUReactions\\Draws LPDU",
				uuid = "49fc6300-99fb-dbd4-a737-0c2235069cd0",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Raid Call][Garuda] Double Mistral",
				uuid = "df0c8330-4057-c6eb-af2b-22ee7d46a2e9",
				version = 2,
			},
			inheritedObjectUUID = "17cd5836-d9c6-7195-8de4-93d3203a2db3",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\LPDU mits",
				uuid = "5e6256dc-0372-d1b8-ee84-15eacfb7d36c",
			},
			inheritanceRoot = "UWUReactions\\LPDU mits",
			objectType = "folder",
		},
	},
	[20] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "7e0dc8b5-68d7-d011-1ed7-672b17883185",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[21] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "e73660e3-21ce-5e87-30a2-4fb96875d673",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
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
							alertPriority = 2,
							alertTTS = true,
							alertText = "Move to 3 (SE)",
							uuid = "a13b87d6-4e61-47c9-a69e-387ac4e87529",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 100,
				name = "Move to the 3 marker",
				timelineIndex = 21,
				timerOffset = -4.0999999046326,
				uuid = "4308abb5-6a74-be8b-94e3-06f1f4bbb30b",
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
				name = "UWUReactions\\Draws LPDU",
				uuid = "53d56d9a-99c1-442e-0941-539cef81176a",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "b28c3c87-21aa-ed63-3203-2cd9220d8617",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[23] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "e38e0071-3e59-9465-9935-822b163e93c1",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
	},
	[26] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "adbfbe8e-96d3-f83a-d9df-fdc0e4293a9e",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Raid Call][Garuda] Mesohigh",
				uuid = "e891e909-2c82-8217-8745-899702141129",
				version = 2,
			},
			inheritedObjectUUID = "2bc7ce40-829a-1e5d-8791-50992f76d1e7",
			inheritedOverwrites = 
			{
				actions = 
				{
					
					{
						type = "add",
						value = 
						{
							data = 
							{
								name = "",
								uuid = "96ea087f-83e9-3b7e-afe1-4babb2e8a0b9",
								version = 2.1,
							},
							inheritedObjectUUID = "17ccdb0f-7f7c-158c-b5cb-9f252ac8578c",
							inheritedOverwrites = 
							{
								alertText = "Caster west; tank east.",
							},
						},
					},
				},
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\LPDU mits",
				uuid = "e937eb9e-e44b-6232-db15-f79c3fb97e2e",
			},
			inheritanceRoot = "UWUReactions\\LPDU mits",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Raid Call][Garuda] Mesohigh",
				uuid = "28be8436-861e-1009-80ed-cbf601ed8678",
				version = 2,
			},
			inheritedObjectUUID = "976dddef-09d3-54af-9ee3-cce2fa7997cd",
			inheritedOverwrites = 
			{
				actions = 
				{
					
					{
						type = "add",
						value = 
						{
							data = 
							{
								name = "",
								uuid = "d2aa85c5-cca3-4b20-bc0d-b91eacd364e7",
								version = 2.1,
							},
							inheritedObjectUUID = "cada556e-f226-cb01-9ad5-39910e0c9b0f",
							inheritedOverwrites = 
							{
								alertText = "Caster west; Tank east.",
							},
						},
					},
				},
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "19edd8bb-69a0-3dcf-119c-3e25d57fec8b",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[27] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "7a235145-f0f4-c691-b1d0-52eff66ca055",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\LPDU mits",
				uuid = "2d208143-43e7-7107-aa8d-810170f70413",
			},
			inheritanceRoot = "UWUReactions\\LPDU mits",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Movement - Ifrit",
				uuid = "cf4f2692-10d4-f1cc-be36-3e274d814926",
			},
			objectType = "folder",
		},
	},
	[28] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "1eb8114c-59ad-ad90-76bd-032a5ccdaedc",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "f28b5afd-1fbc-41e9-1857-e193133a1a0d",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[30] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "39b56a9c-639f-b718-c8b5-d4f26f35dcac",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[36] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "08003a57-2d3d-9433-0ea5-b7a103f87ce7",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "a97a67fe-ed02-c712-9a3e-f4f892c6bbce",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Movement - Ifrit",
				uuid = "88b1bfdb-72fe-88a3-a56b-8cf3042131c2",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"4c92f0fb-f779-ac91-bbbb-b50c2367a823",
									true,
								},
							},
							gVar = "ACR_TensorWeeb3_Hotbar_Sprint",
							name = "Sprint - Transition",
							uuid = "44a5620f-cbd5-8839-a8f1-4e0a6a745321",
							variableTogglesType = 2,
							version = 2.1,
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
							uuid = "4c92f0fb-f779-ac91-bbbb-b50c2367a823",
							version = 3,
						},
					},
				},
				displayPath = "Movement - Ifrit",
				enabled = false,
				mechanicTime = 300,
				name = "[Sprint] Ifrit Transition Prep",
				timeRange = true,
				timelineIndex = 36,
				timerEndOffset = 9,
				timerStartOffset = -1,
				uuid = "28b767b9-6e81-9b84-83b2-c16a59a67498",
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
				name = "UWUReactions\\LPDU mits",
				uuid = "9d68679f-45da-0d3b-822a-f4e16c46c92f",
			},
			inheritanceRoot = "UWUReactions\\LPDU mits",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "b68664e4-bdc6-7060-5961-0d5a38cde2b4",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
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
							alertTTS = true,
							alertText = "Use potions",
							conditions = 
							{
								
								{
									"62899cc9-9a9c-08ab-ad73-7392df5f284a",
									true,
								},
							},
							uuid = "6cc88c41-4236-efeb-b6cb-7b3aa36dd7d0",
							version = 2.1,
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
							partyTargetType = "Melee DPS",
							uuid = "62899cc9-9a9c-08ab-ad73-7392df5f284a",
							version = 3,
						},
					},
				},
				mechanicTime = 307,
				name = "[Raid Call] Use potions",
				timelineIndex = 38,
				timerOffset = -3,
				uuid = "a99f6207-8687-ea7a-9693-893abe5c451d",
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
				name = "UWUReactions\\LPDU mits",
				uuid = "d5751e4a-2273-0876-bb3c-457c49fd631a",
			},
			inheritanceRoot = "UWUReactions\\LPDU mits",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "f00f8db3-4baf-4eef-3b69-e11123c8d4c3",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[40] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "00d1323e-3e59-745a-b350-5320f8e1f78e",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
	},
	[42] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "66e1fae8-0bf1-2f94-3748-cf764a7d8138",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
	},
	[43] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "1848eb57-dd8e-fba3-3929-028d14412de7",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Alert] Ifrit - Melee DPS Close Nail",
				uuid = "5422f1ea-5d86-1f5e-8469-fa53b3455eb3",
				version = 2,
			},
			inheritedObjectUUID = "425b653b-3684-14cf-97f0-8a07d7117577",
			inheritedOverwrites = 
			{
				actions = 
				{
					
					{
						type = "add",
						value = 
						{
							data = 
							{
								name = "Melee DPS Close Nail",
								uuid = "c5ae30b7-b13a-6416-a348-d4a584ae3868",
								version = 2.1,
							},
							inheritedObjectUUID = "244dd9a1-40f5-5dc0-a2b1-209d825c6ecf",
							inheritedOverwrites = 
							{
								alertText = "CLOSE NAIL TO 40%, THEN FOLLOW ORDER",
							},
						},
					},
				},
			},
		},
		
		{
			data = 
			{
				name = "[Raid Call][Ifrit] Reverse Z Nails",
				uuid = "f1edd978-76ce-c7d0-ad5a-4c564af16829",
				version = 2,
			},
			inheritedObjectUUID = "ecc05467-4e29-34b6-9449-fa97df47a5b8",
			inheritedOverwrites = 
			{
				actions = 
				{
					
					{
						type = "add",
						value = 
						{
							data = 
							{
								name = "",
								uuid = "3724492c-510e-fedc-bdc3-e228a52bf8f7",
								version = 2.1,
							},
							inheritedObjectUUID = "ff67f309-11bd-9c44-8a0d-467f368abeef",
							inheritedOverwrites = 
							{
								alertTTS = false,
							},
						},
					},
				},
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\LPDU mits",
				uuid = "c21f8899-608f-6f4d-2476-615be221ea29",
			},
			inheritanceRoot = "UWUReactions\\LPDU mits",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "4cb75efe-4a53-1062-3ece-c2943603b2ce",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Draw] Relative-North Nail Route",
				uuid = "aeb555b5-9b80-cd31-8a6e-1d3522ce165b",
				version = 2,
			},
			inheritedObjectUUID = "0f797491-7d62-dc30-bc77-91200709d939",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[44] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "a5eb408a-9997-fd4e-544e-a57c9ef7a69a",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
	},
	[45] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "dae08161-8618-c005-89cb-228b2eb03971",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\LPDU mits",
				uuid = "2778a457-fae4-5e03-c146-8c45a8fd85a7",
			},
			inheritanceRoot = "UWUReactions\\LPDU mits",
			objectType = "folder",
		},
	},
	[46] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "d7caa744-8cc6-6df8-ac39-cf42e6a661d4",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "09ab1479-e27f-04e5-89d6-c60faffbc8c9",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[47] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "58fd5f13-9801-84a7-f532-2f19325899e3",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "4b79eac2-705b-839e-f194-7c00ffc6ced2",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[48] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "d401fcdf-a9d2-b253-5ca7-1629163724af",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[52] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "8fb03811-b96c-dccd-506c-533f15ba0961",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "6759e798-20fa-a60c-e06f-ad4ea4939ce8",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[53] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "358f69ba-c1ad-d8b6-87fa-7090e0c4c88a",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
	},
	[54] = 
	{
		
		{
			data = 
			{
				name = "MOVE!",
				uuid = "6293ba4c-076f-145a-9ab7-b166c3cee2ac",
				version = 2,
			},
			inheritedObjectUUID = "270d20c7-bef9-3b79-a7cd-253cc6117a58",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
	},
	[55] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "33fb3dd8-438b-d8bc-a1d5-2cb2a1bb82e8",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "95672189-0899-dd75-02b0-661b87973259",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[57] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "387cb5ae-befb-da82-1c6c-edec3baaba3e",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "c820955b-d644-9a47-5a67-c349746b6cab",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[58] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "57de42bb-92ce-af17-6ca6-57653513590b",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
	},
	[61] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\LPDU mits",
				uuid = "f9eb2881-7ace-eb75-decb-2f93175d0e11",
			},
			inheritanceRoot = "UWUReactions\\LPDU mits",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "4e0d40e2-8d08-2526-1a30-10e01e49da72",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[63] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "d0a161ad-2479-ce09-6a13-6a37d2ebfe7d",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
	},
	[65] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "09a430ab-489f-217f-7b3f-0e4192b7cabb",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
	},
	[66] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "acc102f7-1112-f473-52b5-84b160cfb207",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[69] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\LPDU mits",
				uuid = "4064df79-5714-bdad-8fe4-e7fbf47b9f09",
			},
			inheritanceRoot = "UWUReactions\\LPDU mits",
			objectType = "folder",
		},
	},
	[72] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "7c1325df-9031-b16b-8368-02f15d18896f",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "2bd3d7d6-e541-7bba-2dfe-6bb07b1629e6",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[74] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "526225e9-ed20-906d-68f8-f767dbea8639",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Raid Call][Titan] Geocrush",
				uuid = "ba0b1909-975c-8104-ac5c-32ac513b3551",
				version = 2,
			},
			inheritedObjectUUID = "4521d38c-71a9-38f4-a4ef-b428429084e7",
			inheritedOverwrites = 
			{
				enabled = false,
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\LPDU mits",
				uuid = "52f4ec6f-c339-9a7b-48ee-eaa9e22d90ff",
			},
			inheritanceRoot = "UWUReactions\\LPDU mits",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "e61f5294-f510-bca0-46c8-648a64c9da64",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[75] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "01b685a3-4ad4-172f-d167-a7019e530333",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[76] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "6fdf589a-4905-2af6-a72c-5c04d89892ea",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[78] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "24d43185-c994-0dc1-627a-ef9b60efed95",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "a094ff38-470f-c62c-ccc5-241e55a8b208",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[79] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "d9fecac7-8ce1-5e1b-3ee8-a56575743657",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[82] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "f3975c24-2504-8c98-96ee-5b2224909434",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\LPDU mits",
				uuid = "9623f448-5f20-4ba4-e77c-eaea53a634d8",
			},
			inheritanceRoot = "UWUReactions\\LPDU mits",
			objectType = "folder",
		},
	},
	[84] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "9907019e-50c9-e97a-c945-038059bc856e",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "9dde9fb7-f3d3-c40b-958b-49e95b2db9c7",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[85] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "ab4a6755-dcf3-b7d1-ee59-27af8db6dfa5",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\LPDU mits",
				uuid = "201a8113-9bed-2247-e4dc-01c128e4a0e3",
			},
			inheritanceRoot = "UWUReactions\\LPDU mits",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "53133068-abfd-125c-6bf2-cbf221c3ee38",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[86] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "fa3607c8-08c0-2134-5e51-17d640d4ff98",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
	},
	[87] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "bbbab6de-54cc-6682-115b-774cb37c7c2e",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[89] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\LPDU mits",
				uuid = "c76313bf-0fd8-998b-7bee-46dd80bd784f",
			},
			inheritanceRoot = "UWUReactions\\LPDU mits",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "d1e872c4-0caf-3dd0-9c9f-0396674e4194",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[90] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "68cc959f-3c5c-b273-ef2b-a42999a15e2f",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\LPDU mits",
				uuid = "f12956b1-cb5f-a55d-cc0c-9eaf7e0f0141",
			},
			inheritanceRoot = "UWUReactions\\LPDU mits",
			objectType = "folder",
		},
	},
	[92] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "7232194c-cc07-7b58-a429-5ac2ea6c43dc",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[94] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "416bc4ee-7add-af52-a351-a388367d413e",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[95] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "0e6f604c-193f-1cc8-3717-93064c84fddc",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Raid Call][Titan] Gaols 2",
				uuid = "a7deaae2-4ad5-9647-805f-99949d412f86",
				version = 2,
			},
			inheritedObjectUUID = "d494470c-4b37-5705-9b04-124ccb78a25f",
			inheritedOverwrites = 
			{
				actions = 
				{
					
					{
						type = "add",
						value = 
						{
							data = 
							{
								name = "",
								uuid = "9b5631c3-5d0d-ae67-99fe-ed7bda4f5df1",
								version = 2.1,
							},
							inheritedObjectUUID = "5a088776-6156-abaf-867e-d4a8528d9e59",
							inheritedOverwrites = 
							{
								alertText = "Break builder once formed ",
							},
						},
					},
				},
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\LPDU mits",
				uuid = "cab7cc20-f6da-c254-f1b5-b1266c52e730",
			},
			inheritanceRoot = "UWUReactions\\LPDU mits",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "dad0d1b5-2b12-a949-c31d-27d7744b3a85",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[98] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "b8d643e7-b0c3-136b-62d6-a0f1f4ca3eb7",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				name = "[Raid Call][Titan] Six Tumults",
				uuid = "cae4f1dd-70c9-d155-b912-131bc349a763",
				version = 2,
			},
			inheritedObjectUUID = "f526509c-ce0f-c60f-aa87-1a319a794337",
			inheritedOverwrites = 
			{
				actions = 
				{
					
					{
						type = "add",
						value = 
						{
							data = 
							{
								name = "",
								uuid = "2a1a0f69-dd2c-6cb5-bc0a-4cffee30a819",
								version = 2.1,
							},
							inheritedObjectUUID = "e7f71382-0468-7e71-aea1-91ea2df3b844",
							inheritedOverwrites = 
							{
								alertText = "MT take Rock/Mountain Buster alone.",
							},
						},
					},
				},
			},
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\LPDU mits",
				uuid = "8a3e3c29-af47-45e5-01bc-30273e9c0339",
			},
			inheritanceRoot = "UWUReactions\\LPDU mits",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "5d74a65a-8f7f-18f6-b272-cbe4c21bc2aa",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[99] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\LPDU mits",
				uuid = "8478c104-2291-4630-599f-da52409c6354",
			},
			inheritanceRoot = "UWUReactions\\LPDU mits",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "3f7d7a11-c3b3-c7dd-ebfb-f4b3b75965a1",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[100] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "17a08194-3cd5-ae48-24f2-2cd2515ce524",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[101] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "3337b4a3-9a8a-f197-d527-26c94d8d50f3",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[102] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "3263c251-0351-568d-1ce7-53d3d0a9aee1",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\LPDU mits",
				uuid = "ff8d7dc7-7131-3d5b-2fdc-cb7da25d30d7",
			},
			inheritanceRoot = "UWUReactions\\LPDU mits",
			objectType = "folder",
		},
	},
	[107] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "935c1cee-7662-2342-7d44-9ca8f69a5fbe",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
	},
	[109] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "7aa243ac-c09b-a068-a677-e282ba86817c",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\LPDU mits",
				uuid = "7e532b40-c320-d0b4-5523-ba0a0ffd4d10",
			},
			inheritanceRoot = "UWUReactions\\LPDU mits",
			objectType = "folder",
		},
	},
	[114] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "3ffacaca-17c2-150e-7442-75f859e74c1a",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "aa396601-0c5a-646d-ea75-db170efd5551",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[115] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "e344d4a1-e425-a7c5-7f7d-8ca7e99fdef1",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "1f9a238a-0d46-fd06-8cc0-97c8a89f849a",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[116] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "c5b36d84-695d-9eb8-8114-054ea1960754",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "df0e11d3-344b-ca7f-dff0-86853a76b1a3",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[117] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "7ffe1b04-58d2-e5b0-a222-8d3e1edf7e94",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[118] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "17ba6465-23a7-0519-01a1-5ff3451439f5",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[119] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "2f6e494d-d9e5-5a29-226f-c4dbc9d937dd",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "a596e31e-d191-2ae2-0570-f4246b0db92e",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[120] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "27f7c7dd-faca-a3b9-260d-c777c66a8f2d",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
	},
	[121] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\LPDU mits",
				uuid = "a4c76b26-49b5-b12a-7e79-ec142cfb4d76",
			},
			inheritanceRoot = "UWUReactions\\LPDU mits",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "c6e85089-fc17-dc1d-6efc-61e3d8e34719",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[123] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "f4b312f0-d369-a79c-1e17-625e4017d9c0",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
	},
	[125] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "066a8812-2f2f-2116-9fd4-80e410fea162",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "f352c455-7d89-feb1-b6f1-b24f1ef96165",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[127] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "75f59a27-4d65-8d83-c5fa-2e7de5812ef7",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[130] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "ae2cd180-e695-41ec-f253-87c2ee324c90",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "08ada14b-5785-e6df-0f6f-dcad00e0c15b",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[132] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "4338e5d6-6bfd-80b2-9a68-5dfc19ba3c26",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "3b2c4379-67c5-08cd-da30-09bfce274d89",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[133] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "6321fced-828a-0cc9-cfe4-db0b8ddba3fd",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
	},
	[134] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "8624955c-5222-c490-7d62-87f682a4c9ec",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
	},
	[136] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "3f9d5045-4e98-1a61-9317-4513fa91c155",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[138] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "6eaf2748-ed34-74f4-7b96-4a8a29c46b58",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
	},
	[140] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "a44a7af7-43b1-84db-a9bb-145d5b37f747",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\LPDU mits",
				uuid = "1b68ad79-a303-5315-a88b-b8eb3c2f1049",
			},
			inheritanceRoot = "UWUReactions\\LPDU mits",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "164daaf8-3a0a-4ee4-437e-7ee683625f88",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[141] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "cd9b4f08-5709-f70c-9dc2-ad860c0d5618",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "874a6287-7393-77b3-b7af-f24da32de3d7",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[144] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "92f64fb3-e615-7c5f-55d6-bea96dd59fc3",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "ea2d364c-b6c9-5510-a100-e7ea15b28d9c",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[146] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "4a6c9401-b301-7e1d-a894-a81bc3fc8151",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "44c48af2-5056-9e66-2d32-2f64843a16c2",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[147] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "ae28fbaa-e6af-1f46-04ab-cc4c37d2b2fa",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "6e5d08e9-c488-11cd-66bb-5833426b4079",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[148] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\LPDU mits",
				uuid = "d4eef681-f497-874d-195e-ba43372fd551",
			},
			inheritanceRoot = "UWUReactions\\LPDU mits",
			objectType = "folder",
		},
	},
	[149] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "114bf640-14ae-f794-93b3-798eeff64250",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
	},
	[151] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "b9889b19-3aa3-b82d-5504-422f482b5369",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "bdb9d23a-2436-8696-5cb0-a04060c6c5ca",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[152] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "d41b14c3-6706-c8cf-6937-257d82402d13",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[153] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "4e218e8b-8c41-57ef-e4e5-496dcf785bdb",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
	},
	[156] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "234c6daf-1f11-7863-5966-3b91c958f1bf",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[157] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "e152bd4f-73a6-872b-bf93-eff971dc535f",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
	},
	[158] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "bd1111c9-0191-b2b5-2938-07079beb7859",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[159] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "2ec83ee1-9018-bc15-b02d-22b7603e0531",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "0cdc17d2-682c-a5ee-b83b-4f788e28a322",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[161] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "2fb219ca-1352-091e-dff3-7834499e9b1a",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
	},
	[162] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "9b240753-343b-be37-b427-0ed1dcff8e63",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "9eada650-11b2-347c-1f21-c82ed4c81020",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[164] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "91fa66b5-4567-6241-4b62-84c76fec7ec5",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "15aaf9aa-e27b-97de-1189-118cc4f8cf3a",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[166] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "f8876a97-979e-a4f3-4919-c3a5bee82267",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
	},
	[169] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "c7da7185-1744-59c1-1dfb-910ff9acdb95",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[171] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "4347b723-cf71-2047-2406-643523657bf3",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
	},
	[172] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\LPDU mits",
				uuid = "62471b12-42a9-f6be-ec1b-9df49ab01ea2",
			},
			inheritanceRoot = "UWUReactions\\LPDU mits",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "5b35363d-853c-3d49-9d50-7703cacb570d",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[173] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "317221b1-cd28-5f25-8a93-6817d12e3941",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "0091fdd6-d507-4352-7202-e7f46cbf78a6",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[175] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "fdba4027-e20e-c8c3-6508-2121c0029537",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
	},
	[177] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "ebd17b85-3835-aa51-2d30-04d3b15c45d5",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
	},
	[178] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "aebcf0c7-9c46-4043-68d5-f509d99ec317",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[179] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "75532538-b14b-4e34-c42b-cb127be97fc8",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[183] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "74e14119-af97-5b6d-7862-5023dff4c929",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[185] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\LPDU mits",
				uuid = "b408135c-1cd8-fb38-4a99-3146f8fc672c",
			},
			inheritanceRoot = "UWUReactions\\LPDU mits",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "817f28f7-d44d-c3d3-fd22-dabdb5fbedc7",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[186] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "48d3da1e-14d9-d58a-0f90-d6800e4ab02e",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[188] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "81840bf3-f360-4e1f-9395-acd17f27f203",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
	},
	[189] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "57c7caa4-0acd-abf0-076b-de7a78fb4bf4",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "824b08d3-d381-e3f7-7aa3-70a9ddb3a8a3",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[190] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "27045ee6-8df5-fbf2-1abf-2fbc8d37fa76",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "968fbb55-bc28-0289-2438-ad53c2365865",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[191] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "2702b3bd-3d80-4709-f1dc-61cb8f182d8d",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
	},
	[192] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "4e14d250-1da7-502c-962f-3182093f7e20",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
	},
	[193] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "ae57dcff-121d-667b-776e-c45972eb7c4f",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
	},
	[194] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "daa83e72-da52-1c66-3064-c1600228fa42",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "6a254789-e892-7655-2773-aaff7c203e19",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[196] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "6a5992ac-0162-8fd0-98e1-2fb6aa3dd07c",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "9cdebb5b-6b35-4c27-ff82-44edcc22356b",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[199] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "b70dc625-d568-ced1-0c9e-a2d38a7e89f5",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
	},
	[201] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "a7117e09-d288-f405-6cc3-d28b5df9b319",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
	},
	[202] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "225bda2b-5676-539f-78ee-cd511bec083b",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[204] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "43e35366-8ac9-a85a-9649-0320a0105376",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "1520b125-8586-6021-d3d8-fa0f800bf835",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[206] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "6af3c6d0-5861-6394-1a41-7f761c17d720",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\LPDU mits",
				uuid = "0d78416c-2919-af78-2612-b716078e3cbc",
			},
			inheritanceRoot = "UWUReactions\\LPDU mits",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "9d4f79b7-6429-0e73-2928-b43db48a6c07",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[207] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "cb36d17f-29ff-2fa3-1c21-b28d85c3d54f",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "52840a68-67f8-a2a4-ce85-7bd6438db478",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[211] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "e33786b8-9c22-3504-84cd-dcb2720c6708",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "3fb6c1cf-4eb8-d843-d8dc-1aa132c3355f",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[212] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "5dff8fc5-b9b3-9c21-ca68-443b9184c795",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
	},
	[213] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "919bfd0e-1669-924a-ff65-9dec40c52dde",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
	},
	[214] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "cb129f63-df3e-e317-0a9c-77fd376767b3",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
	},
	[215] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\LPDU mits",
				uuid = "1e614838-b09b-16f4-0380-1906ac54d088",
			},
			inheritanceRoot = "UWUReactions\\LPDU mits",
			objectType = "folder",
		},
	},
	[216] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "c76a3ef1-78b1-df35-3365-033feeddac01",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "5ce5805a-9c1b-44f6-6ca1-24502c534cea",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[218] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "5cf1851f-6719-3ecb-023a-39918dad636f",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "9dc367f8-9a25-e02c-b4be-4d02a9636c08",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[219] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "745ee2f0-8ffc-0cbc-a819-6b3ab5bd0e40",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
	},
	[220] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "ab5e34c4-34cc-4ad0-377a-41ea161b0314",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "Mitigation - Ultima",
				uuid = "caf446bb-31cb-b816-af5d-68443737db46",
			},
			objectType = "folder",
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
									"33010725-ce7b-3879-a5ba-b209c65b3ce3",
									true,
								},
								
								{
									"83605d39-75ea-9e46-b374-7c79939217e6",
									true,
								},
							},
							name = "Feint",
							targetType = "Current Target",
							uuid = "fe9f42b1-51c5-4dc0-8a7b-74d71e73abda",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return AnyoneCore.Settings.Reactions.UWUEnableMitigation == true",
							dequeueIfLuaFalse = true,
							name = "UWU Primary",
							uuid = "33010725-ce7b-3879-a5ba-b209c65b3ce3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "return GetCurrentRole() == \"M1\"",
							dequeueIfLuaFalse = true,
							name = "Roster: M1",
							uuid = "83605d39-75ea-9e46-b374-7c79939217e6",
							version = 3,
						},
					},
				},
				displayPath = "Mitigation - Ultima",
				mechanicTime = 1409,
				name = "[Mit] Viscous Aetheroplasm 2 - M1 Feint (Primary)",
				timelineIndex = 220,
				uuid = "f5adce2e-8407-2d4e-a013-229acfc41b0c",
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
				name = "UWUReactions\\Draws LPDU",
				uuid = "2c90ec93-950f-557f-5e37-be41e7b8cf23",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
	},
	[224] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "3a758868-5111-0b2c-2c22-651e96f04178",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "store\\anyone\\uwu\\main",
				uuid = "26ad510b-fc1c-ec77-7c05-60d9abff259b",
			},
			inheritanceRoot = "store\\anyone\\uwu\\main",
			objectType = "folder",
		},
	},
	[225] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "ebdc78d7-4587-217b-3e65-cad5a22b5827",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\LPDU mits",
				uuid = "c80c3519-408e-6775-9a1d-bf931957fd69",
			},
			inheritanceRoot = "UWUReactions\\LPDU mits",
			objectType = "folder",
		},
	},
	[226] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "d464bfbe-c15f-b6f2-8d51-6b48a3c1d0ce",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
	},
	[227] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "UWUReactions\\Draws LPDU",
				uuid = "78919af5-70ea-0209-4d0c-1a3790429385",
			},
			inheritanceRoot = "UWUReactions\\Draws LPDU",
			objectType = "folder",
		},
	},
	inheritedProfiles = 
	{
		"store\\anyone\\uwu\\main",
		"UWUReactions\\Draws LPDU",
		"UWUReactions\\LPDU mits",
	},
	timelineName = "uwu",
	version = "1.0.2",
}



return tbl
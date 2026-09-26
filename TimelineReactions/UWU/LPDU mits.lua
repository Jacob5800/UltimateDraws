local tbl = 
{
	[8] = 
	{
		
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
							alertText = "Move!",
							uuid = "fe1235df-60d8-bb23-b128-8e1218c90cb2",
							version = 2.1,
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
							uuid = "6ed8cea4-3745-0321-9129-f48c0fc266d5",
							version = 3,
						},
					},
				},
				mechanicTime = 34,
				name = "Melee TTS",
				timelineIndex = 8,
				timerOffset = 0.5,
				uuid = "50479487-ec27-ac92-8780-9e8a8f8e49e0",
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
				actions = 
				{
					
					{
						data = 
						{
							aType = "Alert",
							alertPriority = 2,
							alertTTS = true,
							alertText = "Get hit by friction",
							uuid = "fe1235df-60d8-bb23-b128-8e1218c90cb2",
							version = 2.1,
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
							uuid = "6ed8cea4-3745-0321-9129-f48c0fc266d5",
							version = 3,
						},
					},
				},
				mechanicTime = 51,
				name = "Melee TTS",
				timelineIndex = 12,
				timerOffset = -2.5,
				uuid = "bbfe11a4-764a-1f0d-a089-8f26c730ca95",
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
							conditionLua = "return AnyoneCore.Settings.Reactions.UWUEnableMitigation == true",
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
							name = "Primary Mitigation",
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
							alertText = "Stay for second hit",
							uuid = "fe1235df-60d8-bb23-b128-8e1218c90cb2",
							version = 2.1,
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
							uuid = "6ed8cea4-3745-0321-9129-f48c0fc266d5",
							version = 3,
						},
					},
				},
				mechanicTime = 57,
				name = "Melee TTS",
				timelineIndex = 13,
				timerOffset = -2.5,
				uuid = "83063f98-b380-b830-b741-fa86a1f9a0f9",
				version = 2,
			},
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
							alertText = "Cleanse Debuff M1 first.",
							uuid = "fe1235df-60d8-bb23-b128-8e1218c90cb2",
							version = 2.1,
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
							uuid = "6ed8cea4-3745-0321-9129-f48c0fc266d5",
							version = 3,
						},
					},
				},
				mechanicTime = 57,
				name = "Melee TTS",
				timelineIndex = 13,
				timerOffset = 1,
				uuid = "387508f0-87e2-b743-9034-1eece2aea255",
				version = 2,
			},
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
							aType = "Alert",
							alertPriority = 3,
							alertTTS = true,
							alertText = "MOVE",
							alertVolume = 81,
							uuid = "bb9a5afc-fb2c-0266-bbd7-779ce82d06b4",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 69,
				name = "MOVE!",
				timelineIndex = 14,
				timerOffset = 0.5,
				uuid = "f79f20a0-3dd4-ec27-b97c-fad765b11b94",
				version = 2,
			},
		},
	},
	[18] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Alert",
							alertPriority = 3,
							alertTTS = true,
							alertText = "MOVE",
							alertVolume = 81,
							uuid = "bb9a5afc-fb2c-0266-bbd7-779ce82d06b4",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 93,
				name = "MOVE!",
				timelineIndex = 18,
				uuid = "8041bce2-c25a-eecf-a85b-5757be048797",
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
							conditionLua = "return AnyoneCore.Settings.Reactions.UWUEnableMitigation == true",
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
							name = "Primary Mitigation",
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
							conditionLua = "return AnyoneCore.Settings.Reactions.UWUEnableMitigation == true",
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
							name = "Primary Mitigation",
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
							conditionLua = "return AnyoneCore.Settings.Reactions.UWUEnableMitigation == true",
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
							name = "Primary Mitigation",
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
				displayPath = "",
				name = "[Raid calls]",
				uuid = "52b5bf3e-7d4c-a9a1-84a2-5f3f9d5bc21d",
			},
			objectType = "folder",
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
							alertDuration = 8000,
							alertPriority = 2,
							alertTTS = true,
							alertText = "Healers mitigate six Tumults; MT take Rock/Mountain Buster alone.",
							uuid = "7a832132-7889-2e54-9c35-69d1bc74ea64",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "[Raid calls]",
				mechanicTime = 704,
				name = "[Raid Call][Titan] Six Tumults",
				timelineIndex = 98,
				timerOffset = -1,
				uuid = "9703da0a-5e56-caea-89b0-e98fee1f730e",
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
							conditionLua = "return AnyoneCore.Settings.Reactions.UWUEnableMitigation == true",
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
							name = "Primary Mitigation",
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
							conditionLua = "return AnyoneCore.Settings.Reactions.UWUEnableMitigation == true",
							dequeueIfLuaFalse = true,
							name = "Primary Mitigation",
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
							conditionLua = "return AnyoneCore.Settings.Reactions.UWUEnableMitigation == false",
							name = "Secondary Mitigation",
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
							conditionLua = "return AnyoneCore.Settings.Reactions.UWUEnableMitigation == true",
							name = "Primary Mitigation",
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
							conditionLua = "return AnyoneCore.Settings.Reactions.UWUEnableMitigation == false",
							name = "Secondary Mitigation",
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
							conditionLua = "return AnyoneCore.Settings.Reactions.UWUEnableMitigation == true",
							name = "Primary Mitigation",
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
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 8000,
							alertPriority = 2,
							alertTTS = true,
							alertText = "Party continue Mario Kart Weights; healers prep eight Tumults.",
							uuid = "d51f1d8c-8d08-da6c-8089-caa4d28dbd9b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "[Raid calls]",
				mechanicTime = 744,
				name = "[Raid Call][Titan] Final Weights",
				timelineIndex = 109,
				timerOffset = -1,
				uuid = "8b23b696-64cb-c5ca-9c08-381b3a8327e9",
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
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 8000,
							alertPriority = 2,
							alertTTS = true,
							alertText = "Party follow Mario Kart route; dodge Landslides, step back in.",
							uuid = "c0389639-b902-a3bf-b1d3-fc3a960c58b8",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "[Raid calls]",
				mechanicTime = 722,
				name = "[Raid Call][Titan] Weights and Landslides 2",
				timelineIndex = 102,
				timerOffset = -1,
				uuid = "f25144d7-6264-9b77-9594-2c9b43003758",
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
				name = "[Raid calls]",
				uuid = "2cbe8a5a-7f66-a8ff-91ed-fa56a4ea0ec0",
			},
			objectType = "folder",
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
							alertDuration = 8000,
							alertPriority = 2,
							alertTTS = true,
							alertText = "Second gaols: marked players hold assigned spots; party ready to break.",
							uuid = "28c5fe0b-e552-5c76-b5f1-6dd5a2d902b4",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "[Raid calls]",
				mechanicTime = 684,
				name = "[Raid Call][Titan] Gaols 2",
				timelineIndex = 95,
				timerOffset = -1,
				uuid = "fbdf9b3b-da48-cb0f-8570-927549722780",
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
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 8000,
							alertPriority = 2,
							alertTTS = true,
							alertText = "Party Mario Kart for Weights; dodge first Landslides, step back in.",
							uuid = "e6019b19-e6a0-081d-8810-5b6fd3f6754b",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "[Raid calls]",
				mechanicTime = 666,
				name = "[Raid Call][Titan] Weights and Landslides",
				timelineIndex = 90,
				timerOffset = -1,
				uuid = "8eff4325-a807-5bce-bef4-e6e884146c69",
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
				name = "[Raid calls]",
				uuid = "78fb70a7-445d-9464-8d68-71502952618e",
			},
			objectType = "folder",
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
							alertDuration = 8000,
							alertPriority = 2,
							alertTTS = true,
							alertText = "Gaol marks only: 1 closest Titan, 3 closest bombs; others clear.",
							uuid = "8938bb44-20ea-4d22-966c-c83893ceaf18",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "[Raid calls]",
				mechanicTime = 639,
				name = "[Raid Call][Titan] Gaols 1",
				timelineIndex = 85,
				timerOffset = -1,
				uuid = "c80a72a8-c880-a18e-80a3-17e3139d85ab",
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
				name = "[Raid calls]",
				uuid = "0fab0377-8662-cdc9-a638-c52ca5f2cdd6",
			},
			objectType = "folder",
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
							alertDuration = 8000,
							alertPriority = 2,
							alertTTS = true,
							alertText = "MT pull Titan center; all watch his facing, hug opposite edge.",
							uuid = "5c661d6a-4294-67f9-ad50-dd6a083f9441",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "[Raid calls]",
				mechanicTime = 631,
				name = "[Raid Call][Titan] Geocrush 2",
				timelineIndex = 82,
				timerOffset = -1,
				uuid = "0d3ac96d-4c69-1ee7-88f7-7a18905991f6",
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
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 8000,
							alertPriority = 2,
							alertTTS = true,
							alertText = "Everyone edge for Geocrush; healers mitigate Earthen Fury.",
							uuid = "c97069f6-be16-65fc-a7b8-b006f78484f0",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "[Raid calls]",
				mechanicTime = 600,
				name = "[Raid Call][Titan] Geocrush",
				timelineIndex = 74,
				timerOffset = -1,
				uuid = "222950f3-17e4-d1d6-9f81-096deb8e8f01",
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
				name = "[Raid calls]",
				uuid = "31e5d162-4550-806f-aa93-a8b3e4534ae5",
			},
			objectType = "folder",
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
							alertDuration = 8000,
							alertPriority = 2,
							alertTTS = true,
							alertText = "DPS hold nails low; Reverse Z, kill each after two Eruptions.",
							uuid = "5ba0189a-6460-a752-823a-e161975555d1",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "[Raid calls]",
				mechanicTime = 328,
				name = "[Raid Call][Ifrit] Reverse Z Nails",
				timelineIndex = 43,
				timerOffset = -1,
				uuid = "e28640a1-f9fd-1e53-b0a0-2a2aa63f0ef2",
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
				name = "[Raid calls]",
				uuid = "809dcbb7-2b00-5aaf-a31c-b15bd3bdd0cb",
			},
			objectType = "folder",
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
							alertDuration = 8000,
							alertPriority = 2,
							alertTTS = true,
							alertText = "Caster west; Thermal Low tank east. Only one Mesohigh cleanse.",
							uuid = "cada556e-f226-cb01-9ad5-39910e0c9b0f",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "[Raid calls]",
				mechanicTime = 124,
				name = "[Raid Call][Garuda] Mesohigh",
				timelineIndex = 26,
				timerOffset = -1,
				uuid = "976dddef-09d3-54af-9ee3-cce2fa7997cd",
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
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 8000,
							alertPriority = 2,
							alertTTS = true,
							alertText = "Party southeast; MT prioritizes north, west, east; OT south, east, west.",
							uuid = "4e79f42c-5e29-08f5-b07f-c7b46bdb8e31",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "[Raid calls]",
				mechanicTime = 100,
				name = "[Raid Call][Garuda] Double Mistral",
				timelineIndex = 19,
				timerOffset = -1,
				uuid = "a15e17c5-63fa-5437-ab31-66f026d9cebe",
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
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Alert",
							alertDuration = 8000,
							alertPriority = 2,
							alertTTS = true,
							alertText = "OT first Mistral; party north-south line. MT drag Garuda south after.",
							uuid = "e394d079-7d1f-4179-93ba-bf5bca048ece",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				displayPath = "[Raid calls]",
				mechanicTime = 12,
				name = "[Raid Call][Garuda] Opening Mistral",
				timelineIndex = 3,
				timerOffset = -1,
				uuid = "abb0e70d-b161-4a97-b353-64c44c7b8865",
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
local tbl = 
{
	[2] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 34650,
							conditions = 
							{
								
								{
									"576f1948-8bd7-cc23-81d3-99b61d299487",
									true,
								},
							},
							targetType = "Enemy",
							uuid = "62a6e56a-a98e-df47-8766-307d0e364441",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							comparator = 2,
							eventCountdownTime = 2,
							uuid = "576f1948-8bd7-cc23-81d3-99b61d299487",
							version = 3,
						},
					},
				},
				eventType = 16,
				mechanicTime = 11.4,
				name = "[PCT] Opener",
				timeRange = true,
				timelineIndex = 2,
				timerStartOffset = -20,
				uuid = "f68d5353-9b06-40a2-9113-bc8d86817931",
				version = 2,
			},
		},
		
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
									"94e12694-ef7e-f74e-8f7d-1d8ebc64051e",
									true,
								},
							},
							holdActionDuration = 6,
							holdActionID = 24405,
							uuid = "ac047155-7a24-ed10-9d14-80fd38e2f57b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							acrOptionType = "Hold Action",
							conditions = 
							{
								
								{
									"94e12694-ef7e-f74e-8f7d-1d8ebc64051e",
									true,
								},
							},
							holdActionDuration = 19,
							holdActionID = 24393,
							uuid = "658cc1ec-3571-0736-a787-426af967bbe4",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 24378,
							name = "Shadow of Death Cast",
							uuid = "94e12694-ef7e-f74e-8f7d-1d8ebc64051e",
							version = 3,
						},
					},
				},
				eventType = 2,
				mechanicTime = 11.4,
				name = "[RPR] Reset Holds After Shadow of Death",
				timeRange = true,
				timelineIndex = 2,
				timerStartOffset = -11.39999961853,
				uuid = "ad3c4201-8cb4-8139-b5bf-3e9de92ab751",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorReaper3_AOE",
							gVarValue = 2,
							uuid = "e872094b-0e06-a4e2-b988-61a03db17d7a",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorReaper3_Enshroud",
							gVarValue = 2,
							uuid = "8bf64c01-672a-1ab1-8573-b11faf26a70d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 11.4,
				name = "[RPR] Toggles",
				timeRange = true,
				timelineIndex = 2,
				timerStartOffset = -11.39999961853,
				uuid = "954f15cc-be13-6a23-99c2-848dda4554ee",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"a78da789-9a38-3827-a980-e216245c3743",
									true,
								},
								
								{
									"fbd5fd83-fc9e-4579-a7a6-ab10651629e6",
									true,
								},
							},
							gVar = "ACR_TensorReaper3_Hotbar_ShadowOfDeath",
							name = "Use SoD Hotbar",
							uuid = "47ef254c-bbbf-eb67-a608-2936d8c6781e",
							variableTogglesType = 2,
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
									"a78da789-9a38-3827-a980-e216245c3743",
									true,
								},
								
								{
									"fbd5fd83-fc9e-4579-a7a6-ab10651629e6",
									true,
								},
							},
							gVar = "ACR_TensorReaper3_Hotbar_Potion",
							uuid = "dd34708f-5b1d-f852-a441-e48f5c1555d2",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							eventArgType = 2,
							eventSpellID = 24378,
							name = "SoD Cast",
							uuid = "a78da789-9a38-3827-a980-e216245c3743",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local player = TensorCore.mGetPlayer()\nreturn player ~= nil and eventArgs ~= nil and eventArgs.entityID == player.id",
							dequeueIfLuaFalse = true,
							name = "Player Casts Enshroud",
							uuid = "fbd5fd83-fc9e-4579-a7a6-ab10651629e6",
							version = 3,
						},
					},
				},
				eventType = 2,
				mechanicTime = 11.4,
				name = "[RPR] 2x SoD + Pot",
				timeRange = true,
				timelineIndex = 2,
				timerEndOffset = 20,
				timerStartOffset = -20,
				uuid = "fc40eb27-e270-b9aa-8ffa-64dae720f821",
				version = 2,
			},
		},
	},
	[3] = 
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
							gVar = "ACR_TensorReaper3_Hotbar_ArcaneCrest",
							uuid = "58d8333c-4b05-787a-aeab-a957067f7d2e",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 19.5,
				name = "[RPR] Arcane Crest",
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = -0.5,
				timerStartOffset = -4.5,
				uuid = "55eb64df-55ef-1361-936a-55de26ee4324",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorReaper3_SoulGauge",
							gVarValue = 2,
							name = "Soul Gauge Off",
							uuid = "90dc0d98-9203-c353-a9f9-70c2c566ab53",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 19.5,
				name = "[RPR] Disable Soul Gauge",
				timelineIndex = 3,
				timerOffset = 10,
				uuid = "38002d8b-3cb8-3768-929e-28c6864660b5",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"fefa0da2-de8f-0aad-8cec-3fc35d921edd",
									true,
								},
								
								{
									"7f124810-703c-a8df-a1cd-c8597edf01a8",
									true,
								},
							},
							gVar = "ACR_TensorReaper3_SoulGauge",
							name = "Soul Gauge On",
							uuid = "9b29e203-cf03-10dc-a048-37fc9f2fc18d",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 9214,
							dequeueIfLuaFalse = true,
							name = "Targeting Doll",
							uuid = "fefa0da2-de8f-0aad-8cec-3fc35d921edd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							buffID = 2586,
							dequeueIfLuaFalse = true,
							name = "Target Has Deaths Design",
							uuid = "7f124810-703c-a8df-a1cd-c8597edf01a8",
							version = 3,
						},
					},
				},
				mechanicTime = 19.5,
				name = "[RPR] Enable Soul Gauge on Doll",
				timeRange = true,
				timelineIndex = 3,
				timerEndOffset = 40,
				uuid = "2f496889-895a-d5a3-b56a-6273527f1b10",
				version = 2,
			},
		},
	},
	[12] = 
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
							gVar = "ACR_TensorReaper3_Enshroud",
							uuid = "77b7a3d4-15bc-87c9-b3d0-05801d728270",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorReaper3_Burn",
							uuid = "516cafdb-913d-b57f-88be-adda3dd07ab2",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 50.3,
				name = "[RPR] Force Enhroud",
				timelineIndex = 12,
				uuid = "c02e6a46-9ea2-30c5-aae8-1fabf7dea018",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							conditions = 
							{
								
								{
									"520a6b4f-60c1-90fd-a502-cdae06777e34",
									true,
								},
								
								{
									"7eacbb08-34dc-7277-8dab-253efc6304b6",
									true,
								},
							},
							gVar = "ACR_TensorReaper3_Hotbar_ShadowOfDeath",
							name = "Use SoD Hotbar",
							uuid = "8e63da74-527e-40f4-af08-d66176131644",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							eventArgType = 2,
							eventSpellID = 24394,
							name = "Enshroud Cast",
							uuid = "520a6b4f-60c1-90fd-a502-cdae06777e34",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local player = TensorCore.mGetPlayer()\nreturn player ~= nil and eventArgs ~= nil and eventArgs.entityID == player.id",
							dequeueIfLuaFalse = true,
							name = "Player Casts Enshroud",
							uuid = "7eacbb08-34dc-7277-8dab-253efc6304b6",
							version = 3,
						},
					},
				},
				eventType = 2,
				mechanicTime = 50.3,
				name = "[RPR] SoD after Enshroud",
				timeRange = true,
				timelineIndex = 12,
				timerEndOffset = 20,
				timerStartOffset = -20,
				uuid = "473a2213-0f22-55ab-ad67-096c2e0e78d3",
				version = 2,
			},
		},
	},
	[13] = 
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
							gVar = "ACR_TensorReaper3_Burn",
							gVarValue = 2,
							uuid = "1a42bc70-87ba-4a8e-b299-1b2a6ce56dca",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 56.7,
				name = "[RPR] Burn off",
				timelineIndex = 13,
				uuid = "3adadc70-e4b8-fa5b-95c4-5d9b670c4174",
				version = 2,
			},
		},
	},
	[27] = 
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
							gVar = "ACR_TensorReaper3_Hotbar_ArcaneCrest",
							uuid = "696f26d8-f7bd-293a-aad0-27fe0eb64909",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 109.1,
				name = "[RPR] Arcane Crest",
				timeRange = true,
				timelineIndex = 27,
				timerEndOffset = -0.5,
				timerStartOffset = -4.5,
				uuid = "a04cfd16-f1e8-40ef-b0ac-8c89280997e7",
				version = 2,
			},
		},
	},
	[31] = 
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
							acrOptionType = "Hold Action",
							holdActionDuration = 45,
							holdActionID = 24405,
							uuid = "003e7908-e5bb-8cab-b0aa-c162fc3154f5",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							acrOptionType = "Hold Action",
							holdActionDuration = 45,
							holdActionID = 24378,
							uuid = "7a881477-a07b-0805-8463-c2e7a917cf20",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorReaper3_SoulGauge",
							gVarValue = 2,
							uuid = "c746f876-b647-24a6-b983-1cd853951d92",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 115.1,
				name = "[RPR] Holds",
				timelineIndex = 31,
				timerOffset = -5,
				uuid = "70585b3e-7f27-8fa1-86e4-7adbbf854ab3",
				version = 2,
			},
		},
	},
	[39] = 
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
							gVar = "ACR_TensorReaper3_SoulGauge",
							uuid = "51955826-30af-e1a8-9cc8-95878edf7918",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 200,
				name = "[RPR] Soul Gauge on",
				timelineIndex = 39,
				uuid = "ec9b9d13-6579-0c37-b26a-7adf2a5c5a02",
				version = 2,
			},
		},
	},
	[58] = 
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
							acrOptionType = "Hold Action",
							holdActionDuration = 20,
							holdActionID = 24378,
							uuid = "70dff880-5def-a236-b34d-95ec81494679",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "ACR",
							acrOptionType = "Hold Action",
							holdActionDuration = 10,
							holdActionID = 24394,
							uuid = "5e499846-516a-f07c-9e1e-0a2a7a91e350",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 229.1,
				name = "[RPR] Holds",
				timelineIndex = 58,
				timerOffset = 1.5,
				uuid = "9300fc9e-ceeb-1e2c-bad3-4302d36feb84",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 24405,
							conditions = 
							{
								
								{
									"25c4330a-b5ba-1564-bb9c-ce43492dc0ee",
									true,
								},
							},
							uuid = "c0a9a09b-78f2-1f0f-83b1-b87ceada3f67",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 24378,
							name = "Shadow of Death Cast",
							uuid = "25c4330a-b5ba-1564-bb9c-ce43492dc0ee",
							version = 3,
						},
					},
				},
				eventType = 2,
				loop = true,
				mechanicTime = 229.1,
				name = "[RPR] AC",
				timeRange = true,
				timelineIndex = 58,
				timerEndOffset = 3,
				timerStartOffset = -3,
				uuid = "423c1594-b541-9415-905e-426cae5ce97b",
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
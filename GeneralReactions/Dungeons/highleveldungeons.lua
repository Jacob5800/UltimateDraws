local tbl = 
{
	
	{
		data = 
		{
			displayPath = "",
			name = "Lunar Subterrane",
			uuid = "16ff5fb8-b9de-c1fc-b9bd-6463d9055974",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Lunar Subterrane",
			name = "AutoSim",
			uuid = "b09ef6a0-33f3-4e38-b492-7044534d7ae1",
		},
		objectType = "folder",
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
						actionLua = "data.lunar_subterrane_autosim=nil\ndata.lunar_final_trash=nil\ndata.lunar_pool_next=nil\nself.used=true",
						conditions = 
						{
							
							{
								"a4d346f2-227c-4fd3-9587-00908eb71e42",
								true,
							},
							
							{
								"8e6825b8-4f84-9cd5-b7d6-3b1ee317ad07",
								true,
							},
							
							{
								"2fd9c0cb-6f29-d5d7-a834-a92b49a75658",
								true,
							},
						},
						name = "Reset between combats",
						uuid = "19f71228-a725-80c0-93f4-c1eaebbd08d2",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 1164,
						name = "Lunar Subterrane (1164)",
						uuid = "a4d346f2-227c-4fd3-9587-00908eb71e42",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						inCombatType = 2,
						name = "Out of combat",
						uuid = "8e6825b8-4f84-9cd5-b7d6-3b1ee317ad07",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.lunar_subterrane_autosim ~= nil",
						name = "Has combat state",
						uuid = "2fd9c0cb-6f29-d5d7-a834-a92b49a75658",
						version = 3,
					},
				},
			},
			displayPath = "Lunar Subterrane/AutoSim",
			name = "[Lunar AutoSim] Reset between combats",
			timeout = 2,
			uuid = "030d5fc6-7f73-2365-9c2d-3f2621c58a0a",
			version = 2,
		},
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
						actionLua = "data.lunar_final_trash=true\nself.used=true",
						conditions = 
						{
							
							{
								"90f7b3d5-56f3-232f-b81f-d1026e69c3b6",
								true,
							},
							
							{
								"98cd8aff-5f83-fd8d-bb05-a3bc3137a5cd",
								true,
							},
							
							{
								"e558a35f-955e-bfbf-bb8d-23e5bc280701",
								true,
							},
							
							{
								"a4534404-b13b-bda8-b296-0e4051a503d3",
								true,
							},
						},
						name = "Recognize final trash before Dark Elf",
						uuid = "b3a0f046-168a-4901-9159-967135ea575a",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 1164,
						name = "Lunar Subterrane (1164)",
						uuid = "90f7b3d5-56f3-232f-b81f-d1026e69c3b6",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "98cd8aff-5f83-fd8d-bb05-a3bc3137a5cd",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local c=LunarSubterraneAutoSimConfig\nlocal s=data.lunar_subterrane_autosim\nreturn c~=nil and c.enabled and c.poolFinal and s~=nil and s.boss==0 and not data.lunar_final_trash",
						name = "Pooling enabled; not yet detected",
						uuid = "e558a35f-955e-bfbf-bb8d-23e5bc280701",
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
						name = "Within 30 yalms",
						partyTargetType = "Detection Target",
						uuid = "abbfdf46-a209-6a1d-807c-f6d7dd0472ec",
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
								"abbfdf46-a209-6a1d-807c-f6d7dd0472ec",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 12652",
						partyTargetContentID = 12652,
						uuid = "b0ea6176-7b0d-1ad2-bb0d-7e80caa1dad2",
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
								"abbfdf46-a209-6a1d-807c-f6d7dd0472ec",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 12653",
						partyTargetContentID = 12653,
						uuid = "817e9528-ab43-d0db-b089-70935696d4d8",
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
								"b0ea6176-7b0d-1ad2-bb0d-7e80caa1dad2",
								true,
							},
							
							{
								"817e9528-ab43-d0db-b089-70935696d4d8",
								true,
							},
						},
						matchAnyBuff = true,
						name = "Either final-pack enemy",
						partyTargetNumber = 0,
						uuid = "a4534404-b13b-bda8-b296-0e4051a503d3",
						version = 3,
					},
				},
			},
			displayPath = "Lunar Subterrane/AutoSim",
			name = "[Lunar AutoSim] Recognize final trash before Dark Elf",
			timeout = 2,
			uuid = "b260888b-3ba0-c886-b6ca-d44bd7aba76f",
			version = 2,
		},
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
						actionLua = "data.lunar_final_trash=true\nself.used=true",
						conditions = 
						{
							
							{
								"aae2c4e8-9d69-8252-b2a0-4207270022ee",
								true,
							},
							
							{
								"9eee4b5a-7cb1-964d-8045-e3fc8aa80a5c",
								true,
							},
							
							{
								"4bb0830b-6011-d03f-8600-d842517cd8e3",
								true,
							},
							
							{
								"c455e092-0aeb-c2ed-af33-56122049eeea",
								true,
							},
						},
						name = "Recognize final trash before Durante",
						uuid = "8858f5b0-2e94-be3e-acd5-e144574e369a",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 1164,
						name = "Lunar Subterrane (1164)",
						uuid = "aae2c4e8-9d69-8252-b2a0-4207270022ee",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "9eee4b5a-7cb1-964d-8045-e3fc8aa80a5c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local c=LunarSubterraneAutoSimConfig\nlocal s=data.lunar_subterrane_autosim\nreturn c~=nil and c.enabled and c.poolFinal and s~=nil and s.boss==0 and not data.lunar_final_trash",
						name = "Pooling enabled; not yet detected",
						uuid = "4bb0830b-6011-d03f-8600-d842517cd8e3",
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
						name = "Within 30 yalms",
						partyTargetType = "Detection Target",
						uuid = "9007d380-53a4-e47f-8f8d-e43ac342ebb4",
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
								"9007d380-53a4-e47f-8f8d-e43ac342ebb4",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 12581",
						partyTargetContentID = 12581,
						uuid = "bf7b4b02-d978-6f79-a96f-bebdf68f99b6",
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
								"9007d380-53a4-e47f-8f8d-e43ac342ebb4",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 12582",
						partyTargetContentID = 12582,
						uuid = "102cab26-8c67-bd6e-a7cf-606cbe184af0",
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
								"9007d380-53a4-e47f-8f8d-e43ac342ebb4",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 12583",
						partyTargetContentID = 12583,
						uuid = "14443faa-2496-f700-9cc5-0231c82eceb4",
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
								"9007d380-53a4-e47f-8f8d-e43ac342ebb4",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 12660",
						partyTargetContentID = 12660,
						uuid = "65722f01-9c91-45b4-9c49-423c404b3134",
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
								"9007d380-53a4-e47f-8f8d-e43ac342ebb4",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 12661",
						partyTargetContentID = 12661,
						uuid = "1729aeb5-6d51-35c9-8927-098f89f719b7",
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
								"bf7b4b02-d978-6f79-a96f-bebdf68f99b6",
								true,
							},
							
							{
								"102cab26-8c67-bd6e-a7cf-606cbe184af0",
								true,
							},
							
							{
								"14443faa-2496-f700-9cc5-0231c82eceb4",
								true,
							},
							
							{
								"65722f01-9c91-45b4-9c49-423c404b3134",
								true,
							},
							
							{
								"1729aeb5-6d51-35c9-8927-098f89f719b7",
								true,
							},
						},
						matchAnyBuff = true,
						name = "Either final-pack enemy",
						partyTargetNumber = 0,
						uuid = "c455e092-0aeb-c2ed-af33-56122049eeea",
						version = 3,
					},
				},
			},
			displayPath = "Lunar Subterrane/AutoSim",
			name = "[Lunar AutoSim] Recognize final trash before Durante",
			timeout = 2,
			uuid = "aaa29b4c-a53b-d153-82ba-1bebfd747a83",
			version = 2,
		},
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
						actionLua = "local s=data.lunar_subterrane_autosim\nif s then s.channel(eventArgs) end\nself.used=true",
						conditions = 
						{
							
							{
								"08a56439-d103-e81d-9058-41ef74be8552",
								true,
							},
							
							{
								"a8ea705e-2d63-dfab-a5d1-eda3a33c0fc9",
								true,
							},
							
							{
								"e12b2c93-7035-dd39-8fc9-5cfaf6e09bcc",
								true,
							},
							
							{
								"87543825-203a-bd9c-9659-95d4770d8c5d",
								true,
							},
						},
						name = "Dark Elf cast anchors",
						uuid = "54a197e4-c805-1e7f-a2ff-8d6e6a4d43e5",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 1164,
						name = "Lunar Subterrane (1164)",
						uuid = "08a56439-d103-e81d-9058-41ef74be8552",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "a8ea705e-2d63-dfab-a5d1-eda3a33c0fc9",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 12500,
						name = "Dark Elf",
						uuid = "e12b2c93-7035-dd39-8fc9-5cfaf6e09bcc",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.lunar_subterrane_autosim\nreturn s~=nil and s.enabled",
						name = "Forecast ready",
						uuid = "87543825-203a-bd9c-9659-95d4770d8c5d",
						version = 3,
					},
				},
			},
			displayPath = "Lunar Subterrane/AutoSim",
			eventType = 3,
			name = "[Lunar AutoSim] Dark Elf cast anchors",
			timeout = 2,
			uuid = "2da4fbf8-ec83-ec4b-ab92-1499c15b9c98",
			version = 2,
		},
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
						actionLua = "local s=data.lunar_subterrane_autosim\nif s then s.channel(eventArgs) end\nself.used=true",
						conditions = 
						{
							
							{
								"7310f06a-d611-098d-a476-70bb1b26376b",
								true,
							},
							
							{
								"e62dfba1-f3bb-909b-9e3b-4f6ef1d5040a",
								true,
							},
							
							{
								"ba3fd076-1d27-73d5-955e-04b22925eccb",
								true,
							},
							
							{
								"9517b9ff-490f-8e78-8e7c-2904e2897768",
								true,
							},
						},
						name = "Durante cast anchors",
						uuid = "1fc771ea-b61d-8dde-b6ff-c81b6a2cc263",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 1164,
						name = "Lunar Subterrane (1164)",
						uuid = "7310f06a-d611-098d-a476-70bb1b26376b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "e62dfba1-f3bb-909b-9e3b-4f6ef1d5040a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 12584,
						name = "Durante",
						uuid = "ba3fd076-1d27-73d5-955e-04b22925eccb",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.lunar_subterrane_autosim\nreturn s~=nil and s.enabled",
						name = "Forecast ready",
						uuid = "9517b9ff-490f-8e78-8e7c-2904e2897768",
						version = 3,
					},
				},
			},
			displayPath = "Lunar Subterrane/AutoSim",
			eventType = 3,
			name = "[Lunar AutoSim] Durante cast anchors",
			timeout = 2,
			uuid = "0b971a2b-0668-859c-a3d6-aafd00f96aa4",
			version = 2,
		},
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
						actionLua = "data.lunar_final_trash=true\nself.used=true",
						conditions = 
						{
							
							{
								"6377ebdf-7228-a111-aae1-168b61ea9de4",
								true,
							},
							
							{
								"d8635870-21fc-0192-9045-da3155be6448",
								true,
							},
							
							{
								"620dae60-e15b-7ea2-8218-9d394de9eb4a",
								true,
							},
							
							{
								"e60a1156-4d33-a29e-8202-58dd2659c439",
								true,
							},
						},
						name = "Recognize final trash before Damcyan Antlion",
						uuid = "1e5f1862-12bb-01eb-b42d-a323727f939f",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 1164,
						name = "Lunar Subterrane (1164)",
						uuid = "6377ebdf-7228-a111-aae1-168b61ea9de4",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "d8635870-21fc-0192-9045-da3155be6448",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local c=LunarSubterraneAutoSimConfig\nlocal s=data.lunar_subterrane_autosim\nreturn c~=nil and c.enabled and c.poolFinal and s~=nil and s.boss==0 and not data.lunar_final_trash",
						name = "Pooling enabled; not yet detected",
						uuid = "620dae60-e15b-7ea2-8218-9d394de9eb4a",
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
						name = "Within 30 yalms",
						partyTargetType = "Detection Target",
						uuid = "653c3af3-42b1-4ccf-9b09-96481745dd87",
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
								"653c3af3-42b1-4ccf-9b09-96481745dd87",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 12575",
						partyTargetContentID = 12575,
						uuid = "4d7c5859-fe6d-7e5b-9e9c-e22d5f352449",
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
								"653c3af3-42b1-4ccf-9b09-96481745dd87",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 12655",
						partyTargetContentID = 12655,
						uuid = "f73e5811-f332-ea36-9826-67cd8734f1e3",
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
								"653c3af3-42b1-4ccf-9b09-96481745dd87",
								true,
							},
						},
						filterTargetType = "ContentID",
						name = "Final pack 12656",
						partyTargetContentID = 12656,
						uuid = "04bfe4c2-af4c-d709-93d9-f380c879e650",
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
								"4d7c5859-fe6d-7e5b-9e9c-e22d5f352449",
								true,
							},
							
							{
								"f73e5811-f332-ea36-9826-67cd8734f1e3",
								true,
							},
							
							{
								"04bfe4c2-af4c-d709-93d9-f380c879e650",
								true,
							},
						},
						matchAnyBuff = true,
						name = "Either final-pack enemy",
						partyTargetNumber = 0,
						uuid = "e60a1156-4d33-a29e-8202-58dd2659c439",
						version = 3,
					},
				},
			},
			displayPath = "Lunar Subterrane/AutoSim",
			name = "[Lunar AutoSim] Recognize final trash before Damcyan Antlion",
			timeout = 2,
			uuid = "3f9a46d7-7155-18ce-817b-de2aa6e0be03",
			version = 2,
		},
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
						actionLua = "local c=LunarSubterraneAutoSimConfig\nlocal s=data.lunar_subterrane_autosim\nif not c or not c.enabled or not c.poolFinal or not s or s.boss~=0 then self.used=true;return end\nlocal target=TensorCore.mGetTarget()\nif target and (target.contentid==12500 or target.contentid==12484 or target.contentid==12584) then data.lunar_final_trash=nil;self.used=true;return end\nlocal now=Now()\nif not data.lunar_pool_next or now>=data.lunar_pool_next then\n local a=TensorCore.API.TensorACR\n local ll=a.holdActionUntil(3573,now+750)\n local mf=a.holdActionUntil(158,now+750)\n data.lunar_pool_next=now+250\n c.poolStatus=(ll and mf) and \"Holding Ley Lines + Manafont for next boss\" or \"Current ACR did not accept both cooldown holds\"\nend\nself.used=true",
						conditions = 
						{
							
							{
								"df82b6f2-b056-57ec-bd62-692f055bcf2d",
								true,
							},
							
							{
								"82597557-16bd-3c7b-a389-2eba35b9884f",
								true,
							},
							
							{
								"b1934e3b-fdfb-868c-9fc0-eef6e1d75121",
								true,
							},
							
							{
								"1162b2a5-0737-a2a7-81ce-3cbd6188fd1f",
								true,
							},
						},
						name = "Hold Ley Lines + Manafont on final trash",
						uuid = "c7b5664d-786e-80a1-8ed6-178f7793b2ee",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 1164,
						name = "Lunar Subterrane (1164)",
						uuid = "df82b6f2-b056-57ec-bd62-692f055bcf2d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 13,
						jobValue = "BLACKMAGE",
						name = "Black Mage",
						uuid = "82597557-16bd-3c7b-a389-2eba35b9884f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "b1934e3b-fdfb-868c-9fc0-eef6e1d75121",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.lunar_final_trash==true",
						name = "Final trash detected",
						uuid = "1162b2a5-0737-a2a7-81ce-3cbd6188fd1f",
						version = 3,
					},
				},
			},
			displayPath = "Lunar Subterrane/AutoSim",
			enabled = false,
			name = "[Lunar AutoSim] Final-trash hold - replaced by shared cooldown control",
			timeout = 2,
			uuid = "d4974df9-db62-b70e-a5d6-307a741fde51",
			version = 2,
		},
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
						actionLua = "local s=data.lunar_subterrane_autosim\nif s then s.channel(eventArgs) end\nself.used=true",
						conditions = 
						{
							
							{
								"c65ade39-078b-2d44-b5f4-7ba7c17bb10f",
								true,
							},
							
							{
								"93a4de5b-65f3-2153-9cb7-d94ed1f8c64f",
								true,
							},
							
							{
								"65669f76-b9e7-7235-948a-05ce1bf1283e",
								true,
							},
							
							{
								"20ab78e0-3e0c-249a-a82b-0efcead347d6",
								true,
							},
						},
						name = "Damcyan Antlion cast anchors",
						uuid = "10a297a0-e7f9-7e16-98be-723306b6dcba",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 1164,
						name = "Lunar Subterrane (1164)",
						uuid = "c65ade39-078b-2d44-b5f4-7ba7c17bb10f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "93a4de5b-65f3-2153-9cb7-d94ed1f8c64f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 12484,
						name = "Damcyan Antlion",
						uuid = "65669f76-b9e7-7235-948a-05ce1bf1283e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.lunar_subterrane_autosim\nreturn s~=nil and s.enabled",
						name = "Forecast ready",
						uuid = "20ab78e0-3e0c-249a-a82b-0efcead347d6",
						version = 3,
					},
				},
			},
			displayPath = "Lunar Subterrane/AutoSim",
			eventType = 3,
			name = "[Lunar AutoSim] Damcyan Antlion cast anchors",
			timeout = 2,
			uuid = "74e3d721-9f5a-b63d-b028-d5b14df472e8",
			version = 2,
		},
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
						actionLua = "-- Shared, persisted preferences only. Pull-specific solver state lives in data.\nif not LunarSubterraneAutoSimConfig or LunarSubterraneAutoSimConfig.fileApiVersion~=1 then\n    local C = LunarSubterraneAutoSimConfig or {\n        enabled=true, movement=true, returnField=true, trash=true, poolFinal=true,\n        killOverride=true, kill12500=125.891, kill12484=132.86, kill12584=175.298,\n        unexpectedPct=5, uncertainty=1, buffEnabled=false, buffPct=0,\n        buffFirst=5, buffDuration=20, buffPeriod=120,\n        status=\"Ready. Saved changes apply next combat.\",\n        path=GetStartupPath() .. [[\\LuaMods\\TensorReactions\\LunarSubterrane.AutoSim.settings.tsv]]\n    }\n    C.keys={\"enabled\",\"movement\",\"returnField\",\"trash\",\"poolFinal\",\"killOverride\",\n        \"kill12500\",\"kill12484\",\"kill12584\",\"unexpectedPct\",\"uncertainty\",\n        \"buffEnabled\",\"buffPct\",\"buffFirst\",\"buffDuration\",\"buffPeriod\"}\n    C.path=GetLuaModsPath()..[[TensorReactions\\Settings\\LunarSubterrane.AutoSim.lua]]\n    if not LunarSubterraneAutoSimConfig and FileExists(C.path) then\n     local saved=FileLoad(C.path)\n     if type(saved)==\"table\" then\n      for _,key in ipairs(C.keys) do\n       local v=saved[key]\n       if type(v)==type(C[key]) and (type(v)~=\"number\" or (v==v and v>-math.huge and v<math.huge)) then C[key]=v end\n      end\n     end\n    end\n    C.unexpectedPct=math.max(0,math.min(30,C.unexpectedPct))\n    C.uncertainty=math.max(0,math.min(10,C.uncertainty))\n    C.buffPct=math.max(0,math.min(50,C.buffPct))\n    C.buffDuration=math.max(1,math.min(60,C.buffDuration))\n    C.buffPeriod=math.max(C.buffDuration+1,math.min(600,C.buffPeriod))\n    C.buffFirst=math.max(0,math.min(600,C.buffFirst))\n    C.kill12500=math.max(15,math.min(1200,C.kill12500))\n    C.kill12484=math.max(15,math.min(1200,C.kill12484))\n    C.kill12584=math.max(15,math.min(1200,C.kill12584))\n    function C.save()\n     local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n     if not FolderExists(folder) then FolderCreate(folder) end\n     local values={}\n     for _,key in ipairs(C.keys) do values[key]=C[key] end\n     FileSave(C.path,values)\n     C.status=\"Saved. Changes apply next combat.\"\n    end\n    C.fileApiVersion=1\n    C.save()\n    LunarSubterraneAutoSimConfig=C\nend\n\n-- Migrate an already initialized settings table without replacing user choices.\nif LunarSubterraneAutoSimConfig.poolFinal==nil then\n LunarSubterraneAutoSimConfig.poolFinal=true\n table.insert(LunarSubterraneAutoSimConfig.keys,\"poolFinal\")\nend\n\n-- Runs after native map 1164, map and combat gates; no timeline timer is used.\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=1164 or not p.incombat then self.used=true;return end\nlocal isCaster=p.job==25 or p.job==27 or p.job==35 or p.job==42 or p.job==36 or p.job==24 or p.job==28 or p.job==33 or p.job==40\nlocal C=LunarSubterraneAutoSimConfig\nlocal A=TensorCore.API.TensorACR\nlocal ok,t=pcall(A.getAutoSimTime)\nif not ok or type(t)~=\"number\" or t<0 then return end -- readiness wait, not completion\nif data.lunar_subterrane_autosim then self.used=true;return end\nlocal S={enabled=C.enabled,movement=C.movement and isCaster,returnField=C.returnField and p.job==25,trash=C.trash,\n    killOverride=C.killOverride,kill12500=C.kill12500,kill12484=C.kill12484,kill12584=C.kill12584,\n    unexpectedPct=C.unexpectedPct,uncertainty=C.uncertainty,buffEnabled=C.buffEnabled,\n    buffPct=C.buffPct,buffFirst=C.buffFirst,buffDuration=C.buffDuration,buffPeriod=C.buffPeriod,\n    boss=0,origin=0,counts={},phases={},phaseCount=0,anchorsSeen=0,setup=true}\ndata.lunar_subterrane_autosim=S\n-- Filled by the evidence builder; tables are allocated once per combat.\nS.definitions={[12500]={[\"name\"]=\"Dark Elf\",[\"movement\"]={{49.0,50.5},{52.0,53.0}},[\"anchors\"]={[34777]={4.469,29.258,61.828,134.734},[35205]={10.61,53.219,91.844},[34779]={19.117,83.727},[34778]={37.422,69.945,142.953},[34781]={46.586,79.102,152.101},[35204]={102.024},[34782]={113.219,122.368}}},[12484]={[\"name\"]=\"Damcyan Antlion\",[\"movement\"]={{22.5,24.0},{48.5,50.5},{63.5,64.5},{66.5,69.5},{97.0,98.0},{104.5,108.5},{109.5,111.0},{112.5,114.5},{125.5,130.0}},[\"anchors\"]={[34813]={8.188,77.164,137.969},[34818]={15.32,41.446,102.25},[34816]={30.32,91.188,152.0},[34821]={57.875,118.672},[34443]={67.023,127.844}}},[12584]={[\"name\"]=\"Durante\",[\"movement\"]={{22.5,23.5},{38.0,39.0},{59.5,62.0},{104.5,107.5},{138.0,140.0},{157.5,162.0},{165.0,166.0}},[\"anchors\"]={[35011]={6.179,116.812,206.219},[36057]={15.64,50.96,219.859},[35003]={31.367,72.07,95.531,187.031},[35905]={77.148,100.641,192.109},[35007]={129.094},[35009]={136.68},[36055]={147.132},[35001]={156.452},[34995]={173.43}}}}\n\nfunction S.add(kind,a,b,value,relative)\n    if b<=a or a>=1200 then return end\n    b=math.min(b,1200)\n    local id=A.addAutoSimPhase(kind,a,b,value)\n    if id then\n        S.phaseCount=S.phaseCount+1\n        S.phases[S.phaseCount]={id=id,kind=kind,a=a,b=b,value=value,relative=relative}\n    end\nend\n\nfunction S.startBoss(cid,entityID,origin,now)\n    local def=S.definitions[cid]\n    if not def or S.boss~=0 or not S.enabled then return end\n    S.boss=cid;S.entityID=entityID;S.origin=origin\n    A.setAutoSimUnexpectedMovementPct(S.unexpectedPct/100)\n    if S.killOverride then\n        A.setAutoSimKillTime(math.min(1200,origin+S[\"kill\"..cid]))\n        A.addAutoSimUncertainty(now,10) -- one normal-party sample: do not claim exact kill timing\n    end\n    -- Keep automatic kill uncertainty by default. Do not invent forced target downtime.\n    -- Only owned movement/field phases are authored; AoE counts and DoT targets stay live.\n    if S.movement then\n        for i=1,#def.movement do\n            local w=def.movement[i]\n            local a,b=origin+w[1],origin+w[2]\n            if b>now then\n                a=math.max(a,now)\n                S.add(\"CasterDowntime\",a,b,1,true)\n                if S.returnField then S.add(\"GroundFieldMovement\",b,b+0.2,2,true) end\n            end\n        end\n    end\n    if S.buffEnabled and S.buffPct>0 then\n        local a=origin+S.buffFirst\n        while a<1200 do\n            if a+S.buffDuration>now then S.add(\"RaidBuff\",math.max(a,now),a+S.buffDuration,1+S.buffPct/100,false) end\n            a=a+S.buffPeriod\n        end\n    end\n    C.status=\"Active: \"..def.name..\". Kill estimate: \"..(S.killOverride and \"manual\" or \"automatic\")\nend\n\nfunction S.channel(args)\n    if not S.enabled then return end\n    local cid=args.entityContentID\n    local def=S.definitions[cid]\n    if not def then return end\n    local aid=args.spellID\n    if aid==34780 then aid=34779 end\n    local anchors=def.anchors[aid]\n    if not anchors then return end -- stable boss cast identity before API work\n    if S.boss~=0 and (S.boss~=cid or S.entityID~=args.entityID) then return end\n    local valid,now=pcall(A.getAutoSimTime)\n    if not valid or type(now)~=\"number\" or now<0 or now>=1200 then return end\n    local n=(S.counts[aid] or 0)+1\n    local expected=anchors[n]\n    if not expected then return end\n    if S.boss==0 and math.abs(now-expected)>2 then return end\n    S.counts[aid]=n\n    if S.boss==0 then S.startBoss(cid,args.entityID,now-expected,now) end\n    if S.boss~=cid then return end\n    local candidate=now-expected\n    -- If enabled mid-boss, do not match a late repeat to the first occurrence.\n    if math.abs(candidate-S.origin)>2 then return end\n    local shift=candidate-S.origin\n    S.anchorsSeen=S.anchorsSeen+1\n    if math.abs(shift)<0.15 then return end\n    -- Remove every future owned phase before reinsertion, avoiding transient overlaps.\n    local movementEnd=now\n    local fieldEnd=now\n    for i=1,S.phaseCount do\n        local phase=S.phases[i]\n        if phase.relative and phase.id and phase.a>now+0.05 then\n            A.removeAutoSimPhase(phase.id);phase.id=nil;phase.pending=true\n        elseif phase.id and phase.a<=now+0.05 and phase.b>now then\n            if phase.kind==\"CasterDowntime\" then movementEnd=phase.b end\n            if phase.kind==\"GroundFieldMovement\" then fieldEnd=phase.b end\n        end\n    end\n    for i=1,S.phaseCount do\n        local phase=S.phases[i]\n        if phase.pending then\n            phase.pending=false\n            local a,b=phase.a+shift,phase.b+shift\n            local minimum=phase.kind==\"CasterDowntime\" and movementEnd or math.max(fieldEnd,movementEnd)\n            a=math.max(a,minimum,now+0.05)\n            if b>a then\n                phase.id=A.addAutoSimPhase(phase.kind,a,b,phase.value)\n                phase.a=a;phase.b=b\n                if phase.kind==\"CasterDowntime\" then movementEnd=b else fieldEnd=b end\n            end\n        end\n    end\n    S.origin=candidate\nend\n\nif S.enabled then\n    local target=TensorCore.mGetTarget()\n    if target and S.definitions[target.contentid] and target.attackable and target.incombat then\n        -- Near pull start, zero is the combat-clock origin; later setup waits for an anchor.\n        if t<=5 then S.startBoss(target.contentid,target.id,0,t) end\n    end\n    if S.boss==0 and S.trash then A.setAutoSimUnexpectedMovementPct(S.unexpectedPct/100) end\nend\nself.used=true\n",
						conditions = 
						{
							
							{
								"4b5d3e8d-ed1f-bb3a-ba5f-8d5cc2ca6ca4",
								true,
							},
							
							{
								"e2985892-4fbd-59a7-a9e6-c5ac331ad784",
								true,
							},
							
							{
								"35405cd6-dbd3-2d64-8173-b6ba700ad8e9",
								true,
							},
						},
						name = "Set up this combat",
						uuid = "55fff724-64be-6d48-b15e-431a8ca6fd13",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 1164,
						name = "Lunar Subterrane (1164)",
						uuid = "4b5d3e8d-ed1f-bb3a-ba5f-8d5cc2ca6ca4",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In combat",
						uuid = "e2985892-4fbd-59a7-a9e6-c5ac331ad784",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.lunar_subterrane_autosim == nil",
						name = "Setup not completed",
						uuid = "35405cd6-dbd3-2d64-8173-b6ba700ad8e9",
						version = 3,
					},
				},
			},
			displayPath = "Lunar Subterrane/AutoSim",
			name = "[Lunar AutoSim] Set up this combat",
			timeout = 2,
			uuid = "73c207fc-cc83-0216-8fb3-2f89b0618147",
			version = 2,
		},
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
						actionLua = "-- Shared pull-gathering helper; settings are independent of Minion core Settings.\nif not DungeonPullGather or DungeonPullGather.version~=2026111607 then\n local D={version=2026111607}\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n D.path=folder..[[DungeonAutoSim.Gather.lua]]\n local c=FileExists(D.path)and FileLoad(D.path)or{}\n if type(c)~='table'then c={}end\n if type(c.enabled)~='boolean'then c.enabled=true end\n if type(c.diagnostics)~='boolean'then c.diagnostics=true end\n if type(c.settle)~='number'or c.settle<.5 or c.settle>5 then c.settle=3 end\n if type(c.timeout)~='number'or c.timeout<5 or c.timeout>40 then c.timeout=20 end\n if type(c.brdDotHP)~='number'or c.brdDotHP<0 or c.brdDotHP>30 then c.brdDotHP=20 end\n if type(c.apexCap)~='number'or c.apexCap<80 or c.apexCap>100 then c.apexCap=95 end\n if type(c.overrides)~='table'then c.overrides={}end\n if type(c.disabledOverrides)~='table'then c.disabledOverrides={}end\n for map,v in pairs(c.overrides)do\n  if type(map)~='number'or type(v)~='table'or type(v.settle)~='number'or v.settle<.5 or v.settle>5 or type(v.timeout)~='number'or v.timeout<5 or v.timeout>40 then c.overrides[map]=nil end\n end\n if c.migratedSettle3~=true then\n  if math.abs(c.settle-2.3)<.001 then c.settle=3 end\n  for _,v in pairs(c.overrides)do if math.abs(v.settle-2.3)<.001 then v.settle=3 end end\n  c.defaultSettle=3;c.migratedSettle3=true\n end\n D.config=c\n function D.save()\n  if not FolderExists(folder)then FolderCreate(folder)end\n  FileSave(D.path,{enabled=c.enabled,settle=c.settle,timeout=c.timeout,apexCap=c.apexCap,diagnostics=c.diagnostics,defaultSettle=c.defaultSettle,migratedSettle3=c.migratedSettle3,brdDotHP=c.brdDotHP,overrides=c.overrides,disabledOverrides=c.disabledOverrides})\n end\n function D.timing(map)\n  if not c.overrides[map]and not c.disabledOverrides[map]then\n   c.overrides[map]={settle=c.settle,timeout=c.timeout};D.save()\n  end\n  return c.overrides[map]or c\n end\n function D.restoreDots()\n  local r=D.dotToggle\n  if r and _G[r.var]==false then _G[r.var]=r.previous end\n  D.dotToggle=nil;D.dotActive=nil;D.dotStatus=nil\n end\n function D.reset()D.restoreDots();D.pull=nil;D.active=false;D.reason=nil;D.detail=nil;D.bardStatus=nil;D.dotActive=nil;D.dotStatus=nil end\n function D.trace(text)\n  if D.traceText~=text then D.traceText=text;TensorCore.timelineLogToFile('[Dungeon W2W] '..text..'\\n')end\n end\n function D.update(p,valid,isBoss,bosses)\n  if not c.enabled or not valid or isBoss or not p or not p.alive or not p.incombat then\n   if D.pull then D.trace('released: disabled, boss, death or combat ended')end\n   D.reset();return false\n  end\n  local timing=D.timing(p.localmapid)\n  local now=Now();local tank\n  for _,e in pairs(TensorCore.getEntityGroupList('Tank',nil,true)or{})do\n   if e.alive and e.pos and (e.pos.x-p.pos.x)^2+(e.pos.z-p.pos.z)^2<=60^2 then\n    if not tank or e.id<tank.id then tank=e end\n   end\n  end\n  if not tank then D.reset();D.detail='No nearby engaged party tank';return false end\n  local g=D.pull\n  if not g or g.map~=p.localmapid or g.tank~=tank.id then\n   g={map=p.localmapid,tank=tank.id,start=now,seen={},arrived=now,anchor={x=tank.pos.x,z=tank.pos.z},stationary=now};D.pull=g\n  end\n  if g.released then D.active=false;return false end\n  local count,far,new=0,0,0\n  TensorCore.forEachEntity('alive,targetable,attackable',function(id)\n   local e=TensorCore.mGetEntity(id)\n   if e and e.incombat and e.pos and not bosses[e.contentid] and math.abs(e.pos.y-tank.pos.y)<=10 then\n    local distance=(e.pos.x-tank.pos.x)^2+(e.pos.z-tank.pos.z)^2\n    if distance<=60^2 then\n     count=count+1\n     if not g.seen[id]then g.seen[id]=true;g.arrived=now;new=new+1 end\n     if distance>(12+(e.hitradius or 0))^2 then far=far+1 end\n    end\n   end\n   return true\n  end)\n  if (tank.pos.x-g.anchor.x)^2+(tank.pos.z-g.anchor.z)^2>1^2 then\n   g.anchor={x=tank.pos.x,z=tank.pos.z};g.stationary=now\n  end\n  if count==0 then\n   g.readyAt=nil\n   if now-g.start>=timing.timeout*1000 then g.released=true;D.active=false;D.reason=nil;D.trace('released: gather timeout, no engaged trash');return false end\n  else\n   if far>0 then g.readyAt=nil elseif not g.readyAt then g.readyAt=now end\n  end\n  if count>0 and far==0 and g.readyAt and now-g.readyAt>=timing.settle*1000 and now-g.stationary>=timing.settle*1000 and now-g.arrived>=timing.settle*1000 and now-g.start>=3000 then\n   g.released=true;D.active=false;D.reason=nil;D.trace('released: tank stopped, roster stable and '..count..' enemies gathered');return false\n  end\n  if now-g.start>=timing.timeout*1000 then\n   g.released=true;D.active=false;D.reason=nil;D.trace('released: '..timing.timeout..'s maximum gather wait; far='..far..' engaged='..count);return false\n  end\n  D.active=true;D.reason='Gathering pull'\n  D.detail=string.format('Gathering pull: %d engaged, %d trailing; %.1f / %.0fs',count,far,(now-g.start)/1000,timing.timeout)\n  local stage=far>0 and 'trailing enemies'or now-g.stationary<timing.settle*1000 and 'tank moving'or'waiting for stable pull'\n  D.trace('holding: '..stage..'; tank='..tank.id..'; engaged='..count..'; far='..far)\n  return true\n end\n function D.lease(id,untilMs)\n  if id==16496 or id==25784 or id==100 or id==113 or id==7406 or id==7407 or id==3560 then return false end\n  local accepted=TensorCore.API.TensorACR.holdActionUntil(id,untilMs,1)\n  D.leases=D.leases or{}\n  if accepted then D.leases[id]=untilMs end\n  return accepted\n end\n function D.dotHold(p,valid,target,bosses,encounter,level)\n  local active=valid and p.job==23 and c.brdDotHP>0 and not encounter\n   and target and target.alive and target.targetable and target.attackable and target.incombat\n   and not bosses[target.contentid]and target.hp and target.hp.max>0\n   and target.hp.percent>0 and target.hp.percent<c.brdDotHP\n  if not active then D.restoreDots();D.dotTraceKey=nil;return end\n  -- BRD's global DoTs QT tells the rotation not to plan these GCDs.\n  local variable='ACR_TensorRequiem4_DoTs'\n  if type(_G[variable])~='boolean'then return end\n  if not D.dotToggle then D.dotToggle={var=variable,previous=_G[variable]}end\n  _G[variable]=false;D.dotActive=true\n  D.dotStatus='BRD DoTs off below '..c.brdDotHP..'% trash HP'\n  local key=tostring(target.id)..':'..c.brdDotHP\n  if D.dotTraceKey~=key then\n   D.dotTraceKey=key\n   TensorCore.timelineLogToFile('[Dungeon BRD DoTs] QT off: target='..target.id..' CID='..target.contentid..' HP='..target.hp.percent..' threshold='..c.brdDotHP..'; no GCD action holds\\n')\n  end\n end\n function D.observeBoss(p,encounter,blocked,held)\n  if p.job~=23 or not encounter then D.bossLogAt=nil;D.bossLogKey=nil;return end\n  if not c.diagnostics then return end\n  local now=Now();local target=TensorCore.mGetTarget()\n  local owned=0;for var in pairs(held or{})do if var:match('_CD$')then owned=owned+1 end end\n  local key=tostring(target and target.id)..':'..tostring(blocked)..':'..tostring(ACR_TensorRequiem4_CD)..':'..owned\n  if D.bossLogAt and now-D.bossLogAt<5000 and D.bossLogKey==key then return end\n  D.bossLogAt=now;D.bossLogKey=key\n  local function state(id)\n   local a=ActionList:Get(1,id)\n   if not a then return 'missing action'end\n   local ok,ready=pcall(function()return a:IsReady(p.id)end)\n   return string.format('cd=%.2f onCD=%s ready=%s ownedLeaseRemainingMs=%.0f',math.max(0,a.cdmax-a.cd),tostring(a.isoncd),ok and tostring(ready)or('read error '..tostring(ready)),math.max(0,(D.leases and D.leases[id]or 0)-now))\n  end\n  local bv=TensorCore.getBuff(p,141);local rf=TensorCore.getBuff(p,2964)\n  TensorCore.timelineLogToFile('[Dungeon BRD boss] target='..tostring(target and target.contentid)..' HP='..tostring(target and target.hp and target.hp.percent)..' CDQT='..tostring(ACR_TensorRequiem4_CD)..' ownedCDvars='..owned..' finalOrLowHP='..tostring(blocked)..' gathering='..tostring(D.active)..' BattleVoice{'..state(118)..'} RadiantFinale{'..state(25785)..'} BVbuff='..tostring(bv and bv.duration)..' RFbuff='..tostring(rf and rf.duration)..' BVhotbar='..tostring(ACR_TensorRequiem4_Hotbar_BattleVoice)..'\\n')\n end\n function D.bard(p,gathering,priorityHold)\n  if p.job~=23 or not gathering then return end\n  local untilMs=Now()+450\n  -- BRD gathering owns short burst-action holds, not its broad CD toggle.\n  -- Both party buffs are held and released together; songs/normal damage remain automatic.\n  for _,row in ipairs({{101,4},{107,38},{118,50},{25785,90}})do\n   if p.level>=row[2]then D.lease(row[1],untilMs)end\n  end\n  D.bardStatus='BRD offensive buffs held for gathered targets; Apex uses its toggle'\n end\n function D.gatherApex(p,gathering)\n  return p.job==23 and gathering and not(p.gauge and type(p.gauge[4])=='number'and p.gauge[4]>=c.apexCap)\n end\n function D.gui()\n  local value,changed=GUI:Checkbox('Wait for full pull (W2W)',c.enabled)\n  if changed then c.enabled=value;D.save()end\n  if GUI:IsItemHovered()then GUI:SetTooltip('Hold major offensive cooldowns until the party tank stops and engaged enemies gather. Last-pack and low-HP holds keep priority. Normal damage continues.')end\n  local diag,edit=GUI:Checkbox('BRD boss-buff diagnostics',c.diagnostics)\n  if edit then c.diagnostics=diag;D.save()end\n  value=GUI:SliderInt('Hold BRD DoTs below trash HP (%)',c.brdDotHP,0,30)\n  if value~=c.brdDotHP then c.brdDotHP=value;D.save()end\n  if GUI:IsItemHovered()then GUI:SetTooltip('Temporarily switches the global BRD DoTs toggle off on selected low-HP trash, then restores its previous value. Bosses are excluded; zero disables.')end\n  if D.dotStatus then GUI:TextWrapped(D.dotStatus)end\n  if c.enabled then\n   local p=TensorCore.mGetPlayer();local map=p and p.localmapid\n   if map then D.timing(map)end\n   local custom=map and c.overrides[map]~=nil or false\n   value,changed=GUI:Checkbox('Use timings for this dungeon',custom)\n   if changed and map then\n    c.disabledOverrides[map]=not value or nil\n    c.overrides[map]=value and {settle=c.settle,timeout=c.timeout}or nil;D.save()\n   end\n   local timing=map and c.overrides[map]or c\n   value=GUI:SliderFloat('Full-pull settle time (seconds)',timing.settle,.5,5,'%.1f')\n   if value~=timing.settle then timing.settle=value;D.save()end\n   value=GUI:SliderFloat('Maximum gather wait (seconds)',timing.timeout,5,40,'%.0f')\n   if value~=timing.timeout then timing.timeout=value;D.save()end\n   value=GUI:SliderInt('Release gathering Apex at Soul Voice',c.apexCap,80,100)\n   if value~=c.apexCap then c.apexCap=value;D.save()end\n   if D.active and D.detail then GUI:TextWrapped(D.detail)end\n   if D.active and D.bardStatus then GUI:TextWrapped(D.bardStatus)end\n  end\n end\n D.save();DungeonPullGather=D\nend\n-- Shared, persisted preferences only. Pull-specific solver state lives in data.\nif not LunarSubterraneAutoSimConfig or LunarSubterraneAutoSimConfig.fileApiVersion~=1 then\n    local C = LunarSubterraneAutoSimConfig or {\n        enabled=true, movement=true, returnField=true, trash=true, poolFinal=true,\n        killOverride=true, kill12500=125.891, kill12484=132.86, kill12584=175.298,\n        unexpectedPct=5, uncertainty=1, buffEnabled=false, buffPct=0,\n        buffFirst=5, buffDuration=20, buffPeriod=120,\n        status=\"Ready. Saved changes apply next combat.\",\n        path=GetStartupPath() .. [[\\LuaMods\\TensorReactions\\LunarSubterrane.AutoSim.settings.tsv]]\n    }\n    C.keys={\"enabled\",\"movement\",\"returnField\",\"trash\",\"poolFinal\",\"killOverride\",\n        \"kill12500\",\"kill12484\",\"kill12584\",\"unexpectedPct\",\"uncertainty\",\n        \"buffEnabled\",\"buffPct\",\"buffFirst\",\"buffDuration\",\"buffPeriod\"}\n    C.path=GetLuaModsPath()..[[TensorReactions\\Settings\\LunarSubterrane.AutoSim.lua]]\n    if not LunarSubterraneAutoSimConfig and FileExists(C.path) then\n     local saved=FileLoad(C.path)\n     if type(saved)==\"table\" then\n      for _,key in ipairs(C.keys) do\n       local v=saved[key]\n       if type(v)==type(C[key]) and (type(v)~=\"number\" or (v==v and v>-math.huge and v<math.huge)) then C[key]=v end\n      end\n     end\n    end\n    C.unexpectedPct=math.max(0,math.min(30,C.unexpectedPct))\n    C.uncertainty=math.max(0,math.min(10,C.uncertainty))\n    C.buffPct=math.max(0,math.min(50,C.buffPct))\n    C.buffDuration=math.max(1,math.min(60,C.buffDuration))\n    C.buffPeriod=math.max(C.buffDuration+1,math.min(600,C.buffPeriod))\n    C.buffFirst=math.max(0,math.min(600,C.buffFirst))\n    C.kill12500=math.max(15,math.min(1200,C.kill12500))\n    C.kill12484=math.max(15,math.min(1200,C.kill12484))\n    C.kill12584=math.max(15,math.min(1200,C.kill12584))\n    function C.save()\n     local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n     if not FolderExists(folder) then FolderCreate(folder) end\n     local values={}\n     for _,key in ipairs(C.keys) do values[key]=C[key] end\n     FileSave(C.path,values)\n     C.status=\"Saved. Changes apply next combat.\"\n    end\n    C.fileApiVersion=1\n    C.save()\n    LunarSubterraneAutoSimConfig=C\nend\n\n-- Migrate an already initialized settings table without replacing user choices.\nif LunarSubterraneAutoSimConfig.poolFinal==nil then\n LunarSubterraneAutoSimConfig.poolFinal=true\n table.insert(LunarSubterraneAutoSimConfig.keys,\"poolFinal\")\nend\n\n-- GUI submission belongs only in OnDraw. Native Map ID gates precede it.\nlocal C=LunarSubterraneAutoSimConfig\nlocal visible=GUI:Begin(\"Lunar Subterrane - AutoSim\")\nif visible then\n    GUI:TextWrapped(\"Four-player dungeon. Changes are saved and apply next combat.\")\n    local v,changed=GUI:Checkbox(\"Enable boss forecasts\",C.enabled)\n    if changed then C.enabled=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Enable the three boss forecasts. Cooldowns and potions remain controlled by your ACR.\") end\n    v,changed=GUI:Checkbox(\"Movement forecasts\",C.movement)\n    if changed then C.movement=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Short repositioning estimates from your logged positions, anchored to boss casts. These are predictions, not automatic movement.\") end\n    v,changed=GUI:Checkbox(\"Predict return to Ley Lines (BLM only)\",C.returnField)\n    if changed then C.returnField=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Predict re-entry shortly after each estimated move. Assumes you return when safe; this does not move the character.\") end\n    v,changed=GUI:Checkbox(\"Apply movement reserve to trash\",C.trash)\n    if changed then C.trash=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Use the extra movement allowance on wall-to-wall pulls. Trash lifetime, target count and cooldown use remain automatic.\") end\n    v,changed=GUI:InputFloat(\"Extra movement (%)\",C.unexpectedPct,1,5,\"%.1f\")\n    if changed then C.unexpectedPct=math.max(0,math.min(30,v));C.save() end\n    if GUI:CollapsingHeader(\"Boss kill estimates\") then\n        GUI:TextWrapped(\"Automatic by default. The optional values below come from one four-player run, not the slower Duty Support samples.\")\n        v,changed=GUI:Checkbox(\"Override automatic kill estimates\",C.killOverride)\n        if changed then C.killOverride=v;C.save() end\n        v,changed=GUI:InputFloat(\"Dark Elf (seconds)\",C.kill12500,5,15,\"%.1f\")\n        if changed then C.kill12500=math.max(15,math.min(1200,v));C.save() end\n        v,changed=GUI:InputFloat(\"Damcyan Antlion (seconds)\",C.kill12484,5,15,\"%.1f\")\n        if changed then C.kill12484=math.max(15,math.min(1200,v));C.save() end\n        v,changed=GUI:InputFloat(\"Durante (seconds)\",C.kill12584,5,15,\"%.1f\")\n        if changed then C.kill12584=math.max(15,math.min(1200,v));C.save() end\n    end\n    v,changed=GUI:Checkbox(\"Hold offensive cooldowns on final trash (all jobs)\",C.poolFinal)\n    if changed then C.poolFinal=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Recognizes the last pack before each boss and temporarily turns off the current job’s CD switch. Radiant Finale is explicitly held too. Your previous CD setting is restored when pooling ends; songs keep their own control.\") end\n    local shared=DungeonAutoSimShared\n    if shared then\n        v,changed=GUI:SliderInt(\"Hold new boss cooldowns below HP (%) - shared\",shared.lateHP,0,20)\n        if changed then shared.lateHP=v;shared.save() end\n        if GUI:IsItemHovered() then GUI:SetTooltip(\"Shared across these nine dungeons and all jobs. At this boss HP, stop starting offensive cooldowns; normal attacks continue. 0 disables this rule. Default 8%. Defensive controls and songs keep their own settings.\") end\n    end\n    v,changed=GUI:Checkbox(\"Forecast future party buffs\",C.buffEnabled)\n    if changed then C.buffEnabled=v;C.save() end\n    v,changed=GUI:SliderFloat(\"Combined damage bonus (%)\",C.buffPct,0,50,\"%.1f%%\",1)\n    if changed then C.buffPct=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Optional planning estimate. Zero adds no future buff windows. AST/DNC timing varies; sustained Standard Finish and Devilment should not be treated as a universal periodic damage bonus.\") end\n    GUI:Text(\"Party buff timing\")\n    GUI:TextWrapped(C.buffEnabled and \"Forecast enabled. Times are seconds from boss pull.\" or \"Forecast disabled. These values apply only when the party buff forecast is enabled.\")\n        v,changed=GUI:InputFloat(\"First buff (seconds)\",C.buffFirst,1,5,\"%.1f\")\n        if changed then C.buffFirst=math.max(0,math.min(600,v));C.save() end\n        v,changed=GUI:InputFloat(\"Buff duration (seconds)\",C.buffDuration,1,5,\"%.1f\")\n        if changed then C.buffDuration=math.max(1,math.min(C.buffPeriod-1,60,v));C.save() end\n        v,changed=GUI:InputFloat(\"Buff interval (seconds)\",C.buffPeriod,5,30,\"%.1f\")\n        if changed then C.buffPeriod=math.max(C.buffDuration+1,math.min(600,v));C.save() end\n    GUI:Separator()\n    GUI:TextWrapped(C.status)\n    if C.poolStatus then GUI:TextWrapped(C.poolStatus) end\n do\n local h=DungeonProfilePooling\n if h then\nlocal key=\"highleveldungeons\"\nDungeonHoldDisplays=DungeonHoldDisplays or {}\nlocal c=DungeonHoldDisplays[key]\nif not c then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..key..[[.Safety.lua]]\n c=FileExists(path) and FileLoad(path) or {}\n if type(c)~=\"table\" then c={} end\n if type(c.showHoldStatus)~=\"boolean\" then c.showHoldStatus=true end\n if type(c.shortLivedAdds)~=\"boolean\" then c.shortLivedAdds=true end\n c.path=path;DungeonHoldDisplays[key]=c\nend\n GUI:Separator()\n GUI:Text(\"Dungeon holds\")\n local value,changed=GUI:Checkbox(\"Show hold reason\",c.showHoldStatus)\n if changed then c.showHoldStatus=value end\n if GUI:IsItemHovered() then GUI:SetTooltip(\"Shows only holds owned by this dungeon controller. It does not describe holds from other profiles.\") end\n local v,edit=GUI:Checkbox(\"Avoid long BLM casts on dying adds\",c.shortLivedAdds)\n if edit then c.shortLivedAdds=v end\n if GUI:IsItemHovered() then GUI:SetTooltip(\"Uses the target's lifetime estimate; lets an existing cast finish. Does not change targets or block healing.\") end\n if changed or edit then\n  local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(c.path,{showHoldStatus=c.showHoldStatus,shortLivedAdds=c.shortLivedAdds})\n end\n if c.showHoldStatus then GUI:TextWrapped(h.status or h.reason or \"No dungeon cooldown hold\") end\n DungeonPullGather.gui()\n end\n end\n\nend\nGUI:End()\nself.used=true\n",
						conditions = 
						{
							
							{
								"e42637da-b0ea-f95a-92db-536598331dad",
								true,
							},
						},
						name = "Settings",
						uuid = "47509b0c-f6d2-af3a-bd86-3342d8998674",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 1164,
						name = "Lunar Subterrane (1164)",
						uuid = "e42637da-b0ea-f95a-92db-536598331dad",
						version = 3,
					},
				},
			},
			displayPath = "Lunar Subterrane/AutoSim",
			eventType = 13,
			name = "[Lunar AutoSim] Settings",
			timeout = 2,
			uuid = "09d27fca-d2c9-3528-a5ab-933bd672c4f1",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Amdapor Keep (Hard)",
			uuid = "6be89c03-9c12-7d25-b4e5-19e03a55b2d8",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Amdapor Keep (Hard)",
			name = "AutoSim",
			uuid = "7ab87992-fa05-f95b-98c3-08da29def3ba",
		},
		objectType = "folder",
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
						actionLua = "-- Shared, persisted preferences only. Pull-specific solver state lives in data.\nif not AmdaporHardAutoSimConfig or AmdaporHardAutoSimConfig.fileApiVersion~=1 then\n    local C = AmdaporHardAutoSimConfig or {\n        enabled=true, movement=true, returnField=false, trash=true, poolFinal=true,\n        killOverride=true, kill3272=72.4, kill3274=91.7, kill0=91.7,\n        unexpectedPct=5, uncertainty=1, buffEnabled=false, buffPct=0,\n        buffFirst=5, buffDuration=20, buffPeriod=120,\n        status=\"Ready. Saved changes apply next combat.\",\n        path=GetStartupPath() .. [[\\LuaMods\\TensorReactions\\AmdaporHard.AutoSim.settings.tsv]]\n    }\n    C.keys={\"enabled\",\"movement\",\"returnField\",\"trash\",\"poolFinal\",\"killOverride\",\n        \"kill3272\",\"kill3274\",\"kill0\",\"unexpectedPct\",\"uncertainty\",\n        \"buffEnabled\",\"buffPct\",\"buffFirst\",\"buffDuration\",\"buffPeriod\"}\n    C.path=GetLuaModsPath()..[[TensorReactions\\Settings\\AmdaporHard.AutoSim.lua]]\n    if not AmdaporHardAutoSimConfig and FileExists(C.path) then\n     local saved=FileLoad(C.path)\n     if type(saved)==\"table\" then\n      for _,key in ipairs(C.keys) do\n       local v=saved[key]\n       if type(v)==type(C[key]) and (type(v)~=\"number\" or (v==v and v>-math.huge and v<math.huge)) then C[key]=v end\n      end\n     end\n    end\n    C.unexpectedPct=math.max(0,math.min(30,C.unexpectedPct))\n    C.uncertainty=math.max(0,math.min(10,C.uncertainty))\n    C.buffPct=math.max(0,math.min(50,C.buffPct))\n    C.buffDuration=math.max(1,math.min(60,C.buffDuration))\n    C.buffPeriod=math.max(C.buffDuration+1,math.min(600,C.buffPeriod))\n    C.buffFirst=math.max(0,math.min(600,C.buffFirst))\n    C.kill3272=math.max(15,math.min(1200,C.kill3272))\n    C.kill3274=math.max(15,math.min(1200,C.kill3274))\n    C.kill0=math.max(15,math.min(1200,C.kill0))\n    function C.save()\n     local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n     if not FolderExists(folder) then FolderCreate(folder) end\n     local values={}\n     for _,key in ipairs(C.keys) do values[key]=C[key] end\n     FileSave(C.path,values)\n     C.status=\"Saved. Changes apply next combat.\"\n    end\n    C.fileApiVersion=1\n    C.save()\n    AmdaporHardAutoSimConfig=C\nend\n\n-- Migrate an already initialized settings table without replacing user choices.\nif AmdaporHardAutoSimConfig.poolFinal==nil then\n AmdaporHardAutoSimConfig.poolFinal=true\n table.insert(AmdaporHardAutoSimConfig.keys,\"poolFinal\")\nend\n\n-- Runs after native map 189, map and combat gates; no timeline timer is used.\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=189 or not p.incombat then self.used=true;return end\nlocal isCaster=p.job==25 or p.job==27 or p.job==35 or p.job==42 or p.job==36 or p.job==24 or p.job==28 or p.job==33 or p.job==40\ngStartCombat = false\nlocal helpers = AnyoneCore and AnyoneCore.Settings\nif helpers and helpers.DutyHelper then helpers.DutyHelper.enabled = false end\nif helpers and helpers.PrepullHelper then helpers.PrepullHelper.enabled = false end\nlocal C=AmdaporHardAutoSimConfig\nlocal A=TensorCore.API.TensorACR\nlocal ok,t=pcall(A.getAutoSimTime)\nif not ok or type(t)~=\"number\" or t<0 then return end -- readiness wait, not completion\nif data.amdaporhard_autosim then self.used=true;return end\nlocal S={enabled=C.enabled,movement=C.movement and isCaster,returnField=false,trash=C.trash,\n    killOverride=C.killOverride,kill3272=C.kill3272,kill3274=C.kill3274,kill0=C.kill0,\n    unexpectedPct=C.unexpectedPct,uncertainty=C.uncertainty,buffEnabled=C.buffEnabled,\n    buffPct=C.buffPct,buffFirst=C.buffFirst,buffDuration=C.buffDuration,buffPeriod=C.buffPeriod,\n    boss=0,origin=0,counts={},phases={},phaseCount=0,anchorsSeen=0,setup=true}\ndata.amdaporhard_autosim=S\n-- Filled by the evidence builder; tables are allocated once per combat.\nS.definitions={[3272]={[\"name\"]=\"Anchag\",[\"anchors\"]={[3167]={22.515,66.859},[3166]={36.312,55.625}},[\"movement\"]={{23,25}}},[3274]={[\"name\"]=\"Boogyman\",[\"anchors\"]={[3169]={5.204,25.172},[3171]={13.094}},[\"movement\"]={{13,16}}}}\n\nfunction S.add(kind,a,b,value,relative)\n    if b<=a or a>=1200 then return end\n    b=math.min(b,1200)\n    local id=A.addAutoSimPhase(kind,a,b,value)\n    if id then\n        S.phaseCount=S.phaseCount+1\n        S.phases[S.phaseCount]={id=id,kind=kind,a=a,b=b,value=value,relative=relative}\n    end\nend\n\nfunction S.startBoss(cid,entityID,origin,now)\n    local def=S.definitions[cid]\n    if not def or S.boss~=0 or not S.enabled then return end\n    gStartCombat=false\n    S.boss=cid;S.entityID=entityID;S.origin=origin\n    A.setAutoSimUnexpectedMovementPct(S.unexpectedPct/100)\n    if S.killOverride then\n        A.setAutoSimKillTime(math.min(1200,origin+S[\"kill\"..cid]))\n        A.addAutoSimUncertainty(now,10) -- one normal-party sample: do not claim exact kill timing\n    end\n    -- Keep automatic kill uncertainty by default. Do not invent forced target downtime.\n    -- Only owned movement/field phases are authored; AoE counts and DoT targets stay live.\n    if S.movement then\n        for i=1,#def.movement do\n            local w=def.movement[i]\n            local a,b=origin+w[1],origin+w[2]\n            if b>now then\n                a=math.max(a,now)\n                S.add(\"CasterDowntime\",a,b,1,true)\n                if S.returnField then S.add(\"GroundFieldMovement\",b,b+0.2,2,true) end\n            end\n        end\n    end\n    if S.buffEnabled and S.buffPct>0 then\n        local a=origin+S.buffFirst\n        while a<1200 do\n            if a+S.buffDuration>now then S.add(\"RaidBuff\",math.max(a,now),a+S.buffDuration,1+S.buffPct/100,false) end\n            a=a+S.buffPeriod\n        end\n    end\n    C.status=\"Active: \"..def.name..\". Kill estimate: \"..(S.killOverride and \"manual\" or \"automatic\")\nend\n\nfunction S.channel(args)\n    if not S.enabled then return end\n    local cid=args.entityContentID\n    local def=S.definitions[cid]\n    if not def then return end\n    local aid=args.spellID\n    if aid==34780 then aid=34779 end\n    local anchors=def.anchors[aid]\n    if not anchors then return end -- stable boss cast identity before API work\n    if S.boss~=0 and (S.boss~=cid or S.entityID~=args.entityID) then return end\n    local valid,now=pcall(A.getAutoSimTime)\n    if not valid or type(now)~=\"number\" or now<0 or now>=1200 then return end\n    local n=(S.counts[aid] or 0)+1\n    local expected=anchors[n]\n    if not expected then return end\n    if S.boss==0 and math.abs(now-expected)>2 then return end\n    S.counts[aid]=n\n    if S.boss==0 then S.startBoss(cid,args.entityID,now-expected,now) end\n    if S.boss~=cid then return end\n    local candidate=now-expected\n    -- If enabled mid-boss, do not match a late repeat to the first occurrence.\n    if math.abs(candidate-S.origin)>2 then return end\n    local shift=candidate-S.origin\n    S.anchorsSeen=S.anchorsSeen+1\n    if math.abs(shift)<0.15 then return end\n    -- Remove every future owned phase before reinsertion, avoiding transient overlaps.\n    local movementEnd=now\n    local fieldEnd=now\n    for i=1,S.phaseCount do\n        local phase=S.phases[i]\n        if phase.relative and phase.id and phase.a>now+0.05 then\n            A.removeAutoSimPhase(phase.id);phase.id=nil;phase.pending=true\n        elseif phase.id and phase.a<=now+0.05 and phase.b>now then\n            if phase.kind==\"CasterDowntime\" then movementEnd=phase.b end\n            if phase.kind==\"GroundFieldMovement\" then fieldEnd=phase.b end\n        end\n    end\n    for i=1,S.phaseCount do\n        local phase=S.phases[i]\n        if phase.pending then\n            phase.pending=false\n            local a,b=phase.a+shift,phase.b+shift\n            local minimum=phase.kind==\"CasterDowntime\" and movementEnd or math.max(fieldEnd,movementEnd)\n            a=math.max(a,minimum,now+0.05)\n            if b>a then\n                phase.id=A.addAutoSimPhase(phase.kind,a,b,phase.value)\n                phase.a=a;phase.b=b\n                if phase.kind==\"CasterDowntime\" then movementEnd=b else fieldEnd=b end\n            end\n        end\n    end\n    S.origin=candidate\nend\n\nif S.enabled then\n    local target=TensorCore.mGetTarget()\n    if target and S.definitions[target.contentid] and target.attackable and target.incombat then\n        -- Near pull start, zero is the combat-clock origin; later setup waits for an anchor.\n        if t<=5 then S.startBoss(target.contentid,target.id,0,t) end\n    end\n    if S.boss==0 and S.trash then A.setAutoSimUnexpectedMovementPct(S.unexpectedPct/100) end\nend\nself.used=true\n",
						conditions = 
						{
							
							{
								"dbe530e9-e4c8-8cc4-9020-46d5fc7f65bb",
								true,
							},
							
							{
								"95adc280-0c38-76fa-89ab-31654a7b0dbf",
								true,
							},
						},
						name = "Set up this combat",
						uuid = "752224ac-d050-577d-b20a-e449fb1c7dd3",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 189,
						name = "Amdapor Keep (Hard)/AutoSim",
						uuid = "dbe530e9-e4c8-8cc4-9020-46d5fc7f65bb",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn p ~= nil and p.incombat and data.amdaporhard_autosim == nil",
						dequeueIfLuaFalse = true,
						name = "Relevant state",
						uuid = "95adc280-0c38-76fa-89ab-31654a7b0dbf",
						version = 3,
					},
				},
			},
			displayPath = "Amdapor Keep (Hard)/AutoSim",
			name = "Set up this combat",
			throttleTime = 500,
			timeout = 3,
			uuid = "12403807-e0fc-5e35-b18c-c1df987bf59c",
			version = 2,
		},
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
						actionLua = "-- Shared pull-gathering helper; settings are independent of Minion core Settings.\nif not DungeonPullGather or DungeonPullGather.version~=2026111607 then\n local D={version=2026111607}\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n D.path=folder..[[DungeonAutoSim.Gather.lua]]\n local c=FileExists(D.path)and FileLoad(D.path)or{}\n if type(c)~='table'then c={}end\n if type(c.enabled)~='boolean'then c.enabled=true end\n if type(c.diagnostics)~='boolean'then c.diagnostics=true end\n if type(c.settle)~='number'or c.settle<.5 or c.settle>5 then c.settle=3 end\n if type(c.timeout)~='number'or c.timeout<5 or c.timeout>40 then c.timeout=20 end\n if type(c.brdDotHP)~='number'or c.brdDotHP<0 or c.brdDotHP>30 then c.brdDotHP=20 end\n if type(c.apexCap)~='number'or c.apexCap<80 or c.apexCap>100 then c.apexCap=95 end\n if type(c.overrides)~='table'then c.overrides={}end\n if type(c.disabledOverrides)~='table'then c.disabledOverrides={}end\n for map,v in pairs(c.overrides)do\n  if type(map)~='number'or type(v)~='table'or type(v.settle)~='number'or v.settle<.5 or v.settle>5 or type(v.timeout)~='number'or v.timeout<5 or v.timeout>40 then c.overrides[map]=nil end\n end\n if c.migratedSettle3~=true then\n  if math.abs(c.settle-2.3)<.001 then c.settle=3 end\n  for _,v in pairs(c.overrides)do if math.abs(v.settle-2.3)<.001 then v.settle=3 end end\n  c.defaultSettle=3;c.migratedSettle3=true\n end\n D.config=c\n function D.save()\n  if not FolderExists(folder)then FolderCreate(folder)end\n  FileSave(D.path,{enabled=c.enabled,settle=c.settle,timeout=c.timeout,apexCap=c.apexCap,diagnostics=c.diagnostics,defaultSettle=c.defaultSettle,migratedSettle3=c.migratedSettle3,brdDotHP=c.brdDotHP,overrides=c.overrides,disabledOverrides=c.disabledOverrides})\n end\n function D.timing(map)\n  if not c.overrides[map]and not c.disabledOverrides[map]then\n   c.overrides[map]={settle=c.settle,timeout=c.timeout};D.save()\n  end\n  return c.overrides[map]or c\n end\n function D.restoreDots()\n  local r=D.dotToggle\n  if r and _G[r.var]==false then _G[r.var]=r.previous end\n  D.dotToggle=nil;D.dotActive=nil;D.dotStatus=nil\n end\n function D.reset()D.restoreDots();D.pull=nil;D.active=false;D.reason=nil;D.detail=nil;D.bardStatus=nil;D.dotActive=nil;D.dotStatus=nil end\n function D.trace(text)\n  if D.traceText~=text then D.traceText=text;TensorCore.timelineLogToFile('[Dungeon W2W] '..text..'\\n')end\n end\n function D.update(p,valid,isBoss,bosses)\n  if not c.enabled or not valid or isBoss or not p or not p.alive or not p.incombat then\n   if D.pull then D.trace('released: disabled, boss, death or combat ended')end\n   D.reset();return false\n  end\n  local timing=D.timing(p.localmapid)\n  local now=Now();local tank\n  for _,e in pairs(TensorCore.getEntityGroupList('Tank',nil,true)or{})do\n   if e.alive and e.pos and (e.pos.x-p.pos.x)^2+(e.pos.z-p.pos.z)^2<=60^2 then\n    if not tank or e.id<tank.id then tank=e end\n   end\n  end\n  if not tank then D.reset();D.detail='No nearby engaged party tank';return false end\n  local g=D.pull\n  if not g or g.map~=p.localmapid or g.tank~=tank.id then\n   g={map=p.localmapid,tank=tank.id,start=now,seen={},arrived=now,anchor={x=tank.pos.x,z=tank.pos.z},stationary=now};D.pull=g\n  end\n  if g.released then D.active=false;return false end\n  local count,far,new=0,0,0\n  TensorCore.forEachEntity('alive,targetable,attackable',function(id)\n   local e=TensorCore.mGetEntity(id)\n   if e and e.incombat and e.pos and not bosses[e.contentid] and math.abs(e.pos.y-tank.pos.y)<=10 then\n    local distance=(e.pos.x-tank.pos.x)^2+(e.pos.z-tank.pos.z)^2\n    if distance<=60^2 then\n     count=count+1\n     if not g.seen[id]then g.seen[id]=true;g.arrived=now;new=new+1 end\n     if distance>(12+(e.hitradius or 0))^2 then far=far+1 end\n    end\n   end\n   return true\n  end)\n  if (tank.pos.x-g.anchor.x)^2+(tank.pos.z-g.anchor.z)^2>1^2 then\n   g.anchor={x=tank.pos.x,z=tank.pos.z};g.stationary=now\n  end\n  if count==0 then\n   g.readyAt=nil\n   if now-g.start>=timing.timeout*1000 then g.released=true;D.active=false;D.reason=nil;D.trace('released: gather timeout, no engaged trash');return false end\n  else\n   if far>0 then g.readyAt=nil elseif not g.readyAt then g.readyAt=now end\n  end\n  if count>0 and far==0 and g.readyAt and now-g.readyAt>=timing.settle*1000 and now-g.stationary>=timing.settle*1000 and now-g.arrived>=timing.settle*1000 and now-g.start>=3000 then\n   g.released=true;D.active=false;D.reason=nil;D.trace('released: tank stopped, roster stable and '..count..' enemies gathered');return false\n  end\n  if now-g.start>=timing.timeout*1000 then\n   g.released=true;D.active=false;D.reason=nil;D.trace('released: '..timing.timeout..'s maximum gather wait; far='..far..' engaged='..count);return false\n  end\n  D.active=true;D.reason='Gathering pull'\n  D.detail=string.format('Gathering pull: %d engaged, %d trailing; %.1f / %.0fs',count,far,(now-g.start)/1000,timing.timeout)\n  local stage=far>0 and 'trailing enemies'or now-g.stationary<timing.settle*1000 and 'tank moving'or'waiting for stable pull'\n  D.trace('holding: '..stage..'; tank='..tank.id..'; engaged='..count..'; far='..far)\n  return true\n end\n function D.lease(id,untilMs)\n  if id==16496 or id==25784 or id==100 or id==113 or id==7406 or id==7407 or id==3560 then return false end\n  local accepted=TensorCore.API.TensorACR.holdActionUntil(id,untilMs,1)\n  D.leases=D.leases or{}\n  if accepted then D.leases[id]=untilMs end\n  return accepted\n end\n function D.dotHold(p,valid,target,bosses,encounter,level)\n  local active=valid and p.job==23 and c.brdDotHP>0 and not encounter\n   and target and target.alive and target.targetable and target.attackable and target.incombat\n   and not bosses[target.contentid]and target.hp and target.hp.max>0\n   and target.hp.percent>0 and target.hp.percent<c.brdDotHP\n  if not active then D.restoreDots();D.dotTraceKey=nil;return end\n  -- BRD's global DoTs QT tells the rotation not to plan these GCDs.\n  local variable='ACR_TensorRequiem4_DoTs'\n  if type(_G[variable])~='boolean'then return end\n  if not D.dotToggle then D.dotToggle={var=variable,previous=_G[variable]}end\n  _G[variable]=false;D.dotActive=true\n  D.dotStatus='BRD DoTs off below '..c.brdDotHP..'% trash HP'\n  local key=tostring(target.id)..':'..c.brdDotHP\n  if D.dotTraceKey~=key then\n   D.dotTraceKey=key\n   TensorCore.timelineLogToFile('[Dungeon BRD DoTs] QT off: target='..target.id..' CID='..target.contentid..' HP='..target.hp.percent..' threshold='..c.brdDotHP..'; no GCD action holds\\n')\n  end\n end\n function D.observeBoss(p,encounter,blocked,held)\n  if p.job~=23 or not encounter then D.bossLogAt=nil;D.bossLogKey=nil;return end\n  if not c.diagnostics then return end\n  local now=Now();local target=TensorCore.mGetTarget()\n  local owned=0;for var in pairs(held or{})do if var:match('_CD$')then owned=owned+1 end end\n  local key=tostring(target and target.id)..':'..tostring(blocked)..':'..tostring(ACR_TensorRequiem4_CD)..':'..owned\n  if D.bossLogAt and now-D.bossLogAt<5000 and D.bossLogKey==key then return end\n  D.bossLogAt=now;D.bossLogKey=key\n  local function state(id)\n   local a=ActionList:Get(1,id)\n   if not a then return 'missing action'end\n   local ok,ready=pcall(function()return a:IsReady(p.id)end)\n   return string.format('cd=%.2f onCD=%s ready=%s ownedLeaseRemainingMs=%.0f',math.max(0,a.cdmax-a.cd),tostring(a.isoncd),ok and tostring(ready)or('read error '..tostring(ready)),math.max(0,(D.leases and D.leases[id]or 0)-now))\n  end\n  local bv=TensorCore.getBuff(p,141);local rf=TensorCore.getBuff(p,2964)\n  TensorCore.timelineLogToFile('[Dungeon BRD boss] target='..tostring(target and target.contentid)..' HP='..tostring(target and target.hp and target.hp.percent)..' CDQT='..tostring(ACR_TensorRequiem4_CD)..' ownedCDvars='..owned..' finalOrLowHP='..tostring(blocked)..' gathering='..tostring(D.active)..' BattleVoice{'..state(118)..'} RadiantFinale{'..state(25785)..'} BVbuff='..tostring(bv and bv.duration)..' RFbuff='..tostring(rf and rf.duration)..' BVhotbar='..tostring(ACR_TensorRequiem4_Hotbar_BattleVoice)..'\\n')\n end\n function D.bard(p,gathering,priorityHold)\n  if p.job~=23 or not gathering then return end\n  local untilMs=Now()+450\n  -- BRD gathering owns short burst-action holds, not its broad CD toggle.\n  -- Both party buffs are held and released together; songs/normal damage remain automatic.\n  for _,row in ipairs({{101,4},{107,38},{118,50},{25785,90}})do\n   if p.level>=row[2]then D.lease(row[1],untilMs)end\n  end\n  D.bardStatus='BRD offensive buffs held for gathered targets; Apex uses its toggle'\n end\n function D.gatherApex(p,gathering)\n  return p.job==23 and gathering and not(p.gauge and type(p.gauge[4])=='number'and p.gauge[4]>=c.apexCap)\n end\n function D.gui()\n  local value,changed=GUI:Checkbox('Wait for full pull (W2W)',c.enabled)\n  if changed then c.enabled=value;D.save()end\n  if GUI:IsItemHovered()then GUI:SetTooltip('Hold major offensive cooldowns until the party tank stops and engaged enemies gather. Last-pack and low-HP holds keep priority. Normal damage continues.')end\n  local diag,edit=GUI:Checkbox('BRD boss-buff diagnostics',c.diagnostics)\n  if edit then c.diagnostics=diag;D.save()end\n  value=GUI:SliderInt('Hold BRD DoTs below trash HP (%)',c.brdDotHP,0,30)\n  if value~=c.brdDotHP then c.brdDotHP=value;D.save()end\n  if GUI:IsItemHovered()then GUI:SetTooltip('Temporarily switches the global BRD DoTs toggle off on selected low-HP trash, then restores its previous value. Bosses are excluded; zero disables.')end\n  if D.dotStatus then GUI:TextWrapped(D.dotStatus)end\n  if c.enabled then\n   local p=TensorCore.mGetPlayer();local map=p and p.localmapid\n   if map then D.timing(map)end\n   local custom=map and c.overrides[map]~=nil or false\n   value,changed=GUI:Checkbox('Use timings for this dungeon',custom)\n   if changed and map then\n    c.disabledOverrides[map]=not value or nil\n    c.overrides[map]=value and {settle=c.settle,timeout=c.timeout}or nil;D.save()\n   end\n   local timing=map and c.overrides[map]or c\n   value=GUI:SliderFloat('Full-pull settle time (seconds)',timing.settle,.5,5,'%.1f')\n   if value~=timing.settle then timing.settle=value;D.save()end\n   value=GUI:SliderFloat('Maximum gather wait (seconds)',timing.timeout,5,40,'%.0f')\n   if value~=timing.timeout then timing.timeout=value;D.save()end\n   value=GUI:SliderInt('Release gathering Apex at Soul Voice',c.apexCap,80,100)\n   if value~=c.apexCap then c.apexCap=value;D.save()end\n   if D.active and D.detail then GUI:TextWrapped(D.detail)end\n   if D.active and D.bardStatus then GUI:TextWrapped(D.bardStatus)end\n  end\n end\n D.save();DungeonPullGather=D\nend\n-- Shared, persisted preferences only. Pull-specific solver state lives in data.\nif not AmdaporHardAutoSimConfig or AmdaporHardAutoSimConfig.fileApiVersion~=1 then\n    local C = AmdaporHardAutoSimConfig or {\n        enabled=true, movement=true, returnField=false, trash=true, poolFinal=true,\n        killOverride=true, kill3272=72.4, kill3274=91.7, kill0=91.7,\n        unexpectedPct=5, uncertainty=1, buffEnabled=false, buffPct=0,\n        buffFirst=5, buffDuration=20, buffPeriod=120,\n        status=\"Ready. Saved changes apply next combat.\",\n        path=GetStartupPath() .. [[\\LuaMods\\TensorReactions\\AmdaporHard.AutoSim.settings.tsv]]\n    }\n    C.keys={\"enabled\",\"movement\",\"returnField\",\"trash\",\"poolFinal\",\"killOverride\",\n        \"kill3272\",\"kill3274\",\"kill0\",\"unexpectedPct\",\"uncertainty\",\n        \"buffEnabled\",\"buffPct\",\"buffFirst\",\"buffDuration\",\"buffPeriod\"}\n    C.path=GetLuaModsPath()..[[TensorReactions\\Settings\\AmdaporHard.AutoSim.lua]]\n    if not AmdaporHardAutoSimConfig and FileExists(C.path) then\n     local saved=FileLoad(C.path)\n     if type(saved)==\"table\" then\n      for _,key in ipairs(C.keys) do\n       local v=saved[key]\n       if type(v)==type(C[key]) and (type(v)~=\"number\" or (v==v and v>-math.huge and v<math.huge)) then C[key]=v end\n      end\n     end\n    end\n    C.unexpectedPct=math.max(0,math.min(30,C.unexpectedPct))\n    C.uncertainty=math.max(0,math.min(10,C.uncertainty))\n    C.buffPct=math.max(0,math.min(50,C.buffPct))\n    C.buffDuration=math.max(1,math.min(60,C.buffDuration))\n    C.buffPeriod=math.max(C.buffDuration+1,math.min(600,C.buffPeriod))\n    C.buffFirst=math.max(0,math.min(600,C.buffFirst))\n    C.kill3272=math.max(15,math.min(1200,C.kill3272))\n    C.kill3274=math.max(15,math.min(1200,C.kill3274))\n    C.kill0=math.max(15,math.min(1200,C.kill0))\n    function C.save()\n     local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n     if not FolderExists(folder) then FolderCreate(folder) end\n     local values={}\n     for _,key in ipairs(C.keys) do values[key]=C[key] end\n     FileSave(C.path,values)\n     C.status=\"Saved. Changes apply next combat.\"\n    end\n    C.fileApiVersion=1\n    C.save()\n    AmdaporHardAutoSimConfig=C\nend\n\n-- Migrate an already initialized settings table without replacing user choices.\nif AmdaporHardAutoSimConfig.poolFinal==nil then\n AmdaporHardAutoSimConfig.poolFinal=true\n table.insert(AmdaporHardAutoSimConfig.keys,\"poolFinal\")\nend\n\n-- GUI submission belongs only in OnDraw. Native Map ID gates precede it.\nlocal C=AmdaporHardAutoSimConfig\nlocal visible=GUI:Begin(\"Amdapor Keep (Hard) - AutoSim\")\nif visible then\n    GUI:TextWrapped(\"Four-player dungeon. Changes are saved and apply next combat.\")\n    local v,changed=GUI:Checkbox(\"Enable boss forecasts\",C.enabled)\n    if changed then C.enabled=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Enable the three boss forecasts. Cooldowns and potions remain controlled by your ACR.\") end\n    v,changed=GUI:Checkbox(\"Movement forecasts\",C.movement)\n    if changed then C.movement=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Short repositioning estimates from your logged positions, anchored to boss casts. These are predictions, not automatic movement.\") end\n    v,changed=GUI:Checkbox(\"Predict return to Ley Lines (BLM only)\",C.returnField)\n    if changed then C.returnField=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Predict re-entry shortly after each estimated move. Assumes you return when safe; this does not move the character.\") end\n    v,changed=GUI:Checkbox(\"Apply movement reserve to trash\",C.trash)\n    if changed then C.trash=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Use the extra movement allowance on wall-to-wall pulls. Trash lifetime, target count and cooldown use remain automatic.\") end\n    v,changed=GUI:InputFloat(\"Extra movement (%)\",C.unexpectedPct,1,5,\"%.1f\")\n    if changed then C.unexpectedPct=math.max(0,math.min(30,v));C.save() end\n    if GUI:CollapsingHeader(\"Boss kill estimates\") then\n        GUI:TextWrapped(\"Automatic by default. The optional values below come from one four-player run, not the slower Duty Support samples.\")\n        v,changed=GUI:Checkbox(\"Override automatic kill estimates\",C.killOverride)\n        if changed then C.killOverride=v;C.save() end\n        v,changed=GUI:InputFloat(\"Anchag (seconds)\",C.kill3272,5,15,\"%.1f\")\n        if changed then C.kill3272=math.max(15,math.min(1200,v));C.save() end\n        v,changed=GUI:InputFloat(\"Boogyman (seconds)\",C.kill3274,5,15,\"%.1f\")\n        if changed then C.kill3274=math.max(15,math.min(1200,v));C.save() end\n        if changed then C.kill0=math.max(15,math.min(1200,v));C.save() end\n    end\n    v,changed=GUI:Checkbox(\"Hold offensive cooldowns on final trash (all jobs)\",C.poolFinal)\n    if changed then C.poolFinal=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Recognizes the last pack before each boss and temporarily turns off the current job’s CD switch. Radiant Finale is explicitly held too. Your previous CD setting is restored when pooling ends; songs keep their own control.\") end\n    local shared=DungeonAutoSimShared\n    if shared then\n        v,changed=GUI:SliderInt(\"Hold new boss cooldowns below HP (%) - shared\",shared.lateHP,0,20)\n        if changed then shared.lateHP=v;shared.save() end\n        if GUI:IsItemHovered() then GUI:SetTooltip(\"Shared across these nine dungeons and all jobs. At this boss HP, stop starting offensive cooldowns; normal attacks continue. 0 disables this rule. Default 8%. Defensive controls and songs keep their own settings.\") end\n    end\n    v,changed=GUI:Checkbox(\"Forecast future party buffs\",C.buffEnabled)\n    if changed then C.buffEnabled=v;C.save() end\n    v,changed=GUI:SliderFloat(\"Combined damage bonus (%)\",C.buffPct,0,50,\"%.1f%%\",1)\n    if changed then C.buffPct=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Optional planning estimate. Zero adds no future buff windows. AST/DNC timing varies; sustained Standard Finish and Devilment should not be treated as a universal periodic damage bonus.\") end\n    GUI:Text(\"Party buff timing\")\n    GUI:TextWrapped(C.buffEnabled and \"Forecast enabled. Times are seconds from boss pull.\" or \"Forecast disabled. These values apply only when the party buff forecast is enabled.\")\n        v,changed=GUI:InputFloat(\"First buff (seconds)\",C.buffFirst,1,5,\"%.1f\")\n        if changed then C.buffFirst=math.max(0,math.min(600,v));C.save() end\n        v,changed=GUI:InputFloat(\"Buff duration (seconds)\",C.buffDuration,1,5,\"%.1f\")\n        if changed then C.buffDuration=math.max(1,math.min(C.buffPeriod-1,60,v));C.save() end\n        v,changed=GUI:InputFloat(\"Buff interval (seconds)\",C.buffPeriod,5,30,\"%.1f\")\n        if changed then C.buffPeriod=math.max(C.buffDuration+1,math.min(600,v));C.save() end\n    GUI:Separator()\n    GUI:TextWrapped(C.status)\n    if C.poolStatus then GUI:TextWrapped(C.poolStatus) end\n do\n local h=DungeonProfilePooling\n if h then\nlocal key=\"highleveldungeons\"\nDungeonHoldDisplays=DungeonHoldDisplays or {}\nlocal c=DungeonHoldDisplays[key]\nif not c then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..key..[[.Safety.lua]]\n c=FileExists(path) and FileLoad(path) or {}\n if type(c)~=\"table\" then c={} end\n if type(c.showHoldStatus)~=\"boolean\" then c.showHoldStatus=true end\n if type(c.shortLivedAdds)~=\"boolean\" then c.shortLivedAdds=true end\n c.path=path;DungeonHoldDisplays[key]=c\nend\n GUI:Separator()\n GUI:Text(\"Dungeon holds\")\n local value,changed=GUI:Checkbox(\"Show hold reason\",c.showHoldStatus)\n if changed then c.showHoldStatus=value end\n if GUI:IsItemHovered() then GUI:SetTooltip(\"Shows only holds owned by this dungeon controller. It does not describe holds from other profiles.\") end\n local v,edit=GUI:Checkbox(\"Avoid long BLM casts on dying adds\",c.shortLivedAdds)\n if edit then c.shortLivedAdds=v end\n if GUI:IsItemHovered() then GUI:SetTooltip(\"Uses the target's lifetime estimate; lets an existing cast finish. Does not change targets or block healing.\") end\n if changed or edit then\n  local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(c.path,{showHoldStatus=c.showHoldStatus,shortLivedAdds=c.shortLivedAdds})\n end\n if c.showHoldStatus then GUI:TextWrapped(h.status or h.reason or \"No dungeon cooldown hold\") end\n DungeonPullGather.gui()\n end\n end\n\nend\nGUI:End()\nself.used=true",
						conditions = 
						{
							
							{
								"ed38e116-6008-61af-a574-112913410be8",
								true,
							},
						},
						name = "Settings",
						uuid = "370b45dd-1ad7-9cad-beeb-a94503557313",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 189,
						name = "Amdapor Keep (Hard)/AutoSim",
						uuid = "ed38e116-6008-61af-a574-112913410be8",
						version = 3,
					},
				},
			},
			displayPath = "Amdapor Keep (Hard)/AutoSim",
			eventType = 13,
			name = "Settings",
			timeout = 3,
			uuid = "fd08dcfa-e6aa-5d02-bc07-f835fd412c14",
			version = 2,
		},
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
						actionLua = "data.amdaporhard_autosim=nil\nself.used=true",
						conditions = 
						{
							
							{
								"44745671-5a38-d595-9c9a-779c76a64a8e",
								true,
							},
							
							{
								"8b5e53e9-ab3a-44af-81e8-77b076979e6b",
								true,
							},
						},
						name = "Reset between combats",
						uuid = "b96be9a3-4381-4392-838c-3efad685c81b",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 189,
						name = "Amdapor Keep (Hard)/AutoSim",
						uuid = "44745671-5a38-d595-9c9a-779c76a64a8e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn p ~= nil and not p.incombat and data.amdaporhard_autosim ~= nil",
						dequeueIfLuaFalse = true,
						name = "Relevant state",
						uuid = "8b5e53e9-ab3a-44af-81e8-77b076979e6b",
						version = 3,
					},
				},
			},
			displayPath = "Amdapor Keep (Hard)/AutoSim",
			name = "Reset between combats",
			throttleTime = 500,
			timeout = 3,
			uuid = "d1337e0d-fcc5-a423-81b0-2f3361b0e0c3",
			version = 2,
		},
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
						actionLua = "data.amdaporhard_autosim.channel(eventArgs)\nself.used=true",
						conditions = 
						{
							
							{
								"a4c6597e-c293-8046-8ab5-9b8851ae28aa",
								true,
							},
							
							{
								"b4086dda-9ce9-ecac-b571-fde8428e9ba9",
								true,
							},
						},
						name = "Boss cast anchors",
						uuid = "e4745c9b-be9c-3686-b46f-5f61d000f1af",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 189,
						name = "Amdapor Keep (Hard)/AutoSim",
						uuid = "a4c6597e-c293-8046-8ab5-9b8851ae28aa",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.amdaporhard_autosim\nif not s or not s.enabled then return false end\nlocal e=eventArgs\nreturn (e.entityContentID==3272 and (e.spellID==3167 or e.spellID==3166)) or (e.entityContentID==3274 and (e.spellID==3169 or e.spellID==3171))",
						dequeueIfLuaFalse = true,
						name = "Relevant state",
						uuid = "b4086dda-9ce9-ecac-b571-fde8428e9ba9",
						version = 3,
					},
				},
			},
			displayPath = "Amdapor Keep (Hard)/AutoSim",
			eventType = 3,
			name = "Boss cast anchors",
			timeout = 3,
			uuid = "a531e2fb-a578-5ad8-8b63-cdb56f25a78b",
			version = 2,
		},
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
						actionLua = "data.amdaporhard_final_trash = true\nself.used = true",
						conditions = 
						{
							
							{
								"5308f4be-0d64-c047-ba32-daaa60c134fd",
								true,
							},
							
							{
								"400509d1-4d43-32e4-9c35-885164611206",
								true,
							},
						},
						name = "Reserve cooldowns on confirmed final trash",
						uuid = "bcb50079-63a5-9a41-8b09-643915637abb",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 189,
						name = "Amdapor Keep (Hard)/AutoSim",
						uuid = "5308f4be-0d64-c047-ba32-daaa60c134fd",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nlocal c=AmdaporHardAutoSimConfig\nlocal s=data.amdaporhard_autosim\nif not p or not p.incombat or not c or not c.enabled or not c.poolFinal or not s or s.boss~=0 then return false end\nlocal t=TensorCore.mGetTarget()\nif not t or not t.incombat then return false end\nreturn t.contentid==3256 or t.contentid==3262",
						dequeueIfLuaFalse = true,
						name = "Relevant state",
						uuid = "400509d1-4d43-32e4-9c35-885164611206",
						version = 3,
					},
				},
			},
			displayPath = "Amdapor Keep (Hard)/AutoSim",
			name = "Recognize final trash before bosses",
			throttleTime = 500,
			timeout = 3,
			uuid = "c6a745d0-a0f0-6b61-8151-725d5758e553",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Amdapor Keep (Hard)",
			name = "Draws",
			uuid = "21d64702-a47b-f00b-89f4-e0c8a836663b",
		},
		objectType = "folder",
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
						actionLua = "local e=eventArgs\nlocal shapes={[3167]={\"Rect\",0}}\nlocal shape=shapes[e.aoeID]\nlocal ms=e.startTime+e.duration*1000-Now()\nif ms>0 and ms<20000 then\n    local drawer=TensorCore.getStaticDrawer(0x603333FF,2)\n    if shape[1]==\"Circle\" then\n        drawer:addTimedCircle(ms,e.x,e.y,e.z,shape[2],0,false,true)\n    elseif e.aoeWidth>0 and e.aoeLength>0 then\n        drawer:addTimedRect(ms,e.x,e.y,e.z,e.aoeLength,e.aoeWidth,e.heading,0,false,true)\n    end\n    AnyoneCore.addWorldTextCountdown(ms,{x=e.x,y=e.y+1,z=e.z},0xFFFFFFFF,true,1.1)\nend\nself.used=true",
						conditions = 
						{
							
							{
								"397cf419-4f81-4a75-9528-ab1c30d4a44c",
								true,
							},
							
							{
								"99fa533f-6d93-4626-8b8c-fbc5a98f297c",
								true,
							},
						},
						name = "Selected attack telegraphs",
						uuid = "395a4179-90c3-5974-9c07-0ba028e6b66b",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 189,
						name = "Amdapor Keep (Hard)/Draws",
						uuid = "397cf419-4f81-4a75-9528-ab1c30d4a44c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local e=eventArgs\nreturn not e.friendly and (e.aoeID==3167)",
						dequeueIfLuaFalse = true,
						name = "Relevant state",
						uuid = "99fa533f-6d93-4626-8b8c-fbc5a98f297c",
						version = 3,
					},
				},
			},
			displayPath = "Amdapor Keep (Hard)/Draws",
			eventType = 18,
			name = "Selected attack telegraphs",
			timeout = 3,
			uuid = "7a640846-3daa-f1d6-a307-ce13b1a40d60",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "The Ghimlyt Dark",
			uuid = "bc7cbdfd-26fc-839a-802a-4a584546a6ed",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Ghimlyt Dark",
			name = "AutoSim",
			uuid = "e330ff8f-db4a-815c-8b02-da8cacaa31a6",
		},
		objectType = "folder",
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
						actionLua = "-- Shared, persisted preferences only. Pull-specific solver state lives in data.\nif not GhimlytAutoSimConfig or GhimlytAutoSimConfig.fileApiVersion~=1 then\n    local C = GhimlytAutoSimConfig or {\n        enabled=true, movement=true, returnField=true, trash=true, poolFinal=true,\n        killOverride=true, kill7855=13.2, kill7856=32.4, kill7857=83,\n        unexpectedPct=5, uncertainty=1, buffEnabled=false, buffPct=0,\n        buffFirst=5, buffDuration=20, buffPeriod=120,\n        status=\"Ready. Saved changes apply next combat.\",\n        path=GetStartupPath() .. [[\\LuaMods\\TensorReactions\\Ghimlyt.AutoSim.settings.tsv]]\n    }\n    C.keys={\"enabled\",\"movement\",\"returnField\",\"trash\",\"poolFinal\",\"killOverride\",\n        \"kill7855\",\"kill7856\",\"kill7857\",\"unexpectedPct\",\"uncertainty\",\n        \"buffEnabled\",\"buffPct\",\"buffFirst\",\"buffDuration\",\"buffPeriod\"}\n    C.path=GetLuaModsPath()..[[TensorReactions\\Settings\\Ghimlyt.AutoSim.lua]]\n    if not GhimlytAutoSimConfig and FileExists(C.path) then\n     local saved=FileLoad(C.path)\n     if type(saved)==\"table\" then\n      for _,key in ipairs(C.keys) do\n       local v=saved[key]\n       if type(v)==type(C[key]) and (type(v)~=\"number\" or (v==v and v>-math.huge and v<math.huge)) then C[key]=v end\n      end\n     end\n    end\n    C.unexpectedPct=math.max(0,math.min(30,C.unexpectedPct))\n    C.uncertainty=math.max(0,math.min(10,C.uncertainty))\n    C.buffPct=math.max(0,math.min(50,C.buffPct))\n    C.buffDuration=math.max(1,math.min(60,C.buffDuration))\n    C.buffPeriod=math.max(C.buffDuration+1,math.min(600,C.buffPeriod))\n    C.buffFirst=math.max(0,math.min(600,C.buffFirst))\n    C.kill7855=math.max(15,math.min(1200,C.kill7855))\n    C.kill7856=math.max(15,math.min(1200,C.kill7856))\n    C.kill7857=math.max(15,math.min(1200,C.kill7857))\n    function C.save()\n     local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n     if not FolderExists(folder) then FolderCreate(folder) end\n     local values={}\n     for _,key in ipairs(C.keys) do values[key]=C[key] end\n     FileSave(C.path,values)\n     C.status=\"Saved. Changes apply next combat.\"\n    end\n    C.fileApiVersion=1\n    C.save()\n    GhimlytAutoSimConfig=C\nend\n\n-- Migrate an already initialized settings table without replacing user choices.\nif GhimlytAutoSimConfig.poolFinal==nil then\n GhimlytAutoSimConfig.poolFinal=true\n table.insert(GhimlytAutoSimConfig.keys,\"poolFinal\")\nend\n\n-- Runs after native map 1174, map and combat gates; no timeline timer is used.\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=1174 or not p.incombat then self.used=true;return end\nlocal isCaster=p.job==25 or p.job==27 or p.job==35 or p.job==42 or p.job==36 or p.job==24 or p.job==28 or p.job==33 or p.job==40\ngStartCombat = false\nlocal helpers = AnyoneCore and AnyoneCore.Settings\nif helpers and helpers.DutyHelper then helpers.DutyHelper.enabled = false end\nif helpers and helpers.PrepullHelper then helpers.PrepullHelper.enabled = false end\nlocal C=GhimlytAutoSimConfig\nlocal A=TensorCore.API.TensorACR\nlocal ok,t=pcall(A.getAutoSimTime)\nif not ok or type(t)~=\"number\" or t<0 then return end -- readiness wait, not completion\nif data.ghimlyt_autosim then self.used=true;return end\nlocal S={enabled=C.enabled,movement=C.movement and isCaster,returnField=C.returnField and p.job==25,trash=C.trash,\n    killOverride=C.killOverride,kill7855=C.kill7855,kill7856=C.kill7856,kill7857=C.kill7857,\n    unexpectedPct=C.unexpectedPct,uncertainty=C.uncertainty,buffEnabled=C.buffEnabled,\n    buffPct=C.buffPct,buffFirst=C.buffFirst,buffDuration=C.buffDuration,buffPeriod=C.buffPeriod,\n    boss=0,origin=0,counts={},phases={},phaseCount=0,anchorsSeen=0,setup=true}\ndata.ghimlyt_autosim=S\n-- Filled by the evidence builder; tables are allocated once per combat.\nS.definitions={[7855]={[\"name\"]=\"Mark III-B Magitek Colossus\",[\"anchors\"]={[14190]={7.17}},[\"movement\"]={}},[7856]={[\"name\"]=\"Prometheus\",[\"anchors\"]={[13401]={29.8}},[\"movement\"]={}},[7857]={[\"name\"]=\"Soranus sisters\",[\"anchors\"]={[14116]={14.422,57.985},[14119]={29.625}},[\"movement\"]={{14,17},{58,61}}}}\n\nfunction S.add(kind,a,b,value,relative)\n    if b<=a or a>=1200 then return end\n    b=math.min(b,1200)\n    local id=A.addAutoSimPhase(kind,a,b,value)\n    if id then\n        S.phaseCount=S.phaseCount+1\n        S.phases[S.phaseCount]={id=id,kind=kind,a=a,b=b,value=value,relative=relative}\n    end\nend\n\nfunction S.startBoss(cid,entityID,origin,now)\n    local def=S.definitions[cid]\n    if not def or S.boss~=0 or not S.enabled then return end\n    gStartCombat=false\n    S.boss=cid;S.entityID=entityID;S.origin=origin\n    A.setAutoSimUnexpectedMovementPct(S.unexpectedPct/100)\n    if S.killOverride then\n        A.setAutoSimKillTime(math.min(1200,origin+S[\"kill\"..cid]))\n        A.addAutoSimUncertainty(now,10) -- one normal-party sample: do not claim exact kill timing\n    end\n    -- Keep automatic kill uncertainty by default. Do not invent forced target downtime.\n    -- Only owned movement/field phases are authored; AoE counts and DoT targets stay live.\n    if S.movement then\n        for i=1,#def.movement do\n            local w=def.movement[i]\n            local a,b=origin+w[1],origin+w[2]\n            if b>now then\n                a=math.max(a,now)\n                S.add(\"CasterDowntime\",a,b,1,true)\n                if S.returnField then S.add(\"GroundFieldMovement\",b,b+0.2,2,true) end\n            end\n        end\n    end\n    if S.buffEnabled and S.buffPct>0 then\n        local a=origin+S.buffFirst\n        while a<1200 do\n            if a+S.buffDuration>now then S.add(\"RaidBuff\",math.max(a,now),a+S.buffDuration,1+S.buffPct/100,false) end\n            a=a+S.buffPeriod\n        end\n    end\n    C.status=\"Active: \"..def.name..\". Kill estimate: \"..(S.killOverride and \"manual\" or \"automatic\")\nend\n\nfunction S.channel(args)\n    if not S.enabled then return end\n    local cid=args.entityContentID\n    local def=S.definitions[cid]\n    if not def then return end\n    local aid=args.spellID\n    if aid==34780 then aid=34779 end\n    local anchors=def.anchors[aid]\n    if not anchors then return end -- stable boss cast identity before API work\n    if S.boss~=0 and (S.boss~=cid or S.entityID~=args.entityID) then return end\n    local valid,now=pcall(A.getAutoSimTime)\n    if not valid or type(now)~=\"number\" or now<0 or now>=1200 then return end\n    local n=(S.counts[aid] or 0)+1\n    local expected=anchors[n]\n    if not expected then return end\n    if S.boss==0 and math.abs(now-expected)>2 then return end\n    S.counts[aid]=n\n    if S.boss==0 then S.startBoss(cid,args.entityID,now-expected,now) end\n    if S.boss~=cid then return end\n    local candidate=now-expected\n    -- If enabled mid-boss, do not match a late repeat to the first occurrence.\n    if math.abs(candidate-S.origin)>2 then return end\n    local shift=candidate-S.origin\n    S.anchorsSeen=S.anchorsSeen+1\n    if math.abs(shift)<0.15 then return end\n    -- Remove every future owned phase before reinsertion, avoiding transient overlaps.\n    local movementEnd=now\n    local fieldEnd=now\n    for i=1,S.phaseCount do\n        local phase=S.phases[i]\n        if phase.relative and phase.id and phase.a>now+0.05 then\n            A.removeAutoSimPhase(phase.id);phase.id=nil;phase.pending=true\n        elseif phase.id and phase.a<=now+0.05 and phase.b>now then\n            if phase.kind==\"CasterDowntime\" then movementEnd=phase.b end\n            if phase.kind==\"GroundFieldMovement\" then fieldEnd=phase.b end\n        end\n    end\n    for i=1,S.phaseCount do\n        local phase=S.phases[i]\n        if phase.pending then\n            phase.pending=false\n            local a,b=phase.a+shift,phase.b+shift\n            local minimum=phase.kind==\"CasterDowntime\" and movementEnd or math.max(fieldEnd,movementEnd)\n            a=math.max(a,minimum,now+0.05)\n            if b>a then\n                phase.id=A.addAutoSimPhase(phase.kind,a,b,phase.value)\n                phase.a=a;phase.b=b\n                if phase.kind==\"CasterDowntime\" then movementEnd=b else fieldEnd=b end\n            end\n        end\n    end\n    S.origin=candidate\nend\n\nif S.enabled then\n    local target=TensorCore.mGetTarget()\n    if target and S.definitions[target.contentid] and target.attackable and target.incombat then\n        -- Near pull start, zero is the combat-clock origin; later setup waits for an anchor.\n        if t<=5 then S.startBoss(target.contentid,target.id,0,t) end\n    end\n    if S.boss==0 and S.trash then A.setAutoSimUnexpectedMovementPct(S.unexpectedPct/100) end\nend\nself.used=true\n",
						conditions = 
						{
							
							{
								"76ff4421-f10d-4b5d-96e0-e06fe4dec81e",
								true,
							},
							
							{
								"ab649018-d7a9-aba4-937c-0de91ea66022",
								true,
							},
						},
						name = "Set up this combat",
						uuid = "f788b3f3-34aa-731a-8d5e-ac9993999227",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 1174,
						name = "The Ghimlyt Dark/AutoSim",
						uuid = "76ff4421-f10d-4b5d-96e0-e06fe4dec81e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn p ~= nil and p.incombat and data.ghimlyt_autosim == nil",
						dequeueIfLuaFalse = true,
						name = "Relevant state",
						uuid = "ab649018-d7a9-aba4-937c-0de91ea66022",
						version = 3,
					},
				},
			},
			displayPath = "The Ghimlyt Dark/AutoSim",
			name = "Set up this combat",
			throttleTime = 500,
			timeout = 3,
			uuid = "7cea5d71-7943-8021-a256-0a3f1dd67fbd",
			version = 2,
		},
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
						actionLua = "-- Shared pull-gathering helper; settings are independent of Minion core Settings.\nif not DungeonPullGather or DungeonPullGather.version~=2026111607 then\n local D={version=2026111607}\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n D.path=folder..[[DungeonAutoSim.Gather.lua]]\n local c=FileExists(D.path)and FileLoad(D.path)or{}\n if type(c)~='table'then c={}end\n if type(c.enabled)~='boolean'then c.enabled=true end\n if type(c.diagnostics)~='boolean'then c.diagnostics=true end\n if type(c.settle)~='number'or c.settle<.5 or c.settle>5 then c.settle=3 end\n if type(c.timeout)~='number'or c.timeout<5 or c.timeout>40 then c.timeout=20 end\n if type(c.brdDotHP)~='number'or c.brdDotHP<0 or c.brdDotHP>30 then c.brdDotHP=20 end\n if type(c.apexCap)~='number'or c.apexCap<80 or c.apexCap>100 then c.apexCap=95 end\n if type(c.overrides)~='table'then c.overrides={}end\n if type(c.disabledOverrides)~='table'then c.disabledOverrides={}end\n for map,v in pairs(c.overrides)do\n  if type(map)~='number'or type(v)~='table'or type(v.settle)~='number'or v.settle<.5 or v.settle>5 or type(v.timeout)~='number'or v.timeout<5 or v.timeout>40 then c.overrides[map]=nil end\n end\n if c.migratedSettle3~=true then\n  if math.abs(c.settle-2.3)<.001 then c.settle=3 end\n  for _,v in pairs(c.overrides)do if math.abs(v.settle-2.3)<.001 then v.settle=3 end end\n  c.defaultSettle=3;c.migratedSettle3=true\n end\n D.config=c\n function D.save()\n  if not FolderExists(folder)then FolderCreate(folder)end\n  FileSave(D.path,{enabled=c.enabled,settle=c.settle,timeout=c.timeout,apexCap=c.apexCap,diagnostics=c.diagnostics,defaultSettle=c.defaultSettle,migratedSettle3=c.migratedSettle3,brdDotHP=c.brdDotHP,overrides=c.overrides,disabledOverrides=c.disabledOverrides})\n end\n function D.timing(map)\n  if not c.overrides[map]and not c.disabledOverrides[map]then\n   c.overrides[map]={settle=c.settle,timeout=c.timeout};D.save()\n  end\n  return c.overrides[map]or c\n end\n function D.restoreDots()\n  local r=D.dotToggle\n  if r and _G[r.var]==false then _G[r.var]=r.previous end\n  D.dotToggle=nil;D.dotActive=nil;D.dotStatus=nil\n end\n function D.reset()D.restoreDots();D.pull=nil;D.active=false;D.reason=nil;D.detail=nil;D.bardStatus=nil;D.dotActive=nil;D.dotStatus=nil end\n function D.trace(text)\n  if D.traceText~=text then D.traceText=text;TensorCore.timelineLogToFile('[Dungeon W2W] '..text..'\\n')end\n end\n function D.update(p,valid,isBoss,bosses)\n  if not c.enabled or not valid or isBoss or not p or not p.alive or not p.incombat then\n   if D.pull then D.trace('released: disabled, boss, death or combat ended')end\n   D.reset();return false\n  end\n  local timing=D.timing(p.localmapid)\n  local now=Now();local tank\n  for _,e in pairs(TensorCore.getEntityGroupList('Tank',nil,true)or{})do\n   if e.alive and e.pos and (e.pos.x-p.pos.x)^2+(e.pos.z-p.pos.z)^2<=60^2 then\n    if not tank or e.id<tank.id then tank=e end\n   end\n  end\n  if not tank then D.reset();D.detail='No nearby engaged party tank';return false end\n  local g=D.pull\n  if not g or g.map~=p.localmapid or g.tank~=tank.id then\n   g={map=p.localmapid,tank=tank.id,start=now,seen={},arrived=now,anchor={x=tank.pos.x,z=tank.pos.z},stationary=now};D.pull=g\n  end\n  if g.released then D.active=false;return false end\n  local count,far,new=0,0,0\n  TensorCore.forEachEntity('alive,targetable,attackable',function(id)\n   local e=TensorCore.mGetEntity(id)\n   if e and e.incombat and e.pos and not bosses[e.contentid] and math.abs(e.pos.y-tank.pos.y)<=10 then\n    local distance=(e.pos.x-tank.pos.x)^2+(e.pos.z-tank.pos.z)^2\n    if distance<=60^2 then\n     count=count+1\n     if not g.seen[id]then g.seen[id]=true;g.arrived=now;new=new+1 end\n     if distance>(12+(e.hitradius or 0))^2 then far=far+1 end\n    end\n   end\n   return true\n  end)\n  if (tank.pos.x-g.anchor.x)^2+(tank.pos.z-g.anchor.z)^2>1^2 then\n   g.anchor={x=tank.pos.x,z=tank.pos.z};g.stationary=now\n  end\n  if count==0 then\n   g.readyAt=nil\n   if now-g.start>=timing.timeout*1000 then g.released=true;D.active=false;D.reason=nil;D.trace('released: gather timeout, no engaged trash');return false end\n  else\n   if far>0 then g.readyAt=nil elseif not g.readyAt then g.readyAt=now end\n  end\n  if count>0 and far==0 and g.readyAt and now-g.readyAt>=timing.settle*1000 and now-g.stationary>=timing.settle*1000 and now-g.arrived>=timing.settle*1000 and now-g.start>=3000 then\n   g.released=true;D.active=false;D.reason=nil;D.trace('released: tank stopped, roster stable and '..count..' enemies gathered');return false\n  end\n  if now-g.start>=timing.timeout*1000 then\n   g.released=true;D.active=false;D.reason=nil;D.trace('released: '..timing.timeout..'s maximum gather wait; far='..far..' engaged='..count);return false\n  end\n  D.active=true;D.reason='Gathering pull'\n  D.detail=string.format('Gathering pull: %d engaged, %d trailing; %.1f / %.0fs',count,far,(now-g.start)/1000,timing.timeout)\n  local stage=far>0 and 'trailing enemies'or now-g.stationary<timing.settle*1000 and 'tank moving'or'waiting for stable pull'\n  D.trace('holding: '..stage..'; tank='..tank.id..'; engaged='..count..'; far='..far)\n  return true\n end\n function D.lease(id,untilMs)\n  if id==16496 or id==25784 or id==100 or id==113 or id==7406 or id==7407 or id==3560 then return false end\n  local accepted=TensorCore.API.TensorACR.holdActionUntil(id,untilMs,1)\n  D.leases=D.leases or{}\n  if accepted then D.leases[id]=untilMs end\n  return accepted\n end\n function D.dotHold(p,valid,target,bosses,encounter,level)\n  local active=valid and p.job==23 and c.brdDotHP>0 and not encounter\n   and target and target.alive and target.targetable and target.attackable and target.incombat\n   and not bosses[target.contentid]and target.hp and target.hp.max>0\n   and target.hp.percent>0 and target.hp.percent<c.brdDotHP\n  if not active then D.restoreDots();D.dotTraceKey=nil;return end\n  -- BRD's global DoTs QT tells the rotation not to plan these GCDs.\n  local variable='ACR_TensorRequiem4_DoTs'\n  if type(_G[variable])~='boolean'then return end\n  if not D.dotToggle then D.dotToggle={var=variable,previous=_G[variable]}end\n  _G[variable]=false;D.dotActive=true\n  D.dotStatus='BRD DoTs off below '..c.brdDotHP..'% trash HP'\n  local key=tostring(target.id)..':'..c.brdDotHP\n  if D.dotTraceKey~=key then\n   D.dotTraceKey=key\n   TensorCore.timelineLogToFile('[Dungeon BRD DoTs] QT off: target='..target.id..' CID='..target.contentid..' HP='..target.hp.percent..' threshold='..c.brdDotHP..'; no GCD action holds\\n')\n  end\n end\n function D.observeBoss(p,encounter,blocked,held)\n  if p.job~=23 or not encounter then D.bossLogAt=nil;D.bossLogKey=nil;return end\n  if not c.diagnostics then return end\n  local now=Now();local target=TensorCore.mGetTarget()\n  local owned=0;for var in pairs(held or{})do if var:match('_CD$')then owned=owned+1 end end\n  local key=tostring(target and target.id)..':'..tostring(blocked)..':'..tostring(ACR_TensorRequiem4_CD)..':'..owned\n  if D.bossLogAt and now-D.bossLogAt<5000 and D.bossLogKey==key then return end\n  D.bossLogAt=now;D.bossLogKey=key\n  local function state(id)\n   local a=ActionList:Get(1,id)\n   if not a then return 'missing action'end\n   local ok,ready=pcall(function()return a:IsReady(p.id)end)\n   return string.format('cd=%.2f onCD=%s ready=%s ownedLeaseRemainingMs=%.0f',math.max(0,a.cdmax-a.cd),tostring(a.isoncd),ok and tostring(ready)or('read error '..tostring(ready)),math.max(0,(D.leases and D.leases[id]or 0)-now))\n  end\n  local bv=TensorCore.getBuff(p,141);local rf=TensorCore.getBuff(p,2964)\n  TensorCore.timelineLogToFile('[Dungeon BRD boss] target='..tostring(target and target.contentid)..' HP='..tostring(target and target.hp and target.hp.percent)..' CDQT='..tostring(ACR_TensorRequiem4_CD)..' ownedCDvars='..owned..' finalOrLowHP='..tostring(blocked)..' gathering='..tostring(D.active)..' BattleVoice{'..state(118)..'} RadiantFinale{'..state(25785)..'} BVbuff='..tostring(bv and bv.duration)..' RFbuff='..tostring(rf and rf.duration)..' BVhotbar='..tostring(ACR_TensorRequiem4_Hotbar_BattleVoice)..'\\n')\n end\n function D.bard(p,gathering,priorityHold)\n  if p.job~=23 or not gathering then return end\n  local untilMs=Now()+450\n  -- BRD gathering owns short burst-action holds, not its broad CD toggle.\n  -- Both party buffs are held and released together; songs/normal damage remain automatic.\n  for _,row in ipairs({{101,4},{107,38},{118,50},{25785,90}})do\n   if p.level>=row[2]then D.lease(row[1],untilMs)end\n  end\n  D.bardStatus='BRD offensive buffs held for gathered targets; Apex uses its toggle'\n end\n function D.gatherApex(p,gathering)\n  return p.job==23 and gathering and not(p.gauge and type(p.gauge[4])=='number'and p.gauge[4]>=c.apexCap)\n end\n function D.gui()\n  local value,changed=GUI:Checkbox('Wait for full pull (W2W)',c.enabled)\n  if changed then c.enabled=value;D.save()end\n  if GUI:IsItemHovered()then GUI:SetTooltip('Hold major offensive cooldowns until the party tank stops and engaged enemies gather. Last-pack and low-HP holds keep priority. Normal damage continues.')end\n  local diag,edit=GUI:Checkbox('BRD boss-buff diagnostics',c.diagnostics)\n  if edit then c.diagnostics=diag;D.save()end\n  value=GUI:SliderInt('Hold BRD DoTs below trash HP (%)',c.brdDotHP,0,30)\n  if value~=c.brdDotHP then c.brdDotHP=value;D.save()end\n  if GUI:IsItemHovered()then GUI:SetTooltip('Temporarily switches the global BRD DoTs toggle off on selected low-HP trash, then restores its previous value. Bosses are excluded; zero disables.')end\n  if D.dotStatus then GUI:TextWrapped(D.dotStatus)end\n  if c.enabled then\n   local p=TensorCore.mGetPlayer();local map=p and p.localmapid\n   if map then D.timing(map)end\n   local custom=map and c.overrides[map]~=nil or false\n   value,changed=GUI:Checkbox('Use timings for this dungeon',custom)\n   if changed and map then\n    c.disabledOverrides[map]=not value or nil\n    c.overrides[map]=value and {settle=c.settle,timeout=c.timeout}or nil;D.save()\n   end\n   local timing=map and c.overrides[map]or c\n   value=GUI:SliderFloat('Full-pull settle time (seconds)',timing.settle,.5,5,'%.1f')\n   if value~=timing.settle then timing.settle=value;D.save()end\n   value=GUI:SliderFloat('Maximum gather wait (seconds)',timing.timeout,5,40,'%.0f')\n   if value~=timing.timeout then timing.timeout=value;D.save()end\n   value=GUI:SliderInt('Release gathering Apex at Soul Voice',c.apexCap,80,100)\n   if value~=c.apexCap then c.apexCap=value;D.save()end\n   if D.active and D.detail then GUI:TextWrapped(D.detail)end\n   if D.active and D.bardStatus then GUI:TextWrapped(D.bardStatus)end\n  end\n end\n D.save();DungeonPullGather=D\nend\n-- Shared, persisted preferences only. Pull-specific solver state lives in data.\nif not GhimlytAutoSimConfig or GhimlytAutoSimConfig.fileApiVersion~=1 then\n    local C = GhimlytAutoSimConfig or {\n        enabled=true, movement=true, returnField=true, trash=true, poolFinal=true,\n        killOverride=true, kill7855=13.2, kill7856=32.4, kill7857=83,\n        unexpectedPct=5, uncertainty=1, buffEnabled=false, buffPct=0,\n        buffFirst=5, buffDuration=20, buffPeriod=120,\n        status=\"Ready. Saved changes apply next combat.\",\n        path=GetStartupPath() .. [[\\LuaMods\\TensorReactions\\Ghimlyt.AutoSim.settings.tsv]]\n    }\n    C.keys={\"enabled\",\"movement\",\"returnField\",\"trash\",\"poolFinal\",\"killOverride\",\n        \"kill7855\",\"kill7856\",\"kill7857\",\"unexpectedPct\",\"uncertainty\",\n        \"buffEnabled\",\"buffPct\",\"buffFirst\",\"buffDuration\",\"buffPeriod\"}\n    C.path=GetLuaModsPath()..[[TensorReactions\\Settings\\Ghimlyt.AutoSim.lua]]\n    if not GhimlytAutoSimConfig and FileExists(C.path) then\n     local saved=FileLoad(C.path)\n     if type(saved)==\"table\" then\n      for _,key in ipairs(C.keys) do\n       local v=saved[key]\n       if type(v)==type(C[key]) and (type(v)~=\"number\" or (v==v and v>-math.huge and v<math.huge)) then C[key]=v end\n      end\n     end\n    end\n    C.unexpectedPct=math.max(0,math.min(30,C.unexpectedPct))\n    C.uncertainty=math.max(0,math.min(10,C.uncertainty))\n    C.buffPct=math.max(0,math.min(50,C.buffPct))\n    C.buffDuration=math.max(1,math.min(60,C.buffDuration))\n    C.buffPeriod=math.max(C.buffDuration+1,math.min(600,C.buffPeriod))\n    C.buffFirst=math.max(0,math.min(600,C.buffFirst))\n    C.kill7855=math.max(15,math.min(1200,C.kill7855))\n    C.kill7856=math.max(15,math.min(1200,C.kill7856))\n    C.kill7857=math.max(15,math.min(1200,C.kill7857))\n    function C.save()\n     local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n     if not FolderExists(folder) then FolderCreate(folder) end\n     local values={}\n     for _,key in ipairs(C.keys) do values[key]=C[key] end\n     FileSave(C.path,values)\n     C.status=\"Saved. Changes apply next combat.\"\n    end\n    C.fileApiVersion=1\n    C.save()\n    GhimlytAutoSimConfig=C\nend\n\n-- Migrate an already initialized settings table without replacing user choices.\nif GhimlytAutoSimConfig.poolFinal==nil then\n GhimlytAutoSimConfig.poolFinal=true\n table.insert(GhimlytAutoSimConfig.keys,\"poolFinal\")\nend\n\n-- GUI submission belongs only in OnDraw. Native Map ID gates precede it.\nlocal C=GhimlytAutoSimConfig\nlocal visible=GUI:Begin(\"The Ghimlyt Dark - AutoSim\")\nif visible then\n    GUI:TextWrapped(\"Four-player dungeon. Changes are saved and apply next combat.\")\n    local v,changed=GUI:Checkbox(\"Enable boss forecasts\",C.enabled)\n    if changed then C.enabled=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Enable the three boss forecasts. Cooldowns and potions remain controlled by your ACR.\") end\n    v,changed=GUI:Checkbox(\"Movement forecasts\",C.movement)\n    if changed then C.movement=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Short repositioning estimates from your logged positions, anchored to boss casts. These are predictions, not automatic movement.\") end\n    v,changed=GUI:Checkbox(\"Predict return to Ley Lines (BLM only)\",C.returnField)\n    if changed then C.returnField=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Predict re-entry shortly after each estimated move. Assumes you return when safe; this does not move the character.\") end\n    v,changed=GUI:Checkbox(\"Apply movement reserve to trash\",C.trash)\n    if changed then C.trash=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Use the extra movement allowance on wall-to-wall pulls. Trash lifetime, target count and cooldown use remain automatic.\") end\n    v,changed=GUI:InputFloat(\"Extra movement (%)\",C.unexpectedPct,1,5,\"%.1f\")\n    if changed then C.unexpectedPct=math.max(0,math.min(30,v));C.save() end\n    if GUI:CollapsingHeader(\"Boss kill estimates\") then\n        GUI:TextWrapped(\"Automatic by default. The optional values below come from one four-player run, not the slower Duty Support samples.\")\n        v,changed=GUI:Checkbox(\"Override automatic kill estimates\",C.killOverride)\n        if changed then C.killOverride=v;C.save() end\n        v,changed=GUI:InputFloat(\"Mark III-B Magitek Colossus (seconds)\",C.kill7855,5,15,\"%.1f\")\n        if changed then C.kill7855=math.max(15,math.min(1200,v));C.save() end\n        v,changed=GUI:InputFloat(\"Prometheus (seconds)\",C.kill7856,5,15,\"%.1f\")\n        if changed then C.kill7856=math.max(15,math.min(1200,v));C.save() end\n        v,changed=GUI:InputFloat(\"Soranus sisters (seconds)\",C.kill7857,5,15,\"%.1f\")\n        if changed then C.kill7857=math.max(15,math.min(1200,v));C.save() end\n    end\n    v,changed=GUI:Checkbox(\"Hold offensive cooldowns on final trash (all jobs)\",C.poolFinal)\n    if changed then C.poolFinal=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Recognizes the last pack before each boss and temporarily turns off the current job’s CD switch. Radiant Finale is explicitly held too. Your previous CD setting is restored when pooling ends; songs keep their own control.\") end\n    local shared=DungeonAutoSimShared\n    if shared then\n        v,changed=GUI:SliderInt(\"Hold new boss cooldowns below HP (%) - shared\",shared.lateHP,0,20)\n        if changed then shared.lateHP=v;shared.save() end\n        if GUI:IsItemHovered() then GUI:SetTooltip(\"Shared across these nine dungeons and all jobs. At this boss HP, stop starting offensive cooldowns; normal attacks continue. 0 disables this rule. Default 8%. Defensive controls and songs keep their own settings.\") end\n    end\n    v,changed=GUI:Checkbox(\"Forecast future party buffs\",C.buffEnabled)\n    if changed then C.buffEnabled=v;C.save() end\n    v,changed=GUI:SliderFloat(\"Combined damage bonus (%)\",C.buffPct,0,50,\"%.1f%%\",1)\n    if changed then C.buffPct=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Optional planning estimate. Zero adds no future buff windows. AST/DNC timing varies; sustained Standard Finish and Devilment should not be treated as a universal periodic damage bonus.\") end\n    GUI:Text(\"Party buff timing\")\n    GUI:TextWrapped(C.buffEnabled and \"Forecast enabled. Times are seconds from boss pull.\" or \"Forecast disabled. These values apply only when the party buff forecast is enabled.\")\n        v,changed=GUI:InputFloat(\"First buff (seconds)\",C.buffFirst,1,5,\"%.1f\")\n        if changed then C.buffFirst=math.max(0,math.min(600,v));C.save() end\n        v,changed=GUI:InputFloat(\"Buff duration (seconds)\",C.buffDuration,1,5,\"%.1f\")\n        if changed then C.buffDuration=math.max(1,math.min(C.buffPeriod-1,60,v));C.save() end\n        v,changed=GUI:InputFloat(\"Buff interval (seconds)\",C.buffPeriod,5,30,\"%.1f\")\n        if changed then C.buffPeriod=math.max(C.buffDuration+1,math.min(600,v));C.save() end\n    GUI:Separator()\n    GUI:TextWrapped(C.status)\n    if C.poolStatus then GUI:TextWrapped(C.poolStatus) end\n do\n local h=DungeonProfilePooling\n if h then\nlocal key=\"highleveldungeons\"\nDungeonHoldDisplays=DungeonHoldDisplays or {}\nlocal c=DungeonHoldDisplays[key]\nif not c then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..key..[[.Safety.lua]]\n c=FileExists(path) and FileLoad(path) or {}\n if type(c)~=\"table\" then c={} end\n if type(c.showHoldStatus)~=\"boolean\" then c.showHoldStatus=true end\n if type(c.shortLivedAdds)~=\"boolean\" then c.shortLivedAdds=true end\n c.path=path;DungeonHoldDisplays[key]=c\nend\n GUI:Separator()\n GUI:Text(\"Dungeon holds\")\n local value,changed=GUI:Checkbox(\"Show hold reason\",c.showHoldStatus)\n if changed then c.showHoldStatus=value end\n if GUI:IsItemHovered() then GUI:SetTooltip(\"Shows only holds owned by this dungeon controller. It does not describe holds from other profiles.\") end\n local v,edit=GUI:Checkbox(\"Avoid long BLM casts on dying adds\",c.shortLivedAdds)\n if edit then c.shortLivedAdds=v end\n if GUI:IsItemHovered() then GUI:SetTooltip(\"Uses the target's lifetime estimate; lets an existing cast finish. Does not change targets or block healing.\") end\n if changed or edit then\n  local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(c.path,{showHoldStatus=c.showHoldStatus,shortLivedAdds=c.shortLivedAdds})\n end\n if c.showHoldStatus then GUI:TextWrapped(h.status or h.reason or \"No dungeon cooldown hold\") end\n DungeonPullGather.gui()\n end\n end\n\nend\nGUI:End()\nself.used=true\n",
						conditions = 
						{
							
							{
								"b338f553-a1a7-78df-a536-ca615350c796",
								true,
							},
						},
						name = "Settings",
						uuid = "4b85b2dc-f102-7e53-ac24-42c9da875542",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 1174,
						name = "The Ghimlyt Dark/AutoSim",
						uuid = "b338f553-a1a7-78df-a536-ca615350c796",
						version = 3,
					},
				},
			},
			displayPath = "The Ghimlyt Dark/AutoSim",
			eventType = 13,
			name = "Settings",
			timeout = 3,
			uuid = "f6096579-e26a-29b1-9359-0e18232154a5",
			version = 2,
		},
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
						actionLua = "data.ghimlyt_autosim=nil\nself.used=true",
						conditions = 
						{
							
							{
								"719d571a-ab65-c1d8-9d5e-123002c371f1",
								true,
							},
							
							{
								"21267b80-8ed0-f5a7-b532-3ed8895bbf1d",
								true,
							},
						},
						name = "Reset between combats",
						uuid = "60014902-40f9-e29f-917f-fd7246d749fa",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 1174,
						name = "The Ghimlyt Dark/AutoSim",
						uuid = "719d571a-ab65-c1d8-9d5e-123002c371f1",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn p ~= nil and not p.incombat and data.ghimlyt_autosim ~= nil",
						dequeueIfLuaFalse = true,
						name = "Relevant state",
						uuid = "21267b80-8ed0-f5a7-b532-3ed8895bbf1d",
						version = 3,
					},
				},
			},
			displayPath = "The Ghimlyt Dark/AutoSim",
			name = "Reset between combats",
			throttleTime = 500,
			timeout = 3,
			uuid = "2d0ddc3d-22fc-7fa4-aa67-1c5427c3b3ba",
			version = 2,
		},
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
						actionLua = "data.ghimlyt_autosim.channel(eventArgs)\nself.used=true",
						conditions = 
						{
							
							{
								"c0582306-cf68-af09-b268-3a746d3aed34",
								true,
							},
							
							{
								"8eaf2be6-e045-4b64-8e9d-f993ef020d98",
								true,
							},
						},
						name = "Boss cast anchors",
						uuid = "986ed9a9-1d12-f2ab-ba80-0d2494578ceb",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 1174,
						name = "The Ghimlyt Dark/AutoSim",
						uuid = "c0582306-cf68-af09-b268-3a746d3aed34",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.ghimlyt_autosim\nif not s or not s.enabled then return false end\nlocal e=eventArgs\nreturn (e.entityContentID==7855 and (e.spellID==14190)) or (e.entityContentID==7856 and (e.spellID==13401)) or (e.entityContentID==7857 and (e.spellID==14116 or e.spellID==14119))",
						dequeueIfLuaFalse = true,
						name = "Relevant state",
						uuid = "8eaf2be6-e045-4b64-8e9d-f993ef020d98",
						version = 3,
					},
				},
			},
			displayPath = "The Ghimlyt Dark/AutoSim",
			eventType = 3,
			name = "Boss cast anchors",
			timeout = 3,
			uuid = "b0905cd6-6435-d26d-83b8-e3471becc312",
			version = 2,
		},
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
						actionLua = "data.ghimlyt_final_trash = true\nself.used = true",
						conditions = 
						{
							
							{
								"23a76057-9b37-44a0-9067-60064ac634dc",
								true,
							},
							
							{
								"a677a977-cc48-131f-9aec-55277edb0fbc",
								true,
							},
						},
						name = "Reserve cooldowns on confirmed final trash",
						uuid = "d89abef9-ac12-ce3b-af4c-9ba1e4f4c829",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 1174,
						name = "The Ghimlyt Dark/AutoSim",
						uuid = "23a76057-9b37-44a0-9067-60064ac634dc",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nlocal c=GhimlytAutoSimConfig\nlocal s=data.ghimlyt_autosim\nif not p or not p.incombat or not c or not c.enabled or not c.poolFinal or not s or s.boss~=0 then return false end\nlocal t=TensorCore.mGetTarget()\nif not t or not t.incombat then return false end\nreturn t.contentid==7884 or t.contentid==7885 or t.contentid==7888 or t.contentid==7887",
						dequeueIfLuaFalse = true,
						name = "Relevant state",
						uuid = "a677a977-cc48-131f-9aec-55277edb0fbc",
						version = 3,
					},
				},
			},
			displayPath = "The Ghimlyt Dark/AutoSim",
			name = "Recognize final trash before bosses",
			throttleTime = 500,
			timeout = 3,
			uuid = "abf0ba16-a668-783e-8d8a-653d6cc493f9",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Ghimlyt Dark",
			name = "Draws",
			uuid = "5e2b5383-be10-d157-9385-d5aeeae7366c",
		},
		objectType = "folder",
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
						actionLua = "local e=eventArgs\nlocal shapes={[14108]={\"Circle\",8},[14124]={\"Rect\",0},[14115]={\"Rect\",0},[14116]={\"Rect\",0},[14411]={\"Rect\",0},[14412]={\"Rect\",0},[14413]={\"Rect\",0},[14697]={\"Rect\",0},[14698]={\"Rect\",0},[14699]={\"Rect\",0}}\nlocal shape=shapes[e.aoeID]\nlocal ms=e.startTime+e.duration*1000-Now()\nif ms>0 and ms<20000 then\n    local drawer=TensorCore.getStaticDrawer(0x603333FF,2)\n    if shape[1]==\"Circle\" then\n        drawer:addTimedCircle(ms,e.x,e.y,e.z,shape[2],0,false,true)\n    elseif e.aoeWidth>0 and e.aoeLength>0 then\n        drawer:addTimedRect(ms,e.x,e.y,e.z,e.aoeLength,e.aoeWidth,e.heading,0,false,true)\n    end\n    AnyoneCore.addWorldTextCountdown(ms,{x=e.x,y=e.y+1,z=e.z},0xFFFFFFFF,true,1.1)\nend\nself.used=true",
						conditions = 
						{
							
							{
								"441d0d3c-0763-9867-a377-3220c5a0be37",
								true,
							},
							
							{
								"cd6c1a55-2344-0124-9c19-b2acc29c92d8",
								true,
							},
						},
						name = "Selected attack telegraphs",
						uuid = "a0e58730-652a-2743-aa71-fa64a0f563fb",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 1174,
						name = "The Ghimlyt Dark/Draws",
						uuid = "441d0d3c-0763-9867-a377-3220c5a0be37",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local e=eventArgs\nreturn not e.friendly and (e.aoeID==14108 or e.aoeID==14124 or e.aoeID==14115 or e.aoeID==14116 or e.aoeID==14411 or e.aoeID==14412 or e.aoeID==14413 or e.aoeID==14697 or e.aoeID==14698 or e.aoeID==14699)",
						dequeueIfLuaFalse = true,
						name = "Relevant state",
						uuid = "cd6c1a55-2344-0124-9c19-b2acc29c92d8",
						version = 3,
					},
				},
			},
			displayPath = "The Ghimlyt Dark/Draws",
			eventType = 18,
			name = "Selected attack telegraphs",
			timeout = 3,
			uuid = "2d248a6c-843f-5f23-8312-bdfb37c93421",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "The Aetherfont",
			uuid = "23760ae1-f915-19f0-a184-16b788e1ca68",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "The Aetherfont",
			name = "AutoSim",
			uuid = "62bb59f7-9021-09be-bbd8-0158b6e1661a",
		},
		objectType = "folder",
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
						actionLua = "-- Shared, persisted preferences only. Pull-specific solver state lives in data.\nif not AetherfontAutoSimConfig or AetherfontAutoSimConfig.fileApiVersion~=1 then\n    local C = AetherfontAutoSimConfig or {\n        enabled=true, movement=true, returnField=true, trash=true, poolFinal=true,\n        killOverride=true, kill12336=103, kill12337=108, kill12334=158,\n        unexpectedPct=5, uncertainty=1, buffEnabled=false, buffPct=0,\n        buffFirst=5, buffDuration=20, buffPeriod=120,\n        status=\"Ready. Saved changes apply next combat.\",\n        path=GetStartupPath() .. [[\\LuaMods\\TensorReactions\\Aetherfont.AutoSim.settings.tsv]]\n    }\n    C.keys={\"enabled\",\"movement\",\"returnField\",\"trash\",\"poolFinal\",\"killOverride\",\n        \"kill12336\",\"kill12337\",\"kill12334\",\"unexpectedPct\",\"uncertainty\",\n        \"buffEnabled\",\"buffPct\",\"buffFirst\",\"buffDuration\",\"buffPeriod\"}\n    C.path=GetLuaModsPath()..[[TensorReactions\\Settings\\Aetherfont.AutoSim.lua]]\n    if not AetherfontAutoSimConfig and FileExists(C.path) then\n     local saved=FileLoad(C.path)\n     if type(saved)==\"table\" then\n      for _,key in ipairs(C.keys) do\n       local v=saved[key]\n       if type(v)==type(C[key]) and (type(v)~=\"number\" or (v==v and v>-math.huge and v<math.huge)) then C[key]=v end\n      end\n     end\n    end\n    C.unexpectedPct=math.max(0,math.min(30,C.unexpectedPct))\n    C.uncertainty=math.max(0,math.min(10,C.uncertainty))\n    C.buffPct=math.max(0,math.min(50,C.buffPct))\n    C.buffDuration=math.max(1,math.min(60,C.buffDuration))\n    C.buffPeriod=math.max(C.buffDuration+1,math.min(600,C.buffPeriod))\n    C.buffFirst=math.max(0,math.min(600,C.buffFirst))\n    C.kill12336=math.max(15,math.min(1200,C.kill12336))\n    C.kill12337=math.max(15,math.min(1200,C.kill12337))\n    C.kill12334=math.max(15,math.min(1200,C.kill12334))\n    function C.save()\n     local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n     if not FolderExists(folder) then FolderCreate(folder) end\n     local values={}\n     for _,key in ipairs(C.keys) do values[key]=C[key] end\n     FileSave(C.path,values)\n     C.status=\"Saved. Changes apply next combat.\"\n    end\n    C.fileApiVersion=1\n    C.save()\n    AetherfontAutoSimConfig=C\nend\n\n-- Migrate an already initialized settings table without replacing user choices.\nif AetherfontAutoSimConfig.poolFinal==nil then\n AetherfontAutoSimConfig.poolFinal=true\n table.insert(AetherfontAutoSimConfig.keys,\"poolFinal\")\nend\n\n-- Runs after native map 1126, map and combat gates; no timeline timer is used.\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=1126 or not p.incombat then self.used=true;return end\nlocal isCaster=p.job==25 or p.job==27 or p.job==35 or p.job==42 or p.job==36 or p.job==24 or p.job==28 or p.job==33 or p.job==40\ngStartCombat = false\nlocal helpers = AnyoneCore and AnyoneCore.Settings\nif helpers and helpers.DutyHelper then helpers.DutyHelper.enabled = false end\nif helpers and helpers.PrepullHelper then helpers.PrepullHelper.enabled = false end\nlocal C=AetherfontAutoSimConfig\nlocal A=TensorCore.API.TensorACR\nlocal ok,t=pcall(A.getAutoSimTime)\nif not ok or type(t)~=\"number\" or t<0 then return end -- readiness wait, not completion\nif data.aetherfont_autosim then self.used=true;return end\nlocal S={enabled=C.enabled,movement=C.movement and isCaster,returnField=C.returnField and p.job==25,trash=C.trash,\n    killOverride=C.killOverride,kill12336=C.kill12336,kill12337=C.kill12337,kill12334=C.kill12334,\n    unexpectedPct=C.unexpectedPct,uncertainty=C.uncertainty,buffEnabled=C.buffEnabled,\n    buffPct=C.buffPct,buffFirst=C.buffFirst,buffDuration=C.buffDuration,buffPeriod=C.buffPeriod,\n    boss=0,origin=0,counts={},phases={},phaseCount=0,anchorsSeen=0,setup=true}\ndata.aetherfont_autosim=S\n-- Filled by the evidence builder; tables are allocated once per combat.\nS.definitions={[12336]={[\"name\"]=\"Lyngbakr\",[\"anchors\"]={[33338]={5.156,35.015,58.078},[33344]={15.671,87.343}},[\"movement\"]={{16,18},{42,44},{72,74},{76,78},{88,90}}},[12337]={[\"name\"]=\"Arkas\",[\"anchors\"]={[34605]={6.188},[33358]={18.406},[33359]={27.485},[33362]={55.672},[34318]={80.5}},[\"movement\"]={{20,22},{29,31},{57,59},{82,84},{89,91},{95,97}}},[12334]={[\"name\"]=\"Octomammoth\",[\"anchors\"]={[33356]={4.172,73.485},[33347]={16.375},[33355]={40.578,139.157},[33352]={49.782,133.032}},[\"movement\"]={{29,32},{44,46},{54,56},{68,70},{123,126},{143,145}}}}\n\nfunction S.add(kind,a,b,value,relative)\n    if b<=a or a>=1200 then return end\n    b=math.min(b,1200)\n    local id=A.addAutoSimPhase(kind,a,b,value)\n    if id then\n        S.phaseCount=S.phaseCount+1\n        S.phases[S.phaseCount]={id=id,kind=kind,a=a,b=b,value=value,relative=relative}\n    end\nend\n\nfunction S.startBoss(cid,entityID,origin,now)\n    local def=S.definitions[cid]\n    if not def or S.boss~=0 or not S.enabled then return end\n    gStartCombat=false\n    S.boss=cid;S.entityID=entityID;S.origin=origin\n    A.setAutoSimUnexpectedMovementPct(S.unexpectedPct/100)\n    if S.killOverride then\n        A.setAutoSimKillTime(math.min(1200,origin+S[\"kill\"..cid]))\n        A.addAutoSimUncertainty(now,10) -- one normal-party sample: do not claim exact kill timing\n    end\n    -- Keep automatic kill uncertainty by default. Do not invent forced target downtime.\n    -- Only owned movement/field phases are authored; AoE counts and DoT targets stay live.\n    if S.movement then\n        for i=1,#def.movement do\n            local w=def.movement[i]\n            local a,b=origin+w[1],origin+w[2]\n            if b>now then\n                a=math.max(a,now)\n                S.add(\"CasterDowntime\",a,b,1,true)\n                if S.returnField then S.add(\"GroundFieldMovement\",b,b+0.2,2,true) end\n            end\n        end\n    end\n    if S.buffEnabled and S.buffPct>0 then\n        local a=origin+S.buffFirst\n        while a<1200 do\n            if a+S.buffDuration>now then S.add(\"RaidBuff\",math.max(a,now),a+S.buffDuration,1+S.buffPct/100,false) end\n            a=a+S.buffPeriod\n        end\n    end\n    C.status=\"Active: \"..def.name..\". Kill estimate: \"..(S.killOverride and \"manual\" or \"automatic\")\nend\n\nfunction S.channel(args)\n    if not S.enabled then return end\n    local cid=args.entityContentID\n    local def=S.definitions[cid]\n    if not def then return end\n    local aid=args.spellID\n    if aid==34780 then aid=34779 end\n    local anchors=def.anchors[aid]\n    if not anchors then return end -- stable boss cast identity before API work\n    if S.boss~=0 and (S.boss~=cid or S.entityID~=args.entityID) then return end\n    local valid,now=pcall(A.getAutoSimTime)\n    if not valid or type(now)~=\"number\" or now<0 or now>=1200 then return end\n    local n=(S.counts[aid] or 0)+1\n    local expected=anchors[n]\n    if not expected then return end\n    if S.boss==0 and math.abs(now-expected)>2 then return end\n    S.counts[aid]=n\n    if S.boss==0 then S.startBoss(cid,args.entityID,now-expected,now) end\n    if S.boss~=cid then return end\n    local candidate=now-expected\n    -- If enabled mid-boss, do not match a late repeat to the first occurrence.\n    if math.abs(candidate-S.origin)>2 then return end\n    local shift=candidate-S.origin\n    S.anchorsSeen=S.anchorsSeen+1\n    if math.abs(shift)<0.15 then return end\n    -- Remove every future owned phase before reinsertion, avoiding transient overlaps.\n    local movementEnd=now\n    local fieldEnd=now\n    for i=1,S.phaseCount do\n        local phase=S.phases[i]\n        if phase.relative and phase.id and phase.a>now+0.05 then\n            A.removeAutoSimPhase(phase.id);phase.id=nil;phase.pending=true\n        elseif phase.id and phase.a<=now+0.05 and phase.b>now then\n            if phase.kind==\"CasterDowntime\" then movementEnd=phase.b end\n            if phase.kind==\"GroundFieldMovement\" then fieldEnd=phase.b end\n        end\n    end\n    for i=1,S.phaseCount do\n        local phase=S.phases[i]\n        if phase.pending then\n            phase.pending=false\n            local a,b=phase.a+shift,phase.b+shift\n            local minimum=phase.kind==\"CasterDowntime\" and movementEnd or math.max(fieldEnd,movementEnd)\n            a=math.max(a,minimum,now+0.05)\n            if b>a then\n                phase.id=A.addAutoSimPhase(phase.kind,a,b,phase.value)\n                phase.a=a;phase.b=b\n                if phase.kind==\"CasterDowntime\" then movementEnd=b else fieldEnd=b end\n            end\n        end\n    end\n    S.origin=candidate\nend\n\nif S.enabled then\n    local target=TensorCore.mGetTarget()\n    if target and S.definitions[target.contentid] and target.attackable and target.incombat then\n        -- Near pull start, zero is the combat-clock origin; later setup waits for an anchor.\n        if t<=5 then S.startBoss(target.contentid,target.id,0,t) end\n    end\n    if S.boss==0 and S.trash then A.setAutoSimUnexpectedMovementPct(S.unexpectedPct/100) end\nend\nself.used=true\n",
						conditions = 
						{
							
							{
								"51707762-1002-a94d-939c-fd392cf190ea",
								true,
							},
							
							{
								"90fdb863-bc76-0dcf-b266-a939592ec235",
								true,
							},
						},
						name = "Set up this combat",
						uuid = "02a1a6d7-abd7-b3e0-9c05-456871ac13b9",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 1126,
						name = "The Aetherfont/AutoSim",
						uuid = "51707762-1002-a94d-939c-fd392cf190ea",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn p ~= nil and p.incombat and data.aetherfont_autosim == nil",
						dequeueIfLuaFalse = true,
						name = "Relevant state",
						uuid = "90fdb863-bc76-0dcf-b266-a939592ec235",
						version = 3,
					},
				},
			},
			displayPath = "The Aetherfont/AutoSim",
			name = "Set up this combat",
			throttleTime = 500,
			timeout = 3,
			uuid = "0ce2d014-6a96-6bfb-8165-3752db765425",
			version = 2,
		},
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
						actionLua = "-- Shared pull-gathering helper; settings are independent of Minion core Settings.\nif not DungeonPullGather or DungeonPullGather.version~=2026111607 then\n local D={version=2026111607}\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n D.path=folder..[[DungeonAutoSim.Gather.lua]]\n local c=FileExists(D.path)and FileLoad(D.path)or{}\n if type(c)~='table'then c={}end\n if type(c.enabled)~='boolean'then c.enabled=true end\n if type(c.diagnostics)~='boolean'then c.diagnostics=true end\n if type(c.settle)~='number'or c.settle<.5 or c.settle>5 then c.settle=3 end\n if type(c.timeout)~='number'or c.timeout<5 or c.timeout>40 then c.timeout=20 end\n if type(c.brdDotHP)~='number'or c.brdDotHP<0 or c.brdDotHP>30 then c.brdDotHP=20 end\n if type(c.apexCap)~='number'or c.apexCap<80 or c.apexCap>100 then c.apexCap=95 end\n if type(c.overrides)~='table'then c.overrides={}end\n if type(c.disabledOverrides)~='table'then c.disabledOverrides={}end\n for map,v in pairs(c.overrides)do\n  if type(map)~='number'or type(v)~='table'or type(v.settle)~='number'or v.settle<.5 or v.settle>5 or type(v.timeout)~='number'or v.timeout<5 or v.timeout>40 then c.overrides[map]=nil end\n end\n if c.migratedSettle3~=true then\n  if math.abs(c.settle-2.3)<.001 then c.settle=3 end\n  for _,v in pairs(c.overrides)do if math.abs(v.settle-2.3)<.001 then v.settle=3 end end\n  c.defaultSettle=3;c.migratedSettle3=true\n end\n D.config=c\n function D.save()\n  if not FolderExists(folder)then FolderCreate(folder)end\n  FileSave(D.path,{enabled=c.enabled,settle=c.settle,timeout=c.timeout,apexCap=c.apexCap,diagnostics=c.diagnostics,defaultSettle=c.defaultSettle,migratedSettle3=c.migratedSettle3,brdDotHP=c.brdDotHP,overrides=c.overrides,disabledOverrides=c.disabledOverrides})\n end\n function D.timing(map)\n  if not c.overrides[map]and not c.disabledOverrides[map]then\n   c.overrides[map]={settle=c.settle,timeout=c.timeout};D.save()\n  end\n  return c.overrides[map]or c\n end\n function D.restoreDots()\n  local r=D.dotToggle\n  if r and _G[r.var]==false then _G[r.var]=r.previous end\n  D.dotToggle=nil;D.dotActive=nil;D.dotStatus=nil\n end\n function D.reset()D.restoreDots();D.pull=nil;D.active=false;D.reason=nil;D.detail=nil;D.bardStatus=nil;D.dotActive=nil;D.dotStatus=nil end\n function D.trace(text)\n  if D.traceText~=text then D.traceText=text;TensorCore.timelineLogToFile('[Dungeon W2W] '..text..'\\n')end\n end\n function D.update(p,valid,isBoss,bosses)\n  if not c.enabled or not valid or isBoss or not p or not p.alive or not p.incombat then\n   if D.pull then D.trace('released: disabled, boss, death or combat ended')end\n   D.reset();return false\n  end\n  local timing=D.timing(p.localmapid)\n  local now=Now();local tank\n  for _,e in pairs(TensorCore.getEntityGroupList('Tank',nil,true)or{})do\n   if e.alive and e.pos and (e.pos.x-p.pos.x)^2+(e.pos.z-p.pos.z)^2<=60^2 then\n    if not tank or e.id<tank.id then tank=e end\n   end\n  end\n  if not tank then D.reset();D.detail='No nearby engaged party tank';return false end\n  local g=D.pull\n  if not g or g.map~=p.localmapid or g.tank~=tank.id then\n   g={map=p.localmapid,tank=tank.id,start=now,seen={},arrived=now,anchor={x=tank.pos.x,z=tank.pos.z},stationary=now};D.pull=g\n  end\n  if g.released then D.active=false;return false end\n  local count,far,new=0,0,0\n  TensorCore.forEachEntity('alive,targetable,attackable',function(id)\n   local e=TensorCore.mGetEntity(id)\n   if e and e.incombat and e.pos and not bosses[e.contentid] and math.abs(e.pos.y-tank.pos.y)<=10 then\n    local distance=(e.pos.x-tank.pos.x)^2+(e.pos.z-tank.pos.z)^2\n    if distance<=60^2 then\n     count=count+1\n     if not g.seen[id]then g.seen[id]=true;g.arrived=now;new=new+1 end\n     if distance>(12+(e.hitradius or 0))^2 then far=far+1 end\n    end\n   end\n   return true\n  end)\n  if (tank.pos.x-g.anchor.x)^2+(tank.pos.z-g.anchor.z)^2>1^2 then\n   g.anchor={x=tank.pos.x,z=tank.pos.z};g.stationary=now\n  end\n  if count==0 then\n   g.readyAt=nil\n   if now-g.start>=timing.timeout*1000 then g.released=true;D.active=false;D.reason=nil;D.trace('released: gather timeout, no engaged trash');return false end\n  else\n   if far>0 then g.readyAt=nil elseif not g.readyAt then g.readyAt=now end\n  end\n  if count>0 and far==0 and g.readyAt and now-g.readyAt>=timing.settle*1000 and now-g.stationary>=timing.settle*1000 and now-g.arrived>=timing.settle*1000 and now-g.start>=3000 then\n   g.released=true;D.active=false;D.reason=nil;D.trace('released: tank stopped, roster stable and '..count..' enemies gathered');return false\n  end\n  if now-g.start>=timing.timeout*1000 then\n   g.released=true;D.active=false;D.reason=nil;D.trace('released: '..timing.timeout..'s maximum gather wait; far='..far..' engaged='..count);return false\n  end\n  D.active=true;D.reason='Gathering pull'\n  D.detail=string.format('Gathering pull: %d engaged, %d trailing; %.1f / %.0fs',count,far,(now-g.start)/1000,timing.timeout)\n  local stage=far>0 and 'trailing enemies'or now-g.stationary<timing.settle*1000 and 'tank moving'or'waiting for stable pull'\n  D.trace('holding: '..stage..'; tank='..tank.id..'; engaged='..count..'; far='..far)\n  return true\n end\n function D.lease(id,untilMs)\n  if id==16496 or id==25784 or id==100 or id==113 or id==7406 or id==7407 or id==3560 then return false end\n  local accepted=TensorCore.API.TensorACR.holdActionUntil(id,untilMs,1)\n  D.leases=D.leases or{}\n  if accepted then D.leases[id]=untilMs end\n  return accepted\n end\n function D.dotHold(p,valid,target,bosses,encounter,level)\n  local active=valid and p.job==23 and c.brdDotHP>0 and not encounter\n   and target and target.alive and target.targetable and target.attackable and target.incombat\n   and not bosses[target.contentid]and target.hp and target.hp.max>0\n   and target.hp.percent>0 and target.hp.percent<c.brdDotHP\n  if not active then D.restoreDots();D.dotTraceKey=nil;return end\n  -- BRD's global DoTs QT tells the rotation not to plan these GCDs.\n  local variable='ACR_TensorRequiem4_DoTs'\n  if type(_G[variable])~='boolean'then return end\n  if not D.dotToggle then D.dotToggle={var=variable,previous=_G[variable]}end\n  _G[variable]=false;D.dotActive=true\n  D.dotStatus='BRD DoTs off below '..c.brdDotHP..'% trash HP'\n  local key=tostring(target.id)..':'..c.brdDotHP\n  if D.dotTraceKey~=key then\n   D.dotTraceKey=key\n   TensorCore.timelineLogToFile('[Dungeon BRD DoTs] QT off: target='..target.id..' CID='..target.contentid..' HP='..target.hp.percent..' threshold='..c.brdDotHP..'; no GCD action holds\\n')\n  end\n end\n function D.observeBoss(p,encounter,blocked,held)\n  if p.job~=23 or not encounter then D.bossLogAt=nil;D.bossLogKey=nil;return end\n  if not c.diagnostics then return end\n  local now=Now();local target=TensorCore.mGetTarget()\n  local owned=0;for var in pairs(held or{})do if var:match('_CD$')then owned=owned+1 end end\n  local key=tostring(target and target.id)..':'..tostring(blocked)..':'..tostring(ACR_TensorRequiem4_CD)..':'..owned\n  if D.bossLogAt and now-D.bossLogAt<5000 and D.bossLogKey==key then return end\n  D.bossLogAt=now;D.bossLogKey=key\n  local function state(id)\n   local a=ActionList:Get(1,id)\n   if not a then return 'missing action'end\n   local ok,ready=pcall(function()return a:IsReady(p.id)end)\n   return string.format('cd=%.2f onCD=%s ready=%s ownedLeaseRemainingMs=%.0f',math.max(0,a.cdmax-a.cd),tostring(a.isoncd),ok and tostring(ready)or('read error '..tostring(ready)),math.max(0,(D.leases and D.leases[id]or 0)-now))\n  end\n  local bv=TensorCore.getBuff(p,141);local rf=TensorCore.getBuff(p,2964)\n  TensorCore.timelineLogToFile('[Dungeon BRD boss] target='..tostring(target and target.contentid)..' HP='..tostring(target and target.hp and target.hp.percent)..' CDQT='..tostring(ACR_TensorRequiem4_CD)..' ownedCDvars='..owned..' finalOrLowHP='..tostring(blocked)..' gathering='..tostring(D.active)..' BattleVoice{'..state(118)..'} RadiantFinale{'..state(25785)..'} BVbuff='..tostring(bv and bv.duration)..' RFbuff='..tostring(rf and rf.duration)..' BVhotbar='..tostring(ACR_TensorRequiem4_Hotbar_BattleVoice)..'\\n')\n end\n function D.bard(p,gathering,priorityHold)\n  if p.job~=23 or not gathering then return end\n  local untilMs=Now()+450\n  -- BRD gathering owns short burst-action holds, not its broad CD toggle.\n  -- Both party buffs are held and released together; songs/normal damage remain automatic.\n  for _,row in ipairs({{101,4},{107,38},{118,50},{25785,90}})do\n   if p.level>=row[2]then D.lease(row[1],untilMs)end\n  end\n  D.bardStatus='BRD offensive buffs held for gathered targets; Apex uses its toggle'\n end\n function D.gatherApex(p,gathering)\n  return p.job==23 and gathering and not(p.gauge and type(p.gauge[4])=='number'and p.gauge[4]>=c.apexCap)\n end\n function D.gui()\n  local value,changed=GUI:Checkbox('Wait for full pull (W2W)',c.enabled)\n  if changed then c.enabled=value;D.save()end\n  if GUI:IsItemHovered()then GUI:SetTooltip('Hold major offensive cooldowns until the party tank stops and engaged enemies gather. Last-pack and low-HP holds keep priority. Normal damage continues.')end\n  local diag,edit=GUI:Checkbox('BRD boss-buff diagnostics',c.diagnostics)\n  if edit then c.diagnostics=diag;D.save()end\n  value=GUI:SliderInt('Hold BRD DoTs below trash HP (%)',c.brdDotHP,0,30)\n  if value~=c.brdDotHP then c.brdDotHP=value;D.save()end\n  if GUI:IsItemHovered()then GUI:SetTooltip('Temporarily switches the global BRD DoTs toggle off on selected low-HP trash, then restores its previous value. Bosses are excluded; zero disables.')end\n  if D.dotStatus then GUI:TextWrapped(D.dotStatus)end\n  if c.enabled then\n   local p=TensorCore.mGetPlayer();local map=p and p.localmapid\n   if map then D.timing(map)end\n   local custom=map and c.overrides[map]~=nil or false\n   value,changed=GUI:Checkbox('Use timings for this dungeon',custom)\n   if changed and map then\n    c.disabledOverrides[map]=not value or nil\n    c.overrides[map]=value and {settle=c.settle,timeout=c.timeout}or nil;D.save()\n   end\n   local timing=map and c.overrides[map]or c\n   value=GUI:SliderFloat('Full-pull settle time (seconds)',timing.settle,.5,5,'%.1f')\n   if value~=timing.settle then timing.settle=value;D.save()end\n   value=GUI:SliderFloat('Maximum gather wait (seconds)',timing.timeout,5,40,'%.0f')\n   if value~=timing.timeout then timing.timeout=value;D.save()end\n   value=GUI:SliderInt('Release gathering Apex at Soul Voice',c.apexCap,80,100)\n   if value~=c.apexCap then c.apexCap=value;D.save()end\n   if D.active and D.detail then GUI:TextWrapped(D.detail)end\n   if D.active and D.bardStatus then GUI:TextWrapped(D.bardStatus)end\n  end\n end\n D.save();DungeonPullGather=D\nend\n-- Shared, persisted preferences only. Pull-specific solver state lives in data.\nif not AetherfontAutoSimConfig or AetherfontAutoSimConfig.fileApiVersion~=1 then\n    local C = AetherfontAutoSimConfig or {\n        enabled=true, movement=true, returnField=true, trash=true, poolFinal=true,\n        killOverride=true, kill12336=103, kill12337=108, kill12334=158,\n        unexpectedPct=5, uncertainty=1, buffEnabled=false, buffPct=0,\n        buffFirst=5, buffDuration=20, buffPeriod=120,\n        status=\"Ready. Saved changes apply next combat.\",\n        path=GetStartupPath() .. [[\\LuaMods\\TensorReactions\\Aetherfont.AutoSim.settings.tsv]]\n    }\n    C.keys={\"enabled\",\"movement\",\"returnField\",\"trash\",\"poolFinal\",\"killOverride\",\n        \"kill12336\",\"kill12337\",\"kill12334\",\"unexpectedPct\",\"uncertainty\",\n        \"buffEnabled\",\"buffPct\",\"buffFirst\",\"buffDuration\",\"buffPeriod\"}\n    C.path=GetLuaModsPath()..[[TensorReactions\\Settings\\Aetherfont.AutoSim.lua]]\n    if not AetherfontAutoSimConfig and FileExists(C.path) then\n     local saved=FileLoad(C.path)\n     if type(saved)==\"table\" then\n      for _,key in ipairs(C.keys) do\n       local v=saved[key]\n       if type(v)==type(C[key]) and (type(v)~=\"number\" or (v==v and v>-math.huge and v<math.huge)) then C[key]=v end\n      end\n     end\n    end\n    C.unexpectedPct=math.max(0,math.min(30,C.unexpectedPct))\n    C.uncertainty=math.max(0,math.min(10,C.uncertainty))\n    C.buffPct=math.max(0,math.min(50,C.buffPct))\n    C.buffDuration=math.max(1,math.min(60,C.buffDuration))\n    C.buffPeriod=math.max(C.buffDuration+1,math.min(600,C.buffPeriod))\n    C.buffFirst=math.max(0,math.min(600,C.buffFirst))\n    C.kill12336=math.max(15,math.min(1200,C.kill12336))\n    C.kill12337=math.max(15,math.min(1200,C.kill12337))\n    C.kill12334=math.max(15,math.min(1200,C.kill12334))\n    function C.save()\n     local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n     if not FolderExists(folder) then FolderCreate(folder) end\n     local values={}\n     for _,key in ipairs(C.keys) do values[key]=C[key] end\n     FileSave(C.path,values)\n     C.status=\"Saved. Changes apply next combat.\"\n    end\n    C.fileApiVersion=1\n    C.save()\n    AetherfontAutoSimConfig=C\nend\n\n-- Migrate an already initialized settings table without replacing user choices.\nif AetherfontAutoSimConfig.poolFinal==nil then\n AetherfontAutoSimConfig.poolFinal=true\n table.insert(AetherfontAutoSimConfig.keys,\"poolFinal\")\nend\n\n-- GUI submission belongs only in OnDraw. Native Map ID gates precede it.\nlocal C=AetherfontAutoSimConfig\nlocal visible=GUI:Begin(\"The Aetherfont - AutoSim\")\nif visible then\n    GUI:TextWrapped(\"Four-player dungeon. Changes are saved and apply next combat.\")\n    local v,changed=GUI:Checkbox(\"Enable boss forecasts\",C.enabled)\n    if changed then C.enabled=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Enable the three boss forecasts. Cooldowns and potions remain controlled by your ACR.\") end\n    v,changed=GUI:Checkbox(\"Movement forecasts\",C.movement)\n    if changed then C.movement=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Short repositioning estimates from your logged positions, anchored to boss casts. These are predictions, not automatic movement.\") end\n    v,changed=GUI:Checkbox(\"Predict return to Ley Lines (BLM only)\",C.returnField)\n    if changed then C.returnField=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Predict re-entry shortly after each estimated move. Assumes you return when safe; this does not move the character.\") end\n    v,changed=GUI:Checkbox(\"Apply movement reserve to trash\",C.trash)\n    if changed then C.trash=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Use the extra movement allowance on wall-to-wall pulls. Trash lifetime, target count and cooldown use remain automatic.\") end\n    v,changed=GUI:InputFloat(\"Extra movement (%)\",C.unexpectedPct,1,5,\"%.1f\")\n    if changed then C.unexpectedPct=math.max(0,math.min(30,v));C.save() end\n    if GUI:CollapsingHeader(\"Boss kill estimates\") then\n        GUI:TextWrapped(\"Automatic by default. The optional values below come from one four-player run, not the slower Duty Support samples.\")\n        v,changed=GUI:Checkbox(\"Override automatic kill estimates\",C.killOverride)\n        if changed then C.killOverride=v;C.save() end\n        v,changed=GUI:InputFloat(\"Lyngbakr (seconds)\",C.kill12336,5,15,\"%.1f\")\n        if changed then C.kill12336=math.max(15,math.min(1200,v));C.save() end\n        v,changed=GUI:InputFloat(\"Arkas (seconds)\",C.kill12337,5,15,\"%.1f\")\n        if changed then C.kill12337=math.max(15,math.min(1200,v));C.save() end\n        v,changed=GUI:InputFloat(\"Octomammoth (seconds)\",C.kill12334,5,15,\"%.1f\")\n        if changed then C.kill12334=math.max(15,math.min(1200,v));C.save() end\n    end\n    v,changed=GUI:Checkbox(\"Hold offensive cooldowns on final trash (all jobs)\",C.poolFinal)\n    if changed then C.poolFinal=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Recognizes the last pack before each boss and temporarily turns off the current job’s CD switch. Radiant Finale is explicitly held too. Your previous CD setting is restored when pooling ends; songs keep their own control.\") end\n    local shared=DungeonAutoSimShared\n    if shared then\n        v,changed=GUI:SliderInt(\"Hold new boss cooldowns below HP (%) - shared\",shared.lateHP,0,20)\n        if changed then shared.lateHP=v;shared.save() end\n        if GUI:IsItemHovered() then GUI:SetTooltip(\"Shared across these nine dungeons and all jobs. At this boss HP, stop starting offensive cooldowns; normal attacks continue. 0 disables this rule. Default 8%. Defensive controls and songs keep their own settings.\") end\n    end\n    v,changed=GUI:Checkbox(\"Forecast future party buffs\",C.buffEnabled)\n    if changed then C.buffEnabled=v;C.save() end\n    v,changed=GUI:SliderFloat(\"Combined damage bonus (%)\",C.buffPct,0,50,\"%.1f%%\",1)\n    if changed then C.buffPct=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Optional planning estimate. Zero adds no future buff windows. AST/DNC timing varies; sustained Standard Finish and Devilment should not be treated as a universal periodic damage bonus.\") end\n    GUI:Text(\"Party buff timing\")\n    GUI:TextWrapped(C.buffEnabled and \"Forecast enabled. Times are seconds from boss pull.\" or \"Forecast disabled. These values apply only when the party buff forecast is enabled.\")\n        v,changed=GUI:InputFloat(\"First buff (seconds)\",C.buffFirst,1,5,\"%.1f\")\n        if changed then C.buffFirst=math.max(0,math.min(600,v));C.save() end\n        v,changed=GUI:InputFloat(\"Buff duration (seconds)\",C.buffDuration,1,5,\"%.1f\")\n        if changed then C.buffDuration=math.max(1,math.min(C.buffPeriod-1,60,v));C.save() end\n        v,changed=GUI:InputFloat(\"Buff interval (seconds)\",C.buffPeriod,5,30,\"%.1f\")\n        if changed then C.buffPeriod=math.max(C.buffDuration+1,math.min(600,v));C.save() end\n    GUI:Separator()\n    GUI:TextWrapped(C.status)\n    if C.poolStatus then GUI:TextWrapped(C.poolStatus) end\n do\n local h=DungeonProfilePooling\n if h then\nlocal key=\"highleveldungeons\"\nDungeonHoldDisplays=DungeonHoldDisplays or {}\nlocal c=DungeonHoldDisplays[key]\nif not c then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..key..[[.Safety.lua]]\n c=FileExists(path) and FileLoad(path) or {}\n if type(c)~=\"table\" then c={} end\n if type(c.showHoldStatus)~=\"boolean\" then c.showHoldStatus=true end\n if type(c.shortLivedAdds)~=\"boolean\" then c.shortLivedAdds=true end\n c.path=path;DungeonHoldDisplays[key]=c\nend\n GUI:Separator()\n GUI:Text(\"Dungeon holds\")\n local value,changed=GUI:Checkbox(\"Show hold reason\",c.showHoldStatus)\n if changed then c.showHoldStatus=value end\n if GUI:IsItemHovered() then GUI:SetTooltip(\"Shows only holds owned by this dungeon controller. It does not describe holds from other profiles.\") end\n local v,edit=GUI:Checkbox(\"Avoid long BLM casts on dying adds\",c.shortLivedAdds)\n if edit then c.shortLivedAdds=v end\n if GUI:IsItemHovered() then GUI:SetTooltip(\"Uses the target's lifetime estimate; lets an existing cast finish. Does not change targets or block healing.\") end\n if changed or edit then\n  local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(c.path,{showHoldStatus=c.showHoldStatus,shortLivedAdds=c.shortLivedAdds})\n end\n if c.showHoldStatus then GUI:TextWrapped(h.status or h.reason or \"No dungeon cooldown hold\") end\n DungeonPullGather.gui()\n end\n end\n\nend\nGUI:End()\nself.used=true\n",
						conditions = 
						{
							
							{
								"1967a170-a1ce-ee5f-9a8e-7212a4ca828b",
								true,
							},
						},
						name = "Settings",
						uuid = "22c0bb8b-69e5-2e85-9d8a-e6a0c1003c89",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 1126,
						name = "The Aetherfont/AutoSim",
						uuid = "1967a170-a1ce-ee5f-9a8e-7212a4ca828b",
						version = 3,
					},
				},
			},
			displayPath = "The Aetherfont/AutoSim",
			eventType = 13,
			name = "Settings",
			timeout = 3,
			uuid = "6e9ea985-23b0-7d90-a828-3f8029259770",
			version = 2,
		},
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
						actionLua = "data.aetherfont_autosim=nil\nself.used=true",
						conditions = 
						{
							
							{
								"860c156c-1d4a-a459-9d41-66b4784aed4c",
								true,
							},
							
							{
								"c4e5fd07-15af-802e-bf14-a8e0a5fa0a32",
								true,
							},
						},
						name = "Reset between combats",
						uuid = "51910085-a14b-ae9e-a367-67f0aa1ff20c",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 1126,
						name = "The Aetherfont/AutoSim",
						uuid = "860c156c-1d4a-a459-9d41-66b4784aed4c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn p ~= nil and not p.incombat and data.aetherfont_autosim ~= nil",
						dequeueIfLuaFalse = true,
						name = "Relevant state",
						uuid = "c4e5fd07-15af-802e-bf14-a8e0a5fa0a32",
						version = 3,
					},
				},
			},
			displayPath = "The Aetherfont/AutoSim",
			name = "Reset between combats",
			throttleTime = 500,
			timeout = 3,
			uuid = "b04b01c1-31b3-0cbd-ada7-d6baf1702e13",
			version = 2,
		},
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
						actionLua = "data.aetherfont_autosim.channel(eventArgs)\nself.used=true",
						conditions = 
						{
							
							{
								"33b36485-f940-3c9c-aade-a1bb3e245d4c",
								true,
							},
							
							{
								"ba484f1d-4719-7540-a8a5-5e4b50053b4b",
								true,
							},
						},
						name = "Boss cast anchors",
						uuid = "cd8945a5-a046-aac9-8619-63ae83cfef66",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 1126,
						name = "The Aetherfont/AutoSim",
						uuid = "33b36485-f940-3c9c-aade-a1bb3e245d4c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.aetherfont_autosim\nif not s or not s.enabled then return false end\nlocal e=eventArgs\nreturn (e.entityContentID==12336 and (e.spellID==33338 or e.spellID==33344)) or (e.entityContentID==12337 and (e.spellID==34605 or e.spellID==33358 or e.spellID==33359 or e.spellID==33362 or e.spellID==34318)) or (e.entityContentID==12334 and (e.spellID==33356 or e.spellID==33347 or e.spellID==33355 or e.spellID==33352))",
						dequeueIfLuaFalse = true,
						name = "Relevant state",
						uuid = "ba484f1d-4719-7540-a8a5-5e4b50053b4b",
						version = 3,
					},
				},
			},
			displayPath = "The Aetherfont/AutoSim",
			eventType = 3,
			name = "Boss cast anchors",
			timeout = 3,
			uuid = "8dacdd72-a5a1-94bf-b058-25f4f62aab3b",
			version = 2,
		},
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
						actionLua = "data.aetherfont_final_trash=true\nself.used=true",
						conditions = 
						{
							
							{
								"df00bb6b-41c2-8fb5-bb9b-366ed3376364",
								true,
							},
							
							{
								"95ea1854-6b0a-5002-8277-8ac5f0491529",
								true,
							},
						},
						name = "Recognize final trash before bosses",
						uuid = "995a420b-2e13-94be-8f53-5d70ed6c7e4c",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 1126,
						name = "The Aetherfont/AutoSim",
						uuid = "df00bb6b-41c2-8fb5-bb9b-366ed3376364",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nlocal c=AetherfontAutoSimConfig\nlocal s=data.aetherfont_autosim\nif not p or p.job~=25 or not p.incombat or not c or not c.enabled or not c.poolFinal or not s or s.boss~=0 then return false end\nlocal t=TensorCore.mGetTarget()\nif not t or not t.incombat then return false end\nreturn (t.contentid==12340 or t.contentid==12341 or t.contentid==12345 or t.contentid==12346 or t.contentid==12347 or t.contentid==12348 or t.contentid==12349 or t.contentid==12350)\nand not data.aetherfont_final_trash\nand ((p.pos.y > 10 and p.pos.y < 30 and (p.pos.x+329)^2+(p.pos.z-238)^2 < 45^2)\nor (p.pos.y > 35 and p.pos.y < 55 and (p.pos.x-392)^2+(p.pos.z+134)^2 < 45^2)\nor (p.pos.y > -825 and p.pos.y < -805 and (p.pos.x+360)^2+(p.pos.z+128)^2 < 45^2))",
						dequeueIfLuaFalse = true,
						name = "Relevant state",
						uuid = "95ea1854-6b0a-5002-8277-8ac5f0491529",
						version = 3,
					},
				},
			},
			displayPath = "The Aetherfont/AutoSim",
			name = "Recognize final trash before bosses",
			throttleTime = 500,
			timeout = 3,
			uuid = "c8057a39-d275-3f5f-9d77-5e23de34ea3e",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "The Aetherfont",
			name = "Draws",
			uuid = "844196d2-407b-19fe-89b3-7c43a9cda349",
		},
		objectType = "folder",
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
						actionLua = "local e=eventArgs\nlocal shapes={[33339]={\"Circle\",8},[33340]={\"Circle\",15},[33344]={\"Cone\",40,180},[33342]={\"Circle\",5},[33360]={\"Circle\",10},[34713]={\"Circle\",10},[33367]={\"Circle\",10},[33365]={\"Circle\",6},[33362]={\"Circle\",10},[34321]={\"Circle\",10},[34714]={\"Circle\",10},[33363]={\"Rect\",0},[33346]={\"Rect\",0},[33348]={\"Cone\",16,120},[33354]={\"Cone\",35,180},[34551]={\"Cone\",35,180},[33353]={\"Circle\",8},[33351]={\"Circle\",12},[33355]={\"Donut\",20,26},[34436]={\"Circle\",6}}\nlocal shape=shapes[e.aoeID]\nlocal ms=e.startTime+e.duration*1000-Now()\nif ms>0 and ms<20000 then\n    local drawer=TensorCore.getStaticDrawer(0x603333FF,2)\n    if shape[1]==\"Circle\" then\n        drawer:addTimedCircle(ms,e.x,e.y,e.z,shape[2],0,false,true)\n    elseif shape[1]==\"Cone\" then\n        drawer:addTimedCone(ms,e.x,e.y,e.z,shape[2],math.rad(shape[3]),e.heading,0,false,true)\n    elseif shape[1]==\"Donut\" then\n        drawer:addTimedDonut(ms,e.x,e.y,e.z,shape[2],shape[3],0,false,true)\n    elseif e.aoeWidth>0 and e.aoeLength>0 then\n        drawer:addTimedRect(ms,e.x,e.y,e.z,e.aoeLength,e.aoeWidth,e.heading,0,false,true)\n    end\n    AnyoneCore.addWorldTextCountdown(ms,{x=e.x,y=e.y+1,z=e.z},0xFFFFFFFF,true,1.1)\nend\nself.used=true",
						conditions = 
						{
							
							{
								"130825e9-ff42-ae2d-a376-591ba1080c32",
								true,
							},
							
							{
								"8c04f05f-7242-3f71-b790-aa6e9b468ea4",
								true,
							},
						},
						name = "Selected attack telegraphs",
						uuid = "04db67e1-97da-64f4-978f-8725a7c1b29e",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 1126,
						name = "The Aetherfont/Draws",
						uuid = "130825e9-ff42-ae2d-a376-591ba1080c32",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local e=eventArgs\nreturn not e.friendly and (e.aoeID==33339 or e.aoeID==33340 or e.aoeID==33344 or e.aoeID==33342 or e.aoeID==33360 or e.aoeID==34713 or e.aoeID==33367 or e.aoeID==33365 or e.aoeID==33362 or e.aoeID==34321 or e.aoeID==34714 or e.aoeID==33363 or e.aoeID==33346 or e.aoeID==33348 or e.aoeID==33354 or e.aoeID==34551 or e.aoeID==33353 or e.aoeID==33351 or e.aoeID==33355 or e.aoeID==34436)",
						dequeueIfLuaFalse = true,
						name = "Relevant state",
						uuid = "8c04f05f-7242-3f71-b790-aa6e9b468ea4",
						version = 3,
					},
				},
			},
			displayPath = "The Aetherfont/Draws",
			eventType = 18,
			name = "Selected attack telegraphs",
			timeout = 3,
			uuid = "f211e217-c789-5a47-8186-348ee19afa3f",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Shared dungeon controls",
			uuid = "63768d22-553b-34e4-94af-8e238657a7a6",
		},
		objectType = "folder",
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
						actionLua = "-- Shared pull-gathering helper; settings are independent of Minion core Settings.\nif not DungeonPullGather or DungeonPullGather.version~=2026111607 then\n local D={version=2026111607}\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n D.path=folder..[[DungeonAutoSim.Gather.lua]]\n local c=FileExists(D.path)and FileLoad(D.path)or{}\n if type(c)~='table'then c={}end\n if type(c.enabled)~='boolean'then c.enabled=true end\n if type(c.diagnostics)~='boolean'then c.diagnostics=true end\n if type(c.settle)~='number'or c.settle<.5 or c.settle>5 then c.settle=3 end\n if type(c.timeout)~='number'or c.timeout<5 or c.timeout>40 then c.timeout=20 end\n if type(c.brdDotHP)~='number'or c.brdDotHP<0 or c.brdDotHP>30 then c.brdDotHP=20 end\n if type(c.apexCap)~='number'or c.apexCap<80 or c.apexCap>100 then c.apexCap=95 end\n if type(c.overrides)~='table'then c.overrides={}end\n if type(c.disabledOverrides)~='table'then c.disabledOverrides={}end\n for map,v in pairs(c.overrides)do\n  if type(map)~='number'or type(v)~='table'or type(v.settle)~='number'or v.settle<.5 or v.settle>5 or type(v.timeout)~='number'or v.timeout<5 or v.timeout>40 then c.overrides[map]=nil end\n end\n if c.migratedSettle3~=true then\n  if math.abs(c.settle-2.3)<.001 then c.settle=3 end\n  for _,v in pairs(c.overrides)do if math.abs(v.settle-2.3)<.001 then v.settle=3 end end\n  c.defaultSettle=3;c.migratedSettle3=true\n end\n D.config=c\n function D.save()\n  if not FolderExists(folder)then FolderCreate(folder)end\n  FileSave(D.path,{enabled=c.enabled,settle=c.settle,timeout=c.timeout,apexCap=c.apexCap,diagnostics=c.diagnostics,defaultSettle=c.defaultSettle,migratedSettle3=c.migratedSettle3,brdDotHP=c.brdDotHP,overrides=c.overrides,disabledOverrides=c.disabledOverrides})\n end\n function D.timing(map)\n  if not c.overrides[map]and not c.disabledOverrides[map]then\n   c.overrides[map]={settle=c.settle,timeout=c.timeout};D.save()\n  end\n  return c.overrides[map]or c\n end\n function D.restoreDots()\n  local r=D.dotToggle\n  if r and _G[r.var]==false then _G[r.var]=r.previous end\n  D.dotToggle=nil;D.dotActive=nil;D.dotStatus=nil\n end\n function D.reset()D.restoreDots();D.pull=nil;D.active=false;D.reason=nil;D.detail=nil;D.bardStatus=nil;D.dotActive=nil;D.dotStatus=nil end\n function D.trace(text)\n  if D.traceText~=text then D.traceText=text;TensorCore.timelineLogToFile('[Dungeon W2W] '..text..'\\n')end\n end\n function D.update(p,valid,isBoss,bosses)\n  if not c.enabled or not valid or isBoss or not p or not p.alive or not p.incombat then\n   if D.pull then D.trace('released: disabled, boss, death or combat ended')end\n   D.reset();return false\n  end\n  local timing=D.timing(p.localmapid)\n  local now=Now();local tank\n  for _,e in pairs(TensorCore.getEntityGroupList('Tank',nil,true)or{})do\n   if e.alive and e.pos and (e.pos.x-p.pos.x)^2+(e.pos.z-p.pos.z)^2<=60^2 then\n    if not tank or e.id<tank.id then tank=e end\n   end\n  end\n  if not tank then D.reset();D.detail='No nearby engaged party tank';return false end\n  local g=D.pull\n  if not g or g.map~=p.localmapid or g.tank~=tank.id then\n   g={map=p.localmapid,tank=tank.id,start=now,seen={},arrived=now,anchor={x=tank.pos.x,z=tank.pos.z},stationary=now};D.pull=g\n  end\n  if g.released then D.active=false;return false end\n  local count,far,new=0,0,0\n  TensorCore.forEachEntity('alive,targetable,attackable',function(id)\n   local e=TensorCore.mGetEntity(id)\n   if e and e.incombat and e.pos and not bosses[e.contentid] and math.abs(e.pos.y-tank.pos.y)<=10 then\n    local distance=(e.pos.x-tank.pos.x)^2+(e.pos.z-tank.pos.z)^2\n    if distance<=60^2 then\n     count=count+1\n     if not g.seen[id]then g.seen[id]=true;g.arrived=now;new=new+1 end\n     if distance>(12+(e.hitradius or 0))^2 then far=far+1 end\n    end\n   end\n   return true\n  end)\n  if (tank.pos.x-g.anchor.x)^2+(tank.pos.z-g.anchor.z)^2>1^2 then\n   g.anchor={x=tank.pos.x,z=tank.pos.z};g.stationary=now\n  end\n  if count==0 then\n   g.readyAt=nil\n   if now-g.start>=timing.timeout*1000 then g.released=true;D.active=false;D.reason=nil;D.trace('released: gather timeout, no engaged trash');return false end\n  else\n   if far>0 then g.readyAt=nil elseif not g.readyAt then g.readyAt=now end\n  end\n  if count>0 and far==0 and g.readyAt and now-g.readyAt>=timing.settle*1000 and now-g.stationary>=timing.settle*1000 and now-g.arrived>=timing.settle*1000 and now-g.start>=3000 then\n   g.released=true;D.active=false;D.reason=nil;D.trace('released: tank stopped, roster stable and '..count..' enemies gathered');return false\n  end\n  if now-g.start>=timing.timeout*1000 then\n   g.released=true;D.active=false;D.reason=nil;D.trace('released: '..timing.timeout..'s maximum gather wait; far='..far..' engaged='..count);return false\n  end\n  D.active=true;D.reason='Gathering pull'\n  D.detail=string.format('Gathering pull: %d engaged, %d trailing; %.1f / %.0fs',count,far,(now-g.start)/1000,timing.timeout)\n  local stage=far>0 and 'trailing enemies'or now-g.stationary<timing.settle*1000 and 'tank moving'or'waiting for stable pull'\n  D.trace('holding: '..stage..'; tank='..tank.id..'; engaged='..count..'; far='..far)\n  return true\n end\n function D.lease(id,untilMs)\n  if id==16496 or id==25784 or id==100 or id==113 or id==7406 or id==7407 or id==3560 then return false end\n  local accepted=TensorCore.API.TensorACR.holdActionUntil(id,untilMs,1)\n  D.leases=D.leases or{}\n  if accepted then D.leases[id]=untilMs end\n  return accepted\n end\n function D.dotHold(p,valid,target,bosses,encounter,level)\n  local active=valid and p.job==23 and c.brdDotHP>0 and not encounter\n   and target and target.alive and target.targetable and target.attackable and target.incombat\n   and not bosses[target.contentid]and target.hp and target.hp.max>0\n   and target.hp.percent>0 and target.hp.percent<c.brdDotHP\n  if not active then D.restoreDots();D.dotTraceKey=nil;return end\n  -- BRD's global DoTs QT tells the rotation not to plan these GCDs.\n  local variable='ACR_TensorRequiem4_DoTs'\n  if type(_G[variable])~='boolean'then return end\n  if not D.dotToggle then D.dotToggle={var=variable,previous=_G[variable]}end\n  _G[variable]=false;D.dotActive=true\n  D.dotStatus='BRD DoTs off below '..c.brdDotHP..'% trash HP'\n  local key=tostring(target.id)..':'..c.brdDotHP\n  if D.dotTraceKey~=key then\n   D.dotTraceKey=key\n   TensorCore.timelineLogToFile('[Dungeon BRD DoTs] QT off: target='..target.id..' CID='..target.contentid..' HP='..target.hp.percent..' threshold='..c.brdDotHP..'; no GCD action holds\\n')\n  end\n end\n function D.observeBoss(p,encounter,blocked,held)\n  if p.job~=23 or not encounter then D.bossLogAt=nil;D.bossLogKey=nil;return end\n  if not c.diagnostics then return end\n  local now=Now();local target=TensorCore.mGetTarget()\n  local owned=0;for var in pairs(held or{})do if var:match('_CD$')then owned=owned+1 end end\n  local key=tostring(target and target.id)..':'..tostring(blocked)..':'..tostring(ACR_TensorRequiem4_CD)..':'..owned\n  if D.bossLogAt and now-D.bossLogAt<5000 and D.bossLogKey==key then return end\n  D.bossLogAt=now;D.bossLogKey=key\n  local function state(id)\n   local a=ActionList:Get(1,id)\n   if not a then return 'missing action'end\n   local ok,ready=pcall(function()return a:IsReady(p.id)end)\n   return string.format('cd=%.2f onCD=%s ready=%s ownedLeaseRemainingMs=%.0f',math.max(0,a.cdmax-a.cd),tostring(a.isoncd),ok and tostring(ready)or('read error '..tostring(ready)),math.max(0,(D.leases and D.leases[id]or 0)-now))\n  end\n  local bv=TensorCore.getBuff(p,141);local rf=TensorCore.getBuff(p,2964)\n  TensorCore.timelineLogToFile('[Dungeon BRD boss] target='..tostring(target and target.contentid)..' HP='..tostring(target and target.hp and target.hp.percent)..' CDQT='..tostring(ACR_TensorRequiem4_CD)..' ownedCDvars='..owned..' finalOrLowHP='..tostring(blocked)..' gathering='..tostring(D.active)..' BattleVoice{'..state(118)..'} RadiantFinale{'..state(25785)..'} BVbuff='..tostring(bv and bv.duration)..' RFbuff='..tostring(rf and rf.duration)..' BVhotbar='..tostring(ACR_TensorRequiem4_Hotbar_BattleVoice)..'\\n')\n end\n function D.bard(p,gathering,priorityHold)\n  if p.job~=23 or not gathering then return end\n  local untilMs=Now()+450\n  -- BRD gathering owns short burst-action holds, not its broad CD toggle.\n  -- Both party buffs are held and released together; songs/normal damage remain automatic.\n  for _,row in ipairs({{101,4},{107,38},{118,50},{25785,90}})do\n   if p.level>=row[2]then D.lease(row[1],untilMs)end\n  end\n  D.bardStatus='BRD offensive buffs held for gathered targets; Apex uses its toggle'\n end\n function D.gatherApex(p,gathering)\n  return p.job==23 and gathering and not(p.gauge and type(p.gauge[4])=='number'and p.gauge[4]>=c.apexCap)\n end\n function D.gui()\n  local value,changed=GUI:Checkbox('Wait for full pull (W2W)',c.enabled)\n  if changed then c.enabled=value;D.save()end\n  if GUI:IsItemHovered()then GUI:SetTooltip('Hold major offensive cooldowns until the party tank stops and engaged enemies gather. Last-pack and low-HP holds keep priority. Normal damage continues.')end\n  local diag,edit=GUI:Checkbox('BRD boss-buff diagnostics',c.diagnostics)\n  if edit then c.diagnostics=diag;D.save()end\n  value=GUI:SliderInt('Hold BRD DoTs below trash HP (%)',c.brdDotHP,0,30)\n  if value~=c.brdDotHP then c.brdDotHP=value;D.save()end\n  if GUI:IsItemHovered()then GUI:SetTooltip('Temporarily switches the global BRD DoTs toggle off on selected low-HP trash, then restores its previous value. Bosses are excluded; zero disables.')end\n  if D.dotStatus then GUI:TextWrapped(D.dotStatus)end\n  if c.enabled then\n   local p=TensorCore.mGetPlayer();local map=p and p.localmapid\n   if map then D.timing(map)end\n   local custom=map and c.overrides[map]~=nil or false\n   value,changed=GUI:Checkbox('Use timings for this dungeon',custom)\n   if changed and map then\n    c.disabledOverrides[map]=not value or nil\n    c.overrides[map]=value and {settle=c.settle,timeout=c.timeout}or nil;D.save()\n   end\n   local timing=map and c.overrides[map]or c\n   value=GUI:SliderFloat('Full-pull settle time (seconds)',timing.settle,.5,5,'%.1f')\n   if value~=timing.settle then timing.settle=value;D.save()end\n   value=GUI:SliderFloat('Maximum gather wait (seconds)',timing.timeout,5,40,'%.0f')\n   if value~=timing.timeout then timing.timeout=value;D.save()end\n   value=GUI:SliderInt('Release gathering Apex at Soul Voice',c.apexCap,80,100)\n   if value~=c.apexCap then c.apexCap=value;D.save()end\n   if D.active and D.detail then GUI:TextWrapped(D.detail)end\n   if D.active and D.bardStatus then GUI:TextWrapped(D.bardStatus)end\n  end\n end\n D.save();DungeonPullGather=D\nend\n-- Reuses dungeon lol's all-job CD pooling and owned restoration.\nif not DungeonProfilePooling then\n    local pooling = { held = {}, lateHP = 8 }\n    local path = GetLuaModsPath() .. [[TensorReactions\\Settings\\DungeonAutoSim.Shared.lua]]\n    if FileExists(path) then\n        local saved = FileLoad(path)\n        if type(saved) == \"table\" and type(saved.lateHP) == \"number\" then\n            pooling.lateHP = math.max(0, math.min(20, saved.lateHP))\n        end\n    end\n    function pooling.release()\n        for variable, prior in pairs(pooling.held) do\n            if _G[variable] == false then _G[variable] = prior end\n        end\n        pooling.held = {}\n        pooling.variables = nil\n        if pooling.apexHeld and ACR_TensorRequiem4_Apex == false then\n            ACR_TensorRequiem4_Apex = true\n        end\n        pooling.apexHeld = nil\n        if pooling.smartDotHeld and ACR_TensorRequiem4_SmartDoT == false then\n            ACR_TensorRequiem4_SmartDoT = true\n        end\n        pooling.smartDotHeld = nil\n        pooling.active = false\n        pooling.reason=nil;pooling.status=nil\n    end\n    pooling.maps = {\n        [1164] = {config=\"LunarSubterraneAutoSimConfig\", state=\"lunar_subterrane_autosim\", flag=\"lunar_final_trash\", level=90, bosses={[12500]=true,[12484]=true,[12584]=true}},\n        [189] = {config=\"AmdaporHardAutoSimConfig\", state=\"amdaporhard_autosim\", flag=\"amdaporhard_final_trash\", level=50, bosses={[3272]=true,[3274]=true,[3275]=true}},\n        [1174] = {config=\"GhimlytAutoSimConfig\", state=\"ghimlyt_autosim\", flag=\"ghimlyt_final_trash\", level=70, bosses={[7855]=true,[7856]=true,[7857]=true,[7858]=true}},\n        [1126] = {config=\"AetherfontAutoSimConfig\", state=\"aetherfont_autosim\", flag=\"aetherfont_final_trash\", level=90, bosses={[12336]=true,[12337]=true,[12334]=true}}\n    }\n    DungeonProfilePooling = pooling\nend\nlocal mode = \"high\"\nlocal pooling = DungeonProfilePooling\nif not pooling.maps[1043] then pooling.maps[1043]={config=\"CastrumMeridianumAutoSimConfig\",state=\"castrummeridianum_autosim\",flag=\"castrummeridianum_final_trash\",level=50,bosses={[557]=true,[2116]=true,[2118]=true}} end\nlocal player = TensorCore.mGetPlayer()\nif not player then pooling.release(); self.used = true; return end\nif pooling.job ~= player.job then\n    pooling.release()\n    pooling.job = player.job\nend\nlocal spec = mode == \"high\" and pooling.maps[player.localmapid]\nlocal config = spec and _G[spec.config]\nlocal state = spec and data[spec.state]\nlocal bosses = spec and spec.bosses\nlocal finalDetected = spec and data[spec.flag]\nlocal level = spec and math.min(player.level, spec.level) or player.level\nlocal levelling = LevellingDungeons\nif mode == \"levelling\" and levelling and levelling.definitions[player.localmapid] then\n    local definition = levelling.definitions[player.localmapid]\n    config = levelling.settings\n    state = data.levelling_dungeons\n    bosses = definition.bosses\n    finalDetected = state and state.pool ~= nil\n    level = math.min(player.level, definition.sync)\nend\nlocal target = TensorCore.mGetTarget()\nlocal enabled = config and (config.enabled == true or config.autoSim == true)\nlocal valid = enabled and player.incombat and player.alive and bosses ~= nil\nlocal boss = valid and target and bosses[target.contentid] and target.alive and target.attackable and target.incombat\nlocal activeBoss = state and (state.activeBoss or state.boss)\nlocal final = valid and config.poolFinal and finalDetected and (not activeBoss or activeBoss == 0) and not boss\nif DungeonAutoSimShared then pooling.lateHP = DungeonAutoSimShared.lateHP end\nlocal bardTrash = valid and player.job == 23 and not boss and (not activeBoss or activeBoss == 0)\n    and target and target.alive and target.attackable and target.incombat and not bosses[target.contentid]\nif bardTrash and ACR_TensorRequiem4_SmartDoT == true then\n    pooling.smartDotHeld = true\n    ACR_TensorRequiem4_SmartDoT = false\nelseif not bardTrash and pooling.smartDotHeld then\n    if ACR_TensorRequiem4_SmartDoT == false then ACR_TensorRequiem4_SmartDoT = true end\n    pooling.smartDotHeld = nil\nend\nlocal finalBosses={[1164]={[12584]=true},[1292]={[13974]=true},[1204]={[12763]=true},[1242]={[13610]=true},[1199]={[12729]=true},[1266]={[13749]=true},[1345]={[14758]=true},[1314]={[14288]=true},[1203]={[12709]=true},[189]={[3275]=true},[1174]={[7857]=true,[7858]=true},[1043]={[2118]=true},[1126]={[12334]=true},[969]={[10285]=true},[1037]={[73]=true},[1167]={[12711]=true},[1193]={[12705]=true},[1194]={[12728]=true},[1198]={[12752]=true},[1208]={[12695]=true},[974]={[10399]=true},[822]={[8262]=true},[1065]={[3458]=true},[1038]={[101]=true},[1245]={[1197]=true},[1039]={[444]=true},[1040]={[422]=true},[1041]={[1279]=true},[1267]={[1570]=true},[1303]={[1590]=true},[1042]={[1680]=true},[1330]={[1396]=true},[1331]={[1532]=true}}\nlocal isFinalBoss=target and finalBosses[player.localmapid] and finalBosses[player.localmapid][target.contentid] == true\nlocal engagedBoss=state and (state.activeBoss or state.boss)\nif finalBosses[player.localmapid] and engagedBoss and finalBosses[player.localmapid][engagedBoss] then isFinalBoss=true end\nif isFinalBoss then final=false;pooling.releaseReason=\"final boss engaged\";pooling.release() end\nlocal late = not isFinalBoss and valid and target and target.alive and target.attackable and target.incombat and target.hp and target.hp.max > 0 and target.hp.percent > 0 and target.hp.percent <= pooling.lateHP\nlocal gathering=DungeonPullGather.update(player,valid,boss or (activeBoss and activeBoss~=0),bosses or{})\nDungeonPullGather.bard(player,gathering,final or late)\nif final or late or gathering then\n    if not pooling.variables then\n        pooling.variables = {}\n        for _, option in pairs(TensorCore.API.TensorACR.getQuickToggles() or {}) do\n            if option.var and option.var:match(\"_CD$\") and type(_G[option.var]) == \"boolean\" then\n                pooling.variables[#pooling.variables + 1] = option.var\n            end\n        end\n    end\n    for _, variable in ipairs(pooling.variables) do\n        if gathering and not final and not late and player.job==23 then\n            if pooling.held[variable]~=nil then if _G[variable]==false then _G[variable]=pooling.held[variable]end;pooling.held[variable]=nil end\n        else\n            if pooling.held[variable]==nil then pooling.held[variable]=_G[variable]end\n            _G[variable]=false\n        end\n    end\n    local api = TensorCore.API.TensorACR\n    local untilMs=Now()+(gathering and not final and not late and 450 or 750)\n    if player.job == 23 then\n        if level>=50 then DungeonPullGather.lease(118,untilMs)end\n        local accepted=level>=90 and DungeonPullGather.lease(25785,untilMs)or false\n        local key = tostring(target and target.id)..\":\"..tostring(final)..\":\"..tostring(late)..\":\"..tostring(accepted)\n        if pooling.radiantTrace ~= key then\n            d(\"[Dungeon pooling] Radiant Finale hold accepted=\"..tostring(accepted)..\" target=\"..tostring(target and target.contentid)..\" HP=\"..tostring(target and target.hp and target.hp.percent)..\" threshold=\"..tostring(pooling.lateHP)..\" final=\"..tostring(final)..\" lowHP=\"..tostring(late))\n            pooling.radiantTrace = key\n        end\n    elseif player.job == 25 then\n        if level >= 52 then api.holdActionUntil(3573, untilMs) end\n        if level >= 30 then api.holdActionUntil(158, untilMs) end\n    end\n    local lastApex=false\n    if final and (player.job == 23 or player.job == 25) then\n        local count, healthy = 0, false\n        local range = player.job == 25 and 35 or 30\n        local height = player.job == 25 and 10 or 8\n        TensorCore.forEachEntity(\"alive,targetable,attackable\", function(id)\n            local enemy = TensorCore.mGetEntity(id)\n            if enemy and enemy.incombat and not bosses[enemy.contentid] and enemy.pos then\n                local dx, dz = enemy.pos.x-player.pos.x, enemy.pos.z-player.pos.z\n                if dx*dx+dz*dz <= range*range and math.abs(enemy.pos.y-player.pos.y) <= height then\n                    count = count + 1\n                    if not enemy.hp or not enemy.hp.percent or enemy.hp.percent > 8 then healthy = true end\n                end\n            end\n            return count < 4\n        end)\n        if player.job == 25 and level >= 66 and count >= 1 and count <= 3 then\n            api.holdActionUntil(7421, untilMs)\n        end\n        lastApex=player.job==23 and level>=80 and count>=1 and count<=2 and not healthy\n    end\n    pooling.lastApex=lastApex\n    pooling.reason=final and \"Holding offensive cooldowns for the next boss\" or late and \"Holding new offensive cooldowns near boss death\" or \"Gathering pull\"\n    pooling.status=pooling.reason\n    pooling.active = true\nelseif pooling.active then\n    pooling.release()\nend\nlocal lastApex=final and pooling.lastApex==true\nlocal gatherApex=DungeonPullGather.gatherApex(player,gathering)\nif (lastApex or gatherApex)and (ACR_TensorRequiem4_Apex==true or pooling.apexHeld)then\n pooling.apexHeld=true;ACR_TensorRequiem4_Apex=false\nelseif pooling.apexHeld then\n if ACR_TensorRequiem4_Apex==false then ACR_TensorRequiem4_Apex=true end\n pooling.apexHeld=nil\nend\nDungeonPullGather.dotHold(player,valid,target,bosses or{},boss or(activeBoss and activeBoss~=0),level)\nDungeonPullGather.observeBoss(player,valid and (boss or(activeBoss and activeBoss~=0)),final or late,pooling.held)\nself.used = true\n",
						conditions = 
						{
							
							{
								"32720bc2-71e9-0f3b-b51b-c184e17aae83",
								true,
							},
						},
						name = "[Dungeon pooling] All-job final trash and boss holds",
						uuid = "d298478d-215e-1353-9a40-9fbd0bcd91fd",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local H=DungeonProfilePooling\nif DungeonPullGather and (DungeonPullGather.pull or DungeonPullGather.dotActive) then return true end\nif H and (H.active or H.apexHeld or H.smartDotHeld) then return true end\nlocal p=TensorCore.mGetPlayer()\nif not p or not p.incombat or not p.alive then return false end\nlocal maps={ [1043]={\"CastrumMeridianumAutoSimConfig\",\"castrummeridianum_final_trash\",{[557]=true,[2116]=true,[2118]=true}}, [1164]={\"LunarSubterraneAutoSimConfig\",\"lunar_final_trash\",{[12500]=true,[12484]=true,[12584]=true}},[189]={\"AmdaporHardAutoSimConfig\",\"amdaporhard_final_trash\",{[3272]=true,[3274]=true,[3275]=true}},[1174]={\"GhimlytAutoSimConfig\",\"ghimlyt_final_trash\",{[7855]=true,[7856]=true,[7857]=true,[7858]=true}},[1126]={\"AetherfontAutoSimConfig\",\"aetherfont_final_trash\",{[12336]=true,[12337]=true,[12334]=true}} }\nlocal spec=maps[p.localmapid]\nlocal config=spec and _G[spec[1]]\nlocal bosses=spec and spec[3]\nlocal final=spec and data[spec[2]]\n\nif not config or not (config.enabled==true or config.autoSim==true) or not bosses then return false end\nlocal t=TensorCore.mGetTarget()\nif not t or not t.alive or not t.attackable or not t.incombat then return false end\nlocal boss=bosses[t.contentid]\nif not boss and (not DungeonPullGather or DungeonPullGather.config.enabled) then return true end\nif p.job==23 and not boss then return true end\nif config.poolFinal and final and not boss then return true end\nlocal finalBosses={[1164]={[12584]=true},[1292]={[13974]=true},[1204]={[12763]=true},[1242]={[13610]=true},[1199]={[12729]=true},[1266]={[13749]=true},[1345]={[14758]=true},[1314]={[14288]=true},[1203]={[12709]=true},[189]={[3275]=true},[1174]={[7857]=true,[7858]=true},[1043]={[2118]=true},[1126]={[12334]=true},[969]={[10285]=true},[1037]={[73]=true},[1167]={[12711]=true},[1193]={[12705]=true},[1194]={[12728]=true},[1198]={[12752]=true},[1208]={[12695]=true},[974]={[10399]=true},[822]={[8262]=true},[1065]={[3458]=true},[1038]={[101]=true},[1245]={[1197]=true},[1039]={[444]=true},[1040]={[422]=true},[1041]={[1279]=true},[1267]={[1570]=true},[1303]={[1590]=true},[1042]={[1680]=true},[1330]={[1396]=true},[1331]={[1532]=true}}\nif finalBosses[p.localmapid] and finalBosses[p.localmapid][t.contentid] then return false end\nreturn t.hp~=nil and t.hp.percent>0 and t.hp.percent <= (H and H.lateHP or 8)",
						name = "Supported duty and pooling work",
						uuid = "32720bc2-71e9-0f3b-b51b-c184e17aae83",
						version = 3,
					},
				},
			},
			displayPath = "Shared dungeon controls",
			name = "[Dungeon pooling] All-job final trash and boss holds",
			throttleTime = 250,
			timeout = 2,
			uuid = "2a99ec77-ec57-56ae-94c9-a1fd374b368e",
			version = 2,
		},
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
						actionLua = "if DungeonPullGather then DungeonPullGather.reset()end\nif DungeonProfilePooling then DungeonProfilePooling.release() end\nself.used=true",
						conditions = 
						{
							
							{
								"d7f68b96-8191-0b56-aaa7-e5a1111648c2",
								true,
							},
						},
						name = "[Dungeon pooling] Restore owned settings on Wipe",
						uuid = "dfcb93fb-f522-626e-a3cf-c8af55e2bc60",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return DungeonProfilePooling ~= nil",
						name = "Relevant state",
						uuid = "d7f68b96-8191-0b56-aaa7-e5a1111648c2",
						version = 3,
					},
				},
			},
			displayPath = "Shared dungeon controls",
			eventType = 9,
			name = "[Dungeon pooling] Restore owned settings on Wipe",
			timeout = 2,
			uuid = "21376313-f081-1531-884a-b0a7f4e50536",
			version = 2,
		},
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
						actionLua = "if DungeonPullGather then DungeonPullGather.reset()end\nif DungeonProfilePooling then DungeonProfilePooling.release() end\nself.used=true",
						conditions = 
						{
							
							{
								"ce279def-f76a-8d80-acc6-bdb5f19ba8ef",
								true,
							},
						},
						name = "[Dungeon pooling] Restore owned settings on MapChange",
						uuid = "fc16b228-ffe0-9f10-8f40-159d70129f5d",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return DungeonProfilePooling ~= nil",
						name = "Relevant state",
						uuid = "ce279def-f76a-8d80-acc6-bdb5f19ba8ef",
						version = 3,
					},
				},
			},
			displayPath = "Shared dungeon controls",
			eventType = 11,
			name = "[Dungeon pooling] Restore owned settings on MapChange",
			timeout = 2,
			uuid = "b79398a3-df7f-a01b-9cdb-69ae85389fe5",
			version = 2,
		},
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
						actionLua = "if DungeonPullGather then DungeonPullGather.reset()end\nif DungeonProfilePooling then DungeonProfilePooling.release() end\nself.used=true",
						conditions = 
						{
							
							{
								"746f6771-391e-be17-8872-1e2bcc4c3831",
								true,
							},
						},
						name = "[Dungeon pooling] Restore owned settings on Death",
						uuid = "af4d54dc-7188-e1ce-a57c-517f21448fea",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return DungeonProfilePooling ~= nil",
						name = "Relevant state",
						uuid = "746f6771-391e-be17-8872-1e2bcc4c3831",
						version = 3,
					},
				},
			},
			displayPath = "Shared dungeon controls",
			eventType = 10,
			name = "[Dungeon pooling] Restore owned settings on Death",
			timeout = 2,
			uuid = "d904c8c7-b2d9-7d62-ac5e-11fd9363aee2",
			version = 2,
		},
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
						actionLua = "local pooling = DungeonProfilePooling\nif not pooling then self.used=true;return end\nlocal player=TensorCore.mGetPlayer()\nif not player or not pooling.maps[player.localmapid] then self.used=true;return end\nlocal visible=GUI:Begin(\"Dungeon cooldown pooling\",true)\nif visible then\n    local value,changed=GUI:SliderFloat(\"Hold cooldowns below boss HP %\",pooling.lateHP,0,20)\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Save offensive cooldowns for the next encounter. Zero disables the near-death hold. Final-pack holds use each dungeon's setting.\") end\n    if changed then\n        pooling.lateHP=value\n        if DungeonAutoSimShared then DungeonAutoSimShared.lateHP=value end\n        local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n        if not FolderExists(folder) then FolderCreate(folder) end\n        local path=folder..[[DungeonAutoSim.Shared.lua]]\n        local saved=FileExists(path) and FileLoad(path) or {}\n        if type(saved)~=\"table\" then saved={} end\n        saved.lateHP=value\n        FileSave(path,saved)\n    end\nend\nGUI:End()\nself.used=true",
						name = "[Dungeon pooling] Shared boss HP threshold",
						uuid = "10143ba6-fc7f-face-a623-527629f8611f",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
			},
			displayPath = "Shared dungeon controls",
			eventType = 13,
			name = "[Dungeon pooling] Shared boss HP threshold",
			timeout = 2,
			uuid = "91f39f95-3d9c-f717-a73f-4bf768fc7c04",
			version = 2,
		},
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
						actionLua = "DungeonHoldDisplays=DungeonHoldDisplays or {}\nif not DungeonHoldDisplays[\"highleveldungeons\"] then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[highleveldungeons.Safety.lua]]\n local c=FileExists(path) and FileLoad(path) or {}\n if type(c)~=\"table\" then c={} end\n local changed=false\n if type(c.showHoldStatus)~=\"boolean\" then c.showHoldStatus=true;changed=true end\n if type(c.shortLivedAdds)~=\"boolean\" then c.shortLivedAdds=true;changed=true end\n if changed then\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,{showHoldStatus=c.showHoldStatus,shortLivedAdds=c.shortLivedAdds})\n end\n c.path=path;DungeonHoldDisplays[\"highleveldungeons\"]=c\nend\nlocal p=TensorCore.mGetPlayer()\nlocal h=DungeonProfilePooling\nif not h then self.used=true;return end\nif not h.restoreAuditVersion then\n local original=h.release\n h.release=function()\n  local expected={}\n  for var,old in pairs(h.held) do if _G[var]==false then expected[var]=old end end\n  if h.apexHeld and ACR_TensorRequiem4_Apex==false then expected.ACR_TensorRequiem4_Apex=true end\n  if h.smartDotHeld and ACR_TensorRequiem4_SmartDoT==false then expected.ACR_TensorRequiem4_SmartDoT=true end\n  original()\n  local count,failed=0,0\n  for var,old in pairs(expected) do\n   count=count+1\n   if _G[var]~=old then failed=failed+1;d(\"[Dungeon restoration] VERIFY FAILED variable=\"..var) end\n  end\n  if count>0 then d(\"[Dungeon restoration] reason=\"..tostring(h.releaseReason or \"hold ended\")..\" restored=\"..count..\" failed=\"..failed) end\n  h.releaseReason=nil;h.status=nil\n end\n h.restoreAuditVersion=1\nend\nlocal finalBosses={[1164]={[12584]=true},[1292]={[13974]=true},[1204]={[12763]=true},[1242]={[13610]=true},[1199]={[12729]=true},[1266]={[13749]=true},[1345]={[14758]=true},[1314]={[14288]=true},[1203]={[12709]=true},[189]={[3275]=true},[1174]={[7857]=true,[7858]=true},[1043]={[2118]=true},[1126]={[12334]=true},[969]={[10285]=true},[1037]={[73]=true},[1167]={[12711]=true},[1193]={[12705]=true},[1194]={[12728]=true},[1198]={[12752]=true},[1208]={[12695]=true},[974]={[10399]=true},[822]={[8262]=true},[1065]={[3458]=true},[1038]={[101]=true},[1245]={[1197]=true},[1039]={[444]=true},[1040]={[422]=true},[1041]={[1279]=true},[1267]={[1570]=true},[1303]={[1590]=true},[1042]={[1680]=true},[1330]={[1396]=true},[1331]={[1532]=true}}\nlocal t=TensorCore.mGetTarget()\nlocal spec=p and h.maps[p.localmapid]\nlocal cfg=spec and _G[spec.config]\nlocal state=spec and data[spec.state]\nlocal supported=spec~=nil\n\nlocal finalId=state and (state.activeBoss or state.boss)\nlocal finalSet=p and finalBosses[p.localmapid]\nlocal finalEngaged=p and p.incombat and finalSet and ((t and t.alive and t.incombat and finalSet[t.contentid]) or (finalId and finalSet[finalId]))\nlocal enabled=cfg and (cfg.enabled==true or cfg.autoSim==true)\nlocal reason\nif not p then reason=\"player unavailable\"\nelseif not supported then reason=\"left supported duty\"\nelseif not p.alive then reason=\"death\"\nelseif h.job and h.job~=p.job then reason=\"job changed\"\nelseif not enabled then reason=\"dungeon automation disabled\"\nelseif not p.incombat then reason=\"combat ended\"\nelseif finalEngaged then reason=\"final boss engaged\" end\nif reason then\n h.releaseReason=reason\n h.release()\n h.status=nil\nelse\n h.status=(h.active or h.reason) and ((t and t.hp and t.hp.percent<=h.lateHP) and \"Low HP: saving cooldowns\" or \"Final trash: saving cooldowns\") or nil\nend\nself.used=true",
						conditions = 
						{
							
							{
								"b81180c8-cdd2-eac0-8836-93d36f73f999",
								true,
							},
						},
						name = "[Dungeon safety] Restore and verify owned holds",
						uuid = "b88d98d9-c576-faf0-86e1-27ebf38f285a",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local h=DungeonProfilePooling\nlocal p=TensorCore.mGetPlayer()\nif not h then return false end\nif next(h.held)~=nil or h.active==true or h.smartDotHeld==true or h.apexHeld==true then return true end\nreturn h.restoreAuditVersion==nil and p~=nil and (h.maps[p.localmapid]~=nil)",
						name = "Owned state or supported duty",
						uuid = "b81180c8-cdd2-eac0-8836-93d36f73f999",
						version = 3,
					},
				},
			},
			displayPath = "Shared dungeon controls",
			name = "[Dungeon safety] Restore and verify owned holds",
			throttleTime = 250,
			timeout = 2,
			uuid = "803482d9-0a31-3fbc-a815-b3a8796af8c8",
			version = 2,
		},
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
						actionLua = "local p=TensorCore.mGetPlayer()\nlocal h=DungeonProfilePooling\nif not p or not h then self.used=true;return end\nlocal key=\"highleveldungeons\"\nDungeonHoldDisplays=DungeonHoldDisplays or {}\nlocal c=DungeonHoldDisplays[key]\nif not c then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..key..[[.Safety.lua]]\n c=FileExists(path) and FileLoad(path) or {}\n if type(c)~=\"table\" then c={} end\n if type(c.showHoldStatus)~=\"boolean\" then c.showHoldStatus=true end\n if type(c.shortLivedAdds)~=\"boolean\" then c.shortLivedAdds=true end\n c.path=path;DungeonHoldDisplays[key]=c\nend\nlocal visible=GUI:Begin(\"Dungeon hold status\",true)\nif visible then\n local value,changed=GUI:Checkbox(\"Show hold reason\",c.showHoldStatus)\n if changed then c.showHoldStatus=value end\n if GUI:IsItemHovered() then GUI:SetTooltip(\"Shows only holds owned by this dungeon controller. It does not describe holds from other profiles.\") end\n local v,edit=GUI:Checkbox(\"Avoid long BLM casts on dying adds\",c.shortLivedAdds)\n if edit then c.shortLivedAdds=v end\n if GUI:IsItemHovered() then GUI:SetTooltip(\"Uses the target's lifetime estimate; lets an existing cast finish. Does not change targets or block healing.\") end\n if changed or edit then\n  local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(c.path,{showHoldStatus=c.showHoldStatus,shortLivedAdds=c.shortLivedAdds})\n end\n if c.showHoldStatus then GUI:TextWrapped(h.status or h.reason or \"No dungeon cooldown hold\") end\nend\nGUI:End();self.used=true",
						conditions = 
						{
							
							{
								"b1a4322f-bf95-6f44-a504-71fb1668e049",
								true,
							},
						},
						name = "[Dungeon safety] Hold status and safety options",
						uuid = "2d7c52d0-6964-26f0-ba29-737cb92bb6df",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local h=DungeonProfilePooling\nlocal p=TensorCore.mGetPlayer()\nreturn h~=nil and ((next(h.held)~=nil or h.active==true or h.smartDotHeld==true or h.apexHeld==true) or (p~=nil and h.maps[p.localmapid]~=nil))",
						name = "Owned state or supported duty",
						uuid = "b1a4322f-bf95-6f44-a504-71fb1668e049",
						version = 3,
					},
				},
			},
			displayPath = "Shared dungeon controls",
			enabled = false,
			eventType = 13,
			name = "[Dungeon safety] Hold status and safety options",
			timeout = 2,
			uuid = "28910def-71d2-e767-acc8-772af7f251eb",
			version = 2,
		},
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
						actionLua = "DungeonHoldDisplays=DungeonHoldDisplays or {}\nif not DungeonHoldDisplays[\"highleveldungeons\"] then\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n local path=folder..[[highleveldungeons.Safety.lua]]\n local c=FileExists(path) and FileLoad(path) or {}\n if type(c)~=\"table\" then c={} end\n local changed=false\n if type(c.showHoldStatus)~=\"boolean\" then c.showHoldStatus=true;changed=true end\n if type(c.shortLivedAdds)~=\"boolean\" then c.shortLivedAdds=true;changed=true end\n if changed then\n  if not FolderExists(folder) then FolderCreate(folder) end\n  FileSave(path,{showHoldStatus=c.showHoldStatus,shortLivedAdds=c.shortLivedAdds})\n end\n c.path=path;DungeonHoldDisplays[\"highleveldungeons\"]=c\nend\nlocal p=TensorCore.mGetPlayer()\nlocal t=TensorCore.mGetTarget()\nlocal h=DungeonProfilePooling\nlocal c=DungeonHoldDisplays and DungeonHoldDisplays[\"highleveldungeons\"]\nif c and c.shortLivedAdds==false then self.used=true;return end\n-- Existing casts are never cancelled or re-targeted.\nif ActionList:IsCasting() then self.used=true;return end\nif TensorCore.hasBuff(p.id,167) or TensorCore.hasBuff(p.id,1211) then self.used=true;return end\nlocal life=TensorCore.calcTimeToKill(t.id)\nif type(life)~=\"number\" or life<=0 or life>4 then self.used=true;return end\nlocal now=Now()\nlocal sample=data.dungeonShortCastSample\nif not sample or sample.id~=t.id then\n data.dungeonShortCastSample={id=t.id,at=now,life=life};self.used=true;return\nend\nif now-sample.at<500 then self.used=true;return end\nlocal count=0\nTensorCore.forEachEntity(\"alive,targetable,attackable\",function(id)\n local e=TensorCore.mGetEntity(id)\n if e and e.incombat and e.pos and math.abs(e.pos.y-p.pos.y)<10 and (e.pos.x-p.pos.x)^2+(e.pos.z-p.pos.z)^2<=35^2 then count=count+1 end\n return count<2\nend)\nlocal held=0\nfor _,id in ipairs({154,142,3576,141,147,152,3577,25794,162,16505,25795,25793}) do\n local a=ActionList:Get(1,id)\n if a and a.level<=p.level and a.casttime>=1.5 and life<a.casttime+0.25 and sample.life<a.casttime+0.25 then\n  local instantFire=id==152 and TensorCore.hasBuff(p.id,165)\n  -- Multi-target damage can still land on surviving pack members.\n  if not instantFire and (a.radius==0 or count==1) then\n   if TensorCore.API.TensorACR.holdActionUntil(id,now+350,1) then held=held+1 end\n  end\n end\nend\nlocal reason=held>0 and \"Dying add: avoiding new long BLM casts\" or nil\nif h then\n local key=reason and tostring(t.id) or \"none\"\n if h.castGuardKey~=key then\n  if reason then d(\"[Dungeon cast guard] target=\"..tostring(t.id)..\" lifetime=\"..string.format(\"%.2f\",life)..\" heldSpells=\"..held..\" existing cast preserved\") end\n  h.castGuardKey=key\n end\n h.castGuardStatus=reason;h.castGuardAt=now\nend\nsample.life=life\nself.used=true",
						conditions = 
						{
							
							{
								"e96665f5-2805-624a-89a3-2344883ae524",
								true,
							},
						},
						name = "Protect new casts only",
						uuid = "ad024078-ce43-e4d6-b037-a1cac4b950b3",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.job~=25 or not p.alive or not p.incombat then return false end\nlocal h=DungeonProfilePooling\nif not h then return false end\nlocal spec=h.maps[p.localmapid]\nlocal cfg=spec and _G[spec.config]\nlocal bosses=spec and spec.bosses\n\nif not cfg or not (cfg.enabled==true or cfg.autoSim==true) or not bosses then return false end\nlocal t=TensorCore.mGetTarget()\nreturn t~=nil and t.alive==true and t.attackable==true and t.incombat==true and not bosses[t.contentid]",
						name = "BLM and live dungeon add",
						uuid = "e96665f5-2805-624a-89a3-2344883ae524",
						version = 3,
					},
				},
			},
			displayPath = "Shared dungeon controls",
			name = "[Dungeon safety] Avoid long casts on dying adds",
			throttleTime = 250,
			timeout = 0.3,
			uuid = "deb51d4e-7f5e-c7a2-b33b-1c26d556a869",
			version = 2,
		},
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
						actionLua = "local h=DungeonProfilePooling\nlocal t=TensorCore.mGetTarget()\nlocal accepted=TensorCore.API.TensorACR.holdActionUntil(25785,Now()+750,1)\nlocal key=tostring(t.id)..\":\"..tostring(accepted)\nif h.finaleGuardTrace~=key then\n TensorCore.timelineLogToFile(\"[Dungeon Finale guard] accepted=\"..tostring(accepted)..\" target=\"..tostring(t.id)..\" CID=\"..tostring(t.contentid)..\" HP=\"..tostring(t.hp.percent)..\" threshold=\"..tostring(h.lateHP))\n h.finaleGuardTrace=key\nend\nself.used=true",
						conditions = 
						{
							
							{
								"27559f58-430d-ade3-a75c-11b56912208c",
								true,
							},
						},
						name = "Hold Finale and log acceptance",
						uuid = "cec52495-5d84-e006-97f5-70ec8aed0053",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nif not p or p.job~=23 or not p.incombat or not p.alive then return false end\nlocal h=DungeonProfilePooling\nif not h then return false end\nlocal spec=h.maps[p.localmapid]\nlocal c=spec and _G[spec.config]\n\nif not c or not (c.enabled==true or c.autoSim==true) then return false end\nlocal t=TensorCore.mGetTarget()\nif not t or not t.alive or not t.attackable or not t.incombat or not t.hp or t.hp.percent<=0 or t.hp.percent>h.lateHP then return false end\nlocal last={[1164]={[12584]=true},[1292]={[13974]=true},[1204]={[12763]=true},[1242]={[13610]=true},[1199]={[12729]=true},[1266]={[13749]=true},[1345]={[14758]=true},[1314]={[14288]=true},[1203]={[12709]=true},[189]={[3275]=true},[1174]={[7857]=true,[7858]=true},[1043]={[2118]=true},[1126]={[12334]=true},[969]={[10285]=true},[1037]={[73]=true},[1167]={[12711]=true},[1193]={[12705]=true},[1194]={[12728]=true},[1198]={[12752]=true},[1208]={[12695]=true},[974]={[10399]=true},[822]={[8262]=true},[1065]={[3458]=true},[1038]={[101]=true},[1245]={[1197]=true},[1039]={[444]=true},[1040]={[422]=true},[1041]={[1279]=true},[1267]={[1570]=true},[1303]={[1590]=true},[1042]={[1680]=true},[1330]={[1396]=true},[1331]={[1532]=true}}\nreturn not (last[p.localmapid] and last[p.localmapid][t.contentid])",
						name = "BRD supported duty and low HP",
						uuid = "27559f58-430d-ade3-a75c-11b56912208c",
						version = 3,
					},
				},
			},
			displayPath = "Shared dungeon controls",
			name = "[Dungeon safety] Radiant Finale low-HP guard",
			throttleTime = 100,
			timeout = 0.15,
			uuid = "0ead4752-7046-a532-8802-473a171f5d80",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "",
			name = "Castrum Meridianum",
			uuid = "989367f7-5d6c-4e66-bf3e-5246287ad431",
		},
		objectType = "folder",
	},
	
	{
		data = 
		{
			displayPath = "Castrum Meridianum",
			name = "AutoSim",
			uuid = "5004954b-ea68-40ea-ad17-fe8eb1fdb485",
		},
		objectType = "folder",
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
						actionLua = "-- Shared, persisted preferences only. Pull-specific solver state lives in data.\nif not CastrumMeridianumAutoSimConfig or CastrumMeridianumAutoSimConfig.fileApiVersion~=1 then\n    local C = CastrumMeridianumAutoSimConfig or {\n        enabled=true, movement=true, returnField=false, trash=true, poolFinal=true,\n        killOverride=true, kill557=121, kill2116=104, kill2118=174,\n        unexpectedPct=5, uncertainty=1, buffEnabled=false, buffPct=0,\n        buffFirst=5, buffDuration=20, buffPeriod=120,\n        status=\"Ready. Saved changes apply next combat.\",\n        path=GetStartupPath() .. [[\\LuaMods\\TensorReactions\\CastrumMeridianum.AutoSim.settings.tsv]]\n    }\n    C.keys={\"enabled\",\"movement\",\"returnField\",\"trash\",\"poolFinal\",\"killOverride\",\n        \"kill557\",\"kill2116\",\"kill2118\",\"unexpectedPct\",\"uncertainty\",\n        \"buffEnabled\",\"buffPct\",\"buffFirst\",\"buffDuration\",\"buffPeriod\"}\n    C.path=GetLuaModsPath()..[[TensorReactions\\Settings\\CastrumMeridianum.AutoSim.lua]]\n    if not CastrumMeridianumAutoSimConfig and FileExists(C.path) then\n     local saved=FileLoad(C.path)\n     if type(saved)==\"table\" then\n      for _,key in ipairs(C.keys) do\n       local v=saved[key]\n       if type(v)==type(C[key]) and (type(v)~=\"number\" or (v==v and v>-math.huge and v<math.huge)) then C[key]=v end\n      end\n     end\n    end\n    C.unexpectedPct=math.max(0,math.min(30,C.unexpectedPct))\n    C.uncertainty=math.max(0,math.min(10,C.uncertainty))\n    C.buffPct=math.max(0,math.min(50,C.buffPct))\n    C.buffDuration=math.max(1,math.min(60,C.buffDuration))\n    C.buffPeriod=math.max(C.buffDuration+1,math.min(600,C.buffPeriod))\n    C.buffFirst=math.max(0,math.min(600,C.buffFirst))\n    C.kill557=math.max(15,math.min(1200,C.kill557))\n    C.kill2116=math.max(15,math.min(1200,C.kill2116))\n    C.kill2118=math.max(15,math.min(1200,C.kill2118))\n    function C.save()\n     local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n     if not FolderExists(folder) then FolderCreate(folder) end\n     local values={}\n     for _,key in ipairs(C.keys) do values[key]=C[key] end\n     FileSave(C.path,values)\n     C.status=\"Saved. Changes apply next combat.\"\n    end\n    C.fileApiVersion=1\n    C.save()\n    CastrumMeridianumAutoSimConfig=C\nend\n\n-- Migrate an already initialized settings table without replacing user choices.\nif CastrumMeridianumAutoSimConfig.poolFinal==nil then\n CastrumMeridianumAutoSimConfig.poolFinal=true\n table.insert(CastrumMeridianumAutoSimConfig.keys,\"poolFinal\")\nend\n\n-- Runs after native map 1043, map and combat gates; no timeline timer is used.\nlocal p=TensorCore.mGetPlayer()\nif not p or p.localmapid~=1043 or not p.incombat then self.used=true;return end\nlocal isCaster=p.job==25 or p.job==27 or p.job==35 or p.job==42 or p.job==36 or p.job==24 or p.job==28 or p.job==33 or p.job==40\ngStartCombat = false\nlocal helpers = AnyoneCore and AnyoneCore.Settings\nif helpers and helpers.DutyHelper then helpers.DutyHelper.enabled = false end\nif helpers and helpers.PrepullHelper then helpers.PrepullHelper.enabled = false end\nlocal C=CastrumMeridianumAutoSimConfig\nlocal A=TensorCore.API.TensorACR\nlocal ok,t=pcall(A.getAutoSimTime)\nif not ok or type(t)~=\"number\" or t<0 then return end -- readiness wait, not completion\nif data.castrummeridianum_autosim then self.used=true;return end\nlocal S={enabled=C.enabled,movement=C.movement and isCaster,returnField=false,trash=C.trash,\n    killOverride=C.killOverride,kill557=C.kill557,kill2116=C.kill2116,kill2118=C.kill2118,\n    unexpectedPct=C.unexpectedPct,uncertainty=C.uncertainty,buffEnabled=C.buffEnabled,\n    buffPct=C.buffPct,buffFirst=C.buffFirst,buffDuration=C.buffDuration,buffPeriod=C.buffPeriod,\n    boss=0,origin=0,counts={},phases={},phaseCount=0,anchorsSeen=0,setup=true}\ndata.castrummeridianum_autosim=S\n-- Filled by the evidence builder; tables are allocated once per combat.\nS.definitions={[557]={[\"name\"]=\"The Black Eft\",[\"anchors\"]={[28773]={5.312,68.453,105.922},[28774]={14.547,40.281,77.89},[29268]={22.781,118.265},[28775]={29.89}},[\"movement\"]={{8,10},{32,34},{71,73},{109,111}}},[2116]={[\"name\"]=\"Magitek Vanguard F-1\",[\"anchors\"]={[28778]={10.515,49.39,102.469},[28780]={26.859,77.015},[28785]={36.922,90.109},[29146]={61.515},[28783]={68.39}},[\"movement\"]={{14,17},{29,32},{53,56},{64,66},{73,76},{79,82}}},[2118]={[\"name\"]=\"Livia sas Junius\",[\"anchors\"]={[28033]={5.156},[28786]={18.469,138.844},[28798]={31.985,78.391},[28791]={45.344},[29357]={91.828,122.938},[28789]={98.016},[28795]={129.063},[29354]={146.5},[29352]={152.672,169.953}},[\"movement\"]={{22,27},{36,39},{65,68},{82,85},{96,101},{127,130},{133,136},{142,146}}}}\n\nfunction S.add(kind,a,b,value,relative)\n    if b<=a or a>=1200 then return end\n    b=math.min(b,1200)\n    local id=A.addAutoSimPhase(kind,a,b,value)\n    if id then\n        S.phaseCount=S.phaseCount+1\n        S.phases[S.phaseCount]={id=id,kind=kind,a=a,b=b,value=value,relative=relative}\n    end\nend\n\nfunction S.startBoss(cid,entityID,origin,now)\n    local def=S.definitions[cid]\n    if not def or S.boss~=0 or not S.enabled then return end\n    gStartCombat=false\n    S.boss=cid;S.entityID=entityID;S.origin=origin\n    A.setAutoSimUnexpectedMovementPct(S.unexpectedPct/100)\n    if S.killOverride then\n        A.setAutoSimKillTime(math.min(1200,origin+S[\"kill\"..cid]))\n        A.addAutoSimUncertainty(now,10) -- one normal-party sample: do not claim exact kill timing\n    end\n    -- Keep automatic kill uncertainty by default. Do not invent forced target downtime.\n    -- Only owned movement/field phases are authored; AoE counts and DoT targets stay live.\n    if S.movement then\n        for i=1,#def.movement do\n            local w=def.movement[i]\n            local a,b=origin+w[1],origin+w[2]\n            if b>now then\n                a=math.max(a,now)\n                S.add(\"CasterDowntime\",a,b,1,true)\n                if S.returnField then S.add(\"GroundFieldMovement\",b,b+0.2,2,true) end\n            end\n        end\n    end\n    if cid==2118 then S.add(\"FullDowntime\",origin+50.360,origin+63.235,1,false) end\n    if S.buffEnabled and S.buffPct>0 then\n        local a=origin+S.buffFirst\n        while a<1200 do\n            if a+S.buffDuration>now then S.add(\"RaidBuff\",math.max(a,now),a+S.buffDuration,1+S.buffPct/100,false) end\n            a=a+S.buffPeriod\n        end\n    end\n    C.status=\"Active: \"..def.name..\". Kill estimate: \"..(S.killOverride and \"manual\" or \"automatic\")\nend\n\nfunction S.channel(args)\n    if not S.enabled then return end\n    local cid=args.entityContentID\n    local def=S.definitions[cid]\n    if not def then return end\n    local aid=args.spellID\n    if aid==34780 then aid=34779 end\n    local anchors=def.anchors[aid]\n    if not anchors then return end -- stable boss cast identity before API work\n    if S.boss~=0 and (S.boss~=cid or S.entityID~=args.entityID) then return end\n    local valid,now=pcall(A.getAutoSimTime)\n    if not valid or type(now)~=\"number\" or now<0 or now>=1200 then return end\n    local n=(S.counts[aid] or 0)+1\n    local expected=anchors[n]\n    if not expected then return end\n    if S.boss==0 and math.abs(now-expected)>2 then return end\n    S.counts[aid]=n\n    if S.boss==0 then S.startBoss(cid,args.entityID,now-expected,now) end\n    if S.boss~=cid then return end\n    local candidate=now-expected\n    -- If enabled mid-boss, do not match a late repeat to the first occurrence.\n    if math.abs(candidate-S.origin)>2 then return end\n    local shift=candidate-S.origin\n    S.anchorsSeen=S.anchorsSeen+1\n    if math.abs(shift)<0.15 then return end\n    -- Remove every future owned phase before reinsertion, avoiding transient overlaps.\n    local movementEnd=now\n    local fieldEnd=now\n    for i=1,S.phaseCount do\n        local phase=S.phases[i]\n        if phase.relative and phase.id and phase.a>now+0.05 then\n            A.removeAutoSimPhase(phase.id);phase.id=nil;phase.pending=true\n        elseif phase.id and phase.a<=now+0.05 and phase.b>now then\n            if phase.kind==\"CasterDowntime\" then movementEnd=phase.b end\n            if phase.kind==\"GroundFieldMovement\" then fieldEnd=phase.b end\n        end\n    end\n    for i=1,S.phaseCount do\n        local phase=S.phases[i]\n        if phase.pending then\n            phase.pending=false\n            local a,b=phase.a+shift,phase.b+shift\n            local minimum=phase.kind==\"CasterDowntime\" and movementEnd or math.max(fieldEnd,movementEnd)\n            a=math.max(a,minimum,now+0.05)\n            if b>a then\n                phase.id=A.addAutoSimPhase(phase.kind,a,b,phase.value)\n                phase.a=a;phase.b=b\n                if phase.kind==\"CasterDowntime\" then movementEnd=b else fieldEnd=b end\n            end\n        end\n    end\n    S.origin=candidate\nend\n\nif S.enabled then\n    local target=TensorCore.mGetTarget()\n    if target and S.definitions[target.contentid] and target.attackable and target.incombat then\n        -- Near pull start, zero is the combat-clock origin; later setup waits for an anchor.\n        if t<=5 then S.startBoss(target.contentid,target.id,0,t) end\n    end\n    if S.boss==0 and S.trash then A.setAutoSimUnexpectedMovementPct(S.unexpectedPct/100) end\nend\nself.used=true\n",
						conditions = 
						{
							
							{
								"18f05cd1-d88d-2481-a8d2-01a87edfff0e",
								true,
							},
							
							{
								"e1156181-ecb8-1bd8-9cab-d09ca83d4ce9",
								true,
							},
						},
						name = "Set up this combat",
						uuid = "1794b0dd-e048-eca0-a0dd-f1467f618e3a",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 1043,
						name = "Castrum Meridianum/AutoSim",
						uuid = "18f05cd1-d88d-2481-a8d2-01a87edfff0e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn p ~= nil and p.incombat and data.castrummeridianum_autosim == nil",
						dequeueIfLuaFalse = true,
						name = "Relevant state",
						uuid = "e1156181-ecb8-1bd8-9cab-d09ca83d4ce9",
						version = 3,
					},
				},
			},
			displayPath = "Castrum Meridianum/AutoSim",
			name = "[Castrum] Set up this combat",
			throttleTime = 500,
			timeout = 3,
			uuid = "1a453fc0-24e8-0265-8b1f-9735a1ee0660",
			version = 2,
		},
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
						actionLua = "-- Shared pull-gathering helper; settings are independent of Minion core Settings.\nif not DungeonPullGather or DungeonPullGather.version~=2026111607 then\n local D={version=2026111607}\n local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n D.path=folder..[[DungeonAutoSim.Gather.lua]]\n local c=FileExists(D.path)and FileLoad(D.path)or{}\n if type(c)~='table'then c={}end\n if type(c.enabled)~='boolean'then c.enabled=true end\n if type(c.diagnostics)~='boolean'then c.diagnostics=true end\n if type(c.settle)~='number'or c.settle<.5 or c.settle>5 then c.settle=3 end\n if type(c.timeout)~='number'or c.timeout<5 or c.timeout>40 then c.timeout=20 end\n if type(c.brdDotHP)~='number'or c.brdDotHP<0 or c.brdDotHP>30 then c.brdDotHP=20 end\n if type(c.apexCap)~='number'or c.apexCap<80 or c.apexCap>100 then c.apexCap=95 end\n if type(c.overrides)~='table'then c.overrides={}end\n if type(c.disabledOverrides)~='table'then c.disabledOverrides={}end\n for map,v in pairs(c.overrides)do\n  if type(map)~='number'or type(v)~='table'or type(v.settle)~='number'or v.settle<.5 or v.settle>5 or type(v.timeout)~='number'or v.timeout<5 or v.timeout>40 then c.overrides[map]=nil end\n end\n if c.migratedSettle3~=true then\n  if math.abs(c.settle-2.3)<.001 then c.settle=3 end\n  for _,v in pairs(c.overrides)do if math.abs(v.settle-2.3)<.001 then v.settle=3 end end\n  c.defaultSettle=3;c.migratedSettle3=true\n end\n D.config=c\n function D.save()\n  if not FolderExists(folder)then FolderCreate(folder)end\n  FileSave(D.path,{enabled=c.enabled,settle=c.settle,timeout=c.timeout,apexCap=c.apexCap,diagnostics=c.diagnostics,defaultSettle=c.defaultSettle,migratedSettle3=c.migratedSettle3,brdDotHP=c.brdDotHP,overrides=c.overrides,disabledOverrides=c.disabledOverrides})\n end\n function D.timing(map)\n  if not c.overrides[map]and not c.disabledOverrides[map]then\n   c.overrides[map]={settle=c.settle,timeout=c.timeout};D.save()\n  end\n  return c.overrides[map]or c\n end\n function D.restoreDots()\n  local r=D.dotToggle\n  if r and _G[r.var]==false then _G[r.var]=r.previous end\n  D.dotToggle=nil;D.dotActive=nil;D.dotStatus=nil\n end\n function D.reset()D.restoreDots();D.pull=nil;D.active=false;D.reason=nil;D.detail=nil;D.bardStatus=nil;D.dotActive=nil;D.dotStatus=nil end\n function D.trace(text)\n  if D.traceText~=text then D.traceText=text;TensorCore.timelineLogToFile('[Dungeon W2W] '..text..'\\n')end\n end\n function D.update(p,valid,isBoss,bosses)\n  if not c.enabled or not valid or isBoss or not p or not p.alive or not p.incombat then\n   if D.pull then D.trace('released: disabled, boss, death or combat ended')end\n   D.reset();return false\n  end\n  local timing=D.timing(p.localmapid)\n  local now=Now();local tank\n  for _,e in pairs(TensorCore.getEntityGroupList('Tank',nil,true)or{})do\n   if e.alive and e.pos and (e.pos.x-p.pos.x)^2+(e.pos.z-p.pos.z)^2<=60^2 then\n    if not tank or e.id<tank.id then tank=e end\n   end\n  end\n  if not tank then D.reset();D.detail='No nearby engaged party tank';return false end\n  local g=D.pull\n  if not g or g.map~=p.localmapid or g.tank~=tank.id then\n   g={map=p.localmapid,tank=tank.id,start=now,seen={},arrived=now,anchor={x=tank.pos.x,z=tank.pos.z},stationary=now};D.pull=g\n  end\n  if g.released then D.active=false;return false end\n  local count,far,new=0,0,0\n  TensorCore.forEachEntity('alive,targetable,attackable',function(id)\n   local e=TensorCore.mGetEntity(id)\n   if e and e.incombat and e.pos and not bosses[e.contentid] and math.abs(e.pos.y-tank.pos.y)<=10 then\n    local distance=(e.pos.x-tank.pos.x)^2+(e.pos.z-tank.pos.z)^2\n    if distance<=60^2 then\n     count=count+1\n     if not g.seen[id]then g.seen[id]=true;g.arrived=now;new=new+1 end\n     if distance>(12+(e.hitradius or 0))^2 then far=far+1 end\n    end\n   end\n   return true\n  end)\n  if (tank.pos.x-g.anchor.x)^2+(tank.pos.z-g.anchor.z)^2>1^2 then\n   g.anchor={x=tank.pos.x,z=tank.pos.z};g.stationary=now\n  end\n  if count==0 then\n   g.readyAt=nil\n   if now-g.start>=timing.timeout*1000 then g.released=true;D.active=false;D.reason=nil;D.trace('released: gather timeout, no engaged trash');return false end\n  else\n   if far>0 then g.readyAt=nil elseif not g.readyAt then g.readyAt=now end\n  end\n  if count>0 and far==0 and g.readyAt and now-g.readyAt>=timing.settle*1000 and now-g.stationary>=timing.settle*1000 and now-g.arrived>=timing.settle*1000 and now-g.start>=3000 then\n   g.released=true;D.active=false;D.reason=nil;D.trace('released: tank stopped, roster stable and '..count..' enemies gathered');return false\n  end\n  if now-g.start>=timing.timeout*1000 then\n   g.released=true;D.active=false;D.reason=nil;D.trace('released: '..timing.timeout..'s maximum gather wait; far='..far..' engaged='..count);return false\n  end\n  D.active=true;D.reason='Gathering pull'\n  D.detail=string.format('Gathering pull: %d engaged, %d trailing; %.1f / %.0fs',count,far,(now-g.start)/1000,timing.timeout)\n  local stage=far>0 and 'trailing enemies'or now-g.stationary<timing.settle*1000 and 'tank moving'or'waiting for stable pull'\n  D.trace('holding: '..stage..'; tank='..tank.id..'; engaged='..count..'; far='..far)\n  return true\n end\n function D.lease(id,untilMs)\n  if id==16496 or id==25784 or id==100 or id==113 or id==7406 or id==7407 or id==3560 then return false end\n  local accepted=TensorCore.API.TensorACR.holdActionUntil(id,untilMs,1)\n  D.leases=D.leases or{}\n  if accepted then D.leases[id]=untilMs end\n  return accepted\n end\n function D.dotHold(p,valid,target,bosses,encounter,level)\n  local active=valid and p.job==23 and c.brdDotHP>0 and not encounter\n   and target and target.alive and target.targetable and target.attackable and target.incombat\n   and not bosses[target.contentid]and target.hp and target.hp.max>0\n   and target.hp.percent>0 and target.hp.percent<c.brdDotHP\n  if not active then D.restoreDots();D.dotTraceKey=nil;return end\n  -- BRD's global DoTs QT tells the rotation not to plan these GCDs.\n  local variable='ACR_TensorRequiem4_DoTs'\n  if type(_G[variable])~='boolean'then return end\n  if not D.dotToggle then D.dotToggle={var=variable,previous=_G[variable]}end\n  _G[variable]=false;D.dotActive=true\n  D.dotStatus='BRD DoTs off below '..c.brdDotHP..'% trash HP'\n  local key=tostring(target.id)..':'..c.brdDotHP\n  if D.dotTraceKey~=key then\n   D.dotTraceKey=key\n   TensorCore.timelineLogToFile('[Dungeon BRD DoTs] QT off: target='..target.id..' CID='..target.contentid..' HP='..target.hp.percent..' threshold='..c.brdDotHP..'; no GCD action holds\\n')\n  end\n end\n function D.observeBoss(p,encounter,blocked,held)\n  if p.job~=23 or not encounter then D.bossLogAt=nil;D.bossLogKey=nil;return end\n  if not c.diagnostics then return end\n  local now=Now();local target=TensorCore.mGetTarget()\n  local owned=0;for var in pairs(held or{})do if var:match('_CD$')then owned=owned+1 end end\n  local key=tostring(target and target.id)..':'..tostring(blocked)..':'..tostring(ACR_TensorRequiem4_CD)..':'..owned\n  if D.bossLogAt and now-D.bossLogAt<5000 and D.bossLogKey==key then return end\n  D.bossLogAt=now;D.bossLogKey=key\n  local function state(id)\n   local a=ActionList:Get(1,id)\n   if not a then return 'missing action'end\n   local ok,ready=pcall(function()return a:IsReady(p.id)end)\n   return string.format('cd=%.2f onCD=%s ready=%s ownedLeaseRemainingMs=%.0f',math.max(0,a.cdmax-a.cd),tostring(a.isoncd),ok and tostring(ready)or('read error '..tostring(ready)),math.max(0,(D.leases and D.leases[id]or 0)-now))\n  end\n  local bv=TensorCore.getBuff(p,141);local rf=TensorCore.getBuff(p,2964)\n  TensorCore.timelineLogToFile('[Dungeon BRD boss] target='..tostring(target and target.contentid)..' HP='..tostring(target and target.hp and target.hp.percent)..' CDQT='..tostring(ACR_TensorRequiem4_CD)..' ownedCDvars='..owned..' finalOrLowHP='..tostring(blocked)..' gathering='..tostring(D.active)..' BattleVoice{'..state(118)..'} RadiantFinale{'..state(25785)..'} BVbuff='..tostring(bv and bv.duration)..' RFbuff='..tostring(rf and rf.duration)..' BVhotbar='..tostring(ACR_TensorRequiem4_Hotbar_BattleVoice)..'\\n')\n end\n function D.bard(p,gathering,priorityHold)\n  if p.job~=23 or not gathering then return end\n  local untilMs=Now()+450\n  -- BRD gathering owns short burst-action holds, not its broad CD toggle.\n  -- Both party buffs are held and released together; songs/normal damage remain automatic.\n  for _,row in ipairs({{101,4},{107,38},{118,50},{25785,90}})do\n   if p.level>=row[2]then D.lease(row[1],untilMs)end\n  end\n  D.bardStatus='BRD offensive buffs held for gathered targets; Apex uses its toggle'\n end\n function D.gatherApex(p,gathering)\n  return p.job==23 and gathering and not(p.gauge and type(p.gauge[4])=='number'and p.gauge[4]>=c.apexCap)\n end\n function D.gui()\n  local value,changed=GUI:Checkbox('Wait for full pull (W2W)',c.enabled)\n  if changed then c.enabled=value;D.save()end\n  if GUI:IsItemHovered()then GUI:SetTooltip('Hold major offensive cooldowns until the party tank stops and engaged enemies gather. Last-pack and low-HP holds keep priority. Normal damage continues.')end\n  local diag,edit=GUI:Checkbox('BRD boss-buff diagnostics',c.diagnostics)\n  if edit then c.diagnostics=diag;D.save()end\n  value=GUI:SliderInt('Hold BRD DoTs below trash HP (%)',c.brdDotHP,0,30)\n  if value~=c.brdDotHP then c.brdDotHP=value;D.save()end\n  if GUI:IsItemHovered()then GUI:SetTooltip('Temporarily switches the global BRD DoTs toggle off on selected low-HP trash, then restores its previous value. Bosses are excluded; zero disables.')end\n  if D.dotStatus then GUI:TextWrapped(D.dotStatus)end\n  if c.enabled then\n   local p=TensorCore.mGetPlayer();local map=p and p.localmapid\n   if map then D.timing(map)end\n   local custom=map and c.overrides[map]~=nil or false\n   value,changed=GUI:Checkbox('Use timings for this dungeon',custom)\n   if changed and map then\n    c.disabledOverrides[map]=not value or nil\n    c.overrides[map]=value and {settle=c.settle,timeout=c.timeout}or nil;D.save()\n   end\n   local timing=map and c.overrides[map]or c\n   value=GUI:SliderFloat('Full-pull settle time (seconds)',timing.settle,.5,5,'%.1f')\n   if value~=timing.settle then timing.settle=value;D.save()end\n   value=GUI:SliderFloat('Maximum gather wait (seconds)',timing.timeout,5,40,'%.0f')\n   if value~=timing.timeout then timing.timeout=value;D.save()end\n   value=GUI:SliderInt('Release gathering Apex at Soul Voice',c.apexCap,80,100)\n   if value~=c.apexCap then c.apexCap=value;D.save()end\n   if D.active and D.detail then GUI:TextWrapped(D.detail)end\n   if D.active and D.bardStatus then GUI:TextWrapped(D.bardStatus)end\n  end\n end\n D.save();DungeonPullGather=D\nend\n-- Shared, persisted preferences only. Pull-specific solver state lives in data.\nif not CastrumMeridianumAutoSimConfig or CastrumMeridianumAutoSimConfig.fileApiVersion~=1 then\n    local C = CastrumMeridianumAutoSimConfig or {\n        enabled=true, movement=true, returnField=false, trash=true, poolFinal=true,\n        killOverride=true, kill557=121, kill2116=104, kill2118=174,\n        unexpectedPct=5, uncertainty=1, buffEnabled=false, buffPct=0,\n        buffFirst=5, buffDuration=20, buffPeriod=120,\n        status=\"Ready. Saved changes apply next combat.\",\n        path=GetStartupPath() .. [[\\LuaMods\\TensorReactions\\CastrumMeridianum.AutoSim.settings.tsv]]\n    }\n    C.keys={\"enabled\",\"movement\",\"returnField\",\"trash\",\"poolFinal\",\"killOverride\",\n        \"kill557\",\"kill2116\",\"kill2118\",\"unexpectedPct\",\"uncertainty\",\n        \"buffEnabled\",\"buffPct\",\"buffFirst\",\"buffDuration\",\"buffPeriod\"}\n    C.path=GetLuaModsPath()..[[TensorReactions\\Settings\\CastrumMeridianum.AutoSim.lua]]\n    if not CastrumMeridianumAutoSimConfig and FileExists(C.path) then\n     local saved=FileLoad(C.path)\n     if type(saved)==\"table\" then\n      for _,key in ipairs(C.keys) do\n       local v=saved[key]\n       if type(v)==type(C[key]) and (type(v)~=\"number\" or (v==v and v>-math.huge and v<math.huge)) then C[key]=v end\n      end\n     end\n    end\n    C.unexpectedPct=math.max(0,math.min(30,C.unexpectedPct))\n    C.uncertainty=math.max(0,math.min(10,C.uncertainty))\n    C.buffPct=math.max(0,math.min(50,C.buffPct))\n    C.buffDuration=math.max(1,math.min(60,C.buffDuration))\n    C.buffPeriod=math.max(C.buffDuration+1,math.min(600,C.buffPeriod))\n    C.buffFirst=math.max(0,math.min(600,C.buffFirst))\n    C.kill557=math.max(15,math.min(1200,C.kill557))\n    C.kill2116=math.max(15,math.min(1200,C.kill2116))\n    C.kill2118=math.max(15,math.min(1200,C.kill2118))\n    function C.save()\n     local folder=GetLuaModsPath()..[[TensorReactions\\Settings\\]]\n     if not FolderExists(folder) then FolderCreate(folder) end\n     local values={}\n     for _,key in ipairs(C.keys) do values[key]=C[key] end\n     FileSave(C.path,values)\n     C.status=\"Saved. Changes apply next combat.\"\n    end\n    C.fileApiVersion=1\n    C.save()\n    CastrumMeridianumAutoSimConfig=C\nend\n\n-- Migrate an already initialized settings table without replacing user choices.\nif CastrumMeridianumAutoSimConfig.poolFinal==nil then\n CastrumMeridianumAutoSimConfig.poolFinal=true\n table.insert(CastrumMeridianumAutoSimConfig.keys,\"poolFinal\")\nend\n\n-- GUI submission belongs only in OnDraw. Native Map ID gates precede it.\nlocal C=CastrumMeridianumAutoSimConfig\nlocal visible=GUI:Begin(\"Castrum Meridianum - AutoSim\")\nif visible then\n    GUI:TextWrapped(\"Four-player dungeon. Changes are saved and apply next combat.\")\n    local v,changed=GUI:Checkbox(\"Enable boss forecasts\",C.enabled)\n    if changed then C.enabled=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Enable the three boss forecasts. Cooldowns and potions remain controlled by your ACR.\") end\n    v,changed=GUI:Checkbox(\"Movement forecasts\",C.movement)\n    if changed then C.movement=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Short repositioning estimates from your logged positions, anchored to boss casts. These are predictions, not automatic movement.\") end\n    v,changed=GUI:Checkbox(\"Ley Lines prediction (unavailable at level 50)\",C.returnField)\n    if changed then C.returnField=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Predict re-entry shortly after each estimated move. Assumes you return when safe; this does not move the character.\") end\n    v,changed=GUI:Checkbox(\"Apply movement reserve to trash\",C.trash)\n    if changed then C.trash=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Use the extra movement allowance on wall-to-wall pulls. Trash lifetime, target count and cooldown use remain automatic.\") end\n    v,changed=GUI:InputFloat(\"Extra movement (%)\",C.unexpectedPct,1,5,\"%.1f\")\n    if changed then C.unexpectedPct=math.max(0,math.min(30,v));C.save() end\n    if GUI:CollapsingHeader(\"Boss kill estimates\") then\n        GUI:TextWrapped(\"Enabled by default: one logged run. Adjust these estimates for your group.\")\n        v,changed=GUI:Checkbox(\"Override automatic kill estimates\",C.killOverride)\n        if changed then C.killOverride=v;C.save() end\n        v,changed=GUI:InputFloat(\"The Black Eft (seconds)\",C.kill557,5,15,\"%.1f\")\n        if changed then C.kill557=math.max(15,math.min(1200,v));C.save() end\n        v,changed=GUI:InputFloat(\"Magitek Vanguard F-1 (seconds)\",C.kill2116,5,15,\"%.1f\")\n        if changed then C.kill2116=math.max(15,math.min(1200,v));C.save() end\n        v,changed=GUI:InputFloat(\"Livia sas Junius (seconds)\",C.kill2118,5,15,\"%.1f\")\n        if changed then C.kill2118=math.max(15,math.min(1200,v));C.save() end\n    end\n    v,changed=GUI:Checkbox(\"Hold offensive cooldowns on final trash (all jobs)\",C.poolFinal)\n    if changed then C.poolFinal=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Recognizes the last pack before Black Eft and Vanguard only; Livia has RP and temporarily turns off the current job’s CD switch. Radiant Finale is explicitly held too. Your previous CD setting is restored when pooling ends; songs keep their own control.\") end\n    local shared=DungeonAutoSimShared\n    if shared then\n        v,changed=GUI:SliderInt(\"Hold new boss cooldowns below HP (%) - shared\",shared.lateHP,0,20)\n        if changed then shared.lateHP=v;shared.save() end\n        if GUI:IsItemHovered() then GUI:SetTooltip(\"Shared across these nine dungeons and all jobs. At this boss HP, stop starting offensive cooldowns; normal attacks continue. 0 disables this rule. Default 8%. Defensive controls and songs keep their own settings.\") end\n    end\n    v,changed=GUI:Checkbox(\"Forecast future party buffs\",C.buffEnabled)\n    if changed then C.buffEnabled=v;C.save() end\n    v,changed=GUI:SliderFloat(\"Combined damage bonus (%)\",C.buffPct,0,50,\"%.1f%%\",1)\n    if changed then C.buffPct=v;C.save() end\n    if GUI:IsItemHovered() then GUI:SetTooltip(\"Optional planning estimate. Zero adds no future buff windows. AST/DNC timing varies; sustained Standard Finish and Devilment should not be treated as a universal periodic damage bonus.\") end\n    if GUI:CollapsingHeader(\"Party buff timing\") then\n        v,changed=GUI:InputFloat(\"First buff (seconds)\",C.buffFirst,1,5,\"%.1f\")\n        if changed then C.buffFirst=math.max(0,math.min(600,v));C.save() end\n        v,changed=GUI:InputFloat(\"Buff duration (seconds)\",C.buffDuration,1,5,\"%.1f\")\n        if changed then C.buffDuration=math.max(1,math.min(C.buffPeriod-1,60,v));C.save() end\n        v,changed=GUI:InputFloat(\"Buff interval (seconds)\",C.buffPeriod,5,30,\"%.1f\")\n        if changed then C.buffPeriod=math.max(C.buffDuration+1,math.min(600,v));C.save() end\n    end\n    GUI:Separator()\n    GUI:TextWrapped(C.status)\n    if C.poolStatus then GUI:TextWrapped(C.poolStatus) end\n DungeonPullGather.gui()\nend\nGUI:End()\nself.used=true\n",
						conditions = 
						{
							
							{
								"52bfb9c5-7c29-109d-9e33-0d9776c02072",
								true,
							},
						},
						name = "Settings",
						uuid = "187bddad-d5d0-5040-9091-ad1a44fafefe",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 1043,
						name = "Castrum Meridianum/AutoSim",
						uuid = "52bfb9c5-7c29-109d-9e33-0d9776c02072",
						version = 3,
					},
				},
			},
			displayPath = "Castrum Meridianum/AutoSim",
			eventType = 13,
			name = "[Castrum] Settings",
			timeout = 3,
			uuid = "1d882711-d1aa-d81f-9e85-0cd1a9449ee5",
			version = 2,
		},
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
						actionLua = "data.castrummeridianum_autosim=nil\ndata.castrummeridianum_final_trash=nil\ndata.castrumDrawQueue=nil\nself.used=true",
						conditions = 
						{
							
							{
								"3560bcb4-b15a-78b5-b3ed-322a32c0d4d4",
								true,
							},
							
							{
								"a8b80137-5fab-a1db-9602-f9d117c0b3fc",
								true,
							},
						},
						name = "Reset between combats",
						uuid = "58612ee1-7fa9-132d-97fa-e3c5c5e0e380",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 1043,
						name = "Castrum Meridianum/AutoSim",
						uuid = "3560bcb4-b15a-78b5-b3ed-322a32c0d4d4",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nreturn p ~= nil and not p.incombat and data.castrummeridianum_autosim ~= nil",
						dequeueIfLuaFalse = true,
						name = "Relevant state",
						uuid = "a8b80137-5fab-a1db-9602-f9d117c0b3fc",
						version = 3,
					},
				},
			},
			displayPath = "Castrum Meridianum/AutoSim",
			name = "[Castrum] Reset between combats",
			throttleTime = 500,
			timeout = 3,
			uuid = "04df3528-4b7a-6650-b193-4ba0a50508c7",
			version = 2,
		},
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
						actionLua = "data.castrummeridianum_autosim.channel(eventArgs)\nself.used=true",
						conditions = 
						{
							
							{
								"d6b6842d-da5d-afe8-b2db-dc9f4c9d6d52",
								true,
							},
							
							{
								"5623feb9-ac75-58b8-bf02-d6e0ead2098e",
								true,
							},
						},
						name = "Boss cast anchors",
						uuid = "414f597e-20ec-716e-81a0-5cf82e3e1e63",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 1043,
						name = "Castrum Meridianum/AutoSim",
						uuid = "d6b6842d-da5d-afe8-b2db-dc9f4c9d6d52",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.castrummeridianum_autosim\nif not s or not s.enabled then return false end\nlocal e=eventArgs\nreturn (e.entityContentID==557 and (e.spellID==28773 or e.spellID==28774 or e.spellID==29268 or e.spellID==28775)) or (e.entityContentID==2116 and (e.spellID==28778 or e.spellID==28780 or e.spellID==28785 or e.spellID==29146 or e.spellID==28783)) or (e.entityContentID==2118 and (e.spellID==28033 or e.spellID==28786 or e.spellID==28798 or e.spellID==28791 or e.spellID==29357 or e.spellID==28789 or e.spellID==28795 or e.spellID==29354 or e.spellID==29352))",
						dequeueIfLuaFalse = true,
						name = "Relevant state",
						uuid = "5623feb9-ac75-58b8-bf02-d6e0ead2098e",
						version = 3,
					},
				},
			},
			displayPath = "Castrum Meridianum/AutoSim",
			eventType = 3,
			name = "[Castrum] Boss cast anchors",
			timeout = 3,
			uuid = "5d110491-7164-4870-8e57-63a7cb0c23f5",
			version = 2,
		},
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
						actionLua = "data.castrummeridianum_final_trash=true\nself.used=true",
						conditions = 
						{
							
							{
								"c95e351a-d344-86aa-8c9d-de6f19bcea2e",
								true,
							},
							
							{
								"eac20245-d057-0ae5-913f-4959c33992ff",
								true,
							},
						},
						name = "Recognize final trash before bosses",
						uuid = "0fbe39da-d091-14cd-9112-82fc857003ca",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 1043,
						name = "Castrum Meridianum/AutoSim",
						uuid = "c95e351a-d344-86aa-8c9d-de6f19bcea2e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local p=TensorCore.mGetPlayer()\nlocal c=CastrumMeridianumAutoSimConfig\nlocal s=data.castrummeridianum_autosim\nif not p or not p.incombat or not c or not c.enabled or not c.poolFinal or not s or s.boss~=0 or data.castrummeridianum_final_trash then return false end\nlocal t=TensorCore.mGetTarget()\nif not t or not t.incombat then return false end\nlocal x,z=p.pos.x,p.pos.z\nreturn ((t.contentid==2107 or t.contentid==2110) and (x-65)^2+(z+53)^2<625) or ((t.contentid==269 or t.contentid==2121) and (x+5)^2+(z-60)^2<625)",
						dequeueIfLuaFalse = true,
						name = "Relevant state",
						uuid = "eac20245-d057-0ae5-913f-4959c33992ff",
						version = 3,
					},
				},
			},
			displayPath = "Castrum Meridianum/AutoSim",
			name = "[Castrum] Recognize final trash before bosses",
			throttleTime = 500,
			timeout = 3,
			uuid = "a9d5144e-8d82-7092-81ff-924ee4b33c77",
			version = 2,
		},
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
						actionLua = "local s=data.castrummeridianum_autosim\nlocal now=TensorCore.API.TensorACR.getAutoSimTime()\nlocal elapsed=now-s.origin\nif elapsed>30 and elapsed<90 then\n for _,p in ipairs(s.phases) do\n  if p.kind==\"FullDowntime\" and p.id then\n   if not eventArgs.isTargetable and not s.liviaGone then\n    s.liviaGone=now\n    TensorCore.API.TensorACR.setAutoSimPhase(p.id,now,now+12.875,1)\n   elseif eventArgs.isTargetable and s.liviaGone and not s.liviaReturned then\n    TensorCore.API.TensorACR.setAutoSimPhase(p.id,s.liviaGone,now,1)\n    s.liviaReturned=true\n   end\n  end\n end\nend\nself.used=true",
						conditions = 
						{
							
							{
								"75d0660d-217d-217c-b927-aaefc281b77f",
								true,
							},
							
							{
								"d21cd23c-bdb2-b9e0-9a89-f177c78e2db0",
								true,
							},
						},
						name = "[Castrum] Livia disappearance resync",
						uuid = "ae60db80-cac4-f698-aded-06ae226e4852",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 1043,
						name = "Castrum Meridianum/AutoSim",
						uuid = "75d0660d-217d-217c-b927-aaefc281b77f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local s=data.castrummeridianum_autosim\nreturn s ~= nil and s.enabled and s.boss==2118 and not s.liviaReturned and eventArgs.entityID==s.entityID",
						dequeueIfLuaFalse = true,
						name = "Relevant state",
						uuid = "d21cd23c-bdb2-b9e0-9a89-f177c78e2db0",
						version = 3,
					},
				},
			},
			displayPath = "Castrum Meridianum/AutoSim",
			eventType = 26,
			name = "[Castrum] Livia disappearance resync",
			timeout = 3,
			uuid = "1c4bba39-1e89-9cb0-9e30-d2b6aa5b8049",
			version = 2,
		},
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
						actionLua = "gStartCombat=false\nlocal helpers=AnyoneCore and AnyoneCore.Settings\nif helpers and helpers.DutyHelper then helpers.DutyHelper.enabled=false end\nif helpers and helpers.PrepullHelper then helpers.PrepullHelper.enabled=false end\nlocal found\nTensorCore.forEachEntity(\"alive,targetable,attackable\",function(id)\n local e=TensorCore.mGetEntity(id)\n local p=TensorCore.mGetPlayer()\n if e and p and (e.pos.x-p.pos.x)^2+(e.pos.z-p.pos.z)^2<=900 and (e.contentid==557 or e.contentid==2116 or e.contentid==2118) then found=id;return false end\nend)\nif found then\n local prior=TensorCore.mGetTarget()\n TensorCore.timelineLogToFile(\"[Castrum target] request=\"..found..\" current=\"..tostring(prior and prior.id)..\" StartCombat=false; no valid target; cast protected\")\n Player:SetTarget(found);data.castrumTargetRequest={id=found,at=Now()}\nend\nself.used=true",
						conditions = 
						{
							
							{
								"aefb87af-ed2f-d430-9433-087ce7aaaaa6",
								true,
							},
							
							{
								"1195d0ed-ecd4-cace-80f5-6a2779451ee8",
								true,
							},
						},
						name = "[Castrum] Select nearby boss without pulling",
						uuid = "4ba98e1c-b4cd-f99f-b021-d1b4ca5382c5",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 1043,
						name = "Castrum Meridianum/AutoSim",
						uuid = "aefb87af-ed2f-d430-9433-087ce7aaaaa6",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local t=TensorCore.mGetTarget()\nreturn data.castrumTargetRequest==nil and not data.castrumTargetDone and not ActionList:IsCasting() and (t==nil or not t.alive or not t.attackable)",
						dequeueIfLuaFalse = true,
						name = "Relevant state",
						uuid = "1195d0ed-ecd4-cace-80f5-6a2779451ee8",
						version = 3,
					},
				},
			},
			displayPath = "Castrum Meridianum/AutoSim",
			name = "[Castrum] Select nearby boss without pulling",
			throttleTime = 500,
			timeout = 3,
			uuid = "b16009f1-07dd-4c2f-9fe5-a384fe831ebf",
			version = 2,
		},
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
						actionLua = "local r=data.castrumTargetRequest\nlocal t=TensorCore.mGetTarget()\nif t and t.id==r.id then\n TensorCore.timelineLogToFile(\"[Castrum target] confirmed=\"..r.id)\n data.castrumTargetRequest=nil;data.castrumTargetDone=true\nelseif Now()-r.at>1500 then\n TensorCore.timelineLogToFile(\"[Castrum target] unconfirmed=\"..r.id..\"; no repeated request\")\n data.castrumTargetRequest=nil;data.castrumTargetDone=true\nend\nself.used=true",
						conditions = 
						{
							
							{
								"908b3922-73aa-5488-8ca8-45c48807d2b9",
								true,
							},
							
							{
								"e90f8ed4-de8d-b2f5-8937-d1be9a2396a3",
								true,
							},
						},
						name = "[Castrum] Confirm initial target",
						uuid = "b7ab577b-14fb-742a-8d4e-c74cfa3e980c",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 1043,
						name = "Castrum Meridianum/AutoSim",
						uuid = "908b3922-73aa-5488-8ca8-45c48807d2b9",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.castrumTargetRequest~=nil",
						dequeueIfLuaFalse = true,
						name = "Relevant state",
						uuid = "e90f8ed4-de8d-b2f5-8937-d1be9a2396a3",
						version = 3,
					},
				},
			},
			displayPath = "Castrum Meridianum/AutoSim",
			name = "[Castrum] Confirm initial target",
			throttleTime = 250,
			timeout = 3,
			uuid = "2d5f8ef0-f4ac-98a0-a743-5532720c1b7d",
			version = 2,
		},
	},
	
	{
		data = 
		{
			displayPath = "Castrum Meridianum",
			name = "Draws",
			uuid = "4868314f-30a8-9b74-b25a-fcc05a5c3596",
		},
		objectType = "folder",
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
						actionLua = "local e=eventArgs\nlocal shapes={[28773]={\"Rect\",50,4},[28775]={\"Circle\",6},[28779]={\"Circle\",20},[28781]={\"Circle\",10},[28782]={\"Donut\",12.5,30},[28784]={\"Circle\",5},[29146]={\"Cone\",11,120},[29163]={\"Circle\",10},[28787]={\"Circle\",8},[28793]={\"Rect\",40,4},[28794]={\"Circle\",8},[28797]={\"Cross\",20,4},[28790]={\"Circle\",8},[29164]={\"Circle\",8}}\nlocal shape=shapes[e.aoeID]\nlocal finish=e.startTime+e.duration*1000\nif finish>Now() and finish<Now()+20000 then\n data.castrumDrawQueue=data.castrumDrawQueue or {}\n local q=data.castrumDrawQueue\n q[#q+1]={finish=finish,x=e.x,y=e.y,z=e.z,h=e.heading,length=e.aoeLength,width=e.aoeWidth,shape=shape}\nend\nself.used=true",
						conditions = 
						{
							
							{
								"4053e00b-4618-f695-9945-8d2884d3cba9",
								true,
							},
							
							{
								"e9e638fb-678c-e6ce-a118-ef55ecec6088",
								true,
							},
						},
						name = "Selected attack telegraphs",
						uuid = "736555ca-a120-f696-8c2b-19120f8ea546",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 1043,
						name = "Castrum Meridianum/Draws",
						uuid = "4053e00b-4618-f695-9945-8d2884d3cba9",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local e=eventArgs\nreturn not e.friendly and (e.aoeID==28773 or e.aoeID==28775 or e.aoeID==28779 or e.aoeID==28781 or e.aoeID==28782 or e.aoeID==28784 or e.aoeID==29146 or e.aoeID==29163 or e.aoeID==28787 or e.aoeID==28793 or e.aoeID==28794 or e.aoeID==28797 or e.aoeID==28790 or e.aoeID==29164)",
						dequeueIfLuaFalse = true,
						name = "Relevant state",
						uuid = "e9e638fb-678c-e6ce-a118-ef55ecec6088",
						version = 3,
					},
				},
			},
			displayPath = "Castrum Meridianum/Draws",
			eventType = 18,
			name = "[Castrum] Selected attack telegraphs",
			timeout = 3,
			uuid = "d6ece5b0-b87b-4b72-94cc-227ab9562750",
			version = 2,
		},
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
						actionLua = "local q=data.castrumDrawQueue\nlocal now=Now()\nlocal earliest=math.huge\nfor i=#q,1,-1 do if q[i].finish<=now then table.remove(q,i) else earliest=math.min(earliest,q[i].finish) end end\nlocal d=TensorCore.getStaticDrawer(0x603333FF,2)\nfor _,e in ipairs(q) do\n if not e.drawn and e.finish<=earliest+600 then\n  local ms=e.finish-now\n  local s=e.shape\n  if s[1]==\"Circle\" then d:addTimedCircle(ms,e.x,e.y,e.z,s[2],0,false,true)\n  elseif s[1]==\"Cone\" then d:addTimedCone(ms,e.x,e.y,e.z,s[2],math.rad(s[3]),e.h,0,false,true)\n  elseif s[1]==\"Donut\" then d:addTimedDonut(ms,e.x,e.y,e.z,s[2],s[3],0,false,true)\n  elseif s[1]==\"Cross\" then\n   d:addTimedRect(ms,e.x,e.y,e.z,s[2]*2,s[3],e.h,0,false,true)\n   d:addTimedRect(ms,e.x,e.y,e.z,s[2]*2,s[3],e.h+math.pi/2,0,false,true)\n  else d:addTimedRect(ms,e.x,e.y,e.z,s[2],s[3],e.h,0,false,true) end\n  AnyoneCore.addWorldTextCountdown(ms,{x=e.x,y=e.y+1,z=e.z},0xFFFFFFFF,true,1.1)\n  e.drawn=true\n end\nend\nif #q==0 then data.castrumDrawQueue=nil end\nself.used=true",
						conditions = 
						{
							
							{
								"10558d5c-0dbd-12ba-b499-cd1cc7db627f",
								true,
							},
							
							{
								"7569baf8-c2c1-f229-a1db-ca79f25a59ab",
								true,
							},
						},
						name = "[Castrum] Advance attack previews",
						uuid = "e5d271a3-97fc-943d-81a5-9b10d631dfaa",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						localmapid = 1043,
						name = "Castrum Meridianum/Draws",
						uuid = "10558d5c-0dbd-12ba-b499-cd1cc7db627f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.castrumDrawQueue ~= nil",
						dequeueIfLuaFalse = true,
						name = "Relevant state",
						uuid = "7569baf8-c2c1-f229-a1db-ca79f25a59ab",
						version = 3,
					},
				},
			},
			displayPath = "Castrum Meridianum/Draws",
			name = "[Castrum] Advance attack previews",
			throttleTime = 200,
			timeout = 3,
			uuid = "6f4960a4-d9c4-e9f8-b3a6-fe5d10db5bdf",
			version = 2,
		},
	}, 
	inheritedProfiles = 
	{
	},
}



return tbl
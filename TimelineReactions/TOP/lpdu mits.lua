local tbl = 
{
	
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Potions",
				uuid = "993ea28a-7461-1369-9145-10298eee1a3e",
			},
			objectType = "folder",
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
									"9a4c5e9e-8da1-6838-aa0f-b7e14836b71b",
									true,
								},
								
								{
									"62d02255-7365-4879-bc8b-0903a463aa4b",
									true,
								},
							},
							name = "Potion - Strength",
							potType = 4,
							usePot = true,
							uuid = "64ecbcd0-8d2a-f9a0-88c4-45add6375b4b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Misc",
							conditions = 
							{
								
								{
									"9a4c5e9e-8da1-6838-aa0f-b7e14836b71b",
									true,
								},
								
								{
									"2bf44d78-11e2-0787-86ee-c756120cbc6f",
									true,
								},
							},
							name = "Potion - Dexterity",
							usePot = true,
							uuid = "b0e73037-7dbc-adc9-a3dc-71c841ad4181",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Misc",
							conditions = 
							{
								
								{
									"9a4c5e9e-8da1-6838-aa0f-b7e14836b71b",
									true,
								},
								
								{
									"ccf72c65-11f3-5c86-9f87-32592e9f11ce",
									true,
								},
							},
							name = "Potion - Intelligence",
							potType = 2,
							usePot = true,
							uuid = "ec334dcd-0dc4-cbd6-832a-37766b8f9bcc",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Misc",
							conditions = 
							{
								
								{
									"9a4c5e9e-8da1-6838-aa0f-b7e14836b71b",
									true,
								},
								
								{
									"f2712ad9-3c3c-03f1-9ae7-a7cfdd688858",
									true,
								},
							},
							name = "Potion - Mind",
							potType = 3,
							usePot = true,
							uuid = "f5b174b5-87b8-c8b0-b46b-4e1119062c50",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 7,
							name = "In combat",
							uuid = "9a4c5e9e-8da1-6838-aa0f-b7e14836b71b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								19,
								20,
								21,
								22,
								32,
								34,
								37,
								39,
							},
							name = "Strength jobs",
							uuid = "62d02255-7365-4879-bc8b-0903a463aa4b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								23,
								30,
								31,
								38,
								41,
							},
							name = "Dexterity jobs",
							uuid = "2bf44d78-11e2-0787-86ee-c756120cbc6f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								25,
								27,
								35,
								42,
							},
							name = "Intelligence jobs",
							uuid = "ccf72c65-11f3-5c86-9f87-32592e9f11ce",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								24,
								28,
								33,
								40,
							},
							name = "Mind jobs",
							uuid = "f2712ad9-3c3c-03f1-9ae7-a7cfdd688858",
							version = 3,
						},
					},
				},
				displayPath = "Potions",
				mechanicTime = 3.4,
				name = "[Potion] P1 opener",
				randomOffset = 5,
				timeRange = true,
				timelineIndex = 1,
				timerEndOffset = 6,
				timerOffset = -3.4000000953674,
				timerStartOffset = -3.4000000953674,
				uuid = "9c9b1d78-c24f-23a4-9980-3e4734f217e0",
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
				name = "P1",
				uuid = "5173c170-a818-cadf-8bbe-3a41f8c1697a",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 25751,
							conditions = 
							{
								
								{
									"5a413b1e-fc8f-dfcc-a691-9fdf9bdee131",
									true,
								},
								
								{
									"21346ee0-8c1e-1084-adf3-b0ed16feb73a",
									true,
								},
								
								{
									"2023e2e2-1617-604f-b81b-b350718f2340",
									true,
								},
								
								{
									"e8776504-691a-829b-827e-eee51b6199c8",
									true,
								},
							},
							uuid = "87fb0d62-2fc6-b2a9-aa9e-c86246735e3e",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25746,
							conditions = 
							{
								
								{
									"bdd6d8e0-16ac-ade8-a104-9233e32654c0",
									true,
								},
								
								{
									"78e6c97e-89e9-4729-86c6-d3f3eb9df24b",
									true,
								},
								
								{
									"4f22f8f3-625d-e38a-b08d-207d4f6d9036",
									true,
								},
								
								{
									"ce42bcde-2dd2-3fc5-aa40-0f4f25320d19",
									true,
								},
							},
							uuid = "0e28dcf7-44e0-6a38-b67d-9ebb3bc90434",
							version = 2.1,
						},
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
								21,
							},
							name = "Eligible jobs",
							uuid = "5a413b1e-fc8f-dfcc-a691-9fdf9bdee131",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "21346ee0-8c1e-1084-adf3-b0ed16feb73a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(function()\n local found={}\n for _,slot in ipairs({'M1','M2','T1','T2','R1','R2','H1','H2'}) do\n  local e=R.entOf(slot)\n  if e and TensorCore.hasBuff(e,3451) then found[#found+1]=slot end\n end\n if #found~=2 then return nil end\n return R.mySlot()=='T1' and found[1] or R.mySlot()=='T2' and found[2]\nend)()\nreturn targetSlot~=nil and targetSlot==R.mySlot()",
							name = "Mitigation plan",
							uuid = "2023e2e2-1617-604f-b81b-b350718f2340",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25751,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "e8776504-691a-829b-827e-eee51b6199c8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								19,
							},
							name = "Eligible jobs",
							uuid = "bdd6d8e0-16ac-ade8-a104-9233e32654c0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "78e6c97e-89e9-4729-86c6-d3f3eb9df24b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(function()\n local found={}\n for _,slot in ipairs({'M1','M2','T1','T2','R1','R2','H1','H2'}) do\n  local e=R.entOf(slot)\n  if e and TensorCore.hasBuff(e,3451) then found[#found+1]=slot end\n end\n if #found~=2 then return nil end\n return R.mySlot()=='T1' and found[1] or R.mySlot()=='T2' and found[2]\nend)()\nreturn targetSlot~=nil and targetSlot==R.mySlot()",
							name = "Mitigation plan",
							uuid = "4f22f8f3-625d-e38a-b08d-207d4f6d9036",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25746,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "ce42bcde-2dd2-3fc5-aa40-0f4f25320d19",
							version = 3,
						},
					},
				},
				displayPath = "P1",
				mechanicTime = 56.1,
				name = "[Mit] Looper 4 short CD to assigned line 4 - self",
				timeRange = true,
				timelineIndex = 12,
				timerEndOffset = -1,
				timerStartOffset = -3,
				uuid = "9ee8be3a-1f4c-57b0-9a95-abda3bcd5a13",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7393,
							conditions = 
							{
								
								{
									"b4aeb4c0-d2cf-9ee4-9280-b25e4adde7c1",
									true,
								},
								
								{
									"16541bdd-ff9b-bd5a-81fb-8c103838947d",
									true,
								},
								
								{
									"b6a8ff5b-2bd2-055c-ad70-b14edb62bda8",
									true,
								},
								
								{
									"880880c0-7880-3b77-b44f-532d167854b2",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "d6f02451-d910-d42d-b24c-fe81c81a273e",
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
									"738aa27e-8331-aa8f-babe-5fb4cd5be2e4",
									true,
								},
								
								{
									"9805e3e1-9fcf-2e53-b33e-ce95ae624303",
									true,
								},
								
								{
									"97c53d2d-29ca-5966-a3a6-2c47562688a0",
									true,
								},
								
								{
									"d74cba1a-6d04-019f-b30e-32f756b9e166",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "ac87e69a-1f8b-51d1-8cb6-014993eddef0",
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
									"00c1212e-f2a8-931e-b68c-2c2d77406665",
									true,
								},
								
								{
									"328914b5-8504-e7e9-96f2-6da5b5cf5d98",
									true,
								},
								
								{
									"776a7e65-fe05-3fe7-8ac6-2a42e070eb97",
									true,
								},
								
								{
									"a9b4fc9a-dc69-119a-aa84-2dbdfffb355d",
									true,
								},
								
								{
									"aec68a51-34db-1439-a6aa-d74a9ccc97ba",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "7a0f35dc-0028-5c6d-b039-354dce19eac4",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7382,
							conditions = 
							{
								
								{
									"e855fcd8-b674-01b1-ab5b-e76a335d4d86",
									true,
								},
								
								{
									"f9470cff-f4b3-0a85-934e-dde4fde7e1bd",
									true,
								},
								
								{
									"cb128f38-1f0e-2b29-944d-a5721214e514",
									true,
								},
								
								{
									"54a5466d-5778-82fd-8ced-2aaa8e4d1ef1",
									true,
								},
								
								{
									"e6bb9047-0f85-4fa0-a61a-bf0d41329b0d",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "05ea2225-207f-7666-854b-8d0795874ba5",
							version = 2.1,
						},
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
								32,
							},
							name = "Eligible jobs",
							uuid = "b4aeb4c0-d2cf-9ee4-9280-b25e4adde7c1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "16541bdd-ff9b-bd5a-81fb-8c103838947d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7393,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "b6a8ff5b-2bd2-055c-ad70-b14edb62bda8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(function()\n local found={}\n for _,slot in ipairs({'M1','M2','T1','T2','R1','R2','H1','H2'}) do\n  local e=R.entOf(slot)\n  if e and TensorCore.hasBuff(e,3451) then found[#found+1]=slot end\n end\n if #found~=2 then return nil end\n return R.mySlot()=='T1' and found[1] or R.mySlot()=='T2' and found[2]\nend)()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "c6e73ab7-c28e-f703-bb4a-a199bb2c91bc",
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
									"c6e73ab7-c28e-f703-bb4a-a199bb2c91bc",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "880880c0-7880-3b77-b44f-532d167854b2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								37,
							},
							name = "Eligible jobs",
							uuid = "738aa27e-8331-aa8f-babe-5fb4cd5be2e4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "9805e3e1-9fcf-2e53-b33e-ce95ae624303",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25758,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "97c53d2d-29ca-5966-a3a6-2c47562688a0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(function()\n local found={}\n for _,slot in ipairs({'M1','M2','T1','T2','R1','R2','H1','H2'}) do\n  local e=R.entOf(slot)\n  if e and TensorCore.hasBuff(e,3451) then found[#found+1]=slot end\n end\n if #found~=2 then return nil end\n return R.mySlot()=='T1' and found[1] or R.mySlot()=='T2' and found[2]\nend)()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "fffce5c0-4ee4-a691-ac89-851f527ba780",
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
									"fffce5c0-4ee4-a691-ac89-851f527ba780",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "d74cba1a-6d04-019f-b30e-32f756b9e166",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								21,
							},
							name = "Eligible jobs",
							uuid = "00c1212e-f2a8-931e-b68c-2c2d77406665",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "776a7e65-fe05-3fe7-8ac6-2a42e070eb97",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16464,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "a9b4fc9a-dc69-119a-aa84-2dbdfffb355d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(function()\n local found={}\n for _,slot in ipairs({'M1','M2','T1','T2','R1','R2','H1','H2'}) do\n  local e=R.entOf(slot)\n  if e and TensorCore.hasBuff(e,3451) then found[#found+1]=slot end\n end\n if #found~=2 then return nil end\n return R.mySlot()=='T1' and found[1] or R.mySlot()=='T2' and found[2]\nend)()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "9fb06eea-a3ab-0443-b5d9-0e248c195a35",
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
									"9fb06eea-a3ab-0443-b5d9-0e248c195a35",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "aec68a51-34db-1439-a6aa-d74a9ccc97ba",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								19,
							},
							name = "Eligible jobs",
							uuid = "e855fcd8-b674-01b1-ab5b-e76a335d4d86",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "cb128f38-1f0e-2b29-944d-a5721214e514",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7382,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "54a5466d-5778-82fd-8ced-2aaa8e4d1ef1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(function()\n local found={}\n for _,slot in ipairs({'M1','M2','T1','T2','R1','R2','H1','H2'}) do\n  local e=R.entOf(slot)\n  if e and TensorCore.hasBuff(e,3451) then found[#found+1]=slot end\n end\n if #found~=2 then return nil end\n return R.mySlot()=='T1' and found[1] or R.mySlot()=='T2' and found[2]\nend)()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "45f5fc92-9451-de69-858e-7c7ec8fb62d5",
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
									"45f5fc92-9451-de69-858e-7c7ec8fb62d5",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "e6bb9047-0f85-4fa0-a61a-bf0d41329b0d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(function()\n local found={}\n for _,slot in ipairs({'M1','M2','T1','T2','R1','R2','H1','H2'}) do\n  local e=R.entOf(slot)\n  if e and TensorCore.hasBuff(e,3451) then found[#found+1]=slot end\n end\n if #found~=2 then return nil end\n return R.mySlot()=='T1' and found[1] or R.mySlot()=='T2' and found[2]\nend)()\nreturn targetSlot~=nil and targetSlot~=R.mySlot()",
							name = "Other recipient",
							uuid = "328914b5-8504-e7e9-96f2-6da5b5cf5d98",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(function()\n local found={}\n for _,slot in ipairs({'M1','M2','T1','T2','R1','R2','H1','H2'}) do\n  local e=R.entOf(slot)\n  if e and TensorCore.hasBuff(e,3451) then found[#found+1]=slot end\n end\n if #found~=2 then return nil end\n return R.mySlot()=='T1' and found[1] or R.mySlot()=='T2' and found[2]\nend)()\nreturn targetSlot~=nil and targetSlot~=R.mySlot()",
							name = "Other recipient",
							uuid = "f9470cff-f4b3-0a85-934e-dde4fde7e1bd",
							version = 3,
						},
					},
				},
				displayPath = "P1",
				mechanicTime = 56.1,
				name = "[Mit] Looper 4 short CD to assigned line 4 - support",
				timeRange = true,
				timelineIndex = 12,
				timerEndOffset = -1,
				timerStartOffset = -3,
				uuid = "35fa83fd-3c90-b198-8ed5-77a7d8d365cd",
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
				name = "P1",
				uuid = "903ba9f9-3546-ecb5-aeb6-9114f2b686be",
			},
			objectType = "folder",
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
									"89bbd8a3-cc7c-8e47-9bed-c458eee781f2",
									true,
								},
								
								{
									"45e8abe6-b9da-d258-83b0-87919cc94efc",
									true,
								},
								
								{
									"2826bcb5-e109-4939-8277-e62a85fcb6e3",
									true,
								},
							},
							uuid = "e95a011b-020f-91cf-b49c-c74f8b93059f",
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
									"44503552-e4e0-7c98-b585-f05987f22f3b",
									true,
								},
								
								{
									"6983b0cf-cecf-2b08-869e-e821f4784c20",
									true,
								},
								
								{
									"27bceaf0-be47-de4e-939e-34bfa80fed0d",
									true,
								},
							},
							uuid = "3058c09b-3948-48f2-84c2-a2041330dbfc",
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
									"3bfcbc7d-1b9c-8e06-add3-60aa65a592c8",
									true,
								},
								
								{
									"a23cbde2-2b06-d0ea-ade5-486ede2ddb69",
									true,
								},
								
								{
									"50f98460-d6f0-13c2-b32b-a57052991a5e",
									true,
								},
							},
							uuid = "f301fe1f-0a0b-cc65-8547-8a22fff64f60",
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
									"1e7b3c75-6cf7-f336-835c-2836841eb841",
									true,
								},
								
								{
									"fcd2f61a-c283-6abc-bdd6-00e3a20c0e04",
									true,
								},
								
								{
									"24043c8e-d5ad-4205-97b9-57eb801915c2",
									true,
								},
							},
							uuid = "547f0593-9b47-12ee-a961-614fddf6df49",
							version = 2.1,
						},
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
								23,
							},
							name = "Eligible jobs",
							uuid = "89bbd8a3-cc7c-8e47-9bed-c458eee781f2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R1'",
							name = "Assigned R1",
							uuid = "45e8abe6-b9da-d258-83b0-87919cc94efc",
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
							name = "Ready",
							uuid = "2826bcb5-e109-4939-8277-e62a85fcb6e3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								31,
							},
							name = "Eligible jobs",
							uuid = "44503552-e4e0-7c98-b585-f05987f22f3b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R1'",
							name = "Assigned R1",
							uuid = "6983b0cf-cecf-2b08-869e-e821f4784c20",
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
							name = "Ready",
							uuid = "27bceaf0-be47-de4e-939e-34bfa80fed0d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								38,
							},
							name = "Eligible jobs",
							uuid = "3bfcbc7d-1b9c-8e06-add3-60aa65a592c8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R1'",
							name = "Assigned R1",
							uuid = "a23cbde2-2b06-d0ea-ade5-486ede2ddb69",
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
							name = "Ready",
							uuid = "50f98460-d6f0-13c2-b32b-a57052991a5e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								35,
							},
							name = "Eligible jobs",
							uuid = "1e7b3c75-6cf7-f336-835c-2836841eb841",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R2'",
							name = "Assigned R2",
							uuid = "fcd2f61a-c283-6abc-bdd6-00e3a20c0e04",
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
							name = "Ready",
							uuid = "24043c8e-d5ad-4205-97b9-57eb801915c2",
							version = 3,
						},
					},
				},
				displayPath = "P1",
				mechanicTime = 81.3,
				name = "[Mit] Panto party + Barrier",
				timeRange = true,
				timelineIndex = 17,
				timerEndOffset = -1,
				timerStartOffset = -3,
				uuid = "a13ac72b-a906-a27d-91ae-010fed0591c1",
				version = 2,
			},
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
									"f58dfe4b-92ac-cfe8-b90b-54ce9c2373f6",
									true,
								},
								
								{
									"351e8647-400d-6ec0-a755-fa43f055a9cf",
									true,
								},
								
								{
									"175787fd-6867-b1b5-ae10-eac2d7348c18",
									true,
								},
							},
							targetContentID = 7695,
							targetType = "ContentID",
							uuid = "001cc16f-e821-5dae-a2a7-7dae15c345b8",
							version = 2.1,
						},
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
								20,
								22,
								30,
								34,
								39,
								41,
							},
							name = "Eligible jobs",
							uuid = "f58dfe4b-92ac-cfe8-b90b-54ce9c2373f6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='M1'",
							name = "Assigned M1",
							uuid = "351e8647-400d-6ec0-a755-fa43f055a9cf",
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
							name = "Ready",
							uuid = "175787fd-6867-b1b5-ae10-eac2d7348c18",
							version = 3,
						},
					},
				},
				displayPath = "P1",
				mechanicTime = 81.3,
				name = "[Mit] Panto stacks 1/2 - M1 Feint",
				timeRange = true,
				timelineIndex = 17,
				timerEndOffset = -1,
				timerStartOffset = -3,
				uuid = "1f3483eb-3446-74e2-9d21-0ef5d526f9f9",
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
				name = "P1",
				uuid = "49d45f76-cda7-a177-aad3-badbee6bd7b6",
			},
			objectType = "folder",
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
									"86cf85ed-8496-dd4d-b822-c5690e31f36d",
									true,
								},
								
								{
									"f07fe282-a2bd-c54c-b8ef-389787ff0f79",
									true,
								},
								
								{
									"80efe836-7ee8-2133-a361-02fa98de7fd7",
									true,
								},
							},
							targetContentID = 7695,
							targetType = "ContentID",
							uuid = "24d882ff-b2db-7843-9023-2631c85134c5",
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
									"9d044d23-a405-bfbc-a071-5c58238e2486",
									true,
								},
								
								{
									"018fc96a-e9ee-503a-a8a1-8cd0161b1266",
									true,
								},
								
								{
									"0244e5da-429c-79d2-8796-6778a908db35",
									true,
								},
								
								{
									"7af8cec1-16d1-7738-a273-7bfe70d9356d",
									true,
								},
							},
							gVar = "ACR_TensorRuin3_Hotbar_Addle",
							uuid = "fefcc3d6-bb61-e0f9-b6b0-b2aa35d2c8f9",
							variableTogglesType = 2,
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
									"a8bedc29-7f07-91c3-840d-6a4a45104677",
									true,
								},
								
								{
									"4675da46-1b1d-ed34-8d80-90c7251ec871",
									true,
								},
								
								{
									"1ab733c4-198b-9799-a082-1115c5b5b2fd",
									true,
								},
							},
							targetContentID = 7695,
							targetType = "ContentID",
							uuid = "1fafc2ce-2b6c-5524-a992-f02cfed97d85",
							version = 2.1,
						},
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
								20,
								22,
								30,
								34,
								39,
								41,
							},
							name = "Eligible jobs",
							uuid = "86cf85ed-8496-dd4d-b822-c5690e31f36d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='M2'",
							name = "Assigned M2",
							uuid = "f07fe282-a2bd-c54c-b8ef-389787ff0f79",
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
							name = "Ready",
							uuid = "80efe836-7ee8-2133-a361-02fa98de7fd7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								25,
								27,
								35,
								42,
							},
							name = "Eligible jobs",
							uuid = "9d044d23-a405-bfbc-a071-5c58238e2486",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R2'",
							name = "Assigned R2",
							uuid = "018fc96a-e9ee-503a-a8a1-8cd0161b1266",
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
							name = "Ready",
							uuid = "0244e5da-429c-79d2-8796-6778a908db35",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 7695,
							name = "Correct boss target",
							uuid = "7af8cec1-16d1-7738-a273-7bfe70d9356d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								31,
							},
							name = "Eligible jobs",
							uuid = "a8bedc29-7f07-91c3-840d-6a4a45104677",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R1'",
							name = "Assigned R1",
							uuid = "4675da46-1b1d-ed34-8d80-90c7251ec871",
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
							name = "Ready",
							uuid = "1ab733c4-198b-9799-a082-1115c5b5b2fd",
							version = 3,
						},
					},
				},
				displayPath = "P1",
				mechanicTime = 93.3,
				name = "[Mit] Panto stacks 3/4 - M2 Feint, Addle, Dismantle",
				timeRange = true,
				timelineIndex = 21,
				timerEndOffset = -1,
				timerStartOffset = -3,
				uuid = "1949f6a9-0df1-0e5a-b834-689433beb4d6",
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
				name = "P1",
				uuid = "0f87b808-662b-4538-b7b5-58f1450b26d4",
			},
			objectType = "folder",
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
									"453d4869-3520-c59f-a5a1-8a3ef60f365f",
									true,
								},
								
								{
									"3ed818df-74d7-e3ed-a0a6-34ac8bfd80f3",
									true,
								},
								
								{
									"3bb9dd28-dab1-32d9-9d25-7d25315e589e",
									true,
								},
							},
							uuid = "69dda5d9-c71f-e05d-b9b7-d4bcc647924d",
							version = 2.1,
						},
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
							name = "Eligible jobs",
							uuid = "453d4869-3520-c59f-a5a1-8a3ef60f365f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "3ed818df-74d7-e3ed-a0a6-34ac8bfd80f3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "3bb9dd28-dab1-32d9-9d25-7d25315e589e",
							version = 3,
						},
					},
				},
				displayPath = "P1",
				mechanicTime = 127.7,
				name = "[Mit] Late P1 - Rampart",
				timeRange = true,
				timelineIndex = 29,
				timerEndOffset = -3,
				timerStartOffset = -8,
				uuid = "62a83fc2-b998-39f2-a9c1-9d6a058cd5a9",
				version = 2,
			},
		},
	},
	[34] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P2",
				uuid = "9d232a14-ce76-4cca-a129-f7456f0c0caa",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 25751,
							conditions = 
							{
								
								{
									"f56eb407-2e84-150b-a60a-709a8ddf7aa6",
									true,
								},
								
								{
									"2ea65470-e3d5-a2a6-b47d-db11e3077a33",
									true,
								},
								
								{
									"06adf1b0-1d4b-e6ea-b987-729ffa6e6530",
									true,
								},
								
								{
									"6530ef4b-0335-c58e-9b48-b591cc0021e0",
									true,
								},
							},
							uuid = "f62753f0-56cc-e13e-bf1c-c950e984feff",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25746,
							conditions = 
							{
								
								{
									"f31fd6c0-066c-f15c-94e4-28cb91e97115",
									true,
								},
								
								{
									"3f399a88-13c5-5de5-8b28-83b00c5a78cb",
									true,
								},
								
								{
									"3911ac26-81a0-b24c-8ec3-d2d64e65775d",
									true,
								},
								
								{
									"132b7d74-5c83-38ca-8d67-f97a96ad092e",
									true,
								},
							},
							uuid = "c4b2e356-1d65-b4f8-b438-e8969958ab4d",
							version = 2.1,
						},
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
								21,
							},
							name = "Eligible jobs",
							uuid = "f56eb407-2e84-150b-a60a-709a8ddf7aa6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "2ea65470-e3d5-a2a6-b47d-db11e3077a33",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nreturn targetSlot~=nil and targetSlot==R.mySlot()",
							name = "Mitigation plan",
							uuid = "06adf1b0-1d4b-e6ea-b987-729ffa6e6530",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25751,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "6530ef4b-0335-c58e-9b48-b591cc0021e0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								19,
							},
							name = "Eligible jobs",
							uuid = "f31fd6c0-066c-f15c-94e4-28cb91e97115",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "3f399a88-13c5-5de5-8b28-83b00c5a78cb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nreturn targetSlot~=nil and targetSlot==R.mySlot()",
							name = "Mitigation plan",
							uuid = "3911ac26-81a0-b24c-8ec3-d2d64e65775d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25746,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "132b7d74-5c83-38ca-8d67-f97a96ad092e",
							version = 3,
						},
					},
				},
				displayPath = "P2",
				mechanicTime = 214.5,
				name = "[Mit] Opening Solar Ray short CD - self",
				timeRange = true,
				timelineIndex = 34,
				timerEndOffset = -1,
				timerStartOffset = -3,
				uuid = "7cb6ca96-b6c8-8cc6-b62a-315ba7d9bab1",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7393,
							conditions = 
							{
								
								{
									"71d85710-af0d-056b-b1a3-0ee81da8f4f0",
									true,
								},
								
								{
									"6aff1a84-f95c-f1db-a7ac-62acc1873bb6",
									true,
								},
								
								{
									"fd323b26-3866-cc6e-a0de-799c75441f8d",
									true,
								},
								
								{
									"7df3d8ab-0fe8-0f5c-8cfc-d1f60d2287ac",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "3ba0f03b-60f9-9c78-bf9d-03f255446ee9",
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
									"76f3d06f-c1fe-8e23-bec3-6745706fc9fe",
									true,
								},
								
								{
									"0c14cba3-701d-e80d-85d9-a78b8aed9090",
									true,
								},
								
								{
									"1c1249f4-f2ef-5d30-a286-4a50ac0bb208",
									true,
								},
								
								{
									"ec48a0fc-340a-01af-8277-4e6c6f7ad234",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "6c0abca9-0c65-2233-a055-0fec228ae27b",
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
									"f358e909-dc4e-3be9-831f-4ad04899ae60",
									true,
								},
								
								{
									"14849d1c-c452-401f-a94a-05509bac2c8c",
									true,
								},
								
								{
									"c694a719-6fba-eec0-ab43-e84ef04c99e7",
									true,
								},
								
								{
									"44ee286b-1a78-6efd-9742-90aedd266f28",
									true,
								},
								
								{
									"0db5f68c-f2b5-c77a-aa98-c0a961e9cd97",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "19ce1fba-6fd8-fca2-a6bc-b694960e392c",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7382,
							conditions = 
							{
								
								{
									"a87d92c0-c1d0-4b26-b129-7851edc1b1e1",
									true,
								},
								
								{
									"0effd494-f1d4-d5aa-9161-10d10862a4f3",
									true,
								},
								
								{
									"b40d4ddf-fc45-66ff-9aca-70595bd59179",
									true,
								},
								
								{
									"e66c1e25-7ff7-5551-bd84-7c2bfc3514b9",
									true,
								},
								
								{
									"da06c4a5-7712-3f7b-9a48-0865cdb55f1d",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "91e25839-3625-4e2c-aeaf-694bf8591446",
							version = 2.1,
						},
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
								32,
							},
							name = "Eligible jobs",
							uuid = "71d85710-af0d-056b-b1a3-0ee81da8f4f0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "6aff1a84-f95c-f1db-a7ac-62acc1873bb6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7393,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "fd323b26-3866-cc6e-a0de-799c75441f8d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "6fbe0fd8-131b-6946-b7aa-499aa8db8990",
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
									"6fbe0fd8-131b-6946-b7aa-499aa8db8990",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "7df3d8ab-0fe8-0f5c-8cfc-d1f60d2287ac",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								37,
							},
							name = "Eligible jobs",
							uuid = "76f3d06f-c1fe-8e23-bec3-6745706fc9fe",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "0c14cba3-701d-e80d-85d9-a78b8aed9090",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25758,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "1c1249f4-f2ef-5d30-a286-4a50ac0bb208",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "c0e9a31d-97eb-19d8-8191-2f897b6f4b36",
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
									"c0e9a31d-97eb-19d8-8191-2f897b6f4b36",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "ec48a0fc-340a-01af-8277-4e6c6f7ad234",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								21,
							},
							name = "Eligible jobs",
							uuid = "f358e909-dc4e-3be9-831f-4ad04899ae60",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "c694a719-6fba-eec0-ab43-e84ef04c99e7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16464,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "44ee286b-1a78-6efd-9742-90aedd266f28",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "e1834591-1a42-b4f1-b8fb-8bbe1c7ea412",
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
									"e1834591-1a42-b4f1-b8fb-8bbe1c7ea412",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "0db5f68c-f2b5-c77a-aa98-c0a961e9cd97",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								19,
							},
							name = "Eligible jobs",
							uuid = "a87d92c0-c1d0-4b26-b129-7851edc1b1e1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "b40d4ddf-fc45-66ff-9aca-70595bd59179",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7382,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "e66c1e25-7ff7-5551-bd84-7c2bfc3514b9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "91a62fa1-e7c9-9e68-87a7-a8e7636efbbe",
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
									"91a62fa1-e7c9-9e68-87a7-a8e7636efbbe",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "da06c4a5-7712-3f7b-9a48-0865cdb55f1d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nreturn targetSlot~=nil and targetSlot~=R.mySlot()",
							name = "Other recipient",
							uuid = "14849d1c-c452-401f-a94a-05509bac2c8c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nreturn targetSlot~=nil and targetSlot~=R.mySlot()",
							name = "Other recipient",
							uuid = "0effd494-f1d4-d5aa-9161-10d10862a4f3",
							version = 3,
						},
					},
				},
				displayPath = "P2",
				mechanicTime = 214.5,
				name = "[Mit] Opening Solar Ray short CD - support",
				timeRange = true,
				timelineIndex = 34,
				timerEndOffset = -1,
				timerStartOffset = -3,
				uuid = "56904db2-1dcf-afbc-b886-e1012922e0e5",
				version = 2,
			},
		},
	},
	[46] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P2 autos",
				uuid = "fac39e71-a286-7558-9dc6-ae58a16d9971",
			},
			objectType = "folder",
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
									"3d305a57-a595-8151-8f02-19bf28176cda",
									true,
								},
								
								{
									"37a237b6-e777-1c83-9cd2-71975f827337",
									true,
								},
								
								{
									"0bce6183-e26d-e8f0-ac3c-9a27fc54a04a",
									true,
								},
							},
							targetContentID = 7634,
							targetType = "ContentID",
							uuid = "4bf5b8ff-7093-d756-b1cc-37ca6bf4a08b",
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
									"eda280d4-fdba-3fa8-ad23-cb8308aeca2c",
									true,
								},
								
								{
									"49da689a-5e3c-df8a-9cef-7382bd6838c9",
									true,
								},
								
								{
									"51193bc9-842a-003e-bc81-170925821579",
									true,
								},
								
								{
									"7cb6c9f3-0340-ed70-a576-0149f80803ad",
									true,
								},
							},
							gVar = "ACR_TensorRuin3_Hotbar_Addle",
							uuid = "4cd41141-43d7-6da4-8995-8e07cc8d0726",
							variableTogglesType = 2,
							version = 2.1,
						},
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
								20,
								22,
								30,
								34,
								39,
								41,
							},
							name = "Eligible jobs",
							uuid = "3d305a57-a595-8151-8f02-19bf28176cda",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='M1'",
							name = "Assigned M1",
							uuid = "37a237b6-e777-1c83-9cd2-71975f827337",
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
							name = "Ready",
							uuid = "0bce6183-e26d-e8f0-ac3c-9a27fc54a04a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								25,
								27,
								35,
								42,
							},
							name = "Eligible jobs",
							uuid = "eda280d4-fdba-3fa8-ad23-cb8308aeca2c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R2'",
							name = "Assigned R2",
							uuid = "49da689a-5e3c-df8a-9cef-7382bd6838c9",
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
							name = "Ready",
							uuid = "51193bc9-842a-003e-bc81-170925821579",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 7634,
							name = "Correct boss target",
							uuid = "7cb6c9f3-0340-ed70-a576-0149f80803ad",
							version = 3,
						},
					},
				},
				displayPath = "P2 autos",
				mechanicTime = 262.1,
				name = "[Mit] After Synergy - M1 Feint + Addle on female",
				timeRange = true,
				timelineIndex = 46,
				timerEndOffset = 3,
				timerStartOffset = 0.5,
				uuid = "978ecab3-ba8e-3983-9e8b-b669014ecc36",
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
				name = "P2",
				uuid = "24e47bdf-ff2f-13d7-9e05-564ef26acc43",
			},
			objectType = "folder",
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
									"7f6d3613-554a-c3d8-81b3-7151d4578fe6",
									true,
								},
								
								{
									"bd254de1-d768-10ea-a18f-d02c3370daaf",
									true,
								},
								
								{
									"ff3707a8-f60a-6d9b-ab96-936f38c316af",
									true,
								},
							},
							uuid = "3bc29a47-1dd4-2a78-8b46-00b552862170",
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
									"720910e7-eec7-6232-bab4-2ec9eff90767",
									true,
								},
								
								{
									"84291e7a-8b34-819b-927e-8b98e5c3b216",
									true,
								},
								
								{
									"57e23eba-2e63-4692-92b2-f42dd5097b2f",
									true,
								},
							},
							uuid = "5b2d83e2-504e-f666-bbeb-f2ca3bacc037",
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
									"dff121c3-e8bf-fc56-ba62-8771ea8b4a0c",
									true,
								},
								
								{
									"f3882156-630f-3c71-9747-a42e653dd9e7",
									true,
								},
								
								{
									"8c3d37ee-172a-84e3-9cb8-70965d01b6a2",
									true,
								},
							},
							uuid = "3deac98c-69b1-cada-82d1-eb7a05a16a8a",
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
									"b3179607-cf37-7b60-ac0b-00876e2c59f2",
									true,
								},
								
								{
									"ea22e80a-5f1b-15c9-aae9-254ec6eee691",
									true,
								},
								
								{
									"3d1f544c-e3c9-0b3c-9d36-18ff51f47e0c",
									true,
								},
							},
							uuid = "55f98b54-d777-3277-8965-967786227113",
							version = 2.1,
						},
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
								23,
							},
							name = "Eligible jobs",
							uuid = "7f6d3613-554a-c3d8-81b3-7151d4578fe6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R1'",
							name = "Assigned R1",
							uuid = "bd254de1-d768-10ea-a18f-d02c3370daaf",
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
							name = "Ready",
							uuid = "ff3707a8-f60a-6d9b-ab96-936f38c316af",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								31,
							},
							name = "Eligible jobs",
							uuid = "720910e7-eec7-6232-bab4-2ec9eff90767",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R1'",
							name = "Assigned R1",
							uuid = "84291e7a-8b34-819b-927e-8b98e5c3b216",
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
							name = "Ready",
							uuid = "57e23eba-2e63-4692-92b2-f42dd5097b2f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								38,
							},
							name = "Eligible jobs",
							uuid = "dff121c3-e8bf-fc56-ba62-8771ea8b4a0c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R1'",
							name = "Assigned R1",
							uuid = "f3882156-630f-3c71-9747-a42e653dd9e7",
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
							name = "Ready",
							uuid = "8c3d37ee-172a-84e3-9cb8-70965d01b6a2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								35,
							},
							name = "Eligible jobs",
							uuid = "b3179607-cf37-7b60-ac0b-00876e2c59f2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R2'",
							name = "Assigned R2",
							uuid = "ea22e80a-5f1b-15c9-aae9-254ec6eee691",
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
							name = "Ready",
							uuid = "3d1f544c-e3c9-0b3c-9d36-18ff51f47e0c",
							version = 3,
						},
					},
				},
				displayPath = "P2",
				mechanicTime = 282.4,
				name = "[Mit] Limitless - party + Barrier",
				timeRange = true,
				timelineIndex = 48,
				timerEndOffset = 2.5,
				timerStartOffset = 0.8,
				uuid = "7f011372-f4a6-b32b-a731-7bffbf366e2d",
				version = 2,
			},
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
									"b0cd9925-b282-6764-b5e5-1927030a0389",
									true,
								},
								
								{
									"97f68930-d5eb-8bce-a5e1-0477fac26649",
									true,
								},
								
								{
									"51952a11-29f3-a1f9-b96a-9014e571eb65",
									true,
								},
							},
							uuid = "9b43ec11-96cf-1506-8035-eacbd1e6620f",
							version = 2.1,
						},
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
							name = "Eligible jobs",
							uuid = "b0cd9925-b282-6764-b5e5-1927030a0389",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "97f68930-d5eb-8bce-a5e1-0477fac26649",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "51952a11-29f3-a1f9-b96a-9014e571eb65",
							version = 3,
						},
					},
				},
				displayPath = "P2",
				mechanicTime = 282.4,
				name = "[Mit] Limitless - Rampart",
				timeRange = true,
				timelineIndex = 48,
				timerEndOffset = 4,
				timerStartOffset = 1,
				uuid = "52f8ae88-c694-f95a-b2d3-d37dde0c8b8a",
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
				name = "P2",
				uuid = "76655620-7052-b7e9-abd8-47cdd8a445a6",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 25751,
							conditions = 
							{
								
								{
									"f8d8d867-af62-2438-bb5e-b61e324f8da2",
									true,
								},
								
								{
									"79d4b36b-7d73-9f07-9f13-905cf863b29d",
									true,
								},
								
								{
									"9bdd5fed-ef35-61ff-b9b5-ae616feaa9a2",
									true,
								},
								
								{
									"3cd388df-1785-c1fb-a05c-8bdf07ba7e45",
									true,
								},
							},
							uuid = "cf99df8a-3574-4dc7-b0e8-1c3d6d6fa5be",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25746,
							conditions = 
							{
								
								{
									"e97f7522-7751-b206-809d-d7e687dbaab6",
									true,
								},
								
								{
									"69527a1b-0743-0d42-9fe0-f853b6b24ce8",
									true,
								},
								
								{
									"23cd4dd6-59a7-ce95-8cfe-3c63f39b4c59",
									true,
								},
								
								{
									"7a7c56cb-8a78-2ff2-96ff-74efd32d4758",
									true,
								},
							},
							uuid = "1ab9a085-f241-c765-8f5f-fa6fec31095e",
							version = 2.1,
						},
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
								21,
							},
							name = "Eligible jobs",
							uuid = "f8d8d867-af62-2438-bb5e-b61e324f8da2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "79d4b36b-7d73-9f07-9f13-905cf863b29d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nreturn targetSlot~=nil and targetSlot==R.mySlot()",
							name = "Mitigation plan",
							uuid = "9bdd5fed-ef35-61ff-b9b5-ae616feaa9a2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25751,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "3cd388df-1785-c1fb-a05c-8bdf07ba7e45",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								19,
							},
							name = "Eligible jobs",
							uuid = "e97f7522-7751-b206-809d-d7e687dbaab6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "69527a1b-0743-0d42-9fe0-f853b6b24ce8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nreturn targetSlot~=nil and targetSlot==R.mySlot()",
							name = "Mitigation plan",
							uuid = "23cd4dd6-59a7-ce95-8cfe-3c63f39b4c59",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25746,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "7a7c56cb-8a78-2ff2-96ff-74efd32d4758",
							version = 3,
						},
					},
				},
				displayPath = "P2",
				mechanicTime = 295.6,
				name = "[Mit] Limitless short CD - self",
				timeRange = true,
				timelineIndex = 52,
				timerEndOffset = -1,
				timerStartOffset = -3,
				uuid = "1f292a66-604d-54cc-b362-ddf03b6ba8df",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7393,
							conditions = 
							{
								
								{
									"905401e1-964b-d76c-97c7-051ffc0dcef4",
									true,
								},
								
								{
									"c83faf12-79f9-94b1-b0da-9536efefa6e0",
									true,
								},
								
								{
									"e6b2e49b-110b-4cce-ad44-6a10c1c7cec0",
									true,
								},
								
								{
									"ddc5bc26-b3c7-59bd-b1c2-40455b385dca",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "ee736a69-395f-7daa-8678-90ba98a6a465",
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
									"2a46097d-26e6-69bd-8301-7f1322af5881",
									true,
								},
								
								{
									"6d560443-b047-0d10-b40a-3379e6f391b9",
									true,
								},
								
								{
									"99c7eb23-c432-e61d-b350-eb10ef7f5490",
									true,
								},
								
								{
									"b628dbb5-6c7f-edbd-8bcc-13d0a383b3d8",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "55957fbb-abec-a59c-9763-9c025a9aac02",
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
									"19f9968b-805e-013c-b295-1a56d0179c9c",
									true,
								},
								
								{
									"a82f8d0e-7771-6951-a588-e9b4c0c380c3",
									true,
								},
								
								{
									"1dfa809f-1385-cc41-8bd1-dafb4cee75a9",
									true,
								},
								
								{
									"e4c5499d-bbea-d195-93d7-71084512847e",
									true,
								},
								
								{
									"912d282c-c5e3-13a9-a875-7ec65c7bb7e7",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "9f1b4870-a1e3-e2e9-8ce1-603906983cde",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7382,
							conditions = 
							{
								
								{
									"bf5ef2f1-d9cb-7e99-9a21-061d9bf6ba31",
									true,
								},
								
								{
									"ee333888-0f22-f8fa-a056-67632002908d",
									true,
								},
								
								{
									"e1b92686-824d-a13a-9990-b841e5f453d2",
									true,
								},
								
								{
									"67c7ad92-dca5-6c72-be9e-89efb7e1cd28",
									true,
								},
								
								{
									"b2c3151c-0dc0-6fe7-bbcd-8a4437999b66",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "0e27563b-5ebb-ebce-a47f-4c84f549d4ad",
							version = 2.1,
						},
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
								32,
							},
							name = "Eligible jobs",
							uuid = "905401e1-964b-d76c-97c7-051ffc0dcef4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "c83faf12-79f9-94b1-b0da-9536efefa6e0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7393,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "e6b2e49b-110b-4cce-ad44-6a10c1c7cec0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "b9dbba34-9218-6c8d-8f75-c3678abbb226",
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
									"b9dbba34-9218-6c8d-8f75-c3678abbb226",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "ddc5bc26-b3c7-59bd-b1c2-40455b385dca",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								37,
							},
							name = "Eligible jobs",
							uuid = "2a46097d-26e6-69bd-8301-7f1322af5881",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "6d560443-b047-0d10-b40a-3379e6f391b9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25758,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "99c7eb23-c432-e61d-b350-eb10ef7f5490",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "72be9114-2f19-9225-b553-582cd8bc3ceb",
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
									"72be9114-2f19-9225-b553-582cd8bc3ceb",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "b628dbb5-6c7f-edbd-8bcc-13d0a383b3d8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								21,
							},
							name = "Eligible jobs",
							uuid = "19f9968b-805e-013c-b295-1a56d0179c9c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "1dfa809f-1385-cc41-8bd1-dafb4cee75a9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16464,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "e4c5499d-bbea-d195-93d7-71084512847e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "5f813cb3-6a32-7f81-838f-3b15da74c14b",
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
									"5f813cb3-6a32-7f81-838f-3b15da74c14b",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "912d282c-c5e3-13a9-a875-7ec65c7bb7e7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								19,
							},
							name = "Eligible jobs",
							uuid = "bf5ef2f1-d9cb-7e99-9a21-061d9bf6ba31",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "e1b92686-824d-a13a-9990-b841e5f453d2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7382,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "67c7ad92-dca5-6c72-be9e-89efb7e1cd28",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "6944ac6d-9f6a-9231-8c4a-3f3981ded9a1",
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
									"6944ac6d-9f6a-9231-8c4a-3f3981ded9a1",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "b2c3151c-0dc0-6fe7-bbcd-8a4437999b66",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nreturn targetSlot~=nil and targetSlot~=R.mySlot()",
							name = "Other recipient",
							uuid = "a82f8d0e-7771-6951-a588-e9b4c0c380c3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nreturn targetSlot~=nil and targetSlot~=R.mySlot()",
							name = "Other recipient",
							uuid = "ee333888-0f22-f8fa-a056-67632002908d",
							version = 3,
						},
					},
				},
				displayPath = "P2",
				mechanicTime = 295.6,
				name = "[Mit] Limitless short CD - support",
				timeRange = true,
				timelineIndex = 52,
				timerEndOffset = -1,
				timerStartOffset = -3,
				uuid = "f31795d6-ba73-52aa-ad9f-f189d63421fb",
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
				name = "Potions",
				uuid = "35afc779-cef9-ada5-9b44-f161dc615dca",
			},
			objectType = "folder",
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
									"9c3f2f53-a9e1-646a-a47a-f2e21cf3a69f",
									true,
								},
								
								{
									"72c78ab6-2b72-3f29-aec8-9927b789513c",
									true,
								},
							},
							name = "Potion - Strength",
							potType = 4,
							usePot = true,
							uuid = "6ad8b816-ef88-2418-9e26-d29f5a1f9330",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Misc",
							conditions = 
							{
								
								{
									"9c3f2f53-a9e1-646a-a47a-f2e21cf3a69f",
									true,
								},
								
								{
									"1d05f597-a031-a94d-944d-18576167d694",
									true,
								},
							},
							name = "Potion - Dexterity",
							usePot = true,
							uuid = "2f64ef6d-a81e-098d-8745-009234357d84",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Misc",
							conditions = 
							{
								
								{
									"9c3f2f53-a9e1-646a-a47a-f2e21cf3a69f",
									true,
								},
								
								{
									"2ee0ba42-fbc8-5e31-ab55-94b9feddafeb",
									true,
								},
							},
							name = "Potion - Intelligence",
							potType = 2,
							usePot = true,
							uuid = "990174c5-92e0-0f84-ae59-cff0d1fc03dc",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Misc",
							conditions = 
							{
								
								{
									"9c3f2f53-a9e1-646a-a47a-f2e21cf3a69f",
									true,
								},
								
								{
									"8bead6e1-5f89-2335-968f-20cf0545fb7b",
									true,
								},
							},
							name = "Potion - Mind",
							potType = 3,
							usePot = true,
							uuid = "888887f4-d768-1089-956f-b7e933393006",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 7,
							name = "In combat",
							uuid = "9c3f2f53-a9e1-646a-a47a-f2e21cf3a69f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								19,
								20,
								21,
								22,
								32,
								34,
								37,
								39,
							},
							name = "Strength jobs",
							uuid = "72c78ab6-2b72-3f29-aec8-9927b789513c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								23,
								30,
								31,
								38,
								41,
							},
							name = "Dexterity jobs",
							uuid = "1d05f597-a031-a94d-944d-18576167d694",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								25,
								27,
								35,
								42,
							},
							name = "Intelligence jobs",
							uuid = "2ee0ba42-fbc8-5e31-ab55-94b9feddafeb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								24,
								28,
								33,
								40,
							},
							name = "Mind jobs",
							uuid = "8bead6e1-5f89-2335-968f-20cf0545fb7b",
							version = 3,
						},
					},
				},
				displayPath = "Potions",
				mechanicTime = 432.3,
				name = "[Potion] P3 reopener",
				timeRange = true,
				timelineIndex = 74,
				timerEndOffset = 8,
				timerStartOffset = 0.3,
				uuid = "31db3b07-030c-f120-b7b5-5db54a25e459",
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
				name = "P3",
				uuid = "661db63b-df84-250d-80a6-7fe96e090b8d",
			},
			objectType = "folder",
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
									"08547dcd-3998-617a-89f7-27fadf150694",
									true,
								},
								
								{
									"dc668157-f15d-ba61-bd6f-d1fc1dde4d5c",
									true,
								},
								
								{
									"9e573d20-2f91-f15c-b9a1-52229e541a43",
									true,
								},
							},
							targetContentID = 7636,
							targetType = "ContentID",
							uuid = "4304109f-70dd-959d-b267-c7443bb47ec2",
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
									"57ff73d6-5292-44fa-bc29-5e4a93bccf54",
									true,
								},
								
								{
									"e6ddf5b1-0ae0-65ae-b1be-9ec13a0e2b28",
									true,
								},
								
								{
									"67731c55-92db-afee-80cf-0f28b319a434",
									true,
								},
								
								{
									"4b138b68-9471-50da-b7d3-4bcbd60a111b",
									true,
								},
							},
							gVar = "ACR_TensorRuin3_Hotbar_Addle",
							uuid = "743f1d74-4934-b3d4-bd22-23927fcdf2ae",
							variableTogglesType = 2,
							version = 2.1,
						},
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
								20,
								22,
								30,
								34,
								39,
								41,
							},
							name = "Eligible jobs",
							uuid = "08547dcd-3998-617a-89f7-27fadf150694",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='M1'",
							name = "Assigned M1",
							uuid = "dc668157-f15d-ba61-bd6f-d1fc1dde4d5c",
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
							name = "Ready",
							uuid = "9e573d20-2f91-f15c-b9a1-52229e541a43",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								25,
								27,
								35,
								42,
							},
							name = "Eligible jobs",
							uuid = "57ff73d6-5292-44fa-bc29-5e4a93bccf54",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R2'",
							name = "Assigned R2",
							uuid = "e6ddf5b1-0ae0-65ae-b1be-9ec13a0e2b28",
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
							name = "Ready",
							uuid = "67731c55-92db-afee-80cf-0f28b319a434",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 7636,
							name = "Correct boss target",
							uuid = "4b138b68-9471-50da-b7d3-4bcbd60a111b",
							version = 3,
						},
					},
				},
				displayPath = "P3",
				mechanicTime = 441.3,
				name = "[Mit] Hello World - M1 Feint + Addle",
				timeRange = true,
				timelineIndex = 76,
				timerEndOffset = -1,
				timerStartOffset = -3,
				uuid = "df06938b-0492-b822-b7d3-528a46019d9d",
				version = 2,
			},
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
									"0d6882ac-25e8-2ae6-b874-797effdbf731",
									true,
								},
								
								{
									"f164999c-f04e-9a1c-94c2-564e957d6c30",
									true,
								},
								
								{
									"7237eda6-255e-0409-9249-da3c6759a4d9",
									true,
								},
							},
							uuid = "e9a75bbf-055c-1ecd-a9f2-09efb942e4d6",
							version = 2.1,
						},
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
							name = "Eligible jobs",
							uuid = "0d6882ac-25e8-2ae6-b874-797effdbf731",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='T1'",
							name = "Assigned T1",
							uuid = "f164999c-f04e-9a1c-94c2-564e957d6c30",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "7237eda6-255e-0409-9249-da3c6759a4d9",
							version = 3,
						},
					},
				},
				displayPath = "P3",
				mechanicTime = 441.3,
				name = "[Mit] Hello World cast - MT Rampart",
				timeRange = true,
				timelineIndex = 76,
				timerEndOffset = -2,
				timerStartOffset = -4.6,
				uuid = "fdf8b982-ed2f-c66d-b3ae-f1f1ada8bec2",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 25751,
							conditions = 
							{
								
								{
									"d807eec9-1ed9-933a-8e23-facbb52e8547",
									true,
								},
								
								{
									"5af7650d-bd7f-e7ca-b140-f9c529e1eff1",
									true,
								},
								
								{
									"1df322ab-fc8d-4173-a195-5d0bdd01cbaf",
									true,
								},
								
								{
									"2d521b57-0a95-5d9a-be98-05d51d0a52b3",
									true,
								},
							},
							uuid = "0b6420b6-c957-cde1-b3ee-26edd846d759",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25746,
							conditions = 
							{
								
								{
									"5369a069-ced4-8986-8384-6a8d5c3a5285",
									true,
								},
								
								{
									"452f2654-959f-7123-b1de-c88ccbcdf13a",
									true,
								},
								
								{
									"148b58fc-d7f8-16ac-b743-4952f4e5ede5",
									true,
								},
								
								{
									"a33b4144-9855-d704-aec1-0db764d5674f",
									true,
								},
							},
							uuid = "ac6cd292-8b3a-d38f-8994-cd603a9f066a",
							version = 2.1,
						},
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
								21,
							},
							name = "Eligible jobs",
							uuid = "d807eec9-1ed9-933a-8e23-facbb52e8547",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "5af7650d-bd7f-e7ca-b140-f9c529e1eff1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot='T1'\nreturn targetSlot~=nil and targetSlot==R.mySlot()",
							name = "Mitigation plan",
							uuid = "1df322ab-fc8d-4173-a195-5d0bdd01cbaf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25751,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "2d521b57-0a95-5d9a-be98-05d51d0a52b3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								19,
							},
							name = "Eligible jobs",
							uuid = "5369a069-ced4-8986-8384-6a8d5c3a5285",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "452f2654-959f-7123-b1de-c88ccbcdf13a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot='T1'\nreturn targetSlot~=nil and targetSlot==R.mySlot()",
							name = "Mitigation plan",
							uuid = "148b58fc-d7f8-16ac-b743-4952f4e5ede5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25746,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "a33b4144-9855-d704-aec1-0db764d5674f",
							version = 3,
						},
					},
				},
				displayPath = "P3",
				loop = true,
				mechanicTime = 441.3,
				name = "[Mit] P3 feed short CDs to MT - self",
				throttleTime = 500,
				timeRange = true,
				timelineIndex = 76,
				timerEndOffset = 142,
				timerStartOffset = -4,
				uuid = "e28ef14d-1177-10d6-970b-d881d3ead9f1",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7393,
							conditions = 
							{
								
								{
									"9e0e748d-aec6-b070-b805-49c3cb1f3ff6",
									true,
								},
								
								{
									"4e5e504b-0312-109a-a911-2bfe94196a11",
									true,
								},
								
								{
									"a0e06ef6-f395-2a4a-9c44-adcc23939e58",
									true,
								},
								
								{
									"2dff8648-6a5c-d1a4-92a6-7dd0024786b5",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "7d0735f5-ddc6-91ce-99ce-85bc04721e84",
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
									"e9d90b4e-f7f0-d8c3-acac-3685739b7b0a",
									true,
								},
								
								{
									"575a7a77-b940-f325-b721-fb871b32a924",
									true,
								},
								
								{
									"464bea8f-bc06-9f3c-addb-a2622819a6fd",
									true,
								},
								
								{
									"c3f0cf74-c87f-59c2-8353-c7dc06d3daa4",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "f7ec9156-cf26-ed5c-90e7-a5e8c8595dcb",
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
									"4e573149-abb1-6d88-8eef-e29588fee20f",
									true,
								},
								
								{
									"538c4aa8-7de1-eb96-8b9c-f2b1f40cec5a",
									true,
								},
								
								{
									"2ab6f4ff-1599-35a0-a304-f2a753602baf",
									true,
								},
								
								{
									"a57394ea-e040-5fa5-9abc-7c014f0a7925",
									true,
								},
								
								{
									"0a702096-d50c-1866-8eaa-480569d0aaa4",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "84407924-4a9b-bb0c-b81d-e628e0ea575c",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7382,
							conditions = 
							{
								
								{
									"4bb99b21-b96f-a194-9c32-48e8974bc4c6",
									true,
								},
								
								{
									"d645d6b4-7211-cfb7-a8c6-5ab8a66ebb9d",
									true,
								},
								
								{
									"8e88965e-533b-c6e6-92e5-a6e626618910",
									true,
								},
								
								{
									"c018c1d3-6eac-8f87-9a40-86f1ad7a30d6",
									true,
								},
								
								{
									"19c4c513-bfd1-3fc1-a036-600f880555b5",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "aad01ce4-61ee-736a-b03a-0f714cb6a82f",
							version = 2.1,
						},
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
								32,
							},
							name = "Eligible jobs",
							uuid = "9e0e748d-aec6-b070-b805-49c3cb1f3ff6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "4e5e504b-0312-109a-a911-2bfe94196a11",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7393,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "a0e06ef6-f395-2a4a-9c44-adcc23939e58",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot='T1'\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "7296876f-d396-067f-8f48-476f3ac4a154",
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
									"7296876f-d396-067f-8f48-476f3ac4a154",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "2dff8648-6a5c-d1a4-92a6-7dd0024786b5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								37,
							},
							name = "Eligible jobs",
							uuid = "e9d90b4e-f7f0-d8c3-acac-3685739b7b0a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "575a7a77-b940-f325-b721-fb871b32a924",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25758,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "464bea8f-bc06-9f3c-addb-a2622819a6fd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot='T1'\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "29e51e74-1a10-b2cc-aec2-9906637a1b1d",
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
									"29e51e74-1a10-b2cc-aec2-9906637a1b1d",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "c3f0cf74-c87f-59c2-8353-c7dc06d3daa4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								21,
							},
							name = "Eligible jobs",
							uuid = "4e573149-abb1-6d88-8eef-e29588fee20f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "2ab6f4ff-1599-35a0-a304-f2a753602baf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16464,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "a57394ea-e040-5fa5-9abc-7c014f0a7925",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot='T1'\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "01dcb6dd-38f4-a3ee-8332-2f200abeb933",
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
									"01dcb6dd-38f4-a3ee-8332-2f200abeb933",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "0a702096-d50c-1866-8eaa-480569d0aaa4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								19,
							},
							name = "Eligible jobs",
							uuid = "4bb99b21-b96f-a194-9c32-48e8974bc4c6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "8e88965e-533b-c6e6-92e5-a6e626618910",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7382,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "c018c1d3-6eac-8f87-9a40-86f1ad7a30d6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot='T1'\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "a94c9df2-c5d4-5df8-9edb-98e0600200b1",
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
									"a94c9df2-c5d4-5df8-9edb-98e0600200b1",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "19c4c513-bfd1-3fc1-a036-600f880555b5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot='T1'\nreturn targetSlot~=nil and targetSlot~=R.mySlot()",
							name = "Other recipient",
							uuid = "538c4aa8-7de1-eb96-8b9c-f2b1f40cec5a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot='T1'\nreturn targetSlot~=nil and targetSlot~=R.mySlot()",
							name = "Other recipient",
							uuid = "d645d6b4-7211-cfb7-a8c6-5ab8a66ebb9d",
							version = 3,
						},
					},
				},
				displayPath = "P3",
				loop = true,
				mechanicTime = 441.3,
				name = "[Mit] P3 feed short CDs to MT - support",
				throttleTime = 500,
				timeRange = true,
				timelineIndex = 76,
				timerEndOffset = 142,
				timerStartOffset = -4,
				uuid = "3906ee2b-f776-04fa-86cf-979da1cda6ae",
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
				name = "P3",
				uuid = "aa87ffce-54b9-7bd2-9807-7a06b4a002b0",
			},
			objectType = "folder",
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
									"7285a66c-710e-4648-a41e-45ee9b97f0ca",
									true,
								},
								
								{
									"377fe0f2-5814-5e4e-a6db-00634d42fb66",
									true,
								},
								
								{
									"8542fb57-ba2c-d5a5-bcdb-6b2cc9571e24",
									true,
								},
							},
							targetContentID = 7636,
							targetType = "ContentID",
							uuid = "07aff95f-2290-adf0-9cfe-b5931202c2e2",
							version = 2.1,
						},
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
								20,
								22,
								30,
								34,
								39,
								41,
							},
							name = "Eligible jobs",
							uuid = "7285a66c-710e-4648-a41e-45ee9b97f0ca",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='M2'",
							name = "Assigned M2",
							uuid = "377fe0f2-5814-5e4e-a6db-00634d42fb66",
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
							name = "Ready",
							uuid = "8542fb57-ba2c-d5a5-bcdb-6b2cc9571e24",
							version = 3,
						},
					},
				},
				displayPath = "P3",
				mechanicTime = 464.4,
				name = "[Mit] Latent 1 - M2 Feint",
				timeRange = true,
				timelineIndex = 78,
				timerEndOffset = -1,
				timerStartOffset = -3,
				uuid = "4f41e883-e6da-797d-b44d-0609c7e87ded",
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
				name = "P3",
				uuid = "0c0b44f6-e00c-822b-a78d-bd6fc85e39e4",
			},
			objectType = "folder",
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
									"be0dff71-a89c-22f1-9825-eba2edb7cfca",
									true,
								},
								
								{
									"bc566332-5004-2d52-8b74-626d340f6ab8",
									true,
								},
								
								{
									"3e12bee9-9166-d7dd-adf5-b8f38d668238",
									true,
								},
							},
							uuid = "da4b5293-5527-6c5e-b627-c76a90278331",
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
									"7ccc24ec-addf-51c8-813f-72d2cf962f6a",
									true,
								},
								
								{
									"46957a05-01ae-318f-aa96-edf4ae9e9853",
									true,
								},
								
								{
									"71b267e3-20fa-6e05-b835-c9f5cd97acf9",
									true,
								},
							},
							uuid = "8aa9fec5-8c83-b107-bd66-3e6eb5ab76dd",
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
									"4e673812-7fb3-f688-879e-3f03de424985",
									true,
								},
								
								{
									"7ef191f4-1256-69cf-a4c0-4d58fdbcbec6",
									true,
								},
								
								{
									"66760bec-717e-a5c6-bb1d-1e2b85752ca3",
									true,
								},
							},
							uuid = "48357f99-0f12-1bd4-a189-5008a4e193cd",
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
									"514a9a5e-585b-09cb-aa0a-e32845d46148",
									true,
								},
								
								{
									"1876dcee-c3aa-4f82-b6b1-9e6d56800039",
									true,
								},
								
								{
									"77da678a-dccf-5158-ab97-a6fa778ffe23",
									true,
								},
							},
							uuid = "dd88609d-1887-2f4b-a67a-920244fd1b42",
							version = 2.1,
						},
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
								23,
							},
							name = "Eligible jobs",
							uuid = "be0dff71-a89c-22f1-9825-eba2edb7cfca",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R1'",
							name = "Assigned R1",
							uuid = "bc566332-5004-2d52-8b74-626d340f6ab8",
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
							name = "Ready",
							uuid = "3e12bee9-9166-d7dd-adf5-b8f38d668238",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								31,
							},
							name = "Eligible jobs",
							uuid = "7ccc24ec-addf-51c8-813f-72d2cf962f6a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R1'",
							name = "Assigned R1",
							uuid = "46957a05-01ae-318f-aa96-edf4ae9e9853",
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
							name = "Ready",
							uuid = "71b267e3-20fa-6e05-b835-c9f5cd97acf9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								38,
							},
							name = "Eligible jobs",
							uuid = "4e673812-7fb3-f688-879e-3f03de424985",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R1'",
							name = "Assigned R1",
							uuid = "7ef191f4-1256-69cf-a4c0-4d58fdbcbec6",
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
							name = "Ready",
							uuid = "66760bec-717e-a5c6-bb1d-1e2b85752ca3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								35,
							},
							name = "Eligible jobs",
							uuid = "514a9a5e-585b-09cb-aa0a-e32845d46148",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R2'",
							name = "Assigned R2",
							uuid = "1876dcee-c3aa-4f82-b6b1-9e6d56800039",
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
							name = "Ready",
							uuid = "77da678a-dccf-5158-ab97-a6fa778ffe23",
							version = 3,
						},
					},
				},
				displayPath = "P3",
				mechanicTime = 506.5,
				name = "[Mit] Latent 3 - party + Barrier",
				timeRange = true,
				timelineIndex = 84,
				timerEndOffset = -1,
				timerStartOffset = -3,
				uuid = "82c85d0e-18c5-2955-8db0-80fbca57f2f5",
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
				name = "P3",
				uuid = "18a22a5f-bfbb-ef4a-9827-39749310777d",
			},
			objectType = "folder",
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
									"69818137-f70d-28b6-9e48-b21a115c464f",
									true,
								},
								
								{
									"115631c2-03dd-7fed-944e-e5e956fc44ce",
									true,
								},
								
								{
									"c5a6b6ad-575d-84d7-9399-9e453ad86e72",
									true,
								},
							},
							targetContentID = 7636,
							targetType = "ContentID",
							uuid = "c4a041df-fd5b-ad45-a9bb-fde17dc43cc7",
							version = 2.1,
						},
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
								31,
							},
							name = "Eligible jobs",
							uuid = "69818137-f70d-28b6-9e48-b21a115c464f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R1'",
							name = "Assigned R1",
							uuid = "115631c2-03dd-7fed-944e-e5e956fc44ce",
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
							name = "Ready",
							uuid = "c5a6b6ad-575d-84d7-9399-9e453ad86e72",
							version = 3,
						},
					},
				},
				displayPath = "P3",
				mechanicTime = 527.8,
				name = "[Mit] Latent 4 - Dismantle",
				timeRange = true,
				timelineIndex = 88,
				timerEndOffset = -1,
				timerStartOffset = -3,
				uuid = "7f31034e-cc69-4392-8a7e-b1b055f856d1",
				version = 2,
			},
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
									"e3024ab5-bd0d-dcce-8a4f-4f1aa59c9725",
									true,
								},
								
								{
									"519beaa1-65fa-3c83-9f24-84107ce3187a",
									true,
								},
								
								{
									"6ddaf2c6-6468-b38b-8990-ceb1bf1e6b54",
									true,
								},
							},
							uuid = "d5d44a2a-f1f9-1403-bc98-ccd172f73cc0",
							version = 2.1,
						},
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
							name = "Eligible jobs",
							uuid = "e3024ab5-bd0d-dcce-8a4f-4f1aa59c9725",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='T1'",
							name = "Assigned T1",
							uuid = "519beaa1-65fa-3c83-9f24-84107ce3187a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "6ddaf2c6-6468-b38b-8990-ceb1bf1e6b54",
							version = 3,
						},
					},
				},
				displayPath = "P3",
				mechanicTime = 527.8,
				name = "[Mit] Latent 4 - MT Rampart when ready",
				timeRange = true,
				timelineIndex = 88,
				timerEndOffset = 10,
				timerStartOffset = -2,
				uuid = "a9f9de79-9ec1-e73b-8f5b-927ceb6375a0",
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
				name = "P3",
				uuid = "d7b40705-2405-5ae1-84d0-c541486071ad",
			},
			objectType = "folder",
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
									"61012231-07ef-ab1c-a8e2-5f637b2eeebe",
									true,
								},
								
								{
									"c9c8f757-62aa-fffc-a10e-9b0ca2c2ea5d",
									true,
								},
								
								{
									"73d5c65a-44b2-003d-a99d-d3ca2223c931",
									true,
								},
							},
							targetContentID = 7636,
							targetType = "ContentID",
							uuid = "37e31028-4807-694f-926d-1c8d03b970e3",
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
									"370d716a-ac0a-4f6f-a108-5ad6c09fedbd",
									true,
								},
								
								{
									"af9021de-862b-8faf-8399-865212263b6d",
									true,
								},
								
								{
									"f035fc70-3587-b26c-9165-626adb6622c4",
									true,
								},
								
								{
									"7176cfd1-ba8b-7b3b-8db6-e25f9b42e004",
									true,
								},
							},
							gVar = "ACR_TensorRuin3_Hotbar_Addle",
							uuid = "04bf852b-c814-c818-83b9-1cf74a5a2e50",
							variableTogglesType = 2,
							version = 2.1,
						},
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
								20,
								22,
								30,
								34,
								39,
								41,
							},
							name = "Eligible jobs",
							uuid = "61012231-07ef-ab1c-a8e2-5f637b2eeebe",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='M1'",
							name = "Assigned M1",
							uuid = "c9c8f757-62aa-fffc-a10e-9b0ca2c2ea5d",
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
							name = "Ready",
							uuid = "73d5c65a-44b2-003d-a99d-d3ca2223c931",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								25,
								27,
								35,
								42,
							},
							name = "Eligible jobs",
							uuid = "370d716a-ac0a-4f6f-a108-5ad6c09fedbd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R2'",
							name = "Assigned R2",
							uuid = "af9021de-862b-8faf-8399-865212263b6d",
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
							name = "Ready",
							uuid = "f035fc70-3587-b26c-9165-626adb6622c4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 7636,
							name = "Correct boss target",
							uuid = "7176cfd1-ba8b-7b3b-8db6-e25f9b42e004",
							version = 3,
						},
					},
				},
				displayPath = "P3",
				mechanicTime = 550.1,
				name = "[Mit] Critical Error - M1 Feint + Addle",
				timeRange = true,
				timelineIndex = 91,
				timerEndOffset = -1,
				timerStartOffset = -3,
				uuid = "ca644408-8e64-de2e-98ab-87566db694fb",
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
				name = "P4",
				uuid = "f2997d6c-b0b5-26a8-b6d3-1155c3728157",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 25751,
							conditions = 
							{
								
								{
									"fbe15ad6-d2c7-6b75-bbea-422d7d76eada",
									true,
								},
								
								{
									"63d9ddc2-3be5-eade-9ff1-7d16c70431c4",
									true,
								},
								
								{
									"4c758085-aa39-0899-b4c4-3f957ad51696",
									true,
								},
								
								{
									"070fed14-c15e-d5c8-9d97-dfe3d14dd22e",
									true,
								},
							},
							uuid = "d723fe1d-143f-22d1-b1c5-2d0e5fbc1ffd",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25746,
							conditions = 
							{
								
								{
									"7ca948e2-6494-eaf5-90e2-e19119556a9c",
									true,
								},
								
								{
									"172d1126-2e79-031b-bcc1-0631febaa4ca",
									true,
								},
								
								{
									"5ca8a368-ad96-df11-a2d5-f68ea0dcae88",
									true,
								},
								
								{
									"84d243a1-257d-bfac-b232-bd15c085a625",
									true,
								},
							},
							uuid = "2b54b822-c279-2e1c-bd65-fd3e12e8db21",
							version = 2.1,
						},
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
								21,
							},
							name = "Eligible jobs",
							uuid = "fbe15ad6-d2c7-6b75-bbea-422d7d76eada",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "63d9ddc2-3be5-eade-9ff1-7d16c70431c4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(R.mySlot()=='T1' and 'R1' or R.mySlot()=='T2' and 'R2')\nreturn targetSlot~=nil and targetSlot==R.mySlot()",
							name = "Mitigation plan",
							uuid = "4c758085-aa39-0899-b4c4-3f957ad51696",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25751,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "070fed14-c15e-d5c8-9d97-dfe3d14dd22e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								19,
							},
							name = "Eligible jobs",
							uuid = "7ca948e2-6494-eaf5-90e2-e19119556a9c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "172d1126-2e79-031b-bcc1-0631febaa4ca",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(R.mySlot()=='T1' and 'R1' or R.mySlot()=='T2' and 'R2')\nreturn targetSlot~=nil and targetSlot==R.mySlot()",
							name = "Mitigation plan",
							uuid = "5ca8a368-ad96-df11-a2d5-f68ea0dcae88",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25746,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "84d243a1-257d-bfac-b232-bd15c085a625",
							version = 3,
						},
					},
				},
				displayPath = "P4",
				mechanicTime = 621.4,
				name = "[Mit] Protean 1 short CDs to R1/R2 - self",
				timeRange = true,
				timelineIndex = 102,
				timerEndOffset = -0.2,
				timerStartOffset = -2,
				uuid = "e85aeb3c-fff4-c5c3-9e6c-b2890e99a572",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7393,
							conditions = 
							{
								
								{
									"fef21d3a-22f6-4c04-9fe9-7af69ae12307",
									true,
								},
								
								{
									"1663085d-92f4-7cec-97f9-b77e27c30068",
									true,
								},
								
								{
									"69de6370-d46f-7560-b549-f470302ad463",
									true,
								},
								
								{
									"2d6014b9-c39b-22ff-9b25-498690099fc9",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "16f13f57-74e6-ca16-b822-f6113c62f34d",
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
									"e927f427-8111-e02c-b974-990481674e5c",
									true,
								},
								
								{
									"44f264f9-8548-1810-9496-2d063c412c5e",
									true,
								},
								
								{
									"0c1bb169-fc79-d53e-a9ae-c58d2033480e",
									true,
								},
								
								{
									"7c5709ae-b01f-180d-95b3-bdbfc6109e19",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "e69251f4-21c7-930b-985f-78e330483dd9",
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
									"0015e1d5-2f3c-2d21-9dc7-835890c0e8be",
									true,
								},
								
								{
									"a87a374b-398e-117e-8332-bf8677947d85",
									true,
								},
								
								{
									"3d1cf8d5-2f7f-8412-9a09-661ec18b8d7e",
									true,
								},
								
								{
									"2be06d06-b096-a585-aef5-788c11373ad4",
									true,
								},
								
								{
									"cc33c524-3231-179d-bb7f-9a94c6e1c361",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "7b0390f0-a94a-0ec0-b605-1c406bbdf75f",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7382,
							conditions = 
							{
								
								{
									"2dca90e1-dcd1-67f3-bf6b-42ca32f2f609",
									true,
								},
								
								{
									"841645d0-e8b4-6a52-8e17-4fdf16e09e9e",
									true,
								},
								
								{
									"0c6b78f8-71cd-7335-b37e-3836a63d854b",
									true,
								},
								
								{
									"814b7fb4-32bd-94ec-9782-cda5a3fe0bc8",
									true,
								},
								
								{
									"9f6ce2da-0821-25ee-aac3-487be24be87f",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "5780ebd9-0e53-b275-a3a9-c408b8879b15",
							version = 2.1,
						},
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
								32,
							},
							name = "Eligible jobs",
							uuid = "fef21d3a-22f6-4c04-9fe9-7af69ae12307",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "1663085d-92f4-7cec-97f9-b77e27c30068",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7393,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "69de6370-d46f-7560-b549-f470302ad463",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(R.mySlot()=='T1' and 'R1' or R.mySlot()=='T2' and 'R2')\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "5a87f11a-d6db-7217-87db-c7b6c3aa1634",
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
									"5a87f11a-d6db-7217-87db-c7b6c3aa1634",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "2d6014b9-c39b-22ff-9b25-498690099fc9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								37,
							},
							name = "Eligible jobs",
							uuid = "e927f427-8111-e02c-b974-990481674e5c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "44f264f9-8548-1810-9496-2d063c412c5e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25758,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "0c1bb169-fc79-d53e-a9ae-c58d2033480e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(R.mySlot()=='T1' and 'R1' or R.mySlot()=='T2' and 'R2')\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "3b8f7924-31e5-15d5-881f-bc16a88c9523",
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
									"3b8f7924-31e5-15d5-881f-bc16a88c9523",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "7c5709ae-b01f-180d-95b3-bdbfc6109e19",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								21,
							},
							name = "Eligible jobs",
							uuid = "0015e1d5-2f3c-2d21-9dc7-835890c0e8be",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "3d1cf8d5-2f7f-8412-9a09-661ec18b8d7e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16464,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "2be06d06-b096-a585-aef5-788c11373ad4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(R.mySlot()=='T1' and 'R1' or R.mySlot()=='T2' and 'R2')\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "2e5e2d1c-6cc9-3e61-802a-5bb5245e4ff4",
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
									"2e5e2d1c-6cc9-3e61-802a-5bb5245e4ff4",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "cc33c524-3231-179d-bb7f-9a94c6e1c361",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								19,
							},
							name = "Eligible jobs",
							uuid = "2dca90e1-dcd1-67f3-bf6b-42ca32f2f609",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "0c6b78f8-71cd-7335-b37e-3836a63d854b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7382,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "814b7fb4-32bd-94ec-9782-cda5a3fe0bc8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(R.mySlot()=='T1' and 'R1' or R.mySlot()=='T2' and 'R2')\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "dce36ca3-a10f-eff2-93b9-97995e12c092",
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
									"dce36ca3-a10f-eff2-93b9-97995e12c092",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "9f6ce2da-0821-25ee-aac3-487be24be87f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(R.mySlot()=='T1' and 'R1' or R.mySlot()=='T2' and 'R2')\nreturn targetSlot~=nil and targetSlot~=R.mySlot()",
							name = "Other recipient",
							uuid = "a87a374b-398e-117e-8332-bf8677947d85",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(R.mySlot()=='T1' and 'R1' or R.mySlot()=='T2' and 'R2')\nreturn targetSlot~=nil and targetSlot~=R.mySlot()",
							name = "Other recipient",
							uuid = "841645d0-e8b4-6a52-8e17-4fdf16e09e9e",
							version = 3,
						},
					},
				},
				displayPath = "P4",
				mechanicTime = 621.4,
				name = "[Mit] Protean 1 short CDs to R1/R2 - support",
				timeRange = true,
				timelineIndex = 102,
				timerEndOffset = -0.2,
				timerStartOffset = -2,
				uuid = "264bc91c-7b26-6bd2-bcae-a759b97052d6",
				version = 2,
			},
		},
	},
	[112] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P4",
				uuid = "56b9f130-e63f-54ca-9cbd-bba1e8a4240b",
			},
			objectType = "folder",
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
									"b5b2e422-6196-0de3-94e8-bbc9b3a51f21",
									true,
								},
								
								{
									"644c466c-33be-1887-bc32-8c21547eb1f4",
									true,
								},
								
								{
									"ffbd2f2c-52fc-ad3f-84f0-6012c9687001",
									true,
								},
							},
							uuid = "2a737d5d-c4f0-b85e-924f-55183a85e20e",
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
									"dc510044-b316-1de5-8335-6b1af2e5254f",
									true,
								},
								
								{
									"d30b7059-4edd-50af-b7ce-421527810614",
									true,
								},
								
								{
									"b4a51be3-e9e2-0fd1-b3a4-24fff65cbf7f",
									true,
								},
							},
							uuid = "e7403b18-2d3a-a6ca-a4e9-d33abe8313c3",
							version = 2.1,
						},
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
								31,
							},
							name = "Eligible jobs",
							uuid = "b5b2e422-6196-0de3-94e8-bbc9b3a51f21",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R1'",
							name = "Assigned R1",
							uuid = "644c466c-33be-1887-bc32-8c21547eb1f4",
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
							name = "Ready",
							uuid = "ffbd2f2c-52fc-ad3f-84f0-6012c9687001",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								35,
							},
							name = "Eligible jobs",
							uuid = "dc510044-b316-1de5-8335-6b1af2e5254f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R2'",
							name = "Assigned R2",
							uuid = "d30b7059-4edd-50af-b7ce-421527810614",
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
							name = "Ready",
							uuid = "b4a51be3-e9e2-0fd1-b3a4-24fff65cbf7f",
							version = 3,
						},
					},
				},
				displayPath = "P4",
				mechanicTime = 636.8,
				name = "[Mit] Stack 2 - MCH party + Barrier",
				timeRange = true,
				timelineIndex = 112,
				timerEndOffset = -1,
				timerStartOffset = -3,
				uuid = "1e761de6-8dd7-037c-b59c-d469fb055171",
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
				name = "P4",
				uuid = "735e5734-4cef-8328-a7ae-b97d5ce874d5",
			},
			objectType = "folder",
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
									"cb96a491-7062-cfde-a27d-1a854dd3a0d5",
									true,
								},
								
								{
									"5c48d33b-5219-af74-af19-c776dec5dca4",
									true,
								},
								
								{
									"c7eb1ba1-5fae-1a79-8268-352918c31d12",
									true,
								},
							},
							targetContentID = 7636,
							targetType = "ContentID",
							uuid = "fe948272-a892-2d8a-8810-64aa886a0688",
							version = 2.1,
						},
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
								20,
								22,
								30,
								34,
								39,
								41,
							},
							name = "Eligible jobs",
							uuid = "cb96a491-7062-cfde-a27d-1a854dd3a0d5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='M2'",
							name = "Assigned M2",
							uuid = "5c48d33b-5219-af74-af19-c776dec5dca4",
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
							name = "Ready",
							uuid = "c7eb1ba1-5fae-1a79-8268-352918c31d12",
							version = 3,
						},
					},
				},
				displayPath = "P4",
				mechanicTime = 661.6,
				name = "[Mit] Blue Screen - M2 Feint",
				timeRange = true,
				timelineIndex = 121,
				timerEndOffset = -1,
				timerStartOffset = -3,
				uuid = "afab2692-90c1-7695-9d68-37b9ea8bfa46",
				version = 2,
			},
		},
	},
	[127] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P5",
				uuid = "dcfa61be-33b0-e2fe-ab1b-ee81681bda97",
			},
			objectType = "folder",
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
									"c0bb2351-f96d-1b97-9672-b1447d456955",
									true,
								},
								
								{
									"abfc5531-54e3-e54d-93da-8bd28f9828f1",
									true,
								},
								
								{
									"f258d14b-7a79-b3be-aa69-4d97e3827e8a",
									true,
								},
								
								{
									"3483c296-2ca0-08d8-a90f-756dea4cf8b5",
									true,
								},
							},
							uuid = "0505b104-36be-a923-8123-e7cd3792a14a",
							version = 2.1,
						},
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
							name = "Eligible jobs",
							uuid = "c0bb2351-f96d-1b97-9672-b1447d456955",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "abfc5531-54e3-e54d-93da-8bd28f9828f1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal p=Settings.FFXIVMINION.LPDU_TOP_SolarTankPlan1\nif p==nil or p==4 then p=0 end\nif p~=0 then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "f258d14b-7a79-b3be-aa69-4d97e3827e8a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "3483c296-2ca0-08d8-a90f-756dea4cf8b5",
							version = 3,
						},
					},
				},
				displayPath = "P5",
				mechanicTime = 723.6,
				name = "[Mit] Solar Ray 1 kitchen sink - Rampart",
				timeRange = true,
				timelineIndex = 127,
				timerEndOffset = -4,
				timerStartOffset = -8,
				uuid = "8c0bda55-b4a4-8c05-ad57-234229cea23a",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 25751,
							conditions = 
							{
								
								{
									"7240aa2d-6130-ce55-bc73-be43f991fb9a",
									true,
								},
								
								{
									"1ad0acd5-60e3-7d9c-9aaa-d00d27637a85",
									true,
								},
								
								{
									"044722df-e597-3944-a0a4-414a3dbfd480",
									true,
								},
								
								{
									"df807bac-9c4e-5b48-a726-ea19f3dd034b",
									true,
								},
							},
							uuid = "61a658c9-8d7a-7e3e-82e0-44836295d441",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25746,
							conditions = 
							{
								
								{
									"59f31367-3e3d-a46b-ae55-cd6b42b5f209",
									true,
								},
								
								{
									"9f3dc164-2503-0ffd-ae6d-0560aa1433b9",
									true,
								},
								
								{
									"d706cc82-ebeb-c42a-a0b2-83d8038133d2",
									true,
								},
								
								{
									"e0c7f398-704f-c99f-b038-9b50d80711a6",
									true,
								},
							},
							uuid = "0422b46a-9682-7b87-83ac-b26307d59ffe",
							version = 2.1,
						},
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
								21,
							},
							name = "Eligible jobs",
							uuid = "7240aa2d-6130-ce55-bc73-be43f991fb9a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "1ad0acd5-60e3-7d9c-9aaa-d00d27637a85",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal p=Settings.FFXIVMINION.LPDU_TOP_SolarTankPlan1\nif p==nil or p==4 then p=0 end\nif p~=0 then return false end\nlocal targetSlot=R.mySlot()\nreturn targetSlot~=nil and targetSlot==R.mySlot()",
							name = "Mitigation plan",
							uuid = "044722df-e597-3944-a0a4-414a3dbfd480",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25751,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "df807bac-9c4e-5b48-a726-ea19f3dd034b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								19,
							},
							name = "Eligible jobs",
							uuid = "59f31367-3e3d-a46b-ae55-cd6b42b5f209",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "9f3dc164-2503-0ffd-ae6d-0560aa1433b9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal p=Settings.FFXIVMINION.LPDU_TOP_SolarTankPlan1\nif p==nil or p==4 then p=0 end\nif p~=0 then return false end\nlocal targetSlot=R.mySlot()\nreturn targetSlot~=nil and targetSlot==R.mySlot()",
							name = "Mitigation plan",
							uuid = "d706cc82-ebeb-c42a-a0b2-83d8038133d2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25746,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "e0c7f398-704f-c99f-b038-9b50d80711a6",
							version = 3,
						},
					},
				},
				displayPath = "P5",
				mechanicTime = 723.6,
				name = "[Mit] Solar Ray 1 kitchen sink - short CD - self",
				timeRange = true,
				timelineIndex = 127,
				timerEndOffset = -0.5,
				timerStartOffset = -2.3,
				uuid = "2021a607-8c0d-5357-8dbc-71b28141fef3",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7393,
							conditions = 
							{
								
								{
									"f6e35fe6-a59c-93a9-b44a-c6d27b25a2bb",
									true,
								},
								
								{
									"ce30cae9-3db2-8143-9f56-7b60bd831862",
									true,
								},
								
								{
									"ecb41bd1-402a-812c-af4f-01f712e62fce",
									true,
								},
								
								{
									"00e02da5-8b47-e070-ad7a-1f3e84719063",
									true,
								},
								
								{
									"4958b9d8-b113-dca6-b631-ec7e145297d9",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "2f6e4ec3-e8b8-74b3-9129-6b5b675edf9d",
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
									"cdf50941-ada6-b3e8-bad6-d5aa13803da4",
									true,
								},
								
								{
									"70136d5c-4310-9728-9777-0d3baf41f714",
									true,
								},
								
								{
									"a76fd3fa-eb34-c1e0-bd2f-8d7fcddc6c24",
									true,
								},
								
								{
									"818e1647-5d1a-e59e-b3cf-e3f42671b37e",
									true,
								},
								
								{
									"0c7cb3c6-9918-97ab-9b98-4bdd8c63d73b",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "872e23bf-ca85-efeb-9299-ccd3afa713c1",
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
									"c944857f-bdf3-b978-9db1-1ffcd7ca9473",
									true,
								},
								
								{
									"75a2786c-97fc-290a-bd18-0c0b4a6c712d",
									true,
								},
								
								{
									"464363ab-5f33-4259-9100-7db72de7b86e",
									true,
								},
								
								{
									"7d8c2a6a-9d36-2da5-8a56-e75e51c6c8a8",
									true,
								},
								
								{
									"33510063-c61d-78f8-98ab-6c82d056b399",
									true,
								},
								
								{
									"f59e7c4b-2cad-23cd-b5e9-6df5cbda507b",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "dee68bc6-5306-d3a8-ba5f-17493452e758",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7382,
							conditions = 
							{
								
								{
									"710d4a28-4d04-678d-9458-facc540b00c2",
									true,
								},
								
								{
									"d4f775d4-d353-c134-a894-815fc1934bd7",
									true,
								},
								
								{
									"74e7afe5-c500-05a8-9561-a16d4c507398",
									true,
								},
								
								{
									"85ebd890-4838-6946-b91c-c60b7b0dd12b",
									true,
								},
								
								{
									"c95853b3-d183-2d4d-9e85-2f77a9df22b1",
									true,
								},
								
								{
									"2d60a56f-196e-d5ed-8fa1-c6bbec2100ec",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "cb6474f3-4da6-aedf-8e29-fc2b06a851da",
							version = 2.1,
						},
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
								32,
							},
							name = "Eligible jobs",
							uuid = "f6e35fe6-a59c-93a9-b44a-c6d27b25a2bb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "ce30cae9-3db2-8143-9f56-7b60bd831862",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal p=Settings.FFXIVMINION.LPDU_TOP_SolarTankPlan1\nif p==nil or p==4 then p=0 end\nif p~=0 then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "ecb41bd1-402a-812c-af4f-01f712e62fce",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7393,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "00e02da5-8b47-e070-ad7a-1f3e84719063",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "d028237c-ed10-b857-b27f-e725b1cab6de",
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
									"d028237c-ed10-b857-b27f-e725b1cab6de",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "4958b9d8-b113-dca6-b631-ec7e145297d9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								37,
							},
							name = "Eligible jobs",
							uuid = "cdf50941-ada6-b3e8-bad6-d5aa13803da4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "70136d5c-4310-9728-9777-0d3baf41f714",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal p=Settings.FFXIVMINION.LPDU_TOP_SolarTankPlan1\nif p==nil or p==4 then p=0 end\nif p~=0 then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "a76fd3fa-eb34-c1e0-bd2f-8d7fcddc6c24",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25758,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "818e1647-5d1a-e59e-b3cf-e3f42671b37e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "3f62cd7d-2f3f-7bcc-aa7f-2174046a1775",
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
									"3f62cd7d-2f3f-7bcc-aa7f-2174046a1775",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "0c7cb3c6-9918-97ab-9b98-4bdd8c63d73b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								21,
							},
							name = "Eligible jobs",
							uuid = "c944857f-bdf3-b978-9db1-1ffcd7ca9473",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "464363ab-5f33-4259-9100-7db72de7b86e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal p=Settings.FFXIVMINION.LPDU_TOP_SolarTankPlan1\nif p==nil or p==4 then p=0 end\nif p~=0 then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "7d8c2a6a-9d36-2da5-8a56-e75e51c6c8a8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16464,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "33510063-c61d-78f8-98ab-6c82d056b399",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "8755a85a-a202-26b7-bf24-00f32f72e632",
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
									"8755a85a-a202-26b7-bf24-00f32f72e632",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "f59e7c4b-2cad-23cd-b5e9-6df5cbda507b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								19,
							},
							name = "Eligible jobs",
							uuid = "710d4a28-4d04-678d-9458-facc540b00c2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "74e7afe5-c500-05a8-9561-a16d4c507398",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal p=Settings.FFXIVMINION.LPDU_TOP_SolarTankPlan1\nif p==nil or p==4 then p=0 end\nif p~=0 then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "85ebd890-4838-6946-b91c-c60b7b0dd12b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7382,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "c95853b3-d183-2d4d-9e85-2f77a9df22b1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "6efe003b-c80f-e9dc-bbad-b2f8d2572931",
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
									"6efe003b-c80f-e9dc-bbad-b2f8d2572931",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "2d60a56f-196e-d5ed-8fa1-c6bbec2100ec",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nreturn targetSlot~=nil and targetSlot~=R.mySlot()",
							name = "Other recipient",
							uuid = "75a2786c-97fc-290a-bd18-0c0b4a6c712d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nreturn targetSlot~=nil and targetSlot~=R.mySlot()",
							name = "Other recipient",
							uuid = "d4f775d4-d353-c134-a894-815fc1934bd7",
							version = 3,
						},
					},
				},
				displayPath = "P5",
				mechanicTime = 723.6,
				name = "[Mit] Solar Ray 1 kitchen sink - short CD - support",
				timeRange = true,
				timelineIndex = 127,
				timerEndOffset = -0.5,
				timerStartOffset = -2.3,
				uuid = "e4abee67-ac0a-751e-a6a4-941e56256314",
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
				name = "P5",
				uuid = "98c5b0b9-3b39-3af7-ab18-acadfa886913",
			},
			objectType = "folder",
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
									"bdfa8fd3-1822-52d7-aa39-74493b7d419a",
									true,
								},
								
								{
									"ed745042-411c-5468-9c4e-68f566aab386",
									true,
								},
								
								{
									"227f40e6-82bb-cc4b-8208-75e9824ce08c",
									true,
								},
							},
							uuid = "ecaf4911-2672-6122-9043-c6beac2dd8b1",
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
									"fe56179e-bc2b-0b51-97a2-a544c06a2bb5",
									true,
								},
								
								{
									"98abb94f-8763-8f33-8f9b-2a3613ffcfec",
									true,
								},
								
								{
									"b3122dde-c71e-bb1b-ada6-33b1a16fbe08",
									true,
								},
							},
							uuid = "40255d2f-0692-11e3-90ec-eb00dc87fcd1",
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
									"0a6020ce-2c5b-88dd-adec-af810d794c64",
									true,
								},
								
								{
									"5162e189-0f77-7385-a2a5-4e8cf07ba831",
									true,
								},
								
								{
									"026bc8b2-5459-fe86-8b15-aa63991e7046",
									true,
								},
							},
							uuid = "b4037657-ff59-9b8d-a285-3f16d9f04b38",
							version = 2.1,
						},
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
								23,
							},
							name = "Eligible jobs",
							uuid = "bdfa8fd3-1822-52d7-aa39-74493b7d419a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R1'",
							name = "Assigned R1",
							uuid = "ed745042-411c-5468-9c4e-68f566aab386",
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
							name = "Ready",
							uuid = "227f40e6-82bb-cc4b-8208-75e9824ce08c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								31,
							},
							name = "Eligible jobs",
							uuid = "fe56179e-bc2b-0b51-97a2-a544c06a2bb5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R1'",
							name = "Assigned R1",
							uuid = "98abb94f-8763-8f33-8f9b-2a3613ffcfec",
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
							name = "Ready",
							uuid = "b3122dde-c71e-bb1b-ada6-33b1a16fbe08",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								38,
							},
							name = "Eligible jobs",
							uuid = "0a6020ce-2c5b-88dd-adec-af810d794c64",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R1'",
							name = "Assigned R1",
							uuid = "5162e189-0f77-7385-a2a5-4e8cf07ba831",
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
							name = "Ready",
							uuid = "026bc8b2-5459-fe86-8b15-aa63991e7046",
							version = 3,
						},
					},
				},
				displayPath = "P5",
				mechanicTime = 726.8,
				name = "[Mit] After Solar Ray 1 - party",
				timeRange = true,
				timelineIndex = 128,
				timerEndOffset = 3,
				timerStartOffset = 0.5,
				uuid = "d948562d-1635-860e-a2a5-c88704939c70",
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
				name = "P5",
				uuid = "5ca57432-ca8d-a8b8-a8ff-865b9b8f010c",
			},
			objectType = "folder",
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
									"e30de1ff-003e-0c5f-bdac-87d8980b4f61",
									true,
								},
								
								{
									"e3843613-b169-a188-a9d7-964533f03e15",
									true,
								},
								
								{
									"0077e016-d30a-63fd-b6f7-7408393daaff",
									true,
								},
							},
							targetContentID = 12257,
							targetType = "ContentID",
							uuid = "ed37670f-9754-e981-9ac3-29d9d3850f11",
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
									"1ca771d6-be7f-ecc5-8e33-4a855a502188",
									true,
								},
								
								{
									"8325e51a-aa34-b7a9-acf2-5d5c94461b43",
									true,
								},
								
								{
									"544292ff-d933-f048-a2bb-76284c2ac829",
									true,
								},
								
								{
									"599804ea-4b76-f827-aced-b95a3c2ede24",
									true,
								},
							},
							gVar = "ACR_TensorRuin3_Hotbar_Addle",
							uuid = "dd5a3bfb-48d1-cca5-8a7b-ce7cd16d8866",
							variableTogglesType = 2,
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
									"5e3734f8-7c6f-f4b8-964e-3ddee1244a16",
									true,
								},
								
								{
									"20879cbd-f570-35c6-8f31-76d75e911a9c",
									true,
								},
								
								{
									"d53f2044-fc07-a10c-a4a8-eab02e158fd1",
									true,
								},
							},
							targetContentID = 12257,
							targetType = "ContentID",
							uuid = "cf7cd1cd-8f66-7a73-8eff-3d8688512f6d",
							version = 2.1,
						},
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
								20,
								22,
								30,
								34,
								39,
								41,
							},
							name = "Eligible jobs",
							uuid = "e30de1ff-003e-0c5f-bdac-87d8980b4f61",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='M1'",
							name = "Assigned M1",
							uuid = "e3843613-b169-a188-a9d7-964533f03e15",
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
							name = "Ready",
							uuid = "0077e016-d30a-63fd-b6f7-7408393daaff",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								25,
								27,
								35,
								42,
							},
							name = "Eligible jobs",
							uuid = "1ca771d6-be7f-ecc5-8e33-4a855a502188",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R2'",
							name = "Assigned R2",
							uuid = "8325e51a-aa34-b7a9-acf2-5d5c94461b43",
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
							name = "Ready",
							uuid = "544292ff-d933-f048-a2bb-76284c2ac829",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 12257,
							name = "Correct boss target",
							uuid = "599804ea-4b76-f827-aced-b95a3c2ede24",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								31,
							},
							name = "Eligible jobs",
							uuid = "5e3734f8-7c6f-f4b8-964e-3ddee1244a16",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R1'",
							name = "Assigned R1",
							uuid = "20879cbd-f570-35c6-8f31-76d75e911a9c",
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
							name = "Ready",
							uuid = "d53f2044-fc07-a10c-a4a8-eab02e158fd1",
							version = 3,
						},
					},
				},
				displayPath = "P5",
				mechanicTime = 740,
				name = "[Mit] Delta - M1 Feint, Addle, Dismantle",
				timeRange = true,
				timelineIndex = 130,
				timerEndOffset = -1,
				timerStartOffset = -3,
				uuid = "e59d288c-07aa-a0b9-877a-82d426326ffd",
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
				name = "Potions",
				uuid = "b0221c59-afd7-6800-a55c-0921c9a07584",
			},
			objectType = "folder",
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
									"6c3f046b-572c-b27f-9ca8-93851d7b3672",
									true,
								},
								
								{
									"d29ff68b-7565-9884-a563-a09ff38a9d3d",
									true,
								},
							},
							name = "Potion - Strength",
							potType = 4,
							usePot = true,
							uuid = "dd98ac48-cbcd-7dba-ab53-b2fdc666059a",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Misc",
							conditions = 
							{
								
								{
									"6c3f046b-572c-b27f-9ca8-93851d7b3672",
									true,
								},
								
								{
									"c601aae0-6d42-d818-84db-ad7cb4a4bb31",
									true,
								},
							},
							name = "Potion - Dexterity",
							usePot = true,
							uuid = "d849d1b4-3af8-2fb6-ba79-32d4826c1329",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Misc",
							conditions = 
							{
								
								{
									"6c3f046b-572c-b27f-9ca8-93851d7b3672",
									true,
								},
								
								{
									"73ae623d-5c57-cb13-827f-a830c15bf4fb",
									true,
								},
							},
							name = "Potion - Intelligence",
							potType = 2,
							usePot = true,
							uuid = "4786c803-ba96-67a7-9cf9-6486d02c0ec9",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Misc",
							conditions = 
							{
								
								{
									"6c3f046b-572c-b27f-9ca8-93851d7b3672",
									true,
								},
								
								{
									"96d57cbc-6786-c6a5-9587-7efffe2351aa",
									true,
								},
							},
							name = "Potion - Mind",
							potType = 3,
							usePot = true,
							uuid = "62b9684a-28e6-6028-babc-dea2e6331558",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 7,
							name = "In combat",
							uuid = "6c3f046b-572c-b27f-9ca8-93851d7b3672",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								19,
								20,
								21,
								22,
								32,
								34,
								37,
								39,
							},
							name = "Strength jobs",
							uuid = "d29ff68b-7565-9884-a563-a09ff38a9d3d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								23,
								30,
								31,
								38,
								41,
							},
							name = "Dexterity jobs",
							uuid = "c601aae0-6d42-d818-84db-ad7cb4a4bb31",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								25,
								27,
								35,
								42,
							},
							name = "Intelligence jobs",
							uuid = "73ae623d-5c57-cb13-827f-a830c15bf4fb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								24,
								28,
								33,
								40,
							},
							name = "Mind jobs",
							uuid = "96d57cbc-6786-c6a5-9587-7efffe2351aa",
							version = 3,
						},
					},
				},
				displayPath = "Potions",
				mechanicTime = 791.1,
				name = "[Potion] Post-Delta reopener",
				timeRange = true,
				timelineIndex = 156,
				timerEndOffset = 8,
				timerStartOffset = 0.3,
				uuid = "5ca6368a-f0ca-5ef4-a5b8-2b6400c8beda",
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
				name = "P5",
				uuid = "4ed282cf-4218-9a20-a72c-d260fa8a8e45",
			},
			objectType = "folder",
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
									"a0586845-706a-9d58-bb0d-8d957ef27cea",
									true,
								},
								
								{
									"2495050f-833d-abb2-ac9a-5283ab68206a",
									true,
								},
								
								{
									"18a0c1fe-246d-3d6e-8817-60623683923c",
									true,
								},
								
								{
									"ed56d4d4-69d3-e85c-b04b-a5f9da2a4900",
									true,
								},
							},
							uuid = "805367fb-8e88-aa54-ab8f-aa2eb046a12d",
							version = 2.1,
						},
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
							name = "Eligible jobs",
							uuid = "a0586845-706a-9d58-bb0d-8d957ef27cea",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "2495050f-833d-abb2-ac9a-5283ab68206a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal p=Settings.FFXIVMINION.LPDU_TOP_SolarTankPlan2\nif p==nil or p==4 then p=2 end\nif p~=0 then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "18a0c1fe-246d-3d6e-8817-60623683923c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "ed56d4d4-69d3-e85c-b04b-a5f9da2a4900",
							version = 3,
						},
					},
				},
				displayPath = "P5",
				mechanicTime = 805.2,
				name = "[Mit] Solar Ray 2 kitchen sink - Rampart",
				timeRange = true,
				timelineIndex = 157,
				timerEndOffset = -4,
				timerStartOffset = -8,
				uuid = "b8a41889-3c61-a8e3-b1a7-1598f50fced2",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 25751,
							conditions = 
							{
								
								{
									"dc3fd82d-8370-fe27-8c79-7b778c9657a7",
									true,
								},
								
								{
									"457f1c2c-5629-09f2-9aa4-99a09d8bc69e",
									true,
								},
								
								{
									"3977c167-20a5-06e5-b5ae-91a06db3020c",
									true,
								},
								
								{
									"826989a8-6f4d-8396-b38f-d7d4925d0cb8",
									true,
								},
							},
							uuid = "7b3d5cb8-9515-c0a7-a6ff-4cc87c0fb400",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25746,
							conditions = 
							{
								
								{
									"ad4af09c-2ae3-2d1f-939f-1b8684071313",
									true,
								},
								
								{
									"280ac899-1014-b967-aba0-e25c41af6e2a",
									true,
								},
								
								{
									"7fbde825-2750-9029-9e24-c73d0838d9c9",
									true,
								},
								
								{
									"91f7bf0b-7b7f-b483-93c2-c3ba8b7da1d4",
									true,
								},
							},
							uuid = "21b12859-a0ec-15a6-ad71-d8de1fbb11dc",
							version = 2.1,
						},
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
								21,
							},
							name = "Eligible jobs",
							uuid = "dc3fd82d-8370-fe27-8c79-7b778c9657a7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "457f1c2c-5629-09f2-9aa4-99a09d8bc69e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal p=Settings.FFXIVMINION.LPDU_TOP_SolarTankPlan2\nif p==nil or p==4 then p=2 end\nif p~=0 then return false end\nlocal targetSlot=R.mySlot()\nreturn targetSlot~=nil and targetSlot==R.mySlot()",
							name = "Mitigation plan",
							uuid = "3977c167-20a5-06e5-b5ae-91a06db3020c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25751,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "826989a8-6f4d-8396-b38f-d7d4925d0cb8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								19,
							},
							name = "Eligible jobs",
							uuid = "ad4af09c-2ae3-2d1f-939f-1b8684071313",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "280ac899-1014-b967-aba0-e25c41af6e2a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal p=Settings.FFXIVMINION.LPDU_TOP_SolarTankPlan2\nif p==nil or p==4 then p=2 end\nif p~=0 then return false end\nlocal targetSlot=R.mySlot()\nreturn targetSlot~=nil and targetSlot==R.mySlot()",
							name = "Mitigation plan",
							uuid = "7fbde825-2750-9029-9e24-c73d0838d9c9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25746,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "91f7bf0b-7b7f-b483-93c2-c3ba8b7da1d4",
							version = 3,
						},
					},
				},
				displayPath = "P5",
				mechanicTime = 805.2,
				name = "[Mit] Solar Ray 2 kitchen sink - short CD - self",
				timeRange = true,
				timelineIndex = 157,
				timerEndOffset = -0.5,
				timerStartOffset = -2.3,
				uuid = "c43afe35-5c4a-a70a-ac80-1cf62bb85e4e",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7393,
							conditions = 
							{
								
								{
									"31bcba29-e868-59bf-8baa-0003a5b5c2e6",
									true,
								},
								
								{
									"e8cb4d17-2fce-542e-9660-c70a9d836030",
									true,
								},
								
								{
									"b4afa9d7-4e32-ebdb-8ea7-5e5e5648ed4b",
									true,
								},
								
								{
									"1daf5e65-85a4-2249-abad-60bddef576cd",
									true,
								},
								
								{
									"35d228bb-1693-1df5-b622-e08f03c3ecf4",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "56aa745b-27a4-890b-b951-6d3ae76677ca",
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
									"9ed11619-b0eb-1a7d-8f4e-8046796d78dc",
									true,
								},
								
								{
									"2220051e-ba95-a3ef-b7da-75e63a4d0d75",
									true,
								},
								
								{
									"f2eb09ae-24f3-316d-b8ab-bd905097d7f8",
									true,
								},
								
								{
									"c321b301-fa8b-dd21-8756-6f04de507196",
									true,
								},
								
								{
									"1df7b61f-c32f-c685-b110-147bb2164ca3",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "5690afc8-16d0-94a9-9743-011c59a99671",
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
									"22feb08b-5b24-a04f-879c-9c8018f21811",
									true,
								},
								
								{
									"b7c833a8-7817-7763-9958-00f7f98de1db",
									true,
								},
								
								{
									"4fc95b22-6c55-168a-8d9d-28e3bd7d13ef",
									true,
								},
								
								{
									"daa61d87-b201-f7a0-92ce-4652d72f2674",
									true,
								},
								
								{
									"78f9190e-5904-36f5-a226-2ef87b0be5a5",
									true,
								},
								
								{
									"1f0b1be7-5cac-b1c5-a890-68b0b6018dca",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "e6d478b9-eccb-3861-8a2e-25e34d7c12da",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7382,
							conditions = 
							{
								
								{
									"8eb05794-2895-3c53-99cf-3843220c46ae",
									true,
								},
								
								{
									"9e625697-672c-e98a-86e9-dd4472244473",
									true,
								},
								
								{
									"10da085d-024d-91e6-84e7-c172fd659579",
									true,
								},
								
								{
									"4a8ed1fb-05c0-cebb-9a88-00477516fb54",
									true,
								},
								
								{
									"93fb0b7a-2d9c-25c0-a8c8-e02af18dabcc",
									true,
								},
								
								{
									"0ba9ecf0-78a9-cde1-bf0f-0613940f465e",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "d4dbc572-fac5-2393-bc9f-510adc067840",
							version = 2.1,
						},
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
								32,
							},
							name = "Eligible jobs",
							uuid = "31bcba29-e868-59bf-8baa-0003a5b5c2e6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "e8cb4d17-2fce-542e-9660-c70a9d836030",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal p=Settings.FFXIVMINION.LPDU_TOP_SolarTankPlan2\nif p==nil or p==4 then p=2 end\nif p~=0 then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "b4afa9d7-4e32-ebdb-8ea7-5e5e5648ed4b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7393,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "1daf5e65-85a4-2249-abad-60bddef576cd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "8a13f8a7-bbd6-f421-a89f-3e3a4925a59c",
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
									"8a13f8a7-bbd6-f421-a89f-3e3a4925a59c",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "35d228bb-1693-1df5-b622-e08f03c3ecf4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								37,
							},
							name = "Eligible jobs",
							uuid = "9ed11619-b0eb-1a7d-8f4e-8046796d78dc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "2220051e-ba95-a3ef-b7da-75e63a4d0d75",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal p=Settings.FFXIVMINION.LPDU_TOP_SolarTankPlan2\nif p==nil or p==4 then p=2 end\nif p~=0 then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "f2eb09ae-24f3-316d-b8ab-bd905097d7f8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25758,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "c321b301-fa8b-dd21-8756-6f04de507196",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "d80a5275-5402-34de-aa52-0aad6738cc9c",
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
									"d80a5275-5402-34de-aa52-0aad6738cc9c",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "1df7b61f-c32f-c685-b110-147bb2164ca3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								21,
							},
							name = "Eligible jobs",
							uuid = "22feb08b-5b24-a04f-879c-9c8018f21811",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "4fc95b22-6c55-168a-8d9d-28e3bd7d13ef",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal p=Settings.FFXIVMINION.LPDU_TOP_SolarTankPlan2\nif p==nil or p==4 then p=2 end\nif p~=0 then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "daa61d87-b201-f7a0-92ce-4652d72f2674",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16464,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "78f9190e-5904-36f5-a226-2ef87b0be5a5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "4a3f843c-c9c0-ae94-8c09-45289ee87b7c",
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
									"4a3f843c-c9c0-ae94-8c09-45289ee87b7c",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "1f0b1be7-5cac-b1c5-a890-68b0b6018dca",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								19,
							},
							name = "Eligible jobs",
							uuid = "8eb05794-2895-3c53-99cf-3843220c46ae",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "10da085d-024d-91e6-84e7-c172fd659579",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal p=Settings.FFXIVMINION.LPDU_TOP_SolarTankPlan2\nif p==nil or p==4 then p=2 end\nif p~=0 then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "4a8ed1fb-05c0-cebb-9a88-00477516fb54",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7382,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "93fb0b7a-2d9c-25c0-a8c8-e02af18dabcc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "9ae97bd8-05be-c569-a325-894e23d58721",
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
									"9ae97bd8-05be-c569-a325-894e23d58721",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "0ba9ecf0-78a9-cde1-bf0f-0613940f465e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nreturn targetSlot~=nil and targetSlot~=R.mySlot()",
							name = "Other recipient",
							uuid = "b7c833a8-7817-7763-9958-00f7f98de1db",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nreturn targetSlot~=nil and targetSlot~=R.mySlot()",
							name = "Other recipient",
							uuid = "9e625697-672c-e98a-86e9-dd4472244473",
							version = 3,
						},
					},
				},
				displayPath = "P5",
				mechanicTime = 805.2,
				name = "[Mit] Solar Ray 2 kitchen sink - short CD - support",
				timeRange = true,
				timelineIndex = 157,
				timerEndOffset = -0.5,
				timerStartOffset = -2.3,
				uuid = "b3463184-54fb-4840-beb7-2d0be9d4b137",
				version = 2,
			},
		},
	},
	[160] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P5",
				uuid = "80253f9c-f215-31fc-acb4-9459386b6f53",
			},
			objectType = "folder",
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
									"91cd05b5-e20f-e068-a49c-1f284b38f20f",
									true,
								},
								
								{
									"7075532b-9057-e969-acc5-b64eea8449c1",
									true,
								},
								
								{
									"65080042-c76e-a2ce-ba7b-48ac25449e66",
									true,
								},
							},
							targetContentID = 12257,
							targetType = "ContentID",
							uuid = "d217c6bf-a0fb-09f7-99d5-187adb3a8372",
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
									"91b81f5d-5c22-a541-9ad0-5cb6aa3c7681",
									true,
								},
								
								{
									"f5fce567-00d0-b3fa-ba91-0725076b33db",
									true,
								},
								
								{
									"2a34f260-192a-8dfb-a785-deacdfadfb36",
									true,
								},
							},
							uuid = "2db131c7-a256-6fb6-b4ac-3ca5f05b9104",
							version = 2.1,
						},
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
								20,
								22,
								30,
								34,
								39,
								41,
							},
							name = "Eligible jobs",
							uuid = "91cd05b5-e20f-e068-a49c-1f284b38f20f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='M2'",
							name = "Assigned M2",
							uuid = "7075532b-9057-e969-acc5-b64eea8449c1",
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
							name = "Ready",
							uuid = "65080042-c76e-a2ce-ba7b-48ac25449e66",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								35,
							},
							name = "Eligible jobs",
							uuid = "91b81f5d-5c22-a541-9ad0-5cb6aa3c7681",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R2'",
							name = "Assigned R2",
							uuid = "f5fce567-00d0-b3fa-ba91-0725076b33db",
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
							name = "Ready",
							uuid = "2a34f260-192a-8dfb-a785-deacdfadfb36",
							version = 3,
						},
					},
				},
				displayPath = "P5",
				mechanicTime = 821.7,
				name = "[Mit] Sigma - M2 Feint + Barrier",
				timeRange = true,
				timelineIndex = 160,
				timerEndOffset = -1,
				timerStartOffset = -3,
				uuid = "83ca27c3-2d1a-4dc9-9b46-4095a3372d9e",
				version = 2,
			},
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
									"52e9ab0c-2d7f-efb9-b5cb-e9659e84cfef",
									true,
								},
								
								{
									"7ff0820b-3ca9-07b3-8b8b-c3c33291995b",
									true,
								},
								
								{
									"43b7984a-bdcb-e42f-bddc-c05f83f84d00",
									true,
								},
							},
							uuid = "e1798e3b-69d4-e0b7-8918-e8373c3efda1",
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
									"d5ad8efa-41e0-326d-b4ad-ef28e82c18c5",
									true,
								},
								
								{
									"36843072-4d89-11aa-b8be-961b232d1b33",
									true,
								},
								
								{
									"16d5d71d-ea5e-b5fb-91db-a29644034037",
									true,
								},
							},
							uuid = "dfac5862-af7d-9332-a940-f547de025705",
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
									"0398625a-2d29-d070-be1c-4bca60bef803",
									true,
								},
								
								{
									"e80ab03f-8a84-f610-896b-eba05a53c472",
									true,
								},
								
								{
									"e8570b5f-c0a0-5e36-b53b-f0bff426ca4c",
									true,
								},
							},
							uuid = "d192552c-a8cc-0387-9913-3bbbde255adf",
							version = 2.1,
						},
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
								23,
							},
							name = "Eligible jobs",
							uuid = "52e9ab0c-2d7f-efb9-b5cb-e9659e84cfef",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R1'",
							name = "Assigned R1",
							uuid = "7ff0820b-3ca9-07b3-8b8b-c3c33291995b",
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
							name = "Ready",
							uuid = "43b7984a-bdcb-e42f-bddc-c05f83f84d00",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								31,
							},
							name = "Eligible jobs",
							uuid = "d5ad8efa-41e0-326d-b4ad-ef28e82c18c5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R1'",
							name = "Assigned R1",
							uuid = "36843072-4d89-11aa-b8be-961b232d1b33",
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
							name = "Ready",
							uuid = "16d5d71d-ea5e-b5fb-91db-a29644034037",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								38,
							},
							name = "Eligible jobs",
							uuid = "0398625a-2d29-d070-be1c-4bca60bef803",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R1'",
							name = "Assigned R1",
							uuid = "e80ab03f-8a84-f610-896b-eba05a53c472",
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
							name = "Ready",
							uuid = "e8570b5f-c0a0-5e36-b53b-f0bff426ca4c",
							version = 3,
						},
					},
				},
				displayPath = "P5",
				mechanicTime = 821.7,
				name = "[Mit] Sigma - party when ready",
				timeRange = true,
				timelineIndex = 160,
				timerEndOffset = 1,
				timerStartOffset = -3.5,
				uuid = "a7fc9a36-70ac-6176-a161-b0be6082e26b",
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
				name = "P5",
				uuid = "6c34a82a-d87f-0fea-995a-27cfe2a4e6b5",
			},
			objectType = "folder",
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
									"3e33c1a2-bde8-184b-8d82-21f3fb55f6c2",
									true,
								},
								
								{
									"ad650919-9894-40f6-88b6-7d1f532233d6",
									true,
								},
								
								{
									"9115df02-7f70-1e80-b6d6-74b16fd57b89",
									true,
								},
								
								{
									"4689205b-dd7f-751d-baf3-cf3eb1ea012c",
									true,
								},
							},
							uuid = "6fc3ea3f-a2ed-ce02-8043-d0c23fdf4f76",
							version = 2.1,
						},
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
							name = "Eligible jobs",
							uuid = "3e33c1a2-bde8-184b-8d82-21f3fb55f6c2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "ad650919-9894-40f6-88b6-7d1f532233d6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal p=Settings.FFXIVMINION.LPDU_TOP_SolarTankPlan3\nif p==nil or p==4 then p=1 end\nif p~=0 then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "9115df02-7f70-1e80-b6d6-74b16fd57b89",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "4689205b-dd7f-751d-baf3-cf3eb1ea012c",
							version = 3,
						},
					},
				},
				displayPath = "P5",
				mechanicTime = 894.3,
				name = "[Mit] Solar Ray 3 kitchen sink - Rampart",
				timeRange = true,
				timelineIndex = 185,
				timerEndOffset = -14.5,
				timerStartOffset = -16.2,
				uuid = "af46b1e5-5532-66cc-9bc2-1c3a36d23584",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 25751,
							conditions = 
							{
								
								{
									"dbca1c8c-9feb-badd-a383-fe10badf5ef8",
									true,
								},
								
								{
									"c87c2144-7ffc-7003-ad62-65909e0b8827",
									true,
								},
								
								{
									"5e5fe71c-71d1-c878-8c0b-d866ea13c9d6",
									true,
								},
								
								{
									"3b473c40-9729-d702-839e-e138bc4808e5",
									true,
								},
							},
							uuid = "88024e6d-0740-25a3-b27c-e5b99e6dce98",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25746,
							conditions = 
							{
								
								{
									"be2185f8-0bf8-cd3c-aee5-9dfc036aaa2b",
									true,
								},
								
								{
									"99167045-90b2-ee0b-9192-79ccc9cf7bc0",
									true,
								},
								
								{
									"1f51615a-56b8-6f8e-aef6-fee0403c22b0",
									true,
								},
								
								{
									"14f806c9-cc80-08e1-a79b-2f94bfb8ffe1",
									true,
								},
							},
							uuid = "b0297703-3b03-70c8-8def-57629217a4b2",
							version = 2.1,
						},
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
								21,
							},
							name = "Eligible jobs",
							uuid = "dbca1c8c-9feb-badd-a383-fe10badf5ef8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "c87c2144-7ffc-7003-ad62-65909e0b8827",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal p=Settings.FFXIVMINION.LPDU_TOP_SolarTankPlan3\nif p==nil or p==4 then p=1 end\nif p~=0 then return false end\nlocal targetSlot=R.mySlot()\nreturn targetSlot~=nil and targetSlot==R.mySlot()",
							name = "Mitigation plan",
							uuid = "5e5fe71c-71d1-c878-8c0b-d866ea13c9d6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25751,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "3b473c40-9729-d702-839e-e138bc4808e5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								19,
							},
							name = "Eligible jobs",
							uuid = "be2185f8-0bf8-cd3c-aee5-9dfc036aaa2b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "99167045-90b2-ee0b-9192-79ccc9cf7bc0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal p=Settings.FFXIVMINION.LPDU_TOP_SolarTankPlan3\nif p==nil or p==4 then p=1 end\nif p~=0 then return false end\nlocal targetSlot=R.mySlot()\nreturn targetSlot~=nil and targetSlot==R.mySlot()",
							name = "Mitigation plan",
							uuid = "1f51615a-56b8-6f8e-aef6-fee0403c22b0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25746,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "14f806c9-cc80-08e1-a79b-2f94bfb8ffe1",
							version = 3,
						},
					},
				},
				displayPath = "P5",
				mechanicTime = 894.3,
				name = "[Mit] Solar Ray 3 kitchen sink - short CD - self",
				timeRange = true,
				timelineIndex = 185,
				timerEndOffset = -0.5,
				timerStartOffset = -2.3,
				uuid = "1c6af0bb-dfd5-6270-8285-d89dfdfc7110",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7393,
							conditions = 
							{
								
								{
									"7b7f3318-a817-bed8-b098-d9f67afd1c29",
									true,
								},
								
								{
									"ad51cc26-de31-7466-bd09-2c498b055791",
									true,
								},
								
								{
									"36d3368f-bd53-03a7-8361-595e4a4871c6",
									true,
								},
								
								{
									"1ce2c4dd-8e6a-0eba-9a5a-ec50944adf70",
									true,
								},
								
								{
									"da65cbff-a1fc-78ff-ac12-8e56baa69a6a",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "d3df3972-da5c-8ef1-8cd2-772cbed83b7f",
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
									"39693946-812d-8081-8a39-83f895ee9014",
									true,
								},
								
								{
									"f0bd10b2-a73a-4600-a169-38340f039414",
									true,
								},
								
								{
									"3e35cd04-50b2-ade6-8d87-0afcd3c85a73",
									true,
								},
								
								{
									"3ce8de07-d4ed-9103-bfce-b52cd286cfe1",
									true,
								},
								
								{
									"eec8dd35-c8f9-8004-8193-e0afa0d6eb06",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "2a94e7dc-5863-5c46-9c5b-a302fa8ba1c7",
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
									"fdb33c12-b43b-9aed-a14b-efef0d91be6e",
									true,
								},
								
								{
									"2ccd7550-6bea-b305-b9b1-907f0ad02955",
									true,
								},
								
								{
									"df75d7a0-ccbb-89bd-a624-083124ed9e28",
									true,
								},
								
								{
									"0d4c50b0-b82d-285c-8012-3932c3abd16e",
									true,
								},
								
								{
									"a152e36e-c640-70de-ae13-76aa93953d24",
									true,
								},
								
								{
									"86539b33-2f67-017c-bbfb-f6fe993e5150",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "bb07b5f1-fb72-2b88-b84d-883164c27a18",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7382,
							conditions = 
							{
								
								{
									"203e6e46-b1db-e936-8175-29f01c0293b8",
									true,
								},
								
								{
									"40eed73c-611f-0ad2-9b96-043275075328",
									true,
								},
								
								{
									"3db99ba2-5ccc-6099-878e-dd6a02e758b0",
									true,
								},
								
								{
									"c5f16178-372e-92ad-99d1-b4e3f84bfa4c",
									true,
								},
								
								{
									"f835fd49-5f4b-ce02-a539-fdc3395d3598",
									true,
								},
								
								{
									"d389d282-66dd-9d95-8d51-21bf89e475d7",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "390955a3-2520-2ab2-9202-3af6ff5464f1",
							version = 2.1,
						},
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
								32,
							},
							name = "Eligible jobs",
							uuid = "7b7f3318-a817-bed8-b098-d9f67afd1c29",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "ad51cc26-de31-7466-bd09-2c498b055791",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal p=Settings.FFXIVMINION.LPDU_TOP_SolarTankPlan3\nif p==nil or p==4 then p=1 end\nif p~=0 then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "36d3368f-bd53-03a7-8361-595e4a4871c6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7393,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "1ce2c4dd-8e6a-0eba-9a5a-ec50944adf70",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "a6e97d98-3c86-9a12-8d4e-73270b3fbd5c",
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
									"a6e97d98-3c86-9a12-8d4e-73270b3fbd5c",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "da65cbff-a1fc-78ff-ac12-8e56baa69a6a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								37,
							},
							name = "Eligible jobs",
							uuid = "39693946-812d-8081-8a39-83f895ee9014",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "f0bd10b2-a73a-4600-a169-38340f039414",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal p=Settings.FFXIVMINION.LPDU_TOP_SolarTankPlan3\nif p==nil or p==4 then p=1 end\nif p~=0 then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "3e35cd04-50b2-ade6-8d87-0afcd3c85a73",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25758,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "3ce8de07-d4ed-9103-bfce-b52cd286cfe1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "e1e2e9f4-cf23-5015-b54a-72bfb363198a",
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
									"e1e2e9f4-cf23-5015-b54a-72bfb363198a",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "eec8dd35-c8f9-8004-8193-e0afa0d6eb06",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								21,
							},
							name = "Eligible jobs",
							uuid = "fdb33c12-b43b-9aed-a14b-efef0d91be6e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "df75d7a0-ccbb-89bd-a624-083124ed9e28",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal p=Settings.FFXIVMINION.LPDU_TOP_SolarTankPlan3\nif p==nil or p==4 then p=1 end\nif p~=0 then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "0d4c50b0-b82d-285c-8012-3932c3abd16e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16464,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "a152e36e-c640-70de-ae13-76aa93953d24",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "d0f278e7-ae83-9aab-90b8-89d5f34e8388",
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
									"d0f278e7-ae83-9aab-90b8-89d5f34e8388",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "86539b33-2f67-017c-bbfb-f6fe993e5150",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								19,
							},
							name = "Eligible jobs",
							uuid = "203e6e46-b1db-e936-8175-29f01c0293b8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "3db99ba2-5ccc-6099-878e-dd6a02e758b0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal p=Settings.FFXIVMINION.LPDU_TOP_SolarTankPlan3\nif p==nil or p==4 then p=1 end\nif p~=0 then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "c5f16178-372e-92ad-99d1-b4e3f84bfa4c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7382,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "f835fd49-5f4b-ce02-a539-fdc3395d3598",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "2f278382-5dce-124c-84b5-ecb302ea34a7",
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
									"2f278382-5dce-124c-84b5-ecb302ea34a7",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "d389d282-66dd-9d95-8d51-21bf89e475d7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nreturn targetSlot~=nil and targetSlot~=R.mySlot()",
							name = "Other recipient",
							uuid = "2ccd7550-6bea-b305-b9b1-907f0ad02955",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nreturn targetSlot~=nil and targetSlot~=R.mySlot()",
							name = "Other recipient",
							uuid = "40eed73c-611f-0ad2-9b96-043275075328",
							version = 3,
						},
					},
				},
				displayPath = "P5",
				mechanicTime = 894.3,
				name = "[Mit] Solar Ray 3 kitchen sink - short CD - support",
				timeRange = true,
				timelineIndex = 185,
				timerEndOffset = -0.5,
				timerStartOffset = -2.3,
				uuid = "6e3c31f6-879f-6bad-a3ea-10f6ab14c8bf",
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
				name = "P5",
				uuid = "8c17bf16-aa1c-eb76-9903-3456166e2bee",
			},
			objectType = "folder",
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
									"f565afb9-6996-8b59-b8b3-faeae4bd502c",
									true,
								},
								
								{
									"a7e6c781-1444-50b5-86c0-267dcef2246c",
									true,
								},
								
								{
									"9be668ce-c46a-ede9-b0ee-e5c73d6cd519",
									true,
								},
							},
							targetContentID = 12258,
							targetType = "ContentID",
							uuid = "353c8a1f-c909-ee3f-ac73-ff11397553e2",
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
									"7b4367b8-642d-2e82-b640-ea0550ae74ba",
									true,
								},
								
								{
									"804c90a5-1fa5-b7bd-8ee1-d495cffdfdbf",
									true,
								},
								
								{
									"89bba56d-a522-9b05-9c99-c694de443bc1",
									true,
								},
								
								{
									"51067e23-3859-2faa-bc17-60238905c89a",
									true,
								},
							},
							gVar = "ACR_TensorRuin3_Hotbar_Addle",
							uuid = "b289f2e5-2a47-f8fc-a38d-c75aad654f3f",
							variableTogglesType = 2,
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
									"639b558d-b8c7-5ee6-b0a3-f91b3f121b58",
									true,
								},
								
								{
									"90d69194-6142-f0a2-91d3-0918918ed6cb",
									true,
								},
								
								{
									"4de9e871-32ae-1f7d-94d5-521df683a19d",
									true,
								},
							},
							targetContentID = 12258,
							targetType = "ContentID",
							uuid = "c0300a6b-c90e-622c-9f75-6a2c26f9db8f",
							version = 2.1,
						},
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
								20,
								22,
								30,
								34,
								39,
								41,
							},
							name = "Eligible jobs",
							uuid = "f565afb9-6996-8b59-b8b3-faeae4bd502c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='M1'",
							name = "Assigned M1",
							uuid = "a7e6c781-1444-50b5-86c0-267dcef2246c",
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
							name = "Ready",
							uuid = "9be668ce-c46a-ede9-b0ee-e5c73d6cd519",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								25,
								27,
								35,
								42,
							},
							name = "Eligible jobs",
							uuid = "7b4367b8-642d-2e82-b640-ea0550ae74ba",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R2'",
							name = "Assigned R2",
							uuid = "804c90a5-1fa5-b7bd-8ee1-d495cffdfdbf",
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
							name = "Ready",
							uuid = "89bba56d-a522-9b05-9c99-c694de443bc1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 12258,
							name = "Correct boss target",
							uuid = "51067e23-3859-2faa-bc17-60238905c89a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								31,
							},
							name = "Eligible jobs",
							uuid = "639b558d-b8c7-5ee6-b0a3-f91b3f121b58",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R1'",
							name = "Assigned R1",
							uuid = "90d69194-6142-f0a2-91d3-0918918ed6cb",
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
							name = "Ready",
							uuid = "4de9e871-32ae-1f7d-94d5-521df683a19d",
							version = 3,
						},
					},
				},
				displayPath = "P5",
				mechanicTime = 910.7,
				name = "[Mit] Omega - M1 Feint, Addle, Dismantle",
				timeRange = true,
				timelineIndex = 188,
				timerEndOffset = -1,
				timerStartOffset = -3,
				uuid = "1a7fd7d0-0a42-1f1e-963e-23ffc8a26ad5",
				version = 2,
			},
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
									"a54a620d-822f-5ecf-af63-1cb9c7e29e68",
									true,
								},
								
								{
									"c5209ef2-9bbf-693a-ac27-40261e6b6e1f",
									true,
								},
								
								{
									"323bc3af-0815-3910-8104-ddc7aa5327db",
									true,
								},
							},
							uuid = "fee454ff-07f8-3bd3-9e96-667481c49f98",
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
									"d44c88c9-fb93-4f52-8a49-3b7d861a0aed",
									true,
								},
								
								{
									"07eea90c-6b5e-6ce2-b869-7e69ab394c09",
									true,
								},
								
								{
									"b3db58e1-565c-ba37-9ea2-9736e6f6c58d",
									true,
								},
							},
							uuid = "ea6a9fa0-8295-e666-a6ab-d8d973cf695d",
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
									"7f34ae1e-aad4-698c-8790-567fa5163258",
									true,
								},
								
								{
									"5fc9394f-710d-06c8-bcd3-93ed83aa89a4",
									true,
								},
								
								{
									"79a4f634-1b99-2748-b585-710c9b8d49fe",
									true,
								},
							},
							uuid = "f4d6a8dc-b2fe-e49d-af2c-c4df634cc8b0",
							version = 2.1,
						},
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
								23,
							},
							name = "Eligible jobs",
							uuid = "a54a620d-822f-5ecf-af63-1cb9c7e29e68",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R1'",
							name = "Assigned R1",
							uuid = "c5209ef2-9bbf-693a-ac27-40261e6b6e1f",
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
							name = "Ready",
							uuid = "323bc3af-0815-3910-8104-ddc7aa5327db",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								31,
							},
							name = "Eligible jobs",
							uuid = "d44c88c9-fb93-4f52-8a49-3b7d861a0aed",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R1'",
							name = "Assigned R1",
							uuid = "07eea90c-6b5e-6ce2-b869-7e69ab394c09",
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
							name = "Ready",
							uuid = "b3db58e1-565c-ba37-9ea2-9736e6f6c58d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								38,
							},
							name = "Eligible jobs",
							uuid = "7f34ae1e-aad4-698c-8790-567fa5163258",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R1'",
							name = "Assigned R1",
							uuid = "5fc9394f-710d-06c8-bcd3-93ed83aa89a4",
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
							name = "Ready",
							uuid = "79a4f634-1b99-2748-b585-710c9b8d49fe",
							version = 3,
						},
					},
				},
				displayPath = "P5",
				mechanicTime = 910.7,
				name = "[Mit] Omega - party when ready",
				timeRange = true,
				timelineIndex = 188,
				timerEndOffset = 1,
				timerStartOffset = -3.5,
				uuid = "62c186c4-f4d2-5ba6-9a91-e13be13b0db6",
				version = 2,
			},
		},
	},
	[189] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P5",
				uuid = "f3129a90-64fa-6524-922e-cfae7dfeb010",
			},
			objectType = "folder",
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
									"a985a032-cd66-28b6-a318-9cc68d22085a",
									true,
								},
								
								{
									"d8f774aa-219c-ad61-99b6-204298eaaf92",
									true,
								},
								
								{
									"1d4cb051-3a96-6425-9969-3ee86e4e3668",
									true,
								},
							},
							targetContentID = 12258,
							targetType = "ContentID",
							uuid = "0b38c50d-f1af-bb8f-a13e-dcc348124b93",
							version = 2.1,
						},
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
								20,
								22,
								30,
								34,
								39,
								41,
							},
							name = "Eligible jobs",
							uuid = "a985a032-cd66-28b6-a318-9cc68d22085a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='M2'",
							name = "Assigned M2",
							uuid = "d8f774aa-219c-ad61-99b6-204298eaaf92",
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
							name = "Ready",
							uuid = "1d4cb051-3a96-6425-9969-3ee86e4e3668",
							version = 3,
						},
					},
				},
				displayPath = "P5",
				mechanicTime = 927.8,
				name = "[Mit] Omega uptime - M2 Feint",
				timeRange = true,
				timelineIndex = 189,
				timerEndOffset = -7,
				timerStartOffset = -9,
				uuid = "b0718a43-8df2-4e1e-8410-3a6054aa1b9f",
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
				name = "P5",
				uuid = "768e9d6d-08e7-e195-b132-1f4ef5f567c9",
			},
			objectType = "folder",
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
									"b70f9793-66db-8d42-8526-83d034365f66",
									true,
								},
								
								{
									"3125e378-0424-5868-a4a2-20cc773441b2",
									true,
								},
								
								{
									"e050c92f-9ace-72f0-a8b5-e9305f88a6e7",
									true,
								},
								
								{
									"e179c6c6-33ab-79ed-ac55-a3fe8999ec05",
									true,
								},
							},
							uuid = "a52c71ad-bc49-8ceb-a0eb-be537d3feb69",
							version = 2.1,
						},
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
							name = "Eligible jobs",
							uuid = "b70f9793-66db-8d42-8526-83d034365f66",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "3125e378-0424-5868-a4a2-20cc773441b2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal p=Settings.FFXIVMINION.LPDU_TOP_SolarTankPlan4\nif p==nil or p==4 then p=0 end\nif p~=0 then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "e050c92f-9ace-72f0-a8b5-e9305f88a6e7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "e179c6c6-33ab-79ed-ac55-a3fe8999ec05",
							version = 3,
						},
					},
				},
				displayPath = "P5",
				mechanicTime = 976.8,
				name = "[Mit] Solar Ray 4 kitchen sink - Rampart",
				timeRange = true,
				timelineIndex = 207,
				timerEndOffset = -4,
				timerStartOffset = -8,
				uuid = "60e1663b-237a-4f62-bf88-7e1fa68afdbb",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 25751,
							conditions = 
							{
								
								{
									"6e908bca-e7b4-484e-816a-7cfff4d2ccbb",
									true,
								},
								
								{
									"82667595-7048-992a-a785-4590b5385143",
									true,
								},
								
								{
									"660c426b-6daf-60e0-b695-f923ceb49037",
									true,
								},
								
								{
									"51fb0436-ac9e-0e6c-9307-bca03af3a8b8",
									true,
								},
							},
							uuid = "a6f2e694-bed5-d81d-83e9-72a184747d9e",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25746,
							conditions = 
							{
								
								{
									"4dbfa7ce-c659-744c-af64-b7f0fc7f5dc6",
									true,
								},
								
								{
									"3911c0ec-0e03-570b-8e17-7eb9e208c394",
									true,
								},
								
								{
									"590cc1b3-7b1e-e0dc-aa33-aa3311c1c66c",
									true,
								},
								
								{
									"3b78095c-7e5b-f6ab-8f9d-951350c0e312",
									true,
								},
							},
							uuid = "1a15e2ed-f18b-2f9a-a246-fe06fc24fa38",
							version = 2.1,
						},
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
								21,
							},
							name = "Eligible jobs",
							uuid = "6e908bca-e7b4-484e-816a-7cfff4d2ccbb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "82667595-7048-992a-a785-4590b5385143",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal p=Settings.FFXIVMINION.LPDU_TOP_SolarTankPlan4\nif p==nil or p==4 then p=0 end\nif p~=0 then return false end\nlocal targetSlot=R.mySlot()\nreturn targetSlot~=nil and targetSlot==R.mySlot()",
							name = "Mitigation plan",
							uuid = "660c426b-6daf-60e0-b695-f923ceb49037",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25751,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "51fb0436-ac9e-0e6c-9307-bca03af3a8b8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								19,
							},
							name = "Eligible jobs",
							uuid = "4dbfa7ce-c659-744c-af64-b7f0fc7f5dc6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "3911c0ec-0e03-570b-8e17-7eb9e208c394",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal p=Settings.FFXIVMINION.LPDU_TOP_SolarTankPlan4\nif p==nil or p==4 then p=0 end\nif p~=0 then return false end\nlocal targetSlot=R.mySlot()\nreturn targetSlot~=nil and targetSlot==R.mySlot()",
							name = "Mitigation plan",
							uuid = "590cc1b3-7b1e-e0dc-aa33-aa3311c1c66c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25746,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "3b78095c-7e5b-f6ab-8f9d-951350c0e312",
							version = 3,
						},
					},
				},
				displayPath = "P5",
				mechanicTime = 976.8,
				name = "[Mit] Solar Ray 4 kitchen sink - short CD - self",
				timeRange = true,
				timelineIndex = 207,
				timerEndOffset = -0.5,
				timerStartOffset = -2.3,
				uuid = "2ab074f6-455a-8b57-8d19-69909d78d92b",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7393,
							conditions = 
							{
								
								{
									"e05c20a4-aed0-8337-9c45-8374a65ddb7f",
									true,
								},
								
								{
									"ccf2bfc4-810b-00cd-a219-cfd2755985bf",
									true,
								},
								
								{
									"8e08b61e-411b-6464-84ed-38ce052bc66f",
									true,
								},
								
								{
									"1c662820-0f24-386c-a170-71c9e6e68e2a",
									true,
								},
								
								{
									"cb1e0efe-df03-f898-af69-61c29379ba33",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "43d7faf0-b8e0-931e-82ca-db8865a6c0fd",
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
									"3228f901-c767-a08e-865c-5b0b6f0e4eac",
									true,
								},
								
								{
									"e61f98ca-6bd1-9f04-b388-28eddcd756dd",
									true,
								},
								
								{
									"79a8f048-7cba-dc9a-9f76-65d905b0e3e3",
									true,
								},
								
								{
									"cf1ac56c-0a9b-1777-a252-04ab1eb6a5cf",
									true,
								},
								
								{
									"433c9806-6108-3129-8fcb-59f3c5fb4516",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "c018f11c-c966-c31d-a38b-a45e825d4b18",
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
									"b68f99f4-5132-2707-a3ea-352771cac4aa",
									true,
								},
								
								{
									"f4fbb795-c61a-c33b-86f1-d966a81134cc",
									true,
								},
								
								{
									"51d2fada-6ec8-897b-9795-2fc88d1dab45",
									true,
								},
								
								{
									"439246a3-b742-fc7e-9ada-f4e276a932fb",
									true,
								},
								
								{
									"939828c9-03dc-b8f3-a29d-016476663263",
									true,
								},
								
								{
									"34fc524b-fbbd-3ec8-96e6-b73f50093e39",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "be451956-60db-32be-8705-0281fc46251d",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7382,
							conditions = 
							{
								
								{
									"4ee8c50e-2dac-a192-8e5b-ac33cb0d8fdd",
									true,
								},
								
								{
									"163c6b7d-5038-982b-bf37-e96496354240",
									true,
								},
								
								{
									"b16dfc3c-3729-6e0e-9580-0bbf093305b4",
									true,
								},
								
								{
									"3759eacb-f7a1-d276-8cbd-84e23c712328",
									true,
								},
								
								{
									"990aee79-e13c-1b86-8405-519c00fea0b2",
									true,
								},
								
								{
									"bc79b389-6606-8f22-8524-bd7298e989bd",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "df63438d-cf01-14b7-8c38-324e6dfeac12",
							version = 2.1,
						},
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
								32,
							},
							name = "Eligible jobs",
							uuid = "e05c20a4-aed0-8337-9c45-8374a65ddb7f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "ccf2bfc4-810b-00cd-a219-cfd2755985bf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal p=Settings.FFXIVMINION.LPDU_TOP_SolarTankPlan4\nif p==nil or p==4 then p=0 end\nif p~=0 then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "8e08b61e-411b-6464-84ed-38ce052bc66f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7393,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "1c662820-0f24-386c-a170-71c9e6e68e2a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "1c26f82e-f659-30aa-bac8-73fbd0500eab",
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
									"1c26f82e-f659-30aa-bac8-73fbd0500eab",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "cb1e0efe-df03-f898-af69-61c29379ba33",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								37,
							},
							name = "Eligible jobs",
							uuid = "3228f901-c767-a08e-865c-5b0b6f0e4eac",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "e61f98ca-6bd1-9f04-b388-28eddcd756dd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal p=Settings.FFXIVMINION.LPDU_TOP_SolarTankPlan4\nif p==nil or p==4 then p=0 end\nif p~=0 then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "79a8f048-7cba-dc9a-9f76-65d905b0e3e3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25758,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "cf1ac56c-0a9b-1777-a252-04ab1eb6a5cf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "871f25c2-c7b6-2adb-ac46-327d4e38c3d2",
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
									"871f25c2-c7b6-2adb-ac46-327d4e38c3d2",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "433c9806-6108-3129-8fcb-59f3c5fb4516",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								21,
							},
							name = "Eligible jobs",
							uuid = "b68f99f4-5132-2707-a3ea-352771cac4aa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "51d2fada-6ec8-897b-9795-2fc88d1dab45",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal p=Settings.FFXIVMINION.LPDU_TOP_SolarTankPlan4\nif p==nil or p==4 then p=0 end\nif p~=0 then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "439246a3-b742-fc7e-9ada-f4e276a932fb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16464,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "939828c9-03dc-b8f3-a29d-016476663263",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "25708775-d406-fed2-9924-b12a646c7683",
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
									"25708775-d406-fed2-9924-b12a646c7683",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "34fc524b-fbbd-3ec8-96e6-b73f50093e39",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								19,
							},
							name = "Eligible jobs",
							uuid = "4ee8c50e-2dac-a192-8e5b-ac33cb0d8fdd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "b16dfc3c-3729-6e0e-9580-0bbf093305b4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal p=Settings.FFXIVMINION.LPDU_TOP_SolarTankPlan4\nif p==nil or p==4 then p=0 end\nif p~=0 then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "3759eacb-f7a1-d276-8cbd-84e23c712328",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7382,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "990aee79-e13c-1b86-8405-519c00fea0b2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "7569afb0-15d2-f246-b32a-d57bb063094f",
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
									"7569afb0-15d2-f246-b32a-d57bb063094f",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "bc79b389-6606-8f22-8524-bd7298e989bd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nreturn targetSlot~=nil and targetSlot~=R.mySlot()",
							name = "Other recipient",
							uuid = "f4fbb795-c61a-c33b-86f1-d966a81134cc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nreturn targetSlot~=nil and targetSlot~=R.mySlot()",
							name = "Other recipient",
							uuid = "163c6b7d-5038-982b-bf37-e96496354240",
							version = 3,
						},
					},
				},
				displayPath = "P5",
				mechanicTime = 976.8,
				name = "[Mit] Solar Ray 4 kitchen sink - short CD - support",
				timeRange = true,
				timelineIndex = 207,
				timerEndOffset = -0.5,
				timerStartOffset = -2.3,
				uuid = "987c04b4-ef13-bc7c-82f2-56579a26024e",
				version = 2,
			},
		},
	},
	[210] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P5",
				uuid = "b926f59f-24fb-56ef-9b4a-0b842c029380",
			},
			objectType = "folder",
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
									"a821d42d-722b-6328-8158-10a1ea91ea4c",
									true,
								},
								
								{
									"68ecc2b5-8f5c-2783-8097-35f85d88ae7c",
									true,
								},
								
								{
									"b731f605-9a8a-7cf3-8097-6ed4192a469e",
									true,
								},
							},
							uuid = "a01a0778-11bf-3569-9848-4ff0e739506d",
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
									"513b945a-7a73-40aa-be28-a19a611eb9af",
									true,
								},
								
								{
									"45b25524-a939-4608-aa61-71d1852e9993",
									true,
								},
								
								{
									"c5380670-eb01-f5d6-a3c1-6f1f26e592fc",
									true,
								},
							},
							uuid = "6978e9e0-f628-d534-bbcd-509b04c60253",
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
									"44df0879-21ab-313d-994f-b2768c44b094",
									true,
								},
								
								{
									"9e742986-af69-ad32-b4a4-603d4f171c91",
									true,
								},
								
								{
									"3e6a94ef-4860-ac12-9db6-c84dedef2944",
									true,
								},
							},
							uuid = "cb956627-befd-acec-94b7-00a8f09a8261",
							version = 2.1,
						},
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
								23,
							},
							name = "Eligible jobs",
							uuid = "a821d42d-722b-6328-8158-10a1ea91ea4c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R1'",
							name = "Assigned R1",
							uuid = "68ecc2b5-8f5c-2783-8097-35f85d88ae7c",
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
							name = "Ready",
							uuid = "b731f605-9a8a-7cf3-8097-6ed4192a469e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								31,
							},
							name = "Eligible jobs",
							uuid = "513b945a-7a73-40aa-be28-a19a611eb9af",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R1'",
							name = "Assigned R1",
							uuid = "45b25524-a939-4608-aa61-71d1852e9993",
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
							name = "Ready",
							uuid = "c5380670-eb01-f5d6-a3c1-6f1f26e592fc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								38,
							},
							name = "Eligible jobs",
							uuid = "44df0879-21ab-313d-994f-b2768c44b094",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R1'",
							name = "Assigned R1",
							uuid = "9e742986-af69-ad32-b4a4-603d4f171c91",
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
							name = "Ready",
							uuid = "3e6a94ef-4860-ac12-9db6-c84dedef2944",
							version = 3,
						},
					},
				},
				displayPath = "P5",
				mechanicTime = 998.5,
				name = "[Mit] Blind Faith - party when ready",
				timeRange = true,
				timelineIndex = 210,
				timerEndOffset = 0.7,
				timerStartOffset = -1,
				uuid = "49c67edc-01d0-5839-87da-37641a285078",
				version = 2,
			},
		},
	},
	[213] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "Potions",
				uuid = "4d743d8c-282c-e385-8e5e-c017121a3142",
			},
			objectType = "folder",
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
									"18f225dd-02e5-cf22-bba1-ef590cb1b8a3",
									true,
								},
								
								{
									"889d60c3-3835-4507-ac11-95c7d22367e2",
									true,
								},
							},
							name = "Potion - Strength",
							potType = 4,
							usePot = true,
							uuid = "15562a12-0d30-b055-a34d-3cc0a3483ac4",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Misc",
							conditions = 
							{
								
								{
									"18f225dd-02e5-cf22-bba1-ef590cb1b8a3",
									true,
								},
								
								{
									"49f28aa1-c244-9ce8-a9b4-065461cda7ec",
									true,
								},
							},
							name = "Potion - Dexterity",
							usePot = true,
							uuid = "ecf8254a-161b-e1b5-bcad-cfabee07f1d4",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Misc",
							conditions = 
							{
								
								{
									"18f225dd-02e5-cf22-bba1-ef590cb1b8a3",
									true,
								},
								
								{
									"a0cc9ba0-5467-111e-a2a1-1f54368f858c",
									true,
								},
							},
							name = "Potion - Intelligence",
							potType = 2,
							usePot = true,
							uuid = "d54cf2b1-f6e7-7198-a4a0-286b3defb45e",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							aType = "Misc",
							conditions = 
							{
								
								{
									"18f225dd-02e5-cf22-bba1-ef590cb1b8a3",
									true,
								},
								
								{
									"4e4020b6-9e3b-a2d6-9b65-0d68f0d1566e",
									true,
								},
							},
							name = "Potion - Mind",
							potType = 3,
							usePot = true,
							uuid = "90471b0f-2cec-6fee-bf56-8e3a8304af8e",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
					
					{
						data = 
						{
							category = "Self",
							conditionType = 7,
							name = "In combat",
							uuid = "18f225dd-02e5-cf22-bba1-ef590cb1b8a3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								19,
								20,
								21,
								22,
								32,
								34,
								37,
								39,
							},
							name = "Strength jobs",
							uuid = "889d60c3-3835-4507-ac11-95c7d22367e2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								23,
								30,
								31,
								38,
								41,
							},
							name = "Dexterity jobs",
							uuid = "49f28aa1-c244-9ce8-a9b4-065461cda7ec",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								25,
								27,
								35,
								42,
							},
							name = "Intelligence jobs",
							uuid = "a0cc9ba0-5467-111e-a2a1-1f54368f858c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								24,
								28,
								33,
								40,
							},
							name = "Mind jobs",
							uuid = "4e4020b6-9e3b-a2d6-9b65-0d68f0d1566e",
							version = 3,
						},
					},
				},
				displayPath = "Potions",
				mechanicTime = 1154.7,
				name = "[Potion] P6 reopener",
				timeRange = true,
				timelineIndex = 213,
				timerEndOffset = 15,
				timerStartOffset = 0.3,
				uuid = "25553286-5f31-9211-ad3f-89ca3b933756",
				version = 2,
			},
		},
	},
	[219] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P6",
				uuid = "ee30e584-e6df-49d1-9b5f-d9ed320ae34e",
			},
			objectType = "folder",
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
									"5246e80a-4caf-bfd4-b866-3c80327e6da6",
									true,
								},
								
								{
									"19b55b66-73c5-9b2f-b74c-6b6bcb300ecb",
									true,
								},
								
								{
									"80ea8248-b1d6-4a6d-9bab-5e37e6c7a180",
									true,
								},
							},
							uuid = "d8a87656-72f2-9845-8aa2-afaee0fd021c",
							version = 2.1,
						},
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
							name = "Eligible jobs",
							uuid = "5246e80a-4caf-bfd4-b866-3c80327e6da6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "19b55b66-73c5-9b2f-b74c-6b6bcb300ecb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "80ea8248-b1d6-4a6d-9bab-5e37e6c7a180",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				mechanicTime = 1182.2,
				name = "[Mit] Cosmo Arrow ends - Dive 1 Rampart",
				timeRange = true,
				timelineIndex = 219,
				timerEndOffset = 2,
				timerStartOffset = 0.3,
				uuid = "ca0a3084-bf5b-bb77-8825-7cc965f26a34",
				version = 2,
			},
		},
	},
	[220] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P6",
				uuid = "c613e946-5fb7-776d-b1b3-9548814b5d89",
			},
			objectType = "folder",
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
									"e7a297ec-d353-51e0-a532-e97a45e06c0d",
									true,
								},
								
								{
									"9965e71c-5058-3d47-938f-b83793b41209",
									true,
								},
								
								{
									"2e2f9684-8d45-ae13-9c0e-b0419f2829e6",
									true,
								},
							},
							targetContentID = 12256,
							targetType = "ContentID",
							uuid = "bfff5fef-1d48-792d-9d78-aff917eb3831",
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
									"2f3a5c6c-7e9c-7edc-b930-f74eaa0de3d2",
									true,
								},
								
								{
									"d6b7fc06-e03f-f591-b7e9-f3a3a2383537",
									true,
								},
								
								{
									"56a9d039-3e30-09bc-9cb5-5fc794347f5d",
									true,
								},
								
								{
									"7245f220-eddf-a44f-8dda-4f8cac16a382",
									true,
								},
							},
							gVar = "ACR_TensorRuin3_Hotbar_Addle",
							uuid = "f8f1a21b-50fb-29a0-a230-c5f9991b16d1",
							variableTogglesType = 2,
							version = 2.1,
						},
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
								20,
								22,
								30,
								34,
								39,
								41,
							},
							name = "Eligible jobs",
							uuid = "e7a297ec-d353-51e0-a532-e97a45e06c0d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='M1'",
							name = "Assigned M1",
							uuid = "9965e71c-5058-3d47-938f-b83793b41209",
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
							name = "Ready",
							uuid = "2e2f9684-8d45-ae13-9c0e-b0419f2829e6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								25,
								27,
								35,
								42,
							},
							name = "Eligible jobs",
							uuid = "2f3a5c6c-7e9c-7edc-b930-f74eaa0de3d2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R2'",
							name = "Assigned R2",
							uuid = "d6b7fc06-e03f-f591-b7e9-f3a3a2383537",
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
							name = "Ready",
							uuid = "56a9d039-3e30-09bc-9cb5-5fc794347f5d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 12256,
							name = "Correct boss target",
							uuid = "7245f220-eddf-a44f-8dda-4f8cac16a382",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				mechanicTime = 1196.9,
				name = "[Mit] Cosmo Dive 1 - M1 Feint + Addle",
				timeRange = true,
				timelineIndex = 220,
				timerEndOffset = -1,
				timerStartOffset = -3,
				uuid = "3bcc43f5-48b6-5919-9369-2558fa6c91a3",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 25751,
							conditions = 
							{
								
								{
									"b62d22b0-c1fc-b836-a28e-55765366bc1b",
									true,
								},
								
								{
									"940e2b51-05a3-ea4d-80b8-84a68bb078e0",
									true,
								},
								
								{
									"b9e257f4-6321-776e-9ed8-1bdaf0149a64",
									true,
								},
								
								{
									"1a3a4d20-e619-2fc7-a096-13cb242e5237",
									true,
								},
							},
							uuid = "c9acb5d0-d0d8-6c90-874c-5b85ec0d48a7",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25746,
							conditions = 
							{
								
								{
									"d76acc55-3c3d-d4ff-9d87-a355ea36f171",
									true,
								},
								
								{
									"dd35d0fb-6d58-cb24-a7f5-d9486238a274",
									true,
								},
								
								{
									"4f76576e-5314-2d01-ba62-623c04f6605e",
									true,
								},
								
								{
									"56568d2e-118c-b867-ad57-8ebbaaf2a73e",
									true,
								},
							},
							uuid = "912d7ef2-4c10-e558-86d6-6fb0ed185ee0",
							version = 2.1,
						},
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
								21,
							},
							name = "Eligible jobs",
							uuid = "b62d22b0-c1fc-b836-a28e-55765366bc1b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "940e2b51-05a3-ea4d-80b8-84a68bb078e0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nreturn targetSlot~=nil and targetSlot==R.mySlot()",
							name = "Mitigation plan",
							uuid = "b9e257f4-6321-776e-9ed8-1bdaf0149a64",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25751,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "1a3a4d20-e619-2fc7-a096-13cb242e5237",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								19,
							},
							name = "Eligible jobs",
							uuid = "d76acc55-3c3d-d4ff-9d87-a355ea36f171",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "dd35d0fb-6d58-cb24-a7f5-d9486238a274",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nreturn targetSlot~=nil and targetSlot==R.mySlot()",
							name = "Mitigation plan",
							uuid = "4f76576e-5314-2d01-ba62-623c04f6605e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25746,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "56568d2e-118c-b867-ad57-8ebbaaf2a73e",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				mechanicTime = 1196.9,
				name = "[Mit] Cosmo Dive 1 short CD - self",
				timeRange = true,
				timelineIndex = 220,
				timerEndOffset = 1.2,
				uuid = "076e26b6-9bc7-1b80-9a27-09236f9cea9d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7393,
							conditions = 
							{
								
								{
									"d4ec70f8-8b46-8226-9101-e1bb407f4e93",
									true,
								},
								
								{
									"ae33dfac-970f-85e4-9abd-757d79884c18",
									true,
								},
								
								{
									"c2147175-f1a7-f70a-8d0c-263b2a89c5d0",
									true,
								},
								
								{
									"7e242788-111a-daaf-8c0a-d83358c0b3e1",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "eb799cc3-9d3b-1bb1-9021-702635ab5c5f",
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
									"672b9825-af41-af2c-b7eb-21f9bd013ef8",
									true,
								},
								
								{
									"6e0eb7aa-2299-2c44-be1b-aac2b43c3592",
									true,
								},
								
								{
									"287c6bb6-6fe3-b137-bf44-928ca9291af1",
									true,
								},
								
								{
									"9ebc6c5c-28fc-7d08-9f13-a84da2657cf2",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "66074506-b59f-f238-84b4-9624d45bd834",
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
									"2ec9802f-9967-bedd-ba84-56f15cc174cc",
									true,
								},
								
								{
									"b96f339b-f6b1-1551-8bd4-af4994c6fc54",
									true,
								},
								
								{
									"d0c489a6-b0e6-f53a-b1ce-a9ac1142fef5",
									true,
								},
								
								{
									"b9ea8815-c9fb-5f3b-bf4b-62d4cdc9bdca",
									true,
								},
								
								{
									"a1b74bca-209a-35ad-8662-d25f1c3d9ccf",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "416bf609-7051-b290-a009-4b9f3b48da42",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7382,
							conditions = 
							{
								
								{
									"6342460a-2953-258a-a420-e6f3419db1e2",
									true,
								},
								
								{
									"eb7ce154-036f-786c-ad28-aa50b05df76b",
									true,
								},
								
								{
									"f9568fa3-e54c-29b9-a448-7b187259fa24",
									true,
								},
								
								{
									"eda40490-bf09-710a-b9f4-8da6ec765a34",
									true,
								},
								
								{
									"e810821a-8e6d-3f95-9d7d-ab6feb8ef393",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "0daa5f98-9573-96a3-8001-ede92e0928f4",
							version = 2.1,
						},
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
								32,
							},
							name = "Eligible jobs",
							uuid = "d4ec70f8-8b46-8226-9101-e1bb407f4e93",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "ae33dfac-970f-85e4-9abd-757d79884c18",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7393,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "c2147175-f1a7-f70a-8d0c-263b2a89c5d0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "0b8cecde-ea49-8a11-8e96-d3dca42469cf",
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
									"0b8cecde-ea49-8a11-8e96-d3dca42469cf",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "7e242788-111a-daaf-8c0a-d83358c0b3e1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								37,
							},
							name = "Eligible jobs",
							uuid = "672b9825-af41-af2c-b7eb-21f9bd013ef8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "6e0eb7aa-2299-2c44-be1b-aac2b43c3592",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25758,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "287c6bb6-6fe3-b137-bf44-928ca9291af1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "57123839-3785-c4cb-bc83-908974d0a28c",
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
									"57123839-3785-c4cb-bc83-908974d0a28c",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "9ebc6c5c-28fc-7d08-9f13-a84da2657cf2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								21,
							},
							name = "Eligible jobs",
							uuid = "2ec9802f-9967-bedd-ba84-56f15cc174cc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "d0c489a6-b0e6-f53a-b1ce-a9ac1142fef5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16464,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "b9ea8815-c9fb-5f3b-bf4b-62d4cdc9bdca",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "aeedb84a-1f58-f58a-82e0-3534d4b2ba55",
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
									"aeedb84a-1f58-f58a-82e0-3534d4b2ba55",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "a1b74bca-209a-35ad-8662-d25f1c3d9ccf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								19,
							},
							name = "Eligible jobs",
							uuid = "6342460a-2953-258a-a420-e6f3419db1e2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "f9568fa3-e54c-29b9-a448-7b187259fa24",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7382,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "eda40490-bf09-710a-b9f4-8da6ec765a34",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "a57caf3c-ecec-6884-8d01-dac4dc9f27f4",
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
									"a57caf3c-ecec-6884-8d01-dac4dc9f27f4",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "e810821a-8e6d-3f95-9d7d-ab6feb8ef393",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nreturn targetSlot~=nil and targetSlot~=R.mySlot()",
							name = "Other recipient",
							uuid = "b96f339b-f6b1-1551-8bd4-af4994c6fc54",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nreturn targetSlot~=nil and targetSlot~=R.mySlot()",
							name = "Other recipient",
							uuid = "eb7ce154-036f-786c-ad28-aa50b05df76b",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				mechanicTime = 1196.9,
				name = "[Mit] Cosmo Dive 1 short CD - support",
				timeRange = true,
				timelineIndex = 220,
				timerEndOffset = 1.2,
				uuid = "908e048a-0a84-b72c-bde6-c3b94e9a51c5",
				version = 2,
			},
		},
	},
	[233] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P6",
				uuid = "140c7784-b879-a5bb-b5a6-e8d054224d87",
			},
			objectType = "folder",
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
									"883a5081-6e31-8608-abfb-0bf4a1cd870c",
									true,
								},
								
								{
									"9281f906-5761-e8b8-b5e1-6b8240209b0a",
									true,
								},
								
								{
									"720a401f-d25c-a8a1-ab90-86c63c0b7c71",
									true,
								},
							},
							uuid = "2200dc86-16b8-a266-a382-f840eac5959e",
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
									"a78a0646-f2dd-4d69-9400-9b4dbd9294c8",
									true,
								},
								
								{
									"aaa4c349-a1ab-aed3-93f3-ea3131b302f4",
									true,
								},
								
								{
									"519740c3-bfe6-753b-a01f-9f795be8ea8c",
									true,
								},
							},
							uuid = "a63a70e9-9b22-e40e-94dc-15f6e3df8693",
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
									"c8031aa5-8135-bf81-9212-d453b773c9e8",
									true,
								},
								
								{
									"d4d6e8f0-1d28-e46b-8f35-6e9bba6f3c0d",
									true,
								},
								
								{
									"fb497aa9-59b4-28a6-8bb9-8949efd50301",
									true,
								},
							},
							uuid = "2471c6a1-ff46-0de7-92f3-94c1140fdde9",
							version = 2.1,
						},
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
								23,
							},
							name = "Eligible jobs",
							uuid = "883a5081-6e31-8608-abfb-0bf4a1cd870c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R1'",
							name = "Assigned R1",
							uuid = "9281f906-5761-e8b8-b5e1-6b8240209b0a",
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
							name = "Ready",
							uuid = "720a401f-d25c-a8a1-ab90-86c63c0b7c71",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								31,
							},
							name = "Eligible jobs",
							uuid = "a78a0646-f2dd-4d69-9400-9b4dbd9294c8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R1'",
							name = "Assigned R1",
							uuid = "aaa4c349-a1ab-aed3-93f3-ea3131b302f4",
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
							name = "Ready",
							uuid = "519740c3-bfe6-753b-a01f-9f795be8ea8c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								38,
							},
							name = "Eligible jobs",
							uuid = "c8031aa5-8135-bf81-9212-d453b773c9e8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R1'",
							name = "Assigned R1",
							uuid = "d4d6e8f0-1d28-e46b-8f35-6e9bba6f3c0d",
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
							name = "Ready",
							uuid = "fb497aa9-59b4-28a6-8bb9-8949efd50301",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				mechanicTime = 1232.9,
				name = "[Mit] WC1 after puddle 6 - party",
				timeRange = true,
				timelineIndex = 233,
				timerEndOffset = 2,
				timerStartOffset = 0.4,
				uuid = "e81b04be-c1e1-438d-af44-77500ef506f1",
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
				name = "P6",
				uuid = "8a42a354-60a9-2027-a405-2eca2eae5cf0",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 25751,
							conditions = 
							{
								
								{
									"0df44858-0818-2e99-907d-92d4183645ea",
									true,
								},
								
								{
									"5cb1b589-7cad-564d-9304-bcde53b4245a",
									true,
								},
								
								{
									"719c9740-55aa-8d41-9123-0c95c7c802e1",
									true,
								},
								
								{
									"d17d335d-ccbc-eb33-9ab3-cf2669de47a5",
									true,
								},
							},
							uuid = "881c7089-5828-07c3-b6b7-0d9a4dd31624",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25746,
							conditions = 
							{
								
								{
									"0a6ff9f4-1ff6-46b6-aeca-51624eb14cdb",
									true,
								},
								
								{
									"a8505b46-3035-2e0d-9300-77cdb986a7e6",
									true,
								},
								
								{
									"ec07e0e6-8140-9aed-8741-a7b948c547e7",
									true,
								},
								
								{
									"6e377345-0a5a-ba9d-9a30-7ca8c2272a31",
									true,
								},
							},
							uuid = "61eafd2e-169e-3f2e-9c45-ed74ed49fff7",
							version = 2.1,
						},
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
								21,
							},
							name = "Eligible jobs",
							uuid = "0df44858-0818-2e99-907d-92d4183645ea",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "5cb1b589-7cad-564d-9304-bcde53b4245a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal a,b=R.entOf('T1'),R.entOf('T2')\nif not a or not b then return false end\nlocal my=R.mySlot()\nlocal other=my=='T1' and 'T2' or my=='T2' and 'T1'\nlocal me=R.entOf(my)\nlocal hasWAR=a.job==21 or b.job==21\nlocal hasGNB=a.job==37 or b.job==37\nlocal hasPLD=a.job==19 or b.job==19\nlocal invuln=me.job==21 or (me.job==19 and hasGNB)\nif invuln==true then return false end\nlocal targetSlot=R.mySlot()\nreturn targetSlot~=nil and targetSlot==R.mySlot()",
							name = "Mitigation plan",
							uuid = "719c9740-55aa-8d41-9123-0c95c7c802e1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25751,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "d17d335d-ccbc-eb33-9ab3-cf2669de47a5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								19,
							},
							name = "Eligible jobs",
							uuid = "0a6ff9f4-1ff6-46b6-aeca-51624eb14cdb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "a8505b46-3035-2e0d-9300-77cdb986a7e6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal a,b=R.entOf('T1'),R.entOf('T2')\nif not a or not b then return false end\nlocal my=R.mySlot()\nlocal other=my=='T1' and 'T2' or my=='T2' and 'T1'\nlocal me=R.entOf(my)\nlocal hasWAR=a.job==21 or b.job==21\nlocal hasGNB=a.job==37 or b.job==37\nlocal hasPLD=a.job==19 or b.job==19\nlocal invuln=me.job==21 or (me.job==19 and hasGNB)\nif invuln==true then return false end\nlocal targetSlot=R.mySlot()\nreturn targetSlot~=nil and targetSlot==R.mySlot()",
							name = "Mitigation plan",
							uuid = "ec07e0e6-8140-9aed-8741-a7b948c547e7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25746,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "6e377345-0a5a-ba9d-9a30-7ca8c2272a31",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				mechanicTime = 1244.3,
				name = "[Mit] P6 wc1 short CD - self",
				timeRange = true,
				timelineIndex = 237,
				timerEndOffset = -2,
				timerStartOffset = -4,
				uuid = "62e7420f-3095-08b4-986b-a251888bb390",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7393,
							conditions = 
							{
								
								{
									"96bcda87-3bc9-8b66-b493-f425c7d944f7",
									true,
								},
								
								{
									"5eda3ec8-efa9-e9c4-a469-d72c0abe6823",
									true,
								},
								
								{
									"7d88c734-ae21-92cd-9b53-dc594d852c0b",
									true,
								},
								
								{
									"62fe5926-3126-ed66-883e-9d86811c789c",
									true,
								},
								
								{
									"72acaf20-25ed-c6fe-87b6-831de0173b6c",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "8f70f333-8001-93f8-b54f-bbd3f761cca1",
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
									"8e1ecc25-a0eb-8a1c-9d9b-e66f8a27f484",
									true,
								},
								
								{
									"e783f2e1-dec0-9146-81b2-1ce9f26e98c1",
									true,
								},
								
								{
									"59ca1b57-0961-1cfb-926e-1fca579582b0",
									true,
								},
								
								{
									"dcfecc76-2c61-80d3-a4f3-f57f33c1c8e5",
									true,
								},
								
								{
									"b412f6db-1a73-9875-b9b2-96dbe37a2bd1",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "12f82102-02e8-27dd-bd19-716d3cd76402",
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
									"3c871690-ecd9-244d-abf7-0d47ee9c265e",
									true,
								},
								
								{
									"27b9b439-b63c-5b25-9eb5-ea71280bb293",
									true,
								},
								
								{
									"bb3e7a9d-ff70-2d45-bc8f-2a1f97620241",
									true,
								},
								
								{
									"1aaf7c2a-997c-34e5-aa1d-6f60c27de13d",
									true,
								},
								
								{
									"337449e5-0ca1-2b61-94d0-36f193d38e0b",
									true,
								},
								
								{
									"3c4eee35-e470-bdd4-8d85-0b1e5950f7a4",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "bdeac37a-ffb2-c04e-8fb9-d26d3765e161",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7382,
							conditions = 
							{
								
								{
									"5d13f795-de94-5237-b844-986bf8690dd9",
									true,
								},
								
								{
									"39db2837-81e5-6cb0-be4d-eebe5b22393c",
									true,
								},
								
								{
									"8bef7703-833f-f97b-b61c-ca2046bd9daa",
									true,
								},
								
								{
									"f6af7b14-2f61-388a-aeb7-2823ff0d8d39",
									true,
								},
								
								{
									"45b61ce9-ebc2-0129-a590-91a173da870e",
									true,
								},
								
								{
									"3a20e405-4a4b-1b8a-bb11-95c00a2e05f5",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "8d4dc1d1-83f9-bd1b-9e27-e0ddbeb8cdd6",
							version = 2.1,
						},
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
								32,
							},
							name = "Eligible jobs",
							uuid = "96bcda87-3bc9-8b66-b493-f425c7d944f7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "5eda3ec8-efa9-e9c4-a469-d72c0abe6823",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal a,b=R.entOf('T1'),R.entOf('T2')\nif not a or not b then return false end\nlocal my=R.mySlot()\nlocal other=my=='T1' and 'T2' or my=='T2' and 'T1'\nlocal me=R.entOf(my)\nlocal hasWAR=a.job==21 or b.job==21\nlocal hasGNB=a.job==37 or b.job==37\nlocal hasPLD=a.job==19 or b.job==19\nlocal invuln=me.job==21 or (me.job==19 and hasGNB)\nif invuln==true then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "7d88c734-ae21-92cd-9b53-dc594d852c0b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7393,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "62fe5926-3126-ed66-883e-9d86811c789c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "eb9c324f-5552-d7b4-932a-815ac0ca7c3a",
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
									"eb9c324f-5552-d7b4-932a-815ac0ca7c3a",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "72acaf20-25ed-c6fe-87b6-831de0173b6c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								37,
							},
							name = "Eligible jobs",
							uuid = "8e1ecc25-a0eb-8a1c-9d9b-e66f8a27f484",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "e783f2e1-dec0-9146-81b2-1ce9f26e98c1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal a,b=R.entOf('T1'),R.entOf('T2')\nif not a or not b then return false end\nlocal my=R.mySlot()\nlocal other=my=='T1' and 'T2' or my=='T2' and 'T1'\nlocal me=R.entOf(my)\nlocal hasWAR=a.job==21 or b.job==21\nlocal hasGNB=a.job==37 or b.job==37\nlocal hasPLD=a.job==19 or b.job==19\nlocal invuln=me.job==21 or (me.job==19 and hasGNB)\nif invuln==true then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "59ca1b57-0961-1cfb-926e-1fca579582b0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25758,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "dcfecc76-2c61-80d3-a4f3-f57f33c1c8e5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "fcc64fda-bc97-bc18-bde0-8d0f9b404373",
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
									"fcc64fda-bc97-bc18-bde0-8d0f9b404373",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "b412f6db-1a73-9875-b9b2-96dbe37a2bd1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								21,
							},
							name = "Eligible jobs",
							uuid = "3c871690-ecd9-244d-abf7-0d47ee9c265e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "bb3e7a9d-ff70-2d45-bc8f-2a1f97620241",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal a,b=R.entOf('T1'),R.entOf('T2')\nif not a or not b then return false end\nlocal my=R.mySlot()\nlocal other=my=='T1' and 'T2' or my=='T2' and 'T1'\nlocal me=R.entOf(my)\nlocal hasWAR=a.job==21 or b.job==21\nlocal hasGNB=a.job==37 or b.job==37\nlocal hasPLD=a.job==19 or b.job==19\nlocal invuln=me.job==21 or (me.job==19 and hasGNB)\nif invuln==true then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "1aaf7c2a-997c-34e5-aa1d-6f60c27de13d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16464,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "337449e5-0ca1-2b61-94d0-36f193d38e0b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "1f3eeff8-3a10-8729-a94c-a53402eb5221",
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
									"1f3eeff8-3a10-8729-a94c-a53402eb5221",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "3c4eee35-e470-bdd4-8d85-0b1e5950f7a4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								19,
							},
							name = "Eligible jobs",
							uuid = "5d13f795-de94-5237-b844-986bf8690dd9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "8bef7703-833f-f97b-b61c-ca2046bd9daa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal a,b=R.entOf('T1'),R.entOf('T2')\nif not a or not b then return false end\nlocal my=R.mySlot()\nlocal other=my=='T1' and 'T2' or my=='T2' and 'T1'\nlocal me=R.entOf(my)\nlocal hasWAR=a.job==21 or b.job==21\nlocal hasGNB=a.job==37 or b.job==37\nlocal hasPLD=a.job==19 or b.job==19\nlocal invuln=me.job==21 or (me.job==19 and hasGNB)\nif invuln==true then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "f6af7b14-2f61-388a-aeb7-2823ff0d8d39",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7382,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "45b61ce9-ebc2-0129-a590-91a173da870e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "9e34be47-0dfb-75ae-a5eb-114212110a8f",
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
									"9e34be47-0dfb-75ae-a5eb-114212110a8f",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "3a20e405-4a4b-1b8a-bb11-95c00a2e05f5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nreturn targetSlot~=nil and targetSlot~=R.mySlot()",
							name = "Other recipient",
							uuid = "27b9b439-b63c-5b25-9eb5-ea71280bb293",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nreturn targetSlot~=nil and targetSlot~=R.mySlot()",
							name = "Other recipient",
							uuid = "39db2837-81e5-6cb0-be4d-eebe5b22393c",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				mechanicTime = 1244.3,
				name = "[Mit] P6 wc1 short CD - support",
				timeRange = true,
				timelineIndex = 237,
				timerEndOffset = -2,
				timerStartOffset = -4,
				uuid = "d1a13984-0365-ddb6-a2bf-624194b2afcb",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 25751,
							conditions = 
							{
								
								{
									"bfbff043-ffe9-445f-ae8b-9945798d28ab",
									true,
								},
								
								{
									"b4701c62-e299-c9f4-ae9b-0ad76aadc563",
									true,
								},
								
								{
									"910cb02c-b3e3-f311-98d2-cf05046a18ef",
									true,
								},
								
								{
									"ec60f45a-2337-4e72-b506-caa65f16834d",
									true,
								},
							},
							uuid = "0aded48a-c37e-44a1-b617-9f6d9d06109a",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25746,
							conditions = 
							{
								
								{
									"cad797b9-0c4e-c694-8b43-37bc25f288ce",
									true,
								},
								
								{
									"29184d9b-c53f-52bd-ad12-cf550dce543a",
									true,
								},
								
								{
									"d4939312-344d-144c-b47c-ec213a2eec12",
									true,
								},
								
								{
									"4c08f5eb-2c08-b33c-bf81-8f2dc82bd0f2",
									true,
								},
							},
							uuid = "e7e68756-8367-650c-b359-efaf8b9551be",
							version = 2.1,
						},
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
								21,
							},
							name = "Eligible jobs",
							uuid = "bfbff043-ffe9-445f-ae8b-9945798d28ab",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "b4701c62-e299-c9f4-ae9b-0ad76aadc563",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal a,b=R.entOf('T1'),R.entOf('T2')\nif not a or not b then return false end\nlocal my=R.mySlot()\nlocal other=my=='T1' and 'T2' or my=='T2' and 'T1'\nlocal me=R.entOf(my)\nlocal hasWAR=a.job==21 or b.job==21\nlocal hasGNB=a.job==37 or b.job==37\nlocal hasPLD=a.job==19 or b.job==19\nlocal invuln=me.job==21 or (me.job==19 and hasGNB)\nif invuln==false then return false end\nlocal targetSlot=(R.mySlot()=='T1' and 'T2' or 'T1')\nreturn targetSlot~=nil and targetSlot==R.mySlot()",
							name = "Mitigation plan",
							uuid = "910cb02c-b3e3-f311-98d2-cf05046a18ef",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25751,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "ec60f45a-2337-4e72-b506-caa65f16834d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								19,
							},
							name = "Eligible jobs",
							uuid = "cad797b9-0c4e-c694-8b43-37bc25f288ce",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "29184d9b-c53f-52bd-ad12-cf550dce543a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal a,b=R.entOf('T1'),R.entOf('T2')\nif not a or not b then return false end\nlocal my=R.mySlot()\nlocal other=my=='T1' and 'T2' or my=='T2' and 'T1'\nlocal me=R.entOf(my)\nlocal hasWAR=a.job==21 or b.job==21\nlocal hasGNB=a.job==37 or b.job==37\nlocal hasPLD=a.job==19 or b.job==19\nlocal invuln=me.job==21 or (me.job==19 and hasGNB)\nif invuln==false then return false end\nlocal targetSlot=(R.mySlot()=='T1' and 'T2' or 'T1')\nreturn targetSlot~=nil and targetSlot==R.mySlot()",
							name = "Mitigation plan",
							uuid = "d4939312-344d-144c-b47c-ec213a2eec12",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25746,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "4c08f5eb-2c08-b33c-bf81-8f2dc82bd0f2",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				mechanicTime = 1244.3,
				name = "[Mit] P6 wc1 support invuln partner - self",
				timeRange = true,
				timelineIndex = 237,
				timerEndOffset = -2,
				timerStartOffset = -4,
				uuid = "836e9f07-ee32-a70e-8c6f-b85d1a62db4d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7393,
							conditions = 
							{
								
								{
									"49c2a22d-881c-a74a-8e19-6f44fa6c8f26",
									true,
								},
								
								{
									"0e5b5fd7-72af-16b0-8b4e-98e7fbf6acff",
									true,
								},
								
								{
									"a66ca96a-2da7-c0e2-a610-1c3623ef9c47",
									true,
								},
								
								{
									"e5e0dbea-98c9-5e40-9ee8-036275a241d0",
									true,
								},
								
								{
									"fcd30930-d277-f23c-876d-b66f2f835642",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "785433fa-f495-d1e0-90f2-cbc048511a9f",
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
									"941bd948-df1a-91b4-b5bb-432be6405bd7",
									true,
								},
								
								{
									"07117d72-8e61-a684-bbf0-0d57533c28ed",
									true,
								},
								
								{
									"0ffce4c6-7043-4547-b08b-0f3d2fecc012",
									true,
								},
								
								{
									"b74b9f33-3e3d-4177-b92a-3c3a0b6f2249",
									true,
								},
								
								{
									"51a581b3-326a-29df-9e1d-a8867976091b",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "9369ac62-6810-95aa-814d-6ecba854ef9f",
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
									"b1189403-ce92-2e23-8d4d-85d6c19f4f5a",
									true,
								},
								
								{
									"aeef7473-d164-d031-b0c0-62fba4b7a3b7",
									true,
								},
								
								{
									"a816f515-47c9-5124-8d74-ed2c785e84c8",
									true,
								},
								
								{
									"9108a961-eb9a-ec41-a77b-179da0b20f8f",
									true,
								},
								
								{
									"24ada7cc-485f-492f-a78a-019909e3d289",
									true,
								},
								
								{
									"9adc4c03-3928-7dfa-97e5-1c8d27c8d4fc",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "aa6fc89a-ff90-0d9b-a239-6295f8c21355",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7382,
							conditions = 
							{
								
								{
									"d7592475-d7b0-7ba5-98f1-d4e4ab9aa758",
									true,
								},
								
								{
									"1f66cb3b-843d-f892-9294-06f2d2f27051",
									true,
								},
								
								{
									"c75d3969-ec33-8691-94ce-a8907d9e789f",
									true,
								},
								
								{
									"f3f01f9c-2202-a7c4-b380-b8881382d32d",
									true,
								},
								
								{
									"b46e433b-f8f8-b79a-9ff2-385a5a40b5cf",
									true,
								},
								
								{
									"7839331c-ab80-b53f-983c-bcff1a4b0c06",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "77b90bc1-3b53-8335-891b-8ae76cab312a",
							version = 2.1,
						},
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
								32,
							},
							name = "Eligible jobs",
							uuid = "49c2a22d-881c-a74a-8e19-6f44fa6c8f26",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "0e5b5fd7-72af-16b0-8b4e-98e7fbf6acff",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal a,b=R.entOf('T1'),R.entOf('T2')\nif not a or not b then return false end\nlocal my=R.mySlot()\nlocal other=my=='T1' and 'T2' or my=='T2' and 'T1'\nlocal me=R.entOf(my)\nlocal hasWAR=a.job==21 or b.job==21\nlocal hasGNB=a.job==37 or b.job==37\nlocal hasPLD=a.job==19 or b.job==19\nlocal invuln=me.job==21 or (me.job==19 and hasGNB)\nif invuln==false then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "a66ca96a-2da7-c0e2-a610-1c3623ef9c47",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7393,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "e5e0dbea-98c9-5e40-9ee8-036275a241d0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(R.mySlot()=='T1' and 'T2' or 'T1')\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "3bd28e3d-956b-9e1d-bc8d-6134a9bf59ee",
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
									"3bd28e3d-956b-9e1d-bc8d-6134a9bf59ee",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "fcd30930-d277-f23c-876d-b66f2f835642",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								37,
							},
							name = "Eligible jobs",
							uuid = "941bd948-df1a-91b4-b5bb-432be6405bd7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "07117d72-8e61-a684-bbf0-0d57533c28ed",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal a,b=R.entOf('T1'),R.entOf('T2')\nif not a or not b then return false end\nlocal my=R.mySlot()\nlocal other=my=='T1' and 'T2' or my=='T2' and 'T1'\nlocal me=R.entOf(my)\nlocal hasWAR=a.job==21 or b.job==21\nlocal hasGNB=a.job==37 or b.job==37\nlocal hasPLD=a.job==19 or b.job==19\nlocal invuln=me.job==21 or (me.job==19 and hasGNB)\nif invuln==false then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "0ffce4c6-7043-4547-b08b-0f3d2fecc012",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25758,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "b74b9f33-3e3d-4177-b92a-3c3a0b6f2249",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(R.mySlot()=='T1' and 'T2' or 'T1')\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "2e785f8e-361a-4222-b90a-c647207aa43d",
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
									"2e785f8e-361a-4222-b90a-c647207aa43d",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "51a581b3-326a-29df-9e1d-a8867976091b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								21,
							},
							name = "Eligible jobs",
							uuid = "b1189403-ce92-2e23-8d4d-85d6c19f4f5a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "a816f515-47c9-5124-8d74-ed2c785e84c8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal a,b=R.entOf('T1'),R.entOf('T2')\nif not a or not b then return false end\nlocal my=R.mySlot()\nlocal other=my=='T1' and 'T2' or my=='T2' and 'T1'\nlocal me=R.entOf(my)\nlocal hasWAR=a.job==21 or b.job==21\nlocal hasGNB=a.job==37 or b.job==37\nlocal hasPLD=a.job==19 or b.job==19\nlocal invuln=me.job==21 or (me.job==19 and hasGNB)\nif invuln==false then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "9108a961-eb9a-ec41-a77b-179da0b20f8f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16464,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "24ada7cc-485f-492f-a78a-019909e3d289",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(R.mySlot()=='T1' and 'T2' or 'T1')\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "79a75737-751a-780f-864d-9e92299d44e9",
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
									"79a75737-751a-780f-864d-9e92299d44e9",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "9adc4c03-3928-7dfa-97e5-1c8d27c8d4fc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								19,
							},
							name = "Eligible jobs",
							uuid = "d7592475-d7b0-7ba5-98f1-d4e4ab9aa758",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "c75d3969-ec33-8691-94ce-a8907d9e789f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal a,b=R.entOf('T1'),R.entOf('T2')\nif not a or not b then return false end\nlocal my=R.mySlot()\nlocal other=my=='T1' and 'T2' or my=='T2' and 'T1'\nlocal me=R.entOf(my)\nlocal hasWAR=a.job==21 or b.job==21\nlocal hasGNB=a.job==37 or b.job==37\nlocal hasPLD=a.job==19 or b.job==19\nlocal invuln=me.job==21 or (me.job==19 and hasGNB)\nif invuln==false then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "f3f01f9c-2202-a7c4-b380-b8881382d32d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7382,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "b46e433b-f8f8-b79a-9ff2-385a5a40b5cf",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(R.mySlot()=='T1' and 'T2' or 'T1')\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "db6a586e-4ac2-84d9-81cf-a4087281bed5",
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
									"db6a586e-4ac2-84d9-81cf-a4087281bed5",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "7839331c-ab80-b53f-983c-bcff1a4b0c06",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(R.mySlot()=='T1' and 'T2' or 'T1')\nreturn targetSlot~=nil and targetSlot~=R.mySlot()",
							name = "Other recipient",
							uuid = "aeef7473-d164-d031-b0c0-62fba4b7a3b7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(R.mySlot()=='T1' and 'T2' or 'T1')\nreturn targetSlot~=nil and targetSlot~=R.mySlot()",
							name = "Other recipient",
							uuid = "1f66cb3b-843d-f892-9294-06f2d2f27051",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				mechanicTime = 1244.3,
				name = "[Mit] P6 wc1 support invuln partner - support",
				timeRange = true,
				timelineIndex = 237,
				timerEndOffset = -2,
				timerStartOffset = -4,
				uuid = "8a10f9c4-cc0c-450b-a4de-c5971d2f6faa",
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
				name = "P6",
				uuid = "6aa3a9ad-8fa2-a855-ad33-1b6effc7fd63",
			},
			objectType = "folder",
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
									"cff9a191-7bad-234a-aace-5cf14bda81fa",
									true,
								},
								
								{
									"e5a7074b-1c9d-1549-9edf-db425db0212d",
									true,
								},
								
								{
									"c2a32896-8522-a8e2-a5a9-6cf382a62a3e",
									true,
								},
							},
							targetContentID = 12256,
							targetType = "ContentID",
							uuid = "552d5886-bc08-0d9e-9884-4d2588f4e37c",
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
									"bae600a6-3433-64a7-82b5-0e814b33c3c5",
									true,
								},
								
								{
									"2e50cf3f-926e-bcd2-8c44-f7a7c8cab00e",
									true,
								},
								
								{
									"0250e7ed-3b65-baf0-8e17-efd78d8d594d",
									true,
								},
							},
							uuid = "e01a3f83-5ab4-aa72-a3b2-f4f87a5f9a66",
							version = 2.1,
						},
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
								20,
								22,
								30,
								34,
								39,
								41,
							},
							name = "Eligible jobs",
							uuid = "cff9a191-7bad-234a-aace-5cf14bda81fa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='M2'",
							name = "Assigned M2",
							uuid = "e5a7074b-1c9d-1549-9edf-db425db0212d",
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
							name = "Ready",
							uuid = "c2a32896-8522-a8e2-a5a9-6cf382a62a3e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								35,
							},
							name = "Eligible jobs",
							uuid = "bae600a6-3433-64a7-82b5-0e814b33c3c5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R2'",
							name = "Assigned R2",
							uuid = "2e50cf3f-926e-bcd2-8c44-f7a7c8cab00e",
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
							name = "Ready",
							uuid = "0250e7ed-3b65-baf0-8e17-efd78d8d594d",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				mechanicTime = 1269.9,
				name = "[Mit] WC2 proteans + stack - M2 Feint + Barrier",
				timeRange = true,
				timelineIndex = 243,
				timerEndOffset = 1,
				timerStartOffset = -0.4,
				uuid = "e4d677c2-d5a8-91e2-a0b1-b72709320126",
				version = 2,
			},
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
									"cf023fc1-b45d-f454-9b77-ee24d503fcaa",
									true,
								},
								
								{
									"54af7052-2c81-f8e1-b499-489e77237cb5",
									true,
								},
								
								{
									"0d386e59-ae38-f263-bf97-36c7387c712b",
									true,
								},
								
								{
									"1f3e8767-4190-eab9-955b-64f59a69c181",
									true,
								},
							},
							uuid = "e327797e-f8e5-d9f5-a7f9-27144964b191",
							version = 2.1,
						},
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
								32,
							},
							name = "Eligible jobs",
							uuid = "cf023fc1-b45d-f454-9b77-ee24d503fcaa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "54af7052-2c81-f8e1-b499-489e77237cb5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal a,b=R.entOf('T1'),R.entOf('T2')\nif not a or not b then return false end\nlocal my=R.mySlot()\nlocal other=my=='T1' and 'T2' or my=='T2' and 'T1'\nlocal me=R.entOf(my)\nlocal hasWAR=a.job==21 or b.job==21\nlocal hasGNB=a.job==37 or b.job==37\nlocal hasPLD=a.job==19 or b.job==19\nreturn not hasWAR",
							name = "Mitigation plan",
							uuid = "0d386e59-ae38-f263-bf97-36c7387c712b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "1f3e8767-4190-eab9-955b-64f59a69c181",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				mechanicTime = 1269.9,
				name = "[Mit] WC2 DRK without WAR - Rampart",
				timeRange = true,
				timelineIndex = 243,
				timerEndOffset = -7,
				timerStartOffset = -10,
				uuid = "7983f3a3-c8c9-4195-b9e9-09fbb3275d26",
				version = 2,
			},
		},
	},
	[246] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P6",
				uuid = "d27da3b2-5e78-fe17-9abf-cc7b5aa6f6cd",
			},
			objectType = "folder",
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 25751,
							conditions = 
							{
								
								{
									"877e4a1c-eebf-2f42-a647-0ad61625bbbc",
									true,
								},
								
								{
									"fa6f01e9-80a2-890e-a323-6ce691bef97d",
									true,
								},
								
								{
									"1351fa51-d19b-6864-8401-fed9d0427a93",
									true,
								},
								
								{
									"51c5cec7-bb55-3c41-9145-e6807ef4e8bd",
									true,
								},
							},
							uuid = "fd7c8c20-bc54-a3cb-b2d6-1c07c46bb26e",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25746,
							conditions = 
							{
								
								{
									"4df8c08e-856d-a716-9197-eb7ad16180ef",
									true,
								},
								
								{
									"f8feeccd-9444-b935-8ef1-9a9ba28dc251",
									true,
								},
								
								{
									"5c36de11-9093-b16c-93e9-1808affcefe0",
									true,
								},
								
								{
									"60cea69c-706b-cb93-b837-893447277dbe",
									true,
								},
							},
							uuid = "4df473c2-14c9-7a82-ab13-e7504951903a",
							version = 2.1,
						},
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
								21,
							},
							name = "Eligible jobs",
							uuid = "877e4a1c-eebf-2f42-a647-0ad61625bbbc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "fa6f01e9-80a2-890e-a323-6ce691bef97d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal a,b=R.entOf('T1'),R.entOf('T2')\nif not a or not b then return false end\nlocal my=R.mySlot()\nlocal other=my=='T1' and 'T2' or my=='T2' and 'T1'\nlocal me=R.entOf(my)\nlocal hasWAR=a.job==21 or b.job==21\nlocal hasGNB=a.job==37 or b.job==37\nlocal hasPLD=a.job==19 or b.job==19\nlocal invuln=me.job==37 or me.job==19 or (me.job==32 and hasWAR)\nif invuln==true then return false end\nlocal targetSlot=R.mySlot()\nreturn targetSlot~=nil and targetSlot==R.mySlot()",
							name = "Mitigation plan",
							uuid = "1351fa51-d19b-6864-8401-fed9d0427a93",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25751,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "51c5cec7-bb55-3c41-9145-e6807ef4e8bd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								19,
							},
							name = "Eligible jobs",
							uuid = "4df8c08e-856d-a716-9197-eb7ad16180ef",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "f8feeccd-9444-b935-8ef1-9a9ba28dc251",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal a,b=R.entOf('T1'),R.entOf('T2')\nif not a or not b then return false end\nlocal my=R.mySlot()\nlocal other=my=='T1' and 'T2' or my=='T2' and 'T1'\nlocal me=R.entOf(my)\nlocal hasWAR=a.job==21 or b.job==21\nlocal hasGNB=a.job==37 or b.job==37\nlocal hasPLD=a.job==19 or b.job==19\nlocal invuln=me.job==37 or me.job==19 or (me.job==32 and hasWAR)\nif invuln==true then return false end\nlocal targetSlot=R.mySlot()\nreturn targetSlot~=nil and targetSlot==R.mySlot()",
							name = "Mitigation plan",
							uuid = "5c36de11-9093-b16c-93e9-1808affcefe0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25746,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "60cea69c-706b-cb93-b837-893447277dbe",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				mechanicTime = 1278.2,
				name = "[Mit] P6 wc2 short CD - self",
				timeRange = true,
				timelineIndex = 246,
				timerEndOffset = -2,
				timerStartOffset = -4,
				uuid = "e351bc74-2daa-2a41-8c00-601f618f86a1",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7393,
							conditions = 
							{
								
								{
									"5419e6a6-61de-dfe9-9edf-a0e3fa45e16e",
									true,
								},
								
								{
									"926f1ab6-6557-c5a8-b078-0c25e2f906bc",
									true,
								},
								
								{
									"cb0efd43-64a3-c3e8-bc73-87d5d759da21",
									true,
								},
								
								{
									"640b656b-65c0-2415-bab1-d89ff53b57be",
									true,
								},
								
								{
									"3748b643-9849-6c7e-bfe6-4e99a014bcf2",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "6d6b450e-9fd1-6305-9550-d3f2b341618b",
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
									"9438078c-5db6-1b3d-86a1-46c94be955de",
									true,
								},
								
								{
									"91425139-4e2c-14a5-871f-15466dd2be6e",
									true,
								},
								
								{
									"b751e5fb-e76e-7bbe-abc1-3c2843a74c86",
									true,
								},
								
								{
									"96e1ab71-3c4f-c59b-9320-0bb27dc50c48",
									true,
								},
								
								{
									"d6dd130b-d999-3f79-8b7a-d3e84e18387a",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "ee0f87e3-ee03-e85f-88bd-4b9557a6709a",
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
									"bc542136-8d32-ce1f-b3ba-5a9f5f2866c7",
									true,
								},
								
								{
									"e50de0f6-9ffe-b43a-92c8-f5c2c8545bcb",
									true,
								},
								
								{
									"f174cd03-334e-4a60-b72a-16c10e21a8bb",
									true,
								},
								
								{
									"b91bcd6c-2c4b-ced7-9524-fa4ae8549f67",
									true,
								},
								
								{
									"7205f5fb-c67f-6dae-9790-696b9c6544bd",
									true,
								},
								
								{
									"083a9586-9ac7-2ba9-b616-53c301862842",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "1f528436-a4d0-ec23-aa8d-1b9663fcc4d1",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7382,
							conditions = 
							{
								
								{
									"e839b0ad-b748-158e-95bd-afa83672d8aa",
									true,
								},
								
								{
									"085b7f49-3c5b-a803-b50a-756016da50cc",
									true,
								},
								
								{
									"157f19aa-58cd-e8d4-96dc-02bb22f48839",
									true,
								},
								
								{
									"f6769225-d9dd-b2b0-9446-bfe061d0c615",
									true,
								},
								
								{
									"b3525113-1e4d-6635-b056-17852d4a1f29",
									true,
								},
								
								{
									"0f05a1a2-44d7-3d45-9e55-597e5dd122b8",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "913a806e-e71e-cf1a-a5ee-277750db9578",
							version = 2.1,
						},
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
								32,
							},
							name = "Eligible jobs",
							uuid = "5419e6a6-61de-dfe9-9edf-a0e3fa45e16e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "926f1ab6-6557-c5a8-b078-0c25e2f906bc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal a,b=R.entOf('T1'),R.entOf('T2')\nif not a or not b then return false end\nlocal my=R.mySlot()\nlocal other=my=='T1' and 'T2' or my=='T2' and 'T1'\nlocal me=R.entOf(my)\nlocal hasWAR=a.job==21 or b.job==21\nlocal hasGNB=a.job==37 or b.job==37\nlocal hasPLD=a.job==19 or b.job==19\nlocal invuln=me.job==37 or me.job==19 or (me.job==32 and hasWAR)\nif invuln==true then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "cb0efd43-64a3-c3e8-bc73-87d5d759da21",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7393,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "640b656b-65c0-2415-bab1-d89ff53b57be",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "e409700d-f1dd-4442-a334-16a8b041c250",
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
									"e409700d-f1dd-4442-a334-16a8b041c250",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "3748b643-9849-6c7e-bfe6-4e99a014bcf2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								37,
							},
							name = "Eligible jobs",
							uuid = "9438078c-5db6-1b3d-86a1-46c94be955de",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "91425139-4e2c-14a5-871f-15466dd2be6e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal a,b=R.entOf('T1'),R.entOf('T2')\nif not a or not b then return false end\nlocal my=R.mySlot()\nlocal other=my=='T1' and 'T2' or my=='T2' and 'T1'\nlocal me=R.entOf(my)\nlocal hasWAR=a.job==21 or b.job==21\nlocal hasGNB=a.job==37 or b.job==37\nlocal hasPLD=a.job==19 or b.job==19\nlocal invuln=me.job==37 or me.job==19 or (me.job==32 and hasWAR)\nif invuln==true then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "b751e5fb-e76e-7bbe-abc1-3c2843a74c86",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25758,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "96e1ab71-3c4f-c59b-9320-0bb27dc50c48",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "285d3959-8117-374c-99d5-9b59533cf09e",
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
									"285d3959-8117-374c-99d5-9b59533cf09e",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "d6dd130b-d999-3f79-8b7a-d3e84e18387a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								21,
							},
							name = "Eligible jobs",
							uuid = "bc542136-8d32-ce1f-b3ba-5a9f5f2866c7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "f174cd03-334e-4a60-b72a-16c10e21a8bb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal a,b=R.entOf('T1'),R.entOf('T2')\nif not a or not b then return false end\nlocal my=R.mySlot()\nlocal other=my=='T1' and 'T2' or my=='T2' and 'T1'\nlocal me=R.entOf(my)\nlocal hasWAR=a.job==21 or b.job==21\nlocal hasGNB=a.job==37 or b.job==37\nlocal hasPLD=a.job==19 or b.job==19\nlocal invuln=me.job==37 or me.job==19 or (me.job==32 and hasWAR)\nif invuln==true then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "b91bcd6c-2c4b-ced7-9524-fa4ae8549f67",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16464,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "7205f5fb-c67f-6dae-9790-696b9c6544bd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "c2c5ed4d-047c-30dd-8ec4-73be7dbe3c60",
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
									"c2c5ed4d-047c-30dd-8ec4-73be7dbe3c60",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "083a9586-9ac7-2ba9-b616-53c301862842",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								19,
							},
							name = "Eligible jobs",
							uuid = "e839b0ad-b748-158e-95bd-afa83672d8aa",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "157f19aa-58cd-e8d4-96dc-02bb22f48839",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal a,b=R.entOf('T1'),R.entOf('T2')\nif not a or not b then return false end\nlocal my=R.mySlot()\nlocal other=my=='T1' and 'T2' or my=='T2' and 'T1'\nlocal me=R.entOf(my)\nlocal hasWAR=a.job==21 or b.job==21\nlocal hasGNB=a.job==37 or b.job==37\nlocal hasPLD=a.job==19 or b.job==19\nlocal invuln=me.job==37 or me.job==19 or (me.job==32 and hasWAR)\nif invuln==true then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "f6769225-d9dd-b2b0-9446-bfe061d0c615",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7382,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "b3525113-1e4d-6635-b056-17852d4a1f29",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "ce30abde-6003-0351-8284-9c4fb105cabd",
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
									"ce30abde-6003-0351-8284-9c4fb105cabd",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "0f05a1a2-44d7-3d45-9e55-597e5dd122b8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nreturn targetSlot~=nil and targetSlot~=R.mySlot()",
							name = "Other recipient",
							uuid = "e50de0f6-9ffe-b43a-92c8-f5c2c8545bcb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nreturn targetSlot~=nil and targetSlot~=R.mySlot()",
							name = "Other recipient",
							uuid = "085b7f49-3c5b-a803-b50a-756016da50cc",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				mechanicTime = 1278.2,
				name = "[Mit] P6 wc2 short CD - support",
				timeRange = true,
				timelineIndex = 246,
				timerEndOffset = -2,
				timerStartOffset = -4,
				uuid = "d09de9b7-b3b0-1fbd-a796-17ad077d027f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 25751,
							conditions = 
							{
								
								{
									"f43e9c5d-8503-5959-94d8-df434728f0bb",
									true,
								},
								
								{
									"02801197-2e99-7fb1-a2a9-be7bb6dcd809",
									true,
								},
								
								{
									"35ef01f7-f197-8623-8b5b-db39a5264072",
									true,
								},
								
								{
									"1d4996f7-936d-c1d7-95d6-d5361c10a6c5",
									true,
								},
							},
							uuid = "a6a0d22a-dfad-f21e-81c3-acde97b5e994",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25746,
							conditions = 
							{
								
								{
									"79b921ec-8425-358f-a48d-db2fe2f4ea03",
									true,
								},
								
								{
									"442ed8ea-5fdb-0533-bd95-8d85fa3824dd",
									true,
								},
								
								{
									"6408d18f-c9fd-395f-b161-5a1e12671306",
									true,
								},
								
								{
									"a79f6c37-2b3d-b0d6-af6b-591bd75ec121",
									true,
								},
							},
							uuid = "d964992c-64ee-b03d-a4fb-a4174d99637f",
							version = 2.1,
						},
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
								21,
							},
							name = "Eligible jobs",
							uuid = "f43e9c5d-8503-5959-94d8-df434728f0bb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "02801197-2e99-7fb1-a2a9-be7bb6dcd809",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal a,b=R.entOf('T1'),R.entOf('T2')\nif not a or not b then return false end\nlocal my=R.mySlot()\nlocal other=my=='T1' and 'T2' or my=='T2' and 'T1'\nlocal me=R.entOf(my)\nlocal hasWAR=a.job==21 or b.job==21\nlocal hasGNB=a.job==37 or b.job==37\nlocal hasPLD=a.job==19 or b.job==19\nlocal invuln=me.job==37 or me.job==19 or (me.job==32 and hasWAR)\nif invuln==false then return false end\nlocal targetSlot=(R.mySlot()=='T1' and 'T2' or 'T1')\nreturn targetSlot~=nil and targetSlot==R.mySlot()",
							name = "Mitigation plan",
							uuid = "35ef01f7-f197-8623-8b5b-db39a5264072",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25751,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "1d4996f7-936d-c1d7-95d6-d5361c10a6c5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								19,
							},
							name = "Eligible jobs",
							uuid = "79b921ec-8425-358f-a48d-db2fe2f4ea03",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "442ed8ea-5fdb-0533-bd95-8d85fa3824dd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal a,b=R.entOf('T1'),R.entOf('T2')\nif not a or not b then return false end\nlocal my=R.mySlot()\nlocal other=my=='T1' and 'T2' or my=='T2' and 'T1'\nlocal me=R.entOf(my)\nlocal hasWAR=a.job==21 or b.job==21\nlocal hasGNB=a.job==37 or b.job==37\nlocal hasPLD=a.job==19 or b.job==19\nlocal invuln=me.job==37 or me.job==19 or (me.job==32 and hasWAR)\nif invuln==false then return false end\nlocal targetSlot=(R.mySlot()=='T1' and 'T2' or 'T1')\nreturn targetSlot~=nil and targetSlot==R.mySlot()",
							name = "Mitigation plan",
							uuid = "6408d18f-c9fd-395f-b161-5a1e12671306",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25746,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "a79f6c37-2b3d-b0d6-af6b-591bd75ec121",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				mechanicTime = 1278.2,
				name = "[Mit] P6 wc2 support invuln partner - self",
				timeRange = true,
				timelineIndex = 246,
				timerEndOffset = -2,
				timerStartOffset = -4,
				uuid = "e0db3e95-c22f-0f3e-9f1f-4d47ffeff0c6",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7393,
							conditions = 
							{
								
								{
									"950a5d94-5a3b-e577-a725-6ab890a70a02",
									true,
								},
								
								{
									"3f76fc5a-d905-eeed-ae81-7a0778a8ff72",
									true,
								},
								
								{
									"292c0632-8e28-8aad-b50b-0e54dbefc3da",
									true,
								},
								
								{
									"906e73e7-a367-b60c-b3dc-7e46f5067e8a",
									true,
								},
								
								{
									"4c56bc80-1612-424d-a5d6-2f0ba53574ef",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "5ee28389-0993-bac2-bac2-af63d78f2f93",
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
									"7f8a460f-78fd-6042-91cd-5383461575d8",
									true,
								},
								
								{
									"524704b1-241a-cb47-9508-4d1beda42681",
									true,
								},
								
								{
									"fb2e6c42-e7b6-d908-8b1f-da8b9a72c432",
									true,
								},
								
								{
									"5897ec2a-c072-0c2e-9547-33eae004850c",
									true,
								},
								
								{
									"8c7cd383-7c5a-fe96-a765-a9377e4329c8",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "ffc842b3-a810-b2d1-90b7-2e0506e35248",
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
									"472a39d6-834f-cb65-8f1c-d7f47b7778c3",
									true,
								},
								
								{
									"d563a5ac-676e-ea46-8419-c89f37c43a85",
									true,
								},
								
								{
									"f8cc8639-80c5-b2bd-ae4c-819364f8ea32",
									true,
								},
								
								{
									"a63d6105-9d9f-5a7e-ae16-7553809eb930",
									true,
								},
								
								{
									"fb491921-bf1c-1e21-84bc-db5e5bbc0522",
									true,
								},
								
								{
									"c3f9953e-1db2-603a-93fe-6d963f18b5a2",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "ee79905c-fb9e-4106-b8b7-581652bbd683",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7382,
							conditions = 
							{
								
								{
									"1cb360fb-ad43-e64a-b62c-c230aa519f54",
									true,
								},
								
								{
									"153cb126-4191-9ae1-b23f-21d46363dc22",
									true,
								},
								
								{
									"db7c6386-fd04-2d37-af7f-1ce3430c22f6",
									true,
								},
								
								{
									"bef6c858-2f1b-f638-9050-4ade03cc7b21",
									true,
								},
								
								{
									"21bfe350-4202-c77c-87ca-a8c52f30f40d",
									true,
								},
								
								{
									"4f70f056-80d6-b706-acae-30fb8b0576da",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "e6533199-9642-e9a1-b5e2-b73ad3f051c4",
							version = 2.1,
						},
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
								32,
							},
							name = "Eligible jobs",
							uuid = "950a5d94-5a3b-e577-a725-6ab890a70a02",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "3f76fc5a-d905-eeed-ae81-7a0778a8ff72",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal a,b=R.entOf('T1'),R.entOf('T2')\nif not a or not b then return false end\nlocal my=R.mySlot()\nlocal other=my=='T1' and 'T2' or my=='T2' and 'T1'\nlocal me=R.entOf(my)\nlocal hasWAR=a.job==21 or b.job==21\nlocal hasGNB=a.job==37 or b.job==37\nlocal hasPLD=a.job==19 or b.job==19\nlocal invuln=me.job==37 or me.job==19 or (me.job==32 and hasWAR)\nif invuln==false then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "292c0632-8e28-8aad-b50b-0e54dbefc3da",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7393,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "906e73e7-a367-b60c-b3dc-7e46f5067e8a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(R.mySlot()=='T1' and 'T2' or 'T1')\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "69ac5b65-539a-d5ee-8c9c-69dd6152daef",
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
									"69ac5b65-539a-d5ee-8c9c-69dd6152daef",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "4c56bc80-1612-424d-a5d6-2f0ba53574ef",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								37,
							},
							name = "Eligible jobs",
							uuid = "7f8a460f-78fd-6042-91cd-5383461575d8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "524704b1-241a-cb47-9508-4d1beda42681",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal a,b=R.entOf('T1'),R.entOf('T2')\nif not a or not b then return false end\nlocal my=R.mySlot()\nlocal other=my=='T1' and 'T2' or my=='T2' and 'T1'\nlocal me=R.entOf(my)\nlocal hasWAR=a.job==21 or b.job==21\nlocal hasGNB=a.job==37 or b.job==37\nlocal hasPLD=a.job==19 or b.job==19\nlocal invuln=me.job==37 or me.job==19 or (me.job==32 and hasWAR)\nif invuln==false then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "fb2e6c42-e7b6-d908-8b1f-da8b9a72c432",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25758,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "5897ec2a-c072-0c2e-9547-33eae004850c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(R.mySlot()=='T1' and 'T2' or 'T1')\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "93557bcd-e16f-9efc-a38f-f0e65f36e465",
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
									"93557bcd-e16f-9efc-a38f-f0e65f36e465",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "8c7cd383-7c5a-fe96-a765-a9377e4329c8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								21,
							},
							name = "Eligible jobs",
							uuid = "472a39d6-834f-cb65-8f1c-d7f47b7778c3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "f8cc8639-80c5-b2bd-ae4c-819364f8ea32",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal a,b=R.entOf('T1'),R.entOf('T2')\nif not a or not b then return false end\nlocal my=R.mySlot()\nlocal other=my=='T1' and 'T2' or my=='T2' and 'T1'\nlocal me=R.entOf(my)\nlocal hasWAR=a.job==21 or b.job==21\nlocal hasGNB=a.job==37 or b.job==37\nlocal hasPLD=a.job==19 or b.job==19\nlocal invuln=me.job==37 or me.job==19 or (me.job==32 and hasWAR)\nif invuln==false then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "a63d6105-9d9f-5a7e-ae16-7553809eb930",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16464,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "fb491921-bf1c-1e21-84bc-db5e5bbc0522",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(R.mySlot()=='T1' and 'T2' or 'T1')\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "84f03605-d291-66a0-be57-6762879c26b5",
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
									"84f03605-d291-66a0-be57-6762879c26b5",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "c3f9953e-1db2-603a-93fe-6d963f18b5a2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								19,
							},
							name = "Eligible jobs",
							uuid = "1cb360fb-ad43-e64a-b62c-c230aa519f54",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "db7c6386-fd04-2d37-af7f-1ce3430c22f6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal a,b=R.entOf('T1'),R.entOf('T2')\nif not a or not b then return false end\nlocal my=R.mySlot()\nlocal other=my=='T1' and 'T2' or my=='T2' and 'T1'\nlocal me=R.entOf(my)\nlocal hasWAR=a.job==21 or b.job==21\nlocal hasGNB=a.job==37 or b.job==37\nlocal hasPLD=a.job==19 or b.job==19\nlocal invuln=me.job==37 or me.job==19 or (me.job==32 and hasWAR)\nif invuln==false then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "bef6c858-2f1b-f638-9050-4ade03cc7b21",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7382,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "21bfe350-4202-c77c-87ca-a8c52f30f40d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(R.mySlot()=='T1' and 'T2' or 'T1')\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "ea42df4e-00b2-246a-b163-aff826afc69c",
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
									"ea42df4e-00b2-246a-b163-aff826afc69c",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "4f70f056-80d6-b706-acae-30fb8b0576da",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(R.mySlot()=='T1' and 'T2' or 'T1')\nreturn targetSlot~=nil and targetSlot~=R.mySlot()",
							name = "Other recipient",
							uuid = "d563a5ac-676e-ea46-8419-c89f37c43a85",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(R.mySlot()=='T1' and 'T2' or 'T1')\nreturn targetSlot~=nil and targetSlot~=R.mySlot()",
							name = "Other recipient",
							uuid = "153cb126-4191-9ae1-b23f-21d46363dc22",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				mechanicTime = 1278.2,
				name = "[Mit] P6 wc2 support invuln partner - support",
				timeRange = true,
				timelineIndex = 246,
				timerEndOffset = -2,
				timerStartOffset = -4,
				uuid = "9fb3c7c8-0abb-1dbb-ab47-6becf16fdb27",
				version = 2,
			},
		},
	},
	[258] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P6",
				uuid = "bc2d6046-359f-d993-9c5d-d7859f5c0586",
			},
			objectType = "folder",
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
									"a1ececaf-ccb8-1bf4-82db-3709277ba3ce",
									true,
								},
								
								{
									"35869fda-20ac-2421-a951-ae9fad5928fe",
									true,
								},
								
								{
									"474326ce-0887-9419-b7f7-8697d8157390",
									true,
								},
							},
							targetContentID = 12256,
							targetType = "ContentID",
							uuid = "3d53a28c-1089-b516-a0b1-064777079417",
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
									"a46698c4-800f-65a3-b79c-87a4a6568773",
									true,
								},
								
								{
									"7fd7df7a-4bef-95c0-bb3c-ede91e22da9d",
									true,
								},
								
								{
									"7d161814-3a69-b93e-8124-25e69f3ff2f3",
									true,
								},
								
								{
									"0ef96d0d-da5d-4f0e-a3ff-236986e8ff7e",
									true,
								},
							},
							gVar = "ACR_TensorRuin3_Hotbar_Addle",
							uuid = "d3332718-85a2-119d-abb5-eac85666939a",
							variableTogglesType = 2,
							version = 2.1,
						},
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
								20,
								22,
								30,
								34,
								39,
								41,
							},
							name = "Eligible jobs",
							uuid = "a1ececaf-ccb8-1bf4-82db-3709277ba3ce",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='M1'",
							name = "Assigned M1",
							uuid = "35869fda-20ac-2421-a951-ae9fad5928fe",
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
							name = "Ready",
							uuid = "474326ce-0887-9419-b7f7-8697d8157390",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								25,
								27,
								35,
								42,
							},
							name = "Eligible jobs",
							uuid = "a46698c4-800f-65a3-b79c-87a4a6568773",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R2'",
							name = "Assigned R2",
							uuid = "7fd7df7a-4bef-95c0-bb3c-ede91e22da9d",
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
							name = "Ready",
							uuid = "7d161814-3a69-b93e-8124-25e69f3ff2f3",
							version = 3,
						},
					},
					
					{
						data = 
						{
							conditionType = 2,
							contentid = 12256,
							name = "Correct boss target",
							uuid = "0ef96d0d-da5d-4f0e-a3ff-236986e8ff7e",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				mechanicTime = 1310,
				name = "[Mit] Cosmo Dive 2 - M1 Feint + Addle",
				timeRange = true,
				timelineIndex = 258,
				timerEndOffset = -1,
				timerStartOffset = -3,
				uuid = "29988db4-1fd1-b0c0-89a9-516e68b37585",
				version = 2,
			},
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
									"07fc4da7-e57c-8fc8-9b1e-3b68a58f348e",
									true,
								},
								
								{
									"9c8f3760-7597-f0e8-892e-a14f4de298ef",
									true,
								},
								
								{
									"cd4ac8eb-59f8-2346-890c-02bbc599a614",
									true,
								},
								
								{
									"f8bbcfb8-6136-79e1-9047-d6b13d3aa72c",
									true,
								},
							},
							uuid = "8e1ba7fe-e9f6-35c8-b95d-71a5c21e39a2",
							version = 2.1,
						},
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
							name = "Eligible jobs",
							uuid = "07fc4da7-e57c-8fc8-9b1e-3b68a58f348e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "9c8f3760-7597-f0e8-892e-a14f4de298ef",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal a,b=R.entOf('T1'),R.entOf('T2')\nif not a or not b then return false end\nlocal my=R.mySlot()\nlocal other=my=='T1' and 'T2' or my=='T2' and 'T1'\nlocal me=R.entOf(my)\nlocal hasWAR=a.job==21 or b.job==21\nlocal hasGNB=a.job==37 or b.job==37\nlocal hasPLD=a.job==19 or b.job==19\nreturn me.job~=32 or hasWAR",
							name = "Mitigation plan",
							uuid = "cd4ac8eb-59f8-2346-890c-02bbc599a614",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7531,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "f8bbcfb8-6136-79e1-9047-d6b13d3aa72c",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				mechanicTime = 1310,
				name = "[Mit] Dive 2 - Rampart",
				timeRange = true,
				timelineIndex = 258,
				timerEndOffset = -15,
				timerStartOffset = -18,
				uuid = "565d19ad-3083-5efc-a3ab-23ea9c0d9e5f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 25751,
							conditions = 
							{
								
								{
									"1f708460-54ed-1481-bfee-8d7da2e25b4e",
									true,
								},
								
								{
									"b7b0b207-66e9-df75-9ae3-c3e1b3101f30",
									true,
								},
								
								{
									"6b83d731-9954-c725-9ffc-377ea83ed01e",
									true,
								},
								
								{
									"6d9dc284-a210-bdd8-8f88-2085ee67c528",
									true,
								},
							},
							uuid = "f709af56-27ff-def6-a77a-22925eaf4049",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25746,
							conditions = 
							{
								
								{
									"dfd00f91-a153-2c5f-bf98-e1a0dd2ac1ce",
									true,
								},
								
								{
									"05a6579f-b318-de89-8c21-d3c10ed4070f",
									true,
								},
								
								{
									"a213bd6d-42a7-8442-8ebb-e2e6a9fa02b6",
									true,
								},
								
								{
									"bd2cf2ce-2f28-894c-ae4a-1e83ba6197c6",
									true,
								},
							},
							uuid = "addf597e-a4eb-d230-8d42-044e7a06e2ed",
							version = 2.1,
						},
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
								21,
							},
							name = "Eligible jobs",
							uuid = "1f708460-54ed-1481-bfee-8d7da2e25b4e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "b7b0b207-66e9-df75-9ae3-c3e1b3101f30",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal a,b=R.entOf('T1'),R.entOf('T2')\nif not a or not b then return false end\nlocal my=R.mySlot()\nlocal other=my=='T1' and 'T2' or my=='T2' and 'T1'\nlocal me=R.entOf(my)\nlocal hasWAR=a.job==21 or b.job==21\nlocal hasGNB=a.job==37 or b.job==37\nlocal hasPLD=a.job==19 or b.job==19\nlocal invuln=me.job==32 and not hasWAR\nif invuln==true then return false end\nlocal targetSlot=R.mySlot()\nreturn targetSlot~=nil and targetSlot==R.mySlot()",
							name = "Mitigation plan",
							uuid = "6b83d731-9954-c725-9ffc-377ea83ed01e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25751,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "6d9dc284-a210-bdd8-8f88-2085ee67c528",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								19,
							},
							name = "Eligible jobs",
							uuid = "dfd00f91-a153-2c5f-bf98-e1a0dd2ac1ce",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "05a6579f-b318-de89-8c21-d3c10ed4070f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal a,b=R.entOf('T1'),R.entOf('T2')\nif not a or not b then return false end\nlocal my=R.mySlot()\nlocal other=my=='T1' and 'T2' or my=='T2' and 'T1'\nlocal me=R.entOf(my)\nlocal hasWAR=a.job==21 or b.job==21\nlocal hasGNB=a.job==37 or b.job==37\nlocal hasPLD=a.job==19 or b.job==19\nlocal invuln=me.job==32 and not hasWAR\nif invuln==true then return false end\nlocal targetSlot=R.mySlot()\nreturn targetSlot~=nil and targetSlot==R.mySlot()",
							name = "Mitigation plan",
							uuid = "a213bd6d-42a7-8442-8ebb-e2e6a9fa02b6",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25746,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "bd2cf2ce-2f28-894c-ae4a-1e83ba6197c6",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				mechanicTime = 1310,
				name = "[Mit] P6 dive2 short CD - self",
				timeRange = true,
				timelineIndex = 258,
				timerEndOffset = 1.2000000476837,
				uuid = "f9c2f068-6e3e-390a-9c1b-d637fef4e4e9",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7393,
							conditions = 
							{
								
								{
									"ee56b149-cdf6-e7e3-a3ba-d0dea0a0fba7",
									true,
								},
								
								{
									"303555d5-4173-dacf-ad9a-babeda39e028",
									true,
								},
								
								{
									"798c3253-704d-93b6-ad55-70f9b66b7d7e",
									true,
								},
								
								{
									"ff03fa1a-8134-2522-80c0-5ce584880efd",
									true,
								},
								
								{
									"91d50429-6103-d3e6-8251-77612e7a5f68",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "dd3df61e-89b2-248a-8201-c625a98f379c",
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
									"e4a70fa3-b649-fbcf-85d3-68335045e68d",
									true,
								},
								
								{
									"b9e7e7cc-07d0-ac05-80f0-23a021f87ed7",
									true,
								},
								
								{
									"2b2981ba-37cc-e812-b498-0373170ca2c1",
									true,
								},
								
								{
									"c86f22bc-e825-6730-b245-1b9c15018a08",
									true,
								},
								
								{
									"718a70be-5716-e6e9-b695-f5f3b7fb23ac",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "55dcc2e4-c847-da7d-9c9e-54b34e72a607",
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
									"0451d354-b148-821d-a4c7-19eed0fb117a",
									true,
								},
								
								{
									"374bcae5-c2c0-f21c-a4aa-ce8638e62642",
									true,
								},
								
								{
									"b17aa96a-5f70-87e6-9b83-6803eac18207",
									true,
								},
								
								{
									"c14b53e7-f7d7-94ed-af15-7f23bd428e67",
									true,
								},
								
								{
									"d2fe7729-09aa-7aa3-872f-d5da9b9ad3a9",
									true,
								},
								
								{
									"560523e5-4686-3d2b-a187-0a11bdb6da8e",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "5a144fd8-0c9b-377e-8d99-0c3eb03e5f49",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7382,
							conditions = 
							{
								
								{
									"78746145-d16f-1b9e-a6de-748657b0aef4",
									true,
								},
								
								{
									"3408f252-e174-78b6-b7a7-507ebe4139de",
									true,
								},
								
								{
									"1f5aaff1-b73d-2931-8a3e-d5323dc1689d",
									true,
								},
								
								{
									"b6d0864d-f453-737e-8d7d-7de7bbcdaeac",
									true,
								},
								
								{
									"5bbf9136-a2cb-0b73-974e-55714fc9496d",
									true,
								},
								
								{
									"eb4cf272-4de8-0982-b8ab-38fd1e296858",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "4e4ea46f-767b-a7a5-a6de-1f0d70d275a5",
							version = 2.1,
						},
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
								32,
							},
							name = "Eligible jobs",
							uuid = "ee56b149-cdf6-e7e3-a3ba-d0dea0a0fba7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "303555d5-4173-dacf-ad9a-babeda39e028",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal a,b=R.entOf('T1'),R.entOf('T2')\nif not a or not b then return false end\nlocal my=R.mySlot()\nlocal other=my=='T1' and 'T2' or my=='T2' and 'T1'\nlocal me=R.entOf(my)\nlocal hasWAR=a.job==21 or b.job==21\nlocal hasGNB=a.job==37 or b.job==37\nlocal hasPLD=a.job==19 or b.job==19\nlocal invuln=me.job==32 and not hasWAR\nif invuln==true then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "798c3253-704d-93b6-ad55-70f9b66b7d7e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7393,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "ff03fa1a-8134-2522-80c0-5ce584880efd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "de1b58a3-8a22-c4c8-8b9e-af54412df572",
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
									"de1b58a3-8a22-c4c8-8b9e-af54412df572",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "91d50429-6103-d3e6-8251-77612e7a5f68",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								37,
							},
							name = "Eligible jobs",
							uuid = "e4a70fa3-b649-fbcf-85d3-68335045e68d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "b9e7e7cc-07d0-ac05-80f0-23a021f87ed7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal a,b=R.entOf('T1'),R.entOf('T2')\nif not a or not b then return false end\nlocal my=R.mySlot()\nlocal other=my=='T1' and 'T2' or my=='T2' and 'T1'\nlocal me=R.entOf(my)\nlocal hasWAR=a.job==21 or b.job==21\nlocal hasGNB=a.job==37 or b.job==37\nlocal hasPLD=a.job==19 or b.job==19\nlocal invuln=me.job==32 and not hasWAR\nif invuln==true then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "2b2981ba-37cc-e812-b498-0373170ca2c1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25758,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "c86f22bc-e825-6730-b245-1b9c15018a08",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "d86c05be-fd1f-2df3-b844-a1d66ff4db39",
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
									"d86c05be-fd1f-2df3-b844-a1d66ff4db39",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "718a70be-5716-e6e9-b695-f5f3b7fb23ac",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								21,
							},
							name = "Eligible jobs",
							uuid = "0451d354-b148-821d-a4c7-19eed0fb117a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "b17aa96a-5f70-87e6-9b83-6803eac18207",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal a,b=R.entOf('T1'),R.entOf('T2')\nif not a or not b then return false end\nlocal my=R.mySlot()\nlocal other=my=='T1' and 'T2' or my=='T2' and 'T1'\nlocal me=R.entOf(my)\nlocal hasWAR=a.job==21 or b.job==21\nlocal hasGNB=a.job==37 or b.job==37\nlocal hasPLD=a.job==19 or b.job==19\nlocal invuln=me.job==32 and not hasWAR\nif invuln==true then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "c14b53e7-f7d7-94ed-af15-7f23bd428e67",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16464,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "d2fe7729-09aa-7aa3-872f-d5da9b9ad3a9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "fc096d34-ca04-d5a4-a0fe-043a09cac227",
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
									"fc096d34-ca04-d5a4-a0fe-043a09cac227",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "560523e5-4686-3d2b-a187-0a11bdb6da8e",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								19,
							},
							name = "Eligible jobs",
							uuid = "78746145-d16f-1b9e-a6de-748657b0aef4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "1f5aaff1-b73d-2931-8a3e-d5323dc1689d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal a,b=R.entOf('T1'),R.entOf('T2')\nif not a or not b then return false end\nlocal my=R.mySlot()\nlocal other=my=='T1' and 'T2' or my=='T2' and 'T1'\nlocal me=R.entOf(my)\nlocal hasWAR=a.job==21 or b.job==21\nlocal hasGNB=a.job==37 or b.job==37\nlocal hasPLD=a.job==19 or b.job==19\nlocal invuln=me.job==32 and not hasWAR\nif invuln==true then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "b6d0864d-f453-737e-8d7d-7de7bbcdaeac",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7382,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "5bbf9136-a2cb-0b73-974e-55714fc9496d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "984b49db-59a8-4eca-ba32-8c314c2ba45e",
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
									"984b49db-59a8-4eca-ba32-8c314c2ba45e",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "eb4cf272-4de8-0982-b8ab-38fd1e296858",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nreturn targetSlot~=nil and targetSlot~=R.mySlot()",
							name = "Other recipient",
							uuid = "374bcae5-c2c0-f21c-a4aa-ce8638e62642",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=R.mySlot()\nreturn targetSlot~=nil and targetSlot~=R.mySlot()",
							name = "Other recipient",
							uuid = "3408f252-e174-78b6-b7a7-507ebe4139de",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				mechanicTime = 1310,
				name = "[Mit] P6 dive2 short CD - support",
				timeRange = true,
				timelineIndex = 258,
				timerEndOffset = 1.2000000476837,
				uuid = "10805215-507c-54b9-b319-6a74a2e56604",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 25751,
							conditions = 
							{
								
								{
									"ffebbee0-699e-02ba-8e47-17f937ca2af4",
									true,
								},
								
								{
									"08b856af-3748-a524-9d4e-a17d409698cc",
									true,
								},
								
								{
									"d3d59f07-abd9-98b4-9c64-c5a7e745bfce",
									true,
								},
								
								{
									"c63bbaf4-3d81-402c-a662-72f4dd4499dd",
									true,
								},
							},
							uuid = "75aaf736-ff7d-5950-9874-914a8f5a89fe",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25746,
							conditions = 
							{
								
								{
									"8f4263fb-f457-9ac5-838f-99eb1c9fdf76",
									true,
								},
								
								{
									"96cce5f2-8b3d-0a8a-851b-685ba594040c",
									true,
								},
								
								{
									"2a348e3b-06c9-0740-91d4-cb9627c4fd7c",
									true,
								},
								
								{
									"12967caf-80a6-7a72-b645-164f819b76fd",
									true,
								},
							},
							uuid = "5f9b0e40-1697-950b-aa36-04043741c85a",
							version = 2.1,
						},
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
								21,
							},
							name = "Eligible jobs",
							uuid = "ffebbee0-699e-02ba-8e47-17f937ca2af4",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "08b856af-3748-a524-9d4e-a17d409698cc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal a,b=R.entOf('T1'),R.entOf('T2')\nif not a or not b then return false end\nlocal my=R.mySlot()\nlocal other=my=='T1' and 'T2' or my=='T2' and 'T1'\nlocal me=R.entOf(my)\nlocal hasWAR=a.job==21 or b.job==21\nlocal hasGNB=a.job==37 or b.job==37\nlocal hasPLD=a.job==19 or b.job==19\nlocal invuln=me.job==32 and not hasWAR\nif invuln==false then return false end\nlocal targetSlot=(R.mySlot()=='T1' and 'T2' or 'T1')\nreturn targetSlot~=nil and targetSlot==R.mySlot()",
							name = "Mitigation plan",
							uuid = "d3d59f07-abd9-98b4-9c64-c5a7e745bfce",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25751,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "c63bbaf4-3d81-402c-a662-72f4dd4499dd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								19,
							},
							name = "Eligible jobs",
							uuid = "8f4263fb-f457-9ac5-838f-99eb1c9fdf76",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "96cce5f2-8b3d-0a8a-851b-685ba594040c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal a,b=R.entOf('T1'),R.entOf('T2')\nif not a or not b then return false end\nlocal my=R.mySlot()\nlocal other=my=='T1' and 'T2' or my=='T2' and 'T1'\nlocal me=R.entOf(my)\nlocal hasWAR=a.job==21 or b.job==21\nlocal hasGNB=a.job==37 or b.job==37\nlocal hasPLD=a.job==19 or b.job==19\nlocal invuln=me.job==32 and not hasWAR\nif invuln==false then return false end\nlocal targetSlot=(R.mySlot()=='T1' and 'T2' or 'T1')\nreturn targetSlot~=nil and targetSlot==R.mySlot()",
							name = "Mitigation plan",
							uuid = "2a348e3b-06c9-0740-91d4-cb9627c4fd7c",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25746,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "12967caf-80a6-7a72-b645-164f819b76fd",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				mechanicTime = 1310,
				name = "[Mit] P6 dive2 support invuln partner - self",
				timeRange = true,
				timelineIndex = 258,
				timerEndOffset = 1.2000000476837,
				uuid = "66c11305-271f-b5a5-b7f0-93d1637bdb72",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7393,
							conditions = 
							{
								
								{
									"cf26d158-0d17-17cc-a6e9-f18dcab1f5da",
									true,
								},
								
								{
									"90be8695-2da0-366b-800c-c985cfbd0657",
									true,
								},
								
								{
									"3d71f662-5208-9a95-b536-dc52d84b38fb",
									true,
								},
								
								{
									"34cc8556-c2dd-f150-9556-ad5f1b5fe838",
									true,
								},
								
								{
									"617391cc-31b1-2076-a059-e6ecbbbf6cbb",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "adcf82e0-a1a0-17bd-aa56-af6b6b2460eb",
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
									"7280844f-5cfe-29e6-a0cc-edd32a11ffac",
									true,
								},
								
								{
									"6c162a5c-63bc-0a4b-8abd-2c1a8b05c237",
									true,
								},
								
								{
									"12735d97-d8d5-0d31-a17a-31a20c6bc7bd",
									true,
								},
								
								{
									"c8d1d800-76b0-db24-be4d-06842d16dd54",
									true,
								},
								
								{
									"79a07e9e-c4ee-1a86-831e-5a62771ddc3d",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "5bb20867-a317-c22a-8288-5a51360d0d1c",
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
									"4ba05eff-4652-87e7-b178-d0c88f0c27b5",
									true,
								},
								
								{
									"09cb7b84-aadb-f228-b5a4-901c86fe8920",
									true,
								},
								
								{
									"07999f95-3097-cb91-b421-b8442c8d8384",
									true,
								},
								
								{
									"fe1e317d-dce2-7be3-8607-b67ebd51fbca",
									true,
								},
								
								{
									"04397c9d-2afa-44ba-ad1e-064fcbb083d0",
									true,
								},
								
								{
									"26995e32-f6d5-2f9e-9ee1-05a575d74c1a",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "c11dc552-e9f0-bf41-8b36-4e8bc66c793b",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7382,
							conditions = 
							{
								
								{
									"929fec36-7069-e156-9011-af3984449d70",
									true,
								},
								
								{
									"aaf28d3c-0045-5979-a0df-b3243782a174",
									true,
								},
								
								{
									"1d89c157-db25-0d54-80c8-4c6193d2cc71",
									true,
								},
								
								{
									"ed93d166-644f-920e-94e4-113430faac9b",
									true,
								},
								
								{
									"e295a6ff-780f-1529-8ce5-50c36d96e006",
									true,
								},
								
								{
									"f0dfa615-f182-a7d0-9072-fe513ce55728",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "ecb5a7da-8637-9fd9-b004-b26820ed669b",
							version = 2.1,
						},
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
								32,
							},
							name = "Eligible jobs",
							uuid = "cf26d158-0d17-17cc-a6e9-f18dcab1f5da",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "90be8695-2da0-366b-800c-c985cfbd0657",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal a,b=R.entOf('T1'),R.entOf('T2')\nif not a or not b then return false end\nlocal my=R.mySlot()\nlocal other=my=='T1' and 'T2' or my=='T2' and 'T1'\nlocal me=R.entOf(my)\nlocal hasWAR=a.job==21 or b.job==21\nlocal hasGNB=a.job==37 or b.job==37\nlocal hasPLD=a.job==19 or b.job==19\nlocal invuln=me.job==32 and not hasWAR\nif invuln==false then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "3d71f662-5208-9a95-b536-dc52d84b38fb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7393,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "34cc8556-c2dd-f150-9556-ad5f1b5fe838",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(R.mySlot()=='T1' and 'T2' or 'T1')\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "d4aa2331-8d9d-a733-a1f1-198016834ef7",
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
									"d4aa2331-8d9d-a733-a1f1-198016834ef7",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "617391cc-31b1-2076-a059-e6ecbbbf6cbb",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								37,
							},
							name = "Eligible jobs",
							uuid = "7280844f-5cfe-29e6-a0cc-edd32a11ffac",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "6c162a5c-63bc-0a4b-8abd-2c1a8b05c237",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal a,b=R.entOf('T1'),R.entOf('T2')\nif not a or not b then return false end\nlocal my=R.mySlot()\nlocal other=my=='T1' and 'T2' or my=='T2' and 'T1'\nlocal me=R.entOf(my)\nlocal hasWAR=a.job==21 or b.job==21\nlocal hasGNB=a.job==37 or b.job==37\nlocal hasPLD=a.job==19 or b.job==19\nlocal invuln=me.job==32 and not hasWAR\nif invuln==false then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "12735d97-d8d5-0d31-a17a-31a20c6bc7bd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25758,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "c8d1d800-76b0-db24-be4d-06842d16dd54",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(R.mySlot()=='T1' and 'T2' or 'T1')\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "9432edae-7d3a-1eff-9bb6-668544a3f771",
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
									"9432edae-7d3a-1eff-9bb6-668544a3f771",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "79a07e9e-c4ee-1a86-831e-5a62771ddc3d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								21,
							},
							name = "Eligible jobs",
							uuid = "4ba05eff-4652-87e7-b178-d0c88f0c27b5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "07999f95-3097-cb91-b421-b8442c8d8384",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal a,b=R.entOf('T1'),R.entOf('T2')\nif not a or not b then return false end\nlocal my=R.mySlot()\nlocal other=my=='T1' and 'T2' or my=='T2' and 'T1'\nlocal me=R.entOf(my)\nlocal hasWAR=a.job==21 or b.job==21\nlocal hasGNB=a.job==37 or b.job==37\nlocal hasPLD=a.job==19 or b.job==19\nlocal invuln=me.job==32 and not hasWAR\nif invuln==false then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "fe1e317d-dce2-7be3-8607-b67ebd51fbca",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16464,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "04397c9d-2afa-44ba-ad1e-064fcbb083d0",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(R.mySlot()=='T1' and 'T2' or 'T1')\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "e2faa82d-f435-0940-9158-a8dc3999de5b",
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
									"e2faa82d-f435-0940-9158-a8dc3999de5b",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "26995e32-f6d5-2f9e-9ee1-05a575d74c1a",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								19,
							},
							name = "Eligible jobs",
							uuid = "929fec36-7069-e156-9011-af3984449d70",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "1d89c157-db25-0d54-80c8-4c6193d2cc71",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal a,b=R.entOf('T1'),R.entOf('T2')\nif not a or not b then return false end\nlocal my=R.mySlot()\nlocal other=my=='T1' and 'T2' or my=='T2' and 'T1'\nlocal me=R.entOf(my)\nlocal hasWAR=a.job==21 or b.job==21\nlocal hasGNB=a.job==37 or b.job==37\nlocal hasPLD=a.job==19 or b.job==19\nlocal invuln=me.job==32 and not hasWAR\nif invuln==false then return false end\nreturn true",
							name = "Mitigation plan",
							uuid = "ed93d166-644f-920e-94e4-113430faac9b",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7382,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "e295a6ff-780f-1529-8ce5-50c36d96e006",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(R.mySlot()=='T1' and 'T2' or 'T1')\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "0a46f830-474b-8cc9-b269-5e8865ba3699",
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
									"0a46f830-474b-8cc9-b269-5e8865ba3699",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "f0dfa615-f182-a7d0-9072-fe513ce55728",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(R.mySlot()=='T1' and 'T2' or 'T1')\nreturn targetSlot~=nil and targetSlot~=R.mySlot()",
							name = "Other recipient",
							uuid = "09cb7b84-aadb-f228-b5a4-901c86fe8920",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(R.mySlot()=='T1' and 'T2' or 'T1')\nreturn targetSlot~=nil and targetSlot~=R.mySlot()",
							name = "Other recipient",
							uuid = "aaf28d3c-0045-5979-a0df-b3243782a174",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				mechanicTime = 1310,
				name = "[Mit] P6 dive2 support invuln partner - support",
				timeRange = true,
				timelineIndex = 258,
				timerEndOffset = 1.2000000476837,
				uuid = "a9ca1dc9-847b-d4b4-892a-8c8febe848c3",
				version = 2,
			},
		},
	},
	[267] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P6",
				uuid = "ff01cfc4-c49f-8e43-b90f-a62e2026a16a",
			},
			objectType = "folder",
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
									"bd5d2c16-b6c2-ad7a-aed8-2b311ee7a0cc",
									true,
								},
								
								{
									"287fc226-8608-5622-aad2-56073716428e",
									true,
								},
								
								{
									"b61d4d2e-f6bb-0272-84bf-fa4dec90ed21",
									true,
								},
							},
							uuid = "fa26fcc6-04a6-e4d2-956a-3bb2e4c49361",
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
									"eabb286e-06ea-123b-b995-acd116c2ba13",
									true,
								},
								
								{
									"2f40f278-2d74-4652-81e7-2de3a375088e",
									true,
								},
								
								{
									"08d4849e-b866-219c-986a-63ec632c553f",
									true,
								},
							},
							uuid = "618eb570-3ab7-3b5b-9cbd-50f724659bba",
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
									"3d9f9841-b599-221d-b007-cfe92fe82333",
									true,
								},
								
								{
									"4fa76064-4d63-6b31-82ba-366b8b343330",
									true,
								},
								
								{
									"2ae63a37-2fa3-1404-b286-2d9164c425dd",
									true,
								},
							},
							uuid = "c9c1ec57-44ff-4a50-864a-8e29f588a1d7",
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
									"e9fe23b7-a085-038d-bf83-445e785f2ee2",
									true,
								},
								
								{
									"abfa666a-b1c1-9e23-b67b-2d312574b299",
									true,
								},
								
								{
									"d3938315-5e60-28da-b91f-1c98ed649d2d",
									true,
								},
							},
							targetContentID = 12256,
							targetType = "ContentID",
							uuid = "487f7372-444c-4032-a630-30c624df0020",
							version = 2.1,
						},
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
								23,
							},
							name = "Eligible jobs",
							uuid = "bd5d2c16-b6c2-ad7a-aed8-2b311ee7a0cc",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R1'",
							name = "Assigned R1",
							uuid = "287fc226-8608-5622-aad2-56073716428e",
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
							name = "Ready",
							uuid = "b61d4d2e-f6bb-0272-84bf-fa4dec90ed21",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								31,
							},
							name = "Eligible jobs",
							uuid = "eabb286e-06ea-123b-b995-acd116c2ba13",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R1'",
							name = "Assigned R1",
							uuid = "2f40f278-2d74-4652-81e7-2de3a375088e",
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
							name = "Ready",
							uuid = "08d4849e-b866-219c-986a-63ec632c553f",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								38,
							},
							name = "Eligible jobs",
							uuid = "3d9f9841-b599-221d-b007-cfe92fe82333",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R1'",
							name = "Assigned R1",
							uuid = "4fa76064-4d63-6b31-82ba-366b8b343330",
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
							name = "Ready",
							uuid = "2ae63a37-2fa3-1404-b286-2d9164c425dd",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								31,
							},
							name = "Eligible jobs",
							uuid = "e9fe23b7-a085-038d-bf83-445e785f2ee2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='R1'",
							name = "Assigned R1",
							uuid = "abfa666a-b1c1-9e23-b67b-2d312574b299",
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
							name = "Ready",
							uuid = "d3938315-5e60-28da-b91f-1c98ed649d2d",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				mechanicTime = 1336.7,
				name = "[Mit] Meteors - party + Dismantle",
				timeRange = true,
				timelineIndex = 267,
				timerEndOffset = -1,
				timerStartOffset = -3,
				uuid = "35aeae75-697d-f097-aaa5-8c576fd22c6f",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 25751,
							conditions = 
							{
								
								{
									"0fc3ac5c-b0da-4250-84c4-2f3fb862b351",
									true,
								},
								
								{
									"15ba31ce-07e4-a965-9cd3-f2f235522640",
									true,
								},
								
								{
									"8017576d-dd56-df91-996c-2f2ea3c22291",
									true,
								},
								
								{
									"7c0b67b4-ce65-d832-b139-bfd8e3d49c25",
									true,
								},
							},
							uuid = "18b40af7-929c-c297-b1c9-933e0f6df8d3",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 25746,
							conditions = 
							{
								
								{
									"78417993-16dc-5bdb-9425-55f9a94ed3c8",
									true,
								},
								
								{
									"25c5ad69-d5c9-6357-808f-99942ae398c9",
									true,
								},
								
								{
									"4c82c638-ed3a-5794-a92b-3f23ee19fd09",
									true,
								},
								
								{
									"55f3a0b7-4112-bbed-8748-ef32e80a5e02",
									true,
								},
							},
							uuid = "3a52c4e8-397a-207a-a8ca-f41fde9d7bab",
							version = 2.1,
						},
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
								21,
							},
							name = "Eligible jobs",
							uuid = "0fc3ac5c-b0da-4250-84c4-2f3fb862b351",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "15ba31ce-07e4-a965-9cd3-f2f235522640",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(R.mySlot()=='T1' and 'R1' or R.mySlot()=='T2' and 'R2')\nreturn targetSlot~=nil and targetSlot==R.mySlot()",
							name = "Mitigation plan",
							uuid = "8017576d-dd56-df91-996c-2f2ea3c22291",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25751,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "7c0b67b4-ce65-d832-b139-bfd8e3d49c25",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								19,
							},
							name = "Eligible jobs",
							uuid = "78417993-16dc-5bdb-9425-55f9a94ed3c8",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "25c5ad69-d5c9-6357-808f-99942ae398c9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(R.mySlot()=='T1' and 'R1' or R.mySlot()=='T2' and 'R2')\nreturn targetSlot~=nil and targetSlot==R.mySlot()",
							name = "Mitigation plan",
							uuid = "4c82c638-ed3a-5794-a92b-3f23ee19fd09",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25746,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "55f3a0b7-4112-bbed-8748-ef32e80a5e02",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				mechanicTime = 1336.7,
				name = "[Mit] Meteors short CDs to R1/R2 - self",
				timeRange = true,
				timelineIndex = 267,
				timerEndOffset = -0.3,
				timerStartOffset = -1.2,
				uuid = "6aa8ceab-c973-4076-8970-eb92bccf258c",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							actionID = 7393,
							conditions = 
							{
								
								{
									"8f5b0b13-37dc-0254-9568-864fcc7e95c9",
									true,
								},
								
								{
									"85efcca0-236a-9cf6-a41e-ed3e94c385a2",
									true,
								},
								
								{
									"4d388f7d-5f4e-a28f-9195-593db385d036",
									true,
								},
								
								{
									"84c8ad25-809d-beb9-bc5f-a485ea68e8b9",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "ec750542-0853-bd82-9c2f-c023f8167ef9",
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
									"875ab9a2-8e43-0bf9-85bd-498dab1ffbb5",
									true,
								},
								
								{
									"9855cbe7-bbbb-98ac-af2c-1c06854fbfc7",
									true,
								},
								
								{
									"8d756686-b934-99ec-ac85-1715a2cbfa18",
									true,
								},
								
								{
									"0050ad89-a663-7d65-9847-cd522827ff99",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "642feb1b-1f87-443b-86cd-380e42f7340a",
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
									"10d47b74-00f6-bc10-8554-0c0500c6de31",
									true,
								},
								
								{
									"a6b61bc2-8bf3-9f35-b17d-397a3602c9c1",
									true,
								},
								
								{
									"54d6dcd7-5bec-9a23-9019-3c961b678f33",
									true,
								},
								
								{
									"f6decb98-2d1c-8bd2-8287-0ab5d156af90",
									true,
								},
								
								{
									"11ec3369-b0a1-8bbc-b42b-5d6da60565ef",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "91ca227f-2f95-4753-9ee3-e7783031e983",
							version = 2.1,
						},
					},
					
					{
						data = 
						{
							actionID = 7382,
							conditions = 
							{
								
								{
									"94f5c7b9-5dd3-04a3-bd1a-da9546bbdfd7",
									true,
								},
								
								{
									"21ade899-1fb1-6b04-9cd4-2e8f78aafa02",
									true,
								},
								
								{
									"bdc6a750-b57b-c784-bcce-162d86ad0921",
									true,
								},
								
								{
									"9f53ee69-d558-6a27-947d-dbaae36d587d",
									true,
								},
								
								{
									"a661db6c-1653-3ad6-ba14-62a10b926258",
									true,
								},
							},
							targetType = "Detection Target",
							uuid = "4c8ed52d-f8fc-2c23-9845-10cad6e89e65",
							version = 2.1,
						},
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
								32,
							},
							name = "Eligible jobs",
							uuid = "8f5b0b13-37dc-0254-9568-864fcc7e95c9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "85efcca0-236a-9cf6-a41e-ed3e94c385a2",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7393,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "4d388f7d-5f4e-a28f-9195-593db385d036",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(R.mySlot()=='T1' and 'R1' or R.mySlot()=='T2' and 'R2')\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "d226b6a4-3482-9be6-9304-b0cd65724d96",
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
									"d226b6a4-3482-9be6-9304-b0cd65724d96",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "84c8ad25-809d-beb9-bc5f-a485ea68e8b9",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								37,
							},
							name = "Eligible jobs",
							uuid = "875ab9a2-8e43-0bf9-85bd-498dab1ffbb5",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "9855cbe7-bbbb-98ac-af2c-1c06854fbfc7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 25758,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "8d756686-b934-99ec-ac85-1715a2cbfa18",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(R.mySlot()=='T1' and 'R1' or R.mySlot()=='T2' and 'R2')\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "82ebb141-d4bd-2145-86e2-8cd6fa76978b",
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
									"82ebb141-d4bd-2145-86e2-8cd6fa76978b",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "0050ad89-a663-7d65-9847-cd522827ff99",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								21,
							},
							name = "Eligible jobs",
							uuid = "10d47b74-00f6-bc10-8554-0c0500c6de31",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "54d6dcd7-5bec-9a23-9019-3c961b678f33",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 16464,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "f6decb98-2d1c-8bd2-8287-0ab5d156af90",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(R.mySlot()=='T1' and 'R1' or R.mySlot()=='T2' and 'R2')\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "f8cff777-6ae6-3cfb-ac49-f2264a22dd0f",
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
									"f8cff777-6ae6-3cfb-ac49-f2264a22dd0f",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "11ec3369-b0a1-8bbc-b42b-5d6da60565ef",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Self",
							conditionType = 14,
							dequeueIfLuaFalse = true,
							jobIDList = 
							{
								19,
							},
							name = "Eligible jobs",
							uuid = "94f5c7b9-5dd3-04a3-bd1a-da9546bbdfd7",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal s=R.mySlot()\nreturn s=='T1' or s=='T2'",
							name = "Assigned T1/T2",
							uuid = "bdc6a750-b57b-c784-bcce-162d86ad0921",
							version = 3,
						},
					},
					
					{
						data = 
						{
							actionID = 7382,
							category = "Self",
							comparator = 2,
							conditionType = 4,
							name = "Ready",
							uuid = "9f53ee69-d558-6a27-947d-dbaae36d587d",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(R.mySlot()=='T1' and 'R1' or R.mySlot()=='T2' and 'R2')\nlocal id=targetSlot and R.idOf(targetSlot)\nreturn id~=nil and eventArgs.detectionTargetID==id",
							name = "Assigned recipient",
							uuid = "d004883f-c72b-5341-818d-a471839c2060",
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
									"d004883f-c72b-5341-818d-a471839c2060",
									true,
								},
							},
							filterTargetType = "Party",
							name = "Roster recipient",
							uuid = "a661db6c-1653-3ad6-ba14-62a10b926258",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(R.mySlot()=='T1' and 'R1' or R.mySlot()=='T2' and 'R2')\nreturn targetSlot~=nil and targetSlot~=R.mySlot()",
							name = "Other recipient",
							uuid = "a6b61bc2-8bf3-9f35-b17d-397a3602c9c1",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nlocal targetSlot=(R.mySlot()=='T1' and 'R1' or R.mySlot()=='T2' and 'R2')\nreturn targetSlot~=nil and targetSlot~=R.mySlot()",
							name = "Other recipient",
							uuid = "21ade899-1fb1-6b04-9cd4-2e8f78aafa02",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				mechanicTime = 1336.7,
				name = "[Mit] Meteors short CDs to R1/R2 - support",
				timeRange = true,
				timelineIndex = 267,
				timerEndOffset = -0.3,
				timerStartOffset = -1.2,
				uuid = "77acd66c-0213-b9c8-9a38-fd8385bb132f",
				version = 2,
			},
		},
	},
	[277] = 
	{
		
		{
			data = 
			{
				displayPath = "",
				name = "P6",
				uuid = "50904c07-9b6e-9f13-9e0a-f57680f15cec",
			},
			objectType = "folder",
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
									"f732584a-52eb-4322-b561-ed4be1b43e02",
									true,
								},
								
								{
									"1f46bc5c-0fd9-42d8-8ff2-7389b740c315",
									true,
								},
								
								{
									"4224e37f-0753-81bb-85e6-f3014bb6975b",
									true,
								},
							},
							targetContentID = 12256,
							targetType = "ContentID",
							uuid = "9ad679b8-a555-6bb5-a1f6-8d3825d58db3",
							version = 2.1,
						},
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
								20,
								22,
								30,
								34,
								39,
								41,
							},
							name = "Eligible jobs",
							uuid = "f732584a-52eb-4322-b561-ed4be1b43e02",
							version = 3,
						},
					},
					
					{
						data = 
						{
							category = "Lua",
							conditionLua = "local R=AnyoneCore and AnyoneCore.Roster\nif not R or not R.current() then return false end\nreturn R.mySlot()=='M2'",
							name = "Assigned M2",
							uuid = "1f46bc5c-0fd9-42d8-8ff2-7389b740c315",
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
							name = "Ready",
							uuid = "4224e37f-0753-81bb-85e6-f3014bb6975b",
							version = 3,
						},
					},
				},
				displayPath = "P6",
				mechanicTime = 1366.7,
				name = "[Mit] Magic Number 1 - M2 Feint",
				timeRange = true,
				timelineIndex = 277,
				timerEndOffset = -1,
				timerStartOffset = -3,
				uuid = "2da0ff46-9749-76b4-83d6-b30c1ae4930f",
				version = 2,
			},
		},
	},
	inheritedProfiles = 
	{
	},
	timelineName = "top",
	version = "1.0.3",
}



return tbl